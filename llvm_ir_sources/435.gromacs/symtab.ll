; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/symtab.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"symtab lookup \22%s\22 not found\00", align 1
@.str1 = private unnamed_addr constant [38 x i8] c"symtab get_symtab_handle %d not found\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"symbuf->buf[i]\00", align 1
@.str3 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/symtab.c\00", align 1
@.str4 = private unnamed_addr constant [12 x i8] c"symbuf->buf\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"freeptr\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"%s[%d]=\22%s\22\0A\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"symbuf\00", align 1
@trim_string.buf = internal global [1024 x i8] zeroinitializer, align 16

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
define i32 @lookup_symtab(%struct.t_symtab* nocapture readonly %symtab, i8** %name) #1 {
  %1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  %symbuf.02 = load %struct.symbuf** %1, align 8
  %2 = icmp eq %struct.symbuf* %symbuf.02, null
  br i1 %2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %3 = ptrtoint i8** %name to i64
  br label %4

; <label>:4                                       ; preds = %.lr.ph, %._crit_edge7
  %symbuf.04 = phi %struct.symbuf* [ %symbuf.02, %.lr.ph ], [ %symbuf.0, %._crit_edge7 ]
  %base.03 = phi i32 [ 0, %.lr.ph ], [ %17, %._crit_edge7 ]
  %5 = getelementptr inbounds %struct.symbuf* %symbuf.04, i64 0, i32 1
  %6 = load i8*** %5, align 8, !tbaa !2
  %7 = ptrtoint i8** %6 to i64
  %8 = sub i64 %3, %7
  %9 = lshr exact i64 %8, 3
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, -1
  %12 = getelementptr inbounds %struct.symbuf* %symbuf.04, i64 0, i32 0
  %13 = load i32* %12, align 4, !tbaa !8
  %14 = icmp slt i32 %10, %13
  %or.cond = and i1 %11, %14
  br i1 %or.cond, label %15, label %._crit_edge7

; <label>:15                                      ; preds = %4
  %16 = add nsw i32 %10, %base.03
  br label %21

._crit_edge7:                                     ; preds = %4
  %17 = add nsw i32 %13, %base.03
  %18 = getelementptr inbounds %struct.symbuf* %symbuf.04, i64 0, i32 2
  %symbuf.0 = load %struct.symbuf** %18, align 8
  %19 = icmp eq %struct.symbuf* %symbuf.0, null
  br i1 %19, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %._crit_edge7, %0
  %20 = load i8** %name, align 8, !tbaa !9
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str, i64 0, i64 0), i8* %20) #6
  br label %21

; <label>:21                                      ; preds = %._crit_edge, %15
  %.0 = phi i32 [ %16, %15 ], [ -1, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i8** @get_symtab_handle(%struct.t_symtab* nocapture readonly %symtab, i32 %name) #1 {
  %1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  %symbuf.04 = load %struct.symbuf** %1, align 8
  %2 = icmp eq %struct.symbuf* %symbuf.04, null
  br i1 %2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %11
  %symbuf.06 = phi %struct.symbuf* [ %symbuf.0, %11 ], [ %symbuf.04, %0 ]
  %.05 = phi i32 [ %12, %11 ], [ %name, %0 ]
  %3 = getelementptr inbounds %struct.symbuf* %symbuf.06, i64 0, i32 0
  %4 = load i32* %3, align 4, !tbaa !8
  %5 = icmp slt i32 %.05, %4
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %.lr.ph
  %7 = sext i32 %.05 to i64
  %8 = getelementptr inbounds %struct.symbuf* %symbuf.06, i64 0, i32 1
  %9 = load i8*** %8, align 8, !tbaa !2
  %10 = getelementptr inbounds i8** %9, i64 %7
  br label %15

; <label>:11                                      ; preds = %.lr.ph
  %12 = sub nsw i32 %.05, %4
  %13 = getelementptr inbounds %struct.symbuf* %symbuf.06, i64 0, i32 2
  %symbuf.0 = load %struct.symbuf** %13, align 8
  %14 = icmp eq %struct.symbuf* %symbuf.0, null
  br i1 %14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %11, %0
  %.0.lcssa = phi i32 [ %name, %0 ], [ %12, %11 ]
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0), i32 %.0.lcssa) #6
  br label %15

; <label>:15                                      ; preds = %._crit_edge, %6
  %.01 = phi i8** [ %10, %6 ], [ null, %._crit_edge ]
  ret i8** %.01
}

; Function Attrs: nounwind optsize ssp uwtable
define i8** @put_symtab(%struct.t_symtab* nocapture %symtab, i8* nocapture readonly %name) #1 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %.0.i = phi i8* [ %name, %0 ], [ %3, %1 ]
  %2 = load i8* %.0.i, align 1, !tbaa !10
  %cond.i = icmp eq i8 %2, 32
  %3 = getelementptr inbounds i8* %.0.i, i64 1
  br i1 %cond.i, label %1, label %.critedge.i

.critedge.i:                                      ; preds = %1
  %4 = tail call i64 @strlen(i8* %.0.i) #6
  %5 = trunc i64 %4 to i32
  %sext = shl i64 %4, 32
  %6 = ashr exact i64 %sext, 32
  br label %7

; <label>:7                                       ; preds = %9, %.critedge.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ %6, %.critedge.i ]
  %len.0.i = phi i32 [ %10, %9 ], [ %5, %.critedge.i ]
  %8 = icmp sgt i64 %indvars.iv, 0
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %7
  %10 = add nsw i32 %len.0.i, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8* %.0.i, i64 %11
  %13 = load i8* %12, align 1, !tbaa !10
  %14 = icmp eq i8 %13, 32
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %14, label %7, label %15

; <label>:15                                      ; preds = %9, %7
  %16 = trunc i64 %indvars.iv to i32
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %.lr.ph.i, label %trim_string.exit

.lr.ph.i:                                         ; preds = %15
  %18 = icmp slt i32 %16, 1023
  %.op.i = add i32 %16, -1
  %19 = select i1 %18, i32 %.op.i, i32 1022
  store i8 %2, i8* getelementptr inbounds ([1024 x i8]* @trim_string.buf, i64 0, i64 0), align 16, !tbaa !10
  %exitcond.i13 = icmp eq i32 %19, 0
  br i1 %exitcond.i13, label %._crit_edge.i, label %._crit_edge5.i.lr.ph

._crit_edge5.i.lr.ph:                             ; preds = %.lr.ph.i
  %20 = icmp slt i32 %16, 1023
  %.op = add i32 %16, -2
  %21 = select i1 %20, i32 %.op, i32 1021
  br label %._crit_edge5.i

._crit_edge5.i:                                   ; preds = %._crit_edge5.i.lr.ph, %._crit_edge5.i
  %.0.i.pn = phi i8* [ %.0.i, %._crit_edge5.i.lr.ph ], [ %22, %._crit_edge5.i ]
  %indvars.iv.i14 = phi i64 [ 0, %._crit_edge5.i.lr.ph ], [ %indvars.iv.next.i, %._crit_edge5.i ]
  %22 = getelementptr inbounds i8* %.0.i.pn, i64 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i14, 1
  %.pre.i = load i8* %22, align 1, !tbaa !10
  %23 = getelementptr inbounds [1024 x i8]* @trim_string.buf, i64 0, i64 %indvars.iv.next.i
  store i8 %.pre.i, i8* %23, align 1, !tbaa !10
  %lftr.wideiv = trunc i64 %indvars.iv.i14 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %21
  br i1 %exitcond, label %._crit_edge.i, label %._crit_edge5.i

._crit_edge.i:                                    ; preds = %._crit_edge5.i, %.lr.ph.i
  %24 = add i32 %19, 1
  %phitmp.i = sext i32 %24 to i64
  br label %trim_string.exit

trim_string.exit:                                 ; preds = %15, %._crit_edge.i
  %i.0.lcssa.i = phi i64 [ %phitmp.i, %._crit_edge.i ], [ 0, %15 ]
  %25 = getelementptr inbounds [1024 x i8]* @trim_string.buf, i64 0, i64 %i.0.lcssa.i
  store i8 0, i8* %25, align 1, !tbaa !10
  %26 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  %27 = load %struct.symbuf** %26, align 8, !tbaa !11
  %28 = icmp eq %struct.symbuf* %27, null
  br i1 %28, label %29, label %.preheader

; <label>:29                                      ; preds = %trim_string.exit
  %30 = tail call fastcc %struct.symbuf* @new_symbuf() #6
  store %struct.symbuf* %30, %struct.symbuf** %26, align 8, !tbaa !11
  br label %.preheader

.preheader:                                       ; preds = %29, %trim_string.exit, %._crit_edge.i4
  %symbuf.0.i = phi %struct.symbuf* [ %symbuf.0..i, %._crit_edge.i4 ], [ %30, %29 ], [ %27, %trim_string.exit ]
  %31 = getelementptr inbounds %struct.symbuf* %symbuf.0.i, i64 0, i32 0
  %32 = load i32* %31, align 4, !tbaa !8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %.lr.ph.i1, label %._crit_edge.i4

.lr.ph.i1:                                        ; preds = %.preheader
  %34 = getelementptr inbounds %struct.symbuf* %symbuf.0.i, i64 0, i32 1
  %35 = load i8*** %34, align 8, !tbaa !2
  %36 = sext i32 %32 to i64
  br label %39

; <label>:37                                      ; preds = %52
  %38 = icmp slt i64 %indvars.iv.next.i3, %36
  br i1 %38, label %39, label %._crit_edge.i4

; <label>:39                                      ; preds = %37, %.lr.ph.i1
  %indvars.iv.i2 = phi i64 [ 0, %.lr.ph.i1 ], [ %indvars.iv.next.i3, %37 ]
  %40 = getelementptr inbounds i8** %35, i64 %indvars.iv.i2
  %41 = load i8** %40, align 8, !tbaa !9
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %52

; <label>:43                                      ; preds = %39
  %44 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  %45 = load i32* %44, align 4, !tbaa !13
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4, !tbaa !13
  %47 = tail call i8* @strdup(i8* getelementptr inbounds ([1024 x i8]* @trim_string.buf, i64 0, i64 0)) #6
  %48 = load i8*** %34, align 8, !tbaa !2
  %49 = getelementptr inbounds i8** %48, i64 %indvars.iv.i2
  store i8* %47, i8** %49, align 8, !tbaa !9
  %50 = load i8*** %34, align 8, !tbaa !2
  %51 = getelementptr inbounds i8** %50, i64 %indvars.iv.i2
  br label %enter_buf.exit

; <label>:52                                      ; preds = %39
  %53 = tail call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([1024 x i8]* @trim_string.buf, i64 0, i64 0)) #6
  %54 = icmp eq i32 %53, 0
  %indvars.iv.next.i3 = add nuw nsw i64 %indvars.iv.i2, 1
  br i1 %54, label %enter_buf.exit, label %37

._crit_edge.i4:                                   ; preds = %37, %.preheader
  %55 = getelementptr inbounds %struct.symbuf* %symbuf.0.i, i64 0, i32 2
  %56 = load %struct.symbuf** %55, align 8, !tbaa !14
  %57 = icmp eq %struct.symbuf* %56, null
  %symbuf.0..i = select i1 %57, %struct.symbuf* %symbuf.0.i, %struct.symbuf* %56
  br i1 %57, label %58, label %.preheader

; <label>:58                                      ; preds = %._crit_edge.i4
  %59 = tail call fastcc %struct.symbuf* @new_symbuf() #6
  %60 = getelementptr inbounds %struct.symbuf* %symbuf.0..i, i64 0, i32 2
  store %struct.symbuf* %59, %struct.symbuf** %60, align 8, !tbaa !14
  %61 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  %62 = load i32* %61, align 4, !tbaa !13
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4, !tbaa !13
  %64 = tail call i8* @strdup(i8* getelementptr inbounds ([1024 x i8]* @trim_string.buf, i64 0, i64 0)) #6
  %65 = getelementptr inbounds %struct.symbuf* %59, i64 0, i32 1
  %66 = load i8*** %65, align 8, !tbaa !2
  store i8* %64, i8** %66, align 8, !tbaa !9
  %67 = load i8*** %65, align 8, !tbaa !2
  br label %enter_buf.exit

enter_buf.exit:                                   ; preds = %52, %43, %58
  %.0.i5 = phi i8** [ %51, %43 ], [ %67, %58 ], [ %40, %52 ]
  ret i8** %.0.i5
}

; Function Attrs: nounwind optsize ssp uwtable
define void @open_symtab(%struct.t_symtab* nocapture %symtab) #1 {
  %1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  store i32 0, i32* %1, align 4, !tbaa !13
  %2 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  store %struct.symbuf* null, %struct.symbuf** %2, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define void @close_symtab(%struct.t_symtab* nocapture %symtab) #3 {
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @done_symtab(%struct.t_symtab* nocapture %symtab) #1 {
  %1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  %2 = load %struct.symbuf** %1, align 8, !tbaa !11
  %3 = icmp eq %struct.symbuf* %2, null
  br i1 %3, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %0
  %4 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %symbuf.04 = phi %struct.symbuf* [ %2, %.preheader.lr.ph ], [ %26, %.critedge ]
  %5 = getelementptr inbounds %struct.symbuf* %symbuf.04, i64 0, i32 0
  %6 = load i32* %5, align 4, !tbaa !8
  %7 = icmp sgt i32 %6, 0
  %8 = getelementptr inbounds %struct.symbuf* %symbuf.04, i64 0, i32 1
  br i1 %7, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %12
  %indvars.iv = phi i64 [ %indvars.iv.next, %12 ], [ 0, %.preheader ]
  %9 = load i32* %4, align 4, !tbaa !13
  %10 = sext i32 %9 to i64
  %11 = icmp slt i64 %indvars.iv, %10
  br i1 %11, label %12, label %..critedge_crit_edge2

; <label>:12                                      ; preds = %.lr.ph
  %13 = load i8*** %8, align 8, !tbaa !2
  %14 = getelementptr inbounds i8** %13, i64 %indvars.iv
  %15 = load i8** %14, align 8, !tbaa !9
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 175, i8* %15) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %16 = load i32* %5, align 4, !tbaa !8
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %indvars.iv.next, %17
  br i1 %18, label %.lr.ph, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %12
  %19 = trunc i64 %indvars.iv.next to i32
  br label %.critedge

..critedge_crit_edge2:                            ; preds = %.lr.ph
  %20 = trunc i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.preheader, %..critedge_crit_edge2, %..critedge_crit_edge
  %i.0.lcssa = phi i32 [ %20, %..critedge_crit_edge2 ], [ %19, %..critedge_crit_edge ], [ 0, %.preheader ]
  %21 = load i32* %4, align 4, !tbaa !13
  %22 = sub nsw i32 %21, %i.0.lcssa
  store i32 %22, i32* %4, align 4, !tbaa !13
  %23 = bitcast i8*** %8 to i8**
  %24 = load i8** %23, align 8, !tbaa !2
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 177, i8* %24) #6
  %25 = getelementptr inbounds %struct.symbuf* %symbuf.04, i64 0, i32 2
  %26 = load %struct.symbuf** %25, align 8, !tbaa !14
  %27 = bitcast %struct.symbuf* %symbuf.04 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 180, i8* %27) #6
  %28 = icmp eq %struct.symbuf* %26, null
  br i1 %28, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.critedge, %0
  store %struct.symbuf* null, %struct.symbuf** %1, align 8, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @free_symtab(%struct.t_symtab* nocapture %symtab) #1 {
  %1 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  %2 = load %struct.symbuf** %1, align 8, !tbaa !11
  %3 = icmp eq %struct.symbuf* %2, null
  br i1 %3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  br label %5

; <label>:5                                       ; preds = %.lr.ph, %5
  %symbuf.01 = phi %struct.symbuf* [ %2, %.lr.ph ], [ %12, %5 ]
  %6 = getelementptr inbounds %struct.symbuf* %symbuf.01, i64 0, i32 0
  %7 = load i32* %6, align 4, !tbaa !8
  %8 = load i32* %4, align 4, !tbaa !13
  %9 = icmp slt i32 %7, %8
  %. = select i1 %9, i32 %7, i32 %8
  %10 = sub nsw i32 %8, %.
  store i32 %10, i32* %4, align 4, !tbaa !13
  %11 = getelementptr inbounds %struct.symbuf* %symbuf.01, i64 0, i32 2
  %12 = load %struct.symbuf** %11, align 8, !tbaa !14
  %13 = bitcast %struct.symbuf* %symbuf.01 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 196, i8* %13) #6
  %14 = icmp eq %struct.symbuf* %12, null
  br i1 %14, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %5, %0
  store %struct.symbuf* null, %struct.symbuf** %1, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_symtab(%struct.__sFILE* %fp, i32 %indent, i8* %title, %struct.t_symtab* %symtab) #1 {
  %1 = bitcast %struct.t_symtab* %symtab to i8*
  %2 = tail call i32 @available(%struct.__sFILE* %fp, i8* %1, i8* %title) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %.loopexit, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 0
  %6 = load i32* %5, align 4, !tbaa !13
  %7 = tail call i32 @pr_title_n(%struct.__sFILE* %fp, i32 %indent, i8* %title, i32 %6) #6
  %8 = getelementptr inbounds %struct.t_symtab* %symtab, i64 0, i32 1
  %symbuf.05 = load %struct.symbuf** %8, align 8
  %9 = icmp eq %struct.symbuf* %symbuf.05, null
  br i1 %9, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %4
  %10 = load i32* %5, align 4, !tbaa !13
  %11 = icmp eq %struct.__sFILE* %fp, null
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %symbuf.09 = phi %struct.symbuf* [ %symbuf.05, %.preheader.lr.ph ], [ %symbuf.0, %.critedge ]
  %nr.07 = phi i32 [ %10, %.preheader.lr.ph ], [ %33, %.critedge ]
  %i.06 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.1.lcssa, %.critedge ]
  %12 = getelementptr inbounds %struct.symbuf* %symbuf.09, i64 0, i32 0
  %13 = load i32* %12, align 4, !tbaa !8
  %14 = icmp sgt i32 %13, 0
  %15 = icmp sgt i32 %nr.07, 0
  %or.cond1 = and i1 %15, %14
  br i1 %or.cond1, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %16 = getelementptr inbounds %struct.symbuf* %symbuf.09, i64 0, i32 1
  %17 = sext i32 %nr.07 to i64
  br label %18

; <label>:18                                      ; preds = %.lr.ph, %27
  %19 = phi i32 [ %13, %.lr.ph ], [ %28, %27 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %27 ]
  %i.12 = phi i32 [ %i.06, %.lr.ph ], [ %i.2, %27 ]
  br i1 %11, label %27, label %20

; <label>:20                                      ; preds = %18
  %21 = tail call i32 @pr_indent(%struct.__sFILE* %fp, i32 %7) #6
  %22 = add nsw i32 %i.12, 1
  %23 = load i8*** %16, align 8, !tbaa !2
  %24 = getelementptr inbounds i8** %23, i64 %indvars.iv
  %25 = load i8** %24, align 8, !tbaa !9
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* %title, i32 %i.12, i8* %25) #6
  %.pre = load i32* %12, align 4, !tbaa !8
  br label %27

; <label>:27                                      ; preds = %18, %20
  %28 = phi i32 [ %.pre, %20 ], [ %19, %18 ]
  %i.2 = phi i32 [ %22, %20 ], [ %i.12, %18 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %indvars.iv.next, %29
  %31 = icmp sgt i64 %17, %indvars.iv.next
  %or.cond = and i1 %31, %30
  br i1 %or.cond, label %18, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %27
  %32 = trunc i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.preheader
  %j.0.lcssa = phi i32 [ %32, %..critedge_crit_edge ], [ 0, %.preheader ]
  %i.1.lcssa = phi i32 [ %i.2, %..critedge_crit_edge ], [ %i.06, %.preheader ]
  %33 = sub nsw i32 %nr.07, %j.0.lcssa
  %34 = getelementptr inbounds %struct.symbuf* %symbuf.09, i64 0, i32 2
  %symbuf.0 = load %struct.symbuf** %34, align 8
  %35 = icmp eq %struct.symbuf* %symbuf.0, null
  br i1 %35, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.critedge, %4, %0
  ret void
}

; Function Attrs: optsize
declare i32 @available(%struct.__sFILE*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @pr_title_n(%struct.__sFILE*, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @pr_indent(%struct.__sFILE*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc %struct.symbuf* @new_symbuf() #1 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 108, i32 1, i32 24) #6
  %2 = bitcast i8* %1 to %struct.symbuf*
  %3 = bitcast i8* %1 to i32*
  store i32 5, i32* %3, align 4, !tbaa !8
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 110, i32 5, i32 8) #6
  %5 = getelementptr inbounds i8* %1, i64 8
  %6 = bitcast i8* %5 to i8**
  store i8* %4, i8** %6, align 8, !tbaa !2
  %7 = getelementptr inbounds i8* %1, i64 16
  %8 = bitcast i8* %7 to %struct.symbuf**
  store %struct.symbuf* null, %struct.symbuf** %8, align 8, !tbaa !14
  ret %struct.symbuf* %2
}

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 8}
!3 = !{!"symbuf", !4, i64 0, !7, i64 8, !7, i64 16}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!3, !4, i64 0}
!9 = !{!7, !7, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !7, i64 8}
!12 = !{!"", !4, i64 0, !7, i64 8}
!13 = !{!12, !4, i64 0}
!14 = !{!3, !7, i64 16}
