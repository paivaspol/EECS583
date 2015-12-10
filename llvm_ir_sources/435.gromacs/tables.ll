; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/tables.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_tabledata = type { i32, i32, float, float*, float*, float* }

@bCoulomb = global [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0], align 16
@make_tables.fns = internal unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"ctab.xvg\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"dtab.xvg\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"rtab.xvg\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"td\00", align 1
@.str4 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/tables.c\00", align 1
@.str5 = private unnamed_addr constant [74 x i8] c"Tables in file %s not long enough for cut-off:\0A\09should be at least %f nm\0A\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"fr->coulvdwtab\00", align 1
@.str7 = private unnamed_addr constant [69 x i8] c"Generated table with %d data points for %s.\0ATabscale = %g points/nm\0A\00", align 1
@tabnm = internal unnamed_addr constant [13 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str35, i32 0, i32 0)], align 16
@.str8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"%15.10e  %15.10e  %15.10e\0A\00", align 1
@.str11 = private unnamed_addr constant [33 x i8] c"Invalid eeltype %d in %s line %d\00", align 1
@.str12 = private unnamed_addr constant [33 x i8] c"Invalid vdwtype %d in %s line %d\00", align 1
@.str13 = private unnamed_addr constant [58 x i8] c"Trying to read file %s, but nr columns = %d, should be %d\00", align 1
@.str14 = private unnamed_addr constant [36 x i8] c"All elements in table %s are zero!\0A\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"yy[i]\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@.str17 = private unnamed_addr constant [71 x i8] c"Read user tables from %s with %d data points.\0ATabscale = %g points/nm\0A\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"td->x\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c"td->v\00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"td->v2\00", align 1
@debug = external global %struct.__sFILE*
@.str21 = private unnamed_addr constant [9 x i8] c"Further\0A\00", align 1
@.str22 = private unnamed_addr constant [43 x i8] c"Table type %d not implemented yet. (%s,%d)\00", align 1
@.str23 = private unnamed_addr constant [4 x i8] c"LJ6\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"LJ12\00", align 1
@.str25 = private unnamed_addr constant [9 x i8] c"LJ6Shift\00", align 1
@.str26 = private unnamed_addr constant [10 x i8] c"LJ12Shift\00", align 1
@.str27 = private unnamed_addr constant [6 x i8] c"Shift\00", align 1
@.str28 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@.str29 = private unnamed_addr constant [5 x i8] c"COUL\00", align 1
@.str30 = private unnamed_addr constant [6 x i8] c"Ewald\00", align 1
@.str31 = private unnamed_addr constant [10 x i8] c"LJ6Switch\00", align 1
@.str32 = private unnamed_addr constant [11 x i8] c"LJ12Switch\00", align 1
@.str33 = private unnamed_addr constant [11 x i8] c"COULSwitch\00", align 1
@.str34 = private unnamed_addr constant [7 x i8] c"EXPMIN\00", align 1
@.str35 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str36 = private unnamed_addr constant [32 x i8] c"Bad XA input to function splint\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8
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
define void @make_tables(%struct.__sFILE* %out, %struct.t_forcerec* %fr, i32 %bVerbose, i8* %fn) #3 {
  %yy.i = alloca float**, align 8
  %ny.i = alloca i32, align 4
  %tabsel = alloca [3 x i32], align 4
  %1 = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 0
  %2 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %3 = load i32* %2, align 4, !tbaa !14
  switch i32 %3, label %34 [
    i32 0, label %4
    i32 5, label %5
    i32 6, label %5
    i32 8, label %17
    i32 4, label %25
    i32 3, label %25
    i32 1, label %31
    i32 2, label %31
    i32 7, label %32
    i32 9, label %33
  ]

; <label>:4                                       ; preds = %0
  store i32 6, i32* %1, align 4, !tbaa !17
  br label %35

; <label>:5                                       ; preds = %0, %0
  %6 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %7 = load float* %6, align 4, !tbaa !18
  %8 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22
  %9 = load float* %8, align 4, !tbaa !19
  %10 = fcmp ogt float %7, %9
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %5
  %12 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 13
  %13 = load i32* %12, align 4, !tbaa !20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

; <label>:15                                      ; preds = %11
  store i32 4, i32* %1, align 4, !tbaa !17
  br label %35

; <label>:16                                      ; preds = %11, %5
  store i32 6, i32* %1, align 4, !tbaa !17
  br label %35

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %19 = load float* %18, align 4, !tbaa !18
  %20 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22
  %21 = load float* %20, align 4, !tbaa !19
  %22 = fcmp ogt float %19, %21
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %17
  store i32 4, i32* %1, align 4, !tbaa !17
  br label %35

; <label>:24                                      ; preds = %17
  store i32 6, i32* %1, align 4, !tbaa !17
  br label %35

; <label>:25                                      ; preds = %0, %0
  %26 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 13
  %27 = load i32* %26, align 4, !tbaa !20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

; <label>:29                                      ; preds = %25
  store i32 7, i32* %1, align 4, !tbaa !17
  br label %35

; <label>:30                                      ; preds = %25
  store i32 6, i32* %1, align 4, !tbaa !17
  br label %35

; <label>:31                                      ; preds = %0, %0
  store i32 5, i32* %1, align 4, !tbaa !17
  br label %35

; <label>:32                                      ; preds = %0
  store i32 10, i32* %1, align 4, !tbaa !17
  br label %35

; <label>:33                                      ; preds = %0
  store i32 12, i32* %1, align 4, !tbaa !17
  br label %35

; <label>:34                                      ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str11, i64 0, i64 0), i32 %3, i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 442) #8
  br label %35

; <label>:35                                      ; preds = %34, %33, %32, %31, %30, %29, %24, %23, %16, %15, %4
  %36 = phi i32 [ undef, %34 ], [ 12, %33 ], [ 10, %32 ], [ 5, %31 ], [ 6, %30 ], [ 7, %29 ], [ 6, %24 ], [ 4, %23 ], [ 6, %16 ], [ 4, %15 ], [ 6, %4 ]
  %37 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %38 = load i32* %37, align 4, !tbaa !21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

; <label>:40                                      ; preds = %35
  %41 = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 1
  store i32 0, i32* %41, align 4, !tbaa !17
  %42 = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 2
  store i32 11, i32* %42, align 4, !tbaa !17
  br label %set_table_type.exit

; <label>:43                                      ; preds = %35
  %44 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 34
  %45 = load i32* %44, align 4, !tbaa !22
  switch i32 %45, label %58 [
    i32 1, label %46
    i32 2, label %49
    i32 3, label %52
    i32 0, label %55
  ]

; <label>:46                                      ; preds = %43
  %47 = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 1
  store i32 8, i32* %47, align 4, !tbaa !17
  %48 = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 2
  store i32 9, i32* %48, align 4, !tbaa !17
  br label %set_table_type.exit

; <label>:49                                      ; preds = %43
  %50 = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 1
  store i32 2, i32* %50, align 4, !tbaa !17
  %51 = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 2
  store i32 3, i32* %51, align 4, !tbaa !17
  br label %set_table_type.exit

; <label>:52                                      ; preds = %43
  %53 = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 1
  store i32 12, i32* %53, align 4, !tbaa !17
  %54 = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 2
  store i32 12, i32* %54, align 4, !tbaa !17
  br label %set_table_type.exit

; <label>:55                                      ; preds = %43
  %56 = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 1
  store i32 0, i32* %56, align 4, !tbaa !17
  %57 = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 2
  store i32 1, i32* %57, align 4, !tbaa !17
  br label %set_table_type.exit

; <label>:58                                      ; preds = %43
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str12, i64 0, i64 0), i32 %45, i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 470) #8
  br label %set_table_type.exit

set_table_type.exit:                              ; preds = %40, %46, %49, %52, %55, %58
  %59 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 485, i32 3, i32 40) #8
  %60 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 17
  store float 0.000000e+00, float* %60, align 4, !tbaa !23
  %61 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  %62 = load float* %61, align 4, !tbaa !24
  %63 = icmp eq i32 %36, 12
  %64 = zext i1 %63 to i32
  %bGenTab.0.45 = xor i32 %64, 1
  %.bReadTab.046 = zext i1 %63 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %set_table_type.exit, %._crit_edge
  %indvars.iv.next3649 = phi i64 [ 1, %set_table_type.exit ], [ %indvars.iv.next36, %._crit_edge ]
  %.bReadTab.048 = phi i32 [ %.bReadTab.046, %set_table_type.exit ], [ %.bReadTab.0, %._crit_edge ]
  %bGenTab.0.47 = phi i32 [ %bGenTab.0.45, %set_table_type.exit ], [ %bGenTab.0., %._crit_edge ]
  %.phi.trans.insert = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 %indvars.iv.next3649
  %.pre = load i32* %.phi.trans.insert, align 4, !tbaa !17
  %65 = icmp eq i32 %.pre, 12
  %bGenTab.0. = select i1 %65, i32 %bGenTab.0.47, i32 1
  %.bReadTab.0 = select i1 %65, i32 1, i32 %.bReadTab.048
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv.next3649, 1
  %exitcond37 = icmp eq i64 %indvars.iv.next36, 3
  br i1 %exitcond37, label %66, label %._crit_edge

; <label>:66                                      ; preds = %._crit_edge
  %67 = bitcast i8* %59 to %struct.t_tabledata*
  %68 = icmp ne i32 %.bReadTab.0, 0
  br i1 %68, label %69, label %176

; <label>:69                                      ; preds = %66
  %70 = bitcast float*** %yy.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70)
  %71 = bitcast i32* %ny.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71)
  store float** null, float*** %yy.i, align 8, !tbaa !25
  %72 = tail call i8* @low_libfn(i8* %fn, i32 1) #8
  %73 = call i32 @read_xvg(i8* %72, float*** %yy.i, i32* %ny.i) #8
  %74 = load i32* %ny.i, align 4, !tbaa !17
  %75 = icmp eq i32 %74, 7
  br i1 %75, label %.preheader2.i, label %76

; <label>:76                                      ; preds = %69
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), i8* %72, i32 %74, i32 7) #8
  br label %.preheader2.i

.preheader2.i:                                    ; preds = %76, %69
  %77 = icmp sgt i32 %73, 0
  br i1 %77, label %.preheader1.lr.ph.i, label %.critedge.i

.preheader1.lr.ph.i:                              ; preds = %.preheader2.i
  %78 = load i32* %ny.i, align 4, !tbaa !17
  %79 = icmp sgt i32 %78, 1
  %80 = load float*** %yy.i, align 8, !tbaa !25
  %81 = add i32 %78, -1
  %82 = sext i32 %73 to i64
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %._crit_edge12.i, %.preheader1.lr.ph.i
  %indvars.iv25.i = phi i64 [ 0, %.preheader1.lr.ph.i ], [ %indvars.iv.next26.i, %._crit_edge12.i ]
  %bCont.014.i = phi i32 [ 1, %.preheader1.lr.ph.i ], [ %bCont.1.lcssa.i, %._crit_edge12.i ]
  br i1 %79, label %.lr.ph11.i, label %._crit_edge12.i

.lr.ph11.i:                                       ; preds = %.preheader1.i, %.lr.ph11.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %.lr.ph11.i ], [ 1, %.preheader1.i ]
  %bCont.19.i = phi i32 [ %bCont.2.i, %.lr.ph11.i ], [ %bCont.014.i, %.preheader1.i ]
  %83 = getelementptr inbounds float** %80, i64 %indvars.iv21.i
  %84 = load float** %83, align 8, !tbaa !25
  %85 = getelementptr inbounds float* %84, i64 %indvars.iv25.i
  %86 = load float* %85, align 4, !tbaa !26
  %fabsf.i = call float @fabsf(float %86) #6
  %87 = fpext float %fabsf.i to double
  %88 = fcmp ogt double %87, 1.200000e-38
  %bCont.2.i = select i1 %88, i32 0, i32 %bCont.19.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %lftr.wideiv33 = trunc i64 %indvars.iv21.i to i32
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %81
  br i1 %exitcond34, label %._crit_edge12.i, label %.lr.ph11.i

._crit_edge12.i:                                  ; preds = %.lr.ph11.i, %.preheader1.i
  %bCont.1.lcssa.i = phi i32 [ %bCont.014.i, %.preheader1.i ], [ %bCont.2.i, %.lr.ph11.i ]
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  %89 = icmp ne i32 %bCont.1.lcssa.i, 0
  %90 = icmp slt i64 %indvars.iv.next26.i, %82
  %or.cond.i = and i1 %90, %89
  br i1 %or.cond.i, label %.preheader1.i, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %._crit_edge12.i
  %91 = trunc i64 %indvars.iv.next26.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %.preheader2.i
  %nx0.0.lcssa.i = phi i32 [ %91, %..critedge_crit_edge.i ], [ 0, %.preheader2.i ]
  %92 = icmp eq i32 %nx0.0.lcssa.i, %73
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %.critedge.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str14, i64 0, i64 0), i8* %72) #8
  br label %94

; <label>:94                                      ; preds = %93, %.critedge.i
  %95 = add i32 %73, -1
  %96 = sitofp i32 %95 to float
  %97 = sext i32 %95 to i64
  %98 = load float*** %yy.i, align 8, !tbaa !25
  %99 = load float** %98, align 8, !tbaa !25
  %100 = getelementptr inbounds float* %99, i64 %97
  %101 = load float* %100, align 4, !tbaa !26
  %102 = load float* %99, align 4, !tbaa !26
  %103 = fsub float %101, %102
  %104 = fdiv float %96, %103
  br label %107

.preheader.i:                                     ; preds = %._crit_edge7.i
  %105 = load i32* %ny.i, align 4, !tbaa !17
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %.lr.ph.i, label %._crit_edge.i

; <label>:107                                     ; preds = %._crit_edge7.i, %94
  %indvars.iv18.i = phi i64 [ 0, %94 ], [ %indvars.iv.next19.i, %._crit_edge7.i ]
  %108 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv18.i
  call fastcc void @init_table(i32 %73, i32 %nx0.0.lcssa.i, float %104, %struct.t_tabledata* %108, i32 1) #8
  br i1 %77, label %.lr.ph6.i, label %._crit_edge7.i

.lr.ph6.i:                                        ; preds = %107
  %109 = load float*** %yy.i, align 8, !tbaa !25
  %110 = load float** %109, align 8, !tbaa !25
  %111 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv18.i, i32 3
  %112 = load float** %111, align 8, !tbaa !27
  %113 = shl nsw i64 %indvars.iv18.i, 1
  %114 = or i64 %113, 1
  %115 = getelementptr inbounds float** %109, i64 %114
  %116 = load float** %115, align 8, !tbaa !25
  %117 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv18.i, i32 4
  %118 = load float** %117, align 8, !tbaa !29
  %119 = add nuw nsw i64 %113, 2
  %120 = getelementptr inbounds float** %109, i64 %119
  %121 = load float** %120, align 8, !tbaa !25
  %122 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv18.i, i32 5
  %123 = load float** %122, align 8, !tbaa !30
  br label %124

; <label>:124                                     ; preds = %124, %.lr.ph6.i
  %indvars.iv16.i = phi i64 [ 0, %.lr.ph6.i ], [ %indvars.iv.next17.i, %124 ]
  %125 = getelementptr inbounds float* %110, i64 %indvars.iv16.i
  %126 = bitcast float* %125 to i32*
  %127 = load i32* %126, align 4, !tbaa !26
  %128 = getelementptr inbounds float* %112, i64 %indvars.iv16.i
  %129 = bitcast float* %128 to i32*
  store i32 %127, i32* %129, align 4, !tbaa !26
  %130 = getelementptr inbounds float* %116, i64 %indvars.iv16.i
  %131 = bitcast float* %130 to i32*
  %132 = load i32* %131, align 4, !tbaa !26
  %133 = getelementptr inbounds float* %118, i64 %indvars.iv16.i
  %134 = bitcast float* %133 to i32*
  store i32 %132, i32* %134, align 4, !tbaa !26
  %135 = getelementptr inbounds float* %121, i64 %indvars.iv16.i
  %136 = bitcast float* %135 to i32*
  %137 = load i32* %136, align 4, !tbaa !26
  %138 = getelementptr inbounds float* %123, i64 %indvars.iv16.i
  %139 = bitcast float* %138 to i32*
  store i32 %137, i32* %139, align 4, !tbaa !26
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %lftr.wideiv31 = trunc i64 %indvars.iv16.i to i32
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %95
  br i1 %exitcond32, label %._crit_edge7.i, label %124

._crit_edge7.i:                                   ; preds = %124, %107
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.i = icmp eq i64 %indvars.iv.next19.i, 3
  br i1 %exitcond20.i, label %.preheader.i, label %107

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ]
  %140 = load float*** %yy.i, align 8, !tbaa !25
  %141 = getelementptr inbounds float** %140, i64 %indvars.iv.i
  %142 = bitcast float** %141 to i8**
  %143 = load i8** %142, align 8, !tbaa !25
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 185, i8* %143) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %144 = load i32* %ny.i, align 4, !tbaa !17
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %indvars.iv.next.i, %145
  br i1 %146, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %147 = bitcast float*** %yy.i to i8**
  %148 = load i8** %147, align 8, !tbaa !25
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 186, i8* %148) #8
  %149 = icmp eq %struct.__sFILE* %out, null
  br i1 %149, label %read_tables.exit, label %150

; <label>:150                                     ; preds = %._crit_edge.i
  %151 = fpext float %104 to double
  %152 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([71 x i8]* @.str17, i64 0, i64 0), i8* %72, i32 %73, double %151) #8
  br label %read_tables.exit

read_tables.exit:                                 ; preds = %._crit_edge.i, %150
  call void @llvm.lifetime.end(i64 8, i8* %70)
  call void @llvm.lifetime.end(i64 4, i8* %71)
  %153 = getelementptr inbounds i8* %59, i64 8
  %154 = bitcast i8* %153 to i32*
  %155 = load i32* %154, align 4, !tbaa !31
  %156 = bitcast float* %60 to i32*
  store i32 %155, i32* %156, align 4, !tbaa !23
  %157 = bitcast i8* %59 to i32*
  %158 = load i32* %157, align 4, !tbaa !32
  %159 = add nsw i32 %158, -1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8* %59, i64 16
  %162 = bitcast i8* %161 to float**
  %163 = load float** %162, align 8, !tbaa !27
  %164 = getelementptr inbounds float* %163, i64 %160
  %165 = load float* %164, align 4, !tbaa !26
  store float %165, float* %61, align 4, !tbaa !24
  %166 = getelementptr inbounds i8* %59, i64 4
  %167 = bitcast i8* %166 to i32*
  %168 = load i32* %167, align 4, !tbaa !33
  %169 = bitcast i32 %155 to float
  %170 = fmul float %165, %169
  %171 = fptosi float %170 to i32
  %172 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 16
  store i32 %171, i32* %172, align 4, !tbaa !34
  %173 = fcmp olt float %165, %62
  br i1 %173, label %174, label %176

; <label>:174                                     ; preds = %read_tables.exit
  %175 = fpext float %62 to double
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([74 x i8]* @.str5, i64 0, i64 0), i8* %fn, double %175) #8
  br label %176

; <label>:176                                     ; preds = %read_tables.exit, %174, %66
  %nx.0 = phi i32 [ %171, %174 ], [ %171, %read_tables.exit ], [ 0, %66 ]
  %nx0.0 = phi i32 [ %168, %174 ], [ %168, %read_tables.exit ], [ 10, %66 ]
  %177 = icmp eq i32 %bGenTab.0., 0
  %or.cond3 = or i1 %177, %68
  br i1 %or.cond3, label %183, label %178

; <label>:178                                     ; preds = %176
  store float 5.000000e+02, float* %60, align 4, !tbaa !23
  %179 = load float* %61, align 4, !tbaa !24
  %180 = fmul float %179, 5.000000e+02
  %181 = fptosi float %180 to i32
  %182 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 16
  store i32 %181, i32* %182, align 4, !tbaa !34
  br label %183

; <label>:183                                     ; preds = %176, %178
  %nx.1 = phi i32 [ %nx.0, %176 ], [ %181, %178 ]
  %184 = mul i32 %nx.1, 12
  %185 = add i32 %184, 13
  %186 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 520, i32 %185, i32 4) #8
  %187 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 20
  %188 = bitcast float** %187 to i8**
  store i8* %186, i8** %188, align 8, !tbaa !35
  %189 = zext i1 %68 to i32
  %190 = xor i32 %189, 1
  %191 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57
  %192 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 25
  %193 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 26
  %194 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 9
  %195 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 10
  %196 = icmp eq %struct.__sFILE* %out, null
  %197 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 22
  %198 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %199 = icmp ne i32 %bVerbose, 0
  %200 = add nsw i32 %nx.1, -3
  %201 = add nsw i32 %nx.1, -4
  %202 = icmp sgt i32 %201, 1
  %203 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 28
  br label %204

; <label>:204                                     ; preds = %done_tabledata.exit._crit_edge, %183
  %205 = phi i32 [ %36, %183 ], [ %.pre39, %done_tabledata.exit._crit_edge ]
  %indvars.iv28 = phi i64 [ 0, %183 ], [ %indvars.iv.next29, %done_tabledata.exit._crit_edge ]
  switch i32 %205, label %207 [
    i32 12, label %._crit_edge40
    i32 11, label %206
  ]

._crit_edge40:                                    ; preds = %204
  %.pre41 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv28
  %.pre42 = getelementptr inbounds %struct.t_tabledata* %.pre41, i64 0, i32 0
  br label %514

; <label>:206                                     ; preds = %204
  br label %207

; <label>:207                                     ; preds = %204, %206
  %.in = phi float* [ %203, %206 ], [ %60, %204 ]
  %208 = load float* %.in, align 4
  %209 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv28
  call fastcc void @init_table(i32 %nx.1, i32 %nx0.0, float %208, %struct.t_tabledata* %209, i32 %190) #9
  %210 = load float* %191, align 4, !tbaa !36
  %211 = and i32 %205, -2
  %212 = icmp eq i32 %211, 8
  %213 = icmp eq i32 %205, 10
  %..i = or i1 %213, %212
  %214 = icmp eq i32 %205, 2
  %215 = icmp eq i32 %211, 2
  %216 = icmp eq i32 %205, 4
  %217 = or i1 %216, %215
  %218 = sext i32 %205 to i64
  %219 = getelementptr inbounds [13 x i32]* @bCoulomb, i64 0, i64 %218
  %220 = load i32* %219, align 4, !tbaa !17
  %221 = icmp eq i32 %220, 0
  %. = select i1 %221, float* %193, float* %198
  %.44 = select i1 %221, float* %192, float* %197
  %r1.0.i = load float* %.44, align 4
  %rc.0.i = load float* %., align 4
  %tp.off.i = add i32 %205, -8
  %switch.i = icmp ult i32 %tp.off.i, 3
  br i1 %switch.i, label %222, label %227

; <label>:222                                     ; preds = %207
  %223 = fsub float %rc.0.i, %r1.0.i
  %224 = fmul float %223, %223
  %225 = fmul float %223, %224
  %226 = fdiv float 1.000000e+00, %225
  br label %227

; <label>:227                                     ; preds = %222, %207
  %ksw.0.i = phi float [ %226, %222 ], [ 0.000000e+00, %207 ]
  %tp.off7.i = add i32 %205, -2
  %switch8.i = icmp ult i32 %tp.off7.i, 3
  br i1 %switch8.i, label %228, label %287

; <label>:228                                     ; preds = %227
  br i1 %216, label %230, label %229

; <label>:229                                     ; preds = %228
  %.6.i = select i1 %214, i32 6, i32 12
  br label %230

; <label>:230                                     ; preds = %229, %228
  %p.0.i = phi i32 [ 1, %228 ], [ %.6.i, %229 ]
  %231 = sitofp i32 %p.0.i to float
  %232 = add nuw nsw i32 %p.0.i, 1
  %233 = sitofp i32 %232 to float
  %234 = fmul float %r1.0.i, %233
  %235 = add nuw nsw i32 %p.0.i, 4
  %236 = sitofp i32 %235 to float
  %237 = fmul float %rc.0.i, %236
  %238 = fsub float %234, %237
  %239 = fmul float %231, %238
  %240 = fpext float %239 to double
  %241 = fpext float %rc.0.i to double
  %242 = add nuw nsw i32 %p.0.i, 2
  %243 = sitofp i32 %242 to double
  %244 = call double @llvm.pow.f64(double %241, double %243) #7
  %245 = fsub float %rc.0.i, %r1.0.i
  %246 = fmul float %245, %245
  %247 = fpext float %246 to double
  %248 = fmul double %247, %244
  %249 = fdiv double %240, %248
  %250 = fptrunc double %249 to float
  %251 = sub nsw i32 0, %p.0.i
  %252 = sitofp i32 %251 to float
  %253 = add nuw nsw i32 %p.0.i, 3
  %254 = sitofp i32 %253 to float
  %255 = fmul float %rc.0.i, %254
  %256 = fsub float %234, %255
  %257 = fmul float %252, %256
  %258 = fpext float %257 to double
  %259 = fmul float %245, %246
  %260 = fpext float %259 to double
  %261 = fmul double %260, %244
  %262 = fdiv double %258, %261
  %263 = fptrunc double %262 to float
  %264 = sitofp i32 %p.0.i to double
  %265 = call double @llvm.pow.f64(double %241, double %264) #7
  %266 = fdiv double 1.000000e+00, %265
  %267 = fpext float %250 to double
  %268 = fdiv double %267, 3.000000e+00
  %269 = fpext float %245 to double
  %270 = call double @llvm.pow.f64(double %269, double 3.000000e+00) #7
  %271 = fmul double %268, %270
  %272 = fsub double %266, %271
  %273 = fpext float %263 to double
  %274 = fmul double %273, 2.500000e-01
  %275 = fmul float %245, %259
  %276 = fpext float %275 to double
  %277 = fmul double %276, %274
  %278 = fsub double %272, %277
  %279 = fptrunc double %278 to float
  br i1 %214, label %280, label %284

; <label>:280                                     ; preds = %230
  %281 = fsub float -0.000000e+00, %250
  %282 = fsub float -0.000000e+00, %263
  %283 = fsub float -0.000000e+00, %279
  br label %284

; <label>:284                                     ; preds = %280, %230
  %A.0.i = phi float [ %281, %280 ], [ %250, %230 ]
  %B.0.i = phi float [ %282, %280 ], [ %263, %230 ]
  %C.0.i = phi float [ %283, %280 ], [ %279, %230 ]
  %285 = fdiv float %A.0.i, 3.000000e+00
  %286 = fmul float %B.0.i, 2.500000e-01
  br label %287

; <label>:287                                     ; preds = %284, %227
  %A.1.i = phi float [ %A.0.i, %284 ], [ 0.000000e+00, %227 ]
  %B.1.i = phi float [ %B.0.i, %284 ], [ 0.000000e+00, %227 ]
  %C.1.i = phi float [ %C.0.i, %284 ], [ 0.000000e+00, %227 ]
  %A_3.0.i = phi float [ %285, %284 ], [ 0.000000e+00, %227 ]
  %B_4.0.i = phi float [ %286, %284 ], [ 0.000000e+00, %227 ]
  %288 = load %struct.__sFILE** @debug, align 8, !tbaa !25
  %289 = icmp eq %struct.__sFILE* %288, null
  br i1 %289, label %294, label %290

; <label>:290                                     ; preds = %287
  %291 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i64 8, i64 1, %struct.__sFILE* %288) #7
  %292 = load %struct.__sFILE** @debug, align 8, !tbaa !25
  %293 = call i32 @fflush(%struct.__sFILE* %292) #8
  br label %294

; <label>:294                                     ; preds = %290, %287
  %295 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv28, i32 1
  %296 = load i32* %295, align 4, !tbaa !33
  %297 = getelementptr inbounds %struct.t_tabledata* %209, i64 0, i32 0
  %298 = load i32* %297, align 4, !tbaa !32
  %299 = icmp slt i32 %296, %298
  br i1 %299, label %.lr.ph.i4, label %fill_table.exit

.lr.ph.i4:                                        ; preds = %294
  %300 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv28, i32 3
  %301 = fmul float %r1.0.i, 3.000000e+00
  %302 = fadd float %r1.0.i, %rc.0.i
  %303 = fpext float %A.1.i to double
  %304 = fmul double %303, -2.000000e+00
  %305 = fpext float %B.1.i to double
  %306 = fmul double %305, 3.000000e+00
  %307 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv28, i32 4
  %308 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv28, i32 5
  %309 = fmul float %210, %210
  %310 = fpext float %210 to double
  %311 = fmul float %210, 4.000000e+00
  %312 = fmul float %210, %311
  %313 = fmul float %210, %312
  %314 = fpext float %313 to double
  %315 = sext i32 %296 to i64
  br label %316

; <label>:316                                     ; preds = %498, %.lr.ph.i4
  %indvars.iv.i5 = phi i64 [ %315, %.lr.ph.i4 ], [ %indvars.iv.next.i7, %498 ]
  %317 = load float** %300, align 8, !tbaa !27
  %318 = getelementptr inbounds float* %317, i64 %indvars.iv.i5
  %319 = load float* %318, align 4, !tbaa !26
  %320 = fmul float %319, %319
  %321 = fmul float %320, %320
  %322 = fmul float %320, %321
  %323 = fdiv float 1.000000e+00, %322
  %324 = fmul float %323, %323
  br i1 %switch.i, label %325, label %340

; <label>:325                                     ; preds = %316
  %326 = fsub float %rc.0.i, %319
  %327 = fmul float %326, %326
  %328 = fmul float %319, 2.000000e+00
  %329 = fadd float %rc.0.i, %328
  %330 = fsub float %329, %301
  %331 = fmul float %327, %330
  %332 = fmul float %ksw.0.i, %331
  %333 = fmul float %326, 6.000000e+00
  %334 = fsub float %r1.0.i, %319
  %335 = fmul float %334, %333
  %336 = fmul float %ksw.0.i, %335
  %337 = fsub float %302, %328
  %338 = fmul float %337, -6.000000e+00
  %339 = fmul float %ksw.0.i, %338
  br label %340

; <label>:340                                     ; preds = %325, %316
  %swi.0.i = phi float [ %332, %325 ], [ 1.000000e+00, %316 ]
  %swi1.0.i = phi float [ %336, %325 ], [ 1.000000e+00, %316 ]
  %swi2.0.i = phi float [ %339, %325 ], [ 1.000000e+00, %316 ]
  switch i32 %205, label %460 [
    i32 0, label %341
    i32 8, label %352
    i32 2, label %352
    i32 1, label %365
    i32 9, label %375
    i32 3, label %375
    i32 6, label %387
    i32 10, label %392
    i32 4, label %392
    i32 7, label %399
    i32 5, label %431
    i32 11, label %455
  ]

; <label>:341                                     ; preds = %340
  %342 = fsub float -0.000000e+00, %323
  %343 = fpext float %342 to double
  %344 = fmul double %343, 6.000000e+00
  %345 = fpext float %319 to double
  %346 = fdiv double %344, %345
  %347 = fptrunc double %346 to float
  %348 = fpext float %347 to double
  %349 = fmul double %348, 7.000000e+00
  %350 = fdiv double %349, %345
  %351 = fptrunc double %350 to float
  br label %461

; <label>:352                                     ; preds = %340, %340
  %353 = fcmp olt float %319, %rc.0.i
  br i1 %353, label %354, label %461

; <label>:354                                     ; preds = %352
  %355 = fsub float -0.000000e+00, %323
  %356 = fpext float %355 to double
  %357 = fmul double %356, 6.000000e+00
  %358 = fpext float %319 to double
  %359 = fdiv double %357, %358
  %360 = fptrunc double %359 to float
  %361 = fpext float %360 to double
  %362 = fmul double %361, 7.000000e+00
  %363 = fdiv double %362, %358
  %364 = fptrunc double %363 to float
  br label %461

; <label>:365                                     ; preds = %340
  %366 = fpext float %324 to double
  %367 = fmul double %366, 1.200000e+01
  %368 = fpext float %319 to double
  %369 = fdiv double %367, %368
  %370 = fptrunc double %369 to float
  %371 = fpext float %370 to double
  %372 = fmul double %371, 1.300000e+01
  %373 = fdiv double %372, %368
  %374 = fptrunc double %373 to float
  br label %461

; <label>:375                                     ; preds = %340, %340
  %376 = fcmp olt float %319, %rc.0.i
  br i1 %376, label %377, label %461

; <label>:377                                     ; preds = %375
  %378 = fpext float %324 to double
  %379 = fmul double %378, 1.200000e+01
  %380 = fpext float %319 to double
  %381 = fdiv double %379, %380
  %382 = fptrunc double %381 to float
  %383 = fpext float %382 to double
  %384 = fmul double %383, 1.300000e+01
  %385 = fdiv double %384, %380
  %386 = fptrunc double %385 to float
  br label %461

; <label>:387                                     ; preds = %340
  %388 = fdiv float 1.000000e+00, %319
  %389 = fdiv float 1.000000e+00, %320
  %390 = fmul float %319, %320
  %391 = fdiv float 2.000000e+00, %390
  br label %461

; <label>:392                                     ; preds = %340, %340
  %393 = fcmp olt float %319, %rc.0.i
  br i1 %393, label %394, label %461

; <label>:394                                     ; preds = %392
  %395 = fdiv float 1.000000e+00, %319
  %396 = fdiv float 1.000000e+00, %320
  %397 = fmul float %319, %320
  %398 = fdiv float 2.000000e+00, %397
  br label %461

; <label>:399                                     ; preds = %340
  %400 = fmul float %210, %319
  %401 = fpext float %400 to double
  %402 = call double @erfc(double %401) #10
  %403 = fpext float %319 to double
  %404 = fdiv double %402, %403
  %405 = fptrunc double %404 to float
  %406 = fpext float %320 to double
  %407 = fdiv double %402, %406
  %408 = fmul float %309, %320
  %409 = fsub float -0.000000e+00, %408
  %410 = fpext float %409 to double
  %411 = call double @exp(double %410) #10
  %412 = fmul double %411, 2.000000e+00
  %413 = fmul double %310, %412
  %414 = fmul double %413, 0x3FE20DD760000000
  %415 = fdiv double %414, %403
  %416 = fadd double %407, %415
  %417 = fptrunc double %416 to float
  %418 = fmul double %402, 2.000000e+00
  %419 = fmul float %319, %320
  %420 = fpext float %419 to double
  %421 = fdiv double %418, %420
  %422 = fmul double %411, 4.000000e+00
  %423 = fmul double %310, %422
  %424 = fmul double %423, 0x3FE20DD760000000
  %425 = fdiv double %424, %406
  %426 = fadd double %421, %425
  %427 = fmul double %314, %411
  %428 = fmul double %427, 0x3FE20DD760000000
  %429 = fadd double %428, %426
  %430 = fptrunc double %429 to float
  br label %461

; <label>:431                                     ; preds = %340
  %432 = fpext float %319 to double
  %433 = fdiv double 1.000000e+00, %432
  %434 = load float* %194, align 4, !tbaa !37
  %435 = fmul float %320, %434
  %436 = fpext float %435 to double
  %437 = fadd double %433, %436
  %438 = load float* %195, align 4, !tbaa !38
  %439 = fpext float %438 to double
  %440 = fsub double %437, %439
  %441 = fptrunc double %440 to float
  %442 = fpext float %320 to double
  %443 = fdiv double 1.000000e+00, %442
  %444 = fmul float %434, 2.000000e+00
  %445 = fmul float %319, %444
  %446 = fpext float %445 to double
  %447 = fsub double %443, %446
  %448 = fptrunc double %447 to float
  %449 = fmul float %319, %320
  %450 = fpext float %449 to double
  %451 = fdiv double 2.000000e+00, %450
  %452 = fpext float %444 to double
  %453 = fadd double %452, %451
  %454 = fptrunc double %453 to float
  br label %461

; <label>:455                                     ; preds = %340
  %456 = fsub float -0.000000e+00, %319
  %457 = fpext float %456 to double
  %458 = call double @exp(double %457) #10
  %459 = fptrunc double %458 to float
  br label %461

; <label>:460                                     ; preds = %340
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str22, i64 0, i64 0), i32 %205, i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 365) #8
  br label %461

; <label>:461                                     ; preds = %460, %455, %431, %399, %394, %392, %387, %377, %375, %365, %354, %352, %341
  %Vtab2.0.i = phi float [ 0.000000e+00, %460 ], [ %459, %455 ], [ %454, %431 ], [ %430, %399 ], [ %398, %394 ], [ 0.000000e+00, %392 ], [ %391, %387 ], [ %386, %377 ], [ 0.000000e+00, %375 ], [ %374, %365 ], [ %364, %354 ], [ 0.000000e+00, %352 ], [ %351, %341 ]
  %Ftab.0.i = phi float [ 0.000000e+00, %460 ], [ %459, %455 ], [ %448, %431 ], [ %417, %399 ], [ %396, %394 ], [ 0.000000e+00, %392 ], [ %389, %387 ], [ %382, %377 ], [ 0.000000e+00, %375 ], [ %370, %365 ], [ %360, %354 ], [ 0.000000e+00, %352 ], [ %347, %341 ]
  %Vtab.0.i = phi float [ 0.000000e+00, %460 ], [ %459, %455 ], [ %441, %431 ], [ %405, %399 ], [ %395, %394 ], [ 0.000000e+00, %392 ], [ %388, %387 ], [ %324, %377 ], [ 0.000000e+00, %375 ], [ %324, %365 ], [ %355, %354 ], [ 0.000000e+00, %352 ], [ %342, %341 ]
  %462 = fcmp olt float %319, %rc.0.i
  %or.cond.i6 = and i1 %217, %462
  br i1 %or.cond.i6, label %463, label %488

; <label>:463                                     ; preds = %461
  %464 = fsub float %Vtab.0.i, %C.1.i
  %465 = fcmp ogt float %319, %r1.0.i
  br i1 %465, label %466, label %488

; <label>:466                                     ; preds = %463
  %467 = fsub float %319, %r1.0.i
  %468 = fmul float %467, %467
  %469 = fmul float %467, %468
  %470 = fmul float %A_3.0.i, %469
  %471 = fsub float -0.000000e+00, %470
  %472 = fmul float %B_4.0.i, %468
  %473 = fmul float %468, %472
  %474 = fsub float %471, %473
  %475 = fadd float %474, %464
  %476 = fmul float %A.1.i, %468
  %477 = fmul float %B.1.i, %469
  %478 = fadd float %476, %477
  %479 = fadd float %478, %Ftab.0.i
  %480 = fpext float %467 to double
  %481 = fmul double %304, %480
  %482 = fpext float %468 to double
  %483 = fmul double %306, %482
  %484 = fsub double %481, %483
  %485 = fpext float %Vtab2.0.i to double
  %486 = fadd double %484, %485
  %487 = fptrunc double %486 to float
  br label %488

; <label>:488                                     ; preds = %466, %463, %461
  %Vtab2.1.i = phi float [ %487, %466 ], [ %Vtab2.0.i, %463 ], [ %Vtab2.0.i, %461 ]
  %Ftab.1.i = phi float [ %479, %466 ], [ %Ftab.0.i, %463 ], [ %Ftab.0.i, %461 ]
  %Vtab.1.i = phi float [ %475, %466 ], [ %464, %463 ], [ %Vtab.0.i, %461 ]
  %489 = fcmp ogt float %319, %r1.0.i
  %or.cond5.i = and i1 %..i, %489
  br i1 %or.cond5.i, label %490, label %498

; <label>:490                                     ; preds = %488
  %491 = fmul float %swi.0.i, %Vtab.1.i
  %492 = fmul float %swi.0.i, %Vtab2.1.i
  %493 = fmul float %swi1.0.i, %Ftab.1.i
  %494 = fsub float %492, %493
  %495 = fsub float %494, %493
  %496 = fmul float %swi2.0.i, %Vtab.1.i
  %497 = fadd float %496, %495
  br label %498

; <label>:498                                     ; preds = %490, %488
  %Vtab2.2.i = phi float [ %497, %490 ], [ %Vtab2.1.i, %488 ]
  %Vtab.2.i = phi float [ %491, %490 ], [ %Vtab.1.i, %488 ]
  %499 = load float** %307, align 8, !tbaa !29
  %500 = getelementptr inbounds float* %499, i64 %indvars.iv.i5
  store float %Vtab.2.i, float* %500, align 4, !tbaa !26
  %501 = load float** %308, align 8, !tbaa !30
  %502 = getelementptr inbounds float* %501, i64 %indvars.iv.i5
  store float %Vtab2.2.i, float* %502, align 4, !tbaa !26
  %indvars.iv.next.i7 = add nsw i64 %indvars.iv.i5, 1
  %503 = load i32* %297, align 4, !tbaa !32
  %504 = sext i32 %503 to i64
  %505 = icmp slt i64 %indvars.iv.next.i7, %504
  br i1 %505, label %316, label %fill_table.exit

fill_table.exit:                                  ; preds = %498, %294
  %506 = phi i32 [ %298, %294 ], [ %503, %498 ]
  br i1 %196, label %514, label %507

; <label>:507                                     ; preds = %fill_table.exit
  %508 = getelementptr inbounds [13 x i8*]* @tabnm, i64 0, i64 %218
  %509 = load i8** %508, align 8, !tbaa !25
  %510 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv28, i32 2
  %511 = load float* %510, align 4, !tbaa !31
  %512 = fpext float %511 to double
  %513 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([69 x i8]* @.str7, i64 0, i64 0), i32 %506, i8* %509, double %512) #8
  br label %514

; <label>:514                                     ; preds = %._crit_edge40, %fill_table.exit, %507
  %.pre-phi43 = phi i32* [ %.pre42, %._crit_edge40 ], [ %297, %fill_table.exit ], [ %297, %507 ]
  %.pre-phi = phi %struct.t_tabledata* [ %.pre41, %._crit_edge40 ], [ %209, %fill_table.exit ], [ %209, %507 ]
  %515 = load i32* %.pre-phi43, align 4, !tbaa !32
  %516 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv28, i32 3
  %517 = load float** %516, align 8, !tbaa !27
  %518 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv28, i32 4
  %519 = load float** %518, align 8, !tbaa !29
  %520 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv28, i32 5
  %521 = load float** %520, align 8, !tbaa !30
  %522 = load float** %187, align 8, !tbaa !35
  %523 = add nsw i32 %515, -1
  %524 = icmp sgt i32 %523, 1
  br i1 %524, label %.lr.ph.i9, label %copy2table.exit

.lr.ph.i9:                                        ; preds = %514
  %525 = shl nsw i64 %indvars.iv28, 2
  %526 = add i32 %515, -2
  br label %527

; <label>:527                                     ; preds = %527, %.lr.ph.i9
  %indvars.iv.i10 = phi i64 [ 1, %.lr.ph.i9 ], [ %indvars.iv.next.i11, %527 ]
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i10, 1
  %528 = getelementptr inbounds float* %517, i64 %indvars.iv.next.i11
  %529 = load float* %528, align 4, !tbaa !26
  %530 = getelementptr inbounds float* %517, i64 %indvars.iv.i10
  %531 = load float* %530, align 4, !tbaa !26
  %532 = fsub float %529, %531
  %533 = getelementptr inbounds float* %519, i64 %indvars.iv.next.i11
  %534 = load float* %533, align 4, !tbaa !26
  %535 = getelementptr inbounds float* %519, i64 %indvars.iv.i10
  %536 = load float* %535, align 4, !tbaa !26
  %537 = fsub float %534, %536
  %538 = fpext float %537 to double
  %539 = fmul float %532, %532
  %540 = fpext float %539 to double
  %541 = fdiv double %540, 6.000000e+00
  %542 = getelementptr inbounds float* %521, i64 %indvars.iv.i10
  %543 = load float* %542, align 4, !tbaa !26
  %544 = fmul float %543, 2.000000e+00
  %545 = getelementptr inbounds float* %521, i64 %indvars.iv.next.i11
  %546 = load float* %545, align 4, !tbaa !26
  %547 = fadd float %544, %546
  %548 = fpext float %547 to double
  %549 = fmul double %541, %548
  %550 = fsub double %538, %549
  %551 = fptrunc double %550 to float
  %552 = fmul double %540, 5.000000e-01
  %553 = fpext float %543 to double
  %554 = fmul double %552, %553
  %555 = fptrunc double %554 to float
  %556 = fsub float %546, %543
  %557 = fpext float %556 to double
  %558 = fmul double %541, %557
  %559 = fptrunc double %558 to float
  %560 = mul nsw i64 %indvars.iv.i10, 12
  %561 = add nuw nsw i64 %560, %525
  %562 = getelementptr inbounds float* %522, i64 %561
  store float %536, float* %562, align 4, !tbaa !26
  %563 = or i64 %561, 1
  %564 = getelementptr inbounds float* %522, i64 %563
  store float %551, float* %564, align 4, !tbaa !26
  %565 = or i64 %561, 2
  %566 = getelementptr inbounds float* %522, i64 %565
  store float %555, float* %566, align 4, !tbaa !26
  %567 = or i64 %561, 3
  %568 = getelementptr inbounds float* %522, i64 %567
  store float %559, float* %568, align 4, !tbaa !26
  %lftr.wideiv = trunc i64 %indvars.iv.i10 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %526
  br i1 %exitcond, label %copy2table.exit, label %527

copy2table.exit:                                  ; preds = %527, %514
  %569 = call i32 @bDebugMode() #8
  %570 = icmp ne i32 %569, 0
  %or.cond = and i1 %199, %570
  br i1 %or.cond, label %571, label %675

; <label>:571                                     ; preds = %copy2table.exit
  %572 = getelementptr inbounds [3 x i8*]* @make_tables.fns, i64 0, i64 %indvars.iv28
  %573 = load i8** %572, align 8, !tbaa !25
  %574 = call %struct.__sFILE* @xvgropen(i8* %573, i8* %573, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #8
  %575 = getelementptr inbounds %struct.t_tabledata* %67, i64 %indvars.iv28, i32 1
  %576 = load i32* %575, align 4, !tbaa !33
  %i.119 = add i32 %576, 1
  %577 = load i32* %.pre-phi43, align 4, !tbaa !32
  %578 = add nsw i32 %577, -1
  %579 = icmp slt i32 %i.119, %578
  br i1 %579, label %.preheader.lr.ph, label %.thread

.preheader.lr.ph:                                 ; preds = %571
  %580 = icmp eq %struct.__sFILE* %574, null
  %581 = sext i32 %i.119 to i64
  br label %.preheader

.loopexit:                                        ; preds = %673
  %i.1 = add nsw i32 %i.121, 1
  %582 = load i32* %.pre-phi43, align 4, !tbaa !32
  %583 = add nsw i32 %582, -1
  %584 = icmp slt i32 %i.1, %583
  %indvars.iv.next = add i64 %indvars.iv, 1
  %585 = trunc i64 %indvars.iv to i32
  br i1 %584, label %.preheader, label %.thread

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %581, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ]
  %i.121 = phi i32 [ %i.119, %.preheader.lr.ph ], [ %i.1, %.loopexit ]
  %i.1.in20 = phi i32 [ %576, %.preheader.lr.ph ], [ %585, %.loopexit ]
  %586 = add nsw i32 %i.1.in20, 2
  %587 = sext i32 %586 to i64
  br label %588

; <label>:588                                     ; preds = %673, %.preheader
  %j.018 = phi i32 [ 0, %.preheader ], [ %674, %673 ]
  %589 = load float** %516, align 8, !tbaa !27
  %590 = getelementptr inbounds float* %589, i64 %indvars.iv
  %591 = load float* %590, align 4, !tbaa !26
  %592 = fpext float %591 to double
  %593 = sitofp i32 %j.018 to double
  %594 = fmul double %593, 2.500000e-01
  %595 = getelementptr inbounds float* %589, i64 %587
  %596 = load float* %595, align 4, !tbaa !26
  %597 = fsub float %596, %591
  %598 = fpext float %597 to double
  %599 = fmul double %594, %598
  %600 = fadd double %592, %599
  %601 = fptrunc double %600 to float
  %602 = load float** %518, align 8, !tbaa !29
  %603 = load float** %520, align 8, !tbaa !30
  br i1 %202, label %.lr.ph.i15, label %612

.lr.ph.i15:                                       ; preds = %588, %.lr.ph.i15
  %klo.02.i = phi i32 [ %klo.0..i, %.lr.ph.i15 ], [ 1, %588 ]
  %khi.01.i = phi i32 [ %.khi.0.i, %.lr.ph.i15 ], [ %200, %588 ]
  %604 = add nsw i32 %khi.01.i, %klo.02.i
  %605 = ashr i32 %604, 1
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds float* %589, i64 %606
  %608 = load float* %607, align 4, !tbaa !26
  %609 = fcmp ogt float %608, %601
  %.khi.0.i = select i1 %609, i32 %605, i32 %khi.01.i
  %klo.0..i = select i1 %609, i32 %klo.02.i, i32 %605
  %610 = sub nsw i32 %.khi.0.i, %klo.0..i
  %611 = icmp sgt i32 %610, 1
  br i1 %611, label %.lr.ph.i15, label %._crit_edge.i16

._crit_edge.i16:                                  ; preds = %.lr.ph.i15
  %phitmp.i = sext i32 %klo.0..i to i64
  br label %612

; <label>:612                                     ; preds = %._crit_edge.i16, %588
  %klo.0.lcssa.i = phi i64 [ %phitmp.i, %._crit_edge.i16 ], [ 1, %588 ]
  %khi.0.lcssa.i = phi i32 [ %.khi.0.i, %._crit_edge.i16 ], [ %200, %588 ]
  %613 = sext i32 %khi.0.lcssa.i to i64
  %614 = getelementptr inbounds float* %589, i64 %613
  %615 = load float* %614, align 4, !tbaa !26
  %616 = getelementptr inbounds float* %589, i64 %klo.0.lcssa.i
  %617 = load float* %616, align 4, !tbaa !26
  %618 = fsub float %615, %617
  %fabsf.i17 = call float @fabsf(float %618) #6
  %619 = fpext float %fabsf.i17 to double
  %620 = fcmp olt double %619, 1.200000e-38
  br i1 %620, label %621, label %splint.exit

; <label>:621                                     ; preds = %612
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str36, i64 0, i64 0)) #8
  %.pre4.i = load float* %616, align 4, !tbaa !26
  br label %splint.exit

splint.exit:                                      ; preds = %612, %621
  %622 = phi float [ %.pre4.i, %621 ], [ %617, %612 ]
  %623 = fsub float %601, %622
  %624 = fdiv float %623, %618
  %625 = getelementptr inbounds float* %602, i64 %klo.0.lcssa.i
  %626 = load float* %625, align 4, !tbaa !26
  %627 = getelementptr inbounds float* %602, i64 %613
  %628 = load float* %627, align 4, !tbaa !26
  %629 = getelementptr inbounds float* %603, i64 %klo.0.lcssa.i
  %630 = load float* %629, align 4, !tbaa !26
  %631 = fmul float %624, %624
  %632 = getelementptr inbounds float* %603, i64 %613
  %633 = load float* %632, align 4, !tbaa !26
  %634 = fmul float %618, %618
  %635 = fsub float %628, %626
  %636 = fpext float %635 to double
  %637 = fpext float %634 to double
  %638 = fdiv double %637, 6.000000e+00
  %639 = fmul float %630, 2.000000e+00
  %640 = fadd float %639, %633
  %641 = fpext float %640 to double
  %642 = fmul double %638, %641
  %643 = fsub double %636, %642
  %644 = fptrunc double %643 to float
  %645 = fmul double %637, 5.000000e-01
  %646 = fpext float %630 to double
  %647 = fmul double %645, %646
  %648 = fptrunc double %647 to float
  %649 = fsub float %633, %630
  %650 = fpext float %649 to double
  %651 = fmul double %638, %650
  %652 = fptrunc double %651 to float
  br i1 %580, label %673, label %653

; <label>:653                                     ; preds = %splint.exit
  %654 = fmul float %624, 3.000000e+00
  %655 = fmul float %624, %654
  %656 = fmul float %655, %652
  %657 = fmul float %624, 2.000000e+00
  %658 = fmul float %657, %648
  %659 = fadd float %658, %644
  %660 = fadd float %656, %659
  %661 = fdiv float %660, %618
  %662 = fmul float %624, %631
  %663 = fmul float %662, %652
  %664 = fmul float %631, %648
  %665 = fmul float %624, %644
  %666 = fadd float %626, %665
  %667 = fadd float %664, %666
  %668 = fadd float %663, %667
  %669 = fpext float %601 to double
  %670 = fpext float %668 to double
  %671 = fpext float %661 to double
  %672 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %574, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), double %669, double %670, double %671) #8
  br label %673

; <label>:673                                     ; preds = %splint.exit, %653
  %674 = add nuw nsw i32 %j.018, 1
  %exitcond26 = icmp eq i32 %674, 4
  br i1 %exitcond26, label %.loopexit, label %588

.thread:                                          ; preds = %.loopexit, %571
  call void @ffclose(%struct.__sFILE* %574) #8
  br label %677

; <label>:675                                     ; preds = %copy2table.exit
  %676 = icmp eq %struct.t_tabledata* %.pre-phi, null
  br i1 %676, label %done_tabledata.exit, label %677

; <label>:677                                     ; preds = %.thread, %675
  %678 = bitcast float** %516 to i8**
  %679 = load i8** %678, align 8, !tbaa !27
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 200, i8* %679) #8
  %680 = bitcast float** %518 to i8**
  %681 = load i8** %680, align 8, !tbaa !29
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 201, i8* %681) #8
  %682 = bitcast float** %520 to i8**
  %683 = load i8** %682, align 8, !tbaa !30
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 202, i8* %683) #8
  br label %done_tabledata.exit

done_tabledata.exit:                              ; preds = %675, %677
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 3
  br i1 %exitcond30, label %684, label %done_tabledata.exit._crit_edge

done_tabledata.exit._crit_edge:                   ; preds = %done_tabledata.exit
  %.phi.trans.insert38 = getelementptr inbounds [3 x i32]* %tabsel, i64 0, i64 %indvars.iv.next29
  %.pre39 = load i32* %.phi.trans.insert38, align 4, !tbaa !17
  br label %204

; <label>:684                                     ; preds = %done_tabledata.exit
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 549, i8* %59) #8
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @init_table(i32 %n, i32 %nx0, float %tabscale, %struct.t_tabledata* nocapture %td, i32 %bAlloc) #3 {
  %1 = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 0
  store i32 %n, i32* %1, align 4, !tbaa !32
  %2 = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 1
  store i32 %nx0, i32* %2, align 4, !tbaa !33
  %3 = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 2
  store float %tabscale, float* %3, align 4, !tbaa !31
  %4 = icmp eq i32 %bAlloc, 0
  br i1 %4, label %17, label %5

; <label>:5                                       ; preds = %0
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 145, i32 %n, i32 4) #8
  %7 = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 3
  %8 = bitcast float** %7 to i8**
  store i8* %6, i8** %8, align 8, !tbaa !27
  %9 = load i32* %1, align 4, !tbaa !32
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 146, i32 %9, i32 4) #8
  %11 = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 4
  %12 = bitcast float** %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !29
  %13 = load i32* %1, align 4, !tbaa !32
  %14 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 147, i32 %13, i32 4) #8
  %15 = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 5
  %16 = bitcast float** %15 to i8**
  store i8* %14, i8** %16, align 8, !tbaa !30
  %.pre = load i32* %2, align 4, !tbaa !33
  %.pre2 = load i32* %1, align 4, !tbaa !32
  br label %17

; <label>:17                                      ; preds = %0, %5
  %18 = phi i32 [ %n, %0 ], [ %.pre2, %5 ]
  %19 = phi i32 [ %nx0, %0 ], [ %.pre, %5 ]
  %20 = icmp slt i32 %19, %18
  br i1 %20, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %17
  %21 = getelementptr inbounds %struct.t_tabledata* %td, i64 0, i32 3
  %22 = load float** %21, align 8, !tbaa !27
  %23 = sext i32 %19 to i64
  %24 = sext i32 %18 to i64
  br label %25

; <label>:25                                      ; preds = %.lr.ph, %25
  %indvars.iv = phi i64 [ %23, %.lr.ph ], [ %indvars.iv.next, %25 ]
  %26 = trunc i64 %indvars.iv to i32
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %27, %tabscale
  %29 = getelementptr inbounds float* %22, i64 %indvars.iv
  store float %28, float* %29, align 4, !tbaa !26
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %30 = icmp slt i64 %indvars.iv.next, %24
  br i1 %30, label %25, label %._crit_edge

._crit_edge:                                      ; preds = %25, %17
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare i32 @bDebugMode() #1

; Function Attrs: optsize
declare %struct.__sFILE* @xvgropen(i8*, i8*, i8*, i8*) #1

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: optsize
declare i8* @low_libfn(i8*, i32) #1

; Function Attrs: optsize
declare i32 @read_xvg(i8*, float***, i32*) #1

; Function Attrs: nounwind readnone
declare double @llvm.pow.f64(double, double) #5

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #4

; Function Attrs: nounwind optsize readnone
declare double @erfc(double) #6

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #6

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readnone }

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
!14 = !{!15, !7, i64 152}
!15 = !{!"", !7, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !7, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !7, i64 52, !7, i64 56, !16, i64 60, !7, i64 64, !16, i64 68, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !16, i64 104, !16, i64 108, !4, i64 112, !16, i64 120, !16, i64 124, !16, i64 128, !16, i64 132, !7, i64 136, !16, i64 140, !16, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !5, i64 180, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !5, i64 240, !5, i64 1488, !7, i64 2736, !7, i64 2740, !4, i64 2744, !4, i64 2752, !4, i64 2760, !7, i64 2768, !16, i64 2772, !4, i64 2776, !7, i64 2784, !4, i64 2792, !4, i64 2800, !7, i64 2808, !7, i64 2812, !7, i64 2816, !4, i64 2824, !4, i64 2832, !16, i64 2840}
!16 = !{!"float", !5, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!15, !16, i64 108}
!19 = !{!15, !16, i64 104}
!20 = !{!15, !7, i64 52}
!21 = !{!15, !7, i64 2816}
!22 = !{!15, !7, i64 156}
!23 = !{!15, !16, i64 68}
!24 = !{!15, !16, i64 60}
!25 = !{!4, !4, i64 0}
!26 = !{!16, !16, i64 0}
!27 = !{!28, !4, i64 16}
!28 = !{!"", !7, i64 0, !7, i64 4, !16, i64 8, !4, i64 16, !4, i64 24, !4, i64 32}
!29 = !{!28, !4, i64 24}
!30 = !{!28, !4, i64 32}
!31 = !{!28, !16, i64 8}
!32 = !{!28, !7, i64 0}
!33 = !{!28, !7, i64 4}
!34 = !{!15, !7, i64 64}
!35 = !{!15, !4, i64 88}
!36 = !{!15, !16, i64 2772}
!37 = !{!15, !16, i64 36}
!38 = !{!15, !16, i64 40}
