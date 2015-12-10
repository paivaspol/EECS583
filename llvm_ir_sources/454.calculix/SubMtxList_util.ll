; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxList/src/SubMtxList_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._SubMtxList = type { i32, %struct._SubMtx**, i32*, %struct._Lock*, i8*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [62 x i8] c"\0A fatal error in SubMtxList_isListNonempty(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [59 x i8] c"\0A fatal error in SubMtxList_isCountZero(%p,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [66 x i8] c"\0A fatal error in SubMtxList_addObjectToList(%p,%p,%d)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in SubMtxList_getList(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SubMtxList_isListNonempty(%struct._SubMtxList* %list, i32 %ilist) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtxList* %list, i64 0, metadata !59, metadata !83), !dbg !84
  tail call void @llvm.dbg.value(metadata i32 %ilist, i64 0, metadata !60, metadata !83), !dbg !85
  %1 = icmp eq %struct._SubMtxList* %list, null, !dbg !86
  %2 = icmp slt i32 %ilist, 0, !dbg !88
  %or.cond = or i1 %1, %2, !dbg !89
  br i1 %or.cond, label %7, label %3, !dbg !89

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 0, !dbg !90
  %5 = load i32* %4, align 4, !dbg !90, !tbaa !91
  %6 = icmp sgt i32 %5, %ilist, !dbg !97
  br i1 %6, label %10, label %7, !dbg !98

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !99, !tbaa !101
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), %struct._SubMtxList* %list, i32 %ilist) #5, !dbg !102
  br label %10, !dbg !103

; <label>:10                                      ; preds = %3, %7
  %11 = sext i32 %ilist to i64, !dbg !104
  %12 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 1, !dbg !105
  %13 = load %struct._SubMtx*** %12, align 8, !dbg !105, !tbaa !106
  %14 = getelementptr inbounds %struct._SubMtx** %13, i64 %11, !dbg !104
  %15 = load %struct._SubMtx** %14, align 8, !dbg !104, !tbaa !101
  %16 = icmp ne %struct._SubMtx* %15, null, !dbg !107
  %17 = zext i1 %16 to i32, !dbg !107
  ret i32 %17, !dbg !108
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SubMtxList_isCountZero(%struct._SubMtxList* %list, i32 %ilist) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtxList* %list, i64 0, metadata !63, metadata !83), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 %ilist, i64 0, metadata !64, metadata !83), !dbg !110
  %1 = icmp eq %struct._SubMtxList* %list, null, !dbg !111
  %2 = icmp slt i32 %ilist, 0, !dbg !113
  %or.cond = or i1 %1, %2, !dbg !114
  br i1 %or.cond, label %7, label %3, !dbg !114

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 0, !dbg !115
  %5 = load i32* %4, align 4, !dbg !115, !tbaa !91
  %6 = icmp sgt i32 %5, %ilist, !dbg !116
  br i1 %6, label %10, label %7, !dbg !117

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !118, !tbaa !101
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._SubMtxList* %list, i32 %ilist) #5, !dbg !120
  br label %10, !dbg !121

; <label>:10                                      ; preds = %3, %7
  %11 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 2, !dbg !122
  %12 = load i32** %11, align 8, !dbg !122, !tbaa !124
  %13 = icmp eq i32* %12, null, !dbg !125
  br i1 %13, label %20, label %14, !dbg !126

; <label>:14                                      ; preds = %10
  %15 = sext i32 %ilist to i64, !dbg !127
  %16 = getelementptr inbounds i32* %12, i64 %15, !dbg !127
  %17 = load i32* %16, align 4, !dbg !127, !tbaa !129
  %18 = icmp eq i32 %17, 0, !dbg !130
  %19 = zext i1 %18 to i32, !dbg !130
  br label %20, !dbg !131

; <label>:20                                      ; preds = %10, %14
  %.0 = phi i32 [ %19, %14 ], [ 1, %10 ]
  ret i32 %.0, !dbg !132
}

; Function Attrs: nounwind optsize ssp uwtable
define void @SubMtxList_addObjectToList(%struct._SubMtxList* %list, %struct._SubMtx* %mtx, i32 %ilist) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtxList* %list, i64 0, metadata !69, metadata !83), !dbg !133
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %mtx, i64 0, metadata !70, metadata !83), !dbg !134
  tail call void @llvm.dbg.value(metadata i32 %ilist, i64 0, metadata !71, metadata !83), !dbg !135
  %1 = icmp eq %struct._SubMtxList* %list, null, !dbg !136
  %2 = icmp slt i32 %ilist, 0, !dbg !138
  %or.cond = or i1 %1, %2, !dbg !139
  br i1 %or.cond, label %7, label %3, !dbg !139

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 0, !dbg !140
  %5 = load i32* %4, align 4, !dbg !140, !tbaa !91
  %6 = icmp sgt i32 %5, %ilist, !dbg !141
  br i1 %6, label %10, label %7, !dbg !142

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !143, !tbaa !101
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), %struct._SubMtxList* %list, %struct._SubMtx* %mtx, i32 %ilist) #5, !dbg !145
  tail call void @exit(i32 -1) #6, !dbg !146
  unreachable, !dbg !146

; <label>:10                                      ; preds = %3
  %11 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 3, !dbg !147
  %12 = load %struct._Lock** %11, align 8, !dbg !147, !tbaa !149
  %13 = icmp eq %struct._Lock* %12, null, !dbg !150
  br i1 %13, label %48, label %14, !dbg !151

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 4, !dbg !152
  %16 = load i8** %15, align 8, !dbg !152, !tbaa !153
  %17 = icmp eq i8* %16, null, !dbg !154
  br i1 %17, label %23, label %18, !dbg !155

; <label>:18                                      ; preds = %14
  %19 = sext i32 %ilist to i64, !dbg !156
  %20 = getelementptr inbounds i8* %16, i64 %19, !dbg !156
  %21 = load i8* %20, align 1, !dbg !156, !tbaa !157
  %22 = icmp eq i8 %21, 89, !dbg !158
  br i1 %22, label %23, label %48, !dbg !159

; <label>:23                                      ; preds = %18, %14
  tail call void @Lock_lock(%struct._Lock* %12) #5, !dbg !160
  %24 = icmp eq %struct._SubMtx* %mtx, null, !dbg !162
  br i1 %24, label %34, label %25, !dbg !164

; <label>:25                                      ; preds = %23
  %26 = sext i32 %ilist to i64, !dbg !165
  %27 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 1, !dbg !167
  %28 = load %struct._SubMtx*** %27, align 8, !dbg !167, !tbaa !106
  %29 = getelementptr inbounds %struct._SubMtx** %28, i64 %26, !dbg !165
  %30 = bitcast %struct._SubMtx** %29 to i64*, !dbg !165
  %31 = load i64* %30, align 8, !dbg !165, !tbaa !101
  %32 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 9, !dbg !168
  %33 = bitcast %struct._SubMtx** %32 to i64*, !dbg !169
  store i64 %31, i64* %33, align 8, !dbg !169, !tbaa !170
  store %struct._SubMtx* %mtx, %struct._SubMtx** %29, align 8, !dbg !173, !tbaa !101
  br label %34, !dbg !174

; <label>:34                                      ; preds = %23, %25
  %35 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 2, !dbg !175
  %36 = load i32** %35, align 8, !dbg !175, !tbaa !124
  %37 = icmp eq i32* %36, null, !dbg !177
  br i1 %37, label %43, label %38, !dbg !178

; <label>:38                                      ; preds = %34
  %39 = sext i32 %ilist to i64, !dbg !179
  %40 = getelementptr inbounds i32* %36, i64 %39, !dbg !179
  %41 = load i32* %40, align 4, !dbg !181, !tbaa !129
  %42 = add nsw i32 %41, -1, !dbg !181
  store i32 %42, i32* %40, align 4, !dbg !181, !tbaa !129
  br label %43, !dbg !182

; <label>:43                                      ; preds = %34, %38
  %44 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 5, !dbg !183
  %45 = load i32* %44, align 4, !dbg !184, !tbaa !185
  %46 = add nsw i32 %45, 1, !dbg !184
  store i32 %46, i32* %44, align 4, !dbg !184, !tbaa !185
  %47 = load %struct._Lock** %11, align 8, !dbg !186, !tbaa !149
  tail call void @Lock_unlock(%struct._Lock* %47) #5, !dbg !187
  br label %68, !dbg !188

; <label>:48                                      ; preds = %10, %18
  %49 = icmp eq %struct._SubMtx* %mtx, null, !dbg !189
  br i1 %49, label %59, label %50, !dbg !192

; <label>:50                                      ; preds = %48
  %51 = sext i32 %ilist to i64, !dbg !193
  %52 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 1, !dbg !195
  %53 = load %struct._SubMtx*** %52, align 8, !dbg !195, !tbaa !106
  %54 = getelementptr inbounds %struct._SubMtx** %53, i64 %51, !dbg !193
  %55 = bitcast %struct._SubMtx** %54 to i64*, !dbg !193
  %56 = load i64* %55, align 8, !dbg !193, !tbaa !101
  %57 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 9, !dbg !196
  %58 = bitcast %struct._SubMtx** %57 to i64*, !dbg !197
  store i64 %56, i64* %58, align 8, !dbg !197, !tbaa !170
  store %struct._SubMtx* %mtx, %struct._SubMtx** %54, align 8, !dbg !198, !tbaa !101
  br label %59, !dbg !199

; <label>:59                                      ; preds = %48, %50
  %60 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 2, !dbg !200
  %61 = load i32** %60, align 8, !dbg !200, !tbaa !124
  %62 = icmp eq i32* %61, null, !dbg !202
  br i1 %62, label %68, label %63, !dbg !203

; <label>:63                                      ; preds = %59
  %64 = sext i32 %ilist to i64, !dbg !204
  %65 = getelementptr inbounds i32* %61, i64 %64, !dbg !204
  %66 = load i32* %65, align 4, !dbg !206, !tbaa !129
  %67 = add nsw i32 %66, -1, !dbg !206
  store i32 %67, i32* %65, align 4, !dbg !206, !tbaa !129
  br label %68, !dbg !207

; <label>:68                                      ; preds = %59, %63, %43
  ret void, !dbg !208
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Lock_lock(%struct._Lock*) #3

; Function Attrs: optsize
declare void @Lock_unlock(%struct._Lock*) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct._SubMtx* @SubMtxList_getList(%struct._SubMtxList* %list, i32 %ilist) #0 {
  tail call void @llvm.dbg.value(metadata %struct._SubMtxList* %list, i64 0, metadata !76, metadata !83), !dbg !209
  tail call void @llvm.dbg.value(metadata i32 %ilist, i64 0, metadata !77, metadata !83), !dbg !210
  %1 = icmp eq %struct._SubMtxList* %list, null, !dbg !211
  %2 = icmp slt i32 %ilist, 0, !dbg !213
  %or.cond = or i1 %1, %2, !dbg !214
  br i1 %or.cond, label %7, label %3, !dbg !214

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 0, !dbg !215
  %5 = load i32* %4, align 4, !dbg !215, !tbaa !91
  %6 = icmp sgt i32 %5, %ilist, !dbg !216
  br i1 %6, label %10, label %7, !dbg !217

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !218, !tbaa !101
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._SubMtxList* %list, i32 %ilist) #5, !dbg !220
  tail call void @exit(i32 -1) #6, !dbg !221
  unreachable, !dbg !221

; <label>:10                                      ; preds = %3
  %11 = sext i32 %ilist to i64, !dbg !222
  %12 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 1, !dbg !224
  %13 = load %struct._SubMtx*** %12, align 8, !dbg !224, !tbaa !106
  %14 = getelementptr inbounds %struct._SubMtx** %13, i64 %11, !dbg !222
  %15 = load %struct._SubMtx** %14, align 8, !dbg !222, !tbaa !101
  %16 = icmp eq %struct._SubMtx* %15, null, !dbg !225
  br i1 %16, label %46, label %17, !dbg !226

; <label>:17                                      ; preds = %10
  %18 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 3, !dbg !227
  %19 = load %struct._Lock** %18, align 8, !dbg !227, !tbaa !149
  %20 = icmp eq %struct._Lock* %19, null, !dbg !230
  br i1 %20, label %37, label %21, !dbg !231

; <label>:21                                      ; preds = %17
  %22 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 4, !dbg !232
  %23 = load i8** %22, align 8, !dbg !232, !tbaa !153
  %24 = icmp eq i8* %23, null, !dbg !233
  br i1 %24, label %29, label %25, !dbg !234

; <label>:25                                      ; preds = %21
  %26 = getelementptr inbounds i8* %23, i64 %11, !dbg !235
  %27 = load i8* %26, align 1, !dbg !235, !tbaa !157
  %28 = icmp eq i8 %27, 78, !dbg !236
  br i1 %28, label %37, label %29, !dbg !237

; <label>:29                                      ; preds = %21, %25
  %30 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 2, !dbg !238
  %31 = load i32** %30, align 8, !dbg !238, !tbaa !124
  %32 = icmp eq i32* %31, null, !dbg !239
  br i1 %32, label %38, label %33, !dbg !240

; <label>:33                                      ; preds = %29
  %34 = getelementptr inbounds i32* %31, i64 %11, !dbg !241
  %35 = load i32* %34, align 4, !dbg !241, !tbaa !129
  %36 = icmp eq i32 %35, 0, !dbg !242
  br i1 %36, label %37, label %38, !dbg !243

; <label>:37                                      ; preds = %33, %25, %17
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %15, i64 0, metadata !78, metadata !83), !dbg !244
  store %struct._SubMtx* null, %struct._SubMtx** %14, align 8, !dbg !245, !tbaa !101
  br label %46, !dbg !247

; <label>:38                                      ; preds = %29, %33
  tail call void @Lock_lock(%struct._Lock* %19) #5, !dbg !248
  %39 = load %struct._SubMtx*** %12, align 8, !dbg !250, !tbaa !106
  %40 = getelementptr inbounds %struct._SubMtx** %39, i64 %11, !dbg !251
  %41 = load %struct._SubMtx** %40, align 8, !dbg !251, !tbaa !101
  tail call void @llvm.dbg.value(metadata %struct._SubMtx* %41, i64 0, metadata !78, metadata !83), !dbg !244
  store %struct._SubMtx* null, %struct._SubMtx** %40, align 8, !dbg !252, !tbaa !101
  %42 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 5, !dbg !253
  %43 = load i32* %42, align 4, !dbg !254, !tbaa !185
  %44 = add nsw i32 %43, 1, !dbg !254
  store i32 %44, i32* %42, align 4, !dbg !254, !tbaa !185
  %45 = load %struct._Lock** %18, align 8, !dbg !255, !tbaa !149
  tail call void @Lock_unlock(%struct._Lock* %45) #5, !dbg !256
  br label %46

; <label>:46                                      ; preds = %10, %37, %38
  %mtx.0 = phi %struct._SubMtx* [ %15, %37 ], [ %41, %38 ], [ null, %10 ]
  ret %struct._SubMtx* %mtx.0, !dbg !257
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!79, !80, !81}
!llvm.ident = !{!82}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxList/src/SubMtxList_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !61, !65, !72}
!6 = !DISubprogram(name: "SubMtxList_isListNonempty", scope: !1, file: !1, line: 17, type: !7, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._SubMtxList*, i32)* @SubMtxList_isListNonempty, variables: !58)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10, !9}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "SubMtxList", file: !12, line: 24, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxList/src/../SubMtxList.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SubMtxList", file: !12, line: 25, size: 384, align: 64, elements: !14)
!14 = !{!15, !16, !43, !45, !54, !57}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !13, file: !12, line: 26, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !13, file: !12, line: 27, baseType: !17, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "SubMtx", file: !20, line: 43, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxList/src/../../SubMtx/SubMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SubMtx", file: !20, line: 44, size: 576, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !33, !42}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !21, file: !20, line: 45, baseType: !9, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !21, file: !20, line: 46, baseType: !9, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "rowid", scope: !21, file: !20, line: 47, baseType: !9, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "colid", scope: !21, file: !20, line: 48, baseType: !9, size: 32, align: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nrow", scope: !21, file: !20, line: 49, baseType: !9, size: 32, align: 32, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ncol", scope: !21, file: !20, line: 50, baseType: !9, size: 32, align: 32, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !21, file: !20, line: 51, baseType: !9, size: 32, align: 32, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !21, file: !20, line: 52, baseType: !31, size: 64, align: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !21, file: !20, line: 53, baseType: !34, size: 192, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !35, line: 20, baseType: !36)
!35 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxList/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !35, line: 21, size: 192, align: 64, elements: !37)
!37 = !{!38, !39, !40, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !36, file: !35, line: 22, baseType: !9, size: 32, align: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !36, file: !35, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !36, file: !35, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !36, file: !35, line: 25, baseType: !31, size: 64, align: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !20, line: 54, baseType: !18, size: 64, align: 64, offset: 512)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !13, file: !12, line: 28, baseType: !44, size: 64, align: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !13, file: !12, line: 29, baseType: !46, size: 64, align: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "Lock", file: !48, line: 36, baseType: !49)
!48 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxList/src/../../Lock/Lock.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Lock", file: !48, line: 37, size: 128, align: 64, elements: !50)
!50 = !{!51, !52, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !49, file: !48, line: 45, baseType: !4, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !49, file: !48, line: 47, baseType: !9, size: 32, align: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !49, file: !48, line: 48, baseType: !9, size: 32, align: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !13, file: !12, line: 30, baseType: !55, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !13, file: !12, line: 31, baseType: !9, size: 32, align: 32, offset: 320)
!58 = !{!59, !60}
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !6, file: !1, line: 18, type: !10)
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ilist", arg: 2, scope: !6, file: !1, line: 19, type: !9)
!61 = !DISubprogram(name: "SubMtxList_isCountZero", scope: !1, file: !1, line: 43, type: !7, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._SubMtxList*, i32)* @SubMtxList_isCountZero, variables: !62)
!62 = !{!63, !64}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !61, file: !1, line: 44, type: !10)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ilist", arg: 2, scope: !61, file: !1, line: 45, type: !9)
!65 = !DISubprogram(name: "SubMtxList_addObjectToList", scope: !1, file: !1, line: 73, type: !66, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._SubMtxList*, %struct._SubMtx*, i32)* @SubMtxList_addObjectToList, variables: !68)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !10, !18, !9}
!68 = !{!69, !70, !71}
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !65, file: !1, line: 74, type: !10)
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 2, scope: !65, file: !1, line: 75, type: !18)
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ilist", arg: 3, scope: !65, file: !1, line: 76, type: !9)
!72 = !DISubprogram(name: "SubMtxList_getList", scope: !1, file: !1, line: 145, type: !73, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, function: %struct._SubMtx* (%struct._SubMtxList*, i32)* @SubMtxList_getList, variables: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{!18, !10, !9}
!75 = !{!76, !77, !78}
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !72, file: !1, line: 146, type: !10)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ilist", arg: 2, scope: !72, file: !1, line: 147, type: !9)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtx", scope: !72, file: !1, line: 149, type: !18)
!79 = !{i32 2, !"Dwarf Version", i32 2}
!80 = !{i32 2, !"Debug Info Version", i32 700000003}
!81 = !{i32 1, !"PIC Level", i32 2}
!82 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!83 = !DIExpression()
!84 = !DILocation(line: 18, column: 18, scope: !6)
!85 = !DILocation(line: 19, column: 17, scope: !6)
!86 = !DILocation(line: 26, column: 11, scope: !87)
!87 = distinct !DILexicalBlock(scope: !6, file: !1, line: 26, column: 6)
!88 = !DILocation(line: 26, column: 28, scope: !87)
!89 = !DILocation(line: 26, column: 19, scope: !87)
!90 = !DILocation(line: 26, column: 50, scope: !87)
!91 = !{!92, !93, i64 0}
!92 = !{!"_SubMtxList", !93, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !93, i64 40}
!93 = !{!"int", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !{!"any pointer", !94, i64 0}
!97 = !DILocation(line: 26, column: 41, scope: !87)
!98 = !DILocation(line: 26, column: 6, scope: !6)
!99 = !DILocation(line: 27, column: 12, scope: !100)
!100 = distinct !DILexicalBlock(scope: !87, file: !1, line: 26, column: 58)
!101 = !{!96, !96, i64 0}
!102 = !DILocation(line: 27, column: 4, scope: !100)
!103 = !DILocation(line: 30, column: 1, scope: !100)
!104 = !DILocation(line: 31, column: 8, scope: !6)
!105 = !DILocation(line: 31, column: 14, scope: !6)
!106 = !{!92, !96, i64 8}
!107 = !DILocation(line: 31, column: 27, scope: !6)
!108 = !DILocation(line: 31, column: 1, scope: !6)
!109 = !DILocation(line: 44, column: 18, scope: !61)
!110 = !DILocation(line: 45, column: 17, scope: !61)
!111 = !DILocation(line: 52, column: 11, scope: !112)
!112 = distinct !DILexicalBlock(scope: !61, file: !1, line: 52, column: 6)
!113 = !DILocation(line: 52, column: 28, scope: !112)
!114 = !DILocation(line: 52, column: 19, scope: !112)
!115 = !DILocation(line: 52, column: 50, scope: !112)
!116 = !DILocation(line: 52, column: 41, scope: !112)
!117 = !DILocation(line: 52, column: 6, scope: !61)
!118 = !DILocation(line: 53, column: 12, scope: !119)
!119 = distinct !DILexicalBlock(scope: !112, file: !1, line: 52, column: 58)
!120 = !DILocation(line: 53, column: 4, scope: !119)
!121 = !DILocation(line: 55, column: 1, scope: !119)
!122 = !DILocation(line: 56, column: 12, scope: !123)
!123 = distinct !DILexicalBlock(scope: !61, file: !1, line: 56, column: 6)
!124 = !{!92, !96, i64 16}
!125 = !DILocation(line: 56, column: 19, scope: !123)
!126 = !DILocation(line: 56, column: 6, scope: !61)
!127 = !DILocation(line: 59, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !1, line: 58, column: 8)
!129 = !{!93, !93, i64 0}
!130 = !DILocation(line: 59, column: 31, scope: !128)
!131 = !DILocation(line: 59, column: 4, scope: !128)
!132 = !DILocation(line: 61, column: 1, scope: !61)
!133 = !DILocation(line: 74, column: 18, scope: !65)
!134 = !DILocation(line: 75, column: 18, scope: !65)
!135 = !DILocation(line: 76, column: 17, scope: !65)
!136 = !DILocation(line: 83, column: 11, scope: !137)
!137 = distinct !DILexicalBlock(scope: !65, file: !1, line: 83, column: 6)
!138 = !DILocation(line: 83, column: 28, scope: !137)
!139 = !DILocation(line: 83, column: 19, scope: !137)
!140 = !DILocation(line: 83, column: 50, scope: !137)
!141 = !DILocation(line: 83, column: 41, scope: !137)
!142 = !DILocation(line: 83, column: 6, scope: !65)
!143 = !DILocation(line: 84, column: 12, scope: !144)
!144 = distinct !DILexicalBlock(scope: !137, file: !1, line: 83, column: 58)
!145 = !DILocation(line: 84, column: 4, scope: !144)
!146 = !DILocation(line: 87, column: 4, scope: !144)
!147 = !DILocation(line: 94, column: 12, scope: !148)
!148 = distinct !DILexicalBlock(scope: !65, file: !1, line: 94, column: 6)
!149 = !{!92, !96, i64 24}
!150 = !DILocation(line: 94, column: 17, scope: !148)
!151 = !DILocation(line: 95, column: 4, scope: !148)
!152 = !DILocation(line: 95, column: 14, scope: !148)
!153 = !{!92, !96, i64 32}
!154 = !DILocation(line: 95, column: 20, scope: !148)
!155 = !DILocation(line: 95, column: 28, scope: !148)
!156 = !DILocation(line: 95, column: 31, scope: !148)
!157 = !{!94, !94, i64 0}
!158 = !DILocation(line: 95, column: 50, scope: !148)
!159 = !DILocation(line: 94, column: 6, scope: !65)
!160 = !DILocation(line: 102, column: 4, scope: !161)
!161 = distinct !DILexicalBlock(scope: !148, file: !1, line: 95, column: 61)
!162 = !DILocation(line: 103, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !161, file: !1, line: 103, column: 9)
!164 = !DILocation(line: 103, column: 9, scope: !161)
!165 = !DILocation(line: 104, column: 19, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !1, line: 103, column: 23)
!167 = !DILocation(line: 104, column: 25, scope: !166)
!168 = !DILocation(line: 104, column: 12, scope: !166)
!169 = !DILocation(line: 104, column: 17, scope: !166)
!170 = !{!171, !96, i64 64}
!171 = !{!"_SubMtx", !93, i64 0, !93, i64 4, !93, i64 8, !93, i64 12, !93, i64 16, !93, i64 20, !93, i64 24, !96, i64 32, !172, i64 40, !96, i64 64}
!172 = !{!"_DV", !93, i64 0, !93, i64 4, !93, i64 8, !96, i64 16}
!173 = !DILocation(line: 105, column: 26, scope: !166)
!174 = !DILocation(line: 106, column: 4, scope: !166)
!175 = !DILocation(line: 107, column: 15, scope: !176)
!176 = distinct !DILexicalBlock(scope: !161, file: !1, line: 107, column: 9)
!177 = !DILocation(line: 107, column: 22, scope: !176)
!178 = !DILocation(line: 107, column: 9, scope: !161)
!179 = !DILocation(line: 108, column: 7, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !1, line: 107, column: 32)
!181 = !DILocation(line: 108, column: 26, scope: !180)
!182 = !DILocation(line: 109, column: 4, scope: !180)
!183 = !DILocation(line: 110, column: 10, scope: !161)
!184 = !DILocation(line: 110, column: 16, scope: !161)
!185 = !{!92, !93, i64 40}
!186 = !DILocation(line: 111, column: 22, scope: !161)
!187 = !DILocation(line: 111, column: 4, scope: !161)
!188 = !DILocation(line: 112, column: 1, scope: !161)
!189 = !DILocation(line: 119, column: 13, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 119, column: 9)
!191 = distinct !DILexicalBlock(scope: !148, file: !1, line: 112, column: 8)
!192 = !DILocation(line: 119, column: 9, scope: !191)
!193 = !DILocation(line: 120, column: 19, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !1, line: 119, column: 23)
!195 = !DILocation(line: 120, column: 25, scope: !194)
!196 = !DILocation(line: 120, column: 12, scope: !194)
!197 = !DILocation(line: 120, column: 17, scope: !194)
!198 = !DILocation(line: 121, column: 26, scope: !194)
!199 = !DILocation(line: 122, column: 4, scope: !194)
!200 = !DILocation(line: 123, column: 15, scope: !201)
!201 = distinct !DILexicalBlock(scope: !191, file: !1, line: 123, column: 9)
!202 = !DILocation(line: 123, column: 22, scope: !201)
!203 = !DILocation(line: 123, column: 9, scope: !191)
!204 = !DILocation(line: 124, column: 7, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !1, line: 123, column: 32)
!206 = !DILocation(line: 124, column: 26, scope: !205)
!207 = !DILocation(line: 125, column: 4, scope: !205)
!208 = !DILocation(line: 133, column: 1, scope: !65)
!209 = !DILocation(line: 146, column: 18, scope: !72)
!210 = !DILocation(line: 147, column: 17, scope: !72)
!211 = !DILocation(line: 155, column: 11, scope: !212)
!212 = distinct !DILexicalBlock(scope: !72, file: !1, line: 155, column: 6)
!213 = !DILocation(line: 155, column: 28, scope: !212)
!214 = !DILocation(line: 155, column: 19, scope: !212)
!215 = !DILocation(line: 155, column: 50, scope: !212)
!216 = !DILocation(line: 155, column: 41, scope: !212)
!217 = !DILocation(line: 155, column: 6, scope: !72)
!218 = !DILocation(line: 156, column: 12, scope: !219)
!219 = distinct !DILexicalBlock(scope: !212, file: !1, line: 155, column: 58)
!220 = !DILocation(line: 156, column: 4, scope: !219)
!221 = !DILocation(line: 159, column: 4, scope: !219)
!222 = !DILocation(line: 165, column: 6, scope: !223)
!223 = distinct !DILexicalBlock(scope: !72, file: !1, line: 165, column: 6)
!224 = !DILocation(line: 165, column: 12, scope: !223)
!225 = !DILocation(line: 165, column: 25, scope: !223)
!226 = !DILocation(line: 165, column: 6, scope: !72)
!227 = !DILocation(line: 166, column: 15, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 166, column: 9)
!229 = distinct !DILexicalBlock(scope: !223, file: !1, line: 165, column: 35)
!230 = !DILocation(line: 166, column: 20, scope: !228)
!231 = !DILocation(line: 167, column: 6, scope: !228)
!232 = !DILocation(line: 167, column: 16, scope: !228)
!233 = !DILocation(line: 167, column: 22, scope: !228)
!234 = !DILocation(line: 167, column: 30, scope: !228)
!235 = !DILocation(line: 167, column: 33, scope: !228)
!236 = !DILocation(line: 167, column: 52, scope: !228)
!237 = !DILocation(line: 168, column: 6, scope: !228)
!238 = !DILocation(line: 168, column: 16, scope: !228)
!239 = !DILocation(line: 168, column: 23, scope: !228)
!240 = !DILocation(line: 168, column: 31, scope: !228)
!241 = !DILocation(line: 168, column: 34, scope: !228)
!242 = !DILocation(line: 168, column: 54, scope: !228)
!243 = !DILocation(line: 166, column: 9, scope: !229)
!244 = !DILocation(line: 149, column: 11, scope: !72)
!245 = !DILocation(line: 175, column: 26, scope: !246)
!246 = distinct !DILexicalBlock(scope: !228, file: !1, line: 168, column: 62)
!247 = !DILocation(line: 176, column: 4, scope: !246)
!248 = !DILocation(line: 182, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !228, file: !1, line: 176, column: 11)
!250 = !DILocation(line: 183, column: 19, scope: !249)
!251 = !DILocation(line: 183, column: 13, scope: !249)
!252 = !DILocation(line: 184, column: 26, scope: !249)
!253 = !DILocation(line: 185, column: 13, scope: !249)
!254 = !DILocation(line: 185, column: 19, scope: !249)
!255 = !DILocation(line: 186, column: 25, scope: !249)
!256 = !DILocation(line: 186, column: 7, scope: !249)
!257 = !DILocation(line: 195, column: 1, scope: !72)
