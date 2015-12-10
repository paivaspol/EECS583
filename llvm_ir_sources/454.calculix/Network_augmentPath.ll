; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct.__sFILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [59 x i8] c"\0A fatal error in Network_augmentPath(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"\0A\0A augment path\00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c"\0A    w = %d, v = %d\00", align 1
@.str3 = private unnamed_addr constant [35 x i8] c"\0A   backward arc(%d,%d), flow = %d\00", align 1
@.str4 = private unnamed_addr constant [34 x i8] c"\0A   forward arc(%d,%d), flow = %d\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @Network_augmentPath(%struct._Network* %network, i32 %delta, i32* %pred) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Network* %network, i64 0, metadata !106, metadata !123), !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %delta, i64 0, metadata !107, metadata !123), !dbg !125
  tail call void @llvm.dbg.value(metadata i32* %pred, i64 0, metadata !108, metadata !123), !dbg !126
  %1 = icmp eq %struct._Network* %network, null, !dbg !127
  br i1 %1, label %8, label %2, !dbg !129

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0, !dbg !130
  %4 = load i32* %3, align 4, !dbg !130, !tbaa !131
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !114, metadata !123), !dbg !137
  %5 = icmp slt i32 %4, 1, !dbg !138
  %6 = icmp slt i32 %delta, 1, !dbg !139
  %or.cond = or i1 %6, %5, !dbg !140
  %7 = icmp eq i32* %pred, null, !dbg !141
  %or.cond3 = or i1 %7, %or.cond, !dbg !140
  br i1 %or.cond3, label %8, label %11, !dbg !140

; <label>:8                                       ; preds = %2, %0
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !142, !tbaa !144
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), %struct._Network* %network, i32 %delta, i32* %pred) #5, !dbg !145
  tail call void @exit(i32 -1) #6, !dbg !146
  unreachable, !dbg !146

; <label>:11                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !116, metadata !123), !dbg !147
  %12 = add nsw i32 %4, -1, !dbg !148
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !115, metadata !123), !dbg !149
  %13 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3, !dbg !150
  %14 = load %struct._Arc*** %13, align 8, !dbg !150, !tbaa !151
  tail call void @llvm.dbg.value(metadata %struct._Arc** %14, i64 0, metadata !110, metadata !123), !dbg !152
  %15 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4, !dbg !153
  %16 = load %struct._Arc*** %15, align 8, !dbg !153, !tbaa !154
  tail call void @llvm.dbg.value(metadata %struct._Arc** %16, i64 0, metadata !111, metadata !123), !dbg !155
  %17 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6, !dbg !156
  %18 = load i32* %17, align 4, !dbg !156, !tbaa !157
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !113, metadata !123), !dbg !158
  %19 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7, !dbg !159
  %20 = load %struct.__sFILE** %19, align 8, !dbg !159, !tbaa !160
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %20, i64 0, metadata !112, metadata !123), !dbg !161
  %21 = icmp sgt i32 %18, 2, !dbg !162
  br i1 %21, label %22, label %.preheader, !dbg !164

; <label>:22                                      ; preds = %11
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0), i64 15, i64 1, %struct.__sFILE* %20), !dbg !165
  %24 = tail call i32 @fflush(%struct.__sFILE* %20) #5, !dbg !167
  br label %.preheader, !dbg !168

.preheader:                                       ; preds = %22, %11
  %25 = getelementptr inbounds %struct._Network* %network, i64 0, i32 2, !dbg !169
  br label %26, !dbg !176

; <label>:26                                      ; preds = %.preheader, %.loopexit
  %w.0 = phi i32 [ %29, %.loopexit ], [ %12, %.preheader ]
  %27 = sext i32 %w.0 to i64, !dbg !176
  %28 = getelementptr inbounds i32* %pred, i64 %27, !dbg !176
  %29 = load i32* %28, align 4, !dbg !176, !tbaa !177
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !117, metadata !123), !dbg !178
  br i1 %21, label %30, label %32, !dbg !179

; <label>:30                                      ; preds = %26
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([20 x i8]* @.str2, i64 0, i64 0), i32 %w.0, i32 %29) #5, !dbg !180
  br label %32, !dbg !183

; <label>:32                                      ; preds = %30, %26
  %33 = sext i32 %29 to i64, !dbg !184
  %34 = getelementptr inbounds %struct._Arc** %14, i64 %33, !dbg !184
  %arc.06 = load %struct._Arc** %34, align 8, !dbg !184
  %cond7 = icmp eq %struct._Arc* %arc.06, null, !dbg !186
  br i1 %cond7, label %._crit_edge, label %.lr.ph, !dbg !186

.lr.ph:                                           ; preds = %32
  %.pre = load i32* %25, align 4, !dbg !187, !tbaa !190
  br label %35, !dbg !186

; <label>:35                                      ; preds = %.lr.ph, %47
  %36 = phi i32 [ %.pre, %.lr.ph ], [ %37, %47 ], !dbg !187
  %arc.08 = phi %struct._Arc* [ %arc.06, %.lr.ph ], [ %arc.0, %47 ]
  %37 = add nsw i32 %36, 1, !dbg !187
  store i32 %37, i32* %25, align 4, !dbg !187, !tbaa !190
  %38 = getelementptr inbounds %struct._Arc* %arc.08, i64 0, i32 0, !dbg !191
  %39 = load i32* %38, align 4, !dbg !191, !tbaa !193
  %40 = icmp eq i32 %39, %w.0, !dbg !195
  br i1 %40, label %41, label %47, !dbg !196

; <label>:41                                      ; preds = %35
  %42 = getelementptr inbounds %struct._Arc* %arc.08, i64 0, i32 3, !dbg !197
  %43 = load i32* %42, align 4, !dbg !199, !tbaa !200
  %44 = sub nsw i32 %43, %delta, !dbg !199
  store i32 %44, i32* %42, align 4, !dbg !199, !tbaa !200
  br i1 %21, label %45, label %.loopexit, !dbg !201

; <label>:45                                      ; preds = %41
  %46 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([35 x i8]* @.str3, i64 0, i64 0), i32 %w.0, i32 %29, i32 %44) #5, !dbg !202
  br label %.loopexit, !dbg !205

; <label>:47                                      ; preds = %35
  %48 = getelementptr inbounds %struct._Arc* %arc.08, i64 0, i32 5, !dbg !206
  %arc.0 = load %struct._Arc** %48, align 8, !dbg !184
  %cond = icmp eq %struct._Arc* %arc.0, null, !dbg !186
  br i1 %cond, label %._crit_edge, label %35, !dbg !186

._crit_edge:                                      ; preds = %47, %32
  %49 = getelementptr inbounds %struct._Arc** %16, i64 %33, !dbg !207
  %arc.19 = load %struct._Arc** %49, align 8, !dbg !207
  %50 = icmp eq %struct._Arc* %arc.19, null, !dbg !208
  br i1 %50, label %.loopexit, label %.lr.ph12, !dbg !209

.lr.ph12:                                         ; preds = %._crit_edge
  %.pre15 = load i32* %25, align 4, !dbg !210, !tbaa !190
  br label %51, !dbg !209

; <label>:51                                      ; preds = %.lr.ph12, %63
  %52 = phi i32 [ %.pre15, %.lr.ph12 ], [ %53, %63 ], !dbg !210
  %arc.110 = phi %struct._Arc* [ %arc.19, %.lr.ph12 ], [ %arc.1, %63 ]
  %53 = add nsw i32 %52, 1, !dbg !210
  store i32 %53, i32* %25, align 4, !dbg !210, !tbaa !190
  %54 = getelementptr inbounds %struct._Arc* %arc.110, i64 0, i32 1, !dbg !211
  %55 = load i32* %54, align 4, !dbg !211, !tbaa !213
  %56 = icmp eq i32 %55, %w.0, !dbg !214
  br i1 %56, label %57, label %63, !dbg !215

; <label>:57                                      ; preds = %51
  %58 = getelementptr inbounds %struct._Arc* %arc.110, i64 0, i32 3, !dbg !216
  %59 = load i32* %58, align 4, !dbg !218, !tbaa !200
  %60 = add nsw i32 %59, %delta, !dbg !218
  store i32 %60, i32* %58, align 4, !dbg !218, !tbaa !200
  br i1 %21, label %61, label %.loopexit, !dbg !219

; <label>:61                                      ; preds = %57
  %62 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([34 x i8]* @.str4, i64 0, i64 0), i32 %29, i32 %w.0, i32 %60) #5, !dbg !220
  br label %.loopexit, !dbg !223

; <label>:63                                      ; preds = %51
  %64 = getelementptr inbounds %struct._Arc* %arc.110, i64 0, i32 4, !dbg !224
  %arc.1 = load %struct._Arc** %64, align 8, !dbg !207
  %65 = icmp eq %struct._Arc* %arc.1, null, !dbg !208
  br i1 %65, label %.loopexit, label %51, !dbg !209

.loopexit:                                        ; preds = %63, %._crit_edge, %45, %41, %61, %57
  %66 = icmp eq i32 %29, 0, !dbg !225
  br i1 %66, label %67, label %26, !dbg !227

; <label>:67                                      ; preds = %.loopexit
  ret void, !dbg !228
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!119, !120, !121}
!llvm.ident = !{!122}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_augmentPath.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "Network_augmentPath", scope: !1, file: !1, line: 15, type: !7, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Network*, i32, i32*)* @Network_augmentPath, variables: !105)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15, !104}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Network", file: !11, line: 12, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/../Network.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Network", file: !11, line: 34, size: 448, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !30, !31, !40, !41}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nnode", scope: !12, file: !11, line: 35, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "narc", scope: !12, file: !11, line: 36, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ntrav", scope: !12, file: !11, line: 37, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "inheads", scope: !12, file: !11, line: 38, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Arc", file: !11, line: 13, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Arc", file: !11, line: 53, size: 256, align: 64, elements: !23)
!23 = !{!24, !25, !26, !27, !28, !29}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !22, file: !11, line: 54, baseType: !15, size: 32, align: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !22, file: !11, line: 55, baseType: !15, size: 32, align: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !22, file: !11, line: 56, baseType: !15, size: 32, align: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !22, file: !11, line: 57, baseType: !15, size: 32, align: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "nextOut", scope: !22, file: !11, line: 58, baseType: !20, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nextIn", scope: !22, file: !11, line: 59, baseType: !20, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "outheads", scope: !12, file: !11, line: 39, baseType: !19, size: 64, align: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !12, file: !11, line: 40, baseType: !32, size: 64, align: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "ArcChunk", file: !11, line: 14, baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ArcChunk", file: !11, line: 74, size: 192, align: 64, elements: !35)
!35 = !{!36, !37, !38, !39}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !34, file: !11, line: 75, baseType: !15, size: 32, align: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !34, file: !11, line: 76, baseType: !15, size: 32, align: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !34, file: !11, line: 77, baseType: !20, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !11, line: 78, baseType: !32, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "msglvl", scope: !12, file: !11, line: 41, baseType: !15, size: 32, align: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "msgFile", scope: !12, file: !11, line: 42, baseType: !42, size: 64, align: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !44, line: 153, baseType: !45)
!44 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !44, line: 122, size: 1216, align: 64, elements: !46)
!46 = !{!47, !50, !51, !52, !54, !55, !60, !61, !62, !66, !72, !82, !88, !89, !92, !93, !97, !101, !102, !103}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !45, file: !44, line: 123, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !45, file: !44, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !45, file: !44, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !44, line: 126, baseType: !53, size: 16, align: 16, offset: 128)
!53 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !45, file: !44, line: 127, baseType: !53, size: 16, align: 16, offset: 144)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !45, file: !44, line: 128, baseType: !56, size: 128, align: 64, offset: 192)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !44, line: 88, size: 128, align: 64, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !56, file: !44, line: 89, baseType: !48, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !56, file: !44, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !45, file: !44, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !45, file: !44, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !45, file: !44, line: 133, baseType: !63, size: 64, align: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!15, !4}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !45, file: !44, line: 134, baseType: !67, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!15, !4, !70, !15}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !45, file: !44, line: 135, baseType: !73, size: 64, align: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !4, !76, !15}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !44, line: 77, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !78, line: 71, baseType: !79)
!78 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !80, line: 46, baseType: !81)
!80 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!81 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !45, file: !44, line: 136, baseType: !83, size: 64, align: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!15, !4, !86, !15}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !45, file: !44, line: 139, baseType: !56, size: 128, align: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !45, file: !44, line: 140, baseType: !90, size: 64, align: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !44, line: 94, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !45, file: !44, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !45, file: !44, line: 144, baseType: !94, size: 24, align: 8, offset: 928)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 24, align: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 3)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !45, file: !44, line: 145, baseType: !98, size: 8, align: 8, offset: 952)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !45, file: !44, line: 148, baseType: !56, size: 128, align: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !45, file: !44, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !44, line: 152, baseType: !76, size: 64, align: 64, offset: 1152)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "network", arg: 1, scope: !6, file: !1, line: 16, type: !9)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "delta", arg: 2, scope: !6, file: !1, line: 17, type: !15)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pred", arg: 3, scope: !6, file: !1, line: 18, type: !104)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc", scope: !6, file: !1, line: 20, type: !20)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inheads", scope: !6, file: !1, line: 21, type: !19)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outheads", scope: !6, file: !1, line: 21, type: !19)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msgFile", scope: !6, file: !1, line: 22, type: !42)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msglvl", scope: !6, file: !1, line: 23, type: !15)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nnode", scope: !6, file: !1, line: 23, type: !15)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sink", scope: !6, file: !1, line: 23, type: !15)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "source", scope: !6, file: !1, line: 23, type: !15)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !6, file: !1, line: 23, type: !15)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !6, file: !1, line: 23, type: !15)
!119 = !{i32 2, !"Dwarf Version", i32 2}
!120 = !{i32 2, !"Debug Info Version", i32 700000003}
!121 = !{i32 1, !"PIC Level", i32 2}
!122 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!123 = !DIExpression()
!124 = !DILocation(line: 16, column: 15, scope: !6)
!125 = !DILocation(line: 17, column: 14, scope: !6)
!126 = !DILocation(line: 18, column: 14, scope: !6)
!127 = !DILocation(line: 29, column: 14, scope: !128)
!128 = distinct !DILexicalBlock(scope: !6, file: !1, line: 29, column: 6)
!129 = !DILocation(line: 29, column: 22, scope: !128)
!130 = !DILocation(line: 29, column: 43, scope: !128)
!131 = !{!132, !133, i64 0}
!132 = !{!"_Network", !133, i64 0, !133, i64 4, !133, i64 8, !136, i64 16, !136, i64 24, !136, i64 32, !133, i64 40, !136, i64 48}
!133 = !{!"int", !134, i64 0}
!134 = !{!"omnipotent char", !135, i64 0}
!135 = !{!"Simple C/C++ TBAA"}
!136 = !{!"any pointer", !134, i64 0}
!137 = !DILocation(line: 23, column: 16, scope: !6)
!138 = !DILocation(line: 29, column: 50, scope: !128)
!139 = !DILocation(line: 30, column: 13, scope: !128)
!140 = !DILocation(line: 30, column: 4, scope: !128)
!141 = !DILocation(line: 30, column: 26, scope: !128)
!142 = !DILocation(line: 31, column: 12, scope: !143)
!143 = distinct !DILexicalBlock(scope: !128, file: !1, line: 30, column: 36)
!144 = !{!136, !136, i64 0}
!145 = !DILocation(line: 31, column: 4, scope: !143)
!146 = !DILocation(line: 34, column: 4, scope: !143)
!147 = !DILocation(line: 23, column: 29, scope: !6)
!148 = !DILocation(line: 37, column: 18, scope: !6)
!149 = !DILocation(line: 23, column: 23, scope: !6)
!150 = !DILocation(line: 38, column: 21, scope: !6)
!151 = !{!132, !136, i64 16}
!152 = !DILocation(line: 21, column: 10, scope: !6)
!153 = !DILocation(line: 39, column: 21, scope: !6)
!154 = !{!132, !136, i64 24}
!155 = !DILocation(line: 21, column: 21, scope: !6)
!156 = !DILocation(line: 40, column: 21, scope: !6)
!157 = !{!132, !133, i64 40}
!158 = !DILocation(line: 23, column: 8, scope: !6)
!159 = !DILocation(line: 41, column: 21, scope: !6)
!160 = !{!132, !136, i64 48}
!161 = !DILocation(line: 22, column: 9, scope: !6)
!162 = !DILocation(line: 47, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !6, file: !1, line: 47, column: 6)
!164 = !DILocation(line: 47, column: 6, scope: !6)
!165 = !DILocation(line: 48, column: 4, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !1, line: 47, column: 19)
!167 = !DILocation(line: 49, column: 4, scope: !166)
!168 = !DILocation(line: 50, column: 1, scope: !166)
!169 = !DILocation(line: 70, column: 19, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 69, column: 68)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 69, column: 7)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 69, column: 7)
!173 = distinct !DILexicalBlock(scope: !174, file: !1, line: 68, column: 23)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 68, column: 9)
!175 = distinct !DILexicalBlock(scope: !6, file: !1, line: 52, column: 13)
!176 = !DILocation(line: 53, column: 8, scope: !175)
!177 = !{!133, !133, i64 0}
!178 = !DILocation(line: 23, column: 37, scope: !6)
!179 = !DILocation(line: 54, column: 9, scope: !175)
!180 = !DILocation(line: 55, column: 7, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 54, column: 22)
!182 = distinct !DILexicalBlock(scope: !175, file: !1, line: 54, column: 9)
!183 = !DILocation(line: 56, column: 4, scope: !181)
!184 = !DILocation(line: 57, column: 16, scope: !185)
!185 = distinct !DILexicalBlock(scope: !175, file: !1, line: 57, column: 4)
!186 = !DILocation(line: 57, column: 4, scope: !185)
!187 = !DILocation(line: 58, column: 21, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 57, column: 63)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 57, column: 4)
!190 = !{!132, !133, i64 8}
!191 = !DILocation(line: 59, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 59, column: 12)
!193 = !{!194, !133, i64 0}
!194 = !{!"_Arc", !133, i64 0, !133, i64 4, !133, i64 8, !133, i64 12, !136, i64 16, !136, i64 24}
!195 = !DILocation(line: 59, column: 23, scope: !192)
!196 = !DILocation(line: 59, column: 12, scope: !188)
!197 = !DILocation(line: 60, column: 15, scope: !198)
!198 = distinct !DILexicalBlock(scope: !192, file: !1, line: 59, column: 30)
!199 = !DILocation(line: 60, column: 20, scope: !198)
!200 = !{!194, !133, i64 12}
!201 = !DILocation(line: 61, column: 15, scope: !198)
!202 = !DILocation(line: 62, column: 13, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !1, line: 61, column: 28)
!204 = distinct !DILexicalBlock(scope: !198, file: !1, line: 61, column: 15)
!205 = !DILocation(line: 64, column: 10, scope: !203)
!206 = !DILocation(line: 57, column: 54, scope: !189)
!207 = !DILocation(line: 69, column: 19, scope: !172)
!208 = !DILocation(line: 69, column: 37, scope: !171)
!209 = !DILocation(line: 69, column: 7, scope: !172)
!210 = !DILocation(line: 70, column: 24, scope: !170)
!211 = !DILocation(line: 71, column: 20, scope: !212)
!212 = distinct !DILexicalBlock(scope: !170, file: !1, line: 71, column: 15)
!213 = !{!194, !133, i64 4}
!214 = !DILocation(line: 71, column: 27, scope: !212)
!215 = !DILocation(line: 71, column: 15, scope: !170)
!216 = !DILocation(line: 72, column: 18, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !1, line: 71, column: 34)
!218 = !DILocation(line: 72, column: 23, scope: !217)
!219 = !DILocation(line: 73, column: 18, scope: !217)
!220 = !DILocation(line: 74, column: 16, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !1, line: 73, column: 31)
!222 = distinct !DILexicalBlock(scope: !217, file: !1, line: 73, column: 18)
!223 = !DILocation(line: 76, column: 13, scope: !221)
!224 = !DILocation(line: 69, column: 58, scope: !171)
!225 = !DILocation(line: 81, column: 11, scope: !226)
!226 = distinct !DILexicalBlock(scope: !175, file: !1, line: 81, column: 9)
!227 = !DILocation(line: 81, column: 9, scope: !175)
!228 = !DILocation(line: 86, column: 1, scope: !6)
