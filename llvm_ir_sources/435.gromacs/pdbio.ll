; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@bWideFormat = internal unnamed_addr global i32 0, align 4
@bTER = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"HEADER    %s\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"REMARK    This file does not adhere to the PDB standard\0A\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"REMARK    As a result of, some programs may not like it\0A\00", align 1
@.str3 = private unnamed_addr constant [36 x i8] c"REMARK    THIS IS A SIMULATION BOX\0A\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"CRYST1%9.3f%9.3f%9.3f%7.2f%7.2f%7.2f P 1           1\0A\00", align 1
@.str5 = private unnamed_addr constant [11 x i8] c"MODEL %8d\0A\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"MODEL\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str7 = private unnamed_addr constant [75 x i8] c"WARNING: Writing out atom name (%s) longer than 4 characters to .pdb file\0A\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"%8.4f%8.4f\0A\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"%6.2f%6.2f\0A\00", align 1
@pdbtp = internal unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str38, i32 0, i32 0)], align 16
@.str10 = private unnamed_addr constant [5 x i8] c"TER\0A\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"ENDMDL\0A\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str13 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c\00", align 1
@read_pdbfile.symtab = internal global %struct.t_symtab zeroinitializer, align 8
@read_pdbfile.bFirst = internal unnamed_addr global i1 false
@.str14 = private unnamed_addr constant [19 x i8] c"%*s%s%s%s%lf%lf%lf\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str17 = private unnamed_addr constant [10 x i8] c"MOLECULE:\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str19 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str20 = private unnamed_addr constant [6 x i8] c"%*s%d\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"TER\00", align 1
@.str22 = private unnamed_addr constant [7 x i8] c"ENDMDL\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"ATOM  \00", align 1
@.str24 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str25 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str26 = private unnamed_addr constant [47 x i8] c"Skipping ANISOU record (atom %s %d not found)\0A\00", align 1
@.str27 = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str28 = private unnamed_addr constant [35 x i8] c"Invalid ANISOU record for atom %d\0A\00", align 1
@read_atom.oldresnm = internal global [12 x i8] zeroinitializer, align 1
@read_atom.oldresnr = internal global [12 x i8] zeroinitializer, align 1
@.str29 = private unnamed_addr constant [54 x i8] c"\0AFound more atoms (%d) in pdb file than expected (%d)\00", align 1
@.str30 = private unnamed_addr constant [4 x i8] c"OXT\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"O2\00", align 1
@.str32 = private unnamed_addr constant [7 x i8] c"ANISOU\00", align 1
@.str33 = private unnamed_addr constant [7 x i8] c"CRYST1\00", align 1
@.str34 = private unnamed_addr constant [7 x i8] c"COMPND\00", align 1
@.str35 = private unnamed_addr constant [6 x i8] c"MODEL\00", align 1
@.str36 = private unnamed_addr constant [7 x i8] c"HEADER\00", align 1
@.str37 = private unnamed_addr constant [6 x i8] c"TITLE\00", align 1
@.str38 = private unnamed_addr constant [7 x i8] c"REMARK\00", align 1
@.str39 = private unnamed_addr constant [46 x i8] c"%-6s%5u %-4.4s %3.3s %c%4d    %8.3f%8.3f%8.3f\00", align 1
@.str40 = private unnamed_addr constant [46 x i8] c"%-6s%5u  %-4.4s%3.3s %c%4d    %8.3f%8.3f%8.3f\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @set_pdb_wide_format(i32 %bSet) #0 {
entry:
  store i32 %bSet, i32* @bWideFormat, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @pdb_use_ter(i32 %bSet) #0 {
entry:
  store i32 %bSet, i32* @bTER, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_pdbfile_indexed(%struct._IO_FILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, [3 x float]* %box, i8 signext %chain, i32 %model_nr, i32 %nindex, i32* nocapture %index) #0 {
entry:
  %resnm = alloca [6 x i8], align 1
  %nm = alloca [6 x i8], align 1
  %pdbform = alloca [128 x i8], align 16
  %0 = getelementptr inbounds [128 x i8]* %pdbform, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %tobool = icmp eq i8* %title, null
  br i1 %tobool, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i8* %title, align 1, !tbaa !1
  %tobool1 = icmp eq i8 %1, 0
  br i1 %tobool1, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call = call i8* @bromacs() #7
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %cond.false
  %cond = phi i8* [ %call, %cond.false ], [ %title, %land.lhs.true ]
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0), i8* %cond) #7
  %2 = load i32* @bWideFormat, align 4, !tbaa !0
  %tobool3 = icmp eq i32 %2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %out)
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %out)
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %tobool6 = icmp eq [3 x float]* %box, null
  br i1 %tobool6, label %if.end110, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end
  %arraydecay = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %5 = load float* %arraydecay, align 4, !tbaa !3
  %mul.i = fmul float %5, %5
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %6 = load float* %arrayidx2.i, align 4, !tbaa !3
  %mul4.i = fmul float %6, %6
  %add.i = fadd float %mul.i, %mul4.i
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %7 = load float* %arrayidx5.i, align 4, !tbaa !3
  %mul7.i = fmul float %7, %7
  %add8.i = fadd float %add.i, %mul7.i
  %conv10 = fpext float %add8.i to double
  %cmp = fcmp ogt double %conv10, 1.200000e-38
  %arraydecay27.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %.pre513 = load float* %arraydecay27.phi.trans.insert, align 4, !tbaa !3
  br i1 %cmp, label %land.lhs.true7.if.then25_crit_edge, label %lor.lhs.false

land.lhs.true7.if.then25_crit_edge:               ; preds = %land.lhs.true7
  %arrayidx2.i386.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %.pre514 = load float* %arrayidx2.i386.phi.trans.insert, align 4, !tbaa !3
  %arrayidx5.i389.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %.pre515 = load float* %arrayidx5.i389.phi.trans.insert, align 4, !tbaa !3
  br label %if.then25

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %mul.i355 = fmul float %.pre513, %.pre513
  %arrayidx2.i356 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %8 = load float* %arrayidx2.i356, align 4, !tbaa !3
  %mul4.i357 = fmul float %8, %8
  %add.i358 = fadd float %mul.i355, %mul4.i357
  %arrayidx5.i359 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %9 = load float* %arrayidx5.i359, align 4, !tbaa !3
  %mul7.i360 = fmul float %9, %9
  %add8.i361 = fadd float %add.i358, %mul7.i360
  %conv15 = fpext float %add8.i361 to double
  %cmp16 = fcmp ogt double %conv15, 1.200000e-38
  br i1 %cmp16, label %if.then25, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %arraydecay20 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %10 = load float* %arraydecay20, align 4, !tbaa !3
  %mul.i370 = fmul float %10, %10
  %arrayidx2.i371 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %11 = load float* %arrayidx2.i371, align 4, !tbaa !3
  %mul4.i372 = fmul float %11, %11
  %add.i373 = fadd float %mul.i370, %mul4.i372
  %arrayidx5.i374 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %12 = load float* %arrayidx5.i374, align 4, !tbaa !3
  %mul7.i375 = fmul float %12, %12
  %add8.i376 = fadd float %add.i373, %mul7.i375
  %conv22 = fpext float %add8.i376 to double
  %cmp23 = fcmp ogt double %conv22, 1.200000e-38
  br i1 %cmp23, label %if.then25, label %if.end110

if.then25:                                        ; preds = %lor.lhs.false, %land.lhs.true7.if.then25_crit_edge, %lor.lhs.false18
  %13 = phi float [ %.pre515, %land.lhs.true7.if.then25_crit_edge ], [ %9, %lor.lhs.false18 ], [ %9, %lor.lhs.false ]
  %14 = phi float [ %.pre514, %land.lhs.true7.if.then25_crit_edge ], [ %8, %lor.lhs.false18 ], [ %8, %lor.lhs.false ]
  %arraydecay27 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %mul.i385 = fmul float %.pre513, %.pre513
  %arrayidx2.i386 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %mul4.i387 = fmul float %14, %14
  %add.i388 = fadd float %mul.i385, %mul4.i387
  %arrayidx5.i389 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %mul7.i390 = fmul float %13, %13
  %add8.i391 = fadd float %add.i388, %mul7.i390
  %arraydecay30 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %15 = load float* %arraydecay30, align 4, !tbaa !3
  %mul.i397 = fmul float %15, %15
  %arrayidx2.i398 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %16 = load float* %arrayidx2.i398, align 4, !tbaa !3
  %mul4.i399 = fmul float %16, %16
  %add.i400 = fadd float %mul.i397, %mul4.i399
  %arrayidx5.i401 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %17 = load float* %arrayidx5.i401, align 4, !tbaa !3
  %mul7.i402 = fmul float %17, %17
  %add8.i403 = fadd float %add.i400, %mul7.i402
  %mul = fmul float %add8.i391, %add8.i403
  %conv32 = fpext float %mul to double
  %cmp33 = fcmp ogt double %conv32, 1.200000e-38
  br i1 %cmp33, label %for.body.i464, label %if.end45

for.body.i464:                                    ; preds = %if.then25, %for.body.i464.for.body.i464_crit_edge
  %18 = phi float [ %.pre521, %for.body.i464.for.body.i464_crit_edge ], [ %15, %if.then25 ]
  %19 = phi float [ %.pre520, %for.body.i464.for.body.i464_crit_edge ], [ %.pre513, %if.then25 ]
  %indvars.iv.i447 = phi i64 [ %phitmp524, %for.body.i464.for.body.i464_crit_edge ], [ 1, %if.then25 ]
  %ipb.033.i448 = phi double [ %add7.i460, %for.body.i464.for.body.i464_crit_edge ], [ 0.000000e+00, %if.then25 ]
  %ipa.032.i449 = phi double [ %add5.i458, %for.body.i464.for.body.i464_crit_edge ], [ 0.000000e+00, %if.then25 ]
  %ip.031.i450 = phi double [ %add.i456, %for.body.i464.for.body.i464_crit_edge ], [ 0.000000e+00, %if.then25 ]
  %conv.i452 = fpext float %19 to double
  %conv3.i454 = fpext float %18 to double
  %mul.i455 = fmul double %conv.i452, %conv3.i454
  %add.i456 = fadd double %ip.031.i450, %mul.i455
  %mul4.i457 = fmul double %conv.i452, %conv.i452
  %add5.i458 = fadd double %ipa.032.i449, %mul4.i457
  %mul6.i459 = fmul double %conv3.i454, %conv3.i454
  %add7.i460 = fadd double %ipb.033.i448, %mul6.i459
  %lftr.wideiv503 = trunc i64 %indvars.iv.i447 to i32
  %exitcond504 = icmp eq i32 %lftr.wideiv503, 3
  br i1 %exitcond504, label %for.end.i470, label %for.body.i464.for.body.i464_crit_edge

for.body.i464.for.body.i464_crit_edge:            ; preds = %for.body.i464
  %arrayidx.i451.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 1, i64 %indvars.iv.i447
  %.pre520 = load float* %arrayidx.i451.phi.trans.insert, align 4, !tbaa !3
  %arrayidx2.i453.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 2, i64 %indvars.iv.i447
  %.pre521 = load float* %arrayidx2.i453.phi.trans.insert, align 4, !tbaa !3
  %phitmp524 = add i64 %indvars.iv.i447, 1
  br label %for.body.i464

for.end.i470:                                     ; preds = %for.body.i464
  %mul8.i465 = fmul double %add5.i458, %add7.i460
  %call.i466 = call double @sqrt(double %mul8.i465) #7
  %div.i467 = fdiv double %add.i456, %call.i466
  %conv9.i468 = fptrunc double %div.i467 to float
  %cmp11.i469 = fcmp ogt float %conv9.i468, 1.000000e+00
  br i1 %cmp11.i469, label %cos_angle_no_table.exit475, label %if.end.i473

if.end.i473:                                      ; preds = %for.end.i470
  %cmp14.i471 = fcmp olt float %conv9.i468, -1.000000e+00
  %20 = fpext float %conv9.i468 to double
  %phitmp492 = select i1 %cmp14.i471, double -1.000000e+00, double %20
  br label %cos_angle_no_table.exit475

cos_angle_no_table.exit475:                       ; preds = %for.end.i470, %if.end.i473
  %retval.0.i474 = phi double [ 1.000000e+00, %for.end.i470 ], [ %phitmp492, %if.end.i473 ]
  %call42 = call double @acos(double %retval.0.i474) #7
  %mul43 = fmul double %call42, 0x404CA5DC1A63C1F8
  %conv44 = fptrunc double %mul43 to float
  %phitmp344 = fpext float %conv44 to double
  %.pre = load float* %arraydecay, align 4, !tbaa !3
  %.pre505 = load float* %arrayidx2.i, align 4, !tbaa !3
  %.pre506 = load float* %arrayidx5.i, align 4, !tbaa !3
  %.pre507 = load float* %arraydecay30, align 4, !tbaa !3
  %.pre508 = load float* %arrayidx2.i398, align 4, !tbaa !3
  %.pre509 = load float* %arrayidx5.i401, align 4, !tbaa !3
  br label %if.end45

if.end45:                                         ; preds = %if.then25, %cos_angle_no_table.exit475
  %21 = phi float [ %.pre509, %cos_angle_no_table.exit475 ], [ %17, %if.then25 ]
  %22 = phi float [ %.pre508, %cos_angle_no_table.exit475 ], [ %16, %if.then25 ]
  %23 = phi float [ %.pre507, %cos_angle_no_table.exit475 ], [ %15, %if.then25 ]
  %24 = phi float [ %.pre506, %cos_angle_no_table.exit475 ], [ %7, %if.then25 ]
  %25 = phi float [ %.pre505, %cos_angle_no_table.exit475 ], [ %6, %if.then25 ]
  %26 = phi float [ %.pre, %cos_angle_no_table.exit475 ], [ %5, %if.then25 ]
  %alpha.0 = phi double [ %phitmp344, %cos_angle_no_table.exit475 ], [ 9.000000e+01, %if.then25 ]
  %mul.i476 = fmul float %26, %26
  %mul4.i478 = fmul float %25, %25
  %add.i479 = fadd float %mul.i476, %mul4.i478
  %mul7.i481 = fmul float %24, %24
  %add8.i482 = fadd float %add.i479, %mul7.i481
  %mul.i483 = fmul float %23, %23
  %mul4.i485 = fmul float %22, %22
  %add.i486 = fadd float %mul.i483, %mul4.i485
  %mul7.i488 = fmul float %21, %21
  %add8.i489 = fadd float %add.i486, %mul7.i488
  %mul52 = fmul float %add8.i482, %add8.i489
  %conv53 = fpext float %mul52 to double
  %cmp54 = fcmp ogt double %conv53, 1.200000e-38
  br i1 %cmp54, label %for.body.i435, label %if.end67

for.body.i435:                                    ; preds = %if.end45, %for.body.i435.for.body.i435_crit_edge
  %27 = phi float [ %.pre519, %for.body.i435.for.body.i435_crit_edge ], [ %23, %if.end45 ]
  %28 = phi float [ %.pre518, %for.body.i435.for.body.i435_crit_edge ], [ %26, %if.end45 ]
  %indvars.iv.i418 = phi i64 [ %phitmp523, %for.body.i435.for.body.i435_crit_edge ], [ 1, %if.end45 ]
  %ipb.033.i419 = phi double [ %add7.i431, %for.body.i435.for.body.i435_crit_edge ], [ 0.000000e+00, %if.end45 ]
  %ipa.032.i420 = phi double [ %add5.i429, %for.body.i435.for.body.i435_crit_edge ], [ 0.000000e+00, %if.end45 ]
  %ip.031.i421 = phi double [ %add.i427, %for.body.i435.for.body.i435_crit_edge ], [ 0.000000e+00, %if.end45 ]
  %conv.i423 = fpext float %28 to double
  %conv3.i425 = fpext float %27 to double
  %mul.i426 = fmul double %conv.i423, %conv3.i425
  %add.i427 = fadd double %ip.031.i421, %mul.i426
  %mul4.i428 = fmul double %conv.i423, %conv.i423
  %add5.i429 = fadd double %ipa.032.i420, %mul4.i428
  %mul6.i430 = fmul double %conv3.i425, %conv3.i425
  %add7.i431 = fadd double %ipb.033.i419, %mul6.i430
  %lftr.wideiv501 = trunc i64 %indvars.iv.i418 to i32
  %exitcond502 = icmp eq i32 %lftr.wideiv501, 3
  br i1 %exitcond502, label %for.end.i441, label %for.body.i435.for.body.i435_crit_edge

for.body.i435.for.body.i435_crit_edge:            ; preds = %for.body.i435
  %arrayidx.i422.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 0, i64 %indvars.iv.i418
  %.pre518 = load float* %arrayidx.i422.phi.trans.insert, align 4, !tbaa !3
  %arrayidx2.i424.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 2, i64 %indvars.iv.i418
  %.pre519 = load float* %arrayidx2.i424.phi.trans.insert, align 4, !tbaa !3
  %phitmp523 = add i64 %indvars.iv.i418, 1
  br label %for.body.i435

for.end.i441:                                     ; preds = %for.body.i435
  %mul8.i436 = fmul double %add5.i429, %add7.i431
  %call.i437 = call double @sqrt(double %mul8.i436) #7
  %div.i438 = fdiv double %add.i427, %call.i437
  %conv9.i439 = fptrunc double %div.i438 to float
  %cmp11.i440 = fcmp ogt float %conv9.i439, 1.000000e+00
  br i1 %cmp11.i440, label %cos_angle_no_table.exit446, label %if.end.i444

if.end.i444:                                      ; preds = %for.end.i441
  %cmp14.i442 = fcmp olt float %conv9.i439, -1.000000e+00
  %29 = fpext float %conv9.i439 to double
  %phitmp491 = select i1 %cmp14.i442, double -1.000000e+00, double %29
  br label %cos_angle_no_table.exit446

cos_angle_no_table.exit446:                       ; preds = %for.end.i441, %if.end.i444
  %retval.0.i445 = phi double [ 1.000000e+00, %for.end.i441 ], [ %phitmp491, %if.end.i444 ]
  %call63 = call double @acos(double %retval.0.i445) #7
  %mul64 = fmul double %call63, 0x404CA5DC1A63C1F8
  %conv65 = fptrunc double %mul64 to float
  %phitmp345 = fpext float %conv65 to double
  %.pre510 = load float* %arraydecay, align 4, !tbaa !3
  %.pre511 = load float* %arrayidx2.i, align 4, !tbaa !3
  %.pre512 = load float* %arrayidx5.i, align 4, !tbaa !3
  br label %if.end67

if.end67:                                         ; preds = %if.end45, %cos_angle_no_table.exit446
  %30 = phi float [ %.pre512, %cos_angle_no_table.exit446 ], [ %24, %if.end45 ]
  %31 = phi float [ %.pre511, %cos_angle_no_table.exit446 ], [ %25, %if.end45 ]
  %32 = phi float [ %.pre510, %cos_angle_no_table.exit446 ], [ %26, %if.end45 ]
  %beta.0 = phi double [ %phitmp345, %cos_angle_no_table.exit446 ], [ 9.000000e+01, %if.end45 ]
  %mul.i411 = fmul float %32, %32
  %mul4.i413 = fmul float %31, %31
  %add.i414 = fadd float %mul.i411, %mul4.i413
  %mul7.i416 = fmul float %30, %30
  %add8.i417 = fadd float %add.i414, %mul7.i416
  %33 = load float* %arraydecay27, align 4, !tbaa !3
  %mul.i404 = fmul float %33, %33
  %34 = load float* %arrayidx2.i386, align 4, !tbaa !3
  %mul4.i406 = fmul float %34, %34
  %add.i407 = fadd float %mul.i404, %mul4.i406
  %35 = load float* %arrayidx5.i389, align 4, !tbaa !3
  %mul7.i409 = fmul float %35, %35
  %add8.i410 = fadd float %add.i407, %mul7.i409
  %mul74 = fmul float %add8.i417, %add8.i410
  %conv75 = fpext float %mul74 to double
  %cmp76 = fcmp ogt double %conv75, 1.200000e-38
  br i1 %cmp76, label %for.body.i, label %if.end89

for.body.i:                                       ; preds = %if.end67, %for.body.i.for.body.i_crit_edge
  %36 = phi float [ %.pre517, %for.body.i.for.body.i_crit_edge ], [ %33, %if.end67 ]
  %37 = phi float [ %.pre516, %for.body.i.for.body.i_crit_edge ], [ %32, %if.end67 ]
  %indvars.iv.i = phi i64 [ %phitmp522, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end67 ]
  %ipb.033.i = phi double [ %add7.i, %for.body.i.for.body.i_crit_edge ], [ 0.000000e+00, %if.end67 ]
  %ipa.032.i = phi double [ %add5.i, %for.body.i.for.body.i_crit_edge ], [ 0.000000e+00, %if.end67 ]
  %ip.031.i = phi double [ %add.i394, %for.body.i.for.body.i_crit_edge ], [ 0.000000e+00, %if.end67 ]
  %conv.i = fpext float %37 to double
  %conv3.i = fpext float %36 to double
  %mul.i393 = fmul double %conv.i, %conv3.i
  %add.i394 = fadd double %ip.031.i, %mul.i393
  %mul4.i395 = fmul double %conv.i, %conv.i
  %add5.i = fadd double %ipa.032.i, %mul4.i395
  %mul6.i = fmul double %conv3.i, %conv3.i
  %add7.i = fadd double %ipb.033.i, %mul6.i
  %lftr.wideiv499 = trunc i64 %indvars.iv.i to i32
  %exitcond500 = icmp eq i32 %lftr.wideiv499, 3
  br i1 %exitcond500, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  %arrayidx.i.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 0, i64 %indvars.iv.i
  %.pre516 = load float* %arrayidx.i.phi.trans.insert, align 4, !tbaa !3
  %arrayidx2.i392.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 1, i64 %indvars.iv.i
  %.pre517 = load float* %arrayidx2.i392.phi.trans.insert, align 4, !tbaa !3
  %phitmp522 = add i64 %indvars.iv.i, 1
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %mul8.i = fmul double %add5.i, %add7.i
  %call.i = call double @sqrt(double %mul8.i) #7
  %div.i = fdiv double %add.i394, %call.i
  %conv9.i396 = fptrunc double %div.i to float
  %cmp11.i = fcmp ogt float %conv9.i396, 1.000000e+00
  br i1 %cmp11.i, label %cos_angle_no_table.exit, label %if.end.i

if.end.i:                                         ; preds = %for.end.i
  %cmp14.i = fcmp olt float %conv9.i396, -1.000000e+00
  %38 = fpext float %conv9.i396 to double
  %phitmp490 = select i1 %cmp14.i, double -1.000000e+00, double %38
  br label %cos_angle_no_table.exit

cos_angle_no_table.exit:                          ; preds = %for.end.i, %if.end.i
  %retval.0.i = phi double [ 1.000000e+00, %for.end.i ], [ %phitmp490, %if.end.i ]
  %call85 = call double @acos(double %retval.0.i) #7
  %mul86 = fmul double %call85, 0x404CA5DC1A63C1F8
  %conv87 = fptrunc double %mul86 to float
  %phitmp346 = fpext float %conv87 to double
  br label %if.end89

if.end89:                                         ; preds = %if.end67, %cos_angle_no_table.exit
  %gamma.0 = phi double [ %phitmp346, %cos_angle_no_table.exit ], [ 9.000000e+01, %if.end67 ]
  %39 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %out)
  %40 = load float* %arraydecay, align 4, !tbaa !3
  %mul.i377 = fmul float %40, %40
  %41 = load float* %arrayidx2.i, align 4, !tbaa !3
  %mul4.i379 = fmul float %41, %41
  %add.i380 = fadd float %mul.i377, %mul4.i379
  %42 = load float* %arrayidx5.i, align 4, !tbaa !3
  %mul7.i382 = fmul float %42, %42
  %add8.i383 = fadd float %add.i380, %mul7.i382
  %conv9.i384 = call float @sqrtf(float %add8.i383) #2
  %mul94 = fmul float %conv9.i384, 1.000000e+01
  %conv95 = fpext float %mul94 to double
  %43 = load float* %arraydecay27, align 4, !tbaa !3
  %mul.i362 = fmul float %43, %43
  %44 = load float* %arrayidx2.i386, align 4, !tbaa !3
  %mul4.i364 = fmul float %44, %44
  %add.i365 = fadd float %mul.i362, %mul4.i364
  %45 = load float* %arrayidx5.i389, align 4, !tbaa !3
  %mul7.i367 = fmul float %45, %45
  %add8.i368 = fadd float %add.i365, %mul7.i367
  %conv9.i369 = call float @sqrtf(float %add8.i368) #2
  %mul99 = fmul float %conv9.i369, 1.000000e+01
  %conv100 = fpext float %mul99 to double
  %46 = load float* %arraydecay30, align 4, !tbaa !3
  %mul.i348 = fmul float %46, %46
  %47 = load float* %arrayidx2.i398, align 4, !tbaa !3
  %mul4.i350 = fmul float %47, %47
  %add.i351 = fadd float %mul.i348, %mul4.i350
  %48 = load float* %arrayidx5.i401, align 4, !tbaa !3
  %mul7.i353 = fmul float %48, %48
  %add8.i354 = fadd float %add.i351, %mul7.i353
  %conv9.i = call float @sqrtf(float %add8.i354) #2
  %mul104 = fmul float %conv9.i, 1.000000e+01
  %conv105 = fpext float %mul104 to double
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), double %conv95, double %conv100, double %conv105, double %alpha.0, double %beta.0, double %gamma.0) #7
  br label %if.end110

if.end110:                                        ; preds = %if.end, %if.end89, %lor.lhs.false18
  %pdbinfo = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11
  %49 = load %struct.t_pdbinfo** %pdbinfo, align 8, !tbaa !4
  %tobool111 = icmp eq %struct.t_pdbinfo* %49, null
  br i1 %tobool111, label %if.end129, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end110
  %cmp113495 = icmp sgt i32 %nindex, 0
  br i1 %cmp113495, label %land.rhs118, label %if.end129

land.rhs118:                                      ; preds = %for.cond.preheader, %land.rhs118
  %indvars.iv497 = phi i64 [ %indvars.iv.next498, %land.rhs118 ], [ 0, %for.cond.preheader ]
  %arrayidx116 = getelementptr inbounds i32* %index, i64 %indvars.iv497
  %50 = load i32* %arrayidx116, align 4, !tbaa !0
  %idxprom119 = sext i32 %50 to i64
  %occup122 = getelementptr inbounds %struct.t_pdbinfo* %49, i64 %idxprom119, i32 4
  %51 = load float* %occup122, align 4, !tbaa !3
  %fabsf = call float @fabsf(float %51) #4
  %52 = fpext float %fabsf to double
  %cmp125 = fcmp olt double %52, 1.200000e-38
  %indvars.iv.next498 = add i64 %indvars.iv497, 1
  %53 = trunc i64 %indvars.iv.next498 to i32
  %cmp113 = icmp slt i32 %53, %nindex
  %or.cond347 = and i1 %cmp113, %cmp125
  br i1 %or.cond347, label %land.rhs118, label %for.cond.if.end129.loopexit_crit_edge

for.cond.if.end129.loopexit_crit_edge:            ; preds = %land.rhs118
  %land.ext = zext i1 %cmp125 to i32
  br label %if.end129

if.end129:                                        ; preds = %for.cond.preheader, %for.cond.if.end129.loopexit_crit_edge, %if.end110
  %bOccup.1 = phi i32 [ 0, %if.end110 ], [ %land.ext, %for.cond.if.end129.loopexit_crit_edge ], [ 1, %for.cond.preheader ]
  %54 = load i32* @bTER, align 4, !tbaa !0
  %tobool130 = icmp eq i32 %54, 0
  br i1 %tobool130, label %if.then131, label %for.cond144.preheader

if.then131:                                       ; preds = %if.end129
  %cmp132 = icmp sgt i32 %model_nr, 0
  br i1 %cmp132, label %if.then134, label %if.else136

if.then134:                                       ; preds = %if.then131
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), i32 %model_nr) #7
  br label %for.cond144.preheader

if.else136:                                       ; preds = %if.then131
  %cmp137 = icmp eq i32 %model_nr, 0
  br i1 %cmp137, label %if.then139, label %for.cond144.preheader

if.then139:                                       ; preds = %if.else136
  %55 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %out)
  br label %for.cond144.preheader

for.cond144.preheader:                            ; preds = %if.end129, %if.then134, %if.then139, %if.else136
  %cmp145493 = icmp sgt i32 %nindex, 0
  br i1 %cmp145493, label %for.body147.lr.ph, label %for.end260

for.body147.lr.ph:                                ; preds = %for.cond144.preheader
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %arraydecay153 = getelementptr inbounds [6 x i8]* %resnm, i64 0, i64 0
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  %arraydecay157 = getelementptr inbounds [6 x i8]* %nm, i64 0, i64 0
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %tobool166 = icmp eq i8 %chain, 0
  %tobool189 = icmp eq i32 %bOccup.1, 0
  br label %for.body147

for.body147:                                      ; preds = %if.end232, %for.body147.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body147.lr.ph ], [ %indvars.iv.next, %if.end232 ]
  %arrayidx149 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %56 = load i32* %arrayidx149, align 4, !tbaa !0
  %idxprom150 = sext i32 %56 to i64
  %57 = load %struct.t_atom** %atom, align 8, !tbaa !4
  %resnr152 = getelementptr inbounds %struct.t_atom* %57, i64 %idxprom150, i32 7
  %58 = load i32* %resnr152, align 4, !tbaa !0
  %idxprom154 = sext i32 %58 to i64
  %59 = load i8**** %resname, align 8, !tbaa !4
  %arrayidx155 = getelementptr inbounds i8*** %59, i64 %idxprom154
  %60 = load i8*** %arrayidx155, align 8, !tbaa !4
  %61 = load i8** %60, align 8, !tbaa !4
  %call156 = call i8* @strcpy(i8* %arraydecay153, i8* %61) #7
  %62 = load i8**** %atomname, align 8, !tbaa !4
  %arrayidx159 = getelementptr inbounds i8*** %62, i64 %idxprom150
  %63 = load i8*** %arrayidx159, align 8, !tbaa !4
  %64 = load i8** %63, align 8, !tbaa !4
  %call160 = call i8* @strcpy(i8* %arraydecay157, i8* %64) #7
  %inc161 = add nsw i32 %58, 1
  %cmp162 = icmp sgt i32 %58, 9998
  br i1 %cmp162, label %if.then164, label %if.end165

if.then164:                                       ; preds = %for.body147
  %rem = srem i32 %inc161, 10000
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %for.body147
  %resnr.0 = phi i32 [ %rem, %if.then164 ], [ %inc161, %for.body147 ]
  br i1 %tobool166, label %if.else168, label %if.end181

if.else168:                                       ; preds = %if.end165
  %65 = load %struct.t_atom** %atom, align 8, !tbaa !4
  %chain172 = getelementptr inbounds %struct.t_atom* %65, i64 %idxprom150, i32 9
  %66 = load i8* %chain172, align 1, !tbaa !1
  %tobool173 = icmp eq i8 %66, 0
  %. = select i1 %tobool173, i8 32, i8 %66
  br label %if.end181

if.end181:                                        ; preds = %if.else168, %if.end165
  %ch.0 = phi i8 [ %chain, %if.end165 ], [ %., %if.else168 ]
  %67 = load %struct.t_pdbinfo** %pdbinfo, align 8, !tbaa !4
  %tobool183 = icmp eq %struct.t_pdbinfo* %67, null
  br i1 %tobool183, label %if.end205, label %if.then184

if.then184:                                       ; preds = %if.end181
  %type188 = getelementptr inbounds %struct.t_pdbinfo* %67, i64 %idxprom150, i32 0
  %68 = load i32* %type188, align 4, !tbaa !0
  br i1 %tobool189, label %cond.false191, label %cond.end197

cond.false191:                                    ; preds = %if.then184
  %occup195 = getelementptr inbounds %struct.t_pdbinfo* %67, i64 %idxprom150, i32 4
  %69 = load float* %occup195, align 4, !tbaa !3
  %phitmp343 = fpext float %69 to double
  br label %cond.end197

cond.end197:                                      ; preds = %if.then184, %cond.false191
  %cond198 = phi double [ %phitmp343, %cond.false191 ], [ 1.000000e+00, %if.then184 ]
  %bfac203 = getelementptr inbounds %struct.t_pdbinfo* %67, i64 %idxprom150, i32 5
  %70 = load float* %bfac203, align 4, !tbaa !3
  %phitmp = sext i32 %68 to i64
  %phitmp339 = fpext float %70 to double
  br label %if.end205

if.end205:                                        ; preds = %if.end181, %cond.end197
  %type.0 = phi i64 [ %phitmp, %cond.end197 ], [ 0, %if.end181 ]
  %occup.0 = phi double [ %cond198, %cond.end197 ], [ 1.000000e+00, %if.end181 ]
  %bfac.0 = phi double [ %phitmp339, %cond.end197 ], [ 0.000000e+00, %if.end181 ]
  %call207 = call i64 @strlen(i8* %arraydecay157) #8
  %cmp208 = icmp ult i64 %call207, 4
  br i1 %cmp208, label %if.then210, label %if.else213

if.then210:                                       ; preds = %if.end205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([46 x i8]* @.str40, i64 0, i64 0), i64 46, i32 1, i1 false)
  br label %if.end224

if.else213:                                       ; preds = %if.end205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([46 x i8]* @.str39, i64 0, i64 0), i64 46, i32 1, i1 false)
  %call217 = call i64 @strlen(i8* %arraydecay157) #8
  %cmp218 = icmp ugt i64 %call217, 4
  br i1 %cmp218, label %if.then220, label %if.end224

if.then220:                                       ; preds = %if.else213
  %71 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([75 x i8]* @.str7, i64 0, i64 0), i8* %arraydecay157) #7
  br label %if.end224

if.end224:                                        ; preds = %if.else213, %if.then220, %if.then210
  %72 = load i32* @bWideFormat, align 4, !tbaa !0
  %tobool225 = icmp eq i32 %72, 0
  %strlen = call i64 @strlen(i8* %0)
  %endptr = getelementptr [128 x i8]* %pdbform, i64 0, i64 %strlen
  br i1 %tobool225, label %if.else229, label %if.then226

if.then226:                                       ; preds = %if.end224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i64 12, i32 1, i1 false)
  br label %if.end232

if.else229:                                       ; preds = %if.end224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0), i64 12, i32 1, i1 false)
  br label %if.end232

if.end232:                                        ; preds = %if.else229, %if.then226
  %arrayidx235 = getelementptr inbounds [11 x i8*]* @pdbtp, i64 0, i64 %type.0
  %73 = load i8** %arrayidx235, align 8, !tbaa !4
  %add = add nsw i32 %56, 1
  %rem236 = srem i32 %add, 100000
  %conv239 = sext i8 %ch.0 to i32
  %arrayidx242 = getelementptr inbounds [3 x float]* %x, i64 %idxprom150, i64 0
  %74 = load float* %arrayidx242, align 4, !tbaa !3
  %mul243 = fmul float %74, 1.000000e+01
  %conv244 = fpext float %mul243 to double
  %arrayidx247 = getelementptr inbounds [3 x float]* %x, i64 %idxprom150, i64 1
  %75 = load float* %arrayidx247, align 4, !tbaa !3
  %mul248 = fmul float %75, 1.000000e+01
  %conv249 = fpext float %mul248 to double
  %arrayidx252 = getelementptr inbounds [3 x float]* %x, i64 %idxprom150, i64 2
  %76 = load float* %arrayidx252, align 4, !tbaa !3
  %mul253 = fmul float %76, 1.000000e+01
  %conv254 = fpext float %mul253 to double
  %call257 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* %0, i8* %73, i32 %rem236, i8* %arraydecay157, i8* %arraydecay153, i32 %conv239, i32 %resnr.0, double %conv244, double %conv249, double %conv254, double %occup.0, double %bfac.0) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nindex
  br i1 %exitcond, label %for.end260, label %for.body147

for.end260:                                       ; preds = %if.end232, %for.cond144.preheader
  %77 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out)
  %cmp262 = icmp slt i32 %model_nr, 0
  %78 = load i32* @bTER, align 4, !tbaa !0
  %tobool265 = icmp ne i32 %78, 0
  %or.cond = or i1 %cmp262, %tobool265
  br i1 %or.cond, label %if.end268, label %if.then266

if.then266:                                       ; preds = %for.end260
  %79 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %out)
  br label %if.end268

if.end268:                                        ; preds = %for.end260, %if.then266
  call void @llvm.lifetime.end(i64 128, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i8* @bromacs() #3

; Function Attrs: nounwind optsize
declare double @acos(double) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @write_pdbfile(%struct._IO_FILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, [3 x float]* %box, i8 signext %chain, i32 %model_nr) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %0 = load i32* %nr, align 4, !tbaa !0
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str13, i64 0, i64 0), i32 191, i32 %0, i32 4) #7
  %1 = bitcast i8* %call to i32*
  %2 = load i32* %nr, align 4, !tbaa !0
  %cmp11 = icmp sgt i32 %2, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv
  %3 = trunc i64 %indvars.iv to i32
  store i32 %3, i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %4 = load i32* %nr, align 4, !tbaa !0
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %5, %4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %2, %entry ], [ %4, %for.body ]
  tail call void @write_pdbfile_indexed(%struct._IO_FILE* %out, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i8 signext %chain, i32 %model_nr, i32 %.lcssa, i32* %1) #9
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str13, i64 0, i64 0), i32 195, i8* %call) #7
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize readonly uwtable
define i32 @line2type(i8* nocapture %line) #6 {
entry:
  %type = alloca [8 x i8], align 1
  %type30 = getelementptr inbounds [8 x i8]* %type, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %type30, i8* %line, i64 6, i32 1, i1 false)
  %arrayidx4 = getelementptr inbounds [8 x i8]* %type, i64 0, i64 6
  store i8 0, i8* %arrayidx4, align 1, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x i8]* %type, i64 0, i64 0
  br label %for.body7

for.cond5:                                        ; preds = %for.body7
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp6 = icmp slt i32 %0, 11
  br i1 %cmp6, label %for.body7, label %for.end16

for.body7:                                        ; preds = %entry, %for.cond5
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond5 ]
  %k.125 = phi i32 [ 0, %entry ], [ %inc15, %for.cond5 ]
  %arrayidx9 = getelementptr inbounds [11 x i8*]* @pdbtp, i64 0, i64 %indvars.iv
  %1 = load i8** %arrayidx9, align 8, !tbaa !4
  %call = call i64 @strlen(i8* %1) #8
  %call12 = call i32 @strncmp(i8* %arraydecay, i8* %1, i64 %call) #8
  %cmp13 = icmp eq i32 %call12, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc15 = add nsw i32 %k.125, 1
  br i1 %cmp13, label %for.end16, label %for.cond5

for.end16:                                        ; preds = %for.body7, %for.cond5
  %k.1.lcssa = phi i32 [ %k.125, %for.body7 ], [ %inc15, %for.cond5 ]
  ret i32 %k.1.lcssa
}

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize uwtable
define i32 @is_hydrogen(i8* nocapture %nm) #0 {
entry:
  %buf = alloca [30 x i8], align 16
  %arraydecay = getelementptr inbounds [30 x i8]* %buf, i64 0, i64 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* %nm) #7
  call void @trim(i8* %arraydecay) #7
  %0 = bitcast [30 x i8]* %buf to i16*
  %1 = load i16* %0, align 16
  %2 = trunc i16 %1 to i8
  %cmp = icmp eq i8 %2, 72
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %idxprom = sext i8 %2 to i64
  %call5 = call i16** @__ctype_b_loc() #10
  %3 = load i16** %call5, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds i16* %3, i64 %idxprom
  %4 = load i16* %arrayidx6, align 2, !tbaa !5
  %and = and i16 %4, 2048
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %.mask = and i16 %1, -256
  %cmp10 = icmp eq i16 %.mask, 18432
  br i1 %cmp10, label %return, label %if.end13

if.end13:                                         ; preds = %if.else, %land.lhs.true
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 1, %entry ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @trim(i8*) #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind optsize uwtable
define i32 @is_dummymass(i8* nocapture %nm) #0 {
entry:
  %buf = alloca [30 x i8], align 16
  %arraydecay = getelementptr inbounds [30 x i8]* %buf, i64 0, i64 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* %nm) #7
  call void @trim(i8* %arraydecay) #7
  %0 = load i8* %arraydecay, align 16, !tbaa !1
  %cmp = icmp eq i8 %0, 77
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call4 = call i64 @strlen(i8* %arraydecay) #8
  %sub = add i64 %call4, -1
  %arrayidx5 = getelementptr inbounds [30 x i8]* %buf, i64 0, i64 %sub
  %1 = load i8* %arrayidx5, align 1, !tbaa !1
  %idxprom = sext i8 %1 to i64
  %call7 = call i16** @__ctype_b_loc() #10
  %2 = load i16** %call7, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i16* %2, i64 %idxprom
  %3 = load i16* %arrayidx8, align 2, !tbaa !5
  %and = and i16 %3, 2048
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @read_pdbfile(%struct._IO_FILE* %in, i8* %title, i32* %model_nr, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, [3 x float]* %box, i32 %bChange) #0 {
entry:
  %resnm.i = alloca [12 x i8], align 4
  %resnr.i = alloca [12 x i8], align 4
  %xc.i = alloca [12 x i8], align 8
  %yc.i = alloca [12 x i8], align 8
  %zc.i = alloca [12 x i8], align 8
  %occup.i = alloca [12 x i8], align 1
  %bfac.i = alloca [12 x i8], align 1
  %pdbresnr.i = alloca [12 x i8], align 4
  %anr.i = alloca [12 x i8], align 1
  %anm.i = alloca [12 x i8], align 4
  %line = alloca [4097 x i8], align 16
  %sa = alloca [12 x i8], align 1
  %sb = alloca [12 x i8], align 1
  %sc = alloca [12 x i8], align 1
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %gamma = alloca double, align 8
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %0) #1
  %cmp = icmp ne [3 x float]* %box, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast [3 x float]* %box to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 4, i1 false) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.b = load i1* @read_pdbfile.bFirst, align 1
  br i1 %.b, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @open_symtab(%struct.t_symtab* @read_pdbfile.symtab) #7
  store i1 true, i1* @read_pdbfile.bFirst, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then1
  store i8 0, i8* %title, align 1, !tbaa !1
  %2 = getelementptr inbounds [12 x i8]* %anr.i, i64 0, i64 0
  %3 = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 0
  %4 = getelementptr inbounds [12 x i8]* %resnm.i, i64 0, i64 0
  %5 = getelementptr inbounds [12 x i8]* %resnr.i, i64 0, i64 0
  %6 = getelementptr inbounds [12 x i8]* %xc.i, i64 0, i64 0
  %7 = getelementptr inbounds [12 x i8]* %yc.i, i64 0, i64 0
  %8 = getelementptr inbounds [12 x i8]* %zc.i, i64 0, i64 0
  %9 = getelementptr inbounds [12 x i8]* %occup.i, i64 0, i64 0
  %10 = getelementptr inbounds [12 x i8]* %bfac.i, i64 0, i64 0
  %11 = getelementptr inbounds [12 x i8]* %pdbresnr.i, i64 0, i64 0
  %nr.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %scevgep203.i = getelementptr [4097 x i8]* %line, i64 0, i64 6
  %arrayidx7.i = getelementptr inbounds [12 x i8]* %anr.i, i64 0, i64 5
  %scevgep195.i = getelementptr [4097 x i8]* %line, i64 0, i64 12
  %12 = bitcast i8* %scevgep195.i to i32*
  %13 = bitcast [12 x i8]* %anm.i to i32*
  %arrayidx21.i = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 4
  %arrayidx24.i = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 16
  %14 = bitcast [12 x i8]* %resnm.i to i32*
  %arrayidx38.i = getelementptr inbounds [12 x i8]* %resnm.i, i64 0, i64 4
  %arrayidx44.i = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 21
  %scevgep161.i = getelementptr [4097 x i8]* %line, i64 0, i64 22
  %15 = bitcast i8* %scevgep161.i to i32*
  %16 = bitcast [12 x i8]* %resnr.i to i32*
  %17 = bitcast [12 x i8]* %pdbresnr.i to i32*
  %arrayidx69.i = getelementptr inbounds [12 x i8]* %resnr.i, i64 0, i64 4
  %arrayidx72.i = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 26
  %arrayidx74.i = getelementptr inbounds [12 x i8]* %pdbresnr.i, i64 0, i64 4
  %arrayidx77.i = getelementptr inbounds [12 x i8]* %pdbresnr.i, i64 0, i64 5
  %scevgep145.i = getelementptr [4097 x i8]* %line, i64 0, i64 30
  %18 = bitcast i8* %scevgep145.i to i64*
  %19 = bitcast [12 x i8]* %xc.i to i64*
  %arrayidx92.i = getelementptr inbounds [12 x i8]* %xc.i, i64 0, i64 8
  %scevgep127.i = getelementptr [4097 x i8]* %line, i64 0, i64 38
  %20 = bitcast i8* %scevgep127.i to i64*
  %21 = bitcast [12 x i8]* %yc.i to i64*
  %arrayidx105.i = getelementptr inbounds [12 x i8]* %yc.i, i64 0, i64 8
  %scevgep107.i = getelementptr [4097 x i8]* %line, i64 0, i64 46
  %22 = bitcast i8* %scevgep107.i to i64*
  %23 = bitcast [12 x i8]* %zc.i to i64*
  %arrayidx118.i = getelementptr inbounds [12 x i8]* %zc.i, i64 0, i64 8
  %scevgep85.i = getelementptr [4097 x i8]* %line, i64 0, i64 54
  %arrayidx131.i = getelementptr inbounds [12 x i8]* %occup.i, i64 0, i64 6
  %scevgep.i270 = getelementptr [4097 x i8]* %line, i64 0, i64 60
  %arrayidx144.i = getelementptr inbounds [12 x i8]* %bfac.i, i64 0, i64 7
  %atom.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %pdbinfo.i274 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11
  %nres.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  %resname.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  %tobool181.i = icmp eq i32 %bChange, 0
  %atomname.i273 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %add.ptr.i = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 29
  %arraydecay18 = getelementptr inbounds [12 x i8]* %sa, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [12 x i8]* %sb, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [12 x i8]* %sc, i64 0, i64 0
  %24 = bitcast [3 x float]* %box to i8*
  %arrayidx31 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arrayidx52 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %arrayidx57 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %arrayidx62 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %arrayidx72 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %arrayidx91 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %tobool207 = icmp eq i32* %model_nr, null
  br label %land.rhs

land.rhs:                                         ; preds = %if.else75.i, %if.then71.i, %if.then37.i, %if.else197, %if.then194, %if.end188, %read_atom.exit, %sw.bb9, %sw.bb14, %if.else, %if.then44, %if.end126, %if.then130, %lor.lhs.false137, %sw.bb206, %if.then208, %while.body, %if.end2, %while.cond.backedge
  %bCOMPND.0282 = phi i32 [ 0, %if.end2 ], [ %bCOMPND.0282, %while.cond.backedge ], [ %bCOMPND.0282, %while.body ], [ %bCOMPND.0282, %if.then208 ], [ %bCOMPND.0282, %sw.bb206 ], [ %bCOMPND.0282, %lor.lhs.false137 ], [ %bCOMPND.0282, %if.then130 ], [ %bCOMPND.0282, %if.end126 ], [ %bCOMPND.0282, %if.then44 ], [ %bCOMPND.0282, %if.else ], [ %bCOMPND.0282, %sw.bb14 ], [ %bCOMPND.0282, %sw.bb9 ], [ %bCOMPND.0282, %read_atom.exit ], [ 1, %if.end188 ], [ 1, %if.then194 ], [ 1, %if.else197 ], [ %bCOMPND.0282, %if.then37.i ], [ %bCOMPND.0282, %if.then71.i ], [ %bCOMPND.0282, %if.else75.i ]
  %natom.0278 = phi i32 [ 0, %if.end2 ], [ %natom.0278, %while.cond.backedge ], [ %natom.0278, %while.body ], [ %natom.0278, %if.then208 ], [ %natom.0278, %sw.bb206 ], [ %natom.0278, %lor.lhs.false137 ], [ %natom.0278, %if.then130 ], [ %natom.0278, %if.end126 ], [ %natom.0278, %if.then44 ], [ %natom.0278, %if.else ], [ %natom.0278, %sw.bb14 ], [ %natom.0278, %sw.bb9 ], [ %inc249.i, %read_atom.exit ], [ %natom.0278, %if.end188 ], [ %natom.0278, %if.then194 ], [ %natom.0278, %if.else197 ], [ %natom.0278, %if.then37.i ], [ %natom.0278, %if.then71.i ], [ %natom.0278, %if.else75.i ]
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #7
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %while.end213, label %while.body

while.body:                                       ; preds = %land.rhs
  %call6 = call i32 @line2type(i8* %0) #9
  switch i32 %call6, label %land.rhs [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb14
    i32 9, label %land.rhs104
    i32 8, label %land.rhs104
    i32 4, label %sw.bb133
    i32 7, label %while.cond.backedge
    i32 5, label %sw.bb206
    i32 6, label %while.end213
  ]

while.cond.backedge:                              ; preds = %while.body
  %25 = load i32* @bTER, align 4, !tbaa !0
  %tobool203 = icmp eq i32 %25, 0
  br i1 %tobool203, label %land.rhs, label %while.end213

sw.bb:                                            ; preds = %while.body, %while.body
  call void @llvm.lifetime.start(i64 12, i8* %2) #1
  call void @llvm.lifetime.start(i64 12, i8* %3) #1
  call void @llvm.lifetime.start(i64 12, i8* %4) #1
  call void @llvm.lifetime.start(i64 12, i8* %5) #1
  call void @llvm.lifetime.start(i64 12, i8* %6) #1
  call void @llvm.lifetime.start(i64 12, i8* %7) #1
  call void @llvm.lifetime.start(i64 12, i8* %8) #1
  call void @llvm.lifetime.start(i64 12, i8* %9) #1
  call void @llvm.lifetime.start(i64 12, i8* %10) #1
  call void @llvm.lifetime.start(i64 12, i8* %11) #1
  %26 = load i32* %nr.i, align 4, !tbaa !0
  %cmp.i = icmp sgt i32 %26, %natom.0278
  br i1 %cmp.i, label %for.end50.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %add.i = add nsw i32 %natom.0278, 1
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([54 x i8]* @.str29, i64 0, i64 0), i32 %add.i, i32 %26) #7
  br label %for.end50.i

for.end50.i:                                      ; preds = %if.then.i, %sw.bb
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %scevgep203.i, i64 5, i32 1, i1 false) #1
  store i8 0, i8* %arrayidx7.i, align 1, !tbaa !1
  call void @trim(i8* %2) #7
  %27 = load i32* %12, align 4
  store i32 %27, i32* %13, align 4
  store i8 0, i8* %arrayidx21.i, align 4, !tbaa !1
  call void @trim(i8* %3) #7
  %28 = bitcast i8* %arrayidx24.i to i64*
  %29 = load i64* %28, align 16
  %30 = trunc i64 %29 to i8
  %31 = lshr i64 %29, 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %14, align 4
  store i8 0, i8* %arrayidx38.i, align 4, !tbaa !1
  call void @trim(i8* %4) #7
  %33 = load i8* %arrayidx44.i, align 1, !tbaa !1
  %34 = load i32* %15, align 2
  store i32 %34, i32* %16, align 4
  store i32 %34, i32* %17, align 4
  store i8 0, i8* %arrayidx69.i, align 4, !tbaa !1
  call void @trim(i8* %5) #7
  %35 = load i8* %arrayidx72.i, align 2, !tbaa !1
  store i8 %35, i8* %arrayidx74.i, align 4, !tbaa !1
  store i8 0, i8* %arrayidx77.i, align 1, !tbaa !1
  call void @trim(i8* %11) #7
  %36 = load i64* %18, align 2
  store i64 %36, i64* %19, align 8
  store i8 0, i8* %arrayidx92.i, align 8, !tbaa !1
  %37 = load i64* %20, align 2
  store i64 %37, i64* %21, align 8
  store i8 0, i8* %arrayidx105.i, align 8, !tbaa !1
  %38 = load i64* %22, align 2
  store i64 %38, i64* %23, align 8
  store i8 0, i8* %arrayidx118.i, align 8, !tbaa !1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %scevgep85.i, i64 6, i32 1, i1 false) #1
  store i8 0, i8* %arrayidx131.i, align 1, !tbaa !1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %scevgep.i270, i64 7, i32 1, i1 false) #1
  store i8 0, i8* %arrayidx144.i, align 1, !tbaa !1
  %39 = load %struct.t_atom** %atom.i, align 8, !tbaa !4
  %tobool.i = icmp eq %struct.t_atom* %39, null
  %idxprom195.pre.i = sext i32 %natom.0278 to i64
  br i1 %tobool.i, label %if.end192.i, label %if.then145.i

if.then145.i:                                     ; preds = %for.end50.i
  %cmp149.i = icmp eq i32 %natom.0278, 0
  br i1 %cmp149.i, label %if.then162.critedge.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then145.i
  %call.i271 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnr, i64 0, i64 0), i8* %11) #8
  %cmp151.i = icmp eq i32 %call.i271, 0
  br i1 %cmp151.i, label %lor.lhs.false152.i, label %if.else.i272

lor.lhs.false152.i:                               ; preds = %lor.lhs.false.i
  %call154.i = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnm, i64 0, i64 0), i8* %4) #8
  %cmp155.i = icmp eq i32 %call154.i, 0
  br i1 %cmp155.i, label %if.else174.i, label %if.else.i272

if.then162.critedge.i:                            ; preds = %if.then145.i
  %call158.c.i = call i8* @strcpy(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnr, i64 0, i64 0), i8* %11) #7
  %call160.c.i = call i8* @strcpy(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnm, i64 0, i64 0), i8* %4) #7
  br label %if.end168.i

if.else.i272:                                     ; preds = %lor.lhs.false152.i, %lor.lhs.false.i
  %call158.i = call i8* @strcpy(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnr, i64 0, i64 0), i8* %11) #7
  %call160.i = call i8* @strcpy(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnm, i64 0, i64 0), i8* %4) #7
  %sub.i = add nsw i32 %natom.0278, -1
  %idxprom163.i = sext i32 %sub.i to i64
  %40 = load %struct.t_atom** %atom.i, align 8, !tbaa !4
  %resnr166.i = getelementptr inbounds %struct.t_atom* %40, i64 %idxprom163.i, i32 7
  %41 = load i32* %resnr166.i, align 4, !tbaa !0
  %add167.i = add nsw i32 %41, 1
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.else.i272, %if.then162.critedge.i
  %newres.0.i = phi i32 [ %add167.i, %if.else.i272 ], [ 0, %if.then162.critedge.i ]
  %add169.i = add nsw i32 %newres.0.i, 1
  store i32 %add169.i, i32* %nres.i, align 4, !tbaa !0
  %call171.i = call i8** @put_symtab(%struct.t_symtab* @read_pdbfile.symtab, i8* %4) #7
  %idxprom172.i = sext i32 %newres.0.i to i64
  %42 = load i8**** %resname.i, align 8, !tbaa !4
  %arrayidx173.i = getelementptr inbounds i8*** %42, i64 %idxprom172.i
  store i8** %call171.i, i8*** %arrayidx173.i, align 8, !tbaa !4
  br label %if.end180.i

if.else174.i:                                     ; preds = %lor.lhs.false152.i
  %sub175.i = add nsw i32 %natom.0278, -1
  %idxprom176.i = sext i32 %sub175.i to i64
  %resnr179.i = getelementptr inbounds %struct.t_atom* %39, i64 %idxprom176.i, i32 7
  %43 = load i32* %resnr179.i, align 4, !tbaa !0
  br label %if.end180.i

if.end180.i:                                      ; preds = %if.else174.i, %if.end168.i
  %newres.1.i = phi i32 [ %newres.0.i, %if.end168.i ], [ %43, %if.else174.i ]
  br i1 %tobool181.i, label %if.end184.i, label %if.then182.i

if.then182.i:                                     ; preds = %if.end180.i
  %call.i.i = call i64 @strlen(i8* %3) #8
  %conv.i.i = trunc i64 %call.i.i to i32
  %44 = load i8* %3, align 4, !tbaa !1
  %idxprom.i.i = sext i8 %44 to i64
  %call2.i.i = call i16** @__ctype_b_loc() #10
  %45 = load i16** %call2.i.i, align 8, !tbaa !4
  %arrayidx3.i.i = getelementptr inbounds i16* %45, i64 %idxprom.i.i
  %46 = load i16* %arrayidx3.i.i, align 2, !tbaa !5
  %and.i.i = and i16 %46, 2048
  %tobool.i.i = icmp eq i16 %and.i.i, 0
  br i1 %tobool.i.i, label %if.end.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.then182.i
  %cmp31.i.i = icmp sgt i32 %conv.i.i, 1
  br i1 %cmp31.i.i, label %for.body.i.i, label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.preheader.i.i, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ 1, %for.cond.preheader.i.i ]
  %arrayidx8.i.i = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 %indvars.iv.i.i
  %47 = load i8* %arrayidx8.i.i, align 1, !tbaa !1
  %48 = add nsw i64 %indvars.iv.i.i, -1
  %arrayidx10.i.i = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 %48
  store i8 %47, i8* %arrayidx10.i.i, align 1, !tbaa !1
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv.i.i
  br i1 %exitcond, label %for.end.i.i, label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i, %for.cond.preheader.i.i
  %sub11.i.i = shl i64 %call.i.i, 32
  %sext.i.i = add i64 %sub11.i.i, -4294967296
  %idxprom12.i.i = ashr exact i64 %sext.i.i, 32
  %arrayidx13.i.i = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 %idxprom12.i.i
  store i8 %44, i8* %arrayidx13.i.i, align 1, !tbaa !1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.end.i.i, %if.then182.i
  %call14.i.i = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([4 x i8]* @.str30, i64 0, i64 0)) #8
  %cmp15.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.end184.i

if.then17.i.i:                                    ; preds = %if.end.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0), i64 3, i32 1, i1 false) #1
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.then17.i.i, %if.end.i.i, %if.end180.i
  %call186.i = call i8** @put_symtab(%struct.t_symtab* @read_pdbfile.symtab, i8* %3) #7
  %49 = load i8**** %atomname.i273, align 8, !tbaa !4
  %arrayidx188.i = getelementptr inbounds i8*** %49, i64 %idxprom195.pre.i
  store i8** %call186.i, i8*** %arrayidx188.i, align 8, !tbaa !4
  %chain190.i = getelementptr inbounds %struct.t_atom* %39, i64 %idxprom195.pre.i, i32 9
  store i8 %33, i8* %chain190.i, align 1, !tbaa !1
  %resnr191.i = getelementptr inbounds %struct.t_atom* %39, i64 %idxprom195.pre.i, i32 7
  store i32 %newres.1.i, i32* %resnr191.i, align 4, !tbaa !0
  %m.i = getelementptr inbounds %struct.t_atom* %39, i64 %idxprom195.pre.i, i32 0
  store float 0.000000e+00, float* %m.i, align 4, !tbaa !3
  %q.i = getelementptr inbounds %struct.t_atom* %39, i64 %idxprom195.pre.i, i32 1
  store float 0.000000e+00, float* %q.i, align 4, !tbaa !3
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.end184.i, %for.end50.i
  %call194.i = call double @atof(i8* %6) #8
  %mul.i = fmul double %call194.i, 1.000000e-01
  %conv.i = fptrunc double %mul.i to float
  %arrayidx197.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom195.pre.i, i64 0
  store float %conv.i, float* %arrayidx197.i, align 4, !tbaa !3
  %call199.i = call double @atof(i8* %7) #8
  %mul200.i = fmul double %call199.i, 1.000000e-01
  %conv201.i = fptrunc double %mul200.i to float
  %arrayidx204.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom195.pre.i, i64 1
  store float %conv201.i, float* %arrayidx204.i, align 4, !tbaa !3
  %call206.i = call double @atof(i8* %8) #8
  %mul207.i = fmul double %call206.i, 1.000000e-01
  %conv208.i = fptrunc double %mul207.i to float
  %arrayidx211.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom195.pre.i, i64 2
  store float %conv208.i, float* %arrayidx211.i, align 4, !tbaa !3
  %50 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !tbaa !4
  %tobool212.i = icmp eq %struct.t_pdbinfo* %50, null
  br i1 %tobool212.i, label %read_atom.exit, label %if.then213.i

if.then213.i:                                     ; preds = %if.end192.i
  %type217.i = getelementptr inbounds %struct.t_pdbinfo* %50, i64 %idxprom195.pre.i, i32 0
  store i32 %call6, i32* %type217.i, align 4, !tbaa !0
  %call219.i = call i32 @atoi(i8* %2) #8
  %atomnr.i = getelementptr inbounds %struct.t_pdbinfo* %50, i64 %idxprom195.pre.i, i32 1
  store i32 %call219.i, i32* %atomnr.i, align 4, !tbaa !0
  %altloc226.i = getelementptr inbounds %struct.t_pdbinfo* %50, i64 %idxprom195.pre.i, i32 2
  store i8 %30, i8* %altloc226.i, align 1, !tbaa !1
  %51 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !tbaa !4
  %arraydecay231.i = getelementptr inbounds %struct.t_pdbinfo* %51, i64 %idxprom195.pre.i, i32 3, i64 0
  %call233.i = call i8* @strcpy(i8* %arraydecay231.i, i8* %11) #7
  %call235.i = call double @atof(i8* %10) #8
  %conv236.i = fptrunc double %call235.i to float
  %52 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !tbaa !4
  %bfac240.i = getelementptr inbounds %struct.t_pdbinfo* %52, i64 %idxprom195.pre.i, i32 5
  store float %conv236.i, float* %bfac240.i, align 4, !tbaa !3
  %call242.i = call double @atof(i8* %9) #8
  %conv243.i = fptrunc double %call242.i to float
  %occup247.i = getelementptr inbounds %struct.t_pdbinfo* %52, i64 %idxprom195.pre.i, i32 4
  store float %conv243.i, float* %occup247.i, align 4, !tbaa !3
  br label %read_atom.exit

read_atom.exit:                                   ; preds = %if.end192.i, %if.then213.i
  %inc249.i = add nsw i32 %natom.0278, 1
  call void @llvm.lifetime.end(i64 12, i8* %2) #1
  call void @llvm.lifetime.end(i64 12, i8* %3) #1
  call void @llvm.lifetime.end(i64 12, i8* %4) #1
  call void @llvm.lifetime.end(i64 12, i8* %5) #1
  call void @llvm.lifetime.end(i64 12, i8* %6) #1
  call void @llvm.lifetime.end(i64 12, i8* %7) #1
  call void @llvm.lifetime.end(i64 12, i8* %8) #1
  call void @llvm.lifetime.end(i64 12, i8* %9) #1
  call void @llvm.lifetime.end(i64 12, i8* %10) #1
  call void @llvm.lifetime.end(i64 12, i8* %11) #1
  br label %land.rhs

sw.bb9:                                           ; preds = %while.body
  %53 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !tbaa !4
  %tobool10 = icmp eq %struct.t_pdbinfo* %53, null
  br i1 %tobool10, label %land.rhs, label %if.then11

if.then11:                                        ; preds = %sw.bb9
  call void @llvm.lifetime.start(i64 12, i8* %2) #1
  call void @llvm.lifetime.start(i64 12, i8* %3) #1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %scevgep203.i, i64 5, i32 1, i1 false) #1
  store i8 0, i8* %arrayidx7.i, align 1, !tbaa !1
  %54 = load i32* %12, align 4
  store i32 %54, i32* %13, align 4
  store i8 0, i8* %arrayidx21.i, align 4, !tbaa !1
  call void @trim(i8* %3) #7
  %call.i = call i32 @atoi(i8* %2) #8
  %cmp23125.i = icmp sgt i32 %natom.0278, 0
  br i1 %cmp23125.i, label %for.body24.lr.ph.i, label %if.then37.i

for.body24.lr.ph.i:                               ; preds = %if.then11
  %55 = load i8**** %atomname.i273, align 8, !tbaa !4
  %56 = sext i32 %natom.0278 to i64
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.cond22.backedge.i, %for.body24.lr.ph.i
  %indvars.iv.i = phi i64 [ %56, %for.body24.lr.ph.i ], [ %indvars.iv.next.i, %for.cond22.backedge.i ]
  %i.0127.in.i = phi i32 [ %natom.0278, %for.body24.lr.ph.i ], [ %i.0127.i, %for.cond22.backedge.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %i.0127.i = add nsw i32 %i.0127.in.i, -1
  %arrayidx27.i = getelementptr inbounds i8*** %55, i64 %indvars.iv.next.i
  %57 = load i8*** %arrayidx27.i, align 8, !tbaa !4
  %58 = load i8** %57, align 8, !tbaa !4
  %call28.i = call i32 @strcmp(i8* %3, i8* %58) #8
  %cmp29.i = icmp eq i32 %call28.i, 0
  br i1 %cmp29.i, label %land.lhs.true.i, label %for.cond22.backedge.i

for.cond22.backedge.i:                            ; preds = %land.lhs.true.i, %for.body24.i
  %59 = trunc i64 %indvars.iv.next.i to i32
  %cmp23.i = icmp sgt i32 %59, 0
  br i1 %cmp23.i, label %for.body24.i, label %if.then37.i

land.lhs.true.i:                                  ; preds = %for.body24.i
  %60 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !tbaa !4
  %atomnr32.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %indvars.iv.next.i, i32 1
  %61 = load i32* %atomnr32.i, align 4, !tbaa !0
  %cmp33.i = icmp eq i32 %call.i, %61
  br i1 %cmp33.i, label %for.end35.i, label %for.cond22.backedge.i

for.end35.i:                                      ; preds = %land.lhs.true.i
  %cmp36.i = icmp slt i32 %i.0127.in.i, 1
  br i1 %cmp36.i, label %if.then37.i, label %if.else.i

if.then37.i:                                      ; preds = %for.cond22.backedge.i, %for.end35.i, %if.then11
  %62 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call39.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([47 x i8]* @.str26, i64 0, i64 0), i8* %3, i32 %call.i) #7
  br label %land.rhs

if.else.i:                                        ; preds = %for.end35.i
  %idxprom40.i = sext i32 %i.0127.i to i64
  %arrayidx43.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %idxprom40.i, i32 7, i64 0
  %arrayidx48.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %idxprom40.i, i32 7, i64 1
  %arrayidx53.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %idxprom40.i, i32 7, i64 2
  %arrayidx58.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %idxprom40.i, i32 7, i64 3
  %arrayidx63.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %idxprom40.i, i32 7, i64 4
  %arrayidx68.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %idxprom40.i, i32 7, i64 5
  %call69.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr.i, i8* getelementptr inbounds ([13 x i8]* @.str27, i64 0, i64 0), i32* %arrayidx43.i, i32* %arrayidx48.i, i32* %arrayidx53.i, i32* %arrayidx58.i, i32* %arrayidx63.i, i32* %arrayidx68.i) #7
  %cmp70.i = icmp eq i32 %call69.i, 6
  br i1 %cmp70.i, label %if.then71.i, label %if.else75.i

if.then71.i:                                      ; preds = %if.else.i
  %63 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !tbaa !4
  %bAnisotropic.i = getelementptr inbounds %struct.t_pdbinfo* %63, i64 %idxprom40.i, i32 6
  store i32 1, i32* %bAnisotropic.i, align 4, !tbaa !0
  br label %land.rhs

if.else75.i:                                      ; preds = %if.else.i
  %64 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call76.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([35 x i8]* @.str28, i64 0, i64 0), i32 %i.0127.i) #7
  %65 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !tbaa !4
  %bAnisotropic80.i = getelementptr inbounds %struct.t_pdbinfo* %65, i64 %idxprom40.i, i32 6
  store i32 0, i32* %bAnisotropic80.i, align 4, !tbaa !0
  br label %land.rhs

sw.bb14:                                          ; preds = %while.body
  br i1 %cmp, label %if.then16, label %land.rhs

if.then16:                                        ; preds = %sw.bb14
  %call21 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), i8* %arraydecay18, i8* %arraydecay19, i8* %arraydecay20, double* %alpha, double* %beta, double* %gamma) #7
  %call23 = call double @atof(i8* %arraydecay18) #8
  %mul = fmul double %call23, 1.000000e-01
  %call25 = call double @atof(i8* %arraydecay19) #8
  %mul26 = fmul double %call25, 1.000000e-01
  %call28 = call double @atof(i8* %arraydecay20) #8
  %mul29 = fmul double %call28, 1.000000e-01
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 36, i32 4, i1 false) #1
  %conv = fptrunc double %mul to float
  store float %conv, float* %arrayidx31, align 4, !tbaa !3
  %66 = load double* %alpha, align 8, !tbaa !6
  %sub = fadd double %66, -9.000000e+01
  %call32 = call double @fabs(double %sub) #10
  %cmp33 = fcmp ogt double %call32, 1.200000e-38
  %.pre = load double* %beta, align 8, !tbaa !6
  br i1 %cmp33, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then16
  %sub35 = fadd double %.pre, -9.000000e+01
  %call36 = call double @fabs(double %sub35) #10
  %cmp37 = fcmp ogt double %call36, 1.200000e-38
  br i1 %cmp37, label %if.then44, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false
  %67 = load double* %gamma, align 8, !tbaa !6
  %sub40 = fadd double %67, -9.000000e+01
  %call41 = call double @fabs(double %sub40) #10
  %cmp42 = fcmp ogt double %call41, 1.200000e-38
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then16, %lor.lhs.false, %lor.lhs.false39
  %mul45 = fmul double %66, 0x3F91DF46A2529D39
  store double %mul45, double* %alpha, align 8, !tbaa !6
  %mul46 = fmul double %.pre, 0x3F91DF46A2529D39
  store double %mul46, double* %beta, align 8, !tbaa !6
  %68 = load double* %gamma, align 8, !tbaa !6
  %mul47 = fmul double %68, 0x3F91DF46A2529D39
  store double %mul47, double* %gamma, align 8, !tbaa !6
  %call48 = call double @cos(double %mul47) #7
  %mul49 = fmul double %mul26, %call48
  %conv50 = fptrunc double %mul49 to float
  store float %conv50, float* %arrayidx52, align 4, !tbaa !3
  %69 = load double* %gamma, align 8, !tbaa !6
  %call53 = call double @sin(double %69) #7
  %mul54 = fmul double %mul26, %call53
  %conv55 = fptrunc double %mul54 to float
  store float %conv55, float* %arrayidx57, align 4, !tbaa !3
  %70 = load double* %beta, align 8, !tbaa !6
  %call58 = call double @cos(double %70) #7
  %mul59 = fmul double %mul29, %call58
  %conv60 = fptrunc double %mul59 to float
  store float %conv60, float* %arrayidx62, align 4, !tbaa !3
  %71 = load double* %alpha, align 8, !tbaa !6
  %call63 = call double @cos(double %71) #7
  %72 = load double* %beta, align 8, !tbaa !6
  %call64 = call double @cos(double %72) #7
  %73 = load double* %gamma, align 8, !tbaa !6
  %call65 = call double @cos(double %73) #7
  %mul66 = fmul double %call64, %call65
  %sub67 = fsub double %call63, %mul66
  %mul68 = fmul double %mul29, %sub67
  %74 = load double* %gamma, align 8, !tbaa !6
  %call69 = call double @sin(double %74) #7
  %div = fdiv double %mul68, %call69
  %conv70 = fptrunc double %div to float
  store float %conv70, float* %arrayidx72, align 4, !tbaa !3
  %mul73 = fmul double %mul29, %mul29
  %75 = load float* %arrayidx62, align 4, !tbaa !3
  %mul78 = fmul float %75, %75
  %conv79 = fpext float %mul78 to double
  %sub80 = fsub double %mul73, %conv79
  %mul85 = fmul float %conv70, %conv70
  %conv86 = fpext float %mul85 to double
  %sub87 = fsub double %sub80, %conv86
  %call88 = call double @sqrt(double %sub87) #7
  %conv89 = fptrunc double %call88 to float
  store float %conv89, float* %arrayidx91, align 4, !tbaa !3
  br label %land.rhs

if.else:                                          ; preds = %lor.lhs.false39
  %conv92 = fptrunc double %mul26 to float
  store float %conv92, float* %arrayidx57, align 4, !tbaa !3
  %conv95 = fptrunc double %mul29 to float
  store float %conv95, float* %arrayidx91, align 4, !tbaa !3
  br label %land.rhs

land.rhs104:                                      ; preds = %while.body, %while.body, %land.rhs104
  %c.0 = phi i8* [ %incdec.ptr, %land.rhs104 ], [ %scevgep203.i, %while.body ], [ %scevgep203.i, %while.body ]
  %76 = load i8* %c.0, align 1, !tbaa !1
  %cmp107 = icmp eq i8 %76, 32
  %incdec.ptr = getelementptr inbounds i8* %c.0, i64 1
  br i1 %cmp107, label %land.rhs113, label %land.rhs104

land.rhs113:                                      ; preds = %land.rhs104, %land.rhs113.land.rhs113_crit_edge
  %77 = phi i8 [ %.pre289, %land.rhs113.land.rhs113_crit_edge ], [ 32, %land.rhs104 ]
  %c.1 = phi i8* [ %incdec.ptr120, %land.rhs113.land.rhs113_crit_edge ], [ %c.0, %land.rhs104 ]
  %cmp116 = icmp eq i8 %77, 32
  %incdec.ptr120 = getelementptr inbounds i8* %c.1, i64 1
  br i1 %cmp116, label %land.rhs113.land.rhs113_crit_edge, label %while.end121

land.rhs113.land.rhs113_crit_edge:                ; preds = %land.rhs113
  %.pre289 = load i8* %incdec.ptr120, align 1, !tbaa !1
  br label %land.rhs113

while.end121:                                     ; preds = %land.rhs113
  %call122 = call i8* @strstr(i8* %c.1, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0)) #8
  %tobool123 = icmp eq i8* %call122, null
  br i1 %tobool123, label %if.end126, label %if.then124

if.then124:                                       ; preds = %while.end121
  store i8 0, i8* %call122, align 1, !tbaa !1
  %strlenfirst266.pre = load i8* %c.1, align 1
  br label %if.end126

if.end126:                                        ; preds = %while.end121, %if.then124
  %strlenfirst266 = phi i8 [ %77, %while.end121 ], [ %strlenfirst266.pre, %if.then124 ]
  %cmp128 = icmp eq i8 %strlenfirst266, 0
  br i1 %cmp128, label %land.rhs, label %if.then130

if.then130:                                       ; preds = %if.end126
  %call131 = call i8* @strcpy(i8* %title, i8* %c.1) #7
  br label %land.rhs

sw.bb133:                                         ; preds = %while.body
  %call135 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0)) #8
  %tobool136 = icmp eq i8* %call135, null
  br i1 %tobool136, label %if.then142, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %sw.bb133
  %call140 = call i8* @strstr(i8* %scevgep203.i, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0)) #8
  %tobool141 = icmp eq i8* %call140, null
  br i1 %tobool141, label %land.rhs, label %if.then142

if.then142:                                       ; preds = %lor.lhs.false137, %sw.bb133
  %call145 = call i8* @strstr(i8* %scevgep203.i, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0)) #8
  %tobool146 = icmp eq i8* %call145, null
  %arraydecay.call145 = select i1 %tobool146, i8* %0, i8* %call145
  br label %land.rhs152

land.rhs152:                                      ; preds = %land.rhs152, %if.then142
  %c.2 = phi i8* [ %incdec.ptr159, %land.rhs152 ], [ %arraydecay.call145, %if.then142 ]
  %78 = load i8* %c.2, align 1, !tbaa !1
  %cmp155 = icmp eq i8 %78, 32
  %incdec.ptr159 = getelementptr inbounds i8* %c.2, i64 1
  br i1 %cmp155, label %land.rhs163, label %land.rhs152

land.rhs163:                                      ; preds = %land.rhs152, %land.rhs163.land.rhs163_crit_edge
  %79 = phi i8 [ %.pre290, %land.rhs163.land.rhs163_crit_edge ], [ 32, %land.rhs152 ]
  %c.3 = phi i8* [ %incdec.ptr170, %land.rhs163.land.rhs163_crit_edge ], [ %c.2, %land.rhs152 ]
  %cmp166 = icmp eq i8 %79, 32
  %incdec.ptr170 = getelementptr inbounds i8* %c.3, i64 1
  br i1 %cmp166, label %land.rhs163.land.rhs163_crit_edge, label %while.end171

land.rhs163.land.rhs163_crit_edge:                ; preds = %land.rhs163
  %.pre290 = load i8* %incdec.ptr170, align 1, !tbaa !1
  br label %land.rhs163

while.end171:                                     ; preds = %land.rhs163
  %call172 = call i8* @strstr(i8* %c.3, i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0)) #8
  %tobool173 = icmp eq i8* %call172, null
  br i1 %tobool173, label %if.end188, label %while.cond175

while.cond175:                                    ; preds = %while.end171, %while.cond175
  %d.0 = phi i8* [ %arrayidx176, %while.cond175 ], [ %call172, %while.end171 ]
  %arrayidx176 = getelementptr inbounds i8* %d.0, i64 -1
  %80 = load i8* %arrayidx176, align 1, !tbaa !1
  %cmp178 = icmp eq i8 %80, 59
  %cmp181 = icmp ugt i8* %d.0, %c.3
  %cmp181. = and i1 %cmp178, %cmp181
  br i1 %cmp181., label %while.cond175, label %while.end186

while.end186:                                     ; preds = %while.cond175
  store i8 0, i8* %d.0, align 1, !tbaa !1
  %strlenfirst.pre = load i8* %c.3, align 1
  br label %if.end188

if.end188:                                        ; preds = %while.end171, %while.end186
  %strlenfirst = phi i8 [ %79, %while.end171 ], [ %strlenfirst.pre, %while.end186 ]
  %cmp190 = icmp eq i8 %strlenfirst, 0
  br i1 %cmp190, label %land.rhs, label %if.then192

if.then192:                                       ; preds = %if.end188
  %tobool193 = icmp eq i32 %bCOMPND.0282, 0
  br i1 %tobool193, label %if.else197, label %if.then194

if.then194:                                       ; preds = %if.then192
  %strlen = call i64 @strlen(i8* %title)
  %endptr = getelementptr i8* %title, i64 %strlen
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([3 x i8]* @.str19, i64 0, i64 0), i64 3, i32 1, i1 false)
  %call196 = call i8* @strcat(i8* %title, i8* %c.3) #7
  br label %land.rhs

if.else197:                                       ; preds = %if.then192
  %call198 = call i8* @strcpy(i8* %title, i8* %c.3) #7
  br label %land.rhs

sw.bb206:                                         ; preds = %while.body
  br i1 %tobool207, label %land.rhs, label %if.then208

if.then208:                                       ; preds = %sw.bb206
  %call210 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0), i32* %model_nr) #7
  br label %land.rhs

while.end213:                                     ; preds = %while.body, %land.rhs, %while.cond.backedge
  call void @llvm.lifetime.end(i64 4097, i8* %0) #1
  ret i32 %natom.0278
}

; Function Attrs: optsize
declare void @open_symtab(%struct.t_symtab*) #3

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare double @cos(double) #2

; Function Attrs: nounwind optsize
declare double @sin(double) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @get_pdb_coordnum(%struct._IO_FILE* %in, i32* nocapture %natoms) #0 {
entry:
  %line = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  store i32 0, i32* %natoms, align 4, !tbaa !0
  %call20 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #7
  %tobool21 = icmp eq i8* %call20, null
  br i1 %tobool21, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %1 = load i32* @bTER, align 4, !tbaa !0
  %tobool1 = icmp eq i32 %1, 0
  br i1 %tobool1, label %land.lhs.true5, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %call3 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i64 3) #8
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %while.end, label %if.end

land.lhs.true5:                                   ; preds = %while.body
  %call7 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0), i64 6) #8
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %while.end, label %if.end

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true5
  %call10 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i64 6) #8
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end
  %call14 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i64 6) #8
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %while.cond.backedge

if.then16:                                        ; preds = %lor.lhs.false12, %if.end
  %2 = load i32* %natoms, align 4, !tbaa !0
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %natoms, align 4, !tbaa !0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then16, %lor.lhs.false12
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #7
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.cond.backedge, %land.lhs.true, %land.lhs.true5, %entry
  call void @llvm.lifetime.end(i64 4096, i8* %0) #1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @read_pdb_conf(i8* %infile, i8* %title, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, [3 x float]* %box, i32 %bChange) #0 {
entry:
  %call = tail call %struct._IO_FILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str25, i64 0, i64 0)) #7
  %call1 = tail call i32 @read_pdbfile(%struct._IO_FILE* %call, i8* %title, i32* null, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i32 %bChange) #9
  tail call void @ffclose(%struct._IO_FILE* %call) #7
  ret void
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #3

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare i8** @put_symtab(%struct.t_symtab*, i8*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

declare float @fabsf(float)

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
