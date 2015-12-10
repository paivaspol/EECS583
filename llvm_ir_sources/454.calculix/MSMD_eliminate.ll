; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c'
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
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in MSMD_eliminateStage(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [26 x i8] c"\0A after loading reach set\00", align 1
@.str2 = private unnamed_addr constant [24 x i8] c"\0A reach set at stage %d\00", align 1
@.str3 = private unnamed_addr constant [24 x i8] c"\0A\0A after initial update\00", align 1
@.str4 = private unnamed_addr constant [39 x i8] c"\0A\0A ##### stage %d, elimination step %d\00", align 1
@.str5 = private unnamed_addr constant [31 x i8] c"\0A calling MSMD_cleanReachSet()\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"\0A reach set\00", align 1
@.str7 = private unnamed_addr constant [35 x i8] c"\0A return from MSMD_cleanReachSet()\00", align 1
@.str8 = private unnamed_addr constant [55 x i8] c"\0A fatal error in MSMD_eliminateStage()\0A reach[%d] = %d\00", align 1
@.str9 = private unnamed_addr constant [41 x i8] c"\0A\0A after cleaning reach set, nreach = %d\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"\0A reach :\00", align 1
@.str11 = private unnamed_addr constant [22 x i8] c"\0A\0A return from update\00", align 1
@.str12 = private unnamed_addr constant [26 x i8] c"\0A stage %d over, %d steps\00", align 1
@.str13 = private unnamed_addr constant [51 x i8] c"\0A fatal error in MSMD_eliminate(%p,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [10 x i8] c"\0A step %d\00", align 1
@.str15 = private unnamed_addr constant [46 x i8] c"\0A    eliminating vertex %d, weight %d, deg %d\00", align 1
@.str16 = private unnamed_addr constant [57 x i8] c"\0A fatal error in MSMD_eliminateVtx(%p,%p,%p)\0A bad input\0A\00", align 1
@.str17 = private unnamed_addr constant [22 x i8] c"\0A vertex %d is a leaf\00", align 1
@.str18 = private unnamed_addr constant [26 x i8] c"\0A vertex %d is not a leaf\00", align 1
@.str19 = private unnamed_addr constant [25 x i8] c"\0A  vertex %d, subtrees :\00", align 1
@.str20 = private unnamed_addr constant [31 x i8] c"\0A    subtree %d, ip(%p)<%d,%p>\00", align 1
@.str21 = private unnamed_addr constant [29 x i8] c"\0A    bnd of adj subtree %d :\00", align 1
@.str22 = private unnamed_addr constant [40 x i8] c"\0A   v->subtrees = %p, msmd->freeIP = %p\00", align 1
@.str23 = private unnamed_addr constant [15 x i8] c"\0A    bnd(%d) :\00", align 1
@.str24 = private unnamed_addr constant [13 x i8] c"\0A %d's bnd :\00", align 1
@.str25 = private unnamed_addr constant [23 x i8] c"\0A   adjacent vertex %d\00", align 1
@.str26 = private unnamed_addr constant [32 x i8] c"\0A   need to get more IP objects\00", align 1
@.str27 = private unnamed_addr constant [80 x i8] c"\0A fatal error in MSMD_eliminateVtx%p,%p,%p)\0A unable to allocate more IP objects\00", align 1
@.str28 = private unnamed_addr constant [20 x i8] c"\0A   old baseIP = %p\00", align 1
@.str29 = private unnamed_addr constant [20 x i8] c"\0A   new baseIP = %p\00", align 1
@.str30 = private unnamed_addr constant [12 x i8] c"\0A   all set\00", align 1
@.str31 = private unnamed_addr constant [18 x i8] c"\0A %d's subtrees :\00", align 1
@.str32 = private unnamed_addr constant [21 x i8] c"\0A    status[%d] = %c\00", align 1
@.str33 = private unnamed_addr constant [19 x i8] c", remove from heap\00", align 1
@.str34 = private unnamed_addr constant [32 x i8] c", add to reach set, nreach = %d\00", align 1
@.str35 = private unnamed_addr constant [59 x i8] c"\0A error in MSMD_eliminateVtx(%p,%p,%p)\0A status[%d] = '%c'\0A\00", align 1
@.str36 = private unnamed_addr constant [18 x i8] c"\0A msmd->nvtx = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @MSMD_eliminateStage(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #0 {
entry:
  %ierr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._MSMD* %msmd}, i64 0, metadata !156), !dbg !210
  call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %info}, i64 0, metadata !157), !dbg !211
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !158), !dbg !212
  %cmp = icmp eq %struct._MSMD* %msmd, null, !dbg !213
  %cmp1 = icmp eq %struct._MSMDinfo* %info, null, !dbg !213
  %or.cond = or i1 %cmp, %cmp1, !dbg !213
  br i1 %or.cond, label %if.then, label %if.end, !dbg !213

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !214, !tbaa !216
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDinfo* %info) #6, !dbg !214
  call void @exit(i32 -1) #7, !dbg !219
  unreachable, !dbg !219

if.end:                                           ; preds = %entry
  %istage = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 8, !dbg !220
  %1 = load i32* %istage, align 4, !dbg !220, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !164), !dbg !220
  %reachIV2 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7, !dbg !222
  call void @llvm.dbg.value(metadata !{%struct._IV* %reachIV2}, i64 0, metadata !167), !dbg !222
  call void @IV_setSize(%struct._IV* %reachIV2, i32 0) #6, !dbg !223
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !161), !dbg !224
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !224
  call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %3}, i64 0, metadata !169), !dbg !224
  %nvtx = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0, !dbg !224
  %2 = load i32* %nvtx, align 4, !dbg !224, !tbaa !221
  %cmp3273 = icmp sgt i32 %2, 0, !dbg !224
  br i1 %cmp3273, label %for.body.lr.ph, label %for.end, !dbg !224

for.body.lr.ph:                                   ; preds = %if.end
  %3 = load %struct._MSMDvtx** %vertices, align 8, !dbg !224, !tbaa !216
  br label %for.body, !dbg !224

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %v.0275 = phi %struct._MSMDvtx* [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %iv.0274 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %status = getelementptr inbounds %struct._MSMDvtx* %v.0275, i64 0, i32 2, !dbg !226
  %4 = load i8* %status, align 1, !dbg !226, !tbaa !217
  %cmp4 = icmp eq i8 %4, 73, !dbg !226
  br i1 %cmp4, label %for.inc, label %if.then6, !dbg !226

if.then6:                                         ; preds = %for.body
  %stage7 = getelementptr inbounds %struct._MSMDvtx* %v.0275, i64 0, i32 3, !dbg !228
  %5 = load i32* %stage7, align 4, !dbg !228, !tbaa !221
  %cmp8 = icmp eq i32 %5, %1, !dbg !228
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !228

if.then10:                                        ; preds = %if.then6
  %id = getelementptr inbounds %struct._MSMDvtx* %v.0275, i64 0, i32 0, !dbg !230
  %6 = load i32* %id, align 4, !dbg !230, !tbaa !221
  call void @IV_push(%struct._IV* %reachIV2, i32 %6) #6, !dbg !230
  store i8 82, i8* %status, align 1, !dbg !232, !tbaa !217
  br label %for.inc, !dbg !233

if.else:                                          ; preds = %if.then6
  %cmp13 = icmp sgt i32 %5, %1, !dbg !234
  %cmp17 = icmp slt i32 %5, 0, !dbg !234
  %or.cond265 = or i1 %cmp13, %cmp17, !dbg !234
  br i1 %or.cond265, label %if.then19, label %for.inc, !dbg !234

if.then19:                                        ; preds = %if.else
  store i8 66, i8* %status, align 1, !dbg !235, !tbaa !217
  br label %for.inc, !dbg !237

for.inc:                                          ; preds = %if.else, %for.body, %if.then19, %if.then10
  %inc = add nsw i32 %iv.0274, 1, !dbg !224
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !161), !dbg !224
  %incdec.ptr = getelementptr inbounds %struct._MSMDvtx* %v.0275, i64 1, !dbg !224
  call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %incdec.ptr}, i64 0, metadata !169), !dbg !224
  %7 = load i32* %nvtx, align 4, !dbg !224, !tbaa !221
  %cmp3 = icmp slt i32 %inc, %7, !dbg !224
  br i1 %cmp3, label %for.body, label %for.end, !dbg !224

for.end:                                          ; preds = %for.inc, %if.end
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4, !dbg !238
  %8 = load i32* %msglvl, align 4, !dbg !238, !tbaa !221
  %cmp24 = icmp sgt i32 %8, 3, !dbg !238
  br i1 %cmp24, label %if.then26, label %if.end32, !dbg !238

if.then26:                                        ; preds = %for.end
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !239
  %9 = load %struct._IO_FILE** %msgFile, align 8, !dbg !239, !tbaa !216
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %9), !dbg !239
  %11 = load %struct._IO_FILE** %msgFile, align 8, !dbg !241, !tbaa !216
  %call29 = call i32 @IV_fp80(%struct._IV* %reachIV2, %struct._IO_FILE* %11, i32 80, i32* %ierr) #6, !dbg !241
  %12 = load %struct._IO_FILE** %msgFile, align 8, !dbg !242, !tbaa !216
  %call31 = call i32 @fflush(%struct._IO_FILE* %12) #6, !dbg !242
  br label %if.end32, !dbg !243

if.end32:                                         ; preds = %if.then26, %for.end
  %seed = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 3, !dbg !244
  %13 = load i32* %seed, align 4, !dbg !244, !tbaa !221
  %cmp33 = icmp sgt i32 %13, 0, !dbg !244
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !244

if.then35:                                        ; preds = %if.end32
  call void @IV_shuffle(%struct._IV* %reachIV2, i32 %13) #6, !dbg !245
  br label %if.end37, !dbg !247

if.end37:                                         ; preds = %if.end32, %if.then35
  %14 = load i32* %msglvl, align 4, !dbg !248, !tbaa !221
  %cmp39 = icmp sgt i32 %14, 3, !dbg !248
  br i1 %cmp39, label %if.then41, label %if.end48, !dbg !248

if.then41:                                        ; preds = %if.end37
  %msgFile42 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !249
  %15 = load %struct._IO_FILE** %msgFile42, align 8, !dbg !249, !tbaa !216
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([24 x i8]* @.str2, i64 0, i64 0), i32 %1) #6, !dbg !249
  %16 = load %struct._IO_FILE** %msgFile42, align 8, !dbg !251, !tbaa !216
  %call45 = call i32 @IV_fp80(%struct._IV* %reachIV2, %struct._IO_FILE* %16, i32 80, i32* %ierr) #6, !dbg !251
  %17 = load %struct._IO_FILE** %msgFile42, align 8, !dbg !252, !tbaa !216
  %call47 = call i32 @fflush(%struct._IO_FILE* %17) #6, !dbg !252
  br label %if.end48, !dbg !253

if.end48:                                         ; preds = %if.then41, %if.end37
  call void @MSMD_update(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #6, !dbg !254
  %18 = load i32* %msglvl, align 4, !dbg !255, !tbaa !221
  %cmp50 = icmp sgt i32 %18, 4, !dbg !255
  %msgFile53 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !256
  br i1 %cmp50, label %if.then52, label %if.end57, !dbg !255

if.then52:                                        ; preds = %if.end48
  %19 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !256, !tbaa !216
  %20 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %19), !dbg !256
  %21 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !258, !tbaa !216
  %call56 = call i32 @fflush(%struct._IO_FILE* %21) #6, !dbg !258
  br label %if.end57, !dbg !259

if.end57:                                         ; preds = %if.end48, %if.then52
  call void @IV_setSize(%struct._IV* %reachIV2, i32 0) #6, !dbg !260
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !165), !dbg !261
  br label %while.body, !dbg !262

while.body:                                       ; preds = %if.end57, %if.end159
  %step.0 = phi i32 [ 0, %if.end57 ], [ %inc160, %if.end159 ]
  %22 = load i32* %msglvl, align 4, !dbg !263, !tbaa !221
  %cmp59 = icmp sgt i32 %22, 1, !dbg !263
  br i1 %cmp59, label %if.then61, label %if.end66, !dbg !263

if.then61:                                        ; preds = %while.body
  %23 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !265, !tbaa !216
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([39 x i8]* @.str4, i64 0, i64 0), i32 %1, i32 %step.0) #6, !dbg !265
  %24 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !267, !tbaa !216
  %call65 = call i32 @fflush(%struct._IO_FILE* %24) #6, !dbg !267
  br label %if.end66, !dbg !268

if.end66:                                         ; preds = %if.then61, %while.body
  %call67 = call i32 @MSMD_eliminateStep(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #8, !dbg !269
  call void @llvm.dbg.value(metadata !{i32 %call67}, i64 0, metadata !162), !dbg !269
  %cmp68 = icmp eq i32 %call67, 0, !dbg !270
  %25 = load i32* %msglvl, align 4, !dbg !271, !tbaa !221
  br i1 %cmp68, label %while.end, label %if.end71, !dbg !270

if.end71:                                         ; preds = %if.end66
  %cmp73 = icmp sgt i32 %25, 3, !dbg !272
  br i1 %cmp73, label %if.then75, label %if.end84, !dbg !272

if.then75:                                        ; preds = %if.end71
  %26 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !273, !tbaa !216
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str5, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %26), !dbg !273
  %28 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !275, !tbaa !216
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %28), !dbg !275
  %30 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !276, !tbaa !216
  %call81 = call i32 @IV_fp80(%struct._IV* %reachIV2, %struct._IO_FILE* %30, i32 80, i32* %ierr) #6, !dbg !276
  %31 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !277, !tbaa !216
  %call83 = call i32 @fflush(%struct._IO_FILE* %31) #6, !dbg !277
  br label %if.end84, !dbg !278

if.end84:                                         ; preds = %if.then75, %if.end71
  call void @MSMD_cleanReachSet(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #6, !dbg !279
  %32 = load i32* %msglvl, align 4, !dbg !280, !tbaa !221
  %cmp86 = icmp sgt i32 %32, 3, !dbg !280
  br i1 %cmp86, label %if.then88, label %if.end93, !dbg !280

if.then88:                                        ; preds = %if.end84
  %33 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !281, !tbaa !216
  %34 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str7, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %33), !dbg !281
  %35 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !283, !tbaa !216
  %call92 = call i32 @fflush(%struct._IO_FILE* %35) #6, !dbg !283
  br label %if.end93, !dbg !284

if.end93:                                         ; preds = %if.then88, %if.end84
  call void @MSMD_findInodes(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #6, !dbg !285
  %call94 = call i32 @IV_size(%struct._IV* %reachIV2) #6, !dbg !286
  call void @llvm.dbg.value(metadata !{i32 %call94}, i64 0, metadata !163), !dbg !286
  %call95 = call i32* @IV_entries(%struct._IV* %reachIV2) #6, !dbg !287
  call void @llvm.dbg.value(metadata !{i32* %call95}, i64 0, metadata !166), !dbg !287
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !160), !dbg !288
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !159), !dbg !288
  %cmp97268 = icmp sgt i32 %call94, 0, !dbg !288
  br i1 %cmp97268, label %for.body99, label %for.end136, !dbg !288

for.body99:                                       ; preds = %if.end93, %for.inc134
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc134 ], [ 0, %if.end93 ]
  %ii.0270 = phi i32 [ %inc135, %for.inc134 ], [ 0, %if.end93 ]
  %jj.0269 = phi i32 [ %jj.1, %for.inc134 ], [ 0, %if.end93 ]
  %arrayidx = getelementptr inbounds i32* %call95, i64 %indvars.iv, !dbg !290
  %36 = load i32* %arrayidx, align 4, !dbg !290, !tbaa !221
  %cmp100 = icmp slt i32 %36, 0, !dbg !290
  br i1 %cmp100, label %if.then108, label %lor.lhs.false102, !dbg !290

lor.lhs.false102:                                 ; preds = %for.body99
  %37 = load i32* %nvtx, align 4, !dbg !290, !tbaa !221
  %cmp106 = icmp slt i32 %36, %37, !dbg !290
  br i1 %cmp106, label %if.end112, label %if.then108, !dbg !290

if.then108:                                       ; preds = %lor.lhs.false102, %for.body99
  %38 = load %struct._IO_FILE** @stderr, align 8, !dbg !292, !tbaa !216
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([55 x i8]* @.str8, i64 0, i64 0), i32 %ii.0270, i32 %36) #6, !dbg !292
  call void @exit(i32 -1) #7, !dbg !294
  unreachable, !dbg !294

if.end112:                                        ; preds = %lor.lhs.false102
  %39 = load %struct._MSMDvtx** %vertices, align 8, !dbg !295, !tbaa !216
  %idx.ext = sext i32 %36 to i64, !dbg !295
  %status116 = getelementptr inbounds %struct._MSMDvtx* %39, i64 %idx.ext, i32 2, !dbg !296
  %40 = load i8* %status116, align 1, !dbg !296, !tbaa !217
  %cmp118 = icmp eq i8 %40, 73, !dbg !296
  br i1 %cmp118, label %for.inc134, label %if.else121, !dbg !296

if.else121:                                       ; preds = %if.end112
  %stage122 = getelementptr inbounds %struct._MSMDvtx* %39, i64 %idx.ext, i32 3, !dbg !297
  %41 = load i32* %stage122, align 4, !dbg !297, !tbaa !221
  %cmp123 = icmp eq i32 %41, %1, !dbg !297
  br i1 %cmp123, label %if.else127, label %if.then125, !dbg !297

if.then125:                                       ; preds = %if.else121
  store i8 66, i8* %status116, align 1, !dbg !298, !tbaa !217
  br label %for.inc134, !dbg !300

if.else127:                                       ; preds = %if.else121
  %id128 = getelementptr inbounds %struct._MSMDvtx* %39, i64 %idx.ext, i32 0, !dbg !301
  %42 = load i32* %id128, align 4, !dbg !301, !tbaa !221
  %inc129 = add nsw i32 %jj.0269, 1, !dbg !301
  call void @llvm.dbg.value(metadata !{i32 %inc129}, i64 0, metadata !160), !dbg !301
  %idxprom130 = sext i32 %jj.0269 to i64, !dbg !301
  %arrayidx131 = getelementptr inbounds i32* %call95, i64 %idxprom130, !dbg !301
  store i32 %42, i32* %arrayidx131, align 4, !dbg !301, !tbaa !221
  br label %for.inc134

for.inc134:                                       ; preds = %if.else127, %if.then125, %if.end112
  %jj.1 = phi i32 [ %jj.0269, %if.end112 ], [ %jj.0269, %if.then125 ], [ %inc129, %if.else127 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !288
  %inc135 = add nsw i32 %ii.0270, 1, !dbg !288
  call void @llvm.dbg.value(metadata !{i32 %inc135}, i64 0, metadata !159), !dbg !288
  %43 = trunc i64 %indvars.iv.next to i32, !dbg !288
  %cmp97 = icmp slt i32 %43, %call94, !dbg !288
  br i1 %cmp97, label %for.body99, label %for.end136, !dbg !288

for.end136:                                       ; preds = %for.inc134, %if.end93
  %jj.0.lcssa = phi i32 [ 0, %if.end93 ], [ %jj.1, %for.inc134 ]
  call void @IV_setSize(%struct._IV* %reachIV2, i32 %jj.0.lcssa) #6, !dbg !303
  %44 = load i32* %msglvl, align 4, !dbg !304, !tbaa !221
  %cmp138 = icmp sgt i32 %44, 2, !dbg !304
  br i1 %cmp138, label %if.then140, label %if.end150, !dbg !304

if.then140:                                       ; preds = %for.end136
  %45 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !305, !tbaa !216
  %call142 = call i32 @IV_size(%struct._IV* %reachIV2) #6, !dbg !307
  %call143 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([41 x i8]* @.str9, i64 0, i64 0), i32 %call142) #6, !dbg !307
  %46 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !308, !tbaa !216
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %46), !dbg !308
  %48 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !309, !tbaa !216
  %call147 = call i32 @IV_fp80(%struct._IV* %reachIV2, %struct._IO_FILE* %48, i32 8, i32* %ierr) #6, !dbg !309
  %49 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !310, !tbaa !216
  %call149 = call i32 @fflush(%struct._IO_FILE* %49) #6, !dbg !310
  br label %if.end150, !dbg !311

if.end150:                                        ; preds = %if.then140, %for.end136
  call void @MSMD_update(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #6, !dbg !312
  %50 = load i32* %msglvl, align 4, !dbg !313, !tbaa !221
  %cmp152 = icmp sgt i32 %50, 2, !dbg !313
  br i1 %cmp152, label %if.then154, label %if.end159, !dbg !313

if.then154:                                       ; preds = %if.end150
  %51 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !314, !tbaa !216
  %52 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str11, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %51), !dbg !314
  %53 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !316, !tbaa !216
  %call158 = call i32 @fflush(%struct._IO_FILE* %53) #6, !dbg !316
  br label %if.end159, !dbg !317

if.end159:                                        ; preds = %if.then154, %if.end150
  call void @IV_setSize(%struct._IV* %reachIV2, i32 0) #6, !dbg !318
  %inc160 = add nsw i32 %step.0, 1, !dbg !319
  call void @llvm.dbg.value(metadata !{i32 %inc160}, i64 0, metadata !165), !dbg !319
  br label %while.body, !dbg !320

while.end:                                        ; preds = %if.end66
  %cmp162 = icmp sgt i32 %25, 2, !dbg !271
  br i1 %cmp162, label %if.then164, label %if.end169, !dbg !271

if.then164:                                       ; preds = %while.end
  %54 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !321, !tbaa !216
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([26 x i8]* @.str12, i64 0, i64 0), i32 %1, i32 %step.0) #6, !dbg !321
  %55 = load %struct._IO_FILE** %msgFile53, align 8, !dbg !323, !tbaa !216
  %call168 = call i32 @fflush(%struct._IO_FILE* %55) #6, !dbg !323
  br label %if.end169, !dbg !324

if.end169:                                        ; preds = %if.then164, %while.end
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10, !dbg !325
  %56 = load %struct._MSMDstageInfo** %stageInfo, align 8, !dbg !325, !tbaa !216
  %nstep = getelementptr inbounds %struct._MSMDstageInfo* %56, i64 0, i32 0, !dbg !325
  store i32 %step.0, i32* %nstep, align 4, !dbg !325, !tbaa !221
  ret void, !dbg !326
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #4

; Function Attrs: optsize
declare void @IV_push(%struct._IV*, i32) #4

; Function Attrs: optsize
declare i32 @IV_fp80(%struct._IV*, %struct._IO_FILE*, i32, i32*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @IV_shuffle(%struct._IV*, i32) #4

; Function Attrs: optsize
declare void @MSMD_update(%struct._MSMD*, %struct._MSMDinfo*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @MSMD_eliminateStep(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #0 {
entry:
  %deg = alloca i32, align 4
  %mindeg = alloca i32, align 4
  %vid = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._MSMD* %msmd}, i64 0, metadata !174), !dbg !327
  call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %info}, i64 0, metadata !175), !dbg !328
  call void @llvm.dbg.declare(metadata !{i32* %deg}, metadata !176), !dbg !329
  call void @llvm.dbg.declare(metadata !{i32* %mindeg}, metadata !178), !dbg !329
  call void @llvm.dbg.declare(metadata !{i32* %vid}, metadata !182), !dbg !329
  %cmp = icmp eq %struct._MSMD* %msmd, null, !dbg !330
  %cmp1 = icmp eq %struct._MSMDinfo* %info, null, !dbg !330
  %or.cond = or i1 %cmp, %cmp1, !dbg !330
  br i1 %or.cond, label %if.then, label %if.end, !dbg !330

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !331, !tbaa !216
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str13, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDinfo* %info) #6, !dbg !331
  call void @exit(i32 -1) #7, !dbg !333
  unreachable, !dbg !333

if.end:                                           ; preds = %entry
  %heap = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1, !dbg !334
  %1 = load %struct._IIheap** %heap, align 8, !dbg !334, !tbaa !216
  %size = getelementptr inbounds %struct._IIheap* %1, i64 0, i32 0, !dbg !334
  %2 = load i32* %size, align 4, !dbg !334, !tbaa !221
  %cmp2 = icmp eq i32 %2, 0, !dbg !334
  br i1 %cmp2, label %return, label %if.end4, !dbg !334

if.end4:                                          ; preds = %if.end
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4, !dbg !335
  %3 = load i32* %msglvl, align 4, !dbg !335, !tbaa !221
  %cmp5 = icmp sgt i32 %3, 2, !dbg !335
  br i1 %cmp5, label %if.then6, label %if.end4.if.end10_crit_edge, !dbg !335

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  %stageInfo11.pre = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10, !dbg !336
  br label %if.end10, !dbg !335

if.then6:                                         ; preds = %if.end4
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !337
  %4 = load %struct._IO_FILE** %msgFile, align 8, !dbg !337, !tbaa !216
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10, !dbg !337
  %5 = load %struct._MSMDstageInfo** %stageInfo, align 8, !dbg !337, !tbaa !216
  %nstep = getelementptr inbounds %struct._MSMDstageInfo* %5, i64 0, i32 0, !dbg !337
  %6 = load i32* %nstep, align 4, !dbg !337, !tbaa !221
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i32 %6) #6, !dbg !337
  %7 = load %struct._IO_FILE** %msgFile, align 8, !dbg !339, !tbaa !216
  %call9 = call i32 @fflush(%struct._IO_FILE* %7) #6, !dbg !339
  %.pre = load %struct._IIheap** %heap, align 8, !dbg !340, !tbaa !216
  br label %if.end10, !dbg !341

if.end10:                                         ; preds = %if.end4.if.end10_crit_edge, %if.then6
  %stageInfo11.pre-phi = phi %struct._MSMDstageInfo** [ %stageInfo11.pre, %if.end4.if.end10_crit_edge ], [ %stageInfo, %if.then6 ], !dbg !336
  %8 = phi %struct._IIheap* [ %1, %if.end4.if.end10_crit_edge ], [ %.pre, %if.then6 ]
  %9 = load %struct._MSMDstageInfo** %stageInfo11.pre-phi, align 8, !dbg !336, !tbaa !216
  %nstep12 = getelementptr inbounds %struct._MSMDstageInfo* %9, i64 0, i32 0, !dbg !336
  %10 = load i32* %nstep12, align 4, !dbg !336, !tbaa !221
  %inc = add nsw i32 %10, 1, !dbg !336
  store i32 %inc, i32* %nstep12, align 4, !dbg !336, !tbaa !221
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !183), !dbg !342
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !180), !dbg !342
  call void @IIheap_root(%struct._IIheap* %8, i32* %vid, i32* %mindeg) #6, !dbg !340
  %stepType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 2, !dbg !343
  %11 = load double* %stepType, align 8, !dbg !343, !tbaa !344
  %cmp14 = fcmp ugt double %11, 1.000000e+00, !dbg !343
  call void @llvm.dbg.value(metadata !{i32* %mindeg}, i64 0, metadata !178), !dbg !345
  %12 = load i32* %mindeg, align 4, !dbg !345, !tbaa !221
  br i1 %cmp14, label %if.else, label %do.body.preheader, !dbg !343

if.else:                                          ; preds = %if.end10
  %conv = sitofp i32 %12 to double, !dbg !345
  %mul = fmul double %11, %conv, !dbg !345
  %conv17 = fptosi double %mul to i32, !dbg !345
  call void @llvm.dbg.value(metadata !{i32 %conv17}, i64 0, metadata !177), !dbg !345
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.else, %if.end10
  %maxdeg.0.ph = phi i32 [ %12, %if.end10 ], [ %conv17, %if.else ]
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !347
  %msgFile28 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !349
  %.pre124 = load %struct._IIheap** %heap, align 8, !dbg !351, !tbaa !216
  br label %do.body, !dbg !351

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %13 = phi %struct._IIheap* [ %34, %do.cond ], [ %.pre124, %do.body.preheader ]
  %nelim.0 = phi i32 [ %inc37, %do.cond ], [ 0, %do.body.preheader ]
  call void @IIheap_root(%struct._IIheap* %13, i32* %vid, i32* %deg) #6, !dbg !351
  call void @llvm.dbg.value(metadata !{i32* %deg}, i64 0, metadata !176), !dbg !352
  %14 = load i32* %deg, align 4, !dbg !352, !tbaa !221
  %cmp20 = icmp sgt i32 %14, %maxdeg.0.ph, !dbg !352
  br i1 %cmp20, label %return, label %if.end23, !dbg !352

if.end23:                                         ; preds = %do.body
  %15 = load %struct._MSMDvtx** %vertices, align 8, !dbg !347, !tbaa !216
  call void @llvm.dbg.value(metadata !{i32* %vid}, i64 0, metadata !182), !dbg !347
  %16 = load i32* %vid, align 4, !dbg !347, !tbaa !221
  %idx.ext = sext i32 %16 to i64, !dbg !347
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %15, i64 %idx.ext, !dbg !347
  call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %add.ptr}, i64 0, metadata !184), !dbg !347
  %17 = load i32* %msglvl, align 4, !dbg !353, !tbaa !221
  %cmp25 = icmp sgt i32 %17, 1, !dbg !353
  br i1 %cmp25, label %if.then27, label %if.end23.if.end32_crit_edge, !dbg !353

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  %wght35.pre = getelementptr inbounds %struct._MSMDvtx* %15, i64 %idx.ext, i32 4, !dbg !354
  br label %if.end32, !dbg !353

if.then27:                                        ; preds = %if.end23
  %18 = load %struct._IO_FILE** %msgFile28, align 8, !dbg !349, !tbaa !216
  %wght = getelementptr inbounds %struct._MSMDvtx* %15, i64 %idx.ext, i32 4, !dbg !349
  %19 = load i32* %wght, align 4, !dbg !349, !tbaa !221
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([46 x i8]* @.str15, i64 0, i64 0), i32 %16, i32 %19, i32 %14) #6, !dbg !349
  %20 = load %struct._IO_FILE** %msgFile28, align 8, !dbg !355, !tbaa !216
  %call31 = call i32 @fflush(%struct._IO_FILE* %20) #6, !dbg !355
  br label %if.end32, !dbg !356

if.end32:                                         ; preds = %if.end23.if.end32_crit_edge, %if.then27
  %wght35.pre-phi = phi i32* [ %wght35.pre, %if.end23.if.end32_crit_edge ], [ %wght, %if.then27 ], !dbg !354
  %21 = load %struct._MSMDstageInfo** %stageInfo11.pre-phi, align 8, !dbg !357, !tbaa !216
  %nfront = getelementptr inbounds %struct._MSMDstageInfo* %21, i64 0, i32 1, !dbg !357
  %22 = load i32* %nfront, align 4, !dbg !357, !tbaa !221
  %inc34 = add nsw i32 %22, 1, !dbg !357
  store i32 %inc34, i32* %nfront, align 4, !dbg !357, !tbaa !221
  %23 = load i32* %wght35.pre-phi, align 4, !dbg !354, !tbaa !221
  %welim = getelementptr inbounds %struct._MSMDstageInfo* %21, i64 0, i32 2, !dbg !354
  %24 = load i32* %welim, align 4, !dbg !354, !tbaa !221
  %add = add nsw i32 %24, %23, !dbg !354
  store i32 %add, i32* %welim, align 4, !dbg !354, !tbaa !221
  %inc37 = add nsw i32 %nelim.0, 1, !dbg !358
  call void @llvm.dbg.value(metadata !{i32 %inc37}, i64 0, metadata !180), !dbg !358
  %25 = load %struct._IIheap** %heap, align 8, !dbg !359, !tbaa !216
  call void @llvm.dbg.value(metadata !{i32* %vid}, i64 0, metadata !182), !dbg !359
  %26 = load i32* %vid, align 4, !dbg !359, !tbaa !221
  call void @IIheap_remove(%struct._IIheap* %25, i32 %26) #6, !dbg !359
  call void @MSMD_eliminateVtx(%struct._MSMD* %msmd, %struct._MSMDvtx* %add.ptr, %struct._MSMDinfo* %info) #8, !dbg !360
  %27 = load i32* %wght35.pre-phi, align 4, !dbg !361, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !179), !dbg !361
  %bndwght = getelementptr inbounds %struct._MSMDvtx* %15, i64 %idx.ext, i32 7, !dbg !362
  %28 = load i32* %bndwght, align 4, !dbg !362, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !181), !dbg !362
  %add42 = add nsw i32 %28, %27, !dbg !363
  %29 = load %struct._MSMDstageInfo** %stageInfo11.pre-phi, align 8, !dbg !363, !tbaa !216
  %nfind = getelementptr inbounds %struct._MSMDstageInfo* %29, i64 0, i32 3, !dbg !363
  %30 = load i32* %nfind, align 4, !dbg !363, !tbaa !221
  %add44 = add nsw i32 %add42, %30, !dbg !363
  store i32 %add44, i32* %nfind, align 4, !dbg !363, !tbaa !221
  %mul45 = mul nsw i32 %28, %27, !dbg !364
  %add46 = add nsw i32 %27, 1, !dbg !364
  %mul47 = mul nsw i32 %add46, %27, !dbg !364
  %div = sdiv i32 %mul47, 2, !dbg !364
  %add48 = add nsw i32 %div, %mul45, !dbg !364
  %nzf = getelementptr inbounds %struct._MSMDstageInfo* %29, i64 0, i32 4, !dbg !364
  %31 = load i32* %nzf, align 4, !dbg !364, !tbaa !221
  %add50 = add nsw i32 %add48, %31, !dbg !364
  store i32 %add50, i32* %nzf, align 4, !dbg !364, !tbaa !221
  %conv51 = sitofp i32 %27 to double, !dbg !365
  %conv52 = sitofp i32 %28 to double, !dbg !365
  %mul53 = fmul double %conv51, %conv52, !dbg !365
  %add56 = fadd double %conv51, %conv52, !dbg !365
  %add57 = fadd double %add56, 1.000000e+00, !dbg !365
  %mul58 = fmul double %mul53, %add57, !dbg !365
  %conv61 = sitofp i32 %add46 to double, !dbg !365
  %mul62 = fmul double %conv51, %conv61, !dbg !365
  %mul63 = shl nsw i32 %27, 1, !dbg !365
  %add64123 = or i32 %mul63, 1, !dbg !365
  %conv65 = sitofp i32 %add64123 to double, !dbg !365
  %mul66 = fmul double %mul62, %conv65, !dbg !365
  %div67 = fdiv double %mul66, 6.000000e+00, !dbg !365
  %add68 = fadd double %mul58, %div67, !dbg !365
  %ops = getelementptr inbounds %struct._MSMDstageInfo* %29, i64 0, i32 5, !dbg !365
  %32 = load double* %ops, align 8, !dbg !365, !tbaa !344
  %add70 = fadd double %add68, %32, !dbg !365
  store double %add70, double* %ops, align 8, !dbg !365, !tbaa !344
  %33 = load double* %stepType, align 8, !dbg !366, !tbaa !344
  %cmp72 = fcmp olt double %33, 1.000000e+00, !dbg !366
  br i1 %cmp72, label %return, label %do.cond, !dbg !366

do.cond:                                          ; preds = %if.end32
  %34 = load %struct._IIheap** %heap, align 8, !dbg !367, !tbaa !216
  %size77 = getelementptr inbounds %struct._IIheap* %34, i64 0, i32 0, !dbg !367
  %35 = load i32* %size77, align 4, !dbg !367, !tbaa !221
  %cmp78 = icmp sgt i32 %35, 0, !dbg !367
  br i1 %cmp78, label %do.body, label %return, !dbg !367

return:                                           ; preds = %do.cond, %do.body, %if.end32, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %inc37, %do.cond ], [ %nelim.0, %do.body ], [ %inc37, %if.end32 ]
  ret i32 %retval.0, !dbg !368
}

; Function Attrs: optsize
declare void @MSMD_cleanReachSet(%struct._MSMD*, %struct._MSMDinfo*) #4

; Function Attrs: optsize
declare void @MSMD_findInodes(%struct._MSMD*, %struct._MSMDinfo*) #4

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #4

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #4

; Function Attrs: optsize
declare void @IIheap_root(%struct._IIheap*, i32*, i32*) #4

; Function Attrs: optsize
declare void @IIheap_remove(%struct._IIheap*, i32) #4

; Function Attrs: nounwind optsize uwtable
define void @MSMD_eliminateVtx(%struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #0 {
entry:
  %ierr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._MSMD* %msmd}, i64 0, metadata !189), !dbg !369
  call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %v}, i64 0, metadata !190), !dbg !370
  call void @llvm.dbg.value(metadata !{%struct._MSMDinfo* %info}, i64 0, metadata !191), !dbg !371
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !193), !dbg !372
  %cmp = icmp eq %struct._MSMD* %msmd, null, !dbg !373
  %cmp1 = icmp eq %struct._MSMDvtx* %v, null, !dbg !373
  %or.cond = or i1 %cmp, %cmp1, !dbg !373
  %cmp3 = icmp eq %struct._MSMDinfo* %info, null, !dbg !373
  %or.cond609 = or i1 %or.cond, %cmp3, !dbg !373
  br i1 %or.cond609, label %if.then, label %if.end, !dbg !373

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !374, !tbaa !216
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str16, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #6, !dbg !374
  call void @exit(i32 -1) #7, !dbg !376
  unreachable, !dbg !376

if.end:                                           ; preds = %entry
  %ivtmpIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 6, !dbg !377
  %call4 = call i32* @IV_entries(%struct._IV* %ivtmpIV) #6, !dbg !377
  call void @llvm.dbg.value(metadata !{i32* %call4}, i64 0, metadata !201), !dbg !377
  %reachIV5 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7, !dbg !378
  call void @llvm.dbg.value(metadata !{%struct._IV* %reachIV5}, i64 0, metadata !207), !dbg !378
  %mark = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 1, !dbg !379
  store i8 88, i8* %mark, align 1, !dbg !379, !tbaa !217
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 9, !dbg !380
  %1 = load %struct._IP** %subtrees, align 8, !dbg !380, !tbaa !216
  %cmp6 = icmp eq %struct._IP* %1, null, !dbg !380
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4, !dbg !381
  %2 = load i32* %msglvl, align 4, !dbg !381, !tbaa !221
  %cmp8 = icmp sgt i32 %2, 3, !dbg !381
  br i1 %cmp6, label %if.then7, label %if.else32, !dbg !380

if.then7:                                         ; preds = %if.end
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !381

if.then9:                                         ; preds = %if.then7
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !383
  %3 = load %struct._IO_FILE** %msgFile, align 8, !dbg !383, !tbaa !216
  %id = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0, !dbg !383
  %4 = load i32* %id, align 4, !dbg !383, !tbaa !221
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([22 x i8]* @.str17, i64 0, i64 0), i32 %4) #6, !dbg !383
  %5 = load %struct._IO_FILE** %msgFile, align 8, !dbg !385, !tbaa !216
  %call12 = call i32 @fflush(%struct._IO_FILE* %5) #6, !dbg !385
  br label %if.end13, !dbg !386

if.end13:                                         ; preds = %if.then9, %if.then7
  %status = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 2, !dbg !387
  store i8 76, i8* %status, align 1, !dbg !387, !tbaa !217
  %nadj14 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5, !dbg !388
  %6 = load i32* %nadj14, align 4, !dbg !388, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !197), !dbg !388
  %adj15 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6, !dbg !389
  %7 = load i32** %adj15, align 8, !dbg !389, !tbaa !216
  call void @llvm.dbg.value(metadata !{i32* %7}, i64 0, metadata !203), !dbg !389
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !192), !dbg !390
  %sub = add nsw i32 %6, -1, !dbg !390
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !194), !dbg !390
  %cmp16629644 = icmp slt i32 %6, 1, !dbg !391
  br i1 %cmp16629644, label %while.end, label %while.body.lr.ph.lr.ph, !dbg !391

while.body.lr.ph.lr.ph:                           ; preds = %if.end13
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !392
  %8 = sext i32 %6 to i64
  br label %while.body.lr.ph, !dbg !391

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.then22
  %indvars.iv660.in = phi i64 [ %8, %while.body.lr.ph.lr.ph ], [ %indvars.iv660, %if.then22 ]
  %i.0.ph646 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %i.0630, %if.then22 ]
  %j.0.ph645 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %dec, %if.then22 ]
  %indvars.iv660 = add i64 %indvars.iv660.in, -1, !dbg !391
  %9 = sext i32 %i.0.ph646 to i64
  br label %while.body, !dbg !391

while.body:                                       ; preds = %if.else.while.body_crit_edge, %while.body.lr.ph
  %indvars.iv657 = phi i64 [ %indvars.iv.next658, %if.else.while.body_crit_edge ], [ %9, %while.body.lr.ph ]
  %i.0630 = phi i32 [ %inc, %if.else.while.body_crit_edge ], [ %i.0.ph646, %while.body.lr.ph ]
  %arrayidx = getelementptr inbounds i32* %7, i64 %indvars.iv657, !dbg !394
  %10 = load i32* %arrayidx, align 4, !dbg !394, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !199), !dbg !394
  %11 = load %struct._MSMDvtx** %vertices, align 8, !dbg !392, !tbaa !216
  %idx.ext = sext i32 %10 to i64, !dbg !392
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext, !dbg !392
  call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %add.ptr}, i64 0, metadata !209), !dbg !392
  %cmp17 = icmp eq %struct._MSMDvtx* %add.ptr, %v, !dbg !395
  br i1 %cmp17, label %if.then22, label %lor.lhs.false18, !dbg !395

lor.lhs.false18:                                  ; preds = %while.body
  %status19 = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext, i32 2, !dbg !395
  %12 = load i8* %status19, align 1, !dbg !395, !tbaa !217
  %cmp20 = icmp eq i8 %12, 73, !dbg !395
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !395

if.then22:                                        ; preds = %lor.lhs.false18, %while.body
  %arrayidx24 = getelementptr inbounds i32* %7, i64 %indvars.iv660, !dbg !396
  %13 = load i32* %arrayidx24, align 4, !dbg !396, !tbaa !221
  store i32 %13, i32* %arrayidx, align 4, !dbg !396, !tbaa !221
  store i32 %10, i32* %arrayidx24, align 4, !dbg !398, !tbaa !221
  %dec = add nsw i32 %j.0.ph645, -1, !dbg !399
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !194), !dbg !399
  %cmp16629 = icmp sgt i32 %i.0630, %dec, !dbg !391
  br i1 %cmp16629, label %while.end, label %while.body.lr.ph, !dbg !391

if.else:                                          ; preds = %lor.lhs.false18
  %mark29 = getelementptr inbounds %struct._MSMDvtx* %11, i64 %idx.ext, i32 1, !dbg !400
  store i8 88, i8* %mark29, align 1, !dbg !400, !tbaa !217
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !192), !dbg !402
  %14 = trunc i64 %indvars.iv657 to i32, !dbg !391
  %15 = trunc i64 %indvars.iv660 to i32, !dbg !391
  %cmp16 = icmp slt i32 %14, %15, !dbg !391
  br i1 %cmp16, label %if.else.while.body_crit_edge, label %while.end, !dbg !391

if.else.while.body_crit_edge:                     ; preds = %if.else
  %inc = add nsw i32 %i.0630, 1, !dbg !402
  %indvars.iv.next658 = add i64 %indvars.iv657, 1, !dbg !391
  br label %while.body, !dbg !391

while.end:                                        ; preds = %if.end13, %if.then22, %if.else
  %j.0.ph643 = phi i32 [ %j.0.ph645, %if.else ], [ %sub, %if.end13 ], [ %dec, %if.then22 ]
  %add = add nsw i32 %j.0.ph643, 1, !dbg !403
  store i32 %add, i32* %nadj14, align 4, !dbg !403, !tbaa !221
  br label %if.end188, !dbg !404

if.else32:                                        ; preds = %if.end
  br i1 %cmp8, label %if.end48, label %if.end48.thread, !dbg !405

if.end48.thread:                                  ; preds = %if.else32
  %status49671 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 2, !dbg !407
  store i8 69, i8* %status49671, align 1, !dbg !407, !tbaa !217
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !195), !dbg !408
  call void @llvm.dbg.value(metadata !{%struct._IP* %23}, i64 0, metadata !204), !dbg !409
  br label %while.body54.lr.ph, !dbg !409

if.end48:                                         ; preds = %if.else32
  %msgFile37 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !410
  %16 = load %struct._IO_FILE** %msgFile37, align 8, !dbg !410, !tbaa !216
  %id38 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0, !dbg !410
  %17 = load i32* %id38, align 4, !dbg !410, !tbaa !221
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([26 x i8]* @.str18, i64 0, i64 0), i32 %17) #6, !dbg !410
  %18 = load %struct._IO_FILE** %msgFile37, align 8, !dbg !412, !tbaa !216
  %19 = load i32* %id38, align 4, !dbg !412, !tbaa !221
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([25 x i8]* @.str19, i64 0, i64 0), i32 %19) #6, !dbg !412
  %20 = load %struct._IO_FILE** %msgFile37, align 8, !dbg !413, !tbaa !216
  %21 = load %struct._IP** %subtrees, align 8, !dbg !413, !tbaa !216
  %call45 = call i32 @IP_fp80(%struct._IO_FILE* %20, %struct._IP* %21, i32 20) #6, !dbg !413
  %22 = load %struct._IO_FILE** %msgFile37, align 8, !dbg !414, !tbaa !216
  %call47 = call i32 @fflush(%struct._IO_FILE* %22) #6, !dbg !414
  %.pre = load %struct._IP** %subtrees, align 8, !dbg !409, !tbaa !216
  %status49 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 2, !dbg !407
  store i8 69, i8* %status49, align 1, !dbg !407, !tbaa !217
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !195), !dbg !408
  call void @llvm.dbg.value(metadata !{%struct._IP* %23}, i64 0, metadata !204), !dbg !409
  %cmp52639 = icmp eq %struct._IP* %.pre, null, !dbg !409
  br i1 %cmp52639, label %while.end135, label %while.body54.lr.ph, !dbg !409

while.body54.lr.ph:                               ; preds = %if.end48.thread, %if.end48
  %23 = phi %struct._IP* [ %1, %if.end48.thread ], [ %.pre, %if.end48 ]
  %msgFile59 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !415
  %vertices66 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !418
  %nbytes = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 7, !dbg !419
  %freeIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 4, !dbg !421
  br label %while.body54, !dbg !409

while.body54:                                     ; preds = %while.cond50.backedge, %while.body54.lr.ph
  %24 = phi %struct._IP* [ %23, %while.body54.lr.ph ], [ %53, %while.cond50.backedge ]
  %nadj.0640 = phi i32 [ 0, %while.body54.lr.ph ], [ %nadj.1.lcssa, %while.cond50.backedge ]
  %25 = load i32* %msglvl, align 4, !dbg !422, !tbaa !221
  %cmp56 = icmp sgt i32 %25, 3, !dbg !422
  br i1 %cmp56, label %if.then58, label %while.body54.if.end64_crit_edge, !dbg !422

while.body54.if.end64_crit_edge:                  ; preds = %while.body54
  %val65.pre = getelementptr inbounds %struct._IP* %24, i64 0, i32 0, !dbg !423
  br label %if.end64, !dbg !422

if.then58:                                        ; preds = %while.body54
  %26 = load %struct._IO_FILE** %msgFile59, align 8, !dbg !415, !tbaa !216
  %val = getelementptr inbounds %struct._IP* %24, i64 0, i32 0, !dbg !415
  %27 = load i32* %val, align 4, !dbg !415, !tbaa !221
  %next = getelementptr inbounds %struct._IP* %24, i64 0, i32 1, !dbg !415
  %28 = load %struct._IP** %next, align 8, !dbg !415, !tbaa !216
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([31 x i8]* @.str20, i64 0, i64 0), i32 %27, %struct._IP* %24, i32 %27, %struct._IP* %28) #6, !dbg !415
  %29 = load %struct._IO_FILE** %msgFile59, align 8, !dbg !424, !tbaa !216
  %call63 = call i32 @fflush(%struct._IO_FILE* %29) #6, !dbg !424
  %.pre669 = load i32* %msglvl, align 4, !dbg !425, !tbaa !221
  br label %if.end64, !dbg !426

if.end64:                                         ; preds = %while.body54.if.end64_crit_edge, %if.then58
  %val65.pre-phi = phi i32* [ %val65.pre, %while.body54.if.end64_crit_edge ], [ %val, %if.then58 ], !dbg !423
  %30 = phi i32 [ %25, %while.body54.if.end64_crit_edge ], [ %.pre669, %if.then58 ]
  %31 = load i32* %val65.pre-phi, align 4, !dbg !423, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !198), !dbg !423
  %32 = load %struct._MSMDvtx** %vertices66, align 8, !dbg !418, !tbaa !216
  %idx.ext67 = sext i32 %31 to i64, !dbg !418
  %par = getelementptr inbounds %struct._MSMDvtx* %32, i64 %idx.ext67, i32 8, !dbg !427
  store %struct._MSMDvtx* %v, %struct._MSMDvtx** %par, align 8, !dbg !427, !tbaa !216
  %nadj69 = getelementptr inbounds %struct._MSMDvtx* %32, i64 %idx.ext67, i32 5, !dbg !428
  %33 = load i32* %nadj69, align 4, !dbg !428, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32 %33}, i64 0, metadata !196), !dbg !428
  %adj70 = getelementptr inbounds %struct._MSMDvtx* %32, i64 %idx.ext67, i32 6, !dbg !429
  %34 = load i32** %adj70, align 8, !dbg !429, !tbaa !216
  call void @llvm.dbg.value(metadata !{i32* %34}, i64 0, metadata !202), !dbg !429
  %cmp72 = icmp sgt i32 %30, 3, !dbg !425
  br i1 %cmp72, label %if.then74, label %for.cond.preheader, !dbg !425

if.then74:                                        ; preds = %if.end64
  %35 = load %struct._IO_FILE** %msgFile59, align 8, !dbg !430, !tbaa !216
  %id76 = getelementptr inbounds %struct._MSMDvtx* %32, i64 %idx.ext67, i32 0, !dbg !430
  %36 = load i32* %id76, align 4, !dbg !430, !tbaa !221
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([29 x i8]* @.str21, i64 0, i64 0), i32 %36) #6, !dbg !430
  %37 = load %struct._IO_FILE** %msgFile59, align 8, !dbg !432, !tbaa !216
  %call79 = call i32 @IVfp80(%struct._IO_FILE* %37, i32 %33, i32* %34, i32 25, i32* %ierr) #6, !dbg !432
  %38 = load %struct._IO_FILE** %msgFile59, align 8, !dbg !433, !tbaa !216
  %call81 = call i32 @fflush(%struct._IO_FILE* %38) #6, !dbg !433
  br label %for.cond.preheader, !dbg !434

for.cond.preheader:                               ; preds = %if.then74, %if.end64
  %cmp83635 = icmp sgt i32 %33, 0, !dbg !435
  br i1 %cmp83635, label %for.body, label %for.end, !dbg !435

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %indvars.iv665 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next666, %for.inc ]
  %nadj.1636 = phi i32 [ %nadj.0640, %for.cond.preheader ], [ %nadj.2, %for.inc ]
  %arrayidx86 = getelementptr inbounds i32* %34, i64 %indvars.iv665, !dbg !437
  %39 = load i32* %arrayidx86, align 4, !dbg !437, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32 %39}, i64 0, metadata !199), !dbg !437
  %40 = load %struct._MSMDvtx** %vertices66, align 8, !dbg !439, !tbaa !216
  %idx.ext88 = sext i32 %39 to i64, !dbg !439
  %mark90 = getelementptr inbounds %struct._MSMDvtx* %40, i64 %idx.ext88, i32 1, !dbg !440
  %41 = load i8* %mark90, align 1, !dbg !440, !tbaa !217
  %cmp92 = icmp eq i8 %41, 79, !dbg !440
  br i1 %cmp92, label %land.lhs.true, label %for.inc, !dbg !440

land.lhs.true:                                    ; preds = %for.body
  %status94 = getelementptr inbounds %struct._MSMDvtx* %40, i64 %idx.ext88, i32 2, !dbg !440
  %42 = load i8* %status94, align 1, !dbg !440, !tbaa !217
  %cmp96 = icmp eq i8 %42, 73, !dbg !440
  br i1 %cmp96, label %for.inc, label %if.then98, !dbg !440

if.then98:                                        ; preds = %land.lhs.true
  store i8 88, i8* %mark90, align 1, !dbg !441, !tbaa !217
  %inc100 = add nsw i32 %nadj.1636, 1, !dbg !443
  call void @llvm.dbg.value(metadata !{i32 %inc100}, i64 0, metadata !195), !dbg !443
  %idxprom101 = sext i32 %nadj.1636 to i64, !dbg !443
  %arrayidx102 = getelementptr inbounds i32* %call4, i64 %idxprom101, !dbg !443
  store i32 %39, i32* %arrayidx102, align 4, !dbg !443, !tbaa !221
  br label %for.inc, !dbg !444

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then98
  %nadj.2 = phi i32 [ %inc100, %if.then98 ], [ %nadj.1636, %land.lhs.true ], [ %nadj.1636, %for.body ]
  %indvars.iv.next666 = add i64 %indvars.iv665, 1, !dbg !435
  %lftr.wideiv667 = trunc i64 %indvars.iv.next666 to i32, !dbg !435
  %exitcond668 = icmp eq i32 %lftr.wideiv667, %33, !dbg !435
  br i1 %exitcond668, label %for.end, label %for.body, !dbg !435

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %nadj.1.lcssa = phi i32 [ %nadj.0640, %for.cond.preheader ], [ %nadj.2, %for.inc ]
  %status105 = getelementptr inbounds %struct._MSMDvtx* %32, i64 %idx.ext67, i32 2, !dbg !445
  %43 = load i8* %status105, align 1, !dbg !445, !tbaa !217
  %cmp107 = icmp eq i8 %43, 69, !dbg !445
  br i1 %cmp107, label %if.then109, label %if.end116, !dbg !445

if.then109:                                       ; preds = %for.end
  %44 = load i32** %adj70, align 8, !dbg !446, !tbaa !216
  call void @IVfree(i32* %44) #6, !dbg !446
  %45 = load i32* %nadj69, align 4, !dbg !419, !tbaa !221
  %mul = shl i32 %45, 2, !dbg !419
  %46 = load i32* %nbytes, align 4, !dbg !419, !tbaa !221
  %sub114 = sub i32 %46, %mul, !dbg !419
  store i32 %sub114, i32* %nbytes, align 4, !dbg !419, !tbaa !221
  br label %if.end116, !dbg !447

if.end116:                                        ; preds = %if.then109, %for.end
  store i32* null, i32** %adj70, align 8, !dbg !448, !tbaa !216
  store i32 0, i32* %nadj69, align 4, !dbg !449, !tbaa !221
  %next119 = getelementptr inbounds %struct._IP* %24, i64 0, i32 1, !dbg !450
  %47 = load %struct._IP** %next119, align 8, !dbg !450, !tbaa !216
  store %struct._IP* %47, %struct._IP** %subtrees, align 8, !dbg !450, !tbaa !216
  store i32 -1, i32* %val65.pre-phi, align 4, !dbg !451, !tbaa !221
  %48 = load %struct._IP** %freeIP, align 8, !dbg !421, !tbaa !216
  store %struct._IP* %48, %struct._IP** %next119, align 8, !dbg !421, !tbaa !216
  store %struct._IP* %24, %struct._IP** %freeIP, align 8, !dbg !452, !tbaa !216
  %49 = load i32* %msglvl, align 4, !dbg !453, !tbaa !221
  %cmp125 = icmp sgt i32 %49, 3, !dbg !453
  br i1 %cmp125, label %if.then127, label %while.cond50.backedge, !dbg !453

if.then127:                                       ; preds = %if.end116
  %50 = load %struct._IO_FILE** %msgFile59, align 8, !dbg !454, !tbaa !216
  %51 = load %struct._IP** %subtrees, align 8, !dbg !454, !tbaa !216
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([40 x i8]* @.str22, i64 0, i64 0), %struct._IP* %51, %struct._IP* %24) #6, !dbg !454
  %52 = load %struct._IO_FILE** %msgFile59, align 8, !dbg !456, !tbaa !216
  %call133 = call i32 @fflush(%struct._IO_FILE* %52) #6, !dbg !456
  br label %while.cond50.backedge, !dbg !457

while.cond50.backedge:                            ; preds = %if.then127, %if.end116
  %53 = load %struct._IP** %subtrees, align 8, !dbg !409, !tbaa !216
  call void @llvm.dbg.value(metadata !{%struct._IP* %24}, i64 0, metadata !204), !dbg !409
  %cmp52 = icmp eq %struct._IP* %53, null, !dbg !409
  br i1 %cmp52, label %while.end135, label %while.body54, !dbg !409

while.end135:                                     ; preds = %while.cond50.backedge, %if.end48
  %nadj.0.lcssa = phi i32 [ 0, %if.end48 ], [ %nadj.1.lcssa, %while.cond50.backedge ]
  %nadj136 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5, !dbg !458
  %54 = load i32* %nadj136, align 4, !dbg !458, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32 %54}, i64 0, metadata !197), !dbg !458
  %adj137 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6, !dbg !459
  %55 = load i32** %adj137, align 8, !dbg !459, !tbaa !216
  call void @llvm.dbg.value(metadata !{i32* %55}, i64 0, metadata !203), !dbg !459
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !192), !dbg !460
  %cmp139631 = icmp sgt i32 %54, 0, !dbg !460
  br i1 %cmp139631, label %for.body141.lr.ph, label %for.end164, !dbg !460

for.body141.lr.ph:                                ; preds = %while.end135
  %vertices144 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !462
  br label %for.body141, !dbg !460

for.body141:                                      ; preds = %for.inc162, %for.body141.lr.ph
  %indvars.iv663 = phi i64 [ 0, %for.body141.lr.ph ], [ %indvars.iv.next664, %for.inc162 ]
  %nadj.3632 = phi i32 [ %nadj.0.lcssa, %for.body141.lr.ph ], [ %nadj.4, %for.inc162 ]
  %arrayidx143 = getelementptr inbounds i32* %55, i64 %indvars.iv663, !dbg !464
  %56 = load i32* %arrayidx143, align 4, !dbg !464, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !199), !dbg !464
  %57 = load %struct._MSMDvtx** %vertices144, align 8, !dbg !462, !tbaa !216
  %idx.ext145 = sext i32 %56 to i64, !dbg !462
  %mark147 = getelementptr inbounds %struct._MSMDvtx* %57, i64 %idx.ext145, i32 1, !dbg !465
  %58 = load i8* %mark147, align 1, !dbg !465, !tbaa !217
  %cmp149 = icmp eq i8 %58, 79, !dbg !465
  br i1 %cmp149, label %land.lhs.true151, label %for.inc162, !dbg !465

land.lhs.true151:                                 ; preds = %for.body141
  %status152 = getelementptr inbounds %struct._MSMDvtx* %57, i64 %idx.ext145, i32 2, !dbg !465
  %59 = load i8* %status152, align 1, !dbg !465, !tbaa !217
  %cmp154 = icmp eq i8 %59, 73, !dbg !465
  br i1 %cmp154, label %for.inc162, label %if.then156, !dbg !465

if.then156:                                       ; preds = %land.lhs.true151
  store i8 88, i8* %mark147, align 1, !dbg !466, !tbaa !217
  %inc158 = add nsw i32 %nadj.3632, 1, !dbg !468
  call void @llvm.dbg.value(metadata !{i32 %inc158}, i64 0, metadata !195), !dbg !468
  %idxprom159 = sext i32 %nadj.3632 to i64, !dbg !468
  %arrayidx160 = getelementptr inbounds i32* %call4, i64 %idxprom159, !dbg !468
  store i32 %56, i32* %arrayidx160, align 4, !dbg !468, !tbaa !221
  br label %for.inc162, !dbg !469

for.inc162:                                       ; preds = %land.lhs.true151, %for.body141, %if.then156
  %nadj.4 = phi i32 [ %inc158, %if.then156 ], [ %nadj.3632, %land.lhs.true151 ], [ %nadj.3632, %for.body141 ]
  %indvars.iv.next664 = add i64 %indvars.iv663, 1, !dbg !460
  %lftr.wideiv = trunc i64 %indvars.iv.next664 to i32, !dbg !460
  %exitcond = icmp eq i32 %lftr.wideiv, %54, !dbg !460
  br i1 %exitcond, label %for.end164, label %for.body141, !dbg !460

for.end164:                                       ; preds = %for.inc162, %while.end135
  %nadj.3.lcssa = phi i32 [ %nadj.0.lcssa, %while.end135 ], [ %nadj.4, %for.inc162 ]
  store i32 %nadj.3.lcssa, i32* %nadj136, align 4, !dbg !470, !tbaa !221
  %cmp166 = icmp sgt i32 %nadj.3.lcssa, 0, !dbg !471
  br i1 %cmp166, label %if.then168, label %if.else185, !dbg !471

if.then168:                                       ; preds = %for.end164
  %call169 = call i32* @IVinit(i32 %nadj.3.lcssa, i32 -1) #6, !dbg !472
  store i32* %call169, i32** %adj137, align 8, !dbg !472, !tbaa !216
  call void @IVcopy(i32 %nadj.3.lcssa, i32* %call169, i32* %call4) #6, !dbg !474
  %mul173 = shl i32 %nadj.3.lcssa, 2, !dbg !475
  %nbytes174 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 7, !dbg !475
  %60 = load i32* %nbytes174, align 4, !dbg !475, !tbaa !221
  %add176 = add i32 %60, %mul173, !dbg !475
  store i32 %add176, i32* %nbytes174, align 4, !dbg !475, !tbaa !221
  %maxnbytes = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 6, !dbg !476
  %61 = load i32* %maxnbytes, align 4, !dbg !476, !tbaa !221
  %cmp179 = icmp slt i32 %61, %add176, !dbg !476
  br i1 %cmp179, label %if.then181, label %if.end188, !dbg !476

if.then181:                                       ; preds = %if.then168
  store i32 %add176, i32* %maxnbytes, align 4, !dbg !477, !tbaa !221
  br label %if.end188, !dbg !479

if.else185:                                       ; preds = %for.end164
  store i32* null, i32** %adj137, align 8, !dbg !480, !tbaa !216
  br label %if.end188

if.end188:                                        ; preds = %if.else185, %if.then181, %if.then168, %while.end
  %62 = load i32* %msglvl, align 4, !dbg !482, !tbaa !221
  %cmp190 = icmp sgt i32 %62, 3, !dbg !482
  br i1 %cmp190, label %if.then192, label %if.end207.thread, !dbg !482

if.end207.thread:                                 ; preds = %if.end188
  %nadj208610 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5, !dbg !483
  %63 = load i32* %nadj208610, align 4, !dbg !483, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32 %.ph620}, i64 0, metadata !196), !dbg !483
  %adj209611 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6, !dbg !484
  %64 = load i32** %adj209611, align 8, !dbg !484, !tbaa !216
  call void @llvm.dbg.value(metadata !{i32* %.ph}, i64 0, metadata !202), !dbg !484
  br label %for.cond222.preheader, !dbg !485

if.then192:                                       ; preds = %if.end188
  %msgFile193 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !486
  %65 = load %struct._IO_FILE** %msgFile193, align 8, !dbg !486, !tbaa !216
  %id194 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0, !dbg !486
  %66 = load i32* %id194, align 4, !dbg !486, !tbaa !221
  %call195 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([15 x i8]* @.str23, i64 0, i64 0), i32 %66) #6, !dbg !486
  %nadj196 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5, !dbg !488
  %67 = load i32* %nadj196, align 4, !dbg !488, !tbaa !221
  %cmp197 = icmp sgt i32 %67, 0, !dbg !488
  br i1 %cmp197, label %if.then199, label %if.then192.if.end207_crit_edge, !dbg !488

if.then192.if.end207_crit_edge:                   ; preds = %if.then192
  %adj209.pre = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6, !dbg !484
  br label %if.end207, !dbg !488

if.then199:                                       ; preds = %if.then192
  %68 = load %struct._IO_FILE** %msgFile193, align 8, !dbg !489, !tbaa !216
  %adj202 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6, !dbg !489
  %69 = load i32** %adj202, align 8, !dbg !489, !tbaa !216
  %call203 = call i32 @IVfp80(%struct._IO_FILE* %68, i32 %67, i32* %69, i32 17, i32* %ierr) #6, !dbg !489
  br label %if.end207, !dbg !491

if.end207:                                        ; preds = %if.then192.if.end207_crit_edge, %if.then199
  %adj209.pre-phi = phi i32** [ %adj209.pre, %if.then192.if.end207_crit_edge ], [ %adj202, %if.then199 ], !dbg !484
  %70 = load %struct._IO_FILE** %msgFile193, align 8, !dbg !492, !tbaa !216
  %call206 = call i32 @fflush(%struct._IO_FILE* %70) #6, !dbg !492
  %.pr = load i32* %msglvl, align 4, !dbg !485, !tbaa !221
  %71 = load i32* %nadj196, align 4, !dbg !483, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32 %.ph620}, i64 0, metadata !196), !dbg !483
  %72 = load i32** %adj209.pre-phi, align 8, !dbg !484, !tbaa !216
  call void @llvm.dbg.value(metadata !{i32* %.ph}, i64 0, metadata !202), !dbg !484
  %cmp211 = icmp sgt i32 %.pr, 3, !dbg !485
  br i1 %cmp211, label %if.then213, label %for.cond222.preheader, !dbg !485

if.then213:                                       ; preds = %if.end207
  %73 = load %struct._IO_FILE** %msgFile193, align 8, !dbg !493, !tbaa !216
  %74 = load i32* %id194, align 4, !dbg !493, !tbaa !221
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([13 x i8]* @.str24, i64 0, i64 0), i32 %74) #6, !dbg !493
  %75 = load %struct._IO_FILE** %msgFile193, align 8, !dbg !495, !tbaa !216
  %call218 = call i32 @IVfp80(%struct._IO_FILE* %75, i32 %71, i32* %72, i32 12, i32* %ierr) #6, !dbg !495
  %76 = load %struct._IO_FILE** %msgFile193, align 8, !dbg !496, !tbaa !216
  %call220 = call i32 @fflush(%struct._IO_FILE* %76) #6, !dbg !496
  br label %for.cond222.preheader, !dbg !497

for.cond222.preheader:                            ; preds = %if.then213, %if.end207, %if.end207.thread
  %.ph = phi i32* [ %64, %if.end207.thread ], [ %72, %if.end207 ], [ %72, %if.then213 ]
  %.ph620 = phi i32 [ %63, %if.end207.thread ], [ %71, %if.end207 ], [ %71, %if.then213 ]
  %cmp223624 = icmp sgt i32 %.ph620, 0, !dbg !498
  br i1 %cmp223624, label %for.body225.lr.ph, label %for.end384, !dbg !498

for.body225.lr.ph:                                ; preds = %for.cond222.preheader
  %vertices228 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !500
  %msgFile235 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5, !dbg !502
  %freeIP241 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 4, !dbg !504
  %incrIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 2, !dbg !505
  %baseIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 3, !dbg !507
  %nbytes277 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 7, !dbg !509
  %maxnbytes281 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 6, !dbg !510
  %id304 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0, !dbg !511
  %heap = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1, !dbg !512
  br label %for.body225, !dbg !498

for.body225:                                      ; preds = %sw.epilog, %for.body225.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body225.lr.ph ], [ %indvars.iv.next, %sw.epilog ]
  %wght.0625 = phi i32 [ 0, %for.body225.lr.ph ], [ %add381, %sw.epilog ]
  %arrayidx227 = getelementptr inbounds i32* %.ph, i64 %indvars.iv, !dbg !514
  %77 = load i32* %arrayidx227, align 4, !dbg !514, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32 %77}, i64 0, metadata !199), !dbg !514
  %78 = load %struct._MSMDvtx** %vertices228, align 8, !dbg !500, !tbaa !216
  %idx.ext229 = sext i32 %77 to i64, !dbg !500
  %add.ptr230 = getelementptr inbounds %struct._MSMDvtx* %78, i64 %idx.ext229, !dbg !500
  call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %add.ptr230}, i64 0, metadata !209), !dbg !500
  %79 = load i32* %msglvl, align 4, !dbg !515, !tbaa !221
  %cmp232 = icmp sgt i32 %79, 4, !dbg !515
  br i1 %cmp232, label %if.then234, label %if.end240, !dbg !515

if.then234:                                       ; preds = %for.body225
  %80 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !502, !tbaa !216
  %id236 = getelementptr inbounds %struct._MSMDvtx* %add.ptr230, i64 0, i32 0, !dbg !502
  %81 = load i32* %id236, align 4, !dbg !502, !tbaa !221
  %call237 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([23 x i8]* @.str25, i64 0, i64 0), i32 %81) #6, !dbg !502
  %82 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !516, !tbaa !216
  %call239 = call i32 @fflush(%struct._IO_FILE* %82) #6, !dbg !516
  br label %if.end240, !dbg !517

if.end240:                                        ; preds = %if.then234, %for.body225
  %83 = load %struct._IP** %freeIP241, align 8, !dbg !504, !tbaa !216
  call void @llvm.dbg.value(metadata !{%struct._IP* %83}, i64 0, metadata !204), !dbg !504
  %cmp242 = icmp eq %struct._IP* %83, null, !dbg !504
  br i1 %cmp242, label %if.then244, label %if.end301, !dbg !504

if.then244:                                       ; preds = %if.end240
  %84 = load i32* %msglvl, align 4, !dbg !518, !tbaa !221
  %cmp246 = icmp sgt i32 %84, 2, !dbg !518
  br i1 %cmp246, label %if.then248, label %if.end253, !dbg !518

if.then248:                                       ; preds = %if.then244
  %85 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !519, !tbaa !216
  %86 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %85), !dbg !519
  %87 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !521, !tbaa !216
  %call252 = call i32 @fflush(%struct._IO_FILE* %87) #6, !dbg !521
  br label %if.end253, !dbg !522

if.end253:                                        ; preds = %if.then248, %if.then244
  %88 = load i32* %incrIP, align 4, !dbg !505, !tbaa !221
  %call254 = call %struct._IP* @IP_init(i32 %88, i32 1) #6, !dbg !505
  call void @llvm.dbg.value(metadata !{%struct._IP* %call254}, i64 0, metadata !204), !dbg !505
  %cmp255 = icmp eq %struct._IP* %call254, null, !dbg !505
  br i1 %cmp255, label %if.then257, label %if.end259, !dbg !505

if.then257:                                       ; preds = %if.end253
  %89 = load %struct._IO_FILE** @stderr, align 8, !dbg !523, !tbaa !216
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([80 x i8]* @.str27, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info) #6, !dbg !523
  call void @exit(i32 -1) #7, !dbg !525
  unreachable, !dbg !525

if.end259:                                        ; preds = %if.end253
  %90 = load i32* %msglvl, align 4, !dbg !526, !tbaa !221
  %cmp261 = icmp sgt i32 %90, 4, !dbg !526
  br i1 %cmp261, label %if.then263, label %if.end270, !dbg !526

if.then263:                                       ; preds = %if.end259
  %91 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !507, !tbaa !216
  %92 = load %struct._IP** %baseIP, align 8, !dbg !507, !tbaa !216
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), %struct._IP* %92) #6, !dbg !507
  %93 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !527, !tbaa !216
  %call267 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([20 x i8]* @.str29, i64 0, i64 0), %struct._IP* %call254) #6, !dbg !527
  %94 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !528, !tbaa !216
  %call269 = call i32 @fflush(%struct._IO_FILE* %94) #6, !dbg !528
  br label %if.end270, !dbg !529

if.end270:                                        ; preds = %if.then263, %if.end259
  %95 = load %struct._IP** %baseIP, align 8, !dbg !530, !tbaa !216
  %next272 = getelementptr inbounds %struct._IP* %call254, i64 0, i32 1, !dbg !530
  store %struct._IP* %95, %struct._IP** %next272, align 8, !dbg !530, !tbaa !216
  store %struct._IP* %call254, %struct._IP** %baseIP, align 8, !dbg !531, !tbaa !216
  %96 = load i32* %incrIP, align 4, !dbg !509, !tbaa !221
  %mul276 = shl i32 %96, 4, !dbg !509
  %97 = load i32* %nbytes277, align 4, !dbg !509, !tbaa !221
  %add279 = add i32 %97, %mul276, !dbg !509
  store i32 %add279, i32* %nbytes277, align 4, !dbg !509, !tbaa !221
  %98 = load i32* %maxnbytes281, align 4, !dbg !510, !tbaa !221
  %cmp283 = icmp slt i32 %98, %add279, !dbg !510
  br i1 %cmp283, label %if.then285, label %if.end288, !dbg !510

if.then285:                                       ; preds = %if.end270
  store i32 %add279, i32* %maxnbytes281, align 4, !dbg !532, !tbaa !221
  br label %if.end288, !dbg !534

if.end288:                                        ; preds = %if.end270, %if.then285
  %add.ptr290 = getelementptr inbounds %struct._IP* %call254, i64 1, !dbg !535
  store %struct._IP* %add.ptr290, %struct._IP** %freeIP241, align 8, !dbg !535, !tbaa !216
  call void @llvm.dbg.value(metadata !{%struct._IP* %add.ptr290}, i64 0, metadata !204), !dbg !535
  %99 = load i32* %msglvl, align 4, !dbg !536, !tbaa !221
  %cmp293 = icmp sgt i32 %99, 2, !dbg !536
  br i1 %cmp293, label %if.then295, label %if.end301, !dbg !536

if.then295:                                       ; preds = %if.end288
  %100 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !537, !tbaa !216
  %101 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str30, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %100), !dbg !537
  %102 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !539, !tbaa !216
  %call299 = call i32 @fflush(%struct._IO_FILE* %102) #6, !dbg !539
  br label %if.end301, !dbg !540

if.end301:                                        ; preds = %if.end288, %if.then295, %if.end240
  %ip.0 = phi %struct._IP* [ %add.ptr290, %if.then295 ], [ %add.ptr290, %if.end288 ], [ %83, %if.end240 ]
  %next302 = getelementptr inbounds %struct._IP* %ip.0, i64 0, i32 1, !dbg !541
  %103 = load %struct._IP** %next302, align 8, !dbg !541, !tbaa !216
  store %struct._IP* %103, %struct._IP** %freeIP241, align 8, !dbg !541, !tbaa !216
  %104 = load i32* %id304, align 4, !dbg !511, !tbaa !221
  %val305 = getelementptr inbounds %struct._IP* %ip.0, i64 0, i32 0, !dbg !511
  store i32 %104, i32* %val305, align 4, !dbg !511, !tbaa !221
  store %struct._IP* null, %struct._IP** %next302, align 8, !dbg !542, !tbaa !216
  %subtrees307 = getelementptr inbounds %struct._MSMDvtx* %78, i64 %idx.ext229, i32 9, !dbg !543
  call void @llvm.dbg.value(metadata !545, i64 0, metadata !206), !dbg !543
  %ip2.0615 = load %struct._IP** %subtrees307, align 8, !dbg !543
  %cmp309616 = icmp eq %struct._IP* %ip2.0615, null, !dbg !543
  br i1 %cmp309616, label %if.then321, label %land.rhs, !dbg !543

for.cond308:                                      ; preds = %land.rhs
  %next317 = getelementptr inbounds %struct._IP* %ip2.0618, i64 0, i32 1, !dbg !546
  %ip2.0 = load %struct._IP** %next317, align 8, !dbg !543
  %cmp309 = icmp eq %struct._IP* %ip2.0, null, !dbg !543
  br i1 %cmp309, label %for.end318, label %land.rhs, !dbg !543

land.rhs:                                         ; preds = %if.end301, %for.cond308
  %ip2.0618 = phi %struct._IP* [ %ip2.0, %for.cond308 ], [ %ip2.0615, %if.end301 ]
  %prev.0617 = phi %struct._IP* [ %ip2.0618, %for.cond308 ], [ null, %if.end301 ]
  %val311 = getelementptr inbounds %struct._IP* %ip2.0618, i64 0, i32 0, !dbg !543
  %105 = load i32* %val311, align 4, !dbg !543, !tbaa !221
  %cmp313 = icmp sgt i32 %105, %104, !dbg !543
  call void @llvm.dbg.value(metadata !{%struct._IP* %ip2.0.lcssa674}, i64 0, metadata !206), !dbg !547
  br i1 %cmp313, label %for.cond308, label %for.end318

for.end318:                                       ; preds = %for.cond308, %land.rhs
  %ip2.0.lcssa = phi %struct._IP* [ %ip2.0618, %land.rhs ], [ null, %for.cond308 ]
  %prev.0.lcssa = phi %struct._IP* [ %prev.0617, %land.rhs ], [ %ip2.0618, %for.cond308 ]
  %cmp319 = icmp eq %struct._IP* %prev.0.lcssa, null, !dbg !549
  br i1 %cmp319, label %if.then321, label %if.else323, !dbg !549

if.then321:                                       ; preds = %if.end301, %for.end318
  %ip2.0.lcssa675 = phi %struct._IP* [ %ip2.0.lcssa, %for.end318 ], [ null, %if.end301 ]
  store %struct._IP* %ip.0, %struct._IP** %subtrees307, align 8, !dbg !550, !tbaa !216
  br label %if.end325, !dbg !552

if.else323:                                       ; preds = %for.end318
  %next324 = getelementptr inbounds %struct._IP* %prev.0.lcssa, i64 0, i32 1, !dbg !553
  store %struct._IP* %ip.0, %struct._IP** %next324, align 8, !dbg !553, !tbaa !216
  br label %if.end325

if.end325:                                        ; preds = %if.else323, %if.then321
  %ip2.0.lcssa674 = phi %struct._IP* [ %ip2.0.lcssa, %if.else323 ], [ %ip2.0.lcssa675, %if.then321 ]
  store %struct._IP* %ip2.0.lcssa674, %struct._IP** %next302, align 8, !dbg !555, !tbaa !216
  %106 = load i32* %msglvl, align 4, !dbg !556, !tbaa !221
  %cmp328 = icmp sgt i32 %106, 3, !dbg !556
  br i1 %cmp328, label %if.end339, label %if.end350, !dbg !556

if.end339:                                        ; preds = %if.end325
  %107 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !557, !tbaa !216
  %id332 = getelementptr inbounds %struct._MSMDvtx* %add.ptr230, i64 0, i32 0, !dbg !557
  %108 = load i32* %id332, align 4, !dbg !557, !tbaa !221
  %call333 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([18 x i8]* @.str31, i64 0, i64 0), i32 %108) #6, !dbg !557
  %109 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !559, !tbaa !216
  %110 = load %struct._IP** %subtrees307, align 8, !dbg !559, !tbaa !216
  %call336 = call i32 @IP_fp80(%struct._IO_FILE* %109, %struct._IP* %110, i32 15) #6, !dbg !559
  %111 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !560, !tbaa !216
  %call338 = call i32 @fflush(%struct._IO_FILE* %111) #6, !dbg !560
  %.pr613 = load i32* %msglvl, align 4, !dbg !561, !tbaa !221
  %cmp341 = icmp sgt i32 %.pr613, 4, !dbg !561
  br i1 %cmp341, label %if.then343, label %if.end350, !dbg !561

if.then343:                                       ; preds = %if.end339
  %112 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !562, !tbaa !216
  %status345 = getelementptr inbounds %struct._MSMDvtx* %78, i64 %idx.ext229, i32 2, !dbg !562
  %113 = load i8* %status345, align 1, !dbg !562, !tbaa !217
  %conv346 = sext i8 %113 to i32, !dbg !562
  %call347 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([21 x i8]* @.str32, i64 0, i64 0), i32 %77, i32 %conv346) #6, !dbg !562
  %114 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !564, !tbaa !216
  %call349 = call i32 @fflush(%struct._IO_FILE* %114) #6, !dbg !564
  br label %if.end350, !dbg !565

if.end350:                                        ; preds = %if.end325, %if.then343, %if.end339
  %status351 = getelementptr inbounds %struct._MSMDvtx* %78, i64 %idx.ext229, i32 2, !dbg !566
  %115 = load i8* %status351, align 1, !dbg !566, !tbaa !217
  %conv352 = sext i8 %115 to i32, !dbg !566
  switch i32 %conv352, label %sw.default [
    i32 68, label %sw.bb
    i32 79, label %sw.bb362
    i32 66, label %sw.bb362
    i32 82, label %sw.epilog
    i32 73, label %sw.epilog
  ], !dbg !566

sw.bb:                                            ; preds = %if.end350
  %116 = load i32* %msglvl, align 4, !dbg !567, !tbaa !221
  %cmp354 = icmp sgt i32 %116, 4, !dbg !567
  br i1 %cmp354, label %if.then356, label %if.end361, !dbg !567

if.then356:                                       ; preds = %sw.bb
  %117 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !568, !tbaa !216
  %118 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str33, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %117), !dbg !568
  %119 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !570, !tbaa !216
  %call360 = call i32 @fflush(%struct._IO_FILE* %119) #6, !dbg !570
  br label %if.end361, !dbg !571

if.end361:                                        ; preds = %if.then356, %sw.bb
  %120 = load %struct._IIheap** %heap, align 8, !dbg !512, !tbaa !216
  call void @IIheap_remove(%struct._IIheap* %120, i32 %77) #6, !dbg !512
  br label %sw.bb362, !dbg !512

sw.bb362:                                         ; preds = %if.end350, %if.end350, %if.end361
  %121 = load i32* %msglvl, align 4, !dbg !572, !tbaa !221
  %cmp364 = icmp sgt i32 %121, 4, !dbg !572
  br i1 %cmp364, label %if.then366, label %if.end373, !dbg !572

if.then366:                                       ; preds = %sw.bb362
  %122 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !573, !tbaa !216
  %call368 = call i32 @IV_size(%struct._IV* %reachIV5) #6, !dbg !575
  %add369 = add nsw i32 %call368, 1, !dbg !575
  %call370 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([32 x i8]* @.str34, i64 0, i64 0), i32 %add369) #6, !dbg !575
  %123 = load %struct._IO_FILE** %msgFile235, align 8, !dbg !576, !tbaa !216
  %call372 = call i32 @fflush(%struct._IO_FILE* %123) #6, !dbg !576
  br label %if.end373, !dbg !577

if.end373:                                        ; preds = %if.then366, %sw.bb362
  call void @IV_push(%struct._IV* %reachIV5, i32 %77) #6, !dbg !578
  store i8 82, i8* %status351, align 1, !dbg !579, !tbaa !217
  br label %sw.epilog, !dbg !579

sw.default:                                       ; preds = %if.end350
  %124 = load %struct._IO_FILE** @stderr, align 8, !dbg !580, !tbaa !216
  %call377 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([59 x i8]* @.str35, i64 0, i64 0), %struct._MSMD* %msmd, %struct._MSMDvtx* %v, %struct._MSMDinfo* %info, i32 %77, i32 %conv352) #6, !dbg !580
  %125 = load %struct._IO_FILE** @stderr, align 8, !dbg !581, !tbaa !216
  %nvtx = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0, !dbg !581
  %126 = load i32* %nvtx, align 4, !dbg !581, !tbaa !221
  %call378 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([18 x i8]* @.str36, i64 0, i64 0), i32 %126) #6, !dbg !581
  call void @exit(i32 -1) #7, !dbg !582
  unreachable, !dbg !582

sw.epilog:                                        ; preds = %if.end350, %if.end373, %if.end350
  %mark379 = getelementptr inbounds %struct._MSMDvtx* %78, i64 %idx.ext229, i32 1, !dbg !583
  store i8 79, i8* %mark379, align 1, !dbg !583, !tbaa !217
  %wght380 = getelementptr inbounds %struct._MSMDvtx* %78, i64 %idx.ext229, i32 4, !dbg !584
  %127 = load i32* %wght380, align 4, !dbg !584, !tbaa !221
  %add381 = add nsw i32 %127, %wght.0625, !dbg !584
  call void @llvm.dbg.value(metadata !{i32 %add381}, i64 0, metadata !200), !dbg !584
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !498
  %128 = trunc i64 %indvars.iv.next to i32, !dbg !498
  %cmp223 = icmp slt i32 %128, %.ph620, !dbg !498
  br i1 %cmp223, label %for.body225, label %for.end384, !dbg !498

for.end384:                                       ; preds = %sw.epilog, %for.cond222.preheader
  %wght.0.lcssa = phi i32 [ 0, %for.cond222.preheader ], [ %add381, %sw.epilog ]
  store i8 79, i8* %mark, align 1, !dbg !585, !tbaa !217
  %bndwght = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 7, !dbg !586
  store i32 %wght.0.lcssa, i32* %bndwght, align 4, !dbg !586, !tbaa !221
  ret void, !dbg !587
}

; Function Attrs: optsize
declare i32 @IP_fp80(%struct._IO_FILE*, %struct._IP*, i32) #4

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #4

; Function Attrs: optsize
declare %struct._IP* @IP_init(i32, i32) #4

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !170, metadata !185}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMD_eliminateStage", metadata !"MSMD_eliminateStage", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._MSMD*, %struct._MSMDinfo*)* @MSMD_eliminateStage, null, null, metadata !155, i32 17} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 17] [MSMD_eliminateStage]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
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
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !169}
!156 = metadata !{i32 786689, metadata !4, metadata !"msmd", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msmd] [line 15]
!157 = metadata !{i32 786689, metadata !4, metadata !"info", metadata !5, i32 33554448, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 16]
!158 = metadata !{i32 786688, metadata !4, metadata !"ierr", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 18]
!159 = metadata !{i32 786688, metadata !4, metadata !"ii", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 18]
!160 = metadata !{i32 786688, metadata !4, metadata !"jj", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 18]
!161 = metadata !{i32 786688, metadata !4, metadata !"iv", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iv] [line 18]
!162 = metadata !{i32 786688, metadata !4, metadata !"nelim", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nelim] [line 18]
!163 = metadata !{i32 786688, metadata !4, metadata !"nreach", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nreach] [line 18]
!164 = metadata !{i32 786688, metadata !4, metadata !"stage", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stage] [line 18]
!165 = metadata !{i32 786688, metadata !4, metadata !"step", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [step] [line 18]
!166 = metadata !{i32 786688, metadata !4, metadata !"reach", metadata !5, i32 19, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reach] [line 19]
!167 = metadata !{i32 786688, metadata !4, metadata !"reachIV", metadata !5, i32 20, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reachIV] [line 20]
!168 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!169 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 21, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 21]
!170 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMD_eliminateStep", metadata !"MSMD_eliminateStep", metadata !"", i32 186, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._MSMD*, %struct._MSMDinfo*)* @MSMD_eliminateStep, null, null, metadata !173, i32 189} ; [ DW_TAG_subprogram ] [line 186] [def] [scope 189] [MSMD_eliminateStep]
!171 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!172 = metadata !{metadata !14, metadata !8, metadata !65}
!173 = metadata !{metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184}
!174 = metadata !{i32 786689, metadata !170, metadata !"msmd", metadata !5, i32 16777403, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msmd] [line 187]
!175 = metadata !{i32 786689, metadata !170, metadata !"info", metadata !5, i32 33554620, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 188]
!176 = metadata !{i32 786688, metadata !170, metadata !"deg", metadata !5, i32 190, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [deg] [line 190]
!177 = metadata !{i32 786688, metadata !170, metadata !"maxdeg", metadata !5, i32 190, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxdeg] [line 190]
!178 = metadata !{i32 786688, metadata !170, metadata !"mindeg", metadata !5, i32 190, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mindeg] [line 190]
!179 = metadata !{i32 786688, metadata !170, metadata !"ncol", metadata !5, i32 190, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 190]
!180 = metadata !{i32 786688, metadata !170, metadata !"nelim", metadata !5, i32 190, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nelim] [line 190]
!181 = metadata !{i32 786688, metadata !170, metadata !"nrow", metadata !5, i32 190, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 190]
!182 = metadata !{i32 786688, metadata !170, metadata !"vid", metadata !5, i32 190, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vid] [line 190]
!183 = metadata !{i32 786688, metadata !170, metadata !"weight", metadata !5, i32 190, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight] [line 190]
!184 = metadata !{i32 786688, metadata !170, metadata !"v", metadata !5, i32 191, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 191]
!185 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMD_eliminateVtx", metadata !"MSMD_eliminateVtx", metadata !"", i32 304, metadata !186, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._MSMD*, %struct._MSMDvtx*, %struct._MSMDinfo*)* @MSMD_eliminateVtx, null, null, metadata !188, i32 308} ; [ DW_TAG_subprogram ] [line 304] [def] [scope 308] [MSMD_eliminateVtx]
!186 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!187 = metadata !{null, metadata !8, metadata !40, metadata !65}
!188 = metadata !{metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209}
!189 = metadata !{i32 786689, metadata !185, metadata !"msmd", metadata !5, i32 16777521, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msmd] [line 305]
!190 = metadata !{i32 786689, metadata !185, metadata !"v", metadata !5, i32 33554738, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 306]
!191 = metadata !{i32 786689, metadata !185, metadata !"info", metadata !5, i32 50331955, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 307]
!192 = metadata !{i32 786688, metadata !185, metadata !"i", metadata !5, i32 309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 309]
!193 = metadata !{i32 786688, metadata !185, metadata !"ierr", metadata !5, i32 309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 309]
!194 = metadata !{i32 786688, metadata !185, metadata !"j", metadata !5, i32 309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 309]
!195 = metadata !{i32 786688, metadata !185, metadata !"nadj", metadata !5, i32 309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nadj] [line 309]
!196 = metadata !{i32 786688, metadata !185, metadata !"nbnd", metadata !5, i32 309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbnd] [line 309]
!197 = metadata !{i32 786688, metadata !185, metadata !"nedge", metadata !5, i32 309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nedge] [line 309]
!198 = metadata !{i32 786688, metadata !185, metadata !"uid", metadata !5, i32 309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uid] [line 309]
!199 = metadata !{i32 786688, metadata !185, metadata !"wid", metadata !5, i32 309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wid] [line 309]
!200 = metadata !{i32 786688, metadata !185, metadata !"wght", metadata !5, i32 309, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wght] [line 309]
!201 = metadata !{i32 786688, metadata !185, metadata !"adj", metadata !5, i32 310, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 310]
!202 = metadata !{i32 786688, metadata !185, metadata !"bnd", metadata !5, i32 310, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bnd] [line 310]
!203 = metadata !{i32 786688, metadata !185, metadata !"edges", metadata !5, i32 310, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edges] [line 310]
!204 = metadata !{i32 786688, metadata !185, metadata !"ip", metadata !5, i32 311, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 311]
!205 = metadata !{i32 786688, metadata !185, metadata !"ip2", metadata !5, i32 311, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip2] [line 311]
!206 = metadata !{i32 786688, metadata !185, metadata !"prev", metadata !5, i32 311, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 311]
!207 = metadata !{i32 786688, metadata !185, metadata !"reachIV", metadata !5, i32 312, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reachIV] [line 312]
!208 = metadata !{i32 786688, metadata !185, metadata !"u", metadata !5, i32 313, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 313]
!209 = metadata !{i32 786688, metadata !185, metadata !"w", metadata !5, i32 313, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 313]
!210 = metadata !{i32 15, i32 0, metadata !4, null}
!211 = metadata !{i32 16, i32 0, metadata !4, null}
!212 = metadata !{i32 18, i32 0, metadata !4, null}
!213 = metadata !{i32 27, i32 0, metadata !4, null}
!214 = metadata !{i32 28, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !4, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!216 = metadata !{metadata !"any pointer", metadata !217}
!217 = metadata !{metadata !"omnipotent char", metadata !218}
!218 = metadata !{metadata !"Simple C/C++ TBAA"}
!219 = metadata !{i32 30, i32 0, metadata !215, null}
!220 = metadata !{i32 32, i32 0, metadata !4, null}
!221 = metadata !{metadata !"int", metadata !217}
!222 = metadata !{i32 38, i32 0, metadata !4, null}
!223 = metadata !{i32 39, i32 0, metadata !4, null}
!224 = metadata !{i32 40, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !4, i32 40, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!226 = metadata !{i32 41, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !225, i32 40, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!228 = metadata !{i32 42, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !227, i32 41, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!230 = metadata !{i32 43, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !229, i32 42, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!232 = metadata !{i32 44, i32 0, metadata !231, null}
!233 = metadata !{i32 45, i32 0, metadata !231, null}
!234 = metadata !{i32 45, i32 0, metadata !229, null}
!235 = metadata !{i32 46, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !229, i32 45, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!237 = metadata !{i32 47, i32 0, metadata !236, null}
!238 = metadata !{i32 50, i32 0, metadata !4, null}
!239 = metadata !{i32 51, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !4, i32 50, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!241 = metadata !{i32 52, i32 0, metadata !240, null}
!242 = metadata !{i32 53, i32 0, metadata !240, null}
!243 = metadata !{i32 54, i32 0, metadata !240, null}
!244 = metadata !{i32 55, i32 0, metadata !4, null}
!245 = metadata !{i32 56, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !4, i32 55, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!247 = metadata !{i32 57, i32 0, metadata !246, null}
!248 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!249 = metadata !{i32 59, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !4, i32 58, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!251 = metadata !{i32 60, i32 0, metadata !250, null}
!252 = metadata !{i32 61, i32 0, metadata !250, null}
!253 = metadata !{i32 62, i32 0, metadata !250, null}
!254 = metadata !{i32 68, i32 0, metadata !4, null}
!255 = metadata !{i32 69, i32 0, metadata !4, null}
!256 = metadata !{i32 70, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !4, i32 69, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!258 = metadata !{i32 71, i32 0, metadata !257, null}
!259 = metadata !{i32 72, i32 0, metadata !257, null}
!260 = metadata !{i32 73, i32 0, metadata !4, null}
!261 = metadata !{i32 79, i32 0, metadata !4, null}
!262 = metadata !{i32 80, i32 0, metadata !4, null}
!263 = metadata !{i32 81, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !4, i32 80, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!265 = metadata !{i32 82, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !264, i32 81, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!267 = metadata !{i32 84, i32 0, metadata !266, null}
!268 = metadata !{i32 85, i32 0, metadata !266, null}
!269 = metadata !{i32 86, i32 0, metadata !264, null}
!270 = metadata !{i32 87, i32 0, metadata !264, null}
!271 = metadata !{i32 163, i32 0, metadata !4, null}
!272 = metadata !{i32 96, i32 0, metadata !264, null}
!273 = metadata !{i32 97, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !264, i32 96, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!275 = metadata !{i32 98, i32 0, metadata !274, null}
!276 = metadata !{i32 99, i32 0, metadata !274, null}
!277 = metadata !{i32 100, i32 0, metadata !274, null}
!278 = metadata !{i32 101, i32 0, metadata !274, null}
!279 = metadata !{i32 102, i32 0, metadata !264, null}
!280 = metadata !{i32 103, i32 0, metadata !264, null}
!281 = metadata !{i32 104, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !264, i32 103, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!283 = metadata !{i32 105, i32 0, metadata !282, null}
!284 = metadata !{i32 106, i32 0, metadata !282, null}
!285 = metadata !{i32 112, i32 0, metadata !264, null}
!286 = metadata !{i32 119, i32 0, metadata !264, null}
!287 = metadata !{i32 120, i32 0, metadata !264, null}
!288 = metadata !{i32 121, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !264, i32 121, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!290 = metadata !{i32 122, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !289, i32 121, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!292 = metadata !{i32 123, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !291, i32 122, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!294 = metadata !{i32 125, i32 0, metadata !293, null}
!295 = metadata !{i32 127, i32 0, metadata !291, null}
!296 = metadata !{i32 128, i32 0, metadata !291, null}
!297 = metadata !{i32 130, i32 0, metadata !291, null}
!298 = metadata !{i32 131, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !291, i32 130, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!300 = metadata !{i32 132, i32 0, metadata !299, null}
!301 = metadata !{i32 133, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !291, i32 132, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!303 = metadata !{i32 136, i32 0, metadata !264, null}
!304 = metadata !{i32 137, i32 0, metadata !264, null}
!305 = metadata !{i32 138, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !264, i32 137, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!307 = metadata !{i32 140, i32 0, metadata !306, null}
!308 = metadata !{i32 141, i32 0, metadata !306, null}
!309 = metadata !{i32 142, i32 0, metadata !306, null}
!310 = metadata !{i32 143, i32 0, metadata !306, null}
!311 = metadata !{i32 144, i32 0, metadata !306, null}
!312 = metadata !{i32 150, i32 0, metadata !264, null}
!313 = metadata !{i32 151, i32 0, metadata !264, null}
!314 = metadata !{i32 152, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !264, i32 151, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!316 = metadata !{i32 153, i32 0, metadata !315, null}
!317 = metadata !{i32 154, i32 0, metadata !315, null}
!318 = metadata !{i32 155, i32 0, metadata !264, null}
!319 = metadata !{i32 161, i32 0, metadata !264, null}
!320 = metadata !{i32 162, i32 0, metadata !264, null}
!321 = metadata !{i32 164, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !4, i32 163, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!323 = metadata !{i32 166, i32 0, metadata !322, null}
!324 = metadata !{i32 167, i32 0, metadata !322, null}
!325 = metadata !{i32 173, i32 0, metadata !4, null}
!326 = metadata !{i32 175, i32 0, metadata !4, null}
!327 = metadata !{i32 187, i32 0, metadata !170, null}
!328 = metadata !{i32 188, i32 0, metadata !170, null}
!329 = metadata !{i32 190, i32 0, metadata !170, null}
!330 = metadata !{i32 197, i32 0, metadata !170, null}
!331 = metadata !{i32 198, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !170, i32 197, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!333 = metadata !{i32 200, i32 0, metadata !332, null}
!334 = metadata !{i32 207, i32 0, metadata !170, null}
!335 = metadata !{i32 210, i32 0, metadata !170, null}
!336 = metadata !{i32 219, i32 0, metadata !170, null}
!337 = metadata !{i32 211, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !170, i32 210, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!339 = metadata !{i32 212, i32 0, metadata !338, null}
!340 = metadata !{i32 226, i32 0, metadata !170, null}
!341 = metadata !{i32 213, i32 0, metadata !338, null}
!342 = metadata !{i32 225, i32 0, metadata !170, null}
!343 = metadata !{i32 227, i32 0, metadata !170, null}
!344 = metadata !{metadata !"double", metadata !217}
!345 = metadata !{i32 230, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !170, i32 229, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!347 = metadata !{i32 237, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !170, i32 232, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!349 = metadata !{i32 245, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !348, i32 244, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!351 = metadata !{i32 233, i32 0, metadata !348, null}
!352 = metadata !{i32 234, i32 0, metadata !348, null}
!353 = metadata !{i32 244, i32 0, metadata !348, null}
!354 = metadata !{i32 251, i32 0, metadata !348, null}
!355 = metadata !{i32 248, i32 0, metadata !350, null}
!356 = metadata !{i32 249, i32 0, metadata !350, null}
!357 = metadata !{i32 250, i32 0, metadata !348, null}
!358 = metadata !{i32 252, i32 0, metadata !348, null}
!359 = metadata !{i32 254, i32 0, metadata !348, null}
!360 = metadata !{i32 261, i32 0, metadata !348, null}
!361 = metadata !{i32 267, i32 0, metadata !348, null}
!362 = metadata !{i32 268, i32 0, metadata !348, null}
!363 = metadata !{i32 269, i32 0, metadata !348, null}
!364 = metadata !{i32 270, i32 0, metadata !348, null}
!365 = metadata !{i32 271, i32 0, metadata !348, null}
!366 = metadata !{i32 279, i32 0, metadata !348, null}
!367 = metadata !{i32 287, i32 0, metadata !348, null}
!368 = metadata !{i32 289, i32 0, metadata !170, null}
!369 = metadata !{i32 305, i32 0, metadata !185, null}
!370 = metadata !{i32 306, i32 0, metadata !185, null}
!371 = metadata !{i32 307, i32 0, metadata !185, null}
!372 = metadata !{i32 309, i32 0, metadata !185, null}
!373 = metadata !{i32 319, i32 0, metadata !185, null}
!374 = metadata !{i32 320, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !185, i32 319, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!376 = metadata !{i32 322, i32 0, metadata !375, null}
!377 = metadata !{i32 324, i32 0, metadata !185, null}
!378 = metadata !{i32 325, i32 0, metadata !185, null}
!379 = metadata !{i32 331, i32 0, metadata !185, null}
!380 = metadata !{i32 332, i32 0, metadata !185, null}
!381 = metadata !{i32 339, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !185, i32 332, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!383 = metadata !{i32 340, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !382, i32 339, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!385 = metadata !{i32 341, i32 0, metadata !384, null}
!386 = metadata !{i32 342, i32 0, metadata !384, null}
!387 = metadata !{i32 343, i32 0, metadata !382, null}
!388 = metadata !{i32 344, i32 0, metadata !382, null}
!389 = metadata !{i32 345, i32 0, metadata !382, null}
!390 = metadata !{i32 346, i32 0, metadata !382, null}
!391 = metadata !{i32 347, i32 0, metadata !382, null}
!392 = metadata !{i32 349, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !382, i32 347, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!394 = metadata !{i32 348, i32 0, metadata !393, null}
!395 = metadata !{i32 350, i32 0, metadata !393, null}
!396 = metadata !{i32 351, i32 0, metadata !397, null}
!397 = metadata !{i32 786443, metadata !1, metadata !393, i32 350, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!398 = metadata !{i32 352, i32 0, metadata !397, null}
!399 = metadata !{i32 353, i32 0, metadata !397, null}
!400 = metadata !{i32 355, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !393, i32 354, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!402 = metadata !{i32 356, i32 0, metadata !401, null}
!403 = metadata !{i32 359, i32 0, metadata !382, null}
!404 = metadata !{i32 360, i32 0, metadata !382, null}
!405 = metadata !{i32 367, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !185, i32 360, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!407 = metadata !{i32 373, i32 0, metadata !406, null}
!408 = metadata !{i32 374, i32 0, metadata !406, null}
!409 = metadata !{i32 375, i32 0, metadata !406, null}
!410 = metadata !{i32 368, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !406, i32 367, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!412 = metadata !{i32 369, i32 0, metadata !411, null}
!413 = metadata !{i32 370, i32 0, metadata !411, null}
!414 = metadata !{i32 371, i32 0, metadata !411, null}
!415 = metadata !{i32 377, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !417, i32 376, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!417 = metadata !{i32 786443, metadata !1, metadata !406, i32 375, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!418 = metadata !{i32 382, i32 0, metadata !417, null}
!419 = metadata !{i32 406, i32 0, metadata !420, null}
!420 = metadata !{i32 786443, metadata !1, metadata !417, i32 399, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!421 = metadata !{i32 417, i32 0, metadata !417, null}
!422 = metadata !{i32 376, i32 0, metadata !417, null}
!423 = metadata !{i32 381, i32 0, metadata !417, null}
!424 = metadata !{i32 379, i32 0, metadata !416, null}
!425 = metadata !{i32 386, i32 0, metadata !417, null}
!426 = metadata !{i32 380, i32 0, metadata !416, null}
!427 = metadata !{i32 383, i32 0, metadata !417, null}
!428 = metadata !{i32 384, i32 0, metadata !417, null}
!429 = metadata !{i32 385, i32 0, metadata !417, null}
!430 = metadata !{i32 387, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !1, metadata !417, i32 386, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!432 = metadata !{i32 388, i32 0, metadata !431, null}
!433 = metadata !{i32 389, i32 0, metadata !431, null}
!434 = metadata !{i32 390, i32 0, metadata !431, null}
!435 = metadata !{i32 391, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !417, i32 391, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!437 = metadata !{i32 392, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !436, i32 391, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!439 = metadata !{i32 393, i32 0, metadata !438, null}
!440 = metadata !{i32 394, i32 0, metadata !438, null}
!441 = metadata !{i32 395, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !438, i32 394, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!443 = metadata !{i32 396, i32 0, metadata !442, null}
!444 = metadata !{i32 397, i32 0, metadata !442, null}
!445 = metadata !{i32 399, i32 0, metadata !417, null}
!446 = metadata !{i32 405, i32 0, metadata !420, null}
!447 = metadata !{i32 407, i32 0, metadata !420, null}
!448 = metadata !{i32 408, i32 0, metadata !417, null}
!449 = metadata !{i32 409, i32 0, metadata !417, null}
!450 = metadata !{i32 415, i32 0, metadata !417, null}
!451 = metadata !{i32 416, i32 0, metadata !417, null}
!452 = metadata !{i32 418, i32 0, metadata !417, null}
!453 = metadata !{i32 419, i32 0, metadata !417, null}
!454 = metadata !{i32 420, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !417, i32 419, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!456 = metadata !{i32 423, i32 0, metadata !455, null}
!457 = metadata !{i32 424, i32 0, metadata !455, null}
!458 = metadata !{i32 431, i32 0, metadata !406, null}
!459 = metadata !{i32 432, i32 0, metadata !406, null}
!460 = metadata !{i32 433, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !406, i32 433, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!462 = metadata !{i32 435, i32 0, metadata !463, null}
!463 = metadata !{i32 786443, metadata !1, metadata !461, i32 433, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!464 = metadata !{i32 434, i32 0, metadata !463, null}
!465 = metadata !{i32 436, i32 0, metadata !463, null}
!466 = metadata !{i32 437, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !463, i32 436, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!468 = metadata !{i32 438, i32 0, metadata !467, null}
!469 = metadata !{i32 439, i32 0, metadata !467, null}
!470 = metadata !{i32 446, i32 0, metadata !406, null}
!471 = metadata !{i32 447, i32 0, metadata !406, null}
!472 = metadata !{i32 448, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !406, i32 447, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!474 = metadata !{i32 449, i32 0, metadata !473, null}
!475 = metadata !{i32 450, i32 0, metadata !473, null}
!476 = metadata !{i32 451, i32 0, metadata !473, null}
!477 = metadata !{i32 452, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !473, i32 451, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!479 = metadata !{i32 453, i32 0, metadata !478, null}
!480 = metadata !{i32 455, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !406, i32 454, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!482 = metadata !{i32 458, i32 0, metadata !185, null}
!483 = metadata !{i32 473, i32 0, metadata !185, null}
!484 = metadata !{i32 474, i32 0, metadata !185, null}
!485 = metadata !{i32 475, i32 0, metadata !185, null}
!486 = metadata !{i32 459, i32 0, metadata !487, null}
!487 = metadata !{i32 786443, metadata !1, metadata !185, i32 458, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!488 = metadata !{i32 460, i32 0, metadata !487, null}
!489 = metadata !{i32 461, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !487, i32 460, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!491 = metadata !{i32 462, i32 0, metadata !490, null}
!492 = metadata !{i32 463, i32 0, metadata !487, null}
!493 = metadata !{i32 476, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !185, i32 475, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!495 = metadata !{i32 477, i32 0, metadata !494, null}
!496 = metadata !{i32 478, i32 0, metadata !494, null}
!497 = metadata !{i32 479, i32 0, metadata !494, null}
!498 = metadata !{i32 481, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !185, i32 481, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!500 = metadata !{i32 483, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !499, i32 481, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!502 = metadata !{i32 485, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !501, i32 484, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!504 = metadata !{i32 493, i32 0, metadata !501, null}
!505 = metadata !{i32 503, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !501, i32 493, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!507 = metadata !{i32 510, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !506, i32 509, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!509 = metadata !{i32 516, i32 0, metadata !506, null}
!510 = metadata !{i32 517, i32 0, metadata !506, null}
!511 = metadata !{i32 527, i32 0, metadata !501, null}
!512 = metadata !{i32 560, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !501, i32 554, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!514 = metadata !{i32 482, i32 0, metadata !501, null}
!515 = metadata !{i32 484, i32 0, metadata !501, null}
!516 = metadata !{i32 486, i32 0, metadata !503, null}
!517 = metadata !{i32 487, i32 0, metadata !503, null}
!518 = metadata !{i32 494, i32 0, metadata !506, null}
!519 = metadata !{i32 495, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !506, i32 494, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!521 = metadata !{i32 496, i32 0, metadata !520, null}
!522 = metadata !{i32 497, i32 0, metadata !520, null}
!523 = metadata !{i32 504, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !506, i32 503, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!525 = metadata !{i32 507, i32 0, metadata !524, null}
!526 = metadata !{i32 509, i32 0, metadata !506, null}
!527 = metadata !{i32 511, i32 0, metadata !508, null}
!528 = metadata !{i32 512, i32 0, metadata !508, null}
!529 = metadata !{i32 513, i32 0, metadata !508, null}
!530 = metadata !{i32 514, i32 0, metadata !506, null}
!531 = metadata !{i32 515, i32 0, metadata !506, null}
!532 = metadata !{i32 518, i32 0, metadata !533, null}
!533 = metadata !{i32 786443, metadata !1, metadata !506, i32 517, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!534 = metadata !{i32 519, i32 0, metadata !533, null}
!535 = metadata !{i32 520, i32 0, metadata !506, null}
!536 = metadata !{i32 521, i32 0, metadata !506, null}
!537 = metadata !{i32 522, i32 0, metadata !538, null}
!538 = metadata !{i32 786443, metadata !1, metadata !506, i32 521, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!539 = metadata !{i32 523, i32 0, metadata !538, null}
!540 = metadata !{i32 524, i32 0, metadata !538, null}
!541 = metadata !{i32 526, i32 0, metadata !501, null}
!542 = metadata !{i32 528, i32 0, metadata !501, null}
!543 = metadata !{i32 529, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !501, i32 529, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!545 = metadata !{%struct._IP* null}
!546 = metadata !{i32 531, i32 0, metadata !544, null}
!547 = metadata !{i32 532, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !544, i32 531, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!549 = metadata !{i32 534, i32 0, metadata !501, null}
!550 = metadata !{i32 535, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !501, i32 534, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!552 = metadata !{i32 536, i32 0, metadata !551, null}
!553 = metadata !{i32 537, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !501, i32 536, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!555 = metadata !{i32 539, i32 0, metadata !501, null}
!556 = metadata !{i32 540, i32 0, metadata !501, null}
!557 = metadata !{i32 541, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !1, metadata !501, i32 540, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!559 = metadata !{i32 542, i32 0, metadata !558, null}
!560 = metadata !{i32 543, i32 0, metadata !558, null}
!561 = metadata !{i32 550, i32 0, metadata !501, null}
!562 = metadata !{i32 551, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !1, metadata !501, i32 550, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!564 = metadata !{i32 552, i32 0, metadata !563, null}
!565 = metadata !{i32 553, i32 0, metadata !563, null}
!566 = metadata !{i32 554, i32 0, metadata !501, null}
!567 = metadata !{i32 556, i32 0, metadata !513, null}
!568 = metadata !{i32 557, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !513, i32 556, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!570 = metadata !{i32 558, i32 0, metadata !569, null}
!571 = metadata !{i32 559, i32 0, metadata !569, null}
!572 = metadata !{i32 563, i32 0, metadata !513, null}
!573 = metadata !{i32 564, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !513, i32 563, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_eliminate.c]
!575 = metadata !{i32 565, i32 0, metadata !574, null}
!576 = metadata !{i32 566, i32 0, metadata !574, null}
!577 = metadata !{i32 567, i32 0, metadata !574, null}
!578 = metadata !{i32 568, i32 0, metadata !513, null}
!579 = metadata !{i32 569, i32 0, metadata !513, null}
!580 = metadata !{i32 575, i32 0, metadata !513, null}
!581 = metadata !{i32 578, i32 0, metadata !513, null}
!582 = metadata !{i32 579, i32 0, metadata !513, null}
!583 = metadata !{i32 587, i32 0, metadata !501, null}
!584 = metadata !{i32 588, i32 0, metadata !501, null}
!585 = metadata !{i32 595, i32 0, metadata !185, null}
!586 = metadata !{i32 596, i32 0, metadata !185, null}
!587 = metadata !{i32 598, i32 0, metadata !185, null}
