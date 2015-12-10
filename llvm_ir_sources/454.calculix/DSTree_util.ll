; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in DSTree_sizeOf(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DSTree_renumberViaPostOT(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in DSTree_domainWeight(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DSTree_separatorWeight(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DSTree_sizeOf(%struct._DSTree* %dstree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !38, metadata !86), !dbg !87
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !88
  br i1 %1, label %2, label %5, !dbg !90

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !91, !tbaa !93
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._DSTree* null) #5, !dbg !97
  tail call void @exit(i32 -1) #6, !dbg !98
  unreachable, !dbg !98

; <label>:5                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 16, i64 0, metadata !39, metadata !86), !dbg !99
  %6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !100
  %7 = load %struct._Tree** %6, align 8, !dbg !100, !tbaa !102
  %8 = icmp eq %struct._Tree* %7, null, !dbg !104
  br i1 %8, label %12, label %9, !dbg !105

; <label>:9                                       ; preds = %5
  %10 = tail call i32 @Tree_sizeOf(%struct._Tree* %7) #5, !dbg !106
  %11 = add nsw i32 %10, 16, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !39, metadata !86), !dbg !99
  br label %12, !dbg !109

; <label>:12                                      ; preds = %5, %9
  %nbytes.0 = phi i32 [ %11, %9 ], [ 16, %5 ]
  %13 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !110
  %14 = load %struct._IV** %13, align 8, !dbg !110, !tbaa !112
  %15 = icmp eq %struct._IV* %14, null, !dbg !113
  br i1 %15, label %19, label %16, !dbg !114

; <label>:16                                      ; preds = %12
  %17 = tail call i32 @IV_sizeOf(%struct._IV* %14) #5, !dbg !115
  %18 = add nsw i32 %17, %nbytes.0, !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !39, metadata !86), !dbg !99
  br label %19, !dbg !118

; <label>:19                                      ; preds = %12, %16
  %nbytes.1 = phi i32 [ %18, %16 ], [ %nbytes.0, %12 ]
  ret i32 %nbytes.1, !dbg !119
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @Tree_sizeOf(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @IV_sizeOf(%struct._IV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DSTree_renumberViaPostOT(%struct._DSTree* %dstree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !44, metadata !86), !dbg !120
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !121
  br i1 %1, label %20, label %2, !dbg !123

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !124
  %4 = load %struct._Tree** %3, align 8, !dbg !124, !tbaa !102
  tail call void @llvm.dbg.value(metadata %struct._Tree* %4, i64 0, metadata !55, metadata !86), !dbg !125
  %5 = icmp eq %struct._Tree* %4, null, !dbg !126
  br i1 %5, label %20, label %6, !dbg !127

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 0, !dbg !128
  %8 = load i32* %7, align 4, !dbg !128, !tbaa !129
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !48, metadata !86), !dbg !132
  %9 = icmp slt i32 %8, 1, !dbg !133
  br i1 %9, label %20, label %10, !dbg !134

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !135
  %12 = load %struct._IV** %11, align 8, !dbg !135, !tbaa !112
  tail call void @llvm.dbg.value(metadata %struct._IV* %12, i64 0, metadata !54, metadata !86), !dbg !136
  %13 = icmp eq %struct._IV* %12, null, !dbg !137
  br i1 %13, label %20, label %14, !dbg !138

; <label>:14                                      ; preds = %10
  %15 = tail call i32 @IV_size(%struct._IV* %12) #5, !dbg !139
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !49, metadata !86), !dbg !140
  %16 = icmp slt i32 %15, 1, !dbg !141
  br i1 %16, label %20, label %17, !dbg !142

; <label>:17                                      ; preds = %14
  %18 = tail call i32* @IV_entries(%struct._IV* %12) #5, !dbg !143
  tail call void @llvm.dbg.value(metadata i32* %18, i64 0, metadata !52, metadata !86), !dbg !144
  %19 = icmp eq i32* %18, null, !dbg !145
  br i1 %19, label %20, label %23, !dbg !146

; <label>:20                                      ; preds = %17, %14, %10, %6, %2, %0
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !147, !tbaa !93
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !149
  tail call void @exit(i32 -1) #6, !dbg !150
  unreachable, !dbg !150

; <label>:23                                      ; preds = %17
  %24 = tail call i32* @IVinit(i32 %8, i32 -1) #5, !dbg !151
  tail call void @llvm.dbg.value(metadata i32* %24, i64 0, metadata !51, metadata !86), !dbg !152
  %25 = tail call i32* @IVinit(i32 %8, i32 -1) #5, !dbg !153
  tail call void @llvm.dbg.value(metadata i32* %25, i64 0, metadata !53, metadata !86), !dbg !154
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !86), !dbg !155
  %26 = tail call i32 @Tree_postOTfirst(%struct._Tree* %4) #5, !dbg !156
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !46, metadata !86), !dbg !158
  %27 = icmp eq i32 %26, -1, !dbg !159
  br i1 %27, label %.lr.ph12, label %.lr.ph17, !dbg !161

.preheader1:                                      ; preds = %.lr.ph17
  %28 = icmp sgt i32 %8, 0, !dbg !162
  br i1 %28, label %.lr.ph12, label %._crit_edge13.thread, !dbg !165

._crit_edge13.thread:                             ; preds = %.preheader1
  %.phi.trans.insert = getelementptr inbounds %struct._Tree* %4, i64 0, i32 2
  %.pre = load i32** %.phi.trans.insert, align 8, !dbg !166, !tbaa !167
  tail call void @IVcopy(i32 %8, i32* %.pre, i32* %25) #5, !dbg !168
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !46, metadata !86), !dbg !158
  %.phi.trans.insert31 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 3
  %.pre32 = load i32** %.phi.trans.insert31, align 8, !dbg !169, !tbaa !170
  tail call void @IVcopy(i32 %8, i32* %.pre32, i32* %25) #5, !dbg !171
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !46, metadata !86), !dbg !158
  %.phi.trans.insert34 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 4
  %.pre35 = load i32** %.phi.trans.insert34, align 8, !dbg !172, !tbaa !173
  br label %._crit_edge6, !dbg !174

.lr.ph12:                                         ; preds = %23, %.preheader1
  %29 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 2, !dbg !176
  %30 = load i32** %29, align 8, !dbg !176, !tbaa !167
  %31 = add i32 %8, -1, !dbg !165
  br label %37, !dbg !165

.lr.ph17:                                         ; preds = %23, %.lr.ph17
  %count.015 = phi i32 [ %32, %.lr.ph17 ], [ 0, %23 ]
  %J.014 = phi i32 [ %35, %.lr.ph17 ], [ %26, %23 ]
  %32 = add nuw nsw i32 %count.015, 1, !dbg !179
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !45, metadata !86), !dbg !155
  %33 = sext i32 %J.014 to i64, !dbg !181
  %34 = getelementptr inbounds i32* %24, i64 %33, !dbg !181
  store i32 %count.015, i32* %34, align 4, !dbg !182, !tbaa !183
  %35 = tail call i32 @Tree_postOTnext(%struct._Tree* %4, i32 %J.014) #5, !dbg !184
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !46, metadata !86), !dbg !158
  %36 = icmp eq i32 %35, -1, !dbg !159
  br i1 %36, label %.preheader1, label %.lr.ph17, !dbg !161

; <label>:37                                      ; preds = %52, %.lr.ph12
  %indvars.iv26 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next27, %52 ]
  %38 = getelementptr inbounds i32* %30, i64 %indvars.iv26, !dbg !185
  %39 = load i32* %38, align 4, !dbg !185, !tbaa !183
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !47, metadata !86), !dbg !186
  %40 = icmp eq i32 %39, -1, !dbg !187
  %41 = getelementptr inbounds i32* %24, i64 %indvars.iv26
  %42 = load i32* %41, align 4
  br i1 %40, label %49, label %43, !dbg !188

; <label>:43                                      ; preds = %37
  %44 = sext i32 %39 to i64, !dbg !189
  %45 = getelementptr inbounds i32* %24, i64 %44, !dbg !189
  %46 = load i32* %45, align 4, !dbg !189, !tbaa !183
  %47 = sext i32 %42 to i64, !dbg !191
  %48 = getelementptr inbounds i32* %25, i64 %47, !dbg !191
  store i32 %46, i32* %48, align 4, !dbg !192, !tbaa !183
  br label %52, !dbg !193

; <label>:49                                      ; preds = %37
  %50 = sext i32 %42 to i64, !dbg !194
  %51 = getelementptr inbounds i32* %25, i64 %50, !dbg !194
  store i32 -1, i32* %51, align 4, !dbg !196, !tbaa !183
  br label %52

; <label>:52                                      ; preds = %43, %49
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1, !dbg !165
  %lftr.wideiv28 = trunc i64 %indvars.iv26 to i32, !dbg !165
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %31, !dbg !165
  br i1 %exitcond29, label %._crit_edge13, label %37, !dbg !165

._crit_edge13:                                    ; preds = %52
  tail call void @IVcopy(i32 %8, i32* %30, i32* %25) #5, !dbg !168
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !46, metadata !86), !dbg !158
  %53 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 3, !dbg !197
  %54 = load i32** %53, align 8, !dbg !197, !tbaa !170
  %55 = add i32 %8, -1, !dbg !202
  br label %56, !dbg !202

; <label>:56                                      ; preds = %71, %._crit_edge13
  %indvars.iv22 = phi i64 [ 0, %._crit_edge13 ], [ %indvars.iv.next23, %71 ]
  %57 = getelementptr inbounds i32* %54, i64 %indvars.iv22, !dbg !203
  %58 = load i32* %57, align 4, !dbg !203, !tbaa !183
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !47, metadata !86), !dbg !186
  %59 = icmp eq i32 %58, -1, !dbg !204
  %60 = getelementptr inbounds i32* %24, i64 %indvars.iv22
  %61 = load i32* %60, align 4
  br i1 %59, label %68, label %62, !dbg !205

; <label>:62                                      ; preds = %56
  %63 = sext i32 %58 to i64, !dbg !206
  %64 = getelementptr inbounds i32* %24, i64 %63, !dbg !206
  %65 = load i32* %64, align 4, !dbg !206, !tbaa !183
  %66 = sext i32 %61 to i64, !dbg !208
  %67 = getelementptr inbounds i32* %25, i64 %66, !dbg !208
  store i32 %65, i32* %67, align 4, !dbg !209, !tbaa !183
  br label %71, !dbg !210

; <label>:68                                      ; preds = %56
  %69 = sext i32 %61 to i64, !dbg !211
  %70 = getelementptr inbounds i32* %25, i64 %69, !dbg !211
  store i32 -1, i32* %70, align 4, !dbg !213, !tbaa !183
  br label %71

; <label>:71                                      ; preds = %62, %68
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !202
  %lftr.wideiv24 = trunc i64 %indvars.iv22 to i32, !dbg !202
  %exitcond25 = icmp eq i32 %lftr.wideiv24, %55, !dbg !202
  br i1 %exitcond25, label %._crit_edge10, label %56, !dbg !202

._crit_edge10:                                    ; preds = %71
  tail call void @IVcopy(i32 %8, i32* %54, i32* %25) #5, !dbg !171
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !46, metadata !86), !dbg !158
  %72 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 4, !dbg !214
  %73 = load i32** %72, align 8, !dbg !214, !tbaa !173
  %74 = add i32 %8, -1, !dbg !174
  br label %75, !dbg !174

; <label>:75                                      ; preds = %90, %._crit_edge10
  %indvars.iv18 = phi i64 [ 0, %._crit_edge10 ], [ %indvars.iv.next19, %90 ]
  %76 = getelementptr inbounds i32* %73, i64 %indvars.iv18, !dbg !218
  %77 = load i32* %76, align 4, !dbg !218, !tbaa !183
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !47, metadata !86), !dbg !186
  %78 = icmp eq i32 %77, -1, !dbg !219
  %79 = getelementptr inbounds i32* %24, i64 %indvars.iv18
  %80 = load i32* %79, align 4
  br i1 %78, label %87, label %81, !dbg !220

; <label>:81                                      ; preds = %75
  %82 = sext i32 %77 to i64, !dbg !221
  %83 = getelementptr inbounds i32* %24, i64 %82, !dbg !221
  %84 = load i32* %83, align 4, !dbg !221, !tbaa !183
  %85 = sext i32 %80 to i64, !dbg !223
  %86 = getelementptr inbounds i32* %25, i64 %85, !dbg !223
  store i32 %84, i32* %86, align 4, !dbg !224, !tbaa !183
  br label %90, !dbg !225

; <label>:87                                      ; preds = %75
  %88 = sext i32 %80 to i64, !dbg !226
  %89 = getelementptr inbounds i32* %25, i64 %88, !dbg !226
  store i32 -1, i32* %89, align 4, !dbg !228, !tbaa !183
  br label %90

; <label>:90                                      ; preds = %81, %87
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1, !dbg !174
  %lftr.wideiv20 = trunc i64 %indvars.iv18 to i32, !dbg !174
  %exitcond21 = icmp eq i32 %lftr.wideiv20, %74, !dbg !174
  br i1 %exitcond21, label %._crit_edge6, label %75, !dbg !174

._crit_edge6:                                     ; preds = %90, %._crit_edge13.thread
  %91 = phi i32* [ %.pre35, %._crit_edge13.thread ], [ %73, %90 ]
  tail call void @IVcopy(i32 %8, i32* %91, i32* %25) #5, !dbg !229
  %92 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 1, !dbg !230
  %93 = load i32* %92, align 4, !dbg !230, !tbaa !232
  %94 = icmp eq i32 %93, -1, !dbg !233
  br i1 %94, label %.preheader, label %95, !dbg !234

; <label>:95                                      ; preds = %._crit_edge6
  %96 = sext i32 %93 to i64, !dbg !235
  %97 = getelementptr inbounds i32* %24, i64 %96, !dbg !235
  %98 = load i32* %97, align 4, !dbg !235, !tbaa !183
  store i32 %98, i32* %92, align 4, !dbg !237, !tbaa !232
  br label %.preheader, !dbg !238

.preheader:                                       ; preds = %._crit_edge6, %95
  %99 = icmp sgt i32 %15, 0, !dbg !239
  br i1 %99, label %.lr.ph, label %._crit_edge, !dbg !242

.lr.ph:                                           ; preds = %.preheader
  %100 = add i32 %15, -1, !dbg !242
  br label %101, !dbg !242

; <label>:101                                     ; preds = %110, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %110 ]
  %102 = getelementptr inbounds i32* %18, i64 %indvars.iv, !dbg !243
  %103 = load i32* %102, align 4, !dbg !243, !tbaa !183
  tail call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !46, metadata !86), !dbg !158
  %104 = icmp sgt i32 %103, -1, !dbg !245
  %105 = icmp slt i32 %103, %8, !dbg !247
  %or.cond = and i1 %104, %105, !dbg !248
  br i1 %or.cond, label %106, label %110, !dbg !248

; <label>:106                                     ; preds = %101
  %107 = sext i32 %103 to i64, !dbg !249
  %108 = getelementptr inbounds i32* %24, i64 %107, !dbg !249
  %109 = load i32* %108, align 4, !dbg !249, !tbaa !183
  store i32 %109, i32* %102, align 4, !dbg !251, !tbaa !183
  br label %110, !dbg !252

; <label>:110                                     ; preds = %101, %106
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !242
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !242
  %exitcond = icmp eq i32 %lftr.wideiv, %100, !dbg !242
  br i1 %exitcond, label %._crit_edge, label %101, !dbg !242

._crit_edge:                                      ; preds = %110, %.preheader
  tail call void @IVfree(i32* %24) #5, !dbg !253
  tail call void @IVfree(i32* %25) #5, !dbg !254
  ret void, !dbg !255
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DSTree_domainWeight(%struct._DSTree* %dstree, i32* readonly %vwghts) #0 {
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !60, metadata !86), !dbg !256
  tail call void @llvm.dbg.value(metadata i32* %vwghts, i64 0, metadata !61, metadata !86), !dbg !257
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !258
  br i1 %1, label %2, label %5, !dbg !260

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !261, !tbaa !93
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._DSTree* null) #5, !dbg !263
  tail call void @exit(i32 -1) #6, !dbg !264
  unreachable, !dbg !264

; <label>:5                                       ; preds = %0
  %6 = tail call %struct._Tree* @DSTree_tree(%struct._DSTree* %dstree) #5, !dbg !265
  tail call void @llvm.dbg.value(metadata %struct._Tree* %6, i64 0, metadata !69, metadata !86), !dbg !266
  %7 = tail call %struct._IV* @DSTree_mapIV(%struct._DSTree* %dstree) #5, !dbg !267
  tail call void @llvm.dbg.value(metadata %struct._IV* %7, i64 0, metadata !68, metadata !86), !dbg !268
  tail call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !64, metadata !86), !dbg !269
  tail call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !67, metadata !86), !dbg !270
  call void @IV_sizeAndEntries(%struct._IV* %7, i32* %nvtx, i32** %map) #5, !dbg !271
  %8 = getelementptr inbounds %struct._Tree* %6, i64 0, i32 3, !dbg !272
  %9 = load i32** %8, align 8, !dbg !272, !tbaa !170
  call void @llvm.dbg.value(metadata i32* %9, i64 0, metadata !66, metadata !86), !dbg !273
  %10 = icmp eq i32* %vwghts, null, !dbg !274
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !86), !dbg !276
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !65, metadata !86), !dbg !277
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !64, metadata !86), !dbg !269
  %11 = load i32* %nvtx, align 4, !dbg !278, !tbaa !183
  %12 = icmp sgt i32 %11, 0, !dbg !282
  br i1 %10, label %.preheader, label %.preheader1, !dbg !283

.preheader1:                                      ; preds = %5
  br i1 %12, label %.lr.ph7, label %.loopexit, !dbg !284

.lr.ph7:                                          ; preds = %.preheader1
  %13 = load i32** %map, align 8, !dbg !287, !tbaa !93
  %14 = sext i32 %11 to i64, !dbg !284
  br label %17, !dbg !284

.preheader:                                       ; preds = %5
  br i1 %12, label %.lr.ph, label %.loopexit, !dbg !290

.lr.ph:                                           ; preds = %.preheader
  %15 = load i32** %map, align 8, !dbg !291, !tbaa !93
  %16 = sext i32 %11 to i64, !dbg !290
  br label %30, !dbg !290

; <label>:17                                      ; preds = %.lr.ph7, %28
  %indvars.iv9 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next10, %28 ]
  %domwght.06 = phi i32 [ 0, %.lr.ph7 ], [ %domwght.1, %28 ]
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !67, metadata !86), !dbg !270
  %18 = getelementptr inbounds i32* %13, i64 %indvars.iv9, !dbg !287
  %19 = load i32* %18, align 4, !dbg !287, !tbaa !183
  call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !63, metadata !86), !dbg !293
  %20 = sext i32 %19 to i64, !dbg !294
  %21 = getelementptr inbounds i32* %9, i64 %20, !dbg !294
  %22 = load i32* %21, align 4, !dbg !294, !tbaa !183
  %23 = icmp eq i32 %22, -1, !dbg !296
  br i1 %23, label %24, label %28, !dbg !297

; <label>:24                                      ; preds = %17
  %25 = getelementptr inbounds i32* %vwghts, i64 %indvars.iv9, !dbg !298
  %26 = load i32* %25, align 4, !dbg !298, !tbaa !183
  %27 = add nsw i32 %26, %domwght.06, !dbg !300
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !62, metadata !86), !dbg !276
  br label %28, !dbg !301

; <label>:28                                      ; preds = %17, %24
  %domwght.1 = phi i32 [ %27, %24 ], [ %domwght.06, %17 ]
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !284
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !64, metadata !86), !dbg !269
  %29 = icmp slt i64 %indvars.iv.next10, %14, !dbg !302
  br i1 %29, label %17, label %.loopexit, !dbg !284

; <label>:30                                      ; preds = %.lr.ph, %30
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %domwght.24 = phi i32 [ 0, %.lr.ph ], [ %.domwght.2, %30 ]
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !67, metadata !86), !dbg !270
  %31 = getelementptr inbounds i32* %15, i64 %indvars.iv, !dbg !291
  %32 = load i32* %31, align 4, !dbg !291, !tbaa !183
  call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !63, metadata !86), !dbg !293
  %33 = sext i32 %32 to i64, !dbg !303
  %34 = getelementptr inbounds i32* %9, i64 %33, !dbg !303
  %35 = load i32* %34, align 4, !dbg !303, !tbaa !183
  %36 = icmp eq i32 %35, -1, !dbg !305
  %37 = zext i1 %36 to i32, !dbg !306
  %.domwght.2 = add nsw i32 %37, %domwght.24, !dbg !306
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !290
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !64, metadata !86), !dbg !269
  %38 = icmp slt i64 %indvars.iv.next, %16, !dbg !282
  br i1 %38, label %30, label %.loopexit, !dbg !290

.loopexit:                                        ; preds = %28, %30, %.preheader1, %.preheader
  %domwght.4 = phi i32 [ 0, %.preheader ], [ 0, %.preheader1 ], [ %.domwght.2, %30 ], [ %domwght.1, %28 ]
  ret i32 %domwght.4, !dbg !307
}

; Function Attrs: optsize
declare %struct._Tree* @DSTree_tree(%struct._DSTree*) #3

; Function Attrs: optsize
declare %struct._IV* @DSTree_mapIV(%struct._DSTree*) #3

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DSTree_separatorWeight(%struct._DSTree* %dstree, i32* readonly %vwghts) #0 {
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !72, metadata !86), !dbg !308
  tail call void @llvm.dbg.value(metadata i32* %vwghts, i64 0, metadata !73, metadata !86), !dbg !309
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !310
  br i1 %1, label %2, label %5, !dbg !312

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !313, !tbaa !93
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), %struct._DSTree* null) #5, !dbg !315
  tail call void @exit(i32 -1) #6, !dbg !316
  unreachable, !dbg !316

; <label>:5                                       ; preds = %0
  %6 = tail call %struct._Tree* @DSTree_tree(%struct._DSTree* %dstree) #5, !dbg !317
  tail call void @llvm.dbg.value(metadata %struct._Tree* %6, i64 0, metadata !81, metadata !86), !dbg !318
  %7 = tail call %struct._IV* @DSTree_mapIV(%struct._DSTree* %dstree) #5, !dbg !319
  tail call void @llvm.dbg.value(metadata %struct._IV* %7, i64 0, metadata !80, metadata !86), !dbg !320
  tail call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !75, metadata !86), !dbg !321
  tail call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !79, metadata !86), !dbg !322
  call void @IV_sizeAndEntries(%struct._IV* %7, i32* %nvtx, i32** %map) #5, !dbg !323
  %8 = getelementptr inbounds %struct._Tree* %6, i64 0, i32 3, !dbg !324
  %9 = load i32** %8, align 8, !dbg !324, !tbaa !170
  call void @llvm.dbg.value(metadata i32* %9, i64 0, metadata !78, metadata !86), !dbg !325
  %10 = icmp eq i32* %vwghts, null, !dbg !326
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !76, metadata !86), !dbg !328
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !77, metadata !86), !dbg !329
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !75, metadata !86), !dbg !321
  %11 = load i32* %nvtx, align 4, !dbg !330, !tbaa !183
  %12 = icmp sgt i32 %11, 0, !dbg !334
  br i1 %10, label %.preheader, label %.preheader1, !dbg !335

.preheader1:                                      ; preds = %5
  br i1 %12, label %.lr.ph7, label %.loopexit, !dbg !336

.lr.ph7:                                          ; preds = %.preheader1
  %13 = load i32** %map, align 8, !dbg !339, !tbaa !93
  %14 = sext i32 %11 to i64, !dbg !336
  br label %17, !dbg !336

.preheader:                                       ; preds = %5
  br i1 %12, label %.lr.ph, label %.loopexit, !dbg !342

.lr.ph:                                           ; preds = %.preheader
  %15 = load i32** %map, align 8, !dbg !343, !tbaa !93
  %16 = sext i32 %11 to i64, !dbg !342
  br label %30, !dbg !342

; <label>:17                                      ; preds = %.lr.ph7, %28
  %indvars.iv9 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next10, %28 ]
  %sepwght.06 = phi i32 [ 0, %.lr.ph7 ], [ %sepwght.1, %28 ]
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !79, metadata !86), !dbg !322
  %18 = getelementptr inbounds i32* %13, i64 %indvars.iv9, !dbg !339
  %19 = load i32* %18, align 4, !dbg !339, !tbaa !183
  call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !74, metadata !86), !dbg !345
  %20 = sext i32 %19 to i64, !dbg !346
  %21 = getelementptr inbounds i32* %9, i64 %20, !dbg !346
  %22 = load i32* %21, align 4, !dbg !346, !tbaa !183
  %23 = icmp eq i32 %22, -1, !dbg !348
  br i1 %23, label %28, label %24, !dbg !349

; <label>:24                                      ; preds = %17
  %25 = getelementptr inbounds i32* %vwghts, i64 %indvars.iv9, !dbg !350
  %26 = load i32* %25, align 4, !dbg !350, !tbaa !183
  %27 = add nsw i32 %26, %sepwght.06, !dbg !352
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !76, metadata !86), !dbg !328
  br label %28, !dbg !353

; <label>:28                                      ; preds = %17, %24
  %sepwght.1 = phi i32 [ %27, %24 ], [ %sepwght.06, %17 ]
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !336
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !75, metadata !86), !dbg !321
  %29 = icmp slt i64 %indvars.iv.next10, %14, !dbg !354
  br i1 %29, label %17, label %.loopexit, !dbg !336

; <label>:30                                      ; preds = %.lr.ph, %30
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %sepwght.24 = phi i32 [ 0, %.lr.ph ], [ %sepwght.2., %30 ]
  call void @llvm.dbg.value(metadata i32** %map, i64 0, metadata !79, metadata !86), !dbg !322
  %31 = getelementptr inbounds i32* %15, i64 %indvars.iv, !dbg !343
  %32 = load i32* %31, align 4, !dbg !343, !tbaa !183
  call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !74, metadata !86), !dbg !345
  %33 = sext i32 %32 to i64, !dbg !355
  %34 = getelementptr inbounds i32* %9, i64 %33, !dbg !355
  %35 = load i32* %34, align 4, !dbg !355, !tbaa !183
  %not. = icmp ne i32 %35, -1, !dbg !357
  %36 = zext i1 %not. to i32, !dbg !357
  %sepwght.2. = add nsw i32 %36, %sepwght.24, !dbg !357
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !342
  call void @llvm.dbg.value(metadata i32* %nvtx, i64 0, metadata !75, metadata !86), !dbg !321
  %37 = icmp slt i64 %indvars.iv.next, %16, !dbg !334
  br i1 %37, label %30, label %.loopexit, !dbg !342

.loopexit:                                        ; preds = %28, %30, %.preheader1, %.preheader
  %sepwght.4 = phi i32 [ 0, %.preheader ], [ 0, %.preheader1 ], [ %sepwght.2., %30 ], [ %sepwght.1, %28 ]
  ret i32 %sepwght.4, !dbg !358
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
!llvm.module.flags = !{!82, !83, !84}
!llvm.ident = !{!85}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !40, !56, !70}
!6 = !DISubprogram(name: "DSTree_sizeOf", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DSTree*)* @DSTree_sizeOf, variables: !37)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSTree", file: !12, line: 22, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../DSTree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DSTree", file: !12, line: 23, size: 128, align: 64, elements: !14)
!14 = !{!15, !27}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !13, file: !12, line: 24, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !18, line: 15, baseType: !19)
!18 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../Tree/Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !18, line: 16, size: 256, align: 64, elements: !20)
!20 = !{!21, !22, !23, !25, !26}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !19, file: !18, line: 17, baseType: !9, size: 32, align: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !19, file: !18, line: 18, baseType: !9, size: 32, align: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !19, file: !18, line: 19, baseType: !24, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !19, file: !18, line: 20, baseType: !24, size: 64, align: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !19, file: !18, line: 21, baseType: !24, size: 64, align: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "mapIV", scope: !13, file: !12, line: 25, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !30, line: 20, baseType: !31)
!30 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !30, line: 21, size: 192, align: 64, elements: !32)
!32 = !{!33, !34, !35, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !31, file: !30, line: 22, baseType: !9, size: 32, align: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !31, file: !30, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !31, file: !30, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !31, file: !30, line: 25, baseType: !24, size: 64, align: 64, offset: 128)
!37 = !{!38, !39}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !6, file: !1, line: 15, type: !10)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !6, file: !1, line: 17, type: !9)
!40 = !DISubprogram(name: "DSTree_renumberViaPostOT", scope: !1, file: !1, line: 46, type: !41, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DSTree*)* @DSTree_renumberViaPostOT, variables: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !10}
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !40, file: !1, line: 47, type: !10)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !40, file: !1, line: 49, type: !9)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "J", scope: !40, file: !1, line: 49, type: !9)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "K", scope: !40, file: !1, line: 49, type: !9)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !40, file: !1, line: 49, type: !9)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !40, file: !1, line: 49, type: !9)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !40, file: !1, line: 49, type: !9)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !40, file: !1, line: 50, type: !24)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldmap", scope: !40, file: !1, line: 50, type: !24)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !40, file: !1, line: 50, type: !24)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapIV", scope: !40, file: !1, line: 51, type: !28)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tree", scope: !40, file: !1, line: 52, type: !16)
!56 = !DISubprogram(name: "DSTree_domainWeight", scope: !1, file: !1, line: 134, type: !57, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DSTree*, i32*)* @DSTree_domainWeight, variables: !59)
!57 = !DISubroutineType(types: !58)
!58 = !{!9, !10, !24}
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !56, file: !1, line: 135, type: !10)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vwghts", arg: 2, scope: !56, file: !1, line: 136, type: !24)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domwght", scope: !56, file: !1, line: 138, type: !9)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ireg", scope: !56, file: !1, line: 138, type: !9)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !56, file: !1, line: 138, type: !9)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !56, file: !1, line: 138, type: !9)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fch", scope: !56, file: !1, line: 139, type: !24)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !56, file: !1, line: 139, type: !24)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapIV", scope: !56, file: !1, line: 140, type: !28)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tree", scope: !56, file: !1, line: 141, type: !16)
!70 = !DISubprogram(name: "DSTree_separatorWeight", scope: !1, file: !1, line: 182, type: !57, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DSTree*, i32*)* @DSTree_separatorWeight, variables: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !70, file: !1, line: 183, type: !10)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vwghts", arg: 2, scope: !70, file: !1, line: 184, type: !24)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ireg", scope: !70, file: !1, line: 186, type: !9)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtx", scope: !70, file: !1, line: 186, type: !9)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sepwght", scope: !70, file: !1, line: 186, type: !9)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !70, file: !1, line: 186, type: !9)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fch", scope: !70, file: !1, line: 187, type: !24)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !70, file: !1, line: 187, type: !24)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapIV", scope: !70, file: !1, line: 188, type: !28)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tree", scope: !70, file: !1, line: 189, type: !16)
!82 = !{i32 2, !"Dwarf Version", i32 2}
!83 = !{i32 2, !"Debug Info Version", i32 700000003}
!84 = !{i32 1, !"PIC Level", i32 2}
!85 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!86 = !DIExpression()
!87 = !DILocation(line: 15, column: 14, scope: !6)
!88 = !DILocation(line: 23, column: 13, scope: !89)
!89 = distinct !DILexicalBlock(scope: !6, file: !1, line: 23, column: 6)
!90 = !DILocation(line: 23, column: 6, scope: !6)
!91 = !DILocation(line: 24, column: 12, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 23, column: 23)
!93 = !{!94, !94, i64 0}
!94 = !{!"any pointer", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !DILocation(line: 24, column: 4, scope: !92)
!98 = !DILocation(line: 26, column: 4, scope: !92)
!99 = !DILocation(line: 17, column: 7, scope: !6)
!100 = !DILocation(line: 29, column: 14, scope: !101)
!101 = distinct !DILexicalBlock(scope: !6, file: !1, line: 29, column: 6)
!102 = !{!103, !94, i64 0}
!103 = !{!"_DSTree", !94, i64 0, !94, i64 8}
!104 = !DILocation(line: 29, column: 19, scope: !101)
!105 = !DILocation(line: 29, column: 6, scope: !6)
!106 = !DILocation(line: 30, column: 14, scope: !107)
!107 = distinct !DILexicalBlock(scope: !101, file: !1, line: 29, column: 29)
!108 = !DILocation(line: 30, column: 11, scope: !107)
!109 = !DILocation(line: 31, column: 1, scope: !107)
!110 = !DILocation(line: 32, column: 14, scope: !111)
!111 = distinct !DILexicalBlock(scope: !6, file: !1, line: 32, column: 6)
!112 = !{!103, !94, i64 8}
!113 = !DILocation(line: 32, column: 20, scope: !111)
!114 = !DILocation(line: 32, column: 6, scope: !6)
!115 = !DILocation(line: 33, column: 14, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 32, column: 30)
!117 = !DILocation(line: 33, column: 11, scope: !116)
!118 = !DILocation(line: 34, column: 1, scope: !116)
!119 = !DILocation(line: 35, column: 1, scope: !6)
!120 = !DILocation(line: 47, column: 13, scope: !40)
!121 = !DILocation(line: 58, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !40, file: !1, line: 58, column: 6)
!123 = !DILocation(line: 59, column: 4, scope: !122)
!124 = !DILocation(line: 59, column: 23, scope: !122)
!125 = !DILocation(line: 52, column: 9, scope: !40)
!126 = !DILocation(line: 59, column: 29, scope: !122)
!127 = !DILocation(line: 60, column: 4, scope: !122)
!128 = !DILocation(line: 60, column: 18, scope: !122)
!129 = !{!130, !131, i64 0}
!130 = !{!"_Tree", !131, i64 0, !131, i64 4, !94, i64 8, !94, i64 16, !94, i64 24}
!131 = !{!"int", !95, i64 0}
!132 = !DILocation(line: 49, column: 21, scope: !40)
!133 = !DILocation(line: 60, column: 21, scope: !122)
!134 = !DILocation(line: 61, column: 4, scope: !122)
!135 = !DILocation(line: 61, column: 25, scope: !122)
!136 = !DILocation(line: 51, column: 9, scope: !40)
!137 = !DILocation(line: 61, column: 32, scope: !122)
!138 = !DILocation(line: 62, column: 4, scope: !122)
!139 = !DILocation(line: 62, column: 17, scope: !122)
!140 = !DILocation(line: 49, column: 24, scope: !40)
!141 = !DILocation(line: 62, column: 33, scope: !122)
!142 = !DILocation(line: 63, column: 4, scope: !122)
!143 = !DILocation(line: 63, column: 17, scope: !122)
!144 = !DILocation(line: 50, column: 15, scope: !40)
!145 = !DILocation(line: 63, column: 36, scope: !122)
!146 = !DILocation(line: 58, column: 6, scope: !40)
!147 = !DILocation(line: 64, column: 12, scope: !148)
!148 = distinct !DILexicalBlock(scope: !122, file: !1, line: 63, column: 46)
!149 = !DILocation(line: 64, column: 4, scope: !148)
!150 = !DILocation(line: 66, column: 4, scope: !148)
!151 = !DILocation(line: 74, column: 9, scope: !40)
!152 = !DILocation(line: 50, column: 9, scope: !40)
!153 = !DILocation(line: 75, column: 9, scope: !40)
!154 = !DILocation(line: 50, column: 24, scope: !40)
!155 = !DILocation(line: 49, column: 8, scope: !40)
!156 = !DILocation(line: 77, column: 11, scope: !157)
!157 = distinct !DILexicalBlock(scope: !40, file: !1, line: 77, column: 1)
!158 = !DILocation(line: 49, column: 15, scope: !40)
!159 = !DILocation(line: 78, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !1, line: 77, column: 1)
!161 = !DILocation(line: 77, column: 1, scope: !157)
!162 = !DILocation(line: 82, column: 17, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 82, column: 1)
!164 = distinct !DILexicalBlock(scope: !40, file: !1, line: 82, column: 1)
!165 = !DILocation(line: 82, column: 1, scope: !164)
!166 = !DILocation(line: 89, column: 17, scope: !40)
!167 = !{!130, !94, i64 8}
!168 = !DILocation(line: 89, column: 1, scope: !40)
!169 = !DILocation(line: 97, column: 17, scope: !40)
!170 = !{!130, !94, i64 16}
!171 = !DILocation(line: 97, column: 1, scope: !40)
!172 = !DILocation(line: 105, column: 17, scope: !40)
!173 = !{!130, !94, i64 24}
!174 = !DILocation(line: 98, column: 1, scope: !175)
!175 = distinct !DILexicalBlock(scope: !40, file: !1, line: 98, column: 1)
!176 = !DILocation(line: 83, column: 20, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 83, column: 9)
!178 = distinct !DILexicalBlock(scope: !163, file: !1, line: 82, column: 29)
!179 = !DILocation(line: 80, column: 18, scope: !180)
!180 = distinct !DILexicalBlock(scope: !160, file: !1, line: 79, column: 38)
!181 = !DILocation(line: 80, column: 4, scope: !180)
!182 = !DILocation(line: 80, column: 11, scope: !180)
!183 = !{!131, !131, i64 0}
!184 = !DILocation(line: 79, column: 11, scope: !160)
!185 = !DILocation(line: 83, column: 14, scope: !177)
!186 = !DILocation(line: 49, column: 18, scope: !40)
!187 = !DILocation(line: 83, column: 28, scope: !177)
!188 = !DILocation(line: 83, column: 9, scope: !178)
!189 = !DILocation(line: 84, column: 22, scope: !190)
!190 = distinct !DILexicalBlock(scope: !177, file: !1, line: 83, column: 36)
!191 = !DILocation(line: 84, column: 7, scope: !190)
!192 = !DILocation(line: 84, column: 20, scope: !190)
!193 = !DILocation(line: 85, column: 4, scope: !190)
!194 = !DILocation(line: 86, column: 7, scope: !195)
!195 = distinct !DILexicalBlock(scope: !177, file: !1, line: 85, column: 11)
!196 = !DILocation(line: 86, column: 20, scope: !195)
!197 = !DILocation(line: 91, column: 20, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 91, column: 9)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 90, column: 29)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 90, column: 1)
!201 = distinct !DILexicalBlock(scope: !40, file: !1, line: 90, column: 1)
!202 = !DILocation(line: 90, column: 1, scope: !201)
!203 = !DILocation(line: 91, column: 14, scope: !198)
!204 = !DILocation(line: 91, column: 28, scope: !198)
!205 = !DILocation(line: 91, column: 9, scope: !199)
!206 = !DILocation(line: 92, column: 22, scope: !207)
!207 = distinct !DILexicalBlock(scope: !198, file: !1, line: 91, column: 36)
!208 = !DILocation(line: 92, column: 7, scope: !207)
!209 = !DILocation(line: 92, column: 20, scope: !207)
!210 = !DILocation(line: 93, column: 4, scope: !207)
!211 = !DILocation(line: 94, column: 7, scope: !212)
!212 = distinct !DILexicalBlock(scope: !198, file: !1, line: 93, column: 11)
!213 = !DILocation(line: 94, column: 20, scope: !212)
!214 = !DILocation(line: 99, column: 20, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !1, line: 99, column: 9)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 98, column: 29)
!217 = distinct !DILexicalBlock(scope: !175, file: !1, line: 98, column: 1)
!218 = !DILocation(line: 99, column: 14, scope: !215)
!219 = !DILocation(line: 99, column: 28, scope: !215)
!220 = !DILocation(line: 99, column: 9, scope: !216)
!221 = !DILocation(line: 100, column: 22, scope: !222)
!222 = distinct !DILexicalBlock(scope: !215, file: !1, line: 99, column: 36)
!223 = !DILocation(line: 100, column: 7, scope: !222)
!224 = !DILocation(line: 100, column: 20, scope: !222)
!225 = !DILocation(line: 101, column: 4, scope: !222)
!226 = !DILocation(line: 102, column: 7, scope: !227)
!227 = distinct !DILexicalBlock(scope: !215, file: !1, line: 101, column: 11)
!228 = !DILocation(line: 102, column: 20, scope: !227)
!229 = !DILocation(line: 105, column: 1, scope: !40)
!230 = !DILocation(line: 106, column: 12, scope: !231)
!231 = distinct !DILexicalBlock(scope: !40, file: !1, line: 106, column: 6)
!232 = !{!130, !131, i64 4}
!233 = !DILocation(line: 106, column: 17, scope: !231)
!234 = !DILocation(line: 106, column: 6, scope: !40)
!235 = !DILocation(line: 107, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !231, file: !1, line: 106, column: 25)
!237 = !DILocation(line: 107, column: 15, scope: !236)
!238 = !DILocation(line: 108, column: 1, scope: !236)
!239 = !DILocation(line: 114, column: 17, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !1, line: 114, column: 1)
!241 = distinct !DILexicalBlock(scope: !40, file: !1, line: 114, column: 1)
!242 = !DILocation(line: 114, column: 1, scope: !241)
!243 = !DILocation(line: 115, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !1, line: 114, column: 32)
!245 = !DILocation(line: 116, column: 11, scope: !246)
!246 = distinct !DILexicalBlock(scope: !244, file: !1, line: 116, column: 9)
!247 = !DILocation(line: 116, column: 21, scope: !246)
!248 = !DILocation(line: 116, column: 16, scope: !246)
!249 = !DILocation(line: 117, column: 19, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !1, line: 116, column: 27)
!251 = !DILocation(line: 117, column: 17, scope: !250)
!252 = !DILocation(line: 118, column: 4, scope: !250)
!253 = !DILocation(line: 120, column: 1, scope: !40)
!254 = !DILocation(line: 121, column: 1, scope: !40)
!255 = !DILocation(line: 123, column: 1, scope: !40)
!256 = !DILocation(line: 135, column: 14, scope: !56)
!257 = !DILocation(line: 136, column: 13, scope: !56)
!258 = !DILocation(line: 147, column: 13, scope: !259)
!259 = distinct !DILexicalBlock(scope: !56, file: !1, line: 147, column: 6)
!260 = !DILocation(line: 147, column: 6, scope: !56)
!261 = !DILocation(line: 148, column: 12, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 147, column: 23)
!263 = !DILocation(line: 148, column: 4, scope: !262)
!264 = !DILocation(line: 150, column: 4, scope: !262)
!265 = !DILocation(line: 152, column: 9, scope: !56)
!266 = !DILocation(line: 141, column: 9, scope: !56)
!267 = !DILocation(line: 153, column: 9, scope: !56)
!268 = !DILocation(line: 140, column: 9, scope: !56)
!269 = !DILocation(line: 138, column: 23, scope: !56)
!270 = !DILocation(line: 139, column: 15, scope: !56)
!271 = !DILocation(line: 154, column: 1, scope: !56)
!272 = !DILocation(line: 155, column: 13, scope: !56)
!273 = !DILocation(line: 139, column: 9, scope: !56)
!274 = !DILocation(line: 156, column: 13, scope: !275)
!275 = distinct !DILexicalBlock(scope: !56, file: !1, line: 156, column: 6)
!276 = !DILocation(line: 138, column: 8, scope: !56)
!277 = !DILocation(line: 138, column: 29, scope: !56)
!278 = !DILocation(line: 164, column: 32, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 164, column: 4)
!280 = distinct !DILexicalBlock(scope: !281, file: !1, line: 164, column: 4)
!281 = distinct !DILexicalBlock(scope: !275, file: !1, line: 163, column: 8)
!282 = !DILocation(line: 164, column: 30, scope: !279)
!283 = !DILocation(line: 156, column: 6, scope: !56)
!284 = !DILocation(line: 157, column: 4, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !1, line: 157, column: 4)
!286 = distinct !DILexicalBlock(scope: !275, file: !1, line: 156, column: 23)
!287 = !DILocation(line: 158, column: 14, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !1, line: 157, column: 45)
!289 = distinct !DILexicalBlock(scope: !285, file: !1, line: 157, column: 4)
!290 = !DILocation(line: 164, column: 4, scope: !280)
!291 = !DILocation(line: 165, column: 14, scope: !292)
!292 = distinct !DILexicalBlock(scope: !279, file: !1, line: 164, column: 45)
!293 = !DILocation(line: 138, column: 17, scope: !56)
!294 = !DILocation(line: 159, column: 12, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !1, line: 159, column: 12)
!296 = !DILocation(line: 159, column: 22, scope: !295)
!297 = !DILocation(line: 159, column: 12, scope: !288)
!298 = !DILocation(line: 160, column: 21, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !1, line: 159, column: 30)
!300 = !DILocation(line: 160, column: 18, scope: !299)
!301 = !DILocation(line: 161, column: 7, scope: !299)
!302 = !DILocation(line: 157, column: 30, scope: !289)
!303 = !DILocation(line: 166, column: 12, scope: !304)
!304 = distinct !DILexicalBlock(scope: !292, file: !1, line: 166, column: 12)
!305 = !DILocation(line: 166, column: 22, scope: !304)
!306 = !DILocation(line: 166, column: 12, scope: !292)
!307 = !DILocation(line: 171, column: 1, scope: !56)
!308 = !DILocation(line: 183, column: 14, scope: !70)
!309 = !DILocation(line: 184, column: 13, scope: !70)
!310 = !DILocation(line: 195, column: 13, scope: !311)
!311 = distinct !DILexicalBlock(scope: !70, file: !1, line: 195, column: 6)
!312 = !DILocation(line: 195, column: 6, scope: !70)
!313 = !DILocation(line: 196, column: 12, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !1, line: 195, column: 23)
!315 = !DILocation(line: 196, column: 4, scope: !314)
!316 = !DILocation(line: 198, column: 4, scope: !314)
!317 = !DILocation(line: 200, column: 9, scope: !70)
!318 = !DILocation(line: 189, column: 9, scope: !70)
!319 = !DILocation(line: 201, column: 9, scope: !70)
!320 = !DILocation(line: 188, column: 9, scope: !70)
!321 = !DILocation(line: 186, column: 14, scope: !70)
!322 = !DILocation(line: 187, column: 15, scope: !70)
!323 = !DILocation(line: 202, column: 1, scope: !70)
!324 = !DILocation(line: 203, column: 13, scope: !70)
!325 = !DILocation(line: 187, column: 9, scope: !70)
!326 = !DILocation(line: 204, column: 13, scope: !327)
!327 = distinct !DILexicalBlock(scope: !70, file: !1, line: 204, column: 6)
!328 = !DILocation(line: 186, column: 20, scope: !70)
!329 = !DILocation(line: 186, column: 29, scope: !70)
!330 = !DILocation(line: 212, column: 32, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !1, line: 212, column: 4)
!332 = distinct !DILexicalBlock(scope: !333, file: !1, line: 212, column: 4)
!333 = distinct !DILexicalBlock(scope: !327, file: !1, line: 211, column: 8)
!334 = !DILocation(line: 212, column: 30, scope: !331)
!335 = !DILocation(line: 204, column: 6, scope: !70)
!336 = !DILocation(line: 205, column: 4, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !1, line: 205, column: 4)
!338 = distinct !DILexicalBlock(scope: !327, file: !1, line: 204, column: 23)
!339 = !DILocation(line: 206, column: 14, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !1, line: 205, column: 45)
!341 = distinct !DILexicalBlock(scope: !337, file: !1, line: 205, column: 4)
!342 = !DILocation(line: 212, column: 4, scope: !332)
!343 = !DILocation(line: 213, column: 14, scope: !344)
!344 = distinct !DILexicalBlock(scope: !331, file: !1, line: 212, column: 45)
!345 = !DILocation(line: 186, column: 8, scope: !70)
!346 = !DILocation(line: 207, column: 12, scope: !347)
!347 = distinct !DILexicalBlock(scope: !340, file: !1, line: 207, column: 12)
!348 = !DILocation(line: 207, column: 22, scope: !347)
!349 = !DILocation(line: 207, column: 12, scope: !340)
!350 = !DILocation(line: 208, column: 21, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !1, line: 207, column: 30)
!352 = !DILocation(line: 208, column: 18, scope: !351)
!353 = !DILocation(line: 209, column: 7, scope: !351)
!354 = !DILocation(line: 205, column: 30, scope: !341)
!355 = !DILocation(line: 214, column: 12, scope: !356)
!356 = distinct !DILexicalBlock(scope: !344, file: !1, line: 214, column: 12)
!357 = !DILocation(line: 214, column: 12, scope: !344)
!358 = !DILocation(line: 219, column: 1, scope: !70)
