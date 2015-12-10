; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [46 x i8] c"\0A fatal error in ETree_nfront(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ETree_nvtx(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ETree_tree(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ETree_root(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [43 x i8] c"\0A fatal error in ETree_par(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [43 x i8] c"\0A fatal error in ETree_fch(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [43 x i8] c"\0A fatal error in ETree_sib(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ETree_nodwghtsIV(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [48 x i8] c"\0A fatal error in ETree_nodwghts(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ETree_bndwghtsIV(%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [48 x i8] c"\0A fatal error in ETree_bndwghts(%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ETree_vtxToFrontIV(%p)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ETree_vtxToFront(%p)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ETree_frontSize(%p,%d)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ETree_frontBoundarySize(%p,%d)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_maxNindAndNent(%p,%d)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [59 x i8] c"\0A fatal error in ETree_maxNindAndNent(%p,%d)\0A bad symflag\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ETree_nfront(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !42, metadata !117), !dbg !118
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !119
  br i1 %1, label %2, label %5, !dbg !121

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !122, !tbaa !124
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), %struct._ETree* null) #5, !dbg !128
  tail call void @exit(i32 -1) #6, !dbg !129
  unreachable, !dbg !129

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !130
  %7 = load i32* %6, align 4, !dbg !130, !tbaa !131
  ret i32 %7, !dbg !134
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ETree_nvtx(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !45, metadata !117), !dbg !135
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !136
  br i1 %1, label %2, label %5, !dbg !138

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !139, !tbaa !124
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str1, i64 0, i64 0), %struct._ETree* null) #5, !dbg !141
  tail call void @exit(i32 -1) #6, !dbg !142
  unreachable, !dbg !142

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !143
  %7 = load i32* %6, align 4, !dbg !143, !tbaa !144
  ret i32 %7, !dbg !145
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct._Tree* @ETree_tree(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !50, metadata !117), !dbg !146
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !147
  br i1 %1, label %2, label %5, !dbg !149

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !150, !tbaa !124
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str2, i64 0, i64 0), %struct._ETree* null) #5, !dbg !152
  tail call void @exit(i32 -1) #6, !dbg !153
  unreachable, !dbg !153

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !154
  %7 = load %struct._Tree** %6, align 8, !dbg !154, !tbaa !155
  ret %struct._Tree* %7, !dbg !156
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ETree_root(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !53, metadata !117), !dbg !157
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !158
  br i1 %1, label %6, label %2, !dbg !160

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !161
  %4 = load %struct._Tree** %3, align 8, !dbg !161, !tbaa !155
  %5 = icmp eq %struct._Tree* %4, null, !dbg !162
  br i1 %5, label %6, label %9, !dbg !163

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !164, !tbaa !124
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !166
  tail call void @exit(i32 -1) #6, !dbg !167
  unreachable, !dbg !167

; <label>:9                                       ; preds = %2
  %10 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 1, !dbg !168
  %11 = load i32* %10, align 4, !dbg !168, !tbaa !169
  ret i32 %11, !dbg !171
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @ETree_par(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !58, metadata !117), !dbg !172
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !173
  br i1 %1, label %6, label %2, !dbg !175

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !176
  %4 = load %struct._Tree** %3, align 8, !dbg !176, !tbaa !155
  %5 = icmp eq %struct._Tree* %4, null, !dbg !177
  br i1 %5, label %6, label %9, !dbg !178

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !179, !tbaa !124
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([43 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !181
  tail call void @exit(i32 -1) #6, !dbg !182
  unreachable, !dbg !182

; <label>:9                                       ; preds = %2
  %10 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 2, !dbg !183
  %11 = load i32** %10, align 8, !dbg !183, !tbaa !184
  ret i32* %11, !dbg !185
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @ETree_fch(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !61, metadata !117), !dbg !186
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !187
  br i1 %1, label %6, label %2, !dbg !189

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !190
  %4 = load %struct._Tree** %3, align 8, !dbg !190, !tbaa !155
  %5 = icmp eq %struct._Tree* %4, null, !dbg !191
  br i1 %5, label %6, label %9, !dbg !192

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !193, !tbaa !124
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !195
  tail call void @exit(i32 -1) #6, !dbg !196
  unreachable, !dbg !196

; <label>:9                                       ; preds = %2
  %10 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 3, !dbg !197
  %11 = load i32** %10, align 8, !dbg !197, !tbaa !198
  ret i32* %11, !dbg !199
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @ETree_sib(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !64, metadata !117), !dbg !200
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !201
  br i1 %1, label %6, label %2, !dbg !203

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !204
  %4 = load %struct._Tree** %3, align 8, !dbg !204, !tbaa !155
  %5 = icmp eq %struct._Tree* %4, null, !dbg !205
  br i1 %5, label %6, label %9, !dbg !206

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !207, !tbaa !124
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([43 x i8]* @.str6, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !209
  tail call void @exit(i32 -1) #6, !dbg !210
  unreachable, !dbg !210

; <label>:9                                       ; preds = %2
  %10 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 4, !dbg !211
  %11 = load i32** %10, align 8, !dbg !211, !tbaa !212
  ret i32* %11, !dbg !213
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @ETree_nodwghtsIV(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !69, metadata !117), !dbg !214
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !215
  br i1 %1, label %2, label %5, !dbg !217

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !218, !tbaa !124
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str7, i64 0, i64 0), %struct._ETree* null) #5, !dbg !220
  tail call void @exit(i32 -1) #6, !dbg !221
  unreachable, !dbg !221

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !222
  %7 = load %struct._IV** %6, align 8, !dbg !222, !tbaa !223
  ret %struct._IV* %7, !dbg !224
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @ETree_nodwghts(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !72, metadata !117), !dbg !225
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !226
  br i1 %1, label %6, label %2, !dbg !228

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !229
  %4 = load %struct._IV** %3, align 8, !dbg !229, !tbaa !223
  %5 = icmp eq %struct._IV* %4, null, !dbg !230
  br i1 %5, label %6, label %9, !dbg !231

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !232, !tbaa !124
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([48 x i8]* @.str8, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !234
  tail call void @exit(i32 -1) #6, !dbg !235
  unreachable, !dbg !235

; <label>:9                                       ; preds = %2
  %10 = tail call i32* @IV_entries(%struct._IV* %4) #5, !dbg !236
  ret i32* %10, !dbg !237
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @ETree_bndwghtsIV(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !75, metadata !117), !dbg !238
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !239
  br i1 %1, label %2, label %5, !dbg !241

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !242, !tbaa !124
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str9, i64 0, i64 0), %struct._ETree* null) #5, !dbg !244
  tail call void @exit(i32 -1) #6, !dbg !245
  unreachable, !dbg !245

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !246
  %7 = load %struct._IV** %6, align 8, !dbg !246, !tbaa !247
  ret %struct._IV* %7, !dbg !248
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @ETree_bndwghts(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !78, metadata !117), !dbg !249
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !250
  br i1 %1, label %6, label %2, !dbg !252

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !253
  %4 = load %struct._IV** %3, align 8, !dbg !253, !tbaa !247
  %5 = icmp eq %struct._IV* %4, null, !dbg !254
  br i1 %5, label %6, label %9, !dbg !255

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !256, !tbaa !124
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([48 x i8]* @.str10, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !258
  tail call void @exit(i32 -1) #6, !dbg !259
  unreachable, !dbg !259

; <label>:9                                       ; preds = %2
  %10 = tail call i32* @IV_entries(%struct._IV* %4) #5, !dbg !260
  ret i32* %10, !dbg !261
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @ETree_vtxToFrontIV(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !81, metadata !117), !dbg !262
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !263
  br i1 %1, label %2, label %5, !dbg !265

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !266, !tbaa !124
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str11, i64 0, i64 0), %struct._ETree* null) #5, !dbg !268
  tail call void @exit(i32 -1) #6, !dbg !269
  unreachable, !dbg !269

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !270
  %7 = load %struct._IV** %6, align 8, !dbg !270, !tbaa !271
  ret %struct._IV* %7, !dbg !272
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @ETree_vtxToFront(%struct._ETree* %etree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !84, metadata !117), !dbg !273
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !274
  br i1 %1, label %6, label %2, !dbg !276

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !277
  %4 = load %struct._IV** %3, align 8, !dbg !277, !tbaa !271
  %5 = icmp eq %struct._IV* %4, null, !dbg !278
  br i1 %5, label %6, label %9, !dbg !279

; <label>:6                                       ; preds = %2, %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !280, !tbaa !124
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([50 x i8]* @.str12, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !282
  tail call void @exit(i32 -1) #6, !dbg !283
  unreachable, !dbg !283

; <label>:9                                       ; preds = %2
  %10 = tail call i32* @IV_entries(%struct._IV* %4) #5, !dbg !284
  ret i32* %10, !dbg !285
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ETree_frontSize(%struct._ETree* %etree, i32 %J) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !89, metadata !117), !dbg !286
  tail call void @llvm.dbg.value(metadata i32 %J, i64 0, metadata !90, metadata !117), !dbg !287
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !288
  %2 = icmp slt i32 %J, 0, !dbg !290
  %or.cond = or i1 %1, %2, !dbg !291
  br i1 %or.cond, label %7, label %3, !dbg !291

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !292
  %5 = load i32* %4, align 4, !dbg !292, !tbaa !131
  %6 = icmp sgt i32 %5, %J, !dbg !293
  br i1 %6, label %10, label %7, !dbg !294

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !295, !tbaa !124
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), %struct._ETree* %etree, i32 %J) #5, !dbg !297
  tail call void @exit(i32 -1) #6, !dbg !298
  unreachable, !dbg !298

; <label>:10                                      ; preds = %3
  %11 = sext i32 %J to i64, !dbg !299
  %12 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !300
  %13 = load %struct._IV** %12, align 8, !dbg !300, !tbaa !223
  %14 = getelementptr inbounds %struct._IV* %13, i64 0, i32 3, !dbg !301
  %15 = load i32** %14, align 8, !dbg !301, !tbaa !302
  %16 = getelementptr inbounds i32* %15, i64 %11, !dbg !299
  %17 = load i32* %16, align 4, !dbg !299, !tbaa !304
  ret i32 %17, !dbg !305
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ETree_frontBoundarySize(%struct._ETree* %etree, i32 %J) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !93, metadata !117), !dbg !306
  tail call void @llvm.dbg.value(metadata i32 %J, i64 0, metadata !94, metadata !117), !dbg !307
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !308
  %2 = icmp slt i32 %J, 0, !dbg !310
  %or.cond = or i1 %1, %2, !dbg !311
  br i1 %or.cond, label %7, label %3, !dbg !311

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !312
  %5 = load i32* %4, align 4, !dbg !312, !tbaa !131
  %6 = icmp sgt i32 %5, %J, !dbg !313
  br i1 %6, label %10, label %7, !dbg !314

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !315, !tbaa !124
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([60 x i8]* @.str14, i64 0, i64 0), %struct._ETree* %etree, i32 %J) #5, !dbg !317
  tail call void @exit(i32 -1) #6, !dbg !318
  unreachable, !dbg !318

; <label>:10                                      ; preds = %3
  %11 = sext i32 %J to i64, !dbg !319
  %12 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !320
  %13 = load %struct._IV** %12, align 8, !dbg !320, !tbaa !247
  %14 = getelementptr inbounds %struct._IV* %13, i64 0, i32 3, !dbg !321
  %15 = load i32** %14, align 8, !dbg !321, !tbaa !302
  %16 = getelementptr inbounds i32* %15, i64 %11, !dbg !319
  %17 = load i32* %16, align 4, !dbg !319, !tbaa !304
  ret i32 %17, !dbg !322
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ETree_maxNindAndNent(%struct._ETree* %etree, i32 %symflag, i32* nocapture %pmaxnind, i32* nocapture %pmaxnent) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !99, metadata !117), !dbg !323
  tail call void @llvm.dbg.value(metadata i32 %symflag, i64 0, metadata !100, metadata !117), !dbg !324
  tail call void @llvm.dbg.value(metadata i32* %pmaxnind, i64 0, metadata !101, metadata !117), !dbg !325
  tail call void @llvm.dbg.value(metadata i32* %pmaxnent, i64 0, metadata !102, metadata !117), !dbg !326
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !327
  br i1 %1, label %2, label %5, !dbg !329

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !330, !tbaa !124
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([57 x i8]* @.str15, i64 0, i64 0), %struct._ETree* null, i32 %symflag) #5, !dbg !332
  tail call void @exit(i32 -1) #6, !dbg !333
  unreachable, !dbg !333

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !334
  %7 = load i32* %6, align 4, !dbg !334, !tbaa !131
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !108, metadata !117), !dbg !335
  %8 = tail call i32* @ETree_nodwghts(%struct._ETree* %etree) #7, !dbg !336
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !111, metadata !117), !dbg !337
  %9 = tail call i32* @ETree_bndwghts(%struct._ETree* %etree) #7, !dbg !338
  tail call void @llvm.dbg.value(metadata i32* %9, i64 0, metadata !112, metadata !117), !dbg !339
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !103, metadata !117), !dbg !340
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !105, metadata !117), !dbg !341
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !104, metadata !117), !dbg !342
  %10 = icmp sgt i32 %7, 0, !dbg !343
  br i1 %10, label %.lr.ph, label %._crit_edge, !dbg !346

.lr.ph:                                           ; preds = %5
  %11 = sext i32 %7 to i64, !dbg !346
  br label %12, !dbg !346

; <label>:12                                      ; preds = %.lr.ph, %33
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %33 ]
  %maxnent.04 = phi i32 [ 0, %.lr.ph ], [ %maxnent.1, %33 ]
  %maxnind.03 = phi i32 [ 0, %.lr.ph ], [ %nind.0.maxnind.0, %33 ]
  %13 = getelementptr inbounds i32* %8, i64 %indvars.iv, !dbg !347
  %14 = load i32* %13, align 4, !dbg !347, !tbaa !304
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !106, metadata !117), !dbg !349
  %15 = getelementptr inbounds i32* %9, i64 %indvars.iv, !dbg !350
  %16 = load i32* %15, align 4, !dbg !350, !tbaa !304
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !110, metadata !117), !dbg !351
  switch i32 %symflag, label %30 [
    i32 0, label %17
    i32 1, label %17
    i32 2, label %24
  ], !dbg !352

; <label>:17                                      ; preds = %12, %12
  %18 = add nsw i32 %16, %14, !dbg !353
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !109, metadata !117), !dbg !355
  %19 = add nsw i32 %14, 1, !dbg !356
  %20 = mul nsw i32 %19, %14, !dbg !357
  %21 = sdiv i32 %20, 2, !dbg !358
  %22 = mul nsw i32 %16, %14, !dbg !359
  %23 = add nsw i32 %21, %22, !dbg !360
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !107, metadata !117), !dbg !361
  br label %33, !dbg !362

; <label>:24                                      ; preds = %12
  %25 = add nsw i32 %16, %14, !dbg !363
  %26 = shl nsw i32 %25, 1, !dbg !364
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !109, metadata !117), !dbg !355
  %27 = shl i32 %16, 1, !dbg !365
  %28 = add nsw i32 %27, %14, !dbg !366
  %29 = mul nsw i32 %28, %14, !dbg !367
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !107, metadata !117), !dbg !361
  br label %33, !dbg !368

; <label>:30                                      ; preds = %12
  %31 = load %struct.__sFILE** @__stderrp, align 8, !dbg !369, !tbaa !124
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %31, i8* getelementptr inbounds ([59 x i8]* @.str16, i64 0, i64 0), %struct._ETree* %etree, i32 %symflag) #5, !dbg !370
  tail call void @exit(i32 -1) #6, !dbg !371
  unreachable, !dbg !371

; <label>:33                                      ; preds = %24, %17
  %nent.0 = phi i32 [ %29, %24 ], [ %23, %17 ]
  %nind.0 = phi i32 [ %26, %24 ], [ %18, %17 ]
  %34 = icmp slt i32 %maxnind.03, %nind.0, !dbg !372
  tail call void @llvm.dbg.value(metadata i32 %nind.0, i64 0, metadata !105, metadata !117), !dbg !341
  %nind.0.maxnind.0 = select i1 %34, i32 %nind.0, i32 %maxnind.03, !dbg !374
  %35 = icmp slt i32 %maxnent.04, %nent.0, !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %nent.0, i64 0, metadata !104, metadata !117), !dbg !342
  %maxnent.1 = select i1 %35, i32 %nent.0, i32 %maxnent.04, !dbg !377
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !346
  %36 = icmp slt i64 %indvars.iv.next, %11, !dbg !343
  br i1 %36, label %12, label %._crit_edge, !dbg !346

._crit_edge:                                      ; preds = %33, %5
  %maxnent.0.lcssa = phi i32 [ 0, %5 ], [ %maxnent.1, %33 ]
  %maxnind.0.lcssa = phi i32 [ 0, %5 ], [ %nind.0.maxnind.0, %33 ]
  store i32 %maxnind.0.lcssa, i32* %pmaxnind, align 4, !dbg !378, !tbaa !304
  store i32 %maxnent.0.lcssa, i32* %pmaxnent, align 4, !dbg !379, !tbaa !304
  ret void, !dbg !380
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
!llvm.module.flags = !{!113, !114, !115}
!llvm.ident = !{!116}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !43, !46, !51, !54, !59, !62, !65, !70, !73, !76, !79, !82, !85, !91, !95}
!6 = !DISubprogram(name: "ETree_nfront", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ETree*)* @ETree_nfront, variables: !41)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "ETree", file: !12, line: 31, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../ETree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ETree", file: !12, line: 32, size: 320, align: 64, elements: !14)
!14 = !{!15, !16, !17, !29, !39, !40}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "nfront", scope: !13, file: !12, line: 33, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !13, file: !12, line: 34, baseType: !9, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !13, file: !12, line: 35, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !20, line: 15, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../Tree/Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !20, line: 16, size: 256, align: 64, elements: !22)
!22 = !{!23, !24, !25, !27, !28}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !21, file: !20, line: 17, baseType: !9, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !21, file: !20, line: 18, baseType: !9, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !21, file: !20, line: 19, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !21, file: !20, line: 20, baseType: !26, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !21, file: !20, line: 21, baseType: !26, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nodwghtsIV", scope: !13, file: !12, line: 36, baseType: !30, size: 64, align: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !32, line: 20, baseType: !33)
!32 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !32, line: 21, size: 192, align: 64, elements: !34)
!34 = !{!35, !36, !37, !38}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !33, file: !32, line: 22, baseType: !9, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !33, file: !32, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !33, file: !32, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !33, file: !32, line: 25, baseType: !26, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "bndwghtsIV", scope: !13, file: !12, line: 37, baseType: !30, size: 64, align: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "vtxToFrontIV", scope: !13, file: !12, line: 38, baseType: !30, size: 64, align: 64, offset: 256)
!41 = !{!42}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !6, file: !1, line: 15, type: !10)
!43 = !DISubprogram(name: "ETree_nvtx", scope: !1, file: !1, line: 38, type: !7, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ETree*)* @ETree_nvtx, variables: !44)
!44 = !{!45}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !43, file: !1, line: 39, type: !10)
!46 = !DISubprogram(name: "ETree_tree", scope: !1, file: !1, line: 62, type: !47, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Tree* (%struct._ETree*)* @ETree_tree, variables: !49)
!47 = !DISubroutineType(types: !48)
!48 = !{!18, !10}
!49 = !{!50}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !46, file: !1, line: 63, type: !10)
!51 = !DISubprogram(name: "ETree_root", scope: !1, file: !1, line: 86, type: !7, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ETree*)* @ETree_root, variables: !52)
!52 = !{!53}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !51, file: !1, line: 87, type: !10)
!54 = !DISubprogram(name: "ETree_par", scope: !1, file: !1, line: 110, type: !55, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, function: i32* (%struct._ETree*)* @ETree_par, variables: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{!26, !10}
!57 = !{!58}
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !54, file: !1, line: 111, type: !10)
!59 = !DISubprogram(name: "ETree_fch", scope: !1, file: !1, line: 134, type: !55, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, function: i32* (%struct._ETree*)* @ETree_fch, variables: !60)
!60 = !{!61}
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !59, file: !1, line: 135, type: !10)
!62 = !DISubprogram(name: "ETree_sib", scope: !1, file: !1, line: 158, type: !55, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, function: i32* (%struct._ETree*)* @ETree_sib, variables: !63)
!63 = !{!64}
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !62, file: !1, line: 159, type: !10)
!65 = !DISubprogram(name: "ETree_nodwghtsIV", scope: !1, file: !1, line: 182, type: !66, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._ETree*)* @ETree_nodwghtsIV, variables: !68)
!66 = !DISubroutineType(types: !67)
!67 = !{!30, !10}
!68 = !{!69}
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !65, file: !1, line: 183, type: !10)
!70 = !DISubprogram(name: "ETree_nodwghts", scope: !1, file: !1, line: 206, type: !55, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, function: i32* (%struct._ETree*)* @ETree_nodwghts, variables: !71)
!71 = !{!72}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !70, file: !1, line: 207, type: !10)
!73 = !DISubprogram(name: "ETree_bndwghtsIV", scope: !1, file: !1, line: 230, type: !66, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._ETree*)* @ETree_bndwghtsIV, variables: !74)
!74 = !{!75}
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !73, file: !1, line: 231, type: !10)
!76 = !DISubprogram(name: "ETree_bndwghts", scope: !1, file: !1, line: 254, type: !55, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, function: i32* (%struct._ETree*)* @ETree_bndwghts, variables: !77)
!77 = !{!78}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !76, file: !1, line: 255, type: !10)
!79 = !DISubprogram(name: "ETree_vtxToFrontIV", scope: !1, file: !1, line: 278, type: !66, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._ETree*)* @ETree_vtxToFrontIV, variables: !80)
!80 = !{!81}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !79, file: !1, line: 279, type: !10)
!82 = !DISubprogram(name: "ETree_vtxToFront", scope: !1, file: !1, line: 302, type: !55, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, function: i32* (%struct._ETree*)* @ETree_vtxToFront, variables: !83)
!83 = !{!84}
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !82, file: !1, line: 303, type: !10)
!85 = !DISubprogram(name: "ETree_frontSize", scope: !1, file: !1, line: 327, type: !86, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ETree*, i32)* @ETree_frontSize, variables: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{!9, !10, !9}
!88 = !{!89, !90}
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !85, file: !1, line: 328, type: !10)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "J", arg: 2, scope: !85, file: !1, line: 329, type: !9)
!91 = !DISubprogram(name: "ETree_frontBoundarySize", scope: !1, file: !1, line: 353, type: !86, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ETree*, i32)* @ETree_frontBoundarySize, variables: !92)
!92 = !{!93, !94}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !91, file: !1, line: 354, type: !10)
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "J", arg: 2, scope: !91, file: !1, line: 355, type: !9)
!95 = !DISubprogram(name: "ETree_maxNindAndNent", scope: !1, file: !1, line: 386, type: !96, isLocal: false, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ETree*, i32, i32*, i32*)* @ETree_maxNindAndNent, variables: !98)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !10, !9, !26, !26}
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !95, file: !1, line: 387, type: !10)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symflag", arg: 2, scope: !95, file: !1, line: 388, type: !9)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pmaxnind", arg: 3, scope: !95, file: !1, line: 389, type: !26)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pmaxnent", arg: 4, scope: !95, file: !1, line: 390, type: !26)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "J", scope: !95, file: !1, line: 392, type: !9)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxnent", scope: !95, file: !1, line: 392, type: !9)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxnind", scope: !95, file: !1, line: 392, type: !9)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nDJ", scope: !95, file: !1, line: 392, type: !9)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nent", scope: !95, file: !1, line: 392, type: !9)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nfront", scope: !95, file: !1, line: 392, type: !9)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nind", scope: !95, file: !1, line: 392, type: !9)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nUJ", scope: !95, file: !1, line: 392, type: !9)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nodwghts", scope: !95, file: !1, line: 393, type: !26)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bndwghts", scope: !95, file: !1, line: 393, type: !26)
!113 = !{i32 2, !"Dwarf Version", i32 2}
!114 = !{i32 2, !"Debug Info Version", i32 700000003}
!115 = !{i32 1, !"PIC Level", i32 2}
!116 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!117 = !DIExpression()
!118 = !DILocation(line: 15, column: 13, scope: !6)
!119 = !DILocation(line: 22, column: 12, scope: !120)
!120 = distinct !DILexicalBlock(scope: !6, file: !1, line: 22, column: 6)
!121 = !DILocation(line: 22, column: 6, scope: !6)
!122 = !DILocation(line: 23, column: 12, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !1, line: 22, column: 22)
!124 = !{!125, !125, i64 0}
!125 = !{!"any pointer", !126, i64 0}
!126 = !{!"omnipotent char", !127, i64 0}
!127 = !{!"Simple C/C++ TBAA"}
!128 = !DILocation(line: 23, column: 4, scope: !123)
!129 = !DILocation(line: 25, column: 4, scope: !123)
!130 = !DILocation(line: 27, column: 15, scope: !6)
!131 = !{!132, !133, i64 0}
!132 = !{!"_ETree", !133, i64 0, !133, i64 4, !125, i64 8, !125, i64 16, !125, i64 24, !125, i64 32}
!133 = !{!"int", !126, i64 0}
!134 = !DILocation(line: 27, column: 1, scope: !6)
!135 = !DILocation(line: 39, column: 13, scope: !43)
!136 = !DILocation(line: 46, column: 12, scope: !137)
!137 = distinct !DILexicalBlock(scope: !43, file: !1, line: 46, column: 6)
!138 = !DILocation(line: 46, column: 6, scope: !43)
!139 = !DILocation(line: 47, column: 12, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !1, line: 46, column: 22)
!141 = !DILocation(line: 47, column: 4, scope: !140)
!142 = !DILocation(line: 49, column: 4, scope: !140)
!143 = !DILocation(line: 51, column: 15, scope: !43)
!144 = !{!132, !133, i64 4}
!145 = !DILocation(line: 51, column: 1, scope: !43)
!146 = !DILocation(line: 63, column: 13, scope: !46)
!147 = !DILocation(line: 70, column: 12, scope: !148)
!148 = distinct !DILexicalBlock(scope: !46, file: !1, line: 70, column: 6)
!149 = !DILocation(line: 70, column: 6, scope: !46)
!150 = !DILocation(line: 71, column: 12, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !1, line: 70, column: 22)
!152 = !DILocation(line: 71, column: 4, scope: !151)
!153 = !DILocation(line: 73, column: 4, scope: !151)
!154 = !DILocation(line: 75, column: 15, scope: !46)
!155 = !{!132, !125, i64 8}
!156 = !DILocation(line: 75, column: 1, scope: !46)
!157 = !DILocation(line: 87, column: 13, scope: !51)
!158 = !DILocation(line: 94, column: 12, scope: !159)
!159 = distinct !DILexicalBlock(scope: !51, file: !1, line: 94, column: 6)
!160 = !DILocation(line: 94, column: 20, scope: !159)
!161 = !DILocation(line: 94, column: 30, scope: !159)
!162 = !DILocation(line: 94, column: 35, scope: !159)
!163 = !DILocation(line: 94, column: 6, scope: !51)
!164 = !DILocation(line: 95, column: 12, scope: !165)
!165 = distinct !DILexicalBlock(scope: !159, file: !1, line: 94, column: 45)
!166 = !DILocation(line: 95, column: 4, scope: !165)
!167 = !DILocation(line: 97, column: 4, scope: !165)
!168 = !DILocation(line: 99, column: 21, scope: !51)
!169 = !{!170, !133, i64 4}
!170 = !{!"_Tree", !133, i64 0, !133, i64 4, !125, i64 8, !125, i64 16, !125, i64 24}
!171 = !DILocation(line: 99, column: 1, scope: !51)
!172 = !DILocation(line: 111, column: 13, scope: !54)
!173 = !DILocation(line: 118, column: 12, scope: !174)
!174 = distinct !DILexicalBlock(scope: !54, file: !1, line: 118, column: 6)
!175 = !DILocation(line: 118, column: 20, scope: !174)
!176 = !DILocation(line: 118, column: 30, scope: !174)
!177 = !DILocation(line: 118, column: 35, scope: !174)
!178 = !DILocation(line: 118, column: 6, scope: !54)
!179 = !DILocation(line: 119, column: 12, scope: !180)
!180 = distinct !DILexicalBlock(scope: !174, file: !1, line: 118, column: 45)
!181 = !DILocation(line: 119, column: 4, scope: !180)
!182 = !DILocation(line: 121, column: 4, scope: !180)
!183 = !DILocation(line: 123, column: 21, scope: !54)
!184 = !{!170, !125, i64 8}
!185 = !DILocation(line: 123, column: 1, scope: !54)
!186 = !DILocation(line: 135, column: 13, scope: !59)
!187 = !DILocation(line: 142, column: 12, scope: !188)
!188 = distinct !DILexicalBlock(scope: !59, file: !1, line: 142, column: 6)
!189 = !DILocation(line: 142, column: 20, scope: !188)
!190 = !DILocation(line: 142, column: 30, scope: !188)
!191 = !DILocation(line: 142, column: 35, scope: !188)
!192 = !DILocation(line: 142, column: 6, scope: !59)
!193 = !DILocation(line: 143, column: 12, scope: !194)
!194 = distinct !DILexicalBlock(scope: !188, file: !1, line: 142, column: 45)
!195 = !DILocation(line: 143, column: 4, scope: !194)
!196 = !DILocation(line: 145, column: 4, scope: !194)
!197 = !DILocation(line: 147, column: 21, scope: !59)
!198 = !{!170, !125, i64 16}
!199 = !DILocation(line: 147, column: 1, scope: !59)
!200 = !DILocation(line: 159, column: 13, scope: !62)
!201 = !DILocation(line: 166, column: 12, scope: !202)
!202 = distinct !DILexicalBlock(scope: !62, file: !1, line: 166, column: 6)
!203 = !DILocation(line: 166, column: 20, scope: !202)
!204 = !DILocation(line: 166, column: 30, scope: !202)
!205 = !DILocation(line: 166, column: 35, scope: !202)
!206 = !DILocation(line: 166, column: 6, scope: !62)
!207 = !DILocation(line: 167, column: 12, scope: !208)
!208 = distinct !DILexicalBlock(scope: !202, file: !1, line: 166, column: 45)
!209 = !DILocation(line: 167, column: 4, scope: !208)
!210 = !DILocation(line: 169, column: 4, scope: !208)
!211 = !DILocation(line: 171, column: 21, scope: !62)
!212 = !{!170, !125, i64 24}
!213 = !DILocation(line: 171, column: 1, scope: !62)
!214 = !DILocation(line: 183, column: 13, scope: !65)
!215 = !DILocation(line: 190, column: 12, scope: !216)
!216 = distinct !DILexicalBlock(scope: !65, file: !1, line: 190, column: 6)
!217 = !DILocation(line: 190, column: 6, scope: !65)
!218 = !DILocation(line: 191, column: 12, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !1, line: 190, column: 22)
!220 = !DILocation(line: 191, column: 4, scope: !219)
!221 = !DILocation(line: 193, column: 4, scope: !219)
!222 = !DILocation(line: 195, column: 15, scope: !65)
!223 = !{!132, !125, i64 16}
!224 = !DILocation(line: 195, column: 1, scope: !65)
!225 = !DILocation(line: 207, column: 13, scope: !70)
!226 = !DILocation(line: 214, column: 12, scope: !227)
!227 = distinct !DILexicalBlock(scope: !70, file: !1, line: 214, column: 6)
!228 = !DILocation(line: 214, column: 20, scope: !227)
!229 = !DILocation(line: 214, column: 30, scope: !227)
!230 = !DILocation(line: 214, column: 41, scope: !227)
!231 = !DILocation(line: 214, column: 6, scope: !70)
!232 = !DILocation(line: 215, column: 12, scope: !233)
!233 = distinct !DILexicalBlock(scope: !227, file: !1, line: 214, column: 51)
!234 = !DILocation(line: 215, column: 4, scope: !233)
!235 = !DILocation(line: 217, column: 4, scope: !233)
!236 = !DILocation(line: 219, column: 8, scope: !70)
!237 = !DILocation(line: 219, column: 1, scope: !70)
!238 = !DILocation(line: 231, column: 13, scope: !73)
!239 = !DILocation(line: 238, column: 12, scope: !240)
!240 = distinct !DILexicalBlock(scope: !73, file: !1, line: 238, column: 6)
!241 = !DILocation(line: 238, column: 6, scope: !73)
!242 = !DILocation(line: 239, column: 12, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !1, line: 238, column: 22)
!244 = !DILocation(line: 239, column: 4, scope: !243)
!245 = !DILocation(line: 241, column: 4, scope: !243)
!246 = !DILocation(line: 243, column: 15, scope: !73)
!247 = !{!132, !125, i64 24}
!248 = !DILocation(line: 243, column: 1, scope: !73)
!249 = !DILocation(line: 255, column: 13, scope: !76)
!250 = !DILocation(line: 262, column: 12, scope: !251)
!251 = distinct !DILexicalBlock(scope: !76, file: !1, line: 262, column: 6)
!252 = !DILocation(line: 262, column: 20, scope: !251)
!253 = !DILocation(line: 262, column: 30, scope: !251)
!254 = !DILocation(line: 262, column: 41, scope: !251)
!255 = !DILocation(line: 262, column: 6, scope: !76)
!256 = !DILocation(line: 263, column: 12, scope: !257)
!257 = distinct !DILexicalBlock(scope: !251, file: !1, line: 262, column: 51)
!258 = !DILocation(line: 263, column: 4, scope: !257)
!259 = !DILocation(line: 265, column: 4, scope: !257)
!260 = !DILocation(line: 267, column: 8, scope: !76)
!261 = !DILocation(line: 267, column: 1, scope: !76)
!262 = !DILocation(line: 279, column: 13, scope: !79)
!263 = !DILocation(line: 286, column: 12, scope: !264)
!264 = distinct !DILexicalBlock(scope: !79, file: !1, line: 286, column: 6)
!265 = !DILocation(line: 286, column: 6, scope: !79)
!266 = !DILocation(line: 287, column: 12, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !1, line: 286, column: 22)
!268 = !DILocation(line: 287, column: 4, scope: !267)
!269 = !DILocation(line: 289, column: 4, scope: !267)
!270 = !DILocation(line: 291, column: 15, scope: !79)
!271 = !{!132, !125, i64 32}
!272 = !DILocation(line: 291, column: 1, scope: !79)
!273 = !DILocation(line: 303, column: 13, scope: !82)
!274 = !DILocation(line: 310, column: 12, scope: !275)
!275 = distinct !DILexicalBlock(scope: !82, file: !1, line: 310, column: 6)
!276 = !DILocation(line: 310, column: 20, scope: !275)
!277 = !DILocation(line: 310, column: 30, scope: !275)
!278 = !DILocation(line: 310, column: 43, scope: !275)
!279 = !DILocation(line: 310, column: 6, scope: !82)
!280 = !DILocation(line: 311, column: 12, scope: !281)
!281 = distinct !DILexicalBlock(scope: !275, file: !1, line: 310, column: 53)
!282 = !DILocation(line: 311, column: 4, scope: !281)
!283 = !DILocation(line: 313, column: 4, scope: !281)
!284 = !DILocation(line: 315, column: 8, scope: !82)
!285 = !DILocation(line: 315, column: 1, scope: !82)
!286 = !DILocation(line: 328, column: 13, scope: !85)
!287 = !DILocation(line: 329, column: 12, scope: !85)
!288 = !DILocation(line: 336, column: 12, scope: !289)
!289 = distinct !DILexicalBlock(scope: !85, file: !1, line: 336, column: 6)
!290 = !DILocation(line: 336, column: 25, scope: !289)
!291 = !DILocation(line: 336, column: 20, scope: !289)
!292 = !DILocation(line: 336, column: 44, scope: !289)
!293 = !DILocation(line: 336, column: 34, scope: !289)
!294 = !DILocation(line: 336, column: 6, scope: !85)
!295 = !DILocation(line: 337, column: 12, scope: !296)
!296 = distinct !DILexicalBlock(scope: !289, file: !1, line: 336, column: 53)
!297 = !DILocation(line: 337, column: 4, scope: !296)
!298 = !DILocation(line: 339, column: 4, scope: !296)
!299 = !DILocation(line: 341, column: 8, scope: !85)
!300 = !DILocation(line: 341, column: 15, scope: !85)
!301 = !DILocation(line: 341, column: 27, scope: !85)
!302 = !{!303, !125, i64 16}
!303 = !{!"_IV", !133, i64 0, !133, i64 4, !133, i64 8, !125, i64 16}
!304 = !{!133, !133, i64 0}
!305 = !DILocation(line: 341, column: 1, scope: !85)
!306 = !DILocation(line: 354, column: 13, scope: !91)
!307 = !DILocation(line: 355, column: 12, scope: !91)
!308 = !DILocation(line: 362, column: 12, scope: !309)
!309 = distinct !DILexicalBlock(scope: !91, file: !1, line: 362, column: 6)
!310 = !DILocation(line: 362, column: 25, scope: !309)
!311 = !DILocation(line: 362, column: 20, scope: !309)
!312 = !DILocation(line: 362, column: 44, scope: !309)
!313 = !DILocation(line: 362, column: 34, scope: !309)
!314 = !DILocation(line: 362, column: 6, scope: !91)
!315 = !DILocation(line: 363, column: 12, scope: !316)
!316 = distinct !DILexicalBlock(scope: !309, file: !1, line: 362, column: 53)
!317 = !DILocation(line: 363, column: 4, scope: !316)
!318 = !DILocation(line: 365, column: 4, scope: !316)
!319 = !DILocation(line: 367, column: 8, scope: !91)
!320 = !DILocation(line: 367, column: 15, scope: !91)
!321 = !DILocation(line: 367, column: 27, scope: !91)
!322 = !DILocation(line: 367, column: 1, scope: !91)
!323 = !DILocation(line: 387, column: 13, scope: !95)
!324 = !DILocation(line: 388, column: 12, scope: !95)
!325 = !DILocation(line: 389, column: 13, scope: !95)
!326 = !DILocation(line: 390, column: 13, scope: !95)
!327 = !DILocation(line: 399, column: 12, scope: !328)
!328 = distinct !DILexicalBlock(scope: !95, file: !1, line: 399, column: 6)
!329 = !DILocation(line: 399, column: 6, scope: !95)
!330 = !DILocation(line: 400, column: 12, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !1, line: 399, column: 22)
!332 = !DILocation(line: 400, column: 4, scope: !331)
!333 = !DILocation(line: 402, column: 4, scope: !331)
!334 = !DILocation(line: 404, column: 19, scope: !95)
!335 = !DILocation(line: 392, column: 39, scope: !95)
!336 = !DILocation(line: 405, column: 12, scope: !95)
!337 = !DILocation(line: 393, column: 8, scope: !95)
!338 = !DILocation(line: 406, column: 12, scope: !95)
!339 = !DILocation(line: 393, column: 19, scope: !95)
!340 = !DILocation(line: 392, column: 7, scope: !95)
!341 = !DILocation(line: 392, column: 19, scope: !95)
!342 = !DILocation(line: 392, column: 10, scope: !95)
!343 = !DILocation(line: 407, column: 40, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !1, line: 407, column: 1)
!345 = distinct !DILexicalBlock(scope: !95, file: !1, line: 407, column: 1)
!346 = !DILocation(line: 407, column: 1, scope: !345)
!347 = !DILocation(line: 408, column: 10, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !1, line: 407, column: 57)
!349 = !DILocation(line: 392, column: 28, scope: !95)
!350 = !DILocation(line: 409, column: 10, scope: !348)
!351 = !DILocation(line: 392, column: 53, scope: !95)
!352 = !DILocation(line: 410, column: 4, scope: !348)
!353 = !DILocation(line: 413, column: 18, scope: !354)
!354 = distinct !DILexicalBlock(scope: !348, file: !1, line: 410, column: 23)
!355 = !DILocation(line: 392, column: 47, scope: !95)
!356 = !DILocation(line: 414, column: 23, scope: !354)
!357 = !DILocation(line: 414, column: 18, scope: !354)
!358 = !DILocation(line: 414, column: 27, scope: !354)
!359 = !DILocation(line: 414, column: 35, scope: !354)
!360 = !DILocation(line: 414, column: 30, scope: !354)
!361 = !DILocation(line: 392, column: 33, scope: !95)
!362 = !DILocation(line: 415, column: 7, scope: !354)
!363 = !DILocation(line: 417, column: 21, scope: !354)
!364 = !DILocation(line: 417, column: 15, scope: !354)
!365 = !DILocation(line: 418, column: 26, scope: !354)
!366 = !DILocation(line: 418, column: 23, scope: !354)
!367 = !DILocation(line: 418, column: 17, scope: !354)
!368 = !DILocation(line: 419, column: 7, scope: !354)
!369 = !DILocation(line: 421, column: 15, scope: !354)
!370 = !DILocation(line: 421, column: 7, scope: !354)
!371 = !DILocation(line: 423, column: 7, scope: !354)
!372 = !DILocation(line: 426, column: 17, scope: !373)
!373 = distinct !DILexicalBlock(scope: !348, file: !1, line: 426, column: 9)
!374 = !DILocation(line: 426, column: 9, scope: !348)
!375 = !DILocation(line: 429, column: 17, scope: !376)
!376 = distinct !DILexicalBlock(scope: !348, file: !1, line: 429, column: 9)
!377 = !DILocation(line: 429, column: 9, scope: !348)
!378 = !DILocation(line: 433, column: 11, scope: !95)
!379 = !DILocation(line: 434, column: 11, scope: !95)
!380 = !DILocation(line: 436, column: 1, scope: !95)
