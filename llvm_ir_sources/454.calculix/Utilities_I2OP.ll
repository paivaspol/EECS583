; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_I2OP.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [46 x i8] c"\0A fatal error in I2OP_init(%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str2 = private unnamed_addr constant [97 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_I2OP.c\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1
@.str4 = private unnamed_addr constant [56 x i8] c"\0A fatal error in I2OP_initStorage(%d,%d,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c" <%4d,%4d,%p>\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._I2OP* @I2OP_init(i32 %n, i32 %flag) #0 {
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !24, metadata !115), !dbg !116
  tail call void @llvm.dbg.value(metadata i32 %flag, i64 0, metadata !25, metadata !115), !dbg !117
  %1 = icmp slt i32 %n, 1, !dbg !118
  %2 = icmp ugt i32 %flag, 2, !dbg !120
  %3 = or i1 %1, %2, !dbg !120
  br i1 %3, label %4, label %7, !dbg !120

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !121, !tbaa !123
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), i32 %n, i32 %flag) #5, !dbg !127
  tail call void @exit(i32 -1) #6, !dbg !128
  unreachable, !dbg !128

; <label>:7                                       ; preds = %0
  %8 = icmp sgt i32 %n, 0, !dbg !129
  br i1 %8, label %9, label %18, !dbg !131

; <label>:9                                       ; preds = %7
  %10 = sext i32 %n to i64, !dbg !132
  %11 = mul nsw i64 %10, 24, !dbg !132
  %12 = tail call i8* @malloc(i64 %11) #5, !dbg !132
  %13 = bitcast i8* %12 to %struct._I2OP*, !dbg !132
  tail call void @llvm.dbg.value(metadata %struct._I2OP* %13, i64 0, metadata !26, metadata !115), !dbg !135
  %14 = icmp eq i8* %12, null, !dbg !132
  br i1 %14, label %15, label %25, !dbg !136

; <label>:15                                      ; preds = %9
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !137, !tbaa !123
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %11, i32 41, i8* getelementptr inbounds ([97 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !137
  tail call void @exit(i32 -1) #6, !dbg !137
  unreachable, !dbg !137

; <label>:18                                      ; preds = %7
  %19 = icmp eq i32 %n, 0, !dbg !139
  br i1 %19, label %25, label %20, !dbg !129

; <label>:20                                      ; preds = %18
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !141, !tbaa !123
  %22 = sext i32 %n to i64, !dbg !141
  %23 = mul nsw i64 %22, 24, !dbg !141
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), i64 %23, i32 41, i8* getelementptr inbounds ([97 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !141
  tail call void @exit(i32 -1) #6, !dbg !141
  unreachable, !dbg !141

; <label>:25                                      ; preds = %18, %9
  %base.0 = phi %struct._I2OP* [ %13, %9 ], [ null, %18 ]
  tail call void @I2OP_initStorage(i32 %n, i32 %flag, %struct._I2OP* %base.0) #7, !dbg !143
  ret %struct._I2OP* %base.0, !dbg !144
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @I2OP_initStorage(i32 %n, i32 %flag, %struct._I2OP* %base) #0 {
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !31, metadata !115), !dbg !145
  tail call void @llvm.dbg.value(metadata i32 %flag, i64 0, metadata !32, metadata !115), !dbg !146
  tail call void @llvm.dbg.value(metadata %struct._I2OP* %base, i64 0, metadata !33, metadata !115), !dbg !147
  %1 = icmp slt i32 %n, 1, !dbg !148
  %2 = icmp ugt i32 %flag, 2, !dbg !150
  %3 = or i1 %1, %2, !dbg !150
  %4 = icmp eq %struct._I2OP* %base, null, !dbg !151
  %or.cond5 = or i1 %3, %4, !dbg !150
  br i1 %or.cond5, label %5, label %8, !dbg !150

; <label>:5                                       ; preds = %0
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !152, !tbaa !123
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), i32 %n, i32 %flag, %struct._I2OP* %base) #5, !dbg !154
  tail call void @exit(i32 -1) #6, !dbg !155
  unreachable, !dbg !155

; <label>:8                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct._I2OP* %base, i64 0, metadata !35, metadata !115), !dbg !156
  %9 = sext i32 %n to i64, !dbg !157
  %.sum = add nsw i64 %9, -1, !dbg !158
  %10 = getelementptr inbounds %struct._I2OP* %base, i64 %.sum, !dbg !158
  tail call void @llvm.dbg.value(metadata %struct._I2OP* %10, i64 0, metadata !36, metadata !115), !dbg !159
  switch i32 %flag, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader6
    i32 0, label %.lr.ph15
  ], !dbg !160

.preheader6:                                      ; preds = %8
  %11 = icmp slt i32 %n, 2, !dbg !161
  br i1 %11, label %._crit_edge13, label %.lr.ph12, !dbg !165

.lr.ph12:                                         ; preds = %.preheader6
  %elem.19 = getelementptr inbounds %struct._I2OP* %base, i64 1, !dbg !166
  br label %23, !dbg !165

.preheader:                                       ; preds = %8
  %12 = icmp sgt i32 %n, 1, !dbg !167
  br i1 %12, label %.lr.ph, label %._crit_edge, !dbg !170

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %elem.08 = phi %struct._I2OP* [ %16, %.lr.ph ], [ %base, %.preheader ]
  %13 = getelementptr inbounds %struct._I2OP* %elem.08, i64 0, i32 1, !dbg !171
  store i32 -1, i32* %13, align 4, !dbg !173, !tbaa !174
  %14 = getelementptr inbounds %struct._I2OP* %elem.08, i64 0, i32 0, !dbg !177
  store i32 -1, i32* %14, align 4, !dbg !178, !tbaa !179
  %15 = getelementptr inbounds %struct._I2OP* %elem.08, i64 0, i32 2, !dbg !180
  store i8* null, i8** %15, align 8, !dbg !181, !tbaa !182
  %16 = getelementptr inbounds %struct._I2OP* %elem.08, i64 1, !dbg !183
  %17 = getelementptr inbounds %struct._I2OP* %elem.08, i64 0, i32 3, !dbg !184
  store %struct._I2OP* %16, %struct._I2OP** %17, align 8, !dbg !185, !tbaa !186
  tail call void @llvm.dbg.value(metadata %struct._I2OP* %16, i64 0, metadata !34, metadata !115), !dbg !187
  %18 = icmp ult %struct._I2OP* %16, %10, !dbg !167
  br i1 %18, label %.lr.ph, label %._crit_edge, !dbg !170

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %19 = getelementptr inbounds %struct._I2OP* %base, i64 %.sum, i32 1, !dbg !188
  store i32 -1, i32* %19, align 4, !dbg !189, !tbaa !174
  %20 = getelementptr inbounds %struct._I2OP* %10, i64 0, i32 0, !dbg !190
  store i32 -1, i32* %20, align 4, !dbg !191, !tbaa !179
  %21 = getelementptr inbounds %struct._I2OP* %base, i64 %.sum, i32 2, !dbg !192
  %22 = bitcast i8** %21 to i8*, !dbg !193
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 16, i32 8, i1 false), !dbg !194
  br label %.loopexit, !dbg !193

; <label>:23                                      ; preds = %.lr.ph12, %23
  %24 = phi %struct._I2OP* [ %base, %.lr.ph12 ], [ %elem.111, %23 ]
  %elem.111 = phi %struct._I2OP* [ %elem.19, %.lr.ph12 ], [ %elem.1, %23 ]
  %25 = getelementptr inbounds %struct._I2OP* %24, i64 1, i32 1, !dbg !195
  store i32 -1, i32* %25, align 4, !dbg !197, !tbaa !174
  %26 = getelementptr inbounds %struct._I2OP* %24, i64 1, i32 0, !dbg !198
  store i32 -1, i32* %26, align 4, !dbg !199, !tbaa !179
  %27 = getelementptr inbounds %struct._I2OP* %24, i64 1, i32 2, !dbg !200
  store i8* null, i8** %27, align 8, !dbg !201, !tbaa !182
  %28 = getelementptr inbounds %struct._I2OP* %24, i64 1, i32 3, !dbg !202
  store %struct._I2OP* %24, %struct._I2OP** %28, align 8, !dbg !203, !tbaa !186
  %elem.1 = getelementptr inbounds %struct._I2OP* %24, i64 2, !dbg !166
  %29 = icmp ugt %struct._I2OP* %elem.1, %10, !dbg !161
  br i1 %29, label %._crit_edge13, label %23, !dbg !165

._crit_edge13:                                    ; preds = %23, %.preheader6
  %30 = getelementptr inbounds %struct._I2OP* %base, i64 0, i32 1, !dbg !204
  store i32 -1, i32* %30, align 4, !dbg !205, !tbaa !174
  %31 = getelementptr inbounds %struct._I2OP* %base, i64 0, i32 0, !dbg !206
  store i32 -1, i32* %31, align 4, !dbg !207, !tbaa !179
  %32 = getelementptr inbounds %struct._I2OP* %base, i64 0, i32 2, !dbg !208
  %33 = bitcast i8** %32 to i8*, !dbg !209
  call void @llvm.memset.p0i8.i64(i8* %33, i8 0, i64 16, i32 8, i1 false), !dbg !210
  br label %.loopexit, !dbg !209

.lr.ph15:                                         ; preds = %8, %.lr.ph15
  %elem.214 = phi %struct._I2OP* [ %37, %.lr.ph15 ], [ %base, %8 ]
  %34 = getelementptr inbounds %struct._I2OP* %elem.214, i64 0, i32 1, !dbg !211
  store i32 -1, i32* %34, align 4, !dbg !215, !tbaa !174
  %35 = getelementptr inbounds %struct._I2OP* %elem.214, i64 0, i32 0, !dbg !216
  store i32 -1, i32* %35, align 4, !dbg !217, !tbaa !179
  %36 = getelementptr inbounds %struct._I2OP* %elem.214, i64 0, i32 2, !dbg !218
  %37 = getelementptr inbounds %struct._I2OP* %elem.214, i64 1, !dbg !219
  tail call void @llvm.dbg.value(metadata %struct._I2OP* %37, i64 0, metadata !34, metadata !115), !dbg !187
  %38 = icmp ugt %struct._I2OP* %37, %10, !dbg !220
  %39 = bitcast i8** %36 to i8*, !dbg !221
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 16, i32 8, i1 false), !dbg !222
  br i1 %38, label %.loopexit, label %.lr.ph15, !dbg !221

.loopexit:                                        ; preds = %.lr.ph15, %8, %._crit_edge13, %._crit_edge
  ret void, !dbg !223
}

; Function Attrs: nounwind optsize ssp uwtable
define void @I2OP_free(%struct._I2OP* %ip) #0 {
  tail call void @llvm.dbg.value(metadata %struct._I2OP* %ip, i64 0, metadata !41, metadata !115), !dbg !224
  %1 = icmp eq %struct._I2OP* %ip, null, !dbg !225
  br i1 %1, label %4, label %2, !dbg !227

; <label>:2                                       ; preds = %0
  %3 = bitcast %struct._I2OP* %ip to i8*, !dbg !228
  tail call void @free(i8* %3) #7, !dbg !228
  tail call void @llvm.dbg.value(metadata %struct._I2OP* null, i64 0, metadata !41, metadata !115), !dbg !224
  br label %4, !dbg !228

; <label>:4                                       ; preds = %0, %2
  ret void, !dbg !232
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @I2OP_fprintf(%struct.__sFILE* %fp, %struct._I2OP* readonly %elem) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !106, metadata !115), !dbg !233
  tail call void @llvm.dbg.value(metadata %struct._I2OP* %elem, i64 0, metadata !107, metadata !115), !dbg !234
  %1 = icmp ne %struct.__sFILE* %fp, null, !dbg !235
  %2 = icmp ne %struct._I2OP* %elem, null, !dbg !236
  %or.cond = and i1 %1, %2, !dbg !237
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !dbg !237

.lr.ph:                                           ; preds = %0, %7
  %i.03 = phi i32 [ %17, %7 ], [ 0, %0 ]
  %.02 = phi %struct._I2OP* [ %16, %7 ], [ %elem, %0 ]
  %3 = and i32 %i.03, 3, !dbg !238
  %4 = icmp eq i32 %3, 0, !dbg !238
  br i1 %4, label %5, label %7, !dbg !241

; <label>:5                                       ; preds = %.lr.ph
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp), !dbg !242
  br label %7, !dbg !242

; <label>:7                                       ; preds = %5, %.lr.ph
  %8 = getelementptr inbounds %struct._I2OP* %.02, i64 0, i32 0, !dbg !243
  %9 = load i32* %8, align 4, !dbg !243, !tbaa !179
  %10 = getelementptr inbounds %struct._I2OP* %.02, i64 0, i32 1, !dbg !244
  %11 = load i32* %10, align 4, !dbg !244, !tbaa !174
  %12 = getelementptr inbounds %struct._I2OP* %.02, i64 0, i32 2, !dbg !245
  %13 = load i8** %12, align 8, !dbg !245, !tbaa !182
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i32 %9, i32 %11, i8* %13) #5, !dbg !246
  %15 = getelementptr inbounds %struct._I2OP* %.02, i64 0, i32 3, !dbg !247
  %16 = load %struct._I2OP** %15, align 8, !dbg !247, !tbaa !186
  tail call void @llvm.dbg.value(metadata %struct._I2OP* %16, i64 0, metadata !107, metadata !115), !dbg !234
  %17 = add nuw nsw i32 %i.03, 1, !dbg !248
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !108, metadata !115), !dbg !249
  %18 = icmp eq %struct._I2OP* %16, null, !dbg !250
  br i1 %18, label %.loopexit, label %.lr.ph, !dbg !251

.loopexit:                                        ; preds = %7, %0
  ret void, !dbg !252
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!111, !112, !113}
!llvm.ident = !{!114}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !19, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_I2OP.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !16, !12, !17}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_I2OP", file: !6, line: 6, size: 192, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/../I2OP.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !13}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "value0", scope: !5, file: !6, line: 7, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !5, file: !6, line: 8, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !5, file: !6, line: 9, baseType: !12, size: 64, align: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !6, line: 10, baseType: !14, size: 64, align: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "I2OP", file: !6, line: 5, baseType: !5)
!16 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !{!20, !27, !37, !42}
!20 = !DISubprogram(name: "I2OP_init", scope: !1, file: !1, line: 21, type: !21, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: %struct._I2OP* (i32, i32)* @I2OP_init, variables: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{!14, !9, !9}
!23 = !{!24, !25, !26}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !20, file: !1, line: 22, type: !9)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flag", arg: 2, scope: !20, file: !1, line: 23, type: !9)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base", scope: !20, file: !1, line: 25, type: !14)
!27 = !DISubprogram(name: "I2OP_initStorage", scope: !1, file: !1, line: 65, type: !28, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, %struct._I2OP*)* @I2OP_initStorage, variables: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !9, !9, !14}
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !27, file: !1, line: 66, type: !9)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flag", arg: 2, scope: !27, file: !1, line: 67, type: !9)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 3, scope: !27, file: !1, line: 68, type: !14)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "elem", scope: !27, file: !1, line: 70, type: !14)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "firstelem", scope: !27, file: !1, line: 70, type: !14)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastelem", scope: !27, file: !1, line: 70, type: !14)
!37 = !DISubprogram(name: "I2OP_free", scope: !1, file: !1, line: 151, type: !38, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._I2OP*)* @I2OP_free, variables: !40)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !14}
!40 = !{!41}
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ip", arg: 1, scope: !37, file: !1, line: 152, type: !14)
!42 = !DISubprogram(name: "I2OP_fprintf", scope: !1, file: !1, line: 168, type: !43, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct._I2OP*)* @I2OP_fprintf, variables: !105)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !14}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !47, line: 153, baseType: !48)
!47 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !47, line: 122, size: 1216, align: 64, elements: !49)
!49 = !{!50, !53, !54, !55, !57, !58, !63, !64, !65, !69, !73, !83, !89, !90, !93, !94, !98, !102, !103, !104}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !48, file: !47, line: 123, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !48, file: !47, line: 124, baseType: !9, size: 32, align: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !48, file: !47, line: 125, baseType: !9, size: 32, align: 32, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !48, file: !47, line: 126, baseType: !56, size: 16, align: 16, offset: 128)
!56 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !48, file: !47, line: 127, baseType: !56, size: 16, align: 16, offset: 144)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !48, file: !47, line: 128, baseType: !59, size: 128, align: 64, offset: 192)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !47, line: 88, size: 128, align: 64, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !59, file: !47, line: 89, baseType: !51, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !59, file: !47, line: 90, baseType: !9, size: 32, align: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !48, file: !47, line: 129, baseType: !9, size: 32, align: 32, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !48, file: !47, line: 132, baseType: !12, size: 64, align: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !48, file: !47, line: 133, baseType: !66, size: 64, align: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!9, !12}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !48, file: !47, line: 134, baseType: !70, size: 64, align: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!9, !12, !17, !9}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !48, file: !47, line: 135, baseType: !74, size: 64, align: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !12, !77, !9}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !47, line: 77, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !79, line: 71, baseType: !80)
!79 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !81, line: 46, baseType: !82)
!81 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!82 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !48, file: !47, line: 136, baseType: !84, size: 64, align: 64, offset: 640)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!9, !12, !87, !9}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !48, file: !47, line: 139, baseType: !59, size: 128, align: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !48, file: !47, line: 140, baseType: !91, size: 64, align: 64, offset: 832)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !47, line: 94, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !48, file: !47, line: 141, baseType: !9, size: 32, align: 32, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !48, file: !47, line: 144, baseType: !95, size: 24, align: 8, offset: 928)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 24, align: 8, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 3)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !48, file: !47, line: 145, baseType: !99, size: 8, align: 8, offset: 952)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 1)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !48, file: !47, line: 148, baseType: !59, size: 128, align: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !48, file: !47, line: 151, baseType: !9, size: 32, align: 32, offset: 1088)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !48, file: !47, line: 152, baseType: !77, size: 64, align: 64, offset: 1152)
!105 = !{!106, !107, !108}
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !42, file: !1, line: 169, type: !45)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "elem", arg: 2, scope: !42, file: !1, line: 170, type: !14)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !109, file: !1, line: 173, type: !9)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 172, column: 35)
!110 = distinct !DILexicalBlock(scope: !42, file: !1, line: 172, column: 6)
!111 = !{i32 2, !"Dwarf Version", i32 2}
!112 = !{i32 2, !"Debug Info Version", i32 700000003}
!113 = !{i32 1, !"PIC Level", i32 2}
!114 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!115 = !DIExpression()
!116 = !DILocation(line: 22, column: 10, scope: !20)
!117 = !DILocation(line: 23, column: 10, scope: !20)
!118 = !DILocation(line: 31, column: 8, scope: !119)
!119 = distinct !DILexicalBlock(scope: !20, file: !1, line: 31, column: 6)
!120 = !DILocation(line: 31, column: 13, scope: !119)
!121 = !DILocation(line: 32, column: 12, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 31, column: 59)
!123 = !{!124, !124, i64 0}
!124 = !{!"any pointer", !125, i64 0}
!125 = !{!"omnipotent char", !126, i64 0}
!126 = !{!"Simple C/C++ TBAA"}
!127 = !DILocation(line: 32, column: 4, scope: !122)
!128 = !DILocation(line: 34, column: 4, scope: !122)
!129 = !DILocation(line: 41, column: 1, scope: !130)
!130 = distinct !DILexicalBlock(scope: !20, file: !1, line: 41, column: 1)
!131 = !DILocation(line: 41, column: 1, scope: !20)
!132 = !DILocation(line: 41, column: 1, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 41, column: 1)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 41, column: 1)
!135 = !DILocation(line: 25, column: 10, scope: !20)
!136 = !DILocation(line: 41, column: 1, scope: !134)
!137 = !DILocation(line: 41, column: 1, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !1, line: 41, column: 1)
!139 = !DILocation(line: 41, column: 1, scope: !140)
!140 = distinct !DILexicalBlock(scope: !130, file: !1, line: 41, column: 1)
!141 = !DILocation(line: 41, column: 1, scope: !142)
!142 = distinct !DILexicalBlock(scope: !140, file: !1, line: 41, column: 1)
!143 = !DILocation(line: 47, column: 1, scope: !20)
!144 = !DILocation(line: 49, column: 1, scope: !20)
!145 = !DILocation(line: 66, column: 10, scope: !27)
!146 = !DILocation(line: 67, column: 10, scope: !27)
!147 = !DILocation(line: 68, column: 12, scope: !27)
!148 = !DILocation(line: 76, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !27, file: !1, line: 76, column: 7)
!150 = !DILocation(line: 76, column: 14, scope: !149)
!151 = !DILocation(line: 77, column: 12, scope: !149)
!152 = !DILocation(line: 78, column: 12, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 77, column: 22)
!154 = !DILocation(line: 78, column: 4, scope: !153)
!155 = !DILocation(line: 80, column: 4, scope: !153)
!156 = !DILocation(line: 70, column: 16, scope: !27)
!157 = !DILocation(line: 92, column: 23, scope: !27)
!158 = !DILocation(line: 92, column: 27, scope: !27)
!159 = !DILocation(line: 70, column: 28, scope: !27)
!160 = !DILocation(line: 97, column: 1, scope: !27)
!161 = !DILocation(line: 120, column: 38, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !1, line: 120, column: 4)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 120, column: 4)
!164 = distinct !DILexicalBlock(scope: !27, file: !1, line: 97, column: 17)
!165 = !DILocation(line: 120, column: 4, scope: !163)
!166 = !DILocation(line: 120, column: 27, scope: !163)
!167 = !DILocation(line: 99, column: 34, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 99, column: 4)
!169 = distinct !DILexicalBlock(scope: !164, file: !1, line: 99, column: 4)
!170 = !DILocation(line: 99, column: 4, scope: !169)
!171 = !DILocation(line: 100, column: 28, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !1, line: 99, column: 56)
!173 = !DILocation(line: 100, column: 35, scope: !172)
!174 = !{!175, !176, i64 4}
!175 = !{!"_I2OP", !176, i64 0, !176, i64 4, !124, i64 8, !124, i64 16}
!176 = !{!"int", !125, i64 0}
!177 = !DILocation(line: 100, column: 13, scope: !172)
!178 = !DILocation(line: 100, column: 20, scope: !172)
!179 = !{!175, !176, i64 0}
!180 = !DILocation(line: 101, column: 13, scope: !172)
!181 = !DILocation(line: 101, column: 20, scope: !172)
!182 = !{!175, !124, i64 8}
!183 = !DILocation(line: 102, column: 27, scope: !172)
!184 = !DILocation(line: 102, column: 13, scope: !172)
!185 = !DILocation(line: 102, column: 20, scope: !172)
!186 = !{!175, !124, i64 16}
!187 = !DILocation(line: 70, column: 9, scope: !27)
!188 = !DILocation(line: 109, column: 33, scope: !164)
!189 = !DILocation(line: 109, column: 40, scope: !164)
!190 = !DILocation(line: 109, column: 14, scope: !164)
!191 = !DILocation(line: 109, column: 21, scope: !164)
!192 = !DILocation(line: 110, column: 14, scope: !164)
!193 = !DILocation(line: 118, column: 4, scope: !164)
!194 = !DILocation(line: 111, column: 21, scope: !164)
!195 = !DILocation(line: 121, column: 28, scope: !196)
!196 = distinct !DILexicalBlock(scope: !162, file: !1, line: 120, column: 61)
!197 = !DILocation(line: 121, column: 35, scope: !196)
!198 = !DILocation(line: 121, column: 13, scope: !196)
!199 = !DILocation(line: 121, column: 20, scope: !196)
!200 = !DILocation(line: 122, column: 13, scope: !196)
!201 = !DILocation(line: 122, column: 20, scope: !196)
!202 = !DILocation(line: 123, column: 13, scope: !196)
!203 = !DILocation(line: 123, column: 20, scope: !196)
!204 = !DILocation(line: 125, column: 35, scope: !164)
!205 = !DILocation(line: 125, column: 42, scope: !164)
!206 = !DILocation(line: 125, column: 15, scope: !164)
!207 = !DILocation(line: 125, column: 22, scope: !164)
!208 = !DILocation(line: 126, column: 15, scope: !164)
!209 = !DILocation(line: 128, column: 4, scope: !164)
!210 = !DILocation(line: 127, column: 22, scope: !164)
!211 = !DILocation(line: 131, column: 28, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !1, line: 130, column: 57)
!213 = distinct !DILexicalBlock(scope: !214, file: !1, line: 130, column: 4)
!214 = distinct !DILexicalBlock(scope: !164, file: !1, line: 130, column: 4)
!215 = !DILocation(line: 131, column: 35, scope: !212)
!216 = !DILocation(line: 131, column: 13, scope: !212)
!217 = !DILocation(line: 131, column: 20, scope: !212)
!218 = !DILocation(line: 132, column: 13, scope: !212)
!219 = !DILocation(line: 130, column: 52, scope: !213)
!220 = !DILocation(line: 130, column: 34, scope: !213)
!221 = !DILocation(line: 130, column: 4, scope: !214)
!222 = !DILocation(line: 133, column: 20, scope: !212)
!223 = !DILocation(line: 139, column: 1, scope: !27)
!224 = !DILocation(line: 152, column: 12, scope: !37)
!225 = !DILocation(line: 154, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !37, file: !1, line: 154, column: 6)
!227 = !DILocation(line: 154, column: 6, scope: !37)
!228 = !DILocation(line: 155, column: 4, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 155, column: 4)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 155, column: 4)
!231 = distinct !DILexicalBlock(scope: !226, file: !1, line: 154, column: 19)
!232 = !DILocation(line: 157, column: 1, scope: !37)
!233 = !DILocation(line: 169, column: 12, scope: !42)
!234 = !DILocation(line: 170, column: 13, scope: !42)
!235 = !DILocation(line: 172, column: 9, scope: !110)
!236 = !DILocation(line: 172, column: 25, scope: !110)
!237 = !DILocation(line: 172, column: 17, scope: !110)
!238 = !DILocation(line: 175, column: 18, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 175, column: 12)
!240 = distinct !DILexicalBlock(scope: !109, file: !1, line: 174, column: 27)
!241 = !DILocation(line: 175, column: 12, scope: !240)
!242 = !DILocation(line: 175, column: 25, scope: !239)
!243 = !DILocation(line: 177, column: 21, scope: !240)
!244 = !DILocation(line: 177, column: 35, scope: !240)
!245 = !DILocation(line: 177, column: 49, scope: !240)
!246 = !DILocation(line: 176, column: 7, scope: !240)
!247 = !DILocation(line: 178, column: 20, scope: !240)
!248 = !DILocation(line: 179, column: 8, scope: !240)
!249 = !DILocation(line: 173, column: 10, scope: !109)
!250 = !DILocation(line: 174, column: 17, scope: !109)
!251 = !DILocation(line: 174, column: 4, scope: !109)
!252 = !DILocation(line: 182, column: 1, scope: !42)
