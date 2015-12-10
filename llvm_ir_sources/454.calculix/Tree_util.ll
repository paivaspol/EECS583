; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [50 x i8] c"\0A fatal error in Tree_postOTfirst(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Tree_postOTnext(%p,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A fatal error in Tree_preOTfirst(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Tree_preOTnext(%p,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Tree_nleaves(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Tree_nroots(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [48 x i8] c"\0A fatal error in Tree_nchild(%p,%d)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Tree_nchild(%p,%d)\0A v = %d, size = %d\0A\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"\0A fatal error in Tree_nchildIV(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Tree_height(%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [48 x i8] c"\0A fatal error in Tree_maxNchild(%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Tree_sizeOf(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_postOTfirst(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !22, metadata !98), !dbg !99
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !100
  br i1 %1, label %6, label %2, !dbg !102

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !103
  %4 = load i32* %3, align 4, !dbg !103, !tbaa !104
  %5 = icmp slt i32 %4, 1, !dbg !110
  br i1 %5, label %6, label %9, !dbg !111

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !112, !tbaa !114
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !115
  tail call void @exit(i32 -1) #6, !dbg !116
  unreachable, !dbg !116

; <label>:9                                       ; preds = %2
  %10 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !117
  %11 = load i32* %10, align 4, !dbg !117, !tbaa !119
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !23, metadata !98), !dbg !120
  %12 = icmp eq i32 %11, -1, !dbg !121
  br i1 %12, label %.loopexit, label %.preheader, !dbg !122

.preheader:                                       ; preds = %9
  %13 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !123
  %14 = load i32** %13, align 8, !dbg !123, !tbaa !125
  br label %15, !dbg !126

; <label>:15                                      ; preds = %.preheader, %15
  %v.0 = phi i32 [ %18, %15 ], [ %11, %.preheader ]
  %16 = sext i32 %v.0 to i64, !dbg !126
  %17 = getelementptr inbounds i32* %14, i64 %16, !dbg !126
  %18 = load i32* %17, align 4, !dbg !126, !tbaa !127
  %19 = icmp eq i32 %18, -1, !dbg !128
  br i1 %19, label %.loopexit, label %15, !dbg !129

.loopexit:                                        ; preds = %15, %9
  %v.1 = phi i32 [ -1, %9 ], [ %v.0, %15 ]
  ret i32 %v.1, !dbg !130
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !28, metadata !98), !dbg !131
  tail call void @llvm.dbg.value(metadata i32 %v, i64 0, metadata !29, metadata !98), !dbg !132
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !133
  br i1 %1, label %6, label %2, !dbg !135

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !136
  %4 = load i32* %3, align 4, !dbg !136, !tbaa !104
  %notlhs = icmp sgt i32 %4, 0, !dbg !137
  %notrhs = icmp sgt i32 %v, -1, !dbg !137
  %or.cond.not = and i1 %notrhs, %notlhs, !dbg !137
  %5 = icmp sgt i32 %4, %v, !dbg !138
  %or.cond2 = and i1 %5, %or.cond.not, !dbg !137
  br i1 %or.cond2, label %9, label %6, !dbg !137

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !139, !tbaa !114
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, i32 %v) #5, !dbg !141
  tail call void @exit(i32 -1) #6, !dbg !142
  unreachable, !dbg !142

; <label>:9                                       ; preds = %2
  %10 = sext i32 %v to i64, !dbg !143
  %11 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !145
  %12 = load i32** %11, align 8, !dbg !145, !tbaa !146
  %13 = getelementptr inbounds i32* %12, i64 %10, !dbg !143
  %14 = load i32* %13, align 4, !dbg !143, !tbaa !127
  %15 = icmp eq i32 %14, -1, !dbg !147
  br i1 %15, label %23, label %.preheader, !dbg !148

.preheader:                                       ; preds = %9
  %16 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !149
  %17 = load i32** %16, align 8, !dbg !149, !tbaa !125
  br label %18, !dbg !151

; <label>:18                                      ; preds = %.preheader, %18
  %.0 = phi i32 [ %21, %18 ], [ %14, %.preheader ]
  %19 = sext i32 %.0 to i64, !dbg !151
  %20 = getelementptr inbounds i32* %17, i64 %19, !dbg !151
  %21 = load i32* %20, align 4, !dbg !151, !tbaa !127
  %22 = icmp eq i32 %21, -1, !dbg !152
  br i1 %22, label %.loopexit, label %18, !dbg !153

; <label>:23                                      ; preds = %9
  %24 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !154
  %25 = load i32** %24, align 8, !dbg !154, !tbaa !156
  %26 = getelementptr inbounds i32* %25, i64 %10, !dbg !157
  %27 = load i32* %26, align 4, !dbg !157, !tbaa !127
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !29, metadata !98), !dbg !132
  br label %.loopexit

.loopexit:                                        ; preds = %18, %23
  %.1 = phi i32 [ %27, %23 ], [ %.0, %18 ]
  ret i32 %.1, !dbg !158
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_preOTfirst(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !32, metadata !98), !dbg !159
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !160
  br i1 %1, label %6, label %2, !dbg !162

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !163
  %4 = load i32* %3, align 4, !dbg !163, !tbaa !104
  %5 = icmp slt i32 %4, 1, !dbg !164
  br i1 %5, label %6, label %9, !dbg !165

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !166, !tbaa !114
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !168
  tail call void @exit(i32 -1) #6, !dbg !169
  unreachable, !dbg !169

; <label>:9                                       ; preds = %2
  %10 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !170
  %11 = load i32* %10, align 4, !dbg !170, !tbaa !119
  ret i32 %11, !dbg !171
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_preOTnext(%struct._Tree* %tree, i32 %v) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !35, metadata !98), !dbg !172
  tail call void @llvm.dbg.value(metadata i32 %v, i64 0, metadata !36, metadata !98), !dbg !173
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !174
  br i1 %1, label %6, label %2, !dbg !176

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !177
  %4 = load i32* %3, align 4, !dbg !177, !tbaa !104
  %notlhs = icmp sgt i32 %4, 0, !dbg !178
  %notrhs = icmp sgt i32 %v, -1, !dbg !178
  %or.cond.not = and i1 %notrhs, %notlhs, !dbg !178
  %5 = icmp sgt i32 %4, %v, !dbg !179
  %or.cond2 = and i1 %5, %or.cond.not, !dbg !178
  br i1 %or.cond2, label %9, label %6, !dbg !178

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !180, !tbaa !114
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._Tree* %tree, i32 %v) #5, !dbg !182
  tail call void @exit(i32 -1) #6, !dbg !183
  unreachable, !dbg !183

; <label>:9                                       ; preds = %2
  %10 = sext i32 %v to i64, !dbg !184
  %11 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !186
  %12 = load i32** %11, align 8, !dbg !186, !tbaa !125
  %13 = getelementptr inbounds i32* %12, i64 %10, !dbg !184
  %14 = load i32* %13, align 4, !dbg !184, !tbaa !127
  %15 = icmp eq i32 %14, -1, !dbg !187
  br i1 %15, label %.preheader, label %.critedge, !dbg !188

.preheader:                                       ; preds = %9
  %16 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !189
  %17 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !191
  %18 = load i32** %17, align 8, !dbg !191, !tbaa !146
  br label %19, !dbg !192

; <label>:19                                      ; preds = %.preheader, %24
  %.0 = phi i32 [ %27, %24 ], [ %v, %.preheader ]
  %20 = sext i32 %.0 to i64, !dbg !192
  %21 = getelementptr inbounds i32* %18, i64 %20, !dbg !192
  %22 = load i32* %21, align 4, !dbg !192, !tbaa !127
  %23 = icmp eq i32 %22, -1, !dbg !193
  br i1 %23, label %24, label %.critedge, !dbg !194

; <label>:24                                      ; preds = %19
  %25 = load i32** %16, align 8, !dbg !189, !tbaa !156
  %26 = getelementptr inbounds i32* %25, i64 %20, !dbg !195
  %27 = load i32* %26, align 4, !dbg !195, !tbaa !127
  %28 = icmp eq i32 %27, -1, !dbg !196
  br i1 %28, label %.critedge, label %19, !dbg !197

.critedge:                                        ; preds = %19, %24, %9
  %.1 = phi i32 [ %14, %9 ], [ %22, %19 ], [ -1, %24 ]
  ret i32 %.1, !dbg !198
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_nleaves(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !39, metadata !98), !dbg !199
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !200
  br i1 %1, label %9, label %2, !dbg !202

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !203
  %4 = load i32* %3, align 4, !dbg !203, !tbaa !104
  %5 = icmp slt i32 %4, 1, !dbg !204
  br i1 %5, label %9, label %.lr.ph, !dbg !205

.lr.ph:                                           ; preds = %2
  %6 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !206
  %7 = load i32** %6, align 8, !dbg !206, !tbaa !125
  %8 = sext i32 %4 to i64, !dbg !211
  br label %12, !dbg !211

; <label>:9                                       ; preds = %2, %0
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !212, !tbaa !114
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !214
  tail call void @exit(i32 -1) #6, !dbg !215
  unreachable, !dbg !215

; <label>:12                                      ; preds = %.lr.ph, %12
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %12 ]
  %nleaf.01 = phi i32 [ 0, %.lr.ph ], [ %.nleaf.0, %12 ]
  %13 = getelementptr inbounds i32* %7, i64 %indvars.iv, !dbg !216
  %14 = load i32* %13, align 4, !dbg !216, !tbaa !127
  %15 = icmp eq i32 %14, -1, !dbg !217
  %16 = zext i1 %15 to i32, !dbg !218
  %.nleaf.0 = add nsw i32 %16, %nleaf.01, !dbg !218
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !211
  %17 = icmp slt i64 %indvars.iv.next, %8, !dbg !219
  br i1 %17, label %12, label %._crit_edge, !dbg !211

._crit_edge:                                      ; preds = %12
  ret i32 %.nleaf.0, !dbg !220
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_nroots(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !44, metadata !98), !dbg !221
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !222
  br i1 %1, label %9, label %2, !dbg !224

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !225
  %4 = load i32* %3, align 4, !dbg !225, !tbaa !104
  %5 = icmp slt i32 %4, 1, !dbg !226
  br i1 %5, label %9, label %.lr.ph, !dbg !227

.lr.ph:                                           ; preds = %2
  %6 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !228
  %7 = load i32** %6, align 8, !dbg !228, !tbaa !156
  %8 = sext i32 %4 to i64, !dbg !233
  br label %12, !dbg !233

; <label>:9                                       ; preds = %2, %0
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !234, !tbaa !114
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([45 x i8]* @.str5, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !236
  tail call void @exit(i32 -1) #6, !dbg !237
  unreachable, !dbg !237

; <label>:12                                      ; preds = %.lr.ph, %12
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %12 ]
  %nroot.01 = phi i32 [ 0, %.lr.ph ], [ %.nroot.0, %12 ]
  %13 = getelementptr inbounds i32* %7, i64 %indvars.iv, !dbg !238
  %14 = load i32* %13, align 4, !dbg !238, !tbaa !127
  %15 = icmp eq i32 %14, -1, !dbg !239
  %16 = zext i1 %15 to i32, !dbg !240
  %.nroot.0 = add nsw i32 %16, %nroot.01, !dbg !240
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !233
  %17 = icmp slt i64 %indvars.iv.next, %8, !dbg !241
  br i1 %17, label %12, label %._crit_edge, !dbg !233

._crit_edge:                                      ; preds = %12
  ret i32 %.nroot.0, !dbg !242
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_nchild(%struct._Tree* %tree, i32 %v) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !49, metadata !98), !dbg !243
  tail call void @llvm.dbg.value(metadata i32 %v, i64 0, metadata !50, metadata !98), !dbg !244
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !245
  br i1 %1, label %6, label %2, !dbg !247

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !248
  %4 = load i32* %3, align 4, !dbg !248, !tbaa !104
  %5 = icmp slt i32 %4, 1, !dbg !249
  br i1 %5, label %6, label %9, !dbg !250

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !251, !tbaa !114
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), %struct._Tree* %tree, i32 %v) #5, !dbg !253
  tail call void @exit(i32 -1) #6, !dbg !254
  unreachable, !dbg !254

; <label>:9                                       ; preds = %2
  %10 = icmp sgt i32 %v, -1, !dbg !255
  %11 = icmp sgt i32 %4, %v, !dbg !257
  %or.cond = and i1 %10, %11, !dbg !258
  br i1 %or.cond, label %15, label %12, !dbg !258

; <label>:12                                      ; preds = %9
  %13 = load %struct.__sFILE** @__stderrp, align 8, !dbg !259, !tbaa !114
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([56 x i8]* @.str7, i64 0, i64 0), %struct._Tree* %tree, i32 %v, i32 %v, i32 %4) #5, !dbg !261
  tail call void @exit(i32 -1) #6, !dbg !262
  unreachable, !dbg !262

; <label>:15                                      ; preds = %9
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !51, metadata !98), !dbg !263
  %16 = sext i32 %v to i64, !dbg !264
  %17 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !266
  %18 = load i32** %17, align 8, !dbg !266, !tbaa !125
  %19 = getelementptr inbounds i32* %18, i64 %16, !dbg !264
  %w.01 = load i32* %19, align 4, !dbg !264
  %20 = icmp eq i32 %w.01, -1, !dbg !267
  br i1 %20, label %._crit_edge, label %.lr.ph, !dbg !269

.lr.ph:                                           ; preds = %15
  %21 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !270
  %22 = load i32** %21, align 8, !dbg !270, !tbaa !146
  br label %23, !dbg !269

; <label>:23                                      ; preds = %.lr.ph, %23
  %w.03 = phi i32 [ %w.01, %.lr.ph ], [ %w.0, %23 ]
  %nchild.02 = phi i32 [ 0, %.lr.ph ], [ %24, %23 ]
  %24 = add nuw nsw i32 %nchild.02, 1, !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !51, metadata !98), !dbg !263
  %25 = sext i32 %w.03 to i64, !dbg !273
  %26 = getelementptr inbounds i32* %22, i64 %25, !dbg !273
  %w.0 = load i32* %26, align 4, !dbg !264
  %27 = icmp eq i32 %w.0, -1, !dbg !267
  br i1 %27, label %._crit_edge, label %23, !dbg !269

._crit_edge:                                      ; preds = %23, %15
  %nchild.0.lcssa = phi i32 [ 0, %15 ], [ %24, %23 ]
  ret i32 %nchild.0.lcssa, !dbg !274
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @Tree_nchildIV(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !66, metadata !98), !dbg !275
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !276
  br i1 %1, label %6, label %2, !dbg !278

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !279
  %4 = load i32* %3, align 4, !dbg !279, !tbaa !104
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !67, metadata !98), !dbg !280
  %5 = icmp slt i32 %4, 1, !dbg !281
  br i1 %5, label %6, label %.lr.ph, !dbg !282

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !283, !tbaa !114
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !285
  tail call void @exit(i32 -1) #6, !dbg !286
  unreachable, !dbg !286

.lr.ph:                                           ; preds = %2
  %9 = tail call %struct._IV* @IV_new() #5, !dbg !287
  tail call void @llvm.dbg.value(metadata %struct._IV* %9, i64 0, metadata !72, metadata !98), !dbg !288
  tail call void @IV_init(%struct._IV* %9, i32 %4, i32* null) #5, !dbg !289
  tail call void @IV_fill(%struct._IV* %9, i32 0) #5, !dbg !290
  %10 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !291
  %11 = load i32** %10, align 8, !dbg !291, !tbaa !156
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !71, metadata !98), !dbg !292
  %12 = tail call i32* @IV_entries(%struct._IV* %9) #5, !dbg !293
  tail call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !70, metadata !98), !dbg !294
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !68, metadata !98), !dbg !295
  %13 = add i32 %4, -1, !dbg !296
  br label %14, !dbg !296

; <label>:14                                      ; preds = %23, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %23 ]
  %15 = getelementptr inbounds i32* %11, i64 %indvars.iv, !dbg !298
  %16 = load i32* %15, align 4, !dbg !298, !tbaa !127
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !69, metadata !98), !dbg !302
  %17 = icmp eq i32 %16, -1, !dbg !303
  br i1 %17, label %23, label %18, !dbg !304

; <label>:18                                      ; preds = %14
  %19 = sext i32 %16 to i64, !dbg !305
  %20 = getelementptr inbounds i32* %12, i64 %19, !dbg !305
  %21 = load i32* %20, align 4, !dbg !307, !tbaa !127
  %22 = add nsw i32 %21, 1, !dbg !307
  store i32 %22, i32* %20, align 4, !dbg !307, !tbaa !127
  br label %23, !dbg !308

; <label>:23                                      ; preds = %14, %18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !296
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !296
  %exitcond = icmp eq i32 %lftr.wideiv, %13, !dbg !296
  br i1 %exitcond, label %._crit_edge, label %14, !dbg !296

._crit_edge:                                      ; preds = %23
  ret %struct._IV* %9, !dbg !309
}

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_height(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !75, metadata !98), !dbg !310
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !311
  br i1 %1, label %6, label %2, !dbg !313

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !314
  %4 = load i32* %3, align 4, !dbg !314, !tbaa !104
  %5 = icmp slt i32 %4, 1, !dbg !315
  br i1 %5, label %6, label %9, !dbg !316

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !317, !tbaa !114
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([45 x i8]* @.str9, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !319
  tail call void @exit(i32 -1) #6, !dbg !320
  unreachable, !dbg !320

; <label>:9                                       ; preds = %2
  %10 = tail call i32* @IVinit(i32 %4, i32 1) #5, !dbg !321
  tail call void @llvm.dbg.value(metadata i32* %10, i64 0, metadata !79, metadata !98), !dbg !322
  %11 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #7, !dbg !323
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !77, metadata !98), !dbg !325
  %12 = icmp eq i32 %11, -1, !dbg !326
  br i1 %12, label %._crit_edge15, label %.lr.ph13, !dbg !328

._crit_edge15:                                    ; preds = %9
  %.pre = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !329
  br label %._crit_edge14, !dbg !328

.lr.ph13:                                         ; preds = %9
  %13 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !331
  %14 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !334
  br label %15, !dbg !328

; <label>:15                                      ; preds = %.lr.ph13, %35
  %v.011 = phi i32 [ %11, %.lr.ph13 ], [ %37, %35 ]
  %16 = sext i32 %v.011 to i64, !dbg !337
  %17 = load i32** %13, align 8, !dbg !331, !tbaa !125
  %18 = getelementptr inbounds i32* %17, i64 %16, !dbg !337
  %19 = load i32* %18, align 4, !dbg !337, !tbaa !127
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !76, metadata !98), !dbg !338
  %20 = icmp eq i32 %19, -1, !dbg !339
  br i1 %20, label %35, label %21, !dbg !340

; <label>:21                                      ; preds = %15
  %22 = sext i32 %19 to i64, !dbg !341
  %23 = getelementptr inbounds i32* %10, i64 %22, !dbg !341
  %24 = load i32* %23, align 4, !dbg !341, !tbaa !127
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !78, metadata !98), !dbg !342
  %25 = load i32** %14, align 8, !dbg !334, !tbaa !146
  %26 = getelementptr inbounds i32* %25, i64 %22, !dbg !343
  %u.04 = load i32* %26, align 4, !dbg !343
  %27 = icmp eq i32 %u.04, -1, !dbg !344
  br i1 %27, label %._crit_edge9, label %.lr.ph8, !dbg !346

.lr.ph8:                                          ; preds = %21, %.lr.ph8
  %u.06 = phi i32 [ %u.0, %.lr.ph8 ], [ %u.04, %21 ]
  %vheight.05 = phi i32 [ %.vheight.0, %.lr.ph8 ], [ %24, %21 ]
  %28 = sext i32 %u.06 to i64, !dbg !347
  %29 = getelementptr inbounds i32* %10, i64 %28, !dbg !347
  %30 = load i32* %29, align 4, !dbg !347, !tbaa !127
  %31 = icmp slt i32 %vheight.05, %30, !dbg !350
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !78, metadata !98), !dbg !342
  %.vheight.0 = select i1 %31, i32 %30, i32 %vheight.05, !dbg !351
  %32 = getelementptr inbounds i32* %25, i64 %28, !dbg !352
  %u.0 = load i32* %32, align 4, !dbg !343
  %33 = icmp eq i32 %u.0, -1, !dbg !344
  br i1 %33, label %._crit_edge9, label %.lr.ph8, !dbg !346

._crit_edge9:                                     ; preds = %.lr.ph8, %21
  %vheight.0.lcssa = phi i32 [ %24, %21 ], [ %.vheight.0, %.lr.ph8 ]
  %34 = add nsw i32 %vheight.0.lcssa, 1, !dbg !353
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !78, metadata !98), !dbg !342
  br label %35

; <label>:35                                      ; preds = %15, %._crit_edge9
  %vheight.2 = phi i32 [ %34, %._crit_edge9 ], [ 1, %15 ]
  %36 = getelementptr inbounds i32* %10, i64 %16, !dbg !354
  store i32 %vheight.2, i32* %36, align 4, !dbg !355, !tbaa !127
  %37 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.011) #7, !dbg !356
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !77, metadata !98), !dbg !325
  %38 = icmp eq i32 %37, -1, !dbg !326
  br i1 %38, label %._crit_edge14, label %15, !dbg !328

._crit_edge14:                                    ; preds = %35, %._crit_edge15
  %.pre-phi = phi i32** [ %.pre, %._crit_edge15 ], [ %14, %35 ], !dbg !329
  %39 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !357
  %40 = load i32* %39, align 4, !dbg !357, !tbaa !119
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !77, metadata !98), !dbg !325
  %41 = sext i32 %40 to i64, !dbg !358
  %42 = getelementptr inbounds i32* %10, i64 %41, !dbg !358
  %43 = load i32* %42, align 4, !dbg !358, !tbaa !127
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !78, metadata !98), !dbg !342
  %44 = load i32** %.pre-phi, align 8, !dbg !329, !tbaa !146
  %45 = getelementptr inbounds i32* %44, i64 %41, !dbg !359
  %v.11 = load i32* %45, align 4, !dbg !359
  %46 = icmp eq i32 %v.11, -1, !dbg !360
  br i1 %46, label %._crit_edge, label %.lr.ph, !dbg !362

.lr.ph:                                           ; preds = %._crit_edge14, %.lr.ph
  %v.13 = phi i32 [ %v.1, %.lr.ph ], [ %v.11, %._crit_edge14 ]
  %vheight.32 = phi i32 [ %.vheight.3, %.lr.ph ], [ %43, %._crit_edge14 ]
  %47 = sext i32 %v.13 to i64, !dbg !363
  %48 = getelementptr inbounds i32* %10, i64 %47, !dbg !363
  %49 = load i32* %48, align 4, !dbg !363, !tbaa !127
  %50 = icmp slt i32 %vheight.32, %49, !dbg !366
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !78, metadata !98), !dbg !342
  %.vheight.3 = select i1 %50, i32 %49, i32 %vheight.32, !dbg !367
  %51 = getelementptr inbounds i32* %44, i64 %47, !dbg !368
  %v.1 = load i32* %51, align 4, !dbg !359
  %52 = icmp eq i32 %v.1, -1, !dbg !360
  br i1 %52, label %._crit_edge, label %.lr.ph, !dbg !362

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge14
  %vheight.3.lcssa = phi i32 [ %43, %._crit_edge14 ], [ %.vheight.3, %.lr.ph ]
  tail call void @IVfree(i32* %10) #5, !dbg !369
  ret i32 %vheight.3.lcssa, !dbg !370
}

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_maxNchild(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !82, metadata !98), !dbg !371
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !372
  br i1 %1, label %2, label %5, !dbg !374

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !375, !tbaa !114
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([48 x i8]* @.str10, i64 0, i64 0), %struct._Tree* null) #5, !dbg !377
  tail call void @exit(i32 -1) #6, !dbg !378
  unreachable, !dbg !378

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !379
  %7 = load i32* %6, align 4, !dbg !379, !tbaa !104
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !84, metadata !98), !dbg !380
  %8 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !381
  %9 = load i32** %8, align 8, !dbg !381, !tbaa !125
  tail call void @llvm.dbg.value(metadata i32* %9, i64 0, metadata !88, metadata !98), !dbg !382
  %10 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !383
  %11 = load i32** %10, align 8, !dbg !383, !tbaa !146
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !89, metadata !98), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !98), !dbg !385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !87, metadata !98), !dbg !386
  %12 = icmp sgt i32 %7, 0, !dbg !387
  br i1 %12, label %.lr.ph7, label %._crit_edge8, !dbg !390

.lr.ph7:                                          ; preds = %5
  %13 = add i32 %7, -1, !dbg !390
  br label %14, !dbg !390

; <label>:14                                      ; preds = %._crit_edge, %.lr.ph7
  %indvars.iv = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next, %._crit_edge ]
  %maxnchild.05 = phi i32 [ 0, %.lr.ph7 ], [ %nchild.0.maxnchild.0, %._crit_edge ]
  %15 = getelementptr inbounds i32* %9, i64 %indvars.iv, !dbg !391
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !85, metadata !98), !dbg !394
  %u.01 = load i32* %15, align 4, !dbg !391
  %16 = icmp eq i32 %u.01, -1, !dbg !395
  br i1 %16, label %._crit_edge, label %.lr.ph, !dbg !397

.lr.ph:                                           ; preds = %14, %.lr.ph
  %u.03 = phi i32 [ %u.0, %.lr.ph ], [ %u.01, %14 ]
  %nchild.02 = phi i32 [ %17, %.lr.ph ], [ 0, %14 ]
  %17 = add nuw nsw i32 %nchild.02, 1, !dbg !398
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !85, metadata !98), !dbg !394
  %18 = sext i32 %u.03 to i64, !dbg !400
  %19 = getelementptr inbounds i32* %11, i64 %18, !dbg !400
  %u.0 = load i32* %19, align 4, !dbg !391
  %20 = icmp eq i32 %u.0, -1, !dbg !395
  br i1 %20, label %._crit_edge, label %.lr.ph, !dbg !397

._crit_edge:                                      ; preds = %.lr.ph, %14
  %nchild.0.lcssa = phi i32 [ 0, %14 ], [ %17, %.lr.ph ]
  %21 = icmp slt i32 %maxnchild.05, %nchild.0.lcssa, !dbg !401
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !83, metadata !98), !dbg !385
  %nchild.0.maxnchild.0 = select i1 %21, i32 %nchild.0.lcssa, i32 %maxnchild.05, !dbg !403
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !390
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !390
  %exitcond = icmp eq i32 %lftr.wideiv, %13, !dbg !390
  br i1 %exitcond, label %._crit_edge8, label %14, !dbg !390

._crit_edge8:                                     ; preds = %._crit_edge, %5
  %maxnchild.0.lcssa = phi i32 [ 0, %5 ], [ %nchild.0.maxnchild.0, %._crit_edge ]
  ret i32 %maxnchild.0.lcssa, !dbg !404
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_sizeOf(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !92, metadata !98), !dbg !405
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !406
  br i1 %1, label %2, label %5, !dbg !408

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !409, !tbaa !114
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str11, i64 0, i64 0), %struct._Tree* null) #5, !dbg !411
  tail call void @exit(i32 -1) #6, !dbg !412
  unreachable, !dbg !412

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !413
  %7 = load i32* %6, align 4, !dbg !413, !tbaa !104
  %8 = mul i32 %7, 12, !dbg !414
  %9 = add i32 %8, 32, !dbg !415
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !93, metadata !98), !dbg !416
  ret i32 %9, !dbg !417
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
!llvm.module.flags = !{!94, !95, !96}
!llvm.ident = !{!97}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !24, !30, !33, !37, !42, !47, !53, !73, !80, !90}
!6 = !DISubprogram(name: "Tree_postOTfirst", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*)* @Tree_postOTfirst, variables: !21)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !12, line: 15, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !12, line: 16, size: 256, align: 64, elements: !14)
!14 = !{!15, !16, !17, !19, !20}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !13, file: !12, line: 17, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !13, file: !12, line: 18, baseType: !9, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !13, file: !12, line: 19, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !13, file: !12, line: 20, baseType: !18, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !13, file: !12, line: 21, baseType: !18, size: 64, align: 64, offset: 192)
!21 = !{!22, !23}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !6, file: !1, line: 15, type: !10)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !6, file: !1, line: 17, type: !9)
!24 = !DISubprogram(name: "Tree_postOTnext", scope: !1, file: !1, line: 47, type: !25, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*, i32)* @Tree_postOTnext, variables: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!9, !10, !9}
!27 = !{!28, !29}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !24, file: !1, line: 48, type: !10)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !24, file: !1, line: 49, type: !9)
!30 = !DISubprogram(name: "Tree_preOTfirst", scope: !1, file: !1, line: 85, type: !7, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*)* @Tree_preOTfirst, variables: !31)
!31 = !{!32}
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !30, file: !1, line: 86, type: !10)
!33 = !DISubprogram(name: "Tree_preOTnext", scope: !1, file: !1, line: 109, type: !25, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*, i32)* @Tree_preOTnext, variables: !34)
!34 = !{!35, !36}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !33, file: !1, line: 110, type: !10)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !33, file: !1, line: 111, type: !9)
!37 = !DISubprogram(name: "Tree_nleaves", scope: !1, file: !1, line: 147, type: !7, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*)* @Tree_nleaves, variables: !38)
!38 = !{!39, !40, !41}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !37, file: !1, line: 148, type: !10)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nleaf", scope: !37, file: !1, line: 150, type: !9)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !37, file: !1, line: 150, type: !9)
!42 = !DISubprogram(name: "Tree_nroots", scope: !1, file: !1, line: 179, type: !7, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*)* @Tree_nroots, variables: !43)
!43 = !{!44, !45, !46}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !42, file: !1, line: 180, type: !10)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nroot", scope: !42, file: !1, line: 182, type: !9)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !42, file: !1, line: 182, type: !9)
!47 = !DISubprogram(name: "Tree_nchild", scope: !1, file: !1, line: 213, type: !25, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*, i32)* @Tree_nchild, variables: !48)
!48 = !{!49, !50, !51, !52}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !47, file: !1, line: 214, type: !10)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !47, file: !1, line: 215, type: !9)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nchild", scope: !47, file: !1, line: 217, type: !9)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !47, file: !1, line: 217, type: !9)
!53 = !DISubprogram(name: "Tree_nchildIV", scope: !1, file: !1, line: 249, type: !54, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._Tree*)* @Tree_nchildIV, variables: !65)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !10}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !58, line: 20, baseType: !59)
!58 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !58, line: 21, size: 192, align: 64, elements: !60)
!60 = !{!61, !62, !63, !64}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !59, file: !58, line: 22, baseType: !9, size: 32, align: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !59, file: !58, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !59, file: !58, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !59, file: !58, line: 25, baseType: !18, size: 64, align: 64, offset: 128)
!65 = !{!66, !67, !68, !69, !70, !71, !72}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !53, file: !1, line: 250, type: !10)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !53, file: !1, line: 252, type: !9)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !53, file: !1, line: 252, type: !9)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !53, file: !1, line: 252, type: !9)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nchild", scope: !53, file: !1, line: 253, type: !18)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "par", scope: !53, file: !1, line: 253, type: !18)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nchildIV", scope: !53, file: !1, line: 254, type: !56)
!73 = !DISubprogram(name: "Tree_height", scope: !1, file: !1, line: 287, type: !7, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*)* @Tree_height, variables: !74)
!74 = !{!75, !76, !77, !78, !79}
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !73, file: !1, line: 288, type: !10)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !73, file: !1, line: 290, type: !9)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !73, file: !1, line: 290, type: !9)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vheight", scope: !73, file: !1, line: 290, type: !9)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "heights", scope: !73, file: !1, line: 291, type: !18)
!80 = !DISubprogram(name: "Tree_maxNchild", scope: !1, file: !1, line: 339, type: !7, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*)* @Tree_maxNchild, variables: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89}
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !80, file: !1, line: 340, type: !10)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxnchild", scope: !80, file: !1, line: 342, type: !9)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !80, file: !1, line: 342, type: !9)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nchild", scope: !80, file: !1, line: 342, type: !9)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !80, file: !1, line: 342, type: !9)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !80, file: !1, line: 342, type: !9)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fch", scope: !80, file: !1, line: 343, type: !18)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sib", scope: !80, file: !1, line: 343, type: !18)
!90 = !DISubprogram(name: "Tree_sizeOf", scope: !1, file: !1, line: 375, type: !7, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*)* @Tree_sizeOf, variables: !91)
!91 = !{!92, !93}
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !90, file: !1, line: 376, type: !10)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !90, file: !1, line: 378, type: !9)
!94 = !{i32 2, !"Dwarf Version", i32 2}
!95 = !{i32 2, !"Debug Info Version", i32 700000003}
!96 = !{i32 1, !"PIC Level", i32 2}
!97 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!98 = !DIExpression()
!99 = !DILocation(line: 15, column: 12, scope: !6)
!100 = !DILocation(line: 23, column: 11, scope: !101)
!101 = distinct !DILexicalBlock(scope: !6, file: !1, line: 23, column: 6)
!102 = !DILocation(line: 23, column: 19, scope: !101)
!103 = !DILocation(line: 23, column: 28, scope: !101)
!104 = !{!105, !106, i64 0}
!105 = !{!"_Tree", !106, i64 0, !106, i64 4, !109, i64 8, !109, i64 16, !109, i64 24}
!106 = !{!"int", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !{!"any pointer", !107, i64 0}
!110 = !DILocation(line: 23, column: 30, scope: !101)
!111 = !DILocation(line: 23, column: 6, scope: !6)
!112 = !DILocation(line: 24, column: 12, scope: !113)
!113 = distinct !DILexicalBlock(scope: !101, file: !1, line: 23, column: 36)
!114 = !{!109, !109, i64 0}
!115 = !DILocation(line: 24, column: 4, scope: !113)
!116 = !DILocation(line: 26, column: 4, scope: !113)
!117 = !DILocation(line: 33, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !6, file: !1, line: 33, column: 6)
!119 = !{!105, !106, i64 4}
!120 = !DILocation(line: 17, column: 7, scope: !6)
!121 = !DILocation(line: 33, column: 23, scope: !118)
!122 = !DILocation(line: 33, column: 6, scope: !6)
!123 = !DILocation(line: 34, column: 18, scope: !124)
!124 = distinct !DILexicalBlock(scope: !118, file: !1, line: 33, column: 31)
!125 = !{!105, !109, i64 16}
!126 = !DILocation(line: 34, column: 12, scope: !124)
!127 = !{!106, !106, i64 0}
!128 = !DILocation(line: 34, column: 25, scope: !124)
!129 = !DILocation(line: 34, column: 4, scope: !124)
!130 = !DILocation(line: 38, column: 1, scope: !6)
!131 = !DILocation(line: 48, column: 12, scope: !24)
!132 = !DILocation(line: 49, column: 11, scope: !24)
!133 = !DILocation(line: 56, column: 11, scope: !134)
!134 = distinct !DILexicalBlock(scope: !24, file: !1, line: 56, column: 6)
!135 = !DILocation(line: 56, column: 19, scope: !134)
!136 = !DILocation(line: 56, column: 28, scope: !134)
!137 = !DILocation(line: 56, column: 34, scope: !134)
!138 = !DILocation(line: 56, column: 48, scope: !134)
!139 = !DILocation(line: 57, column: 12, scope: !140)
!140 = distinct !DILexicalBlock(scope: !134, file: !1, line: 56, column: 61)
!141 = !DILocation(line: 57, column: 4, scope: !140)
!142 = !DILocation(line: 59, column: 4, scope: !140)
!143 = !DILocation(line: 66, column: 6, scope: !144)
!144 = distinct !DILexicalBlock(scope: !24, file: !1, line: 66, column: 6)
!145 = !DILocation(line: 66, column: 12, scope: !144)
!146 = !{!105, !109, i64 24}
!147 = !DILocation(line: 66, column: 19, scope: !144)
!148 = !DILocation(line: 66, column: 6, scope: !24)
!149 = !DILocation(line: 68, column: 18, scope: !150)
!150 = distinct !DILexicalBlock(scope: !144, file: !1, line: 66, column: 27)
!151 = !DILocation(line: 68, column: 12, scope: !150)
!152 = !DILocation(line: 68, column: 25, scope: !150)
!153 = !DILocation(line: 68, column: 4, scope: !150)
!154 = !DILocation(line: 72, column: 14, scope: !155)
!155 = distinct !DILexicalBlock(scope: !144, file: !1, line: 71, column: 8)
!156 = !{!105, !109, i64 8}
!157 = !DILocation(line: 72, column: 8, scope: !155)
!158 = !DILocation(line: 74, column: 1, scope: !24)
!159 = !DILocation(line: 86, column: 12, scope: !30)
!160 = !DILocation(line: 93, column: 11, scope: !161)
!161 = distinct !DILexicalBlock(scope: !30, file: !1, line: 93, column: 6)
!162 = !DILocation(line: 93, column: 19, scope: !161)
!163 = !DILocation(line: 93, column: 28, scope: !161)
!164 = !DILocation(line: 93, column: 30, scope: !161)
!165 = !DILocation(line: 93, column: 6, scope: !30)
!166 = !DILocation(line: 94, column: 12, scope: !167)
!167 = distinct !DILexicalBlock(scope: !161, file: !1, line: 93, column: 36)
!168 = !DILocation(line: 94, column: 4, scope: !167)
!169 = !DILocation(line: 96, column: 4, scope: !167)
!170 = !DILocation(line: 98, column: 14, scope: !30)
!171 = !DILocation(line: 98, column: 1, scope: !30)
!172 = !DILocation(line: 110, column: 12, scope: !33)
!173 = !DILocation(line: 111, column: 11, scope: !33)
!174 = !DILocation(line: 118, column: 11, scope: !175)
!175 = distinct !DILexicalBlock(scope: !33, file: !1, line: 118, column: 6)
!176 = !DILocation(line: 118, column: 19, scope: !175)
!177 = !DILocation(line: 118, column: 28, scope: !175)
!178 = !DILocation(line: 118, column: 34, scope: !175)
!179 = !DILocation(line: 118, column: 48, scope: !175)
!180 = !DILocation(line: 119, column: 12, scope: !181)
!181 = distinct !DILexicalBlock(scope: !175, file: !1, line: 118, column: 61)
!182 = !DILocation(line: 119, column: 4, scope: !181)
!183 = !DILocation(line: 121, column: 4, scope: !181)
!184 = !DILocation(line: 128, column: 6, scope: !185)
!185 = distinct !DILexicalBlock(scope: !33, file: !1, line: 128, column: 6)
!186 = !DILocation(line: 128, column: 12, scope: !185)
!187 = !DILocation(line: 128, column: 19, scope: !185)
!188 = !DILocation(line: 128, column: 6, scope: !33)
!189 = !DILocation(line: 131, column: 40, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !1, line: 130, column: 8)
!191 = !DILocation(line: 131, column: 18, scope: !190)
!192 = !DILocation(line: 131, column: 12, scope: !190)
!193 = !DILocation(line: 131, column: 25, scope: !190)
!194 = !DILocation(line: 131, column: 31, scope: !190)
!195 = !DILocation(line: 131, column: 34, scope: !190)
!196 = !DILocation(line: 131, column: 47, scope: !190)
!197 = !DILocation(line: 131, column: 4, scope: !190)
!198 = !DILocation(line: 136, column: 1, scope: !33)
!199 = !DILocation(line: 148, column: 12, scope: !37)
!200 = !DILocation(line: 156, column: 11, scope: !201)
!201 = distinct !DILexicalBlock(scope: !37, file: !1, line: 156, column: 6)
!202 = !DILocation(line: 156, column: 19, scope: !201)
!203 = !DILocation(line: 156, column: 28, scope: !201)
!204 = !DILocation(line: 156, column: 30, scope: !201)
!205 = !DILocation(line: 156, column: 6, scope: !37)
!206 = !DILocation(line: 164, column: 15, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 164, column: 9)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 163, column: 35)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 163, column: 1)
!210 = distinct !DILexicalBlock(scope: !37, file: !1, line: 163, column: 1)
!211 = !DILocation(line: 163, column: 1, scope: !210)
!212 = !DILocation(line: 157, column: 12, scope: !213)
!213 = distinct !DILexicalBlock(scope: !201, file: !1, line: 156, column: 36)
!214 = !DILocation(line: 157, column: 4, scope: !213)
!215 = !DILocation(line: 159, column: 4, scope: !213)
!216 = !DILocation(line: 164, column: 9, scope: !207)
!217 = !DILocation(line: 164, column: 22, scope: !207)
!218 = !DILocation(line: 164, column: 9, scope: !208)
!219 = !DILocation(line: 163, column: 17, scope: !209)
!220 = !DILocation(line: 168, column: 1, scope: !37)
!221 = !DILocation(line: 180, column: 12, scope: !42)
!222 = !DILocation(line: 188, column: 11, scope: !223)
!223 = distinct !DILexicalBlock(scope: !42, file: !1, line: 188, column: 6)
!224 = !DILocation(line: 188, column: 19, scope: !223)
!225 = !DILocation(line: 188, column: 28, scope: !223)
!226 = !DILocation(line: 188, column: 30, scope: !223)
!227 = !DILocation(line: 188, column: 6, scope: !42)
!228 = !DILocation(line: 196, column: 15, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 196, column: 9)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 195, column: 34)
!231 = distinct !DILexicalBlock(scope: !232, file: !1, line: 195, column: 1)
!232 = distinct !DILexicalBlock(scope: !42, file: !1, line: 195, column: 1)
!233 = !DILocation(line: 195, column: 1, scope: !232)
!234 = !DILocation(line: 189, column: 12, scope: !235)
!235 = distinct !DILexicalBlock(scope: !223, file: !1, line: 188, column: 36)
!236 = !DILocation(line: 189, column: 4, scope: !235)
!237 = !DILocation(line: 191, column: 4, scope: !235)
!238 = !DILocation(line: 196, column: 9, scope: !229)
!239 = !DILocation(line: 196, column: 22, scope: !229)
!240 = !DILocation(line: 196, column: 9, scope: !230)
!241 = !DILocation(line: 195, column: 17, scope: !231)
!242 = !DILocation(line: 200, column: 1, scope: !42)
!243 = !DILocation(line: 214, column: 12, scope: !47)
!244 = !DILocation(line: 215, column: 11, scope: !47)
!245 = !DILocation(line: 223, column: 11, scope: !246)
!246 = distinct !DILexicalBlock(scope: !47, file: !1, line: 223, column: 6)
!247 = !DILocation(line: 223, column: 19, scope: !246)
!248 = !DILocation(line: 223, column: 28, scope: !246)
!249 = !DILocation(line: 223, column: 30, scope: !246)
!250 = !DILocation(line: 223, column: 6, scope: !47)
!251 = !DILocation(line: 224, column: 12, scope: !252)
!252 = distinct !DILexicalBlock(scope: !246, file: !1, line: 223, column: 36)
!253 = !DILocation(line: 224, column: 4, scope: !252)
!254 = !DILocation(line: 226, column: 4, scope: !252)
!255 = !DILocation(line: 228, column: 8, scope: !256)
!256 = distinct !DILexicalBlock(scope: !47, file: !1, line: 228, column: 6)
!257 = !DILocation(line: 228, column: 17, scope: !256)
!258 = !DILocation(line: 228, column: 12, scope: !256)
!259 = !DILocation(line: 229, column: 12, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !1, line: 228, column: 30)
!261 = !DILocation(line: 229, column: 4, scope: !260)
!262 = !DILocation(line: 231, column: 4, scope: !260)
!263 = !DILocation(line: 217, column: 7, scope: !47)
!264 = !DILocation(line: 234, column: 11, scope: !265)
!265 = distinct !DILexicalBlock(scope: !47, file: !1, line: 234, column: 1)
!266 = !DILocation(line: 234, column: 17, scope: !265)
!267 = !DILocation(line: 234, column: 28, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !1, line: 234, column: 1)
!269 = !DILocation(line: 234, column: 1, scope: !265)
!270 = !DILocation(line: 234, column: 46, scope: !268)
!271 = !DILocation(line: 235, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !268, file: !1, line: 234, column: 55)
!273 = !DILocation(line: 234, column: 40, scope: !268)
!274 = !DILocation(line: 237, column: 1, scope: !47)
!275 = !DILocation(line: 250, column: 12, scope: !53)
!276 = !DILocation(line: 260, column: 11, scope: !277)
!277 = distinct !DILexicalBlock(scope: !53, file: !1, line: 260, column: 6)
!278 = !DILocation(line: 260, column: 19, scope: !277)
!279 = !DILocation(line: 260, column: 33, scope: !277)
!280 = !DILocation(line: 252, column: 7, scope: !53)
!281 = !DILocation(line: 260, column: 36, scope: !277)
!282 = !DILocation(line: 260, column: 6, scope: !53)
!283 = !DILocation(line: 261, column: 12, scope: !284)
!284 = distinct !DILexicalBlock(scope: !277, file: !1, line: 260, column: 42)
!285 = !DILocation(line: 261, column: 4, scope: !284)
!286 = !DILocation(line: 263, column: 4, scope: !284)
!287 = !DILocation(line: 265, column: 12, scope: !53)
!288 = !DILocation(line: 254, column: 8, scope: !53)
!289 = !DILocation(line: 266, column: 1, scope: !53)
!290 = !DILocation(line: 267, column: 1, scope: !53)
!291 = !DILocation(line: 268, column: 13, scope: !53)
!292 = !DILocation(line: 253, column: 17, scope: !53)
!293 = !DILocation(line: 269, column: 10, scope: !53)
!294 = !DILocation(line: 253, column: 8, scope: !53)
!295 = !DILocation(line: 252, column: 10, scope: !53)
!296 = !DILocation(line: 270, column: 1, scope: !297)
!297 = distinct !DILexicalBlock(scope: !53, file: !1, line: 270, column: 1)
!298 = !DILocation(line: 271, column: 14, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !1, line: 271, column: 9)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 270, column: 29)
!301 = distinct !DILexicalBlock(scope: !297, file: !1, line: 270, column: 1)
!302 = !DILocation(line: 252, column: 13, scope: !53)
!303 = !DILocation(line: 271, column: 22, scope: !299)
!304 = !DILocation(line: 271, column: 9, scope: !300)
!305 = !DILocation(line: 272, column: 7, scope: !306)
!306 = distinct !DILexicalBlock(scope: !299, file: !1, line: 271, column: 30)
!307 = !DILocation(line: 272, column: 16, scope: !306)
!308 = !DILocation(line: 273, column: 4, scope: !306)
!309 = !DILocation(line: 276, column: 1, scope: !53)
!310 = !DILocation(line: 288, column: 12, scope: !73)
!311 = !DILocation(line: 297, column: 11, scope: !312)
!312 = distinct !DILexicalBlock(scope: !73, file: !1, line: 297, column: 6)
!313 = !DILocation(line: 297, column: 19, scope: !312)
!314 = !DILocation(line: 297, column: 28, scope: !312)
!315 = !DILocation(line: 297, column: 30, scope: !312)
!316 = !DILocation(line: 297, column: 6, scope: !73)
!317 = !DILocation(line: 298, column: 12, scope: !318)
!318 = distinct !DILexicalBlock(scope: !312, file: !1, line: 297, column: 36)
!319 = !DILocation(line: 298, column: 4, scope: !318)
!320 = !DILocation(line: 300, column: 4, scope: !318)
!321 = !DILocation(line: 302, column: 11, scope: !73)
!322 = !DILocation(line: 291, column: 8, scope: !73)
!323 = !DILocation(line: 303, column: 11, scope: !324)
!324 = distinct !DILexicalBlock(scope: !73, file: !1, line: 303, column: 1)
!325 = !DILocation(line: 290, column: 10, scope: !73)
!326 = !DILocation(line: 304, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !1, line: 303, column: 1)
!328 = !DILocation(line: 303, column: 1, scope: !324)
!329 = !DILocation(line: 321, column: 17, scope: !330)
!330 = distinct !DILexicalBlock(scope: !73, file: !1, line: 321, column: 1)
!331 = !DILocation(line: 306, column: 20, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !1, line: 306, column: 9)
!333 = distinct !DILexicalBlock(scope: !327, file: !1, line: 305, column: 38)
!334 = !DILocation(line: 310, column: 23, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !1, line: 310, column: 7)
!336 = distinct !DILexicalBlock(scope: !332, file: !1, line: 308, column: 11)
!337 = !DILocation(line: 306, column: 14, scope: !332)
!338 = !DILocation(line: 290, column: 7, scope: !73)
!339 = !DILocation(line: 306, column: 28, scope: !332)
!340 = !DILocation(line: 306, column: 9, scope: !333)
!341 = !DILocation(line: 309, column: 17, scope: !336)
!342 = !DILocation(line: 290, column: 13, scope: !73)
!343 = !DILocation(line: 310, column: 17, scope: !335)
!344 = !DILocation(line: 310, column: 34, scope: !345)
!345 = distinct !DILexicalBlock(scope: !335, file: !1, line: 310, column: 7)
!346 = !DILocation(line: 310, column: 7, scope: !335)
!347 = !DILocation(line: 311, column: 25, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !1, line: 311, column: 15)
!349 = distinct !DILexicalBlock(scope: !345, file: !1, line: 310, column: 61)
!350 = !DILocation(line: 311, column: 23, scope: !348)
!351 = !DILocation(line: 311, column: 15, scope: !349)
!352 = !DILocation(line: 310, column: 46, scope: !345)
!353 = !DILocation(line: 315, column: 14, scope: !336)
!354 = !DILocation(line: 317, column: 4, scope: !333)
!355 = !DILocation(line: 317, column: 15, scope: !333)
!356 = !DILocation(line: 305, column: 11, scope: !327)
!357 = !DILocation(line: 319, column: 11, scope: !73)
!358 = !DILocation(line: 320, column: 11, scope: !73)
!359 = !DILocation(line: 321, column: 11, scope: !330)
!360 = !DILocation(line: 321, column: 28, scope: !361)
!361 = distinct !DILexicalBlock(scope: !330, file: !1, line: 321, column: 1)
!362 = !DILocation(line: 321, column: 1, scope: !330)
!363 = !DILocation(line: 322, column: 19, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 322, column: 9)
!365 = distinct !DILexicalBlock(scope: !361, file: !1, line: 321, column: 55)
!366 = !DILocation(line: 322, column: 17, scope: !364)
!367 = !DILocation(line: 322, column: 9, scope: !365)
!368 = !DILocation(line: 321, column: 40, scope: !361)
!369 = !DILocation(line: 326, column: 1, scope: !73)
!370 = !DILocation(line: 328, column: 1, scope: !73)
!371 = !DILocation(line: 340, column: 12, scope: !80)
!372 = !DILocation(line: 349, column: 11, scope: !373)
!373 = distinct !DILexicalBlock(scope: !80, file: !1, line: 349, column: 6)
!374 = !DILocation(line: 349, column: 6, scope: !80)
!375 = !DILocation(line: 350, column: 12, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !1, line: 349, column: 21)
!377 = !DILocation(line: 350, column: 4, scope: !376)
!378 = !DILocation(line: 352, column: 4, scope: !376)
!379 = !DILocation(line: 354, column: 13, scope: !80)
!380 = !DILocation(line: 342, column: 18, scope: !80)
!381 = !DILocation(line: 355, column: 13, scope: !80)
!382 = !DILocation(line: 343, column: 8, scope: !80)
!383 = !DILocation(line: 356, column: 13, scope: !80)
!384 = !DILocation(line: 343, column: 14, scope: !80)
!385 = !DILocation(line: 342, column: 7, scope: !80)
!386 = !DILocation(line: 342, column: 32, scope: !80)
!387 = !DILocation(line: 358, column: 17, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !1, line: 358, column: 1)
!389 = distinct !DILexicalBlock(scope: !80, file: !1, line: 358, column: 1)
!390 = !DILocation(line: 358, column: 1, scope: !389)
!391 = !DILocation(line: 359, column: 14, scope: !392)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 359, column: 4)
!393 = distinct !DILexicalBlock(scope: !388, file: !1, line: 358, column: 29)
!394 = !DILocation(line: 342, column: 21, scope: !80)
!395 = !DILocation(line: 359, column: 37, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !1, line: 359, column: 4)
!397 = !DILocation(line: 359, column: 4, scope: !392)
!398 = !DILocation(line: 360, column: 13, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !1, line: 359, column: 58)
!400 = !DILocation(line: 359, column: 49, scope: !396)
!401 = !DILocation(line: 362, column: 19, scope: !402)
!402 = distinct !DILexicalBlock(scope: !393, file: !1, line: 362, column: 9)
!403 = !DILocation(line: 362, column: 9, scope: !393)
!404 = !DILocation(line: 366, column: 1, scope: !80)
!405 = !DILocation(line: 376, column: 12, scope: !90)
!406 = !DILocation(line: 384, column: 11, scope: !407)
!407 = distinct !DILexicalBlock(scope: !90, file: !1, line: 384, column: 6)
!408 = !DILocation(line: 384, column: 6, scope: !90)
!409 = !DILocation(line: 385, column: 12, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !1, line: 384, column: 21)
!411 = !DILocation(line: 385, column: 4, scope: !410)
!412 = !DILocation(line: 387, column: 4, scope: !410)
!413 = !DILocation(line: 390, column: 41, scope: !90)
!414 = !DILocation(line: 390, column: 42, scope: !90)
!415 = !DILocation(line: 390, column: 31, scope: !90)
!416 = !DILocation(line: 378, column: 7, scope: !90)
!417 = !DILocation(line: 392, column: 1, scope: !90)
