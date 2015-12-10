; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [61 x i8] c"\0A fatal error in ETree_transform(%p,%p,%d,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"\0A fatal error in ETree_transform2(%p,%p,%d,%d,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ETree_mergeFrontsOne(%p,%d,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [83 x i8] c"\0A fatal error in ETree_mergeFrontsOne(%p,%d,%p)\0A size(nzerosIV) = %d, nfront = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ETree_mergeFrontsAll(%p,%d,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [25 x i8] c"\0A nfront = %d, nvtx = %d\00", align 1
@.str6 = private unnamed_addr constant [83 x i8] c"\0A fatal error in ETree_mergeFrontsAll(%p,%d,%p)\0A size(nzerosIV) = %d, nfront = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_mergeFrontsAny(%p,%d)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [83 x i8] c"\0A fatal error in ETree_mergeFrontsAny(%p,%d,%p)\0A size(nzerosIV) = %d, nfront = %d\0A\00", align 1
@.str9 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ETree_splitFronts(%p,%p,%d,%d)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [83 x i8] c"\0A fatal error in ETree_splitFronts(%p,%p,%d,%d)\0A J = %d, sizeJ = %d, nodwght = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_transform(%struct._ETree* %etree, i32* %vwghts, i32 %maxzeros, i32 %maxfrontsize, i32 %seed) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !41), !dbg !195
  tail call void @llvm.dbg.value(metadata !{i32* %vwghts}, i64 0, metadata !42), !dbg !196
  tail call void @llvm.dbg.value(metadata !{i32 %maxzeros}, i64 0, metadata !43), !dbg !197
  tail call void @llvm.dbg.value(metadata !{i32 %maxfrontsize}, i64 0, metadata !44), !dbg !198
  tail call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !45), !dbg !199
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !200
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !200

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !200
  %0 = load i32* %nfront1, align 4, !dbg !200, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !47), !dbg !200
  %cmp2 = icmp slt i32 %0, 1, !dbg !200
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !200

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !200
  %1 = load i32* %nvtx4, align 4, !dbg !200, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !48), !dbg !200
  %cmp5 = icmp slt i32 %1, 1, !dbg !200
  %cmp7 = icmp slt i32 %maxfrontsize, 1, !dbg !200
  %or.cond = or i1 %cmp5, %cmp7, !dbg !200
  br i1 %or.cond, label %if.then, label %if.end, !dbg !200

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !204, !tbaa !206
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree, i32* %vwghts, i32 %maxzeros, i32 %maxfrontsize, i32 %seed) #5, !dbg !204
  tail call void @exit(i32 -1) #6, !dbg !207
  unreachable, !dbg !207

if.end:                                           ; preds = %lor.lhs.false3
  %call8 = tail call %struct._IV* @IV_new() #5, !dbg !208
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call8}, i64 0, metadata !49), !dbg !208
  tail call void @IV_init(%struct._IV* %call8, i32 %0, i32* null) #5, !dbg !209
  tail call void @IV_fill(%struct._IV* %call8, i32 0) #5, !dbg !210
  %call9 = tail call %struct._ETree* @ETree_mergeFrontsOne(%struct._ETree* %etree, i32 %maxzeros, %struct._IV* %call8) #7, !dbg !211
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call9}, i64 0, metadata !46), !dbg !211
  tail call void @ETree_free(%struct._ETree* %etree) #5, !dbg !212
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call9}, i64 0, metadata !41), !dbg !213
  %call10 = tail call %struct._ETree* @ETree_mergeFrontsAll(%struct._ETree* %call9, i32 %maxzeros, %struct._IV* %call8) #7, !dbg !214
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call10}, i64 0, metadata !46), !dbg !214
  tail call void @ETree_free(%struct._ETree* %call9) #5, !dbg !215
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call10}, i64 0, metadata !41), !dbg !216
  %call11 = tail call %struct._ETree* @ETree_mergeFrontsAny(%struct._ETree* %call10, i32 %maxzeros, %struct._IV* %call8) #7, !dbg !217
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call11}, i64 0, metadata !46), !dbg !217
  tail call void @ETree_free(%struct._ETree* %call10) #5, !dbg !218
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call11}, i64 0, metadata !41), !dbg !219
  %call12 = tail call %struct._ETree* @ETree_splitFronts(%struct._ETree* %call11, i32* %vwghts, i32 %maxfrontsize, i32 %seed) #7, !dbg !220
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call12}, i64 0, metadata !46), !dbg !220
  tail call void @ETree_free(%struct._ETree* %call11) #5, !dbg !221
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call12}, i64 0, metadata !41), !dbg !222
  tail call void @IV_free(%struct._IV* %call8) #5, !dbg !223
  ret %struct._ETree* %call12, !dbg !224
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_mergeFrontsOne(%struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !65), !dbg !225
  tail call void @llvm.dbg.value(metadata !{i32 %maxzeros}, i64 0, metadata !66), !dbg !226
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %nzerosIV}, i64 0, metadata !67), !dbg !227
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !228
  %cmp1 = icmp eq %struct._IV* %nzerosIV, null, !dbg !228
  %or.cond = or i1 %cmp, %cmp1, !dbg !228
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !228

lor.lhs.false2:                                   ; preds = %entry
  %nfront3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !228
  %0 = load i32* %nfront3, align 4, !dbg !228, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !72), !dbg !228
  %cmp4 = icmp slt i32 %0, 1, !dbg !228
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !228

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %nvtx6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !228
  %1 = load i32* %nvtx6, align 4, !dbg !228, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !73), !dbg !228
  %cmp7 = icmp slt i32 %1, 1, !dbg !228
  br i1 %cmp7, label %if.then, label %if.end, !dbg !228

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !229, !tbaa !206
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV) #5, !dbg !229
  tail call void @exit(i32 -1) #6, !dbg !231
  unreachable, !dbg !231

if.end:                                           ; preds = %lor.lhs.false5
  %call8 = tail call i32 @IV_size(%struct._IV* %nzerosIV) #5, !dbg !232
  %cmp9 = icmp eq i32 %call8, %0, !dbg !232
  br i1 %cmp9, label %if.end13, label %if.then10, !dbg !232

if.then10:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !233, !tbaa !206
  %call11 = tail call i32 @IV_size(%struct._IV* %nzerosIV) #5, !dbg !235
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([83 x i8]* @.str3, i64 0, i64 0), %struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV, i32 %call11, i32 %0) #5, !dbg !235
  tail call void @exit(i32 -1) #6, !dbg !236
  unreachable, !dbg !236

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32* @IV_entries(%struct._IV* %nzerosIV) #5, !dbg !237
  tail call void @llvm.dbg.value(metadata !{i32* %call14}, i64 0, metadata !79), !dbg !237
  %tree15 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !238
  %4 = load %struct._Tree** %tree15, align 8, !dbg !238, !tbaa !206
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %4}, i64 0, metadata !84), !dbg !238
  %call16 = tail call i32* @ETree_fch(%struct._ETree* %etree) #5, !dbg !239
  tail call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !76), !dbg !239
  %call17 = tail call i32* @ETree_sib(%struct._ETree* %etree) #5, !dbg !240
  tail call void @llvm.dbg.value(metadata !{i32* %call17}, i64 0, metadata !81), !dbg !240
  %call18 = tail call i32* @IVinit(i32 %0, i32 0) #5, !dbg !241
  tail call void @llvm.dbg.value(metadata !{i32* %call18}, i64 0, metadata !78), !dbg !241
  %call19 = tail call i32* @ETree_nodwghts(%struct._ETree* %etree) #5, !dbg !242
  tail call void @IVcopy(i32 %0, i32* %call18, i32* %call19) #5, !dbg !242
  %call20 = tail call i32* @ETree_bndwghts(%struct._ETree* %etree) #5, !dbg !243
  tail call void @llvm.dbg.value(metadata !{i32* %call20}, i64 0, metadata !75), !dbg !243
  %call21 = tail call i32* @IVinit(i32 %0, i32 -1) #5, !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32* %call21}, i64 0, metadata !80), !dbg !244
  tail call void @IVramp(i32 %0, i32* %call21, i32 0, i32 1) #5, !dbg !245
  %call22 = tail call i32 @Tree_postOTfirst(%struct._Tree* %4) #5, !dbg !246
  tail call void @llvm.dbg.value(metadata !{i32 %call22}, i64 0, metadata !71), !dbg !246
  %cmp23215 = icmp eq i32 %call22, -1, !dbg !246
  br i1 %cmp23215, label %for.end, label %for.body, !dbg !246

for.body:                                         ; preds = %if.end13, %for.inc
  %K.0216 = phi i32 [ %call56, %for.inc ], [ %call22, %if.end13 ]
  %idxprom = sext i32 %K.0216 to i64, !dbg !248
  %arrayidx = getelementptr inbounds i32* %call16, i64 %idxprom, !dbg !248
  %5 = load i32* %arrayidx, align 4, !dbg !248, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !70), !dbg !248
  %cmp24 = icmp eq i32 %5, -1, !dbg !248
  br i1 %cmp24, label %for.inc, label %land.lhs.true, !dbg !248

land.lhs.true:                                    ; preds = %for.body
  %idxprom25 = sext i32 %5 to i64, !dbg !248
  %arrayidx26 = getelementptr inbounds i32* %call17, i64 %idxprom25, !dbg !248
  %6 = load i32* %arrayidx26, align 4, !dbg !248, !tbaa !201
  %cmp27 = icmp eq i32 %6, -1, !dbg !248
  br i1 %cmp27, label %if.then28, label %for.inc, !dbg !248

if.then28:                                        ; preds = %land.lhs.true
  %arrayidx30 = getelementptr inbounds i32* %call18, i64 %idxprom25, !dbg !250
  %7 = load i32* %arrayidx30, align 4, !dbg !250, !tbaa !201
  %arrayidx32 = getelementptr inbounds i32* %call18, i64 %idxprom, !dbg !250
  %8 = load i32* %arrayidx32, align 4, !dbg !250, !tbaa !201
  %arrayidx34 = getelementptr inbounds i32* %call20, i64 %idxprom, !dbg !250
  %9 = load i32* %arrayidx34, align 4, !dbg !250, !tbaa !201
  %add = add nsw i32 %9, %8, !dbg !250
  %arrayidx36 = getelementptr inbounds i32* %call20, i64 %idxprom25, !dbg !250
  %10 = load i32* %arrayidx36, align 4, !dbg !250, !tbaa !201
  %sub = sub i32 %add, %10, !dbg !250
  %mul = mul nsw i32 %sub, %7, !dbg !250
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !69), !dbg !250
  %arrayidx38 = getelementptr inbounds i32* %call14, i64 %idxprom25, !dbg !252
  %11 = load i32* %arrayidx38, align 4, !dbg !252, !tbaa !201
  %add39 = add nsw i32 %mul, %11, !dbg !252
  %cmp40 = icmp sgt i32 %add39, %maxzeros, !dbg !252
  br i1 %cmp40, label %for.inc, label %if.then41, !dbg !252

if.then41:                                        ; preds = %if.then28
  %arrayidx43 = getelementptr inbounds i32* %call21, i64 %idxprom25, !dbg !253
  store i32 %K.0216, i32* %arrayidx43, align 4, !dbg !253, !tbaa !201
  %12 = load i32* %arrayidx30, align 4, !dbg !255, !tbaa !201
  %13 = load i32* %arrayidx32, align 4, !dbg !255, !tbaa !201
  %add48 = add nsw i32 %13, %12, !dbg !255
  store i32 %add48, i32* %arrayidx32, align 4, !dbg !255, !tbaa !201
  %14 = load i32* %arrayidx38, align 4, !dbg !256, !tbaa !201
  %add51 = add nsw i32 %14, %mul, !dbg !256
  %arrayidx53 = getelementptr inbounds i32* %call14, i64 %idxprom, !dbg !256
  store i32 %add51, i32* %arrayidx53, align 4, !dbg !256, !tbaa !201
  br label %for.inc, !dbg !257

for.inc:                                          ; preds = %if.then28, %for.body, %land.lhs.true, %if.then41
  %call56 = tail call i32 @Tree_postOTnext(%struct._Tree* %4, i32 %K.0216) #5, !dbg !258
  tail call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !71), !dbg !258
  %cmp23 = icmp eq i32 %call56, -1, !dbg !246
  br i1 %cmp23, label %for.end, label %for.body, !dbg !246

for.end:                                          ; preds = %for.inc, %if.end13
  %call57 = tail call %struct._IV* @IV_new() #5, !dbg !259
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call57}, i64 0, metadata !83), !dbg !259
  tail call void @IV_init(%struct._IV* %call57, i32 %0, i32* null) #5, !dbg !260
  %call58 = tail call i32* @IV_entries(%struct._IV* %call57) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata !{i32* %call58}, i64 0, metadata !77), !dbg !261
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !70), !dbg !262
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !74), !dbg !262
  %cmp60212 = icmp sgt i32 %0, 0, !dbg !262
  br i1 %cmp60212, label %for.body61, label %for.end93, !dbg !262

for.cond79.preheader:                             ; preds = %for.inc76
  br i1 %cmp60212, label %for.body81, label %for.end93, !dbg !264

for.body61:                                       ; preds = %for.end, %for.inc76
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %for.inc76 ], [ 0, %for.end ]
  %J.0214 = phi i32 [ %inc77, %for.inc76 ], [ 0, %for.end ]
  %nnew.0213 = phi i32 [ %nnew.1, %for.inc76 ], [ 0, %for.end ]
  %arrayidx63 = getelementptr inbounds i32* %call21, i64 %indvars.iv221, !dbg !266
  %15 = load i32* %arrayidx63, align 4, !dbg !266, !tbaa !201
  %16 = trunc i64 %indvars.iv221 to i32, !dbg !266
  %cmp64 = icmp eq i32 %15, %16, !dbg !266
  br i1 %cmp64, label %if.then65, label %while.cond, !dbg !266

if.then65:                                        ; preds = %for.body61
  %inc = add nsw i32 %nnew.0213, 1, !dbg !268
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !74), !dbg !268
  %arrayidx67 = getelementptr inbounds i32* %call58, i64 %indvars.iv221, !dbg !268
  store i32 %nnew.0213, i32* %arrayidx67, align 4, !dbg !268, !tbaa !201
  br label %for.inc76, !dbg !270

while.cond:                                       ; preds = %for.body61, %while.cond
  %K.1 = phi i32 [ %17, %while.cond ], [ %J.0214, %for.body61 ]
  %idxprom68 = sext i32 %K.1 to i64, !dbg !271
  %arrayidx69 = getelementptr inbounds i32* %call21, i64 %idxprom68, !dbg !271
  %17 = load i32* %arrayidx69, align 4, !dbg !271, !tbaa !201
  %cmp70 = icmp eq i32 %17, %K.1, !dbg !271
  br i1 %cmp70, label %while.end, label %while.cond, !dbg !271

while.end:                                        ; preds = %while.cond
  store i32 %K.1, i32* %arrayidx63, align 4, !dbg !273, !tbaa !201
  br label %for.inc76

for.inc76:                                        ; preds = %if.then65, %while.end
  %nnew.1 = phi i32 [ %inc, %if.then65 ], [ %nnew.0213, %while.end ]
  %indvars.iv.next222 = add i64 %indvars.iv221, 1, !dbg !262
  %inc77 = add nsw i32 %J.0214, 1, !dbg !262
  tail call void @llvm.dbg.value(metadata !{i32 %inc77}, i64 0, metadata !70), !dbg !262
  %lftr.wideiv223 = trunc i64 %indvars.iv.next222 to i32, !dbg !262
  %exitcond224 = icmp eq i32 %lftr.wideiv223, %0, !dbg !262
  br i1 %exitcond224, label %for.cond79.preheader, label %for.body61, !dbg !262

for.body81:                                       ; preds = %for.cond79.preheader, %for.inc91
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %for.inc91 ], [ 0, %for.cond79.preheader ]
  %arrayidx83 = getelementptr inbounds i32* %call21, i64 %indvars.iv217, !dbg !274
  %18 = load i32* %arrayidx83, align 4, !dbg !274, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !71), !dbg !274
  %19 = trunc i64 %indvars.iv217 to i32, !dbg !274
  %cmp84 = icmp eq i32 %18, %19, !dbg !274
  br i1 %cmp84, label %for.inc91, label %if.then85, !dbg !274

if.then85:                                        ; preds = %for.body81
  %idxprom86 = sext i32 %18 to i64, !dbg !276
  %arrayidx87 = getelementptr inbounds i32* %call58, i64 %idxprom86, !dbg !276
  %20 = load i32* %arrayidx87, align 4, !dbg !276, !tbaa !201
  %arrayidx89 = getelementptr inbounds i32* %call58, i64 %indvars.iv217, !dbg !276
  store i32 %20, i32* %arrayidx89, align 4, !dbg !276, !tbaa !201
  br label %for.inc91, !dbg !278

for.inc91:                                        ; preds = %for.body81, %if.then85
  %indvars.iv.next218 = add i64 %indvars.iv217, 1, !dbg !264
  %lftr.wideiv219 = trunc i64 %indvars.iv.next218 to i32, !dbg !264
  %exitcond220 = icmp eq i32 %lftr.wideiv219, %0, !dbg !264
  br i1 %exitcond220, label %for.end93, label %for.body81, !dbg !264

for.end93:                                        ; preds = %for.end, %for.inc91, %for.cond79.preheader
  %nnew.0.lcssa225 = phi i32 [ %nnew.1, %for.cond79.preheader ], [ %nnew.1, %for.inc91 ], [ 0, %for.end ]
  %call94 = tail call %struct._ETree* @ETree_compress(%struct._ETree* %etree, %struct._IV* %call57) #5, !dbg !279
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call94}, i64 0, metadata !68), !dbg !279
  %call95 = tail call i32* @IVinit(i32 %0, i32 0) #5, !dbg !280
  tail call void @llvm.dbg.value(metadata !{i32* %call95}, i64 0, metadata !82), !dbg !280
  tail call void @IVcopy(i32 %0, i32* %call95, i32* %call14) #5, !dbg !281
  tail call void @IV_setSize(%struct._IV* %nzerosIV, i32 %nnew.0.lcssa225) #5, !dbg !282
  %call96 = tail call i32* @IV_entries(%struct._IV* %nzerosIV) #5, !dbg !283
  tail call void @llvm.dbg.value(metadata !{i32* %call96}, i64 0, metadata !79), !dbg !283
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !70), !dbg !284
  br i1 %cmp60212, label %for.body99, label %for.end113, !dbg !284

for.body99:                                       ; preds = %for.end93, %for.inc111
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc111 ], [ 0, %for.end93 ]
  %arrayidx101 = getelementptr inbounds i32* %call21, i64 %indvars.iv, !dbg !286
  %21 = load i32* %arrayidx101, align 4, !dbg !286, !tbaa !201
  %22 = trunc i64 %indvars.iv to i32, !dbg !286
  %cmp102 = icmp eq i32 %21, %22, !dbg !286
  br i1 %cmp102, label %if.then103, label %for.inc111, !dbg !286

if.then103:                                       ; preds = %for.body99
  %arrayidx105 = getelementptr inbounds i32* %call95, i64 %indvars.iv, !dbg !288
  %23 = load i32* %arrayidx105, align 4, !dbg !288, !tbaa !201
  %arrayidx107 = getelementptr inbounds i32* %call58, i64 %indvars.iv, !dbg !288
  %24 = load i32* %arrayidx107, align 4, !dbg !288, !tbaa !201
  %idxprom108 = sext i32 %24 to i64, !dbg !288
  %arrayidx109 = getelementptr inbounds i32* %call96, i64 %idxprom108, !dbg !288
  store i32 %23, i32* %arrayidx109, align 4, !dbg !288, !tbaa !201
  br label %for.inc111, !dbg !290

for.inc111:                                       ; preds = %for.body99, %if.then103
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !284
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !284
  %exitcond = icmp eq i32 %lftr.wideiv, %0, !dbg !284
  br i1 %exitcond, label %for.end113, label %for.body99, !dbg !284

for.end113:                                       ; preds = %for.inc111, %for.end93
  tail call void @IVfree(i32* %call95) #5, !dbg !291
  tail call void @IVfree(i32* %call18) #5, !dbg !292
  tail call void @IVfree(i32* %call21) #5, !dbg !293
  tail call void @IV_free(%struct._IV* %call57) #5, !dbg !294
  ret %struct._ETree* %call94, !dbg !295
}

; Function Attrs: optsize
declare void @ETree_free(%struct._ETree*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_mergeFrontsAll(%struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !87), !dbg !296
  tail call void @llvm.dbg.value(metadata !{i32 %maxzeros}, i64 0, metadata !88), !dbg !297
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %nzerosIV}, i64 0, metadata !89), !dbg !298
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !299
  %cmp1 = icmp eq %struct._IV* %nzerosIV, null, !dbg !299
  %or.cond = or i1 %cmp, %cmp1, !dbg !299
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !299

lor.lhs.false2:                                   ; preds = %entry
  %nfront3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !299
  %0 = load i32* %nfront3, align 4, !dbg !299, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !96), !dbg !299
  %cmp4 = icmp slt i32 %0, 1, !dbg !299
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !299

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %nvtx6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !299
  %1 = load i32* %nvtx6, align 4, !dbg !299, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !97), !dbg !299
  %cmp7 = icmp slt i32 %1, 1, !dbg !299
  br i1 %cmp7, label %if.then, label %if.end13, !dbg !299

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !300, !tbaa !206
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV) #5, !dbg !300
  br i1 %cmp, label %if.end, label %if.then9, !dbg !302

if.then9:                                         ; preds = %if.then
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !303, !tbaa !206
  %nfront10 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !303
  %4 = load i32* %nfront10, align 4, !dbg !303, !tbaa !201
  %nvtx11 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !303
  %5 = load i32* %nvtx11, align 4, !dbg !303, !tbaa !201
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([25 x i8]* @.str5, i64 0, i64 0), i32 %4, i32 %5) #5, !dbg !303
  br label %if.end, !dbg !305

if.end:                                           ; preds = %if.then, %if.then9
  tail call void @exit(i32 -1) #6, !dbg !306
  unreachable, !dbg !306

if.end13:                                         ; preds = %lor.lhs.false5
  %call14 = tail call i32 @IV_size(%struct._IV* %nzerosIV) #5, !dbg !307
  %cmp15 = icmp eq i32 %call14, %0, !dbg !307
  br i1 %cmp15, label %if.end19, label %if.then16, !dbg !307

if.then16:                                        ; preds = %if.end13
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !308, !tbaa !206
  %call17 = tail call i32 @IV_size(%struct._IV* %nzerosIV) #5, !dbg !310
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([83 x i8]* @.str6, i64 0, i64 0), %struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV, i32 %call17, i32 %0) #5, !dbg !310
  tail call void @exit(i32 -1) #6, !dbg !311
  unreachable, !dbg !311

if.end19:                                         ; preds = %if.end13
  %call20 = tail call i32* @IV_entries(%struct._IV* %nzerosIV) #5, !dbg !312
  tail call void @llvm.dbg.value(metadata !{i32* %call20}, i64 0, metadata !103), !dbg !312
  %tree21 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !313
  %7 = load %struct._Tree** %tree21, align 8, !dbg !313, !tbaa !206
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %7}, i64 0, metadata !108), !dbg !313
  %call22 = tail call i32* @ETree_fch(%struct._ETree* %etree) #5, !dbg !314
  tail call void @llvm.dbg.value(metadata !{i32* %call22}, i64 0, metadata !100), !dbg !314
  %call23 = tail call i32* @ETree_sib(%struct._ETree* %etree) #5, !dbg !315
  tail call void @llvm.dbg.value(metadata !{i32* %call23}, i64 0, metadata !105), !dbg !315
  %call24 = tail call i32* @IVinit(i32 %0, i32 0) #5, !dbg !316
  tail call void @llvm.dbg.value(metadata !{i32* %call24}, i64 0, metadata !102), !dbg !316
  %call25 = tail call i32* @ETree_nodwghts(%struct._ETree* %etree) #5, !dbg !317
  tail call void @IVcopy(i32 %0, i32* %call24, i32* %call25) #5, !dbg !317
  %call26 = tail call i32* @ETree_bndwghts(%struct._ETree* %etree) #5, !dbg !318
  tail call void @llvm.dbg.value(metadata !{i32* %call26}, i64 0, metadata !99), !dbg !318
  %call27 = tail call i32* @IVinit(i32 %0, i32 -1) #5, !dbg !319
  tail call void @llvm.dbg.value(metadata !{i32* %call27}, i64 0, metadata !104), !dbg !319
  tail call void @IVramp(i32 %0, i32* %call27, i32 0, i32 1) #5, !dbg !320
  %call28 = tail call i32 @Tree_postOTfirst(%struct._Tree* %7) #5, !dbg !321
  tail call void @llvm.dbg.value(metadata !{i32 %call28}, i64 0, metadata !94), !dbg !321
  %cmp29284 = icmp eq i32 %call28, -1, !dbg !321
  br i1 %cmp29284, label %for.end91, label %for.body, !dbg !321

for.body:                                         ; preds = %if.end19, %for.inc89
  %K.0285 = phi i32 [ %call90, %for.inc89 ], [ %call28, %if.end19 ]
  %idxprom = sext i32 %K.0285 to i64, !dbg !323
  %arrayidx = getelementptr inbounds i32* %call22, i64 %idxprom, !dbg !323
  %8 = load i32* %arrayidx, align 4, !dbg !323, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !92), !dbg !323
  %cmp30 = icmp eq i32 %8, -1, !dbg !323
  br i1 %cmp30, label %for.inc89, label %for.body42.lr.ph, !dbg !323

for.body42.lr.ph:                                 ; preds = %for.body
  %arrayidx33 = getelementptr inbounds i32* %call24, i64 %idxprom, !dbg !325
  %9 = load i32* %arrayidx33, align 4, !dbg !325, !tbaa !201
  %arrayidx35 = getelementptr inbounds i32* %call26, i64 %idxprom, !dbg !325
  %10 = load i32* %arrayidx35, align 4, !dbg !325, !tbaa !201
  %add = add nsw i32 %10, %9, !dbg !325
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !95), !dbg !325
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !93), !dbg !327
  %arrayidx37 = getelementptr inbounds i32* %call20, i64 %idxprom, !dbg !328
  %11 = load i32* %arrayidx37, align 4, !dbg !328, !tbaa !201
  %mul = shl nsw i32 %11, 1, !dbg !328
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !91), !dbg !328
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !92), !dbg !329
  br label %for.body42, !dbg !329

for.body42:                                       ; preds = %for.body42.lr.ph, %for.body42
  %cost.0278 = phi i32 [ %mul, %for.body42.lr.ph ], [ %add62, %for.body42 ]
  %J.0277 = phi i32 [ %8, %for.body42.lr.ph ], [ %15, %for.body42 ]
  %Jall.0276 = phi i32 [ 0, %for.body42.lr.ph ], [ %add45, %for.body42 ]
  %idxprom43 = sext i32 %J.0277 to i64, !dbg !331
  %arrayidx44 = getelementptr inbounds i32* %call24, i64 %idxprom43, !dbg !331
  %12 = load i32* %arrayidx44, align 4, !dbg !331, !tbaa !201
  %add45 = add nsw i32 %12, %Jall.0276, !dbg !331
  tail call void @llvm.dbg.value(metadata !{i32 %add45}, i64 0, metadata !93), !dbg !331
  %mul50 = mul nsw i32 %12, %12, !dbg !333
  %arrayidx55 = getelementptr inbounds i32* %call26, i64 %idxprom43, !dbg !334
  %13 = load i32* %arrayidx55, align 4, !dbg !334, !tbaa !201
  %sub56 = sub i32 %add, %13, !dbg !334
  %mul57 = mul i32 %sub56, %12, !dbg !334
  tail call void @llvm.dbg.value(metadata !{i32 %add58}, i64 0, metadata !91), !dbg !334
  %arrayidx60 = getelementptr inbounds i32* %call20, i64 %idxprom43, !dbg !335
  %14 = load i32* %arrayidx60, align 4, !dbg !335, !tbaa !201
  %tmp = add i32 %mul57, %14
  %tmp267 = shl i32 %tmp, 1
  %add58 = sub i32 %cost.0278, %mul50, !dbg !334
  %add62 = add i32 %add58, %tmp267, !dbg !335
  tail call void @llvm.dbg.value(metadata !{i32 %add62}, i64 0, metadata !91), !dbg !335
  %arrayidx64 = getelementptr inbounds i32* %call23, i64 %idxprom43, !dbg !329
  %15 = load i32* %arrayidx64, align 4, !dbg !329, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !92), !dbg !329
  %cmp41 = icmp eq i32 %15, -1, !dbg !329
  br i1 %cmp41, label %for.end, label %for.body42, !dbg !329

for.end:                                          ; preds = %for.body42
  %mul65 = mul nsw i32 %add45, %add45, !dbg !336
  %add66 = add nsw i32 %add62, %mul65, !dbg !336
  tail call void @llvm.dbg.value(metadata !{i32 %add66}, i64 0, metadata !91), !dbg !336
  %div = sdiv i32 %add66, 2, !dbg !337
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !91), !dbg !337
  %cmp67 = icmp sgt i32 %div, %maxzeros, !dbg !338
  br i1 %cmp67, label %for.inc89, label %for.body73, !dbg !338

for.body73:                                       ; preds = %for.end, %for.body73
  %J.1283 = phi i32 [ %J.1, %for.body73 ], [ %8, %for.end ]
  %idxprom74 = sext i32 %J.1283 to i64, !dbg !339
  %arrayidx75 = getelementptr inbounds i32* %call27, i64 %idxprom74, !dbg !339
  store i32 %K.0285, i32* %arrayidx75, align 4, !dbg !339, !tbaa !201
  %arrayidx77 = getelementptr inbounds i32* %call24, i64 %idxprom74, !dbg !343
  %16 = load i32* %arrayidx77, align 4, !dbg !343, !tbaa !201
  %17 = load i32* %arrayidx33, align 4, !dbg !343, !tbaa !201
  %add80 = add nsw i32 %17, %16, !dbg !343
  store i32 %add80, i32* %arrayidx33, align 4, !dbg !343, !tbaa !201
  %arrayidx83 = getelementptr inbounds i32* %call23, i64 %idxprom74, !dbg !344
  %J.1 = load i32* %arrayidx83, align 4, !dbg !344
  %cmp72 = icmp eq i32 %J.1, -1, !dbg !344
  br i1 %cmp72, label %for.end84, label %for.body73, !dbg !344

for.end84:                                        ; preds = %for.body73
  store i32 %div, i32* %arrayidx37, align 4, !dbg !345, !tbaa !201
  br label %for.inc89, !dbg !346

for.inc89:                                        ; preds = %for.end, %for.body, %for.end84
  %call90 = tail call i32 @Tree_postOTnext(%struct._Tree* %7, i32 %K.0285) #5, !dbg !347
  tail call void @llvm.dbg.value(metadata !{i32 %call90}, i64 0, metadata !94), !dbg !347
  %cmp29 = icmp eq i32 %call90, -1, !dbg !321
  br i1 %cmp29, label %for.end91, label %for.body, !dbg !321

for.end91:                                        ; preds = %for.inc89, %if.end19
  %call92 = tail call %struct._IV* @IV_new() #5, !dbg !348
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call92}, i64 0, metadata !107), !dbg !348
  tail call void @IV_init(%struct._IV* %call92, i32 %0, i32* null) #5, !dbg !349
  %call93 = tail call i32* @IV_entries(%struct._IV* %call92) #5, !dbg !350
  tail call void @llvm.dbg.value(metadata !{i32* %call93}, i64 0, metadata !101), !dbg !350
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !351
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !98), !dbg !351
  %cmp95272 = icmp sgt i32 %0, 0, !dbg !351
  br i1 %cmp95272, label %for.body96, label %for.end128, !dbg !351

for.cond114.preheader:                            ; preds = %for.inc111
  br i1 %cmp95272, label %for.body116, label %for.end128, !dbg !353

for.body96:                                       ; preds = %for.end91, %for.inc111
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %for.inc111 ], [ 0, %for.end91 ]
  %J.2274 = phi i32 [ %inc112, %for.inc111 ], [ 0, %for.end91 ]
  %nnew.0273 = phi i32 [ %nnew.1, %for.inc111 ], [ 0, %for.end91 ]
  %arrayidx98 = getelementptr inbounds i32* %call27, i64 %indvars.iv290, !dbg !355
  %18 = load i32* %arrayidx98, align 4, !dbg !355, !tbaa !201
  %19 = trunc i64 %indvars.iv290 to i32, !dbg !355
  %cmp99 = icmp eq i32 %18, %19, !dbg !355
  br i1 %cmp99, label %if.then100, label %while.cond, !dbg !355

if.then100:                                       ; preds = %for.body96
  %inc = add nsw i32 %nnew.0273, 1, !dbg !357
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !98), !dbg !357
  %arrayidx102 = getelementptr inbounds i32* %call93, i64 %indvars.iv290, !dbg !357
  store i32 %nnew.0273, i32* %arrayidx102, align 4, !dbg !357, !tbaa !201
  br label %for.inc111, !dbg !359

while.cond:                                       ; preds = %for.body96, %while.cond
  %K.1 = phi i32 [ %20, %while.cond ], [ %J.2274, %for.body96 ]
  %idxprom103 = sext i32 %K.1 to i64, !dbg !360
  %arrayidx104 = getelementptr inbounds i32* %call27, i64 %idxprom103, !dbg !360
  %20 = load i32* %arrayidx104, align 4, !dbg !360, !tbaa !201
  %cmp105 = icmp eq i32 %20, %K.1, !dbg !360
  br i1 %cmp105, label %while.end, label %while.cond, !dbg !360

while.end:                                        ; preds = %while.cond
  store i32 %K.1, i32* %arrayidx98, align 4, !dbg !362, !tbaa !201
  br label %for.inc111

for.inc111:                                       ; preds = %if.then100, %while.end
  %nnew.1 = phi i32 [ %inc, %if.then100 ], [ %nnew.0273, %while.end ]
  %indvars.iv.next291 = add i64 %indvars.iv290, 1, !dbg !351
  %inc112 = add nsw i32 %J.2274, 1, !dbg !351
  tail call void @llvm.dbg.value(metadata !{i32 %inc112}, i64 0, metadata !92), !dbg !351
  %lftr.wideiv292 = trunc i64 %indvars.iv.next291 to i32, !dbg !351
  %exitcond293 = icmp eq i32 %lftr.wideiv292, %0, !dbg !351
  br i1 %exitcond293, label %for.cond114.preheader, label %for.body96, !dbg !351

for.body116:                                      ; preds = %for.cond114.preheader, %for.inc126
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %for.inc126 ], [ 0, %for.cond114.preheader ]
  %arrayidx118 = getelementptr inbounds i32* %call27, i64 %indvars.iv286, !dbg !363
  %21 = load i32* %arrayidx118, align 4, !dbg !363, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !94), !dbg !363
  %22 = trunc i64 %indvars.iv286 to i32, !dbg !363
  %cmp119 = icmp eq i32 %21, %22, !dbg !363
  br i1 %cmp119, label %for.inc126, label %if.then120, !dbg !363

if.then120:                                       ; preds = %for.body116
  %idxprom121 = sext i32 %21 to i64, !dbg !365
  %arrayidx122 = getelementptr inbounds i32* %call93, i64 %idxprom121, !dbg !365
  %23 = load i32* %arrayidx122, align 4, !dbg !365, !tbaa !201
  %arrayidx124 = getelementptr inbounds i32* %call93, i64 %indvars.iv286, !dbg !365
  store i32 %23, i32* %arrayidx124, align 4, !dbg !365, !tbaa !201
  br label %for.inc126, !dbg !367

for.inc126:                                       ; preds = %for.body116, %if.then120
  %indvars.iv.next287 = add i64 %indvars.iv286, 1, !dbg !353
  %lftr.wideiv288 = trunc i64 %indvars.iv.next287 to i32, !dbg !353
  %exitcond289 = icmp eq i32 %lftr.wideiv288, %0, !dbg !353
  br i1 %exitcond289, label %for.end128, label %for.body116, !dbg !353

for.end128:                                       ; preds = %for.end91, %for.inc126, %for.cond114.preheader
  %nnew.0.lcssa294 = phi i32 [ %nnew.1, %for.cond114.preheader ], [ %nnew.1, %for.inc126 ], [ 0, %for.end91 ]
  %call129 = tail call %struct._ETree* @ETree_compress(%struct._ETree* %etree, %struct._IV* %call92) #5, !dbg !368
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call129}, i64 0, metadata !90), !dbg !368
  %call130 = tail call i32* @IVinit(i32 %0, i32 0) #5, !dbg !369
  tail call void @llvm.dbg.value(metadata !{i32* %call130}, i64 0, metadata !106), !dbg !369
  tail call void @IVcopy(i32 %0, i32* %call130, i32* %call20) #5, !dbg !370
  tail call void @IV_setSize(%struct._IV* %nzerosIV, i32 %nnew.0.lcssa294) #5, !dbg !371
  %call131 = tail call i32* @IV_entries(%struct._IV* %nzerosIV) #5, !dbg !372
  tail call void @llvm.dbg.value(metadata !{i32* %call131}, i64 0, metadata !103), !dbg !372
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !373
  br i1 %cmp95272, label %for.body134, label %for.end148, !dbg !373

for.body134:                                      ; preds = %for.end128, %for.inc146
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc146 ], [ 0, %for.end128 ]
  %arrayidx136 = getelementptr inbounds i32* %call27, i64 %indvars.iv, !dbg !375
  %24 = load i32* %arrayidx136, align 4, !dbg !375, !tbaa !201
  %25 = trunc i64 %indvars.iv to i32, !dbg !375
  %cmp137 = icmp eq i32 %24, %25, !dbg !375
  br i1 %cmp137, label %if.then138, label %for.inc146, !dbg !375

if.then138:                                       ; preds = %for.body134
  %arrayidx140 = getelementptr inbounds i32* %call130, i64 %indvars.iv, !dbg !377
  %26 = load i32* %arrayidx140, align 4, !dbg !377, !tbaa !201
  %arrayidx142 = getelementptr inbounds i32* %call93, i64 %indvars.iv, !dbg !377
  %27 = load i32* %arrayidx142, align 4, !dbg !377, !tbaa !201
  %idxprom143 = sext i32 %27 to i64, !dbg !377
  %arrayidx144 = getelementptr inbounds i32* %call131, i64 %idxprom143, !dbg !377
  store i32 %26, i32* %arrayidx144, align 4, !dbg !377, !tbaa !201
  br label %for.inc146, !dbg !379

for.inc146:                                       ; preds = %for.body134, %if.then138
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !373
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !373
  %exitcond = icmp eq i32 %lftr.wideiv, %0, !dbg !373
  br i1 %exitcond, label %for.end148, label %for.body134, !dbg !373

for.end148:                                       ; preds = %for.inc146, %for.end128
  tail call void @IVfree(i32* %call130) #5, !dbg !380
  tail call void @IVfree(i32* %call24) #5, !dbg !381
  tail call void @IVfree(i32* %call27) #5, !dbg !382
  tail call void @IV_free(%struct._IV* %call92) #5, !dbg !383
  ret %struct._ETree* %call129, !dbg !384
}

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_mergeFrontsAny(%struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !111), !dbg !385
  tail call void @llvm.dbg.value(metadata !{i32 %maxzeros}, i64 0, metadata !112), !dbg !386
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %nzerosIV}, i64 0, metadata !113), !dbg !387
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !388
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !388

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !388
  %0 = load i32* %nfront1, align 4, !dbg !388, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !117), !dbg !388
  %cmp2 = icmp slt i32 %0, 1, !dbg !388
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !388

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !388
  %1 = load i32* %nvtx4, align 4, !dbg !388, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !118), !dbg !388
  %cmp5 = icmp slt i32 %1, 1, !dbg !388
  br i1 %cmp5, label %if.then, label %if.end, !dbg !388

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !389, !tbaa !206
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str7, i64 0, i64 0), %struct._ETree* %etree, i32 %maxzeros) #5, !dbg !389
  tail call void @exit(i32 -1) #6, !dbg !391
  unreachable, !dbg !391

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call i32 @IV_size(%struct._IV* %nzerosIV) #5, !dbg !392
  %cmp7 = icmp eq i32 %call6, %0, !dbg !392
  br i1 %cmp7, label %if.end11, label %if.then8, !dbg !392

if.then8:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !393, !tbaa !206
  %call9 = tail call i32 @IV_size(%struct._IV* %nzerosIV) #5, !dbg !395
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([83 x i8]* @.str8, i64 0, i64 0), %struct._ETree* %etree, i32 %maxzeros, %struct._IV* %nzerosIV, i32 %call9, i32 %0) #5, !dbg !395
  tail call void @exit(i32 -1) #6, !dbg !396
  unreachable, !dbg !396

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32* @IV_entries(%struct._IV* %nzerosIV) #5, !dbg !397
  tail call void @llvm.dbg.value(metadata !{i32* %call12}, i64 0, metadata !125), !dbg !397
  %tree13 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !398
  %4 = load %struct._Tree** %tree13, align 8, !dbg !398, !tbaa !206
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %4}, i64 0, metadata !132), !dbg !398
  %call14 = tail call i32* @IVinit(i32 %0, i32 0) #5, !dbg !399
  tail call void @llvm.dbg.value(metadata !{i32* %call14}, i64 0, metadata !124), !dbg !399
  %call15 = tail call i32* @IVinit(i32 %0, i32 0) #5, !dbg !400
  tail call void @llvm.dbg.value(metadata !{i32* %call15}, i64 0, metadata !120), !dbg !400
  %call16 = tail call i32* @IVinit(i32 %0, i32 -1) #5, !dbg !401
  tail call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !126), !dbg !401
  %call17 = tail call i32* @IVinit(i32 %0, i32 -1) #5, !dbg !402
  tail call void @llvm.dbg.value(metadata !{i32* %call17}, i64 0, metadata !122), !dbg !402
  %call18 = tail call i32* @IVinit(i32 %0, i32 -1) #5, !dbg !403
  tail call void @llvm.dbg.value(metadata !{i32* %call18}, i64 0, metadata !129), !dbg !403
  %par19 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 2, !dbg !404
  %5 = load i32** %par19, align 8, !dbg !404, !tbaa !206
  tail call void @IVcopy(i32 %0, i32* %call16, i32* %5) #5, !dbg !404
  %fch20 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 3, !dbg !405
  %6 = load i32** %fch20, align 8, !dbg !405, !tbaa !206
  tail call void @IVcopy(i32 %0, i32* %call17, i32* %6) #5, !dbg !405
  %sib21 = getelementptr inbounds %struct._Tree* %4, i64 0, i32 4, !dbg !406
  %7 = load i32** %sib21, align 8, !dbg !406, !tbaa !206
  tail call void @IVcopy(i32 %0, i32* %call18, i32* %7) #5, !dbg !406
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !407
  %8 = load %struct._IV** %nodwghtsIV, align 8, !dbg !407, !tbaa !206
  %call22 = tail call i32* @IV_entries(%struct._IV* %8) #5, !dbg !407
  tail call void @IVcopy(i32 %0, i32* %call14, i32* %call22) #5, !dbg !407
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !408
  %9 = load %struct._IV** %bndwghtsIV, align 8, !dbg !408, !tbaa !206
  %call23 = tail call i32* @IV_entries(%struct._IV* %9) #5, !dbg !408
  tail call void @IVcopy(i32 %0, i32* %call15, i32* %call23) #5, !dbg !408
  %call24 = tail call i32* @IVinit(i32 %0, i32 -1) #5, !dbg !409
  tail call void @llvm.dbg.value(metadata !{i32* %call24}, i64 0, metadata !128), !dbg !409
  tail call void @IVramp(i32 %0, i32* %call24, i32 0, i32 1) #5, !dbg !410
  %call25 = tail call i32* @IVinit(i32 %0, i32 0) #5, !dbg !411
  tail call void @llvm.dbg.value(metadata !{i32* %call25}, i64 0, metadata !121), !dbg !411
  %call26 = tail call i32 @Tree_postOTfirst(%struct._Tree* %4) #5, !dbg !412
  tail call void @llvm.dbg.value(metadata !{i32 %call26}, i64 0, metadata !115), !dbg !412
  %cmp27184 = icmp eq i32 %call26, -1, !dbg !412
  br i1 %cmp27184, label %for.end, label %for.body, !dbg !412

for.body:                                         ; preds = %if.end11, %visitAny.exit
  %J.0185 = phi i32 [ %call28, %visitAny.exit ], [ %call26, %if.end11 ]
  %idxprom.i = sext i32 %J.0185 to i64, !dbg !414
  %arrayidx52.i = getelementptr inbounds i32* %call16, i64 %idxprom.i, !dbg !417
  tail call void @llvm.dbg.value(metadata !{i32 %J.0185}, i64 0, metadata !418), !dbg !419
  tail call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !420), !dbg !421
  tail call void @llvm.dbg.value(metadata !{i32* %call17}, i64 0, metadata !422), !dbg !423
  tail call void @llvm.dbg.value(metadata !{i32* %call18}, i64 0, metadata !424), !dbg !425
  tail call void @llvm.dbg.value(metadata !{i32* %call14}, i64 0, metadata !426), !dbg !427
  tail call void @llvm.dbg.value(metadata !{i32* %call15}, i64 0, metadata !428), !dbg !429
  tail call void @llvm.dbg.value(metadata !{i32* %call24}, i64 0, metadata !430), !dbg !431
  tail call void @llvm.dbg.value(metadata !{i32* %call25}, i64 0, metadata !432), !dbg !433
  tail call void @llvm.dbg.value(metadata !{i32* %call12}, i64 0, metadata !434), !dbg !435
  tail call void @llvm.dbg.value(metadata !{i32 %maxzeros}, i64 0, metadata !436), !dbg !437
  %arrayidx.i = getelementptr inbounds i32* %call17, i64 %idxprom.i, !dbg !414
  %10 = load i32* %arrayidx.i, align 4, !dbg !414, !tbaa !201
  %cmp225.i = icmp eq i32 %10, -1, !dbg !414
  br i1 %cmp225.i, label %visitAny.exit, label %for.cond.preheader.lr.ph.i, !dbg !414

for.cond.preheader.lr.ph.i:                       ; preds = %for.body
  %arrayidx41.i = getelementptr inbounds i32* %call12, i64 %idxprom.i, !dbg !417
  %arrayidx116.i = getelementptr inbounds i32* %call14, i64 %idxprom.i, !dbg !438
  %arrayidx11.i = getelementptr inbounds i32* %call15, i64 %idxprom.i, !dbg !439
  br label %for.cond.preheader.i, !dbg !414

for.cond.preheader.i:                             ; preds = %if.end110.i, %for.cond.preheader.lr.ph.i
  %11 = phi i32 [ %10, %for.cond.preheader.lr.ph.i ], [ %36, %if.end110.i ]
  %cmp3212.i = icmp eq i32 %11, -1, !dbg !442
  br i1 %cmp3212.i, label %for.end.i, label %for.body.i, !dbg !442

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %bestJ.0214.i = phi i32 [ %bestJ.1.i, %for.inc.i ], [ -1, %for.cond.preheader.i ]
  %J.0213.i = phi i32 [ %20, %for.inc.i ], [ %11, %for.cond.preheader.i ]
  %idxprom4.i = sext i32 %J.0213.i to i64, !dbg !439
  %arrayidx5.i = getelementptr inbounds i32* %call12, i64 %idxprom4.i, !dbg !439
  %12 = load i32* %arrayidx5.i, align 4, !dbg !439, !tbaa !201
  %arrayidx7.i = getelementptr inbounds i32* %call14, i64 %idxprom4.i, !dbg !439
  %13 = load i32* %arrayidx7.i, align 4, !dbg !439, !tbaa !201
  %14 = load i32* %arrayidx116.i, align 4, !dbg !439, !tbaa !201
  %15 = load i32* %arrayidx11.i, align 4, !dbg !439, !tbaa !201
  %add.i = add nsw i32 %15, %14, !dbg !439
  %arrayidx13.i = getelementptr inbounds i32* %call15, i64 %idxprom4.i, !dbg !439
  %16 = load i32* %arrayidx13.i, align 4, !dbg !439, !tbaa !201
  %sub.i = sub i32 %add.i, %16, !dbg !439
  %mul.i = mul nsw i32 %sub.i, %13, !dbg !439
  %add14.i = add nsw i32 %mul.i, %12, !dbg !439
  %arrayidx16.i = getelementptr inbounds i32* %call25, i64 %idxprom4.i, !dbg !439
  store i32 %add14.i, i32* %arrayidx16.i, align 4, !dbg !439, !tbaa !201
  %cmp17.i = icmp eq i32 %bestJ.0214.i, -1, !dbg !443
  br i1 %cmp17.i, label %if.then34.i, label %lor.lhs.false.i, !dbg !443

lor.lhs.false.i:                                  ; preds = %for.body.i
  %idxprom20.i = sext i32 %bestJ.0214.i to i64, !dbg !443
  %arrayidx21.i = getelementptr inbounds i32* %call25, i64 %idxprom20.i, !dbg !443
  %17 = load i32* %arrayidx21.i, align 4, !dbg !443, !tbaa !201
  %cmp22.i = icmp slt i32 %add14.i, %17, !dbg !443
  br i1 %cmp22.i, label %if.then34.i, label %lor.lhs.false23.i, !dbg !443

lor.lhs.false23.i:                                ; preds = %lor.lhs.false.i
  %cmp28.i = icmp eq i32 %add14.i, %17, !dbg !443
  br i1 %cmp28.i, label %land.lhs.true.i, label %for.inc.i, !dbg !443

land.lhs.true.i:                                  ; preds = %lor.lhs.false23.i
  %18 = load i32* %arrayidx7.i, align 4, !dbg !443, !tbaa !201
  %arrayidx32.i = getelementptr inbounds i32* %call14, i64 %idxprom20.i, !dbg !443
  %19 = load i32* %arrayidx32.i, align 4, !dbg !443, !tbaa !201
  %cmp33.i = icmp slt i32 %18, %19, !dbg !443
  br i1 %cmp33.i, label %if.then34.i, label %for.inc.i, !dbg !443

if.then34.i:                                      ; preds = %land.lhs.true.i, %lor.lhs.false.i, %for.body.i
  tail call void @llvm.dbg.value(metadata !{i32 %J.0213.i}, i64 0, metadata !444), !dbg !445
  br label %for.inc.i, !dbg !447

for.inc.i:                                        ; preds = %if.then34.i, %land.lhs.true.i, %lor.lhs.false23.i
  %bestJ.1.i = phi i32 [ %J.0213.i, %if.then34.i ], [ %bestJ.0214.i, %land.lhs.true.i ], [ %bestJ.0214.i, %lor.lhs.false23.i ]
  %arrayidx37.i = getelementptr inbounds i32* %call18, i64 %idxprom4.i, !dbg !442
  %20 = load i32* %arrayidx37.i, align 4, !dbg !442, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !448), !dbg !442
  %cmp3.i = icmp eq i32 %20, -1, !dbg !442
  br i1 %cmp3.i, label %for.end.i, label %for.body.i, !dbg !442

for.end.i:                                        ; preds = %for.inc.i, %for.cond.preheader.i
  %bestJ.0.lcssa.i = phi i32 [ -1, %for.cond.preheader.i ], [ %bestJ.1.i, %for.inc.i ]
  %idxprom38.i = sext i32 %bestJ.0.lcssa.i to i64, !dbg !417
  %arrayidx39.i = getelementptr inbounds i32* %call25, i64 %idxprom38.i, !dbg !417
  %21 = load i32* %arrayidx39.i, align 4, !dbg !417, !tbaa !201
  %22 = load i32* %arrayidx41.i, align 4, !dbg !417, !tbaa !201
  %add42.i = add nsw i32 %22, %21, !dbg !417
  %cmp43.i = icmp sgt i32 %add42.i, %maxzeros, !dbg !417
  br i1 %cmp43.i, label %visitAny.exit, label %lor.lhs.false44.i, !dbg !417

lor.lhs.false44.i:                                ; preds = %for.end.i
  %23 = load i32* %arrayidx.i, align 4, !dbg !417, !tbaa !201
  %idxprom47.i = sext i32 %23 to i64, !dbg !417
  %arrayidx48.i = getelementptr inbounds i32* %call18, i64 %idxprom47.i, !dbg !417
  %24 = load i32* %arrayidx48.i, align 4, !dbg !417, !tbaa !201
  %cmp49.i = icmp eq i32 %24, -1, !dbg !417
  br i1 %cmp49.i, label %for.cond58.preheader.i, label %land.lhs.true50.i, !dbg !417

land.lhs.true50.i:                                ; preds = %lor.lhs.false44.i
  %25 = load i32* %arrayidx52.i, align 4, !dbg !417, !tbaa !201
  %cmp53.i = icmp eq i32 %25, -1, !dbg !417
  br i1 %cmp53.i, label %visitAny.exit, label %for.cond58.preheader.i, !dbg !417

for.cond58.preheader.i:                           ; preds = %land.lhs.true50.i, %lor.lhs.false44.i
  %cmp59216.i = icmp eq i32 %23, %bestJ.0.lcssa.i, !dbg !449
  br i1 %cmp59216.i, label %for.end64.i, label %for.body60.i.preheader, !dbg !449

for.body60.i.preheader:                           ; preds = %for.cond58.preheader.i
  %cmp59.i181 = icmp eq i32 %24, %bestJ.0.lcssa.i, !dbg !449
  br i1 %cmp59.i181, label %for.end64.i, label %for.body60.for.body60_crit_edge.i, !dbg !449

for.body60.for.body60_crit_edge.i:                ; preds = %for.body60.i.preheader, %for.body60.for.body60_crit_edge.i
  %J.1.i182 = phi i32 [ %J.1.pre.i, %for.body60.for.body60_crit_edge.i ], [ %24, %for.body60.i.preheader ]
  %idxprom62.phi.trans.insert.i = sext i32 %J.1.i182 to i64
  %arrayidx63.phi.trans.insert.i = getelementptr inbounds i32* %call18, i64 %idxprom62.phi.trans.insert.i
  %J.1.pre.i = load i32* %arrayidx63.phi.trans.insert.i, align 4, !dbg !449
  %cmp59.i = icmp eq i32 %J.1.pre.i, %bestJ.0.lcssa.i, !dbg !449
  br i1 %cmp59.i, label %for.end64.i, label %for.body60.for.body60_crit_edge.i, !dbg !449

for.end64.i:                                      ; preds = %for.body60.i.preheader, %for.body60.for.body60_crit_edge.i, %for.cond58.preheader.i
  %prevJ.0.lcssa.i = phi i32 [ -1, %for.cond58.preheader.i ], [ %23, %for.body60.i.preheader ], [ %J.1.i182, %for.body60.for.body60_crit_edge.i ]
  %arrayidx66.i = getelementptr inbounds i32* %call18, i64 %idxprom38.i, !dbg !451
  %26 = load i32* %arrayidx66.i, align 4, !dbg !451, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !452), !dbg !451
  %arrayidx68.i = getelementptr inbounds i32* %call17, i64 %idxprom38.i, !dbg !453
  %27 = load i32* %arrayidx68.i, align 4, !dbg !453, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !454), !dbg !453
  %cmp69.i = icmp eq i32 %27, -1, !dbg !453
  br i1 %cmp69.i, label %if.then70.i, label %if.else78.i, !dbg !453

if.then70.i:                                      ; preds = %for.end64.i
  %cmp71.i = icmp eq i32 %prevJ.0.lcssa.i, -1, !dbg !455
  br i1 %cmp71.i, label %if.then72.i, label %if.else.i, !dbg !455

if.then72.i:                                      ; preds = %if.then70.i
  store i32 %26, i32* %arrayidx.i, align 4, !dbg !457, !tbaa !201
  br label %if.end110.i, !dbg !459

if.else.i:                                        ; preds = %if.then70.i
  %idxprom75.i = sext i32 %prevJ.0.lcssa.i to i64, !dbg !460
  %arrayidx76.i = getelementptr inbounds i32* %call18, i64 %idxprom75.i, !dbg !460
  store i32 %26, i32* %arrayidx76.i, align 4, !dbg !460, !tbaa !201
  br label %if.end110.i

if.else78.i:                                      ; preds = %for.end64.i
  tail call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !454), !dbg !462
  %idxprom81.i = sext i32 %27 to i64, !dbg !464
  %arrayidx82.i = getelementptr inbounds i32* %call16, i64 %idxprom81.i, !dbg !464
  store i32 %J.0185, i32* %arrayidx82.i, align 4, !dbg !464, !tbaa !201
  %arrayidx84.i = getelementptr inbounds i32* %call18, i64 %idxprom81.i, !dbg !465
  %28 = load i32* %arrayidx84.i, align 4, !dbg !465, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !466), !dbg !465
  %cmp85.i = icmp eq i32 %28, -1, !dbg !465
  br i1 %cmp85.i, label %if.end96.i, label %while.cond.preheader.i, !dbg !465

while.cond.preheader.i:                           ; preds = %if.else78.i
  %idxprom87219.i = sext i32 %28 to i64, !dbg !467
  %arrayidx88220.i = getelementptr inbounds i32* %call18, i64 %idxprom87219.i, !dbg !467
  %29 = load i32* %arrayidx88220.i, align 4, !dbg !467, !tbaa !201
  %cmp89221.i = icmp eq i32 %29, -1, !dbg !467
  %arrayidx91222.i = getelementptr inbounds i32* %call16, i64 %idxprom87219.i, !dbg !469
  store i32 %J.0185, i32* %arrayidx91222.i, align 4, !dbg !469, !tbaa !201
  br i1 %cmp89221.i, label %if.end96.i, label %while.body.i, !dbg !467

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %arrayidx88223.i = phi i32* [ %arrayidx88.i, %while.body.i ], [ %arrayidx88220.i, %while.cond.preheader.i ]
  %30 = load i32* %arrayidx88223.i, align 4, !dbg !471, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !466), !dbg !471
  %idxprom87.i = sext i32 %30 to i64, !dbg !467
  %arrayidx88.i = getelementptr inbounds i32* %call18, i64 %idxprom87.i, !dbg !467
  %31 = load i32* %arrayidx88.i, align 4, !dbg !467, !tbaa !201
  %cmp89.i = icmp eq i32 %31, -1, !dbg !467
  %arrayidx91.i = getelementptr inbounds i32* %call16, i64 %idxprom87.i, !dbg !469
  store i32 %J.0185, i32* %arrayidx91.i, align 4, !dbg !469, !tbaa !201
  br i1 %cmp89.i, label %if.end96.i, label %while.body.i, !dbg !467

if.end96.i:                                       ; preds = %while.body.i, %while.cond.preheader.i, %if.else78.i
  %lastI.1.i = phi i32 [ -1, %if.else78.i ], [ %28, %while.cond.preheader.i ], [ %30, %while.body.i ]
  %cmp97.i = icmp eq i32 %prevJ.0.lcssa.i, -1, !dbg !472
  br i1 %cmp97.i, label %if.then98.i, label %if.else101.i, !dbg !472

if.then98.i:                                      ; preds = %if.end96.i
  store i32 %27, i32* %arrayidx.i, align 4, !dbg !473, !tbaa !201
  br label %if.end104.i, !dbg !475

if.else101.i:                                     ; preds = %if.end96.i
  %idxprom102.i = sext i32 %prevJ.0.lcssa.i to i64, !dbg !476
  %arrayidx103.i = getelementptr inbounds i32* %call18, i64 %idxprom102.i, !dbg !476
  store i32 %27, i32* %arrayidx103.i, align 4, !dbg !476, !tbaa !201
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else101.i, %if.then98.i
  %cmp105.i = icmp eq i32 %lastI.1.i, -1, !dbg !478
  br i1 %cmp105.i, label %if.end110.i, label %if.then106.i, !dbg !478

if.then106.i:                                     ; preds = %if.end104.i
  %idxprom107.i = sext i32 %lastI.1.i to i64, !dbg !479
  %arrayidx108.i = getelementptr inbounds i32* %call18, i64 %idxprom107.i, !dbg !479
  store i32 %26, i32* %arrayidx108.i, align 4, !dbg !479, !tbaa !201
  br label %if.end110.i, !dbg !481

if.end110.i:                                      ; preds = %if.then106.i, %if.end104.i, %if.else.i, %if.then72.i
  %arrayidx112.i = getelementptr inbounds i32* %call24, i64 %idxprom38.i, !dbg !482
  store i32 %J.0185, i32* %arrayidx112.i, align 4, !dbg !482, !tbaa !201
  %arrayidx114.i = getelementptr inbounds i32* %call14, i64 %idxprom38.i, !dbg !438
  %32 = load i32* %arrayidx114.i, align 4, !dbg !438, !tbaa !201
  %33 = load i32* %arrayidx116.i, align 4, !dbg !438, !tbaa !201
  %add117.i = add nsw i32 %33, %32, !dbg !438
  store i32 %add117.i, i32* %arrayidx116.i, align 4, !dbg !438, !tbaa !201
  %34 = load i32* %arrayidx39.i, align 4, !dbg !483, !tbaa !201
  %35 = load i32* %arrayidx41.i, align 4, !dbg !483, !tbaa !201
  %add122.i = add nsw i32 %35, %34, !dbg !483
  store i32 %add122.i, i32* %arrayidx41.i, align 4, !dbg !483, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %J.0185}, i64 0, metadata !418), !dbg !419
  tail call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !420), !dbg !421
  tail call void @llvm.dbg.value(metadata !{i32* %call17}, i64 0, metadata !422), !dbg !423
  tail call void @llvm.dbg.value(metadata !{i32* %call18}, i64 0, metadata !424), !dbg !425
  tail call void @llvm.dbg.value(metadata !{i32* %call14}, i64 0, metadata !426), !dbg !427
  tail call void @llvm.dbg.value(metadata !{i32* %call15}, i64 0, metadata !428), !dbg !429
  tail call void @llvm.dbg.value(metadata !{i32* %call24}, i64 0, metadata !430), !dbg !431
  tail call void @llvm.dbg.value(metadata !{i32* %call25}, i64 0, metadata !432), !dbg !433
  tail call void @llvm.dbg.value(metadata !{i32* %call12}, i64 0, metadata !434), !dbg !435
  tail call void @llvm.dbg.value(metadata !{i32 %maxzeros}, i64 0, metadata !436), !dbg !437
  %36 = load i32* %arrayidx.i, align 4, !dbg !414, !tbaa !201
  %cmp.i = icmp eq i32 %36, -1, !dbg !414
  br i1 %cmp.i, label %visitAny.exit, label %for.cond.preheader.i, !dbg !414

visitAny.exit:                                    ; preds = %for.end.i, %land.lhs.true50.i, %if.end110.i, %for.body
  %call28 = tail call i32 @Tree_postOTnext(%struct._Tree* %4, i32 %J.0185) #5, !dbg !484
  tail call void @llvm.dbg.value(metadata !{i32 %call28}, i64 0, metadata !115), !dbg !484
  %cmp27 = icmp eq i32 %call28, -1, !dbg !412
  br i1 %cmp27, label %for.end, label %for.body, !dbg !412

for.end:                                          ; preds = %visitAny.exit, %if.end11
  %call29 = tail call %struct._IV* @IV_new() #5, !dbg !485
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call29}, i64 0, metadata !131), !dbg !485
  tail call void @IV_init(%struct._IV* %call29, i32 %0, i32* null) #5, !dbg !486
  %call30 = tail call i32* @IV_entries(%struct._IV* %call29) #5, !dbg !487
  tail call void @llvm.dbg.value(metadata !{i32* %call30}, i64 0, metadata !123), !dbg !487
  %call31 = tail call i32* @IVinit(i32 %0, i32 -1) #5, !dbg !488
  tail call void @llvm.dbg.value(metadata !{i32* %call31}, i64 0, metadata !127), !dbg !488
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !115), !dbg !489
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !119), !dbg !489
  %cmp33178 = icmp sgt i32 %0, 0, !dbg !489
  br i1 %cmp33178, label %for.body34, label %for.end61, !dbg !489

for.cond50.preheader:                             ; preds = %for.inc47
  br i1 %cmp33178, label %for.body52, label %for.end61, !dbg !491

for.body34:                                       ; preds = %for.end, %for.inc47
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %for.inc47 ], [ 0, %for.end ]
  %J.1180 = phi i32 [ %inc48, %for.inc47 ], [ 0, %for.end ]
  %nnew.0179 = phi i32 [ %nnew.1, %for.inc47 ], [ 0, %for.end ]
  %arrayidx = getelementptr inbounds i32* %call24, i64 %indvars.iv192, !dbg !493
  %37 = load i32* %arrayidx, align 4, !dbg !493, !tbaa !201
  %38 = trunc i64 %indvars.iv192 to i32, !dbg !493
  %cmp35 = icmp eq i32 %37, %38, !dbg !493
  br i1 %cmp35, label %if.else, label %while.cond, !dbg !493

while.cond:                                       ; preds = %for.body34, %while.cond
  %K.0 = phi i32 [ %39, %while.cond ], [ %J.1180, %for.body34 ]
  %idxprom37 = sext i32 %K.0 to i64, !dbg !495
  %arrayidx38 = getelementptr inbounds i32* %call24, i64 %idxprom37, !dbg !495
  %39 = load i32* %arrayidx38, align 4, !dbg !495, !tbaa !201
  %cmp39 = icmp eq i32 %39, %K.0, !dbg !495
  br i1 %cmp39, label %while.end, label %while.cond, !dbg !495

while.end:                                        ; preds = %while.cond
  store i32 %K.0, i32* %arrayidx, align 4, !dbg !497, !tbaa !201
  br label %for.inc47, !dbg !498

if.else:                                          ; preds = %for.body34
  %inc = add nsw i32 %nnew.0179, 1, !dbg !499
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !119), !dbg !499
  %arrayidx45 = getelementptr inbounds i32* %call31, i64 %indvars.iv192, !dbg !499
  store i32 %nnew.0179, i32* %arrayidx45, align 4, !dbg !499, !tbaa !201
  br label %for.inc47

for.inc47:                                        ; preds = %while.end, %if.else
  %nnew.1 = phi i32 [ %nnew.0179, %while.end ], [ %inc, %if.else ]
  %indvars.iv.next193 = add i64 %indvars.iv192, 1, !dbg !489
  %inc48 = add nsw i32 %J.1180, 1, !dbg !489
  tail call void @llvm.dbg.value(metadata !{i32 %inc48}, i64 0, metadata !115), !dbg !489
  %lftr.wideiv194 = trunc i64 %indvars.iv.next193 to i32, !dbg !489
  %exitcond195 = icmp eq i32 %lftr.wideiv194, %0, !dbg !489
  br i1 %exitcond195, label %for.cond50.preheader, label %for.body34, !dbg !489

for.body52:                                       ; preds = %for.cond50.preheader, %for.body52
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %for.body52 ], [ 0, %for.cond50.preheader ]
  %arrayidx54 = getelementptr inbounds i32* %call24, i64 %indvars.iv188, !dbg !501
  %40 = load i32* %arrayidx54, align 4, !dbg !501, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %40}, i64 0, metadata !116), !dbg !501
  %idxprom55 = sext i32 %40 to i64, !dbg !503
  %arrayidx56 = getelementptr inbounds i32* %call31, i64 %idxprom55, !dbg !503
  %41 = load i32* %arrayidx56, align 4, !dbg !503, !tbaa !201
  %arrayidx58 = getelementptr inbounds i32* %call30, i64 %indvars.iv188, !dbg !503
  store i32 %41, i32* %arrayidx58, align 4, !dbg !503, !tbaa !201
  %indvars.iv.next189 = add i64 %indvars.iv188, 1, !dbg !491
  %lftr.wideiv190 = trunc i64 %indvars.iv.next189 to i32, !dbg !491
  %exitcond191 = icmp eq i32 %lftr.wideiv190, %0, !dbg !491
  br i1 %exitcond191, label %for.end61, label %for.body52, !dbg !491

for.end61:                                        ; preds = %for.end, %for.body52, %for.cond50.preheader
  %nnew.0.lcssa196 = phi i32 [ %nnew.1, %for.cond50.preheader ], [ %nnew.1, %for.body52 ], [ 0, %for.end ]
  %call62 = tail call %struct._ETree* @ETree_compress(%struct._ETree* %etree, %struct._IV* %call29) #5, !dbg !504
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call62}, i64 0, metadata !114), !dbg !504
  %call63 = tail call i32* @IVinit(i32 %0, i32 0) #5, !dbg !505
  tail call void @llvm.dbg.value(metadata !{i32* %call63}, i64 0, metadata !130), !dbg !505
  tail call void @IVcopy(i32 %0, i32* %call63, i32* %call12) #5, !dbg !506
  tail call void @IV_setSize(%struct._IV* %nzerosIV, i32 %nnew.0.lcssa196) #5, !dbg !507
  %call64 = tail call i32* @IV_entries(%struct._IV* %nzerosIV) #5, !dbg !508
  tail call void @llvm.dbg.value(metadata !{i32* %call64}, i64 0, metadata !125), !dbg !508
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !115), !dbg !509
  br i1 %cmp33178, label %for.body67, label %for.end81, !dbg !509

for.body67:                                       ; preds = %for.end61, %for.inc79
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc79 ], [ 0, %for.end61 ]
  %arrayidx69 = getelementptr inbounds i32* %call24, i64 %indvars.iv, !dbg !511
  %42 = load i32* %arrayidx69, align 4, !dbg !511, !tbaa !201
  %43 = trunc i64 %indvars.iv to i32, !dbg !511
  %cmp70 = icmp eq i32 %42, %43, !dbg !511
  br i1 %cmp70, label %if.then71, label %for.inc79, !dbg !511

if.then71:                                        ; preds = %for.body67
  %arrayidx73 = getelementptr inbounds i32* %call63, i64 %indvars.iv, !dbg !513
  %44 = load i32* %arrayidx73, align 4, !dbg !513, !tbaa !201
  %arrayidx75 = getelementptr inbounds i32* %call30, i64 %indvars.iv, !dbg !513
  %45 = load i32* %arrayidx75, align 4, !dbg !513, !tbaa !201
  %idxprom76 = sext i32 %45 to i64, !dbg !513
  %arrayidx77 = getelementptr inbounds i32* %call64, i64 %idxprom76, !dbg !513
  store i32 %44, i32* %arrayidx77, align 4, !dbg !513, !tbaa !201
  br label %for.inc79, !dbg !515

for.inc79:                                        ; preds = %for.body67, %if.then71
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !509
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !509
  %exitcond = icmp eq i32 %lftr.wideiv, %0, !dbg !509
  br i1 %exitcond, label %for.end81, label %for.body67, !dbg !509

for.end81:                                        ; preds = %for.inc79, %for.end61
  tail call void @IVfree(i32* %call63) #5, !dbg !516
  tail call void @IVfree(i32* %call16) #5, !dbg !517
  tail call void @IVfree(i32* %call17) #5, !dbg !518
  tail call void @IVfree(i32* %call18) #5, !dbg !519
  tail call void @IVfree(i32* %call14) #5, !dbg !520
  tail call void @IVfree(i32* %call15) #5, !dbg !521
  tail call void @IVfree(i32* %call24) #5, !dbg !522
  tail call void @IVfree(i32* %call25) #5, !dbg !523
  tail call void @IVfree(i32* %call31) #5, !dbg !524
  tail call void @IV_free(%struct._IV* %call29) #5, !dbg !525
  ret %struct._ETree* %call62, !dbg !526
}

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_splitFronts(%struct._ETree* %etree, i32* %vwghts, i32 %maxfrontsize, i32 %seed) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !137), !dbg !527
  tail call void @llvm.dbg.value(metadata !{i32* %vwghts}, i64 0, metadata !138), !dbg !528
  tail call void @llvm.dbg.value(metadata !{i32 %maxfrontsize}, i64 0, metadata !139), !dbg !529
  tail call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !140), !dbg !530
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !531
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !531

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !531
  %0 = load i32* %nfront1, align 4, !dbg !531, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !152), !dbg !531
  %cmp2 = icmp slt i32 %0, 1, !dbg !531
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !531

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !531
  %1 = load i32* %nvtx4, align 4, !dbg !531, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !155), !dbg !531
  %cmp5 = icmp slt i32 %1, 1, !dbg !531
  %cmp7 = icmp slt i32 %maxfrontsize, 1, !dbg !531
  %or.cond321 = or i1 %cmp5, %cmp7, !dbg !531
  br i1 %or.cond321, label %if.then, label %if.end, !dbg !531

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !532, !tbaa !206
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str9, i64 0, i64 0), %struct._ETree* %etree, i32* %vwghts, i32 %maxfrontsize, i32 %seed) #5, !dbg !532
  tail call void @exit(i32 -1) #6, !dbg !534
  unreachable, !dbg !534

if.end:                                           ; preds = %lor.lhs.false3
  %tree8 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !535
  %3 = load %struct._Tree** %tree8, align 8, !dbg !535, !tbaa !206
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %3}, i64 0, metadata !174), !dbg !535
  %fch9 = getelementptr inbounds %struct._Tree* %3, i64 0, i32 3, !dbg !536
  %4 = load i32** %fch9, align 8, !dbg !536, !tbaa !206
  tail call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !162), !dbg !536
  %sib10 = getelementptr inbounds %struct._Tree* %3, i64 0, i32 4, !dbg !537
  %5 = load i32** %sib10, align 8, !dbg !537, !tbaa !206
  tail call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !172), !dbg !537
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !538
  %6 = load %struct._IV** %nodwghtsIV, align 8, !dbg !538, !tbaa !206
  %call11 = tail call i32* @IV_entries(%struct._IV* %6) #5, !dbg !538
  tail call void @llvm.dbg.value(metadata !{i32* %call11}, i64 0, metadata !170), !dbg !538
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !539
  %7 = load %struct._IV** %bndwghtsIV, align 8, !dbg !539, !tbaa !206
  %call12 = tail call i32* @IV_entries(%struct._IV* %7) #5, !dbg !539
  tail call void @llvm.dbg.value(metadata !{i32* %call12}, i64 0, metadata !161), !dbg !539
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !540
  %8 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !540, !tbaa !206
  %call13 = tail call i32* @IV_entries(%struct._IV* %8) #5, !dbg !540
  tail call void @llvm.dbg.value(metadata !{i32* %call13}, i64 0, metadata !173), !dbg !540
  %call14 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !541
  tail call void @llvm.dbg.value(metadata !{i32* %call14}, i64 0, metadata !169), !dbg !541
  %call15 = tail call i32* @IVinit(i32 %0, i32 -1) #5, !dbg !542
  tail call void @llvm.dbg.value(metadata !{i32* %call15}, i64 0, metadata !171), !dbg !542
  %call16 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !543
  tail call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !167), !dbg !543
  %call17 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !544
  tail call void @llvm.dbg.value(metadata !{i32* %call17}, i64 0, metadata !168), !dbg !544
  %call18 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !545
  tail call void @llvm.dbg.value(metadata !{i32* %call18}, i64 0, metadata !166), !dbg !545
  %call19 = tail call i32* @IVinit(i32 %0, i32 -1) #5, !dbg !546
  tail call void @llvm.dbg.value(metadata !{i32* %call19}, i64 0, metadata !163), !dbg !546
  %call20 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !547
  tail call void @llvm.dbg.value(metadata !{i32* %call20}, i64 0, metadata !165), !dbg !547
  %call21 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !548
  tail call void @llvm.dbg.value(metadata !{i32* %call21}, i64 0, metadata !164), !dbg !548
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !159), !dbg !549
  %cmp22355 = icmp sgt i32 %1, 0, !dbg !549
  br i1 %cmp22355, label %for.body, label %for.end, !dbg !549

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %call13, i64 %indvars.iv369, !dbg !551
  %9 = load i32* %arrayidx, align 4, !dbg !551, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !143), !dbg !551
  %idxprom23 = sext i32 %9 to i64, !dbg !553
  %arrayidx24 = getelementptr inbounds i32* %call19, i64 %idxprom23, !dbg !553
  %10 = load i32* %arrayidx24, align 4, !dbg !553, !tbaa !201
  %arrayidx26 = getelementptr inbounds i32* %call20, i64 %indvars.iv369, !dbg !553
  store i32 %10, i32* %arrayidx26, align 4, !dbg !553, !tbaa !201
  %11 = trunc i64 %indvars.iv369 to i32, !dbg !554
  store i32 %11, i32* %arrayidx24, align 4, !dbg !554, !tbaa !201
  %indvars.iv.next370 = add i64 %indvars.iv369, 1, !dbg !549
  %lftr.wideiv371 = trunc i64 %indvars.iv.next370 to i32, !dbg !549
  %exitcond372 = icmp eq i32 %lftr.wideiv371, %1, !dbg !549
  br i1 %exitcond372, label %for.end, label %for.body, !dbg !549

for.end:                                          ; preds = %for.body, %if.end
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !153), !dbg !555
  %call29 = tail call i32 @Tree_postOTfirst(%struct._Tree* %3) #5, !dbg !556
  tail call void @llvm.dbg.value(metadata !{i32 %call29}, i64 0, metadata !147), !dbg !556
  %cmp31350 = icmp eq i32 %call29, -1, !dbg !556
  br i1 %cmp31350, label %for.end165, label %for.body32.lr.ph, !dbg !556

for.body32.lr.ph:                                 ; preds = %for.end
  %add96 = add i32 %maxfrontsize, -1, !dbg !558
  %cmp107 = icmp sgt i32 %seed, 0, !dbg !561
  %cmp117 = icmp eq i32* %vwghts, null, !dbg !562
  br label %for.body32, !dbg !556

for.body32:                                       ; preds = %for.body32.lr.ph, %for.inc163
  %J.0353 = phi i32 [ %call29, %for.body32.lr.ph ], [ %call164, %for.inc163 ]
  %Jnew.0352 = phi i32 [ undef, %for.body32.lr.ph ], [ %Jnew.2, %for.inc163 ]
  %nfront2.0351 = phi i32 [ 0, %for.body32.lr.ph ], [ %nfront2.2, %for.inc163 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !158), !dbg !565
  %idxprom33 = sext i32 %J.0353 to i64, !dbg !566
  %arrayidx34 = getelementptr inbounds i32* %call19, i64 %idxprom33, !dbg !566
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !142), !dbg !566
  %v.1322 = load i32* %arrayidx34, align 4, !dbg !566
  %cmp36323 = icmp eq i32 %v.1322, -1, !dbg !566
  br i1 %cmp36323, label %for.end47, label %for.body37, !dbg !566

for.body37:                                       ; preds = %for.body32, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end ], [ 0, %for.body32 ]
  %v.1326 = phi i32 [ %v.1, %cond.end ], [ %v.1322, %for.body32 ]
  %count.0325 = phi i32 [ %inc38, %cond.end ], [ 0, %for.body32 ]
  %sizeJ.0324 = phi i32 [ %add, %cond.end ], [ 0, %for.body32 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !566
  %inc38 = add nsw i32 %count.0325, 1, !dbg !568
  tail call void @llvm.dbg.value(metadata !{i32 %inc38}, i64 0, metadata !142), !dbg !568
  %arrayidx40 = getelementptr inbounds i32* %call21, i64 %indvars.iv, !dbg !568
  store i32 %v.1326, i32* %arrayidx40, align 4, !dbg !568, !tbaa !201
  %idxprom45.pre = sext i32 %v.1326 to i64, !dbg !566
  br i1 %cmp117, label %cond.end, label %cond.true, !dbg !570

cond.true:                                        ; preds = %for.body37
  %arrayidx43 = getelementptr inbounds i32* %vwghts, i64 %idxprom45.pre, !dbg !570
  %12 = load i32* %arrayidx43, align 4, !dbg !570, !tbaa !201
  br label %cond.end, !dbg !570

cond.end:                                         ; preds = %for.body37, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ 1, %for.body37 ], !dbg !570
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !160), !dbg !570
  %add = add nsw i32 %cond, %sizeJ.0324, !dbg !571
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !158), !dbg !571
  %arrayidx46 = getelementptr inbounds i32* %call20, i64 %idxprom45.pre, !dbg !566
  %v.1 = load i32* %arrayidx46, align 4, !dbg !566
  %cmp36 = icmp eq i32 %v.1, -1, !dbg !566
  br i1 %cmp36, label %for.end47, label %for.body37, !dbg !566

for.end47:                                        ; preds = %cond.end, %for.body32
  %count.0.lcssa = phi i32 [ 0, %for.body32 ], [ %inc38, %cond.end ]
  %sizeJ.0.lcssa = phi i32 [ 0, %for.body32 ], [ %add, %cond.end ]
  %arrayidx49 = getelementptr inbounds i32* %call11, i64 %idxprom33, !dbg !572
  %13 = load i32* %arrayidx49, align 4, !dbg !572, !tbaa !201
  %cmp50 = icmp eq i32 %sizeJ.0.lcssa, %13, !dbg !572
  br i1 %cmp50, label %if.end55, label %if.then51, !dbg !572

if.then51:                                        ; preds = %for.end47
  %14 = load %struct._IO_FILE** @stderr, align 8, !dbg !573, !tbaa !206
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([83 x i8]* @.str10, i64 0, i64 0), %struct._ETree* %etree, i32* %vwghts, i32 %maxfrontsize, i32 %seed, i32 %J.0353, i32 %sizeJ.0.lcssa, i32 %13) #5, !dbg !573
  tail call void @exit(i32 -1) #6, !dbg !575
  unreachable, !dbg !575

if.end55:                                         ; preds = %for.end47
  %cmp56 = icmp sgt i32 %sizeJ.0.lcssa, %maxfrontsize, !dbg !576
  br i1 %cmp56, label %lor.lhs.false57, label %if.then61, !dbg !576

lor.lhs.false57:                                  ; preds = %if.end55
  %arrayidx59 = getelementptr inbounds i32* %4, i64 %idxprom33, !dbg !576
  %15 = load i32* %arrayidx59, align 4, !dbg !576, !tbaa !201
  %cmp60 = icmp eq i32 %15, -1, !dbg !576
  br i1 %cmp60, label %if.then61, label %if.else, !dbg !576

if.then61:                                        ; preds = %if.end55, %lor.lhs.false57
  %inc62 = add nsw i32 %nfront2.0351, 1, !dbg !577
  tail call void @llvm.dbg.value(metadata !{i32 %inc62}, i64 0, metadata !153), !dbg !577
  tail call void @llvm.dbg.value(metadata !{i32 %nfront2.0.lcssa}, i64 0, metadata !148), !dbg !577
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !144), !dbg !579
  %cmp64343 = icmp sgt i32 %count.0.lcssa, 0, !dbg !579
  br i1 %cmp64343, label %for.body65, label %for.end72, !dbg !579

for.body65:                                       ; preds = %if.then61, %for.body65
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %for.body65 ], [ 0, %if.then61 ]
  %arrayidx67 = getelementptr inbounds i32* %call21, i64 %indvars.iv364, !dbg !581
  %16 = load i32* %arrayidx67, align 4, !dbg !581, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !159), !dbg !581
  %idxprom68 = sext i32 %16 to i64, !dbg !583
  %arrayidx69 = getelementptr inbounds i32* %call16, i64 %idxprom68, !dbg !583
  store i32 %nfront2.0351, i32* %arrayidx69, align 4, !dbg !583, !tbaa !201
  %indvars.iv.next365 = add i64 %indvars.iv364, 1, !dbg !579
  %lftr.wideiv = trunc i64 %indvars.iv.next365 to i32, !dbg !579
  %exitcond = icmp eq i32 %lftr.wideiv, %count.0.lcssa, !dbg !579
  br i1 %exitcond, label %for.end72, label %for.body65, !dbg !579

for.end72:                                        ; preds = %for.body65, %if.then61
  %arrayidx74 = getelementptr inbounds i32* %4, i64 %idxprom33, !dbg !584
  %I.0345 = load i32* %arrayidx74, align 4, !dbg !584
  %cmp76346 = icmp eq i32 %I.0345, -1, !dbg !584
  br i1 %cmp76346, label %for.end85, label %for.body77, !dbg !584

for.body77:                                       ; preds = %for.end72, %for.body77
  %I.0347 = phi i32 [ %I.0, %for.body77 ], [ %I.0345, %for.end72 ]
  %idxprom78 = sext i32 %I.0347 to i64, !dbg !586
  %arrayidx79 = getelementptr inbounds i32* %call15, i64 %idxprom78, !dbg !586
  %17 = load i32* %arrayidx79, align 4, !dbg !586, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !146), !dbg !586
  %idxprom80 = sext i32 %17 to i64, !dbg !588
  %arrayidx81 = getelementptr inbounds i32* %call14, i64 %idxprom80, !dbg !588
  store i32 %nfront2.0351, i32* %arrayidx81, align 4, !dbg !588, !tbaa !201
  %arrayidx84 = getelementptr inbounds i32* %5, i64 %idxprom78, !dbg !584
  %I.0 = load i32* %arrayidx84, align 4, !dbg !584
  %cmp76 = icmp eq i32 %I.0, -1, !dbg !584
  br i1 %cmp76, label %for.end85, label %for.body77, !dbg !584

for.end85:                                        ; preds = %for.body77, %for.end72
  %18 = load i32* %arrayidx49, align 4, !dbg !589, !tbaa !201
  %idxprom88 = sext i32 %nfront2.0351 to i64, !dbg !589
  %arrayidx89 = getelementptr inbounds i32* %call17, i64 %idxprom88, !dbg !589
  store i32 %18, i32* %arrayidx89, align 4, !dbg !589, !tbaa !201
  %arrayidx91 = getelementptr inbounds i32* %call12, i64 %idxprom33, !dbg !590
  %19 = load i32* %arrayidx91, align 4, !dbg !590, !tbaa !201
  %arrayidx93 = getelementptr inbounds i32* %call18, i64 %idxprom88, !dbg !590
  store i32 %19, i32* %arrayidx93, align 4, !dbg !590, !tbaa !201
  %arrayidx95 = getelementptr inbounds i32* %call15, i64 %idxprom33, !dbg !591
  store i32 %nfront2.0351, i32* %arrayidx95, align 4, !dbg !591, !tbaa !201
  br label %for.inc163, !dbg !592

if.else:                                          ; preds = %lor.lhs.false57
  %sub = add i32 %add96, %sizeJ.0.lcssa, !dbg !558
  %div = sdiv i32 %sub, %maxfrontsize, !dbg !558
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !154), !dbg !558
  %div97 = sdiv i32 %sizeJ.0.lcssa, %div, !dbg !593
  tail call void @llvm.dbg.value(metadata !{i32 %div97}, i64 0, metadata !150), !dbg !593
  %rem = srem i32 %sizeJ.0.lcssa, %div, !dbg !594
  %not.cmp98 = icmp ne i32 %rem, 0, !dbg !594
  %inc100 = zext i1 %not.cmp98 to i32, !dbg !594
  %div97.inc100 = add nsw i32 %inc100, %div97, !dbg !594
  tail call void @llvm.dbg.value(metadata !595, i64 0, metadata !156), !dbg !596
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !151), !dbg !597
  %arrayidx105 = getelementptr inbounds i32* %call12, i64 %idxprom33, !dbg !598
  %20 = load i32* %arrayidx105, align 4, !dbg !598, !tbaa !201
  %add106 = add nsw i32 %20, %sizeJ.0.lcssa, !dbg !598
  tail call void @llvm.dbg.value(metadata !{i32 %add106}, i64 0, metadata !149), !dbg !598
  br i1 %cmp107, label %if.then108, label %while.cond.preheader, !dbg !561

if.then108:                                       ; preds = %if.else
  tail call void @IVshuffle(i32 %count.0.lcssa, i32* %call21, i32 %seed) #5, !dbg !599
  br label %while.cond.preheader, !dbg !601

while.cond.preheader:                             ; preds = %if.then108, %if.else
  %cmp110336 = icmp sgt i32 %count.0.lcssa, 0, !dbg !602
  br i1 %cmp110336, label %while.body.lr.ph, label %while.end159, !dbg !602

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %21 = sext i32 %nfront2.0351 to i64
  br label %while.body, !dbg !602

while.body:                                       ; preds = %while.body.lr.ph, %if.end153
  %indvars.iv362 = phi i64 [ %21, %while.body.lr.ph ], [ %indvars.iv.next363, %if.end153 ]
  %ii.1340 = phi i32 [ 0, %while.body.lr.ph ], [ %ii.2.lcssa, %if.end153 ]
  %nbnd.0339 = phi i32 [ %add106, %while.body.lr.ph ], [ %sub156, %if.end153 ]
  %nfront2.1338 = phi i32 [ %nfront2.0351, %while.body.lr.ph ], [ %inc111, %if.end153 ]
  %prev.0337 = phi i32 [ -1, %while.body.lr.ph ], [ %.pre-phi, %if.end153 ]
  %indvars.iv.next363 = add i64 %indvars.iv362, 1, !dbg !602
  %inc111 = add nsw i32 %nfront2.1338, 1, !dbg !603
  tail call void @llvm.dbg.value(metadata !{i32 %inc111}, i64 0, metadata !153), !dbg !603
  tail call void @llvm.dbg.value(metadata !{i32 %nfront2.1.lcssa}, i64 0, metadata !148), !dbg !603
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !157), !dbg !604
  %cmp113328 = icmp slt i32 %ii.1340, %count.0.lcssa, !dbg !605
  br i1 %cmp113328, label %while.body114.lr.ph, label %while.end, !dbg !605

while.body114.lr.ph:                              ; preds = %while.body
  %22 = sext i32 %ii.1340 to i64
  br label %while.body114, !dbg !605

while.body114:                                    ; preds = %while.body114.lr.ph, %if.then128
  %indvars.iv360 = phi i64 [ %22, %while.body114.lr.ph ], [ %indvars.iv.next361, %if.then128 ]
  %ii.2330 = phi i32 [ %ii.1340, %while.body114.lr.ph ], [ %inc132, %if.then128 ]
  %size.0329 = phi i32 [ 0, %while.body114.lr.ph ], [ %add124, %if.then128 ]
  %arrayidx116 = getelementptr inbounds i32* %call21, i64 %indvars.iv360, !dbg !606
  %23 = load i32* %arrayidx116, align 4, !dbg !606, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !159), !dbg !606
  br i1 %cmp117, label %cond.end122, label %cond.true118, !dbg !562

cond.true118:                                     ; preds = %while.body114
  %idxprom119 = sext i32 %23 to i64, !dbg !562
  %arrayidx120 = getelementptr inbounds i32* %vwghts, i64 %idxprom119, !dbg !562
  %24 = load i32* %arrayidx120, align 4, !dbg !562, !tbaa !201
  br label %cond.end122, !dbg !562

cond.end122:                                      ; preds = %while.body114, %cond.true118
  %cond123 = phi i32 [ %24, %cond.true118 ], [ 1, %while.body114 ], !dbg !562
  tail call void @llvm.dbg.value(metadata !{i32 %cond123}, i64 0, metadata !160), !dbg !562
  %add124 = add nsw i32 %cond123, %size.0329, !dbg !607
  %cmp125 = icmp sge i32 %div97.inc100, %add124, !dbg !607
  %cmp127 = icmp eq i32 %size.0329, 0, !dbg !607
  %or.cond = or i1 %cmp125, %cmp127, !dbg !607
  br i1 %or.cond, label %if.then128, label %while.end, !dbg !607

if.then128:                                       ; preds = %cond.end122
  %idxprom129 = sext i32 %23 to i64, !dbg !608
  %arrayidx130 = getelementptr inbounds i32* %call16, i64 %idxprom129, !dbg !608
  %25 = trunc i64 %indvars.iv362 to i32, !dbg !608
  store i32 %25, i32* %arrayidx130, align 4, !dbg !608, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %add124}, i64 0, metadata !157), !dbg !610
  %indvars.iv.next361 = add i64 %indvars.iv360, 1, !dbg !605
  %inc132 = add nsw i32 %ii.2330, 1, !dbg !611
  tail call void @llvm.dbg.value(metadata !{i32 %inc132}, i64 0, metadata !144), !dbg !611
  %26 = trunc i64 %indvars.iv.next361 to i32, !dbg !605
  %cmp113 = icmp slt i32 %26, %count.0.lcssa, !dbg !605
  br i1 %cmp113, label %while.body114, label %while.end, !dbg !605

while.end:                                        ; preds = %if.then128, %cond.end122, %while.body
  %ii.2.lcssa = phi i32 [ %ii.1340, %while.body ], [ %ii.2330, %cond.end122 ], [ %inc132, %if.then128 ]
  %size.0.lcssa = phi i32 [ 0, %while.body ], [ %size.0329, %cond.end122 ], [ %add124, %if.then128 ]
  %cmp135 = icmp eq i32 %prev.0337, -1, !dbg !612
  br i1 %cmp135, label %for.cond139.preheader, label %if.else150, !dbg !612

for.cond139.preheader:                            ; preds = %while.end
  %I.1333 = load i32* %arrayidx59, align 4, !dbg !613
  %cmp140334 = icmp eq i32 %I.1333, -1, !dbg !613
  br i1 %cmp140334, label %for.cond139.preheader.if.end153.loopexit_crit_edge, label %for.body141, !dbg !613

for.cond139.preheader.if.end153.loopexit_crit_edge: ; preds = %for.cond139.preheader
  %.pre.pre = trunc i64 %indvars.iv362 to i32, !dbg !602
  br label %if.end153, !dbg !613

for.body141:                                      ; preds = %for.cond139.preheader, %for.body141
  %I.1335 = phi i32 [ %I.1, %for.body141 ], [ %I.1333, %for.cond139.preheader ]
  %idxprom142 = sext i32 %I.1335 to i64, !dbg !616
  %arrayidx143 = getelementptr inbounds i32* %call15, i64 %idxprom142, !dbg !616
  %27 = load i32* %arrayidx143, align 4, !dbg !616, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !146), !dbg !616
  %idxprom144 = sext i32 %27 to i64, !dbg !618
  %arrayidx145 = getelementptr inbounds i32* %call14, i64 %idxprom144, !dbg !618
  %28 = trunc i64 %indvars.iv362 to i32, !dbg !618
  store i32 %28, i32* %arrayidx145, align 4, !dbg !618, !tbaa !201
  %arrayidx148 = getelementptr inbounds i32* %5, i64 %idxprom142, !dbg !613
  %I.1 = load i32* %arrayidx148, align 4, !dbg !613
  %cmp140 = icmp eq i32 %I.1, -1, !dbg !613
  br i1 %cmp140, label %if.end153, label %for.body141, !dbg !613

if.else150:                                       ; preds = %while.end
  %idxprom151 = sext i32 %prev.0337 to i64, !dbg !619
  %arrayidx152 = getelementptr inbounds i32* %call14, i64 %idxprom151, !dbg !619
  %29 = trunc i64 %indvars.iv362 to i32, !dbg !619
  store i32 %29, i32* %arrayidx152, align 4, !dbg !619, !tbaa !201
  br label %if.end153

if.end153:                                        ; preds = %for.cond139.preheader.if.end153.loopexit_crit_edge, %for.body141, %if.else150
  %.pre-phi = phi i32 [ %29, %if.else150 ], [ %.pre.pre, %for.cond139.preheader.if.end153.loopexit_crit_edge ], [ %28, %for.body141 ], !dbg !602
  tail call void @llvm.dbg.value(metadata !{i32 %nfront2.1.lcssa}, i64 0, metadata !156), !dbg !621
  %arrayidx155 = getelementptr inbounds i32* %call17, i64 %indvars.iv362, !dbg !622
  store i32 %size.0.lcssa, i32* %arrayidx155, align 4, !dbg !622, !tbaa !201
  %sub156 = sub nsw i32 %nbnd.0339, %size.0.lcssa, !dbg !623
  tail call void @llvm.dbg.value(metadata !{i32 %sub156}, i64 0, metadata !149), !dbg !623
  %arrayidx158 = getelementptr inbounds i32* %call18, i64 %indvars.iv362, !dbg !624
  store i32 %sub156, i32* %arrayidx158, align 4, !dbg !624, !tbaa !201
  %cmp110 = icmp slt i32 %ii.2.lcssa, %count.0.lcssa, !dbg !602
  br i1 %cmp110, label %while.body, label %while.end159, !dbg !602

while.end159:                                     ; preds = %if.end153, %while.cond.preheader
  %Jnew.1.lcssa = phi i32 [ %Jnew.0352, %while.cond.preheader ], [ %nfront2.1338, %if.end153 ]
  %nfront2.1.lcssa = phi i32 [ %nfront2.0351, %while.cond.preheader ], [ %inc111, %if.end153 ]
  %arrayidx161 = getelementptr inbounds i32* %call15, i64 %idxprom33, !dbg !625
  store i32 %Jnew.1.lcssa, i32* %arrayidx161, align 4, !dbg !625, !tbaa !201
  br label %for.inc163

for.inc163:                                       ; preds = %for.end85, %while.end159
  %nfront2.2 = phi i32 [ %inc62, %for.end85 ], [ %nfront2.1.lcssa, %while.end159 ]
  %Jnew.2 = phi i32 [ %nfront2.0351, %for.end85 ], [ %Jnew.1.lcssa, %while.end159 ]
  %call164 = tail call i32 @Tree_postOTnext(%struct._Tree* %3, i32 %J.0353) #5, !dbg !626
  tail call void @llvm.dbg.value(metadata !{i32 %call164}, i64 0, metadata !147), !dbg !626
  %cmp31 = icmp eq i32 %call164, -1, !dbg !556
  br i1 %cmp31, label %for.end165, label %for.body32, !dbg !556

for.end165:                                       ; preds = %for.inc163, %for.end
  %nfront2.0.lcssa = phi i32 [ 0, %for.end ], [ %nfront2.2, %for.inc163 ]
  %call166 = tail call %struct._ETree* @ETree_new() #5, !dbg !627
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call166}, i64 0, metadata !141), !dbg !627
  tail call void @ETree_init1(%struct._ETree* %call166, i32 %nfront2.0.lcssa, i32 %1) #5, !dbg !628
  %tree167 = getelementptr inbounds %struct._ETree* %call166, i64 0, i32 2, !dbg !629
  %30 = load %struct._Tree** %tree167, align 8, !dbg !629, !tbaa !206
  %par = getelementptr inbounds %struct._Tree* %30, i64 0, i32 2, !dbg !629
  %31 = load i32** %par, align 8, !dbg !629, !tbaa !206
  tail call void @IVcopy(i32 %nfront2.0.lcssa, i32* %31, i32* %call14) #5, !dbg !629
  %32 = load %struct._Tree** %tree167, align 8, !dbg !630, !tbaa !206
  tail call void @Tree_setFchSibRoot(%struct._Tree* %32) #5, !dbg !630
  %vtxToFrontIV169 = getelementptr inbounds %struct._ETree* %call166, i64 0, i32 5, !dbg !631
  %33 = load %struct._IV** %vtxToFrontIV169, align 8, !dbg !631, !tbaa !206
  %call170 = tail call i32* @IV_entries(%struct._IV* %33) #5, !dbg !631
  tail call void @IVcopy(i32 %1, i32* %call170, i32* %call16) #5, !dbg !631
  %nodwghtsIV171 = getelementptr inbounds %struct._ETree* %call166, i64 0, i32 3, !dbg !632
  %34 = load %struct._IV** %nodwghtsIV171, align 8, !dbg !632, !tbaa !206
  %call172 = tail call i32* @IV_entries(%struct._IV* %34) #5, !dbg !632
  tail call void @IVcopy(i32 %nfront2.0.lcssa, i32* %call172, i32* %call17) #5, !dbg !632
  %bndwghtsIV173 = getelementptr inbounds %struct._ETree* %call166, i64 0, i32 4, !dbg !633
  %35 = load %struct._IV** %bndwghtsIV173, align 8, !dbg !633, !tbaa !206
  %call174 = tail call i32* @IV_entries(%struct._IV* %35) #5, !dbg !633
  tail call void @IVcopy(i32 %nfront2.0.lcssa, i32* %call174, i32* %call18) #5, !dbg !633
  tail call void @IVfree(i32* %call14) #5, !dbg !634
  tail call void @IVfree(i32* %call15) #5, !dbg !635
  tail call void @IVfree(i32* %call16) #5, !dbg !636
  tail call void @IVfree(i32* %call17) #5, !dbg !637
  tail call void @IVfree(i32* %call18) #5, !dbg !638
  tail call void @IVfree(i32* %call19) #5, !dbg !639
  tail call void @IVfree(i32* %call20) #5, !dbg !640
  tail call void @IVfree(i32* %call21) #5, !dbg !641
  ret %struct._ETree* %call166, !dbg !642
}

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_transform2(%struct._ETree* %etree, i32* %vwghts, i32 %maxzeros, i32 %maxfrontsize, i32 %seed) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !52), !dbg !643
  tail call void @llvm.dbg.value(metadata !{i32* %vwghts}, i64 0, metadata !53), !dbg !644
  tail call void @llvm.dbg.value(metadata !{i32 %maxzeros}, i64 0, metadata !54), !dbg !645
  tail call void @llvm.dbg.value(metadata !{i32 %maxfrontsize}, i64 0, metadata !55), !dbg !646
  tail call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !56), !dbg !647
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !648
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !648

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !648
  %0 = load i32* %nfront1, align 4, !dbg !648, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !58), !dbg !648
  %cmp2 = icmp slt i32 %0, 1, !dbg !648
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !648

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !648
  %1 = load i32* %nvtx4, align 4, !dbg !648, !tbaa !201
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !59), !dbg !648
  %cmp5 = icmp slt i32 %1, 1, !dbg !648
  %cmp7 = icmp slt i32 %maxfrontsize, 1, !dbg !648
  %or.cond = or i1 %cmp5, %cmp7, !dbg !648
  br i1 %or.cond, label %if.then, label %if.end, !dbg !648

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !649, !tbaa !206
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree, i32* %vwghts, i32 %maxzeros, i32 %maxfrontsize, i32 %seed) #5, !dbg !649
  tail call void @exit(i32 -1) #6, !dbg !651
  unreachable, !dbg !651

if.end:                                           ; preds = %lor.lhs.false3
  %call8 = tail call %struct._IV* @IV_new() #5, !dbg !652
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call8}, i64 0, metadata !60), !dbg !652
  tail call void @IV_init(%struct._IV* %call8, i32 %0, i32* null) #5, !dbg !653
  tail call void @IV_fill(%struct._IV* %call8, i32 0) #5, !dbg !654
  %call9 = tail call %struct._ETree* @ETree_mergeFrontsOne(%struct._ETree* %etree, i32 %maxzeros, %struct._IV* %call8) #7, !dbg !655
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call9}, i64 0, metadata !57), !dbg !655
  tail call void @ETree_free(%struct._ETree* %etree) #5, !dbg !656
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call9}, i64 0, metadata !52), !dbg !657
  %call10 = tail call %struct._ETree* @ETree_mergeFrontsAll(%struct._ETree* %call9, i32 %maxzeros, %struct._IV* %call8) #7, !dbg !658
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call10}, i64 0, metadata !57), !dbg !658
  tail call void @ETree_free(%struct._ETree* %call9) #5, !dbg !659
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call10}, i64 0, metadata !52), !dbg !660
  %call11 = tail call %struct._ETree* @ETree_splitFronts(%struct._ETree* %call10, i32* %vwghts, i32 %maxfrontsize, i32 %seed) #7, !dbg !661
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call11}, i64 0, metadata !57), !dbg !661
  tail call void @ETree_free(%struct._ETree* %call10) #5, !dbg !662
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call11}, i64 0, metadata !52), !dbg !663
  tail call void @IV_free(%struct._IV* %call8) #5, !dbg !664
  ret %struct._ETree* %call11, !dbg !665
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @ETree_fch(%struct._ETree*) #3

; Function Attrs: optsize
declare i32* @ETree_sib(%struct._ETree*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare i32* @ETree_nodwghts(%struct._ETree*) #3

; Function Attrs: optsize
declare i32* @ETree_bndwghts(%struct._ETree*) #3

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare %struct._ETree* @ETree_compress(%struct._ETree*, %struct._IV*) #3

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @IVshuffle(i32, i32*, i32) #3

; Function Attrs: optsize
declare %struct._ETree* @ETree_new() #3

; Function Attrs: optsize
declare void @ETree_init1(%struct._ETree*, i32, i32) #3

; Function Attrs: optsize
declare void @Tree_setFchSibRoot(%struct._Tree*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !50, metadata !61, metadata !85, metadata !109, metadata !133, metadata !175}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_transform", metadata !"ETree_transform", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._ETree* (%struct._ETree*, i32*, i32, i32, i32)* @ETree_transform, null, null, metadata !40, i32 30} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 30] [ETree_transform]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !25, metadata !14, metadata !14, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ETree]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"ETree", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [ETree] [line 31, size 0, align 0, offset 0] [from _ETree]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_ETree", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ETree] [line 32, size 320, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../ETree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !28, metadata !38, metadata !39}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nfront", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nfront] [line 33, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvtx", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 34, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tree", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [tree] [line 35, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!18 = metadata !{i32 786454, metadata !11, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !26, metadata !27}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nodwghtsIV", i32 36, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [nodwghtsIV] [line 36, size 64, align 64, offset 128] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!30 = metadata !{i32 786454, metadata !11, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!38 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"bndwghtsIV", i32 37, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [bndwghtsIV] [line 37, size 64, align 64, offset 192] [from ]
!39 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vtxToFrontIV", i32 38, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [vtxToFrontIV] [line 38, size 64, align 64, offset 256] [from ]
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49}
!41 = metadata !{i32 786689, metadata !4, metadata !"etree", metadata !5, i32 16777241, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 25]
!42 = metadata !{i32 786689, metadata !4, metadata !"vwghts", metadata !5, i32 33554458, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vwghts] [line 26]
!43 = metadata !{i32 786689, metadata !4, metadata !"maxzeros", metadata !5, i32 50331675, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxzeros] [line 27]
!44 = metadata !{i32 786689, metadata !4, metadata !"maxfrontsize", metadata !5, i32 67108892, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxfrontsize] [line 28]
!45 = metadata !{i32 786689, metadata !4, metadata !"seed", metadata !5, i32 83886109, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 29]
!46 = metadata !{i32 786688, metadata !4, metadata !"etree2", metadata !5, i32 31, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [etree2] [line 31]
!47 = metadata !{i32 786688, metadata !4, metadata !"nfront", metadata !5, i32 32, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 32]
!48 = metadata !{i32 786688, metadata !4, metadata !"nvtx", metadata !5, i32 32, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 32]
!49 = metadata !{i32 786688, metadata !4, metadata !"nzerosIV", metadata !5, i32 33, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nzerosIV] [line 33]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_transform2", metadata !"ETree_transform2", metadata !"", i32 107, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._ETree* (%struct._ETree*, i32*, i32, i32, i32)* @ETree_transform2, null, null, metadata !51, i32 113} ; [ DW_TAG_subprogram ] [line 107] [def] [scope 113] [ETree_transform2]
!51 = metadata !{metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60}
!52 = metadata !{i32 786689, metadata !50, metadata !"etree", metadata !5, i32 16777324, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 108]
!53 = metadata !{i32 786689, metadata !50, metadata !"vwghts", metadata !5, i32 33554541, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vwghts] [line 109]
!54 = metadata !{i32 786689, metadata !50, metadata !"maxzeros", metadata !5, i32 50331758, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxzeros] [line 110]
!55 = metadata !{i32 786689, metadata !50, metadata !"maxfrontsize", metadata !5, i32 67108975, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxfrontsize] [line 111]
!56 = metadata !{i32 786689, metadata !50, metadata !"seed", metadata !5, i32 83886192, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 112]
!57 = metadata !{i32 786688, metadata !50, metadata !"etree2", metadata !5, i32 114, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [etree2] [line 114]
!58 = metadata !{i32 786688, metadata !50, metadata !"nfront", metadata !5, i32 115, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 115]
!59 = metadata !{i32 786688, metadata !50, metadata !"nvtx", metadata !5, i32 115, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 115]
!60 = metadata !{i32 786688, metadata !50, metadata !"nzerosIV", metadata !5, i32 116, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nzerosIV] [line 116]
!61 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_mergeFrontsOne", metadata !"ETree_mergeFrontsOne", metadata !"", i32 180, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._ETree* (%struct._ETree*, i32, %struct._IV*)* @ETree_mergeFrontsOne, null, null, metadata !64, i32 184} ; [ DW_TAG_subprogram ] [line 180] [def] [scope 184] [ETree_mergeFrontsOne]
!62 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!63 = metadata !{metadata !8, metadata !8, metadata !14, metadata !29}
!64 = metadata !{metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84}
!65 = metadata !{i32 786689, metadata !61, metadata !"etree", metadata !5, i32 16777397, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 181]
!66 = metadata !{i32 786689, metadata !61, metadata !"maxzeros", metadata !5, i32 33554614, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxzeros] [line 182]
!67 = metadata !{i32 786689, metadata !61, metadata !"nzerosIV", metadata !5, i32 50331831, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nzerosIV] [line 183]
!68 = metadata !{i32 786688, metadata !61, metadata !"etree2", metadata !5, i32 185, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [etree2] [line 185]
!69 = metadata !{i32 786688, metadata !61, metadata !"costJ", metadata !5, i32 186, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [costJ] [line 186]
!70 = metadata !{i32 786688, metadata !61, metadata !"J", metadata !5, i32 186, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 186]
!71 = metadata !{i32 786688, metadata !61, metadata !"K", metadata !5, i32 186, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 186]
!72 = metadata !{i32 786688, metadata !61, metadata !"nfront", metadata !5, i32 186, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 186]
!73 = metadata !{i32 786688, metadata !61, metadata !"nvtx", metadata !5, i32 186, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 186]
!74 = metadata !{i32 786688, metadata !61, metadata !"nnew", metadata !5, i32 186, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnew] [line 186]
!75 = metadata !{i32 786688, metadata !61, metadata !"bndwghts", metadata !5, i32 187, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 187]
!76 = metadata !{i32 786688, metadata !61, metadata !"fch", metadata !5, i32 187, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 187]
!77 = metadata !{i32 786688, metadata !61, metadata !"map", metadata !5, i32 187, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 187]
!78 = metadata !{i32 786688, metadata !61, metadata !"nodwghts", metadata !5, i32 187, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 187]
!79 = metadata !{i32 786688, metadata !61, metadata !"nzeros", metadata !5, i32 187, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nzeros] [line 187]
!80 = metadata !{i32 786688, metadata !61, metadata !"rep", metadata !5, i32 187, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rep] [line 187]
!81 = metadata !{i32 786688, metadata !61, metadata !"sib", metadata !5, i32 187, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 187]
!82 = metadata !{i32 786688, metadata !61, metadata !"temp", metadata !5, i32 187, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 187]
!83 = metadata !{i32 786688, metadata !61, metadata !"mapIV", metadata !5, i32 188, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapIV] [line 188]
!84 = metadata !{i32 786688, metadata !61, metadata !"tree", metadata !5, i32 189, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 189]
!85 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_mergeFrontsAll", metadata !"ETree_mergeFrontsAll", metadata !"", i32 329, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._ETree* (%struct._ETree*, i32, %struct._IV*)* @ETree_mergeFrontsAll, null, null, metadata !86, i32 333} ; [ DW_TAG_subprogram ] [line 329] [def] [scope 333] [ETree_mergeFrontsAll]
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108}
!87 = metadata !{i32 786689, metadata !85, metadata !"etree", metadata !5, i32 16777546, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 330]
!88 = metadata !{i32 786689, metadata !85, metadata !"maxzeros", metadata !5, i32 33554763, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxzeros] [line 331]
!89 = metadata !{i32 786689, metadata !85, metadata !"nzerosIV", metadata !5, i32 50331980, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nzerosIV] [line 332]
!90 = metadata !{i32 786688, metadata !85, metadata !"etree2", metadata !5, i32 334, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [etree2] [line 334]
!91 = metadata !{i32 786688, metadata !85, metadata !"cost", metadata !5, i32 335, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cost] [line 335]
!92 = metadata !{i32 786688, metadata !85, metadata !"J", metadata !5, i32 335, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 335]
!93 = metadata !{i32 786688, metadata !85, metadata !"Jall", metadata !5, i32 335, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Jall] [line 335]
!94 = metadata !{i32 786688, metadata !85, metadata !"K", metadata !5, i32 335, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 335]
!95 = metadata !{i32 786688, metadata !85, metadata !"KandBnd", metadata !5, i32 335, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [KandBnd] [line 335]
!96 = metadata !{i32 786688, metadata !85, metadata !"nfront", metadata !5, i32 335, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 335]
!97 = metadata !{i32 786688, metadata !85, metadata !"nvtx", metadata !5, i32 335, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 335]
!98 = metadata !{i32 786688, metadata !85, metadata !"nnew", metadata !5, i32 335, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnew] [line 335]
!99 = metadata !{i32 786688, metadata !85, metadata !"bndwghts", metadata !5, i32 336, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 336]
!100 = metadata !{i32 786688, metadata !85, metadata !"fch", metadata !5, i32 336, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 336]
!101 = metadata !{i32 786688, metadata !85, metadata !"map", metadata !5, i32 336, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 336]
!102 = metadata !{i32 786688, metadata !85, metadata !"nodwghts", metadata !5, i32 336, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 336]
!103 = metadata !{i32 786688, metadata !85, metadata !"nzeros", metadata !5, i32 336, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nzeros] [line 336]
!104 = metadata !{i32 786688, metadata !85, metadata !"rep", metadata !5, i32 336, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rep] [line 336]
!105 = metadata !{i32 786688, metadata !85, metadata !"sib", metadata !5, i32 336, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 336]
!106 = metadata !{i32 786688, metadata !85, metadata !"temp", metadata !5, i32 336, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 336]
!107 = metadata !{i32 786688, metadata !85, metadata !"mapIV", metadata !5, i32 337, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapIV] [line 337]
!108 = metadata !{i32 786688, metadata !85, metadata !"tree", metadata !5, i32 338, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 338]
!109 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_mergeFrontsAny", metadata !"ETree_mergeFrontsAny", metadata !"", i32 501, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._ETree* (%struct._ETree*, i32, %struct._IV*)* @ETree_mergeFrontsAny, null, null, metadata !110, i32 505} ; [ DW_TAG_subprogram ] [line 501] [def] [scope 505] [ETree_mergeFrontsAny]
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132}
!111 = metadata !{i32 786689, metadata !109, metadata !"etree", metadata !5, i32 16777718, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 502]
!112 = metadata !{i32 786689, metadata !109, metadata !"maxzeros", metadata !5, i32 33554935, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxzeros] [line 503]
!113 = metadata !{i32 786689, metadata !109, metadata !"nzerosIV", metadata !5, i32 50332152, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nzerosIV] [line 504]
!114 = metadata !{i32 786688, metadata !109, metadata !"etree2", metadata !5, i32 506, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [etree2] [line 506]
!115 = metadata !{i32 786688, metadata !109, metadata !"J", metadata !5, i32 507, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 507]
!116 = metadata !{i32 786688, metadata !109, metadata !"K", metadata !5, i32 507, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 507]
!117 = metadata !{i32 786688, metadata !109, metadata !"nfront", metadata !5, i32 507, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 507]
!118 = metadata !{i32 786688, metadata !109, metadata !"nvtx", metadata !5, i32 507, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 507]
!119 = metadata !{i32 786688, metadata !109, metadata !"nnew", metadata !5, i32 507, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnew] [line 507]
!120 = metadata !{i32 786688, metadata !109, metadata !"bndwghts", metadata !5, i32 508, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 508]
!121 = metadata !{i32 786688, metadata !109, metadata !"cost", metadata !5, i32 508, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cost] [line 508]
!122 = metadata !{i32 786688, metadata !109, metadata !"fch", metadata !5, i32 508, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 508]
!123 = metadata !{i32 786688, metadata !109, metadata !"map", metadata !5, i32 508, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 508]
!124 = metadata !{i32 786688, metadata !109, metadata !"nodwghts", metadata !5, i32 508, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 508]
!125 = metadata !{i32 786688, metadata !109, metadata !"nzeros", metadata !5, i32 509, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nzeros] [line 509]
!126 = metadata !{i32 786688, metadata !109, metadata !"par", metadata !5, i32 509, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par] [line 509]
!127 = metadata !{i32 786688, metadata !109, metadata !"place", metadata !5, i32 509, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [place] [line 509]
!128 = metadata !{i32 786688, metadata !109, metadata !"rep", metadata !5, i32 509, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rep] [line 509]
!129 = metadata !{i32 786688, metadata !109, metadata !"sib", metadata !5, i32 509, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 509]
!130 = metadata !{i32 786688, metadata !109, metadata !"temp", metadata !5, i32 509, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 509]
!131 = metadata !{i32 786688, metadata !109, metadata !"mapIV", metadata !5, i32 510, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapIV] [line 510]
!132 = metadata !{i32 786688, metadata !109, metadata !"tree", metadata !5, i32 511, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 511]
!133 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_splitFronts", metadata !"ETree_splitFronts", metadata !"", i32 802, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._ETree* (%struct._ETree*, i32*, i32, i32)* @ETree_splitFronts, null, null, metadata !136, i32 807} ; [ DW_TAG_subprogram ] [line 802] [def] [scope 807] [ETree_splitFronts]
!134 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{metadata !8, metadata !8, metadata !25, metadata !14, metadata !14}
!136 = metadata !{metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174}
!137 = metadata !{i32 786689, metadata !133, metadata !"etree", metadata !5, i32 16778019, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 803]
!138 = metadata !{i32 786689, metadata !133, metadata !"vwghts", metadata !5, i32 33555236, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vwghts] [line 804]
!139 = metadata !{i32 786689, metadata !133, metadata !"maxfrontsize", metadata !5, i32 50332453, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxfrontsize] [line 805]
!140 = metadata !{i32 786689, metadata !133, metadata !"seed", metadata !5, i32 67109670, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 806]
!141 = metadata !{i32 786688, metadata !133, metadata !"etree2", metadata !5, i32 808, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [etree2] [line 808]
!142 = metadata !{i32 786688, metadata !133, metadata !"count", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 809]
!143 = metadata !{i32 786688, metadata !133, metadata !"front", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [front] [line 809]
!144 = metadata !{i32 786688, metadata !133, metadata !"ii", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 809]
!145 = metadata !{i32 786688, metadata !133, metadata !"I", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [I] [line 809]
!146 = metadata !{i32 786688, metadata !133, metadata !"Inew", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Inew] [line 809]
!147 = metadata !{i32 786688, metadata !133, metadata !"J", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 809]
!148 = metadata !{i32 786688, metadata !133, metadata !"Jnew", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Jnew] [line 809]
!149 = metadata !{i32 786688, metadata !133, metadata !"nbnd", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbnd] [line 809]
!150 = metadata !{i32 786688, metadata !133, metadata !"newsize", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newsize] [line 809]
!151 = metadata !{i32 786688, metadata !133, metadata !"nint", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 809]
!152 = metadata !{i32 786688, metadata !133, metadata !"nfront", metadata !5, i32 809, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 809]
!153 = metadata !{i32 786688, metadata !133, metadata !"nfront2", metadata !5, i32 810, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront2] [line 810]
!154 = metadata !{i32 786688, metadata !133, metadata !"nsplit", metadata !5, i32 810, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nsplit] [line 810]
!155 = metadata !{i32 786688, metadata !133, metadata !"nvtx", metadata !5, i32 810, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 810]
!156 = metadata !{i32 786688, metadata !133, metadata !"prev", metadata !5, i32 810, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 810]
!157 = metadata !{i32 786688, metadata !133, metadata !"size", metadata !5, i32 810, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 810]
!158 = metadata !{i32 786688, metadata !133, metadata !"sizeJ", metadata !5, i32 810, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeJ] [line 810]
!159 = metadata !{i32 786688, metadata !133, metadata !"v", metadata !5, i32 810, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 810]
!160 = metadata !{i32 786688, metadata !133, metadata !"vwght", metadata !5, i32 810, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vwght] [line 810]
!161 = metadata !{i32 786688, metadata !133, metadata !"bndwghts", metadata !5, i32 811, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 811]
!162 = metadata !{i32 786688, metadata !133, metadata !"fch", metadata !5, i32 811, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 811]
!163 = metadata !{i32 786688, metadata !133, metadata !"head", metadata !5, i32 811, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head] [line 811]
!164 = metadata !{i32 786688, metadata !133, metadata !"indices", metadata !5, i32 811, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 811]
!165 = metadata !{i32 786688, metadata !133, metadata !"link", metadata !5, i32 811, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [link] [line 811]
!166 = metadata !{i32 786688, metadata !133, metadata !"newbndwghts", metadata !5, i32 811, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newbndwghts] [line 811]
!167 = metadata !{i32 786688, metadata !133, metadata !"newmap", metadata !5, i32 811, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newmap] [line 811]
!168 = metadata !{i32 786688, metadata !133, metadata !"newnodwghts", metadata !5, i32 812, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newnodwghts] [line 812]
!169 = metadata !{i32 786688, metadata !133, metadata !"newpar", metadata !5, i32 812, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newpar] [line 812]
!170 = metadata !{i32 786688, metadata !133, metadata !"nodwghts", metadata !5, i32 812, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 812]
!171 = metadata !{i32 786688, metadata !133, metadata !"roots", metadata !5, i32 812, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [roots] [line 812]
!172 = metadata !{i32 786688, metadata !133, metadata !"sib", metadata !5, i32 812, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 812]
!173 = metadata !{i32 786688, metadata !133, metadata !"vtxToFront", metadata !5, i32 812, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront] [line 812]
!174 = metadata !{i32 786688, metadata !133, metadata !"tree", metadata !5, i32 813, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 813]
!175 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"visitAny", metadata !"visitAny", metadata !"", i32 646, metadata !176, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !178, i32 657} ; [ DW_TAG_subprogram ] [line 646] [local] [def] [scope 657] [visitAny]
!176 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!177 = metadata !{null, metadata !14, metadata !25, metadata !25, metadata !25, metadata !25, metadata !25, metadata !25, metadata !25, metadata !25, metadata !14}
!178 = metadata !{metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194}
!179 = metadata !{i32 786689, metadata !175, metadata !"K", metadata !5, i32 16777863, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [K] [line 647]
!180 = metadata !{i32 786689, metadata !175, metadata !"par", metadata !5, i32 33555080, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [par] [line 648]
!181 = metadata !{i32 786689, metadata !175, metadata !"fch", metadata !5, i32 50332297, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fch] [line 649]
!182 = metadata !{i32 786689, metadata !175, metadata !"sib", metadata !5, i32 67109514, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sib] [line 650]
!183 = metadata !{i32 786689, metadata !175, metadata !"nodwghts", metadata !5, i32 83886731, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nodwghts] [line 651]
!184 = metadata !{i32 786689, metadata !175, metadata !"bndwghts", metadata !5, i32 100663948, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bndwghts] [line 652]
!185 = metadata !{i32 786689, metadata !175, metadata !"rep", metadata !5, i32 117441165, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rep] [line 653]
!186 = metadata !{i32 786689, metadata !175, metadata !"cost", metadata !5, i32 134218382, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cost] [line 654]
!187 = metadata !{i32 786689, metadata !175, metadata !"nzeros", metadata !5, i32 150995599, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nzeros] [line 655]
!188 = metadata !{i32 786689, metadata !175, metadata !"maxzeros", metadata !5, i32 167772816, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxzeros] [line 656]
!189 = metadata !{i32 786688, metadata !175, metadata !"bestJ", metadata !5, i32 658, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bestJ] [line 658]
!190 = metadata !{i32 786688, metadata !175, metadata !"firstI", metadata !5, i32 658, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstI] [line 658]
!191 = metadata !{i32 786688, metadata !175, metadata !"J", metadata !5, i32 658, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 658]
!192 = metadata !{i32 786688, metadata !175, metadata !"lastI", metadata !5, i32 658, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastI] [line 658]
!193 = metadata !{i32 786688, metadata !175, metadata !"nextJ", metadata !5, i32 658, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nextJ] [line 658]
!194 = metadata !{i32 786688, metadata !175, metadata !"prevJ", metadata !5, i32 658, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prevJ] [line 658]
!195 = metadata !{i32 25, i32 0, metadata !4, null}
!196 = metadata !{i32 26, i32 0, metadata !4, null}
!197 = metadata !{i32 27, i32 0, metadata !4, null}
!198 = metadata !{i32 28, i32 0, metadata !4, null}
!199 = metadata !{i32 29, i32 0, metadata !4, null}
!200 = metadata !{i32 39, i32 0, metadata !4, null}
!201 = metadata !{metadata !"int", metadata !202}
!202 = metadata !{metadata !"omnipotent char", metadata !203}
!203 = metadata !{metadata !"Simple C/C++ TBAA"}
!204 = metadata !{i32 43, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !4, i32 42, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!206 = metadata !{metadata !"any pointer", metadata !202}
!207 = metadata !{i32 46, i32 0, metadata !205, null}
!208 = metadata !{i32 48, i32 0, metadata !4, null}
!209 = metadata !{i32 49, i32 0, metadata !4, null}
!210 = metadata !{i32 50, i32 0, metadata !4, null}
!211 = metadata !{i32 56, i32 0, metadata !4, null}
!212 = metadata !{i32 57, i32 0, metadata !4, null}
!213 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!214 = metadata !{i32 64, i32 0, metadata !4, null}
!215 = metadata !{i32 65, i32 0, metadata !4, null}
!216 = metadata !{i32 66, i32 0, metadata !4, null}
!217 = metadata !{i32 72, i32 0, metadata !4, null}
!218 = metadata !{i32 73, i32 0, metadata !4, null}
!219 = metadata !{i32 74, i32 0, metadata !4, null}
!220 = metadata !{i32 80, i32 0, metadata !4, null}
!221 = metadata !{i32 81, i32 0, metadata !4, null}
!222 = metadata !{i32 82, i32 0, metadata !4, null}
!223 = metadata !{i32 88, i32 0, metadata !4, null}
!224 = metadata !{i32 90, i32 0, metadata !4, null}
!225 = metadata !{i32 181, i32 0, metadata !61, null}
!226 = metadata !{i32 182, i32 0, metadata !61, null}
!227 = metadata !{i32 183, i32 0, metadata !61, null}
!228 = metadata !{i32 195, i32 0, metadata !61, null}
!229 = metadata !{i32 198, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !61, i32 197, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!231 = metadata !{i32 200, i32 0, metadata !230, null}
!232 = metadata !{i32 202, i32 0, metadata !61, null}
!233 = metadata !{i32 203, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !61, i32 202, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!235 = metadata !{i32 205, i32 0, metadata !234, null}
!236 = metadata !{i32 206, i32 0, metadata !234, null}
!237 = metadata !{i32 208, i32 0, metadata !61, null}
!238 = metadata !{i32 209, i32 0, metadata !61, null}
!239 = metadata !{i32 210, i32 0, metadata !61, null}
!240 = metadata !{i32 211, i32 0, metadata !61, null}
!241 = metadata !{i32 217, i32 0, metadata !61, null}
!242 = metadata !{i32 218, i32 0, metadata !61, null}
!243 = metadata !{i32 219, i32 0, metadata !61, null}
!244 = metadata !{i32 220, i32 0, metadata !61, null}
!245 = metadata !{i32 221, i32 0, metadata !61, null}
!246 = metadata !{i32 227, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !61, i32 227, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!248 = metadata !{i32 234, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !247, i32 229, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!250 = metadata !{i32 235, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !249, i32 234, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!252 = metadata !{i32 241, i32 0, metadata !251, null}
!253 = metadata !{i32 242, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !251, i32 241, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!255 = metadata !{i32 243, i32 0, metadata !254, null}
!256 = metadata !{i32 244, i32 0, metadata !254, null}
!257 = metadata !{i32 251, i32 0, metadata !254, null}
!258 = metadata !{i32 229, i32 0, metadata !247, null}
!259 = metadata !{i32 264, i32 0, metadata !61, null}
!260 = metadata !{i32 265, i32 0, metadata !61, null}
!261 = metadata !{i32 266, i32 0, metadata !61, null}
!262 = metadata !{i32 267, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !61, i32 267, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!264 = metadata !{i32 278, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !61, i32 278, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!266 = metadata !{i32 268, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !263, i32 267, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!268 = metadata !{i32 269, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !267, i32 268, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!270 = metadata !{i32 270, i32 0, metadata !269, null}
!271 = metadata !{i32 272, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !267, i32 270, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!273 = metadata !{i32 275, i32 0, metadata !272, null}
!274 = metadata !{i32 279, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !265, i32 278, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!276 = metadata !{i32 280, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !275, i32 279, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!278 = metadata !{i32 281, i32 0, metadata !277, null}
!279 = metadata !{i32 288, i32 0, metadata !61, null}
!280 = metadata !{i32 294, i32 0, metadata !61, null}
!281 = metadata !{i32 295, i32 0, metadata !61, null}
!282 = metadata !{i32 296, i32 0, metadata !61, null}
!283 = metadata !{i32 297, i32 0, metadata !61, null}
!284 = metadata !{i32 298, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !61, i32 298, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!286 = metadata !{i32 299, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !285, i32 298, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!288 = metadata !{i32 300, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !287, i32 299, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!290 = metadata !{i32 301, i32 0, metadata !289, null}
!291 = metadata !{i32 303, i32 0, metadata !61, null}
!292 = metadata !{i32 309, i32 0, metadata !61, null}
!293 = metadata !{i32 310, i32 0, metadata !61, null}
!294 = metadata !{i32 311, i32 0, metadata !61, null}
!295 = metadata !{i32 313, i32 0, metadata !61, null}
!296 = metadata !{i32 330, i32 0, metadata !85, null}
!297 = metadata !{i32 331, i32 0, metadata !85, null}
!298 = metadata !{i32 332, i32 0, metadata !85, null}
!299 = metadata !{i32 344, i32 0, metadata !85, null}
!300 = metadata !{i32 347, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !85, i32 346, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!302 = metadata !{i32 349, i32 0, metadata !301, null}
!303 = metadata !{i32 350, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !301, i32 349, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!305 = metadata !{i32 352, i32 0, metadata !304, null}
!306 = metadata !{i32 353, i32 0, metadata !301, null}
!307 = metadata !{i32 355, i32 0, metadata !85, null}
!308 = metadata !{i32 356, i32 0, metadata !309, null}
!309 = metadata !{i32 786443, metadata !1, metadata !85, i32 355, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!310 = metadata !{i32 358, i32 0, metadata !309, null}
!311 = metadata !{i32 359, i32 0, metadata !309, null}
!312 = metadata !{i32 361, i32 0, metadata !85, null}
!313 = metadata !{i32 367, i32 0, metadata !85, null}
!314 = metadata !{i32 368, i32 0, metadata !85, null}
!315 = metadata !{i32 369, i32 0, metadata !85, null}
!316 = metadata !{i32 370, i32 0, metadata !85, null}
!317 = metadata !{i32 371, i32 0, metadata !85, null}
!318 = metadata !{i32 372, i32 0, metadata !85, null}
!319 = metadata !{i32 373, i32 0, metadata !85, null}
!320 = metadata !{i32 374, i32 0, metadata !85, null}
!321 = metadata !{i32 380, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !85, i32 380, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!323 = metadata !{i32 387, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !322, i32 382, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!325 = metadata !{i32 388, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !324, i32 387, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!327 = metadata !{i32 389, i32 0, metadata !326, null}
!328 = metadata !{i32 390, i32 0, metadata !326, null}
!329 = metadata !{i32 391, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !326, i32 391, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!331 = metadata !{i32 392, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !330, i32 391, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!333 = metadata !{i32 393, i32 0, metadata !332, null}
!334 = metadata !{i32 394, i32 0, metadata !332, null}
!335 = metadata !{i32 395, i32 0, metadata !332, null}
!336 = metadata !{i32 397, i32 0, metadata !326, null}
!337 = metadata !{i32 398, i32 0, metadata !326, null}
!338 = metadata !{i32 403, i32 0, metadata !326, null}
!339 = metadata !{i32 409, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !341, i32 404, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!341 = metadata !{i32 786443, metadata !1, metadata !342, i32 404, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!342 = metadata !{i32 786443, metadata !1, metadata !326, i32 403, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!343 = metadata !{i32 410, i32 0, metadata !340, null}
!344 = metadata !{i32 404, i32 0, metadata !341, null}
!345 = metadata !{i32 412, i32 0, metadata !342, null}
!346 = metadata !{i32 413, i32 0, metadata !342, null}
!347 = metadata !{i32 382, i32 0, metadata !322, null}
!348 = metadata !{i32 426, i32 0, metadata !85, null}
!349 = metadata !{i32 427, i32 0, metadata !85, null}
!350 = metadata !{i32 428, i32 0, metadata !85, null}
!351 = metadata !{i32 429, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !85, i32 429, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!353 = metadata !{i32 440, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !85, i32 440, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!355 = metadata !{i32 430, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !352, i32 429, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!357 = metadata !{i32 431, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !356, i32 430, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!359 = metadata !{i32 432, i32 0, metadata !358, null}
!360 = metadata !{i32 434, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !356, i32 432, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!362 = metadata !{i32 437, i32 0, metadata !361, null}
!363 = metadata !{i32 441, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !354, i32 440, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!365 = metadata !{i32 442, i32 0, metadata !366, null}
!366 = metadata !{i32 786443, metadata !1, metadata !364, i32 441, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!367 = metadata !{i32 443, i32 0, metadata !366, null}
!368 = metadata !{i32 450, i32 0, metadata !85, null}
!369 = metadata !{i32 456, i32 0, metadata !85, null}
!370 = metadata !{i32 457, i32 0, metadata !85, null}
!371 = metadata !{i32 458, i32 0, metadata !85, null}
!372 = metadata !{i32 459, i32 0, metadata !85, null}
!373 = metadata !{i32 460, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !85, i32 460, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!375 = metadata !{i32 461, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !374, i32 460, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!377 = metadata !{i32 462, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !376, i32 461, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!379 = metadata !{i32 463, i32 0, metadata !378, null}
!380 = metadata !{i32 465, i32 0, metadata !85, null}
!381 = metadata !{i32 471, i32 0, metadata !85, null}
!382 = metadata !{i32 472, i32 0, metadata !85, null}
!383 = metadata !{i32 473, i32 0, metadata !85, null}
!384 = metadata !{i32 475, i32 0, metadata !85, null}
!385 = metadata !{i32 502, i32 0, metadata !109, null}
!386 = metadata !{i32 503, i32 0, metadata !109, null}
!387 = metadata !{i32 504, i32 0, metadata !109, null}
!388 = metadata !{i32 517, i32 0, metadata !109, null}
!389 = metadata !{i32 520, i32 0, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !109, i32 519, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!391 = metadata !{i32 522, i32 0, metadata !390, null}
!392 = metadata !{i32 524, i32 0, metadata !109, null}
!393 = metadata !{i32 525, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !109, i32 524, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!395 = metadata !{i32 527, i32 0, metadata !394, null}
!396 = metadata !{i32 528, i32 0, metadata !394, null}
!397 = metadata !{i32 530, i32 0, metadata !109, null}
!398 = metadata !{i32 531, i32 0, metadata !109, null}
!399 = metadata !{i32 532, i32 0, metadata !109, null}
!400 = metadata !{i32 533, i32 0, metadata !109, null}
!401 = metadata !{i32 534, i32 0, metadata !109, null}
!402 = metadata !{i32 535, i32 0, metadata !109, null}
!403 = metadata !{i32 536, i32 0, metadata !109, null}
!404 = metadata !{i32 537, i32 0, metadata !109, null}
!405 = metadata !{i32 538, i32 0, metadata !109, null}
!406 = metadata !{i32 539, i32 0, metadata !109, null}
!407 = metadata !{i32 540, i32 0, metadata !109, null}
!408 = metadata !{i32 541, i32 0, metadata !109, null}
!409 = metadata !{i32 547, i32 0, metadata !109, null}
!410 = metadata !{i32 548, i32 0, metadata !109, null}
!411 = metadata !{i32 549, i32 0, metadata !109, null}
!412 = metadata !{i32 555, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !109, i32 555, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!414 = metadata !{i32 660, i32 0, metadata !175, metadata !415}
!415 = metadata !{i32 562, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !413, i32 557, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!417 = metadata !{i32 690, i32 0, metadata !175, metadata !415}
!418 = metadata !{i32 786689, metadata !175, metadata !"K", metadata !5, i32 16777863, metadata !14, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [K] [line 647]
!419 = metadata !{i32 647, i32 0, metadata !175, metadata !415}
!420 = metadata !{i32 786689, metadata !175, metadata !"par", metadata !5, i32 33555080, metadata !25, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [par] [line 648]
!421 = metadata !{i32 648, i32 0, metadata !175, metadata !415}
!422 = metadata !{i32 786689, metadata !175, metadata !"fch", metadata !5, i32 50332297, metadata !25, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [fch] [line 649]
!423 = metadata !{i32 649, i32 0, metadata !175, metadata !415}
!424 = metadata !{i32 786689, metadata !175, metadata !"sib", metadata !5, i32 67109514, metadata !25, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [sib] [line 650]
!425 = metadata !{i32 650, i32 0, metadata !175, metadata !415}
!426 = metadata !{i32 786689, metadata !175, metadata !"nodwghts", metadata !5, i32 83886731, metadata !25, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [nodwghts] [line 651]
!427 = metadata !{i32 651, i32 0, metadata !175, metadata !415}
!428 = metadata !{i32 786689, metadata !175, metadata !"bndwghts", metadata !5, i32 100663948, metadata !25, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [bndwghts] [line 652]
!429 = metadata !{i32 652, i32 0, metadata !175, metadata !415}
!430 = metadata !{i32 786689, metadata !175, metadata !"rep", metadata !5, i32 117441165, metadata !25, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [rep] [line 653]
!431 = metadata !{i32 653, i32 0, metadata !175, metadata !415}
!432 = metadata !{i32 786689, metadata !175, metadata !"cost", metadata !5, i32 134218382, metadata !25, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [cost] [line 654]
!433 = metadata !{i32 654, i32 0, metadata !175, metadata !415}
!434 = metadata !{i32 786689, metadata !175, metadata !"nzeros", metadata !5, i32 150995599, metadata !25, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [nzeros] [line 655]
!435 = metadata !{i32 655, i32 0, metadata !175, metadata !415}
!436 = metadata !{i32 786689, metadata !175, metadata !"maxzeros", metadata !5, i32 167772816, metadata !14, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [maxzeros] [line 656]
!437 = metadata !{i32 656, i32 0, metadata !175, metadata !415}
!438 = metadata !{i32 771, i32 0, metadata !175, metadata !415}
!439 = metadata !{i32 678, i32 0, metadata !440, metadata !415}
!440 = metadata !{i32 786443, metadata !1, metadata !441, i32 677, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!441 = metadata !{i32 786443, metadata !1, metadata !175, i32 677, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!442 = metadata !{i32 677, i32 0, metadata !441, metadata !415}
!443 = metadata !{i32 684, i32 0, metadata !440, metadata !415}
!444 = metadata !{i32 786688, metadata !175, metadata !"bestJ", metadata !5, i32 658, metadata !14, i32 0, metadata !415} ; [ DW_TAG_auto_variable ] [bestJ] [line 658]
!445 = metadata !{i32 687, i32 0, metadata !446, metadata !415}
!446 = metadata !{i32 786443, metadata !1, metadata !440, i32 686, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!447 = metadata !{i32 688, i32 0, metadata !446, metadata !415}
!448 = metadata !{i32 786688, metadata !175, metadata !"J", metadata !5, i32 658, metadata !14, i32 0, metadata !415} ; [ DW_TAG_auto_variable ] [J] [line 658]
!449 = metadata !{i32 712, i32 0, metadata !450, metadata !415}
!450 = metadata !{i32 786443, metadata !1, metadata !175, i32 712, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!451 = metadata !{i32 715, i32 0, metadata !175, metadata !415}
!452 = metadata !{i32 786688, metadata !175, metadata !"nextJ", metadata !5, i32 658, metadata !14, i32 0, metadata !415} ; [ DW_TAG_auto_variable ] [nextJ] [line 658]
!453 = metadata !{i32 720, i32 0, metadata !175, metadata !415}
!454 = metadata !{i32 786688, metadata !175, metadata !"firstI", metadata !5, i32 658, metadata !14, i32 0, metadata !415} ; [ DW_TAG_auto_variable ] [firstI] [line 658]
!455 = metadata !{i32 721, i32 0, metadata !456, metadata !415}
!456 = metadata !{i32 786443, metadata !1, metadata !175, i32 720, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!457 = metadata !{i32 722, i32 0, metadata !458, metadata !415}
!458 = metadata !{i32 786443, metadata !1, metadata !456, i32 721, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!459 = metadata !{i32 726, i32 0, metadata !458, metadata !415}
!460 = metadata !{i32 727, i32 0, metadata !461, metadata !415}
!461 = metadata !{i32 786443, metadata !1, metadata !456, i32 726, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!462 = metadata !{i32 733, i32 0, metadata !463, metadata !415}
!463 = metadata !{i32 786443, metadata !1, metadata !175, i32 732, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!464 = metadata !{i32 734, i32 0, metadata !463, metadata !415}
!465 = metadata !{i32 738, i32 0, metadata !463, metadata !415}
!466 = metadata !{i32 786688, metadata !175, metadata !"lastI", metadata !5, i32 658, metadata !14, i32 0, metadata !415} ; [ DW_TAG_auto_variable ] [lastI] [line 658]
!467 = metadata !{i32 739, i32 0, metadata !468, metadata !415}
!468 = metadata !{i32 786443, metadata !1, metadata !463, i32 738, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!469 = metadata !{i32 740, i32 0, metadata !470, metadata !415}
!470 = metadata !{i32 786443, metadata !1, metadata !468, i32 739, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!471 = metadata !{i32 745, i32 0, metadata !470, metadata !415}
!472 = metadata !{i32 752, i32 0, metadata !463, metadata !415}
!473 = metadata !{i32 753, i32 0, metadata !474, metadata !415}
!474 = metadata !{i32 786443, metadata !1, metadata !463, i32 752, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!475 = metadata !{i32 757, i32 0, metadata !474, metadata !415}
!476 = metadata !{i32 758, i32 0, metadata !477, metadata !415}
!477 = metadata !{i32 786443, metadata !1, metadata !463, i32 757, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!478 = metadata !{i32 763, i32 0, metadata !463, metadata !415}
!479 = metadata !{i32 764, i32 0, metadata !480, metadata !415}
!480 = metadata !{i32 786443, metadata !1, metadata !463, i32 763, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!481 = metadata !{i32 768, i32 0, metadata !480, metadata !415}
!482 = metadata !{i32 770, i32 0, metadata !175, metadata !415}
!483 = metadata !{i32 772, i32 0, metadata !175, metadata !415}
!484 = metadata !{i32 557, i32 0, metadata !413, null}
!485 = metadata !{i32 575, i32 0, metadata !109, null}
!486 = metadata !{i32 576, i32 0, metadata !109, null}
!487 = metadata !{i32 577, i32 0, metadata !109, null}
!488 = metadata !{i32 578, i32 0, metadata !109, null}
!489 = metadata !{i32 579, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !109, i32 579, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!491 = metadata !{i32 602, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !109, i32 602, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!493 = metadata !{i32 584, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !490, i32 579, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!495 = metadata !{i32 586, i32 0, metadata !496, null}
!496 = metadata !{i32 786443, metadata !1, metadata !494, i32 584, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!497 = metadata !{i32 593, i32 0, metadata !496, null}
!498 = metadata !{i32 598, i32 0, metadata !496, null}
!499 = metadata !{i32 599, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !494, i32 598, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!501 = metadata !{i32 603, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !492, i32 602, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!503 = metadata !{i32 604, i32 0, metadata !502, null}
!504 = metadata !{i32 611, i32 0, metadata !109, null}
!505 = metadata !{i32 617, i32 0, metadata !109, null}
!506 = metadata !{i32 618, i32 0, metadata !109, null}
!507 = metadata !{i32 619, i32 0, metadata !109, null}
!508 = metadata !{i32 620, i32 0, metadata !109, null}
!509 = metadata !{i32 621, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !109, i32 621, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!511 = metadata !{i32 622, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !510, i32 621, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!513 = metadata !{i32 623, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !512, i32 622, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!515 = metadata !{i32 624, i32 0, metadata !514, null}
!516 = metadata !{i32 626, i32 0, metadata !109, null}
!517 = metadata !{i32 632, i32 0, metadata !109, null}
!518 = metadata !{i32 633, i32 0, metadata !109, null}
!519 = metadata !{i32 634, i32 0, metadata !109, null}
!520 = metadata !{i32 635, i32 0, metadata !109, null}
!521 = metadata !{i32 636, i32 0, metadata !109, null}
!522 = metadata !{i32 637, i32 0, metadata !109, null}
!523 = metadata !{i32 638, i32 0, metadata !109, null}
!524 = metadata !{i32 639, i32 0, metadata !109, null}
!525 = metadata !{i32 640, i32 0, metadata !109, null}
!526 = metadata !{i32 642, i32 0, metadata !109, null}
!527 = metadata !{i32 803, i32 0, metadata !133, null}
!528 = metadata !{i32 804, i32 0, metadata !133, null}
!529 = metadata !{i32 805, i32 0, metadata !133, null}
!530 = metadata !{i32 806, i32 0, metadata !133, null}
!531 = metadata !{i32 819, i32 0, metadata !133, null}
!532 = metadata !{i32 823, i32 0, metadata !533, null}
!533 = metadata !{i32 786443, metadata !1, metadata !133, i32 822, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!534 = metadata !{i32 825, i32 0, metadata !533, null}
!535 = metadata !{i32 827, i32 0, metadata !133, null}
!536 = metadata !{i32 828, i32 0, metadata !133, null}
!537 = metadata !{i32 829, i32 0, metadata !133, null}
!538 = metadata !{i32 830, i32 0, metadata !133, null}
!539 = metadata !{i32 831, i32 0, metadata !133, null}
!540 = metadata !{i32 832, i32 0, metadata !133, null}
!541 = metadata !{i32 838, i32 0, metadata !133, null}
!542 = metadata !{i32 839, i32 0, metadata !133, null}
!543 = metadata !{i32 840, i32 0, metadata !133, null}
!544 = metadata !{i32 841, i32 0, metadata !133, null}
!545 = metadata !{i32 842, i32 0, metadata !133, null}
!546 = metadata !{i32 843, i32 0, metadata !133, null}
!547 = metadata !{i32 844, i32 0, metadata !133, null}
!548 = metadata !{i32 845, i32 0, metadata !133, null}
!549 = metadata !{i32 846, i32 0, metadata !550, null}
!550 = metadata !{i32 786443, metadata !1, metadata !133, i32 846, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!551 = metadata !{i32 847, i32 0, metadata !552, null}
!552 = metadata !{i32 786443, metadata !1, metadata !550, i32 846, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!553 = metadata !{i32 848, i32 0, metadata !552, null}
!554 = metadata !{i32 849, i32 0, metadata !552, null}
!555 = metadata !{i32 856, i32 0, metadata !133, null}
!556 = metadata !{i32 857, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !133, i32 857, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!558 = metadata !{i32 907, i32 0, metadata !559, null}
!559 = metadata !{i32 786443, metadata !1, metadata !560, i32 900, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!560 = metadata !{i32 786443, metadata !1, metadata !557, i32 859, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!561 = metadata !{i32 920, i32 0, metadata !559, null}
!562 = metadata !{i32 929, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !1, metadata !564, i32 927, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!564 = metadata !{i32 786443, metadata !1, metadata !559, i32 924, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!565 = metadata !{i32 860, i32 0, metadata !560, null}
!566 = metadata !{i32 861, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !560, i32 861, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!568 = metadata !{i32 862, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !567, i32 861, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!570 = metadata !{i32 863, i32 0, metadata !569, null}
!571 = metadata !{i32 864, i32 0, metadata !569, null}
!572 = metadata !{i32 866, i32 0, metadata !560, null}
!573 = metadata !{i32 867, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !560, i32 866, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!575 = metadata !{i32 870, i32 0, metadata !574, null}
!576 = metadata !{i32 875, i32 0, metadata !560, null}
!577 = metadata !{i32 881, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !1, metadata !560, i32 875, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!579 = metadata !{i32 882, i32 0, metadata !580, null}
!580 = metadata !{i32 786443, metadata !1, metadata !578, i32 882, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!581 = metadata !{i32 883, i32 0, metadata !582, null}
!582 = metadata !{i32 786443, metadata !1, metadata !580, i32 882, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!583 = metadata !{i32 884, i32 0, metadata !582, null}
!584 = metadata !{i32 890, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !578, i32 890, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!586 = metadata !{i32 891, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !585, i32 890, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!588 = metadata !{i32 892, i32 0, metadata !587, null}
!589 = metadata !{i32 894, i32 0, metadata !578, null}
!590 = metadata !{i32 895, i32 0, metadata !578, null}
!591 = metadata !{i32 896, i32 0, metadata !578, null}
!592 = metadata !{i32 900, i32 0, metadata !578, null}
!593 = metadata !{i32 908, i32 0, metadata !559, null}
!594 = metadata !{i32 909, i32 0, metadata !559, null}
!595 = metadata !{i32 -1}
!596 = metadata !{i32 917, i32 0, metadata !559, null}
!597 = metadata !{i32 918, i32 0, metadata !559, null}
!598 = metadata !{i32 919, i32 0, metadata !559, null}
!599 = metadata !{i32 921, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !559, i32 920, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!601 = metadata !{i32 922, i32 0, metadata !600, null}
!602 = metadata !{i32 924, i32 0, metadata !559, null}
!603 = metadata !{i32 925, i32 0, metadata !564, null}
!604 = metadata !{i32 926, i32 0, metadata !564, null}
!605 = metadata !{i32 927, i32 0, metadata !564, null}
!606 = metadata !{i32 928, i32 0, metadata !563, null}
!607 = metadata !{i32 941, i32 0, metadata !563, null}
!608 = metadata !{i32 942, i32 0, metadata !609, null}
!609 = metadata !{i32 786443, metadata !1, metadata !563, i32 941, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!610 = metadata !{i32 943, i32 0, metadata !609, null}
!611 = metadata !{i32 949, i32 0, metadata !609, null}
!612 = metadata !{i32 954, i32 0, metadata !564, null}
!613 = metadata !{i32 955, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !615, i32 955, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!615 = metadata !{i32 786443, metadata !1, metadata !564, i32 954, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!616 = metadata !{i32 956, i32 0, metadata !617, null}
!617 = metadata !{i32 786443, metadata !1, metadata !614, i32 955, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!618 = metadata !{i32 957, i32 0, metadata !617, null}
!619 = metadata !{i32 960, i32 0, metadata !620, null}
!620 = metadata !{i32 786443, metadata !1, metadata !564, i32 959, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!621 = metadata !{i32 962, i32 0, metadata !564, null}
!622 = metadata !{i32 963, i32 0, metadata !564, null}
!623 = metadata !{i32 964, i32 0, metadata !564, null}
!624 = metadata !{i32 965, i32 0, metadata !564, null}
!625 = metadata !{i32 971, i32 0, metadata !559, null}
!626 = metadata !{i32 859, i32 0, metadata !557, null}
!627 = metadata !{i32 979, i32 0, metadata !133, null}
!628 = metadata !{i32 980, i32 0, metadata !133, null}
!629 = metadata !{i32 981, i32 0, metadata !133, null}
!630 = metadata !{i32 982, i32 0, metadata !133, null}
!631 = metadata !{i32 983, i32 0, metadata !133, null}
!632 = metadata !{i32 984, i32 0, metadata !133, null}
!633 = metadata !{i32 985, i32 0, metadata !133, null}
!634 = metadata !{i32 991, i32 0, metadata !133, null}
!635 = metadata !{i32 992, i32 0, metadata !133, null}
!636 = metadata !{i32 993, i32 0, metadata !133, null}
!637 = metadata !{i32 994, i32 0, metadata !133, null}
!638 = metadata !{i32 995, i32 0, metadata !133, null}
!639 = metadata !{i32 996, i32 0, metadata !133, null}
!640 = metadata !{i32 997, i32 0, metadata !133, null}
!641 = metadata !{i32 998, i32 0, metadata !133, null}
!642 = metadata !{i32 1000, i32 0, metadata !133, null}
!643 = metadata !{i32 108, i32 0, metadata !50, null}
!644 = metadata !{i32 109, i32 0, metadata !50, null}
!645 = metadata !{i32 110, i32 0, metadata !50, null}
!646 = metadata !{i32 111, i32 0, metadata !50, null}
!647 = metadata !{i32 112, i32 0, metadata !50, null}
!648 = metadata !{i32 122, i32 0, metadata !50, null}
!649 = metadata !{i32 126, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !1, metadata !50, i32 125, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_transform.c]
!651 = metadata !{i32 129, i32 0, metadata !650, null}
!652 = metadata !{i32 131, i32 0, metadata !50, null}
!653 = metadata !{i32 132, i32 0, metadata !50, null}
!654 = metadata !{i32 133, i32 0, metadata !50, null}
!655 = metadata !{i32 139, i32 0, metadata !50, null}
!656 = metadata !{i32 140, i32 0, metadata !50, null}
!657 = metadata !{i32 141, i32 0, metadata !50, null}
!658 = metadata !{i32 147, i32 0, metadata !50, null}
!659 = metadata !{i32 148, i32 0, metadata !50, null}
!660 = metadata !{i32 149, i32 0, metadata !50, null}
!661 = metadata !{i32 155, i32 0, metadata !50, null}
!662 = metadata !{i32 156, i32 0, metadata !50, null}
!663 = metadata !{i32 157, i32 0, metadata !50, null}
!664 = metadata !{i32 163, i32 0, metadata !50, null}
!665 = metadata !{i32 165, i32 0, metadata !50, null}
