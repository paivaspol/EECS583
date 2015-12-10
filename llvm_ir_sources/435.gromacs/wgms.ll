; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/wgms.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@n = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%8.3f\00", align 1
@.str2 = private unnamed_addr constant [17 x i8] c"%8.3f%8.3f%8.3f\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !12, metadata !111), !dbg !112
  %1 = icmp sgt i32 %__signo, 32, !dbg !113
  br i1 %1, label %5, label %2, !dbg !114

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !115
  %4 = shl i32 1, %3, !dbg !116
  br label %5, !dbg !114

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !114
  ret i32 %6, !dbg !117
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_gms(%struct.__sFILE* nocapture %fp, i32 %natoms, [3 x float]* nocapture readonly %x, [3 x float]* readonly %box) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !86, metadata !111), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !87, metadata !111), !dbg !119
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !88, metadata !111), !dbg !120
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !89, metadata !111), !dbg !121
  store i32 0, i32* @n, align 4, !dbg !122, !tbaa !123
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !90, metadata !111), !dbg !127
  %1 = icmp sgt i32 %natoms, 0, !dbg !128
  br i1 %1, label %.preheader.lr.ph, label %._crit_edge.thread, !dbg !131

.preheader.lr.ph:                                 ; preds = %0
  %2 = add i32 %natoms, -1, !dbg !131
  br label %.preheader, !dbg !131

.preheader:                                       ; preds = %14, %.preheader.lr.ph
  %indvars.iv6 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next7, %14 ]
  br label %3, !dbg !132

; <label>:3                                       ; preds = %12, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %12 ]
  %4 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv6, i64 %indvars.iv, !dbg !134
  %5 = load float* %4, align 4, !dbg !134, !tbaa !137
  %6 = fpext float %5 to double, !dbg !134
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), double %6) #5, !dbg !139
  %8 = load i32* @n, align 4, !dbg !140, !tbaa !123
  %9 = add nsw i32 %8, 1, !dbg !140
  store i32 %9, i32* @n, align 4, !dbg !140, !tbaa !123
  %10 = icmp eq i32 %9, 10, !dbg !141
  br i1 %10, label %11, label %12, !dbg !143

; <label>:11                                      ; preds = %3
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !144
  store i32 0, i32* @n, align 4, !dbg !146, !tbaa !123
  br label %12, !dbg !147

; <label>:12                                      ; preds = %3, %11
  %13 = phi i32 [ %9, %3 ], [ 0, %11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !132
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !132
  br i1 %exitcond, label %14, label %3, !dbg !132

; <label>:14                                      ; preds = %12
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !131
  %lftr.wideiv = trunc i64 %indvars.iv6 to i32, !dbg !131
  %exitcond8 = icmp eq i32 %lftr.wideiv, %2, !dbg !131
  br i1 %exitcond8, label %._crit_edge, label %.preheader, !dbg !131

._crit_edge:                                      ; preds = %14
  %15 = icmp eq i32 %13, 0, !dbg !148
  br i1 %15, label %._crit_edge.thread, label %16, !dbg !150

; <label>:16                                      ; preds = %._crit_edge
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !151
  br label %._crit_edge.thread, !dbg !151

._crit_edge.thread:                               ; preds = %0, %._crit_edge, %16
  %17 = icmp eq [3 x float]* %box, null, !dbg !152
  br i1 %17, label %29, label %18, !dbg !154

; <label>:18                                      ; preds = %._crit_edge.thread
  %19 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !155
  %20 = load float* %19, align 4, !dbg !155, !tbaa !137
  %21 = fpext float %20 to double, !dbg !155
  %22 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !156
  %23 = load float* %22, align 4, !dbg !156, !tbaa !137
  %24 = fpext float %23 to double, !dbg !156
  %25 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !157
  %26 = load float* %25, align 4, !dbg !157, !tbaa !137
  %27 = fpext float %26 to double, !dbg !157
  %28 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), double %21, double %24, double %27) #5, !dbg !158
  br label %29, !dbg !158

; <label>:29                                      ; preds = %._crit_edge.thread, %18
  ret void, !dbg !159
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @write_gms_ndx(%struct.__sFILE* nocapture %fp, i32 %isize, i32* nocapture readonly %index, [3 x float]* nocapture readonly %x, [3 x float]* readonly %box) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !98, metadata !111), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 %isize, i64 0, metadata !99, metadata !111), !dbg !161
  tail call void @llvm.dbg.value(metadata i32* %index, i64 0, metadata !100, metadata !111), !dbg !162
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !101, metadata !111), !dbg !163
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !102, metadata !111), !dbg !164
  store i32 0, i32* @n, align 4, !dbg !165, !tbaa !123
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !103, metadata !111), !dbg !166
  %1 = icmp sgt i32 %isize, 0, !dbg !167
  br i1 %1, label %.preheader.lr.ph, label %._crit_edge.thread, !dbg !170

.preheader.lr.ph:                                 ; preds = %0
  %2 = add i32 %isize, -1, !dbg !170
  br label %.preheader, !dbg !170

.preheader:                                       ; preds = %17, %.preheader.lr.ph
  %indvars.iv6 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next7, %17 ]
  %3 = getelementptr inbounds i32* %index, i64 %indvars.iv6, !dbg !171
  br label %4, !dbg !175

; <label>:4                                       ; preds = %15, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %15 ]
  %5 = load i32* %3, align 4, !dbg !171, !tbaa !123
  %6 = sext i32 %5 to i64, !dbg !176
  %7 = getelementptr inbounds [3 x float]* %x, i64 %6, i64 %indvars.iv, !dbg !176
  %8 = load float* %7, align 4, !dbg !176, !tbaa !137
  %9 = fpext float %8 to double, !dbg !176
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), double %9) #5, !dbg !177
  %11 = load i32* @n, align 4, !dbg !178, !tbaa !123
  %12 = add nsw i32 %11, 1, !dbg !178
  store i32 %12, i32* @n, align 4, !dbg !178, !tbaa !123
  %13 = icmp eq i32 %12, 10, !dbg !179
  br i1 %13, label %14, label %15, !dbg !181

; <label>:14                                      ; preds = %4
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !182
  store i32 0, i32* @n, align 4, !dbg !184, !tbaa !123
  br label %15, !dbg !185

; <label>:15                                      ; preds = %4, %14
  %16 = phi i32 [ %12, %4 ], [ 0, %14 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !175
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !175
  br i1 %exitcond, label %17, label %4, !dbg !175

; <label>:17                                      ; preds = %15
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !170
  %lftr.wideiv = trunc i64 %indvars.iv6 to i32, !dbg !170
  %exitcond8 = icmp eq i32 %lftr.wideiv, %2, !dbg !170
  br i1 %exitcond8, label %._crit_edge, label %.preheader, !dbg !170

._crit_edge:                                      ; preds = %17
  %18 = icmp eq i32 %16, 0, !dbg !186
  br i1 %18, label %._crit_edge.thread, label %19, !dbg !188

; <label>:19                                      ; preds = %._crit_edge
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !189
  br label %._crit_edge.thread, !dbg !189

._crit_edge.thread:                               ; preds = %0, %._crit_edge, %19
  %20 = icmp eq [3 x float]* %box, null, !dbg !190
  br i1 %20, label %32, label %21, !dbg !192

; <label>:21                                      ; preds = %._crit_edge.thread
  %22 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !193
  %23 = load float* %22, align 4, !dbg !193, !tbaa !137
  %24 = fpext float %23 to double, !dbg !193
  %25 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !194
  %26 = load float* %25, align 4, !dbg !194, !tbaa !137
  %27 = fpext float %26 to double, !dbg !194
  %28 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !195
  %29 = load float* %28, align 4, !dbg !195, !tbaa !137
  %30 = fpext float %29 to double, !dbg !195
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), double %24, double %27, double %30) #5, !dbg !196
  br label %32, !dbg !196

; <label>:32                                      ; preds = %._crit_edge.thread, %21
  ret void, !dbg !197
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #4

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!107, !108, !109}
!llvm.ident = !{!110}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !105, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/wgms.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !13, !92}
!6 = !DISubprogram(name: "__sigbits", scope: !7, file: !7, line: 114, type: !8, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !11)
!7 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !6, file: !7, line: 114, type: !10)
!13 = !DISubprogram(name: "write_gms", scope: !1, file: !1, line: 39, type: !14, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, [3 x float]*, [3 x float]*)* @write_gms, variables: !85)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !10, !78, !84}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 153, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !18, line: 122, size: 1216, align: 64, elements: !20)
!20 = !{!21, !24, !25, !26, !28, !29, !34, !35, !36, !40, !46, !56, !62, !63, !66, !67, !71, !75, !76, !77}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !19, file: !18, line: 123, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !19, file: !18, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !19, file: !18, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !19, file: !18, line: 126, baseType: !27, size: 16, align: 16, offset: 128)
!27 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !19, file: !18, line: 127, baseType: !27, size: 16, align: 16, offset: 144)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !19, file: !18, line: 128, baseType: !30, size: 128, align: 64, offset: 192)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !18, line: 88, size: 128, align: 64, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !30, file: !18, line: 89, baseType: !22, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !30, file: !18, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !19, file: !18, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !19, file: !18, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !19, file: !18, line: 133, baseType: !37, size: 64, align: 64, offset: 448)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!10, !4}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !19, file: !18, line: 134, baseType: !41, size: 64, align: 64, offset: 512)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!10, !4, !44, !10}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !19, file: !18, line: 135, baseType: !47, size: 64, align: 64, offset: 576)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !4, !50, !10}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !18, line: 77, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !52, line: 71, baseType: !53)
!52 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !54, line: 46, baseType: !55)
!54 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!55 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !19, file: !18, line: 136, baseType: !57, size: 64, align: 64, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!10, !4, !60, !10}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !19, file: !18, line: 139, baseType: !30, size: 128, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !19, file: !18, line: 140, baseType: !64, size: 64, align: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !18, line: 94, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !19, file: !18, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !19, file: !18, line: 144, baseType: !68, size: 24, align: 8, offset: 928)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, align: 8, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 3)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !19, file: !18, line: 145, baseType: !72, size: 8, align: 8, offset: 952)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, align: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !19, file: !18, line: 148, baseType: !30, size: 128, align: 64, offset: 960)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !19, file: !18, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !19, file: !18, line: 152, baseType: !50, size: 64, align: 64, offset: 1152)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !80, line: 101, baseType: !81)
!80 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 96, align: 32, elements: !69)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !80, line: 87, baseType: !83)
!83 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!85 = !{!86, !87, !88, !89, !90, !91}
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !13, file: !1, line: 39, type: !16)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !13, file: !1, line: 39, type: !10)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !13, file: !1, line: 39, type: !78)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 4, scope: !13, file: !1, line: 39, type: !84)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !13, file: !1, line: 41, type: !10)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !13, file: !1, line: 41, type: !10)
!92 = !DISubprogram(name: "write_gms_ndx", scope: !1, file: !1, line: 59, type: !93, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, i32*, [3 x float]*, [3 x float]*)* @write_gms_ndx, variables: !97)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !16, !10, !95, !78, !84}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !80, line: 73, baseType: !10)
!97 = !{!98, !99, !100, !101, !102, !103, !104}
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !92, file: !1, line: 59, type: !16)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "isize", arg: 2, scope: !92, file: !1, line: 59, type: !10)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 3, scope: !92, file: !1, line: 59, type: !95)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !92, file: !1, line: 59, type: !78)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !92, file: !1, line: 59, type: !84)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !92, file: !1, line: 61, type: !10)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !92, file: !1, line: 61, type: !10)
!105 = !{!106}
!106 = !DIGlobalVariable(name: "n", scope: !0, file: !1, line: 36, type: !10, isLocal: true, isDefinition: true, variable: i32* @n)
!107 = !{i32 2, !"Dwarf Version", i32 2}
!108 = !{i32 2, !"Debug Info Version", i32 700000003}
!109 = !{i32 1, !"PIC Level", i32 2}
!110 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!111 = !DIExpression()
!112 = !DILocation(line: 114, column: 15, scope: !6)
!113 = !DILocation(line: 116, column: 20, scope: !6)
!114 = !DILocation(line: 116, column: 12, scope: !6)
!115 = !DILocation(line: 116, column: 57, scope: !6)
!116 = !DILocation(line: 116, column: 45, scope: !6)
!117 = !DILocation(line: 116, column: 5, scope: !6)
!118 = !DILocation(line: 39, column: 22, scope: !13)
!119 = !DILocation(line: 39, column: 29, scope: !13)
!120 = !DILocation(line: 39, column: 41, scope: !13)
!121 = !DILocation(line: 39, column: 52, scope: !13)
!122 = !DILocation(line: 43, column: 4, scope: !13)
!123 = !{!124, !124, i64 0}
!124 = !{!"int", !125, i64 0}
!125 = !{!"omnipotent char", !126, i64 0}
!126 = !{!"Simple C/C++ TBAA"}
!127 = !DILocation(line: 41, column: 7, scope: !13)
!128 = !DILocation(line: 44, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !1, line: 44, column: 3)
!130 = distinct !DILexicalBlock(scope: !13, file: !1, line: 44, column: 3)
!131 = !DILocation(line: 44, column: 3, scope: !130)
!132 = !DILocation(line: 45, column: 5, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 45, column: 5)
!134 = !DILocation(line: 46, column: 26, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 45, column: 24)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 45, column: 5)
!137 = !{!138, !138, i64 0}
!138 = !{!"float", !125, i64 0}
!139 = !DILocation(line: 46, column: 7, scope: !135)
!140 = !DILocation(line: 47, column: 8, scope: !135)
!141 = !DILocation(line: 48, column: 12, scope: !142)
!142 = distinct !DILexicalBlock(scope: !135, file: !1, line: 48, column: 11)
!143 = !DILocation(line: 48, column: 11, scope: !135)
!144 = !DILocation(line: 49, column: 2, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 48, column: 19)
!146 = !DILocation(line: 50, column: 3, scope: !145)
!147 = !DILocation(line: 51, column: 7, scope: !145)
!148 = !DILocation(line: 53, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !13, file: !1, line: 53, column: 7)
!150 = !DILocation(line: 53, column: 7, scope: !13)
!151 = !DILocation(line: 54, column: 5, scope: !149)
!152 = !DILocation(line: 55, column: 11, scope: !153)
!153 = distinct !DILexicalBlock(scope: !13, file: !1, line: 55, column: 7)
!154 = !DILocation(line: 55, column: 7, scope: !13)
!155 = !DILocation(line: 56, column: 36, scope: !153)
!156 = !DILocation(line: 56, column: 48, scope: !153)
!157 = !DILocation(line: 56, column: 60, scope: !153)
!158 = !DILocation(line: 56, column: 5, scope: !153)
!159 = !DILocation(line: 57, column: 1, scope: !13)
!160 = !DILocation(line: 59, column: 26, scope: !92)
!161 = !DILocation(line: 59, column: 33, scope: !92)
!162 = !DILocation(line: 59, column: 47, scope: !92)
!163 = !DILocation(line: 59, column: 60, scope: !92)
!164 = !DILocation(line: 59, column: 71, scope: !92)
!165 = !DILocation(line: 63, column: 4, scope: !92)
!166 = !DILocation(line: 61, column: 7, scope: !92)
!167 = !DILocation(line: 64, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 64, column: 3)
!169 = distinct !DILexicalBlock(scope: !92, file: !1, line: 64, column: 3)
!170 = !DILocation(line: 64, column: 3, scope: !169)
!171 = !DILocation(line: 66, column: 28, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 65, column: 24)
!173 = distinct !DILexicalBlock(scope: !174, file: !1, line: 65, column: 5)
!174 = distinct !DILexicalBlock(scope: !168, file: !1, line: 65, column: 5)
!175 = !DILocation(line: 65, column: 5, scope: !174)
!176 = !DILocation(line: 66, column: 26, scope: !172)
!177 = !DILocation(line: 66, column: 7, scope: !172)
!178 = !DILocation(line: 67, column: 8, scope: !172)
!179 = !DILocation(line: 68, column: 12, scope: !180)
!180 = distinct !DILexicalBlock(scope: !172, file: !1, line: 68, column: 11)
!181 = !DILocation(line: 68, column: 11, scope: !172)
!182 = !DILocation(line: 69, column: 2, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !1, line: 68, column: 19)
!184 = !DILocation(line: 70, column: 3, scope: !183)
!185 = !DILocation(line: 71, column: 7, scope: !183)
!186 = !DILocation(line: 73, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !92, file: !1, line: 73, column: 7)
!188 = !DILocation(line: 73, column: 7, scope: !92)
!189 = !DILocation(line: 74, column: 5, scope: !187)
!190 = !DILocation(line: 75, column: 11, scope: !191)
!191 = distinct !DILexicalBlock(scope: !92, file: !1, line: 75, column: 7)
!192 = !DILocation(line: 75, column: 7, scope: !92)
!193 = !DILocation(line: 76, column: 36, scope: !191)
!194 = !DILocation(line: 76, column: 48, scope: !191)
!195 = !DILocation(line: 76, column: 60, scope: !191)
!196 = !DILocation(line: 76, column: 5, scope: !191)
!197 = !DILocation(line: 77, column: 1, scope: !92)
