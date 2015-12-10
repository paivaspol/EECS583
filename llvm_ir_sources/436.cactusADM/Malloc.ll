; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [19 x i8] c"Allocation error! \00", align 1
@totmem = internal unnamed_addr global i64 0, align 8
@pastmem = internal unnamed_addr global i64 0, align 8
@memfileDB = internal global %struct.cHandledData* null, align 8
@.str1 = private unnamed_addr constant [10 x i8] c"ticket_%d\00", align 1
@n_tickets = internal unnamed_addr global i32 0, align 4
@ticketDB = internal global %struct.cHandledData* null, align 8
@.str2 = private unnamed_addr constant [75 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"CCTK_MemTicketCash: Cannot find ticket %d \0A\00", align 1
@.str5 = private unnamed_addr constant [49 x i8] c"CCTK_Memstat: total: %lu  past: %lu  diff %+ld \0A\00", align 1
@.str6 = private unnamed_addr constant [82 x i8] c"$Header: /cactus/Cactus/src/util/Malloc.c,v 1.15 2001/10/30 15:29:50 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_Malloc_c() #0 {
  ret i8* getelementptr inbounds ([82 x i8]* @.str6, i64 0, i64 0), !dbg !119
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @CCTKi_Malloc(i64 %size, i32 %line, i8* %file) #1 {
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !46, metadata !120), !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !47, metadata !120), !dbg !122
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !48, metadata !120), !dbg !123
  %1 = add i64 %size, 40, !dbg !124
  %2 = tail call i8* @malloc(i64 %1) #7, !dbg !125
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !50, metadata !120), !dbg !126
  %3 = icmp eq i8* %2, null, !dbg !127
  br i1 %3, label %4, label %7, !dbg !129

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !130, !tbaa !132
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i64 18, i64 1, %struct.__sFILE* %5), !dbg !136
  br label %7, !dbg !137

; <label>:7                                       ; preds = %0, %4
  %8 = bitcast i8* %2 to i64*, !dbg !138
  store i64 424242, i64* %8, align 8, !dbg !139, !tbaa !140
  %9 = getelementptr inbounds i8* %2, i64 8, !dbg !144
  %10 = bitcast i8* %9 to i64*, !dbg !144
  store i64 %size, i64* %10, align 8, !dbg !145, !tbaa !146
  %11 = getelementptr inbounds i8* %2, i64 16, !dbg !147
  %12 = bitcast i8* %11 to i64*, !dbg !147
  store i64 %1, i64* %12, align 8, !dbg !148, !tbaa !149
  %13 = getelementptr inbounds i8* %2, i64 24, !dbg !150
  %14 = bitcast i8* %13 to i32*, !dbg !150
  store i32 %line, i32* %14, align 4, !dbg !151, !tbaa !152
  %15 = getelementptr inbounds i8* %2, i64 32, !dbg !153
  %16 = bitcast i8* %15 to i8**, !dbg !153
  store i8* %file, i8** %16, align 8, !dbg !154, !tbaa !155
  %17 = load i64* @totmem, align 8, !dbg !156, !tbaa !157
  store i64 %17, i64* @pastmem, align 8, !dbg !158, !tbaa !157
  %18 = add i64 %17, %size, !dbg !159
  store i64 %18, i64* @totmem, align 8, !dbg !159, !tbaa !157
  %19 = getelementptr inbounds i8* %2, i64 40, !dbg !160
  ret i8* %19, !dbg !161
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_UpdateMemByFile(i32 %size, i32 %line, i8* %file) #1 {
  %memfile = alloca i8*, align 8, !dbg !162
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !55, metadata !120), !dbg !164
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !56, metadata !120), !dbg !165
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !57, metadata !120), !dbg !166
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !60, metadata !120), !dbg !167
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !56, metadata !120), !dbg !165
  %1 = load %struct.cHandledData** @memfileDB, align 8, !dbg !168, !tbaa !132
  %2 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %file, i8** %memfile) #7, !dbg !169
  call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !59, metadata !120), !dbg !170
  %3 = icmp sgt i32 %2, -1, !dbg !171
  br i1 %3, label %4, label %16, !dbg !172

; <label>:4                                       ; preds = %0
  %5 = load %struct.cHandledData** @memfileDB, align 8, !dbg !173, !tbaa !132
  %6 = call i8* @Util_GetHandledData(%struct.cHandledData* %5, i32 %2) #7, !dbg !175
  store i8* %6, i8** %memfile, align 8, !dbg !176, !tbaa !132
  %7 = icmp eq i8* %6, null, !dbg !177
  br i1 %7, label %30, label %8, !dbg !179

; <label>:8                                       ; preds = %4
  %9 = sext i32 %size to i64, !dbg !180
  %10 = bitcast i8* %6 to <2 x i64>*, !dbg !182
  %11 = load <2 x i64>* %10, align 8, !dbg !182, !tbaa !157
  %12 = insertelement <2 x i64> undef, i64 %9, i32 0, !dbg !182
  %13 = insertelement <2 x i64> %12, i64 %9, i32 1, !dbg !182
  %14 = add <2 x i64> %11, %13, !dbg !182
  %15 = bitcast i8* %6 to <2 x i64>*, !dbg !182
  store <2 x i64> %14, <2 x i64>* %15, align 8, !dbg !182, !tbaa !157
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !60, metadata !120), !dbg !167
  br label %30, !dbg !183

; <label>:16                                      ; preds = %0
  %17 = call i8* @malloc(i64 24) #7, !dbg !184
  store i8* %17, i8** %memfile, align 8, !dbg !186, !tbaa !132
  %18 = icmp eq i8* %17, null, !dbg !187
  br i1 %18, label %30, label %19, !dbg !189

; <label>:19                                      ; preds = %16
  %20 = sext i32 %size to i64, !dbg !190
  %21 = add nsw i64 %20, 24, !dbg !192
  %22 = getelementptr inbounds i8* %17, i64 8, !dbg !193
  %23 = bitcast i8* %22 to i64*, !dbg !193
  %24 = load i64* %23, align 8, !dbg !194, !tbaa !195
  %25 = add i64 %21, %24, !dbg !194
  store i64 %25, i64* %23, align 8, !dbg !194, !tbaa !195
  %26 = getelementptr inbounds i8* %17, i64 16, !dbg !197
  %27 = bitcast i8* %26 to i8**, !dbg !197
  store i8* %file, i8** %27, align 8, !dbg !198, !tbaa !199
  %28 = load i8** %memfile, align 8, !dbg !200, !tbaa !132
  %29 = call i32 @Util_NewHandle(%struct.cHandledData** @memfileDB, i8* %file, i8* %28) #7, !dbg !201
  call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !60, metadata !120), !dbg !167
  br label %30, !dbg !202

; <label>:30                                      ; preds = %16, %4, %19, %8
  %retval.0 = phi i32 [ 0, %8 ], [ %29, %19 ], [ -3, %4 ], [ -1, %16 ]
  ret i32 %retval.0, !dbg !203
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #4

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #4

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_MemTicketRequest() #1 {
  %tmem = alloca i8*, align 8, !dbg !204
  %tname = alloca [20 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [20 x i8]* %tname, metadata !67, metadata !120), !dbg !206
  %1 = getelementptr inbounds [20 x i8]* %tname, i64 0, i64 0, !dbg !207
  %2 = load i32* @n_tickets, align 4, !dbg !207, !tbaa !208
  %3 = add nsw i32 %2, 1, !dbg !207
  store i32 %3, i32* @n_tickets, align 4, !dbg !207, !tbaa !208
  %4 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 20, i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0), i32 %2) #7, !dbg !207
  %5 = load %struct.cHandledData** @ticketDB, align 8, !dbg !209, !tbaa !132
  %6 = call i32 @Util_GetHandle(%struct.cHandledData* %5, i8* %1, i8** %tmem) #7, !dbg !210
  %7 = icmp sgt i32 %6, -1, !dbg !211
  br i1 %7, label %15, label %8, !dbg !212

; <label>:8                                       ; preds = %0
  %9 = call i8* @malloc(i64 8) #7, !dbg !213
  store i8* %9, i8** %tmem, align 8, !dbg !215, !tbaa !132
  %10 = icmp eq i8* %9, null, !dbg !216
  br i1 %10, label %15, label %11, !dbg !218

; <label>:11                                      ; preds = %8
  %12 = load i64* @totmem, align 8, !dbg !219, !tbaa !157
  %13 = bitcast i8* %9 to i64*, !dbg !222
  store i64 %12, i64* %13, align 8, !dbg !223, !tbaa !224
  %14 = call i32 @Util_NewHandle(%struct.cHandledData** @ticketDB, i8* %1, i8* %9) #7, !dbg !226
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !65, metadata !120), !dbg !227
  br label %15, !dbg !228

; <label>:15                                      ; preds = %8, %0, %11
  %this_ticket.0 = phi i32 [ %14, %11 ], [ -3, %0 ], [ -2, %8 ]
  ret i32 %this_ticket.0, !dbg !229
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #4

; Function Attrs: nounwind optsize readonly ssp uwtable
define i64 @CCTK_TotalMemory() #5 {
  %1 = load i64* @totmem, align 8, !dbg !230, !tbaa !157
  ret i64 %1, !dbg !231
}

; Function Attrs: nounwind optsize ssp uwtable
define i64 @CCTK_MemTicketCash(i32 %this_ticket) #1 {
  tail call void @llvm.dbg.value(metadata i32 %this_ticket, i64 0, metadata !76, metadata !120), !dbg !232
  %1 = load %struct.cHandledData** @ticketDB, align 8, !dbg !233, !tbaa !132
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_ticket) #7, !dbg !234
  %3 = icmp eq i8* %2, null, !dbg !235
  br i1 %3, label %9, label %4, !dbg !237

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to i64*, !dbg !238
  %6 = load i64* %5, align 8, !dbg !238, !tbaa !224
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !78, metadata !120), !dbg !240
  %7 = load i64* @totmem, align 8, !dbg !241, !tbaa !157
  %8 = sub i64 %7, %6, !dbg !243
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !77, metadata !120), !dbg !244
  br label %11, !dbg !245

; <label>:9                                       ; preds = %0
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 474, i8* getelementptr inbounds ([75 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), i32 %this_ticket) #7, !dbg !246
  tail call void @llvm.dbg.value(metadata i64 666, i64 0, metadata !77, metadata !120), !dbg !244
  br label %11

; <label>:11                                      ; preds = %9, %4
  %tdiff.0 = phi i64 [ %8, %4 ], [ 666, %9 ]
  ret i64 %tdiff.0, !dbg !248
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_MemTicketDelete(i32 %this_ticket) #1 {
  tail call void @llvm.dbg.value(metadata i32 %this_ticket, i64 0, metadata !84, metadata !120), !dbg !249
  %1 = load %struct.cHandledData** @ticketDB, align 8, !dbg !250, !tbaa !132
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_ticket) #7, !dbg !251
  %3 = icmp eq i8* %2, null, !dbg !252
  br i1 %3, label %7, label %4, !dbg !254

; <label>:4                                       ; preds = %0
  %5 = load %struct.cHandledData** @ticketDB, align 8, !dbg !255, !tbaa !132
  %6 = tail call i32 @Util_DeleteHandle(%struct.cHandledData* %5, i32 %this_ticket) #7, !dbg !257
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !85, metadata !120), !dbg !258
  br label %7, !dbg !259

; <label>:7                                       ; preds = %0, %4
  %ret_val.0 = phi i32 [ 0, %4 ], [ -1, %0 ]
  ret i32 %ret_val.0, !dbg !260
}

; Function Attrs: optsize
declare i32 @Util_DeleteHandle(%struct.cHandledData*, i32) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_MemStat() #1 {
  %1 = load i64* @totmem, align 8, !dbg !261, !tbaa !157
  %2 = load i64* @pastmem, align 8, !dbg !262, !tbaa !157
  %3 = sub i64 %1, %2, !dbg !263
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str5, i64 0, i64 0), i64 %1, i64 %2, i64 %3) #7, !dbg !264
  ret void, !dbg !265
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!115, !116, !117}
!llvm.ident = !{!118}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !33, globals: !93, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6, !19, !20, !21, !28}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_mallocinfo", file: !1, line: 78, baseType: !8)
!8 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 71, size: 320, align: 64, elements: !9)
!9 = !{!10, !12, !13, !14, !16}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ok", scope: !8, file: !1, line: 73, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !8, file: !1, line: 74, baseType: !11, size: 64, align: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !8, file: !1, line: 75, baseType: !11, size: 64, align: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !8, file: !1, line: 76, baseType: !15, size: 32, align: 32, offset: 192)
!15 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !8, file: !1, line: 77, baseType: !17, size: 64, align: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_memhash", file: !1, line: 64, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 59, size: 192, align: 64, elements: !24)
!24 = !{!25, !26, !27}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !23, file: !1, line: 61, baseType: !11, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !23, file: !1, line: 62, baseType: !11, size: 64, align: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !23, file: !1, line: 63, baseType: !17, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_memticket", file: !1, line: 88, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 85, size: 64, align: 64, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !30, file: !1, line: 87, baseType: !11, size: 64, align: 64)
!33 = !{!34, !37, !51, !61, !71, !80, !87, !90}
!34 = !DISubprogram(name: "CCTKi_version_util_Malloc_c", scope: !1, file: !1, line: 52, type: !35, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_util_Malloc_c, variables: !2)
!35 = !DISubroutineType(types: !36)
!36 = !{!17}
!37 = !DISubprogram(name: "CCTKi_Malloc", scope: !1, file: !1, line: 131, type: !38, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64, i32, i8*)* @CCTKi_Malloc, variables: !45)
!38 = !DISubroutineType(types: !39)
!39 = !{!19, !40, !44, !17}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 30, baseType: !42)
!41 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !43, line: 92, baseType: !11)
!43 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !{!46, !47, !48, !49, !50}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !37, file: !1, line: 131, type: !40)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !37, file: !1, line: 131, type: !44)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 3, scope: !37, file: !1, line: 131, type: !17)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !37, file: !1, line: 133, type: !6)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !37, file: !1, line: 134, type: !4)
!51 = !DISubprogram(name: "CCTKi_UpdateMemByFile", scope: !1, file: !1, line: 346, type: !52, isLocal: false, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i8*)* @CCTKi_UpdateMemByFile, variables: !54)
!52 = !DISubroutineType(types: !53)
!53 = !{!44, !44, !44, !17}
!54 = !{!55, !56, !57, !58, !59, !60}
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !51, file: !1, line: 346, type: !44)
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !51, file: !1, line: 346, type: !44)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 3, scope: !51, file: !1, line: 346, type: !17)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "memfile", scope: !51, file: !1, line: 348, type: !21)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !51, file: !1, line: 349, type: !44)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !51, file: !1, line: 349, type: !44)
!61 = !DISubprogram(name: "CCTK_MemTicketRequest", scope: !1, file: !1, line: 413, type: !62, isLocal: false, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTK_MemTicketRequest, variables: !64)
!62 = !DISubroutineType(types: !63)
!63 = !{!44}
!64 = !{!65, !66, !67}
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_ticket", scope: !61, file: !1, line: 415, type: !44)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmem", scope: !61, file: !1, line: 416, type: !28)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tname", scope: !61, file: !1, line: 417, type: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, align: 8, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 20)
!71 = !DISubprogram(name: "CCTK_MemTicketCash", scope: !1, file: !1, line: 459, type: !72, isLocal: false, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i32)* @CCTK_MemTicketCash, variables: !75)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !44}
!74 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!75 = !{!76, !77, !78, !79}
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_ticket", arg: 1, scope: !71, file: !1, line: 459, type: !44)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tdiff", scope: !71, file: !1, line: 461, type: !74)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tsize", scope: !71, file: !1, line: 462, type: !11)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmem", scope: !71, file: !1, line: 463, type: !28)
!80 = !DISubprogram(name: "CCTK_MemTicketDelete", scope: !1, file: !1, line: 498, type: !81, isLocal: false, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CCTK_MemTicketDelete, variables: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{!44, !44}
!83 = !{!84, !85, !86}
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_ticket", arg: 1, scope: !80, file: !1, line: 498, type: !44)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret_val", scope: !80, file: !1, line: 500, type: !44)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmem", scope: !80, file: !1, line: 501, type: !28)
!87 = !DISubprogram(name: "CCTK_MemStat", scope: !1, file: !1, line: 534, type: !88, isLocal: false, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CCTK_MemStat, variables: !2)
!88 = !DISubroutineType(types: !89)
!89 = !{null}
!90 = !DISubprogram(name: "CCTK_TotalMemory", scope: !1, file: !1, line: 555, type: !91, isLocal: false, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @CCTK_TotalMemory, variables: !2)
!91 = !DISubroutineType(types: !92)
!92 = !{!11}
!93 = !{!94, !95, !96, !97, !113, !114}
!94 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 50, type: !17, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariable(name: "totmem", scope: !0, file: !1, line: 100, type: !11, isLocal: true, isDefinition: true, variable: i64* @totmem)
!96 = !DIGlobalVariable(name: "pastmem", scope: !0, file: !1, line: 101, type: !11, isLocal: true, isDefinition: true, variable: i64* @pastmem)
!97 = !DIGlobalVariable(name: "memfileDB", scope: !0, file: !1, line: 96, type: !98, isLocal: true, isDefinition: true, variable: %struct.cHandledData** @memfileDB)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "cHandledData", file: !100, line: 28, baseType: !101)
!100 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreHandledData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!101 = !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 23, size: 128, align: 64, elements: !102)
!102 = !{!103, !111, !112}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !101, file: !100, line: 25, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "cHandleStorage", file: !100, line: 21, baseType: !106)
!106 = !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 16, size: 192, align: 64, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !106, file: !100, line: 18, baseType: !15, size: 32, align: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !106, file: !100, line: 19, baseType: !4, size: 64, align: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !106, file: !100, line: 20, baseType: !19, size: 64, align: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "array_size", scope: !101, file: !100, line: 26, baseType: !15, size: 32, align: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "first_unused", scope: !101, file: !100, line: 27, baseType: !15, size: 32, align: 32, offset: 96)
!113 = !DIGlobalVariable(name: "n_tickets", scope: !0, file: !1, line: 98, type: !44, isLocal: true, isDefinition: true, variable: i32* @n_tickets)
!114 = !DIGlobalVariable(name: "ticketDB", scope: !0, file: !1, line: 95, type: !98, isLocal: true, isDefinition: true, variable: %struct.cHandledData** @ticketDB)
!115 = !{i32 2, !"Dwarf Version", i32 2}
!116 = !{i32 2, !"Debug Info Version", i32 700000003}
!117 = !{i32 1, !"PIC Level", i32 2}
!118 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!119 = !DILocation(line: 52, column: 1, scope: !34)
!120 = !DIExpression()
!121 = !DILocation(line: 131, column: 27, scope: !37)
!122 = !DILocation(line: 131, column: 37, scope: !37)
!123 = !DILocation(line: 131, column: 55, scope: !37)
!124 = !DILocation(line: 136, column: 28, scope: !37)
!125 = !DILocation(line: 136, column: 17, scope: !37)
!126 = !DILocation(line: 134, column: 9, scope: !37)
!127 = !DILocation(line: 137, column: 7, scope: !128)
!128 = distinct !DILexicalBlock(scope: !37, file: !1, line: 137, column: 6)
!129 = !DILocation(line: 137, column: 6, scope: !37)
!130 = !DILocation(line: 139, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !1, line: 138, column: 3)
!132 = !{!133, !133, i64 0}
!133 = !{!"any pointer", !134, i64 0}
!134 = !{!"omnipotent char", !135, i64 0}
!135 = !{!"Simple C/C++ TBAA"}
!136 = !DILocation(line: 139, column: 5, scope: !131)
!137 = !DILocation(line: 140, column: 3, scope: !131)
!138 = !DILocation(line: 142, column: 9, scope: !37)
!139 = !DILocation(line: 142, column: 14, scope: !37)
!140 = !{!141, !142, i64 0}
!141 = !{!"", !142, i64 0, !142, i64 8, !142, i64 16, !143, i64 24, !133, i64 32}
!142 = !{!"long", !134, i64 0}
!143 = !{!"int", !134, i64 0}
!144 = !DILocation(line: 143, column: 9, scope: !37)
!145 = !DILocation(line: 143, column: 14, scope: !37)
!146 = !{!141, !142, i64 8}
!147 = !DILocation(line: 144, column: 9, scope: !37)
!148 = !DILocation(line: 144, column: 14, scope: !37)
!149 = !{!141, !142, i64 16}
!150 = !DILocation(line: 145, column: 9, scope: !37)
!151 = !DILocation(line: 145, column: 14, scope: !37)
!152 = !{!141, !143, i64 24}
!153 = !DILocation(line: 146, column: 9, scope: !37)
!154 = !DILocation(line: 146, column: 14, scope: !37)
!155 = !{!141, !133, i64 32}
!156 = !DILocation(line: 148, column: 13, scope: !37)
!157 = !{!142, !142, i64 0}
!158 = !DILocation(line: 148, column: 11, scope: !37)
!159 = !DILocation(line: 149, column: 10, scope: !37)
!160 = !DILocation(line: 165, column: 22, scope: !37)
!161 = !DILocation(line: 165, column: 3, scope: !37)
!162 = !DILocation(line: 355, column: 47, scope: !163)
!163 = distinct !DILexicalBlock(scope: !51, file: !1, line: 355, column: 7)
!164 = !DILocation(line: 346, column: 31, scope: !51)
!165 = !DILocation(line: 346, column: 41, scope: !51)
!166 = !DILocation(line: 346, column: 59, scope: !51)
!167 = !DILocation(line: 349, column: 15, scope: !51)
!168 = !DILocation(line: 355, column: 30, scope: !163)
!169 = !DILocation(line: 355, column: 15, scope: !163)
!170 = !DILocation(line: 349, column: 7, scope: !51)
!171 = !DILocation(line: 355, column: 66, scope: !163)
!172 = !DILocation(line: 355, column: 7, scope: !51)
!173 = !DILocation(line: 357, column: 48, scope: !174)
!174 = distinct !DILexicalBlock(scope: !163, file: !1, line: 356, column: 3)
!175 = !DILocation(line: 357, column: 28, scope: !174)
!176 = !DILocation(line: 357, column: 13, scope: !174)
!177 = !DILocation(line: 360, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 360, column: 9)
!179 = !DILocation(line: 360, column: 9, scope: !174)
!180 = !DILocation(line: 362, column: 23, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !1, line: 361, column: 5)
!182 = !DILocation(line: 362, column: 21, scope: !181)
!183 = !DILocation(line: 365, column: 5, scope: !181)
!184 = !DILocation(line: 374, column: 28, scope: !185)
!185 = distinct !DILexicalBlock(scope: !163, file: !1, line: 372, column: 3)
!186 = !DILocation(line: 374, column: 13, scope: !185)
!187 = !DILocation(line: 375, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !1, line: 375, column: 9)
!189 = !DILocation(line: 375, column: 9, scope: !185)
!190 = !DILocation(line: 377, column: 24, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !1, line: 376, column: 5)
!192 = !DILocation(line: 378, column: 28, scope: !191)
!193 = !DILocation(line: 378, column: 16, scope: !191)
!194 = !DILocation(line: 378, column: 21, scope: !191)
!195 = !{!196, !142, i64 8}
!196 = !{!"", !142, i64 0, !142, i64 8, !133, i64 16}
!197 = !DILocation(line: 379, column: 16, scope: !191)
!198 = !DILocation(line: 379, column: 22, scope: !191)
!199 = !{!196, !133, i64 16}
!200 = !DILocation(line: 380, column: 49, scope: !191)
!201 = !DILocation(line: 380, column: 16, scope: !191)
!202 = !DILocation(line: 381, column: 5, scope: !191)
!203 = !DILocation(line: 387, column: 3, scope: !51)
!204 = !DILocation(line: 421, column: 39, scope: !205)
!205 = distinct !DILexicalBlock(scope: !61, file: !1, line: 421, column: 7)
!206 = !DILocation(line: 417, column: 8, scope: !61)
!207 = !DILocation(line: 419, column: 3, scope: !61)
!208 = !{!143, !143, i64 0}
!209 = !DILocation(line: 421, column: 22, scope: !205)
!210 = !DILocation(line: 421, column: 7, scope: !205)
!211 = !DILocation(line: 421, column: 53, scope: !205)
!212 = !DILocation(line: 421, column: 7, scope: !61)
!213 = !DILocation(line: 427, column: 26, scope: !214)
!214 = distinct !DILexicalBlock(scope: !205, file: !1, line: 426, column: 3)
!215 = !DILocation(line: 427, column: 10, scope: !214)
!216 = !DILocation(line: 429, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !1, line: 429, column: 9)
!218 = !DILocation(line: 429, column: 9, scope: !214)
!219 = !DILocation(line: 557, column: 10, scope: !90, inlinedAt: !220)
!220 = distinct !DILocation(line: 431, column: 21, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !1, line: 430, column: 5)
!222 = !DILocation(line: 431, column: 13, scope: !221)
!223 = !DILocation(line: 431, column: 19, scope: !221)
!224 = !{!225, !142, i64 0}
!225 = !{!"", !142, i64 0}
!226 = !DILocation(line: 432, column: 21, scope: !221)
!227 = !DILocation(line: 415, column: 7, scope: !61)
!228 = !DILocation(line: 433, column: 5, scope: !221)
!229 = !DILocation(line: 439, column: 3, scope: !61)
!230 = !DILocation(line: 557, column: 10, scope: !90)
!231 = !DILocation(line: 557, column: 3, scope: !90)
!232 = !DILocation(line: 459, column: 33, scope: !71)
!233 = !DILocation(line: 465, column: 45, scope: !71)
!234 = !DILocation(line: 465, column: 25, scope: !71)
!235 = !DILocation(line: 467, column: 7, scope: !236)
!236 = distinct !DILexicalBlock(scope: !71, file: !1, line: 467, column: 7)
!237 = !DILocation(line: 467, column: 7, scope: !71)
!238 = !DILocation(line: 469, column: 19, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !1, line: 468, column: 3)
!240 = !DILocation(line: 462, column: 21, scope: !71)
!241 = !DILocation(line: 557, column: 10, scope: !90, inlinedAt: !242)
!242 = distinct !DILocation(line: 470, column: 13, scope: !239)
!243 = !DILocation(line: 470, column: 32, scope: !239)
!244 = !DILocation(line: 461, column: 12, scope: !71)
!245 = !DILocation(line: 471, column: 3, scope: !239)
!246 = !DILocation(line: 474, column: 5, scope: !247)
!247 = distinct !DILexicalBlock(scope: !236, file: !1, line: 473, column: 3)
!248 = !DILocation(line: 478, column: 3, scope: !71)
!249 = !DILocation(line: 498, column: 30, scope: !80)
!250 = !DILocation(line: 503, column: 44, scope: !80)
!251 = !DILocation(line: 503, column: 24, scope: !80)
!252 = !DILocation(line: 505, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !80, file: !1, line: 505, column: 7)
!254 = !DILocation(line: 505, column: 7, scope: !80)
!255 = !DILocation(line: 507, column: 23, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !1, line: 506, column: 3)
!257 = !DILocation(line: 507, column: 5, scope: !256)
!258 = !DILocation(line: 500, column: 7, scope: !80)
!259 = !DILocation(line: 509, column: 3, scope: !256)
!260 = !DILocation(line: 514, column: 3, scope: !80)
!261 = !DILocation(line: 537, column: 11, scope: !87)
!262 = !DILocation(line: 537, column: 19, scope: !87)
!263 = !DILocation(line: 537, column: 34, scope: !87)
!264 = !DILocation(line: 536, column: 3, scope: !87)
!265 = !DILocation(line: 538, column: 1, scope: !87)
