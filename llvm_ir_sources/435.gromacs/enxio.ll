; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/enxio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_enxframe = type { float, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32*, %struct.t_energy*, float*, float*, float** }
%struct.t_energy = type { float, double, double, float }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }

@.str = private unnamed_addr constant [9 x i8] c"fr->ener\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/enxio.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"fr->rav\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"fr->rt\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"fr->block[b]\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"fr->block\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"fr->b_alloc\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"fr->nr\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str9 = private unnamed_addr constant [43 x i8] c"Opened %s as single precision energy file\0A\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"nm[i]\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"nm\00", align 1
@.str12 = private unnamed_addr constant [43 x i8] c"Opened %s as double precision energy file\0A\00", align 1
@.str13 = private unnamed_addr constant [17 x i8] c"File %s is empty\00", align 1
@.str14 = private unnamed_addr constant [52 x i8] c"Energy file %s not recognized, maybe different CPU?\00", align 1
@framenr = internal unnamed_addr global i32 0, align 4
@.str15 = private unnamed_addr constant [46 x i8] c"\0DLast frame read %d                          \00", align 1
@.str16 = private unnamed_addr constant [47 x i8] c"\0AWARNING: Incomplete frame: nr %6d time %8.3f\0A\00", align 1
@.str17 = private unnamed_addr constant [41 x i8] c"\0DReading frame %6d time %8.3f           \00", align 1
@.str18 = private unnamed_addr constant [60 x i8] c"\0AWARNING: there may be something wrong with energy file %s\0A\00", align 1
@.str19 = private unnamed_addr constant [99 x i8] c"Found: step=%d, nre=%d, ndisre=%d, nblock=%d, time=%g.\0ATrying to skip frame expect a crash though\0A\00", align 1
@do_read = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@.str20 = private unnamed_addr constant [14 x i8] c"fr->ener[i].e\00", align 1
@do_write = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@.str21 = private unnamed_addr constant [5 x i8] c"tmp1\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"tmp2\00", align 1
@.str23 = private unnamed_addr constant [18 x i8] c"fr->ener[i].e2sum\00", align 1
@.str24 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@.str25 = private unnamed_addr constant [17 x i8] c"fr->block[block]\00", align 1
@.str26 = private unnamed_addr constant [51 x i8] c"\0ALast frame read %d                               \00", align 1
@.str27 = private unnamed_addr constant [52 x i8] c"\0AWARNING: Incomplete frame: nr %6d time %8.3f     \0A\00", align 1
@.str28 = private unnamed_addr constant [25 x i8] c"could not write energies\00", align 1
@.str29 = private unnamed_addr constant [3 x i8] c"NM\00", align 1
@.str30 = private unnamed_addr constant [6 x i8] c"NM[i]\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str32 = private unnamed_addr constant [6 x i8] c"(*nm)\00", align 1
@.str33 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str34 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str35 = private unnamed_addr constant [6 x i8] c"fr->t\00", align 1
@.str36 = private unnamed_addr constant [9 x i8] c"fr->step\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"fr->nre\00", align 1
@.str38 = private unnamed_addr constant [11 x i8] c"fr->ndisre\00", align 1
@.str39 = private unnamed_addr constant [11 x i8] c"fr->nblock\00", align 1
@.str40 = private unnamed_addr constant [14 x i8] c"fr->nr[block]\00", align 1
@.str41 = private unnamed_addr constant [11 x i8] c"fr->e_size\00", align 1
@.str42 = private unnamed_addr constant [11 x i8] c"fr->d_size\00", align 1
@.str43 = private unnamed_addr constant [4 x i8] c"dum\00", align 1
@.str44 = private unnamed_addr constant [2 x i8] c"r\00", align 1

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
define void @free_enxframe(%struct.t_enxframe* nocapture readonly %fr) #3 {
  %1 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 9
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12
  %6 = bitcast %struct.t_energy** %5 to i8**
  %7 = load i8** %6, align 8, !tbaa !17
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 45, i8* %7) #6
  br label %8

; <label>:8                                       ; preds = %0, %4
  %9 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 10
  %10 = load i32* %9, align 4, !tbaa !18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %.preheader, label %12

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13
  %14 = bitcast float** %13 to i8**
  %15 = load i8** %14, align 8, !tbaa !19
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 47, i8* %15) #6
  %16 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14
  %17 = bitcast float** %16 to i8**
  %18 = load i8** %17, align 8, !tbaa !20
  tail call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 48, i8* %18) #6
  br label %.preheader

.preheader:                                       ; preds = %8, %12
  %19 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4
  %20 = load i32* %19, align 4, !tbaa !21
  %21 = icmp sgt i32 %20, 0
  %22 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15
  br i1 %21, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %23 = load float*** %22, align 8, !tbaa !22
  %24 = getelementptr inbounds float** %23, i64 %indvars.iv
  %25 = bitcast float** %24 to i8**
  %26 = load i8** %25, align 8, !tbaa !23
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 51, i8* %26) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %27 = load i32* %19, align 4, !tbaa !21
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %indvars.iv.next, %28
  br i1 %29, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %30 = bitcast float*** %22 to i8**
  %31 = load i8** %30, align 8, !tbaa !22
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 52, i8* %31) #6
  %32 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 11
  %33 = bitcast i32** %32 to i8**
  %34 = load i8** %33, align 8, !tbaa !24
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 53, i8* %34) #6
  %35 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  %36 = bitcast i32** %35 to i8**
  %37 = load i8** %36, align 8, !tbaa !25
  tail call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 54, i8* %37) #6
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @do_enxnms(i32 %fp, i32* %nre, i8*** nocapture %nms) #3 {
  %line.i = alloca [256 x i8], align 16
  %1 = tail call i32 @gmx_fio_getread(i32 %fp) #6
  %2 = tail call i32 @gmx_fio_getftp(i32 %fp) #6
  %3 = icmp eq i32 %2, 9
  br i1 %3, label %4, label %30

; <label>:4                                       ; preds = %0
  tail call void @gmx_fio_select(i32 %fp) #6
  %5 = tail call i32 @gmx_fio_getread(i32 %fp) #6
  %6 = tail call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #6
  %7 = load i8*** %nms, align 8, !tbaa !23
  %8 = tail call i32 @xdr_int(%struct.XDR* %6, i32* %nre) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %4
  store i32 0, i32* %nre, align 4, !tbaa !26
  br label %edr_nms.exit

; <label>:11                                      ; preds = %4
  %12 = icmp eq i8** %7, null
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %11
  %14 = load i32* %nre, align 4, !tbaa !26
  %15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 100, i32 %14, i32 8) #6
  %16 = bitcast i8* %15 to i8**
  br label %17

; <label>:17                                      ; preds = %13, %11
  %NM.0.i = phi i8** [ %16, %13 ], [ %7, %11 ]
  %18 = load i32* %nre, align 4, !tbaa !26
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %17
  %20 = icmp eq i32 %5, 0
  br label %21

; <label>:21                                      ; preds = %._crit_edge2.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %._crit_edge2.i ]
  %.pre.i = getelementptr inbounds i8** %NM.0.i, i64 %indvars.iv.i
  br i1 %20, label %._crit_edge2.i, label %22

; <label>:22                                      ; preds = %21
  %23 = load i8** %.pre.i, align 8, !tbaa !23
  %24 = icmp eq i8* %23, null
  br i1 %24, label %._crit_edge2.i, label %25

; <label>:25                                      ; preds = %22
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 104, i8* %23) #6
  store i8* null, i8** %.pre.i, align 8, !tbaa !23
  br label %._crit_edge2.i

._crit_edge2.i:                                   ; preds = %25, %22, %21
  %26 = tail call i32 @xdr_string(%struct.XDR* %6, i8** %.pre.i, i32 4096) #6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %27 = load i32* %nre, align 4, !tbaa !26
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %indvars.iv.next.i, %28
  br i1 %29, label %21, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge2.i, %17
  store i8** %NM.0.i, i8*** %nms, align 8, !tbaa !23
  br label %edr_nms.exit

; <label>:30                                      ; preds = %0
  %31 = icmp eq i32 %1, 0
  %32 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %fp) #6
  br i1 %31, label %52, label %33

; <label>:33                                      ; preds = %30
  %34 = getelementptr inbounds [256 x i8]* %line.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %34) #5
  %35 = call i8* @fgets2(i8* %34, i32 255, %struct.__sFILE* %32) #6
  %36 = call i32 (i8*, i8*, ...)* @sscanf(i8* %34, i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0), i32* %nre) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %33
  store i32 0, i32* %nre, align 4, !tbaa !26
  br label %rd_ener_nms.exit

; <label>:39                                      ; preds = %33
  %40 = load i32* %nre, align 4, !tbaa !26
  %41 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 76, i32 %40, i32 8) #6
  %42 = bitcast i8*** %nms to i8**
  store i8* %41, i8** %42, align 8, !tbaa !23
  %43 = load i32* %nre, align 4, !tbaa !26
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %.lr.ph.i3, label %rd_ener_nms.exit

.lr.ph.i3:                                        ; preds = %39, %.lr.ph.i3
  %indvars.iv.i1 = phi i64 [ %indvars.iv.next.i2, %.lr.ph.i3 ], [ 0, %39 ]
  %45 = call i8* @fgets2(i8* %34, i32 255, %struct.__sFILE* %32) #6
  call void @trim(i8* %34) #6
  %46 = call i8* @strdup(i8* %34) #6
  %47 = load i8*** %nms, align 8, !tbaa !23
  %48 = getelementptr inbounds i8** %47, i64 %indvars.iv.i1
  store i8* %46, i8** %48, align 8, !tbaa !23
  %indvars.iv.next.i2 = add nuw nsw i64 %indvars.iv.i1, 1
  %49 = load i32* %nre, align 4, !tbaa !26
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %indvars.iv.next.i2, %50
  br i1 %51, label %.lr.ph.i3, label %rd_ener_nms.exit

rd_ener_nms.exit:                                 ; preds = %.lr.ph.i3, %38, %39
  call void @llvm.lifetime.end(i64 256, i8* %34) #5
  br label %edr_nms.exit

; <label>:52                                      ; preds = %30
  %53 = load i32* %nre, align 4, !tbaa !26
  %54 = load i8*** %nms, align 8, !tbaa !23
  %55 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i32 %53) #6
  %56 = icmp sgt i32 %53, 0
  br i1 %56, label %.lr.ph.i4, label %edr_nms.exit

.lr.ph.i4:                                        ; preds = %52
  %57 = add i32 %53, -1
  br label %58

; <label>:58                                      ; preds = %58, %.lr.ph.i4
  %indvars.iv.i5 = phi i64 [ 0, %.lr.ph.i4 ], [ %indvars.iv.next.i6, %58 ]
  %59 = getelementptr inbounds i8** %54, i64 %indvars.iv.i5
  %60 = load i8** %59, align 8, !tbaa !23
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0), i8* %60) #6
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i5, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i5 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %57
  br i1 %exitcond, label %edr_nms.exit, label %58

edr_nms.exit:                                     ; preds = %58, %52, %._crit_edge.i, %10, %rd_ener_nms.exit
  ret void
}

; Function Attrs: optsize
declare i32 @gmx_fio_getread(i32) #1

; Function Attrs: optsize
declare i32 @gmx_fio_getftp(i32) #1

; Function Attrs: optsize
declare void @gmx_fio_select(i32) #1

; Function Attrs: optsize
declare %struct.__sFILE* @gmx_fio_getfp(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @close_enx(i32 %fp) #3 {
  tail call void @gmx_fio_close(i32 %fp) #6
  ret void
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @open_enx(i8* %fn, i8* %mode) #3 {
  %dum.i = alloca i8, align 1
  %nre = alloca i32, align 4
  %nm = alloca i8**, align 8
  %bDum = alloca i32, align 4
  store i8** null, i8*** %nm, align 8, !tbaa !23
  store i32 1, i32* %bDum, align 4, !tbaa !26
  %1 = load i8* %mode, align 1, !tbaa !13
  %2 = icmp eq i8 %1, 114
  %3 = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #6
  br i1 %2, label %4, label %102

; <label>:4                                       ; preds = %0
  tail call void @gmx_fio_select(i32 %3) #6
  tail call void @gmx_fio_setprecision(i32 %3, i32 0) #6
  call void @do_enxnms(i32 %3, i32* %nre, i8*** %nm) #7
  %5 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 206, i32 1, i32 96) #6
  %6 = bitcast i8* %5 to %struct.t_enxframe*
  %7 = call fastcc i32 @do_eheader(i32 %3, %struct.t_enxframe* %6, i32* %bDum) #7
  %8 = getelementptr inbounds i8* %5, i64 32
  %9 = bitcast i8* %8 to i32*
  %10 = load i32* %9, align 4, !tbaa !27
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

; <label>:12                                      ; preds = %4
  %13 = getelementptr inbounds i8* %5, i64 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32* %14, align 4, !tbaa !28
  %16 = load i32* %nre, align 4, !tbaa !26
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

; <label>:18                                      ; preds = %12
  %19 = shl nsw i32 %15, 2
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = sext i32 %10 to i64
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %38, label %24

; <label>:24                                      ; preds = %4, %18, %12
  %25 = getelementptr inbounds i8* %5, i64 36
  %26 = bitcast i8* %25 to i32*
  %27 = load i32* %26, align 4, !tbaa !29
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %52, label %29

; <label>:29                                      ; preds = %24
  %30 = getelementptr inbounds i8* %5, i64 12
  %31 = bitcast i8* %30 to i32*
  %32 = load i32* %31, align 4, !tbaa !30
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 3
  %35 = or i64 %34, 4
  %36 = sext i32 %27 to i64
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

; <label>:38                                      ; preds = %29, %18
  %39 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !23
  %40 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %39, i8* getelementptr inbounds ([43 x i8]* @.str9, i64 0, i64 0), i8* %fn) #6
  %41 = load i32* %nre, align 4, !tbaa !26
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %.lr.ph4, label %._crit_edge8

._crit_edge8:                                     ; preds = %38
  %.phi.trans.insert = bitcast i8*** %nm to i8**
  %.pre = load i8** %.phi.trans.insert, align 8, !tbaa !23
  br label %._crit_edge5

.lr.ph4:                                          ; preds = %38
  %43 = load i8*** %nm, align 8, !tbaa !23
  %44 = bitcast i8** %43 to i8*
  br label %45

; <label>:45                                      ; preds = %.lr.ph4, %45
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %45 ]
  %46 = getelementptr inbounds i8** %43, i64 %indvars.iv6
  %47 = load i8** %46, align 8, !tbaa !23
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 216, i8* %47) #6
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %48 = load i32* %nre, align 4, !tbaa !26
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %indvars.iv.next7, %49
  br i1 %50, label %45, label %._crit_edge5

._crit_edge5:                                     ; preds = %45, %._crit_edge8
  %51 = phi i8* [ %.pre, %._crit_edge8 ], [ %44, %45 ]
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 217, i8* %51) #6
  br label %101

; <label>:52                                      ; preds = %24, %29
  call void @gmx_fio_rewind(i32 %3) #6
  call void @gmx_fio_select(i32 %3) #6
  call void @gmx_fio_setprecision(i32 %3, i32 1) #6
  call void @do_enxnms(i32 %3, i32* %nre, i8*** %nm) #7
  %53 = call fastcc i32 @do_eheader(i32 %3, %struct.t_enxframe* %6, i32* %bDum) #7
  %54 = load i32* %9, align 4, !tbaa !27
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56

; <label>:56                                      ; preds = %52
  %57 = getelementptr inbounds i8* %5, i64 8
  %58 = bitcast i8* %57 to i32*
  %59 = load i32* %58, align 4, !tbaa !28
  %60 = load i32* %nre, align 4, !tbaa !26
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

; <label>:62                                      ; preds = %56
  %63 = shl nsw i32 %59, 2
  %64 = sext i32 %63 to i64
  %65 = shl nsw i64 %64, 3
  %66 = sext i32 %54 to i64
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %80, label %68

; <label>:68                                      ; preds = %52, %62, %56
  %69 = load i32* %26, align 4, !tbaa !29
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %83, label %71

; <label>:71                                      ; preds = %68
  %72 = getelementptr inbounds i8* %5, i64 12
  %73 = bitcast i8* %72 to i32*
  %74 = load i32* %73, align 4, !tbaa !30
  %75 = sext i32 %74 to i64
  %76 = shl nsw i64 %75, 4
  %77 = or i64 %76, 4
  %78 = sext i32 %69 to i64
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

; <label>:80                                      ; preds = %71, %62
  %81 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !23
  %82 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %81, i8* getelementptr inbounds ([43 x i8]* @.str12, i64 0, i64 0), i8* %fn) #6
  br label %.preheader

; <label>:83                                      ; preds = %68, %71
  call void @llvm.lifetime.start(i64 1, i8* %dum.i)
  %84 = call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #6
  %85 = call i64 @fread(i8* %dum.i, i64 1, i64 1, %struct.__sFILE* %84) #6
  %86 = call i32 @feof(%struct.__sFILE* %84) #6
  call void @ffclose(%struct.__sFILE* %84) #6
  call void @llvm.lifetime.end(i64 1, i8* %dum.i)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

; <label>:88                                      ; preds = %83
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str13, i64 0, i64 0), i8* %fn) #6
  br label %.preheader

; <label>:89                                      ; preds = %83
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i8* %fn) #6
  br label %.preheader

.preheader:                                       ; preds = %88, %89, %80
  %90 = load i32* %nre, align 4, !tbaa !26
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %.lr.ph, label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader
  %.phi.trans.insert9 = bitcast i8*** %nm to i8**
  %.pre10 = load i8** %.phi.trans.insert9, align 8, !tbaa !23
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %92 = load i8*** %nm, align 8, !tbaa !23
  %93 = bitcast i8** %92 to i8*
  br label %94

; <label>:94                                      ; preds = %.lr.ph, %94
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %94 ]
  %95 = getelementptr inbounds i8** %92, i64 %indvars.iv
  %96 = load i8** %95, align 8, !tbaa !23
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 238, i8* %96) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %97 = load i32* %nre, align 4, !tbaa !26
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %indvars.iv.next, %98
  br i1 %99, label %94, label %._crit_edge

._crit_edge:                                      ; preds = %94, %.preheader._crit_edge
  %100 = phi i8* [ %.pre10, %.preheader._crit_edge ], [ %93, %94 ]
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 239, i8* %100) #6
  br label %101

; <label>:101                                     ; preds = %._crit_edge, %._crit_edge5
  call void @free_enxframe(%struct.t_enxframe* %6) #7
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 242, i8* %5) #6
  call void @gmx_fio_rewind(i32 %3) #6
  br label %102

; <label>:102                                     ; preds = %0, %101
  store i32 0, i32* @framenr, align 4, !tbaa !26
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #1

; Function Attrs: optsize
declare void @gmx_fio_setprecision(i32, i32) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @do_eheader(i32 %fp, %struct.t_enxframe* %fr, i32* nocapture %bOK) #3 {
  %dum = alloca i32, align 4
  store i32 0, i32* %dum, align 4, !tbaa !26
  %1 = tail call i32 @gmx_fio_getread(i32 %fp) #6
  store i32 1, i32* %bOK, align 4, !tbaa !26
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %8

; <label>:3                                       ; preds = %0
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %5 = bitcast %struct.t_enxframe* %fr to i8*
  %6 = tail call i32 %4(i8* %5, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 119) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %164, label %13

; <label>:8                                       ; preds = %0
  %9 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %10 = bitcast %struct.t_enxframe* %fr to i8*
  %11 = tail call i32 %9(i8* %10, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 119) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %164, label %19

; <label>:13                                      ; preds = %3
  %14 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1
  %16 = bitcast i32* %15 to i8*
  %17 = tail call i32 %14(i8* %16, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 120) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %.thread2, label %.thread

.thread2:                                         ; preds = %13
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %.thread

; <label>:19                                      ; preds = %8
  %20 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %21 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1
  %22 = bitcast i32* %21 to i8*
  %23 = tail call i32 %20(i8* %22, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 120) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %.thread1

; <label>:25                                      ; preds = %19
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %.thread1

.thread:                                          ; preds = %13, %.thread2
  %26 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %27 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2
  %28 = bitcast i32* %27 to i8*
  %29 = tail call i32 %26(i8* %28, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 121) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %.thread5, label %.thread3

.thread5:                                         ; preds = %.thread
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %.thread3

.thread1:                                         ; preds = %19, %25
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %32 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2
  %33 = bitcast i32* %32 to i8*
  %34 = tail call i32 %31(i8* %33, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 121) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %.thread4

; <label>:36                                      ; preds = %.thread1
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %.thread4

.thread3:                                         ; preds = %.thread, %.thread5
  %37 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %38 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  %39 = bitcast i32* %38 to i8*
  %40 = tail call i32 %37(i8* %39, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 122) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %.thread8, label %.thread6

.thread8:                                         ; preds = %.thread3
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %.thread6

.thread4:                                         ; preds = %.thread1, %36
  %42 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %43 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  %44 = bitcast i32* %43 to i8*
  %45 = tail call i32 %42(i8* %44, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 122) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %.thread7

; <label>:47                                      ; preds = %.thread4
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %.thread7

.thread6:                                         ; preds = %.thread3, %.thread8
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %49 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4
  %50 = bitcast i32* %49 to i8*
  %51 = tail call i32 %48(i8* %50, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 123) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %.thread11, label %.thread9

.thread11:                                        ; preds = %.thread6
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %.thread9

.thread7:                                         ; preds = %.thread4, %47
  %53 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %54 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4
  %55 = bitcast i32* %54 to i8*
  %56 = tail call i32 %53(i8* %55, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 123) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %.thread15.preheader

.thread15.preheader:                              ; preds = %105, %61, %.thread7
  %.pre-phi = phi i32* [ %49, %105 ], [ %54, %61 ], [ %54, %.thread7 ]
  %58 = load i32* %.pre-phi, align 4, !tbaa !21
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.thread15.preheader
  %60 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  br label %110

; <label>:61                                      ; preds = %.thread7
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %.thread15.preheader

.thread9:                                         ; preds = %.thread6, %.thread11
  %62 = load i32* %49, align 4, !tbaa !21
  %63 = icmp sgt i32 %62, 70
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %.thread9
  store i32 1, i32* %49, align 4, !tbaa !21
  br label %65

; <label>:65                                      ; preds = %64, %.thread9
  %66 = phi i32 [ %62, %.thread9 ], [ 1, %64 ]
  %tempfix_nr.0.ph = phi i32 [ 0, %.thread9 ], [ %62, %64 ]
  %67 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 8
  %68 = load i32* %67, align 4, !tbaa !31
  %69 = icmp sgt i32 %66, %68
  br i1 %69, label %70, label %105

; <label>:70                                      ; preds = %65
  %71 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  %72 = bitcast i32** %71 to i8**
  %73 = load i8** %72, align 8, !tbaa !25
  %74 = shl i32 %66, 2
  %75 = tail call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 130, i8* %73, i32 %74) #6
  store i8* %75, i8** %72, align 8, !tbaa !25
  %76 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 11
  %77 = bitcast i32** %76 to i8**
  %78 = load i8** %77, align 8, !tbaa !24
  %79 = load i32* %49, align 4, !tbaa !21
  %80 = shl i32 %79, 2
  %81 = tail call i8* @save_realloc(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 131, i8* %78, i32 %80) #6
  store i8* %81, i8** %77, align 8, !tbaa !24
  %82 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15
  %83 = bitcast float*** %82 to i8**
  %84 = load i8** %83, align 8, !tbaa !22
  %85 = load i32* %49, align 4, !tbaa !21
  %86 = shl i32 %85, 3
  %87 = tail call i8* @save_realloc(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 132, i8* %84, i32 %86) #6
  store i8* %87, i8** %83, align 8, !tbaa !22
  %88 = load i32* %67, align 4, !tbaa !31
  %89 = load i32* %49, align 4, !tbaa !21
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %.lr.ph24, label %._crit_edge

.lr.ph24:                                         ; preds = %70
  %91 = bitcast i8* %87 to float**
  %92 = sext i32 %88 to i64
  %93 = getelementptr inbounds float** %91, i64 %92
  store float* null, float** %93, align 8, !tbaa !23
  %94 = load i32** %76, align 8, !tbaa !24
  %95 = getelementptr inbounds i32* %94, i64 %92
  store i32 0, i32* %95, align 4, !tbaa !26
  %indvars.iv.next2730 = add nsw i64 %92, 1
  %96 = load i32* %49, align 4, !tbaa !21
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %indvars.iv.next2730, %97
  br i1 %98, label %._crit_edge28, label %._crit_edge

._crit_edge28:                                    ; preds = %.lr.ph24, %._crit_edge28
  %indvars.iv.next2731 = phi i64 [ %indvars.iv.next27, %._crit_edge28 ], [ %indvars.iv.next2730, %.lr.ph24 ]
  %.pre = load float*** %82, align 8, !tbaa !22
  %99 = getelementptr inbounds float** %.pre, i64 %indvars.iv.next2731
  store float* null, float** %99, align 8, !tbaa !23
  %100 = load i32** %76, align 8, !tbaa !24
  %101 = getelementptr inbounds i32* %100, i64 %indvars.iv.next2731
  store i32 0, i32* %101, align 4, !tbaa !26
  %indvars.iv.next27 = add nsw i64 %indvars.iv.next2731, 1
  %102 = load i32* %49, align 4, !tbaa !21
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %indvars.iv.next27, %103
  br i1 %104, label %._crit_edge28, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph24, %._crit_edge28, %70
  %.lcssa = phi i32 [ %89, %70 ], [ %96, %.lr.ph24 ], [ %102, %._crit_edge28 ]
  store i32 %.lcssa, i32* %67, align 4, !tbaa !31
  br label %105

; <label>:105                                     ; preds = %._crit_edge, %65
  %106 = icmp eq i32 %tempfix_nr.0.ph, 0
  br i1 %106, label %.thread15.preheader, label %107

; <label>:107                                     ; preds = %105
  %108 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  %109 = load i32** %108, align 8, !tbaa !25
  store i32 %tempfix_nr.0.ph, i32* %109, align 4, !tbaa !26
  br label %.loopexit

; <label>:110                                     ; preds = %.lr.ph, %.thread15
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread15 ]
  br i1 %2, label %111, label %118

; <label>:111                                     ; preds = %110
  %112 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %113 = load i32** %60, align 8, !tbaa !25
  %114 = getelementptr inbounds i32* %113, i64 %indvars.iv
  %115 = bitcast i32* %114 to i8*
  %116 = tail call i32 %112(i8* %115, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 143) #6
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %.thread15

; <label>:118                                     ; preds = %110
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %120 = load i32** %60, align 8, !tbaa !25
  %121 = getelementptr inbounds i32* %120, i64 %indvars.iv
  %122 = bitcast i32* %121 to i8*
  %123 = tail call i32 %119(i8* %122, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 143) #6
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %.thread15

; <label>:125                                     ; preds = %111, %118
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %.thread15

.thread15:                                        ; preds = %111, %118, %125
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %126 = load i32* %.pre-phi, align 4, !tbaa !21
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %indvars.iv.next, %127
  br i1 %128, label %110, label %.loopexit

.loopexit:                                        ; preds = %.thread15, %.thread15.preheader, %107
  br i1 %2, label %129, label %135

; <label>:129                                     ; preds = %.loopexit
  %130 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %131 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 6
  %132 = bitcast i32* %131 to i8*
  %133 = tail call i32 %130(i8* %132, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 146) #6
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %.thread18, label %.thread16

.thread18:                                        ; preds = %129
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %.thread16

; <label>:135                                     ; preds = %.loopexit
  %136 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %137 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 6
  %138 = bitcast i32* %137 to i8*
  %139 = tail call i32 %136(i8* %138, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 146) #6
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %.thread17

; <label>:141                                     ; preds = %135
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %.thread17

.thread16:                                        ; preds = %129, %.thread18
  %142 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %143 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 7
  %144 = bitcast i32* %143 to i8*
  %145 = tail call i32 %142(i8* %144, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 147) #6
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %.thread21, label %.thread19

.thread21:                                        ; preds = %.thread16
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %.thread19

.thread17:                                        ; preds = %135, %141
  %147 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %148 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 7
  %149 = bitcast i32* %148 to i8*
  %150 = tail call i32 %147(i8* %149, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 147) #6
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %.thread20

; <label>:152                                     ; preds = %.thread17
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %.thread20

.thread19:                                        ; preds = %.thread16, %.thread21
  %153 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %154 = bitcast i32* %dum to i8*
  %155 = call i32 %153(i8* %154, i32 1, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 149) #6
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %162

.thread20:                                        ; preds = %.thread17, %152
  %157 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %158 = bitcast i32* %dum to i8*
  %159 = call i32 %157(i8* %158, i32 1, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 149) #6
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

; <label>:161                                     ; preds = %.thread19, %.thread20
  store i32 0, i32* %bOK, align 4, !tbaa !26
  br label %162

; <label>:162                                     ; preds = %.thread19, %.thread20, %161
  %163 = load i32* %bOK, align 4, !tbaa !26
  br label %164

; <label>:164                                     ; preds = %8, %3, %162
  %.0 = phi i32 [ %163, %162 ], [ 0, %3 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare void @gmx_fio_rewind(i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @do_enx(i32 %fp, %struct.t_enxframe* %fr) #3 {
  %bOK = alloca i32, align 4
  %tmp1 = alloca float, align 4
  %tmp2 = alloca float, align 4
  %buf = alloca [128 x i8], align 16
  %buf1 = alloca [128 x i8], align 16
  %buf2 = alloca [128 x i8], align 16
  store i32 1, i32* %bOK, align 4, !tbaa !26
  %1 = tail call i32 @gmx_fio_getread(i32 %fp) #6
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %12, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2
  %5 = load i32* %4, align 4, !tbaa !28
  %6 = shl i32 %5, 4
  %7 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 6
  store i32 %6, i32* %7, align 4, !tbaa !27
  %8 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  %9 = load i32* %8, align 4, !tbaa !30
  %10 = shl i32 %9, 3
  %11 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 7
  store i32 %10, i32* %11, align 4, !tbaa !29
  br label %12

; <label>:12                                      ; preds = %3, %0
  tail call void @gmx_fio_select(i32 %fp) #6
  %13 = call fastcc i32 @do_eheader(i32 %fp, %struct.t_enxframe* %fr, i32* %bOK) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

; <label>:15                                      ; preds = %12
  br i1 %2, label %16, label %368

; <label>:16                                      ; preds = %15
  %17 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !23
  %18 = load i32* @framenr, align 4, !tbaa !26
  %19 = add nsw i32 %18, -1
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([46 x i8]* @.str15, i64 0, i64 0), i32 %19) #6
  %21 = load i32* %bOK, align 4, !tbaa !26
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %368

; <label>:23                                      ; preds = %16
  %24 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !23
  %25 = load i32* @framenr, align 4, !tbaa !26
  %26 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0
  %27 = load float* %26, align 4, !tbaa !32
  %28 = fpext float %27 to double
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([47 x i8]* @.str16, i64 0, i64 0), i32 %25, double %28) #6
  br label %368

; <label>:30                                      ; preds = %12
  br i1 %2, label %31, label %45

; <label>:31                                      ; preds = %30
  %32 = load i32* @framenr, align 4, !tbaa !26
  %33 = icmp slt i32 %32, 10
  %34 = srem i32 %32, 10
  %35 = icmp eq i32 %34, 0
  %or.cond5 = or i1 %33, %35
  br i1 %or.cond5, label %36, label %42

; <label>:36                                      ; preds = %31
  %37 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !23
  %38 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0
  %39 = load float* %38, align 4, !tbaa !32
  %40 = fpext float %39 to double
  %41 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %37, i8* getelementptr inbounds ([41 x i8]* @.str17, i64 0, i64 0), i32 %32, double %40) #6
  %.pre = load i32* @framenr, align 4, !tbaa !26
  br label %42

; <label>:42                                      ; preds = %31, %36
  %43 = phi i32 [ %32, %31 ], [ %.pre, %36 ]
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @framenr, align 4, !tbaa !26
  br label %45

; <label>:45                                      ; preds = %42, %30
  %46 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2
  %47 = load i32* %46, align 4, !tbaa !28
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %53, label %49

; <label>:49                                      ; preds = %45
  %50 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  %51 = load i32* %50, align 4, !tbaa !30
  %52 = icmp sgt i32 %51, 0
  br label %53

; <label>:53                                      ; preds = %49, %45
  %54 = phi i1 [ true, %45 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4
  %57 = load i32* %56, align 4, !tbaa !21
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %53
  %59 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  %60 = sext i32 %57 to i64
  br label %61

; <label>:61                                      ; preds = %.lr.ph38, %68
  %indvars.iv55 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next56, %68 ]
  %bSane.036 = phi i32 [ %55, %.lr.ph38 ], [ %70, %68 ]
  %62 = icmp eq i32 %bSane.036, 0
  br i1 %62, label %63, label %68

; <label>:63                                      ; preds = %61
  %64 = load i32** %59, align 8, !tbaa !25
  %65 = getelementptr inbounds i32* %64, i64 %indvars.iv55
  %66 = load i32* %65, align 4, !tbaa !26
  %67 = icmp sgt i32 %66, 0
  br label %68

; <label>:68                                      ; preds = %61, %63
  %69 = phi i1 [ true, %61 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %71 = icmp slt i64 %indvars.iv.next56, %60
  br i1 %71, label %61, label %._crit_edge39

._crit_edge39:                                    ; preds = %68, %53
  %bSane.0.lcssa = phi i32 [ %55, %53 ], [ %70, %68 ]
  %72 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1
  %73 = load i32* %72, align 4, !tbaa !33
  %74 = icmp sgt i32 %73, -1
  %75 = icmp ne i32 %bSane.0.lcssa, 0
  %or.cond = and i1 %75, %74
  br i1 %or.cond, label %90, label %76

; <label>:76                                      ; preds = %._crit_edge39
  %77 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !23
  %78 = tail call i8* @gmx_fio_getname(i32 %fp) #6
  %79 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %77, i8* getelementptr inbounds ([60 x i8]* @.str18, i64 0, i64 0), i8* %78) #6
  %80 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !23
  %81 = load i32* %72, align 4, !tbaa !33
  %82 = load i32* %46, align 4, !tbaa !28
  %83 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  %84 = load i32* %83, align 4, !tbaa !30
  %85 = load i32* %56, align 4, !tbaa !21
  %86 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0
  %87 = load float* %86, align 4, !tbaa !32
  %88 = fpext float %87 to double
  %89 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %80, i8* getelementptr inbounds ([99 x i8]* @.str19, i64 0, i64 0), i32 %81, i32 %82, i32 %84, i32 %85, double %88) #6
  br label %90

; <label>:90                                      ; preds = %._crit_edge39, %76
  %91 = load i32* %46, align 4, !tbaa !28
  br i1 %2, label %92, label %.preheader12

; <label>:92                                      ; preds = %90
  %93 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 9
  %94 = load i32* %93, align 4, !tbaa !14
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %.preheader12

; <label>:96                                      ; preds = %92
  %97 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12
  %98 = bitcast %struct.t_energy** %97 to i8**
  %99 = load i8** %98, align 8, !tbaa !17
  %100 = shl i32 %91, 5
  %101 = tail call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 294, i8* %99, i32 %100) #6
  store i8* %101, i8** %98, align 8, !tbaa !17
  %102 = load i32* %46, align 4, !tbaa !28
  store i32 %102, i32* %93, align 4, !tbaa !14
  br label %.preheader12

.preheader12:                                     ; preds = %90, %96, %92
  %103 = phi i32 [ %102, %96 ], [ %91, %92 ], [ %91, %90 ]
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %.lr.ph31, label %195

.lr.ph31:                                         ; preds = %.preheader12
  %105 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12
  %106 = bitcast float* %tmp2 to i8*
  %107 = bitcast float* %tmp1 to i8*
  %bOK.promoted33 = load i32* %bOK, align 4, !tbaa !26
  br label %108

; <label>:108                                     ; preds = %.lr.ph31, %189
  %indvars.iv53 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next54, %189 ]
  %109 = phi i32 [ %bOK.promoted33, %.lr.ph31 ], [ %191, %189 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %127, label %111

; <label>:111                                     ; preds = %108
  br i1 %2, label %112, label %118

; <label>:112                                     ; preds = %111
  %113 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %114 = load %struct.t_energy** %105, align 8, !tbaa !17
  %115 = getelementptr inbounds %struct.t_energy* %114, i64 %indvars.iv53, i32 0
  %116 = bitcast float* %115 to i8*
  %117 = call i32 %113(i8* %116, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 298) #6
  br label %124

; <label>:118                                     ; preds = %111
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %120 = load %struct.t_energy** %105, align 8, !tbaa !17
  %121 = getelementptr inbounds %struct.t_energy* %120, i64 %indvars.iv53, i32 0
  %122 = bitcast float* %121 to i8*
  %123 = call i32 %119(i8* %122, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 298) #6
  br label %124

; <label>:124                                     ; preds = %118, %112
  %125 = phi i32 [ %117, %112 ], [ %123, %118 ]
  %126 = icmp ne i32 %125, 0
  br label %127

; <label>:127                                     ; preds = %108, %124
  %128 = phi i1 [ false, %108 ], [ %126, %124 ]
  %129 = load %struct.t_energy** %105, align 8, !tbaa !17
  %130 = getelementptr inbounds %struct.t_energy* %129, i64 %indvars.iv53, i32 1
  %131 = load double* %130, align 8, !tbaa !34
  %132 = fptrunc double %131 to float
  store float %132, float* %tmp1, align 4, !tbaa !37
  %133 = load i32* %72, align 4, !tbaa !33
  %134 = add nsw i32 %133, 1
  %135 = sitofp i32 %134 to float
  %136 = fdiv float %132, %135
  %137 = fpext float %136 to double
  %138 = fcmp olt double %137, 1.200000e-07
  br i1 %138, label %139, label %140

; <label>:139                                     ; preds = %127
  store float 0.000000e+00, float* %tmp1, align 4, !tbaa !37
  br label %140

; <label>:140                                     ; preds = %139, %127
  %141 = phi float [ 0.000000e+00, %139 ], [ %132, %127 ]
  br i1 %128, label %142, label %152

; <label>:142                                     ; preds = %140
  br i1 %2, label %143, label %146

; <label>:143                                     ; preds = %142
  %144 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %145 = call i32 %144(i8* %107, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 303) #6
  br label %149

; <label>:146                                     ; preds = %142
  %147 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %148 = call i32 %147(i8* %107, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 303) #6
  br label %149

; <label>:149                                     ; preds = %146, %143
  %150 = phi i32 [ %145, %143 ], [ %148, %146 ]
  %151 = icmp ne i32 %150, 0
  %.pre58 = load float* %tmp1, align 4, !tbaa !37
  %.pre59 = load %struct.t_energy** %105, align 8, !tbaa !17
  br label %152

; <label>:152                                     ; preds = %140, %149
  %153 = phi %struct.t_energy* [ %129, %140 ], [ %.pre59, %149 ]
  %154 = phi float [ %141, %140 ], [ %.pre58, %149 ]
  %155 = phi i1 [ false, %140 ], [ %151, %149 ]
  %156 = fpext float %154 to double
  %157 = getelementptr inbounds %struct.t_energy* %153, i64 %indvars.iv53, i32 1
  store double %156, double* %157, align 8, !tbaa !34
  %158 = getelementptr inbounds %struct.t_energy* %153, i64 %indvars.iv53, i32 2
  %159 = load double* %158, align 8, !tbaa !38
  %160 = fptrunc double %159 to float
  store float %160, float* %tmp2, align 4, !tbaa !37
  br i1 %155, label %163, label %.thread

.thread:                                          ; preds = %152
  %161 = fpext float %160 to double
  %162 = getelementptr inbounds %struct.t_energy* %153, i64 %indvars.iv53, i32 2
  store double %161, double* %162, align 8, !tbaa !38
  br label %189

; <label>:163                                     ; preds = %152
  br i1 %2, label %164, label %167

; <label>:164                                     ; preds = %163
  %165 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %166 = call i32 %165(i8* %106, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 308) #6
  br label %170

; <label>:167                                     ; preds = %163
  %168 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %169 = call i32 %168(i8* %106, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 308) #6
  br label %170

; <label>:170                                     ; preds = %164, %167
  %171 = phi i32 [ %166, %164 ], [ %169, %167 ]
  %172 = icmp eq i32 %171, 0
  %.pre60 = load float* %tmp2, align 4, !tbaa !37
  %.pre61 = load %struct.t_energy** %105, align 8, !tbaa !17
  %173 = fpext float %.pre60 to double
  %174 = getelementptr inbounds %struct.t_energy* %.pre61, i64 %indvars.iv53, i32 2
  store double %173, double* %174, align 8, !tbaa !38
  br i1 %172, label %189, label %175

; <label>:175                                     ; preds = %170
  br i1 %2, label %176, label %181

; <label>:176                                     ; preds = %175
  %177 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %178 = getelementptr inbounds %struct.t_energy* %.pre61, i64 %indvars.iv53, i32 3
  %179 = bitcast float* %178 to i8*
  %180 = call i32 %177(i8* %179, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 311) #6
  br label %186

; <label>:181                                     ; preds = %175
  %182 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %183 = getelementptr inbounds %struct.t_energy* %.pre61, i64 %indvars.iv53, i32 3
  %184 = bitcast float* %183 to i8*
  %185 = call i32 %182(i8* %184, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 311) #6
  br label %186

; <label>:186                                     ; preds = %181, %176
  %187 = phi i32 [ %180, %176 ], [ %185, %181 ]
  %188 = icmp ne i32 %187, 0
  br label %189

; <label>:189                                     ; preds = %170, %.thread, %186
  %190 = phi i1 [ false, %170 ], [ %188, %186 ], [ false, %.thread ]
  %191 = zext i1 %190 to i32
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %192 = load i32* %46, align 4, !tbaa !28
  %193 = sext i32 %192 to i64
  %194 = icmp slt i64 %indvars.iv.next54, %193
  br i1 %194, label %108, label %._crit_edge32

._crit_edge32:                                    ; preds = %189
  store i32 %191, i32* %bOK, align 4, !tbaa !26
  br label %195

; <label>:195                                     ; preds = %._crit_edge32, %.preheader12
  %196 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  %197 = load i32* %196, align 4, !tbaa !30
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %.preheader10, label %199

; <label>:199                                     ; preds = %195
  br i1 %2, label %200, label %.preheader11

; <label>:200                                     ; preds = %199
  %201 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 10
  %202 = load i32* %201, align 4, !tbaa !18
  %203 = icmp sgt i32 %197, %202
  br i1 %203, label %204, label %.preheader11

; <label>:204                                     ; preds = %200
  %205 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13
  %206 = bitcast float** %205 to i8**
  %207 = load i8** %206, align 8, !tbaa !19
  %208 = shl i32 %197, 2
  %209 = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 315, i8* %207, i32 %208) #6
  store i8* %209, i8** %206, align 8, !tbaa !19
  %210 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14
  %211 = bitcast float** %210 to i8**
  %212 = load i8** %211, align 8, !tbaa !20
  %213 = load i32* %196, align 4, !tbaa !30
  %214 = shl i32 %213, 2
  %215 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 316, i8* %212, i32 %214) #6
  store i8* %215, i8** %211, align 8, !tbaa !20
  %216 = load i32* %196, align 4, !tbaa !30
  store i32 %216, i32* %201, align 4, !tbaa !18
  br label %.preheader11

.preheader11:                                     ; preds = %204, %200, %199
  %217 = phi i32 [ %216, %204 ], [ %197, %200 ], [ %197, %199 ]
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %.lr.ph27, label %._crit_edge28.thread

._crit_edge28.thread:                             ; preds = %.preheader11
  %219 = load i32* %bOK, align 4, !tbaa !26
  %not.64 = icmp ne i32 %219, 0
  %220 = zext i1 %not.64 to i32
  store i32 %220, i32* %bOK, align 4, !tbaa !26
  br label %._crit_edge23

.lr.ph27:                                         ; preds = %.preheader11
  %221 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  %222 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13
  br label %223

; <label>:223                                     ; preds = %.lr.ph27, %243
  %indvars.iv51 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next52, %243 ]
  %bOK1.026 = phi i32 [ 1, %.lr.ph27 ], [ %245, %243 ]
  call void @llvm.lifetime.start(i64 128, i8* %221) #5
  %224 = trunc i64 %indvars.iv51 to i32
  %225 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %221, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 %224) #6
  %226 = icmp eq i32 %bOK1.026, 0
  br i1 %226, label %243, label %227

; <label>:227                                     ; preds = %223
  br i1 %2, label %228, label %234

; <label>:228                                     ; preds = %227
  %229 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %230 = load float** %222, align 8, !tbaa !19
  %231 = getelementptr inbounds float* %230, i64 %indvars.iv51
  %232 = bitcast float* %231 to i8*
  %233 = call i32 %229(i8* %232, i32 1, i32 0, i8* %221, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 319) #6
  br label %240

; <label>:234                                     ; preds = %227
  %235 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %236 = load float** %222, align 8, !tbaa !19
  %237 = getelementptr inbounds float* %236, i64 %indvars.iv51
  %238 = bitcast float* %237 to i8*
  %239 = call i32 %235(i8* %238, i32 1, i32 0, i8* %221, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 319) #6
  br label %240

; <label>:240                                     ; preds = %234, %228
  %241 = phi i32 [ %233, %228 ], [ %239, %234 ]
  %242 = icmp ne i32 %241, 0
  br label %243

; <label>:243                                     ; preds = %223, %240
  %244 = phi i1 [ false, %223 ], [ %242, %240 ]
  %245 = zext i1 %244 to i32
  call void @llvm.lifetime.end(i64 128, i8* %221) #5
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %246 = load i32* %196, align 4, !tbaa !30
  %247 = sext i32 %246 to i64
  %248 = icmp slt i64 %indvars.iv.next52, %247
  br i1 %248, label %223, label %._crit_edge28

._crit_edge28:                                    ; preds = %243
  %249 = load i32* %bOK, align 4, !tbaa !26
  %not. = icmp ne i32 %249, 0
  %. = and i1 %244, %not.
  %250 = zext i1 %. to i32
  store i32 %250, i32* %bOK, align 4, !tbaa !26
  %251 = icmp sgt i32 %246, 0
  br i1 %251, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %._crit_edge28
  %252 = getelementptr inbounds [128 x i8]* %buf1, i64 0, i64 0
  %253 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14
  br label %254

; <label>:254                                     ; preds = %.lr.ph22, %274
  %indvars.iv49 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next50, %274 ]
  %bOK1.120 = phi i32 [ 1, %.lr.ph22 ], [ %276, %274 ]
  call void @llvm.lifetime.start(i64 128, i8* %252) #5
  %255 = trunc i64 %indvars.iv49 to i32
  %256 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %252, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i32 %255) #6
  %257 = icmp eq i32 %bOK1.120, 0
  br i1 %257, label %274, label %258

; <label>:258                                     ; preds = %254
  br i1 %2, label %259, label %265

; <label>:259                                     ; preds = %258
  %260 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %261 = load float** %253, align 8, !tbaa !20
  %262 = getelementptr inbounds float* %261, i64 %indvars.iv49
  %263 = bitcast float* %262 to i8*
  %264 = call i32 %260(i8* %263, i32 1, i32 0, i8* %252, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 321) #6
  br label %271

; <label>:265                                     ; preds = %258
  %266 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %267 = load float** %253, align 8, !tbaa !20
  %268 = getelementptr inbounds float* %267, i64 %indvars.iv49
  %269 = bitcast float* %268 to i8*
  %270 = call i32 %266(i8* %269, i32 1, i32 0, i8* %252, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 321) #6
  br label %271

; <label>:271                                     ; preds = %265, %259
  %272 = phi i32 [ %264, %259 ], [ %270, %265 ]
  %273 = icmp ne i32 %272, 0
  br label %274

; <label>:274                                     ; preds = %254, %271
  %275 = phi i1 [ false, %254 ], [ %273, %271 ]
  %276 = zext i1 %275 to i32
  call void @llvm.lifetime.end(i64 128, i8* %252) #5
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %277 = load i32* %196, align 4, !tbaa !30
  %278 = sext i32 %277 to i64
  %279 = icmp slt i64 %indvars.iv.next50, %278
  br i1 %279, label %254, label %._crit_edge23

._crit_edge23:                                    ; preds = %274, %._crit_edge28.thread, %._crit_edge28
  %.66 = phi i1 [ %., %._crit_edge28 ], [ %not.64, %._crit_edge28.thread ], [ %., %274 ]
  %bOK1.1.lcssa = phi i1 [ true, %._crit_edge28 ], [ true, %._crit_edge28.thread ], [ %275, %274 ]
  %.6 = and i1 %bOK1.1.lcssa, %.66
  %280 = zext i1 %.6 to i32
  store i32 %280, i32* %bOK, align 4, !tbaa !26
  br label %.preheader10

.preheader10:                                     ; preds = %195, %._crit_edge23
  %281 = load i32* %56, align 4, !tbaa !21
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %.lr.ph16, label %.preheader10._crit_edge

.preheader10._crit_edge:                          ; preds = %.preheader10
  %.pre63 = load i32* %bOK, align 4, !tbaa !26
  br label %352

.lr.ph16:                                         ; preds = %.preheader10
  %283 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  %284 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 11
  %285 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15
  %286 = getelementptr inbounds [128 x i8]* %buf2, i64 0, i64 0
  %bOK.promoted = load i32* %bOK, align 4, !tbaa !26
  br label %287

; <label>:287                                     ; preds = %.lr.ph16, %._crit_edge
  %indvars.iv47 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next48, %._crit_edge ]
  %288 = phi i32 [ %bOK.promoted, %.lr.ph16 ], [ %348, %._crit_edge ]
  %289 = load i32** %283, align 8, !tbaa !25
  br i1 %2, label %290, label %.preheader

; <label>:290                                     ; preds = %287
  %291 = getelementptr inbounds i32* %289, i64 %indvars.iv47
  %292 = load i32* %291, align 4, !tbaa !26
  %293 = load i32** %284, align 8, !tbaa !24
  %294 = getelementptr inbounds i32* %293, i64 %indvars.iv47
  %295 = load i32* %294, align 4, !tbaa !26
  %296 = icmp sgt i32 %292, %295
  br i1 %296, label %297, label %.preheader

; <label>:297                                     ; preds = %290
  %298 = load float*** %285, align 8, !tbaa !22
  %299 = getelementptr inbounds float** %298, i64 %indvars.iv47
  %300 = bitcast float** %299 to i8**
  %301 = load i8** %300, align 8, !tbaa !23
  %302 = shl i32 %292, 2
  %303 = call i8* @save_realloc(i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 326, i8* %301, i32 %302) #6
  %304 = load float*** %285, align 8, !tbaa !22
  %305 = getelementptr inbounds float** %304, i64 %indvars.iv47
  %306 = bitcast float** %305 to i8**
  store i8* %303, i8** %306, align 8, !tbaa !23
  %307 = load i32** %283, align 8, !tbaa !25
  %308 = getelementptr inbounds i32* %307, i64 %indvars.iv47
  %309 = load i32* %308, align 4, !tbaa !26
  %310 = load i32** %284, align 8, !tbaa !24
  %311 = getelementptr inbounds i32* %310, i64 %indvars.iv47
  store i32 %309, i32* %311, align 4, !tbaa !26
  br label %.preheader

.preheader:                                       ; preds = %287, %297, %290
  %312 = phi i32* [ %307, %297 ], [ %289, %290 ], [ %289, %287 ]
  %313 = getelementptr inbounds i32* %312, i64 %indvars.iv47
  %314 = load i32* %313, align 4, !tbaa !26
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %339
  %indvars.iv = phi i64 [ %indvars.iv.next, %339 ], [ 0, %.preheader ]
  %bOK1.214 = phi i32 [ %341, %339 ], [ 1, %.preheader ]
  call void @llvm.lifetime.start(i64 128, i8* %286) #5
  %316 = trunc i64 %indvars.iv to i32
  %317 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %286, i32 0, i64 128, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), i32 %316) #6
  %318 = icmp eq i32 %bOK1.214, 0
  br i1 %318, label %339, label %319

; <label>:319                                     ; preds = %.lr.ph
  br i1 %2, label %320, label %328

; <label>:320                                     ; preds = %319
  %321 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !23
  %322 = load float*** %285, align 8, !tbaa !22
  %323 = getelementptr inbounds float** %322, i64 %indvars.iv47
  %324 = load float** %323, align 8, !tbaa !23
  %325 = getelementptr inbounds float* %324, i64 %indvars.iv
  %326 = bitcast float* %325 to i8*
  %327 = call i32 %321(i8* %326, i32 1, i32 0, i8* %286, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 329) #6
  br label %336

; <label>:328                                     ; preds = %319
  %329 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !23
  %330 = load float*** %285, align 8, !tbaa !22
  %331 = getelementptr inbounds float** %330, i64 %indvars.iv47
  %332 = load float** %331, align 8, !tbaa !23
  %333 = getelementptr inbounds float* %332, i64 %indvars.iv
  %334 = bitcast float* %333 to i8*
  %335 = call i32 %329(i8* %334, i32 1, i32 0, i8* %286, i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 329) #6
  br label %336

; <label>:336                                     ; preds = %328, %320
  %337 = phi i32 [ %327, %320 ], [ %335, %328 ]
  %338 = icmp ne i32 %337, 0
  br label %339

; <label>:339                                     ; preds = %.lr.ph, %336
  %340 = phi i1 [ false, %.lr.ph ], [ %338, %336 ]
  %341 = zext i1 %340 to i32
  call void @llvm.lifetime.end(i64 128, i8* %286) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %342 = load i32** %283, align 8, !tbaa !25
  %343 = getelementptr inbounds i32* %342, i64 %indvars.iv47
  %344 = load i32* %343, align 4, !tbaa !26
  %345 = sext i32 %344 to i64
  %346 = icmp slt i64 %indvars.iv.next, %345
  br i1 %346, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %339, %.preheader
  %bOK1.2.lcssa = phi i32 [ 1, %.preheader ], [ %341, %339 ]
  %347 = icmp ne i32 %bOK1.2.lcssa, 0
  %not.9 = icmp ne i32 %288, 0
  %.7 = and i1 %347, %not.9
  %348 = zext i1 %.7 to i32
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %349 = load i32* %56, align 4, !tbaa !21
  %350 = sext i32 %349 to i64
  %351 = icmp slt i64 %indvars.iv.next48, %350
  br i1 %351, label %287, label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge
  store i32 %348, i32* %bOK, align 4, !tbaa !26
  br label %352

; <label>:352                                     ; preds = %.preheader10._crit_edge, %._crit_edge17
  %353 = phi i32 [ %.pre63, %.preheader10._crit_edge ], [ %348, %._crit_edge17 ]
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %368

; <label>:355                                     ; preds = %352
  br i1 %2, label %356, label %367

; <label>:356                                     ; preds = %355
  %357 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !23
  %358 = load i32* @framenr, align 4, !tbaa !26
  %359 = add nsw i32 %358, -1
  %360 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %357, i8* getelementptr inbounds ([51 x i8]* @.str26, i64 0, i64 0), i32 %359) #6
  %361 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !23
  %362 = load i32* @framenr, align 4, !tbaa !26
  %363 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0
  %364 = load float* %363, align 4, !tbaa !32
  %365 = fpext float %364 to double
  %366 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %361, i8* getelementptr inbounds ([52 x i8]* @.str27, i64 0, i64 0), i32 %362, double %365) #6
  br label %368

; <label>:367                                     ; preds = %355
  call void (i32, i8*, ...)* @fatal_error(i32 -1, i8* getelementptr inbounds ([25 x i8]* @.str28, i64 0, i64 0)) #6
  br label %368

; <label>:368                                     ; preds = %352, %356, %367, %15, %23, %16
  %.0 = phi i32 [ 0, %16 ], [ 0, %23 ], [ 0, %15 ], [ 0, %367 ], [ 0, %356 ], [ 1, %352 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @gmx_fio_getname(i32) #1

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: optsize
declare %struct.XDR* @gmx_fio_getxdr(i32) #1

; Function Attrs: optsize
declare i32 @xdr_int(%struct.XDR*, i32*) #1

; Function Attrs: optsize
declare i32 @xdr_string(%struct.XDR*, i8**, i32) #1

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct.__sFILE*) #1

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare void @trim(i8*) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @feof(%struct.__sFILE* nocapture) #4

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #1

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
!14 = !{!15, !7, i64 44}
!15 = !{!"", !16, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !4, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88}
!16 = !{!"float", !5, i64 0}
!17 = !{!15, !4, i64 64}
!18 = !{!15, !7, i64 48}
!19 = !{!15, !4, i64 72}
!20 = !{!15, !4, i64 80}
!21 = !{!15, !7, i64 16}
!22 = !{!15, !4, i64 88}
!23 = !{!4, !4, i64 0}
!24 = !{!15, !4, i64 56}
!25 = !{!15, !4, i64 24}
!26 = !{!7, !7, i64 0}
!27 = !{!15, !7, i64 32}
!28 = !{!15, !7, i64 8}
!29 = !{!15, !7, i64 36}
!30 = !{!15, !7, i64 12}
!31 = !{!15, !7, i64 40}
!32 = !{!15, !16, i64 0}
!33 = !{!15, !7, i64 4}
!34 = !{!35, !36, i64 8}
!35 = !{!"", !16, i64 0, !36, i64 8, !36, i64 16, !16, i64 24}
!36 = !{!"double", !5, i64 0}
!37 = !{!16, !16, i64 0}
!38 = !{!35, !36, i64 16}
