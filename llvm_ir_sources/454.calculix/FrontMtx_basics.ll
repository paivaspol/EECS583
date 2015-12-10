; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._FrontMtx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._Tree*, %struct._ETree*, %struct._IV*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._I2Ohash*, %struct._I2Ohash*, %struct._SubMtxManager*, %struct._Lock*, %struct._PatchAndGoInfo*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Lock = type { i8*, i32, i32 }
%struct._PatchAndGoInfo = type { i32, double, double, %struct._IV*, %struct._DV* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in FrontMtx_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"\0A fatal error in FrontMtx_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [47 x i8] c"\0A fatal error in FrontMtx_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._FrontMtx* @FrontMtx_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 192) #6, !dbg !203
  %0 = bitcast i8* %call to %struct._FrontMtx*, !dbg !203
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %0}, i64 0, metadata !184), !dbg !203
  %cmp = icmp eq i8* %call, null, !dbg !203
  br i1 %cmp, label %if.then, label %if.end, !dbg !203

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !205, !tbaa !207
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 192, i32 21, i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !205
  tail call void @exit(i32 -1) #7, !dbg !205
  unreachable, !dbg !205

if.end:                                           ; preds = %entry
  tail call void @FrontMtx_setDefaultFields(%struct._FrontMtx* %0) #8, !dbg !210
  ret %struct._FrontMtx* %0, !dbg !211
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_setDefaultFields(%struct._FrontMtx* %frontmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !189), !dbg !212
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !213
  br i1 %cmp, label %if.then, label %if.end, !dbg !213

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !214, !tbaa !207
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._FrontMtx* null) #6, !dbg !214
  tail call void @exit(i32 -1) #7, !dbg !216
  unreachable, !dbg !216

if.end:                                           ; preds = %entry
  %nfront = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !217
  store i32 0, i32* %nfront, align 4, !dbg !217, !tbaa !218
  %neqns = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 1, !dbg !219
  store i32 0, i32* %neqns, align 4, !dbg !219, !tbaa !218
  %type = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 2, !dbg !220
  store i32 1, i32* %type, align 4, !dbg !220, !tbaa !218
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !221
  store i32 0, i32* %symmetryflag, align 4, !dbg !221, !tbaa !218
  %sparsityflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 4, !dbg !222
  store i32 0, i32* %sparsityflag, align 4, !dbg !222, !tbaa !218
  %pivotingflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 5, !dbg !223
  store i32 0, i32* %pivotingflag, align 4, !dbg !223, !tbaa !218
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !224
  store i32 1, i32* %dataMode, align 4, !dbg !224, !tbaa !218
  %nentD = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 7, !dbg !225
  %lock = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 26, !dbg !226
  store %struct._Lock* null, %struct._Lock** %lock, align 8, !dbg !226, !tbaa !207
  %nlocks = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 28, !dbg !227
  store i32 0, i32* %nlocks, align 4, !dbg !227, !tbaa !218
  %1 = bitcast i32* %nentD to i8*, !dbg !228
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 132, i32 4, i1 false), !dbg !229
  ret void, !dbg !228
}

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_clearData(%struct._FrontMtx* %frontmtx) #0 {
entry:
  %nadj = alloca i32, align 4
  %adj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !192), !dbg !230
  call void @llvm.dbg.declare(metadata !{i32* %nadj}, metadata !197), !dbg !231
  call void @llvm.dbg.declare(metadata !{i32** %adj}, metadata !199), !dbg !232
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !233
  br i1 %cmp, label %if.then, label %if.end, !dbg !233

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !234, !tbaa !207
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._FrontMtx* null) #6, !dbg !234
  call void @exit(i32 -1) #7, !dbg !236
  unreachable, !dbg !236

if.end:                                           ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0, !dbg !237
  %1 = load i32* %nfront1, align 4, !dbg !237, !tbaa !218
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !198), !dbg !237
  %frontsizesIV = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 12, !dbg !238
  %2 = load %struct._IV** %frontsizesIV, align 8, !dbg !238, !tbaa !207
  %cmp2 = icmp eq %struct._IV* %2, null, !dbg !238
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !238

if.then3:                                         ; preds = %if.end
  call void @IV_free(%struct._IV* %2) #6, !dbg !239
  br label %if.end5, !dbg !241

if.end5:                                          ; preds = %if.end, %if.then3
  %rowadjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 14, !dbg !242
  %3 = load %struct._IVL** %rowadjIVL, align 8, !dbg !242, !tbaa !207
  %cmp6 = icmp eq %struct._IVL* %3, null, !dbg !242
  br i1 %cmp6, label %if.end10, label %if.then7, !dbg !242

if.then7:                                         ; preds = %if.end5
  %call9 = call %struct._IVL* @IVL_free(%struct._IVL* %3) #6, !dbg !243
  br label %if.end10, !dbg !245

if.end10:                                         ; preds = %if.end5, %if.then7
  %coladjIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 15, !dbg !246
  %4 = load %struct._IVL** %coladjIVL, align 8, !dbg !246, !tbaa !207
  %cmp11 = icmp eq %struct._IVL* %4, null, !dbg !246
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !246

if.then12:                                        ; preds = %if.end10
  %call14 = call %struct._IVL* @IVL_free(%struct._IVL* %4) #6, !dbg !247
  br label %if.end15, !dbg !249

if.end15:                                         ; preds = %if.end10, %if.then12
  %p_mtxDJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 18, !dbg !250
  %5 = load %struct._SubMtx*** %p_mtxDJJ, align 8, !dbg !250, !tbaa !207
  %cmp16 = icmp eq %struct._SubMtx** %5, null, !dbg !250
  br i1 %cmp16, label %if.end29, label %for.cond.preheader, !dbg !250

for.cond.preheader:                               ; preds = %if.end15
  %cmp18305 = icmp sgt i32 %1, 0, !dbg !251
  br i1 %cmp18305, label %for.body, label %if.then25, !dbg !251

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %6 = phi %struct._SubMtx** [ %5, %for.cond.preheader ], [ %.pre332, %for.inc ], !dbg !254
  %indvars.iv325 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next326, %for.inc ]
  %arrayidx = getelementptr inbounds %struct._SubMtx** %6, i64 %indvars.iv325, !dbg !254
  %7 = load %struct._SubMtx** %arrayidx, align 8, !dbg !254, !tbaa !207
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %7}, i64 0, metadata !193), !dbg !254
  %cmp20 = icmp eq %struct._SubMtx* %7, null, !dbg !254
  br i1 %cmp20, label %for.inc, label %if.then21, !dbg !254

if.then21:                                        ; preds = %for.body
  call void @SubMtx_free(%struct._SubMtx* %7) #6, !dbg !256
  br label %for.inc, !dbg !258

for.inc:                                          ; preds = %for.body, %if.then21
  %indvars.iv.next326 = add i64 %indvars.iv325, 1, !dbg !251
  %lftr.wideiv327 = trunc i64 %indvars.iv.next326 to i32, !dbg !251
  %exitcond328 = icmp eq i32 %lftr.wideiv327, %1, !dbg !251
  %.pre332 = load %struct._SubMtx*** %p_mtxDJJ, align 8, !dbg !259, !tbaa !207
  br i1 %exitcond328, label %for.end, label %for.body, !dbg !251

for.end:                                          ; preds = %for.inc
  %cmp24 = icmp eq %struct._SubMtx** %.pre332, null, !dbg !259
  br i1 %cmp24, label %if.end29, label %if.then25, !dbg !259

if.then25:                                        ; preds = %for.cond.preheader, %for.end
  %8 = phi %struct._SubMtx** [ %.pre332, %for.end ], [ %5, %for.cond.preheader ]
  %9 = bitcast %struct._SubMtx** %8 to i8*, !dbg !260
  call void @free(i8* %9) #6, !dbg !260
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxDJJ, align 8, !dbg !260, !tbaa !207
  br label %if.end29, !dbg !260

if.end29:                                         ; preds = %for.end, %if.end15, %if.then25
  %tree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 10, !dbg !262
  %10 = load %struct._Tree** %tree, align 8, !dbg !262, !tbaa !207
  %cmp30 = icmp eq %struct._Tree* %10, null, !dbg !262
  br i1 %cmp30, label %if.end41, label %if.then31, !dbg !262

if.then31:                                        ; preds = %if.end29
  %frontETree = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 11, !dbg !263
  %11 = load %struct._ETree** %frontETree, align 8, !dbg !263, !tbaa !207
  %cmp32 = icmp eq %struct._ETree* %11, null, !dbg !263
  br i1 %cmp32, label %if.then37, label %lor.lhs.false, !dbg !263

lor.lhs.false:                                    ; preds = %if.then31
  %tree34 = getelementptr inbounds %struct._ETree* %11, i64 0, i32 2, !dbg !263
  %12 = load %struct._Tree** %tree34, align 8, !dbg !263, !tbaa !207
  %cmp36 = icmp eq %struct._Tree* %12, %10, !dbg !263
  br i1 %cmp36, label %if.end39, label %if.then37, !dbg !263

if.then37:                                        ; preds = %lor.lhs.false, %if.then31
  call void @Tree_free(%struct._Tree* %10) #6, !dbg !265
  br label %if.end39, !dbg !267

if.end39:                                         ; preds = %lor.lhs.false, %if.then37
  store %struct._Tree* null, %struct._Tree** %tree, align 8, !dbg !268, !tbaa !207
  br label %if.end41, !dbg !269

if.end41:                                         ; preds = %if.end29, %if.end39
  %dataMode = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 6, !dbg !270
  %13 = load i32* %dataMode, align 4, !dbg !270, !tbaa !218
  switch i32 %13, label %if.end189 [
    i32 1, label %if.then43
    i32 2, label %for.cond131.preheader
  ], !dbg !270

for.cond131.preheader:                            ; preds = %if.end41
  %cmp132303 = icmp sgt i32 %1, 0, !dbg !271
  br i1 %cmp132303, label %for.body133, label %for.end148, !dbg !271

if.then43:                                        ; preds = %if.end41
  %p_mtxUJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 19, !dbg !274
  %14 = load %struct._SubMtx*** %p_mtxUJJ, align 8, !dbg !274, !tbaa !207
  %cmp44 = icmp eq %struct._SubMtx** %14, null, !dbg !274
  br i1 %cmp44, label %if.end64, label %for.cond46.preheader, !dbg !274

for.cond46.preheader:                             ; preds = %if.then43
  %cmp47295 = icmp sgt i32 %1, 0, !dbg !276
  br i1 %cmp47295, label %for.body48, label %if.then60, !dbg !276

for.body48:                                       ; preds = %for.inc55, %for.cond46.preheader
  %15 = phi %struct._SubMtx** [ %14, %for.cond46.preheader ], [ %.pre331, %for.inc55 ], !dbg !279
  %indvars.iv315 = phi i64 [ 0, %for.cond46.preheader ], [ %indvars.iv.next316, %for.inc55 ]
  %arrayidx51 = getelementptr inbounds %struct._SubMtx** %15, i64 %indvars.iv315, !dbg !279
  %16 = load %struct._SubMtx** %arrayidx51, align 8, !dbg !279, !tbaa !207
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %16}, i64 0, metadata !193), !dbg !279
  %cmp52 = icmp eq %struct._SubMtx* %16, null, !dbg !279
  br i1 %cmp52, label %for.inc55, label %if.then53, !dbg !279

if.then53:                                        ; preds = %for.body48
  call void @SubMtx_free(%struct._SubMtx* %16) #6, !dbg !281
  br label %for.inc55, !dbg !283

for.inc55:                                        ; preds = %for.body48, %if.then53
  %indvars.iv.next316 = add i64 %indvars.iv315, 1, !dbg !276
  %lftr.wideiv317 = trunc i64 %indvars.iv.next316 to i32, !dbg !276
  %exitcond318 = icmp eq i32 %lftr.wideiv317, %1, !dbg !276
  %.pre331 = load %struct._SubMtx*** %p_mtxUJJ, align 8, !dbg !284, !tbaa !207
  br i1 %exitcond318, label %for.end57, label %for.body48, !dbg !276

for.end57:                                        ; preds = %for.inc55
  %cmp59 = icmp eq %struct._SubMtx** %.pre331, null, !dbg !284
  br i1 %cmp59, label %if.end64, label %if.then60, !dbg !284

if.then60:                                        ; preds = %for.cond46.preheader, %for.end57
  %17 = phi %struct._SubMtx** [ %.pre331, %for.end57 ], [ %14, %for.cond46.preheader ]
  %18 = bitcast %struct._SubMtx** %17 to i8*, !dbg !285
  call void @free(i8* %18) #6, !dbg !285
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxUJJ, align 8, !dbg !285, !tbaa !207
  br label %if.end64, !dbg !285

if.end64:                                         ; preds = %for.end57, %if.then43, %if.then60
  %p_mtxUJN = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 20, !dbg !287
  %19 = load %struct._SubMtx*** %p_mtxUJN, align 8, !dbg !287, !tbaa !207
  %cmp65 = icmp eq %struct._SubMtx** %19, null, !dbg !287
  br i1 %cmp65, label %if.end85, label %for.cond67.preheader, !dbg !287

for.cond67.preheader:                             ; preds = %if.end64
  %cmp68293 = icmp sgt i32 %1, 0, !dbg !288
  br i1 %cmp68293, label %for.body69, label %if.then81, !dbg !288

for.body69:                                       ; preds = %for.inc76, %for.cond67.preheader
  %20 = phi %struct._SubMtx** [ %19, %for.cond67.preheader ], [ %.pre330, %for.inc76 ], !dbg !291
  %indvars.iv311 = phi i64 [ 0, %for.cond67.preheader ], [ %indvars.iv.next312, %for.inc76 ]
  %arrayidx72 = getelementptr inbounds %struct._SubMtx** %20, i64 %indvars.iv311, !dbg !291
  %21 = load %struct._SubMtx** %arrayidx72, align 8, !dbg !291, !tbaa !207
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %21}, i64 0, metadata !193), !dbg !291
  %cmp73 = icmp eq %struct._SubMtx* %21, null, !dbg !291
  br i1 %cmp73, label %for.inc76, label %if.then74, !dbg !291

if.then74:                                        ; preds = %for.body69
  call void @SubMtx_free(%struct._SubMtx* %21) #6, !dbg !293
  br label %for.inc76, !dbg !295

for.inc76:                                        ; preds = %for.body69, %if.then74
  %indvars.iv.next312 = add i64 %indvars.iv311, 1, !dbg !288
  %lftr.wideiv313 = trunc i64 %indvars.iv.next312 to i32, !dbg !288
  %exitcond314 = icmp eq i32 %lftr.wideiv313, %1, !dbg !288
  %.pre330 = load %struct._SubMtx*** %p_mtxUJN, align 8, !dbg !296, !tbaa !207
  br i1 %exitcond314, label %for.end78, label %for.body69, !dbg !288

for.end78:                                        ; preds = %for.inc76
  %cmp80 = icmp eq %struct._SubMtx** %.pre330, null, !dbg !296
  br i1 %cmp80, label %if.end85, label %if.then81, !dbg !296

if.then81:                                        ; preds = %for.cond67.preheader, %for.end78
  %22 = phi %struct._SubMtx** [ %.pre330, %for.end78 ], [ %19, %for.cond67.preheader ]
  %23 = bitcast %struct._SubMtx** %22 to i8*, !dbg !297
  call void @free(i8* %23) #6, !dbg !297
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxUJN, align 8, !dbg !297, !tbaa !207
  br label %if.end85, !dbg !297

if.end85:                                         ; preds = %for.end78, %if.end64, %if.then81
  %p_mtxLJJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 21, !dbg !299
  %24 = load %struct._SubMtx*** %p_mtxLJJ, align 8, !dbg !299, !tbaa !207
  %cmp86 = icmp eq %struct._SubMtx** %24, null, !dbg !299
  br i1 %cmp86, label %if.end106, label %for.cond88.preheader, !dbg !299

for.cond88.preheader:                             ; preds = %if.end85
  %cmp89291 = icmp sgt i32 %1, 0, !dbg !300
  br i1 %cmp89291, label %for.body90, label %if.then102, !dbg !300

for.body90:                                       ; preds = %for.inc97, %for.cond88.preheader
  %25 = phi %struct._SubMtx** [ %24, %for.cond88.preheader ], [ %.pre329, %for.inc97 ], !dbg !303
  %indvars.iv307 = phi i64 [ 0, %for.cond88.preheader ], [ %indvars.iv.next308, %for.inc97 ]
  %arrayidx93 = getelementptr inbounds %struct._SubMtx** %25, i64 %indvars.iv307, !dbg !303
  %26 = load %struct._SubMtx** %arrayidx93, align 8, !dbg !303, !tbaa !207
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %26}, i64 0, metadata !193), !dbg !303
  %cmp94 = icmp eq %struct._SubMtx* %26, null, !dbg !303
  br i1 %cmp94, label %for.inc97, label %if.then95, !dbg !303

if.then95:                                        ; preds = %for.body90
  call void @SubMtx_free(%struct._SubMtx* %26) #6, !dbg !305
  br label %for.inc97, !dbg !307

for.inc97:                                        ; preds = %for.body90, %if.then95
  %indvars.iv.next308 = add i64 %indvars.iv307, 1, !dbg !300
  %lftr.wideiv309 = trunc i64 %indvars.iv.next308 to i32, !dbg !300
  %exitcond310 = icmp eq i32 %lftr.wideiv309, %1, !dbg !300
  %.pre329 = load %struct._SubMtx*** %p_mtxLJJ, align 8, !dbg !308, !tbaa !207
  br i1 %exitcond310, label %for.end99, label %for.body90, !dbg !300

for.end99:                                        ; preds = %for.inc97
  %cmp101 = icmp eq %struct._SubMtx** %.pre329, null, !dbg !308
  br i1 %cmp101, label %if.end106, label %if.then102, !dbg !308

if.then102:                                       ; preds = %for.cond88.preheader, %for.end99
  %27 = phi %struct._SubMtx** [ %.pre329, %for.end99 ], [ %24, %for.cond88.preheader ]
  %28 = bitcast %struct._SubMtx** %27 to i8*, !dbg !309
  call void @free(i8* %28) #6, !dbg !309
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxLJJ, align 8, !dbg !309, !tbaa !207
  br label %if.end106, !dbg !309

if.end106:                                        ; preds = %for.end99, %if.end85, %if.then102
  %p_mtxLNJ = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 22, !dbg !311
  %29 = load %struct._SubMtx*** %p_mtxLNJ, align 8, !dbg !311, !tbaa !207
  %cmp107 = icmp eq %struct._SubMtx** %29, null, !dbg !311
  br i1 %cmp107, label %if.end189, label %for.cond109.preheader, !dbg !311

for.cond109.preheader:                            ; preds = %if.end106
  %cmp110289 = icmp sgt i32 %1, 0, !dbg !312
  br i1 %cmp110289, label %for.body111, label %if.then123, !dbg !312

for.body111:                                      ; preds = %for.inc118, %for.cond109.preheader
  %30 = phi %struct._SubMtx** [ %29, %for.cond109.preheader ], [ %.pre, %for.inc118 ], !dbg !315
  %indvars.iv = phi i64 [ 0, %for.cond109.preheader ], [ %indvars.iv.next, %for.inc118 ]
  %arrayidx114 = getelementptr inbounds %struct._SubMtx** %30, i64 %indvars.iv, !dbg !315
  %31 = load %struct._SubMtx** %arrayidx114, align 8, !dbg !315, !tbaa !207
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %31}, i64 0, metadata !193), !dbg !315
  %cmp115 = icmp eq %struct._SubMtx* %31, null, !dbg !315
  br i1 %cmp115, label %for.inc118, label %if.then116, !dbg !315

if.then116:                                       ; preds = %for.body111
  call void @SubMtx_free(%struct._SubMtx* %31) #6, !dbg !317
  br label %for.inc118, !dbg !319

for.inc118:                                       ; preds = %for.body111, %if.then116
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !312
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !312
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !312
  %.pre = load %struct._SubMtx*** %p_mtxLNJ, align 8, !dbg !320, !tbaa !207
  br i1 %exitcond, label %for.end120, label %for.body111, !dbg !312

for.end120:                                       ; preds = %for.inc118
  %cmp122 = icmp eq %struct._SubMtx** %.pre, null, !dbg !320
  br i1 %cmp122, label %if.end189, label %if.then123, !dbg !320

if.then123:                                       ; preds = %for.cond109.preheader, %for.end120
  %32 = phi %struct._SubMtx** [ %.pre, %for.end120 ], [ %29, %for.cond109.preheader ]
  %33 = bitcast %struct._SubMtx** %32 to i8*, !dbg !321
  call void @free(i8* %33) #6, !dbg !321
  store %struct._SubMtx** null, %struct._SubMtx*** %p_mtxLNJ, align 8, !dbg !321, !tbaa !207
  br label %if.end189, !dbg !321

for.body133:                                      ; preds = %for.cond131.preheader, %for.inc146
  %J.5304 = phi i32 [ %inc147, %for.inc146 ], [ 0, %for.cond131.preheader ]
  call void @FrontMtx_upperAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.5304, i32* %nadj, i32** %adj) #6, !dbg !323
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !194), !dbg !325
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !197), !dbg !325
  %34 = load i32* %nadj, align 4, !dbg !325, !tbaa !218
  %cmp135301 = icmp sgt i32 %34, 0, !dbg !325
  br i1 %cmp135301, label %for.body136, label %for.inc146, !dbg !325

for.body136:                                      ; preds = %for.body133, %for.inc143
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %for.inc143 ], [ 0, %for.body133 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !199), !dbg !327
  %35 = load i32** %adj, align 8, !dbg !327, !tbaa !207
  %arrayidx138 = getelementptr inbounds i32* %35, i64 %indvars.iv322, !dbg !327
  %36 = load i32* %arrayidx138, align 4, !dbg !327, !tbaa !218
  call void @llvm.dbg.value(metadata !{i32 %36}, i64 0, metadata !196), !dbg !327
  %call139 = call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %J.5304, i32 %36) #6, !dbg !329
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call139}, i64 0, metadata !193), !dbg !329
  %cmp140 = icmp eq %struct._SubMtx* %call139, null, !dbg !329
  br i1 %cmp140, label %for.inc143, label %if.then141, !dbg !329

if.then141:                                       ; preds = %for.body136
  call void @SubMtx_free(%struct._SubMtx* %call139) #6, !dbg !330
  br label %for.inc143, !dbg !332

for.inc143:                                       ; preds = %for.body136, %if.then141
  %indvars.iv.next323 = add i64 %indvars.iv322, 1, !dbg !325
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !197), !dbg !325
  %37 = load i32* %nadj, align 4, !dbg !325, !tbaa !218
  %38 = trunc i64 %indvars.iv.next323 to i32, !dbg !325
  %cmp135 = icmp slt i32 %38, %37, !dbg !325
  br i1 %cmp135, label %for.body136, label %for.inc146, !dbg !325

for.inc146:                                       ; preds = %for.inc143, %for.body133
  %inc147 = add nsw i32 %J.5304, 1, !dbg !271
  call void @llvm.dbg.value(metadata !{i32 %inc147}, i64 0, metadata !195), !dbg !271
  %exitcond324 = icmp eq i32 %inc147, %1, !dbg !271
  br i1 %exitcond324, label %for.end148, label %for.body133, !dbg !271

for.end148:                                       ; preds = %for.inc146, %for.cond131.preheader
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3, !dbg !333
  %39 = load i32* %symmetryflag, align 4, !dbg !333, !tbaa !218
  %cmp149.not = icmp ne i32 %39, 2, !dbg !333
  %cmp132303.not = xor i1 %cmp132303, true, !dbg !333
  %brmerge = or i1 %cmp149.not, %cmp132303.not, !dbg !333
  br i1 %brmerge, label %if.end169, label %for.body153, !dbg !333

for.body153:                                      ; preds = %for.end148, %for.inc166
  %J.6300 = phi i32 [ %inc167, %for.inc166 ], [ 0, %for.end148 ]
  call void @FrontMtx_lowerAdjFronts(%struct._FrontMtx* %frontmtx, i32 %J.6300, i32* %nadj, i32** %adj) #6, !dbg !334
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !194), !dbg !338
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !197), !dbg !338
  %40 = load i32* %nadj, align 4, !dbg !338, !tbaa !218
  %cmp155297 = icmp sgt i32 %40, 0, !dbg !338
  br i1 %cmp155297, label %for.body156, label %for.inc166, !dbg !338

for.body156:                                      ; preds = %for.body153, %for.inc163
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %for.inc163 ], [ 0, %for.body153 ]
  call void @llvm.dbg.value(metadata !{i32** %adj}, i64 0, metadata !199), !dbg !340
  %41 = load i32** %adj, align 8, !dbg !340, !tbaa !207
  %arrayidx158 = getelementptr inbounds i32* %41, i64 %indvars.iv319, !dbg !340
  %42 = load i32* %arrayidx158, align 4, !dbg !340, !tbaa !218
  call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !196), !dbg !340
  %call159 = call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %42, i32 %J.6300) #6, !dbg !342
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call159}, i64 0, metadata !193), !dbg !342
  %cmp160 = icmp eq %struct._SubMtx* %call159, null, !dbg !342
  br i1 %cmp160, label %for.inc163, label %if.then161, !dbg !342

if.then161:                                       ; preds = %for.body156
  call void @SubMtx_free(%struct._SubMtx* %call159) #6, !dbg !343
  br label %for.inc163, !dbg !345

for.inc163:                                       ; preds = %for.body156, %if.then161
  %indvars.iv.next320 = add i64 %indvars.iv319, 1, !dbg !338
  call void @llvm.dbg.value(metadata !{i32* %nadj}, i64 0, metadata !197), !dbg !338
  %43 = load i32* %nadj, align 4, !dbg !338, !tbaa !218
  %44 = trunc i64 %indvars.iv.next320 to i32, !dbg !338
  %cmp155 = icmp slt i32 %44, %43, !dbg !338
  br i1 %cmp155, label %for.body156, label %for.inc166, !dbg !338

for.inc166:                                       ; preds = %for.inc163, %for.body153
  %inc167 = add nsw i32 %J.6300, 1, !dbg !346
  call void @llvm.dbg.value(metadata !{i32 %inc167}, i64 0, metadata !195), !dbg !346
  %exitcond321 = icmp eq i32 %inc167, %1, !dbg !346
  br i1 %exitcond321, label %if.end169, label %for.body153, !dbg !346

if.end169:                                        ; preds = %for.end148, %for.inc166
  %lowerblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 16, !dbg !347
  %45 = load %struct._IVL** %lowerblockIVL, align 8, !dbg !347, !tbaa !207
  %cmp170 = icmp eq %struct._IVL* %45, null, !dbg !347
  br i1 %cmp170, label %if.end174, label %if.then171, !dbg !347

if.then171:                                       ; preds = %if.end169
  %call173 = call %struct._IVL* @IVL_free(%struct._IVL* %45) #6, !dbg !348
  br label %if.end174, !dbg !350

if.end174:                                        ; preds = %if.end169, %if.then171
  %upperblockIVL = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 17, !dbg !351
  %46 = load %struct._IVL** %upperblockIVL, align 8, !dbg !351, !tbaa !207
  %cmp175 = icmp eq %struct._IVL* %46, null, !dbg !351
  br i1 %cmp175, label %if.end179, label %if.then176, !dbg !351

if.then176:                                       ; preds = %if.end174
  %call178 = call %struct._IVL* @IVL_free(%struct._IVL* %46) #6, !dbg !352
  br label %if.end179, !dbg !354

if.end179:                                        ; preds = %if.end174, %if.then176
  %lowerhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 23, !dbg !355
  %47 = load %struct._I2Ohash** %lowerhash, align 8, !dbg !355, !tbaa !207
  %cmp180 = icmp eq %struct._I2Ohash* %47, null, !dbg !355
  br i1 %cmp180, label %if.end183, label %if.then181, !dbg !355

if.then181:                                       ; preds = %if.end179
  call void @I2Ohash_free(%struct._I2Ohash* %47) #6, !dbg !356
  br label %if.end183, !dbg !358

if.end183:                                        ; preds = %if.end179, %if.then181
  %upperhash = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 24, !dbg !359
  %48 = load %struct._I2Ohash** %upperhash, align 8, !dbg !359, !tbaa !207
  %cmp184 = icmp eq %struct._I2Ohash* %48, null, !dbg !359
  br i1 %cmp184, label %if.end189, label %if.then185, !dbg !359

if.then185:                                       ; preds = %if.end183
  call void @I2Ohash_free(%struct._I2Ohash* %48) #6, !dbg !360
  br label %if.end189, !dbg !362

if.end189:                                        ; preds = %if.end41, %for.end120, %if.end106, %if.end183, %if.then185, %if.then123
  %lock = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 26, !dbg !363
  %49 = load %struct._Lock** %lock, align 8, !dbg !363, !tbaa !207
  %cmp190 = icmp eq %struct._Lock* %49, null, !dbg !363
  br i1 %cmp190, label %if.end193, label %if.then191, !dbg !363

if.then191:                                       ; preds = %if.end189
  call void @Lock_free(%struct._Lock* %49) #6, !dbg !364
  br label %if.end193, !dbg !366

if.end193:                                        ; preds = %if.end189, %if.then191
  call void @FrontMtx_setDefaultFields(%struct._FrontMtx* %frontmtx) #8, !dbg !367
  ret void, !dbg !368
}

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #4

; Function Attrs: optsize
declare %struct._IVL* @IVL_free(%struct._IVL*) #4

; Function Attrs: optsize
declare void @SubMtx_free(%struct._SubMtx*) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare void @Tree_free(%struct._Tree*) #4

; Function Attrs: optsize
declare void @FrontMtx_upperAdjFronts(%struct._FrontMtx*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx*, i32, i32) #4

; Function Attrs: optsize
declare void @FrontMtx_lowerAdjFronts(%struct._FrontMtx*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx*, i32, i32) #4

; Function Attrs: optsize
declare void @I2Ohash_free(%struct._I2Ohash*) #4

; Function Attrs: optsize
declare void @Lock_free(%struct._Lock*) #4

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_free(%struct._FrontMtx* %frontmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._FrontMtx* %frontmtx}, i64 0, metadata !202), !dbg !369
  %cmp = icmp eq %struct._FrontMtx* %frontmtx, null, !dbg !370
  br i1 %cmp, label %if.then, label %if.end, !dbg !370

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !371, !tbaa !207
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), %struct._FrontMtx* null) #6, !dbg !371
  tail call void @exit(i32 -1) #7, !dbg !373
  unreachable, !dbg !373

if.end:                                           ; preds = %entry
  tail call void @FrontMtx_clearData(%struct._FrontMtx* %frontmtx) #8, !dbg !374
  %1 = bitcast %struct._FrontMtx* %frontmtx to i8*, !dbg !375
  tail call void @free(i8* %1) #6, !dbg !375
  tail call void @llvm.dbg.value(metadata !377, i64 0, metadata !202), !dbg !375
  ret void, !dbg !378
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !185, metadata !190, metadata !200}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_new", metadata !"FrontMtx_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._FrontMtx* ()* @FrontMtx_new, null, null, metadata !183, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [FrontMtx_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FrontMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"FrontMtx", i32 96, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [FrontMtx] [line 96, size 0, align 0, offset 0] [from _FrontMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_FrontMtx", i32 97, i64 1536, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_FrontMtx] [line 97, size 1536, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../FrontMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !36, metadata !57, metadata !58, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !143, metadata !144, metadata !169, metadata !170, metadata !182}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nfront", i32 98, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nfront] [line 98, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"neqns", i32 99, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [neqns] [line 99, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 100, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 100, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"symmetryflag", i32 101, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [symmetryflag] [line 101, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sparsityflag", i32 102, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [sparsityflag] [line 102, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"pivotingflag", i32 103, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [pivotingflag] [line 103, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"dataMode", i32 104, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [dataMode] [line 104, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nentD", i32 105, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [nentD] [line 105, size 32, align 32, offset 224] [from int]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nentL", i32 106, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [nentL] [line 106, size 32, align 32, offset 256] [from int]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nentU", i32 107, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [nentU] [line 107, size 32, align 32, offset 288] [from int]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tree", i32 108, i64 64, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [tree] [line 108, size 64, align 64, offset 320] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!26 = metadata !{i32 786454, metadata !11, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!27 = metadata !{i32 786451, metadata !28, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!28 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !34, metadata !35}
!30 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!32 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!34 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!36 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"frontETree", i32 109, i64 64, i64 64, i64 384, i32 0, metadata !37} ; [ DW_TAG_member ] [frontETree] [line 109, size 64, align 64, offset 384] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ETree]
!38 = metadata !{i32 786454, metadata !11, null, metadata !"ETree", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [ETree] [line 31, size 0, align 0, offset 0] [from _ETree]
!39 = metadata !{i32 786451, metadata !40, null, metadata !"_ETree", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !41, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ETree] [line 32, size 320, align 64, offset 0] [from ]
!40 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../ETree/ETree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45, metadata !55, metadata !56}
!42 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nfront", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nfront] [line 33, size 32, align 32, offset 0] [from int]
!43 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nvtx", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 34, size 32, align 32, offset 32] [from int]
!44 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"tree", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [tree] [line 35, size 64, align 64, offset 64] [from ]
!45 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"nodwghtsIV", i32 36, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [nodwghtsIV] [line 36, size 64, align 64, offset 128] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!47 = metadata !{i32 786454, metadata !40, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!48 = metadata !{i32 786451, metadata !49, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!49 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !54}
!51 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!52 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!53 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!54 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!55 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"bndwghtsIV", i32 37, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [bndwghtsIV] [line 37, size 64, align 64, offset 192] [from ]
!56 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"vtxToFrontIV", i32 38, i64 64, i64 64, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [vtxToFrontIV] [line 38, size 64, align 64, offset 256] [from ]
!57 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"frontsizesIV", i32 110, i64 64, i64 64, i64 448, i32 0, metadata !46} ; [ DW_TAG_member ] [frontsizesIV] [line 110, size 64, align 64, offset 448] [from ]
!58 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"symbfacIVL", i32 111, i64 64, i64 64, i64 512, i32 0, metadata !59} ; [ DW_TAG_member ] [symbfacIVL] [line 111, size 64, align 64, offset 512] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!60 = metadata !{i32 786454, metadata !11, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!61 = metadata !{i32 786451, metadata !62, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !63, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!62 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !71, metadata !72}
!64 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!65 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!66 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!67 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!68 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!69 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !70} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!71 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!72 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !73} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!74 = metadata !{i32 786454, metadata !62, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!75 = metadata !{i32 786451, metadata !62, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !76, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!76 = metadata !{metadata !77, metadata !78, metadata !79, metadata !80}
!77 = metadata !{i32 786445, metadata !62, metadata !75, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!78 = metadata !{i32 786445, metadata !62, metadata !75, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!79 = metadata !{i32 786445, metadata !62, metadata !75, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!80 = metadata !{i32 786445, metadata !62, metadata !75, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !73} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!81 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowadjIVL", i32 112, i64 64, i64 64, i64 576, i32 0, metadata !59} ; [ DW_TAG_member ] [rowadjIVL] [line 112, size 64, align 64, offset 576] [from ]
!82 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"coladjIVL", i32 113, i64 64, i64 64, i64 640, i32 0, metadata !59} ; [ DW_TAG_member ] [coladjIVL] [line 113, size 64, align 64, offset 640] [from ]
!83 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lowerblockIVL", i32 114, i64 64, i64 64, i64 704, i32 0, metadata !59} ; [ DW_TAG_member ] [lowerblockIVL] [line 114, size 64, align 64, offset 704] [from ]
!84 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"upperblockIVL", i32 115, i64 64, i64 64, i64 768, i32 0, metadata !59} ; [ DW_TAG_member ] [upperblockIVL] [line 115, size 64, align 64, offset 768] [from ]
!85 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p_mtxDJJ", i32 116, i64 64, i64 64, i64 832, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxDJJ] [line 116, size 64, align 64, offset 832] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!88 = metadata !{i32 786454, metadata !11, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!89 = metadata !{i32 786451, metadata !90, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !91, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!90 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../SubMtx/SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!91 = metadata !{metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !102, metadata !111}
!92 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!93 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!94 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!95 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!96 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!97 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!98 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!99 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !100} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!101 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!102 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !103} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!103 = metadata !{i32 786454, metadata !90, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!104 = metadata !{i32 786451, metadata !105, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !106, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!105 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110}
!107 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!108 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!109 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!110 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !100} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!111 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !112} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!113 = metadata !{i32 786454, metadata !90, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!114 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p_mtxUJJ", i32 117, i64 64, i64 64, i64 896, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxUJJ] [line 117, size 64, align 64, offset 896] [from ]
!115 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p_mtxUJN", i32 118, i64 64, i64 64, i64 960, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxUJN] [line 118, size 64, align 64, offset 960] [from ]
!116 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p_mtxLJJ", i32 119, i64 64, i64 64, i64 1024, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxLJJ] [line 119, size 64, align 64, offset 1024] [from ]
!117 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p_mtxLNJ", i32 120, i64 64, i64 64, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [p_mtxLNJ] [line 120, size 64, align 64, offset 1088] [from ]
!118 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lowerhash", i32 121, i64 64, i64 64, i64 1152, i32 0, metadata !119} ; [ DW_TAG_member ] [lowerhash] [line 121, size 64, align 64, offset 1152] [from ]
!119 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2Ohash]
!120 = metadata !{i32 786454, metadata !11, null, metadata !"I2Ohash", i32 6, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [I2Ohash] [line 6, size 0, align 0, offset 0] [from _I2Ohash]
!121 = metadata !{i32 786451, metadata !122, null, metadata !"_I2Ohash", i32 7, i64 320, i64 64, i32 0, i32 0, null, metadata !123, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2Ohash] [line 7, size 320, align 64, offset 0] [from ]
!122 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../I2Ohash/I2Ohash.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!123 = metadata !{metadata !124, metadata !125, metadata !126, metadata !127, metadata !140, metadata !141}
!124 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"nlist", i32 8, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 8, size 32, align 32, offset 0] [from int]
!125 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"grow", i32 9, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [grow] [line 9, size 32, align 32, offset 32] [from int]
!126 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"nitem", i32 10, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nitem] [line 10, size 32, align 32, offset 64] [from int]
!127 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"baseI2OP", i32 11, i64 64, i64 64, i64 128, i32 0, metadata !128} ; [ DW_TAG_member ] [baseI2OP] [line 11, size 64, align 64, offset 128] [from ]
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!129 = metadata !{i32 786454, metadata !122, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!130 = metadata !{i32 786451, metadata !131, null, metadata !"_I2OP", i32 6, i64 192, i64 64, i32 0, i32 0, null, metadata !132, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2OP] [line 6, size 192, align 64, offset 0] [from ]
!131 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Utilities/I2OP.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !137}
!133 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"value0", i32 7, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [value0] [line 7, size 32, align 32, offset 0] [from int]
!134 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"value1", i32 8, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [value1] [line 8, size 32, align 32, offset 32] [from int]
!135 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"value2", i32 9, i64 64, i64 64, i64 64, i32 0, metadata !136} ; [ DW_TAG_member ] [value2] [line 9, size 64, align 64, offset 64] [from ]
!136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!137 = metadata !{i32 786445, metadata !131, metadata !130, metadata !"next", i32 10, i64 64, i64 64, i64 128, i32 0, metadata !138} ; [ DW_TAG_member ] [next] [line 10, size 64, align 64, offset 128] [from ]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!139 = metadata !{i32 786454, metadata !131, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!140 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"freeI2OP", i32 12, i64 64, i64 64, i64 192, i32 0, metadata !128} ; [ DW_TAG_member ] [freeI2OP] [line 12, size 64, align 64, offset 192] [from ]
!141 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"heads", i32 13, i64 64, i64 64, i64 256, i32 0, metadata !142} ; [ DW_TAG_member ] [heads] [line 13, size 64, align 64, offset 256] [from ]
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!143 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"upperhash", i32 122, i64 64, i64 64, i64 1216, i32 0, metadata !119} ; [ DW_TAG_member ] [upperhash] [line 122, size 64, align 64, offset 1216] [from ]
!144 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"manager", i32 123, i64 64, i64 64, i64 1280, i32 0, metadata !145} ; [ DW_TAG_member ] [manager] [line 123, size 64, align 64, offset 1280] [from ]
!145 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtxManager]
!146 = metadata !{i32 786454, metadata !11, null, metadata !"SubMtxManager", i32 9, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_typedef ] [SubMtxManager] [line 9, size 0, align 0, offset 0] [from _SubMtxManager]
!147 = metadata !{i32 786451, metadata !148, null, metadata !"_SubMtxManager", i32 10, i64 448, i64 64, i32 0, i32 0, null, metadata !149, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtxManager] [line 10, size 448, align 64, offset 0] [from ]
!148 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../SubMtxManager/SubMtxManager.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!149 = metadata !{metadata !150, metadata !151, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168}
!150 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"head", i32 11, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [head] [line 11, size 64, align 64, offset 0] [from ]
!151 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"lock", i32 12, i64 64, i64 64, i64 64, i32 0, metadata !152} ; [ DW_TAG_member ] [lock] [line 12, size 64, align 64, offset 64] [from ]
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Lock]
!153 = metadata !{i32 786454, metadata !148, null, metadata !"Lock", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ] [Lock] [line 36, size 0, align 0, offset 0] [from _Lock]
!154 = metadata !{i32 786451, metadata !155, null, metadata !"_Lock", i32 37, i64 128, i64 64, i32 0, i32 0, null, metadata !156, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Lock] [line 37, size 128, align 64, offset 0] [from ]
!155 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../Lock/Lock.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!156 = metadata !{metadata !157, metadata !158, metadata !159}
!157 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"mutex", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !136} ; [ DW_TAG_member ] [mutex] [line 45, size 64, align 64, offset 0] [from ]
!158 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nlocks", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 47, size 32, align 32, offset 64] [from int]
!159 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nunlocks", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nunlocks] [line 48, size 32, align 32, offset 96] [from int]
!160 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"mode", i32 13, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 13, size 32, align 32, offset 128] [from int]
!161 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nactive", i32 14, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nactive] [line 14, size 32, align 32, offset 160] [from int]
!162 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nbytesactive", i32 15, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytesactive] [line 15, size 32, align 32, offset 192] [from int]
!163 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nbytesrequested", i32 16, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytesrequested] [line 16, size 32, align 32, offset 224] [from int]
!164 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nbytesalloc", i32 17, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytesalloc] [line 17, size 32, align 32, offset 256] [from int]
!165 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nrequests", i32 18, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [nrequests] [line 18, size 32, align 32, offset 288] [from int]
!166 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nreleases", i32 19, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [nreleases] [line 19, size 32, align 32, offset 320] [from int]
!167 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nlocks", i32 20, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 20, size 32, align 32, offset 352] [from int]
!168 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nunlocks", i32 21, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [nunlocks] [line 21, size 32, align 32, offset 384] [from int]
!169 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lock", i32 124, i64 64, i64 64, i64 1344, i32 0, metadata !152} ; [ DW_TAG_member ] [lock] [line 124, size 64, align 64, offset 1344] [from ]
!170 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"patchinfo", i32 125, i64 64, i64 64, i64 1408, i32 0, metadata !171} ; [ DW_TAG_member ] [patchinfo] [line 125, size 64, align 64, offset 1408] [from ]
!171 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PatchAndGoInfo]
!172 = metadata !{i32 786454, metadata !11, null, metadata !"PatchAndGoInfo", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !173} ; [ DW_TAG_typedef ] [PatchAndGoInfo] [line 31, size 0, align 0, offset 0] [from _PatchAndGoInfo]
!173 = metadata !{i32 786451, metadata !174, null, metadata !"_PatchAndGoInfo", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !175, i32 0, null, null} ; [ DW_TAG_structure_type ] [_PatchAndGoInfo] [line 32, size 320, align 64, offset 0] [from ]
!174 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/../../PatchAndGoInfo/PatchAndGoInfo.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!175 = metadata !{metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!176 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"strategy", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [strategy] [line 33, size 32, align 32, offset 0] [from int]
!177 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"toosmall", i32 34, i64 64, i64 64, i64 64, i32 0, metadata !101} ; [ DW_TAG_member ] [toosmall] [line 34, size 64, align 64, offset 64] [from double]
!178 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"fudge", i32 35, i64 64, i64 64, i64 128, i32 0, metadata !101} ; [ DW_TAG_member ] [fudge] [line 35, size 64, align 64, offset 128] [from double]
!179 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"fudgeIV", i32 36, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [fudgeIV] [line 36, size 64, align 64, offset 192] [from ]
!180 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"fudgeDV", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !181} ; [ DW_TAG_member ] [fudgeDV] [line 37, size 64, align 64, offset 256] [from ]
!181 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!182 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlocks", i32 126, i64 32, i64 32, i64 1472, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 126, size 32, align 32, offset 1472] [from int]
!183 = metadata !{metadata !184}
!184 = metadata !{i32 786688, metadata !4, metadata !"frontmtx", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frontmtx] [line 19]
!185 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_setDefaultFields", metadata !"FrontMtx_setDefaultFields", metadata !"", i32 35, metadata !186, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*)* @FrontMtx_setDefaultFields, null, null, metadata !188, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [FrontMtx_setDefaultFields]
!186 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!187 = metadata !{null, metadata !8}
!188 = metadata !{metadata !189}
!189 = metadata !{i32 786689, metadata !185, metadata !"frontmtx", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 36]
!190 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_clearData", metadata !"FrontMtx_clearData", metadata !"", i32 82, metadata !186, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*)* @FrontMtx_clearData, null, null, metadata !191, i32 84} ; [ DW_TAG_subprogram ] [line 82] [def] [scope 84] [FrontMtx_clearData]
!191 = metadata !{metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199}
!192 = metadata !{i32 786689, metadata !190, metadata !"frontmtx", metadata !5, i32 16777299, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 83]
!193 = metadata !{i32 786688, metadata !190, metadata !"mtx", metadata !5, i32 85, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 85]
!194 = metadata !{i32 786688, metadata !190, metadata !"ii", metadata !5, i32 86, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 86]
!195 = metadata !{i32 786688, metadata !190, metadata !"J", metadata !5, i32 86, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 86]
!196 = metadata !{i32 786688, metadata !190, metadata !"K", metadata !5, i32 86, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 86]
!197 = metadata !{i32 786688, metadata !190, metadata !"nadj", metadata !5, i32 86, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nadj] [line 86]
!198 = metadata !{i32 786688, metadata !190, metadata !"nfront", metadata !5, i32 86, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 86]
!199 = metadata !{i32 786688, metadata !190, metadata !"adj", metadata !5, i32 87, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 87]
!200 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FrontMtx_free", metadata !"FrontMtx_free", metadata !"", i32 221, metadata !186, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._FrontMtx*)* @FrontMtx_free, null, null, metadata !201, i32 223} ; [ DW_TAG_subprogram ] [line 221] [def] [scope 223] [FrontMtx_free]
!201 = metadata !{metadata !202}
!202 = metadata !{i32 786689, metadata !200, metadata !"frontmtx", metadata !5, i32 16777438, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmtx] [line 222]
!203 = metadata !{i32 21, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!205 = metadata !{i32 21, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !204, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!207 = metadata !{metadata !"any pointer", metadata !208}
!208 = metadata !{metadata !"omnipotent char", metadata !209}
!209 = metadata !{metadata !"Simple C/C++ TBAA"}
!210 = metadata !{i32 22, i32 0, metadata !4, null}
!211 = metadata !{i32 24, i32 0, metadata !4, null}
!212 = metadata !{i32 36, i32 0, metadata !185, null}
!213 = metadata !{i32 38, i32 0, metadata !185, null}
!214 = metadata !{i32 39, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !185, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!216 = metadata !{i32 41, i32 0, metadata !215, null}
!217 = metadata !{i32 43, i32 0, metadata !185, null}
!218 = metadata !{metadata !"int", metadata !208}
!219 = metadata !{i32 44, i32 0, metadata !185, null}
!220 = metadata !{i32 45, i32 0, metadata !185, null}
!221 = metadata !{i32 46, i32 0, metadata !185, null}
!222 = metadata !{i32 47, i32 0, metadata !185, null}
!223 = metadata !{i32 48, i32 0, metadata !185, null}
!224 = metadata !{i32 49, i32 0, metadata !185, null}
!225 = metadata !{i32 50, i32 0, metadata !185, null}
!226 = metadata !{i32 68, i32 0, metadata !185, null}
!227 = metadata !{i32 69, i32 0, metadata !185, null}
!228 = metadata !{i32 71, i32 0, metadata !185, null}
!229 = metadata !{i32 51, i32 0, metadata !185, null}
!230 = metadata !{i32 83, i32 0, metadata !190, null}
!231 = metadata !{i32 86, i32 0, metadata !190, null}
!232 = metadata !{i32 87, i32 0, metadata !190, null}
!233 = metadata !{i32 93, i32 0, metadata !190, null}
!234 = metadata !{i32 94, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !190, i32 93, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!236 = metadata !{i32 96, i32 0, metadata !235, null}
!237 = metadata !{i32 98, i32 0, metadata !190, null}
!238 = metadata !{i32 104, i32 0, metadata !190, null}
!239 = metadata !{i32 105, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !190, i32 104, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!241 = metadata !{i32 106, i32 0, metadata !240, null}
!242 = metadata !{i32 107, i32 0, metadata !190, null}
!243 = metadata !{i32 108, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !190, i32 107, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!245 = metadata !{i32 109, i32 0, metadata !244, null}
!246 = metadata !{i32 110, i32 0, metadata !190, null}
!247 = metadata !{i32 111, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !190, i32 110, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!249 = metadata !{i32 112, i32 0, metadata !248, null}
!250 = metadata !{i32 113, i32 0, metadata !190, null}
!251 = metadata !{i32 114, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !253, i32 114, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!253 = metadata !{i32 786443, metadata !1, metadata !190, i32 113, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!254 = metadata !{i32 115, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !252, i32 114, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!256 = metadata !{i32 116, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !255, i32 115, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!258 = metadata !{i32 117, i32 0, metadata !257, null}
!259 = metadata !{i32 119, i32 0, metadata !253, null}
!260 = metadata !{i32 119, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !253, i32 119, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!262 = metadata !{i32 121, i32 0, metadata !190, null}
!263 = metadata !{i32 122, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !190, i32 121, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!265 = metadata !{i32 124, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !264, i32 123, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!267 = metadata !{i32 125, i32 0, metadata !266, null}
!268 = metadata !{i32 126, i32 0, metadata !264, null}
!269 = metadata !{i32 127, i32 0, metadata !264, null}
!270 = metadata !{i32 128, i32 0, metadata !190, null}
!271 = metadata !{i32 162, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !273, i32 162, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!273 = metadata !{i32 786443, metadata !1, metadata !190, i32 161, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!274 = metadata !{i32 129, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !190, i32 128, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!276 = metadata !{i32 130, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !278, i32 130, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!278 = metadata !{i32 786443, metadata !1, metadata !275, i32 129, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!279 = metadata !{i32 131, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !277, i32 130, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!281 = metadata !{i32 132, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !280, i32 131, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!283 = metadata !{i32 133, i32 0, metadata !282, null}
!284 = metadata !{i32 135, i32 0, metadata !278, null}
!285 = metadata !{i32 135, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !278, i32 135, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!287 = metadata !{i32 137, i32 0, metadata !275, null}
!288 = metadata !{i32 138, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !290, i32 138, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!290 = metadata !{i32 786443, metadata !1, metadata !275, i32 137, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!291 = metadata !{i32 139, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !289, i32 138, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!293 = metadata !{i32 140, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !292, i32 139, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!295 = metadata !{i32 141, i32 0, metadata !294, null}
!296 = metadata !{i32 143, i32 0, metadata !290, null}
!297 = metadata !{i32 143, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !1, metadata !290, i32 143, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!299 = metadata !{i32 145, i32 0, metadata !275, null}
!300 = metadata !{i32 146, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !302, i32 146, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!302 = metadata !{i32 786443, metadata !1, metadata !275, i32 145, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!303 = metadata !{i32 147, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !301, i32 146, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!305 = metadata !{i32 148, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !304, i32 147, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!307 = metadata !{i32 149, i32 0, metadata !306, null}
!308 = metadata !{i32 151, i32 0, metadata !302, null}
!309 = metadata !{i32 151, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !302, i32 151, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!311 = metadata !{i32 153, i32 0, metadata !275, null}
!312 = metadata !{i32 154, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !314, i32 154, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!314 = metadata !{i32 786443, metadata !1, metadata !275, i32 153, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!315 = metadata !{i32 155, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !313, i32 154, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!317 = metadata !{i32 156, i32 0, metadata !318, null}
!318 = metadata !{i32 786443, metadata !1, metadata !316, i32 155, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!319 = metadata !{i32 157, i32 0, metadata !318, null}
!320 = metadata !{i32 159, i32 0, metadata !314, null}
!321 = metadata !{i32 159, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !314, i32 159, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!323 = metadata !{i32 163, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !272, i32 162, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!325 = metadata !{i32 164, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !324, i32 164, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!327 = metadata !{i32 165, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !326, i32 164, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!329 = metadata !{i32 166, i32 0, metadata !328, null}
!330 = metadata !{i32 167, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !328, i32 166, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!332 = metadata !{i32 168, i32 0, metadata !331, null}
!333 = metadata !{i32 171, i32 0, metadata !273, null}
!334 = metadata !{i32 173, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !336, i32 172, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!336 = metadata !{i32 786443, metadata !1, metadata !337, i32 172, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!337 = metadata !{i32 786443, metadata !1, metadata !273, i32 171, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!338 = metadata !{i32 174, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !335, i32 174, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!340 = metadata !{i32 175, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !339, i32 174, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!342 = metadata !{i32 176, i32 0, metadata !341, null}
!343 = metadata !{i32 177, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !341, i32 176, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!345 = metadata !{i32 178, i32 0, metadata !344, null}
!346 = metadata !{i32 172, i32 0, metadata !336, null}
!347 = metadata !{i32 182, i32 0, metadata !273, null}
!348 = metadata !{i32 183, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !273, i32 182, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!350 = metadata !{i32 184, i32 0, metadata !349, null}
!351 = metadata !{i32 185, i32 0, metadata !273, null}
!352 = metadata !{i32 186, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !273, i32 185, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!354 = metadata !{i32 187, i32 0, metadata !353, null}
!355 = metadata !{i32 188, i32 0, metadata !273, null}
!356 = metadata !{i32 189, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !273, i32 188, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!358 = metadata !{i32 190, i32 0, metadata !357, null}
!359 = metadata !{i32 191, i32 0, metadata !273, null}
!360 = metadata !{i32 192, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !273, i32 191, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!362 = metadata !{i32 193, i32 0, metadata !361, null}
!363 = metadata !{i32 195, i32 0, metadata !190, null}
!364 = metadata !{i32 201, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !190, i32 195, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!366 = metadata !{i32 202, i32 0, metadata !365, null}
!367 = metadata !{i32 208, i32 0, metadata !190, null}
!368 = metadata !{i32 210, i32 0, metadata !190, null}
!369 = metadata !{i32 222, i32 0, metadata !200, null}
!370 = metadata !{i32 224, i32 0, metadata !200, null}
!371 = metadata !{i32 225, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !1, metadata !200, i32 224, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!373 = metadata !{i32 227, i32 0, metadata !372, null}
!374 = metadata !{i32 229, i32 0, metadata !200, null}
!375 = metadata !{i32 230, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !200, i32 230, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_basics.c]
!377 = metadata !{%struct._FrontMtx* null}
!378 = metadata !{i32 232, i32 0, metadata !200, null}
