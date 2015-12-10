; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_trxframe = type { i32, i32, i32, float, float, float, i32, i8*, i32, i32, i32, float, i32, float, i32, %struct.t_atoms*, i32, float, i32, [3 x float]*, i32, [3 x float]*, i32, [3 x float]*, i32, [3 x [3 x float]] }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_trnheader = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float }

@__frame = internal unnamed_addr global i32 -12345, align 4
@.str = private unnamed_addr constant [41 x i8] c"DEATH HORROR prec (%g) <= 0 in prec2ndec\00", align 1
@.str1 = private unnamed_addr constant [42 x i8] c"Need coordinates to write a %s trajectory\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"vout\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"fout\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"xout\00", align 1
@.str6 = private unnamed_addr constant [43 x i8] c"Can not write a %s file without atom names\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"frame t= %.3f\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"Sorry, write_trxframe_indexed can not write %s\00", align 1
@.str9 = private unnamed_addr constant [39 x i8] c"Sorry, write_trxframe can not write %s\00", align 1
@.str10 = private unnamed_addr constant [32 x i8] c"Sorry, write_trx can only write\00", align 1
@.str11 = private unnamed_addr constant [49 x i8] c"DEATH HORROR in read_next_frame ftp=%s,status=%d\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"fr->x\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"fr->v\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"No XTC!\0A\00", align 1
@.str16 = private unnamed_addr constant [38 x i8] c"Not supported in read_first_frame: %s\00", align 1
@nxframe = internal unnamed_addr global i32 0, align 4
@.str17 = private unnamed_addr constant [7 x i8] c"xframe\00", align 1
@xframe = internal unnamed_addr global %struct.t_trxframe* null, align 8
@stderr = external global %struct._IO_FILE*
@.str18 = private unnamed_addr constant [29 x i8] c"Reading frames from pdb file\00", align 1
@.str19 = private unnamed_addr constant [29 x i8] c"\0ANo coordinates in pdb file\0A\00", align 1
@BOX = internal global [3 x double] zeroinitializer, align 16
@.str20 = private unnamed_addr constant [3 x i8] c"*x\00", align 1
@NATOMS = internal global i32 0, align 4
@DT = internal global double 0.000000e+00, align 8
@.str28 = private unnamed_addr constant [10 x i8] c"\0AChoice: \00", align 1
@stdout = external global %struct._IO_FILE*
@.str29 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@eFF = internal unnamed_addr global i32 0, align 4
@bReadBox = internal unnamed_addr global i32 0, align 4
@.str31 = private unnamed_addr constant [15 x i8] c"%d%lf%lf%lf%lf\00", align 1
@.str33 = private unnamed_addr constant [19 x i8] c"Number of atoms ? \00", align 1
@.str34 = private unnamed_addr constant [27 x i8] c"Time between timeframes ? \00", align 1
@.str35 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str36 = private unnamed_addr constant [13 x i8] c"Box X Y Z ? \00", align 1
@.str37 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str40 = private unnamed_addr constant [43 x i8] c"WARNING: Incomplete header: nr %d time %g\0A\00", align 1
@.str41 = private unnamed_addr constant [42 x i8] c"WARNING: Incomplete frame: nr %d time %g\0A\00", align 1
@.str42 = private unnamed_addr constant [11 x i8] c"Last frame\00", align 1
@.str43 = private unnamed_addr constant [25 x i8] c"\0D%-14s %6d time %8.3f   \00", align 1
@.str44 = private unnamed_addr constant [15 x i8] c"Skipping frame\00", align 1
@.str45 = private unnamed_addr constant [14 x i8] c"Reading frame\00", align 1
@.str46 = private unnamed_addr constant [17 x i8] c" '%s', %d atoms\0A\00", align 1
@.str47 = private unnamed_addr constant [5 x i8] c" t= \00", align 1
@.str48 = private unnamed_addr constant [52 x i8] c"Number of atoms in pdb frame %d is %d instead of %d\00", align 1
@tbegin = external global float
@tend = external global float
@.str49 = private unnamed_addr constant [37 x i8] c"error reading statusfile: x[%d][%d]\0A\00", align 1
@.str50 = private unnamed_addr constant [6 x i8] c"fr->f\00", align 1
@str = private unnamed_addr constant [2 x i8] c"\0A\00"
@str51 = private unnamed_addr constant [22 x i8] c"   Select File Format\00"
@str52 = private unnamed_addr constant [28 x i8] c"---------------------------\00"
@str53 = private unnamed_addr constant [12 x i8] c"1. XYZ File\00"
@str54 = private unnamed_addr constant [21 x i8] c"2. XYZ File with Box\00"
@str55 = private unnamed_addr constant [30 x i8] c"3. Gromos-87 Ascii Trajectory\00"
@str56 = private unnamed_addr constant [39 x i8] c"4. Gromos-87 Ascii Trajectory with Box\00"
@str57 = private unnamed_addr constant [20 x i8] c"GROMOS! OH DEAR...\0A\00"
@str58 = private unnamed_addr constant [13 x i8] c"Hellow World\00"

; Function Attrs: nounwind optsize readonly uwtable
define i32 @nframes_read() #0 {
entry:
  %0 = load i32* @__frame, align 4, !dbg !518, !tbaa !519
  ret i32 %0, !dbg !518
}

; Function Attrs: nounwind optsize uwtable
define i32 @prec2ndec(float %prec) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %prec}, i64 0, metadata !73), !dbg !522
  %cmp = fcmp ugt float %prec, 0.000000e+00, !dbg !523
  %conv1.pre = fpext float %prec to double, !dbg !524
  br i1 %cmp, label %if.end, label %if.then, !dbg !523

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([41 x i8]* @.str, i64 0, i64 0), double %conv1.pre) #7, !dbg !525
  br label %if.end, !dbg !525

if.end:                                           ; preds = %entry, %if.then
  %call = tail call double @log(double %conv1.pre) #7, !dbg !524
  %div = fdiv double %call, 0x40026BB1BBB55516, !dbg !524
  %add = fadd double %div, 5.000000e-01, !dbg !524
  %conv3 = fptosi double %add to i32, !dbg !524
  ret i32 %conv3, !dbg !524
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize
declare double @log(double) #4

; Function Attrs: nounwind optsize uwtable
define void @clear_trxframe(%struct.t_trxframe* %fr, i32 %bFirst) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !194), !dbg !526
  tail call void @llvm.dbg.value(metadata !{i32 %bFirst}, i64 0, metadata !195), !dbg !526
  %not_ok = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 1, !dbg !527
  store i32 0, i32* %not_ok, align 4, !dbg !527, !tbaa !519
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !528
  store i32 0, i32* %bTitle, align 4, !dbg !528, !tbaa !519
  %bStep = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !529
  store i32 0, i32* %bStep, align 4, !dbg !529, !tbaa !519
  %bTime = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !530
  store i32 0, i32* %bTime, align 4, !dbg !530, !tbaa !519
  %bLambda = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 12, !dbg !531
  store i32 0, i32* %bLambda, align 4, !dbg !531, !tbaa !519
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !532
  store i32 0, i32* %bAtoms, align 4, !dbg !532, !tbaa !519
  %bPrec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !533
  store i32 0, i32* %bPrec, align 4, !dbg !533, !tbaa !519
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !534
  store i32 0, i32* %bX, align 4, !dbg !534, !tbaa !519
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !535
  store i32 0, i32* %bV, align 4, !dbg !535, !tbaa !519
  %bF = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22, !dbg !536
  store i32 0, i32* %bF, align 4, !dbg !536, !tbaa !519
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !537
  store i32 0, i32* %bBox, align 4, !dbg !537, !tbaa !519
  %tobool = icmp eq i32 %bFirst, 0, !dbg !538
  br i1 %tobool, label %if.end, label %if.then, !dbg !538

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0, !dbg !539
  store i32 0, i32* %flags, align 4, !dbg !539, !tbaa !519
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !541
  store i32 -1, i32* %natoms, align 4, !dbg !541, !tbaa !519
  %t0 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 3, !dbg !542
  store float 0.000000e+00, float* %t0, align 4, !dbg !542, !tbaa !543
  %tpf = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 4, !dbg !544
  store float 0.000000e+00, float* %tpf, align 4, !dbg !544, !tbaa !543
  %tppf = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 5, !dbg !545
  store float 0.000000e+00, float* %tppf, align 4, !dbg !545, !tbaa !543
  %title = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !546
  store i8* null, i8** %title, align 8, !dbg !546, !tbaa !547
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !548
  store i32 0, i32* %step, align 4, !dbg !548, !tbaa !519
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !549
  store float 0.000000e+00, float* %time, align 4, !dbg !549, !tbaa !543
  %lambda = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 13, !dbg !550
  store float 0.000000e+00, float* %lambda, align 4, !dbg !550, !tbaa !543
  %atoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !551
  store %struct.t_atoms* null, %struct.t_atoms** %atoms, align 8, !dbg !551, !tbaa !547
  %prec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !552
  store float 0.000000e+00, float* %prec, align 4, !dbg !552, !tbaa !543
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !553
  store [3 x float]* null, [3 x float]** %x, align 8, !dbg !553, !tbaa !547
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !554
  store [3 x float]* null, [3 x float]** %v, align 8, !dbg !554, !tbaa !547
  %f = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23, !dbg !555
  store [3 x float]* null, [3 x float]** %f, align 8, !dbg !555, !tbaa !547
  %arraydecay = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !556
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay}, i64 0, metadata !557) #5, !dbg !558
  tail call void @llvm.dbg.value(metadata !559, i64 0, metadata !560) #5, !dbg !561
  %0 = bitcast [3 x float]* %arraydecay to i8*, !dbg !562
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 4, i1 false) #5, !dbg !563
  br label %if.end, !dbg !564

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !565
}

; Function Attrs: nounwind optsize uwtable
define i32 @write_trxframe_indexed(i32 %fnum, %struct.t_trxframe* %fr, i32 %nind, i32* %ind) #1 {
entry:
  %title = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32 %fnum}, i64 0, metadata !200), !dbg !566
  call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !201), !dbg !566
  call void @llvm.dbg.value(metadata !{i32 %nind}, i64 0, metadata !202), !dbg !566
  call void @llvm.dbg.value(metadata !{i32* %ind}, i64 0, metadata !203), !dbg !566
  %0 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0, !dbg !567
  call void @llvm.lifetime.start(i64 4096, i8* %0) #5, !dbg !567
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %title}, metadata !204), !dbg !567
  call void @llvm.dbg.value(metadata !568, i64 0, metadata !208), !dbg !569
  call void @llvm.dbg.value(metadata !568, i64 0, metadata !209), !dbg !569
  call void @llvm.dbg.value(metadata !568, i64 0, metadata !210), !dbg !569
  %bPrec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !570
  %1 = load i32* %bPrec, align 4, !dbg !570, !tbaa !519
  %tobool = icmp eq i32 %1, 0, !dbg !570
  br i1 %tobool, label %if.end, label %if.then, !dbg !570

if.then:                                          ; preds = %entry
  %prec1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !571
  %2 = load float* %prec1, align 4, !dbg !571, !tbaa !543
  call void @llvm.dbg.value(metadata !{float %2}, i64 0, metadata !212), !dbg !571
  br label %if.end, !dbg !571

if.end:                                           ; preds = %entry, %if.then
  %prec.0 = phi float [ %2, %if.then ], [ 1.000000e+03, %entry ]
  %call = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !572
  %call.off = add i32 %call, -4, !dbg !572
  %switch = icmp ult i32 %call.off, 2, !dbg !572
  br i1 %switch, label %sw.epilog, label %sw.default, !dbg !572

sw.default:                                       ; preds = %if.end
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !573
  %3 = load i32* %bX, align 4, !dbg !573, !tbaa !519
  %tobool2 = icmp eq i32 %3, 0, !dbg !573
  br i1 %tobool2, label %if.then3, label %sw.epilog, !dbg !573

if.then3:                                         ; preds = %sw.default
  %call4 = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !575
  %call5 = call i8* @ftp2ext(i32 %call4) #7, !dbg !575
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str1, i64 0, i64 0), i8* %call5) #7, !dbg !575
  br label %sw.epilog, !dbg !575

sw.epilog:                                        ; preds = %sw.default, %if.then3, %if.end
  %call7 = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !576
  switch i32 %call7, label %sw.epilog57 [
    i32 5, label %sw.bb8
    i32 4, label %sw.bb8
    i32 6, label %sw.bb36
    i32 7, label %sw.bb36
  ], !dbg !576

sw.bb8:                                           ; preds = %sw.epilog, %sw.epilog
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !577
  %4 = load i32* %bV, align 4, !dbg !577, !tbaa !519
  %tobool9 = icmp eq i32 %4, 0, !dbg !577
  br i1 %tobool9, label %if.end17, label %if.then10, !dbg !577

if.then10:                                        ; preds = %sw.bb8
  %call11 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 172, i32 %nind, i32 12) #7, !dbg !579
  %5 = bitcast i8* %call11 to [3 x float]*, !dbg !579
  call void @llvm.dbg.value(metadata !{[3 x float]* %5}, i64 0, metadata !209), !dbg !579
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !211), !dbg !581
  %cmp209 = icmp sgt i32 %nind, 0, !dbg !581
  br i1 %cmp209, label %for.body.lr.ph, label %if.end17, !dbg !581

for.body.lr.ph:                                   ; preds = %if.then10
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !583
  %6 = load [3 x float]** %v, align 8, !dbg !583, !tbaa !547
  br label %for.body, !dbg !581

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv215 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next216, %for.body ]
  %arrayidx = getelementptr inbounds i32* %ind, i64 %indvars.iv215, !dbg !583
  %7 = load i32* %arrayidx, align 4, !dbg !583, !tbaa !519
  %idxprom12 = sext i32 %7 to i64, !dbg !583
  %arraydecay = getelementptr inbounds [3 x float]* %6, i64 %idxprom12, i64 0, !dbg !583
  %arraydecay16 = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv215, i64 0, !dbg !583
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !584), !dbg !585
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay16}, i64 0, metadata !586), !dbg !585
  %8 = load float* %arraydecay, align 4, !dbg !587, !tbaa !543
  store float %8, float* %arraydecay16, align 4, !dbg !587, !tbaa !543
  %arrayidx2.i = getelementptr inbounds [3 x float]* %6, i64 %idxprom12, i64 1, !dbg !588
  %9 = load float* %arrayidx2.i, align 4, !dbg !588, !tbaa !543
  %arrayidx3.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv215, i64 1, !dbg !588
  store float %9, float* %arrayidx3.i, align 4, !dbg !588, !tbaa !543
  %arrayidx4.i = getelementptr inbounds [3 x float]* %6, i64 %idxprom12, i64 2, !dbg !589
  %10 = load float* %arrayidx4.i, align 4, !dbg !589, !tbaa !543
  %arrayidx5.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv215, i64 2, !dbg !589
  store float %10, float* %arrayidx5.i, align 4, !dbg !589, !tbaa !543
  %indvars.iv.next216 = add i64 %indvars.iv215, 1, !dbg !581
  %lftr.wideiv217 = trunc i64 %indvars.iv.next216 to i32, !dbg !581
  %exitcond218 = icmp eq i32 %lftr.wideiv217, %nind, !dbg !581
  br i1 %exitcond218, label %if.end17, label %for.body, !dbg !581

if.end17:                                         ; preds = %if.then10, %for.body, %sw.bb8
  %vout.0 = phi [3 x float]* [ null, %sw.bb8 ], [ %5, %for.body ], [ %5, %if.then10 ]
  %bF = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22, !dbg !590
  %11 = load i32* %bF, align 4, !dbg !590, !tbaa !519
  %tobool18 = icmp eq i32 %11, 0, !dbg !590
  br i1 %tobool18, label %sw.bb36, label %if.then19, !dbg !590

if.then19:                                        ; preds = %if.end17
  %call20 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 177, i32 %nind, i32 12) #7, !dbg !591
  %12 = bitcast i8* %call20 to [3 x float]*, !dbg !591
  call void @llvm.dbg.value(metadata !{[3 x float]* %12}, i64 0, metadata !210), !dbg !591
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !211), !dbg !593
  %cmp22207 = icmp sgt i32 %nind, 0, !dbg !593
  br i1 %cmp22207, label %for.body23.lr.ph, label %sw.bb36, !dbg !593

for.body23.lr.ph:                                 ; preds = %if.then19
  %f = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23, !dbg !595
  %13 = load [3 x float]** %f, align 8, !dbg !595, !tbaa !547
  br label %for.body23, !dbg !593

for.body23:                                       ; preds = %for.body23, %for.body23.lr.ph
  %indvars.iv211 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next212, %for.body23 ]
  %arrayidx25 = getelementptr inbounds i32* %ind, i64 %indvars.iv211, !dbg !595
  %14 = load i32* %arrayidx25, align 4, !dbg !595, !tbaa !519
  %idxprom26 = sext i32 %14 to i64, !dbg !595
  %arraydecay28 = getelementptr inbounds [3 x float]* %13, i64 %idxprom26, i64 0, !dbg !595
  %arraydecay31 = getelementptr inbounds [3 x float]* %12, i64 %indvars.iv211, i64 0, !dbg !595
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay28}, i64 0, metadata !596), !dbg !597
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay31}, i64 0, metadata !598), !dbg !597
  %15 = load float* %arraydecay28, align 4, !dbg !599, !tbaa !543
  store float %15, float* %arraydecay31, align 4, !dbg !599, !tbaa !543
  %arrayidx2.i197 = getelementptr inbounds [3 x float]* %13, i64 %idxprom26, i64 1, !dbg !600
  %16 = load float* %arrayidx2.i197, align 4, !dbg !600, !tbaa !543
  %arrayidx3.i198 = getelementptr inbounds [3 x float]* %12, i64 %indvars.iv211, i64 1, !dbg !600
  store float %16, float* %arrayidx3.i198, align 4, !dbg !600, !tbaa !543
  %arrayidx4.i199 = getelementptr inbounds [3 x float]* %13, i64 %idxprom26, i64 2, !dbg !601
  %17 = load float* %arrayidx4.i199, align 4, !dbg !601, !tbaa !543
  %arrayidx5.i200 = getelementptr inbounds [3 x float]* %12, i64 %indvars.iv211, i64 2, !dbg !601
  store float %17, float* %arrayidx5.i200, align 4, !dbg !601, !tbaa !543
  %indvars.iv.next212 = add i64 %indvars.iv211, 1, !dbg !593
  %lftr.wideiv213 = trunc i64 %indvars.iv.next212 to i32, !dbg !593
  %exitcond214 = icmp eq i32 %lftr.wideiv213, %nind, !dbg !593
  br i1 %exitcond214, label %sw.bb36, label %for.body23, !dbg !593

sw.bb36:                                          ; preds = %if.then19, %for.body23, %if.end17, %sw.epilog, %sw.epilog
  %vout.1 = phi [3 x float]* [ null, %sw.epilog ], [ null, %sw.epilog ], [ %vout.0, %if.end17 ], [ %vout.0, %for.body23 ], [ %vout.0, %if.then19 ]
  %fout.0 = phi [3 x float]* [ null, %sw.epilog ], [ null, %sw.epilog ], [ null, %if.end17 ], [ %12, %for.body23 ], [ %12, %if.then19 ]
  %bX37 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !602
  %18 = load i32* %bX37, align 4, !dbg !602, !tbaa !519
  %tobool38 = icmp eq i32 %18, 0, !dbg !602
  br i1 %tobool38, label %sw.epilog57, label %if.then39, !dbg !602

if.then39:                                        ; preds = %sw.bb36
  %call40 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 184, i32 %nind, i32 12) #7, !dbg !603
  %19 = bitcast i8* %call40 to [3 x float]*, !dbg !603
  call void @llvm.dbg.value(metadata !{[3 x float]* %19}, i64 0, metadata !208), !dbg !603
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !211), !dbg !605
  %cmp42205 = icmp sgt i32 %nind, 0, !dbg !605
  br i1 %cmp42205, label %for.body43.lr.ph, label %sw.epilog57, !dbg !605

for.body43.lr.ph:                                 ; preds = %if.then39
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !607
  %20 = load [3 x float]** %x, align 8, !dbg !607, !tbaa !547
  br label %for.body43, !dbg !605

for.body43:                                       ; preds = %for.body43, %for.body43.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body43.lr.ph ], [ %indvars.iv.next, %for.body43 ]
  %arrayidx45 = getelementptr inbounds i32* %ind, i64 %indvars.iv, !dbg !607
  %21 = load i32* %arrayidx45, align 4, !dbg !607, !tbaa !519
  %idxprom46 = sext i32 %21 to i64, !dbg !607
  %arraydecay48 = getelementptr inbounds [3 x float]* %20, i64 %idxprom46, i64 0, !dbg !607
  %arraydecay51 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv, i64 0, !dbg !607
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay48}, i64 0, metadata !608), !dbg !609
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay51}, i64 0, metadata !610), !dbg !609
  %22 = load float* %arraydecay48, align 4, !dbg !611, !tbaa !543
  store float %22, float* %arraydecay51, align 4, !dbg !611, !tbaa !543
  %arrayidx2.i201 = getelementptr inbounds [3 x float]* %20, i64 %idxprom46, i64 1, !dbg !612
  %23 = load float* %arrayidx2.i201, align 4, !dbg !612, !tbaa !543
  %arrayidx3.i202 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv, i64 1, !dbg !612
  store float %23, float* %arrayidx3.i202, align 4, !dbg !612, !tbaa !543
  %arrayidx4.i203 = getelementptr inbounds [3 x float]* %20, i64 %idxprom46, i64 2, !dbg !613
  %24 = load float* %arrayidx4.i203, align 4, !dbg !613, !tbaa !543
  %arrayidx5.i204 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv, i64 2, !dbg !613
  store float %24, float* %arrayidx5.i204, align 4, !dbg !613, !tbaa !543
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !605
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !605
  %exitcond = icmp eq i32 %lftr.wideiv, %nind, !dbg !605
  br i1 %exitcond, label %sw.epilog57, label %for.body43, !dbg !605

sw.epilog57:                                      ; preds = %if.then39, %for.body43, %sw.bb36, %sw.epilog
  %vout.2 = phi [3 x float]* [ null, %sw.epilog ], [ %vout.1, %sw.bb36 ], [ %vout.1, %for.body43 ], [ %vout.1, %if.then39 ]
  %fout.1 = phi [3 x float]* [ null, %sw.epilog ], [ %fout.0, %sw.bb36 ], [ %fout.0, %for.body43 ], [ %fout.0, %if.then39 ]
  %xout.0 = phi [3 x float]* [ null, %sw.epilog ], [ null, %sw.bb36 ], [ %19, %for.body43 ], [ %19, %if.then39 ]
  %call58 = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !614
  switch i32 %call58, label %sw.default106 [
    i32 6, label %sw.bb59
    i32 5, label %sw.bb62
    i32 4, label %sw.bb62
    i32 13, label %sw.bb68
    i32 15, label %sw.bb68
    i32 16, label %sw.bb68
    i32 17, label %sw.bb68
    i32 7, label %sw.bb100
    i32 14, label %sw.bb104
  ], !dbg !614

sw.bb59:                                          ; preds = %sw.epilog57
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !615
  %25 = load i32* %step, align 4, !dbg !615, !tbaa !519
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !615
  %26 = load float* %time, align 4, !dbg !615, !tbaa !543
  %arraydecay60 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !615
  %call61 = call i32 @write_xtc(i32 %fnum, i32 %nind, i32 %25, float %26, [3 x float]* %arraydecay60, [3 x float]* %xout.0, float %prec.0) #7, !dbg !615
  br label %sw.epilog109, !dbg !617

sw.bb62:                                          ; preds = %sw.epilog57, %sw.epilog57
  %27 = load i32* @__frame, align 4, !dbg !618, !tbaa !519
  %time64 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !619
  %28 = load float* %time64, align 4, !dbg !619, !tbaa !543
  %step65 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !619
  %29 = load i32* %step65, align 4, !dbg !619, !tbaa !519
  %conv = sitofp i32 %29 to float, !dbg !619
  %arraydecay67 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !619
  call void @fwrite_trn(i32 %fnum, i32 %27, float %28, float %conv, [3 x float]* %arraydecay67, i32 %nind, [3 x float]* %xout.0, [3 x float]* %vout.2, [3 x float]* %fout.1) #7, !dbg !619
  br label %sw.epilog109, !dbg !620

sw.bb68:                                          ; preds = %sw.epilog57, %sw.epilog57, %sw.epilog57, %sw.epilog57
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !621
  %30 = load i32* %bAtoms, align 4, !dbg !621, !tbaa !519
  %tobool69 = icmp eq i32 %30, 0, !dbg !621
  br i1 %tobool69, label %if.then70, label %if.end73, !dbg !621

if.then70:                                        ; preds = %sw.bb68
  %call71 = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !622
  %call72 = call i8* @ftp2ext(i32 %call71) #7, !dbg !622
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str6, i64 0, i64 0), i8* %call72) #7, !dbg !622
  br label %if.end73, !dbg !622

if.end73:                                         ; preds = %sw.bb68, %if.then70
  %time75 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !623
  %31 = load float* %time75, align 4, !dbg !623, !tbaa !543
  %conv76 = fpext float %31 to double, !dbg !623
  %call77 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), double %conv76) #7, !dbg !623
  %call78 = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !624
  %cmp79 = icmp eq i32 %call78, 13, !dbg !624
  %call82 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fnum) #7, !dbg !625
  %atoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !625
  %32 = load %struct.t_atoms** %atoms, align 8, !dbg !625, !tbaa !547
  br i1 %cmp79, label %if.then81, label %if.else91, !dbg !624

if.then81:                                        ; preds = %if.end73
  %call84 = call i32 @prec2ndec(float %prec.0) #8, !dbg !626
  %x85 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !626
  %33 = load [3 x float]** %x85, align 8, !dbg !626, !tbaa !547
  %bV86 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !626
  %34 = load i32* %bV86, align 4, !dbg !626, !tbaa !519
  %tobool87 = icmp eq i32 %34, 0, !dbg !626
  br i1 %tobool87, label %cond.end, label %cond.true, !dbg !626

cond.true:                                        ; preds = %if.then81
  %v88 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !626
  %35 = load [3 x float]** %v88, align 8, !dbg !626, !tbaa !547
  br label %cond.end, !dbg !626

cond.end:                                         ; preds = %if.then81, %cond.true
  %cond = phi [3 x float]* [ %35, %cond.true ], [ null, %if.then81 ], !dbg !626
  %arraydecay90 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !626
  call void @write_hconf_indexed_p(%struct._IO_FILE* %call82, i8* %0, %struct.t_atoms* %32, i32 %nind, i32* %ind, i32 %call84, [3 x float]* %33, [3 x float]* %cond, [3 x float]* %arraydecay90) #7, !dbg !626
  br label %sw.epilog109, !dbg !626

if.else91:                                        ; preds = %if.end73
  %x95 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !627
  %36 = load [3 x float]** %x95, align 8, !dbg !627, !tbaa !547
  %arraydecay97 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !627
  %step98 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !627
  %37 = load i32* %step98, align 4, !dbg !627, !tbaa !519
  call void @write_pdbfile_indexed(%struct._IO_FILE* %call82, i8* %0, %struct.t_atoms* %32, [3 x float]* %36, [3 x float]* %arraydecay97, i8 signext 0, i32 %37, i32 %nind, i32* %ind) #7, !dbg !627
  br label %sw.epilog109

sw.bb100:                                         ; preds = %sw.epilog57
  %call101 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fnum) #7, !dbg !628
  %arraydecay103 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !628
  call void @write_gms(%struct._IO_FILE* %call101, i32 %nind, [3 x float]* %xout.0, [3 x float]* %arraydecay103) #7, !dbg !628
  br label %sw.epilog109, !dbg !629

sw.bb104:                                         ; preds = %sw.epilog57
  %call105 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fnum) #7, !dbg !630
  call void @write_g96_conf(%struct._IO_FILE* %call105, %struct.t_trxframe* %fr, i32 %nind, i32* %ind) #7, !dbg !630
  br label %sw.epilog109, !dbg !631

sw.default106:                                    ; preds = %sw.epilog57
  %call107 = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !632
  %call108 = call i8* @ftp2ext(i32 %call107) #7, !dbg !632
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), i8* %call108) #7, !dbg !632
  br label %sw.epilog109, !dbg !633

sw.epilog109:                                     ; preds = %cond.end, %if.else91, %sw.default106, %sw.bb104, %sw.bb100, %sw.bb62, %sw.bb59
  %call110 = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !634
  switch i32 %call110, label %sw.epilog120 [
    i32 3, label %sw.bb111
    i32 5, label %sw.bb111
    i32 4, label %sw.bb111
    i32 6, label %sw.bb118
    i32 7, label %sw.bb118
  ], !dbg !634

sw.bb111:                                         ; preds = %sw.epilog109, %sw.epilog109, %sw.epilog109
  %tobool112 = icmp eq [3 x float]* %vout.2, null, !dbg !635
  br i1 %tobool112, label %if.end114, label %if.then113, !dbg !635

if.then113:                                       ; preds = %sw.bb111
  %38 = bitcast [3 x float]* %vout.2 to i8*, !dbg !635
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 234, i8* %38) #7, !dbg !635
  br label %if.end114, !dbg !635

if.end114:                                        ; preds = %sw.bb111, %if.then113
  %tobool115 = icmp eq [3 x float]* %fout.1, null, !dbg !637
  br i1 %tobool115, label %sw.bb118, label %if.then116, !dbg !637

if.then116:                                       ; preds = %if.end114
  %39 = bitcast [3 x float]* %fout.1 to i8*, !dbg !637
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 235, i8* %39) #7, !dbg !637
  br label %sw.bb118, !dbg !637

sw.bb118:                                         ; preds = %if.end114, %if.then116, %sw.epilog109, %sw.epilog109
  %40 = bitcast [3 x float]* %xout.0 to i8*, !dbg !638
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 238, i8* %40) #7, !dbg !638
  br label %sw.epilog120, !dbg !639

sw.epilog120:                                     ; preds = %sw.epilog109, %sw.bb118
  call void @llvm.lifetime.end(i64 4096, i8* %0) #5, !dbg !640
  ret i32 0, !dbg !641
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @gmx_fio_getftp(i32) #3

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare i32 @write_xtc(i32, i32, i32, float, [3 x float]*, [3 x float]*, float) #3

; Function Attrs: optsize
declare void @fwrite_trn(i32, i32, float, float, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare void @write_hconf_indexed_p(%struct._IO_FILE*, i8*, %struct.t_atoms*, i32, i32*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare %struct._IO_FILE* @gmx_fio_getfp(i32) #3

; Function Attrs: optsize
declare void @write_pdbfile_indexed(%struct._IO_FILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32, i32, i32*) #3

; Function Attrs: optsize
declare void @write_gms(%struct._IO_FILE*, i32, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @write_g96_conf(%struct._IO_FILE*, %struct.t_trxframe*, i32, i32*) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define i32 @write_trxframe(i32 %fnum, %struct.t_trxframe* %fr) #1 {
entry:
  %title = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32 %fnum}, i64 0, metadata !217), !dbg !642
  call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !218), !dbg !642
  %0 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0, !dbg !643
  call void @llvm.lifetime.start(i64 4096, i8* %0) #5, !dbg !643
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %title}, metadata !219), !dbg !643
  %bPrec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !644
  %1 = load i32* %bPrec, align 4, !dbg !644, !tbaa !519
  %tobool = icmp eq i32 %1, 0, !dbg !644
  br i1 %tobool, label %if.end, label %if.then, !dbg !644

if.then:                                          ; preds = %entry
  %prec1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !645
  %2 = load float* %prec1, align 4, !dbg !645, !tbaa !543
  call void @llvm.dbg.value(metadata !{float %2}, i64 0, metadata !220), !dbg !645
  br label %if.end, !dbg !645

if.end:                                           ; preds = %entry, %if.then
  %prec.0 = phi float [ %2, %if.then ], [ 1.000000e+03, %entry ]
  %call = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !646
  %call.off = add i32 %call, -4, !dbg !646
  %switch = icmp ult i32 %call.off, 2, !dbg !646
  br i1 %switch, label %sw.epilog, label %sw.default, !dbg !646

sw.default:                                       ; preds = %if.end
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !647
  %3 = load i32* %bX, align 4, !dbg !647, !tbaa !519
  %tobool2 = icmp eq i32 %3, 0, !dbg !647
  br i1 %tobool2, label %if.then3, label %sw.epilog, !dbg !647

if.then3:                                         ; preds = %sw.default
  %call4 = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !649
  %call5 = call i8* @ftp2ext(i32 %call4) #7, !dbg !649
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str1, i64 0, i64 0), i8* %call5) #7, !dbg !649
  br label %sw.epilog, !dbg !649

sw.epilog:                                        ; preds = %sw.default, %if.then3, %if.end
  %call7 = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !650
  switch i32 %call7, label %sw.default73 [
    i32 6, label %sw.bb8
    i32 5, label %sw.bb10
    i32 4, label %sw.bb10
    i32 13, label %sw.bb30
    i32 15, label %sw.bb30
    i32 16, label %sw.bb30
    i32 17, label %sw.bb30
    i32 7, label %sw.bb65
    i32 14, label %sw.bb71
  ], !dbg !650

sw.bb8:                                           ; preds = %sw.epilog
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !651
  %4 = load i32* %natoms, align 4, !dbg !651, !tbaa !519
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !651
  %5 = load i32* %step, align 4, !dbg !651, !tbaa !519
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !651
  %6 = load float* %time, align 4, !dbg !651, !tbaa !543
  %arraydecay = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !651
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !651
  %7 = load [3 x float]** %x, align 8, !dbg !651, !tbaa !547
  %call9 = call i32 @write_xtc(i32 %fnum, i32 %4, i32 %5, float %6, [3 x float]* %arraydecay, [3 x float]* %7, float %prec.0) #7, !dbg !651
  br label %sw.epilog76, !dbg !653

sw.bb10:                                          ; preds = %sw.epilog, %sw.epilog
  %8 = load i32* @__frame, align 4, !dbg !654, !tbaa !519
  %time12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !655
  %9 = load float* %time12, align 4, !dbg !655, !tbaa !543
  %step13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !655
  %10 = load i32* %step13, align 4, !dbg !655, !tbaa !519
  %conv = sitofp i32 %10 to float, !dbg !655
  %arraydecay15 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !655
  %natoms16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !655
  %11 = load i32* %natoms16, align 4, !dbg !655, !tbaa !519
  %bX17 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !655
  %12 = load i32* %bX17, align 4, !dbg !655, !tbaa !519
  %tobool18 = icmp eq i32 %12, 0, !dbg !655
  br i1 %tobool18, label %cond.end, label %cond.true, !dbg !655

cond.true:                                        ; preds = %sw.bb10
  %x19 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !655
  %13 = load [3 x float]** %x19, align 8, !dbg !655, !tbaa !547
  br label %cond.end, !dbg !655

cond.end:                                         ; preds = %sw.bb10, %cond.true
  %cond = phi [3 x float]* [ %13, %cond.true ], [ null, %sw.bb10 ], !dbg !655
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !655
  %14 = load i32* %bV, align 4, !dbg !655, !tbaa !519
  %tobool20 = icmp eq i32 %14, 0, !dbg !655
  br i1 %tobool20, label %cond.end23, label %cond.true21, !dbg !655

cond.true21:                                      ; preds = %cond.end
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !655
  %15 = load [3 x float]** %v, align 8, !dbg !655, !tbaa !547
  br label %cond.end23, !dbg !655

cond.end23:                                       ; preds = %cond.end, %cond.true21
  %cond24 = phi [3 x float]* [ %15, %cond.true21 ], [ null, %cond.end ], !dbg !655
  %bF = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22, !dbg !655
  %16 = load i32* %bF, align 4, !dbg !655, !tbaa !519
  %tobool25 = icmp eq i32 %16, 0, !dbg !655
  br i1 %tobool25, label %cond.end28, label %cond.true26, !dbg !655

cond.true26:                                      ; preds = %cond.end23
  %f = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23, !dbg !655
  %17 = load [3 x float]** %f, align 8, !dbg !655, !tbaa !547
  br label %cond.end28, !dbg !655

cond.end28:                                       ; preds = %cond.end23, %cond.true26
  %cond29 = phi [3 x float]* [ %17, %cond.true26 ], [ null, %cond.end23 ], !dbg !655
  call void @fwrite_trn(i32 %fnum, i32 %8, float %9, float %conv, [3 x float]* %arraydecay15, i32 %11, [3 x float]* %cond, [3 x float]* %cond24, [3 x float]* %cond29) #7, !dbg !655
  br label %sw.epilog76, !dbg !656

sw.bb30:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !657
  %18 = load i32* %bAtoms, align 4, !dbg !657, !tbaa !519
  %tobool31 = icmp eq i32 %18, 0, !dbg !657
  br i1 %tobool31, label %if.then32, label %if.end35, !dbg !657

if.then32:                                        ; preds = %sw.bb30
  %call33 = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !658
  %call34 = call i8* @ftp2ext(i32 %call33) #7, !dbg !658
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str6, i64 0, i64 0), i8* %call34) #7, !dbg !658
  br label %if.end35, !dbg !658

if.end35:                                         ; preds = %sw.bb30, %if.then32
  %time37 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !659
  %19 = load float* %time37, align 4, !dbg !659, !tbaa !543
  %conv38 = fpext float %19 to double, !dbg !659
  %call39 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), double %conv38) #7, !dbg !659
  %call40 = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !660
  %cmp = icmp eq i32 %call40, 13, !dbg !660
  %call43 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fnum) #7, !dbg !661
  %atoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !661
  %20 = load %struct.t_atoms** %atoms, align 8, !dbg !661, !tbaa !547
  br i1 %cmp, label %if.then42, label %if.else56, !dbg !660

if.then42:                                        ; preds = %if.end35
  %call45 = call i32 @prec2ndec(float %prec.0) #8, !dbg !662
  %x46 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !662
  %21 = load [3 x float]** %x46, align 8, !dbg !662, !tbaa !547
  %bV47 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !662
  %22 = load i32* %bV47, align 4, !dbg !662, !tbaa !519
  %tobool48 = icmp eq i32 %22, 0, !dbg !662
  br i1 %tobool48, label %cond.end52, label %cond.true49, !dbg !662

cond.true49:                                      ; preds = %if.then42
  %v50 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !662
  %23 = load [3 x float]** %v50, align 8, !dbg !662, !tbaa !547
  br label %cond.end52, !dbg !662

cond.end52:                                       ; preds = %if.then42, %cond.true49
  %cond53 = phi [3 x float]* [ %23, %cond.true49 ], [ null, %if.then42 ], !dbg !662
  %arraydecay55 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !662
  call void @write_hconf_p(%struct._IO_FILE* %call43, i8* %0, %struct.t_atoms* %20, i32 %call45, [3 x float]* %21, [3 x float]* %cond53, [3 x float]* %arraydecay55) #7, !dbg !662
  br label %sw.epilog76, !dbg !662

if.else56:                                        ; preds = %if.end35
  %x60 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !663
  %24 = load [3 x float]** %x60, align 8, !dbg !663, !tbaa !547
  %arraydecay62 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !663
  %step63 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !663
  %25 = load i32* %step63, align 4, !dbg !663, !tbaa !519
  call void @write_pdbfile(%struct._IO_FILE* %call43, i8* %0, %struct.t_atoms* %20, [3 x float]* %24, [3 x float]* %arraydecay62, i8 signext 0, i32 %25) #7, !dbg !663
  br label %sw.epilog76

sw.bb65:                                          ; preds = %sw.epilog
  %call66 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fnum) #7, !dbg !664
  %natoms67 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !664
  %26 = load i32* %natoms67, align 4, !dbg !664, !tbaa !519
  %x68 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !664
  %27 = load [3 x float]** %x68, align 8, !dbg !664, !tbaa !547
  %arraydecay70 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !664
  call void @write_gms(%struct._IO_FILE* %call66, i32 %26, [3 x float]* %27, [3 x float]* %arraydecay70) #7, !dbg !664
  br label %sw.epilog76, !dbg !665

sw.bb71:                                          ; preds = %sw.epilog
  %call72 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fnum) #7, !dbg !666
  call void @write_g96_conf(%struct._IO_FILE* %call72, %struct.t_trxframe* %fr, i32 -1, i32* null) #7, !dbg !666
  br label %sw.epilog76, !dbg !667

sw.default73:                                     ; preds = %sw.epilog
  %call74 = call i32 @gmx_fio_getftp(i32 %fnum) #7, !dbg !668
  %call75 = call i8* @ftp2ext(i32 %call74) #7, !dbg !668
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str9, i64 0, i64 0), i8* %call75) #7, !dbg !668
  br label %sw.epilog76, !dbg !669

sw.epilog76:                                      ; preds = %cond.end52, %if.else56, %sw.default73, %sw.bb71, %sw.bb65, %cond.end28, %sw.bb8
  call void @llvm.lifetime.end(i64 4096, i8* %0) #5, !dbg !670
  ret i32 0, !dbg !671
}

; Function Attrs: optsize
declare void @write_hconf_p(%struct._IO_FILE*, i8*, %struct.t_atoms*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @write_pdbfile(%struct._IO_FILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @write_trx(i32 %fnum, i32 %nind, i32* %ind, %struct.t_atoms* %atoms, i32 %step, float %time, [3 x float]* nocapture %box, [3 x float]* %x, [3 x float]* %v) #1 {
entry:
  %fr = alloca %struct.t_trxframe, align 8
  call void @llvm.dbg.value(metadata !{i32 %fnum}, i64 0, metadata !226), !dbg !672
  call void @llvm.dbg.value(metadata !{i32 %nind}, i64 0, metadata !227), !dbg !672
  call void @llvm.dbg.value(metadata !{i32* %ind}, i64 0, metadata !228), !dbg !672
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !229), !dbg !672
  call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !230), !dbg !673
  call void @llvm.dbg.value(metadata !{float %time}, i64 0, metadata !231), !dbg !673
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !232), !dbg !673
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !233), !dbg !673
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !234), !dbg !673
  %0 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !674
  call void @llvm.lifetime.start(i64 176, i8* %0) #5, !dbg !674
  call void @llvm.dbg.declare(metadata !{%struct.t_trxframe* %fr}, metadata !235), !dbg !674
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #8, !dbg !675
  %bStep = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !676
  store i32 1, i32* %bStep, align 8, !dbg !676, !tbaa !519
  %step1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !677
  store i32 %step, i32* %step1, align 4, !dbg !677, !tbaa !519
  %bTime = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !678
  store i32 1, i32* %bTime, align 8, !dbg !678, !tbaa !519
  %time2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !679
  store float %time, float* %time2, align 4, !dbg !679, !tbaa !543
  %cmp = icmp ne %struct.t_atoms* %atoms, null, !dbg !680
  %conv = zext i1 %cmp to i32, !dbg !680
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !680
  store i32 %conv, i32* %bAtoms, align 8, !dbg !680, !tbaa !519
  %atoms3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !681
  store %struct.t_atoms* %atoms, %struct.t_atoms** %atoms3, align 8, !dbg !681, !tbaa !547
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !682
  store i32 1, i32* %bX, align 8, !dbg !682, !tbaa !519
  %x4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !683
  store [3 x float]* %x, [3 x float]** %x4, align 8, !dbg !683, !tbaa !547
  %cmp5 = icmp ne [3 x float]* %v, null, !dbg !684
  %conv6 = zext i1 %cmp5 to i32, !dbg !684
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !684
  store i32 %conv6, i32* %bV, align 8, !dbg !684, !tbaa !519
  %v7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !685
  store [3 x float]* %v, [3 x float]** %v7, align 8, !dbg !685, !tbaa !547
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !686
  store i32 1, i32* %bBox, align 8, !dbg !686, !tbaa !519
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !687), !dbg !689
  %arraydecay.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !690
  %arraydecay2.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0, !dbg !690
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay.i}, i64 0, metadata !692), !dbg !693
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay2.i}, i64 0, metadata !694), !dbg !693
  %1 = load float* %arraydecay.i, align 4, !dbg !695, !tbaa !543
  store float %1, float* %arraydecay2.i, align 4, !dbg !695, !tbaa !543
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !696
  %2 = load float* %arrayidx2.i.i, align 4, !dbg !696, !tbaa !543
  %arrayidx3.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1, !dbg !696
  store float %2, float* %arrayidx3.i.i, align 4, !dbg !696, !tbaa !543
  %arrayidx4.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !697
  %3 = load float* %arrayidx4.i.i, align 4, !dbg !697, !tbaa !543
  %arrayidx5.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2, !dbg !697
  store float %3, float* %arrayidx5.i.i, align 4, !dbg !697, !tbaa !543
  %arraydecay4.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !698
  %arraydecay6.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0, !dbg !698
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay4.i}, i64 0, metadata !699), !dbg !700
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay6.i}, i64 0, metadata !701), !dbg !700
  %4 = load float* %arraydecay4.i, align 4, !dbg !702, !tbaa !543
  store float %4, float* %arraydecay6.i, align 4, !dbg !702, !tbaa !543
  %arrayidx2.i19.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !703
  %5 = load float* %arrayidx2.i19.i, align 4, !dbg !703, !tbaa !543
  %arrayidx3.i20.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !703
  store float %5, float* %arrayidx3.i20.i, align 4, !dbg !703, !tbaa !543
  %arrayidx4.i21.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !704
  %6 = load float* %arrayidx4.i21.i, align 4, !dbg !704, !tbaa !543
  %arrayidx5.i22.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2, !dbg !704
  store float %6, float* %arrayidx5.i22.i, align 4, !dbg !704, !tbaa !543
  %arraydecay8.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !705
  %arraydecay10.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0, !dbg !705
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8.i}, i64 0, metadata !706), !dbg !707
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay10.i}, i64 0, metadata !708), !dbg !707
  %7 = load float* %arraydecay8.i, align 4, !dbg !709, !tbaa !543
  store float %7, float* %arraydecay10.i, align 4, !dbg !709, !tbaa !543
  %arrayidx2.i15.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !710
  %8 = load float* %arrayidx2.i15.i, align 4, !dbg !710, !tbaa !543
  %arrayidx3.i16.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1, !dbg !710
  store float %8, float* %arrayidx3.i16.i, align 4, !dbg !710, !tbaa !543
  %arrayidx4.i17.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !711
  %9 = load float* %arrayidx4.i17.i, align 4, !dbg !711, !tbaa !543
  %arrayidx5.i18.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !711
  store float %9, float* %arrayidx5.i18.i, align 4, !dbg !711, !tbaa !543
  %call = call i32 @write_trxframe_indexed(i32 %fnum, %struct.t_trxframe* %fr, i32 %nind, i32* %ind) #8, !dbg !712
  call void @llvm.lifetime.end(i64 176, i8* %0) #5, !dbg !713
  ret i32 0, !dbg !713
}

; Function Attrs: nounwind optsize uwtable
define void @close_trx(i32 %status) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %status}, i64 0, metadata !240), !dbg !714
  tail call void @gmx_fio_close(i32 %status) #7, !dbg !715
  ret void, !dbg !716
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @open_trx(i8* %outfile, i8* %filemode) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %outfile}, i64 0, metadata !245), !dbg !717
  tail call void @llvm.dbg.value(metadata !{i8* %filemode}, i64 0, metadata !246), !dbg !717
  %0 = load i8* %filemode, align 1, !dbg !718, !tbaa !520
  switch i8 %0, label %if.then [
    i8 119, label %if.end
    i8 97, label %if.end
  ], !dbg !718

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !719
  br label %if.end, !dbg !719

if.end:                                           ; preds = %entry, %entry, %if.then
  %call = tail call i32 @gmx_fio_open(i8* %outfile, i8* %filemode) #7, !dbg !720
  ret i32 %call, !dbg !720
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @read_next_frame(i32 %status, %struct.t_trxframe* %fr) #1 {
entry:
  %sh.i = alloca %struct.t_trnheader, align 4
  %bOK.i = alloca i32, align 4
  %bOK = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %status}, i64 0, metadata !249), !dbg !721
  call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !250), !dbg !721
  call void @llvm.dbg.declare(metadata !{i32* %bOK}, metadata !253), !dbg !722
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !255), !dbg !722
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !256), !dbg !722
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !254), !dbg !723
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !724
  %0 = load float* %time, align 4, !dbg !724, !tbaa !543
  call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !251), !dbg !724
  %not_ok.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 1, !dbg !725
  %bTitle.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !728
  %bStep.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !729
  %bTime.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !730
  %bLambda.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 12, !dbg !731
  %bAtoms.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !732
  %bPrec.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !733
  %bX.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !734
  %bV.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !735
  %bF.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22, !dbg !736
  %bBox.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !737
  %tpf = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 4, !dbg !738
  %tppf = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 5, !dbg !738
  %flags = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0, !dbg !739
  %t0 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 3, !dbg !741
  %arraydecay63 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !743
  %1 = bitcast i32* %bOK.i to i8*, !dbg !745
  %2 = bitcast %struct.t_trnheader* %sh.i to i8*, !dbg !748
  %natoms.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 10, !dbg !749
  %natoms1.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !749
  %step.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 11, !dbg !751
  %step2.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !751
  %t.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 13, !dbg !752
  %lambda.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 14, !dbg !753
  %lambda3.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 13, !dbg !753
  %box_size.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 2, !dbg !754
  %f43.phi.trans.insert.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23
  %x41.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !755
  %v42.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !755
  %f_size.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 9, !dbg !756
  %v_size.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 8, !dbg !758
  %x_size.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 7, !dbg !760
  %prec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !762
  br label %do.body, !dbg !763

do.body:                                          ; preds = %land.rhs76.do.body_crit_edge, %entry
  %3 = phi float [ %0, %entry ], [ %.pre, %land.rhs76.do.body_crit_edge ]
  %bRet.0 = phi i32 [ 0, %entry ], [ %bRet.1191, %land.rhs76.do.body_crit_edge ]
  tail call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !764), !dbg !765
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !766), !dbg !765
  store i32 0, i32* %not_ok.i, align 4, !dbg !725, !tbaa !519
  store i32 0, i32* %bTitle.i, align 4, !dbg !728, !tbaa !519
  store i32 0, i32* %bStep.i, align 4, !dbg !729, !tbaa !519
  store i32 0, i32* %bTime.i, align 4, !dbg !730, !tbaa !519
  store i32 0, i32* %bLambda.i, align 4, !dbg !731, !tbaa !519
  store i32 0, i32* %bAtoms.i, align 4, !dbg !732, !tbaa !519
  store i32 0, i32* %bPrec.i, align 4, !dbg !733, !tbaa !519
  store i32 0, i32* %bX.i, align 4, !dbg !734, !tbaa !519
  store i32 0, i32* %bV.i, align 4, !dbg !735, !tbaa !519
  store i32 0, i32* %bF.i, align 4, !dbg !736, !tbaa !519
  store i32 0, i32* %bBox.i, align 4, !dbg !737, !tbaa !519
  %4 = load float* %tpf, align 4, !dbg !738, !tbaa !543
  store float %4, float* %tppf, align 4, !dbg !738, !tbaa !543
  store float %3, float* %tpf, align 4, !dbg !767, !tbaa !543
  %call = call i32 @gmx_fio_getftp(i32 %status) #7, !dbg !768
  switch i32 %call, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb
    i32 39, label %sw.bb
    i32 14, label %sw.bb4
    i32 7, label %sw.bb7
    i32 6, label %sw.bb12
    i32 15, label %sw.bb22
    i32 13, label %sw.bb25
  ], !dbg !768

sw.bb:                                            ; preds = %do.body, %do.body, %do.body
  call void @llvm.lifetime.start(i64 4, i8* %1) #5, !dbg !745
  call void @llvm.dbg.value(metadata !{i32 %status}, i64 0, metadata !769) #5, !dbg !745
  call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !770) #5, !dbg !745
  call void @llvm.lifetime.start(i64 60, i8* %2) #5, !dbg !748
  call void @llvm.dbg.declare(metadata !{%struct.t_trnheader* %sh.i}, metadata !464) #5, !dbg !748
  call void @llvm.dbg.declare(metadata !{i32* %bOK.i}, metadata !484) #5, !dbg !771
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !772) #5, !dbg !773
  %call.i163 = call i32 @fread_trnheader(i32 %status, %struct.t_trnheader* %sh.i, i32* %bOK.i) #7, !dbg !774
  %tobool.i164 = icmp eq i32 %call.i163, 0, !dbg !774
  br i1 %tobool.i164, label %if.else48.i, label %if.then.i172, !dbg !774

if.then.i172:                                     ; preds = %sw.bb
  %5 = load i32* %natoms.i, align 4, !dbg !749, !tbaa !519
  store i32 %5, i32* %natoms1.i, align 4, !dbg !749, !tbaa !519
  store i32 1, i32* %bStep.i, align 4, !dbg !775, !tbaa !519
  %6 = load i32* %step.i, align 4, !dbg !751, !tbaa !519
  store i32 %6, i32* %step2.i, align 4, !dbg !751, !tbaa !519
  store i32 1, i32* %bTime.i, align 4, !dbg !776, !tbaa !519
  %7 = load float* %t.i, align 4, !dbg !752, !tbaa !543
  store float %7, float* %time, align 4, !dbg !752, !tbaa !543
  store i32 1, i32* %bLambda.i, align 4, !dbg !777, !tbaa !519
  %8 = load float* %lambda.i, align 4, !dbg !753, !tbaa !543
  store float %8, float* %lambda3.i, align 4, !dbg !753, !tbaa !543
  %9 = load i32* %box_size.i, align 4, !dbg !754, !tbaa !519
  %cmp.i = icmp sgt i32 %9, 0, !dbg !754
  %conv.i169 = zext i1 %cmp.i to i32, !dbg !754
  store i32 %conv.i169, i32* %bBox.i, align 4, !dbg !754, !tbaa !519
  %10 = load i32* %flags, align 4, !dbg !778, !tbaa !519
  %and.i171 = and i32 %10, 3, !dbg !778
  %tobool4.i = icmp eq i32 %and.i171, 0, !dbg !778
  br i1 %tobool4.i, label %if.end14.i, label %if.then5.i, !dbg !778

if.then5.i:                                       ; preds = %if.then.i172
  %11 = load [3 x float]** %x41.i, align 8, !dbg !779, !tbaa !547
  %cmp6.i = icmp eq [3 x float]* %11, null, !dbg !779
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i, !dbg !779

if.then8.i:                                       ; preds = %if.then5.i
  %call10.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 360, i32 %5, i32 12) #7, !dbg !780
  %12 = bitcast i8* %call10.i to [3 x float]*, !dbg !780
  store [3 x float]* %12, [3 x float]** %x41.i, align 8, !dbg !780, !tbaa !547
  %.pre.pre.i = load i32* %flags, align 4, !dbg !781, !tbaa !519
  br label %if.end.i, !dbg !780

if.end.i:                                         ; preds = %if.then8.i, %if.then5.i
  %.pre.i = phi i32 [ %.pre.pre.i, %if.then8.i ], [ %10, %if.then5.i ]
  %13 = load i32* %x_size.i, align 4, !dbg !760, !tbaa !519
  %cmp12.i = icmp sgt i32 %13, 0, !dbg !760
  %conv13.i = zext i1 %cmp12.i to i32, !dbg !760
  store i32 %conv13.i, i32* %bX.i, align 4, !dbg !760, !tbaa !519
  br label %if.end14.i, !dbg !782

if.end14.i:                                       ; preds = %if.end.i, %if.then.i172
  %14 = phi i32 [ %10, %if.then.i172 ], [ %.pre.i, %if.end.i ]
  %and16.i = and i32 %14, 12, !dbg !781
  %tobool17.i = icmp eq i32 %and16.i, 0, !dbg !781
  br i1 %tobool17.i, label %if.end28.i, label %if.then18.i, !dbg !781

if.then18.i:                                      ; preds = %if.end14.i
  %15 = load [3 x float]** %v42.i, align 8, !dbg !783, !tbaa !547
  %cmp19.i = icmp eq [3 x float]* %15, null, !dbg !783
  br i1 %cmp19.i, label %if.then21.i, label %if.end25.i, !dbg !783

if.then21.i:                                      ; preds = %if.then18.i
  %16 = load i32* %natoms.i, align 4, !dbg !784, !tbaa !519
  %call23.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 365, i32 %16, i32 12) #7, !dbg !784
  %17 = bitcast i8* %call23.i to [3 x float]*, !dbg !784
  store [3 x float]* %17, [3 x float]** %v42.i, align 8, !dbg !784, !tbaa !547
  %.pre80.pre.i = load i32* %flags, align 4, !dbg !785, !tbaa !519
  br label %if.end25.i, !dbg !784

if.end25.i:                                       ; preds = %if.then21.i, %if.then18.i
  %.pre80.i = phi i32 [ %.pre80.pre.i, %if.then21.i ], [ %14, %if.then18.i ]
  %18 = load i32* %v_size.i, align 4, !dbg !758, !tbaa !519
  %cmp26.i = icmp sgt i32 %18, 0, !dbg !758
  %conv27.i = zext i1 %cmp26.i to i32, !dbg !758
  store i32 %conv27.i, i32* %bV.i, align 4, !dbg !758, !tbaa !519
  br label %if.end28.i, !dbg !786

if.end28.i:                                       ; preds = %if.end25.i, %if.end14.i
  %19 = phi i32 [ %14, %if.end14.i ], [ %.pre80.i, %if.end25.i ]
  %and30.i = and i32 %19, 48, !dbg !785
  %tobool31.i = icmp eq i32 %and30.i, 0, !dbg !785
  %.pre83.i = load [3 x float]** %f43.phi.trans.insert.i, align 8, !dbg !755, !tbaa !547
  br i1 %tobool31.i, label %if.end40.i, label %if.then32.i, !dbg !785

if.then32.i:                                      ; preds = %if.end28.i
  %cmp33.i = icmp eq [3 x float]* %.pre83.i, null, !dbg !787
  br i1 %cmp33.i, label %if.then35.i, label %if.end39.i, !dbg !787

if.then35.i:                                      ; preds = %if.then32.i
  %20 = load i32* %natoms.i, align 4, !dbg !788, !tbaa !519
  %call37.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 370, i32 %20, i32 12) #7, !dbg !788
  %21 = bitcast i8* %call37.i to [3 x float]*, !dbg !788
  store [3 x float]* %21, [3 x float]** %f43.phi.trans.insert.i, align 8, !dbg !788, !tbaa !547
  br label %if.end39.i, !dbg !788

if.end39.i:                                       ; preds = %if.then35.i, %if.then32.i
  %22 = phi [3 x float]* [ %21, %if.then35.i ], [ %.pre83.i, %if.then32.i ]
  %23 = load i32* %f_size.i, align 4, !dbg !756, !tbaa !519
  store i32 %23, i32* %bF.i, align 4, !dbg !756, !tbaa !519
  br label %if.end40.i, !dbg !789

if.end40.i:                                       ; preds = %if.end28.i, %if.end39.i
  %24 = phi [3 x float]* [ %22, %if.end39.i ], [ %.pre83.i, %if.end28.i ]
  %25 = load [3 x float]** %x41.i, align 8, !dbg !755, !tbaa !547
  %26 = load [3 x float]** %v42.i, align 8, !dbg !755, !tbaa !547
  %call44.i = call i32 @fread_htrn(i32 %status, %struct.t_trnheader* %sh.i, [3 x float]* %arraydecay63, [3 x float]* %25, [3 x float]* %26, [3 x float]* %24) #7, !dbg !755
  %tobool45.i = icmp eq i32 %call44.i, 0, !dbg !755
  br i1 %tobool45.i, label %if.else.i177, label %if.then, !dbg !755

if.else.i177:                                     ; preds = %if.end40.i
  store i32 2, i32* %not_ok.i, align 4, !dbg !790, !tbaa !519
  br label %if.then84

if.else48.i:                                      ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i32* %bOK.i}, i64 0, metadata !791) #5, !dbg !792
  call void @llvm.dbg.value(metadata !{i32* %bOK.i}, i64 0, metadata !484), !dbg !792
  %27 = load i32* %bOK.i, align 4, !dbg !792, !tbaa !519
  %tobool49.i = icmp eq i32 %27, 0, !dbg !792
  br i1 %tobool49.i, label %if.then50.i, label %if.then84, !dbg !792

if.then50.i:                                      ; preds = %if.else48.i
  store i32 1, i32* %not_ok.i, align 4, !dbg !793, !tbaa !519
  br label %if.then84, !dbg !793

sw.bb4:                                           ; preds = %do.body
  %call5 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %status) #7, !dbg !794
  %call6 = call i32 @read_g96_conf(%struct._IO_FILE* %call5, i8* null, %struct.t_trxframe* %fr) #7, !dbg !794
  %28 = load i32* %natoms1.i, align 4, !dbg !795, !tbaa !519
  %cmp = icmp sgt i32 %28, 0, !dbg !795
  %conv = zext i1 %cmp to i32, !dbg !795
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !254), !dbg !795
  br label %sw.epilog, !dbg !796

sw.bb7:                                           ; preds = %do.body
  %call8 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %status) #7, !dbg !797
  %29 = load i32* %natoms1.i, align 4, !dbg !797, !tbaa !519
  %30 = load [3 x float]** %x41.i, align 8, !dbg !797, !tbaa !547
  %call11 = call fastcc i32 @xyz_next_x(%struct._IO_FILE* %call8, float* %time, i32 %29, [3 x float]* %30, [3 x float]* %arraydecay63) #8, !dbg !797
  call void @llvm.dbg.value(metadata !{i32 %call11}, i64 0, metadata !254), !dbg !797
  store i32 %call11, i32* %bTime.i, align 4, !dbg !798, !tbaa !519
  store i32 %call11, i32* %bX.i, align 4, !dbg !799, !tbaa !519
  store i32 %call11, i32* %bBox.i, align 4, !dbg !800, !tbaa !519
  br label %sw.epilog, !dbg !801

sw.bb12:                                          ; preds = %do.body
  %31 = load i32* %natoms1.i, align 4, !dbg !762, !tbaa !519
  %32 = load [3 x float]** %x41.i, align 8, !dbg !762, !tbaa !547
  %call18 = call i32 @read_next_xtc(i32 %status, i32 %31, i32* %step2.i, float* %time, [3 x float]* %arraydecay63, [3 x float]* %32, float* %prec, i32* %bOK) #7, !dbg !762
  call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !254), !dbg !762
  store i32 %call18, i32* %bPrec.i, align 4, !dbg !802, !tbaa !519
  store i32 %call18, i32* %bStep.i, align 4, !dbg !803, !tbaa !519
  store i32 %call18, i32* %bTime.i, align 4, !dbg !804, !tbaa !519
  store i32 %call18, i32* %bX.i, align 4, !dbg !805, !tbaa !519
  store i32 %call18, i32* %bBox.i, align 4, !dbg !806, !tbaa !519
  br label %sw.epilog, !dbg !807

sw.bb22:                                          ; preds = %do.body
  %call23 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %status) #7, !dbg !808
  %call24 = call fastcc i32 @pdb_next_x(%struct._IO_FILE* %call23, %struct.t_trxframe* %fr) #8, !dbg !808
  call void @llvm.dbg.value(metadata !{i32 %call24}, i64 0, metadata !254), !dbg !808
  br label %sw.epilog, !dbg !809

sw.bb25:                                          ; preds = %do.body
  %call26 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %status) #7, !dbg !810
  %call27 = call i32 @gro_next_x_or_v(%struct._IO_FILE* %call26, %struct.t_trxframe* %fr) #7, !dbg !810
  call void @llvm.dbg.value(metadata !{i32 %call27}, i64 0, metadata !254), !dbg !810
  br label %sw.epilog, !dbg !811

sw.default:                                       ; preds = %do.body
  %call28 = call i32 @gmx_fio_getftp(i32 %status) #7, !dbg !812
  %call29 = call i8* @ftp2ext(i32 %call28) #7, !dbg !812
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0), i8* %call29, i32 %status) #7, !dbg !812
  br label %sw.epilog, !dbg !813

sw.epilog:                                        ; preds = %sw.default, %sw.bb25, %sw.bb22, %sw.bb12, %sw.bb7, %sw.bb4
  %bRet.1 = phi i32 [ %bRet.0, %sw.default ], [ %call27, %sw.bb25 ], [ %call24, %sw.bb22 ], [ %call18, %sw.bb12 ], [ %call11, %sw.bb7 ], [ %conv, %sw.bb4 ]
  %tobool = icmp eq i32 %bRet.1, 0, !dbg !814
  br i1 %tobool, label %if.then84, label %if.then, !dbg !814

if.then:                                          ; preds = %if.end40.i, %sw.epilog
  %bRet.1191 = phi i32 [ %bRet.1, %sw.epilog ], [ 1, %if.end40.i ]
  %33 = load i32* %flags, align 4, !dbg !739, !tbaa !519
  %and = and i32 %33, 2, !dbg !739
  %tobool30 = icmp eq i32 %and, 0, !dbg !739
  br i1 %tobool30, label %lor.lhs.false, label %land.lhs.true, !dbg !739

land.lhs.true:                                    ; preds = %if.then
  %34 = load i32* %bX.i, align 4, !dbg !739, !tbaa !519
  %tobool32 = icmp eq i32 %34, 0, !dbg !739
  br i1 %tobool32, label %land.rhs76, label %lor.lhs.false, !dbg !739

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %and34 = and i32 %33, 8, !dbg !739
  %tobool35 = icmp eq i32 %and34, 0, !dbg !739
  br i1 %tobool35, label %lor.rhs, label %land.lhs.true36, !dbg !739

land.lhs.true36:                                  ; preds = %lor.lhs.false
  %35 = load i32* %bV.i, align 4, !dbg !739, !tbaa !519
  %tobool37 = icmp eq i32 %35, 0, !dbg !739
  br i1 %tobool37, label %land.rhs76, label %lor.rhs, !dbg !739

lor.rhs:                                          ; preds = %land.lhs.true36, %lor.lhs.false
  %and39 = and i32 %33, 32, !dbg !739
  %tobool40 = icmp eq i32 %and39, 0, !dbg !739
  br i1 %tobool40, label %if.then43, label %lor.end, !dbg !739

lor.end:                                          ; preds = %lor.rhs
  %36 = load i32* %bF.i, align 4, !dbg !739, !tbaa !519
  %lnot = icmp eq i32 %36, 0, !dbg !739
  %lor.ext = zext i1 %lnot to i32
  call void @llvm.dbg.value(metadata !{i32 %lor.ext181}, i64 0, metadata !255), !dbg !722
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !256), !dbg !815
  br i1 %lnot, label %land.rhs76, label %if.then43, !dbg !816

if.then43:                                        ; preds = %lor.rhs, %lor.end
  %lor.ext181 = phi i32 [ %lor.ext, %lor.end ], [ 0, %lor.rhs ]
  %37 = load float* %time, align 4, !dbg !741, !tbaa !543
  %38 = load float* %t0, align 4, !dbg !741, !tbaa !543
  %39 = load float* %tpf, align 4, !dbg !741, !tbaa !543
  %40 = load float* %tppf, align 4, !dbg !741, !tbaa !543
  %call47 = call i32 @check_times2(float %37, float %38, float %39, float %40) #7, !dbg !741
  call void @llvm.dbg.value(metadata !{i32 %call47}, i64 0, metadata !252), !dbg !741
  %cmp48 = icmp eq i32 %call47, 0, !dbg !817
  br i1 %cmp48, label %if.then57, label %lor.lhs.false50, !dbg !817

lor.lhs.false50:                                  ; preds = %if.then43
  %41 = load i32* %flags, align 4, !dbg !817, !tbaa !519
  %and52 = and i32 %41, 64, !dbg !817
  %tobool53 = icmp ne i32 %and52, 0, !dbg !817
  %cmp55 = icmp slt i32 %call47, 0, !dbg !817
  %or.cond = and i1 %tobool53, %cmp55, !dbg !817
  br i1 %or.cond, label %if.then57, label %if.else, !dbg !817

if.then57:                                        ; preds = %lor.lhs.false50, %if.then43
  %42 = load float* %time, align 4, !dbg !818, !tbaa !543
  %43 = load float* %t0, align 4, !dbg !818, !tbaa !543
  %44 = load float* %tpf, align 4, !dbg !818, !tbaa !543
  %45 = load float* %tppf, align 4, !dbg !818, !tbaa !543
  call fastcc void @printcount2(float %42, float %43, float %44, float %45) #8, !dbg !818
  call void @init_pbc([3 x float]* %arraydecay63) #7, !dbg !743
  br label %land.rhs76, !dbg !819

if.else:                                          ; preds = %lor.lhs.false50
  %cmp64 = icmp sgt i32 %call47, 0, !dbg !820
  br i1 %cmp64, label %if.then84, label %if.else67, !dbg !820

if.else67:                                        ; preds = %if.else
  %46 = load float* %time, align 4, !dbg !821, !tbaa !543
  %47 = load float* %t0, align 4, !dbg !821, !tbaa !543
  %48 = load float* %tpf, align 4, !dbg !821, !tbaa !543
  %49 = load float* %tppf, align 4, !dbg !821, !tbaa !543
  call fastcc void @printcount2(float %46, float %47, float %48, float %49) #8, !dbg !821
  call void @llvm.dbg.value(metadata !823, i64 0, metadata !256), !dbg !824
  br label %land.rhs76

land.rhs76:                                       ; preds = %lor.end, %if.else67, %if.then57, %land.lhs.true36, %land.lhs.true
  %bMissingData.1 = phi i32 [ %lor.ext, %lor.end ], [ %lor.ext181, %if.then57 ], [ %lor.ext181, %if.else67 ], [ 1, %land.lhs.true36 ], [ 1, %land.lhs.true ]
  %bSkip.1 = phi i32 [ 0, %lor.end ], [ 0, %if.then57 ], [ 1, %if.else67 ], [ 0, %land.lhs.true36 ], [ 0, %land.lhs.true ]
  %50 = or i32 %bSkip.1, %bMissingData.1, !dbg !825
  %51 = icmp eq i32 %50, 0, !dbg !825
  br i1 %51, label %if.end88, label %land.rhs76.do.body_crit_edge, !dbg !825

land.rhs76.do.body_crit_edge:                     ; preds = %land.rhs76
  %.pre = load float* %time, align 4, !dbg !767, !tbaa !543
  br label %do.body, !dbg !825

if.then84:                                        ; preds = %if.then50.i, %if.else48.i, %if.else.i177, %if.else, %sw.epilog
  call fastcc void @printlast(float %0) #8, !dbg !826
  %52 = load i32* %not_ok.i, align 4, !dbg !828, !tbaa !519
  %tobool85 = icmp eq i32 %52, 0, !dbg !828
  br i1 %tobool85, label %if.end88, label %if.then86, !dbg !828

if.then86:                                        ; preds = %if.then84
  call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !829) #5, !dbg !831
  %and.i = and i32 %52, 1, !dbg !832
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !832
  %53 = load %struct._IO_FILE** @stderr, align 8, !dbg !833, !tbaa !547
  %54 = load i32* @__frame, align 4, !dbg !833, !tbaa !519
  %add4.i = add nsw i32 %54, 1, !dbg !833
  %55 = load float* %time, align 4, !dbg !833, !tbaa !543
  %conv6.i = fpext float %55 to double, !dbg !833
  br i1 %tobool.i, label %if.then3.i, label %if.then.i, !dbg !832

if.then.i:                                        ; preds = %if.then86
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([43 x i8]* @.str40, i64 0, i64 0), i32 %add4.i, double %conv6.i) #7, !dbg !834
  br label %if.end88, !dbg !834

if.then3.i:                                       ; preds = %if.then86
  %call7.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([42 x i8]* @.str41, i64 0, i64 0), i32 %add4.i, double %conv6.i) #7, !dbg !833
  br label %if.end88, !dbg !833

if.end88:                                         ; preds = %land.rhs76, %if.then3.i, %if.then.i, %if.then84
  %bRet.2183 = phi i32 [ 0, %if.then84 ], [ 0, %if.then.i ], [ 0, %if.then3.i ], [ %bRet.1191, %land.rhs76 ]
  ret i32 %bRet.2183, !dbg !835
}

; Function Attrs: optsize
declare i32 @read_g96_conf(%struct._IO_FILE*, i8*, %struct.t_trxframe*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @xyz_next_x(%struct._IO_FILE* %status, float* nocapture %t, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %box) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %status}, i64 0, metadata !443), !dbg !836
  tail call void @llvm.dbg.value(metadata !{float* %t}, i64 0, metadata !444), !dbg !836
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !445), !dbg !836
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !446), !dbg !836
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !447), !dbg !836
  %0 = load float* %t, align 4, !dbg !837, !tbaa !543
  tail call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !448), !dbg !837
  %1 = load float* @tbegin, align 4, !dbg !838, !tbaa !543
  %cmp32 = fcmp ult float %1, 0.000000e+00, !dbg !838
  br i1 %cmp32, label %while.end, label %land.rhs, !dbg !838

land.rhs:                                         ; preds = %entry, %if.end
  %2 = phi float [ %7, %if.end ], [ %1, %entry ]
  %3 = phi float [ %conv2, %if.end ], [ %0, %entry ]
  %cmp1 = fcmp olt float %3, %2, !dbg !838
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %call = tail call fastcc i32 @do_read_xyz(%struct._IO_FILE* %status, i32 %natoms, [3 x float]* %x, [3 x float]* %box) #8, !dbg !839
  %tobool = icmp eq i32 %call, 0, !dbg !839
  br i1 %tobool, label %return, label %if.end, !dbg !839

if.end:                                           ; preds = %while.body
  %4 = load float* %t, align 4, !dbg !841, !tbaa !543
  tail call void @llvm.dbg.value(metadata !{float %4}, i64 0, metadata !842) #5, !dbg !843
  tail call fastcc void @printcount2(float %4, float %4, float %4, float %4) #7, !dbg !844
  %5 = load double* @DT, align 8, !dbg !845, !tbaa !846
  %6 = load float* %t, align 4, !dbg !845, !tbaa !543
  %conv = fpext float %6 to double, !dbg !845
  %add = fadd double %5, %conv, !dbg !845
  %conv2 = fptrunc double %add to float, !dbg !845
  store float %conv2, float* %t, align 4, !dbg !845, !tbaa !543
  tail call void @llvm.dbg.value(metadata !{float %conv2}, i64 0, metadata !448), !dbg !847
  %7 = load float* @tbegin, align 4, !dbg !838, !tbaa !543
  %cmp = fcmp ult float %7, 0.000000e+00, !dbg !838
  br i1 %cmp, label %while.end, label %land.rhs, !dbg !838

while.end:                                        ; preds = %if.end, %land.rhs, %entry
  %8 = phi float [ %0, %entry ], [ %3, %land.rhs ], [ %conv2, %if.end ]
  %9 = load float* @tend, align 4, !dbg !848, !tbaa !543
  %cmp3 = fcmp ult float %9, 0.000000e+00, !dbg !848
  br i1 %cmp3, label %lor.lhs.false, label %land.lhs.true, !dbg !848

land.lhs.true:                                    ; preds = %while.end
  %cmp5 = fcmp olt float %8, %9, !dbg !848
  %cmp8 = fcmp olt float %9, 0.000000e+00, !dbg !848
  %or.cond = or i1 %cmp5, %cmp8, !dbg !848
  br i1 %or.cond, label %if.then10, label %if.end18, !dbg !848

lor.lhs.false:                                    ; preds = %while.end
  %cmp8.old = fcmp olt float %9, 0.000000e+00, !dbg !848
  br i1 %cmp8.old, label %if.then10, label %if.end18, !dbg !848

if.then10:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %call11 = tail call fastcc i32 @do_read_xyz(%struct._IO_FILE* %status, i32 %natoms, [3 x float]* %x, [3 x float]* %box) #8, !dbg !849
  %tobool12 = icmp eq i32 %call11, 0, !dbg !849
  %10 = load float* %t, align 4, !dbg !851, !tbaa !543
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !849

if.then13:                                        ; preds = %if.then10
  tail call fastcc void @printlast(float %10) #8, !dbg !852
  br label %return, !dbg !854

if.end14:                                         ; preds = %if.then10
  tail call void @llvm.dbg.value(metadata !{float %10}, i64 0, metadata !855) #5, !dbg !856
  tail call fastcc void @printcount2(float %10, float %10, float %10, float %10) #7, !dbg !857
  %11 = load double* @DT, align 8, !dbg !858, !tbaa !846
  %12 = load float* %t, align 4, !dbg !858, !tbaa !543
  %conv15 = fpext float %12 to double, !dbg !858
  %add16 = fadd double %11, %conv15, !dbg !858
  %conv17 = fptrunc double %add16 to float, !dbg !858
  store float %conv17, float* %t, align 4, !dbg !858, !tbaa !543
  br label %return, !dbg !859

if.end18:                                         ; preds = %land.lhs.true, %lor.lhs.false
  tail call fastcc void @printlast(float %8) #8, !dbg !860
  br label %return, !dbg !861

return:                                           ; preds = %while.body, %if.end18, %if.end14, %if.then13
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %if.then13 ], [ 0, %if.end18 ], [ 0, %while.body ]
  ret i32 %retval.0, !dbg !861
}

; Function Attrs: optsize
declare i32 @read_next_xtc(i32, i32, i32*, float*, [3 x float]*, [3 x float]*, float*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @pdb_next_x(%struct._IO_FILE* %status, %struct.t_trxframe* %fr) #1 {
entry:
  %atoms = alloca %struct.t_atoms, align 8
  %model_nr = alloca i32, align 4
  %title = alloca [4096 x i8], align 16
  %dbl = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %status}, i64 0, metadata !430), !dbg !862
  call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !431), !dbg !862
  %0 = bitcast %struct.t_atoms* %atoms to i8*, !dbg !863
  call void @llvm.lifetime.start(i64 1280, i8* %0) #5, !dbg !863
  call void @llvm.dbg.declare(metadata !{%struct.t_atoms* %atoms}, metadata !432), !dbg !863
  call void @llvm.dbg.declare(metadata !{i32* %model_nr}, metadata !433), !dbg !864
  %1 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0, !dbg !865
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5, !dbg !865
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %title}, metadata !435), !dbg !865
  call void @llvm.dbg.declare(metadata !{double* %dbl}, metadata !437), !dbg !866
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !867
  %2 = load i32* %natoms, align 4, !dbg !867, !tbaa !519
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !867
  store i32 %2, i32* %nr, align 8, !dbg !867, !tbaa !519
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !868
  store %struct.t_atom* null, %struct.t_atom** %atom, align 8, !dbg !868, !tbaa !547
  %pdbinfo = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11, !dbg !869
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %pdbinfo, align 8, !dbg !869, !tbaa !547
  call void @llvm.dbg.value(metadata !870, i64 0, metadata !433), !dbg !871
  store i32 -12345, i32* %model_nr, align 4, !dbg !871, !tbaa !519
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !872
  %3 = load [3 x float]** %x, align 8, !dbg !872, !tbaa !547
  %box = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, !dbg !872
  %arraydecay1 = getelementptr inbounds [3 x [3 x float]]* %box, i64 0, i64 0, !dbg !872
  %call = call i32 @read_pdbfile(%struct._IO_FILE* %status, i8* %1, i32* %model_nr, %struct.t_atoms* %atoms, [3 x float]* %3, [3 x float]* %arraydecay1, i32 1) #7, !dbg !872
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !434), !dbg !872
  %4 = load i32* @__frame, align 4, !dbg !873, !tbaa !519
  %cmp = icmp eq i32 %4, 0, !dbg !874
  br i1 %cmp, label %if.then, label %if.end, !dbg !874

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !875, !tbaa !547
  %6 = load i32* %natoms, align 4, !dbg !875, !tbaa !519
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8]* @.str46, i64 0, i64 0), i8* %1, i32 %6) #7, !dbg !875
  br label %if.end, !dbg !875

if.end:                                           ; preds = %if.then, %entry
  %bPrec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !876
  store i32 1, i32* %bPrec, align 4, !dbg !876, !tbaa !519
  %prec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !877
  store float 1.000000e+04, float* %prec, align 4, !dbg !877, !tbaa !543
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !878
  store i32 1, i32* %bX, align 4, !dbg !878, !tbaa !519
  %arrayidx7 = getelementptr inbounds [3 x [3 x float]]* %box, i64 0, i64 0, i64 0, !dbg !879
  %7 = load float* %arrayidx7, align 4, !dbg !879, !tbaa !543
  %fabsf = call float @fabsf(float %7) #9, !dbg !879
  %8 = fpext float %fabsf to double, !dbg !879
  %cmp9 = fcmp olt double %8, 1.200000e-38, !dbg !879
  %conv10 = zext i1 %cmp9 to i32, !dbg !879
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !879
  store i32 %conv10, i32* %bBox, align 4, !dbg !879, !tbaa !519
  call void @llvm.dbg.value(metadata !{i32* %model_nr}, i64 0, metadata !433), !dbg !880
  %9 = load i32* %model_nr, align 4, !dbg !880, !tbaa !519
  %cmp11 = icmp eq i32 %9, -12345, !dbg !880
  br i1 %cmp11, label %if.end14, label %if.then13, !dbg !880

if.then13:                                        ; preds = %if.end
  %bStep = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !881
  store i32 1, i32* %bStep, align 4, !dbg !881, !tbaa !519
  call void @llvm.dbg.value(metadata !{i32* %model_nr}, i64 0, metadata !433), !dbg !883
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !883
  store i32 %9, i32* %step, align 4, !dbg !883, !tbaa !519
  br label %if.end14, !dbg !884

if.end14:                                         ; preds = %if.end, %if.then13
  %call16 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0)) #10, !dbg !885
  call void @llvm.dbg.value(metadata !{i8* %call16}, i64 0, metadata !436), !dbg !885
  %tobool = icmp eq i8* %call16, null, !dbg !886
  %bTime = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !887
  br i1 %tobool, label %if.else, label %if.then17, !dbg !886

if.then17:                                        ; preds = %if.end14
  store i32 1, i32* %bTime, align 4, !dbg !887, !tbaa !519
  %add.ptr = getelementptr inbounds i8* %call16, i64 4, !dbg !889
  %call18 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %dbl) #7, !dbg !889
  call void @llvm.dbg.value(metadata !{double* %dbl}, i64 0, metadata !437), !dbg !890
  %10 = load double* %dbl, align 8, !dbg !890, !tbaa !846
  %conv19 = fptrunc double %10 to float, !dbg !890
  %time20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !890
  store float %conv19, float* %time20, align 4, !dbg !890, !tbaa !543
  br label %if.end33, !dbg !891

if.else:                                          ; preds = %if.end14
  store i32 0, i32* %bTime, align 4, !dbg !892, !tbaa !519
  %bStep22 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !894
  %11 = load i32* %bStep22, align 4, !dbg !894, !tbaa !519
  %tobool23 = icmp eq i32 %11, 0, !dbg !894
  br i1 %tobool23, label %if.else28, label %if.then24, !dbg !894

if.then24:                                        ; preds = %if.else
  %step25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !895
  %12 = load i32* %step25, align 4, !dbg !895, !tbaa !519
  %conv26 = sitofp i32 %12 to float, !dbg !895
  %time27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !895
  store float %conv26, float* %time27, align 4, !dbg !895, !tbaa !543
  br label %if.end33, !dbg !895

if.else28:                                        ; preds = %if.else
  %13 = load i32* @__frame, align 4, !dbg !896, !tbaa !519
  %conv30 = sitofp i32 %13 to float, !dbg !897
  %time31 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !897
  store float %conv30, float* %time31, align 4, !dbg !897, !tbaa !543
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %if.else28, %if.then17
  %cmp34 = icmp eq i32 %call, 0, !dbg !898
  br i1 %cmp34, label %cleanup, label %if.else37, !dbg !898

if.else37:                                        ; preds = %if.end33
  %14 = load i32* %natoms, align 4, !dbg !899, !tbaa !519
  %cmp39 = icmp eq i32 %call, %14, !dbg !899
  br i1 %cmp39, label %cleanup, label %if.then41, !dbg !899

if.then41:                                        ; preds = %if.else37
  %15 = load i32* @__frame, align 4, !dbg !901, !tbaa !519
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str48, i64 0, i64 0), i32 %15, i32 %call, i32 %14) #7, !dbg !902
  br label %cleanup, !dbg !902

cleanup:                                          ; preds = %if.then41, %if.else37, %if.end33
  %retval.0 = phi i32 [ 0, %if.end33 ], [ 1, %if.else37 ], [ 1, %if.then41 ]
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5, !dbg !903
  call void @llvm.lifetime.end(i64 1280, i8* %0) #5, !dbg !903
  ret i32 %retval.0, !dbg !904
}

; Function Attrs: optsize
declare i32 @gro_next_x_or_v(%struct._IO_FILE*, %struct.t_trxframe*) #3

; Function Attrs: optsize
declare i32 @check_times2(float, float, float, float) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @printcount2(float %t, float %t0, float %tpf, float %tppf) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %t}, i64 0, metadata !424), !dbg !905
  tail call void @llvm.dbg.value(metadata !{float %t0}, i64 0, metadata !425), !dbg !905
  tail call void @llvm.dbg.value(metadata !{float %tpf}, i64 0, metadata !426), !dbg !905
  tail call void @llvm.dbg.value(metadata !{float %tppf}, i64 0, metadata !427), !dbg !905
  %0 = load i32* @__frame, align 4, !dbg !906, !tbaa !519
  %inc = add nsw i32 %0, 1, !dbg !906
  store i32 %inc, i32* @__frame, align 4, !dbg !906, !tbaa !519
  %rem = srem i32 %inc, 10, !dbg !907
  %cmp = icmp eq i32 %rem, 0, !dbg !907
  %cmp1 = icmp slt i32 %inc, 10, !dbg !907
  %or.cond = or i1 %cmp, %cmp1, !dbg !907
  br i1 %or.cond, label %if.then, label %if.end, !dbg !907

if.then:                                          ; preds = %entry
  %call = tail call i32 @check_times2(float %t, float %t0, float %tpf, float %tppf) #7, !dbg !908
  %cmp2 = icmp slt i32 %call, 0, !dbg !908
  %cond = select i1 %cmp2, i8* getelementptr inbounds ([15 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str45, i64 0, i64 0), !dbg !908
  tail call void @llvm.dbg.value(metadata !{i8* %cond}, i64 0, metadata !909) #5, !dbg !910
  tail call void @llvm.dbg.value(metadata !{float %t}, i64 0, metadata !911) #5, !dbg !910
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !912, !tbaa !547
  %2 = load i32* @__frame, align 4, !dbg !912, !tbaa !519
  %call.i = tail call float @convert_time(float %t) #7, !dbg !912
  %conv.i = fpext float %call.i to double, !dbg !912
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([25 x i8]* @.str43, i64 0, i64 0), i8* %cond, i32 %2, double %conv.i) #7, !dbg !912
  br label %if.end, !dbg !908

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !913
}

; Function Attrs: optsize
declare void @init_pbc([3 x float]*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @printlast(float %t) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %t}, i64 0, metadata !413), !dbg !914
  tail call void @llvm.dbg.value(metadata !915, i64 0, metadata !916) #5, !dbg !918
  tail call void @llvm.dbg.value(metadata !{float %t}, i64 0, metadata !919) #5, !dbg !918
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !920, !tbaa !547
  %1 = load i32* @__frame, align 4, !dbg !920, !tbaa !519
  %call.i = tail call float @convert_time(float %t) #7, !dbg !920
  %conv.i = fpext float %call.i to double, !dbg !920
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([25 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str42, i64 0, i64 0), i32 %1, double %conv.i) #7, !dbg !920
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !921, !tbaa !547
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %2), !dbg !921
  ret void, !dbg !922
}

; Function Attrs: nounwind optsize uwtable
define i32 @read_first_frame(i32* nocapture %status, i8* %fn, %struct.t_trxframe* %fr, i32 %flags) #1 {
entry:
  %i.i.i = alloca i32, align 4
  %bOK = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32* %status}, i64 0, metadata !261), !dbg !923
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !262), !dbg !923
  call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !263), !dbg !923
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !264), !dbg !923
  call void @llvm.dbg.declare(metadata !{i32* %bOK}, metadata !267), !dbg !924
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #8, !dbg !925
  %flags1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0, !dbg !926
  store i32 %flags, i32* %flags1, align 4, !dbg !926, !tbaa !519
  call void @llvm.dbg.value(metadata !823, i64 0, metadata !266), !dbg !927
  store i32 -1, i32* @__frame, align 4, !dbg !928, !tbaa !519
  %call = call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !929
  store i32 %call, i32* %status, align 4, !dbg !929, !tbaa !519
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !265), !dbg !929
  %call2 = call i32 @gmx_fio_getftp(i32 %call) #7, !dbg !930
  switch i32 %call2, label %sw.default [
    i32 5, label %if.then59
    i32 4, label %if.then59
    i32 39, label %if.then59
    i32 14, label %sw.bb3
    i32 7, label %sw.bb14
    i32 6, label %sw.bb24
    i32 15, label %sw.bb37
    i32 13, label %sw.bb45
  ], !dbg !930

sw.bb3:                                           ; preds = %entry
  %call4 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %call) #7, !dbg !931
  %call5 = call i32 @read_g96_conf(%struct._IO_FILE* %call4, i8* %fn, %struct.t_trxframe* %fr) #7, !dbg !931
  call void @gmx_fio_close(i32 %call) #7, !dbg !933
  tail call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !934), !dbg !936
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !937), !dbg !936
  %not_ok.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 1, !dbg !938
  store i32 0, i32* %not_ok.i, align 4, !dbg !938, !tbaa !519
  %bTitle.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !939
  store i32 0, i32* %bTitle.i, align 4, !dbg !939, !tbaa !519
  %bStep.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !940
  store i32 0, i32* %bStep.i, align 4, !dbg !940, !tbaa !519
  %bTime.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !941
  store i32 0, i32* %bTime.i, align 4, !dbg !941, !tbaa !519
  %bLambda.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 12, !dbg !942
  store i32 0, i32* %bLambda.i, align 4, !dbg !942, !tbaa !519
  %bAtoms.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !943
  store i32 0, i32* %bAtoms.i, align 4, !dbg !943, !tbaa !519
  %bPrec.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !944
  store i32 0, i32* %bPrec.i, align 4, !dbg !944, !tbaa !519
  %bX.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !945
  store i32 0, i32* %bX.i, align 4, !dbg !945, !tbaa !519
  %bV.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !946
  store i32 0, i32* %bV.i, align 4, !dbg !946, !tbaa !519
  %bF.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22, !dbg !947
  store i32 0, i32* %bF.i, align 4, !dbg !947, !tbaa !519
  %bBox.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !948
  store i32 0, i32* %bBox.i, align 4, !dbg !948, !tbaa !519
  %and = and i32 %flags, 3, !dbg !949
  %tobool = icmp eq i32 %and, 0, !dbg !949
  br i1 %tobool, label %if.end, label %if.then, !dbg !949

if.then:                                          ; preds = %sw.bb3
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !950
  %0 = load i32* %natoms, align 4, !dbg !950, !tbaa !519
  %call6 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 692, i32 %0, i32 12) #7, !dbg !950
  %1 = bitcast i8* %call6 to [3 x float]*, !dbg !950
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !950
  store [3 x float]* %1, [3 x float]** %x, align 8, !dbg !950, !tbaa !547
  br label %if.end, !dbg !950

if.end:                                           ; preds = %sw.bb3, %if.then
  %and7 = and i32 %flags, 12, !dbg !951
  %tobool8 = icmp eq i32 %and7, 0, !dbg !951
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !951

if.then9:                                         ; preds = %if.end
  %natoms10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !952
  %2 = load i32* %natoms10, align 4, !dbg !952, !tbaa !519
  %call11 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 694, i32 %2, i32 12) #7, !dbg !952
  %3 = bitcast i8* %call11 to [3 x float]*, !dbg !952
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !952
  store [3 x float]* %3, [3 x float]** %v, align 8, !dbg !952, !tbaa !547
  br label %if.end12, !dbg !952

if.end12:                                         ; preds = %if.end, %if.then9
  %call13 = call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !953
  store i32 %call13, i32* %status, align 4, !dbg !953, !tbaa !519
  call void @llvm.dbg.value(metadata !{i32 %call13}, i64 0, metadata !265), !dbg !953
  br label %if.then59

sw.bb14:                                          ; preds = %entry
  %call15 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %call) #7, !dbg !954
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !954
  %arraydecay = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !954
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call15}, i64 0, metadata !955) #5, !dbg !956
  call void @llvm.dbg.value(metadata !{float* %time}, i64 0, metadata !957) #5, !dbg !956
  call void @llvm.dbg.value(metadata !{[3 x float]** %x16}, i64 0, metadata !958) #5, !dbg !956
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay}, i64 0, metadata !959) #5, !dbg !956
  store i32 -1, i32* @__frame, align 4, !dbg !960, !tbaa !519
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay}, i64 0, metadata !961) #5, !dbg !963
  call void @llvm.dbg.value(metadata !559, i64 0, metadata !964) #5, !dbg !965
  %4 = bitcast [3 x float]* %arraydecay to i8*, !dbg !966
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 36, i32 4, i1 false) #5, !dbg !967
  %5 = bitcast i32* %i.i.i to i8*, !dbg !968
  call void @llvm.lifetime.start(i64 4, i8* %5) #5, !dbg !968
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call15}, i64 0, metadata !970) #5, !dbg !968
  call void @llvm.dbg.declare(metadata !{i32* %i.i.i}, metadata !405) #5, !dbg !971
  %puts.i.i = call i32 @puts(i8* getelementptr inbounds ([2 x i8]* @str, i64 0, i64 0)) #5, !dbg !972
  %puts43.i.i = call i32 @puts(i8* getelementptr inbounds ([22 x i8]* @str51, i64 0, i64 0)) #5, !dbg !973
  %puts44.i.i = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str52, i64 0, i64 0)) #5, !dbg !974
  %puts45.i.i = call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @str53, i64 0, i64 0)) #5, !dbg !975
  %puts46.i.i = call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str54, i64 0, i64 0)) #5, !dbg !976
  %puts47.i.i = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str55, i64 0, i64 0)) #5, !dbg !977
  %puts48.i.i = call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str56, i64 0, i64 0)) #5, !dbg !978
  br label %do.body.i.i, !dbg !979

do.body.i.i:                                      ; preds = %do.body.i.i, %sw.bb14
  %call7.i.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !980
  %6 = load %struct._IO_FILE** @stdout, align 8, !dbg !982, !tbaa !547
  %call8.i.i = call i32 @fflush(%struct._IO_FILE* %6) #7, !dbg !982
  %call9.i.i = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i32* %i.i.i) #7, !dbg !983
  call void @llvm.dbg.value(metadata !{i32* %i.i.i}, i64 0, metadata !984) #5, !dbg !985
  call void @llvm.dbg.value(metadata !{i32* %i.i.i}, i64 0, metadata !984) #5, !dbg !985
  call void @llvm.dbg.value(metadata !{i32* %i.i.i}, i64 0, metadata !405), !dbg !985
  %7 = load i32* %i.i.i, align 4, !dbg !985, !tbaa !519
  %dec.i.i = add nsw i32 %7, -1, !dbg !985
  call void @llvm.dbg.value(metadata !{i32 %dec.i.i}, i64 0, metadata !984) #5, !dbg !985
  call void @llvm.dbg.value(metadata !{i32 %dec.i.i}, i64 0, metadata !984) #5, !dbg !985
  call void @llvm.dbg.value(metadata !{i32 %dec.i.i}, i64 0, metadata !405), !dbg !985
  store i32 %dec.i.i, i32* %i.i.i, align 4, !dbg !985, !tbaa !519
  %cmp.i.i = icmp slt i32 %7, 1, !dbg !986
  %cmp10.i.i = icmp sgt i32 %dec.i.i, 3, !dbg !986
  %or.cond.i.i = or i1 %cmp.i.i, %cmp10.i.i, !dbg !986
  br i1 %or.cond.i.i, label %do.body.i.i, label %do.end.i.i, !dbg !986

do.end.i.i:                                       ; preds = %do.body.i.i
  %x16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !954
  %putchar.i.i = call i32 @putchar(i32 10) #5, !dbg !987
  call void @llvm.dbg.value(metadata !{i32* %i.i.i}, i64 0, metadata !984) #5, !dbg !988
  call void @llvm.dbg.value(metadata !{i32* %i.i.i}, i64 0, metadata !984) #5, !dbg !988
  call void @llvm.dbg.value(metadata !{i32* %i.i.i}, i64 0, metadata !405), !dbg !988
  %8 = load i32* %i.i.i, align 4, !dbg !988, !tbaa !519
  store i32 %8, i32* @eFF, align 4, !dbg !988, !tbaa !520
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !989) #5, !dbg !990
  call void @llvm.memset.p0i8.i64(i8* bitcast ([3 x double]* @BOX to i8*), i8 0, i64 24, i32 16, i1 false) #5, !dbg !990
  %9 = and i32 %8, -3, !dbg !992
  %10 = icmp eq i32 %9, 1, !dbg !992
  %lor.ext.i.i = zext i1 %10 to i32, !dbg !992
  store i32 %lor.ext.i.i, i32* @bReadBox, align 4, !dbg !992, !tbaa !519
  switch i32 %8, label %sw.default.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb18.i.i
    i32 3, label %sw.bb18.i.i
  ], !dbg !993

sw.bb.i.i:                                        ; preds = %do.end.i.i, %do.end.i.i
  %call17.i.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call15, i8* getelementptr inbounds ([15 x i8]* @.str31, i64 0, i64 0), i32* @NATOMS, double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 0), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 1), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 2), double* @DT) #7, !dbg !994
  br label %for.body.i, !dbg !996

sw.bb18.i.i:                                      ; preds = %do.end.i.i, %do.end.i.i
  %puts49.i.i = call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str57, i64 0, i64 0)) #5, !dbg !997
  %call20.i.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str33, i64 0, i64 0)) #7, !dbg !998
  %11 = load %struct._IO_FILE** @stdout, align 8, !dbg !999, !tbaa !547
  %call21.i.i = call i32 @fflush(%struct._IO_FILE* %11) #7, !dbg !999
  %call22.i.i = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i32* @NATOMS) #7, !dbg !1000
  %call23.i.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str34, i64 0, i64 0)) #7, !dbg !1001
  %12 = load %struct._IO_FILE** @stdout, align 8, !dbg !1002, !tbaa !547
  %call24.i.i = call i32 @fflush(%struct._IO_FILE* %12) #7, !dbg !1002
  %call25.i.i = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* @DT) #7, !dbg !1003
  %13 = load i32* @eFF, align 4, !dbg !1004, !tbaa !520
  %cmp26.i.i = icmp eq i32 %13, 2, !dbg !1004
  br i1 %cmp26.i.i, label %if.then.i.i, label %do.body30.i.i, !dbg !1004

if.then.i.i:                                      ; preds = %sw.bb18.i.i
  %call27.i.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !1005
  %14 = load %struct._IO_FILE** @stdout, align 8, !dbg !1007, !tbaa !547
  %call28.i.i = call i32 @fflush(%struct._IO_FILE* %14) #7, !dbg !1007
  %call29.i.i = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([10 x i8]* @.str37, i64 0, i64 0), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 0), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 1), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 2)) #7, !dbg !1008
  br label %do.body30.i.i, !dbg !1009

do.body30.i.i:                                    ; preds = %if.then.i.i, %sw.bb18.i.i, %do.body30.i.i
  %call31.i.i = call i32 @fgetc(%struct._IO_FILE* %call15) #7, !dbg !1010
  call void @llvm.dbg.value(metadata !{i32 %call31.i.i}, i64 0, metadata !1012) #5, !dbg !1010
  %putchar50.i.i = call i32 @putchar(i32 %call31.i.i) #5, !dbg !1013
  %cmp34.i.i = icmp eq i32 %call31.i.i, 10, !dbg !1014
  br i1 %cmp34.i.i, label %do.end35.i.i, label %do.body30.i.i, !dbg !1014

do.end35.i.i:                                     ; preds = %do.body30.i.i
  %putchar51.i.i = call i32 @putchar(i32 10) #5, !dbg !1015
  %15 = load %struct._IO_FILE** @stdout, align 8, !dbg !1016, !tbaa !547
  %call37.i.i = call i32 @fflush(%struct._IO_FILE* %15) #7, !dbg !1016
  br label %for.body.i, !dbg !1017

sw.default.i.i:                                   ; preds = %do.end.i.i
  %puts52.i.i = call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str58, i64 0, i64 0)) #5, !dbg !1018
  br label %for.body.i, !dbg !1019

for.body.i:                                       ; preds = %sw.default.i.i, %do.end35.i.i, %sw.bb.i.i, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %sw.bb.i.i ], [ 0, %do.end35.i.i ], [ 0, %sw.default.i.i ]
  %arrayidx.i = getelementptr inbounds [3 x double]* @BOX, i64 0, i64 %indvars.iv.i, !dbg !1020
  %16 = load double* %arrayidx.i, align 8, !dbg !1020, !tbaa !846
  %conv.i = fptrunc double %16 to float, !dbg !1020
  %arrayidx4.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 %indvars.iv.i, i64 %indvars.iv.i, !dbg !1020
  store float %conv.i, float* %arrayidx4.i, align 4, !dbg !1020, !tbaa !543
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1022
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !1022
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !1022
  br i1 %exitcond, label %for.end.i, label %for.body.i, !dbg !1022

for.end.i:                                        ; preds = %for.body.i
  %17 = load i32* @NATOMS, align 4, !dbg !1023, !tbaa !519
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 514, i32 %17, i32 12) #7, !dbg !1023
  %18 = bitcast i8* %call.i to [3 x float]*, !dbg !1023
  store [3 x float]* %18, [3 x float]** %x16, align 8, !dbg !1023, !tbaa !547
  %19 = load double* @DT, align 8, !dbg !1024, !tbaa !846
  %conv5.i = fptrunc double %19 to float, !dbg !1024
  store float %conv5.i, float* %time, align 4, !dbg !1024, !tbaa !543
  %20 = load i32* @NATOMS, align 4, !dbg !1025, !tbaa !519
  %call6.i = call fastcc i32 @xyz_next_x(%struct._IO_FILE* %call15, float* %time, i32 %20, [3 x float]* %18, [3 x float]* %arraydecay) #7, !dbg !1025
  %tobool.i = icmp eq i32 %call6.i, 0, !dbg !1025
  br i1 %tobool.i, label %xyz_first_x.exit.thread, label %xyz_first_x.exit, !dbg !1025

xyz_first_x.exit.thread:                          ; preds = %for.end.i
  %natoms18123 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !954
  store i32 0, i32* %natoms18123, align 4, !dbg !954, !tbaa !519
  br label %lor.lhs.false, !dbg !1026

xyz_first_x.exit:                                 ; preds = %for.end.i
  store float 0.000000e+00, float* %time, align 4, !dbg !1027, !tbaa !543
  call void @init_pbc([3 x float]* %arraydecay) #7, !dbg !1028
  %21 = load i32* @NATOMS, align 4, !dbg !1029, !tbaa !519
  %natoms18 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !954
  store i32 %21, i32* %natoms18, align 4, !dbg !954, !tbaa !519
  %tobool20 = icmp eq i32 %21, 0, !dbg !1026
  br i1 %tobool20, label %lor.lhs.false, label %if.then21, !dbg !1026

if.then21:                                        ; preds = %xyz_first_x.exit
  %bTime = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !1030
  store i32 1, i32* %bTime, align 4, !dbg !1030, !tbaa !519
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1032
  store i32 1, i32* %bX, align 4, !dbg !1032, !tbaa !519
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1033
  store i32 1, i32* %bBox, align 4, !dbg !1033, !tbaa !519
  %22 = load float* %time, align 4, !dbg !1034, !tbaa !543
  call void @llvm.dbg.value(metadata !{float %22}, i64 0, metadata !1035) #5, !dbg !1036
  call fastcc void @printcount2(float %22, float %22, float %22, float %22) #7, !dbg !1037
  br label %lor.lhs.false, !dbg !1038

sw.bb24:                                          ; preds = %entry
  %natoms25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1039
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !1039
  %time26 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1039
  %arraydecay28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1039
  %x29 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1039
  %prec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !1039
  %call30 = call i32 @read_first_xtc(i32 %call, i32* %natoms25, i32* %step, float* %time26, [3 x float]* %arraydecay28, [3 x float]** %x29, float* %prec, i32* %bOK) #7, !dbg !1039
  %cmp = icmp eq i32 %call30, 0, !dbg !1039
  br i1 %cmp, label %if.then31, label %if.end32, !dbg !1039

if.then31:                                        ; preds = %sw.bb24
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !1040
  br label %if.end32, !dbg !1040

if.end32:                                         ; preds = %if.then31, %sw.bb24
  %bPrec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !1041
  store i32 1, i32* %bPrec, align 4, !dbg !1041, !tbaa !519
  %bStep = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !1042
  store i32 1, i32* %bStep, align 4, !dbg !1042, !tbaa !519
  %bTime33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !1043
  store i32 1, i32* %bTime33, align 4, !dbg !1043, !tbaa !519
  %bX34 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1044
  store i32 1, i32* %bX34, align 4, !dbg !1044, !tbaa !519
  %bBox35 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1045
  store i32 1, i32* %bBox35, align 4, !dbg !1045, !tbaa !519
  %23 = load float* %time26, align 4, !dbg !1046, !tbaa !543
  call void @llvm.dbg.value(metadata !{float %23}, i64 0, metadata !1047) #5, !dbg !1048
  call fastcc void @printcount2(float %23, float %23, float %23, float %23) #7, !dbg !1049
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !266), !dbg !1050
  br label %lor.lhs.false

sw.bb37:                                          ; preds = %entry
  %call38 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %call) #7, !dbg !1051
  store i32 -1, i32* @__frame, align 4, !dbg !1052, !tbaa !519
  %24 = load %struct._IO_FILE** @stderr, align 8, !dbg !1054, !tbaa !547
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str18, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %24) #5, !dbg !1054
  call void @frewind(%struct._IO_FILE* %call38) #7, !dbg !1055
  %natoms.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1056
  call void @get_pdb_coordnum(%struct._IO_FILE* %call38, i32* %natoms.i) #7, !dbg !1056
  %26 = load i32* %natoms.i, align 4, !dbg !1057, !tbaa !519
  %cmp.i = icmp eq i32 %26, 0, !dbg !1057
  br i1 %cmp.i, label %if.then.i, label %pdb_first_x.exit, !dbg !1057

if.then.i:                                        ; preds = %sw.bb37
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !1058
  br label %pdb_first_x.exit, !dbg !1058

pdb_first_x.exit:                                 ; preds = %sw.bb37, %if.then.i
  call void @frewind(%struct._IO_FILE* %call38) #7, !dbg !1059
  %27 = load i32* %natoms.i, align 4, !dbg !1060, !tbaa !519
  %call3.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 583, i32 %27, i32 12) #7, !dbg !1060
  %28 = bitcast i8* %call3.i to [3 x float]*, !dbg !1060
  %x.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1060
  store [3 x float]* %28, [3 x float]** %x.i, align 8, !dbg !1060, !tbaa !547
  %call4.i = call fastcc i32 @pdb_next_x(%struct._IO_FILE* %call38, %struct.t_trxframe* %fr) #7, !dbg !1061
  %29 = load i32* %natoms.i, align 4, !dbg !1062, !tbaa !519
  %tobool41 = icmp eq i32 %29, 0, !dbg !1062
  br i1 %tobool41, label %lor.lhs.false, label %if.then42, !dbg !1062

if.then42:                                        ; preds = %pdb_first_x.exit
  %time43 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1063
  %30 = load float* %time43, align 4, !dbg !1063, !tbaa !543
  call void @llvm.dbg.value(metadata !{float %30}, i64 0, metadata !1064) #5, !dbg !1065
  call fastcc void @printcount2(float %30, float %30, float %30, float %30) #7, !dbg !1066
  br label %lor.lhs.false, !dbg !1063

sw.bb45:                                          ; preds = %entry
  %call46 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %call) #7, !dbg !1067
  %call47 = call i32 @gro_first_x_or_v(%struct._IO_FILE* %call46, %struct.t_trxframe* %fr) #7, !dbg !1067
  %tobool48 = icmp eq i32 %call47, 0, !dbg !1067
  br i1 %tobool48, label %lor.lhs.false, label %if.then49, !dbg !1067

if.then49:                                        ; preds = %sw.bb45
  %time50 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1068
  %31 = load float* %time50, align 4, !dbg !1068, !tbaa !543
  call void @llvm.dbg.value(metadata !{float %31}, i64 0, metadata !1069) #5, !dbg !1070
  call fastcc void @printcount2(float %31, float %31, float %31, float %31) #7, !dbg !1071
  br label %lor.lhs.false, !dbg !1068

sw.default:                                       ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str16, i64 0, i64 0), i8* %fn) #7, !dbg !1072
  br label %if.then59

lor.lhs.false:                                    ; preds = %xyz_first_x.exit.thread, %xyz_first_x.exit, %if.then21, %pdb_first_x.exit, %if.then42, %sw.bb45, %if.then49, %if.end32
  %32 = load i32* %flags1, align 4, !dbg !1073, !tbaa !519
  %and54 = and i32 %32, 64, !dbg !1073
  %tobool55 = icmp eq i32 %and54, 0, !dbg !1073
  br i1 %tobool55, label %land.lhs.true, label %if.end64, !dbg !1073

land.lhs.true:                                    ; preds = %lor.lhs.false
  %time56 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1074
  %33 = load float* %time56, align 4, !dbg !1074, !tbaa !543
  %call57 = call i32 @check_times(float %33) #7, !dbg !1074
  %cmp58 = icmp slt i32 %call57, 0, !dbg !1074
  br i1 %cmp58, label %if.then59, label %if.end64, !dbg !1074

if.then59:                                        ; preds = %land.lhs.true, %entry, %entry, %entry, %if.end12, %sw.default
  %34 = load i32* %status, align 4, !dbg !1075, !tbaa !519
  %call60 = call i32 @read_next_frame(i32 %34, %struct.t_trxframe* %fr) #8, !dbg !1075
  %tobool61 = icmp eq i32 %call60, 0, !dbg !1075
  br i1 %tobool61, label %return, label %if.end64, !dbg !1075

if.end64:                                         ; preds = %if.then59, %land.lhs.true, %lor.lhs.false
  %time65 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1076
  %35 = load float* %time65, align 4, !dbg !1076, !tbaa !543
  %t0 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 3, !dbg !1076
  store float %35, float* %t0, align 4, !dbg !1076, !tbaa !543
  %natoms66 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1077
  %36 = load i32* %natoms66, align 4, !dbg !1077, !tbaa !519
  %cmp67 = icmp sgt i32 %36, 0, !dbg !1077
  %conv = zext i1 %cmp67 to i32, !dbg !1077
  br label %return, !dbg !1077

return:                                           ; preds = %if.then59, %if.end64
  %retval.0 = phi i32 [ %conv, %if.end64 ], [ 0, %if.then59 ]
  ret i32 %retval.0, !dbg !1078
}

; Function Attrs: optsize
declare i32 @read_first_xtc(i32, i32*, i32*, float*, [3 x float]*, [3 x float]**, float*, i32*) #3

; Function Attrs: optsize
declare i32 @gro_first_x_or_v(%struct._IO_FILE*, %struct.t_trxframe*) #3

; Function Attrs: optsize
declare i32 @check_times(float) #3

; Function Attrs: nounwind optsize uwtable
define i32 @read_first_x(i32* nocapture %status, i8* %fn, float* nocapture %t, [3 x float]** nocapture %x, [3 x float]* nocapture %box) #1 {
entry:
  %fr = alloca %struct.t_trxframe, align 8
  call void @llvm.dbg.value(metadata !{i32* %status}, i64 0, metadata !274), !dbg !1079
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !275), !dbg !1079
  call void @llvm.dbg.value(metadata !{float* %t}, i64 0, metadata !276), !dbg !1080
  call void @llvm.dbg.value(metadata !{[3 x float]** %x}, i64 0, metadata !277), !dbg !1080
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !278), !dbg !1080
  %0 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !1081
  call void @llvm.lifetime.start(i64 176, i8* %0) #5, !dbg !1081
  call void @llvm.dbg.declare(metadata !{%struct.t_trxframe* %fr}, metadata !279), !dbg !1081
  %call = call i32 @read_first_frame(i32* %status, i8* %fn, %struct.t_trxframe* %fr, i32 2) #8, !dbg !1082
  %1 = load i32* %status, align 4, !dbg !1083, !tbaa !519
  %2 = load i32* @nxframe, align 4, !dbg !1083, !tbaa !519
  %cmp = icmp slt i32 %1, %2, !dbg !1083
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then, !dbg !1083

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre20 = load %struct.t_trxframe** @xframe, align 8, !dbg !1084, !tbaa !547
  br label %if.end, !dbg !1083

if.then:                                          ; preds = %entry
  %add = add nsw i32 %1, 1, !dbg !1085
  store i32 %add, i32* @nxframe, align 4, !dbg !1085, !tbaa !519
  %3 = load %struct.t_trxframe** @xframe, align 8, !dbg !1087, !tbaa !547
  %4 = bitcast %struct.t_trxframe* %3 to i8*, !dbg !1087
  %mul = mul i32 %add, 176, !dbg !1087
  %call2 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 755, i8* %4, i32 %mul) #7, !dbg !1087
  %5 = bitcast i8* %call2 to %struct.t_trxframe*, !dbg !1087
  store %struct.t_trxframe* %5, %struct.t_trxframe** @xframe, align 8, !dbg !1087, !tbaa !547
  %.pre = load i32* %status, align 4, !dbg !1084, !tbaa !519
  br label %if.end, !dbg !1088

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %6 = phi %struct.t_trxframe* [ %.pre20, %entry.if.end_crit_edge ], [ %5, %if.then ]
  %7 = phi i32 [ %1, %entry.if.end_crit_edge ], [ %.pre, %if.then ]
  %idxprom = sext i32 %7 to i64, !dbg !1084
  %arrayidx = getelementptr inbounds %struct.t_trxframe* %6, i64 %idxprom, !dbg !1084
  %8 = bitcast %struct.t_trxframe* %arrayidx to i8*, !dbg !1084
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %0, i64 176, i32 8, i1 false), !dbg !1084, !tbaa.struct !1089
  %9 = load i32* %status, align 4, !dbg !1090, !tbaa !519
  %idxprom3 = sext i32 %9 to i64, !dbg !1090
  %time = getelementptr inbounds %struct.t_trxframe* %6, i64 %idxprom3, i32 11, !dbg !1090
  %10 = load float* %time, align 4, !dbg !1090, !tbaa !543
  store float %10, float* %t, align 4, !dbg !1090, !tbaa !543
  %x7 = getelementptr inbounds %struct.t_trxframe* %6, i64 %idxprom3, i32 19, !dbg !1091
  %11 = load [3 x float]** %x7, align 8, !dbg !1091, !tbaa !547
  store [3 x float]* %11, [3 x float]** %x, align 8, !dbg !1091, !tbaa !547
  %12 = load %struct.t_trxframe** @xframe, align 8, !dbg !1092, !tbaa !547
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1093), !dbg !1094
  %arraydecay.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 0, i64 0, !dbg !1095
  %arraydecay2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1095
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay.i}, i64 0, metadata !1096), !dbg !1097
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay2.i}, i64 0, metadata !1098), !dbg !1097
  %13 = load float* %arraydecay.i, align 4, !dbg !1099, !tbaa !543
  store float %13, float* %arraydecay2.i, align 4, !dbg !1099, !tbaa !543
  %arrayidx2.i.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 0, i64 1, !dbg !1100
  %14 = load float* %arrayidx2.i.i, align 4, !dbg !1100, !tbaa !543
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1100
  store float %14, float* %arrayidx3.i.i, align 4, !dbg !1100, !tbaa !543
  %arrayidx4.i.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 0, i64 2, !dbg !1101
  %15 = load float* %arrayidx4.i.i, align 4, !dbg !1101, !tbaa !543
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1101
  store float %15, float* %arrayidx5.i.i, align 4, !dbg !1101, !tbaa !543
  %arraydecay4.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 1, i64 0, !dbg !1102
  %arraydecay6.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1102
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay4.i}, i64 0, metadata !1103), !dbg !1104
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay6.i}, i64 0, metadata !1105), !dbg !1104
  %16 = load float* %arraydecay4.i, align 4, !dbg !1106, !tbaa !543
  store float %16, float* %arraydecay6.i, align 4, !dbg !1106, !tbaa !543
  %arrayidx2.i19.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 1, i64 1, !dbg !1107
  %17 = load float* %arrayidx2.i19.i, align 4, !dbg !1107, !tbaa !543
  %arrayidx3.i20.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1107
  store float %17, float* %arrayidx3.i20.i, align 4, !dbg !1107, !tbaa !543
  %arrayidx4.i21.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 1, i64 2, !dbg !1108
  %18 = load float* %arrayidx4.i21.i, align 4, !dbg !1108, !tbaa !543
  %arrayidx5.i22.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1108
  store float %18, float* %arrayidx5.i22.i, align 4, !dbg !1108, !tbaa !543
  %arraydecay8.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 2, i64 0, !dbg !1109
  %arraydecay10.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1109
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8.i}, i64 0, metadata !1110), !dbg !1111
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay10.i}, i64 0, metadata !1112), !dbg !1111
  %19 = load float* %arraydecay8.i, align 4, !dbg !1113, !tbaa !543
  store float %19, float* %arraydecay10.i, align 4, !dbg !1113, !tbaa !543
  %arrayidx2.i15.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 2, i64 1, !dbg !1114
  %20 = load float* %arrayidx2.i15.i, align 4, !dbg !1114, !tbaa !543
  %arrayidx3.i16.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1114
  store float %20, float* %arrayidx3.i16.i, align 4, !dbg !1114, !tbaa !543
  %arrayidx4.i17.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 2, i64 2, !dbg !1115
  %21 = load float* %arrayidx4.i17.i, align 4, !dbg !1115, !tbaa !543
  %arrayidx5.i18.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1115
  store float %21, float* %arrayidx5.i18.i, align 4, !dbg !1115, !tbaa !543
  %natoms = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 2, !dbg !1116
  %22 = load i32* %natoms, align 4, !dbg !1116, !tbaa !519
  call void @llvm.lifetime.end(i64 176, i8* %0) #5, !dbg !1117
  ret i32 %22, !dbg !1117
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: nounwind optsize uwtable
define i32 @read_next_x(i32 %status, float* nocapture %t, i32 %natoms, [3 x float]* %x, [3 x float]* nocapture %box) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %status}, i64 0, metadata !284), !dbg !1118
  tail call void @llvm.dbg.value(metadata !{float* %t}, i64 0, metadata !285), !dbg !1118
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !286), !dbg !1118
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !287), !dbg !1118
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !288), !dbg !1118
  %idxprom = sext i32 %status to i64, !dbg !1119
  %0 = load %struct.t_trxframe** @xframe, align 8, !dbg !1119, !tbaa !547
  %x1 = getelementptr inbounds %struct.t_trxframe* %0, i64 %idxprom, i32 19, !dbg !1119
  store [3 x float]* %x, [3 x float]** %x1, align 8, !dbg !1119, !tbaa !547
  %1 = load %struct.t_trxframe** @xframe, align 8, !dbg !1120, !tbaa !547
  %arrayidx3 = getelementptr inbounds %struct.t_trxframe* %1, i64 %idxprom, !dbg !1120
  %call = tail call i32 @read_next_frame(i32 %status, %struct.t_trxframe* %arrayidx3) #8, !dbg !1120
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !289), !dbg !1120
  %2 = load %struct.t_trxframe** @xframe, align 8, !dbg !1121, !tbaa !547
  %time = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 11, !dbg !1121
  %3 = load float* %time, align 4, !dbg !1121, !tbaa !543
  store float %3, float* %t, align 4, !dbg !1121, !tbaa !543
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1122), !dbg !1124
  %arraydecay.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 0, i64 0, !dbg !1125
  %arraydecay2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1125
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay.i}, i64 0, metadata !1126), !dbg !1127
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay2.i}, i64 0, metadata !1128), !dbg !1127
  %4 = load float* %arraydecay.i, align 4, !dbg !1129, !tbaa !543
  store float %4, float* %arraydecay2.i, align 4, !dbg !1129, !tbaa !543
  %arrayidx2.i.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 0, i64 1, !dbg !1130
  %5 = load float* %arrayidx2.i.i, align 4, !dbg !1130, !tbaa !543
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1130
  store float %5, float* %arrayidx3.i.i, align 4, !dbg !1130, !tbaa !543
  %arrayidx4.i.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 0, i64 2, !dbg !1131
  %6 = load float* %arrayidx4.i.i, align 4, !dbg !1131, !tbaa !543
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1131
  store float %6, float* %arrayidx5.i.i, align 4, !dbg !1131, !tbaa !543
  %arraydecay4.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 1, i64 0, !dbg !1132
  %arraydecay6.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1132
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay4.i}, i64 0, metadata !1133), !dbg !1134
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay6.i}, i64 0, metadata !1135), !dbg !1134
  %7 = load float* %arraydecay4.i, align 4, !dbg !1136, !tbaa !543
  store float %7, float* %arraydecay6.i, align 4, !dbg !1136, !tbaa !543
  %arrayidx2.i19.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 1, i64 1, !dbg !1137
  %8 = load float* %arrayidx2.i19.i, align 4, !dbg !1137, !tbaa !543
  %arrayidx3.i20.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1137
  store float %8, float* %arrayidx3.i20.i, align 4, !dbg !1137, !tbaa !543
  %arrayidx4.i21.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 1, i64 2, !dbg !1138
  %9 = load float* %arrayidx4.i21.i, align 4, !dbg !1138, !tbaa !543
  %arrayidx5.i22.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1138
  store float %9, float* %arrayidx5.i22.i, align 4, !dbg !1138, !tbaa !543
  %arraydecay8.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 2, i64 0, !dbg !1139
  %arraydecay10.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1139
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8.i}, i64 0, metadata !1140), !dbg !1141
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay10.i}, i64 0, metadata !1142), !dbg !1141
  %10 = load float* %arraydecay8.i, align 4, !dbg !1143, !tbaa !543
  store float %10, float* %arraydecay10.i, align 4, !dbg !1143, !tbaa !543
  %arrayidx2.i15.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 2, i64 1, !dbg !1144
  %11 = load float* %arrayidx2.i15.i, align 4, !dbg !1144, !tbaa !543
  %arrayidx3.i16.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1144
  store float %11, float* %arrayidx3.i16.i, align 4, !dbg !1144, !tbaa !543
  %arrayidx4.i17.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 2, i64 2, !dbg !1145
  %12 = load float* %arrayidx4.i17.i, align 4, !dbg !1145, !tbaa !543
  %arrayidx5.i18.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1145
  store float %12, float* %arrayidx5.i18.i, align 4, !dbg !1145, !tbaa !543
  ret i32 %call, !dbg !1146
}

; Function Attrs: nounwind optsize uwtable
define void @close_trj(i32 %status) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %status}, i64 0, metadata !292), !dbg !1147
  tail call void @gmx_fio_close(i32 %status) #7, !dbg !1148
  ret void, !dbg !1149
}

; Function Attrs: nounwind optsize uwtable
define void @rewind_trj(i32 %status) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %status}, i64 0, metadata !295), !dbg !1150
  store i32 -1, i32* @__frame, align 4, !dbg !1151, !tbaa !519
  tail call void @gmx_fio_rewind(i32 %status) #7, !dbg !1152
  ret void, !dbg !1153
}

; Function Attrs: optsize
declare void @gmx_fio_rewind(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @read_first_v(i32* nocapture %status, i8* %fn, float* nocapture %t, [3 x float]** nocapture %v, [3 x float]* nocapture %box) #1 {
entry:
  %fr = alloca %struct.t_trxframe, align 8
  call void @llvm.dbg.value(metadata !{i32* %status}, i64 0, metadata !298), !dbg !1154
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !299), !dbg !1154
  call void @llvm.dbg.value(metadata !{float* %t}, i64 0, metadata !300), !dbg !1154
  call void @llvm.dbg.value(metadata !{[3 x float]** %v}, i64 0, metadata !301), !dbg !1154
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !302), !dbg !1154
  %0 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !1155
  call void @llvm.lifetime.start(i64 176, i8* %0) #5, !dbg !1155
  call void @llvm.dbg.declare(metadata !{%struct.t_trxframe* %fr}, metadata !303), !dbg !1155
  %call = call i32 @read_first_frame(i32* %status, i8* %fn, %struct.t_trxframe* %fr, i32 8) #8, !dbg !1156
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1157
  %1 = load float* %time, align 4, !dbg !1157, !tbaa !543
  store float %1, float* %t, align 4, !dbg !1157, !tbaa !543
  tail call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !1158), !dbg !1160
  %bV.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1161
  %2 = load i32* %bV.i, align 8, !dbg !1161, !tbaa !519
  %tobool.i = icmp eq i32 %2, 0, !dbg !1161
  %natoms.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1162
  %3 = load i32* %natoms.i, align 8, !dbg !1162, !tbaa !519
  %cmp5.i = icmp sgt i32 %3, 0, !dbg !1162
  %or.cond = and i1 %tobool.i, %cmp5.i, !dbg !1161
  br i1 %or.cond, label %for.body.lr.ph.i, label %clear_v.exit, !dbg !1161

for.body.lr.ph.i:                                 ; preds = %entry
  %v.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1164
  %4 = load [3 x float]** %v.i, align 8, !dbg !1164, !tbaa !547
  br label %for.body.i, !dbg !1162

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %arraydecay.i = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv.i, i64 0, !dbg !1164
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay.i}, i64 0, metadata !1165), !dbg !1166
  store float 0.000000e+00, float* %arraydecay.i, align 4, !dbg !1167, !tbaa !543
  %arrayidx1.i.i = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv.i, i64 1, !dbg !1169
  store float 0.000000e+00, float* %arrayidx1.i.i, align 4, !dbg !1169, !tbaa !543
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv.i, i64 2, !dbg !1170
  store float 0.000000e+00, float* %arrayidx2.i.i, align 4, !dbg !1170, !tbaa !543
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1162
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !1162
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !1162
  br i1 %exitcond, label %clear_v.exit, label %for.body.i, !dbg !1162

clear_v.exit:                                     ; preds = %entry, %for.body.i
  %v1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1171
  %5 = load [3 x float]** %v1, align 8, !dbg !1171, !tbaa !547
  store [3 x float]* %5, [3 x float]** %v, align 8, !dbg !1171, !tbaa !547
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1172), !dbg !1174
  %arraydecay.i3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0, !dbg !1175
  %arraydecay2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1175
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay.i3}, i64 0, metadata !1176), !dbg !1177
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay2.i}, i64 0, metadata !1178), !dbg !1177
  %6 = load float* %arraydecay.i3, align 4, !dbg !1179, !tbaa !543
  store float %6, float* %arraydecay2.i, align 4, !dbg !1179, !tbaa !543
  %arrayidx2.i.i4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1, !dbg !1180
  %7 = load float* %arrayidx2.i.i4, align 4, !dbg !1180, !tbaa !543
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1180
  store float %7, float* %arrayidx3.i.i, align 4, !dbg !1180, !tbaa !543
  %arrayidx4.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2, !dbg !1181
  %8 = load float* %arrayidx4.i.i, align 4, !dbg !1181, !tbaa !543
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1181
  store float %8, float* %arrayidx5.i.i, align 4, !dbg !1181, !tbaa !543
  %arraydecay4.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0, !dbg !1182
  %arraydecay6.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1182
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay4.i}, i64 0, metadata !1183), !dbg !1184
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay6.i}, i64 0, metadata !1185), !dbg !1184
  %9 = load float* %arraydecay4.i, align 4, !dbg !1186, !tbaa !543
  store float %9, float* %arraydecay6.i, align 4, !dbg !1186, !tbaa !543
  %arrayidx2.i19.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !1187
  %10 = load float* %arrayidx2.i19.i, align 4, !dbg !1187, !tbaa !543
  %arrayidx3.i20.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1187
  store float %10, float* %arrayidx3.i20.i, align 4, !dbg !1187, !tbaa !543
  %arrayidx4.i21.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2, !dbg !1188
  %11 = load float* %arrayidx4.i21.i, align 4, !dbg !1188, !tbaa !543
  %arrayidx5.i22.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1188
  store float %11, float* %arrayidx5.i22.i, align 4, !dbg !1188, !tbaa !543
  %arraydecay8.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0, !dbg !1189
  %arraydecay10.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1189
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8.i}, i64 0, metadata !1190), !dbg !1191
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay10.i}, i64 0, metadata !1192), !dbg !1191
  %12 = load float* %arraydecay8.i, align 4, !dbg !1193, !tbaa !543
  store float %12, float* %arraydecay10.i, align 4, !dbg !1193, !tbaa !543
  %arrayidx2.i15.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1, !dbg !1194
  %13 = load float* %arrayidx2.i15.i, align 4, !dbg !1194, !tbaa !543
  %arrayidx3.i16.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1194
  store float %13, float* %arrayidx3.i16.i, align 4, !dbg !1194, !tbaa !543
  %arrayidx4.i17.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !1195
  %14 = load float* %arrayidx4.i17.i, align 4, !dbg !1195, !tbaa !543
  %arrayidx5.i18.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1195
  store float %14, float* %arrayidx5.i18.i, align 4, !dbg !1195, !tbaa !543
  call void @llvm.lifetime.end(i64 176, i8* %0) #5, !dbg !1196
  ret i32 %3, !dbg !1196
}

; Function Attrs: nounwind optsize uwtable
define i32 @read_next_v(i32 %status, float* nocapture %t, i32 %natoms, [3 x float]* %v, [3 x float]* nocapture %box) #1 {
entry:
  %fr = alloca %struct.t_trxframe, align 8
  call void @llvm.dbg.value(metadata !{i32 %status}, i64 0, metadata !306), !dbg !1197
  call void @llvm.dbg.value(metadata !{float* %t}, i64 0, metadata !307), !dbg !1197
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !308), !dbg !1197
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !309), !dbg !1197
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !310), !dbg !1197
  %0 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !1198
  call void @llvm.lifetime.start(i64 176, i8* %0) #5, !dbg !1198
  call void @llvm.dbg.declare(metadata !{%struct.t_trxframe* %fr}, metadata !311), !dbg !1198
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #8, !dbg !1199
  %flags = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0, !dbg !1200
  store i32 8, i32* %flags, align 8, !dbg !1200, !tbaa !519
  %natoms1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1201
  store i32 %natoms, i32* %natoms1, align 8, !dbg !1201, !tbaa !519
  %1 = load float* %t, align 4, !dbg !1202, !tbaa !543
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1202
  store float %1, float* %time, align 4, !dbg !1202, !tbaa !543
  %v2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1203
  store [3 x float]* %v, [3 x float]** %v2, align 8, !dbg !1203, !tbaa !547
  %call = call i32 @read_next_frame(i32 %status, %struct.t_trxframe* %fr) #8, !dbg !1204
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !312), !dbg !1204
  %2 = load float* %time, align 4, !dbg !1205, !tbaa !543
  store float %2, float* %t, align 4, !dbg !1205, !tbaa !543
  tail call void @llvm.dbg.value(metadata !{%struct.t_trxframe* %fr}, i64 0, metadata !1206), !dbg !1208
  %bV.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1209
  %3 = load i32* %bV.i, align 8, !dbg !1209, !tbaa !519
  %tobool.i = icmp eq i32 %3, 0, !dbg !1209
  br i1 %tobool.i, label %for.cond.preheader.i, label %clear_v.exit, !dbg !1209

for.cond.preheader.i:                             ; preds = %entry
  %4 = load i32* %natoms1, align 8, !dbg !1210, !tbaa !519
  %cmp5.i = icmp sgt i32 %4, 0, !dbg !1210
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %clear_v.exit, !dbg !1210

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %5 = load [3 x float]** %v2, align 8, !dbg !1211, !tbaa !547
  br label %for.body.i, !dbg !1210

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %arraydecay.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv.i, i64 0, !dbg !1211
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay.i}, i64 0, metadata !1212), !dbg !1213
  store float 0.000000e+00, float* %arraydecay.i, align 4, !dbg !1214, !tbaa !543
  %arrayidx1.i.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv.i, i64 1, !dbg !1215
  store float 0.000000e+00, float* %arrayidx1.i.i, align 4, !dbg !1215, !tbaa !543
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv.i, i64 2, !dbg !1216
  store float 0.000000e+00, float* %arrayidx2.i.i, align 4, !dbg !1216, !tbaa !543
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1210
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !1210
  %exitcond = icmp eq i32 %lftr.wideiv, %4, !dbg !1210
  br i1 %exitcond, label %clear_v.exit, label %for.body.i, !dbg !1210

clear_v.exit:                                     ; preds = %for.body.i, %entry, %for.cond.preheader.i
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !1217), !dbg !1219
  %arraydecay.i6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0, !dbg !1220
  %arraydecay2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1220
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay.i6}, i64 0, metadata !1221), !dbg !1222
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay2.i}, i64 0, metadata !1223), !dbg !1222
  %6 = load float* %arraydecay.i6, align 4, !dbg !1224, !tbaa !543
  store float %6, float* %arraydecay2.i, align 4, !dbg !1224, !tbaa !543
  %arrayidx2.i.i7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1, !dbg !1225
  %7 = load float* %arrayidx2.i.i7, align 4, !dbg !1225, !tbaa !543
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1225
  store float %7, float* %arrayidx3.i.i, align 4, !dbg !1225, !tbaa !543
  %arrayidx4.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2, !dbg !1226
  %8 = load float* %arrayidx4.i.i, align 4, !dbg !1226, !tbaa !543
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1226
  store float %8, float* %arrayidx5.i.i, align 4, !dbg !1226, !tbaa !543
  %arraydecay4.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0, !dbg !1227
  %arraydecay6.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1227
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay4.i}, i64 0, metadata !1228), !dbg !1229
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay6.i}, i64 0, metadata !1230), !dbg !1229
  %9 = load float* %arraydecay4.i, align 4, !dbg !1231, !tbaa !543
  store float %9, float* %arraydecay6.i, align 4, !dbg !1231, !tbaa !543
  %arrayidx2.i19.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !1232
  %10 = load float* %arrayidx2.i19.i, align 4, !dbg !1232, !tbaa !543
  %arrayidx3.i20.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1232
  store float %10, float* %arrayidx3.i20.i, align 4, !dbg !1232, !tbaa !543
  %arrayidx4.i21.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2, !dbg !1233
  %11 = load float* %arrayidx4.i21.i, align 4, !dbg !1233, !tbaa !543
  %arrayidx5.i22.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1233
  store float %11, float* %arrayidx5.i22.i, align 4, !dbg !1233, !tbaa !543
  %arraydecay8.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0, !dbg !1234
  %arraydecay10.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1234
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8.i}, i64 0, metadata !1235), !dbg !1236
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay10.i}, i64 0, metadata !1237), !dbg !1236
  %12 = load float* %arraydecay8.i, align 4, !dbg !1238, !tbaa !543
  store float %12, float* %arraydecay10.i, align 4, !dbg !1238, !tbaa !543
  %arrayidx2.i15.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1, !dbg !1239
  %13 = load float* %arrayidx2.i15.i, align 4, !dbg !1239, !tbaa !543
  %arrayidx3.i16.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1239
  store float %13, float* %arrayidx3.i16.i, align 4, !dbg !1239, !tbaa !543
  %arrayidx4.i17.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !1240
  %14 = load float* %arrayidx4.i17.i, align 4, !dbg !1240, !tbaa !543
  %arrayidx5.i18.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1240
  store float %14, float* %arrayidx5.i18.i, align 4, !dbg !1240, !tbaa !543
  call void @llvm.lifetime.end(i64 176, i8* %0) #5, !dbg !1241
  ret i32 %call, !dbg !1241
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare void @frewind(%struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @get_pdb_coordnum(%struct._IO_FILE*, i32*) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @__isoc99_scanf(i8* nocapture, ...) #4

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct._IO_FILE* nocapture) #4

; Function Attrs: optsize
declare float @convert_time(float) #3

; Function Attrs: optsize
declare i32 @read_pdbfile(%struct._IO_FILE*, i8*, i32*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i32) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @do_read_xyz(%struct._IO_FILE* %status, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %box) #1 {
entry:
  %x0 = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %status}, i64 0, metadata !453), !dbg !1242
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !454), !dbg !1242
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !455), !dbg !1242
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !456), !dbg !1242
  call void @llvm.dbg.declare(metadata !{double* %x0}, metadata !459), !dbg !1243
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !457), !dbg !1244
  %cmp51 = icmp sgt i32 %natoms, 0, !dbg !1244
  br i1 %cmp51, label %for.cond1.preheader, label %for.end13, !dbg !1244

for.cond1.preheader:                              ; preds = %entry, %for.inc11
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc11 ], [ 0, %entry ]
  %i.052 = phi i32 [ %inc12, %for.inc11 ], [ 0, %entry ]
  br label %for.body3, !dbg !1246

for.body3:                                        ; preds = %for.cond1.preheader, %if.end8
  %indvars.iv54 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next55, %if.end8 ]
  %m.049 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %if.end8 ]
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %status, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %x0) #7, !dbg !1249
  %cmp4 = icmp eq i32 %call, 1, !dbg !1249
  br i1 %cmp4, label %if.end8, label %if.then, !dbg !1249

if.then:                                          ; preds = %for.body3
  %0 = or i32 %m.049, %i.052, !dbg !1251
  %1 = icmp eq i32 %0, 0, !dbg !1251
  br i1 %1, label %return, label %if.then6, !dbg !1251

if.then6:                                         ; preds = %if.then
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !1253, !tbaa !547
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([37 x i8]* @.str49, i64 0, i64 0), i32 %i.052, i32 %m.049) #7, !dbg !1253
  br label %return, !dbg !1253

if.end8:                                          ; preds = %for.body3
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !459), !dbg !1254
  %3 = load double* %x0, align 8, !dbg !1254, !tbaa !846
  %conv = fptrunc double %3 to float, !dbg !1254
  %arrayidx10 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv57, i64 %indvars.iv54, !dbg !1254
  store float %conv, float* %arrayidx10, align 4, !dbg !1254, !tbaa !543
  %indvars.iv.next55 = add i64 %indvars.iv54, 1, !dbg !1246
  %inc = add nsw i32 %m.049, 1, !dbg !1246
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !458), !dbg !1246
  %4 = trunc i64 %indvars.iv.next55 to i32, !dbg !1246
  %cmp2 = icmp slt i32 %4, 3, !dbg !1246
  br i1 %cmp2, label %for.body3, label %for.inc11, !dbg !1246

for.inc11:                                        ; preds = %if.end8
  %indvars.iv.next58 = add i64 %indvars.iv57, 1, !dbg !1244
  %inc12 = add nsw i32 %i.052, 1, !dbg !1244
  call void @llvm.dbg.value(metadata !{i32 %inc12}, i64 0, metadata !457), !dbg !1244
  %5 = trunc i64 %indvars.iv.next58 to i32, !dbg !1244
  %cmp = icmp slt i32 %5, %natoms, !dbg !1244
  br i1 %cmp, label %for.cond1.preheader, label %for.end13, !dbg !1244

for.end13:                                        ; preds = %for.inc11, %entry
  %6 = load i32* @bReadBox, align 4, !dbg !1255, !tbaa !519
  %tobool14 = icmp eq i32 %6, 0, !dbg !1255
  br i1 %tobool14, label %return, label %for.body19, !dbg !1255

for.body19:                                       ; preds = %for.end13, %if.end24
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end24 ], [ 0, %for.end13 ]
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %status, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %x0) #7, !dbg !1256
  %cmp21 = icmp eq i32 %call20, 1, !dbg !1256
  br i1 %cmp21, label %if.end24, label %return, !dbg !1256

if.end24:                                         ; preds = %for.body19
  call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !459), !dbg !1260
  %7 = load double* %x0, align 8, !dbg !1260, !tbaa !846
  %conv25 = fptrunc double %7 to float, !dbg !1260
  %arrayidx29 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv, !dbg !1260
  store float %conv25, float* %arrayidx29, align 4, !dbg !1260, !tbaa !543
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1261
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !1261
  %cmp17 = icmp slt i32 %8, 3, !dbg !1261
  br i1 %cmp17, label %for.body19, label %return, !dbg !1261

return:                                           ; preds = %if.end24, %for.body19, %for.end13, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 1, %for.end13 ], [ 1, %if.end24 ], [ 0, %for.body19 ]
  ret i32 %retval.0, !dbg !1262
}

; Function Attrs: optsize
declare i32 @fread_trnheader(i32, %struct.t_trnheader*, i32*) #3

; Function Attrs: optsize
declare i32 @fread_htrn(i32, %struct.t_trnheader*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

; Function Attrs: nounwind
declare i32 @putchar(i32) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !60, metadata !61, metadata !506, metadata !60, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !53}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 37, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 37, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/filenm.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!6 = metadata !{i32 786472, metadata !"efMDP", i64 0} ; [ DW_TAG_enumerator ] [efMDP :: 0]
!7 = metadata !{i32 786472, metadata !"efGCT", i64 1} ; [ DW_TAG_enumerator ] [efGCT :: 1]
!8 = metadata !{i32 786472, metadata !"efTRX", i64 2} ; [ DW_TAG_enumerator ] [efTRX :: 2]
!9 = metadata !{i32 786472, metadata !"efTRN", i64 3} ; [ DW_TAG_enumerator ] [efTRN :: 3]
!10 = metadata !{i32 786472, metadata !"efTRR", i64 4} ; [ DW_TAG_enumerator ] [efTRR :: 4]
!11 = metadata !{i32 786472, metadata !"efTRJ", i64 5} ; [ DW_TAG_enumerator ] [efTRJ :: 5]
!12 = metadata !{i32 786472, metadata !"efXTC", i64 6} ; [ DW_TAG_enumerator ] [efXTC :: 6]
!13 = metadata !{i32 786472, metadata !"efG87", i64 7} ; [ DW_TAG_enumerator ] [efG87 :: 7]
!14 = metadata !{i32 786472, metadata !"efENX", i64 8} ; [ DW_TAG_enumerator ] [efENX :: 8]
!15 = metadata !{i32 786472, metadata !"efEDR", i64 9} ; [ DW_TAG_enumerator ] [efEDR :: 9]
!16 = metadata !{i32 786472, metadata !"efENE", i64 10} ; [ DW_TAG_enumerator ] [efENE :: 10]
!17 = metadata !{i32 786472, metadata !"efSTX", i64 11} ; [ DW_TAG_enumerator ] [efSTX :: 11]
!18 = metadata !{i32 786472, metadata !"efSTO", i64 12} ; [ DW_TAG_enumerator ] [efSTO :: 12]
!19 = metadata !{i32 786472, metadata !"efGRO", i64 13} ; [ DW_TAG_enumerator ] [efGRO :: 13]
!20 = metadata !{i32 786472, metadata !"efG96", i64 14} ; [ DW_TAG_enumerator ] [efG96 :: 14]
!21 = metadata !{i32 786472, metadata !"efPDB", i64 15} ; [ DW_TAG_enumerator ] [efPDB :: 15]
!22 = metadata !{i32 786472, metadata !"efBRK", i64 16} ; [ DW_TAG_enumerator ] [efBRK :: 16]
!23 = metadata !{i32 786472, metadata !"efENT", i64 17} ; [ DW_TAG_enumerator ] [efENT :: 17]
!24 = metadata !{i32 786472, metadata !"efLOG", i64 18} ; [ DW_TAG_enumerator ] [efLOG :: 18]
!25 = metadata !{i32 786472, metadata !"efXVG", i64 19} ; [ DW_TAG_enumerator ] [efXVG :: 19]
!26 = metadata !{i32 786472, metadata !"efOUT", i64 20} ; [ DW_TAG_enumerator ] [efOUT :: 20]
!27 = metadata !{i32 786472, metadata !"efNDX", i64 21} ; [ DW_TAG_enumerator ] [efNDX :: 21]
!28 = metadata !{i32 786472, metadata !"efTOP", i64 22} ; [ DW_TAG_enumerator ] [efTOP :: 22]
!29 = metadata !{i32 786472, metadata !"efITP", i64 23} ; [ DW_TAG_enumerator ] [efITP :: 23]
!30 = metadata !{i32 786472, metadata !"efTPX", i64 24} ; [ DW_TAG_enumerator ] [efTPX :: 24]
!31 = metadata !{i32 786472, metadata !"efTPS", i64 25} ; [ DW_TAG_enumerator ] [efTPS :: 25]
!32 = metadata !{i32 786472, metadata !"efTPR", i64 26} ; [ DW_TAG_enumerator ] [efTPR :: 26]
!33 = metadata !{i32 786472, metadata !"efTPA", i64 27} ; [ DW_TAG_enumerator ] [efTPA :: 27]
!34 = metadata !{i32 786472, metadata !"efTPB", i64 28} ; [ DW_TAG_enumerator ] [efTPB :: 28]
!35 = metadata !{i32 786472, metadata !"efTEX", i64 29} ; [ DW_TAG_enumerator ] [efTEX :: 29]
!36 = metadata !{i32 786472, metadata !"efRTP", i64 30} ; [ DW_TAG_enumerator ] [efRTP :: 30]
!37 = metadata !{i32 786472, metadata !"efATP", i64 31} ; [ DW_TAG_enumerator ] [efATP :: 31]
!38 = metadata !{i32 786472, metadata !"efHDB", i64 32} ; [ DW_TAG_enumerator ] [efHDB :: 32]
!39 = metadata !{i32 786472, metadata !"efDAT", i64 33} ; [ DW_TAG_enumerator ] [efDAT :: 33]
!40 = metadata !{i32 786472, metadata !"efDLG", i64 34} ; [ DW_TAG_enumerator ] [efDLG :: 34]
!41 = metadata !{i32 786472, metadata !"efMAP", i64 35} ; [ DW_TAG_enumerator ] [efMAP :: 35]
!42 = metadata !{i32 786472, metadata !"efEPS", i64 36} ; [ DW_TAG_enumerator ] [efEPS :: 36]
!43 = metadata !{i32 786472, metadata !"efMAT", i64 37} ; [ DW_TAG_enumerator ] [efMAT :: 37]
!44 = metadata !{i32 786472, metadata !"efM2P", i64 38} ; [ DW_TAG_enumerator ] [efM2P :: 38]
!45 = metadata !{i32 786472, metadata !"efMTX", i64 39} ; [ DW_TAG_enumerator ] [efMTX :: 39]
!46 = metadata !{i32 786472, metadata !"efEDI", i64 40} ; [ DW_TAG_enumerator ] [efEDI :: 40]
!47 = metadata !{i32 786472, metadata !"efEDO", i64 41} ; [ DW_TAG_enumerator ] [efEDO :: 41]
!48 = metadata !{i32 786472, metadata !"efPPA", i64 42} ; [ DW_TAG_enumerator ] [efPPA :: 42]
!49 = metadata !{i32 786472, metadata !"efPDO", i64 43} ; [ DW_TAG_enumerator ] [efPDO :: 43]
!50 = metadata !{i32 786472, metadata !"efHAT", i64 44} ; [ DW_TAG_enumerator ] [efHAT :: 44]
!51 = metadata !{i32 786472, metadata !"efXPM", i64 45} ; [ DW_TAG_enumerator ] [efXPM :: 45]
!52 = metadata !{i32 786472, metadata !"efNR", i64 46} ; [ DW_TAG_enumerator ] [efNR :: 46]
!53 = metadata !{i32 786436, metadata !1, null, metadata !"", i32 107, i64 32, i64 32, i32 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 107, size 32, align 32, offset 0] [from ]
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58, metadata !59}
!55 = metadata !{i32 786472, metadata !"effXYZ", i64 0} ; [ DW_TAG_enumerator ] [effXYZ :: 0]
!56 = metadata !{i32 786472, metadata !"effXYZBox", i64 1} ; [ DW_TAG_enumerator ] [effXYZBox :: 1]
!57 = metadata !{i32 786472, metadata !"effG87", i64 2} ; [ DW_TAG_enumerator ] [effG87 :: 2]
!58 = metadata !{i32 786472, metadata !"effG87Box", i64 3} ; [ DW_TAG_enumerator ] [effG87Box :: 3]
!59 = metadata !{i32 786472, metadata !"effNR", i64 4} ; [ DW_TAG_enumerator ] [effNR :: 4]
!60 = metadata !{i32 0}
!61 = metadata !{metadata !62, metadata !67, metadata !74, metadata !196, metadata !213, metadata !221, metadata !236, metadata !241, metadata !247, metadata !257, metadata !268, metadata !280, metadata !290, metadata !293, metadata !296, metadata !304, metadata !313, metadata !319, metadata !326, metadata !386, metadata !391, metadata !400, metadata !408, metadata !411, metadata !414, metadata !420, metadata !428, metadata !439, metadata !449, metadata !460, metadata !486, metadata !492, metadata !500}
!62 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"nframes_read", metadata !"nframes_read", metadata !"", i32 60, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @nframes_read, null, null, metadata !60, i32 61} ; [ DW_TAG_subprogram ] [line 60] [def] [scope 61] [nframes_read]
!63 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!67 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"prec2ndec", metadata !"prec2ndec", metadata !"", i32 98, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @prec2ndec, null, null, metadata !72, i32 99} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 99] [prec2ndec]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{metadata !66, metadata !70}
!70 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!71 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786689, metadata !67, metadata !"prec", metadata !63, i32 16777314, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prec] [line 98]
!74 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"clear_trxframe", metadata !"clear_trxframe", metadata !"", i32 113, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_trxframe*, i32)* @clear_trxframe, null, null, metadata !193, i32 114} ; [ DW_TAG_subprogram ] [line 113] [def] [scope 114] [clear_trxframe]
!75 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!76 = metadata !{null, metadata !77, metadata !66}
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_trxframe]
!78 = metadata !{i32 786454, metadata !1, null, metadata !"t_trxframe", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [t_trxframe] [line 72, size 0, align 0, offset 0] [from ]
!79 = metadata !{i32 786451, metadata !80, null, metadata !"", i32 40, i64 1408, i64 64, i32 0, i32 0, null, metadata !81, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 1408, align 64, offset 0] [from ]
!80 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/trx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!81 = metadata !{metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !175, metadata !176, metadata !177, metadata !178, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189}
!82 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"flags", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_member ] [flags] [line 42, size 32, align 32, offset 0] [from int]
!83 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"not_ok", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !66} ; [ DW_TAG_member ] [not_ok] [line 43, size 32, align 32, offset 32] [from int]
!84 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"natoms", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [natoms] [line 44, size 32, align 32, offset 64] [from int]
!85 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"t0", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !70} ; [ DW_TAG_member ] [t0] [line 45, size 32, align 32, offset 96] [from real]
!86 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"tpf", i32 47, i64 32, i64 32, i64 128, i32 0, metadata !70} ; [ DW_TAG_member ] [tpf] [line 47, size 32, align 32, offset 128] [from real]
!87 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"tppf", i32 49, i64 32, i64 32, i64 160, i32 0, metadata !70} ; [ DW_TAG_member ] [tppf] [line 49, size 32, align 32, offset 160] [from real]
!88 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"bTitle", i32 52, i64 32, i64 32, i64 192, i32 0, metadata !66} ; [ DW_TAG_member ] [bTitle] [line 52, size 32, align 32, offset 192] [from int]
!89 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"title", i32 53, i64 64, i64 64, i64 256, i32 0, metadata !90} ; [ DW_TAG_member ] [title] [line 53, size 64, align 64, offset 256] [from ]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!91 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!92 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"bStep", i32 54, i64 32, i64 32, i64 320, i32 0, metadata !66} ; [ DW_TAG_member ] [bStep] [line 54, size 32, align 32, offset 320] [from int]
!93 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"step", i32 55, i64 32, i64 32, i64 352, i32 0, metadata !66} ; [ DW_TAG_member ] [step] [line 55, size 32, align 32, offset 352] [from int]
!94 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"bTime", i32 56, i64 32, i64 32, i64 384, i32 0, metadata !66} ; [ DW_TAG_member ] [bTime] [line 56, size 32, align 32, offset 384] [from int]
!95 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"time", i32 57, i64 32, i64 32, i64 416, i32 0, metadata !70} ; [ DW_TAG_member ] [time] [line 57, size 32, align 32, offset 416] [from real]
!96 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"bLambda", i32 58, i64 32, i64 32, i64 448, i32 0, metadata !66} ; [ DW_TAG_member ] [bLambda] [line 58, size 32, align 32, offset 448] [from int]
!97 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"lambda", i32 59, i64 32, i64 32, i64 480, i32 0, metadata !70} ; [ DW_TAG_member ] [lambda] [line 59, size 32, align 32, offset 480] [from real]
!98 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"bAtoms", i32 60, i64 32, i64 32, i64 512, i32 0, metadata !66} ; [ DW_TAG_member ] [bAtoms] [line 60, size 32, align 32, offset 512] [from int]
!99 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"atoms", i32 61, i64 64, i64 64, i64 576, i32 0, metadata !100} ; [ DW_TAG_member ] [atoms] [line 61, size 64, align 64, offset 576] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!101 = metadata !{i32 786454, metadata !80, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!102 = metadata !{i32 786451, metadata !103, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !104, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!103 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!104 = metadata !{metadata !105, metadata !106, metadata !126, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !150, metadata !158}
!105 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!106 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !107} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!108 = metadata !{i32 786454, metadata !103, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!109 = metadata !{i32 786451, metadata !103, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !110, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !117, metadata !118, metadata !119, metadata !120, metadata !125}
!111 = metadata !{i32 786445, metadata !103, metadata !109, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !70} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!112 = metadata !{i32 786445, metadata !103, metadata !109, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !70} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!113 = metadata !{i32 786445, metadata !103, metadata !109, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !70} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!114 = metadata !{i32 786445, metadata !103, metadata !109, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !70} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!115 = metadata !{i32 786445, metadata !103, metadata !109, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !116} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!116 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!117 = metadata !{i32 786445, metadata !103, metadata !109, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !116} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!118 = metadata !{i32 786445, metadata !103, metadata !109, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !66} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!119 = metadata !{i32 786445, metadata !103, metadata !109, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !66} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!120 = metadata !{i32 786445, metadata !103, metadata !109, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !121} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!121 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !122, metadata !123, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!122 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!123 = metadata !{metadata !124}
!124 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!125 = metadata !{i32 786445, metadata !103, metadata !109, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !122} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!126 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !127} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!129 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !127} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!130 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !127} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!131 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !66} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!132 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !127} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!133 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !66} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!134 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !127} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!135 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !136} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!136 = metadata !{i32 786454, metadata !103, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!137 = metadata !{i32 786451, metadata !138, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !139, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!138 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!139 = metadata !{metadata !140, metadata !144, metadata !145, metadata !148, metadata !149}
!140 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!141 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !66, metadata !142, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!142 = metadata !{metadata !143}
!143 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!144 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !66} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!145 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !146} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!146 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!147 = metadata !{i32 786454, metadata !138, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!148 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !66} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!149 = metadata !{i32 786445, metadata !138, metadata !137, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !146} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!150 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !151} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!151 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !152, metadata !123, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!152 = metadata !{i32 786454, metadata !103, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !153} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!153 = metadata !{i32 786451, metadata !103, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !154, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!154 = metadata !{metadata !155, metadata !156}
!155 = metadata !{i32 786445, metadata !103, metadata !153, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!156 = metadata !{i32 786445, metadata !103, metadata !153, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !157} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!157 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!158 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !159} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!159 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!160 = metadata !{i32 786454, metadata !103, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!161 = metadata !{i32 786451, metadata !103, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !162, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !166, metadata !170, metadata !171, metadata !172, metadata !173}
!163 = metadata !{i32 786445, metadata !103, metadata !161, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!164 = metadata !{i32 786445, metadata !103, metadata !161, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !66} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!165 = metadata !{i32 786445, metadata !103, metadata !161, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!166 = metadata !{i32 786445, metadata !103, metadata !161, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !167} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!167 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !91, metadata !168, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!168 = metadata !{metadata !169}
!169 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!170 = metadata !{i32 786445, metadata !103, metadata !161, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !70} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!171 = metadata !{i32 786445, metadata !103, metadata !161, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !70} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!172 = metadata !{i32 786445, metadata !103, metadata !161, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !66} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!173 = metadata !{i32 786445, metadata !103, metadata !161, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !174} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!174 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !66, metadata !168, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!175 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"bPrec", i32 62, i64 32, i64 32, i64 640, i32 0, metadata !66} ; [ DW_TAG_member ] [bPrec] [line 62, size 32, align 32, offset 640] [from int]
!176 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"prec", i32 63, i64 32, i64 32, i64 672, i32 0, metadata !70} ; [ DW_TAG_member ] [prec] [line 63, size 32, align 32, offset 672] [from real]
!177 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"bX", i32 64, i64 32, i64 32, i64 704, i32 0, metadata !66} ; [ DW_TAG_member ] [bX] [line 64, size 32, align 32, offset 704] [from int]
!178 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"x", i32 65, i64 64, i64 64, i64 768, i32 0, metadata !179} ; [ DW_TAG_member ] [x] [line 65, size 64, align 64, offset 768] [from ]
!179 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !180} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!180 = metadata !{i32 786454, metadata !80, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !181} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!181 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !70, metadata !182, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!182 = metadata !{metadata !183}
!183 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!184 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"bV", i32 66, i64 32, i64 32, i64 832, i32 0, metadata !66} ; [ DW_TAG_member ] [bV] [line 66, size 32, align 32, offset 832] [from int]
!185 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"v", i32 67, i64 64, i64 64, i64 896, i32 0, metadata !179} ; [ DW_TAG_member ] [v] [line 67, size 64, align 64, offset 896] [from ]
!186 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"bF", i32 68, i64 32, i64 32, i64 960, i32 0, metadata !66} ; [ DW_TAG_member ] [bF] [line 68, size 32, align 32, offset 960] [from int]
!187 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"f", i32 69, i64 64, i64 64, i64 1024, i32 0, metadata !179} ; [ DW_TAG_member ] [f] [line 69, size 64, align 64, offset 1024] [from ]
!188 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"bBox", i32 70, i64 32, i64 32, i64 1088, i32 0, metadata !66} ; [ DW_TAG_member ] [bBox] [line 70, size 32, align 32, offset 1088] [from int]
!189 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"box", i32 71, i64 288, i64 32, i64 1120, i32 0, metadata !190} ; [ DW_TAG_member ] [box] [line 71, size 288, align 32, offset 1120] [from matrix]
!190 = metadata !{i32 786454, metadata !80, null, metadata !"matrix", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !191} ; [ DW_TAG_typedef ] [matrix] [line 103, size 0, align 0, offset 0] [from ]
!191 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !70, metadata !192, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!192 = metadata !{metadata !183, metadata !183}
!193 = metadata !{metadata !194, metadata !195}
!194 = metadata !{i32 786689, metadata !74, metadata !"fr", metadata !63, i32 16777329, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 113]
!195 = metadata !{i32 786689, metadata !74, metadata !"bFirst", metadata !63, i32 33554545, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bFirst] [line 113]
!196 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"write_trxframe_indexed", metadata !"write_trxframe_indexed", metadata !"", i32 145, metadata !197, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.t_trxframe*, i32, i32*)* @write_trxframe_indexed, null, null, metadata !199, i32 146} ; [ DW_TAG_subprogram ] [line 145] [def] [scope 146] [write_trxframe_indexed]
!197 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!198 = metadata !{metadata !66, metadata !66, metadata !77, metadata !66, metadata !146}
!199 = metadata !{metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212}
!200 = metadata !{i32 786689, metadata !196, metadata !"fnum", metadata !63, i32 16777361, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnum] [line 145]
!201 = metadata !{i32 786689, metadata !196, metadata !"fr", metadata !63, i32 33554577, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 145]
!202 = metadata !{i32 786689, metadata !196, metadata !"nind", metadata !63, i32 50331793, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nind] [line 145]
!203 = metadata !{i32 786689, metadata !196, metadata !"ind", metadata !63, i32 67109009, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ind] [line 145]
!204 = metadata !{i32 786688, metadata !196, metadata !"title", metadata !63, i32 147, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [title] [line 147]
!205 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !91, metadata !206, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!206 = metadata !{metadata !207}
!207 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!208 = metadata !{i32 786688, metadata !196, metadata !"xout", metadata !63, i32 148, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xout] [line 148]
!209 = metadata !{i32 786688, metadata !196, metadata !"vout", metadata !63, i32 148, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vout] [line 148]
!210 = metadata !{i32 786688, metadata !196, metadata !"fout", metadata !63, i32 148, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fout] [line 148]
!211 = metadata !{i32 786688, metadata !196, metadata !"i", metadata !63, i32 149, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 149]
!212 = metadata !{i32 786688, metadata !196, metadata !"prec", metadata !63, i32 150, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prec] [line 150]
!213 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"write_trxframe", metadata !"write_trxframe", metadata !"", i32 247, metadata !214, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.t_trxframe*)* @write_trxframe, null, null, metadata !216, i32 248} ; [ DW_TAG_subprogram ] [line 247] [def] [scope 248] [write_trxframe]
!214 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!215 = metadata !{metadata !66, metadata !66, metadata !77}
!216 = metadata !{metadata !217, metadata !218, metadata !219, metadata !220}
!217 = metadata !{i32 786689, metadata !213, metadata !"fnum", metadata !63, i32 16777463, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnum] [line 247]
!218 = metadata !{i32 786689, metadata !213, metadata !"fr", metadata !63, i32 33554679, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 247]
!219 = metadata !{i32 786688, metadata !213, metadata !"title", metadata !63, i32 249, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [title] [line 249]
!220 = metadata !{i32 786688, metadata !213, metadata !"prec", metadata !63, i32 250, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prec] [line 250]
!221 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"write_trx", metadata !"write_trx", metadata !"", i32 307, metadata !222, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32*, %struct.t_atoms*, i32, float, [3 x float]*, [3 x float]*, [3 x float]*)* @write_trx, null, null, metadata !225, i32 309} ; [ DW_TAG_subprogram ] [line 307] [def] [scope 309] [write_trx]
!222 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!223 = metadata !{metadata !66, metadata !66, metadata !66, metadata !146, metadata !100, metadata !66, metadata !70, metadata !224, metadata !179, metadata !179}
!224 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!225 = metadata !{metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235}
!226 = metadata !{i32 786689, metadata !221, metadata !"fnum", metadata !63, i32 16777523, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnum] [line 307]
!227 = metadata !{i32 786689, metadata !221, metadata !"nind", metadata !63, i32 33554739, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nind] [line 307]
!228 = metadata !{i32 786689, metadata !221, metadata !"ind", metadata !63, i32 50331955, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ind] [line 307]
!229 = metadata !{i32 786689, metadata !221, metadata !"atoms", metadata !63, i32 67109171, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 307]
!230 = metadata !{i32 786689, metadata !221, metadata !"step", metadata !63, i32 83886388, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 308]
!231 = metadata !{i32 786689, metadata !221, metadata !"time", metadata !63, i32 100663604, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [time] [line 308]
!232 = metadata !{i32 786689, metadata !221, metadata !"box", metadata !63, i32 117440820, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 308]
!233 = metadata !{i32 786689, metadata !221, metadata !"x", metadata !63, i32 134218036, metadata !179, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 308]
!234 = metadata !{i32 786689, metadata !221, metadata !"v", metadata !63, i32 150995252, metadata !179, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 308]
!235 = metadata !{i32 786688, metadata !221, metadata !"fr", metadata !63, i32 310, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fr] [line 310]
!236 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"close_trx", metadata !"close_trx", metadata !"", i32 329, metadata !237, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @close_trx, null, null, metadata !239, i32 330} ; [ DW_TAG_subprogram ] [line 329] [def] [scope 330] [close_trx]
!237 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!238 = metadata !{null, metadata !66}
!239 = metadata !{metadata !240}
!240 = metadata !{i32 786689, metadata !236, metadata !"status", metadata !63, i32 16777545, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 329]
!241 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"open_trx", metadata !"open_trx", metadata !"", i32 334, metadata !242, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @open_trx, null, null, metadata !244, i32 335} ; [ DW_TAG_subprogram ] [line 334] [def] [scope 335] [open_trx]
!242 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!243 = metadata !{metadata !66, metadata !90, metadata !90}
!244 = metadata !{metadata !245, metadata !246}
!245 = metadata !{i32 786689, metadata !241, metadata !"outfile", metadata !63, i32 16777550, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outfile] [line 334]
!246 = metadata !{i32 786689, metadata !241, metadata !"filemode", metadata !63, i32 33554766, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filemode] [line 334]
!247 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"read_next_frame", metadata !"read_next_frame", metadata !"", i32 589, metadata !214, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.t_trxframe*)* @read_next_frame, null, null, metadata !248, i32 590} ; [ DW_TAG_subprogram ] [line 589] [def] [scope 590] [read_next_frame]
!248 = metadata !{metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256}
!249 = metadata !{i32 786689, metadata !247, metadata !"status", metadata !63, i32 16777805, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 589]
!250 = metadata !{i32 786689, metadata !247, metadata !"fr", metadata !63, i32 33555021, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 589]
!251 = metadata !{i32 786688, metadata !247, metadata !"pt", metadata !63, i32 591, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pt] [line 591]
!252 = metadata !{i32 786688, metadata !247, metadata !"ct", metadata !63, i32 592, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ct] [line 592]
!253 = metadata !{i32 786688, metadata !247, metadata !"bOK", metadata !63, i32 593, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOK] [line 593]
!254 = metadata !{i32 786688, metadata !247, metadata !"bRet", metadata !63, i32 593, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bRet] [line 593]
!255 = metadata !{i32 786688, metadata !247, metadata !"bMissingData", metadata !63, i32 593, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bMissingData] [line 593]
!256 = metadata !{i32 786688, metadata !247, metadata !"bSkip", metadata !63, i32 593, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bSkip] [line 593]
!257 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"read_first_frame", metadata !"read_first_frame", metadata !"", i32 669, metadata !258, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i8*, %struct.t_trxframe*, i32)* @read_first_frame, null, null, metadata !260, i32 670} ; [ DW_TAG_subprogram ] [line 669] [def] [scope 670] [read_first_frame]
!258 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!259 = metadata !{metadata !66, metadata !157, metadata !90, metadata !77, metadata !66}
!260 = metadata !{metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267}
!261 = metadata !{i32 786689, metadata !257, metadata !"status", metadata !63, i32 16777885, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 669]
!262 = metadata !{i32 786689, metadata !257, metadata !"fn", metadata !63, i32 33555101, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 669]
!263 = metadata !{i32 786689, metadata !257, metadata !"fr", metadata !63, i32 50332317, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 669]
!264 = metadata !{i32 786689, metadata !257, metadata !"flags", metadata !63, i32 67109533, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 669]
!265 = metadata !{i32 786688, metadata !257, metadata !"fp", metadata !63, i32 671, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 671]
!266 = metadata !{i32 786688, metadata !257, metadata !"bFirst", metadata !63, i32 672, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bFirst] [line 672]
!267 = metadata !{i32 786688, metadata !257, metadata !"bOK", metadata !63, i32 672, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOK] [line 672]
!268 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"read_first_x", metadata !"read_first_x", metadata !"", i32 747, metadata !269, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i8*, float*, [3 x float]**, [3 x float]*)* @read_first_x, null, null, metadata !273, i32 749} ; [ DW_TAG_subprogram ] [line 747] [def] [scope 749] [read_first_x]
!269 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!270 = metadata !{metadata !66, metadata !157, metadata !90, metadata !271, metadata !272, metadata !224}
!271 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!272 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !179} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!273 = metadata !{metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279}
!274 = metadata !{i32 786689, metadata !268, metadata !"status", metadata !63, i32 16777963, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 747]
!275 = metadata !{i32 786689, metadata !268, metadata !"fn", metadata !63, i32 33555179, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 747]
!276 = metadata !{i32 786689, metadata !268, metadata !"t", metadata !63, i32 50332396, metadata !271, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 748]
!277 = metadata !{i32 786689, metadata !268, metadata !"x", metadata !63, i32 67109612, metadata !272, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 748]
!278 = metadata !{i32 786689, metadata !268, metadata !"box", metadata !63, i32 83886828, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 748]
!279 = metadata !{i32 786688, metadata !268, metadata !"fr", metadata !63, i32 750, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fr] [line 750]
!280 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"read_next_x", metadata !"read_next_x", metadata !"", i32 765, metadata !281, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, float*, i32, [3 x float]*, [3 x float]*)* @read_next_x, null, null, metadata !283, i32 766} ; [ DW_TAG_subprogram ] [line 765] [def] [scope 766] [read_next_x]
!281 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!282 = metadata !{metadata !66, metadata !66, metadata !271, metadata !66, metadata !179, metadata !224}
!283 = metadata !{metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289}
!284 = metadata !{i32 786689, metadata !280, metadata !"status", metadata !63, i32 16777981, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 765]
!285 = metadata !{i32 786689, metadata !280, metadata !"t", metadata !63, i32 33555197, metadata !271, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 765]
!286 = metadata !{i32 786689, metadata !280, metadata !"natoms", metadata !63, i32 50332413, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 765]
!287 = metadata !{i32 786689, metadata !280, metadata !"x", metadata !63, i32 67109629, metadata !179, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 765]
!288 = metadata !{i32 786689, metadata !280, metadata !"box", metadata !63, i32 83886845, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 765]
!289 = metadata !{i32 786688, metadata !280, metadata !"bRet", metadata !63, i32 767, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bRet] [line 767]
!290 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"close_trj", metadata !"close_trj", metadata !"", i32 777, metadata !237, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @close_trj, null, null, metadata !291, i32 778} ; [ DW_TAG_subprogram ] [line 777] [def] [scope 778] [close_trj]
!291 = metadata !{metadata !292}
!292 = metadata !{i32 786689, metadata !290, metadata !"status", metadata !63, i32 16777993, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 777]
!293 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"rewind_trj", metadata !"rewind_trj", metadata !"", i32 782, metadata !237, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @rewind_trj, null, null, metadata !294, i32 783} ; [ DW_TAG_subprogram ] [line 782] [def] [scope 783] [rewind_trj]
!294 = metadata !{metadata !295}
!295 = metadata !{i32 786689, metadata !293, metadata !"status", metadata !63, i32 16777998, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 782]
!296 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"read_first_v", metadata !"read_first_v", metadata !"", i32 800, metadata !269, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i8*, float*, [3 x float]**, [3 x float]*)* @read_first_v, null, null, metadata !297, i32 801} ; [ DW_TAG_subprogram ] [line 800] [def] [scope 801] [read_first_v]
!297 = metadata !{metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303}
!298 = metadata !{i32 786689, metadata !296, metadata !"status", metadata !63, i32 16778016, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 800]
!299 = metadata !{i32 786689, metadata !296, metadata !"fn", metadata !63, i32 33555232, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 800]
!300 = metadata !{i32 786689, metadata !296, metadata !"t", metadata !63, i32 50332448, metadata !271, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 800]
!301 = metadata !{i32 786689, metadata !296, metadata !"v", metadata !63, i32 67109664, metadata !272, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 800]
!302 = metadata !{i32 786689, metadata !296, metadata !"box", metadata !63, i32 83886880, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 800]
!303 = metadata !{i32 786688, metadata !296, metadata !"fr", metadata !63, i32 802, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fr] [line 802]
!304 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"read_next_v", metadata !"read_next_v", metadata !"", i32 813, metadata !281, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, float*, i32, [3 x float]*, [3 x float]*)* @read_next_v, null, null, metadata !305, i32 814} ; [ DW_TAG_subprogram ] [line 813] [def] [scope 814] [read_next_v]
!305 = metadata !{metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312}
!306 = metadata !{i32 786689, metadata !304, metadata !"status", metadata !63, i32 16778029, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 813]
!307 = metadata !{i32 786689, metadata !304, metadata !"t", metadata !63, i32 33555245, metadata !271, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 813]
!308 = metadata !{i32 786689, metadata !304, metadata !"natoms", metadata !63, i32 50332461, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 813]
!309 = metadata !{i32 786689, metadata !304, metadata !"v", metadata !63, i32 67109677, metadata !179, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 813]
!310 = metadata !{i32 786689, metadata !304, metadata !"box", metadata !63, i32 83886893, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 813]
!311 = metadata !{i32 786688, metadata !304, metadata !"fr", metadata !63, i32 815, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fr] [line 815]
!312 = metadata !{i32 786688, metadata !304, metadata !"bRet", metadata !63, i32 816, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bRet] [line 816]
!313 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"clear_v", metadata !"clear_v", metadata !"", i32 791, metadata !314, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !316, i32 792} ; [ DW_TAG_subprogram ] [line 791] [local] [def] [scope 792] [clear_v]
!314 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !315, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!315 = metadata !{null, metadata !77}
!316 = metadata !{metadata !317, metadata !318}
!317 = metadata !{i32 786689, metadata !313, metadata !"fr", metadata !63, i32 16778007, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 791]
!318 = metadata !{i32 786688, metadata !313, metadata !"i", metadata !63, i32 793, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 793]
!319 = metadata !{i32 786478, metadata !320, metadata !321, metadata !"clear_rvec", metadata !"clear_rvec", metadata !"", i32 316, metadata !322, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !324, i32 317} ; [ DW_TAG_subprogram ] [line 316] [local] [def] [scope 317] [clear_rvec]
!320 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!321 = metadata !{i32 786473, metadata !320}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!322 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !323, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!323 = metadata !{null, metadata !271}
!324 = metadata !{metadata !325}
!325 = metadata !{i32 786689, metadata !319, metadata !"a", metadata !321, i32 16777532, metadata !271, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 316]
!326 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"pdb_first_x", metadata !"pdb_first_x", metadata !"", i32 573, metadata !327, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !383, i32 574} ; [ DW_TAG_subprogram ] [line 573] [local] [def] [scope 574] [pdb_first_x]
!327 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !328, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!328 = metadata !{metadata !66, metadata !329, metadata !77}
!329 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !330} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!330 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !331} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!331 = metadata !{i32 786451, metadata !332, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !333, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!332 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!333 = metadata !{metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !354, metadata !355, metadata !356, metadata !357, metadata !360, metadata !361, metadata !363, metadata !367, metadata !369, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !378, metadata !379}
!334 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!335 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!336 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!337 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!338 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!339 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!340 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!341 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!342 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!343 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!344 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!345 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !90} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!346 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !347} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!347 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !348} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!348 = metadata !{i32 786451, metadata !332, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !349, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!349 = metadata !{metadata !350, metadata !351, metadata !353}
!350 = metadata !{i32 786445, metadata !332, metadata !348, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !347} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!351 = metadata !{i32 786445, metadata !332, metadata !348, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !352} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!352 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !331} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!353 = metadata !{i32 786445, metadata !332, metadata !348, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!354 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !352} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!355 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !66} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!356 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !66} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!357 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !358} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!358 = metadata !{i32 786454, metadata !332, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !359} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!359 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!360 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !116} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!361 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !362} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!362 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!363 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !364} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!364 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !91, metadata !365, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!365 = metadata !{metadata !366}
!366 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!367 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !368} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!368 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!369 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !370} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!370 = metadata !{i32 786454, metadata !332, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !359} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!371 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !368} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!372 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !368} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!373 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !368} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!374 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !368} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!375 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !376} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!376 = metadata !{i32 786454, metadata !332, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !377} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!377 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!378 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !66} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!379 = metadata !{i32 786445, metadata !332, metadata !331, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !380} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!380 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !91, metadata !381, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!381 = metadata !{metadata !382}
!382 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!383 = metadata !{metadata !384, metadata !385}
!384 = metadata !{i32 786689, metadata !326, metadata !"status", metadata !63, i32 16777789, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 573]
!385 = metadata !{i32 786689, metadata !326, metadata !"fr", metadata !63, i32 33555005, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 573]
!386 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"printcount", metadata !"printcount", metadata !"", i32 77, metadata !387, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !389, i32 78} ; [ DW_TAG_subprogram ] [line 77] [local] [def] [scope 78] [printcount]
!387 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !388, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!388 = metadata !{null, metadata !70}
!389 = metadata !{metadata !390}
!390 = metadata !{i32 786689, metadata !386, metadata !"t", metadata !63, i32 16777293, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 77]
!391 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"xyz_first_x", metadata !"xyz_first_x", metadata !"", i32 499, metadata !392, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !394, i32 503} ; [ DW_TAG_subprogram ] [line 499] [local] [def] [scope 503] [xyz_first_x]
!392 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !393, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!393 = metadata !{metadata !66, metadata !329, metadata !271, metadata !272, metadata !224}
!394 = metadata !{metadata !395, metadata !396, metadata !397, metadata !398, metadata !399}
!395 = metadata !{i32 786689, metadata !391, metadata !"status", metadata !63, i32 16777715, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 499]
!396 = metadata !{i32 786689, metadata !391, metadata !"t", metadata !63, i32 33554931, metadata !271, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 499]
!397 = metadata !{i32 786689, metadata !391, metadata !"x", metadata !63, i32 50332147, metadata !272, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 499]
!398 = metadata !{i32 786689, metadata !391, metadata !"box", metadata !63, i32 67109363, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 499]
!399 = metadata !{i32 786688, metadata !391, metadata !"m", metadata !63, i32 504, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 504]
!400 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"choose_ff", metadata !"choose_ff", metadata !"", i32 384, metadata !401, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !403, i32 385} ; [ DW_TAG_subprogram ] [line 384] [local] [def] [scope 385] [choose_ff]
!401 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !402, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!402 = metadata !{null, metadata !329}
!403 = metadata !{metadata !404, metadata !405, metadata !406, metadata !407}
!404 = metadata !{i32 786689, metadata !400, metadata !"status", metadata !63, i32 16777600, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 384]
!405 = metadata !{i32 786688, metadata !400, metadata !"i", metadata !63, i32 386, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 386]
!406 = metadata !{i32 786688, metadata !400, metadata !"m", metadata !63, i32 386, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 386]
!407 = metadata !{i32 786688, metadata !400, metadata !"c", metadata !63, i32 386, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 386]
!408 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"printincomp", metadata !"printincomp", metadata !"", i32 88, metadata !314, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !409, i32 89} ; [ DW_TAG_subprogram ] [line 88] [local] [def] [scope 89] [printincomp]
!409 = metadata !{metadata !410}
!410 = metadata !{i32 786689, metadata !408, metadata !"fr", metadata !63, i32 16777304, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 88]
!411 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"printlast", metadata !"printlast", metadata !"", i32 82, metadata !387, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float)* @printlast, null, null, metadata !412, i32 83} ; [ DW_TAG_subprogram ] [line 82] [local] [def] [scope 83] [printlast]
!412 = metadata !{metadata !413}
!413 = metadata !{i32 786689, metadata !411, metadata !"t", metadata !63, i32 16777298, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 82]
!414 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"printcount_", metadata !"printcount_", metadata !"", i32 65, metadata !415, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !417, i32 66} ; [ DW_TAG_subprogram ] [line 65] [local] [def] [scope 66] [printcount_]
!415 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!416 = metadata !{null, metadata !90, metadata !70}
!417 = metadata !{metadata !418, metadata !419}
!418 = metadata !{i32 786689, metadata !414, metadata !"l", metadata !63, i32 16777281, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 65]
!419 = metadata !{i32 786689, metadata !414, metadata !"t", metadata !63, i32 33554497, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 65]
!420 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"printcount2", metadata !"printcount2", metadata !"", i32 70, metadata !421, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float, float, float, float)* @printcount2, null, null, metadata !423, i32 71} ; [ DW_TAG_subprogram ] [line 70] [local] [def] [scope 71] [printcount2]
!421 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !422, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!422 = metadata !{null, metadata !70, metadata !70, metadata !70, metadata !70}
!423 = metadata !{metadata !424, metadata !425, metadata !426, metadata !427}
!424 = metadata !{i32 786689, metadata !420, metadata !"t", metadata !63, i32 16777286, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 70]
!425 = metadata !{i32 786689, metadata !420, metadata !"t0", metadata !63, i32 33554502, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t0] [line 70]
!426 = metadata !{i32 786689, metadata !420, metadata !"tpf", metadata !63, i32 50331718, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tpf] [line 70]
!427 = metadata !{i32 786689, metadata !420, metadata !"tppf", metadata !63, i32 67108934, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tppf] [line 70]
!428 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"pdb_next_x", metadata !"pdb_next_x", metadata !"", i32 525, metadata !327, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, %struct.t_trxframe*)* @pdb_next_x, null, null, metadata !429, i32 526} ; [ DW_TAG_subprogram ] [line 525] [local] [def] [scope 526] [pdb_next_x]
!429 = metadata !{metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437}
!430 = metadata !{i32 786689, metadata !428, metadata !"status", metadata !63, i32 16777741, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 525]
!431 = metadata !{i32 786689, metadata !428, metadata !"fr", metadata !63, i32 33554957, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 525]
!432 = metadata !{i32 786688, metadata !428, metadata !"atoms", metadata !63, i32 527, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atoms] [line 527]
!433 = metadata !{i32 786688, metadata !428, metadata !"model_nr", metadata !63, i32 528, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [model_nr] [line 528]
!434 = metadata !{i32 786688, metadata !428, metadata !"na", metadata !63, i32 528, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [na] [line 528]
!435 = metadata !{i32 786688, metadata !428, metadata !"title", metadata !63, i32 529, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [title] [line 529]
!436 = metadata !{i32 786688, metadata !428, metadata !"time", metadata !63, i32 529, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time] [line 529]
!437 = metadata !{i32 786688, metadata !428, metadata !"dbl", metadata !63, i32 530, metadata !438, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbl] [line 530]
!438 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!439 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"xyz_next_x", metadata !"xyz_next_x", metadata !"", i32 469, metadata !440, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, float*, i32, [3 x float]*, [3 x float]*)* @xyz_next_x, null, null, metadata !442, i32 473} ; [ DW_TAG_subprogram ] [line 469] [local] [def] [scope 473] [xyz_next_x]
!440 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !441, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!441 = metadata !{metadata !66, metadata !329, metadata !271, metadata !66, metadata !179, metadata !224}
!442 = metadata !{metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448}
!443 = metadata !{i32 786689, metadata !439, metadata !"status", metadata !63, i32 16777685, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 469]
!444 = metadata !{i32 786689, metadata !439, metadata !"t", metadata !63, i32 33554901, metadata !271, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 469]
!445 = metadata !{i32 786689, metadata !439, metadata !"natoms", metadata !63, i32 50332117, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 469]
!446 = metadata !{i32 786689, metadata !439, metadata !"x", metadata !63, i32 67109333, metadata !179, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 469]
!447 = metadata !{i32 786689, metadata !439, metadata !"box", metadata !63, i32 83886549, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 469]
!448 = metadata !{i32 786688, metadata !439, metadata !"pt", metadata !63, i32 475, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pt] [line 475]
!449 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"do_read_xyz", metadata !"do_read_xyz", metadata !"", i32 443, metadata !450, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i32, [3 x float]*, [3 x float]*)* @do_read_xyz, null, null, metadata !452, i32 444} ; [ DW_TAG_subprogram ] [line 443] [local] [def] [scope 444] [do_read_xyz]
!450 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !451, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!451 = metadata !{metadata !66, metadata !329, metadata !66, metadata !179, metadata !224}
!452 = metadata !{metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459}
!453 = metadata !{i32 786689, metadata !449, metadata !"status", metadata !63, i32 16777659, metadata !329, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 443]
!454 = metadata !{i32 786689, metadata !449, metadata !"natoms", metadata !63, i32 33554875, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 443]
!455 = metadata !{i32 786689, metadata !449, metadata !"x", metadata !63, i32 50332091, metadata !179, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 443]
!456 = metadata !{i32 786689, metadata !449, metadata !"box", metadata !63, i32 67109307, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 443]
!457 = metadata !{i32 786688, metadata !449, metadata !"i", metadata !63, i32 445, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 445]
!458 = metadata !{i32 786688, metadata !449, metadata !"m", metadata !63, i32 445, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 445]
!459 = metadata !{i32 786688, metadata !449, metadata !"x0", metadata !63, i32 446, metadata !438, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x0] [line 446]
!460 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"gmx_next_frame", metadata !"gmx_next_frame", metadata !"", i32 342, metadata !214, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !461, i32 343} ; [ DW_TAG_subprogram ] [line 342] [local] [def] [scope 343] [gmx_next_frame]
!461 = metadata !{metadata !462, metadata !463, metadata !464, metadata !484, metadata !485}
!462 = metadata !{i32 786689, metadata !460, metadata !"status", metadata !63, i32 16777558, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 342]
!463 = metadata !{i32 786689, metadata !460, metadata !"fr", metadata !63, i32 33554774, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 342]
!464 = metadata !{i32 786688, metadata !460, metadata !"sh", metadata !63, i32 344, metadata !465, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sh] [line 344]
!465 = metadata !{i32 786454, metadata !1, null, metadata !"t_trnheader", i32 77, i64 0, i64 0, i64 0, i32 0, metadata !466} ; [ DW_TAG_typedef ] [t_trnheader] [line 77, size 0, align 0, offset 0] [from ]
!466 = metadata !{i32 786451, metadata !467, null, metadata !"", i32 58, i64 480, i64 32, i32 0, i32 0, null, metadata !468, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 58, size 480, align 32, offset 0] [from ]
!467 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/trnio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!468 = metadata !{metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483}
!469 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"ir_size", i32 61, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_member ] [ir_size] [line 61, size 32, align 32, offset 0] [from int]
!470 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"e_size", i32 62, i64 32, i64 32, i64 32, i32 0, metadata !66} ; [ DW_TAG_member ] [e_size] [line 62, size 32, align 32, offset 32] [from int]
!471 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"box_size", i32 63, i64 32, i64 32, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [box_size] [line 63, size 32, align 32, offset 64] [from int]
!472 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"vir_size", i32 64, i64 32, i64 32, i64 96, i32 0, metadata !66} ; [ DW_TAG_member ] [vir_size] [line 64, size 32, align 32, offset 96] [from int]
!473 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"pres_size", i32 65, i64 32, i64 32, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [pres_size] [line 65, size 32, align 32, offset 128] [from int]
!474 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"top_size", i32 66, i64 32, i64 32, i64 160, i32 0, metadata !66} ; [ DW_TAG_member ] [top_size] [line 66, size 32, align 32, offset 160] [from int]
!475 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"sym_size", i32 67, i64 32, i64 32, i64 192, i32 0, metadata !66} ; [ DW_TAG_member ] [sym_size] [line 67, size 32, align 32, offset 192] [from int]
!476 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"x_size", i32 68, i64 32, i64 32, i64 224, i32 0, metadata !66} ; [ DW_TAG_member ] [x_size] [line 68, size 32, align 32, offset 224] [from int]
!477 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"v_size", i32 69, i64 32, i64 32, i64 256, i32 0, metadata !66} ; [ DW_TAG_member ] [v_size] [line 69, size 32, align 32, offset 256] [from int]
!478 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"f_size", i32 70, i64 32, i64 32, i64 288, i32 0, metadata !66} ; [ DW_TAG_member ] [f_size] [line 70, size 32, align 32, offset 288] [from int]
!479 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"natoms", i32 72, i64 32, i64 32, i64 320, i32 0, metadata !66} ; [ DW_TAG_member ] [natoms] [line 72, size 32, align 32, offset 320] [from int]
!480 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"step", i32 73, i64 32, i64 32, i64 352, i32 0, metadata !66} ; [ DW_TAG_member ] [step] [line 73, size 32, align 32, offset 352] [from int]
!481 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"nre", i32 74, i64 32, i64 32, i64 384, i32 0, metadata !66} ; [ DW_TAG_member ] [nre] [line 74, size 32, align 32, offset 384] [from int]
!482 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"t", i32 75, i64 32, i64 32, i64 416, i32 0, metadata !70} ; [ DW_TAG_member ] [t] [line 75, size 32, align 32, offset 416] [from real]
!483 = metadata !{i32 786445, metadata !467, metadata !466, metadata !"lambda", i32 76, i64 32, i64 32, i64 448, i32 0, metadata !70} ; [ DW_TAG_member ] [lambda] [line 76, size 32, align 32, offset 448] [from real]
!484 = metadata !{i32 786688, metadata !460, metadata !"bOK", metadata !63, i32 345, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOK] [line 345]
!485 = metadata !{i32 786688, metadata !460, metadata !"bRet", metadata !63, i32 345, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bRet] [line 345]
!486 = metadata !{i32 786478, metadata !320, metadata !321, metadata !"copy_mat", metadata !"copy_mat", metadata !"", i32 297, metadata !487, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !489, i32 298} ; [ DW_TAG_subprogram ] [line 297] [local] [def] [scope 298] [copy_mat]
!487 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !488, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!488 = metadata !{null, metadata !224, metadata !224}
!489 = metadata !{metadata !490, metadata !491}
!490 = metadata !{i32 786689, metadata !486, metadata !"a", metadata !321, i32 16777513, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 297]
!491 = metadata !{i32 786689, metadata !486, metadata !"b", metadata !321, i32 33554729, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 297]
!492 = metadata !{i32 786478, metadata !320, metadata !321, metadata !"copy_rvec", metadata !"copy_rvec", metadata !"", i32 270, metadata !493, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !497, i32 271} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [scope 271] [copy_rvec]
!493 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !494, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!494 = metadata !{null, metadata !495, metadata !271}
!495 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !496} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!496 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!497 = metadata !{metadata !498, metadata !499}
!498 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 270]
!499 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 270]
!500 = metadata !{i32 786478, metadata !320, metadata !321, metadata !"clear_mat", metadata !"clear_mat", metadata !"", i32 334, metadata !501, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !503, i32 335} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [scope 335] [clear_mat]
!501 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !502, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!502 = metadata !{null, metadata !224}
!503 = metadata !{metadata !504, metadata !505}
!504 = metadata !{i32 786689, metadata !500, metadata !"a", metadata !321, i32 16777550, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 334]
!505 = metadata !{i32 786688, metadata !500, metadata !"nul", metadata !321, i32 336, metadata !496, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!506 = metadata !{metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !513, metadata !514, metadata !516, metadata !516, metadata !516, metadata !517}
!507 = metadata !{i32 786484, i32 0, null, metadata !"xframe", metadata !"xframe", metadata !"", metadata !63, i32 57, metadata !77, i32 1, i32 1, %struct.t_trxframe** @xframe, null} ; [ DW_TAG_variable ] [xframe] [line 57] [local] [def]
!508 = metadata !{i32 786484, i32 0, null, metadata !"nxframe", metadata !"nxframe", metadata !"", metadata !63, i32 58, metadata !66, i32 1, i32 1, i32* @nxframe, null} ; [ DW_TAG_variable ] [nxframe] [line 58] [local] [def]
!509 = metadata !{i32 786484, i32 0, null, metadata !"DT", metadata !"DT", metadata !"", metadata !63, i32 110, metadata !438, i32 1, i32 1, double* @DT, null} ; [ DW_TAG_variable ] [DT] [line 110] [local] [def]
!510 = metadata !{i32 786484, i32 0, null, metadata !"NATOMS", metadata !"NATOMS", metadata !"", metadata !63, i32 109, metadata !66, i32 1, i32 1, i32* @NATOMS, null} ; [ DW_TAG_variable ] [NATOMS] [line 109] [local] [def]
!511 = metadata !{i32 786484, i32 0, null, metadata !"BOX", metadata !"BOX", metadata !"", metadata !63, i32 110, metadata !512, i32 1, i32 1, [3 x double]* @BOX, null} ; [ DW_TAG_variable ] [BOX] [line 110] [local] [def]
!512 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !438, metadata !182, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from double]
!513 = metadata !{i32 786484, i32 0, null, metadata !"bReadBox", metadata !"bReadBox", metadata !"", metadata !63, i32 111, metadata !66, i32 1, i32 1, i32* @bReadBox, null} ; [ DW_TAG_variable ] [bReadBox] [line 111] [local] [def]
!514 = metadata !{i32 786484, i32 0, null, metadata !"eFF", metadata !"eFF", metadata !"", metadata !63, i32 108, metadata !515, i32 1, i32 1, i32* @eFF, null} ; [ DW_TAG_variable ] [eFF] [line 108] [local] [def]
!515 = metadata !{i32 786454, metadata !1, null, metadata !"eFileFormat", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [eFileFormat] [line 107, size 0, align 0, offset 0] [from ]
!516 = metadata !{i32 786484, i32 0, metadata !321, metadata !"nul", metadata !"nul", metadata !"nul", metadata !321, i32 336, metadata !496, i32 1, i32 1, float 0.000000e+00, null} ; [ DW_TAG_variable ] [nul] [line 336] [local] [def]
!517 = metadata !{i32 786484, i32 0, null, metadata !"__frame", metadata !"__frame", metadata !"", metadata !63, i32 52, metadata !66, i32 1, i32 1, i32* @__frame, null} ; [ DW_TAG_variable ] [__frame] [line 52] [local] [def]
!518 = metadata !{i32 62, i32 0, metadata !62, null}
!519 = metadata !{metadata !"int", metadata !520}
!520 = metadata !{metadata !"omnipotent char", metadata !521}
!521 = metadata !{metadata !"Simple C/C++ TBAA"}
!522 = metadata !{i32 98, i32 0, metadata !67, null}
!523 = metadata !{i32 100, i32 0, metadata !67, null}
!524 = metadata !{i32 103, i32 0, metadata !67, null}
!525 = metadata !{i32 101, i32 0, metadata !67, null}
!526 = metadata !{i32 113, i32 0, metadata !74, null}
!527 = metadata !{i32 115, i32 0, metadata !74, null}
!528 = metadata !{i32 116, i32 0, metadata !74, null}
!529 = metadata !{i32 117, i32 0, metadata !74, null}
!530 = metadata !{i32 118, i32 0, metadata !74, null}
!531 = metadata !{i32 119, i32 0, metadata !74, null}
!532 = metadata !{i32 120, i32 0, metadata !74, null}
!533 = metadata !{i32 121, i32 0, metadata !74, null}
!534 = metadata !{i32 122, i32 0, metadata !74, null}
!535 = metadata !{i32 123, i32 0, metadata !74, null}
!536 = metadata !{i32 124, i32 0, metadata !74, null}
!537 = metadata !{i32 125, i32 0, metadata !74, null}
!538 = metadata !{i32 126, i32 0, metadata !74, null}
!539 = metadata !{i32 127, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !74, i32 126, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!541 = metadata !{i32 128, i32 0, metadata !540, null}
!542 = metadata !{i32 129, i32 0, metadata !540, null}
!543 = metadata !{metadata !"float", metadata !520}
!544 = metadata !{i32 130, i32 0, metadata !540, null}
!545 = metadata !{i32 131, i32 0, metadata !540, null}
!546 = metadata !{i32 132, i32 0, metadata !540, null}
!547 = metadata !{metadata !"any pointer", metadata !520}
!548 = metadata !{i32 133, i32 0, metadata !540, null}
!549 = metadata !{i32 134, i32 0, metadata !540, null}
!550 = metadata !{i32 135, i32 0, metadata !540, null}
!551 = metadata !{i32 136, i32 0, metadata !540, null}
!552 = metadata !{i32 137, i32 0, metadata !540, null}
!553 = metadata !{i32 138, i32 0, metadata !540, null}
!554 = metadata !{i32 139, i32 0, metadata !540, null}
!555 = metadata !{i32 140, i32 0, metadata !540, null}
!556 = metadata !{i32 141, i32 0, metadata !540, null}
!557 = metadata !{i32 786689, metadata !500, metadata !"a", metadata !321, i32 16777550, metadata !224, i32 0, metadata !556} ; [ DW_TAG_arg_variable ] [a] [line 334]
!558 = metadata !{i32 334, i32 0, metadata !500, metadata !556}
!559 = metadata !{float 0.000000e+00}
!560 = metadata !{i32 786688, metadata !500, metadata !"nul", metadata !321, i32 336, metadata !496, i32 0, metadata !556} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!561 = metadata !{i32 336, i32 0, metadata !500, metadata !556}
!562 = metadata !{i32 341, i32 0, metadata !500, metadata !556}
!563 = metadata !{i32 338, i32 0, metadata !500, metadata !556}
!564 = metadata !{i32 142, i32 0, metadata !540, null}
!565 = metadata !{i32 143, i32 0, metadata !74, null}
!566 = metadata !{i32 145, i32 0, metadata !196, null}
!567 = metadata !{i32 147, i32 0, metadata !196, null}
!568 = metadata !{[3 x float]* null}
!569 = metadata !{i32 148, i32 0, metadata !196, null}
!570 = metadata !{i32 152, i32 0, metadata !196, null}
!571 = metadata !{i32 153, i32 0, metadata !196, null}
!572 = metadata !{i32 157, i32 0, metadata !196, null}
!573 = metadata !{i32 162, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !196, i32 157, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!575 = metadata !{i32 164, i32 0, metadata !574, null}
!576 = metadata !{i32 168, i32 0, metadata !196, null}
!577 = metadata !{i32 171, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !1, metadata !196, i32 168, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!579 = metadata !{i32 172, i32 0, metadata !580, null}
!580 = metadata !{i32 786443, metadata !1, metadata !578, i32 171, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!581 = metadata !{i32 173, i32 0, metadata !582, null}
!582 = metadata !{i32 786443, metadata !1, metadata !580, i32 173, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!583 = metadata !{i32 174, i32 0, metadata !582, null}
!584 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !583} ; [ DW_TAG_arg_variable ] [a] [line 270]
!585 = metadata !{i32 270, i32 0, metadata !492, metadata !583}
!586 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !583} ; [ DW_TAG_arg_variable ] [b] [line 270]
!587 = metadata !{i32 272, i32 0, metadata !492, metadata !583}
!588 = metadata !{i32 273, i32 0, metadata !492, metadata !583}
!589 = metadata !{i32 274, i32 0, metadata !492, metadata !583}
!590 = metadata !{i32 176, i32 0, metadata !578, null}
!591 = metadata !{i32 177, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !1, metadata !578, i32 176, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!593 = metadata !{i32 178, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !1, metadata !592, i32 178, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!595 = metadata !{i32 179, i32 0, metadata !594, null}
!596 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !595} ; [ DW_TAG_arg_variable ] [a] [line 270]
!597 = metadata !{i32 270, i32 0, metadata !492, metadata !595}
!598 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !595} ; [ DW_TAG_arg_variable ] [b] [line 270]
!599 = metadata !{i32 272, i32 0, metadata !492, metadata !595}
!600 = metadata !{i32 273, i32 0, metadata !492, metadata !595}
!601 = metadata !{i32 274, i32 0, metadata !492, metadata !595}
!602 = metadata !{i32 183, i32 0, metadata !578, null}
!603 = metadata !{i32 184, i32 0, metadata !604, null}
!604 = metadata !{i32 786443, metadata !1, metadata !578, i32 183, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!605 = metadata !{i32 185, i32 0, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !604, i32 185, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!607 = metadata !{i32 186, i32 0, metadata !606, null}
!608 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !607} ; [ DW_TAG_arg_variable ] [a] [line 270]
!609 = metadata !{i32 270, i32 0, metadata !492, metadata !607}
!610 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !607} ; [ DW_TAG_arg_variable ] [b] [line 270]
!611 = metadata !{i32 272, i32 0, metadata !492, metadata !607}
!612 = metadata !{i32 273, i32 0, metadata !492, metadata !607}
!613 = metadata !{i32 274, i32 0, metadata !492, metadata !607}
!614 = metadata !{i32 193, i32 0, metadata !196, null}
!615 = metadata !{i32 195, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !196, i32 193, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!617 = metadata !{i32 196, i32 0, metadata !616, null}
!618 = metadata !{i32 62, i32 0, metadata !62, metadata !619}
!619 = metadata !{i32 199, i32 0, metadata !616, null}
!620 = metadata !{i32 201, i32 0, metadata !616, null}
!621 = metadata !{i32 206, i32 0, metadata !616, null}
!622 = metadata !{i32 208, i32 0, metadata !616, null}
!623 = metadata !{i32 209, i32 0, metadata !616, null}
!624 = metadata !{i32 210, i32 0, metadata !616, null}
!625 = metadata !{i32 211, i32 0, metadata !616, null}
!626 = metadata !{i32 212, i32 0, metadata !616, null}
!627 = metadata !{i32 215, i32 0, metadata !616, null}
!628 = metadata !{i32 219, i32 0, metadata !616, null}
!629 = metadata !{i32 220, i32 0, metadata !616, null}
!630 = metadata !{i32 222, i32 0, metadata !616, null}
!631 = metadata !{i32 223, i32 0, metadata !616, null}
!632 = metadata !{i32 226, i32 0, metadata !616, null}
!633 = metadata !{i32 227, i32 0, metadata !616, null}
!634 = metadata !{i32 230, i32 0, metadata !196, null}
!635 = metadata !{i32 234, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !196, i32 230, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!637 = metadata !{i32 235, i32 0, metadata !636, null}
!638 = metadata !{i32 238, i32 0, metadata !636, null}
!639 = metadata !{i32 239, i32 0, metadata !636, null}
!640 = metadata !{i32 244, i32 0, metadata !196, null}
!641 = metadata !{i32 245, i32 0, metadata !196, null}
!642 = metadata !{i32 247, i32 0, metadata !213, null}
!643 = metadata !{i32 249, i32 0, metadata !213, null}
!644 = metadata !{i32 252, i32 0, metadata !213, null}
!645 = metadata !{i32 253, i32 0, metadata !213, null}
!646 = metadata !{i32 257, i32 0, metadata !213, null}
!647 = metadata !{i32 262, i32 0, metadata !648, null}
!648 = metadata !{i32 786443, metadata !1, metadata !213, i32 257, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!649 = metadata !{i32 264, i32 0, metadata !648, null}
!650 = metadata !{i32 268, i32 0, metadata !213, null}
!651 = metadata !{i32 270, i32 0, metadata !652, null}
!652 = metadata !{i32 786443, metadata !1, metadata !213, i32 268, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!653 = metadata !{i32 271, i32 0, metadata !652, null}
!654 = metadata !{i32 62, i32 0, metadata !62, metadata !655}
!655 = metadata !{i32 274, i32 0, metadata !652, null}
!656 = metadata !{i32 276, i32 0, metadata !652, null}
!657 = metadata !{i32 281, i32 0, metadata !652, null}
!658 = metadata !{i32 283, i32 0, metadata !652, null}
!659 = metadata !{i32 284, i32 0, metadata !652, null}
!660 = metadata !{i32 285, i32 0, metadata !652, null}
!661 = metadata !{i32 286, i32 0, metadata !652, null}
!662 = metadata !{i32 287, i32 0, metadata !652, null}
!663 = metadata !{i32 289, i32 0, metadata !652, null}
!664 = metadata !{i32 293, i32 0, metadata !652, null}
!665 = metadata !{i32 294, i32 0, metadata !652, null}
!666 = metadata !{i32 296, i32 0, metadata !652, null}
!667 = metadata !{i32 297, i32 0, metadata !652, null}
!668 = metadata !{i32 300, i32 0, metadata !652, null}
!669 = metadata !{i32 301, i32 0, metadata !652, null}
!670 = metadata !{i32 304, i32 0, metadata !213, null}
!671 = metadata !{i32 305, i32 0, metadata !213, null}
!672 = metadata !{i32 307, i32 0, metadata !221, null}
!673 = metadata !{i32 308, i32 0, metadata !221, null}
!674 = metadata !{i32 310, i32 0, metadata !221, null}
!675 = metadata !{i32 312, i32 0, metadata !221, null}
!676 = metadata !{i32 313, i32 0, metadata !221, null}
!677 = metadata !{i32 314, i32 0, metadata !221, null}
!678 = metadata !{i32 315, i32 0, metadata !221, null}
!679 = metadata !{i32 316, i32 0, metadata !221, null}
!680 = metadata !{i32 317, i32 0, metadata !221, null}
!681 = metadata !{i32 318, i32 0, metadata !221, null}
!682 = metadata !{i32 319, i32 0, metadata !221, null}
!683 = metadata !{i32 320, i32 0, metadata !221, null}
!684 = metadata !{i32 321, i32 0, metadata !221, null}
!685 = metadata !{i32 322, i32 0, metadata !221, null}
!686 = metadata !{i32 323, i32 0, metadata !221, null}
!687 = metadata !{i32 786689, metadata !486, metadata !"a", metadata !321, i32 16777513, metadata !224, i32 0, metadata !688} ; [ DW_TAG_arg_variable ] [a] [line 297]
!688 = metadata !{i32 324, i32 0, metadata !221, null}
!689 = metadata !{i32 297, i32 0, metadata !486, metadata !688}
!690 = metadata !{i32 299, i32 0, metadata !691, metadata !688}
!691 = metadata !{i32 786443, metadata !320, metadata !486} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!692 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !690} ; [ DW_TAG_arg_variable ] [a] [line 270]
!693 = metadata !{i32 270, i32 0, metadata !492, metadata !690}
!694 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !690} ; [ DW_TAG_arg_variable ] [b] [line 270]
!695 = metadata !{i32 272, i32 0, metadata !492, metadata !690}
!696 = metadata !{i32 273, i32 0, metadata !492, metadata !690}
!697 = metadata !{i32 274, i32 0, metadata !492, metadata !690}
!698 = metadata !{i32 300, i32 0, metadata !691, metadata !688}
!699 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !698} ; [ DW_TAG_arg_variable ] [a] [line 270]
!700 = metadata !{i32 270, i32 0, metadata !492, metadata !698}
!701 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !698} ; [ DW_TAG_arg_variable ] [b] [line 270]
!702 = metadata !{i32 272, i32 0, metadata !492, metadata !698}
!703 = metadata !{i32 273, i32 0, metadata !492, metadata !698}
!704 = metadata !{i32 274, i32 0, metadata !492, metadata !698}
!705 = metadata !{i32 301, i32 0, metadata !691, metadata !688}
!706 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !705} ; [ DW_TAG_arg_variable ] [a] [line 270]
!707 = metadata !{i32 270, i32 0, metadata !492, metadata !705}
!708 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !705} ; [ DW_TAG_arg_variable ] [b] [line 270]
!709 = metadata !{i32 272, i32 0, metadata !492, metadata !705}
!710 = metadata !{i32 273, i32 0, metadata !492, metadata !705}
!711 = metadata !{i32 274, i32 0, metadata !492, metadata !705}
!712 = metadata !{i32 326, i32 0, metadata !221, null}
!713 = metadata !{i32 327, i32 0, metadata !221, null}
!714 = metadata !{i32 329, i32 0, metadata !236, null}
!715 = metadata !{i32 331, i32 0, metadata !236, null}
!716 = metadata !{i32 332, i32 0, metadata !236, null}
!717 = metadata !{i32 334, i32 0, metadata !241, null}
!718 = metadata !{i32 336, i32 0, metadata !241, null}
!719 = metadata !{i32 337, i32 0, metadata !241, null}
!720 = metadata !{i32 339, i32 0, metadata !241, null}
!721 = metadata !{i32 589, i32 0, metadata !247, null}
!722 = metadata !{i32 593, i32 0, metadata !247, null}
!723 = metadata !{i32 595, i32 0, metadata !247, null}
!724 = metadata !{i32 596, i32 0, metadata !247, null}
!725 = metadata !{i32 115, i32 0, metadata !74, metadata !726}
!726 = metadata !{i32 599, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !1, metadata !247, i32 598, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!728 = metadata !{i32 116, i32 0, metadata !74, metadata !726}
!729 = metadata !{i32 117, i32 0, metadata !74, metadata !726}
!730 = metadata !{i32 118, i32 0, metadata !74, metadata !726}
!731 = metadata !{i32 119, i32 0, metadata !74, metadata !726}
!732 = metadata !{i32 120, i32 0, metadata !74, metadata !726}
!733 = metadata !{i32 121, i32 0, metadata !74, metadata !726}
!734 = metadata !{i32 122, i32 0, metadata !74, metadata !726}
!735 = metadata !{i32 123, i32 0, metadata !74, metadata !726}
!736 = metadata !{i32 124, i32 0, metadata !74, metadata !726}
!737 = metadata !{i32 125, i32 0, metadata !74, metadata !726}
!738 = metadata !{i32 600, i32 0, metadata !727, null}
!739 = metadata !{i32 640, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !727, i32 639, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!741 = metadata !{i32 645, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !740, i32 644, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!743 = metadata !{i32 648, i32 0, metadata !744, null}
!744 = metadata !{i32 786443, metadata !1, metadata !742, i32 646, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!745 = metadata !{i32 342, i32 0, metadata !460, metadata !746}
!746 = metadata !{i32 607, i32 0, metadata !747, null}
!747 = metadata !{i32 786443, metadata !1, metadata !727, i32 603, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!748 = metadata !{i32 344, i32 0, metadata !460, metadata !746}
!749 = metadata !{i32 350, i32 0, metadata !750, metadata !746}
!750 = metadata !{i32 786443, metadata !1, metadata !460, i32 349, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!751 = metadata !{i32 352, i32 0, metadata !750, metadata !746}
!752 = metadata !{i32 354, i32 0, metadata !750, metadata !746}
!753 = metadata !{i32 356, i32 0, metadata !750, metadata !746}
!754 = metadata !{i32 357, i32 0, metadata !750, metadata !746}
!755 = metadata !{i32 373, i32 0, metadata !750, metadata !746}
!756 = metadata !{i32 371, i32 0, metadata !757, metadata !746}
!757 = metadata !{i32 786443, metadata !1, metadata !750, i32 368, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!758 = metadata !{i32 366, i32 0, metadata !759, metadata !746}
!759 = metadata !{i32 786443, metadata !1, metadata !750, i32 363, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!760 = metadata !{i32 361, i32 0, metadata !761, metadata !746}
!761 = metadata !{i32 786443, metadata !1, metadata !750, i32 358, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!762 = metadata !{i32 620, i32 0, metadata !747, null}
!763 = metadata !{i32 598, i32 0, metadata !247, null}
!764 = metadata !{i32 786689, metadata !74, metadata !"fr", metadata !63, i32 16777329, metadata !77, i32 0, metadata !726} ; [ DW_TAG_arg_variable ] [fr] [line 113]
!765 = metadata !{i32 113, i32 0, metadata !74, metadata !726}
!766 = metadata !{i32 786689, metadata !74, metadata !"bFirst", metadata !63, i32 33554545, metadata !66, i32 0, metadata !726} ; [ DW_TAG_arg_variable ] [bFirst] [line 113]
!767 = metadata !{i32 601, i32 0, metadata !727, null}
!768 = metadata !{i32 603, i32 0, metadata !727, null}
!769 = metadata !{i32 786689, metadata !460, metadata !"status", metadata !63, i32 16777558, metadata !66, i32 0, metadata !746} ; [ DW_TAG_arg_variable ] [status] [line 342]
!770 = metadata !{i32 786689, metadata !460, metadata !"fr", metadata !63, i32 33554774, metadata !77, i32 0, metadata !746} ; [ DW_TAG_arg_variable ] [fr] [line 342]
!771 = metadata !{i32 345, i32 0, metadata !460, metadata !746}
!772 = metadata !{i32 786688, metadata !460, metadata !"bRet", metadata !63, i32 345, metadata !66, i32 0, metadata !746} ; [ DW_TAG_auto_variable ] [bRet] [line 345]
!773 = metadata !{i32 347, i32 0, metadata !460, metadata !746}
!774 = metadata !{i32 349, i32 0, metadata !460, metadata !746}
!775 = metadata !{i32 351, i32 0, metadata !750, metadata !746}
!776 = metadata !{i32 353, i32 0, metadata !750, metadata !746}
!777 = metadata !{i32 355, i32 0, metadata !750, metadata !746}
!778 = metadata !{i32 358, i32 0, metadata !750, metadata !746}
!779 = metadata !{i32 359, i32 0, metadata !761, metadata !746}
!780 = metadata !{i32 360, i32 0, metadata !761, metadata !746}
!781 = metadata !{i32 363, i32 0, metadata !750, metadata !746}
!782 = metadata !{i32 362, i32 0, metadata !761, metadata !746}
!783 = metadata !{i32 364, i32 0, metadata !759, metadata !746}
!784 = metadata !{i32 365, i32 0, metadata !759, metadata !746}
!785 = metadata !{i32 368, i32 0, metadata !750, metadata !746}
!786 = metadata !{i32 367, i32 0, metadata !759, metadata !746}
!787 = metadata !{i32 369, i32 0, metadata !757, metadata !746}
!788 = metadata !{i32 370, i32 0, metadata !757, metadata !746}
!789 = metadata !{i32 372, i32 0, metadata !757, metadata !746}
!790 = metadata !{i32 376, i32 0, metadata !750, metadata !746}
!791 = metadata !{i32 786688, metadata !460, metadata !"bOK", metadata !63, i32 345, metadata !66, i32 0, metadata !746} ; [ DW_TAG_auto_variable ] [bOK] [line 345]
!792 = metadata !{i32 378, i32 0, metadata !460, metadata !746}
!793 = metadata !{i32 379, i32 0, metadata !460, metadata !746}
!794 = metadata !{i32 610, i32 0, metadata !747, null}
!795 = metadata !{i32 611, i32 0, metadata !747, null}
!796 = metadata !{i32 612, i32 0, metadata !747, null}
!797 = metadata !{i32 614, i32 0, metadata !747, null}
!798 = metadata !{i32 615, i32 0, metadata !747, null}
!799 = metadata !{i32 616, i32 0, metadata !747, null}
!800 = metadata !{i32 617, i32 0, metadata !747, null}
!801 = metadata !{i32 618, i32 0, metadata !747, null}
!802 = metadata !{i32 622, i32 0, metadata !747, null}
!803 = metadata !{i32 623, i32 0, metadata !747, null}
!804 = metadata !{i32 624, i32 0, metadata !747, null}
!805 = metadata !{i32 625, i32 0, metadata !747, null}
!806 = metadata !{i32 626, i32 0, metadata !747, null}
!807 = metadata !{i32 627, i32 0, metadata !747, null}
!808 = metadata !{i32 629, i32 0, metadata !747, null}
!809 = metadata !{i32 630, i32 0, metadata !747, null}
!810 = metadata !{i32 632, i32 0, metadata !747, null}
!811 = metadata !{i32 633, i32 0, metadata !747, null}
!812 = metadata !{i32 636, i32 0, metadata !747, null}
!813 = metadata !{i32 637, i32 0, metadata !747, null}
!814 = metadata !{i32 639, i32 0, metadata !727, null}
!815 = metadata !{i32 643, i32 0, metadata !740, null}
!816 = metadata !{i32 644, i32 0, metadata !740, null}
!817 = metadata !{i32 646, i32 0, metadata !742, null}
!818 = metadata !{i32 647, i32 0, metadata !744, null}
!819 = metadata !{i32 649, i32 0, metadata !744, null}
!820 = metadata !{i32 649, i32 0, metadata !742, null}
!821 = metadata !{i32 652, i32 0, metadata !822, null}
!822 = metadata !{i32 786443, metadata !1, metadata !742, i32 651, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!823 = metadata !{i32 1}
!824 = metadata !{i32 653, i32 0, metadata !822, null}
!825 = metadata !{i32 658, i32 0, metadata !727, null}
!826 = metadata !{i32 661, i32 0, metadata !827, null}
!827 = metadata !{i32 786443, metadata !1, metadata !247, i32 660, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!828 = metadata !{i32 662, i32 0, metadata !827, null}
!829 = metadata !{i32 786689, metadata !408, metadata !"fr", metadata !63, i32 16777304, metadata !77, i32 0, metadata !830} ; [ DW_TAG_arg_variable ] [fr] [line 88]
!830 = metadata !{i32 663, i32 0, metadata !827, null}
!831 = metadata !{i32 88, i32 0, metadata !408, metadata !830}
!832 = metadata !{i32 90, i32 0, metadata !408, metadata !830}
!833 = metadata !{i32 94, i32 0, metadata !408, metadata !830}
!834 = metadata !{i32 91, i32 0, metadata !408, metadata !830}
!835 = metadata !{i32 666, i32 0, metadata !247, null}
!836 = metadata !{i32 469, i32 0, metadata !439, null}
!837 = metadata !{i32 477, i32 0, metadata !439, null}
!838 = metadata !{i32 478, i32 0, metadata !439, null}
!839 = metadata !{i32 479, i32 0, metadata !840, null}
!840 = metadata !{i32 786443, metadata !1, metadata !439, i32 478, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!841 = metadata !{i32 481, i32 0, metadata !840, null}
!842 = metadata !{i32 786689, metadata !386, metadata !"t", metadata !63, i32 16777293, metadata !70, i32 0, metadata !841} ; [ DW_TAG_arg_variable ] [t] [line 77]
!843 = metadata !{i32 77, i32 0, metadata !386, metadata !841}
!844 = metadata !{i32 79, i32 0, metadata !386, metadata !841}
!845 = metadata !{i32 482, i32 0, metadata !840, null}
!846 = metadata !{metadata !"double", metadata !520}
!847 = metadata !{i32 483, i32 0, metadata !840, null}
!848 = metadata !{i32 485, i32 0, metadata !439, null}
!849 = metadata !{i32 486, i32 0, metadata !850, null}
!850 = metadata !{i32 786443, metadata !1, metadata !439, i32 485, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!851 = metadata !{i32 490, i32 0, metadata !850, null}
!852 = metadata !{i32 487, i32 0, metadata !853, null}
!853 = metadata !{i32 786443, metadata !1, metadata !850, i32 486, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!854 = metadata !{i32 488, i32 0, metadata !853, null}
!855 = metadata !{i32 786689, metadata !386, metadata !"t", metadata !63, i32 16777293, metadata !70, i32 0, metadata !851} ; [ DW_TAG_arg_variable ] [t] [line 77]
!856 = metadata !{i32 77, i32 0, metadata !386, metadata !851}
!857 = metadata !{i32 79, i32 0, metadata !386, metadata !851}
!858 = metadata !{i32 492, i32 0, metadata !850, null}
!859 = metadata !{i32 493, i32 0, metadata !850, null}
!860 = metadata !{i32 495, i32 0, metadata !439, null}
!861 = metadata !{i32 496, i32 0, metadata !439, null}
!862 = metadata !{i32 525, i32 0, metadata !428, null}
!863 = metadata !{i32 527, i32 0, metadata !428, null}
!864 = metadata !{i32 528, i32 0, metadata !428, null}
!865 = metadata !{i32 529, i32 0, metadata !428, null}
!866 = metadata !{i32 530, i32 0, metadata !428, null}
!867 = metadata !{i32 532, i32 0, metadata !428, null}
!868 = metadata !{i32 533, i32 0, metadata !428, null}
!869 = metadata !{i32 534, i32 0, metadata !428, null}
!870 = metadata !{i32 -12345}
!871 = metadata !{i32 536, i32 0, metadata !428, null}
!872 = metadata !{i32 537, i32 0, metadata !428, null}
!873 = metadata !{i32 62, i32 0, metadata !62, metadata !874}
!874 = metadata !{i32 538, i32 0, metadata !428, null}
!875 = metadata !{i32 539, i32 0, metadata !428, null}
!876 = metadata !{i32 540, i32 0, metadata !428, null}
!877 = metadata !{i32 541, i32 0, metadata !428, null}
!878 = metadata !{i32 542, i32 0, metadata !428, null}
!879 = metadata !{i32 543, i32 0, metadata !428, null}
!880 = metadata !{i32 545, i32 0, metadata !428, null}
!881 = metadata !{i32 546, i32 0, metadata !882, null}
!882 = metadata !{i32 786443, metadata !1, metadata !428, i32 545, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!883 = metadata !{i32 547, i32 0, metadata !882, null}
!884 = metadata !{i32 548, i32 0, metadata !882, null}
!885 = metadata !{i32 549, i32 0, metadata !428, null}
!886 = metadata !{i32 550, i32 0, metadata !428, null}
!887 = metadata !{i32 551, i32 0, metadata !888, null}
!888 = metadata !{i32 786443, metadata !1, metadata !428, i32 550, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!889 = metadata !{i32 552, i32 0, metadata !888, null}
!890 = metadata !{i32 553, i32 0, metadata !888, null}
!891 = metadata !{i32 554, i32 0, metadata !888, null}
!892 = metadata !{i32 555, i32 0, metadata !893, null}
!893 = metadata !{i32 786443, metadata !1, metadata !428, i32 554, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!894 = metadata !{i32 558, i32 0, metadata !893, null}
!895 = metadata !{i32 559, i32 0, metadata !893, null}
!896 = metadata !{i32 62, i32 0, metadata !62, metadata !897}
!897 = metadata !{i32 561, i32 0, metadata !893, null}
!898 = metadata !{i32 563, i32 0, metadata !428, null}
!899 = metadata !{i32 566, i32 0, metadata !900, null}
!900 = metadata !{i32 786443, metadata !1, metadata !428, i32 565, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!901 = metadata !{i32 62, i32 0, metadata !62, metadata !902}
!902 = metadata !{i32 568, i32 0, metadata !900, null}
!903 = metadata !{i32 569, i32 0, metadata !428, null}
!904 = metadata !{i32 571, i32 0, metadata !428, null}
!905 = metadata !{i32 70, i32 0, metadata !420, null}
!906 = metadata !{i32 72, i32 0, metadata !420, null}
!907 = metadata !{i32 73, i32 0, metadata !420, null}
!908 = metadata !{i32 74, i32 0, metadata !420, null}
!909 = metadata !{i32 786689, metadata !414, metadata !"l", metadata !63, i32 16777281, metadata !90, i32 0, metadata !908} ; [ DW_TAG_arg_variable ] [l] [line 65]
!910 = metadata !{i32 65, i32 0, metadata !414, metadata !908}
!911 = metadata !{i32 786689, metadata !414, metadata !"t", metadata !63, i32 33554497, metadata !70, i32 0, metadata !908} ; [ DW_TAG_arg_variable ] [t] [line 65]
!912 = metadata !{i32 67, i32 0, metadata !414, metadata !908}
!913 = metadata !{i32 75, i32 0, metadata !420, null}
!914 = metadata !{i32 82, i32 0, metadata !411, null}
!915 = metadata !{i8* getelementptr inbounds ([11 x i8]* @.str42, i64 0, i64 0)}
!916 = metadata !{i32 786689, metadata !414, metadata !"l", metadata !63, i32 16777281, metadata !90, i32 0, metadata !917} ; [ DW_TAG_arg_variable ] [l] [line 65]
!917 = metadata !{i32 84, i32 0, metadata !411, null}
!918 = metadata !{i32 65, i32 0, metadata !414, metadata !917}
!919 = metadata !{i32 786689, metadata !414, metadata !"t", metadata !63, i32 33554497, metadata !70, i32 0, metadata !917} ; [ DW_TAG_arg_variable ] [t] [line 65]
!920 = metadata !{i32 67, i32 0, metadata !414, metadata !917}
!921 = metadata !{i32 85, i32 0, metadata !411, null}
!922 = metadata !{i32 86, i32 0, metadata !411, null}
!923 = metadata !{i32 669, i32 0, metadata !257, null}
!924 = metadata !{i32 672, i32 0, metadata !257, null}
!925 = metadata !{i32 674, i32 0, metadata !257, null}
!926 = metadata !{i32 675, i32 0, metadata !257, null}
!927 = metadata !{i32 677, i32 0, metadata !257, null}
!928 = metadata !{i32 678, i32 0, metadata !257, null}
!929 = metadata !{i32 680, i32 0, metadata !257, null}
!930 = metadata !{i32 681, i32 0, metadata !257, null}
!931 = metadata !{i32 688, i32 0, metadata !932, null}
!932 = metadata !{i32 786443, metadata !1, metadata !257, i32 681, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!933 = metadata !{i32 689, i32 0, metadata !932, null}
!934 = metadata !{i32 786689, metadata !74, metadata !"fr", metadata !63, i32 16777329, metadata !77, i32 0, metadata !935} ; [ DW_TAG_arg_variable ] [fr] [line 113]
!935 = metadata !{i32 690, i32 0, metadata !932, null}
!936 = metadata !{i32 113, i32 0, metadata !74, metadata !935}
!937 = metadata !{i32 786689, metadata !74, metadata !"bFirst", metadata !63, i32 33554545, metadata !66, i32 0, metadata !935} ; [ DW_TAG_arg_variable ] [bFirst] [line 113]
!938 = metadata !{i32 115, i32 0, metadata !74, metadata !935}
!939 = metadata !{i32 116, i32 0, metadata !74, metadata !935}
!940 = metadata !{i32 117, i32 0, metadata !74, metadata !935}
!941 = metadata !{i32 118, i32 0, metadata !74, metadata !935}
!942 = metadata !{i32 119, i32 0, metadata !74, metadata !935}
!943 = metadata !{i32 120, i32 0, metadata !74, metadata !935}
!944 = metadata !{i32 121, i32 0, metadata !74, metadata !935}
!945 = metadata !{i32 122, i32 0, metadata !74, metadata !935}
!946 = metadata !{i32 123, i32 0, metadata !74, metadata !935}
!947 = metadata !{i32 124, i32 0, metadata !74, metadata !935}
!948 = metadata !{i32 125, i32 0, metadata !74, metadata !935}
!949 = metadata !{i32 691, i32 0, metadata !932, null}
!950 = metadata !{i32 692, i32 0, metadata !932, null}
!951 = metadata !{i32 693, i32 0, metadata !932, null}
!952 = metadata !{i32 694, i32 0, metadata !932, null}
!953 = metadata !{i32 695, i32 0, metadata !932, null}
!954 = metadata !{i32 698, i32 0, metadata !932, null}
!955 = metadata !{i32 786689, metadata !391, metadata !"status", metadata !63, i32 16777715, metadata !329, i32 0, metadata !954} ; [ DW_TAG_arg_variable ] [status] [line 499]
!956 = metadata !{i32 499, i32 0, metadata !391, metadata !954}
!957 = metadata !{i32 786689, metadata !391, metadata !"t", metadata !63, i32 33554931, metadata !271, i32 0, metadata !954} ; [ DW_TAG_arg_variable ] [t] [line 499]
!958 = metadata !{i32 786689, metadata !391, metadata !"x", metadata !63, i32 50332147, metadata !272, i32 0, metadata !954} ; [ DW_TAG_arg_variable ] [x] [line 499]
!959 = metadata !{i32 786689, metadata !391, metadata !"box", metadata !63, i32 67109363, metadata !224, i32 0, metadata !954} ; [ DW_TAG_arg_variable ] [box] [line 499]
!960 = metadata !{i32 506, i32 0, metadata !391, metadata !954}
!961 = metadata !{i32 786689, metadata !500, metadata !"a", metadata !321, i32 16777550, metadata !224, i32 0, metadata !962} ; [ DW_TAG_arg_variable ] [a] [line 334]
!962 = metadata !{i32 508, i32 0, metadata !391, metadata !954}
!963 = metadata !{i32 334, i32 0, metadata !500, metadata !962}
!964 = metadata !{i32 786688, metadata !500, metadata !"nul", metadata !321, i32 336, metadata !496, i32 0, metadata !962} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!965 = metadata !{i32 336, i32 0, metadata !500, metadata !962}
!966 = metadata !{i32 341, i32 0, metadata !500, metadata !962}
!967 = metadata !{i32 338, i32 0, metadata !500, metadata !962}
!968 = metadata !{i32 384, i32 0, metadata !400, metadata !969}
!969 = metadata !{i32 509, i32 0, metadata !391, metadata !954}
!970 = metadata !{i32 786689, metadata !400, metadata !"status", metadata !63, i32 16777600, metadata !329, i32 0, metadata !969} ; [ DW_TAG_arg_variable ] [status] [line 384]
!971 = metadata !{i32 386, i32 0, metadata !400, metadata !969}
!972 = metadata !{i32 388, i32 0, metadata !400, metadata !969}
!973 = metadata !{i32 389, i32 0, metadata !400, metadata !969}
!974 = metadata !{i32 390, i32 0, metadata !400, metadata !969}
!975 = metadata !{i32 391, i32 0, metadata !400, metadata !969}
!976 = metadata !{i32 392, i32 0, metadata !400, metadata !969}
!977 = metadata !{i32 393, i32 0, metadata !400, metadata !969}
!978 = metadata !{i32 394, i32 0, metadata !400, metadata !969}
!979 = metadata !{i32 396, i32 0, metadata !400, metadata !969}
!980 = metadata !{i32 397, i32 0, metadata !981, metadata !969}
!981 = metadata !{i32 786443, metadata !1, metadata !400, i32 396, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!982 = metadata !{i32 398, i32 0, metadata !981, metadata !969}
!983 = metadata !{i32 399, i32 0, metadata !981, metadata !969}
!984 = metadata !{i32 786688, metadata !400, metadata !"i", metadata !63, i32 386, metadata !66, i32 0, metadata !969} ; [ DW_TAG_auto_variable ] [i] [line 386]
!985 = metadata !{i32 400, i32 0, metadata !981, metadata !969}
!986 = metadata !{i32 401, i32 0, metadata !981, metadata !969}
!987 = metadata !{i32 402, i32 0, metadata !400, metadata !969}
!988 = metadata !{i32 404, i32 0, metadata !400, metadata !969}
!989 = metadata !{i32 786688, metadata !400, metadata !"m", metadata !63, i32 386, metadata !66, i32 0, metadata !969} ; [ DW_TAG_auto_variable ] [m] [line 386]
!990 = metadata !{i32 406, i32 0, metadata !991, metadata !969}
!991 = metadata !{i32 786443, metadata !1, metadata !400, i32 406, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!992 = metadata !{i32 408, i32 0, metadata !400, metadata !969}
!993 = metadata !{i32 410, i32 0, metadata !400, metadata !969}
!994 = metadata !{i32 413, i32 0, metadata !995, metadata !969}
!995 = metadata !{i32 786443, metadata !1, metadata !400, i32 410, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!996 = metadata !{i32 414, i32 0, metadata !995, metadata !969}
!997 = metadata !{i32 417, i32 0, metadata !995, metadata !969}
!998 = metadata !{i32 418, i32 0, metadata !995, metadata !969}
!999 = metadata !{i32 419, i32 0, metadata !995, metadata !969}
!1000 = metadata !{i32 420, i32 0, metadata !995, metadata !969}
!1001 = metadata !{i32 422, i32 0, metadata !995, metadata !969}
!1002 = metadata !{i32 423, i32 0, metadata !995, metadata !969}
!1003 = metadata !{i32 424, i32 0, metadata !995, metadata !969}
!1004 = metadata !{i32 426, i32 0, metadata !995, metadata !969}
!1005 = metadata !{i32 427, i32 0, metadata !1006, metadata !969}
!1006 = metadata !{i32 786443, metadata !1, metadata !995, i32 426, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1007 = metadata !{i32 428, i32 0, metadata !1006, metadata !969}
!1008 = metadata !{i32 429, i32 0, metadata !1006, metadata !969}
!1009 = metadata !{i32 430, i32 0, metadata !1006, metadata !969}
!1010 = metadata !{i32 432, i32 0, metadata !1011, metadata !969}
!1011 = metadata !{i32 786443, metadata !1, metadata !995, i32 431, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1012 = metadata !{i32 786688, metadata !400, metadata !"c", metadata !63, i32 386, metadata !66, i32 0, metadata !969} ; [ DW_TAG_auto_variable ] [c] [line 386]
!1013 = metadata !{i32 433, i32 0, metadata !1011, metadata !969}
!1014 = metadata !{i32 434, i32 0, metadata !1011, metadata !969}
!1015 = metadata !{i32 435, i32 0, metadata !995, metadata !969}
!1016 = metadata !{i32 436, i32 0, metadata !995, metadata !969}
!1017 = metadata !{i32 437, i32 0, metadata !995, metadata !969}
!1018 = metadata !{i32 439, i32 0, metadata !995, metadata !969}
!1019 = metadata !{i32 440, i32 0, metadata !995, metadata !969}
!1020 = metadata !{i32 512, i32 0, metadata !1021, metadata !954}
!1021 = metadata !{i32 786443, metadata !1, metadata !391, i32 511, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1022 = metadata !{i32 511, i32 0, metadata !1021, metadata !954}
!1023 = metadata !{i32 514, i32 0, metadata !391, metadata !954}
!1024 = metadata !{i32 515, i32 0, metadata !391, metadata !954}
!1025 = metadata !{i32 516, i32 0, metadata !391, metadata !954}
!1026 = metadata !{i32 699, i32 0, metadata !932, null}
!1027 = metadata !{i32 518, i32 0, metadata !391, metadata !954}
!1028 = metadata !{i32 520, i32 0, metadata !391, metadata !954}
!1029 = metadata !{i32 522, i32 0, metadata !391, metadata !954}
!1030 = metadata !{i32 700, i32 0, metadata !1031, null}
!1031 = metadata !{i32 786443, metadata !1, metadata !932, i32 699, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1032 = metadata !{i32 701, i32 0, metadata !1031, null}
!1033 = metadata !{i32 702, i32 0, metadata !1031, null}
!1034 = metadata !{i32 703, i32 0, metadata !1031, null}
!1035 = metadata !{i32 786689, metadata !386, metadata !"t", metadata !63, i32 16777293, metadata !70, i32 0, metadata !1034} ; [ DW_TAG_arg_variable ] [t] [line 77]
!1036 = metadata !{i32 77, i32 0, metadata !386, metadata !1034}
!1037 = metadata !{i32 79, i32 0, metadata !386, metadata !1034}
!1038 = metadata !{i32 704, i32 0, metadata !1031, null}
!1039 = metadata !{i32 708, i32 0, metadata !932, null}
!1040 = metadata !{i32 710, i32 0, metadata !932, null}
!1041 = metadata !{i32 711, i32 0, metadata !932, null}
!1042 = metadata !{i32 712, i32 0, metadata !932, null}
!1043 = metadata !{i32 713, i32 0, metadata !932, null}
!1044 = metadata !{i32 714, i32 0, metadata !932, null}
!1045 = metadata !{i32 715, i32 0, metadata !932, null}
!1046 = metadata !{i32 716, i32 0, metadata !932, null}
!1047 = metadata !{i32 786689, metadata !386, metadata !"t", metadata !63, i32 16777293, metadata !70, i32 0, metadata !1046} ; [ DW_TAG_arg_variable ] [t] [line 77]
!1048 = metadata !{i32 77, i32 0, metadata !386, metadata !1046}
!1049 = metadata !{i32 79, i32 0, metadata !386, metadata !1046}
!1050 = metadata !{i32 717, i32 0, metadata !932, null}
!1051 = metadata !{i32 720, i32 0, metadata !932, null}
!1052 = metadata !{i32 575, i32 0, metadata !1053, metadata !1051}
!1053 = metadata !{i32 786443, metadata !1, metadata !326} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1054 = metadata !{i32 577, i32 0, metadata !1053, metadata !1051}
!1055 = metadata !{i32 578, i32 0, metadata !1053, metadata !1051}
!1056 = metadata !{i32 579, i32 0, metadata !1053, metadata !1051}
!1057 = metadata !{i32 580, i32 0, metadata !1053, metadata !1051}
!1058 = metadata !{i32 581, i32 0, metadata !1053, metadata !1051}
!1059 = metadata !{i32 582, i32 0, metadata !1053, metadata !1051}
!1060 = metadata !{i32 583, i32 0, metadata !1053, metadata !1051}
!1061 = metadata !{i32 584, i32 0, metadata !1053, metadata !1051}
!1062 = metadata !{i32 721, i32 0, metadata !932, null}
!1063 = metadata !{i32 722, i32 0, metadata !932, null}
!1064 = metadata !{i32 786689, metadata !386, metadata !"t", metadata !63, i32 16777293, metadata !70, i32 0, metadata !1063} ; [ DW_TAG_arg_variable ] [t] [line 77]
!1065 = metadata !{i32 77, i32 0, metadata !386, metadata !1063}
!1066 = metadata !{i32 79, i32 0, metadata !386, metadata !1063}
!1067 = metadata !{i32 726, i32 0, metadata !932, null}
!1068 = metadata !{i32 727, i32 0, metadata !932, null}
!1069 = metadata !{i32 786689, metadata !386, metadata !"t", metadata !63, i32 16777293, metadata !70, i32 0, metadata !1068} ; [ DW_TAG_arg_variable ] [t] [line 77]
!1070 = metadata !{i32 77, i32 0, metadata !386, metadata !1068}
!1071 = metadata !{i32 79, i32 0, metadata !386, metadata !1068}
!1072 = metadata !{i32 731, i32 0, metadata !932, null}
!1073 = metadata !{i32 735, i32 0, metadata !257, null}
!1074 = metadata !{i32 736, i32 0, metadata !257, null}
!1075 = metadata !{i32 738, i32 0, metadata !257, null}
!1076 = metadata !{i32 740, i32 0, metadata !257, null}
!1077 = metadata !{i32 742, i32 0, metadata !257, null}
!1078 = metadata !{i32 743, i32 0, metadata !257, null}
!1079 = metadata !{i32 747, i32 0, metadata !268, null}
!1080 = metadata !{i32 748, i32 0, metadata !268, null}
!1081 = metadata !{i32 750, i32 0, metadata !268, null}
!1082 = metadata !{i32 752, i32 0, metadata !268, null}
!1083 = metadata !{i32 753, i32 0, metadata !268, null}
!1084 = metadata !{i32 757, i32 0, metadata !268, null}
!1085 = metadata !{i32 754, i32 0, metadata !1086, null}
!1086 = metadata !{i32 786443, metadata !1, metadata !268, i32 753, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1087 = metadata !{i32 755, i32 0, metadata !1086, null}
!1088 = metadata !{i32 756, i32 0, metadata !1086, null}
!1089 = metadata !{i64 0, i64 4, metadata !519, i64 4, i64 4, metadata !519, i64 8, i64 4, metadata !519, i64 12, i64 4, metadata !543, i64 16, i64 4, metadata !543, i64 20, i64 4, metadata !543, i64 24, i64 4, metadata !519, i64 32, i64 8, metadata !547, i64 40, i64 4, metadata !519, i64 44, i64 4, metadata !519, i64 48, i64 4, metadata !519, i64 52, i64 4, metadata !543, i64 56, i64 4, metadata !519, i64 60, i64 4, metadata !543, i64 64, i64 4, metadata !519, i64 72, i64 8, metadata !547, i64 80, i64 4, metadata !519, i64 84, i64 4, metadata !543, i64 88, i64 4, metadata !519, i64 96, i64 8, metadata !547, i64 104, i64 4, metadata !519, i64 112, i64 8, metadata !547, i64 120, i64 4, metadata !519, i64 128, i64 8, metadata !547, i64 136, i64 4, metadata !519, i64 140, i64 36, metadata !520}
!1090 = metadata !{i32 758, i32 0, metadata !268, null}
!1091 = metadata !{i32 759, i32 0, metadata !268, null}
!1092 = metadata !{i32 760, i32 0, metadata !268, null}
!1093 = metadata !{i32 786689, metadata !486, metadata !"b", metadata !321, i32 33554729, metadata !224, i32 0, metadata !1092} ; [ DW_TAG_arg_variable ] [b] [line 297]
!1094 = metadata !{i32 297, i32 0, metadata !486, metadata !1092}
!1095 = metadata !{i32 299, i32 0, metadata !691, metadata !1092}
!1096 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !1095} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1097 = metadata !{i32 270, i32 0, metadata !492, metadata !1095}
!1098 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !1095} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1099 = metadata !{i32 272, i32 0, metadata !492, metadata !1095}
!1100 = metadata !{i32 273, i32 0, metadata !492, metadata !1095}
!1101 = metadata !{i32 274, i32 0, metadata !492, metadata !1095}
!1102 = metadata !{i32 300, i32 0, metadata !691, metadata !1092}
!1103 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !1102} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1104 = metadata !{i32 270, i32 0, metadata !492, metadata !1102}
!1105 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !1102} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1106 = metadata !{i32 272, i32 0, metadata !492, metadata !1102}
!1107 = metadata !{i32 273, i32 0, metadata !492, metadata !1102}
!1108 = metadata !{i32 274, i32 0, metadata !492, metadata !1102}
!1109 = metadata !{i32 301, i32 0, metadata !691, metadata !1092}
!1110 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !1109} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1111 = metadata !{i32 270, i32 0, metadata !492, metadata !1109}
!1112 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !1109} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1113 = metadata !{i32 272, i32 0, metadata !492, metadata !1109}
!1114 = metadata !{i32 273, i32 0, metadata !492, metadata !1109}
!1115 = metadata !{i32 274, i32 0, metadata !492, metadata !1109}
!1116 = metadata !{i32 762, i32 0, metadata !268, null}
!1117 = metadata !{i32 763, i32 0, metadata !268, null}
!1118 = metadata !{i32 765, i32 0, metadata !280, null}
!1119 = metadata !{i32 769, i32 0, metadata !280, null}
!1120 = metadata !{i32 770, i32 0, metadata !280, null}
!1121 = metadata !{i32 771, i32 0, metadata !280, null}
!1122 = metadata !{i32 786689, metadata !486, metadata !"b", metadata !321, i32 33554729, metadata !224, i32 0, metadata !1123} ; [ DW_TAG_arg_variable ] [b] [line 297]
!1123 = metadata !{i32 772, i32 0, metadata !280, null}
!1124 = metadata !{i32 297, i32 0, metadata !486, metadata !1123}
!1125 = metadata !{i32 299, i32 0, metadata !691, metadata !1123}
!1126 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !1125} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1127 = metadata !{i32 270, i32 0, metadata !492, metadata !1125}
!1128 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !1125} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1129 = metadata !{i32 272, i32 0, metadata !492, metadata !1125}
!1130 = metadata !{i32 273, i32 0, metadata !492, metadata !1125}
!1131 = metadata !{i32 274, i32 0, metadata !492, metadata !1125}
!1132 = metadata !{i32 300, i32 0, metadata !691, metadata !1123}
!1133 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !1132} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1134 = metadata !{i32 270, i32 0, metadata !492, metadata !1132}
!1135 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !1132} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1136 = metadata !{i32 272, i32 0, metadata !492, metadata !1132}
!1137 = metadata !{i32 273, i32 0, metadata !492, metadata !1132}
!1138 = metadata !{i32 274, i32 0, metadata !492, metadata !1132}
!1139 = metadata !{i32 301, i32 0, metadata !691, metadata !1123}
!1140 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !1139} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1141 = metadata !{i32 270, i32 0, metadata !492, metadata !1139}
!1142 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !1139} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1143 = metadata !{i32 272, i32 0, metadata !492, metadata !1139}
!1144 = metadata !{i32 273, i32 0, metadata !492, metadata !1139}
!1145 = metadata !{i32 274, i32 0, metadata !492, metadata !1139}
!1146 = metadata !{i32 774, i32 0, metadata !280, null}
!1147 = metadata !{i32 777, i32 0, metadata !290, null}
!1148 = metadata !{i32 779, i32 0, metadata !290, null}
!1149 = metadata !{i32 780, i32 0, metadata !290, null}
!1150 = metadata !{i32 782, i32 0, metadata !293, null}
!1151 = metadata !{i32 784, i32 0, metadata !293, null}
!1152 = metadata !{i32 786, i32 0, metadata !293, null}
!1153 = metadata !{i32 787, i32 0, metadata !293, null}
!1154 = metadata !{i32 800, i32 0, metadata !296, null}
!1155 = metadata !{i32 802, i32 0, metadata !296, null}
!1156 = metadata !{i32 804, i32 0, metadata !296, null}
!1157 = metadata !{i32 805, i32 0, metadata !296, null}
!1158 = metadata !{i32 786689, metadata !313, metadata !"fr", metadata !63, i32 16778007, metadata !77, i32 0, metadata !1159} ; [ DW_TAG_arg_variable ] [fr] [line 791]
!1159 = metadata !{i32 806, i32 0, metadata !296, null}
!1160 = metadata !{i32 791, i32 0, metadata !313, metadata !1159}
!1161 = metadata !{i32 795, i32 0, metadata !313, metadata !1159}
!1162 = metadata !{i32 796, i32 0, metadata !1163, metadata !1159}
!1163 = metadata !{i32 786443, metadata !1, metadata !313, i32 796, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1164 = metadata !{i32 797, i32 0, metadata !1163, metadata !1159}
!1165 = metadata !{i32 786689, metadata !319, metadata !"a", metadata !321, i32 16777532, metadata !271, i32 0, metadata !1164} ; [ DW_TAG_arg_variable ] [a] [line 316]
!1166 = metadata !{i32 316, i32 0, metadata !319, metadata !1164}
!1167 = metadata !{i32 321, i32 0, metadata !1168, metadata !1164}
!1168 = metadata !{i32 786443, metadata !320, metadata !319} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!1169 = metadata !{i32 322, i32 0, metadata !1168, metadata !1164}
!1170 = metadata !{i32 323, i32 0, metadata !1168, metadata !1164}
!1171 = metadata !{i32 807, i32 0, metadata !296, null}
!1172 = metadata !{i32 786689, metadata !486, metadata !"b", metadata !321, i32 33554729, metadata !224, i32 0, metadata !1173} ; [ DW_TAG_arg_variable ] [b] [line 297]
!1173 = metadata !{i32 808, i32 0, metadata !296, null}
!1174 = metadata !{i32 297, i32 0, metadata !486, metadata !1173}
!1175 = metadata !{i32 299, i32 0, metadata !691, metadata !1173}
!1176 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !1175} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1177 = metadata !{i32 270, i32 0, metadata !492, metadata !1175}
!1178 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !1175} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1179 = metadata !{i32 272, i32 0, metadata !492, metadata !1175}
!1180 = metadata !{i32 273, i32 0, metadata !492, metadata !1175}
!1181 = metadata !{i32 274, i32 0, metadata !492, metadata !1175}
!1182 = metadata !{i32 300, i32 0, metadata !691, metadata !1173}
!1183 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !1182} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1184 = metadata !{i32 270, i32 0, metadata !492, metadata !1182}
!1185 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !1182} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1186 = metadata !{i32 272, i32 0, metadata !492, metadata !1182}
!1187 = metadata !{i32 273, i32 0, metadata !492, metadata !1182}
!1188 = metadata !{i32 274, i32 0, metadata !492, metadata !1182}
!1189 = metadata !{i32 301, i32 0, metadata !691, metadata !1173}
!1190 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !1189} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1191 = metadata !{i32 270, i32 0, metadata !492, metadata !1189}
!1192 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !1189} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1193 = metadata !{i32 272, i32 0, metadata !492, metadata !1189}
!1194 = metadata !{i32 273, i32 0, metadata !492, metadata !1189}
!1195 = metadata !{i32 274, i32 0, metadata !492, metadata !1189}
!1196 = metadata !{i32 811, i32 0, metadata !296, null}
!1197 = metadata !{i32 813, i32 0, metadata !304, null}
!1198 = metadata !{i32 815, i32 0, metadata !304, null}
!1199 = metadata !{i32 818, i32 0, metadata !304, null}
!1200 = metadata !{i32 819, i32 0, metadata !304, null}
!1201 = metadata !{i32 820, i32 0, metadata !304, null}
!1202 = metadata !{i32 821, i32 0, metadata !304, null}
!1203 = metadata !{i32 822, i32 0, metadata !304, null}
!1204 = metadata !{i32 823, i32 0, metadata !304, null}
!1205 = metadata !{i32 824, i32 0, metadata !304, null}
!1206 = metadata !{i32 786689, metadata !313, metadata !"fr", metadata !63, i32 16778007, metadata !77, i32 0, metadata !1207} ; [ DW_TAG_arg_variable ] [fr] [line 791]
!1207 = metadata !{i32 825, i32 0, metadata !304, null}
!1208 = metadata !{i32 791, i32 0, metadata !313, metadata !1207}
!1209 = metadata !{i32 795, i32 0, metadata !313, metadata !1207}
!1210 = metadata !{i32 796, i32 0, metadata !1163, metadata !1207}
!1211 = metadata !{i32 797, i32 0, metadata !1163, metadata !1207}
!1212 = metadata !{i32 786689, metadata !319, metadata !"a", metadata !321, i32 16777532, metadata !271, i32 0, metadata !1211} ; [ DW_TAG_arg_variable ] [a] [line 316]
!1213 = metadata !{i32 316, i32 0, metadata !319, metadata !1211}
!1214 = metadata !{i32 321, i32 0, metadata !1168, metadata !1211}
!1215 = metadata !{i32 322, i32 0, metadata !1168, metadata !1211}
!1216 = metadata !{i32 323, i32 0, metadata !1168, metadata !1211}
!1217 = metadata !{i32 786689, metadata !486, metadata !"b", metadata !321, i32 33554729, metadata !224, i32 0, metadata !1218} ; [ DW_TAG_arg_variable ] [b] [line 297]
!1218 = metadata !{i32 826, i32 0, metadata !304, null}
!1219 = metadata !{i32 297, i32 0, metadata !486, metadata !1218}
!1220 = metadata !{i32 299, i32 0, metadata !691, metadata !1218}
!1221 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !1220} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1222 = metadata !{i32 270, i32 0, metadata !492, metadata !1220}
!1223 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !1220} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1224 = metadata !{i32 272, i32 0, metadata !492, metadata !1220}
!1225 = metadata !{i32 273, i32 0, metadata !492, metadata !1220}
!1226 = metadata !{i32 274, i32 0, metadata !492, metadata !1220}
!1227 = metadata !{i32 300, i32 0, metadata !691, metadata !1218}
!1228 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !1227} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1229 = metadata !{i32 270, i32 0, metadata !492, metadata !1227}
!1230 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !1227} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1231 = metadata !{i32 272, i32 0, metadata !492, metadata !1227}
!1232 = metadata !{i32 273, i32 0, metadata !492, metadata !1227}
!1233 = metadata !{i32 274, i32 0, metadata !492, metadata !1227}
!1234 = metadata !{i32 301, i32 0, metadata !691, metadata !1218}
!1235 = metadata !{i32 786689, metadata !492, metadata !"a", metadata !321, i32 16777486, metadata !495, i32 0, metadata !1234} ; [ DW_TAG_arg_variable ] [a] [line 270]
!1236 = metadata !{i32 270, i32 0, metadata !492, metadata !1234}
!1237 = metadata !{i32 786689, metadata !492, metadata !"b", metadata !321, i32 33554702, metadata !271, i32 0, metadata !1234} ; [ DW_TAG_arg_variable ] [b] [line 270]
!1238 = metadata !{i32 272, i32 0, metadata !492, metadata !1234}
!1239 = metadata !{i32 273, i32 0, metadata !492, metadata !1234}
!1240 = metadata !{i32 274, i32 0, metadata !492, metadata !1234}
!1241 = metadata !{i32 829, i32 0, metadata !304, null}
!1242 = metadata !{i32 443, i32 0, metadata !449, null}
!1243 = metadata !{i32 446, i32 0, metadata !449, null}
!1244 = metadata !{i32 448, i32 0, metadata !1245, null}
!1245 = metadata !{i32 786443, metadata !1, metadata !449, i32 448, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1246 = metadata !{i32 449, i32 0, metadata !1247, null}
!1247 = metadata !{i32 786443, metadata !1, metadata !1248, i32 449, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1248 = metadata !{i32 786443, metadata !1, metadata !1245, i32 448, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1249 = metadata !{i32 450, i32 0, metadata !1250, null}
!1250 = metadata !{i32 786443, metadata !1, metadata !1247, i32 449, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1251 = metadata !{i32 451, i32 0, metadata !1252, null}
!1252 = metadata !{i32 786443, metadata !1, metadata !1250, i32 450, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1253 = metadata !{i32 452, i32 0, metadata !1252, null}
!1254 = metadata !{i32 456, i32 0, metadata !1250, null}
!1255 = metadata !{i32 459, i32 0, metadata !449, null}
!1256 = metadata !{i32 461, i32 0, metadata !1257, null}
!1257 = metadata !{i32 786443, metadata !1, metadata !1258, i32 460, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1258 = metadata !{i32 786443, metadata !1, metadata !1259, i32 460, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1259 = metadata !{i32 786443, metadata !1, metadata !449, i32 459, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trxio.c]
!1260 = metadata !{i32 463, i32 0, metadata !1257, null}
!1261 = metadata !{i32 460, i32 0, metadata !1258, null}
!1262 = metadata !{i32 466, i32 0, metadata !449, null}
