; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/eps.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [8 x i8] c"Courier\00", align 1
@.str1 = private unnamed_addr constant [39 x i8] c"No EPS fmt if alignment is >50 columns\00", align 1
@.str2 = private unnamed_addr constant [35 x i8] c"Alignment too wide to write in EPS\00", align 1
@.str3 = private unnamed_addr constant [30 x i8] c"Too many seqs to write in EPS\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"%%!PS-Adobe-3.0 EPSF-3.0\0A\00", align 1
@.str5 = private unnamed_addr constant [30 x i8] c"%%%%BoundingBox: %d %d %d %d\0A\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"%%%%Pages: 1\0A\00", align 1
@.str7 = private unnamed_addr constant [17 x i8] c"%%%%EndComments\0A\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"/%s findfont\0A\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"%d scalefont\0A\00", align 1
@.str10 = private unnamed_addr constant [9 x i8] c"setfont\0A\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"newpath\0A\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"%d %d moveto\0A\00", align 1
@.str13 = private unnamed_addr constant [11 x i8] c"(%s) show\0A\00", align 1
@.str14 = private unnamed_addr constant [11 x i8] c"(%c) show\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @EPSWriteSmallMSA(%struct.__sFILE* nocapture %fp, %struct.msa_struct* nocapture readonly %msa) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !149, metadata !168), !dbg !169
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !150, metadata !168), !dbg !170
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !152, metadata !168), !dbg !171
  tail call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !153, metadata !168), !dbg !172
  tail call void @llvm.dbg.value(metadata i32 15, i64 0, metadata !154, metadata !168), !dbg !173
  %1 = tail call i8* @sre_strdup(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 -1) #6, !dbg !174
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !155, metadata !168), !dbg !175
  tail call void @llvm.dbg.value(metadata i32 12, i64 0, metadata !156, metadata !168), !dbg !176
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !151, metadata !168), !dbg !177
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !157, metadata !168), !dbg !178
  %2 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !179
  %3 = load i32* %2, align 4, !dbg !179, !tbaa !182
  %4 = icmp sgt i32 %3, 0, !dbg !188
  br i1 %4, label %.lr.ph10, label %15, !dbg !189

.lr.ph10:                                         ; preds = %0
  %5 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !190
  %6 = load i8*** %5, align 8, !dbg !190, !tbaa !192
  %7 = sext i32 %3 to i64, !dbg !189
  br label %8, !dbg !189

; <label>:8                                       ; preds = %.lr.ph10, %8
  %indvars.iv16 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next17, %8 ]
  %namewidth.08 = phi i32 [ 0, %.lr.ph10 ], [ %.namewidth.0, %8 ]
  %9 = getelementptr inbounds i8** %6, i64 %indvars.iv16, !dbg !193
  %10 = load i8** %9, align 8, !dbg !193, !tbaa !194
  %11 = tail call i64 @strlen(i8* %10) #6, !dbg !195
  %12 = trunc i64 %11 to i32, !dbg !196
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !159, metadata !168), !dbg !197
  %13 = icmp sgt i32 %12, %namewidth.08, !dbg !198
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !151, metadata !168), !dbg !177
  %.namewidth.0 = select i1 %13, i32 %12, i32 %namewidth.08, !dbg !199
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1, !dbg !189
  %14 = icmp slt i64 %indvars.iv.next17, %7, !dbg !188
  br i1 %14, label %8, label %._crit_edge11, !dbg !189

._crit_edge11:                                    ; preds = %8
  %phitmp = shl i32 %.namewidth.0, 3, !dbg !189
  %phitmp13 = add i32 %phitmp, 8, !dbg !189
  br label %15, !dbg !189

; <label>:15                                      ; preds = %._crit_edge11, %0
  %namewidth.0.lcssa = phi i32 [ %phitmp13, %._crit_edge11 ], [ 8, %0 ]
  tail call void @llvm.dbg.value(metadata i32 %namewidth.0.lcssa, i64 0, metadata !151, metadata !168), !dbg !177
  %16 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !200
  %17 = load i32* %16, align 4, !dbg !200, !tbaa !202
  %18 = icmp sgt i32 %17, 50, !dbg !203
  br i1 %18, label %19, label %20, !dbg !204

; <label>:19                                      ; preds = %15
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([39 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !205
  %.pre = load i32* %16, align 4, !dbg !206, !tbaa !202
  br label %20, !dbg !205

; <label>:20                                      ; preds = %19, %15
  %21 = phi i32 [ %.pre, %19 ], [ %17, %15 ]
  %22 = mul nsw i32 %21, 9, !dbg !207
  %23 = add nsw i32 %22, %namewidth.0.lcssa, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !160, metadata !168), !dbg !209
  %24 = icmp sgt i32 %23, 612, !dbg !210
  br i1 %24, label %25, label %26, !dbg !212

; <label>:25                                      ; preds = %20
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([35 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !213
  br label %26, !dbg !213

; <label>:26                                      ; preds = %25, %20
  %27 = load i32* %2, align 4, !dbg !214, !tbaa !182
  %28 = mul nsw i32 %27, 15, !dbg !215
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !161, metadata !168), !dbg !216
  %29 = icmp sgt i32 %28, 792, !dbg !217
  br i1 %29, label %30, label %31, !dbg !219

; <label>:30                                      ; preds = %26
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !220
  br label %31, !dbg !220

; <label>:31                                      ; preds = %30, %26
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !221
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 %23, i32 %28) #6, !dbg !222
  %34 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !223
  %35 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !224
  %36 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i8* %1) #6, !dbg !225
  %37 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 12) #6, !dbg !226
  %38 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str10, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %fp), !dbg !227
  %39 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %fp), !dbg !228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !157, metadata !168), !dbg !178
  %40 = load i32* %2, align 4, !dbg !229, !tbaa !182
  %41 = icmp sgt i32 %40, 0, !dbg !232
  br i1 %41, label %.lr.ph5, label %._crit_edge6, !dbg !233

.lr.ph5:                                          ; preds = %31
  %42 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !234
  %43 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !236
  br label %44, !dbg !233

; <label>:44                                      ; preds = %.lr.ph5, %._crit_edge
  %indvars.iv14 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next15, %._crit_edge ]
  %45 = phi i32 [ %40, %.lr.ph5 ], [ %69, %._crit_edge ]
  %46 = trunc i64 %indvars.iv14 to i32, !dbg !240
  %47 = sub nsw i32 %45, %46, !dbg !240
  %48 = mul i32 %47, 15, !dbg !241
  %49 = add i32 %48, -15, !dbg !241
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !163, metadata !168), !dbg !242
  %50 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i32 0, i32 %49) #6, !dbg !243
  %51 = load i8*** %42, align 8, !dbg !234, !tbaa !192
  %52 = getelementptr inbounds i8** %51, i64 %indvars.iv14, !dbg !244
  %53 = load i8** %52, align 8, !dbg !244, !tbaa !194
  %54 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str13, i64 0, i64 0), i8* %53) #6, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %namewidth.0.lcssa, i64 0, metadata !162, metadata !168), !dbg !246
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !158, metadata !168), !dbg !247
  %55 = load i32* %16, align 4, !dbg !248, !tbaa !202
  %56 = icmp sgt i32 %55, 0, !dbg !249
  br i1 %56, label %.lr.ph, label %._crit_edge, !dbg !250

.lr.ph:                                           ; preds = %44, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %44 ]
  %xpos.02 = phi i32 [ %65, %.lr.ph ], [ %namewidth.0.lcssa, %44 ]
  %57 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i32 %xpos.02, i32 %49) #6, !dbg !251
  %58 = load i8*** %43, align 8, !dbg !236, !tbaa !252
  %59 = getelementptr inbounds i8** %58, i64 %indvars.iv14, !dbg !253
  %60 = load i8** %59, align 8, !dbg !253, !tbaa !194
  %61 = getelementptr inbounds i8* %60, i64 %indvars.iv, !dbg !253
  %62 = load i8* %61, align 1, !dbg !253, !tbaa !254
  %63 = sext i8 %62 to i32, !dbg !253
  %64 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i32 %63) #6, !dbg !255
  %65 = add nsw i32 %xpos.02, 9, !dbg !256
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !162, metadata !168), !dbg !246
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !250
  %66 = load i32* %16, align 4, !dbg !248, !tbaa !202
  %67 = sext i32 %66 to i64, !dbg !249
  %68 = icmp slt i64 %indvars.iv.next, %67, !dbg !249
  br i1 %68, label %.lr.ph, label %._crit_edge, !dbg !250

._crit_edge:                                      ; preds = %.lr.ph, %44
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1, !dbg !233
  %69 = load i32* %2, align 4, !dbg !229, !tbaa !182
  %70 = sext i32 %69 to i64, !dbg !232
  %71 = icmp sgt i64 %70, %indvars.iv.next15, !dbg !232
  br i1 %71, label %44, label %._crit_edge6, !dbg !233

._crit_edge6:                                     ; preds = %._crit_edge, %31
  tail call void @free(i8* %1) #7, !dbg !257
  ret void, !dbg !258
}

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!164, !165, !166}
!llvm.ident = !{!167}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/eps.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !{!6}
!6 = !DISubprogram(name: "EPSWriteSmallMSA", scope: !1, file: !1, line: 43, type: !7, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.msa_struct*)* @EPSWriteSmallMSA, variables: !148)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !72}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !11, line: 153, baseType: !12)
!11 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !11, line: 122, size: 1216, align: 64, elements: !13)
!13 = !{!14, !17, !18, !19, !21, !22, !27, !28, !30, !34, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !12, file: !11, line: 123, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !12, file: !11, line: 124, baseType: !4, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !12, file: !11, line: 125, baseType: !4, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !12, file: !11, line: 126, baseType: !20, size: 16, align: 16, offset: 128)
!20 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !12, file: !11, line: 127, baseType: !20, size: 16, align: 16, offset: 144)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !12, file: !11, line: 128, baseType: !23, size: 128, align: 64, offset: 192)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !11, line: 88, size: 128, align: 64, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !23, file: !11, line: 89, baseType: !15, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !23, file: !11, line: 90, baseType: !4, size: 32, align: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !12, file: !11, line: 129, baseType: !4, size: 32, align: 32, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !12, file: !11, line: 132, baseType: !29, size: 64, align: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !12, file: !11, line: 133, baseType: !31, size: 64, align: 64, offset: 448)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{!4, !29}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !12, file: !11, line: 134, baseType: !35, size: 64, align: 64, offset: 512)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{!4, !29, !38, !4}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !12, file: !11, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !29, !44, !4}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !11, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !12, file: !11, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!4, !29, !54, !4}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !12, file: !11, line: 139, baseType: !23, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !12, file: !11, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !11, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !12, file: !11, line: 141, baseType: !4, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !12, file: !11, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !12, file: !11, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !12, file: !11, line: 148, baseType: !23, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !12, file: !11, line: 151, baseType: !4, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !12, file: !11, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSA", file: !74, line: 177, baseType: !75)
!74 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msa.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "msa_struct", file: !74, line: 112, size: 2880, align: 64, elements: !76)
!76 = !{!77, !79, !80, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !102, !104, !105, !106, !107, !108, !109, !110, !111, !112, !114, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !145, !146, !147}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "aseq", scope: !75, file: !74, line: 115, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "sqname", scope: !75, file: !74, line: 116, baseType: !78, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "wgt", scope: !75, file: !74, line: 117, baseType: !81, size: 64, align: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "alen", scope: !75, file: !74, line: 118, baseType: !4, size: 32, align: 32, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !75, file: !74, line: 119, baseType: !4, size: 32, align: 32, offset: 224)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !74, line: 123, baseType: !4, size: 32, align: 32, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !74, line: 124, baseType: !4, size: 32, align: 32, offset: 288)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !74, line: 125, baseType: !38, size: 64, align: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !75, file: !74, line: 126, baseType: !38, size: 64, align: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !75, file: !74, line: 127, baseType: !38, size: 64, align: 64, offset: 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !75, file: !74, line: 128, baseType: !38, size: 64, align: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cons", scope: !75, file: !74, line: 129, baseType: !38, size: 64, align: 64, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sa_cons", scope: !75, file: !74, line: 130, baseType: !38, size: 64, align: 64, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !75, file: !74, line: 131, baseType: !38, size: 64, align: 64, offset: 704)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sqacc", scope: !75, file: !74, line: 132, baseType: !78, size: 64, align: 64, offset: 768)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "sqdesc", scope: !75, file: !74, line: 133, baseType: !78, size: 64, align: 64, offset: 832)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !75, file: !74, line: 134, baseType: !78, size: 64, align: 64, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !75, file: !74, line: 135, baseType: !78, size: 64, align: 64, offset: 960)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff", scope: !75, file: !74, line: 136, baseType: !99, size: 192, align: 32, offset: 1024)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 192, align: 32, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 6)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff_is_set", scope: !75, file: !74, line: 137, baseType: !103, size: 192, align: 32, offset: 1216)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, align: 32, elements: !100)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !75, file: !74, line: 144, baseType: !78, size: 64, align: 64, offset: 1408)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ncomment", scope: !75, file: !74, line: 145, baseType: !4, size: 32, align: 32, offset: 1472)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ncomment", scope: !75, file: !74, line: 146, baseType: !4, size: 32, align: 32, offset: 1504)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "gf_tag", scope: !75, file: !74, line: 148, baseType: !78, size: 64, align: 64, offset: 1536)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "gf", scope: !75, file: !74, line: 149, baseType: !78, size: 64, align: 64, offset: 1600)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ngf", scope: !75, file: !74, line: 150, baseType: !4, size: 32, align: 32, offset: 1664)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ngf", scope: !75, file: !74, line: 151, baseType: !4, size: 32, align: 32, offset: 1696)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "gs_tag", scope: !75, file: !74, line: 153, baseType: !78, size: 64, align: 64, offset: 1728)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !75, file: !74, line: 154, baseType: !113, size: 64, align: 64, offset: 1792)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "gs_idx", scope: !75, file: !74, line: 155, baseType: !115, size: 64, align: 64, offset: 1856)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKI", file: !117, line: 42, baseType: !118)
!117 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gki.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!118 = !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 36, size: 192, align: 64, elements: !119)
!119 = !{!120, !128, !129, !130}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !118, file: !117, line: 37, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "gki_elem", file: !117, line: 26, size: 192, align: 64, elements: !124)
!124 = !{!125, !126, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !123, file: !117, line: 27, baseType: !38, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !123, file: !117, line: 28, baseType: !4, size: 32, align: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "nxt", scope: !123, file: !117, line: 29, baseType: !122, size: 64, align: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "primelevel", scope: !118, file: !117, line: 39, baseType: !4, size: 32, align: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nhash", scope: !118, file: !117, line: 40, baseType: !4, size: 32, align: 32, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !118, file: !117, line: 41, baseType: !4, size: 32, align: 32, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ngs", scope: !75, file: !74, line: 156, baseType: !4, size: 32, align: 32, offset: 1920)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "gc_tag", scope: !75, file: !74, line: 158, baseType: !78, size: 64, align: 64, offset: 1984)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !75, file: !74, line: 159, baseType: !78, size: 64, align: 64, offset: 2048)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "gc_idx", scope: !75, file: !74, line: 160, baseType: !115, size: 64, align: 64, offset: 2112)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ngc", scope: !75, file: !74, line: 161, baseType: !4, size: 32, align: 32, offset: 2176)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "gr_tag", scope: !75, file: !74, line: 163, baseType: !78, size: 64, align: 64, offset: 2240)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "gr", scope: !75, file: !74, line: 164, baseType: !113, size: 64, align: 64, offset: 2304)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "gr_idx", scope: !75, file: !74, line: 165, baseType: !115, size: 64, align: 64, offset: 2368)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ngr", scope: !75, file: !74, line: 166, baseType: !4, size: 32, align: 32, offset: 2432)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !75, file: !74, line: 170, baseType: !115, size: 64, align: 64, offset: 2496)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nseqalloc", scope: !75, file: !74, line: 171, baseType: !4, size: 32, align: 32, offset: 2560)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nseqlump", scope: !75, file: !74, line: 172, baseType: !4, size: 32, align: 32, offset: 2592)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sqlen", scope: !75, file: !74, line: 173, baseType: !144, size: 64, align: 64, offset: 2624)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sslen", scope: !75, file: !74, line: 174, baseType: !144, size: 64, align: 64, offset: 2688)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !75, file: !74, line: 175, baseType: !144, size: 64, align: 64, offset: 2752)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "lastidx", scope: !75, file: !74, line: 176, baseType: !4, size: 32, align: 32, offset: 2816)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !6, file: !1, line: 43, type: !9)
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 2, scope: !6, file: !1, line: 43, type: !72)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "namewidth", scope: !6, file: !1, line: 45, type: !4)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fontwidth", scope: !6, file: !1, line: 46, type: !4)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hspace", scope: !6, file: !1, line: 47, type: !4)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vspace", scope: !6, file: !1, line: 48, type: !4)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "font", scope: !6, file: !1, line: 49, type: !38)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fontsize", scope: !6, file: !1, line: 50, type: !4)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !6, file: !1, line: 51, type: !4)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !6, file: !1, line: 51, type: !4)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !6, file: !1, line: 52, type: !4)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "width", scope: !6, file: !1, line: 53, type: !4)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "height", scope: !6, file: !1, line: 53, type: !4)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xpos", scope: !6, file: !1, line: 54, type: !4)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ypos", scope: !6, file: !1, line: 54, type: !4)
!164 = !{i32 2, !"Dwarf Version", i32 2}
!165 = !{i32 2, !"Debug Info Version", i32 700000003}
!166 = !{i32 1, !"PIC Level", i32 2}
!167 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!168 = !DIExpression()
!169 = !DILocation(line: 43, column: 24, scope: !6)
!170 = !DILocation(line: 43, column: 33, scope: !6)
!171 = !DILocation(line: 46, column: 7, scope: !6)
!172 = !DILocation(line: 47, column: 7, scope: !6)
!173 = !DILocation(line: 48, column: 7, scope: !6)
!174 = !DILocation(line: 63, column: 15, scope: !6)
!175 = !DILocation(line: 49, column: 9, scope: !6)
!176 = !DILocation(line: 50, column: 7, scope: !6)
!177 = !DILocation(line: 45, column: 7, scope: !6)
!178 = !DILocation(line: 51, column: 8, scope: !6)
!179 = !DILocation(line: 69, column: 24, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 69, column: 3)
!181 = distinct !DILexicalBlock(scope: !6, file: !1, line: 69, column: 3)
!182 = !{!183, !187, i64 28}
!183 = !{!"msa_struct", !184, i64 0, !184, i64 8, !184, i64 16, !187, i64 24, !187, i64 28, !187, i64 32, !187, i64 36, !184, i64 40, !184, i64 48, !184, i64 56, !184, i64 64, !184, i64 72, !184, i64 80, !184, i64 88, !184, i64 96, !184, i64 104, !184, i64 112, !184, i64 120, !185, i64 128, !185, i64 152, !184, i64 176, !187, i64 184, !187, i64 188, !184, i64 192, !184, i64 200, !187, i64 208, !187, i64 212, !184, i64 216, !184, i64 224, !184, i64 232, !187, i64 240, !184, i64 248, !184, i64 256, !184, i64 264, !187, i64 272, !184, i64 280, !184, i64 288, !184, i64 296, !187, i64 304, !184, i64 312, !187, i64 320, !187, i64 324, !184, i64 328, !184, i64 336, !184, i64 344, !187, i64 352}
!184 = !{!"any pointer", !185, i64 0}
!185 = !{!"omnipotent char", !186, i64 0}
!186 = !{!"Simple C/C++ TBAA"}
!187 = !{!"int", !185, i64 0}
!188 = !DILocation(line: 69, column: 17, scope: !180)
!189 = !DILocation(line: 69, column: 3, scope: !181)
!190 = !DILocation(line: 70, column: 34, scope: !191)
!191 = distinct !DILexicalBlock(scope: !180, file: !1, line: 70, column: 9)
!192 = !{!183, !184, i64 8}
!193 = !DILocation(line: 70, column: 29, scope: !191)
!194 = !{!184, !184, i64 0}
!195 = !DILocation(line: 70, column: 22, scope: !191)
!196 = !DILocation(line: 70, column: 16, scope: !191)
!197 = !DILocation(line: 52, column: 8, scope: !6)
!198 = !DILocation(line: 70, column: 46, scope: !191)
!199 = !DILocation(line: 70, column: 9, scope: !180)
!200 = !DILocation(line: 77, column: 12, scope: !201)
!201 = distinct !DILexicalBlock(scope: !6, file: !1, line: 77, column: 7)
!202 = !{!183, !187, i64 24}
!203 = !DILocation(line: 77, column: 17, scope: !201)
!204 = !DILocation(line: 77, column: 7, scope: !6)
!205 = !DILocation(line: 77, column: 23, scope: !201)
!206 = !DILocation(line: 78, column: 35, scope: !6)
!207 = !DILocation(line: 78, column: 29, scope: !6)
!208 = !DILocation(line: 78, column: 21, scope: !6)
!209 = !DILocation(line: 53, column: 8, scope: !6)
!210 = !DILocation(line: 79, column: 13, scope: !211)
!211 = distinct !DILexicalBlock(scope: !6, file: !1, line: 79, column: 7)
!212 = !DILocation(line: 79, column: 7, scope: !6)
!213 = !DILocation(line: 79, column: 20, scope: !211)
!214 = !DILocation(line: 80, column: 24, scope: !6)
!215 = !DILocation(line: 80, column: 18, scope: !6)
!216 = !DILocation(line: 53, column: 15, scope: !6)
!217 = !DILocation(line: 81, column: 14, scope: !218)
!218 = distinct !DILexicalBlock(scope: !6, file: !1, line: 81, column: 7)
!219 = !DILocation(line: 81, column: 7, scope: !6)
!220 = !DILocation(line: 81, column: 21, scope: !218)
!221 = !DILocation(line: 85, column: 3, scope: !6)
!222 = !DILocation(line: 86, column: 3, scope: !6)
!223 = !DILocation(line: 87, column: 3, scope: !6)
!224 = !DILocation(line: 88, column: 3, scope: !6)
!225 = !DILocation(line: 92, column: 3, scope: !6)
!226 = !DILocation(line: 93, column: 3, scope: !6)
!227 = !DILocation(line: 94, column: 3, scope: !6)
!228 = !DILocation(line: 95, column: 3, scope: !6)
!229 = !DILocation(line: 99, column: 24, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 99, column: 3)
!231 = distinct !DILexicalBlock(scope: !6, file: !1, line: 99, column: 3)
!232 = !DILocation(line: 99, column: 17, scope: !230)
!233 = !DILocation(line: 99, column: 3, scope: !231)
!234 = !DILocation(line: 104, column: 39, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 100, column: 5)
!236 = !DILocation(line: 110, column: 36, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 108, column: 2)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 107, column: 7)
!239 = distinct !DILexicalBlock(scope: !235, file: !1, line: 107, column: 7)
!240 = !DILocation(line: 101, column: 24, scope: !235)
!241 = !DILocation(line: 101, column: 29, scope: !235)
!242 = !DILocation(line: 54, column: 14, scope: !6)
!243 = !DILocation(line: 103, column: 7, scope: !235)
!244 = !DILocation(line: 104, column: 34, scope: !235)
!245 = !DILocation(line: 104, column: 7, scope: !235)
!246 = !DILocation(line: 54, column: 8, scope: !6)
!247 = !DILocation(line: 51, column: 10, scope: !6)
!248 = !DILocation(line: 107, column: 28, scope: !238)
!249 = !DILocation(line: 107, column: 21, scope: !238)
!250 = !DILocation(line: 107, column: 7, scope: !239)
!251 = !DILocation(line: 109, column: 4, scope: !237)
!252 = !{!183, !184, i64 0}
!253 = !DILocation(line: 110, column: 31, scope: !237)
!254 = !{!185, !185, i64 0}
!255 = !DILocation(line: 110, column: 4, scope: !237)
!256 = !DILocation(line: 111, column: 8, scope: !237)
!257 = !DILocation(line: 115, column: 3, scope: !6)
!258 = !DILocation(line: 116, column: 1, scope: !6)
