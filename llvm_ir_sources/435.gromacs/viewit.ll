; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/viewit.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }

@can_view_ftp = internal unnamed_addr constant [5 x i32] [i32 0, i32 36, i32 45, i32 19, i32 15], align 16
@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [51 x i8] c"Can not view %s, no DISPLAY environment variable.\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !123, metadata !184), !dbg !185
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !124, metadata !184), !dbg !186
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !187
  %2 = load i32* %1, align 4, !dbg !189, !tbaa !190
  %3 = add nsw i32 %2, -1, !dbg !189
  store i32 %3, i32* %1, align 4, !dbg !189, !tbaa !190
  %4 = icmp sgt i32 %2, 0, !dbg !199
  br i1 %4, label %._crit_edge, label %5, !dbg !200

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !201
  br label %10, !dbg !200

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !202
  %7 = load i32* %6, align 4, !dbg !202, !tbaa !203
  %8 = icmp sle i32 %2, %7, !dbg !204
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !205
  %or.cond = or i1 %9, %8, !dbg !206
  br i1 %or.cond, label %15, label %10, !dbg !206

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !201
  %11 = trunc i32 %_c to i8, !dbg !207
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !208
  %13 = load i8** %12, align 8, !dbg !209, !tbaa !210
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !209
  store i8* %14, i8** %12, align 8, !dbg !209, !tbaa !210
  store i8 %11, i8* %13, align 1, !dbg !211, !tbaa !212
  br label %17, !dbg !213

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !214
  br label %17, !dbg !215

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !216
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !130, metadata !184), !dbg !217
  %1 = icmp sgt i32 %__signo, 32, !dbg !218
  br i1 %1, label %5, label %2, !dbg !219

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !220
  %4 = shl i32 1, %3, !dbg !221
  br label %5, !dbg !219

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !219
  ret i32 %6, !dbg !222
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @can_view(i32 %ftp) #3 {
  tail call void @llvm.dbg.value(metadata i32 %ftp, i64 0, metadata !133, metadata !184), !dbg !223
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !134, metadata !184), !dbg !224
  br label %1, !dbg !225

; <label>:1                                       ; preds = %0, %6
  %indvars.iv = phi i64 [ 1, %0 ], [ %indvars.iv.next, %6 ]
  %2 = getelementptr inbounds [5 x i32]* @can_view_ftp, i64 0, i64 %indvars.iv, !dbg !227
  %3 = load i32* %2, align 4, !dbg !227, !tbaa !230
  %4 = icmp eq i32 %3, %ftp, !dbg !231
  %5 = trunc i64 %indvars.iv to i32, !dbg !232
  br i1 %4, label %9, label %6, !dbg !232

; <label>:6                                       ; preds = %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !225
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !233
  %8 = icmp ult i32 %7, 5, !dbg !233
  br i1 %8, label %1, label %9, !dbg !225

; <label>:9                                       ; preds = %6, %1
  %.0 = phi i32 [ %5, %1 ], [ 0, %6 ]
  ret i32 %.0, !dbg !234
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_view(i8* %fn, i8* nocapture readnone %opts) #4 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !139, metadata !184), !dbg !235
  tail call void @llvm.dbg.value(metadata i8* %opts, i64 0, metadata !140, metadata !184), !dbg !236
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !152, metadata !184), !dbg !237
  %1 = tail call i32 @bDoView() #7, !dbg !238
  %2 = icmp ne i32 %1, 0, !dbg !238
  %3 = icmp ne i8* %fn, null, !dbg !240
  %or.cond = and i1 %3, %2, !dbg !241
  br i1 %or.cond, label %4, label %7, !dbg !241

; <label>:4                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !155, metadata !184), !dbg !242
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !243, !tbaa !247
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i8* %fn) #7, !dbg !248
  br label %7, !dbg !249

; <label>:7                                       ; preds = %0, %4
  ret void, !dbg !250
}

; Function Attrs: optsize
declare i32 @bDoView() #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @view_all(i32 %nf, %struct.t_filenm* %fnm) #4 {
  tail call void @llvm.dbg.value(metadata i32 %nf, i64 0, metadata !169, metadata !184), !dbg !251
  tail call void @llvm.dbg.value(metadata %struct.t_filenm* %fnm, i64 0, metadata !170, metadata !184), !dbg !252
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !171, metadata !184), !dbg !253
  %1 = icmp sgt i32 %nf, 0, !dbg !254
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !257

.lr.ph:                                           ; preds = %0
  %2 = add i32 %nf, -1, !dbg !257
  br label %3, !dbg !257

; <label>:3                                       ; preds = %can_view.exit.thread, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %can_view.exit.thread ]
  %4 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, !dbg !258
  %5 = getelementptr inbounds %struct.t_filenm* %4, i64 0, i32 0, !dbg !260
  %6 = load i32* %5, align 4, !dbg !260, !tbaa !261
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !133, metadata !184), !dbg !264
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !134, metadata !184), !dbg !266
  br label %7, !dbg !267

; <label>:7                                       ; preds = %11, %3
  %indvars.iv.i = phi i64 [ 1, %3 ], [ %indvars.iv.next.i, %11 ], !dbg !268
  %8 = getelementptr inbounds [5 x i32]* @can_view_ftp, i64 0, i64 %indvars.iv.i, !dbg !269
  %9 = load i32* %8, align 4, !dbg !269, !tbaa !230
  %10 = icmp eq i32 %9, %6, !dbg !270
  br i1 %10, label %can_view.exit, label %11, !dbg !271

; <label>:11                                      ; preds = %7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !267
  %12 = trunc i64 %indvars.iv.next.i to i32, !dbg !272
  %13 = icmp ult i32 %12, 5, !dbg !272
  br i1 %13, label %7, label %can_view.exit.thread, !dbg !267

can_view.exit:                                    ; preds = %7
  %14 = trunc i64 %indvars.iv.i to i32, !dbg !271
  %15 = icmp eq i32 %14, 0, !dbg !268
  br i1 %15, label %can_view.exit.thread, label %16, !dbg !273

; <label>:16                                      ; preds = %can_view.exit
  %17 = tail call i32 @is_output(%struct.t_filenm* %4) #7, !dbg !274
  %18 = icmp eq i32 %17, 0, !dbg !274
  br i1 %18, label %can_view.exit.thread, label %19, !dbg !275

; <label>:19                                      ; preds = %16
  %20 = tail call i32 @is_optional(%struct.t_filenm* %4) #7, !dbg !276
  %21 = icmp eq i32 %20, 0, !dbg !276
  br i1 %21, label %25, label %22, !dbg !277

; <label>:22                                      ; preds = %19
  %23 = tail call i32 @is_set(%struct.t_filenm* %4) #7, !dbg !278
  %24 = icmp eq i32 %23, 0, !dbg !278
  br i1 %24, label %can_view.exit.thread, label %25, !dbg !279

; <label>:25                                      ; preds = %22, %19
  %26 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2, !dbg !280
  %27 = load i8** %26, align 8, !dbg !280, !tbaa !281
  tail call void @do_view(i8* %27, i8* undef) #8, !dbg !282
  br label %can_view.exit.thread, !dbg !282

can_view.exit.thread:                             ; preds = %11, %22, %16, %can_view.exit, %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !257
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !257
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !257
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !257

._crit_edge:                                      ; preds = %can_view.exit.thread, %0
  ret void, !dbg !283
}

; Function Attrs: optsize
declare i32 @is_output(%struct.t_filenm*) #1

; Function Attrs: optsize
declare i32 @is_optional(%struct.t_filenm*) #1

; Function Attrs: optsize
declare i32 @is_set(%struct.t_filenm*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!180, !181, !182}
!llvm.ident = !{!183}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !53, subprograms: !56, globals: !172, imports: !179)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/viewit.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 37, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/filenm.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!6 = !DIEnumerator(name: "efMDP", value: 0)
!7 = !DIEnumerator(name: "efGCT", value: 1)
!8 = !DIEnumerator(name: "efTRX", value: 2)
!9 = !DIEnumerator(name: "efTRN", value: 3)
!10 = !DIEnumerator(name: "efTRR", value: 4)
!11 = !DIEnumerator(name: "efTRJ", value: 5)
!12 = !DIEnumerator(name: "efXTC", value: 6)
!13 = !DIEnumerator(name: "efG87", value: 7)
!14 = !DIEnumerator(name: "efENX", value: 8)
!15 = !DIEnumerator(name: "efEDR", value: 9)
!16 = !DIEnumerator(name: "efENE", value: 10)
!17 = !DIEnumerator(name: "efSTX", value: 11)
!18 = !DIEnumerator(name: "efSTO", value: 12)
!19 = !DIEnumerator(name: "efGRO", value: 13)
!20 = !DIEnumerator(name: "efG96", value: 14)
!21 = !DIEnumerator(name: "efPDB", value: 15)
!22 = !DIEnumerator(name: "efBRK", value: 16)
!23 = !DIEnumerator(name: "efENT", value: 17)
!24 = !DIEnumerator(name: "efLOG", value: 18)
!25 = !DIEnumerator(name: "efXVG", value: 19)
!26 = !DIEnumerator(name: "efOUT", value: 20)
!27 = !DIEnumerator(name: "efNDX", value: 21)
!28 = !DIEnumerator(name: "efTOP", value: 22)
!29 = !DIEnumerator(name: "efITP", value: 23)
!30 = !DIEnumerator(name: "efTPX", value: 24)
!31 = !DIEnumerator(name: "efTPS", value: 25)
!32 = !DIEnumerator(name: "efTPR", value: 26)
!33 = !DIEnumerator(name: "efTPA", value: 27)
!34 = !DIEnumerator(name: "efTPB", value: 28)
!35 = !DIEnumerator(name: "efTEX", value: 29)
!36 = !DIEnumerator(name: "efRTP", value: 30)
!37 = !DIEnumerator(name: "efATP", value: 31)
!38 = !DIEnumerator(name: "efHDB", value: 32)
!39 = !DIEnumerator(name: "efDAT", value: 33)
!40 = !DIEnumerator(name: "efDLG", value: 34)
!41 = !DIEnumerator(name: "efMAP", value: 35)
!42 = !DIEnumerator(name: "efEPS", value: 36)
!43 = !DIEnumerator(name: "efMAT", value: 37)
!44 = !DIEnumerator(name: "efM2P", value: 38)
!45 = !DIEnumerator(name: "efMTX", value: 39)
!46 = !DIEnumerator(name: "efEDI", value: 40)
!47 = !DIEnumerator(name: "efEDO", value: 41)
!48 = !DIEnumerator(name: "efPPA", value: 42)
!49 = !DIEnumerator(name: "efPDO", value: 43)
!50 = !DIEnumerator(name: "efHAT", value: 44)
!51 = !DIEnumerator(name: "efXPM", value: 45)
!52 = !DIEnumerator(name: "efNR", value: 46)
!53 = !{!54, !55}
!54 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!56 = !{!57, !125, !131, !135, !156}
!57 = !DISubprogram(name: "__sputc", scope: !58, file: !58, line: 348, type: !59, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !122)
!58 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !61, !62}
!61 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !58, line: 153, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !58, line: 122, size: 1216, align: 64, elements: !65)
!65 = !{!66, !69, !70, !71, !73, !74, !79, !80, !81, !85, !90, !100, !106, !107, !110, !111, !115, !119, !120, !121}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !64, file: !58, line: 123, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !64, file: !58, line: 124, baseType: !61, size: 32, align: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !64, file: !58, line: 125, baseType: !61, size: 32, align: 32, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !58, line: 126, baseType: !72, size: 16, align: 16, offset: 128)
!72 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !64, file: !58, line: 127, baseType: !72, size: 16, align: 16, offset: 144)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !64, file: !58, line: 128, baseType: !75, size: 128, align: 64, offset: 192)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !58, line: 88, size: 128, align: 64, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !75, file: !58, line: 89, baseType: !67, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !75, file: !58, line: 90, baseType: !61, size: 32, align: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !64, file: !58, line: 129, baseType: !61, size: 32, align: 32, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !64, file: !58, line: 132, baseType: !55, size: 64, align: 64, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !64, file: !58, line: 133, baseType: !82, size: 64, align: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!61, !55}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !64, file: !58, line: 134, baseType: !86, size: 64, align: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!61, !55, !89, !61}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !64, file: !58, line: 135, baseType: !91, size: 64, align: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !55, !94, !61}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !58, line: 77, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !96, line: 71, baseType: !97)
!96 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !98, line: 46, baseType: !99)
!98 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!99 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !64, file: !58, line: 136, baseType: !101, size: 64, align: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!61, !55, !104, !61}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !64, file: !58, line: 139, baseType: !75, size: 128, align: 64, offset: 704)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !64, file: !58, line: 140, baseType: !108, size: 64, align: 64, offset: 832)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !58, line: 94, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !64, file: !58, line: 141, baseType: !61, size: 32, align: 32, offset: 896)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !64, file: !58, line: 144, baseType: !112, size: 24, align: 8, offset: 928)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 24, align: 8, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 3)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !64, file: !58, line: 145, baseType: !116, size: 8, align: 8, offset: 952)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8, align: 8, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 1)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !64, file: !58, line: 148, baseType: !75, size: 128, align: 64, offset: 960)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !64, file: !58, line: 151, baseType: !61, size: 32, align: 32, offset: 1088)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !64, file: !58, line: 152, baseType: !94, size: 64, align: 64, offset: 1152)
!122 = !{!123, !124}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !57, file: !58, line: 348, type: !61)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !57, file: !58, line: 348, type: !62)
!125 = !DISubprogram(name: "__sigbits", scope: !126, file: !126, line: 114, type: !127, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !129)
!126 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!127 = !DISubroutineType(types: !128)
!128 = !{!61, !61}
!129 = !{!130}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !125, file: !126, line: 114, type: !61)
!131 = !DISubprogram(name: "can_view", scope: !1, file: !1, line: 46, type: !127, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @can_view, variables: !132)
!132 = !{!133, !134}
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ftp", arg: 1, scope: !131, file: !1, line: 46, type: !61)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !131, file: !1, line: 48, type: !61)
!135 = !DISubprogram(name: "do_view", scope: !1, file: !1, line: 57, type: !136, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*)* @do_view, variables: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !89, !89}
!138 = !{!139, !140, !141, !145, !149, !151, !152, !153, !154, !155}
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !135, file: !1, line: 57, type: !89)
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "opts", arg: 2, scope: !135, file: !1, line: 57, type: !89)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !135, file: !1, line: 60, type: !142)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 32768, align: 8, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 4096)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "env", scope: !135, file: !1, line: 60, type: !146)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 160, align: 8, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 20)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ext", scope: !135, file: !1, line: 60, type: !150)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 24, align: 8, elements: !113)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmd", scope: !135, file: !1, line: 60, type: !89)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defopts", scope: !135, file: !1, line: 60, type: !89)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ftp", scope: !135, file: !1, line: 61, type: !61)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !135, file: !1, line: 61, type: !61)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disp", scope: !135, file: !1, line: 62, type: !89)
!156 = !DISubprogram(name: "view_all", scope: !1, file: !1, line: 106, type: !157, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.t_filenm*)* @view_all, variables: !168)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !61, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_filenm", file: !4, line: 62, baseType: !161)
!161 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 57, size: 256, align: 64, elements: !162)
!162 = !{!163, !164, !165, !166}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ftp", scope: !161, file: !4, line: 58, baseType: !61, size: 32, align: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !161, file: !4, line: 59, baseType: !89, size: 64, align: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !161, file: !4, line: 60, baseType: !89, size: 64, align: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !161, file: !4, line: 61, baseType: !167, size: 64, align: 64, offset: 192)
!167 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!168 = !{!169, !170, !171}
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nf", arg: 1, scope: !156, file: !1, line: 106, type: !61)
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnm", arg: 2, scope: !156, file: !1, line: 106, type: !159)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !156, file: !1, line: 108, type: !61)
!172 = !{!173, !177}
!173 = !DIGlobalVariable(name: "can_view_ftp", scope: !0, file: !1, line: 40, type: !174, isLocal: true, isDefinition: true, variable: [5 x i32]* @can_view_ftp)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, align: 32, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 5)
!177 = !DIGlobalVariable(name: "view_program", scope: !0, file: !1, line: 43, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 320, align: 64, elements: !175)
!179 = !{}
!180 = !{i32 2, !"Dwarf Version", i32 2}
!181 = !{i32 2, !"Debug Info Version", i32 700000003}
!182 = !{i32 1, !"PIC Level", i32 2}
!183 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!184 = !DIExpression()
!185 = !DILocation(line: 348, column: 40, scope: !57)
!186 = !DILocation(line: 348, column: 50, scope: !57)
!187 = !DILocation(line: 349, column: 12, scope: !188)
!188 = distinct !DILexicalBlock(scope: !57, file: !58, line: 349, column: 6)
!189 = !DILocation(line: 349, column: 6, scope: !188)
!190 = !{!191, !195, i64 12}
!191 = !{!"__sFILE", !192, i64 0, !195, i64 8, !195, i64 12, !196, i64 16, !196, i64 18, !197, i64 24, !195, i64 40, !192, i64 48, !192, i64 56, !192, i64 64, !192, i64 72, !192, i64 80, !197, i64 88, !192, i64 104, !195, i64 112, !193, i64 116, !193, i64 119, !197, i64 120, !195, i64 136, !198, i64 144}
!192 = !{!"any pointer", !193, i64 0}
!193 = !{!"omnipotent char", !194, i64 0}
!194 = !{!"Simple C/C++ TBAA"}
!195 = !{!"int", !193, i64 0}
!196 = !{!"short", !193, i64 0}
!197 = !{!"__sbuf", !192, i64 0, !195, i64 8}
!198 = !{!"long long", !193, i64 0}
!199 = !DILocation(line: 349, column: 15, scope: !188)
!200 = !DILocation(line: 349, column: 20, scope: !188)
!201 = !DILocation(line: 350, column: 10, scope: !188)
!202 = !DILocation(line: 349, column: 38, scope: !188)
!203 = !{!191, !195, i64 40}
!204 = !DILocation(line: 349, column: 31, scope: !188)
!205 = !DILocation(line: 349, column: 59, scope: !188)
!206 = !DILocation(line: 349, column: 47, scope: !188)
!207 = !DILocation(line: 350, column: 23, scope: !188)
!208 = !DILocation(line: 350, column: 16, scope: !188)
!209 = !DILocation(line: 350, column: 18, scope: !188)
!210 = !{!191, !192, i64 0}
!211 = !DILocation(line: 350, column: 21, scope: !188)
!212 = !{!193, !193, i64 0}
!213 = !DILocation(line: 350, column: 3, scope: !188)
!214 = !DILocation(line: 352, column: 11, scope: !188)
!215 = !DILocation(line: 352, column: 3, scope: !188)
!216 = !DILocation(line: 353, column: 1, scope: !57)
!217 = !DILocation(line: 114, column: 15, scope: !125)
!218 = !DILocation(line: 116, column: 20, scope: !125)
!219 = !DILocation(line: 116, column: 12, scope: !125)
!220 = !DILocation(line: 116, column: 57, scope: !125)
!221 = !DILocation(line: 116, column: 45, scope: !125)
!222 = !DILocation(line: 116, column: 5, scope: !125)
!223 = !DILocation(line: 46, column: 18, scope: !131)
!224 = !DILocation(line: 48, column: 7, scope: !131)
!225 = !DILocation(line: 50, column: 3, scope: !226)
!226 = distinct !DILexicalBlock(scope: !131, file: !1, line: 50, column: 3)
!227 = !DILocation(line: 51, column: 17, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 51, column: 10)
!229 = distinct !DILexicalBlock(scope: !226, file: !1, line: 50, column: 3)
!230 = !{!195, !195, i64 0}
!231 = !DILocation(line: 51, column: 14, scope: !228)
!232 = !DILocation(line: 51, column: 10, scope: !229)
!233 = !DILocation(line: 50, column: 13, scope: !229)
!234 = !DILocation(line: 55, column: 1, scope: !131)
!235 = !DILocation(line: 57, column: 20, scope: !135)
!236 = !DILocation(line: 57, column: 30, scope: !135)
!237 = !DILocation(line: 60, column: 49, scope: !135)
!238 = !DILocation(line: 65, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !135, file: !1, line: 65, column: 7)
!240 = !DILocation(line: 65, column: 20, scope: !239)
!241 = !DILocation(line: 65, column: 17, scope: !239)
!242 = !DILocation(line: 62, column: 9, scope: !135)
!243 = !DILocation(line: 72, column: 15, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 71, column: 23)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 71, column: 9)
!246 = distinct !DILexicalBlock(scope: !239, file: !1, line: 65, column: 24)
!247 = !{!192, !192, i64 0}
!248 = !DILocation(line: 72, column: 7, scope: !244)
!249 = !DILocation(line: 73, column: 5, scope: !244)
!250 = !DILocation(line: 104, column: 1, scope: !135)
!251 = !DILocation(line: 106, column: 19, scope: !156)
!252 = !DILocation(line: 106, column: 32, scope: !156)
!253 = !DILocation(line: 108, column: 7, scope: !156)
!254 = !DILocation(line: 110, column: 13, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 110, column: 3)
!256 = distinct !DILexicalBlock(scope: !156, file: !1, line: 110, column: 3)
!257 = !DILocation(line: 110, column: 3, scope: !256)
!258 = !DILocation(line: 111, column: 19, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !1, line: 111, column: 10)
!260 = !DILocation(line: 111, column: 26, scope: !259)
!261 = !{!262, !195, i64 0}
!262 = !{!"", !195, i64 0, !192, i64 8, !192, i64 16, !263, i64 24}
!263 = !{!"long", !193, i64 0}
!264 = !DILocation(line: 46, column: 18, scope: !131, inlinedAt: !265)
!265 = distinct !DILocation(line: 111, column: 10, scope: !259)
!266 = !DILocation(line: 48, column: 7, scope: !131, inlinedAt: !265)
!267 = !DILocation(line: 50, column: 3, scope: !226, inlinedAt: !265)
!268 = !DILocation(line: 111, column: 10, scope: !259)
!269 = !DILocation(line: 51, column: 17, scope: !228, inlinedAt: !265)
!270 = !DILocation(line: 51, column: 14, scope: !228, inlinedAt: !265)
!271 = !DILocation(line: 51, column: 10, scope: !229, inlinedAt: !265)
!272 = !DILocation(line: 50, column: 13, scope: !229, inlinedAt: !265)
!273 = !DILocation(line: 111, column: 31, scope: !259)
!274 = !DILocation(line: 111, column: 34, scope: !259)
!275 = !DILocation(line: 111, column: 55, scope: !259)
!276 = !DILocation(line: 112, column: 7, scope: !259)
!277 = !DILocation(line: 112, column: 30, scope: !259)
!278 = !DILocation(line: 112, column: 33, scope: !259)
!279 = !DILocation(line: 111, column: 10, scope: !255)
!280 = !DILocation(line: 113, column: 22, scope: !259)
!281 = !{!262, !192, i64 16}
!282 = !DILocation(line: 113, column: 7, scope: !259)
!283 = !DILocation(line: 114, column: 1, scope: !156)
