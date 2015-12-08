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
  %call = tail call i8* @strcpy(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* %base) #5
  %call1 = tail call i64 @strlen(i8* %base) #6
  %sub = add i64 %call1, -4
  %arrayidx = getelementptr inbounds [256 x i8]* @par_fn.buf, i64 0, i64 %sub
  store i8 0, i8* %arrayidx, align 1, !tbaa !0
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %0 = load i32* %nnodes, align 4, !tbaa !2
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %1 = load i32* %nthreads, align 4, !tbaa !2
  %cmp2 = icmp sgt i32 %1, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = tail call i64 @strlen(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0)) #6
  %add.ptr = getelementptr inbounds [256 x i8]* @par_fn.buf, i64 0, i64 %call3
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %2 = load i32* %nodeid, align 4, !tbaa !2
  %call4 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %strlen = tail call i64 @strlen(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0))
  %endptr = getelementptr [256 x i8]* @par_fn.buf, i64 0, i64 %strlen
  %3 = bitcast i8* %endptr to i16*
  store i16 46, i16* %3, align 1
  %cmp6 = icmp eq i32 %ftp, 24
  br i1 %cmp6, label %cond.end11, label %cond.false

cond.false:                                       ; preds = %if.end
  %cmp7 = icmp eq i32 %ftp, 8
  br i1 %cmp7, label %cond.end11, label %cond.false9

cond.false9:                                      ; preds = %cond.false
  %call10 = tail call i8* @ftp2ext(i32 %ftp) #5
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false9, %cond.false, %if.end
  %cond12 = phi i8* [ getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), %if.end ], [ %call10, %cond.false9 ], [ getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), %cond.false ]
  %call13 = tail call i8* @strcat(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* %cond12) #5
  ret i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0)
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #1

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @check_multi_int(%struct._IO_FILE* %log, %struct.t_commrec* %mcr, i32 %val, i8* %name) #0 {
entry:
  %tobool = icmp ne %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([22 x i8]* @.str4, i64 0, i64 0), i8* %name) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nnodes = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 1
  %0 = load i32* %nnodes, align 4, !tbaa !2
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 144, i32 %0, i32 4) #5
  %1 = bitcast i8* %call1 to i32*
  %nodeid = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 0
  %2 = load i32* %nodeid, align 4, !tbaa !2
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom
  store i32 %val, i32* %arrayidx, align 4, !tbaa !2
  %tobool2 = icmp eq %struct.t_commrec* %mcr, null
  br i1 %tobool2, label %for.cond.preheader, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32* %nnodes, align 4, !tbaa !2
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %nthreads = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 5
  %4 = load i32* %nthreads, align 4, !tbaa !2
  %cmp4 = icmp sgt i32 %4, 1
  br i1 %cmp4, label %if.then5, label %for.cond.preheader

if.then5:                                         ; preds = %lor.lhs.false, %land.lhs.true
  tail call void @gmx_sumi(i32 %3, i32* %1, %struct.t_commrec* %mcr) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end, %if.then5, %lor.lhs.false
  %5 = load i32* %nnodes, align 4, !tbaa !2
  %cmp964 = icmp sgt i32 %5, 1
  br i1 %cmp964, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %land.end
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %land.end ], [ 1, %for.cond.preheader ]
  %bCompatible.066 = phi i32 [ %land.ext, %land.end ], [ 1, %for.cond.preheader ]
  %tobool10 = icmp eq i32 %bCompatible.066, 0
  br i1 %tobool10, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.body
  %6 = add nsw i64 %indvars.iv69, -1
  %arrayidx12 = getelementptr inbounds i32* %1, i64 %6
  %7 = load i32* %arrayidx12, align 4, !tbaa !2
  %arrayidx14 = getelementptr inbounds i32* %1, i64 %indvars.iv69
  %8 = load i32* %arrayidx14, align 4, !tbaa !2
  %cmp15 = icmp eq i32 %7, %8
  br label %land.end

land.end:                                         ; preds = %for.body, %land.rhs
  %9 = phi i1 [ false, %for.body ], [ %cmp15, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  %indvars.iv.next70 = add i64 %indvars.iv69, 1
  %10 = trunc i64 %indvars.iv.next70 to i32
  %cmp9 = icmp slt i32 %10, %5
  br i1 %cmp9, label %for.body, label %for.end

for.end:                                          ; preds = %land.end, %for.cond.preheader
  %bCompatible.0.lcssa = phi i32 [ 1, %for.cond.preheader ], [ %land.ext, %land.end ]
  br i1 %tobool, label %if.then17, label %if.end34

if.then17:                                        ; preds = %for.end
  %tobool18 = icmp eq i32 %bCompatible.0.lcssa, 0
  br i1 %tobool18, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then17
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %log)
  br label %if.end34

if.else:                                          ; preds = %if.then17
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([37 x i8]* @.str8, i64 0, i64 0), i8* %name) #5
  %12 = load i32* %nnodes, align 4, !tbaa !2
  %cmp2462 = icmp sgt i32 %12, 0
  br i1 %cmp2462, label %for.body25, label %for.end31

for.body25:                                       ; preds = %if.else, %for.body25
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body25 ], [ 0, %if.else ]
  %arrayidx27 = getelementptr inbounds i32* %1, i64 %indvars.iv
  %13 = load i32* %arrayidx27, align 4, !tbaa !2
  %14 = trunc i64 %indvars.iv to i32
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str9, i64 0, i64 0), i32 %14, i32 %13) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = load i32* %nnodes, align 4, !tbaa !2
  %16 = trunc i64 %indvars.iv.next to i32
  %cmp24 = icmp slt i32 %16, %15
  br i1 %cmp24, label %for.body25, label %for.end31

for.end31:                                        ; preds = %for.body25, %if.else
  %.lcssa = phi i32 [ %12, %if.else ], [ %15, %for.body25 ]
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str10, i64 0, i64 0), i32 %.lcssa) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then19, %for.end31, %for.end
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 165, i8* %call1) #5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @open_log(i8* %lognm, %struct.t_commrec* nocapture %cr) #0 {
entry:
  %len = alloca i32, align 4
  %testlen = alloca i32, align 4
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %0 = load i32* %nnodes, align 4, !tbaa !2
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %1 = load i32* %nodeid, align 4, !tbaa !2
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %2 = load i32* %threadid, align 4, !tbaa !2
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %call = call i64 @strlen(i8* %lognm) #6
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %len, align 4, !tbaa !2
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %3 = load i32* %right, align 4, !tbaa !2
  %4 = bitcast i32* %len to i8*
  call void @gmx_txs(i32 %3, i8* %4, i32 4) #5
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %5 = load i32* %left, align 4, !tbaa !2
  %6 = bitcast i32* %testlen to i8*
  call void @gmx_rxs(i32 %5, i8* %6, i32 4) #5
  %7 = load i32* %right, align 4, !tbaa !2
  %8 = load i32* %len, align 4, !tbaa !2
  call void @gmx_txs(i32 %7, i8* %lognm, i32 %8) #5
  %9 = load i32* %left, align 4, !tbaa !2
  %10 = load i32* %len, align 4, !tbaa !2
  call void @gmx_rxs(i32 %9, i8* %lognm, i32 %10) #5
  %11 = load i32* %len, align 4, !tbaa !2
  %12 = load i32* %testlen, align 4, !tbaa !2
  %cmp6 = icmp eq i32 %11, %12
  br i1 %cmp6, label %if.end15, label %if.then8

if.then8:                                         ; preds = %if.then3
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([31 x i8]* @.str11, i64 0, i64 0)) #5
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true, %if.then
  %left9 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %13 = load i32* %left9, align 4, !tbaa !2
  %14 = bitcast i32* %len to i8*
  call void @gmx_rxs(i32 %13, i8* %14, i32 4) #5
  %right10 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %15 = load i32* %right10, align 4, !tbaa !2
  call void @gmx_txs(i32 %15, i8* %14, i32 4) #5
  %16 = load i32* %len, align 4, !tbaa !2
  %call11 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 195, i32 %16, i32 1) #5
  %17 = load i32* %left9, align 4, !tbaa !2
  %18 = load i32* %len, align 4, !tbaa !2
  call void @gmx_rxs(i32 %17, i8* %call11, i32 %18) #5
  %19 = load i32* %right10, align 4, !tbaa !2
  %20 = load i32* %len, align 4, !tbaa !2
  call void @gmx_txs(i32 %19, i8* %call11, i32 %20) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then3, %if.else, %if.then8, %entry
  %lognm.addr.0 = phi i8* [ %lognm, %if.then8 ], [ %lognm, %if.then3 ], [ %call11, %if.else ], [ %lognm, %entry ]
  %call16 = call i8* @par_fn(i8* %lognm.addr.0, i32 18, %struct.t_commrec* %cr) #7
  %call17 = call %struct._IO_FILE* @ffopen(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #5
  store %struct._IO_FILE* %call17, %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %call18 = call i32 @getpid() #5
  %21 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %21, null
  br i1 %tobool, label %if.end25, label %if.then19

if.then19:                                        ; preds = %if.end15
  %nodeid20 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %22 = load i32* %nodeid20, align 4, !tbaa !2
  %23 = load i32* %nnodes, align 4, !tbaa !2
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([66 x i8]* @.str14, i64 0, i64 0), i32 %22, i32 %23, i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 %call18) #5
  %24 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %call24 = call i32 @fflush(%struct._IO_FILE* %24) #5
  br label %if.end25

if.end25:                                         ; preds = %if.end15, %if.then19
  ret void
}

; Function Attrs: optsize
declare void @gmx_txs(i32, i8*, i32) #3

; Function Attrs: optsize
declare void @gmx_rxs(i32, i8*, i32) #3

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @getpid() #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define %struct.t_commrec* @init_multisystem(%struct.t_commrec* nocapture %cr, i32 %nfile, %struct.t_filenm* nocapture %fnm) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 275, i32 1, i32 24) #5
  %0 = bitcast i8* %call to %struct.t_commrec*
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %1 = load i32* %nodeid, align 4, !tbaa !2
  %nodeid1 = bitcast i8* %call to i32*
  store i32 %1, i32* %nodeid1, align 4, !tbaa !2
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %2 = load i32* %nnodes, align 4, !tbaa !2
  %nnodes2 = getelementptr inbounds i8* %call, i64 4
  %3 = bitcast i8* %nnodes2 to i32*
  store i32 %2, i32* %3, align 4, !tbaa !2
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %4 = load i32* %left, align 4, !tbaa !2
  %left3 = getelementptr inbounds i8* %call, i64 8
  %5 = bitcast i8* %left3 to i32*
  store i32 %4, i32* %5, align 4, !tbaa !2
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %6 = load i32* %right, align 4, !tbaa !2
  %right4 = getelementptr inbounds i8* %call, i64 12
  %7 = bitcast i8* %right4 to i32*
  store i32 %6, i32* %7, align 4, !tbaa !2
  store i32 0, i32* %nodeid, align 4, !tbaa !2
  store i32 1, i32* %nnodes, align 4, !tbaa !2
  %cmp39 = icmp sgt i32 %nfile, 0
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %fn = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2
  %8 = load i8** %fn, align 8, !tbaa !3
  %call7 = tail call i32 @fn2ftp(i8* %8) #5
  %cmp8 = icmp eq i32 %call7, 18
  br i1 %cmp8, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load i8** %fn, align 8, !tbaa !3
  %call12 = tail call i8* @par_fn(i8* %9, i32 %call7, %struct.t_commrec* %0) #7
  %10 = load i8** %fn, align 8, !tbaa !3
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 295, i8* %10) #5
  %call16 = tail call noalias i8* @strdup(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0)) #5
  store i8* %call16, i8** %fn, align 8, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nfile
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret %struct.t_commrec* %0
}

; Function Attrs: optsize
declare i32 @fn2ftp(i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define %struct.t_commrec* @init_par(i32* %argc, i8*** nocapture %argv_ptr) #0 {
entry:
  %len.i = alloca i32, align 4
  %nodeids.i = alloca [256 x i32], align 16
  %send_nodeid.i = alloca i32, align 4
  %receive_nodeid.i = alloca i32, align 4
  %0 = load i8*** %argv_ptr, align 8, !tbaa !3
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 313, i32 1, i32 24) #5
  %1 = bitcast i8* %call to %struct.t_commrec*
  %nnodes = getelementptr inbounds i8* %call, i64 4
  %2 = bitcast i8* %nnodes to i32*
  store i32 1, i32* %2, align 4, !tbaa !2
  %3 = load i8** %0, align 8, !tbaa !3
  %cmp82 = icmp eq i8* %3, null
  br i1 %cmp82, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %5, %for.inc ], [ 0, %entry ]
  %4 = phi i8* [ %7, %for.inc ], [ %3, %entry ]
  %call3 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0)) #6
  %cmp4 = icmp eq i32 %call3, 0
  %5 = add i64 %indvars.iv, 1
  %arrayidx6 = getelementptr inbounds i8** %0, i64 %5
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %6 = load i8** %arrayidx6, align 8, !tbaa !3
  %cmp7 = icmp eq i8* %6, null
  br i1 %cmp7, label %for.inc, label %if.then8

if.then8:                                         ; preds = %if.then
  %call12 = call i32 @atoi(i8* %6) #6
  store i32 %call12, i32* %2, align 4, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then, %if.then8
  %7 = load i8** %arrayidx6, align 8, !tbaa !3
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %nodeid = bitcast i8* %call to i32*
  store i32 0, i32* %nodeid, align 4, !tbaa !2
  store i32 1, i32* %2, align 4, !tbaa !2
  store i32 0, i32* @gmx_parallel, align 4, !tbaa !2
  %8 = load i32* %2, align 4, !tbaa !2
  %cmp17 = icmp sgt i32 %8, 1
  br i1 %cmp17, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %nthreads = getelementptr inbounds i8* %call, i64 20
  %9 = bitcast i8* %nthreads to i32*
  %10 = load i32* %9, align 4, !tbaa !2
  %cmp18 = icmp sgt i32 %10, 1
  br i1 %cmp18, label %if.then28, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load i32* %nodeid, align 4, !tbaa !2
  %cmp20 = icmp eq i32 %11, 0
  br i1 %cmp20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str20, i64 0, i64 0)) #5
  %.pr.pre = load i32* %2, align 4, !tbaa !2
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %if.then21
  %.pr = phi i32 [ %8, %land.lhs.true ], [ %.pr.pre, %if.then21 ]
  %cmp24 = icmp sgt i32 %.pr, 1
  br i1 %cmp24, label %if.then28, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end22
  %.pr90 = load i32* %9, align 4, !tbaa !2
  %cmp27 = icmp sgt i32 %.pr90, 1
  br i1 %cmp27, label %if.then28, label %lor.lhs.false42

if.then28:                                        ; preds = %lor.lhs.false, %lor.lhs.false25, %if.end22, %for.end
  %12 = phi i32 [ %8, %for.end ], [ %.pr, %if.end22 ], [ %.pr, %lor.lhs.false25 ], [ %8, %lor.lhs.false ]
  %13 = load i32* %nodeid, align 4, !tbaa !2
  %left = getelementptr inbounds i8* %call, i64 8
  %14 = bitcast i8* %left to i32*
  %right = getelementptr inbounds i8* %call, i64 12
  %15 = bitcast i8* %right to i32*
  call void @gmx_left_right(i32 %12, i32 %13, i32* %14, i32* %15) #5
  %16 = load i32* %14, align 4, !tbaa !2
  %17 = load i32* %15, align 4, !tbaa !2
  %18 = bitcast i32* %send_nodeid.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #4
  %19 = bitcast i32* %receive_nodeid.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #4
  %20 = bitcast [256 x i32]* %nodeids.i to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %20) #4
  store i32 0, i32* %2, align 4, !tbaa !2
  %21 = load i32* %nodeid, align 4, !tbaa !2
  store i32 %21, i32* %send_nodeid.i, align 4, !tbaa !2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %if.then28
  %min_index.0.i = phi i32 [ 0, %if.then28 ], [ %.min_index.0.i, %do.body.i ]
  %min_nodeid.0.i = phi i32 [ %21, %if.then28 ], [ %.min_nodeid.0.i, %do.body.i ]
  call void @gmx_tx(i32 %16, i8* %18, i32 4) #5
  call void @gmx_rx(i32 %17, i8* %19, i32 4) #5
  call void @gmx_tx_wait(i32 %16) #5
  call void @gmx_rx_wait(i32 %17) #5
  %22 = load i32* %send_nodeid.i, align 4, !tbaa !2
  %cmp.i = icmp slt i32 %22, %min_nodeid.0.i
  %23 = load i32* %2, align 4, !tbaa !2
  %.min_index.0.i = select i1 %cmp.i, i32 %23, i32 %min_index.0.i
  %.min_nodeid.0.i = select i1 %cmp.i, i32 %22, i32 %min_nodeid.0.i
  %inc.i = add nsw i32 %23, 1
  store i32 %inc.i, i32* %2, align 4, !tbaa !2
  %idxprom.i = sext i32 %23 to i64
  %arrayidx.i = getelementptr inbounds [256 x i32]* %nodeids.i, i64 0, i64 %idxprom.i
  store i32 %22, i32* %arrayidx.i, align 4, !tbaa !2
  %24 = load i32* %receive_nodeid.i, align 4, !tbaa !2
  store i32 %24, i32* %send_nodeid.i, align 4, !tbaa !2
  %25 = load i32* %nodeid, align 4, !tbaa !2
  %cmp1.i = icmp eq i32 %24, %25
  br i1 %cmp1.i, label %for.cond.i, label %do.body.i

for.cond.i:                                       ; preds = %do.body.i, %for.cond.i
  %i.0.i = phi i32 [ %inc5.i, %for.cond.i ], [ %.min_index.0.i, %do.body.i ]
  %rem.i = srem i32 %i.0.i, %inc.i
  %idxprom2.i = sext i32 %rem.i to i64
  %arrayidx3.i = getelementptr inbounds [256 x i32]* %nodeids.i, i64 0, i64 %idxprom2.i
  %26 = load i32* %arrayidx3.i, align 4, !tbaa !2
  %cmp4.i = icmp eq i32 %24, %26
  %inc5.i = add nsw i32 %i.0.i, 1
  br i1 %cmp4.i, label %if.end39, label %for.cond.i

if.end39:                                         ; preds = %for.cond.i
  %sub.i = sub i32 %inc.i, %.min_index.0.i
  %add.i = add i32 %sub.i, %i.0.i
  %rem6.i = srem i32 %add.i, %inc.i
  store i32 %rem6.i, i32* %nodeid, align 4, !tbaa !2
  call void @llvm.lifetime.end(i64 1024, i8* %20) #4
  call void @llvm.lifetime.end(i64 4, i8* %18) #4
  call void @llvm.lifetime.end(i64 4, i8* %19) #4
  %.pre = load i32* %2, align 4, !tbaa !2
  %cmp41 = icmp sgt i32 %.pre, 1
  br i1 %cmp41, label %if.then45, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false25, %if.end39
  %27 = phi i32 [ %.pre, %if.end39 ], [ %.pr, %lor.lhs.false25 ]
  %nthreads43 = getelementptr inbounds i8* %call, i64 20
  %28 = bitcast i8* %nthreads43 to i32*
  %29 = load i32* %28, align 4, !tbaa !2
  %cmp44 = icmp sgt i32 %29, 1
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %lor.lhs.false42, %if.end39
  %30 = phi i32 [ %27, %lor.lhs.false42 ], [ %.pre, %if.end39 ]
  %31 = bitcast i32* %len.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #4
  %32 = load i32* %nodeid, align 4, !tbaa !2
  %cmp.i75 = icmp eq i32 %32, 0
  br i1 %cmp.i75, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then45
  %threadid.i = getelementptr inbounds i8* %call, i64 16
  %33 = bitcast i8* %threadid.i to i32*
  %34 = load i32* %33, align 4, !tbaa !2
  %cmp1.i76 = icmp eq i32 %34, 0
  br i1 %cmp1.i76, label %land.lhs.true2.i, label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then45
  store i32 0, i32* %argc, align 4, !tbaa !2
  %.pre86 = load i32* %2, align 4, !tbaa !2
  br label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %if.end.i, %land.lhs.true.i
  %35 = phi i32 [ %.pre86, %if.end.i ], [ %30, %land.lhs.true.i ]
  %cmp3.i = icmp sgt i32 %35, 1
  br i1 %cmp3.i, label %if.then5.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true2.i
  %nthreads.i = getelementptr inbounds i8* %call, i64 20
  %36 = bitcast i8* %nthreads.i to i32*
  %37 = load i32* %36, align 4, !tbaa !2
  %cmp4.i77 = icmp sgt i32 %37, 1
  br i1 %cmp4.i77, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %lor.lhs.false.i, %land.lhs.true2.i
  call void @gmx_sumi(i32 1, i32* %argc, %struct.t_commrec* %1) #5
  br label %if.end6.i

if.end6.i:                                        ; preds = %lor.lhs.false.i, %if.then5.i
  %38 = load i32* %nodeid, align 4, !tbaa !2
  %cmp8.i = icmp eq i32 %38, 0
  br i1 %cmp8.i, label %land.lhs.true9.i, label %if.then12.i

land.lhs.true9.i:                                 ; preds = %if.end6.i
  %threadid10.i = getelementptr inbounds i8* %call, i64 16
  %39 = bitcast i8* %threadid10.i to i32*
  %40 = load i32* %39, align 4, !tbaa !2
  %cmp11.i = icmp eq i32 %40, 0
  br i1 %cmp11.i, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %land.lhs.true9.i, %if.end6.i
  %41 = load i32* %argc, align 4, !tbaa !2
  %add.i78 = add nsw i32 %41, 1
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 240, i32 %add.i78, i32 8) #5
  %42 = bitcast i8* %call.i to i8**
  %.pre.i = load i32* %nodeid, align 4, !tbaa !2
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true9.i, %if.then12.i
  %43 = phi i32 [ %.pre.i, %if.then12.i ], [ 0, %land.lhs.true9.i ]
  %argv_tmp.0.i = phi i8** [ %42, %if.then12.i ], [ null, %land.lhs.true9.i ]
  %44 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %45 = load i32* %argc, align 4, !tbaa !2
  %call15.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([19 x i8]* @.str23, i64 0, i64 0), i32 %43, i32 %45) #5
  %46 = load i32* %argc, align 4, !tbaa !2
  %cmp16106.i = icmp sgt i32 %46, 0
  %47 = load i32* %nodeid, align 4, !tbaa !2
  %cmp18107.i = icmp eq i32 %47, 0
  br i1 %cmp16106.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end13.i
  %threadid20.i = getelementptr inbounds i8* %call, i64 16
  %48 = bitcast i8* %threadid20.i to i32*
  %right.i = getelementptr inbounds i8* %call, i64 12
  %49 = bitcast i8* %right.i to i32*
  %left.i = getelementptr inbounds i8* %call, i64 8
  %50 = bitcast i8* %left.i to i32*
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %cmp18110.i = phi i1 [ %cmp18107.i, %for.body.lr.ph.i ], [ %cmp18.i, %for.inc.i ]
  br i1 %cmp18110.i, label %land.lhs.true19.i, label %if.else.i

land.lhs.true19.i:                                ; preds = %for.body.i
  %51 = load i32* %48, align 4, !tbaa !2
  %cmp21.i = icmp eq i32 %51, 0
  br i1 %cmp21.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %land.lhs.true19.i
  %52 = load i8*** %argv_ptr, align 8, !tbaa !3
  %arrayidx.i79 = getelementptr inbounds i8** %52, i64 %indvars.iv.i
  %53 = load i8** %arrayidx.i79, align 8, !tbaa !3
  %call23.i = call i64 @strlen(i8* %53) #6
  %add24.i = add i64 %call23.i, 1
  %conv.i = trunc i64 %add24.i to i32
  store i32 %conv.i, i32* %len.i, align 4, !tbaa !2
  %54 = load i32* %49, align 4, !tbaa !2
  call void @gmx_txs(i32 %54, i8* %31, i32 4) #5
  %55 = load i32* %50, align 4, !tbaa !2
  call void @gmx_rxs(i32 %55, i8* %31, i32 4) #5
  %56 = load i32* %49, align 4, !tbaa !2
  %57 = load i8*** %argv_ptr, align 8, !tbaa !3
  %arrayidx27.i = getelementptr inbounds i8** %57, i64 %indvars.iv.i
  %58 = load i8** %arrayidx27.i, align 8, !tbaa !3
  %59 = load i32* %len.i, align 4, !tbaa !2
  call void @gmx_txs(i32 %56, i8* %58, i32 %59) #5
  %60 = load i32* %len.i, align 4, !tbaa !2
  %call28.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 248, i32 %60, i32 1) #5
  %61 = load i32* %50, align 4, !tbaa !2
  %62 = load i32* %len.i, align 4, !tbaa !2
  call void @gmx_rxs(i32 %61, i8* %call28.i, i32 %62) #5
  %63 = load i8*** %argv_ptr, align 8, !tbaa !3
  %arrayidx31.i = getelementptr inbounds i8** %63, i64 %indvars.iv.i
  %64 = load i8** %arrayidx31.i, align 8, !tbaa !3
  %call32.i = call i32 @strcmp(i8* %call28.i, i8* %64) #6
  %cmp33.i = icmp eq i32 %call32.i, 0
  br i1 %cmp33.i, label %if.end38.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.then22.i
  %65 = trunc i64 %indvars.iv.i to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str25, i64 0, i64 0), i32 %65, i8* %64) #5
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.then22.i
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 252, i8* %call28.i) #5
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true19.i, %for.body.i
  %66 = load i32* %50, align 4, !tbaa !2
  call void @gmx_rxs(i32 %66, i8* %31, i32 4) #5
  %67 = load i32* %49, align 4, !tbaa !2
  call void @gmx_txs(i32 %67, i8* %31, i32 4) #5
  %68 = load i32* %len.i, align 4, !tbaa !2
  %call41.i = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 257, i32 %68, i32 1) #5
  %arrayidx43.i = getelementptr inbounds i8** %argv_tmp.0.i, i64 %indvars.iv.i
  store i8* %call41.i, i8** %arrayidx43.i, align 8, !tbaa !3
  %69 = load i32* %50, align 4, !tbaa !2
  %70 = load i32* %len.i, align 4, !tbaa !2
  call void @gmx_rxs(i32 %69, i8* %call41.i, i32 %70) #5
  %71 = load i32* %49, align 4, !tbaa !2
  %72 = load i8** %arrayidx43.i, align 8, !tbaa !3
  %73 = load i32* %len.i, align 4, !tbaa !2
  call void @gmx_txs(i32 %71, i8* %72, i32 %73) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.end38.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %74 = load i32* %argc, align 4, !tbaa !2
  %75 = trunc i64 %indvars.iv.next.i to i32
  %cmp16.i = icmp slt i32 %75, %74
  %76 = load i32* %nodeid, align 4, !tbaa !2
  %cmp18.i = icmp eq i32 %76, 0
  br i1 %cmp16.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.inc.i, %if.end13.i
  %77 = phi i32 [ %46, %if.end13.i ], [ %74, %for.inc.i ]
  %cmp18.lcssa.i = phi i1 [ %cmp18107.i, %if.end13.i ], [ %cmp18.i, %for.inc.i ]
  br i1 %cmp18.lcssa.i, label %land.lhs.true54.i, label %if.then58.i

land.lhs.true54.i:                                ; preds = %for.end.i
  %threadid55.i = getelementptr inbounds i8* %call, i64 16
  %78 = bitcast i8* %threadid55.i to i32*
  %79 = load i32* %78, align 4, !tbaa !2
  %cmp56.i = icmp eq i32 %79, 0
  br i1 %cmp56.i, label %if.end46, label %if.then58.i

if.then58.i:                                      ; preds = %land.lhs.true54.i, %for.end.i
  %idxprom59.i = sext i32 %77 to i64
  %arrayidx60.i = getelementptr inbounds i8** %argv_tmp.0.i, i64 %idxprom59.i
  store i8* null, i8** %arrayidx60.i, align 8, !tbaa !3
  store i8** %argv_tmp.0.i, i8*** %argv_ptr, align 8, !tbaa !3
  br label %if.end46

if.end46:                                         ; preds = %if.then58.i, %land.lhs.true54.i, %lor.lhs.false42
  ret %struct.t_commrec* %1
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #2

; Function Attrs: optsize
declare void @gmx_left_right(i32, i32, i32*, i32*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #3

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #3

; Function Attrs: optsize
declare void @gmx_tx_wait(i32) #3

; Function Attrs: optsize
declare void @gmx_rx_wait(i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"int", metadata !0}
!3 = metadata !{metadata !"any pointer", metadata !0}
