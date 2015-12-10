; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/confio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_trxframe = type { i32, i32, i32, float, float, float, i32, i8*, i32, i32, i32, float, i32, float, i32, %struct.t_atoms*, i32, float, i32, [3 x float]*, i32, [3 x float]*, i32, [3 x float]*, i32, [3 x [3 x float]] }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_tpxheader = type { i32, i32, i32, i32, i32, i32, i32, i32, float, float }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }

@read_g96_conf.symtab = internal unnamed_addr global %struct.t_symtab* null, align 8
@read_g96_conf.line = internal global [4097 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"symtab\00", align 1
@.str1 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/confio.c\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"TITLE\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"TIMESTEP\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"POSITION\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"POSITIONRED\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"VELOCITY\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"BOX\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"%15d%15lf\00", align 1
@.str10 = private unnamed_addr constant [46 x i8] c"%15lf%15lf%15lf%15lf%15lf%15lf%15lf%15lf%15lf\00", align 1
@.str11 = private unnamed_addr constant [35 x i8] c"Found a BOX line, but no box in %s\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"TITLE\0A%s\0AEND\0A\00", align 1
@.str13 = private unnamed_addr constant [25 x i8] c"TIMESTEP\0A%15d%15.6f\0AEND\0A\00", align 1
@.str14 = private unnamed_addr constant [10 x i8] c"POSITION\0A\00", align 1
@.str15 = private unnamed_addr constant [36 x i8] c"%5d %-5s %-5s%7d%15.9f%15.9f%15.9f\0A\00", align 1
@.str16 = private unnamed_addr constant [13 x i8] c"POSITIONRED\0A\00", align 1
@.str17 = private unnamed_addr constant [20 x i8] c"%15.9f%15.9f%15.9f\0A\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"VELOCITY\0A\00", align 1
@.str20 = private unnamed_addr constant [13 x i8] c"VELOCITYRED\0A\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"BOX\0A\00", align 1
@.str22 = private unnamed_addr constant [19 x i8] c"%15.9f%15.9f%15.9f\00", align 1
@.str23 = private unnamed_addr constant [37 x i8] c"%15.9f%15.9f%15.9f%15.9f%15.9f%15.9f\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"atoms.atom\00", align 1
@.str26 = private unnamed_addr constant [14 x i8] c"atoms.resname\00", align 1
@.str27 = private unnamed_addr constant [15 x i8] c"atoms.atomname\00", align 1
@.str28 = private unnamed_addr constant [3 x i8] c"t=\00", align 1
@.str29 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str30 = private unnamed_addr constant [86 x i8] c"Number of atoms in gro frame (%d) doesn't match the number in the previous frame (%d)\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str31 = private unnamed_addr constant [29 x i8] c"Reading frames from gro file\00", align 1
@.str32 = private unnamed_addr constant [18 x i8] c" '%s', %d atoms.\0A\00", align 1
@.str33 = private unnamed_addr constant [28 x i8] c"No coordinates in gro file\0A\00", align 1
@.str34 = private unnamed_addr constant [6 x i8] c"fr->x\00", align 1
@.str35 = private unnamed_addr constant [6 x i8] c"fr->v\00", align 1
@.str36 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"%5d\0A\00", align 1
@.str38 = private unnamed_addr constant [50 x i8] c"%%%d.%df%%%d.%df%%%d.%df%%%d.%df%%%d.%df%%%d.%df\0A\00", align 1
@.str39 = private unnamed_addr constant [26 x i8] c"%%%d.%df%%%d.%df%%%d.%df\0A\00", align 1
@.str40 = private unnamed_addr constant [6 x i8] c" ??? \00", align 1
@.str41 = private unnamed_addr constant [18 x i8] c"%5d%-5.5s%5.5s%5d\00", align 1
@.str42 = private unnamed_addr constant [74 x i8] c"%%%d.%df%%%d.%df%%%d.%df%%%d.%df%%%d.%df%%%d.%df%%%d.%df%%%d.%df%%%d.%df\0A\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str44 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str45 = private unnamed_addr constant [38 x i8] c"Sorry, can not write a topology to %s\00", align 1
@.str46 = private unnamed_addr constant [44 x i8] c"Not supported in write_sto_conf_indexed: %s\00", align 1
@.str47 = private unnamed_addr constant [36 x i8] c"Not supported in write_sto_conf: %s\00", align 1
@.str48 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str49 = private unnamed_addr constant [38 x i8] c"Not supported in get_stx_coordnum: %s\00", align 1
@.str50 = private unnamed_addr constant [37 x i8] c"Warning: Number of atoms in %s is 0\0A\00", align 1
@.str51 = private unnamed_addr constant [35 x i8] c"Uninitialized array atom in %s, %d\00", align 1
@.str52 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str53 = private unnamed_addr constant [12 x i8] c"atoms->atom\00", align 1
@.str54 = private unnamed_addr constant [16 x i8] c"atoms->atomname\00", align 1
@.str55 = private unnamed_addr constant [15 x i8] c"atoms->resname\00", align 1
@.str56 = private unnamed_addr constant [15 x i8] c"atoms->grpname\00", align 1
@.str57 = private unnamed_addr constant [22 x i8] c"atoms->grps[i].nm_ind\00", align 1
@.str58 = private unnamed_addr constant [35 x i8] c"Not supported in read_stx_conf: %s\00", align 1
@.str59 = private unnamed_addr constant [16 x i8] c"%15lf%15lf%15lf\00", align 1
@.str60 = private unnamed_addr constant [46 x i8] c"Did not find 3 coordinates for atom %d in %s\0A\00", align 1
@.str61 = private unnamed_addr constant [52 x i8] c"Found more coordinates (%d) in %s than expected %d\0A\00", align 1
@.str62 = private unnamed_addr constant [17 x i8] c"%5d%c%5s%c%5s%7d\00", align 1
@.str64 = private unnamed_addr constant [45 x i8] c"More residues than atoms in %s (natoms = %d)\00", align 1
@.str65 = private unnamed_addr constant [61 x i8] c"Warning: found less coordinates (%d) in %s than expected %d\0A\00", align 1
@.str66 = private unnamed_addr constant [12 x i8] c"VELOCITYRED\00", align 1
@.str67 = private unnamed_addr constant [44 x i8] c"Did not find 3 velocities for atom %d in %s\00", align 1
@.str68 = private unnamed_addr constant [51 x i8] c"Found more velocities (%d) in %s than expected %d\0A\00", align 1
@.str69 = private unnamed_addr constant [60 x i8] c"Warning: found less velocities (%d) in %s than expected %d\0A\00", align 1
@get_w_conf.symtab = internal unnamed_addr global %struct.t_symtab* null, align 8
@.str70 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str71 = private unnamed_addr constant [53 x i8] c"gro file contains more atoms (%d) than expected (%d)\00", align 1
@.str72 = private unnamed_addr constant [63 x i8] c"Warning: gro file contains less atoms (%d) than expected (%d)\0A\00", align 1
@.str73 = private unnamed_addr constant [35 x i8] c"Invalid line in %s for atom %d:\0A%s\00", align 1
@.str74 = private unnamed_addr constant [47 x i8] c"A coordinate in file %s does not contain a '.'\00", align 1
@.str75 = private unnamed_addr constant [19 x i8] c"%%%dlf%%%dlf%%%dlf\00", align 1
@.str76 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str77 = private unnamed_addr constant [19 x i8] c"Bad box in file %s\00", align 1
@.str78 = private unnamed_addr constant [45 x i8] c"Generated a cubic box %8.3f x %8.3f x %8.3f\0A\00", align 1
@.str79 = private unnamed_addr constant [28 x i8] c"%*f%*f%*f%lf%lf%lf%lf%lf%lf\00", align 1

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
define i32 @read_g96_conf(%struct.__sFILE* %fp, i8* %infile, %struct.t_trxframe* %fr) #3 {
  %db1.i10 = alloca double, align 8
  %db2.i11 = alloca double, align 8
  %db3.i12 = alloca double, align 8
  %atnr.i = alloca i32, align 4
  %resnr.i = alloca i32, align 4
  %anm.i = alloca [4096 x i8], align 16
  %resnm.i = alloca [4096 x i8], align 16
  %c1.i = alloca i8, align 1
  %c2.i = alloca i8, align 1
  %db1.i = alloca double, align 8
  %db2.i = alloca double, align 8
  %db3.i = alloca double, align 8
  %db1 = alloca double, align 8
  %db2 = alloca double, align 8
  %db3 = alloca double, align 8
  %db4 = alloca double, align 8
  %db5 = alloca double, align 8
  %db6 = alloca double, align 8
  %db7 = alloca double, align 8
  %db8 = alloca double, align 8
  %db9 = alloca double, align 8
  %1 = tail call i64 @ftell(%struct.__sFILE* %fp) #8
  %2 = icmp eq i64 %1, 0
  tail call void @clear_trxframe(%struct.t_trxframe* %fr, i32 0) #8
  %3 = load %struct.t_symtab** @read_g96_conf.symtab, align 8, !tbaa !14
  %4 = icmp eq %struct.t_symtab* %3, null
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 191, i32 1, i32 16) #8
  %7 = bitcast i8* %6 to %struct.t_symtab*
  store i8* %6, i8** bitcast (%struct.t_symtab** @read_g96_conf.symtab to i8**), align 8, !tbaa !14
  tail call void @open_symtab(%struct.t_symtab* %7) #8
  br label %8

; <label>:8                                       ; preds = %0, %5
  br i1 %2, label %.preheader26, label %.preheader

.preheader26:                                     ; preds = %8
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  %10 = load i32* %9, align 4, !tbaa !15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader26, %14
  %12 = tail call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %.critedge, label %14

; <label>:14                                      ; preds = %.lr.ph
  %15 = tail call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0)) #8
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %9, align 4, !tbaa !15
  br i1 %16, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %14, %.lr.ph, %.preheader26
  %18 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  %19 = load i8** %18, align 8, !tbaa !18
  %20 = icmp eq i8* %19, null
  br i1 %20, label %.preheader25, label %21

; <label>:21                                      ; preds = %.critedge
  %22 = tail call i8* @fgets2(i8* %19, i32 4096, %struct.__sFILE* %fp) #8
  br label %.preheader25

.preheader25:                                     ; preds = %21, %.critedge, %25
  %23 = tail call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %.critedge1, label %25

; <label>:25                                      ; preds = %.preheader25
  %26 = tail call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %.critedge1, label %.preheader25

.critedge1:                                       ; preds = %25, %.preheader25
  %28 = tail call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8
  br label %.preheader

.preheader:                                       ; preds = %.critedge1, %8
  %29 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  %30 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %31 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  %32 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %34 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  %35 = bitcast i32* %atnr.i to i8*
  %36 = bitcast i32* %resnr.i to i8*
  %37 = bitcast double* %db1.i to i8*
  %38 = bitcast double* %db2.i to i8*
  %39 = bitcast double* %db3.i to i8*
  %40 = getelementptr inbounds [4096 x i8]* %anm.i, i64 0, i64 0
  %41 = getelementptr inbounds [4096 x i8]* %resnm.i, i64 0, i64 0
  %42 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %43 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  %44 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %45 = bitcast [4096 x i8]* %anm.i to i32*
  %46 = bitcast [4096 x i8]* %resnm.i to i32*
  %47 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %48 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %49 = bitcast double* %db1.i10 to i8*
  %50 = bitcast double* %db2.i11 to i8*
  %51 = bitcast double* %db3.i12 to i8*
  br label %52

; <label>:52                                      ; preds = %.preheader, %278
  %natoms.0 = phi i32 [ %natoms.2, %278 ], [ 0, %.preheader ]
  %53 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #8
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0)) #8
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  br i1 %57, label %62, label %59

; <label>:59                                      ; preds = %52
  %60 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #8
  %61 = icmp eq i32 %60, 0
  br label %62

; <label>:62                                      ; preds = %59, %52
  %63 = phi i1 [ true, %52 ], [ %61, %59 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i64 8) #8
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #8
  %69 = icmp eq i32 %68, 0
  br i1 %54, label %70, label %86

; <label>:70                                      ; preds = %62
  %71 = load i32* %29, align 4, !tbaa !19
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %86

; <label>:73                                      ; preds = %70
  %74 = load i32* %30, align 4, !tbaa !20
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %86

; <label>:76                                      ; preds = %73
  store i32 %55, i32* %31, align 4, !tbaa !21
  store i32 %55, i32* %29, align 4, !tbaa !19
  br label %77

; <label>:77                                      ; preds = %77, %76
  %78 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8
  %79 = icmp eq i8* %78, null
  %.not = xor i1 %79, true
  %80 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16
  %81 = icmp eq i8 %80, 35
  %or.cond7 = and i1 %81, %.not
  br i1 %or.cond7, label %77, label %.critedge2

.critedge2:                                       ; preds = %77
  %82 = zext i1 %79 to i32
  %83 = call i32 (i8*, i8*, ...)* @sscanf(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32* %32, double* %db1) #8
  %84 = load double* %db1, align 8, !tbaa !22
  %85 = fptrunc double %84 to float
  store float %85, float* %33, align 4, !tbaa !24
  br label %86

; <label>:86                                      ; preds = %70, %73, %.critedge2, %62
  %bFinished.1 = phi i32 [ %82, %.critedge2 ], [ 0, %62 ], [ 1, %73 ], [ 1, %70 ]
  br i1 %63, label %87, label %179

; <label>:87                                      ; preds = %86
  %88 = load i32* %30, align 4, !tbaa !20
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %179

; <label>:90                                      ; preds = %87
  store i32 %58, i32* %34, align 4, !tbaa !25
  store i32 %64, i32* %30, align 4, !tbaa !20
  %91 = load %struct.t_symtab** @read_g96_conf.symtab, align 8, !tbaa !14
  call void @llvm.lifetime.start(i64 4, i8* %35)
  call void @llvm.lifetime.start(i64 4, i8* %36)
  call void @llvm.lifetime.start(i64 1, i8* %c1.i)
  call void @llvm.lifetime.start(i64 1, i8* %c2.i)
  call void @llvm.lifetime.start(i64 8, i8* %37)
  call void @llvm.lifetime.start(i64 8, i8* %38)
  call void @llvm.lifetime.start(i64 8, i8* %39)
  call void @llvm.lifetime.start(i64 4096, i8* %40) #6
  call void @llvm.lifetime.start(i64 4096, i8* %41) #6
  %92 = load i32* %42, align 4, !tbaa !26
  %93 = load %struct.t_atoms** %43, align 8, !tbaa !27
  br i1 %63, label %94, label %read_g96_pos.exit

; <label>:94                                      ; preds = %90
  %..i = select i1 %57, i64 24, i64 0
  %95 = getelementptr inbounds [4097 x i8]* @read_g96_conf.line, i64 0, i64 %..i
  %96 = icmp eq i32 %92, -1
  %97 = icmp eq %struct.t_atoms* %93, null
  %98 = getelementptr inbounds %struct.t_atoms* %93, i64 0, i32 2
  %99 = getelementptr inbounds %struct.t_atoms* %93, i64 0, i32 1
  %100 = getelementptr inbounds %struct.t_atoms* %93, i64 0, i32 0
  %101 = getelementptr inbounds %struct.t_atoms* %93, i64 0, i32 6
  %102 = getelementptr inbounds %struct.t_atoms* %93, i64 0, i32 5
  %103 = sext i32 %92 to i64
  br label %.outer.i

.outer.i:                                         ; preds = %173, %94
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %173 ], [ 0, %94 ]
  %oldres.0.ph.i = phi i32 [ %oldres.2.i, %173 ], [ -666, %94 ]
  %newres.0.ph.i = phi i32 [ %newres.2.i, %173 ], [ 0, %94 ]
  %bEnd.0.ph.i = phi i32 [ %112, %173 ], [ 0, %94 ]
  br label %104

; <label>:104                                     ; preds = %109, %.outer.i
  %bEnd.0.i = phi i32 [ %112, %109 ], [ %bEnd.0.ph.i, %.outer.i ]
  %105 = icmp eq i32 %bEnd.0.i, 0
  br i1 %105, label %106, label %.critedge.i

; <label>:106                                     ; preds = %104
  %107 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %.critedge.i, label %109

; <label>:109                                     ; preds = %106
  %110 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3) #8
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16
  %114 = icmp eq i8 %113, 35
  %or.cond.i = or i1 %111, %114
  br i1 %or.cond.i, label %104, label %115

; <label>:115                                     ; preds = %109
  %116 = trunc i64 %indvars.iv.i to i32
  %117 = call i32 (i8*, i8*, ...)* @sscanf(i8* %95, i8* getelementptr inbounds ([16 x i8]* @.str59, i64 0, i64 0), double* %db1.i, double* %db2.i, double* %db3.i) #8
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %122, label %119

; <label>:119                                     ; preds = %115
  %120 = add nuw nsw i64 %indvars.iv.i, 1
  %121 = trunc i64 %120 to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str60, i64 0, i64 0), i32 %121, i8* %infile) #8
  br label %122

; <label>:122                                     ; preds = %119, %115
  %123 = icmp slt i64 %indvars.iv.i, %103
  %or.cond2.i = or i1 %96, %123
  br i1 %or.cond2.i, label %125, label %124

; <label>:124                                     ; preds = %122
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str61, i64 0, i64 0), i32 %116, i8* %infile, i32 %92) #8
  br label %125

; <label>:125                                     ; preds = %124, %122
  br i1 %97, label %160, label %126

; <label>:126                                     ; preds = %125
  %127 = load i32* %34, align 4, !tbaa !25
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %137, label %129

; <label>:129                                     ; preds = %126
  %130 = call i32 (i8*, i8*, ...)* @sscanf(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str62, i64 0, i64 0), i32* %resnr.i, i8* %c1.i, i8* %41, i8* %c2.i, i8* %40, i32* %atnr.i) #8
  %131 = icmp eq i32 %130, 6
  br i1 %131, label %137, label %132

; <label>:132                                     ; preds = %129
  %133 = icmp sgt i32 %oldres.0.ph.i, -1
  br i1 %133, label %134, label %135

; <label>:134                                     ; preds = %132
  store i32 %oldres.0.ph.i, i32* %resnr.i, align 4, !tbaa !28
  br label %136

; <label>:135                                     ; preds = %132
  store i32 1, i32* %resnr.i, align 4, !tbaa !28
  store i32 4144959, i32* %46, align 16
  br label %136

; <label>:136                                     ; preds = %135, %134
  store i32 4144959, i32* %45, align 16
  br label %137

; <label>:137                                     ; preds = %136, %129, %126
  %138 = call i8** @put_symtab(%struct.t_symtab* %91, i8* %40) #8
  %139 = load i8**** %98, align 8, !tbaa !29
  %140 = getelementptr inbounds i8*** %139, i64 %indvars.iv.i
  store i8** %138, i8*** %140, align 8, !tbaa !14
  %141 = load i32* %resnr.i, align 4, !tbaa !28
  %142 = icmp eq i32 %141, %oldres.0.ph.i
  br i1 %142, label %156, label %143

; <label>:143                                     ; preds = %137
  %144 = load i32* %100, align 4, !tbaa !32
  %145 = icmp slt i32 %newres.0.ph.i, %144
  br i1 %145, label %147, label %146

; <label>:146                                     ; preds = %143
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str64, i64 0, i64 0), i8* %infile, i32 %144) #8
  br label %147

; <label>:147                                     ; preds = %146, %143
  %148 = call i8** @put_symtab(%struct.t_symtab* %91, i8* %41) #8
  %149 = sext i32 %newres.0.ph.i to i64
  %150 = load i8**** %101, align 8, !tbaa !33
  %151 = getelementptr inbounds i8*** %150, i64 %149
  store i8** %148, i8*** %151, align 8, !tbaa !14
  %152 = add nsw i32 %newres.0.ph.i, 1
  %153 = load i32* %102, align 4, !tbaa !34
  %154 = icmp slt i32 %newres.0.ph.i, %153
  br i1 %154, label %156, label %155

; <label>:155                                     ; preds = %147
  store i32 %152, i32* %102, align 4, !tbaa !34
  br label %156

; <label>:156                                     ; preds = %155, %147, %137
  %oldres.1.i = phi i32 [ %141, %155 ], [ %141, %147 ], [ %oldres.0.ph.i, %137 ]
  %newres.1.i = phi i32 [ %152, %155 ], [ %152, %147 ], [ %newres.0.ph.i, %137 ]
  store i32 %newres.1.i, i32* %resnr.i, align 4, !tbaa !28
  %157 = add nsw i32 %newres.1.i, -1
  %158 = load %struct.t_atom** %99, align 8, !tbaa !35
  %159 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv.i, i32 7
  store i32 %157, i32* %159, align 4, !tbaa !36
  br label %160

; <label>:160                                     ; preds = %156, %125
  %oldres.2.i = phi i32 [ %oldres.1.i, %156 ], [ %oldres.0.ph.i, %125 ]
  %newres.2.i = phi i32 [ %newres.1.i, %156 ], [ %newres.0.ph.i, %125 ]
  %161 = load [3 x float]** %44, align 8, !tbaa !38
  %162 = icmp eq [3 x float]* %161, null
  br i1 %162, label %173, label %163

; <label>:163                                     ; preds = %160
  %164 = load double* %db1.i, align 8, !tbaa !22
  %165 = fptrunc double %164 to float
  %166 = getelementptr inbounds [3 x float]* %161, i64 %indvars.iv.i, i64 0
  store float %165, float* %166, align 4, !tbaa !39
  %167 = load double* %db2.i, align 8, !tbaa !22
  %168 = fptrunc double %167 to float
  %169 = getelementptr inbounds [3 x float]* %161, i64 %indvars.iv.i, i64 1
  store float %168, float* %169, align 4, !tbaa !39
  %170 = load double* %db3.i, align 8, !tbaa !22
  %171 = fptrunc double %170 to float
  %172 = getelementptr inbounds [3 x float]* %161, i64 %indvars.iv.i, i64 2
  store float %171, float* %172, align 4, !tbaa !39
  br label %173

; <label>:173                                     ; preds = %163, %160
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1
  br label %.outer.i

.critedge.i:                                      ; preds = %106, %104
  %174 = trunc i64 %indvars.iv.i to i32
  %175 = icmp eq i32 %174, %92
  %or.cond3.i = or i1 %96, %175
  br i1 %or.cond3.i, label %read_g96_pos.exit, label %176

; <label>:176                                     ; preds = %.critedge.i
  %177 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %178 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %177, i8* getelementptr inbounds ([61 x i8]* @.str65, i64 0, i64 0), i32 %174, i8* %infile, i32 %92) #8
  br label %read_g96_pos.exit

read_g96_pos.exit:                                ; preds = %90, %.critedge.i, %176
  %natoms.1.i = phi i32 [ %174, %176 ], [ %174, %.critedge.i ], [ 0, %90 ]
  store i32 %natoms.1.i, i32* %42, align 4, !tbaa !26
  call void @llvm.lifetime.end(i64 4096, i8* %41) #6
  call void @llvm.lifetime.end(i64 4096, i8* %40) #6
  call void @llvm.lifetime.end(i64 4, i8* %35)
  call void @llvm.lifetime.end(i64 4, i8* %36)
  call void @llvm.lifetime.end(i64 1, i8* %c1.i)
  call void @llvm.lifetime.end(i64 1, i8* %c2.i)
  call void @llvm.lifetime.end(i64 8, i8* %37)
  call void @llvm.lifetime.end(i64 8, i8* %38)
  call void @llvm.lifetime.end(i64 8, i8* %39)
  br label %179

; <label>:179                                     ; preds = %87, %read_g96_pos.exit, %86
  %bFinished.2 = phi i32 [ %bFinished.1, %read_g96_pos.exit ], [ %bFinished.1, %86 ], [ 1, %87 ]
  %natoms.1 = phi i32 [ %natoms.1.i, %read_g96_pos.exit ], [ %natoms.0, %86 ], [ %natoms.0, %87 ]
  %180 = load [3 x float]** %47, align 8, !tbaa !40
  %181 = icmp ne [3 x float]* %180, null
  %or.cond = and i1 %66, %181
  br i1 %or.cond, label %182, label %230

; <label>:182                                     ; preds = %179
  store i32 %67, i32* %48, align 4, !tbaa !41
  call void @llvm.lifetime.start(i64 8, i8* %49)
  call void @llvm.lifetime.start(i64 8, i8* %50)
  call void @llvm.lifetime.start(i64 8, i8* %51)
  %183 = load i32* %42, align 4, !tbaa !26
  br i1 %66, label %184, label %read_g96_vel.exit

; <label>:184                                     ; preds = %182
  %185 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str66, i64 0, i64 0)) #8
  %186 = icmp eq i32 %185, 0
  %..i13 = select i1 %186, i64 0, i64 24
  %187 = getelementptr inbounds [4097 x i8]* @read_g96_conf.line, i64 0, i64 %..i13
  %188 = icmp eq i32 %183, -1
  %189 = sext i32 %183 to i64
  br label %.outer.i16

.outer.i16:                                       ; preds = %224, %184
  %indvars.iv.i14 = phi i64 [ %indvars.iv.next.i20, %224 ], [ 0, %184 ]
  %bEnd.0.ph.i15 = phi i32 [ %198, %224 ], [ 0, %184 ]
  br label %190

; <label>:190                                     ; preds = %195, %.outer.i16
  %bEnd.0.i17 = phi i32 [ %198, %195 ], [ %bEnd.0.ph.i15, %.outer.i16 ]
  %191 = icmp eq i32 %bEnd.0.i17, 0
  br i1 %191, label %192, label %.critedge.i22

; <label>:192                                     ; preds = %190
  %193 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8
  %194 = icmp eq i8* %193, null
  br i1 %194, label %.critedge.i22, label %195

; <label>:195                                     ; preds = %192
  %196 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3) #8
  %197 = icmp eq i32 %196, 0
  %198 = zext i1 %197 to i32
  %199 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16
  %200 = icmp eq i8 %199, 35
  %or.cond.i18 = or i1 %197, %200
  br i1 %or.cond.i18, label %190, label %201

; <label>:201                                     ; preds = %195
  %202 = trunc i64 %indvars.iv.i14 to i32
  %203 = call i32 (i8*, i8*, ...)* @sscanf(i8* %187, i8* getelementptr inbounds ([16 x i8]* @.str59, i64 0, i64 0), double* %db1.i10, double* %db2.i11, double* %db3.i12) #8
  %204 = icmp eq i32 %203, 3
  br i1 %204, label %208, label %205

; <label>:205                                     ; preds = %201
  %206 = add nuw nsw i64 %indvars.iv.i14, 1
  %207 = trunc i64 %206 to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str67, i64 0, i64 0), i32 %207, i8* %infile) #8
  br label %208

; <label>:208                                     ; preds = %205, %201
  %209 = icmp slt i64 %indvars.iv.i14, %189
  %or.cond2.i19 = or i1 %188, %209
  br i1 %or.cond2.i19, label %211, label %210

; <label>:210                                     ; preds = %208
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([51 x i8]* @.str68, i64 0, i64 0), i32 %202, i8* %infile, i32 %183) #8
  br label %211

; <label>:211                                     ; preds = %210, %208
  %212 = load [3 x float]** %47, align 8, !tbaa !40
  %213 = icmp eq [3 x float]* %212, null
  br i1 %213, label %224, label %214

; <label>:214                                     ; preds = %211
  %215 = load double* %db1.i10, align 8, !tbaa !22
  %216 = fptrunc double %215 to float
  %217 = getelementptr inbounds [3 x float]* %212, i64 %indvars.iv.i14, i64 0
  store float %216, float* %217, align 4, !tbaa !39
  %218 = load double* %db2.i11, align 8, !tbaa !22
  %219 = fptrunc double %218 to float
  %220 = getelementptr inbounds [3 x float]* %212, i64 %indvars.iv.i14, i64 1
  store float %219, float* %220, align 4, !tbaa !39
  %221 = load double* %db3.i12, align 8, !tbaa !22
  %222 = fptrunc double %221 to float
  %223 = getelementptr inbounds [3 x float]* %212, i64 %indvars.iv.i14, i64 2
  store float %222, float* %223, align 4, !tbaa !39
  br label %224

; <label>:224                                     ; preds = %214, %211
  %indvars.iv.next.i20 = add nuw i64 %indvars.iv.i14, 1
  br label %.outer.i16

.critedge.i22:                                    ; preds = %192, %190
  %225 = trunc i64 %indvars.iv.i14 to i32
  %226 = icmp eq i32 %225, %183
  %or.cond3.i21 = or i1 %188, %226
  br i1 %or.cond3.i21, label %read_g96_vel.exit, label %227

; <label>:227                                     ; preds = %.critedge.i22
  %228 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %229 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %228, i8* getelementptr inbounds ([60 x i8]* @.str69, i64 0, i64 0), i32 %225, i8* %infile, i32 %183) #8
  br label %read_g96_vel.exit

read_g96_vel.exit:                                ; preds = %182, %.critedge.i22, %227
  %natoms.1.i23 = phi i32 [ %225, %227 ], [ %225, %.critedge.i22 ], [ -1, %182 ]
  call void @llvm.lifetime.end(i64 8, i8* %49)
  call void @llvm.lifetime.end(i64 8, i8* %50)
  call void @llvm.lifetime.end(i64 8, i8* %51)
  br label %230

; <label>:230                                     ; preds = %read_g96_vel.exit, %179
  %natoms.2 = phi i32 [ %natoms.1.i23, %read_g96_vel.exit ], [ %natoms.1, %179 ]
  br i1 %69, label %231, label %.critedge4

; <label>:231                                     ; preds = %230
  %232 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 1, i32* %232, align 4, !tbaa !42
  %233 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25
  %234 = bitcast [3 x [3 x float]]* %233 to i8*
  call void @llvm.memset.p0i8.i64(i8* %234, i8 0, i64 36, i32 4, i1 false) #6
  %235 = getelementptr inbounds [3 x [3 x float]]* %233, i64 0, i64 0, i64 0
  %236 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  %237 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  %238 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1
  %239 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2
  %240 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0
  %241 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2
  %242 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0
  %243 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1
  br label %244

; <label>:244                                     ; preds = %.backedge, %231
  %245 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8
  %246 = icmp eq i8* %245, null
  br i1 %246, label %.critedge5, label %247

; <label>:247                                     ; preds = %244
  %248 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3) #8
  %249 = icmp eq i32 %248, 0
  %250 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16
  %251 = icmp eq i8 %250, 35
  %or.cond9 = or i1 %249, %251
  br i1 %or.cond9, label %.backedge, label %252

; <label>:252                                     ; preds = %247
  %253 = call i32 (i8*, i8*, ...)* @sscanf(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), double* %db1, double* %db2, double* %db3, double* %db4, double* %db5, double* %db6, double* %db7, double* %db8, double* %db9) #8
  %254 = icmp slt i32 %253, 3
  br i1 %254, label %255, label %256

; <label>:255                                     ; preds = %252
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str11, i64 0, i64 0), i8* %infile) #8
  br label %256

; <label>:256                                     ; preds = %255, %252
  %257 = load double* %db1, align 8, !tbaa !22
  %258 = fptrunc double %257 to float
  store float %258, float* %235, align 4, !tbaa !39
  %259 = load double* %db2, align 8, !tbaa !22
  %260 = fptrunc double %259 to float
  store float %260, float* %236, align 4, !tbaa !39
  %261 = load double* %db3, align 8, !tbaa !22
  %262 = fptrunc double %261 to float
  store float %262, float* %237, align 4, !tbaa !39
  %263 = icmp eq i32 %253, 9
  br i1 %263, label %264, label %.backedge

.backedge:                                        ; preds = %256, %264, %247
  br i1 %249, label %.critedge5, label %244

; <label>:264                                     ; preds = %256
  %265 = load double* %db4, align 8, !tbaa !22
  %266 = fptrunc double %265 to float
  store float %266, float* %238, align 4, !tbaa !39
  %267 = load double* %db5, align 8, !tbaa !22
  %268 = fptrunc double %267 to float
  store float %268, float* %239, align 4, !tbaa !39
  %269 = load double* %db6, align 8, !tbaa !22
  %270 = fptrunc double %269 to float
  store float %270, float* %240, align 4, !tbaa !39
  %271 = load double* %db7, align 8, !tbaa !22
  %272 = fptrunc double %271 to float
  store float %272, float* %241, align 4, !tbaa !39
  %273 = load double* %db8, align 8, !tbaa !22
  %274 = fptrunc double %273 to float
  store float %274, float* %242, align 4, !tbaa !39
  %275 = load double* %db9, align 8, !tbaa !22
  %276 = fptrunc double %275 to float
  store float %276, float* %243, align 4, !tbaa !39
  br label %.backedge

.critedge4:                                       ; preds = %230
  %277 = icmp eq i32 %bFinished.2, 0
  br i1 %277, label %278, label %.critedge5

; <label>:278                                     ; preds = %.critedge4
  %279 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8
  %280 = icmp eq i8* %279, null
  br i1 %280, label %.critedge5, label %52

.critedge5:                                       ; preds = %278, %.critedge4, %244, %.backedge
  %281 = load %struct.t_symtab** @read_g96_conf.symtab, align 8, !tbaa !14
  call void @close_symtab(%struct.t_symtab* %281) #8
  store i32 %natoms.2, i32* %42, align 4, !tbaa !26
  ret i32 %natoms.2
}

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct.__sFILE* nocapture) #4

; Function Attrs: optsize
declare void @clear_trxframe(%struct.t_trxframe*, i32) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @open_symtab(%struct.t_symtab*) #1

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct.__sFILE*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @close_symtab(%struct.t_symtab*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @write_g96_conf(%struct.__sFILE* nocapture %out, %struct.t_trxframe* %fr, i32 %nindex, i32* readonly %index) #3 {
  %1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  %2 = load %struct.t_atoms** %1, align 8, !tbaa !27
  %3 = icmp ne i32* %index, null
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %6 = load i32* %5, align 4, !tbaa !26
  br label %7

; <label>:7                                       ; preds = %0, %4
  %nout.0 = phi i32 [ %6, %4 ], [ %nindex, %0 ]
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  %9 = load i32* %8, align 4, !tbaa !15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  %13 = load i8** %12, align 8, !tbaa !18
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* %13) #8
  br label %15

; <label>:15                                      ; preds = %7, %11
  %16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  %17 = load i32* %16, align 4, !tbaa !21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

; <label>:19                                      ; preds = %15
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  %21 = load i32* %20, align 4, !tbaa !19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

; <label>:23                                      ; preds = %19, %15
  %24 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %25 = load i32* %24, align 4, !tbaa !43
  %26 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %27 = load float* %26, align 4, !tbaa !24
  %28 = fpext float %27 to double
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str13, i64 0, i64 0), i32 %25, double %28) #8
  br label %30

; <label>:30                                      ; preds = %19, %23
  %31 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %32 = load i32* %31, align 4, !tbaa !20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %102, label %34

; <label>:34                                      ; preds = %30
  %35 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  %36 = load i32* %35, align 4, !tbaa !25
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %78, label %38

; <label>:38                                      ; preds = %34
  %39 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %out)
  %40 = icmp sgt i32 %nout.0, 0
  br i1 %40, label %.lr.ph15, label %.loopexit7

.lr.ph15:                                         ; preds = %38
  %41 = getelementptr inbounds %struct.t_atoms* %2, i64 0, i32 1
  %42 = getelementptr inbounds %struct.t_atoms* %2, i64 0, i32 6
  %43 = getelementptr inbounds %struct.t_atoms* %2, i64 0, i32 2
  %44 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %45 = add i32 %nout.0, -1
  br label %46

; <label>:46                                      ; preds = %51, %.lr.ph15
  %indvars.iv24 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next25, %51 ]
  %47 = trunc i64 %indvars.iv24 to i32
  br i1 %3, label %48, label %51

; <label>:48                                      ; preds = %46
  %49 = getelementptr inbounds i32* %index, i64 %indvars.iv24
  %50 = load i32* %49, align 4, !tbaa !28
  br label %51

; <label>:51                                      ; preds = %46, %48
  %a.0 = phi i32 [ %50, %48 ], [ %47, %46 ]
  %52 = sext i32 %a.0 to i64
  %53 = load %struct.t_atom** %41, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.t_atom* %53, i64 %52, i32 7
  %55 = load i32* %54, align 4, !tbaa !36
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %55 to i64
  %58 = load i8**** %42, align 8, !tbaa !33
  %59 = getelementptr inbounds i8*** %58, i64 %57
  %60 = load i8*** %59, align 8, !tbaa !14
  %61 = load i8** %60, align 8, !tbaa !14
  %62 = load i8**** %43, align 8, !tbaa !29
  %63 = getelementptr inbounds i8*** %62, i64 %52
  %64 = load i8*** %63, align 8, !tbaa !14
  %65 = load i8** %64, align 8, !tbaa !14
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %66 = load [3 x float]** %44, align 8, !tbaa !38
  %67 = getelementptr inbounds [3 x float]* %66, i64 %52, i64 0
  %68 = load float* %67, align 4, !tbaa !39
  %69 = fpext float %68 to double
  %70 = getelementptr inbounds [3 x float]* %66, i64 %52, i64 1
  %71 = load float* %70, align 4, !tbaa !39
  %72 = fpext float %71 to double
  %73 = getelementptr inbounds [3 x float]* %66, i64 %52, i64 2
  %74 = load float* %73, align 4, !tbaa !39
  %75 = fpext float %74 to double
  %76 = trunc i64 %indvars.iv.next25 to i32
  %77 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([36 x i8]* @.str15, i64 0, i64 0), i32 %56, i8* %61, i8* %65, i32 %76, double %69, double %72, double %75) #8
  %exitcond27 = icmp eq i32 %47, %45
  br i1 %exitcond27, label %.loopexit7, label %46

; <label>:78                                      ; preds = %34
  %79 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str16, i64 0, i64 0), i64 12, i64 1, %struct.__sFILE* %out)
  %80 = icmp sgt i32 %nout.0, 0
  br i1 %80, label %.lr.ph13, label %.loopexit7

.lr.ph13:                                         ; preds = %78
  %81 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %82 = add i32 %nout.0, -1
  br label %83

; <label>:83                                      ; preds = %88, %.lr.ph13
  %indvars.iv20 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next21, %88 ]
  %84 = trunc i64 %indvars.iv20 to i32
  br i1 %3, label %85, label %88

; <label>:85                                      ; preds = %83
  %86 = getelementptr inbounds i32* %index, i64 %indvars.iv20
  %87 = load i32* %86, align 4, !tbaa !28
  br label %88

; <label>:88                                      ; preds = %83, %85
  %a.1 = phi i32 [ %87, %85 ], [ %84, %83 ]
  %89 = sext i32 %a.1 to i64
  %90 = load [3 x float]** %81, align 8, !tbaa !38
  %91 = getelementptr inbounds [3 x float]* %90, i64 %89, i64 0
  %92 = load float* %91, align 4, !tbaa !39
  %93 = fpext float %92 to double
  %94 = getelementptr inbounds [3 x float]* %90, i64 %89, i64 1
  %95 = load float* %94, align 4, !tbaa !39
  %96 = fpext float %95 to double
  %97 = getelementptr inbounds [3 x float]* %90, i64 %89, i64 2
  %98 = load float* %97, align 4, !tbaa !39
  %99 = fpext float %98 to double
  %100 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), double %93, double %96, double %99) #8
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond23 = icmp eq i32 %84, %82
  br i1 %exitcond23, label %.loopexit7, label %83

.loopexit7:                                       ; preds = %51, %88, %38, %78
  %101 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out)
  br label %102

; <label>:102                                     ; preds = %30, %.loopexit7
  %103 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %104 = load i32* %103, align 4, !tbaa !41
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %172, label %106

; <label>:106                                     ; preds = %102
  %107 = icmp eq %struct.t_atoms* %2, null
  br i1 %107, label %148, label %108

; <label>:108                                     ; preds = %106
  %109 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %out)
  %110 = icmp sgt i32 %nout.0, 0
  br i1 %110, label %.lr.ph11, label %.loopexit

.lr.ph11:                                         ; preds = %108
  %111 = getelementptr inbounds %struct.t_atoms* %2, i64 0, i32 1
  %112 = getelementptr inbounds %struct.t_atoms* %2, i64 0, i32 6
  %113 = getelementptr inbounds %struct.t_atoms* %2, i64 0, i32 2
  %114 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %115 = add i32 %nout.0, -1
  br label %116

; <label>:116                                     ; preds = %121, %.lr.ph11
  %indvars.iv16 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next17, %121 ]
  %117 = trunc i64 %indvars.iv16 to i32
  br i1 %3, label %118, label %121

; <label>:118                                     ; preds = %116
  %119 = getelementptr inbounds i32* %index, i64 %indvars.iv16
  %120 = load i32* %119, align 4, !tbaa !28
  br label %121

; <label>:121                                     ; preds = %116, %118
  %a.2 = phi i32 [ %120, %118 ], [ %117, %116 ]
  %122 = sext i32 %a.2 to i64
  %123 = load %struct.t_atom** %111, align 8, !tbaa !35
  %124 = getelementptr inbounds %struct.t_atom* %123, i64 %122, i32 7
  %125 = load i32* %124, align 4, !tbaa !36
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %125 to i64
  %128 = load i8**** %112, align 8, !tbaa !33
  %129 = getelementptr inbounds i8*** %128, i64 %127
  %130 = load i8*** %129, align 8, !tbaa !14
  %131 = load i8** %130, align 8, !tbaa !14
  %132 = load i8**** %113, align 8, !tbaa !29
  %133 = getelementptr inbounds i8*** %132, i64 %122
  %134 = load i8*** %133, align 8, !tbaa !14
  %135 = load i8** %134, align 8, !tbaa !14
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %136 = load [3 x float]** %114, align 8, !tbaa !40
  %137 = getelementptr inbounds [3 x float]* %136, i64 %122, i64 0
  %138 = load float* %137, align 4, !tbaa !39
  %139 = fpext float %138 to double
  %140 = getelementptr inbounds [3 x float]* %136, i64 %122, i64 1
  %141 = load float* %140, align 4, !tbaa !39
  %142 = fpext float %141 to double
  %143 = getelementptr inbounds [3 x float]* %136, i64 %122, i64 2
  %144 = load float* %143, align 4, !tbaa !39
  %145 = fpext float %144 to double
  %146 = trunc i64 %indvars.iv.next17 to i32
  %147 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([36 x i8]* @.str15, i64 0, i64 0), i32 %126, i8* %131, i8* %135, i32 %146, double %139, double %142, double %145) #8
  %exitcond19 = icmp eq i32 %117, %115
  br i1 %exitcond19, label %.loopexit, label %116

; <label>:148                                     ; preds = %106
  %149 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str20, i64 0, i64 0), i64 12, i64 1, %struct.__sFILE* %out)
  %150 = icmp sgt i32 %nout.0, 0
  br i1 %150, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %148
  %151 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %152 = add i32 %nout.0, -1
  br label %153

; <label>:153                                     ; preds = %158, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %158 ]
  %154 = trunc i64 %indvars.iv to i32
  br i1 %3, label %155, label %158

; <label>:155                                     ; preds = %153
  %156 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %157 = load i32* %156, align 4, !tbaa !28
  br label %158

; <label>:158                                     ; preds = %153, %155
  %a.3 = phi i32 [ %157, %155 ], [ %154, %153 ]
  %159 = sext i32 %a.3 to i64
  %160 = load [3 x float]** %151, align 8, !tbaa !40
  %161 = getelementptr inbounds [3 x float]* %160, i64 %159, i64 0
  %162 = load float* %161, align 4, !tbaa !39
  %163 = fpext float %162 to double
  %164 = getelementptr inbounds [3 x float]* %160, i64 %159, i64 1
  %165 = load float* %164, align 4, !tbaa !39
  %166 = fpext float %165 to double
  %167 = getelementptr inbounds [3 x float]* %160, i64 %159, i64 2
  %168 = load float* %167, align 4, !tbaa !39
  %169 = fpext float %168 to double
  %170 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), double %163, double %166, double %169) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %154, %152
  br i1 %exitcond, label %.loopexit, label %153

.loopexit:                                        ; preds = %121, %158, %108, %148
  %171 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out)
  br label %172

; <label>:172                                     ; preds = %102, %.loopexit
  %173 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  %174 = load i32* %173, align 4, !tbaa !42
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %234, label %176

; <label>:176                                     ; preds = %172
  %177 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out)
  %178 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0
  %179 = load float* %178, align 4, !tbaa !39
  %180 = fpext float %179 to double
  %181 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1
  %182 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  %183 = load float* %182, align 4, !tbaa !39
  %184 = fpext float %183 to double
  %185 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2
  %186 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  %187 = load float* %186, align 4, !tbaa !39
  %188 = fpext float %187 to double
  %189 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str22, i64 0, i64 0), double %180, double %184, double %188) #8
  %190 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1
  %191 = load float* %190, align 4, !tbaa !39
  %fabsf = tail call float @fabsf(float %191) #9
  %192 = fpext float %fabsf to double
  %193 = fcmp ogt double %192, 1.200000e-38
  %.phi.trans.insert = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !39
  br i1 %193, label %._crit_edge, label %194

; <label>:194                                     ; preds = %176
  %fabsf1 = tail call float @fabsf(float %.pre) #9
  %195 = fpext float %fabsf1 to double
  %196 = fcmp ogt double %195, 1.200000e-38
  br i1 %196, label %._crit_edge, label %197

; <label>:197                                     ; preds = %194
  %198 = getelementptr inbounds [3 x float]* %181, i64 0, i64 0
  %199 = load float* %198, align 4, !tbaa !39
  %fabsf2 = tail call float @fabsf(float %199) #9
  %200 = fpext float %fabsf2 to double
  %201 = fcmp ogt double %200, 1.200000e-38
  br i1 %201, label %._crit_edge, label %202

; <label>:202                                     ; preds = %197
  %203 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2
  %204 = load float* %203, align 4, !tbaa !39
  %fabsf3 = tail call float @fabsf(float %204) #9
  %205 = fpext float %fabsf3 to double
  %206 = fcmp ogt double %205, 1.200000e-38
  br i1 %206, label %._crit_edge, label %207

; <label>:207                                     ; preds = %202
  %208 = getelementptr inbounds [3 x float]* %185, i64 0, i64 0
  %209 = load float* %208, align 4, !tbaa !39
  %fabsf4 = tail call float @fabsf(float %209) #9
  %210 = fpext float %fabsf4 to double
  %211 = fcmp ogt double %210, 1.200000e-38
  br i1 %211, label %._crit_edge, label %212

; <label>:212                                     ; preds = %207
  %213 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1
  %214 = load float* %213, align 4, !tbaa !39
  %fabsf5 = tail call float @fabsf(float %214) #9
  %215 = fpext float %fabsf5 to double
  %216 = fcmp ogt double %215, 1.200000e-38
  br i1 %216, label %._crit_edge, label %232

._crit_edge:                                      ; preds = %176, %212, %207, %202, %197, %194
  %217 = fpext float %191 to double
  %218 = fpext float %.pre to double
  %219 = getelementptr inbounds [3 x float]* %181, i64 0, i64 0
  %220 = load float* %219, align 4, !tbaa !39
  %221 = fpext float %220 to double
  %222 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2
  %223 = load float* %222, align 4, !tbaa !39
  %224 = fpext float %223 to double
  %225 = getelementptr inbounds [3 x float]* %185, i64 0, i64 0
  %226 = load float* %225, align 4, !tbaa !39
  %227 = fpext float %226 to double
  %228 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1
  %229 = load float* %228, align 4, !tbaa !39
  %230 = fpext float %229 to double
  %231 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([37 x i8]* @.str23, i64 0, i64 0), double %217, double %218, double %221, double %224, double %227, double %230) #8
  br label %232

; <label>:232                                     ; preds = %._crit_edge, %212
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %out)
  %233 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out)
  br label %234

; <label>:234                                     ; preds = %172, %232
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gro_next_x_or_v(%struct.__sFILE* %status, %struct.t_trxframe* nocapture %fr) #3 {
  %atoms = alloca %struct.t_atoms, align 8
  %title = alloca [4096 x i8], align 16
  %tt = alloca double, align 8
  %ndec = alloca i32, align 4
  %1 = bitcast %struct.t_atoms* %atoms to i8*
  call void @llvm.lifetime.start(i64 1280, i8* %1) #6
  %2 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %2) #6
  %3 = tail call i32 @eof(%struct.__sFILE* %status) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %63

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %7 = load i32* %6, align 4, !tbaa !26
  %8 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  store i32 %7, i32* %8, align 8, !tbaa !32
  %9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 576, i32 %7, i32 40) #8
  %10 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %11 = bitcast %struct.t_atom** %10 to i8**
  store i8* %9, i8** %11, align 8, !tbaa !35
  %12 = load i32* %6, align 4, !tbaa !26
  %13 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  store i32 %12, i32* %13, align 8, !tbaa !34
  %14 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 578, i32 %12, i32 8) #8
  %15 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  %16 = bitcast i8**** %15 to i8**
  store i8* %14, i8** %16, align 8, !tbaa !33
  %17 = load i32* %6, align 4, !tbaa !26
  %18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 579, i32 %17, i32 8) #8
  %19 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %20 = bitcast i8**** %19 to i8**
  store i8* %18, i8** %20, align 8, !tbaa !29
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %22 = load [3 x float]** %21, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %24 = load [3 x float]** %23, align 8, !tbaa !40
  %25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %26 = call fastcc i32 @get_w_conf(%struct.__sFILE* %status, i8* %2, i8* %2, %struct.t_atoms* %atoms, i32* %ndec, [3 x float]* %22, [3 x float]* %24, [3 x float]* %25) #10
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  store i32 %26, i32* %27, align 4, !tbaa !41
  %28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  store i32 1, i32* %28, align 4, !tbaa !44
  %29 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  store float 1.000000e+00, float* %29, align 4, !tbaa !45
  %30 = load i32* %ndec, align 4, !tbaa !28
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %5, %.lr.ph
  %32 = phi float [ %33, %.lr.ph ], [ 1.000000e+00, %5 ]
  %i.01 = phi i32 [ %34, %.lr.ph ], [ 0, %5 ]
  %33 = fmul float %32, 1.000000e+01
  %34 = add nuw nsw i32 %i.01, 1
  %35 = icmp slt i32 %34, %30
  br i1 %35, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  store float %33, float* %29, align 4, !tbaa !45
  br label %36

; <label>:36                                      ; preds = %._crit_edge, %5
  %37 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* %2, i8** %37, align 8, !tbaa !18
  %38 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  store i32 1, i32* %38, align 4, !tbaa !15
  %39 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %39, align 4, !tbaa !20
  %40 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 1, i32* %40, align 4, !tbaa !42
  %41 = load i8** %11, align 8, !tbaa !35
  call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 592, i8* %41) #8
  %42 = load i8** %16, align 8, !tbaa !33
  call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 593, i8* %42) #8
  %43 = load i8** %20, align 8, !tbaa !29
  call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 594, i8* %43) #8
  %44 = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str28, i64 0, i64 0)) #8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %58, label %46

; <label>:46                                      ; preds = %36
  %47 = getelementptr inbounds i8* %44, i64 2
  %48 = call i32 (i8*, i8*, ...)* @sscanf(i8* %47, i8* getelementptr inbounds ([4 x i8]* @.str29, i64 0, i64 0), double* %tt) #8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %55

; <label>:50                                      ; preds = %46
  %51 = load double* %tt, align 8, !tbaa !22
  %52 = fptrunc double %51 to float
  %53 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float %52, float* %53, align 4, !tbaa !24
  %54 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 1, i32* %54, align 4, !tbaa !19
  br label %58

; <label>:55                                      ; preds = %46
  %56 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float 0.000000e+00, float* %56, align 4, !tbaa !24
  %57 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 0, i32* %57, align 4, !tbaa !19
  br label %58

; <label>:58                                      ; preds = %36, %50, %55
  %59 = load i32* %8, align 8, !tbaa !32
  %60 = load i32* %6, align 4, !tbaa !26
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %63, label %62

; <label>:62                                      ; preds = %58
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([86 x i8]* @.str30, i64 0, i64 0), i32 %59, i32 %60) #8
  br label %63

; <label>:63                                      ; preds = %62, %58, %0
  %.0 = phi i32 [ 0, %0 ], [ 1, %58 ], [ 1, %62 ]
  call void @llvm.lifetime.end(i64 4096, i8* %2) #6
  call void @llvm.lifetime.end(i64 1280, i8* %1) #6
  ret i32 %.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i32 @eof(%struct.__sFILE*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @get_w_conf(%struct.__sFILE* %in, i8* %infile, i8* %title, %struct.t_atoms* nocapture %atoms, i32* nocapture %ndec, [3 x float]* nocapture %x, [3 x float]* %v, [3 x float]* nocapture %box) #3 {
  %box25 = bitcast [3 x float]* %box to i8*
  %x35 = bitcast [3 x float]* %x to i8*
  %name = alloca [6 x i8], align 1
  %line = alloca [4097 x i8], align 16
  %buf = alloca [256 x i8], align 16
  %format = alloca [30 x i8], align 16
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %z1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %z2 = alloca double, align 8
  %xmin = alloca [3 x float], align 4
  %xmin36 = bitcast [3 x float]* %xmin to i8*
  %xmax = alloca [3 x float], align 4
  %xmax34 = bitcast [3 x float]* %xmax to i8*
  %natoms = alloca i32, align 4
  %resnr = alloca i32, align 4
  %1 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %1) #6
  %2 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %2) #6
  %3 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !tbaa !14
  %4 = icmp eq %struct.t_symtab* %3, null
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 392, i32 1, i32 16) #8
  %7 = bitcast i8* %6 to %struct.t_symtab*
  store i8* %6, i8** bitcast (%struct.t_symtab** @get_w_conf.symtab to i8**), align 8, !tbaa !14
  tail call void @open_symtab(%struct.t_symtab* %7) #8
  br label %8

; <label>:8                                       ; preds = %0, %5
  %9 = tail call i8* @fgets2(i8* %title, i32 4096, %struct.__sFILE* %in) #8
  %10 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #8
  %11 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str70, i64 0, i64 0), i32* %natoms) #8
  %12 = load i32* %natoms, align 4, !tbaa !28
  %13 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %14 = load i32* %13, align 4, !tbaa !32
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %8
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([53 x i8]* @.str71, i64 0, i64 0), i32 %12, i32 %14) #8
  br label %.preheader6

; <label>:17                                      ; preds = %8
  %18 = icmp slt i32 %12, %14
  br i1 %18, label %19, label %.preheader6

; <label>:19                                      ; preds = %17
  %20 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %21 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([63 x i8]* @.str72, i64 0, i64 0), i32 %12, i32 %14) #8
  br label %.preheader6

.preheader6:                                      ; preds = %17, %19, %16
  %22 = load i32* %natoms, align 4, !tbaa !28
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader6
  %24 = getelementptr inbounds [6 x i8]* %name, i64 0, i64 0
  %25 = getelementptr inbounds [6 x i8]* %name, i64 0, i64 5
  %26 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 5
  %27 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %28 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 10
  %29 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %30 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 20
  %31 = getelementptr inbounds [30 x i8]* %format, i64 0, i64 0
  %32 = icmp eq [3 x float]* %v, null
  %33 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  br label %34

; <label>:34                                      ; preds = %.lr.ph, %124
  %indvars.iv37 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next38, %124 ]
  %newres.017 = phi i32 [ 0, %.lr.ph ], [ %newres.1, %124 ]
  %bVel.016 = phi i32 [ 0, %.lr.ph ], [ %bVel.1, %124 ]
  %bFirst.015 = phi i32 [ 1, %.lr.ph ], [ 0, %124 ]
  %ddist.014 = phi i32 [ 0, %.lr.ph ], [ %ddist.4, %124 ]
  %oldres.013 = phi i32 [ -12345, %.lr.ph ], [ %oldres.1, %124 ]
  %35 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %40

; <label>:37                                      ; preds = %34
  %38 = add nsw i64 %indvars.iv37, 2
  %39 = trunc i64 %38 to i32
  call void @_unexpected_eof(i8* %infile, i32 %39, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 414) #8
  br label %40

; <label>:40                                      ; preds = %37, %34
  %41 = call i64 @strlen(i8* %1) #8
  %42 = icmp ult i64 %41, 39
  br i1 %42, label %43, label %46

; <label>:43                                      ; preds = %40
  %44 = add nuw nsw i64 %indvars.iv37, 1
  %45 = trunc i64 %44 to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str73, i64 0, i64 0), i8* %infile, i32 %45, i8* %1) #8
  br label %46

; <label>:46                                      ; preds = %43, %40
  %47 = icmp eq i32 %bFirst.015, 0
  br i1 %47, label %67, label %48

; <label>:48                                      ; preds = %46
  %49 = call i8* @strchr(i8* %1, i32 46) #8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %48
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str74, i64 0, i64 0), i8* %infile) #8
  br label %52

; <label>:52                                      ; preds = %51, %48
  %53 = getelementptr inbounds i8* %49, i64 1
  %54 = call i8* @strchr(i8* %53, i32 46) #8
  %55 = icmp ne i8* %49, null
  %56 = icmp ne i8* %54, null
  %or.cond = or i1 %55, %56
  br i1 %or.cond, label %57, label %62

; <label>:57                                      ; preds = %52
  %58 = ptrtoint i8* %54 to i64
  %59 = ptrtoint i8* %49 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  br label %62

; <label>:62                                      ; preds = %52, %57
  %ddist.1 = phi i32 [ %61, %57 ], [ 8, %52 ]
  %63 = icmp slt i32 %ddist.1, 0
  %.ddist.1 = select i1 %63, i32 8, i32 %ddist.1
  %64 = icmp sgt i32 %.ddist.1, 30
  %ddist.3 = select i1 %64, i32 30, i32 %.ddist.1
  %65 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %31, i32 0, i64 30, i8* getelementptr inbounds ([19 x i8]* @.str75, i64 0, i64 0), i32 %ddist.3, i32 %ddist.3, i32 %ddist.3) #8
  %66 = add nsw i32 %ddist.3, -5
  store i32 %66, i32* %ndec, align 4, !tbaa !28
  br label %67

; <label>:67                                      ; preds = %46, %62
  %ddist.4 = phi i32 [ %ddist.3, %62 ], [ %ddist.014, %46 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %1, i64 5, i32 1, i1 false)
  store i8 0, i8* %25, align 1, !tbaa !13
  %68 = call i32 (i8*, i8*, ...)* @sscanf(i8* %24, i8* getelementptr inbounds ([3 x i8]* @.str70, i64 0, i64 0), i32* %resnr) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %26, i64 5, i32 1, i1 false)
  store i8 0, i8* %25, align 1, !tbaa !13
  %69 = load i32* %resnr, align 4, !tbaa !28
  %70 = icmp eq i32 %69, %oldres.013
  br i1 %70, label %82, label %71

; <label>:71                                      ; preds = %67
  %72 = load i32* %natoms, align 4, !tbaa !28
  %73 = icmp slt i32 %newres.017, %72
  br i1 %73, label %75, label %74

; <label>:74                                      ; preds = %71
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str64, i64 0, i64 0), i8* %infile, i32 %72) #8
  br label %75

; <label>:75                                      ; preds = %71, %74
  %76 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !tbaa !14
  %77 = call i8** @put_symtab(%struct.t_symtab* %76, i8* %24) #8
  %78 = sext i32 %newres.017 to i64
  %79 = load i8**** %33, align 8, !tbaa !33
  %80 = getelementptr inbounds i8*** %79, i64 %78
  store i8** %77, i8*** %80, align 8, !tbaa !14
  %81 = add nsw i32 %newres.017, 1
  br label %82

; <label>:82                                      ; preds = %67, %75
  %oldres.1 = phi i32 [ %69, %75 ], [ %oldres.013, %67 ]
  %newres.1 = phi i32 [ %81, %75 ], [ %newres.017, %67 ]
  store i32 %newres.1, i32* %resnr, align 4, !tbaa !28
  %83 = add nsw i32 %newres.1, -1
  %84 = load %struct.t_atom** %27, align 8, !tbaa !35
  %85 = getelementptr inbounds %struct.t_atom* %84, i64 %indvars.iv37, i32 7
  store i32 %83, i32* %85, align 4, !tbaa !36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %28, i64 5, i32 1, i1 false)
  %86 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !tbaa !14
  %87 = call i8** @put_symtab(%struct.t_symtab* %86, i8* %24) #8
  %88 = load i8**** %29, align 8, !tbaa !29
  %89 = getelementptr inbounds i8*** %88, i64 %indvars.iv37
  store i8** %87, i8*** %89, align 8, !tbaa !14
  %90 = call i32 (i8*, i8*, ...)* @sscanf(i8* %30, i8* %31, double* %x1, double* %y1, double* %z1) #8
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %93, label %92

; <label>:92                                      ; preds = %82
  call void @_too_few(i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 466) #8
  br label %103

; <label>:93                                      ; preds = %82
  %94 = load double* %x1, align 8, !tbaa !22
  %95 = fptrunc double %94 to float
  %96 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv37, i64 0
  store float %95, float* %96, align 4, !tbaa !39
  %97 = load double* %y1, align 8, !tbaa !22
  %98 = fptrunc double %97 to float
  %99 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv37, i64 1
  store float %98, float* %99, align 4, !tbaa !39
  %100 = load double* %z1, align 8, !tbaa !22
  %101 = fptrunc double %100 to float
  %102 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv37, i64 2
  store float %101, float* %102, align 4, !tbaa !39
  br label %103

; <label>:103                                     ; preds = %93, %92
  br i1 %32, label %124, label %104

; <label>:104                                     ; preds = %103
  %105 = mul nsw i32 %ddist.4, 3
  %106 = sext i32 %105 to i64
  %.sum = add nsw i64 %106, 20
  %107 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 %.sum
  %108 = call i32 (i8*, i8*, ...)* @sscanf(i8* %107, i8* %31, double* %x1, double* %y1, double* %z1) #8
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %114, label %110

; <label>:110                                     ; preds = %104
  %111 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv37, i64 0
  store float 0.000000e+00, float* %111, align 4, !tbaa !39
  %112 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv37, i64 1
  store float 0.000000e+00, float* %112, align 4, !tbaa !39
  %113 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv37, i64 2
  store float 0.000000e+00, float* %113, align 4, !tbaa !39
  br label %124

; <label>:114                                     ; preds = %104
  %115 = load double* %x1, align 8, !tbaa !22
  %116 = fptrunc double %115 to float
  %117 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv37, i64 0
  store float %116, float* %117, align 4, !tbaa !39
  %118 = load double* %y1, align 8, !tbaa !22
  %119 = fptrunc double %118 to float
  %120 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv37, i64 1
  store float %119, float* %120, align 4, !tbaa !39
  %121 = load double* %z1, align 8, !tbaa !22
  %122 = fptrunc double %121 to float
  %123 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv37, i64 2
  store float %122, float* %123, align 4, !tbaa !39
  br label %124

; <label>:124                                     ; preds = %103, %114, %110
  %bVel.1 = phi i32 [ %bVel.016, %110 ], [ 1, %114 ], [ %bVel.016, %103 ]
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %125 = load i32* %natoms, align 4, !tbaa !28
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %indvars.iv.next38, %126
  br i1 %127, label %34, label %._crit_edge

._crit_edge:                                      ; preds = %124, %.preheader6
  %newres.0.lcssa = phi i32 [ 0, %.preheader6 ], [ %newres.1, %124 ]
  %bVel.0.lcssa = phi i32 [ 0, %.preheader6 ], [ %bVel.1, %124 ]
  %128 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  store i32 %newres.0.lcssa, i32* %128, align 4, !tbaa !34
  %129 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #8
  %130 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str76, i64 0, i64 0), double* %x1, double* %y1, double* %z1) #8
  %131 = icmp eq i32 %130, 3
  br i1 %131, label %167, label %.preheader5

.preheader5:                                      ; preds = %._crit_edge
  %132 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 256, i8* getelementptr inbounds ([19 x i8]* @.str77, i64 0, i64 0), i8* %infile) #8
  call void @warning(i8* %2) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmax34, i8* %x35, i64 12, i32 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmin36, i8* %x35, i64 12, i32 4, i1 false)
  %133 = load i32* %13, align 4, !tbaa !32
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %.preheader4.lr.ph, label %.preheader3

.preheader4.lr.ph:                                ; preds = %.preheader5
  %135 = sext i32 %133 to i64
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.lr.ph, %146
  %indvars.iv29 = phi i64 [ 1, %.preheader4.lr.ph ], [ %indvars.iv.next30, %146 ]
  br label %136

.preheader3:                                      ; preds = %146, %.preheader5
  call void @llvm.memset.p0i8.i64(i8* %box25, i8 0, i64 36, i32 4, i1 false)
  br label %148

; <label>:136                                     ; preds = %136, %.preheader4
  %indvars.iv26 = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next27, %136 ]
  %137 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv26
  %138 = load float* %137, align 4, !tbaa !39
  %139 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv29, i64 %indvars.iv26
  %140 = load float* %139, align 4, !tbaa !39
  %141 = fcmp olt float %138, %140
  %. = select i1 %141, float %138, float %140
  store float %., float* %137, align 4, !tbaa !39
  %142 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv26
  %143 = load float* %142, align 4, !tbaa !39
  %144 = fcmp ogt float %143, %140
  %145 = select i1 %144, float %143, float %140
  store float %145, float* %142, align 4, !tbaa !39
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond28 = icmp eq i64 %indvars.iv.next27, 3
  br i1 %exitcond28, label %146, label %136

; <label>:146                                     ; preds = %136
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %147 = icmp slt i64 %indvars.iv.next30, %135
  br i1 %147, label %.preheader4, label %.preheader3

; <label>:148                                     ; preds = %148, %.preheader3
  %indvars.iv = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next, %148 ]
  %149 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv
  %150 = load float* %149, align 4, !tbaa !39
  %151 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv
  %152 = load float* %151, align 4, !tbaa !39
  %153 = fsub float %150, %152
  %154 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  store float %153, float* %154, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %155, label %148

; <label>:155                                     ; preds = %148
  %156 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %157 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %158 = load float* %157, align 4, !tbaa !39
  %159 = fpext float %158 to double
  %160 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %161 = load float* %160, align 4, !tbaa !39
  %162 = fpext float %161 to double
  %163 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %164 = load float* %163, align 4, !tbaa !39
  %165 = fpext float %164 to double
  %166 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %156, i8* getelementptr inbounds ([45 x i8]* @.str78, i64 0, i64 0), double %159, double %162, double %165) #8
  br label %193

; <label>:167                                     ; preds = %._crit_edge
  %168 = load double* %x1, align 8, !tbaa !22
  %169 = fptrunc double %168 to float
  %170 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  store float %169, float* %170, align 4, !tbaa !39
  %171 = load double* %y1, align 8, !tbaa !22
  %172 = fptrunc double %171 to float
  %173 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  store float %172, float* %173, align 4, !tbaa !39
  %174 = load double* %z1, align 8, !tbaa !22
  %175 = fptrunc double %174 to float
  %176 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  store float %175, float* %176, align 4, !tbaa !39
  %177 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([28 x i8]* @.str79, i64 0, i64 0), double* %x1, double* %y1, double* %z1, double* %x2, double* %y2, double* %z2) #8
  %178 = icmp eq i32 %177, 6
  br i1 %178, label %._crit_edge39, label %179

._crit_edge39:                                    ; preds = %167
  %.pre = load double* %x1, align 8, !tbaa !22
  %.pre40 = load double* %y1, align 8, !tbaa !22
  %.pre41 = load double* %z1, align 8, !tbaa !22
  %.pre42 = load double* %x2, align 8, !tbaa !22
  %.pre43 = load double* %y2, align 8, !tbaa !22
  %.pre44 = load double* %z2, align 8, !tbaa !22
  %phitmp = fptrunc double %.pre to float
  %phitmp45 = fptrunc double %.pre40 to float
  %phitmp46 = fptrunc double %.pre41 to float
  %phitmp47 = fptrunc double %.pre42 to float
  %phitmp48 = fptrunc double %.pre43 to float
  %phitmp49 = fptrunc double %.pre44 to float
  br label %180

; <label>:179                                     ; preds = %167
  store double 0.000000e+00, double* %z2, align 8, !tbaa !22
  store double 0.000000e+00, double* %y2, align 8, !tbaa !22
  store double 0.000000e+00, double* %x2, align 8, !tbaa !22
  store double 0.000000e+00, double* %z1, align 8, !tbaa !22
  store double 0.000000e+00, double* %y1, align 8, !tbaa !22
  store double 0.000000e+00, double* %x1, align 8, !tbaa !22
  br label %180

; <label>:180                                     ; preds = %._crit_edge39, %179
  %181 = phi float [ %phitmp49, %._crit_edge39 ], [ 0.000000e+00, %179 ]
  %182 = phi float [ %phitmp48, %._crit_edge39 ], [ 0.000000e+00, %179 ]
  %183 = phi float [ %phitmp47, %._crit_edge39 ], [ 0.000000e+00, %179 ]
  %184 = phi float [ %phitmp46, %._crit_edge39 ], [ 0.000000e+00, %179 ]
  %185 = phi float [ %phitmp45, %._crit_edge39 ], [ 0.000000e+00, %179 ]
  %186 = phi float [ %phitmp, %._crit_edge39 ], [ 0.000000e+00, %179 ]
  %187 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  store float %186, float* %187, align 4, !tbaa !39
  %188 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  store float %185, float* %188, align 4, !tbaa !39
  %189 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  store float %184, float* %189, align 4, !tbaa !39
  %190 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  store float %183, float* %190, align 4, !tbaa !39
  %191 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  store float %182, float* %191, align 4, !tbaa !39
  %192 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  store float %181, float* %192, align 4, !tbaa !39
  br label %193

; <label>:193                                     ; preds = %180, %155
  %194 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !tbaa !14
  call void @close_symtab(%struct.t_symtab* %194) #8
  call void @llvm.lifetime.end(i64 256, i8* %2) #6
  call void @llvm.lifetime.end(i64 4097, i8* %1) #6
  ret i32 %bVel.0.lcssa
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gro_first_x_or_v(%struct.__sFILE* %status, %struct.t_trxframe* %fr) #3 {
  %title = alloca [4096 x i8], align 16
  %1 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #6
  tail call void @frewind(%struct.__sFILE* %status) #8
  %2 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str31, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %2)
  %4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  call fastcc void @get_coordnum_fp(%struct.__sFILE* %status, i8* %1, i32* %4) #10
  call void @frewind(%struct.__sFILE* %status) #8
  %5 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %6 = load i32* %4, align 4, !tbaa !26
  %7 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([18 x i8]* @.str32, i64 0, i64 0), i8* %1, i32 %6) #8
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  store i32 1, i32* %8, align 4, !tbaa !15
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* %1, i8** %9, align 8, !tbaa !18
  %10 = load i32* %4, align 4, !tbaa !26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  call void (i32, i8*, ...)* @fatal_error(i32 1, i8* getelementptr inbounds ([28 x i8]* @.str33, i64 0, i64 0)) #8
  %.pre = load i32* %4, align 4, !tbaa !26
  br label %13

; <label>:13                                      ; preds = %12, %0
  %14 = phi i32 [ %.pre, %12 ], [ %10, %0 ]
  %15 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 627, i32 %14, i32 12) #8
  %16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %17 = bitcast [3 x float]** %16 to i8**
  store i8* %15, i8** %17, align 8, !tbaa !38
  %18 = load i32* %4, align 4, !tbaa !26
  %19 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 628, i32 %18, i32 12) #8
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %21 = bitcast [3 x float]** %20 to i8**
  store i8* %19, i8** %21, align 8, !tbaa !40
  %22 = call i32 @gro_next_x_or_v(%struct.__sFILE* %status, %struct.t_trxframe* %fr) #10
  %23 = load i32* %4, align 4, !tbaa !26
  call void @llvm.lifetime.end(i64 4096, i8* %1) #6
  ret i32 %23
}

; Function Attrs: optsize
declare void @frewind(%struct.__sFILE*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @get_coordnum_fp(%struct.__sFILE* %in, i8* %title, i32* %natoms) #3 {
  %line = alloca [4097 x i8], align 16
  %1 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %1) #6
  %2 = tail call i8* @fgets2(i8* %title, i32 4096, %struct.__sFILE* %in) #8
  %3 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #8
  %4 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str70, i64 0, i64 0), i32* %natoms) #8
  call void @llvm.lifetime.end(i64 4097, i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_hconf_indexed_p(%struct.__sFILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture readonly %atoms, i32 %nx, i32* nocapture readonly %index, i32 %pr, [3 x float]* nocapture readonly %x, [3 x float]* readonly %v, [3 x float]* nocapture readonly %box) #3 {
  %resnm = alloca [6 x i8], align 1
  %nm = alloca [6 x i8], align 1
  %format = alloca [100 x i8], align 16
  %1 = getelementptr inbounds [100 x i8]* %format, i64 0, i64 0
  call void @llvm.lifetime.start(i64 100, i8* %1) #6
  %2 = icmp eq i8* %title, null
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = load i8* %title, align 1, !tbaa !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %3, %0
  %7 = tail call i8* @bromacs() #8
  br label %8

; <label>:8                                       ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ %title, %3 ]
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i8* %9) #8
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0), i32 %nx) #8
  %12 = icmp slt i32 %pr, 0
  %.pr = select i1 %12, i32 0, i32 %pr
  %13 = icmp sgt i32 %.pr, 30
  %.1 = select i1 %13, i32 30, i32 %.pr
  %14 = add nsw i32 %.1, 5
  %15 = add nsw i32 %.1, 1
  %16 = icmp ne [3 x float]* %v, null
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %8
  %18 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 100, i8* getelementptr inbounds ([50 x i8]* @.str38, i64 0, i64 0), i32 %14, i32 %.1, i32 %14, i32 %.1, i32 %14, i32 %.1, i32 %14, i32 %15, i32 %14, i32 %15, i32 %14, i32 %15) #8
  br label %.preheader

; <label>:19                                      ; preds = %8
  %20 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 100, i8* getelementptr inbounds ([26 x i8]* @.str39, i64 0, i64 0), i32 %14, i32 %.1, i32 %14, i32 %.1, i32 %14, i32 %.1) #8
  br label %.preheader

.preheader:                                       ; preds = %19, %17
  %21 = icmp sgt i32 %nx, 0
  br i1 %21, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %22 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %23 = getelementptr inbounds [6 x i8]* %resnm, i64 0, i64 0
  %24 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  %25 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  %26 = getelementptr inbounds [6 x i8]* %nm, i64 0, i64 0
  %27 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %28 = add i32 %nx, -1
  br label %29

; <label>:29                                      ; preds = %83, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %83 ]
  %30 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %31 = load i32* %30, align 4, !tbaa !28
  %32 = sext i32 %31 to i64
  %33 = load %struct.t_atom** %22, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.t_atom* %33, i64 %32, i32 7
  %35 = load i32* %34, align 4, !tbaa !36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i64 6, i32 1, i1 false)
  %36 = load i32* %24, align 4, !tbaa !34
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %45

; <label>:38                                      ; preds = %29
  %39 = sext i32 %35 to i64
  %40 = load i8**** %25, align 8, !tbaa !33
  %41 = getelementptr inbounds i8*** %40, i64 %39
  %42 = load i8*** %41, align 8, !tbaa !14
  %43 = load i8** %42, align 8, !tbaa !14
  %44 = call i8* @__strcpy_chk(i8* %23, i8* %43, i64 6) #8
  %.pre = load %struct.t_atom** %22, align 8, !tbaa !35
  br label %45

; <label>:45                                      ; preds = %38, %29
  %46 = phi %struct.t_atom* [ %.pre, %38 ], [ %33, %29 ]
  %47 = icmp eq %struct.t_atom* %46, null
  br i1 %47, label %54, label %48

; <label>:48                                      ; preds = %45
  %49 = load i8**** %27, align 8, !tbaa !29
  %50 = getelementptr inbounds i8*** %49, i64 %32
  %51 = load i8*** %50, align 8, !tbaa !14
  %52 = load i8** %51, align 8, !tbaa !14
  %53 = call i8* @__strcpy_chk(i8* %26, i8* %52, i64 6) #8
  br label %55

; <label>:54                                      ; preds = %45
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i64 6, i32 1, i1 false)
  br label %55

; <label>:55                                      ; preds = %54, %48
  %56 = add nsw i32 %35, 1
  %57 = srem i32 %56, 100000
  %58 = add nsw i32 %31, 1
  %59 = srem i32 %58, 100000
  %60 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str41, i64 0, i64 0), i32 %57, i8* %23, i8* %26, i32 %59) #8
  %61 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 0
  %62 = load float* %61, align 4, !tbaa !39
  %63 = fpext float %62 to double
  %64 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 1
  %65 = load float* %64, align 4, !tbaa !39
  %66 = fpext float %65 to double
  %67 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 2
  %68 = load float* %67, align 4, !tbaa !39
  %69 = fpext float %68 to double
  br i1 %16, label %70, label %81

; <label>:70                                      ; preds = %55
  %71 = getelementptr inbounds [3 x float]* %v, i64 %32, i64 0
  %72 = load float* %71, align 4, !tbaa !39
  %73 = fpext float %72 to double
  %74 = getelementptr inbounds [3 x float]* %v, i64 %32, i64 1
  %75 = load float* %74, align 4, !tbaa !39
  %76 = fpext float %75 to double
  %77 = getelementptr inbounds [3 x float]* %v, i64 %32, i64 2
  %78 = load float* %77, align 4, !tbaa !39
  %79 = fpext float %78 to double
  %80 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* %1, double %63, double %66, double %69, double %73, double %76, double %79) #8
  br label %83

; <label>:81                                      ; preds = %55
  %82 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* %1, double %63, double %66, double %69) #8
  br label %83

; <label>:83                                      ; preds = %70, %81
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %28
  br i1 %exitcond, label %._crit_edge, label %29

._crit_edge:                                      ; preds = %83, %.preheader
  %84 = icmp slt i32 %.1, 5
  %..1 = select i1 %84, i32 5, i32 %.1
  %85 = add nsw i32 %..1, 5
  %86 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %87 = load float* %86, align 4, !tbaa !39
  %fabsf = call float @fabsf(float %87) #9
  %88 = fpext float %fabsf to double
  %89 = fcmp ogt double %88, 1.200000e-38
  %.pre8 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  br i1 %89, label %._crit_edge7, label %90

; <label>:90                                      ; preds = %._crit_edge
  %91 = load float* %.pre8, align 4, !tbaa !39
  %fabsf1 = call float @fabsf(float %91) #9
  %92 = fpext float %fabsf1 to double
  %93 = fcmp ogt double %92, 1.200000e-38
  br i1 %93, label %._crit_edge7, label %94

; <label>:94                                      ; preds = %90
  %95 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %96 = load float* %95, align 4, !tbaa !39
  %fabsf2 = call float @fabsf(float %96) #9
  %97 = fpext float %fabsf2 to double
  %98 = fcmp ogt double %97, 1.200000e-38
  br i1 %98, label %._crit_edge7, label %99

; <label>:99                                      ; preds = %94
  %100 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %101 = load float* %100, align 4, !tbaa !39
  %fabsf3 = call float @fabsf(float %101) #9
  %102 = fpext float %fabsf3 to double
  %103 = fcmp ogt double %102, 1.200000e-38
  br i1 %103, label %._crit_edge7, label %104

; <label>:104                                     ; preds = %99
  %105 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %106 = load float* %105, align 4, !tbaa !39
  %fabsf4 = call float @fabsf(float %106) #9
  %107 = fpext float %fabsf4 to double
  %108 = fcmp ogt double %107, 1.200000e-38
  br i1 %108, label %._crit_edge7, label %109

; <label>:109                                     ; preds = %104
  %110 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %111 = load float* %110, align 4, !tbaa !39
  %fabsf5 = call float @fabsf(float %111) #9
  %112 = fpext float %fabsf5 to double
  %113 = fcmp ogt double %112, 1.200000e-38
  br i1 %113, label %._crit_edge7, label %141

._crit_edge7:                                     ; preds = %._crit_edge, %109, %104, %99, %94, %90
  %114 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 100, i8* getelementptr inbounds ([74 x i8]* @.str42, i64 0, i64 0), i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1) #8
  %115 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %116 = load float* %115, align 4, !tbaa !39
  %117 = fpext float %116 to double
  %118 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %119 = load float* %118, align 4, !tbaa !39
  %120 = fpext float %119 to double
  %121 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %122 = load float* %121, align 4, !tbaa !39
  %123 = fpext float %122 to double
  %124 = load float* %86, align 4, !tbaa !39
  %125 = fpext float %124 to double
  %126 = load float* %.pre8, align 4, !tbaa !39
  %127 = fpext float %126 to double
  %128 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %129 = load float* %128, align 4, !tbaa !39
  %130 = fpext float %129 to double
  %131 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %132 = load float* %131, align 4, !tbaa !39
  %133 = fpext float %132 to double
  %134 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %135 = load float* %134, align 4, !tbaa !39
  %136 = fpext float %135 to double
  %137 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %138 = load float* %137, align 4, !tbaa !39
  %139 = fpext float %138 to double
  %140 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* %1, double %117, double %120, double %123, double %125, double %127, double %130, double %133, double %136, double %139) #8
  br label %153

; <label>:141                                     ; preds = %109
  %142 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 100, i8* getelementptr inbounds ([26 x i8]* @.str39, i64 0, i64 0), i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1) #8
  %143 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %144 = load float* %143, align 4, !tbaa !39
  %145 = fpext float %144 to double
  %146 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %147 = load float* %146, align 4, !tbaa !39
  %148 = fpext float %147 to double
  %149 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %150 = load float* %149, align 4, !tbaa !39
  %151 = fpext float %150 to double
  %152 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* %1, double %145, double %148, double %151) #8
  br label %153

; <label>:153                                     ; preds = %141, %._crit_edge7
  %154 = call i32 @fflush(%struct.__sFILE* %out) #8
  call void @llvm.lifetime.end(i64 100, i8* %1) #6
  ret void
}

; Function Attrs: optsize
declare i8* @bromacs() #1

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @write_hconf_p(%struct.__sFILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture readonly %atoms, i32 %pr, [3 x float]* nocapture readonly %x, [3 x float]* readonly %v, [3 x float]* nocapture readonly %box) #3 {
  %1 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !32
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 712, i32 %2, i32 4) #8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %1, align 4, !tbaa !32
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %7 = getelementptr inbounds i32* %4, i64 %indvars.iv
  %8 = trunc i64 %indvars.iv to i32
  store i32 %8, i32* %7, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32* %1, align 4, !tbaa !32
  %10 = sext i32 %9 to i64
  %11 = icmp slt i64 %indvars.iv.next, %10
  br i1 %11, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  %.lcssa = phi i32 [ %5, %0 ], [ %9, %.lr.ph ]
  tail call void @write_hconf_indexed_p(%struct.__sFILE* %out, i8* %title, %struct.t_atoms* %atoms, i32 %.lcssa, i32* %4, i32 %pr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #10
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 716, i8* %3) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_conf_p(i8* %outfile, i8* %title, %struct.t_atoms* nocapture readonly %atoms, i32 %pr, [3 x float]* nocapture readonly %x, [3 x float]* readonly %v, [3 x float]* nocapture readonly %box) #3 {
  %1 = tail call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8
  tail call void @write_hconf_p(%struct.__sFILE* %1, i8* %title, %struct.t_atoms* %atoms, i32 %pr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #10
  tail call void @ffclose(%struct.__sFILE* %1) #8
  ret void
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #1

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @write_sto_conf_indexed(i8* %outfile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box, i32 %nindex, i32* %index) #3 {
  %fr = alloca %struct.t_trxframe, align 8
  %1 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %1) #6
  %2 = tail call i32 @fn2ftp(i8* %outfile) #8
  switch i32 %2, label %39 [
    i32 13, label %3
    i32 14, label %5
    i32 15, label %36
    i32 16, label %36
    i32 17, label %36
    i32 26, label %38
    i32 28, label %38
    i32 27, label %38
  ]

; <label>:3                                       ; preds = %0
  %4 = tail call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8
  tail call void @write_hconf_indexed_p(%struct.__sFILE* %4, i8* %title, %struct.t_atoms* %atoms, i32 %nindex, i32* %index, i32 3, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #10
  tail call void @ffclose(%struct.__sFILE* %4) #8
  br label %40

; <label>:5                                       ; preds = %0
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #8
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  store i32 1, i32* %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* %title, i8** %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %9 = load i32* %8, align 4, !tbaa !32
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 %9, i32* %10, align 8, !tbaa !26
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  store i32 1, i32* %11, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  store %struct.t_atoms* %atoms, %struct.t_atoms** %12, align 8, !tbaa !27
  %13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %13, align 8, !tbaa !20
  %14 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* %x, [3 x float]** %14, align 8, !tbaa !38
  %15 = icmp eq [3 x float]* %v, null
  br i1 %15, label %19, label %16

; <label>:16                                      ; preds = %5
  %17 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  store i32 1, i32* %17, align 8, !tbaa !41
  %18 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* %v, [3 x float]** %18, align 8, !tbaa !40
  br label %19

; <label>:19                                      ; preds = %5, %16
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 1, i32* %20, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %22 = bitcast [3 x float]* %box to <4 x i32>*
  %23 = load <4 x i32>* %22, align 4, !tbaa !39
  %24 = bitcast [3 x float]* %21 to <4 x i32>*
  store <4 x i32> %23, <4 x i32>* %24, align 4, !tbaa !39
  %25 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %26 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  %27 = bitcast float* %25 to <4 x i32>*
  %28 = load <4 x i32>* %27, align 4, !tbaa !39
  %29 = bitcast float* %26 to <4 x i32>*
  store <4 x i32> %28, <4 x i32>* %29, align 4, !tbaa !39
  %30 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %31 = bitcast float* %30 to i32*
  %32 = load i32* %31, align 4, !tbaa !39
  %33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  %34 = bitcast float* %33 to i32*
  store i32 %32, i32* %34, align 4, !tbaa !39
  %35 = call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8
  call void @write_g96_conf(%struct.__sFILE* %35, %struct.t_trxframe* %fr, i32 %nindex, i32* %index) #10
  call void @ffclose(%struct.__sFILE* %35) #8
  br label %40

; <label>:36                                      ; preds = %0, %0, %0
  %37 = tail call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8
  tail call void @write_pdbfile_indexed(%struct.__sFILE* %37, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i8 signext 0, i32 -1, i32 %nindex, i32* %index) #8
  tail call void @ffclose(%struct.__sFILE* %37) #8
  br label %40

; <label>:38                                      ; preds = %0, %0, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str45, i64 0, i64 0), i8* %outfile) #8
  br label %40

; <label>:39                                      ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str46, i64 0, i64 0), i8* %outfile) #8
  br label %40

; <label>:40                                      ; preds = %39, %38, %36, %19, %3
  call void @llvm.lifetime.end(i64 176, i8* %1) #6
  ret void
}

; Function Attrs: optsize
declare i32 @fn2ftp(i8*) #1

; Function Attrs: optsize
declare void @write_pdbfile_indexed(%struct.__sFILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32, i32, i32*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @write_sto_conf(i8* %outfile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #3 {
  %fr = alloca %struct.t_trxframe, align 8
  %1 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %1) #6
  %2 = tail call i32 @fn2ftp(i8* %outfile) #8
  switch i32 %2, label %39 [
    i32 13, label %3
    i32 14, label %5
    i32 15, label %36
    i32 16, label %36
    i32 17, label %36
    i32 26, label %38
    i32 28, label %38
    i32 27, label %38
  ]

; <label>:3                                       ; preds = %0
  %4 = tail call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8
  tail call void @write_hconf_p(%struct.__sFILE* %4, i8* %title, %struct.t_atoms* %atoms, i32 3, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #8
  tail call void @ffclose(%struct.__sFILE* %4) #8
  br label %40

; <label>:5                                       ; preds = %0
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #8
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  store i32 1, i32* %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* %title, i8** %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %9 = load i32* %8, align 4, !tbaa !32
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 %9, i32* %10, align 8, !tbaa !26
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  store i32 1, i32* %11, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  store %struct.t_atoms* %atoms, %struct.t_atoms** %12, align 8, !tbaa !27
  %13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %13, align 8, !tbaa !20
  %14 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* %x, [3 x float]** %14, align 8, !tbaa !38
  %15 = icmp eq [3 x float]* %v, null
  br i1 %15, label %19, label %16

; <label>:16                                      ; preds = %5
  %17 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  store i32 1, i32* %17, align 8, !tbaa !41
  %18 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* %v, [3 x float]** %18, align 8, !tbaa !40
  br label %19

; <label>:19                                      ; preds = %5, %16
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 1, i32* %20, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %22 = bitcast [3 x float]* %box to <4 x i32>*
  %23 = load <4 x i32>* %22, align 4, !tbaa !39
  %24 = bitcast [3 x float]* %21 to <4 x i32>*
  store <4 x i32> %23, <4 x i32>* %24, align 4, !tbaa !39
  %25 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %26 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  %27 = bitcast float* %25 to <4 x i32>*
  %28 = load <4 x i32>* %27, align 4, !tbaa !39
  %29 = bitcast float* %26 to <4 x i32>*
  store <4 x i32> %28, <4 x i32>* %29, align 4, !tbaa !39
  %30 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %31 = bitcast float* %30 to i32*
  %32 = load i32* %31, align 4, !tbaa !39
  %33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  %34 = bitcast float* %33 to i32*
  store i32 %32, i32* %34, align 4, !tbaa !39
  %35 = call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8
  call void @write_g96_conf(%struct.__sFILE* %35, %struct.t_trxframe* %fr, i32 -1, i32* null) #10
  call void @ffclose(%struct.__sFILE* %35) #8
  br label %40

; <label>:36                                      ; preds = %0, %0, %0
  %37 = tail call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8
  tail call void @write_pdbfile(%struct.__sFILE* %37, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i8 signext 0, i32 0) #8
  tail call void @ffclose(%struct.__sFILE* %37) #8
  br label %40

; <label>:38                                      ; preds = %0, %0, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str45, i64 0, i64 0), i8* %outfile) #8
  br label %40

; <label>:39                                      ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str47, i64 0, i64 0), i8* %outfile) #8
  br label %40

; <label>:40                                      ; preds = %39, %38, %36, %19, %3
  call void @llvm.lifetime.end(i64 176, i8* %1) #6
  ret void
}

; Function Attrs: optsize
declare void @write_pdbfile(%struct.__sFILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @get_stx_coordnum(i8* %infile, i32* %natoms) #3 {
  %title.i = alloca [4096 x i8], align 16
  %fr = alloca %struct.t_trxframe, align 8
  %tpx = alloca %struct.t_tpxheader, align 4
  %1 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %1) #6
  %2 = tail call i32 @fn2ftp(i8* %infile) #8
  switch i32 %2, label %21 [
    i32 13, label %3
    i32 14, label %6
    i32 15, label %15
    i32 16, label %15
    i32 17, label %15
    i32 27, label %17
    i32 28, label %17
    i32 26, label %17
  ]

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds [4096 x i8]* %title.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %4) #6
  %5 = tail call %struct.__sFILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8
  call fastcc void @get_coordnum_fp(%struct.__sFILE* %5, i8* %4, i32* %natoms) #8
  call void @ffclose(%struct.__sFILE* %5) #8
  call void @llvm.lifetime.end(i64 4096, i8* %4) #6
  br label %22

; <label>:6                                       ; preds = %0
  %7 = tail call %struct.__sFILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* null, i8** %8, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 -1, i32* %9, align 8, !tbaa !26
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  store %struct.t_atoms* null, %struct.t_atoms** %10, align 8, !tbaa !27
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* null, [3 x float]** %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* null, [3 x float]** %12, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23
  store [3 x float]* null, [3 x float]** %13, align 8, !tbaa !46
  %14 = call i32 @read_g96_conf(%struct.__sFILE* %7, i8* %infile, %struct.t_trxframe* %fr) #10
  store i32 %14, i32* %natoms, align 4, !tbaa !28
  call void @ffclose(%struct.__sFILE* %7) #8
  br label %22

; <label>:15                                      ; preds = %0, %0, %0
  %16 = tail call %struct.__sFILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8
  tail call void @get_pdb_coordnum(%struct.__sFILE* %16, i32* %natoms) #8
  tail call void @ffclose(%struct.__sFILE* %16) #8
  br label %22

; <label>:17                                      ; preds = %0, %0, %0
  %18 = bitcast %struct.t_tpxheader* %tpx to i8*
  call void @llvm.lifetime.start(i64 40, i8* %18) #6
  call void @read_tpxheader(i8* %infile, %struct.t_tpxheader* %tpx) #8
  %19 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6
  %20 = load i32* %19, align 4, !tbaa !47
  store i32 %20, i32* %natoms, align 4, !tbaa !28
  call void @llvm.lifetime.end(i64 40, i8* %18) #6
  br label %22

; <label>:21                                      ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str49, i64 0, i64 0), i8* %infile) #8
  br label %22

; <label>:22                                      ; preds = %21, %17, %15, %6, %3
  call void @llvm.lifetime.end(i64 176, i8* %1) #6
  ret void
}

; Function Attrs: optsize
declare void @get_pdb_coordnum(%struct.__sFILE*, i32*) #1

; Function Attrs: optsize
declare void @read_tpxheader(i8*, %struct.t_tpxheader*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @read_stx_conf(i8* %infile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #3 {
  %ndec.i = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %fr = alloca %struct.t_trxframe, align 8
  %natoms = alloca i32, align 4
  %i1 = alloca i32, align 4
  %r1 = alloca float, align 4
  %r2 = alloca float, align 4
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #6
  %2 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %2) #6
  %3 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %4 = load i32* %3, align 4, !tbaa !32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([37 x i8]* @.str50, i64 0, i64 0), i8* %infile) #8
  br label %15

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %11 = load %struct.t_atom** %10, align 8, !tbaa !35
  %12 = icmp eq %struct.t_atom* %11, null
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %9
  %14 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([35 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 890) #8
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* %1) #8
  br label %15

; <label>:15                                      ; preds = %9, %13, %6
  %16 = call i32 @fn2ftp(i8* %infile) #8
  switch i32 %16, label %174 [
    i32 13, label %17
    i32 14, label %21
    i32 15, label %45
    i32 16, label %45
    i32 17, label %45
    i32 26, label %46
    i32 28, label %46
    i32 27, label %46
  ]

; <label>:17                                      ; preds = %15
  %18 = bitcast i32* %ndec.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18)
  %19 = call %struct.__sFILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8
  %20 = call fastcc i32 @get_w_conf(%struct.__sFILE* %19, i8* %infile, i8* %title, %struct.t_atoms* %atoms, i32* %ndec.i, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #8
  call void @ffclose(%struct.__sFILE* %19) #8
  call void @llvm.lifetime.end(i64 4, i8* %18)
  br label %.loopexit

; <label>:21                                      ; preds = %15
  %22 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* %title, i8** %22, align 8, !tbaa !18
  %23 = load i32* %3, align 4, !tbaa !32
  %24 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 %23, i32* %24, align 8, !tbaa !26
  %25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  store %struct.t_atoms* %atoms, %struct.t_atoms** %25, align 8, !tbaa !27
  %26 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* %x, [3 x float]** %26, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* %v, [3 x float]** %27, align 8, !tbaa !40
  %28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23
  store [3 x float]* null, [3 x float]** %28, align 8, !tbaa !46
  %29 = call %struct.__sFILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8
  %30 = call i32 @read_g96_conf(%struct.__sFILE* %29, i8* %infile, %struct.t_trxframe* %fr) #10
  call void @ffclose(%struct.__sFILE* %29) #8
  %31 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %32 = bitcast [3 x float]* %31 to <4 x i32>*
  %33 = load <4 x i32>* %32, align 4, !tbaa !39
  %34 = bitcast [3 x float]* %box to <4 x i32>*
  store <4 x i32> %33, <4 x i32>* %34, align 4, !tbaa !39
  %35 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  %36 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %37 = bitcast float* %35 to <4 x i32>*
  %38 = load <4 x i32>* %37, align 4, !tbaa !39
  %39 = bitcast float* %36 to <4 x i32>*
  store <4 x i32> %38, <4 x i32>* %39, align 4, !tbaa !39
  %40 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  %41 = bitcast float* %40 to i32*
  %42 = load i32* %41, align 4, !tbaa !39
  %43 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %44 = bitcast float* %43 to i32*
  store i32 %42, i32* %44, align 4, !tbaa !39
  br label %.loopexit

; <label>:45                                      ; preds = %15, %15, %15
  call void @read_pdb_conf(i8* %infile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i32 1) #8
  br label %.loopexit

; <label>:46                                      ; preds = %15, %15, %15
  %47 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 918, i32 1, i32 50264) #8
  %48 = bitcast i8* %47 to %struct.t_topology*
  call void @read_tpx(i8* %infile, i32* %i1, float* %r1, float* %r2, %struct.t_inputrec* null, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* null, %struct.t_topology* %48) #8
  %49 = bitcast i8* %47 to i8***
  %50 = load i8*** %49, align 8, !tbaa !49
  %51 = load i8** %50, align 8, !tbaa !14
  %52 = call i64 @llvm.objectsize.i64.p0i8(i8* %title, i1 false)
  %53 = call i8* @__strcpy_chk(i8* %title, i8* %51, i64 %52) #8
  %54 = getelementptr inbounds i8* %47, i64 45800
  %55 = bitcast i8* %54 to i32*
  %56 = load i32* %55, align 4, !tbaa !53
  store i32 %56, i32* %3, align 4, !tbaa !32
  %57 = getelementptr inbounds i8* %47, i64 45840
  %58 = bitcast i8* %57 to i32*
  %59 = load i32* %58, align 4, !tbaa !54
  %60 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  store i32 %59, i32* %60, align 4, !tbaa !34
  %61 = getelementptr inbounds i8* %47, i64 45856
  %62 = bitcast i8* %61 to i32*
  %63 = load i32* %62, align 4, !tbaa !55
  %64 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 7
  store i32 %63, i32* %64, align 4, !tbaa !56
  %65 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %66 = load %struct.t_atom** %65, align 8, !tbaa !35
  %67 = icmp eq %struct.t_atom* %66, null
  br i1 %67, label %68, label %71

; <label>:68                                      ; preds = %46
  %69 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 929, i32 %56, i32 40) #8
  %70 = bitcast %struct.t_atom** %65 to i8**
  store i8* %69, i8** %70, align 8, !tbaa !35
  br label %71

; <label>:71                                      ; preds = %46, %68
  %72 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %73 = load i8**** %72, align 8, !tbaa !29
  %74 = icmp eq i8*** %73, null
  br i1 %74, label %75, label %.preheader3

; <label>:75                                      ; preds = %71
  %76 = load i32* %3, align 4, !tbaa !32
  %77 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 931, i32 %76, i32 8) #8
  %78 = bitcast i8**** %72 to i8**
  store i8* %77, i8** %78, align 8, !tbaa !29
  br label %.preheader3

.preheader3:                                      ; preds = %71, %75
  %79 = load i32* %3, align 4, !tbaa !32
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %.preheader3
  %81 = getelementptr inbounds i8* %47, i64 45808
  %82 = bitcast i8* %81 to %struct.t_atom**
  %83 = getelementptr inbounds i8* %47, i64 45816
  %84 = bitcast i8* %83 to i8****
  br label %85

; <label>:85                                      ; preds = %.lr.ph9, %85
  %indvars.iv15 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next16, %85 ]
  %86 = load %struct.t_atom** %65, align 8, !tbaa !35
  %87 = getelementptr inbounds %struct.t_atom* %86, i64 %indvars.iv15
  %88 = load %struct.t_atom** %82, align 8, !tbaa !57
  %89 = getelementptr inbounds %struct.t_atom* %88, i64 %indvars.iv15
  %90 = bitcast %struct.t_atom* %87 to i8*
  %91 = bitcast %struct.t_atom* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 40, i32 4, i1 false), !tbaa.struct !58
  %92 = load i8**** %84, align 8, !tbaa !60
  %93 = getelementptr inbounds i8*** %92, i64 %indvars.iv15
  %94 = bitcast i8*** %93 to i64*
  %95 = load i64* %94, align 8, !tbaa !14
  %96 = load i8**** %72, align 8, !tbaa !29
  %97 = getelementptr inbounds i8*** %96, i64 %indvars.iv15
  %98 = bitcast i8*** %97 to i64*
  store i64 %95, i64* %98, align 8, !tbaa !14
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %99 = load i32* %3, align 4, !tbaa !32
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %indvars.iv.next16, %100
  br i1 %101, label %85, label %._crit_edge10

._crit_edge10:                                    ; preds = %85, %.preheader3
  %102 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  %103 = load i8**** %102, align 8, !tbaa !33
  %104 = icmp eq i8*** %103, null
  br i1 %104, label %105, label %.preheader2

; <label>:105                                     ; preds = %._crit_edge10
  %106 = load i32* %60, align 4, !tbaa !34
  %107 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 938, i32 %106, i32 8) #8
  %108 = bitcast i8**** %102 to i8**
  store i8* %107, i8** %108, align 8, !tbaa !33
  %109 = bitcast i8* %107 to i8***
  br label %.preheader2

.preheader2:                                      ; preds = %._crit_edge10, %105
  %110 = phi i8*** [ %103, %._crit_edge10 ], [ %109, %105 ]
  %111 = load i32* %60, align 4, !tbaa !34
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %.lr.ph7, label %._crit_edge

.lr.ph7:                                          ; preds = %.preheader2
  %113 = getelementptr inbounds i8* %47, i64 45848
  %114 = bitcast i8* %113 to i8****
  %115 = sext i32 %111 to i64
  %116 = bitcast i8* %113 to i64**
  %117 = load i64** %116, align 8, !tbaa !61
  %118 = load i64* %117, align 8, !tbaa !14
  %119 = bitcast i8*** %110 to i64*
  store i64 %118, i64* %119, align 8, !tbaa !14
  %120 = icmp sgt i32 %111, 1
  br i1 %120, label %._crit_edge17, label %._crit_edge

._crit_edge17:                                    ; preds = %.lr.ph7, %._crit_edge17
  %indvars.iv.next1421 = phi i64 [ %indvars.iv.next14, %._crit_edge17 ], [ 1, %.lr.ph7 ]
  %.pre = load i8**** %102, align 8, !tbaa !33
  %121 = load i8**** %114, align 8, !tbaa !61
  %122 = getelementptr inbounds i8*** %121, i64 %indvars.iv.next1421
  %123 = bitcast i8*** %122 to i64*
  %124 = load i64* %123, align 8, !tbaa !14
  %125 = getelementptr inbounds i8*** %.pre, i64 %indvars.iv.next1421
  %126 = bitcast i8*** %125 to i64*
  store i64 %124, i64* %126, align 8, !tbaa !14
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv.next1421, 1
  %127 = icmp slt i64 %indvars.iv.next14, %115
  br i1 %127, label %._crit_edge17, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph7, %._crit_edge17, %.preheader2
  %128 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  %129 = load i8**** %128, align 8, !tbaa !62
  %130 = icmp eq i8*** %129, null
  br i1 %130, label %131, label %.preheader1

; <label>:131                                     ; preds = %._crit_edge
  %132 = load i32* %64, align 4, !tbaa !56
  %133 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 943, i32 %132, i32 8) #8
  %134 = bitcast i8**** %128 to i8**
  store i8* %133, i8** %134, align 8, !tbaa !62
  %135 = bitcast i8* %133 to i8***
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge, %131
  %136 = phi i8*** [ %129, %._crit_edge ], [ %135, %131 ]
  %137 = load i32* %64, align 4, !tbaa !56
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader1
  %139 = getelementptr inbounds i8* %47, i64 45864
  %140 = bitcast i8* %139 to i8****
  %141 = sext i32 %137 to i64
  %142 = bitcast i8* %139 to i64**
  %143 = load i64** %142, align 8, !tbaa !63
  %144 = load i64* %143, align 8, !tbaa !14
  %145 = bitcast i8*** %136 to i64*
  store i64 %144, i64* %145, align 8, !tbaa !14
  %146 = icmp sgt i32 %137, 1
  br i1 %146, label %._crit_edge18, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %._crit_edge18, %.preheader1
  %147 = getelementptr inbounds i8* %47, i64 46928
  %148 = bitcast i8* %147 to [9 x %struct.t_grps]*
  br label %156

._crit_edge18:                                    ; preds = %.lr.ph, %._crit_edge18
  %indvars.iv.next1220 = phi i64 [ %indvars.iv.next12, %._crit_edge18 ], [ 1, %.lr.ph ]
  %.pre19 = load i8**** %128, align 8, !tbaa !62
  %149 = load i8**** %140, align 8, !tbaa !63
  %150 = getelementptr inbounds i8*** %149, i64 %indvars.iv.next1220
  %151 = bitcast i8*** %150 to i64*
  %152 = load i64* %151, align 8, !tbaa !14
  %153 = getelementptr inbounds i8*** %.pre19, i64 %indvars.iv.next1220
  %154 = bitcast i8*** %153 to i64*
  store i64 %152, i64* %154, align 8, !tbaa !14
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv.next1220, 1
  %155 = icmp slt i64 %indvars.iv.next12, %141
  br i1 %155, label %._crit_edge18, label %.preheader

; <label>:156                                     ; preds = %173, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %173 ]
  %157 = getelementptr inbounds [9 x %struct.t_grps]* %148, i64 0, i64 %indvars.iv, i32 0
  %158 = load i32* %157, align 4, !tbaa !64
  %159 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 %indvars.iv, i32 0
  store i32 %158, i32* %159, align 4, !tbaa !64
  %160 = icmp sgt i32 %158, 0
  br i1 %160, label %161, label %173

; <label>:161                                     ; preds = %156
  %162 = call i8* @save_calloc(i8* getelementptr inbounds ([22 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 950, i32 %158, i32 4) #8
  %163 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 %indvars.iv, i32 1
  %164 = bitcast i32** %163 to i8**
  store i8* %162, i8** %164, align 8, !tbaa !65
  %165 = getelementptr inbounds [9 x %struct.t_grps]* %148, i64 0, i64 %indvars.iv, i32 1
  %166 = bitcast i32** %165 to i8**
  %167 = load i8** %166, align 8, !tbaa !65
  %168 = load i32* %159, align 4, !tbaa !64
  %169 = sext i32 %168 to i64
  %170 = shl nsw i64 %169, 2
  %171 = call i64 @llvm.objectsize.i64.p0i8(i8* %162, i1 false)
  %172 = call i8* @__memcpy_chk(i8* %162, i8* %167, i64 %170, i64 %171) #8
  br label %173

; <label>:173                                     ; preds = %156, %161
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond, label %.loopexit, label %156

; <label>:174                                     ; preds = %15
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str58, i64 0, i64 0), i8* %infile) #8
  br label %.loopexit

.loopexit:                                        ; preds = %173, %174, %45, %21, %17
  call void @llvm.lifetime.end(i64 176, i8* %2) #6
  call void @llvm.lifetime.end(i64 256, i8* %1) #6
  ret void
}

; Function Attrs: optsize
declare void @read_pdb_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i32) #1

; Function Attrs: optsize
declare void @read_tpx(i8*, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #7

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #4

; Function Attrs: optsize
declare i8** @put_symtab(%struct.t_symtab*, i8*) #1

; Function Attrs: optsize
declare void @_unexpected_eof(i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: optsize
declare void @_too_few(i8*, i32) #1

; Function Attrs: optsize
declare void @warning(i8*) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!15 = !{!16, !7, i64 24}
!16 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !7, i64 24, !4, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !17, i64 52, !7, i64 56, !17, i64 60, !7, i64 64, !4, i64 72, !7, i64 80, !17, i64 84, !7, i64 88, !4, i64 96, !7, i64 104, !4, i64 112, !7, i64 120, !4, i64 128, !7, i64 136, !5, i64 140}
!17 = !{!"float", !5, i64 0}
!18 = !{!16, !4, i64 32}
!19 = !{!16, !7, i64 48}
!20 = !{!16, !7, i64 88}
!21 = !{!16, !7, i64 40}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !5, i64 0}
!24 = !{!16, !17, i64 52}
!25 = !{!16, !7, i64 64}
!26 = !{!16, !7, i64 8}
!27 = !{!16, !4, i64 72}
!28 = !{!7, !7, i64 0}
!29 = !{!30, !4, i64 16}
!30 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !31, i64 72, !5, i64 1128, !4, i64 1272}
!31 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!32 = !{!30, !7, i64 0}
!33 = !{!30, !4, i64 48}
!34 = !{!30, !7, i64 40}
!35 = !{!30, !4, i64 8}
!36 = !{!37, !7, i64 24}
!37 = !{!"", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !8, i64 16, !8, i64 18, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 37}
!38 = !{!16, !4, i64 96}
!39 = !{!17, !17, i64 0}
!40 = !{!16, !4, i64 112}
!41 = !{!16, !7, i64 104}
!42 = !{!16, !7, i64 136}
!43 = !{!16, !7, i64 44}
!44 = !{!16, !7, i64 80}
!45 = !{!16, !17, i64 84}
!46 = !{!16, !4, i64 128}
!47 = !{!48, !7, i64 24}
!48 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !17, i64 32, !17, i64 36}
!49 = !{!50, !4, i64 0}
!50 = !{!"", !4, i64 0, !51, i64 8, !30, i64 45800, !5, i64 47080, !52, i64 50248}
!51 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!52 = !{!"", !7, i64 0, !4, i64 8}
!53 = !{!50, !7, i64 45800}
!54 = !{!50, !7, i64 45840}
!55 = !{!50, !7, i64 45856}
!56 = !{!30, !7, i64 56}
!57 = !{!50, !4, i64 45808}
!58 = !{i64 0, i64 4, !39, i64 4, i64 4, !39, i64 8, i64 4, !39, i64 12, i64 4, !39, i64 16, i64 2, !59, i64 18, i64 2, !59, i64 20, i64 4, !28, i64 24, i64 4, !28, i64 28, i64 9, !13, i64 37, i64 1, !13}
!59 = !{!8, !8, i64 0}
!60 = !{!50, !4, i64 45816}
!61 = !{!50, !4, i64 45848}
!62 = !{!30, !4, i64 64}
!63 = !{!50, !4, i64 45864}
!64 = !{!52, !7, i64 0}
!65 = !{!52, !4, i64 8}
