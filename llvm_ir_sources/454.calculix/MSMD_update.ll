; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._MSMD = type { i32, %struct._IIheap*, i32, %struct._IP*, %struct._IP*, %struct._MSMDvtx*, %struct._IV, %struct._IV }
%struct._IIheap = type { i32, i32, i32*, i32*, i32* }
%struct._IP = type { i32, %struct._IP* }
%struct._MSMDvtx = type { i32, i8, i8, i32, i32, i32, i32*, i32, %struct._MSMDvtx*, %struct._IP* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._MSMDinfo = type { i32, i32, double, i32, i32, %struct._IO_FILE*, i32, i32, i32, i32, %struct._MSMDstageInfo*, double }
%struct._MSMDstageInfo = type { i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, double }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in MSMD_update(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"\0A inside MSMD_update(%p,%p), nreach = %d\00", align 1
@.str2 = private unnamed_addr constant [42 x i8] c"\0A inserting %d with priority %d into heap\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"\0A v = %d, stage = %d, status = %c\00", align 1
@.str4 = private unnamed_addr constant [15 x i8] c", 2-adj vertex\00", align 1
@.str5 = private unnamed_addr constant [51 x i8] c"\0A   2-adj, inserting %d with priority %d into heap\00", align 1
@.str6 = private unnamed_addr constant [51 x i8] c"\0A   3-adj, inserting %d with priority %d into heap\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"\0A degree heap\00", align 1
@.str8 = private unnamed_addr constant [57 x i8] c"\0A fatal error in MSMD_exactDegree2(%p,%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [65 x i8] c"\0A\0A 1. error in MSMD_exactDegree2(%p,%p,%p)\0A v->subtrees == NULL\0A\00", align 1
@.str10 = private unnamed_addr constant [71 x i8] c"\0A\0A 1. error in MSMD_exactDegree2(%p,%p,%p)\0A v->subtrees->next == NULL\0A\00", align 1
@.str11 = private unnamed_addr constant [97 x i8] c"\0A\0A 1. error in MSMD_exactDegree2(%p,%p,%p)\0A usize0 = %d, uadj0 = %p\0A bad adjacency list for %d\0A \00", align 1
@.str12 = private unnamed_addr constant [97 x i8] c"\0A\0A 2. error in MSMD_exactDegree2(%p,%p,%p)\0A usize1 = %d, uadj1 = %p\0A bad adjacency list for %d\0A \00", align 1
@.str13 = private unnamed_addr constant [47 x i8] c"\0A    %d : adding %d with weight %d to boundary\00", align 1
@.str14 = private unnamed_addr constant [30 x i8] c"\0A    %6d is outmatched by %6d\00", align 1
@.str15 = private unnamed_addr constant [57 x i8] c"\0A fatal error in MSMD_exactDegree3(%p,%p,%p)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [13 x i8] c"\0A vadj(%d) :\00", align 1
@.str17 = private unnamed_addr constant [57 x i8] c"\0A fatal error in MSMD_approxDegree(%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @MSMD_update(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._MSMD* %msmd}, i64 0, metadata !156), !dbg !218
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %info}, i64 0, metadata !157), !dbg !219
  %cmp = icmp eq %struct._MSMD* %msmd, null, !dbg !220
  %cmp1 = icmp eq %struct._MSMDinfo* %info, null, !dbg !220
  %or.cond = or i1 %cmp, %cmp1, !dbg !220
  br i1 %or.cond, label %if.then, label %if.end, !dbg !220

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !221, !tbaa !223
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDinfo* %info) #6, !dbg !221
  tail call void @exit(i32 -1) #7, !dbg !226
  unreachable, !dbg !226

if.end:                                           ; preds = %entry
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4, !dbg !227
  %1 = load i32* %msglvl, align 4, !dbg !227, !tbaa !228
  %cmp2 = icmp sgt i32 %1, 4, !dbg !227
  br i1 %cmp2, label %if.then3, label %if.end.if.end9_crit_edge, !dbg !227

if.end.if.end9_crit_edge:                         ; preds = %if.end
  %reachIV10.pre = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7, !dbg !229
  br label %if.end9, !dbg !227

if.then3:                                         ; preds = %if.end
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !230
  %2 = load %struct._IO_FILE** %msgFile, align 8, !dbg !230, !tbaa !223
  %reachIV4 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7, !dbg !232
  %call5 = tail call i32 @IV_size(%struct._IV* %reachIV4) #6, !dbg !232
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDinfo* %info, i32 %call5) #6, !dbg !232
  %3 = load %struct._IO_FILE** %msgFile, align 8, !dbg !233, !tbaa !223
  %call8 = tail call i32 @fflush(%struct._IO_FILE* %3) #6, !dbg !233
  br label %if.end9, !dbg !234

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.then3
  %reachIV10.pre-phi = phi %struct._IV* [ %reachIV10.pre, %if.end.if.end9_crit_edge ], [ %reachIV4, %if.then3 ], !dbg !229
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %reachIV10.pre-phi}, i64 0, metadata !165), !dbg !229
  %call11 = tail call i32 @IV_size(%struct._IV* %reachIV10.pre-phi) #6, !dbg !235
  tail call void @llvm.dbg.value(metadata !{i32 %call11}, i64 0, metadata !160), !dbg !235
  %cmp12 = icmp eq i32 %call11, 0, !dbg !235
  br i1 %cmp12, label %return, label %if.end14, !dbg !235

if.end14:                                         ; preds = %if.end9
  %call15 = tail call i32* @IV_entries(%struct._IV* %reachIV10.pre-phi) #6, !dbg !236
  tail call void @llvm.dbg.value(metadata !{i32* %call15}, i64 0, metadata !163), !dbg !236
  %4 = load i32* %msglvl, align 4, !dbg !237, !tbaa !228
  %cmp17 = icmp sgt i32 %4, 4, !dbg !237
  br i1 %cmp17, label %for.cond.preheader, label %if.end23, !dbg !237

for.cond.preheader:                               ; preds = %if.end14
  %cmp19340 = icmp sgt i32 %call11, 0, !dbg !238
  br i1 %cmp19340, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge, !dbg !238

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  %msgFile21.pre = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !241
  br label %for.end, !dbg !238

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !242
  %msgFile20 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !244
  br label %for.body, !dbg !238

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv354 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next355, %for.body ]
  %arrayidx = getelementptr inbounds i32* %call15, i64 %indvars.iv354, !dbg !245
  %5 = load i32* %arrayidx, align 4, !dbg !245, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !161), !dbg !245
  %6 = load %struct._MSMDvtx** %vertices, align 8, !dbg !242, !tbaa !223
  %idx.ext = sext i32 %5 to i64, !dbg !242
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %6, i64 %idx.ext, !dbg !242
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %add.ptr}, i64 0, metadata !167), !dbg !242
  %7 = load %struct._IO_FILE** %msgFile20, align 8, !dbg !244, !tbaa !223
  tail call void @MSMDvtx_print(%struct._MSMDvtx* %add.ptr, %struct._IO_FILE* %7) #6, !dbg !244
  %indvars.iv.next355 = add i64 %indvars.iv354, 1, !dbg !238
  %lftr.wideiv356 = trunc i64 %indvars.iv.next355 to i32, !dbg !238
  %exitcond357 = icmp eq i32 %lftr.wideiv356, %call11, !dbg !238
  br i1 %exitcond357, label %for.end, label %for.body, !dbg !238

for.end:                                          ; preds = %for.body, %for.cond.preheader.for.end_crit_edge
  %msgFile21.pre-phi = phi %struct._IO_FILE** [ %msgFile21.pre, %for.cond.preheader.for.end_crit_edge ], [ %msgFile20, %for.body ], !dbg !241
  %8 = load %struct._IO_FILE** %msgFile21.pre-phi, align 8, !dbg !241, !tbaa !223
  %call22 = tail call i32 @fflush(%struct._IO_FILE* %8) #6, !dbg !241
  br label %if.end23, !dbg !246

if.end23:                                         ; preds = %for.end, %if.end14
  %prioType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1, !dbg !247
  %9 = load i32* %prioType, align 4, !dbg !247, !tbaa !228
  switch i32 %9, label %for.cond84.preheader [
    i32 2, label %for.cond26.preheader
    i32 0, label %for.cond63.preheader
  ], !dbg !247

for.cond63.preheader:                             ; preds = %if.end23
  %cmp64338 = icmp sgt i32 %call11, 0, !dbg !248
  br i1 %cmp64338, label %for.body66.lr.ph, label %if.end202, !dbg !248

for.body66.lr.ph:                                 ; preds = %for.cond63.preheader
  %vertices69 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !251
  %heap77 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1, !dbg !253
  br label %for.body66, !dbg !248

for.cond26.preheader:                             ; preds = %if.end23
  %cmp27335 = icmp sgt i32 %call11, 0, !dbg !255
  br i1 %cmp27335, label %for.body28.lr.ph, label %if.end202, !dbg !255

for.body28.lr.ph:                                 ; preds = %for.cond26.preheader
  %vertices31 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !258
  %msgFile47 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !260
  %heap = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1, !dbg !263
  br label %for.body28, !dbg !255

for.cond84.preheader:                             ; preds = %if.end23
  %cmp85331 = icmp sgt i32 %call11, 0, !dbg !264
  br i1 %cmp85331, label %for.body87.lr.ph, label %if.end202, !dbg !264

for.body87.lr.ph:                                 ; preds = %for.cond84.preheader
  %vertices90 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !267
  %msgFile97 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !269
  %heap140 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1, !dbg !271
  br label %for.body87, !dbg !264

for.body28:                                       ; preds = %for.inc55, %for.body28.lr.ph
  %indvars.iv346 = phi i64 [ 0, %for.body28.lr.ph ], [ %indvars.iv.next347, %for.inc55 ]
  %arrayidx30 = getelementptr inbounds i32* %call15, i64 %indvars.iv346, !dbg !274
  %10 = load i32* %arrayidx30, align 4, !dbg !274, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !161), !dbg !274
  %11 = load %struct._MSMDvtx** %vertices31, align 8, !dbg !258, !tbaa !223
  %idx.ext32 = sext i32 %10 to i64, !dbg !258
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %add.ptr33}, i64 0, metadata !167), !dbg !258
  %status = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext32, i32 2, !dbg !275
  %12 = load i8* %status, align 1, !dbg !275, !tbaa !224
  %cond = icmp eq i8 %12, 82, !dbg !275
  br i1 %cond, label %if.then41, label %for.inc55, !dbg !275

if.then41:                                        ; preds = %for.body28
  %add.ptr33 = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext32, !dbg !258
  %call42 = tail call i32 @MSMD_approxDegree(%struct._MSMD* %msmd, %struct._MSMDvtx* %add.ptr33, %struct._MSMDinfo* %info) #8, !dbg !276
  tail call void @llvm.dbg.value(metadata !{i32 %call42}, i64 0, metadata !162), !dbg !276
  %13 = load i32* %msglvl, align 4, !dbg !277, !tbaa !228
  %cmp44 = icmp sgt i32 %13, 3, !dbg !277
  br i1 %cmp44, label %if.then46, label %if.end51, !dbg !277

if.then46:                                        ; preds = %if.then41
  %14 = load %struct._IO_FILE** %msgFile47, align 8, !dbg !260, !tbaa !223
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([42 x i8]* @.str2, i64 0, i64 0), i32 %10, i32 %call42) #6, !dbg !260
  %15 = load %struct._IO_FILE** %msgFile47, align 8, !dbg !278, !tbaa !223
  %call50 = tail call i32 @fflush(%struct._IO_FILE* %15) #6, !dbg !278
  br label %if.end51, !dbg !279

if.end51:                                         ; preds = %if.then46, %if.then41
  %16 = load %struct._IIheap** %heap, align 8, !dbg !263, !tbaa !223
  tail call void @IIheap_insert(%struct._IIheap* %16, i32 %10, i32 %call42) #6, !dbg !263
  store i8 68, i8* %status, align 1, !dbg !280, !tbaa !224
  br label %for.inc55, !dbg !281

for.inc55:                                        ; preds = %for.body28, %if.end51
  %indvars.iv.next347 = add i64 %indvars.iv346, 1, !dbg !255
  %lftr.wideiv348 = trunc i64 %indvars.iv.next347 to i32, !dbg !255
  %exitcond349 = icmp eq i32 %lftr.wideiv348, %call11, !dbg !255
  br i1 %exitcond349, label %if.end202, label %for.body28, !dbg !255

for.body66:                                       ; preds = %for.inc80, %for.body66.lr.ph
  %indvars.iv350 = phi i64 [ 0, %for.body66.lr.ph ], [ %indvars.iv.next351, %for.inc80 ]
  %arrayidx68 = getelementptr inbounds i32* %call15, i64 %indvars.iv350, !dbg !282
  %17 = load i32* %arrayidx68, align 4, !dbg !282, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !161), !dbg !282
  %18 = load %struct._MSMDvtx** %vertices69, align 8, !dbg !251, !tbaa !223
  %idx.ext70 = sext i32 %17 to i64, !dbg !251
  %status72 = getelementptr inbounds %struct._MSMDvtx* %18, i64 %idx.ext70, i32 2, !dbg !283
  %19 = load i8* %status72, align 1, !dbg !283, !tbaa !224
  %cmp74 = icmp eq i8 %19, 73, !dbg !283
  br i1 %cmp74, label %for.inc80, label %if.then76, !dbg !283

if.then76:                                        ; preds = %for.body66
  %20 = load %struct._IIheap** %heap77, align 8, !dbg !253, !tbaa !223
  tail call void @IIheap_insert(%struct._IIheap* %20, i32 %17, i32 0) #6, !dbg !253
  store i8 68, i8* %status72, align 1, !dbg !284, !tbaa !224
  br label %for.inc80, !dbg !285

for.inc80:                                        ; preds = %for.body66, %if.then76
  %indvars.iv.next351 = add i64 %indvars.iv350, 1, !dbg !248
  %lftr.wideiv352 = trunc i64 %indvars.iv.next351 to i32, !dbg !248
  %exitcond353 = icmp eq i32 %lftr.wideiv352, %call11, !dbg !248
  br i1 %exitcond353, label %if.end202, label %for.body66, !dbg !248

for.cond151.preheader:                            ; preds = %for.inc148
  %cmp152329 = icmp sgt i32 %jj.1, 0, !dbg !286
  br i1 %cmp152329, label %for.body154.lr.ph, label %if.end202, !dbg !286

for.body154.lr.ph:                                ; preds = %for.cond151.preheader
  %vertices157 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !288
  %msgFile164 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !290
  %heap195 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1, !dbg !292
  br label %for.body154, !dbg !286

for.body87:                                       ; preds = %for.inc148, %for.body87.lr.ph
  %indvars.iv342 = phi i64 [ 0, %for.body87.lr.ph ], [ %indvars.iv.next343, %for.inc148 ]
  %jj.0332 = phi i32 [ 0, %for.body87.lr.ph ], [ %jj.1, %for.inc148 ]
  %arrayidx89 = getelementptr inbounds i32* %call15, i64 %indvars.iv342, !dbg !294
  %21 = load i32* %arrayidx89, align 4, !dbg !294, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !161), !dbg !294
  %22 = load %struct._MSMDvtx** %vertices90, align 8, !dbg !267, !tbaa !223
  %idx.ext91 = sext i32 %21 to i64, !dbg !267
  %add.ptr92 = getelementptr inbounds %struct._MSMDvtx* %22, i64 %idx.ext91, !dbg !267
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %add.ptr92}, i64 0, metadata !167), !dbg !267
  %23 = load i32* %msglvl, align 4, !dbg !295, !tbaa !228
  %cmp94 = icmp sgt i32 %23, 4, !dbg !295
  br i1 %cmp94, label %if.then96, label %for.body87.if.end103_crit_edge, !dbg !295

for.body87.if.end103_crit_edge:                   ; preds = %for.body87
  %status104.pre = getelementptr inbounds %struct._MSMDvtx* %22, i64 %idx.ext91, i32 2, !dbg !296
  br label %if.end103, !dbg !295

if.then96:                                        ; preds = %for.body87
  %24 = load %struct._IO_FILE** %msgFile97, align 8, !dbg !269, !tbaa !223
  %id = getelementptr inbounds %struct._MSMDvtx* %add.ptr92, i64 0, i32 0, !dbg !269
  %25 = load i32* %id, align 4, !dbg !269, !tbaa !228
  %stage = getelementptr inbounds %struct._MSMDvtx* %22, i64 %idx.ext91, i32 3, !dbg !269
  %26 = load i32* %stage, align 4, !dbg !269, !tbaa !228
  %status98 = getelementptr inbounds %struct._MSMDvtx* %22, i64 %idx.ext91, i32 2, !dbg !269
  %27 = load i8* %status98, align 1, !dbg !269, !tbaa !224
  %conv99 = sext i8 %27 to i32, !dbg !269
  %call100 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 %25, i32 %26, i32 %conv99) #6, !dbg !269
  %28 = load %struct._IO_FILE** %msgFile97, align 8, !dbg !297, !tbaa !223
  %call102 = tail call i32 @fflush(%struct._IO_FILE* %28) #6, !dbg !297
  br label %if.end103, !dbg !298

if.end103:                                        ; preds = %for.body87.if.end103_crit_edge, %if.then96
  %status104.pre-phi = phi i8* [ %status104.pre, %for.body87.if.end103_crit_edge ], [ %status98, %if.then96 ], !dbg !296
  %29 = load i8* %status104.pre-phi, align 1, !dbg !296, !tbaa !224
  %cmp106 = icmp eq i8 %29, 82, !dbg !296
  br i1 %cmp106, label %if.then108, label %for.inc148, !dbg !296

if.then108:                                       ; preds = %if.end103
  %nadj = getelementptr inbounds %struct._MSMDvtx* %22, i64 %idx.ext91, i32 5, !dbg !299
  %30 = load i32* %nadj, align 4, !dbg !299, !tbaa !228
  %cmp109 = icmp eq i32 %30, 0, !dbg !299
  br i1 %cmp109, label %land.lhs.true, label %if.else142, !dbg !299

land.lhs.true:                                    ; preds = %if.then108
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %22, i64 %idx.ext91, i32 9, !dbg !299
  %31 = load %struct._IP** %subtrees, align 8, !dbg !299, !tbaa !223
  tail call void @llvm.dbg.value(metadata !{%struct._IP* %31}, i64 0, metadata !164), !dbg !299
  %cmp111 = icmp eq %struct._IP* %31, null, !dbg !299
  br i1 %cmp111, label %if.else142, label %land.lhs.true113, !dbg !299

land.lhs.true113:                                 ; preds = %land.lhs.true
  %next = getelementptr inbounds %struct._IP* %31, i64 0, i32 1, !dbg !299
  %32 = load %struct._IP** %next, align 8, !dbg !299, !tbaa !223
  tail call void @llvm.dbg.value(metadata !{%struct._IP* %32}, i64 0, metadata !164), !dbg !299
  %cmp114 = icmp eq %struct._IP* %32, null, !dbg !299
  br i1 %cmp114, label %if.else142, label %land.lhs.true116, !dbg !299

land.lhs.true116:                                 ; preds = %land.lhs.true113
  %next117 = getelementptr inbounds %struct._IP* %32, i64 0, i32 1, !dbg !299
  %33 = load %struct._IP** %next117, align 8, !dbg !299, !tbaa !223
  %cmp118 = icmp eq %struct._IP* %33, null, !dbg !299
  br i1 %cmp118, label %if.then120, label %if.else142, !dbg !299

if.then120:                                       ; preds = %land.lhs.true116
  %34 = load i32* %msglvl, align 4, !dbg !300, !tbaa !228
  %cmp122 = icmp sgt i32 %34, 4, !dbg !300
  br i1 %cmp122, label %if.then124, label %if.end129, !dbg !300

if.then124:                                       ; preds = %if.then120
  %35 = load %struct._IO_FILE** %msgFile97, align 8, !dbg !301, !tbaa !223
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %35), !dbg !301
  %37 = load %struct._IO_FILE** %msgFile97, align 8, !dbg !303, !tbaa !223
  %call128 = tail call i32 @fflush(%struct._IO_FILE* %37) #6, !dbg !303
  br label %if.end129, !dbg !304

if.end129:                                        ; preds = %if.then124, %if.then120
  %call130 = tail call i32 @MSMD_exactDegree2(%struct._MSMD* %msmd, %struct._MSMDvtx* %add.ptr92, %struct._MSMDinfo* %info) #8, !dbg !305
  tail call void @llvm.dbg.value(metadata !{i32 %call130}, i64 0, metadata !162), !dbg !305
  %38 = load i32* %msglvl, align 4, !dbg !306, !tbaa !228
  %cmp132 = icmp sgt i32 %38, 4, !dbg !306
  br i1 %cmp132, label %if.then134, label %if.end139, !dbg !306

if.then134:                                       ; preds = %if.end129
  %39 = load %struct._IO_FILE** %msgFile97, align 8, !dbg !307, !tbaa !223
  %call136 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0), i32 %21, i32 %call130) #6, !dbg !307
  %40 = load %struct._IO_FILE** %msgFile97, align 8, !dbg !309, !tbaa !223
  %call138 = tail call i32 @fflush(%struct._IO_FILE* %40) #6, !dbg !309
  br label %if.end139, !dbg !310

if.end139:                                        ; preds = %if.then134, %if.end129
  %41 = load %struct._IIheap** %heap140, align 8, !dbg !271, !tbaa !223
  tail call void @IIheap_insert(%struct._IIheap* %41, i32 %21, i32 %call130) #6, !dbg !271
  store i8 68, i8* %status104.pre-phi, align 1, !dbg !311, !tbaa !224
  br label %for.inc148, !dbg !312

if.else142:                                       ; preds = %land.lhs.true113, %land.lhs.true, %land.lhs.true116, %if.then108
  %inc143 = add nsw i32 %jj.0332, 1, !dbg !313
  tail call void @llvm.dbg.value(metadata !{i32 %inc143}, i64 0, metadata !159), !dbg !313
  %idxprom144 = sext i32 %jj.0332 to i64, !dbg !313
  %arrayidx145 = getelementptr inbounds i32* %call15, i64 %idxprom144, !dbg !313
  store i32 %21, i32* %arrayidx145, align 4, !dbg !313, !tbaa !228
  br label %for.inc148

for.inc148:                                       ; preds = %if.end103, %if.else142, %if.end139
  %jj.1 = phi i32 [ %jj.0332, %if.end139 ], [ %inc143, %if.else142 ], [ %jj.0332, %if.end103 ]
  %indvars.iv.next343 = add i64 %indvars.iv342, 1, !dbg !264
  %lftr.wideiv344 = trunc i64 %indvars.iv.next343 to i32, !dbg !264
  %exitcond345 = icmp eq i32 %lftr.wideiv344, %call11, !dbg !264
  br i1 %exitcond345, label %for.cond151.preheader, label %for.body87, !dbg !264

for.body154:                                      ; preds = %for.inc198, %for.body154.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body154.lr.ph ], [ %indvars.iv.next, %for.inc198 ]
  %arrayidx156 = getelementptr inbounds i32* %call15, i64 %indvars.iv, !dbg !315
  %42 = load i32* %arrayidx156, align 4, !dbg !315, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !161), !dbg !315
  %43 = load %struct._MSMDvtx** %vertices157, align 8, !dbg !288, !tbaa !223
  %idx.ext158 = sext i32 %42 to i64, !dbg !288
  %add.ptr159 = getelementptr inbounds %struct._MSMDvtx* %43, i64 %idx.ext158, !dbg !288
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %add.ptr159}, i64 0, metadata !167), !dbg !288
  %44 = load i32* %msglvl, align 4, !dbg !316, !tbaa !228
  %cmp161 = icmp sgt i32 %44, 4, !dbg !316
  br i1 %cmp161, label %if.then163, label %for.body154.if.end172_crit_edge, !dbg !316

for.body154.if.end172_crit_edge:                  ; preds = %for.body154
  %status173.pre = getelementptr inbounds %struct._MSMDvtx* %43, i64 %idx.ext158, i32 2, !dbg !317
  br label %if.end172, !dbg !316

if.then163:                                       ; preds = %for.body154
  %45 = load %struct._IO_FILE** %msgFile164, align 8, !dbg !290, !tbaa !223
  %id165 = getelementptr inbounds %struct._MSMDvtx* %add.ptr159, i64 0, i32 0, !dbg !290
  %46 = load i32* %id165, align 4, !dbg !290, !tbaa !228
  %stage166 = getelementptr inbounds %struct._MSMDvtx* %43, i64 %idx.ext158, i32 3, !dbg !290
  %47 = load i32* %stage166, align 4, !dbg !290, !tbaa !228
  %status167 = getelementptr inbounds %struct._MSMDvtx* %43, i64 %idx.ext158, i32 2, !dbg !290
  %48 = load i8* %status167, align 1, !dbg !290, !tbaa !224
  %conv168 = sext i8 %48 to i32, !dbg !290
  %call169 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 %46, i32 %47, i32 %conv168) #6, !dbg !290
  %49 = load %struct._IO_FILE** %msgFile164, align 8, !dbg !318, !tbaa !223
  %call171 = tail call i32 @fflush(%struct._IO_FILE* %49) #6, !dbg !318
  br label %if.end172, !dbg !319

if.end172:                                        ; preds = %for.body154.if.end172_crit_edge, %if.then163
  %status173.pre-phi = phi i8* [ %status173.pre, %for.body154.if.end172_crit_edge ], [ %status167, %if.then163 ], !dbg !317
  %50 = load i8* %status173.pre-phi, align 1, !dbg !317, !tbaa !224
  %cmp175 = icmp eq i8 %50, 82, !dbg !317
  br i1 %cmp175, label %if.then177, label %for.inc198, !dbg !317

if.then177:                                       ; preds = %if.end172
  %51 = load i32* %prioType, align 4, !dbg !320, !tbaa !228
  %cmp179 = icmp eq i32 %51, 1, !dbg !320
  br i1 %cmp179, label %if.then181, label %if.else183, !dbg !320

if.then181:                                       ; preds = %if.then177
  %call182 = tail call i32 @MSMD_exactDegree3(%struct._MSMD* %msmd, %struct._MSMDvtx* %add.ptr159, %struct._MSMDinfo* %info) #8, !dbg !321
  tail call void @llvm.dbg.value(metadata !{i32 %call182}, i64 0, metadata !162), !dbg !321
  br label %if.end185, !dbg !323

if.else183:                                       ; preds = %if.then177
  %call184 = tail call i32 @MSMD_approxDegree(%struct._MSMD* %msmd, %struct._MSMDvtx* %add.ptr159, %struct._MSMDinfo* %info) #8, !dbg !324
  tail call void @llvm.dbg.value(metadata !{i32 %call184}, i64 0, metadata !162), !dbg !324
  br label %if.end185

if.end185:                                        ; preds = %if.else183, %if.then181
  %wght.0 = phi i32 [ %call182, %if.then181 ], [ %call184, %if.else183 ]
  %52 = load i32* %msglvl, align 4, !dbg !326, !tbaa !228
  %cmp187 = icmp sgt i32 %52, 4, !dbg !326
  br i1 %cmp187, label %if.then189, label %if.end194, !dbg !326

if.then189:                                       ; preds = %if.end185
  %53 = load %struct._IO_FILE** %msgFile164, align 8, !dbg !327, !tbaa !223
  %call191 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([51 x i8]* @.str6, i64 0, i64 0), i32 %42, i32 %wght.0) #6, !dbg !327
  %54 = load %struct._IO_FILE** %msgFile164, align 8, !dbg !329, !tbaa !223
  %call193 = tail call i32 @fflush(%struct._IO_FILE* %54) #6, !dbg !329
  br label %if.end194, !dbg !330

if.end194:                                        ; preds = %if.then189, %if.end185
  %55 = load %struct._IIheap** %heap195, align 8, !dbg !292, !tbaa !223
  tail call void @IIheap_insert(%struct._IIheap* %55, i32 %42, i32 %wght.0) #6, !dbg !292
  store i8 68, i8* %status173.pre-phi, align 1, !dbg !331, !tbaa !224
  br label %for.inc198, !dbg !332

for.inc198:                                       ; preds = %if.end172, %if.end194
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !286
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !286
  %exitcond = icmp eq i32 %lftr.wideiv, %jj.1, !dbg !286
  br i1 %exitcond, label %if.end202, label %for.body154, !dbg !286

if.end202:                                        ; preds = %for.cond84.preheader, %for.cond63.preheader, %for.inc80, %for.cond26.preheader, %for.inc55, %for.cond151.preheader, %for.inc198
  %nreach.0 = phi i32 [ %jj.1, %for.cond151.preheader ], [ %jj.1, %for.inc198 ], [ %call11, %for.inc55 ], [ %call11, %for.cond26.preheader ], [ %call11, %for.inc80 ], [ %call11, %for.cond63.preheader ], [ 0, %for.cond84.preheader ]
  tail call void @IV_setSize(%struct._IV* %reachIV10.pre-phi, i32 %nreach.0) #6, !dbg !333
  %56 = load i32* %msglvl, align 4, !dbg !334, !tbaa !228
  %cmp204 = icmp sgt i32 %56, 4, !dbg !334
  br i1 %cmp204, label %if.then206, label %return, !dbg !334

if.then206:                                       ; preds = %if.end202
  %msgFile207 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !335
  %57 = load %struct._IO_FILE** %msgFile207, align 8, !dbg !335, !tbaa !223
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %57), !dbg !335
  %heap209 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1, !dbg !337
  %59 = load %struct._IIheap** %heap209, align 8, !dbg !337, !tbaa !223
  %60 = load %struct._IO_FILE** %msgFile207, align 8, !dbg !337, !tbaa !223
  tail call void @IIheap_print(%struct._IIheap* %59, %struct._IO_FILE* %60) #6, !dbg !337
  br label %return, !dbg !338

return:                                           ; preds = %if.end202, %if.then206, %if.end9
  ret void, !dbg !339
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #4

; Function Attrs: optsize
declare void @MSMDvtx_print(%struct._MSMDvtx*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @MSMD_approxDegree(%struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._MSMD* %msmd}, i64 0, metadata !208), !dbg !340
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %v}, i64 0, metadata !209), !dbg !341
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %info}, i64 0, metadata !210), !dbg !342
  %cmp = icmp eq %struct._MSMD* %msmd, null, !dbg !343
  %cmp1 = icmp eq %struct._MSMDvtx* %v, null, !dbg !343
  %or.cond = or i1 %cmp, %cmp1, !dbg !343
  %cmp3 = icmp eq %struct._MSMDinfo* %info, null, !dbg !343
  %or.cond41 = or i1 %or.cond, %cmp3, !dbg !343
  br i1 %or.cond41, label %if.then, label %if.end, !dbg !343

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !344, !tbaa !223
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str17, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #6, !dbg !344
  tail call void @exit(i32 -1) #7, !dbg !346
  unreachable, !dbg !346

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !211), !dbg !347
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 9, !dbg !348
  %ip.045 = load %struct._IP** %subtrees, align 8, !dbg !348
  %cmp446 = icmp eq %struct._IP* %ip.045, null, !dbg !348
  br i1 %cmp446, label %for.end, label %for.body.lr.ph, !dbg !348

for.body.lr.ph:                                   ; preds = %if.end
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !350
  %1 = load %struct._MSMDvtx** %vertices, align 8, !dbg !350, !tbaa !223
  %wght = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 4, !dbg !350
  %2 = load i32* %wght, align 4, !dbg !350, !tbaa !228
  br label %for.body, !dbg !348

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %ip.048 = phi %struct._IP* [ %ip.045, %for.body.lr.ph ], [ %ip.0, %for.body ]
  %bndwght.047 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %val = getelementptr inbounds %struct._IP* %ip.048, i64 0, i32 0, !dbg !350
  %3 = load i32* %val, align 4, !dbg !350, !tbaa !228
  %idxprom = sext i32 %3 to i64, !dbg !350
  %bndwght5 = getelementptr inbounds %struct._MSMDvtx* %1, i64 %idxprom, i32 7, !dbg !350
  %4 = load i32* %bndwght5, align 4, !dbg !350, !tbaa !228
  %sub = add i32 %4, %bndwght.047, !dbg !350
  %add = sub i32 %sub, %2, !dbg !350
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !211), !dbg !350
  %next = getelementptr inbounds %struct._IP* %ip.048, i64 0, i32 1, !dbg !348
  %ip.0 = load %struct._IP** %next, align 8, !dbg !348
  %cmp4 = icmp eq %struct._IP* %ip.0, null, !dbg !348
  br i1 %cmp4, label %for.end, label %for.body, !dbg !348

for.end:                                          ; preds = %for.body, %if.end
  %bndwght.0.lcssa = phi i32 [ 0, %if.end ], [ %add, %for.body ]
  %nadj = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5, !dbg !352
  %5 = load i32* %nadj, align 4, !dbg !352, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !214), !dbg !352
  %adj = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6, !dbg !353
  %6 = load i32** %adj, align 8, !dbg !353, !tbaa !223
  tail call void @llvm.dbg.value(metadata !{i32* %6}, i64 0, metadata !215), !dbg !353
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !212), !dbg !354
  %cmp742 = icmp sgt i32 %5, 0, !dbg !354
  br i1 %cmp742, label %for.body8.lr.ph, label %for.end20, !dbg !354

for.body8.lr.ph:                                  ; preds = %for.end
  %vertices11 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !356
  %7 = load %struct._MSMDvtx** %vertices11, align 8, !dbg !356, !tbaa !223
  br label %for.body8, !dbg !354

for.body8:                                        ; preds = %for.inc19, %for.body8.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next, %for.inc19 ]
  %bndwght.144 = phi i32 [ %bndwght.0.lcssa, %for.body8.lr.ph ], [ %bndwght.2, %for.inc19 ]
  %arrayidx10 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !358
  %8 = load i32* %arrayidx10, align 4, !dbg !358, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !213), !dbg !358
  %idx.ext = sext i32 %8 to i64, !dbg !356
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %7, i64 %idx.ext, !dbg !356
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %add.ptr}, i64 0, metadata !217), !dbg !356
  %cmp12 = icmp eq %struct._MSMDvtx* %add.ptr, %v, !dbg !359
  br i1 %cmp12, label %for.inc19, label %land.lhs.true, !dbg !359

land.lhs.true:                                    ; preds = %for.body8
  %status = getelementptr inbounds %struct._MSMDvtx* %7, i64 %idx.ext, i32 2, !dbg !359
  %9 = load i8* %status, align 1, !dbg !359, !tbaa !224
  %cmp13 = icmp eq i8 %9, 73, !dbg !359
  br i1 %cmp13, label %for.inc19, label %if.then15, !dbg !359

if.then15:                                        ; preds = %land.lhs.true
  %wght16 = getelementptr inbounds %struct._MSMDvtx* %7, i64 %idx.ext, i32 4, !dbg !360
  %10 = load i32* %wght16, align 4, !dbg !360, !tbaa !228
  %add17 = add nsw i32 %10, %bndwght.144, !dbg !360
  tail call void @llvm.dbg.value(metadata !{i32 %add17}, i64 0, metadata !211), !dbg !360
  br label %for.inc19, !dbg !362

for.inc19:                                        ; preds = %land.lhs.true, %for.body8, %if.then15
  %bndwght.2 = phi i32 [ %add17, %if.then15 ], [ %bndwght.144, %land.lhs.true ], [ %bndwght.144, %for.body8 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !354
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !354
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !354
  br i1 %exitcond, label %for.end20, label %for.body8, !dbg !354

for.end20:                                        ; preds = %for.inc19, %for.end
  %bndwght.1.lcssa = phi i32 [ %bndwght.0.lcssa, %for.end ], [ %bndwght.2, %for.inc19 ]
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10, !dbg !363
  %11 = load %struct._MSMDstageInfo** %stageInfo, align 8, !dbg !363, !tbaa !223
  %napprox = getelementptr inbounds %struct._MSMDstageInfo* %11, i64 0, i32 8, !dbg !363
  %12 = load i32* %napprox, align 4, !dbg !363, !tbaa !228
  %inc21 = add nsw i32 %12, 1, !dbg !363
  store i32 %inc21, i32* %napprox, align 4, !dbg !363, !tbaa !228
  ret i32 %bndwght.1.lcssa, !dbg !364
}

; Function Attrs: optsize
declare void @IIheap_insert(%struct._IIheap*, i32, i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @MSMD_exactDegree2(%struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._MSMD* %msmd}, i64 0, metadata !172), !dbg !365
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %v}, i64 0, metadata !173), !dbg !366
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %info}, i64 0, metadata !174), !dbg !367
  %cmp = icmp eq %struct._MSMD* %msmd, null, !dbg !368
  %cmp1 = icmp eq %struct._MSMDvtx* %v, null, !dbg !368
  %or.cond = or i1 %cmp, %cmp1, !dbg !368
  %cmp3 = icmp eq %struct._MSMDinfo* %info, null, !dbg !368
  %or.cond261 = or i1 %or.cond, %cmp3, !dbg !368
  br i1 %or.cond261, label %if.then, label %if.end, !dbg !368

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !369, !tbaa !223
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #6, !dbg !369
  tail call void @exit(i32 -1) #7, !dbg !371
  unreachable, !dbg !371

if.end:                                           ; preds = %entry
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 9, !dbg !372
  %1 = load %struct._IP** %subtrees, align 8, !dbg !372, !tbaa !223
  %cmp4 = icmp eq %struct._IP* %1, null, !dbg !372
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !372

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !373, !tbaa !223
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([65 x i8]* @.str9, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #6, !dbg !373
  tail call void @exit(i32 -1) #7, !dbg !375
  unreachable, !dbg !375

if.end7:                                          ; preds = %if.end
  %next = getelementptr inbounds %struct._IP* %1, i64 0, i32 1, !dbg !376
  %3 = load %struct._IP** %next, align 8, !dbg !376, !tbaa !223
  %cmp9 = icmp eq %struct._IP* %3, null, !dbg !376
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !376

if.then10:                                        ; preds = %if.end7
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !377, !tbaa !223
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([71 x i8]* @.str10, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #6, !dbg !377
  tail call void @exit(i32 -1) #7, !dbg !379
  unreachable, !dbg !379

if.end12:                                         ; preds = %if.end7
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !380
  %5 = load %struct._MSMDvtx** %vertices, align 8, !dbg !380, !tbaa !223
  %val = getelementptr inbounds %struct._IP* %1, i64 0, i32 0, !dbg !380
  %6 = load i32* %val, align 4, !dbg !380, !tbaa !228
  %idx.ext = sext i32 %6 to i64, !dbg !380
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %5, i64 %idx.ext, !dbg !380
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %add.ptr}, i64 0, metadata !183), !dbg !380
  %nadj = getelementptr inbounds %struct._MSMDvtx* %5, i64 %idx.ext, i32 5, !dbg !381
  %7 = load i32* %nadj, align 4, !dbg !381, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !178), !dbg !381
  %adj = getelementptr inbounds %struct._MSMDvtx* %5, i64 %idx.ext, i32 6, !dbg !382
  %8 = load i32** %adj, align 8, !dbg !382, !tbaa !223
  tail call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !181), !dbg !382
  %cmp14 = icmp eq i32 %7, 0, !dbg !383
  %cmp16 = icmp eq i32* %8, null, !dbg !383
  %or.cond262 = or i1 %cmp14, %cmp16, !dbg !383
  br i1 %or.cond262, label %if.then17, label %if.end19, !dbg !383

if.then17:                                        ; preds = %if.end12
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !384, !tbaa !223
  %id = getelementptr inbounds %struct._MSMDvtx* %add.ptr, i64 0, i32 0, !dbg !384
  %10 = load i32* %id, align 4, !dbg !384, !tbaa !228
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([97 x i8]* @.str11, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info, i32 %7, i32* %8, i32 %10) #6, !dbg !384
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !386, !tbaa !223
  tail call void @MSMDvtx_print(%struct._MSMDvtx* %add.ptr, %struct._IO_FILE* %11) #6, !dbg !386
  tail call void @exit(i32 -1) #7, !dbg !387
  unreachable, !dbg !387

if.end19:                                         ; preds = %if.end12
  %val23 = getelementptr inbounds %struct._IP* %3, i64 0, i32 0, !dbg !388
  %12 = load i32* %val23, align 4, !dbg !388, !tbaa !228
  %idx.ext24 = sext i32 %12 to i64, !dbg !388
  %add.ptr25 = getelementptr inbounds %struct._MSMDvtx* %5, i64 %idx.ext24, !dbg !388
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %add.ptr25}, i64 0, metadata !184), !dbg !388
  %nadj26 = getelementptr inbounds %struct._MSMDvtx* %5, i64 %idx.ext24, i32 5, !dbg !389
  %13 = load i32* %nadj26, align 4, !dbg !389, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !179), !dbg !389
  %adj27 = getelementptr inbounds %struct._MSMDvtx* %5, i64 %idx.ext24, i32 6, !dbg !390
  %14 = load i32** %adj27, align 8, !dbg !390, !tbaa !223
  tail call void @llvm.dbg.value(metadata !{i32* %14}, i64 0, metadata !182), !dbg !390
  %cmp28 = icmp eq i32 %13, 0, !dbg !391
  %cmp30 = icmp eq i32* %14, null, !dbg !391
  %or.cond263 = or i1 %cmp28, %cmp30, !dbg !391
  br i1 %or.cond263, label %if.then31, label %if.end34, !dbg !391

if.then31:                                        ; preds = %if.end19
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !392, !tbaa !223
  %id32 = getelementptr inbounds %struct._MSMDvtx* %add.ptr25, i64 0, i32 0, !dbg !392
  %16 = load i32* %id32, align 4, !dbg !392, !tbaa !228
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([97 x i8]* @.str12, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info, i32 %13, i32* %14, i32 %16) #6, !dbg !392
  %17 = load %struct._IO_FILE** @stderr, align 8, !dbg !394, !tbaa !223
  tail call void @MSMDvtx_print(%struct._MSMDvtx* %add.ptr25, %struct._IO_FILE* %17) #6, !dbg !394
  tail call void @exit(i32 -1) #7, !dbg !395
  unreachable, !dbg !395

if.end34:                                         ; preds = %if.end19
  %mark = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 1, !dbg !396
  store i8 88, i8* %mark, align 1, !dbg !396, !tbaa !224
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !175), !dbg !397
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !176), !dbg !398
  %sub = add nsw i32 %7, -1, !dbg !398
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !177), !dbg !398
  %cmp35276301 = icmp slt i32 %7, 1, !dbg !399
  br i1 %cmp35276301, label %while.end, label %while.body.lr.ph.lr.ph, !dbg !399

while.body.lr.ph.lr.ph:                           ; preds = %if.end34
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4, !dbg !400
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !404
  %id57 = getelementptr inbounds %struct._MSMDvtx* %add.ptr, i64 0, i32 0, !dbg !404
  %18 = sext i32 %7 to i64
  br label %while.body.lr.ph, !dbg !399

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.then41
  %indvars.iv332.in = phi i64 [ %18, %while.body.lr.ph.lr.ph ], [ %indvars.iv332, %if.then41 ]
  %bndwght.0.ph304 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %bndwght.0278, %if.then41 ]
  %i.0.ph303 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %i.0277, %if.then41 ]
  %j.0.ph302 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %dec, %if.then41 ]
  %indvars.iv332 = add i64 %indvars.iv332.in, -1, !dbg !399
  %19 = sext i32 %i.0.ph303 to i64
  br label %while.body, !dbg !399

while.body:                                       ; preds = %if.end64.while.body_crit_edge, %while.body.lr.ph
  %indvars.iv329 = phi i64 [ %indvars.iv.next330, %if.end64.while.body_crit_edge ], [ %19, %while.body.lr.ph ]
  %bndwght.0278 = phi i32 [ %bndwght.1, %if.end64.while.body_crit_edge ], [ %bndwght.0.ph304, %while.body.lr.ph ]
  %i.0277 = phi i32 [ %inc, %if.end64.while.body_crit_edge ], [ %i.0.ph303, %while.body.lr.ph ]
  %arrayidx = getelementptr inbounds i32* %8, i64 %indvars.iv329, !dbg !406
  %20 = load i32* %arrayidx, align 4, !dbg !406, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !180), !dbg !406
  %21 = load %struct._MSMDvtx** %vertices, align 8, !dbg !407, !tbaa !223
  %idx.ext37 = sext i32 %20 to i64, !dbg !407
  %status = getelementptr inbounds %struct._MSMDvtx* %21, i64 %idx.ext37, i32 2, !dbg !408
  %22 = load i8* %status, align 1, !dbg !408, !tbaa !224
  %cmp39 = icmp eq i8 %22, 73, !dbg !408
  br i1 %cmp39, label %if.then41, label %if.else, !dbg !408

if.then41:                                        ; preds = %while.body
  %arrayidx43 = getelementptr inbounds i32* %8, i64 %indvars.iv332, !dbg !409
  %23 = load i32* %arrayidx43, align 4, !dbg !409, !tbaa !228
  store i32 %23, i32* %arrayidx, align 4, !dbg !409, !tbaa !228
  store i32 %20, i32* %arrayidx43, align 4, !dbg !411, !tbaa !228
  %dec = add nsw i32 %j.0.ph302, -1, !dbg !412
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !177), !dbg !412
  %cmp35276 = icmp sgt i32 %i.0277, %dec, !dbg !399
  br i1 %cmp35276, label %while.end, label %while.body.lr.ph, !dbg !399

if.else:                                          ; preds = %while.body
  %mark48 = getelementptr inbounds %struct._MSMDvtx* %21, i64 %idx.ext37, i32 1, !dbg !413
  %24 = load i8* %mark48, align 1, !dbg !413, !tbaa !224
  %cmp50 = icmp eq i8 %24, 88, !dbg !413
  br i1 %cmp50, label %if.end64, label %if.then52, !dbg !413

if.then52:                                        ; preds = %if.else
  store i8 88, i8* %mark48, align 1, !dbg !414, !tbaa !224
  %wght = getelementptr inbounds %struct._MSMDvtx* %21, i64 %idx.ext37, i32 4, !dbg !415
  %25 = load i32* %wght, align 4, !dbg !415, !tbaa !228
  %add = add nsw i32 %25, %bndwght.0278, !dbg !415
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !175), !dbg !415
  %26 = load i32* %msglvl, align 4, !dbg !400, !tbaa !228
  %cmp54 = icmp sgt i32 %26, 5, !dbg !400
  br i1 %cmp54, label %if.then56, label %if.end64, !dbg !400

if.then56:                                        ; preds = %if.then52
  %27 = load %struct._IO_FILE** %msgFile, align 8, !dbg !404, !tbaa !223
  %28 = load i32* %id57, align 4, !dbg !404, !tbaa !228
  %id58 = getelementptr inbounds %struct._MSMDvtx* %21, i64 %idx.ext37, i32 0, !dbg !404
  %29 = load i32* %id58, align 4, !dbg !404, !tbaa !228
  %call60 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0), i32 %28, i32 %29, i32 %25) #6, !dbg !404
  %30 = load %struct._IO_FILE** %msgFile, align 8, !dbg !416, !tbaa !223
  %call62 = tail call i32 @fflush(%struct._IO_FILE* %30) #6, !dbg !416
  br label %if.end64, !dbg !417

if.end64:                                         ; preds = %if.else, %if.then52, %if.then56
  %bndwght.1 = phi i32 [ %add, %if.then56 ], [ %add, %if.then52 ], [ %bndwght.0278, %if.else ]
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !176), !dbg !418
  %31 = trunc i64 %indvars.iv329 to i32, !dbg !399
  %32 = trunc i64 %indvars.iv332 to i32, !dbg !399
  %cmp35 = icmp slt i32 %31, %32, !dbg !399
  br i1 %cmp35, label %if.end64.while.body_crit_edge, label %while.end, !dbg !399

if.end64.while.body_crit_edge:                    ; preds = %if.end64
  %inc = add nsw i32 %i.0277, 1, !dbg !418
  %indvars.iv.next330 = add i64 %indvars.iv329, 1, !dbg !399
  br label %while.body, !dbg !399

while.end:                                        ; preds = %if.end34, %if.then41, %if.end64
  %j.0.ph299 = phi i32 [ %j.0.ph302, %if.end64 ], [ %sub, %if.end34 ], [ %dec, %if.then41 ]
  %bndwght.0.lcssa = phi i32 [ %bndwght.1, %if.end64 ], [ 0, %if.end34 ], [ %bndwght.0278, %if.then41 ]
  %add66 = add nsw i32 %j.0.ph299, 1, !dbg !419
  store i32 %add66, i32* %nadj, align 4, !dbg !419, !tbaa !228
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !176), !dbg !420
  %sub68 = add nsw i32 %13, -1, !dbg !420
  tail call void @llvm.dbg.value(metadata !{i32 %sub68}, i64 0, metadata !177), !dbg !420
  %cmp70271282292 = icmp slt i32 %13, 1, !dbg !421
  br i1 %cmp70271282292, label %while.end139, label %while.body72.lr.ph.lr.ph.lr.ph, !dbg !421

while.body72.lr.ph.lr.ph.lr.ph:                   ; preds = %while.end
  %msglvl121 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4, !dbg !422
  %msgFile125 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !427
  %id127 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0, !dbg !427
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10, !dbg !429
  %id108 = getelementptr inbounds %struct._MSMDvtx* %add.ptr25, i64 0, i32 0, !dbg !430
  %33 = sext i32 %13 to i64
  br label %while.body72.lr.ph.lr.ph, !dbg !421

while.body72.lr.ph.lr.ph:                         ; preds = %while.body72.lr.ph.lr.ph.lr.ph, %if.then87
  %indvars.iv321.in = phi i64 [ %33, %while.body72.lr.ph.lr.ph.lr.ph ], [ %indvars.iv321, %if.then87 ]
  %bndwght.2.ph295 = phi i32 [ %bndwght.0.lcssa, %while.body72.lr.ph.lr.ph.lr.ph ], [ %bndwght.2.ph268284, %if.then87 ]
  %i.1.ph294 = phi i32 [ 0, %while.body72.lr.ph.lr.ph.lr.ph ], [ %i.1272, %if.then87 ]
  %j.1.ph293 = phi i32 [ %sub68, %while.body72.lr.ph.lr.ph.lr.ph ], [ %dec94, %if.then87 ]
  %indvars.iv321 = add i64 %indvars.iv321.in, -1, !dbg !421
  br label %while.body72.lr.ph, !dbg !421

while.body72.lr.ph:                               ; preds = %if.end135.while.body72.lr.ph_crit_edge, %while.body72.lr.ph.lr.ph
  %bndwght.2.ph268284 = phi i32 [ %bndwght.2.ph295, %while.body72.lr.ph.lr.ph ], [ %bndwght.3, %if.end135.while.body72.lr.ph_crit_edge ]
  %i.1.ph267283 = phi i32 [ %i.1.ph294, %while.body72.lr.ph.lr.ph ], [ %inc136, %if.end135.while.body72.lr.ph_crit_edge ]
  %34 = load %struct._MSMDvtx** %vertices, align 8, !dbg !433, !tbaa !223
  %35 = sext i32 %i.1.ph267283 to i64
  br label %while.body72, !dbg !421

while.cond69:                                     ; preds = %while.body72
  %indvars.iv.next313 = add i64 %indvars.iv312, 1, !dbg !421
  %inc81 = add nsw i32 %i.1272, 1, !dbg !434
  %36 = trunc i64 %indvars.iv312 to i32, !dbg !421
  %37 = trunc i64 %indvars.iv321 to i32, !dbg !421
  %cmp70 = icmp slt i32 %36, %37, !dbg !421
  br i1 %cmp70, label %while.body72, label %while.end139, !dbg !421

while.body72:                                     ; preds = %while.cond69, %while.body72.lr.ph
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %while.cond69 ], [ %35, %while.body72.lr.ph ]
  %i.1272 = phi i32 [ %inc81, %while.cond69 ], [ %i.1.ph267283, %while.body72.lr.ph ]
  %arrayidx74 = getelementptr inbounds i32* %14, i64 %indvars.iv312, !dbg !436
  %38 = load i32* %arrayidx74, align 4, !dbg !436, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !180), !dbg !436
  %idx.ext76 = sext i32 %38 to i64, !dbg !433
  %add.ptr77 = getelementptr inbounds %struct._MSMDvtx* %34, i64 %idx.ext76, !dbg !433
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %add.ptr77}, i64 0, metadata !185), !dbg !433
  %cmp78 = icmp eq %struct._MSMDvtx* %add.ptr77, %v, !dbg !437
  tail call void @llvm.dbg.value(metadata !{i32 %inc81}, i64 0, metadata !176), !dbg !434
  br i1 %cmp78, label %while.cond69, label %if.else82, !dbg !437

if.else82:                                        ; preds = %while.body72
  %status83 = getelementptr inbounds %struct._MSMDvtx* %34, i64 %idx.ext76, i32 2, !dbg !438
  %39 = load i8* %status83, align 1, !dbg !438, !tbaa !224
  %cmp85 = icmp eq i8 %39, 73, !dbg !438
  br i1 %cmp85, label %if.then87, label %if.else95, !dbg !438

if.then87:                                        ; preds = %if.else82
  %arrayidx89 = getelementptr inbounds i32* %14, i64 %indvars.iv321, !dbg !439
  %40 = load i32* %arrayidx89, align 4, !dbg !439, !tbaa !228
  store i32 %40, i32* %arrayidx74, align 4, !dbg !439, !tbaa !228
  store i32 %38, i32* %arrayidx89, align 4, !dbg !441, !tbaa !228
  %dec94 = add nsw i32 %j.1.ph293, -1, !dbg !442
  tail call void @llvm.dbg.value(metadata !{i32 %dec94}, i64 0, metadata !177), !dbg !442
  %cmp70271282 = icmp sgt i32 %i.1272, %dec94, !dbg !421
  br i1 %cmp70271282, label %while.end139, label %while.body72.lr.ph.lr.ph, !dbg !421

if.else95:                                        ; preds = %if.else82
  %mark96 = getelementptr inbounds %struct._MSMDvtx* %34, i64 %idx.ext76, i32 1, !dbg !443
  %41 = load i8* %mark96, align 1, !dbg !443, !tbaa !224
  %cmp98 = icmp eq i8 %41, 88, !dbg !443
  br i1 %cmp98, label %if.else115, label %if.then100, !dbg !443

if.then100:                                       ; preds = %if.else95
  %wght101 = getelementptr inbounds %struct._MSMDvtx* %34, i64 %idx.ext76, i32 4, !dbg !444
  %42 = load i32* %wght101, align 4, !dbg !444, !tbaa !228
  %add102 = add nsw i32 %42, %bndwght.2.ph268284, !dbg !444
  tail call void @llvm.dbg.value(metadata !{i32 %add102}, i64 0, metadata !175), !dbg !444
  %43 = load i32* %msglvl121, align 4, !dbg !445, !tbaa !228
  %cmp104 = icmp sgt i32 %43, 5, !dbg !445
  br i1 %cmp104, label %if.then106, label %if.end135, !dbg !445

if.then106:                                       ; preds = %if.then100
  %44 = load %struct._IO_FILE** %msgFile125, align 8, !dbg !430, !tbaa !223
  %45 = load i32* %id108, align 4, !dbg !430, !tbaa !228
  %id109 = getelementptr inbounds %struct._MSMDvtx* %add.ptr77, i64 0, i32 0, !dbg !430
  %46 = load i32* %id109, align 4, !dbg !430, !tbaa !228
  %call111 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0), i32 %45, i32 %46, i32 %42) #6, !dbg !430
  %47 = load %struct._IO_FILE** %msgFile125, align 8, !dbg !446, !tbaa !223
  %call113 = tail call i32 @fflush(%struct._IO_FILE* %47) #6, !dbg !446
  br label %if.end135, !dbg !447

if.else115:                                       ; preds = %if.else95
  %cmp118 = icmp eq i8 %39, 82, !dbg !448
  br i1 %cmp118, label %if.then120, label %if.end135, !dbg !448

if.then120:                                       ; preds = %if.else115
  %48 = load i32* %msglvl121, align 4, !dbg !422, !tbaa !228
  %cmp122 = icmp sgt i32 %48, 2, !dbg !422
  br i1 %cmp122, label %if.then124, label %if.end131, !dbg !422

if.then124:                                       ; preds = %if.then120
  %49 = load %struct._IO_FILE** %msgFile125, align 8, !dbg !427, !tbaa !223
  %id126 = getelementptr inbounds %struct._MSMDvtx* %add.ptr77, i64 0, i32 0, !dbg !427
  %50 = load i32* %id126, align 4, !dbg !427, !tbaa !228
  %51 = load i32* %id127, align 4, !dbg !427, !tbaa !228
  %call128 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([30 x i8]* @.str14, i64 0, i64 0), i32 %50, i32 %51) #6, !dbg !427
  %52 = load %struct._IO_FILE** %msgFile125, align 8, !dbg !449, !tbaa !223
  %call130 = tail call i32 @fflush(%struct._IO_FILE* %52) #6, !dbg !449
  br label %if.end131, !dbg !450

if.end131:                                        ; preds = %if.then124, %if.then120
  store i8 79, i8* %status83, align 1, !dbg !451, !tbaa !224
  %53 = load %struct._MSMDstageInfo** %stageInfo, align 8, !dbg !429, !tbaa !223
  %noutmtch = getelementptr inbounds %struct._MSMDstageInfo* %53, i64 0, i32 11, !dbg !429
  %54 = load i32* %noutmtch, align 4, !dbg !429, !tbaa !228
  %inc133 = add nsw i32 %54, 1, !dbg !429
  store i32 %inc133, i32* %noutmtch, align 4, !dbg !429, !tbaa !228
  br label %if.end135, !dbg !452

if.end135:                                        ; preds = %if.else115, %if.end131, %if.then100, %if.then106
  %bndwght.3 = phi i32 [ %add102, %if.then106 ], [ %add102, %if.then100 ], [ %bndwght.2.ph268284, %if.end131 ], [ %bndwght.2.ph268284, %if.else115 ]
  tail call void @llvm.dbg.value(metadata !{i32 %inc136}, i64 0, metadata !176), !dbg !453
  %55 = trunc i64 %indvars.iv321 to i32, !dbg !421
  %cmp70271 = icmp slt i32 %i.1272, %55, !dbg !421
  br i1 %cmp70271, label %if.end135.while.body72.lr.ph_crit_edge, label %while.end139, !dbg !421

if.end135.while.body72.lr.ph_crit_edge:           ; preds = %if.end135
  %inc136 = add nsw i32 %i.1272, 1, !dbg !453
  br label %while.body72.lr.ph, !dbg !421

while.end139:                                     ; preds = %if.end135, %if.then87, %while.end, %while.cond69
  %j.1.ph288 = phi i32 [ %j.1.ph293, %while.cond69 ], [ %j.1.ph293, %if.end135 ], [ %sub68, %while.end ], [ %dec94, %if.then87 ]
  %bndwght.2.ph268281 = phi i32 [ %bndwght.2.ph268284, %while.cond69 ], [ %bndwght.3, %if.end135 ], [ %bndwght.0.lcssa, %while.end ], [ %bndwght.2.ph268284, %if.then87 ]
  %add140 = add nsw i32 %j.1.ph288, 1, !dbg !454
  store i32 %add140, i32* %nadj26, align 4, !dbg !454, !tbaa !228
  %56 = load i32* %nadj, align 4, !dbg !455, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !178), !dbg !455
  store i8 79, i8* %mark, align 1, !dbg !456, !tbaa !224
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !177), !dbg !457
  %cmp144264 = icmp sgt i32 %56, 0, !dbg !457
  br i1 %cmp144264, label %for.body, label %for.end, !dbg !457

for.body:                                         ; preds = %while.end139, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %while.end139 ]
  %arrayidx147 = getelementptr inbounds i32* %8, i64 %indvars.iv, !dbg !459
  %57 = load i32* %arrayidx147, align 4, !dbg !459, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %57}, i64 0, metadata !180), !dbg !459
  %58 = load %struct._MSMDvtx** %vertices, align 8, !dbg !461, !tbaa !223
  %idx.ext149 = sext i32 %57 to i64, !dbg !461
  %mark151 = getelementptr inbounds %struct._MSMDvtx* %58, i64 %idx.ext149, i32 1, !dbg !462
  store i8 79, i8* %mark151, align 1, !dbg !462, !tbaa !224
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !457
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !457
  %exitcond = icmp eq i32 %lftr.wideiv, %56, !dbg !457
  br i1 %exitcond, label %for.end, label %for.body, !dbg !457

for.end:                                          ; preds = %for.body, %while.end139
  %stageInfo153 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10, !dbg !463
  %59 = load %struct._MSMDstageInfo** %stageInfo153, align 8, !dbg !463, !tbaa !223
  %nexact2 = getelementptr inbounds %struct._MSMDstageInfo* %59, i64 0, i32 6, !dbg !463
  %60 = load i32* %nexact2, align 4, !dbg !463, !tbaa !228
  %inc154 = add nsw i32 %60, 1, !dbg !463
  store i32 %inc154, i32* %nexact2, align 4, !dbg !463, !tbaa !228
  ret i32 %bndwght.2.ph268281, !dbg !464
}

; Function Attrs: nounwind optsize uwtable
define i32 @MSMD_exactDegree3(%struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #0 {
entry:
  %ierr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._MSMD* %msmd}, i64 0, metadata !188), !dbg !465
  call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %v}, i64 0, metadata !189), !dbg !466
  call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %info}, i64 0, metadata !190), !dbg !467
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !193), !dbg !468
  %cmp = icmp eq %struct._MSMD* %msmd, null, !dbg !469
  %cmp1 = icmp eq %struct._MSMDvtx* %v, null, !dbg !469
  %or.cond = or i1 %cmp, %cmp1, !dbg !469
  %cmp3 = icmp eq %struct._MSMDinfo* %info, null, !dbg !469
  %or.cond167 = or i1 %or.cond, %cmp3, !dbg !469
  br i1 %or.cond167, label %if.then, label %if.end, !dbg !469

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !470, !tbaa !223
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str15, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #6, !dbg !470
  call void @exit(i32 -1) #7, !dbg !472
  unreachable, !dbg !472

if.end:                                           ; preds = %entry
  %ivtmpIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 6, !dbg !473
  %call4 = call i32* @IV_entries(%struct._IV* %ivtmpIV) #6, !dbg !473
  call void @llvm.dbg.value(metadata !{i32* %call4}, i64 0, metadata !200), !dbg !473
  %mark = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 1, !dbg !474
  store i8 88, i8* %mark, align 1, !dbg !474, !tbaa !224
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !195), !dbg !475
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 9, !dbg !476
  %ip.0185 = load %struct._IP** %subtrees, align 8, !dbg !476
  %cmp5186 = icmp eq %struct._IP* %ip.0185, null, !dbg !476
  br i1 %cmp5186, label %for.end, label %for.body.lr.ph, !dbg !476

for.body.lr.ph:                                   ; preds = %if.end
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !478
  br label %for.body, !dbg !476

for.body:                                         ; preds = %while.end, %for.body.lr.ph
  %ip.0188 = phi %struct._IP* [ %ip.0185, %for.body.lr.ph ], [ %ip.0, %while.end ]
  %nadj.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %nadj.1.ph, %while.end ]
  %val = getelementptr inbounds %struct._IP* %ip.0188, i64 0, i32 0, !dbg !480
  %1 = load i32* %val, align 4, !dbg !480, !tbaa !228
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !196), !dbg !480
  %2 = load %struct._MSMDvtx** %vertices, align 8, !dbg !478, !tbaa !223
  %idx.ext = sext i32 %1 to i64, !dbg !478
  %nadj6 = getelementptr inbounds %struct._MSMDvtx* %2, i64 %idx.ext, i32 5, !dbg !481
  %3 = load i32* %nadj6, align 4, !dbg !481, !tbaa !228
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !197), !dbg !481
  %adj7 = getelementptr inbounds %struct._MSMDvtx* %2, i64 %idx.ext, i32 6, !dbg !482
  %4 = load i32** %adj7, align 8, !dbg !482, !tbaa !223
  call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !201), !dbg !482
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !192), !dbg !483
  %sub = add nsw i32 %3, -1, !dbg !483
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !194), !dbg !483
  %5 = sext i32 %nadj.0187 to i64
  br label %while.cond.outer, !dbg !484

while.cond.outer:                                 ; preds = %if.then25, %for.body
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %if.then25 ], [ %5, %for.body ]
  %nadj.1.ph = phi i32 [ %inc27, %if.then25 ], [ %nadj.0187, %for.body ]
  %j.0.ph = phi i32 [ %j.0.ph177, %if.then25 ], [ %sub, %for.body ]
  %i.0.ph = phi i32 [ %inc, %if.then25 ], [ 0, %for.body ]
  %6 = sext i32 %j.0.ph to i64
  br label %while.cond.outer176

while.cond.outer176:                              ; preds = %while.cond.outer, %if.then14
  %indvars.iv217 = phi i64 [ %6, %while.cond.outer ], [ %indvars.iv.next218, %if.then14 ]
  %j.0.ph177 = phi i32 [ %j.0.ph, %while.cond.outer ], [ %dec, %if.then14 ]
  %i.0.ph178 = phi i32 [ %i.0.ph, %while.cond.outer ], [ %i.0, %if.then14 ]
  %7 = sext i32 %i.0.ph178 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer176, %if.else
  %indvars.iv214 = phi i64 [ %7, %while.cond.outer176 ], [ %indvars.iv.next215, %if.else ]
  %i.0 = phi i32 [ %i.0.ph178, %while.cond.outer176 ], [ %inc, %if.else ]
  %8 = trunc i64 %indvars.iv214 to i32, !dbg !484
  %9 = trunc i64 %indvars.iv217 to i32, !dbg !484
  %cmp8 = icmp sgt i32 %8, %9, !dbg !484
  br i1 %cmp8, label %while.end, label %while.body, !dbg !484

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv214, !dbg !485
  %10 = load i32* %arrayidx, align 4, !dbg !485, !tbaa !228
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !199), !dbg !485
  %11 = load %struct._MSMDvtx** %vertices, align 8, !dbg !487, !tbaa !223
  %idx.ext10 = sext i32 %10 to i64, !dbg !487
  %status = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext10, i32 2, !dbg !488
  %12 = load i8* %status, align 1, !dbg !488, !tbaa !224
  %cmp12 = icmp eq i8 %12, 73, !dbg !488
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !488

if.then14:                                        ; preds = %while.body
  %arrayidx16 = getelementptr inbounds i32* %4, i64 %indvars.iv217, !dbg !489
  %13 = load i32* %arrayidx16, align 4, !dbg !489, !tbaa !228
  store i32 %13, i32* %arrayidx, align 4, !dbg !489, !tbaa !228
  store i32 %10, i32* %arrayidx16, align 4, !dbg !491, !tbaa !228
  %indvars.iv.next218 = add i64 %indvars.iv217, -1, !dbg !492
  %dec = add nsw i32 %j.0.ph177, -1, !dbg !493
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !194), !dbg !493
  br label %while.cond.outer176, !dbg !492

if.else:                                          ; preds = %while.body
  %indvars.iv.next215 = add i64 %indvars.iv214, 1, !dbg !494
  %inc = add nsw i32 %i.0, 1, !dbg !496
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !192), !dbg !496
  %mark21 = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext10, i32 1, !dbg !494
  %14 = load i8* %mark21, align 1, !dbg !494, !tbaa !224
  %cmp23 = icmp eq i8 %14, 88, !dbg !494
  br i1 %cmp23, label %while.cond, label %if.then25, !dbg !494

if.then25:                                        ; preds = %if.else
  store i8 88, i8* %mark21, align 1, !dbg !497, !tbaa !224
  %indvars.iv.next220 = add i64 %indvars.iv219, 1, !dbg !499
  %inc27 = add nsw i32 %nadj.1.ph, 1, !dbg !500
  call void @llvm.dbg.value(metadata !{i32 %inc27}, i64 0, metadata !195), !dbg !500
  %arrayidx29 = getelementptr inbounds i32* %call4, i64 %indvars.iv219, !dbg !500
  store i32 %10, i32* %arrayidx29, align 4, !dbg !500, !tbaa !228
  br label %while.cond.outer, !dbg !499

while.end:                                        ; preds = %while.cond
  %add = add nsw i32 %j.0.ph177, 1, !dbg !501
  store i32 %add, i32* %nadj6, align 4, !dbg !501, !tbaa !228
  %next = getelementptr inbounds %struct._IP* %ip.0188, i64 0, i32 1, !dbg !476
  %ip.0 = load %struct._IP** %next, align 8, !dbg !476
  %cmp5 = icmp eq %struct._IP* %ip.0, null, !dbg !476
  br i1 %cmp5, label %for.end, label %for.body, !dbg !476

for.end:                                          ; preds = %while.end, %if.end
  %nadj.0.lcssa = phi i32 [ 0, %if.end ], [ %nadj.1.ph, %while.end ]
  %nadj33 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5, !dbg !502
  %15 = load i32* %nadj33, align 4, !dbg !502, !tbaa !228
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !198), !dbg !502
  %adj34 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6, !dbg !503
  %16 = load i32** %adj34, align 8, !dbg !503, !tbaa !223
  call void @llvm.dbg.value(metadata !{i32* %16}, i64 0, metadata !202), !dbg !503
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !192), !dbg !504
  %sub35 = add nsw i32 %15, -1, !dbg !504
  call void @llvm.dbg.value(metadata !{i32 %sub35}, i64 0, metadata !194), !dbg !504
  %cmp37173193 = icmp slt i32 %15, 1, !dbg !505
  br i1 %cmp37173193, label %while.end70, label %while.body39.lr.ph.lr.ph, !dbg !505

while.body39.lr.ph.lr.ph:                         ; preds = %for.end
  %vertices42 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !506
  br label %while.body39.lr.ph, !dbg !505

while.body39.lr.ph:                               ; preds = %if.end67.while.body39.lr.ph_crit_edge, %while.body39.lr.ph.lr.ph
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %if.end67.while.body39.lr.ph_crit_edge ], [ 0, %while.body39.lr.ph.lr.ph ]
  %j.1.ph195 = phi i32 [ %j.1174, %if.end67.while.body39.lr.ph_crit_edge ], [ %sub35, %while.body39.lr.ph.lr.ph ]
  %nadj.2.ph194 = phi i32 [ %nadj.3, %if.end67.while.body39.lr.ph_crit_edge ], [ %nadj.0.lcssa, %while.body39.lr.ph.lr.ph ]
  %arrayidx41 = getelementptr inbounds i32* %16, i64 %indvars.iv207, !dbg !508
  %17 = sext i32 %j.1.ph195 to i64
  %.pre = load %struct._MSMDvtx** %vertices42, align 8, !dbg !506, !tbaa !223
  br label %while.body39, !dbg !505

while.body39:                                     ; preds = %while.body39.lr.ph, %if.then49
  %indvars.iv204 = phi i64 [ %17, %while.body39.lr.ph ], [ %indvars.iv.next205, %if.then49 ]
  %j.1174 = phi i32 [ %j.1.ph195, %while.body39.lr.ph ], [ %dec56, %if.then49 ]
  %18 = load i32* %arrayidx41, align 4, !dbg !508, !tbaa !228
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !196), !dbg !508
  %idx.ext43 = sext i32 %18 to i64, !dbg !506
  %status45 = getelementptr inbounds %struct._MSMDvtx* %.pre, i64 %idx.ext43, i32 2, !dbg !509
  %19 = load i8* %status45, align 1, !dbg !509, !tbaa !224
  %cmp47 = icmp eq i8 %19, 73, !dbg !509
  br i1 %cmp47, label %if.then49, label %if.else57, !dbg !509

if.then49:                                        ; preds = %while.body39
  %arrayidx51 = getelementptr inbounds i32* %16, i64 %indvars.iv204, !dbg !510
  %20 = load i32* %arrayidx51, align 4, !dbg !510, !tbaa !228
  store i32 %20, i32* %arrayidx41, align 4, !dbg !510, !tbaa !228
  store i32 %18, i32* %arrayidx51, align 4, !dbg !512, !tbaa !228
  %indvars.iv.next205 = add i64 %indvars.iv204, -1, !dbg !505
  %dec56 = add nsw i32 %j.1174, -1, !dbg !513
  call void @llvm.dbg.value(metadata !{i32 %dec56}, i64 0, metadata !194), !dbg !513
  %21 = trunc i64 %indvars.iv.next205 to i32, !dbg !505
  %22 = trunc i64 %indvars.iv207 to i32, !dbg !505
  %cmp37 = icmp sgt i32 %22, %21, !dbg !505
  br i1 %cmp37, label %while.end70, label %while.body39, !dbg !505

if.else57:                                        ; preds = %while.body39
  %mark58 = getelementptr inbounds %struct._MSMDvtx* %.pre, i64 %idx.ext43, i32 1, !dbg !514
  %23 = load i8* %mark58, align 1, !dbg !514, !tbaa !224
  %cmp60 = icmp eq i8 %23, 88, !dbg !514
  br i1 %cmp60, label %if.end67, label %if.then62, !dbg !514

if.then62:                                        ; preds = %if.else57
  store i8 88, i8* %mark58, align 1, !dbg !516, !tbaa !224
  %inc64 = add nsw i32 %nadj.2.ph194, 1, !dbg !518
  call void @llvm.dbg.value(metadata !{i32 %inc64}, i64 0, metadata !195), !dbg !518
  %idxprom65 = sext i32 %nadj.2.ph194 to i64, !dbg !518
  %arrayidx66 = getelementptr inbounds i32* %call4, i64 %idxprom65, !dbg !518
  store i32 %18, i32* %arrayidx66, align 4, !dbg !518, !tbaa !228
  br label %if.end67, !dbg !519

if.end67:                                         ; preds = %if.else57, %if.then62
  %nadj.3 = phi i32 [ %inc64, %if.then62 ], [ %nadj.2.ph194, %if.else57 ]
  %24 = trunc i64 %indvars.iv207 to i32, !dbg !505
  %cmp37173 = icmp slt i32 %24, %j.1174, !dbg !505
  br i1 %cmp37173, label %if.end67.while.body39.lr.ph_crit_edge, label %while.end70, !dbg !505

if.end67.while.body39.lr.ph_crit_edge:            ; preds = %if.end67
  %indvars.iv.next208 = add i64 %indvars.iv207, 1, !dbg !505
  br label %while.body39.lr.ph, !dbg !505

while.end70:                                      ; preds = %for.end, %if.end67, %if.then49
  %nadj.2.ph191 = phi i32 [ %nadj.2.ph194, %if.then49 ], [ %nadj.0.lcssa, %for.end ], [ %nadj.3, %if.end67 ]
  %j.1.lcssa = phi i32 [ %dec56, %if.then49 ], [ %sub35, %for.end ], [ %j.1174, %if.end67 ]
  %add71 = add nsw i32 %j.1.lcssa, 1, !dbg !520
  store i32 %add71, i32* %nadj33, align 4, !dbg !520, !tbaa !228
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4, !dbg !521
  %25 = load i32* %msglvl, align 4, !dbg !521, !tbaa !228
  %cmp73 = icmp sgt i32 %25, 4, !dbg !521
  br i1 %cmp73, label %if.then75, label %for.cond82.preheader, !dbg !521

if.then75:                                        ; preds = %while.end70
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !522
  %26 = load %struct._IO_FILE** %msgFile, align 8, !dbg !522, !tbaa !223
  %id = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0, !dbg !522
  %27 = load i32* %id, align 4, !dbg !522, !tbaa !228
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([13 x i8]* @.str16, i64 0, i64 0), i32 %27) #6, !dbg !522
  %28 = load %struct._IO_FILE** %msgFile, align 8, !dbg !524, !tbaa !223
  %call78 = call i32 @IVfp80(%struct._IO_FILE* %28, i32 %15, i32* %16, i32 12, i32* %ierr) #6, !dbg !524
  %29 = load %struct._IO_FILE** %msgFile, align 8, !dbg !525, !tbaa !223
  %call80 = call i32 @fflush(%struct._IO_FILE* %29) #6, !dbg !525
  br label %for.cond82.preheader, !dbg !526

for.cond82.preheader:                             ; preds = %if.then75, %while.end70
  %cmp83168 = icmp sgt i32 %nadj.2.ph191, 0, !dbg !527
  br i1 %cmp83168, label %for.body85.lr.ph, label %for.end95, !dbg !527

for.body85.lr.ph:                                 ; preds = %for.cond82.preheader
  %vertices88 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !529
  br label %for.body85, !dbg !527

for.body85:                                       ; preds = %for.body85, %for.body85.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body85.lr.ph ], [ %indvars.iv.next, %for.body85 ]
  %bndwght.0170 = phi i32 [ 0, %for.body85.lr.ph ], [ %add91, %for.body85 ]
  %arrayidx87 = getelementptr inbounds i32* %call4, i64 %indvars.iv, !dbg !531
  %30 = load i32* %arrayidx87, align 4, !dbg !531, !tbaa !228
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !196), !dbg !531
  %31 = load %struct._MSMDvtx** %vertices88, align 8, !dbg !529, !tbaa !223
  %idx.ext89 = sext i32 %30 to i64, !dbg !529
  %wght = getelementptr inbounds %struct._MSMDvtx* %31, i64 %idx.ext89, i32 4, !dbg !532
  %32 = load i32* %wght, align 4, !dbg !532, !tbaa !228
  %add91 = add nsw i32 %32, %bndwght.0170, !dbg !532
  call void @llvm.dbg.value(metadata !{i32 %add91}, i64 0, metadata !191), !dbg !532
  %mark92 = getelementptr inbounds %struct._MSMDvtx* %31, i64 %idx.ext89, i32 1, !dbg !533
  store i8 79, i8* %mark92, align 1, !dbg !533, !tbaa !224
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !527
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !527
  %exitcond = icmp eq i32 %lftr.wideiv, %nadj.2.ph191, !dbg !527
  br i1 %exitcond, label %for.end95, label %for.body85, !dbg !527

for.end95:                                        ; preds = %for.body85, %for.cond82.preheader
  %bndwght.0.lcssa = phi i32 [ 0, %for.cond82.preheader ], [ %add91, %for.body85 ]
  store i8 79, i8* %mark, align 1, !dbg !534, !tbaa !224
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10, !dbg !535
  %33 = load %struct._MSMDstageInfo** %stageInfo, align 8, !dbg !535, !tbaa !223
  %nexact3 = getelementptr inbounds %struct._MSMDstageInfo* %33, i64 0, i32 7, !dbg !535
  %34 = load i32* %nexact3, align 4, !dbg !535, !tbaa !228
  %inc97 = add nsw i32 %34, 1, !dbg !535
  store i32 %inc97, i32* %nexact3, align 4, !dbg !535, !tbaa !228
  ret i32 %bndwght.0.lcssa, !dbg !536
}

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #4

; Function Attrs: optsize
declare void @IIheap_print(%struct._IIheap*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !168, metadata !186, metadata !206}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMD_update", metadata !"MSMD_update", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._MSMD*, %struct._MSMDinfo*)* @MSMD_update, null, null, metadata !155, i32 17} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 17] [MSMD_update]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !65}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSMD]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"MSMD", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [MSMD] [line 15, size 0, align 0, offset 0] [from _MSMD]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_MSMD", i32 38, i64 768, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_MSMD] [line 38, size 768, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../MSMD.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !27, metadata !28, metadata !38, metadata !39, metadata !55, metadata !64}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvtx", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 39, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"heap", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [heap] [line 40, size 64, align 64, offset 64] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IIheap]
!17 = metadata !{i32 786454, metadata !11, null, metadata !"IIheap", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [IIheap] [line 20, size 0, align 0, offset 0] [from _IIheap]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"_IIheap", i32 21, i64 256, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IIheap] [line 21, size 256, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../IIheap/IIheap.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !25, metadata !26}
!21 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!23 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"heapLoc", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [heapLoc] [line 24, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"keys", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [keys] [line 25, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"values", i32 26, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [values] [line 26, size 64, align 64, offset 192] [from ]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"incrIP", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [incrIP] [line 41, size 32, align 32, offset 128] [from int]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"baseIP", i32 42, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [baseIP] [line 42, size 64, align 64, offset 192] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IP]
!30 = metadata !{i32 786454, metadata !11, null, metadata !"IP", i32 10, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IP] [line 10, size 0, align 0, offset 0] [from _IP]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IP", i32 11, i64 128, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IP] [line 11, size 128, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../Utilities/IP.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"val", i32 12, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [val] [line 12, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"next", i32 13, i64 64, i64 64, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 13, size 64, align 64, offset 64] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IP]
!37 = metadata !{i32 786454, metadata !32, null, metadata !"IP", i32 10, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IP] [line 10, size 0, align 0, offset 0] [from _IP]
!38 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"freeIP", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [freeIP] [line 43, size 64, align 64, offset 256] [from ]
!39 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vertices", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !40} ; [ DW_TAG_member ] [vertices] [line 44, size 64, align 64, offset 320] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSMDvtx]
!41 = metadata !{i32 786454, metadata !11, null, metadata !"MSMDvtx", i32 18, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [MSMDvtx] [line 18, size 0, align 0, offset 0] [from _MSMDvtx]
!42 = metadata !{i32 786451, metadata !11, null, metadata !"_MSMDvtx", i32 180, i64 448, i64 64, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [_MSMDvtx] [line 180, size 448, align 64, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !45, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!44 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"id", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 181, size 32, align 32, offset 0] [from int]
!45 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"mark", i32 182, i64 8, i64 8, i64 32, i32 0, metadata !46} ; [ DW_TAG_member ] [mark] [line 182, size 8, align 8, offset 32] [from char]
!46 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!47 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"status", i32 183, i64 8, i64 8, i64 40, i32 0, metadata !46} ; [ DW_TAG_member ] [status] [line 183, size 8, align 8, offset 40] [from char]
!48 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"stage", i32 184, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [stage] [line 184, size 32, align 32, offset 64] [from int]
!49 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"wght", i32 185, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [wght] [line 185, size 32, align 32, offset 96] [from int]
!50 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"nadj", i32 186, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nadj] [line 186, size 32, align 32, offset 128] [from int]
!51 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"adj", i32 187, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [adj] [line 187, size 64, align 64, offset 192] [from ]
!52 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"bndwght", i32 188, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [bndwght] [line 188, size 32, align 32, offset 256] [from int]
!53 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"par", i32 189, i64 64, i64 64, i64 320, i32 0, metadata !40} ; [ DW_TAG_member ] [par] [line 189, size 64, align 64, offset 320] [from ]
!54 = metadata !{i32 786445, metadata !11, metadata !42, metadata !"subtrees", i32 190, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ] [subtrees] [line 190, size 64, align 64, offset 384] [from ]
!55 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ivtmpIV", i32 45, i64 192, i64 64, i64 384, i32 0, metadata !56} ; [ DW_TAG_member ] [ivtmpIV] [line 45, size 192, align 64, offset 384] [from IV]
!56 = metadata !{i32 786454, metadata !11, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!57 = metadata !{i32 786451, metadata !58, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !59, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!58 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!59 = metadata !{metadata !60, metadata !61, metadata !62, metadata !63}
!60 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!61 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!62 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!63 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!64 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"reachIV", i32 46, i64 192, i64 64, i64 576, i32 0, metadata !56} ; [ DW_TAG_member ] [reachIV] [line 46, size 192, align 64, offset 576] [from IV]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSMDinfo]
!66 = metadata !{i32 786454, metadata !1, null, metadata !"MSMDinfo", i32 16, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [MSMDinfo] [line 16, size 0, align 0, offset 0] [from _MSMDinfo]
!67 = metadata !{i32 786451, metadata !11, null, metadata !"_MSMDinfo", i32 100, i64 512, i64 64, i32 0, i32 0, null, metadata !68, i32 0, null, null} ; [ DW_TAG_structure_type ] [_MSMDinfo] [line 100, size 512, align 64, offset 0] [from ]
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !73, metadata !74, metadata !75, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !154}
!69 = metadata !{i32 786445, metadata !11, metadata !67, metadata !"compressFlag", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [compressFlag] [line 101, size 32, align 32, offset 0] [from int]
!70 = metadata !{i32 786445, metadata !11, metadata !67, metadata !"prioType", i32 102, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [prioType] [line 102, size 32, align 32, offset 32] [from int]
!71 = metadata !{i32 786445, metadata !11, metadata !67, metadata !"stepType", i32 103, i64 64, i64 64, i64 64, i32 0, metadata !72} ; [ DW_TAG_member ] [stepType] [line 103, size 64, align 64, offset 64] [from double]
!72 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!73 = metadata !{i32 786445, metadata !11, metadata !67, metadata !"seed", i32 104, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [seed] [line 104, size 32, align 32, offset 128] [from int]
!74 = metadata !{i32 786445, metadata !11, metadata !67, metadata !"msglvl", i32 105, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [msglvl] [line 105, size 32, align 32, offset 160] [from int]
!75 = metadata !{i32 786445, metadata !11, metadata !67, metadata !"msgFile", i32 106, i64 64, i64 64, i64 192, i32 0, metadata !76} ; [ DW_TAG_member ] [msgFile] [line 106, size 64, align 64, offset 192] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!77 = metadata !{i32 786454, metadata !11, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!78 = metadata !{i32 786451, metadata !79, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !80, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!79 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!80 = metadata !{metadata !81, metadata !82, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !102, metadata !103, metadata !104, metadata !105, metadata !108, metadata !110, metadata !112, metadata !116, metadata !118, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !127, metadata !128}
!81 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!82 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!84 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!85 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!86 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!87 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!88 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!89 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!90 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!91 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!92 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!93 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!94 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !95} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!96 = metadata !{i32 786451, metadata !79, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !97, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!97 = metadata !{metadata !98, metadata !99, metadata !101}
!98 = metadata !{i32 786445, metadata !79, metadata !96, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!99 = metadata !{i32 786445, metadata !79, metadata !96, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !100} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!101 = metadata !{i32 786445, metadata !79, metadata !96, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!102 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !100} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!103 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!104 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!105 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !106} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!106 = metadata !{i32 786454, metadata !79, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!107 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!108 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !109} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!109 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!110 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !111} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!111 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!112 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !113} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!113 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !46, metadata !114, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!114 = metadata !{metadata !115}
!115 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!116 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !117} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!117 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!118 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !119} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!119 = metadata !{i32 786454, metadata !79, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!120 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !117} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!121 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !117} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!122 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !117} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!123 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !117} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!124 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !125} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!125 = metadata !{i32 786454, metadata !79, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!126 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!127 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!128 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !129} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!129 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !46, metadata !130, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!130 = metadata !{metadata !131}
!131 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!132 = metadata !{i32 786445, metadata !11, metadata !67, metadata !"maxnbytes", i32 107, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnbytes] [line 107, size 32, align 32, offset 256] [from int]
!133 = metadata !{i32 786445, metadata !11, metadata !67, metadata !"nbytes", i32 108, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytes] [line 108, size 32, align 32, offset 288] [from int]
!134 = metadata !{i32 786445, metadata !11, metadata !67, metadata !"istage", i32 109, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [istage] [line 109, size 32, align 32, offset 320] [from int]
!135 = metadata !{i32 786445, metadata !11, metadata !67, metadata !"nstage", i32 110, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [nstage] [line 110, size 32, align 32, offset 352] [from int]
!136 = metadata !{i32 786445, metadata !11, metadata !67, metadata !"stageInfo", i32 111, i64 64, i64 64, i64 384, i32 0, metadata !137} ; [ DW_TAG_member ] [stageInfo] [line 111, size 64, align 64, offset 384] [from ]
!137 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !138} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSMDstageInfo]
!138 = metadata !{i32 786454, metadata !11, null, metadata !"MSMDstageInfo", i32 17, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [MSMDstageInfo] [line 17, size 0, align 0, offset 0] [from _MSMDstageInfo]
!139 = metadata !{i32 786451, metadata !11, null, metadata !"_MSMDstageInfo", i32 132, i64 512, i64 64, i32 0, i32 0, null, metadata !140, i32 0, null, null} ; [ DW_TAG_structure_type ] [_MSMDstageInfo] [line 132, size 512, align 64, offset 0] [from ]
!140 = metadata !{metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153}
!141 = metadata !{i32 786445, metadata !11, metadata !139, metadata !"nstep", i32 133, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nstep] [line 133, size 32, align 32, offset 0] [from int]
!142 = metadata !{i32 786445, metadata !11, metadata !139, metadata !"nfront", i32 134, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nfront] [line 134, size 32, align 32, offset 32] [from int]
!143 = metadata !{i32 786445, metadata !11, metadata !139, metadata !"welim", i32 135, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [welim] [line 135, size 32, align 32, offset 64] [from int]
!144 = metadata !{i32 786445, metadata !11, metadata !139, metadata !"nfind", i32 136, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nfind] [line 136, size 32, align 32, offset 96] [from int]
!145 = metadata !{i32 786445, metadata !11, metadata !139, metadata !"nzf", i32 137, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nzf] [line 137, size 32, align 32, offset 128] [from int]
!146 = metadata !{i32 786445, metadata !11, metadata !139, metadata !"ops", i32 138, i64 64, i64 64, i64 192, i32 0, metadata !72} ; [ DW_TAG_member ] [ops] [line 138, size 64, align 64, offset 192] [from double]
!147 = metadata !{i32 786445, metadata !11, metadata !139, metadata !"nexact2", i32 139, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [nexact2] [line 139, size 32, align 32, offset 256] [from int]
!148 = metadata !{i32 786445, metadata !11, metadata !139, metadata !"nexact3", i32 140, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [nexact3] [line 140, size 32, align 32, offset 288] [from int]
!149 = metadata !{i32 786445, metadata !11, metadata !139, metadata !"napprox", i32 141, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [napprox] [line 141, size 32, align 32, offset 320] [from int]
!150 = metadata !{i32 786445, metadata !11, metadata !139, metadata !"ncheck", i32 142, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [ncheck] [line 142, size 32, align 32, offset 352] [from int]
!151 = metadata !{i32 786445, metadata !11, metadata !139, metadata !"nindst", i32 143, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [nindst] [line 143, size 32, align 32, offset 384] [from int]
!152 = metadata !{i32 786445, metadata !11, metadata !139, metadata !"noutmtch", i32 144, i64 32, i64 32, i64 416, i32 0, metadata !14} ; [ DW_TAG_member ] [noutmtch] [line 144, size 32, align 32, offset 416] [from int]
!153 = metadata !{i32 786445, metadata !11, metadata !139, metadata !"cpu", i32 145, i64 64, i64 64, i64 448, i32 0, metadata !72} ; [ DW_TAG_member ] [cpu] [line 145, size 64, align 64, offset 448] [from double]
!154 = metadata !{i32 786445, metadata !11, metadata !67, metadata !"totalCPU", i32 112, i64 64, i64 64, i64 448, i32 0, metadata !72} ; [ DW_TAG_member ] [totalCPU] [line 112, size 64, align 64, offset 448] [from double]
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !167}
!156 = metadata !{i32 786689, metadata !4, metadata !"msmd", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msmd] [line 15]
!157 = metadata !{i32 786689, metadata !4, metadata !"info", metadata !5, i32 33554448, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 16]
!158 = metadata !{i32 786688, metadata !4, metadata !"ii", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 18]
!159 = metadata !{i32 786688, metadata !4, metadata !"jj", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 18]
!160 = metadata !{i32 786688, metadata !4, metadata !"nreach", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nreach] [line 18]
!161 = metadata !{i32 786688, metadata !4, metadata !"vid", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vid] [line 18]
!162 = metadata !{i32 786688, metadata !4, metadata !"wght", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wght] [line 18]
!163 = metadata !{i32 786688, metadata !4, metadata !"reach", metadata !5, i32 19, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reach] [line 19]
!164 = metadata !{i32 786688, metadata !4, metadata !"ip", metadata !5, i32 20, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 20]
!165 = metadata !{i32 786688, metadata !4, metadata !"reachIV", metadata !5, i32 21, metadata !166, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reachIV] [line 21]
!166 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!167 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 22, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 22]
!168 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMD_exactDegree2", metadata !"MSMD_exactDegree2", metadata !"", i32 218, metadata !169, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._MSMD*, %struct._MSMDvtx*, %struct._MSMDinfo*)* @MSMD_exactDegree2, null, null, metadata !171, i32 222} ; [ DW_TAG_subprogram ] [line 218] [def] [scope 222] [MSMD_exactDegree2]
!169 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!170 = metadata !{metadata !14, metadata !8, metadata !40, metadata !65}
!171 = metadata !{metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185}
!172 = metadata !{i32 786689, metadata !168, metadata !"msmd", metadata !5, i32 16777435, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msmd] [line 219]
!173 = metadata !{i32 786689, metadata !168, metadata !"v", metadata !5, i32 33554652, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 220]
!174 = metadata !{i32 786689, metadata !168, metadata !"info", metadata !5, i32 50331869, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 221]
!175 = metadata !{i32 786688, metadata !168, metadata !"bndwght", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwght] [line 223]
!176 = metadata !{i32 786688, metadata !168, metadata !"i", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 223]
!177 = metadata !{i32 786688, metadata !168, metadata !"j", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 223]
!178 = metadata !{i32 786688, metadata !168, metadata !"usize0", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [usize0] [line 223]
!179 = metadata !{i32 786688, metadata !168, metadata !"usize1", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [usize1] [line 223]
!180 = metadata !{i32 786688, metadata !168, metadata !"wid", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wid] [line 223]
!181 = metadata !{i32 786688, metadata !168, metadata !"uadj0", metadata !5, i32 224, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uadj0] [line 224]
!182 = metadata !{i32 786688, metadata !168, metadata !"uadj1", metadata !5, i32 224, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uadj1] [line 224]
!183 = metadata !{i32 786688, metadata !168, metadata !"u0", metadata !5, i32 225, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u0] [line 225]
!184 = metadata !{i32 786688, metadata !168, metadata !"u1", metadata !5, i32 225, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u1] [line 225]
!185 = metadata !{i32 786688, metadata !168, metadata !"w", metadata !5, i32 225, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 225]
!186 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMD_exactDegree3", metadata !"MSMD_exactDegree3", metadata !"", i32 376, metadata !169, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._MSMD*, %struct._MSMDvtx*, %struct._MSMDinfo*)* @MSMD_exactDegree3, null, null, metadata !187, i32 380} ; [ DW_TAG_subprogram ] [line 376] [def] [scope 380] [MSMD_exactDegree3]
!187 = metadata !{metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205}
!188 = metadata !{i32 786689, metadata !186, metadata !"msmd", metadata !5, i32 16777593, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msmd] [line 377]
!189 = metadata !{i32 786689, metadata !186, metadata !"v", metadata !5, i32 33554810, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 378]
!190 = metadata !{i32 786689, metadata !186, metadata !"info", metadata !5, i32 50332027, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 379]
!191 = metadata !{i32 786688, metadata !186, metadata !"bndwght", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwght] [line 381]
!192 = metadata !{i32 786688, metadata !186, metadata !"i", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 381]
!193 = metadata !{i32 786688, metadata !186, metadata !"ierr", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 381]
!194 = metadata !{i32 786688, metadata !186, metadata !"j", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 381]
!195 = metadata !{i32 786688, metadata !186, metadata !"nadj", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nadj] [line 381]
!196 = metadata !{i32 786688, metadata !186, metadata !"uid", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uid] [line 381]
!197 = metadata !{i32 786688, metadata !186, metadata !"usize", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [usize] [line 381]
!198 = metadata !{i32 786688, metadata !186, metadata !"vsize", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vsize] [line 381]
!199 = metadata !{i32 786688, metadata !186, metadata !"wid", metadata !5, i32 381, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wid] [line 381]
!200 = metadata !{i32 786688, metadata !186, metadata !"adj", metadata !5, i32 382, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 382]
!201 = metadata !{i32 786688, metadata !186, metadata !"uadj", metadata !5, i32 382, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uadj] [line 382]
!202 = metadata !{i32 786688, metadata !186, metadata !"vadj", metadata !5, i32 382, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vadj] [line 382]
!203 = metadata !{i32 786688, metadata !186, metadata !"ip", metadata !5, i32 383, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 383]
!204 = metadata !{i32 786688, metadata !186, metadata !"u", metadata !5, i32 384, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 384]
!205 = metadata !{i32 786688, metadata !186, metadata !"w", metadata !5, i32 384, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 384]
!206 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMD_approxDegree", metadata !"MSMD_approxDegree", metadata !"", i32 482, metadata !169, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._MSMD*, %struct._MSMDvtx*, %struct._MSMDinfo*)* @MSMD_approxDegree, null, null, metadata !207, i32 486} ; [ DW_TAG_subprogram ] [line 482] [def] [scope 486] [MSMD_approxDegree]
!207 = metadata !{metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217}
!208 = metadata !{i32 786689, metadata !206, metadata !"msmd", metadata !5, i32 16777699, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msmd] [line 483]
!209 = metadata !{i32 786689, metadata !206, metadata !"v", metadata !5, i32 33554916, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 484]
!210 = metadata !{i32 786689, metadata !206, metadata !"info", metadata !5, i32 50332133, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 485]
!211 = metadata !{i32 786688, metadata !206, metadata !"bndwght", metadata !5, i32 487, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwght] [line 487]
!212 = metadata !{i32 786688, metadata !206, metadata !"i", metadata !5, i32 487, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 487]
!213 = metadata !{i32 786688, metadata !206, metadata !"uid", metadata !5, i32 487, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uid] [line 487]
!214 = metadata !{i32 786688, metadata !206, metadata !"vsize", metadata !5, i32 487, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vsize] [line 487]
!215 = metadata !{i32 786688, metadata !206, metadata !"vadj", metadata !5, i32 488, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vadj] [line 488]
!216 = metadata !{i32 786688, metadata !206, metadata !"ip", metadata !5, i32 489, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 489]
!217 = metadata !{i32 786688, metadata !206, metadata !"u", metadata !5, i32 490, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 490]
!218 = metadata !{i32 15, i32 0, metadata !4, null}
!219 = metadata !{i32 16, i32 0, metadata !4, null}
!220 = metadata !{i32 28, i32 0, metadata !4, null}
!221 = metadata !{i32 29, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!223 = metadata !{metadata !"any pointer", metadata !224}
!224 = metadata !{metadata !"omnipotent char", metadata !225}
!225 = metadata !{metadata !"Simple C/C++ TBAA"}
!226 = metadata !{i32 31, i32 0, metadata !222, null}
!227 = metadata !{i32 33, i32 0, metadata !4, null}
!228 = metadata !{metadata !"int", metadata !224}
!229 = metadata !{i32 44, i32 0, metadata !4, null}
!230 = metadata !{i32 34, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !4, i32 33, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!232 = metadata !{i32 36, i32 0, metadata !231, null}
!233 = metadata !{i32 37, i32 0, metadata !231, null}
!234 = metadata !{i32 38, i32 0, metadata !231, null}
!235 = metadata !{i32 45, i32 0, metadata !4, null}
!236 = metadata !{i32 48, i32 0, metadata !4, null}
!237 = metadata !{i32 49, i32 0, metadata !4, null}
!238 = metadata !{i32 50, i32 0, metadata !239, null}
!239 = metadata !{i32 786443, metadata !1, metadata !240, i32 50, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!240 = metadata !{i32 786443, metadata !1, metadata !4, i32 49, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!241 = metadata !{i32 55, i32 0, metadata !240, null}
!242 = metadata !{i32 52, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !239, i32 50, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!244 = metadata !{i32 53, i32 0, metadata !243, null}
!245 = metadata !{i32 51, i32 0, metadata !243, null}
!246 = metadata !{i32 56, i32 0, metadata !240, null}
!247 = metadata !{i32 62, i32 0, metadata !4, null}
!248 = metadata !{i32 101, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !250, i32 101, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!250 = metadata !{i32 786443, metadata !1, metadata !4, i32 95, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!251 = metadata !{i32 103, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !249, i32 101, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!253 = metadata !{i32 105, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !252, i32 104, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!255 = metadata !{i32 68, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !257, i32 68, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!257 = metadata !{i32 786443, metadata !1, metadata !4, i32 62, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!258 = metadata !{i32 70, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !256, i32 68, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!260 = metadata !{i32 86, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !262, i32 85, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!262 = metadata !{i32 786443, metadata !1, metadata !259, i32 78, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!263 = metadata !{i32 91, i32 0, metadata !262, null}
!264 = metadata !{i32 115, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !266, i32 115, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!266 = metadata !{i32 786443, metadata !1, metadata !4, i32 109, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!267 = metadata !{i32 117, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !265, i32 115, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!269 = metadata !{i32 119, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !268, i32 118, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!271 = metadata !{i32 149, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !273, i32 132, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!273 = metadata !{i32 786443, metadata !1, metadata !268, i32 123, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!274 = metadata !{i32 69, i32 0, metadata !259, null}
!275 = metadata !{i32 71, i32 0, metadata !259, null}
!276 = metadata !{i32 84, i32 0, metadata !262, null}
!277 = metadata !{i32 85, i32 0, metadata !262, null}
!278 = metadata !{i32 89, i32 0, metadata !261, null}
!279 = metadata !{i32 90, i32 0, metadata !261, null}
!280 = metadata !{i32 92, i32 0, metadata !262, null}
!281 = metadata !{i32 93, i32 0, metadata !262, null}
!282 = metadata !{i32 102, i32 0, metadata !252, null}
!283 = metadata !{i32 104, i32 0, metadata !252, null}
!284 = metadata !{i32 106, i32 0, metadata !254, null}
!285 = metadata !{i32 107, i32 0, metadata !254, null}
!286 = metadata !{i32 168, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !266, i32 168, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!288 = metadata !{i32 170, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !287, i32 168, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!290 = metadata !{i32 172, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !289, i32 171, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!292 = metadata !{i32 188, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !289, i32 176, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!294 = metadata !{i32 116, i32 0, metadata !268, null}
!295 = metadata !{i32 118, i32 0, metadata !268, null}
!296 = metadata !{i32 123, i32 0, metadata !268, null}
!297 = metadata !{i32 121, i32 0, metadata !270, null}
!298 = metadata !{i32 122, i32 0, metadata !270, null}
!299 = metadata !{i32 129, i32 0, metadata !273, null}
!300 = metadata !{i32 138, i32 0, metadata !272, null}
!301 = metadata !{i32 139, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !272, i32 138, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!303 = metadata !{i32 140, i32 0, metadata !302, null}
!304 = metadata !{i32 141, i32 0, metadata !302, null}
!305 = metadata !{i32 142, i32 0, metadata !272, null}
!306 = metadata !{i32 143, i32 0, metadata !272, null}
!307 = metadata !{i32 144, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !272, i32 143, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!309 = metadata !{i32 147, i32 0, metadata !308, null}
!310 = metadata !{i32 148, i32 0, metadata !308, null}
!311 = metadata !{i32 150, i32 0, metadata !272, null}
!312 = metadata !{i32 151, i32 0, metadata !272, null}
!313 = metadata !{i32 158, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !273, i32 151, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!315 = metadata !{i32 169, i32 0, metadata !289, null}
!316 = metadata !{i32 171, i32 0, metadata !289, null}
!317 = metadata !{i32 176, i32 0, metadata !289, null}
!318 = metadata !{i32 174, i32 0, metadata !291, null}
!319 = metadata !{i32 175, i32 0, metadata !291, null}
!320 = metadata !{i32 177, i32 0, metadata !293, null}
!321 = metadata !{i32 178, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !293, i32 177, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!323 = metadata !{i32 179, i32 0, metadata !322, null}
!324 = metadata !{i32 180, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !1, metadata !293, i32 179, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!326 = metadata !{i32 182, i32 0, metadata !293, null}
!327 = metadata !{i32 183, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !293, i32 182, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!329 = metadata !{i32 186, i32 0, metadata !328, null}
!330 = metadata !{i32 187, i32 0, metadata !328, null}
!331 = metadata !{i32 189, i32 0, metadata !293, null}
!332 = metadata !{i32 190, i32 0, metadata !293, null}
!333 = metadata !{i32 196, i32 0, metadata !4, null}
!334 = metadata !{i32 202, i32 0, metadata !4, null}
!335 = metadata !{i32 203, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !4, i32 202, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!337 = metadata !{i32 204, i32 0, metadata !336, null}
!338 = metadata !{i32 205, i32 0, metadata !336, null}
!339 = metadata !{i32 206, i32 0, metadata !4, null}
!340 = metadata !{i32 483, i32 0, metadata !206, null}
!341 = metadata !{i32 484, i32 0, metadata !206, null}
!342 = metadata !{i32 485, i32 0, metadata !206, null}
!343 = metadata !{i32 496, i32 0, metadata !206, null}
!344 = metadata !{i32 497, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !206, i32 496, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!346 = metadata !{i32 499, i32 0, metadata !345, null}
!347 = metadata !{i32 506, i32 0, metadata !206, null}
!348 = metadata !{i32 507, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !206, i32 507, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!350 = metadata !{i32 508, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !349, i32 507, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!352 = metadata !{i32 510, i32 0, metadata !206, null}
!353 = metadata !{i32 511, i32 0, metadata !206, null}
!354 = metadata !{i32 512, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !206, i32 512, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!356 = metadata !{i32 514, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !355, i32 512, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!358 = metadata !{i32 513, i32 0, metadata !357, null}
!359 = metadata !{i32 515, i32 0, metadata !357, null}
!360 = metadata !{i32 516, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !357, i32 515, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!362 = metadata !{i32 517, i32 0, metadata !361, null}
!363 = metadata !{i32 524, i32 0, metadata !206, null}
!364 = metadata !{i32 526, i32 0, metadata !206, null}
!365 = metadata !{i32 219, i32 0, metadata !168, null}
!366 = metadata !{i32 220, i32 0, metadata !168, null}
!367 = metadata !{i32 221, i32 0, metadata !168, null}
!368 = metadata !{i32 231, i32 0, metadata !168, null}
!369 = metadata !{i32 232, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !168, i32 231, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!371 = metadata !{i32 234, i32 0, metadata !370, null}
!372 = metadata !{i32 236, i32 0, metadata !168, null}
!373 = metadata !{i32 237, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !168, i32 236, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!375 = metadata !{i32 239, i32 0, metadata !374, null}
!376 = metadata !{i32 241, i32 0, metadata !168, null}
!377 = metadata !{i32 242, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !168, i32 241, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!379 = metadata !{i32 244, i32 0, metadata !378, null}
!380 = metadata !{i32 251, i32 0, metadata !168, null}
!381 = metadata !{i32 252, i32 0, metadata !168, null}
!382 = metadata !{i32 253, i32 0, metadata !168, null}
!383 = metadata !{i32 254, i32 0, metadata !168, null}
!384 = metadata !{i32 255, i32 0, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !168, i32 254, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!386 = metadata !{i32 259, i32 0, metadata !385, null}
!387 = metadata !{i32 260, i32 0, metadata !385, null}
!388 = metadata !{i32 262, i32 0, metadata !168, null}
!389 = metadata !{i32 263, i32 0, metadata !168, null}
!390 = metadata !{i32 264, i32 0, metadata !168, null}
!391 = metadata !{i32 265, i32 0, metadata !168, null}
!392 = metadata !{i32 266, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !168, i32 265, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!394 = metadata !{i32 270, i32 0, metadata !393, null}
!395 = metadata !{i32 271, i32 0, metadata !393, null}
!396 = metadata !{i32 279, i32 0, metadata !168, null}
!397 = metadata !{i32 280, i32 0, metadata !168, null}
!398 = metadata !{i32 281, i32 0, metadata !168, null}
!399 = metadata !{i32 282, i32 0, metadata !168, null}
!400 = metadata !{i32 293, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !402, i32 290, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!402 = metadata !{i32 786443, metadata !1, metadata !403, i32 289, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!403 = metadata !{i32 786443, metadata !1, metadata !168, i32 282, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!404 = metadata !{i32 294, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !401, i32 293, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!406 = metadata !{i32 283, i32 0, metadata !403, null}
!407 = metadata !{i32 284, i32 0, metadata !403, null}
!408 = metadata !{i32 285, i32 0, metadata !403, null}
!409 = metadata !{i32 286, i32 0, metadata !410, null}
!410 = metadata !{i32 786443, metadata !1, metadata !403, i32 285, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!411 = metadata !{i32 287, i32 0, metadata !410, null}
!412 = metadata !{i32 288, i32 0, metadata !410, null}
!413 = metadata !{i32 290, i32 0, metadata !402, null}
!414 = metadata !{i32 291, i32 0, metadata !401, null}
!415 = metadata !{i32 292, i32 0, metadata !401, null}
!416 = metadata !{i32 297, i32 0, metadata !405, null}
!417 = metadata !{i32 298, i32 0, metadata !405, null}
!418 = metadata !{i32 300, i32 0, metadata !402, null}
!419 = metadata !{i32 303, i32 0, metadata !168, null}
!420 = metadata !{i32 311, i32 0, metadata !168, null}
!421 = metadata !{i32 312, i32 0, metadata !168, null}
!422 = metadata !{i32 332, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !424, i32 331, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!424 = metadata !{i32 786443, metadata !1, metadata !425, i32 322, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!425 = metadata !{i32 786443, metadata !1, metadata !426, i32 317, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!426 = metadata !{i32 786443, metadata !1, metadata !168, i32 312, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!427 = metadata !{i32 333, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !423, i32 332, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!429 = metadata !{i32 338, i32 0, metadata !423, null}
!430 = metadata !{i32 326, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !1, metadata !432, i32 325, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!432 = metadata !{i32 786443, metadata !1, metadata !424, i32 323, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!433 = metadata !{i32 314, i32 0, metadata !426, null}
!434 = metadata !{i32 316, i32 0, metadata !435, null}
!435 = metadata !{i32 786443, metadata !1, metadata !426, i32 315, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!436 = metadata !{i32 313, i32 0, metadata !426, null}
!437 = metadata !{i32 315, i32 0, metadata !426, null}
!438 = metadata !{i32 318, i32 0, metadata !425, null}
!439 = metadata !{i32 319, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !425, i32 318, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!441 = metadata !{i32 320, i32 0, metadata !440, null}
!442 = metadata !{i32 321, i32 0, metadata !440, null}
!443 = metadata !{i32 323, i32 0, metadata !424, null}
!444 = metadata !{i32 324, i32 0, metadata !432, null}
!445 = metadata !{i32 325, i32 0, metadata !432, null}
!446 = metadata !{i32 329, i32 0, metadata !431, null}
!447 = metadata !{i32 330, i32 0, metadata !431, null}
!448 = metadata !{i32 331, i32 0, metadata !424, null}
!449 = metadata !{i32 335, i32 0, metadata !428, null}
!450 = metadata !{i32 336, i32 0, metadata !428, null}
!451 = metadata !{i32 337, i32 0, metadata !423, null}
!452 = metadata !{i32 339, i32 0, metadata !423, null}
!453 = metadata !{i32 340, i32 0, metadata !424, null}
!454 = metadata !{i32 344, i32 0, metadata !168, null}
!455 = metadata !{i32 350, i32 0, metadata !168, null}
!456 = metadata !{i32 351, i32 0, metadata !168, null}
!457 = metadata !{i32 352, i32 0, metadata !458, null}
!458 = metadata !{i32 786443, metadata !1, metadata !168, i32 352, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!459 = metadata !{i32 353, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !458, i32 352, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!461 = metadata !{i32 354, i32 0, metadata !460, null}
!462 = metadata !{i32 355, i32 0, metadata !460, null}
!463 = metadata !{i32 362, i32 0, metadata !168, null}
!464 = metadata !{i32 364, i32 0, metadata !168, null}
!465 = metadata !{i32 377, i32 0, metadata !186, null}
!466 = metadata !{i32 378, i32 0, metadata !186, null}
!467 = metadata !{i32 379, i32 0, metadata !186, null}
!468 = metadata !{i32 381, i32 0, metadata !186, null}
!469 = metadata !{i32 390, i32 0, metadata !186, null}
!470 = metadata !{i32 391, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !186, i32 390, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!472 = metadata !{i32 393, i32 0, metadata !471, null}
!473 = metadata !{i32 395, i32 0, metadata !186, null}
!474 = metadata !{i32 401, i32 0, metadata !186, null}
!475 = metadata !{i32 402, i32 0, metadata !186, null}
!476 = metadata !{i32 403, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !1, metadata !186, i32 403, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!478 = metadata !{i32 405, i32 0, metadata !479, null}
!479 = metadata !{i32 786443, metadata !1, metadata !477, i32 403, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!480 = metadata !{i32 404, i32 0, metadata !479, null}
!481 = metadata !{i32 406, i32 0, metadata !479, null}
!482 = metadata !{i32 407, i32 0, metadata !479, null}
!483 = metadata !{i32 408, i32 0, metadata !479, null}
!484 = metadata !{i32 409, i32 0, metadata !479, null}
!485 = metadata !{i32 410, i32 0, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !479, i32 409, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!487 = metadata !{i32 411, i32 0, metadata !486, null}
!488 = metadata !{i32 412, i32 0, metadata !486, null}
!489 = metadata !{i32 413, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !486, i32 412, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!491 = metadata !{i32 414, i32 0, metadata !490, null}
!492 = metadata !{i32 416, i32 0, metadata !490, null}
!493 = metadata !{i32 415, i32 0, metadata !490, null}
!494 = metadata !{i32 418, i32 0, metadata !495, null}
!495 = metadata !{i32 786443, metadata !1, metadata !486, i32 416, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!496 = metadata !{i32 417, i32 0, metadata !495, null}
!497 = metadata !{i32 419, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !495, i32 418, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!499 = metadata !{i32 421, i32 0, metadata !498, null}
!500 = metadata !{i32 420, i32 0, metadata !498, null}
!501 = metadata !{i32 424, i32 0, metadata !479, null}
!502 = metadata !{i32 426, i32 0, metadata !186, null}
!503 = metadata !{i32 427, i32 0, metadata !186, null}
!504 = metadata !{i32 428, i32 0, metadata !186, null}
!505 = metadata !{i32 429, i32 0, metadata !186, null}
!506 = metadata !{i32 431, i32 0, metadata !507, null}
!507 = metadata !{i32 786443, metadata !1, metadata !186, i32 429, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!508 = metadata !{i32 430, i32 0, metadata !507, null}
!509 = metadata !{i32 432, i32 0, metadata !507, null}
!510 = metadata !{i32 433, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !507, i32 432, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!512 = metadata !{i32 434, i32 0, metadata !511, null}
!513 = metadata !{i32 435, i32 0, metadata !511, null}
!514 = metadata !{i32 437, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !1, metadata !507, i32 436, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!516 = metadata !{i32 438, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !1, metadata !515, i32 437, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!518 = metadata !{i32 439, i32 0, metadata !517, null}
!519 = metadata !{i32 440, i32 0, metadata !517, null}
!520 = metadata !{i32 444, i32 0, metadata !186, null}
!521 = metadata !{i32 445, i32 0, metadata !186, null}
!522 = metadata !{i32 446, i32 0, metadata !523, null}
!523 = metadata !{i32 786443, metadata !1, metadata !186, i32 445, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!524 = metadata !{i32 447, i32 0, metadata !523, null}
!525 = metadata !{i32 448, i32 0, metadata !523, null}
!526 = metadata !{i32 449, i32 0, metadata !523, null}
!527 = metadata !{i32 457, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !1, metadata !186, i32 457, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!529 = metadata !{i32 459, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !528, i32 457, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_update.c]
!531 = metadata !{i32 458, i32 0, metadata !530, null}
!532 = metadata !{i32 460, i32 0, metadata !530, null}
!533 = metadata !{i32 461, i32 0, metadata !530, null}
!534 = metadata !{i32 463, i32 0, metadata !186, null}
!535 = metadata !{i32 469, i32 0, metadata !186, null}
!536 = metadata !{i32 471, i32 0, metadata !186, null}
