; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in IVL_init1(%p,%d,%d)\0A bad input\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"\0A fatal error in IVL_init2(%p,%d,%d,%d)\0A bad input\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str3 = private unnamed_addr constant [85 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"\0A fatal error in IVL_init3(%p,%d,%d,%p)\0A bad input\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"\0A fatal error in IVL_setMaxnlist(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [49 x i8] c"\0A fatal error in IVL_setNlist(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @IVL_init1(%struct._IVL* %ivl, i32 %type, i32 %maxnlist) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !36, metadata !74), !dbg !75
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !37, metadata !74), !dbg !76
  tail call void @llvm.dbg.value(metadata i32 %maxnlist, i64 0, metadata !38, metadata !74), !dbg !77
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !78
  br i1 %1, label %5, label %2, !dbg !80

; <label>:2                                       ; preds = %0
  %type.off = add i32 %type, -1, !dbg !81
  %type.cmp = icmp ugt i32 %type.off, 1, !dbg !81
  %3 = icmp ne i32 %type, 3, !dbg !82
  %or.cond3 = and i1 %3, %type.cmp, !dbg !81
  %4 = icmp slt i32 %maxnlist, 0, !dbg !83
  %or.cond5 = or i1 %4, %or.cond3, !dbg !81
  br i1 %or.cond5, label %5, label %8, !dbg !81

; <label>:5                                       ; preds = %2, %0
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !84, !tbaa !86
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._IVL* %ivl, i32 %type, i32 %maxnlist) #5, !dbg !90
  tail call void @exit(i32 -1) #6, !dbg !91
  unreachable, !dbg !91

; <label>:8                                       ; preds = %2
  tail call void @IVL_clearData(%struct._IVL* %ivl) #5, !dbg !92
  %9 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0, !dbg !93
  store i32 %type, i32* %9, align 4, !dbg !94, !tbaa !95
  %10 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1, !dbg !98
  store i32 %maxnlist, i32* %10, align 4, !dbg !99, !tbaa !100
  %11 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2, !dbg !101
  store i32 %maxnlist, i32* %11, align 4, !dbg !102, !tbaa !103
  %12 = icmp sgt i32 %maxnlist, 0, !dbg !104
  br i1 %12, label %13, label %18, !dbg !106

; <label>:13                                      ; preds = %8
  %14 = tail call i32* @IVinit(i32 %maxnlist, i32 0) #5, !dbg !107
  %15 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4, !dbg !109
  store i32* %14, i32** %15, align 8, !dbg !110, !tbaa !111
  %16 = tail call i32** @PIVinit(i32 %maxnlist) #5, !dbg !112
  %17 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5, !dbg !113
  store i32** %16, i32*** %17, align 8, !dbg !114, !tbaa !115
  br label %18, !dbg !116

; <label>:18                                      ; preds = %13, %8
  ret void, !dbg !117
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @IVL_clearData(%struct._IVL*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32** @PIVinit(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @IVL_init2(%struct._IVL* %ivl, i32 %type, i32 %maxnlist, i32 %tsize) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !43, metadata !74), !dbg !118
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !44, metadata !74), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %maxnlist, i64 0, metadata !45, metadata !74), !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %tsize, i64 0, metadata !46, metadata !74), !dbg !121
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !122
  %2 = icmp ne i32 %type, 1, !dbg !124
  %or.cond = or i1 %1, %2, !dbg !125
  %3 = icmp slt i32 %maxnlist, 0, !dbg !126
  %or.cond3 = or i1 %or.cond, %3, !dbg !125
  br i1 %or.cond3, label %4, label %7, !dbg !125

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !127, !tbaa !86
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), %struct._IVL* %ivl, i32 %type, i32 %maxnlist, i32 %tsize) #5, !dbg !129
  tail call void @exit(i32 -1) #6, !dbg !130
  unreachable, !dbg !130

; <label>:7                                       ; preds = %0
  tail call void @IVL_init1(%struct._IVL* %ivl, i32 1, i32 %maxnlist) #7, !dbg !131
  %8 = icmp sgt i32 %tsize, 0, !dbg !132
  br i1 %8, label %9, label %25, !dbg !134

; <label>:9                                       ; preds = %7
  %10 = tail call i8* @malloc(i64 24) #5, !dbg !135
  %11 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7, !dbg !135
  %12 = bitcast %struct._Ichunk** %11 to i8**, !dbg !135
  store i8* %10, i8** %12, align 8, !dbg !135, !tbaa !140
  %13 = icmp eq i8* %10, null, !dbg !135
  br i1 %13, label %14, label %17, !dbg !141

; <label>:14                                      ; preds = %9
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !142, !tbaa !86
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 24, i32 93, i8* getelementptr inbounds ([85 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !142
  tail call void @exit(i32 -1) #6, !dbg !142
  unreachable, !dbg !142

; <label>:17                                      ; preds = %9
  %18 = bitcast i8* %10 to i32*, !dbg !144
  store i32 %tsize, i32* %18, align 4, !dbg !145, !tbaa !146
  %19 = getelementptr inbounds i8* %10, i64 4, !dbg !148
  %20 = bitcast i8* %19 to i32*, !dbg !148
  store i32 0, i32* %20, align 4, !dbg !149, !tbaa !150
  %21 = tail call i32* @IVinit(i32 %tsize, i32 -1) #5, !dbg !151
  %22 = load %struct._Ichunk** %11, align 8, !dbg !152, !tbaa !140
  %23 = getelementptr inbounds %struct._Ichunk* %22, i64 0, i32 2, !dbg !153
  store i32* %21, i32** %23, align 8, !dbg !154, !tbaa !155
  %24 = getelementptr inbounds %struct._Ichunk* %22, i64 0, i32 3, !dbg !156
  store %struct._Ichunk* null, %struct._Ichunk** %24, align 8, !dbg !157, !tbaa !158
  br label %25, !dbg !159

; <label>:25                                      ; preds = %17, %7
  ret void, !dbg !160
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @IVL_init3(%struct._IVL* %ivl, i32 %type, i32 %maxnlist, i32* %sizes) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !51, metadata !74), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !52, metadata !74), !dbg !162
  tail call void @llvm.dbg.value(metadata i32 %maxnlist, i64 0, metadata !53, metadata !74), !dbg !163
  tail call void @llvm.dbg.value(metadata i32* %sizes, i64 0, metadata !54, metadata !74), !dbg !164
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !165
  br i1 %1, label %5, label %2, !dbg !167

; <label>:2                                       ; preds = %0
  %type.off = add i32 %type, -1, !dbg !168
  %type.cmp = icmp ugt i32 %type.off, 1, !dbg !168
  %3 = icmp slt i32 %maxnlist, 0, !dbg !169
  %or.cond3 = or i1 %type.cmp, %3, !dbg !168
  %4 = icmp eq i32* %sizes, null, !dbg !170
  %or.cond5 = or i1 %or.cond3, %4, !dbg !168
  br i1 %or.cond5, label %5, label %8, !dbg !168

; <label>:5                                       ; preds = %2, %0
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !171, !tbaa !86
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), %struct._IVL* %ivl, i32 %type, i32 %maxnlist, i32* %sizes) #5, !dbg !173
  tail call void @exit(i32 -1) #6, !dbg !174
  unreachable, !dbg !174

; <label>:8                                       ; preds = %2
  switch i32 %type, label %.preheader [
    i32 2, label %9
    i32 1, label %10
  ], !dbg !175

; <label>:9                                       ; preds = %8
  tail call void @IVL_init1(%struct._IVL* %ivl, i32 2, i32 %maxnlist) #7, !dbg !176
  br label %.preheader, !dbg !178

; <label>:10                                      ; preds = %8
  %11 = tail call i32 @IVsum(i32 %maxnlist, i32* %sizes) #5, !dbg !179
  tail call void @IVL_init2(%struct._IVL* %ivl, i32 1, i32 %maxnlist, i32 %11) #7, !dbg !180
  br label %.preheader, !dbg !181

.preheader:                                       ; preds = %8, %10, %9
  %12 = icmp sgt i32 %maxnlist, 0, !dbg !182
  br i1 %12, label %.lr.ph, label %._crit_edge, !dbg !185

.lr.ph:                                           ; preds = %.preheader
  %13 = add i32 %maxnlist, -1, !dbg !185
  br label %14, !dbg !185

; <label>:14                                      ; preds = %14, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %15 = getelementptr inbounds i32* %sizes, i64 %indvars.iv, !dbg !186
  %16 = load i32* %15, align 4, !dbg !186, !tbaa !188
  %17 = trunc i64 %indvars.iv to i32, !dbg !189
  tail call void @IVL_setList(%struct._IVL* %ivl, i32 %17, i32 %16, i32* null) #5, !dbg !189
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !185
  %exitcond = icmp eq i32 %17, %13, !dbg !185
  br i1 %exitcond, label %._crit_edge, label %14, !dbg !185

._crit_edge:                                      ; preds = %14, %.preheader
  ret void, !dbg !190
}

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @IVL_setMaxnlist(%struct._IVL* %ivl, i32 %newmaxnlist) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !60, metadata !74), !dbg !191
  tail call void @llvm.dbg.value(metadata i32 %newmaxnlist, i64 0, metadata !61, metadata !74), !dbg !192
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !193
  %2 = icmp slt i32 %newmaxnlist, 0, !dbg !195
  %or.cond = or i1 %1, %2, !dbg !196
  br i1 %or.cond, label %3, label %6, !dbg !196

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !197, !tbaa !86
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), %struct._IVL* %ivl, i32 %newmaxnlist) #5, !dbg !199
  tail call void @exit(i32 -1) #6, !dbg !200
  unreachable, !dbg !200

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1, !dbg !201
  %8 = load i32* %7, align 4, !dbg !201, !tbaa !100
  %9 = icmp eq i32 %8, %newmaxnlist, !dbg !202
  br i1 %9, label %42, label %10, !dbg !203

; <label>:10                                      ; preds = %6
  %11 = tail call i32* @IVinit(i32 %newmaxnlist, i32 0) #5, !dbg !204
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !62, metadata !74), !dbg !205
  %12 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4, !dbg !206
  %13 = load i32** %12, align 8, !dbg !206, !tbaa !111
  %14 = icmp eq i32* %13, null, !dbg !208
  br i1 %14, label %25, label %15, !dbg !209

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2, !dbg !210
  %17 = load i32* %16, align 4, !dbg !210, !tbaa !103
  %18 = icmp sgt i32 %17, %newmaxnlist, !dbg !213
  br i1 %18, label %19, label %20, !dbg !214

; <label>:19                                      ; preds = %15
  tail call void @IVcopy(i32 %newmaxnlist, i32* %11, i32* %13) #5, !dbg !215
  br label %23, !dbg !217

; <label>:20                                      ; preds = %15
  %21 = icmp sgt i32 %17, 0, !dbg !218
  br i1 %21, label %22, label %23, !dbg !220

; <label>:22                                      ; preds = %20
  tail call void @IVcopy(i32 %17, i32* %11, i32* %13) #5, !dbg !221
  br label %23, !dbg !223

; <label>:23                                      ; preds = %20, %22, %19
  %24 = load i32** %12, align 8, !dbg !224, !tbaa !111
  tail call void @IVfree(i32* %24) #5, !dbg !225
  br label %25, !dbg !226

; <label>:25                                      ; preds = %10, %23
  store i32* %11, i32** %12, align 8, !dbg !227, !tbaa !111
  %26 = tail call i32** @PIVinit(i32 %newmaxnlist) #5, !dbg !228
  tail call void @llvm.dbg.value(metadata i32** %26, i64 0, metadata !65, metadata !74), !dbg !229
  %27 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5, !dbg !230
  %28 = load i32*** %27, align 8, !dbg !230, !tbaa !115
  %29 = icmp eq i32** %28, null, !dbg !232
  %.pre = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2, !dbg !233
  br i1 %29, label %._crit_edge, label %30, !dbg !235

; <label>:30                                      ; preds = %25
  %31 = load i32* %.pre, align 4, !dbg !236, !tbaa !103
  %32 = icmp sgt i32 %31, %newmaxnlist, !dbg !239
  br i1 %32, label %33, label %34, !dbg !240

; <label>:33                                      ; preds = %30
  tail call void @PIVcopy(i32 %newmaxnlist, i32** %26, i32** %28) #5, !dbg !241
  br label %37, !dbg !243

; <label>:34                                      ; preds = %30
  %35 = icmp sgt i32 %31, 0, !dbg !244
  br i1 %35, label %36, label %37, !dbg !246

; <label>:36                                      ; preds = %34
  tail call void @PIVcopy(i32 %31, i32** %26, i32** %28) #5, !dbg !247
  br label %37, !dbg !249

; <label>:37                                      ; preds = %34, %36, %33
  %38 = load i32*** %27, align 8, !dbg !250, !tbaa !115
  tail call void @PIVfree(i32** %38) #5, !dbg !251
  br label %._crit_edge, !dbg !252

._crit_edge:                                      ; preds = %25, %37
  store i32** %26, i32*** %27, align 8, !dbg !253, !tbaa !115
  store i32 %newmaxnlist, i32* %7, align 4, !dbg !254, !tbaa !100
  %39 = load i32* %.pre, align 4, !dbg !233, !tbaa !103
  %40 = icmp sgt i32 %39, %newmaxnlist, !dbg !255
  br i1 %40, label %41, label %42, !dbg !256

; <label>:41                                      ; preds = %._crit_edge
  store i32 %newmaxnlist, i32* %.pre, align 4, !dbg !257, !tbaa !103
  br label %42, !dbg !259

; <label>:42                                      ; preds = %6, %._crit_edge, %41
  ret void, !dbg !260
}

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @PIVcopy(i32, i32**, i32**) #3

; Function Attrs: optsize
declare void @PIVfree(i32**) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @IVL_setNlist(%struct._IVL* %ivl, i32 %newnlist) #0 {
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ivl, i64 0, metadata !68, metadata !74), !dbg !261
  tail call void @llvm.dbg.value(metadata i32 %newnlist, i64 0, metadata !69, metadata !74), !dbg !262
  %1 = icmp eq %struct._IVL* %ivl, null, !dbg !263
  %2 = icmp slt i32 %newnlist, 0, !dbg !265
  %or.cond = or i1 %1, %2, !dbg !266
  br i1 %or.cond, label %3, label %6, !dbg !266

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !267, !tbaa !86
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), %struct._IVL* %ivl, i32 %newnlist) #5, !dbg !269
  tail call void @exit(i32 -1) #6, !dbg !270
  unreachable, !dbg !270

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1, !dbg !271
  %8 = load i32* %7, align 4, !dbg !271, !tbaa !100
  %9 = icmp slt i32 %8, %newnlist, !dbg !273
  br i1 %9, label %10, label %11, !dbg !274

; <label>:10                                      ; preds = %6
  tail call void @IVL_setMaxnlist(%struct._IVL* %ivl, i32 %newnlist) #7, !dbg !275
  br label %11, !dbg !277

; <label>:11                                      ; preds = %10, %6
  %12 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2, !dbg !278
  store i32 %newnlist, i32* %12, align 4, !dbg !279, !tbaa !103
  ret void, !dbg !280
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
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!70, !71, !72}
!llvm.ident = !{!73}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !18, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !17}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !7, line: 102, size: 192, align: 64, elements: !8)
!7 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/../IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !{!9, !11, !12, !14}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6, file: !7, line: 103, baseType: !10, size: 32, align: 32)
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !6, file: !7, line: 104, baseType: !10, size: 32, align: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6, file: !7, line: 105, baseType: !13, size: 64, align: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !7, line: 106, baseType: !15, size: 64, align: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !7, line: 56, baseType: !6)
!17 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!18 = !{!19, !39, !47, !56, !66}
!19 = !DISubprogram(name: "IVL_init1", scope: !1, file: !1, line: 17, type: !20, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IVL*, i32, i32)* @IVL_init1, variables: !35)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !10, !10}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !7, line: 55, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !7, line: 79, size: 384, align: 64, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !33, !34}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !7, line: 80, baseType: !10, size: 32, align: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !24, file: !7, line: 81, baseType: !10, size: 32, align: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !24, file: !7, line: 82, baseType: !10, size: 32, align: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !24, file: !7, line: 83, baseType: !10, size: 32, align: 32, offset: 96)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !24, file: !7, line: 84, baseType: !13, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !24, file: !7, line: 85, baseType: !32, size: 64, align: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !24, file: !7, line: 86, baseType: !10, size: 32, align: 32, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !24, file: !7, line: 87, baseType: !15, size: 64, align: 64, offset: 320)
!35 = !{!36, !37, !38}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !19, file: !1, line: 18, type: !22)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !19, file: !1, line: 19, type: !10)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxnlist", arg: 3, scope: !19, file: !1, line: 20, type: !10)
!39 = !DISubprogram(name: "IVL_init2", scope: !1, file: !1, line: 65, type: !40, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IVL*, i32, i32, i32)* @IVL_init2, variables: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !22, !10, !10, !10}
!42 = !{!43, !44, !45, !46}
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !39, file: !1, line: 66, type: !22)
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !39, file: !1, line: 67, type: !10)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxnlist", arg: 3, scope: !39, file: !1, line: 68, type: !10)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tsize", arg: 4, scope: !39, file: !1, line: 69, type: !10)
!47 = !DISubprogram(name: "IVL_init3", scope: !1, file: !1, line: 111, type: !48, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IVL*, i32, i32, i32*)* @IVL_init3, variables: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !22, !10, !10, !13}
!50 = !{!51, !52, !53, !54, !55}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !47, file: !1, line: 112, type: !22)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !47, file: !1, line: 113, type: !10)
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxnlist", arg: 3, scope: !47, file: !1, line: 114, type: !10)
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sizes", arg: 4, scope: !47, file: !1, line: 115, type: !13)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ilist", scope: !47, file: !1, line: 117, type: !10)
!56 = !DISubprogram(name: "IVL_setMaxnlist", scope: !1, file: !1, line: 170, type: !57, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IVL*, i32)* @IVL_setMaxnlist, variables: !59)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !22, !10}
!59 = !{!60, !61, !62, !65}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !56, file: !1, line: 171, type: !22)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newmaxnlist", arg: 2, scope: !56, file: !1, line: 172, type: !10)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ivec", scope: !63, file: !1, line: 180, type: !13)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 179, column: 37)
!64 = distinct !DILexicalBlock(scope: !56, file: !1, line: 179, column: 6)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pivec", scope: !63, file: !1, line: 180, type: !32)
!66 = !DISubprogram(name: "IVL_setNlist", scope: !1, file: !1, line: 234, type: !57, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IVL*, i32)* @IVL_setNlist, variables: !67)
!67 = !{!68, !69}
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivl", arg: 1, scope: !66, file: !1, line: 235, type: !22)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newnlist", arg: 2, scope: !66, file: !1, line: 236, type: !10)
!70 = !{i32 2, !"Dwarf Version", i32 2}
!71 = !{i32 2, !"Debug Info Version", i32 700000003}
!72 = !{i32 1, !"PIC Level", i32 2}
!73 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!74 = !DIExpression()
!75 = !DILocation(line: 18, column: 11, scope: !19)
!76 = !DILocation(line: 19, column: 10, scope: !19)
!77 = !DILocation(line: 20, column: 10, scope: !19)
!78 = !DILocation(line: 27, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !19, file: !1, line: 27, column: 6)
!80 = !DILocation(line: 28, column: 3, scope: !79)
!81 = !DILocation(line: 28, column: 27, scope: !79)
!82 = !DILocation(line: 28, column: 55, scope: !79)
!83 = !DILocation(line: 29, column: 15, scope: !79)
!84 = !DILocation(line: 30, column: 12, scope: !85)
!85 = distinct !DILexicalBlock(scope: !79, file: !1, line: 29, column: 21)
!86 = !{!87, !87, i64 0}
!87 = !{!"any pointer", !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !DILocation(line: 30, column: 4, scope: !85)
!91 = !DILocation(line: 32, column: 4, scope: !85)
!92 = !DILocation(line: 39, column: 1, scope: !19)
!93 = !DILocation(line: 45, column: 6, scope: !19)
!94 = !DILocation(line: 45, column: 15, scope: !19)
!95 = !{!96, !97, i64 0}
!96 = !{!"_IVL", !97, i64 0, !97, i64 4, !97, i64 8, !97, i64 12, !87, i64 16, !87, i64 24, !97, i64 32, !87, i64 40}
!97 = !{!"int", !88, i64 0}
!98 = !DILocation(line: 46, column: 6, scope: !19)
!99 = !DILocation(line: 46, column: 15, scope: !19)
!100 = !{!96, !97, i64 4}
!101 = !DILocation(line: 47, column: 6, scope: !19)
!102 = !DILocation(line: 47, column: 15, scope: !19)
!103 = !{!96, !97, i64 8}
!104 = !DILocation(line: 48, column: 15, scope: !105)
!105 = distinct !DILexicalBlock(scope: !19, file: !1, line: 48, column: 6)
!106 = !DILocation(line: 48, column: 6, scope: !19)
!107 = !DILocation(line: 49, column: 17, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 48, column: 21)
!109 = !DILocation(line: 49, column: 9, scope: !108)
!110 = !DILocation(line: 49, column: 15, scope: !108)
!111 = !{!96, !87, i64 16}
!112 = !DILocation(line: 50, column: 17, scope: !108)
!113 = !DILocation(line: 50, column: 9, scope: !108)
!114 = !DILocation(line: 50, column: 15, scope: !108)
!115 = !{!96, !87, i64 24}
!116 = !DILocation(line: 51, column: 1, scope: !108)
!117 = !DILocation(line: 53, column: 1, scope: !19)
!118 = !DILocation(line: 66, column: 11, scope: !39)
!119 = !DILocation(line: 67, column: 10, scope: !39)
!120 = !DILocation(line: 68, column: 10, scope: !39)
!121 = !DILocation(line: 69, column: 10, scope: !39)
!122 = !DILocation(line: 76, column: 10, scope: !123)
!123 = distinct !DILexicalBlock(scope: !39, file: !1, line: 76, column: 6)
!124 = !DILocation(line: 76, column: 26, scope: !123)
!125 = !DILocation(line: 76, column: 18, scope: !123)
!126 = !DILocation(line: 76, column: 53, scope: !123)
!127 = !DILocation(line: 77, column: 12, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !1, line: 76, column: 59)
!129 = !DILocation(line: 77, column: 4, scope: !128)
!130 = !DILocation(line: 79, column: 4, scope: !128)
!131 = !DILocation(line: 86, column: 1, scope: !39)
!132 = !DILocation(line: 92, column: 12, scope: !133)
!133 = distinct !DILexicalBlock(scope: !39, file: !1, line: 92, column: 6)
!134 = !DILocation(line: 92, column: 6, scope: !39)
!135 = !DILocation(line: 93, column: 4, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 93, column: 4)
!137 = distinct !DILexicalBlock(scope: !138, file: !1, line: 93, column: 4)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 93, column: 4)
!139 = distinct !DILexicalBlock(scope: !133, file: !1, line: 92, column: 18)
!140 = !{!96, !87, i64 40}
!141 = !DILocation(line: 93, column: 4, scope: !137)
!142 = !DILocation(line: 93, column: 4, scope: !143)
!143 = distinct !DILexicalBlock(scope: !136, file: !1, line: 93, column: 4)
!144 = !DILocation(line: 94, column: 16, scope: !139)
!145 = !DILocation(line: 94, column: 22, scope: !139)
!146 = !{!147, !97, i64 0}
!147 = !{!"_Ichunk", !97, i64 0, !97, i64 4, !87, i64 8, !87, i64 16}
!148 = !DILocation(line: 95, column: 16, scope: !139)
!149 = !DILocation(line: 95, column: 22, scope: !139)
!150 = !{!147, !97, i64 4}
!151 = !DILocation(line: 96, column: 24, scope: !139)
!152 = !DILocation(line: 96, column: 9, scope: !139)
!153 = !DILocation(line: 96, column: 16, scope: !139)
!154 = !DILocation(line: 96, column: 22, scope: !139)
!155 = !{!147, !87, i64 8}
!156 = !DILocation(line: 97, column: 16, scope: !139)
!157 = !DILocation(line: 97, column: 22, scope: !139)
!158 = !{!147, !87, i64 16}
!159 = !DILocation(line: 98, column: 1, scope: !139)
!160 = !DILocation(line: 99, column: 1, scope: !39)
!161 = !DILocation(line: 112, column: 11, scope: !47)
!162 = !DILocation(line: 113, column: 10, scope: !47)
!163 = !DILocation(line: 114, column: 10, scope: !47)
!164 = !DILocation(line: 115, column: 10, scope: !47)
!165 = !DILocation(line: 123, column: 10, scope: !166)
!166 = distinct !DILexicalBlock(scope: !47, file: !1, line: 123, column: 6)
!167 = !DILocation(line: 123, column: 18, scope: !166)
!168 = !DILocation(line: 123, column: 42, scope: !166)
!169 = !DILocation(line: 124, column: 15, scope: !166)
!170 = !DILocation(line: 124, column: 28, scope: !166)
!171 = !DILocation(line: 125, column: 12, scope: !172)
!172 = distinct !DILexicalBlock(scope: !166, file: !1, line: 124, column: 38)
!173 = !DILocation(line: 125, column: 4, scope: !172)
!174 = !DILocation(line: 128, column: 4, scope: !172)
!175 = !DILocation(line: 130, column: 1, scope: !47)
!176 = !DILocation(line: 137, column: 4, scope: !177)
!177 = distinct !DILexicalBlock(scope: !47, file: !1, line: 130, column: 17)
!178 = !DILocation(line: 138, column: 4, scope: !177)
!179 = !DILocation(line: 145, column: 35, scope: !177)
!180 = !DILocation(line: 145, column: 4, scope: !177)
!181 = !DILocation(line: 146, column: 4, scope: !177)
!182 = !DILocation(line: 153, column: 25, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 153, column: 1)
!184 = distinct !DILexicalBlock(scope: !47, file: !1, line: 153, column: 1)
!185 = !DILocation(line: 153, column: 1, scope: !184)
!186 = !DILocation(line: 154, column: 28, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 153, column: 48)
!188 = !{!97, !97, i64 0}
!189 = !DILocation(line: 154, column: 4, scope: !187)
!190 = !DILocation(line: 157, column: 1, scope: !47)
!191 = !DILocation(line: 171, column: 11, scope: !56)
!192 = !DILocation(line: 172, column: 10, scope: !56)
!193 = !DILocation(line: 174, column: 10, scope: !194)
!194 = distinct !DILexicalBlock(scope: !56, file: !1, line: 174, column: 6)
!195 = !DILocation(line: 174, column: 33, scope: !194)
!196 = !DILocation(line: 174, column: 18, scope: !194)
!197 = !DILocation(line: 175, column: 12, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !1, line: 174, column: 39)
!199 = !DILocation(line: 175, column: 4, scope: !198)
!200 = !DILocation(line: 177, column: 4, scope: !198)
!201 = !DILocation(line: 179, column: 26, scope: !64)
!202 = !DILocation(line: 179, column: 18, scope: !64)
!203 = !DILocation(line: 179, column: 6, scope: !56)
!204 = !DILocation(line: 186, column: 11, scope: !63)
!205 = !DILocation(line: 180, column: 11, scope: !63)
!206 = !DILocation(line: 187, column: 14, scope: !207)
!207 = distinct !DILexicalBlock(scope: !63, file: !1, line: 187, column: 9)
!208 = !DILocation(line: 187, column: 20, scope: !207)
!209 = !DILocation(line: 187, column: 9, scope: !63)
!210 = !DILocation(line: 188, column: 17, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !1, line: 188, column: 12)
!212 = distinct !DILexicalBlock(scope: !207, file: !1, line: 187, column: 30)
!213 = !DILocation(line: 188, column: 23, scope: !211)
!214 = !DILocation(line: 188, column: 12, scope: !212)
!215 = !DILocation(line: 189, column: 10, scope: !216)
!216 = distinct !DILexicalBlock(scope: !211, file: !1, line: 188, column: 39)
!217 = !DILocation(line: 190, column: 7, scope: !216)
!218 = !DILocation(line: 190, column: 30, scope: !219)
!219 = distinct !DILexicalBlock(scope: !211, file: !1, line: 190, column: 19)
!220 = !DILocation(line: 190, column: 19, scope: !211)
!221 = !DILocation(line: 191, column: 10, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !1, line: 190, column: 36)
!223 = !DILocation(line: 192, column: 7, scope: !222)
!224 = !DILocation(line: 193, column: 19, scope: !212)
!225 = !DILocation(line: 193, column: 7, scope: !212)
!226 = !DILocation(line: 194, column: 4, scope: !212)
!227 = !DILocation(line: 195, column: 15, scope: !63)
!228 = !DILocation(line: 201, column: 12, scope: !63)
!229 = !DILocation(line: 180, column: 19, scope: !63)
!230 = !DILocation(line: 202, column: 14, scope: !231)
!231 = distinct !DILexicalBlock(scope: !63, file: !1, line: 202, column: 9)
!232 = !DILocation(line: 202, column: 20, scope: !231)
!233 = !DILocation(line: 217, column: 14, scope: !234)
!234 = distinct !DILexicalBlock(scope: !63, file: !1, line: 217, column: 9)
!235 = !DILocation(line: 202, column: 9, scope: !63)
!236 = !DILocation(line: 203, column: 17, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 203, column: 12)
!238 = distinct !DILexicalBlock(scope: !231, file: !1, line: 202, column: 30)
!239 = !DILocation(line: 203, column: 23, scope: !237)
!240 = !DILocation(line: 203, column: 12, scope: !238)
!241 = !DILocation(line: 204, column: 10, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 203, column: 39)
!243 = !DILocation(line: 205, column: 7, scope: !242)
!244 = !DILocation(line: 205, column: 30, scope: !245)
!245 = distinct !DILexicalBlock(scope: !237, file: !1, line: 205, column: 19)
!246 = !DILocation(line: 205, column: 19, scope: !237)
!247 = !DILocation(line: 206, column: 10, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !1, line: 205, column: 36)
!249 = !DILocation(line: 207, column: 7, scope: !248)
!250 = !DILocation(line: 208, column: 20, scope: !238)
!251 = !DILocation(line: 208, column: 7, scope: !238)
!252 = !DILocation(line: 209, column: 4, scope: !238)
!253 = !DILocation(line: 210, column: 15, scope: !63)
!254 = !DILocation(line: 216, column: 18, scope: !63)
!255 = !DILocation(line: 217, column: 20, scope: !234)
!256 = !DILocation(line: 217, column: 9, scope: !63)
!257 = !DILocation(line: 218, column: 18, scope: !258)
!258 = distinct !DILexicalBlock(scope: !234, file: !1, line: 217, column: 36)
!259 = !DILocation(line: 219, column: 4, scope: !258)
!260 = !DILocation(line: 221, column: 1, scope: !56)
!261 = !DILocation(line: 235, column: 11, scope: !66)
!262 = !DILocation(line: 236, column: 10, scope: !66)
!263 = !DILocation(line: 238, column: 10, scope: !264)
!264 = distinct !DILexicalBlock(scope: !66, file: !1, line: 238, column: 6)
!265 = !DILocation(line: 238, column: 30, scope: !264)
!266 = !DILocation(line: 238, column: 18, scope: !264)
!267 = !DILocation(line: 239, column: 12, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !1, line: 238, column: 36)
!269 = !DILocation(line: 239, column: 4, scope: !268)
!270 = !DILocation(line: 241, column: 4, scope: !268)
!271 = !DILocation(line: 243, column: 22, scope: !272)
!272 = distinct !DILexicalBlock(scope: !66, file: !1, line: 243, column: 6)
!273 = !DILocation(line: 243, column: 15, scope: !272)
!274 = !DILocation(line: 243, column: 6, scope: !66)
!275 = !DILocation(line: 249, column: 4, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !1, line: 243, column: 33)
!277 = !DILocation(line: 250, column: 1, scope: !276)
!278 = !DILocation(line: 256, column: 6, scope: !66)
!279 = !DILocation(line: 256, column: 12, scope: !66)
!280 = !DILocation(line: 258, column: 1, scope: !66)
