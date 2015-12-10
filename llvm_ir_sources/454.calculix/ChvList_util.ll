; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._ChvList = type { i32, %struct._Chv**, i32*, %struct._Lock*, i8*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [59 x i8] c"\0A fatal error in ChvList_isListNonempty(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [56 x i8] c"\0A fatal error in ChvList_isCountZero(%p,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [63 x i8] c"\0A fatal error in ChvList_addObjectToList(%p,%p,%d)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ChvList_getList(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ChvList_isListNonempty(%struct._ChvList* %chvlist, i32 %ilist) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ChvList* %chvlist, i64 0, metadata !60, metadata !84), !dbg !85
  tail call void @llvm.dbg.value(metadata i32 %ilist, i64 0, metadata !61, metadata !84), !dbg !86
  %1 = icmp eq %struct._ChvList* %chvlist, null, !dbg !87
  %2 = icmp slt i32 %ilist, 0, !dbg !89
  %or.cond = or i1 %1, %2, !dbg !90
  br i1 %or.cond, label %7, label %3, !dbg !90

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 0, !dbg !91
  %5 = load i32* %4, align 4, !dbg !91, !tbaa !92
  %6 = icmp sgt i32 %5, %ilist, !dbg !98
  br i1 %6, label %10, label %7, !dbg !99

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !100, !tbaa !102
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), %struct._ChvList* %chvlist, i32 %ilist) #5, !dbg !103
  br label %10, !dbg !104

; <label>:10                                      ; preds = %3, %7
  %11 = sext i32 %ilist to i64, !dbg !105
  %12 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1, !dbg !106
  %13 = load %struct._Chv*** %12, align 8, !dbg !106, !tbaa !107
  %14 = getelementptr inbounds %struct._Chv** %13, i64 %11, !dbg !105
  %15 = load %struct._Chv** %14, align 8, !dbg !105, !tbaa !102
  %16 = icmp ne %struct._Chv* %15, null, !dbg !108
  %17 = zext i1 %16 to i32, !dbg !108
  ret i32 %17, !dbg !109
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ChvList_isCountZero(%struct._ChvList* %chvlist, i32 %ilist) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ChvList* %chvlist, i64 0, metadata !64, metadata !84), !dbg !110
  tail call void @llvm.dbg.value(metadata i32 %ilist, i64 0, metadata !65, metadata !84), !dbg !111
  %1 = icmp eq %struct._ChvList* %chvlist, null, !dbg !112
  %2 = icmp slt i32 %ilist, 0, !dbg !114
  %or.cond = or i1 %1, %2, !dbg !115
  br i1 %or.cond, label %7, label %3, !dbg !115

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 0, !dbg !116
  %5 = load i32* %4, align 4, !dbg !116, !tbaa !92
  %6 = icmp sgt i32 %5, %ilist, !dbg !117
  br i1 %6, label %10, label %7, !dbg !118

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !119, !tbaa !102
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), %struct._ChvList* %chvlist, i32 %ilist) #5, !dbg !121
  br label %10, !dbg !122

; <label>:10                                      ; preds = %3, %7
  %11 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 2, !dbg !123
  %12 = load i32** %11, align 8, !dbg !123, !tbaa !125
  %13 = icmp eq i32* %12, null, !dbg !126
  br i1 %13, label %20, label %14, !dbg !127

; <label>:14                                      ; preds = %10
  %15 = sext i32 %ilist to i64, !dbg !128
  %16 = getelementptr inbounds i32* %12, i64 %15, !dbg !128
  %17 = load i32* %16, align 4, !dbg !128, !tbaa !130
  %18 = icmp eq i32 %17, 0, !dbg !131
  %19 = zext i1 %18 to i32, !dbg !131
  br label %20, !dbg !132

; <label>:20                                      ; preds = %10, %14
  %.0 = phi i32 [ %19, %14 ], [ 1, %10 ]
  ret i32 %.0, !dbg !133
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ChvList_addObjectToList(%struct._ChvList* %chvlist, %struct._Chv* %chv, i32 %ilist) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ChvList* %chvlist, i64 0, metadata !70, metadata !84), !dbg !134
  tail call void @llvm.dbg.value(metadata %struct._Chv* %chv, i64 0, metadata !71, metadata !84), !dbg !135
  tail call void @llvm.dbg.value(metadata i32 %ilist, i64 0, metadata !72, metadata !84), !dbg !136
  %1 = icmp eq %struct._ChvList* %chvlist, null, !dbg !137
  %2 = icmp slt i32 %ilist, 0, !dbg !139
  %or.cond = or i1 %1, %2, !dbg !140
  br i1 %or.cond, label %7, label %3, !dbg !140

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 0, !dbg !141
  %5 = load i32* %4, align 4, !dbg !141, !tbaa !92
  %6 = icmp sgt i32 %5, %ilist, !dbg !142
  br i1 %6, label %10, label %7, !dbg !143

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !144, !tbaa !102
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([63 x i8]* @.str2, i64 0, i64 0), %struct._ChvList* %chvlist, %struct._Chv* %chv, i32 %ilist) #5, !dbg !146
  tail call void @exit(i32 -1) #6, !dbg !147
  unreachable, !dbg !147

; <label>:10                                      ; preds = %3
  %11 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 3, !dbg !148
  %12 = load %struct._Lock** %11, align 8, !dbg !148, !tbaa !150
  %13 = icmp eq %struct._Lock* %12, null, !dbg !151
  br i1 %13, label %48, label %14, !dbg !152

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 4, !dbg !153
  %16 = load i8** %15, align 8, !dbg !153, !tbaa !154
  %17 = icmp eq i8* %16, null, !dbg !155
  br i1 %17, label %23, label %18, !dbg !156

; <label>:18                                      ; preds = %14
  %19 = sext i32 %ilist to i64, !dbg !157
  %20 = getelementptr inbounds i8* %16, i64 %19, !dbg !157
  %21 = load i8* %20, align 1, !dbg !157, !tbaa !158
  %22 = icmp eq i8 %21, 89, !dbg !159
  br i1 %22, label %23, label %48, !dbg !160

; <label>:23                                      ; preds = %18, %14
  tail call void @Lock_lock(%struct._Lock* %12) #5, !dbg !161
  %24 = icmp eq %struct._Chv* %chv, null, !dbg !163
  br i1 %24, label %34, label %25, !dbg !165

; <label>:25                                      ; preds = %23
  %26 = sext i32 %ilist to i64, !dbg !166
  %27 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1, !dbg !168
  %28 = load %struct._Chv*** %27, align 8, !dbg !168, !tbaa !107
  %29 = getelementptr inbounds %struct._Chv** %28, i64 %26, !dbg !166
  %30 = bitcast %struct._Chv** %29 to i64*, !dbg !166
  %31 = load i64* %30, align 8, !dbg !166, !tbaa !102
  %32 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 10, !dbg !169
  %33 = bitcast %struct._Chv** %32 to i64*, !dbg !170
  store i64 %31, i64* %33, align 8, !dbg !170, !tbaa !171
  store %struct._Chv* %chv, %struct._Chv** %29, align 8, !dbg !174, !tbaa !102
  br label %34, !dbg !175

; <label>:34                                      ; preds = %23, %25
  %35 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 2, !dbg !176
  %36 = load i32** %35, align 8, !dbg !176, !tbaa !125
  %37 = icmp eq i32* %36, null, !dbg !178
  br i1 %37, label %43, label %38, !dbg !179

; <label>:38                                      ; preds = %34
  %39 = sext i32 %ilist to i64, !dbg !180
  %40 = getelementptr inbounds i32* %36, i64 %39, !dbg !180
  %41 = load i32* %40, align 4, !dbg !182, !tbaa !130
  %42 = add nsw i32 %41, -1, !dbg !182
  store i32 %42, i32* %40, align 4, !dbg !182, !tbaa !130
  br label %43, !dbg !183

; <label>:43                                      ; preds = %34, %38
  %44 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 5, !dbg !184
  %45 = load i32* %44, align 4, !dbg !185, !tbaa !186
  %46 = add nsw i32 %45, 1, !dbg !185
  store i32 %46, i32* %44, align 4, !dbg !185, !tbaa !186
  %47 = load %struct._Lock** %11, align 8, !dbg !187, !tbaa !150
  tail call void @Lock_unlock(%struct._Lock* %47) #5, !dbg !188
  br label %68, !dbg !189

; <label>:48                                      ; preds = %10, %18
  %49 = icmp eq %struct._Chv* %chv, null, !dbg !190
  br i1 %49, label %59, label %50, !dbg !193

; <label>:50                                      ; preds = %48
  %51 = sext i32 %ilist to i64, !dbg !194
  %52 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1, !dbg !196
  %53 = load %struct._Chv*** %52, align 8, !dbg !196, !tbaa !107
  %54 = getelementptr inbounds %struct._Chv** %53, i64 %51, !dbg !194
  %55 = bitcast %struct._Chv** %54 to i64*, !dbg !194
  %56 = load i64* %55, align 8, !dbg !194, !tbaa !102
  %57 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 10, !dbg !197
  %58 = bitcast %struct._Chv** %57 to i64*, !dbg !198
  store i64 %56, i64* %58, align 8, !dbg !198, !tbaa !171
  store %struct._Chv* %chv, %struct._Chv** %54, align 8, !dbg !199, !tbaa !102
  br label %59, !dbg !200

; <label>:59                                      ; preds = %48, %50
  %60 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 2, !dbg !201
  %61 = load i32** %60, align 8, !dbg !201, !tbaa !125
  %62 = icmp eq i32* %61, null, !dbg !203
  br i1 %62, label %68, label %63, !dbg !204

; <label>:63                                      ; preds = %59
  %64 = sext i32 %ilist to i64, !dbg !205
  %65 = getelementptr inbounds i32* %61, i64 %64, !dbg !205
  %66 = load i32* %65, align 4, !dbg !207, !tbaa !130
  %67 = add nsw i32 %66, -1, !dbg !207
  store i32 %67, i32* %65, align 4, !dbg !207, !tbaa !130
  br label %68, !dbg !208

; <label>:68                                      ; preds = %59, %63, %43
  ret void, !dbg !209
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Lock_lock(%struct._Lock*) #3

; Function Attrs: optsize
declare void @Lock_unlock(%struct._Lock*) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct._Chv* @ChvList_getList(%struct._ChvList* %chvlist, i32 %ilist) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ChvList* %chvlist, i64 0, metadata !77, metadata !84), !dbg !210
  tail call void @llvm.dbg.value(metadata i32 %ilist, i64 0, metadata !78, metadata !84), !dbg !211
  %1 = icmp eq %struct._ChvList* %chvlist, null, !dbg !212
  %2 = icmp slt i32 %ilist, 0, !dbg !214
  %or.cond = or i1 %1, %2, !dbg !215
  br i1 %or.cond, label %7, label %3, !dbg !215

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 0, !dbg !216
  %5 = load i32* %4, align 4, !dbg !216, !tbaa !92
  %6 = icmp sgt i32 %5, %ilist, !dbg !217
  br i1 %6, label %10, label %7, !dbg !218

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !219, !tbaa !102
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._ChvList* %chvlist, i32 %ilist) #5, !dbg !221
  tail call void @exit(i32 -1) #6, !dbg !222
  unreachable, !dbg !222

; <label>:10                                      ; preds = %3
  %11 = sext i32 %ilist to i64, !dbg !223
  %12 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1, !dbg !225
  %13 = load %struct._Chv*** %12, align 8, !dbg !225, !tbaa !107
  %14 = getelementptr inbounds %struct._Chv** %13, i64 %11, !dbg !223
  %15 = load %struct._Chv** %14, align 8, !dbg !223, !tbaa !102
  %16 = icmp eq %struct._Chv* %15, null, !dbg !226
  br i1 %16, label %46, label %17, !dbg !227

; <label>:17                                      ; preds = %10
  %18 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 3, !dbg !228
  %19 = load %struct._Lock** %18, align 8, !dbg !228, !tbaa !150
  %20 = icmp eq %struct._Lock* %19, null, !dbg !231
  br i1 %20, label %37, label %21, !dbg !232

; <label>:21                                      ; preds = %17
  %22 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 4, !dbg !233
  %23 = load i8** %22, align 8, !dbg !233, !tbaa !154
  %24 = icmp eq i8* %23, null, !dbg !234
  br i1 %24, label %29, label %25, !dbg !235

; <label>:25                                      ; preds = %21
  %26 = getelementptr inbounds i8* %23, i64 %11, !dbg !236
  %27 = load i8* %26, align 1, !dbg !236, !tbaa !158
  %28 = icmp eq i8 %27, 78, !dbg !237
  br i1 %28, label %37, label %29, !dbg !238

; <label>:29                                      ; preds = %21, %25
  %30 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 2, !dbg !239
  %31 = load i32** %30, align 8, !dbg !239, !tbaa !125
  %32 = icmp eq i32* %31, null, !dbg !240
  br i1 %32, label %38, label %33, !dbg !241

; <label>:33                                      ; preds = %29
  %34 = getelementptr inbounds i32* %31, i64 %11, !dbg !242
  %35 = load i32* %34, align 4, !dbg !242, !tbaa !130
  %36 = icmp eq i32 %35, 0, !dbg !243
  br i1 %36, label %37, label %38, !dbg !244

; <label>:37                                      ; preds = %33, %25, %17
  tail call void @llvm.dbg.value(metadata %struct._Chv* %15, i64 0, metadata !79, metadata !84), !dbg !245
  store %struct._Chv* null, %struct._Chv** %14, align 8, !dbg !246, !tbaa !102
  br label %46, !dbg !248

; <label>:38                                      ; preds = %29, %33
  tail call void @Lock_lock(%struct._Lock* %19) #5, !dbg !249
  %39 = load %struct._Chv*** %12, align 8, !dbg !251, !tbaa !107
  %40 = getelementptr inbounds %struct._Chv** %39, i64 %11, !dbg !252
  %41 = load %struct._Chv** %40, align 8, !dbg !252, !tbaa !102
  tail call void @llvm.dbg.value(metadata %struct._Chv* %41, i64 0, metadata !79, metadata !84), !dbg !245
  store %struct._Chv* null, %struct._Chv** %40, align 8, !dbg !253, !tbaa !102
  %42 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 5, !dbg !254
  %43 = load i32* %42, align 4, !dbg !255, !tbaa !186
  %44 = add nsw i32 %43, 1, !dbg !255
  store i32 %44, i32* %42, align 4, !dbg !255, !tbaa !186
  %45 = load %struct._Lock** %18, align 8, !dbg !256, !tbaa !150
  tail call void @Lock_unlock(%struct._Lock* %45) #5, !dbg !257
  br label %46

; <label>:46                                      ; preds = %10, %37, %38
  %chv.0 = phi %struct._Chv* [ %15, %37 ], [ %41, %38 ], [ null, %10 ]
  ret %struct._Chv* %chv.0, !dbg !258
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
!llvm.module.flags = !{!80, !81, !82}
!llvm.ident = !{!83}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !62, !66, !73}
!6 = !DISubprogram(name: "ChvList_isListNonempty", scope: !1, file: !1, line: 17, type: !7, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ChvList*, i32)* @ChvList_isListNonempty, variables: !59)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10, !9}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChvList", file: !12, line: 24, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/../ChvList.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ChvList", file: !12, line: 25, size: 384, align: 64, elements: !14)
!14 = !{!15, !16, !45, !46, !55, !58}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !13, file: !12, line: 26, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !13, file: !12, line: 27, baseType: !17, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Chv", file: !20, line: 30, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/../../Chv/Chv.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Chv", file: !20, line: 31, size: 640, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !31, !32, !35, !44}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !21, file: !20, line: 32, baseType: !9, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nD", scope: !21, file: !20, line: 33, baseType: !9, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nL", scope: !21, file: !20, line: 34, baseType: !9, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "nU", scope: !21, file: !20, line: 35, baseType: !9, size: 32, align: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !21, file: !20, line: 36, baseType: !9, size: 32, align: 32, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "symflag", scope: !21, file: !20, line: 37, baseType: !9, size: 32, align: 32, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "rowind", scope: !21, file: !20, line: 38, baseType: !30, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "colind", scope: !21, file: !20, line: 39, baseType: !30, size: 64, align: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !21, file: !20, line: 40, baseType: !33, size: 64, align: 64, offset: 320)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !21, file: !20, line: 41, baseType: !36, size: 192, align: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !37, line: 20, baseType: !38)
!37 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !37, line: 21, size: 192, align: 64, elements: !39)
!39 = !{!40, !41, !42, !43}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !38, file: !37, line: 22, baseType: !9, size: 32, align: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !38, file: !37, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !38, file: !37, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !38, file: !37, line: 25, baseType: !33, size: 64, align: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !20, line: 42, baseType: !18, size: 64, align: 64, offset: 576)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !13, file: !12, line: 28, baseType: !30, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !13, file: !12, line: 29, baseType: !47, size: 64, align: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "Lock", file: !49, line: 36, baseType: !50)
!49 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/../../Lock/Lock.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Lock", file: !49, line: 37, size: 128, align: 64, elements: !51)
!51 = !{!52, !53, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !50, file: !49, line: 45, baseType: !4, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !50, file: !49, line: 47, baseType: !9, size: 32, align: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nunlocks", scope: !50, file: !49, line: 48, baseType: !9, size: 32, align: 32, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !13, file: !12, line: 30, baseType: !56, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "nlocks", scope: !13, file: !12, line: 31, baseType: !9, size: 32, align: 32, offset: 320)
!59 = !{!60, !61}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chvlist", arg: 1, scope: !6, file: !1, line: 18, type: !10)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ilist", arg: 2, scope: !6, file: !1, line: 19, type: !9)
!62 = !DISubprogram(name: "ChvList_isCountZero", scope: !1, file: !1, line: 42, type: !7, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ChvList*, i32)* @ChvList_isCountZero, variables: !63)
!63 = !{!64, !65}
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chvlist", arg: 1, scope: !62, file: !1, line: 43, type: !10)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ilist", arg: 2, scope: !62, file: !1, line: 44, type: !9)
!66 = !DISubprogram(name: "ChvList_addObjectToList", scope: !1, file: !1, line: 74, type: !67, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ChvList*, %struct._Chv*, i32)* @ChvList_addObjectToList, variables: !69)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !10, !18, !9}
!69 = !{!70, !71, !72}
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chvlist", arg: 1, scope: !66, file: !1, line: 75, type: !10)
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chv", arg: 2, scope: !66, file: !1, line: 76, type: !18)
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ilist", arg: 3, scope: !66, file: !1, line: 77, type: !9)
!73 = !DISubprogram(name: "ChvList_getList", scope: !1, file: !1, line: 146, type: !74, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Chv* (%struct._ChvList*, i32)* @ChvList_getList, variables: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{!18, !10, !9}
!76 = !{!77, !78, !79}
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chvlist", arg: 1, scope: !73, file: !1, line: 147, type: !10)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ilist", arg: 2, scope: !73, file: !1, line: 148, type: !9)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chv", scope: !73, file: !1, line: 150, type: !18)
!80 = !{i32 2, !"Dwarf Version", i32 2}
!81 = !{i32 2, !"Debug Info Version", i32 700000003}
!82 = !{i32 1, !"PIC Level", i32 2}
!83 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!84 = !DIExpression()
!85 = !DILocation(line: 18, column: 15, scope: !6)
!86 = !DILocation(line: 19, column: 14, scope: !6)
!87 = !DILocation(line: 26, column: 14, scope: !88)
!88 = distinct !DILexicalBlock(scope: !6, file: !1, line: 26, column: 6)
!89 = !DILocation(line: 26, column: 31, scope: !88)
!90 = !DILocation(line: 26, column: 22, scope: !88)
!91 = !DILocation(line: 26, column: 56, scope: !88)
!92 = !{!93, !94, i64 0}
!93 = !{!"_ChvList", !94, i64 0, !97, i64 8, !97, i64 16, !97, i64 24, !97, i64 32, !94, i64 40}
!94 = !{!"int", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !{!"any pointer", !95, i64 0}
!98 = !DILocation(line: 26, column: 44, scope: !88)
!99 = !DILocation(line: 26, column: 6, scope: !6)
!100 = !DILocation(line: 27, column: 12, scope: !101)
!101 = distinct !DILexicalBlock(scope: !88, file: !1, line: 26, column: 64)
!102 = !{!97, !97, i64 0}
!103 = !DILocation(line: 27, column: 4, scope: !101)
!104 = !DILocation(line: 29, column: 1, scope: !101)
!105 = !DILocation(line: 30, column: 8, scope: !6)
!106 = !DILocation(line: 30, column: 17, scope: !6)
!107 = !{!93, !97, i64 8}
!108 = !DILocation(line: 30, column: 30, scope: !6)
!109 = !DILocation(line: 30, column: 1, scope: !6)
!110 = !DILocation(line: 43, column: 15, scope: !62)
!111 = !DILocation(line: 44, column: 14, scope: !62)
!112 = !DILocation(line: 51, column: 14, scope: !113)
!113 = distinct !DILexicalBlock(scope: !62, file: !1, line: 51, column: 6)
!114 = !DILocation(line: 51, column: 31, scope: !113)
!115 = !DILocation(line: 51, column: 22, scope: !113)
!116 = !DILocation(line: 51, column: 56, scope: !113)
!117 = !DILocation(line: 51, column: 44, scope: !113)
!118 = !DILocation(line: 51, column: 6, scope: !62)
!119 = !DILocation(line: 52, column: 12, scope: !120)
!120 = distinct !DILexicalBlock(scope: !113, file: !1, line: 51, column: 64)
!121 = !DILocation(line: 52, column: 4, scope: !120)
!122 = !DILocation(line: 54, column: 1, scope: !120)
!123 = !DILocation(line: 55, column: 15, scope: !124)
!124 = distinct !DILexicalBlock(scope: !62, file: !1, line: 55, column: 6)
!125 = !{!93, !97, i64 16}
!126 = !DILocation(line: 55, column: 22, scope: !124)
!127 = !DILocation(line: 55, column: 6, scope: !62)
!128 = !DILocation(line: 58, column: 11, scope: !129)
!129 = distinct !DILexicalBlock(scope: !124, file: !1, line: 57, column: 8)
!130 = !{!94, !94, i64 0}
!131 = !DILocation(line: 58, column: 34, scope: !129)
!132 = !DILocation(line: 58, column: 4, scope: !129)
!133 = !DILocation(line: 60, column: 1, scope: !62)
!134 = !DILocation(line: 75, column: 15, scope: !66)
!135 = !DILocation(line: 76, column: 15, scope: !66)
!136 = !DILocation(line: 77, column: 14, scope: !66)
!137 = !DILocation(line: 84, column: 14, scope: !138)
!138 = distinct !DILexicalBlock(scope: !66, file: !1, line: 84, column: 6)
!139 = !DILocation(line: 84, column: 31, scope: !138)
!140 = !DILocation(line: 84, column: 22, scope: !138)
!141 = !DILocation(line: 84, column: 56, scope: !138)
!142 = !DILocation(line: 84, column: 44, scope: !138)
!143 = !DILocation(line: 84, column: 6, scope: !66)
!144 = !DILocation(line: 85, column: 12, scope: !145)
!145 = distinct !DILexicalBlock(scope: !138, file: !1, line: 84, column: 64)
!146 = !DILocation(line: 85, column: 4, scope: !145)
!147 = !DILocation(line: 88, column: 4, scope: !145)
!148 = !DILocation(line: 95, column: 15, scope: !149)
!149 = distinct !DILexicalBlock(scope: !66, file: !1, line: 95, column: 6)
!150 = !{!93, !97, i64 24}
!151 = !DILocation(line: 95, column: 20, scope: !149)
!152 = !DILocation(line: 96, column: 4, scope: !149)
!153 = !DILocation(line: 96, column: 17, scope: !149)
!154 = !{!93, !97, i64 32}
!155 = !DILocation(line: 96, column: 23, scope: !149)
!156 = !DILocation(line: 96, column: 31, scope: !149)
!157 = !DILocation(line: 96, column: 34, scope: !149)
!158 = !{!95, !95, i64 0}
!159 = !DILocation(line: 96, column: 56, scope: !149)
!160 = !DILocation(line: 95, column: 6, scope: !66)
!161 = !DILocation(line: 103, column: 4, scope: !162)
!162 = distinct !DILexicalBlock(scope: !149, file: !1, line: 96, column: 67)
!163 = !DILocation(line: 104, column: 13, scope: !164)
!164 = distinct !DILexicalBlock(scope: !162, file: !1, line: 104, column: 9)
!165 = !DILocation(line: 104, column: 9, scope: !162)
!166 = !DILocation(line: 105, column: 19, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !1, line: 104, column: 23)
!168 = !DILocation(line: 105, column: 28, scope: !167)
!169 = !DILocation(line: 105, column: 12, scope: !167)
!170 = !DILocation(line: 105, column: 17, scope: !167)
!171 = !{!172, !97, i64 72}
!172 = !{!"_Chv", !94, i64 0, !94, i64 4, !94, i64 8, !94, i64 12, !94, i64 16, !94, i64 20, !97, i64 24, !97, i64 32, !97, i64 40, !173, i64 48, !97, i64 72}
!173 = !{!"_DV", !94, i64 0, !94, i64 4, !94, i64 8, !97, i64 16}
!174 = !DILocation(line: 106, column: 29, scope: !167)
!175 = !DILocation(line: 107, column: 4, scope: !167)
!176 = !DILocation(line: 108, column: 18, scope: !177)
!177 = distinct !DILexicalBlock(scope: !162, file: !1, line: 108, column: 9)
!178 = !DILocation(line: 108, column: 25, scope: !177)
!179 = !DILocation(line: 108, column: 9, scope: !162)
!180 = !DILocation(line: 109, column: 7, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 108, column: 35)
!182 = !DILocation(line: 109, column: 29, scope: !181)
!183 = !DILocation(line: 110, column: 4, scope: !181)
!184 = !DILocation(line: 111, column: 13, scope: !162)
!185 = !DILocation(line: 111, column: 19, scope: !162)
!186 = !{!93, !94, i64 40}
!187 = !DILocation(line: 112, column: 25, scope: !162)
!188 = !DILocation(line: 112, column: 4, scope: !162)
!189 = !DILocation(line: 113, column: 1, scope: !162)
!190 = !DILocation(line: 120, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 120, column: 9)
!192 = distinct !DILexicalBlock(scope: !149, file: !1, line: 113, column: 8)
!193 = !DILocation(line: 120, column: 9, scope: !192)
!194 = !DILocation(line: 121, column: 19, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !1, line: 120, column: 23)
!196 = !DILocation(line: 121, column: 28, scope: !195)
!197 = !DILocation(line: 121, column: 12, scope: !195)
!198 = !DILocation(line: 121, column: 17, scope: !195)
!199 = !DILocation(line: 122, column: 29, scope: !195)
!200 = !DILocation(line: 123, column: 4, scope: !195)
!201 = !DILocation(line: 124, column: 18, scope: !202)
!202 = distinct !DILexicalBlock(scope: !192, file: !1, line: 124, column: 9)
!203 = !DILocation(line: 124, column: 25, scope: !202)
!204 = !DILocation(line: 124, column: 9, scope: !192)
!205 = !DILocation(line: 125, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !1, line: 124, column: 35)
!207 = !DILocation(line: 125, column: 29, scope: !206)
!208 = !DILocation(line: 126, column: 4, scope: !206)
!209 = !DILocation(line: 134, column: 1, scope: !66)
!210 = !DILocation(line: 147, column: 15, scope: !73)
!211 = !DILocation(line: 148, column: 14, scope: !73)
!212 = !DILocation(line: 156, column: 14, scope: !213)
!213 = distinct !DILexicalBlock(scope: !73, file: !1, line: 156, column: 6)
!214 = !DILocation(line: 156, column: 31, scope: !213)
!215 = !DILocation(line: 156, column: 22, scope: !213)
!216 = !DILocation(line: 156, column: 56, scope: !213)
!217 = !DILocation(line: 156, column: 44, scope: !213)
!218 = !DILocation(line: 156, column: 6, scope: !73)
!219 = !DILocation(line: 157, column: 12, scope: !220)
!220 = distinct !DILexicalBlock(scope: !213, file: !1, line: 156, column: 64)
!221 = !DILocation(line: 157, column: 4, scope: !220)
!222 = !DILocation(line: 160, column: 4, scope: !220)
!223 = !DILocation(line: 166, column: 6, scope: !224)
!224 = distinct !DILexicalBlock(scope: !73, file: !1, line: 166, column: 6)
!225 = !DILocation(line: 166, column: 15, scope: !224)
!226 = !DILocation(line: 166, column: 28, scope: !224)
!227 = !DILocation(line: 166, column: 6, scope: !73)
!228 = !DILocation(line: 167, column: 18, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 167, column: 9)
!230 = distinct !DILexicalBlock(scope: !224, file: !1, line: 166, column: 38)
!231 = !DILocation(line: 167, column: 23, scope: !229)
!232 = !DILocation(line: 168, column: 6, scope: !229)
!233 = !DILocation(line: 168, column: 19, scope: !229)
!234 = !DILocation(line: 168, column: 25, scope: !229)
!235 = !DILocation(line: 168, column: 33, scope: !229)
!236 = !DILocation(line: 168, column: 36, scope: !229)
!237 = !DILocation(line: 168, column: 58, scope: !229)
!238 = !DILocation(line: 169, column: 6, scope: !229)
!239 = !DILocation(line: 169, column: 19, scope: !229)
!240 = !DILocation(line: 169, column: 26, scope: !229)
!241 = !DILocation(line: 169, column: 34, scope: !229)
!242 = !DILocation(line: 169, column: 37, scope: !229)
!243 = !DILocation(line: 169, column: 60, scope: !229)
!244 = !DILocation(line: 167, column: 9, scope: !230)
!245 = !DILocation(line: 150, column: 8, scope: !73)
!246 = !DILocation(line: 176, column: 29, scope: !247)
!247 = distinct !DILexicalBlock(scope: !229, file: !1, line: 169, column: 68)
!248 = !DILocation(line: 177, column: 4, scope: !247)
!249 = !DILocation(line: 183, column: 7, scope: !250)
!250 = distinct !DILexicalBlock(scope: !229, file: !1, line: 177, column: 11)
!251 = !DILocation(line: 184, column: 22, scope: !250)
!252 = !DILocation(line: 184, column: 13, scope: !250)
!253 = !DILocation(line: 185, column: 29, scope: !250)
!254 = !DILocation(line: 186, column: 16, scope: !250)
!255 = !DILocation(line: 186, column: 22, scope: !250)
!256 = !DILocation(line: 187, column: 28, scope: !250)
!257 = !DILocation(line: 187, column: 7, scope: !250)
!258 = !DILocation(line: 196, column: 1, scope: !73)
