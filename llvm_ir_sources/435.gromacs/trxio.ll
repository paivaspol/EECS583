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
  %0 = load i32* @__frame, align 4, !tbaa !0
  ret i32 %0
}

; Function Attrs: nounwind optsize uwtable
define i32 @prec2ndec(float %prec) #1 {
entry:
  %cmp = fcmp ugt float %prec, 0.000000e+00
  %conv1.pre = fpext float %prec to double
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([41 x i8]* @.str, i64 0, i64 0), double %conv1.pre) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call double @log(double %conv1.pre) #6
  %div = fdiv double %call, 0x40026BB1BBB55516
  %add = fadd double %div, 5.000000e-01
  %conv3 = fptosi double %add to i32
  ret i32 %conv3
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare double @log(double) #3

; Function Attrs: nounwind optsize uwtable
define void @clear_trxframe(%struct.t_trxframe* %fr, i32 %bFirst) #1 {
entry:
  %not_ok = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 1
  store i32 0, i32* %not_ok, align 4, !tbaa !0
  %bTitle = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  store i32 0, i32* %bTitle, align 4, !tbaa !0
  %bStep = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  store i32 0, i32* %bStep, align 4, !tbaa !0
  %bTime = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 0, i32* %bTime, align 4, !tbaa !0
  %bLambda = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 12
  store i32 0, i32* %bLambda, align 4, !tbaa !0
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  store i32 0, i32* %bAtoms, align 4, !tbaa !0
  %bPrec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  store i32 0, i32* %bPrec, align 4, !tbaa !0
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 0, i32* %bX, align 4, !tbaa !0
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  store i32 0, i32* %bV, align 4, !tbaa !0
  %bF = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22
  store i32 0, i32* %bF, align 4, !tbaa !0
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 0, i32* %bBox, align 4, !tbaa !0
  %tobool = icmp eq i32 %bFirst, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0
  store i32 0, i32* %flags, align 4, !tbaa !0
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 -1, i32* %natoms, align 4, !tbaa !0
  %t0 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 3
  store float 0.000000e+00, float* %t0, align 4, !tbaa !3
  %tpf = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 4
  store float 0.000000e+00, float* %tpf, align 4, !tbaa !3
  %tppf = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 5
  store float 0.000000e+00, float* %tppf, align 4, !tbaa !3
  %title = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* null, i8** %title, align 8, !tbaa !4
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  store i32 0, i32* %step, align 4, !tbaa !0
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float 0.000000e+00, float* %time, align 4, !tbaa !3
  %lambda = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 13
  store float 0.000000e+00, float* %lambda, align 4, !tbaa !3
  %atoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  store %struct.t_atoms* null, %struct.t_atoms** %atoms, align 8, !tbaa !4
  %prec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  store float 0.000000e+00, float* %prec, align 4, !tbaa !3
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* null, [3 x float]** %x, align 8, !tbaa !4
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* null, [3 x float]** %v, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23
  store [3 x float]* null, [3 x float]** %f, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %0 = bitcast [3 x float]* %arraydecay to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 4, i1 false) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @write_trxframe_indexed(i32 %fnum, %struct.t_trxframe* %fr, i32 %nind, i32* %ind) #1 {
entry:
  %title = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #4
  %bPrec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  %1 = load i32* %bPrec, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %prec1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  %2 = load float* %prec1, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %prec.0 = phi float [ %2, %if.then ], [ 1.000000e+03, %entry ]
  %call = call i32 @gmx_fio_getftp(i32 %fnum) #6
  %call.off = add i32 %call, -4
  %switch = icmp ult i32 %call.off, 2
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %3 = load i32* %bX, align 4, !tbaa !0
  %tobool2 = icmp eq i32 %3, 0
  br i1 %tobool2, label %if.then3, label %sw.epilog

if.then3:                                         ; preds = %sw.default
  %call4 = call i32 @gmx_fio_getftp(i32 %fnum) #6
  %call5 = call i8* @ftp2ext(i32 %call4) #6
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str1, i64 0, i64 0), i8* %call5) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then3, %if.end
  %call7 = call i32 @gmx_fio_getftp(i32 %fnum) #6
  switch i32 %call7, label %sw.epilog57 [
    i32 5, label %sw.bb8
    i32 4, label %sw.bb8
    i32 6, label %sw.bb36
    i32 7, label %sw.bb36
  ]

sw.bb8:                                           ; preds = %sw.epilog, %sw.epilog
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %4 = load i32* %bV, align 4, !tbaa !0
  %tobool9 = icmp eq i32 %4, 0
  br i1 %tobool9, label %if.end17, label %if.then10

if.then10:                                        ; preds = %sw.bb8
  %call11 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 172, i32 %nind, i32 12) #6
  %5 = bitcast i8* %call11 to [3 x float]*
  %cmp209 = icmp sgt i32 %nind, 0
  br i1 %cmp209, label %for.body.lr.ph, label %if.end17

for.body.lr.ph:                                   ; preds = %if.then10
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %6 = load [3 x float]** %v, align 8, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv215 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next216, %for.body ]
  %arrayidx = getelementptr inbounds i32* %ind, i64 %indvars.iv215
  %7 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom12 = sext i32 %7 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %6, i64 %idxprom12, i64 0
  %arraydecay16 = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv215, i64 0
  %8 = load float* %arraydecay, align 4, !tbaa !3
  store float %8, float* %arraydecay16, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x float]* %6, i64 %idxprom12, i64 1
  %9 = load float* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv215, i64 1
  store float %9, float* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [3 x float]* %6, i64 %idxprom12, i64 2
  %10 = load float* %arrayidx4.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv215, i64 2
  store float %10, float* %arrayidx5.i, align 4, !tbaa !3
  %indvars.iv.next216 = add i64 %indvars.iv215, 1
  %lftr.wideiv217 = trunc i64 %indvars.iv.next216 to i32
  %exitcond218 = icmp eq i32 %lftr.wideiv217, %nind
  br i1 %exitcond218, label %if.end17, label %for.body

if.end17:                                         ; preds = %if.then10, %for.body, %sw.bb8
  %vout.0 = phi [3 x float]* [ null, %sw.bb8 ], [ %5, %for.body ], [ %5, %if.then10 ]
  %bF = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22
  %11 = load i32* %bF, align 4, !tbaa !0
  %tobool18 = icmp eq i32 %11, 0
  br i1 %tobool18, label %sw.bb36, label %if.then19

if.then19:                                        ; preds = %if.end17
  %call20 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 177, i32 %nind, i32 12) #6
  %12 = bitcast i8* %call20 to [3 x float]*
  %cmp22207 = icmp sgt i32 %nind, 0
  br i1 %cmp22207, label %for.body23.lr.ph, label %sw.bb36

for.body23.lr.ph:                                 ; preds = %if.then19
  %f = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23
  %13 = load [3 x float]** %f, align 8, !tbaa !4
  br label %for.body23

for.body23:                                       ; preds = %for.body23, %for.body23.lr.ph
  %indvars.iv211 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next212, %for.body23 ]
  %arrayidx25 = getelementptr inbounds i32* %ind, i64 %indvars.iv211
  %14 = load i32* %arrayidx25, align 4, !tbaa !0
  %idxprom26 = sext i32 %14 to i64
  %arraydecay28 = getelementptr inbounds [3 x float]* %13, i64 %idxprom26, i64 0
  %arraydecay31 = getelementptr inbounds [3 x float]* %12, i64 %indvars.iv211, i64 0
  %15 = load float* %arraydecay28, align 4, !tbaa !3
  store float %15, float* %arraydecay31, align 4, !tbaa !3
  %arrayidx2.i197 = getelementptr inbounds [3 x float]* %13, i64 %idxprom26, i64 1
  %16 = load float* %arrayidx2.i197, align 4, !tbaa !3
  %arrayidx3.i198 = getelementptr inbounds [3 x float]* %12, i64 %indvars.iv211, i64 1
  store float %16, float* %arrayidx3.i198, align 4, !tbaa !3
  %arrayidx4.i199 = getelementptr inbounds [3 x float]* %13, i64 %idxprom26, i64 2
  %17 = load float* %arrayidx4.i199, align 4, !tbaa !3
  %arrayidx5.i200 = getelementptr inbounds [3 x float]* %12, i64 %indvars.iv211, i64 2
  store float %17, float* %arrayidx5.i200, align 4, !tbaa !3
  %indvars.iv.next212 = add i64 %indvars.iv211, 1
  %lftr.wideiv213 = trunc i64 %indvars.iv.next212 to i32
  %exitcond214 = icmp eq i32 %lftr.wideiv213, %nind
  br i1 %exitcond214, label %sw.bb36, label %for.body23

sw.bb36:                                          ; preds = %if.then19, %for.body23, %if.end17, %sw.epilog, %sw.epilog
  %vout.1 = phi [3 x float]* [ null, %sw.epilog ], [ null, %sw.epilog ], [ %vout.0, %if.end17 ], [ %vout.0, %for.body23 ], [ %vout.0, %if.then19 ]
  %fout.0 = phi [3 x float]* [ null, %sw.epilog ], [ null, %sw.epilog ], [ null, %if.end17 ], [ %12, %for.body23 ], [ %12, %if.then19 ]
  %bX37 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %18 = load i32* %bX37, align 4, !tbaa !0
  %tobool38 = icmp eq i32 %18, 0
  br i1 %tobool38, label %sw.epilog57, label %if.then39

if.then39:                                        ; preds = %sw.bb36
  %call40 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 184, i32 %nind, i32 12) #6
  %19 = bitcast i8* %call40 to [3 x float]*
  %cmp42205 = icmp sgt i32 %nind, 0
  br i1 %cmp42205, label %for.body43.lr.ph, label %sw.epilog57

for.body43.lr.ph:                                 ; preds = %if.then39
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %20 = load [3 x float]** %x, align 8, !tbaa !4
  br label %for.body43

for.body43:                                       ; preds = %for.body43, %for.body43.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body43.lr.ph ], [ %indvars.iv.next, %for.body43 ]
  %arrayidx45 = getelementptr inbounds i32* %ind, i64 %indvars.iv
  %21 = load i32* %arrayidx45, align 4, !tbaa !0
  %idxprom46 = sext i32 %21 to i64
  %arraydecay48 = getelementptr inbounds [3 x float]* %20, i64 %idxprom46, i64 0
  %arraydecay51 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv, i64 0
  %22 = load float* %arraydecay48, align 4, !tbaa !3
  store float %22, float* %arraydecay51, align 4, !tbaa !3
  %arrayidx2.i201 = getelementptr inbounds [3 x float]* %20, i64 %idxprom46, i64 1
  %23 = load float* %arrayidx2.i201, align 4, !tbaa !3
  %arrayidx3.i202 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv, i64 1
  store float %23, float* %arrayidx3.i202, align 4, !tbaa !3
  %arrayidx4.i203 = getelementptr inbounds [3 x float]* %20, i64 %idxprom46, i64 2
  %24 = load float* %arrayidx4.i203, align 4, !tbaa !3
  %arrayidx5.i204 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv, i64 2
  store float %24, float* %arrayidx5.i204, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nind
  br i1 %exitcond, label %sw.epilog57, label %for.body43

sw.epilog57:                                      ; preds = %if.then39, %for.body43, %sw.bb36, %sw.epilog
  %vout.2 = phi [3 x float]* [ null, %sw.epilog ], [ %vout.1, %sw.bb36 ], [ %vout.1, %for.body43 ], [ %vout.1, %if.then39 ]
  %fout.1 = phi [3 x float]* [ null, %sw.epilog ], [ %fout.0, %sw.bb36 ], [ %fout.0, %for.body43 ], [ %fout.0, %if.then39 ]
  %xout.0 = phi [3 x float]* [ null, %sw.epilog ], [ null, %sw.bb36 ], [ %19, %for.body43 ], [ %19, %if.then39 ]
  %call58 = call i32 @gmx_fio_getftp(i32 %fnum) #6
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
  ]

sw.bb59:                                          ; preds = %sw.epilog57
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %25 = load i32* %step, align 4, !tbaa !0
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %26 = load float* %time, align 4, !tbaa !3
  %arraydecay60 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %call61 = call i32 @write_xtc(i32 %fnum, i32 %nind, i32 %25, float %26, [3 x float]* %arraydecay60, [3 x float]* %xout.0, float %prec.0) #6
  br label %sw.epilog109

sw.bb62:                                          ; preds = %sw.epilog57, %sw.epilog57
  %27 = load i32* @__frame, align 4, !tbaa !0
  %time64 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %28 = load float* %time64, align 4, !tbaa !3
  %step65 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %29 = load i32* %step65, align 4, !tbaa !0
  %conv = sitofp i32 %29 to float
  %arraydecay67 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  call void @fwrite_trn(i32 %fnum, i32 %27, float %28, float %conv, [3 x float]* %arraydecay67, i32 %nind, [3 x float]* %xout.0, [3 x float]* %vout.2, [3 x float]* %fout.1) #6
  br label %sw.epilog109

sw.bb68:                                          ; preds = %sw.epilog57, %sw.epilog57, %sw.epilog57, %sw.epilog57
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  %30 = load i32* %bAtoms, align 4, !tbaa !0
  %tobool69 = icmp eq i32 %30, 0
  br i1 %tobool69, label %if.then70, label %if.end73

if.then70:                                        ; preds = %sw.bb68
  %call71 = call i32 @gmx_fio_getftp(i32 %fnum) #6
  %call72 = call i8* @ftp2ext(i32 %call71) #6
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str6, i64 0, i64 0), i8* %call72) #6
  br label %if.end73

if.end73:                                         ; preds = %sw.bb68, %if.then70
  %time75 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %31 = load float* %time75, align 4, !tbaa !3
  %conv76 = fpext float %31 to double
  %call77 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), double %conv76) #6
  %call78 = call i32 @gmx_fio_getftp(i32 %fnum) #6
  %cmp79 = icmp eq i32 %call78, 13
  %call82 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fnum) #6
  %atoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  %32 = load %struct.t_atoms** %atoms, align 8, !tbaa !4
  br i1 %cmp79, label %if.then81, label %if.else91

if.then81:                                        ; preds = %if.end73
  %call84 = call i32 @prec2ndec(float %prec.0) #7
  %x85 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %33 = load [3 x float]** %x85, align 8, !tbaa !4
  %bV86 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %34 = load i32* %bV86, align 4, !tbaa !0
  %tobool87 = icmp eq i32 %34, 0
  br i1 %tobool87, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then81
  %v88 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %35 = load [3 x float]** %v88, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %if.then81, %cond.true
  %cond = phi [3 x float]* [ %35, %cond.true ], [ null, %if.then81 ]
  %arraydecay90 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  call void @write_hconf_indexed_p(%struct._IO_FILE* %call82, i8* %0, %struct.t_atoms* %32, i32 %nind, i32* %ind, i32 %call84, [3 x float]* %33, [3 x float]* %cond, [3 x float]* %arraydecay90) #6
  br label %sw.epilog109

if.else91:                                        ; preds = %if.end73
  %x95 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %36 = load [3 x float]** %x95, align 8, !tbaa !4
  %arraydecay97 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %step98 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %37 = load i32* %step98, align 4, !tbaa !0
  call void @write_pdbfile_indexed(%struct._IO_FILE* %call82, i8* %0, %struct.t_atoms* %32, [3 x float]* %36, [3 x float]* %arraydecay97, i8 signext 0, i32 %37, i32 %nind, i32* %ind) #6
  br label %sw.epilog109

sw.bb100:                                         ; preds = %sw.epilog57
  %call101 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fnum) #6
  %arraydecay103 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  call void @write_gms(%struct._IO_FILE* %call101, i32 %nind, [3 x float]* %xout.0, [3 x float]* %arraydecay103) #6
  br label %sw.epilog109

sw.bb104:                                         ; preds = %sw.epilog57
  %call105 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fnum) #6
  call void @write_g96_conf(%struct._IO_FILE* %call105, %struct.t_trxframe* %fr, i32 %nind, i32* %ind) #6
  br label %sw.epilog109

sw.default106:                                    ; preds = %sw.epilog57
  %call107 = call i32 @gmx_fio_getftp(i32 %fnum) #6
  %call108 = call i8* @ftp2ext(i32 %call107) #6
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), i8* %call108) #6
  br label %sw.epilog109

sw.epilog109:                                     ; preds = %cond.end, %if.else91, %sw.default106, %sw.bb104, %sw.bb100, %sw.bb62, %sw.bb59
  %call110 = call i32 @gmx_fio_getftp(i32 %fnum) #6
  switch i32 %call110, label %sw.epilog120 [
    i32 3, label %sw.bb111
    i32 5, label %sw.bb111
    i32 4, label %sw.bb111
    i32 6, label %sw.bb118
    i32 7, label %sw.bb118
  ]

sw.bb111:                                         ; preds = %sw.epilog109, %sw.epilog109, %sw.epilog109
  %tobool112 = icmp eq [3 x float]* %vout.2, null
  br i1 %tobool112, label %if.end114, label %if.then113

if.then113:                                       ; preds = %sw.bb111
  %38 = bitcast [3 x float]* %vout.2 to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 234, i8* %38) #6
  br label %if.end114

if.end114:                                        ; preds = %sw.bb111, %if.then113
  %tobool115 = icmp eq [3 x float]* %fout.1, null
  br i1 %tobool115, label %sw.bb118, label %if.then116

if.then116:                                       ; preds = %if.end114
  %39 = bitcast [3 x float]* %fout.1 to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 235, i8* %39) #6
  br label %sw.bb118

sw.bb118:                                         ; preds = %if.end114, %if.then116, %sw.epilog109, %sw.epilog109
  %40 = bitcast [3 x float]* %xout.0 to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 238, i8* %40) #6
  br label %sw.epilog120

sw.epilog120:                                     ; preds = %sw.epilog109, %sw.bb118
  call void @llvm.lifetime.end(i64 4096, i8* %0) #4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @gmx_fio_getftp(i32) #2

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @write_xtc(i32, i32, i32, float, [3 x float]*, [3 x float]*, float) #2

; Function Attrs: optsize
declare void @fwrite_trn(i32, i32, float, float, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @write_hconf_indexed_p(%struct._IO_FILE*, i8*, %struct.t_atoms*, i32, i32*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare %struct._IO_FILE* @gmx_fio_getfp(i32) #2

; Function Attrs: optsize
declare void @write_pdbfile_indexed(%struct._IO_FILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32, i32, i32*) #2

; Function Attrs: optsize
declare void @write_gms(%struct._IO_FILE*, i32, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @write_g96_conf(%struct._IO_FILE*, %struct.t_trxframe*, i32, i32*) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @write_trxframe(i32 %fnum, %struct.t_trxframe* %fr) #1 {
entry:
  %title = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #4
  %bPrec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  %1 = load i32* %bPrec, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %prec1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  %2 = load float* %prec1, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %prec.0 = phi float [ %2, %if.then ], [ 1.000000e+03, %entry ]
  %call = call i32 @gmx_fio_getftp(i32 %fnum) #6
  %call.off = add i32 %call, -4
  %switch = icmp ult i32 %call.off, 2
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %3 = load i32* %bX, align 4, !tbaa !0
  %tobool2 = icmp eq i32 %3, 0
  br i1 %tobool2, label %if.then3, label %sw.epilog

if.then3:                                         ; preds = %sw.default
  %call4 = call i32 @gmx_fio_getftp(i32 %fnum) #6
  %call5 = call i8* @ftp2ext(i32 %call4) #6
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str1, i64 0, i64 0), i8* %call5) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then3, %if.end
  %call7 = call i32 @gmx_fio_getftp(i32 %fnum) #6
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
  ]

sw.bb8:                                           ; preds = %sw.epilog
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %4 = load i32* %natoms, align 4, !tbaa !0
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %5 = load i32* %step, align 4, !tbaa !0
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %6 = load float* %time, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %7 = load [3 x float]** %x, align 8, !tbaa !4
  %call9 = call i32 @write_xtc(i32 %fnum, i32 %4, i32 %5, float %6, [3 x float]* %arraydecay, [3 x float]* %7, float %prec.0) #6
  br label %sw.epilog76

sw.bb10:                                          ; preds = %sw.epilog, %sw.epilog
  %8 = load i32* @__frame, align 4, !tbaa !0
  %time12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %9 = load float* %time12, align 4, !tbaa !3
  %step13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %10 = load i32* %step13, align 4, !tbaa !0
  %conv = sitofp i32 %10 to float
  %arraydecay15 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %natoms16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %11 = load i32* %natoms16, align 4, !tbaa !0
  %bX17 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %12 = load i32* %bX17, align 4, !tbaa !0
  %tobool18 = icmp eq i32 %12, 0
  br i1 %tobool18, label %cond.end, label %cond.true

cond.true:                                        ; preds = %sw.bb10
  %x19 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %13 = load [3 x float]** %x19, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %sw.bb10, %cond.true
  %cond = phi [3 x float]* [ %13, %cond.true ], [ null, %sw.bb10 ]
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %14 = load i32* %bV, align 4, !tbaa !0
  %tobool20 = icmp eq i32 %14, 0
  br i1 %tobool20, label %cond.end23, label %cond.true21

cond.true21:                                      ; preds = %cond.end
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %15 = load [3 x float]** %v, align 8, !tbaa !4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.end, %cond.true21
  %cond24 = phi [3 x float]* [ %15, %cond.true21 ], [ null, %cond.end ]
  %bF = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22
  %16 = load i32* %bF, align 4, !tbaa !0
  %tobool25 = icmp eq i32 %16, 0
  br i1 %tobool25, label %cond.end28, label %cond.true26

cond.true26:                                      ; preds = %cond.end23
  %f = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23
  %17 = load [3 x float]** %f, align 8, !tbaa !4
  br label %cond.end28

cond.end28:                                       ; preds = %cond.end23, %cond.true26
  %cond29 = phi [3 x float]* [ %17, %cond.true26 ], [ null, %cond.end23 ]
  call void @fwrite_trn(i32 %fnum, i32 %8, float %9, float %conv, [3 x float]* %arraydecay15, i32 %11, [3 x float]* %cond, [3 x float]* %cond24, [3 x float]* %cond29) #6
  br label %sw.epilog76

sw.bb30:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  %18 = load i32* %bAtoms, align 4, !tbaa !0
  %tobool31 = icmp eq i32 %18, 0
  br i1 %tobool31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %sw.bb30
  %call33 = call i32 @gmx_fio_getftp(i32 %fnum) #6
  %call34 = call i8* @ftp2ext(i32 %call33) #6
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str6, i64 0, i64 0), i8* %call34) #6
  br label %if.end35

if.end35:                                         ; preds = %sw.bb30, %if.then32
  %time37 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %19 = load float* %time37, align 4, !tbaa !3
  %conv38 = fpext float %19 to double
  %call39 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), double %conv38) #6
  %call40 = call i32 @gmx_fio_getftp(i32 %fnum) #6
  %cmp = icmp eq i32 %call40, 13
  %call43 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fnum) #6
  %atoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  %20 = load %struct.t_atoms** %atoms, align 8, !tbaa !4
  br i1 %cmp, label %if.then42, label %if.else56

if.then42:                                        ; preds = %if.end35
  %call45 = call i32 @prec2ndec(float %prec.0) #7
  %x46 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %21 = load [3 x float]** %x46, align 8, !tbaa !4
  %bV47 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %22 = load i32* %bV47, align 4, !tbaa !0
  %tobool48 = icmp eq i32 %22, 0
  br i1 %tobool48, label %cond.end52, label %cond.true49

cond.true49:                                      ; preds = %if.then42
  %v50 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %23 = load [3 x float]** %v50, align 8, !tbaa !4
  br label %cond.end52

cond.end52:                                       ; preds = %if.then42, %cond.true49
  %cond53 = phi [3 x float]* [ %23, %cond.true49 ], [ null, %if.then42 ]
  %arraydecay55 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  call void @write_hconf_p(%struct._IO_FILE* %call43, i8* %0, %struct.t_atoms* %20, i32 %call45, [3 x float]* %21, [3 x float]* %cond53, [3 x float]* %arraydecay55) #6
  br label %sw.epilog76

if.else56:                                        ; preds = %if.end35
  %x60 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %24 = load [3 x float]** %x60, align 8, !tbaa !4
  %arraydecay62 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %step63 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %25 = load i32* %step63, align 4, !tbaa !0
  call void @write_pdbfile(%struct._IO_FILE* %call43, i8* %0, %struct.t_atoms* %20, [3 x float]* %24, [3 x float]* %arraydecay62, i8 signext 0, i32 %25) #6
  br label %sw.epilog76

sw.bb65:                                          ; preds = %sw.epilog
  %call66 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fnum) #6
  %natoms67 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %26 = load i32* %natoms67, align 4, !tbaa !0
  %x68 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %27 = load [3 x float]** %x68, align 8, !tbaa !4
  %arraydecay70 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  call void @write_gms(%struct._IO_FILE* %call66, i32 %26, [3 x float]* %27, [3 x float]* %arraydecay70) #6
  br label %sw.epilog76

sw.bb71:                                          ; preds = %sw.epilog
  %call72 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fnum) #6
  call void @write_g96_conf(%struct._IO_FILE* %call72, %struct.t_trxframe* %fr, i32 -1, i32* null) #6
  br label %sw.epilog76

sw.default73:                                     ; preds = %sw.epilog
  %call74 = call i32 @gmx_fio_getftp(i32 %fnum) #6
  %call75 = call i8* @ftp2ext(i32 %call74) #6
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str9, i64 0, i64 0), i8* %call75) #6
  br label %sw.epilog76

sw.epilog76:                                      ; preds = %cond.end52, %if.else56, %sw.default73, %sw.bb71, %sw.bb65, %cond.end28, %sw.bb8
  call void @llvm.lifetime.end(i64 4096, i8* %0) #4
  ret i32 0
}

; Function Attrs: optsize
declare void @write_hconf_p(%struct._IO_FILE*, i8*, %struct.t_atoms*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @write_pdbfile(%struct._IO_FILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @write_trx(i32 %fnum, i32 %nind, i32* %ind, %struct.t_atoms* %atoms, i32 %step, float %time, [3 x float]* nocapture %box, [3 x float]* %x, [3 x float]* %v) #1 {
entry:
  %fr = alloca %struct.t_trxframe, align 8
  %0 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %0) #4
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #7
  %bStep = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  store i32 1, i32* %bStep, align 8, !tbaa !0
  %step1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  store i32 %step, i32* %step1, align 4, !tbaa !0
  %bTime = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 1, i32* %bTime, align 8, !tbaa !0
  %time2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float %time, float* %time2, align 4, !tbaa !3
  %cmp = icmp ne %struct.t_atoms* %atoms, null
  %conv = zext i1 %cmp to i32
  %bAtoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  store i32 %conv, i32* %bAtoms, align 8, !tbaa !0
  %atoms3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  store %struct.t_atoms* %atoms, %struct.t_atoms** %atoms3, align 8, !tbaa !4
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %bX, align 8, !tbaa !0
  %x4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* %x, [3 x float]** %x4, align 8, !tbaa !4
  %cmp5 = icmp ne [3 x float]* %v, null
  %conv6 = zext i1 %cmp5 to i32
  %bV = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  store i32 %conv6, i32* %bV, align 8, !tbaa !0
  %v7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* %v, [3 x float]** %v7, align 8, !tbaa !4
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 1, i32* %bBox, align 8, !tbaa !0
  %arraydecay.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0
  %1 = load float* %arraydecay.i, align 4, !tbaa !3
  store float %1, float* %arraydecay2.i, align 4, !tbaa !3
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %2 = load float* %arrayidx2.i.i, align 4, !tbaa !3
  %arrayidx3.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1
  store float %2, float* %arrayidx3.i.i, align 4, !tbaa !3
  %arrayidx4.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %3 = load float* %arrayidx4.i.i, align 4, !tbaa !3
  %arrayidx5.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2
  store float %3, float* %arrayidx5.i.i, align 4, !tbaa !3
  %arraydecay4.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %arraydecay6.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0
  %4 = load float* %arraydecay4.i, align 4, !tbaa !3
  store float %4, float* %arraydecay6.i, align 4, !tbaa !3
  %arrayidx2.i19.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %5 = load float* %arrayidx2.i19.i, align 4, !tbaa !3
  %arrayidx3.i20.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  store float %5, float* %arrayidx3.i20.i, align 4, !tbaa !3
  %arrayidx4.i21.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %6 = load float* %arrayidx4.i21.i, align 4, !tbaa !3
  %arrayidx5.i22.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2
  store float %6, float* %arrayidx5.i22.i, align 4, !tbaa !3
  %arraydecay8.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %arraydecay10.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0
  %7 = load float* %arraydecay8.i, align 4, !tbaa !3
  store float %7, float* %arraydecay10.i, align 4, !tbaa !3
  %arrayidx2.i15.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %8 = load float* %arrayidx2.i15.i, align 4, !tbaa !3
  %arrayidx3.i16.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1
  store float %8, float* %arrayidx3.i16.i, align 4, !tbaa !3
  %arrayidx4.i17.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %9 = load float* %arrayidx4.i17.i, align 4, !tbaa !3
  %arrayidx5.i18.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  store float %9, float* %arrayidx5.i18.i, align 4, !tbaa !3
  %call = call i32 @write_trxframe_indexed(i32 %fnum, %struct.t_trxframe* %fr, i32 %nind, i32* %ind) #7
  call void @llvm.lifetime.end(i64 176, i8* %0) #4
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @close_trx(i32 %status) #1 {
entry:
  tail call void @gmx_fio_close(i32 %status) #6
  ret void
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @open_trx(i8* %outfile, i8* %filemode) #1 {
entry:
  %0 = load i8* %filemode, align 1, !tbaa !1
  switch i8 %0, label %if.then [
    i8 119, label %if.end
    i8 97, label %if.end
  ]

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str10, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %entry, %entry, %if.then
  %call = tail call i32 @gmx_fio_open(i8* %outfile, i8* %filemode) #6
  ret i32 %call
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @read_next_frame(i32 %status, %struct.t_trxframe* %fr) #1 {
entry:
  %sh.i = alloca %struct.t_trnheader, align 4
  %bOK.i = alloca i32, align 4
  %bOK = alloca i32, align 4
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %0 = load float* %time, align 4, !tbaa !3
  %not_ok.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 1
  %bTitle.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  %bStep.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  %bTime.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  %bLambda.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 12
  %bAtoms.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  %bPrec.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  %bX.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %bV.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %bF.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22
  %bBox.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  %tpf = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 4
  %tppf = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 5
  %flags = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0
  %t0 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 3
  %arraydecay63 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %1 = bitcast i32* %bOK.i to i8*
  %2 = bitcast %struct.t_trnheader* %sh.i to i8*
  %natoms.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 10
  %natoms1.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %step.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 11
  %step2.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %t.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 13
  %lambda.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 14
  %lambda3.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 13
  %box_size.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 2
  %f43.phi.trans.insert.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23
  %x41.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %v42.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %f_size.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 9
  %v_size.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 8
  %x_size.i = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 7
  %prec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  br label %do.body

do.body:                                          ; preds = %land.rhs76.do.body_crit_edge, %entry
  %3 = phi float [ %0, %entry ], [ %.pre, %land.rhs76.do.body_crit_edge ]
  %bRet.0 = phi i32 [ 0, %entry ], [ %bRet.1191, %land.rhs76.do.body_crit_edge ]
  store i32 0, i32* %not_ok.i, align 4, !tbaa !0
  store i32 0, i32* %bTitle.i, align 4, !tbaa !0
  store i32 0, i32* %bStep.i, align 4, !tbaa !0
  store i32 0, i32* %bTime.i, align 4, !tbaa !0
  store i32 0, i32* %bLambda.i, align 4, !tbaa !0
  store i32 0, i32* %bAtoms.i, align 4, !tbaa !0
  store i32 0, i32* %bPrec.i, align 4, !tbaa !0
  store i32 0, i32* %bX.i, align 4, !tbaa !0
  store i32 0, i32* %bV.i, align 4, !tbaa !0
  store i32 0, i32* %bF.i, align 4, !tbaa !0
  store i32 0, i32* %bBox.i, align 4, !tbaa !0
  %4 = load float* %tpf, align 4, !tbaa !3
  store float %4, float* %tppf, align 4, !tbaa !3
  store float %3, float* %tpf, align 4, !tbaa !3
  %call = call i32 @gmx_fio_getftp(i32 %status) #6
  switch i32 %call, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb
    i32 39, label %sw.bb
    i32 14, label %sw.bb4
    i32 7, label %sw.bb7
    i32 6, label %sw.bb12
    i32 15, label %sw.bb22
    i32 13, label %sw.bb25
  ]

sw.bb:                                            ; preds = %do.body, %do.body, %do.body
  call void @llvm.lifetime.start(i64 4, i8* %1) #4
  call void @llvm.lifetime.start(i64 60, i8* %2) #4
  %call.i163 = call i32 @fread_trnheader(i32 %status, %struct.t_trnheader* %sh.i, i32* %bOK.i) #6
  %tobool.i164 = icmp eq i32 %call.i163, 0
  br i1 %tobool.i164, label %if.else48.i, label %if.then.i172

if.then.i172:                                     ; preds = %sw.bb
  %5 = load i32* %natoms.i, align 4, !tbaa !0
  store i32 %5, i32* %natoms1.i, align 4, !tbaa !0
  store i32 1, i32* %bStep.i, align 4, !tbaa !0
  %6 = load i32* %step.i, align 4, !tbaa !0
  store i32 %6, i32* %step2.i, align 4, !tbaa !0
  store i32 1, i32* %bTime.i, align 4, !tbaa !0
  %7 = load float* %t.i, align 4, !tbaa !3
  store float %7, float* %time, align 4, !tbaa !3
  store i32 1, i32* %bLambda.i, align 4, !tbaa !0
  %8 = load float* %lambda.i, align 4, !tbaa !3
  store float %8, float* %lambda3.i, align 4, !tbaa !3
  %9 = load i32* %box_size.i, align 4, !tbaa !0
  %cmp.i = icmp sgt i32 %9, 0
  %conv.i169 = zext i1 %cmp.i to i32
  store i32 %conv.i169, i32* %bBox.i, align 4, !tbaa !0
  %10 = load i32* %flags, align 4, !tbaa !0
  %and.i171 = and i32 %10, 3
  %tobool4.i = icmp eq i32 %and.i171, 0
  br i1 %tobool4.i, label %if.end14.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i172
  %11 = load [3 x float]** %x41.i, align 8, !tbaa !4
  %cmp6.i = icmp eq [3 x float]* %11, null
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i

if.then8.i:                                       ; preds = %if.then5.i
  %call10.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 360, i32 %5, i32 12) #6
  %12 = bitcast i8* %call10.i to [3 x float]*
  store [3 x float]* %12, [3 x float]** %x41.i, align 8, !tbaa !4
  %.pre.pre.i = load i32* %flags, align 4, !tbaa !0
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then5.i
  %.pre.i = phi i32 [ %.pre.pre.i, %if.then8.i ], [ %10, %if.then5.i ]
  %13 = load i32* %x_size.i, align 4, !tbaa !0
  %cmp12.i = icmp sgt i32 %13, 0
  %conv13.i = zext i1 %cmp12.i to i32
  store i32 %conv13.i, i32* %bX.i, align 4, !tbaa !0
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end.i, %if.then.i172
  %14 = phi i32 [ %10, %if.then.i172 ], [ %.pre.i, %if.end.i ]
  %and16.i = and i32 %14, 12
  %tobool17.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.i, label %if.end28.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end14.i
  %15 = load [3 x float]** %v42.i, align 8, !tbaa !4
  %cmp19.i = icmp eq [3 x float]* %15, null
  br i1 %cmp19.i, label %if.then21.i, label %if.end25.i

if.then21.i:                                      ; preds = %if.then18.i
  %16 = load i32* %natoms.i, align 4, !tbaa !0
  %call23.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 365, i32 %16, i32 12) #6
  %17 = bitcast i8* %call23.i to [3 x float]*
  store [3 x float]* %17, [3 x float]** %v42.i, align 8, !tbaa !4
  %.pre80.pre.i = load i32* %flags, align 4, !tbaa !0
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.then18.i
  %.pre80.i = phi i32 [ %.pre80.pre.i, %if.then21.i ], [ %14, %if.then18.i ]
  %18 = load i32* %v_size.i, align 4, !tbaa !0
  %cmp26.i = icmp sgt i32 %18, 0
  %conv27.i = zext i1 %cmp26.i to i32
  store i32 %conv27.i, i32* %bV.i, align 4, !tbaa !0
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end25.i, %if.end14.i
  %19 = phi i32 [ %14, %if.end14.i ], [ %.pre80.i, %if.end25.i ]
  %and30.i = and i32 %19, 48
  %tobool31.i = icmp eq i32 %and30.i, 0
  %.pre83.i = load [3 x float]** %f43.phi.trans.insert.i, align 8, !tbaa !4
  br i1 %tobool31.i, label %if.end40.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end28.i
  %cmp33.i = icmp eq [3 x float]* %.pre83.i, null
  br i1 %cmp33.i, label %if.then35.i, label %if.end39.i

if.then35.i:                                      ; preds = %if.then32.i
  %20 = load i32* %natoms.i, align 4, !tbaa !0
  %call37.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 370, i32 %20, i32 12) #6
  %21 = bitcast i8* %call37.i to [3 x float]*
  store [3 x float]* %21, [3 x float]** %f43.phi.trans.insert.i, align 8, !tbaa !4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then35.i, %if.then32.i
  %22 = phi [3 x float]* [ %21, %if.then35.i ], [ %.pre83.i, %if.then32.i ]
  %23 = load i32* %f_size.i, align 4, !tbaa !0
  store i32 %23, i32* %bF.i, align 4, !tbaa !0
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end28.i, %if.end39.i
  %24 = phi [3 x float]* [ %22, %if.end39.i ], [ %.pre83.i, %if.end28.i ]
  %25 = load [3 x float]** %x41.i, align 8, !tbaa !4
  %26 = load [3 x float]** %v42.i, align 8, !tbaa !4
  %call44.i = call i32 @fread_htrn(i32 %status, %struct.t_trnheader* %sh.i, [3 x float]* %arraydecay63, [3 x float]* %25, [3 x float]* %26, [3 x float]* %24) #6
  %tobool45.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.i, label %if.else.i177, label %if.then

if.else.i177:                                     ; preds = %if.end40.i
  store i32 2, i32* %not_ok.i, align 4, !tbaa !0
  br label %if.then84

if.else48.i:                                      ; preds = %sw.bb
  %27 = load i32* %bOK.i, align 4, !tbaa !0
  %tobool49.i = icmp eq i32 %27, 0
  br i1 %tobool49.i, label %if.then50.i, label %if.then84

if.then50.i:                                      ; preds = %if.else48.i
  store i32 1, i32* %not_ok.i, align 4, !tbaa !0
  br label %if.then84

sw.bb4:                                           ; preds = %do.body
  %call5 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %status) #6
  %call6 = call i32 @read_g96_conf(%struct._IO_FILE* %call5, i8* null, %struct.t_trxframe* %fr) #6
  %28 = load i32* %natoms1.i, align 4, !tbaa !0
  %cmp = icmp sgt i32 %28, 0
  %conv = zext i1 %cmp to i32
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  %call8 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %status) #6
  %29 = load i32* %natoms1.i, align 4, !tbaa !0
  %30 = load [3 x float]** %x41.i, align 8, !tbaa !4
  %call11 = call fastcc i32 @xyz_next_x(%struct._IO_FILE* %call8, float* %time, i32 %29, [3 x float]* %30, [3 x float]* %arraydecay63) #7
  store i32 %call11, i32* %bTime.i, align 4, !tbaa !0
  store i32 %call11, i32* %bX.i, align 4, !tbaa !0
  store i32 %call11, i32* %bBox.i, align 4, !tbaa !0
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.body
  %31 = load i32* %natoms1.i, align 4, !tbaa !0
  %32 = load [3 x float]** %x41.i, align 8, !tbaa !4
  %call18 = call i32 @read_next_xtc(i32 %status, i32 %31, i32* %step2.i, float* %time, [3 x float]* %arraydecay63, [3 x float]* %32, float* %prec, i32* %bOK) #6
  store i32 %call18, i32* %bPrec.i, align 4, !tbaa !0
  store i32 %call18, i32* %bStep.i, align 4, !tbaa !0
  store i32 %call18, i32* %bTime.i, align 4, !tbaa !0
  store i32 %call18, i32* %bX.i, align 4, !tbaa !0
  store i32 %call18, i32* %bBox.i, align 4, !tbaa !0
  br label %sw.epilog

sw.bb22:                                          ; preds = %do.body
  %call23 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %status) #6
  %call24 = call fastcc i32 @pdb_next_x(%struct._IO_FILE* %call23, %struct.t_trxframe* %fr) #7
  br label %sw.epilog

sw.bb25:                                          ; preds = %do.body
  %call26 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %status) #6
  %call27 = call i32 @gro_next_x_or_v(%struct._IO_FILE* %call26, %struct.t_trxframe* %fr) #6
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  %call28 = call i32 @gmx_fio_getftp(i32 %status) #6
  %call29 = call i8* @ftp2ext(i32 %call28) #6
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0), i8* %call29, i32 %status) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb25, %sw.bb22, %sw.bb12, %sw.bb7, %sw.bb4
  %bRet.1 = phi i32 [ %bRet.0, %sw.default ], [ %call27, %sw.bb25 ], [ %call24, %sw.bb22 ], [ %call18, %sw.bb12 ], [ %call11, %sw.bb7 ], [ %conv, %sw.bb4 ]
  %tobool = icmp eq i32 %bRet.1, 0
  br i1 %tobool, label %if.then84, label %if.then

if.then:                                          ; preds = %if.end40.i, %sw.epilog
  %bRet.1191 = phi i32 [ %bRet.1, %sw.epilog ], [ 1, %if.end40.i ]
  %33 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %33, 2
  %tobool30 = icmp eq i32 %and, 0
  br i1 %tobool30, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %34 = load i32* %bX.i, align 4, !tbaa !0
  %tobool32 = icmp eq i32 %34, 0
  br i1 %tobool32, label %land.rhs76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %and34 = and i32 %33, 8
  %tobool35 = icmp eq i32 %and34, 0
  br i1 %tobool35, label %lor.rhs, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %lor.lhs.false
  %35 = load i32* %bV.i, align 4, !tbaa !0
  %tobool37 = icmp eq i32 %35, 0
  br i1 %tobool37, label %land.rhs76, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true36, %lor.lhs.false
  %and39 = and i32 %33, 32
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %if.then43, label %lor.end

lor.end:                                          ; preds = %lor.rhs
  %36 = load i32* %bF.i, align 4, !tbaa !0
  %lnot = icmp eq i32 %36, 0
  %lor.ext = zext i1 %lnot to i32
  br i1 %lnot, label %land.rhs76, label %if.then43

if.then43:                                        ; preds = %lor.rhs, %lor.end
  %lor.ext181 = phi i32 [ %lor.ext, %lor.end ], [ 0, %lor.rhs ]
  %37 = load float* %time, align 4, !tbaa !3
  %38 = load float* %t0, align 4, !tbaa !3
  %39 = load float* %tpf, align 4, !tbaa !3
  %40 = load float* %tppf, align 4, !tbaa !3
  %call47 = call i32 @check_times2(float %37, float %38, float %39, float %40) #6
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then57, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.then43
  %41 = load i32* %flags, align 4, !tbaa !0
  %and52 = and i32 %41, 64
  %tobool53 = icmp ne i32 %and52, 0
  %cmp55 = icmp slt i32 %call47, 0
  %or.cond = and i1 %tobool53, %cmp55
  br i1 %or.cond, label %if.then57, label %if.else

if.then57:                                        ; preds = %lor.lhs.false50, %if.then43
  %42 = load float* %time, align 4, !tbaa !3
  %43 = load float* %t0, align 4, !tbaa !3
  %44 = load float* %tpf, align 4, !tbaa !3
  %45 = load float* %tppf, align 4, !tbaa !3
  call fastcc void @printcount2(float %42, float %43, float %44, float %45) #7
  call void @init_pbc([3 x float]* %arraydecay63) #6
  br label %land.rhs76

if.else:                                          ; preds = %lor.lhs.false50
  %cmp64 = icmp sgt i32 %call47, 0
  br i1 %cmp64, label %if.then84, label %if.else67

if.else67:                                        ; preds = %if.else
  %46 = load float* %time, align 4, !tbaa !3
  %47 = load float* %t0, align 4, !tbaa !3
  %48 = load float* %tpf, align 4, !tbaa !3
  %49 = load float* %tppf, align 4, !tbaa !3
  call fastcc void @printcount2(float %46, float %47, float %48, float %49) #7
  br label %land.rhs76

land.rhs76:                                       ; preds = %lor.end, %if.else67, %if.then57, %land.lhs.true36, %land.lhs.true
  %bMissingData.1 = phi i32 [ %lor.ext, %lor.end ], [ %lor.ext181, %if.then57 ], [ %lor.ext181, %if.else67 ], [ 1, %land.lhs.true36 ], [ 1, %land.lhs.true ]
  %bSkip.1 = phi i32 [ 0, %lor.end ], [ 0, %if.then57 ], [ 1, %if.else67 ], [ 0, %land.lhs.true36 ], [ 0, %land.lhs.true ]
  %50 = or i32 %bSkip.1, %bMissingData.1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %if.end88, label %land.rhs76.do.body_crit_edge

land.rhs76.do.body_crit_edge:                     ; preds = %land.rhs76
  %.pre = load float* %time, align 4, !tbaa !3
  br label %do.body

if.then84:                                        ; preds = %if.then50.i, %if.else48.i, %if.else.i177, %if.else, %sw.epilog
  call fastcc void @printlast(float %0) #7
  %52 = load i32* %not_ok.i, align 4, !tbaa !0
  %tobool85 = icmp eq i32 %52, 0
  br i1 %tobool85, label %if.end88, label %if.then86

if.then86:                                        ; preds = %if.then84
  %and.i = and i32 %52, 1
  %tobool.i = icmp eq i32 %and.i, 0
  %53 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %54 = load i32* @__frame, align 4, !tbaa !0
  %add4.i = add nsw i32 %54, 1
  %55 = load float* %time, align 4, !tbaa !3
  %conv6.i = fpext float %55 to double
  br i1 %tobool.i, label %if.then3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then86
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([43 x i8]* @.str40, i64 0, i64 0), i32 %add4.i, double %conv6.i) #6
  br label %if.end88

if.then3.i:                                       ; preds = %if.then86
  %call7.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([42 x i8]* @.str41, i64 0, i64 0), i32 %add4.i, double %conv6.i) #6
  br label %if.end88

if.end88:                                         ; preds = %land.rhs76, %if.then3.i, %if.then.i, %if.then84
  %bRet.2183 = phi i32 [ 0, %if.then84 ], [ 0, %if.then.i ], [ 0, %if.then3.i ], [ %bRet.1191, %land.rhs76 ]
  ret i32 %bRet.2183
}

; Function Attrs: optsize
declare i32 @read_g96_conf(%struct._IO_FILE*, i8*, %struct.t_trxframe*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @xyz_next_x(%struct._IO_FILE* %status, float* nocapture %t, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %box) #1 {
entry:
  %0 = load float* %t, align 4, !tbaa !3
  %1 = load float* @tbegin, align 4, !tbaa !3
  %cmp32 = fcmp ult float %1, 0.000000e+00
  br i1 %cmp32, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %if.end
  %2 = phi float [ %7, %if.end ], [ %1, %entry ]
  %3 = phi float [ %conv2, %if.end ], [ %0, %entry ]
  %cmp1 = fcmp olt float %3, %2
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %call = tail call fastcc i32 @do_read_xyz(%struct._IO_FILE* %status, i32 %natoms, [3 x float]* %x, [3 x float]* %box) #7
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %while.body
  %4 = load float* %t, align 4, !tbaa !3
  tail call fastcc void @printcount2(float %4, float %4, float %4, float %4) #6
  %5 = load double* @DT, align 8, !tbaa !5
  %6 = load float* %t, align 4, !tbaa !3
  %conv = fpext float %6 to double
  %add = fadd double %5, %conv
  %conv2 = fptrunc double %add to float
  store float %conv2, float* %t, align 4, !tbaa !3
  %7 = load float* @tbegin, align 4, !tbaa !3
  %cmp = fcmp ult float %7, 0.000000e+00
  br i1 %cmp, label %while.end, label %land.rhs

while.end:                                        ; preds = %if.end, %land.rhs, %entry
  %8 = phi float [ %0, %entry ], [ %3, %land.rhs ], [ %conv2, %if.end ]
  %9 = load float* @tend, align 4, !tbaa !3
  %cmp3 = fcmp ult float %9, 0.000000e+00
  br i1 %cmp3, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %cmp5 = fcmp olt float %8, %9
  %cmp8 = fcmp olt float %9, 0.000000e+00
  %or.cond = or i1 %cmp5, %cmp8
  br i1 %or.cond, label %if.then10, label %if.end18

lor.lhs.false:                                    ; preds = %while.end
  %cmp8.old = fcmp olt float %9, 0.000000e+00
  br i1 %cmp8.old, label %if.then10, label %if.end18

if.then10:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %call11 = tail call fastcc i32 @do_read_xyz(%struct._IO_FILE* %status, i32 %natoms, [3 x float]* %x, [3 x float]* %box) #7
  %tobool12 = icmp eq i32 %call11, 0
  %10 = load float* %t, align 4, !tbaa !3
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  tail call fastcc void @printlast(float %10) #7
  br label %return

if.end14:                                         ; preds = %if.then10
  tail call fastcc void @printcount2(float %10, float %10, float %10, float %10) #6
  %11 = load double* @DT, align 8, !tbaa !5
  %12 = load float* %t, align 4, !tbaa !3
  %conv15 = fpext float %12 to double
  %add16 = fadd double %11, %conv15
  %conv17 = fptrunc double %add16 to float
  store float %conv17, float* %t, align 4, !tbaa !3
  br label %return

if.end18:                                         ; preds = %land.lhs.true, %lor.lhs.false
  tail call fastcc void @printlast(float %8) #7
  br label %return

return:                                           ; preds = %while.body, %if.end18, %if.end14, %if.then13
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %if.then13 ], [ 0, %if.end18 ], [ 0, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @read_next_xtc(i32, i32, i32*, float*, [3 x float]*, [3 x float]*, float*, i32*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @pdb_next_x(%struct._IO_FILE* %status, %struct.t_trxframe* %fr) #1 {
entry:
  %atoms = alloca %struct.t_atoms, align 8
  %model_nr = alloca i32, align 4
  %title = alloca [4096 x i8], align 16
  %dbl = alloca double, align 8
  %0 = bitcast %struct.t_atoms* %atoms to i8*
  call void @llvm.lifetime.start(i64 1280, i8* %0) #4
  %1 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #4
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %2 = load i32* %natoms, align 4, !tbaa !0
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  store i32 %2, i32* %nr, align 8, !tbaa !0
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  store %struct.t_atom* null, %struct.t_atom** %atom, align 8, !tbaa !4
  %pdbinfo = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %pdbinfo, align 8, !tbaa !4
  store i32 -12345, i32* %model_nr, align 4, !tbaa !0
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %3 = load [3 x float]** %x, align 8, !tbaa !4
  %box = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25
  %arraydecay1 = getelementptr inbounds [3 x [3 x float]]* %box, i64 0, i64 0
  %call = call i32 @read_pdbfile(%struct._IO_FILE* %status, i8* %1, i32* %model_nr, %struct.t_atoms* %atoms, [3 x float]* %3, [3 x float]* %arraydecay1, i32 1) #6
  %4 = load i32* @__frame, align 4, !tbaa !0
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %6 = load i32* %natoms, align 4, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8]* @.str46, i64 0, i64 0), i8* %1, i32 %6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bPrec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  store i32 1, i32* %bPrec, align 4, !tbaa !0
  %prec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  store float 1.000000e+04, float* %prec, align 4, !tbaa !3
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %bX, align 4, !tbaa !0
  %arrayidx7 = getelementptr inbounds [3 x [3 x float]]* %box, i64 0, i64 0, i64 0
  %7 = load float* %arrayidx7, align 4, !tbaa !3
  %fabsf = call float @fabsf(float %7) #8
  %8 = fpext float %fabsf to double
  %cmp9 = fcmp olt double %8, 1.200000e-38
  %conv10 = zext i1 %cmp9 to i32
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 %conv10, i32* %bBox, align 4, !tbaa !0
  %9 = load i32* %model_nr, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %9, -12345
  br i1 %cmp11, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end
  %bStep = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  store i32 1, i32* %bStep, align 4, !tbaa !0
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  store i32 %9, i32* %step, align 4, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then13
  %call16 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0)) #9
  %tobool = icmp eq i8* %call16, null
  %bTime = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  br i1 %tobool, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  store i32 1, i32* %bTime, align 4, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %call16, i64 4
  %call18 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %dbl) #6
  %10 = load double* %dbl, align 8, !tbaa !5
  %conv19 = fptrunc double %10 to float
  %time20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float %conv19, float* %time20, align 4, !tbaa !3
  br label %if.end33

if.else:                                          ; preds = %if.end14
  store i32 0, i32* %bTime, align 4, !tbaa !0
  %bStep22 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  %11 = load i32* %bStep22, align 4, !tbaa !0
  %tobool23 = icmp eq i32 %11, 0
  br i1 %tobool23, label %if.else28, label %if.then24

if.then24:                                        ; preds = %if.else
  %step25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %12 = load i32* %step25, align 4, !tbaa !0
  %conv26 = sitofp i32 %12 to float
  %time27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float %conv26, float* %time27, align 4, !tbaa !3
  br label %if.end33

if.else28:                                        ; preds = %if.else
  %13 = load i32* @__frame, align 4, !tbaa !0
  %conv30 = sitofp i32 %13 to float
  %time31 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float %conv30, float* %time31, align 4, !tbaa !3
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %if.else28, %if.then17
  %cmp34 = icmp eq i32 %call, 0
  br i1 %cmp34, label %cleanup, label %if.else37

if.else37:                                        ; preds = %if.end33
  %14 = load i32* %natoms, align 4, !tbaa !0
  %cmp39 = icmp eq i32 %call, %14
  br i1 %cmp39, label %cleanup, label %if.then41

if.then41:                                        ; preds = %if.else37
  %15 = load i32* @__frame, align 4, !tbaa !0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str48, i64 0, i64 0), i32 %15, i32 %call, i32 %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.else37, %if.end33
  %retval.0 = phi i32 [ 0, %if.end33 ], [ 1, %if.else37 ], [ 1, %if.then41 ]
  call void @llvm.lifetime.end(i64 4096, i8* %1) #4
  call void @llvm.lifetime.end(i64 1280, i8* %0) #4
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @gro_next_x_or_v(%struct._IO_FILE*, %struct.t_trxframe*) #2

; Function Attrs: optsize
declare i32 @check_times2(float, float, float, float) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @printcount2(float %t, float %t0, float %tpf, float %tppf) #1 {
entry:
  %0 = load i32* @__frame, align 4, !tbaa !0
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @__frame, align 4, !tbaa !0
  %rem = srem i32 %inc, 10
  %cmp = icmp eq i32 %rem, 0
  %cmp1 = icmp slt i32 %inc, 10
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @check_times2(float %t, float %t0, float %tpf, float %tppf) #6
  %cmp2 = icmp slt i32 %call, 0
  %cond = select i1 %cmp2, i8* getelementptr inbounds ([15 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str45, i64 0, i64 0)
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %2 = load i32* @__frame, align 4, !tbaa !0
  %call.i = tail call float @convert_time(float %t) #6
  %conv.i = fpext float %call.i to double
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([25 x i8]* @.str43, i64 0, i64 0), i8* %cond, i32 %2, double %conv.i) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare void @init_pbc([3 x float]*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @printlast(float %t) #1 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %1 = load i32* @__frame, align 4, !tbaa !0
  %call.i = tail call float @convert_time(float %t) #6
  %conv.i = fpext float %call.i to double
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([25 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str42, i64 0, i64 0), i32 %1, double %conv.i) #6
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %2)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @read_first_frame(i32* nocapture %status, i8* %fn, %struct.t_trxframe* %fr, i32 %flags) #1 {
entry:
  %i.i.i = alloca i32, align 4
  %bOK = alloca i32, align 4
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #7
  %flags1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0
  store i32 %flags, i32* %flags1, align 4, !tbaa !0
  store i32 -1, i32* @__frame, align 4, !tbaa !0
  %call = call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #6
  store i32 %call, i32* %status, align 4, !tbaa !0
  %call2 = call i32 @gmx_fio_getftp(i32 %call) #6
  switch i32 %call2, label %sw.default [
    i32 5, label %if.then59
    i32 4, label %if.then59
    i32 39, label %if.then59
    i32 14, label %sw.bb3
    i32 7, label %sw.bb14
    i32 6, label %sw.bb24
    i32 15, label %sw.bb37
    i32 13, label %sw.bb45
  ]

sw.bb3:                                           ; preds = %entry
  %call4 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %call) #6
  %call5 = call i32 @read_g96_conf(%struct._IO_FILE* %call4, i8* %fn, %struct.t_trxframe* %fr) #6
  call void @gmx_fio_close(i32 %call) #6
  %not_ok.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 1
  store i32 0, i32* %not_ok.i, align 4, !tbaa !0
  %bTitle.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  store i32 0, i32* %bTitle.i, align 4, !tbaa !0
  %bStep.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  store i32 0, i32* %bStep.i, align 4, !tbaa !0
  %bTime.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 0, i32* %bTime.i, align 4, !tbaa !0
  %bLambda.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 12
  store i32 0, i32* %bLambda.i, align 4, !tbaa !0
  %bAtoms.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  store i32 0, i32* %bAtoms.i, align 4, !tbaa !0
  %bPrec.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  store i32 0, i32* %bPrec.i, align 4, !tbaa !0
  %bX.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 0, i32* %bX.i, align 4, !tbaa !0
  %bV.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  store i32 0, i32* %bV.i, align 4, !tbaa !0
  %bF.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22
  store i32 0, i32* %bF.i, align 4, !tbaa !0
  %bBox.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 0, i32* %bBox.i, align 4, !tbaa !0
  %and = and i32 %flags, 3
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb3
  %natoms = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %0 = load i32* %natoms, align 4, !tbaa !0
  %call6 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 692, i32 %0, i32 12) #6
  %1 = bitcast i8* %call6 to [3 x float]*
  %x = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* %1, [3 x float]** %x, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %sw.bb3, %if.then
  %and7 = and i32 %flags, 12
  %tobool8 = icmp eq i32 %and7, 0
  br i1 %tobool8, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end
  %natoms10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %2 = load i32* %natoms10, align 4, !tbaa !0
  %call11 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 694, i32 %2, i32 12) #6
  %3 = bitcast i8* %call11 to [3 x float]*
  %v = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* %3, [3 x float]** %v, align 8, !tbaa !4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then9
  %call13 = call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #6
  store i32 %call13, i32* %status, align 4, !tbaa !0
  br label %if.then59

sw.bb14:                                          ; preds = %entry
  %call15 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %call) #6
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %arraydecay = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  store i32 -1, i32* @__frame, align 4, !tbaa !0
  %4 = bitcast [3 x float]* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 36, i32 4, i1 false) #4
  %5 = bitcast i32* %i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #4
  %puts.i.i = call i32 @puts(i8* getelementptr inbounds ([2 x i8]* @str, i64 0, i64 0)) #4
  %puts43.i.i = call i32 @puts(i8* getelementptr inbounds ([22 x i8]* @str51, i64 0, i64 0)) #4
  %puts44.i.i = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str52, i64 0, i64 0)) #4
  %puts45.i.i = call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @str53, i64 0, i64 0)) #4
  %puts46.i.i = call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str54, i64 0, i64 0)) #4
  %puts47.i.i = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str55, i64 0, i64 0)) #4
  %puts48.i.i = call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str56, i64 0, i64 0)) #4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i, %sw.bb14
  %call7.i.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str28, i64 0, i64 0)) #6
  %6 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %call8.i.i = call i32 @fflush(%struct._IO_FILE* %6) #6
  %call9.i.i = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i32* %i.i.i) #6
  %7 = load i32* %i.i.i, align 4, !tbaa !0
  %dec.i.i = add nsw i32 %7, -1
  store i32 %dec.i.i, i32* %i.i.i, align 4, !tbaa !0
  %cmp.i.i = icmp slt i32 %7, 1
  %cmp10.i.i = icmp sgt i32 %dec.i.i, 3
  %or.cond.i.i = or i1 %cmp.i.i, %cmp10.i.i
  br i1 %or.cond.i.i, label %do.body.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %x16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %putchar.i.i = call i32 @putchar(i32 10) #4
  %8 = load i32* %i.i.i, align 4, !tbaa !0
  store i32 %8, i32* @eFF, align 4, !tbaa !1
  call void @llvm.memset.p0i8.i64(i8* bitcast ([3 x double]* @BOX to i8*), i8 0, i64 24, i32 16, i1 false) #4
  %9 = and i32 %8, -3
  %10 = icmp eq i32 %9, 1
  %lor.ext.i.i = zext i1 %10 to i32
  store i32 %lor.ext.i.i, i32* @bReadBox, align 4, !tbaa !0
  switch i32 %8, label %sw.default.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb18.i.i
    i32 3, label %sw.bb18.i.i
  ]

sw.bb.i.i:                                        ; preds = %do.end.i.i, %do.end.i.i
  %call17.i.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call15, i8* getelementptr inbounds ([15 x i8]* @.str31, i64 0, i64 0), i32* @NATOMS, double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 0), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 1), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 2), double* @DT) #6
  br label %for.body.i

sw.bb18.i.i:                                      ; preds = %do.end.i.i, %do.end.i.i
  %puts49.i.i = call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str57, i64 0, i64 0)) #4
  %call20.i.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str33, i64 0, i64 0)) #6
  %11 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %call21.i.i = call i32 @fflush(%struct._IO_FILE* %11) #6
  %call22.i.i = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i32* @NATOMS) #6
  %call23.i.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str34, i64 0, i64 0)) #6
  %12 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %call24.i.i = call i32 @fflush(%struct._IO_FILE* %12) #6
  %call25.i.i = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* @DT) #6
  %13 = load i32* @eFF, align 4, !tbaa !1
  %cmp26.i.i = icmp eq i32 %13, 2
  br i1 %cmp26.i.i, label %if.then.i.i, label %do.body30.i.i

if.then.i.i:                                      ; preds = %sw.bb18.i.i
  %call27.i.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str36, i64 0, i64 0)) #6
  %14 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %call28.i.i = call i32 @fflush(%struct._IO_FILE* %14) #6
  %call29.i.i = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([10 x i8]* @.str37, i64 0, i64 0), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 0), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 1), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 2)) #6
  br label %do.body30.i.i

do.body30.i.i:                                    ; preds = %if.then.i.i, %sw.bb18.i.i, %do.body30.i.i
  %call31.i.i = call i32 @fgetc(%struct._IO_FILE* %call15) #6
  %putchar50.i.i = call i32 @putchar(i32 %call31.i.i) #4
  %cmp34.i.i = icmp eq i32 %call31.i.i, 10
  br i1 %cmp34.i.i, label %do.end35.i.i, label %do.body30.i.i

do.end35.i.i:                                     ; preds = %do.body30.i.i
  %putchar51.i.i = call i32 @putchar(i32 10) #4
  %15 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %call37.i.i = call i32 @fflush(%struct._IO_FILE* %15) #6
  br label %for.body.i

sw.default.i.i:                                   ; preds = %do.end.i.i
  %puts52.i.i = call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str58, i64 0, i64 0)) #4
  br label %for.body.i

for.body.i:                                       ; preds = %sw.default.i.i, %do.end35.i.i, %sw.bb.i.i, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %sw.bb.i.i ], [ 0, %do.end35.i.i ], [ 0, %sw.default.i.i ]
  %arrayidx.i = getelementptr inbounds [3 x double]* @BOX, i64 0, i64 %indvars.iv.i
  %16 = load double* %arrayidx.i, align 8, !tbaa !5
  %conv.i = fptrunc double %16 to float
  %arrayidx4.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 %indvars.iv.i, i64 %indvars.iv.i
  store float %conv.i, float* %arrayidx4.i, align 4, !tbaa !3
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %17 = load i32* @NATOMS, align 4, !tbaa !0
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 514, i32 %17, i32 12) #6
  %18 = bitcast i8* %call.i to [3 x float]*
  store [3 x float]* %18, [3 x float]** %x16, align 8, !tbaa !4
  %19 = load double* @DT, align 8, !tbaa !5
  %conv5.i = fptrunc double %19 to float
  store float %conv5.i, float* %time, align 4, !tbaa !3
  %20 = load i32* @NATOMS, align 4, !tbaa !0
  %call6.i = call fastcc i32 @xyz_next_x(%struct._IO_FILE* %call15, float* %time, i32 %20, [3 x float]* %18, [3 x float]* %arraydecay) #6
  %tobool.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.i, label %xyz_first_x.exit.thread, label %xyz_first_x.exit

xyz_first_x.exit.thread:                          ; preds = %for.end.i
  %natoms18123 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 0, i32* %natoms18123, align 4, !tbaa !0
  br label %lor.lhs.false

xyz_first_x.exit:                                 ; preds = %for.end.i
  store float 0.000000e+00, float* %time, align 4, !tbaa !3
  call void @init_pbc([3 x float]* %arraydecay) #6
  %21 = load i32* @NATOMS, align 4, !tbaa !0
  %natoms18 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 %21, i32* %natoms18, align 4, !tbaa !0
  %tobool20 = icmp eq i32 %21, 0
  br i1 %tobool20, label %lor.lhs.false, label %if.then21

if.then21:                                        ; preds = %xyz_first_x.exit
  %bTime = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 1, i32* %bTime, align 4, !tbaa !0
  %bX = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %bX, align 4, !tbaa !0
  %bBox = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 1, i32* %bBox, align 4, !tbaa !0
  %22 = load float* %time, align 4, !tbaa !3
  call fastcc void @printcount2(float %22, float %22, float %22, float %22) #6
  br label %lor.lhs.false

sw.bb24:                                          ; preds = %entry
  %natoms25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %step = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %time26 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %arraydecay28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %x29 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %prec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  %call30 = call i32 @read_first_xtc(i32 %call, i32* %natoms25, i32* %step, float* %time26, [3 x float]* %arraydecay28, [3 x float]** %x29, float* %prec, i32* %bOK) #6
  %cmp = icmp eq i32 %call30, 0
  br i1 %cmp, label %if.then31, label %if.end32

if.then31:                                        ; preds = %sw.bb24
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0)) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %sw.bb24
  %bPrec = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  store i32 1, i32* %bPrec, align 4, !tbaa !0
  %bStep = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  store i32 1, i32* %bStep, align 4, !tbaa !0
  %bTime33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 1, i32* %bTime33, align 4, !tbaa !0
  %bX34 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %bX34, align 4, !tbaa !0
  %bBox35 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 1, i32* %bBox35, align 4, !tbaa !0
  %23 = load float* %time26, align 4, !tbaa !3
  call fastcc void @printcount2(float %23, float %23, float %23, float %23) #6
  br label %lor.lhs.false

sw.bb37:                                          ; preds = %entry
  %call38 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %call) #6
  store i32 -1, i32* @__frame, align 4, !tbaa !0
  %24 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str18, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %24) #4
  call void @frewind(%struct._IO_FILE* %call38) #6
  %natoms.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  call void @get_pdb_coordnum(%struct._IO_FILE* %call38, i32* %natoms.i) #6
  %26 = load i32* %natoms.i, align 4, !tbaa !0
  %cmp.i = icmp eq i32 %26, 0
  br i1 %cmp.i, label %if.then.i, label %pdb_first_x.exit

if.then.i:                                        ; preds = %sw.bb37
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str19, i64 0, i64 0)) #6
  br label %pdb_first_x.exit

pdb_first_x.exit:                                 ; preds = %sw.bb37, %if.then.i
  call void @frewind(%struct._IO_FILE* %call38) #6
  %27 = load i32* %natoms.i, align 4, !tbaa !0
  %call3.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 583, i32 %27, i32 12) #6
  %28 = bitcast i8* %call3.i to [3 x float]*
  %x.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* %28, [3 x float]** %x.i, align 8, !tbaa !4
  %call4.i = call fastcc i32 @pdb_next_x(%struct._IO_FILE* %call38, %struct.t_trxframe* %fr) #6
  %29 = load i32* %natoms.i, align 4, !tbaa !0
  %tobool41 = icmp eq i32 %29, 0
  br i1 %tobool41, label %lor.lhs.false, label %if.then42

if.then42:                                        ; preds = %pdb_first_x.exit
  %time43 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %30 = load float* %time43, align 4, !tbaa !3
  call fastcc void @printcount2(float %30, float %30, float %30, float %30) #6
  br label %lor.lhs.false

sw.bb45:                                          ; preds = %entry
  %call46 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %call) #6
  %call47 = call i32 @gro_first_x_or_v(%struct._IO_FILE* %call46, %struct.t_trxframe* %fr) #6
  %tobool48 = icmp eq i32 %call47, 0
  br i1 %tobool48, label %lor.lhs.false, label %if.then49

if.then49:                                        ; preds = %sw.bb45
  %time50 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %31 = load float* %time50, align 4, !tbaa !3
  call fastcc void @printcount2(float %31, float %31, float %31, float %31) #6
  br label %lor.lhs.false

sw.default:                                       ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str16, i64 0, i64 0), i8* %fn) #6
  br label %if.then59

lor.lhs.false:                                    ; preds = %xyz_first_x.exit.thread, %xyz_first_x.exit, %if.then21, %pdb_first_x.exit, %if.then42, %sw.bb45, %if.then49, %if.end32
  %32 = load i32* %flags1, align 4, !tbaa !0
  %and54 = and i32 %32, 64
  %tobool55 = icmp eq i32 %and54, 0
  br i1 %tobool55, label %land.lhs.true, label %if.end64

land.lhs.true:                                    ; preds = %lor.lhs.false
  %time56 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %33 = load float* %time56, align 4, !tbaa !3
  %call57 = call i32 @check_times(float %33) #6
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then59, label %if.end64

if.then59:                                        ; preds = %land.lhs.true, %entry, %entry, %entry, %if.end12, %sw.default
  %34 = load i32* %status, align 4, !tbaa !0
  %call60 = call i32 @read_next_frame(i32 %34, %struct.t_trxframe* %fr) #7
  %tobool61 = icmp eq i32 %call60, 0
  br i1 %tobool61, label %return, label %if.end64

if.end64:                                         ; preds = %if.then59, %land.lhs.true, %lor.lhs.false
  %time65 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %35 = load float* %time65, align 4, !tbaa !3
  %t0 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 3
  store float %35, float* %t0, align 4, !tbaa !3
  %natoms66 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %36 = load i32* %natoms66, align 4, !tbaa !0
  %cmp67 = icmp sgt i32 %36, 0
  %conv = zext i1 %cmp67 to i32
  br label %return

return:                                           ; preds = %if.then59, %if.end64
  %retval.0 = phi i32 [ %conv, %if.end64 ], [ 0, %if.then59 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @read_first_xtc(i32, i32*, i32*, float*, [3 x float]*, [3 x float]**, float*, i32*) #2

; Function Attrs: optsize
declare i32 @gro_first_x_or_v(%struct._IO_FILE*, %struct.t_trxframe*) #2

; Function Attrs: optsize
declare i32 @check_times(float) #2

; Function Attrs: nounwind optsize uwtable
define i32 @read_first_x(i32* nocapture %status, i8* %fn, float* nocapture %t, [3 x float]** nocapture %x, [3 x float]* nocapture %box) #1 {
entry:
  %fr = alloca %struct.t_trxframe, align 8
  %0 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %0) #4
  %call = call i32 @read_first_frame(i32* %status, i8* %fn, %struct.t_trxframe* %fr, i32 2) #7
  %1 = load i32* %status, align 4, !tbaa !0
  %2 = load i32* @nxframe, align 4, !tbaa !0
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre20 = load %struct.t_trxframe** @xframe, align 8, !tbaa !4
  br label %if.end

if.then:                                          ; preds = %entry
  %add = add nsw i32 %1, 1
  store i32 %add, i32* @nxframe, align 4, !tbaa !0
  %3 = load %struct.t_trxframe** @xframe, align 8, !tbaa !4
  %4 = bitcast %struct.t_trxframe* %3 to i8*
  %mul = mul i32 %add, 176
  %call2 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 755, i8* %4, i32 %mul) #6
  %5 = bitcast i8* %call2 to %struct.t_trxframe*
  store %struct.t_trxframe* %5, %struct.t_trxframe** @xframe, align 8, !tbaa !4
  %.pre = load i32* %status, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %6 = phi %struct.t_trxframe* [ %.pre20, %entry.if.end_crit_edge ], [ %5, %if.then ]
  %7 = phi i32 [ %1, %entry.if.end_crit_edge ], [ %.pre, %if.then ]
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.t_trxframe* %6, i64 %idxprom
  %8 = bitcast %struct.t_trxframe* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %0, i64 176, i32 8, i1 false), !tbaa.struct !6
  %9 = load i32* %status, align 4, !tbaa !0
  %idxprom3 = sext i32 %9 to i64
  %time = getelementptr inbounds %struct.t_trxframe* %6, i64 %idxprom3, i32 11
  %10 = load float* %time, align 4, !tbaa !3
  store float %10, float* %t, align 4, !tbaa !3
  %x7 = getelementptr inbounds %struct.t_trxframe* %6, i64 %idxprom3, i32 19
  %11 = load [3 x float]** %x7, align 8, !tbaa !4
  store [3 x float]* %11, [3 x float]** %x, align 8, !tbaa !4
  %12 = load %struct.t_trxframe** @xframe, align 8, !tbaa !4
  %arraydecay.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %13 = load float* %arraydecay.i, align 4, !tbaa !3
  store float %13, float* %arraydecay2.i, align 4, !tbaa !3
  %arrayidx2.i.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 0, i64 1
  %14 = load float* %arrayidx2.i.i, align 4, !tbaa !3
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  store float %14, float* %arrayidx3.i.i, align 4, !tbaa !3
  %arrayidx4.i.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 0, i64 2
  %15 = load float* %arrayidx4.i.i, align 4, !tbaa !3
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  store float %15, float* %arrayidx5.i.i, align 4, !tbaa !3
  %arraydecay4.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 1, i64 0
  %arraydecay6.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %16 = load float* %arraydecay4.i, align 4, !tbaa !3
  store float %16, float* %arraydecay6.i, align 4, !tbaa !3
  %arrayidx2.i19.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 1, i64 1
  %17 = load float* %arrayidx2.i19.i, align 4, !tbaa !3
  %arrayidx3.i20.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  store float %17, float* %arrayidx3.i20.i, align 4, !tbaa !3
  %arrayidx4.i21.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 1, i64 2
  %18 = load float* %arrayidx4.i21.i, align 4, !tbaa !3
  %arrayidx5.i22.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  store float %18, float* %arrayidx5.i22.i, align 4, !tbaa !3
  %arraydecay8.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 2, i64 0
  %arraydecay10.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %19 = load float* %arraydecay8.i, align 4, !tbaa !3
  store float %19, float* %arraydecay10.i, align 4, !tbaa !3
  %arrayidx2.i15.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 2, i64 1
  %20 = load float* %arrayidx2.i15.i, align 4, !tbaa !3
  %arrayidx3.i16.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  store float %20, float* %arrayidx3.i16.i, align 4, !tbaa !3
  %arrayidx4.i17.i = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 25, i64 2, i64 2
  %21 = load float* %arrayidx4.i17.i, align 4, !tbaa !3
  %arrayidx5.i18.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  store float %21, float* %arrayidx5.i18.i, align 4, !tbaa !3
  %natoms = getelementptr inbounds %struct.t_trxframe* %12, i64 %idxprom3, i32 2
  %22 = load i32* %natoms, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 176, i8* %0) #4
  ret i32 %22
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: nounwind optsize uwtable
define i32 @read_next_x(i32 %status, float* nocapture %t, i32 %natoms, [3 x float]* %x, [3 x float]* nocapture %box) #1 {
entry:
  %idxprom = sext i32 %status to i64
  %0 = load %struct.t_trxframe** @xframe, align 8, !tbaa !4
  %x1 = getelementptr inbounds %struct.t_trxframe* %0, i64 %idxprom, i32 19
  store [3 x float]* %x, [3 x float]** %x1, align 8, !tbaa !4
  %1 = load %struct.t_trxframe** @xframe, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds %struct.t_trxframe* %1, i64 %idxprom
  %call = tail call i32 @read_next_frame(i32 %status, %struct.t_trxframe* %arrayidx3) #7
  %2 = load %struct.t_trxframe** @xframe, align 8, !tbaa !4
  %time = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 11
  %3 = load float* %time, align 4, !tbaa !3
  store float %3, float* %t, align 4, !tbaa !3
  %arraydecay.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %4 = load float* %arraydecay.i, align 4, !tbaa !3
  store float %4, float* %arraydecay2.i, align 4, !tbaa !3
  %arrayidx2.i.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 0, i64 1
  %5 = load float* %arrayidx2.i.i, align 4, !tbaa !3
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  store float %5, float* %arrayidx3.i.i, align 4, !tbaa !3
  %arrayidx4.i.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 0, i64 2
  %6 = load float* %arrayidx4.i.i, align 4, !tbaa !3
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  store float %6, float* %arrayidx5.i.i, align 4, !tbaa !3
  %arraydecay4.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 1, i64 0
  %arraydecay6.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %7 = load float* %arraydecay4.i, align 4, !tbaa !3
  store float %7, float* %arraydecay6.i, align 4, !tbaa !3
  %arrayidx2.i19.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 1, i64 1
  %8 = load float* %arrayidx2.i19.i, align 4, !tbaa !3
  %arrayidx3.i20.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  store float %8, float* %arrayidx3.i20.i, align 4, !tbaa !3
  %arrayidx4.i21.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 1, i64 2
  %9 = load float* %arrayidx4.i21.i, align 4, !tbaa !3
  %arrayidx5.i22.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  store float %9, float* %arrayidx5.i22.i, align 4, !tbaa !3
  %arraydecay8.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 2, i64 0
  %arraydecay10.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %10 = load float* %arraydecay8.i, align 4, !tbaa !3
  store float %10, float* %arraydecay10.i, align 4, !tbaa !3
  %arrayidx2.i15.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 2, i64 1
  %11 = load float* %arrayidx2.i15.i, align 4, !tbaa !3
  %arrayidx3.i16.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  store float %11, float* %arrayidx3.i16.i, align 4, !tbaa !3
  %arrayidx4.i17.i = getelementptr inbounds %struct.t_trxframe* %2, i64 %idxprom, i32 25, i64 2, i64 2
  %12 = load float* %arrayidx4.i17.i, align 4, !tbaa !3
  %arrayidx5.i18.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  store float %12, float* %arrayidx5.i18.i, align 4, !tbaa !3
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define void @close_trj(i32 %status) #1 {
entry:
  tail call void @gmx_fio_close(i32 %status) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @rewind_trj(i32 %status) #1 {
entry:
  store i32 -1, i32* @__frame, align 4, !tbaa !0
  tail call void @gmx_fio_rewind(i32 %status) #6
  ret void
}

; Function Attrs: optsize
declare void @gmx_fio_rewind(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @read_first_v(i32* nocapture %status, i8* %fn, float* nocapture %t, [3 x float]** nocapture %v, [3 x float]* nocapture %box) #1 {
entry:
  %fr = alloca %struct.t_trxframe, align 8
  %0 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %0) #4
  %call = call i32 @read_first_frame(i32* %status, i8* %fn, %struct.t_trxframe* %fr, i32 8) #7
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %1 = load float* %time, align 4, !tbaa !3
  store float %1, float* %t, align 4, !tbaa !3
  %bV.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %2 = load i32* %bV.i, align 8, !tbaa !0
  %tobool.i = icmp eq i32 %2, 0
  %natoms.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %3 = load i32* %natoms.i, align 8, !tbaa !0
  %cmp5.i = icmp sgt i32 %3, 0
  %or.cond = and i1 %tobool.i, %cmp5.i
  br i1 %or.cond, label %for.body.lr.ph.i, label %clear_v.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %v.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %4 = load [3 x float]** %v.i, align 8, !tbaa !4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %arraydecay.i = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv.i, i64 0
  store float 0.000000e+00, float* %arraydecay.i, align 4, !tbaa !3
  %arrayidx1.i.i = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv.i, i64 1
  store float 0.000000e+00, float* %arrayidx1.i.i, align 4, !tbaa !3
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv.i, i64 2
  store float 0.000000e+00, float* %arrayidx2.i.i, align 4, !tbaa !3
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %clear_v.exit, label %for.body.i

clear_v.exit:                                     ; preds = %entry, %for.body.i
  %v1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %5 = load [3 x float]** %v1, align 8, !tbaa !4
  store [3 x float]* %5, [3 x float]** %v, align 8, !tbaa !4
  %arraydecay.i3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %6 = load float* %arraydecay.i3, align 4, !tbaa !3
  store float %6, float* %arraydecay2.i, align 4, !tbaa !3
  %arrayidx2.i.i4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1
  %7 = load float* %arrayidx2.i.i4, align 4, !tbaa !3
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  store float %7, float* %arrayidx3.i.i, align 4, !tbaa !3
  %arrayidx4.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2
  %8 = load float* %arrayidx4.i.i, align 4, !tbaa !3
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  store float %8, float* %arrayidx5.i.i, align 4, !tbaa !3
  %arraydecay4.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0
  %arraydecay6.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %9 = load float* %arraydecay4.i, align 4, !tbaa !3
  store float %9, float* %arraydecay6.i, align 4, !tbaa !3
  %arrayidx2.i19.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  %10 = load float* %arrayidx2.i19.i, align 4, !tbaa !3
  %arrayidx3.i20.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  store float %10, float* %arrayidx3.i20.i, align 4, !tbaa !3
  %arrayidx4.i21.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2
  %11 = load float* %arrayidx4.i21.i, align 4, !tbaa !3
  %arrayidx5.i22.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  store float %11, float* %arrayidx5.i22.i, align 4, !tbaa !3
  %arraydecay8.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0
  %arraydecay10.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %12 = load float* %arraydecay8.i, align 4, !tbaa !3
  store float %12, float* %arraydecay10.i, align 4, !tbaa !3
  %arrayidx2.i15.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1
  %13 = load float* %arrayidx2.i15.i, align 4, !tbaa !3
  %arrayidx3.i16.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  store float %13, float* %arrayidx3.i16.i, align 4, !tbaa !3
  %arrayidx4.i17.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  %14 = load float* %arrayidx4.i17.i, align 4, !tbaa !3
  %arrayidx5.i18.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  store float %14, float* %arrayidx5.i18.i, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 176, i8* %0) #4
  ret i32 %3
}

; Function Attrs: nounwind optsize uwtable
define i32 @read_next_v(i32 %status, float* nocapture %t, i32 %natoms, [3 x float]* %v, [3 x float]* nocapture %box) #1 {
entry:
  %fr = alloca %struct.t_trxframe, align 8
  %0 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %0) #4
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #7
  %flags = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0
  store i32 8, i32* %flags, align 8, !tbaa !0
  %natoms1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 %natoms, i32* %natoms1, align 8, !tbaa !0
  %1 = load float* %t, align 4, !tbaa !3
  %time = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float %1, float* %time, align 4, !tbaa !3
  %v2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* %v, [3 x float]** %v2, align 8, !tbaa !4
  %call = call i32 @read_next_frame(i32 %status, %struct.t_trxframe* %fr) #7
  %2 = load float* %time, align 4, !tbaa !3
  store float %2, float* %t, align 4, !tbaa !3
  %bV.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %3 = load i32* %bV.i, align 8, !tbaa !0
  %tobool.i = icmp eq i32 %3, 0
  br i1 %tobool.i, label %for.cond.preheader.i, label %clear_v.exit

for.cond.preheader.i:                             ; preds = %entry
  %4 = load i32* %natoms1, align 8, !tbaa !0
  %cmp5.i = icmp sgt i32 %4, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %clear_v.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %5 = load [3 x float]** %v2, align 8, !tbaa !4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %arraydecay.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv.i, i64 0
  store float 0.000000e+00, float* %arraydecay.i, align 4, !tbaa !3
  %arrayidx1.i.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv.i, i64 1
  store float 0.000000e+00, float* %arrayidx1.i.i, align 4, !tbaa !3
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv.i, i64 2
  store float 0.000000e+00, float* %arrayidx2.i.i, align 4, !tbaa !3
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %4
  br i1 %exitcond, label %clear_v.exit, label %for.body.i

clear_v.exit:                                     ; preds = %for.body.i, %entry, %for.cond.preheader.i
  %arraydecay.i6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %6 = load float* %arraydecay.i6, align 4, !tbaa !3
  store float %6, float* %arraydecay2.i, align 4, !tbaa !3
  %arrayidx2.i.i7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 1
  %7 = load float* %arrayidx2.i.i7, align 4, !tbaa !3
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  store float %7, float* %arrayidx3.i.i, align 4, !tbaa !3
  %arrayidx4.i.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, i64 2
  %8 = load float* %arrayidx4.i.i, align 4, !tbaa !3
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  store float %8, float* %arrayidx5.i.i, align 4, !tbaa !3
  %arraydecay4.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 0
  %arraydecay6.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %9 = load float* %arraydecay4.i, align 4, !tbaa !3
  store float %9, float* %arraydecay6.i, align 4, !tbaa !3
  %arrayidx2.i19.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  %10 = load float* %arrayidx2.i19.i, align 4, !tbaa !3
  %arrayidx3.i20.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  store float %10, float* %arrayidx3.i20.i, align 4, !tbaa !3
  %arrayidx4.i21.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2
  %11 = load float* %arrayidx4.i21.i, align 4, !tbaa !3
  %arrayidx5.i22.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  store float %11, float* %arrayidx5.i22.i, align 4, !tbaa !3
  %arraydecay8.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 0
  %arraydecay10.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %12 = load float* %arraydecay8.i, align 4, !tbaa !3
  store float %12, float* %arraydecay10.i, align 4, !tbaa !3
  %arrayidx2.i15.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 1
  %13 = load float* %arrayidx2.i15.i, align 4, !tbaa !3
  %arrayidx3.i16.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  store float %13, float* %arrayidx3.i16.i, align 4, !tbaa !3
  %arrayidx4.i17.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  %14 = load float* %arrayidx4.i17.i, align 4, !tbaa !3
  %arrayidx5.i18.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  store float %14, float* %arrayidx5.i18.i, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 176, i8* %0) #4
  ret i32 %call
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @frewind(%struct._IO_FILE*) #2

; Function Attrs: optsize
declare void @get_pdb_coordnum(%struct._IO_FILE*, i32*) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_scanf(i8* nocapture, ...) #3

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare float @convert_time(float) #2

; Function Attrs: optsize
declare i32 @read_pdbfile(%struct._IO_FILE*, i8*, i32*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i32) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @do_read_xyz(%struct._IO_FILE* %status, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %box) #1 {
entry:
  %x0 = alloca double, align 8
  %cmp51 = icmp sgt i32 %natoms, 0
  br i1 %cmp51, label %for.cond1.preheader, label %for.end13

for.cond1.preheader:                              ; preds = %entry, %for.inc11
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc11 ], [ 0, %entry ]
  %i.052 = phi i32 [ %inc12, %for.inc11 ], [ 0, %entry ]
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %if.end8
  %indvars.iv54 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next55, %if.end8 ]
  %m.049 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %if.end8 ]
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %status, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %x0) #6
  %cmp4 = icmp eq i32 %call, 1
  br i1 %cmp4, label %if.end8, label %if.then

if.then:                                          ; preds = %for.body3
  %0 = or i32 %m.049, %i.052
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %return, label %if.then6

if.then6:                                         ; preds = %if.then
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([37 x i8]* @.str49, i64 0, i64 0), i32 %i.052, i32 %m.049) #6
  br label %return

if.end8:                                          ; preds = %for.body3
  %3 = load double* %x0, align 8, !tbaa !5
  %conv = fptrunc double %3 to float
  %arrayidx10 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv57, i64 %indvars.iv54
  store float %conv, float* %arrayidx10, align 4, !tbaa !3
  %indvars.iv.next55 = add i64 %indvars.iv54, 1
  %inc = add nsw i32 %m.049, 1
  %4 = trunc i64 %indvars.iv.next55 to i32
  %cmp2 = icmp slt i32 %4, 3
  br i1 %cmp2, label %for.body3, label %for.inc11

for.inc11:                                        ; preds = %if.end8
  %indvars.iv.next58 = add i64 %indvars.iv57, 1
  %inc12 = add nsw i32 %i.052, 1
  %5 = trunc i64 %indvars.iv.next58 to i32
  %cmp = icmp slt i32 %5, %natoms
  br i1 %cmp, label %for.cond1.preheader, label %for.end13

for.end13:                                        ; preds = %for.inc11, %entry
  %6 = load i32* @bReadBox, align 4, !tbaa !0
  %tobool14 = icmp eq i32 %6, 0
  br i1 %tobool14, label %return, label %for.body19

for.body19:                                       ; preds = %for.end13, %if.end24
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end24 ], [ 0, %for.end13 ]
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %status, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %x0) #6
  %cmp21 = icmp eq i32 %call20, 1
  br i1 %cmp21, label %if.end24, label %return

if.end24:                                         ; preds = %for.body19
  %7 = load double* %x0, align 8, !tbaa !5
  %conv25 = fptrunc double %7 to float
  %arrayidx29 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  store float %conv25, float* %arrayidx29, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp17 = icmp slt i32 %8, 3
  br i1 %cmp17, label %for.body19, label %return

return:                                           ; preds = %if.end24, %for.body19, %for.end13, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 1, %for.end13 ], [ 1, %if.end24 ], [ 0, %for.body19 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @fread_trnheader(i32, %struct.t_trnheader*, i32*) #2

; Function Attrs: optsize
declare i32 @fread_htrn(i32, %struct.t_trnheader*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*) #2

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
!6 = metadata !{i64 0, i64 4, metadata !0, i64 4, i64 4, metadata !0, i64 8, i64 4, metadata !0, i64 12, i64 4, metadata !3, i64 16, i64 4, metadata !3, i64 20, i64 4, metadata !3, i64 24, i64 4, metadata !0, i64 32, i64 8, metadata !4, i64 40, i64 4, metadata !0, i64 44, i64 4, metadata !0, i64 48, i64 4, metadata !0, i64 52, i64 4, metadata !3, i64 56, i64 4, metadata !0, i64 60, i64 4, metadata !3, i64 64, i64 4, metadata !0, i64 72, i64 8, metadata !4, i64 80, i64 4, metadata !0, i64 84, i64 4, metadata !3, i64 88, i64 4, metadata !0, i64 96, i64 8, metadata !4, i64 104, i64 4, metadata !0, i64 112, i64 8, metadata !4, i64 120, i64 4, metadata !0, i64 128, i64 8, metadata !4, i64 136, i64 4, metadata !0, i64 140, i64 36, metadata !1}
