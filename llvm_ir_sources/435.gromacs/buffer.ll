; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/buffer.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"error: (%s) data: 0x%.8x, expected: 0x%.8x\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !74, metadata !111), !dbg !112
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !75, metadata !111), !dbg !113
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !114
  %2 = load i32* %1, align 4, !dbg !116, !tbaa !117
  %3 = add nsw i32 %2, -1, !dbg !116
  store i32 %3, i32* %1, align 4, !dbg !116, !tbaa !117
  %4 = icmp sgt i32 %2, 0, !dbg !126
  br i1 %4, label %._crit_edge, label %5, !dbg !127

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !128
  br label %10, !dbg !127

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !129
  %7 = load i32* %6, align 4, !dbg !129, !tbaa !130
  %8 = icmp sle i32 %2, %7, !dbg !131
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !132
  %or.cond = or i1 %9, %8, !dbg !133
  br i1 %or.cond, label %15, label %10, !dbg !133

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !128
  %11 = trunc i32 %_c to i8, !dbg !134
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !135
  %13 = load i8** %12, align 8, !dbg !136, !tbaa !137
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !136
  store i8* %14, i8** %12, align 8, !dbg !136, !tbaa !137
  store i8 %11, i8* %13, align 1, !dbg !138, !tbaa !139
  br label %17, !dbg !140

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !141
  br label %17, !dbg !142

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !143
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @mask(i32 %i) #2 {
  tail call void @llvm.dbg.value(metadata i32 %i, i64 0, metadata !80, metadata !111), !dbg !144
  %1 = and i32 %i, 255, !dbg !145
  %2 = shl i32 %i, 8, !dbg !146
  %3 = add i32 %2, 256, !dbg !146
  %4 = and i32 %3, 65280, !dbg !146
  %5 = shl i32 %i, 16, !dbg !147
  %6 = add i32 %5, 131072, !dbg !147
  %7 = and i32 %6, 16711680, !dbg !147
  %8 = shl i32 %i, 24, !dbg !148
  %9 = add i32 %8, 50331648, !dbg !148
  %10 = or i32 %9, %1, !dbg !149
  %11 = or i32 %10, %4, !dbg !150
  %12 = or i32 %11, %7, !dbg !151
  ret i32 %12, !dbg !152
}

; Function Attrs: nounwind optsize ssp uwtable
define void @clear_buff(i32* nocapture %data, i32 %items) #3 {
  tail call void @llvm.dbg.value(metadata i32* %data, i64 0, metadata !86, metadata !111), !dbg !153
  tail call void @llvm.dbg.value(metadata i32 %items, i64 0, metadata !87, metadata !111), !dbg !154
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !111), !dbg !155
  %1 = icmp sgt i32 %items, 0, !dbg !156
  br i1 %1, label %.lr.ph, label %6, !dbg !159

.lr.ph:                                           ; preds = %0
  %data2 = bitcast i32* %data to i8*
  %2 = add i32 %items, -1, !dbg !159
  %3 = zext i32 %2 to i64
  %4 = shl nuw nsw i64 %3, 2, !dbg !159
  %5 = add nuw nsw i64 %4, 4, !dbg !159
  call void @llvm.memset.p0i8.i64(i8* %data2, i8 0, i64 %5, i32 4, i1 false), !dbg !160
  br label %6, !dbg !159

; <label>:6                                       ; preds = %.lr.ph, %0
  ret void, !dbg !161
}

; Function Attrs: nounwind optsize ssp uwtable
define void @fill_buff(i32* nocapture %data, i32 %items) #3 {
  tail call void @llvm.dbg.value(metadata i32* %data, i64 0, metadata !91, metadata !111), !dbg !162
  tail call void @llvm.dbg.value(metadata i32 %items, i64 0, metadata !92, metadata !111), !dbg !163
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !111), !dbg !164
  %1 = icmp sgt i32 %items, 0, !dbg !165
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !168

.lr.ph:                                           ; preds = %0
  %2 = add i32 %items, -1, !dbg !168
  br label %3, !dbg !168

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = trunc i64 %indvars.iv to i32, !dbg !169
  %5 = and i32 %4, 255, !dbg !169
  %6 = shl i32 %4, 8, !dbg !171
  %7 = add i32 %6, 256, !dbg !171
  %8 = and i32 %7, 65280, !dbg !171
  %9 = shl i32 %4, 16, !dbg !172
  %10 = add i32 %9, 131072, !dbg !172
  %11 = and i32 %10, 16711680, !dbg !172
  %12 = shl i32 %4, 24, !dbg !173
  %13 = add i32 %12, 50331648, !dbg !173
  %14 = or i32 %13, %5, !dbg !174
  %15 = or i32 %14, %8, !dbg !175
  %16 = or i32 %15, %11, !dbg !176
  %17 = getelementptr inbounds i32* %data, i64 %indvars.iv, !dbg !177
  store i32 %16, i32* %17, align 4, !dbg !178, !tbaa !179
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !168
  %exitcond = icmp eq i32 %4, %2, !dbg !168
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !168

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !180
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @check_buff(%struct.__sFILE* %fp, i8* %title, i32* nocapture readonly %data, i32 %items, i32 %verbose) #3 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !98, metadata !111), !dbg !181
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !99, metadata !111), !dbg !182
  tail call void @llvm.dbg.value(metadata i32* %data, i64 0, metadata !100, metadata !111), !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %items, i64 0, metadata !101, metadata !111), !dbg !184
  tail call void @llvm.dbg.value(metadata i32 %verbose, i64 0, metadata !102, metadata !111), !dbg !185
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !104, metadata !111), !dbg !186
  %1 = icmp eq i32 %verbose, 0, !dbg !187
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !103, metadata !111), !dbg !189
  %2 = icmp sgt i32 %items, 0, !dbg !190
  br i1 %1, label %.preheader, label %.preheader1, !dbg !193

.preheader1:                                      ; preds = %0
  br i1 %2, label %.lr.ph7, label %.loopexit, !dbg !194

.lr.ph7:                                          ; preds = %.preheader1
  %3 = icmp eq %struct.__sFILE* %fp, null, !dbg !197
  %4 = add i32 %items, -1, !dbg !194
  br label %23, !dbg !194

.preheader:                                       ; preds = %0
  br i1 %2, label %.lr.ph, label %.loopexit, !dbg !203

.lr.ph:                                           ; preds = %.preheader
  %5 = add i32 %items, -1, !dbg !203
  br label %6, !dbg !203

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %errs.03 = phi i32 [ 0, %.lr.ph ], [ %errs.0., %6 ]
  %7 = getelementptr inbounds i32* %data, i64 %indvars.iv, !dbg !204
  %8 = load i32* %7, align 4, !dbg !204, !tbaa !179
  %9 = trunc i64 %indvars.iv to i32, !dbg !207
  %10 = and i32 %9, 255, !dbg !207
  %11 = shl i32 %9, 8, !dbg !209
  %12 = add i32 %11, 256, !dbg !209
  %13 = and i32 %12, 65280, !dbg !209
  %14 = shl i32 %9, 16, !dbg !210
  %15 = add i32 %14, 131072, !dbg !210
  %16 = and i32 %15, 16711680, !dbg !210
  %17 = shl i32 %9, 24, !dbg !211
  %18 = add i32 %17, 50331648, !dbg !211
  %19 = or i32 %18, %10, !dbg !212
  %20 = or i32 %19, %13, !dbg !213
  %21 = or i32 %20, %16, !dbg !214
  %not. = icmp ne i32 %8, %21, !dbg !215
  %22 = zext i1 %not. to i32, !dbg !215
  %errs.0. = add nsw i32 %22, %errs.03, !dbg !215
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !203
  %exitcond = icmp eq i32 %9, %5, !dbg !203
  br i1 %exitcond, label %.loopexit, label %6, !dbg !203

; <label>:23                                      ; preds = %45, %.lr.ph7
  %indvars.iv9 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next10, %45 ]
  %errs.25 = phi i32 [ 0, %.lr.ph7 ], [ %errs.3, %45 ]
  %24 = getelementptr inbounds i32* %data, i64 %indvars.iv9, !dbg !216
  %25 = load i32* %24, align 4, !dbg !216, !tbaa !179
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !105, metadata !111), !dbg !217
  %26 = trunc i64 %indvars.iv9 to i32, !dbg !218
  %27 = and i32 %26, 255, !dbg !218
  %28 = shl i32 %26, 8, !dbg !220
  %29 = add i32 %28, 256, !dbg !220
  %30 = and i32 %29, 65280, !dbg !220
  %31 = shl i32 %26, 16, !dbg !221
  %32 = add i32 %31, 131072, !dbg !221
  %33 = and i32 %32, 16711680, !dbg !221
  %34 = shl i32 %26, 24, !dbg !222
  %35 = add i32 %34, 50331648, !dbg !222
  %36 = or i32 %35, %27, !dbg !223
  %37 = or i32 %36, %30, !dbg !224
  %38 = or i32 %37, %33, !dbg !225
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !106, metadata !111), !dbg !226
  %39 = icmp eq i32 %25, %38, !dbg !227
  br i1 %39, label %45, label %40, !dbg !228

; <label>:40                                      ; preds = %23
  br i1 %3, label %43, label %41, !dbg !229

; <label>:41                                      ; preds = %40
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i8* %title, i32 %25, i32 %38) #7, !dbg !230
  br label %43, !dbg !230

; <label>:43                                      ; preds = %40, %41
  %44 = add nsw i32 %errs.25, 1, !dbg !231
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !104, metadata !111), !dbg !186
  br label %45, !dbg !232

; <label>:45                                      ; preds = %23, %43
  %errs.3 = phi i32 [ %44, %43 ], [ %errs.25, %23 ]
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !194
  %exitcond12 = icmp eq i32 %26, %4, !dbg !194
  br i1 %exitcond12, label %.loopexit, label %23, !dbg !194

.loopexit:                                        ; preds = %45, %6, %.preheader1, %.preheader
  %errs.4 = phi i32 [ 0, %.preheader ], [ 0, %.preheader1 ], [ %errs.0., %6 ], [ %errs.3, %45 ]
  ret i32 %errs.4, !dbg !233
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!107, !108, !109}
!llvm.ident = !{!110}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/buffer.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !76, !81, !89, !94}
!7 = !DISubprogram(name: "__sputc", scope: !8, file: !8, line: 348, type: !9, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !73)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12}
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 153, baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !8, line: 122, size: 1216, align: 64, elements: !15)
!15 = !{!16, !19, !20, !21, !23, !24, !29, !30, !32, !36, !41, !51, !57, !58, !61, !62, !66, !70, !71, !72}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !14, file: !8, line: 123, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !14, file: !8, line: 124, baseType: !11, size: 32, align: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !14, file: !8, line: 125, baseType: !11, size: 32, align: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !14, file: !8, line: 126, baseType: !22, size: 16, align: 16, offset: 128)
!22 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !14, file: !8, line: 127, baseType: !22, size: 16, align: 16, offset: 144)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !14, file: !8, line: 128, baseType: !25, size: 128, align: 64, offset: 192)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !8, line: 88, size: 128, align: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !25, file: !8, line: 89, baseType: !17, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !25, file: !8, line: 90, baseType: !11, size: 32, align: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !14, file: !8, line: 129, baseType: !11, size: 32, align: 32, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !14, file: !8, line: 132, baseType: !31, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !14, file: !8, line: 133, baseType: !33, size: 64, align: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!11, !31}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !14, file: !8, line: 134, baseType: !37, size: 64, align: 64, offset: 512)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!11, !31, !40, !11}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !14, file: !8, line: 135, baseType: !42, size: 64, align: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !31, !45, !11}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !8, line: 77, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !47, line: 71, baseType: !48)
!47 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !49, line: 46, baseType: !50)
!49 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!50 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !14, file: !8, line: 136, baseType: !52, size: 64, align: 64, offset: 640)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!11, !31, !55, !11}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !14, file: !8, line: 139, baseType: !25, size: 128, align: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !14, file: !8, line: 140, baseType: !59, size: 64, align: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !8, line: 94, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !14, file: !8, line: 141, baseType: !11, size: 32, align: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !14, file: !8, line: 144, baseType: !63, size: 24, align: 8, offset: 928)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, align: 8, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 3)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !14, file: !8, line: 145, baseType: !67, size: 8, align: 8, offset: 952)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !14, file: !8, line: 148, baseType: !25, size: 128, align: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !14, file: !8, line: 151, baseType: !11, size: 32, align: 32, offset: 1088)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !14, file: !8, line: 152, baseType: !45, size: 64, align: 64, offset: 1152)
!73 = !{!74, !75}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !7, file: !8, line: 348, type: !11)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !7, file: !8, line: 348, type: !12)
!76 = !DISubprogram(name: "mask", scope: !1, file: !1, line: 37, type: !77, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @mask, variables: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{!11, !11}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 1, scope: !76, file: !1, line: 37, type: !11)
!81 = !DISubprogram(name: "clear_buff", scope: !1, file: !1, line: 54, type: !82, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32)* @clear_buff, variables: !85)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !84, !11}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!85 = !{!86, !87, !88}
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 1, scope: !81, file: !1, line: 54, type: !84)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "items", arg: 2, scope: !81, file: !1, line: 54, type: !11)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !81, file: !1, line: 56, type: !11)
!89 = !DISubprogram(name: "fill_buff", scope: !1, file: !1, line: 63, type: !82, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32)* @fill_buff, variables: !90)
!90 = !{!91, !92, !93}
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 1, scope: !89, file: !1, line: 63, type: !84)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "items", arg: 2, scope: !89, file: !1, line: 63, type: !11)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !89, file: !1, line: 65, type: !11)
!94 = !DISubprogram(name: "check_buff", scope: !1, file: !1, line: 71, type: !95, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, i8*, i32*, i32, i32)* @check_buff, variables: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{!11, !12, !40, !84, !11, !11}
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106}
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !94, file: !1, line: 71, type: !12)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !94, file: !1, line: 71, type: !40)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !94, file: !1, line: 71, type: !84)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "items", arg: 4, scope: !94, file: !1, line: 71, type: !11)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "verbose", arg: 5, scope: !94, file: !1, line: 71, type: !11)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !94, file: !1, line: 73, type: !11)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errs", scope: !94, file: !1, line: 73, type: !11)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "check", scope: !94, file: !1, line: 73, type: !11)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "comp", scope: !94, file: !1, line: 73, type: !11)
!107 = !{i32 2, !"Dwarf Version", i32 2}
!108 = !{i32 2, !"Debug Info Version", i32 700000003}
!109 = !{i32 1, !"PIC Level", i32 2}
!110 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!111 = !DIExpression()
!112 = !DILocation(line: 348, column: 40, scope: !7)
!113 = !DILocation(line: 348, column: 50, scope: !7)
!114 = !DILocation(line: 349, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !7, file: !8, line: 349, column: 6)
!116 = !DILocation(line: 349, column: 6, scope: !115)
!117 = !{!118, !122, i64 12}
!118 = !{!"__sFILE", !119, i64 0, !122, i64 8, !122, i64 12, !123, i64 16, !123, i64 18, !124, i64 24, !122, i64 40, !119, i64 48, !119, i64 56, !119, i64 64, !119, i64 72, !119, i64 80, !124, i64 88, !119, i64 104, !122, i64 112, !120, i64 116, !120, i64 119, !124, i64 120, !122, i64 136, !125, i64 144}
!119 = !{!"any pointer", !120, i64 0}
!120 = !{!"omnipotent char", !121, i64 0}
!121 = !{!"Simple C/C++ TBAA"}
!122 = !{!"int", !120, i64 0}
!123 = !{!"short", !120, i64 0}
!124 = !{!"__sbuf", !119, i64 0, !122, i64 8}
!125 = !{!"long long", !120, i64 0}
!126 = !DILocation(line: 349, column: 15, scope: !115)
!127 = !DILocation(line: 349, column: 20, scope: !115)
!128 = !DILocation(line: 350, column: 10, scope: !115)
!129 = !DILocation(line: 349, column: 38, scope: !115)
!130 = !{!118, !122, i64 40}
!131 = !DILocation(line: 349, column: 31, scope: !115)
!132 = !DILocation(line: 349, column: 59, scope: !115)
!133 = !DILocation(line: 349, column: 47, scope: !115)
!134 = !DILocation(line: 350, column: 23, scope: !115)
!135 = !DILocation(line: 350, column: 16, scope: !115)
!136 = !DILocation(line: 350, column: 18, scope: !115)
!137 = !{!118, !119, i64 0}
!138 = !DILocation(line: 350, column: 21, scope: !115)
!139 = !{!120, !120, i64 0}
!140 = !DILocation(line: 350, column: 3, scope: !115)
!141 = !DILocation(line: 352, column: 11, scope: !115)
!142 = !DILocation(line: 352, column: 3, scope: !115)
!143 = !DILocation(line: 353, column: 1, scope: !7)
!144 = !DILocation(line: 37, column: 14, scope: !76)
!145 = !DILocation(line: 42, column: 12, scope: !76)
!146 = !DILocation(line: 42, column: 32, scope: !76)
!147 = !DILocation(line: 42, column: 50, scope: !76)
!148 = !DILocation(line: 42, column: 69, scope: !76)
!149 = !DILocation(line: 42, column: 18, scope: !76)
!150 = !DILocation(line: 42, column: 36, scope: !76)
!151 = !DILocation(line: 42, column: 55, scope: !76)
!152 = !DILocation(line: 42, column: 3, scope: !76)
!153 = !DILocation(line: 54, column: 21, scope: !81)
!154 = !DILocation(line: 54, column: 32, scope: !81)
!155 = !DILocation(line: 56, column: 7, scope: !81)
!156 = !DILocation(line: 58, column: 14, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 58, column: 3)
!158 = distinct !DILexicalBlock(scope: !81, file: !1, line: 58, column: 3)
!159 = !DILocation(line: 58, column: 3, scope: !158)
!160 = !DILocation(line: 58, column: 34, scope: !157)
!161 = !DILocation(line: 59, column: 1, scope: !81)
!162 = !DILocation(line: 63, column: 20, scope: !89)
!163 = !DILocation(line: 63, column: 31, scope: !89)
!164 = !DILocation(line: 65, column: 7, scope: !89)
!165 = !DILocation(line: 67, column: 14, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 67, column: 3)
!167 = distinct !DILexicalBlock(scope: !89, file: !1, line: 67, column: 3)
!168 = !DILocation(line: 67, column: 3, scope: !167)
!169 = !DILocation(line: 42, column: 12, scope: !76, inlinedAt: !170)
!170 = distinct !DILocation(line: 67, column: 35, scope: !166)
!171 = !DILocation(line: 42, column: 32, scope: !76, inlinedAt: !170)
!172 = !DILocation(line: 42, column: 50, scope: !76, inlinedAt: !170)
!173 = !DILocation(line: 42, column: 69, scope: !76, inlinedAt: !170)
!174 = !DILocation(line: 42, column: 18, scope: !76, inlinedAt: !170)
!175 = !DILocation(line: 42, column: 36, scope: !76, inlinedAt: !170)
!176 = !DILocation(line: 42, column: 55, scope: !76, inlinedAt: !170)
!177 = !DILocation(line: 67, column: 27, scope: !166)
!178 = !DILocation(line: 67, column: 34, scope: !166)
!179 = !{!122, !122, i64 0}
!180 = !DILocation(line: 69, column: 1, scope: !89)
!181 = !DILocation(line: 71, column: 22, scope: !94)
!182 = !DILocation(line: 71, column: 31, scope: !94)
!183 = !DILocation(line: 71, column: 41, scope: !94)
!184 = !DILocation(line: 71, column: 52, scope: !94)
!185 = !DILocation(line: 71, column: 62, scope: !94)
!186 = !DILocation(line: 73, column: 9, scope: !94)
!187 = !DILocation(line: 76, column: 8, scope: !188)
!188 = distinct !DILexicalBlock(scope: !94, file: !1, line: 76, column: 7)
!189 = !DILocation(line: 73, column: 7, scope: !94)
!190 = !DILocation(line: 77, column: 16, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 77, column: 5)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 77, column: 5)
!193 = !DILocation(line: 76, column: 7, scope: !94)
!194 = !DILocation(line: 80, column: 7, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !1, line: 80, column: 7)
!196 = distinct !DILexicalBlock(scope: !188, file: !1, line: 79, column: 5)
!197 = !DILocation(line: 87, column: 18, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 87, column: 18)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 86, column: 13)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 85, column: 15)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 81, column: 9)
!202 = distinct !DILexicalBlock(scope: !195, file: !1, line: 80, column: 7)
!203 = !DILocation(line: 77, column: 5, scope: !192)
!204 = !DILocation(line: 77, column: 35, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 77, column: 35)
!206 = distinct !DILexicalBlock(scope: !191, file: !1, line: 77, column: 29)
!207 = !DILocation(line: 42, column: 12, scope: !76, inlinedAt: !208)
!208 = distinct !DILocation(line: 77, column: 44, scope: !205)
!209 = !DILocation(line: 42, column: 32, scope: !76, inlinedAt: !208)
!210 = !DILocation(line: 42, column: 50, scope: !76, inlinedAt: !208)
!211 = !DILocation(line: 42, column: 69, scope: !76, inlinedAt: !208)
!212 = !DILocation(line: 42, column: 18, scope: !76, inlinedAt: !208)
!213 = !DILocation(line: 42, column: 36, scope: !76, inlinedAt: !208)
!214 = !DILocation(line: 42, column: 55, scope: !76, inlinedAt: !208)
!215 = !DILocation(line: 77, column: 35, scope: !206)
!216 = !DILocation(line: 82, column: 17, scope: !201)
!217 = !DILocation(line: 73, column: 14, scope: !94)
!218 = !DILocation(line: 42, column: 12, scope: !76, inlinedAt: !219)
!219 = distinct !DILocation(line: 84, column: 16, scope: !201)
!220 = !DILocation(line: 42, column: 32, scope: !76, inlinedAt: !219)
!221 = !DILocation(line: 42, column: 50, scope: !76, inlinedAt: !219)
!222 = !DILocation(line: 42, column: 69, scope: !76, inlinedAt: !219)
!223 = !DILocation(line: 42, column: 18, scope: !76, inlinedAt: !219)
!224 = !DILocation(line: 42, column: 36, scope: !76, inlinedAt: !219)
!225 = !DILocation(line: 42, column: 55, scope: !76, inlinedAt: !219)
!226 = !DILocation(line: 73, column: 20, scope: !94)
!227 = !DILocation(line: 85, column: 20, scope: !200)
!228 = !DILocation(line: 85, column: 15, scope: !201)
!229 = !DILocation(line: 87, column: 18, scope: !199)
!230 = !DILocation(line: 88, column: 19, scope: !198)
!231 = !DILocation(line: 90, column: 19, scope: !199)
!232 = !DILocation(line: 91, column: 13, scope: !199)
!233 = !DILocation(line: 94, column: 3, scope: !94)
