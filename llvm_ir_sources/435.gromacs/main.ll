; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/main.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }

@stdlog = global %struct.__sFILE* null, align 8
@gmx_parallel = global i32 0, align 4
@par_fn.buf = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"tpr\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"edr\00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"Multi-checking %s... \00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"ibuf\00", align 1
@.str6 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/main.c\00", align 1
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
@__stderrp = external global %struct.__sFILE*
@.str22 = private unnamed_addr constant [9 x i8] c"argv_tmp\00", align 1
@.str23 = private unnamed_addr constant [19 x i8] c"NODEID=%d argc=%d\0A\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str25 = private unnamed_addr constant [27 x i8] c"Communicating argv[%d]=%s\0A\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"argv_tmp[i]\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @par_fn(i8* %base, i32 %ftp, %struct.t_commrec* nocapture readonly %cr) #1 {
  %1 = tail call i8* @__strcpy_chk(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* %base, i64 256) #6
  %2 = tail call i64 @strlen(i8* %base) #6
  %3 = add i64 %2, -4
  %4 = getelementptr inbounds [256 x i8]* @par_fn.buf, i64 0, i64 %3
  store i8 0, i8* %4, align 1, !tbaa !2
  %5 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %6 = load i32* %5, align 4, !tbaa !5
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %10 = load i32* %9, align 4, !tbaa !8
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %18

; <label>:12                                      ; preds = %8, %0
  %13 = tail call i64 @strlen(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0)) #6
  %14 = getelementptr inbounds [256 x i8]* @par_fn.buf, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %16 = load i32* %15, align 4, !tbaa !9
  %17 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %14, i32 0, i64 -1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 %16) #6
  br label %18

; <label>:18                                      ; preds = %12, %8
  %19 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i64 256) #6
  %20 = icmp eq i32 %ftp, 24
  br i1 %20, label %25, label %21

; <label>:21                                      ; preds = %18
  %22 = icmp eq i32 %ftp, 8
  br i1 %22, label %25, label %23

; <label>:23                                      ; preds = %21
  %24 = tail call i8* @ftp2ext(i32 %ftp) #6
  br label %25

; <label>:25                                      ; preds = %23, %21, %18
  %26 = phi i8* [ getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), %18 ], [ %24, %23 ], [ getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), %21 ]
  %27 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* %26, i64 256) #6
  ret i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0)
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #4

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #2

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @check_multi_int(%struct.__sFILE* %log, %struct.t_commrec* %mcr, i32 %val, i8* %name) #1 {
  %1 = icmp ne %struct.__sFILE* %log, null
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([22 x i8]* @.str4, i64 0, i64 0), i8* %name) #6
  br label %4

; <label>:4                                       ; preds = %2, %0
  %5 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 1
  %6 = load i32* %5, align 4, !tbaa !5
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 144, i32 %6, i32 4) #6
  %8 = bitcast i8* %7 to i32*
  %9 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 0
  %10 = load i32* %9, align 4, !tbaa !9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32* %8, i64 %11
  store i32 %val, i32* %12, align 4, !tbaa !10
  %13 = icmp eq %struct.t_commrec* %mcr, null
  br i1 %13, label %.preheader, label %14

; <label>:14                                      ; preds = %4
  %15 = load i32* %5, align 4, !tbaa !5
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %21, label %17

; <label>:17                                      ; preds = %14
  %18 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 5
  %19 = load i32* %18, align 4, !tbaa !8
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %.preheader

; <label>:21                                      ; preds = %17, %14
  tail call void @gmx_sumi(i32 %15, i32* %8, %struct.t_commrec* %mcr) #6
  br label %.preheader

.preheader:                                       ; preds = %4, %21, %17
  %22 = load i32* %5, align 4, !tbaa !5
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %.preheader
  %24 = sext i32 %22 to i64
  br label %25

; <label>:25                                      ; preds = %.lr.ph4, %34
  %indvars.iv9 = phi i64 [ 1, %.lr.ph4 ], [ %indvars.iv.next10, %34 ]
  %bCompatible.03 = phi i32 [ 1, %.lr.ph4 ], [ %36, %34 ]
  %26 = icmp eq i32 %bCompatible.03, 0
  br i1 %26, label %34, label %27

; <label>:27                                      ; preds = %25
  %28 = add nsw i64 %indvars.iv9, -1
  %29 = getelementptr inbounds i32* %8, i64 %28
  %30 = load i32* %29, align 4, !tbaa !10
  %31 = getelementptr inbounds i32* %8, i64 %indvars.iv9
  %32 = load i32* %31, align 4, !tbaa !10
  %33 = icmp eq i32 %30, %32
  br label %34

; <label>:34                                      ; preds = %25, %27
  %35 = phi i1 [ false, %25 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %37 = icmp slt i64 %indvars.iv.next10, %24
  br i1 %37, label %25, label %._crit_edge5

._crit_edge5:                                     ; preds = %34, %.preheader
  %bCompatible.0.lcssa = phi i32 [ 1, %.preheader ], [ %36, %34 ]
  br i1 %1, label %38, label %53

; <label>:38                                      ; preds = %._crit_edge5
  %39 = icmp eq i32 %bCompatible.0.lcssa, 0
  br i1 %39, label %42, label %40

; <label>:40                                      ; preds = %38
  %41 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %log)
  br label %53

; <label>:42                                      ; preds = %38
  %43 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([37 x i8]* @.str8, i64 0, i64 0), i8* %name) #6
  %44 = load i32* %5, align 4, !tbaa !5
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %42, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %42 ]
  %46 = getelementptr inbounds i32* %8, i64 %indvars.iv
  %47 = load i32* %46, align 4, !tbaa !10
  %48 = trunc i64 %indvars.iv to i32
  %49 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str9, i64 0, i64 0), i32 %48, i32 %47) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %50 = load i32* %5, align 4, !tbaa !5
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %indvars.iv.next, %51
  br i1 %52, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %42
  %.lcssa = phi i32 [ %44, %42 ], [ %50, %.lr.ph ]
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str10, i64 0, i64 0), i32 %.lcssa) #6
  br label %53

; <label>:53                                      ; preds = %40, %._crit_edge, %._crit_edge5
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 165, i8* %7) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #4

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #4

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #4

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @open_log(i8* %lognm, %struct.t_commrec* nocapture readonly %cr) #1 {
  %len = alloca i32, align 4
  %testlen = alloca i32, align 4
  %1 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %42

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %6 = load i32* %5, align 4, !tbaa !9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

; <label>:8                                       ; preds = %4
  %9 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %10 = load i32* %9, align 4, !tbaa !11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

; <label>:12                                      ; preds = %8
  %13 = tail call i64 @strlen(i8* %lognm) #6
  %14 = add i64 %13, 1
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %len, align 4, !tbaa !10
  %16 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %17 = load i32* %16, align 4, !tbaa !12
  %18 = bitcast i32* %len to i8*
  call void @gmx_txs(i32 %17, i8* %18, i32 4) #6
  %19 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %20 = load i32* %19, align 4, !tbaa !13
  %21 = bitcast i32* %testlen to i8*
  call void @gmx_rxs(i32 %20, i8* %21, i32 4) #6
  %22 = load i32* %16, align 4, !tbaa !12
  %23 = load i32* %len, align 4, !tbaa !10
  call void @gmx_txs(i32 %22, i8* %lognm, i32 %23) #6
  %24 = load i32* %19, align 4, !tbaa !13
  %25 = load i32* %len, align 4, !tbaa !10
  call void @gmx_rxs(i32 %24, i8* %lognm, i32 %25) #6
  %26 = load i32* %len, align 4, !tbaa !10
  %27 = load i32* %testlen, align 4, !tbaa !10
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %42, label %29

; <label>:29                                      ; preds = %12
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([31 x i8]* @.str11, i64 0, i64 0)) #6
  br label %42

; <label>:30                                      ; preds = %8, %4
  %31 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %32 = load i32* %31, align 4, !tbaa !13
  %33 = bitcast i32* %len to i8*
  call void @gmx_rxs(i32 %32, i8* %33, i32 4) #6
  %34 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %35 = load i32* %34, align 4, !tbaa !12
  call void @gmx_txs(i32 %35, i8* %33, i32 4) #6
  %36 = load i32* %len, align 4, !tbaa !10
  %37 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 195, i32 %36, i32 1) #6
  %38 = load i32* %31, align 4, !tbaa !13
  %39 = load i32* %len, align 4, !tbaa !10
  call void @gmx_rxs(i32 %38, i8* %37, i32 %39) #6
  %40 = load i32* %34, align 4, !tbaa !12
  %41 = load i32* %len, align 4, !tbaa !10
  call void @gmx_txs(i32 %40, i8* %37, i32 %41) #6
  br label %42

; <label>:42                                      ; preds = %12, %30, %29, %0
  %.0 = phi i8* [ %lognm, %29 ], [ %lognm, %12 ], [ %37, %30 ], [ %lognm, %0 ]
  %43 = call i8* @par_fn(i8* %.0, i32 18, %struct.t_commrec* %cr) #7
  %44 = call %struct.__sFILE* @ffopen(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #6
  store %struct.__sFILE* %44, %struct.__sFILE** @stdlog, align 8, !tbaa !14
  %45 = call i32 @getpid() #6
  %46 = load %struct.__sFILE** @stdlog, align 8, !tbaa !14
  %47 = icmp eq %struct.__sFILE* %46, null
  br i1 %47, label %55, label %48

; <label>:48                                      ; preds = %42
  %49 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %50 = load i32* %49, align 4, !tbaa !9
  %51 = load i32* %1, align 4, !tbaa !5
  %52 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %46, i8* getelementptr inbounds ([66 x i8]* @.str14, i64 0, i64 0), i32 %50, i32 %51, i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 %45) #6
  %53 = load %struct.__sFILE** @stdlog, align 8, !tbaa !14
  %54 = call i32 @fflush(%struct.__sFILE* %53) #6
  br label %55

; <label>:55                                      ; preds = %42, %48
  ret void
}

; Function Attrs: optsize
declare void @gmx_txs(i32, i8*, i32) #4

; Function Attrs: optsize
declare void @gmx_rxs(i32, i8*, i32) #4

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #4

; Function Attrs: optsize
declare i32 @getpid() #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_commrec* @init_multisystem(%struct.t_commrec* nocapture %cr, i32 %nfile, %struct.t_filenm* nocapture %fnm) #1 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 275, i32 1, i32 24) #6
  %2 = bitcast i8* %1 to %struct.t_commrec*
  %3 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %4 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %5 = bitcast %struct.t_commrec* %cr to <4 x i32>*
  %6 = load <4 x i32>* %5, align 4, !tbaa !10
  %7 = bitcast i8* %1 to <4 x i32>*
  store <4 x i32> %6, <4 x i32>* %7, align 4, !tbaa !10
  store i32 0, i32* %3, align 4, !tbaa !9
  store i32 1, i32* %4, align 4, !tbaa !5
  %8 = icmp sgt i32 %nfile, 0
  br i1 %8, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %9 = add i32 %nfile, -1
  br label %10

; <label>:10                                      ; preds = %20, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %20 ]
  %11 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2
  %12 = load i8** %11, align 8, !tbaa !16
  %13 = tail call i32 @fn2ftp(i8* %12) #6
  %14 = icmp eq i32 %13, 18
  br i1 %14, label %20, label %15

; <label>:15                                      ; preds = %10
  %16 = load i8** %11, align 8, !tbaa !16
  %17 = tail call i8* @par_fn(i8* %16, i32 %13, %struct.t_commrec* %2) #7
  %18 = load i8** %11, align 8, !tbaa !16
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 295, i8* %18) #6
  %19 = tail call i8* @strdup(i8* getelementptr inbounds ([256 x i8]* @par_fn.buf, i64 0, i64 0)) #6
  store i8* %19, i8** %11, align 8, !tbaa !16
  br label %20

; <label>:20                                      ; preds = %10, %15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %9
  br i1 %exitcond, label %._crit_edge, label %10

._crit_edge:                                      ; preds = %20, %0
  ret %struct.t_commrec* %2
}

; Function Attrs: optsize
declare i32 @fn2ftp(i8*) #4

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #2

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_commrec* @init_par(i32* %argc, i8*** nocapture %argv_ptr) #1 {
  %len.i = alloca i32, align 4
  %nodeids.i = alloca [256 x i32], align 16
  %send_nodeid.i = alloca i32, align 4
  %receive_nodeid.i = alloca i32, align 4
  %1 = load i8*** %argv_ptr, align 8, !tbaa !14
  %2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 313, i32 1, i32 24) #6
  %3 = bitcast i8* %2 to %struct.t_commrec*
  %4 = getelementptr inbounds i8* %2, i64 4
  %5 = bitcast i8* %4 to i32*
  store i32 1, i32* %5, align 4, !tbaa !5
  %6 = load i8** %1, align 8, !tbaa !14
  %7 = icmp eq i8* %6, null
  br i1 %7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread14, %17, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %11, %17 ], [ %11, %.thread14 ]
  %8 = phi i8* [ %6, %0 ], [ %13, %17 ], [ %13, %.thread14 ]
  %9 = tail call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0)) #6
  %10 = icmp eq i32 %9, 0
  %11 = add nuw nsw i64 %indvars.iv, 1
  %12 = getelementptr inbounds i8** %1, i64 %11
  %13 = load i8** %12, align 8, !tbaa !14
  %14 = icmp eq i8* %13, null
  br i1 %10, label %15, label %17

; <label>:15                                      ; preds = %.lr.ph
  br i1 %14, label %._crit_edge, label %.thread14

.thread14:                                        ; preds = %15
  %16 = tail call i32 @atoi(i8* %13) #6
  store i32 %16, i32* %5, align 4, !tbaa !5
  br label %.lr.ph

; <label>:17                                      ; preds = %.lr.ph
  br i1 %14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %15, %17, %0
  %18 = bitcast i8* %2 to i32*
  store i32 0, i32* %18, align 4, !tbaa !9
  store i32 1, i32* %5, align 4, !tbaa !5
  store i32 0, i32* @gmx_parallel, align 4, !tbaa !10
  %19 = load i32* %5, align 4, !tbaa !5
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %.thread, label %21

; <label>:21                                      ; preds = %._crit_edge
  %22 = getelementptr inbounds i8* %2, i64 20
  %23 = bitcast i8* %22 to i32*
  %24 = load i32* %23, align 4, !tbaa !8
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %.thread, label %26

; <label>:26                                      ; preds = %21
  %27 = load i32* %18, align 4, !tbaa !9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %.thread15, label %29

; <label>:29                                      ; preds = %26
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str20, i64 0, i64 0)) #6
  %.pr.pre = load i32* %5, align 4, !tbaa !5
  %30 = icmp sgt i32 %.pr.pre, 1
  br i1 %30, label %.thread, label %.thread15

.thread15:                                        ; preds = %26, %29
  %.pr16.ph = phi i32 [ %19, %26 ], [ %.pr.pre, %29 ]
  %.pr = load i32* %23, align 4, !tbaa !8
  %31 = icmp sgt i32 %.pr, 1
  br i1 %31, label %.thread, label %.thread17

.thread:                                          ; preds = %21, %._crit_edge, %.thread15, %29
  %32 = phi i32 [ %19, %._crit_edge ], [ %.pr16.ph, %.thread15 ], [ %.pr.pre, %29 ], [ %19, %21 ]
  %33 = load i32* %18, align 4, !tbaa !9
  %34 = getelementptr inbounds i8* %2, i64 8
  %35 = bitcast i8* %34 to i32*
  %36 = getelementptr inbounds i8* %2, i64 12
  %37 = bitcast i8* %36 to i32*
  tail call void @gmx_left_right(i32 %32, i32 %33, i32* %35, i32* %37) #6
  %38 = load i32* %35, align 4, !tbaa !13
  %39 = load i32* %37, align 4, !tbaa !12
  %40 = bitcast i32* %send_nodeid.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40)
  %41 = bitcast i32* %receive_nodeid.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41)
  %42 = bitcast [256 x i32]* %nodeids.i to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %42) #5
  store i32 0, i32* %5, align 4, !tbaa !10
  %43 = load i32* %18, align 4, !tbaa !10
  store i32 %43, i32* %send_nodeid.i, align 4, !tbaa !10
  br label %44

; <label>:44                                      ; preds = %44, %.thread
  %min_index.0.i = phi i32 [ 0, %.thread ], [ %.min_index.0.i, %44 ]
  %min_nodeid.0.i = phi i32 [ %43, %.thread ], [ %.min_nodeid.0.i, %44 ]
  call void @gmx_tx(i32 %38, i8* %40, i32 4) #6
  call void @gmx_rx(i32 %39, i8* %41, i32 4) #6
  call void @gmx_tx_wait(i32 %38) #6
  call void @gmx_rx_wait(i32 %39) #6
  %45 = load i32* %send_nodeid.i, align 4, !tbaa !10
  %46 = icmp slt i32 %45, %min_nodeid.0.i
  %47 = load i32* %5, align 4, !tbaa !10
  %.min_index.0.i = select i1 %46, i32 %47, i32 %min_index.0.i
  %.min_nodeid.0.i = select i1 %46, i32 %45, i32 %min_nodeid.0.i
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4, !tbaa !10
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds [256 x i32]* %nodeids.i, i64 0, i64 %49
  store i32 %45, i32* %50, align 4, !tbaa !10
  %51 = load i32* %receive_nodeid.i, align 4, !tbaa !10
  store i32 %51, i32* %send_nodeid.i, align 4, !tbaa !10
  %52 = load i32* %18, align 4, !tbaa !10
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %.preheader.i, label %44

.preheader.i:                                     ; preds = %44, %.preheader.i
  %i.0.i = phi i32 [ %59, %.preheader.i ], [ %.min_index.0.i, %44 ]
  %54 = srem i32 %i.0.i, %48
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [256 x i32]* %nodeids.i, i64 0, i64 %55
  %57 = load i32* %56, align 4, !tbaa !10
  %58 = icmp eq i32 %51, %57
  %59 = add nsw i32 %i.0.i, 1
  br i1 %58, label %60, label %.preheader.i

; <label>:60                                      ; preds = %.preheader.i
  %61 = sub i32 %48, %.min_index.0.i
  %62 = add i32 %61, %i.0.i
  %63 = srem i32 %62, %48
  store i32 %63, i32* %18, align 4, !tbaa !10
  call void @llvm.lifetime.end(i64 1024, i8* %42) #5
  call void @llvm.lifetime.end(i64 4, i8* %40)
  call void @llvm.lifetime.end(i64 4, i8* %41)
  %.pre = load i32* %5, align 4, !tbaa !5
  %64 = icmp sgt i32 %.pre, 1
  br i1 %64, label %70, label %.thread17

.thread17:                                        ; preds = %.thread15, %60
  %65 = phi i32 [ %.pre, %60 ], [ %.pr16.ph, %.thread15 ]
  %66 = getelementptr inbounds i8* %2, i64 20
  %67 = bitcast i8* %66 to i32*
  %68 = load i32* %67, align 4, !tbaa !8
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %175

; <label>:70                                      ; preds = %.thread17, %60
  %71 = phi i32 [ %65, %.thread17 ], [ %.pre, %60 ]
  %72 = bitcast i32* %len.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72)
  %73 = load i32* %18, align 4, !tbaa !9
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

; <label>:75                                      ; preds = %70
  %76 = getelementptr inbounds i8* %2, i64 16
  %77 = bitcast i8* %76 to i32*
  %78 = load i32* %77, align 4, !tbaa !11
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

; <label>:80                                      ; preds = %75, %70
  store i32 0, i32* %argc, align 4, !tbaa !10
  %.pre10 = load i32* %5, align 4, !tbaa !5
  br label %81

; <label>:81                                      ; preds = %80, %75
  %82 = phi i32 [ %.pre10, %80 ], [ %71, %75 ]
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %89, label %84

; <label>:84                                      ; preds = %81
  %85 = getelementptr inbounds i8* %2, i64 20
  %86 = bitcast i8* %85 to i32*
  %87 = load i32* %86, align 4, !tbaa !8
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %90

; <label>:89                                      ; preds = %84, %81
  call void @gmx_sumi(i32 1, i32* %argc, %struct.t_commrec* %3) #6
  br label %90

; <label>:90                                      ; preds = %89, %84
  %91 = load i32* %18, align 4, !tbaa !9
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

; <label>:93                                      ; preds = %90
  %94 = getelementptr inbounds i8* %2, i64 16
  %95 = bitcast i8* %94 to i32*
  %96 = load i32* %95, align 4, !tbaa !11
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

; <label>:98                                      ; preds = %93, %90
  %99 = load i32* %argc, align 4, !tbaa !10
  %100 = add nsw i32 %99, 1
  %101 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 240, i32 %100, i32 8) #6
  %102 = bitcast i8* %101 to i8**
  %.pre.i = load i32* %18, align 4, !tbaa !9
  br label %103

; <label>:103                                     ; preds = %98, %93
  %104 = phi i32 [ 0, %93 ], [ %.pre.i, %98 ]
  %argv_tmp.0.i = phi i8** [ null, %93 ], [ %102, %98 ]
  %105 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %106 = load i32* %argc, align 4, !tbaa !10
  %107 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %105, i8* getelementptr inbounds ([19 x i8]* @.str23, i64 0, i64 0), i32 %104, i32 %106) #6
  %108 = load i32* %argc, align 4, !tbaa !10
  %109 = icmp sgt i32 %108, 0
  %110 = load i32* %18, align 4, !tbaa !9
  %111 = icmp eq i32 %110, 0
  br i1 %109, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %103
  %112 = getelementptr inbounds i8* %2, i64 16
  %113 = bitcast i8* %112 to i32*
  %114 = getelementptr inbounds i8* %2, i64 12
  %115 = bitcast i8* %114 to i32*
  %116 = getelementptr inbounds i8* %2, i64 8
  %117 = bitcast i8* %116 to i32*
  br label %118

; <label>:118                                     ; preds = %160, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %160 ]
  %119 = phi i1 [ %111, %.lr.ph.i ], [ %165, %160 ]
  br i1 %119, label %120, label %149

; <label>:120                                     ; preds = %118
  %121 = load i32* %113, align 4, !tbaa !11
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %149

; <label>:123                                     ; preds = %120
  %124 = load i8*** %argv_ptr, align 8, !tbaa !14
  %125 = getelementptr inbounds i8** %124, i64 %indvars.iv.i
  %126 = load i8** %125, align 8, !tbaa !14
  %127 = call i64 @strlen(i8* %126) #6
  %128 = add i64 %127, 1
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %len.i, align 4, !tbaa !10
  %130 = load i32* %115, align 4, !tbaa !12
  call void @gmx_txs(i32 %130, i8* %72, i32 4) #6
  %131 = load i32* %117, align 4, !tbaa !13
  call void @gmx_rxs(i32 %131, i8* %72, i32 4) #6
  %132 = load i32* %115, align 4, !tbaa !12
  %133 = load i8*** %argv_ptr, align 8, !tbaa !14
  %134 = getelementptr inbounds i8** %133, i64 %indvars.iv.i
  %135 = load i8** %134, align 8, !tbaa !14
  %136 = load i32* %len.i, align 4, !tbaa !10
  call void @gmx_txs(i32 %132, i8* %135, i32 %136) #6
  %137 = load i32* %len.i, align 4, !tbaa !10
  %138 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 248, i32 %137, i32 1) #6
  %139 = load i32* %117, align 4, !tbaa !13
  %140 = load i32* %len.i, align 4, !tbaa !10
  call void @gmx_rxs(i32 %139, i8* %138, i32 %140) #6
  %141 = load i8*** %argv_ptr, align 8, !tbaa !14
  %142 = getelementptr inbounds i8** %141, i64 %indvars.iv.i
  %143 = load i8** %142, align 8, !tbaa !14
  %144 = call i32 @strcmp(i8* %138, i8* %143) #6
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

; <label>:146                                     ; preds = %123
  %147 = trunc i64 %indvars.iv.i to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str25, i64 0, i64 0), i32 %147, i8* %143) #6
  br label %148

; <label>:148                                     ; preds = %146, %123
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 252, i8* %138) #6
  br label %160

; <label>:149                                     ; preds = %120, %118
  %150 = load i32* %117, align 4, !tbaa !13
  call void @gmx_rxs(i32 %150, i8* %72, i32 4) #6
  %151 = load i32* %115, align 4, !tbaa !12
  call void @gmx_txs(i32 %151, i8* %72, i32 4) #6
  %152 = load i32* %len.i, align 4, !tbaa !10
  %153 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), i32 257, i32 %152, i32 1) #6
  %154 = getelementptr inbounds i8** %argv_tmp.0.i, i64 %indvars.iv.i
  store i8* %153, i8** %154, align 8, !tbaa !14
  %155 = load i32* %117, align 4, !tbaa !13
  %156 = load i32* %len.i, align 4, !tbaa !10
  call void @gmx_rxs(i32 %155, i8* %153, i32 %156) #6
  %157 = load i32* %115, align 4, !tbaa !12
  %158 = load i8** %154, align 8, !tbaa !14
  %159 = load i32* %len.i, align 4, !tbaa !10
  call void @gmx_txs(i32 %157, i8* %158, i32 %159) #6
  br label %160

; <label>:160                                     ; preds = %149, %148
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %161 = load i32* %argc, align 4, !tbaa !10
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %indvars.iv.next.i, %162
  %164 = load i32* %18, align 4, !tbaa !9
  %165 = icmp eq i32 %164, 0
  br i1 %163, label %118, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %160, %103
  %166 = phi i32 [ %108, %103 ], [ %161, %160 ]
  %.lcssa.i = phi i1 [ %111, %103 ], [ %165, %160 ]
  br i1 %.lcssa.i, label %167, label %172

; <label>:167                                     ; preds = %._crit_edge.i
  %168 = getelementptr inbounds i8* %2, i64 16
  %169 = bitcast i8* %168 to i32*
  %170 = load i32* %169, align 4, !tbaa !11
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %comm_args.exit, label %172

; <label>:172                                     ; preds = %167, %._crit_edge.i
  %173 = sext i32 %166 to i64
  %174 = getelementptr inbounds i8** %argv_tmp.0.i, i64 %173
  store i8* null, i8** %174, align 8, !tbaa !14
  store i8** %argv_tmp.0.i, i8*** %argv_ptr, align 8, !tbaa !14
  br label %comm_args.exit

comm_args.exit:                                   ; preds = %167, %172
  call void @llvm.lifetime.end(i64 4, i8* %72)
  br label %175

; <label>:175                                     ; preds = %comm_args.exit, %.thread17
  ret %struct.t_commrec* %3
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

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 4}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !7, i64 20}
!9 = !{!6, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !7, i64 12}
!13 = !{!6, !7, i64 8}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !3, i64 0}
!16 = !{!17, !15, i64 16}
!17 = !{!"", !7, i64 0, !15, i64 8, !15, i64 16, !18, i64 24}
!18 = !{!"long", !3, i64 0}
