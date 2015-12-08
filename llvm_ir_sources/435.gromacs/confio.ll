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
  %call = call i64 @ftell(%struct._IO_FILE* %fp) #5
  %cmp = icmp eq i64 %call, 0
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 0) #5
  %0 = load %struct.t_symtab** @read_g96_conf.symtab, align 8, !tbaa !0
  %tobool = icmp eq %struct.t_symtab* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 191, i32 1, i32 16) #5
  %1 = bitcast i8* %call1 to %struct.t_symtab*
  store %struct.t_symtab* %1, %struct.t_symtab** @read_g96_conf.symtab, align 8, !tbaa !0
  call void @open_symtab(%struct.t_symtab* %1) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  br i1 %cmp, label %while.cond.preheader, label %do.body.preheader

while.cond.preheader:                             ; preds = %if.end
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  %2 = load i32* %bTitle, align 4, !tbaa !3
  %tobool4243 = icmp eq i32 %2, 0
  br i1 %tobool4243, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %call5 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #5
  %tobool6 = icmp eq i8* %call5, null
  br i1 %tobool6, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %call7 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0)) #6
  %cmp8 = icmp eq i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %bTitle, align 4, !tbaa !3
  br i1 %cmp8, label %while.end, label %land.rhs

while.end:                                        ; preds = %while.body, %land.rhs, %while.cond.preheader
  %title = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  %3 = load i8** %title, align 8, !tbaa !0
  %tobool11 = icmp eq i8* %3, null
  br i1 %tobool11, label %land.rhs18, label %if.then12

if.then12:                                        ; preds = %while.end
  %call14 = call i8* @fgets2(i8* %3, i32 4096, %struct._IO_FILE* %fp) #5
  br label %land.rhs18

land.rhs18:                                       ; preds = %while.end, %if.then12, %while.body22
  %call19 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #5
  %tobool20 = icmp eq i8* %call19, null
  br i1 %tobool20, label %while.end26, label %while.body22

while.body22:                                     ; preds = %land.rhs18
  %call23 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %while.end26, label %land.rhs18

while.end26:                                      ; preds = %land.rhs18, %while.body22
  %call27 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #5
  br label %do.body.preheader

do.body.preheader:                                ; preds = %while.end26, %if.end
  %bTime47 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %bStep = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %bAtoms71 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  %4 = bitcast i32* %atnr.i to i8*
  %5 = bitcast i32* %resnr.i to i8*
  %6 = bitcast double* %db1.i to i8*
  %7 = bitcast double* %db2.i to i8*
  %8 = bitcast double* %db3.i to i8*
  %9 = getelementptr inbounds [4096 x i8]* %anm.i, i64 0, i64 0
  %10 = getelementptr inbounds [4096 x i8]* %resnm.i, i64 0, i64 0
  %natoms1.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %atoms2.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  %x.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %11 = bitcast [4096 x i8]* %anm.i to i32*
  %12 = bitcast [4096 x i8]* %resnm.i to i32*
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %13 = bitcast double* %db1.i210 to i8*
  %14 = bitcast double* %db2.i211 to i8*
  %15 = bitcast double* %db3.i212 to i8*
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %land.rhs151
  %natoms.0 = phi i32 [ %natoms.2, %land.rhs151 ], [ 0, %do.body.preheader ]
  %call29 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #6
  %cmp30 = icmp eq i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0)) #6
  %cmp33 = icmp eq i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  br i1 %cmp33, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.body
  %call36 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #6
  %cmp37 = icmp eq i32 %call36, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.body
  %16 = phi i1 [ true, %do.body ], [ %cmp37, %lor.rhs ]
  %lor.ext = zext i1 %16 to i32
  %call39 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i64 8) #6
  %cmp40 = icmp eq i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #6
  %cmp43 = icmp eq i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  br i1 %cmp30, label %if.then46, label %if.end65

if.then46:                                        ; preds = %lor.end
  %17 = load i32* %bTime47, align 4, !tbaa !3
  %tobool48 = icmp eq i32 %17, 0
  br i1 %tobool48, label %land.lhs.true, label %if.end65

land.lhs.true:                                    ; preds = %if.then46
  %18 = load i32* %bX, align 4, !tbaa !3
  %tobool49 = icmp eq i32 %18, 0
  br i1 %tobool49, label %if.then50, label %if.end65

if.then50:                                        ; preds = %land.lhs.true
  store i32 %conv31, i32* %bStep, align 4, !tbaa !3
  store i32 %conv31, i32* %bTime47, align 4, !tbaa !3
  br label %do.body52

do.body52:                                        ; preds = %do.body52, %if.then50
  %call53 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #5
  %cmp54 = icmp eq i8* %call53, null
  %cmp54.not = xor i1 %cmp54, true
  %19 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16, !tbaa !1
  %cmp59 = icmp eq i8 %19, 35
  %or.cond = and i1 %cmp59, %cmp54.not
  br i1 %or.cond, label %do.body52, label %do.end

do.end:                                           ; preds = %do.body52
  %conv55 = zext i1 %cmp54 to i32
  %call62 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32* %step, double* %db1) #5
  %20 = load double* %db1, align 8, !tbaa !4
  %conv63 = fptrunc double %20 to float
  store float %conv63, float* %time, align 4, !tbaa !5
  br label %if.end65

if.end65:                                         ; preds = %if.then46, %land.lhs.true, %do.end, %lor.end
  %bFinished.1 = phi i32 [ %conv55, %do.end ], [ 0, %lor.end ], [ 1, %land.lhs.true ], [ 1, %if.then46 ]
  br i1 %16, label %if.then67, label %if.end76

if.then67:                                        ; preds = %if.end65
  %21 = load i32* %bX, align 4, !tbaa !3
  %tobool69 = icmp eq i32 %21, 0
  br i1 %tobool69, label %if.then70, label %if.end76

if.then70:                                        ; preds = %if.then67
  store i32 %conv34, i32* %bAtoms71, align 4, !tbaa !3
  store i32 %lor.ext, i32* %bX, align 4, !tbaa !3
  %22 = load %struct.t_symtab** @read_g96_conf.symtab, align 8, !tbaa !0
  call void @llvm.lifetime.start(i64 4, i8* %4) #4
  call void @llvm.lifetime.start(i64 4, i8* %5) #4
  call void @llvm.lifetime.start(i64 1, i8* %c1.i) #4
  call void @llvm.lifetime.start(i64 1, i8* %c2.i) #4
  call void @llvm.lifetime.start(i64 8, i8* %6) #4
  call void @llvm.lifetime.start(i64 8, i8* %7) #4
  call void @llvm.lifetime.start(i64 8, i8* %8) #4
  call void @llvm.lifetime.start(i64 4096, i8* %9) #4
  call void @llvm.lifetime.start(i64 4096, i8* %10) #4
  %23 = load i32* %natoms1.i, align 4, !tbaa !3
  %24 = load %struct.t_atoms** %atoms2.i, align 8, !tbaa !0
  br i1 %16, label %if.then.i, label %read_g96_pos.exit

if.then.i:                                        ; preds = %if.then70
  %..i = select i1 %cmp33, i64 24, i64 0
  %add.ptr.i = getelementptr inbounds [4097 x i8]* @read_g96_conf.line, i64 0, i64 %..i
  %cmp18.i = icmp eq i32 %23, -1
  %tobool25.i = icmp eq %struct.t_atoms* %24, null
  %atomname.i = getelementptr inbounds %struct.t_atoms* %24, i64 0, i32 2
  %atom.i = getelementptr inbounds %struct.t_atoms* %24, i64 0, i32 1
  %nr.i = getelementptr inbounds %struct.t_atoms* %24, i64 0, i32 0
  %resname.i = getelementptr inbounds %struct.t_atoms* %24, i64 0, i32 6
  %nres.i = getelementptr inbounds %struct.t_atoms* %24, i64 0, i32 5
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end89.i, %if.then.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.end89.i ], [ 0, %if.then.i ]
  %natoms.0.ph.i = phi i32 [ %inc90.i, %if.end89.i ], [ 0, %if.then.i ]
  %oldres.0.ph.i = phi i32 [ %oldres.2.i, %if.end89.i ], [ -666, %if.then.i ]
  %newres.0.ph.i = phi i32 [ %newres.2.i, %if.end89.i ], [ 0, %if.then.i ]
  %bEnd.0.ph.i = phi i32 [ %conv.i, %if.end89.i ], [ 0, %if.then.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %while.cond.outer.i
  %bEnd.0.i = phi i32 [ %conv.i, %while.body.i ], [ %bEnd.0.ph.i, %while.cond.outer.i ]
  %tobool5.i = icmp eq i32 %bEnd.0.i, 0
  br i1 %tobool5.i, label %land.rhs.i, label %while.end.i

land.rhs.i:                                       ; preds = %while.cond.i
  %call.i = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #5
  %tobool6.i = icmp eq i8* %call.i, null
  br i1 %tobool6.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %call7.i = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3) #6
  %cmp.i = icmp eq i32 %call7.i, 0
  %conv.i = zext i1 %cmp.i to i32
  %25 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16, !tbaa !1
  %cmp10.i = icmp eq i8 %25, 35
  %or.cond.i = or i1 %cmp.i, %cmp10.i
  br i1 %or.cond.i, label %while.cond.i, label %if.then12.i

if.then12.i:                                      ; preds = %while.body.i
  %call13.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr.i, i8* getelementptr inbounds ([16 x i8]* @.str71, i64 0, i64 0), double* %db1.i, double* %db2.i, double* %db3.i) #5
  %cmp14.i = icmp eq i32 %call13.i, 3
  br i1 %cmp14.i, label %if.end17.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.then12.i
  %26 = add nsw i64 %indvars.iv.i, 1
  %27 = trunc i64 %26 to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str75, i64 0, i64 0), i32 %27, i8* %infile) #5
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.then12.i
  %28 = trunc i64 %indvars.iv.i to i32
  %cmp21.i = icmp slt i32 %28, %23
  %or.cond1.i = or i1 %cmp18.i, %cmp21.i
  br i1 %or.cond1.i, label %if.end24.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end17.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str76, i64 0, i64 0), i32 %28, i8* %infile, i32 %23) #5
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.end17.i
  br i1 %tobool25.i, label %if.end71.i, label %land.lhs.true28.i

land.lhs.true28.i:                                ; preds = %if.end24.i
  %29 = load i32* %bAtoms71, align 4, !tbaa !3
  %tobool30.i = icmp eq i32 %29, 0
  br i1 %tobool30.i, label %if.end46.i, label %land.lhs.true31.i

land.lhs.true31.i:                                ; preds = %land.lhs.true28.i
  %call33.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str77, i64 0, i64 0), i32* %resnr.i, i8* %c1.i, i8* %10, i8* %c2.i, i8* %9, i32* %atnr.i) #5
  %cmp34.i = icmp eq i32 %call33.i, 6
  br i1 %cmp34.i, label %if.end46.i, label %if.then36.i

if.then36.i:                                      ; preds = %land.lhs.true31.i
  %cmp37.i = icmp sgt i32 %oldres.0.ph.i, -1
  br i1 %cmp37.i, label %if.then39.i, label %if.else40.i

if.then39.i:                                      ; preds = %if.then36.i
  store i32 %oldres.0.ph.i, i32* %resnr.i, align 4, !tbaa !3
  br label %if.end43.i

if.else40.i:                                      ; preds = %if.then36.i
  store i32 1, i32* %resnr.i, align 4, !tbaa !3
  store i32 4144959, i32* %12, align 16
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else40.i, %if.then39.i
  store i32 4144959, i32* %11, align 16
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end43.i, %land.lhs.true31.i, %land.lhs.true28.i
  %call48.i = call i8** @put_symtab(%struct.t_symtab* %22, i8* %9) #5
  %30 = load i8**** %atomname.i, align 8, !tbaa !0
  %arrayidx49.i = getelementptr inbounds i8*** %30, i64 %indvars.iv.i
  store i8** %call48.i, i8*** %arrayidx49.i, align 8, !tbaa !0
  %31 = load i32* %resnr.i, align 4, !tbaa !3
  %cmp50.i = icmp eq i32 %31, %oldres.0.ph.i
  br i1 %cmp50.i, label %if.end67.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.end46.i
  %32 = load i32* %nr.i, align 4, !tbaa !3
  %cmp53.i = icmp slt i32 %newres.0.ph.i, %32
  br i1 %cmp53.i, label %if.end57.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.then52.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str65, i64 0, i64 0), i8* %infile, i32 %32) #5
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then55.i, %if.then52.i
  %call59.i = call i8** @put_symtab(%struct.t_symtab* %22, i8* %10) #5
  %idxprom60.i = sext i32 %newres.0.ph.i to i64
  %33 = load i8**** %resname.i, align 8, !tbaa !0
  %arrayidx61.i = getelementptr inbounds i8*** %33, i64 %idxprom60.i
  store i8** %call59.i, i8*** %arrayidx61.i, align 8, !tbaa !0
  %inc.i = add nsw i32 %newres.0.ph.i, 1
  %34 = load i32* %nres.i, align 4, !tbaa !3
  %cmp62.i = icmp slt i32 %newres.0.ph.i, %34
  br i1 %cmp62.i, label %if.end67.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.end57.i
  store i32 %inc.i, i32* %nres.i, align 4, !tbaa !3
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then64.i, %if.end57.i, %if.end46.i
  %oldres.1.i = phi i32 [ %31, %if.then64.i ], [ %31, %if.end57.i ], [ %oldres.0.ph.i, %if.end46.i ]
  %newres.1.i = phi i32 [ %inc.i, %if.then64.i ], [ %inc.i, %if.end57.i ], [ %newres.0.ph.i, %if.end46.i ]
  store i32 %newres.1.i, i32* %resnr.i, align 4, !tbaa !3
  %sub.i = add nsw i32 %newres.1.i, -1
  %35 = load %struct.t_atom** %atom.i, align 8, !tbaa !0
  %resnr70.i = getelementptr inbounds %struct.t_atom* %35, i64 %indvars.iv.i, i32 7
  store i32 %sub.i, i32* %resnr70.i, align 4, !tbaa !3
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end67.i, %if.end24.i
  %oldres.2.i = phi i32 [ %oldres.1.i, %if.end67.i ], [ %oldres.0.ph.i, %if.end24.i ]
  %newres.2.i = phi i32 [ %newres.1.i, %if.end67.i ], [ %newres.0.ph.i, %if.end24.i ]
  %36 = load [3 x float]** %x.i, align 8, !tbaa !0
  %tobool72.i = icmp eq [3 x float]* %36, null
  br i1 %tobool72.i, label %if.end89.i, label %if.then73.i

if.then73.i:                                      ; preds = %if.end71.i
  %37 = load double* %db1.i, align 8, !tbaa !4
  %conv74.i = fptrunc double %37 to float
  %arrayidx78.i = getelementptr inbounds [3 x float]* %36, i64 %indvars.iv.i, i64 0
  store float %conv74.i, float* %arrayidx78.i, align 4, !tbaa !5
  %38 = load double* %db2.i, align 8, !tbaa !4
  %conv79.i = fptrunc double %38 to float
  %arrayidx83.i = getelementptr inbounds [3 x float]* %36, i64 %indvars.iv.i, i64 1
  store float %conv79.i, float* %arrayidx83.i, align 4, !tbaa !5
  %39 = load double* %db3.i, align 8, !tbaa !4
  %conv84.i = fptrunc double %39 to float
  %arrayidx88.i = getelementptr inbounds [3 x float]* %36, i64 %indvars.iv.i, i64 2
  store float %conv84.i, float* %arrayidx88.i, align 4, !tbaa !5
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then73.i, %if.end71.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %inc90.i = add nsw i32 %natoms.0.ph.i, 1
  br label %while.cond.outer.i

while.end.i:                                      ; preds = %land.rhs.i, %while.cond.i
  %cmp95.i = icmp eq i32 %natoms.0.ph.i, %23
  %or.cond2.i = or i1 %cmp18.i, %cmp95.i
  br i1 %or.cond2.i, label %read_g96_pos.exit, label %if.then97.i

if.then97.i:                                      ; preds = %while.end.i
  %40 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call98.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([61 x i8]* @.str79, i64 0, i64 0), i32 %natoms.0.ph.i, i8* %infile, i32 %23) #5
  br label %read_g96_pos.exit

read_g96_pos.exit:                                ; preds = %if.then70, %while.end.i, %if.then97.i
  %natoms.1.i = phi i32 [ %natoms.0.ph.i, %if.then97.i ], [ %natoms.0.ph.i, %while.end.i ], [ 0, %if.then70 ]
  store i32 %natoms.1.i, i32* %natoms1.i, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 4096, i8* %10) #4
  call void @llvm.lifetime.end(i64 4096, i8* %9) #4
  call void @llvm.lifetime.end(i64 4, i8* %4) #4
  call void @llvm.lifetime.end(i64 4, i8* %5) #4
  call void @llvm.lifetime.end(i64 1, i8* %c1.i) #4
  call void @llvm.lifetime.end(i64 1, i8* %c2.i) #4
  call void @llvm.lifetime.end(i64 8, i8* %6) #4
  call void @llvm.lifetime.end(i64 8, i8* %7) #4
  call void @llvm.lifetime.end(i64 8, i8* %8) #4
  br label %if.end76

if.end76:                                         ; preds = %if.then67, %read_g96_pos.exit, %if.end65
  %bFinished.2 = phi i32 [ %bFinished.1, %read_g96_pos.exit ], [ %bFinished.1, %if.end65 ], [ 1, %if.then67 ]
  %natoms.1 = phi i32 [ %natoms.1.i, %read_g96_pos.exit ], [ %natoms.0, %if.end65 ], [ %natoms.0, %if.then67 ]
  %41 = load [3 x float]** %v, align 8, !tbaa !0
  %tobool77 = icmp eq [3 x float]* %41, null
  %cmp40.not = xor i1 %cmp40, true
  %brmerge = or i1 %tobool77, %cmp40.not
  br i1 %brmerge, label %if.end82, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end76
  store i32 %conv41, i32* %bV, align 4, !tbaa !3
  call void @llvm.lifetime.start(i64 8, i8* %13) #4
  call void @llvm.lifetime.start(i64 8, i8* %14) #4
  call void @llvm.lifetime.start(i64 8, i8* %15) #4
  %42 = load i32* %natoms1.i, align 4, !tbaa !3
  br i1 %cmp40, label %if.then.i219, label %if.end82

if.then.i219:                                     ; preds = %land.lhs.true.i
  %call.i215 = call i32 @strcmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str70, i64 0, i64 0)) #6
  %cmp.i216 = icmp eq i32 %call.i215, 0
  %..i217 = select i1 %cmp.i216, i64 0, i64 24
  %add.ptr.i218 = getelementptr inbounds [4097 x i8]* @read_g96_conf.line, i64 0, i64 %..i217
  %cmp20.i = icmp eq i32 %42, -1
  br label %while.cond.outer.i223

while.cond.outer.i223:                            ; preds = %if.end44.i, %if.then.i219
  %indvars.iv.i220 = phi i64 [ %indvars.iv.next.i233, %if.end44.i ], [ 0, %if.then.i219 ]
  %bEnd.0.ph.i221 = phi i32 [ %conv.i229, %if.end44.i ], [ 0, %if.then.i219 ]
  %natoms.0.ph.i222 = phi i32 [ %inc.i234, %if.end44.i ], [ 0, %if.then.i219 ]
  br label %while.cond.i225

while.cond.i225:                                  ; preds = %while.body.i231, %while.cond.outer.i223
  %bEnd.0.i224 = phi i32 [ %conv.i229, %while.body.i231 ], [ %bEnd.0.ph.i221, %while.cond.outer.i223 ]
  %tobool4.i = icmp eq i32 %bEnd.0.i224, 0
  br i1 %tobool4.i, label %land.rhs.i227, label %while.end.i236

land.rhs.i227:                                    ; preds = %while.cond.i225
  %call5.i = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #5
  %tobool6.i226 = icmp eq i8* %call5.i, null
  br i1 %tobool6.i226, label %while.end.i236, label %while.body.i231

while.body.i231:                                  ; preds = %land.rhs.i227
  %call7.i228 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3) #6
  %cmp8.i = icmp eq i32 %call7.i228, 0
  %conv.i229 = zext i1 %cmp8.i to i32
  %43 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16, !tbaa !1
  %cmp12.i = icmp eq i8 %43, 35
  %or.cond.i230 = or i1 %cmp8.i, %cmp12.i
  br i1 %or.cond.i230, label %while.cond.i225, label %if.then14.i

if.then14.i:                                      ; preds = %while.body.i231
  %call15.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr.i218, i8* getelementptr inbounds ([16 x i8]* @.str71, i64 0, i64 0), double* %db1.i210, double* %db2.i211, double* %db3.i212) #5
  %cmp16.i = icmp eq i32 %call15.i, 3
  br i1 %cmp16.i, label %if.end19.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.then14.i
  %44 = add nsw i64 %indvars.iv.i220, 1
  %45 = trunc i64 %44 to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str72, i64 0, i64 0), i32 %45, i8* %infile) #5
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.then14.i
  %46 = trunc i64 %indvars.iv.i220 to i32
  %cmp23.i = icmp slt i32 %46, %42
  %or.cond1.i232 = or i1 %cmp20.i, %cmp23.i
  br i1 %or.cond1.i232, label %if.end26.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end19.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([51 x i8]* @.str73, i64 0, i64 0), i32 %46, i8* %infile, i32 %42) #5
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.end19.i
  %47 = load [3 x float]** %v, align 8, !tbaa !0
  %tobool28.i = icmp eq [3 x float]* %47, null
  br i1 %tobool28.i, label %if.end44.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end26.i
  %48 = load double* %db1.i210, align 8, !tbaa !4
  %conv30.i = fptrunc double %48 to float
  %arrayidx33.i = getelementptr inbounds [3 x float]* %47, i64 %indvars.iv.i220, i64 0
  store float %conv30.i, float* %arrayidx33.i, align 4, !tbaa !5
  %49 = load double* %db2.i211, align 8, !tbaa !4
  %conv34.i = fptrunc double %49 to float
  %arrayidx38.i = getelementptr inbounds [3 x float]* %47, i64 %indvars.iv.i220, i64 1
  store float %conv34.i, float* %arrayidx38.i, align 4, !tbaa !5
  %50 = load double* %db3.i212, align 8, !tbaa !4
  %conv39.i = fptrunc double %50 to float
  %arrayidx43.i = getelementptr inbounds [3 x float]* %47, i64 %indvars.iv.i220, i64 2
  store float %conv39.i, float* %arrayidx43.i, align 4, !tbaa !5
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then29.i, %if.end26.i
  %indvars.iv.next.i233 = add i64 %indvars.iv.i220, 1
  %inc.i234 = add nsw i32 %natoms.0.ph.i222, 1
  br label %while.cond.outer.i223

while.end.i236:                                   ; preds = %land.rhs.i227, %while.cond.i225
  %cmp49.i = icmp eq i32 %natoms.0.ph.i222, %42
  %or.cond2.i235 = or i1 %cmp20.i, %cmp49.i
  br i1 %or.cond2.i235, label %if.end82, label %if.then51.i

if.then51.i:                                      ; preds = %while.end.i236
  %51 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call52.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([60 x i8]* @.str74, i64 0, i64 0), i32 %natoms.0.ph.i222, i8* %infile, i32 %42) #5
  br label %if.end82

if.end82:                                         ; preds = %land.lhs.true.i, %if.then51.i, %while.end.i236, %if.end76
  %natoms.2 = phi i32 [ %natoms.1, %if.end76 ], [ %natoms.0.ph.i222, %if.then51.i ], [ %natoms.0.ph.i222, %while.end.i236 ], [ -1, %land.lhs.true.i ]
  br i1 %cmp43, label %if.then84, label %do.cond149

if.then84:                                        ; preds = %if.end82
  %bBox85 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 %conv44, i32* %bBox85, align 4, !tbaa !3
  %box = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25
  %52 = bitcast [3 x [3 x float]]* %box to i8*
  call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 36, i32 4, i1 false) #4
  %arrayidx109 = getelementptr inbounds [3 x [3 x float]]* %box, i64 0, i64 0, i64 0
  %arrayidx113 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  %arrayidx117 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  %arrayidx124 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1
  %arrayidx128 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2
  %arrayidx132 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0
  %arrayidx136 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2
  %arrayidx140 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0
  %arrayidx144 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1
  br label %land.rhs88

land.rhs88:                                       ; preds = %while.cond86.backedge, %if.then84
  %call89 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #5
  %tobool90 = icmp eq i8* %call89, null
  br i1 %tobool90, label %do.end155, label %while.body92

while.body92:                                     ; preds = %land.rhs88
  %call93 = call i32 @strncmp(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3) #6
  %cmp94 = icmp eq i32 %call93, 0
  %53 = load i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), align 16, !tbaa !1
  %cmp99 = icmp eq i8 %53, 35
  %or.cond209 = or i1 %cmp94, %cmp99
  br i1 %or.cond209, label %while.cond86.backedge, label %if.then101

if.then101:                                       ; preds = %while.body92
  %call102 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), double* %db1, double* %db2, double* %db3, double* %db4, double* %db5, double* %db6, double* %db7, double* %db8, double* %db9) #5
  %cmp103 = icmp slt i32 %call102, 3
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.then101
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str11, i64 0, i64 0), i8* %infile) #5
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.then101
  %54 = load double* %db1, align 8, !tbaa !4
  %conv107 = fptrunc double %54 to float
  store float %conv107, float* %arrayidx109, align 4, !tbaa !5
  %55 = load double* %db2, align 8, !tbaa !4
  %conv110 = fptrunc double %55 to float
  store float %conv110, float* %arrayidx113, align 4, !tbaa !5
  %56 = load double* %db3, align 8, !tbaa !4
  %conv114 = fptrunc double %56 to float
  store float %conv114, float* %arrayidx117, align 4, !tbaa !5
  %cmp118 = icmp eq i32 %call102, 9
  br i1 %cmp118, label %if.then120, label %while.cond86.backedge

while.cond86.backedge:                            ; preds = %if.end106, %if.then120, %while.body92
  br i1 %cmp94, label %do.end155, label %land.rhs88

if.then120:                                       ; preds = %if.end106
  %57 = load double* %db4, align 8, !tbaa !4
  %conv121 = fptrunc double %57 to float
  store float %conv121, float* %arrayidx124, align 4, !tbaa !5
  %58 = load double* %db5, align 8, !tbaa !4
  %conv125 = fptrunc double %58 to float
  store float %conv125, float* %arrayidx128, align 4, !tbaa !5
  %59 = load double* %db6, align 8, !tbaa !4
  %conv129 = fptrunc double %59 to float
  store float %conv129, float* %arrayidx132, align 4, !tbaa !5
  %60 = load double* %db7, align 8, !tbaa !4
  %conv133 = fptrunc double %60 to float
  store float %conv133, float* %arrayidx136, align 4, !tbaa !5
  %61 = load double* %db8, align 8, !tbaa !4
  %conv137 = fptrunc double %61 to float
  store float %conv137, float* %arrayidx140, align 4, !tbaa !5
  %62 = load double* %db9, align 8, !tbaa !4
  %conv141 = fptrunc double %62 to float
  store float %conv141, float* %arrayidx144, align 4, !tbaa !5
  br label %while.cond86.backedge

do.cond149:                                       ; preds = %if.end82
  %tobool150 = icmp eq i32 %bFinished.2, 0
  br i1 %tobool150, label %land.rhs151, label %do.end155

land.rhs151:                                      ; preds = %do.cond149
  %call152 = call i8* @fgets2(i8* getelementptr inbounds ([4097 x i8]* @read_g96_conf.line, i64 0, i64 0), i32 4096, %struct._IO_FILE* %fp) #5
  %tobool153 = icmp eq i8* %call152, null
  br i1 %tobool153, label %do.end155, label %do.body

do.end155:                                        ; preds = %land.rhs151, %do.cond149, %land.rhs88, %while.cond86.backedge
  %63 = load %struct.t_symtab** @read_g96_conf.symtab, align 8, !tbaa !0
  call void @close_symtab(%struct.t_symtab* %63) #5
  store i32 %natoms.2, i32* %natoms1.i, align 4, !tbaa !3
  ret i32 %natoms.2
}

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare void @clear_trxframe(%struct.t_trxframe*, i32) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @open_symtab(%struct.t_symtab*) #2

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare void @close_symtab(%struct.t_symtab*) #2

; Function Attrs: nounwind optsize uwtable
define void @write_g96_conf(%struct._IO_FILE* nocapture %out, %struct.t_trxframe* %fr, i32 %nindex, i32* %index) #0 {
entry:
  %atoms1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  %0 = load %struct.t_atoms** %atoms1, align 8, !tbaa !0
  %tobool = icmp ne i32* %index, null
  br i1 %tobool, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %1 = load i32* %natoms, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %nout.0 = phi i32 [ %1, %if.else ], [ %nindex, %entry ]
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  %2 = load i32* %bTitle, align 4, !tbaa !3
  %tobool2 = icmp eq i32 %2, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %title = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  %3 = load i8** %title, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* %3) #5
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  %bStep = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  %4 = load i32* %bStep, align 4, !tbaa !3
  %tobool5 = icmp eq i32 %4, 0
  br i1 %tobool5, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %if.end4
  %bTime = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  %5 = load i32* %bTime, align 4, !tbaa !3
  %tobool6 = icmp eq i32 %5, 0
  br i1 %tobool6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %6 = load i32* %step, align 4, !tbaa !3
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %7 = load float* %time, align 4, !tbaa !5
  %conv = fpext float %7 to double
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str13, i64 0, i64 0), i32 %6, double %conv) #5
  br label %if.end9

if.end9:                                          ; preds = %lor.lhs.false, %if.then7
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %8 = load i32* %bX, align 4, !tbaa !3
  %tobool10 = icmp eq i32 %8, 0
  br i1 %tobool10, label %if.end79, label %if.then11

if.then11:                                        ; preds = %if.end9
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  %9 = load i32* %bAtoms, align 4, !tbaa !3
  %tobool12 = icmp eq i32 %9, 0
  br i1 %tobool12, label %if.else46, label %if.then13

if.then13:                                        ; preds = %if.then11
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %out)
  %cmp369 = icmp sgt i32 %nout.0, 0
  br i1 %cmp369, label %for.body.lr.ph, label %if.end77

for.body.lr.ph:                                   ; preds = %if.then13
  %atom = getelementptr inbounds %struct.t_atoms* %0, i64 0, i32 1
  %resname = getelementptr inbounds %struct.t_atoms* %0, i64 0, i32 6
  %atomname = getelementptr inbounds %struct.t_atoms* %0, i64 0, i32 2
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  br label %for.body

for.body:                                         ; preds = %if.end19, %for.body.lr.ph
  %indvars.iv379 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next380, %if.end19 ]
  %11 = trunc i64 %indvars.iv379 to i32
  br i1 %tobool, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv379
  %12 = load i32* %arrayidx, align 4, !tbaa !3
  br label %if.end19

if.end19:                                         ; preds = %for.body, %if.then17
  %a.0 = phi i32 [ %12, %if.then17 ], [ %11, %for.body ]
  %idxprom20 = sext i32 %a.0 to i64
  %13 = load %struct.t_atom** %atom, align 8, !tbaa !0
  %resnr = getelementptr inbounds %struct.t_atom* %13, i64 %idxprom20, i32 7
  %14 = load i32* %resnr, align 4, !tbaa !3
  %add = add nsw i32 %14, 1
  %idxprom26 = sext i32 %14 to i64
  %15 = load i8**** %resname, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds i8*** %15, i64 %idxprom26
  %16 = load i8*** %arrayidx27, align 8, !tbaa !0
  %17 = load i8** %16, align 8, !tbaa !0
  %18 = load i8**** %atomname, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds i8*** %18, i64 %idxprom20
  %19 = load i8*** %arrayidx29, align 8, !tbaa !0
  %20 = load i8** %19, align 8, !tbaa !0
  %indvars.iv.next380 = add i64 %indvars.iv379, 1
  %21 = load [3 x float]** %x, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds [3 x float]* %21, i64 %idxprom20, i64 0
  %22 = load float* %arrayidx33, align 4, !tbaa !5
  %conv34 = fpext float %22 to double
  %arrayidx38 = getelementptr inbounds [3 x float]* %21, i64 %idxprom20, i64 1
  %23 = load float* %arrayidx38, align 4, !tbaa !5
  %conv39 = fpext float %23 to double
  %arrayidx43 = getelementptr inbounds [3 x float]* %21, i64 %idxprom20, i64 2
  %24 = load float* %arrayidx43, align 4, !tbaa !5
  %conv44 = fpext float %24 to double
  %25 = trunc i64 %indvars.iv.next380 to i32
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([36 x i8]* @.str15, i64 0, i64 0), i32 %add, i8* %17, i8* %20, i32 %25, double %conv34, double %conv39, double %conv44) #5
  %exitcond382 = icmp eq i32 %25, %nout.0
  br i1 %exitcond382, label %if.end77, label %for.body

if.else46:                                        ; preds = %if.then11
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str16, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %out)
  %cmp49366 = icmp sgt i32 %nout.0, 0
  br i1 %cmp49366, label %for.body51.lr.ph, label %if.end77

for.body51.lr.ph:                                 ; preds = %if.else46
  %x59 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  br label %for.body51

for.body51:                                       ; preds = %if.end57, %for.body51.lr.ph
  %indvars.iv375 = phi i64 [ 0, %for.body51.lr.ph ], [ %indvars.iv.next376, %if.end57 ]
  %27 = trunc i64 %indvars.iv375 to i32
  br i1 %tobool, label %if.then53, label %if.end57

if.then53:                                        ; preds = %for.body51
  %arrayidx55 = getelementptr inbounds i32* %index, i64 %indvars.iv375
  %28 = load i32* %arrayidx55, align 4, !tbaa !3
  br label %if.end57

if.end57:                                         ; preds = %for.body51, %if.then53
  %a.1 = phi i32 [ %28, %if.then53 ], [ %27, %for.body51 ]
  %idxprom58 = sext i32 %a.1 to i64
  %29 = load [3 x float]** %x59, align 8, !tbaa !0
  %arrayidx61 = getelementptr inbounds [3 x float]* %29, i64 %idxprom58, i64 0
  %30 = load float* %arrayidx61, align 4, !tbaa !5
  %conv62 = fpext float %30 to double
  %arrayidx66 = getelementptr inbounds [3 x float]* %29, i64 %idxprom58, i64 1
  %31 = load float* %arrayidx66, align 4, !tbaa !5
  %conv67 = fpext float %31 to double
  %arrayidx71 = getelementptr inbounds [3 x float]* %29, i64 %idxprom58, i64 2
  %32 = load float* %arrayidx71, align 4, !tbaa !5
  %conv72 = fpext float %32 to double
  %call73 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), double %conv62, double %conv67, double %conv72) #5
  %indvars.iv.next376 = add i64 %indvars.iv375, 1
  %lftr.wideiv377 = trunc i64 %indvars.iv.next376 to i32
  %exitcond378 = icmp eq i32 %lftr.wideiv377, %nout.0
  br i1 %exitcond378, label %if.end77, label %for.body51

if.end77:                                         ; preds = %if.then13, %if.end19, %if.else46, %if.end57
  %33 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out)
  br label %if.end79

if.end79:                                         ; preds = %if.end9, %if.end77
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %34 = load i32* %bV, align 4, !tbaa !3
  %tobool80 = icmp eq i32 %34, 0
  br i1 %tobool80, label %if.end162, label %if.then81

if.then81:                                        ; preds = %if.end79
  %tobool82 = icmp eq %struct.t_atoms* %0, null
  br i1 %tobool82, label %if.else129, label %if.then83

if.then83:                                        ; preds = %if.then81
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %out)
  %cmp86364 = icmp sgt i32 %nout.0, 0
  br i1 %cmp86364, label %for.body88.lr.ph, label %if.end160

for.body88.lr.ph:                                 ; preds = %if.then83
  %atom96 = getelementptr inbounds %struct.t_atoms* %0, i64 0, i32 1
  %resname105 = getelementptr inbounds %struct.t_atoms* %0, i64 0, i32 6
  %atomname108 = getelementptr inbounds %struct.t_atoms* %0, i64 0, i32 2
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  br label %for.body88

for.body88:                                       ; preds = %if.end94, %for.body88.lr.ph
  %indvars.iv371 = phi i64 [ 0, %for.body88.lr.ph ], [ %indvars.iv.next372, %if.end94 ]
  %36 = trunc i64 %indvars.iv371 to i32
  br i1 %tobool, label %if.then90, label %if.end94

if.then90:                                        ; preds = %for.body88
  %arrayidx92 = getelementptr inbounds i32* %index, i64 %indvars.iv371
  %37 = load i32* %arrayidx92, align 4, !tbaa !3
  br label %if.end94

if.end94:                                         ; preds = %for.body88, %if.then90
  %a.2 = phi i32 [ %37, %if.then90 ], [ %36, %for.body88 ]
  %idxprom95 = sext i32 %a.2 to i64
  %38 = load %struct.t_atom** %atom96, align 8, !tbaa !0
  %resnr98 = getelementptr inbounds %struct.t_atom* %38, i64 %idxprom95, i32 7
  %39 = load i32* %resnr98, align 4, !tbaa !3
  %add99 = add nsw i32 %39, 1
  %idxprom104 = sext i32 %39 to i64
  %40 = load i8**** %resname105, align 8, !tbaa !0
  %arrayidx106 = getelementptr inbounds i8*** %40, i64 %idxprom104
  %41 = load i8*** %arrayidx106, align 8, !tbaa !0
  %42 = load i8** %41, align 8, !tbaa !0
  %43 = load i8**** %atomname108, align 8, !tbaa !0
  %arrayidx109 = getelementptr inbounds i8*** %43, i64 %idxprom95
  %44 = load i8*** %arrayidx109, align 8, !tbaa !0
  %45 = load i8** %44, align 8, !tbaa !0
  %indvars.iv.next372 = add i64 %indvars.iv371, 1
  %46 = load [3 x float]** %v, align 8, !tbaa !0
  %arrayidx113 = getelementptr inbounds [3 x float]* %46, i64 %idxprom95, i64 0
  %47 = load float* %arrayidx113, align 4, !tbaa !5
  %conv114 = fpext float %47 to double
  %arrayidx118 = getelementptr inbounds [3 x float]* %46, i64 %idxprom95, i64 1
  %48 = load float* %arrayidx118, align 4, !tbaa !5
  %conv119 = fpext float %48 to double
  %arrayidx123 = getelementptr inbounds [3 x float]* %46, i64 %idxprom95, i64 2
  %49 = load float* %arrayidx123, align 4, !tbaa !5
  %conv124 = fpext float %49 to double
  %50 = trunc i64 %indvars.iv.next372 to i32
  %call125 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([36 x i8]* @.str15, i64 0, i64 0), i32 %add99, i8* %42, i8* %45, i32 %50, double %conv114, double %conv119, double %conv124) #5
  %exitcond374 = icmp eq i32 %50, %nout.0
  br i1 %exitcond374, label %if.end160, label %for.body88

if.else129:                                       ; preds = %if.then81
  %51 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str20, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %out)
  %cmp132361 = icmp sgt i32 %nout.0, 0
  br i1 %cmp132361, label %for.body134.lr.ph, label %if.end160

for.body134.lr.ph:                                ; preds = %if.else129
  %v142 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  br label %for.body134

for.body134:                                      ; preds = %if.end140, %for.body134.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body134.lr.ph ], [ %indvars.iv.next, %if.end140 ]
  %52 = trunc i64 %indvars.iv to i32
  br i1 %tobool, label %if.then136, label %if.end140

if.then136:                                       ; preds = %for.body134
  %arrayidx138 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %53 = load i32* %arrayidx138, align 4, !tbaa !3
  br label %if.end140

if.end140:                                        ; preds = %for.body134, %if.then136
  %a.3 = phi i32 [ %53, %if.then136 ], [ %52, %for.body134 ]
  %idxprom141 = sext i32 %a.3 to i64
  %54 = load [3 x float]** %v142, align 8, !tbaa !0
  %arrayidx144 = getelementptr inbounds [3 x float]* %54, i64 %idxprom141, i64 0
  %55 = load float* %arrayidx144, align 4, !tbaa !5
  %conv145 = fpext float %55 to double
  %arrayidx149 = getelementptr inbounds [3 x float]* %54, i64 %idxprom141, i64 1
  %56 = load float* %arrayidx149, align 4, !tbaa !5
  %conv150 = fpext float %56 to double
  %arrayidx154 = getelementptr inbounds [3 x float]* %54, i64 %idxprom141, i64 2
  %57 = load float* %arrayidx154, align 4, !tbaa !5
  %conv155 = fpext float %57 to double
  %call156 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), double %conv145, double %conv150, double %conv155) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nout.0
  br i1 %exitcond, label %if.end160, label %for.body134

if.end160:                                        ; preds = %if.then83, %if.end94, %if.else129, %if.end140
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out)
  br label %if.end162

if.end162:                                        ; preds = %if.end79, %if.end160
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  %59 = load i32* %bBox, align 4, !tbaa !3
  %tobool163 = icmp eq i32 %59, 0
  br i1 %tobool163, label %if.end254, label %if.then164

if.then164:                                       ; preds = %if.end162
  %60 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out)
  %arrayidx167 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0
  %61 = load float* %arrayidx167, align 4, !tbaa !5
  %conv168 = fpext float %61 to double
  %arrayidx170 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1
  %arrayidx171 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  %62 = load float* %arrayidx171, align 4, !tbaa !5
  %conv172 = fpext float %62 to double
  %arrayidx174 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2
  %arrayidx175 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  %63 = load float* %arrayidx175, align 4, !tbaa !5
  %conv176 = fpext float %63 to double
  %call177 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str22, i64 0, i64 0), double %conv168, double %conv172, double %conv176) #5
  %arrayidx180 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1
  %64 = load float* %arrayidx180, align 4, !tbaa !5
  %fabsf = tail call float @fabsf(float %64) #7
  %65 = fpext float %fabsf to double
  %cmp183 = fcmp ogt double %65, 1.200000e-38
  %arrayidx232.phi.trans.insert = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2
  %.pre = load float* %arrayidx232.phi.trans.insert, align 4, !tbaa !5
  br i1 %cmp183, label %if.then225, label %lor.lhs.false185

lor.lhs.false185:                                 ; preds = %if.then164
  %fabsf356 = tail call float @fabsf(float %.pre) #7
  %66 = fpext float %fabsf356 to double
  %cmp191 = fcmp ogt double %66, 1.200000e-38
  br i1 %cmp191, label %if.then225, label %lor.lhs.false193

lor.lhs.false193:                                 ; preds = %lor.lhs.false185
  %arrayidx196 = getelementptr inbounds [3 x float]* %arrayidx170, i64 0, i64 0
  %67 = load float* %arrayidx196, align 4, !tbaa !5
  %fabsf357 = tail call float @fabsf(float %67) #7
  %68 = fpext float %fabsf357 to double
  %cmp199 = fcmp ogt double %68, 1.200000e-38
  br i1 %cmp199, label %if.then225, label %lor.lhs.false201

lor.lhs.false201:                                 ; preds = %lor.lhs.false193
  %arrayidx204 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2
  %69 = load float* %arrayidx204, align 4, !tbaa !5
  %fabsf358 = tail call float @fabsf(float %69) #7
  %70 = fpext float %fabsf358 to double
  %cmp207 = fcmp ogt double %70, 1.200000e-38
  br i1 %cmp207, label %if.then225, label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %lor.lhs.false201
  %arrayidx212 = getelementptr inbounds [3 x float]* %arrayidx174, i64 0, i64 0
  %71 = load float* %arrayidx212, align 4, !tbaa !5
  %fabsf359 = tail call float @fabsf(float %71) #7
  %72 = fpext float %fabsf359 to double
  %cmp215 = fcmp ogt double %72, 1.200000e-38
  br i1 %cmp215, label %if.then225, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %lor.lhs.false209
  %arrayidx220 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1
  %73 = load float* %arrayidx220, align 4, !tbaa !5
  %fabsf360 = tail call float @fabsf(float %73) #7
  %74 = fpext float %fabsf360 to double
  %cmp223 = fcmp ogt double %74, 1.200000e-38
  br i1 %cmp223, label %if.then225, label %if.end251

if.then225:                                       ; preds = %if.then164, %lor.lhs.false209, %lor.lhs.false201, %lor.lhs.false193, %lor.lhs.false185, %lor.lhs.false217
  %conv229 = fpext float %64 to double
  %conv233 = fpext float %.pre to double
  %arrayidx236 = getelementptr inbounds [3 x float]* %arrayidx170, i64 0, i64 0
  %75 = load float* %arrayidx236, align 4, !tbaa !5
  %conv237 = fpext float %75 to double
  %arrayidx240 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2
  %76 = load float* %arrayidx240, align 4, !tbaa !5
  %conv241 = fpext float %76 to double
  %arrayidx244 = getelementptr inbounds [3 x float]* %arrayidx174, i64 0, i64 0
  %77 = load float* %arrayidx244, align 4, !tbaa !5
  %conv245 = fpext float %77 to double
  %arrayidx248 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1
  %78 = load float* %arrayidx248, align 4, !tbaa !5
  %conv249 = fpext float %78 to double
  %call250 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([37 x i8]* @.str23, i64 0, i64 0), double %conv229, double %conv233, double %conv237, double %conv241, double %conv245, double %conv249) #5
  br label %if.end251

if.end251:                                        ; preds = %if.then225, %lor.lhs.false217
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out)
  %79 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out)
  br label %if.end254

if.end254:                                        ; preds = %if.end162, %if.end251
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @gro_next_x_or_v(%struct._IO_FILE* %status, %struct.t_trxframe* nocapture %fr) #0 {
entry:
  %atoms = alloca %struct.t_atoms, align 8
  %title = alloca [4096 x i8], align 16
  %tt = alloca double, align 8
  %ndec = alloca i32, align 4
  %0 = bitcast %struct.t_atoms* %atoms to i8*
  call void @llvm.lifetime.start(i64 1280, i8* %0) #4
  %1 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #4
  %call = call i32 @eof(%struct._IO_FILE* %status) #5
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %2 = load i32* %natoms, align 4, !tbaa !3
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  store i32 %2, i32* %nr, align 8, !tbaa !3
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 576, i32 %2, i32 40) #5
  %3 = bitcast i8* %call2 to %struct.t_atom*
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  store %struct.t_atom* %3, %struct.t_atom** %atom, align 8, !tbaa !0
  %4 = load i32* %natoms, align 4, !tbaa !3
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  store i32 %4, i32* %nres, align 8, !tbaa !3
  %call5 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 578, i32 %4, i32 8) #5
  %5 = bitcast i8* %call5 to i8***
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  store i8*** %5, i8**** %resname, align 8, !tbaa !0
  %6 = load i32* %natoms, align 4, !tbaa !3
  %call7 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 579, i32 %6, i32 8) #5
  %7 = bitcast i8* %call7 to i8***
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  store i8*** %7, i8**** %atomname, align 8, !tbaa !0
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %8 = load [3 x float]** %x, align 8, !tbaa !0
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %9 = load [3 x float]** %v, align 8, !tbaa !0
  %arraydecay9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %call10 = call fastcc i32 @get_w_conf(%struct._IO_FILE* %status, i8* %1, i8* %1, %struct.t_atoms* %atoms, i32* %ndec, [3 x float]* %8, [3 x float]* %9, [3 x float]* %arraydecay9) #8
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  store i32 %call10, i32* %bV, align 4, !tbaa !3
  %bPrec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  store i32 1, i32* %bPrec, align 4, !tbaa !3
  %prec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  store float 1.000000e+00, float* %prec, align 4, !tbaa !5
  %10 = load i32* %ndec, align 4, !tbaa !3
  %cmp61 = icmp sgt i32 %10, 0
  br i1 %cmp61, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %11 = phi float [ %mul, %for.body ], [ 1.000000e+00, %if.end ]
  %i.062 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %mul = fmul float %11, 1.000000e+01
  %inc = add nsw i32 %i.062, 1
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store float %mul, float* %prec, align 4, !tbaa !5
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end
  %title13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* %1, i8** %title13, align 8, !tbaa !0
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  store i32 1, i32* %bTitle, align 4, !tbaa !3
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %bX, align 4, !tbaa !3
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 1, i32* %bBox, align 4, !tbaa !3
  %12 = load %struct.t_atom** %atom, align 8, !tbaa !0
  %13 = bitcast %struct.t_atom* %12 to i8*
  call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 592, i8* %13) #5
  %14 = load i8**** %resname, align 8, !tbaa !0
  %15 = bitcast i8*** %14 to i8*
  call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 593, i8* %15) #5
  %16 = load i8**** %atomname, align 8, !tbaa !0
  %17 = bitcast i8*** %16 to i8*
  call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 594, i8* %17) #5
  %call18 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str28, i64 0, i64 0)) #6
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %if.end27, label %if.then20

if.then20:                                        ; preds = %for.end
  %add.ptr = getelementptr inbounds i8* %call18, i64 2
  %call21 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str29, i64 0, i64 0), double* %tt) #5
  %cmp22 = icmp eq i32 %call21, 1
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  %18 = load double* %tt, align 8, !tbaa !4
  %conv = fptrunc double %18 to float
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float %conv, float* %time, align 4, !tbaa !5
  %bTime = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 1, i32* %bTime, align 4, !tbaa !3
  br label %if.end27

if.else:                                          ; preds = %if.then20
  %time24 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float 0.000000e+00, float* %time24, align 4, !tbaa !5
  %bTime25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 0, i32* %bTime25, align 4, !tbaa !3
  br label %if.end27

if.end27:                                         ; preds = %for.end, %if.then23, %if.else
  %19 = load i32* %nr, align 8, !tbaa !3
  %20 = load i32* %natoms, align 4, !tbaa !3
  %cmp30 = icmp eq i32 %19, %20
  br i1 %cmp30, label %cleanup, label %if.then32

if.then32:                                        ; preds = %if.end27
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([86 x i8]* @.str30, i64 0, i64 0), i32 %19, i32 %20) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end27, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end27 ], [ 1, %if.then32 ]
  call void @llvm.lifetime.end(i64 4096, i8* %1) #4
  call void @llvm.lifetime.end(i64 1280, i8* %0) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @eof(%struct._IO_FILE*) #2

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
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %0) #4
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #4
  %2 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !tbaa !0
  %tobool = icmp eq %struct.t_symtab* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 392, i32 1, i32 16) #5
  %3 = bitcast i8* %call to %struct.t_symtab*
  store %struct.t_symtab* %3, %struct.t_symtab** @get_w_conf.symtab, align 8, !tbaa !0
  call void @open_symtab(%struct.t_symtab* %3) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call1 = call i8* @fgets2(i8* %title, i32 4096, %struct._IO_FILE* %in) #5
  %call2 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #5
  %call4 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i32* %natoms) #5
  %4 = load i32* %natoms, align 4, !tbaa !3
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %5 = load i32* %nr, align 4, !tbaa !3
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([53 x i8]* @.str60, i64 0, i64 0), i32 %4, i32 %5) #5
  br label %for.cond.preheader

if.else:                                          ; preds = %if.end
  %cmp8 = icmp slt i32 %4, %5
  br i1 %cmp8, label %if.then9, label %for.cond.preheader

if.then9:                                         ; preds = %if.else
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([63 x i8]* @.str61, i64 0, i64 0), i32 %4, i32 %5) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else, %if.then9, %if.then5
  %7 = load i32* %natoms, align 4, !tbaa !3
  %cmp14394 = icmp sgt i32 %7, 0
  br i1 %cmp14394, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = getelementptr inbounds [6 x i8]* %name, i64 0, i64 0
  %arrayidx51 = getelementptr inbounds [6 x i8]* %name, i64 0, i64 5
  %add.ptr = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 5
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %add.ptr72 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 10
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %add.ptr78 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 20
  %arraydecay79 = getelementptr inbounds [30 x i8]* %format, i64 0, i64 0
  %tobool98 = icmp eq [3 x float]* %v, null
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv423 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next424, %for.inc ]
  %newres.0399 = phi i32 [ 0, %for.body.lr.ph ], [ %newres.1, %for.inc ]
  %bVel.0398 = phi i32 [ 0, %for.body.lr.ph ], [ %bVel.1, %for.inc ]
  %bFirst.0397 = phi i32 [ 1, %for.body.lr.ph ], [ 0, %for.inc ]
  %ddist.0396 = phi i32 [ 0, %for.body.lr.ph ], [ %ddist.4, %for.inc ]
  %oldres.0395 = phi i32 [ -12345, %for.body.lr.ph ], [ %oldres.1, %for.inc ]
  %call16 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #5
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.body
  %9 = add nsw i64 %indvars.iv423, 2
  %10 = trunc i64 %9 to i32
  call void @_unexpected_eof(i8* %infile, i32 %10, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 414) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %for.body
  %call21 = call i64 @strlen(i8* %0) #6
  %cmp22 = icmp ult i64 %call21, 39
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  %11 = add nsw i64 %indvars.iv423, 1
  %12 = trunc i64 %11 to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str62, i64 0, i64 0), i8* %infile, i32 %12, i8* %0) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end19
  %tobool27 = icmp eq i32 %bFirst.0397, 0
  br i1 %tobool27, label %if.end50, label %if.then28

if.then28:                                        ; preds = %if.end26
  %call30 = call i8* @strchr(i8* %0, i32 46) #6
  %cmp31 = icmp eq i8* %call30, null
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then28
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str63, i64 0, i64 0), i8* %infile) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then28
  %arrayidx = getelementptr inbounds i8* %call30, i64 1
  %call34 = call i8* @strchr(i8* %arrayidx, i32 46) #6
  %tobool36 = icmp eq i8* %call34, null
  %or.cond = and i1 %cmp31, %tobool36
  br i1 %or.cond, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end33
  %sub.ptr.lhs.cast = ptrtoint i8* %call34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  br label %if.end39

if.end39:                                         ; preds = %if.end33, %if.then37
  %ddist.1 = phi i32 [ %conv, %if.then37 ], [ 8, %if.end33 ]
  %cmp40 = icmp slt i32 %ddist.1, 0
  %.ddist.1 = select i1 %cmp40, i32 8, i32 %ddist.1
  %cmp44 = icmp sgt i32 %.ddist.1, 30
  %ddist.3 = select i1 %cmp44, i32 30, i32 %.ddist.1
  %call49 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay79, i8* getelementptr inbounds ([19 x i8]* @.str64, i64 0, i64 0), i32 %ddist.3, i32 %ddist.3, i32 %ddist.3) #5
  %sub = add nsw i32 %ddist.3, -5
  store i32 %sub, i32* %ndec, align 4, !tbaa !3
  br label %if.end50

if.end50:                                         ; preds = %if.end26, %if.end39
  %ddist.4 = phi i32 [ %ddist.3, %if.end39 ], [ %ddist.0396, %if.end26 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %0, i64 5, i32 1, i1 false)
  store i8 0, i8* %arrayidx51, align 1, !tbaa !1
  %call53 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i32* %resnr) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %add.ptr, i64 5, i32 1, i1 false)
  store i8 0, i8* %arrayidx51, align 1, !tbaa !1
  %13 = load i32* %resnr, align 4, !tbaa !3
  %cmp56 = icmp eq i32 %13, %oldres.0395
  br i1 %cmp56, label %if.end66, label %if.then58

if.then58:                                        ; preds = %if.end50
  %14 = load i32* %natoms, align 4, !tbaa !3
  %cmp59 = icmp slt i32 %newres.0399, %14
  br i1 %cmp59, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.then58
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str65, i64 0, i64 0), i8* %infile, i32 %14) #5
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.then61
  %15 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !tbaa !0
  %call64 = call i8** @put_symtab(%struct.t_symtab* %15, i8* %8) #5
  %idxprom = sext i32 %newres.0399 to i64
  %16 = load i8**** %resname, align 8, !tbaa !0
  %arrayidx65 = getelementptr inbounds i8*** %16, i64 %idxprom
  store i8** %call64, i8*** %arrayidx65, align 8, !tbaa !0
  %inc = add nsw i32 %newres.0399, 1
  br label %if.end66

if.end66:                                         ; preds = %if.end50, %if.end62
  %oldres.1 = phi i32 [ %13, %if.end62 ], [ %oldres.0395, %if.end50 ]
  %newres.1 = phi i32 [ %inc, %if.end62 ], [ %newres.0399, %if.end50 ]
  store i32 %newres.1, i32* %resnr, align 4, !tbaa !3
  %sub67 = add nsw i32 %newres.1, -1
  %17 = load %struct.t_atom** %atom, align 8, !tbaa !0
  %resnr70 = getelementptr inbounds %struct.t_atom* %17, i64 %indvars.iv423, i32 7
  store i32 %sub67, i32* %resnr70, align 4, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %add.ptr72, i64 5, i32 1, i1 false)
  %18 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !tbaa !0
  %call74 = call i8** @put_symtab(%struct.t_symtab* %18, i8* %8) #5
  %19 = load i8**** %atomname, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds i8*** %19, i64 %indvars.iv423
  store i8** %call74, i8*** %arrayidx76, align 8, !tbaa !0
  %call80 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr78, i8* %arraydecay79, double* %x1, double* %y1, double* %z1) #5
  %cmp81 = icmp eq i32 %call80, 3
  br i1 %cmp81, label %if.else84, label %if.then83

if.then83:                                        ; preds = %if.end66
  call void @_too_few(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 466) #5
  br label %if.end97

if.else84:                                        ; preds = %if.end66
  %20 = load double* %x1, align 8, !tbaa !4
  %conv85 = fptrunc double %20 to float
  %arrayidx88 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv423, i64 0
  store float %conv85, float* %arrayidx88, align 4, !tbaa !5
  %21 = load double* %y1, align 8, !tbaa !4
  %conv89 = fptrunc double %21 to float
  %arrayidx92 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv423, i64 1
  store float %conv89, float* %arrayidx92, align 4, !tbaa !5
  %22 = load double* %z1, align 8, !tbaa !4
  %conv93 = fptrunc double %22 to float
  %arrayidx96 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv423, i64 2
  store float %conv93, float* %arrayidx96, align 4, !tbaa !5
  br label %if.end97

if.end97:                                         ; preds = %if.else84, %if.then83
  br i1 %tobool98, label %for.inc, label %if.then99

if.then99:                                        ; preds = %if.end97
  %mul = mul nsw i32 %ddist.4, 3
  %idx.ext = sext i32 %mul to i64
  %add.ptr78.sum = add i64 %idx.ext, 20
  %add.ptr102 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 %add.ptr78.sum
  %call104 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr102, i8* %arraydecay79, double* %x1, double* %y1, double* %z1) #5
  %cmp105 = icmp eq i32 %call104, 3
  br i1 %cmp105, label %if.else117, label %if.then107

if.then107:                                       ; preds = %if.then99
  %arrayidx110 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv423, i64 0
  store float 0.000000e+00, float* %arrayidx110, align 4, !tbaa !5
  %arrayidx113 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv423, i64 1
  store float 0.000000e+00, float* %arrayidx113, align 4, !tbaa !5
  %arrayidx116 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv423, i64 2
  store float 0.000000e+00, float* %arrayidx116, align 4, !tbaa !5
  br label %for.inc

if.else117:                                       ; preds = %if.then99
  %23 = load double* %x1, align 8, !tbaa !4
  %conv118 = fptrunc double %23 to float
  %arrayidx121 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv423, i64 0
  store float %conv118, float* %arrayidx121, align 4, !tbaa !5
  %24 = load double* %y1, align 8, !tbaa !4
  %conv122 = fptrunc double %24 to float
  %arrayidx125 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv423, i64 1
  store float %conv122, float* %arrayidx125, align 4, !tbaa !5
  %25 = load double* %z1, align 8, !tbaa !4
  %conv126 = fptrunc double %25 to float
  %arrayidx129 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv423, i64 2
  store float %conv126, float* %arrayidx129, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end97, %if.else117, %if.then107
  %bVel.1 = phi i32 [ %bVel.0398, %if.then107 ], [ 1, %if.else117 ], [ %bVel.0398, %if.end97 ]
  %indvars.iv.next424 = add i64 %indvars.iv423, 1
  %26 = load i32* %natoms, align 4, !tbaa !3
  %27 = trunc i64 %indvars.iv.next424 to i32
  %cmp14 = icmp slt i32 %27, %26
  br i1 %cmp14, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %newres.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %newres.1, %for.inc ]
  %bVel.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %bVel.1, %for.inc ]
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  store i32 %newres.0.lcssa, i32* %nres, align 4, !tbaa !3
  %call134 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #5
  %call136 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str66, i64 0, i64 0), double* %x1, double* %y1, double* %z1) #5
  %cmp137 = icmp eq i32 %call136, 3
  br i1 %cmp137, label %if.else252, label %if.then139

if.then139:                                       ; preds = %for.end
  %call141 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([19 x i8]* @.str67, i64 0, i64 0), i8* %infile) #5
  call void @warning(i8* %1) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmax420, i8* %x421, i64 12, i32 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmin422, i8* %x421, i64 12, i32 4, i1 false)
  %28 = load i32* %nr, align 4, !tbaa !3
  %cmp159391 = icmp sgt i32 %28, 1
  br i1 %cmp159391, label %for.cond162.preheader, label %for.cond208.preheader

for.cond162.preheader:                            ; preds = %if.then139, %for.inc205
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %for.inc205 ], [ 1, %if.then139 ]
  br label %for.body165

for.cond208.preheader:                            ; preds = %for.inc205, %if.then139
  call void @llvm.memset.p0i8.i64(i8* %box409, i8 0, i64 36, i32 4, i1 false)
  br label %for.body229

for.body165:                                      ; preds = %for.body165, %for.cond162.preheader
  %indvars.iv410 = phi i64 [ 0, %for.cond162.preheader ], [ %indvars.iv.next411, %for.body165 ]
  %arrayidx167 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv410
  %29 = load float* %arrayidx167, align 4, !tbaa !5
  %arrayidx171 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv414, i64 %indvars.iv410
  %30 = load float* %arrayidx171, align 4, !tbaa !5
  %cmp172 = fcmp olt float %29, %30
  %. = select i1 %cmp172, float %29, float %30
  store float %., float* %arrayidx167, align 4, !tbaa !5
  %arrayidx183 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv410
  %31 = load float* %arrayidx183, align 4, !tbaa !5
  %cmp188 = fcmp ogt float %31, %30
  %cond199 = select i1 %cmp188, float %31, float %30
  store float %cond199, float* %arrayidx183, align 4, !tbaa !5
  %indvars.iv.next411 = add i64 %indvars.iv410, 1
  %lftr.wideiv412 = trunc i64 %indvars.iv.next411 to i32
  %exitcond413 = icmp eq i32 %lftr.wideiv412, 3
  br i1 %exitcond413, label %for.inc205, label %for.body165

for.inc205:                                       ; preds = %for.body165
  %indvars.iv.next415 = add i64 %indvars.iv414, 1
  %32 = trunc i64 %indvars.iv.next415 to i32
  %cmp159 = icmp slt i32 %32, %28
  br i1 %cmp159, label %for.cond162.preheader, label %for.cond208.preheader

for.body229:                                      ; preds = %for.body229, %for.cond208.preheader
  %indvars.iv = phi i64 [ 0, %for.cond208.preheader ], [ %indvars.iv.next, %for.body229 ]
  %arrayidx231 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv
  %33 = load float* %arrayidx231, align 4, !tbaa !5
  %arrayidx233 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv
  %34 = load float* %arrayidx233, align 4, !tbaa !5
  %sub234 = fsub float %33, %34
  %arrayidx238 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  store float %sub234, float* %arrayidx238, align 4, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end241, label %for.body229

for.end241:                                       ; preds = %for.body229
  %35 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %arrayidx243 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %36 = load float* %arrayidx243, align 4, !tbaa !5
  %conv244 = fpext float %36 to double
  %arrayidx246 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %37 = load float* %arrayidx246, align 4, !tbaa !5
  %conv247 = fpext float %37 to double
  %arrayidx249 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %38 = load float* %arrayidx249, align 4, !tbaa !5
  %conv250 = fpext float %38 to double
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([45 x i8]* @.str68, i64 0, i64 0), double %conv244, double %conv247, double %conv250) #5
  br label %if.end286

if.else252:                                       ; preds = %for.end
  %39 = load double* %x1, align 8, !tbaa !4
  %conv253 = fptrunc double %39 to float
  %arrayidx255 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  store float %conv253, float* %arrayidx255, align 4, !tbaa !5
  %40 = load double* %y1, align 8, !tbaa !4
  %conv256 = fptrunc double %40 to float
  %arrayidx258 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  store float %conv256, float* %arrayidx258, align 4, !tbaa !5
  %41 = load double* %z1, align 8, !tbaa !4
  %conv259 = fptrunc double %41 to float
  %arrayidx261 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  store float %conv259, float* %arrayidx261, align 4, !tbaa !5
  %call263 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([28 x i8]* @.str69, i64 0, i64 0), double* %x1, double* %y1, double* %z1, double* %x2, double* %y2, double* %z2) #5
  %cmp264 = icmp eq i32 %call263, 6
  br i1 %cmp264, label %if.else252.if.end267_crit_edge, label %if.then266

if.else252.if.end267_crit_edge:                   ; preds = %if.else252
  %.pre = load double* %x1, align 8, !tbaa !4
  %.pre427 = load double* %y1, align 8, !tbaa !4
  %.pre428 = load double* %z1, align 8, !tbaa !4
  %.pre429 = load double* %x2, align 8, !tbaa !4
  %.pre430 = load double* %y2, align 8, !tbaa !4
  %.pre431 = load double* %z2, align 8, !tbaa !4
  %phitmp = fptrunc double %.pre to float
  %phitmp432 = fptrunc double %.pre427 to float
  %phitmp433 = fptrunc double %.pre428 to float
  %phitmp434 = fptrunc double %.pre429 to float
  %phitmp435 = fptrunc double %.pre430 to float
  %phitmp436 = fptrunc double %.pre431 to float
  br label %if.end267

if.then266:                                       ; preds = %if.else252
  store double 0.000000e+00, double* %z2, align 8, !tbaa !4
  store double 0.000000e+00, double* %y2, align 8, !tbaa !4
  store double 0.000000e+00, double* %x2, align 8, !tbaa !4
  store double 0.000000e+00, double* %z1, align 8, !tbaa !4
  store double 0.000000e+00, double* %y1, align 8, !tbaa !4
  store double 0.000000e+00, double* %x1, align 8, !tbaa !4
  br label %if.end267

if.end267:                                        ; preds = %if.else252.if.end267_crit_edge, %if.then266
  %42 = phi float [ %phitmp436, %if.else252.if.end267_crit_edge ], [ 0.000000e+00, %if.then266 ]
  %43 = phi float [ %phitmp435, %if.else252.if.end267_crit_edge ], [ 0.000000e+00, %if.then266 ]
  %44 = phi float [ %phitmp434, %if.else252.if.end267_crit_edge ], [ 0.000000e+00, %if.then266 ]
  %45 = phi float [ %phitmp433, %if.else252.if.end267_crit_edge ], [ 0.000000e+00, %if.then266 ]
  %46 = phi float [ %phitmp432, %if.else252.if.end267_crit_edge ], [ 0.000000e+00, %if.then266 ]
  %47 = phi float [ %phitmp, %if.else252.if.end267_crit_edge ], [ 0.000000e+00, %if.then266 ]
  %arrayidx270 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  store float %47, float* %arrayidx270, align 4, !tbaa !5
  %arrayidx273 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  store float %46, float* %arrayidx273, align 4, !tbaa !5
  %arrayidx276 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  store float %45, float* %arrayidx276, align 4, !tbaa !5
  %arrayidx279 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  store float %44, float* %arrayidx279, align 4, !tbaa !5
  %arrayidx282 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  store float %43, float* %arrayidx282, align 4, !tbaa !5
  %arrayidx285 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  store float %42, float* %arrayidx285, align 4, !tbaa !5
  br label %if.end286

if.end286:                                        ; preds = %if.end267, %for.end241
  %48 = load %struct.t_symtab** @get_w_conf.symtab, align 8, !tbaa !0
  call void @close_symtab(%struct.t_symtab* %48) #5
  call void @llvm.lifetime.end(i64 256, i8* %1) #4
  call void @llvm.lifetime.end(i64 4097, i8* %0) #4
  ret i32 %bVel.0.lcssa
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @gro_first_x_or_v(%struct._IO_FILE* %status, %struct.t_trxframe* %fr) #0 {
entry:
  %title = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #4
  call void @frewind(%struct._IO_FILE* %status) #5
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str31, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %1)
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  call fastcc void @get_coordnum_fp(%struct._IO_FILE* %status, i8* %0, i32* %natoms) #8
  call void @frewind(%struct._IO_FILE* %status) #5
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = load i32* %natoms, align 4, !tbaa !3
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([18 x i8]* @.str32, i64 0, i64 0), i8* %0, i32 %4) #5
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  store i32 1, i32* %bTitle, align 4, !tbaa !3
  %title5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* %0, i8** %title5, align 8, !tbaa !0
  %5 = load i32* %natoms, align 4, !tbaa !3
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 1, i8* getelementptr inbounds ([28 x i8]* @.str33, i64 0, i64 0)) #5
  %.pre = load i32* %natoms, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = phi i32 [ %.pre, %if.then ], [ %5, %entry ]
  %call8 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 627, i32 %6, i32 12) #5
  %7 = bitcast i8* %call8 to [3 x float]*
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* %7, [3 x float]** %x, align 8, !tbaa !0
  %8 = load i32* %natoms, align 4, !tbaa !3
  %call10 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 628, i32 %8, i32 12) #5
  %9 = bitcast i8* %call10 to [3 x float]*
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* %9, [3 x float]** %v, align 8, !tbaa !0
  %call11 = call i32 @gro_next_x_or_v(%struct._IO_FILE* %status, %struct.t_trxframe* %fr) #8
  %10 = load i32* %natoms, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 4096, i8* %0) #4
  ret i32 %10
}

; Function Attrs: optsize
declare void @frewind(%struct._IO_FILE*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @get_coordnum_fp(%struct._IO_FILE* %in, i8* %title, i32* %natoms) #0 {
entry:
  %line = alloca [4097 x i8], align 16
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %0) #4
  %call = call i8* @fgets2(i8* %title, i32 4096, %struct._IO_FILE* %in) #5
  %call1 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #5
  %call3 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i32* %natoms) #5
  call void @llvm.lifetime.end(i64 4097, i8* %0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_hconf_indexed_p(%struct._IO_FILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture %atoms, i32 %nx, i32* nocapture %index, i32 %pr, [3 x float]* nocapture %x, [3 x float]* %v, [3 x float]* nocapture %box) #0 {
entry:
  %resnm = alloca [6 x i8], align 1
  %nm = alloca [6 x i8], align 1
  %format = alloca [100 x i8], align 16
  %0 = getelementptr inbounds [100 x i8]* %format, i64 0, i64 0
  call void @llvm.lifetime.start(i64 100, i8* %0) #4
  %tobool = icmp eq i8* %title, null
  br i1 %tobool, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i8* %title, align 1, !tbaa !1
  %tobool1 = icmp eq i8 %1, 0
  br i1 %tobool1, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call = call i8* @bromacs() #5
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %cond.false
  %cond = phi i8* [ %call, %cond.false ], [ %title, %land.lhs.true ]
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i8* %cond) #5
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0), i32 %nx) #5
  %cmp = icmp slt i32 %pr, 0
  %.pr = select i1 %cmp, i32 0, i32 %pr
  %cmp5 = icmp sgt i32 %.pr, 30
  %pr.addr.1 = select i1 %cmp5, i32 30, i32 %.pr
  %add = add nsw i32 %pr.addr.1, 5
  %add9 = add nsw i32 %pr.addr.1, 1
  %tobool10 = icmp ne [3 x float]* %v, null
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %cond.end
  %call12 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([50 x i8]* @.str38, i64 0, i64 0), i32 %add, i32 %pr.addr.1, i32 %add, i32 %pr.addr.1, i32 %add, i32 %pr.addr.1, i32 %add, i32 %add9, i32 %add, i32 %add9, i32 %add, i32 %add9) #5
  br label %for.cond.preheader

if.else:                                          ; preds = %cond.end
  %call14 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([26 x i8]* @.str39, i64 0, i64 0), i32 %add, i32 %pr.addr.1, i32 %add, i32 %pr.addr.1, i32 %add, i32 %pr.addr.1) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else, %if.then11
  %cmp16278 = icmp sgt i32 %nx, 0
  br i1 %cmp16278, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %arraydecay22 = getelementptr inbounds [6 x i8]* %resnm, i64 0, i64 0
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  %arraydecay35 = getelementptr inbounds [6 x i8]* %nm, i64 0, i64 0
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx18 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %2 = load i32* %arrayidx18, align 4, !tbaa !3
  %idxprom19 = sext i32 %2 to i64
  %3 = load %struct.t_atom** %atom, align 8, !tbaa !0
  %resnr21 = getelementptr inbounds %struct.t_atom* %3, i64 %idxprom19, i32 7
  %4 = load i32* %resnr21, align 4, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay22, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i64 6, i32 1, i1 false)
  %5 = load i32* %nres, align 4, !tbaa !3
  %cmp24 = icmp slt i32 %4, %5
  br i1 %cmp24, label %if.then26, label %if.end31

if.then26:                                        ; preds = %for.body
  %idxprom28 = sext i32 %4 to i64
  %6 = load i8**** %resname, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds i8*** %6, i64 %idxprom28
  %7 = load i8*** %arrayidx29, align 8, !tbaa !0
  %8 = load i8** %7, align 8, !tbaa !0
  %call30 = call i8* @strcpy(i8* %arraydecay22, i8* %8) #5
  %.pre = load %struct.t_atom** %atom, align 8, !tbaa !0
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %for.body
  %9 = phi %struct.t_atom* [ %.pre, %if.then26 ], [ %3, %for.body ]
  %tobool33 = icmp eq %struct.t_atom* %9, null
  br i1 %tobool33, label %if.else39, label %if.then34

if.then34:                                        ; preds = %if.end31
  %10 = load i8**** %atomname, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i8*** %10, i64 %idxprom19
  %11 = load i8*** %arrayidx37, align 8, !tbaa !0
  %12 = load i8** %11, align 8, !tbaa !0
  %call38 = call i8* @strcpy(i8* %arraydecay35, i8* %12) #5
  br label %if.end42

if.else39:                                        ; preds = %if.end31
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay35, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i64 6, i32 1, i1 false)
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then34
  %add43 = add nsw i32 %4, 1
  %rem = srem i32 %add43, 100000
  %add46 = add nsw i32 %2, 1
  %rem47 = srem i32 %add46, 100000
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str41, i64 0, i64 0), i32 %rem, i8* %arraydecay22, i8* %arraydecay35, i32 %rem47) #5
  %arrayidx54 = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 0
  %13 = load float* %arrayidx54, align 4, !tbaa !5
  %conv55 = fpext float %13 to double
  %arrayidx58 = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 1
  %14 = load float* %arrayidx58, align 4, !tbaa !5
  %conv59 = fpext float %14 to double
  %arrayidx62 = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 2
  %15 = load float* %arrayidx62, align 4, !tbaa !5
  %conv63 = fpext float %15 to double
  br i1 %tobool10, label %if.then50, label %if.else77

if.then50:                                        ; preds = %if.end42
  %arrayidx66 = getelementptr inbounds [3 x float]* %v, i64 %idxprom19, i64 0
  %16 = load float* %arrayidx66, align 4, !tbaa !5
  %conv67 = fpext float %16 to double
  %arrayidx70 = getelementptr inbounds [3 x float]* %v, i64 %idxprom19, i64 1
  %17 = load float* %arrayidx70, align 4, !tbaa !5
  %conv71 = fpext float %17 to double
  %arrayidx74 = getelementptr inbounds [3 x float]* %v, i64 %idxprom19, i64 2
  %18 = load float* %arrayidx74, align 4, !tbaa !5
  %conv75 = fpext float %18 to double
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* %0, double %conv55, double %conv59, double %conv63, double %conv67, double %conv71, double %conv75) #5
  br label %for.inc

if.else77:                                        ; preds = %if.end42
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* %0, double %conv55, double %conv59, double %conv63) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then50, %if.else77
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nx
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %cmp93 = icmp slt i32 %pr.addr.1, 5
  %.pr.addr.1 = select i1 %cmp93, i32 5, i32 %pr.addr.1
  %add97 = add nsw i32 %.pr.addr.1, 5
  %arrayidx99 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %19 = load float* %arrayidx99, align 4, !tbaa !5
  %fabsf = call float @fabsf(float %19) #7
  %20 = fpext float %fabsf to double
  %cmp102 = fcmp ogt double %20, 1.200000e-38
  %arrayidx155.pre = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  br i1 %cmp102, label %if.then138, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %21 = load float* %arrayidx155.pre, align 4, !tbaa !5
  %fabsf273 = call float @fabsf(float %21) #7
  %22 = fpext float %fabsf273 to double
  %cmp108 = fcmp ogt double %22, 1.200000e-38
  br i1 %cmp108, label %if.then138, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %lor.lhs.false
  %arrayidx112 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %23 = load float* %arrayidx112, align 4, !tbaa !5
  %fabsf274 = call float @fabsf(float %23) #7
  %24 = fpext float %fabsf274 to double
  %cmp115 = fcmp ogt double %24, 1.200000e-38
  br i1 %cmp115, label %if.then138, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %lor.lhs.false110
  %arrayidx119 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %25 = load float* %arrayidx119, align 4, !tbaa !5
  %fabsf275 = call float @fabsf(float %25) #7
  %26 = fpext float %fabsf275 to double
  %cmp122 = fcmp ogt double %26, 1.200000e-38
  br i1 %cmp122, label %if.then138, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %lor.lhs.false117
  %arrayidx126 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %27 = load float* %arrayidx126, align 4, !tbaa !5
  %fabsf276 = call float @fabsf(float %27) #7
  %28 = fpext float %fabsf276 to double
  %cmp129 = fcmp ogt double %28, 1.200000e-38
  br i1 %cmp129, label %if.then138, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %lor.lhs.false124
  %arrayidx133 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %29 = load float* %arrayidx133, align 4, !tbaa !5
  %fabsf277 = call float @fabsf(float %29) #7
  %30 = fpext float %fabsf277 to double
  %cmp136 = fcmp ogt double %30, 1.200000e-38
  br i1 %cmp136, label %if.then138, label %if.else170

if.then138:                                       ; preds = %for.end, %lor.lhs.false131, %lor.lhs.false124, %lor.lhs.false117, %lor.lhs.false110, %lor.lhs.false
  %call140 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([74 x i8]* @.str42, i64 0, i64 0), i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1) #5
  %arrayidx143 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %31 = load float* %arrayidx143, align 4, !tbaa !5
  %conv144 = fpext float %31 to double
  %arrayidx146 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %32 = load float* %arrayidx146, align 4, !tbaa !5
  %conv147 = fpext float %32 to double
  %arrayidx149 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %33 = load float* %arrayidx149, align 4, !tbaa !5
  %conv150 = fpext float %33 to double
  %34 = load float* %arrayidx99, align 4, !tbaa !5
  %conv153 = fpext float %34 to double
  %35 = load float* %arrayidx155.pre, align 4, !tbaa !5
  %conv156 = fpext float %35 to double
  %arrayidx158 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %36 = load float* %arrayidx158, align 4, !tbaa !5
  %conv159 = fpext float %36 to double
  %arrayidx161 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %37 = load float* %arrayidx161, align 4, !tbaa !5
  %conv162 = fpext float %37 to double
  %arrayidx164 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %38 = load float* %arrayidx164, align 4, !tbaa !5
  %conv165 = fpext float %38 to double
  %arrayidx167 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %39 = load float* %arrayidx167, align 4, !tbaa !5
  %conv168 = fpext float %39 to double
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* %0, double %conv144, double %conv147, double %conv150, double %conv153, double %conv156, double %conv159, double %conv162, double %conv165, double %conv168) #5
  br label %if.end184

if.else170:                                       ; preds = %lor.lhs.false131
  %call172 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([26 x i8]* @.str39, i64 0, i64 0), i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1, i32 %add97, i32 %.pr.addr.1) #5
  %arrayidx175 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %40 = load float* %arrayidx175, align 4, !tbaa !5
  %conv176 = fpext float %40 to double
  %arrayidx178 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %41 = load float* %arrayidx178, align 4, !tbaa !5
  %conv179 = fpext float %41 to double
  %arrayidx181 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %42 = load float* %arrayidx181, align 4, !tbaa !5
  %conv182 = fpext float %42 to double
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* %0, double %conv176, double %conv179, double %conv182) #5
  br label %if.end184

if.end184:                                        ; preds = %if.else170, %if.then138
  %call185 = call i32 @fflush(%struct._IO_FILE* %out) #5
  call void @llvm.lifetime.end(i64 100, i8* %0) #4
  ret void
}

; Function Attrs: optsize
declare i8* @bromacs() #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @write_hconf_p(%struct._IO_FILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture %atoms, i32 %pr, [3 x float]* nocapture %x, [3 x float]* %v, [3 x float]* nocapture %box) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %0 = load i32* %nr, align 4, !tbaa !3
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 712, i32 %0, i32 4) #5
  %1 = bitcast i8* %call to i32*
  %2 = load i32* %nr, align 4, !tbaa !3
  %cmp11 = icmp sgt i32 %2, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv
  %3 = trunc i64 %indvars.iv to i32
  store i32 %3, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %4 = load i32* %nr, align 4, !tbaa !3
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %5, %4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %2, %entry ], [ %4, %for.body ]
  tail call void @write_hconf_indexed_p(%struct._IO_FILE* %out, i8* %title, %struct.t_atoms* %atoms, i32 %.lcssa, i32* %1, i32 %pr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #8
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 716, i8* %call) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_conf_p(i8* %outfile, i8* %title, %struct.t_atoms* nocapture %atoms, i32 %pr, [3 x float]* nocapture %x, [3 x float]* %v, [3 x float]* nocapture %box) #0 {
entry:
  %call = tail call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #5
  tail call void @write_hconf_p(%struct._IO_FILE* %call, i8* %title, %struct.t_atoms* %atoms, i32 %pr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #8
  tail call void @ffclose(%struct._IO_FILE* %call) #5
  ret void
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #2

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind optsize uwtable
define void @write_sto_conf_indexed(i8* %outfile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box, i32 %nindex, i32* %index) #0 {
entry:
  %fr = alloca %struct.t_trxframe, align 8
  %0 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %0) #4
  %call = call i32 @fn2ftp(i8* %outfile) #5
  switch i32 %call, label %sw.default [
    i32 13, label %sw.bb
    i32 14, label %sw.bb2
    i32 15, label %sw.bb9
    i32 16, label %sw.bb9
    i32 17, label %sw.bb9
    i32 26, label %sw.bb11
    i32 28, label %sw.bb11
    i32 27, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #5
  call void @write_hconf_indexed_p(%struct._IO_FILE* %call1, i8* %title, %struct.t_atoms* %atoms, i32 %nindex, i32* %index, i32 3, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #8
  call void @ffclose(%struct._IO_FILE* %call1) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #5
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  store i32 1, i32* %bTitle, align 8, !tbaa !3
  %title3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* %title, i8** %title3, align 8, !tbaa !0
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %1 = load i32* %nr, align 4, !tbaa !3
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 %1, i32* %natoms, align 8, !tbaa !3
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  store i32 1, i32* %bAtoms, align 8, !tbaa !3
  %atoms4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  store %struct.t_atoms* %atoms, %struct.t_atoms** %atoms4, align 8, !tbaa !0
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %bX, align 8, !tbaa !3
  %x5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* %x, [3 x float]** %x5, align 8, !tbaa !0
  %tobool = icmp eq [3 x float]* %v, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb2
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  store i32 1, i32* %bV, align 8, !tbaa !3
  %v6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* %v, [3 x float]** %v6, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %sw.bb2, %if.then
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 1, i32* %bBox, align 8, !tbaa !3
  %arraydecay.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0
  %2 = load float* %arraydecay.i, align 4, !tbaa !5
  store float %2, float* %arraydecay2.i, align 4, !tbaa !5
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %3 = load float* %arrayidx2.i.i, align 4, !tbaa !5
  %arrayidx3.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1
  store float %3, float* %arrayidx3.i.i, align 4, !tbaa !5
  %arrayidx4.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %4 = load float* %arrayidx4.i.i, align 4, !tbaa !5
  %arrayidx5.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2
  store float %4, float* %arrayidx5.i.i, align 4, !tbaa !5
  %arraydecay4.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %arraydecay6.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0
  %5 = load float* %arraydecay4.i, align 4, !tbaa !5
  store float %5, float* %arraydecay6.i, align 4, !tbaa !5
  %arrayidx2.i19.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %6 = load float* %arrayidx2.i19.i, align 4, !tbaa !5
  %arrayidx3.i20.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  store float %6, float* %arrayidx3.i20.i, align 4, !tbaa !5
  %arrayidx4.i21.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %7 = load float* %arrayidx4.i21.i, align 4, !tbaa !5
  %arrayidx5.i22.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2
  store float %7, float* %arrayidx5.i22.i, align 4, !tbaa !5
  %arraydecay8.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %arraydecay10.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0
  %8 = load float* %arraydecay8.i, align 4, !tbaa !5
  store float %8, float* %arraydecay10.i, align 4, !tbaa !5
  %arrayidx2.i15.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %9 = load float* %arrayidx2.i15.i, align 4, !tbaa !5
  %arrayidx3.i16.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1
  store float %9, float* %arrayidx3.i16.i, align 4, !tbaa !5
  %arrayidx4.i17.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %10 = load float* %arrayidx4.i17.i, align 4, !tbaa !5
  %arrayidx5.i18.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  store float %10, float* %arrayidx5.i18.i, align 4, !tbaa !5
  %call8 = call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #5
  call void @write_g96_conf(%struct._IO_FILE* %call8, %struct.t_trxframe* %fr, i32 %nindex, i32* %index) #8
  call void @ffclose(%struct._IO_FILE* %call8) #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry, %entry, %entry
  %call10 = call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #5
  call void @write_pdbfile_indexed(%struct._IO_FILE* %call10, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i8 signext 0, i32 -1, i32 %nindex, i32* %index) #5
  call void @ffclose(%struct._IO_FILE* %call10) #5
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry, %entry, %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str45, i64 0, i64 0), i8* %outfile) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str46, i64 0, i64 0), i8* %outfile) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb9, %if.end, %sw.bb
  call void @llvm.lifetime.end(i64 176, i8* %0) #4
  ret void
}

; Function Attrs: optsize
declare i32 @fn2ftp(i8*) #2

; Function Attrs: optsize
declare void @write_pdbfile_indexed(%struct._IO_FILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32, i32, i32*) #2

; Function Attrs: nounwind optsize uwtable
define void @write_sto_conf(i8* %outfile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #0 {
entry:
  %fr = alloca %struct.t_trxframe, align 8
  %0 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %0) #4
  %call = call i32 @fn2ftp(i8* %outfile) #5
  switch i32 %call, label %sw.default [
    i32 13, label %sw.bb
    i32 14, label %sw.bb1
    i32 15, label %sw.bb8
    i32 16, label %sw.bb8
    i32 17, label %sw.bb8
    i32 26, label %sw.bb10
    i32 28, label %sw.bb10
    i32 27, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %call.i.i = call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #5
  call void @write_hconf_p(%struct._IO_FILE* %call.i.i, i8* %title, %struct.t_atoms* %atoms, i32 3, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #5
  call void @ffclose(%struct._IO_FILE* %call.i.i) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #5
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  store i32 1, i32* %bTitle, align 8, !tbaa !3
  %title2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* %title, i8** %title2, align 8, !tbaa !0
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %1 = load i32* %nr, align 4, !tbaa !3
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 %1, i32* %natoms, align 8, !tbaa !3
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  store i32 1, i32* %bAtoms, align 8, !tbaa !3
  %atoms3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  store %struct.t_atoms* %atoms, %struct.t_atoms** %atoms3, align 8, !tbaa !0
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %bX, align 8, !tbaa !3
  %x4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* %x, [3 x float]** %x4, align 8, !tbaa !0
  %tobool = icmp eq [3 x float]* %v, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb1
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  store i32 1, i32* %bV, align 8, !tbaa !3
  %v5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* %v, [3 x float]** %v5, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %sw.bb1, %if.then
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 1, i32* %bBox, align 8, !tbaa !3
  %arraydecay.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0
  %2 = load float* %arraydecay.i, align 4, !tbaa !5
  store float %2, float* %arraydecay2.i, align 4, !tbaa !5
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %3 = load float* %arrayidx2.i.i, align 4, !tbaa !5
  %arrayidx3.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1
  store float %3, float* %arrayidx3.i.i, align 4, !tbaa !5
  %arrayidx4.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %4 = load float* %arrayidx4.i.i, align 4, !tbaa !5
  %arrayidx5.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2
  store float %4, float* %arrayidx5.i.i, align 4, !tbaa !5
  %arraydecay4.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %arraydecay6.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0
  %5 = load float* %arraydecay4.i, align 4, !tbaa !5
  store float %5, float* %arraydecay6.i, align 4, !tbaa !5
  %arrayidx2.i19.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %6 = load float* %arrayidx2.i19.i, align 4, !tbaa !5
  %arrayidx3.i20.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  store float %6, float* %arrayidx3.i20.i, align 4, !tbaa !5
  %arrayidx4.i21.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %7 = load float* %arrayidx4.i21.i, align 4, !tbaa !5
  %arrayidx5.i22.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2
  store float %7, float* %arrayidx5.i22.i, align 4, !tbaa !5
  %arraydecay8.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %arraydecay10.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0
  %8 = load float* %arraydecay8.i, align 4, !tbaa !5
  store float %8, float* %arraydecay10.i, align 4, !tbaa !5
  %arrayidx2.i15.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %9 = load float* %arrayidx2.i15.i, align 4, !tbaa !5
  %arrayidx3.i16.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1
  store float %9, float* %arrayidx3.i16.i, align 4, !tbaa !5
  %arrayidx4.i17.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %10 = load float* %arrayidx4.i17.i, align 4, !tbaa !5
  %arrayidx5.i18.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  store float %10, float* %arrayidx5.i18.i, align 4, !tbaa !5
  %call7 = call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #5
  call void @write_g96_conf(%struct._IO_FILE* %call7, %struct.t_trxframe* %fr, i32 -1, i32* null) #8
  call void @ffclose(%struct._IO_FILE* %call7) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry, %entry, %entry
  %call9 = call %struct._IO_FILE* @ffopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #5
  call void @write_pdbfile(%struct._IO_FILE* %call9, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i8 signext 0, i32 0) #5
  call void @ffclose(%struct._IO_FILE* %call9) #5
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry, %entry, %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str45, i64 0, i64 0), i8* %outfile) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str47, i64 0, i64 0), i8* %outfile) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb8, %if.end, %sw.bb
  call void @llvm.lifetime.end(i64 176, i8* %0) #4
  ret void
}

; Function Attrs: optsize
declare void @write_pdbfile(%struct._IO_FILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @get_stx_coordnum(i8* %infile, i32* %natoms) #0 {
entry:
  %title.i = alloca [4096 x i8], align 16
  %fr = alloca %struct.t_trxframe, align 8
  %tpx = alloca %struct.t_tpxheader, align 4
  %0 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %0) #4
  %call = call i32 @fn2ftp(i8* %infile) #5
  switch i32 %call, label %sw.default [
    i32 13, label %sw.bb
    i32 14, label %sw.bb1
    i32 15, label %sw.bb5
    i32 16, label %sw.bb5
    i32 17, label %sw.bb5
    i32 27, label %sw.bb7
    i32 28, label %sw.bb7
    i32 26, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %1 = getelementptr inbounds [4096 x i8]* %title.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #4
  %call.i = call %struct._IO_FILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #5
  call fastcc void @get_coordnum_fp(%struct._IO_FILE* %call.i, i8* %1, i32* %natoms) #5
  call void @ffclose(%struct._IO_FILE* %call.i) #5
  call void @llvm.lifetime.end(i64 4096, i8* %1) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = call %struct._IO_FILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #5
  %title = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* null, i8** %title, align 8, !tbaa !0
  %natoms3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 -1, i32* %natoms3, align 8, !tbaa !3
  %atoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  store %struct.t_atoms* null, %struct.t_atoms** %atoms, align 8, !tbaa !0
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* null, [3 x float]** %x, align 8, !tbaa !0
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* null, [3 x float]** %v, align 8, !tbaa !0
  %f = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23
  store [3 x float]* null, [3 x float]** %f, align 8, !tbaa !0
  %call4 = call i32 @read_g96_conf(%struct._IO_FILE* %call2, i8* %infile, %struct.t_trxframe* %fr) #8
  store i32 %call4, i32* %natoms, align 4, !tbaa !3
  call void @ffclose(%struct._IO_FILE* %call2) #5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry, %entry, %entry
  %call6 = call %struct._IO_FILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #5
  call void @get_pdb_coordnum(%struct._IO_FILE* %call6, i32* %natoms) #5
  call void @ffclose(%struct._IO_FILE* %call6) #5
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry, %entry, %entry
  %2 = bitcast %struct.t_tpxheader* %tpx to i8*
  call void @llvm.lifetime.start(i64 40, i8* %2) #4
  call void @read_tpxheader(i8* %infile, %struct.t_tpxheader* %tpx) #5
  %natoms8 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6
  %3 = load i32* %natoms8, align 4, !tbaa !3
  store i32 %3, i32* %natoms, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 40, i8* %2) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str49, i64 0, i64 0), i8* %infile) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb5, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end(i64 176, i8* %0) #4
  ret void
}

; Function Attrs: optsize
declare void @get_pdb_coordnum(%struct._IO_FILE*, i32*) #2

; Function Attrs: optsize
declare void @read_tpxheader(i8*, %struct.t_tpxheader*) #2

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
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #4
  %1 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %1) #4
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %2 = load i32* %nr, align 4, !tbaa !3
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([37 x i8]* @.str50, i64 0, i64 0), i8* %infile) #5
  br label %if.end5

if.else:                                          ; preds = %entry
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %4 = load %struct.t_atom** %atom, align 8, !tbaa !0
  %cmp1 = icmp eq %struct.t_atom* %4, null
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.else
  %call3 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([35 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 890) #5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* %0) #5
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2, %if.then
  %call6 = call i32 @fn2ftp(i8* %infile) #5
  switch i32 %call6, label %sw.default [
    i32 13, label %sw.bb
    i32 14, label %sw.bb7
    i32 15, label %sw.bb18
    i32 16, label %sw.bb18
    i32 17, label %sw.bb18
    i32 26, label %sw.bb19
    i32 28, label %sw.bb19
    i32 27, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end5
  %5 = bitcast i32* %ndec.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #4
  %call.i = call %struct._IO_FILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #5
  %call1.i = call fastcc i32 @get_w_conf(%struct._IO_FILE* %call.i, i8* %infile, i8* %title, %struct.t_atoms* %atoms, i32* %ndec.i, [3 x float]* %x, [3 x float]* %v, [3 x float]* %box) #5
  call void @ffclose(%struct._IO_FILE* %call.i) #5
  call void @llvm.lifetime.end(i64 4, i8* %5) #4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end5
  %title8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* %title, i8** %title8, align 8, !tbaa !0
  %6 = load i32* %nr, align 4, !tbaa !3
  %natoms10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 %6, i32* %natoms10, align 8, !tbaa !3
  %atoms11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  store %struct.t_atoms* %atoms, %struct.t_atoms** %atoms11, align 8, !tbaa !0
  %x12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* %x, [3 x float]** %x12, align 8, !tbaa !0
  %v13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* %v, [3 x float]** %v13, align 8, !tbaa !0
  %f = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23
  store [3 x float]* null, [3 x float]** %f, align 8, !tbaa !0
  %call14 = call %struct._IO_FILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str48, i64 0, i64 0)) #5
  %call15 = call i32 @read_g96_conf(%struct._IO_FILE* %call14, i8* %infile, %struct.t_trxframe* %fr) #8
  call void @ffclose(%struct._IO_FILE* %call14) #5
  %arraydecay.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %7 = load float* %arraydecay.i, align 4, !tbaa !5
  store float %7, float* %arraydecay2.i, align 4, !tbaa !5
  %arrayidx2.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1
  %8 = load float* %arrayidx2.i.i, align 4, !tbaa !5
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  store float %8, float* %arrayidx3.i.i, align 4, !tbaa !5
  %arrayidx4.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2
  %9 = load float* %arrayidx4.i.i, align 4, !tbaa !5
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  store float %9, float* %arrayidx5.i.i, align 4, !tbaa !5
  %arraydecay4.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0
  %arraydecay6.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %10 = load float* %arraydecay4.i, align 4, !tbaa !5
  store float %10, float* %arraydecay6.i, align 4, !tbaa !5
  %arrayidx2.i19.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  %11 = load float* %arrayidx2.i19.i, align 4, !tbaa !5
  %arrayidx3.i20.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  store float %11, float* %arrayidx3.i20.i, align 4, !tbaa !5
  %arrayidx4.i21.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2
  %12 = load float* %arrayidx4.i21.i, align 4, !tbaa !5
  %arrayidx5.i22.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  store float %12, float* %arrayidx5.i22.i, align 4, !tbaa !5
  %arraydecay8.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0
  %arraydecay10.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %13 = load float* %arraydecay8.i, align 4, !tbaa !5
  store float %13, float* %arraydecay10.i, align 4, !tbaa !5
  %arrayidx2.i15.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1
  %14 = load float* %arrayidx2.i15.i, align 4, !tbaa !5
  %arrayidx3.i16.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  store float %14, float* %arrayidx3.i16.i, align 4, !tbaa !5
  %arrayidx4.i17.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  %15 = load float* %arrayidx4.i17.i, align 4, !tbaa !5
  %arrayidx5.i18.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  store float %15, float* %arrayidx5.i18.i, align 4, !tbaa !5
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end5, %if.end5, %if.end5
  call void @read_pdb_conf(i8* %infile, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i32 1) #5
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end5, %if.end5, %if.end5
  %call20 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 918, i32 1, i32 50264) #5
  %16 = bitcast i8* %call20 to %struct.t_topology*
  call void @read_tpx(i8* %infile, i32* %i1, float* %r1, float* %r2, %struct.t_inputrec* null, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* null, %struct.t_topology* %16) #5
  %name = bitcast i8* %call20 to i8***
  %17 = load i8*** %name, align 8, !tbaa !0
  %18 = load i8** %17, align 8, !tbaa !0
  %call21 = call i8* @strcpy(i8* %title, i8* %18) #5
  %atoms22 = getelementptr inbounds i8* %call20, i64 45800
  %nr23 = bitcast i8* %atoms22 to i32*
  %19 = load i32* %nr23, align 4, !tbaa !3
  store i32 %19, i32* %nr, align 4, !tbaa !3
  %nres = getelementptr inbounds i8* %call20, i64 45840
  %20 = bitcast i8* %nres to i32*
  %21 = load i32* %20, align 4, !tbaa !3
  %nres26 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  store i32 %21, i32* %nres26, align 4, !tbaa !3
  %ngrpname = getelementptr inbounds i8* %call20, i64 45856
  %22 = bitcast i8* %ngrpname to i32*
  %23 = load i32* %22, align 4, !tbaa !3
  %ngrpname28 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 7
  store i32 %23, i32* %ngrpname28, align 4, !tbaa !3
  %atom29 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %24 = load %struct.t_atom** %atom29, align 8, !tbaa !0
  %tobool = icmp eq %struct.t_atom* %24, null
  br i1 %tobool, label %if.then30, label %if.end34

if.then30:                                        ; preds = %sw.bb19
  %call32 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 929, i32 %19, i32 40) #5
  %25 = bitcast i8* %call32 to %struct.t_atom*
  store %struct.t_atom* %25, %struct.t_atom** %atom29, align 8, !tbaa !0
  br label %if.end34

if.end34:                                         ; preds = %sw.bb19, %if.then30
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %26 = load i8**** %atomname, align 8, !tbaa !0
  %tobool35 = icmp eq i8*** %26, null
  br i1 %tobool35, label %if.then36, label %for.cond.preheader

if.then36:                                        ; preds = %if.end34
  %27 = load i32* %nr, align 4, !tbaa !3
  %call38 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 931, i32 %27, i32 8) #5
  %28 = bitcast i8* %call38 to i8***
  store i8*** %28, i8**** %atomname, align 8, !tbaa !0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end34, %if.then36
  %29 = load i32* %nr, align 4, !tbaa !3
  %cmp42227 = icmp sgt i32 %29, 0
  br i1 %cmp42227, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %atom46 = getelementptr inbounds i8* %call20, i64 45808
  %30 = bitcast i8* %atom46 to %struct.t_atom**
  %atomname50 = getelementptr inbounds i8* %call20, i64 45816
  %31 = bitcast i8* %atomname50 to i8****
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv233 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next234, %for.body ]
  %32 = load %struct.t_atom** %atom29, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.t_atom* %32, i64 %indvars.iv233
  %33 = load %struct.t_atom** %30, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds %struct.t_atom* %33, i64 %indvars.iv233
  %34 = bitcast %struct.t_atom* %arrayidx to i8*
  %35 = bitcast %struct.t_atom* %arrayidx47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 40, i32 4, i1 false), !tbaa.struct !6
  %36 = load i8**** %31, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i8*** %36, i64 %indvars.iv233
  %37 = load i8*** %arrayidx51, align 8, !tbaa !0
  %38 = load i8**** %atomname, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i8*** %38, i64 %indvars.iv233
  store i8** %37, i8*** %arrayidx54, align 8, !tbaa !0
  %indvars.iv.next234 = add i64 %indvars.iv233, 1
  %39 = load i32* %nr, align 4, !tbaa !3
  %40 = trunc i64 %indvars.iv.next234 to i32
  %cmp42 = icmp slt i32 %40, %39
  br i1 %cmp42, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  %41 = load i8**** %resname, align 8, !tbaa !0
  %tobool55 = icmp eq i8*** %41, null
  br i1 %tobool55, label %if.then56, label %for.cond61.preheader

if.then56:                                        ; preds = %for.end
  %42 = load i32* %nres26, align 4, !tbaa !3
  %call58 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 938, i32 %42, i32 8) #5
  %43 = bitcast i8* %call58 to i8***
  store i8*** %43, i8**** %resname, align 8, !tbaa !0
  br label %for.cond61.preheader

for.cond61.preheader:                             ; preds = %for.end, %if.then56
  %44 = phi i8*** [ %43, %if.then56 ], [ %41, %for.end ]
  %45 = load i32* %nres26, align 4, !tbaa !3
  %cmp63225 = icmp sgt i32 %45, 0
  br i1 %cmp63225, label %for.body64.lr.ph, label %for.end74

for.body64.lr.ph:                                 ; preds = %for.cond61.preheader
  %resname67 = getelementptr inbounds i8* %call20, i64 45848
  %46 = bitcast i8* %resname67 to i8****
  br label %for.body64

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %for.body64.lr.ph
  %47 = phi i8*** [ %44, %for.body64.lr.ph ], [ %.pre235, %for.body64.for.body64_crit_edge ]
  %indvars.iv231 = phi i64 [ 0, %for.body64.lr.ph ], [ %indvars.iv.next232, %for.body64.for.body64_crit_edge ]
  %48 = load i8**** %46, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds i8*** %48, i64 %indvars.iv231
  %49 = load i8*** %arrayidx68, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds i8*** %47, i64 %indvars.iv231
  store i8** %49, i8*** %arrayidx71, align 8, !tbaa !0
  %indvars.iv.next232 = add i64 %indvars.iv231, 1
  %50 = trunc i64 %indvars.iv.next232 to i32
  %cmp63 = icmp slt i32 %50, %45
  br i1 %cmp63, label %for.body64.for.body64_crit_edge, label %for.end74

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  %.pre235 = load i8**** %resname, align 8, !tbaa !0
  br label %for.body64

for.end74:                                        ; preds = %for.body64, %for.cond61.preheader
  %grpname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  %51 = load i8**** %grpname, align 8, !tbaa !0
  %tobool75 = icmp eq i8*** %51, null
  br i1 %tobool75, label %if.then76, label %for.cond81.preheader

if.then76:                                        ; preds = %for.end74
  %52 = load i32* %ngrpname28, align 4, !tbaa !3
  %call78 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 943, i32 %52, i32 8) #5
  %53 = bitcast i8* %call78 to i8***
  store i8*** %53, i8**** %grpname, align 8, !tbaa !0
  br label %for.cond81.preheader

for.cond81.preheader:                             ; preds = %for.end74, %if.then76
  %54 = phi i8*** [ %53, %if.then76 ], [ %51, %for.end74 ]
  %55 = load i32* %ngrpname28, align 4, !tbaa !3
  %cmp83223 = icmp sgt i32 %55, 0
  br i1 %cmp83223, label %for.body84.lr.ph, label %for.cond95.preheader

for.body84.lr.ph:                                 ; preds = %for.cond81.preheader
  %grpname87 = getelementptr inbounds i8* %call20, i64 45864
  %56 = bitcast i8* %grpname87 to i8****
  br label %for.body84

for.cond95.preheader:                             ; preds = %for.body84, %for.cond81.preheader
  %grps = getelementptr inbounds i8* %call20, i64 46928
  %57 = bitcast i8* %grps to [9 x %struct.t_grps]*
  br label %for.body97

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %for.body84.lr.ph
  %58 = phi i8*** [ %54, %for.body84.lr.ph ], [ %.pre, %for.body84.for.body84_crit_edge ]
  %indvars.iv229 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next230, %for.body84.for.body84_crit_edge ]
  %59 = load i8**** %56, align 8, !tbaa !0
  %arrayidx88 = getelementptr inbounds i8*** %59, i64 %indvars.iv229
  %60 = load i8*** %arrayidx88, align 8, !tbaa !0
  %arrayidx91 = getelementptr inbounds i8*** %58, i64 %indvars.iv229
  store i8** %60, i8*** %arrayidx91, align 8, !tbaa !0
  %indvars.iv.next230 = add i64 %indvars.iv229, 1
  %61 = trunc i64 %indvars.iv.next230 to i32
  %cmp83 = icmp slt i32 %61, %55
  br i1 %cmp83, label %for.body84.for.body84_crit_edge, label %for.cond95.preheader

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  %.pre = load i8**** %grpname, align 8, !tbaa !0
  br label %for.body84

for.body97:                                       ; preds = %for.inc134, %for.cond95.preheader
  %indvars.iv = phi i64 [ 0, %for.cond95.preheader ], [ %indvars.iv.next, %for.inc134 ]
  %nr101 = getelementptr inbounds [9 x %struct.t_grps]* %57, i64 0, i64 %indvars.iv, i32 0
  %62 = load i32* %nr101, align 4, !tbaa !3
  %nr105 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 %indvars.iv, i32 0
  store i32 %62, i32* %nr105, align 4, !tbaa !3
  %cmp110 = icmp sgt i32 %62, 0
  br i1 %cmp110, label %if.then111, label %for.inc134

if.then111:                                       ; preds = %for.body97
  %call116 = call i8* @save_calloc(i8* getelementptr inbounds ([22 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 950, i32 %62, i32 4) #5
  %63 = bitcast i8* %call116 to i32*
  %nm_ind = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 %indvars.iv, i32 1
  store i32* %63, i32** %nm_ind, align 8, !tbaa !0
  %nm_ind128 = getelementptr inbounds [9 x %struct.t_grps]* %57, i64 0, i64 %indvars.iv, i32 1
  %64 = load i32** %nm_ind128, align 8, !tbaa !0
  %65 = bitcast i32* %64 to i8*
  %66 = load i32* %nr105, align 4, !tbaa !3
  %conv = sext i32 %66 to i64
  %mul = shl nsw i64 %conv, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call116, i8* %65, i64 %mul, i32 4, i1 false)
  br label %for.inc134

for.inc134:                                       ; preds = %for.body97, %if.then111
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 9
  br i1 %exitcond, label %sw.epilog, label %for.body97

sw.default:                                       ; preds = %if.end5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str58, i64 0, i64 0), i8* %infile) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc134, %sw.default, %sw.bb18, %sw.bb7, %sw.bb
  call void @llvm.lifetime.end(i64 176, i8* %1) #4
  call void @llvm.lifetime.end(i64 256, i8* %0) #4
  ret void
}

; Function Attrs: optsize
declare void @read_pdb_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i32) #2

; Function Attrs: optsize
declare void @read_tpx(i8*, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: optsize
declare void @_unexpected_eof(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: optsize
declare i8** @put_symtab(%struct.t_symtab*, i8*) #2

; Function Attrs: optsize
declare void @_too_few(i8*, i32) #2

; Function Attrs: optsize
declare void @warning(i8*) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
!6 = metadata !{i64 0, i64 4, metadata !5, i64 4, i64 4, metadata !5, i64 8, i64 4, metadata !5, i64 12, i64 4, metadata !5, i64 16, i64 2, metadata !7, i64 18, i64 2, metadata !7, i64 20, i64 4, metadata !3, i64 24, i64 4, metadata !3, i64 28, i64 9, metadata !1, i64 37, i64 1, metadata !1}
!7 = metadata !{metadata !"short", metadata !1}
