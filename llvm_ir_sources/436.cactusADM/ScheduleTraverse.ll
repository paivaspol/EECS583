; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleTraverse.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_sched_group = type { i8*, i32*, i32, %struct.t_sched_item* }
%struct.t_sched_item = type { i8*, i32, i8*, i32, i32, i8**, i8*, %struct.T_SCHED_MODIFIER* }
%struct.T_SCHED_MODIFIER = type { %struct.T_SCHED_MODIFIER*, i32, i8* }
%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [96 x i8] c"$Header: /cactus/Cactus/src/schedule/ScheduleTraverse.c,v 1.8 2001/05/10 12:35:19 goodale Exp $\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [31 x i8] c"Unknown schedule item type %d\0A\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_schedule_ScheduleTraverse_c() #0 {
  ret i8* getelementptr inbounds ([96 x i8]* @.str, i64 0, i64 0), !dbg !138
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DoScheduleTraverse(i8* %group_name, i32 (i8*, i8*)* %item_entry, i32 (i8*, i8*)* %item_exit, i32 (i32, i8**, i8*, i8*, i32)* %while_check, i32 (i8*, i8*, i8*)* nocapture %function_process, i8* %data) #1 {
  %group = alloca %struct.t_sched_group*, align 8
  tail call void @llvm.dbg.value(metadata i8* %group_name, i64 0, metadata !73, metadata !139), !dbg !140
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %item_entry, i64 0, metadata !74, metadata !139), !dbg !141
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %item_exit, i64 0, metadata !75, metadata !139), !dbg !142
  tail call void @llvm.dbg.value(metadata i32 (i32, i8**, i8*, i8*, i32)* %while_check, i64 0, metadata !76, metadata !139), !dbg !143
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %function_process, i64 0, metadata !77, metadata !139), !dbg !144
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !78, metadata !139), !dbg !145
  %1 = tail call %struct.cHandledData* @CCTKi_DoScheduleGetGroups() #5, !dbg !146
  tail call void @llvm.dbg.value(metadata %struct.cHandledData* %1, i64 0, metadata !79, metadata !139), !dbg !147
  %2 = bitcast %struct.t_sched_group** %group to i8**, !dbg !148
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %group_name, i8** %2) #5, !dbg !149
  call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !97, metadata !139), !dbg !150
  %4 = icmp sgt i32 %3, -1, !dbg !151
  br i1 %4, label %5, label %7, !dbg !153

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.value(metadata %struct.t_sched_group** %group, i64 0, metadata !96, metadata !139), !dbg !154
  %6 = load %struct.t_sched_group** %group, align 8, !dbg !155, !tbaa !157
  call fastcc void @ScheduleTraverseGroup(%struct.cHandledData* %1, %struct.t_sched_group* %6, i8* null, i32 0, i8** null, i32 (i8*, i8*)* %item_entry, i32 (i8*, i8*)* %item_exit, i32 (i32, i8**, i8*, i8*, i32)* %while_check, i32 (i8*, i8*, i8*)* %function_process, i8* %data) #6, !dbg !161
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !98, metadata !139), !dbg !162
  br label %7, !dbg !163

; <label>:7                                       ; preds = %0, %5
  %retcode.0 = phi i32 [ 0, %5 ], [ %3, %0 ]
  ret i32 %retcode.0, !dbg !164
}

; Function Attrs: optsize
declare %struct.cHandledData* @CCTKi_DoScheduleGetGroups() #2

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @ScheduleTraverseGroup(%struct.cHandledData* %schedule_groups, %struct.t_sched_group* nocapture readonly %group, i8* %attributes, i32 %n_whiles, i8** %whiles, i32 (i8*, i8*)* %item_entry, i32 (i8*, i8*)* %item_exit, i32 (i32, i8**, i8*, i8*, i32)* %while_check, i32 (i8*, i8*, i8*)* nocapture %function_process, i8* %data) #1 {
  %1 = icmp sgt i32 %n_whiles, 0, !dbg !165
  %2 = icmp ne i32 (i32, i8**, i8*, i8*, i32)* %while_check, null, !dbg !167
  %or.cond = and i1 %1, %2, !dbg !168
  br i1 %or.cond, label %3, label %.thread, !dbg !168

; <label>:3                                       ; preds = %0
  %4 = tail call i32 %while_check(i32 %n_whiles, i8** %whiles, i8* %attributes, i8* %data, i32 1) #5, !dbg !169
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !114, metadata !139), !dbg !171
  %5 = icmp eq i32 %4, 0, !dbg !172
  br i1 %5, label %._crit_edge4.thread, label %.thread, !dbg !174

.thread:                                          ; preds = %0, %3
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !115, metadata !139), !dbg !175
  %6 = icmp eq i32 (i8*, i8*)* %item_entry, null, !dbg !176
  br i1 %6, label %.preheader.lr.ph, label %.preheader2, !dbg !179

.preheader2:                                      ; preds = %.thread
  %7 = tail call i32 %item_entry(i8* %attributes, i8* %data) #5, !dbg !180
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !114, metadata !139), !dbg !171
  %8 = icmp eq i32 %7, 0, !dbg !182
  br i1 %8, label %._crit_edge4, label %.preheader.lr.ph, !dbg !182

.preheader.lr.ph:                                 ; preds = %.thread, %.preheader2
  %9 = getelementptr inbounds %struct.t_sched_group* %group, i64 0, i32 2, !dbg !183
  %10 = getelementptr inbounds %struct.t_sched_group* %group, i64 0, i32 1, !dbg !187
  %11 = getelementptr inbounds %struct.t_sched_group* %group, i64 0, i32 3, !dbg !189
  %12 = icmp eq i32 (i8*, i8*)* %item_entry, null, !dbg !190
  %13 = icmp eq i32 (i8*, i8*)* %item_exit, null, !dbg !196
  br label %.preheader, !dbg !182

.preheader:                                       ; preds = %.preheader.lr.ph, %.backedge
  %14 = load i32* %9, align 4, !dbg !183, !tbaa !200
  %15 = icmp sgt i32 %14, 0, !dbg !203
  br i1 %15, label %.lr.ph, label %._crit_edge, !dbg !204

.lr.ph:                                           ; preds = %.preheader, %ScheduleTraverseFunction.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %ScheduleTraverseFunction.exit ], [ 0, %.preheader ]
  %16 = load i32** %10, align 8, !dbg !187, !tbaa !205
  %17 = getelementptr inbounds i32* %16, i64 %indvars.iv, !dbg !206
  %18 = load i32* %17, align 4, !dbg !206, !tbaa !207
  %19 = sext i32 %18 to i64, !dbg !208
  %20 = load %struct.t_sched_item** %11, align 8, !dbg !189, !tbaa !209
  %21 = getelementptr inbounds %struct.t_sched_item* %20, i64 %19, i32 1, !dbg !210
  %22 = load i32* %21, align 4, !dbg !210, !tbaa !211
  switch i32 %22, label %59 [
    i32 2, label %23
    i32 1, label %43
  ], !dbg !213

; <label>:23                                      ; preds = %.lr.ph
  %24 = getelementptr inbounds %struct.t_sched_item* %20, i64 %19, i32 2, !dbg !214
  %25 = load i8** %24, align 8, !dbg !214, !tbaa !215
  %26 = getelementptr inbounds %struct.t_sched_item* %20, i64 %19, i32 6, !dbg !216
  %27 = load i8** %26, align 8, !dbg !216, !tbaa !217
  %28 = getelementptr inbounds %struct.t_sched_item* %20, i64 %19, i32 4, !dbg !218
  %29 = load i32* %28, align 4, !dbg !218, !tbaa !219
  %30 = getelementptr inbounds %struct.t_sched_item* %20, i64 %19, i32 5, !dbg !220
  %31 = load i8*** %30, align 8, !dbg !220, !tbaa !221
  %32 = icmp sgt i32 %29, 0, !dbg !222
  %or.cond.i = and i1 %2, %32, !dbg !224
  br i1 %or.cond.i, label %33, label %.thread.i, !dbg !224

; <label>:33                                      ; preds = %23
  %34 = tail call i32 %while_check(i32 %29, i8** %31, i8* %27, i8* %data, i32 1) #5, !dbg !225
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !130, metadata !139) #7, !dbg !227
  %35 = icmp eq i32 %34, 0, !dbg !228
  br i1 %35, label %ScheduleTraverseFunction.exit, label %.thread.i, !dbg !229

.thread.i:                                        ; preds = %33, %23
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !131, metadata !139) #7, !dbg !230
  br i1 %12, label %.lr.ph.i, label %.preheader.i, !dbg !231

.preheader.i:                                     ; preds = %.thread.i
  %36 = tail call i32 %item_entry(i8* %27, i8* %data) #5, !dbg !232
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !130, metadata !139) #7, !dbg !227
  %37 = icmp eq i32 %36, 0, !dbg !234
  br i1 %37, label %._crit_edge.i, label %.lr.ph.i, !dbg !234

.lr.ph.i:                                         ; preds = %.preheader.i, %.thread.i, %.backedge.i
  %38 = tail call i32 %function_process(i8* %25, i8* %27, i8* %data) #5, !dbg !235
  br i1 %or.cond.i, label %.backedge.i, label %._crit_edge.i, !dbg !237

.backedge.i:                                      ; preds = %.lr.ph.i
  %39 = tail call i32 %while_check(i32 %29, i8** %31, i8* %27, i8* %data, i32 0) #5, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !130, metadata !139) #7, !dbg !227
  %40 = icmp eq i32 %39, 0, !dbg !234
  br i1 %40, label %._crit_edge.i, label %.lr.ph.i, !dbg !234

._crit_edge.i:                                    ; preds = %.backedge.i, %.lr.ph.i, %.preheader.i
  br i1 %13, label %ScheduleTraverseFunction.exit, label %41, !dbg !241

; <label>:41                                      ; preds = %._crit_edge.i
  %42 = tail call i32 %item_exit(i8* %27, i8* %data) #5, !dbg !242
  br label %ScheduleTraverseFunction.exit, !dbg !244

; <label>:43                                      ; preds = %.lr.ph
  %44 = getelementptr inbounds %struct.t_sched_item* %20, i64 %19, i32 3, !dbg !245
  %45 = load i32* %44, align 4, !dbg !245, !tbaa !246
  %46 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %schedule_groups, i32 %45) #5, !dbg !247
  %47 = bitcast i8* %46 to %struct.t_sched_group*, !dbg !248
  tail call void @llvm.dbg.value(metadata %struct.t_sched_group* %47, i64 0, metadata !116, metadata !139), !dbg !249
  %48 = load i32** %10, align 8, !dbg !250, !tbaa !205
  %49 = getelementptr inbounds i32* %48, i64 %indvars.iv, !dbg !251
  %50 = load i32* %49, align 4, !dbg !251, !tbaa !207
  %51 = sext i32 %50 to i64, !dbg !252
  %52 = load %struct.t_sched_item** %11, align 8, !dbg !253, !tbaa !209
  %53 = getelementptr inbounds %struct.t_sched_item* %52, i64 %51, i32 6, !dbg !254
  %54 = load i8** %53, align 8, !dbg !254, !tbaa !217
  %55 = getelementptr inbounds %struct.t_sched_item* %52, i64 %51, i32 4, !dbg !255
  %56 = load i32* %55, align 4, !dbg !255, !tbaa !219
  %57 = getelementptr inbounds %struct.t_sched_item* %52, i64 %51, i32 5, !dbg !256
  %58 = load i8*** %57, align 8, !dbg !256, !tbaa !221
  tail call fastcc void @ScheduleTraverseGroup(%struct.cHandledData* %schedule_groups, %struct.t_sched_group* %47, i8* %54, i32 %56, i8** %58, i32 (i8*, i8*)* %item_entry, i32 (i8*, i8*)* %item_exit, i32 (i32, i8**, i8*, i8*, i32)* %while_check, i32 (i8*, i8*, i8*)* %function_process, i8* %data) #6, !dbg !257
  br label %ScheduleTraverseFunction.exit, !dbg !258

; <label>:59                                      ; preds = %.lr.ph
  %60 = load %struct.__sFILE** @__stderrp, align 8, !dbg !259, !tbaa !157
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %60, i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i32 %22) #5, !dbg !260
  br label %ScheduleTraverseFunction.exit, !dbg !261

ScheduleTraverseFunction.exit:                    ; preds = %41, %._crit_edge.i, %33, %43, %59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !204
  %62 = load i32* %9, align 4, !dbg !183, !tbaa !200
  %63 = sext i32 %62 to i64, !dbg !203
  %64 = icmp slt i64 %indvars.iv.next, %63, !dbg !203
  br i1 %64, label %.lr.ph, label %._crit_edge, !dbg !204

._crit_edge:                                      ; preds = %ScheduleTraverseFunction.exit, %.preheader
  br i1 %or.cond, label %.backedge, label %._crit_edge4, !dbg !262

.backedge:                                        ; preds = %._crit_edge
  %65 = tail call i32 %while_check(i32 %n_whiles, i8** %whiles, i8* %attributes, i8* %data, i32 0) #5, !dbg !264
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !114, metadata !139), !dbg !171
  %66 = icmp eq i32 %65, 0, !dbg !182
  br i1 %66, label %._crit_edge4, label %.preheader, !dbg !182

._crit_edge4:                                     ; preds = %._crit_edge, %.backedge, %.preheader2
  %67 = icmp eq i32 (i8*, i8*)* %item_exit, null, !dbg !266
  br i1 %67, label %._crit_edge4.thread, label %68, !dbg !270

; <label>:68                                      ; preds = %._crit_edge4
  %69 = tail call i32 %item_exit(i8* %attributes, i8* %data) #5, !dbg !271
  br label %._crit_edge4.thread, !dbg !273

._crit_edge4.thread:                              ; preds = %._crit_edge4, %3, %68
  ret void
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!134, !135, !136}
!llvm.ident = !{!137}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !16, subprograms: !53, globals: !132, imports: !59)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleTraverse.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 45, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/Schedule.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "sched_item_none", value: 0)
!7 = !DIEnumerator(name: "sched_group", value: 1)
!8 = !DIEnumerator(name: "sched_function", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 17, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctki_Schedule.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!11 = !{!12, !13, !14, !15}
!12 = !DIEnumerator(name: "sched_mod_none", value: 0)
!13 = !DIEnumerator(name: "sched_before", value: 1)
!14 = !DIEnumerator(name: "sched_after", value: 2)
!15 = !DIEnumerator(name: "sched_while", value: 3)
!16 = !{!17, !18}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_sched_group", file: !4, line: 73, baseType: !20)
!20 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 64, size: 256, align: 64, elements: !21)
!21 = !{!22, !25, !28, !29}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !20, file: !4, line: 66, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !20, file: !4, line: 67, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "n_scheditems", scope: !20, file: !4, line: 69, baseType: !27, size: 32, align: 32, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "scheditems", scope: !20, file: !4, line: 71, baseType: !30, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_sched_item", file: !4, line: 62, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 47, size: 448, align: 64, elements: !33)
!33 = !{!34, !35, !37, !38, !39, !40, !42, !43}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !32, file: !4, line: 49, baseType: !23, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !32, file: !4, line: 51, baseType: !36, size: 32, align: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_sched_item_type", file: !4, line: 45, baseType: !3)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !32, file: !4, line: 53, baseType: !17, size: 64, align: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !32, file: !4, line: 54, baseType: !27, size: 32, align: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "n_whiles", scope: !32, file: !4, line: 56, baseType: !27, size: 32, align: 32, offset: 224)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "whiles", scope: !32, file: !4, line: 57, baseType: !41, size: 64, align: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !32, file: !4, line: 59, baseType: !17, size: 64, align: 64, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !32, file: !4, line: 61, baseType: !44, size: 64, align: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_sched_modifier", file: !10, line: 27, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "T_SCHED_MODIFIER", file: !10, line: 19, size: 192, align: 64, elements: !47)
!47 = !{!48, !50, !52}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !46, file: !10, line: 21, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !10, line: 23, baseType: !51, size: 32, align: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_sched_modifier_type", file: !10, line: 17, baseType: !9)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "argument", scope: !46, file: !10, line: 25, baseType: !23, size: 64, align: 64, offset: 128)
!53 = !{!54, !60, !99, !117}
!54 = !DISubprogram(name: "CCTKi_version_schedule_ScheduleTraverse_c", scope: !1, file: !1, line: 25, type: !55, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_schedule_ScheduleTraverse_c, variables: !59)
!55 = !DISubroutineType(types: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!59 = !{}
!60 = !DISubprogram(name: "CCTKi_DoScheduleTraverse", scope: !1, file: !1, line: 129, type: !61, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i32, i8**, i8*, i8*, i32)*, i32 (i8*, i8*, i8*)*, i8*)* @CCTKi_DoScheduleTraverse, variables: !72)
!61 = !DISubroutineType(types: !62)
!62 = !{!27, !57, !63, !63, !66, !69, !17}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!27, !17, !17}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!27, !27, !41, !17, !17, !27}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!27, !17, !17, !17}
!72 = !{!73, !74, !75, !76, !77, !78, !79, !96, !97, !98}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group_name", arg: 1, scope: !60, file: !1, line: 129, type: !57)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item_entry", arg: 2, scope: !60, file: !1, line: 130, type: !63)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item_exit", arg: 3, scope: !60, file: !1, line: 131, type: !63)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "while_check", arg: 4, scope: !60, file: !1, line: 132, type: !66)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "function_process", arg: 5, scope: !60, file: !1, line: 133, type: !69)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 6, scope: !60, file: !1, line: 134, type: !17)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "schedule_groups", scope: !60, file: !1, line: 136, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "cHandledData", file: !82, line: 28, baseType: !83)
!82 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreHandledData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!83 = !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 23, size: 128, align: 64, elements: !84)
!84 = !{!85, !94, !95}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !83, file: !82, line: 25, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "cHandleStorage", file: !82, line: 21, baseType: !88)
!88 = !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 16, size: 192, align: 64, elements: !89)
!89 = !{!90, !92, !93}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !88, file: !82, line: 18, baseType: !91, size: 32, align: 32)
!91 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !82, line: 19, baseType: !23, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !88, file: !82, line: 20, baseType: !17, size: 64, align: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "array_size", scope: !83, file: !82, line: 26, baseType: !91, size: 32, align: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "first_unused", scope: !83, file: !82, line: 27, baseType: !91, size: 32, align: 32, offset: 96)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "group", scope: !60, file: !1, line: 137, type: !18)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !60, file: !1, line: 138, type: !27)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retcode", scope: !60, file: !1, line: 139, type: !27)
!99 = !DISubprogram(name: "ScheduleTraverseGroup", scope: !1, file: !1, line: 258, type: !100, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cHandledData*, %struct.t_sched_group*, i8*, i32, i8**, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i32, i8**, i8*, i8*, i32)*, i32 (i8*, i8*, i8*)*, i8*)* @ScheduleTraverseGroup, variables: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{!27, !80, !18, !17, !27, !41, !63, !63, !66, !69, !17}
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "schedule_groups", arg: 1, scope: !99, file: !1, line: 258, type: !80)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !99, file: !1, line: 259, type: !18)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "attributes", arg: 3, scope: !99, file: !1, line: 260, type: !17)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_whiles", arg: 4, scope: !99, file: !1, line: 261, type: !27)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "whiles", arg: 5, scope: !99, file: !1, line: 262, type: !41)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item_entry", arg: 6, scope: !99, file: !1, line: 263, type: !63)
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item_exit", arg: 7, scope: !99, file: !1, line: 264, type: !63)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "while_check", arg: 8, scope: !99, file: !1, line: 265, type: !66)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "function_process", arg: 9, scope: !99, file: !1, line: 266, type: !69)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 10, scope: !99, file: !1, line: 267, type: !17)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !99, file: !1, line: 269, type: !27)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doit", scope: !99, file: !1, line: 270, type: !27)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "called_item_entry", scope: !99, file: !1, line: 271, type: !27)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newgroup", scope: !99, file: !1, line: 272, type: !18)
!117 = !DISubprogram(name: "ScheduleTraverseFunction", scope: !1, file: !1, line: 445, type: !118, isLocal: true, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, variables: !120)
!118 = !DISubroutineType(types: !119)
!119 = !{!27, !17, !17, !27, !41, !63, !63, !66, !69, !17}
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "function", arg: 1, scope: !117, file: !1, line: 445, type: !17)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "attributes", arg: 2, scope: !117, file: !1, line: 446, type: !17)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_whiles", arg: 3, scope: !117, file: !1, line: 447, type: !27)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "whiles", arg: 4, scope: !117, file: !1, line: 448, type: !41)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item_entry", arg: 5, scope: !117, file: !1, line: 449, type: !63)
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item_exit", arg: 6, scope: !117, file: !1, line: 450, type: !63)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "while_check", arg: 7, scope: !117, file: !1, line: 451, type: !66)
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "function_process", arg: 8, scope: !117, file: !1, line: 452, type: !69)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 9, scope: !117, file: !1, line: 453, type: !17)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "doit", scope: !117, file: !1, line: 455, type: !27)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "called_item_entry", scope: !117, file: !1, line: 456, type: !27)
!132 = !{!133}
!133 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 23, type: !57, isLocal: true, isDefinition: true)
!134 = !{i32 2, !"Dwarf Version", i32 2}
!135 = !{i32 2, !"Debug Info Version", i32 700000003}
!136 = !{i32 1, !"PIC Level", i32 2}
!137 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!138 = !DILocation(line: 25, column: 1, scope: !54)
!139 = !DIExpression()
!140 = !DILocation(line: 129, column: 42, scope: !60)
!141 = !DILocation(line: 130, column: 36, scope: !60)
!142 = !DILocation(line: 131, column: 36, scope: !60)
!143 = !DILocation(line: 132, column: 37, scope: !60)
!144 = !DILocation(line: 133, column: 36, scope: !60)
!145 = !DILocation(line: 134, column: 36, scope: !60)
!146 = !DILocation(line: 141, column: 21, scope: !60)
!147 = !DILocation(line: 136, column: 17, scope: !60)
!148 = !DILocation(line: 143, column: 56, scope: !60)
!149 = !DILocation(line: 143, column: 12, scope: !60)
!150 = !DILocation(line: 138, column: 7, scope: !60)
!151 = !DILocation(line: 145, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !60, file: !1, line: 145, column: 6)
!153 = !DILocation(line: 145, column: 6, scope: !60)
!154 = !DILocation(line: 137, column: 18, scope: !60)
!155 = !DILocation(line: 148, column: 37, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !1, line: 146, column: 3)
!157 = !{!158, !158, i64 0}
!158 = !{!"any pointer", !159, i64 0}
!159 = !{!"omnipotent char", !160, i64 0}
!160 = !{!"Simple C/C++ TBAA"}
!161 = !DILocation(line: 147, column: 15, scope: !156)
!162 = !DILocation(line: 139, column: 7, scope: !60)
!163 = !DILocation(line: 157, column: 3, scope: !156)
!164 = !DILocation(line: 163, column: 3, scope: !60)
!165 = !DILocation(line: 278, column: 15, scope: !166)
!166 = distinct !DILexicalBlock(scope: !99, file: !1, line: 278, column: 6)
!167 = !DILocation(line: 278, column: 22, scope: !166)
!168 = !DILocation(line: 278, column: 19, scope: !166)
!169 = !DILocation(line: 280, column: 12, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 279, column: 3)
!171 = !DILocation(line: 270, column: 7, scope: !99)
!172 = !DILocation(line: 288, column: 6, scope: !173)
!173 = distinct !DILexicalBlock(scope: !99, file: !1, line: 288, column: 6)
!174 = !DILocation(line: 288, column: 6, scope: !99)
!175 = !DILocation(line: 271, column: 7, scope: !99)
!176 = !DILocation(line: 292, column: 8, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 292, column: 8)
!178 = distinct !DILexicalBlock(scope: !173, file: !1, line: 289, column: 3)
!179 = !DILocation(line: 292, column: 8, scope: !178)
!180 = !DILocation(line: 294, column: 14, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 293, column: 5)
!182 = !DILocation(line: 303, column: 3, scope: !99)
!183 = !DILocation(line: 307, column: 34, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 307, column: 5)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 307, column: 5)
!186 = distinct !DILexicalBlock(scope: !99, file: !1, line: 304, column: 3)
!187 = !DILocation(line: 309, column: 39, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !1, line: 308, column: 5)
!189 = !DILocation(line: 309, column: 21, scope: !188)
!190 = !DILocation(line: 476, column: 8, scope: !191, inlinedAt: !194)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 476, column: 8)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 473, column: 3)
!193 = distinct !DILexicalBlock(scope: !117, file: !1, line: 472, column: 6)
!194 = distinct !DILocation(line: 312, column: 11, scope: !195)
!195 = distinct !DILexicalBlock(scope: !188, file: !1, line: 310, column: 7)
!196 = !DILocation(line: 508, column: 8, scope: !197, inlinedAt: !194)
!197 = distinct !DILexicalBlock(scope: !198, file: !1, line: 508, column: 8)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 507, column: 3)
!199 = distinct !DILexicalBlock(scope: !117, file: !1, line: 506, column: 6)
!200 = !{!201, !202, i64 16}
!201 = !{!"", !158, i64 0, !158, i64 8, !202, i64 16, !158, i64 24}
!202 = !{!"int", !159, i64 0}
!203 = !DILocation(line: 307, column: 25, scope: !184)
!204 = !DILocation(line: 307, column: 5, scope: !185)
!205 = !{!201, !158, i64 8}
!206 = !DILocation(line: 309, column: 32, scope: !188)
!207 = !{!202, !202, i64 0}
!208 = !DILocation(line: 309, column: 14, scope: !188)
!209 = !{!201, !158, i64 24}
!210 = !DILocation(line: 309, column: 52, scope: !188)
!211 = !{!212, !159, i64 8}
!212 = !{!"", !158, i64 0, !159, i64 8, !158, i64 16, !202, i64 24, !202, i64 28, !158, i64 32, !158, i64 40, !158, i64 48}
!213 = !DILocation(line: 309, column: 7, scope: !188)
!214 = !DILocation(line: 312, column: 74, scope: !195)
!215 = !{!212, !158, i64 16}
!216 = !DILocation(line: 313, column: 74, scope: !195)
!217 = !{!212, !158, i64 40}
!218 = !DILocation(line: 314, column: 74, scope: !195)
!219 = !{!212, !202, i64 28}
!220 = !DILocation(line: 315, column: 74, scope: !195)
!221 = !{!212, !158, i64 32}
!222 = !DILocation(line: 462, column: 15, scope: !223, inlinedAt: !194)
!223 = distinct !DILexicalBlock(scope: !117, file: !1, line: 462, column: 6)
!224 = !DILocation(line: 462, column: 19, scope: !223, inlinedAt: !194)
!225 = !DILocation(line: 464, column: 12, scope: !226, inlinedAt: !194)
!226 = distinct !DILexicalBlock(scope: !223, file: !1, line: 463, column: 3)
!227 = !DILocation(line: 455, column: 7, scope: !117, inlinedAt: !194)
!228 = !DILocation(line: 472, column: 6, scope: !193, inlinedAt: !194)
!229 = !DILocation(line: 472, column: 6, scope: !117, inlinedAt: !194)
!230 = !DILocation(line: 456, column: 7, scope: !117, inlinedAt: !194)
!231 = !DILocation(line: 476, column: 8, scope: !192, inlinedAt: !194)
!232 = !DILocation(line: 478, column: 14, scope: !233, inlinedAt: !194)
!233 = distinct !DILexicalBlock(scope: !191, file: !1, line: 477, column: 5)
!234 = !DILocation(line: 487, column: 3, scope: !117, inlinedAt: !194)
!235 = !DILocation(line: 491, column: 5, scope: !236, inlinedAt: !194)
!236 = distinct !DILexicalBlock(scope: !117, file: !1, line: 488, column: 3)
!237 = !DILocation(line: 494, column: 21, scope: !238, inlinedAt: !194)
!238 = distinct !DILexicalBlock(scope: !236, file: !1, line: 494, column: 8)
!239 = !DILocation(line: 496, column: 14, scope: !240, inlinedAt: !194)
!240 = distinct !DILexicalBlock(scope: !238, file: !1, line: 495, column: 5)
!241 = !DILocation(line: 506, column: 6, scope: !117, inlinedAt: !194)
!242 = !DILocation(line: 510, column: 7, scope: !243, inlinedAt: !194)
!243 = distinct !DILexicalBlock(scope: !197, file: !1, line: 509, column: 5)
!244 = !DILocation(line: 511, column: 5, scope: !243, inlinedAt: !194)
!245 = !DILocation(line: 324, column: 97, scope: !195)
!246 = !{!212, !202, i64 24}
!247 = !DILocation(line: 323, column: 39, scope: !195)
!248 = !DILocation(line: 323, column: 22, scope: !195)
!249 = !DILocation(line: 272, column: 18, scope: !99)
!250 = !DILocation(line: 327, column: 58, scope: !195)
!251 = !DILocation(line: 327, column: 51, scope: !195)
!252 = !DILocation(line: 327, column: 33, scope: !195)
!253 = !DILocation(line: 327, column: 40, scope: !195)
!254 = !DILocation(line: 327, column: 71, scope: !195)
!255 = !DILocation(line: 328, column: 71, scope: !195)
!256 = !DILocation(line: 329, column: 71, scope: !195)
!257 = !DILocation(line: 325, column: 11, scope: !195)
!258 = !DILocation(line: 335, column: 11, scope: !195)
!259 = !DILocation(line: 337, column: 19, scope: !195)
!260 = !DILocation(line: 337, column: 11, scope: !195)
!261 = !DILocation(line: 338, column: 7, scope: !195)
!262 = !DILocation(line: 342, column: 21, scope: !263)
!263 = distinct !DILexicalBlock(scope: !186, file: !1, line: 342, column: 8)
!264 = !DILocation(line: 344, column: 14, scope: !265)
!265 = distinct !DILexicalBlock(scope: !263, file: !1, line: 343, column: 5)
!266 = !DILocation(line: 355, column: 8, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 355, column: 8)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 354, column: 3)
!269 = distinct !DILexicalBlock(scope: !99, file: !1, line: 353, column: 6)
!270 = !DILocation(line: 353, column: 6, scope: !99)
!271 = !DILocation(line: 357, column: 7, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !1, line: 356, column: 5)
!273 = !DILocation(line: 358, column: 5, scope: !272)
