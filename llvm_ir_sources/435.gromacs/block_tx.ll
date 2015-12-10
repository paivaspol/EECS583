; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/block_tx.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"TX: Null pointer (size=%d)!\0A\00", align 1
@.str1 = private unnamed_addr constant [29 x i8] c"RX: Null pointer (size=%d)!\0A\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"%d: size=%d, len=%d, rx_count=%d\0A\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"block->index\00", align 1
@.str4 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/block_tx.c\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"block->a\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !130), !dbg !131
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !130), !dbg !132
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !133
  %2 = load i32* %1, align 4, !dbg !135, !tbaa !136
  %3 = add nsw i32 %2, -1, !dbg !135
  store i32 %3, i32* %1, align 4, !dbg !135, !tbaa !136
  %4 = icmp sgt i32 %2, 0, !dbg !145
  br i1 %4, label %._crit_edge, label %5, !dbg !146

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !147
  br label %10, !dbg !146

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !148
  %7 = load i32* %6, align 4, !dbg !148, !tbaa !149
  %8 = icmp sle i32 %2, %7, !dbg !150
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !151
  %or.cond = or i1 %9, %8, !dbg !152
  br i1 %or.cond, label %15, label %10, !dbg !152

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !147
  %11 = trunc i32 %_c to i8, !dbg !153
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !154
  %13 = load i8** %12, align 8, !dbg !155, !tbaa !156
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !155
  store i8* %14, i8** %12, align 8, !dbg !155, !tbaa !156
  store i8 %11, i8* %13, align 1, !dbg !157, !tbaa !158
  br label %17, !dbg !159

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #5, !dbg !160
  br label %17, !dbg !161

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !162
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !130), !dbg !163
  %1 = icmp sgt i32 %__signo, 32, !dbg !164
  br i1 %1, label %5, label %2, !dbg !165

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !166
  %4 = shl i32 1, %3, !dbg !167
  br label %5, !dbg !165

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !165
  ret i32 %6, !dbg !168
}

; Function Attrs: nounwind optsize ssp uwtable
define void @_blocktx(i32 %dest, i32 %nelem, i32 %size, i8* %data) #3 {
  %1 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %dest, i64 0, metadata !85, metadata !130), !dbg !169
  tail call void @llvm.dbg.value(metadata i32 %nelem, i64 0, metadata !86, metadata !130), !dbg !170
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !87, metadata !130), !dbg !171
  store i32 %size, i32* %1, align 4, !tbaa !172
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !88, metadata !130), !dbg !173
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !90, metadata !130), !dbg !174
  %2 = icmp eq i8* %data, null, !dbg !175
  %3 = icmp sgt i32 %size, 0, !dbg !177
  %or.cond = and i1 %3, %2, !dbg !178
  br i1 %or.cond, label %4, label %.preheader, !dbg !178

; <label>:4                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str, i64 0, i64 0), i32 %size) #5, !dbg !179
  br label %.preheader, !dbg !179

.preheader:                                       ; preds = %4, %0
  %5 = icmp sgt i32 %nelem, 0, !dbg !180
  br i1 %5, label %.lr.ph, label %._crit_edge, !dbg !183

.lr.ph:                                           ; preds = %.preheader
  %6 = bitcast i32* %1 to i8*, !dbg !184
  %7 = add i32 %nelem, -1, !dbg !183
  br label %8, !dbg !183

; <label>:8                                       ; preds = %12, %.lr.ph
  %buf.03 = phi i8* [ %data, %.lr.ph ], [ %15, %12 ]
  %i.02 = phi i32 [ 0, %.lr.ph ], [ %16, %12 ]
  call void @gmx_txs(i32 %dest, i8* %6, i32 4) #5, !dbg !186
  call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !87, metadata !130), !dbg !171
  %9 = load i32* %1, align 4, !dbg !187, !tbaa !172
  %10 = icmp sgt i32 %9, 0, !dbg !189
  br i1 %10, label %11, label %12, !dbg !190

; <label>:11                                      ; preds = %8
  call void @gmx_txs(i32 %dest, i8* %buf.03, i32 %9) #5, !dbg !191
  %.pre = load i32* %1, align 4, !dbg !192, !tbaa !172
  br label %12, !dbg !191

; <label>:12                                      ; preds = %11, %8
  %13 = phi i32 [ %.pre, %11 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !87, metadata !130), !dbg !171
  %14 = sext i32 %13 to i64, !dbg !193
  %15 = getelementptr inbounds i8* %buf.03, i64 %14, !dbg !193
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !90, metadata !130), !dbg !174
  %16 = add nuw nsw i32 %i.02, 1, !dbg !194
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !89, metadata !130), !dbg !195
  %exitcond = icmp eq i32 %i.02, %7, !dbg !183
  br i1 %exitcond, label %._crit_edge, label %8, !dbg !183

._crit_edge:                                      ; preds = %12, %.preheader
  ret void, !dbg !196
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @gmx_txs(i32, i8*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @_blockrx(i32 %src, i32 %nelem, i32 %size, i8* %data) #3 {
  %len = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %src, i64 0, metadata !93, metadata !130), !dbg !197
  tail call void @llvm.dbg.value(metadata i32 %nelem, i64 0, metadata !94, metadata !130), !dbg !198
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !95, metadata !130), !dbg !199
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !96, metadata !130), !dbg !200
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !99, metadata !130), !dbg !201
  %1 = icmp eq i8* %data, null, !dbg !202
  %2 = icmp sgt i32 %size, 0, !dbg !204
  %or.cond = and i1 %2, %1, !dbg !205
  br i1 %or.cond, label %3, label %.preheader, !dbg !205

; <label>:3                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), i32 %size) #5, !dbg !206
  br label %.preheader, !dbg !206

.preheader:                                       ; preds = %3, %0
  %4 = icmp sgt i32 %nelem, 0, !dbg !207
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !210

.lr.ph:                                           ; preds = %.preheader
  %5 = bitcast i32* %len to i8*, !dbg !211
  %6 = add i32 %nelem, -1, !dbg !210
  br label %7, !dbg !210

; <label>:7                                       ; preds = %15, %.lr.ph
  %buf.03 = phi i8* [ %data, %.lr.ph ], [ %18, %15 ]
  %i.02 = phi i32 [ 0, %.lr.ph ], [ %19, %15 ]
  call void @gmx_rxs(i32 %src, i8* %5, i32 4) #5, !dbg !213
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !98, metadata !130), !dbg !214
  %8 = load i32* %len, align 4, !dbg !215, !tbaa !172
  %9 = icmp eq i32 %8, %size, !dbg !217
  br i1 %9, label %11, label %10, !dbg !218

; <label>:10                                      ; preds = %7
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0), i32 0, i32 %size, i32 %8, i32 0) #5, !dbg !219
  %.pr = load i32* %len, align 4, !dbg !220, !tbaa !172
  br label %11, !dbg !219

; <label>:11                                      ; preds = %7, %10
  %12 = phi i32 [ %size, %7 ], [ %.pr, %10 ]
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !98, metadata !130), !dbg !214
  %13 = icmp sgt i32 %12, 0, !dbg !222
  br i1 %13, label %14, label %15, !dbg !223

; <label>:14                                      ; preds = %11
  call void @gmx_rxs(i32 %src, i8* %buf.03, i32 %12) #5, !dbg !224
  %.pre = load i32* %len, align 4, !dbg !225, !tbaa !172
  br label %15, !dbg !224

; <label>:15                                      ; preds = %14, %11
  %16 = phi i32 [ %.pre, %14 ], [ %12, %11 ]
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !98, metadata !130), !dbg !214
  %17 = sext i32 %16 to i64, !dbg !226
  %18 = getelementptr inbounds i8* %buf.03, i64 %17, !dbg !226
  call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !99, metadata !130), !dbg !201
  %19 = add nuw nsw i32 %i.02, 1, !dbg !227
  call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !97, metadata !130), !dbg !228
  %exitcond = icmp eq i32 %i.02, %6, !dbg !210
  br i1 %exitcond, label %._crit_edge, label %7, !dbg !210

._crit_edge:                                      ; preds = %15, %.preheader
  ret void, !dbg !229
}

; Function Attrs: optsize
declare void @gmx_rxs(i32, i8*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @mv_block(i32 %dest, %struct.t_block* %block) #3 {
  tail call void @llvm.dbg.value(metadata i32 %dest, i64 0, metadata !120, metadata !130), !dbg !230
  tail call void @llvm.dbg.value(metadata %struct.t_block* %block, i64 0, metadata !121, metadata !130), !dbg !231
  %1 = bitcast %struct.t_block* %block to i8*, !dbg !232
  tail call void @_blocktx(i32 %dest, i32 1, i32 1024, i8* %1) #6, !dbg !232
  %2 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !233
  %3 = bitcast i32* %2 to i8*, !dbg !233
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %3) #6, !dbg !233
  %4 = load i32* %2, align 4, !dbg !234, !tbaa !235
  %5 = shl i32 %4, 2, !dbg !234
  %6 = add i32 %5, 4, !dbg !234
  %7 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !234
  %8 = bitcast i32** %7 to i8**, !dbg !234
  %9 = load i8** %8, align 8, !dbg !234, !tbaa !237
  tail call void @_blocktx(i32 %dest, i32 1, i32 %6, i8* %9) #6, !dbg !234
  %10 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !238
  %11 = bitcast i32* %10 to i8*, !dbg !238
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %11) #6, !dbg !238
  %12 = load i32* %10, align 4, !dbg !239, !tbaa !240
  %13 = shl i32 %12, 2, !dbg !239
  %14 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !239
  %15 = bitcast i32** %14 to i8**, !dbg !239
  %16 = load i8** %15, align 8, !dbg !239, !tbaa !241
  tail call void @_blocktx(i32 %dest, i32 1, i32 %13, i8* %16) #6, !dbg !239
  ret void, !dbg !242
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ld_block(i32 %src, %struct.t_block* %block) #3 {
  tail call void @llvm.dbg.value(metadata i32 %src, i64 0, metadata !124, metadata !130), !dbg !243
  tail call void @llvm.dbg.value(metadata %struct.t_block* %block, i64 0, metadata !125, metadata !130), !dbg !244
  %1 = bitcast %struct.t_block* %block to i8*, !dbg !245
  tail call void @_blockrx(i32 %src, i32 1, i32 1024, i8* %1) #6, !dbg !245
  %2 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !246
  %3 = bitcast i32* %2 to i8*, !dbg !246
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %3) #6, !dbg !246
  %4 = load i32* %2, align 4, !dbg !247, !tbaa !235
  %5 = add nsw i32 %4, 1, !dbg !247
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str4, i64 0, i64 0), i32 108, i32 %5, i32 4) #5, !dbg !247
  %7 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !247
  %8 = bitcast i32** %7 to i8**, !dbg !247
  store i8* %6, i8** %8, align 8, !dbg !247, !tbaa !237
  %9 = load i32* %2, align 4, !dbg !248, !tbaa !235
  %10 = shl i32 %9, 2, !dbg !248
  %11 = add i32 %10, 4, !dbg !248
  tail call void @_blockrx(i32 %src, i32 1, i32 %11, i8* %6) #6, !dbg !248
  %12 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !249
  %13 = bitcast i32* %12 to i8*, !dbg !249
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %13) #6, !dbg !249
  %14 = load i32* %12, align 4, !dbg !250, !tbaa !240
  %15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str4, i64 0, i64 0), i32 120, i32 %14, i32 4) #5, !dbg !250
  %16 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !250
  %17 = bitcast i32** %16 to i8**, !dbg !250
  store i8* %15, i8** %17, align 8, !dbg !250, !tbaa !241
  %18 = load i32* %12, align 4, !dbg !251, !tbaa !240
  %19 = shl i32 %18, 2, !dbg !251
  tail call void @_blockrx(i32 %src, i32 1, i32 %19, i8* %15) #6, !dbg !251
  ret void, !dbg !252
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!126, !127, !128}
!llvm.ident = !{!129}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/block_tx.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!6 = !{!7, !75, !81, !91, !100, !122}
!7 = !DISubprogram(name: "__sputc", scope: !8, file: !8, line: 348, type: !9, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12}
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 153, baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !8, line: 122, size: 1216, align: 64, elements: !15)
!15 = !{!16, !19, !20, !21, !23, !24, !29, !30, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
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
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !14, file: !8, line: 132, baseType: !5, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !14, file: !8, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!11, !5}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !14, file: !8, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!11, !5, !39, !11}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !14, file: !8, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !44, !11}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !8, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !14, file: !8, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!11, !5, !54, !11}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !14, file: !8, line: 139, baseType: !25, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !14, file: !8, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !8, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !14, file: !8, line: 141, baseType: !11, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !14, file: !8, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !14, file: !8, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !14, file: !8, line: 148, baseType: !25, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !14, file: !8, line: 151, baseType: !11, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !14, file: !8, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !7, file: !8, line: 348, type: !11)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !7, file: !8, line: 348, type: !12)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!11, !11}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !11)
!81 = !DISubprogram(name: "_blocktx", scope: !1, file: !1, line: 40, type: !82, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32, i8*)* @_blocktx, variables: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !11, !11, !11, !5}
!84 = !{!85, !86, !87, !88, !89, !90}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dest", arg: 1, scope: !81, file: !1, line: 40, type: !11)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelem", arg: 2, scope: !81, file: !1, line: 40, type: !11)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !81, file: !1, line: 40, type: !11)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 4, scope: !81, file: !1, line: 40, type: !5)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !81, file: !1, line: 42, type: !11)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !81, file: !1, line: 43, type: !39)
!91 = !DISubprogram(name: "_blockrx", scope: !1, file: !1, line: 56, type: !82, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32, i8*)* @_blockrx, variables: !92)
!92 = !{!93, !94, !95, !96, !97, !98, !99}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !91, file: !1, line: 56, type: !11)
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelem", arg: 2, scope: !91, file: !1, line: 56, type: !11)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !91, file: !1, line: 56, type: !11)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 4, scope: !91, file: !1, line: 56, type: !5)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !91, file: !1, line: 58, type: !11)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !91, file: !1, line: 58, type: !11)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !91, file: !1, line: 59, type: !39)
!100 = !DISubprogram(name: "mv_block", scope: !1, file: !1, line: 74, type: !101, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.t_block*)* @mv_block, variables: !119)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !11, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !105, line: 52, baseType: !106)
!105 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!106 = !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 36, size: 8448, align: 64, elements: !107)
!107 = !{!108, !112, !113, !117, !118}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !106, file: !105, line: 37, baseType: !109, size: 8192, align: 32)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, align: 32, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !106, file: !105, line: 43, baseType: !11, size: 32, align: 32, offset: 8192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !106, file: !105, line: 44, baseType: !114, size: 64, align: 64, offset: 8256)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !116, line: 73, baseType: !11)
!116 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!117 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !106, file: !105, line: 45, baseType: !11, size: 32, align: 32, offset: 8320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !106, file: !105, line: 46, baseType: !114, size: 64, align: 64, offset: 8384)
!119 = !{!120, !121}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dest", arg: 1, scope: !100, file: !1, line: 74, type: !11)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "block", arg: 2, scope: !100, file: !1, line: 74, type: !103)
!122 = !DISubprogram(name: "ld_block", scope: !1, file: !1, line: 98, type: !101, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, %struct.t_block*)* @ld_block, variables: !123)
!123 = !{!124, !125}
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !122, file: !1, line: 98, type: !11)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "block", arg: 2, scope: !122, file: !1, line: 98, type: !103)
!126 = !{i32 2, !"Dwarf Version", i32 2}
!127 = !{i32 2, !"Debug Info Version", i32 700000003}
!128 = !{i32 1, !"PIC Level", i32 2}
!129 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!130 = !DIExpression()
!131 = !DILocation(line: 348, column: 40, scope: !7)
!132 = !DILocation(line: 348, column: 50, scope: !7)
!133 = !DILocation(line: 349, column: 12, scope: !134)
!134 = distinct !DILexicalBlock(scope: !7, file: !8, line: 349, column: 6)
!135 = !DILocation(line: 349, column: 6, scope: !134)
!136 = !{!137, !141, i64 12}
!137 = !{!"__sFILE", !138, i64 0, !141, i64 8, !141, i64 12, !142, i64 16, !142, i64 18, !143, i64 24, !141, i64 40, !138, i64 48, !138, i64 56, !138, i64 64, !138, i64 72, !138, i64 80, !143, i64 88, !138, i64 104, !141, i64 112, !139, i64 116, !139, i64 119, !143, i64 120, !141, i64 136, !144, i64 144}
!138 = !{!"any pointer", !139, i64 0}
!139 = !{!"omnipotent char", !140, i64 0}
!140 = !{!"Simple C/C++ TBAA"}
!141 = !{!"int", !139, i64 0}
!142 = !{!"short", !139, i64 0}
!143 = !{!"__sbuf", !138, i64 0, !141, i64 8}
!144 = !{!"long long", !139, i64 0}
!145 = !DILocation(line: 349, column: 15, scope: !134)
!146 = !DILocation(line: 349, column: 20, scope: !134)
!147 = !DILocation(line: 350, column: 10, scope: !134)
!148 = !DILocation(line: 349, column: 38, scope: !134)
!149 = !{!137, !141, i64 40}
!150 = !DILocation(line: 349, column: 31, scope: !134)
!151 = !DILocation(line: 349, column: 59, scope: !134)
!152 = !DILocation(line: 349, column: 47, scope: !134)
!153 = !DILocation(line: 350, column: 23, scope: !134)
!154 = !DILocation(line: 350, column: 16, scope: !134)
!155 = !DILocation(line: 350, column: 18, scope: !134)
!156 = !{!137, !138, i64 0}
!157 = !DILocation(line: 350, column: 21, scope: !134)
!158 = !{!139, !139, i64 0}
!159 = !DILocation(line: 350, column: 3, scope: !134)
!160 = !DILocation(line: 352, column: 11, scope: !134)
!161 = !DILocation(line: 352, column: 3, scope: !134)
!162 = !DILocation(line: 353, column: 1, scope: !7)
!163 = !DILocation(line: 114, column: 15, scope: !75)
!164 = !DILocation(line: 116, column: 20, scope: !75)
!165 = !DILocation(line: 116, column: 12, scope: !75)
!166 = !DILocation(line: 116, column: 57, scope: !75)
!167 = !DILocation(line: 116, column: 45, scope: !75)
!168 = !DILocation(line: 116, column: 5, scope: !75)
!169 = !DILocation(line: 40, column: 19, scope: !81)
!170 = !DILocation(line: 40, column: 28, scope: !81)
!171 = !DILocation(line: 40, column: 38, scope: !81)
!172 = !{!141, !141, i64 0}
!173 = !DILocation(line: 40, column: 49, scope: !81)
!174 = !DILocation(line: 43, column: 9, scope: !81)
!175 = !DILocation(line: 45, column: 12, scope: !176)
!176 = distinct !DILexicalBlock(scope: !81, file: !1, line: 45, column: 7)
!177 = !DILocation(line: 45, column: 29, scope: !176)
!178 = !DILocation(line: 45, column: 20, scope: !176)
!179 = !DILocation(line: 46, column: 5, scope: !176)
!180 = !DILocation(line: 48, column: 14, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 48, column: 3)
!182 = distinct !DILexicalBlock(scope: !81, file: !1, line: 48, column: 3)
!183 = !DILocation(line: 48, column: 3, scope: !182)
!184 = !DILocation(line: 49, column: 18, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 48, column: 27)
!186 = !DILocation(line: 49, column: 5, scope: !185)
!187 = !DILocation(line: 50, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !1, line: 50, column: 9)
!189 = !DILocation(line: 50, column: 14, scope: !188)
!190 = !DILocation(line: 50, column: 9, scope: !185)
!191 = !DILocation(line: 51, column: 7, scope: !188)
!192 = !DILocation(line: 52, column: 10, scope: !185)
!193 = !DILocation(line: 52, column: 8, scope: !185)
!194 = !DILocation(line: 48, column: 23, scope: !181)
!195 = !DILocation(line: 42, column: 7, scope: !81)
!196 = !DILocation(line: 54, column: 1, scope: !81)
!197 = !DILocation(line: 56, column: 19, scope: !91)
!198 = !DILocation(line: 56, column: 27, scope: !91)
!199 = !DILocation(line: 56, column: 37, scope: !91)
!200 = !DILocation(line: 56, column: 48, scope: !91)
!201 = !DILocation(line: 59, column: 9, scope: !91)
!202 = !DILocation(line: 61, column: 12, scope: !203)
!203 = distinct !DILexicalBlock(scope: !91, file: !1, line: 61, column: 7)
!204 = !DILocation(line: 61, column: 29, scope: !203)
!205 = !DILocation(line: 61, column: 20, scope: !203)
!206 = !DILocation(line: 62, column: 5, scope: !203)
!207 = !DILocation(line: 63, column: 14, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 63, column: 3)
!209 = distinct !DILexicalBlock(scope: !91, file: !1, line: 63, column: 3)
!210 = !DILocation(line: 63, column: 3, scope: !209)
!211 = !DILocation(line: 64, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !1, line: 63, column: 27)
!213 = !DILocation(line: 64, column: 5, scope: !212)
!214 = !DILocation(line: 58, column: 9, scope: !91)
!215 = !DILocation(line: 65, column: 15, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !1, line: 65, column: 9)
!217 = !DILocation(line: 65, column: 13, scope: !216)
!218 = !DILocation(line: 65, column: 9, scope: !212)
!219 = !DILocation(line: 66, column: 7, scope: !216)
!220 = !DILocation(line: 68, column: 9, scope: !221)
!221 = distinct !DILexicalBlock(scope: !212, file: !1, line: 68, column: 9)
!222 = !DILocation(line: 68, column: 13, scope: !221)
!223 = !DILocation(line: 68, column: 9, scope: !212)
!224 = !DILocation(line: 69, column: 7, scope: !221)
!225 = !DILocation(line: 70, column: 10, scope: !212)
!226 = !DILocation(line: 70, column: 8, scope: !212)
!227 = !DILocation(line: 63, column: 23, scope: !208)
!228 = !DILocation(line: 58, column: 7, scope: !91)
!229 = !DILocation(line: 72, column: 1, scope: !91)
!230 = !DILocation(line: 74, column: 19, scope: !100)
!231 = !DILocation(line: 74, column: 33, scope: !100)
!232 = !DILocation(line: 76, column: 3, scope: !100)
!233 = !DILocation(line: 80, column: 3, scope: !100)
!234 = !DILocation(line: 84, column: 3, scope: !100)
!235 = !{!236, !141, i64 1024}
!236 = !{!"", !139, i64 0, !141, i64 1024, !138, i64 1032, !141, i64 1040, !138, i64 1048}
!237 = !{!236, !138, i64 1032}
!238 = !DILocation(line: 88, column: 3, scope: !100)
!239 = !DILocation(line: 92, column: 3, scope: !100)
!240 = !{!236, !141, i64 1040}
!241 = !{!236, !138, i64 1048}
!242 = !DILocation(line: 96, column: 1, scope: !100)
!243 = !DILocation(line: 98, column: 19, scope: !122)
!244 = !DILocation(line: 98, column: 32, scope: !122)
!245 = !DILocation(line: 100, column: 3, scope: !122)
!246 = !DILocation(line: 104, column: 3, scope: !122)
!247 = !DILocation(line: 108, column: 3, scope: !122)
!248 = !DILocation(line: 112, column: 3, scope: !122)
!249 = !DILocation(line: 116, column: 3, scope: !122)
!250 = !DILocation(line: 120, column: 3, scope: !122)
!251 = !DILocation(line: 124, column: 3, scope: !122)
!252 = !DILocation(line: 128, column: 1, scope: !122)
