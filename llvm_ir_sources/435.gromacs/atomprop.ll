; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/atomprop.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_prop = type { [10 x i8], [10 x i8], float }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@get_mass.mass = internal global %struct.t_prop* null, align 8
@get_mass.nmass = internal global i32 0, align 4
@get_mass.maxmass = internal global i32 0, align 4
@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [131 x i8] c"WARNING: masses will be determined based on residue and atom names,\0A         this can deviate from the real mass of the atom type\0A\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"atommass.dat\00", align 1
@debug = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [30 x i8] c"Mass of atom %s %s set to %g\0A\00", align 1
@get_vdw.vdwr = internal global %struct.t_prop* null, align 8
@get_vdw.nvdwr = internal global i32 0, align 4
@get_vdw.maxvdwr = internal global i32 0, align 4
@.str3 = private unnamed_addr constant [13 x i8] c"vdwradii.dat\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"Van der Waals radius of atom %s %s set to %g\0A\00", align 1
@get_dgsolv.dgs = internal global %struct.t_prop* null, align 8
@get_dgsolv.ndgs = internal global i32 0, align 4
@get_dgsolv.maxdgs = internal global i32 0, align 4
@.str5 = private unnamed_addr constant [11 x i8] c"dgsolv.dat\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"Eisenberg86a\00", align 1
@.str7 = private unnamed_addr constant [41 x i8] c"Atomic solvation factors in kJ/mol nm^2\0A\00", align 1
@.str8 = private unnamed_addr constant [42 x i8] c"Solvation factor of atom %s %s set to %g\0A\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"%s %s %lf\00", align 1
@.str10 = private unnamed_addr constant [29 x i8] c"ERROR in file %s at line %d\0A\00", align 1
@.str11 = private unnamed_addr constant [18 x i8] c"%10s  %10s  %10g\0A\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"atomname\00", align 1
@.str13 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/atomprop.c\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"AAA\00", align 1
@.str17 = private unnamed_addr constant [36 x i8] c"search: %4s %4s match: %4s %4s %8g\0A\00", align 1
@.str18 = private unnamed_addr constant [7 x i8] c"*props\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #9
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
define float @get_mass(i8* %resnm, i8* %atomnm) #3 {
  %m = alloca float, align 4
  %1 = load %struct.t_prop** @get_mass.mass, align 8, !tbaa !14
  %2 = icmp eq %struct.t_prop* %1, null
  br i1 %2, label %3, label %11

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([131 x i8]* @.str, i64 0, i64 0), i64 130, i64 1, %struct.__sFILE* %4)
  %6 = tail call fastcc i32 @read_props(i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), %struct.t_prop** @get_mass.mass, i32* @get_mass.maxmass) #10
  store i32 %6, i32* @get_mass.nmass, align 4, !tbaa !15
  %7 = load %struct.__sFILE** @debug, align 8, !tbaa !14
  %8 = icmp eq %struct.__sFILE* %7, null
  br i1 %8, label %11, label %9

; <label>:9                                       ; preds = %3
  %10 = load %struct.t_prop** @get_mass.mass, align 8, !tbaa !14
  tail call fastcc void @write_props(%struct.__sFILE* %7, i32 %6, %struct.t_prop* %10) #10
  br label %11

; <label>:11                                      ; preds = %3, %0, %9
  %12 = load i32* @get_mass.nmass, align 4, !tbaa !15
  %13 = load %struct.t_prop** @get_mass.mass, align 8, !tbaa !14
  %14 = call fastcc i32 @get_prop(float* %m, i8* %resnm, i8* %atomnm, i32 %12, %struct.t_prop* %13) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %._crit_edge

._crit_edge:                                      ; preds = %11
  %.pre = load float* %m, align 4, !tbaa !16
  br label %19

; <label>:16                                      ; preds = %11
  store float 0x402805A1C0000000, float* %m, align 4, !tbaa !16
  tail call fastcc void @add_prop(float 0x402805A1C0000000, i8* %resnm, i8* %atomnm, i32* @get_mass.nmass, %struct.t_prop** @get_mass.mass, i32* @get_mass.maxmass) #10
  %17 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0), i8* %resnm, i8* %atomnm, double 0x402805A1C0000000) #9
  br label %19

; <label>:19                                      ; preds = %._crit_edge, %16
  %20 = phi float [ %.pre, %._crit_edge ], [ 0x402805A1C0000000, %16 ]
  ret float %20
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @read_props(i8* %propdata, %struct.t_prop** nocapture %props, i32* nocapture %maxprop) #3 {
  %line = alloca [4096 x i8], align 16
  %resname = alloca [10 x i8], align 1
  %atomname = alloca [10 x i8], align 1
  %pp = alloca double, align 8
  %i = alloca i32, align 4
  %1 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5
  %2 = tail call %struct.__sFILE* @libopen(i8* %propdata) #9
  store %struct.t_prop* null, %struct.t_prop** %props, align 8, !tbaa !14
  store i32 0, i32* %maxprop, align 4, !tbaa !15
  store i32 0, i32* %i, align 4, !tbaa !15
  %3 = call i32 @get_a_line(%struct.__sFILE* %2, i8* %1, i32 4096) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %5 = getelementptr inbounds [10 x i8]* %resname, i64 0, i64 0
  %6 = getelementptr inbounds [10 x i8]* %atomname, i64 0, i64 0
  br label %7

; <label>:7                                       ; preds = %.lr.ph, %.backedge
  %8 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* %5, i8* %6, double* %pp) #9
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %7
  %11 = load double* %pp, align 8, !tbaa !18
  %12 = fptrunc double %11 to float
  call fastcc void @add_prop(float %12, i8* %5, i8* %6, i32* %i, %struct.t_prop** %props, i32* %maxprop) #10
  br label %.backedge

; <label>:13                                      ; preds = %7
  %14 = load %struct.__sFILE** @debug, align 8, !tbaa !14
  %15 = icmp eq %struct.__sFILE* %14, null
  br i1 %15, label %.backedge, label %16

; <label>:16                                      ; preds = %13
  %17 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %18 = load i32* %i, align 4, !tbaa !15
  %19 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([29 x i8]* @.str10, i64 0, i64 0), i8* %propdata, i32 %18) #9
  br label %.backedge

.backedge:                                        ; preds = %16, %10, %13
  %20 = call i32 @get_a_line(%struct.__sFILE* %2, i8* %1, i32 4096) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %.backedge
  %.pre = load i32* %i, align 4, !tbaa !15
  br label %22

; <label>:22                                      ; preds = %._crit_edge, %0
  %23 = phi i32 [ %.pre, %._crit_edge ], [ 0, %0 ]
  call void @ffclose(%struct.__sFILE* %2) #9
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5
  ret i32 %23
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @write_props(%struct.__sFILE* %fp, i32 %nprop, %struct.t_prop* %props) #3 {
  %1 = icmp ne %struct.__sFILE* %fp, null
  %2 = icmp sgt i32 %nprop, 0
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %0
  %3 = add i32 %nprop, -1
  br label %4

; <label>:4                                       ; preds = %4, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %5 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 1, i64 0
  %6 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 0, i64 0
  %7 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 2
  %8 = load float* %7, align 4, !tbaa !20
  %9 = fpext float %8 to double
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i8* %5, i8* %6, double %9) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %.loopexit, label %4

.loopexit:                                        ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @get_prop(float* nocapture %p, i8* %resname, i8* %atomnm, i32 %nprop, %struct.t_prop* %props) #3 {
  %1 = load i8* %atomnm, align 1, !tbaa !13
  %2 = sext i8 %1 to i32
  %isdigittmp = add nsw i32 %2, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %3, label %20

; <label>:3                                       ; preds = %0
  %4 = tail call i64 @strlen(i8* %atomnm) #9
  %5 = add i64 %4, 1
  %6 = trunc i64 %5 to i32
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str13, i64 0, i64 0), i32 128, i32 %6, i32 1) #9
  %8 = tail call i64 @strlen(i8* %atomnm) #9
  %9 = icmp ugt i64 %8, 1
  br i1 %9, label %.lr.ph9, label %16

.lr.ph9:                                          ; preds = %3, %.lr.ph9
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %.lr.ph9 ], [ 1, %3 ]
  %10 = getelementptr inbounds i8* %atomnm, i64 %indvars.iv15
  %11 = load i8* %10, align 1, !tbaa !13
  %12 = add nsw i64 %indvars.iv15, -1
  %13 = getelementptr inbounds i8* %7, i64 %12
  store i8 %11, i8* %13, align 1, !tbaa !13
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %14 = tail call i64 @strlen(i8* %atomnm) #9
  %15 = icmp ult i64 %indvars.iv.next16, %14
  br i1 %15, label %.lr.ph9, label %._crit_edge10

._crit_edge10:                                    ; preds = %.lr.ph9
  %phitmp = shl i64 %indvars.iv15, 32
  %sext = add i64 %phitmp, 8589934592
  %phitmp13 = ashr exact i64 %sext, 32
  br label %16

; <label>:16                                      ; preds = %._crit_edge10, %3
  %.lcssa = phi i64 [ %indvars.iv.next16, %._crit_edge10 ], [ 1, %3 ]
  %i.0.lcssa = phi i64 [ %phitmp13, %._crit_edge10 ], [ 2, %3 ]
  %17 = load i8* %atomnm, align 1, !tbaa !13
  %18 = getelementptr inbounds i8* %7, i64 %.lcssa
  store i8 %17, i8* %18, align 1, !tbaa !13
  %19 = getelementptr inbounds i8* %7, i64 %i.0.lcssa
  store i8 0, i8* %19, align 1, !tbaa !13
  br label %20

; <label>:20                                      ; preds = %0, %16
  %atomname.0 = phi i8* [ %7, %16 ], [ %atomnm, %0 ]
  %21 = icmp sgt i32 %nprop, 0
  br i1 %21, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %20
  %22 = bitcast float* %p to i32*
  %23 = add i32 %nprop, -1
  br label %24

; <label>:24                                      ; preds = %49, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %49 ]
  %mrlen.04 = phi i32 [ -3, %.lr.ph ], [ %mrlen.1, %49 ]
  %malen.03 = phi i32 [ -3, %.lr.ph ], [ %malen.1, %49 ]
  %j.01 = phi i32 [ 0, %.lr.ph ], [ %j.1, %49 ]
  %25 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 1, i64 0
  %26 = tail call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

; <label>:28                                      ; preds = %24
  %29 = tail call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0)) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

; <label>:31                                      ; preds = %28
  %32 = tail call i32 @is_protein(i8* %resname) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

; <label>:34                                      ; preds = %31
  %35 = tail call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0)) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

; <label>:37                                      ; preds = %31, %34
  %38 = tail call fastcc i32 @dbcmp_len(i8* %resname, i8* %25) #10
  br label %39

; <label>:39                                      ; preds = %34, %24, %28, %37
  %rlen.0 = phi i32 [ %38, %37 ], [ -2, %28 ], [ -2, %24 ], [ -1, %34 ]
  %40 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 0, i64 0
  %41 = tail call fastcc i32 @dbcmp_len(i8* %atomname.0, i8* %40) #10
  %42 = icmp slt i32 %41, %malen.03
  %43 = icmp slt i32 %rlen.0, %mrlen.04
  %or.cond = or i1 %43, %42
  br i1 %or.cond, label %._crit_edge17, label %44

._crit_edge17:                                    ; preds = %39
  %.pre = trunc i64 %indvars.iv to i32
  br label %49

; <label>:44                                      ; preds = %39
  %45 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 2
  %46 = bitcast float* %45 to i32*
  %47 = load i32* %46, align 4, !tbaa !20
  store i32 %47, i32* %22, align 4, !tbaa !16
  %48 = trunc i64 %indvars.iv to i32
  br label %49

; <label>:49                                      ; preds = %._crit_edge17, %44
  %lftr.wideiv.pre-phi = phi i32 [ %.pre, %._crit_edge17 ], [ %48, %44 ]
  %j.1 = phi i32 [ %j.01, %._crit_edge17 ], [ %48, %44 ]
  %malen.1 = phi i32 [ %malen.03, %._crit_edge17 ], [ %41, %44 ]
  %mrlen.1 = phi i32 [ %mrlen.04, %._crit_edge17 ], [ %rlen.0, %44 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %23
  br i1 %exitcond, label %._crit_edge, label %24

._crit_edge:                                      ; preds = %49, %20
  %mrlen.0.lcssa = phi i32 [ -3, %20 ], [ %mrlen.1, %49 ]
  %malen.0.lcssa = phi i32 [ -3, %20 ], [ %malen.1, %49 ]
  %j.0.lcssa = phi i32 [ 0, %20 ], [ %j.1, %49 ]
  %50 = load %struct.__sFILE** @debug, align 8, !tbaa !14
  %51 = icmp eq %struct.__sFILE* %50, null
  br i1 %51, label %59, label %52

; <label>:52                                      ; preds = %._crit_edge
  %53 = sext i32 %j.0.lcssa to i64
  %54 = getelementptr inbounds %struct.t_prop* %props, i64 %53, i32 1, i64 0
  %55 = getelementptr inbounds %struct.t_prop* %props, i64 %53, i32 0, i64 0
  %56 = load float* %p, align 4, !tbaa !16
  %57 = fpext float %56 to double
  %58 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([36 x i8]* @.str17, i64 0, i64 0), i8* %resname, i8* %atomname.0, i8* %54, i8* %55, double %57) #9
  br label %59

; <label>:59                                      ; preds = %._crit_edge, %52
  %60 = icmp ne i32 %mrlen.0.lcssa, -3
  %not. = icmp ne i32 %malen.0.lcssa, -3
  %. = and i1 %not., %60
  %61 = zext i1 %. to i32
  ret i32 %61
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @add_prop(float %p, i8* %resnm, i8* %atomnm, i32* nocapture %nprop, %struct.t_prop** nocapture %props, i32* nocapture %maxprop) #3 {
  %1 = load i32* %nprop, align 4, !tbaa !15
  %2 = load i32* %maxprop, align 4, !tbaa !15
  %3 = icmp slt i32 %1, %2
  br i1 %3, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %0
  %.pre1 = load %struct.t_prop** %props, align 8, !tbaa !14
  br label %11

; <label>:4                                       ; preds = %0
  %5 = add nsw i32 %2, 10
  store i32 %5, i32* %maxprop, align 4, !tbaa !15
  %6 = bitcast %struct.t_prop** %props to i8**
  %7 = load i8** %6, align 8, !tbaa !14
  %8 = mul i32 %5, 24
  %9 = tail call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str13, i64 0, i64 0), i32 56, i8* %7, i32 %8) #9
  store i8* %9, i8** %6, align 8, !tbaa !14
  %.pre = load i32* %nprop, align 4, !tbaa !15
  %10 = bitcast i8* %9 to %struct.t_prop*
  br label %11

; <label>:11                                      ; preds = %._crit_edge, %4
  %12 = phi %struct.t_prop* [ %.pre1, %._crit_edge ], [ %10, %4 ]
  %13 = phi i32 [ %1, %._crit_edge ], [ %.pre, %4 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.t_prop* %12, i64 %14, i32 0, i64 0
  %16 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %15, i1 false)
  %17 = tail call i8* @__strcpy_chk(i8* %15, i8* %atomnm, i64 %16) #9
  %18 = load i32* %nprop, align 4, !tbaa !15
  %19 = sext i32 %18 to i64
  %20 = load %struct.t_prop** %props, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.t_prop* %20, i64 %19, i32 1, i64 0
  %22 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %21, i1 false)
  %23 = tail call i8* @__strcpy_chk(i8* %21, i8* %resnm, i64 %22) #9
  %24 = load i32* %nprop, align 4, !tbaa !15
  %25 = sext i32 %24 to i64
  %26 = load %struct.t_prop** %props, align 8, !tbaa !14
  %27 = getelementptr inbounds %struct.t_prop* %26, i64 %25, i32 2
  store float %p, float* %27, align 4, !tbaa !20
  %28 = add nsw i32 %24, 1
  store i32 %28, i32* %nprop, align 4, !tbaa !15
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define float @get_vdw(i8* %resnm, i8* %atomnm, float %default_r) #3 {
  %r = alloca float, align 4
  %1 = load %struct.t_prop** @get_vdw.vdwr, align 8, !tbaa !14
  %2 = icmp eq %struct.t_prop* %1, null
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = tail call fastcc i32 @read_props(i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), %struct.t_prop** @get_vdw.vdwr, i32* @get_vdw.maxvdwr) #10
  store i32 %4, i32* @get_vdw.nvdwr, align 4, !tbaa !15
  %5 = load %struct.__sFILE** @debug, align 8, !tbaa !14
  %6 = icmp eq %struct.__sFILE* %5, null
  br i1 %6, label %9, label %7

; <label>:7                                       ; preds = %3
  %8 = load %struct.t_prop** @get_vdw.vdwr, align 8, !tbaa !14
  tail call fastcc void @write_props(%struct.__sFILE* %5, i32 %4, %struct.t_prop* %8) #10
  br label %9

; <label>:9                                       ; preds = %3, %0, %7
  %10 = load i32* @get_vdw.nvdwr, align 4, !tbaa !15
  %11 = load %struct.t_prop** @get_vdw.vdwr, align 8, !tbaa !14
  %12 = call fastcc i32 @get_prop(float* %r, i8* %resnm, i8* %atomnm, i32 %10, %struct.t_prop* %11) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %._crit_edge

._crit_edge:                                      ; preds = %9
  %.pre = load float* %r, align 4, !tbaa !16
  br label %18

; <label>:14                                      ; preds = %9
  store float %default_r, float* %r, align 4, !tbaa !16
  tail call fastcc void @add_prop(float %default_r, i8* %resnm, i8* %atomnm, i32* @get_vdw.nvdwr, %struct.t_prop** @get_vdw.vdwr, i32* @get_vdw.maxvdwr) #10
  %15 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %16 = fpext float %default_r to double
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), i8* %resnm, i8* %atomnm, double %16) #9
  br label %18

; <label>:18                                      ; preds = %._crit_edge, %14
  %19 = phi float [ %.pre, %._crit_edge ], [ %default_r, %14 ]
  ret float %19
}

; Function Attrs: nounwind optsize ssp uwtable
define float @get_dgsolv(i8* %resnm, i8* %atomnm, float %default_s) #3 {
  %r = alloca float, align 4
  %1 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !tbaa !14
  %2 = icmp eq %struct.t_prop* %1, null
  br i1 %2, label %3, label %24

; <label>:3                                       ; preds = %0
  %4 = tail call fastcc i32 @read_props(i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), %struct.t_prop** @get_dgsolv.dgs, i32* @get_dgsolv.maxdgs) #10
  store i32 %4, i32* @get_dgsolv.ndgs, align 4, !tbaa !15
  %5 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  tail call void @please_cite(%struct.__sFILE* %5, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0)) #9
  %6 = load i32* @get_dgsolv.ndgs, align 4, !tbaa !15
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %3
  %8 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !tbaa !14
  %9 = sext i32 %6 to i64
  br label %10

; <label>:10                                      ; preds = %.lr.ph, %10
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %10 ]
  %11 = getelementptr inbounds %struct.t_prop* %8, i64 %indvars.iv, i32 2
  %12 = load float* %11, align 4, !tbaa !20
  %13 = fpext float %12 to double
  %14 = fmul double %13, 4.184000e+02
  %15 = fptrunc double %14 to float
  store float %15, float* %11, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %16 = icmp slt i64 %indvars.iv.next, %9
  br i1 %16, label %10, label %._crit_edge

._crit_edge:                                      ; preds = %10, %3
  %17 = load %struct.__sFILE** @debug, align 8, !tbaa !14
  %18 = icmp eq %struct.__sFILE* %17, null
  br i1 %18, label %24, label %19

; <label>:19                                      ; preds = %._crit_edge
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str7, i64 0, i64 0), i64 40, i64 1, %struct.__sFILE* %17)
  %21 = load %struct.__sFILE** @debug, align 8, !tbaa !14
  %22 = load i32* @get_dgsolv.ndgs, align 4, !tbaa !15
  %23 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !tbaa !14
  tail call fastcc void @write_props(%struct.__sFILE* %21, i32 %22, %struct.t_prop* %23) #10
  br label %24

; <label>:24                                      ; preds = %._crit_edge, %0, %19
  %25 = load i32* @get_dgsolv.ndgs, align 4, !tbaa !15
  %26 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !tbaa !14
  %27 = call fastcc i32 @get_prop(float* %r, i8* %resnm, i8* %atomnm, i32 %25, %struct.t_prop* %26) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %._crit_edge2

._crit_edge2:                                     ; preds = %24
  %.pre = load float* %r, align 4, !tbaa !16
  br label %33

; <label>:29                                      ; preds = %24
  store float %default_s, float* %r, align 4, !tbaa !16
  tail call fastcc void @add_prop(float %default_s, i8* %resnm, i8* %atomnm, i32* @get_dgsolv.ndgs, %struct.t_prop** @get_dgsolv.dgs, i32* @get_dgsolv.maxdgs) #10
  %30 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %31 = fpext float %default_s to double
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i8* %resnm, i8* %atomnm, double %31) #9
  br label %33

; <label>:33                                      ; preds = %._crit_edge2, %29
  %34 = phi float [ %.pre, %._crit_edge2 ], [ %default_s, %29 ]
  ret float %34
}

; Function Attrs: optsize
declare void @please_cite(%struct.__sFILE*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare %struct.__sFILE* @libopen(i8*) #1

; Function Attrs: optsize
declare i32 @get_a_line(%struct.__sFILE*, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: optsize
declare i32 @is_protein(i8*) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @dbcmp_len(i8* nocapture readonly %search, i8* nocapture readonly %database) #7 {
  %1 = load i8* %search, align 1, !tbaa !13
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %7
  %indvars.iv = phi i64 [ %indvars.iv.next, %7 ], [ 0, %0 ]
  %3 = phi i8 [ %9, %7 ], [ %1, %0 ]
  %4 = getelementptr inbounds i8* %database, i64 %indvars.iv
  %5 = load i8* %4, align 1, !tbaa !13
  %6 = icmp eq i8 %3, %5
  %not. = icmp ne i8 %5, 0
  %. = and i1 %6, %not.
  br i1 %., label %7, label %..critedge_crit_edge3

; <label>:7                                       ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = getelementptr inbounds i8* %search, i64 %indvars.iv.next
  %9 = load i8* %8, align 1, !tbaa !13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %..critedge_crit_edge, label %.lr.ph

..critedge_crit_edge:                             ; preds = %7
  %11 = trunc i64 %indvars.iv.next to i32
  br label %.critedge

..critedge_crit_edge3:                            ; preds = %.lr.ph
  %12 = trunc i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge3, %..critedge_crit_edge, %0
  %.lcssa = phi i64 [ %indvars.iv.next, %..critedge_crit_edge ], [ %indvars.iv, %..critedge_crit_edge3 ], [ 0, %0 ]
  %i.0.lcssa = phi i32 [ %11, %..critedge_crit_edge ], [ %12, %..critedge_crit_edge3 ], [ 0, %0 ]
  %13 = getelementptr inbounds i8* %database, i64 %.lcssa
  %14 = load i8* %13, align 1, !tbaa !13
  %15 = icmp eq i8 %14, 0
  %i.0. = select i1 %15, i32 %i.0.lcssa, i32 -3
  ret i32 %i.0.
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #8

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

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
!14 = !{!4, !4, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !5, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"double", !5, i64 0}
!20 = !{!21, !17, i64 20}
!21 = !{!"", !5, i64 0, !5, i64 10, !17, i64 20}
