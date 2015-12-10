; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
@.str1 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c\00", align 1
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
@stderr = external global %struct._IO_FILE*
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
@.str59 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@get_w_conf.symtab = internal unnamed_addr global %struct.t_symtab* null, align 8
@.str60 = private unnamed_addr constant [53 x i8] c"gro file contains more atoms (%d) than expected (%d)\00", align 1
@.str61 = private unnamed_addr constant [63 x i8] c"Warning: gro file contains less atoms (%d) than expected (%d)\0A\00", align 1
@.str62 = private unnamed_addr constant [35 x i8] c"Invalid line in %s for atom %d:\0A%s\00", align 1
@.str63 = private unnamed_addr constant [47 x i8] c"A coordinate in file %s does not contain a '.'\00", align 1
@.str64 = private unnamed_addr constant [19 x i8] c"%%%dlf%%%dlf%%%dlf\00", align 1
@.str65 = private unnamed_addr constant [45 x i8] c"More residues than atoms in %s (natoms = %d)\00", align 1
@.str66 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str67 = private unnamed_addr constant [19 x i8] c"Bad box in file %s\00", align 1
@.str68 = private unnamed_addr constant [45 x i8] c"Generated a cubic box %8.3f x %8.3f x %8.3f\0A\00", align 1
@.str69 = private unnamed_addr constant [28 x i8] c"%*f%*f%*f%lf%lf%lf%lf%lf%lf\00", align 1
@.str70 = private unnamed_addr constant [12 x i8] c"VELOCITYRED\00", align 1
@.str71 = private unnamed_addr constant [16 x i8] c"%15lf%15lf%15lf\00", align 1
@.str72 = private unnamed_addr constant [44 x i8] c"Did not find 3 velocities for atom %d in %s\00", align 1
@.str73 = private unnamed_addr constant [51 x i8] c"Found more velocities (%d) in %s than expected %d\0A\00", align 1
@.str74 = private unnamed_addr constant [60 x i8] c"Warning: found less velocities (%d) in %s than expected %d\0A\00", align 1
@.str75 = private unnamed_addr constant [46 x i8] c"Did not find 3 coordinates for atom %d in %s\0A\00", align 1
@.str76 = private unnamed_addr constant [52 x i8] c"Found more coordinates (%d) in %s than expected %d\0A\00", align 1
@.str77 = private unnamed_addr constant [17 x i8] c"%5d%c%5s%c%5s%7d\00", align 1
@.str79 = private unnamed_addr constant [61 x i8] c"Warning: found less coordinates (%d) in %s than expected %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @read_g96_conf(%struct._IO_FILE* %fp, i8* %infile, %struct.t_trxframe* %fr) #0 {
entry:
  %db1.i210 = alloca double, align 8
  %db2.i211 = alloca double, align 8
  %db3.i212 = alloca double, align 8
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
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !195), !dbg !676
  call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !196), !dbg !676
  call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !197), !dbg !676
  call void @llvm.dbg.declare(metadata !{double* %db1}, metadata !208), !dbg !677
  call void @llvm.dbg.declare(metadata !{double* %db2}, metadata !210), !dbg !677
  call void @llvm.dbg.declare(metadata !{double* %db3}, metadata !211), !dbg !677
  call void @llvm.dbg.declare(metadata !{double* %db4}, metadata !212), !dbg !677
  call void @llvm.dbg.declare(metadata !{double* %db5}, metadata !213), !dbg !677
  call void @llvm.dbg.declare(metadata !{double* %db6}, metadata !214), !dbg !677
  call void @llvm.dbg.declare(metadata !{double* %db7}, metadata !215), !dbg !677
  call void @llvm.dbg.declare(metadata !{double* %db8}, metadata !216), !dbg !677
  call void @llvm.dbg.declare(metadata !{double* %db9}, metadata !217), !dbg !677
  %call = call i64 @ftell(%struct._IO_FILE* %fp) #6, !dbg !678
  %cmp = icmp eq i64 %call, 0, !dbg !678
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 0) #6, !dbg !679
  %0 = load %struct.t_symtab** @read_g96_conf.symtab, align 8, !dbg !680, !tbaa !681
  %tobool = icmp eq %struct.t_symtab* %0, null, !dbg !680
  br i1 %tobool, label %if.then, label %if.end, !dbg !680

if.then:                                          ; preds = %entry
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 191, i32 1, i32 16) #6, !dbg !684
  %1 = bitcast i8* %call1 to %struct.t_symtab*, !dbg !684
  store %struct.t_symtab* %1, %struct.t_symtab** @read_g96_conf.symtab, align 8, !dbg !684, !tbaa !681
  call void @open_symtab(%struct.t_symtab* %1) #6, !dbg !686
  br label %if.end, !dbg !687

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !206), !dbg !688
  br i1 %cmp, label %while.cond.preheader, label %do.body.preheader, !dbg !689

while.cond.preheader:                             ; preds = %if.end
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !690
  %2 = load i32* %bTitle, align 4, !dbg !690, !tbaa !692
  %tobool4243 = icmp eq i32 %2, 0, !dbg !690
  br i1 %tobool4243, label %land.rhs, label %while.end, !dbg !690

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %call5 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #6, !dbg !690
  %tobool6 = icmp eq i8* %call5, null, !dbg !690
  br i1 %tobool6, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %call7 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !693
  %cmp8 = icmp eq i32 %call7, 0, !dbg !693
  %conv9 = zext i1 %cmp8 to i32, !dbg !693
  store i32 %conv9, i32* %bTitle, align 4, !dbg !693, !tbaa !692
  br i1 %cmp8, label %while.end, label %land.rhs, !dbg !690

while.end:                                        ; preds = %while.body, %land.rhs, %while.cond.preheader
  %title = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !694
  %3 = load i8** %title, align 8, !dbg !694, !tbaa !681
  %tobool11 = icmp eq i8* %3, null, !dbg !694
  br i1 %tobool11, label %land.rhs18, label %if.then12, !dbg !694

if.then12:                                        ; preds = %while.end
  %call14 = call i8* @fgets2(i8* %3, i32 4096, %struct._IO_FILE* %fp) #6, !dbg !695
  br label %land.rhs18

land.rhs18:                                       ; preds = %while.end, %if.then12, %while.body22
  %call19 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #6, !dbg !696
  %tobool20 = icmp eq i8* %call19, null, !dbg !696
  br i1 %tobool20, label %while.end26, label %while.body22

while.body22:                                     ; preds = %land.rhs18
  %call23 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !697
  %cmp24 = icmp eq i32 %call23, 0, !dbg !697
  br i1 %cmp24, label %while.end26, label %land.rhs18, !dbg !696

while.end26:                                      ; preds = %land.rhs18, %while.body22
  %call27 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #6, !dbg !698
  br label %do.body.preheader, !dbg !699

do.body.preheader:                                ; preds = %while.end26, %if.end
  %bTime47 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !700
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !700
  %bStep = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !703
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !705
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !706
  %bAtoms71 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !707
  %4 = bitcast i32* %atnr.i to i8*, !dbg !710
  %5 = bitcast i32* %resnr.i to i8*, !dbg !710
  %6 = bitcast double* %db1.i to i8*, !dbg !710
  %7 = bitcast double* %db2.i to i8*, !dbg !710
  %8 = bitcast double* %db3.i to i8*, !dbg !710
  %9 = getelementptr inbounds [4096 x i8]* %anm.i, i64 0, i64 0, !dbg !712
  %10 = getelementptr inbounds [4096 x i8]* %resnm.i, i64 0, i64 0, !dbg !712
  %natoms1.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !713
  %atoms2.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !714
  %x.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !715
  %11 = bitcast [4096 x i8]* %anm.i to i32*, !dbg !719
  %12 = bitcast [4096 x i8]* %resnm.i to i32*, !dbg !722
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !724
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !725
  %13 = bitcast double* %db1.i210 to i8*, !dbg !727
  %14 = bitcast double* %db2.i211 to i8*, !dbg !727
  %15 = bitcast double* %db3.i212 to i8*, !dbg !727
  br label %do.body, !dbg !729

do.body:                                          ; preds = %do.body.preheader, %land.rhs151
  %natoms.0 = phi i32 [ %natoms.2, %land.rhs151 ], [ 0, %do.body.preheader ]
  %call29 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !729
  %cmp30 = icmp eq i32 %call29, 0, !dbg !729
  %conv31 = zext i1 %cmp30 to i32, !dbg !729
  call void @llvm.dbg.value(metadata !{i32 %conv31}, i64 0, metadata !199), !dbg !729
  %call32 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !730
  %cmp33 = icmp eq i32 %call32, 0, !dbg !730
  %conv34 = zext i1 %cmp33 to i32, !dbg !730
  call void @llvm.dbg.value(metadata !{i32 %conv34}, i64 0, metadata !200), !dbg !730
  br i1 %cmp33, label %lor.end, label %lor.rhs, !dbg !731

lor.rhs:                                          ; preds = %do.body
  %call36 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !731
  %cmp37 = icmp eq i32 %call36, 0, !dbg !731
  br label %lor.end, !dbg !731

lor.end:                                          ; preds = %lor.rhs, %do.body
  %16 = phi i1 [ true, %do.body ], [ %cmp37, %lor.rhs ]
  %lor.ext = zext i1 %16 to i32, !dbg !731
  call void @llvm.dbg.value(metadata !{i32 %lor.ext}, i64 0, metadata !201), !dbg !731
  %call39 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i64 8) #7, !dbg !732
  %cmp40 = icmp eq i32 %call39, 0, !dbg !732
  %conv41 = zext i1 %cmp40 to i32, !dbg !732
  call void @llvm.dbg.value(metadata !{i32 %conv41}, i64 0, metadata !202), !dbg !732
  %call42 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !733
  %cmp43 = icmp eq i32 %call42, 0, !dbg !733
  %conv44 = zext i1 %cmp43 to i32, !dbg !733
  call void @llvm.dbg.value(metadata !{i32 %conv44}, i64 0, metadata !203), !dbg !733
  br i1 %cmp30, label %if.then46, label %if.end65, !dbg !734

if.then46:                                        ; preds = %lor.end
  %17 = load i32* %bTime47, align 4, !dbg !700, !tbaa !692
  %tobool48 = icmp eq i32 %17, 0, !dbg !700
  br i1 %tobool48, label %land.lhs.true, label %if.end65, !dbg !700

land.lhs.true:                                    ; preds = %if.then46
  %18 = load i32* %bX, align 4, !dbg !700, !tbaa !692
  %tobool49 = icmp eq i32 %18, 0, !dbg !700
  br i1 %tobool49, label %if.then50, label %if.end65, !dbg !700

if.then50:                                        ; preds = %land.lhs.true
  store i32 %conv31, i32* %bStep, align 4, !dbg !703, !tbaa !692
  store i32 %conv31, i32* %bTime47, align 4, !dbg !735, !tbaa !692
  br label %do.body52, !dbg !736

do.body52:                                        ; preds = %do.body52, %if.then50
  %call53 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #6, !dbg !737
  %cmp54 = icmp eq i8* %call53, null, !dbg !737
  call void @llvm.dbg.value(metadata !{i32 %conv55}, i64 0, metadata !205), !dbg !737
  %cmp54.not = xor i1 %cmp54, true, !dbg !737
  %19 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16, !dbg !737, !tbaa !682
  %cmp59 = icmp eq i8 %19, 35, !dbg !737
  %or.cond = and i1 %cmp59, %cmp54.not, !dbg !737
  br i1 %or.cond, label %do.body52, label %do.end, !dbg !737

do.end:                                           ; preds = %do.body52
  %conv55 = zext i1 %cmp54 to i32, !dbg !737
  %call62 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32* %step, double* %db1) #6, !dbg !705
  call void @llvm.dbg.value(metadata !{double* %db1}, i64 0, metadata !208), !dbg !706
  %20 = load double* %db1, align 8, !dbg !706, !tbaa !738
  %conv63 = fptrunc double %20 to float, !dbg !706
  store float %conv63, float* %time, align 4, !dbg !706, !tbaa !739
  br label %if.end65, !dbg !740

if.end65:                                         ; preds = %if.then46, %land.lhs.true, %do.end, %lor.end
  %bFinished.1 = phi i32 [ %conv55, %do.end ], [ 0, %lor.end ], [ 1, %land.lhs.true ], [ 1, %if.then46 ]
  br i1 %16, label %if.then67, label %if.end76, !dbg !741

if.then67:                                        ; preds = %if.end65
  %21 = load i32* %bX, align 4, !dbg !742, !tbaa !692
  %tobool69 = icmp eq i32 %21, 0, !dbg !742
  br i1 %tobool69, label %if.then70, label %if.end76, !dbg !742

if.then70:                                        ; preds = %if.then67
  store i32 %conv34, i32* %bAtoms71, align 4, !dbg !707, !tbaa !692
  store i32 %lor.ext, i32* %bX, align 4, !dbg !743, !tbaa !692
  %22 = load %struct.t_symtab** @read_g96_conf.symtab, align 8, !dbg !711, !tbaa !681
  call void @llvm.lifetime.start(i64 4, i8* %4) #5, !dbg !710
  call void @llvm.lifetime.start(i64 4, i8* %5) #5, !dbg !710
  call void @llvm.lifetime.start(i64 1, i8* %c1.i) #5, !dbg !710
  call void @llvm.lifetime.start(i64 1, i8* %c2.i) #5, !dbg !710
  call void @llvm.lifetime.start(i64 8, i8* %6) #5, !dbg !710
  call void @llvm.lifetime.start(i64 8, i8* %7) #5, !dbg !710
  call void @llvm.lifetime.start(i64 8, i8* %8) #5, !dbg !710
  call void @llvm.dbg.value(metadata !744, i64 0, metadata !745) #5, !dbg !710
  call void @llvm.dbg.declare(metadata !{i32* %atnr.i}, metadata !659) #5, !dbg !746
  call void @llvm.dbg.declare(metadata !{i32* %resnr.i}, metadata !660) #5, !dbg !746
  call void @llvm.lifetime.start(i64 4096, i8* %9) #5, !dbg !712
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %anm.i}, metadata !664) #5, !dbg !712
  call void @llvm.lifetime.start(i64 4096, i8* %10) #5, !dbg !712
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %resnm.i}, metadata !665) #5, !dbg !712
  call void @llvm.dbg.declare(metadata !{i8* %c1.i}, metadata !666) #5, !dbg !747
  call void @llvm.dbg.declare(metadata !{i8* %c2.i}, metadata !667) #5, !dbg !747
  call void @llvm.dbg.declare(metadata !{double* %db1.i}, metadata !668) #5, !dbg !748
  call void @llvm.dbg.declare(metadata !{double* %db2.i}, metadata !669) #5, !dbg !748
  call void @llvm.dbg.declare(metadata !{double* %db3.i}, metadata !670) #5, !dbg !748
  %23 = load i32* %natoms1.i, align 4, !dbg !713, !tbaa !692
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !749) #5, !dbg !713
  %24 = load %struct.t_atoms** %atoms2.i, align 8, !dbg !714, !tbaa !681
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %24}, i64 0, metadata !750) #5, !dbg !714
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !751) #5, !dbg !752
  br i1 %16, label %if.then.i, label %read_g96_pos.exit, !dbg !753

if.then.i:                                        ; preds = %if.then70
  %..i = select i1 %cmp33, i64 24, i64 0
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !754) #5, !dbg !755
  call void @llvm.dbg.value(metadata !756, i64 0, metadata !757) #5, !dbg !758
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !759) #5, !dbg !760
  %add.ptr.i = getelementptr inbounds [4097 x i8]* @read_g96_conf.line, i64 0, i64 %..i, !dbg !761
  %cmp18.i = icmp eq i32 %23, -1, !dbg !762
  %tobool25.i = icmp eq %struct.t_atoms* %24, null, !dbg !763
  %atomname.i = getelementptr inbounds %struct.t_atoms* %24, i64 0, i32 2, !dbg !764
  %atom.i = getelementptr inbounds %struct.t_atoms* %24, i64 0, i32 1, !dbg !765
  %nr.i = getelementptr inbounds %struct.t_atoms* %24, i64 0, i32 0, !dbg !766
  %resname.i = getelementptr inbounds %struct.t_atoms* %24, i64 0, i32 6, !dbg !768
  %nres.i = getelementptr inbounds %struct.t_atoms* %24, i64 0, i32 5, !dbg !769
  br label %while.cond.outer.i, !dbg !770

while.cond.outer.i:                               ; preds = %if.end89.i, %if.then.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.end89.i ], [ 0, %if.then.i ]
  %natoms.0.ph.i = phi i32 [ %inc90.i, %if.end89.i ], [ 0, %if.then.i ]
  %oldres.0.ph.i = phi i32 [ %oldres.2.i, %if.end89.i ], [ -666, %if.then.i ]
  %newres.0.ph.i = phi i32 [ %newres.2.i, %if.end89.i ], [ 0, %if.then.i ]
  %bEnd.0.ph.i = phi i32 [ %conv.i, %if.end89.i ], [ 0, %if.then.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %while.cond.outer.i
  %bEnd.0.i = phi i32 [ %conv.i, %while.body.i ], [ %bEnd.0.ph.i, %while.cond.outer.i ]
  %tobool5.i = icmp eq i32 %bEnd.0.i, 0, !dbg !770
  br i1 %tobool5.i, label %land.rhs.i, label %while.end.i, !dbg !770

land.rhs.i:                                       ; preds = %while.cond.i
  %call.i = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #6, !dbg !770
  %tobool6.i = icmp eq i8* %call.i, null, !dbg !770
  br i1 %tobool6.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %call7.i = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3) #7, !dbg !771
  %cmp.i = icmp eq i32 %call7.i, 0, !dbg !771
  %conv.i = zext i1 %cmp.i to i32, !dbg !771
  call void @llvm.dbg.value(metadata !{i32 %conv.i}, i64 0, metadata !759) #5, !dbg !771
  %25 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16, !dbg !772, !tbaa !682
  %cmp10.i = icmp eq i8 %25, 35, !dbg !772
  %or.cond.i = or i1 %cmp.i, %cmp10.i, !dbg !772
  br i1 %or.cond.i, label %while.cond.i, label %if.then12.i, !dbg !772

if.then12.i:                                      ; preds = %while.body.i
  %call13.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr.i, i8* getelementptr inbounds ([16 x i8]* @.str71, i64 0, i64 0), double* %db1.i, double* %db2.i, double* %db3.i) #6, !dbg !761
  %cmp14.i = icmp eq i32 %call13.i, 3, !dbg !761
  br i1 %cmp14.i, label %if.end17.i, label %if.then16.i, !dbg !761

if.then16.i:                                      ; preds = %if.then12.i
  %26 = add nsw i64 %indvars.iv.i, 1, !dbg !773
  %27 = trunc i64 %26 to i32, !dbg !773
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str75, i64 0, i64 0), i32 %27, i8* %infile) #6, !dbg !773
  br label %if.end17.i, !dbg !773

if.end17.i:                                       ; preds = %if.then16.i, %if.then12.i
  %28 = trunc i64 %indvars.iv.i to i32, !dbg !762
  %cmp21.i = icmp slt i32 %28, %23, !dbg !762
  %or.cond1.i = or i1 %cmp18.i, %cmp21.i, !dbg !762
  br i1 %or.cond1.i, label %if.end24.i, label %if.then23.i, !dbg !762

if.then23.i:                                      ; preds = %if.end17.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str76, i64 0, i64 0), i32 %28, i8* %infile, i32 %23) #6, !dbg !774
  br label %if.end24.i, !dbg !774

if.end24.i:                                       ; preds = %if.then23.i, %if.end17.i
  br i1 %tobool25.i, label %if.end71.i, label %land.lhs.true28.i, !dbg !763

land.lhs.true28.i:                                ; preds = %if.end24.i
  %29 = load i32* %bAtoms71, align 4, !dbg !775, !tbaa !692
  %tobool30.i = icmp eq i32 %29, 0, !dbg !775
  br i1 %tobool30.i, label %if.end46.i, label %land.lhs.true31.i, !dbg !775

land.lhs.true31.i:                                ; preds = %land.lhs.true28.i
  %call33.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str77, i64 0, i64 0), i32* %resnr.i, i8* %c1.i, i8* %10, i8* %c2.i, i8* %9, i32* %atnr.i) #6, !dbg !776
  %cmp34.i = icmp eq i32 %call33.i, 6, !dbg !776
  br i1 %cmp34.i, label %if.end46.i, label %if.then36.i, !dbg !776

if.then36.i:                                      ; preds = %land.lhs.true31.i
  %cmp37.i = icmp sgt i32 %oldres.0.ph.i, -1, !dbg !777
  br i1 %cmp37.i, label %if.then39.i, label %if.else40.i, !dbg !777

if.then39.i:                                      ; preds = %if.then36.i
  call void @llvm.dbg.value(metadata !{i32 %oldres.0.ph.i}, i64 0, metadata !778) #5, !dbg !779
  call void @llvm.dbg.value(metadata !{i32 %oldres.0.ph.i}, i64 0, metadata !660), !dbg !779
  store i32 %oldres.0.ph.i, i32* %resnr.i, align 4, !dbg !779, !tbaa !692
  br label %if.end43.i, !dbg !779

if.else40.i:                                      ; preds = %if.then36.i
  call void @llvm.dbg.value(metadata !780, i64 0, metadata !778) #5, !dbg !781
  call void @llvm.dbg.value(metadata !780, i64 0, metadata !660), !dbg !781
  store i32 1, i32* %resnr.i, align 4, !dbg !781, !tbaa !692
  store i32 4144959, i32* %12, align 16, !dbg !722
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else40.i, %if.then39.i
  store i32 4144959, i32* %11, align 16, !dbg !719
  br label %if.end46.i, !dbg !782

if.end46.i:                                       ; preds = %if.end43.i, %land.lhs.true31.i, %land.lhs.true28.i
  %call48.i = call i8** @put_symtab(%struct.t_symtab* %22, i8* %9) #6, !dbg !764
  %30 = load i8**** %atomname.i, align 8, !dbg !764, !tbaa !681
  %arrayidx49.i = getelementptr inbounds i8*** %30, i64 %indvars.iv.i, !dbg !764
  store i8** %call48.i, i8*** %arrayidx49.i, align 8, !dbg !764, !tbaa !681
  call void @llvm.dbg.value(metadata !{i32* %resnr.i}, i64 0, metadata !778) #5, !dbg !783
  call void @llvm.dbg.value(metadata !{i32* %resnr.i}, i64 0, metadata !660), !dbg !783
  %31 = load i32* %resnr.i, align 4, !dbg !783, !tbaa !692
  %cmp50.i = icmp eq i32 %31, %oldres.0.ph.i, !dbg !783
  br i1 %cmp50.i, label %if.end67.i, label %if.then52.i, !dbg !783

if.then52.i:                                      ; preds = %if.end46.i
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !757) #5, !dbg !784
  %32 = load i32* %nr.i, align 4, !dbg !766, !tbaa !692
  %cmp53.i = icmp slt i32 %newres.0.ph.i, %32, !dbg !766
  br i1 %cmp53.i, label %if.end57.i, label %if.then55.i, !dbg !766

if.then55.i:                                      ; preds = %if.then52.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str65, i64 0, i64 0), i8* %infile, i32 %32) #6, !dbg !785
  br label %if.end57.i, !dbg !785

if.end57.i:                                       ; preds = %if.then55.i, %if.then52.i
  %call59.i = call i8** @put_symtab(%struct.t_symtab* %22, i8* %10) #6, !dbg !768
  %idxprom60.i = sext i32 %newres.0.ph.i to i64, !dbg !768
  %33 = load i8**** %resname.i, align 8, !dbg !768, !tbaa !681
  %arrayidx61.i = getelementptr inbounds i8*** %33, i64 %idxprom60.i, !dbg !768
  store i8** %call59.i, i8*** %arrayidx61.i, align 8, !dbg !768, !tbaa !681
  %inc.i = add nsw i32 %newres.0.ph.i, 1, !dbg !786
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !754) #5, !dbg !786
  %34 = load i32* %nres.i, align 4, !dbg !769, !tbaa !692
  %cmp62.i = icmp slt i32 %newres.0.ph.i, %34, !dbg !769
  br i1 %cmp62.i, label %if.end67.i, label %if.then64.i, !dbg !769

if.then64.i:                                      ; preds = %if.end57.i
  store i32 %inc.i, i32* %nres.i, align 4, !dbg !787, !tbaa !692
  br label %if.end67.i, !dbg !787

if.end67.i:                                       ; preds = %if.then64.i, %if.end57.i, %if.end46.i
  %oldres.1.i = phi i32 [ %31, %if.then64.i ], [ %31, %if.end57.i ], [ %oldres.0.ph.i, %if.end46.i ]
  %newres.1.i = phi i32 [ %inc.i, %if.then64.i ], [ %inc.i, %if.end57.i ], [ %newres.0.ph.i, %if.end46.i ]
  call void @llvm.dbg.value(metadata !{i32 %newres.1.i}, i64 0, metadata !778) #5, !dbg !788
  call void @llvm.dbg.value(metadata !{i32 %newres.1.i}, i64 0, metadata !660), !dbg !788
  store i32 %newres.1.i, i32* %resnr.i, align 4, !dbg !788, !tbaa !692
  %sub.i = add nsw i32 %newres.1.i, -1, !dbg !765
  %35 = load %struct.t_atom** %atom.i, align 8, !dbg !765, !tbaa !681
  %resnr70.i = getelementptr inbounds %struct.t_atom* %35, i64 %indvars.iv.i, i32 7, !dbg !765
  store i32 %sub.i, i32* %resnr70.i, align 4, !dbg !765, !tbaa !692
  br label %if.end71.i, !dbg !789

if.end71.i:                                       ; preds = %if.end67.i, %if.end24.i
  %oldres.2.i = phi i32 [ %oldres.1.i, %if.end67.i ], [ %oldres.0.ph.i, %if.end24.i ]
  %newres.2.i = phi i32 [ %newres.1.i, %if.end67.i ], [ %newres.0.ph.i, %if.end24.i ]
  %36 = load [3 x float]** %x.i, align 8, !dbg !715, !tbaa !681
  %tobool72.i = icmp eq [3 x float]* %36, null, !dbg !715
  br i1 %tobool72.i, label %if.end89.i, label %if.then73.i, !dbg !715

if.then73.i:                                      ; preds = %if.end71.i
  call void @llvm.dbg.value(metadata !{double* %db1.i}, i64 0, metadata !790) #5, !dbg !791
  call void @llvm.dbg.value(metadata !{double* %db1.i}, i64 0, metadata !668), !dbg !791
  %37 = load double* %db1.i, align 8, !dbg !791, !tbaa !738
  %conv74.i = fptrunc double %37 to float, !dbg !791
  %arrayidx78.i = getelementptr inbounds [3 x float]* %36, i64 %indvars.iv.i, i64 0, !dbg !791
  store float %conv74.i, float* %arrayidx78.i, align 4, !dbg !791, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %db2.i}, i64 0, metadata !793) #5, !dbg !794
  call void @llvm.dbg.value(metadata !{double* %db2.i}, i64 0, metadata !669), !dbg !794
  %38 = load double* %db2.i, align 8, !dbg !794, !tbaa !738
  %conv79.i = fptrunc double %38 to float, !dbg !794
  %arrayidx83.i = getelementptr inbounds [3 x float]* %36, i64 %indvars.iv.i, i64 1, !dbg !794
  store float %conv79.i, float* %arrayidx83.i, align 4, !dbg !794, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %db3.i}, i64 0, metadata !795) #5, !dbg !796
  call void @llvm.dbg.value(metadata !{double* %db3.i}, i64 0, metadata !670), !dbg !796
  %39 = load double* %db3.i, align 8, !dbg !796, !tbaa !738
  %conv84.i = fptrunc double %39 to float, !dbg !796
  %arrayidx88.i = getelementptr inbounds [3 x float]* %36, i64 %indvars.iv.i, i64 2, !dbg !796
  store float %conv84.i, float* %arrayidx88.i, align 4, !dbg !796, !tbaa !739
  br label %if.end89.i, !dbg !797

if.end89.i:                                       ; preds = %if.then73.i, %if.end71.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !798
  %inc90.i = add nsw i32 %natoms.0.ph.i, 1, !dbg !799
  call void @llvm.dbg.value(metadata !{i32 %inc90.i}, i64 0, metadata !751) #5, !dbg !799
  br label %while.cond.outer.i, !dbg !798

while.end.i:                                      ; preds = %land.rhs.i, %while.cond.i
  %cmp95.i = icmp eq i32 %natoms.0.ph.i, %23, !dbg !800
  %or.cond2.i = or i1 %cmp18.i, %cmp95.i, !dbg !800
  br i1 %or.cond2.i, label %read_g96_pos.exit, label %if.then97.i, !dbg !800

if.then97.i:                                      ; preds = %while.end.i
  %40 = load %struct._IO_FILE** @stderr, align 8, !dbg !801, !tbaa !681
  %call98.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([61 x i8]* @.str79, i64 0, i64 0), i32 %natoms.0.ph.i, i8* %infile, i32 %23) #6, !dbg !801
  br label %read_g96_pos.exit, !dbg !801

read_g96_pos.exit:                                ; preds = %if.then70, %while.end.i, %if.then97.i
  %natoms.1.i = phi i32 [ %natoms.0.ph.i, %if.then97.i ], [ %natoms.0.ph.i, %while.end.i ], [ 0, %if.then70 ]
  store i32 %natoms.1.i, i32* %natoms1.i, align 4, !dbg !802, !tbaa !692
  call void @llvm.lifetime.end(i64 4096, i8* %10) #5, !dbg !803
  call void @llvm.lifetime.end(i64 4096, i8* %9) #5, !dbg !803
  call void @llvm.lifetime.end(i64 4, i8* %4) #5, !dbg !803
  call void @llvm.lifetime.end(i64 4, i8* %5) #5, !dbg !803
  call void @llvm.lifetime.end(i64 1, i8* %c1.i) #5, !dbg !803
  call void @llvm.lifetime.end(i64 1, i8* %c2.i) #5, !dbg !803
  call void @llvm.lifetime.end(i64 8, i8* %6) #5, !dbg !803
  call void @llvm.lifetime.end(i64 8, i8* %7) #5, !dbg !803
  call void @llvm.lifetime.end(i64 8, i8* %8) #5, !dbg !803
  call void @llvm.dbg.value(metadata !{i32 %natoms.1.i}, i64 0, metadata !206), !dbg !711
  br label %if.end76, !dbg !804

if.end76:                                         ; preds = %if.then67, %read_g96_pos.exit, %if.end65
  %bFinished.2 = phi i32 [ %bFinished.1, %read_g96_pos.exit ], [ %bFinished.1, %if.end65 ], [ 1, %if.then67 ]
  %natoms.1 = phi i32 [ %natoms.1.i, %read_g96_pos.exit ], [ %natoms.0, %if.end65 ], [ %natoms.0, %if.then67 ]
  %41 = load [3 x float]** %v, align 8, !dbg !724, !tbaa !681
  %tobool77 = icmp eq [3 x float]* %41, null, !dbg !724
  %cmp40.not = xor i1 %cmp40, true, !dbg !724
  %brmerge = or i1 %tobool77, %cmp40.not, !dbg !724
  br i1 %brmerge, label %if.end82, label %land.lhs.true.i, !dbg !724

land.lhs.true.i:                                  ; preds = %if.end76
  store i32 %conv41, i32* %bV, align 4, !dbg !725, !tbaa !692
  call void @llvm.lifetime.start(i64 8, i8* %13) #5, !dbg !727
  call void @llvm.lifetime.start(i64 8, i8* %14) #5, !dbg !727
  call void @llvm.lifetime.start(i64 8, i8* %15) #5, !dbg !727
  call void @llvm.dbg.value(metadata !744, i64 0, metadata !805) #5, !dbg !727
  call void @llvm.dbg.value(metadata !806, i64 0, metadata !807) #5, !dbg !808
  call void @llvm.dbg.declare(metadata !{double* %db1.i210}, metadata !642) #5, !dbg !809
  call void @llvm.dbg.declare(metadata !{double* %db2.i211}, metadata !643) #5, !dbg !809
  call void @llvm.dbg.declare(metadata !{double* %db3.i212}, metadata !644) #5, !dbg !809
  %42 = load i32* %natoms1.i, align 4, !dbg !810, !tbaa !692
  call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !811) #5, !dbg !810
  br i1 %cmp40, label %if.then.i219, label %if.end82, !dbg !812

if.then.i219:                                     ; preds = %land.lhs.true.i
  %call.i215 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str70, i64 0, i64 0)) #7, !dbg !813
  %cmp.i216 = icmp eq i32 %call.i215, 0, !dbg !813
  %..i217 = select i1 %cmp.i216, i64 0, i64 24, !dbg !815
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !807) #5, !dbg !816
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !817) #5, !dbg !818
  %add.ptr.i218 = getelementptr inbounds [4097 x i8]* @read_g96_conf.line, i64 0, i64 %..i217, !dbg !819
  %cmp20.i = icmp eq i32 %42, -1, !dbg !822
  br label %while.cond.outer.i223, !dbg !823

while.cond.outer.i223:                            ; preds = %if.end44.i, %if.then.i219
  %indvars.iv.i220 = phi i64 [ %indvars.iv.next.i233, %if.end44.i ], [ 0, %if.then.i219 ]
  %bEnd.0.ph.i221 = phi i32 [ %conv.i229, %if.end44.i ], [ 0, %if.then.i219 ]
  %natoms.0.ph.i222 = phi i32 [ %inc.i234, %if.end44.i ], [ 0, %if.then.i219 ]
  br label %while.cond.i225

while.cond.i225:                                  ; preds = %while.body.i231, %while.cond.outer.i223
  %bEnd.0.i224 = phi i32 [ %conv.i229, %while.body.i231 ], [ %bEnd.0.ph.i221, %while.cond.outer.i223 ]
  %tobool4.i = icmp eq i32 %bEnd.0.i224, 0, !dbg !823
  br i1 %tobool4.i, label %land.rhs.i227, label %while.end.i236, !dbg !823

land.rhs.i227:                                    ; preds = %while.cond.i225
  %call5.i = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #6, !dbg !823
  %tobool6.i226 = icmp eq i8* %call5.i, null, !dbg !823
  br i1 %tobool6.i226, label %while.end.i236, label %while.body.i231

while.body.i231:                                  ; preds = %land.rhs.i227
  %call7.i228 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3) #7, !dbg !824
  %cmp8.i = icmp eq i32 %call7.i228, 0, !dbg !824
  %conv.i229 = zext i1 %cmp8.i to i32, !dbg !824
  call void @llvm.dbg.value(metadata !{i32 %conv.i229}, i64 0, metadata !817) #5, !dbg !824
  %43 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16, !dbg !825, !tbaa !682
  %cmp12.i = icmp eq i8 %43, 35, !dbg !825
  %or.cond.i230 = or i1 %cmp8.i, %cmp12.i, !dbg !825
  br i1 %or.cond.i230, label %while.cond.i225, label %if.then14.i, !dbg !825

if.then14.i:                                      ; preds = %while.body.i231
  %call15.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr.i218, i8* getelementptr inbounds ([16 x i8]* @.str71, i64 0, i64 0), double* %db1.i210, double* %db2.i211, double* %db3.i212) #6, !dbg !819
  %cmp16.i = icmp eq i32 %call15.i, 3, !dbg !819
  br i1 %cmp16.i, label %if.end19.i, label %if.then18.i, !dbg !819

if.then18.i:                                      ; preds = %if.then14.i
  %44 = add nsw i64 %indvars.iv.i220, 1, !dbg !826
  %45 = trunc i64 %44 to i32, !dbg !826
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str72, i64 0, i64 0), i32 %45, i8* %infile) #6, !dbg !826
  br label %if.end19.i, !dbg !826

if.end19.i:                                       ; preds = %if.then18.i, %if.then14.i
  %46 = trunc i64 %indvars.iv.i220 to i32, !dbg !822
  %cmp23.i = icmp slt i32 %46, %42, !dbg !822
  %or.cond1.i232 = or i1 %cmp20.i, %cmp23.i, !dbg !822
  br i1 %or.cond1.i232, label %if.end26.i, label %if.then25.i, !dbg !822

if.then25.i:                                      ; preds = %if.end19.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([51 x i8]* @.str73, i64 0, i64 0), i32 %46, i8* %infile, i32 %42) #6, !dbg !827
  br label %if.end26.i, !dbg !827

if.end26.i:                                       ; preds = %if.then25.i, %if.end19.i
  %47 = load [3 x float]** %v, align 8, !dbg !828, !tbaa !681
  %tobool28.i = icmp eq [3 x float]* %47, null, !dbg !828
  br i1 %tobool28.i, label %if.end44.i, label %if.then29.i, !dbg !828

if.then29.i:                                      ; preds = %if.end26.i
  call void @llvm.dbg.value(metadata !{double* %db1.i210}, i64 0, metadata !829) #5, !dbg !830
  call void @llvm.dbg.value(metadata !{double* %db1.i210}, i64 0, metadata !642), !dbg !830
  %48 = load double* %db1.i210, align 8, !dbg !830, !tbaa !738
  %conv30.i = fptrunc double %48 to float, !dbg !830
  %arrayidx33.i = getelementptr inbounds [3 x float]* %47, i64 %indvars.iv.i220, i64 0, !dbg !830
  store float %conv30.i, float* %arrayidx33.i, align 4, !dbg !830, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %db2.i211}, i64 0, metadata !832) #5, !dbg !833
  call void @llvm.dbg.value(metadata !{double* %db2.i211}, i64 0, metadata !643), !dbg !833
  %49 = load double* %db2.i211, align 8, !dbg !833, !tbaa !738
  %conv34.i = fptrunc double %49 to float, !dbg !833
  %arrayidx38.i = getelementptr inbounds [3 x float]* %47, i64 %indvars.iv.i220, i64 1, !dbg !833
  store float %conv34.i, float* %arrayidx38.i, align 4, !dbg !833, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %db3.i212}, i64 0, metadata !834) #5, !dbg !835
  call void @llvm.dbg.value(metadata !{double* %db3.i212}, i64 0, metadata !644), !dbg !835
  %50 = load double* %db3.i212, align 8, !dbg !835, !tbaa !738
  %conv39.i = fptrunc double %50 to float, !dbg !835
  %arrayidx43.i = getelementptr inbounds [3 x float]* %47, i64 %indvars.iv.i220, i64 2, !dbg !835
  store float %conv39.i, float* %arrayidx43.i, align 4, !dbg !835, !tbaa !739
  br label %if.end44.i, !dbg !836

if.end44.i:                                       ; preds = %if.then29.i, %if.end26.i
  %indvars.iv.next.i233 = add i64 %indvars.iv.i220, 1, !dbg !837
  %inc.i234 = add nsw i32 %natoms.0.ph.i222, 1, !dbg !838
  call void @llvm.dbg.value(metadata !{i32 %inc.i234}, i64 0, metadata !807) #5, !dbg !838
  br label %while.cond.outer.i223, !dbg !837

while.end.i236:                                   ; preds = %land.rhs.i227, %while.cond.i225
  %cmp49.i = icmp eq i32 %natoms.0.ph.i222, %42, !dbg !839
  %or.cond2.i235 = or i1 %cmp20.i, %cmp49.i, !dbg !839
  br i1 %or.cond2.i235, label %if.end82, label %if.then51.i, !dbg !839

if.then51.i:                                      ; preds = %while.end.i236
  %51 = load %struct._IO_FILE** @stderr, align 8, !dbg !840, !tbaa !681
  %call52.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([60 x i8]* @.str74, i64 0, i64 0), i32 %natoms.0.ph.i222, i8* %infile, i32 %42) #6, !dbg !840
  br label %if.end82, !dbg !840

if.end82:                                         ; preds = %land.lhs.true.i, %if.then51.i, %while.end.i236, %if.end76
  %natoms.2 = phi i32 [ %natoms.1, %if.end76 ], [ %natoms.0.ph.i222, %if.then51.i ], [ %natoms.0.ph.i222, %while.end.i236 ], [ -1, %land.lhs.true.i ]
  br i1 %cmp43, label %if.then84, label %do.cond149, !dbg !841

if.then84:                                        ; preds = %if.end82
  %bBox85 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !842
  store i32 %conv44, i32* %bBox85, align 4, !dbg !842, !tbaa !692
  %box = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, !dbg !844
  call void @llvm.dbg.value(metadata !845, i64 0, metadata !846) #5, !dbg !847
  %52 = bitcast [3 x [3 x float]]* %box to i8*, !dbg !848
  call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 36, i32 4, i1 false) #5, !dbg !849
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !204), !dbg !850
  %arrayidx109 = getelementptr inbounds [3 x [3 x float]]* %box, i64 0, i64 0, i64 0, !dbg !851
  %arrayidx113 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !854
  %arrayidx117 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !855
  %arrayidx124 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1, !dbg !856
  %arrayidx128 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2, !dbg !858
  %arrayidx132 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0, !dbg !859
  %arrayidx136 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2, !dbg !860
  %arrayidx140 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0, !dbg !861
  %arrayidx144 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1, !dbg !862
  br label %land.rhs88, !dbg !863

land.rhs88:                                       ; preds = %while.cond86.backedge, %if.then84
  %call89 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #6, !dbg !863
  %tobool90 = icmp eq i8* %call89, null, !dbg !863
  br i1 %tobool90, label %do.end155, label %while.body92

while.body92:                                     ; preds = %land.rhs88
  %call93 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3) #7, !dbg !864
  %cmp94 = icmp eq i32 %call93, 0, !dbg !864
  %53 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16, !dbg !865, !tbaa !682
  %cmp99 = icmp eq i8 %53, 35, !dbg !865
  %or.cond209 = or i1 %cmp94, %cmp99, !dbg !865
  br i1 %or.cond209, label %while.cond86.backedge, label %if.then101, !dbg !865

if.then101:                                       ; preds = %while.body92
  %call102 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), double* %db1, double* %db2, double* %db3, double* %db4, double* %db5, double* %db6, double* %db7, double* %db8, double* %db9) #6, !dbg !866
  call void @llvm.dbg.value(metadata !{i32 %call102}, i64 0, metadata !207), !dbg !866
  %cmp103 = icmp slt i32 %call102, 3, !dbg !867
  br i1 %cmp103, label %if.then105, label %if.end106, !dbg !867

if.then105:                                       ; preds = %if.then101
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str11, i64 0, i64 0), i8* %infile) #6, !dbg !868
  br label %if.end106, !dbg !868

if.end106:                                        ; preds = %if.then105, %if.then101
  call void @llvm.dbg.value(metadata !{double* %db1}, i64 0, metadata !208), !dbg !851
  %54 = load double* %db1, align 8, !dbg !851, !tbaa !738
  %conv107 = fptrunc double %54 to float, !dbg !851
  store float %conv107, float* %arrayidx109, align 4, !dbg !851, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %db2}, i64 0, metadata !210), !dbg !854
  %55 = load double* %db2, align 8, !dbg !854, !tbaa !738
  %conv110 = fptrunc double %55 to float, !dbg !854
  store float %conv110, float* %arrayidx113, align 4, !dbg !854, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %db3}, i64 0, metadata !211), !dbg !855
  %56 = load double* %db3, align 8, !dbg !855, !tbaa !738
  %conv114 = fptrunc double %56 to float, !dbg !855
  store float %conv114, float* %arrayidx117, align 4, !dbg !855, !tbaa !739
  %cmp118 = icmp eq i32 %call102, 9, !dbg !869
  br i1 %cmp118, label %if.then120, label %while.cond86.backedge, !dbg !869

while.cond86.backedge:                            ; preds = %if.end106, %if.then120, %while.body92
  br i1 %cmp94, label %do.end155, label %land.rhs88, !dbg !863

if.then120:                                       ; preds = %if.end106
  call void @llvm.dbg.value(metadata !{double* %db4}, i64 0, metadata !212), !dbg !856
  %57 = load double* %db4, align 8, !dbg !856, !tbaa !738
  %conv121 = fptrunc double %57 to float, !dbg !856
  store float %conv121, float* %arrayidx124, align 4, !dbg !856, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %db5}, i64 0, metadata !213), !dbg !858
  %58 = load double* %db5, align 8, !dbg !858, !tbaa !738
  %conv125 = fptrunc double %58 to float, !dbg !858
  store float %conv125, float* %arrayidx128, align 4, !dbg !858, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %db6}, i64 0, metadata !214), !dbg !859
  %59 = load double* %db6, align 8, !dbg !859, !tbaa !738
  %conv129 = fptrunc double %59 to float, !dbg !859
  store float %conv129, float* %arrayidx132, align 4, !dbg !859, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %db7}, i64 0, metadata !215), !dbg !860
  %60 = load double* %db7, align 8, !dbg !860, !tbaa !738
  %conv133 = fptrunc double %60 to float, !dbg !860
  store float %conv133, float* %arrayidx136, align 4, !dbg !860, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %db8}, i64 0, metadata !216), !dbg !861
  %61 = load double* %db8, align 8, !dbg !861, !tbaa !738
  %conv137 = fptrunc double %61 to float, !dbg !861
  store float %conv137, float* %arrayidx140, align 4, !dbg !861, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %db9}, i64 0, metadata !217), !dbg !862
  %62 = load double* %db9, align 8, !dbg !862, !tbaa !738
  %conv141 = fptrunc double %62 to float, !dbg !862
  store float %conv141, float* %arrayidx144, align 4, !dbg !862, !tbaa !739
  br label %while.cond86.backedge, !dbg !870

do.cond149:                                       ; preds = %if.end82
  %tobool150 = icmp eq i32 %bFinished.2, 0, !dbg !871
  br i1 %tobool150, label %land.rhs151, label %do.end155, !dbg !871

land.rhs151:                                      ; preds = %do.cond149
  %call152 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #6, !dbg !872
  %tobool153 = icmp eq i8* %call152, null, !dbg !872
  br i1 %tobool153, label %do.end155, label %do.body

do.end155:                                        ; preds = %land.rhs151, %do.cond149, %land.rhs88, %while.cond86.backedge
  %63 = load %struct.t_symtab** @read_g96_conf.symtab, align 8, !dbg !873, !tbaa !681
  call void @close_symtab(%struct.t_symtab* %63) #6, !dbg !873
  store i32 %natoms.2, i32* %natoms1.i, align 4, !dbg !874, !tbaa !692
  ret i32 %natoms.2, !dbg !875
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @clear_trxframe(%struct.t_trxframe*, i32) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @open_symtab(%struct.t_symtab*) #3

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare void @close_symtab(%struct.t_symtab*) #3

; Function Attrs: nounwind optsize uwtable
define void @write_g96_conf(%struct._IO_FILE* nocapture %out, %struct.t_trxframe* %fr, i32 %nindex, i32* %index) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !222), !dbg !876
  tail call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !223), !dbg !876
  tail call void @llvm.dbg.value(metadata !{i32 %nindex}, i64 0, metadata !224), !dbg !877
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !225), !dbg !877
  %atoms1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !878
  %0 = load %struct.t_atoms** %atoms1, align 8, !dbg !878, !tbaa !681
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %0}, i64 0, metadata !226), !dbg !878
  %tobool = icmp ne i32* %index, null, !dbg !879
  br i1 %tobool, label %if.end, label %if.else, !dbg !879

if.else:                                          ; preds = %entry
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !880
  %1 = load i32* %natoms, align 4, !dbg !880, !tbaa !692
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !227), !dbg !880
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %nout.0 = phi i32 [ %1, %if.else ], [ %nindex, %entry ]
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !881
  %2 = load i32* %bTitle, align 4, !dbg !881, !tbaa !692
  %tobool2 = icmp eq i32 %2, 0, !dbg !881
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !881

if.then3:                                         ; preds = %if.end
  %title = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !882
  %3 = load i8** %title, align 8, !dbg !882, !tbaa !681
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* %3) #6, !dbg !882
  br label %if.end4, !dbg !882

if.end4:                                          ; preds = %if.end, %if.then3
  %bStep = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !883
  %4 = load i32* %bStep, align 4, !dbg !883, !tbaa !692
  %tobool5 = icmp eq i32 %4, 0, !dbg !883
  br i1 %tobool5, label %lor.lhs.false, label %if.then7, !dbg !883

lor.lhs.false:                                    ; preds = %if.end4
  %bTime = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !883
  %5 = load i32* %bTime, align 4, !dbg !883, !tbaa !692
  %tobool6 = icmp eq i32 %5, 0, !dbg !883
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !883

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !884
  %6 = load i32* %step, align 4, !dbg !884, !tbaa !692
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !884
  %7 = load float* %time, align 4, !dbg !884, !tbaa !739
  %conv = fpext float %7 to double, !dbg !884
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str13, i64 0, i64 0), i32 %6, double %conv) #6, !dbg !884
  br label %if.end9, !dbg !884

if.end9:                                          ; preds = %lor.lhs.false, %if.then7
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !885
  %8 = load i32* %bX, align 4, !dbg !885, !tbaa !692
  %tobool10 = icmp eq i32 %8, 0, !dbg !885
  br i1 %tobool10, label %if.end79, label %if.then11, !dbg !885

if.then11:                                        ; preds = %if.end9
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !886
  %9 = load i32* %bAtoms, align 4, !dbg !886, !tbaa !692
  %tobool12 = icmp eq i32 %9, 0, !dbg !886
  br i1 %tobool12, label %if.else46, label %if.then13, !dbg !886

if.then13:                                        ; preds = %if.then11
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %out), !dbg !888
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !228), !dbg !890
  %cmp369 = icmp sgt i32 %nout.0, 0, !dbg !890
  br i1 %cmp369, label %for.body.lr.ph, label %if.end77, !dbg !890

for.body.lr.ph:                                   ; preds = %if.then13
  %atom = getelementptr inbounds %struct.t_atoms* %0, i64 0, i32 1, !dbg !892
  %resname = getelementptr inbounds %struct.t_atoms* %0, i64 0, i32 6, !dbg !892
  %atomname = getelementptr inbounds %struct.t_atoms* %0, i64 0, i32 2, !dbg !892
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !892
  br label %for.body, !dbg !890

for.body:                                         ; preds = %if.end19, %for.body.lr.ph
  %indvars.iv379 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next380, %if.end19 ]
  %11 = trunc i64 %indvars.iv379 to i32, !dbg !894
  br i1 %tobool, label %if.then17, label %if.end19, !dbg !894

if.then17:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv379, !dbg !894
  %12 = load i32* %arrayidx, align 4, !dbg !894, !tbaa !692
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !229), !dbg !894
  br label %if.end19, !dbg !894

if.end19:                                         ; preds = %for.body, %if.then17
  %a.0 = phi i32 [ %12, %if.then17 ], [ %11, %for.body ]
  %idxprom20 = sext i32 %a.0 to i64, !dbg !892
  %13 = load %struct.t_atom** %atom, align 8, !dbg !892, !tbaa !681
  %resnr = getelementptr inbounds %struct.t_atom* %13, i64 %idxprom20, i32 7, !dbg !892
  %14 = load i32* %resnr, align 4, !dbg !892, !tbaa !692
  %add = add nsw i32 %14, 1, !dbg !892
  %idxprom26 = sext i32 %14 to i64, !dbg !892
  %15 = load i8**** %resname, align 8, !dbg !892, !tbaa !681
  %arrayidx27 = getelementptr inbounds i8*** %15, i64 %idxprom26, !dbg !892
  %16 = load i8*** %arrayidx27, align 8, !dbg !892, !tbaa !681
  %17 = load i8** %16, align 8, !dbg !892, !tbaa !681
  %18 = load i8**** %atomname, align 8, !dbg !892, !tbaa !681
  %arrayidx29 = getelementptr inbounds i8*** %18, i64 %idxprom20, !dbg !892
  %19 = load i8*** %arrayidx29, align 8, !dbg !892, !tbaa !681
  %20 = load i8** %19, align 8, !dbg !892, !tbaa !681
  %indvars.iv.next380 = add i64 %indvars.iv379, 1, !dbg !890
  %21 = load [3 x float]** %x, align 8, !dbg !892, !tbaa !681
  %arrayidx33 = getelementptr inbounds [3 x float]* %21, i64 %idxprom20, i64 0, !dbg !892
  %22 = load float* %arrayidx33, align 4, !dbg !892, !tbaa !739
  %conv34 = fpext float %22 to double, !dbg !892
  %arrayidx38 = getelementptr inbounds [3 x float]* %21, i64 %idxprom20, i64 1, !dbg !892
  %23 = load float* %arrayidx38, align 4, !dbg !892, !tbaa !739
  %conv39 = fpext float %23 to double, !dbg !892
  %arrayidx43 = getelementptr inbounds [3 x float]* %21, i64 %idxprom20, i64 2, !dbg !892
  %24 = load float* %arrayidx43, align 4, !dbg !892, !tbaa !739
  %conv44 = fpext float %24 to double, !dbg !892
  %25 = trunc i64 %indvars.iv.next380 to i32, !dbg !892
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([36 x i8]* @.str15, i64 0, i64 0), i32 %add, i8* %17, i8* %20, i32 %25, double %conv34, double %conv39, double %conv44) #6, !dbg !892
  %exitcond382 = icmp eq i32 %25, %nout.0, !dbg !890
  br i1 %exitcond382, label %if.end77, label %for.body, !dbg !890

if.else46:                                        ; preds = %if.then11
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str16, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %out), !dbg !895
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !228), !dbg !897
  %cmp49366 = icmp sgt i32 %nout.0, 0, !dbg !897
  br i1 %cmp49366, label %for.body51.lr.ph, label %if.end77, !dbg !897

for.body51.lr.ph:                                 ; preds = %if.else46
  %x59 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !899
  br label %for.body51, !dbg !897

for.body51:                                       ; preds = %if.end57, %for.body51.lr.ph
  %indvars.iv375 = phi i64 [ 0, %for.body51.lr.ph ], [ %indvars.iv.next376, %if.end57 ]
  %27 = trunc i64 %indvars.iv375 to i32, !dbg !901
  br i1 %tobool, label %if.then53, label %if.end57, !dbg !901

if.then53:                                        ; preds = %for.body51
  %arrayidx55 = getelementptr inbounds i32* %index, i64 %indvars.iv375, !dbg !901
  %28 = load i32* %arrayidx55, align 4, !dbg !901, !tbaa !692
  tail call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !229), !dbg !901
  br label %if.end57, !dbg !901

if.end57:                                         ; preds = %for.body51, %if.then53
  %a.1 = phi i32 [ %28, %if.then53 ], [ %27, %for.body51 ]
  %idxprom58 = sext i32 %a.1 to i64, !dbg !899
  %29 = load [3 x float]** %x59, align 8, !dbg !899, !tbaa !681
  %arrayidx61 = getelementptr inbounds [3 x float]* %29, i64 %idxprom58, i64 0, !dbg !899
  %30 = load float* %arrayidx61, align 4, !dbg !899, !tbaa !739
  %conv62 = fpext float %30 to double, !dbg !899
  %arrayidx66 = getelementptr inbounds [3 x float]* %29, i64 %idxprom58, i64 1, !dbg !899
  %31 = load float* %arrayidx66, align 4, !dbg !899, !tbaa !739
  %conv67 = fpext float %31 to double, !dbg !899
  %arrayidx71 = getelementptr inbounds [3 x float]* %29, i64 %idxprom58, i64 2, !dbg !899
  %32 = load float* %arrayidx71, align 4, !dbg !899, !tbaa !739
  %conv72 = fpext float %32 to double, !dbg !899
  %call73 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), double %conv62, double %conv67, double %conv72) #6, !dbg !899
  %indvars.iv.next376 = add i64 %indvars.iv375, 1, !dbg !897
  %lftr.wideiv377 = trunc i64 %indvars.iv.next376 to i32, !dbg !897
  %exitcond378 = icmp eq i32 %lftr.wideiv377, %nout.0, !dbg !897
  br i1 %exitcond378, label %if.end77, label %for.body51, !dbg !897

if.end77:                                         ; preds = %if.then13, %if.end19, %if.else46, %if.end57
  %33 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out), !dbg !902
  br label %if.end79, !dbg !903

if.end79:                                         ; preds = %if.end9, %if.end77
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !904
  %34 = load i32* %bV, align 4, !dbg !904, !tbaa !692
  %tobool80 = icmp eq i32 %34, 0, !dbg !904
  br i1 %tobool80, label %if.end162, label %if.then81, !dbg !904

if.then81:                                        ; preds = %if.end79
  %tobool82 = icmp eq %struct.t_atoms* %0, null, !dbg !905
  br i1 %tobool82, label %if.else129, label %if.then83, !dbg !905

if.then83:                                        ; preds = %if.then81
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %out), !dbg !907
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !228), !dbg !909
  %cmp86364 = icmp sgt i32 %nout.0, 0, !dbg !909
  br i1 %cmp86364, label %for.body88.lr.ph, label %if.end160, !dbg !909

for.body88.lr.ph:                                 ; preds = %if.then83
  %atom96 = getelementptr inbounds %struct.t_atoms* %0, i64 0, i32 1, !dbg !911
  %resname105 = getelementptr inbounds %struct.t_atoms* %0, i64 0, i32 6, !dbg !911
  %atomname108 = getelementptr inbounds %struct.t_atoms* %0, i64 0, i32 2, !dbg !911
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !911
  br label %for.body88, !dbg !909

for.body88:                                       ; preds = %if.end94, %for.body88.lr.ph
  %indvars.iv371 = phi i64 [ 0, %for.body88.lr.ph ], [ %indvars.iv.next372, %if.end94 ]
  %36 = trunc i64 %indvars.iv371 to i32, !dbg !913
  br i1 %tobool, label %if.then90, label %if.end94, !dbg !913

if.then90:                                        ; preds = %for.body88
  %arrayidx92 = getelementptr inbounds i32* %index, i64 %indvars.iv371, !dbg !913
  %37 = load i32* %arrayidx92, align 4, !dbg !913, !tbaa !692
  tail call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !229), !dbg !913
  br label %if.end94, !dbg !913

if.end94:                                         ; preds = %for.body88, %if.then90
  %a.2 = phi i32 [ %37, %if.then90 ], [ %36, %for.body88 ]
  %idxprom95 = sext i32 %a.2 to i64, !dbg !911
  %38 = load %struct.t_atom** %atom96, align 8, !dbg !911, !tbaa !681
  %resnr98 = getelementptr inbounds %struct.t_atom* %38, i64 %idxprom95, i32 7, !dbg !911
  %39 = load i32* %resnr98, align 4, !dbg !911, !tbaa !692
  %add99 = add nsw i32 %39, 1, !dbg !911
  %idxprom104 = sext i32 %39 to i64, !dbg !911
  %40 = load i8**** %resname105, align 8, !dbg !911, !tbaa !681
  %arrayidx106 = getelementptr inbounds i8*** %40, i64 %idxprom104, !dbg !911
  %41 = load i8*** %arrayidx106, align 8, !dbg !911, !tbaa !681
  %42 = load i8** %41, align 8, !dbg !911, !tbaa !681
  %43 = load i8**** %atomname108, align 8, !dbg !911, !tbaa !681
  %arrayidx109 = getelementptr inbounds i8*** %43, i64 %idxprom95, !dbg !911
  %44 = load i8*** %arrayidx109, align 8, !dbg !911, !tbaa !681
  %45 = load i8** %44, align 8, !dbg !911, !tbaa !681
  %indvars.iv.next372 = add i64 %indvars.iv371, 1, !dbg !909
  %46 = load [3 x float]** %v, align 8, !dbg !911, !tbaa !681
  %arrayidx113 = getelementptr inbounds [3 x float]* %46, i64 %idxprom95, i64 0, !dbg !911
  %47 = load float* %arrayidx113, align 4, !dbg !911, !tbaa !739
  %conv114 = fpext float %47 to double, !dbg !911
  %arrayidx118 = getelementptr inbounds [3 x float]* %46, i64 %idxprom95, i64 1, !dbg !911
  %48 = load float* %arrayidx118, align 4, !dbg !911, !tbaa !739
  %conv119 = fpext float %48 to double, !dbg !911
  %arrayidx123 = getelementptr inbounds [3 x float]* %46, i64 %idxprom95, i64 2, !dbg !911
  %49 = load float* %arrayidx123, align 4, !dbg !911, !tbaa !739
  %conv124 = fpext float %49 to double, !dbg !911
  %50 = trunc i64 %indvars.iv.next372 to i32, !dbg !911
  %call125 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([36 x i8]* @.str15, i64 0, i64 0), i32 %add99, i8* %42, i8* %45, i32 %50, double %conv114, double %conv119, double %conv124) #6, !dbg !911
  %exitcond374 = icmp eq i32 %50, %nout.0, !dbg !909
  br i1 %exitcond374, label %if.end160, label %for.body88, !dbg !909

if.else129:                                       ; preds = %if.then81
  %51 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str20, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %out), !dbg !914
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !228), !dbg !916
  %cmp132361 = icmp sgt i32 %nout.0, 0, !dbg !916
  br i1 %cmp132361, label %for.body134.lr.ph, label %if.end160, !dbg !916

for.body134.lr.ph:                                ; preds = %if.else129
  %v142 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !918
  br label %for.body134, !dbg !916

for.body134:                                      ; preds = %if.end140, %for.body134.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body134.lr.ph ], [ %indvars.iv.next, %if.end140 ]
  %52 = trunc i64 %indvars.iv to i32, !dbg !920
  br i1 %tobool, label %if.then136, label %if.end140, !dbg !920

if.then136:                                       ; preds = %for.body134
  %arrayidx138 = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !920
  %53 = load i32* %arrayidx138, align 4, !dbg !920, !tbaa !692
  tail call void @llvm.dbg.value(metadata !{i32 %53}, i64 0, metadata !229), !dbg !920
  br label %if.end140, !dbg !920

if.end140:                                        ; preds = %for.body134, %if.then136
  %a.3 = phi i32 [ %53, %if.then136 ], [ %52, %for.body134 ]
  %idxprom141 = sext i32 %a.3 to i64, !dbg !918
  %54 = load [3 x float]** %v142, align 8, !dbg !918, !tbaa !681
  %arrayidx144 = getelementptr inbounds [3 x float]* %54, i64 %idxprom141, i64 0, !dbg !918
  %55 = load float* %arrayidx144, align 4, !dbg !918, !tbaa !739
  %conv145 = fpext float %55 to double, !dbg !918
  %arrayidx149 = getelementptr inbounds [3 x float]* %54, i64 %idxprom141, i64 1, !dbg !918
  %56 = load float* %arrayidx149, align 4, !dbg !918, !tbaa !739
  %conv150 = fpext float %56 to double, !dbg !918
  %arrayidx154 = getelementptr inbounds [3 x float]* %54, i64 %idxprom141, i64 2, !dbg !918
  %57 = load float* %arrayidx154, align 4, !dbg !918, !tbaa !739
  %conv155 = fpext float %57 to double, !dbg !918
  %call156 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), double %conv145, double %conv150, double %conv155) #6, !dbg !918
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !916
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !916
  %exitcond = icmp eq i32 %lftr.wideiv, %nout.0, !dbg !916
  br i1 %exitcond, label %if.end160, label %for.body134, !dbg !916

if.end160:                                        ; preds = %if.then83, %if.end94, %if.else129, %if.end140
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out), !dbg !921
  br label %if.end162, !dbg !922

if.end162:                                        ; preds = %if.end79, %if.end160
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !923
  %59 = load i32* %bBox, align 4, !dbg !923, !tbaa !692
  %tobool163 = icmp eq i32 %59, 0, !dbg !923
  br i1 %tobool163, label %if.end254, label %if.then164, !dbg !923

if.then164:                                       ; preds = %if.end162
  %60 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out), !dbg !924
  %arrayidx167 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0, !dbg !926
  %61 = load float* %arrayidx167, align 4, !dbg !926, !tbaa !739
  %conv168 = fpext float %61 to double, !dbg !926
  %arrayidx170 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, !dbg !926
  %arrayidx171 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !926
  %62 = load float* %arrayidx171, align 4, !dbg !926, !tbaa !739
  %conv172 = fpext float %62 to double, !dbg !926
  %arrayidx174 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, !dbg !926
  %arrayidx175 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !926
  %63 = load float* %arrayidx175, align 4, !dbg !926, !tbaa !739
  %conv176 = fpext float %63 to double, !dbg !926
  %call177 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str22, i64 0, i64 0), double %conv168, double %conv172, double %conv176) #6, !dbg !926
  %arrayidx180 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1, !dbg !927
  %64 = load float* %arrayidx180, align 4, !dbg !927, !tbaa !739
  %fabsf = tail call float @fabsf(float %64) #8, !dbg !927
  %65 = fpext float %fabsf to double, !dbg !927
  %cmp183 = fcmp ogt double %65, 1.200000e-38, !dbg !927
  %arrayidx232.phi.trans.insert = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2
  %.pre = load float* %arrayidx232.phi.trans.insert, align 4, !dbg !928, !tbaa !739
  br i1 %cmp183, label %if.then225, label %lor.lhs.false185, !dbg !927

lor.lhs.false185:                                 ; preds = %if.then164
  %fabsf356 = tail call float @fabsf(float %.pre) #8, !dbg !929
  %66 = fpext float %fabsf356 to double, !dbg !929
  %cmp191 = fcmp ogt double %66, 1.200000e-38, !dbg !929
  br i1 %cmp191, label %if.then225, label %lor.lhs.false193, !dbg !929

lor.lhs.false193:                                 ; preds = %lor.lhs.false185
  %arrayidx196 = getelementptr inbounds [3 x float]* %arrayidx170, i64 0, i64 0, !dbg !930
  %67 = load float* %arrayidx196, align 4, !dbg !930, !tbaa !739
  %fabsf357 = tail call float @fabsf(float %67) #8, !dbg !930
  %68 = fpext float %fabsf357 to double, !dbg !930
  %cmp199 = fcmp ogt double %68, 1.200000e-38, !dbg !930
  br i1 %cmp199, label %if.then225, label %lor.lhs.false201, !dbg !930

lor.lhs.false201:                                 ; preds = %lor.lhs.false193
  %arrayidx204 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2, !dbg !931
  %69 = load float* %arrayidx204, align 4, !dbg !931, !tbaa !739
  %fabsf358 = tail call float @fabsf(float %69) #8, !dbg !931
  %70 = fpext float %fabsf358 to double, !dbg !931
  %cmp207 = fcmp ogt double %70, 1.200000e-38, !dbg !931
  br i1 %cmp207, label %if.then225, label %lor.lhs.false209, !dbg !931

lor.lhs.false209:                                 ; preds = %lor.lhs.false201
  %arrayidx212 = getelementptr inbounds [3 x float]* %arrayidx174, i64 0, i64 0, !dbg !932
  %71 = load float* %arrayidx212, align 4, !dbg !932, !tbaa !739
  %fabsf359 = tail call float @fabsf(float %71) #8, !dbg !932
  %72 = fpext float %fabsf359 to double, !dbg !932
  %cmp215 = fcmp ogt double %72, 1.200000e-38, !dbg !932
  br i1 %cmp215, label %if.then225, label %lor.lhs.false217, !dbg !932

lor.lhs.false217:                                 ; preds = %lor.lhs.false209
  %arrayidx220 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1, !dbg !933
  %73 = load float* %arrayidx220, align 4, !dbg !933, !tbaa !739
  %fabsf360 = tail call float @fabsf(float %73) #8, !dbg !933
  %74 = fpext float %fabsf360 to double, !dbg !933
  %cmp223 = fcmp ogt double %74, 1.200000e-38, !dbg !933
  br i1 %cmp223, label %if.then225, label %if.end251, !dbg !933

if.then225:                                       ; preds = %if.then164, %lor.lhs.false209, %lor.lhs.false201, %lor.lhs.false193, %lor.lhs.false185, %lor.lhs.false217
  %conv229 = fpext float %64 to double, !dbg !928
  %conv233 = fpext float %.pre to double, !dbg !928
  %arrayidx236 = getelementptr inbounds [3 x float]* %arrayidx170, i64 0, i64 0, !dbg !928
  %75 = load float* %arrayidx236, align 4, !dbg !928, !tbaa !739
  %conv237 = fpext float %75 to double, !dbg !928
  %arrayidx240 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2, !dbg !928
  %76 = load float* %arrayidx240, align 4, !dbg !928, !tbaa !739
  %conv241 = fpext float %76 to double, !dbg !928
  %arrayidx244 = getelementptr inbounds [3 x float]* %arrayidx174, i64 0, i64 0, !dbg !928
  %77 = load float* %arrayidx244, align 4, !dbg !928, !tbaa !739
  %conv245 = fpext float %77 to double, !dbg !928
  %arrayidx248 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1, !dbg !928
  %78 = load float* %arrayidx248, align 4, !dbg !928, !tbaa !739
  %conv249 = fpext float %78 to double, !dbg !928
  %call250 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([37 x i8]* @.str23, i64 0, i64 0), double %conv229, double %conv233, double %conv237, double %conv241, double %conv245, double %conv249) #6, !dbg !928
  br label %if.end251, !dbg !928

if.end251:                                        ; preds = %if.then225, %lor.lhs.false217
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out), !dbg !934
  %79 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out), !dbg !935
  br label %if.end254, !dbg !936

if.end254:                                        ; preds = %if.end162, %if.end251
  ret void, !dbg !937
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @gro_next_x_or_v(%struct._IO_FILE* %status, %struct.t_trxframe* nocapture %fr) #0 {
entry:
  %atoms = alloca %struct.t_atoms, align 8
  %title = alloca [4096 x i8], align 16
  %tt = alloca double, align 8
  %ndec = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %status}, i64 0, metadata !234), !dbg !938
  call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !235), !dbg !938
  %0 = bitcast %struct.t_atoms* %atoms to i8*, !dbg !939
  call void @llvm.lifetime.start(i64 1280, i8* %0) #5, !dbg !939
  call void @llvm.dbg.declare(metadata !{%struct.t_atoms* %atoms}, metadata !236), !dbg !939
  %1 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0, !dbg !940
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5, !dbg !940
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %title}, metadata !237), !dbg !940
  call void @llvm.dbg.declare(metadata !{double* %tt}, metadata !242), !dbg !941
  call void @llvm.dbg.declare(metadata !{i32* %ndec}, metadata !243), !dbg !942
  %call = call i32 @eof(%struct._IO_FILE* %status) #6, !dbg !943
  %tobool = icmp eq i32 %call, 0, !dbg !943
  br i1 %tobool, label %if.end, label %cleanup, !dbg !943

if.end:                                           ; preds = %entry
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !944
  %2 = load i32* %natoms, align 4, !dbg !944, !tbaa !692
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !944
  store i32 %2, i32* %nr, align 8, !dbg !944, !tbaa !692
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 576, i32 %2, i32 40) #6, !dbg !945
  %3 = bitcast i8* %call2 to %struct.t_atom*, !dbg !945
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !945
  store %struct.t_atom* %3, %struct.t_atom** %atom, align 8, !dbg !945, !tbaa !681
  %4 = load i32* %natoms, align 4, !dbg !946, !tbaa !692
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !946
  store i32 %4, i32* %nres, align 8, !dbg !946, !tbaa !692
  %call5 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 578, i32 %4, i32 8) #6, !dbg !947
  %5 = bitcast i8* %call5 to i8***, !dbg !947
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !947
  store i8*** %5, i8**** %resname, align 8, !dbg !947, !tbaa !681
  %6 = load i32* %natoms, align 4, !dbg !948, !tbaa !692
  %call7 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 579, i32 %6, i32 8) #6, !dbg !948
  %7 = bitcast i8* %call7 to i8***, !dbg !948
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !948
  store i8*** %7, i8**** %atomname, align 8, !dbg !948, !tbaa !681
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !949
  %8 = load [3 x float]** %x, align 8, !dbg !949, !tbaa !681
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !949
  %9 = load [3 x float]** %v, align 8, !dbg !949, !tbaa !681
  %arraydecay9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !949
  %call10 = call fastcc i32 @get_w_conf(%struct._IO_FILE* %status, i8* %1, i8* %1, %struct.t_atoms* %atoms, i32* %ndec, [3 x float]* %8, [3 x float]* %9, [3 x float]* %arraydecay9) #9, !dbg !949
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !949
  store i32 %call10, i32* %bV, align 4, !dbg !949, !tbaa !692
  %bPrec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !950
  store i32 1, i32* %bPrec, align 4, !dbg !950, !tbaa !692
  %prec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !951
  store float 1.000000e+00, float* %prec, align 4, !dbg !951, !tbaa !739
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !244), !dbg !952
  call void @llvm.dbg.value(metadata !{i32* %ndec}, i64 0, metadata !243), !dbg !952
  %10 = load i32* %ndec, align 4, !dbg !952, !tbaa !692
  %cmp61 = icmp sgt i32 %10, 0, !dbg !952
  br i1 %cmp61, label %for.body, label %for.end, !dbg !952

for.body:                                         ; preds = %if.end, %for.body
  %11 = phi float [ %mul, %for.body ], [ 1.000000e+00, %if.end ], !dbg !954
  %i.062 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %mul = fmul float %11, 1.000000e+01, !dbg !954
  %inc = add nsw i32 %i.062, 1, !dbg !952
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !244), !dbg !952
  call void @llvm.dbg.value(metadata !{i32* %ndec}, i64 0, metadata !243), !dbg !952
  %cmp = icmp slt i32 %inc, %10, !dbg !952
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge, !dbg !952

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store float %mul, float* %prec, align 4, !dbg !954, !tbaa !739
  br label %for.end, !dbg !952

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end
  %title13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !955
  store i8* %1, i8** %title13, align 8, !dbg !955, !tbaa !681
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !956
  store i32 1, i32* %bTitle, align 4, !dbg !956, !tbaa !692
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !957
  store i32 1, i32* %bX, align 4, !dbg !957, !tbaa !692
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !958
  store i32 1, i32* %bBox, align 4, !dbg !958, !tbaa !692
  %12 = load %struct.t_atom** %atom, align 8, !dbg !959, !tbaa !681
  %13 = bitcast %struct.t_atom* %12 to i8*, !dbg !959
  call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 592, i8* %13) #6, !dbg !959
  %14 = load i8**** %resname, align 8, !dbg !960, !tbaa !681
  %15 = bitcast i8*** %14 to i8*, !dbg !960
  call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 593, i8* %15) #6, !dbg !960
  %16 = load i8**** %atomname, align 8, !dbg !961, !tbaa !681
  %17 = bitcast i8*** %16 to i8*, !dbg !961
  call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 594, i8* %17) #6, !dbg !961
  %call18 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !962
  call void @llvm.dbg.value(metadata !{i8* %call18}, i64 0, metadata !241), !dbg !962
  %cmp19 = icmp eq i8* %call18, null, !dbg !962
  br i1 %cmp19, label %if.end27, label %if.then20, !dbg !962

if.then20:                                        ; preds = %for.end
  %add.ptr = getelementptr inbounds i8* %call18, i64 2, !dbg !963
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !241), !dbg !963
  %call21 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str29, i64 0, i64 0), double* %tt) #6, !dbg !965
  %cmp22 = icmp eq i32 %call21, 1, !dbg !965
  br i1 %cmp22, label %if.then23, label %if.else, !dbg !965

if.then23:                                        ; preds = %if.then20
  call void @llvm.dbg.value(metadata !{double* %tt}, i64 0, metadata !242), !dbg !966
  %18 = load double* %tt, align 8, !dbg !966, !tbaa !738
  %conv = fptrunc double %18 to float, !dbg !966
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !966
  store float %conv, float* %time, align 4, !dbg !966, !tbaa !739
  %bTime = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !968
  store i32 1, i32* %bTime, align 4, !dbg !968, !tbaa !692
  br label %if.end27, !dbg !969

if.else:                                          ; preds = %if.then20
  %time24 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !970
  store float 0.000000e+00, float* %time24, align 4, !dbg !970, !tbaa !739
  %bTime25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !972
  store i32 0, i32* %bTime25, align 4, !dbg !972, !tbaa !692
  br label %if.end27

if.end27:                                         ; preds = %for.end, %if.then23, %if.else
  %19 = load i32* %nr, align 8, !dbg !973, !tbaa !692
  %20 = load i32* %natoms, align 4, !dbg !973, !tbaa !692
  %cmp30 = icmp eq i32 %19, %20, !dbg !973
  br i1 %cmp30, label %cleanup, label %if.then32, !dbg !973

if.then32:                                        ; preds = %if.end27
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([86 x i8]* @.str30, i64 0, i64 0), i32 %19, i32 %20) #6, !dbg !974
  br label %cleanup, !dbg !974

cleanup:                                          ; preds = %if.then32, %if.end27, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end27 ], [ 1, %if.then32 ]
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5, !dbg !975
  call void @llvm.lifetime.end(i64 1280, i8* %0) #5, !dbg !975
  ret i32 %retval.0, !dbg !976
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @eof(%struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @get_w_conf(%struct._IO_FILE* %in, i8* %infile, i8* %title, %struct.t_atoms* nocapture %atoms, i32* nocapture %ndec, [3 x float]* nocapture %x, [3 x float]* %v, [3 x float]* nocapture %box) #0 {
entry:
  %box409 = bitcast [3 x float]* %box to i8*
  %x421 = bitcast [3 x float]* %x to i8*
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
  %xmin422 = bitcast [3 x float]* %xmin to i8*
  %xmax = alloca [3 x float], align 4
  %xmax420 = bitcast [3 x float]* %xmax to i8*
  %natoms = alloca i32, align 4
  %resnr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in}, i64 0, metadata !588), !dbg !977
  call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !589), !dbg !977
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !590), !dbg !977
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !591), !dbg !978
  call void @llvm.dbg.value(metadata !{i32* %ndec}, i64 0, metadata !592), !dbg !978
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !593), !dbg !978
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !594), !dbg !978
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !595), !dbg !978
  call void @llvm.dbg.declare(metadata !{[6 x i8]* %name}, metadata !596), !dbg !979
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0, !dbg !980
  call void @llvm.lifetime.start(i64 4097, i8* %0) #5, !dbg !980
  call void @llvm.dbg.declare(metadata !{[4097 x i8]* %line}, metadata !597), !dbg !980
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !981
  call void @llvm.lifetime.start(i64 256, i8* %1) #5, !dbg !981
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !598), !dbg !981
  call void @llvm.dbg.declare(metadata !{[30 x i8]* %format}, metadata !599), !dbg !982
  call void @llvm.dbg.declare(metadata !{double* %x1}, metadata !603), !dbg !983
  call void @llvm.dbg.declare(metadata !{double* %y1}, metadata !604), !dbg !983
  call void @llvm.dbg.declare(metadata !{double* %z1}, metadata !605), !dbg !983
  call void @llvm.dbg.declare(metadata !{double* %x2}, metadata !606), !dbg !983
  call void @llvm.dbg.declare(metadata !{double* %y2}, metadata !607), !dbg !983
  call void @llvm.dbg.declare(metadata !{double* %z2}, metadata !608), !dbg !983
  call void @llvm.dbg.declare(metadata !{[3 x float]* %xmin}, metadata !609), !dbg !984
  call void @llvm.dbg.declare(metadata !{[3 x float]* %xmax}, metadata !610), !dbg !984
  call void @llvm.dbg.declare(metadata !{i32* %natoms}, metadata !611), !dbg !985
  call void @llvm.dbg.declare(metadata !{i32* %resnr}, metadata !614), !dbg !985
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !615), !dbg !986
  call void @llvm.dbg.value(metadata !987, i64 0, metadata !616), !dbg !988
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !617), !dbg !989
  %2 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !dbg !990, !tbaa !681
  %tobool = icmp eq %struct.t_symtab* %2, null, !dbg !990
  br i1 %tobool, label %if.then, label %if.end, !dbg !990

if.then:                                          ; preds = %entry
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 392, i32 1, i32 16) #6, !dbg !991
  %3 = bitcast i8* %call to %struct.t_symtab*, !dbg !991
  store %struct.t_symtab* %3, %struct.t_symtab** @get_w_conf.symtab, align 8, !dbg !991, !tbaa !681
  call void @open_symtab(%struct.t_symtab* %3) #6, !dbg !993
  br label %if.end, !dbg !994

if.end:                                           ; preds = %entry, %if.then
  %call1 = call i8* @fgets2(i8* %title, i32 4096, %struct._IO_FILE* %in) #6, !dbg !995
  %call2 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #6, !dbg !996
  %call4 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i32* %natoms) #6, !dbg !997
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !611), !dbg !998
  %4 = load i32* %natoms, align 4, !dbg !998, !tbaa !692
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !998
  %5 = load i32* %nr, align 4, !dbg !998, !tbaa !692
  %cmp = icmp sgt i32 %4, %5, !dbg !998
  br i1 %cmp, label %if.then5, label %if.else, !dbg !998

if.then5:                                         ; preds = %if.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([53 x i8]* @.str60, i64 0, i64 0), i32 %4, i32 %5) #6, !dbg !999
  br label %for.cond.preheader, !dbg !999

if.else:                                          ; preds = %if.end
  %cmp8 = icmp slt i32 %4, %5, !dbg !1000
  br i1 %cmp8, label %if.then9, label %for.cond.preheader, !dbg !1000

if.then9:                                         ; preds = %if.else
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !1001, !tbaa !681
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([63 x i8]* @.str61, i64 0, i64 0), i32 %4, i32 %5) #6, !dbg !1001
  br label %for.cond.preheader, !dbg !1001

for.cond.preheader:                               ; preds = %if.else, %if.then9, %if.then5
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !611), !dbg !1002
  %7 = load i32* %natoms, align 4, !dbg !1002, !tbaa !692
  %cmp14394 = icmp sgt i32 %7, 0, !dbg !1002
  br i1 %cmp14394, label %for.body.lr.ph, label %for.end, !dbg !1002

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = getelementptr inbounds [6 x i8]* %name, i64 0, i64 0, !dbg !1004
  %arrayidx51 = getelementptr inbounds [6 x i8]* %name, i64 0, i64 5, !dbg !1006
  %add.ptr = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 5, !dbg !1007
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !1008
  %add.ptr72 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 10, !dbg !1009
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !1010
  %add.ptr78 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 20, !dbg !1011
  %arraydecay79 = getelementptr inbounds [30 x i8]* %format, i64 0, i64 0, !dbg !1011
  %tobool98 = icmp eq [3 x float]* %v, null, !dbg !1012
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !1013
  br label %for.body, !dbg !1002

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv423 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next424, %for.inc ]
  %newres.0399 = phi i32 [ 0, %for.body.lr.ph ], [ %newres.1, %for.inc ]
  %bVel.0398 = phi i32 [ 0, %for.body.lr.ph ], [ %bVel.1, %for.inc ]
  %bFirst.0397 = phi i32 [ 1, %for.body.lr.ph ], [ 0, %for.inc ]
  %ddist.0396 = phi i32 [ 0, %for.body.lr.ph ], [ %ddist.4, %for.inc ]
  %oldres.0395 = phi i32 [ -12345, %for.body.lr.ph ], [ %oldres.1, %for.inc ]
  %call16 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #6, !dbg !1015
  %cmp17 = icmp eq i8* %call16, null, !dbg !1015
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !1015

if.then18:                                        ; preds = %for.body
  %9 = add nsw i64 %indvars.iv423, 2, !dbg !1016
  %10 = trunc i64 %9 to i32, !dbg !1016
  call void @_unexpected_eof(i8* %infile, i32 %10, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 414) #6, !dbg !1016
  br label %if.end19, !dbg !1018

if.end19:                                         ; preds = %if.then18, %for.body
  %call21 = call i64 @strlen(i8* %0) #7, !dbg !1019
  %cmp22 = icmp ult i64 %call21, 39, !dbg !1019
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !1019

if.then23:                                        ; preds = %if.end19
  %11 = add nsw i64 %indvars.iv423, 1, !dbg !1020
  %12 = trunc i64 %11 to i32, !dbg !1020
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str62, i64 0, i64 0), i8* %infile, i32 %12, i8* %0) #6, !dbg !1020
  br label %if.end26, !dbg !1020

if.end26:                                         ; preds = %if.then23, %if.end19
  %tobool27 = icmp eq i32 %bFirst.0397, 0, !dbg !1021
  br i1 %tobool27, label %if.end50, label %if.then28, !dbg !1021

if.then28:                                        ; preds = %if.end26
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !618), !dbg !1022
  %call30 = call i8* @strchr(i8* %0, i32 46) #7, !dbg !1024
  call void @llvm.dbg.value(metadata !{i8* %call30}, i64 0, metadata !620), !dbg !1024
  %cmp31 = icmp eq i8* %call30, null, !dbg !1025
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !1025

if.then32:                                        ; preds = %if.then28
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str63, i64 0, i64 0), i8* %infile) #6, !dbg !1026
  br label %if.end33, !dbg !1026

if.end33:                                         ; preds = %if.then32, %if.then28
  %arrayidx = getelementptr inbounds i8* %call30, i64 1, !dbg !1027
  %call34 = call i8* @strchr(i8* %arrayidx, i32 46) #7, !dbg !1027
  call void @llvm.dbg.value(metadata !{i8* %call34}, i64 0, metadata !621), !dbg !1027
  %tobool36 = icmp eq i8* %call34, null, !dbg !1028
  %or.cond = and i1 %cmp31, %tobool36, !dbg !1028
  br i1 %or.cond, label %if.end39, label %if.then37, !dbg !1028

if.then37:                                        ; preds = %if.end33
  %sub.ptr.lhs.cast = ptrtoint i8* %call34 to i64, !dbg !1029
  %sub.ptr.rhs.cast = ptrtoint i8* %call30 to i64, !dbg !1029
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1029
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !1029
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !617), !dbg !1029
  br label %if.end39, !dbg !1029

if.end39:                                         ; preds = %if.end33, %if.then37
  %ddist.1 = phi i32 [ %conv, %if.then37 ], [ 8, %if.end33 ]
  %cmp40 = icmp slt i32 %ddist.1, 0, !dbg !1030
  call void @llvm.dbg.value(metadata !1031, i64 0, metadata !617), !dbg !1032
  %.ddist.1 = select i1 %cmp40, i32 8, i32 %ddist.1, !dbg !1030
  %cmp44 = icmp sgt i32 %.ddist.1, 30, !dbg !1033
  call void @llvm.dbg.value(metadata !1034, i64 0, metadata !617), !dbg !1035
  %ddist.3 = select i1 %cmp44, i32 30, i32 %.ddist.1, !dbg !1033
  %call49 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay79, i8* getelementptr inbounds ([19 x i8]* @.str64, i64 0, i64 0), i32 %ddist.3, i32 %ddist.3, i32 %ddist.3) #6, !dbg !1036
  %sub = add nsw i32 %ddist.3, -5, !dbg !1037
  store i32 %sub, i32* %ndec, align 4, !dbg !1037, !tbaa !692
  br label %if.end50, !dbg !1038

if.end50:                                         ; preds = %if.end26, %if.end39
  %ddist.4 = phi i32 [ %ddist.3, %if.end39 ], [ %ddist.0396, %if.end26 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %0, i64 5, i32 1, i1 false), !dbg !1004
  store i8 0, i8* %arrayidx51, align 1, !dbg !1006, !tbaa !682
  %call53 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i32* %resnr) #6, !dbg !1039
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %add.ptr, i64 5, i32 1, i1 false), !dbg !1007
  store i8 0, i8* %arrayidx51, align 1, !dbg !1040, !tbaa !682
  call void @llvm.dbg.value(metadata !{i32* %resnr}, i64 0, metadata !614), !dbg !1041
  %13 = load i32* %resnr, align 4, !dbg !1041, !tbaa !692
  %cmp56 = icmp eq i32 %13, %oldres.0395, !dbg !1041
  br i1 %cmp56, label %if.end66, label %if.then58, !dbg !1041

if.then58:                                        ; preds = %if.end50
  call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !616), !dbg !1042
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !611), !dbg !1043
  %14 = load i32* %natoms, align 4, !dbg !1043, !tbaa !692
  %cmp59 = icmp slt i32 %newres.0399, %14, !dbg !1043
  br i1 %cmp59, label %if.end62, label %if.then61, !dbg !1043

if.then61:                                        ; preds = %if.then58
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str65, i64 0, i64 0), i8* %infile, i32 %14) #6, !dbg !1044
  br label %if.end62, !dbg !1044

if.end62:                                         ; preds = %if.then58, %if.then61
  %15 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !dbg !1013, !tbaa !681
  %call64 = call i8** @put_symtab(%struct.t_symtab* %15, i8* %8) #6, !dbg !1013
  %idxprom = sext i32 %newres.0399 to i64, !dbg !1013
  %16 = load i8**** %resname, align 8, !dbg !1013, !tbaa !681
  %arrayidx65 = getelementptr inbounds i8*** %16, i64 %idxprom, !dbg !1013
  store i8** %call64, i8*** %arrayidx65, align 8, !dbg !1013, !tbaa !681
  %inc = add nsw i32 %newres.0399, 1, !dbg !1045
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !615), !dbg !1045
  br label %if.end66, !dbg !1046

if.end66:                                         ; preds = %if.end50, %if.end62
  %oldres.1 = phi i32 [ %13, %if.end62 ], [ %oldres.0395, %if.end50 ]
  %newres.1 = phi i32 [ %inc, %if.end62 ], [ %newres.0399, %if.end50 ]
  call void @llvm.dbg.value(metadata !{i32 %newres.1}, i64 0, metadata !614), !dbg !1047
  store i32 %newres.1, i32* %resnr, align 4, !dbg !1047, !tbaa !692
  %sub67 = add nsw i32 %newres.1, -1, !dbg !1008
  %17 = load %struct.t_atom** %atom, align 8, !dbg !1008, !tbaa !681
  %resnr70 = getelementptr inbounds %struct.t_atom* %17, i64 %indvars.iv423, i32 7, !dbg !1008
  store i32 %sub67, i32* %resnr70, align 4, !dbg !1008, !tbaa !692
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %add.ptr72, i64 5, i32 1, i1 false), !dbg !1009
  %18 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !dbg !1010, !tbaa !681
  %call74 = call i8** @put_symtab(%struct.t_symtab* %18, i8* %8) #6, !dbg !1010
  %19 = load i8**** %atomname, align 8, !dbg !1010, !tbaa !681
  %arrayidx76 = getelementptr inbounds i8*** %19, i64 %indvars.iv423, !dbg !1010
  store i8** %call74, i8*** %arrayidx76, align 8, !dbg !1010, !tbaa !681
  %call80 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr78, i8* %arraydecay79, double* %x1, double* %y1, double* %z1) #6, !dbg !1011
  %cmp81 = icmp eq i32 %call80, 3, !dbg !1011
  br i1 %cmp81, label %if.else84, label %if.then83, !dbg !1011

if.then83:                                        ; preds = %if.end66
  call void @_too_few(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 466) #6, !dbg !1048
  br label %if.end97, !dbg !1050

if.else84:                                        ; preds = %if.end66
  call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !603), !dbg !1051
  %20 = load double* %x1, align 8, !dbg !1051, !tbaa !738
  %conv85 = fptrunc double %20 to float, !dbg !1051
  %arrayidx88 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv423, i64 0, !dbg !1051
  store float %conv85, float* %arrayidx88, align 4, !dbg !1051, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !604), !dbg !1053
  %21 = load double* %y1, align 8, !dbg !1053, !tbaa !738
  %conv89 = fptrunc double %21 to float, !dbg !1053
  %arrayidx92 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv423, i64 1, !dbg !1053
  store float %conv89, float* %arrayidx92, align 4, !dbg !1053, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %z1}, i64 0, metadata !605), !dbg !1054
  %22 = load double* %z1, align 8, !dbg !1054, !tbaa !738
  %conv93 = fptrunc double %22 to float, !dbg !1054
  %arrayidx96 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv423, i64 2, !dbg !1054
  store float %conv93, float* %arrayidx96, align 4, !dbg !1054, !tbaa !739
  br label %if.end97

if.end97:                                         ; preds = %if.else84, %if.then83
  br i1 %tobool98, label %for.inc, label %if.then99, !dbg !1012

if.then99:                                        ; preds = %if.end97
  %mul = mul nsw i32 %ddist.4, 3, !dbg !1055
  %idx.ext = sext i32 %mul to i64, !dbg !1055
  %add.ptr78.sum = add i64 %idx.ext, 20, !dbg !1055
  %add.ptr102 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 %add.ptr78.sum, !dbg !1055
  %call104 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr102, i8* %arraydecay79, double* %x1, double* %y1, double* %z1) #6, !dbg !1055
  %cmp105 = icmp eq i32 %call104, 3, !dbg !1055
  br i1 %cmp105, label %if.else117, label %if.then107, !dbg !1055

if.then107:                                       ; preds = %if.then99
  %arrayidx110 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv423, i64 0, !dbg !1057
  store float 0.000000e+00, float* %arrayidx110, align 4, !dbg !1057, !tbaa !739
  %arrayidx113 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv423, i64 1, !dbg !1059
  store float 0.000000e+00, float* %arrayidx113, align 4, !dbg !1059, !tbaa !739
  %arrayidx116 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv423, i64 2, !dbg !1060
  store float 0.000000e+00, float* %arrayidx116, align 4, !dbg !1060, !tbaa !739
  br label %for.inc, !dbg !1061

if.else117:                                       ; preds = %if.then99
  call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !603), !dbg !1062
  %23 = load double* %x1, align 8, !dbg !1062, !tbaa !738
  %conv118 = fptrunc double %23 to float, !dbg !1062
  %arrayidx121 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv423, i64 0, !dbg !1062
  store float %conv118, float* %arrayidx121, align 4, !dbg !1062, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !604), !dbg !1064
  %24 = load double* %y1, align 8, !dbg !1064, !tbaa !738
  %conv122 = fptrunc double %24 to float, !dbg !1064
  %arrayidx125 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv423, i64 1, !dbg !1064
  store float %conv122, float* %arrayidx125, align 4, !dbg !1064, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %z1}, i64 0, metadata !605), !dbg !1065
  %25 = load double* %z1, align 8, !dbg !1065, !tbaa !738
  %conv126 = fptrunc double %25 to float, !dbg !1065
  %arrayidx129 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv423, i64 2, !dbg !1065
  store float %conv126, float* %arrayidx129, align 4, !dbg !1065, !tbaa !739
  call void @llvm.dbg.value(metadata !780, i64 0, metadata !619), !dbg !1066
  br label %for.inc

for.inc:                                          ; preds = %if.end97, %if.else117, %if.then107
  %bVel.1 = phi i32 [ %bVel.0398, %if.then107 ], [ 1, %if.else117 ], [ %bVel.0398, %if.end97 ]
  %indvars.iv.next424 = add i64 %indvars.iv423, 1, !dbg !1002
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !611), !dbg !1002
  %26 = load i32* %natoms, align 4, !dbg !1002, !tbaa !692
  %27 = trunc i64 %indvars.iv.next424 to i32, !dbg !1002
  %cmp14 = icmp slt i32 %27, %26, !dbg !1002
  br i1 %cmp14, label %for.body, label %for.end, !dbg !1002

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %newres.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %newres.1, %for.inc ]
  %bVel.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %bVel.1, %for.inc ]
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !1067
  store i32 %newres.0.lcssa, i32* %nres, align 4, !dbg !1067, !tbaa !692
  %call134 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #6, !dbg !1068
  %call136 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str66, i64 0, i64 0), double* %x1, double* %y1, double* %z1) #6, !dbg !1069
  %cmp137 = icmp eq i32 %call136, 3, !dbg !1069
  br i1 %cmp137, label %if.else252, label %if.then139, !dbg !1069

if.then139:                                       ; preds = %for.end
  %call141 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([19 x i8]* @.str67, i64 0, i64 0), i8* %infile) #6, !dbg !1070
  call void @warning(i8* %1) #6, !dbg !1072
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !613), !dbg !1073
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmax420, i8* %x421, i64 12, i32 4, i1 false), !dbg !1075
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmin422, i8* %x421, i64 12, i32 4, i1 false), !dbg !1075
  %28 = load i32* %nr, align 4, !dbg !1076, !tbaa !692
  %cmp159391 = icmp sgt i32 %28, 1, !dbg !1076
  br i1 %cmp159391, label %for.cond162.preheader, label %for.cond208.preheader, !dbg !1076

for.cond162.preheader:                            ; preds = %if.then139, %for.inc205
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %for.inc205 ], [ 1, %if.then139 ]
  br label %for.body165, !dbg !1078

for.cond208.preheader:                            ; preds = %for.inc205, %if.then139
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !613), !dbg !1080
  call void @llvm.memset.p0i8.i64(i8* %box409, i8 0, i64 36, i32 4, i1 false), !dbg !1080
  br label %for.body229, !dbg !1083

for.body165:                                      ; preds = %for.body165, %for.cond162.preheader
  %indvars.iv410 = phi i64 [ 0, %for.cond162.preheader ], [ %indvars.iv.next411, %for.body165 ]
  %arrayidx167 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv410, !dbg !1085
  %29 = load float* %arrayidx167, align 4, !dbg !1085, !tbaa !739
  %arrayidx171 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv414, i64 %indvars.iv410, !dbg !1085
  %30 = load float* %arrayidx171, align 4, !dbg !1085, !tbaa !739
  %cmp172 = fcmp olt float %29, %30, !dbg !1085
  %. = select i1 %cmp172, float %29, float %30, !dbg !1085
  store float %., float* %arrayidx167, align 4, !dbg !1085, !tbaa !739
  %arrayidx183 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv410, !dbg !1087
  %31 = load float* %arrayidx183, align 4, !dbg !1087, !tbaa !739
  %cmp188 = fcmp ogt float %31, %30, !dbg !1087
  %cond199 = select i1 %cmp188, float %31, float %30, !dbg !1087
  store float %cond199, float* %arrayidx183, align 4, !dbg !1087, !tbaa !739
  %indvars.iv.next411 = add i64 %indvars.iv410, 1, !dbg !1078
  %lftr.wideiv412 = trunc i64 %indvars.iv.next411 to i32, !dbg !1078
  %exitcond413 = icmp eq i32 %lftr.wideiv412, 3, !dbg !1078
  br i1 %exitcond413, label %for.inc205, label %for.body165, !dbg !1078

for.inc205:                                       ; preds = %for.body165
  %indvars.iv.next415 = add i64 %indvars.iv414, 1, !dbg !1076
  %32 = trunc i64 %indvars.iv.next415 to i32, !dbg !1076
  %cmp159 = icmp slt i32 %32, %28, !dbg !1076
  br i1 %cmp159, label %for.cond162.preheader, label %for.cond208.preheader, !dbg !1076

for.body229:                                      ; preds = %for.body229, %for.cond208.preheader
  %indvars.iv = phi i64 [ 0, %for.cond208.preheader ], [ %indvars.iv.next, %for.body229 ]
  %arrayidx231 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv, !dbg !1088
  %33 = load float* %arrayidx231, align 4, !dbg !1088, !tbaa !739
  %arrayidx233 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv, !dbg !1088
  %34 = load float* %arrayidx233, align 4, !dbg !1088, !tbaa !739
  %sub234 = fsub float %33, %34, !dbg !1088
  %arrayidx238 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv, !dbg !1088
  store float %sub234, float* %arrayidx238, align 4, !dbg !1088, !tbaa !739
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1083
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1083
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1083
  br i1 %exitcond, label %for.end241, label %for.body229, !dbg !1083

for.end241:                                       ; preds = %for.body229
  %35 = load %struct._IO_FILE** @stderr, align 8, !dbg !1089, !tbaa !681
  %arrayidx243 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1089
  %36 = load float* %arrayidx243, align 4, !dbg !1089, !tbaa !739
  %conv244 = fpext float %36 to double, !dbg !1089
  %arrayidx246 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1089
  %37 = load float* %arrayidx246, align 4, !dbg !1089, !tbaa !739
  %conv247 = fpext float %37 to double, !dbg !1089
  %arrayidx249 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1089
  %38 = load float* %arrayidx249, align 4, !dbg !1089, !tbaa !739
  %conv250 = fpext float %38 to double, !dbg !1089
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([45 x i8]* @.str68, i64 0, i64 0), double %conv244, double %conv247, double %conv250) #6, !dbg !1089
  br label %if.end286, !dbg !1090

if.else252:                                       ; preds = %for.end
  call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !603), !dbg !1091
  %39 = load double* %x1, align 8, !dbg !1091, !tbaa !738
  %conv253 = fptrunc double %39 to float, !dbg !1091
  %arrayidx255 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1091
  store float %conv253, float* %arrayidx255, align 4, !dbg !1091, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !604), !dbg !1093
  %40 = load double* %y1, align 8, !dbg !1093, !tbaa !738
  %conv256 = fptrunc double %40 to float, !dbg !1093
  %arrayidx258 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1093
  store float %conv256, float* %arrayidx258, align 4, !dbg !1093, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %z1}, i64 0, metadata !605), !dbg !1094
  %41 = load double* %z1, align 8, !dbg !1094, !tbaa !738
  %conv259 = fptrunc double %41 to float, !dbg !1094
  %arrayidx261 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1094
  store float %conv259, float* %arrayidx261, align 4, !dbg !1094, !tbaa !739
  %call263 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([28 x i8]* @.str69, i64 0, i64 0), double* %x1, double* %y1, double* %z1, double* %x2, double* %y2, double* %z2) #6, !dbg !1095
  %cmp264 = icmp eq i32 %call263, 6, !dbg !1095
  br i1 %cmp264, label %if.else252.if.end267_crit_edge, label %if.then266, !dbg !1095

if.else252.if.end267_crit_edge:                   ; preds = %if.else252
  call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !603), !dbg !1096
  %.pre = load double* %x1, align 8, !dbg !1096, !tbaa !738
  call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !604), !dbg !1097
  %.pre427 = load double* %y1, align 8, !dbg !1097, !tbaa !738
  call void @llvm.dbg.value(metadata !{double* %z1}, i64 0, metadata !605), !dbg !1098
  %.pre428 = load double* %z1, align 8, !dbg !1098, !tbaa !738
  call void @llvm.dbg.value(metadata !{double* %x2}, i64 0, metadata !606), !dbg !1099
  %.pre429 = load double* %x2, align 8, !dbg !1099, !tbaa !738
  call void @llvm.dbg.value(metadata !{double* %y2}, i64 0, metadata !607), !dbg !1100
  %.pre430 = load double* %y2, align 8, !dbg !1100, !tbaa !738
  call void @llvm.dbg.value(metadata !{double* %z2}, i64 0, metadata !608), !dbg !1101
  %.pre431 = load double* %z2, align 8, !dbg !1101, !tbaa !738
  %phitmp = fptrunc double %.pre to float, !dbg !1095
  %phitmp432 = fptrunc double %.pre427 to float, !dbg !1095
  %phitmp433 = fptrunc double %.pre428 to float, !dbg !1095
  %phitmp434 = fptrunc double %.pre429 to float, !dbg !1095
  %phitmp435 = fptrunc double %.pre430 to float, !dbg !1095
  %phitmp436 = fptrunc double %.pre431 to float, !dbg !1095
  br label %if.end267, !dbg !1095

if.then266:                                       ; preds = %if.else252
  call void @llvm.dbg.value(metadata !1102, i64 0, metadata !608), !dbg !1103
  store double 0.000000e+00, double* %z2, align 8, !dbg !1103, !tbaa !738
  call void @llvm.dbg.value(metadata !1102, i64 0, metadata !607), !dbg !1103
  store double 0.000000e+00, double* %y2, align 8, !dbg !1103, !tbaa !738
  call void @llvm.dbg.value(metadata !1102, i64 0, metadata !606), !dbg !1103
  store double 0.000000e+00, double* %x2, align 8, !dbg !1103, !tbaa !738
  call void @llvm.dbg.value(metadata !1102, i64 0, metadata !605), !dbg !1103
  store double 0.000000e+00, double* %z1, align 8, !dbg !1103, !tbaa !738
  call void @llvm.dbg.value(metadata !1102, i64 0, metadata !604), !dbg !1103
  store double 0.000000e+00, double* %y1, align 8, !dbg !1103, !tbaa !738
  call void @llvm.dbg.value(metadata !1102, i64 0, metadata !603), !dbg !1103
  store double 0.000000e+00, double* %x1, align 8, !dbg !1103, !tbaa !738
  br label %if.end267, !dbg !1103

if.end267:                                        ; preds = %if.else252.if.end267_crit_edge, %if.then266
  %42 = phi float [ %phitmp436, %if.else252.if.end267_crit_edge ], [ 0.000000e+00, %if.then266 ]
  %43 = phi float [ %phitmp435, %if.else252.if.end267_crit_edge ], [ 0.000000e+00, %if.then266 ]
  %44 = phi float [ %phitmp434, %if.else252.if.end267_crit_edge ], [ 0.000000e+00, %if.then266 ]
  %45 = phi float [ %phitmp433, %if.else252.if.end267_crit_edge ], [ 0.000000e+00, %if.then266 ]
  %46 = phi float [ %phitmp432, %if.else252.if.end267_crit_edge ], [ 0.000000e+00, %if.then266 ]
  %47 = phi float [ %phitmp, %if.else252.if.end267_crit_edge ], [ 0.000000e+00, %if.then266 ]
  call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !603), !dbg !1096
  %arrayidx270 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1096
  store float %47, float* %arrayidx270, align 4, !dbg !1096, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !604), !dbg !1097
  %arrayidx273 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1097
  store float %46, float* %arrayidx273, align 4, !dbg !1097, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %z1}, i64 0, metadata !605), !dbg !1098
  %arrayidx276 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1098
  store float %45, float* %arrayidx276, align 4, !dbg !1098, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %x2}, i64 0, metadata !606), !dbg !1099
  %arrayidx279 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1099
  store float %44, float* %arrayidx279, align 4, !dbg !1099, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %y2}, i64 0, metadata !607), !dbg !1100
  %arrayidx282 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1100
  store float %43, float* %arrayidx282, align 4, !dbg !1100, !tbaa !739
  call void @llvm.dbg.value(metadata !{double* %z2}, i64 0, metadata !608), !dbg !1101
  %arrayidx285 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1101
  store float %42, float* %arrayidx285, align 4, !dbg !1101, !tbaa !739
  br label %if.end286

if.end286:                                        ; preds = %if.end267, %for.end241
  %48 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !dbg !1104, !tbaa !681
  call void @close_symtab(%struct.t_symtab* %48) #6, !dbg !1104
  call void @llvm.lifetime.end(i64 256, i8* %1) #5, !dbg !1105
  call void @llvm.lifetime.end(i64 4097, i8* %0) #5, !dbg !1105
  ret i32 %bVel.0.lcssa, !dbg !1105
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define i32 @gro_first_x_or_v(%struct._IO_FILE* %status, %struct.t_trxframe* %fr) #0 {
entry:
  %title = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %status}, i64 0, metadata !247), !dbg !1106
  call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !248), !dbg !1106
  %0 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0, !dbg !1107
  call void @llvm.lifetime.start(i64 4096, i8* %0) #5, !dbg !1107
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %title}, metadata !249), !dbg !1107
  call void @frewind(%struct._IO_FILE* %status) #6, !dbg !1108
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !1109, !tbaa !681
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str31, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %1), !dbg !1109
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1110
  call fastcc void @get_coordnum_fp(%struct._IO_FILE* %status, i8* %0, i32* %natoms) #9, !dbg !1110
  call void @frewind(%struct._IO_FILE* %status) #6, !dbg !1111
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !1112, !tbaa !681
  %4 = load i32* %natoms, align 4, !dbg !1112, !tbaa !692
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([18 x i8]* @.str32, i64 0, i64 0), i8* %0, i32 %4) #6, !dbg !1112
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !1113
  store i32 1, i32* %bTitle, align 4, !dbg !1113, !tbaa !692
  %title5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !1114
  store i8* %0, i8** %title5, align 8, !dbg !1114, !tbaa !681
  %5 = load i32* %natoms, align 4, !dbg !1115, !tbaa !692
  %cmp = icmp eq i32 %5, 0, !dbg !1115
  br i1 %cmp, label %if.then, label %if.end, !dbg !1115

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 1, i8* getelementptr inbounds ([28 x i8]* @.str33, i64 0, i64 0)) #6, !dbg !1116
  %.pre = load i32* %natoms, align 4, !dbg !1117, !tbaa !692
  br label %if.end, !dbg !1116

if.end:                                           ; preds = %if.then, %entry
  %6 = phi i32 [ %.pre, %if.then ], [ %5, %entry ]
  %call8 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 627, i32 %6, i32 12) #6, !dbg !1117
  %7 = bitcast i8* %call8 to [3 x float]*, !dbg !1117
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1117
  store [3 x float]* %7, [3 x float]** %x, align 8, !dbg !1117, !tbaa !681
  %8 = load i32* %natoms, align 4, !dbg !1118, !tbaa !692
  %call10 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 628, i32 %8, i32 12) #6, !dbg !1118
  %9 = bitcast i8* %call10 to [3 x float]*, !dbg !1118
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1118
  store [3 x float]* %9, [3 x float]** %v, align 8, !dbg !1118, !tbaa !681
  %call11 = call i32 @gro_next_x_or_v(%struct._IO_FILE* %status, %struct.t_trxframe* %fr) #9, !dbg !1119
  %10 = load i32* %natoms, align 4, !dbg !1120, !tbaa !692
  call void @llvm.lifetime.end(i64 4096, i8* %0) #5, !dbg !1121
  ret i32 %10, !dbg !1121
}

; Function Attrs: optsize
declare void @frewind(%struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @get_coordnum_fp(%struct._IO_FILE* %in, i8* %title, i32* %natoms) #0 {
entry:
  %line = alloca [4097 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in}, i64 0, metadata !576), !dbg !1122
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !577), !dbg !1122
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !578), !dbg !1122
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0, !dbg !1123
  call void @llvm.lifetime.start(i64 4097, i8* %0) #5, !dbg !1123
  call void @llvm.dbg.declare(metadata !{[4097 x i8]* %line}, metadata !579), !dbg !1123
  %call = call i8* @fgets2(i8* %title, i32 4096, %struct._IO_FILE* %in) #6, !dbg !1124
  %call1 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #6, !dbg !1125
  %call3 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i32* %natoms) #6, !dbg !1126
  call void @llvm.lifetime.end(i64 4097, i8* %0) #5, !dbg !1127
  ret void, !dbg !1127
}

; Function Attrs: nounwind optsize uwtable
define void @write_hconf_indexed_p(%struct._IO_FILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture %atoms, i32 %nx, i32* nocapture %index, i32 %pr, [3 x float]* nocapture %x, [3 x float]* %v, [3 x float]* nocapture %box) #0 {
entry:
  %resnm = alloca [6 x i8], align 1
  %nm = alloca [6 x i8], align 1
  %format = alloca [100 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !255), !dbg !1128
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !256), !dbg !1128
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !257), !dbg !1128
  call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !258), !dbg !1129
  call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !259), !dbg !1129
  call void @llvm.dbg.value(metadata !{i32 %pr}, i64 0, metadata !260), !dbg !1129
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !261), !dbg !1130
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !262), !dbg !1130
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !263), !dbg !1130
  call void @llvm.dbg.declare(metadata !{[6 x i8]* %resnm}, metadata !264), !dbg !1131
  call void @llvm.dbg.declare(metadata !{[6 x i8]* %nm}, metadata !265), !dbg !1131
  %0 = getelementptr inbounds [100 x i8]* %format, i64 0, i64 0, !dbg !1131
  call void @llvm.lifetime.start(i64 100, i8* %0) #5, !dbg !1131
  call void @llvm.dbg.declare(metadata !{[100 x i8]* %format}, metadata !266), !dbg !1131
  %tobool = icmp eq i8* %title, null, !dbg !1132
  br i1 %tobool, label %cond.false, label %land.lhs.true, !dbg !1132

land.lhs.true:                                    ; preds = %entry
  %1 = load i8* %title, align 1, !dbg !1132, !tbaa !682
  %tobool1 = icmp eq i8 %1, 0, !dbg !1132
  br i1 %tobool1, label %cond.false, label %cond.end, !dbg !1132

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call = call i8* @bromacs() #6, !dbg !1132
  br label %cond.end, !dbg !1132

cond.end:                                         ; preds = %land.lhs.true, %cond.false
  %cond = phi i8* [ %call, %cond.false ], [ %title, %land.lhs.true ], !dbg !1132
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i8* %cond) #6, !dbg !1132
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0), i32 %nx) #6, !dbg !1133
  %cmp = icmp slt i32 %pr, 0, !dbg !1134
  call void @llvm.dbg.value(metadata !16, i64 0, metadata !260), !dbg !1135
  %.pr = select i1 %cmp, i32 0, i32 %pr, !dbg !1134
  %cmp5 = icmp sgt i32 %.pr, 30, !dbg !1136
  call void @llvm.dbg.value(metadata !1034, i64 0, metadata !260), !dbg !1137
  %pr.addr.1 = select i1 %cmp5, i32 30, i32 %.pr, !dbg !1136
  %add = add nsw i32 %pr.addr.1, 5, !dbg !1138
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !273), !dbg !1138
  %add9 = add nsw i32 %pr.addr.1, 1, !dbg !1139
  call void @llvm.dbg.value(metadata !{i32 %add9}, i64 0, metadata !274), !dbg !1139
  %tobool10 = icmp ne [3 x float]* %v, null, !dbg !1140
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !1140

if.then11:                                        ; preds = %cond.end
  %call12 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([50 x i8]* @.str38, i64 0, i64 0), i32 %add, i32 %pr.addr.1, i32 %add, i32 %pr.addr.1, i32 %add, i32 %pr.addr.1, i32 %add, i32 %add9, i32 %add, i32 %add9, i32 %add, i32 %add9) #6, !dbg !1141
  br label %for.cond.preheader, !dbg !1141

if.else:                                          ; preds = %cond.end
  %call14 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([26 x i8]* @.str39, i64 0, i64 0), i32 %add, i32 %pr.addr.1, i32 %add, i32 %pr.addr.1, i32 %add, i32 %pr.addr.1) #6, !dbg !1142
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else, %if.then11
  %cmp16278 = icmp sgt i32 %nx, 0, !dbg !1143
  br i1 %cmp16278, label %for.body.lr.ph, label %for.end, !dbg !1143

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !1145
  %arraydecay22 = getelementptr inbounds [6 x i8]* %resnm, i64 0, i64 0, !dbg !1147
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !1148
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !1149
  %arraydecay35 = getelementptr inbounds [6 x i8]* %nm, i64 0, i64 0, !dbg !1150
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !1150
  br label %for.body, !dbg !1143

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx18 = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !1151
  %2 = load i32* %arrayidx18, align 4, !dbg !1151, !tbaa !692
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !270), !dbg !1151
  %idxprom19 = sext i32 %2 to i64, !dbg !1145
  %3 = load %struct.t_atom** %atom, align 8, !dbg !1145, !tbaa !681
  %resnr21 = getelementptr inbounds %struct.t_atom* %3, i64 %idxprom19, i32 7, !dbg !1145
  %4 = load i32* %resnr21, align 4, !dbg !1145, !tbaa !692
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !272), !dbg !1145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay22, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !1147
  %5 = load i32* %nres, align 4, !dbg !1148, !tbaa !692
  %cmp24 = icmp slt i32 %4, %5, !dbg !1148
  br i1 %cmp24, label %if.then26, label %if.end31, !dbg !1148

if.then26:                                        ; preds = %for.body
  %idxprom28 = sext i32 %4 to i64, !dbg !1149
  %6 = load i8**** %resname, align 8, !dbg !1149, !tbaa !681
  %arrayidx29 = getelementptr inbounds i8*** %6, i64 %idxprom28, !dbg !1149
  %7 = load i8*** %arrayidx29, align 8, !dbg !1149, !tbaa !681
  %8 = load i8** %7, align 8, !dbg !1149, !tbaa !681
  %call30 = call i8* @strcpy(i8* %arraydecay22, i8* %8) #6, !dbg !1149
  %.pre = load %struct.t_atom** %atom, align 8, !dbg !1152, !tbaa !681
  br label %if.end31, !dbg !1149

if.end31:                                         ; preds = %if.then26, %for.body
  %9 = phi %struct.t_atom* [ %.pre, %if.then26 ], [ %3, %for.body ]
  %tobool33 = icmp eq %struct.t_atom* %9, null, !dbg !1152
  br i1 %tobool33, label %if.else39, label %if.then34, !dbg !1152

if.then34:                                        ; preds = %if.end31
  %10 = load i8**** %atomname, align 8, !dbg !1150, !tbaa !681
  %arrayidx37 = getelementptr inbounds i8*** %10, i64 %idxprom19, !dbg !1150
  %11 = load i8*** %arrayidx37, align 8, !dbg !1150, !tbaa !681
  %12 = load i8** %11, align 8, !dbg !1150, !tbaa !681
  %call38 = call i8* @strcpy(i8* %arraydecay35, i8* %12) #6, !dbg !1150
  br label %if.end42, !dbg !1150

if.else39:                                        ; preds = %if.end31
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay35, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !1153
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then34
  %add43 = add nsw i32 %4, 1, !dbg !1154
  %rem = srem i32 %add43, 100000, !dbg !1154
  %add46 = add nsw i32 %2, 1, !dbg !1154
  %rem47 = srem i32 %add46, 100000, !dbg !1154
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str41, i64 0, i64 0), i32 %rem, i8* %arraydecay22, i8* %arraydecay35, i32 %rem47) #6, !dbg !1154
  %arrayidx54 = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 0, !dbg !1155
  %13 = load float* %arrayidx54, align 4, !dbg !1155, !tbaa !739
  %conv55 = fpext float %13 to double, !dbg !1155
  %arrayidx58 = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 1, !dbg !1155
  %14 = load float* %arrayidx58, align 4, !dbg !1155, !tbaa !739
  %conv59 = fpext float %14 to double, !dbg !1155
  %arrayidx62 = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 2, !dbg !1155
  %15 = load float* %arrayidx62, align 4, !dbg !1155, !tbaa !739
  %conv63 = fpext float %15 to double, !dbg !1155
  br i1 %tobool10, label %if.then50, label %if.else77, !dbg !1156

if.then50:                                        ; preds = %if.end42
  %arrayidx66 = getelementptr inbounds [3 x float]* %v, i64 %idxprom19, i64 0, !dbg !1155
  %16 = load float* %arrayidx66, align 4, !dbg !1155, !tbaa !739
  %conv67 = fpext float %16 to double, !dbg !1155
  %arrayidx70 = getelementptr inbounds [3 x float]* %v, i64 %idxprom19, i64 1, !dbg !1155
  %17 = load float* %arrayidx70, align 4, !dbg !1155, !tbaa !739
  %conv71 = fpext float %17 to double, !dbg !1155
  %arrayidx74 = getelementptr inbounds [3 x float]* %v, i64 %idxprom19, i64 2, !dbg !1155
  %18 = load float* %arrayidx74, align 4, !dbg !1155, !tbaa !739
  %conv75 = fpext float %18 to double, !dbg !1155
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* %0, double %conv55, double %conv59, double %conv63, double %conv67, double %conv71, double %conv75) #6, !dbg !1155
  br label %for.inc, !dbg !1155

if.else77:                                        ; preds = %if.end42
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* %0, double %conv55, double %conv59, double %conv63) #6, !dbg !1157
  br label %for.inc

for.inc:                                          ; preds = %if.then50, %if.else77
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1143
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1143
  %exitcond = icmp eq i32 %lftr.wideiv, %nx, !dbg !1143
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1143

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %cmp93 = icmp slt i32 %pr.addr.1, 5, !dbg !1158
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !260), !dbg !1160
  %.pr.addr.1 = select i1 %cmp93, i32 5, i32 %pr.addr.1, !dbg !1158
  %add97 = add nsw i32 %.pr.addr.1, 5, !dbg !1161
  call void @llvm.dbg.value(metadata !{i32 %add97}, i64 0, metadata !273), !dbg !1161
  %arrayidx99 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1162
  %19 = load float* %arrayidx99, align 4, !dbg !1162, !tbaa !739
  %fabsf = call float @fabsf(float %19) #8, !dbg !1162
  %20 = fpext float %fabsf to double, !dbg !1162
  %cmp102 = fcmp ogt double %20, 1.200000e-38, !dbg !1162
  %arrayidx155.pre = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1163
  br i1 %cmp102, label %if.then138, label %lor.lhs.false, !dbg !1162

lor.lhs.false:                                    ; preds = %for.end
  %21 = load float* %arrayidx155.pre, align 4, !dbg !1165, !tbaa !739
  %fabsf273 = call float @fabsf(float %21) #8, !dbg !1165
  %22 = fpext float %fabsf273 to double, !dbg !1165
  %cmp108 = fcmp ogt double %22, 1.200000e-38, !dbg !1165
  br i1 %cmp108, label %if.then138, label %lor.lhs.false110, !dbg !1165

lor.lhs.false110:                                 ; preds = %lor.lhs.false
  %arrayidx112 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1166
  %23 = load float* %arrayidx112, align 4, !dbg !1166, !tbaa !739
  %fabsf274 = call float @fabsf(float %23) #8, !dbg !1166
  %24 = fpext float %fabsf274 to double, !dbg !1166
  %cmp115 = fcmp ogt double %24, 1.200000e-38, !dbg !1166
  br i1 %cmp115, label %if.then138, label %lor.lhs.false117, !dbg !1166

lor.lhs.false117:                                 ; preds = %lor.lhs.false110
  %arrayidx119 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1167
  %25 = load float* %arrayidx119, align 4, !dbg !1167, !tbaa !739
  %fabsf275 = call float @fabsf(float %25) #8, !dbg !1167
  %26 = fpext float %fabsf275 to double, !dbg !1167
  %cmp122 = fcmp ogt double %26, 1.200000e-38, !dbg !1167
  br i1 %cmp122, label %if.then138, label %lor.lhs.false124, !dbg !1167

lor.lhs.false124:                                 ; preds = %lor.lhs.false117
  %arrayidx126 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1168
  %27 = load float* %arrayidx126, align 4, !dbg !1168, !tbaa !739
  %fabsf276 = call float @fabsf(float %27) #8, !dbg !1168
  %28 = fpext float %fabsf276 to double, !dbg !1168
  %cmp129 = fcmp ogt double %28, 1.200000e-38, !dbg !1168
  br i1 %cmp129, label %if.then138, label %lor.lhs.false131, !dbg !1168

lor.lhs.false131:                                 ; preds = %lor.lhs.false124
  %arrayidx133 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1169
  %29 = load float* %arrayidx133, align 4, !dbg !1169, !tbaa !739
  %fabsf277 = call float @fabsf(float %29) #8, !dbg !1169
  %30 = fpext float %fabsf277 to double, !dbg !1169
  %cmp136 = fcmp ogt double %30, 1.200000e-38, !dbg !1169
  br i1 %cmp136, label %if.then138, label %if.else170, !dbg !1169

if.then138:                                       ; preds = %for.end, %lor.lhs.false131, %lor.lhs.false124, %lor.lhs.false117, %lor.lhs.false110, %lor.lhs.false
  %call140 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([74 x i8]* @.str42, i64 0, i64 0), i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1) #6, !dbg !1170
  %arrayidx143 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1163
  %31 = load float* %arrayidx143, align 4, !dbg !1163, !tbaa !739
  %conv144 = fpext float %31 to double, !dbg !1163
  %arrayidx146 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1163
  %32 = load float* %arrayidx146, align 4, !dbg !1163, !tbaa !739
  %conv147 = fpext float %32 to double, !dbg !1163
  %arrayidx149 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1163
  %33 = load float* %arrayidx149, align 4, !dbg !1163, !tbaa !739
  %conv150 = fpext float %33 to double, !dbg !1163
  %34 = load float* %arrayidx99, align 4, !dbg !1163, !tbaa !739
  %conv153 = fpext float %34 to double, !dbg !1163
  %35 = load float* %arrayidx155.pre, align 4, !dbg !1163, !tbaa !739
  %conv156 = fpext float %35 to double, !dbg !1163
  %arrayidx158 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1163
  %36 = load float* %arrayidx158, align 4, !dbg !1163, !tbaa !739
  %conv159 = fpext float %36 to double, !dbg !1163
  %arrayidx161 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1163
  %37 = load float* %arrayidx161, align 4, !dbg !1163, !tbaa !739
  %conv162 = fpext float %37 to double, !dbg !1163
  %arrayidx164 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1163
  %38 = load float* %arrayidx164, align 4, !dbg !1163, !tbaa !739
  %conv165 = fpext float %38 to double, !dbg !1163
  %arrayidx167 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1163
  %39 = load float* %arrayidx167, align 4, !dbg !1163, !tbaa !739
  %conv168 = fpext float %39 to double, !dbg !1163
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* %0, double %conv144, double %conv147, double %conv150, double %conv153, double %conv156, double %conv159, double %conv162, double %conv165, double %conv168) #6, !dbg !1163
  br label %if.end184, !dbg !1171

if.else170:                                       ; preds = %lor.lhs.false131
  %call172 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([26 x i8]* @.str39, i64 0, i64 0), i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1) #6, !dbg !1172
  %arrayidx175 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1174
  %40 = load float* %arrayidx175, align 4, !dbg !1174, !tbaa !739
  %conv176 = fpext float %40 to double, !dbg !1174
  %arrayidx178 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1174
  %41 = load float* %arrayidx178, align 4, !dbg !1174, !tbaa !739
  %conv179 = fpext float %41 to double, !dbg !1174
  %arrayidx181 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1174
  %42 = load float* %arrayidx181, align 4, !dbg !1174, !tbaa !739
  %conv182 = fpext float %42 to double, !dbg !1174
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* %0, double %conv176, double %conv179, double %conv182) #6, !dbg !1174
  br label %if.end184

if.end184:                                        ; preds = %if.else170, %if.then138
  %call185 = call i32 @fflush(%struct._IO_FILE* %out) #6, !dbg !1175
  call void @llvm.lifetime.end(i64 100, i8* %0) #5, !dbg !1176
  ret void, !dbg !1176
}

; Function Attrs: optsize
declare i8* @bromacs() #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @write_hconf_p(%struct._IO_FILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture %atoms, i32 %pr, [3 x float]* nocapture %x, [3 x float]* %v, [3 x float]* nocapture %box) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !279), !dbg !1177
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !280), !dbg !1177
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !281), !dbg !1177
  tail call void @llvm.dbg.value(metadata !{i32 %pr}, i64 0, metadata !282), !dbg !1177
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !283), !dbg !1178
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !284), !dbg !1178
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !285), !dbg !1178
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1179
  %0 = load i32* %nr, align 4, !dbg !1179, !tbaa !692
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 712, i32 %0, i32 4) #6, !dbg !1179
  %1 = bitcast i8* %call to i32*, !dbg !1179
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !286), !dbg !1179
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !287), !dbg !1180
  %2 = load i32* %nr, align 4, !dbg !1180, !tbaa !692
  %cmp11 = icmp sgt i32 %2, 0, !dbg !1180
  br i1 %cmp11, label %for.body, label %for.end, !dbg !1180

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv, !dbg !1182
  %3 = trunc i64 %indvars.iv to i32, !dbg !1182
  store i32 %3, i32* %arrayidx, align 4, !dbg !1182, !tbaa !692
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1180
  %4 = load i32* %nr, align 4, !dbg !1180, !tbaa !692
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !1180
  %cmp = icmp slt i32 %5, %4, !dbg !1180
  br i1 %cmp, label %for.body, label %for.end, !dbg !1180

for.end:                                          ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %2, %entry ], [ %4, %for.body ]
  tail call void @write_hconf_indexed_p(%struct._IO_FILE* %out, i8* %title, %struct.t_atoms* %atoms, i32 %.lcssa, i32* %1, i32 %pr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #9, !dbg !1183
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 716, i8* %call) #6, !dbg !1184
  ret void, !dbg !1185
}

; Function Attrs: nounwind optsize uwtable
define void @write_conf_p(i8* %outfile, i8* %title, %struct.t_atoms* nocapture %atoms, i32 %pr, [3 x float]* nocapture %x, [3 x float]* %v, [3 x float]* nocapture %box) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %outfile}, i64 0, metadata !292), !dbg !1186
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !293), !dbg !1186
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !294), !dbg !1186
  tail call void @llvm.dbg.value(metadata !{i32 %pr}, i64 0, metadata !295), !dbg !1186
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !296), !dbg !1187
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !297), !dbg !1187
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !298), !dbg !1187
  %call = tail call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #6, !dbg !1188
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !299), !dbg !1188
  tail call void @write_hconf_p(%struct._IO_FILE* %call, i8* %title, %struct.t_atoms* %atoms, i32 %pr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #9, !dbg !1189
  tail call void @ffclose(%struct._IO_FILE* %call) #6, !dbg !1190
  ret void, !dbg !1191
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #3

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define void @write_sto_conf_indexed(i8* %outfile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box, i32 %nindex, i32* %index) #0 {
entry:
  %fr = alloca %struct.t_trxframe, align 8
  call void @llvm.dbg.value(metadata !{i8* %outfile}, i64 0, metadata !304), !dbg !1192
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !305), !dbg !1192
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !306), !dbg !1192
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !307), !dbg !1193
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !308), !dbg !1193
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !309), !dbg !1193
  call void @llvm.dbg.value(metadata !{i32 %nindex}, i64 0, metadata !310), !dbg !1194
  call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !311), !dbg !1194
  %0 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !1195
  call void @llvm.lifetime.start(i64 176, i8* %0) #5, !dbg !1195
  call void @llvm.dbg.declare(metadata !{%struct.t_trxframe* %fr}, metadata !314), !dbg !1195
  %call = call i32 @fn2ftp(i8* %outfile) #6, !dbg !1196
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !313), !dbg !1196
  switch i32 %call, label %sw.default [
    i32 13, label %sw.bb
    i32 14, label %sw.bb2
    i32 15, label %sw.bb9
    i32 16, label %sw.bb9
    i32 17, label %sw.bb9
    i32 26, label %sw.bb11
    i32 28, label %sw.bb11
    i32 27, label %sw.bb11
  ], !dbg !1197

sw.bb:                                            ; preds = %entry
  %call1 = call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #6, !dbg !1198
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call1}, i64 0, metadata !312), !dbg !1198
  call void @write_hconf_indexed_p(%struct._IO_FILE* %call1, i8* %title, %struct.t_atoms* %atoms, i32 %nindex, i32* %index, i32 3, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #9, !dbg !1200
  call void @ffclose(%struct._IO_FILE* %call1) #6, !dbg !1201
  br label %sw.epilog, !dbg !1202

sw.bb2:                                           ; preds = %entry
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #6, !dbg !1203
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !1204
  store i32 1, i32* %bTitle, align 8, !dbg !1204, !tbaa !692
  %title3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !1205
  store i8* %title, i8** %title3, align 8, !dbg !1205, !tbaa !681
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1206
  %1 = load i32* %nr, align 4, !dbg !1206, !tbaa !692
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1206
  store i32 %1, i32* %natoms, align 8, !dbg !1206, !tbaa !692
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !1207
  store i32 1, i32* %bAtoms, align 8, !dbg !1207, !tbaa !692
  %atoms4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !1208
  store %struct.t_atoms* %atoms, %struct.t_atoms** %atoms4, align 8, !dbg !1208, !tbaa !681
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1209
  store i32 1, i32* %bX, align 8, !dbg !1209, !tbaa !692
  %x5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1210
  store [3 x float]* %x, [3 x float]** %x5, align 8, !dbg !1210, !tbaa !681
  %tobool = icmp eq [3 x float]* %v, null, !dbg !1211
  br i1 %tobool, label %if.end, label %if.then, !dbg !1211

if.then:                                          ; preds = %sw.bb2
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1212
  store i32 1, i32* %bV, align 8, !dbg !1212, !tbaa !692
  %v6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1214
  store [3 x float]* %v, [3 x float]** %v6, align 8, !dbg !1214, !tbaa !681
  br label %if.end, !dbg !1215

if.end:                                           ; preds = %sw.bb2, %if.then
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1216
  store i32 1, i32* %bBox, align 8, !dbg !1216, !tbaa !692
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1217), !dbg !1219
  %arraydecay.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1220
  %arraydecay2.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0, !dbg !1220
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay.i}, i64 0, metadata !1222), !dbg !1223
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay2.i}, i64 0, metadata !1224), !dbg !1223
  %2 = load float* %arraydecay.i, align 4, !dbg !1225, !tbaa !739
  store float %2, float* %arraydecay2.i, align 4, !dbg !1225, !tbaa !739
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1226
  %3 = load float* %arrayidx2.i.i, align 4, !dbg !1226, !tbaa !739
  %arrayidx3.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1, !dbg !1226
  store float %3, float* %arrayidx3.i.i, align 4, !dbg !1226, !tbaa !739
  %arrayidx4.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1227
  %4 = load float* %arrayidx4.i.i, align 4, !dbg !1227, !tbaa !739
  %arrayidx5.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2, !dbg !1227
  store float %4, float* %arrayidx5.i.i, align 4, !dbg !1227, !tbaa !739
  %arraydecay4.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1228
  %arraydecay6.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0, !dbg !1228
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay4.i}, i64 0, metadata !1229), !dbg !1230
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay6.i}, i64 0, metadata !1231), !dbg !1230
  %5 = load float* %arraydecay4.i, align 4, !dbg !1232, !tbaa !739
  store float %5, float* %arraydecay6.i, align 4, !dbg !1232, !tbaa !739
  %arrayidx2.i19.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1233
  %6 = load float* %arrayidx2.i19.i, align 4, !dbg !1233, !tbaa !739
  %arrayidx3.i20.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !1233
  store float %6, float* %arrayidx3.i20.i, align 4, !dbg !1233, !tbaa !739
  %arrayidx4.i21.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1234
  %7 = load float* %arrayidx4.i21.i, align 4, !dbg !1234, !tbaa !739
  %arrayidx5.i22.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2, !dbg !1234
  store float %7, float* %arrayidx5.i22.i, align 4, !dbg !1234, !tbaa !739
  %arraydecay8.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1235
  %arraydecay10.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0, !dbg !1235
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8.i}, i64 0, metadata !1236), !dbg !1237
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay10.i}, i64 0, metadata !1238), !dbg !1237
  %8 = load float* %arraydecay8.i, align 4, !dbg !1239, !tbaa !739
  store float %8, float* %arraydecay10.i, align 4, !dbg !1239, !tbaa !739
  %arrayidx2.i15.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1240
  %9 = load float* %arrayidx2.i15.i, align 4, !dbg !1240, !tbaa !739
  %arrayidx3.i16.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1, !dbg !1240
  store float %9, float* %arrayidx3.i16.i, align 4, !dbg !1240, !tbaa !739
  %arrayidx4.i17.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1241
  %10 = load float* %arrayidx4.i17.i, align 4, !dbg !1241, !tbaa !739
  %arrayidx5.i18.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !1241
  store float %10, float* %arrayidx5.i18.i, align 4, !dbg !1241, !tbaa !739
  %call8 = call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #6, !dbg !1242
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call8}, i64 0, metadata !312), !dbg !1242
  call void @write_g96_conf(%struct._IO_FILE* %call8, %struct.t_trxframe* %fr, i32 %nindex, i32* %index) #9, !dbg !1243
  call void @ffclose(%struct._IO_FILE* %call8) #6, !dbg !1244
  br label %sw.epilog, !dbg !1245

sw.bb9:                                           ; preds = %entry, %entry, %entry
  %call10 = call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #6, !dbg !1246
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call10}, i64 0, metadata !312), !dbg !1246
  call void @write_pdbfile_indexed(%struct._IO_FILE* %call10, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i8 signext 0, i32 -1, i32 %nindex, i32* %index) #6, !dbg !1247
  call void @ffclose(%struct._IO_FILE* %call10) #6, !dbg !1248
  br label %sw.epilog, !dbg !1249

sw.bb11:                                          ; preds = %entry, %entry, %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str45, i64 0, i64 0), i8* %outfile) #6, !dbg !1250
  br label %sw.epilog, !dbg !1251

sw.default:                                       ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str46, i64 0, i64 0), i8* %outfile) #6, !dbg !1252
  br label %sw.epilog, !dbg !1253

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb9, %if.end, %sw.bb
  call void @llvm.lifetime.end(i64 176, i8* %0) #5, !dbg !1254
  ret void, !dbg !1254
}

; Function Attrs: optsize
declare i32 @fn2ftp(i8*) #3

; Function Attrs: optsize
declare void @write_pdbfile_indexed(%struct._IO_FILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32, i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @write_sto_conf(i8* %outfile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #0 {
entry:
  %fr = alloca %struct.t_trxframe, align 8
  call void @llvm.dbg.value(metadata !{i8* %outfile}, i64 0, metadata !319), !dbg !1255
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !320), !dbg !1255
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !321), !dbg !1255
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !322), !dbg !1256
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !323), !dbg !1256
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !324), !dbg !1256
  %0 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !1257
  call void @llvm.lifetime.start(i64 176, i8* %0) #5, !dbg !1257
  call void @llvm.dbg.declare(metadata !{%struct.t_trxframe* %fr}, metadata !327), !dbg !1257
  %call = call i32 @fn2ftp(i8* %outfile) #6, !dbg !1258
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !326), !dbg !1258
  switch i32 %call, label %sw.default [
    i32 13, label %sw.bb
    i32 14, label %sw.bb1
    i32 15, label %sw.bb8
    i32 16, label %sw.bb8
    i32 17, label %sw.bb8
    i32 26, label %sw.bb10
    i32 28, label %sw.bb10
    i32 27, label %sw.bb10
  ], !dbg !1259

sw.bb:                                            ; preds = %entry
  call void @llvm.dbg.value(metadata !{i8* %outfile}, i64 0, metadata !1260) #5, !dbg !1263
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !1264) #5, !dbg !1263
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !1265) #5, !dbg !1263
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !1266) #5, !dbg !1267
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !1268) #5, !dbg !1267
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1269) #5, !dbg !1267
  call void @llvm.dbg.value(metadata !{i8* %outfile}, i64 0, metadata !1270) #5, !dbg !1272
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !1273) #5, !dbg !1272
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !1274) #5, !dbg !1272
  call void @llvm.dbg.value(metadata !1275, i64 0, metadata !1276) #5, !dbg !1272
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !1277) #5, !dbg !1278
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !1279) #5, !dbg !1278
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1280) #5, !dbg !1278
  %call.i.i = call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #6, !dbg !1281
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call.i.i}, i64 0, metadata !1282) #5, !dbg !1281
  call void @write_hconf_p(%struct._IO_FILE* %call.i.i, i8* %title, %struct.t_atoms* %atoms, i32 3, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #6, !dbg !1283
  call void @ffclose(%struct._IO_FILE* %call.i.i) #6, !dbg !1284
  br label %sw.epilog, !dbg !1285

sw.bb1:                                           ; preds = %entry
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #6, !dbg !1286
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !1287
  store i32 1, i32* %bTitle, align 8, !dbg !1287, !tbaa !692
  %title2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !1288
  store i8* %title, i8** %title2, align 8, !dbg !1288, !tbaa !681
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1289
  %1 = load i32* %nr, align 4, !dbg !1289, !tbaa !692
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1289
  store i32 %1, i32* %natoms, align 8, !dbg !1289, !tbaa !692
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !1290
  store i32 1, i32* %bAtoms, align 8, !dbg !1290, !tbaa !692
  %atoms3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !1291
  store %struct.t_atoms* %atoms, %struct.t_atoms** %atoms3, align 8, !dbg !1291, !tbaa !681
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1292
  store i32 1, i32* %bX, align 8, !dbg !1292, !tbaa !692
  %x4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1293
  store [3 x float]* %x, [3 x float]** %x4, align 8, !dbg !1293, !tbaa !681
  %tobool = icmp eq [3 x float]* %v, null, !dbg !1294
  br i1 %tobool, label %if.end, label %if.then, !dbg !1294

if.then:                                          ; preds = %sw.bb1
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1295
  store i32 1, i32* %bV, align 8, !dbg !1295, !tbaa !692
  %v5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1297
  store [3 x float]* %v, [3 x float]** %v5, align 8, !dbg !1297, !tbaa !681
  br label %if.end, !dbg !1298

if.end:                                           ; preds = %sw.bb1, %if.then
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1299
  store i32 1, i32* %bBox, align 8, !dbg !1299, !tbaa !692
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1300), !dbg !1302
  %arraydecay.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1303
  %arraydecay2.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0, !dbg !1303
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay.i}, i64 0, metadata !1304), !dbg !1305
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay2.i}, i64 0, metadata !1306), !dbg !1305
  %2 = load float* %arraydecay.i, align 4, !dbg !1307, !tbaa !739
  store float %2, float* %arraydecay2.i, align 4, !dbg !1307, !tbaa !739
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1308
  %3 = load float* %arrayidx2.i.i, align 4, !dbg !1308, !tbaa !739
  %arrayidx3.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1, !dbg !1308
  store float %3, float* %arrayidx3.i.i, align 4, !dbg !1308, !tbaa !739
  %arrayidx4.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1309
  %4 = load float* %arrayidx4.i.i, align 4, !dbg !1309, !tbaa !739
  %arrayidx5.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2, !dbg !1309
  store float %4, float* %arrayidx5.i.i, align 4, !dbg !1309, !tbaa !739
  %arraydecay4.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1310
  %arraydecay6.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0, !dbg !1310
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay4.i}, i64 0, metadata !1311), !dbg !1312
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay6.i}, i64 0, metadata !1313), !dbg !1312
  %5 = load float* %arraydecay4.i, align 4, !dbg !1314, !tbaa !739
  store float %5, float* %arraydecay6.i, align 4, !dbg !1314, !tbaa !739
  %arrayidx2.i19.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1315
  %6 = load float* %arrayidx2.i19.i, align 4, !dbg !1315, !tbaa !739
  %arrayidx3.i20.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !1315
  store float %6, float* %arrayidx3.i20.i, align 4, !dbg !1315, !tbaa !739
  %arrayidx4.i21.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1316
  %7 = load float* %arrayidx4.i21.i, align 4, !dbg !1316, !tbaa !739
  %arrayidx5.i22.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2, !dbg !1316
  store float %7, float* %arrayidx5.i22.i, align 4, !dbg !1316, !tbaa !739
  %arraydecay8.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1317
  %arraydecay10.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0, !dbg !1317
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8.i}, i64 0, metadata !1318), !dbg !1319
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay10.i}, i64 0, metadata !1320), !dbg !1319
  %8 = load float* %arraydecay8.i, align 4, !dbg !1321, !tbaa !739
  store float %8, float* %arraydecay10.i, align 4, !dbg !1321, !tbaa !739
  %arrayidx2.i15.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1322
  %9 = load float* %arrayidx2.i15.i, align 4, !dbg !1322, !tbaa !739
  %arrayidx3.i16.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1, !dbg !1322
  store float %9, float* %arrayidx3.i16.i, align 4, !dbg !1322, !tbaa !739
  %arrayidx4.i17.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1323
  %10 = load float* %arrayidx4.i17.i, align 4, !dbg !1323, !tbaa !739
  %arrayidx5.i18.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !1323
  store float %10, float* %arrayidx5.i18.i, align 4, !dbg !1323, !tbaa !739
  %call7 = call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #6, !dbg !1324
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call7}, i64 0, metadata !325), !dbg !1324
  call void @write_g96_conf(%struct._IO_FILE* %call7, %struct.t_trxframe* %fr, i32 -1, i32* null) #9, !dbg !1325
  call void @ffclose(%struct._IO_FILE* %call7) #6, !dbg !1326
  br label %sw.epilog, !dbg !1327

sw.bb8:                                           ; preds = %entry, %entry, %entry
  %call9 = call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #6, !dbg !1328
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call9}, i64 0, metadata !325), !dbg !1328
  call void @write_pdbfile(%struct._IO_FILE* %call9, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i8 signext 0, i32 0) #6, !dbg !1329
  call void @ffclose(%struct._IO_FILE* %call9) #6, !dbg !1330
  br label %sw.epilog, !dbg !1331

sw.bb10:                                          ; preds = %entry, %entry, %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str45, i64 0, i64 0), i8* %outfile) #6, !dbg !1332
  br label %sw.epilog, !dbg !1333

sw.default:                                       ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str47, i64 0, i64 0), i8* %outfile) #6, !dbg !1334
  br label %sw.epilog, !dbg !1335

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb8, %if.end, %sw.bb
  call void @llvm.lifetime.end(i64 176, i8* %0) #5, !dbg !1336
  ret void, !dbg !1336
}

; Function Attrs: optsize
declare void @write_pdbfile(%struct._IO_FILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @get_stx_coordnum(i8* %infile, i32* %natoms) #0 {
entry:
  %title.i = alloca [4096 x i8], align 16
  %fr = alloca %struct.t_trxframe, align 8
  %tpx = alloca %struct.t_tpxheader, align 4
  call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !332), !dbg !1337
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !333), !dbg !1337
  %0 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !1338
  call void @llvm.lifetime.start(i64 176, i8* %0) #5, !dbg !1338
  call void @llvm.dbg.declare(metadata !{%struct.t_trxframe* %fr}, metadata !336), !dbg !1338
  %call = call i32 @fn2ftp(i8* %infile) #6, !dbg !1339
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !335), !dbg !1339
  switch i32 %call, label %sw.default [
    i32 13, label %sw.bb
    i32 14, label %sw.bb1
    i32 15, label %sw.bb5
    i32 16, label %sw.bb5
    i32 17, label %sw.bb5
    i32 27, label %sw.bb7
    i32 28, label %sw.bb7
    i32 26, label %sw.bb7
  ], !dbg !1340

sw.bb:                                            ; preds = %entry
  call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !1341) #5, !dbg !1343
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !1344) #5, !dbg !1343
  %1 = getelementptr inbounds [4096 x i8]* %title.i, i64 0, i64 0, !dbg !1345
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5, !dbg !1345
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %title.i}, metadata !546) #5, !dbg !1345
  %call.i = call %struct._IO_FILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #6, !dbg !1346
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call.i}, i64 0, metadata !1347) #5, !dbg !1346
  call fastcc void @get_coordnum_fp(%struct._IO_FILE* %call.i, i8* %1, i32* %natoms) #6, !dbg !1348
  call void @ffclose(%struct._IO_FILE* %call.i) #6, !dbg !1349
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5, !dbg !1350
  br label %sw.epilog, !dbg !1351

sw.bb1:                                           ; preds = %entry
  %call2 = call %struct._IO_FILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #6, !dbg !1352
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call2}, i64 0, metadata !334), !dbg !1352
  %title = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !1353
  store i8* null, i8** %title, align 8, !dbg !1353, !tbaa !681
  %natoms3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1354
  store i32 -1, i32* %natoms3, align 8, !dbg !1354, !tbaa !692
  %atoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !1355
  store %struct.t_atoms* null, %struct.t_atoms** %atoms, align 8, !dbg !1355, !tbaa !681
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1356
  store [3 x float]* null, [3 x float]** %x, align 8, !dbg !1356, !tbaa !681
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1357
  store [3 x float]* null, [3 x float]** %v, align 8, !dbg !1357, !tbaa !681
  %f = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23, !dbg !1358
  store [3 x float]* null, [3 x float]** %f, align 8, !dbg !1358, !tbaa !681
  %call4 = call i32 @read_g96_conf(%struct._IO_FILE* %call2, i8* %infile, %struct.t_trxframe* %fr) #9, !dbg !1359
  store i32 %call4, i32* %natoms, align 4, !dbg !1359, !tbaa !692
  call void @ffclose(%struct._IO_FILE* %call2) #6, !dbg !1360
  br label %sw.epilog, !dbg !1361

sw.bb5:                                           ; preds = %entry, %entry, %entry
  %call6 = call %struct._IO_FILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #6, !dbg !1362
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call6}, i64 0, metadata !334), !dbg !1362
  call void @get_pdb_coordnum(%struct._IO_FILE* %call6, i32* %natoms) #6, !dbg !1363
  call void @ffclose(%struct._IO_FILE* %call6) #6, !dbg !1364
  br label %sw.epilog, !dbg !1365

sw.bb7:                                           ; preds = %entry, %entry, %entry
  %2 = bitcast %struct.t_tpxheader* %tpx to i8*, !dbg !1366
  call void @llvm.lifetime.start(i64 40, i8* %2) #5, !dbg !1366
  call void @llvm.dbg.declare(metadata !{%struct.t_tpxheader* %tpx}, metadata !337), !dbg !1366
  call void @read_tpxheader(i8* %infile, %struct.t_tpxheader* %tpx) #6, !dbg !1367
  %natoms8 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6, !dbg !1368
  %3 = load i32* %natoms8, align 4, !dbg !1368, !tbaa !692
  store i32 %3, i32* %natoms, align 4, !dbg !1368, !tbaa !692
  call void @llvm.lifetime.end(i64 40, i8* %2) #5, !dbg !1369
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str49, i64 0, i64 0), i8* %infile) #6, !dbg !1370
  br label %sw.epilog, !dbg !1371

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb5, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end(i64 176, i8* %0) #5, !dbg !1372
  ret void, !dbg !1372
}

; Function Attrs: optsize
declare void @get_pdb_coordnum(%struct._IO_FILE*, i32*) #3

; Function Attrs: optsize
declare void @read_tpxheader(i8*, %struct.t_tpxheader*) #3

; Function Attrs: nounwind optsize uwtable
define void @read_stx_conf(i8* %infile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #0 {
entry:
  %ndec.i = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %fr = alloca %struct.t_trxframe, align 8
  %natoms = alloca i32, align 4
  %i1 = alloca i32, align 4
  %r1 = alloca float, align 4
  %r2 = alloca float, align 4
  call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !356), !dbg !1373
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !357), !dbg !1373
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !358), !dbg !1373
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !359), !dbg !1374
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !360), !dbg !1374
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !361), !dbg !1374
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !1375
  call void @llvm.lifetime.start(i64 256, i8* %0) #5, !dbg !1375
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !363), !dbg !1375
  %1 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !1376
  call void @llvm.lifetime.start(i64 176, i8* %1) #5, !dbg !1376
  call void @llvm.dbg.declare(metadata !{%struct.t_trxframe* %fr}, metadata !523), !dbg !1376
  call void @llvm.dbg.declare(metadata !{i32* %natoms}, metadata !526), !dbg !1377
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !527), !dbg !1377
  call void @llvm.dbg.declare(metadata !{float* %r1}, metadata !529), !dbg !1378
  call void @llvm.dbg.declare(metadata !{float* %r2}, metadata !530), !dbg !1378
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1379
  %2 = load i32* %nr, align 4, !dbg !1379, !tbaa !692
  %cmp = icmp eq i32 %2, 0, !dbg !1379
  br i1 %cmp, label %if.then, label %if.else, !dbg !1379

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !1380, !tbaa !681
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([37 x i8]* @.str50, i64 0, i64 0), i8* %infile) #6, !dbg !1380
  br label %if.end5, !dbg !1380

if.else:                                          ; preds = %entry
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !1381
  %4 = load %struct.t_atom** %atom, align 8, !dbg !1381, !tbaa !681
  %cmp1 = icmp eq %struct.t_atom* %4, null, !dbg !1381
  br i1 %cmp1, label %if.then2, label %if.end5, !dbg !1381

if.then2:                                         ; preds = %if.else
  %call3 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([35 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 890) #6, !dbg !1382
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* %0) #6, !dbg !1384
  br label %if.end5, !dbg !1385

if.end5:                                          ; preds = %if.else, %if.then2, %if.then
  %call6 = call i32 @fn2ftp(i8* %infile) #6, !dbg !1386
  call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !525), !dbg !1386
  switch i32 %call6, label %sw.default [
    i32 13, label %sw.bb
    i32 14, label %sw.bb7
    i32 15, label %sw.bb18
    i32 16, label %sw.bb18
    i32 17, label %sw.bb18
    i32 26, label %sw.bb19
    i32 28, label %sw.bb19
    i32 27, label %sw.bb19
  ], !dbg !1387

sw.bb:                                            ; preds = %if.end5
  %5 = bitcast i32* %ndec.i to i8*, !dbg !1388
  call void @llvm.lifetime.start(i64 4, i8* %5) #5, !dbg !1388
  call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !1391) #5, !dbg !1388
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !1392) #5, !dbg !1388
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !1393) #5, !dbg !1394
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !1395) #5, !dbg !1394
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !1396) #5, !dbg !1394
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1397) #5, !dbg !1394
  call void @llvm.dbg.declare(metadata !{i32* %ndec.i}, metadata !540) #5, !dbg !1398
  %call.i = call %struct._IO_FILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #6, !dbg !1399
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call.i}, i64 0, metadata !1400) #5, !dbg !1399
  %call1.i = call fastcc i32 @get_w_conf(%struct._IO_FILE* %call.i, i8* %infile, i8* %title, %struct.t_atoms* %atoms, i32* %ndec.i, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #6, !dbg !1401
  call void @ffclose(%struct._IO_FILE* %call.i) #6, !dbg !1402
  call void @llvm.lifetime.end(i64 4, i8* %5) #5, !dbg !1403
  br label %sw.epilog, !dbg !1404

sw.bb7:                                           ; preds = %if.end5
  %title8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !1405
  store i8* %title, i8** %title8, align 8, !dbg !1405, !tbaa !681
  %6 = load i32* %nr, align 4, !dbg !1406, !tbaa !692
  %natoms10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1406
  store i32 %6, i32* %natoms10, align 8, !dbg !1406, !tbaa !692
  %atoms11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !1407
  store %struct.t_atoms* %atoms, %struct.t_atoms** %atoms11, align 8, !dbg !1407, !tbaa !681
  %x12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1408
  store [3 x float]* %x, [3 x float]** %x12, align 8, !dbg !1408, !tbaa !681
  %v13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1409
  store [3 x float]* %v, [3 x float]** %v13, align 8, !dbg !1409, !tbaa !681
  %f = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23, !dbg !1410
  store [3 x float]* null, [3 x float]** %f, align 8, !dbg !1410, !tbaa !681
  %call14 = call %struct._IO_FILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #6, !dbg !1411
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call14}, i64 0, metadata !362), !dbg !1411
  %call15 = call i32 @read_g96_conf(%struct._IO_FILE* %call14, i8* %infile, %struct.t_trxframe* %fr) #9, !dbg !1412
  call void @ffclose(%struct._IO_FILE* %call14) #6, !dbg !1413
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1414), !dbg !1416
  %arraydecay.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0, !dbg !1417
  %arraydecay2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1417
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay.i}, i64 0, metadata !1418), !dbg !1419
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay2.i}, i64 0, metadata !1420), !dbg !1419
  %7 = load float* %arraydecay.i, align 4, !dbg !1421, !tbaa !739
  store float %7, float* %arraydecay2.i, align 4, !dbg !1421, !tbaa !739
  %arrayidx2.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1, !dbg !1422
  %8 = load float* %arrayidx2.i.i, align 4, !dbg !1422, !tbaa !739
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1422
  store float %8, float* %arrayidx3.i.i, align 4, !dbg !1422, !tbaa !739
  %arrayidx4.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2, !dbg !1423
  %9 = load float* %arrayidx4.i.i, align 4, !dbg !1423, !tbaa !739
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1423
  store float %9, float* %arrayidx5.i.i, align 4, !dbg !1423, !tbaa !739
  %arraydecay4.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0, !dbg !1424
  %arraydecay6.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1424
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay4.i}, i64 0, metadata !1425), !dbg !1426
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay6.i}, i64 0, metadata !1427), !dbg !1426
  %10 = load float* %arraydecay4.i, align 4, !dbg !1428, !tbaa !739
  store float %10, float* %arraydecay6.i, align 4, !dbg !1428, !tbaa !739
  %arrayidx2.i19.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !1429
  %11 = load float* %arrayidx2.i19.i, align 4, !dbg !1429, !tbaa !739
  %arrayidx3.i20.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1429
  store float %11, float* %arrayidx3.i20.i, align 4, !dbg !1429, !tbaa !739
  %arrayidx4.i21.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2, !dbg !1430
  %12 = load float* %arrayidx4.i21.i, align 4, !dbg !1430, !tbaa !739
  %arrayidx5.i22.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1430
  store float %12, float* %arrayidx5.i22.i, align 4, !dbg !1430, !tbaa !739
  %arraydecay8.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0, !dbg !1431
  %arraydecay10.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1431
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8.i}, i64 0, metadata !1432), !dbg !1433
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay10.i}, i64 0, metadata !1434), !dbg !1433
  %13 = load float* %arraydecay8.i, align 4, !dbg !1435, !tbaa !739
  store float %13, float* %arraydecay10.i, align 4, !dbg !1435, !tbaa !739
  %arrayidx2.i15.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1, !dbg !1436
  %14 = load float* %arrayidx2.i15.i, align 4, !dbg !1436, !tbaa !739
  %arrayidx3.i16.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1436
  store float %14, float* %arrayidx3.i16.i, align 4, !dbg !1436, !tbaa !739
  %arrayidx4.i17.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !1437
  %15 = load float* %arrayidx4.i17.i, align 4, !dbg !1437, !tbaa !739
  %arrayidx5.i18.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1437
  store float %15, float* %arrayidx5.i18.i, align 4, !dbg !1437, !tbaa !739
  br label %sw.epilog, !dbg !1438

sw.bb18:                                          ; preds = %if.end5, %if.end5, %if.end5
  call void @read_pdb_conf(i8* %infile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i32 1) #6, !dbg !1439
  br label %sw.epilog, !dbg !1440

sw.bb19:                                          ; preds = %if.end5, %if.end5, %if.end5
  %call20 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 918, i32 1, i32 50264) #6, !dbg !1441
  %16 = bitcast i8* %call20 to %struct.t_topology*, !dbg !1441
  call void @llvm.dbg.value(metadata !{%struct.t_topology* %16}, i64 0, metadata !365), !dbg !1441
  call void @read_tpx(i8* %infile, i32* %i1, float* %r1, float* %r2, %struct.t_inputrec* null, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* null, %struct.t_topology* %16) #6, !dbg !1442
  %name = bitcast i8* %call20 to i8***, !dbg !1443
  %17 = load i8*** %name, align 8, !dbg !1443, !tbaa !681
  %18 = load i8** %17, align 8, !dbg !1443, !tbaa !681
  %call21 = call i8* @strcpy(i8* %title, i8* %18) #6, !dbg !1443
  %atoms22 = getelementptr inbounds i8* %call20, i64 45800, !dbg !1444
  %nr23 = bitcast i8* %atoms22 to i32*, !dbg !1444
  %19 = load i32* %nr23, align 4, !dbg !1444, !tbaa !692
  store i32 %19, i32* %nr, align 4, !dbg !1444, !tbaa !692
  %nres = getelementptr inbounds i8* %call20, i64 45840, !dbg !1445
  %20 = bitcast i8* %nres to i32*, !dbg !1445
  %21 = load i32* %20, align 4, !dbg !1445, !tbaa !692
  %nres26 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !1445
  store i32 %21, i32* %nres26, align 4, !dbg !1445, !tbaa !692
  %ngrpname = getelementptr inbounds i8* %call20, i64 45856, !dbg !1446
  %22 = bitcast i8* %ngrpname to i32*, !dbg !1446
  %23 = load i32* %22, align 4, !dbg !1446, !tbaa !692
  %ngrpname28 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 7, !dbg !1446
  store i32 %23, i32* %ngrpname28, align 4, !dbg !1446, !tbaa !692
  %atom29 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !1447
  %24 = load %struct.t_atom** %atom29, align 8, !dbg !1447, !tbaa !681
  %tobool = icmp eq %struct.t_atom* %24, null, !dbg !1447
  br i1 %tobool, label %if.then30, label %if.end34, !dbg !1447

if.then30:                                        ; preds = %sw.bb19
  %call32 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 929, i32 %19, i32 40) #6, !dbg !1448
  %25 = bitcast i8* %call32 to %struct.t_atom*, !dbg !1448
  store %struct.t_atom* %25, %struct.t_atom** %atom29, align 8, !dbg !1448, !tbaa !681
  br label %if.end34, !dbg !1448

if.end34:                                         ; preds = %sw.bb19, %if.then30
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !1449
  %26 = load i8**** %atomname, align 8, !dbg !1449, !tbaa !681
  %tobool35 = icmp eq i8*** %26, null, !dbg !1449
  br i1 %tobool35, label %if.then36, label %for.cond.preheader, !dbg !1449

if.then36:                                        ; preds = %if.end34
  %27 = load i32* %nr, align 4, !dbg !1450, !tbaa !692
  %call38 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 931, i32 %27, i32 8) #6, !dbg !1450
  %28 = bitcast i8* %call38 to i8***, !dbg !1450
  store i8*** %28, i8**** %atomname, align 8, !dbg !1450, !tbaa !681
  br label %for.cond.preheader, !dbg !1450

for.cond.preheader:                               ; preds = %if.end34, %if.then36
  %29 = load i32* %nr, align 4, !dbg !1451, !tbaa !692
  %cmp42227 = icmp sgt i32 %29, 0, !dbg !1451
  br i1 %cmp42227, label %for.body.lr.ph, label %for.end, !dbg !1451

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %atom46 = getelementptr inbounds i8* %call20, i64 45808, !dbg !1453
  %30 = bitcast i8* %atom46 to %struct.t_atom**, !dbg !1453
  %atomname50 = getelementptr inbounds i8* %call20, i64 45816, !dbg !1455
  %31 = bitcast i8* %atomname50 to i8****, !dbg !1455
  br label %for.body, !dbg !1451

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv233 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next234, %for.body ]
  %32 = load %struct.t_atom** %atom29, align 8, !dbg !1453, !tbaa !681
  %arrayidx = getelementptr inbounds %struct.t_atom* %32, i64 %indvars.iv233, !dbg !1453
  %33 = load %struct.t_atom** %30, align 8, !dbg !1453, !tbaa !681
  %arrayidx47 = getelementptr inbounds %struct.t_atom* %33, i64 %indvars.iv233, !dbg !1453
  %34 = bitcast %struct.t_atom* %arrayidx to i8*, !dbg !1453
  %35 = bitcast %struct.t_atom* %arrayidx47 to i8*, !dbg !1453
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 40, i32 4, i1 false), !dbg !1453, !tbaa.struct !1456
  %36 = load i8**** %31, align 8, !dbg !1455, !tbaa !681
  %arrayidx51 = getelementptr inbounds i8*** %36, i64 %indvars.iv233, !dbg !1455
  %37 = load i8*** %arrayidx51, align 8, !dbg !1455, !tbaa !681
  %38 = load i8**** %atomname, align 8, !dbg !1455, !tbaa !681
  %arrayidx54 = getelementptr inbounds i8*** %38, i64 %indvars.iv233, !dbg !1455
  store i8** %37, i8*** %arrayidx54, align 8, !dbg !1455, !tbaa !681
  %indvars.iv.next234 = add i64 %indvars.iv233, 1, !dbg !1451
  %39 = load i32* %nr, align 4, !dbg !1451, !tbaa !692
  %40 = trunc i64 %indvars.iv.next234 to i32, !dbg !1451
  %cmp42 = icmp slt i32 %40, %39, !dbg !1451
  br i1 %cmp42, label %for.body, label %for.end, !dbg !1451

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !1458
  %41 = load i8**** %resname, align 8, !dbg !1458, !tbaa !681
  %tobool55 = icmp eq i8*** %41, null, !dbg !1458
  br i1 %tobool55, label %if.then56, label %for.cond61.preheader, !dbg !1458

if.then56:                                        ; preds = %for.end
  %42 = load i32* %nres26, align 4, !dbg !1459, !tbaa !692
  %call58 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 938, i32 %42, i32 8) #6, !dbg !1459
  %43 = bitcast i8* %call58 to i8***, !dbg !1459
  store i8*** %43, i8**** %resname, align 8, !dbg !1459, !tbaa !681
  br label %for.cond61.preheader, !dbg !1459

for.cond61.preheader:                             ; preds = %for.end, %if.then56
  %44 = phi i8*** [ %43, %if.then56 ], [ %41, %for.end ]
  %45 = load i32* %nres26, align 4, !dbg !1460, !tbaa !692
  %cmp63225 = icmp sgt i32 %45, 0, !dbg !1460
  br i1 %cmp63225, label %for.body64.lr.ph, label %for.end74, !dbg !1460

for.body64.lr.ph:                                 ; preds = %for.cond61.preheader
  %resname67 = getelementptr inbounds i8* %call20, i64 45848, !dbg !1462
  %46 = bitcast i8* %resname67 to i8****, !dbg !1462
  br label %for.body64, !dbg !1460

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %for.body64.lr.ph
  %47 = phi i8*** [ %44, %for.body64.lr.ph ], [ %.pre235, %for.body64.for.body64_crit_edge ]
  %indvars.iv231 = phi i64 [ 0, %for.body64.lr.ph ], [ %indvars.iv.next232, %for.body64.for.body64_crit_edge ]
  %48 = load i8**** %46, align 8, !dbg !1462, !tbaa !681
  %arrayidx68 = getelementptr inbounds i8*** %48, i64 %indvars.iv231, !dbg !1462
  %49 = load i8*** %arrayidx68, align 8, !dbg !1462, !tbaa !681
  %arrayidx71 = getelementptr inbounds i8*** %47, i64 %indvars.iv231, !dbg !1462
  store i8** %49, i8*** %arrayidx71, align 8, !dbg !1462, !tbaa !681
  %indvars.iv.next232 = add i64 %indvars.iv231, 1, !dbg !1460
  %50 = trunc i64 %indvars.iv.next232 to i32, !dbg !1460
  %cmp63 = icmp slt i32 %50, %45, !dbg !1460
  br i1 %cmp63, label %for.body64.for.body64_crit_edge, label %for.end74, !dbg !1460

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  %.pre235 = load i8**** %resname, align 8, !dbg !1462, !tbaa !681
  br label %for.body64, !dbg !1460

for.end74:                                        ; preds = %for.body64, %for.cond61.preheader
  %grpname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8, !dbg !1463
  %51 = load i8**** %grpname, align 8, !dbg !1463, !tbaa !681
  %tobool75 = icmp eq i8*** %51, null, !dbg !1463
  br i1 %tobool75, label %if.then76, label %for.cond81.preheader, !dbg !1463

if.then76:                                        ; preds = %for.end74
  %52 = load i32* %ngrpname28, align 4, !dbg !1464, !tbaa !692
  %call78 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 943, i32 %52, i32 8) #6, !dbg !1464
  %53 = bitcast i8* %call78 to i8***, !dbg !1464
  store i8*** %53, i8**** %grpname, align 8, !dbg !1464, !tbaa !681
  br label %for.cond81.preheader, !dbg !1464

for.cond81.preheader:                             ; preds = %for.end74, %if.then76
  %54 = phi i8*** [ %53, %if.then76 ], [ %51, %for.end74 ]
  %55 = load i32* %ngrpname28, align 4, !dbg !1465, !tbaa !692
  %cmp83223 = icmp sgt i32 %55, 0, !dbg !1465
  br i1 %cmp83223, label %for.body84.lr.ph, label %for.cond95.preheader, !dbg !1465

for.body84.lr.ph:                                 ; preds = %for.cond81.preheader
  %grpname87 = getelementptr inbounds i8* %call20, i64 45864, !dbg !1467
  %56 = bitcast i8* %grpname87 to i8****, !dbg !1467
  br label %for.body84, !dbg !1465

for.cond95.preheader:                             ; preds = %for.body84, %for.cond81.preheader
  %grps = getelementptr inbounds i8* %call20, i64 46928, !dbg !1468
  %57 = bitcast i8* %grps to [9 x %struct.t_grps]*, !dbg !1468
  br label %for.body97, !dbg !1471

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %for.body84.lr.ph
  %58 = phi i8*** [ %54, %for.body84.lr.ph ], [ %.pre, %for.body84.for.body84_crit_edge ]
  %indvars.iv229 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next230, %for.body84.for.body84_crit_edge ]
  %59 = load i8**** %56, align 8, !dbg !1467, !tbaa !681
  %arrayidx88 = getelementptr inbounds i8*** %59, i64 %indvars.iv229, !dbg !1467
  %60 = load i8*** %arrayidx88, align 8, !dbg !1467, !tbaa !681
  %arrayidx91 = getelementptr inbounds i8*** %58, i64 %indvars.iv229, !dbg !1467
  store i8** %60, i8*** %arrayidx91, align 8, !dbg !1467, !tbaa !681
  %indvars.iv.next230 = add i64 %indvars.iv229, 1, !dbg !1465
  %61 = trunc i64 %indvars.iv.next230 to i32, !dbg !1465
  %cmp83 = icmp slt i32 %61, %55, !dbg !1465
  br i1 %cmp83, label %for.body84.for.body84_crit_edge, label %for.cond95.preheader, !dbg !1465

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  %.pre = load i8**** %grpname, align 8, !dbg !1467, !tbaa !681
  br label %for.body84, !dbg !1465

for.body97:                                       ; preds = %for.inc134, %for.cond95.preheader
  %indvars.iv = phi i64 [ 0, %for.cond95.preheader ], [ %indvars.iv.next, %for.inc134 ]
  %nr101 = getelementptr inbounds [9 x %struct.t_grps]* %57, i64 0, i64 %indvars.iv, i32 0, !dbg !1468
  %62 = load i32* %nr101, align 4, !dbg !1468, !tbaa !692
  %nr105 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 %indvars.iv, i32 0, !dbg !1468
  store i32 %62, i32* %nr105, align 4, !dbg !1468, !tbaa !692
  %cmp110 = icmp sgt i32 %62, 0, !dbg !1472
  br i1 %cmp110, label %if.then111, label %for.inc134, !dbg !1472

if.then111:                                       ; preds = %for.body97
  %call116 = call i8* @save_calloc(i8* getelementptr inbounds ([22 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 950, i32 %62, i32 4) #6, !dbg !1473
  %63 = bitcast i8* %call116 to i32*, !dbg !1473
  %nm_ind = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 %indvars.iv, i32 1, !dbg !1473
  store i32* %63, i32** %nm_ind, align 8, !dbg !1473, !tbaa !681
  %nm_ind128 = getelementptr inbounds [9 x %struct.t_grps]* %57, i64 0, i64 %indvars.iv, i32 1, !dbg !1475
  %64 = load i32** %nm_ind128, align 8, !dbg !1475, !tbaa !681
  %65 = bitcast i32* %64 to i8*, !dbg !1475
  %66 = load i32* %nr105, align 4, !dbg !1475, !tbaa !692
  %conv = sext i32 %66 to i64, !dbg !1475
  %mul = shl nsw i64 %conv, 2, !dbg !1475
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call116, i8* %65, i64 %mul, i32 4, i1 false), !dbg !1475
  br label %for.inc134, !dbg !1476

for.inc134:                                       ; preds = %for.body97, %if.then111
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1471
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1471
  %exitcond = icmp eq i32 %lftr.wideiv, 9, !dbg !1471
  br i1 %exitcond, label %sw.epilog, label %for.body97, !dbg !1471

sw.default:                                       ; preds = %if.end5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str58, i64 0, i64 0), i8* %infile) #6, !dbg !1477
  br label %sw.epilog, !dbg !1478

sw.epilog:                                        ; preds = %for.inc134, %sw.default, %sw.bb18, %sw.bb7, %sw.bb
  call void @llvm.lifetime.end(i64 176, i8* %1) #5, !dbg !1479
  call void @llvm.lifetime.end(i64 256, i8* %0) #5, !dbg !1479
  ret void, !dbg !1479
}

; Function Attrs: optsize
declare void @read_pdb_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i32) #3

; Function Attrs: optsize
declare void @read_tpx(i8*, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: optsize
declare void @_unexpected_eof(i8*, i32, i8*, i32) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: optsize
declare i8** @put_symtab(%struct.t_symtab*, i8*) #3

; Function Attrs: optsize
declare void @_too_few(i8*, i32) #3

; Function Attrs: optsize
declare void @warning(i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !16, metadata !17, metadata !671, metadata !16, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 41, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 41, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15}
!6 = metadata !{i32 786472, metadata !"egcTC", i64 0} ; [ DW_TAG_enumerator ] [egcTC :: 0]
!7 = metadata !{i32 786472, metadata !"egcENER", i64 1} ; [ DW_TAG_enumerator ] [egcENER :: 1]
!8 = metadata !{i32 786472, metadata !"egcACC", i64 2} ; [ DW_TAG_enumerator ] [egcACC :: 2]
!9 = metadata !{i32 786472, metadata !"egcFREEZE", i64 3} ; [ DW_TAG_enumerator ] [egcFREEZE :: 3]
!10 = metadata !{i32 786472, metadata !"egcUser1", i64 4} ; [ DW_TAG_enumerator ] [egcUser1 :: 4]
!11 = metadata !{i32 786472, metadata !"egcUser2", i64 5} ; [ DW_TAG_enumerator ] [egcUser2 :: 5]
!12 = metadata !{i32 786472, metadata !"egcVCM", i64 6} ; [ DW_TAG_enumerator ] [egcVCM :: 6]
!13 = metadata !{i32 786472, metadata !"egcXTC", i64 7} ; [ DW_TAG_enumerator ] [egcXTC :: 7]
!14 = metadata !{i32 786472, metadata !"egcORFIT", i64 8} ; [ DW_TAG_enumerator ] [egcORFIT :: 8]
!15 = metadata !{i32 786472, metadata !"egcNR", i64 9} ; [ DW_TAG_enumerator ] [egcNR :: 9]
!16 = metadata !{i32 0}
!17 = metadata !{metadata !18, metadata !218, metadata !230, metadata !245, metadata !250, metadata !275, metadata !288, metadata !300, metadata !315, metadata !328, metadata !354, metadata !531, metadata !541, metadata !547, metadata !555, metadata !563, metadata !572, metadata !584, metadata !622, metadata !629, metadata !645}
!18 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"read_g96_conf", metadata !"read_g96_conf", metadata !"", i32 177, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i8*, %struct.t_trxframe*)* @read_g96_conf, null, null, metadata !194, i32 178} ; [ DW_TAG_subprogram ] [line 177] [def] [scope 178] [read_g96_conf]
!19 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{metadata !22, metadata !23, metadata !30, metadata !80}
!22 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!24 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!25 = metadata !{i32 786451, metadata !26, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!26 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!27 = metadata !{metadata !28, metadata !29, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !50, metadata !51, metadata !52, metadata !53, metadata !56, metadata !58, metadata !60, metadata !64, metadata !66, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !75, metadata !76}
!28 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!29 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!31 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!32 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!33 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!34 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!35 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!36 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!37 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!38 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!39 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!40 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!41 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!42 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !43} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!44 = metadata !{i32 786451, metadata !26, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !45, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!45 = metadata !{metadata !46, metadata !47, metadata !49}
!46 = metadata !{i32 786445, metadata !26, metadata !44, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!47 = metadata !{i32 786445, metadata !26, metadata !44, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !48} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!49 = metadata !{i32 786445, metadata !26, metadata !44, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!50 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !48} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!51 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!52 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !22} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!53 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !54} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!54 = metadata !{i32 786454, metadata !26, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!55 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!56 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !57} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!57 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!58 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !59} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!59 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!60 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !61} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!61 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !31, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!64 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !65} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!66 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !67} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!67 = metadata !{i32 786454, metadata !26, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!68 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!69 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!70 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!71 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!72 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!73 = metadata !{i32 786454, metadata !26, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!74 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!75 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !22} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!76 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !77} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!77 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !31, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_trxframe]
!81 = metadata !{i32 786454, metadata !1, null, metadata !"t_trxframe", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [t_trxframe] [line 72, size 0, align 0, offset 0] [from ]
!82 = metadata !{i32 786451, metadata !83, null, metadata !"", i32 40, i64 1408, i64 64, i32 0, i32 0, null, metadata !84, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 1408, align 64, offset 0] [from ]
!83 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/trx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !176, metadata !177, metadata !178, metadata !179, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190}
!85 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"flags", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [flags] [line 42, size 32, align 32, offset 0] [from int]
!86 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"not_ok", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [not_ok] [line 43, size 32, align 32, offset 32] [from int]
!87 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"natoms", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [natoms] [line 44, size 32, align 32, offset 64] [from int]
!88 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"t0", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !89} ; [ DW_TAG_member ] [t0] [line 45, size 32, align 32, offset 96] [from real]
!89 = metadata !{i32 786454, metadata !83, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!90 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!91 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"tpf", i32 47, i64 32, i64 32, i64 128, i32 0, metadata !89} ; [ DW_TAG_member ] [tpf] [line 47, size 32, align 32, offset 128] [from real]
!92 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"tppf", i32 49, i64 32, i64 32, i64 160, i32 0, metadata !89} ; [ DW_TAG_member ] [tppf] [line 49, size 32, align 32, offset 160] [from real]
!93 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"bTitle", i32 52, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [bTitle] [line 52, size 32, align 32, offset 192] [from int]
!94 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"title", i32 53, i64 64, i64 64, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [title] [line 53, size 64, align 64, offset 256] [from ]
!95 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"bStep", i32 54, i64 32, i64 32, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [bStep] [line 54, size 32, align 32, offset 320] [from int]
!96 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"step", i32 55, i64 32, i64 32, i64 352, i32 0, metadata !22} ; [ DW_TAG_member ] [step] [line 55, size 32, align 32, offset 352] [from int]
!97 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"bTime", i32 56, i64 32, i64 32, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ] [bTime] [line 56, size 32, align 32, offset 384] [from int]
!98 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"time", i32 57, i64 32, i64 32, i64 416, i32 0, metadata !89} ; [ DW_TAG_member ] [time] [line 57, size 32, align 32, offset 416] [from real]
!99 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"bLambda", i32 58, i64 32, i64 32, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [bLambda] [line 58, size 32, align 32, offset 448] [from int]
!100 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"lambda", i32 59, i64 32, i64 32, i64 480, i32 0, metadata !89} ; [ DW_TAG_member ] [lambda] [line 59, size 32, align 32, offset 480] [from real]
!101 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"bAtoms", i32 60, i64 32, i64 32, i64 512, i32 0, metadata !22} ; [ DW_TAG_member ] [bAtoms] [line 60, size 32, align 32, offset 512] [from int]
!102 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"atoms", i32 61, i64 64, i64 64, i64 576, i32 0, metadata !103} ; [ DW_TAG_member ] [atoms] [line 61, size 64, align 64, offset 576] [from ]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!104 = metadata !{i32 786454, metadata !83, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !105} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!105 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !106, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!106 = metadata !{metadata !107, metadata !108, metadata !127, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !151, metadata !159}
!107 = metadata !{i32 786445, metadata !4, metadata !105, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!108 = metadata !{i32 786445, metadata !4, metadata !105, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !109} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!109 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!110 = metadata !{i32 786454, metadata !4, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!111 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !112, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!112 = metadata !{metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !126}
!113 = metadata !{i32 786445, metadata !4, metadata !111, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!114 = metadata !{i32 786445, metadata !4, metadata !111, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!115 = metadata !{i32 786445, metadata !4, metadata !111, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!116 = metadata !{i32 786445, metadata !4, metadata !111, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !89} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!117 = metadata !{i32 786445, metadata !4, metadata !111, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !57} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!118 = metadata !{i32 786445, metadata !4, metadata !111, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !57} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!119 = metadata !{i32 786445, metadata !4, metadata !111, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !22} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!120 = metadata !{i32 786445, metadata !4, metadata !111, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!121 = metadata !{i32 786445, metadata !4, metadata !111, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !122} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!122 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !123, metadata !124, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!123 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!124 = metadata !{metadata !125}
!125 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!126 = metadata !{i32 786445, metadata !4, metadata !111, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !123} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!127 = metadata !{i32 786445, metadata !4, metadata !105, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !128} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!130 = metadata !{i32 786445, metadata !4, metadata !105, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !128} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!131 = metadata !{i32 786445, metadata !4, metadata !105, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !128} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!132 = metadata !{i32 786445, metadata !4, metadata !105, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!133 = metadata !{i32 786445, metadata !4, metadata !105, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !128} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!134 = metadata !{i32 786445, metadata !4, metadata !105, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!135 = metadata !{i32 786445, metadata !4, metadata !105, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !128} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!136 = metadata !{i32 786445, metadata !4, metadata !105, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !137} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!137 = metadata !{i32 786454, metadata !4, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!138 = metadata !{i32 786451, metadata !139, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !140, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!139 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!140 = metadata !{metadata !141, metadata !145, metadata !146, metadata !149, metadata !150}
!141 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!142 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !22, metadata !143, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!143 = metadata !{metadata !144}
!144 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!145 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !22} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!146 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !147} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!147 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!148 = metadata !{i32 786454, metadata !139, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!149 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !22} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!150 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !147} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!151 = metadata !{i32 786445, metadata !4, metadata !105, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !152} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!152 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !153, metadata !124, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!153 = metadata !{i32 786454, metadata !4, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!154 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !155, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!155 = metadata !{metadata !156, metadata !157}
!156 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!157 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !158} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!158 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!159 = metadata !{i32 786445, metadata !4, metadata !105, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !160} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!160 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!161 = metadata !{i32 786454, metadata !4, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !162} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!162 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !163, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!163 = metadata !{metadata !164, metadata !165, metadata !166, metadata !167, metadata !171, metadata !172, metadata !173, metadata !174}
!164 = metadata !{i32 786445, metadata !4, metadata !162, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!165 = metadata !{i32 786445, metadata !4, metadata !162, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!166 = metadata !{i32 786445, metadata !4, metadata !162, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!167 = metadata !{i32 786445, metadata !4, metadata !162, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !168} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!168 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !31, metadata !169, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!169 = metadata !{metadata !170}
!170 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!171 = metadata !{i32 786445, metadata !4, metadata !162, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !89} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!172 = metadata !{i32 786445, metadata !4, metadata !162, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !89} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!173 = metadata !{i32 786445, metadata !4, metadata !162, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!174 = metadata !{i32 786445, metadata !4, metadata !162, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !175} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!175 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !22, metadata !169, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!176 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"bPrec", i32 62, i64 32, i64 32, i64 640, i32 0, metadata !22} ; [ DW_TAG_member ] [bPrec] [line 62, size 32, align 32, offset 640] [from int]
!177 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"prec", i32 63, i64 32, i64 32, i64 672, i32 0, metadata !89} ; [ DW_TAG_member ] [prec] [line 63, size 32, align 32, offset 672] [from real]
!178 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"bX", i32 64, i64 32, i64 32, i64 704, i32 0, metadata !22} ; [ DW_TAG_member ] [bX] [line 64, size 32, align 32, offset 704] [from int]
!179 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"x", i32 65, i64 64, i64 64, i64 768, i32 0, metadata !180} ; [ DW_TAG_member ] [x] [line 65, size 64, align 64, offset 768] [from ]
!180 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!181 = metadata !{i32 786454, metadata !83, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !182} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!182 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !89, metadata !183, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!183 = metadata !{metadata !184}
!184 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!185 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"bV", i32 66, i64 32, i64 32, i64 832, i32 0, metadata !22} ; [ DW_TAG_member ] [bV] [line 66, size 32, align 32, offset 832] [from int]
!186 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"v", i32 67, i64 64, i64 64, i64 896, i32 0, metadata !180} ; [ DW_TAG_member ] [v] [line 67, size 64, align 64, offset 896] [from ]
!187 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"bF", i32 68, i64 32, i64 32, i64 960, i32 0, metadata !22} ; [ DW_TAG_member ] [bF] [line 68, size 32, align 32, offset 960] [from int]
!188 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"f", i32 69, i64 64, i64 64, i64 1024, i32 0, metadata !180} ; [ DW_TAG_member ] [f] [line 69, size 64, align 64, offset 1024] [from ]
!189 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"bBox", i32 70, i64 32, i64 32, i64 1088, i32 0, metadata !22} ; [ DW_TAG_member ] [bBox] [line 70, size 32, align 32, offset 1088] [from int]
!190 = metadata !{i32 786445, metadata !83, metadata !82, metadata !"box", i32 71, i64 288, i64 32, i64 1120, i32 0, metadata !191} ; [ DW_TAG_member ] [box] [line 71, size 288, align 32, offset 1120] [from matrix]
!191 = metadata !{i32 786454, metadata !83, null, metadata !"matrix", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !192} ; [ DW_TAG_typedef ] [matrix] [line 103, size 0, align 0, offset 0] [from ]
!192 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !89, metadata !193, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!193 = metadata !{metadata !184, metadata !184}
!194 = metadata !{metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217}
!195 = metadata !{i32 786689, metadata !18, metadata !"fp", metadata !19, i32 16777393, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 177]
!196 = metadata !{i32 786689, metadata !18, metadata !"infile", metadata !19, i32 33554609, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [infile] [line 177]
!197 = metadata !{i32 786689, metadata !18, metadata !"fr", metadata !19, i32 50331825, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 177]
!198 = metadata !{i32 786688, metadata !18, metadata !"bAtStart", metadata !19, i32 182, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bAtStart] [line 182]
!199 = metadata !{i32 786688, metadata !18, metadata !"bTime", metadata !19, i32 182, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bTime] [line 182]
!200 = metadata !{i32 786688, metadata !18, metadata !"bAtoms", metadata !19, i32 182, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bAtoms] [line 182]
!201 = metadata !{i32 786688, metadata !18, metadata !"bPos", metadata !19, i32 182, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bPos] [line 182]
!202 = metadata !{i32 786688, metadata !18, metadata !"bVel", metadata !19, i32 182, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bVel] [line 182]
!203 = metadata !{i32 786688, metadata !18, metadata !"bBox", metadata !19, i32 182, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bBox] [line 182]
!204 = metadata !{i32 786688, metadata !18, metadata !"bEnd", metadata !19, i32 182, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bEnd] [line 182]
!205 = metadata !{i32 786688, metadata !18, metadata !"bFinished", metadata !19, i32 182, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bFinished] [line 182]
!206 = metadata !{i32 786688, metadata !18, metadata !"natoms", metadata !19, i32 183, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [natoms] [line 183]
!207 = metadata !{i32 786688, metadata !18, metadata !"nbp", metadata !19, i32 183, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbp] [line 183]
!208 = metadata !{i32 786688, metadata !18, metadata !"db1", metadata !19, i32 184, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db1] [line 184]
!209 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!210 = metadata !{i32 786688, metadata !18, metadata !"db2", metadata !19, i32 184, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db2] [line 184]
!211 = metadata !{i32 786688, metadata !18, metadata !"db3", metadata !19, i32 184, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db3] [line 184]
!212 = metadata !{i32 786688, metadata !18, metadata !"db4", metadata !19, i32 184, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db4] [line 184]
!213 = metadata !{i32 786688, metadata !18, metadata !"db5", metadata !19, i32 184, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db5] [line 184]
!214 = metadata !{i32 786688, metadata !18, metadata !"db6", metadata !19, i32 184, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db6] [line 184]
!215 = metadata !{i32 786688, metadata !18, metadata !"db7", metadata !19, i32 184, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db7] [line 184]
!216 = metadata !{i32 786688, metadata !18, metadata !"db8", metadata !19, i32 184, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db8] [line 184]
!217 = metadata !{i32 786688, metadata !18, metadata !"db9", metadata !19, i32 184, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db9] [line 184]
!218 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"write_g96_conf", metadata !"write_g96_conf", metadata !"", i32 278, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_trxframe*, i32, i32*)* @write_g96_conf, null, null, metadata !221, i32 280} ; [ DW_TAG_subprogram ] [line 278] [def] [scope 280] [write_g96_conf]
!219 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!220 = metadata !{null, metadata !23, metadata !80, metadata !22, metadata !147}
!221 = metadata !{metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229}
!222 = metadata !{i32 786689, metadata !218, metadata !"out", metadata !19, i32 16777494, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 278]
!223 = metadata !{i32 786689, metadata !218, metadata !"fr", metadata !19, i32 33554710, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 278]
!224 = metadata !{i32 786689, metadata !218, metadata !"nindex", metadata !19, i32 50331927, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nindex] [line 279]
!225 = metadata !{i32 786689, metadata !218, metadata !"index", metadata !19, i32 67109143, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 279]
!226 = metadata !{i32 786688, metadata !218, metadata !"atoms", metadata !19, i32 281, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atoms] [line 281]
!227 = metadata !{i32 786688, metadata !218, metadata !"nout", metadata !19, i32 282, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nout] [line 282]
!228 = metadata !{i32 786688, metadata !218, metadata !"i", metadata !19, i32 282, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 282]
!229 = metadata !{i32 786688, metadata !218, metadata !"a", metadata !19, i32 282, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 282]
!230 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"gro_next_x_or_v", metadata !"gro_next_x_or_v", metadata !"", i32 565, metadata !231, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, %struct.t_trxframe*)* @gro_next_x_or_v, null, null, metadata !233, i32 566} ; [ DW_TAG_subprogram ] [line 565] [def] [scope 566] [gro_next_x_or_v]
!231 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!232 = metadata !{metadata !22, metadata !23, metadata !80}
!233 = metadata !{metadata !234, metadata !235, metadata !236, metadata !237, metadata !241, metadata !242, metadata !243, metadata !244}
!234 = metadata !{i32 786689, metadata !230, metadata !"status", metadata !19, i32 16777781, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 565]
!235 = metadata !{i32 786689, metadata !230, metadata !"fr", metadata !19, i32 33554997, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 565]
!236 = metadata !{i32 786688, metadata !230, metadata !"atoms", metadata !19, i32 567, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atoms] [line 567]
!237 = metadata !{i32 786688, metadata !230, metadata !"title", metadata !19, i32 568, metadata !238, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [title] [line 568]
!238 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !31, metadata !239, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!239 = metadata !{metadata !240}
!240 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!241 = metadata !{i32 786688, metadata !230, metadata !"p", metadata !19, i32 568, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 568]
!242 = metadata !{i32 786688, metadata !230, metadata !"tt", metadata !19, i32 569, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tt] [line 569]
!243 = metadata !{i32 786688, metadata !230, metadata !"ndec", metadata !19, i32 570, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndec] [line 570]
!244 = metadata !{i32 786688, metadata !230, metadata !"i", metadata !19, i32 570, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 570]
!245 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"gro_first_x_or_v", metadata !"gro_first_x_or_v", metadata !"", i32 613, metadata !231, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, %struct.t_trxframe*)* @gro_first_x_or_v, null, null, metadata !246, i32 614} ; [ DW_TAG_subprogram ] [line 613] [def] [scope 614] [gro_first_x_or_v]
!246 = metadata !{metadata !247, metadata !248, metadata !249}
!247 = metadata !{i32 786689, metadata !245, metadata !"status", metadata !19, i32 16777829, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 613]
!248 = metadata !{i32 786689, metadata !245, metadata !"fr", metadata !19, i32 33555045, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 613]
!249 = metadata !{i32 786688, metadata !245, metadata !"title", metadata !19, i32 615, metadata !238, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [title] [line 615]
!250 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"write_hconf_indexed_p", metadata !"write_hconf_indexed_p", metadata !"", i32 634, metadata !251, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, %struct.t_atoms*, i32, i32*, i32, [3 x float]*, [3 x float]*, [3 x float]*)* @write_hconf_indexed_p, null, null, metadata !254, i32 637} ; [ DW_TAG_subprogram ] [line 634] [def] [scope 637] [write_hconf_indexed_p]
!251 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!252 = metadata !{null, metadata !23, metadata !30, metadata !103, metadata !22, metadata !147, metadata !22, metadata !180, metadata !180, metadata !253}
!253 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !182} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!254 = metadata !{metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274}
!255 = metadata !{i32 786689, metadata !250, metadata !"out", metadata !19, i32 16777850, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 634]
!256 = metadata !{i32 786689, metadata !250, metadata !"title", metadata !19, i32 33555066, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 634]
!257 = metadata !{i32 786689, metadata !250, metadata !"atoms", metadata !19, i32 50332282, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 634]
!258 = metadata !{i32 786689, metadata !250, metadata !"nx", metadata !19, i32 67109499, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 635]
!259 = metadata !{i32 786689, metadata !250, metadata !"index", metadata !19, i32 83886715, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 635]
!260 = metadata !{i32 786689, metadata !250, metadata !"pr", metadata !19, i32 100663931, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pr] [line 635]
!261 = metadata !{i32 786689, metadata !250, metadata !"x", metadata !19, i32 117441148, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 636]
!262 = metadata !{i32 786689, metadata !250, metadata !"v", metadata !19, i32 134218364, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 636]
!263 = metadata !{i32 786689, metadata !250, metadata !"box", metadata !19, i32 150995580, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 636]
!264 = metadata !{i32 786688, metadata !250, metadata !"resnm", metadata !19, i32 638, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resnm] [line 638]
!265 = metadata !{i32 786688, metadata !250, metadata !"nm", metadata !19, i32 638, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nm] [line 638]
!266 = metadata !{i32 786688, metadata !250, metadata !"format", metadata !19, i32 638, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [format] [line 638]
!267 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800, i64 8, i32 0, i32 0, metadata !31, metadata !268, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 800, align 8, offset 0] [from char]
!268 = metadata !{metadata !269}
!269 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!270 = metadata !{i32 786688, metadata !250, metadata !"ai", metadata !19, i32 639, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 639]
!271 = metadata !{i32 786688, metadata !250, metadata !"i", metadata !19, i32 639, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 639]
!272 = metadata !{i32 786688, metadata !250, metadata !"resnr", metadata !19, i32 639, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resnr] [line 639]
!273 = metadata !{i32 786688, metadata !250, metadata !"l", metadata !19, i32 639, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 639]
!274 = metadata !{i32 786688, metadata !250, metadata !"vpr", metadata !19, i32 639, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vpr] [line 639]
!275 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"write_hconf_p", metadata !"write_hconf_p", metadata !"", i32 706, metadata !276, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, %struct.t_atoms*, i32, [3 x float]*, [3 x float]*, [3 x float]*)* @write_hconf_p, null, null, metadata !278, i32 708} ; [ DW_TAG_subprogram ] [line 706] [def] [scope 708] [write_hconf_p]
!276 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!277 = metadata !{null, metadata !23, metadata !30, metadata !103, metadata !22, metadata !180, metadata !180, metadata !253}
!278 = metadata !{metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287}
!279 = metadata !{i32 786689, metadata !275, metadata !"out", metadata !19, i32 16777922, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 706]
!280 = metadata !{i32 786689, metadata !275, metadata !"title", metadata !19, i32 33555138, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 706]
!281 = metadata !{i32 786689, metadata !275, metadata !"atoms", metadata !19, i32 50332354, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 706]
!282 = metadata !{i32 786689, metadata !275, metadata !"pr", metadata !19, i32 67109570, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pr] [line 706]
!283 = metadata !{i32 786689, metadata !275, metadata !"x", metadata !19, i32 83886787, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 707]
!284 = metadata !{i32 786689, metadata !275, metadata !"v", metadata !19, i32 100664003, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 707]
!285 = metadata !{i32 786689, metadata !275, metadata !"box", metadata !19, i32 117441219, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 707]
!286 = metadata !{i32 786688, metadata !275, metadata !"aa", metadata !19, i32 709, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aa] [line 709]
!287 = metadata !{i32 786688, metadata !275, metadata !"i", metadata !19, i32 710, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 710]
!288 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"write_conf_p", metadata !"write_conf_p", metadata !"", i32 719, metadata !289, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, %struct.t_atoms*, i32, [3 x float]*, [3 x float]*, [3 x float]*)* @write_conf_p, null, null, metadata !291, i32 721} ; [ DW_TAG_subprogram ] [line 719] [def] [scope 721] [write_conf_p]
!289 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !290, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!290 = metadata !{null, metadata !30, metadata !30, metadata !103, metadata !22, metadata !180, metadata !180, metadata !253}
!291 = metadata !{metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299}
!292 = metadata !{i32 786689, metadata !288, metadata !"outfile", metadata !19, i32 16777935, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outfile] [line 719]
!293 = metadata !{i32 786689, metadata !288, metadata !"title", metadata !19, i32 33555151, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 719]
!294 = metadata !{i32 786689, metadata !288, metadata !"atoms", metadata !19, i32 50332367, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 719]
!295 = metadata !{i32 786689, metadata !288, metadata !"pr", metadata !19, i32 67109583, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pr] [line 719]
!296 = metadata !{i32 786689, metadata !288, metadata !"x", metadata !19, i32 83886800, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 720]
!297 = metadata !{i32 786689, metadata !288, metadata !"v", metadata !19, i32 100664016, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 720]
!298 = metadata !{i32 786689, metadata !288, metadata !"box", metadata !19, i32 117441232, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 720]
!299 = metadata !{i32 786688, metadata !288, metadata !"out", metadata !19, i32 722, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out] [line 722]
!300 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"write_sto_conf_indexed", metadata !"write_sto_conf_indexed", metadata !"", i32 736, metadata !301, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*, i32, i32*)* @write_sto_conf_indexed, null, null, metadata !303, i32 739} ; [ DW_TAG_subprogram ] [line 736] [def] [scope 739] [write_sto_conf_indexed]
!301 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!302 = metadata !{null, metadata !30, metadata !30, metadata !103, metadata !180, metadata !180, metadata !253, metadata !148, metadata !147}
!303 = metadata !{metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314}
!304 = metadata !{i32 786689, metadata !300, metadata !"outfile", metadata !19, i32 16777952, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outfile] [line 736]
!305 = metadata !{i32 786689, metadata !300, metadata !"title", metadata !19, i32 33555168, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 736]
!306 = metadata !{i32 786689, metadata !300, metadata !"atoms", metadata !19, i32 50332384, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 736]
!307 = metadata !{i32 786689, metadata !300, metadata !"x", metadata !19, i32 67109601, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 737]
!308 = metadata !{i32 786689, metadata !300, metadata !"v", metadata !19, i32 83886817, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 737]
!309 = metadata !{i32 786689, metadata !300, metadata !"box", metadata !19, i32 100664033, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 737]
!310 = metadata !{i32 786689, metadata !300, metadata !"nindex", metadata !19, i32 117441250, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nindex] [line 738]
!311 = metadata !{i32 786689, metadata !300, metadata !"index", metadata !19, i32 134218466, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 738]
!312 = metadata !{i32 786688, metadata !300, metadata !"out", metadata !19, i32 740, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out] [line 740]
!313 = metadata !{i32 786688, metadata !300, metadata !"ftp", metadata !19, i32 741, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ftp] [line 741]
!314 = metadata !{i32 786688, metadata !300, metadata !"fr", metadata !19, i32 742, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fr] [line 742]
!315 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"write_sto_conf", metadata !"write_sto_conf", metadata !"", i32 787, metadata !316, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*)* @write_sto_conf, null, null, metadata !318, i32 789} ; [ DW_TAG_subprogram ] [line 787] [def] [scope 789] [write_sto_conf]
!316 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !317, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!317 = metadata !{null, metadata !30, metadata !30, metadata !103, metadata !180, metadata !180, metadata !253}
!318 = metadata !{metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327}
!319 = metadata !{i32 786689, metadata !315, metadata !"outfile", metadata !19, i32 16778003, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outfile] [line 787]
!320 = metadata !{i32 786689, metadata !315, metadata !"title", metadata !19, i32 33555219, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 787]
!321 = metadata !{i32 786689, metadata !315, metadata !"atoms", metadata !19, i32 50332435, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 787]
!322 = metadata !{i32 786689, metadata !315, metadata !"x", metadata !19, i32 67109652, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 788]
!323 = metadata !{i32 786689, metadata !315, metadata !"v", metadata !19, i32 83886868, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 788]
!324 = metadata !{i32 786689, metadata !315, metadata !"box", metadata !19, i32 100664084, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 788]
!325 = metadata !{i32 786688, metadata !315, metadata !"out", metadata !19, i32 790, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out] [line 790]
!326 = metadata !{i32 786688, metadata !315, metadata !"ftp", metadata !19, i32 791, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ftp] [line 791]
!327 = metadata !{i32 786688, metadata !315, metadata !"fr", metadata !19, i32 792, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fr] [line 792]
!328 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"get_stx_coordnum", metadata !"get_stx_coordnum", metadata !"", i32 835, metadata !329, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32*)* @get_stx_coordnum, null, null, metadata !331, i32 836} ; [ DW_TAG_subprogram ] [line 835] [def] [scope 836] [get_stx_coordnum]
!329 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!330 = metadata !{null, metadata !30, metadata !158}
!331 = metadata !{metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337}
!332 = metadata !{i32 786689, metadata !328, metadata !"infile", metadata !19, i32 16778051, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [infile] [line 835]
!333 = metadata !{i32 786689, metadata !328, metadata !"natoms", metadata !19, i32 33555267, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 835]
!334 = metadata !{i32 786688, metadata !328, metadata !"in", metadata !19, i32 837, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 837]
!335 = metadata !{i32 786688, metadata !328, metadata !"ftp", metadata !19, i32 838, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ftp] [line 838]
!336 = metadata !{i32 786688, metadata !328, metadata !"fr", metadata !19, i32 839, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fr] [line 839]
!337 = metadata !{i32 786688, metadata !338, metadata !"tpx", metadata !19, i32 867, metadata !340, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpx] [line 867]
!338 = metadata !{i32 786443, metadata !1, metadata !339, i32 866, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!339 = metadata !{i32 786443, metadata !1, metadata !328, i32 842, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!340 = metadata !{i32 786454, metadata !1, null, metadata !"t_tpxheader", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !341} ; [ DW_TAG_typedef ] [t_tpxheader] [line 68, size 0, align 0, offset 0] [from ]
!341 = metadata !{i32 786451, metadata !342, null, metadata !"", i32 55, i64 320, i64 32, i32 0, i32 0, null, metadata !343, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 320, align 32, offset 0] [from ]
!342 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/tpxio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!343 = metadata !{metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353}
!344 = metadata !{i32 786445, metadata !342, metadata !341, metadata !"bIr", i32 57, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [bIr] [line 57, size 32, align 32, offset 0] [from int]
!345 = metadata !{i32 786445, metadata !342, metadata !341, metadata !"bBox", i32 58, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [bBox] [line 58, size 32, align 32, offset 32] [from int]
!346 = metadata !{i32 786445, metadata !342, metadata !341, metadata !"bTop", i32 59, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [bTop] [line 59, size 32, align 32, offset 64] [from int]
!347 = metadata !{i32 786445, metadata !342, metadata !341, metadata !"bX", i32 60, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [bX] [line 60, size 32, align 32, offset 96] [from int]
!348 = metadata !{i32 786445, metadata !342, metadata !341, metadata !"bV", i32 61, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [bV] [line 61, size 32, align 32, offset 128] [from int]
!349 = metadata !{i32 786445, metadata !342, metadata !341, metadata !"bF", i32 62, i64 32, i64 32, i64 160, i32 0, metadata !22} ; [ DW_TAG_member ] [bF] [line 62, size 32, align 32, offset 160] [from int]
!350 = metadata !{i32 786445, metadata !342, metadata !341, metadata !"natoms", i32 64, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [natoms] [line 64, size 32, align 32, offset 192] [from int]
!351 = metadata !{i32 786445, metadata !342, metadata !341, metadata !"step", i32 65, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ] [step] [line 65, size 32, align 32, offset 224] [from int]
!352 = metadata !{i32 786445, metadata !342, metadata !341, metadata !"t", i32 66, i64 32, i64 32, i64 256, i32 0, metadata !89} ; [ DW_TAG_member ] [t] [line 66, size 32, align 32, offset 256] [from real]
!353 = metadata !{i32 786445, metadata !342, metadata !341, metadata !"lambda", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !89} ; [ DW_TAG_member ] [lambda] [line 67, size 32, align 32, offset 288] [from real]
!354 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"read_stx_conf", metadata !"read_stx_conf", metadata !"", i32 877, metadata !316, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*)* @read_stx_conf, null, null, metadata !355, i32 879} ; [ DW_TAG_subprogram ] [line 877] [def] [scope 879] [read_stx_conf]
!355 = metadata !{metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !365, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530}
!356 = metadata !{i32 786689, metadata !354, metadata !"infile", metadata !19, i32 16778093, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [infile] [line 877]
!357 = metadata !{i32 786689, metadata !354, metadata !"title", metadata !19, i32 33555309, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 877]
!358 = metadata !{i32 786689, metadata !354, metadata !"atoms", metadata !19, i32 50332525, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 877]
!359 = metadata !{i32 786689, metadata !354, metadata !"x", metadata !19, i32 67109742, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 878]
!360 = metadata !{i32 786689, metadata !354, metadata !"v", metadata !19, i32 83886958, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 878]
!361 = metadata !{i32 786689, metadata !354, metadata !"box", metadata !19, i32 100664174, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 878]
!362 = metadata !{i32 786688, metadata !354, metadata !"in", metadata !19, i32 880, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 880]
!363 = metadata !{i32 786688, metadata !354, metadata !"buf", metadata !19, i32 881, metadata !364, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 881]
!364 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !31, metadata !143, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!365 = metadata !{i32 786688, metadata !354, metadata !"top", metadata !19, i32 882, metadata !366, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [top] [line 882]
!366 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !367} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_topology]
!367 = metadata !{i32 786454, metadata !1, null, metadata !"t_topology", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !368} ; [ DW_TAG_typedef ] [t_topology] [line 42, size 0, align 0, offset 0] [from ]
!368 = metadata !{i32 786451, metadata !369, null, metadata !"", i32 36, i64 402112, i64 64, i32 0, i32 0, null, metadata !370, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 402112, align 64, offset 0] [from ]
!369 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/topology.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!370 = metadata !{metadata !371, metadata !372, metadata !505, metadata !506, metadata !508}
!371 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"name", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_member ] [name] [line 37, size 64, align 64, offset 0] [from ]
!372 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"idef", i32 38, i64 366336, i64 64, i64 64, i32 0, metadata !373} ; [ DW_TAG_member ] [idef] [line 38, size 366336, align 64, offset 64] [from t_idef]
!373 = metadata !{i32 786454, metadata !369, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !374} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!374 = metadata !{i32 786451, metadata !375, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !376, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!375 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!376 = metadata !{metadata !377, metadata !378, metadata !379, metadata !380, metadata !383, metadata !493}
!377 = metadata !{i32 786445, metadata !375, metadata !374, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!378 = metadata !{i32 786445, metadata !375, metadata !374, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!379 = metadata !{i32 786445, metadata !375, metadata !374, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!380 = metadata !{i32 786445, metadata !375, metadata !374, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !381} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!381 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !382} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!382 = metadata !{i32 786454, metadata !375, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!383 = metadata !{i32 786445, metadata !375, metadata !374, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !384} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!384 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !385} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!385 = metadata !{i32 786454, metadata !375, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !386} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!386 = metadata !{i32 786455, metadata !375, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !387, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!387 = metadata !{metadata !388, metadata !394, metadata !401, metadata !407, metadata !416, metadata !421, metadata !428, metadata !436, metadata !441, metadata !446, metadata !452, metadata !457, metadata !462, metadata !471, metadata !480, metadata !489}
!388 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !389} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!389 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !390, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!390 = metadata !{metadata !391, metadata !392, metadata !393}
!391 = metadata !{i32 786445, metadata !375, metadata !389, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!392 = metadata !{i32 786445, metadata !375, metadata !389, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!393 = metadata !{i32 786445, metadata !375, metadata !389, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!394 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !395} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!395 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !396, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!396 = metadata !{metadata !397, metadata !398, metadata !399, metadata !400}
!397 = metadata !{i32 786445, metadata !375, metadata !395, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!398 = metadata !{i32 786445, metadata !375, metadata !395, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!399 = metadata !{i32 786445, metadata !375, metadata !395, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!400 = metadata !{i32 786445, metadata !375, metadata !395, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !89} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!401 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !402} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!402 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !403, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!403 = metadata !{metadata !404, metadata !405, metadata !406}
!404 = metadata !{i32 786445, metadata !375, metadata !402, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!405 = metadata !{i32 786445, metadata !375, metadata !402, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!406 = metadata !{i32 786445, metadata !375, metadata !402, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!407 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !408} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!408 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !409, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!409 = metadata !{metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415}
!410 = metadata !{i32 786445, metadata !375, metadata !408, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!411 = metadata !{i32 786445, metadata !375, metadata !408, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!412 = metadata !{i32 786445, metadata !375, metadata !408, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!413 = metadata !{i32 786445, metadata !375, metadata !408, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !89} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!414 = metadata !{i32 786445, metadata !375, metadata !408, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !89} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!415 = metadata !{i32 786445, metadata !375, metadata !408, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !89} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!416 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !417} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!417 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !418, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!418 = metadata !{metadata !419, metadata !420}
!419 = metadata !{i32 786445, metadata !375, metadata !417, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!420 = metadata !{i32 786445, metadata !375, metadata !417, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!421 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !422} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!422 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !423, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!423 = metadata !{metadata !424, metadata !425, metadata !426, metadata !427}
!424 = metadata !{i32 786445, metadata !375, metadata !422, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!425 = metadata !{i32 786445, metadata !375, metadata !422, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!426 = metadata !{i32 786445, metadata !375, metadata !422, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!427 = metadata !{i32 786445, metadata !375, metadata !422, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !89} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!428 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !429} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!429 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !430, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!430 = metadata !{metadata !431, metadata !432, metadata !433, metadata !434, metadata !435}
!431 = metadata !{i32 786445, metadata !375, metadata !429, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!432 = metadata !{i32 786445, metadata !375, metadata !429, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!433 = metadata !{i32 786445, metadata !375, metadata !429, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!434 = metadata !{i32 786445, metadata !375, metadata !429, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !89} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!435 = metadata !{i32 786445, metadata !375, metadata !429, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !89} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!436 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !437} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!437 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !438, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!438 = metadata !{metadata !439, metadata !440}
!439 = metadata !{i32 786445, metadata !375, metadata !437, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!440 = metadata !{i32 786445, metadata !375, metadata !437, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!441 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !442} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!442 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !443, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!443 = metadata !{metadata !444, metadata !445}
!444 = metadata !{i32 786445, metadata !375, metadata !442, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!445 = metadata !{i32 786445, metadata !375, metadata !442, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!446 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !447} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!447 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !448, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!448 = metadata !{metadata !449, metadata !450, metadata !451}
!449 = metadata !{i32 786445, metadata !375, metadata !447, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!450 = metadata !{i32 786445, metadata !375, metadata !447, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!451 = metadata !{i32 786445, metadata !375, metadata !447, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!452 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !453} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!453 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !454, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!454 = metadata !{metadata !455, metadata !456}
!455 = metadata !{i32 786445, metadata !375, metadata !453, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !182} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!456 = metadata !{i32 786445, metadata !375, metadata !453, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !182} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!457 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !458} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!458 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !459, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!459 = metadata !{metadata !460}
!460 = metadata !{i32 786445, metadata !375, metadata !458, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !461} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!461 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !89, metadata !169, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!462 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !463} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!463 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !464, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!464 = metadata !{metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470}
!465 = metadata !{i32 786445, metadata !375, metadata !463, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!466 = metadata !{i32 786445, metadata !375, metadata !463, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!467 = metadata !{i32 786445, metadata !375, metadata !463, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!468 = metadata !{i32 786445, metadata !375, metadata !463, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !89} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!469 = metadata !{i32 786445, metadata !375, metadata !463, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !89} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!470 = metadata !{i32 786445, metadata !375, metadata !463, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !89} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!471 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!472 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !473, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!473 = metadata !{metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479}
!474 = metadata !{i32 786445, metadata !375, metadata !472, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!475 = metadata !{i32 786445, metadata !375, metadata !472, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!476 = metadata !{i32 786445, metadata !375, metadata !472, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!477 = metadata !{i32 786445, metadata !375, metadata !472, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !89} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!478 = metadata !{i32 786445, metadata !375, metadata !472, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!479 = metadata !{i32 786445, metadata !375, metadata !472, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !22} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!480 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !481} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!481 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !482, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!482 = metadata !{metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488}
!483 = metadata !{i32 786445, metadata !375, metadata !481, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!484 = metadata !{i32 786445, metadata !375, metadata !481, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!485 = metadata !{i32 786445, metadata !375, metadata !481, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!486 = metadata !{i32 786445, metadata !375, metadata !481, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !89} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!487 = metadata !{i32 786445, metadata !375, metadata !481, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !89} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!488 = metadata !{i32 786445, metadata !375, metadata !481, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !89} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!489 = metadata !{i32 786445, metadata !375, metadata !386, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !490} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!490 = metadata !{i32 786451, metadata !375, metadata !386, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !491, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!491 = metadata !{metadata !492}
!492 = metadata !{i32 786445, metadata !375, metadata !490, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !461} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!493 = metadata !{i32 786445, metadata !375, metadata !374, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !494} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!494 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !495, metadata !503, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!495 = metadata !{i32 786454, metadata !375, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !496} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!496 = metadata !{i32 786451, metadata !375, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !497, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!497 = metadata !{metadata !498, metadata !499, metadata !500}
!498 = metadata !{i32 786445, metadata !375, metadata !496, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!499 = metadata !{i32 786445, metadata !375, metadata !496, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !142} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!500 = metadata !{i32 786445, metadata !375, metadata !496, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !501} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!501 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !502} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!502 = metadata !{i32 786454, metadata !375, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!503 = metadata !{metadata !504}
!504 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!505 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"atoms", i32 39, i64 10240, i64 64, i64 366400, i32 0, metadata !104} ; [ DW_TAG_member ] [atoms] [line 39, size 10240, align 64, offset 366400] [from t_atoms]
!506 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"blocks", i32 40, i64 25344, i64 64, i64 376640, i32 0, metadata !507} ; [ DW_TAG_member ] [blocks] [line 40, size 25344, align 64, offset 376640] [from ]
!507 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 25344, i64 64, i32 0, i32 0, metadata !137, metadata !183, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 25344, align 64, offset 0] [from t_block]
!508 = metadata !{i32 786445, metadata !369, metadata !368, metadata !"symtab", i32 41, i64 128, i64 64, i64 401984, i32 0, metadata !509} ; [ DW_TAG_member ] [symtab] [line 41, size 128, align 64, offset 401984] [from t_symtab]
!509 = metadata !{i32 786454, metadata !1, null, metadata !"t_symtab", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !510} ; [ DW_TAG_typedef ] [t_symtab] [line 46, size 0, align 0, offset 0] [from ]
!510 = metadata !{i32 786451, metadata !511, null, metadata !"", i32 42, i64 128, i64 64, i32 0, i32 0, null, metadata !512, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 128, align 64, offset 0] [from ]
!511 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/symtab.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!512 = metadata !{metadata !513, metadata !514}
!513 = metadata !{i32 786445, metadata !511, metadata !510, metadata !"nr", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [nr] [line 44, size 32, align 32, offset 0] [from int]
!514 = metadata !{i32 786445, metadata !511, metadata !510, metadata !"symbuf", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !515} ; [ DW_TAG_member ] [symbuf] [line 45, size 64, align 64, offset 64] [from ]
!515 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !516} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symbuf]
!516 = metadata !{i32 786454, metadata !511, null, metadata !"t_symbuf", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !517} ; [ DW_TAG_typedef ] [t_symbuf] [line 40, size 0, align 0, offset 0] [from symbuf]
!517 = metadata !{i32 786451, metadata !511, null, metadata !"symbuf", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !518, i32 0, null, null} ; [ DW_TAG_structure_type ] [symbuf] [line 36, size 192, align 64, offset 0] [from ]
!518 = metadata !{metadata !519, metadata !520, metadata !521}
!519 = metadata !{i32 786445, metadata !511, metadata !517, metadata !"bufsize", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [bufsize] [line 37, size 32, align 32, offset 0] [from int]
!520 = metadata !{i32 786445, metadata !511, metadata !517, metadata !"buf", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !129} ; [ DW_TAG_member ] [buf] [line 38, size 64, align 64, offset 64] [from ]
!521 = metadata !{i32 786445, metadata !511, metadata !517, metadata !"next", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !522} ; [ DW_TAG_member ] [next] [line 39, size 64, align 64, offset 128] [from ]
!522 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !517} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from symbuf]
!523 = metadata !{i32 786688, metadata !354, metadata !"fr", metadata !19, i32 883, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fr] [line 883]
!524 = metadata !{i32 786688, metadata !354, metadata !"i", metadata !19, i32 884, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 884]
!525 = metadata !{i32 786688, metadata !354, metadata !"ftp", metadata !19, i32 884, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ftp] [line 884]
!526 = metadata !{i32 786688, metadata !354, metadata !"natoms", metadata !19, i32 884, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [natoms] [line 884]
!527 = metadata !{i32 786688, metadata !354, metadata !"i1", metadata !19, i32 884, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 884]
!528 = metadata !{i32 786688, metadata !354, metadata !"d", metadata !19, i32 885, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 885]
!529 = metadata !{i32 786688, metadata !354, metadata !"r1", metadata !19, i32 885, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r1] [line 885]
!530 = metadata !{i32 786688, metadata !354, metadata !"r2", metadata !19, i32 885, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r2] [line 885]
!531 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"read_whole_conf", metadata !"read_whole_conf", metadata !"", i32 532, metadata !316, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !532, i32 534} ; [ DW_TAG_subprogram ] [line 532] [local] [def] [scope 534] [read_whole_conf]
!532 = metadata !{metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540}
!533 = metadata !{i32 786689, metadata !531, metadata !"infile", metadata !19, i32 16777748, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [infile] [line 532]
!534 = metadata !{i32 786689, metadata !531, metadata !"title", metadata !19, i32 33554964, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 532]
!535 = metadata !{i32 786689, metadata !531, metadata !"atoms", metadata !19, i32 50332181, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 533]
!536 = metadata !{i32 786689, metadata !531, metadata !"x", metadata !19, i32 67109397, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 533]
!537 = metadata !{i32 786689, metadata !531, metadata !"v", metadata !19, i32 83886613, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 533]
!538 = metadata !{i32 786689, metadata !531, metadata !"box", metadata !19, i32 100663829, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 533]
!539 = metadata !{i32 786688, metadata !531, metadata !"in", metadata !19, i32 535, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 535]
!540 = metadata !{i32 786688, metadata !531, metadata !"ndec", metadata !19, i32 536, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndec] [line 536]
!541 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"get_coordnum", metadata !"get_coordnum", metadata !"", i32 363, metadata !329, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !542, i32 364} ; [ DW_TAG_subprogram ] [line 363] [local] [def] [scope 364] [get_coordnum]
!542 = metadata !{metadata !543, metadata !544, metadata !545, metadata !546}
!543 = metadata !{i32 786689, metadata !541, metadata !"infile", metadata !19, i32 16777579, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [infile] [line 363]
!544 = metadata !{i32 786689, metadata !541, metadata !"natoms", metadata !19, i32 33554795, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 363]
!545 = metadata !{i32 786688, metadata !541, metadata !"in", metadata !19, i32 365, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 365]
!546 = metadata !{i32 786688, metadata !541, metadata !"title", metadata !19, i32 366, metadata !238, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [title] [line 366]
!547 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"write_conf", metadata !"write_conf", metadata !"", i32 730, metadata !316, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !548, i32 732} ; [ DW_TAG_subprogram ] [line 730] [local] [def] [scope 732] [write_conf]
!548 = metadata !{metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554}
!549 = metadata !{i32 786689, metadata !547, metadata !"outfile", metadata !19, i32 16777946, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outfile] [line 730]
!550 = metadata !{i32 786689, metadata !547, metadata !"title", metadata !19, i32 33555162, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 730]
!551 = metadata !{i32 786689, metadata !547, metadata !"atoms", metadata !19, i32 50332378, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 730]
!552 = metadata !{i32 786689, metadata !547, metadata !"x", metadata !19, i32 67109595, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 731]
!553 = metadata !{i32 786689, metadata !547, metadata !"v", metadata !19, i32 83886811, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 731]
!554 = metadata !{i32 786689, metadata !547, metadata !"box", metadata !19, i32 100664027, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 731]
!555 = metadata !{i32 786478, metadata !556, metadata !557, metadata !"copy_mat", metadata !"copy_mat", metadata !"", i32 297, metadata !558, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !560, i32 298} ; [ DW_TAG_subprogram ] [line 297] [local] [def] [scope 298] [copy_mat]
!556 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!557 = metadata !{i32 786473, metadata !556}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!558 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !559, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!559 = metadata !{null, metadata !253, metadata !253}
!560 = metadata !{metadata !561, metadata !562}
!561 = metadata !{i32 786689, metadata !555, metadata !"a", metadata !557, i32 16777513, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 297]
!562 = metadata !{i32 786689, metadata !555, metadata !"b", metadata !557, i32 33554729, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 297]
!563 = metadata !{i32 786478, metadata !556, metadata !557, metadata !"copy_rvec", metadata !"copy_rvec", metadata !"", i32 270, metadata !564, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !569, i32 271} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [scope 271] [copy_rvec]
!564 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !565, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!565 = metadata !{null, metadata !566, metadata !568}
!566 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !567} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!567 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!568 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!569 = metadata !{metadata !570, metadata !571}
!570 = metadata !{i32 786689, metadata !563, metadata !"a", metadata !557, i32 16777486, metadata !566, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 270]
!571 = metadata !{i32 786689, metadata !563, metadata !"b", metadata !557, i32 33554702, metadata !568, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 270]
!572 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"get_coordnum_fp", metadata !"get_coordnum_fp", metadata !"", i32 354, metadata !573, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, i32*)* @get_coordnum_fp, null, null, metadata !575, i32 355} ; [ DW_TAG_subprogram ] [line 354] [local] [def] [scope 355] [get_coordnum_fp]
!573 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !574, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!574 = metadata !{null, metadata !23, metadata !30, metadata !158}
!575 = metadata !{metadata !576, metadata !577, metadata !578, metadata !579}
!576 = metadata !{i32 786689, metadata !572, metadata !"in", metadata !19, i32 16777570, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 354]
!577 = metadata !{i32 786689, metadata !572, metadata !"title", metadata !19, i32 33554786, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 354]
!578 = metadata !{i32 786689, metadata !572, metadata !"natoms", metadata !19, i32 50332002, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 354]
!579 = metadata !{i32 786688, metadata !580, metadata !"line", metadata !19, i32 356, metadata !581, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 356]
!580 = metadata !{i32 786443, metadata !1, metadata !572} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!581 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32776, i64 8, i32 0, i32 0, metadata !31, metadata !582, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32776, align 8, offset 0] [from char]
!582 = metadata !{metadata !583}
!583 = metadata !{i32 786465, i64 0, i64 4097}    ; [ DW_TAG_subrange_type ] [0, 4096]
!584 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"get_w_conf", metadata !"get_w_conf", metadata !"", i32 373, metadata !585, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i8*, i8*, %struct.t_atoms*, i32*, [3 x float]*, [3 x float]*, [3 x float]*)* @get_w_conf, null, null, metadata !587, i32 375} ; [ DW_TAG_subprogram ] [line 373] [local] [def] [scope 375] [get_w_conf]
!585 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !586, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!586 = metadata !{metadata !22, metadata !23, metadata !30, metadata !30, metadata !103, metadata !158, metadata !180, metadata !180, metadata !253}
!587 = metadata !{metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621}
!588 = metadata !{i32 786689, metadata !584, metadata !"in", metadata !19, i32 16777589, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 373]
!589 = metadata !{i32 786689, metadata !584, metadata !"infile", metadata !19, i32 33554805, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [infile] [line 373]
!590 = metadata !{i32 786689, metadata !584, metadata !"title", metadata !19, i32 50332021, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 373]
!591 = metadata !{i32 786689, metadata !584, metadata !"atoms", metadata !19, i32 67109238, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 374]
!592 = metadata !{i32 786689, metadata !584, metadata !"ndec", metadata !19, i32 83886454, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ndec] [line 374]
!593 = metadata !{i32 786689, metadata !584, metadata !"x", metadata !19, i32 100663670, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 374]
!594 = metadata !{i32 786689, metadata !584, metadata !"v", metadata !19, i32 117440886, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 374]
!595 = metadata !{i32 786689, metadata !584, metadata !"box", metadata !19, i32 134218102, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 374]
!596 = metadata !{i32 786688, metadata !584, metadata !"name", metadata !19, i32 377, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 377]
!597 = metadata !{i32 786688, metadata !584, metadata !"line", metadata !19, i32 378, metadata !581, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 378]
!598 = metadata !{i32 786688, metadata !584, metadata !"buf", metadata !19, i32 379, metadata !364, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 379]
!599 = metadata !{i32 786688, metadata !584, metadata !"format", metadata !19, i32 380, metadata !600, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [format] [line 380]
!600 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 240, i64 8, i32 0, i32 0, metadata !31, metadata !601, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 240, align 8, offset 0] [from char]
!601 = metadata !{metadata !602}
!602 = metadata !{i32 786465, i64 0, i64 30}      ; [ DW_TAG_subrange_type ] [0, 29]
!603 = metadata !{i32 786688, metadata !584, metadata !"x1", metadata !19, i32 381, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x1] [line 381]
!604 = metadata !{i32 786688, metadata !584, metadata !"y1", metadata !19, i32 381, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y1] [line 381]
!605 = metadata !{i32 786688, metadata !584, metadata !"z1", metadata !19, i32 381, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z1] [line 381]
!606 = metadata !{i32 786688, metadata !584, metadata !"x2", metadata !19, i32 381, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x2] [line 381]
!607 = metadata !{i32 786688, metadata !584, metadata !"y2", metadata !19, i32 381, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y2] [line 381]
!608 = metadata !{i32 786688, metadata !584, metadata !"z2", metadata !19, i32 381, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z2] [line 381]
!609 = metadata !{i32 786688, metadata !584, metadata !"xmin", metadata !19, i32 382, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmin] [line 382]
!610 = metadata !{i32 786688, metadata !584, metadata !"xmax", metadata !19, i32 382, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmax] [line 382]
!611 = metadata !{i32 786688, metadata !584, metadata !"natoms", metadata !19, i32 383, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [natoms] [line 383]
!612 = metadata !{i32 786688, metadata !584, metadata !"i", metadata !19, i32 383, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 383]
!613 = metadata !{i32 786688, metadata !584, metadata !"m", metadata !19, i32 383, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 383]
!614 = metadata !{i32 786688, metadata !584, metadata !"resnr", metadata !19, i32 383, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resnr] [line 383]
!615 = metadata !{i32 786688, metadata !584, metadata !"newres", metadata !19, i32 383, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newres] [line 383]
!616 = metadata !{i32 786688, metadata !584, metadata !"oldres", metadata !19, i32 383, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldres] [line 383]
!617 = metadata !{i32 786688, metadata !584, metadata !"ddist", metadata !19, i32 383, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ddist] [line 383]
!618 = metadata !{i32 786688, metadata !584, metadata !"bFirst", metadata !19, i32 384, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bFirst] [line 384]
!619 = metadata !{i32 786688, metadata !584, metadata !"bVel", metadata !19, i32 384, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bVel] [line 384]
!620 = metadata !{i32 786688, metadata !584, metadata !"p1", metadata !19, i32 385, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p1] [line 385]
!621 = metadata !{i32 786688, metadata !584, metadata !"p2", metadata !19, i32 385, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p2] [line 385]
!622 = metadata !{i32 786478, metadata !556, metadata !557, metadata !"clear_mat", metadata !"clear_mat", metadata !"", i32 334, metadata !623, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !625, i32 335} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [scope 335] [clear_mat]
!623 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !624, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!624 = metadata !{null, metadata !253}
!625 = metadata !{metadata !626, metadata !627}
!626 = metadata !{i32 786689, metadata !622, metadata !"a", metadata !557, i32 16777550, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 334]
!627 = metadata !{i32 786688, metadata !628, metadata !"nul", metadata !557, i32 336, metadata !567, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!628 = metadata !{i32 786443, metadata !556, metadata !622} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!629 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"read_g96_vel", metadata !"read_g96_vel", metadata !"", i32 135, metadata !630, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !632, i32 137} ; [ DW_TAG_subprogram ] [line 135] [local] [def] [scope 137] [read_g96_vel]
!630 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !631, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!631 = metadata !{metadata !22, metadata !30, metadata !23, metadata !30, metadata !80}
!632 = metadata !{metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !639, metadata !640, metadata !641, metadata !642, metadata !643, metadata !644}
!633 = metadata !{i32 786689, metadata !629, metadata !"line", metadata !19, i32 16777351, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 135]
!634 = metadata !{i32 786689, metadata !629, metadata !"fp", metadata !19, i32 33554567, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 135]
!635 = metadata !{i32 786689, metadata !629, metadata !"infile", metadata !19, i32 50331783, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [infile] [line 135]
!636 = metadata !{i32 786689, metadata !629, metadata !"fr", metadata !19, i32 67109000, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 136]
!637 = metadata !{i32 786688, metadata !638, metadata !"bEnd", metadata !19, i32 138, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bEnd] [line 138]
!638 = metadata !{i32 786443, metadata !1, metadata !629} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!639 = metadata !{i32 786688, metadata !638, metadata !"nwanted", metadata !19, i32 139, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nwanted] [line 139]
!640 = metadata !{i32 786688, metadata !638, metadata !"natoms", metadata !19, i32 139, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [natoms] [line 139]
!641 = metadata !{i32 786688, metadata !638, metadata !"shift", metadata !19, i32 139, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 139]
!642 = metadata !{i32 786688, metadata !638, metadata !"db1", metadata !19, i32 140, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db1] [line 140]
!643 = metadata !{i32 786688, metadata !638, metadata !"db2", metadata !19, i32 140, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db2] [line 140]
!644 = metadata !{i32 786688, metadata !638, metadata !"db3", metadata !19, i32 140, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db3] [line 140]
!645 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"read_g96_pos", metadata !"read_g96_pos", metadata !"", i32 56, metadata !646, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !649, i32 58} ; [ DW_TAG_subprogram ] [line 56] [local] [def] [scope 58] [read_g96_pos]
!646 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !647, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!647 = metadata !{metadata !22, metadata !30, metadata !648, metadata !23, metadata !30, metadata !80}
!648 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !509} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symtab]
!649 = metadata !{metadata !650, metadata !651, metadata !652, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669, metadata !670}
!650 = metadata !{i32 786689, metadata !645, metadata !"line", metadata !19, i32 16777272, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 56]
!651 = metadata !{i32 786689, metadata !645, metadata !"symtab", metadata !19, i32 33554488, metadata !648, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 56]
!652 = metadata !{i32 786689, metadata !645, metadata !"fp", metadata !19, i32 50331704, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 56]
!653 = metadata !{i32 786689, metadata !645, metadata !"infile", metadata !19, i32 67108920, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [infile] [line 56]
!654 = metadata !{i32 786689, metadata !645, metadata !"fr", metadata !19, i32 83886137, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 57]
!655 = metadata !{i32 786688, metadata !645, metadata !"atoms", metadata !19, i32 59, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atoms] [line 59]
!656 = metadata !{i32 786688, metadata !645, metadata !"bEnd", metadata !19, i32 60, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bEnd] [line 60]
!657 = metadata !{i32 786688, metadata !645, metadata !"nwanted", metadata !19, i32 61, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nwanted] [line 61]
!658 = metadata !{i32 786688, metadata !645, metadata !"natoms", metadata !19, i32 61, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [natoms] [line 61]
!659 = metadata !{i32 786688, metadata !645, metadata !"atnr", metadata !19, i32 61, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atnr] [line 61]
!660 = metadata !{i32 786688, metadata !645, metadata !"resnr", metadata !19, i32 61, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resnr] [line 61]
!661 = metadata !{i32 786688, metadata !645, metadata !"oldres", metadata !19, i32 61, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldres] [line 61]
!662 = metadata !{i32 786688, metadata !645, metadata !"newres", metadata !19, i32 61, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newres] [line 61]
!663 = metadata !{i32 786688, metadata !645, metadata !"shift", metadata !19, i32 61, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 61]
!664 = metadata !{i32 786688, metadata !645, metadata !"anm", metadata !19, i32 62, metadata !238, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [anm] [line 62]
!665 = metadata !{i32 786688, metadata !645, metadata !"resnm", metadata !19, i32 62, metadata !238, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resnm] [line 62]
!666 = metadata !{i32 786688, metadata !645, metadata !"c1", metadata !19, i32 63, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 63]
!667 = metadata !{i32 786688, metadata !645, metadata !"c2", metadata !19, i32 63, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2] [line 63]
!668 = metadata !{i32 786688, metadata !645, metadata !"db1", metadata !19, i32 64, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db1] [line 64]
!669 = metadata !{i32 786688, metadata !645, metadata !"db2", metadata !19, i32 64, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db2] [line 64]
!670 = metadata !{i32 786688, metadata !645, metadata !"db3", metadata !19, i32 64, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db3] [line 64]
!671 = metadata !{metadata !672, metadata !673, metadata !674, metadata !675, metadata !675, metadata !675}
!672 = metadata !{i32 786484, i32 0, metadata !18, metadata !"symtab", metadata !"symtab", metadata !"", metadata !19, i32 179, metadata !648, i32 1, i32 1, %struct.t_symtab** @read_g96_conf.symtab, null} ; [ DW_TAG_variable ] [symtab] [line 179] [local] [def]
!673 = metadata !{i32 786484, i32 0, metadata !18, metadata !"line", metadata !"line", metadata !"", metadata !19, i32 180, metadata !581, i32 1, i32 1, [4097 x i8]* @read_g96_conf.line, null} ; [ DW_TAG_variable ] [line] [line 180] [local] [def]
!674 = metadata !{i32 786484, i32 0, metadata !584, metadata !"symtab", metadata !"symtab", metadata !"", metadata !19, i32 376, metadata !648, i32 1, i32 1, %struct.t_symtab** @get_w_conf.symtab, null} ; [ DW_TAG_variable ] [symtab] [line 376] [local] [def]
!675 = metadata !{i32 786484, i32 0, metadata !557, metadata !"nul", metadata !"nul", metadata !"nul", metadata !557, i32 336, metadata !567, i32 1, i32 1, float 0.000000e+00, null} ; [ DW_TAG_variable ] [nul] [line 336] [local] [def]
!676 = metadata !{i32 177, i32 0, metadata !18, null}
!677 = metadata !{i32 184, i32 0, metadata !18, null}
!678 = metadata !{i32 186, i32 0, metadata !18, null}
!679 = metadata !{i32 188, i32 0, metadata !18, null}
!680 = metadata !{i32 190, i32 0, metadata !18, null}
!681 = metadata !{metadata !"any pointer", metadata !682}
!682 = metadata !{metadata !"omnipotent char", metadata !683}
!683 = metadata !{metadata !"Simple C/C++ TBAA"}
!684 = metadata !{i32 191, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !18, i32 190, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!686 = metadata !{i32 192, i32 0, metadata !685, null}
!687 = metadata !{i32 193, i32 0, metadata !685, null}
!688 = metadata !{i32 195, i32 0, metadata !18, null}
!689 = metadata !{i32 197, i32 0, metadata !18, null}
!690 = metadata !{i32 198, i32 0, metadata !691, null}
!691 = metadata !{i32 786443, metadata !1, metadata !18, i32 197, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!692 = metadata !{metadata !"int", metadata !682}
!693 = metadata !{i32 199, i32 0, metadata !691, null}
!694 = metadata !{i32 200, i32 0, metadata !691, null}
!695 = metadata !{i32 201, i32 0, metadata !691, null}
!696 = metadata !{i32 203, i32 0, metadata !691, null}
!697 = metadata !{i32 204, i32 0, metadata !691, null}
!698 = metadata !{i32 205, i32 0, metadata !691, null}
!699 = metadata !{i32 206, i32 0, metadata !691, null}
!700 = metadata !{i32 220, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !702, i32 219, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!702 = metadata !{i32 786443, metadata !1, metadata !18, i32 213, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!703 = metadata !{i32 221, i32 0, metadata !704, null}
!704 = metadata !{i32 786443, metadata !1, metadata !701, i32 220, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!705 = metadata !{i32 226, i32 0, metadata !704, null}
!706 = metadata !{i32 227, i32 0, metadata !704, null}
!707 = metadata !{i32 233, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !709, i32 232, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!709 = metadata !{i32 786443, metadata !1, metadata !702, i32 231, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!710 = metadata !{i32 56, i32 0, metadata !645, metadata !711}
!711 = metadata !{i32 235, i32 0, metadata !708, null}
!712 = metadata !{i32 62, i32 0, metadata !645, metadata !711}
!713 = metadata !{i32 66, i32 0, metadata !645, metadata !711}
!714 = metadata !{i32 68, i32 0, metadata !645, metadata !711}
!715 = metadata !{i32 116, i32 0, metadata !716, metadata !711}
!716 = metadata !{i32 786443, metadata !1, metadata !717, i32 82, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!717 = metadata !{i32 786443, metadata !1, metadata !718, i32 80, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!718 = metadata !{i32 786443, metadata !1, metadata !645, i32 72, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!719 = metadata !{i32 100, i32 0, metadata !720, metadata !711}
!720 = metadata !{i32 786443, metadata !1, metadata !721, i32 93, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!721 = metadata !{i32 786443, metadata !1, metadata !716, i32 90, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!722 = metadata !{i32 98, i32 0, metadata !723, metadata !711}
!723 = metadata !{i32 786443, metadata !1, metadata !720, i32 96, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!724 = metadata !{i32 239, i32 0, metadata !702, null}
!725 = metadata !{i32 240, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !702, i32 239, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!727 = metadata !{i32 135, i32 0, metadata !629, metadata !728}
!728 = metadata !{i32 241, i32 0, metadata !726, null}
!729 = metadata !{i32 214, i32 0, metadata !702, null}
!730 = metadata !{i32 215, i32 0, metadata !702, null}
!731 = metadata !{i32 216, i32 0, metadata !702, null}
!732 = metadata !{i32 217, i32 0, metadata !702, null}
!733 = metadata !{i32 218, i32 0, metadata !702, null}
!734 = metadata !{i32 219, i32 0, metadata !702, null}
!735 = metadata !{i32 222, i32 0, metadata !704, null}
!736 = metadata !{i32 223, i32 0, metadata !704, null}
!737 = metadata !{i32 224, i32 0, metadata !704, null}
!738 = metadata !{metadata !"double", metadata !682}
!739 = metadata !{metadata !"float", metadata !682}
!740 = metadata !{i32 228, i32 0, metadata !704, null}
!741 = metadata !{i32 231, i32 0, metadata !702, null}
!742 = metadata !{i32 232, i32 0, metadata !709, null}
!743 = metadata !{i32 234, i32 0, metadata !708, null}
!744 = metadata !{null}
!745 = metadata !{i32 786689, metadata !645, metadata !"line", metadata !19, i32 16777272, metadata !30, i32 0, metadata !711} ; [ DW_TAG_arg_variable ] [line] [line 56]
!746 = metadata !{i32 61, i32 0, metadata !645, metadata !711}
!747 = metadata !{i32 63, i32 0, metadata !645, metadata !711}
!748 = metadata !{i32 64, i32 0, metadata !645, metadata !711}
!749 = metadata !{i32 786688, metadata !645, metadata !"nwanted", metadata !19, i32 61, metadata !22, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [nwanted] [line 61]
!750 = metadata !{i32 786688, metadata !645, metadata !"atoms", metadata !19, i32 59, metadata !103, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [atoms] [line 59]
!751 = metadata !{i32 786688, metadata !645, metadata !"natoms", metadata !19, i32 61, metadata !22, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [natoms] [line 61]
!752 = metadata !{i32 70, i32 0, metadata !645, metadata !711}
!753 = metadata !{i32 72, i32 0, metadata !645, metadata !711}
!754 = metadata !{i32 786688, metadata !645, metadata !"newres", metadata !19, i32 61, metadata !22, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [newres] [line 61]
!755 = metadata !{i32 77, i32 0, metadata !718, metadata !711}
!756 = metadata !{i32 -666}
!757 = metadata !{i32 786688, metadata !645, metadata !"oldres", metadata !19, i32 61, metadata !22, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [oldres] [line 61]
!758 = metadata !{i32 78, i32 0, metadata !718, metadata !711}
!759 = metadata !{i32 786688, metadata !645, metadata !"bEnd", metadata !19, i32 60, metadata !22, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [bEnd] [line 60]
!760 = metadata !{i32 79, i32 0, metadata !718, metadata !711}
!761 = metadata !{i32 83, i32 0, metadata !716, metadata !711}
!762 = metadata !{i32 86, i32 0, metadata !716, metadata !711}
!763 = metadata !{i32 90, i32 0, metadata !716, metadata !711}
!764 = metadata !{i32 102, i32 0, metadata !721, metadata !711}
!765 = metadata !{i32 114, i32 0, metadata !721, metadata !711}
!766 = metadata !{i32 105, i32 0, metadata !767, metadata !711}
!767 = metadata !{i32 786443, metadata !1, metadata !721, i32 103, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!768 = metadata !{i32 108, i32 0, metadata !767, metadata !711}
!769 = metadata !{i32 110, i32 0, metadata !767, metadata !711}
!770 = metadata !{i32 80, i32 0, metadata !718, metadata !711}
!771 = metadata !{i32 81, i32 0, metadata !717, metadata !711}
!772 = metadata !{i32 82, i32 0, metadata !717, metadata !711}
!773 = metadata !{i32 84, i32 0, metadata !716, metadata !711}
!774 = metadata !{i32 87, i32 0, metadata !716, metadata !711}
!775 = metadata !{i32 91, i32 0, metadata !721, metadata !711}
!776 = metadata !{i32 92, i32 0, metadata !721, metadata !711}
!777 = metadata !{i32 94, i32 0, metadata !720, metadata !711}
!778 = metadata !{i32 786688, metadata !645, metadata !"resnr", metadata !19, i32 61, metadata !22, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [resnr] [line 61]
!779 = metadata !{i32 95, i32 0, metadata !720, metadata !711}
!780 = metadata !{i32 1}
!781 = metadata !{i32 97, i32 0, metadata !723, metadata !711}
!782 = metadata !{i32 101, i32 0, metadata !720, metadata !711}
!783 = metadata !{i32 103, i32 0, metadata !721, metadata !711}
!784 = metadata !{i32 104, i32 0, metadata !767, metadata !711}
!785 = metadata !{i32 106, i32 0, metadata !767, metadata !711}
!786 = metadata !{i32 109, i32 0, metadata !767, metadata !711}
!787 = metadata !{i32 111, i32 0, metadata !767, metadata !711}
!788 = metadata !{i32 113, i32 0, metadata !721, metadata !711}
!789 = metadata !{i32 115, i32 0, metadata !721, metadata !711}
!790 = metadata !{i32 786688, metadata !645, metadata !"db1", metadata !19, i32 64, metadata !209, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [db1] [line 64]
!791 = metadata !{i32 117, i32 0, metadata !792, metadata !711}
!792 = metadata !{i32 786443, metadata !1, metadata !716, i32 116, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!793 = metadata !{i32 786688, metadata !645, metadata !"db2", metadata !19, i32 64, metadata !209, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [db2] [line 64]
!794 = metadata !{i32 118, i32 0, metadata !792, metadata !711}
!795 = metadata !{i32 786688, metadata !645, metadata !"db3", metadata !19, i32 64, metadata !209, i32 0, metadata !711} ; [ DW_TAG_auto_variable ] [db3] [line 64]
!796 = metadata !{i32 119, i32 0, metadata !792, metadata !711}
!797 = metadata !{i32 120, i32 0, metadata !792, metadata !711}
!798 = metadata !{i32 122, i32 0, metadata !716, metadata !711}
!799 = metadata !{i32 121, i32 0, metadata !716, metadata !711}
!800 = metadata !{i32 124, i32 0, metadata !718, metadata !711}
!801 = metadata !{i32 125, i32 0, metadata !718, metadata !711}
!802 = metadata !{i32 130, i32 0, metadata !645, metadata !711}
!803 = metadata !{i32 133, i32 0, metadata !645, metadata !711}
!804 = metadata !{i32 236, i32 0, metadata !708, null}
!805 = metadata !{i32 786689, metadata !629, metadata !"line", metadata !19, i32 16777351, metadata !30, i32 0, metadata !728} ; [ DW_TAG_arg_variable ] [line] [line 135]
!806 = metadata !{i32 -1}
!807 = metadata !{i32 786688, metadata !638, metadata !"natoms", metadata !19, i32 139, metadata !22, i32 0, metadata !728} ; [ DW_TAG_auto_variable ] [natoms] [line 139]
!808 = metadata !{i32 139, i32 0, metadata !638, metadata !728}
!809 = metadata !{i32 140, i32 0, metadata !638, metadata !728}
!810 = metadata !{i32 142, i32 0, metadata !638, metadata !728}
!811 = metadata !{i32 786688, metadata !638, metadata !"nwanted", metadata !19, i32 139, metadata !22, i32 0, metadata !728} ; [ DW_TAG_auto_variable ] [nwanted] [line 139]
!812 = metadata !{i32 144, i32 0, metadata !638, metadata !728}
!813 = metadata !{i32 145, i32 0, metadata !814, metadata !728}
!814 = metadata !{i32 786443, metadata !1, metadata !638, i32 144, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!815 = metadata !{i32 146, i32 0, metadata !814, metadata !728}
!816 = metadata !{i32 149, i32 0, metadata !814, metadata !728}
!817 = metadata !{i32 786688, metadata !638, metadata !"bEnd", metadata !19, i32 138, metadata !22, i32 0, metadata !728} ; [ DW_TAG_auto_variable ] [bEnd] [line 138]
!818 = metadata !{i32 150, i32 0, metadata !814, metadata !728}
!819 = metadata !{i32 154, i32 0, metadata !820, metadata !728}
!820 = metadata !{i32 786443, metadata !1, metadata !821, i32 153, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!821 = metadata !{i32 786443, metadata !1, metadata !814, i32 151, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!822 = metadata !{i32 157, i32 0, metadata !820, metadata !728}
!823 = metadata !{i32 151, i32 0, metadata !814, metadata !728}
!824 = metadata !{i32 152, i32 0, metadata !821, metadata !728}
!825 = metadata !{i32 153, i32 0, metadata !821, metadata !728}
!826 = metadata !{i32 155, i32 0, metadata !820, metadata !728}
!827 = metadata !{i32 158, i32 0, metadata !820, metadata !728}
!828 = metadata !{i32 160, i32 0, metadata !820, metadata !728}
!829 = metadata !{i32 786688, metadata !638, metadata !"db1", metadata !19, i32 140, metadata !209, i32 0, metadata !728} ; [ DW_TAG_auto_variable ] [db1] [line 140]
!830 = metadata !{i32 161, i32 0, metadata !831, metadata !728}
!831 = metadata !{i32 786443, metadata !1, metadata !820, i32 160, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!832 = metadata !{i32 786688, metadata !638, metadata !"db2", metadata !19, i32 140, metadata !209, i32 0, metadata !728} ; [ DW_TAG_auto_variable ] [db2] [line 140]
!833 = metadata !{i32 162, i32 0, metadata !831, metadata !728}
!834 = metadata !{i32 786688, metadata !638, metadata !"db3", metadata !19, i32 140, metadata !209, i32 0, metadata !728} ; [ DW_TAG_auto_variable ] [db3] [line 140]
!835 = metadata !{i32 163, i32 0, metadata !831, metadata !728}
!836 = metadata !{i32 164, i32 0, metadata !831, metadata !728}
!837 = metadata !{i32 166, i32 0, metadata !820, metadata !728}
!838 = metadata !{i32 165, i32 0, metadata !820, metadata !728}
!839 = metadata !{i32 168, i32 0, metadata !814, metadata !728}
!840 = metadata !{i32 169, i32 0, metadata !814, metadata !728}
!841 = metadata !{i32 243, i32 0, metadata !702, null}
!842 = metadata !{i32 244, i32 0, metadata !843, null}
!843 = metadata !{i32 786443, metadata !1, metadata !702, i32 243, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!844 = metadata !{i32 245, i32 0, metadata !843, null}
!845 = metadata !{float 0.000000e+00}
!846 = metadata !{i32 786688, metadata !628, metadata !"nul", metadata !557, i32 336, metadata !567, i32 0, metadata !844} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!847 = metadata !{i32 336, i32 0, metadata !628, metadata !844}
!848 = metadata !{i32 341, i32 0, metadata !628, metadata !844}
!849 = metadata !{i32 338, i32 0, metadata !628, metadata !844}
!850 = metadata !{i32 246, i32 0, metadata !843, null}
!851 = metadata !{i32 254, i32 0, metadata !852, null}
!852 = metadata !{i32 786443, metadata !1, metadata !853, i32 249, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!853 = metadata !{i32 786443, metadata !1, metadata !843, i32 247, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!854 = metadata !{i32 255, i32 0, metadata !852, null}
!855 = metadata !{i32 256, i32 0, metadata !852, null}
!856 = metadata !{i32 258, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !852, i32 257, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!858 = metadata !{i32 259, i32 0, metadata !857, null}
!859 = metadata !{i32 260, i32 0, metadata !857, null}
!860 = metadata !{i32 261, i32 0, metadata !857, null}
!861 = metadata !{i32 262, i32 0, metadata !857, null}
!862 = metadata !{i32 263, i32 0, metadata !857, null}
!863 = metadata !{i32 247, i32 0, metadata !843, null}
!864 = metadata !{i32 248, i32 0, metadata !853, null}
!865 = metadata !{i32 249, i32 0, metadata !853, null}
!866 = metadata !{i32 250, i32 0, metadata !852, null}
!867 = metadata !{i32 252, i32 0, metadata !852, null}
!868 = metadata !{i32 253, i32 0, metadata !852, null}
!869 = metadata !{i32 257, i32 0, metadata !852, null}
!870 = metadata !{i32 264, i32 0, metadata !857, null}
!871 = metadata !{i32 269, i32 0, metadata !702, null}
!872 = metadata !{i32 269, i32 0, metadata !18, null}
!873 = metadata !{i32 271, i32 0, metadata !18, null}
!874 = metadata !{i32 273, i32 0, metadata !18, null}
!875 = metadata !{i32 275, i32 0, metadata !18, null}
!876 = metadata !{i32 278, i32 0, metadata !218, null}
!877 = metadata !{i32 279, i32 0, metadata !218, null}
!878 = metadata !{i32 284, i32 0, metadata !218, null}
!879 = metadata !{i32 286, i32 0, metadata !218, null}
!880 = metadata !{i32 289, i32 0, metadata !218, null}
!881 = metadata !{i32 291, i32 0, metadata !218, null}
!882 = metadata !{i32 292, i32 0, metadata !218, null}
!883 = metadata !{i32 293, i32 0, metadata !218, null}
!884 = metadata !{i32 295, i32 0, metadata !218, null}
!885 = metadata !{i32 296, i32 0, metadata !218, null}
!886 = metadata !{i32 297, i32 0, metadata !887, null}
!887 = metadata !{i32 786443, metadata !1, metadata !218, i32 296, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!888 = metadata !{i32 298, i32 0, metadata !889, null}
!889 = metadata !{i32 786443, metadata !1, metadata !887, i32 297, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!890 = metadata !{i32 299, i32 0, metadata !891, null}
!891 = metadata !{i32 786443, metadata !1, metadata !889, i32 299, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!892 = metadata !{i32 301, i32 0, metadata !893, null}
!893 = metadata !{i32 786443, metadata !1, metadata !891, i32 299, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!894 = metadata !{i32 300, i32 0, metadata !893, null}
!895 = metadata !{i32 307, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !887, i32 306, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!897 = metadata !{i32 308, i32 0, metadata !898, null}
!898 = metadata !{i32 786443, metadata !1, metadata !896, i32 308, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!899 = metadata !{i32 310, i32 0, metadata !900, null}
!900 = metadata !{i32 786443, metadata !1, metadata !898, i32 308, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!901 = metadata !{i32 309, i32 0, metadata !900, null}
!902 = metadata !{i32 314, i32 0, metadata !887, null}
!903 = metadata !{i32 315, i32 0, metadata !887, null}
!904 = metadata !{i32 316, i32 0, metadata !218, null}
!905 = metadata !{i32 317, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !218, i32 316, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!907 = metadata !{i32 318, i32 0, metadata !908, null}
!908 = metadata !{i32 786443, metadata !1, metadata !906, i32 317, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!909 = metadata !{i32 319, i32 0, metadata !910, null}
!910 = metadata !{i32 786443, metadata !1, metadata !908, i32 319, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!911 = metadata !{i32 321, i32 0, metadata !912, null}
!912 = metadata !{i32 786443, metadata !1, metadata !910, i32 319, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!913 = metadata !{i32 320, i32 0, metadata !912, null}
!914 = metadata !{i32 327, i32 0, metadata !915, null}
!915 = metadata !{i32 786443, metadata !1, metadata !906, i32 326, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!916 = metadata !{i32 328, i32 0, metadata !917, null}
!917 = metadata !{i32 786443, metadata !1, metadata !915, i32 328, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!918 = metadata !{i32 330, i32 0, metadata !919, null}
!919 = metadata !{i32 786443, metadata !1, metadata !917, i32 328, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!920 = metadata !{i32 329, i32 0, metadata !919, null}
!921 = metadata !{i32 334, i32 0, metadata !906, null}
!922 = metadata !{i32 335, i32 0, metadata !906, null}
!923 = metadata !{i32 336, i32 0, metadata !218, null}
!924 = metadata !{i32 337, i32 0, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !218, i32 336, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!926 = metadata !{i32 338, i32 0, metadata !925, null}
!927 = metadata !{i32 340, i32 0, metadata !925, null}
!928 = metadata !{i32 346, i32 0, metadata !925, null}
!929 = metadata !{i32 341, i32 0, metadata !925, null}
!930 = metadata !{i32 342, i32 0, metadata !925, null}
!931 = metadata !{i32 343, i32 0, metadata !925, null}
!932 = metadata !{i32 344, i32 0, metadata !925, null}
!933 = metadata !{i32 345, i32 0, metadata !925, null}
!934 = metadata !{i32 349, i32 0, metadata !925, null}
!935 = metadata !{i32 350, i32 0, metadata !925, null}
!936 = metadata !{i32 351, i32 0, metadata !925, null}
!937 = metadata !{i32 352, i32 0, metadata !218, null}
!938 = metadata !{i32 565, i32 0, metadata !230, null}
!939 = metadata !{i32 567, i32 0, metadata !230, null}
!940 = metadata !{i32 568, i32 0, metadata !230, null}
!941 = metadata !{i32 569, i32 0, metadata !230, null}
!942 = metadata !{i32 570, i32 0, metadata !230, null}
!943 = metadata !{i32 572, i32 0, metadata !230, null}
!944 = metadata !{i32 575, i32 0, metadata !230, null}
!945 = metadata !{i32 576, i32 0, metadata !230, null}
!946 = metadata !{i32 577, i32 0, metadata !230, null}
!947 = metadata !{i32 578, i32 0, metadata !230, null}
!948 = metadata !{i32 579, i32 0, metadata !230, null}
!949 = metadata !{i32 581, i32 0, metadata !230, null}
!950 = metadata !{i32 582, i32 0, metadata !230, null}
!951 = metadata !{i32 583, i32 0, metadata !230, null}
!952 = metadata !{i32 585, i32 0, metadata !953, null}
!953 = metadata !{i32 786443, metadata !1, metadata !230, i32 585, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!954 = metadata !{i32 586, i32 0, metadata !953, null}
!955 = metadata !{i32 587, i32 0, metadata !230, null}
!956 = metadata !{i32 588, i32 0, metadata !230, null}
!957 = metadata !{i32 589, i32 0, metadata !230, null}
!958 = metadata !{i32 590, i32 0, metadata !230, null}
!959 = metadata !{i32 592, i32 0, metadata !230, null}
!960 = metadata !{i32 593, i32 0, metadata !230, null}
!961 = metadata !{i32 594, i32 0, metadata !230, null}
!962 = metadata !{i32 596, i32 0, metadata !230, null}
!963 = metadata !{i32 597, i32 0, metadata !964, null}
!964 = metadata !{i32 786443, metadata !1, metadata !230, i32 596, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!965 = metadata !{i32 598, i32 0, metadata !964, null}
!966 = metadata !{i32 599, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !964, i32 598, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!968 = metadata !{i32 600, i32 0, metadata !967, null}
!969 = metadata !{i32 601, i32 0, metadata !967, null}
!970 = metadata !{i32 602, i32 0, metadata !971, null}
!971 = metadata !{i32 786443, metadata !1, metadata !964, i32 601, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!972 = metadata !{i32 603, i32 0, metadata !971, null}
!973 = metadata !{i32 607, i32 0, metadata !230, null}
!974 = metadata !{i32 608, i32 0, metadata !230, null}
!975 = metadata !{i32 610, i32 0, metadata !230, null}
!976 = metadata !{i32 611, i32 0, metadata !230, null}
!977 = metadata !{i32 373, i32 0, metadata !584, null}
!978 = metadata !{i32 374, i32 0, metadata !584, null}
!979 = metadata !{i32 377, i32 0, metadata !584, null}
!980 = metadata !{i32 378, i32 0, metadata !584, null}
!981 = metadata !{i32 379, i32 0, metadata !584, null}
!982 = metadata !{i32 380, i32 0, metadata !584, null}
!983 = metadata !{i32 381, i32 0, metadata !584, null}
!984 = metadata !{i32 382, i32 0, metadata !584, null}
!985 = metadata !{i32 383, i32 0, metadata !584, null}
!986 = metadata !{i32 387, i32 0, metadata !584, null}
!987 = metadata !{i32 -12345}
!988 = metadata !{i32 388, i32 0, metadata !584, null}
!989 = metadata !{i32 389, i32 0, metadata !584, null}
!990 = metadata !{i32 391, i32 0, metadata !584, null}
!991 = metadata !{i32 392, i32 0, metadata !992, null}
!992 = metadata !{i32 786443, metadata !1, metadata !584, i32 391, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!993 = metadata !{i32 393, i32 0, metadata !992, null}
!994 = metadata !{i32 394, i32 0, metadata !992, null}
!995 = metadata !{i32 395, i32 0, metadata !584, null}
!996 = metadata !{i32 398, i32 0, metadata !584, null}
!997 = metadata !{i32 399, i32 0, metadata !584, null}
!998 = metadata !{i32 400, i32 0, metadata !584, null}
!999 = metadata !{i32 401, i32 0, metadata !584, null}
!1000 = metadata !{i32 403, i32 0, metadata !584, null}
!1001 = metadata !{i32 404, i32 0, metadata !584, null}
!1002 = metadata !{i32 412, i32 0, metadata !1003, null}
!1003 = metadata !{i32 786443, metadata !1, metadata !584, i32 412, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1004 = metadata !{i32 441, i32 0, metadata !1005, null}
!1005 = metadata !{i32 786443, metadata !1, metadata !1003, i32 412, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1006 = metadata !{i32 442, i32 0, metadata !1005, null}
!1007 = metadata !{i32 444, i32 0, metadata !1005, null}
!1008 = metadata !{i32 455, i32 0, metadata !1005, null}
!1009 = metadata !{i32 458, i32 0, metadata !1005, null}
!1010 = metadata !{i32 459, i32 0, metadata !1005, null}
!1011 = metadata !{i32 465, i32 0, metadata !1005, null}
!1012 = metadata !{i32 476, i32 0, metadata !1005, null}
!1013 = metadata !{i32 451, i32 0, metadata !1014, null}
!1014 = metadata !{i32 786443, metadata !1, metadata !1005, i32 446, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1015 = metadata !{i32 413, i32 0, metadata !1005, null}
!1016 = metadata !{i32 414, i32 0, metadata !1017, null}
!1017 = metadata !{i32 786443, metadata !1, metadata !1005, i32 413, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1018 = metadata !{i32 415, i32 0, metadata !1017, null}
!1019 = metadata !{i32 416, i32 0, metadata !1005, null}
!1020 = metadata !{i32 417, i32 0, metadata !1005, null}
!1021 = metadata !{i32 421, i32 0, metadata !1005, null}
!1022 = metadata !{i32 422, i32 0, metadata !1023, null}
!1023 = metadata !{i32 786443, metadata !1, metadata !1005, i32 421, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1024 = metadata !{i32 423, i32 0, metadata !1023, null}
!1025 = metadata !{i32 424, i32 0, metadata !1023, null}
!1026 = metadata !{i32 425, i32 0, metadata !1023, null}
!1027 = metadata !{i32 426, i32 0, metadata !1023, null}
!1028 = metadata !{i32 427, i32 0, metadata !1023, null}
!1029 = metadata !{i32 428, i32 0, metadata !1023, null}
!1030 = metadata !{i32 431, i32 0, metadata !1023, null}
!1031 = metadata !{i32 8}
!1032 = metadata !{i32 432, i32 0, metadata !1023, null}
!1033 = metadata !{i32 433, i32 0, metadata !1023, null}
!1034 = metadata !{i32 30}
!1035 = metadata !{i32 434, i32 0, metadata !1023, null}
!1036 = metadata !{i32 435, i32 0, metadata !1023, null}
!1037 = metadata !{i32 437, i32 0, metadata !1023, null}
!1038 = metadata !{i32 438, i32 0, metadata !1023, null}
!1039 = metadata !{i32 443, i32 0, metadata !1005, null}
!1040 = metadata !{i32 445, i32 0, metadata !1005, null}
!1041 = metadata !{i32 446, i32 0, metadata !1005, null}
!1042 = metadata !{i32 447, i32 0, metadata !1014, null}
!1043 = metadata !{i32 448, i32 0, metadata !1014, null}
!1044 = metadata !{i32 449, i32 0, metadata !1014, null}
!1045 = metadata !{i32 452, i32 0, metadata !1014, null}
!1046 = metadata !{i32 453, i32 0, metadata !1014, null}
!1047 = metadata !{i32 454, i32 0, metadata !1005, null}
!1048 = metadata !{i32 466, i32 0, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !1, metadata !1005, i32 465, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1050 = metadata !{i32 467, i32 0, metadata !1049, null}
!1051 = metadata !{i32 469, i32 0, metadata !1052, null}
!1052 = metadata !{i32 786443, metadata !1, metadata !1005, i32 468, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1053 = metadata !{i32 470, i32 0, metadata !1052, null}
!1054 = metadata !{i32 471, i32 0, metadata !1052, null}
!1055 = metadata !{i32 477, i32 0, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !1, metadata !1005, i32 476, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1057 = metadata !{i32 478, i32 0, metadata !1058, null}
!1058 = metadata !{i32 786443, metadata !1, metadata !1056, i32 477, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1059 = metadata !{i32 479, i32 0, metadata !1058, null}
!1060 = metadata !{i32 480, i32 0, metadata !1058, null}
!1061 = metadata !{i32 481, i32 0, metadata !1058, null}
!1062 = metadata !{i32 483, i32 0, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !1, metadata !1056, i32 482, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1064 = metadata !{i32 484, i32 0, metadata !1063, null}
!1065 = metadata !{i32 485, i32 0, metadata !1063, null}
!1066 = metadata !{i32 486, i32 0, metadata !1063, null}
!1067 = metadata !{i32 490, i32 0, metadata !584, null}
!1068 = metadata !{i32 493, i32 0, metadata !584, null}
!1069 = metadata !{i32 494, i32 0, metadata !584, null}
!1070 = metadata !{i32 495, i32 0, metadata !1071, null}
!1071 = metadata !{i32 786443, metadata !1, metadata !584, i32 494, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1072 = metadata !{i32 496, i32 0, metadata !1071, null}
!1073 = metadata !{i32 499, i32 0, metadata !1074, null}
!1074 = metadata !{i32 786443, metadata !1, metadata !1071, i32 499, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1075 = metadata !{i32 500, i32 0, metadata !1074, null}
!1076 = metadata !{i32 501, i32 0, metadata !1077, null}
!1077 = metadata !{i32 786443, metadata !1, metadata !1071, i32 501, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1078 = metadata !{i32 502, i32 0, metadata !1079, null}
!1079 = metadata !{i32 786443, metadata !1, metadata !1077, i32 502, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1080 = metadata !{i32 506, i32 0, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !1, metadata !1082, i32 506, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1082 = metadata !{i32 786443, metadata !1, metadata !1071, i32 506, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1083 = metadata !{i32 507, i32 0, metadata !1084, null}
!1084 = metadata !{i32 786443, metadata !1, metadata !1071, i32 507, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1085 = metadata !{i32 503, i32 0, metadata !1086, null}
!1086 = metadata !{i32 786443, metadata !1, metadata !1079, i32 502, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1087 = metadata !{i32 504, i32 0, metadata !1086, null}
!1088 = metadata !{i32 508, i32 0, metadata !1084, null}
!1089 = metadata !{i32 509, i32 0, metadata !1071, null}
!1090 = metadata !{i32 511, i32 0, metadata !1071, null}
!1091 = metadata !{i32 514, i32 0, metadata !1092, null}
!1092 = metadata !{i32 786443, metadata !1, metadata !584, i32 512, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1093 = metadata !{i32 515, i32 0, metadata !1092, null}
!1094 = metadata !{i32 516, i32 0, metadata !1092, null}
!1095 = metadata !{i32 517, i32 0, metadata !1092, null}
!1096 = metadata !{i32 520, i32 0, metadata !1092, null}
!1097 = metadata !{i32 521, i32 0, metadata !1092, null}
!1098 = metadata !{i32 522, i32 0, metadata !1092, null}
!1099 = metadata !{i32 523, i32 0, metadata !1092, null}
!1100 = metadata !{i32 524, i32 0, metadata !1092, null}
!1101 = metadata !{i32 525, i32 0, metadata !1092, null}
!1102 = metadata !{double 0.000000e+00}
!1103 = metadata !{i32 519, i32 0, metadata !1092, null}
!1104 = metadata !{i32 527, i32 0, metadata !584, null}
!1105 = metadata !{i32 530, i32 0, metadata !584, null}
!1106 = metadata !{i32 613, i32 0, metadata !245, null}
!1107 = metadata !{i32 615, i32 0, metadata !245, null}
!1108 = metadata !{i32 617, i32 0, metadata !245, null}
!1109 = metadata !{i32 618, i32 0, metadata !245, null}
!1110 = metadata !{i32 619, i32 0, metadata !245, null}
!1111 = metadata !{i32 620, i32 0, metadata !245, null}
!1112 = metadata !{i32 621, i32 0, metadata !245, null}
!1113 = metadata !{i32 622, i32 0, metadata !245, null}
!1114 = metadata !{i32 623, i32 0, metadata !245, null}
!1115 = metadata !{i32 624, i32 0, metadata !245, null}
!1116 = metadata !{i32 625, i32 0, metadata !245, null}
!1117 = metadata !{i32 627, i32 0, metadata !245, null}
!1118 = metadata !{i32 628, i32 0, metadata !245, null}
!1119 = metadata !{i32 629, i32 0, metadata !245, null}
!1120 = metadata !{i32 631, i32 0, metadata !245, null}
!1121 = metadata !{i32 632, i32 0, metadata !245, null}
!1122 = metadata !{i32 354, i32 0, metadata !572, null}
!1123 = metadata !{i32 356, i32 0, metadata !580, null}
!1124 = metadata !{i32 358, i32 0, metadata !580, null}
!1125 = metadata !{i32 359, i32 0, metadata !580, null}
!1126 = metadata !{i32 360, i32 0, metadata !580, null}
!1127 = metadata !{i32 361, i32 0, metadata !580, null}
!1128 = metadata !{i32 634, i32 0, metadata !250, null}
!1129 = metadata !{i32 635, i32 0, metadata !250, null}
!1130 = metadata !{i32 636, i32 0, metadata !250, null}
!1131 = metadata !{i32 638, i32 0, metadata !250, null}
!1132 = metadata !{i32 641, i32 0, metadata !250, null}
!1133 = metadata !{i32 642, i32 0, metadata !250, null}
!1134 = metadata !{i32 645, i32 0, metadata !250, null}
!1135 = metadata !{i32 646, i32 0, metadata !250, null}
!1136 = metadata !{i32 647, i32 0, metadata !250, null}
!1137 = metadata !{i32 648, i32 0, metadata !250, null}
!1138 = metadata !{i32 649, i32 0, metadata !250, null}
!1139 = metadata !{i32 650, i32 0, metadata !250, null}
!1140 = metadata !{i32 651, i32 0, metadata !250, null}
!1141 = metadata !{i32 652, i32 0, metadata !250, null}
!1142 = metadata !{i32 655, i32 0, metadata !250, null}
!1143 = metadata !{i32 657, i32 0, metadata !1144, null}
!1144 = metadata !{i32 786443, metadata !1, metadata !250, i32 657, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1145 = metadata !{i32 660, i32 0, metadata !1146, null}
!1146 = metadata !{i32 786443, metadata !1, metadata !1144, i32 657, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1147 = metadata !{i32 661, i32 0, metadata !1146, null}
!1148 = metadata !{i32 662, i32 0, metadata !1146, null}
!1149 = metadata !{i32 663, i32 0, metadata !1146, null}
!1150 = metadata !{i32 666, i32 0, metadata !1146, null}
!1151 = metadata !{i32 658, i32 0, metadata !1146, null}
!1152 = metadata !{i32 665, i32 0, metadata !1146, null}
!1153 = metadata !{i32 668, i32 0, metadata !1146, null}
!1154 = metadata !{i32 670, i32 0, metadata !1146, null}
!1155 = metadata !{i32 673, i32 0, metadata !1146, null}
!1156 = metadata !{i32 672, i32 0, metadata !1146, null}
!1157 = metadata !{i32 676, i32 0, metadata !1146, null}
!1158 = metadata !{i32 680, i32 0, metadata !250, null}
!1159 = metadata !{i32 5}
!1160 = metadata !{i32 681, i32 0, metadata !250, null}
!1161 = metadata !{i32 682, i32 0, metadata !250, null}
!1162 = metadata !{i32 684, i32 0, metadata !250, null}
!1163 = metadata !{i32 694, i32 0, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !1, metadata !250, i32 690, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1165 = metadata !{i32 685, i32 0, metadata !250, null}
!1166 = metadata !{i32 686, i32 0, metadata !250, null}
!1167 = metadata !{i32 687, i32 0, metadata !250, null}
!1168 = metadata !{i32 688, i32 0, metadata !250, null}
!1169 = metadata !{i32 689, i32 0, metadata !250, null}
!1170 = metadata !{i32 691, i32 0, metadata !1164, null}
!1171 = metadata !{i32 698, i32 0, metadata !1164, null}
!1172 = metadata !{i32 699, i32 0, metadata !1173, null}
!1173 = metadata !{i32 786443, metadata !1, metadata !250, i32 698, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1174 = metadata !{i32 700, i32 0, metadata !1173, null}
!1175 = metadata !{i32 703, i32 0, metadata !250, null}
!1176 = metadata !{i32 704, i32 0, metadata !250, null}
!1177 = metadata !{i32 706, i32 0, metadata !275, null}
!1178 = metadata !{i32 707, i32 0, metadata !275, null}
!1179 = metadata !{i32 712, i32 0, metadata !275, null}
!1180 = metadata !{i32 713, i32 0, metadata !1181, null}
!1181 = metadata !{i32 786443, metadata !1, metadata !275, i32 713, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1182 = metadata !{i32 714, i32 0, metadata !1181, null}
!1183 = metadata !{i32 715, i32 0, metadata !275, null}
!1184 = metadata !{i32 716, i32 0, metadata !275, null}
!1185 = metadata !{i32 717, i32 0, metadata !275, null}
!1186 = metadata !{i32 719, i32 0, metadata !288, null}
!1187 = metadata !{i32 720, i32 0, metadata !288, null}
!1188 = metadata !{i32 724, i32 0, metadata !288, null}
!1189 = metadata !{i32 725, i32 0, metadata !288, null}
!1190 = metadata !{i32 727, i32 0, metadata !288, null}
!1191 = metadata !{i32 728, i32 0, metadata !288, null}
!1192 = metadata !{i32 736, i32 0, metadata !300, null}
!1193 = metadata !{i32 737, i32 0, metadata !300, null}
!1194 = metadata !{i32 738, i32 0, metadata !300, null}
!1195 = metadata !{i32 742, i32 0, metadata !300, null}
!1196 = metadata !{i32 744, i32 0, metadata !300, null}
!1197 = metadata !{i32 745, i32 0, metadata !300, null}
!1198 = metadata !{i32 747, i32 0, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !1, metadata !300, i32 745, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1200 = metadata !{i32 748, i32 0, metadata !1199, null}
!1201 = metadata !{i32 749, i32 0, metadata !1199, null}
!1202 = metadata !{i32 750, i32 0, metadata !1199, null}
!1203 = metadata !{i32 752, i32 0, metadata !1199, null}
!1204 = metadata !{i32 753, i32 0, metadata !1199, null}
!1205 = metadata !{i32 754, i32 0, metadata !1199, null}
!1206 = metadata !{i32 755, i32 0, metadata !1199, null}
!1207 = metadata !{i32 756, i32 0, metadata !1199, null}
!1208 = metadata !{i32 757, i32 0, metadata !1199, null}
!1209 = metadata !{i32 758, i32 0, metadata !1199, null}
!1210 = metadata !{i32 759, i32 0, metadata !1199, null}
!1211 = metadata !{i32 760, i32 0, metadata !1199, null}
!1212 = metadata !{i32 761, i32 0, metadata !1213, null}
!1213 = metadata !{i32 786443, metadata !1, metadata !1199, i32 760, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1214 = metadata !{i32 762, i32 0, metadata !1213, null}
!1215 = metadata !{i32 763, i32 0, metadata !1213, null}
!1216 = metadata !{i32 764, i32 0, metadata !1199, null}
!1217 = metadata !{i32 786689, metadata !555, metadata !"a", metadata !557, i32 16777513, metadata !253, i32 0, metadata !1218} ; [ DW_TAG_arg_variable ] [a] [line 297]
!1218 = metadata !{i32 765, i32 0, metadata !1199, null}
!1219 = metadata !{i32 297, i32 0, metadata !555, metadata !1218}
!1220 = metadata !{i32 299, i32 0, metadata !1221, metadata !1218}
!1221 = metadata !{i32 786443, metadata !556, metadata !555} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!1222 = metadata !{i32 786689, metadata !563, metadata !"a", metadata !557, i32 16777486, metadata !566, i32 0, metadata !1220} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1223 = metadata !{i32 270, i32 0, metadata !563, metadata !1220}
!1224 = metadata !{i32 786689, metadata !563, metadata !"b", metadata !557, i32 33554702, metadata !568, i32 0, metadata !1220} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1225 = metadata !{i32 272, i32 0, metadata !563, metadata !1220}
!1226 = metadata !{i32 273, i32 0, metadata !563, metadata !1220}
!1227 = metadata !{i32 274, i32 0, metadata !563, metadata !1220}
!1228 = metadata !{i32 300, i32 0, metadata !1221, metadata !1218}
!1229 = metadata !{i32 786689, metadata !563, metadata !"a", metadata !557, i32 16777486, metadata !566, i32 0, metadata !1228} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1230 = metadata !{i32 270, i32 0, metadata !563, metadata !1228}
!1231 = metadata !{i32 786689, metadata !563, metadata !"b", metadata !557, i32 33554702, metadata !568, i32 0, metadata !1228} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1232 = metadata !{i32 272, i32 0, metadata !563, metadata !1228}
!1233 = metadata !{i32 273, i32 0, metadata !563, metadata !1228}
!1234 = metadata !{i32 274, i32 0, metadata !563, metadata !1228}
!1235 = metadata !{i32 301, i32 0, metadata !1221, metadata !1218}
!1236 = metadata !{i32 786689, metadata !563, metadata !"a", metadata !557, i32 16777486, metadata !566, i32 0, metadata !1235} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1237 = metadata !{i32 270, i32 0, metadata !563, metadata !1235}
!1238 = metadata !{i32 786689, metadata !563, metadata !"b", metadata !557, i32 33554702, metadata !568, i32 0, metadata !1235} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1239 = metadata !{i32 272, i32 0, metadata !563, metadata !1235}
!1240 = metadata !{i32 273, i32 0, metadata !563, metadata !1235}
!1241 = metadata !{i32 274, i32 0, metadata !563, metadata !1235}
!1242 = metadata !{i32 766, i32 0, metadata !1199, null}
!1243 = metadata !{i32 767, i32 0, metadata !1199, null}
!1244 = metadata !{i32 768, i32 0, metadata !1199, null}
!1245 = metadata !{i32 769, i32 0, metadata !1199, null}
!1246 = metadata !{i32 773, i32 0, metadata !1199, null}
!1247 = metadata !{i32 774, i32 0, metadata !1199, null}
!1248 = metadata !{i32 775, i32 0, metadata !1199, null}
!1249 = metadata !{i32 776, i32 0, metadata !1199, null}
!1250 = metadata !{i32 780, i32 0, metadata !1199, null}
!1251 = metadata !{i32 781, i32 0, metadata !1199, null}
!1252 = metadata !{i32 783, i32 0, metadata !1199, null}
!1253 = metadata !{i32 784, i32 0, metadata !1199, null}
!1254 = metadata !{i32 785, i32 0, metadata !300, null}
!1255 = metadata !{i32 787, i32 0, metadata !315, null}
!1256 = metadata !{i32 788, i32 0, metadata !315, null}
!1257 = metadata !{i32 792, i32 0, metadata !315, null}
!1258 = metadata !{i32 794, i32 0, metadata !315, null}
!1259 = metadata !{i32 795, i32 0, metadata !315, null}
!1260 = metadata !{i32 786689, metadata !547, metadata !"outfile", metadata !19, i32 16777946, metadata !30, i32 0, metadata !1261} ; [ DW_TAG_arg_variable ] [outfile] [line 730]
!1261 = metadata !{i32 797, i32 0, metadata !1262, null}
!1262 = metadata !{i32 786443, metadata !1, metadata !315, i32 795, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1263 = metadata !{i32 730, i32 0, metadata !547, metadata !1261}
!1264 = metadata !{i32 786689, metadata !547, metadata !"title", metadata !19, i32 33555162, metadata !30, i32 0, metadata !1261} ; [ DW_TAG_arg_variable ] [title] [line 730]
!1265 = metadata !{i32 786689, metadata !547, metadata !"atoms", metadata !19, i32 50332378, metadata !103, i32 0, metadata !1261} ; [ DW_TAG_arg_variable ] [atoms] [line 730]
!1266 = metadata !{i32 786689, metadata !547, metadata !"x", metadata !19, i32 67109595, metadata !180, i32 0, metadata !1261} ; [ DW_TAG_arg_variable ] [x] [line 731]
!1267 = metadata !{i32 731, i32 0, metadata !547, metadata !1261}
!1268 = metadata !{i32 786689, metadata !547, metadata !"v", metadata !19, i32 83886811, metadata !180, i32 0, metadata !1261} ; [ DW_TAG_arg_variable ] [v] [line 731]
!1269 = metadata !{i32 786689, metadata !547, metadata !"box", metadata !19, i32 100664027, metadata !253, i32 0, metadata !1261} ; [ DW_TAG_arg_variable ] [box] [line 731]
!1270 = metadata !{i32 786689, metadata !288, metadata !"outfile", metadata !19, i32 16777935, metadata !30, i32 0, metadata !1271} ; [ DW_TAG_arg_variable ] [outfile] [line 719]
!1271 = metadata !{i32 733, i32 0, metadata !547, metadata !1261}
!1272 = metadata !{i32 719, i32 0, metadata !288, metadata !1271}
!1273 = metadata !{i32 786689, metadata !288, metadata !"title", metadata !19, i32 33555151, metadata !30, i32 0, metadata !1271} ; [ DW_TAG_arg_variable ] [title] [line 719]
!1274 = metadata !{i32 786689, metadata !288, metadata !"atoms", metadata !19, i32 50332367, metadata !103, i32 0, metadata !1271} ; [ DW_TAG_arg_variable ] [atoms] [line 719]
!1275 = metadata !{i32 3}
!1276 = metadata !{i32 786689, metadata !288, metadata !"pr", metadata !19, i32 67109583, metadata !22, i32 0, metadata !1271} ; [ DW_TAG_arg_variable ] [pr] [line 719]
!1277 = metadata !{i32 786689, metadata !288, metadata !"x", metadata !19, i32 83886800, metadata !180, i32 0, metadata !1271} ; [ DW_TAG_arg_variable ] [x] [line 720]
!1278 = metadata !{i32 720, i32 0, metadata !288, metadata !1271}
!1279 = metadata !{i32 786689, metadata !288, metadata !"v", metadata !19, i32 100664016, metadata !180, i32 0, metadata !1271} ; [ DW_TAG_arg_variable ] [v] [line 720]
!1280 = metadata !{i32 786689, metadata !288, metadata !"box", metadata !19, i32 117441232, metadata !253, i32 0, metadata !1271} ; [ DW_TAG_arg_variable ] [box] [line 720]
!1281 = metadata !{i32 724, i32 0, metadata !288, metadata !1271}
!1282 = metadata !{i32 786688, metadata !288, metadata !"out", metadata !19, i32 722, metadata !23, i32 0, metadata !1271} ; [ DW_TAG_auto_variable ] [out] [line 722]
!1283 = metadata !{i32 725, i32 0, metadata !288, metadata !1271}
!1284 = metadata !{i32 727, i32 0, metadata !288, metadata !1271}
!1285 = metadata !{i32 798, i32 0, metadata !1262, null}
!1286 = metadata !{i32 800, i32 0, metadata !1262, null}
!1287 = metadata !{i32 801, i32 0, metadata !1262, null}
!1288 = metadata !{i32 802, i32 0, metadata !1262, null}
!1289 = metadata !{i32 803, i32 0, metadata !1262, null}
!1290 = metadata !{i32 804, i32 0, metadata !1262, null}
!1291 = metadata !{i32 805, i32 0, metadata !1262, null}
!1292 = metadata !{i32 806, i32 0, metadata !1262, null}
!1293 = metadata !{i32 807, i32 0, metadata !1262, null}
!1294 = metadata !{i32 808, i32 0, metadata !1262, null}
!1295 = metadata !{i32 809, i32 0, metadata !1296, null}
!1296 = metadata !{i32 786443, metadata !1, metadata !1262, i32 808, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1297 = metadata !{i32 810, i32 0, metadata !1296, null}
!1298 = metadata !{i32 811, i32 0, metadata !1296, null}
!1299 = metadata !{i32 812, i32 0, metadata !1262, null}
!1300 = metadata !{i32 786689, metadata !555, metadata !"a", metadata !557, i32 16777513, metadata !253, i32 0, metadata !1301} ; [ DW_TAG_arg_variable ] [a] [line 297]
!1301 = metadata !{i32 813, i32 0, metadata !1262, null}
!1302 = metadata !{i32 297, i32 0, metadata !555, metadata !1301}
!1303 = metadata !{i32 299, i32 0, metadata !1221, metadata !1301}
!1304 = metadata !{i32 786689, metadata !563, metadata !"a", metadata !557, i32 16777486, metadata !566, i32 0, metadata !1303} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1305 = metadata !{i32 270, i32 0, metadata !563, metadata !1303}
!1306 = metadata !{i32 786689, metadata !563, metadata !"b", metadata !557, i32 33554702, metadata !568, i32 0, metadata !1303} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1307 = metadata !{i32 272, i32 0, metadata !563, metadata !1303}
!1308 = metadata !{i32 273, i32 0, metadata !563, metadata !1303}
!1309 = metadata !{i32 274, i32 0, metadata !563, metadata !1303}
!1310 = metadata !{i32 300, i32 0, metadata !1221, metadata !1301}
!1311 = metadata !{i32 786689, metadata !563, metadata !"a", metadata !557, i32 16777486, metadata !566, i32 0, metadata !1310} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1312 = metadata !{i32 270, i32 0, metadata !563, metadata !1310}
!1313 = metadata !{i32 786689, metadata !563, metadata !"b", metadata !557, i32 33554702, metadata !568, i32 0, metadata !1310} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1314 = metadata !{i32 272, i32 0, metadata !563, metadata !1310}
!1315 = metadata !{i32 273, i32 0, metadata !563, metadata !1310}
!1316 = metadata !{i32 274, i32 0, metadata !563, metadata !1310}
!1317 = metadata !{i32 301, i32 0, metadata !1221, metadata !1301}
!1318 = metadata !{i32 786689, metadata !563, metadata !"a", metadata !557, i32 16777486, metadata !566, i32 0, metadata !1317} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1319 = metadata !{i32 270, i32 0, metadata !563, metadata !1317}
!1320 = metadata !{i32 786689, metadata !563, metadata !"b", metadata !557, i32 33554702, metadata !568, i32 0, metadata !1317} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1321 = metadata !{i32 272, i32 0, metadata !563, metadata !1317}
!1322 = metadata !{i32 273, i32 0, metadata !563, metadata !1317}
!1323 = metadata !{i32 274, i32 0, metadata !563, metadata !1317}
!1324 = metadata !{i32 814, i32 0, metadata !1262, null}
!1325 = metadata !{i32 815, i32 0, metadata !1262, null}
!1326 = metadata !{i32 816, i32 0, metadata !1262, null}
!1327 = metadata !{i32 817, i32 0, metadata !1262, null}
!1328 = metadata !{i32 821, i32 0, metadata !1262, null}
!1329 = metadata !{i32 822, i32 0, metadata !1262, null}
!1330 = metadata !{i32 823, i32 0, metadata !1262, null}
!1331 = metadata !{i32 824, i32 0, metadata !1262, null}
!1332 = metadata !{i32 828, i32 0, metadata !1262, null}
!1333 = metadata !{i32 829, i32 0, metadata !1262, null}
!1334 = metadata !{i32 831, i32 0, metadata !1262, null}
!1335 = metadata !{i32 832, i32 0, metadata !1262, null}
!1336 = metadata !{i32 833, i32 0, metadata !315, null}
!1337 = metadata !{i32 835, i32 0, metadata !328, null}
!1338 = metadata !{i32 839, i32 0, metadata !328, null}
!1339 = metadata !{i32 841, i32 0, metadata !328, null}
!1340 = metadata !{i32 842, i32 0, metadata !328, null}
!1341 = metadata !{i32 786689, metadata !541, metadata !"infile", metadata !19, i32 16777579, metadata !30, i32 0, metadata !1342} ; [ DW_TAG_arg_variable ] [infile] [line 363]
!1342 = metadata !{i32 844, i32 0, metadata !339, null}
!1343 = metadata !{i32 363, i32 0, metadata !541, metadata !1342}
!1344 = metadata !{i32 786689, metadata !541, metadata !"natoms", metadata !19, i32 33554795, metadata !158, i32 0, metadata !1342} ; [ DW_TAG_arg_variable ] [natoms] [line 363]
!1345 = metadata !{i32 366, i32 0, metadata !541, metadata !1342}
!1346 = metadata !{i32 368, i32 0, metadata !541, metadata !1342}
!1347 = metadata !{i32 786688, metadata !541, metadata !"in", metadata !19, i32 365, metadata !23, i32 0, metadata !1342} ; [ DW_TAG_auto_variable ] [in] [line 365]
!1348 = metadata !{i32 369, i32 0, metadata !541, metadata !1342}
!1349 = metadata !{i32 370, i32 0, metadata !541, metadata !1342}
!1350 = metadata !{i32 371, i32 0, metadata !541, metadata !1342}
!1351 = metadata !{i32 845, i32 0, metadata !339, null}
!1352 = metadata !{i32 847, i32 0, metadata !339, null}
!1353 = metadata !{i32 848, i32 0, metadata !339, null}
!1354 = metadata !{i32 849, i32 0, metadata !339, null}
!1355 = metadata !{i32 850, i32 0, metadata !339, null}
!1356 = metadata !{i32 851, i32 0, metadata !339, null}
!1357 = metadata !{i32 852, i32 0, metadata !339, null}
!1358 = metadata !{i32 853, i32 0, metadata !339, null}
!1359 = metadata !{i32 854, i32 0, metadata !339, null}
!1360 = metadata !{i32 855, i32 0, metadata !339, null}
!1361 = metadata !{i32 856, i32 0, metadata !339, null}
!1362 = metadata !{i32 860, i32 0, metadata !339, null}
!1363 = metadata !{i32 861, i32 0, metadata !339, null}
!1364 = metadata !{i32 862, i32 0, metadata !339, null}
!1365 = metadata !{i32 863, i32 0, metadata !339, null}
!1366 = metadata !{i32 867, i32 0, metadata !338, null}
!1367 = metadata !{i32 868, i32 0, metadata !338, null}
!1368 = metadata !{i32 869, i32 0, metadata !338, null}
!1369 = metadata !{i32 871, i32 0, metadata !338, null}
!1370 = metadata !{i32 873, i32 0, metadata !339, null}
!1371 = metadata !{i32 874, i32 0, metadata !339, null}
!1372 = metadata !{i32 875, i32 0, metadata !328, null}
!1373 = metadata !{i32 877, i32 0, metadata !354, null}
!1374 = metadata !{i32 878, i32 0, metadata !354, null}
!1375 = metadata !{i32 881, i32 0, metadata !354, null}
!1376 = metadata !{i32 883, i32 0, metadata !354, null}
!1377 = metadata !{i32 884, i32 0, metadata !354, null}
!1378 = metadata !{i32 885, i32 0, metadata !354, null}
!1379 = metadata !{i32 887, i32 0, metadata !354, null}
!1380 = metadata !{i32 888, i32 0, metadata !354, null}
!1381 = metadata !{i32 889, i32 0, metadata !354, null}
!1382 = metadata !{i32 890, i32 0, metadata !1383, null}
!1383 = metadata !{i32 786443, metadata !1, metadata !354, i32 889, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1384 = metadata !{i32 891, i32 0, metadata !1383, null}
!1385 = metadata !{i32 892, i32 0, metadata !1383, null}
!1386 = metadata !{i32 893, i32 0, metadata !354, null}
!1387 = metadata !{i32 894, i32 0, metadata !354, null}
!1388 = metadata !{i32 532, i32 0, metadata !531, metadata !1389}
!1389 = metadata !{i32 896, i32 0, metadata !1390, null}
!1390 = metadata !{i32 786443, metadata !1, metadata !354, i32 894, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1391 = metadata !{i32 786689, metadata !531, metadata !"infile", metadata !19, i32 16777748, metadata !30, i32 0, metadata !1389} ; [ DW_TAG_arg_variable ] [infile] [line 532]
!1392 = metadata !{i32 786689, metadata !531, metadata !"title", metadata !19, i32 33554964, metadata !30, i32 0, metadata !1389} ; [ DW_TAG_arg_variable ] [title] [line 532]
!1393 = metadata !{i32 786689, metadata !531, metadata !"atoms", metadata !19, i32 50332181, metadata !103, i32 0, metadata !1389} ; [ DW_TAG_arg_variable ] [atoms] [line 533]
!1394 = metadata !{i32 533, i32 0, metadata !531, metadata !1389}
!1395 = metadata !{i32 786689, metadata !531, metadata !"x", metadata !19, i32 67109397, metadata !180, i32 0, metadata !1389} ; [ DW_TAG_arg_variable ] [x] [line 533]
!1396 = metadata !{i32 786689, metadata !531, metadata !"v", metadata !19, i32 83886613, metadata !180, i32 0, metadata !1389} ; [ DW_TAG_arg_variable ] [v] [line 533]
!1397 = metadata !{i32 786689, metadata !531, metadata !"box", metadata !19, i32 100663829, metadata !253, i32 0, metadata !1389} ; [ DW_TAG_arg_variable ] [box] [line 533]
!1398 = metadata !{i32 536, i32 0, metadata !531, metadata !1389}
!1399 = metadata !{i32 539, i32 0, metadata !531, metadata !1389}
!1400 = metadata !{i32 786688, metadata !531, metadata !"in", metadata !19, i32 535, metadata !23, i32 0, metadata !1389} ; [ DW_TAG_auto_variable ] [in] [line 535]
!1401 = metadata !{i32 541, i32 0, metadata !531, metadata !1389}
!1402 = metadata !{i32 543, i32 0, metadata !531, metadata !1389}
!1403 = metadata !{i32 544, i32 0, metadata !531, metadata !1389}
!1404 = metadata !{i32 897, i32 0, metadata !1390, null}
!1405 = metadata !{i32 899, i32 0, metadata !1390, null}
!1406 = metadata !{i32 900, i32 0, metadata !1390, null}
!1407 = metadata !{i32 901, i32 0, metadata !1390, null}
!1408 = metadata !{i32 902, i32 0, metadata !1390, null}
!1409 = metadata !{i32 903, i32 0, metadata !1390, null}
!1410 = metadata !{i32 904, i32 0, metadata !1390, null}
!1411 = metadata !{i32 905, i32 0, metadata !1390, null}
!1412 = metadata !{i32 906, i32 0, metadata !1390, null}
!1413 = metadata !{i32 907, i32 0, metadata !1390, null}
!1414 = metadata !{i32 786689, metadata !555, metadata !"b", metadata !557, i32 33554729, metadata !253, i32 0, metadata !1415} ; [ DW_TAG_arg_variable ] [b] [line 297]
!1415 = metadata !{i32 908, i32 0, metadata !1390, null}
!1416 = metadata !{i32 297, i32 0, metadata !555, metadata !1415}
!1417 = metadata !{i32 299, i32 0, metadata !1221, metadata !1415}
!1418 = metadata !{i32 786689, metadata !563, metadata !"a", metadata !557, i32 16777486, metadata !566, i32 0, metadata !1417} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1419 = metadata !{i32 270, i32 0, metadata !563, metadata !1417}
!1420 = metadata !{i32 786689, metadata !563, metadata !"b", metadata !557, i32 33554702, metadata !568, i32 0, metadata !1417} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1421 = metadata !{i32 272, i32 0, metadata !563, metadata !1417}
!1422 = metadata !{i32 273, i32 0, metadata !563, metadata !1417}
!1423 = metadata !{i32 274, i32 0, metadata !563, metadata !1417}
!1424 = metadata !{i32 300, i32 0, metadata !1221, metadata !1415}
!1425 = metadata !{i32 786689, metadata !563, metadata !"a", metadata !557, i32 16777486, metadata !566, i32 0, metadata !1424} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1426 = metadata !{i32 270, i32 0, metadata !563, metadata !1424}
!1427 = metadata !{i32 786689, metadata !563, metadata !"b", metadata !557, i32 33554702, metadata !568, i32 0, metadata !1424} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1428 = metadata !{i32 272, i32 0, metadata !563, metadata !1424}
!1429 = metadata !{i32 273, i32 0, metadata !563, metadata !1424}
!1430 = metadata !{i32 274, i32 0, metadata !563, metadata !1424}
!1431 = metadata !{i32 301, i32 0, metadata !1221, metadata !1415}
!1432 = metadata !{i32 786689, metadata !563, metadata !"a", metadata !557, i32 16777486, metadata !566, i32 0, metadata !1431} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1433 = metadata !{i32 270, i32 0, metadata !563, metadata !1431}
!1434 = metadata !{i32 786689, metadata !563, metadata !"b", metadata !557, i32 33554702, metadata !568, i32 0, metadata !1431} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1435 = metadata !{i32 272, i32 0, metadata !563, metadata !1431}
!1436 = metadata !{i32 273, i32 0, metadata !563, metadata !1431}
!1437 = metadata !{i32 274, i32 0, metadata !563, metadata !1431}
!1438 = metadata !{i32 909, i32 0, metadata !1390, null}
!1439 = metadata !{i32 913, i32 0, metadata !1390, null}
!1440 = metadata !{i32 914, i32 0, metadata !1390, null}
!1441 = metadata !{i32 918, i32 0, metadata !1390, null}
!1442 = metadata !{i32 919, i32 0, metadata !1390, null}
!1443 = metadata !{i32 921, i32 0, metadata !1390, null}
!1444 = metadata !{i32 923, i32 0, metadata !1390, null}
!1445 = metadata !{i32 924, i32 0, metadata !1390, null}
!1446 = metadata !{i32 925, i32 0, metadata !1390, null}
!1447 = metadata !{i32 928, i32 0, metadata !1390, null}
!1448 = metadata !{i32 929, i32 0, metadata !1390, null}
!1449 = metadata !{i32 930, i32 0, metadata !1390, null}
!1450 = metadata !{i32 931, i32 0, metadata !1390, null}
!1451 = metadata !{i32 932, i32 0, metadata !1452, null}
!1452 = metadata !{i32 786443, metadata !1, metadata !1390, i32 932, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1453 = metadata !{i32 933, i32 0, metadata !1454, null}
!1454 = metadata !{i32 786443, metadata !1, metadata !1452, i32 932, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1455 = metadata !{i32 934, i32 0, metadata !1454, null}
!1456 = metadata !{i64 0, i64 4, metadata !739, i64 4, i64 4, metadata !739, i64 8, i64 4, metadata !739, i64 12, i64 4, metadata !739, i64 16, i64 2, metadata !1457, i64 18, i64 2, metadata !1457, i64 20, i64 4, metadata !692, i64 24, i64 4, metadata !692, i64 28, i64 9, metadata !682, i64 37, i64 1, metadata !682}
!1457 = metadata !{metadata !"short", metadata !682}
!1458 = metadata !{i32 937, i32 0, metadata !1390, null}
!1459 = metadata !{i32 938, i32 0, metadata !1390, null}
!1460 = metadata !{i32 939, i32 0, metadata !1461, null}
!1461 = metadata !{i32 786443, metadata !1, metadata !1390, i32 939, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1462 = metadata !{i32 940, i32 0, metadata !1461, null}
!1463 = metadata !{i32 942, i32 0, metadata !1390, null}
!1464 = metadata !{i32 943, i32 0, metadata !1390, null}
!1465 = metadata !{i32 944, i32 0, metadata !1466, null}
!1466 = metadata !{i32 786443, metadata !1, metadata !1390, i32 944, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1467 = metadata !{i32 945, i32 0, metadata !1466, null}
!1468 = metadata !{i32 948, i32 0, metadata !1469, null}
!1469 = metadata !{i32 786443, metadata !1, metadata !1470, i32 947, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1470 = metadata !{i32 786443, metadata !1, metadata !1390, i32 947, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1471 = metadata !{i32 947, i32 0, metadata !1470, null}
!1472 = metadata !{i32 949, i32 0, metadata !1469, null}
!1473 = metadata !{i32 950, i32 0, metadata !1474, null}
!1474 = metadata !{i32 786443, metadata !1, metadata !1469, i32 949, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/confio.c]
!1475 = metadata !{i32 951, i32 0, metadata !1474, null}
!1476 = metadata !{i32 953, i32 0, metadata !1474, null}
!1477 = metadata !{i32 960, i32 0, metadata !1390, null}
!1478 = metadata !{i32 961, i32 0, metadata !1390, null}
!1479 = metadata !{i32 962, i32 0, metadata !354, null}
