; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }

@stdlog = global %struct._IO_FILE* null, align 8
@gmx_parallel = global i32 0, align 4
@par_fn.buf = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"tpr\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"edr\00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"Multi-checking %s... \00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"ibuf\00", align 1
@.str6 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c\00", align 1
@.str7 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str8 = private unnamed_addr constant [37 x i8] c"\0A%s is not equal for all subsystems\0A\00", align 1
@.str9 = private unnamed_addr constant [20 x i8] c"  subsystem %d: %d\0A\00", align 1
@.str10 = private unnamed_addr constant [38 x i8] c"The %d subsystems are not compatible\0A\00", align 1
@.str11 = private unnamed_addr constant [31 x i8] c"Communication error on NODE 0!\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"lognm\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str14 = private unnamed_addr constant [66 x i8] c"Log file opened: nodeid %d, nnodes = %d, host = %s, process = %d\0A\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"mcr\00", align 1
@.str17 = private unnamed_addr constant [10 x i8] c"fnm[i].fn\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"cr\00", align 1
@.str19 = private unnamed_addr constant [4 x i8] c"-np\00", align 1
@.str20 = private unnamed_addr constant [32 x i8] c"(!PAR(cr) && (cr->nodeid != 0))\00", align 1
@stderr = external global %struct._IO_FILE*
@.str22 = private unnamed_addr constant [9 x i8] c"argv_tmp\00", align 1
@.str23 = private unnamed_addr constant [19 x i8] c"NODEID=%d argc=%d\0A\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str25 = private unnamed_addr constant [27 x i8] c"Communicating argv[%d]=%s\0A\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"argv_tmp[i]\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @par_fn(i8* nocapture %base, i32 %ftp, %struct.t_commrec* nocapture %cr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %base}, i64 0, metadata !74), !dbg !219
  tail call void @llvm.dbg.value(metadata !{i32 %ftp}, i64 0, metadata !75), !dbg !219
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !76), !dbg !219
  %call = tail call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* %base) #6, !dbg !220
  %call1 = tail call i64 @strlen(i8* %base) #7, !dbg !221
  %sub = add i64 %call1, -4, !dbg !221
  %arrayidx = getelementptr inbounds [256 x i8]* @par_fn.buf, i64 0, i64 %sub, !dbg !221
  store i8 0, i8* %arrayidx, align 1, !dbg !221, !tbaa !222
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !224
  %0 = load i32* %nnodes, align 4, !dbg !224, !tbaa !225
  %cmp = icmp sgt i32 %0, 1, !dbg !224
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !224

lor.lhs.false:                                    ; preds = %entry
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !224
  %1 = load i32* %nthreads, align 4, !dbg !224, !tbaa !225
  %cmp2 = icmp sgt i32 %1, 1, !dbg !224
  br i1 %cmp2, label %if.then, label %if.end, !dbg !224

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = tail call i64 @strlen(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0)) #7, !dbg !226
  %add.ptr = getelementptr inbounds [256 x i8]* @par_fn.buf, i64 0, i64 %call3, !dbg !226
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !226
  %2 = load i32* %nodeid, align 4, !dbg !226, !tbaa !225
  %call4 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %2) #6, !dbg !226
  br label %if.end, !dbg !226

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %strlen = tail call i64 @strlen(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0)), !dbg !227
  %endptr = getelementptr [256 x i8]* @par_fn.buf, i64 0, i64 %strlen, !dbg !227
  %3 = bitcast i8* %endptr to i16*, !dbg !227
  store i16 46, i16* %3, align 1, !dbg !227
  %cmp6 = icmp eq i32 %ftp, 24, !dbg !228
  br i1 %cmp6, label %cond.end11, label %cond.false, !dbg !228

cond.false:                                       ; preds = %if.end
  %cmp7 = icmp eq i32 %ftp, 8, !dbg !228
  br i1 %cmp7, label %cond.end11, label %cond.false9, !dbg !228

cond.false9:                                      ; preds = %cond.false
  %call10 = tail call i8* @ftp2ext(i32 %ftp) #6, !dbg !228
  br label %cond.end11, !dbg !228

cond.end11:                                       ; preds = %cond.false9, %cond.false, %if.end
  %cond12 = phi i8* [ getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), %if.end ], [ %call10, %cond.false9 ], [ getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), %cond.false ], !dbg !228
  %call13 = tail call i8* @strcat(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* %cond12) #6, !dbg !228
  ret i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), !dbg !229
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #2

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #4

; Function Attrs: nounwind optsize uwtable
define void @check_multi_int(%struct._IO_FILE* %log, %struct.t_commrec* %mcr, i32 %val, i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !136), !dbg !230
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %mcr}, i64 0, metadata !137), !dbg !230
  tail call void @llvm.dbg.value(metadata !{i32 %val}, i64 0, metadata !138), !dbg !230
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !139), !dbg !230
  %tobool = icmp ne %struct._IO_FILE* %log, null, !dbg !231
  br i1 %tobool, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([22 x i8]* @.str4, i64 0, i64 0), i8* %name) #6, !dbg !232
  br label %if.end, !dbg !232

if.end:                                           ; preds = %if.then, %entry
  %nnodes = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 1, !dbg !233
  %0 = load i32* %nnodes, align 4, !dbg !233, !tbaa !225
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 144, i32 %0, i32 4) #6, !dbg !233
  %1 = bitcast i8* %call1 to i32*, !dbg !233
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !140), !dbg !233
  %nodeid = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 0, !dbg !234
  %2 = load i32* %nodeid, align 4, !dbg !234, !tbaa !225
  %idxprom = sext i32 %2 to i64, !dbg !234
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !234
  store i32 %val, i32* %arrayidx, align 4, !dbg !234, !tbaa !225
  %tobool2 = icmp eq %struct.t_commrec* %mcr, null, !dbg !235
  br i1 %tobool2, label %for.cond.preheader, label %land.lhs.true, !dbg !235

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32* %nnodes, align 4, !dbg !235, !tbaa !225
  %cmp = icmp sgt i32 %3, 1, !dbg !235
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !235

lor.lhs.false:                                    ; preds = %land.lhs.true
  %nthreads = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 5, !dbg !235
  %4 = load i32* %nthreads, align 4, !dbg !235, !tbaa !225
  %cmp4 = icmp sgt i32 %4, 1, !dbg !235
  br i1 %cmp4, label %if.then5, label %for.cond.preheader, !dbg !235

if.then5:                                         ; preds = %lor.lhs.false, %land.lhs.true
  tail call void @gmx_sumi(i32 %3, i32* %1, %struct.t_commrec* %mcr) #6, !dbg !236
  br label %for.cond.preheader, !dbg !236

for.cond.preheader:                               ; preds = %if.end, %if.then5, %lor.lhs.false
  %5 = load i32* %nnodes, align 4, !dbg !237, !tbaa !225
  %cmp964 = icmp sgt i32 %5, 1, !dbg !237
  br i1 %cmp964, label %for.body, label %for.end, !dbg !237

for.body:                                         ; preds = %for.cond.preheader, %land.end
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %land.end ], [ 1, %for.cond.preheader ]
  %bCompatible.066 = phi i32 [ %land.ext, %land.end ], [ 1, %for.cond.preheader ]
  %tobool10 = icmp eq i32 %bCompatible.066, 0, !dbg !239
  br i1 %tobool10, label %land.end, label %land.rhs, !dbg !239

land.rhs:                                         ; preds = %for.body
  %6 = add nsw i64 %indvars.iv69, -1, !dbg !239
  %arrayidx12 = getelementptr inbounds i32* %1, i64 %6, !dbg !239
  %7 = load i32* %arrayidx12, align 4, !dbg !239, !tbaa !225
  %arrayidx14 = getelementptr inbounds i32* %1, i64 %indvars.iv69, !dbg !239
  %8 = load i32* %arrayidx14, align 4, !dbg !239, !tbaa !225
  %cmp15 = icmp eq i32 %7, %8, !dbg !239
  br label %land.end

land.end:                                         ; preds = %for.body, %land.rhs
  %9 = phi i1 [ false, %for.body ], [ %cmp15, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  tail call void @llvm.dbg.value(metadata !{i32 %land.ext}, i64 0, metadata !143), !dbg !240
  %indvars.iv.next70 = add i64 %indvars.iv69, 1, !dbg !237
  %10 = trunc i64 %indvars.iv.next70 to i32, !dbg !237
  %cmp9 = icmp slt i32 %10, %5, !dbg !237
  br i1 %cmp9, label %for.body, label %for.end, !dbg !237

for.end:                                          ; preds = %land.end, %for.cond.preheader
  %bCompatible.0.lcssa = phi i32 [ 1, %for.cond.preheader ], [ %land.ext, %land.end ]
  br i1 %tobool, label %if.then17, label %if.end34, !dbg !241

if.then17:                                        ; preds = %for.end
  %tobool18 = icmp eq i32 %bCompatible.0.lcssa, 0, !dbg !242
  br i1 %tobool18, label %if.else, label %if.then19, !dbg !242

if.then19:                                        ; preds = %if.then17
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %log), !dbg !244
  br label %if.end34, !dbg !244

if.else:                                          ; preds = %if.then17
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([37 x i8]* @.str8, i64 0, i64 0), i8* %name) #6, !dbg !245
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !142), !dbg !247
  %12 = load i32* %nnodes, align 4, !dbg !247, !tbaa !225
  %cmp2462 = icmp sgt i32 %12, 0, !dbg !247
  br i1 %cmp2462, label %for.body25, label %for.end31, !dbg !247

for.body25:                                       ; preds = %if.else, %for.body25
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body25 ], [ 0, %if.else ]
  %arrayidx27 = getelementptr inbounds i32* %1, i64 %indvars.iv, !dbg !249
  %13 = load i32* %arrayidx27, align 4, !dbg !249, !tbaa !225
  %14 = trunc i64 %indvars.iv to i32, !dbg !249
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str9, i64 0, i64 0), i32 %14, i32 %13) #6, !dbg !249
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !247
  %15 = load i32* %nnodes, align 4, !dbg !247, !tbaa !225
  %16 = trunc i64 %indvars.iv.next to i32, !dbg !247
  %cmp24 = icmp slt i32 %16, %15, !dbg !247
  br i1 %cmp24, label %for.body25, label %for.end31, !dbg !247

for.end31:                                        ; preds = %for.body25, %if.else
  %.lcssa = phi i32 [ %12, %if.else ], [ %15, %for.body25 ]
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str10, i64 0, i64 0), i32 %.lcssa) #6, !dbg !250
  br label %if.end34

if.end34:                                         ; preds = %if.then19, %for.end31, %for.end
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 165, i8* %call1) #6, !dbg !251
  ret void, !dbg !252
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #4

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #4

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #4

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind optsize uwtable
define void @open_log(i8* %lognm, %struct.t_commrec* nocapture %cr) #0 {
entry:
  %len = alloca i32, align 4
  %testlen = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %lognm}, i64 0, metadata !148), !dbg !253
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !149), !dbg !253
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !150), !dbg !254
  call void @llvm.dbg.declare(metadata !{i32* %testlen}, metadata !151), !dbg !254
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !255
  %0 = load i32* %nnodes, align 4, !dbg !255, !tbaa !225
  %cmp = icmp sgt i32 %0, 1, !dbg !255
  br i1 %cmp, label %if.then, label %if.end15, !dbg !255

if.then:                                          ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !256
  %1 = load i32* %nodeid, align 4, !dbg !256, !tbaa !225
  %cmp1 = icmp eq i32 %1, 0, !dbg !256
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !256

land.lhs.true:                                    ; preds = %if.then
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !256
  %2 = load i32* %threadid, align 4, !dbg !256, !tbaa !225
  %cmp2 = icmp eq i32 %2, 0, !dbg !256
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !256

if.then3:                                         ; preds = %land.lhs.true
  %call = call i64 @strlen(i8* %lognm) #7, !dbg !258
  %add = add i64 %call, 1, !dbg !258
  %conv = trunc i64 %add to i32, !dbg !258
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !150), !dbg !258
  store i32 %conv, i32* %len, align 4, !dbg !258, !tbaa !225
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !260
  %3 = load i32* %right, align 4, !dbg !260, !tbaa !225
  %4 = bitcast i32* %len to i8*, !dbg !260
  call void @gmx_txs(i32 %3, i8* %4, i32 4) #6, !dbg !260
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !261
  %5 = load i32* %left, align 4, !dbg !261, !tbaa !225
  %6 = bitcast i32* %testlen to i8*, !dbg !261
  call void @gmx_rxs(i32 %5, i8* %6, i32 4) #6, !dbg !261
  %7 = load i32* %right, align 4, !dbg !262, !tbaa !225
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !262
  %8 = load i32* %len, align 4, !dbg !262, !tbaa !225
  call void @gmx_txs(i32 %7, i8* %lognm, i32 %8) #6, !dbg !262
  %9 = load i32* %left, align 4, !dbg !263, !tbaa !225
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !263
  %10 = load i32* %len, align 4, !dbg !263, !tbaa !225
  call void @gmx_rxs(i32 %9, i8* %lognm, i32 %10) #6, !dbg !263
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !264
  %11 = load i32* %len, align 4, !dbg !264, !tbaa !225
  call void @llvm.dbg.value(metadata !{i32* %testlen}, i64 0, metadata !151), !dbg !264
  %12 = load i32* %testlen, align 4, !dbg !264, !tbaa !225
  %cmp6 = icmp eq i32 %11, %12, !dbg !264
  br i1 %cmp6, label %if.end15, label %if.then8, !dbg !264

if.then8:                                         ; preds = %if.then3
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([31 x i8]* @.str11, i64 0, i64 0)) #6, !dbg !265
  br label %if.end15, !dbg !265

if.else:                                          ; preds = %land.lhs.true, %if.then
  %left9 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !266
  %13 = load i32* %left9, align 4, !dbg !266, !tbaa !225
  %14 = bitcast i32* %len to i8*, !dbg !266
  call void @gmx_rxs(i32 %13, i8* %14, i32 4) #6, !dbg !266
  %right10 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !268
  %15 = load i32* %right10, align 4, !dbg !268, !tbaa !225
  call void @gmx_txs(i32 %15, i8* %14, i32 4) #6, !dbg !268
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !269
  %16 = load i32* %len, align 4, !dbg !269, !tbaa !225
  %call11 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 195, i32 %16, i32 1) #6, !dbg !269
  call void @llvm.dbg.value(metadata !{i8* %call11}, i64 0, metadata !148), !dbg !269
  %17 = load i32* %left9, align 4, !dbg !270, !tbaa !225
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !270
  %18 = load i32* %len, align 4, !dbg !270, !tbaa !225
  call void @gmx_rxs(i32 %17, i8* %call11, i32 %18) #6, !dbg !270
  %19 = load i32* %right10, align 4, !dbg !271, !tbaa !225
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !150), !dbg !271
  %20 = load i32* %len, align 4, !dbg !271, !tbaa !225
  call void @gmx_txs(i32 %19, i8* %call11, i32 %20) #6, !dbg !271
  br label %if.end15

if.end15:                                         ; preds = %if.then3, %if.else, %if.then8, %entry
  %lognm.addr.0 = phi i8* [ %lognm, %if.then8 ], [ %lognm, %if.then3 ], [ %call11, %if.else ], [ %lognm, %entry ]
  %call16 = call i8* @par_fn(i8* %lognm.addr.0, i32 18, %struct.t_commrec* %cr) #8, !dbg !272
  call void @llvm.dbg.value(metadata !273, i64 0, metadata !153), !dbg !272
  %call17 = call %struct._IO_FILE* @ffopen(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #6, !dbg !274
  store %struct._IO_FILE* %call17, %struct._IO_FILE** @stdlog, align 8, !dbg !274, !tbaa !275
  call void @llvm.dbg.value(metadata !276, i64 0, metadata !154), !dbg !277
  %call18 = call i32 @getpid() #6, !dbg !278
  call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !152), !dbg !278
  %21 = load %struct._IO_FILE** @stdlog, align 8, !dbg !279, !tbaa !275
  %tobool = icmp eq %struct._IO_FILE* %21, null, !dbg !279
  br i1 %tobool, label %if.end25, label %if.then19, !dbg !279

if.then19:                                        ; preds = %if.end15
  %nodeid20 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !280
  %22 = load i32* %nodeid20, align 4, !dbg !280, !tbaa !225
  %23 = load i32* %nnodes, align 4, !dbg !280, !tbaa !225
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([66 x i8]* @.str14, i64 0, i64 0), i32 %22, i32 %23, i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 %call18) #6, !dbg !280
  %24 = load %struct._IO_FILE** @stdlog, align 8, !dbg !282, !tbaa !275
  %call24 = call i32 @fflush(%struct._IO_FILE* %24) #6, !dbg !282
  br label %if.end25, !dbg !283

if.end25:                                         ; preds = %if.end15, %if.then19
  ret void, !dbg !284
}

; Function Attrs: optsize
declare void @gmx_txs(i32, i8*, i32) #4

; Function Attrs: optsize
declare void @gmx_rxs(i32, i8*, i32) #4

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #4

; Function Attrs: nounwind optsize
declare i32 @getpid() #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define %struct.t_commrec* @init_multisystem(%struct.t_commrec* nocapture %cr, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !167), !dbg !285
  tail call void @llvm.dbg.value(metadata !{i32 %nfile}, i64 0, metadata !168), !dbg !285
  tail call void @llvm.dbg.value(metadata !{%struct.t_filenm* %fnm}, i64 0, metadata !169), !dbg !285
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 275, i32 1, i32 24) #6, !dbg !286
  %0 = bitcast i8* %call to %struct.t_commrec*, !dbg !286
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %0}, i64 0, metadata !170), !dbg !286
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !287
  %1 = load i32* %nodeid, align 4, !dbg !287, !tbaa !225
  %nodeid1 = bitcast i8* %call to i32*, !dbg !287
  store i32 %1, i32* %nodeid1, align 4, !dbg !287, !tbaa !225
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !288
  %2 = load i32* %nnodes, align 4, !dbg !288, !tbaa !225
  %nnodes2 = getelementptr inbounds i8* %call, i64 4, !dbg !288
  %3 = bitcast i8* %nnodes2 to i32*, !dbg !288
  store i32 %2, i32* %3, align 4, !dbg !288, !tbaa !225
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !289
  %4 = load i32* %left, align 4, !dbg !289, !tbaa !225
  %left3 = getelementptr inbounds i8* %call, i64 8, !dbg !289
  %5 = bitcast i8* %left3 to i32*, !dbg !289
  store i32 %4, i32* %5, align 4, !dbg !289, !tbaa !225
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !290
  %6 = load i32* %right, align 4, !dbg !290, !tbaa !225
  %right4 = getelementptr inbounds i8* %call, i64 12, !dbg !290
  %7 = bitcast i8* %right4 to i32*, !dbg !290
  store i32 %6, i32* %7, align 4, !dbg !290, !tbaa !225
  store i32 0, i32* %nodeid, align 4, !dbg !291, !tbaa !225
  store i32 1, i32* %nnodes, align 4, !dbg !292, !tbaa !225
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !171), !dbg !293
  %cmp39 = icmp sgt i32 %nfile, 0, !dbg !293
  br i1 %cmp39, label %for.body, label %for.end, !dbg !293

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2, !dbg !295
  %8 = load i8** %fn, align 8, !dbg !295, !tbaa !275
  %call7 = tail call i32 @fn2ftp(i8* %8) #6, !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !172), !dbg !295
  %cmp8 = icmp eq i32 %call7, 18, !dbg !297
  br i1 %cmp8, label %for.inc, label %if.then, !dbg !297

if.then:                                          ; preds = %for.body
  %9 = load i8** %fn, align 8, !dbg !298, !tbaa !275
  %call12 = tail call i8* @par_fn(i8* %9, i32 %call7, %struct.t_commrec* %0) #8, !dbg !298
  tail call void @llvm.dbg.value(metadata !273, i64 0, metadata !173), !dbg !298
  %10 = load i8** %fn, align 8, !dbg !300, !tbaa !275
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 295, i8* %10) #6, !dbg !300
  %call16 = tail call noalias i8* @strdup(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0)) #6, !dbg !301
  store i8* %call16, i8** %fn, align 8, !dbg !301, !tbaa !275
  br label %for.inc, !dbg !302

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !293
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !293
  %exitcond = icmp eq i32 %lftr.wideiv, %nfile, !dbg !293
  br i1 %exitcond, label %for.end, label %for.body, !dbg !293

for.end:                                          ; preds = %for.inc, %entry
  ret %struct.t_commrec* %0, !dbg !303
}

; Function Attrs: optsize
declare i32 @fn2ftp(i8*) #4

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define %struct.t_commrec* @init_par(i32* %argc, i8*** nocapture %argv_ptr) #0 {
entry:
  %len.i = alloca i32, align 4
  %nodeids.i = alloca [256 x i32], align 16
  %send_nodeid.i = alloca i32, align 4
  %receive_nodeid.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32* %argc}, i64 0, metadata !180), !dbg !304
  call void @llvm.dbg.value(metadata !{i8*** %argv_ptr}, i64 0, metadata !181), !dbg !304
  %0 = load i8*** %argv_ptr, align 8, !dbg !305, !tbaa !275
  call void @llvm.dbg.value(metadata !{i8** %0}, i64 0, metadata !183), !dbg !305
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 313, i32 1, i32 24) #6, !dbg !306
  %1 = bitcast i8* %call to %struct.t_commrec*, !dbg !306
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %1}, i64 0, metadata !182), !dbg !306
  %nnodes = getelementptr inbounds i8* %call, i64 4, !dbg !307
  %2 = bitcast i8* %nnodes to i32*, !dbg !307
  store i32 1, i32* %2, align 4, !dbg !307, !tbaa !225
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !184), !dbg !308
  %3 = load i8** %0, align 8, !dbg !308, !tbaa !275
  %cmp82 = icmp eq i8* %3, null, !dbg !308
  br i1 %cmp82, label %for.end, label %for.body, !dbg !308

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %5, %for.inc ], [ 0, %entry ]
  %4 = phi i8* [ %7, %for.inc ], [ %3, %entry ]
  %call3 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !310
  %cmp4 = icmp eq i32 %call3, 0, !dbg !310
  %5 = add i64 %indvars.iv, 1, !dbg !312
  %arrayidx6 = getelementptr inbounds i8** %0, i64 %5, !dbg !312
  br i1 %cmp4, label %if.then, label %for.inc, !dbg !310

if.then:                                          ; preds = %for.body
  %6 = load i8** %arrayidx6, align 8, !dbg !312, !tbaa !275
  %cmp7 = icmp eq i8* %6, null, !dbg !312
  br i1 %cmp7, label %for.inc, label %if.then8, !dbg !312

if.then8:                                         ; preds = %if.then
  %call12 = call i32 @atoi(i8* %6) #7, !dbg !313
  store i32 %call12, i32* %2, align 4, !dbg !313, !tbaa !225
  br label %for.inc, !dbg !313

for.inc:                                          ; preds = %for.body, %if.then, %if.then8
  %7 = load i8** %arrayidx6, align 8, !dbg !308, !tbaa !275
  %cmp = icmp eq i8* %7, null, !dbg !308
  br i1 %cmp, label %for.end, label %for.body, !dbg !308

for.end:                                          ; preds = %for.inc, %entry
  %nodeid = bitcast i8* %call to i32*, !dbg !314
  store i32 0, i32* %nodeid, align 4, !dbg !314, !tbaa !225
  store i32 1, i32* %2, align 4, !dbg !315, !tbaa !225
  store i32 0, i32* @gmx_parallel, align 4, !dbg !316, !tbaa !225
  %8 = load i32* %2, align 4, !dbg !317, !tbaa !225
  %cmp17 = icmp sgt i32 %8, 1, !dbg !317
  br i1 %cmp17, label %if.then28, label %lor.lhs.false, !dbg !317

lor.lhs.false:                                    ; preds = %for.end
  %nthreads = getelementptr inbounds i8* %call, i64 20, !dbg !317
  %9 = bitcast i8* %nthreads to i32*, !dbg !317
  %10 = load i32* %9, align 4, !dbg !317, !tbaa !225
  %cmp18 = icmp sgt i32 %10, 1, !dbg !317
  br i1 %cmp18, label %if.then28, label %land.lhs.true, !dbg !317

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load i32* %nodeid, align 4, !dbg !317, !tbaa !225
  %cmp20 = icmp eq i32 %11, 0, !dbg !317
  br i1 %cmp20, label %if.end22, label %if.then21, !dbg !317

if.then21:                                        ; preds = %land.lhs.true
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str20, i64 0, i64 0)) #6, !dbg !318
  %.pr.pre = load i32* %2, align 4, !dbg !319, !tbaa !225
  br label %if.end22, !dbg !318

if.end22:                                         ; preds = %land.lhs.true, %if.then21
  %.pr = phi i32 [ %8, %land.lhs.true ], [ %.pr.pre, %if.then21 ]
  %cmp24 = icmp sgt i32 %.pr, 1, !dbg !319
  br i1 %cmp24, label %if.then28, label %lor.lhs.false25, !dbg !319

lor.lhs.false25:                                  ; preds = %if.end22
  %.pr90 = load i32* %9, align 4, !dbg !319, !tbaa !225
  %cmp27 = icmp sgt i32 %.pr90, 1, !dbg !319
  br i1 %cmp27, label %if.then28, label %lor.lhs.false42, !dbg !319

if.then28:                                        ; preds = %lor.lhs.false, %lor.lhs.false25, %if.end22, %for.end
  %12 = phi i32 [ %8, %for.end ], [ %.pr, %if.end22 ], [ %.pr, %lor.lhs.false25 ], [ %8, %lor.lhs.false ]
  %13 = load i32* %nodeid, align 4, !dbg !320, !tbaa !225
  %left = getelementptr inbounds i8* %call, i64 8, !dbg !320
  %14 = bitcast i8* %left to i32*, !dbg !320
  %right = getelementptr inbounds i8* %call, i64 12, !dbg !320
  %15 = bitcast i8* %right to i32*, !dbg !320
  call void @gmx_left_right(i32 %12, i32 %13, i32* %14, i32* %15) #6, !dbg !320
  %16 = load i32* %14, align 4, !dbg !322, !tbaa !225
  %17 = load i32* %15, align 4, !dbg !322, !tbaa !225
  %18 = bitcast i32* %send_nodeid.i to i8*, !dbg !323
  call void @llvm.lifetime.start(i64 4, i8* %18) #5, !dbg !323
  %19 = bitcast i32* %receive_nodeid.i to i8*, !dbg !323
  call void @llvm.lifetime.start(i64 4, i8* %19) #5, !dbg !323
  call void @llvm.dbg.value(metadata !324, i64 0, metadata !325) #5, !dbg !323
  %20 = bitcast [256 x i32]* %nodeids.i to i8*, !dbg !326
  call void @llvm.lifetime.start(i64 1024, i8* %20) #5, !dbg !326
  call void @llvm.dbg.declare(metadata !{[256 x i32]* %nodeids.i}, metadata !206) #5, !dbg !326
  call void @llvm.dbg.declare(metadata !{i32* %send_nodeid.i}, metadata !212) #5, !dbg !326
  call void @llvm.dbg.declare(metadata !{i32* %receive_nodeid.i}, metadata !213) #5, !dbg !326
  store i32 0, i32* %2, align 4, !dbg !327, !tbaa !225
  %21 = load i32* %nodeid, align 4, !dbg !328, !tbaa !225
  call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !329) #5, !dbg !328
  call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !212), !dbg !328
  store i32 %21, i32* %send_nodeid.i, align 4, !dbg !328, !tbaa !225
  call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !330) #5, !dbg !331
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !332) #5, !dbg !333
  br label %do.body.i, !dbg !334

do.body.i:                                        ; preds = %do.body.i, %if.then28
  %min_index.0.i = phi i32 [ 0, %if.then28 ], [ %.min_index.0.i, %do.body.i ]
  %min_nodeid.0.i = phi i32 [ %21, %if.then28 ], [ %.min_nodeid.0.i, %do.body.i ]
  call void @gmx_tx(i32 %16, i8* %18, i32 4) #6, !dbg !335
  call void @gmx_rx(i32 %17, i8* %19, i32 4) #6, !dbg !337
  call void @gmx_tx_wait(i32 %16) #6, !dbg !338
  call void @gmx_rx_wait(i32 %17) #6, !dbg !339
  call void @llvm.dbg.value(metadata !{i32* %send_nodeid.i}, i64 0, metadata !329) #5, !dbg !340
  call void @llvm.dbg.value(metadata !{i32* %send_nodeid.i}, i64 0, metadata !212), !dbg !340
  %22 = load i32* %send_nodeid.i, align 4, !dbg !340, !tbaa !225
  %cmp.i = icmp slt i32 %22, %min_nodeid.0.i, !dbg !340
  %23 = load i32* %2, align 4, !dbg !341, !tbaa !225
  %.min_index.0.i = select i1 %cmp.i, i32 %23, i32 %min_index.0.i, !dbg !343
  %.min_nodeid.0.i = select i1 %cmp.i, i32 %22, i32 %min_nodeid.0.i, !dbg !343
  call void @llvm.dbg.value(metadata !{i32* %send_nodeid.i}, i64 0, metadata !329) #5, !dbg !344
  %inc.i = add nsw i32 %23, 1, !dbg !344
  store i32 %inc.i, i32* %2, align 4, !dbg !344, !tbaa !225
  %idxprom.i = sext i32 %23 to i64, !dbg !344
  %arrayidx.i = getelementptr inbounds [256 x i32]* %nodeids.i, i64 0, i64 %idxprom.i, !dbg !344
  store i32 %22, i32* %arrayidx.i, align 4, !dbg !344, !tbaa !225
  call void @llvm.dbg.value(metadata !{i32* %receive_nodeid.i}, i64 0, metadata !345) #5, !dbg !346
  call void @llvm.dbg.value(metadata !{i32* %receive_nodeid.i}, i64 0, metadata !213), !dbg !346
  %24 = load i32* %receive_nodeid.i, align 4, !dbg !346, !tbaa !225
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !329) #5, !dbg !346
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !212), !dbg !346
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !212), !dbg !346
  store i32 %24, i32* %send_nodeid.i, align 4, !dbg !346, !tbaa !225
  call void @llvm.dbg.value(metadata !{i32* %receive_nodeid.i}, i64 0, metadata !345) #5, !dbg !347
  %25 = load i32* %nodeid, align 4, !dbg !347, !tbaa !225
  %cmp1.i = icmp eq i32 %24, %25, !dbg !347
  br i1 %cmp1.i, label %for.cond.i, label %do.body.i, !dbg !347

for.cond.i:                                       ; preds = %do.body.i, %for.cond.i
  %i.0.i = phi i32 [ %inc5.i, %for.cond.i ], [ %.min_index.0.i, %do.body.i ]
  %rem.i = srem i32 %i.0.i, %inc.i, !dbg !348
  %idxprom2.i = sext i32 %rem.i to i64, !dbg !348
  %arrayidx3.i = getelementptr inbounds [256 x i32]* %nodeids.i, i64 0, i64 %idxprom2.i, !dbg !348
  %26 = load i32* %arrayidx3.i, align 4, !dbg !348, !tbaa !225
  %cmp4.i = icmp eq i32 %24, %26, !dbg !348
  %inc5.i = add nsw i32 %i.0.i, 1, !dbg !348
  call void @llvm.dbg.value(metadata !{i32 %inc5.i}, i64 0, metadata !350) #5, !dbg !348
  br i1 %cmp4.i, label %if.end39, label %for.cond.i, !dbg !348

if.end39:                                         ; preds = %for.cond.i
  %sub.i = sub i32 %inc.i, %.min_index.0.i, !dbg !351
  %add.i = add i32 %sub.i, %i.0.i, !dbg !351
  %rem6.i = srem i32 %add.i, %inc.i, !dbg !351
  store i32 %rem6.i, i32* %nodeid, align 4, !dbg !351, !tbaa !225
  call void @llvm.lifetime.end(i64 1024, i8* %20) #5, !dbg !352
  call void @llvm.lifetime.end(i64 4, i8* %18) #5
  call void @llvm.lifetime.end(i64 4, i8* %19) #5
  %.pre = load i32* %2, align 4, !dbg !353, !tbaa !225
  %cmp41 = icmp sgt i32 %.pre, 1, !dbg !353
  br i1 %cmp41, label %if.then45, label %lor.lhs.false42, !dbg !353

lor.lhs.false42:                                  ; preds = %lor.lhs.false25, %if.end39
  %27 = phi i32 [ %.pre, %if.end39 ], [ %.pr, %lor.lhs.false25 ]
  %nthreads43 = getelementptr inbounds i8* %call, i64 20, !dbg !353
  %28 = bitcast i8* %nthreads43 to i32*, !dbg !353
  %29 = load i32* %28, align 4, !dbg !353, !tbaa !225
  %cmp44 = icmp sgt i32 %29, 1, !dbg !353
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !353

if.then45:                                        ; preds = %lor.lhs.false42, %if.end39
  %30 = phi i32 [ %27, %lor.lhs.false42 ], [ %.pre, %if.end39 ]
  %31 = bitcast i32* %len.i to i8*, !dbg !354
  call void @llvm.lifetime.start(i64 4, i8* %31) #5, !dbg !354
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %1}, i64 0, metadata !356) #5, !dbg !354
  call void @llvm.dbg.value(metadata !{i32* %argc}, i64 0, metadata !357) #5, !dbg !354
  call void @llvm.dbg.value(metadata !{i8*** %argv_ptr}, i64 0, metadata !358) #5, !dbg !354
  call void @llvm.dbg.declare(metadata !{i32* %len.i}, metadata !193) #5, !dbg !359
  call void @llvm.dbg.value(metadata !360, i64 0, metadata !361) #5, !dbg !362
  %32 = load i32* %nodeid, align 4, !dbg !363, !tbaa !225
  %cmp.i75 = icmp eq i32 %32, 0, !dbg !363
  br i1 %cmp.i75, label %land.lhs.true.i, label %if.end.i, !dbg !363

land.lhs.true.i:                                  ; preds = %if.then45
  %threadid.i = getelementptr inbounds i8* %call, i64 16, !dbg !363
  %33 = bitcast i8* %threadid.i to i32*, !dbg !363
  %34 = load i32* %33, align 4, !dbg !363, !tbaa !225
  %cmp1.i76 = icmp eq i32 %34, 0, !dbg !363
  br i1 %cmp1.i76, label %land.lhs.true2.i, label %if.end.i, !dbg !363

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then45
  store i32 0, i32* %argc, align 4, !dbg !364, !tbaa !225
  %.pre86 = load i32* %2, align 4, !dbg !365, !tbaa !225
  br label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %if.end.i, %land.lhs.true.i
  %35 = phi i32 [ %.pre86, %if.end.i ], [ %30, %land.lhs.true.i ]
  %cmp3.i = icmp sgt i32 %35, 1, !dbg !365
  br i1 %cmp3.i, label %if.then5.i, label %lor.lhs.false.i, !dbg !365

lor.lhs.false.i:                                  ; preds = %land.lhs.true2.i
  %nthreads.i = getelementptr inbounds i8* %call, i64 20, !dbg !365
  %36 = bitcast i8* %nthreads.i to i32*, !dbg !365
  %37 = load i32* %36, align 4, !dbg !365, !tbaa !225
  %cmp4.i77 = icmp sgt i32 %37, 1, !dbg !365
  br i1 %cmp4.i77, label %if.then5.i, label %if.end6.i, !dbg !365

if.then5.i:                                       ; preds = %lor.lhs.false.i, %land.lhs.true2.i
  call void @gmx_sumi(i32 1, i32* %argc, %struct.t_commrec* %1) #6, !dbg !366
  br label %if.end6.i, !dbg !366

if.end6.i:                                        ; preds = %lor.lhs.false.i, %if.then5.i
  %38 = load i32* %nodeid, align 4, !dbg !367, !tbaa !225
  %cmp8.i = icmp eq i32 %38, 0, !dbg !367
  br i1 %cmp8.i, label %land.lhs.true9.i, label %if.then12.i, !dbg !367

land.lhs.true9.i:                                 ; preds = %if.end6.i
  %threadid10.i = getelementptr inbounds i8* %call, i64 16, !dbg !367
  %39 = bitcast i8* %threadid10.i to i32*, !dbg !367
  %40 = load i32* %39, align 4, !dbg !367, !tbaa !225
  %cmp11.i = icmp eq i32 %40, 0, !dbg !367
  br i1 %cmp11.i, label %if.end13.i, label %if.then12.i, !dbg !367

if.then12.i:                                      ; preds = %land.lhs.true9.i, %if.end6.i
  %41 = load i32* %argc, align 4, !dbg !368, !tbaa !225
  %add.i78 = add nsw i32 %41, 1, !dbg !368
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 240, i32 %add.i78, i32 8) #6, !dbg !368
  %42 = bitcast i8* %call.i to i8**, !dbg !368
  call void @llvm.dbg.value(metadata !{i8** %42}, i64 0, metadata !361) #5, !dbg !368
  %.pre.i = load i32* %nodeid, align 4, !dbg !369, !tbaa !225
  br label %if.end13.i, !dbg !368

if.end13.i:                                       ; preds = %land.lhs.true9.i, %if.then12.i
  %43 = phi i32 [ %.pre.i, %if.then12.i ], [ 0, %land.lhs.true9.i ]
  %argv_tmp.0.i = phi i8** [ %42, %if.then12.i ], [ null, %land.lhs.true9.i ]
  %44 = load %struct._IO_FILE** @stderr, align 8, !dbg !369, !tbaa !275
  %45 = load i32* %argc, align 4, !dbg !369, !tbaa !225
  %call15.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([19 x i8]* @.str23, i64 0, i64 0), i32 %43, i32 %45) #6, !dbg !369
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !370) #5, !dbg !371
  %46 = load i32* %argc, align 4, !dbg !371, !tbaa !225
  %cmp16106.i = icmp sgt i32 %46, 0, !dbg !371
  %47 = load i32* %nodeid, align 4, !dbg !373, !tbaa !225
  %cmp18107.i = icmp eq i32 %47, 0, !dbg !373
  br i1 %cmp16106.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !371

for.body.lr.ph.i:                                 ; preds = %if.end13.i
  %threadid20.i = getelementptr inbounds i8* %call, i64 16, !dbg !373
  %48 = bitcast i8* %threadid20.i to i32*, !dbg !373
  %right.i = getelementptr inbounds i8* %call, i64 12, !dbg !375
  %49 = bitcast i8* %right.i to i32*, !dbg !375
  %left.i = getelementptr inbounds i8* %call, i64 8, !dbg !377
  %50 = bitcast i8* %left.i to i32*, !dbg !377
  br label %for.body.i, !dbg !371

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %cmp18110.i = phi i1 [ %cmp18107.i, %for.body.lr.ph.i ], [ %cmp18.i, %for.inc.i ]
  br i1 %cmp18110.i, label %land.lhs.true19.i, label %if.else.i, !dbg !373

land.lhs.true19.i:                                ; preds = %for.body.i
  %51 = load i32* %48, align 4, !dbg !373, !tbaa !225
  %cmp21.i = icmp eq i32 %51, 0, !dbg !373
  br i1 %cmp21.i, label %if.then22.i, label %if.else.i, !dbg !373

if.then22.i:                                      ; preds = %land.lhs.true19.i
  %52 = load i8*** %argv_ptr, align 8, !dbg !378, !tbaa !275
  %arrayidx.i79 = getelementptr inbounds i8** %52, i64 %indvars.iv.i, !dbg !378
  %53 = load i8** %arrayidx.i79, align 8, !dbg !378, !tbaa !275
  %call23.i = call i64 @strlen(i8* %53) #7, !dbg !378
  %add24.i = add i64 %call23.i, 1, !dbg !378
  %conv.i = trunc i64 %add24.i to i32, !dbg !378
  call void @llvm.dbg.value(metadata !{i32 %conv.i}, i64 0, metadata !379) #5, !dbg !378
  call void @llvm.dbg.value(metadata !{i32 %conv.i}, i64 0, metadata !193), !dbg !378
  store i32 %conv.i, i32* %len.i, align 4, !dbg !378, !tbaa !225
  %54 = load i32* %49, align 4, !dbg !375, !tbaa !225
  call void @gmx_txs(i32 %54, i8* %31, i32 4) #6, !dbg !375
  %55 = load i32* %50, align 4, !dbg !377, !tbaa !225
  call void @gmx_rxs(i32 %55, i8* %31, i32 4) #6, !dbg !377
  %56 = load i32* %49, align 4, !dbg !380, !tbaa !225
  %57 = load i8*** %argv_ptr, align 8, !dbg !380, !tbaa !275
  %arrayidx27.i = getelementptr inbounds i8** %57, i64 %indvars.iv.i, !dbg !380
  %58 = load i8** %arrayidx27.i, align 8, !dbg !380, !tbaa !275
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !379) #5, !dbg !380
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !193), !dbg !380
  %59 = load i32* %len.i, align 4, !dbg !380, !tbaa !225
  call void @gmx_txs(i32 %56, i8* %58, i32 %59) #6, !dbg !380
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !379) #5, !dbg !381
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !193), !dbg !381
  %60 = load i32* %len.i, align 4, !dbg !381, !tbaa !225
  %call28.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 248, i32 %60, i32 1) #6, !dbg !381
  call void @llvm.dbg.value(metadata !{i8* %call28.i}, i64 0, metadata !382) #5, !dbg !381
  %61 = load i32* %50, align 4, !dbg !383, !tbaa !225
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !379) #5, !dbg !383
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !193), !dbg !383
  %62 = load i32* %len.i, align 4, !dbg !383, !tbaa !225
  call void @gmx_rxs(i32 %61, i8* %call28.i, i32 %62) #6, !dbg !383
  %63 = load i8*** %argv_ptr, align 8, !dbg !384, !tbaa !275
  %arrayidx31.i = getelementptr inbounds i8** %63, i64 %indvars.iv.i, !dbg !384
  %64 = load i8** %arrayidx31.i, align 8, !dbg !384, !tbaa !275
  %call32.i = call i32 @strcmp(i8* %call28.i, i8* %64) #7, !dbg !384
  %cmp33.i = icmp eq i32 %call32.i, 0, !dbg !384
  br i1 %cmp33.i, label %if.end38.i, label %if.then35.i, !dbg !384

if.then35.i:                                      ; preds = %if.then22.i
  %65 = trunc i64 %indvars.iv.i to i32, !dbg !385
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str25, i64 0, i64 0), i32 %65, i8* %64) #6, !dbg !385
  br label %if.end38.i, !dbg !385

if.end38.i:                                       ; preds = %if.then35.i, %if.then22.i
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 252, i8* %call28.i) #6, !dbg !386
  br label %for.inc.i, !dbg !387

if.else.i:                                        ; preds = %land.lhs.true19.i, %for.body.i
  %66 = load i32* %50, align 4, !dbg !388, !tbaa !225
  call void @gmx_rxs(i32 %66, i8* %31, i32 4) #6, !dbg !388
  %67 = load i32* %49, align 4, !dbg !390, !tbaa !225
  call void @gmx_txs(i32 %67, i8* %31, i32 4) #6, !dbg !390
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !379) #5, !dbg !391
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !193), !dbg !391
  %68 = load i32* %len.i, align 4, !dbg !391, !tbaa !225
  %call41.i = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 257, i32 %68, i32 1) #6, !dbg !391
  %arrayidx43.i = getelementptr inbounds i8** %argv_tmp.0.i, i64 %indvars.iv.i, !dbg !391
  store i8* %call41.i, i8** %arrayidx43.i, align 8, !dbg !391, !tbaa !275
  %69 = load i32* %50, align 4, !dbg !392, !tbaa !225
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !379) #5, !dbg !392
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !193), !dbg !392
  %70 = load i32* %len.i, align 4, !dbg !392, !tbaa !225
  call void @gmx_rxs(i32 %69, i8* %call41.i, i32 %70) #6, !dbg !392
  %71 = load i32* %49, align 4, !dbg !393, !tbaa !225
  %72 = load i8** %arrayidx43.i, align 8, !dbg !393, !tbaa !275
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !379) #5, !dbg !393
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !193), !dbg !393
  %73 = load i32* %len.i, align 4, !dbg !393, !tbaa !225
  call void @gmx_txs(i32 %71, i8* %72, i32 %73) #6, !dbg !393
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.end38.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !371
  %74 = load i32* %argc, align 4, !dbg !371, !tbaa !225
  %75 = trunc i64 %indvars.iv.next.i to i32, !dbg !371
  %cmp16.i = icmp slt i32 %75, %74, !dbg !371
  %76 = load i32* %nodeid, align 4, !dbg !373, !tbaa !225
  %cmp18.i = icmp eq i32 %76, 0, !dbg !373
  br i1 %cmp16.i, label %for.body.i, label %for.end.i, !dbg !371

for.end.i:                                        ; preds = %for.inc.i, %if.end13.i
  %77 = phi i32 [ %46, %if.end13.i ], [ %74, %for.inc.i ]
  %cmp18.lcssa.i = phi i1 [ %cmp18107.i, %if.end13.i ], [ %cmp18.i, %for.inc.i ]
  br i1 %cmp18.lcssa.i, label %land.lhs.true54.i, label %if.then58.i, !dbg !394

land.lhs.true54.i:                                ; preds = %for.end.i
  %threadid55.i = getelementptr inbounds i8* %call, i64 16, !dbg !394
  %78 = bitcast i8* %threadid55.i to i32*, !dbg !394
  %79 = load i32* %78, align 4, !dbg !394, !tbaa !225
  %cmp56.i = icmp eq i32 %79, 0, !dbg !394
  br i1 %cmp56.i, label %if.end46, label %if.then58.i, !dbg !394

if.then58.i:                                      ; preds = %land.lhs.true54.i, %for.end.i
  %idxprom59.i = sext i32 %77 to i64, !dbg !395
  %arrayidx60.i = getelementptr inbounds i8** %argv_tmp.0.i, i64 %idxprom59.i, !dbg !395
  store i8* null, i8** %arrayidx60.i, align 8, !dbg !395, !tbaa !275
  store i8** %argv_tmp.0.i, i8*** %argv_ptr, align 8, !dbg !397, !tbaa !275
  br label %if.end46, !dbg !398

if.end46:                                         ; preds = %if.then58.i, %land.lhs.true54.i, %lor.lhs.false42
  ret %struct.t_commrec* %1, !dbg !399
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #3

; Function Attrs: optsize
declare void @gmx_left_right(i32, i32, i32*, i32*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #4

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #4

; Function Attrs: optsize
declare void @gmx_tx_wait(i32) #4

; Function Attrs: optsize
declare void @gmx_rx_wait(i32) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !53, metadata !54, metadata !214, metadata !53, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 37, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 37, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/filenm.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!6 = metadata !{i32 786472, metadata !"efMDP", i64 0} ; [ DW_TAG_enumerator ] [efMDP :: 0]
!7 = metadata !{i32 786472, metadata !"efGCT", i64 1} ; [ DW_TAG_enumerator ] [efGCT :: 1]
!8 = metadata !{i32 786472, metadata !"efTRX", i64 2} ; [ DW_TAG_enumerator ] [efTRX :: 2]
!9 = metadata !{i32 786472, metadata !"efTRN", i64 3} ; [ DW_TAG_enumerator ] [efTRN :: 3]
!10 = metadata !{i32 786472, metadata !"efTRR", i64 4} ; [ DW_TAG_enumerator ] [efTRR :: 4]
!11 = metadata !{i32 786472, metadata !"efTRJ", i64 5} ; [ DW_TAG_enumerator ] [efTRJ :: 5]
!12 = metadata !{i32 786472, metadata !"efXTC", i64 6} ; [ DW_TAG_enumerator ] [efXTC :: 6]
!13 = metadata !{i32 786472, metadata !"efG87", i64 7} ; [ DW_TAG_enumerator ] [efG87 :: 7]
!14 = metadata !{i32 786472, metadata !"efENX", i64 8} ; [ DW_TAG_enumerator ] [efENX :: 8]
!15 = metadata !{i32 786472, metadata !"efEDR", i64 9} ; [ DW_TAG_enumerator ] [efEDR :: 9]
!16 = metadata !{i32 786472, metadata !"efENE", i64 10} ; [ DW_TAG_enumerator ] [efENE :: 10]
!17 = metadata !{i32 786472, metadata !"efSTX", i64 11} ; [ DW_TAG_enumerator ] [efSTX :: 11]
!18 = metadata !{i32 786472, metadata !"efSTO", i64 12} ; [ DW_TAG_enumerator ] [efSTO :: 12]
!19 = metadata !{i32 786472, metadata !"efGRO", i64 13} ; [ DW_TAG_enumerator ] [efGRO :: 13]
!20 = metadata !{i32 786472, metadata !"efG96", i64 14} ; [ DW_TAG_enumerator ] [efG96 :: 14]
!21 = metadata !{i32 786472, metadata !"efPDB", i64 15} ; [ DW_TAG_enumerator ] [efPDB :: 15]
!22 = metadata !{i32 786472, metadata !"efBRK", i64 16} ; [ DW_TAG_enumerator ] [efBRK :: 16]
!23 = metadata !{i32 786472, metadata !"efENT", i64 17} ; [ DW_TAG_enumerator ] [efENT :: 17]
!24 = metadata !{i32 786472, metadata !"efLOG", i64 18} ; [ DW_TAG_enumerator ] [efLOG :: 18]
!25 = metadata !{i32 786472, metadata !"efXVG", i64 19} ; [ DW_TAG_enumerator ] [efXVG :: 19]
!26 = metadata !{i32 786472, metadata !"efOUT", i64 20} ; [ DW_TAG_enumerator ] [efOUT :: 20]
!27 = metadata !{i32 786472, metadata !"efNDX", i64 21} ; [ DW_TAG_enumerator ] [efNDX :: 21]
!28 = metadata !{i32 786472, metadata !"efTOP", i64 22} ; [ DW_TAG_enumerator ] [efTOP :: 22]
!29 = metadata !{i32 786472, metadata !"efITP", i64 23} ; [ DW_TAG_enumerator ] [efITP :: 23]
!30 = metadata !{i32 786472, metadata !"efTPX", i64 24} ; [ DW_TAG_enumerator ] [efTPX :: 24]
!31 = metadata !{i32 786472, metadata !"efTPS", i64 25} ; [ DW_TAG_enumerator ] [efTPS :: 25]
!32 = metadata !{i32 786472, metadata !"efTPR", i64 26} ; [ DW_TAG_enumerator ] [efTPR :: 26]
!33 = metadata !{i32 786472, metadata !"efTPA", i64 27} ; [ DW_TAG_enumerator ] [efTPA :: 27]
!34 = metadata !{i32 786472, metadata !"efTPB", i64 28} ; [ DW_TAG_enumerator ] [efTPB :: 28]
!35 = metadata !{i32 786472, metadata !"efTEX", i64 29} ; [ DW_TAG_enumerator ] [efTEX :: 29]
!36 = metadata !{i32 786472, metadata !"efRTP", i64 30} ; [ DW_TAG_enumerator ] [efRTP :: 30]
!37 = metadata !{i32 786472, metadata !"efATP", i64 31} ; [ DW_TAG_enumerator ] [efATP :: 31]
!38 = metadata !{i32 786472, metadata !"efHDB", i64 32} ; [ DW_TAG_enumerator ] [efHDB :: 32]
!39 = metadata !{i32 786472, metadata !"efDAT", i64 33} ; [ DW_TAG_enumerator ] [efDAT :: 33]
!40 = metadata !{i32 786472, metadata !"efDLG", i64 34} ; [ DW_TAG_enumerator ] [efDLG :: 34]
!41 = metadata !{i32 786472, metadata !"efMAP", i64 35} ; [ DW_TAG_enumerator ] [efMAP :: 35]
!42 = metadata !{i32 786472, metadata !"efEPS", i64 36} ; [ DW_TAG_enumerator ] [efEPS :: 36]
!43 = metadata !{i32 786472, metadata !"efMAT", i64 37} ; [ DW_TAG_enumerator ] [efMAT :: 37]
!44 = metadata !{i32 786472, metadata !"efM2P", i64 38} ; [ DW_TAG_enumerator ] [efM2P :: 38]
!45 = metadata !{i32 786472, metadata !"efMTX", i64 39} ; [ DW_TAG_enumerator ] [efMTX :: 39]
!46 = metadata !{i32 786472, metadata !"efEDI", i64 40} ; [ DW_TAG_enumerator ] [efEDI :: 40]
!47 = metadata !{i32 786472, metadata !"efEDO", i64 41} ; [ DW_TAG_enumerator ] [efEDO :: 41]
!48 = metadata !{i32 786472, metadata !"efPPA", i64 42} ; [ DW_TAG_enumerator ] [efPPA :: 42]
!49 = metadata !{i32 786472, metadata !"efPDO", i64 43} ; [ DW_TAG_enumerator ] [efPDO :: 43]
!50 = metadata !{i32 786472, metadata !"efHAT", i64 44} ; [ DW_TAG_enumerator ] [efHAT :: 44]
!51 = metadata !{i32 786472, metadata !"efXPM", i64 45} ; [ DW_TAG_enumerator ] [efXPM :: 45]
!52 = metadata !{i32 786472, metadata !"efNR", i64 46} ; [ DW_TAG_enumerator ] [efNR :: 46]
!53 = metadata !{i32 0}
!54 = metadata !{metadata !55, metadata !77, metadata !144, metadata !155, metadata !174, metadata !185, metadata !196}
!55 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"par_fn", metadata !"par_fn", metadata !"", i32 117, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, %struct.t_commrec*)* @par_fn, null, null, metadata !73, i32 118} ; [ DW_TAG_subprogram ] [line 117] [def] [scope 118] [par_fn]
!56 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!57 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !59, metadata !61, metadata !62}
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!60 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!61 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!63 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!64 = metadata !{i32 786451, metadata !65, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !66, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!65 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!67 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!68 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !61} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!69 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !61} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!70 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !61} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!71 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !61} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!72 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !61} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!73 = metadata !{metadata !74, metadata !75, metadata !76}
!74 = metadata !{i32 786689, metadata !55, metadata !"base", metadata !56, i32 16777333, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 117]
!75 = metadata !{i32 786689, metadata !55, metadata !"ftp", metadata !56, i32 33554549, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftp] [line 117]
!76 = metadata !{i32 786689, metadata !55, metadata !"cr", metadata !56, i32 50331765, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 117]
!77 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"check_multi_int", metadata !"check_multi_int", metadata !"", i32 136, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_commrec*, i32, i8*)* @check_multi_int, null, null, metadata !135, i32 137} ; [ DW_TAG_subprogram ] [line 136] [def] [scope 137] [check_multi_int]
!78 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{null, metadata !80, metadata !62, metadata !61, metadata !59}
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!81 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!82 = metadata !{i32 786451, metadata !83, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !84, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!83 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !105, metadata !106, metadata !107, metadata !108, metadata !111, metadata !113, metadata !115, metadata !119, metadata !121, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !130, metadata !131}
!85 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!86 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!87 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!88 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!89 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!90 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!91 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!92 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!93 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!94 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!95 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!96 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !59} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!97 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !98} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!99 = metadata !{i32 786451, metadata !83, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !100, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!100 = metadata !{metadata !101, metadata !102, metadata !104}
!101 = metadata !{i32 786445, metadata !83, metadata !99, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!102 = metadata !{i32 786445, metadata !83, metadata !99, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !103} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!104 = metadata !{i32 786445, metadata !83, metadata !99, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !61} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!105 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !103} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!106 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !61} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!107 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !61} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!108 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !109} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!109 = metadata !{i32 786454, metadata !83, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!110 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!111 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !112} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!112 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!113 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !114} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!114 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!115 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !116} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!116 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !60, metadata !117, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!117 = metadata !{metadata !118}
!118 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!119 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !120} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!121 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !122} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!122 = metadata !{i32 786454, metadata !83, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!123 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !120} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!124 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !120} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!125 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !120} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!126 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !120} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!127 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !128} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!128 = metadata !{i32 786454, metadata !83, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!129 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!130 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !61} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!131 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !132} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!132 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !60, metadata !133, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!133 = metadata !{metadata !134}
!134 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !142, metadata !143}
!136 = metadata !{i32 786689, metadata !77, metadata !"log", metadata !56, i32 16777352, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 136]
!137 = metadata !{i32 786689, metadata !77, metadata !"mcr", metadata !56, i32 33554568, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mcr] [line 136]
!138 = metadata !{i32 786689, metadata !77, metadata !"val", metadata !56, i32 50331784, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 136]
!139 = metadata !{i32 786689, metadata !77, metadata !"name", metadata !56, i32 67109000, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 136]
!140 = metadata !{i32 786688, metadata !77, metadata !"ibuf", metadata !56, i32 138, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuf] [line 138]
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!142 = metadata !{i32 786688, metadata !77, metadata !"p", metadata !56, i32 138, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 138]
!143 = metadata !{i32 786688, metadata !77, metadata !"bCompatible", metadata !56, i32 139, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bCompatible] [line 139]
!144 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"open_log", metadata !"open_log", metadata !"", i32 168, metadata !145, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, %struct.t_commrec*)* @open_log, null, null, metadata !147, i32 169} ; [ DW_TAG_subprogram ] [line 168] [def] [scope 169] [open_log]
!145 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!146 = metadata !{null, metadata !59, metadata !62}
!147 = metadata !{metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154}
!148 = metadata !{i32 786689, metadata !144, metadata !"lognm", metadata !56, i32 16777384, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lognm] [line 168]
!149 = metadata !{i32 786689, metadata !144, metadata !"cr", metadata !56, i32 33554600, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 168]
!150 = metadata !{i32 786688, metadata !144, metadata !"len", metadata !56, i32 170, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 170]
!151 = metadata !{i32 786688, metadata !144, metadata !"testlen", metadata !56, i32 170, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [testlen] [line 170]
!152 = metadata !{i32 786688, metadata !144, metadata !"pid", metadata !56, i32 170, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pid] [line 170]
!153 = metadata !{i32 786688, metadata !144, metadata !"buf", metadata !56, i32 171, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 171]
!154 = metadata !{i32 786688, metadata !144, metadata !"host", metadata !56, i32 171, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [host] [line 171]
!155 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"init_multisystem", metadata !"init_multisystem", metadata !"", i32 269, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_commrec* (%struct.t_commrec*, i32, %struct.t_filenm*)* @init_multisystem, null, null, metadata !166, i32 270} ; [ DW_TAG_subprogram ] [line 269] [def] [scope 270] [init_multisystem]
!156 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!157 = metadata !{metadata !62, metadata !62, metadata !61, metadata !158}
!158 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_filenm]
!159 = metadata !{i32 786454, metadata !1, null, metadata !"t_filenm", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [t_filenm] [line 62, size 0, align 0, offset 0] [from ]
!160 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 57, i64 256, i64 64, i32 0, i32 0, null, metadata !161, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 57, size 256, align 64, offset 0] [from ]
!161 = metadata !{metadata !162, metadata !163, metadata !164, metadata !165}
!162 = metadata !{i32 786445, metadata !4, metadata !160, metadata !"ftp", i32 58, i64 32, i64 32, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [ftp] [line 58, size 32, align 32, offset 0] [from int]
!163 = metadata !{i32 786445, metadata !4, metadata !160, metadata !"opt", i32 59, i64 64, i64 64, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [opt] [line 59, size 64, align 64, offset 64] [from ]
!164 = metadata !{i32 786445, metadata !4, metadata !160, metadata !"fn", i32 60, i64 64, i64 64, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [fn] [line 60, size 64, align 64, offset 128] [from ]
!165 = metadata !{i32 786445, metadata !4, metadata !160, metadata !"flag", i32 61, i64 64, i64 64, i64 192, i32 0, metadata !129} ; [ DW_TAG_member ] [flag] [line 61, size 64, align 64, offset 192] [from long unsigned int]
!166 = metadata !{metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173}
!167 = metadata !{i32 786689, metadata !155, metadata !"cr", metadata !56, i32 16777485, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 269]
!168 = metadata !{i32 786689, metadata !155, metadata !"nfile", metadata !56, i32 33554701, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nfile] [line 269]
!169 = metadata !{i32 786689, metadata !155, metadata !"fnm", metadata !56, i32 50331917, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 269]
!170 = metadata !{i32 786688, metadata !155, metadata !"mcr", metadata !56, i32 271, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mcr] [line 271]
!171 = metadata !{i32 786688, metadata !155, metadata !"i", metadata !56, i32 272, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 272]
!172 = metadata !{i32 786688, metadata !155, metadata !"ftp", metadata !56, i32 272, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ftp] [line 272]
!173 = metadata !{i32 786688, metadata !155, metadata !"buf", metadata !56, i32 273, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 273]
!174 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"init_par", metadata !"init_par", metadata !"", i32 306, metadata !175, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_commrec* (i32*, i8***)* @init_par, null, null, metadata !179, i32 307} ; [ DW_TAG_subprogram ] [line 306] [def] [scope 307] [init_par]
!175 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!176 = metadata !{metadata !62, metadata !141, metadata !177}
!177 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !178} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!178 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !183, metadata !184}
!180 = metadata !{i32 786689, metadata !174, metadata !"argc", metadata !56, i32 16777522, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 306]
!181 = metadata !{i32 786689, metadata !174, metadata !"argv_ptr", metadata !56, i32 33554738, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv_ptr] [line 306]
!182 = metadata !{i32 786688, metadata !174, metadata !"cr", metadata !56, i32 308, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cr] [line 308]
!183 = metadata !{i32 786688, metadata !174, metadata !"argv", metadata !56, i32 309, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv] [line 309]
!184 = metadata !{i32 786688, metadata !174, metadata !"i", metadata !56, i32 310, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 310]
!185 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"comm_args", metadata !"comm_args", metadata !"", i32 228, metadata !186, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !188, i32 229} ; [ DW_TAG_subprogram ] [line 228] [local] [def] [scope 229] [comm_args]
!186 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!187 = metadata !{null, metadata !62, metadata !141, metadata !177}
!188 = metadata !{metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195}
!189 = metadata !{i32 786689, metadata !185, metadata !"cr", metadata !56, i32 16777444, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 228]
!190 = metadata !{i32 786689, metadata !185, metadata !"argc", metadata !56, i32 33554660, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 228]
!191 = metadata !{i32 786689, metadata !185, metadata !"argv", metadata !56, i32 50331876, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 228]
!192 = metadata !{i32 786688, metadata !185, metadata !"i", metadata !56, i32 230, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 230]
!193 = metadata !{i32 786688, metadata !185, metadata !"len", metadata !56, i32 230, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 230]
!194 = metadata !{i32 786688, metadata !185, metadata !"argv_tmp", metadata !56, i32 231, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv_tmp] [line 231]
!195 = metadata !{i32 786688, metadata !185, metadata !"buf", metadata !56, i32 231, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 231]
!196 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"get_nodeid", metadata !"get_nodeid", metadata !"", i32 50, metadata !197, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !199, i32 67} ; [ DW_TAG_subprogram ] [line 50] [local] [def] [scope 67] [get_nodeid]
!197 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!198 = metadata !{metadata !61, metadata !80, metadata !61, metadata !61, metadata !141, metadata !141}
!199 = metadata !{metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !210, metadata !211, metadata !212, metadata !213}
!200 = metadata !{i32 786689, metadata !196, metadata !"log", metadata !56, i32 16777266, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 50]
!201 = metadata !{i32 786689, metadata !196, metadata !"left", metadata !56, i32 33554482, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [left] [line 50]
!202 = metadata !{i32 786689, metadata !196, metadata !"right", metadata !56, i32 50331698, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [right] [line 50]
!203 = metadata !{i32 786689, metadata !196, metadata !"nodeid", metadata !56, i32 67108914, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nodeid] [line 50]
!204 = metadata !{i32 786689, metadata !196, metadata !"nnodes", metadata !56, i32 83886130, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnodes] [line 50]
!205 = metadata !{i32 786688, metadata !196, metadata !"i", metadata !56, i32 68, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 68]
!206 = metadata !{i32 786688, metadata !196, metadata !"nodeids", metadata !56, i32 68, metadata !207, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodeids] [line 68]
!207 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !61, metadata !208, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!208 = metadata !{metadata !209}
!209 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!210 = metadata !{i32 786688, metadata !196, metadata !"min_index", metadata !56, i32 68, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min_index] [line 68]
!211 = metadata !{i32 786688, metadata !196, metadata !"min_nodeid", metadata !56, i32 68, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min_nodeid] [line 68]
!212 = metadata !{i32 786688, metadata !196, metadata !"send_nodeid", metadata !56, i32 68, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [send_nodeid] [line 68]
!213 = metadata !{i32 786688, metadata !196, metadata !"receive_nodeid", metadata !56, i32 68, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [receive_nodeid] [line 68]
!214 = metadata !{metadata !215, metadata !216, metadata !217}
!215 = metadata !{i32 786484, i32 0, null, metadata !"stdlog", metadata !"stdlog", metadata !"", metadata !56, i32 47, metadata !80, i32 0, i32 1, %struct._IO_FILE** @stdlog, null} ; [ DW_TAG_variable ] [stdlog] [line 47] [def]
!216 = metadata !{i32 786484, i32 0, null, metadata !"gmx_parallel", metadata !"gmx_parallel", metadata !"", metadata !56, i32 48, metadata !61, i32 0, i32 1, i32* @gmx_parallel, null} ; [ DW_TAG_variable ] [gmx_parallel] [line 48] [def]
!217 = metadata !{i32 786484, i32 0, metadata !55, metadata !"buf", metadata !"buf", metadata !"", metadata !56, i32 119, metadata !218, i32 1, i32 1, [256 x i8]* @par_fn.buf, null} ; [ DW_TAG_variable ] [buf] [line 119] [local] [def]
!218 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !60, metadata !208, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!219 = metadata !{i32 117, i32 0, metadata !55, null}
!220 = metadata !{i32 122, i32 0, metadata !55, null}
!221 = metadata !{i32 123, i32 0, metadata !55, null}
!222 = metadata !{metadata !"omnipotent char", metadata !223}
!223 = metadata !{metadata !"Simple C/C++ TBAA"}
!224 = metadata !{i32 126, i32 0, metadata !55, null}
!225 = metadata !{metadata !"int", metadata !222}
!226 = metadata !{i32 127, i32 0, metadata !55, null}
!227 = metadata !{i32 128, i32 0, metadata !55, null}
!228 = metadata !{i32 131, i32 0, metadata !55, null}
!229 = metadata !{i32 133, i32 0, metadata !55, null}
!230 = metadata !{i32 136, i32 0, metadata !77, null}
!231 = metadata !{i32 141, i32 0, metadata !77, null}
!232 = metadata !{i32 142, i32 0, metadata !77, null}
!233 = metadata !{i32 144, i32 0, metadata !77, null}
!234 = metadata !{i32 145, i32 0, metadata !77, null}
!235 = metadata !{i32 146, i32 0, metadata !77, null}
!236 = metadata !{i32 147, i32 0, metadata !77, null}
!237 = metadata !{i32 150, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !77, i32 150, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!239 = metadata !{i32 151, i32 0, metadata !238, null}
!240 = metadata !{i32 139, i32 0, metadata !77, null}
!241 = metadata !{i32 153, i32 0, metadata !77, null}
!242 = metadata !{i32 155, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !77, i32 154, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!244 = metadata !{i32 156, i32 0, metadata !243, null}
!245 = metadata !{i32 158, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !243, i32 157, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!247 = metadata !{i32 159, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !246, i32 159, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!249 = metadata !{i32 160, i32 0, metadata !248, null}
!250 = metadata !{i32 161, i32 0, metadata !246, null}
!251 = metadata !{i32 165, i32 0, metadata !77, null}
!252 = metadata !{i32 166, i32 0, metadata !77, null}
!253 = metadata !{i32 168, i32 0, metadata !144, null}
!254 = metadata !{i32 170, i32 0, metadata !144, null}
!255 = metadata !{i32 176, i32 0, metadata !144, null}
!256 = metadata !{i32 177, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !144, i32 176, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!258 = metadata !{i32 178, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !257, i32 177, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!260 = metadata !{i32 179, i32 0, metadata !259, null}
!261 = metadata !{i32 180, i32 0, metadata !259, null}
!262 = metadata !{i32 184, i32 0, metadata !259, null}
!263 = metadata !{i32 185, i32 0, metadata !259, null}
!264 = metadata !{i32 186, i32 0, metadata !259, null}
!265 = metadata !{i32 187, i32 0, metadata !259, null}
!266 = metadata !{i32 191, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !257, i32 190, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!268 = metadata !{i32 194, i32 0, metadata !267, null}
!269 = metadata !{i32 195, i32 0, metadata !267, null}
!270 = metadata !{i32 196, i32 0, metadata !267, null}
!271 = metadata !{i32 197, i32 0, metadata !267, null}
!272 = metadata !{i32 204, i32 0, metadata !144, null}
!273 = metadata !{null}
!274 = metadata !{i32 205, i32 0, metadata !144, null}
!275 = metadata !{metadata !"any pointer", metadata !222}
!276 = metadata !{i8* null}
!277 = metadata !{i32 209, i32 0, metadata !144, null}
!278 = metadata !{i32 214, i32 0, metadata !144, null}
!279 = metadata !{i32 219, i32 0, metadata !144, null}
!280 = metadata !{i32 221, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !144, i32 220, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!282 = metadata !{i32 223, i32 0, metadata !281, null}
!283 = metadata !{i32 224, i32 0, metadata !281, null}
!284 = metadata !{i32 226, i32 0, metadata !144, null}
!285 = metadata !{i32 269, i32 0, metadata !155, null}
!286 = metadata !{i32 275, i32 0, metadata !155, null}
!287 = metadata !{i32 277, i32 0, metadata !155, null}
!288 = metadata !{i32 278, i32 0, metadata !155, null}
!289 = metadata !{i32 279, i32 0, metadata !155, null}
!290 = metadata !{i32 280, i32 0, metadata !155, null}
!291 = metadata !{i32 281, i32 0, metadata !155, null}
!292 = metadata !{i32 282, i32 0, metadata !155, null}
!293 = metadata !{i32 285, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !155, i32 285, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!295 = metadata !{i32 289, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !294, i32 285, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!297 = metadata !{i32 290, i32 0, metadata !296, null}
!298 = metadata !{i32 294, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !296, i32 290, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!300 = metadata !{i32 295, i32 0, metadata !299, null}
!301 = metadata !{i32 296, i32 0, metadata !299, null}
!302 = metadata !{i32 300, i32 0, metadata !299, null}
!303 = metadata !{i32 303, i32 0, metadata !155, null}
!304 = metadata !{i32 306, i32 0, metadata !174, null}
!305 = metadata !{i32 312, i32 0, metadata !174, null}
!306 = metadata !{i32 313, i32 0, metadata !174, null}
!307 = metadata !{i32 315, i32 0, metadata !174, null}
!308 = metadata !{i32 319, i32 0, metadata !309, null}
!309 = metadata !{i32 786443, metadata !1, metadata !174, i32 319, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!310 = metadata !{i32 320, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !309, i32 319, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!312 = metadata !{i32 321, i32 0, metadata !311, null}
!313 = metadata !{i32 322, i32 0, metadata !311, null}
!314 = metadata !{i32 337, i32 0, metadata !174, null}
!315 = metadata !{i32 338, i32 0, metadata !174, null}
!316 = metadata !{i32 339, i32 0, metadata !174, null}
!317 = metadata !{i32 342, i32 0, metadata !174, null}
!318 = metadata !{i32 343, i32 0, metadata !174, null}
!319 = metadata !{i32 345, i32 0, metadata !174, null}
!320 = metadata !{i32 346, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !174, i32 345, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!322 = metadata !{i32 356, i32 0, metadata !321, null}
!323 = metadata !{i32 50, i32 0, metadata !196, metadata !322}
!324 = metadata !{%struct._IO_FILE* null}
!325 = metadata !{i32 786689, metadata !196, metadata !"log", metadata !56, i32 16777266, metadata !80, i32 0, metadata !322} ; [ DW_TAG_arg_variable ] [log] [line 50]
!326 = metadata !{i32 68, i32 0, metadata !196, metadata !322}
!327 = metadata !{i32 70, i32 0, metadata !196, metadata !322}
!328 = metadata !{i32 71, i32 0, metadata !196, metadata !322}
!329 = metadata !{i32 786688, metadata !196, metadata !"send_nodeid", metadata !56, i32 68, metadata !61, i32 0, metadata !322} ; [ DW_TAG_auto_variable ] [send_nodeid] [line 68]
!330 = metadata !{i32 786688, metadata !196, metadata !"min_nodeid", metadata !56, i32 68, metadata !61, i32 0, metadata !322} ; [ DW_TAG_auto_variable ] [min_nodeid] [line 68]
!331 = metadata !{i32 72, i32 0, metadata !196, metadata !322}
!332 = metadata !{i32 786688, metadata !196, metadata !"min_index", metadata !56, i32 68, metadata !61, i32 0, metadata !322} ; [ DW_TAG_auto_variable ] [min_index] [line 68]
!333 = metadata !{i32 73, i32 0, metadata !196, metadata !322}
!334 = metadata !{i32 74, i32 0, metadata !196, metadata !322}
!335 = metadata !{i32 78, i32 0, metadata !336, metadata !322}
!336 = metadata !{i32 786443, metadata !1, metadata !196, i32 74, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!337 = metadata !{i32 79, i32 0, metadata !336, metadata !322}
!338 = metadata !{i32 80, i32 0, metadata !336, metadata !322}
!339 = metadata !{i32 81, i32 0, metadata !336, metadata !322}
!340 = metadata !{i32 85, i32 0, metadata !336, metadata !322}
!341 = metadata !{i32 87, i32 0, metadata !342, metadata !322}
!342 = metadata !{i32 786443, metadata !1, metadata !336, i32 85, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!343 = metadata !{i32 88, i32 0, metadata !342, metadata !322}
!344 = metadata !{i32 89, i32 0, metadata !336, metadata !322}
!345 = metadata !{i32 786688, metadata !196, metadata !"receive_nodeid", metadata !56, i32 68, metadata !61, i32 0, metadata !322} ; [ DW_TAG_auto_variable ] [receive_nodeid] [line 68]
!346 = metadata !{i32 90, i32 0, metadata !336, metadata !322}
!347 = metadata !{i32 91, i32 0, metadata !336, metadata !322}
!348 = metadata !{i32 99, i32 0, metadata !349, metadata !322}
!349 = metadata !{i32 786443, metadata !1, metadata !196, i32 99, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!350 = metadata !{i32 786688, metadata !196, metadata !"i", metadata !56, i32 68, metadata !61, i32 0, metadata !322} ; [ DW_TAG_auto_variable ] [i] [line 68]
!351 = metadata !{i32 101, i32 0, metadata !196, metadata !322}
!352 = metadata !{i32 114, i32 0, metadata !196, metadata !322}
!353 = metadata !{i32 367, i32 0, metadata !174, null}
!354 = metadata !{i32 228, i32 0, metadata !185, metadata !355}
!355 = metadata !{i32 368, i32 0, metadata !174, null}
!356 = metadata !{i32 786689, metadata !185, metadata !"cr", metadata !56, i32 16777444, metadata !62, i32 0, metadata !355} ; [ DW_TAG_arg_variable ] [cr] [line 228]
!357 = metadata !{i32 786689, metadata !185, metadata !"argc", metadata !56, i32 33554660, metadata !141, i32 0, metadata !355} ; [ DW_TAG_arg_variable ] [argc] [line 228]
!358 = metadata !{i32 786689, metadata !185, metadata !"argv", metadata !56, i32 50331876, metadata !177, i32 0, metadata !355} ; [ DW_TAG_arg_variable ] [argv] [line 228]
!359 = metadata !{i32 230, i32 0, metadata !185, metadata !355}
!360 = metadata !{i8** null}
!361 = metadata !{i32 786688, metadata !185, metadata !"argv_tmp", metadata !56, i32 231, metadata !178, i32 0, metadata !355} ; [ DW_TAG_auto_variable ] [argv_tmp] [line 231]
!362 = metadata !{i32 231, i32 0, metadata !185, metadata !355}
!363 = metadata !{i32 233, i32 0, metadata !185, metadata !355}
!364 = metadata !{i32 234, i32 0, metadata !185, metadata !355}
!365 = metadata !{i32 236, i32 0, metadata !185, metadata !355}
!366 = metadata !{i32 237, i32 0, metadata !185, metadata !355}
!367 = metadata !{i32 239, i32 0, metadata !185, metadata !355}
!368 = metadata !{i32 240, i32 0, metadata !185, metadata !355}
!369 = metadata !{i32 241, i32 0, metadata !185, metadata !355}
!370 = metadata !{i32 786688, metadata !185, metadata !"i", metadata !56, i32 230, metadata !61, i32 0, metadata !355} ; [ DW_TAG_auto_variable ] [i] [line 230]
!371 = metadata !{i32 242, i32 0, metadata !372, metadata !355}
!372 = metadata !{i32 786443, metadata !1, metadata !185, i32 242, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!373 = metadata !{i32 243, i32 0, metadata !374, metadata !355}
!374 = metadata !{i32 786443, metadata !1, metadata !372, i32 242, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!375 = metadata !{i32 245, i32 0, metadata !376, metadata !355}
!376 = metadata !{i32 786443, metadata !1, metadata !374, i32 243, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!377 = metadata !{i32 246, i32 0, metadata !376, metadata !355}
!378 = metadata !{i32 244, i32 0, metadata !376, metadata !355}
!379 = metadata !{i32 786688, metadata !185, metadata !"len", metadata !56, i32 230, metadata !61, i32 0, metadata !355} ; [ DW_TAG_auto_variable ] [len] [line 230]
!380 = metadata !{i32 247, i32 0, metadata !376, metadata !355}
!381 = metadata !{i32 248, i32 0, metadata !376, metadata !355}
!382 = metadata !{i32 786688, metadata !185, metadata !"buf", metadata !56, i32 231, metadata !59, i32 0, metadata !355} ; [ DW_TAG_auto_variable ] [buf] [line 231]
!383 = metadata !{i32 249, i32 0, metadata !376, metadata !355}
!384 = metadata !{i32 250, i32 0, metadata !376, metadata !355}
!385 = metadata !{i32 251, i32 0, metadata !376, metadata !355}
!386 = metadata !{i32 252, i32 0, metadata !376, metadata !355}
!387 = metadata !{i32 253, i32 0, metadata !376, metadata !355}
!388 = metadata !{i32 255, i32 0, metadata !389, metadata !355}
!389 = metadata !{i32 786443, metadata !1, metadata !374, i32 254, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!390 = metadata !{i32 256, i32 0, metadata !389, metadata !355}
!391 = metadata !{i32 257, i32 0, metadata !389, metadata !355}
!392 = metadata !{i32 258, i32 0, metadata !389, metadata !355}
!393 = metadata !{i32 259, i32 0, metadata !389, metadata !355}
!394 = metadata !{i32 262, i32 0, metadata !185, metadata !355}
!395 = metadata !{i32 263, i32 0, metadata !396, metadata !355}
!396 = metadata !{i32 786443, metadata !1, metadata !185, i32 262, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/main.c]
!397 = metadata !{i32 264, i32 0, metadata !396, metadata !355}
!398 = metadata !{i32 265, i32 0, metadata !396, metadata !355}
!399 = metadata !{i32 370, i32 0, metadata !174, null}
