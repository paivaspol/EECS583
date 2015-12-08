; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/pullio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct._IO_FILE*, float, float, float, i32, i32, i32 }
%struct.t_pullgrps = type { i32, i32**, float**, i32*, i8**, float*, [3 x float]**, [3 x float]**, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]** }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_inpfile = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"out_%d.gro\00", align 1
@.str1 = private unnamed_addr constant [50 x i8] c"grp1:%8.3f%8.3f%8.3f grp2:%8.3f%8.3f%8.3f t:%8.3f\00", align 1
@.str2 = private unnamed_addr constant [29 x i8] c"grp1:%8.3f%8.3f%8.3f t:%8.3f\00", align 1
@.str3 = private unnamed_addr constant [25 x i8] c"%d:%d x:%8.3f%8.3f%8.3f\0A\00", align 1
@.str4 = private unnamed_addr constant [24 x i8] c"%d:%d: f:%8.3f s:%8.3f\0A\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"%8.3f\0A\00", align 1
@.str6 = private unnamed_addr constant [23 x i8] c"%d:%d ds:%e f:%e n:%d\0A\00", align 1
@.str7 = private unnamed_addr constant [4 x i8] c"%e \00", align 1
@.str9 = private unnamed_addr constant [136 x i8] c"eConstraint: step %d. Refgroup = dynamic (%f,%f\0AGroup %d (%s): ref. dist = %8.3f, unconstr. dist = %8.3f con. dist = %8.3f f_i = %8.3f\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str10 = private unnamed_addr constant [74 x i8] c"grp %d:ref (%8.3f,%8.3f,%8.3f) unc(%8.3f%8.3f%8.3f\0Acon (%8.3f%8.3f%8.3f)\0A\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"%e %e %e \00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"%e %e \00", align 1
@read_pullparams.runtypes = internal global [6 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str18, i32 0, i32 0), i8* null], align 16
@.str14 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"afm\00", align 1
@.str16 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"umbrella\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@read_pullparams.reftypes = internal global [5 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str22, i32 0, i32 0), i8* null], align 16
@.str19 = private unnamed_addr constant [4 x i8] c"com\00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"com_t0\00", align 1
@.str21 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str22 = private unnamed_addr constant [11 x i8] c"dynamic_t0\00", align 1
@read_pullparams.reversetypes = internal global [3 x i8*] [i8* getelementptr inbounds ([15 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str24, i32 0, i32 0), i8* null], align 16
@.str23 = private unnamed_addr constant [15 x i8] c"from_reference\00", align 1
@.str24 = private unnamed_addr constant [13 x i8] c"to_reference\00", align 1
@read_pullparams.verbosetypes = internal global [5 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8* null, i8* null, i8* null], align 16
@.str25 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str26 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str27 = private unnamed_addr constant [27 x i8] c"Reading parameter file %s\0A\00", align 1
@.str28 = private unnamed_addr constant [10 x i8] c"; GENERAL\00", align 1
@.str29 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str30 = private unnamed_addr constant [50 x i8] c"; Runtype: start, afm, constraint, umbrella, test\00", align 1
@.str31 = private unnamed_addr constant [8 x i8] c"runtype\00", align 1
@.str32 = private unnamed_addr constant [22 x i8] c"; Groups to be pulled\00", align 1
@.str33 = private unnamed_addr constant [8 x i8] c"group_1\00", align 1
@.str34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str35 = private unnamed_addr constant [8 x i8] c"group_2\00", align 1
@.str36 = private unnamed_addr constant [8 x i8] c"group_3\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"group_4\00", align 1
@.str38 = private unnamed_addr constant [36 x i8] c"; The group for the reaction force.\00", align 1
@.str39 = private unnamed_addr constant [16 x i8] c"reference_group\00", align 1
@.str40 = private unnamed_addr constant [46 x i8] c"; Ref. type: com, com_t0, dynamic, dynamic_t0\00", align 1
@.str41 = private unnamed_addr constant [8 x i8] c"reftype\00", align 1
@.str42 = private unnamed_addr constant [59 x i8] c"; Use running average for reflag steps for com calculation\00", align 1
@.str43 = private unnamed_addr constant [7 x i8] c"reflag\00", align 1
@.str44 = private unnamed_addr constant [59 x i8] c"; Select components for constraint vector. default: z-only\00", align 1
@.str45 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str46 = private unnamed_addr constant [12 x i8] c"0.0 0.0 1.0\00", align 1
@.str47 = private unnamed_addr constant [56 x i8] c"; Direction for start/afm: to_reference, from_reference\00", align 1
@.str48 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str49 = private unnamed_addr constant [34 x i8] c"; DYNAMIC REFERENCE GROUP OPTIONS\00", align 1
@.str50 = private unnamed_addr constant [57 x i8] c"; Cylinder radius for dynamic reaction force groups (nm)\00", align 1
@.str51 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str52 = private unnamed_addr constant [56 x i8] c"; Switch from r to rc in case of dynamic reaction force\00", align 1
@.str53 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str54 = private unnamed_addr constant [56 x i8] c"; Update frequency for dynamic reference groups (steps)\00", align 1
@.str55 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str56 = private unnamed_addr constant [26 x i8] c"\0A; CONSTRAINT RUN OPTIONS\00", align 1
@.str57 = private unnamed_addr constant [34 x i8] c"; Tolerance of constraints, in nm\00", align 1
@.str58 = private unnamed_addr constant [21 x i8] c"constraint_tolerance\00", align 1
@.str59 = private unnamed_addr constant [15 x i8] c"\0A; AFM OPTIONS\00", align 1
@.str60 = private unnamed_addr constant [27 x i8] c"; pull rate in nm/timestep\00", align 1
@.str61 = private unnamed_addr constant [9 x i8] c"pullrate\00", align 1
@.str62 = private unnamed_addr constant [33 x i8] c"; forceconstant in kJ/(mol*nm^2)\00", align 1
@.str63 = private unnamed_addr constant [14 x i8] c"forceconstant\00", align 1
@.str64 = private unnamed_addr constant [29 x i8] c"\0A; UMBRELLA SAMPLING OPTIONS\00", align 1
@.str65 = private unnamed_addr constant [56 x i8] c"; Width of umbrella sampling potential in kJ/(mol*nm^2)\00", align 1
@.str66 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str67 = private unnamed_addr constant [30 x i8] c"\0A; STARTING STRUCTURE OPTIONS\00", align 1
@.str68 = private unnamed_addr constant [68 x i8] c"; Start coord. for making starting struct, rel. to ref. grp.: x y z\00", align 1
@.str69 = private unnamed_addr constant [10 x i8] c"r0_group1\00", align 1
@.str70 = private unnamed_addr constant [10 x i8] c"r0_group2\00", align 1
@.str71 = private unnamed_addr constant [10 x i8] c"tolerance\00", align 1
@.str72 = private unnamed_addr constant [50 x i8] c"; Rate of translation in all directions (nm/step)\00", align 1
@.str73 = private unnamed_addr constant [17 x i8] c"translation_rate\00", align 1
@.str74 = private unnamed_addr constant [56 x i8] c"; Write out structure every ndegr degrees, transstep nm\00", align 1
@.str75 = private unnamed_addr constant [6 x i8] c"ndegr\00", align 1
@.str76 = private unnamed_addr constant [10 x i8] c"transstep\00", align 1
@.str77 = private unnamed_addr constant [12 x i8] c"inp[i].name\00", align 1
@.str78 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/pullio.c\00", align 1
@.str79 = private unnamed_addr constant [13 x i8] c"inp[i].value\00", align 1
@.str80 = private unnamed_addr constant [4 x i8] c"inp\00", align 1
@.str81 = private unnamed_addr constant [24 x i8] c"Groups: %s %s %s %s %s\0A\00", align 1
@.str82 = private unnamed_addr constant [53 x i8] c"Need to specify at least group_1 and reference_group\00", align 1
@.str83 = private unnamed_addr constant [22 x i8] c"Using %d pull groups\0A\00", align 1
@.str84 = private unnamed_addr constant [16 x i8] c"pull->pull.grps\00", align 1
@.str85 = private unnamed_addr constant [15 x i8] c"pull->ref.grps\00", align 1
@.str86 = private unnamed_addr constant [19 x i8] c"pull->pull.xtarget\00", align 1
@.str87 = private unnamed_addr constant [45 x i8] c"Using distance components %2.1f %2.1f %2.1f\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @dump_conf(%struct.t_pull* nocapture %pull, [3 x float]* %x, [3 x float]* %box, %struct.t_topology* %top, i32 %nout, float %time) #0 {
entry:
  %buf = alloca [128 x i8], align 16
  %buf2 = alloca [128 x i8], align 16
  %0 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = getelementptr inbounds [128 x i8]* %buf2, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %1) #1
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 %nout) #4
  %n = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %2 = load i32* %n, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, 2
  %x_unc = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %3 = load [3 x float]** %x_unc, align 8, !tbaa !3
  %arraydecay5 = getelementptr inbounds [3 x float]* %3, i64 0, i64 0
  %x_unc6 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %4 = load [3 x float]** %x_unc6, align 8, !tbaa !3
  %arraydecay8 = getelementptr inbounds [3 x float]* %4, i64 0, i64 0
  %5 = load float* %arraydecay5, align 4, !tbaa !4
  %6 = load float* %arraydecay8, align 4, !tbaa !4
  %sub.i = fsub float %5, %6
  %arrayidx2.i = getelementptr inbounds [3 x float]* %3, i64 0, i64 1
  %7 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %4, i64 0, i64 1
  %8 = load float* %arrayidx3.i, align 4, !tbaa !4
  %sub4.i = fsub float %7, %8
  %arrayidx5.i = getelementptr inbounds [3 x float]* %3, i64 0, i64 2
  %9 = load float* %arrayidx5.i, align 4, !tbaa !4
  %arrayidx6.i = getelementptr inbounds [3 x float]* %4, i64 0, i64 2
  %10 = load float* %arrayidx6.i, align 4, !tbaa !4
  %sub7.i = fsub float %9, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay13 = getelementptr inbounds [3 x float]* %3, i64 1, i64 0
  %11 = load float* %arraydecay13, align 4, !tbaa !4
  %sub.i59 = fsub float %11, %6
  %arrayidx2.i60 = getelementptr inbounds [3 x float]* %3, i64 1, i64 1
  %12 = load float* %arrayidx2.i60, align 4, !tbaa !4
  %sub4.i62 = fsub float %12, %8
  %arrayidx5.i63 = getelementptr inbounds [3 x float]* %3, i64 1, i64 2
  %13 = load float* %arrayidx5.i63, align 4, !tbaa !4
  %sub7.i65 = fsub float %13, %10
  %conv = fpext float %sub.i to double
  %conv22 = fpext float %sub4.i to double
  %conv24 = fpext float %sub7.i to double
  %conv26 = fpext float %sub.i59 to double
  %conv28 = fpext float %sub4.i62 to double
  %conv30 = fpext float %sub7.i65 to double
  %conv31 = fpext float %time to double
  %call32 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), double %conv, double %conv22, double %conv24, double %conv26, double %conv28, double %conv30, double %conv31) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %conv44 = fpext float %sub.i to double
  %conv46 = fpext float %sub4.i to double
  %conv48 = fpext float %sub7.i to double
  %conv49 = fpext float %time to double
  %call50 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), double %conv44, double %conv46, double %conv48, double %conv49) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %atoms = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  call void @write_sto_conf(i8* %0, i8* %1, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* null, [3 x float]* %box) #4
  call void @llvm.lifetime.end(i64 128, i8* %1) #1
  call void @llvm.lifetime.end(i64 128, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @write_sto_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @print_start(%struct.t_pull* nocapture %pull, i32 %step) #0 {
entry:
  %n = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp25 = icmp sgt i32 %0, 0
  br i1 %cmp25, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %out = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  %x_unc = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load %struct._IO_FILE** %out, align 8, !tbaa !3
  %2 = load [3 x float]** %x_unc, align 8, !tbaa !3
  %arrayidx3 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv, i64 0
  %3 = load float* %arrayidx3, align 4, !tbaa !4
  %conv = fpext float %3 to double
  %arrayidx8 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv, i64 1
  %4 = load float* %arrayidx8, align 4, !tbaa !4
  %conv9 = fpext float %4 to double
  %arrayidx14 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv, i64 2
  %5 = load float* %arrayidx14, align 4, !tbaa !4
  %conv15 = fpext float %5 to double
  %6 = trunc i64 %indvars.iv to i32
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([25 x i8]* @.str3, i64 0, i64 0), i32 %step, i32 %6, double %conv, double %conv9, double %conv15) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = load i32* %n, align 4, !tbaa !0
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %8, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @print_afm(%struct.t_pull* nocapture %pull, i32 %step) #0 {
entry:
  %n = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp27 = icmp sgt i32 %0, 0
  br i1 %cmp27, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bVerbose = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %out = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  %f12 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  %spring = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %1 = load i32* %bVerbose, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  %2 = load %struct._IO_FILE** %out, align 8, !tbaa !3
  %3 = load [3 x float]** %f12, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv, i64 2
  %4 = load float* %arrayidx14, align 4, !tbaa !4
  %conv15 = fpext float %4 to double
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load [3 x float]** %spring, align 8, !tbaa !3
  %arrayidx7 = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv, i64 2
  %6 = load float* %arrayidx7, align 4, !tbaa !4
  %conv8 = fpext float %6 to double
  %7 = trunc i64 %indvars.iv to i32
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0), i32 %step, i32 %7, double %conv15, double %conv8) #4
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), double %conv15) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = load i32* %n, align 4, !tbaa !0
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %9, %8
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @print_constraint(%struct.t_pull* %pull, [3 x float]* nocapture %f, i32 %step, [3 x float]* nocapture %box, i32 %niter) #0 {
entry:
  %tmp = alloca [3 x float], align 4
  %n = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp321 = icmp sgt i32 %0, 0
  br i1 %cmp321, label %for.body.lr.ph, label %entry.for.end82_crit_edge

entry.for.end82_crit_edge:                        ; preds = %entry
  %bVerbose83.pre = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  br label %for.end82

for.body.lr.ph:                                   ; preds = %entry
  %bCyl = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  %x_con = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 10
  %x_con16 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 10
  %arraydecay19 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 0
  %arrayidx9.i303 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 1
  %arrayidx10.i304 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 2
  %x_con7 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 10
  %bVerbose = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %out = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  %f75 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc81
  %indvars.iv325 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next326, %for.inc81 ]
  %1 = load i32* %bCyl, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  %2 = load [3 x float]** %x_con, align 8, !tbaa !3
  %arraydecay = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv325, i64 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %3 = load [3 x float]** %x_con7, align 8, !tbaa !3
  %arraydecay9 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv325, i64 0
  %4 = load float* %arraydecay, align 4, !tbaa !4
  %5 = load float* %arraydecay9, align 4, !tbaa !4
  %sub.i = fsub float %4, %5
  %arrayidx2.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv325, i64 1
  %6 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv325, i64 1
  %7 = load float* %arrayidx3.i, align 4, !tbaa !4
  %sub4.i = fsub float %6, %7
  %arrayidx5.i = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv325, i64 2
  %8 = load float* %arrayidx5.i, align 4, !tbaa !4
  %arrayidx6.i = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv325, i64 2
  %9 = load float* %arrayidx6.i, align 4, !tbaa !4
  %sub7.i = fsub float %8, %9
  br label %for.cond20.preheader

if.else:                                          ; preds = %for.body
  %10 = load [3 x float]** %x_con16, align 8, !tbaa !3
  %arraydecay18 = getelementptr inbounds [3 x float]* %10, i64 0, i64 0
  %11 = load float* %arraydecay, align 4, !tbaa !4
  %12 = load float* %arraydecay18, align 4, !tbaa !4
  %sub.i296 = fsub float %11, %12
  %arrayidx2.i297 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv325, i64 1
  %13 = load float* %arrayidx2.i297, align 4, !tbaa !4
  %arrayidx3.i298 = getelementptr inbounds [3 x float]* %10, i64 0, i64 1
  %14 = load float* %arrayidx3.i298, align 4, !tbaa !4
  %sub4.i299 = fsub float %13, %14
  %arrayidx5.i300 = getelementptr inbounds [3 x float]* %2, i64 %indvars.iv325, i64 2
  %15 = load float* %arrayidx5.i300, align 4, !tbaa !4
  %arrayidx6.i301 = getelementptr inbounds [3 x float]* %10, i64 0, i64 2
  %16 = load float* %arrayidx6.i301, align 4, !tbaa !4
  %sub7.i302 = fsub float %15, %16
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %if.else, %if.then
  %storemerge331 = phi float [ %sub.i, %if.then ], [ %sub.i296, %if.else ]
  %storemerge330 = phi float [ %sub4.i, %if.then ], [ %sub4.i299, %if.else ]
  %storemerge = phi float [ %sub7.i, %if.then ], [ %sub7.i302, %if.else ]
  store float %storemerge331, float* %arraydecay19, align 4, !tbaa !4
  store float %storemerge330, float* %arrayidx9.i303, align 4, !tbaa !4
  store float %storemerge, float* %arrayidx10.i304, align 4, !tbaa !4
  br label %for.body22

for.body22:                                       ; preds = %if.end54.for.body22_crit_edge, %for.cond20.preheader
  %17 = phi float [ %storemerge, %for.cond20.preheader ], [ %.pre329, %if.end54.for.body22_crit_edge ]
  %indvars.iv323 = phi i64 [ 2, %for.cond20.preheader ], [ %indvars.iv.next324, %if.end54.for.body22_crit_edge ]
  %arrayidx24 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 %indvars.iv323
  %conv = fpext float %17 to double
  %arrayidx27 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv323
  %arrayidx28 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv323, i64 %indvars.iv323
  %18 = load float* %arrayidx28, align 4, !tbaa !4
  %conv29 = fpext float %18 to double
  %mul = fmul double %conv29, -5.000000e-01
  %cmp30 = fcmp olt double %conv, %mul
  br i1 %cmp30, label %if.then32, label %if.end37

if.then32:                                        ; preds = %for.body22
  %arraydecay36 = getelementptr inbounds [3 x float]* %arrayidx27, i64 0, i64 0
  %19 = load float* %arraydecay19, align 4, !tbaa !4
  %20 = load float* %arraydecay36, align 4, !tbaa !4
  %add.i312 = fadd float %19, %20
  %21 = load float* %arrayidx9.i303, align 4, !tbaa !4
  %arrayidx3.i314 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv323, i64 1
  %22 = load float* %arrayidx3.i314, align 4, !tbaa !4
  %add4.i = fadd float %21, %22
  %23 = load float* %arrayidx10.i304, align 4, !tbaa !4
  %arrayidx6.i316 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv323, i64 2
  %24 = load float* %arrayidx6.i316, align 4, !tbaa !4
  %add7.i = fadd float %23, %24
  store float %add.i312, float* %arraydecay19, align 4, !tbaa !4
  store float %add4.i, float* %arrayidx9.i303, align 4, !tbaa !4
  store float %add7.i, float* %arrayidx10.i304, align 4, !tbaa !4
  %.pre = load float* %arrayidx24, align 4, !tbaa !4
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %for.body22
  %25 = phi float [ %.pre, %if.then32 ], [ %17, %for.body22 ]
  %conv40 = fpext float %25 to double
  %mul46 = fmul double %conv29, 5.000000e-01
  %cmp47 = fcmp ogt double %conv40, %mul46
  br i1 %cmp47, label %if.then49, label %if.end54

if.then49:                                        ; preds = %if.end37
  %arraydecay53 = getelementptr inbounds [3 x float]* %arrayidx27, i64 0, i64 0
  %26 = load float* %arraydecay19, align 4, !tbaa !4
  %27 = load float* %arraydecay53, align 4, !tbaa !4
  %sub.i305 = fsub float %26, %27
  %28 = load float* %arrayidx9.i303, align 4, !tbaa !4
  %arrayidx3.i307 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv323, i64 1
  %29 = load float* %arrayidx3.i307, align 4, !tbaa !4
  %sub4.i308 = fsub float %28, %29
  %30 = load float* %arrayidx10.i304, align 4, !tbaa !4
  %arrayidx6.i310 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv323, i64 2
  %31 = load float* %arrayidx6.i310, align 4, !tbaa !4
  %sub7.i311 = fsub float %30, %31
  store float %sub.i305, float* %arraydecay19, align 4, !tbaa !4
  store float %sub4.i308, float* %arrayidx9.i303, align 4, !tbaa !4
  store float %sub7.i311, float* %arrayidx10.i304, align 4, !tbaa !4
  %.pre327 = load float* %arrayidx24, align 4, !tbaa !4
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.end37
  %32 = phi float [ %.pre327, %if.then49 ], [ %25, %if.end37 ]
  %arrayidx56 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv323
  %33 = load float* %arrayidx56, align 4, !tbaa !4
  %mul59 = fmul float %33, %32
  store float %mul59, float* %arrayidx24, align 4, !tbaa !4
  %indvars.iv.next324 = add i64 %indvars.iv323, -1
  %34 = trunc i64 %indvars.iv323 to i32
  %cmp21 = icmp sgt i32 %34, 0
  br i1 %cmp21, label %if.end54.for.body22_crit_edge, label %for.end

if.end54.for.body22_crit_edge:                    ; preds = %if.end54
  %arrayidx24.phi.trans.insert = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 %indvars.iv.next324
  %.pre329 = load float* %arrayidx24.phi.trans.insert, align 4, !tbaa !4
  br label %for.body22

for.end:                                          ; preds = %if.end54
  %35 = load i32* %bVerbose, align 4, !tbaa !0
  %tobool60 = icmp eq i32 %35, 0
  %36 = load %struct._IO_FILE** %out, align 8, !tbaa !3
  br i1 %tobool60, label %if.else71, label %if.then61

if.then61:                                        ; preds = %for.end
  %37 = load float* %arraydecay19, align 4, !tbaa !4
  %mul.i = fmul float %37, %37
  %38 = load float* %arrayidx9.i303, align 4, !tbaa !4
  %mul4.i = fmul float %38, %38
  %add.i = fadd float %mul.i, %mul4.i
  %39 = load float* %arrayidx10.i304, align 4, !tbaa !4
  %mul7.i = fmul float %39, %39
  %add8.i = fadd float %add.i, %mul7.i
  %conv9.i = call float @sqrtf(float %add8.i) #2
  %conv63 = fpext float %conv9.i to double
  %40 = load [3 x float]** %f75, align 8, !tbaa !3
  %arrayidx68 = getelementptr inbounds [3 x float]* %40, i64 %indvars.iv325, i64 2
  %41 = load float* %arrayidx68, align 4, !tbaa !4
  %conv69 = fpext float %41 to double
  %42 = trunc i64 %indvars.iv325 to i32
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i32 %step, i32 %42, double %conv63, double %conv69, i32 %niter) #4
  br label %for.inc81

if.else71:                                        ; preds = %for.end
  %43 = load [3 x float]** %f75, align 8, !tbaa !3
  %arrayidx77 = getelementptr inbounds [3 x float]* %43, i64 %indvars.iv325, i64 2
  %44 = load float* %arrayidx77, align 4, !tbaa !4
  %conv78 = fpext float %44 to double
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), double %conv78) #4
  br label %for.inc81

for.inc81:                                        ; preds = %if.then61, %if.else71
  %indvars.iv.next326 = add i64 %indvars.iv325, 1
  %45 = load i32* %n, align 4, !tbaa !0
  %46 = trunc i64 %indvars.iv.next326 to i32
  %cmp = icmp slt i32 %46, %45
  br i1 %cmp, label %for.body, label %for.end82

for.end82:                                        ; preds = %for.inc81, %entry.for.end82_crit_edge
  %bVerbose83.pre-phi = phi i32* [ %bVerbose83.pre, %entry.for.end82_crit_edge ], [ %bVerbose, %for.inc81 ]
  %47 = phi i32 [ %0, %entry.for.end82_crit_edge ], [ %45, %for.inc81 ]
  %48 = load i32* %bVerbose83.pre-phi, align 4, !tbaa !0
  %tobool84 = icmp eq i32 %48, 0
  br i1 %tobool84, label %if.end88, label %for.cond92.preheader

if.end88:                                         ; preds = %for.end82
  %out86 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  %49 = load %struct._IO_FILE** %out86, align 8, !tbaa !3
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %49)
  %.pr = load i32* %bVerbose83.pre-phi, align 4, !tbaa !0
  %tobool90 = icmp eq i32 %.pr, 0
  br i1 %tobool90, label %if.end201, label %if.end88.for.cond92.preheader_crit_edge

if.end88.for.cond92.preheader_crit_edge:          ; preds = %if.end88
  %.pre328 = load i32* %n, align 4, !tbaa !0
  br label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %if.end88.for.cond92.preheader_crit_edge, %for.end82
  %50 = phi i32 [ %.pre328, %if.end88.for.cond92.preheader_crit_edge ], [ %47, %for.end82 ]
  %cmp95318 = icmp sgt i32 %50, 0
  br i1 %cmp95318, label %for.body97.lr.ph, label %if.end201

for.body97.lr.ph:                                 ; preds = %for.cond92.preheader
  %bCyl98 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  %x_ref149 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 8
  %x_ref154 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 8
  %arraydecay157 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 0
  %arrayidx9.i292 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 1
  %arrayidx10.i293 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 2
  %x_unc159 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %x_unc164 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %x_con169 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 10
  %x_con174 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 10
  %out101 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  %r = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 7
  %rc = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 8
  %grps = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 4
  %x_ref = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 8
  %x_unc = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %x_con130 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 10
  %f142 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  br label %for.body97

for.body97:                                       ; preds = %for.body97.lr.ph, %for.inc198
  %indvars.iv = phi i64 [ 0, %for.body97.lr.ph ], [ %indvars.iv.next, %for.inc198 ]
  %51 = load i32* %bCyl98, align 4, !tbaa !0
  %tobool99 = icmp eq i32 %51, 0
  br i1 %tobool99, label %if.else147, label %if.then100

if.then100:                                       ; preds = %for.body97
  %52 = load %struct._IO_FILE** %out101, align 8, !tbaa !3
  %53 = load float* %r, align 4, !tbaa !4
  %conv102 = fpext float %53 to double
  %54 = load float* %rc, align 4, !tbaa !4
  %conv103 = fpext float %54 to double
  %55 = load i8*** %grps, align 8, !tbaa !3
  %arrayidx106 = getelementptr inbounds i8** %55, i64 %indvars.iv
  %56 = load i8** %arrayidx106, align 8, !tbaa !3
  %57 = load [3 x float]** %x_ref, align 8, !tbaa !3
  %arrayidx110 = getelementptr inbounds [3 x float]* %57, i64 %indvars.iv, i64 2
  %58 = load float* %arrayidx110, align 4, !tbaa !4
  %59 = load [3 x float]** %x_ref154, align 8, !tbaa !3
  %arrayidx115 = getelementptr inbounds [3 x float]* %59, i64 %indvars.iv, i64 2
  %60 = load float* %arrayidx115, align 4, !tbaa !4
  %sub = fsub float %58, %60
  %conv116 = fpext float %sub to double
  %61 = load [3 x float]** %x_unc, align 8, !tbaa !3
  %arrayidx120 = getelementptr inbounds [3 x float]* %61, i64 %indvars.iv, i64 2
  %62 = load float* %arrayidx120, align 4, !tbaa !4
  %63 = load [3 x float]** %x_unc164, align 8, !tbaa !3
  %arrayidx125 = getelementptr inbounds [3 x float]* %63, i64 %indvars.iv, i64 2
  %64 = load float* %arrayidx125, align 4, !tbaa !4
  %sub126 = fsub float %62, %64
  %conv127 = fpext float %sub126 to double
  %65 = load [3 x float]** %x_con130, align 8, !tbaa !3
  %arrayidx132 = getelementptr inbounds [3 x float]* %65, i64 %indvars.iv, i64 2
  %66 = load float* %arrayidx132, align 4, !tbaa !4
  %67 = load [3 x float]** %x_con174, align 8, !tbaa !3
  %arrayidx137 = getelementptr inbounds [3 x float]* %67, i64 %indvars.iv, i64 2
  %68 = load float* %arrayidx137, align 4, !tbaa !4
  %sub138 = fsub float %66, %68
  %conv139 = fpext float %sub138 to double
  %69 = load [3 x float]** %f142, align 8, !tbaa !3
  %arrayidx144 = getelementptr inbounds [3 x float]* %69, i64 %indvars.iv, i64 2
  %70 = load float* %arrayidx144, align 4, !tbaa !4
  %conv145 = fpext float %70 to double
  %71 = trunc i64 %indvars.iv to i32
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([136 x i8]* @.str9, i64 0, i64 0), i32 %step, double %conv102, double %conv103, i32 %71, i8* %56, double %conv116, double %conv127, double %conv139, double %conv145) #4
  br label %for.inc198

if.else147:                                       ; preds = %for.body97
  %72 = load [3 x float]** %x_ref149, align 8, !tbaa !3
  %arraydecay151 = getelementptr inbounds [3 x float]* %72, i64 0, i64 0
  %73 = load [3 x float]** %x_ref154, align 8, !tbaa !3
  %arraydecay156 = getelementptr inbounds [3 x float]* %73, i64 %indvars.iv, i64 0
  %74 = load float* %arraydecay151, align 4, !tbaa !4
  %75 = load float* %arraydecay156, align 4, !tbaa !4
  %sub.i285 = fsub float %74, %75
  %arrayidx2.i286 = getelementptr inbounds [3 x float]* %72, i64 0, i64 1
  %76 = load float* %arrayidx2.i286, align 4, !tbaa !4
  %arrayidx3.i287 = getelementptr inbounds [3 x float]* %73, i64 %indvars.iv, i64 1
  %77 = load float* %arrayidx3.i287, align 4, !tbaa !4
  %sub4.i288 = fsub float %76, %77
  %arrayidx5.i289 = getelementptr inbounds [3 x float]* %72, i64 0, i64 2
  %78 = load float* %arrayidx5.i289, align 4, !tbaa !4
  %arrayidx6.i290 = getelementptr inbounds [3 x float]* %73, i64 %indvars.iv, i64 2
  %79 = load float* %arrayidx6.i290, align 4, !tbaa !4
  %sub7.i291 = fsub float %78, %79
  store float %sub.i285, float* %arraydecay157, align 4, !tbaa !4
  store float %sub4.i288, float* %arrayidx9.i292, align 4, !tbaa !4
  store float %sub7.i291, float* %arrayidx10.i293, align 4, !tbaa !4
  %80 = load [3 x float]** %x_unc159, align 8, !tbaa !3
  %arraydecay161 = getelementptr inbounds [3 x float]* %80, i64 0, i64 0
  %81 = load [3 x float]** %x_unc164, align 8, !tbaa !3
  %arraydecay166 = getelementptr inbounds [3 x float]* %81, i64 %indvars.iv, i64 0
  %82 = load float* %arraydecay161, align 4, !tbaa !4
  %83 = load float* %arraydecay166, align 4, !tbaa !4
  %sub.i276 = fsub float %82, %83
  %arrayidx2.i277 = getelementptr inbounds [3 x float]* %80, i64 0, i64 1
  %84 = load float* %arrayidx2.i277, align 4, !tbaa !4
  %arrayidx3.i278 = getelementptr inbounds [3 x float]* %81, i64 %indvars.iv, i64 1
  %85 = load float* %arrayidx3.i278, align 4, !tbaa !4
  %sub4.i279 = fsub float %84, %85
  %arrayidx5.i280 = getelementptr inbounds [3 x float]* %80, i64 0, i64 2
  %86 = load float* %arrayidx5.i280, align 4, !tbaa !4
  %arrayidx6.i281 = getelementptr inbounds [3 x float]* %81, i64 %indvars.iv, i64 2
  %87 = load float* %arrayidx6.i281, align 4, !tbaa !4
  %sub7.i282 = fsub float %86, %87
  %88 = load [3 x float]** %x_con169, align 8, !tbaa !3
  %arraydecay171 = getelementptr inbounds [3 x float]* %88, i64 0, i64 0
  %89 = load [3 x float]** %x_con174, align 8, !tbaa !3
  %arraydecay176 = getelementptr inbounds [3 x float]* %89, i64 %indvars.iv, i64 0
  %90 = load float* %arraydecay171, align 4, !tbaa !4
  %91 = load float* %arraydecay176, align 4, !tbaa !4
  %sub.i267 = fsub float %90, %91
  %arrayidx2.i268 = getelementptr inbounds [3 x float]* %88, i64 0, i64 1
  %92 = load float* %arrayidx2.i268, align 4, !tbaa !4
  %arrayidx3.i269 = getelementptr inbounds [3 x float]* %89, i64 %indvars.iv, i64 1
  %93 = load float* %arrayidx3.i269, align 4, !tbaa !4
  %sub4.i270 = fsub float %92, %93
  %arrayidx5.i271 = getelementptr inbounds [3 x float]* %88, i64 0, i64 2
  %94 = load float* %arrayidx5.i271, align 4, !tbaa !4
  %arrayidx6.i272 = getelementptr inbounds [3 x float]* %89, i64 %indvars.iv, i64 2
  %95 = load float* %arrayidx6.i272, align 4, !tbaa !4
  %sub7.i273 = fsub float %94, %95
  %96 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %conv179 = fpext float %sub.i285 to double
  %conv181 = fpext float %sub4.i288 to double
  %conv183 = fpext float %sub7.i291 to double
  %conv185 = fpext float %sub.i276 to double
  %conv187 = fpext float %sub4.i279 to double
  %conv189 = fpext float %sub7.i282 to double
  %conv191 = fpext float %sub.i267 to double
  %conv193 = fpext float %sub4.i270 to double
  %conv195 = fpext float %sub7.i273 to double
  %97 = trunc i64 %indvars.iv to i32
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([74 x i8]* @.str10, i64 0, i64 0), i32 %97, double %conv179, double %conv181, double %conv183, double %conv185, double %conv187, double %conv189, double %conv191, double %conv193, double %conv195) #4
  br label %for.inc198

for.inc198:                                       ; preds = %if.then100, %if.else147
  %indvars.iv.next = add i64 %indvars.iv, 1
  %98 = load i32* %n, align 4, !tbaa !0
  %99 = trunc i64 %indvars.iv.next to i32
  %cmp95 = icmp slt i32 %99, %98
  br i1 %cmp95, label %for.body97, label %if.end201

if.end201:                                        ; preds = %for.cond92.preheader, %for.inc198, %if.end88
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @print_umbrella(%struct.t_pull* nocapture %pull, i32 %step) #0 {
entry:
  %bVerbose = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %0 = load i32* %bVerbose, align 4, !tbaa !0
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %for.cond34.preheader, label %if.then

for.cond34.preheader:                             ; preds = %entry
  %n36 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %1 = load i32* %n36, align 4, !tbaa !0
  %cmp37115 = icmp sgt i32 %1, 0
  %out52 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  br i1 %cmp37115, label %for.cond40.preheader.lr.ph, label %for.end74

for.cond40.preheader.lr.ph:                       ; preds = %for.cond34.preheader
  %x_unc56 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %f63 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  br label %for.cond40.preheader

if.then:                                          ; preds = %entry
  %out = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  %2 = load %struct._IO_FILE** %out, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %step) #4
  %n = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %3 = load i32* %n, align 4, !tbaa !0
  %cmp118 = icmp sgt i32 %3, 0
  br i1 %cmp118, label %for.cond2.preheader.lr.ph, label %for.end31

for.cond2.preheader.lr.ph:                        ; preds = %if.then
  %x_ref = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 8
  %x_unc = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %f = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.inc29
  %indvars.iv126 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %indvars.iv.next127, %for.inc29 ]
  br label %for.body4

for.body4:                                        ; preds = %for.inc, %for.cond2.preheader
  %indvars.iv122 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next123, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv122
  %4 = load float* %arrayidx, align 4, !tbaa !4
  %fabsf110 = tail call float @fabsf(float %4) #5
  %5 = fpext float %fabsf110 to double
  %cmp6 = fcmp ogt double %5, 1.200000e-38
  br i1 %cmp6, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body4
  %6 = load %struct._IO_FILE** %out, align 8, !tbaa !3
  %7 = load [3 x float]** %x_ref, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds [3 x float]* %7, i64 %indvars.iv126, i64 %indvars.iv122
  %8 = load float* %arrayidx14, align 4, !tbaa !4
  %conv15 = fpext float %8 to double
  %9 = load [3 x float]** %x_unc, align 8, !tbaa !3
  %arrayidx20 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv126, i64 %indvars.iv122
  %10 = load float* %arrayidx20, align 4, !tbaa !4
  %conv21 = fpext float %10 to double
  %11 = load [3 x float]** %f, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv126, i64 %indvars.iv122
  %12 = load float* %arrayidx26, align 4, !tbaa !4
  %conv27 = fpext float %12 to double
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %conv15, double %conv21, double %conv27) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then8
  %indvars.iv.next123 = add i64 %indvars.iv122, 1
  %lftr.wideiv124 = trunc i64 %indvars.iv.next123 to i32
  %exitcond125 = icmp eq i32 %lftr.wideiv124, 3
  br i1 %exitcond125, label %for.inc29, label %for.body4

for.inc29:                                        ; preds = %for.inc
  %indvars.iv.next127 = add i64 %indvars.iv126, 1
  %13 = load i32* %n, align 4, !tbaa !0
  %14 = trunc i64 %indvars.iv.next127 to i32
  %cmp = icmp slt i32 %14, %13
  br i1 %cmp, label %for.cond2.preheader, label %for.end31

for.end31:                                        ; preds = %for.inc29, %if.then
  %15 = load %struct._IO_FILE** %out, align 8, !tbaa !3
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %15)
  br label %if.end77

for.cond40.preheader:                             ; preds = %for.cond40.preheader.lr.ph, %for.inc72
  %indvars.iv120 = phi i64 [ 0, %for.cond40.preheader.lr.ph ], [ %indvars.iv.next121, %for.inc72 ]
  br label %for.body43

for.body43:                                       ; preds = %for.inc69, %for.cond40.preheader
  %indvars.iv = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next, %for.inc69 ]
  %arrayidx46 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv
  %16 = load float* %arrayidx46, align 4, !tbaa !4
  %fabsf = tail call float @fabsf(float %16) #5
  %17 = fpext float %fabsf to double
  %cmp49 = fcmp ogt double %17, 1.200000e-38
  br i1 %cmp49, label %if.then51, label %for.inc69

if.then51:                                        ; preds = %for.body43
  %18 = load %struct._IO_FILE** %out52, align 8, !tbaa !3
  %19 = load [3 x float]** %x_unc56, align 8, !tbaa !3
  %arrayidx58 = getelementptr inbounds [3 x float]* %19, i64 %indvars.iv120, i64 %indvars.iv
  %20 = load float* %arrayidx58, align 4, !tbaa !4
  %conv59 = fpext float %20 to double
  %21 = load [3 x float]** %f63, align 8, !tbaa !3
  %arrayidx65 = getelementptr inbounds [3 x float]* %21, i64 %indvars.iv120, i64 %indvars.iv
  %22 = load float* %arrayidx65, align 4, !tbaa !4
  %conv66 = fpext float %22 to double
  %call67 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0), double %conv59, double %conv66) #4
  br label %for.inc69

for.inc69:                                        ; preds = %for.body43, %if.then51
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc72, label %for.body43

for.inc72:                                        ; preds = %for.inc69
  %indvars.iv.next121 = add i64 %indvars.iv120, 1
  %23 = load i32* %n36, align 4, !tbaa !0
  %24 = trunc i64 %indvars.iv.next121 to i32
  %cmp37 = icmp slt i32 %24, %23
  br i1 %cmp37, label %for.cond40.preheader, label %for.end74

for.end74:                                        ; preds = %for.cond34.preheader, %for.inc72
  %25 = load %struct._IO_FILE** %out52, align 8, !tbaa !3
  %fputc113 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %25)
  br label %if.end77

if.end77:                                         ; preds = %for.end74, %for.end31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @read_pullparams(%struct.t_pull* %pull, i8* %infile, i8* %outfile) #0 {
entry:
  %inp = alloca %struct.t_inpfile*, align 8
  %ninp = alloca i32, align 4
  %dummy = alloca [4096 x i8], align 16
  %grp1buf = alloca [4096 x i8], align 16
  %grp2buf = alloca [4096 x i8], align 16
  %grp3buf = alloca [4096 x i8], align 16
  %grp4buf = alloca [4096 x i8], align 16
  %grp5buf = alloca [4096 x i8], align 16
  %bf1 = alloca [4096 x i8], align 16
  %bf2 = alloca [4096 x i8], align 16
  %dir = alloca [4096 x i8], align 16
  %nerror = alloca i32, align 4
  %0 = getelementptr inbounds [4096 x i8]* %dummy, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  %1 = getelementptr inbounds [4096 x i8]* %grp1buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #1
  %2 = getelementptr inbounds [4096 x i8]* %grp2buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %2) #1
  %3 = getelementptr inbounds [4096 x i8]* %grp3buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %3) #1
  %4 = getelementptr inbounds [4096 x i8]* %grp4buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %4) #1
  %5 = getelementptr inbounds [4096 x i8]* %grp5buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %5) #1
  %6 = getelementptr inbounds [4096 x i8]* %bf1, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %6) #1
  %7 = getelementptr inbounds [4096 x i8]* %bf2, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %7) #1
  %8 = getelementptr inbounds [4096 x i8]* %dir, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %8) #1
  store i32 0, i32* %nerror, align 4, !tbaa !0
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([27 x i8]* @.str27, i64 0, i64 0), i8* %infile) #4
  %call16 = call %struct.t_inpfile* @read_inpfile(i8* %infile, i32* %ninp) #4
  store %struct.t_inpfile* %call16, %struct.t_inpfile** %inp, align 8, !tbaa !3
  %call17 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([10 x i8]* @.str28, i64 0, i64 0), i8* null) #4
  %cmp = icmp eq i8* %call17, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call18 = call i8* @strcpy(i8* %0, i8* %call17) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call19 = call i32 @get_eeenum(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str29, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*]* @read_pullparams.verbosetypes, i64 0, i64 0), i32* %nerror, i32 1) #4
  %bVerbose = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  store i32 %call19, i32* %bVerbose, align 4, !tbaa !0
  %call20 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([50 x i8]* @.str30, i64 0, i64 0), i8* null) #4
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end
  %call24 = call i8* @strcpy(i8* %0, i8* %call20) #4
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then22
  %call26 = call i32 @get_eeenum(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str31, i64 0, i64 0), i8** getelementptr inbounds ([6 x i8*]* @read_pullparams.runtypes, i64 0, i64 0), i32* %nerror, i32 1) #4
  %call27 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([22 x i8]* @.str32, i64 0, i64 0), i8* null) #4
  %cmp28 = icmp eq i8* %call27, null
  br i1 %cmp28, label %if.end32, label %if.then29

if.then29:                                        ; preds = %if.end25
  %call31 = call i8* @strcpy(i8* %0, i8* %call27) #4
  br label %if.end32

if.end32:                                         ; preds = %if.end25, %if.then29
  %call33 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #4
  %cmp34 = icmp eq i8* %call33, null
  br i1 %cmp34, label %if.end38, label %if.then35

if.then35:                                        ; preds = %if.end32
  %call37 = call i8* @strcpy(i8* %1, i8* %call33) #4
  br label %if.end38

if.end38:                                         ; preds = %if.end32, %if.then35
  %call39 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #4
  %cmp40 = icmp eq i8* %call39, null
  br i1 %cmp40, label %if.end44, label %if.then41

if.then41:                                        ; preds = %if.end38
  %call43 = call i8* @strcpy(i8* %2, i8* %call39) #4
  br label %if.end44

if.end44:                                         ; preds = %if.end38, %if.then41
  %call45 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #4
  %cmp46 = icmp eq i8* %call45, null
  br i1 %cmp46, label %if.end50, label %if.then47

if.then47:                                        ; preds = %if.end44
  %call49 = call i8* @strcpy(i8* %3, i8* %call45) #4
  br label %if.end50

if.end50:                                         ; preds = %if.end44, %if.then47
  %call51 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #4
  %cmp52 = icmp eq i8* %call51, null
  br i1 %cmp52, label %if.end56, label %if.then53

if.then53:                                        ; preds = %if.end50
  %call55 = call i8* @strcpy(i8* %4, i8* %call51) #4
  br label %if.end56

if.end56:                                         ; preds = %if.end50, %if.then53
  %call57 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([36 x i8]* @.str38, i64 0, i64 0), i8* null) #4
  %cmp58 = icmp eq i8* %call57, null
  br i1 %cmp58, label %if.end62, label %if.then59

if.then59:                                        ; preds = %if.end56
  %call61 = call i8* @strcpy(i8* %0, i8* %call57) #4
  br label %if.end62

if.end62:                                         ; preds = %if.end56, %if.then59
  %call63 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #4
  %cmp64 = icmp eq i8* %call63, null
  br i1 %cmp64, label %if.end68, label %if.then65

if.then65:                                        ; preds = %if.end62
  %call67 = call i8* @strcpy(i8* %5, i8* %call63) #4
  br label %if.end68

if.end68:                                         ; preds = %if.end62, %if.then65
  %call69 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([46 x i8]* @.str40, i64 0, i64 0), i8* null) #4
  %cmp70 = icmp eq i8* %call69, null
  br i1 %cmp70, label %if.end74, label %if.then71

if.then71:                                        ; preds = %if.end68
  %call73 = call i8* @strcpy(i8* %0, i8* %call69) #4
  br label %if.end74

if.end74:                                         ; preds = %if.end68, %if.then71
  %call75 = call i32 @get_eeenum(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str41, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*]* @read_pullparams.reftypes, i64 0, i64 0), i32* %nerror, i32 1) #4
  %call76 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([59 x i8]* @.str42, i64 0, i64 0), i8* null) #4
  %cmp77 = icmp eq i8* %call76, null
  br i1 %cmp77, label %if.end81, label %if.then78

if.then78:                                        ; preds = %if.end74
  %call80 = call i8* @strcpy(i8* %0, i8* %call76) #4
  br label %if.end81

if.end81:                                         ; preds = %if.end74, %if.then78
  %call82 = call i32 @get_eint(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([7 x i8]* @.str43, i64 0, i64 0), i32 1) #4
  %reflag = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 24
  store i32 %call82, i32* %reflag, align 4, !tbaa !0
  %call83 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([59 x i8]* @.str44, i64 0, i64 0), i8* null) #4
  %cmp84 = icmp eq i8* %call83, null
  br i1 %cmp84, label %if.end88, label %if.then85

if.then85:                                        ; preds = %if.end81
  %call87 = call i8* @strcpy(i8* %0, i8* %call83) #4
  br label %if.end88

if.end88:                                         ; preds = %if.end81, %if.then85
  %call89 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([10 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str46, i64 0, i64 0)) #4
  %cmp90 = icmp eq i8* %call89, null
  br i1 %cmp90, label %if.end94, label %if.then91

if.then91:                                        ; preds = %if.end88
  %call93 = call i8* @strcpy(i8* %8, i8* %call89) #4
  br label %if.end94

if.end94:                                         ; preds = %if.end88, %if.then91
  %call95 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([56 x i8]* @.str47, i64 0, i64 0), i8* null) #4
  %cmp96 = icmp eq i8* %call95, null
  br i1 %cmp96, label %if.end100, label %if.then97

if.then97:                                        ; preds = %if.end94
  %call99 = call i8* @strcpy(i8* %0, i8* %call95) #4
  br label %if.end100

if.end100:                                        ; preds = %if.end94, %if.then97
  %call101 = call i32 @get_eeenum(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*]* @read_pullparams.reversetypes, i64 0, i64 0), i32* %nerror, i32 1) #4
  %bReverse102 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 18
  store i32 %call101, i32* %bReverse102, align 4, !tbaa !0
  %call103 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([34 x i8]* @.str49, i64 0, i64 0), i8* null) #4
  %cmp104 = icmp eq i8* %call103, null
  br i1 %cmp104, label %if.end108, label %if.then105

if.then105:                                       ; preds = %if.end100
  %call107 = call i8* @strcpy(i8* %0, i8* %call103) #4
  br label %if.end108

if.end108:                                        ; preds = %if.end100, %if.then105
  %call109 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([57 x i8]* @.str50, i64 0, i64 0), i8* null) #4
  %cmp110 = icmp eq i8* %call109, null
  br i1 %cmp110, label %if.end114, label %if.then111

if.then111:                                       ; preds = %if.end108
  %call113 = call i8* @strcpy(i8* %0, i8* %call109) #4
  br label %if.end114

if.end114:                                        ; preds = %if.end108, %if.then111
  %call115 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([2 x i8]* @.str51, i64 0, i64 0), float 0.000000e+00) #4
  %r = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 7
  store float %call115, float* %r, align 4, !tbaa !4
  %call116 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([56 x i8]* @.str52, i64 0, i64 0), i8* null) #4
  %cmp117 = icmp eq i8* %call116, null
  br i1 %cmp117, label %if.end121, label %if.then118

if.then118:                                       ; preds = %if.end114
  %call120 = call i8* @strcpy(i8* %0, i8* %call116) #4
  br label %if.end121

if.end121:                                        ; preds = %if.end114, %if.then118
  %call122 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([3 x i8]* @.str53, i64 0, i64 0), float 0.000000e+00) #4
  %rc = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 8
  store float %call122, float* %rc, align 4, !tbaa !4
  %call123 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([56 x i8]* @.str54, i64 0, i64 0), i8* null) #4
  %cmp124 = icmp eq i8* %call123, null
  br i1 %cmp124, label %if.end128, label %if.then125

if.then125:                                       ; preds = %if.end121
  %call127 = call i8* @strcpy(i8* %0, i8* %call123) #4
  br label %if.end128

if.end128:                                        ; preds = %if.end121, %if.then125
  %call129 = call i32 @get_eint(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([7 x i8]* @.str55, i64 0, i64 0), i32 1) #4
  %update = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 23
  store i32 %call129, i32* %update, align 4, !tbaa !0
  %call130 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([26 x i8]* @.str56, i64 0, i64 0), i8* null) #4
  %cmp131 = icmp eq i8* %call130, null
  br i1 %cmp131, label %if.end135, label %if.then132

if.then132:                                       ; preds = %if.end128
  %call134 = call i8* @strcpy(i8* %0, i8* %call130) #4
  br label %if.end135

if.end135:                                        ; preds = %if.end128, %if.then132
  %call136 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([34 x i8]* @.str57, i64 0, i64 0), i8* null) #4
  %cmp137 = icmp eq i8* %call136, null
  br i1 %cmp137, label %if.end141, label %if.then138

if.then138:                                       ; preds = %if.end135
  %call140 = call i8* @strcpy(i8* %0, i8* %call136) #4
  br label %if.end141

if.end141:                                        ; preds = %if.end135, %if.then138
  %call142 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([21 x i8]* @.str58, i64 0, i64 0), float 0x3EB0C6F7A0000000) #4
  %constr_tol = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 15
  store float %call142, float* %constr_tol, align 4, !tbaa !4
  %call143 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([15 x i8]* @.str59, i64 0, i64 0), i8* null) #4
  %cmp144 = icmp eq i8* %call143, null
  br i1 %cmp144, label %if.end148, label %if.then145

if.then145:                                       ; preds = %if.end141
  %call147 = call i8* @strcpy(i8* %0, i8* %call143) #4
  br label %if.end148

if.end148:                                        ; preds = %if.end141, %if.then145
  %call149 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([27 x i8]* @.str60, i64 0, i64 0), i8* null) #4
  %cmp150 = icmp eq i8* %call149, null
  br i1 %cmp150, label %if.end154, label %if.then151

if.then151:                                       ; preds = %if.end148
  %call153 = call i8* @strcpy(i8* %0, i8* %call149) #4
  br label %if.end154

if.end154:                                        ; preds = %if.end148, %if.then151
  %call155 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([9 x i8]* @.str61, i64 0, i64 0), float 0.000000e+00) #4
  %rate = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 21
  store float %call155, float* %rate, align 4, !tbaa !4
  %call156 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([33 x i8]* @.str62, i64 0, i64 0), i8* null) #4
  %cmp157 = icmp eq i8* %call156, null
  br i1 %cmp157, label %if.end161, label %if.then158

if.then158:                                       ; preds = %if.end154
  %call160 = call i8* @strcpy(i8* %0, i8* %call156) #4
  br label %if.end161

if.end161:                                        ; preds = %if.end154, %if.then158
  %call162 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([14 x i8]* @.str63, i64 0, i64 0), float 0.000000e+00) #4
  %k = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 20
  store float %call162, float* %k, align 4, !tbaa !4
  %call163 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([29 x i8]* @.str64, i64 0, i64 0), i8* null) #4
  %cmp164 = icmp eq i8* %call163, null
  br i1 %cmp164, label %if.end168, label %if.then165

if.then165:                                       ; preds = %if.end161
  %call167 = call i8* @strcpy(i8* %0, i8* %call163) #4
  br label %if.end168

if.end168:                                        ; preds = %if.end161, %if.then165
  %call169 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([56 x i8]* @.str65, i64 0, i64 0), i8* null) #4
  %cmp170 = icmp eq i8* %call169, null
  br i1 %cmp170, label %if.end174, label %if.then171

if.then171:                                       ; preds = %if.end168
  %call173 = call i8* @strcpy(i8* %0, i8* %call169) #4
  br label %if.end174

if.end174:                                        ; preds = %if.end168, %if.then171
  %call175 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([6 x i8]* @.str66, i64 0, i64 0), float 0.000000e+00) #4
  %um_width = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 22
  store float %call175, float* %um_width, align 4, !tbaa !4
  %call176 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([30 x i8]* @.str67, i64 0, i64 0), i8* null) #4
  %cmp177 = icmp eq i8* %call176, null
  br i1 %cmp177, label %if.end181, label %if.then178

if.then178:                                       ; preds = %if.end174
  %call180 = call i8* @strcpy(i8* %0, i8* %call176) #4
  br label %if.end181

if.end181:                                        ; preds = %if.end174, %if.then178
  %call182 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([68 x i8]* @.str68, i64 0, i64 0), i8* null) #4
  %cmp183 = icmp eq i8* %call182, null
  br i1 %cmp183, label %if.end187, label %if.then184

if.then184:                                       ; preds = %if.end181
  %call186 = call i8* @strcpy(i8* %0, i8* %call182) #4
  br label %if.end187

if.end187:                                        ; preds = %if.end181, %if.then184
  %call188 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([10 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #4
  %cmp189 = icmp eq i8* %call188, null
  br i1 %cmp189, label %if.end193, label %if.then190

if.then190:                                       ; preds = %if.end187
  %call192 = call i8* @strcpy(i8* %6, i8* %call188) #4
  br label %if.end193

if.end193:                                        ; preds = %if.end187, %if.then190
  %call194 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([10 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #4
  %cmp195 = icmp eq i8* %call194, null
  br i1 %cmp195, label %if.end199, label %if.then196

if.then196:                                       ; preds = %if.end193
  %call198 = call i8* @strcpy(i8* %7, i8* %call194) #4
  br label %if.end199

if.end199:                                        ; preds = %if.end193, %if.then196
  %call200 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([10 x i8]* @.str71, i64 0, i64 0), float 0x3FA99999A0000000) #4
  %tolerance = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 14
  store float %call200, float* %tolerance, align 4, !tbaa !4
  %call201 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([50 x i8]* @.str72, i64 0, i64 0), i8* null) #4
  %cmp202 = icmp eq i8* %call201, null
  br i1 %cmp202, label %if.end206, label %if.then203

if.then203:                                       ; preds = %if.end199
  %call205 = call i8* @strcpy(i8* %0, i8* %call201) #4
  br label %if.end206

if.end206:                                        ; preds = %if.end199, %if.then203
  %call207 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([17 x i8]* @.str73, i64 0, i64 0), float 0.000000e+00) #4
  %xlt_rate = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 11
  store float %call207, float* %xlt_rate, align 4, !tbaa !4
  %call208 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([56 x i8]* @.str74, i64 0, i64 0), i8* null) #4
  %cmp209 = icmp eq i8* %call208, null
  br i1 %cmp209, label %if.end213, label %if.then210

if.then210:                                       ; preds = %if.end206
  %call212 = call i8* @strcpy(i8* %0, i8* %call208) #4
  br label %if.end213

if.end213:                                        ; preds = %if.end206, %if.then210
  %call214 = call i32 @get_eint(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([6 x i8]* @.str75, i64 0, i64 0), i32 0) #4
  %rot_incr = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 12
  store i32 %call214, i32* %rot_incr, align 4, !tbaa !0
  %call215 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([10 x i8]* @.str76, i64 0, i64 0), float 0x3F50624DE0000000) #4
  %xlt_incr = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 13
  store float %call215, float* %xlt_incr, align 4, !tbaa !4
  %10 = load i32* %ninp, align 4, !tbaa !0
  %11 = load %struct.t_inpfile** %inp, align 8, !tbaa !3
  call void @write_inpfile(i8* %outfile, i32 %10, %struct.t_inpfile* %11) #4
  %12 = load i32* %ninp, align 4, !tbaa !0
  %cmp216412 = icmp sgt i32 %12, 0
  br i1 %cmp216412, label %for.body, label %for.end

for.body:                                         ; preds = %if.end213, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end213 ]
  %13 = load %struct.t_inpfile** %inp, align 8, !tbaa !3
  %name = getelementptr inbounds %struct.t_inpfile* %13, i64 %indvars.iv, i32 2
  %14 = load i8** %name, align 8, !tbaa !3
  call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str78, i64 0, i64 0), i32 280, i8* %14) #4
  %15 = load %struct.t_inpfile** %inp, align 8, !tbaa !3
  %value = getelementptr inbounds %struct.t_inpfile* %15, i64 %indvars.iv, i32 3
  %16 = load i8** %value, align 8, !tbaa !3
  call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str78, i64 0, i64 0), i32 281, i8* %16) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %17 = load i32* %ninp, align 4, !tbaa !0
  %18 = trunc i64 %indvars.iv.next to i32
  %cmp216 = icmp slt i32 %18, %17
  br i1 %cmp216, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end213
  %19 = load %struct.t_inpfile** %inp, align 8, !tbaa !3
  %20 = bitcast %struct.t_inpfile* %19 to i8*
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str78, i64 0, i64 0), i32 283, i8* %20) #4
  %runtype = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 3
  store i32 %call26, i32* %runtype, align 4, !tbaa !1
  %reftype = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 4
  store i32 %call75, i32* %reftype, align 4, !tbaa !1
  %21 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([24 x i8]* @.str81, i64 0, i64 0), i8* %1, i8* %2, i8* %3, i8* %4, i8* %4) #4
  %strcmpload = load i8* %1, align 16
  %tobool = icmp eq i8 %strcmpload, 0
  br i1 %tobool, label %if.then230, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %strcmpload410 = load i8* %5, align 16
  %tobool229 = icmp eq i8 %strcmpload410, 0
  br i1 %tobool229, label %if.then230, label %if.end231

if.then230:                                       ; preds = %lor.lhs.false, %for.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([53 x i8]* @.str82, i64 0, i64 0)) #4
  br label %if.end231

if.end231:                                        ; preds = %lor.lhs.false, %if.then230
  %n = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %strcmpload407 = load i8* %2, align 16
  %tobool235 = icmp eq i8 %strcmpload407, 0
  %. = select i1 %tobool235, i32 1, i32 2
  store i32 %., i32* %n, align 4, !tbaa !0
  %strcmpload408 = load i8* %3, align 16
  %tobool242 = icmp eq i8 %strcmpload408, 0
  br i1 %tobool242, label %if.end247, label %if.then243

if.then243:                                       ; preds = %if.end231
  %add246 = add nsw i32 %., 1
  store i32 %add246, i32* %n, align 4, !tbaa !0
  br label %if.end247

if.end247:                                        ; preds = %if.end231, %if.then243
  %22 = phi i32 [ %., %if.end231 ], [ %add246, %if.then243 ]
  %strcmpload409 = load i8* %4, align 16
  %tobool250 = icmp eq i8 %strcmpload409, 0
  br i1 %tobool250, label %if.end255, label %if.then251

if.then251:                                       ; preds = %if.end247
  %add254 = add nsw i32 %22, 1
  store i32 %add254, i32* %n, align 4, !tbaa !0
  br label %if.end255

if.end255:                                        ; preds = %if.end247, %if.then251
  %23 = phi i32 [ %22, %if.end247 ], [ %add254, %if.then251 ]
  %24 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([22 x i8]* @.str83, i64 0, i64 0), i32 %23) #4
  %25 = load i32* %n, align 4, !tbaa !0
  %call261 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str78, i64 0, i64 0), i32 305, i32 %25, i32 8) #4
  %26 = bitcast i8* %call261 to i8**
  %grps = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 4
  store i8** %26, i8*** %grps, align 8, !tbaa !3
  %call263 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str78, i64 0, i64 0), i32 306, i32 1, i32 8) #4
  %27 = bitcast i8* %call263 to i8**
  %grps264 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 4
  store i8** %27, i8*** %grps264, align 8, !tbaa !3
  %call266 = call noalias i8* @strdup(i8* %1) #4
  %28 = load i8*** %grps, align 8, !tbaa !3
  store i8* %call266, i8** %28, align 8, !tbaa !3
  %call271 = call noalias i8* @strdup(i8* %2) #4
  %29 = load i8*** %grps, align 8, !tbaa !3
  %arrayidx274 = getelementptr inbounds i8** %29, i64 1
  store i8* %call271, i8** %arrayidx274, align 8, !tbaa !3
  %call276 = call noalias i8* @strdup(i8* %3) #4
  %30 = load i8*** %grps, align 8, !tbaa !3
  %arrayidx279 = getelementptr inbounds i8** %30, i64 2
  store i8* %call276, i8** %arrayidx279, align 8, !tbaa !3
  %call281 = call noalias i8* @strdup(i8* %4) #4
  %31 = load i8*** %grps, align 8, !tbaa !3
  %arrayidx284 = getelementptr inbounds i8** %31, i64 3
  store i8* %call281, i8** %arrayidx284, align 8, !tbaa !3
  %call286 = call noalias i8* @strdup(i8* %5) #4
  %32 = load i8*** %grps264, align 8, !tbaa !3
  store i8* %call286, i8** %32, align 8, !tbaa !3
  %33 = load i32* %runtype, align 4, !tbaa !1
  %cmp291 = icmp eq i32 %33, 0
  br i1 %cmp291, label %if.then292, label %if.end312

if.then292:                                       ; preds = %if.end255
  %34 = load i32* %n, align 4, !tbaa !0
  %call295 = call i8* @save_calloc(i8* getelementptr inbounds ([19 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str78, i64 0, i64 0), i32 314, i32 %34, i32 12) #4
  %35 = bitcast i8* %call295 to [3 x float]*
  %xtarget = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 16
  store [3 x float]* %35, [3 x float]** %xtarget, align 8, !tbaa !3
  %arraydecay301 = bitcast i8* %call295 to float*
  call void @string2rvec(i8* %6, float* %arraydecay301) #4
  %36 = load i32* %n, align 4, !tbaa !0
  %cmp304 = icmp eq i32 %36, 2
  br i1 %cmp304, label %if.then305, label %if.end312

if.then305:                                       ; preds = %if.then292
  %37 = load [3 x float]** %xtarget, align 8, !tbaa !3
  %arraydecay310 = getelementptr inbounds [3 x float]* %37, i64 1, i64 0
  call void @string2rvec(i8* %7, float* %arraydecay310) #4
  br label %if.end312

if.end312:                                        ; preds = %if.then292, %if.then305, %if.end255
  %arraydecay314 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 0
  call void @string2rvec(i8* %8, float* %arraydecay314) #4
  %38 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %39 = load float* %arraydecay314, align 4, !tbaa !4
  %conv = fpext float %39 to double
  %arrayidx318 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 1
  %40 = load float* %arrayidx318, align 4, !tbaa !4
  %conv319 = fpext float %40 to double
  %arrayidx321 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 2
  %41 = load float* %arrayidx321, align 4, !tbaa !4
  %conv322 = fpext float %41 to double
  %call323 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([45 x i8]* @.str87, i64 0, i64 0), double %conv, double %conv319, double %conv322) #4
  %42 = load float* %r, align 4, !tbaa !4
  %conv325 = fpext float %42 to double
  %cmp326 = fcmp ogt double %conv325, 1.000000e-03
  %bCyl = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  %.411 = zext i1 %cmp326 to i32
  store i32 %.411, i32* %bCyl, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 4096, i8* %8) #1
  call void @llvm.lifetime.end(i64 4096, i8* %7) #1
  call void @llvm.lifetime.end(i64 4096, i8* %6) #1
  call void @llvm.lifetime.end(i64 4096, i8* %5) #1
  call void @llvm.lifetime.end(i64 4096, i8* %4) #1
  call void @llvm.lifetime.end(i64 4096, i8* %3) #1
  call void @llvm.lifetime.end(i64 4096, i8* %2) #1
  call void @llvm.lifetime.end(i64 4096, i8* %1) #1
  call void @llvm.lifetime.end(i64 4096, i8* %0) #1
  ret void
}

; Function Attrs: optsize
declare %struct.t_inpfile* @read_inpfile(i8*, i32*) #3

; Function Attrs: optsize
declare i8* @get_estr(i32*, %struct.t_inpfile**, i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @get_eeenum(i32*, %struct.t_inpfile**, i8*, i8**, i32*, i32) #3

; Function Attrs: optsize
declare i32 @get_eint(i32*, %struct.t_inpfile**, i8*, i32) #3

; Function Attrs: optsize
declare float @get_ereal(i32*, %struct.t_inpfile**, i8*, float) #3

; Function Attrs: optsize
declare void @write_inpfile(i8*, i32, %struct.t_inpfile*) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #2

; Function Attrs: optsize
declare void @string2rvec(i8*, float*) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
