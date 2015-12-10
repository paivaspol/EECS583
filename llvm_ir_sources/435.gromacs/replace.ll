; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/replace.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str1 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/replace.c\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7
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
define i8* @replace(i8* %string, i8* nocapture readonly %search, i8* nocapture readonly %replace) #3 {
  %1 = tail call i64 @strlen(i8* %search) #7
  %2 = trunc i64 %1 to i32
  %3 = tail call i64 @strlen(i8* %string) #7
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i8* %string, null
  %6 = icmp eq i32 %2, 0
  %or.cond = or i1 %5, %6
  %7 = icmp eq i32 %4, 0
  %or.cond3 = or i1 %or.cond, %7
  br i1 %or.cond3, label %8, label %11

; <label>:8                                       ; preds = %0
  br i1 %5, label %.loopexit7, label %9

; <label>:9                                       ; preds = %8
  %10 = tail call i8* @strdup(i8* %string) #7
  br label %.loopexit7

; <label>:11                                      ; preds = %0
  %12 = tail call i64 @strlen(i8* %replace) #7
  %13 = trunc i64 %12 to i32
  %14 = mul nsw i32 %13, %4
  %15 = sdiv i32 %14, %2
  %16 = icmp sgt i32 %4, %15
  %. = select i1 %16, i32 %4, i32 %15
  %17 = add nsw i32 %., 1
  %18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 54, i32 %17, i32 1) #7
  %19 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %18, i1 false)
  %20 = tail call i8* @__strcpy_chk(i8* %18, i8* %string, i64 %19) #7
  %21 = tail call i8* @strstr(i8* %18, i8* %search) #7
  %22 = icmp eq i8* %21, null
  br i1 %22, label %.loopexit7, label %.lr.ph19

.lr.ph19:                                         ; preds = %11
  %23 = icmp slt i32 %2, %13
  %24 = icmp sgt i32 %13, 0
  %25 = sub i64 %12, %1
  %sext = shl i64 %12, 32
  %26 = ashr exact i64 %sext, 32
  %27 = icmp sgt i32 %2, %13
  %28 = sub i32 %2, %13
  %29 = add i32 %13, -1
  %sext30 = shl i64 %25, 32
  %30 = ashr exact i64 %sext30, 32
  %sext31 = shl i64 %1, 32
  %31 = ashr exact i64 %sext31, 32
  br label %32

; <label>:32                                      ; preds = %.lr.ph19, %.loopexit
  %33 = phi i8* [ %21, %.lr.ph19 ], [ %68, %.loopexit ]
  br i1 %23, label %53, label %.preheader6

.preheader6:                                      ; preds = %32
  br i1 %24, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader6 ]
  %34 = getelementptr inbounds i8* %replace, i64 %indvars.iv
  %35 = load i8* %34, align 1, !tbaa !13
  %36 = getelementptr inbounds i8* %33, i64 %indvars.iv
  store i8 %35, i8* %36, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %29
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader6
  %i.0.lcssa = phi i32 [ 0, %.preheader6 ], [ %13, %.lr.ph ]
  br i1 %27, label %.preheader5, label %.loopexit

.preheader5:                                      ; preds = %._crit_edge
  %37 = add i32 %28, %i.0.lcssa
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8* %33, i64 %38
  %40 = load i8* %39, align 1, !tbaa !13
  %41 = icmp eq i8 %40, 0
  %42 = sext i32 %i.0.lcssa to i64
  %43 = getelementptr inbounds i8* %33, i64 %42
  br i1 %41, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %.preheader5, %.lr.ph10
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %.lr.ph10 ], [ %42, %.preheader5 ]
  %44 = phi i8* [ %52, %.lr.ph10 ], [ %43, %.preheader5 ]
  %45 = phi i8 [ %50, %.lr.ph10 ], [ %40, %.preheader5 ]
  store i8 %45, i8* %44, align 1, !tbaa !13
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  %46 = trunc i64 %indvars.iv.next23 to i32
  %47 = add i32 %28, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8* %33, i64 %48
  %50 = load i8* %49, align 1, !tbaa !13
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr inbounds i8* %33, i64 %indvars.iv.next23
  br i1 %51, label %._crit_edge11, label %.lr.ph10

._crit_edge11:                                    ; preds = %.lr.ph10, %.preheader5
  %.lcssa = phi i8* [ %43, %.preheader5 ], [ %52, %.lr.ph10 ]
  store i8 0, i8* %.lcssa, align 1, !tbaa !13
  br label %.loopexit

; <label>:53                                      ; preds = %32
  %54 = tail call i64 @strlen(i8* %33) #7
  %55 = trunc i64 %54 to i32
  %56 = icmp slt i32 %55, %2
  br i1 %56, label %.preheader, label %.lr.ph15

.lr.ph15:                                         ; preds = %53
  %sext32 = shl i64 %54, 32
  %57 = ashr exact i64 %sext32, 32
  br label %58

.preheader:                                       ; preds = %58, %53
  br i1 %24, label %.lr.ph17, label %.loopexit

; <label>:58                                      ; preds = %58, %.lr.ph15
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %58 ], [ %57, %.lr.ph15 ]
  %59 = getelementptr inbounds i8* %33, i64 %indvars.iv24
  %60 = load i8* %59, align 1, !tbaa !13
  %61 = add nsw i64 %30, %indvars.iv24
  %62 = getelementptr inbounds i8* %33, i64 %61
  store i8 %60, i8* %62, align 1, !tbaa !13
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, -1
  %63 = icmp sgt i64 %indvars.iv24, %31
  br i1 %63, label %58, label %.preheader

.lr.ph17:                                         ; preds = %.preheader, %.lr.ph17
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %.lr.ph17 ], [ 0, %.preheader ]
  %64 = getelementptr inbounds i8* %replace, i64 %indvars.iv26
  %65 = load i8* %64, align 1, !tbaa !13
  %66 = getelementptr inbounds i8* %33, i64 %indvars.iv26
  store i8 %65, i8* %66, align 1, !tbaa !13
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %lftr.wideiv28 = trunc i64 %indvars.iv26 to i32
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %29
  br i1 %exitcond29, label %.loopexit, label %.lr.ph17

.loopexit:                                        ; preds = %.lr.ph17, %.preheader, %._crit_edge, %._crit_edge11
  %67 = getelementptr inbounds i8* %33, i64 %26
  %68 = tail call i8* @strstr(i8* %67, i8* %search) #7
  %69 = icmp eq i8* %68, null
  br i1 %69, label %.loopexit7, label %32

.loopexit7:                                       ; preds = %.loopexit, %11, %9, %8
  %.0 = phi i8* [ %10, %9 ], [ null, %8 ], [ %18, %11 ], [ %18, %.loopexit ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #5

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i8* @replaceww(i8* %string, i8* nocapture readonly %search, i8* nocapture readonly %replace) #3 {
  %1 = tail call i64 @strlen(i8* %search) #7
  %2 = trunc i64 %1 to i32
  %3 = tail call i64 @strlen(i8* %string) #7
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i8* %string, null
  %6 = icmp eq i32 %2, 0
  %or.cond = or i1 %5, %6
  %7 = icmp eq i32 %4, 0
  %or.cond3 = or i1 %or.cond, %7
  br i1 %or.cond3, label %8, label %11

; <label>:8                                       ; preds = %0
  br i1 %5, label %.loopexit15, label %9

; <label>:9                                       ; preds = %8
  %10 = tail call i8* @strdup(i8* %string) #7
  br label %.loopexit15

; <label>:11                                      ; preds = %0
  %12 = tail call i64 @strlen(i8* %replace) #7
  %13 = trunc i64 %12 to i32
  %14 = mul nsw i32 %13, %4
  %15 = sdiv i32 %14, %2
  %16 = icmp sgt i32 %4, %15
  %. = select i1 %16, i32 %4, i32 %15
  %17 = add nsw i32 %., 1
  %18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 98, i32 %17, i32 1) #7
  %19 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %18, i1 false)
  %20 = tail call i8* @__strcpy_chk(i8* %18, i8* %string, i64 %19) #7
  %21 = tail call i8* @strstr(i8* %18, i8* %search) #7
  %22 = icmp eq i8* %21, null
  br i1 %22, label %.loopexit15, label %.lr.ph28

.lr.ph28:                                         ; preds = %11
  %sext = shl i64 %1, 32
  %23 = ashr exact i64 %sext, 32
  %24 = icmp slt i32 %2, %13
  %25 = icmp sgt i32 %13, 0
  %26 = sub i64 %12, %1
  %27 = icmp sgt i32 %2, %13
  %28 = sub i32 %2, %13
  %29 = add i32 %13, -1
  %sext39 = shl i64 %26, 32
  %30 = ashr exact i64 %sext39, 32
  %sext40 = shl i64 %1, 32
  %31 = ashr exact i64 %sext40, 32
  br label %32

; <label>:32                                      ; preds = %.lr.ph28, %.backedge
  %33 = phi i8* [ %21, %.lr.ph28 ], [ %91, %.backedge ]
  %bufptr.026 = phi i8* [ %18, %.lr.ph28 ], [ %bufptr.0.be, %.backedge ]
  %34 = icmp eq i8* %33, %bufptr.026
  br i1 %34, label %46, label %35

; <label>:35                                      ; preds = %32
  %36 = getelementptr inbounds i8* %33, i64 -1
  %37 = load i8* %36, align 1, !tbaa !13
  %isascii.i.i10 = icmp sgt i8 %37, -1
  br i1 %isascii.i.i10, label %38, label %43

; <label>:38                                      ; preds = %35
  %39 = sext i8 %37 to i64
  %40 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %39
  %41 = load i32* %40, align 4, !tbaa !14
  %42 = and i32 %41, 1280
  br label %isalnum.exit

; <label>:43                                      ; preds = %35
  %44 = sext i8 %37 to i32
  %45 = tail call i32 @__maskrune(i32 %44, i64 1280) #7
  br label %isalnum.exit

isalnum.exit:                                     ; preds = %38, %43
  %.sink.i.in.i = phi i32 [ %42, %38 ], [ %45, %43 ]
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0
  br i1 %.sink.i.i, label %46, label %.backedge

; <label>:46                                      ; preds = %isalnum.exit, %32
  %47 = getelementptr inbounds i8* %33, i64 %23
  %48 = load i8* %47, align 1, !tbaa !13
  %isascii.i.i611 = icmp sgt i8 %48, -1
  br i1 %isascii.i.i611, label %49, label %54

; <label>:49                                      ; preds = %46
  %50 = sext i8 %48 to i64
  %51 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %50
  %52 = load i32* %51, align 4, !tbaa !14
  %53 = and i32 %52, 1280
  br label %isalnum.exit9

; <label>:54                                      ; preds = %46
  %55 = sext i8 %48 to i32
  %56 = tail call i32 @__maskrune(i32 %55, i64 1280) #7
  br label %isalnum.exit9

isalnum.exit9:                                    ; preds = %49, %54
  %.sink.i.in.i7 = phi i32 [ %53, %49 ], [ %56, %54 ]
  %.sink.i.i8 = icmp eq i32 %.sink.i.in.i7, 0
  br i1 %.sink.i.i8, label %57, label %.backedge

; <label>:57                                      ; preds = %isalnum.exit9
  br i1 %24, label %77, label %.preheader14

.preheader14:                                     ; preds = %57
  br i1 %25, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader14, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader14 ]
  %58 = getelementptr inbounds i8* %replace, i64 %indvars.iv
  %59 = load i8* %58, align 1, !tbaa !13
  %60 = getelementptr inbounds i8* %33, i64 %indvars.iv
  store i8 %59, i8* %60, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %29
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader14
  %i.0.lcssa = phi i32 [ 0, %.preheader14 ], [ %13, %.lr.ph ]
  br i1 %27, label %.preheader13, label %.backedge

.preheader13:                                     ; preds = %._crit_edge
  %61 = add i32 %28, %i.0.lcssa
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8* %33, i64 %62
  %64 = load i8* %63, align 1, !tbaa !13
  %65 = icmp eq i8 %64, 0
  %66 = sext i32 %i.0.lcssa to i64
  %67 = getelementptr inbounds i8* %33, i64 %66
  br i1 %65, label %._crit_edge19, label %.lr.ph18

.lr.ph18:                                         ; preds = %.preheader13, %.lr.ph18
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %.lr.ph18 ], [ %66, %.preheader13 ]
  %68 = phi i8* [ %76, %.lr.ph18 ], [ %67, %.preheader13 ]
  %69 = phi i8 [ %74, %.lr.ph18 ], [ %64, %.preheader13 ]
  store i8 %69, i8* %68, align 1, !tbaa !13
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, 1
  %70 = trunc i64 %indvars.iv.next32 to i32
  %71 = add i32 %28, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8* %33, i64 %72
  %74 = load i8* %73, align 1, !tbaa !13
  %75 = icmp eq i8 %74, 0
  %76 = getelementptr inbounds i8* %33, i64 %indvars.iv.next32
  br i1 %75, label %._crit_edge19, label %.lr.ph18

._crit_edge19:                                    ; preds = %.lr.ph18, %.preheader13
  %.lcssa = phi i8* [ %67, %.preheader13 ], [ %76, %.lr.ph18 ]
  store i8 0, i8* %.lcssa, align 1, !tbaa !13
  br label %.backedge

; <label>:77                                      ; preds = %57
  %78 = tail call i64 @strlen(i8* %33) #7
  %79 = trunc i64 %78 to i32
  %80 = icmp slt i32 %79, %2
  br i1 %80, label %.preheader, label %.lr.ph23

.lr.ph23:                                         ; preds = %77
  %sext41 = shl i64 %78, 32
  %81 = ashr exact i64 %sext41, 32
  br label %82

.preheader:                                       ; preds = %82, %77
  br i1 %25, label %.lr.ph25, label %.backedge

; <label>:82                                      ; preds = %82, %.lr.ph23
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %82 ], [ %81, %.lr.ph23 ]
  %83 = getelementptr inbounds i8* %33, i64 %indvars.iv33
  %84 = load i8* %83, align 1, !tbaa !13
  %85 = add nsw i64 %30, %indvars.iv33
  %86 = getelementptr inbounds i8* %33, i64 %85
  store i8 %84, i8* %86, align 1, !tbaa !13
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, -1
  %87 = icmp sgt i64 %indvars.iv33, %31
  br i1 %87, label %82, label %.preheader

.lr.ph25:                                         ; preds = %.preheader, %.lr.ph25
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph25 ], [ 0, %.preheader ]
  %88 = getelementptr inbounds i8* %replace, i64 %indvars.iv35
  %89 = load i8* %88, align 1, !tbaa !13
  %90 = getelementptr inbounds i8* %33, i64 %indvars.iv35
  store i8 %89, i8* %90, align 1, !tbaa !13
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %lftr.wideiv37 = trunc i64 %indvars.iv35 to i32
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %29
  br i1 %exitcond38, label %.backedge, label %.lr.ph25

.backedge:                                        ; preds = %.lr.ph25, %isalnum.exit, %isalnum.exit9, %._crit_edge19, %._crit_edge, %.preheader
  %.pn.in.in = phi i64 [ %12, %.preheader ], [ %12, %._crit_edge ], [ %12, %._crit_edge19 ], [ %1, %isalnum.exit9 ], [ %1, %isalnum.exit ], [ %12, %.lr.ph25 ]
  %.pn.in = shl i64 %.pn.in.in, 32
  %.pn = ashr exact i64 %.pn.in, 32
  %bufptr.0.be = getelementptr inbounds i8* %33, i64 %.pn
  %91 = tail call i8* @strstr(i8* %bufptr.0.be, i8* %search) #7
  %92 = icmp eq i8* %91, null
  br i1 %92, label %.loopexit15, label %32

.loopexit15:                                      ; preds = %.backedge, %11, %9, %8
  %.0 = phi i8* [ %10, %9 ], [ null, %8 ], [ %18, %11 ], [ %18, %.backedge ]
  ret i8* %.0
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #1

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }

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
!14 = !{!7, !7, i64 0}
