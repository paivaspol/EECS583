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
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !86, metadata !692), !dbg !693
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !87, metadata !692), !dbg !694
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !695
  %2 = load i32* %1, align 4, !dbg !697, !tbaa !698
  %3 = add nsw i32 %2, -1, !dbg !697
  store i32 %3, i32* %1, align 4, !dbg !697, !tbaa !698
  %4 = icmp sgt i32 %2, 0, !dbg !707
  br i1 %4, label %._crit_edge, label %5, !dbg !708

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !709
  br label %10, !dbg !708

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !710
  %7 = load i32* %6, align 4, !dbg !710, !tbaa !711
  %8 = icmp sle i32 %2, %7, !dbg !712
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !713
  %or.cond = or i1 %9, %8, !dbg !714
  br i1 %or.cond, label %15, label %10, !dbg !714

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !709
  %11 = trunc i32 %_c to i8, !dbg !715
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !716
  %13 = load i8** %12, align 8, !dbg !717, !tbaa !718
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !717
  store i8* %14, i8** %12, align 8, !dbg !717, !tbaa !718
  store i8 %11, i8* %13, align 1, !dbg !719, !tbaa !720
  br label %17, !dbg !721

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8, !dbg !722
  br label %17, !dbg !723

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !724
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !93, metadata !692), !dbg !725
  %1 = icmp sgt i32 %__signo, 32, !dbg !726
  br i1 %1, label %5, label %2, !dbg !727

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !728
  %4 = shl i32 1, %3, !dbg !729
  br label %5, !dbg !727

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !727
  ret i32 %6, !dbg !730
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_g96_conf(%struct.__sFILE* %fp, i8* %infile, %struct.t_trxframe* %fr) #4 {
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
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !211, metadata !692), !dbg !731
  tail call void @llvm.dbg.value(metadata i8* %infile, i64 0, metadata !212, metadata !692), !dbg !732
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !213, metadata !692), !dbg !733
  %1 = tail call i64 @ftell(%struct.__sFILE* %fp) #8, !dbg !734
  %2 = icmp eq i64 %1, 0, !dbg !735
  tail call void @clear_trxframe(%struct.t_trxframe* %fr, i32 0) #8, !dbg !736
  %3 = load %struct.t_symtab** @read_g96_conf.symtab, align 8, !dbg !737, !tbaa !739
  %4 = icmp eq %struct.t_symtab* %3, null, !dbg !737
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %anm.i, metadata !566, metadata !692), !dbg !740
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %resnm.i, metadata !567, metadata !692), !dbg !747
  br i1 %4, label %5, label %8, !dbg !748

; <label>:5                                       ; preds = %0
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 191, i32 1, i32 16) #8, !dbg !749
  %7 = bitcast i8* %6 to %struct.t_symtab*, !dbg !749
  store i8* %6, i8** bitcast (%struct.t_symtab** @read_g96_conf.symtab to i8**), align 8, !dbg !749, !tbaa !739
  tail call void @open_symtab(%struct.t_symtab* %7) #8, !dbg !751
  br label %8, !dbg !752

; <label>:8                                       ; preds = %0, %5
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !222, metadata !692), !dbg !753
  br i1 %2, label %.preheader26, label %.preheader, !dbg !754

.preheader26:                                     ; preds = %8
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !755
  %10 = load i32* %9, align 4, !dbg !755, !tbaa !758
  %11 = icmp eq i32 %10, 0, !dbg !761
  br i1 %11, label %.lr.ph, label %.critedge, !dbg !762

.lr.ph:                                           ; preds = %.preheader26, %14
  %12 = tail call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8, !dbg !763
  %13 = icmp eq i8* %12, null, !dbg !762
  br i1 %13, label %.critedge, label %14, !dbg !764

; <label>:14                                      ; preds = %.lr.ph
  %15 = tail call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !765
  %16 = icmp eq i32 %15, 0, !dbg !766
  %17 = zext i1 %16 to i32, !dbg !766
  store i32 %17, i32* %9, align 4, !dbg !767, !tbaa !758
  br i1 %16, label %.critedge, label %.lr.ph, !dbg !762

.critedge:                                        ; preds = %14, %.lr.ph, %.preheader26
  %18 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !768
  %19 = load i8** %18, align 8, !dbg !768, !tbaa !770
  %20 = icmp eq i8* %19, null, !dbg !771
  br i1 %20, label %.preheader25, label %21, !dbg !772

; <label>:21                                      ; preds = %.critedge
  %22 = tail call i8* @fgets2(i8* %19, i32 4096, %struct.__sFILE* %fp) #8, !dbg !773
  br label %.preheader25, !dbg !773

.preheader25:                                     ; preds = %21, %.critedge, %25
  %23 = tail call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8, !dbg !774
  %24 = icmp eq i8* %23, null, !dbg !775
  br i1 %24, label %.critedge1, label %25, !dbg !776

; <label>:25                                      ; preds = %.preheader25
  %26 = tail call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8, !dbg !777
  %27 = icmp eq i32 %26, 0, !dbg !778
  br i1 %27, label %.critedge1, label %.preheader25, !dbg !775

.critedge1:                                       ; preds = %25, %.preheader25
  %28 = tail call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8, !dbg !779
  br label %.preheader, !dbg !780

.preheader:                                       ; preds = %.critedge1, %8
  %29 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !781
  %30 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !785
  %31 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !786
  %32 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !788
  %33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !789
  %34 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !790
  %35 = bitcast i32* %atnr.i to i8*, !dbg !791
  %36 = bitcast i32* %resnr.i to i8*, !dbg !791
  %37 = bitcast double* %db1.i to i8*, !dbg !791
  %38 = bitcast double* %db2.i to i8*, !dbg !791
  %39 = bitcast double* %db3.i to i8*, !dbg !791
  %40 = getelementptr inbounds [4096 x i8]* %anm.i, i64 0, i64 0, !dbg !792
  %41 = getelementptr inbounds [4096 x i8]* %resnm.i, i64 0, i64 0, !dbg !792
  %42 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !793
  %43 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !794
  %44 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !795
  %45 = bitcast [4096 x i8]* %anm.i to i32*, !dbg !802
  %46 = bitcast [4096 x i8]* %resnm.i to i32*, !dbg !807
  %47 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !810
  %48 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !812
  %49 = bitcast double* %db1.i10 to i8*, !dbg !814
  %50 = bitcast double* %db2.i11 to i8*, !dbg !814
  %51 = bitcast double* %db3.i12 to i8*, !dbg !814
  br label %52, !dbg !816

; <label>:52                                      ; preds = %.preheader, %278
  %natoms.0 = phi i32 [ %natoms.2, %278 ], [ 0, %.preheader ]
  %53 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #8, !dbg !816
  %54 = icmp eq i32 %53, 0, !dbg !817
  %55 = zext i1 %54 to i32, !dbg !817
  call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !215, metadata !692), !dbg !818
  %56 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0)) #8, !dbg !819
  %57 = icmp eq i32 %56, 0, !dbg !820
  %58 = zext i1 %57 to i32, !dbg !820
  call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !216, metadata !692), !dbg !821
  br i1 %57, label %62, label %59, !dbg !822

; <label>:59                                      ; preds = %52
  %60 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #8, !dbg !823
  %61 = icmp eq i32 %60, 0, !dbg !824
  br label %62, !dbg !822

; <label>:62                                      ; preds = %59, %52
  %63 = phi i1 [ true, %52 ], [ %61, %59 ]
  %64 = zext i1 %63 to i32, !dbg !822
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !217, metadata !692), !dbg !825
  %65 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i64 8) #8, !dbg !826
  %66 = icmp eq i32 %65, 0, !dbg !827
  %67 = zext i1 %66 to i32, !dbg !827
  call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !218, metadata !692), !dbg !828
  %68 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #8, !dbg !829
  %69 = icmp eq i32 %68, 0, !dbg !830
  br i1 %54, label %70, label %86, !dbg !831

; <label>:70                                      ; preds = %62
  %71 = load i32* %29, align 4, !dbg !781, !tbaa !832
  %72 = icmp eq i32 %71, 0, !dbg !833
  br i1 %72, label %73, label %86, !dbg !834

; <label>:73                                      ; preds = %70
  %74 = load i32* %30, align 4, !dbg !785, !tbaa !835
  %75 = icmp eq i32 %74, 0, !dbg !836
  br i1 %75, label %76, label %86, !dbg !837

; <label>:76                                      ; preds = %73
  store i32 %55, i32* %31, align 4, !dbg !838, !tbaa !839
  store i32 %55, i32* %29, align 4, !dbg !840, !tbaa !832
  br label %77, !dbg !841

; <label>:77                                      ; preds = %77, %76
  %78 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8, !dbg !842
  %79 = icmp eq i8* %78, null, !dbg !843
  call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !221, metadata !692), !dbg !844
  %.not = xor i1 %79, true, !dbg !845
  %80 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16
  %81 = icmp eq i8 %80, 35, !dbg !846
  %or.cond7 = and i1 %81, %.not, !dbg !845
  br i1 %or.cond7, label %77, label %.critedge2, !dbg !845

.critedge2:                                       ; preds = %77
  %82 = zext i1 %79 to i32, !dbg !843
  call void @llvm.dbg.value(metadata double* %db1, i64 0, metadata !224, metadata !692), !dbg !847
  %83 = call i32 (i8*, i8*, ...)* @sscanf(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32* %32, double* %db1) #8, !dbg !848
  call void @llvm.dbg.value(metadata double* %db1, i64 0, metadata !224, metadata !692), !dbg !847
  %84 = load double* %db1, align 8, !dbg !849, !tbaa !850
  %85 = fptrunc double %84 to float, !dbg !849
  store float %85, float* %33, align 4, !dbg !852, !tbaa !853
  br label %86, !dbg !854

; <label>:86                                      ; preds = %70, %73, %.critedge2, %62
  %bFinished.1 = phi i32 [ %82, %.critedge2 ], [ 0, %62 ], [ 1, %73 ], [ 1, %70 ]
  br i1 %63, label %87, label %179, !dbg !855

; <label>:87                                      ; preds = %86
  %88 = load i32* %30, align 4, !dbg !856, !tbaa !835
  %89 = icmp eq i32 %88, 0, !dbg !857
  br i1 %89, label %90, label %179, !dbg !858

; <label>:90                                      ; preds = %87
  store i32 %58, i32* %34, align 4, !dbg !859, !tbaa !860
  store i32 %64, i32* %30, align 4, !dbg !861, !tbaa !835
  %91 = load %struct.t_symtab** @read_g96_conf.symtab, align 8, !dbg !862, !tbaa !739
  call void @llvm.lifetime.start(i64 4, i8* %35), !dbg !791
  call void @llvm.lifetime.start(i64 4, i8* %36), !dbg !791
  call void @llvm.lifetime.start(i64 1, i8* %c1.i), !dbg !791
  call void @llvm.lifetime.start(i64 1, i8* %c2.i), !dbg !791
  call void @llvm.lifetime.start(i64 8, i8* %37), !dbg !791
  call void @llvm.lifetime.start(i64 8, i8* %38), !dbg !791
  call void @llvm.lifetime.start(i64 8, i8* %39), !dbg !791
  call void @llvm.dbg.value(metadata !687, i64 0, metadata !552, metadata !692) #7, !dbg !791
  call void @llvm.lifetime.start(i64 4096, i8* %40) #7, !dbg !792
  call void @llvm.lifetime.start(i64 4096, i8* %41) #7, !dbg !792
  %92 = load i32* %42, align 4, !dbg !793, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !559, metadata !692) #7, !dbg !864
  %93 = load %struct.t_atoms** %43, align 8, !dbg !794, !tbaa !865
  call void @llvm.dbg.value(metadata %struct.t_atoms* %93, i64 0, metadata !557, metadata !692) #7, !dbg !866
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !560, metadata !692) #7, !dbg !867
  br i1 %63, label %94, label %read_g96_pos.exit, !dbg !868

; <label>:94                                      ; preds = %90
  %..i = select i1 %57, i64 24, i64 0, !dbg !869
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !564, metadata !692) #7, !dbg !870
  call void @llvm.dbg.value(metadata i32 -666, i64 0, metadata !563, metadata !692) #7, !dbg !871
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !558, metadata !692) #7, !dbg !872
  %95 = getelementptr inbounds [4097 x i8]* @read_g96_conf.line, i64 0, i64 %..i, !dbg !873
  %96 = icmp eq i32 %92, -1, !dbg !875
  %97 = icmp eq %struct.t_atoms* %93, null, !dbg !877
  %98 = getelementptr inbounds %struct.t_atoms* %93, i64 0, i32 2, !dbg !878
  %99 = getelementptr inbounds %struct.t_atoms* %93, i64 0, i32 1, !dbg !879
  %100 = getelementptr inbounds %struct.t_atoms* %93, i64 0, i32 0, !dbg !880
  %101 = getelementptr inbounds %struct.t_atoms* %93, i64 0, i32 6, !dbg !884
  %102 = getelementptr inbounds %struct.t_atoms* %93, i64 0, i32 5, !dbg !885
  %103 = sext i32 %92 to i64, !dbg !887
  br label %.outer.i, !dbg !887

.outer.i:                                         ; preds = %173, %94
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %173 ], [ 0, %94 ], !dbg !869
  %oldres.0.ph.i = phi i32 [ %oldres.2.i, %173 ], [ -666, %94 ], !dbg !869
  %newres.0.ph.i = phi i32 [ %newres.2.i, %173 ], [ 0, %94 ], !dbg !869
  %bEnd.0.ph.i = phi i32 [ %112, %173 ], [ 0, %94 ], !dbg !869
  br label %104, !dbg !869

; <label>:104                                     ; preds = %109, %.outer.i
  %bEnd.0.i = phi i32 [ %112, %109 ], [ %bEnd.0.ph.i, %.outer.i ], !dbg !869
  %105 = icmp eq i32 %bEnd.0.i, 0, !dbg !888
  br i1 %105, label %106, label %.critedge.i, !dbg !889

; <label>:106                                     ; preds = %104
  %107 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8, !dbg !890
  %108 = icmp eq i8* %107, null, !dbg !889
  br i1 %108, label %.critedge.i, label %109, !dbg !887

; <label>:109                                     ; preds = %106
  %110 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3) #8, !dbg !891
  %111 = icmp eq i32 %110, 0, !dbg !892
  %112 = zext i1 %111 to i32, !dbg !892
  call void @llvm.dbg.value(metadata i32 %112, i64 0, metadata !558, metadata !692) #7, !dbg !872
  %113 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16, !dbg !869
  %114 = icmp eq i8 %113, 35, !dbg !893
  %or.cond.i = or i1 %111, %114, !dbg !894
  br i1 %or.cond.i, label %104, label %115, !dbg !894

; <label>:115                                     ; preds = %109
  %116 = trunc i64 %indvars.iv.i to i32, !dbg !889
  call void @llvm.dbg.value(metadata double* %db1.i, i64 0, metadata !570, metadata !692) #7, !dbg !895
  call void @llvm.dbg.value(metadata double* %db2.i, i64 0, metadata !571, metadata !692) #7, !dbg !896
  call void @llvm.dbg.value(metadata double* %db3.i, i64 0, metadata !572, metadata !692) #7, !dbg !897
  %117 = call i32 (i8*, i8*, ...)* @sscanf(i8* %95, i8* getelementptr inbounds ([16 x i8]* @.str59, i64 0, i64 0), double* %db1.i, double* %db2.i, double* %db3.i) #8, !dbg !898
  %118 = icmp eq i32 %117, 3, !dbg !899
  br i1 %118, label %122, label %119, !dbg !900

; <label>:119                                     ; preds = %115
  %120 = add nuw nsw i64 %indvars.iv.i, 1, !dbg !901
  %121 = trunc i64 %120 to i32, !dbg !902
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str60, i64 0, i64 0), i32 %121, i8* %infile) #8, !dbg !902
  br label %122, !dbg !902

; <label>:122                                     ; preds = %119, %115
  %123 = icmp slt i64 %indvars.iv.i, %103, !dbg !903
  %or.cond2.i = or i1 %96, %123, !dbg !904
  br i1 %or.cond2.i, label %125, label %124, !dbg !904

; <label>:124                                     ; preds = %122
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str61, i64 0, i64 0), i32 %116, i8* %infile, i32 %92) #8, !dbg !905
  br label %125, !dbg !905

; <label>:125                                     ; preds = %124, %122
  br i1 %97, label %160, label %126, !dbg !906

; <label>:126                                     ; preds = %125
  %127 = load i32* %34, align 4, !dbg !907, !tbaa !860
  %128 = icmp eq i32 %127, 0, !dbg !908
  br i1 %128, label %137, label %129, !dbg !909

; <label>:129                                     ; preds = %126
  call void @llvm.dbg.value(metadata i32* %atnr.i, i64 0, metadata !561, metadata !692) #7, !dbg !910
  call void @llvm.dbg.value(metadata i32* %resnr.i, i64 0, metadata !562, metadata !692) #7, !dbg !911
  call void @llvm.dbg.value(metadata i8* %c1.i, i64 0, metadata !568, metadata !692) #7, !dbg !912
  call void @llvm.dbg.value(metadata i8* %c2.i, i64 0, metadata !569, metadata !692) #7, !dbg !913
  %130 = call i32 (i8*, i8*, ...)* @sscanf(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str62, i64 0, i64 0), i32* %resnr.i, i8* %c1.i, i8* %41, i8* %c2.i, i8* %40, i32* %atnr.i) #8, !dbg !914
  %131 = icmp eq i32 %130, 6, !dbg !915
  br i1 %131, label %137, label %132, !dbg !916

; <label>:132                                     ; preds = %129
  %133 = icmp sgt i32 %oldres.0.ph.i, -1, !dbg !917
  br i1 %133, label %134, label %135, !dbg !918

; <label>:134                                     ; preds = %132
  call void @llvm.dbg.value(metadata i32 %oldres.0.ph.i, i64 0, metadata !562, metadata !692) #7, !dbg !911
  store i32 %oldres.0.ph.i, i32* %resnr.i, align 4, !dbg !919, !tbaa !920
  br label %136, !dbg !921

; <label>:135                                     ; preds = %132
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !562, metadata !692) #7, !dbg !911
  store i32 1, i32* %resnr.i, align 4, !dbg !922, !tbaa !920
  store i32 4144959, i32* %46, align 16, !dbg !807
  br label %136, !dbg !869

; <label>:136                                     ; preds = %135, %134
  store i32 4144959, i32* %45, align 16, !dbg !802
  br label %137, !dbg !923

; <label>:137                                     ; preds = %136, %129, %126
  %138 = call i8** @put_symtab(%struct.t_symtab* %91, i8* %40) #8, !dbg !924
  %139 = load i8**** %98, align 8, !dbg !878, !tbaa !925
  %140 = getelementptr inbounds i8*** %139, i64 %indvars.iv.i, !dbg !928
  store i8** %138, i8*** %140, align 8, !dbg !929, !tbaa !739
  call void @llvm.dbg.value(metadata i32* %resnr.i, i64 0, metadata !562, metadata !692) #7, !dbg !911
  %141 = load i32* %resnr.i, align 4, !dbg !930, !tbaa !920
  %142 = icmp eq i32 %141, %oldres.0.ph.i, !dbg !931
  br i1 %142, label %156, label %143, !dbg !932

; <label>:143                                     ; preds = %137
  call void @llvm.dbg.value(metadata i32 %141, i64 0, metadata !563, metadata !692) #7, !dbg !871
  %144 = load i32* %100, align 4, !dbg !880, !tbaa !933
  %145 = icmp slt i32 %newres.0.ph.i, %144, !dbg !934
  br i1 %145, label %147, label %146, !dbg !935

; <label>:146                                     ; preds = %143
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str64, i64 0, i64 0), i8* %infile, i32 %144) #8, !dbg !936
  br label %147, !dbg !936

; <label>:147                                     ; preds = %146, %143
  %148 = call i8** @put_symtab(%struct.t_symtab* %91, i8* %41) #8, !dbg !937
  %149 = sext i32 %newres.0.ph.i to i64, !dbg !938
  %150 = load i8**** %101, align 8, !dbg !884, !tbaa !939
  %151 = getelementptr inbounds i8*** %150, i64 %149, !dbg !938
  store i8** %148, i8*** %151, align 8, !dbg !940, !tbaa !739
  %152 = add nsw i32 %newres.0.ph.i, 1, !dbg !941
  call void @llvm.dbg.value(metadata i32 %152, i64 0, metadata !564, metadata !692) #7, !dbg !870
  %153 = load i32* %102, align 4, !dbg !885, !tbaa !942
  %154 = icmp slt i32 %newres.0.ph.i, %153, !dbg !943
  br i1 %154, label %156, label %155, !dbg !944

; <label>:155                                     ; preds = %147
  store i32 %152, i32* %102, align 4, !dbg !945, !tbaa !942
  br label %156, !dbg !946

; <label>:156                                     ; preds = %155, %147, %137
  %oldres.1.i = phi i32 [ %141, %155 ], [ %141, %147 ], [ %oldres.0.ph.i, %137 ], !dbg !869
  %newres.1.i = phi i32 [ %152, %155 ], [ %152, %147 ], [ %newres.0.ph.i, %137 ], !dbg !869
  call void @llvm.dbg.value(metadata i32 %newres.1.i, i64 0, metadata !562, metadata !692) #7, !dbg !911
  store i32 %newres.1.i, i32* %resnr.i, align 4, !dbg !947, !tbaa !920
  %157 = add nsw i32 %newres.1.i, -1, !dbg !948
  %158 = load %struct.t_atom** %99, align 8, !dbg !879, !tbaa !949
  %159 = getelementptr inbounds %struct.t_atom* %158, i64 %indvars.iv.i, i32 7, !dbg !950
  store i32 %157, i32* %159, align 4, !dbg !951, !tbaa !952
  br label %160, !dbg !954

; <label>:160                                     ; preds = %156, %125
  %oldres.2.i = phi i32 [ %oldres.1.i, %156 ], [ %oldres.0.ph.i, %125 ], !dbg !869
  %newres.2.i = phi i32 [ %newres.1.i, %156 ], [ %newres.0.ph.i, %125 ], !dbg !869
  %161 = load [3 x float]** %44, align 8, !dbg !795, !tbaa !955
  %162 = icmp eq [3 x float]* %161, null, !dbg !956
  br i1 %162, label %173, label %163, !dbg !957

; <label>:163                                     ; preds = %160
  call void @llvm.dbg.value(metadata double* %db1.i, i64 0, metadata !570, metadata !692) #7, !dbg !895
  %164 = load double* %db1.i, align 8, !dbg !958, !tbaa !850
  %165 = fptrunc double %164 to float, !dbg !958
  %166 = getelementptr inbounds [3 x float]* %161, i64 %indvars.iv.i, i64 0, !dbg !960
  store float %165, float* %166, align 4, !dbg !961, !tbaa !962
  call void @llvm.dbg.value(metadata double* %db2.i, i64 0, metadata !571, metadata !692) #7, !dbg !896
  %167 = load double* %db2.i, align 8, !dbg !963, !tbaa !850
  %168 = fptrunc double %167 to float, !dbg !963
  %169 = getelementptr inbounds [3 x float]* %161, i64 %indvars.iv.i, i64 1, !dbg !964
  store float %168, float* %169, align 4, !dbg !965, !tbaa !962
  call void @llvm.dbg.value(metadata double* %db3.i, i64 0, metadata !572, metadata !692) #7, !dbg !897
  %170 = load double* %db3.i, align 8, !dbg !966, !tbaa !850
  %171 = fptrunc double %170 to float, !dbg !966
  %172 = getelementptr inbounds [3 x float]* %161, i64 %indvars.iv.i, i64 2, !dbg !967
  store float %171, float* %172, align 4, !dbg !968, !tbaa !962
  br label %173, !dbg !969

; <label>:173                                     ; preds = %163, %160
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1, !dbg !970
  br label %.outer.i, !dbg !970

.critedge.i:                                      ; preds = %106, %104
  %174 = trunc i64 %indvars.iv.i to i32, !dbg !889
  %175 = icmp eq i32 %174, %92, !dbg !971
  %or.cond3.i = or i1 %96, %175, !dbg !973
  br i1 %or.cond3.i, label %read_g96_pos.exit, label %176, !dbg !973

; <label>:176                                     ; preds = %.critedge.i
  %177 = load %struct.__sFILE** @__stderrp, align 8, !dbg !974, !tbaa !739
  %178 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %177, i8* getelementptr inbounds ([61 x i8]* @.str65, i64 0, i64 0), i32 %174, i8* %infile, i32 %92) #8, !dbg !975
  br label %read_g96_pos.exit, !dbg !975

read_g96_pos.exit:                                ; preds = %90, %.critedge.i, %176
  %natoms.1.i = phi i32 [ %174, %176 ], [ %174, %.critedge.i ], [ 0, %90 ], !dbg !869
  store i32 %natoms.1.i, i32* %42, align 4, !dbg !976, !tbaa !863
  call void @llvm.lifetime.end(i64 4096, i8* %41) #7, !dbg !977
  call void @llvm.lifetime.end(i64 4096, i8* %40) #7, !dbg !977
  call void @llvm.lifetime.end(i64 4, i8* %35), !dbg !977
  call void @llvm.lifetime.end(i64 4, i8* %36), !dbg !977
  call void @llvm.lifetime.end(i64 1, i8* %c1.i), !dbg !977
  call void @llvm.lifetime.end(i64 1, i8* %c2.i), !dbg !977
  call void @llvm.lifetime.end(i64 8, i8* %37), !dbg !977
  call void @llvm.lifetime.end(i64 8, i8* %38), !dbg !977
  call void @llvm.lifetime.end(i64 8, i8* %39), !dbg !977
  call void @llvm.dbg.value(metadata i32 %natoms.1.i, i64 0, metadata !222, metadata !692), !dbg !753
  br label %179, !dbg !978

; <label>:179                                     ; preds = %87, %read_g96_pos.exit, %86
  %bFinished.2 = phi i32 [ %bFinished.1, %read_g96_pos.exit ], [ %bFinished.1, %86 ], [ 1, %87 ]
  %natoms.1 = phi i32 [ %natoms.1.i, %read_g96_pos.exit ], [ %natoms.0, %86 ], [ %natoms.0, %87 ]
  %180 = load [3 x float]** %47, align 8, !dbg !810, !tbaa !979
  %181 = icmp ne [3 x float]* %180, null, !dbg !980
  %or.cond = and i1 %66, %181, !dbg !981
  br i1 %or.cond, label %182, label %230, !dbg !981

; <label>:182                                     ; preds = %179
  store i32 %67, i32* %48, align 4, !dbg !982, !tbaa !983
  call void @llvm.lifetime.start(i64 8, i8* %49), !dbg !814
  call void @llvm.lifetime.start(i64 8, i8* %50), !dbg !814
  call void @llvm.lifetime.start(i64 8, i8* %51), !dbg !814
  call void @llvm.dbg.value(metadata !687, i64 0, metadata !577, metadata !692) #7, !dbg !814
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !583, metadata !692) #7, !dbg !984
  %183 = load i32* %42, align 4, !dbg !985, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %183, i64 0, metadata !582, metadata !692) #7, !dbg !986
  br i1 %66, label %184, label %read_g96_vel.exit, !dbg !987

; <label>:184                                     ; preds = %182
  %185 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str66, i64 0, i64 0)) #8, !dbg !988
  %186 = icmp eq i32 %185, 0, !dbg !992
  %..i13 = select i1 %186, i64 0, i64 24, !dbg !993
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !583, metadata !692) #7, !dbg !984
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !581, metadata !692) #7, !dbg !994
  %187 = getelementptr inbounds [4097 x i8]* @read_g96_conf.line, i64 0, i64 %..i13, !dbg !995
  %188 = icmp eq i32 %183, -1, !dbg !1000
  %189 = sext i32 %183 to i64, !dbg !1002
  br label %.outer.i16, !dbg !1002

.outer.i16:                                       ; preds = %224, %184
  %indvars.iv.i14 = phi i64 [ %indvars.iv.next.i20, %224 ], [ 0, %184 ], !dbg !1003
  %bEnd.0.ph.i15 = phi i32 [ %198, %224 ], [ 0, %184 ], !dbg !1003
  br label %190, !dbg !1003

; <label>:190                                     ; preds = %195, %.outer.i16
  %bEnd.0.i17 = phi i32 [ %198, %195 ], [ %bEnd.0.ph.i15, %.outer.i16 ], !dbg !1003
  %191 = icmp eq i32 %bEnd.0.i17, 0, !dbg !1004
  br i1 %191, label %192, label %.critedge.i22, !dbg !1005

; <label>:192                                     ; preds = %190
  %193 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8, !dbg !1006
  %194 = icmp eq i8* %193, null, !dbg !1005
  br i1 %194, label %.critedge.i22, label %195, !dbg !1002

; <label>:195                                     ; preds = %192
  %196 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3) #8, !dbg !1007
  %197 = icmp eq i32 %196, 0, !dbg !1008
  %198 = zext i1 %197 to i32, !dbg !1008
  call void @llvm.dbg.value(metadata i32 %198, i64 0, metadata !581, metadata !692) #7, !dbg !994
  %199 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16, !dbg !1003
  %200 = icmp eq i8 %199, 35, !dbg !1009
  %or.cond.i18 = or i1 %197, %200, !dbg !1010
  br i1 %or.cond.i18, label %190, label %201, !dbg !1010

; <label>:201                                     ; preds = %195
  %202 = trunc i64 %indvars.iv.i14 to i32, !dbg !1005
  call void @llvm.dbg.value(metadata double* %db1.i10, i64 0, metadata !585, metadata !692) #7, !dbg !1011
  call void @llvm.dbg.value(metadata double* %db2.i11, i64 0, metadata !586, metadata !692) #7, !dbg !1012
  call void @llvm.dbg.value(metadata double* %db3.i12, i64 0, metadata !587, metadata !692) #7, !dbg !1013
  %203 = call i32 (i8*, i8*, ...)* @sscanf(i8* %187, i8* getelementptr inbounds ([16 x i8]* @.str59, i64 0, i64 0), double* %db1.i10, double* %db2.i11, double* %db3.i12) #8, !dbg !1014
  %204 = icmp eq i32 %203, 3, !dbg !1015
  br i1 %204, label %208, label %205, !dbg !1016

; <label>:205                                     ; preds = %201
  %206 = add nuw nsw i64 %indvars.iv.i14, 1, !dbg !1017
  %207 = trunc i64 %206 to i32, !dbg !1018
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str67, i64 0, i64 0), i32 %207, i8* %infile) #8, !dbg !1018
  br label %208, !dbg !1018

; <label>:208                                     ; preds = %205, %201
  %209 = icmp slt i64 %indvars.iv.i14, %189, !dbg !1019
  %or.cond2.i19 = or i1 %188, %209, !dbg !1020
  br i1 %or.cond2.i19, label %211, label %210, !dbg !1020

; <label>:210                                     ; preds = %208
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([51 x i8]* @.str68, i64 0, i64 0), i32 %202, i8* %infile, i32 %183) #8, !dbg !1021
  br label %211, !dbg !1021

; <label>:211                                     ; preds = %210, %208
  %212 = load [3 x float]** %47, align 8, !dbg !1022, !tbaa !979
  %213 = icmp eq [3 x float]* %212, null, !dbg !1024
  br i1 %213, label %224, label %214, !dbg !1025

; <label>:214                                     ; preds = %211
  call void @llvm.dbg.value(metadata double* %db1.i10, i64 0, metadata !585, metadata !692) #7, !dbg !1011
  %215 = load double* %db1.i10, align 8, !dbg !1026, !tbaa !850
  %216 = fptrunc double %215 to float, !dbg !1026
  %217 = getelementptr inbounds [3 x float]* %212, i64 %indvars.iv.i14, i64 0, !dbg !1028
  store float %216, float* %217, align 4, !dbg !1029, !tbaa !962
  call void @llvm.dbg.value(metadata double* %db2.i11, i64 0, metadata !586, metadata !692) #7, !dbg !1012
  %218 = load double* %db2.i11, align 8, !dbg !1030, !tbaa !850
  %219 = fptrunc double %218 to float, !dbg !1030
  %220 = getelementptr inbounds [3 x float]* %212, i64 %indvars.iv.i14, i64 1, !dbg !1031
  store float %219, float* %220, align 4, !dbg !1032, !tbaa !962
  call void @llvm.dbg.value(metadata double* %db3.i12, i64 0, metadata !587, metadata !692) #7, !dbg !1013
  %221 = load double* %db3.i12, align 8, !dbg !1033, !tbaa !850
  %222 = fptrunc double %221 to float, !dbg !1033
  %223 = getelementptr inbounds [3 x float]* %212, i64 %indvars.iv.i14, i64 2, !dbg !1034
  store float %222, float* %223, align 4, !dbg !1035, !tbaa !962
  br label %224, !dbg !1036

; <label>:224                                     ; preds = %214, %211
  %indvars.iv.next.i20 = add nuw i64 %indvars.iv.i14, 1, !dbg !1037
  br label %.outer.i16, !dbg !1037

.critedge.i22:                                    ; preds = %192, %190
  %225 = trunc i64 %indvars.iv.i14 to i32, !dbg !1005
  %226 = icmp eq i32 %225, %183, !dbg !1038
  %or.cond3.i21 = or i1 %188, %226, !dbg !1040
  br i1 %or.cond3.i21, label %read_g96_vel.exit, label %227, !dbg !1040

; <label>:227                                     ; preds = %.critedge.i22
  %228 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1041, !tbaa !739
  %229 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %228, i8* getelementptr inbounds ([60 x i8]* @.str69, i64 0, i64 0), i32 %225, i8* %infile, i32 %183) #8, !dbg !1042
  br label %read_g96_vel.exit, !dbg !1042

read_g96_vel.exit:                                ; preds = %182, %.critedge.i22, %227
  %natoms.1.i23 = phi i32 [ %225, %227 ], [ %225, %.critedge.i22 ], [ -1, %182 ], !dbg !1003
  call void @llvm.lifetime.end(i64 8, i8* %49), !dbg !1043
  call void @llvm.lifetime.end(i64 8, i8* %50), !dbg !1043
  call void @llvm.lifetime.end(i64 8, i8* %51), !dbg !1043
  call void @llvm.dbg.value(metadata i32 %natoms.1.i23, i64 0, metadata !222, metadata !692), !dbg !753
  br label %230, !dbg !1044

; <label>:230                                     ; preds = %read_g96_vel.exit, %179
  %natoms.2 = phi i32 [ %natoms.1.i23, %read_g96_vel.exit ], [ %natoms.1, %179 ]
  br i1 %69, label %231, label %.critedge4, !dbg !1045

; <label>:231                                     ; preds = %230
  %232 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1046
  store i32 1, i32* %232, align 4, !dbg !1049, !tbaa !1050
  %233 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, !dbg !1051
  call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !594, metadata !692) #7, !dbg !1052
  %234 = bitcast [3 x [3 x float]]* %233 to i8*, !dbg !1054
  call void @llvm.memset.p0i8.i64(i8* %234, i8 0, i64 36, i32 4, i1 false) #7, !dbg !1055
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !220, metadata !692), !dbg !1056
  %235 = getelementptr inbounds [3 x [3 x float]]* %233, i64 0, i64 0, i64 0, !dbg !1057
  %236 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !1061
  %237 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !1062
  %238 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1, !dbg !1063
  %239 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2, !dbg !1066
  %240 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0, !dbg !1067
  %241 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2, !dbg !1068
  %242 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0, !dbg !1069
  %243 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1, !dbg !1070
  br label %244, !dbg !1071

; <label>:244                                     ; preds = %.backedge, %231
  %245 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8, !dbg !1072
  %246 = icmp eq i8* %245, null, !dbg !1071
  br i1 %246, label %.critedge5, label %247, !dbg !1073

; <label>:247                                     ; preds = %244
  %248 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3) #8, !dbg !1074
  %249 = icmp eq i32 %248, 0, !dbg !1075
  %250 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16
  %251 = icmp eq i8 %250, 35, !dbg !1076
  %or.cond9 = or i1 %249, %251, !dbg !1077
  br i1 %or.cond9, label %.backedge, label %252, !dbg !1077

; <label>:252                                     ; preds = %247
  call void @llvm.dbg.value(metadata double* %db1, i64 0, metadata !224, metadata !692), !dbg !847
  call void @llvm.dbg.value(metadata double* %db2, i64 0, metadata !226, metadata !692), !dbg !1078
  call void @llvm.dbg.value(metadata double* %db3, i64 0, metadata !227, metadata !692), !dbg !1079
  call void @llvm.dbg.value(metadata double* %db4, i64 0, metadata !228, metadata !692), !dbg !1080
  call void @llvm.dbg.value(metadata double* %db5, i64 0, metadata !229, metadata !692), !dbg !1081
  call void @llvm.dbg.value(metadata double* %db6, i64 0, metadata !230, metadata !692), !dbg !1082
  call void @llvm.dbg.value(metadata double* %db7, i64 0, metadata !231, metadata !692), !dbg !1083
  call void @llvm.dbg.value(metadata double* %db8, i64 0, metadata !232, metadata !692), !dbg !1084
  call void @llvm.dbg.value(metadata double* %db9, i64 0, metadata !233, metadata !692), !dbg !1085
  %253 = call i32 (i8*, i8*, ...)* @sscanf(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), double* %db1, double* %db2, double* %db3, double* %db4, double* %db5, double* %db6, double* %db7, double* %db8, double* %db9) #8, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %253, i64 0, metadata !223, metadata !692), !dbg !1087
  %254 = icmp slt i32 %253, 3, !dbg !1088
  br i1 %254, label %255, label %256, !dbg !1090

; <label>:255                                     ; preds = %252
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str11, i64 0, i64 0), i8* %infile) #8, !dbg !1091
  br label %256, !dbg !1091

; <label>:256                                     ; preds = %255, %252
  call void @llvm.dbg.value(metadata double* %db1, i64 0, metadata !224, metadata !692), !dbg !847
  %257 = load double* %db1, align 8, !dbg !1092, !tbaa !850
  %258 = fptrunc double %257 to float, !dbg !1092
  store float %258, float* %235, align 4, !dbg !1093, !tbaa !962
  call void @llvm.dbg.value(metadata double* %db2, i64 0, metadata !226, metadata !692), !dbg !1078
  %259 = load double* %db2, align 8, !dbg !1094, !tbaa !850
  %260 = fptrunc double %259 to float, !dbg !1094
  store float %260, float* %236, align 4, !dbg !1095, !tbaa !962
  call void @llvm.dbg.value(metadata double* %db3, i64 0, metadata !227, metadata !692), !dbg !1079
  %261 = load double* %db3, align 8, !dbg !1096, !tbaa !850
  %262 = fptrunc double %261 to float, !dbg !1096
  store float %262, float* %237, align 4, !dbg !1097, !tbaa !962
  %263 = icmp eq i32 %253, 9, !dbg !1098
  br i1 %263, label %264, label %.backedge, !dbg !1099

.backedge:                                        ; preds = %256, %264, %247
  br i1 %249, label %.critedge5, label %244, !dbg !1071

; <label>:264                                     ; preds = %256
  call void @llvm.dbg.value(metadata double* %db4, i64 0, metadata !228, metadata !692), !dbg !1080
  %265 = load double* %db4, align 8, !dbg !1100, !tbaa !850
  %266 = fptrunc double %265 to float, !dbg !1100
  store float %266, float* %238, align 4, !dbg !1101, !tbaa !962
  call void @llvm.dbg.value(metadata double* %db5, i64 0, metadata !229, metadata !692), !dbg !1081
  %267 = load double* %db5, align 8, !dbg !1102, !tbaa !850
  %268 = fptrunc double %267 to float, !dbg !1102
  store float %268, float* %239, align 4, !dbg !1103, !tbaa !962
  call void @llvm.dbg.value(metadata double* %db6, i64 0, metadata !230, metadata !692), !dbg !1082
  %269 = load double* %db6, align 8, !dbg !1104, !tbaa !850
  %270 = fptrunc double %269 to float, !dbg !1104
  store float %270, float* %240, align 4, !dbg !1105, !tbaa !962
  call void @llvm.dbg.value(metadata double* %db7, i64 0, metadata !231, metadata !692), !dbg !1083
  %271 = load double* %db7, align 8, !dbg !1106, !tbaa !850
  %272 = fptrunc double %271 to float, !dbg !1106
  store float %272, float* %241, align 4, !dbg !1107, !tbaa !962
  call void @llvm.dbg.value(metadata double* %db8, i64 0, metadata !232, metadata !692), !dbg !1084
  %273 = load double* %db8, align 8, !dbg !1108, !tbaa !850
  %274 = fptrunc double %273 to float, !dbg !1108
  store float %274, float* %242, align 4, !dbg !1109, !tbaa !962
  call void @llvm.dbg.value(metadata double* %db9, i64 0, metadata !233, metadata !692), !dbg !1085
  %275 = load double* %db9, align 8, !dbg !1110, !tbaa !850
  %276 = fptrunc double %275 to float, !dbg !1110
  store float %276, float* %243, align 4, !dbg !1111, !tbaa !962
  br label %.backedge, !dbg !1112

.critedge4:                                       ; preds = %230
  %277 = icmp eq i32 %bFinished.2, 0, !dbg !1113
  br i1 %277, label %278, label %.critedge5, !dbg !1114

; <label>:278                                     ; preds = %.critedge4
  %279 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct.__sFILE* %fp) #8, !dbg !1115
  %280 = icmp eq i8* %279, null, !dbg !1114
  br i1 %280, label %.critedge5, label %52, !dbg !1116

.critedge5:                                       ; preds = %278, %.critedge4, %244, %.backedge
  %281 = load %struct.t_symtab** @read_g96_conf.symtab, align 8, !dbg !1117, !tbaa !739
  call void @close_symtab(%struct.t_symtab* %281) #8, !dbg !1118
  store i32 %natoms.2, i32* %42, align 4, !dbg !1119, !tbaa !863
  ret i32 %natoms.2, !dbg !1120
}

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct.__sFILE* nocapture) #5

; Function Attrs: optsize
declare void @clear_trxframe(%struct.t_trxframe*, i32) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @open_symtab(%struct.t_symtab*) #2

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct.__sFILE*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare void @close_symtab(%struct.t_symtab*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @write_g96_conf(%struct.__sFILE* nocapture %out, %struct.t_trxframe* %fr, i32 %nindex, i32* readonly %index) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !238, metadata !692), !dbg !1121
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !239, metadata !692), !dbg !1122
  tail call void @llvm.dbg.value(metadata i32 %nindex, i64 0, metadata !240, metadata !692), !dbg !1123
  tail call void @llvm.dbg.value(metadata i32* %index, i64 0, metadata !241, metadata !692), !dbg !1124
  %1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !1125
  %2 = load %struct.t_atoms** %1, align 8, !dbg !1125, !tbaa !865
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %2, i64 0, metadata !242, metadata !692), !dbg !1126
  %3 = icmp ne i32* %index, null, !dbg !1127
  br i1 %3, label %7, label %4, !dbg !1129

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1130
  %6 = load i32* %5, align 4, !dbg !1130, !tbaa !863
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !243, metadata !692), !dbg !1131
  br label %7

; <label>:7                                       ; preds = %0, %4
  %nout.0 = phi i32 [ %6, %4 ], [ %nindex, %0 ]
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !1132
  %9 = load i32* %8, align 4, !dbg !1132, !tbaa !758
  %10 = icmp eq i32 %9, 0, !dbg !1134
  br i1 %10, label %15, label %11, !dbg !1135

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !1136
  %13 = load i8** %12, align 8, !dbg !1136, !tbaa !770
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* %13) #8, !dbg !1137
  br label %15, !dbg !1137

; <label>:15                                      ; preds = %7, %11
  %16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !1138
  %17 = load i32* %16, align 4, !dbg !1138, !tbaa !839
  %18 = icmp eq i32 %17, 0, !dbg !1140
  br i1 %18, label %19, label %23, !dbg !1141

; <label>:19                                      ; preds = %15
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !1142
  %21 = load i32* %20, align 4, !dbg !1142, !tbaa !832
  %22 = icmp eq i32 %21, 0, !dbg !1143
  br i1 %22, label %30, label %23, !dbg !1144

; <label>:23                                      ; preds = %19, %15
  %24 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !1145
  %25 = load i32* %24, align 4, !dbg !1145, !tbaa !1146
  %26 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1147
  %27 = load float* %26, align 4, !dbg !1147, !tbaa !853
  %28 = fpext float %27 to double, !dbg !1148
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str13, i64 0, i64 0), i32 %25, double %28) #8, !dbg !1149
  br label %30, !dbg !1149

; <label>:30                                      ; preds = %19, %23
  %31 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1150
  %32 = load i32* %31, align 4, !dbg !1150, !tbaa !835
  %33 = icmp eq i32 %32, 0, !dbg !1152
  br i1 %33, label %102, label %34, !dbg !1153

; <label>:34                                      ; preds = %30
  %35 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !1154
  %36 = load i32* %35, align 4, !dbg !1154, !tbaa !860
  %37 = icmp eq i32 %36, 0, !dbg !1157
  br i1 %37, label %78, label %38, !dbg !1158

; <label>:38                                      ; preds = %34
  %39 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %out), !dbg !1159
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !244, metadata !692), !dbg !1161
  %40 = icmp sgt i32 %nout.0, 0, !dbg !1162
  br i1 %40, label %.lr.ph15, label %.loopexit7, !dbg !1165

.lr.ph15:                                         ; preds = %38
  %41 = getelementptr inbounds %struct.t_atoms* %2, i64 0, i32 1, !dbg !1166
  %42 = getelementptr inbounds %struct.t_atoms* %2, i64 0, i32 6, !dbg !1168
  %43 = getelementptr inbounds %struct.t_atoms* %2, i64 0, i32 2, !dbg !1169
  %44 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1170
  %45 = add i32 %nout.0, -1, !dbg !1165
  br label %46, !dbg !1165

; <label>:46                                      ; preds = %51, %.lr.ph15
  %indvars.iv24 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next25, %51 ]
  %47 = trunc i64 %indvars.iv24 to i32, !dbg !1171
  br i1 %3, label %48, label %51, !dbg !1171

; <label>:48                                      ; preds = %46
  %49 = getelementptr inbounds i32* %index, i64 %indvars.iv24, !dbg !1172
  %50 = load i32* %49, align 4, !dbg !1172, !tbaa !920
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !245, metadata !692), !dbg !1174
  br label %51, !dbg !1175

; <label>:51                                      ; preds = %46, %48
  %a.0 = phi i32 [ %50, %48 ], [ %47, %46 ]
  %52 = sext i32 %a.0 to i64, !dbg !1176
  %53 = load %struct.t_atom** %41, align 8, !dbg !1166, !tbaa !949
  %54 = getelementptr inbounds %struct.t_atom* %53, i64 %52, i32 7, !dbg !1177
  %55 = load i32* %54, align 4, !dbg !1177, !tbaa !952
  %56 = add nsw i32 %55, 1, !dbg !1178
  %57 = sext i32 %55 to i64, !dbg !1179
  %58 = load i8**** %42, align 8, !dbg !1168, !tbaa !939
  %59 = getelementptr inbounds i8*** %58, i64 %57, !dbg !1179
  %60 = load i8*** %59, align 8, !dbg !1179, !tbaa !739
  %61 = load i8** %60, align 8, !dbg !1180, !tbaa !739
  %62 = load i8**** %43, align 8, !dbg !1169, !tbaa !925
  %63 = getelementptr inbounds i8*** %62, i64 %52, !dbg !1181
  %64 = load i8*** %63, align 8, !dbg !1181, !tbaa !739
  %65 = load i8** %64, align 8, !dbg !1182, !tbaa !739
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !dbg !1165
  %66 = load [3 x float]** %44, align 8, !dbg !1170, !tbaa !955
  %67 = getelementptr inbounds [3 x float]* %66, i64 %52, i64 0, !dbg !1183
  %68 = load float* %67, align 4, !dbg !1183, !tbaa !962
  %69 = fpext float %68 to double, !dbg !1183
  %70 = getelementptr inbounds [3 x float]* %66, i64 %52, i64 1, !dbg !1184
  %71 = load float* %70, align 4, !dbg !1184, !tbaa !962
  %72 = fpext float %71 to double, !dbg !1184
  %73 = getelementptr inbounds [3 x float]* %66, i64 %52, i64 2, !dbg !1185
  %74 = load float* %73, align 4, !dbg !1185, !tbaa !962
  %75 = fpext float %74 to double, !dbg !1185
  %76 = trunc i64 %indvars.iv.next25 to i32, !dbg !1186
  %77 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([36 x i8]* @.str15, i64 0, i64 0), i32 %56, i8* %61, i8* %65, i32 %76, double %69, double %72, double %75) #8, !dbg !1186
  %exitcond27 = icmp eq i32 %47, %45, !dbg !1165
  br i1 %exitcond27, label %.loopexit7, label %46, !dbg !1165

; <label>:78                                      ; preds = %34
  %79 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str16, i64 0, i64 0), i64 12, i64 1, %struct.__sFILE* %out), !dbg !1187
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !244, metadata !692), !dbg !1161
  %80 = icmp sgt i32 %nout.0, 0, !dbg !1189
  br i1 %80, label %.lr.ph13, label %.loopexit7, !dbg !1192

.lr.ph13:                                         ; preds = %78
  %81 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1193
  %82 = add i32 %nout.0, -1, !dbg !1192
  br label %83, !dbg !1192

; <label>:83                                      ; preds = %88, %.lr.ph13
  %indvars.iv20 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next21, %88 ]
  %84 = trunc i64 %indvars.iv20 to i32, !dbg !1195
  br i1 %3, label %85, label %88, !dbg !1195

; <label>:85                                      ; preds = %83
  %86 = getelementptr inbounds i32* %index, i64 %indvars.iv20, !dbg !1196
  %87 = load i32* %86, align 4, !dbg !1196, !tbaa !920
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !245, metadata !692), !dbg !1174
  br label %88, !dbg !1198

; <label>:88                                      ; preds = %83, %85
  %a.1 = phi i32 [ %87, %85 ], [ %84, %83 ]
  %89 = sext i32 %a.1 to i64, !dbg !1199
  %90 = load [3 x float]** %81, align 8, !dbg !1193, !tbaa !955
  %91 = getelementptr inbounds [3 x float]* %90, i64 %89, i64 0, !dbg !1199
  %92 = load float* %91, align 4, !dbg !1199, !tbaa !962
  %93 = fpext float %92 to double, !dbg !1199
  %94 = getelementptr inbounds [3 x float]* %90, i64 %89, i64 1, !dbg !1200
  %95 = load float* %94, align 4, !dbg !1200, !tbaa !962
  %96 = fpext float %95 to double, !dbg !1200
  %97 = getelementptr inbounds [3 x float]* %90, i64 %89, i64 2, !dbg !1201
  %98 = load float* %97, align 4, !dbg !1201, !tbaa !962
  %99 = fpext float %98 to double, !dbg !1201
  %100 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), double %93, double %96, double %99) #8, !dbg !1202
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !dbg !1192
  %exitcond23 = icmp eq i32 %84, %82, !dbg !1192
  br i1 %exitcond23, label %.loopexit7, label %83, !dbg !1192

.loopexit7:                                       ; preds = %51, %88, %38, %78
  %101 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out), !dbg !1203
  br label %102, !dbg !1204

; <label>:102                                     ; preds = %30, %.loopexit7
  %103 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1205
  %104 = load i32* %103, align 4, !dbg !1205, !tbaa !983
  %105 = icmp eq i32 %104, 0, !dbg !1207
  br i1 %105, label %172, label %106, !dbg !1208

; <label>:106                                     ; preds = %102
  %107 = icmp eq %struct.t_atoms* %2, null, !dbg !1209
  br i1 %107, label %148, label %108, !dbg !1212

; <label>:108                                     ; preds = %106
  %109 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %out), !dbg !1213
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !244, metadata !692), !dbg !1161
  %110 = icmp sgt i32 %nout.0, 0, !dbg !1215
  br i1 %110, label %.lr.ph11, label %.loopexit, !dbg !1218

.lr.ph11:                                         ; preds = %108
  %111 = getelementptr inbounds %struct.t_atoms* %2, i64 0, i32 1, !dbg !1219
  %112 = getelementptr inbounds %struct.t_atoms* %2, i64 0, i32 6, !dbg !1221
  %113 = getelementptr inbounds %struct.t_atoms* %2, i64 0, i32 2, !dbg !1222
  %114 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1223
  %115 = add i32 %nout.0, -1, !dbg !1218
  br label %116, !dbg !1218

; <label>:116                                     ; preds = %121, %.lr.ph11
  %indvars.iv16 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next17, %121 ]
  %117 = trunc i64 %indvars.iv16 to i32, !dbg !1224
  br i1 %3, label %118, label %121, !dbg !1224

; <label>:118                                     ; preds = %116
  %119 = getelementptr inbounds i32* %index, i64 %indvars.iv16, !dbg !1225
  %120 = load i32* %119, align 4, !dbg !1225, !tbaa !920
  tail call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !245, metadata !692), !dbg !1174
  br label %121, !dbg !1227

; <label>:121                                     ; preds = %116, %118
  %a.2 = phi i32 [ %120, %118 ], [ %117, %116 ]
  %122 = sext i32 %a.2 to i64, !dbg !1228
  %123 = load %struct.t_atom** %111, align 8, !dbg !1219, !tbaa !949
  %124 = getelementptr inbounds %struct.t_atom* %123, i64 %122, i32 7, !dbg !1229
  %125 = load i32* %124, align 4, !dbg !1229, !tbaa !952
  %126 = add nsw i32 %125, 1, !dbg !1230
  %127 = sext i32 %125 to i64, !dbg !1231
  %128 = load i8**** %112, align 8, !dbg !1221, !tbaa !939
  %129 = getelementptr inbounds i8*** %128, i64 %127, !dbg !1231
  %130 = load i8*** %129, align 8, !dbg !1231, !tbaa !739
  %131 = load i8** %130, align 8, !dbg !1232, !tbaa !739
  %132 = load i8**** %113, align 8, !dbg !1222, !tbaa !925
  %133 = getelementptr inbounds i8*** %132, i64 %122, !dbg !1233
  %134 = load i8*** %133, align 8, !dbg !1233, !tbaa !739
  %135 = load i8** %134, align 8, !dbg !1234, !tbaa !739
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1, !dbg !1218
  %136 = load [3 x float]** %114, align 8, !dbg !1223, !tbaa !979
  %137 = getelementptr inbounds [3 x float]* %136, i64 %122, i64 0, !dbg !1235
  %138 = load float* %137, align 4, !dbg !1235, !tbaa !962
  %139 = fpext float %138 to double, !dbg !1235
  %140 = getelementptr inbounds [3 x float]* %136, i64 %122, i64 1, !dbg !1236
  %141 = load float* %140, align 4, !dbg !1236, !tbaa !962
  %142 = fpext float %141 to double, !dbg !1236
  %143 = getelementptr inbounds [3 x float]* %136, i64 %122, i64 2, !dbg !1237
  %144 = load float* %143, align 4, !dbg !1237, !tbaa !962
  %145 = fpext float %144 to double, !dbg !1237
  %146 = trunc i64 %indvars.iv.next17 to i32, !dbg !1238
  %147 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([36 x i8]* @.str15, i64 0, i64 0), i32 %126, i8* %131, i8* %135, i32 %146, double %139, double %142, double %145) #8, !dbg !1238
  %exitcond19 = icmp eq i32 %117, %115, !dbg !1218
  br i1 %exitcond19, label %.loopexit, label %116, !dbg !1218

; <label>:148                                     ; preds = %106
  %149 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str20, i64 0, i64 0), i64 12, i64 1, %struct.__sFILE* %out), !dbg !1239
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !244, metadata !692), !dbg !1161
  %150 = icmp sgt i32 %nout.0, 0, !dbg !1241
  br i1 %150, label %.lr.ph, label %.loopexit, !dbg !1244

.lr.ph:                                           ; preds = %148
  %151 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1245
  %152 = add i32 %nout.0, -1, !dbg !1244
  br label %153, !dbg !1244

; <label>:153                                     ; preds = %158, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %158 ]
  %154 = trunc i64 %indvars.iv to i32, !dbg !1247
  br i1 %3, label %155, label %158, !dbg !1247

; <label>:155                                     ; preds = %153
  %156 = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !1248
  %157 = load i32* %156, align 4, !dbg !1248, !tbaa !920
  tail call void @llvm.dbg.value(metadata i32 %157, i64 0, metadata !245, metadata !692), !dbg !1174
  br label %158, !dbg !1250

; <label>:158                                     ; preds = %153, %155
  %a.3 = phi i32 [ %157, %155 ], [ %154, %153 ]
  %159 = sext i32 %a.3 to i64, !dbg !1251
  %160 = load [3 x float]** %151, align 8, !dbg !1245, !tbaa !979
  %161 = getelementptr inbounds [3 x float]* %160, i64 %159, i64 0, !dbg !1251
  %162 = load float* %161, align 4, !dbg !1251, !tbaa !962
  %163 = fpext float %162 to double, !dbg !1251
  %164 = getelementptr inbounds [3 x float]* %160, i64 %159, i64 1, !dbg !1252
  %165 = load float* %164, align 4, !dbg !1252, !tbaa !962
  %166 = fpext float %165 to double, !dbg !1252
  %167 = getelementptr inbounds [3 x float]* %160, i64 %159, i64 2, !dbg !1253
  %168 = load float* %167, align 4, !dbg !1253, !tbaa !962
  %169 = fpext float %168 to double, !dbg !1253
  %170 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), double %163, double %166, double %169) #8, !dbg !1254
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1244
  %exitcond = icmp eq i32 %154, %152, !dbg !1244
  br i1 %exitcond, label %.loopexit, label %153, !dbg !1244

.loopexit:                                        ; preds = %121, %158, %108, %148
  %171 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out), !dbg !1255
  br label %172, !dbg !1256

; <label>:172                                     ; preds = %102, %.loopexit
  %173 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1257
  %174 = load i32* %173, align 4, !dbg !1257, !tbaa !1050
  %175 = icmp eq i32 %174, 0, !dbg !1259
  br i1 %175, label %234, label %176, !dbg !1260

; <label>:176                                     ; preds = %172
  %177 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out), !dbg !1261
  %178 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0, !dbg !1263
  %179 = load float* %178, align 4, !dbg !1263, !tbaa !962
  %180 = fpext float %179 to double, !dbg !1263
  %181 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, !dbg !1264
  %182 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !1264
  %183 = load float* %182, align 4, !dbg !1264, !tbaa !962
  %184 = fpext float %183 to double, !dbg !1264
  %185 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, !dbg !1265
  %186 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !1265
  %187 = load float* %186, align 4, !dbg !1265, !tbaa !962
  %188 = fpext float %187 to double, !dbg !1265
  %189 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str22, i64 0, i64 0), double %180, double %184, double %188) #8, !dbg !1266
  %190 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1, !dbg !1267
  %191 = load float* %190, align 4, !dbg !1267, !tbaa !962
  %fabsf = tail call float @fabsf(float %191) #9, !dbg !1269
  %192 = fpext float %fabsf to double, !dbg !1269
  %193 = fcmp ogt double %192, 1.200000e-38, !dbg !1270
  %.phi.trans.insert = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2
  %.pre = load float* %.phi.trans.insert, align 4, !dbg !1271, !tbaa !962
  br i1 %193, label %._crit_edge, label %194, !dbg !1272

; <label>:194                                     ; preds = %176
  %fabsf1 = tail call float @fabsf(float %.pre) #9, !dbg !1273
  %195 = fpext float %fabsf1 to double, !dbg !1273
  %196 = fcmp ogt double %195, 1.200000e-38, !dbg !1274
  br i1 %196, label %._crit_edge, label %197, !dbg !1275

; <label>:197                                     ; preds = %194
  %198 = getelementptr inbounds [3 x float]* %181, i64 0, i64 0, !dbg !1276
  %199 = load float* %198, align 4, !dbg !1276, !tbaa !962
  %fabsf2 = tail call float @fabsf(float %199) #9, !dbg !1277
  %200 = fpext float %fabsf2 to double, !dbg !1277
  %201 = fcmp ogt double %200, 1.200000e-38, !dbg !1278
  br i1 %201, label %._crit_edge, label %202, !dbg !1279

; <label>:202                                     ; preds = %197
  %203 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2, !dbg !1280
  %204 = load float* %203, align 4, !dbg !1280, !tbaa !962
  %fabsf3 = tail call float @fabsf(float %204) #9, !dbg !1281
  %205 = fpext float %fabsf3 to double, !dbg !1281
  %206 = fcmp ogt double %205, 1.200000e-38, !dbg !1282
  br i1 %206, label %._crit_edge, label %207, !dbg !1283

; <label>:207                                     ; preds = %202
  %208 = getelementptr inbounds [3 x float]* %185, i64 0, i64 0, !dbg !1284
  %209 = load float* %208, align 4, !dbg !1284, !tbaa !962
  %fabsf4 = tail call float @fabsf(float %209) #9, !dbg !1285
  %210 = fpext float %fabsf4 to double, !dbg !1285
  %211 = fcmp ogt double %210, 1.200000e-38, !dbg !1286
  br i1 %211, label %._crit_edge, label %212, !dbg !1287

; <label>:212                                     ; preds = %207
  %213 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1, !dbg !1288
  %214 = load float* %213, align 4, !dbg !1288, !tbaa !962
  %fabsf5 = tail call float @fabsf(float %214) #9, !dbg !1289
  %215 = fpext float %fabsf5 to double, !dbg !1289
  %216 = fcmp ogt double %215, 1.200000e-38, !dbg !1290
  br i1 %216, label %._crit_edge, label %232, !dbg !1291

._crit_edge:                                      ; preds = %176, %212, %207, %202, %197, %194
  %217 = fpext float %191 to double, !dbg !1292
  %218 = fpext float %.pre to double, !dbg !1271
  %219 = getelementptr inbounds [3 x float]* %181, i64 0, i64 0, !dbg !1293
  %220 = load float* %219, align 4, !dbg !1293, !tbaa !962
  %221 = fpext float %220 to double, !dbg !1293
  %222 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2, !dbg !1294
  %223 = load float* %222, align 4, !dbg !1294, !tbaa !962
  %224 = fpext float %223 to double, !dbg !1294
  %225 = getelementptr inbounds [3 x float]* %185, i64 0, i64 0, !dbg !1295
  %226 = load float* %225, align 4, !dbg !1295, !tbaa !962
  %227 = fpext float %226 to double, !dbg !1295
  %228 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1, !dbg !1296
  %229 = load float* %228, align 4, !dbg !1296, !tbaa !962
  %230 = fpext float %229 to double, !dbg !1296
  %231 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([37 x i8]* @.str23, i64 0, i64 0), double %217, double %218, double %221, double %224, double %227, double %230) #8, !dbg !1297
  br label %232, !dbg !1297

; <label>:232                                     ; preds = %._crit_edge, %212
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %out), !dbg !1298
  %233 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out), !dbg !1299
  br label %234, !dbg !1300

; <label>:234                                     ; preds = %172, %232
  ret void, !dbg !1301
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gro_next_x_or_v(%struct.__sFILE* %status, %struct.t_trxframe* nocapture %fr) #4 {
  %atoms = alloca %struct.t_atoms, align 8
  %title = alloca [4096 x i8], align 16
  %tt = alloca double, align 8
  %ndec = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %status, i64 0, metadata !250, metadata !692), !dbg !1302
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !251, metadata !692), !dbg !1303
  %1 = bitcast %struct.t_atoms* %atoms to i8*, !dbg !1304
  call void @llvm.lifetime.start(i64 1280, i8* %1) #7, !dbg !1304
  %2 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0, !dbg !1305
  call void @llvm.lifetime.start(i64 4096, i8* %2) #7, !dbg !1305
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %title, metadata !253, metadata !692), !dbg !1306
  %3 = tail call i32 @eof(%struct.__sFILE* %status) #8, !dbg !1307
  %4 = icmp eq i32 %3, 0, !dbg !1307
  br i1 %4, label %5, label %63, !dbg !1309

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1310
  %7 = load i32* %6, align 4, !dbg !1310, !tbaa !863
  %8 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1311
  store i32 %7, i32* %8, align 8, !dbg !1312, !tbaa !933
  %9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 576, i32 %7, i32 40) #8, !dbg !1313
  %10 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !1313
  %11 = bitcast %struct.t_atom** %10 to i8**, !dbg !1313
  store i8* %9, i8** %11, align 8, !dbg !1313, !tbaa !949
  %12 = load i32* %6, align 4, !dbg !1314, !tbaa !863
  %13 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !1315
  store i32 %12, i32* %13, align 8, !dbg !1316, !tbaa !942
  %14 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 578, i32 %12, i32 8) #8, !dbg !1317
  %15 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !1317
  %16 = bitcast i8**** %15 to i8**, !dbg !1317
  store i8* %14, i8** %16, align 8, !dbg !1317, !tbaa !939
  %17 = load i32* %6, align 4, !dbg !1318, !tbaa !863
  %18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 579, i32 %17, i32 8) #8, !dbg !1318
  %19 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !1318
  %20 = bitcast i8**** %19 to i8**, !dbg !1318
  store i8* %18, i8** %20, align 8, !dbg !1318, !tbaa !925
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1319
  %22 = load [3 x float]** %21, align 8, !dbg !1319, !tbaa !955
  %23 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1320
  %24 = load [3 x float]** %23, align 8, !dbg !1320, !tbaa !979
  %25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1321
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !252, metadata !692), !dbg !1322
  tail call void @llvm.dbg.value(metadata i32* %ndec, i64 0, metadata !259, metadata !692), !dbg !1323
  %26 = call fastcc i32 @get_w_conf(%struct.__sFILE* %status, i8* %2, i8* %2, %struct.t_atoms* %atoms, i32* %ndec, [3 x float]* %22, [3 x float]* %24, [3 x float]* %25) #10, !dbg !1324
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1325
  store i32 %26, i32* %27, align 4, !dbg !1326, !tbaa !983
  %28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !1327
  store i32 1, i32* %28, align 4, !dbg !1328, !tbaa !1329
  %29 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !1330
  store float 1.000000e+00, float* %29, align 4, !dbg !1331, !tbaa !1332
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !260, metadata !692), !dbg !1333
  call void @llvm.dbg.value(metadata i32* %ndec, i64 0, metadata !259, metadata !692), !dbg !1323
  %30 = load i32* %ndec, align 4, !dbg !1334, !tbaa !920
  %31 = icmp sgt i32 %30, 0, !dbg !1337
  br i1 %31, label %.lr.ph, label %36, !dbg !1338

.lr.ph:                                           ; preds = %5, %.lr.ph
  %32 = phi float [ %33, %.lr.ph ], [ 1.000000e+00, %5 ], !dbg !1339
  %i.01 = phi i32 [ %34, %.lr.ph ], [ 0, %5 ]
  %33 = fmul float %32, 1.000000e+01, !dbg !1339
  %34 = add nuw nsw i32 %i.01, 1, !dbg !1340
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !260, metadata !692), !dbg !1333
  call void @llvm.dbg.value(metadata i32* %ndec, i64 0, metadata !259, metadata !692), !dbg !1323
  %35 = icmp slt i32 %34, %30, !dbg !1337
  br i1 %35, label %.lr.ph, label %._crit_edge, !dbg !1338

._crit_edge:                                      ; preds = %.lr.ph
  store float %33, float* %29, align 4, !dbg !1339, !tbaa !1332
  br label %36, !dbg !1338

; <label>:36                                      ; preds = %._crit_edge, %5
  %37 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !1341
  store i8* %2, i8** %37, align 8, !dbg !1342, !tbaa !770
  %38 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !1343
  store i32 1, i32* %38, align 4, !dbg !1344, !tbaa !758
  %39 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1345
  store i32 1, i32* %39, align 4, !dbg !1346, !tbaa !835
  %40 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1347
  store i32 1, i32* %40, align 4, !dbg !1348, !tbaa !1050
  %41 = load i8** %11, align 8, !dbg !1349, !tbaa !949
  call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 592, i8* %41) #8, !dbg !1349
  %42 = load i8** %16, align 8, !dbg !1350, !tbaa !939
  call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 593, i8* %42) #8, !dbg !1350
  %43 = load i8** %20, align 8, !dbg !1351, !tbaa !925
  call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 594, i8* %43) #8, !dbg !1351
  %44 = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str28, i64 0, i64 0)) #8, !dbg !1352
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !257, metadata !692), !dbg !1354
  %45 = icmp eq i8* %44, null, !dbg !1355
  br i1 %45, label %58, label %46, !dbg !1356

; <label>:46                                      ; preds = %36
  %47 = getelementptr inbounds i8* %44, i64 2, !dbg !1357
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !257, metadata !692), !dbg !1354
  call void @llvm.dbg.value(metadata double* %tt, i64 0, metadata !258, metadata !692), !dbg !1359
  %48 = call i32 (i8*, i8*, ...)* @sscanf(i8* %47, i8* getelementptr inbounds ([4 x i8]* @.str29, i64 0, i64 0), double* %tt) #8, !dbg !1360
  %49 = icmp eq i32 %48, 1, !dbg !1362
  br i1 %49, label %50, label %55, !dbg !1363

; <label>:50                                      ; preds = %46
  call void @llvm.dbg.value(metadata double* %tt, i64 0, metadata !258, metadata !692), !dbg !1359
  %51 = load double* %tt, align 8, !dbg !1364, !tbaa !850
  %52 = fptrunc double %51 to float, !dbg !1364
  %53 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1366
  store float %52, float* %53, align 4, !dbg !1367, !tbaa !853
  %54 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !1368
  store i32 1, i32* %54, align 4, !dbg !1369, !tbaa !832
  br label %58, !dbg !1370

; <label>:55                                      ; preds = %46
  %56 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1371
  store float 0.000000e+00, float* %56, align 4, !dbg !1373, !tbaa !853
  %57 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !1374
  store i32 0, i32* %57, align 4, !dbg !1375, !tbaa !832
  br label %58

; <label>:58                                      ; preds = %36, %50, %55
  %59 = load i32* %8, align 8, !dbg !1376, !tbaa !933
  %60 = load i32* %6, align 4, !dbg !1378, !tbaa !863
  %61 = icmp eq i32 %59, %60, !dbg !1379
  br i1 %61, label %63, label %62, !dbg !1380

; <label>:62                                      ; preds = %58
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([86 x i8]* @.str30, i64 0, i64 0), i32 %59, i32 %60) #8, !dbg !1381
  br label %63, !dbg !1381

; <label>:63                                      ; preds = %62, %58, %0
  %.0 = phi i32 [ 0, %0 ], [ 1, %58 ], [ 1, %62 ]
  call void @llvm.lifetime.end(i64 4096, i8* %2) #7, !dbg !1382
  call void @llvm.lifetime.end(i64 1280, i8* %1) #7, !dbg !1382
  ret i32 %.0, !dbg !1382
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i32 @eof(%struct.__sFILE*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @get_w_conf(%struct.__sFILE* %in, i8* %infile, i8* %title, %struct.t_atoms* nocapture %atoms, i32* nocapture %ndec, [3 x float]* nocapture %x, [3 x float]* %v, [3 x float]* nocapture %box) #4 {
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
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %in, i64 0, metadata !600, metadata !692), !dbg !1383
  tail call void @llvm.dbg.value(metadata i8* %infile, i64 0, metadata !601, metadata !692), !dbg !1384
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !602, metadata !692), !dbg !1385
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !603, metadata !692), !dbg !1386
  tail call void @llvm.dbg.value(metadata i32* %ndec, i64 0, metadata !604, metadata !692), !dbg !1387
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !605, metadata !692), !dbg !1388
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !606, metadata !692), !dbg !1389
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !607, metadata !692), !dbg !1390
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %name, metadata !608, metadata !692), !dbg !1391
  %1 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0, !dbg !1392
  call void @llvm.lifetime.start(i64 4097, i8* %1) #7, !dbg !1392
  tail call void @llvm.dbg.declare(metadata [4097 x i8]* %line, metadata !609, metadata !692), !dbg !1393
  %2 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !1394
  call void @llvm.lifetime.start(i64 256, i8* %2) #7, !dbg !1394
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !613, metadata !692), !dbg !1395
  tail call void @llvm.dbg.declare(metadata [30 x i8]* %format, metadata !614, metadata !692), !dbg !1396
  tail call void @llvm.dbg.declare(metadata [3 x float]* %xmin, metadata !624, metadata !692), !dbg !1397
  tail call void @llvm.dbg.declare(metadata [3 x float]* %xmax, metadata !625, metadata !692), !dbg !1398
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !630, metadata !692), !dbg !1399
  tail call void @llvm.dbg.value(metadata i32 -12345, i64 0, metadata !631, metadata !692), !dbg !1400
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !632, metadata !692), !dbg !1401
  %3 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !dbg !1402, !tbaa !739
  %4 = icmp eq %struct.t_symtab* %3, null, !dbg !1402
  br i1 %4, label %5, label %8, !dbg !1404

; <label>:5                                       ; preds = %0
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 392, i32 1, i32 16) #8, !dbg !1405
  %7 = bitcast i8* %6 to %struct.t_symtab*, !dbg !1405
  store i8* %6, i8** bitcast (%struct.t_symtab** @get_w_conf.symtab to i8**), align 8, !dbg !1405, !tbaa !739
  tail call void @open_symtab(%struct.t_symtab* %7) #8, !dbg !1407
  br label %8, !dbg !1408

; <label>:8                                       ; preds = %0, %5
  %9 = tail call i8* @fgets2(i8* %title, i32 4096, %struct.__sFILE* %in) #8, !dbg !1409
  %10 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #8, !dbg !1410
  call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !626, metadata !692), !dbg !1411
  %11 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str70, i64 0, i64 0), i32* %natoms) #8, !dbg !1412
  call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !626, metadata !692), !dbg !1411
  %12 = load i32* %natoms, align 4, !dbg !1413, !tbaa !920
  %13 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1415
  %14 = load i32* %13, align 4, !dbg !1415, !tbaa !933
  %15 = icmp sgt i32 %12, %14, !dbg !1416
  br i1 %15, label %16, label %17, !dbg !1417

; <label>:16                                      ; preds = %8
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([53 x i8]* @.str71, i64 0, i64 0), i32 %12, i32 %14) #8, !dbg !1418
  br label %.preheader6, !dbg !1418

; <label>:17                                      ; preds = %8
  %18 = icmp slt i32 %12, %14, !dbg !1419
  br i1 %18, label %19, label %.preheader6, !dbg !1421

; <label>:19                                      ; preds = %17
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1422, !tbaa !739
  %21 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([63 x i8]* @.str72, i64 0, i64 0), i32 %12, i32 %14) #8, !dbg !1423
  br label %.preheader6, !dbg !1423

.preheader6:                                      ; preds = %17, %19, %16
  call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !626, metadata !692), !dbg !1411
  %22 = load i32* %natoms, align 4, !dbg !1424, !tbaa !920
  %23 = icmp sgt i32 %22, 0, !dbg !1427
  br i1 %23, label %.lr.ph, label %._crit_edge, !dbg !1428

.lr.ph:                                           ; preds = %.preheader6
  %24 = getelementptr inbounds [6 x i8]* %name, i64 0, i64 0, !dbg !1429
  %25 = getelementptr inbounds [6 x i8]* %name, i64 0, i64 5, !dbg !1431
  %26 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 5, !dbg !1432
  %27 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !1433
  %28 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 10, !dbg !1434
  %29 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !1435
  %30 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 20, !dbg !1436
  %31 = getelementptr inbounds [30 x i8]* %format, i64 0, i64 0, !dbg !1438
  %32 = icmp eq [3 x float]* %v, null, !dbg !1439
  %33 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !1441
  br label %34, !dbg !1428

; <label>:34                                      ; preds = %.lr.ph, %124
  %indvars.iv37 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next38, %124 ]
  %newres.017 = phi i32 [ 0, %.lr.ph ], [ %newres.1, %124 ]
  %bVel.016 = phi i32 [ 0, %.lr.ph ], [ %bVel.1, %124 ]
  %bFirst.015 = phi i32 [ 1, %.lr.ph ], [ 0, %124 ]
  %ddist.014 = phi i32 [ 0, %.lr.ph ], [ %ddist.4, %124 ]
  %oldres.013 = phi i32 [ -12345, %.lr.ph ], [ %oldres.1, %124 ]
  %35 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #8, !dbg !1444
  %36 = icmp eq i8* %35, null, !dbg !1446
  br i1 %36, label %37, label %40, !dbg !1447

; <label>:37                                      ; preds = %34
  %38 = add nsw i64 %indvars.iv37, 2, !dbg !1448
  %39 = trunc i64 %38 to i32, !dbg !1448
  call void @_unexpected_eof(i8* %infile, i32 %39, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 414) #8, !dbg !1448
  br label %40, !dbg !1450

; <label>:40                                      ; preds = %37, %34
  %41 = call i64 @strlen(i8* %1) #8, !dbg !1451
  %42 = icmp ult i64 %41, 39, !dbg !1453
  br i1 %42, label %43, label %46, !dbg !1454

; <label>:43                                      ; preds = %40
  %44 = add nuw nsw i64 %indvars.iv37, 1, !dbg !1455
  %45 = trunc i64 %44 to i32, !dbg !1456
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str73, i64 0, i64 0), i8* %infile, i32 %45, i8* %1) #8, !dbg !1456
  br label %46, !dbg !1456

; <label>:46                                      ; preds = %43, %40
  %47 = icmp eq i32 %bFirst.015, 0, !dbg !1457
  br i1 %47, label %67, label %48, !dbg !1459

; <label>:48                                      ; preds = %46
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !633, metadata !692), !dbg !1460
  %49 = call i8* @strchr(i8* %1, i32 46) #8, !dbg !1461
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !635, metadata !692), !dbg !1463
  %50 = icmp eq i8* %49, null, !dbg !1464
  br i1 %50, label %51, label %52, !dbg !1466

; <label>:51                                      ; preds = %48
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str74, i64 0, i64 0), i8* %infile) #8, !dbg !1467
  br label %52, !dbg !1467

; <label>:52                                      ; preds = %51, %48
  %53 = getelementptr inbounds i8* %49, i64 1, !dbg !1468
  %54 = call i8* @strchr(i8* %53, i32 46) #8, !dbg !1469
  call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !636, metadata !692), !dbg !1470
  %55 = icmp ne i8* %49, null, !dbg !1471
  %56 = icmp ne i8* %54, null, !dbg !1473
  %or.cond = or i1 %55, %56, !dbg !1474
  br i1 %or.cond, label %57, label %62, !dbg !1474

; <label>:57                                      ; preds = %52
  %58 = ptrtoint i8* %54 to i64, !dbg !1475
  %59 = ptrtoint i8* %49 to i64, !dbg !1475
  %60 = sub i64 %58, %59, !dbg !1475
  %61 = trunc i64 %60 to i32, !dbg !1476
  call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !632, metadata !692), !dbg !1401
  br label %62, !dbg !1477

; <label>:62                                      ; preds = %52, %57
  %ddist.1 = phi i32 [ %61, %57 ], [ 8, %52 ]
  %63 = icmp slt i32 %ddist.1, 0, !dbg !1478
  call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !632, metadata !692), !dbg !1401
  %.ddist.1 = select i1 %63, i32 8, i32 %ddist.1, !dbg !1480
  %64 = icmp sgt i32 %.ddist.1, 30, !dbg !1481
  call void @llvm.dbg.value(metadata i32 30, i64 0, metadata !632, metadata !692), !dbg !1401
  %ddist.3 = select i1 %64, i32 30, i32 %.ddist.1, !dbg !1483
  %65 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %31, i32 0, i64 30, i8* getelementptr inbounds ([19 x i8]* @.str75, i64 0, i64 0), i32 %ddist.3, i32 %ddist.3, i32 %ddist.3) #8, !dbg !1484
  %66 = add nsw i32 %ddist.3, -5, !dbg !1485
  store i32 %66, i32* %ndec, align 4, !dbg !1486, !tbaa !920
  br label %67, !dbg !1487

; <label>:67                                      ; preds = %46, %62
  %ddist.4 = phi i32 [ %ddist.3, %62 ], [ %ddist.014, %46 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %1, i64 5, i32 1, i1 false), !dbg !1429
  store i8 0, i8* %25, align 1, !dbg !1488, !tbaa !720
  call void @llvm.dbg.value(metadata i32* %resnr, i64 0, metadata !629, metadata !692), !dbg !1489
  %68 = call i32 (i8*, i8*, ...)* @sscanf(i8* %24, i8* getelementptr inbounds ([3 x i8]* @.str70, i64 0, i64 0), i32* %resnr) #8, !dbg !1490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %26, i64 5, i32 1, i1 false), !dbg !1432
  store i8 0, i8* %25, align 1, !dbg !1491, !tbaa !720
  call void @llvm.dbg.value(metadata i32* %resnr, i64 0, metadata !629, metadata !692), !dbg !1489
  %69 = load i32* %resnr, align 4, !dbg !1492, !tbaa !920
  %70 = icmp eq i32 %69, %oldres.013, !dbg !1493
  br i1 %70, label %82, label %71, !dbg !1494

; <label>:71                                      ; preds = %67
  call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !631, metadata !692), !dbg !1400
  call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !626, metadata !692), !dbg !1411
  %72 = load i32* %natoms, align 4, !dbg !1495, !tbaa !920
  %73 = icmp slt i32 %newres.017, %72, !dbg !1497
  br i1 %73, label %75, label %74, !dbg !1498

; <label>:74                                      ; preds = %71
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str64, i64 0, i64 0), i8* %infile, i32 %72) #8, !dbg !1499
  br label %75, !dbg !1499

; <label>:75                                      ; preds = %71, %74
  %76 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !dbg !1500, !tbaa !739
  %77 = call i8** @put_symtab(%struct.t_symtab* %76, i8* %24) #8, !dbg !1501
  %78 = sext i32 %newres.017 to i64, !dbg !1502
  %79 = load i8**** %33, align 8, !dbg !1441, !tbaa !939
  %80 = getelementptr inbounds i8*** %79, i64 %78, !dbg !1502
  store i8** %77, i8*** %80, align 8, !dbg !1503, !tbaa !739
  %81 = add nsw i32 %newres.017, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i32 %81, i64 0, metadata !630, metadata !692), !dbg !1399
  br label %82, !dbg !1505

; <label>:82                                      ; preds = %67, %75
  %oldres.1 = phi i32 [ %69, %75 ], [ %oldres.013, %67 ]
  %newres.1 = phi i32 [ %81, %75 ], [ %newres.017, %67 ]
  call void @llvm.dbg.value(metadata i32 %newres.1, i64 0, metadata !629, metadata !692), !dbg !1489
  store i32 %newres.1, i32* %resnr, align 4, !dbg !1506, !tbaa !920
  %83 = add nsw i32 %newres.1, -1, !dbg !1507
  %84 = load %struct.t_atom** %27, align 8, !dbg !1433, !tbaa !949
  %85 = getelementptr inbounds %struct.t_atom* %84, i64 %indvars.iv37, i32 7, !dbg !1508
  store i32 %83, i32* %85, align 4, !dbg !1509, !tbaa !952
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %28, i64 5, i32 1, i1 false), !dbg !1434
  %86 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !dbg !1510, !tbaa !739
  %87 = call i8** @put_symtab(%struct.t_symtab* %86, i8* %24) #8, !dbg !1511
  %88 = load i8**** %29, align 8, !dbg !1435, !tbaa !925
  %89 = getelementptr inbounds i8*** %88, i64 %indvars.iv37, !dbg !1512
  store i8** %87, i8*** %89, align 8, !dbg !1513, !tbaa !739
  call void @llvm.dbg.value(metadata double* %x1, i64 0, metadata !618, metadata !692), !dbg !1514
  call void @llvm.dbg.value(metadata double* %y1, i64 0, metadata !619, metadata !692), !dbg !1515
  call void @llvm.dbg.value(metadata double* %z1, i64 0, metadata !620, metadata !692), !dbg !1516
  %90 = call i32 (i8*, i8*, ...)* @sscanf(i8* %30, i8* %31, double* %x1, double* %y1, double* %z1) #8, !dbg !1517
  %91 = icmp eq i32 %90, 3, !dbg !1518
  br i1 %91, label %93, label %92, !dbg !1519

; <label>:92                                      ; preds = %82
  call void @_too_few(i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 466) #8, !dbg !1520
  br label %103, !dbg !1522

; <label>:93                                      ; preds = %82
  call void @llvm.dbg.value(metadata double* %x1, i64 0, metadata !618, metadata !692), !dbg !1514
  %94 = load double* %x1, align 8, !dbg !1523, !tbaa !850
  %95 = fptrunc double %94 to float, !dbg !1523
  %96 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv37, i64 0, !dbg !1525
  store float %95, float* %96, align 4, !dbg !1526, !tbaa !962
  call void @llvm.dbg.value(metadata double* %y1, i64 0, metadata !619, metadata !692), !dbg !1515
  %97 = load double* %y1, align 8, !dbg !1527, !tbaa !850
  %98 = fptrunc double %97 to float, !dbg !1527
  %99 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv37, i64 1, !dbg !1528
  store float %98, float* %99, align 4, !dbg !1529, !tbaa !962
  call void @llvm.dbg.value(metadata double* %z1, i64 0, metadata !620, metadata !692), !dbg !1516
  %100 = load double* %z1, align 8, !dbg !1530, !tbaa !850
  %101 = fptrunc double %100 to float, !dbg !1530
  %102 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv37, i64 2, !dbg !1531
  store float %101, float* %102, align 4, !dbg !1532, !tbaa !962
  br label %103

; <label>:103                                     ; preds = %93, %92
  br i1 %32, label %124, label %104, !dbg !1533

; <label>:104                                     ; preds = %103
  %105 = mul nsw i32 %ddist.4, 3, !dbg !1534
  %106 = sext i32 %105 to i64, !dbg !1537
  %.sum = add nsw i64 %106, 20, !dbg !1537
  %107 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 %.sum, !dbg !1537
  call void @llvm.dbg.value(metadata double* %x1, i64 0, metadata !618, metadata !692), !dbg !1514
  call void @llvm.dbg.value(metadata double* %y1, i64 0, metadata !619, metadata !692), !dbg !1515
  call void @llvm.dbg.value(metadata double* %z1, i64 0, metadata !620, metadata !692), !dbg !1516
  %108 = call i32 (i8*, i8*, ...)* @sscanf(i8* %107, i8* %31, double* %x1, double* %y1, double* %z1) #8, !dbg !1538
  %109 = icmp eq i32 %108, 3, !dbg !1539
  br i1 %109, label %114, label %110, !dbg !1540

; <label>:110                                     ; preds = %104
  %111 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv37, i64 0, !dbg !1541
  store float 0.000000e+00, float* %111, align 4, !dbg !1543, !tbaa !962
  %112 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv37, i64 1, !dbg !1544
  store float 0.000000e+00, float* %112, align 4, !dbg !1545, !tbaa !962
  %113 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv37, i64 2, !dbg !1546
  store float 0.000000e+00, float* %113, align 4, !dbg !1547, !tbaa !962
  br label %124, !dbg !1548

; <label>:114                                     ; preds = %104
  call void @llvm.dbg.value(metadata double* %x1, i64 0, metadata !618, metadata !692), !dbg !1514
  %115 = load double* %x1, align 8, !dbg !1549, !tbaa !850
  %116 = fptrunc double %115 to float, !dbg !1549
  %117 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv37, i64 0, !dbg !1551
  store float %116, float* %117, align 4, !dbg !1552, !tbaa !962
  call void @llvm.dbg.value(metadata double* %y1, i64 0, metadata !619, metadata !692), !dbg !1515
  %118 = load double* %y1, align 8, !dbg !1553, !tbaa !850
  %119 = fptrunc double %118 to float, !dbg !1553
  %120 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv37, i64 1, !dbg !1554
  store float %119, float* %120, align 4, !dbg !1555, !tbaa !962
  call void @llvm.dbg.value(metadata double* %z1, i64 0, metadata !620, metadata !692), !dbg !1516
  %121 = load double* %z1, align 8, !dbg !1556, !tbaa !850
  %122 = fptrunc double %121 to float, !dbg !1556
  %123 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv37, i64 2, !dbg !1557
  store float %122, float* %123, align 4, !dbg !1558, !tbaa !962
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !634, metadata !692), !dbg !1559
  br label %124

; <label>:124                                     ; preds = %103, %114, %110
  %bVel.1 = phi i32 [ %bVel.016, %110 ], [ 1, %114 ], [ %bVel.016, %103 ]
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !1428
  call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !626, metadata !692), !dbg !1411
  %125 = load i32* %natoms, align 4, !dbg !1424, !tbaa !920
  %126 = sext i32 %125 to i64, !dbg !1427
  %127 = icmp slt i64 %indvars.iv.next38, %126, !dbg !1427
  br i1 %127, label %34, label %._crit_edge, !dbg !1428

._crit_edge:                                      ; preds = %124, %.preheader6
  %newres.0.lcssa = phi i32 [ 0, %.preheader6 ], [ %newres.1, %124 ]
  %bVel.0.lcssa = phi i32 [ 0, %.preheader6 ], [ %bVel.1, %124 ]
  %128 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !1560
  store i32 %newres.0.lcssa, i32* %128, align 4, !dbg !1561, !tbaa !942
  %129 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #8, !dbg !1562
  call void @llvm.dbg.value(metadata double* %x1, i64 0, metadata !618, metadata !692), !dbg !1514
  call void @llvm.dbg.value(metadata double* %y1, i64 0, metadata !619, metadata !692), !dbg !1515
  call void @llvm.dbg.value(metadata double* %z1, i64 0, metadata !620, metadata !692), !dbg !1516
  %130 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str76, i64 0, i64 0), double* %x1, double* %y1, double* %z1) #8, !dbg !1563
  %131 = icmp eq i32 %130, 3, !dbg !1565
  br i1 %131, label %167, label %.preheader5, !dbg !1566

.preheader5:                                      ; preds = %._crit_edge
  %132 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 256, i8* getelementptr inbounds ([19 x i8]* @.str77, i64 0, i64 0), i8* %infile) #8, !dbg !1567
  call void @warning(i8* %2) #8, !dbg !1569
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !628, metadata !692), !dbg !1570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmax34, i8* %x35, i64 12, i32 4, i1 false), !dbg !1571
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmin36, i8* %x35, i64 12, i32 4, i1 false), !dbg !1574
  %133 = load i32* %13, align 4, !dbg !1575, !tbaa !933
  %134 = icmp sgt i32 %133, 1, !dbg !1578
  br i1 %134, label %.preheader4.lr.ph, label %.preheader3, !dbg !1579

.preheader4.lr.ph:                                ; preds = %.preheader5
  %135 = sext i32 %133 to i64, !dbg !1579
  br label %.preheader4, !dbg !1579

.preheader4:                                      ; preds = %.preheader4.lr.ph, %146
  %indvars.iv29 = phi i64 [ 1, %.preheader4.lr.ph ], [ %indvars.iv.next30, %146 ]
  br label %136, !dbg !1580

.preheader3:                                      ; preds = %146, %.preheader5
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !628, metadata !692), !dbg !1570
  call void @llvm.memset.p0i8.i64(i8* %box25, i8 0, i64 36, i32 4, i1 false), !dbg !1582
  br label %148, !dbg !1587

; <label>:136                                     ; preds = %136, %.preheader4
  %indvars.iv26 = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next27, %136 ]
  %137 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv26, !dbg !1589
  %138 = load float* %137, align 4, !dbg !1589, !tbaa !962
  %139 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv29, i64 %indvars.iv26, !dbg !1589
  %140 = load float* %139, align 4, !dbg !1589, !tbaa !962
  %141 = fcmp olt float %138, %140, !dbg !1589
  %. = select i1 %141, float %138, float %140, !dbg !1589
  store float %., float* %137, align 4, !dbg !1592, !tbaa !962
  %142 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv26, !dbg !1593
  %143 = load float* %142, align 4, !dbg !1593, !tbaa !962
  %144 = fcmp ogt float %143, %140, !dbg !1593
  %145 = select i1 %144, float %143, float %140, !dbg !1593
  store float %145, float* %142, align 4, !dbg !1594, !tbaa !962
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1, !dbg !1580
  %exitcond28 = icmp eq i64 %indvars.iv.next27, 3, !dbg !1580
  br i1 %exitcond28, label %146, label %136, !dbg !1580

; <label>:146                                     ; preds = %136
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1, !dbg !1579
  %147 = icmp slt i64 %indvars.iv.next30, %135, !dbg !1578
  br i1 %147, label %.preheader4, label %.preheader3, !dbg !1579

; <label>:148                                     ; preds = %148, %.preheader3
  %indvars.iv = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next, %148 ]
  %149 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv, !dbg !1595
  %150 = load float* %149, align 4, !dbg !1595, !tbaa !962
  %151 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv, !dbg !1597
  %152 = load float* %151, align 4, !dbg !1597, !tbaa !962
  %153 = fsub float %150, %152, !dbg !1598
  %154 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv, !dbg !1599
  store float %153, float* %154, align 4, !dbg !1600, !tbaa !962
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1587
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !1587
  br i1 %exitcond, label %155, label %148, !dbg !1587

; <label>:155                                     ; preds = %148
  %156 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1601, !tbaa !739
  %157 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1602
  %158 = load float* %157, align 4, !dbg !1602, !tbaa !962
  %159 = fpext float %158 to double, !dbg !1602
  %160 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1603
  %161 = load float* %160, align 4, !dbg !1603, !tbaa !962
  %162 = fpext float %161 to double, !dbg !1603
  %163 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1604
  %164 = load float* %163, align 4, !dbg !1604, !tbaa !962
  %165 = fpext float %164 to double, !dbg !1604
  %166 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %156, i8* getelementptr inbounds ([45 x i8]* @.str78, i64 0, i64 0), double %159, double %162, double %165) #8, !dbg !1605
  br label %193, !dbg !1606

; <label>:167                                     ; preds = %._crit_edge
  call void @llvm.dbg.value(metadata double* %x1, i64 0, metadata !618, metadata !692), !dbg !1514
  %168 = load double* %x1, align 8, !dbg !1607, !tbaa !850
  %169 = fptrunc double %168 to float, !dbg !1607
  %170 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1609
  store float %169, float* %170, align 4, !dbg !1610, !tbaa !962
  call void @llvm.dbg.value(metadata double* %y1, i64 0, metadata !619, metadata !692), !dbg !1515
  %171 = load double* %y1, align 8, !dbg !1611, !tbaa !850
  %172 = fptrunc double %171 to float, !dbg !1611
  %173 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1612
  store float %172, float* %173, align 4, !dbg !1613, !tbaa !962
  call void @llvm.dbg.value(metadata double* %z1, i64 0, metadata !620, metadata !692), !dbg !1516
  %174 = load double* %z1, align 8, !dbg !1614, !tbaa !850
  %175 = fptrunc double %174 to float, !dbg !1614
  %176 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1615
  store float %175, float* %176, align 4, !dbg !1616, !tbaa !962
  call void @llvm.dbg.value(metadata double* %x1, i64 0, metadata !618, metadata !692), !dbg !1514
  call void @llvm.dbg.value(metadata double* %y1, i64 0, metadata !619, metadata !692), !dbg !1515
  call void @llvm.dbg.value(metadata double* %z1, i64 0, metadata !620, metadata !692), !dbg !1516
  call void @llvm.dbg.value(metadata double* %x2, i64 0, metadata !621, metadata !692), !dbg !1617
  call void @llvm.dbg.value(metadata double* %y2, i64 0, metadata !622, metadata !692), !dbg !1618
  call void @llvm.dbg.value(metadata double* %z2, i64 0, metadata !623, metadata !692), !dbg !1619
  %177 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([28 x i8]* @.str79, i64 0, i64 0), double* %x1, double* %y1, double* %z1, double* %x2, double* %y2, double* %z2) #8, !dbg !1620
  %178 = icmp eq i32 %177, 6, !dbg !1622
  br i1 %178, label %._crit_edge39, label %179, !dbg !1623

._crit_edge39:                                    ; preds = %167
  %.pre = load double* %x1, align 8, !dbg !1624, !tbaa !850
  %.pre40 = load double* %y1, align 8, !dbg !1625, !tbaa !850
  %.pre41 = load double* %z1, align 8, !dbg !1626, !tbaa !850
  %.pre42 = load double* %x2, align 8, !dbg !1627, !tbaa !850
  %.pre43 = load double* %y2, align 8, !dbg !1628, !tbaa !850
  %.pre44 = load double* %z2, align 8, !dbg !1629, !tbaa !850
  %phitmp = fptrunc double %.pre to float, !dbg !1623
  %phitmp45 = fptrunc double %.pre40 to float, !dbg !1623
  %phitmp46 = fptrunc double %.pre41 to float, !dbg !1623
  %phitmp47 = fptrunc double %.pre42 to float, !dbg !1623
  %phitmp48 = fptrunc double %.pre43 to float, !dbg !1623
  %phitmp49 = fptrunc double %.pre44 to float, !dbg !1623
  br label %180, !dbg !1623

; <label>:179                                     ; preds = %167
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !623, metadata !692), !dbg !1619
  store double 0.000000e+00, double* %z2, align 8, !dbg !1630, !tbaa !850
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !622, metadata !692), !dbg !1618
  store double 0.000000e+00, double* %y2, align 8, !dbg !1631, !tbaa !850
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !621, metadata !692), !dbg !1617
  store double 0.000000e+00, double* %x2, align 8, !dbg !1632, !tbaa !850
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !620, metadata !692), !dbg !1516
  store double 0.000000e+00, double* %z1, align 8, !dbg !1633, !tbaa !850
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !619, metadata !692), !dbg !1515
  store double 0.000000e+00, double* %y1, align 8, !dbg !1634, !tbaa !850
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !618, metadata !692), !dbg !1514
  store double 0.000000e+00, double* %x1, align 8, !dbg !1635, !tbaa !850
  br label %180, !dbg !1636

; <label>:180                                     ; preds = %._crit_edge39, %179
  %181 = phi float [ %phitmp49, %._crit_edge39 ], [ 0.000000e+00, %179 ]
  %182 = phi float [ %phitmp48, %._crit_edge39 ], [ 0.000000e+00, %179 ]
  %183 = phi float [ %phitmp47, %._crit_edge39 ], [ 0.000000e+00, %179 ]
  %184 = phi float [ %phitmp46, %._crit_edge39 ], [ 0.000000e+00, %179 ]
  %185 = phi float [ %phitmp45, %._crit_edge39 ], [ 0.000000e+00, %179 ]
  %186 = phi float [ %phitmp, %._crit_edge39 ], [ 0.000000e+00, %179 ]
  call void @llvm.dbg.value(metadata double* %x1, i64 0, metadata !618, metadata !692), !dbg !1514
  %187 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1637
  store float %186, float* %187, align 4, !dbg !1638, !tbaa !962
  call void @llvm.dbg.value(metadata double* %y1, i64 0, metadata !619, metadata !692), !dbg !1515
  %188 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1639
  store float %185, float* %188, align 4, !dbg !1640, !tbaa !962
  call void @llvm.dbg.value(metadata double* %z1, i64 0, metadata !620, metadata !692), !dbg !1516
  %189 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1641
  store float %184, float* %189, align 4, !dbg !1642, !tbaa !962
  call void @llvm.dbg.value(metadata double* %x2, i64 0, metadata !621, metadata !692), !dbg !1617
  %190 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1643
  store float %183, float* %190, align 4, !dbg !1644, !tbaa !962
  call void @llvm.dbg.value(metadata double* %y2, i64 0, metadata !622, metadata !692), !dbg !1618
  %191 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1645
  store float %182, float* %191, align 4, !dbg !1646, !tbaa !962
  call void @llvm.dbg.value(metadata double* %z2, i64 0, metadata !623, metadata !692), !dbg !1619
  %192 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1647
  store float %181, float* %192, align 4, !dbg !1648, !tbaa !962
  br label %193

; <label>:193                                     ; preds = %180, %155
  %194 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !dbg !1649, !tbaa !739
  call void @close_symtab(%struct.t_symtab* %194) #8, !dbg !1650
  call void @llvm.lifetime.end(i64 256, i8* %2) #7, !dbg !1651
  call void @llvm.lifetime.end(i64 4097, i8* %1) #7, !dbg !1651
  ret i32 %bVel.0.lcssa, !dbg !1651
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gro_first_x_or_v(%struct.__sFILE* %status, %struct.t_trxframe* %fr) #4 {
  %title = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %status, i64 0, metadata !263, metadata !692), !dbg !1652
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !264, metadata !692), !dbg !1653
  %1 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0, !dbg !1654
  call void @llvm.lifetime.start(i64 4096, i8* %1) #7, !dbg !1654
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %title, metadata !265, metadata !692), !dbg !1655
  tail call void @frewind(%struct.__sFILE* %status) #8, !dbg !1656
  %2 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1657, !tbaa !739
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str31, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %2), !dbg !1658
  %4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1659
  call fastcc void @get_coordnum_fp(%struct.__sFILE* %status, i8* %1, i32* %4) #10, !dbg !1660
  call void @frewind(%struct.__sFILE* %status) #8, !dbg !1661
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1662, !tbaa !739
  %6 = load i32* %4, align 4, !dbg !1663, !tbaa !863
  %7 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([18 x i8]* @.str32, i64 0, i64 0), i8* %1, i32 %6) #8, !dbg !1664
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !1665
  store i32 1, i32* %8, align 4, !dbg !1666, !tbaa !758
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !1667
  store i8* %1, i8** %9, align 8, !dbg !1668, !tbaa !770
  %10 = load i32* %4, align 4, !dbg !1669, !tbaa !863
  %11 = icmp eq i32 %10, 0, !dbg !1671
  br i1 %11, label %12, label %13, !dbg !1672

; <label>:12                                      ; preds = %0
  call void (i32, i8*, ...)* @fatal_error(i32 1, i8* getelementptr inbounds ([28 x i8]* @.str33, i64 0, i64 0)) #8, !dbg !1673
  %.pre = load i32* %4, align 4, !dbg !1674, !tbaa !863
  br label %13, !dbg !1673

; <label>:13                                      ; preds = %12, %0
  %14 = phi i32 [ %.pre, %12 ], [ %10, %0 ]
  %15 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 627, i32 %14, i32 12) #8, !dbg !1674
  %16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1674
  %17 = bitcast [3 x float]** %16 to i8**, !dbg !1674
  store i8* %15, i8** %17, align 8, !dbg !1674, !tbaa !955
  %18 = load i32* %4, align 4, !dbg !1675, !tbaa !863
  %19 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 628, i32 %18, i32 12) #8, !dbg !1675
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1675
  %21 = bitcast [3 x float]** %20 to i8**, !dbg !1675
  store i8* %19, i8** %21, align 8, !dbg !1675, !tbaa !979
  %22 = call i32 @gro_next_x_or_v(%struct.__sFILE* %status, %struct.t_trxframe* %fr) #10, !dbg !1676
  %23 = load i32* %4, align 4, !dbg !1677, !tbaa !863
  call void @llvm.lifetime.end(i64 4096, i8* %1) #7, !dbg !1678
  ret i32 %23, !dbg !1678
}

; Function Attrs: optsize
declare void @frewind(%struct.__sFILE*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @get_coordnum_fp(%struct.__sFILE* %in, i8* %title, i32* %natoms) #4 {
  %line = alloca [4097 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %in, i64 0, metadata !641, metadata !692), !dbg !1679
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !642, metadata !692), !dbg !1680
  tail call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !643, metadata !692), !dbg !1681
  %1 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0, !dbg !1682
  call void @llvm.lifetime.start(i64 4097, i8* %1) #7, !dbg !1682
  tail call void @llvm.dbg.declare(metadata [4097 x i8]* %line, metadata !644, metadata !692), !dbg !1683
  %2 = tail call i8* @fgets2(i8* %title, i32 4096, %struct.__sFILE* %in) #8, !dbg !1684
  %3 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #8, !dbg !1685
  %4 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str70, i64 0, i64 0), i32* %natoms) #8, !dbg !1686
  call void @llvm.lifetime.end(i64 4097, i8* %1) #7, !dbg !1687
  ret void, !dbg !1687
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_hconf_indexed_p(%struct.__sFILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture readonly %atoms, i32 %nx, i32* nocapture readonly %index, i32 %pr, [3 x float]* nocapture readonly %x, [3 x float]* readonly %v, [3 x float]* nocapture readonly %box) #4 {
  %resnm = alloca [6 x i8], align 1
  %nm = alloca [6 x i8], align 1
  %format = alloca [100 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !271, metadata !692), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !272, metadata !692), !dbg !1689
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !273, metadata !692), !dbg !1690
  tail call void @llvm.dbg.value(metadata i32 %nx, i64 0, metadata !274, metadata !692), !dbg !1691
  tail call void @llvm.dbg.value(metadata i32* %index, i64 0, metadata !275, metadata !692), !dbg !1692
  tail call void @llvm.dbg.value(metadata i32 %pr, i64 0, metadata !276, metadata !692), !dbg !1693
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !277, metadata !692), !dbg !1694
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !278, metadata !692), !dbg !1695
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !279, metadata !692), !dbg !1696
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %resnm, metadata !280, metadata !692), !dbg !1697
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %nm, metadata !281, metadata !692), !dbg !1698
  %1 = getelementptr inbounds [100 x i8]* %format, i64 0, i64 0, !dbg !1699
  call void @llvm.lifetime.start(i64 100, i8* %1) #7, !dbg !1699
  tail call void @llvm.dbg.declare(metadata [100 x i8]* %format, metadata !282, metadata !692), !dbg !1700
  %2 = icmp eq i8* %title, null, !dbg !1701
  br i1 %2, label %6, label %3, !dbg !1702

; <label>:3                                       ; preds = %0
  %4 = load i8* %title, align 1, !dbg !1703, !tbaa !720
  %5 = icmp eq i8 %4, 0, !dbg !1703
  br i1 %5, label %6, label %8, !dbg !1704

; <label>:6                                       ; preds = %3, %0
  %7 = tail call i8* @bromacs() #8, !dbg !1705
  br label %8, !dbg !1704

; <label>:8                                       ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ %title, %3 ], !dbg !1704
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i8* %9) #8, !dbg !1706
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0), i32 %nx) #8, !dbg !1707
  %12 = icmp slt i32 %pr, 0, !dbg !1708
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !276, metadata !692), !dbg !1693
  %.pr = select i1 %12, i32 0, i32 %pr, !dbg !1710
  %13 = icmp sgt i32 %.pr, 30, !dbg !1711
  tail call void @llvm.dbg.value(metadata i32 30, i64 0, metadata !276, metadata !692), !dbg !1693
  %.1 = select i1 %13, i32 30, i32 %.pr, !dbg !1713
  %14 = add nsw i32 %.1, 5, !dbg !1714
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !289, metadata !692), !dbg !1715
  %15 = add nsw i32 %.1, 1, !dbg !1716
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !290, metadata !692), !dbg !1717
  %16 = icmp ne [3 x float]* %v, null, !dbg !1718
  br i1 %16, label %17, label %19, !dbg !1720

; <label>:17                                      ; preds = %8
  %18 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 100, i8* getelementptr inbounds ([50 x i8]* @.str38, i64 0, i64 0), i32 %14, i32 %.1, i32 %14, i32 %.1, i32 %14, i32 %.1, i32 %14, i32 %15, i32 %14, i32 %15, i32 %14, i32 %15) #8, !dbg !1721
  br label %.preheader, !dbg !1721

; <label>:19                                      ; preds = %8
  %20 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 100, i8* getelementptr inbounds ([26 x i8]* @.str39, i64 0, i64 0), i32 %14, i32 %.1, i32 %14, i32 %.1, i32 %14, i32 %.1) #8, !dbg !1722
  br label %.preheader

.preheader:                                       ; preds = %19, %17
  %21 = icmp sgt i32 %nx, 0, !dbg !1723
  br i1 %21, label %.lr.ph, label %._crit_edge, !dbg !1726

.lr.ph:                                           ; preds = %.preheader
  %22 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !1727
  %23 = getelementptr inbounds [6 x i8]* %resnm, i64 0, i64 0, !dbg !1729
  %24 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !1730
  %25 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !1732
  %26 = getelementptr inbounds [6 x i8]* %nm, i64 0, i64 0, !dbg !1733
  %27 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !1733
  %28 = add i32 %nx, -1, !dbg !1726
  br label %29, !dbg !1726

; <label>:29                                      ; preds = %83, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %83 ]
  %30 = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !1735
  %31 = load i32* %30, align 4, !dbg !1735, !tbaa !920
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !286, metadata !692), !dbg !1736
  %32 = sext i32 %31 to i64, !dbg !1737
  %33 = load %struct.t_atom** %22, align 8, !dbg !1727, !tbaa !949
  %34 = getelementptr inbounds %struct.t_atom* %33, i64 %32, i32 7, !dbg !1738
  %35 = load i32* %34, align 4, !dbg !1738, !tbaa !952
  call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !288, metadata !692), !dbg !1739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !1729
  %36 = load i32* %24, align 4, !dbg !1730, !tbaa !942
  %37 = icmp slt i32 %35, %36, !dbg !1740
  br i1 %37, label %38, label %45, !dbg !1741

; <label>:38                                      ; preds = %29
  %39 = sext i32 %35 to i64, !dbg !1732
  %40 = load i8**** %25, align 8, !dbg !1732, !tbaa !939
  %41 = getelementptr inbounds i8*** %40, i64 %39, !dbg !1732
  %42 = load i8*** %41, align 8, !dbg !1732, !tbaa !739
  %43 = load i8** %42, align 8, !dbg !1732, !tbaa !739
  %44 = call i8* @__strcpy_chk(i8* %23, i8* %43, i64 6) #8, !dbg !1732
  %.pre = load %struct.t_atom** %22, align 8, !dbg !1742, !tbaa !949
  br label %45, !dbg !1732

; <label>:45                                      ; preds = %38, %29
  %46 = phi %struct.t_atom* [ %.pre, %38 ], [ %33, %29 ]
  %47 = icmp eq %struct.t_atom* %46, null, !dbg !1743
  br i1 %47, label %54, label %48, !dbg !1744

; <label>:48                                      ; preds = %45
  %49 = load i8**** %27, align 8, !dbg !1733, !tbaa !925
  %50 = getelementptr inbounds i8*** %49, i64 %32, !dbg !1733
  %51 = load i8*** %50, align 8, !dbg !1733, !tbaa !739
  %52 = load i8** %51, align 8, !dbg !1733, !tbaa !739
  %53 = call i8* @__strcpy_chk(i8* %26, i8* %52, i64 6) #8, !dbg !1733
  br label %55, !dbg !1733

; <label>:54                                      ; preds = %45
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !1745
  br label %55

; <label>:55                                      ; preds = %54, %48
  %56 = add nsw i32 %35, 1, !dbg !1746
  %57 = srem i32 %56, 100000, !dbg !1747
  %58 = add nsw i32 %31, 1, !dbg !1748
  %59 = srem i32 %58, 100000, !dbg !1749
  %60 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str41, i64 0, i64 0), i32 %57, i8* %23, i8* %26, i32 %59) #8, !dbg !1750
  %61 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 0, !dbg !1751
  %62 = load float* %61, align 4, !dbg !1751, !tbaa !962
  %63 = fpext float %62 to double, !dbg !1751
  %64 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 1, !dbg !1753
  %65 = load float* %64, align 4, !dbg !1753, !tbaa !962
  %66 = fpext float %65 to double, !dbg !1753
  %67 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 2, !dbg !1754
  %68 = load float* %67, align 4, !dbg !1754, !tbaa !962
  %69 = fpext float %68 to double, !dbg !1754
  br i1 %16, label %70, label %81, !dbg !1755

; <label>:70                                      ; preds = %55
  %71 = getelementptr inbounds [3 x float]* %v, i64 %32, i64 0, !dbg !1756
  %72 = load float* %71, align 4, !dbg !1756, !tbaa !962
  %73 = fpext float %72 to double, !dbg !1756
  %74 = getelementptr inbounds [3 x float]* %v, i64 %32, i64 1, !dbg !1757
  %75 = load float* %74, align 4, !dbg !1757, !tbaa !962
  %76 = fpext float %75 to double, !dbg !1757
  %77 = getelementptr inbounds [3 x float]* %v, i64 %32, i64 2, !dbg !1758
  %78 = load float* %77, align 4, !dbg !1758, !tbaa !962
  %79 = fpext float %78 to double, !dbg !1758
  %80 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* %1, double %63, double %66, double %69, double %73, double %76, double %79) #8, !dbg !1759
  br label %83, !dbg !1759

; <label>:81                                      ; preds = %55
  %82 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* %1, double %63, double %66, double %69) #8, !dbg !1760
  br label %83

; <label>:83                                      ; preds = %70, %81
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1726
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !1726
  %exitcond = icmp eq i32 %lftr.wideiv, %28, !dbg !1726
  br i1 %exitcond, label %._crit_edge, label %29, !dbg !1726

._crit_edge:                                      ; preds = %83, %.preheader
  %84 = icmp slt i32 %.1, 5, !dbg !1761
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !276, metadata !692), !dbg !1693
  %..1 = select i1 %84, i32 5, i32 %.1, !dbg !1763
  %85 = add nsw i32 %..1, 5, !dbg !1764
  call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !289, metadata !692), !dbg !1715
  %86 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1765
  %87 = load float* %86, align 4, !dbg !1765, !tbaa !962
  %fabsf = call float @fabsf(float %87) #9, !dbg !1767
  %88 = fpext float %fabsf to double, !dbg !1767
  %89 = fcmp ogt double %88, 1.200000e-38, !dbg !1768
  %.pre8 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1769
  br i1 %89, label %._crit_edge7, label %90, !dbg !1771

; <label>:90                                      ; preds = %._crit_edge
  %91 = load float* %.pre8, align 4, !dbg !1772, !tbaa !962
  %fabsf1 = call float @fabsf(float %91) #9, !dbg !1773
  %92 = fpext float %fabsf1 to double, !dbg !1773
  %93 = fcmp ogt double %92, 1.200000e-38, !dbg !1774
  br i1 %93, label %._crit_edge7, label %94, !dbg !1775

; <label>:94                                      ; preds = %90
  %95 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1776
  %96 = load float* %95, align 4, !dbg !1776, !tbaa !962
  %fabsf2 = call float @fabsf(float %96) #9, !dbg !1777
  %97 = fpext float %fabsf2 to double, !dbg !1777
  %98 = fcmp ogt double %97, 1.200000e-38, !dbg !1778
  br i1 %98, label %._crit_edge7, label %99, !dbg !1779

; <label>:99                                      ; preds = %94
  %100 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1780
  %101 = load float* %100, align 4, !dbg !1780, !tbaa !962
  %fabsf3 = call float @fabsf(float %101) #9, !dbg !1781
  %102 = fpext float %fabsf3 to double, !dbg !1781
  %103 = fcmp ogt double %102, 1.200000e-38, !dbg !1782
  br i1 %103, label %._crit_edge7, label %104, !dbg !1783

; <label>:104                                     ; preds = %99
  %105 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1784
  %106 = load float* %105, align 4, !dbg !1784, !tbaa !962
  %fabsf4 = call float @fabsf(float %106) #9, !dbg !1785
  %107 = fpext float %fabsf4 to double, !dbg !1785
  %108 = fcmp ogt double %107, 1.200000e-38, !dbg !1786
  br i1 %108, label %._crit_edge7, label %109, !dbg !1787

; <label>:109                                     ; preds = %104
  %110 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1788
  %111 = load float* %110, align 4, !dbg !1788, !tbaa !962
  %fabsf5 = call float @fabsf(float %111) #9, !dbg !1789
  %112 = fpext float %fabsf5 to double, !dbg !1789
  %113 = fcmp ogt double %112, 1.200000e-38, !dbg !1790
  br i1 %113, label %._crit_edge7, label %141, !dbg !1791

._crit_edge7:                                     ; preds = %._crit_edge, %109, %104, %99, %94, %90
  %114 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 100, i8* getelementptr inbounds ([74 x i8]* @.str42, i64 0, i64 0), i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1) #8, !dbg !1792
  %115 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1793
  %116 = load float* %115, align 4, !dbg !1793, !tbaa !962
  %117 = fpext float %116 to double, !dbg !1793
  %118 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1794
  %119 = load float* %118, align 4, !dbg !1794, !tbaa !962
  %120 = fpext float %119 to double, !dbg !1794
  %121 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1795
  %122 = load float* %121, align 4, !dbg !1795, !tbaa !962
  %123 = fpext float %122 to double, !dbg !1795
  %124 = load float* %86, align 4, !dbg !1796, !tbaa !962
  %125 = fpext float %124 to double, !dbg !1796
  %126 = load float* %.pre8, align 4, !dbg !1769, !tbaa !962
  %127 = fpext float %126 to double, !dbg !1769
  %128 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1797
  %129 = load float* %128, align 4, !dbg !1797, !tbaa !962
  %130 = fpext float %129 to double, !dbg !1797
  %131 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1798
  %132 = load float* %131, align 4, !dbg !1798, !tbaa !962
  %133 = fpext float %132 to double, !dbg !1798
  %134 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1799
  %135 = load float* %134, align 4, !dbg !1799, !tbaa !962
  %136 = fpext float %135 to double, !dbg !1799
  %137 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1800
  %138 = load float* %137, align 4, !dbg !1800, !tbaa !962
  %139 = fpext float %138 to double, !dbg !1800
  %140 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* %1, double %117, double %120, double %123, double %125, double %127, double %130, double %133, double %136, double %139) #8, !dbg !1801
  br label %153, !dbg !1802

; <label>:141                                     ; preds = %109
  %142 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 100, i8* getelementptr inbounds ([26 x i8]* @.str39, i64 0, i64 0), i32 %85, i32 %..1, i32 %85, i32 %..1, i32 %85, i32 %..1) #8, !dbg !1803
  %143 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1805
  %144 = load float* %143, align 4, !dbg !1805, !tbaa !962
  %145 = fpext float %144 to double, !dbg !1805
  %146 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1806
  %147 = load float* %146, align 4, !dbg !1806, !tbaa !962
  %148 = fpext float %147 to double, !dbg !1806
  %149 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1807
  %150 = load float* %149, align 4, !dbg !1807, !tbaa !962
  %151 = fpext float %150 to double, !dbg !1807
  %152 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* %1, double %145, double %148, double %151) #8, !dbg !1808
  br label %153

; <label>:153                                     ; preds = %141, %._crit_edge7
  %154 = call i32 @fflush(%struct.__sFILE* %out) #8, !dbg !1809
  call void @llvm.lifetime.end(i64 100, i8* %1) #7, !dbg !1810
  ret void, !dbg !1810
}

; Function Attrs: optsize
declare i8* @bromacs() #2

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #5

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @write_hconf_p(%struct.__sFILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture readonly %atoms, i32 %pr, [3 x float]* nocapture readonly %x, [3 x float]* readonly %v, [3 x float]* nocapture readonly %box) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !295, metadata !692), !dbg !1811
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !296, metadata !692), !dbg !1812
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !297, metadata !692), !dbg !1813
  tail call void @llvm.dbg.value(metadata i32 %pr, i64 0, metadata !298, metadata !692), !dbg !1814
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !299, metadata !692), !dbg !1815
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !300, metadata !692), !dbg !1816
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !301, metadata !692), !dbg !1817
  %1 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1818
  %2 = load i32* %1, align 4, !dbg !1818, !tbaa !933
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 712, i32 %2, i32 4) #8, !dbg !1818
  %4 = bitcast i8* %3 to i32*, !dbg !1818
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !302, metadata !692), !dbg !1819
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !303, metadata !692), !dbg !1820
  %5 = load i32* %1, align 4, !dbg !1821, !tbaa !933
  %6 = icmp sgt i32 %5, 0, !dbg !1824
  br i1 %6, label %.lr.ph, label %._crit_edge, !dbg !1825

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %7 = getelementptr inbounds i32* %4, i64 %indvars.iv, !dbg !1826
  %8 = trunc i64 %indvars.iv to i32, !dbg !1827
  store i32 %8, i32* %7, align 4, !dbg !1827, !tbaa !920
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1825
  %9 = load i32* %1, align 4, !dbg !1821, !tbaa !933
  %10 = sext i32 %9 to i64, !dbg !1824
  %11 = icmp slt i64 %indvars.iv.next, %10, !dbg !1824
  br i1 %11, label %.lr.ph, label %._crit_edge, !dbg !1825

._crit_edge:                                      ; preds = %.lr.ph, %0
  %.lcssa = phi i32 [ %5, %0 ], [ %9, %.lr.ph ]
  tail call void @write_hconf_indexed_p(%struct.__sFILE* %out, i8* %title, %struct.t_atoms* %atoms, i32 %.lcssa, i32* %4, i32 %pr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #10, !dbg !1828
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 716, i8* %3) #8, !dbg !1829
  ret void, !dbg !1830
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_conf_p(i8* %outfile, i8* %title, %struct.t_atoms* nocapture readonly %atoms, i32 %pr, [3 x float]* nocapture readonly %x, [3 x float]* readonly %v, [3 x float]* nocapture readonly %box) #4 {
  tail call void @llvm.dbg.value(metadata i8* %outfile, i64 0, metadata !308, metadata !692), !dbg !1831
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !309, metadata !692), !dbg !1832
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !310, metadata !692), !dbg !1833
  tail call void @llvm.dbg.value(metadata i32 %pr, i64 0, metadata !311, metadata !692), !dbg !1834
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !312, metadata !692), !dbg !1835
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !313, metadata !692), !dbg !1836
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !314, metadata !692), !dbg !1837
  %1 = tail call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8, !dbg !1838
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %1, i64 0, metadata !315, metadata !692), !dbg !1839
  tail call void @write_hconf_p(%struct.__sFILE* %1, i8* %title, %struct.t_atoms* %atoms, i32 %pr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #10, !dbg !1840
  tail call void @ffclose(%struct.__sFILE* %1) #8, !dbg !1841
  ret void, !dbg !1842
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #2

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @write_sto_conf_indexed(i8* %outfile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box, i32 %nindex, i32* %index) #4 {
  %fr = alloca %struct.t_trxframe, align 8
  tail call void @llvm.dbg.value(metadata i8* %outfile, i64 0, metadata !320, metadata !692), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !321, metadata !692), !dbg !1844
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !322, metadata !692), !dbg !1845
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !323, metadata !692), !dbg !1846
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !324, metadata !692), !dbg !1847
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !325, metadata !692), !dbg !1848
  tail call void @llvm.dbg.value(metadata i32 %nindex, i64 0, metadata !326, metadata !692), !dbg !1849
  tail call void @llvm.dbg.value(metadata i32* %index, i64 0, metadata !327, metadata !692), !dbg !1850
  %1 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !1851
  call void @llvm.lifetime.start(i64 176, i8* %1) #7, !dbg !1851
  %2 = tail call i32 @fn2ftp(i8* %outfile) #8, !dbg !1852
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !329, metadata !692), !dbg !1853
  switch i32 %2, label %39 [
    i32 13, label %3
    i32 14, label %5
    i32 15, label %36
    i32 16, label %36
    i32 17, label %36
    i32 26, label %38
    i32 28, label %38
    i32 27, label %38
  ], !dbg !1854

; <label>:3                                       ; preds = %0
  %4 = tail call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8, !dbg !1855
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %4, i64 0, metadata !328, metadata !692), !dbg !1857
  tail call void @write_hconf_indexed_p(%struct.__sFILE* %4, i8* %title, %struct.t_atoms* %atoms, i32 %nindex, i32* %index, i32 3, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #10, !dbg !1858
  tail call void @ffclose(%struct.__sFILE* %4) #8, !dbg !1859
  br label %40, !dbg !1860

; <label>:5                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !330, metadata !692), !dbg !1861
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #8, !dbg !1862
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !1863
  store i32 1, i32* %6, align 8, !dbg !1864, !tbaa !758
  %7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !1865
  store i8* %title, i8** %7, align 8, !dbg !1866, !tbaa !770
  %8 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1867
  %9 = load i32* %8, align 4, !dbg !1867, !tbaa !933
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1868
  store i32 %9, i32* %10, align 8, !dbg !1869, !tbaa !863
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !1870
  store i32 1, i32* %11, align 8, !dbg !1871, !tbaa !860
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !1872
  store %struct.t_atoms* %atoms, %struct.t_atoms** %12, align 8, !dbg !1873, !tbaa !865
  %13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1874
  store i32 1, i32* %13, align 8, !dbg !1875, !tbaa !835
  %14 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1876
  store [3 x float]* %x, [3 x float]** %14, align 8, !dbg !1877, !tbaa !955
  %15 = icmp eq [3 x float]* %v, null, !dbg !1878
  br i1 %15, label %19, label %16, !dbg !1880

; <label>:16                                      ; preds = %5
  %17 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1881
  store i32 1, i32* %17, align 8, !dbg !1883, !tbaa !983
  %18 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1884
  store [3 x float]* %v, [3 x float]** %18, align 8, !dbg !1885, !tbaa !979
  br label %19, !dbg !1886

; <label>:19                                      ; preds = %5, %16
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1887
  store i32 1, i32* %20, align 8, !dbg !1888, !tbaa !1050
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1889
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !649, metadata !692), !dbg !1890
  tail call void @llvm.dbg.value(metadata [3 x float]* %21, i64 0, metadata !650, metadata !692), !dbg !1892
  %22 = bitcast [3 x float]* %box to <4 x i32>*, !dbg !1893
  %23 = load <4 x i32>* %22, align 4, !dbg !1893, !tbaa !962
  %24 = bitcast [3 x float]* %21 to <4 x i32>*, !dbg !1895
  store <4 x i32> %23, <4 x i32>* %24, align 4, !dbg !1895, !tbaa !962
  %25 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1896
  %26 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !1898
  %27 = bitcast float* %25 to <4 x i32>*, !dbg !1896
  %28 = load <4 x i32>* %27, align 4, !dbg !1896, !tbaa !962
  %29 = bitcast float* %26 to <4 x i32>*, !dbg !1899
  store <4 x i32> %28, <4 x i32>* %29, align 4, !dbg !1899, !tbaa !962
  %30 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1900
  %31 = bitcast float* %30 to i32*, !dbg !1900
  %32 = load i32* %31, align 4, !dbg !1900, !tbaa !962
  %33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !1902
  %34 = bitcast float* %33 to i32*, !dbg !1903
  store i32 %32, i32* %34, align 4, !dbg !1903, !tbaa !962
  %35 = call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8, !dbg !1904
  call void @llvm.dbg.value(metadata %struct.__sFILE* %35, i64 0, metadata !328, metadata !692), !dbg !1857
  call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !330, metadata !692), !dbg !1861
  call void @write_g96_conf(%struct.__sFILE* %35, %struct.t_trxframe* %fr, i32 %nindex, i32* %index) #10, !dbg !1905
  call void @ffclose(%struct.__sFILE* %35) #8, !dbg !1906
  br label %40, !dbg !1907

; <label>:36                                      ; preds = %0, %0, %0
  %37 = tail call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8, !dbg !1908
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %37, i64 0, metadata !328, metadata !692), !dbg !1857
  tail call void @write_pdbfile_indexed(%struct.__sFILE* %37, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i8 signext 0, i32 -1, i32 %nindex, i32* %index) #8, !dbg !1909
  tail call void @ffclose(%struct.__sFILE* %37) #8, !dbg !1910
  br label %40, !dbg !1911

; <label>:38                                      ; preds = %0, %0, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str45, i64 0, i64 0), i8* %outfile) #8, !dbg !1912
  br label %40, !dbg !1913

; <label>:39                                      ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str46, i64 0, i64 0), i8* %outfile) #8, !dbg !1914
  br label %40, !dbg !1915

; <label>:40                                      ; preds = %39, %38, %36, %19, %3
  call void @llvm.lifetime.end(i64 176, i8* %1) #7, !dbg !1916
  ret void, !dbg !1916
}

; Function Attrs: optsize
declare i32 @fn2ftp(i8*) #2

; Function Attrs: optsize
declare void @write_pdbfile_indexed(%struct.__sFILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32, i32, i32*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @write_sto_conf(i8* %outfile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #4 {
  %fr = alloca %struct.t_trxframe, align 8
  tail call void @llvm.dbg.value(metadata i8* %outfile, i64 0, metadata !335, metadata !692), !dbg !1917
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !336, metadata !692), !dbg !1918
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !337, metadata !692), !dbg !1919
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !338, metadata !692), !dbg !1920
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !339, metadata !692), !dbg !1921
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !340, metadata !692), !dbg !1922
  %1 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !1923
  call void @llvm.lifetime.start(i64 176, i8* %1) #7, !dbg !1923
  %2 = tail call i32 @fn2ftp(i8* %outfile) #8, !dbg !1924
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !342, metadata !692), !dbg !1925
  switch i32 %2, label %39 [
    i32 13, label %3
    i32 14, label %5
    i32 15, label %36
    i32 16, label %36
    i32 17, label %36
    i32 26, label %38
    i32 28, label %38
    i32 27, label %38
  ], !dbg !1926

; <label>:3                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i8* %outfile, i64 0, metadata !661, metadata !692) #7, !dbg !1927
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !662, metadata !692) #7, !dbg !1930
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !663, metadata !692) #7, !dbg !1931
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !664, metadata !692) #7, !dbg !1932
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !665, metadata !692) #7, !dbg !1933
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !666, metadata !692) #7, !dbg !1934
  tail call void @llvm.dbg.value(metadata i8* %outfile, i64 0, metadata !308, metadata !692) #7, !dbg !1935
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !309, metadata !692) #7, !dbg !1937
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !310, metadata !692) #7, !dbg !1938
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !311, metadata !692) #7, !dbg !1939
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !312, metadata !692) #7, !dbg !1940
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !313, metadata !692) #7, !dbg !1941
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !314, metadata !692) #7, !dbg !1942
  %4 = tail call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8, !dbg !1943
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %4, i64 0, metadata !315, metadata !692) #7, !dbg !1944
  tail call void @write_hconf_p(%struct.__sFILE* %4, i8* %title, %struct.t_atoms* %atoms, i32 3, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #8, !dbg !1945
  tail call void @ffclose(%struct.__sFILE* %4) #8, !dbg !1946
  br label %40, !dbg !1947

; <label>:5                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !343, metadata !692), !dbg !1948
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #8, !dbg !1949
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !1950
  store i32 1, i32* %6, align 8, !dbg !1951, !tbaa !758
  %7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !1952
  store i8* %title, i8** %7, align 8, !dbg !1953, !tbaa !770
  %8 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1954
  %9 = load i32* %8, align 4, !dbg !1954, !tbaa !933
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1955
  store i32 %9, i32* %10, align 8, !dbg !1956, !tbaa !863
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !1957
  store i32 1, i32* %11, align 8, !dbg !1958, !tbaa !860
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !1959
  store %struct.t_atoms* %atoms, %struct.t_atoms** %12, align 8, !dbg !1960, !tbaa !865
  %13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1961
  store i32 1, i32* %13, align 8, !dbg !1962, !tbaa !835
  %14 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1963
  store [3 x float]* %x, [3 x float]** %14, align 8, !dbg !1964, !tbaa !955
  %15 = icmp eq [3 x float]* %v, null, !dbg !1965
  br i1 %15, label %19, label %16, !dbg !1967

; <label>:16                                      ; preds = %5
  %17 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1968
  store i32 1, i32* %17, align 8, !dbg !1970, !tbaa !983
  %18 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1971
  store [3 x float]* %v, [3 x float]** %18, align 8, !dbg !1972, !tbaa !979
  br label %19, !dbg !1973

; <label>:19                                      ; preds = %5, %16
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1974
  store i32 1, i32* %20, align 8, !dbg !1975, !tbaa !1050
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1976
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !649, metadata !692), !dbg !1977
  tail call void @llvm.dbg.value(metadata [3 x float]* %21, i64 0, metadata !650, metadata !692), !dbg !1979
  %22 = bitcast [3 x float]* %box to <4 x i32>*, !dbg !1980
  %23 = load <4 x i32>* %22, align 4, !dbg !1980, !tbaa !962
  %24 = bitcast [3 x float]* %21 to <4 x i32>*, !dbg !1982
  store <4 x i32> %23, <4 x i32>* %24, align 4, !dbg !1982, !tbaa !962
  %25 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1983
  %26 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !1985
  %27 = bitcast float* %25 to <4 x i32>*, !dbg !1983
  %28 = load <4 x i32>* %27, align 4, !dbg !1983, !tbaa !962
  %29 = bitcast float* %26 to <4 x i32>*, !dbg !1986
  store <4 x i32> %28, <4 x i32>* %29, align 4, !dbg !1986, !tbaa !962
  %30 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1987
  %31 = bitcast float* %30 to i32*, !dbg !1987
  %32 = load i32* %31, align 4, !dbg !1987, !tbaa !962
  %33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !1989
  %34 = bitcast float* %33 to i32*, !dbg !1990
  store i32 %32, i32* %34, align 4, !dbg !1990, !tbaa !962
  %35 = call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8, !dbg !1991
  call void @llvm.dbg.value(metadata %struct.__sFILE* %35, i64 0, metadata !341, metadata !692), !dbg !1992
  call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !343, metadata !692), !dbg !1948
  call void @write_g96_conf(%struct.__sFILE* %35, %struct.t_trxframe* %fr, i32 -1, i32* null) #10, !dbg !1993
  call void @ffclose(%struct.__sFILE* %35) #8, !dbg !1994
  br label %40, !dbg !1995

; <label>:36                                      ; preds = %0, %0, %0
  %37 = tail call %struct.__sFILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #8, !dbg !1996
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %37, i64 0, metadata !341, metadata !692), !dbg !1992
  tail call void @write_pdbfile(%struct.__sFILE* %37, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i8 signext 0, i32 0) #8, !dbg !1997
  tail call void @ffclose(%struct.__sFILE* %37) #8, !dbg !1998
  br label %40, !dbg !1999

; <label>:38                                      ; preds = %0, %0, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str45, i64 0, i64 0), i8* %outfile) #8, !dbg !2000
  br label %40, !dbg !2001

; <label>:39                                      ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str47, i64 0, i64 0), i8* %outfile) #8, !dbg !2002
  br label %40, !dbg !2003

; <label>:40                                      ; preds = %39, %38, %36, %19, %3
  call void @llvm.lifetime.end(i64 176, i8* %1) #7, !dbg !2004
  ret void, !dbg !2004
}

; Function Attrs: optsize
declare void @write_pdbfile(%struct.__sFILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @get_stx_coordnum(i8* %infile, i32* %natoms) #4 {
  %title.i = alloca [4096 x i8], align 16
  %fr = alloca %struct.t_trxframe, align 8
  %tpx = alloca %struct.t_tpxheader, align 4
  tail call void @llvm.dbg.value(metadata i8* %infile, i64 0, metadata !348, metadata !692), !dbg !2005
  tail call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !349, metadata !692), !dbg !2006
  %1 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !2007
  call void @llvm.lifetime.start(i64 176, i8* %1) #7, !dbg !2007
  %2 = tail call i32 @fn2ftp(i8* %infile) #8, !dbg !2008
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !351, metadata !692), !dbg !2009
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %title.i, metadata !672, metadata !692), !dbg !2010
  switch i32 %2, label %21 [
    i32 13, label %3
    i32 14, label %6
    i32 15, label %15
    i32 16, label %15
    i32 17, label %15
    i32 27, label %17
    i32 28, label %17
    i32 26, label %17
  ], !dbg !2012

; <label>:3                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i8* %infile, i64 0, metadata !669, metadata !692) #7, !dbg !2013
  tail call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !670, metadata !692) #7, !dbg !2014
  %4 = getelementptr inbounds [4096 x i8]* %title.i, i64 0, i64 0, !dbg !2015
  call void @llvm.lifetime.start(i64 4096, i8* %4) #7, !dbg !2015
  %5 = tail call %struct.__sFILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8, !dbg !2016
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %5, i64 0, metadata !671, metadata !692) #7, !dbg !2017
  call fastcc void @get_coordnum_fp(%struct.__sFILE* %5, i8* %4, i32* %natoms) #8, !dbg !2018
  call void @ffclose(%struct.__sFILE* %5) #8, !dbg !2019
  call void @llvm.lifetime.end(i64 4096, i8* %4) #7, !dbg !2020
  br label %22, !dbg !2021

; <label>:6                                       ; preds = %0
  %7 = tail call %struct.__sFILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8, !dbg !2022
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %7, i64 0, metadata !350, metadata !692), !dbg !2023
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !2024
  store i8* null, i8** %8, align 8, !dbg !2025, !tbaa !770
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !2026
  store i32 -1, i32* %9, align 8, !dbg !2027, !tbaa !863
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !2028
  store %struct.t_atoms* null, %struct.t_atoms** %10, align 8, !dbg !2029, !tbaa !865
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !2030
  store [3 x float]* null, [3 x float]** %11, align 8, !dbg !2031, !tbaa !955
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !2032
  store [3 x float]* null, [3 x float]** %12, align 8, !dbg !2033, !tbaa !979
  %13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23, !dbg !2034
  store [3 x float]* null, [3 x float]** %13, align 8, !dbg !2035, !tbaa !2036
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !352, metadata !692), !dbg !2037
  %14 = call i32 @read_g96_conf(%struct.__sFILE* %7, i8* %infile, %struct.t_trxframe* %fr) #10, !dbg !2038
  store i32 %14, i32* %natoms, align 4, !dbg !2039, !tbaa !920
  call void @ffclose(%struct.__sFILE* %7) #8, !dbg !2040
  br label %22, !dbg !2041

; <label>:15                                      ; preds = %0, %0, %0
  %16 = tail call %struct.__sFILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8, !dbg !2042
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %16, i64 0, metadata !350, metadata !692), !dbg !2023
  tail call void @get_pdb_coordnum(%struct.__sFILE* %16, i32* %natoms) #8, !dbg !2043
  tail call void @ffclose(%struct.__sFILE* %16) #8, !dbg !2044
  br label %22, !dbg !2045

; <label>:17                                      ; preds = %0, %0, %0
  %18 = bitcast %struct.t_tpxheader* %tpx to i8*, !dbg !2046
  call void @llvm.lifetime.start(i64 40, i8* %18) #7, !dbg !2046
  tail call void @llvm.dbg.value(metadata %struct.t_tpxheader* %tpx, i64 0, metadata !353, metadata !692), !dbg !2047
  call void @read_tpxheader(i8* %infile, %struct.t_tpxheader* %tpx) #8, !dbg !2048
  %19 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6, !dbg !2049
  %20 = load i32* %19, align 4, !dbg !2049, !tbaa !2050
  store i32 %20, i32* %natoms, align 4, !dbg !2052, !tbaa !920
  call void @llvm.lifetime.end(i64 40, i8* %18) #7, !dbg !2053
  br label %22

; <label>:21                                      ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str49, i64 0, i64 0), i8* %infile) #8, !dbg !2054
  br label %22, !dbg !2055

; <label>:22                                      ; preds = %21, %17, %15, %6, %3
  call void @llvm.lifetime.end(i64 176, i8* %1) #7, !dbg !2056
  ret void, !dbg !2056
}

; Function Attrs: optsize
declare void @get_pdb_coordnum(%struct.__sFILE*, i32*) #2

; Function Attrs: optsize
declare void @read_tpxheader(i8*, %struct.t_tpxheader*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @read_stx_conf(i8* %infile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #4 {
  %ndec.i = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %fr = alloca %struct.t_trxframe, align 8
  %natoms = alloca i32, align 4
  %i1 = alloca i32, align 4
  %r1 = alloca float, align 4
  %r2 = alloca float, align 4
  tail call void @llvm.dbg.value(metadata i8* %infile, i64 0, metadata !372, metadata !692), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !373, metadata !692), !dbg !2058
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !374, metadata !692), !dbg !2059
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !375, metadata !692), !dbg !2060
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !376, metadata !692), !dbg !2061
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !377, metadata !692), !dbg !2062
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !2063
  call void @llvm.lifetime.start(i64 256, i8* %1) #7, !dbg !2063
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !379, metadata !692), !dbg !2064
  %2 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !2065
  call void @llvm.lifetime.start(i64 176, i8* %2) #7, !dbg !2065
  %3 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !2066
  %4 = load i32* %3, align 4, !dbg !2066, !tbaa !933
  %5 = icmp eq i32 %4, 0, !dbg !2068
  br i1 %5, label %6, label %9, !dbg !2069

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !2070, !tbaa !739
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([37 x i8]* @.str50, i64 0, i64 0), i8* %infile) #8, !dbg !2071
  br label %15, !dbg !2071

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !2072
  %11 = load %struct.t_atom** %10, align 8, !dbg !2072, !tbaa !949
  %12 = icmp eq %struct.t_atom* %11, null, !dbg !2074
  br i1 %12, label %13, label %15, !dbg !2075

; <label>:13                                      ; preds = %9
  %14 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([35 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 890) #8, !dbg !2076
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* %1) #8, !dbg !2078
  br label %15, !dbg !2079

; <label>:15                                      ; preds = %9, %13, %6
  %16 = call i32 @fn2ftp(i8* %infile) #8, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !541, metadata !692), !dbg !2081
  switch i32 %16, label %174 [
    i32 13, label %17
    i32 14, label %21
    i32 15, label %45
    i32 16, label %45
    i32 17, label %45
    i32 26, label %46
    i32 28, label %46
    i32 27, label %46
  ], !dbg !2082

; <label>:17                                      ; preds = %15
  %18 = bitcast i32* %ndec.i to i8*, !dbg !2083
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !2083
  call void @llvm.dbg.value(metadata i8* %infile, i64 0, metadata !675, metadata !692) #7, !dbg !2083
  call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !676, metadata !692) #7, !dbg !2086
  call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !677, metadata !692) #7, !dbg !2087
  call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !678, metadata !692) #7, !dbg !2088
  call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !679, metadata !692) #7, !dbg !2089
  call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !680, metadata !692) #7, !dbg !2090
  %19 = call %struct.__sFILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8, !dbg !2091
  call void @llvm.dbg.value(metadata %struct.__sFILE* %19, i64 0, metadata !681, metadata !692) #7, !dbg !2092
  call void @llvm.dbg.value(metadata i32* %ndec.i, i64 0, metadata !682, metadata !692) #7, !dbg !2093
  %20 = call fastcc i32 @get_w_conf(%struct.__sFILE* %19, i8* %infile, i8* %title, %struct.t_atoms* %atoms, i32* %ndec.i, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #8, !dbg !2094
  call void @ffclose(%struct.__sFILE* %19) #8, !dbg !2095
  call void @llvm.lifetime.end(i64 4, i8* %18), !dbg !2096
  br label %.loopexit, !dbg !2097

; <label>:21                                      ; preds = %15
  %22 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !2098
  store i8* %title, i8** %22, align 8, !dbg !2099, !tbaa !770
  %23 = load i32* %3, align 4, !dbg !2100, !tbaa !933
  %24 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !2101
  store i32 %23, i32* %24, align 8, !dbg !2102, !tbaa !863
  %25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !2103
  store %struct.t_atoms* %atoms, %struct.t_atoms** %25, align 8, !dbg !2104, !tbaa !865
  %26 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !2105
  store [3 x float]* %x, [3 x float]** %26, align 8, !dbg !2106, !tbaa !955
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !2107
  store [3 x float]* %v, [3 x float]** %27, align 8, !dbg !2108, !tbaa !979
  %28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23, !dbg !2109
  store [3 x float]* null, [3 x float]** %28, align 8, !dbg !2110, !tbaa !2036
  %29 = call %struct.__sFILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #8, !dbg !2111
  call void @llvm.dbg.value(metadata %struct.__sFILE* %29, i64 0, metadata !378, metadata !692), !dbg !2112
  call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !539, metadata !692), !dbg !2113
  %30 = call i32 @read_g96_conf(%struct.__sFILE* %29, i8* %infile, %struct.t_trxframe* %fr) #10, !dbg !2114
  call void @ffclose(%struct.__sFILE* %29) #8, !dbg !2115
  %31 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !2116
  tail call void @llvm.dbg.value(metadata [3 x float]* %31, i64 0, metadata !649, metadata !692), !dbg !2117
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !650, metadata !692), !dbg !2119
  %32 = bitcast [3 x float]* %31 to <4 x i32>*, !dbg !2120
  %33 = load <4 x i32>* %32, align 4, !dbg !2120, !tbaa !962
  %34 = bitcast [3 x float]* %box to <4 x i32>*, !dbg !2122
  store <4 x i32> %33, <4 x i32>* %34, align 4, !dbg !2122, !tbaa !962
  %35 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !2123
  %36 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !2125
  %37 = bitcast float* %35 to <4 x i32>*, !dbg !2123
  %38 = load <4 x i32>* %37, align 4, !dbg !2123, !tbaa !962
  %39 = bitcast float* %36 to <4 x i32>*, !dbg !2126
  store <4 x i32> %38, <4 x i32>* %39, align 4, !dbg !2126, !tbaa !962
  %40 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !2127
  %41 = bitcast float* %40 to i32*, !dbg !2127
  %42 = load i32* %41, align 4, !dbg !2127, !tbaa !962
  %43 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !2129
  %44 = bitcast float* %43 to i32*, !dbg !2130
  store i32 %42, i32* %44, align 4, !dbg !2130, !tbaa !962
  br label %.loopexit, !dbg !2131

; <label>:45                                      ; preds = %15, %15, %15
  call void @read_pdb_conf(i8* %infile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i32 1) #8, !dbg !2132
  br label %.loopexit, !dbg !2133

; <label>:46                                      ; preds = %15, %15, %15
  %47 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 918, i32 1, i32 50264) #8, !dbg !2134
  %48 = bitcast i8* %47 to %struct.t_topology*, !dbg !2134
  call void @llvm.dbg.value(metadata %struct.t_topology* %48, i64 0, metadata !381, metadata !692), !dbg !2135
  call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !542, metadata !692), !dbg !2136
  call void @llvm.dbg.value(metadata i32* %i1, i64 0, metadata !543, metadata !692), !dbg !2137
  call void @llvm.dbg.value(metadata float* %r1, i64 0, metadata !545, metadata !692), !dbg !2138
  call void @llvm.dbg.value(metadata float* %r2, i64 0, metadata !546, metadata !692), !dbg !2139
  call void @read_tpx(i8* %infile, i32* %i1, float* %r1, float* %r2, %struct.t_inputrec* null, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* null, %struct.t_topology* %48) #8, !dbg !2140
  %49 = bitcast i8* %47 to i8***, !dbg !2141
  %50 = load i8*** %49, align 8, !dbg !2141, !tbaa !2142
  %51 = load i8** %50, align 8, !dbg !2141, !tbaa !739
  %52 = call i64 @llvm.objectsize.i64.p0i8(i8* %title, i1 false), !dbg !2141
  %53 = call i8* @__strcpy_chk(i8* %title, i8* %51, i64 %52) #8, !dbg !2141
  %54 = getelementptr inbounds i8* %47, i64 45800, !dbg !2146
  %55 = bitcast i8* %54 to i32*, !dbg !2147
  %56 = load i32* %55, align 4, !dbg !2147, !tbaa !2148
  store i32 %56, i32* %3, align 4, !dbg !2149, !tbaa !933
  %57 = getelementptr inbounds i8* %47, i64 45840, !dbg !2150
  %58 = bitcast i8* %57 to i32*, !dbg !2150
  %59 = load i32* %58, align 4, !dbg !2150, !tbaa !2151
  %60 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !2152
  store i32 %59, i32* %60, align 4, !dbg !2153, !tbaa !942
  %61 = getelementptr inbounds i8* %47, i64 45856, !dbg !2154
  %62 = bitcast i8* %61 to i32*, !dbg !2154
  %63 = load i32* %62, align 4, !dbg !2154, !tbaa !2155
  %64 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 7, !dbg !2156
  store i32 %63, i32* %64, align 4, !dbg !2157, !tbaa !2158
  %65 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !2159
  %66 = load %struct.t_atom** %65, align 8, !dbg !2159, !tbaa !949
  %67 = icmp eq %struct.t_atom* %66, null, !dbg !2161
  br i1 %67, label %68, label %71, !dbg !2162

; <label>:68                                      ; preds = %46
  %69 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 929, i32 %56, i32 40) #8, !dbg !2163
  %70 = bitcast %struct.t_atom** %65 to i8**, !dbg !2163
  store i8* %69, i8** %70, align 8, !dbg !2163, !tbaa !949
  br label %71, !dbg !2163

; <label>:71                                      ; preds = %46, %68
  %72 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !2164
  %73 = load i8**** %72, align 8, !dbg !2164, !tbaa !925
  %74 = icmp eq i8*** %73, null, !dbg !2166
  br i1 %74, label %75, label %.preheader3, !dbg !2167

; <label>:75                                      ; preds = %71
  %76 = load i32* %3, align 4, !dbg !2168, !tbaa !933
  %77 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 931, i32 %76, i32 8) #8, !dbg !2168
  %78 = bitcast i8**** %72 to i8**, !dbg !2168
  store i8* %77, i8** %78, align 8, !dbg !2168, !tbaa !925
  br label %.preheader3, !dbg !2168

.preheader3:                                      ; preds = %71, %75
  %79 = load i32* %3, align 4, !dbg !2169, !tbaa !933
  %80 = icmp sgt i32 %79, 0, !dbg !2172
  br i1 %80, label %.lr.ph9, label %._crit_edge10, !dbg !2173

.lr.ph9:                                          ; preds = %.preheader3
  %81 = getelementptr inbounds i8* %47, i64 45808, !dbg !2174
  %82 = bitcast i8* %81 to %struct.t_atom**, !dbg !2174
  %83 = getelementptr inbounds i8* %47, i64 45816, !dbg !2176
  %84 = bitcast i8* %83 to i8****, !dbg !2176
  br label %85, !dbg !2173

; <label>:85                                      ; preds = %.lr.ph9, %85
  %indvars.iv15 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next16, %85 ]
  %86 = load %struct.t_atom** %65, align 8, !dbg !2177, !tbaa !949
  %87 = getelementptr inbounds %struct.t_atom* %86, i64 %indvars.iv15, !dbg !2178
  %88 = load %struct.t_atom** %82, align 8, !dbg !2174, !tbaa !2179
  %89 = getelementptr inbounds %struct.t_atom* %88, i64 %indvars.iv15, !dbg !2180
  %90 = bitcast %struct.t_atom* %87 to i8*, !dbg !2180
  %91 = bitcast %struct.t_atom* %89 to i8*, !dbg !2180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 40, i32 4, i1 false), !dbg !2180, !tbaa.struct !2181
  %92 = load i8**** %84, align 8, !dbg !2176, !tbaa !2183
  %93 = getelementptr inbounds i8*** %92, i64 %indvars.iv15, !dbg !2184
  %94 = bitcast i8*** %93 to i64*, !dbg !2184
  %95 = load i64* %94, align 8, !dbg !2184, !tbaa !739
  %96 = load i8**** %72, align 8, !dbg !2185, !tbaa !925
  %97 = getelementptr inbounds i8*** %96, i64 %indvars.iv15, !dbg !2186
  %98 = bitcast i8*** %97 to i64*, !dbg !2187
  store i64 %95, i64* %98, align 8, !dbg !2187, !tbaa !739
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !2173
  %99 = load i32* %3, align 4, !dbg !2169, !tbaa !933
  %100 = sext i32 %99 to i64, !dbg !2172
  %101 = icmp slt i64 %indvars.iv.next16, %100, !dbg !2172
  br i1 %101, label %85, label %._crit_edge10, !dbg !2173

._crit_edge10:                                    ; preds = %85, %.preheader3
  %102 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !2188
  %103 = load i8**** %102, align 8, !dbg !2188, !tbaa !939
  %104 = icmp eq i8*** %103, null, !dbg !2190
  br i1 %104, label %105, label %.preheader2, !dbg !2191

; <label>:105                                     ; preds = %._crit_edge10
  %106 = load i32* %60, align 4, !dbg !2192, !tbaa !942
  %107 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 938, i32 %106, i32 8) #8, !dbg !2192
  %108 = bitcast i8**** %102 to i8**, !dbg !2192
  store i8* %107, i8** %108, align 8, !dbg !2192, !tbaa !939
  %109 = bitcast i8* %107 to i8***
  br label %.preheader2, !dbg !2192

.preheader2:                                      ; preds = %._crit_edge10, %105
  %110 = phi i8*** [ %103, %._crit_edge10 ], [ %109, %105 ]
  %111 = load i32* %60, align 4, !dbg !2193, !tbaa !942
  %112 = icmp sgt i32 %111, 0, !dbg !2196
  br i1 %112, label %.lr.ph7, label %._crit_edge, !dbg !2197

.lr.ph7:                                          ; preds = %.preheader2
  %113 = getelementptr inbounds i8* %47, i64 45848, !dbg !2198
  %114 = bitcast i8* %113 to i8****, !dbg !2198
  %115 = sext i32 %111 to i64, !dbg !2197
  %116 = bitcast i8* %113 to i64**, !dbg !2198
  %117 = load i64** %116, align 8, !dbg !2198, !tbaa !2199
  %118 = load i64* %117, align 8, !dbg !2200, !tbaa !739
  %119 = bitcast i8*** %110 to i64*, !dbg !2201
  store i64 %118, i64* %119, align 8, !dbg !2201, !tbaa !739
  %120 = icmp sgt i32 %111, 1, !dbg !2196
  br i1 %120, label %._crit_edge17, label %._crit_edge, !dbg !2197

._crit_edge17:                                    ; preds = %.lr.ph7, %._crit_edge17
  %indvars.iv.next1421 = phi i64 [ %indvars.iv.next14, %._crit_edge17 ], [ 1, %.lr.ph7 ]
  %.pre = load i8**** %102, align 8, !dbg !2202, !tbaa !939
  %121 = load i8**** %114, align 8, !dbg !2198, !tbaa !2199
  %122 = getelementptr inbounds i8*** %121, i64 %indvars.iv.next1421, !dbg !2200
  %123 = bitcast i8*** %122 to i64*, !dbg !2200
  %124 = load i64* %123, align 8, !dbg !2200, !tbaa !739
  %125 = getelementptr inbounds i8*** %.pre, i64 %indvars.iv.next1421, !dbg !2203
  %126 = bitcast i8*** %125 to i64*, !dbg !2201
  store i64 %124, i64* %126, align 8, !dbg !2201, !tbaa !739
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv.next1421, 1, !dbg !2197
  %127 = icmp slt i64 %indvars.iv.next14, %115, !dbg !2196
  br i1 %127, label %._crit_edge17, label %._crit_edge, !dbg !2197

._crit_edge:                                      ; preds = %.lr.ph7, %._crit_edge17, %.preheader2
  %128 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8, !dbg !2204
  %129 = load i8**** %128, align 8, !dbg !2204, !tbaa !2206
  %130 = icmp eq i8*** %129, null, !dbg !2207
  br i1 %130, label %131, label %.preheader1, !dbg !2208

; <label>:131                                     ; preds = %._crit_edge
  %132 = load i32* %64, align 4, !dbg !2209, !tbaa !2158
  %133 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 943, i32 %132, i32 8) #8, !dbg !2209
  %134 = bitcast i8**** %128 to i8**, !dbg !2209
  store i8* %133, i8** %134, align 8, !dbg !2209, !tbaa !2206
  %135 = bitcast i8* %133 to i8***
  br label %.preheader1, !dbg !2209

.preheader1:                                      ; preds = %._crit_edge, %131
  %136 = phi i8*** [ %129, %._crit_edge ], [ %135, %131 ]
  %137 = load i32* %64, align 4, !dbg !2210, !tbaa !2158
  %138 = icmp sgt i32 %137, 0, !dbg !2213
  br i1 %138, label %.lr.ph, label %.preheader, !dbg !2214

.lr.ph:                                           ; preds = %.preheader1
  %139 = getelementptr inbounds i8* %47, i64 45864, !dbg !2215
  %140 = bitcast i8* %139 to i8****, !dbg !2215
  %141 = sext i32 %137 to i64, !dbg !2214
  %142 = bitcast i8* %139 to i64**, !dbg !2215
  %143 = load i64** %142, align 8, !dbg !2215, !tbaa !2216
  %144 = load i64* %143, align 8, !dbg !2217, !tbaa !739
  %145 = bitcast i8*** %136 to i64*, !dbg !2218
  store i64 %144, i64* %145, align 8, !dbg !2218, !tbaa !739
  %146 = icmp sgt i32 %137, 1, !dbg !2213
  br i1 %146, label %._crit_edge18, label %.preheader, !dbg !2214

.preheader:                                       ; preds = %.lr.ph, %._crit_edge18, %.preheader1
  %147 = getelementptr inbounds i8* %47, i64 46928, !dbg !2219
  %148 = bitcast i8* %147 to [9 x %struct.t_grps]*, !dbg !2219
  br label %156, !dbg !2223

._crit_edge18:                                    ; preds = %.lr.ph, %._crit_edge18
  %indvars.iv.next1220 = phi i64 [ %indvars.iv.next12, %._crit_edge18 ], [ 1, %.lr.ph ]
  %.pre19 = load i8**** %128, align 8, !dbg !2224, !tbaa !2206
  %149 = load i8**** %140, align 8, !dbg !2215, !tbaa !2216
  %150 = getelementptr inbounds i8*** %149, i64 %indvars.iv.next1220, !dbg !2217
  %151 = bitcast i8*** %150 to i64*, !dbg !2217
  %152 = load i64* %151, align 8, !dbg !2217, !tbaa !739
  %153 = getelementptr inbounds i8*** %.pre19, i64 %indvars.iv.next1220, !dbg !2225
  %154 = bitcast i8*** %153 to i64*, !dbg !2218
  store i64 %152, i64* %154, align 8, !dbg !2218, !tbaa !739
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv.next1220, 1, !dbg !2214
  %155 = icmp slt i64 %indvars.iv.next12, %141, !dbg !2213
  br i1 %155, label %._crit_edge18, label %.preheader, !dbg !2214

; <label>:156                                     ; preds = %173, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %173 ]
  %157 = getelementptr inbounds [9 x %struct.t_grps]* %148, i64 0, i64 %indvars.iv, i32 0, !dbg !2226
  %158 = load i32* %157, align 4, !dbg !2226, !tbaa !2227
  %159 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 %indvars.iv, i32 0, !dbg !2228
  store i32 %158, i32* %159, align 4, !dbg !2229, !tbaa !2227
  %160 = icmp sgt i32 %158, 0, !dbg !2230
  br i1 %160, label %161, label %173, !dbg !2232

; <label>:161                                     ; preds = %156
  %162 = call i8* @save_calloc(i8* getelementptr inbounds ([22 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 950, i32 %158, i32 4) #8, !dbg !2233
  %163 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 %indvars.iv, i32 1, !dbg !2233
  %164 = bitcast i32** %163 to i8**, !dbg !2233
  store i8* %162, i8** %164, align 8, !dbg !2233, !tbaa !2235
  %165 = getelementptr inbounds [9 x %struct.t_grps]* %148, i64 0, i64 %indvars.iv, i32 1, !dbg !2236
  %166 = bitcast i32** %165 to i8**, !dbg !2236
  %167 = load i8** %166, align 8, !dbg !2236, !tbaa !2235
  %168 = load i32* %159, align 4, !dbg !2236, !tbaa !2227
  %169 = sext i32 %168 to i64, !dbg !2236
  %170 = shl nsw i64 %169, 2, !dbg !2236
  %171 = call i64 @llvm.objectsize.i64.p0i8(i8* %162, i1 false), !dbg !2236
  %172 = call i8* @__memcpy_chk(i8* %162, i8* %167, i64 %170, i64 %171) #8, !dbg !2236
  br label %173, !dbg !2237

; <label>:173                                     ; preds = %156, %161
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2223
  %exitcond = icmp eq i64 %indvars.iv.next, 9, !dbg !2223
  br i1 %exitcond, label %.loopexit, label %156, !dbg !2223

; <label>:174                                     ; preds = %15
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str58, i64 0, i64 0), i8* %infile) #8, !dbg !2238
  br label %.loopexit, !dbg !2239

.loopexit:                                        ; preds = %173, %174, %45, %21, %17
  call void @llvm.lifetime.end(i64 176, i8* %2) #7, !dbg !2240
  call void @llvm.lifetime.end(i64 256, i8* %1) #7, !dbg !2240
  ret void, !dbg !2240
}

; Function Attrs: optsize
declare void @read_pdb_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i32) #2

; Function Attrs: optsize
declare void @read_tpx(i8*, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #5

; Function Attrs: optsize
declare i8** @put_symtab(%struct.t_symtab*, i8*) #2

; Function Attrs: optsize
declare void @_unexpected_eof(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: optsize
declare void @_too_few(i8*, i32) #2

; Function Attrs: optsize
declare void @warning(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!688, !689, !690}
!llvm.ident = !{!691}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !16, subprograms: !19, globals: !683, imports: !687)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/confio.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/atoms.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !DIEnumerator(name: "egcTC", value: 0)
!7 = !DIEnumerator(name: "egcENER", value: 1)
!8 = !DIEnumerator(name: "egcACC", value: 2)
!9 = !DIEnumerator(name: "egcFREEZE", value: 3)
!10 = !DIEnumerator(name: "egcUser1", value: 4)
!11 = !DIEnumerator(name: "egcUser2", value: 5)
!12 = !DIEnumerator(name: "egcVCM", value: 6)
!13 = !DIEnumerator(name: "egcXTC", value: 7)
!14 = !DIEnumerator(name: "egcORFIT", value: 8)
!15 = !DIEnumerator(name: "egcNR", value: 9)
!16 = !{!17, !18}
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!19 = !{!20, !88, !94, !234, !246, !261, !266, !291, !304, !316, !331, !344, !370, !547, !573, !588, !596, !637, !645, !651, !659, !667, !673}
!20 = !DISubprogram(name: "__sputc", scope: !21, file: !21, line: 348, type: !22, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !85)
!21 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !24, !25}
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !21, line: 153, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !21, line: 122, size: 1216, align: 64, elements: !28)
!28 = !{!29, !32, !33, !34, !36, !37, !42, !43, !44, !48, !53, !63, !69, !70, !73, !74, !78, !82, !83, !84}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !27, file: !21, line: 123, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !27, file: !21, line: 124, baseType: !24, size: 32, align: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !27, file: !21, line: 125, baseType: !24, size: 32, align: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !27, file: !21, line: 126, baseType: !35, size: 16, align: 16, offset: 128)
!35 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !27, file: !21, line: 127, baseType: !35, size: 16, align: 16, offset: 144)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !27, file: !21, line: 128, baseType: !38, size: 128, align: 64, offset: 192)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !21, line: 88, size: 128, align: 64, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !38, file: !21, line: 89, baseType: !30, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !38, file: !21, line: 90, baseType: !24, size: 32, align: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !27, file: !21, line: 129, baseType: !24, size: 32, align: 32, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !27, file: !21, line: 132, baseType: !18, size: 64, align: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !27, file: !21, line: 133, baseType: !45, size: 64, align: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!24, !18}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !27, file: !21, line: 134, baseType: !49, size: 64, align: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!24, !18, !52, !24}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !27, file: !21, line: 135, baseType: !54, size: 64, align: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !18, !57, !24}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !21, line: 77, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !59, line: 71, baseType: !60)
!59 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!62 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !27, file: !21, line: 136, baseType: !64, size: 64, align: 64, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!24, !18, !67, !24}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !27, file: !21, line: 139, baseType: !38, size: 128, align: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !27, file: !21, line: 140, baseType: !71, size: 64, align: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !21, line: 94, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !27, file: !21, line: 141, baseType: !24, size: 32, align: 32, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !27, file: !21, line: 144, baseType: !75, size: 24, align: 8, offset: 928)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, align: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 3)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !27, file: !21, line: 145, baseType: !79, size: 8, align: 8, offset: 952)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !27, file: !21, line: 148, baseType: !38, size: 128, align: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !27, file: !21, line: 151, baseType: !24, size: 32, align: 32, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !21, line: 152, baseType: !57, size: 64, align: 64, offset: 1152)
!85 = !{!86, !87}
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !20, file: !21, line: 348, type: !24)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !20, file: !21, line: 348, type: !25)
!88 = !DISubprogram(name: "__sigbits", scope: !89, file: !89, line: 114, type: !90, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !92)
!89 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!90 = !DISubroutineType(types: !91)
!91 = !{!24, !24}
!92 = !{!93}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !88, file: !89, line: 114, type: !24)
!94 = !DISubprogram(name: "read_g96_conf", scope: !1, file: !1, line: 177, type: !95, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, i8*, %struct.t_trxframe*)* @read_g96_conf, variables: !210)
!95 = !DISubroutineType(types: !96)
!96 = !{!24, !25, !52, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_trxframe", file: !99, line: 72, baseType: !100)
!99 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/trx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!100 = !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 40, size: 1408, align: 64, elements: !101)
!101 = !{!102, !103, !104, !105, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !194, !195, !196, !197, !201, !202, !203, !204, !205, !206}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !99, line: 42, baseType: !24, size: 32, align: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "not_ok", scope: !100, file: !99, line: 43, baseType: !24, size: 32, align: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "natoms", scope: !100, file: !99, line: 44, baseType: !24, size: 32, align: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "t0", scope: !100, file: !99, line: 45, baseType: !106, size: 32, align: 32, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !107, line: 87, baseType: !108)
!107 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!108 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tpf", scope: !100, file: !99, line: 47, baseType: !106, size: 32, align: 32, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tppf", scope: !100, file: !99, line: 49, baseType: !106, size: 32, align: 32, offset: 160)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "bTitle", scope: !100, file: !99, line: 52, baseType: !24, size: 32, align: 32, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "title", scope: !100, file: !99, line: 53, baseType: !52, size: 64, align: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "bStep", scope: !100, file: !99, line: 54, baseType: !24, size: 32, align: 32, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !100, file: !99, line: 55, baseType: !24, size: 32, align: 32, offset: 352)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "bTime", scope: !100, file: !99, line: 56, baseType: !24, size: 32, align: 32, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !100, file: !99, line: 57, baseType: !106, size: 32, align: 32, offset: 416)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "bLambda", scope: !100, file: !99, line: 58, baseType: !24, size: 32, align: 32, offset: 448)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !100, file: !99, line: 59, baseType: !106, size: 32, align: 32, offset: 480)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "bAtoms", scope: !100, file: !99, line: 60, baseType: !24, size: 32, align: 32, offset: 512)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "atoms", scope: !100, file: !99, line: 61, baseType: !121, size: 64, align: 64, offset: 576)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atoms", file: !4, line: 94, baseType: !123)
!123 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 75, size: 10240, align: 64, elements: !124)
!124 = !{!125, !126, !145, !148, !149, !150, !151, !152, !153, !154, !169, !177}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !123, file: !4, line: 76, baseType: !24, size: 32, align: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !123, file: !4, line: 77, baseType: !127, size: 64, align: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atom", file: !4, line: 57, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 320, align: 32, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !137, !138, !139, !140, !144}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !129, file: !4, line: 49, baseType: !106, size: 32, align: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !129, file: !4, line: 49, baseType: !106, size: 32, align: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "mB", scope: !129, file: !4, line: 50, baseType: !106, size: 32, align: 32, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "qB", scope: !129, file: !4, line: 50, baseType: !106, size: 32, align: 32, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !4, line: 51, baseType: !136, size: 16, align: 16, offset: 128)
!136 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !129, file: !4, line: 52, baseType: !136, size: 16, align: 16, offset: 144)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !129, file: !4, line: 53, baseType: !24, size: 32, align: 32, offset: 160)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !129, file: !4, line: 54, baseType: !24, size: 32, align: 32, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "grpnr", scope: !129, file: !4, line: 55, baseType: !141, size: 72, align: 8, offset: 224)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 72, align: 8, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 9)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !129, file: !4, line: 56, baseType: !31, size: 8, align: 8, offset: 296)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "atomname", scope: !123, file: !4, line: 80, baseType: !146, size: 64, align: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "atomtype", scope: !123, file: !4, line: 82, baseType: !146, size: 64, align: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "atomtypeB", scope: !123, file: !4, line: 84, baseType: !146, size: 64, align: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !123, file: !4, line: 86, baseType: !24, size: 32, align: 32, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "resname", scope: !123, file: !4, line: 87, baseType: !146, size: 64, align: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ngrpname", scope: !123, file: !4, line: 89, baseType: !24, size: 32, align: 32, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "grpname", scope: !123, file: !4, line: 90, baseType: !146, size: 64, align: 64, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !123, file: !4, line: 91, baseType: !155, size: 8448, align: 64, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !156, line: 52, baseType: !157)
!156 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!157 = !DICompositeType(tag: DW_TAG_structure_type, file: !156, line: 36, size: 8448, align: 64, elements: !158)
!158 = !{!159, !163, !164, !167, !168}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !157, file: !156, line: 37, baseType: !160, size: 8192, align: 32)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8192, align: 32, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !157, file: !156, line: 43, baseType: !24, size: 32, align: 32, offset: 8192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !157, file: !156, line: 44, baseType: !165, size: 64, align: 64, offset: 8256)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !107, line: 73, baseType: !24)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !157, file: !156, line: 45, baseType: !24, size: 32, align: 32, offset: 8320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !157, file: !156, line: 46, baseType: !165, size: 64, align: 64, offset: 8384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "grps", scope: !123, file: !4, line: 92, baseType: !170, size: 1152, align: 64, offset: 9024)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 1152, align: 64, elements: !142)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grps", file: !4, line: 73, baseType: !172)
!172 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 70, size: 128, align: 64, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !172, file: !4, line: 71, baseType: !24, size: 32, align: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nm_ind", scope: !172, file: !4, line: 72, baseType: !176, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pdbinfo", scope: !123, file: !4, line: 93, baseType: !178, size: 64, align: 64, offset: 10176)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pdbinfo", file: !4, line: 68, baseType: !180)
!180 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 59, size: 416, align: 32, elements: !181)
!181 = !{!182, !183, !184, !185, !189, !190, !191, !192}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !180, file: !4, line: 60, baseType: !24, size: 32, align: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "atomnr", scope: !180, file: !4, line: 61, baseType: !24, size: 32, align: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "altloc", scope: !180, file: !4, line: 62, baseType: !17, size: 8, align: 8, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pdbresnr", scope: !180, file: !4, line: 63, baseType: !186, size: 48, align: 8, offset: 72)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 48, align: 8, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 6)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "occup", scope: !180, file: !4, line: 64, baseType: !106, size: 32, align: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "bfac", scope: !180, file: !4, line: 65, baseType: !106, size: 32, align: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "bAnisotropic", scope: !180, file: !4, line: 66, baseType: !24, size: 32, align: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "uij", scope: !180, file: !4, line: 67, baseType: !193, size: 192, align: 32, offset: 224)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, align: 32, elements: !187)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "bPrec", scope: !100, file: !99, line: 62, baseType: !24, size: 32, align: 32, offset: 640)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "prec", scope: !100, file: !99, line: 63, baseType: !106, size: 32, align: 32, offset: 672)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "bX", scope: !100, file: !99, line: 64, baseType: !24, size: 32, align: 32, offset: 704)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !100, file: !99, line: 65, baseType: !198, size: 64, align: 64, offset: 768)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !107, line: 101, baseType: !200)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 96, align: 32, elements: !76)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "bV", scope: !100, file: !99, line: 66, baseType: !24, size: 32, align: 32, offset: 832)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !100, file: !99, line: 67, baseType: !198, size: 64, align: 64, offset: 896)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "bF", scope: !100, file: !99, line: 68, baseType: !24, size: 32, align: 32, offset: 960)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !100, file: !99, line: 69, baseType: !198, size: 64, align: 64, offset: 1024)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "bBox", scope: !100, file: !99, line: 70, baseType: !24, size: 32, align: 32, offset: 1088)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "box", scope: !100, file: !99, line: 71, baseType: !207, size: 288, align: 32, offset: 1120)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "matrix", file: !107, line: 103, baseType: !208)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 288, align: 32, elements: !209)
!209 = !{!77, !77}
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !226, !227, !228, !229, !230, !231, !232, !233}
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !94, file: !1, line: 177, type: !25)
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "infile", arg: 2, scope: !94, file: !1, line: 177, type: !52)
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 3, scope: !94, file: !1, line: 177, type: !97)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bAtStart", scope: !94, file: !1, line: 182, type: !24)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bTime", scope: !94, file: !1, line: 182, type: !24)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bAtoms", scope: !94, file: !1, line: 182, type: !24)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bPos", scope: !94, file: !1, line: 182, type: !24)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bVel", scope: !94, file: !1, line: 182, type: !24)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bBox", scope: !94, file: !1, line: 182, type: !24)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bEnd", scope: !94, file: !1, line: 182, type: !24)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bFinished", scope: !94, file: !1, line: 182, type: !24)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "natoms", scope: !94, file: !1, line: 183, type: !24)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbp", scope: !94, file: !1, line: 183, type: !24)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db1", scope: !94, file: !1, line: 184, type: !225)
!225 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db2", scope: !94, file: !1, line: 184, type: !225)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db3", scope: !94, file: !1, line: 184, type: !225)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db4", scope: !94, file: !1, line: 184, type: !225)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db5", scope: !94, file: !1, line: 184, type: !225)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db6", scope: !94, file: !1, line: 184, type: !225)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db7", scope: !94, file: !1, line: 184, type: !225)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db8", scope: !94, file: !1, line: 184, type: !225)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db9", scope: !94, file: !1, line: 184, type: !225)
!234 = !DISubprogram(name: "write_g96_conf", scope: !1, file: !1, line: 278, type: !235, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_trxframe*, i32, i32*)* @write_g96_conf, variables: !237)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !25, !97, !24, !165}
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245}
!238 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !234, file: !1, line: 278, type: !25)
!239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 2, scope: !234, file: !1, line: 278, type: !97)
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nindex", arg: 3, scope: !234, file: !1, line: 279, type: !24)
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 4, scope: !234, file: !1, line: 279, type: !165)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atoms", scope: !234, file: !1, line: 281, type: !121)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nout", scope: !234, file: !1, line: 282, type: !24)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !234, file: !1, line: 282, type: !24)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !234, file: !1, line: 282, type: !24)
!246 = !DISubprogram(name: "gro_next_x_or_v", scope: !1, file: !1, line: 565, type: !247, isLocal: false, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, %struct.t_trxframe*)* @gro_next_x_or_v, variables: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{!24, !25, !97}
!249 = !{!250, !251, !252, !253, !257, !258, !259, !260}
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !246, file: !1, line: 565, type: !25)
!251 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 2, scope: !246, file: !1, line: 565, type: !97)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atoms", scope: !246, file: !1, line: 567, type: !122)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "title", scope: !246, file: !1, line: 568, type: !254)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32768, align: 8, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 4096)
!257 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !246, file: !1, line: 568, type: !52)
!258 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tt", scope: !246, file: !1, line: 569, type: !225)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndec", scope: !246, file: !1, line: 570, type: !24)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !246, file: !1, line: 570, type: !24)
!261 = !DISubprogram(name: "gro_first_x_or_v", scope: !1, file: !1, line: 613, type: !247, isLocal: false, isDefinition: true, scopeLine: 614, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, %struct.t_trxframe*)* @gro_first_x_or_v, variables: !262)
!262 = !{!263, !264, !265}
!263 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !261, file: !1, line: 613, type: !25)
!264 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 2, scope: !261, file: !1, line: 613, type: !97)
!265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "title", scope: !261, file: !1, line: 615, type: !254)
!266 = !DISubprogram(name: "write_hconf_indexed_p", scope: !1, file: !1, line: 634, type: !267, isLocal: false, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*, %struct.t_atoms*, i32, i32*, i32, [3 x float]*, [3 x float]*, [3 x float]*)* @write_hconf_indexed_p, variables: !270)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !25, !52, !121, !24, !165, !24, !198, !198, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !286, !287, !288, !289, !290}
!271 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !266, file: !1, line: 634, type: !25)
!272 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !266, file: !1, line: 634, type: !52)
!273 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 3, scope: !266, file: !1, line: 634, type: !121)
!274 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 4, scope: !266, file: !1, line: 635, type: !24)
!275 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 5, scope: !266, file: !1, line: 635, type: !165)
!276 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pr", arg: 6, scope: !266, file: !1, line: 635, type: !24)
!277 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 7, scope: !266, file: !1, line: 636, type: !198)
!278 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 8, scope: !266, file: !1, line: 636, type: !198)
!279 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 9, scope: !266, file: !1, line: 636, type: !269)
!280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resnm", scope: !266, file: !1, line: 638, type: !186)
!281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nm", scope: !266, file: !1, line: 638, type: !186)
!282 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !266, file: !1, line: 638, type: !283)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 800, align: 8, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 100)
!286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ai", scope: !266, file: !1, line: 639, type: !24)
!287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !266, file: !1, line: 639, type: !24)
!288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resnr", scope: !266, file: !1, line: 639, type: !24)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !266, file: !1, line: 639, type: !24)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vpr", scope: !266, file: !1, line: 639, type: !24)
!291 = !DISubprogram(name: "write_hconf_p", scope: !1, file: !1, line: 706, type: !292, isLocal: false, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*, %struct.t_atoms*, i32, [3 x float]*, [3 x float]*, [3 x float]*)* @write_hconf_p, variables: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !25, !52, !121, !24, !198, !198, !269}
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303}
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !291, file: !1, line: 706, type: !25)
!296 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !291, file: !1, line: 706, type: !52)
!297 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 3, scope: !291, file: !1, line: 706, type: !121)
!298 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pr", arg: 4, scope: !291, file: !1, line: 706, type: !24)
!299 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 5, scope: !291, file: !1, line: 707, type: !198)
!300 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 6, scope: !291, file: !1, line: 707, type: !198)
!301 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 7, scope: !291, file: !1, line: 707, type: !269)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aa", scope: !291, file: !1, line: 709, type: !165)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !291, file: !1, line: 710, type: !24)
!304 = !DISubprogram(name: "write_conf_p", scope: !1, file: !1, line: 719, type: !305, isLocal: false, isDefinition: true, scopeLine: 721, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, %struct.t_atoms*, i32, [3 x float]*, [3 x float]*, [3 x float]*)* @write_conf_p, variables: !307)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !52, !52, !121, !24, !198, !198, !269}
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315}
!308 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outfile", arg: 1, scope: !304, file: !1, line: 719, type: !52)
!309 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !304, file: !1, line: 719, type: !52)
!310 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 3, scope: !304, file: !1, line: 719, type: !121)
!311 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pr", arg: 4, scope: !304, file: !1, line: 719, type: !24)
!312 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 5, scope: !304, file: !1, line: 720, type: !198)
!313 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 6, scope: !304, file: !1, line: 720, type: !198)
!314 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 7, scope: !304, file: !1, line: 720, type: !269)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !304, file: !1, line: 722, type: !25)
!316 = !DISubprogram(name: "write_sto_conf_indexed", scope: !1, file: !1, line: 736, type: !317, isLocal: false, isDefinition: true, scopeLine: 739, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*, i32, i32*)* @write_sto_conf_indexed, variables: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !52, !52, !121, !198, !198, !269, !166, !165}
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outfile", arg: 1, scope: !316, file: !1, line: 736, type: !52)
!321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !316, file: !1, line: 736, type: !52)
!322 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 3, scope: !316, file: !1, line: 736, type: !121)
!323 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !316, file: !1, line: 737, type: !198)
!324 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 5, scope: !316, file: !1, line: 737, type: !198)
!325 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 6, scope: !316, file: !1, line: 737, type: !269)
!326 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nindex", arg: 7, scope: !316, file: !1, line: 738, type: !166)
!327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 8, scope: !316, file: !1, line: 738, type: !165)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !316, file: !1, line: 740, type: !25)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ftp", scope: !316, file: !1, line: 741, type: !24)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fr", scope: !316, file: !1, line: 742, type: !98)
!331 = !DISubprogram(name: "write_sto_conf", scope: !1, file: !1, line: 787, type: !332, isLocal: false, isDefinition: true, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*)* @write_sto_conf, variables: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !52, !52, !121, !198, !198, !269}
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343}
!335 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outfile", arg: 1, scope: !331, file: !1, line: 787, type: !52)
!336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !331, file: !1, line: 787, type: !52)
!337 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 3, scope: !331, file: !1, line: 787, type: !121)
!338 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !331, file: !1, line: 788, type: !198)
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 5, scope: !331, file: !1, line: 788, type: !198)
!340 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 6, scope: !331, file: !1, line: 788, type: !269)
!341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !331, file: !1, line: 790, type: !25)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ftp", scope: !331, file: !1, line: 791, type: !24)
!343 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fr", scope: !331, file: !1, line: 792, type: !98)
!344 = !DISubprogram(name: "get_stx_coordnum", scope: !1, file: !1, line: 835, type: !345, isLocal: false, isDefinition: true, scopeLine: 836, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32*)* @get_stx_coordnum, variables: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !52, !176}
!347 = !{!348, !349, !350, !351, !352, !353}
!348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "infile", arg: 1, scope: !344, file: !1, line: 835, type: !52)
!349 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !344, file: !1, line: 835, type: !176)
!350 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !344, file: !1, line: 837, type: !25)
!351 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ftp", scope: !344, file: !1, line: 838, type: !24)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fr", scope: !344, file: !1, line: 839, type: !98)
!353 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tpx", scope: !354, file: !1, line: 867, type: !356)
!354 = distinct !DILexicalBlock(scope: !355, file: !1, line: 866, column: 15)
!355 = distinct !DILexicalBlock(scope: !344, file: !1, line: 842, column: 16)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_tpxheader", file: !357, line: 68, baseType: !358)
!357 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/tpxio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!358 = !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 55, size: 320, align: 32, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "bIr", scope: !358, file: !357, line: 57, baseType: !24, size: 32, align: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "bBox", scope: !358, file: !357, line: 58, baseType: !24, size: 32, align: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "bTop", scope: !358, file: !357, line: 59, baseType: !24, size: 32, align: 32, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "bX", scope: !358, file: !357, line: 60, baseType: !24, size: 32, align: 32, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "bV", scope: !358, file: !357, line: 61, baseType: !24, size: 32, align: 32, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "bF", scope: !358, file: !357, line: 62, baseType: !24, size: 32, align: 32, offset: 160)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "natoms", scope: !358, file: !357, line: 64, baseType: !24, size: 32, align: 32, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !358, file: !357, line: 65, baseType: !24, size: 32, align: 32, offset: 224)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !358, file: !357, line: 66, baseType: !106, size: 32, align: 32, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !358, file: !357, line: 67, baseType: !106, size: 32, align: 32, offset: 288)
!370 = !DISubprogram(name: "read_stx_conf", scope: !1, file: !1, line: 877, type: !332, isLocal: false, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*)* @read_stx_conf, variables: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !381, !539, !540, !541, !542, !543, !544, !545, !546}
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "infile", arg: 1, scope: !370, file: !1, line: 877, type: !52)
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !370, file: !1, line: 877, type: !52)
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 3, scope: !370, file: !1, line: 877, type: !121)
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !370, file: !1, line: 878, type: !198)
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 5, scope: !370, file: !1, line: 878, type: !198)
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 6, scope: !370, file: !1, line: 878, type: !269)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !370, file: !1, line: 880, type: !25)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !370, file: !1, line: 881, type: !380)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, align: 8, elements: !161)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "top", scope: !370, file: !1, line: 882, type: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_topology", file: !384, line: 42, baseType: !385)
!384 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/topology.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!385 = !DICompositeType(tag: DW_TAG_structure_type, file: !384, line: 36, size: 402112, align: 64, elements: !386)
!386 = !{!387, !388, !521, !522, !524}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !384, line: 37, baseType: !147, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "idef", scope: !385, file: !384, line: 38, baseType: !389, size: 366336, align: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_idef", file: !390, line: 188, baseType: !391)
!390 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/idef.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!391 = !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 179, size: 366336, align: 64, elements: !392)
!392 = !{!393, !394, !395, !396, !399, !509}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ntypes", scope: !391, file: !390, line: 181, baseType: !24, size: 32, align: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !391, file: !390, line: 182, baseType: !24, size: 32, align: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "atnr", scope: !391, file: !390, line: 183, baseType: !24, size: 32, align: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "functype", scope: !391, file: !390, line: 184, baseType: !397, size: 64, align: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_functype", file: !390, line: 133, baseType: !24)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "iparams", scope: !391, file: !390, line: 185, baseType: !400, size: 64, align: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iparams", file: !390, line: 131, baseType: !402)
!402 = !DICompositeType(tag: DW_TAG_union_type, file: !390, line: 97, size: 192, align: 32, elements: !403)
!403 = !{!404, !410, !417, !423, !432, !437, !444, !452, !457, !462, !468, !473, !478, !487, !496, !505}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "bham", scope: !402, file: !390, line: 105, baseType: !405, size: 96, align: 32)
!405 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 105, size: 96, align: 32, elements: !406)
!406 = !{!407, !408, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !405, file: !390, line: 105, baseType: !106, size: 32, align: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !405, file: !390, line: 105, baseType: !106, size: 32, align: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !405, file: !390, line: 105, baseType: !106, size: 32, align: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "harmonic", scope: !402, file: !390, line: 106, baseType: !411, size: 128, align: 32)
!411 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 106, size: 128, align: 32, elements: !412)
!412 = !{!413, !414, !415, !416}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "rA", scope: !411, file: !390, line: 106, baseType: !106, size: 32, align: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "krA", scope: !411, file: !390, line: 106, baseType: !106, size: 32, align: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rB", scope: !411, file: !390, line: 106, baseType: !106, size: 32, align: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "krB", scope: !411, file: !390, line: 106, baseType: !106, size: 32, align: 32, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "cubic", scope: !402, file: !390, line: 108, baseType: !418, size: 96, align: 32)
!418 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 108, size: 96, align: 32, elements: !419)
!419 = !{!420, !421, !422}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !418, file: !390, line: 108, baseType: !106, size: 32, align: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "kb", scope: !418, file: !390, line: 108, baseType: !106, size: 32, align: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "kcub", scope: !418, file: !390, line: 108, baseType: !106, size: 32, align: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "wpol", scope: !402, file: !390, line: 110, baseType: !424, size: 192, align: 32)
!424 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 110, size: 192, align: 32, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "kx", scope: !424, file: !390, line: 110, baseType: !106, size: 32, align: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ky", scope: !424, file: !390, line: 110, baseType: !106, size: 32, align: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "kz", scope: !424, file: !390, line: 110, baseType: !106, size: 32, align: 32, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rOH", scope: !424, file: !390, line: 110, baseType: !106, size: 32, align: 32, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rHH", scope: !424, file: !390, line: 110, baseType: !106, size: 32, align: 32, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rOD", scope: !424, file: !390, line: 110, baseType: !106, size: 32, align: 32, offset: 160)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lj", scope: !402, file: !390, line: 111, baseType: !433, size: 64, align: 32)
!433 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 111, size: 64, align: 32, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "c6", scope: !433, file: !390, line: 111, baseType: !106, size: 32, align: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "c12", scope: !433, file: !390, line: 111, baseType: !106, size: 32, align: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lj14", scope: !402, file: !390, line: 112, baseType: !438, size: 128, align: 32)
!438 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 112, size: 128, align: 32, elements: !439)
!439 = !{!440, !441, !442, !443}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "c6A", scope: !438, file: !390, line: 112, baseType: !106, size: 32, align: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "c12A", scope: !438, file: !390, line: 112, baseType: !106, size: 32, align: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "c6B", scope: !438, file: !390, line: 112, baseType: !106, size: 32, align: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "c12B", scope: !438, file: !390, line: 112, baseType: !106, size: 32, align: 32, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pdihs", scope: !402, file: !390, line: 117, baseType: !445, size: 160, align: 32)
!445 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 117, size: 160, align: 32, elements: !446)
!446 = !{!447, !448, !449, !450, !451}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "phiA", scope: !445, file: !390, line: 117, baseType: !106, size: 32, align: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cpA", scope: !445, file: !390, line: 117, baseType: !106, size: 32, align: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !445, file: !390, line: 117, baseType: !24, size: 32, align: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "phiB", scope: !445, file: !390, line: 117, baseType: !106, size: 32, align: 32, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "cpB", scope: !445, file: !390, line: 117, baseType: !106, size: 32, align: 32, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "shake", scope: !402, file: !390, line: 118, baseType: !453, size: 64, align: 32)
!453 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 118, size: 64, align: 32, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dA", scope: !453, file: !390, line: 118, baseType: !106, size: 32, align: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dB", scope: !453, file: !390, line: 118, baseType: !106, size: 32, align: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "settle", scope: !402, file: !390, line: 123, baseType: !458, size: 64, align: 32)
!458 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 123, size: 64, align: 32, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "doh", scope: !458, file: !390, line: 123, baseType: !106, size: 32, align: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "dhh", scope: !458, file: !390, line: 123, baseType: !106, size: 32, align: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "morse", scope: !402, file: !390, line: 124, baseType: !463, size: 96, align: 32)
!463 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 124, size: 96, align: 32, elements: !464)
!464 = !{!465, !466, !467}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !463, file: !390, line: 124, baseType: !106, size: 32, align: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !463, file: !390, line: 124, baseType: !106, size: 32, align: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "beta", scope: !463, file: !390, line: 124, baseType: !106, size: 32, align: 32, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "posres", scope: !402, file: !390, line: 125, baseType: !469, size: 192, align: 32)
!469 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 125, size: 192, align: 32, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pos0", scope: !469, file: !390, line: 125, baseType: !200, size: 96, align: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "fc", scope: !469, file: !390, line: 125, baseType: !200, size: 96, align: 32, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rbdihs", scope: !402, file: !390, line: 126, baseType: !474, size: 192, align: 32)
!474 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 126, size: 192, align: 32, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rbc", scope: !474, file: !390, line: 126, baseType: !477, size: 192, align: 32)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 192, align: 32, elements: !187)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !402, file: !390, line: 127, baseType: !479, size: 192, align: 32)
!479 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 127, size: 192, align: 32, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !479, file: !390, line: 127, baseType: !106, size: 32, align: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !479, file: !390, line: 127, baseType: !106, size: 32, align: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !479, file: !390, line: 127, baseType: !106, size: 32, align: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !479, file: !390, line: 127, baseType: !106, size: 32, align: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !479, file: !390, line: 127, baseType: !106, size: 32, align: 32, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !479, file: !390, line: 127, baseType: !106, size: 32, align: 32, offset: 160)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "disres", scope: !402, file: !390, line: 128, baseType: !488, size: 192, align: 32)
!488 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 128, size: 192, align: 32, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !488, file: !390, line: 128, baseType: !106, size: 32, align: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "up1", scope: !488, file: !390, line: 128, baseType: !106, size: 32, align: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "up2", scope: !488, file: !390, line: 128, baseType: !106, size: 32, align: 32, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !488, file: !390, line: 128, baseType: !106, size: 32, align: 32, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !390, line: 128, baseType: !24, size: 32, align: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !488, file: !390, line: 128, baseType: !24, size: 32, align: 32, offset: 160)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "orires", scope: !402, file: !390, line: 129, baseType: !497, size: 192, align: 32)
!497 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 129, size: 192, align: 32, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !497, file: !390, line: 129, baseType: !24, size: 32, align: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pow", scope: !497, file: !390, line: 129, baseType: !24, size: 32, align: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !497, file: !390, line: 129, baseType: !24, size: 32, align: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !497, file: !390, line: 129, baseType: !106, size: 32, align: 32, offset: 96)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "obs", scope: !497, file: !390, line: 129, baseType: !106, size: 32, align: 32, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !497, file: !390, line: 129, baseType: !106, size: 32, align: 32, offset: 160)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !402, file: !390, line: 130, baseType: !506, size: 192, align: 32)
!506 = !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !390, line: 130, size: 192, align: 32, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !506, file: !390, line: 130, baseType: !477, size: 192, align: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !391, file: !390, line: 187, baseType: !510, size: 366080, align: 64, offset: 256)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 366080, align: 64, elements: !519)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_ilist", file: !390, line: 140, baseType: !512)
!512 = !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 135, size: 8320, align: 64, elements: !513)
!513 = !{!514, !515, !516}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !512, file: !390, line: 137, baseType: !24, size: 32, align: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !512, file: !390, line: 138, baseType: !160, size: 8192, align: 32, offset: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "iatoms", scope: !512, file: !390, line: 139, baseType: !517, size: 64, align: 64, offset: 8256)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iatom", file: !390, line: 45, baseType: !166)
!519 = !{!520}
!520 = !DISubrange(count: 44)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "atoms", scope: !385, file: !384, line: 39, baseType: !122, size: 10240, align: 64, offset: 366400)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !385, file: !384, line: 40, baseType: !523, size: 25344, align: 64, offset: 376640)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 25344, align: 64, elements: !76)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !385, file: !384, line: 41, baseType: !525, size: 128, align: 64, offset: 401984)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_symtab", file: !526, line: 46, baseType: !527)
!526 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/symtab.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!527 = !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 42, size: 128, align: 64, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !527, file: !526, line: 44, baseType: !24, size: 32, align: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "symbuf", scope: !527, file: !526, line: 45, baseType: !531, size: 64, align: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_symbuf", file: !526, line: 40, baseType: !533)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "symbuf", file: !526, line: 36, size: 192, align: 64, elements: !534)
!534 = !{!535, !536, !537}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !533, file: !526, line: 37, baseType: !24, size: 32, align: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !533, file: !526, line: 38, baseType: !147, size: 64, align: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !526, line: 39, baseType: !538, size: 64, align: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fr", scope: !370, file: !1, line: 883, type: !98)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !370, file: !1, line: 884, type: !24)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ftp", scope: !370, file: !1, line: 884, type: !24)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "natoms", scope: !370, file: !1, line: 884, type: !24)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i1", scope: !370, file: !1, line: 884, type: !24)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !370, file: !1, line: 885, type: !106)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r1", scope: !370, file: !1, line: 885, type: !106)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r2", scope: !370, file: !1, line: 885, type: !106)
!547 = !DISubprogram(name: "read_g96_pos", scope: !1, file: !1, line: 56, type: !548, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, variables: !551)
!548 = !DISubroutineType(types: !549)
!549 = !{!24, !52, !550, !25, !52, !97}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!551 = !{!552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!552 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 1, scope: !547, file: !1, line: 56, type: !52)
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symtab", arg: 2, scope: !547, file: !1, line: 56, type: !550)
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 3, scope: !547, file: !1, line: 56, type: !25)
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "infile", arg: 4, scope: !547, file: !1, line: 56, type: !52)
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 5, scope: !547, file: !1, line: 57, type: !97)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atoms", scope: !547, file: !1, line: 59, type: !121)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bEnd", scope: !547, file: !1, line: 60, type: !24)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nwanted", scope: !547, file: !1, line: 61, type: !24)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "natoms", scope: !547, file: !1, line: 61, type: !24)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atnr", scope: !547, file: !1, line: 61, type: !24)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resnr", scope: !547, file: !1, line: 61, type: !24)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldres", scope: !547, file: !1, line: 61, type: !24)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newres", scope: !547, file: !1, line: 61, type: !24)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift", scope: !547, file: !1, line: 61, type: !24)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "anm", scope: !547, file: !1, line: 62, type: !254)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resnm", scope: !547, file: !1, line: 62, type: !254)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c1", scope: !547, file: !1, line: 63, type: !17)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c2", scope: !547, file: !1, line: 63, type: !17)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db1", scope: !547, file: !1, line: 64, type: !225)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db2", scope: !547, file: !1, line: 64, type: !225)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db3", scope: !547, file: !1, line: 64, type: !225)
!573 = !DISubprogram(name: "read_g96_vel", scope: !1, file: !1, line: 135, type: !574, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, variables: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{!24, !52, !25, !52, !97}
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 1, scope: !573, file: !1, line: 135, type: !52)
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !573, file: !1, line: 135, type: !25)
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "infile", arg: 3, scope: !573, file: !1, line: 135, type: !52)
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 4, scope: !573, file: !1, line: 136, type: !97)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bEnd", scope: !573, file: !1, line: 138, type: !24)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nwanted", scope: !573, file: !1, line: 139, type: !24)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "natoms", scope: !573, file: !1, line: 139, type: !24)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift", scope: !573, file: !1, line: 139, type: !24)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db1", scope: !573, file: !1, line: 140, type: !225)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db2", scope: !573, file: !1, line: 140, type: !225)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db3", scope: !573, file: !1, line: 140, type: !225)
!588 = !DISubprogram(name: "clear_mat", scope: !589, file: !589, line: 334, type: !590, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, variables: !592)
!589 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!590 = !DISubroutineType(types: !591)
!591 = !{null, !269}
!592 = !{!593, !594}
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !588, file: !589, line: 334, type: !269)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nul", scope: !588, file: !589, line: 336, type: !595)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!596 = !DISubprogram(name: "get_w_conf", scope: !1, file: !1, line: 373, type: !597, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, i8*, i8*, %struct.t_atoms*, i32*, [3 x float]*, [3 x float]*, [3 x float]*)* @get_w_conf, variables: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{!24, !25, !52, !52, !121, !176, !198, !198, !269}
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !613, !614, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!600 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !596, file: !1, line: 373, type: !25)
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "infile", arg: 2, scope: !596, file: !1, line: 373, type: !52)
!602 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 3, scope: !596, file: !1, line: 373, type: !52)
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 4, scope: !596, file: !1, line: 374, type: !121)
!604 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ndec", arg: 5, scope: !596, file: !1, line: 374, type: !176)
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 6, scope: !596, file: !1, line: 374, type: !198)
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 7, scope: !596, file: !1, line: 374, type: !198)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 8, scope: !596, file: !1, line: 374, type: !269)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !596, file: !1, line: 377, type: !186)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !596, file: !1, line: 378, type: !610)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32776, align: 8, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 4097)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !596, file: !1, line: 379, type: !380)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !596, file: !1, line: 380, type: !615)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 240, align: 8, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 30)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x1", scope: !596, file: !1, line: 381, type: !225)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y1", scope: !596, file: !1, line: 381, type: !225)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z1", scope: !596, file: !1, line: 381, type: !225)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x2", scope: !596, file: !1, line: 381, type: !225)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y2", scope: !596, file: !1, line: 381, type: !225)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z2", scope: !596, file: !1, line: 381, type: !225)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmin", scope: !596, file: !1, line: 382, type: !199)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xmax", scope: !596, file: !1, line: 382, type: !199)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "natoms", scope: !596, file: !1, line: 383, type: !24)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !596, file: !1, line: 383, type: !24)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !596, file: !1, line: 383, type: !24)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resnr", scope: !596, file: !1, line: 383, type: !24)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newres", scope: !596, file: !1, line: 383, type: !24)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldres", scope: !596, file: !1, line: 383, type: !24)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ddist", scope: !596, file: !1, line: 383, type: !24)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bFirst", scope: !596, file: !1, line: 384, type: !24)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bVel", scope: !596, file: !1, line: 384, type: !24)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p1", scope: !596, file: !1, line: 385, type: !52)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p2", scope: !596, file: !1, line: 385, type: !52)
!637 = !DISubprogram(name: "get_coordnum_fp", scope: !1, file: !1, line: 354, type: !638, isLocal: true, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*, i32*)* @get_coordnum_fp, variables: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !25, !52, !176}
!640 = !{!641, !642, !643, !644}
!641 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !637, file: !1, line: 354, type: !25)
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !637, file: !1, line: 354, type: !52)
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 3, scope: !637, file: !1, line: 354, type: !176)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !637, file: !1, line: 356, type: !610)
!645 = !DISubprogram(name: "copy_mat", scope: !589, file: !589, line: 297, type: !646, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, variables: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !269, !269}
!648 = !{!649, !650}
!649 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !645, file: !589, line: 297, type: !269)
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !645, file: !589, line: 297, type: !269)
!651 = !DISubprogram(name: "copy_rvec", scope: !589, file: !589, line: 270, type: !652, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, variables: !656)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !654, !655}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!656 = !{!657, !658}
!657 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !651, file: !589, line: 270, type: !654)
!658 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !651, file: !589, line: 270, type: !655)
!659 = !DISubprogram(name: "write_conf", scope: !1, file: !1, line: 730, type: !332, isLocal: true, isDefinition: true, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: true, variables: !660)
!660 = !{!661, !662, !663, !664, !665, !666}
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outfile", arg: 1, scope: !659, file: !1, line: 730, type: !52)
!662 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !659, file: !1, line: 730, type: !52)
!663 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 3, scope: !659, file: !1, line: 730, type: !121)
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !659, file: !1, line: 731, type: !198)
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 5, scope: !659, file: !1, line: 731, type: !198)
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 6, scope: !659, file: !1, line: 731, type: !269)
!667 = !DISubprogram(name: "get_coordnum", scope: !1, file: !1, line: 363, type: !345, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, variables: !668)
!668 = !{!669, !670, !671, !672}
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "infile", arg: 1, scope: !667, file: !1, line: 363, type: !52)
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !667, file: !1, line: 363, type: !176)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !667, file: !1, line: 365, type: !25)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "title", scope: !667, file: !1, line: 366, type: !254)
!673 = !DISubprogram(name: "read_whole_conf", scope: !1, file: !1, line: 532, type: !332, isLocal: true, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: true, variables: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682}
!675 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "infile", arg: 1, scope: !673, file: !1, line: 532, type: !52)
!676 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !673, file: !1, line: 532, type: !52)
!677 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 3, scope: !673, file: !1, line: 533, type: !121)
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !673, file: !1, line: 533, type: !198)
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 5, scope: !673, file: !1, line: 533, type: !198)
!680 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 6, scope: !673, file: !1, line: 533, type: !269)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !673, file: !1, line: 535, type: !25)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndec", scope: !673, file: !1, line: 536, type: !24)
!683 = !{!684, !685, !686}
!684 = !DIGlobalVariable(name: "symtab", scope: !94, file: !1, line: 179, type: !550, isLocal: true, isDefinition: true, variable: %struct.t_symtab** @read_g96_conf.symtab)
!685 = !DIGlobalVariable(name: "line", scope: !94, file: !1, line: 180, type: !610, isLocal: true, isDefinition: true, variable: [4097 x i8]* @read_g96_conf.line)
!686 = !DIGlobalVariable(name: "symtab", scope: !596, file: !1, line: 376, type: !550, isLocal: true, isDefinition: true, variable: %struct.t_symtab** @get_w_conf.symtab)
!687 = !{}
!688 = !{i32 2, !"Dwarf Version", i32 2}
!689 = !{i32 2, !"Debug Info Version", i32 700000003}
!690 = !{i32 1, !"PIC Level", i32 2}
!691 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!692 = !DIExpression()
!693 = !DILocation(line: 348, column: 40, scope: !20)
!694 = !DILocation(line: 348, column: 50, scope: !20)
!695 = !DILocation(line: 349, column: 12, scope: !696)
!696 = distinct !DILexicalBlock(scope: !20, file: !21, line: 349, column: 6)
!697 = !DILocation(line: 349, column: 6, scope: !696)
!698 = !{!699, !703, i64 12}
!699 = !{!"__sFILE", !700, i64 0, !703, i64 8, !703, i64 12, !704, i64 16, !704, i64 18, !705, i64 24, !703, i64 40, !700, i64 48, !700, i64 56, !700, i64 64, !700, i64 72, !700, i64 80, !705, i64 88, !700, i64 104, !703, i64 112, !701, i64 116, !701, i64 119, !705, i64 120, !703, i64 136, !706, i64 144}
!700 = !{!"any pointer", !701, i64 0}
!701 = !{!"omnipotent char", !702, i64 0}
!702 = !{!"Simple C/C++ TBAA"}
!703 = !{!"int", !701, i64 0}
!704 = !{!"short", !701, i64 0}
!705 = !{!"__sbuf", !700, i64 0, !703, i64 8}
!706 = !{!"long long", !701, i64 0}
!707 = !DILocation(line: 349, column: 15, scope: !696)
!708 = !DILocation(line: 349, column: 20, scope: !696)
!709 = !DILocation(line: 350, column: 10, scope: !696)
!710 = !DILocation(line: 349, column: 38, scope: !696)
!711 = !{!699, !703, i64 40}
!712 = !DILocation(line: 349, column: 31, scope: !696)
!713 = !DILocation(line: 349, column: 59, scope: !696)
!714 = !DILocation(line: 349, column: 47, scope: !696)
!715 = !DILocation(line: 350, column: 23, scope: !696)
!716 = !DILocation(line: 350, column: 16, scope: !696)
!717 = !DILocation(line: 350, column: 18, scope: !696)
!718 = !{!699, !700, i64 0}
!719 = !DILocation(line: 350, column: 21, scope: !696)
!720 = !{!701, !701, i64 0}
!721 = !DILocation(line: 350, column: 3, scope: !696)
!722 = !DILocation(line: 352, column: 11, scope: !696)
!723 = !DILocation(line: 352, column: 3, scope: !696)
!724 = !DILocation(line: 353, column: 1, scope: !20)
!725 = !DILocation(line: 114, column: 15, scope: !88)
!726 = !DILocation(line: 116, column: 20, scope: !88)
!727 = !DILocation(line: 116, column: 12, scope: !88)
!728 = !DILocation(line: 116, column: 57, scope: !88)
!729 = !DILocation(line: 116, column: 45, scope: !88)
!730 = !DILocation(line: 116, column: 5, scope: !88)
!731 = !DILocation(line: 177, column: 25, scope: !94)
!732 = !DILocation(line: 177, column: 34, scope: !94)
!733 = !DILocation(line: 177, column: 53, scope: !94)
!734 = !DILocation(line: 186, column: 15, scope: !94)
!735 = !DILocation(line: 186, column: 25, scope: !94)
!736 = !DILocation(line: 188, column: 3, scope: !94)
!737 = !DILocation(line: 190, column: 8, scope: !738)
!738 = distinct !DILexicalBlock(scope: !94, file: !1, line: 190, column: 7)
!739 = !{!700, !700, i64 0}
!740 = !DILocation(line: 62, column: 10, scope: !547, inlinedAt: !741)
!741 = distinct !DILocation(line: 235, column: 11, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !1, line: 232, column: 20)
!743 = distinct !DILexicalBlock(scope: !744, file: !1, line: 232, column: 11)
!744 = distinct !DILexicalBlock(scope: !745, file: !1, line: 231, column: 15)
!745 = distinct !DILexicalBlock(scope: !746, file: !1, line: 231, column: 9)
!746 = distinct !DILexicalBlock(scope: !94, file: !1, line: 213, column: 6)
!747 = !DILocation(line: 62, column: 22, scope: !547, inlinedAt: !741)
!748 = !DILocation(line: 190, column: 7, scope: !94)
!749 = !DILocation(line: 191, column: 5, scope: !750)
!750 = distinct !DILexicalBlock(scope: !738, file: !1, line: 190, column: 16)
!751 = !DILocation(line: 192, column: 5, scope: !750)
!752 = !DILocation(line: 193, column: 3, scope: !750)
!753 = !DILocation(line: 183, column: 10, scope: !94)
!754 = !DILocation(line: 197, column: 7, scope: !94)
!755 = !DILocation(line: 198, column: 18, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !1, line: 197, column: 17)
!757 = distinct !DILexicalBlock(scope: !94, file: !1, line: 197, column: 7)
!758 = !{!759, !703, i64 24}
!759 = !{!"", !703, i64 0, !703, i64 4, !703, i64 8, !760, i64 12, !760, i64 16, !760, i64 20, !703, i64 24, !700, i64 32, !703, i64 40, !703, i64 44, !703, i64 48, !760, i64 52, !703, i64 56, !760, i64 60, !703, i64 64, !700, i64 72, !703, i64 80, !760, i64 84, !703, i64 88, !700, i64 96, !703, i64 104, !700, i64 112, !703, i64 120, !700, i64 128, !703, i64 136, !701, i64 140}
!760 = !{!"float", !701, i64 0}
!761 = !DILocation(line: 198, column: 14, scope: !756)
!762 = !DILocation(line: 198, column: 25, scope: !756)
!763 = !DILocation(line: 198, column: 28, scope: !756)
!764 = !DILocation(line: 198, column: 5, scope: !756)
!765 = !DILocation(line: 199, column: 21, scope: !756)
!766 = !DILocation(line: 199, column: 42, scope: !756)
!767 = !DILocation(line: 199, column: 18, scope: !756)
!768 = !DILocation(line: 200, column: 13, scope: !769)
!769 = distinct !DILexicalBlock(scope: !756, file: !1, line: 200, column: 9)
!770 = !{!759, !700, i64 32}
!771 = !DILocation(line: 200, column: 9, scope: !769)
!772 = !DILocation(line: 200, column: 9, scope: !756)
!773 = !DILocation(line: 201, column: 7, scope: !769)
!774 = !DILocation(line: 203, column: 21, scope: !756)
!775 = !DILocation(line: 203, column: 18, scope: !756)
!776 = !DILocation(line: 203, column: 5, scope: !756)
!777 = !DILocation(line: 204, column: 15, scope: !756)
!778 = !DILocation(line: 204, column: 34, scope: !756)
!779 = !DILocation(line: 205, column: 5, scope: !756)
!780 = !DILocation(line: 206, column: 3, scope: !756)
!781 = !DILocation(line: 220, column: 16, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !1, line: 220, column: 11)
!783 = distinct !DILexicalBlock(scope: !784, file: !1, line: 219, column: 16)
!784 = distinct !DILexicalBlock(scope: !746, file: !1, line: 219, column: 9)
!785 = !DILocation(line: 220, column: 30, scope: !782)
!786 = !DILocation(line: 221, column: 6, scope: !787)
!787 = distinct !DILexicalBlock(scope: !782, file: !1, line: 220, column: 34)
!788 = !DILocation(line: 226, column: 32, scope: !787)
!789 = !DILocation(line: 227, column: 6, scope: !787)
!790 = !DILocation(line: 233, column: 6, scope: !742)
!791 = !DILocation(line: 56, column: 30, scope: !547, inlinedAt: !741)
!792 = !DILocation(line: 62, column: 3, scope: !547, inlinedAt: !741)
!793 = !DILocation(line: 66, column: 17, scope: !547, inlinedAt: !741)
!794 = !DILocation(line: 68, column: 15, scope: !547, inlinedAt: !741)
!795 = !DILocation(line: 116, column: 10, scope: !796, inlinedAt: !741)
!796 = distinct !DILexicalBlock(scope: !797, file: !1, line: 116, column: 6)
!797 = distinct !DILexicalBlock(scope: !798, file: !1, line: 82, column: 39)
!798 = distinct !DILexicalBlock(scope: !799, file: !1, line: 82, column: 11)
!799 = distinct !DILexicalBlock(scope: !800, file: !1, line: 80, column: 45)
!800 = distinct !DILexicalBlock(scope: !801, file: !1, line: 72, column: 15)
!801 = distinct !DILexicalBlock(scope: !547, file: !1, line: 72, column: 7)
!802 = !DILocation(line: 100, column: 6, scope: !803, inlinedAt: !741)
!803 = distinct !DILexicalBlock(scope: !804, file: !1, line: 93, column: 16)
!804 = distinct !DILexicalBlock(scope: !805, file: !1, line: 91, column: 8)
!805 = distinct !DILexicalBlock(scope: !806, file: !1, line: 90, column: 13)
!806 = distinct !DILexicalBlock(scope: !797, file: !1, line: 90, column: 6)
!807 = !DILocation(line: 98, column: 8, scope: !808, inlinedAt: !741)
!808 = distinct !DILexicalBlock(scope: !809, file: !1, line: 96, column: 11)
!809 = distinct !DILexicalBlock(scope: !803, file: !1, line: 94, column: 10)
!810 = !DILocation(line: 239, column: 13, scope: !811)
!811 = distinct !DILexicalBlock(scope: !746, file: !1, line: 239, column: 9)
!812 = !DILocation(line: 240, column: 11, scope: !813)
!813 = distinct !DILexicalBlock(scope: !811, file: !1, line: 239, column: 24)
!814 = !DILocation(line: 135, column: 30, scope: !573, inlinedAt: !815)
!815 = distinct !DILocation(line: 241, column: 16, scope: !813)
!816 = !DILocation(line: 214, column: 15, scope: !746)
!817 = !DILocation(line: 214, column: 39, scope: !746)
!818 = !DILocation(line: 182, column: 19, scope: !94)
!819 = !DILocation(line: 215, column: 15, scope: !746)
!820 = !DILocation(line: 215, column: 39, scope: !746)
!821 = !DILocation(line: 182, column: 25, scope: !94)
!822 = !DILocation(line: 216, column: 22, scope: !746)
!823 = !DILocation(line: 216, column: 26, scope: !746)
!824 = !DILocation(line: 216, column: 53, scope: !746)
!825 = !DILocation(line: 182, column: 32, scope: !94)
!826 = !DILocation(line: 217, column: 15, scope: !746)
!827 = !DILocation(line: 217, column: 42, scope: !746)
!828 = !DILocation(line: 182, column: 37, scope: !94)
!829 = !DILocation(line: 218, column: 15, scope: !746)
!830 = !DILocation(line: 218, column: 34, scope: !746)
!831 = !DILocation(line: 219, column: 9, scope: !746)
!832 = !{!759, !703, i64 48}
!833 = !DILocation(line: 220, column: 12, scope: !782)
!834 = !DILocation(line: 220, column: 22, scope: !782)
!835 = !{!759, !703, i64 88}
!836 = !DILocation(line: 220, column: 26, scope: !782)
!837 = !DILocation(line: 220, column: 11, scope: !783)
!838 = !DILocation(line: 221, column: 12, scope: !787)
!839 = !{!759, !703, i64 40}
!840 = !DILocation(line: 222, column: 12, scope: !787)
!841 = !DILocation(line: 223, column: 2, scope: !787)
!842 = !DILocation(line: 224, column: 17, scope: !787)
!843 = !DILocation(line: 224, column: 40, scope: !787)
!844 = !DILocation(line: 182, column: 52, scope: !94)
!845 = !DILocation(line: 225, column: 20, scope: !787)
!846 = !DILocation(line: 225, column: 32, scope: !787)
!847 = !DILocation(line: 184, column: 10, scope: !94)
!848 = !DILocation(line: 226, column: 2, scope: !787)
!849 = !DILocation(line: 227, column: 13, scope: !787)
!850 = !{!851, !851, i64 0}
!851 = !{!"double", !701, i64 0}
!852 = !DILocation(line: 227, column: 11, scope: !787)
!853 = !{!759, !760, i64 52}
!854 = !DILocation(line: 228, column: 7, scope: !787)
!855 = !DILocation(line: 231, column: 9, scope: !746)
!856 = !DILocation(line: 232, column: 16, scope: !743)
!857 = !DILocation(line: 232, column: 12, scope: !743)
!858 = !DILocation(line: 232, column: 11, scope: !744)
!859 = !DILocation(line: 233, column: 13, scope: !742)
!860 = !{!759, !703, i64 64}
!861 = !DILocation(line: 234, column: 13, scope: !742)
!862 = !DILocation(line: 235, column: 29, scope: !742)
!863 = !{!759, !703, i64 8}
!864 = !DILocation(line: 61, column: 10, scope: !547, inlinedAt: !741)
!865 = !{!759, !700, i64 72}
!866 = !DILocation(line: 59, column: 12, scope: !547, inlinedAt: !741)
!867 = !DILocation(line: 61, column: 18, scope: !547, inlinedAt: !741)
!868 = !DILocation(line: 72, column: 7, scope: !547, inlinedAt: !741)
!869 = !DILocation(line: 235, column: 11, scope: !742)
!870 = !DILocation(line: 61, column: 43, scope: !547, inlinedAt: !741)
!871 = !DILocation(line: 61, column: 36, scope: !547, inlinedAt: !741)
!872 = !DILocation(line: 60, column: 10, scope: !547, inlinedAt: !741)
!873 = !DILocation(line: 83, column: 17, scope: !874, inlinedAt: !741)
!874 = distinct !DILexicalBlock(scope: !797, file: !1, line: 83, column: 6)
!875 = !DILocation(line: 86, column: 15, scope: !876, inlinedAt: !741)
!876 = distinct !DILexicalBlock(scope: !797, file: !1, line: 86, column: 6)
!877 = !DILocation(line: 90, column: 6, scope: !806, inlinedAt: !741)
!878 = !DILocation(line: 102, column: 11, scope: !805, inlinedAt: !741)
!879 = !DILocation(line: 114, column: 11, scope: !805, inlinedAt: !741)
!880 = !DILocation(line: 105, column: 27, scope: !881, inlinedAt: !741)
!881 = distinct !DILexicalBlock(scope: !882, file: !1, line: 105, column: 10)
!882 = distinct !DILexicalBlock(scope: !883, file: !1, line: 103, column: 25)
!883 = distinct !DILexicalBlock(scope: !805, file: !1, line: 103, column: 8)
!884 = !DILocation(line: 108, column: 13, scope: !882, inlinedAt: !741)
!885 = !DILocation(line: 110, column: 26, scope: !886, inlinedAt: !741)
!886 = distinct !DILexicalBlock(scope: !882, file: !1, line: 110, column: 10)
!887 = !DILocation(line: 80, column: 5, scope: !800, inlinedAt: !741)
!888 = !DILocation(line: 80, column: 13, scope: !800, inlinedAt: !741)
!889 = !DILocation(line: 80, column: 18, scope: !800, inlinedAt: !741)
!890 = !DILocation(line: 80, column: 21, scope: !800, inlinedAt: !741)
!891 = !DILocation(line: 81, column: 15, scope: !799, inlinedAt: !741)
!892 = !DILocation(line: 81, column: 37, scope: !799, inlinedAt: !741)
!893 = !DILocation(line: 82, column: 30, scope: !798, inlinedAt: !741)
!894 = !DILocation(line: 82, column: 18, scope: !798, inlinedAt: !741)
!895 = !DILocation(line: 64, column: 10, scope: !547, inlinedAt: !741)
!896 = !DILocation(line: 64, column: 14, scope: !547, inlinedAt: !741)
!897 = !DILocation(line: 64, column: 18, scope: !547, inlinedAt: !741)
!898 = !DILocation(line: 83, column: 6, scope: !874, inlinedAt: !741)
!899 = !DILocation(line: 83, column: 58, scope: !874, inlinedAt: !741)
!900 = !DILocation(line: 83, column: 6, scope: !797, inlinedAt: !741)
!901 = !DILocation(line: 85, column: 15, scope: !874, inlinedAt: !741)
!902 = !DILocation(line: 84, column: 4, scope: !874, inlinedAt: !741)
!903 = !DILocation(line: 86, column: 33, scope: !876, inlinedAt: !741)
!904 = !DILocation(line: 86, column: 22, scope: !876, inlinedAt: !741)
!905 = !DILocation(line: 87, column: 4, scope: !876, inlinedAt: !741)
!906 = !DILocation(line: 90, column: 6, scope: !797, inlinedAt: !741)
!907 = !DILocation(line: 91, column: 21, scope: !804, inlinedAt: !741)
!908 = !DILocation(line: 91, column: 17, scope: !804, inlinedAt: !741)
!909 = !DILocation(line: 91, column: 28, scope: !804, inlinedAt: !741)
!910 = !DILocation(line: 61, column: 25, scope: !547, inlinedAt: !741)
!911 = !DILocation(line: 61, column: 30, scope: !547, inlinedAt: !741)
!912 = !DILocation(line: 63, column: 10, scope: !547, inlinedAt: !741)
!913 = !DILocation(line: 63, column: 13, scope: !547, inlinedAt: !741)
!914 = !DILocation(line: 92, column: 9, scope: !804, inlinedAt: !741)
!915 = !DILocation(line: 93, column: 9, scope: !804, inlinedAt: !741)
!916 = !DILocation(line: 91, column: 8, scope: !805, inlinedAt: !741)
!917 = !DILocation(line: 94, column: 16, scope: !809, inlinedAt: !741)
!918 = !DILocation(line: 94, column: 10, scope: !803, inlinedAt: !741)
!919 = !DILocation(line: 95, column: 14, scope: !809, inlinedAt: !741)
!920 = !{!703, !703, i64 0}
!921 = !DILocation(line: 95, column: 8, scope: !809, inlinedAt: !741)
!922 = !DILocation(line: 97, column: 17, scope: !808, inlinedAt: !741)
!923 = !DILocation(line: 101, column: 4, scope: !803, inlinedAt: !741)
!924 = !DILocation(line: 102, column: 28, scope: !805, inlinedAt: !741)
!925 = !{!926, !700, i64 16}
!926 = !{!"", !703, i64 0, !700, i64 8, !700, i64 16, !700, i64 24, !700, i64 32, !703, i64 40, !700, i64 48, !703, i64 56, !700, i64 64, !927, i64 72, !701, i64 1128, !700, i64 1272}
!927 = !{!"", !701, i64 0, !703, i64 1024, !700, i64 1032, !703, i64 1040, !700, i64 1048}
!928 = !DILocation(line: 102, column: 4, scope: !805, inlinedAt: !741)
!929 = !DILocation(line: 102, column: 27, scope: !805, inlinedAt: !741)
!930 = !DILocation(line: 103, column: 8, scope: !883, inlinedAt: !741)
!931 = !DILocation(line: 103, column: 14, scope: !883, inlinedAt: !741)
!932 = !DILocation(line: 103, column: 8, scope: !805, inlinedAt: !741)
!933 = !{!926, !703, i64 0}
!934 = !DILocation(line: 105, column: 17, scope: !881, inlinedAt: !741)
!935 = !DILocation(line: 105, column: 10, scope: !882, inlinedAt: !741)
!936 = !DILocation(line: 106, column: 8, scope: !881, inlinedAt: !741)
!937 = !DILocation(line: 108, column: 31, scope: !882, inlinedAt: !741)
!938 = !DILocation(line: 108, column: 6, scope: !882, inlinedAt: !741)
!939 = !{!926, !700, i64 48}
!940 = !DILocation(line: 108, column: 29, scope: !882, inlinedAt: !741)
!941 = !DILocation(line: 109, column: 12, scope: !882, inlinedAt: !741)
!942 = !{!926, !703, i64 40}
!943 = !DILocation(line: 110, column: 17, scope: !886, inlinedAt: !741)
!944 = !DILocation(line: 110, column: 10, scope: !882, inlinedAt: !741)
!945 = !DILocation(line: 111, column: 20, scope: !886, inlinedAt: !741)
!946 = !DILocation(line: 111, column: 8, scope: !886, inlinedAt: !741)
!947 = !DILocation(line: 113, column: 10, scope: !805, inlinedAt: !741)
!948 = !DILocation(line: 114, column: 37, scope: !805, inlinedAt: !741)
!949 = !{!926, !700, i64 8}
!950 = !DILocation(line: 114, column: 24, scope: !805, inlinedAt: !741)
!951 = !DILocation(line: 114, column: 30, scope: !805, inlinedAt: !741)
!952 = !{!953, !703, i64 24}
!953 = !{!"", !760, i64 0, !760, i64 4, !760, i64 8, !760, i64 12, !704, i64 16, !704, i64 18, !703, i64 20, !703, i64 24, !701, i64 28, !701, i64 37}
!954 = !DILocation(line: 115, column: 2, scope: !805, inlinedAt: !741)
!955 = !{!759, !700, i64 96}
!956 = !DILocation(line: 116, column: 6, scope: !796, inlinedAt: !741)
!957 = !DILocation(line: 116, column: 6, scope: !797, inlinedAt: !741)
!958 = !DILocation(line: 117, column: 23, scope: !959, inlinedAt: !741)
!959 = distinct !DILexicalBlock(scope: !796, file: !1, line: 116, column: 13)
!960 = !DILocation(line: 117, column: 4, scope: !959, inlinedAt: !741)
!961 = !DILocation(line: 117, column: 21, scope: !959, inlinedAt: !741)
!962 = !{!760, !760, i64 0}
!963 = !DILocation(line: 118, column: 23, scope: !959, inlinedAt: !741)
!964 = !DILocation(line: 118, column: 4, scope: !959, inlinedAt: !741)
!965 = !DILocation(line: 118, column: 21, scope: !959, inlinedAt: !741)
!966 = !DILocation(line: 119, column: 23, scope: !959, inlinedAt: !741)
!967 = !DILocation(line: 119, column: 4, scope: !959, inlinedAt: !741)
!968 = !DILocation(line: 119, column: 21, scope: !959, inlinedAt: !741)
!969 = !DILocation(line: 120, column: 2, scope: !959, inlinedAt: !741)
!970 = !DILocation(line: 122, column: 7, scope: !797, inlinedAt: !741)
!971 = !DILocation(line: 124, column: 35, scope: !972, inlinedAt: !741)
!972 = distinct !DILexicalBlock(scope: !800, file: !1, line: 124, column: 9)
!973 = !DILocation(line: 124, column: 25, scope: !972, inlinedAt: !741)
!974 = !DILocation(line: 125, column: 15, scope: !972, inlinedAt: !741)
!975 = !DILocation(line: 125, column: 7, scope: !972, inlinedAt: !741)
!976 = !DILocation(line: 130, column: 14, scope: !547, inlinedAt: !741)
!977 = !DILocation(line: 133, column: 1, scope: !547, inlinedAt: !741)
!978 = !DILocation(line: 236, column: 7, scope: !742)
!979 = !{!759, !700, i64 112}
!980 = !DILocation(line: 239, column: 9, scope: !811)
!981 = !DILocation(line: 239, column: 15, scope: !811)
!982 = !DILocation(line: 240, column: 14, scope: !813)
!983 = !{!759, !703, i64 104}
!984 = !DILocation(line: 139, column: 18, scope: !573, inlinedAt: !815)
!985 = !DILocation(line: 142, column: 17, scope: !573, inlinedAt: !815)
!986 = !DILocation(line: 139, column: 10, scope: !573, inlinedAt: !815)
!987 = !DILocation(line: 144, column: 7, scope: !573, inlinedAt: !815)
!988 = !DILocation(line: 145, column: 9, scope: !989, inlinedAt: !815)
!989 = distinct !DILexicalBlock(scope: !990, file: !1, line: 145, column: 9)
!990 = distinct !DILexicalBlock(scope: !991, file: !1, line: 144, column: 24)
!991 = distinct !DILexicalBlock(scope: !573, file: !1, line: 144, column: 7)
!992 = !DILocation(line: 145, column: 36, scope: !989, inlinedAt: !815)
!993 = !DILocation(line: 146, column: 7, scope: !989, inlinedAt: !815)
!994 = !DILocation(line: 138, column: 10, scope: !573, inlinedAt: !815)
!995 = !DILocation(line: 154, column: 17, scope: !996, inlinedAt: !815)
!996 = distinct !DILexicalBlock(scope: !997, file: !1, line: 154, column: 6)
!997 = distinct !DILexicalBlock(scope: !998, file: !1, line: 153, column: 38)
!998 = distinct !DILexicalBlock(scope: !999, file: !1, line: 153, column: 11)
!999 = distinct !DILexicalBlock(scope: !990, file: !1, line: 151, column: 45)
!1000 = !DILocation(line: 157, column: 15, scope: !1001, inlinedAt: !815)
!1001 = distinct !DILexicalBlock(scope: !997, file: !1, line: 157, column: 6)
!1002 = !DILocation(line: 151, column: 5, scope: !990, inlinedAt: !815)
!1003 = !DILocation(line: 241, column: 16, scope: !813)
!1004 = !DILocation(line: 151, column: 13, scope: !990, inlinedAt: !815)
!1005 = !DILocation(line: 151, column: 18, scope: !990, inlinedAt: !815)
!1006 = !DILocation(line: 151, column: 21, scope: !990, inlinedAt: !815)
!1007 = !DILocation(line: 152, column: 15, scope: !999, inlinedAt: !815)
!1008 = !DILocation(line: 152, column: 37, scope: !999, inlinedAt: !815)
!1009 = !DILocation(line: 153, column: 29, scope: !998, inlinedAt: !815)
!1010 = !DILocation(line: 153, column: 17, scope: !998, inlinedAt: !815)
!1011 = !DILocation(line: 140, column: 10, scope: !573, inlinedAt: !815)
!1012 = !DILocation(line: 140, column: 14, scope: !573, inlinedAt: !815)
!1013 = !DILocation(line: 140, column: 18, scope: !573, inlinedAt: !815)
!1014 = !DILocation(line: 154, column: 6, scope: !996, inlinedAt: !815)
!1015 = !DILocation(line: 154, column: 58, scope: !996, inlinedAt: !815)
!1016 = !DILocation(line: 154, column: 6, scope: !997, inlinedAt: !815)
!1017 = !DILocation(line: 156, column: 15, scope: !996, inlinedAt: !815)
!1018 = !DILocation(line: 155, column: 4, scope: !996, inlinedAt: !815)
!1019 = !DILocation(line: 157, column: 33, scope: !1001, inlinedAt: !815)
!1020 = !DILocation(line: 157, column: 22, scope: !1001, inlinedAt: !815)
!1021 = !DILocation(line: 158, column: 4, scope: !1001, inlinedAt: !815)
!1022 = !DILocation(line: 160, column: 10, scope: !1023, inlinedAt: !815)
!1023 = distinct !DILexicalBlock(scope: !997, file: !1, line: 160, column: 6)
!1024 = !DILocation(line: 160, column: 6, scope: !1023, inlinedAt: !815)
!1025 = !DILocation(line: 160, column: 6, scope: !997, inlinedAt: !815)
!1026 = !DILocation(line: 161, column: 23, scope: !1027, inlinedAt: !815)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 160, column: 13)
!1028 = !DILocation(line: 161, column: 4, scope: !1027, inlinedAt: !815)
!1029 = !DILocation(line: 161, column: 21, scope: !1027, inlinedAt: !815)
!1030 = !DILocation(line: 162, column: 23, scope: !1027, inlinedAt: !815)
!1031 = !DILocation(line: 162, column: 4, scope: !1027, inlinedAt: !815)
!1032 = !DILocation(line: 162, column: 21, scope: !1027, inlinedAt: !815)
!1033 = !DILocation(line: 163, column: 23, scope: !1027, inlinedAt: !815)
!1034 = !DILocation(line: 163, column: 4, scope: !1027, inlinedAt: !815)
!1035 = !DILocation(line: 163, column: 21, scope: !1027, inlinedAt: !815)
!1036 = !DILocation(line: 164, column: 2, scope: !1027, inlinedAt: !815)
!1037 = !DILocation(line: 166, column: 7, scope: !997, inlinedAt: !815)
!1038 = !DILocation(line: 168, column: 36, scope: !1039, inlinedAt: !815)
!1039 = distinct !DILexicalBlock(scope: !990, file: !1, line: 168, column: 9)
!1040 = !DILocation(line: 168, column: 25, scope: !1039, inlinedAt: !815)
!1041 = !DILocation(line: 169, column: 15, scope: !1039, inlinedAt: !815)
!1042 = !DILocation(line: 169, column: 7, scope: !1039, inlinedAt: !815)
!1043 = !DILocation(line: 174, column: 3, scope: !573, inlinedAt: !815)
!1044 = !DILocation(line: 242, column: 5, scope: !813)
!1045 = !DILocation(line: 243, column: 9, scope: !746)
!1046 = !DILocation(line: 244, column: 11, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 243, column: 15)
!1048 = distinct !DILexicalBlock(scope: !746, file: !1, line: 243, column: 9)
!1049 = !DILocation(line: 244, column: 16, scope: !1047)
!1050 = !{!759, !703, i64 136}
!1051 = !DILocation(line: 245, column: 21, scope: !1047)
!1052 = !DILocation(line: 336, column: 14, scope: !588, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 245, column: 7, scope: !1047)
!1054 = !DILocation(line: 341, column: 1, scope: !588, inlinedAt: !1053)
!1055 = !DILocation(line: 338, column: 22, scope: !588, inlinedAt: !1053)
!1056 = !DILocation(line: 182, column: 47, scope: !94)
!1057 = !DILocation(line: 254, column: 4, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 249, column: 33)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 249, column: 6)
!1060 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 247, column: 47)
!1061 = !DILocation(line: 255, column: 4, scope: !1058)
!1062 = !DILocation(line: 256, column: 4, scope: !1058)
!1063 = !DILocation(line: 258, column: 6, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 257, column: 18)
!1065 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 257, column: 8)
!1066 = !DILocation(line: 259, column: 6, scope: !1064)
!1067 = !DILocation(line: 260, column: 6, scope: !1064)
!1068 = !DILocation(line: 261, column: 6, scope: !1064)
!1069 = !DILocation(line: 262, column: 6, scope: !1064)
!1070 = !DILocation(line: 263, column: 6, scope: !1064)
!1071 = !DILocation(line: 247, column: 20, scope: !1047)
!1072 = !DILocation(line: 247, column: 23, scope: !1047)
!1073 = !DILocation(line: 247, column: 7, scope: !1047)
!1074 = !DILocation(line: 248, column: 10, scope: !1060)
!1075 = !DILocation(line: 248, column: 32, scope: !1060)
!1076 = !DILocation(line: 249, column: 24, scope: !1059)
!1077 = !DILocation(line: 249, column: 12, scope: !1059)
!1078 = !DILocation(line: 184, column: 14, scope: !94)
!1079 = !DILocation(line: 184, column: 18, scope: !94)
!1080 = !DILocation(line: 184, column: 22, scope: !94)
!1081 = !DILocation(line: 184, column: 26, scope: !94)
!1082 = !DILocation(line: 184, column: 30, scope: !94)
!1083 = !DILocation(line: 184, column: 34, scope: !94)
!1084 = !DILocation(line: 184, column: 38, scope: !94)
!1085 = !DILocation(line: 184, column: 42, scope: !94)
!1086 = !DILocation(line: 250, column: 10, scope: !1058)
!1087 = !DILocation(line: 183, column: 17, scope: !94)
!1088 = !DILocation(line: 252, column: 12, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 252, column: 8)
!1090 = !DILocation(line: 252, column: 8, scope: !1058)
!1091 = !DILocation(line: 253, column: 6, scope: !1089)
!1092 = !DILocation(line: 254, column: 22, scope: !1058)
!1093 = !DILocation(line: 254, column: 20, scope: !1058)
!1094 = !DILocation(line: 255, column: 22, scope: !1058)
!1095 = !DILocation(line: 255, column: 20, scope: !1058)
!1096 = !DILocation(line: 256, column: 22, scope: !1058)
!1097 = !DILocation(line: 256, column: 20, scope: !1058)
!1098 = !DILocation(line: 257, column: 12, scope: !1065)
!1099 = !DILocation(line: 257, column: 8, scope: !1058)
!1100 = !DILocation(line: 258, column: 24, scope: !1064)
!1101 = !DILocation(line: 258, column: 22, scope: !1064)
!1102 = !DILocation(line: 259, column: 24, scope: !1064)
!1103 = !DILocation(line: 259, column: 22, scope: !1064)
!1104 = !DILocation(line: 260, column: 24, scope: !1064)
!1105 = !DILocation(line: 260, column: 22, scope: !1064)
!1106 = !DILocation(line: 261, column: 24, scope: !1064)
!1107 = !DILocation(line: 261, column: 22, scope: !1064)
!1108 = !DILocation(line: 262, column: 24, scope: !1064)
!1109 = !DILocation(line: 262, column: 22, scope: !1064)
!1110 = !DILocation(line: 263, column: 24, scope: !1064)
!1111 = !DILocation(line: 263, column: 22, scope: !1064)
!1112 = !DILocation(line: 264, column: 4, scope: !1064)
!1113 = !DILocation(line: 269, column: 13, scope: !94)
!1114 = !DILocation(line: 269, column: 23, scope: !94)
!1115 = !DILocation(line: 269, column: 26, scope: !94)
!1116 = !DILocation(line: 269, column: 3, scope: !746)
!1117 = !DILocation(line: 271, column: 16, scope: !94)
!1118 = !DILocation(line: 271, column: 3, scope: !94)
!1119 = !DILocation(line: 273, column: 14, scope: !94)
!1120 = !DILocation(line: 275, column: 3, scope: !94)
!1121 = !DILocation(line: 278, column: 27, scope: !234)
!1122 = !DILocation(line: 278, column: 43, scope: !234)
!1123 = !DILocation(line: 279, column: 11, scope: !234)
!1124 = !DILocation(line: 279, column: 27, scope: !234)
!1125 = !DILocation(line: 284, column: 15, scope: !234)
!1126 = !DILocation(line: 281, column: 12, scope: !234)
!1127 = !DILocation(line: 286, column: 7, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !234, file: !1, line: 286, column: 7)
!1129 = !DILocation(line: 286, column: 7, scope: !234)
!1130 = !DILocation(line: 289, column: 16, scope: !1128)
!1131 = !DILocation(line: 282, column: 7, scope: !234)
!1132 = !DILocation(line: 291, column: 11, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !234, file: !1, line: 291, column: 7)
!1134 = !DILocation(line: 291, column: 7, scope: !1133)
!1135 = !DILocation(line: 291, column: 7, scope: !234)
!1136 = !DILocation(line: 292, column: 40, scope: !1133)
!1137 = !DILocation(line: 292, column: 5, scope: !1133)
!1138 = !DILocation(line: 293, column: 11, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !234, file: !1, line: 293, column: 7)
!1140 = !DILocation(line: 293, column: 7, scope: !1139)
!1141 = !DILocation(line: 293, column: 17, scope: !1139)
!1142 = !DILocation(line: 293, column: 24, scope: !1139)
!1143 = !DILocation(line: 293, column: 20, scope: !1139)
!1144 = !DILocation(line: 293, column: 7, scope: !234)
!1145 = !DILocation(line: 295, column: 51, scope: !1139)
!1146 = !{!759, !703, i64 44}
!1147 = !DILocation(line: 295, column: 60, scope: !1139)
!1148 = !DILocation(line: 295, column: 56, scope: !1139)
!1149 = !DILocation(line: 295, column: 5, scope: !1139)
!1150 = !DILocation(line: 296, column: 11, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !234, file: !1, line: 296, column: 7)
!1152 = !DILocation(line: 296, column: 7, scope: !1151)
!1153 = !DILocation(line: 296, column: 7, scope: !234)
!1154 = !DILocation(line: 297, column: 13, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 297, column: 9)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 296, column: 15)
!1157 = !DILocation(line: 297, column: 9, scope: !1155)
!1158 = !DILocation(line: 297, column: 9, scope: !1156)
!1159 = !DILocation(line: 298, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 297, column: 21)
!1161 = !DILocation(line: 282, column: 12, scope: !234)
!1162 = !DILocation(line: 299, column: 17, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 299, column: 7)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 299, column: 7)
!1165 = !DILocation(line: 299, column: 7, scope: !1164)
!1166 = !DILocation(line: 302, column: 10, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 299, column: 29)
!1168 = !DILocation(line: 302, column: 34, scope: !1167)
!1169 = !DILocation(line: 303, column: 11, scope: !1167)
!1170 = !DILocation(line: 304, column: 7, scope: !1167)
!1171 = !DILocation(line: 300, column: 6, scope: !1167)
!1172 = !DILocation(line: 300, column: 17, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 300, column: 6)
!1174 = !DILocation(line: 282, column: 14, scope: !234)
!1175 = !DILocation(line: 300, column: 13, scope: !1173)
!1176 = !DILocation(line: 302, column: 3, scope: !1167)
!1177 = !DILocation(line: 302, column: 18, scope: !1167)
!1178 = !DILocation(line: 302, column: 23, scope: !1167)
!1179 = !DILocation(line: 302, column: 27, scope: !1167)
!1180 = !DILocation(line: 302, column: 26, scope: !1167)
!1181 = !DILocation(line: 303, column: 4, scope: !1167)
!1182 = !DILocation(line: 303, column: 3, scope: !1167)
!1183 = !DILocation(line: 304, column: 3, scope: !1167)
!1184 = !DILocation(line: 304, column: 16, scope: !1167)
!1185 = !DILocation(line: 304, column: 29, scope: !1167)
!1186 = !DILocation(line: 301, column: 2, scope: !1167)
!1187 = !DILocation(line: 307, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 306, column: 12)
!1189 = !DILocation(line: 308, column: 17, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !1, line: 308, column: 7)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 308, column: 7)
!1192 = !DILocation(line: 308, column: 7, scope: !1191)
!1193 = !DILocation(line: 311, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 308, column: 29)
!1195 = !DILocation(line: 309, column: 6, scope: !1194)
!1196 = !DILocation(line: 309, column: 17, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 309, column: 6)
!1198 = !DILocation(line: 309, column: 13, scope: !1197)
!1199 = !DILocation(line: 311, column: 3, scope: !1194)
!1200 = !DILocation(line: 311, column: 16, scope: !1194)
!1201 = !DILocation(line: 311, column: 29, scope: !1194)
!1202 = !DILocation(line: 310, column: 2, scope: !1194)
!1203 = !DILocation(line: 314, column: 5, scope: !1156)
!1204 = !DILocation(line: 315, column: 3, scope: !1156)
!1205 = !DILocation(line: 316, column: 11, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !234, file: !1, line: 316, column: 7)
!1207 = !DILocation(line: 316, column: 7, scope: !1206)
!1208 = !DILocation(line: 316, column: 7, scope: !234)
!1209 = !DILocation(line: 317, column: 9, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 317, column: 9)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 316, column: 15)
!1212 = !DILocation(line: 317, column: 9, scope: !1211)
!1213 = !DILocation(line: 318, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 317, column: 16)
!1215 = !DILocation(line: 319, column: 17, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 319, column: 7)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 319, column: 7)
!1218 = !DILocation(line: 319, column: 7, scope: !1217)
!1219 = !DILocation(line: 322, column: 10, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 319, column: 29)
!1221 = !DILocation(line: 322, column: 34, scope: !1220)
!1222 = !DILocation(line: 323, column: 11, scope: !1220)
!1223 = !DILocation(line: 324, column: 7, scope: !1220)
!1224 = !DILocation(line: 320, column: 6, scope: !1220)
!1225 = !DILocation(line: 320, column: 17, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1220, file: !1, line: 320, column: 6)
!1227 = !DILocation(line: 320, column: 13, scope: !1226)
!1228 = !DILocation(line: 322, column: 3, scope: !1220)
!1229 = !DILocation(line: 322, column: 18, scope: !1220)
!1230 = !DILocation(line: 322, column: 23, scope: !1220)
!1231 = !DILocation(line: 322, column: 27, scope: !1220)
!1232 = !DILocation(line: 322, column: 26, scope: !1220)
!1233 = !DILocation(line: 323, column: 4, scope: !1220)
!1234 = !DILocation(line: 323, column: 3, scope: !1220)
!1235 = !DILocation(line: 324, column: 3, scope: !1220)
!1236 = !DILocation(line: 324, column: 16, scope: !1220)
!1237 = !DILocation(line: 324, column: 29, scope: !1220)
!1238 = !DILocation(line: 321, column: 2, scope: !1220)
!1239 = !DILocation(line: 327, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 326, column: 12)
!1241 = !DILocation(line: 328, column: 17, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !1, line: 328, column: 7)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 328, column: 7)
!1244 = !DILocation(line: 328, column: 7, scope: !1243)
!1245 = !DILocation(line: 331, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 328, column: 29)
!1247 = !DILocation(line: 329, column: 6, scope: !1246)
!1248 = !DILocation(line: 329, column: 17, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !1, line: 329, column: 6)
!1250 = !DILocation(line: 329, column: 13, scope: !1249)
!1251 = !DILocation(line: 331, column: 3, scope: !1246)
!1252 = !DILocation(line: 331, column: 16, scope: !1246)
!1253 = !DILocation(line: 331, column: 29, scope: !1246)
!1254 = !DILocation(line: 330, column: 2, scope: !1246)
!1255 = !DILocation(line: 334, column: 5, scope: !1211)
!1256 = !DILocation(line: 335, column: 3, scope: !1211)
!1257 = !DILocation(line: 336, column: 11, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !234, file: !1, line: 336, column: 7)
!1259 = !DILocation(line: 336, column: 7, scope: !1258)
!1260 = !DILocation(line: 336, column: 7, scope: !234)
!1261 = !DILocation(line: 337, column: 5, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1258, file: !1, line: 336, column: 17)
!1263 = !DILocation(line: 339, column: 6, scope: !1262)
!1264 = !DILocation(line: 339, column: 22, scope: !1262)
!1265 = !DILocation(line: 339, column: 38, scope: !1262)
!1266 = !DILocation(line: 338, column: 5, scope: !1262)
!1267 = !DILocation(line: 340, column: 14, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 340, column: 9)
!1269 = !DILocation(line: 340, column: 9, scope: !1268)
!1270 = !DILocation(line: 340, column: 31, scope: !1268)
!1271 = !DILocation(line: 347, column: 24, scope: !1268)
!1272 = !DILocation(line: 340, column: 46, scope: !1268)
!1273 = !DILocation(line: 341, column: 2, scope: !1268)
!1274 = !DILocation(line: 341, column: 24, scope: !1268)
!1275 = !DILocation(line: 341, column: 39, scope: !1268)
!1276 = !DILocation(line: 342, column: 7, scope: !1268)
!1277 = !DILocation(line: 342, column: 2, scope: !1268)
!1278 = !DILocation(line: 342, column: 24, scope: !1268)
!1279 = !DILocation(line: 342, column: 39, scope: !1268)
!1280 = !DILocation(line: 343, column: 7, scope: !1268)
!1281 = !DILocation(line: 343, column: 2, scope: !1268)
!1282 = !DILocation(line: 343, column: 24, scope: !1268)
!1283 = !DILocation(line: 343, column: 39, scope: !1268)
!1284 = !DILocation(line: 344, column: 7, scope: !1268)
!1285 = !DILocation(line: 344, column: 2, scope: !1268)
!1286 = !DILocation(line: 344, column: 24, scope: !1268)
!1287 = !DILocation(line: 344, column: 39, scope: !1268)
!1288 = !DILocation(line: 345, column: 7, scope: !1268)
!1289 = !DILocation(line: 345, column: 2, scope: !1268)
!1290 = !DILocation(line: 345, column: 24, scope: !1268)
!1291 = !DILocation(line: 340, column: 9, scope: !1262)
!1292 = !DILocation(line: 347, column: 8, scope: !1268)
!1293 = !DILocation(line: 347, column: 40, scope: !1268)
!1294 = !DILocation(line: 348, column: 8, scope: !1268)
!1295 = !DILocation(line: 348, column: 24, scope: !1268)
!1296 = !DILocation(line: 348, column: 40, scope: !1268)
!1297 = !DILocation(line: 346, column: 7, scope: !1268)
!1298 = !DILocation(line: 349, column: 5, scope: !1262)
!1299 = !DILocation(line: 350, column: 5, scope: !1262)
!1300 = !DILocation(line: 351, column: 3, scope: !1262)
!1301 = !DILocation(line: 352, column: 1, scope: !234)
!1302 = !DILocation(line: 565, column: 28, scope: !246)
!1303 = !DILocation(line: 565, column: 47, scope: !246)
!1304 = !DILocation(line: 567, column: 3, scope: !246)
!1305 = !DILocation(line: 568, column: 3, scope: !246)
!1306 = !DILocation(line: 568, column: 11, scope: !246)
!1307 = !DILocation(line: 572, column: 7, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !246, file: !1, line: 572, column: 7)
!1309 = !DILocation(line: 572, column: 7, scope: !246)
!1310 = !DILocation(line: 575, column: 16, scope: !246)
!1311 = !DILocation(line: 575, column: 9, scope: !246)
!1312 = !DILocation(line: 575, column: 11, scope: !246)
!1313 = !DILocation(line: 576, column: 3, scope: !246)
!1314 = !DILocation(line: 577, column: 18, scope: !246)
!1315 = !DILocation(line: 577, column: 9, scope: !246)
!1316 = !DILocation(line: 577, column: 13, scope: !246)
!1317 = !DILocation(line: 578, column: 3, scope: !246)
!1318 = !DILocation(line: 579, column: 3, scope: !246)
!1319 = !DILocation(line: 581, column: 59, scope: !246)
!1320 = !DILocation(line: 581, column: 65, scope: !246)
!1321 = !DILocation(line: 581, column: 67, scope: !246)
!1322 = !DILocation(line: 567, column: 11, scope: !246)
!1323 = !DILocation(line: 570, column: 11, scope: !246)
!1324 = !DILocation(line: 581, column: 12, scope: !246)
!1325 = !DILocation(line: 581, column: 7, scope: !246)
!1326 = !DILocation(line: 581, column: 10, scope: !246)
!1327 = !DILocation(line: 582, column: 7, scope: !246)
!1328 = !DILocation(line: 582, column: 13, scope: !246)
!1329 = !{!759, !703, i64 80}
!1330 = !DILocation(line: 583, column: 7, scope: !246)
!1331 = !DILocation(line: 583, column: 12, scope: !246)
!1332 = !{!759, !760, i64 84}
!1333 = !DILocation(line: 570, column: 16, scope: !246)
!1334 = !DILocation(line: 585, column: 14, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 585, column: 3)
!1336 = distinct !DILexicalBlock(scope: !246, file: !1, line: 585, column: 3)
!1337 = !DILocation(line: 585, column: 13, scope: !1335)
!1338 = !DILocation(line: 585, column: 3, scope: !1336)
!1339 = !DILocation(line: 586, column: 14, scope: !1335)
!1340 = !DILocation(line: 585, column: 21, scope: !1335)
!1341 = !DILocation(line: 587, column: 7, scope: !246)
!1342 = !DILocation(line: 587, column: 13, scope: !246)
!1343 = !DILocation(line: 588, column: 7, scope: !246)
!1344 = !DILocation(line: 588, column: 14, scope: !246)
!1345 = !DILocation(line: 589, column: 7, scope: !246)
!1346 = !DILocation(line: 589, column: 10, scope: !246)
!1347 = !DILocation(line: 590, column: 7, scope: !246)
!1348 = !DILocation(line: 590, column: 12, scope: !246)
!1349 = !DILocation(line: 592, column: 3, scope: !246)
!1350 = !DILocation(line: 593, column: 3, scope: !246)
!1351 = !DILocation(line: 594, column: 3, scope: !246)
!1352 = !DILocation(line: 596, column: 10, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !246, file: !1, line: 596, column: 7)
!1354 = !DILocation(line: 568, column: 26, scope: !246)
!1355 = !DILocation(line: 596, column: 30, scope: !1353)
!1356 = !DILocation(line: 596, column: 7, scope: !246)
!1357 = !DILocation(line: 597, column: 6, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 596, column: 39)
!1359 = !DILocation(line: 569, column: 11, scope: !246)
!1360 = !DILocation(line: 598, column: 9, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 598, column: 9)
!1362 = !DILocation(line: 598, column: 28, scope: !1361)
!1363 = !DILocation(line: 598, column: 9, scope: !1358)
!1364 = !DILocation(line: 599, column: 18, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 598, column: 33)
!1366 = !DILocation(line: 599, column: 11, scope: !1365)
!1367 = !DILocation(line: 599, column: 16, scope: !1365)
!1368 = !DILocation(line: 600, column: 11, scope: !1365)
!1369 = !DILocation(line: 600, column: 17, scope: !1365)
!1370 = !DILocation(line: 601, column: 5, scope: !1365)
!1371 = !DILocation(line: 602, column: 11, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 601, column: 12)
!1373 = !DILocation(line: 602, column: 16, scope: !1372)
!1374 = !DILocation(line: 603, column: 11, scope: !1372)
!1375 = !DILocation(line: 603, column: 17, scope: !1372)
!1376 = !DILocation(line: 607, column: 13, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !246, file: !1, line: 607, column: 7)
!1378 = !DILocation(line: 607, column: 23, scope: !1377)
!1379 = !DILocation(line: 607, column: 16, scope: !1377)
!1380 = !DILocation(line: 607, column: 7, scope: !246)
!1381 = !DILocation(line: 608, column: 5, scope: !1377)
!1382 = !DILocation(line: 611, column: 1, scope: !246)
!1383 = !DILocation(line: 373, column: 30, scope: !596)
!1384 = !DILocation(line: 373, column: 40, scope: !596)
!1385 = !DILocation(line: 373, column: 54, scope: !596)
!1386 = !DILocation(line: 374, column: 19, scope: !596)
!1387 = !DILocation(line: 374, column: 31, scope: !596)
!1388 = !DILocation(line: 374, column: 42, scope: !596)
!1389 = !DILocation(line: 374, column: 52, scope: !596)
!1390 = !DILocation(line: 374, column: 62, scope: !596)
!1391 = !DILocation(line: 377, column: 10, scope: !596)
!1392 = !DILocation(line: 378, column: 3, scope: !596)
!1393 = !DILocation(line: 378, column: 10, scope: !596)
!1394 = !DILocation(line: 379, column: 3, scope: !596)
!1395 = !DILocation(line: 379, column: 10, scope: !596)
!1396 = !DILocation(line: 380, column: 10, scope: !596)
!1397 = !DILocation(line: 382, column: 10, scope: !596)
!1398 = !DILocation(line: 382, column: 15, scope: !596)
!1399 = !DILocation(line: 383, column: 27, scope: !596)
!1400 = !DILocation(line: 383, column: 34, scope: !596)
!1401 = !DILocation(line: 383, column: 41, scope: !596)
!1402 = !DILocation(line: 391, column: 8, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !596, file: !1, line: 391, column: 7)
!1404 = !DILocation(line: 391, column: 7, scope: !596)
!1405 = !DILocation(line: 392, column: 5, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 391, column: 16)
!1407 = !DILocation(line: 393, column: 5, scope: !1406)
!1408 = !DILocation(line: 394, column: 3, scope: !1406)
!1409 = !DILocation(line: 395, column: 3, scope: !596)
!1410 = !DILocation(line: 398, column: 3, scope: !596)
!1411 = !DILocation(line: 383, column: 10, scope: !596)
!1412 = !DILocation(line: 399, column: 3, scope: !596)
!1413 = !DILocation(line: 400, column: 7, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !596, file: !1, line: 400, column: 7)
!1415 = !DILocation(line: 400, column: 23, scope: !1414)
!1416 = !DILocation(line: 400, column: 14, scope: !1414)
!1417 = !DILocation(line: 400, column: 7, scope: !596)
!1418 = !DILocation(line: 401, column: 5, scope: !1414)
!1419 = !DILocation(line: 403, column: 19, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1414, file: !1, line: 403, column: 12)
!1421 = !DILocation(line: 403, column: 12, scope: !1414)
!1422 = !DILocation(line: 404, column: 13, scope: !1420)
!1423 = !DILocation(line: 404, column: 5, scope: !1420)
!1424 = !DILocation(line: 412, column: 18, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !1, line: 412, column: 3)
!1426 = distinct !DILexicalBlock(scope: !596, file: !1, line: 412, column: 3)
!1427 = !DILocation(line: 412, column: 16, scope: !1425)
!1428 = !DILocation(line: 412, column: 3, scope: !1426)
!1429 = !DILocation(line: 441, column: 5, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 412, column: 33)
!1431 = !DILocation(line: 442, column: 5, scope: !1430)
!1432 = !DILocation(line: 444, column: 5, scope: !1430)
!1433 = !DILocation(line: 455, column: 12, scope: !1430)
!1434 = !DILocation(line: 458, column: 5, scope: !1430)
!1435 = !DILocation(line: 459, column: 12, scope: !1430)
!1436 = !DILocation(line: 465, column: 21, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 465, column: 9)
!1438 = !DILocation(line: 465, column: 25, scope: !1437)
!1439 = !DILocation(line: 476, column: 9, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 476, column: 9)
!1441 = !DILocation(line: 451, column: 14, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 446, column: 26)
!1443 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 446, column: 9)
!1444 = !DILocation(line: 413, column: 10, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 413, column: 9)
!1446 = !DILocation(line: 413, column: 35, scope: !1445)
!1447 = !DILocation(line: 413, column: 9, scope: !1430)
!1448 = !DILocation(line: 414, column: 7, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 413, column: 44)
!1450 = !DILocation(line: 415, column: 5, scope: !1449)
!1451 = !DILocation(line: 416, column: 9, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 416, column: 9)
!1453 = !DILocation(line: 416, column: 22, scope: !1452)
!1454 = !DILocation(line: 416, column: 9, scope: !1430)
!1455 = !DILocation(line: 417, column: 67, scope: !1452)
!1456 = !DILocation(line: 417, column: 7, scope: !1452)
!1457 = !DILocation(line: 421, column: 9, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 421, column: 9)
!1459 = !DILocation(line: 421, column: 9, scope: !1430)
!1460 = !DILocation(line: 384, column: 10, scope: !596)
!1461 = !DILocation(line: 423, column: 10, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !1, line: 421, column: 17)
!1463 = !DILocation(line: 385, column: 11, scope: !596)
!1464 = !DILocation(line: 424, column: 14, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !1, line: 424, column: 11)
!1466 = !DILocation(line: 424, column: 11, scope: !1462)
!1467 = !DILocation(line: 425, column: 2, scope: !1465)
!1468 = !DILocation(line: 426, column: 18, scope: !1462)
!1469 = !DILocation(line: 426, column: 10, scope: !1462)
!1470 = !DILocation(line: 385, column: 15, scope: !596)
!1471 = !DILocation(line: 427, column: 11, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1462, file: !1, line: 427, column: 11)
!1473 = !DILocation(line: 427, column: 17, scope: !1472)
!1474 = !DILocation(line: 427, column: 14, scope: !1472)
!1475 = !DILocation(line: 428, column: 10, scope: !1472)
!1476 = !DILocation(line: 428, column: 8, scope: !1472)
!1477 = !DILocation(line: 428, column: 2, scope: !1472)
!1478 = !DILocation(line: 431, column: 16, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1462, file: !1, line: 431, column: 11)
!1480 = !DILocation(line: 431, column: 11, scope: !1462)
!1481 = !DILocation(line: 433, column: 16, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1462, file: !1, line: 433, column: 11)
!1483 = !DILocation(line: 433, column: 11, scope: !1462)
!1484 = !DILocation(line: 435, column: 7, scope: !1462)
!1485 = !DILocation(line: 437, column: 20, scope: !1462)
!1486 = !DILocation(line: 437, column: 13, scope: !1462)
!1487 = !DILocation(line: 438, column: 5, scope: !1462)
!1488 = !DILocation(line: 442, column: 12, scope: !1430)
!1489 = !DILocation(line: 383, column: 21, scope: !596)
!1490 = !DILocation(line: 443, column: 5, scope: !1430)
!1491 = !DILocation(line: 445, column: 12, scope: !1430)
!1492 = !DILocation(line: 446, column: 9, scope: !1443)
!1493 = !DILocation(line: 446, column: 15, scope: !1443)
!1494 = !DILocation(line: 446, column: 9, scope: !1430)
!1495 = !DILocation(line: 448, column: 21, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1442, file: !1, line: 448, column: 11)
!1497 = !DILocation(line: 448, column: 18, scope: !1496)
!1498 = !DILocation(line: 448, column: 11, scope: !1442)
!1499 = !DILocation(line: 449, column: 2, scope: !1496)
!1500 = !DILocation(line: 451, column: 43, scope: !1442)
!1501 = !DILocation(line: 451, column: 32, scope: !1442)
!1502 = !DILocation(line: 451, column: 7, scope: !1442)
!1503 = !DILocation(line: 451, column: 30, scope: !1442)
!1504 = !DILocation(line: 452, column: 13, scope: !1442)
!1505 = !DILocation(line: 453, column: 5, scope: !1442)
!1506 = !DILocation(line: 454, column: 11, scope: !1430)
!1507 = !DILocation(line: 455, column: 33, scope: !1430)
!1508 = !DILocation(line: 455, column: 20, scope: !1430)
!1509 = !DILocation(line: 455, column: 26, scope: !1430)
!1510 = !DILocation(line: 459, column: 35, scope: !1430)
!1511 = !DILocation(line: 459, column: 24, scope: !1430)
!1512 = !DILocation(line: 459, column: 5, scope: !1430)
!1513 = !DILocation(line: 459, column: 23, scope: !1430)
!1514 = !DILocation(line: 381, column: 10, scope: !596)
!1515 = !DILocation(line: 381, column: 13, scope: !596)
!1516 = !DILocation(line: 381, column: 16, scope: !596)
!1517 = !DILocation(line: 465, column: 9, scope: !1437)
!1518 = !DILocation(line: 465, column: 45, scope: !1437)
!1519 = !DILocation(line: 465, column: 9, scope: !1430)
!1520 = !DILocation(line: 466, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1437, file: !1, line: 465, column: 51)
!1522 = !DILocation(line: 467, column: 5, scope: !1521)
!1523 = !DILocation(line: 469, column: 16, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1437, file: !1, line: 468, column: 10)
!1525 = !DILocation(line: 469, column: 7, scope: !1524)
!1526 = !DILocation(line: 469, column: 15, scope: !1524)
!1527 = !DILocation(line: 470, column: 16, scope: !1524)
!1528 = !DILocation(line: 470, column: 7, scope: !1524)
!1529 = !DILocation(line: 470, column: 15, scope: !1524)
!1530 = !DILocation(line: 471, column: 16, scope: !1524)
!1531 = !DILocation(line: 471, column: 7, scope: !1524)
!1532 = !DILocation(line: 471, column: 15, scope: !1524)
!1533 = !DILocation(line: 476, column: 9, scope: !1430)
!1534 = !DILocation(line: 477, column: 29, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 477, column: 11)
!1536 = distinct !DILexicalBlock(scope: !1440, file: !1, line: 476, column: 12)
!1537 = !DILocation(line: 477, column: 26, scope: !1535)
!1538 = !DILocation(line: 477, column: 11, scope: !1535)
!1539 = !DILocation(line: 477, column: 57, scope: !1535)
!1540 = !DILocation(line: 477, column: 11, scope: !1536)
!1541 = !DILocation(line: 478, column: 2, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 477, column: 63)
!1543 = !DILocation(line: 478, column: 11, scope: !1542)
!1544 = !DILocation(line: 479, column: 2, scope: !1542)
!1545 = !DILocation(line: 479, column: 11, scope: !1542)
!1546 = !DILocation(line: 480, column: 2, scope: !1542)
!1547 = !DILocation(line: 480, column: 11, scope: !1542)
!1548 = !DILocation(line: 481, column: 7, scope: !1542)
!1549 = !DILocation(line: 483, column: 11, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1535, file: !1, line: 482, column: 12)
!1551 = !DILocation(line: 483, column: 2, scope: !1550)
!1552 = !DILocation(line: 483, column: 10, scope: !1550)
!1553 = !DILocation(line: 484, column: 11, scope: !1550)
!1554 = !DILocation(line: 484, column: 2, scope: !1550)
!1555 = !DILocation(line: 484, column: 10, scope: !1550)
!1556 = !DILocation(line: 485, column: 11, scope: !1550)
!1557 = !DILocation(line: 485, column: 2, scope: !1550)
!1558 = !DILocation(line: 485, column: 10, scope: !1550)
!1559 = !DILocation(line: 384, column: 17, scope: !596)
!1560 = !DILocation(line: 490, column: 10, scope: !596)
!1561 = !DILocation(line: 490, column: 14, scope: !596)
!1562 = !DILocation(line: 493, column: 3, scope: !596)
!1563 = !DILocation(line: 494, column: 7, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !596, file: !1, line: 494, column: 7)
!1565 = !DILocation(line: 494, column: 45, scope: !1564)
!1566 = !DILocation(line: 494, column: 7, scope: !596)
!1567 = !DILocation(line: 495, column: 5, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !1, line: 494, column: 51)
!1569 = !DILocation(line: 496, column: 5, scope: !1568)
!1570 = !DILocation(line: 383, column: 19, scope: !596)
!1571 = !DILocation(line: 500, column: 22, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !1, line: 499, column: 5)
!1573 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 499, column: 5)
!1574 = !DILocation(line: 500, column: 14, scope: !1572)
!1575 = !DILocation(line: 501, column: 24, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 501, column: 5)
!1577 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 501, column: 5)
!1578 = !DILocation(line: 501, column: 16, scope: !1576)
!1579 = !DILocation(line: 501, column: 5, scope: !1577)
!1580 = !DILocation(line: 502, column: 7, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !1, line: 502, column: 7)
!1582 = !DILocation(line: 506, column: 58, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 506, column: 27)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 506, column: 27)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !1, line: 506, column: 5)
!1586 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 506, column: 5)
!1587 = !DILocation(line: 507, column: 5, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 507, column: 5)
!1589 = !DILocation(line: 503, column: 10, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !1, line: 502, column: 30)
!1591 = distinct !DILexicalBlock(scope: !1581, file: !1, line: 502, column: 7)
!1592 = !DILocation(line: 503, column: 9, scope: !1590)
!1593 = !DILocation(line: 504, column: 10, scope: !1590)
!1594 = !DILocation(line: 504, column: 9, scope: !1590)
!1595 = !DILocation(line: 508, column: 18, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 507, column: 5)
!1597 = !DILocation(line: 508, column: 26, scope: !1596)
!1598 = !DILocation(line: 508, column: 25, scope: !1596)
!1599 = !DILocation(line: 508, column: 7, scope: !1596)
!1600 = !DILocation(line: 508, column: 16, scope: !1596)
!1601 = !DILocation(line: 509, column: 13, scope: !1568)
!1602 = !DILocation(line: 510, column: 6, scope: !1568)
!1603 = !DILocation(line: 510, column: 18, scope: !1568)
!1604 = !DILocation(line: 510, column: 30, scope: !1568)
!1605 = !DILocation(line: 509, column: 5, scope: !1568)
!1606 = !DILocation(line: 511, column: 3, scope: !1568)
!1607 = !DILocation(line: 514, column: 17, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1564, file: !1, line: 512, column: 8)
!1609 = !DILocation(line: 514, column: 5, scope: !1608)
!1610 = !DILocation(line: 514, column: 16, scope: !1608)
!1611 = !DILocation(line: 515, column: 17, scope: !1608)
!1612 = !DILocation(line: 515, column: 5, scope: !1608)
!1613 = !DILocation(line: 515, column: 16, scope: !1608)
!1614 = !DILocation(line: 516, column: 17, scope: !1608)
!1615 = !DILocation(line: 516, column: 5, scope: !1608)
!1616 = !DILocation(line: 516, column: 16, scope: !1608)
!1617 = !DILocation(line: 381, column: 19, scope: !596)
!1618 = !DILocation(line: 381, column: 22, scope: !596)
!1619 = !DILocation(line: 381, column: 25, scope: !596)
!1620 = !DILocation(line: 517, column: 9, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1608, file: !1, line: 517, column: 9)
!1622 = !DILocation(line: 518, column: 28, scope: !1621)
!1623 = !DILocation(line: 517, column: 9, scope: !1608)
!1624 = !DILocation(line: 520, column: 19, scope: !1608)
!1625 = !DILocation(line: 521, column: 19, scope: !1608)
!1626 = !DILocation(line: 522, column: 19, scope: !1608)
!1627 = !DILocation(line: 523, column: 19, scope: !1608)
!1628 = !DILocation(line: 524, column: 19, scope: !1608)
!1629 = !DILocation(line: 525, column: 19, scope: !1608)
!1630 = !DILocation(line: 519, column: 24, scope: !1621)
!1631 = !DILocation(line: 519, column: 21, scope: !1621)
!1632 = !DILocation(line: 519, column: 18, scope: !1621)
!1633 = !DILocation(line: 519, column: 15, scope: !1621)
!1634 = !DILocation(line: 519, column: 12, scope: !1621)
!1635 = !DILocation(line: 519, column: 9, scope: !1621)
!1636 = !DILocation(line: 519, column: 7, scope: !1621)
!1637 = !DILocation(line: 520, column: 5, scope: !1608)
!1638 = !DILocation(line: 520, column: 17, scope: !1608)
!1639 = !DILocation(line: 521, column: 5, scope: !1608)
!1640 = !DILocation(line: 521, column: 17, scope: !1608)
!1641 = !DILocation(line: 522, column: 5, scope: !1608)
!1642 = !DILocation(line: 522, column: 17, scope: !1608)
!1643 = !DILocation(line: 523, column: 5, scope: !1608)
!1644 = !DILocation(line: 523, column: 17, scope: !1608)
!1645 = !DILocation(line: 524, column: 5, scope: !1608)
!1646 = !DILocation(line: 524, column: 17, scope: !1608)
!1647 = !DILocation(line: 525, column: 5, scope: !1608)
!1648 = !DILocation(line: 525, column: 17, scope: !1608)
!1649 = !DILocation(line: 527, column: 16, scope: !596)
!1650 = !DILocation(line: 527, column: 3, scope: !596)
!1651 = !DILocation(line: 530, column: 1, scope: !596)
!1652 = !DILocation(line: 613, column: 28, scope: !261)
!1653 = !DILocation(line: 613, column: 47, scope: !261)
!1654 = !DILocation(line: 615, column: 3, scope: !261)
!1655 = !DILocation(line: 615, column: 8, scope: !261)
!1656 = !DILocation(line: 617, column: 3, scope: !261)
!1657 = !DILocation(line: 618, column: 11, scope: !261)
!1658 = !DILocation(line: 618, column: 3, scope: !261)
!1659 = !DILocation(line: 619, column: 39, scope: !261)
!1660 = !DILocation(line: 619, column: 3, scope: !261)
!1661 = !DILocation(line: 620, column: 3, scope: !261)
!1662 = !DILocation(line: 621, column: 11, scope: !261)
!1663 = !DILocation(line: 621, column: 50, scope: !261)
!1664 = !DILocation(line: 621, column: 3, scope: !261)
!1665 = !DILocation(line: 622, column: 7, scope: !261)
!1666 = !DILocation(line: 622, column: 14, scope: !261)
!1667 = !DILocation(line: 623, column: 7, scope: !261)
!1668 = !DILocation(line: 623, column: 13, scope: !261)
!1669 = !DILocation(line: 624, column: 11, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !261, file: !1, line: 624, column: 7)
!1671 = !DILocation(line: 624, column: 17, scope: !1670)
!1672 = !DILocation(line: 624, column: 7, scope: !261)
!1673 = !DILocation(line: 625, column: 5, scope: !1670)
!1674 = !DILocation(line: 627, column: 3, scope: !261)
!1675 = !DILocation(line: 628, column: 3, scope: !261)
!1676 = !DILocation(line: 629, column: 3, scope: !261)
!1677 = !DILocation(line: 631, column: 14, scope: !261)
!1678 = !DILocation(line: 632, column: 1, scope: !261)
!1679 = !DILocation(line: 354, column: 36, scope: !637)
!1680 = !DILocation(line: 354, column: 45, scope: !637)
!1681 = !DILocation(line: 354, column: 57, scope: !637)
!1682 = !DILocation(line: 356, column: 3, scope: !637)
!1683 = !DILocation(line: 356, column: 8, scope: !637)
!1684 = !DILocation(line: 358, column: 3, scope: !637)
!1685 = !DILocation(line: 359, column: 3, scope: !637)
!1686 = !DILocation(line: 360, column: 3, scope: !637)
!1687 = !DILocation(line: 361, column: 1, scope: !637)
!1688 = !DILocation(line: 634, column: 34, scope: !266)
!1689 = !DILocation(line: 634, column: 44, scope: !266)
!1690 = !DILocation(line: 634, column: 59, scope: !266)
!1691 = !DILocation(line: 635, column: 11, scope: !266)
!1692 = !DILocation(line: 635, column: 22, scope: !266)
!1693 = !DILocation(line: 635, column: 35, scope: !266)
!1694 = !DILocation(line: 636, column: 13, scope: !266)
!1695 = !DILocation(line: 636, column: 21, scope: !266)
!1696 = !DILocation(line: 636, column: 30, scope: !266)
!1697 = !DILocation(line: 638, column: 8, scope: !266)
!1698 = !DILocation(line: 638, column: 17, scope: !266)
!1699 = !DILocation(line: 638, column: 3, scope: !266)
!1700 = !DILocation(line: 638, column: 23, scope: !266)
!1701 = !DILocation(line: 641, column: 24, scope: !266)
!1702 = !DILocation(line: 641, column: 30, scope: !266)
!1703 = !DILocation(line: 641, column: 33, scope: !266)
!1704 = !DILocation(line: 641, column: 23, scope: !266)
!1705 = !DILocation(line: 641, column: 49, scope: !266)
!1706 = !DILocation(line: 641, column: 3, scope: !266)
!1707 = !DILocation(line: 642, column: 3, scope: !266)
!1708 = !DILocation(line: 645, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !266, file: !1, line: 645, column: 7)
!1710 = !DILocation(line: 645, column: 7, scope: !266)
!1711 = !DILocation(line: 647, column: 9, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !266, file: !1, line: 647, column: 7)
!1713 = !DILocation(line: 647, column: 7, scope: !266)
!1714 = !DILocation(line: 649, column: 7, scope: !266)
!1715 = !DILocation(line: 639, column: 19, scope: !266)
!1716 = !DILocation(line: 650, column: 9, scope: !266)
!1717 = !DILocation(line: 639, column: 21, scope: !266)
!1718 = !DILocation(line: 651, column: 7, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !266, file: !1, line: 651, column: 7)
!1720 = !DILocation(line: 651, column: 7, scope: !266)
!1721 = !DILocation(line: 652, column: 5, scope: !1719)
!1722 = !DILocation(line: 655, column: 5, scope: !1719)
!1723 = !DILocation(line: 657, column: 15, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 657, column: 3)
!1725 = distinct !DILexicalBlock(scope: !266, file: !1, line: 657, column: 3)
!1726 = !DILocation(line: 657, column: 3, scope: !1725)
!1727 = !DILocation(line: 660, column: 18, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1724, file: !1, line: 657, column: 26)
!1729 = !DILocation(line: 661, column: 5, scope: !1728)
!1730 = !DILocation(line: 662, column: 24, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !1, line: 662, column: 9)
!1732 = !DILocation(line: 663, column: 7, scope: !1731)
!1733 = !DILocation(line: 666, column: 7, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1728, file: !1, line: 665, column: 9)
!1735 = !DILocation(line: 658, column: 8, scope: !1728)
!1736 = !DILocation(line: 639, column: 8, scope: !266)
!1737 = !DILocation(line: 660, column: 11, scope: !1728)
!1738 = !DILocation(line: 660, column: 27, scope: !1728)
!1739 = !DILocation(line: 639, column: 13, scope: !266)
!1740 = !DILocation(line: 662, column: 15, scope: !1731)
!1741 = !DILocation(line: 662, column: 9, scope: !1728)
!1742 = !DILocation(line: 665, column: 16, scope: !1734)
!1743 = !DILocation(line: 665, column: 9, scope: !1734)
!1744 = !DILocation(line: 665, column: 9, scope: !1728)
!1745 = !DILocation(line: 668, column: 7, scope: !1734)
!1746 = !DILocation(line: 670, column: 43, scope: !1728)
!1747 = !DILocation(line: 670, column: 46, scope: !1728)
!1748 = !DILocation(line: 670, column: 66, scope: !1728)
!1749 = !DILocation(line: 670, column: 69, scope: !1728)
!1750 = !DILocation(line: 670, column: 5, scope: !1728)
!1751 = !DILocation(line: 674, column: 8, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1728, file: !1, line: 672, column: 9)
!1753 = !DILocation(line: 674, column: 19, scope: !1752)
!1754 = !DILocation(line: 674, column: 30, scope: !1752)
!1755 = !DILocation(line: 672, column: 9, scope: !1728)
!1756 = !DILocation(line: 674, column: 41, scope: !1752)
!1757 = !DILocation(line: 674, column: 51, scope: !1752)
!1758 = !DILocation(line: 674, column: 61, scope: !1752)
!1759 = !DILocation(line: 673, column: 7, scope: !1752)
!1760 = !DILocation(line: 676, column: 7, scope: !1752)
!1761 = !DILocation(line: 680, column: 9, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !266, file: !1, line: 680, column: 7)
!1763 = !DILocation(line: 680, column: 7, scope: !266)
!1764 = !DILocation(line: 682, column: 7, scope: !266)
!1765 = !DILocation(line: 684, column: 12, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !266, file: !1, line: 684, column: 7)
!1767 = !DILocation(line: 684, column: 7, scope: !1766)
!1768 = !DILocation(line: 684, column: 25, scope: !1766)
!1769 = !DILocation(line: 696, column: 18, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !1, line: 690, column: 5)
!1771 = !DILocation(line: 684, column: 40, scope: !1766)
!1772 = !DILocation(line: 685, column: 12, scope: !1766)
!1773 = !DILocation(line: 685, column: 7, scope: !1766)
!1774 = !DILocation(line: 685, column: 25, scope: !1766)
!1775 = !DILocation(line: 685, column: 40, scope: !1766)
!1776 = !DILocation(line: 686, column: 12, scope: !1766)
!1777 = !DILocation(line: 686, column: 7, scope: !1766)
!1778 = !DILocation(line: 686, column: 25, scope: !1766)
!1779 = !DILocation(line: 686, column: 40, scope: !1766)
!1780 = !DILocation(line: 687, column: 12, scope: !1766)
!1781 = !DILocation(line: 687, column: 7, scope: !1766)
!1782 = !DILocation(line: 687, column: 25, scope: !1766)
!1783 = !DILocation(line: 687, column: 40, scope: !1766)
!1784 = !DILocation(line: 688, column: 12, scope: !1766)
!1785 = !DILocation(line: 688, column: 7, scope: !1766)
!1786 = !DILocation(line: 688, column: 25, scope: !1766)
!1787 = !DILocation(line: 688, column: 40, scope: !1766)
!1788 = !DILocation(line: 689, column: 12, scope: !1766)
!1789 = !DILocation(line: 689, column: 7, scope: !1766)
!1790 = !DILocation(line: 689, column: 25, scope: !1766)
!1791 = !DILocation(line: 684, column: 7, scope: !266)
!1792 = !DILocation(line: 691, column: 5, scope: !1770)
!1793 = !DILocation(line: 695, column: 6, scope: !1770)
!1794 = !DILocation(line: 695, column: 18, scope: !1770)
!1795 = !DILocation(line: 695, column: 30, scope: !1770)
!1796 = !DILocation(line: 696, column: 6, scope: !1770)
!1797 = !DILocation(line: 696, column: 30, scope: !1770)
!1798 = !DILocation(line: 697, column: 6, scope: !1770)
!1799 = !DILocation(line: 697, column: 18, scope: !1770)
!1800 = !DILocation(line: 697, column: 30, scope: !1770)
!1801 = !DILocation(line: 694, column: 5, scope: !1770)
!1802 = !DILocation(line: 698, column: 3, scope: !1770)
!1803 = !DILocation(line: 699, column: 5, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1766, file: !1, line: 698, column: 10)
!1805 = !DILocation(line: 701, column: 6, scope: !1804)
!1806 = !DILocation(line: 701, column: 18, scope: !1804)
!1807 = !DILocation(line: 701, column: 30, scope: !1804)
!1808 = !DILocation(line: 700, column: 5, scope: !1804)
!1809 = !DILocation(line: 703, column: 3, scope: !266)
!1810 = !DILocation(line: 704, column: 1, scope: !266)
!1811 = !DILocation(line: 706, column: 26, scope: !291)
!1812 = !DILocation(line: 706, column: 36, scope: !291)
!1813 = !DILocation(line: 706, column: 51, scope: !291)
!1814 = !DILocation(line: 706, column: 62, scope: !291)
!1815 = !DILocation(line: 707, column: 12, scope: !291)
!1816 = !DILocation(line: 707, column: 20, scope: !291)
!1817 = !DILocation(line: 707, column: 29, scope: !291)
!1818 = !DILocation(line: 712, column: 3, scope: !291)
!1819 = !DILocation(line: 709, column: 12, scope: !291)
!1820 = !DILocation(line: 710, column: 11, scope: !291)
!1821 = !DILocation(line: 713, column: 22, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !1, line: 713, column: 3)
!1823 = distinct !DILexicalBlock(scope: !291, file: !1, line: 713, column: 3)
!1824 = !DILocation(line: 713, column: 14, scope: !1822)
!1825 = !DILocation(line: 713, column: 3, scope: !1823)
!1826 = !DILocation(line: 714, column: 5, scope: !1822)
!1827 = !DILocation(line: 714, column: 10, scope: !1822)
!1828 = !DILocation(line: 715, column: 3, scope: !291)
!1829 = !DILocation(line: 716, column: 3, scope: !291)
!1830 = !DILocation(line: 717, column: 1, scope: !291)
!1831 = !DILocation(line: 719, column: 25, scope: !304)
!1832 = !DILocation(line: 719, column: 40, scope: !304)
!1833 = !DILocation(line: 719, column: 56, scope: !304)
!1834 = !DILocation(line: 719, column: 67, scope: !304)
!1835 = !DILocation(line: 720, column: 11, scope: !304)
!1836 = !DILocation(line: 720, column: 20, scope: !304)
!1837 = !DILocation(line: 720, column: 29, scope: !304)
!1838 = !DILocation(line: 724, column: 7, scope: !304)
!1839 = !DILocation(line: 722, column: 9, scope: !304)
!1840 = !DILocation(line: 725, column: 3, scope: !304)
!1841 = !DILocation(line: 727, column: 3, scope: !304)
!1842 = !DILocation(line: 728, column: 1, scope: !304)
!1843 = !DILocation(line: 736, column: 35, scope: !316)
!1844 = !DILocation(line: 736, column: 49, scope: !316)
!1845 = !DILocation(line: 736, column: 64, scope: !316)
!1846 = !DILocation(line: 737, column: 13, scope: !316)
!1847 = !DILocation(line: 737, column: 23, scope: !316)
!1848 = !DILocation(line: 737, column: 32, scope: !316)
!1849 = !DILocation(line: 738, column: 16, scope: !316)
!1850 = !DILocation(line: 738, column: 31, scope: !316)
!1851 = !DILocation(line: 742, column: 3, scope: !316)
!1852 = !DILocation(line: 744, column: 7, scope: !316)
!1853 = !DILocation(line: 741, column: 14, scope: !316)
!1854 = !DILocation(line: 745, column: 3, scope: !316)
!1855 = !DILocation(line: 747, column: 9, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !316, file: !1, line: 745, column: 16)
!1857 = !DILocation(line: 740, column: 15, scope: !316)
!1858 = !DILocation(line: 748, column: 5, scope: !1856)
!1859 = !DILocation(line: 749, column: 5, scope: !1856)
!1860 = !DILocation(line: 750, column: 5, scope: !1856)
!1861 = !DILocation(line: 742, column: 14, scope: !316)
!1862 = !DILocation(line: 752, column: 5, scope: !1856)
!1863 = !DILocation(line: 753, column: 8, scope: !1856)
!1864 = !DILocation(line: 753, column: 15, scope: !1856)
!1865 = !DILocation(line: 754, column: 8, scope: !1856)
!1866 = !DILocation(line: 754, column: 14, scope: !1856)
!1867 = !DILocation(line: 755, column: 24, scope: !1856)
!1868 = !DILocation(line: 755, column: 8, scope: !1856)
!1869 = !DILocation(line: 755, column: 15, scope: !1856)
!1870 = !DILocation(line: 756, column: 8, scope: !1856)
!1871 = !DILocation(line: 756, column: 15, scope: !1856)
!1872 = !DILocation(line: 757, column: 8, scope: !1856)
!1873 = !DILocation(line: 757, column: 14, scope: !1856)
!1874 = !DILocation(line: 758, column: 8, scope: !1856)
!1875 = !DILocation(line: 758, column: 11, scope: !1856)
!1876 = !DILocation(line: 759, column: 8, scope: !1856)
!1877 = !DILocation(line: 759, column: 10, scope: !1856)
!1878 = !DILocation(line: 760, column: 9, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1856, file: !1, line: 760, column: 9)
!1880 = !DILocation(line: 760, column: 9, scope: !1856)
!1881 = !DILocation(line: 761, column: 10, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1879, file: !1, line: 760, column: 12)
!1883 = !DILocation(line: 761, column: 13, scope: !1882)
!1884 = !DILocation(line: 762, column: 10, scope: !1882)
!1885 = !DILocation(line: 762, column: 12, scope: !1882)
!1886 = !DILocation(line: 763, column: 5, scope: !1882)
!1887 = !DILocation(line: 764, column: 8, scope: !1856)
!1888 = !DILocation(line: 764, column: 13, scope: !1856)
!1889 = !DILocation(line: 765, column: 18, scope: !1856)
!1890 = !DILocation(line: 297, column: 36, scope: !645, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 765, column: 5, scope: !1856)
!1892 = !DILocation(line: 297, column: 45, scope: !645, inlinedAt: !1891)
!1893 = !DILocation(line: 272, column: 9, scope: !651, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 299, column: 3, scope: !645, inlinedAt: !1891)
!1895 = !DILocation(line: 272, column: 8, scope: !651, inlinedAt: !1894)
!1896 = !DILocation(line: 273, column: 9, scope: !651, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 300, column: 3, scope: !645, inlinedAt: !1891)
!1898 = !DILocation(line: 273, column: 3, scope: !651, inlinedAt: !1897)
!1899 = !DILocation(line: 273, column: 8, scope: !651, inlinedAt: !1897)
!1900 = !DILocation(line: 274, column: 9, scope: !651, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 301, column: 3, scope: !645, inlinedAt: !1891)
!1902 = !DILocation(line: 274, column: 3, scope: !651, inlinedAt: !1901)
!1903 = !DILocation(line: 274, column: 8, scope: !651, inlinedAt: !1901)
!1904 = !DILocation(line: 766, column: 9, scope: !1856)
!1905 = !DILocation(line: 767, column: 5, scope: !1856)
!1906 = !DILocation(line: 768, column: 5, scope: !1856)
!1907 = !DILocation(line: 769, column: 5, scope: !1856)
!1908 = !DILocation(line: 773, column: 9, scope: !1856)
!1909 = !DILocation(line: 774, column: 5, scope: !1856)
!1910 = !DILocation(line: 775, column: 5, scope: !1856)
!1911 = !DILocation(line: 776, column: 5, scope: !1856)
!1912 = !DILocation(line: 780, column: 5, scope: !1856)
!1913 = !DILocation(line: 781, column: 5, scope: !1856)
!1914 = !DILocation(line: 783, column: 5, scope: !1856)
!1915 = !DILocation(line: 784, column: 3, scope: !1856)
!1916 = !DILocation(line: 785, column: 1, scope: !316)
!1917 = !DILocation(line: 787, column: 27, scope: !331)
!1918 = !DILocation(line: 787, column: 42, scope: !331)
!1919 = !DILocation(line: 787, column: 57, scope: !331)
!1920 = !DILocation(line: 788, column: 11, scope: !331)
!1921 = !DILocation(line: 788, column: 21, scope: !331)
!1922 = !DILocation(line: 788, column: 31, scope: !331)
!1923 = !DILocation(line: 792, column: 3, scope: !331)
!1924 = !DILocation(line: 794, column: 7, scope: !331)
!1925 = !DILocation(line: 791, column: 14, scope: !331)
!1926 = !DILocation(line: 795, column: 3, scope: !331)
!1927 = !DILocation(line: 730, column: 30, scope: !659, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 797, column: 5, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !331, file: !1, line: 795, column: 16)
!1930 = !DILocation(line: 730, column: 45, scope: !659, inlinedAt: !1928)
!1931 = !DILocation(line: 730, column: 61, scope: !659, inlinedAt: !1928)
!1932 = !DILocation(line: 731, column: 16, scope: !659, inlinedAt: !1928)
!1933 = !DILocation(line: 731, column: 25, scope: !659, inlinedAt: !1928)
!1934 = !DILocation(line: 731, column: 34, scope: !659, inlinedAt: !1928)
!1935 = !DILocation(line: 719, column: 25, scope: !304, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 733, column: 3, scope: !659, inlinedAt: !1928)
!1937 = !DILocation(line: 719, column: 40, scope: !304, inlinedAt: !1936)
!1938 = !DILocation(line: 719, column: 56, scope: !304, inlinedAt: !1936)
!1939 = !DILocation(line: 719, column: 67, scope: !304, inlinedAt: !1936)
!1940 = !DILocation(line: 720, column: 11, scope: !304, inlinedAt: !1936)
!1941 = !DILocation(line: 720, column: 20, scope: !304, inlinedAt: !1936)
!1942 = !DILocation(line: 720, column: 29, scope: !304, inlinedAt: !1936)
!1943 = !DILocation(line: 724, column: 7, scope: !304, inlinedAt: !1936)
!1944 = !DILocation(line: 722, column: 9, scope: !304, inlinedAt: !1936)
!1945 = !DILocation(line: 725, column: 3, scope: !304, inlinedAt: !1936)
!1946 = !DILocation(line: 727, column: 3, scope: !304, inlinedAt: !1936)
!1947 = !DILocation(line: 798, column: 5, scope: !1929)
!1948 = !DILocation(line: 792, column: 14, scope: !331)
!1949 = !DILocation(line: 800, column: 5, scope: !1929)
!1950 = !DILocation(line: 801, column: 8, scope: !1929)
!1951 = !DILocation(line: 801, column: 15, scope: !1929)
!1952 = !DILocation(line: 802, column: 8, scope: !1929)
!1953 = !DILocation(line: 802, column: 14, scope: !1929)
!1954 = !DILocation(line: 803, column: 24, scope: !1929)
!1955 = !DILocation(line: 803, column: 8, scope: !1929)
!1956 = !DILocation(line: 803, column: 15, scope: !1929)
!1957 = !DILocation(line: 804, column: 8, scope: !1929)
!1958 = !DILocation(line: 804, column: 15, scope: !1929)
!1959 = !DILocation(line: 805, column: 8, scope: !1929)
!1960 = !DILocation(line: 805, column: 14, scope: !1929)
!1961 = !DILocation(line: 806, column: 8, scope: !1929)
!1962 = !DILocation(line: 806, column: 11, scope: !1929)
!1963 = !DILocation(line: 807, column: 8, scope: !1929)
!1964 = !DILocation(line: 807, column: 10, scope: !1929)
!1965 = !DILocation(line: 808, column: 9, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1929, file: !1, line: 808, column: 9)
!1967 = !DILocation(line: 808, column: 9, scope: !1929)
!1968 = !DILocation(line: 809, column: 10, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1966, file: !1, line: 808, column: 12)
!1970 = !DILocation(line: 809, column: 13, scope: !1969)
!1971 = !DILocation(line: 810, column: 10, scope: !1969)
!1972 = !DILocation(line: 810, column: 12, scope: !1969)
!1973 = !DILocation(line: 811, column: 5, scope: !1969)
!1974 = !DILocation(line: 812, column: 8, scope: !1929)
!1975 = !DILocation(line: 812, column: 13, scope: !1929)
!1976 = !DILocation(line: 813, column: 18, scope: !1929)
!1977 = !DILocation(line: 297, column: 36, scope: !645, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 813, column: 5, scope: !1929)
!1979 = !DILocation(line: 297, column: 45, scope: !645, inlinedAt: !1978)
!1980 = !DILocation(line: 272, column: 9, scope: !651, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 299, column: 3, scope: !645, inlinedAt: !1978)
!1982 = !DILocation(line: 272, column: 8, scope: !651, inlinedAt: !1981)
!1983 = !DILocation(line: 273, column: 9, scope: !651, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 300, column: 3, scope: !645, inlinedAt: !1978)
!1985 = !DILocation(line: 273, column: 3, scope: !651, inlinedAt: !1984)
!1986 = !DILocation(line: 273, column: 8, scope: !651, inlinedAt: !1984)
!1987 = !DILocation(line: 274, column: 9, scope: !651, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 301, column: 3, scope: !645, inlinedAt: !1978)
!1989 = !DILocation(line: 274, column: 3, scope: !651, inlinedAt: !1988)
!1990 = !DILocation(line: 274, column: 8, scope: !651, inlinedAt: !1988)
!1991 = !DILocation(line: 814, column: 9, scope: !1929)
!1992 = !DILocation(line: 790, column: 15, scope: !331)
!1993 = !DILocation(line: 815, column: 5, scope: !1929)
!1994 = !DILocation(line: 816, column: 5, scope: !1929)
!1995 = !DILocation(line: 817, column: 5, scope: !1929)
!1996 = !DILocation(line: 821, column: 9, scope: !1929)
!1997 = !DILocation(line: 822, column: 5, scope: !1929)
!1998 = !DILocation(line: 823, column: 5, scope: !1929)
!1999 = !DILocation(line: 824, column: 5, scope: !1929)
!2000 = !DILocation(line: 828, column: 5, scope: !1929)
!2001 = !DILocation(line: 829, column: 5, scope: !1929)
!2002 = !DILocation(line: 831, column: 5, scope: !1929)
!2003 = !DILocation(line: 832, column: 3, scope: !1929)
!2004 = !DILocation(line: 833, column: 1, scope: !331)
!2005 = !DILocation(line: 835, column: 29, scope: !344)
!2006 = !DILocation(line: 835, column: 41, scope: !344)
!2007 = !DILocation(line: 839, column: 3, scope: !344)
!2008 = !DILocation(line: 841, column: 7, scope: !344)
!2009 = !DILocation(line: 838, column: 7, scope: !344)
!2010 = !DILocation(line: 366, column: 8, scope: !667, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 844, column: 5, scope: !355)
!2012 = !DILocation(line: 842, column: 3, scope: !344)
!2013 = !DILocation(line: 363, column: 33, scope: !667, inlinedAt: !2011)
!2014 = !DILocation(line: 363, column: 45, scope: !667, inlinedAt: !2011)
!2015 = !DILocation(line: 366, column: 3, scope: !667, inlinedAt: !2011)
!2016 = !DILocation(line: 368, column: 6, scope: !667, inlinedAt: !2011)
!2017 = !DILocation(line: 365, column: 9, scope: !667, inlinedAt: !2011)
!2018 = !DILocation(line: 369, column: 3, scope: !667, inlinedAt: !2011)
!2019 = !DILocation(line: 370, column: 3, scope: !667, inlinedAt: !2011)
!2020 = !DILocation(line: 371, column: 1, scope: !667, inlinedAt: !2011)
!2021 = !DILocation(line: 845, column: 5, scope: !355)
!2022 = !DILocation(line: 847, column: 8, scope: !355)
!2023 = !DILocation(line: 837, column: 9, scope: !344)
!2024 = !DILocation(line: 848, column: 8, scope: !355)
!2025 = !DILocation(line: 848, column: 14, scope: !355)
!2026 = !DILocation(line: 849, column: 8, scope: !355)
!2027 = !DILocation(line: 849, column: 15, scope: !355)
!2028 = !DILocation(line: 850, column: 8, scope: !355)
!2029 = !DILocation(line: 850, column: 14, scope: !355)
!2030 = !DILocation(line: 851, column: 8, scope: !355)
!2031 = !DILocation(line: 851, column: 10, scope: !355)
!2032 = !DILocation(line: 852, column: 8, scope: !355)
!2033 = !DILocation(line: 852, column: 10, scope: !355)
!2034 = !DILocation(line: 853, column: 8, scope: !355)
!2035 = !DILocation(line: 853, column: 10, scope: !355)
!2036 = !{!759, !700, i64 128}
!2037 = !DILocation(line: 839, column: 14, scope: !344)
!2038 = !DILocation(line: 854, column: 13, scope: !355)
!2039 = !DILocation(line: 854, column: 12, scope: !355)
!2040 = !DILocation(line: 855, column: 5, scope: !355)
!2041 = !DILocation(line: 856, column: 5, scope: !355)
!2042 = !DILocation(line: 860, column: 8, scope: !355)
!2043 = !DILocation(line: 861, column: 5, scope: !355)
!2044 = !DILocation(line: 862, column: 5, scope: !355)
!2045 = !DILocation(line: 863, column: 5, scope: !355)
!2046 = !DILocation(line: 867, column: 5, scope: !354)
!2047 = !DILocation(line: 867, column: 17, scope: !354)
!2048 = !DILocation(line: 868, column: 5, scope: !354)
!2049 = !DILocation(line: 869, column: 19, scope: !354)
!2050 = !{!2051, !703, i64 24}
!2051 = !{!"", !703, i64 0, !703, i64 4, !703, i64 8, !703, i64 12, !703, i64 16, !703, i64 20, !703, i64 24, !703, i64 28, !760, i64 32, !760, i64 36}
!2052 = !DILocation(line: 869, column: 13, scope: !354)
!2053 = !DILocation(line: 871, column: 3, scope: !355)
!2054 = !DILocation(line: 873, column: 5, scope: !355)
!2055 = !DILocation(line: 874, column: 3, scope: !355)
!2056 = !DILocation(line: 875, column: 1, scope: !344)
!2057 = !DILocation(line: 877, column: 26, scope: !370)
!2058 = !DILocation(line: 877, column: 40, scope: !370)
!2059 = !DILocation(line: 877, column: 55, scope: !370)
!2060 = !DILocation(line: 878, column: 11, scope: !370)
!2061 = !DILocation(line: 878, column: 21, scope: !370)
!2062 = !DILocation(line: 878, column: 31, scope: !370)
!2063 = !DILocation(line: 881, column: 3, scope: !370)
!2064 = !DILocation(line: 881, column: 14, scope: !370)
!2065 = !DILocation(line: 883, column: 3, scope: !370)
!2066 = !DILocation(line: 887, column: 14, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !370, file: !1, line: 887, column: 7)
!2068 = !DILocation(line: 887, column: 17, scope: !2067)
!2069 = !DILocation(line: 887, column: 7, scope: !370)
!2070 = !DILocation(line: 888, column: 13, scope: !2067)
!2071 = !DILocation(line: 888, column: 5, scope: !2067)
!2072 = !DILocation(line: 889, column: 19, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2067, file: !1, line: 889, column: 12)
!2074 = !DILocation(line: 889, column: 24, scope: !2073)
!2075 = !DILocation(line: 889, column: 12, scope: !2067)
!2076 = !DILocation(line: 890, column: 5, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !1, line: 889, column: 33)
!2078 = !DILocation(line: 891, column: 5, scope: !2077)
!2079 = !DILocation(line: 892, column: 3, scope: !2077)
!2080 = !DILocation(line: 893, column: 7, scope: !370)
!2081 = !DILocation(line: 884, column: 16, scope: !370)
!2082 = !DILocation(line: 894, column: 3, scope: !370)
!2083 = !DILocation(line: 532, column: 35, scope: !673, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 896, column: 5, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !370, file: !1, line: 894, column: 16)
!2086 = !DILocation(line: 532, column: 49, scope: !673, inlinedAt: !2084)
!2087 = !DILocation(line: 533, column: 17, scope: !673, inlinedAt: !2084)
!2088 = !DILocation(line: 533, column: 29, scope: !673, inlinedAt: !2084)
!2089 = !DILocation(line: 533, column: 39, scope: !673, inlinedAt: !2084)
!2090 = !DILocation(line: 533, column: 49, scope: !673, inlinedAt: !2084)
!2091 = !DILocation(line: 539, column: 6, scope: !673, inlinedAt: !2084)
!2092 = !DILocation(line: 535, column: 11, scope: !673, inlinedAt: !2084)
!2093 = !DILocation(line: 536, column: 10, scope: !673, inlinedAt: !2084)
!2094 = !DILocation(line: 541, column: 3, scope: !673, inlinedAt: !2084)
!2095 = !DILocation(line: 543, column: 3, scope: !673, inlinedAt: !2084)
!2096 = !DILocation(line: 544, column: 1, scope: !673, inlinedAt: !2084)
!2097 = !DILocation(line: 897, column: 5, scope: !2085)
!2098 = !DILocation(line: 899, column: 8, scope: !2085)
!2099 = !DILocation(line: 899, column: 14, scope: !2085)
!2100 = !DILocation(line: 900, column: 24, scope: !2085)
!2101 = !DILocation(line: 900, column: 8, scope: !2085)
!2102 = !DILocation(line: 900, column: 15, scope: !2085)
!2103 = !DILocation(line: 901, column: 8, scope: !2085)
!2104 = !DILocation(line: 901, column: 14, scope: !2085)
!2105 = !DILocation(line: 902, column: 8, scope: !2085)
!2106 = !DILocation(line: 902, column: 10, scope: !2085)
!2107 = !DILocation(line: 903, column: 8, scope: !2085)
!2108 = !DILocation(line: 903, column: 10, scope: !2085)
!2109 = !DILocation(line: 904, column: 8, scope: !2085)
!2110 = !DILocation(line: 904, column: 10, scope: !2085)
!2111 = !DILocation(line: 905, column: 10, scope: !2085)
!2112 = !DILocation(line: 880, column: 15, scope: !370)
!2113 = !DILocation(line: 883, column: 14, scope: !370)
!2114 = !DILocation(line: 906, column: 5, scope: !2085)
!2115 = !DILocation(line: 907, column: 5, scope: !2085)
!2116 = !DILocation(line: 908, column: 14, scope: !2085)
!2117 = !DILocation(line: 297, column: 36, scope: !645, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 908, column: 5, scope: !2085)
!2119 = !DILocation(line: 297, column: 45, scope: !645, inlinedAt: !2118)
!2120 = !DILocation(line: 272, column: 9, scope: !651, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 299, column: 3, scope: !645, inlinedAt: !2118)
!2122 = !DILocation(line: 272, column: 8, scope: !651, inlinedAt: !2121)
!2123 = !DILocation(line: 273, column: 9, scope: !651, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 300, column: 3, scope: !645, inlinedAt: !2118)
!2125 = !DILocation(line: 273, column: 3, scope: !651, inlinedAt: !2124)
!2126 = !DILocation(line: 273, column: 8, scope: !651, inlinedAt: !2124)
!2127 = !DILocation(line: 274, column: 9, scope: !651, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 301, column: 3, scope: !645, inlinedAt: !2118)
!2129 = !DILocation(line: 274, column: 3, scope: !651, inlinedAt: !2128)
!2130 = !DILocation(line: 274, column: 8, scope: !651, inlinedAt: !2128)
!2131 = !DILocation(line: 909, column: 5, scope: !2085)
!2132 = !DILocation(line: 913, column: 5, scope: !2085)
!2133 = !DILocation(line: 914, column: 5, scope: !2085)
!2134 = !DILocation(line: 918, column: 5, scope: !2085)
!2135 = !DILocation(line: 882, column: 15, scope: !370)
!2136 = !DILocation(line: 884, column: 20, scope: !370)
!2137 = !DILocation(line: 884, column: 27, scope: !370)
!2138 = !DILocation(line: 885, column: 16, scope: !370)
!2139 = !DILocation(line: 885, column: 19, scope: !370)
!2140 = !DILocation(line: 919, column: 5, scope: !2085)
!2141 = !DILocation(line: 921, column: 5, scope: !2085)
!2142 = !{!2143, !700, i64 0}
!2143 = !{!"", !700, i64 0, !2144, i64 8, !926, i64 45800, !701, i64 47080, !2145, i64 50248}
!2144 = !{!"", !703, i64 0, !703, i64 4, !703, i64 8, !700, i64 16, !700, i64 24, !701, i64 32}
!2145 = !{!"", !703, i64 0, !700, i64 8}
!2146 = !DILocation(line: 923, column: 28, scope: !2085)
!2147 = !DILocation(line: 923, column: 34, scope: !2085)
!2148 = !{!2143, !703, i64 45800}
!2149 = !DILocation(line: 923, column: 21, scope: !2085)
!2150 = !DILocation(line: 924, column: 34, scope: !2085)
!2151 = !{!2143, !703, i64 45840}
!2152 = !DILocation(line: 924, column: 12, scope: !2085)
!2153 = !DILocation(line: 924, column: 21, scope: !2085)
!2154 = !DILocation(line: 925, column: 34, scope: !2085)
!2155 = !{!2143, !703, i64 45856}
!2156 = !DILocation(line: 925, column: 12, scope: !2085)
!2157 = !DILocation(line: 925, column: 21, scope: !2085)
!2158 = !{!926, !703, i64 56}
!2159 = !DILocation(line: 928, column: 17, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 928, column: 9)
!2161 = !DILocation(line: 928, column: 10, scope: !2160)
!2162 = !DILocation(line: 928, column: 9, scope: !2085)
!2163 = !DILocation(line: 929, column: 7, scope: !2160)
!2164 = !DILocation(line: 930, column: 17, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 930, column: 9)
!2166 = !DILocation(line: 930, column: 10, scope: !2165)
!2167 = !DILocation(line: 930, column: 9, scope: !2085)
!2168 = !DILocation(line: 931, column: 7, scope: !2165)
!2169 = !DILocation(line: 932, column: 24, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !1, line: 932, column: 5)
!2171 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 932, column: 5)
!2172 = !DILocation(line: 932, column: 16, scope: !2170)
!2173 = !DILocation(line: 932, column: 5, scope: !2171)
!2174 = !DILocation(line: 933, column: 39, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2170, file: !1, line: 932, column: 34)
!2176 = !DILocation(line: 934, column: 39, scope: !2175)
!2177 = !DILocation(line: 933, column: 14, scope: !2175)
!2178 = !DILocation(line: 933, column: 7, scope: !2175)
!2179 = !{!2143, !700, i64 45808}
!2180 = !DILocation(line: 933, column: 28, scope: !2175)
!2181 = !{i64 0, i64 4, !962, i64 4, i64 4, !962, i64 8, i64 4, !962, i64 12, i64 4, !962, i64 16, i64 2, !2182, i64 18, i64 2, !2182, i64 20, i64 4, !920, i64 24, i64 4, !920, i64 28, i64 9, !720, i64 37, i64 1, !720}
!2182 = !{!704, !704, i64 0}
!2183 = !{!2143, !700, i64 45816}
!2184 = !DILocation(line: 934, column: 28, scope: !2175)
!2185 = !DILocation(line: 934, column: 14, scope: !2175)
!2186 = !DILocation(line: 934, column: 7, scope: !2175)
!2187 = !DILocation(line: 934, column: 26, scope: !2175)
!2188 = !DILocation(line: 937, column: 17, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 937, column: 9)
!2190 = !DILocation(line: 937, column: 10, scope: !2189)
!2191 = !DILocation(line: 937, column: 9, scope: !2085)
!2192 = !DILocation(line: 938, column: 7, scope: !2189)
!2193 = !DILocation(line: 939, column: 24, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !1, line: 939, column: 5)
!2195 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 939, column: 5)
!2196 = !DILocation(line: 939, column: 16, scope: !2194)
!2197 = !DILocation(line: 939, column: 5, scope: !2195)
!2198 = !DILocation(line: 940, column: 38, scope: !2194)
!2199 = !{!2143, !700, i64 45848}
!2200 = !DILocation(line: 940, column: 27, scope: !2194)
!2201 = !DILocation(line: 940, column: 25, scope: !2194)
!2202 = !DILocation(line: 940, column: 14, scope: !2194)
!2203 = !DILocation(line: 940, column: 7, scope: !2194)
!2204 = !DILocation(line: 942, column: 17, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 942, column: 9)
!2206 = !{!926, !700, i64 64}
!2207 = !DILocation(line: 942, column: 10, scope: !2205)
!2208 = !DILocation(line: 942, column: 9, scope: !2085)
!2209 = !DILocation(line: 943, column: 7, scope: !2205)
!2210 = !DILocation(line: 944, column: 24, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !1, line: 944, column: 5)
!2212 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 944, column: 5)
!2213 = !DILocation(line: 944, column: 16, scope: !2211)
!2214 = !DILocation(line: 944, column: 5, scope: !2212)
!2215 = !DILocation(line: 945, column: 38, scope: !2211)
!2216 = !{!2143, !700, i64 45864}
!2217 = !DILocation(line: 945, column: 27, scope: !2211)
!2218 = !DILocation(line: 945, column: 25, scope: !2211)
!2219 = !DILocation(line: 948, column: 38, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !1, line: 947, column: 30)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 947, column: 5)
!2222 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 947, column: 5)
!2223 = !DILocation(line: 947, column: 5, scope: !2222)
!2224 = !DILocation(line: 945, column: 14, scope: !2211)
!2225 = !DILocation(line: 945, column: 7, scope: !2211)
!2226 = !DILocation(line: 948, column: 46, scope: !2220)
!2227 = !{!2145, !703, i64 0}
!2228 = !DILocation(line: 948, column: 22, scope: !2220)
!2229 = !DILocation(line: 948, column: 25, scope: !2220)
!2230 = !DILocation(line: 949, column: 29, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2220, file: !1, line: 949, column: 11)
!2232 = !DILocation(line: 949, column: 11, scope: !2220)
!2233 = !DILocation(line: 950, column: 2, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2231, file: !1, line: 949, column: 34)
!2235 = !{!2145, !700, i64 8}
!2236 = !DILocation(line: 951, column: 2, scope: !2234)
!2237 = !DILocation(line: 953, column: 7, scope: !2234)
!2238 = !DILocation(line: 960, column: 5, scope: !2085)
!2239 = !DILocation(line: 961, column: 3, scope: !2085)
!2240 = !DILocation(line: 962, column: 1, scope: !370)
