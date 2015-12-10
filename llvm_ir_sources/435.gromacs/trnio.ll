; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/trnio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_trnheader = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float }

@.str = private unnamed_addr constant [18 x i8] c"box_size    = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [18 x i8] c"x_size      = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c"v_size      = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [18 x i8] c"f_size      = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [18 x i8] c"natoms      = %d\0A\00", align 1
@.str5 = private unnamed_addr constant [18 x i8] c"step        = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"t           = %e\0A\00", align 1
@.str7 = private unnamed_addr constant [18 x i8] c"lambda      = %e\0A\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"Empty file %s\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@do_trnheader.magic = internal global i32 1993, align 4
@.str11 = private unnamed_addr constant [13 x i8] c"GMX_trn_file\00", align 1
@do_trnheader.bFirst = internal unnamed_addr global i1 false
@do_read = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@.str12 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@.str13 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/trnio.c\00", align 1
@do_write = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@.str14 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str15 = private unnamed_addr constant [17 x i8] c"trn version: %s\0A\00", align 1
@.str16 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str17 = private unnamed_addr constant [12 x i8] c"sh->ir_size\00", align 1
@.str18 = private unnamed_addr constant [11 x i8] c"sh->e_size\00", align 1
@.str19 = private unnamed_addr constant [13 x i8] c"sh->box_size\00", align 1
@.str20 = private unnamed_addr constant [13 x i8] c"sh->vir_size\00", align 1
@.str21 = private unnamed_addr constant [14 x i8] c"sh->pres_size\00", align 1
@.str22 = private unnamed_addr constant [13 x i8] c"sh->top_size\00", align 1
@.str23 = private unnamed_addr constant [13 x i8] c"sh->sym_size\00", align 1
@.str24 = private unnamed_addr constant [11 x i8] c"sh->x_size\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"sh->v_size\00", align 1
@.str26 = private unnamed_addr constant [11 x i8] c"sh->f_size\00", align 1
@.str27 = private unnamed_addr constant [11 x i8] c"sh->natoms\00", align 1
@.str28 = private unnamed_addr constant [9 x i8] c"sh->step\00", align 1
@.str29 = private unnamed_addr constant [8 x i8] c"sh->nre\00", align 1
@.str30 = private unnamed_addr constant [6 x i8] c"sh->t\00", align 1
@.str31 = private unnamed_addr constant [11 x i8] c"sh->lambda\00", align 1
@.str32 = private unnamed_addr constant [47 x i8] c"Can not determine precision of trn file, quit!\00", align 1
@.str33 = private unnamed_addr constant [36 x i8] c"Float size %d. Maybe different CPU?\00", align 1
@.str34 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str35 = private unnamed_addr constant [21 x i8] c"inputrec in trn file\00", align 1
@.str36 = private unnamed_addr constant [21 x i8] c"energies in trn file\00", align 1
@.str37 = private unnamed_addr constant [21 x i8] c"topology in trn file\00", align 1
@.str38 = private unnamed_addr constant [25 x i8] c"symbol table in trn file\00", align 1
@.str39 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str40 = private unnamed_addr constant [3 x i8] c"pv\00", align 1
@.str41 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str42 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str43 = private unnamed_addr constant [2 x i8] c"f\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
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
define void @pr_trnheader(%struct.__sFILE* %fp, i32 %indent, i8* %title, %struct.t_trnheader* readonly %sh) #3 {
  %1 = icmp eq %struct.t_trnheader* %sh, null
  br i1 %1, label %38, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @pr_title(%struct.__sFILE* %fp, i32 %indent, i8* %title) #6
  %4 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #6
  %5 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2
  %6 = load i32* %5, align 4, !tbaa !14
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i32 %6) #6
  %8 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #6
  %9 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7
  %10 = load i32* %9, align 4, !tbaa !17
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0), i32 %10) #6
  %12 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #6
  %13 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8
  %14 = load i32* %13, align 4, !tbaa !18
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str2, i64 0, i64 0), i32 %14) #6
  %16 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #6
  %17 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9
  %18 = load i32* %17, align 4, !tbaa !19
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0), i32 %18) #6
  %20 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #6
  %21 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %22 = load i32* %21, align 4, !tbaa !20
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str4, i64 0, i64 0), i32 %22) #6
  %24 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #6
  %25 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 11
  %26 = load i32* %25, align 4, !tbaa !21
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0), i32 %26) #6
  %28 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #6
  %29 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 13
  %30 = load float* %29, align 4, !tbaa !22
  %31 = fpext float %30 to double
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), double %31) #6
  %33 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %3) #6
  %34 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 14
  %35 = load float* %34, align 4, !tbaa !23
  %36 = fpext float %35 to double
  %37 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str7, i64 0, i64 0), double %36) #6
  br label %38

; <label>:38                                      ; preds = %0, %2
  ret void
}

; Function Attrs: optsize
declare i32 @pr_title(%struct.__sFILE*, i32, i8*) #1

; Function Attrs: optsize
declare i32 @pr_indent(%struct.__sFILE*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @read_trnheader(i8* %fn, %struct.t_trnheader* %trn) #3 {
  %bOK = alloca i32, align 4
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #6
  %2 = call fastcc i32 @do_trnheader(i32 %1, i32 1, %struct.t_trnheader* %trn, i32* %bOK) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i8* %fn) #6
  br label %5

; <label>:5                                       ; preds = %0, %4
  call void @gmx_fio_close(i32 %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @open_trn(i8* %fn, i8* %mode) #3 {
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #6
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @do_trnheader(i32 %fp, i32 %bRead, %struct.t_trnheader* %sh, i32* %bOK) #3 {
  %buf = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #5
  store i32 1, i32* %bOK, align 4, !tbaa !24
  tail call void @gmx_fio_select(i32 %fp) #6
  %2 = icmp ne i32 %bRead, 0
  br i1 %2, label %3, label %7

; <label>:3                                       ; preds = %0
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %5 = tail call i32 %4(i8* bitcast (i32* @do_trnheader.magic to i8*), i32 1, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 79) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %301, label %11

; <label>:7                                       ; preds = %0
  %8 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %9 = tail call i32 %8(i8* bitcast (i32* @do_trnheader.magic to i8*), i32 1, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 79) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %301, label %24

; <label>:11                                      ; preds = %3
  %12 = load i32* %bOK, align 4, !tbaa !24
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

; <label>:14                                      ; preds = %11
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %16 = call i32 %15(i8* %1, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 83) #6
  %17 = icmp ne i32 %16, 0
  br label %18

; <label>:18                                      ; preds = %11, %14
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %bOK, align 4, !tbaa !24
  %.b = load i1* @do_trnheader.bFirst, align 1
  br i1 %.b, label %34, label %21

; <label>:21                                      ; preds = %18
  %22 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !25
  %23 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([17 x i8]* @.str15, i64 0, i64 0), i8* %1) #6
  store i1 true, i1* @do_trnheader.bFirst, align 1
  %.pr = load i32* %bOK, align 4, !tbaa !24
  br label %34

; <label>:24                                      ; preds = %7
  %25 = load i32* %bOK, align 4, !tbaa !24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

; <label>:27                                      ; preds = %24
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %29 = tail call i32 %28(i8* getelementptr inbounds ([13 x i8]* @.str11, i64 0, i64 0), i32 1, i32 7, i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 90) #6
  %30 = icmp ne i32 %29, 0
  br label %31

; <label>:31                                      ; preds = %24, %27
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %bOK, align 4, !tbaa !24
  br label %34

; <label>:34                                      ; preds = %18, %21, %31
  %35 = phi i32 [ %20, %18 ], [ %.pr, %21 ], [ %33, %31 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %.thread, label %37

.thread:                                          ; preds = %34
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %.thread1

; <label>:37                                      ; preds = %34
  br i1 %2, label %38, label %42

; <label>:38                                      ; preds = %37
  %39 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %40 = bitcast %struct.t_trnheader* %sh to i8*
  %41 = call i32 %39(i8* %40, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 91) #6
  br label %46

; <label>:42                                      ; preds = %37
  %43 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %44 = bitcast %struct.t_trnheader* %sh to i8*
  %45 = call i32 %43(i8* %44, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 91) #6
  br label %46

; <label>:46                                      ; preds = %38, %42
  %47 = phi i32 [ %41, %38 ], [ %45, %42 ]
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %bOK, align 4, !tbaa !24
  br i1 %48, label %50, label %.thread1

; <label>:50                                      ; preds = %46
  br i1 %2, label %51, label %56

; <label>:51                                      ; preds = %50
  %52 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %53 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 1
  %54 = bitcast i32* %53 to i8*
  %55 = call i32 %52(i8* %54, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 92) #6
  br label %61

; <label>:56                                      ; preds = %50
  %57 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %58 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 1
  %59 = bitcast i32* %58 to i8*
  %60 = call i32 %57(i8* %59, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 92) #6
  br label %61

.thread1:                                         ; preds = %46, %.thread
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %.thread3

; <label>:61                                      ; preds = %51, %56
  %62 = phi i32 [ %55, %51 ], [ %60, %56 ]
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %bOK, align 4, !tbaa !24
  br i1 %63, label %65, label %.thread3

; <label>:65                                      ; preds = %61
  br i1 %2, label %66, label %71

; <label>:66                                      ; preds = %65
  %67 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %68 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2
  %69 = bitcast i32* %68 to i8*
  %70 = call i32 %67(i8* %69, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 93) #6
  br label %76

; <label>:71                                      ; preds = %65
  %72 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %73 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2
  %74 = bitcast i32* %73 to i8*
  %75 = call i32 %72(i8* %74, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 93) #6
  br label %76

.thread3:                                         ; preds = %61, %.thread1
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %.thread5

; <label>:76                                      ; preds = %66, %71
  %77 = phi i32 [ %70, %66 ], [ %75, %71 ]
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %bOK, align 4, !tbaa !24
  br i1 %78, label %80, label %.thread5

; <label>:80                                      ; preds = %76
  br i1 %2, label %81, label %86

; <label>:81                                      ; preds = %80
  %82 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %83 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 3
  %84 = bitcast i32* %83 to i8*
  %85 = call i32 %82(i8* %84, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 94) #6
  br label %91

; <label>:86                                      ; preds = %80
  %87 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %88 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 3
  %89 = bitcast i32* %88 to i8*
  %90 = call i32 %87(i8* %89, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 94) #6
  br label %91

.thread5:                                         ; preds = %76, %.thread3
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %.thread7

; <label>:91                                      ; preds = %81, %86
  %92 = phi i32 [ %85, %81 ], [ %90, %86 ]
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %bOK, align 4, !tbaa !24
  br i1 %93, label %95, label %.thread7

; <label>:95                                      ; preds = %91
  br i1 %2, label %96, label %101

; <label>:96                                      ; preds = %95
  %97 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %98 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 4
  %99 = bitcast i32* %98 to i8*
  %100 = call i32 %97(i8* %99, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 95) #6
  br label %106

; <label>:101                                     ; preds = %95
  %102 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %103 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 4
  %104 = bitcast i32* %103 to i8*
  %105 = call i32 %102(i8* %104, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 95) #6
  br label %106

.thread7:                                         ; preds = %91, %.thread5
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %.thread9

; <label>:106                                     ; preds = %96, %101
  %107 = phi i32 [ %100, %96 ], [ %105, %101 ]
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %bOK, align 4, !tbaa !24
  br i1 %108, label %110, label %.thread9

; <label>:110                                     ; preds = %106
  br i1 %2, label %111, label %116

; <label>:111                                     ; preds = %110
  %112 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %113 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 5
  %114 = bitcast i32* %113 to i8*
  %115 = call i32 %112(i8* %114, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 96) #6
  br label %121

; <label>:116                                     ; preds = %110
  %117 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %118 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 5
  %119 = bitcast i32* %118 to i8*
  %120 = call i32 %117(i8* %119, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 96) #6
  br label %121

.thread9:                                         ; preds = %106, %.thread7
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %.thread11

; <label>:121                                     ; preds = %111, %116
  %122 = phi i32 [ %115, %111 ], [ %120, %116 ]
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %bOK, align 4, !tbaa !24
  br i1 %123, label %125, label %.thread11

; <label>:125                                     ; preds = %121
  br i1 %2, label %126, label %131

; <label>:126                                     ; preds = %125
  %127 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %128 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 6
  %129 = bitcast i32* %128 to i8*
  %130 = call i32 %127(i8* %129, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 97) #6
  br label %136

; <label>:131                                     ; preds = %125
  %132 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %133 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 6
  %134 = bitcast i32* %133 to i8*
  %135 = call i32 %132(i8* %134, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 97) #6
  br label %136

.thread11:                                        ; preds = %121, %.thread9
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %.thread13

; <label>:136                                     ; preds = %126, %131
  %137 = phi i32 [ %130, %126 ], [ %135, %131 ]
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %bOK, align 4, !tbaa !24
  br i1 %138, label %140, label %.thread13

; <label>:140                                     ; preds = %136
  br i1 %2, label %141, label %146

; <label>:141                                     ; preds = %140
  %142 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %143 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7
  %144 = bitcast i32* %143 to i8*
  %145 = call i32 %142(i8* %144, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 98) #6
  br label %151

; <label>:146                                     ; preds = %140
  %147 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %148 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7
  %149 = bitcast i32* %148 to i8*
  %150 = call i32 %147(i8* %149, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 98) #6
  br label %151

.thread13:                                        ; preds = %136, %.thread11
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %.thread15

; <label>:151                                     ; preds = %141, %146
  %152 = phi i32 [ %145, %141 ], [ %150, %146 ]
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %bOK, align 4, !tbaa !24
  br i1 %153, label %155, label %.thread15

; <label>:155                                     ; preds = %151
  br i1 %2, label %156, label %161

; <label>:156                                     ; preds = %155
  %157 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %158 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8
  %159 = bitcast i32* %158 to i8*
  %160 = call i32 %157(i8* %159, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 99) #6
  br label %166

; <label>:161                                     ; preds = %155
  %162 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %163 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8
  %164 = bitcast i32* %163 to i8*
  %165 = call i32 %162(i8* %164, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 99) #6
  br label %166

.thread15:                                        ; preds = %151, %.thread13
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %.thread17

; <label>:166                                     ; preds = %156, %161
  %167 = phi i32 [ %160, %156 ], [ %165, %161 ]
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %bOK, align 4, !tbaa !24
  br i1 %168, label %170, label %.thread17

; <label>:170                                     ; preds = %166
  br i1 %2, label %171, label %176

; <label>:171                                     ; preds = %170
  %172 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %173 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9
  %174 = bitcast i32* %173 to i8*
  %175 = call i32 %172(i8* %174, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 100) #6
  br label %181

; <label>:176                                     ; preds = %170
  %177 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %178 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9
  %179 = bitcast i32* %178 to i8*
  %180 = call i32 %177(i8* %179, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 100) #6
  br label %181

.thread17:                                        ; preds = %166, %.thread15
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %301

; <label>:181                                     ; preds = %171, %176
  %182 = phi i32 [ %175, %171 ], [ %180, %176 ]
  %183 = icmp ne i32 %182, 0
  %184 = zext i1 %183 to i32
  store i32 %184, i32* %bOK, align 4, !tbaa !24
  br i1 %183, label %185, label %301

; <label>:185                                     ; preds = %181
  %186 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2
  %187 = load i32* %186, align 4, !tbaa !14
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189

; <label>:189                                     ; preds = %185
  %190 = sdiv i32 %187, 9
  br label %218

; <label>:191                                     ; preds = %185
  %192 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7
  %193 = load i32* %192, align 4, !tbaa !17
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %200, label %195

; <label>:195                                     ; preds = %191
  %196 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %197 = load i32* %196, align 4, !tbaa !20
  %198 = mul nsw i32 %197, 3
  %199 = sdiv i32 %193, %198
  br label %218

; <label>:200                                     ; preds = %191
  %201 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8
  %202 = load i32* %201, align 4, !tbaa !18
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %209, label %204

; <label>:204                                     ; preds = %200
  %205 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %206 = load i32* %205, align 4, !tbaa !20
  %207 = mul nsw i32 %206, 3
  %208 = sdiv i32 %202, %207
  br label %218

; <label>:209                                     ; preds = %200
  %210 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9
  %211 = load i32* %210, align 4, !tbaa !19
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %.thread.i, label %213

; <label>:213                                     ; preds = %209
  %214 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %215 = load i32* %214, align 4, !tbaa !20
  %216 = mul nsw i32 %215, 3
  %217 = sdiv i32 %211, %216
  br label %218

.thread.i:                                        ; preds = %209
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str32, i64 0, i64 0)) #6
  br label %219

; <label>:218                                     ; preds = %213, %204, %195, %189
  %nflsize.0.i = phi i32 [ %190, %189 ], [ %199, %195 ], [ %208, %204 ], [ %217, %213 ]
  switch i32 %nflsize.0.i, label %219 [
    i32 4, label %nFloatSize.exit
    i32 8, label %nFloatSize.exit
  ]

; <label>:219                                     ; preds = %218, %.thread.i
  %nflsize.01.i = phi i32 [ 0, %.thread.i ], [ %nflsize.0.i, %218 ]
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str33, i64 0, i64 0), i32 %nflsize.01.i) #6
  br label %nFloatSize.exit

nFloatSize.exit:                                  ; preds = %218, %218, %219
  %nflsize.02.i = phi i32 [ %nflsize.0.i, %218 ], [ %nflsize.0.i, %218 ], [ %nflsize.01.i, %219 ]
  %220 = icmp eq i32 %nflsize.02.i, 8
  %221 = zext i1 %220 to i32
  call void @gmx_fio_setprecision(i32 %fp, i32 %221) #6
  %222 = load i32* %bOK, align 4, !tbaa !24
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %.thread18, label %224

.thread18:                                        ; preds = %nFloatSize.exit
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %.thread20

; <label>:224                                     ; preds = %nFloatSize.exit
  br i1 %2, label %225, label %230

; <label>:225                                     ; preds = %224
  %226 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %227 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %228 = bitcast i32* %227 to i8*
  %229 = call i32 %226(i8* %228, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 105) #6
  br label %235

; <label>:230                                     ; preds = %224
  %231 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %232 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %233 = bitcast i32* %232 to i8*
  %234 = call i32 %231(i8* %233, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 105) #6
  br label %235

; <label>:235                                     ; preds = %225, %230
  %236 = phi i32 [ %229, %225 ], [ %234, %230 ]
  %237 = icmp ne i32 %236, 0
  %238 = zext i1 %237 to i32
  store i32 %238, i32* %bOK, align 4, !tbaa !24
  br i1 %237, label %239, label %.thread20

; <label>:239                                     ; preds = %235
  br i1 %2, label %240, label %245

; <label>:240                                     ; preds = %239
  %241 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %242 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 11
  %243 = bitcast i32* %242 to i8*
  %244 = call i32 %241(i8* %243, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 106) #6
  br label %250

; <label>:245                                     ; preds = %239
  %246 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %247 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 11
  %248 = bitcast i32* %247 to i8*
  %249 = call i32 %246(i8* %248, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 106) #6
  br label %250

.thread20:                                        ; preds = %235, %.thread18
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %.thread22

; <label>:250                                     ; preds = %240, %245
  %251 = phi i32 [ %244, %240 ], [ %249, %245 ]
  %252 = icmp ne i32 %251, 0
  %253 = zext i1 %252 to i32
  store i32 %253, i32* %bOK, align 4, !tbaa !24
  br i1 %252, label %254, label %.thread22

; <label>:254                                     ; preds = %250
  br i1 %2, label %255, label %260

; <label>:255                                     ; preds = %254
  %256 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %257 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 12
  %258 = bitcast i32* %257 to i8*
  %259 = call i32 %256(i8* %258, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 107) #6
  br label %265

; <label>:260                                     ; preds = %254
  %261 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %262 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 12
  %263 = bitcast i32* %262 to i8*
  %264 = call i32 %261(i8* %263, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 107) #6
  br label %265

.thread22:                                        ; preds = %250, %.thread20
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %.thread24

; <label>:265                                     ; preds = %255, %260
  %266 = phi i32 [ %259, %255 ], [ %264, %260 ]
  %267 = icmp ne i32 %266, 0
  %268 = zext i1 %267 to i32
  store i32 %268, i32* %bOK, align 4, !tbaa !24
  br i1 %267, label %269, label %.thread24

; <label>:269                                     ; preds = %265
  br i1 %2, label %270, label %275

; <label>:270                                     ; preds = %269
  %271 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %272 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 13
  %273 = bitcast float* %272 to i8*
  %274 = call i32 %271(i8* %273, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 108) #6
  br label %280

; <label>:275                                     ; preds = %269
  %276 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %277 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 13
  %278 = bitcast float* %277 to i8*
  %279 = call i32 %276(i8* %278, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 108) #6
  br label %280

.thread24:                                        ; preds = %265, %.thread22
  store i32 0, i32* %bOK, align 4, !tbaa !24
  br label %298

; <label>:280                                     ; preds = %270, %275
  %281 = phi i32 [ %274, %270 ], [ %279, %275 ]
  %282 = icmp ne i32 %281, 0
  %283 = zext i1 %282 to i32
  store i32 %283, i32* %bOK, align 4, !tbaa !24
  br i1 %282, label %284, label %298

; <label>:284                                     ; preds = %280
  br i1 %2, label %285, label %290

; <label>:285                                     ; preds = %284
  %286 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %287 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 14
  %288 = bitcast float* %287 to i8*
  %289 = call i32 %286(i8* %288, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 109) #6
  br label %295

; <label>:290                                     ; preds = %284
  %291 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %292 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 14
  %293 = bitcast float* %292 to i8*
  %294 = call i32 %291(i8* %293, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 109) #6
  br label %295

; <label>:295                                     ; preds = %290, %285
  %296 = phi i32 [ %289, %285 ], [ %294, %290 ]
  %297 = icmp ne i32 %296, 0
  br label %298

; <label>:298                                     ; preds = %.thread24, %295, %280
  %299 = phi i1 [ false, %280 ], [ %297, %295 ], [ false, %.thread24 ]
  %300 = zext i1 %299 to i32
  store i32 %300, i32* %bOK, align 4, !tbaa !24
  br label %301

; <label>:301                                     ; preds = %.thread17, %181, %7, %3, %298
  %.0 = phi i32 [ %300, %298 ], [ 0, %3 ], [ 0, %7 ], [ %184, %181 ], [ 0, %.thread17 ]
  call void @llvm.lifetime.end(i64 256, i8* %1) #5
  ret i32 %.0
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @close_trn(i32 %fp) #3 {
  tail call void @gmx_fio_close(i32 %fp) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @fread_trnheader(i32 %fp, %struct.t_trnheader* %trn, i32* %bOK) #3 {
  %1 = tail call fastcc i32 @do_trnheader(i32 %fp, i32 1, %struct.t_trnheader* %trn, i32* %bOK) #7
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_trn(i8* %fn, i32 %step, float %t, float %lambda, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #3 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store i32 %step, i32* %1, align 4, !tbaa !24
  store float %t, float* %2, align 4, !tbaa !26
  store float %lambda, float* %3, align 4, !tbaa !26
  store i32 %natoms, i32* %4, align 4, !tbaa !24
  %5 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #6
  %6 = call fastcc i32 @do_trn(i32 %5, i32 0, i32* %1, float* %2, float* %3, [3 x float]* %box, i32* %4, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #7
  tail call void @gmx_fio_close(i32 %5) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @do_trn(i32 %fp, i32 %bRead, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #3 {
  %bOK = alloca i32, align 4
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 161, i32 1, i32 60) #6
  %2 = bitcast i8* %1 to %struct.t_trnheader*
  %3 = icmp ne i32 %bRead, 0
  br i1 %3, label %49, label %4

; <label>:4                                       ; preds = %0
  %5 = icmp ne [3 x float]* %box, null
  %6 = select i1 %5, i32 36, i32 0
  %7 = getelementptr inbounds i8* %1, i64 8
  %8 = bitcast i8* %7 to i32*
  store i32 %6, i32* %8, align 4, !tbaa !14
  %9 = icmp eq [3 x float]* %x, null
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %4
  %11 = load i32* %natoms, align 4, !tbaa !24
  %12 = mul i32 %11, 12
  br label %13

; <label>:13                                      ; preds = %4, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %4 ]
  %15 = getelementptr inbounds i8* %1, i64 28
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 4, !tbaa !17
  %17 = icmp eq [3 x float]* %v, null
  br i1 %17, label %21, label %18

; <label>:18                                      ; preds = %13
  %19 = load i32* %natoms, align 4, !tbaa !24
  %20 = mul i32 %19, 12
  br label %21

; <label>:21                                      ; preds = %13, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %13 ]
  %23 = getelementptr inbounds i8* %1, i64 32
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 4, !tbaa !18
  %25 = icmp eq [3 x float]* %f, null
  br i1 %25, label %29, label %26

; <label>:26                                      ; preds = %21
  %27 = load i32* %natoms, align 4, !tbaa !24
  %28 = mul i32 %27, 12
  br label %29

; <label>:29                                      ; preds = %21, %26
  %30 = phi i32 [ %28, %26 ], [ 0, %21 ]
  %31 = getelementptr inbounds i8* %1, i64 36
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 4, !tbaa !19
  %33 = load i32* %natoms, align 4, !tbaa !24
  %34 = getelementptr inbounds i8* %1, i64 40
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 4, !tbaa !20
  %36 = load i32* %step, align 4, !tbaa !24
  %37 = getelementptr inbounds i8* %1, i64 44
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 4, !tbaa !21
  %39 = getelementptr inbounds i8* %1, i64 48
  %40 = bitcast i8* %39 to i32*
  store i32 0, i32* %40, align 4, !tbaa !27
  %41 = bitcast float* %t to i32*
  %42 = load i32* %41, align 4, !tbaa !26
  %43 = getelementptr inbounds i8* %1, i64 52
  %44 = bitcast i8* %43 to i32*
  store i32 %42, i32* %44, align 4, !tbaa !22
  %45 = bitcast float* %lambda to i32*
  %46 = load i32* %45, align 4, !tbaa !26
  %47 = getelementptr inbounds i8* %1, i64 56
  %48 = bitcast i8* %47 to i32*
  store i32 %46, i32* %48, align 4, !tbaa !23
  br label %49

; <label>:49                                      ; preds = %29, %0
  %50 = call fastcc i32 @do_trnheader(i32 %fp, i32 %bRead, %struct.t_trnheader* %2, i32* %bOK) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %93, label %52

; <label>:52                                      ; preds = %49
  br i1 %3, label %53, label %90

; <label>:53                                      ; preds = %52
  %54 = getelementptr inbounds i8* %1, i64 40
  %55 = bitcast i8* %54 to i32*
  %56 = load i32* %55, align 4, !tbaa !20
  store i32 %56, i32* %natoms, align 4, !tbaa !24
  %57 = getelementptr inbounds i8* %1, i64 44
  %58 = bitcast i8* %57 to i32*
  %59 = load i32* %58, align 4, !tbaa !21
  store i32 %59, i32* %step, align 4, !tbaa !24
  %60 = getelementptr inbounds i8* %1, i64 52
  %61 = bitcast i8* %60 to i32*
  %62 = load i32* %61, align 4, !tbaa !22
  %63 = bitcast float* %t to i32*
  store i32 %62, i32* %63, align 4, !tbaa !26
  %64 = getelementptr inbounds i8* %1, i64 56
  %65 = bitcast i8* %64 to i32*
  %66 = load i32* %65, align 4, !tbaa !23
  %67 = bitcast float* %lambda to i32*
  store i32 %66, i32* %67, align 4, !tbaa !26
  %68 = bitcast i8* %1 to i32*
  %69 = load i32* %68, align 4, !tbaa !28
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

; <label>:71                                      ; preds = %53
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str35, i64 0, i64 0)) #6
  br label %72

; <label>:72                                      ; preds = %53, %71
  %73 = getelementptr inbounds i8* %1, i64 4
  %74 = bitcast i8* %73 to i32*
  %75 = load i32* %74, align 4, !tbaa !29
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

; <label>:77                                      ; preds = %72
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str36, i64 0, i64 0)) #6
  br label %78

; <label>:78                                      ; preds = %72, %77
  %79 = getelementptr inbounds i8* %1, i64 20
  %80 = bitcast i8* %79 to i32*
  %81 = load i32* %80, align 4, !tbaa !30
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

; <label>:83                                      ; preds = %78
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str37, i64 0, i64 0)) #6
  br label %84

; <label>:84                                      ; preds = %78, %83
  %85 = getelementptr inbounds i8* %1, i64 24
  %86 = bitcast i8* %85 to i32*
  %87 = load i32* %86, align 4, !tbaa !31
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

; <label>:89                                      ; preds = %84
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #6
  br label %90

; <label>:90                                      ; preds = %84, %89, %52
  %91 = call fastcc i32 @do_htrn(i32 %bRead, %struct.t_trnheader* %2, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #7
  store i32 %91, i32* %bOK, align 4, !tbaa !24
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 191, i8* %1) #6
  %92 = load i32* %bOK, align 4, !tbaa !24
  br label %93

; <label>:93                                      ; preds = %49, %90
  %.0 = phi i32 [ %92, %90 ], [ 0, %49 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @read_trn(i8* %fn, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #3 {
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #6
  %2 = tail call fastcc i32 @do_trn(i32 %1, i32 1, i32* %step, float* %t, float* %lambda, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #7
  tail call void @gmx_fio_close(i32 %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @fwrite_trn(i32 %fp, i32 %step, float %t, float %lambda, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #3 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store i32 %step, i32* %1, align 4, !tbaa !24
  store float %t, float* %2, align 4, !tbaa !26
  store float %lambda, float* %3, align 4, !tbaa !26
  store i32 %natoms, i32* %4, align 4, !tbaa !24
  %5 = call fastcc i32 @do_trn(i32 %fp, i32 0, i32* %1, float* %2, float* %3, [3 x float]* %box, i32* %4, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @fread_trn(i32 %fp, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #3 {
  %1 = tail call fastcc i32 @do_trn(i32 %fp, i32 1, i32* %step, float* %t, float* %lambda, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #7
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @fread_htrn(i32 %fp, %struct.t_trnheader* nocapture readonly %trn, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #3 {
  %1 = tail call fastcc i32 @do_htrn(i32 1, %struct.t_trnheader* %trn, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #7
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @do_htrn(i32 %bRead, %struct.t_trnheader* nocapture readonly %sh, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #3 {
  %pv = alloca [3 x [3 x float]], align 16
  %1 = bitcast [3 x [3 x float]]* %pv to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #5
  %2 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2
  %3 = load i32* %2, align 4, !tbaa !14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

; <label>:5                                       ; preds = %0
  %6 = icmp eq i32 %bRead, 0
  br i1 %6, label %11, label %7

; <label>:7                                       ; preds = %5
  %8 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %9 = bitcast [3 x float]* %box to i8*
  %10 = tail call i32 %8(i8* %9, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 145) #6
  br label %15

; <label>:11                                      ; preds = %5
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %13 = bitcast [3 x float]* %box to i8*
  %14 = tail call i32 %12(i8* %13, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 145) #6
  br label %15

; <label>:15                                      ; preds = %11, %7
  %16 = phi i32 [ %10, %7 ], [ %14, %11 ]
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  br label %19

; <label>:19                                      ; preds = %0, %15
  %bOK.0 = phi i32 [ %18, %15 ], [ 1, %0 ]
  %20 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 3
  %21 = load i32* %20, align 4, !tbaa !32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

; <label>:23                                      ; preds = %19
  %24 = icmp eq i32 %bOK.0, 0
  br i1 %24, label %36, label %25

; <label>:25                                      ; preds = %23
  %26 = icmp eq i32 %bRead, 0
  br i1 %26, label %30, label %27

; <label>:27                                      ; preds = %25
  %28 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %29 = call i32 %28(i8* %1, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 146) #6
  br label %33

; <label>:30                                      ; preds = %25
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %32 = call i32 %31(i8* %1, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 146) #6
  br label %33

; <label>:33                                      ; preds = %30, %27
  %34 = phi i32 [ %29, %27 ], [ %32, %30 ]
  %35 = icmp ne i32 %34, 0
  br label %36

; <label>:36                                      ; preds = %23, %33
  %37 = phi i1 [ false, %23 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  br label %39

; <label>:39                                      ; preds = %19, %36
  %bOK.1 = phi i32 [ %38, %36 ], [ %bOK.0, %19 ]
  %40 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 4
  %41 = load i32* %40, align 4, !tbaa !33
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %59, label %43

; <label>:43                                      ; preds = %39
  %44 = icmp eq i32 %bOK.1, 0
  br i1 %44, label %56, label %45

; <label>:45                                      ; preds = %43
  %46 = icmp eq i32 %bRead, 0
  br i1 %46, label %50, label %47

; <label>:47                                      ; preds = %45
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %49 = call i32 %48(i8* %1, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 147) #6
  br label %53

; <label>:50                                      ; preds = %45
  %51 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %52 = call i32 %51(i8* %1, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 147) #6
  br label %53

; <label>:53                                      ; preds = %50, %47
  %54 = phi i32 [ %49, %47 ], [ %52, %50 ]
  %55 = icmp ne i32 %54, 0
  br label %56

; <label>:56                                      ; preds = %43, %53
  %57 = phi i1 [ false, %43 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  br label %59

; <label>:59                                      ; preds = %39, %56
  %bOK.2 = phi i32 [ %58, %56 ], [ %bOK.1, %39 ]
  %60 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7
  %61 = load i32* %60, align 4, !tbaa !17
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %83, label %63

; <label>:63                                      ; preds = %59
  %64 = icmp eq i32 %bOK.2, 0
  br i1 %64, label %80, label %65

; <label>:65                                      ; preds = %63
  %66 = icmp eq i32 %bRead, 0
  %67 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %68 = load i32* %67, align 4
  br i1 %66, label %73, label %69

; <label>:69                                      ; preds = %65
  %70 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %71 = bitcast [3 x float]* %x to i8*
  %72 = call i32 %70(i8* %71, i32 %68, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 148) #6
  br label %77

; <label>:73                                      ; preds = %65
  %74 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %75 = bitcast [3 x float]* %x to i8*
  %76 = call i32 %74(i8* %75, i32 %68, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 148) #6
  br label %77

; <label>:77                                      ; preds = %73, %69
  %78 = phi i32 [ %72, %69 ], [ %76, %73 ]
  %79 = icmp ne i32 %78, 0
  br label %80

; <label>:80                                      ; preds = %63, %77
  %81 = phi i1 [ false, %63 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  br label %83

; <label>:83                                      ; preds = %59, %80
  %bOK.3 = phi i32 [ %82, %80 ], [ %bOK.2, %59 ]
  %84 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8
  %85 = load i32* %84, align 4, !tbaa !18
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %107, label %87

; <label>:87                                      ; preds = %83
  %88 = icmp eq i32 %bOK.3, 0
  br i1 %88, label %104, label %89

; <label>:89                                      ; preds = %87
  %90 = icmp eq i32 %bRead, 0
  %91 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %92 = load i32* %91, align 4
  br i1 %90, label %97, label %93

; <label>:93                                      ; preds = %89
  %94 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %95 = bitcast [3 x float]* %v to i8*
  %96 = call i32 %94(i8* %95, i32 %92, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 149) #6
  br label %101

; <label>:97                                      ; preds = %89
  %98 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %99 = bitcast [3 x float]* %v to i8*
  %100 = call i32 %98(i8* %99, i32 %92, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 149) #6
  br label %101

; <label>:101                                     ; preds = %97, %93
  %102 = phi i32 [ %96, %93 ], [ %100, %97 ]
  %103 = icmp ne i32 %102, 0
  br label %104

; <label>:104                                     ; preds = %87, %101
  %105 = phi i1 [ false, %87 ], [ %103, %101 ]
  %106 = zext i1 %105 to i32
  br label %107

; <label>:107                                     ; preds = %83, %104
  %bOK.4 = phi i32 [ %106, %104 ], [ %bOK.3, %83 ]
  %108 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9
  %109 = load i32* %108, align 4, !tbaa !19
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %131, label %111

; <label>:111                                     ; preds = %107
  %112 = icmp eq i32 %bOK.4, 0
  br i1 %112, label %128, label %113

; <label>:113                                     ; preds = %111
  %114 = icmp eq i32 %bRead, 0
  %115 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %116 = load i32* %115, align 4
  br i1 %114, label %121, label %117

; <label>:117                                     ; preds = %113
  %118 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !25
  %119 = bitcast [3 x float]* %f to i8*
  %120 = call i32 %118(i8* %119, i32 %116, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 150) #6
  br label %125

; <label>:121                                     ; preds = %113
  %122 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !25
  %123 = bitcast [3 x float]* %f to i8*
  %124 = call i32 %122(i8* %123, i32 %116, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 150) #6
  br label %125

; <label>:125                                     ; preds = %121, %117
  %126 = phi i32 [ %120, %117 ], [ %124, %121 ]
  %127 = icmp ne i32 %126, 0
  br label %128

; <label>:128                                     ; preds = %111, %125
  %129 = phi i1 [ false, %111 ], [ %127, %125 ]
  %130 = zext i1 %129 to i32
  br label %131

; <label>:131                                     ; preds = %107, %128
  %bOK.5 = phi i32 [ %130, %128 ], [ %bOK.4, %107 ]
  call void @llvm.lifetime.end(i64 36, i8* %1) #5
  ret i32 %bOK.5
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #1

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @gmx_fio_select(i32) #1

; Function Attrs: optsize
declare void @gmx_fio_setprecision(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !7, i64 8}
!15 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !16, i64 52, !16, i64 56}
!16 = !{!"float", !5, i64 0}
!17 = !{!15, !7, i64 28}
!18 = !{!15, !7, i64 32}
!19 = !{!15, !7, i64 36}
!20 = !{!15, !7, i64 40}
!21 = !{!15, !7, i64 44}
!22 = !{!15, !16, i64 52}
!23 = !{!15, !16, i64 56}
!24 = !{!7, !7, i64 0}
!25 = !{!4, !4, i64 0}
!26 = !{!16, !16, i64 0}
!27 = !{!15, !7, i64 48}
!28 = !{!15, !7, i64 0}
!29 = !{!15, !7, i64 4}
!30 = !{!15, !7, i64 20}
!31 = !{!15, !7, i64 24}
!32 = !{!15, !7, i64 12}
!33 = !{!15, !7, i64 16}
