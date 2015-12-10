; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_DDsepInfo.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DDsepInfo = type { i32, i32, i32, double, double, i32, i32, i32, i32, double, double, double, double, double, double, double, i32, %struct.__sFILE* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [94 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_DDsepInfo.c\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DDsepInfo_setDefaultFields(%p)\0A bad input\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str3 = private unnamed_addr constant [53 x i8] c"\0A fatal error in DDsepInfo_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"\0A fatal error in DDsepInfo_free(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DDsepInfo_writeCpuTimes(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [295 x i8] c"\0A\0A CPU breakdown for graph partition\0A               raw CPU   per cent\0A misc       : %9.2f %6.1f%%\0A Split      : %9.2f %6.1f%%\0A find DD    : %9.2f %6.1f%%\0A DomSeg Map : %9.2f %6.1f%%\0A DomSeg BPG : %9.2f %6.1f%%\0A BKL        : %9.2f %6.1f%%\0A Smooth     : %9.2f %6.1f%%\0A Total      : %9.2f %6.1f%%\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._DDsepInfo* @DDsepInfo_new() #0 {
  %1 = tail call i8* @malloc(i64 120) #5, !dbg !122
  %2 = bitcast i8* %1 to %struct._DDsepInfo*, !dbg !122
  tail call void @llvm.dbg.value(metadata %struct._DDsepInfo* %2, i64 0, metadata !99, metadata !126), !dbg !127
  %3 = icmp eq i8* %1, null, !dbg !122
  br i1 %3, label %4, label %7, !dbg !128

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !129, !tbaa !131
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 120, i32 21, i8* getelementptr inbounds ([94 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !129
  tail call void @exit(i32 -1) #6, !dbg !129
  unreachable, !dbg !129

; <label>:7                                       ; preds = %0
  tail call void @DDsepInfo_setDefaultFields(%struct._DDsepInfo* %2) #7, !dbg !135
  ret %struct._DDsepInfo* %2, !dbg !136
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @DDsepInfo_setDefaultFields(%struct._DDsepInfo* %info) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DDsepInfo* %info, i64 0, metadata !104, metadata !126), !dbg !137
  %1 = icmp eq %struct._DDsepInfo* %info, null, !dbg !138
  br i1 %1, label %2, label %5, !dbg !140

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !141, !tbaa !131
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._DDsepInfo* null) #5, !dbg !143
  tail call void @exit(i32 -1) #6, !dbg !144
  unreachable, !dbg !144

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 0, !dbg !145
  store i32 1, i32* %6, align 4, !dbg !146, !tbaa !147
  %7 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 1, !dbg !151
  store i32 40, i32* %7, align 4, !dbg !152, !tbaa !153
  %8 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 2, !dbg !154
  store i32 80, i32* %8, align 4, !dbg !155, !tbaa !156
  %9 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 3, !dbg !157
  store double 4.000000e+00, double* %9, align 8, !dbg !158, !tbaa !159
  %10 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 4, !dbg !160
  store double 1.000000e+00, double* %10, align 8, !dbg !161, !tbaa !162
  %11 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 5, !dbg !163
  store i32 500, i32* %11, align 4, !dbg !164, !tbaa !165
  %12 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 6, !dbg !166
  store i32 0, i32* %12, align 4, !dbg !167, !tbaa !168
  %13 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 7, !dbg !169
  store i32 1, i32* %13, align 4, !dbg !170, !tbaa !171
  %14 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 8, !dbg !172
  store i32 3, i32* %14, align 4, !dbg !173, !tbaa !174
  %15 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 9, !dbg !175
  %16 = bitcast double* %15 to i8*, !dbg !176
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 60, i32 8, i1 false), !dbg !177
  %17 = load i64* bitcast (%struct.__sFILE** @__stdoutp to i64*), align 8, !dbg !176, !tbaa !131
  %18 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 17, !dbg !178
  %19 = bitcast %struct.__sFILE** %18 to i64*, !dbg !179
  store i64 %17, i64* %19, align 8, !dbg !179, !tbaa !180
  ret void, !dbg !181
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DDsepInfo_clearData(%struct._DDsepInfo* %info) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DDsepInfo* %info, i64 0, metadata !107, metadata !126), !dbg !182
  %1 = icmp eq %struct._DDsepInfo* %info, null, !dbg !183
  br i1 %1, label %2, label %5, !dbg !185

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !186, !tbaa !131
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), %struct._DDsepInfo* null) #5, !dbg !188
  tail call void @exit(i32 -1) #6, !dbg !189
  unreachable, !dbg !189

; <label>:5                                       ; preds = %0
  tail call void @DDsepInfo_setDefaultFields(%struct._DDsepInfo* %info) #7, !dbg !190
  ret void, !dbg !191
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DDsepInfo_free(%struct._DDsepInfo* %info) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DDsepInfo* %info, i64 0, metadata !110, metadata !126), !dbg !192
  %1 = icmp eq %struct._DDsepInfo* %info, null, !dbg !193
  br i1 %1, label %2, label %5, !dbg !195

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !196, !tbaa !131
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), %struct._DDsepInfo* null) #5, !dbg !198
  tail call void @exit(i32 -1) #6, !dbg !199
  unreachable, !dbg !199

; <label>:5                                       ; preds = %0
  tail call void @DDsepInfo_clearData(%struct._DDsepInfo* %info) #7, !dbg !200
  %6 = bitcast %struct._DDsepInfo* %info to i8*, !dbg !201
  tail call void @free(i8* %6) #7, !dbg !201
  tail call void @llvm.dbg.value(metadata %struct._DDsepInfo* null, i64 0, metadata !110, metadata !126), !dbg !192
  ret void, !dbg !204
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @DDsepInfo_writeCpuTimes(%struct._DDsepInfo* %info, %struct.__sFILE* %msgFile) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DDsepInfo* %info, i64 0, metadata !115, metadata !126), !dbg !205
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %msgFile, i64 0, metadata !116, metadata !126), !dbg !206
  %1 = icmp eq %struct._DDsepInfo* %info, null, !dbg !207
  %2 = icmp eq %struct.__sFILE* %msgFile, null, !dbg !209
  %or.cond = or i1 %1, %2, !dbg !210
  br i1 %or.cond, label %3, label %6, !dbg !210

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !211, !tbaa !131
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([60 x i8]* @.str5, i64 0, i64 0), %struct._DDsepInfo* %info, %struct.__sFILE* %msgFile) #5, !dbg !213
  tail call void @exit(i32 -1) #6, !dbg !214
  unreachable, !dbg !214

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 15, !dbg !215
  %8 = load double* %7, align 8, !dbg !215, !tbaa !216
  %9 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 9, !dbg !217
  %10 = load double* %9, align 8, !dbg !217, !tbaa !218
  %11 = fsub double %8, %10, !dbg !219
  %12 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 14, !dbg !220
  %13 = load double* %12, align 8, !dbg !220, !tbaa !221
  %14 = fsub double %11, %13, !dbg !222
  %15 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 10, !dbg !223
  %16 = load double* %15, align 8, !dbg !223, !tbaa !224
  %17 = fsub double %14, %16, !dbg !225
  %18 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 11, !dbg !226
  %19 = load double* %18, align 8, !dbg !226, !tbaa !227
  %20 = fsub double %17, %19, !dbg !228
  %21 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 12, !dbg !229
  %22 = load double* %21, align 8, !dbg !229, !tbaa !230
  %23 = fsub double %20, %22, !dbg !231
  %24 = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 13, !dbg !232
  %25 = load double* %24, align 8, !dbg !232, !tbaa !233
  %26 = fsub double %23, %25, !dbg !234
  tail call void @llvm.dbg.value(metadata double %26, i64 0, metadata !117, metadata !126), !dbg !235
  %27 = fcmp ogt double %8, 0.000000e+00, !dbg !236
  br i1 %27, label %28, label %44, !dbg !238

; <label>:28                                      ; preds = %6
  %29 = fmul double %26, 1.000000e+02, !dbg !239
  %30 = fdiv double %29, %8, !dbg !241
  %31 = fmul double %13, 1.000000e+02, !dbg !242
  %32 = fdiv double %31, %8, !dbg !243
  %33 = fmul double %10, 1.000000e+02, !dbg !244
  %34 = fdiv double %33, %8, !dbg !245
  %35 = fmul double %16, 1.000000e+02, !dbg !246
  %36 = fdiv double %35, %8, !dbg !247
  %37 = fmul double %19, 1.000000e+02, !dbg !248
  %38 = fdiv double %37, %8, !dbg !249
  %39 = fmul double %22, 1.000000e+02, !dbg !250
  %40 = fdiv double %39, %8, !dbg !251
  %41 = fmul double %25, 1.000000e+02, !dbg !252
  %42 = fdiv double %41, %8, !dbg !253
  %43 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %msgFile, i8* getelementptr inbounds ([295 x i8]* @.str6, i64 0, i64 0), double %26, double %30, double %13, double %32, double %10, double %34, double %16, double %36, double %19, double %38, double %22, double %40, double %25, double %42, double %8, double 1.000000e+02) #5, !dbg !254
  br label %44, !dbg !255

; <label>:44                                      ; preds = %28, %6
  ret void, !dbg !256
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

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
!llvm.module.flags = !{!118, !119, !120}
!llvm.ident = !{!121}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !92, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_DDsepInfo.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !91, !48, !57}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DDsepInfo", file: !6, line: 44, size: 960, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../DDsepInfo.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !5, file: !6, line: 45, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "minweight", scope: !5, file: !6, line: 46, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "maxweight", scope: !5, file: !6, line: 47, baseType: !9, size: 32, align: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5, file: !6, line: 48, baseType: !13, size: 64, align: 64, offset: 128)
!13 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !5, file: !6, line: 49, baseType: !13, size: 64, align: 64, offset: 192)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "maxcompweight", scope: !5, file: !6, line: 50, baseType: !9, size: 32, align: 32, offset: 256)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ntreeobj", scope: !5, file: !6, line: 51, baseType: !9, size: 32, align: 32, offset: 288)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "DDoption", scope: !5, file: !6, line: 52, baseType: !9, size: 32, align: 32, offset: 320)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nlayer", scope: !5, file: !6, line: 53, baseType: !9, size: 32, align: 32, offset: 352)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "cpuDD", scope: !5, file: !6, line: 54, baseType: !13, size: 64, align: 64, offset: 384)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cpuMap", scope: !5, file: !6, line: 55, baseType: !13, size: 64, align: 64, offset: 448)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cpuBPG", scope: !5, file: !6, line: 56, baseType: !13, size: 64, align: 64, offset: 512)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "cpuBKL", scope: !5, file: !6, line: 57, baseType: !13, size: 64, align: 64, offset: 576)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cpuSmooth", scope: !5, file: !6, line: 58, baseType: !13, size: 64, align: 64, offset: 640)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cpuSplit", scope: !5, file: !6, line: 59, baseType: !13, size: 64, align: 64, offset: 704)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cpuTotal", scope: !5, file: !6, line: 60, baseType: !13, size: 64, align: 64, offset: 768)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "msglvl", scope: !5, file: !6, line: 61, baseType: !9, size: 32, align: 32, offset: 832)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "msgFile", scope: !5, file: !6, line: 62, baseType: !28, size: 64, align: 64, offset: 896)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !30, line: 153, baseType: !31)
!30 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !30, line: 122, size: 1216, align: 64, elements: !32)
!32 = !{!33, !36, !37, !38, !40, !41, !46, !47, !49, !53, !59, !69, !75, !76, !79, !80, !84, !88, !89, !90}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !31, file: !30, line: 123, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !31, file: !30, line: 124, baseType: !9, size: 32, align: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !31, file: !30, line: 125, baseType: !9, size: 32, align: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !31, file: !30, line: 126, baseType: !39, size: 16, align: 16, offset: 128)
!39 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !31, file: !30, line: 127, baseType: !39, size: 16, align: 16, offset: 144)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !31, file: !30, line: 128, baseType: !42, size: 128, align: 64, offset: 192)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !30, line: 88, size: 128, align: 64, elements: !43)
!43 = !{!44, !45}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !42, file: !30, line: 89, baseType: !34, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !42, file: !30, line: 90, baseType: !9, size: 32, align: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !31, file: !30, line: 129, baseType: !9, size: 32, align: 32, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !31, file: !30, line: 132, baseType: !48, size: 64, align: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !31, file: !30, line: 133, baseType: !50, size: 64, align: 64, offset: 448)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!9, !48}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !31, file: !30, line: 134, baseType: !54, size: 64, align: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!9, !48, !57, !9}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !31, file: !30, line: 135, baseType: !60, size: 64, align: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !48, !63, !9}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !30, line: 77, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !65, line: 71, baseType: !66)
!65 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!68 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !31, file: !30, line: 136, baseType: !70, size: 64, align: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!9, !48, !73, !9}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !31, file: !30, line: 139, baseType: !42, size: 128, align: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !31, file: !30, line: 140, baseType: !77, size: 64, align: 64, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !30, line: 94, flags: DIFlagFwdDecl)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !31, file: !30, line: 141, baseType: !9, size: 32, align: 32, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !31, file: !30, line: 144, baseType: !81, size: 24, align: 8, offset: 928)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 24, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 3)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !31, file: !30, line: 145, baseType: !85, size: 8, align: 8, offset: 952)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, align: 8, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 1)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !31, file: !30, line: 148, baseType: !42, size: 128, align: 64, offset: 960)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !31, file: !30, line: 151, baseType: !9, size: 32, align: 32, offset: 1088)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !31, file: !30, line: 152, baseType: !63, size: 64, align: 64, offset: 1152)
!91 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!92 = !{!93, !100, !105, !108, !111}
!93 = !DISubprogram(name: "DDsepInfo_new", scope: !1, file: !1, line: 16, type: !94, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._DDsepInfo* ()* @DDsepInfo_new, variables: !98)
!94 = !DISubroutineType(types: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "DDsepInfo", file: !6, line: 63, baseType: !5)
!98 = !{!99}
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !93, file: !1, line: 19, type: !96)
!100 = !DISubprogram(name: "DDsepInfo_setDefaultFields", scope: !1, file: !1, line: 36, type: !101, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DDsepInfo*)* @DDsepInfo_setDefaultFields, variables: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !96}
!103 = !{!104}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !100, file: !1, line: 37, type: !96)
!105 = !DISubprogram(name: "DDsepInfo_clearData", scope: !1, file: !1, line: 74, type: !101, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DDsepInfo*)* @DDsepInfo_clearData, variables: !106)
!106 = !{!107}
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !105, file: !1, line: 75, type: !96)
!108 = !DISubprogram(name: "DDsepInfo_free", scope: !1, file: !1, line: 95, type: !101, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DDsepInfo*)* @DDsepInfo_free, variables: !109)
!109 = !{!110}
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !108, file: !1, line: 96, type: !96)
!111 = !DISubprogram(name: "DDsepInfo_writeCpuTimes", scope: !1, file: !1, line: 121, type: !112, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DDsepInfo*, %struct.__sFILE*)* @DDsepInfo_writeCpuTimes, variables: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !96, !28}
!114 = !{!115, !116, !117}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 1, scope: !111, file: !1, line: 122, type: !96)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msgFile", arg: 2, scope: !111, file: !1, line: 123, type: !28)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cpuMisc", scope: !111, file: !1, line: 125, type: !13)
!118 = !{i32 2, !"Dwarf Version", i32 2}
!119 = !{i32 2, !"Debug Info Version", i32 700000003}
!120 = !{i32 1, !"PIC Level", i32 2}
!121 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!122 = !DILocation(line: 21, column: 1, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 21, column: 1)
!124 = distinct !DILexicalBlock(scope: !125, file: !1, line: 21, column: 1)
!125 = distinct !DILexicalBlock(scope: !93, file: !1, line: 21, column: 1)
!126 = !DIExpression()
!127 = !DILocation(line: 19, column: 14, scope: !93)
!128 = !DILocation(line: 21, column: 1, scope: !124)
!129 = !DILocation(line: 21, column: 1, scope: !130)
!130 = distinct !DILexicalBlock(scope: !123, file: !1, line: 21, column: 1)
!131 = !{!132, !132, i64 0}
!132 = !{!"any pointer", !133, i64 0}
!133 = !{!"omnipotent char", !134, i64 0}
!134 = !{!"Simple C/C++ TBAA"}
!135 = !DILocation(line: 23, column: 1, scope: !93)
!136 = !DILocation(line: 25, column: 1, scope: !93)
!137 = !DILocation(line: 37, column: 17, scope: !100)
!138 = !DILocation(line: 39, column: 11, scope: !139)
!139 = distinct !DILexicalBlock(scope: !100, file: !1, line: 39, column: 6)
!140 = !DILocation(line: 39, column: 6, scope: !100)
!141 = !DILocation(line: 40, column: 12, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !1, line: 39, column: 21)
!143 = !DILocation(line: 40, column: 4, scope: !142)
!144 = !DILocation(line: 42, column: 4, scope: !142)
!145 = !DILocation(line: 44, column: 7, scope: !100)
!146 = !DILocation(line: 44, column: 21, scope: !100)
!147 = !{!148, !149, i64 0}
!148 = !{!"_DDsepInfo", !149, i64 0, !149, i64 4, !149, i64 8, !150, i64 16, !150, i64 24, !149, i64 32, !149, i64 36, !149, i64 40, !149, i64 44, !150, i64 48, !150, i64 56, !150, i64 64, !150, i64 72, !150, i64 80, !150, i64 88, !150, i64 96, !149, i64 104, !132, i64 112}
!149 = !{!"int", !133, i64 0}
!150 = !{!"double", !133, i64 0}
!151 = !DILocation(line: 45, column: 7, scope: !100)
!152 = !DILocation(line: 45, column: 21, scope: !100)
!153 = !{!148, !149, i64 4}
!154 = !DILocation(line: 46, column: 7, scope: !100)
!155 = !DILocation(line: 46, column: 21, scope: !100)
!156 = !{!148, !149, i64 8}
!157 = !DILocation(line: 47, column: 7, scope: !100)
!158 = !DILocation(line: 47, column: 21, scope: !100)
!159 = !{!148, !150, i64 16}
!160 = !DILocation(line: 48, column: 7, scope: !100)
!161 = !DILocation(line: 48, column: 21, scope: !100)
!162 = !{!148, !150, i64 24}
!163 = !DILocation(line: 49, column: 7, scope: !100)
!164 = !DILocation(line: 49, column: 21, scope: !100)
!165 = !{!148, !149, i64 32}
!166 = !DILocation(line: 50, column: 7, scope: !100)
!167 = !DILocation(line: 50, column: 21, scope: !100)
!168 = !{!148, !149, i64 36}
!169 = !DILocation(line: 51, column: 7, scope: !100)
!170 = !DILocation(line: 51, column: 21, scope: !100)
!171 = !{!148, !149, i64 40}
!172 = !DILocation(line: 52, column: 7, scope: !100)
!173 = !DILocation(line: 52, column: 21, scope: !100)
!174 = !{!148, !149, i64 44}
!175 = !DILocation(line: 53, column: 7, scope: !100)
!176 = !DILocation(line: 61, column: 23, scope: !100)
!177 = !DILocation(line: 54, column: 21, scope: !100)
!178 = !DILocation(line: 61, column: 7, scope: !100)
!179 = !DILocation(line: 61, column: 21, scope: !100)
!180 = !{!148, !132, i64 112}
!181 = !DILocation(line: 63, column: 1, scope: !100)
!182 = !DILocation(line: 75, column: 17, scope: !105)
!183 = !DILocation(line: 77, column: 11, scope: !184)
!184 = distinct !DILexicalBlock(scope: !105, file: !1, line: 77, column: 6)
!185 = !DILocation(line: 77, column: 6, scope: !105)
!186 = !DILocation(line: 78, column: 12, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 77, column: 21)
!188 = !DILocation(line: 78, column: 4, scope: !187)
!189 = !DILocation(line: 80, column: 4, scope: !187)
!190 = !DILocation(line: 82, column: 1, scope: !105)
!191 = !DILocation(line: 84, column: 1, scope: !105)
!192 = !DILocation(line: 96, column: 17, scope: !108)
!193 = !DILocation(line: 98, column: 11, scope: !194)
!194 = distinct !DILexicalBlock(scope: !108, file: !1, line: 98, column: 6)
!195 = !DILocation(line: 98, column: 6, scope: !108)
!196 = !DILocation(line: 99, column: 12, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !1, line: 98, column: 21)
!198 = !DILocation(line: 99, column: 4, scope: !197)
!199 = !DILocation(line: 101, column: 4, scope: !197)
!200 = !DILocation(line: 103, column: 1, scope: !108)
!201 = !DILocation(line: 108, column: 1, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 108, column: 1)
!203 = distinct !DILexicalBlock(scope: !108, file: !1, line: 108, column: 1)
!204 = !DILocation(line: 110, column: 1, scope: !108)
!205 = !DILocation(line: 122, column: 17, scope: !111)
!206 = !DILocation(line: 123, column: 17, scope: !111)
!207 = !DILocation(line: 131, column: 11, scope: !208)
!208 = distinct !DILexicalBlock(scope: !111, file: !1, line: 131, column: 6)
!209 = !DILocation(line: 131, column: 30, scope: !208)
!210 = !DILocation(line: 131, column: 19, scope: !208)
!211 = !DILocation(line: 132, column: 12, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !1, line: 131, column: 40)
!213 = !DILocation(line: 132, column: 4, scope: !212)
!214 = !DILocation(line: 134, column: 4, scope: !212)
!215 = !DILocation(line: 136, column: 17, scope: !111)
!216 = !{!148, !150, i64 96}
!217 = !DILocation(line: 136, column: 34, scope: !111)
!218 = !{!148, !150, i64 48}
!219 = !DILocation(line: 136, column: 26, scope: !111)
!220 = !DILocation(line: 136, column: 49, scope: !111)
!221 = !{!148, !150, i64 88}
!222 = !DILocation(line: 136, column: 41, scope: !111)
!223 = !DILocation(line: 136, column: 66, scope: !111)
!224 = !{!148, !150, i64 56}
!225 = !DILocation(line: 136, column: 58, scope: !111)
!226 = !DILocation(line: 137, column: 17, scope: !111)
!227 = !{!148, !150, i64 64}
!228 = !DILocation(line: 137, column: 9, scope: !111)
!229 = !DILocation(line: 137, column: 34, scope: !111)
!230 = !{!148, !150, i64 72}
!231 = !DILocation(line: 137, column: 26, scope: !111)
!232 = !DILocation(line: 137, column: 49, scope: !111)
!233 = !{!148, !150, i64 80}
!234 = !DILocation(line: 137, column: 41, scope: !111)
!235 = !DILocation(line: 125, column: 10, scope: !111)
!236 = !DILocation(line: 138, column: 21, scope: !237)
!237 = distinct !DILexicalBlock(scope: !111, file: !1, line: 138, column: 6)
!238 = !DILocation(line: 138, column: 6, scope: !111)
!239 = !DILocation(line: 150, column: 30, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !1, line: 138, column: 27)
!241 = !DILocation(line: 150, column: 38, scope: !240)
!242 = !DILocation(line: 151, column: 30, scope: !240)
!243 = !DILocation(line: 151, column: 45, scope: !240)
!244 = !DILocation(line: 152, column: 30, scope: !240)
!245 = !DILocation(line: 152, column: 42, scope: !240)
!246 = !DILocation(line: 153, column: 30, scope: !240)
!247 = !DILocation(line: 153, column: 43, scope: !240)
!248 = !DILocation(line: 154, column: 30, scope: !240)
!249 = !DILocation(line: 154, column: 43, scope: !240)
!250 = !DILocation(line: 155, column: 30, scope: !240)
!251 = !DILocation(line: 155, column: 43, scope: !240)
!252 = !DILocation(line: 156, column: 30, scope: !240)
!253 = !DILocation(line: 156, column: 46, scope: !240)
!254 = !DILocation(line: 139, column: 1, scope: !240)
!255 = !DILocation(line: 158, column: 1, scope: !240)
!256 = !DILocation(line: 159, column: 1, scope: !111)
