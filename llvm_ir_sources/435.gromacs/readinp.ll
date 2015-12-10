; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/readinp.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_inpfile = type { i32, i32, i8*, i8* }

@debug = external global %struct.__sFILE*
@.str = private unnamed_addr constant [21 x i8] c"Reading MDP file %s\0A\00", align 1
@inp_count = internal unnamed_addr global i32 1, align 4
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"No = on line %d in file %s, ignored\0A\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"Empty left hand side on line %d in file %s, ignored\0A\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"Empty right hand side on line %d in file %s, ignored\0A\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"inp\00", align 1
@.str6 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/readinp.c\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"Done reading MDP file, there were %d entries in there\0A\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"%-24s = %s\0A\00", align 1
@.str10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@warn_buf = external global [1024 x i8]
@.str11 = private unnamed_addr constant [40 x i8] c"Unknown left-hand %s in parameter file\0A\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str15 = private unnamed_addr constant [48 x i8] c"%snvalid enum '%s' for variable %s, using '%s'\0A\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"ERROR: i\00", align 1
@.str17 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str18 = private unnamed_addr constant [22 x i8] c"Next time use one of:\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"*inp\00", align 1
@.str22 = private unnamed_addr constant [13 x i8] c"Inp %d = %s\0A\00", align 1

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
define %struct.t_inpfile* @read_inpfile(i8* %fn, i32* nocapture %ninp) #1 {
  %buf = alloca [4096 x i8], align 16
  %buf21 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  %lbuf = alloca [4096 x i8], align 16
  %lbuf20 = getelementptr inbounds [4096 x i8]* %lbuf, i64 0, i64 0
  %rbuf = alloca [4096 x i8], align 16
  %1 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #2
  %2 = getelementptr inbounds [4096 x i8]* %lbuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %2) #2
  %3 = getelementptr inbounds [4096 x i8]* %rbuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %3) #2
  %4 = load %struct.__sFILE** @debug, align 8, !tbaa !2
  %5 = icmp eq %struct.__sFILE* %4, null
  br i1 %5, label %8, label %6

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i8* %fn) #7
  br label %8

; <label>:8                                       ; preds = %0, %6
  store i32 1, i32* @inp_count, align 4, !tbaa !6
  %9 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #7
  %10 = call i8* @fgets2(i8* %1, i32 4095, %struct.__sFILE* %9) #7
  %11 = icmp eq i8* %10, null
  br i1 %11, label %.thread, label %.lr.ph31

.lr.ph31:                                         ; preds = %8, %.outer
  %12 = phi i32 [ %78, %.outer ], [ 1, %8 ]
  %inp.0.ph36 = phi %struct.t_inpfile* [ %69, %.outer ], [ null, %8 ]
  %nin.0.ph35 = phi i32 [ %66, %.outer ], [ 0, %8 ]
  br label %13

; <label>:13                                      ; preds = %.lr.ph31, %.backedge
  %14 = phi i32 [ %12, %.lr.ph31 ], [ %47, %.backedge ]
  %15 = call i8* @strchr(i8* %1, i32 59) #7
  %16 = icmp eq i8* %15, null
  br i1 %16, label %18, label %17

; <label>:17                                      ; preds = %13
  store i8 0, i8* %15, align 1, !tbaa !8
  br label %18

; <label>:18                                      ; preds = %13, %17
  call void @trim(i8* %1) #7
  br label %19

; <label>:19                                      ; preds = %27, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %27 ], [ 0, %18 ]
  %20 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %indvars.iv
  %21 = load i8* %20, align 1, !tbaa !8
  switch i8 %21, label %27 [
    i8 0, label %28
    i8 61, label %.preheader4
  ]

.preheader4:                                      ; preds = %19
  %22 = trunc i64 %indvars.iv to i32
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %.preheader4
  %24 = add i64 %indvars.iv, 4294967295
  %25 = and i64 %24, 4294967295
  %26 = add nuw nsw i64 %25, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %lbuf20, i8* %buf21, i64 %26, i32 16, i1 false)
  br label %35

; <label>:27                                      ; preds = %19
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %19

; <label>:28                                      ; preds = %19
  %29 = trunc i64 %indvars.iv to i32
  %30 = icmp sgt i32 %29, 0
  %31 = load %struct.__sFILE** @debug, align 8
  %32 = icmp ne %struct.__sFILE* %31, null
  %or.cond = and i1 %30, %32
  br i1 %or.cond, label %33, label %.backedge

; <label>:33                                      ; preds = %28
  %34 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %31, i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0), i32 %14, i8* %fn) #7
  br label %.backedge

; <label>:35                                      ; preds = %.lr.ph, %.preheader4
  %.lcssa = phi i64 [ %26, %.lr.ph ], [ 0, %.preheader4 ]
  %36 = getelementptr inbounds [4096 x i8]* %lbuf, i64 0, i64 %.lcssa
  store i8 0, i8* %36, align 1, !tbaa !8
  call void @trim(i8* %2) #7
  %37 = load i8* %2, align 16, !tbaa !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %.preheader

.preheader:                                       ; preds = %35
  %i.18 = add nsw i32 %22, 1
  %39 = sext i32 %i.18 to i64
  %40 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %39
  %41 = load i8* %40, align 1, !tbaa !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %._crit_edge12, label %.lr.ph11

; <label>:43                                      ; preds = %35
  %44 = load %struct.__sFILE** @debug, align 8, !tbaa !2
  %45 = icmp eq %struct.__sFILE* %44, null
  br i1 %45, label %.backedge, label %49

.backedge:                                        ; preds = %43, %60, %49, %63, %28, %33
  %46 = call i8* @fgets2(i8* %1, i32 4095, %struct.__sFILE* %9) #7
  %47 = add nuw nsw i32 %14, 1
  %48 = icmp eq i8* %46, null
  br i1 %48, label %.thread, label %13

; <label>:49                                      ; preds = %43
  %50 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %44, i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 %14, i8* %fn) #7
  br label %.backedge

.lr.ph11:                                         ; preds = %.preheader, %.lr.ph11
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %.lr.ph11 ], [ 0, %.preheader ]
  %51 = phi i8* [ %57, %.lr.ph11 ], [ %3, %.preheader ]
  %52 = phi i8 [ %55, %.lr.ph11 ], [ %41, %.preheader ]
  %i.110 = phi i32 [ %i.1, %.lr.ph11 ], [ %i.18, %.preheader ]
  store i8 %52, i8* %51, align 1, !tbaa !8
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %i.1 = add nsw i32 %i.110, 1
  %53 = sext i32 %i.1 to i64
  %54 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %53
  %55 = load i8* %54, align 1, !tbaa !8
  %56 = icmp eq i8 %55, 0
  %57 = getelementptr inbounds [4096 x i8]* %rbuf, i64 0, i64 %indvars.iv.next26
  br i1 %56, label %._crit_edge12, label %.lr.ph11

._crit_edge12:                                    ; preds = %.lr.ph11, %.preheader
  %.lcssa6 = phi i8* [ %3, %.preheader ], [ %57, %.lr.ph11 ]
  store i8 0, i8* %.lcssa6, align 1, !tbaa !8
  call void @trim(i8* %3) #7
  %58 = load i8* %3, align 16, !tbaa !8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %.outer

; <label>:60                                      ; preds = %._crit_edge12
  %61 = load %struct.__sFILE** @debug, align 8, !tbaa !2
  %62 = icmp eq %struct.__sFILE* %61, null
  br i1 %62, label %.backedge, label %63

; <label>:63                                      ; preds = %60
  %64 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %61, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 %14, i8* %fn) #7
  br label %.backedge

.outer:                                           ; preds = %._crit_edge12
  %65 = bitcast %struct.t_inpfile* %inp.0.ph36 to i8*
  %66 = add nsw i32 %nin.0.ph35, 1
  %67 = mul i32 %66, 24
  %68 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str6, i64 0, i64 0), i32 96, i8* %65, i32 %67) #7
  %69 = bitcast i8* %68 to %struct.t_inpfile*
  %70 = sext i32 %nin.0.ph35 to i64
  %71 = getelementptr inbounds %struct.t_inpfile* %69, i64 %70, i32 0
  store i32 0, i32* %71, align 4, !tbaa !9
  %72 = getelementptr inbounds %struct.t_inpfile* %69, i64 %70, i32 1
  store i32 0, i32* %72, align 4, !tbaa !11
  %73 = call i8* @strdup(i8* %2) #7
  %74 = getelementptr inbounds %struct.t_inpfile* %69, i64 %70, i32 2
  store i8* %73, i8** %74, align 8, !tbaa !12
  %75 = call i8* @strdup(i8* %3) #7
  %76 = getelementptr inbounds %struct.t_inpfile* %69, i64 %70, i32 3
  store i8* %75, i8** %76, align 8, !tbaa !13
  %77 = call i8* @fgets2(i8* %1, i32 4095, %struct.__sFILE* %9) #7
  %78 = add nuw nsw i32 %14, 1
  %79 = icmp eq i8* %77, null
  br i1 %79, label %.thread, label %.lr.ph31

.thread:                                          ; preds = %.backedge, %8, %.outer
  %inp.0.ph.lcssa = phi %struct.t_inpfile* [ null, %8 ], [ %69, %.outer ], [ %inp.0.ph36, %.backedge ]
  %nin.0.ph.lcssa = phi i32 [ 0, %8 ], [ %66, %.outer ], [ %nin.0.ph35, %.backedge ]
  call void @ffclose(%struct.__sFILE* %9) #7
  %80 = load %struct.__sFILE** @debug, align 8, !tbaa !2
  %81 = icmp eq %struct.__sFILE* %80, null
  br i1 %81, label %84, label %82

; <label>:82                                      ; preds = %.thread
  %83 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %80, i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i32 %nin.0.ph.lcssa) #7
  br label %84

; <label>:84                                      ; preds = %.thread, %82
  store i32 %nin.0.ph.lcssa, i32* %ninp, align 4, !tbaa !6
  call void @llvm.lifetime.end(i64 4096, i8* %3) #2
  call void @llvm.lifetime.end(i64 4096, i8* %2) #2
  call void @llvm.lifetime.end(i64 4096, i8* %1) #2
  ret %struct.t_inpfile* %inp.0.ph.lcssa
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #4

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct.__sFILE*) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: optsize
declare void @trim(i8*) #4

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #4

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #3

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @write_inpfile(i8* %fn, i32 %ninp, %struct.t_inpfile* %inp) #1 {
  %1 = icmp sgt i32 %ninp, 0
  br i1 %1, label %.lr.ph6.i, label %sort_inp.exit

.lr.ph6.i:                                        ; preds = %0
  %2 = add i32 %ninp, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph6.i
  %indvars.iv7.i = phi i64 [ 0, %.lr.ph6.i ], [ %indvars.iv.next8.i, %3 ]
  %mm.04.i = phi i32 [ -1, %.lr.ph6.i ], [ %mm.0..i, %3 ]
  %4 = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv7.i, i32 0
  %5 = load i32* %4, align 4, !tbaa !9
  %6 = icmp sgt i32 %mm.04.i, %5
  %mm.0..i = select i1 %6, i32 %mm.04.i, i32 %5
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %lftr.wideiv4 = trunc i64 %indvars.iv7.i to i32
  %exitcond5 = icmp eq i32 %lftr.wideiv4, %2
  br i1 %exitcond5, label %.lr.ph.i, label %3

.lr.ph.i:                                         ; preds = %3, %12
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %12 ], [ 0, %3 ]
  %mm.12.i = phi i32 [ %mm.2.i, %12 ], [ %mm.0..i, %3 ]
  %7 = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv.i, i32 0
  %8 = load i32* %7, align 4, !tbaa !9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %.lr.ph.i
  %11 = add nsw i32 %mm.12.i, 1
  store i32 %mm.12.i, i32* %7, align 4, !tbaa !9
  br label %12

; <label>:12                                      ; preds = %10, %.lr.ph.i
  %mm.2.i = phi i32 [ %11, %10 ], [ %mm.12.i, %.lr.ph.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv2 = trunc i64 %indvars.iv.i to i32
  %exitcond3 = icmp eq i32 %lftr.wideiv2, %2
  br i1 %exitcond3, label %sort_inp.exit, label %.lr.ph.i

sort_inp.exit:                                    ; preds = %12, %0
  %13 = bitcast %struct.t_inpfile* %inp to i8*
  %14 = sext i32 %ninp to i64
  tail call void @qsort(i8* %13, i64 %14, i64 24, i32 (i8*, i8*)* @inp_comp) #7
  %15 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #7
  tail call void @nice_header(%struct.__sFILE* %15, i8* %fn) #7
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sort_inp.exit
  %16 = add i32 %ninp, -1
  br label %17

; <label>:17                                      ; preds = %30, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %18 = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv, i32 1
  %19 = load i32* %18, align 4, !tbaa !11
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv, i32 2
  %22 = load i8** %21, align 8, !tbaa !12
  br i1 %20, label %28, label %23

; <label>:23                                      ; preds = %17
  %24 = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv, i32 3
  %25 = load i8** %24, align 8, !tbaa !13
  %26 = icmp eq i8* %25, null
  %. = select i1 %26, i8* getelementptr inbounds ([1 x i8]* @.str10, i64 0, i64 0), i8* %25
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0), i8* %22, i8* %.) #7
  br label %30

; <label>:28                                      ; preds = %17
  %29 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i32 0, i64 1024, i8* getelementptr inbounds ([40 x i8]* @.str11, i64 0, i64 0), i8* %22) #7
  tail call void @warning(i8* null) #7
  br label %30

; <label>:30                                      ; preds = %23, %28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %16
  br i1 %exitcond, label %._crit_edge, label %17

._crit_edge:                                      ; preds = %30, %sort_inp.exit
  tail call void @ffclose(%struct.__sFILE* %15) #7
  ret void
}

; Function Attrs: optsize
declare void @nice_header(%struct.__sFILE*, i8*) #4

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #4

; Function Attrs: optsize
declare void @warning(i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_eint(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i32 %def) #1 {
  %buf = alloca [32 x i8], align 16
  %1 = tail call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #8
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %12

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0
  %5 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %4, i32 0, i64 32, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i32 %def) #7
  %6 = call i8* @strdup(i8* %4) #7
  %7 = load i32* %ninp, align 4, !tbaa !6
  %8 = add nsw i32 %7, -1
  %9 = sext i32 %8 to i64
  %10 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %11 = getelementptr inbounds %struct.t_inpfile* %10, i64 %9, i32 3
  store i8* %6, i8** %11, align 8, !tbaa !13
  br label %18

; <label>:12                                      ; preds = %0
  %13 = sext i32 %1 to i64
  %14 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %15 = getelementptr inbounds %struct.t_inpfile* %14, i64 %13, i32 3
  %16 = load i8** %15, align 8, !tbaa !13
  %17 = tail call i32 @atoi(i8* %16) #7
  br label %18

; <label>:18                                      ; preds = %12, %3
  %.0 = phi i32 [ %def, %3 ], [ %17, %12 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @get_einp(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name) #1 {
  %1 = icmp eq %struct.t_inpfile** %inp, null
  br i1 %1, label %46, label %.preheader

.preheader:                                       ; preds = %0
  %2 = load i32* %ninp, align 4, !tbaa !6
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %.preheader, %9
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ 0, %.preheader ]
  %4 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %5 = getelementptr inbounds %struct.t_inpfile* %4, i64 %indvars.iv, i32 2
  %6 = load i8** %5, align 8, !tbaa !12
  %7 = tail call i32 @strcasecmp_min(i8* %name, i8* %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %._crit_edge, label %9

; <label>:9                                       ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32* %ninp, align 4, !tbaa !6
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %indvars.iv.next, %11
  br i1 %12, label %.lr.ph, label %._crit_edge2

._crit_edge:                                      ; preds = %.lr.ph
  %13 = trunc i64 %indvars.iv to i32
  %.pre = load i32* %ninp, align 4, !tbaa !6
  br label %15

._crit_edge2:                                     ; preds = %9
  %14 = trunc i64 %indvars.iv.next to i32
  br label %15

; <label>:15                                      ; preds = %._crit_edge2, %._crit_edge, %.preheader
  %16 = phi i32 [ %.pre, %._crit_edge ], [ %10, %._crit_edge2 ], [ %2, %.preheader ]
  %i.0.lcssa = phi i32 [ %13, %._crit_edge ], [ %14, %._crit_edge2 ], [ 0, %.preheader ]
  %17 = icmp eq i32 %i.0.lcssa, %16
  br i1 %17, label %18, label %._crit_edge5

._crit_edge5:                                     ; preds = %15
  %.pre6 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %.pre7 = sext i32 %i.0.lcssa to i64
  br label %30

; <label>:18                                      ; preds = %15
  %19 = add nsw i32 %16, 1
  store i32 %19, i32* %ninp, align 4, !tbaa !6
  %20 = bitcast %struct.t_inpfile** %inp to i8**
  %21 = load i8** %20, align 8, !tbaa !2
  %22 = mul i32 %19, 24
  %23 = tail call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str6, i64 0, i64 0), i32 165, i8* %21, i32 %22) #7
  store i8* %23, i8** %20, align 8, !tbaa !2
  %24 = tail call i8* @strdup(i8* %name) #7
  %25 = sext i32 %16 to i64
  %26 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %27 = getelementptr inbounds %struct.t_inpfile* %26, i64 %25, i32 2
  store i8* %24, i8** %27, align 8, !tbaa !12
  %28 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %29 = getelementptr inbounds %struct.t_inpfile* %28, i64 %25, i32 1
  store i32 1, i32* %29, align 4, !tbaa !11
  br label %30

; <label>:30                                      ; preds = %._crit_edge5, %18
  %.pre-phi = phi i64 [ %.pre7, %._crit_edge5 ], [ %25, %18 ]
  %31 = phi %struct.t_inpfile* [ %.pre6, %._crit_edge5 ], [ %28, %18 ]
  %32 = load i32* @inp_count, align 4, !tbaa !6
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @inp_count, align 4, !tbaa !6
  %34 = getelementptr inbounds %struct.t_inpfile* %31, i64 %.pre-phi, i32 0
  store i32 %32, i32* %34, align 4, !tbaa !9
  %35 = getelementptr inbounds %struct.t_inpfile* %31, i64 %.pre-phi, i32 1
  store i32 1, i32* %35, align 4, !tbaa !11
  %36 = load %struct.__sFILE** @debug, align 8, !tbaa !2
  %37 = icmp eq %struct.__sFILE* %36, null
  br i1 %37, label %42, label %38

; <label>:38                                      ; preds = %30
  %39 = getelementptr inbounds %struct.t_inpfile* %31, i64 %.pre-phi, i32 2
  %40 = load i8** %39, align 8, !tbaa !12
  %41 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %36, i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i32 %32, i8* %40) #7
  br label %42

; <label>:42                                      ; preds = %30, %38
  %43 = load i32* %ninp, align 4, !tbaa !6
  %44 = add nsw i32 %43, -1
  %45 = icmp eq i32 %i.0.lcssa, %44
  %.i.0 = select i1 %45, i32 -1, i32 %i.0.lcssa
  br label %46

; <label>:46                                      ; preds = %42, %0
  %.0 = phi i32 [ -1, %0 ], [ %.i.0, %42 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define float @get_ereal(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, float %def) #1 {
  %buf = alloca [32 x i8], align 16
  %1 = tail call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #8
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0
  %5 = fpext float %def to double
  %6 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %4, i32 0, i64 32, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), double %5) #7
  %7 = call i8* @strdup(i8* %4) #7
  %8 = load i32* %ninp, align 4, !tbaa !6
  %9 = add nsw i32 %8, -1
  %10 = sext i32 %9 to i64
  %11 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %12 = getelementptr inbounds %struct.t_inpfile* %11, i64 %10, i32 3
  store i8* %7, i8** %12, align 8, !tbaa !13
  br label %20

; <label>:13                                      ; preds = %0
  %14 = sext i32 %1 to i64
  %15 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %16 = getelementptr inbounds %struct.t_inpfile* %15, i64 %14, i32 3
  %17 = load i8** %16, align 8, !tbaa !13
  %18 = tail call double @atof(i8* %17) #7
  %19 = fptrunc double %18 to float
  br label %20

; <label>:20                                      ; preds = %13, %3
  %.0 = phi float [ %def, %3 ], [ %19, %13 ]
  ret float %.0
}

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i8* @get_estr(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i8* %def) #1 {
  %buf = alloca [32 x i8], align 16
  %1 = tail call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #8
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %20

; <label>:3                                       ; preds = %0
  %4 = icmp eq i8* %def, null
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %3
  %6 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0
  %7 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %6, i32 0, i64 32, i8* getelementptr inbounds ([3 x i8]* @.str14, i64 0, i64 0), i8* %def) #7
  %8 = call i8* @strdup(i8* %6) #7
  %9 = load i32* %ninp, align 4, !tbaa !6
  %10 = add nsw i32 %9, -1
  %11 = sext i32 %10 to i64
  %12 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %13 = getelementptr inbounds %struct.t_inpfile* %12, i64 %11, i32 3
  store i8* %8, i8** %13, align 8, !tbaa !13
  br label %25

; <label>:14                                      ; preds = %3
  %15 = load i32* %ninp, align 4, !tbaa !6
  %16 = add nsw i32 %15, -1
  %17 = sext i32 %16 to i64
  %18 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %19 = getelementptr inbounds %struct.t_inpfile* %18, i64 %17, i32 3
  store i8* null, i8** %19, align 8, !tbaa !13
  br label %25

; <label>:20                                      ; preds = %0
  %21 = sext i32 %1 to i64
  %22 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %23 = getelementptr inbounds %struct.t_inpfile* %22, i64 %21, i32 3
  %24 = load i8** %23, align 8, !tbaa !13
  br label %25

; <label>:25                                      ; preds = %5, %14, %20
  %.0 = phi i8* [ %24, %20 ], [ null, %14 ], [ %def, %5 ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_eeenum(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i8** nocapture readonly %defs, i32* nocapture %nerror, i32 %bPrintError) #1 {
  %1 = tail call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #8
  %2 = icmp eq i32 %1, -1
  %3 = load i8** %defs, align 8, !tbaa !2
  br i1 %2, label %5, label %.preheader

.preheader:                                       ; preds = %0
  %4 = icmp eq i8* %3, null
  %.pre13 = sext i32 %1 to i64
  br i1 %4, label %.thread, label %.lr.ph6

; <label>:5                                       ; preds = %0
  %6 = tail call i8* @strdup(i8* %3) #7
  %7 = load i32* %ninp, align 4, !tbaa !6
  %8 = add nsw i32 %7, -1
  %9 = sext i32 %8 to i64
  %10 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %11 = getelementptr inbounds %struct.t_inpfile* %10, i64 %9, i32 3
  store i8* %6, i8** %11, align 8, !tbaa !13
  br label %52

.lr.ph6:                                          ; preds = %.preheader, %19
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %19 ], [ 0, %.preheader ]
  %12 = phi i8* [ %21, %19 ], [ %3, %.preheader ]
  %13 = phi i8** [ %20, %19 ], [ %defs, %.preheader ]
  %14 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %15 = getelementptr inbounds %struct.t_inpfile* %14, i64 %.pre13, i32 3
  %16 = load i8** %15, align 8, !tbaa !13
  %17 = tail call i32 @strcasecmp_min(i8* %12, i8* %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

; <label>:19                                      ; preds = %.lr.ph6
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %20 = getelementptr inbounds i8** %defs, i64 %indvars.iv.next12
  %21 = load i8** %20, align 8, !tbaa !2
  %22 = icmp eq i8* %21, null
  br i1 %22, label %.thread, label %.lr.ph6

; <label>:23                                      ; preds = %.lr.ph6
  %24 = trunc i64 %indvars.iv11 to i32
  %.pr = load i8** %13, align 8, !tbaa !2
  %25 = icmp eq i8* %.pr, null
  br i1 %25, label %.thread, label %52

.thread:                                          ; preds = %19, %.preheader, %23
  %26 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %27 = icmp ne i32 %bPrintError, 0
  %28 = select i1 %27, i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str17, i64 0, i64 0)
  %29 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %30 = getelementptr inbounds %struct.t_inpfile* %29, i64 %.pre13, i32 3
  %31 = load i8** %30, align 8, !tbaa !13
  %32 = load i8** %defs, align 8, !tbaa !2
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %26, i8* getelementptr inbounds ([48 x i8]* @.str15, i64 0, i64 0), i8* %28, i8* %31, i8* %name, i8* %32) #7
  %34 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str18, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %34)
  %36 = load i32* %nerror, align 4, !tbaa !6
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %nerror, align 4, !tbaa !6
  %38 = load i8** %defs, align 8, !tbaa !2
  %39 = icmp eq i8* %38, null
  %40 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  br i1 %39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.thread ]
  %41 = phi %struct.__sFILE* [ %47, %.lr.ph ], [ %40, %.thread ]
  %42 = phi i8* [ %45, %.lr.ph ], [ %38, %.thread ]
  %43 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i8* %42) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %44 = getelementptr inbounds i8** %defs, i64 %indvars.iv.next
  %45 = load i8** %44, align 8, !tbaa !2
  %46 = icmp eq i8* %45, null
  %47 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  br i1 %46, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.thread
  %.lcssa = phi %struct.__sFILE* [ %40, %.thread ], [ %47, %.lr.ph ]
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa)
  %48 = load i8** %defs, align 8, !tbaa !2
  %49 = tail call i8* @strdup(i8* %48) #7
  %50 = load %struct.t_inpfile** %inp, align 8, !tbaa !2
  %51 = getelementptr inbounds %struct.t_inpfile* %50, i64 %.pre13, i32 3
  store i8* %49, i8** %51, align 8, !tbaa !13
  br label %52

; <label>:52                                      ; preds = %23, %._crit_edge, %5
  %.0 = phi i32 [ 0, %5 ], [ 0, %._crit_edge ], [ %24, %23 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @strcasecmp_min(i8*, i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_eenum(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i8** nocapture readonly %defs) #1 {
  %dum = alloca i32, align 4
  store i32 0, i32* %dum, align 4, !tbaa !6
  %1 = call i32 @get_eeenum(i32* %ninp, %struct.t_inpfile** %inp, i8* %name, i8** %defs, i32* %dum, i32 0) #8
  ret i32 %1
}

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #4

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @inp_comp(i8* nocapture readonly %a, i8* nocapture readonly %b) #6 {
  %1 = bitcast i8* %a to i32*
  %2 = load i32* %1, align 4, !tbaa !9
  %3 = bitcast i8* %b to i32*
  %4 = load i32* %3, align 4, !tbaa !9
  %5 = sub nsw i32 %2, %4
  ret i32 %5
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!10, !7, i64 0}
!10 = !{!"", !7, i64 0, !7, i64 4, !3, i64 8, !3, i64 16}
!11 = !{!10, !7, i64 4}
!12 = !{!10, !3, i64 8}
!13 = !{!10, !3, i64 16}
