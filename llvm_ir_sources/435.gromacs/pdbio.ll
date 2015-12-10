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
  tail call void @llvm.dbg.value(metadata !{i32 %bSet}, i64 0, metadata !49), !dbg !423
  store i32 %bSet, i32* @bWideFormat, align 4, !dbg !424, !tbaa !425
  ret void, !dbg !428
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @pdb_use_ter(i32 %bSet) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %bSet}, i64 0, metadata !52), !dbg !429
  store i32 %bSet, i32* @bTER, align 4, !dbg !430, !tbaa !425
  ret void, !dbg !431
}

; Function Attrs: nounwind optsize uwtable
define void @write_pdbfile_indexed(%struct._IO_FILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, [3 x float]* %box, i8 signext %chain, i32 %model_nr, i32 %nindex, i32* nocapture %index) #0 {
entry:
  %resnm = alloca [6 x i8], align 1
  %nm = alloca [6 x i8], align 1
  %pdbform = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !196), !dbg !432
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !197), !dbg !432
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !198), !dbg !433
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !199), !dbg !433
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !200), !dbg !433
  call void @llvm.dbg.value(metadata !{i8 %chain}, i64 0, metadata !201), !dbg !433
  call void @llvm.dbg.value(metadata !{i32 %model_nr}, i64 0, metadata !202), !dbg !434
  call void @llvm.dbg.value(metadata !{i32 %nindex}, i64 0, metadata !203), !dbg !434
  call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !204), !dbg !434
  call void @llvm.dbg.declare(metadata !{[6 x i8]* %resnm}, metadata !205), !dbg !435
  call void @llvm.dbg.declare(metadata !{[6 x i8]* %nm}, metadata !206), !dbg !435
  %0 = getelementptr inbounds [128 x i8]* %pdbform, i64 0, i64 0, !dbg !435
  call void @llvm.lifetime.start(i64 128, i8* %0) #2, !dbg !435
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %pdbform}, metadata !208), !dbg !435
  %tobool = icmp eq i8* %title, null, !dbg !436
  br i1 %tobool, label %cond.false, label %land.lhs.true, !dbg !436

land.lhs.true:                                    ; preds = %entry
  %1 = load i8* %title, align 1, !dbg !436, !tbaa !426
  %tobool1 = icmp eq i8 %1, 0, !dbg !436
  br i1 %tobool1, label %cond.false, label %cond.end, !dbg !436

cond.false:                                       ; preds = %land.lhs.true, %entry
  %call = call i8* @bromacs() #8, !dbg !436
  br label %cond.end, !dbg !436

cond.end:                                         ; preds = %land.lhs.true, %cond.false
  %cond = phi i8* [ %call, %cond.false ], [ %title, %land.lhs.true ], !dbg !436
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0), i8* %cond) #8, !dbg !436
  %2 = load i32* @bWideFormat, align 4, !dbg !437, !tbaa !425
  %tobool3 = icmp eq i32 %2, 0, !dbg !437
  br i1 %tobool3, label %if.end, label %if.then, !dbg !437

if.then:                                          ; preds = %cond.end
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %out), !dbg !438
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %out), !dbg !440
  br label %if.end, !dbg !441

if.end:                                           ; preds = %cond.end, %if.then
  %tobool6 = icmp eq [3 x float]* %box, null, !dbg !442
  br i1 %tobool6, label %if.end110, label %land.lhs.true7, !dbg !442

land.lhs.true7:                                   ; preds = %if.end
  %arraydecay = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !442
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !443), !dbg !444
  %5 = load float* %arraydecay, align 4, !dbg !445, !tbaa !446
  %mul.i = fmul float %5, %5, !dbg !445
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !445
  %6 = load float* %arrayidx2.i, align 4, !dbg !445, !tbaa !446
  %mul4.i = fmul float %6, %6, !dbg !445
  %add.i = fadd float %mul.i, %mul4.i, !dbg !445
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !445
  %7 = load float* %arrayidx5.i, align 4, !dbg !445, !tbaa !446
  %mul7.i = fmul float %7, %7, !dbg !445
  %add8.i = fadd float %add.i, %mul7.i, !dbg !445
  %conv10 = fpext float %add8.i to double, !dbg !442
  %cmp = fcmp ogt double %conv10, 1.200000e-38, !dbg !442
  %arraydecay27.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %.pre441 = load float* %arraydecay27.phi.trans.insert, align 4, !dbg !447, !tbaa !446
  br i1 %cmp, label %land.lhs.true7.if.then25_crit_edge, label %lor.lhs.false, !dbg !442

land.lhs.true7.if.then25_crit_edge:               ; preds = %land.lhs.true7
  %arrayidx2.i386.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %.pre442 = load float* %arrayidx2.i386.phi.trans.insert, align 4, !dbg !447, !tbaa !446
  %arrayidx5.i389.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %.pre443 = load float* %arrayidx5.i389.phi.trans.insert, align 4, !dbg !447, !tbaa !446
  br label %if.then25, !dbg !442

lor.lhs.false:                                    ; preds = %land.lhs.true7
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay27.phi.trans.insert}, i64 0, metadata !450), !dbg !452
  %mul.i355 = fmul float %.pre441, %.pre441, !dbg !453
  %arrayidx2.i356 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !453
  %8 = load float* %arrayidx2.i356, align 4, !dbg !453, !tbaa !446
  %mul4.i357 = fmul float %8, %8, !dbg !453
  %add.i358 = fadd float %mul.i355, %mul4.i357, !dbg !453
  %arrayidx5.i359 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !453
  %9 = load float* %arrayidx5.i359, align 4, !dbg !453, !tbaa !446
  %mul7.i360 = fmul float %9, %9, !dbg !453
  %add8.i361 = fadd float %add.i358, %mul7.i360, !dbg !453
  %conv15 = fpext float %add8.i361 to double, !dbg !451
  %cmp16 = fcmp ogt double %conv15, 1.200000e-38, !dbg !451
  br i1 %cmp16, label %if.then25, label %lor.lhs.false18, !dbg !451

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %arraydecay20 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !454
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay20}, i64 0, metadata !455), !dbg !456
  %10 = load float* %arraydecay20, align 4, !dbg !457, !tbaa !446
  %mul.i370 = fmul float %10, %10, !dbg !457
  %arrayidx2.i371 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !457
  %11 = load float* %arrayidx2.i371, align 4, !dbg !457, !tbaa !446
  %mul4.i372 = fmul float %11, %11, !dbg !457
  %add.i373 = fadd float %mul.i370, %mul4.i372, !dbg !457
  %arrayidx5.i374 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !457
  %12 = load float* %arrayidx5.i374, align 4, !dbg !457, !tbaa !446
  %mul7.i375 = fmul float %12, %12, !dbg !457
  %add8.i376 = fadd float %add.i373, %mul7.i375, !dbg !457
  %conv22 = fpext float %add8.i376 to double, !dbg !454
  %cmp23 = fcmp ogt double %conv22, 1.200000e-38, !dbg !454
  br i1 %cmp23, label %if.then25, label %if.end110, !dbg !454

if.then25:                                        ; preds = %lor.lhs.false, %land.lhs.true7.if.then25_crit_edge, %lor.lhs.false18
  %13 = phi float [ %.pre443, %land.lhs.true7.if.then25_crit_edge ], [ %9, %lor.lhs.false18 ], [ %9, %lor.lhs.false ]
  %14 = phi float [ %.pre442, %land.lhs.true7.if.then25_crit_edge ], [ %8, %lor.lhs.false18 ], [ %8, %lor.lhs.false ]
  %arraydecay27 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !448
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay27}, i64 0, metadata !458), !dbg !459
  %mul.i385 = fmul float %.pre441, %.pre441, !dbg !447
  %arrayidx2.i386 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !447
  %mul4.i387 = fmul float %14, %14, !dbg !447
  %add.i388 = fadd float %mul.i385, %mul4.i387, !dbg !447
  %arrayidx5.i389 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !447
  %mul7.i390 = fmul float %13, %13, !dbg !447
  %add8.i391 = fadd float %add.i388, %mul7.i390, !dbg !447
  %arraydecay30 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !448
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay30}, i64 0, metadata !458), !dbg !459
  %15 = load float* %arraydecay30, align 4, !dbg !447, !tbaa !446
  %mul.i392 = fmul float %15, %15, !dbg !447
  %arrayidx2.i393 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !447
  %16 = load float* %arrayidx2.i393, align 4, !dbg !447, !tbaa !446
  %mul4.i394 = fmul float %16, %16, !dbg !447
  %add.i395 = fadd float %mul.i392, %mul4.i394, !dbg !447
  %arrayidx5.i396 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !447
  %17 = load float* %arrayidx5.i396, align 4, !dbg !447, !tbaa !446
  %mul7.i397 = fmul float %17, %17, !dbg !447
  %add8.i398 = fadd float %add.i395, %mul7.i397, !dbg !447
  %mul = fmul float %add8.i391, %add8.i398, !dbg !448
  %conv32 = fpext float %mul to double, !dbg !448
  %cmp33 = fcmp ogt double %conv32, 1.200000e-38, !dbg !448
  br i1 %cmp33, label %if.then35, label %if.end45, !dbg !448

if.then35:                                        ; preds = %if.then25
  %call40 = call fastcc float @cos_angle_no_table(float* %arraydecay27, float* %arraydecay30) #9, !dbg !460
  %conv41 = fpext float %call40 to double, !dbg !460
  %call42 = call double @acos(double %conv41) #8, !dbg !460
  %mul43 = fmul double %call42, 0x404CA5DC1A63C1F8, !dbg !460
  %conv44 = fptrunc double %mul43 to float, !dbg !460
  call void @llvm.dbg.value(metadata !{float %conv44}, i64 0, metadata !218), !dbg !460
  %phitmp344 = fpext float %conv44 to double, !dbg !460
  %.pre = load float* %arraydecay, align 4, !dbg !461, !tbaa !446
  %.pre433 = load float* %arrayidx2.i, align 4, !dbg !461, !tbaa !446
  %.pre434 = load float* %arrayidx5.i, align 4, !dbg !461, !tbaa !446
  %.pre435 = load float* %arraydecay30, align 4, !dbg !461, !tbaa !446
  %.pre436 = load float* %arrayidx2.i393, align 4, !dbg !461, !tbaa !446
  %.pre437 = load float* %arrayidx5.i396, align 4, !dbg !461, !tbaa !446
  br label %if.end45, !dbg !460

if.end45:                                         ; preds = %if.then25, %if.then35
  %18 = phi float [ %.pre437, %if.then35 ], [ %17, %if.then25 ]
  %19 = phi float [ %.pre436, %if.then35 ], [ %16, %if.then25 ]
  %20 = phi float [ %.pre435, %if.then35 ], [ %15, %if.then25 ]
  %21 = phi float [ %.pre434, %if.then35 ], [ %7, %if.then25 ]
  %22 = phi float [ %.pre433, %if.then35 ], [ %6, %if.then25 ]
  %23 = phi float [ %.pre, %if.then35 ], [ %5, %if.then25 ]
  %alpha.0 = phi double [ %phitmp344, %if.then35 ], [ 9.000000e+01, %if.then25 ]
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !463), !dbg !464
  %mul.i413 = fmul float %23, %23, !dbg !461
  %mul4.i415 = fmul float %22, %22, !dbg !461
  %add.i416 = fadd float %mul.i413, %mul4.i415, !dbg !461
  %mul7.i418 = fmul float %21, %21, !dbg !461
  %add8.i419 = fadd float %add.i416, %mul7.i418, !dbg !461
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay30}, i64 0, metadata !463), !dbg !464
  %mul.i420 = fmul float %20, %20, !dbg !461
  %mul4.i422 = fmul float %19, %19, !dbg !461
  %add.i423 = fadd float %mul.i420, %mul4.i422, !dbg !461
  %mul7.i425 = fmul float %18, %18, !dbg !461
  %add8.i426 = fadd float %add.i423, %mul7.i425, !dbg !461
  %mul52 = fmul float %add8.i419, %add8.i426, !dbg !462
  %conv53 = fpext float %mul52 to double, !dbg !462
  %cmp54 = fcmp ogt double %conv53, 1.200000e-38, !dbg !462
  br i1 %cmp54, label %if.then56, label %if.end67, !dbg !462

if.then56:                                        ; preds = %if.end45
  %call61 = call fastcc float @cos_angle_no_table(float* %arraydecay, float* %arraydecay30) #9, !dbg !465
  %conv62 = fpext float %call61 to double, !dbg !465
  %call63 = call double @acos(double %conv62) #8, !dbg !465
  %mul64 = fmul double %call63, 0x404CA5DC1A63C1F8, !dbg !465
  %conv65 = fptrunc double %mul64 to float, !dbg !465
  call void @llvm.dbg.value(metadata !{float %conv65}, i64 0, metadata !219), !dbg !465
  %phitmp345 = fpext float %conv65 to double, !dbg !465
  %.pre438 = load float* %arraydecay, align 4, !dbg !466, !tbaa !446
  %.pre439 = load float* %arrayidx2.i, align 4, !dbg !466, !tbaa !446
  %.pre440 = load float* %arrayidx5.i, align 4, !dbg !466, !tbaa !446
  br label %if.end67, !dbg !465

if.end67:                                         ; preds = %if.end45, %if.then56
  %24 = phi float [ %.pre440, %if.then56 ], [ %21, %if.end45 ]
  %25 = phi float [ %.pre439, %if.then56 ], [ %22, %if.end45 ]
  %26 = phi float [ %.pre438, %if.then56 ], [ %23, %if.end45 ]
  %beta.0 = phi double [ %phitmp345, %if.then56 ], [ 9.000000e+01, %if.end45 ]
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !468), !dbg !469
  %mul.i406 = fmul float %26, %26, !dbg !466
  %mul4.i408 = fmul float %25, %25, !dbg !466
  %add.i409 = fadd float %mul.i406, %mul4.i408, !dbg !466
  %mul7.i411 = fmul float %24, %24, !dbg !466
  %add8.i412 = fadd float %add.i409, %mul7.i411, !dbg !466
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay27}, i64 0, metadata !468), !dbg !469
  %27 = load float* %arraydecay27, align 4, !dbg !466, !tbaa !446
  %mul.i399 = fmul float %27, %27, !dbg !466
  %28 = load float* %arrayidx2.i386, align 4, !dbg !466, !tbaa !446
  %mul4.i401 = fmul float %28, %28, !dbg !466
  %add.i402 = fadd float %mul.i399, %mul4.i401, !dbg !466
  %29 = load float* %arrayidx5.i389, align 4, !dbg !466, !tbaa !446
  %mul7.i404 = fmul float %29, %29, !dbg !466
  %add8.i405 = fadd float %add.i402, %mul7.i404, !dbg !466
  %mul74 = fmul float %add8.i412, %add8.i405, !dbg !467
  %conv75 = fpext float %mul74 to double, !dbg !467
  %cmp76 = fcmp ogt double %conv75, 1.200000e-38, !dbg !467
  br i1 %cmp76, label %if.then78, label %if.end89, !dbg !467

if.then78:                                        ; preds = %if.end67
  %call83 = call fastcc float @cos_angle_no_table(float* %arraydecay, float* %arraydecay27) #9, !dbg !470
  %conv84 = fpext float %call83 to double, !dbg !470
  %call85 = call double @acos(double %conv84) #8, !dbg !470
  %mul86 = fmul double %call85, 0x404CA5DC1A63C1F8, !dbg !470
  %conv87 = fptrunc double %mul86 to float, !dbg !470
  call void @llvm.dbg.value(metadata !{float %conv87}, i64 0, metadata !220), !dbg !470
  %phitmp346 = fpext float %conv87 to double, !dbg !470
  br label %if.end89, !dbg !470

if.end89:                                         ; preds = %if.end67, %if.then78
  %gamma.0 = phi double [ %phitmp346, %if.then78 ], [ 9.000000e+01, %if.end67 ]
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %out), !dbg !471
  call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !472) #2, !dbg !474
  %31 = load float* %arraydecay, align 4, !dbg !475, !tbaa !446
  %mul.i377 = fmul float %31, %31, !dbg !475
  %32 = load float* %arrayidx2.i, align 4, !dbg !475, !tbaa !446
  %mul4.i379 = fmul float %32, %32, !dbg !475
  %add.i380 = fadd float %mul.i377, %mul4.i379, !dbg !475
  %33 = load float* %arrayidx5.i, align 4, !dbg !475, !tbaa !446
  %mul7.i382 = fmul float %33, %33, !dbg !475
  %add8.i383 = fadd float %add.i380, %mul7.i382, !dbg !475
  %conv9.i384 = call float @sqrtf(float %add8.i383) #3, !dbg !475
  %mul94 = fmul float %conv9.i384, 1.000000e+01, !dbg !473
  %conv95 = fpext float %mul94 to double, !dbg !473
  call void @llvm.dbg.value(metadata !{float* %arraydecay27}, i64 0, metadata !472) #2, !dbg !474
  %34 = load float* %arraydecay27, align 4, !dbg !475, !tbaa !446
  %mul.i362 = fmul float %34, %34, !dbg !475
  %35 = load float* %arrayidx2.i386, align 4, !dbg !475, !tbaa !446
  %mul4.i364 = fmul float %35, %35, !dbg !475
  %add.i365 = fadd float %mul.i362, %mul4.i364, !dbg !475
  %36 = load float* %arrayidx5.i389, align 4, !dbg !475, !tbaa !446
  %mul7.i367 = fmul float %36, %36, !dbg !475
  %add8.i368 = fadd float %add.i365, %mul7.i367, !dbg !475
  %conv9.i369 = call float @sqrtf(float %add8.i368) #3, !dbg !475
  %mul99 = fmul float %conv9.i369, 1.000000e+01, !dbg !473
  %conv100 = fpext float %mul99 to double, !dbg !473
  call void @llvm.dbg.value(metadata !{float* %arraydecay30}, i64 0, metadata !472) #2, !dbg !474
  %37 = load float* %arraydecay30, align 4, !dbg !475, !tbaa !446
  %mul.i348 = fmul float %37, %37, !dbg !475
  %38 = load float* %arrayidx2.i393, align 4, !dbg !475, !tbaa !446
  %mul4.i350 = fmul float %38, %38, !dbg !475
  %add.i351 = fadd float %mul.i348, %mul4.i350, !dbg !475
  %39 = load float* %arrayidx5.i396, align 4, !dbg !475, !tbaa !446
  %mul7.i353 = fmul float %39, %39, !dbg !475
  %add8.i354 = fadd float %add.i351, %mul7.i353, !dbg !475
  %conv9.i = call float @sqrtf(float %add8.i354) #3, !dbg !475
  %mul104 = fmul float %conv9.i, 1.000000e+01, !dbg !473
  %conv105 = fpext float %mul104 to double, !dbg !473
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), double %conv95, double %conv100, double %conv105, double %alpha.0, double %beta.0, double %gamma.0) #8, !dbg !473
  br label %if.end110, !dbg !476

if.end110:                                        ; preds = %if.end, %if.end89, %lor.lhs.false18
  %pdbinfo = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11, !dbg !477
  %40 = load %struct.t_pdbinfo** %pdbinfo, align 8, !dbg !477, !tbaa !478
  %tobool111 = icmp eq %struct.t_pdbinfo* %40, null, !dbg !477
  br i1 %tobool111, label %if.end129, label %for.cond.preheader, !dbg !477

for.cond.preheader:                               ; preds = %if.end110
  %cmp113429 = icmp sgt i32 %nindex, 0, !dbg !479
  br i1 %cmp113429, label %land.rhs118, label %if.end129, !dbg !479

land.rhs118:                                      ; preds = %for.cond.preheader, %land.rhs118
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %land.rhs118 ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !212), !dbg !482
  %arrayidx116 = getelementptr inbounds i32* %index, i64 %indvars.iv431, !dbg !482
  %41 = load i32* %arrayidx116, align 4, !dbg !482, !tbaa !425
  %idxprom119 = sext i32 %41 to i64, !dbg !484
  %occup122 = getelementptr inbounds %struct.t_pdbinfo* %40, i64 %idxprom119, i32 4, !dbg !484
  %42 = load float* %occup122, align 4, !dbg !484, !tbaa !446
  %fabsf = call float @fabsf(float %42) #5, !dbg !484
  %43 = fpext float %fabsf to double, !dbg !484
  %cmp125 = fcmp olt double %43, 1.200000e-38, !dbg !484
  call void @llvm.dbg.value(metadata !{i32 %land.ext}, i64 0, metadata !221), !dbg !485
  %indvars.iv.next432 = add i64 %indvars.iv431, 1, !dbg !479
  %44 = trunc i64 %indvars.iv.next432 to i32, !dbg !479
  %cmp113 = icmp slt i32 %44, %nindex, !dbg !479
  %or.cond347 = and i1 %cmp113, %cmp125, !dbg !479
  br i1 %or.cond347, label %land.rhs118, label %for.cond.if.end129.loopexit_crit_edge, !dbg !479

for.cond.if.end129.loopexit_crit_edge:            ; preds = %land.rhs118
  %land.ext = zext i1 %cmp125 to i32
  br label %if.end129, !dbg !479

if.end129:                                        ; preds = %for.cond.preheader, %for.cond.if.end129.loopexit_crit_edge, %if.end110
  %bOccup.1 = phi i32 [ 0, %if.end110 ], [ %land.ext, %for.cond.if.end129.loopexit_crit_edge ], [ 1, %for.cond.preheader ]
  %45 = load i32* @bTER, align 4, !dbg !486, !tbaa !425
  %tobool130 = icmp eq i32 %45, 0, !dbg !486
  br i1 %tobool130, label %if.then131, label %for.cond144.preheader, !dbg !486

if.then131:                                       ; preds = %if.end129
  %cmp132 = icmp sgt i32 %model_nr, 0, !dbg !487
  br i1 %cmp132, label %if.then134, label %if.else136, !dbg !487

if.then134:                                       ; preds = %if.then131
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), i32 %model_nr) #8, !dbg !489
  br label %for.cond144.preheader, !dbg !489

if.else136:                                       ; preds = %if.then131
  %cmp137 = icmp eq i32 %model_nr, 0, !dbg !490
  br i1 %cmp137, label %if.then139, label %for.cond144.preheader, !dbg !490

if.then139:                                       ; preds = %if.else136
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %out), !dbg !491
  br label %for.cond144.preheader, !dbg !491

for.cond144.preheader:                            ; preds = %if.end129, %if.then134, %if.then139, %if.else136
  %cmp145427 = icmp sgt i32 %nindex, 0, !dbg !492
  br i1 %cmp145427, label %for.body147.lr.ph, label %for.end260, !dbg !492

for.body147.lr.ph:                                ; preds = %for.cond144.preheader
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !494
  %arraydecay153 = getelementptr inbounds [6 x i8]* %resnm, i64 0, i64 0, !dbg !496
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !496
  %arraydecay157 = getelementptr inbounds [6 x i8]* %nm, i64 0, i64 0, !dbg !497
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !497
  %tobool166 = icmp eq i8 %chain, 0, !dbg !498
  %tobool189 = icmp eq i32 %bOccup.1, 0, !dbg !499
  br label %for.body147, !dbg !492

for.body147:                                      ; preds = %if.end232, %for.body147.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body147.lr.ph ], [ %indvars.iv.next, %if.end232 ]
  %arrayidx149 = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !501
  %47 = load i32* %arrayidx149, align 4, !dbg !501, !tbaa !425
  call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !212), !dbg !501
  %idxprom150 = sext i32 %47 to i64, !dbg !494
  %48 = load %struct.t_atom** %atom, align 8, !dbg !494, !tbaa !478
  %resnr152 = getelementptr inbounds %struct.t_atom* %48, i64 %idxprom150, i32 7, !dbg !494
  %49 = load i32* %resnr152, align 4, !dbg !494, !tbaa !425
  call void @llvm.dbg.value(metadata !{i32 %49}, i64 0, metadata !214), !dbg !494
  %idxprom154 = sext i32 %49 to i64, !dbg !496
  %50 = load i8**** %resname, align 8, !dbg !496, !tbaa !478
  %arrayidx155 = getelementptr inbounds i8*** %50, i64 %idxprom154, !dbg !496
  %51 = load i8*** %arrayidx155, align 8, !dbg !496, !tbaa !478
  %52 = load i8** %51, align 8, !dbg !496, !tbaa !478
  %call156 = call i8* @strcpy(i8* %arraydecay153, i8* %52) #8, !dbg !496
  %53 = load i8**** %atomname, align 8, !dbg !497, !tbaa !478
  %arrayidx159 = getelementptr inbounds i8*** %53, i64 %idxprom150, !dbg !497
  %54 = load i8*** %arrayidx159, align 8, !dbg !497, !tbaa !478
  %55 = load i8** %54, align 8, !dbg !497, !tbaa !478
  %call160 = call i8* @strcpy(i8* %arraydecay157, i8* %55) #8, !dbg !497
  %inc161 = add nsw i32 %49, 1, !dbg !502
  call void @llvm.dbg.value(metadata !{i32 %inc161}, i64 0, metadata !214), !dbg !502
  %cmp162 = icmp sgt i32 %49, 9998, !dbg !503
  br i1 %cmp162, label %if.then164, label %if.end165, !dbg !503

if.then164:                                       ; preds = %for.body147
  %rem = srem i32 %inc161, 10000, !dbg !504
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !214), !dbg !504
  br label %if.end165, !dbg !504

if.end165:                                        ; preds = %if.then164, %for.body147
  %resnr.0 = phi i32 [ %rem, %if.then164 ], [ %inc161, %for.body147 ]
  br i1 %tobool166, label %if.else168, label %if.end181, !dbg !498

if.else168:                                       ; preds = %if.end165
  %56 = load %struct.t_atom** %atom, align 8, !dbg !505, !tbaa !478
  %chain172 = getelementptr inbounds %struct.t_atom* %56, i64 %idxprom150, i32 9, !dbg !505
  %57 = load i8* %chain172, align 1, !dbg !505, !tbaa !426
  %tobool173 = icmp eq i8 %57, 0, !dbg !505
  %. = select i1 %tobool173, i8 32, i8 %57
  br label %if.end181

if.end181:                                        ; preds = %if.else168, %if.end165
  %ch.0 = phi i8 [ %chain, %if.end165 ], [ %., %if.else168 ]
  %58 = load %struct.t_pdbinfo** %pdbinfo, align 8, !dbg !506, !tbaa !478
  %tobool183 = icmp eq %struct.t_pdbinfo* %58, null, !dbg !506
  br i1 %tobool183, label %if.end205, label %if.then184, !dbg !506

if.then184:                                       ; preds = %if.end181
  %type188 = getelementptr inbounds %struct.t_pdbinfo* %58, i64 %idxprom150, i32 0, !dbg !507
  %59 = load i32* %type188, align 4, !dbg !507, !tbaa !425
  call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !215), !dbg !507
  br i1 %tobool189, label %cond.false191, label %cond.end197, !dbg !499

cond.false191:                                    ; preds = %if.then184
  %occup195 = getelementptr inbounds %struct.t_pdbinfo* %58, i64 %idxprom150, i32 4, !dbg !499
  %60 = load float* %occup195, align 4, !dbg !499, !tbaa !446
  %phitmp343 = fpext float %60 to double, !dbg !499
  br label %cond.end197, !dbg !499

cond.end197:                                      ; preds = %if.then184, %cond.false191
  %cond198 = phi double [ %phitmp343, %cond.false191 ], [ 1.000000e+00, %if.then184 ]
  %bfac203 = getelementptr inbounds %struct.t_pdbinfo* %58, i64 %idxprom150, i32 5, !dbg !508
  %61 = load float* %bfac203, align 4, !dbg !508, !tbaa !446
  call void @llvm.dbg.value(metadata !{float %61}, i64 0, metadata !217), !dbg !508
  %phitmp = sext i32 %59 to i64, !dbg !509
  %phitmp339 = fpext float %61 to double, !dbg !509
  br label %if.end205, !dbg !509

if.end205:                                        ; preds = %if.end181, %cond.end197
  %type.0 = phi i64 [ %phitmp, %cond.end197 ], [ 0, %if.end181 ]
  %occup.0 = phi double [ %cond198, %cond.end197 ], [ 1.000000e+00, %if.end181 ]
  %bfac.0 = phi double [ %phitmp339, %cond.end197 ], [ 0.000000e+00, %if.end181 ]
  %call207 = call i64 @strlen(i8* %arraydecay157) #10, !dbg !510
  %cmp208 = icmp ult i64 %call207, 4, !dbg !510
  br i1 %cmp208, label %if.then210, label %if.else213, !dbg !510

if.then210:                                       ; preds = %if.end205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([46 x i8]* @.str40, i64 0, i64 0), i64 46, i32 1, i1 false), !dbg !511
  br label %if.end224, !dbg !511

if.else213:                                       ; preds = %if.end205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([46 x i8]* @.str39, i64 0, i64 0), i64 46, i32 1, i1 false), !dbg !512
  %call217 = call i64 @strlen(i8* %arraydecay157) #10, !dbg !514
  %cmp218 = icmp ugt i64 %call217, 4, !dbg !514
  br i1 %cmp218, label %if.then220, label %if.end224, !dbg !514

if.then220:                                       ; preds = %if.else213
  %62 = load %struct._IO_FILE** @stderr, align 8, !dbg !515, !tbaa !478
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([75 x i8]* @.str7, i64 0, i64 0), i8* %arraydecay157) #8, !dbg !515
  br label %if.end224, !dbg !515

if.end224:                                        ; preds = %if.else213, %if.then220, %if.then210
  %63 = load i32* @bWideFormat, align 4, !dbg !516, !tbaa !425
  %tobool225 = icmp eq i32 %63, 0, !dbg !516
  %strlen = call i64 @strlen(i8* %0), !dbg !517
  %endptr = getelementptr [128 x i8]* %pdbform, i64 0, i64 %strlen, !dbg !517
  br i1 %tobool225, label %if.else229, label %if.then226, !dbg !516

if.then226:                                       ; preds = %if.end224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i64 12, i32 1, i1 false), !dbg !518
  br label %if.end232, !dbg !518

if.else229:                                       ; preds = %if.end224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0), i64 12, i32 1, i1 false), !dbg !517
  br label %if.end232

if.end232:                                        ; preds = %if.else229, %if.then226
  %arrayidx235 = getelementptr inbounds [11 x i8*]* @pdbtp, i64 0, i64 %type.0, !dbg !519
  %64 = load i8** %arrayidx235, align 8, !dbg !519, !tbaa !478
  %add = add nsw i32 %47, 1, !dbg !519
  %rem236 = srem i32 %add, 100000, !dbg !519
  %conv239 = sext i8 %ch.0 to i32, !dbg !519
  %arrayidx242 = getelementptr inbounds [3 x float]* %x, i64 %idxprom150, i64 0, !dbg !519
  %65 = load float* %arrayidx242, align 4, !dbg !519, !tbaa !446
  %mul243 = fmul float %65, 1.000000e+01, !dbg !519
  %conv244 = fpext float %mul243 to double, !dbg !519
  %arrayidx247 = getelementptr inbounds [3 x float]* %x, i64 %idxprom150, i64 1, !dbg !519
  %66 = load float* %arrayidx247, align 4, !dbg !519, !tbaa !446
  %mul248 = fmul float %66, 1.000000e+01, !dbg !519
  %conv249 = fpext float %mul248 to double, !dbg !519
  %arrayidx252 = getelementptr inbounds [3 x float]* %x, i64 %idxprom150, i64 2, !dbg !519
  %67 = load float* %arrayidx252, align 4, !dbg !519, !tbaa !446
  %mul253 = fmul float %67, 1.000000e+01, !dbg !519
  %conv254 = fpext float %mul253 to double, !dbg !519
  %call257 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* %0, i8* %64, i32 %rem236, i8* %arraydecay157, i8* %arraydecay153, i32 %conv239, i32 %resnr.0, double %conv244, double %conv249, double %conv254, double %occup.0, double %bfac.0) #8, !dbg !519
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !492
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !492
  %exitcond = icmp eq i32 %lftr.wideiv, %nindex, !dbg !492
  br i1 %exitcond, label %for.end260, label %for.body147, !dbg !492

for.end260:                                       ; preds = %if.end232, %for.cond144.preheader
  %68 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %out), !dbg !520
  %cmp262 = icmp slt i32 %model_nr, 0, !dbg !521
  %69 = load i32* @bTER, align 4, !dbg !521, !tbaa !425
  %tobool265 = icmp ne i32 %69, 0, !dbg !521
  %or.cond = or i1 %cmp262, %tobool265, !dbg !521
  br i1 %or.cond, label %if.end268, label %if.then266, !dbg !521

if.then266:                                       ; preds = %for.end260
  %70 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %out), !dbg !522
  br label %if.end268, !dbg !522

if.end268:                                        ; preds = %for.end260, %if.then266
  call void @llvm.lifetime.end(i64 128, i8* %0) #2, !dbg !523
  ret void, !dbg !523
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare i8* @bromacs() #4

; Function Attrs: nounwind optsize
declare double @acos(double) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc float @cos_angle_no_table(float* nocapture %a, float* nocapture %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %a}, i64 0, metadata !396), !dbg !524
  tail call void @llvm.dbg.value(metadata !{float* %b}, i64 0, metadata !397), !dbg !524
  tail call void @llvm.dbg.value(metadata !525, i64 0, metadata !404), !dbg !526
  tail call void @llvm.dbg.value(metadata !525, i64 0, metadata !403), !dbg !526
  tail call void @llvm.dbg.value(metadata !525, i64 0, metadata !402), !dbg !526
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !399), !dbg !527
  br label %for.body, !dbg !527

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %ipb.033 = phi double [ 0.000000e+00, %entry ], [ %add7, %for.body ]
  %ipa.032 = phi double [ 0.000000e+00, %entry ], [ %add5, %for.body ]
  %ip.031 = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds float* %a, i64 %indvars.iv, !dbg !529
  %0 = load float* %arrayidx, align 4, !dbg !529, !tbaa !446
  %conv = fpext float %0 to double, !dbg !529
  tail call void @llvm.dbg.value(metadata !{double %conv}, i64 0, metadata !400), !dbg !529
  %arrayidx2 = getelementptr inbounds float* %b, i64 %indvars.iv, !dbg !531
  %1 = load float* %arrayidx2, align 4, !dbg !531, !tbaa !446
  %conv3 = fpext float %1 to double, !dbg !531
  tail call void @llvm.dbg.value(metadata !{double %conv3}, i64 0, metadata !401), !dbg !531
  %mul = fmul double %conv, %conv3, !dbg !532
  %add = fadd double %ip.031, %mul, !dbg !532
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !402), !dbg !532
  %mul4 = fmul double %conv, %conv, !dbg !533
  %add5 = fadd double %ipa.032, %mul4, !dbg !533
  tail call void @llvm.dbg.value(metadata !{double %add5}, i64 0, metadata !403), !dbg !533
  %mul6 = fmul double %conv3, %conv3, !dbg !534
  %add7 = fadd double %ipb.033, %mul6, !dbg !534
  tail call void @llvm.dbg.value(metadata !{double %add7}, i64 0, metadata !404), !dbg !534
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !527
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !527
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !527
  br i1 %exitcond, label %for.end, label %for.body, !dbg !527

for.end:                                          ; preds = %for.body
  %mul8 = fmul double %add5, %add7, !dbg !535
  %call = tail call double @sqrt(double %mul8) #8, !dbg !535
  %div = fdiv double %add, %call, !dbg !535
  %conv9 = fptrunc double %div to float, !dbg !535
  tail call void @llvm.dbg.value(metadata !{float %conv9}, i64 0, metadata !398), !dbg !535
  %cmp11 = fcmp ogt float %conv9, 1.000000e+00, !dbg !536
  br i1 %cmp11, label %return, label %if.end, !dbg !536

if.end:                                           ; preds = %for.end
  %cmp14 = fcmp olt float %conv9, -1.000000e+00, !dbg !537
  %.conv9 = select i1 %cmp14, float -1.000000e+00, float %conv9, !dbg !538
  br label %return, !dbg !538

return:                                           ; preds = %if.end, %for.end
  %retval.0 = phi float [ 1.000000e+00, %for.end ], [ %.conv9, %if.end ]
  ret float %retval.0, !dbg !539
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #5

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @write_pdbfile(%struct._IO_FILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, [3 x float]* %box, i8 signext %chain, i32 %model_nr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !226), !dbg !540
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !227), !dbg !540
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !228), !dbg !540
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !229), !dbg !540
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !230), !dbg !541
  tail call void @llvm.dbg.value(metadata !{i8 %chain}, i64 0, metadata !231), !dbg !541
  tail call void @llvm.dbg.value(metadata !{i32 %model_nr}, i64 0, metadata !232), !dbg !541
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !542
  %0 = load i32* %nr, align 4, !dbg !542, !tbaa !425
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str13, i64 0, i64 0), i32 191, i32 %0, i32 4) #8, !dbg !542
  %1 = bitcast i8* %call to i32*, !dbg !542
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !234), !dbg !542
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !233), !dbg !543
  %2 = load i32* %nr, align 4, !dbg !543, !tbaa !425
  %cmp11 = icmp sgt i32 %2, 0, !dbg !543
  br i1 %cmp11, label %for.body, label %for.end, !dbg !543

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv, !dbg !545
  %3 = trunc i64 %indvars.iv to i32, !dbg !545
  store i32 %3, i32* %arrayidx, align 4, !dbg !545, !tbaa !425
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !543
  %4 = load i32* %nr, align 4, !dbg !543, !tbaa !425
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !543
  %cmp = icmp slt i32 %5, %4, !dbg !543
  br i1 %cmp, label %for.body, label %for.end, !dbg !543

for.end:                                          ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %2, %entry ], [ %4, %for.body ]
  tail call void @write_pdbfile_indexed(%struct._IO_FILE* %out, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i8 signext %chain, i32 %model_nr, i32 %.lcssa, i32* %1) #9, !dbg !546
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str13, i64 0, i64 0), i32 195, i8* %call) #8, !dbg !547
  ret void, !dbg !548
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #4

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind optsize readonly uwtable
define i32 @line2type(i8* nocapture %line) #7 {
entry:
  %type = alloca [8 x i8], align 1
  %type30 = getelementptr inbounds [8 x i8]* %type, i64 0, i64 0
  call void @llvm.dbg.value(metadata !{i8* %line}, i64 0, metadata !239), !dbg !549
  call void @llvm.dbg.declare(metadata !{[8 x i8]* %type}, metadata !241), !dbg !550
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !240), !dbg !551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %type30, i8* %line, i64 6, i32 1, i1 false), !dbg !553
  %arrayidx4 = getelementptr inbounds [8 x i8]* %type, i64 0, i64 6, !dbg !554
  store i8 0, i8* %arrayidx4, align 1, !dbg !554, !tbaa !426
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !240), !dbg !555
  %arraydecay = getelementptr inbounds [8 x i8]* %type, i64 0, i64 0, !dbg !557
  br label %for.body7, !dbg !555

for.cond5:                                        ; preds = %for.body7
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !555
  %cmp6 = icmp slt i32 %0, 11, !dbg !555
  br i1 %cmp6, label %for.body7, label %for.end16, !dbg !555

for.body7:                                        ; preds = %entry, %for.cond5
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond5 ]
  %k.125 = phi i32 [ 0, %entry ], [ %inc15, %for.cond5 ]
  %arrayidx9 = getelementptr inbounds [11 x i8*]* @pdbtp, i64 0, i64 %indvars.iv, !dbg !557
  %1 = load i8** %arrayidx9, align 8, !dbg !557, !tbaa !478
  %call = call i64 @strlen(i8* %1) #10, !dbg !557
  %call12 = call i32 @strncmp(i8* %arraydecay, i8* %1, i64 %call) #10, !dbg !557
  %cmp13 = icmp eq i32 %call12, 0, !dbg !557
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !555
  %inc15 = add nsw i32 %k.125, 1, !dbg !555
  call void @llvm.dbg.value(metadata !{i32 %inc15}, i64 0, metadata !240), !dbg !555
  br i1 %cmp13, label %for.end16, label %for.cond5, !dbg !557

for.end16:                                        ; preds = %for.body7, %for.cond5
  %k.1.lcssa = phi i32 [ %k.125, %for.body7 ], [ %inc15, %for.cond5 ]
  ret i32 %k.1.lcssa, !dbg !558
}

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: nounwind optsize uwtable
define i32 @is_hydrogen(i8* nocapture %nm) #0 {
entry:
  %buf = alloca [30 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %nm}, i64 0, metadata !247), !dbg !559
  call void @llvm.dbg.declare(metadata !{[30 x i8]* %buf}, metadata !248), !dbg !560
  %arraydecay = getelementptr inbounds [30 x i8]* %buf, i64 0, i64 0, !dbg !561
  %call = call i8* @strcpy(i8* %arraydecay, i8* %nm) #8, !dbg !561
  call void @trim(i8* %arraydecay) #8, !dbg !562
  %0 = bitcast [30 x i8]* %buf to i16*, !dbg !563
  %1 = load i16* %0, align 16, !dbg !563
  %2 = trunc i16 %1 to i8, !dbg !563
  %cmp = icmp eq i8 %2, 72, !dbg !563
  br i1 %cmp, label %return, label %if.else, !dbg !563

if.else:                                          ; preds = %entry
  %idxprom = sext i8 %2 to i64, !dbg !564
  %call5 = call i16** @__ctype_b_loc() #11, !dbg !564
  %3 = load i16** %call5, align 8, !dbg !564, !tbaa !478
  %arrayidx6 = getelementptr inbounds i16* %3, i64 %idxprom, !dbg !564
  %4 = load i16* %arrayidx6, align 2, !dbg !564, !tbaa !565
  %and = and i16 %4, 2048, !dbg !564
  %tobool = icmp eq i16 %and, 0, !dbg !564
  br i1 %tobool, label %if.end13, label %land.lhs.true, !dbg !564

land.lhs.true:                                    ; preds = %if.else
  %.mask = and i16 %1, -256, !dbg !564
  %cmp10 = icmp eq i16 %.mask, 18432, !dbg !564
  br i1 %cmp10, label %return, label %if.end13, !dbg !564

if.end13:                                         ; preds = %if.else, %land.lhs.true
  br label %return, !dbg !566

return:                                           ; preds = %land.lhs.true, %entry, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 1, %entry ], [ 1, %land.lhs.true ]
  ret i32 %retval.0, !dbg !566
}

; Function Attrs: optsize
declare void @trim(i8*) #4

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind optsize uwtable
define i32 @is_dummymass(i8* nocapture %nm) #0 {
entry:
  %buf = alloca [30 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %nm}, i64 0, metadata !254), !dbg !567
  call void @llvm.dbg.declare(metadata !{[30 x i8]* %buf}, metadata !255), !dbg !568
  %arraydecay = getelementptr inbounds [30 x i8]* %buf, i64 0, i64 0, !dbg !569
  %call = call i8* @strcpy(i8* %arraydecay, i8* %nm) #8, !dbg !569
  call void @trim(i8* %arraydecay) #8, !dbg !570
  %0 = load i8* %arraydecay, align 16, !dbg !571, !tbaa !426
  %cmp = icmp eq i8 %0, 77, !dbg !571
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !571

land.lhs.true:                                    ; preds = %entry
  %call4 = call i64 @strlen(i8* %arraydecay) #10, !dbg !571
  %sub = add i64 %call4, -1, !dbg !571
  %arrayidx5 = getelementptr inbounds [30 x i8]* %buf, i64 0, i64 %sub, !dbg !571
  %1 = load i8* %arrayidx5, align 1, !dbg !571, !tbaa !426
  %idxprom = sext i8 %1 to i64, !dbg !571
  %call7 = call i16** @__ctype_b_loc() #11, !dbg !571
  %2 = load i16** %call7, align 8, !dbg !571, !tbaa !478
  %arrayidx8 = getelementptr inbounds i16* %2, i64 %idxprom, !dbg !571
  %3 = load i16* %arrayidx8, align 2, !dbg !571, !tbaa !565
  %and = and i16 %3, 2048, !dbg !571
  %tobool = icmp eq i16 %and, 0, !dbg !571
  br i1 %tobool, label %if.end, label %return, !dbg !571

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return, !dbg !572

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true ]
  ret i32 %retval.0, !dbg !572
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
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in}, i64 0, metadata !260), !dbg !573
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !261), !dbg !573
  call void @llvm.dbg.value(metadata !{i32* %model_nr}, i64 0, metadata !262), !dbg !573
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !263), !dbg !574
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !264), !dbg !574
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !265), !dbg !574
  call void @llvm.dbg.value(metadata !{i32 %bChange}, i64 0, metadata !266), !dbg !574
  %0 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0, !dbg !575
  call void @llvm.lifetime.start(i64 4097, i8* %0) #2, !dbg !575
  call void @llvm.dbg.declare(metadata !{[4097 x i8]* %line}, metadata !268), !dbg !575
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %sa}, metadata !272), !dbg !576
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %sb}, metadata !276), !dbg !576
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %sc}, metadata !277), !dbg !576
  call void @llvm.dbg.declare(metadata !{double* %alpha}, metadata !282), !dbg !577
  call void @llvm.dbg.declare(metadata !{double* %beta}, metadata !283), !dbg !577
  call void @llvm.dbg.declare(metadata !{double* %gamma}, metadata !284), !dbg !577
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !289), !dbg !578
  %cmp = icmp ne [3 x float]* %box, null, !dbg !579
  br i1 %cmp, label %if.then, label %if.end, !dbg !579

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !580) #2, !dbg !582
  call void @llvm.dbg.value(metadata !583, i64 0, metadata !584) #2, !dbg !585
  %1 = bitcast [3 x float]* %box to i8*, !dbg !586
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 4, i1 false) #2, !dbg !587
  br label %if.end, !dbg !581

if.end:                                           ; preds = %if.then, %entry
  %.b = load i1* @read_pdbfile.bFirst, align 1
  br i1 %.b, label %if.end2, label %if.then1, !dbg !588

if.then1:                                         ; preds = %if.end
  call void @open_symtab(%struct.t_symtab* @read_pdbfile.symtab) #8, !dbg !589
  store i1 true, i1* @read_pdbfile.bFirst, align 1
  br label %if.end2, !dbg !591

if.end2:                                          ; preds = %if.end, %if.then1
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !267), !dbg !592
  store i8 0, i8* %title, align 1, !dbg !593, !tbaa !426
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !288), !dbg !594
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
  %nr.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !595
  %scevgep203.i = getelementptr [4097 x i8]* %line, i64 0, i64 6
  %arrayidx7.i = getelementptr inbounds [12 x i8]* %anr.i, i64 0, i64 5, !dbg !599
  %scevgep195.i = getelementptr [4097 x i8]* %line, i64 0, i64 12
  %12 = bitcast i8* %scevgep195.i to i32*, !dbg !600
  %13 = bitcast [12 x i8]* %anm.i to i32*, !dbg !600
  %arrayidx21.i = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 4, !dbg !602
  %arrayidx24.i = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 16, !dbg !603
  %14 = bitcast [12 x i8]* %resnm.i to i32*, !dbg !604
  %arrayidx38.i = getelementptr inbounds [12 x i8]* %resnm.i, i64 0, i64 4, !dbg !606
  %arrayidx44.i = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 21, !dbg !607
  %scevgep161.i = getelementptr [4097 x i8]* %line, i64 0, i64 22
  %15 = bitcast i8* %scevgep161.i to i32*, !dbg !609
  %16 = bitcast [12 x i8]* %resnr.i to i32*, !dbg !609
  %17 = bitcast [12 x i8]* %pdbresnr.i to i32*, !dbg !612
  %arrayidx69.i = getelementptr inbounds [12 x i8]* %resnr.i, i64 0, i64 4, !dbg !613
  %arrayidx72.i = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 26, !dbg !614
  %arrayidx74.i = getelementptr inbounds [12 x i8]* %pdbresnr.i, i64 0, i64 4, !dbg !614
  %arrayidx77.i = getelementptr inbounds [12 x i8]* %pdbresnr.i, i64 0, i64 5, !dbg !615
  %scevgep145.i = getelementptr [4097 x i8]* %line, i64 0, i64 30
  %18 = bitcast i8* %scevgep145.i to i64*, !dbg !616
  %19 = bitcast [12 x i8]* %xc.i to i64*, !dbg !616
  %arrayidx92.i = getelementptr inbounds [12 x i8]* %xc.i, i64 0, i64 8, !dbg !618
  %scevgep127.i = getelementptr [4097 x i8]* %line, i64 0, i64 38
  %20 = bitcast i8* %scevgep127.i to i64*, !dbg !619
  %21 = bitcast [12 x i8]* %yc.i to i64*, !dbg !619
  %arrayidx105.i = getelementptr inbounds [12 x i8]* %yc.i, i64 0, i64 8, !dbg !621
  %scevgep107.i = getelementptr [4097 x i8]* %line, i64 0, i64 46
  %22 = bitcast i8* %scevgep107.i to i64*, !dbg !622
  %23 = bitcast [12 x i8]* %zc.i to i64*, !dbg !622
  %arrayidx118.i = getelementptr inbounds [12 x i8]* %zc.i, i64 0, i64 8, !dbg !624
  %scevgep85.i = getelementptr [4097 x i8]* %line, i64 0, i64 54
  %arrayidx131.i = getelementptr inbounds [12 x i8]* %occup.i, i64 0, i64 6, !dbg !625
  %scevgep.i270 = getelementptr [4097 x i8]* %line, i64 0, i64 60
  %arrayidx144.i = getelementptr inbounds [12 x i8]* %bfac.i, i64 0, i64 7, !dbg !626
  %atom.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !627
  %pdbinfo.i274 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11, !dbg !628
  %nres.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !629
  %resname.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !632
  %tobool181.i = icmp eq i32 %bChange, 0, !dbg !633
  %atomname.i273 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !634
  %add.ptr.i = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 29, !dbg !635
  %arraydecay18 = getelementptr inbounds [12 x i8]* %sa, i64 0, i64 0, !dbg !638
  %arraydecay19 = getelementptr inbounds [12 x i8]* %sb, i64 0, i64 0, !dbg !638
  %arraydecay20 = getelementptr inbounds [12 x i8]* %sc, i64 0, i64 0, !dbg !638
  %24 = bitcast [3 x float]* %box to i8*, !dbg !640
  %arrayidx31 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !642
  %arrayidx52 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !643
  %arrayidx57 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !645
  %arrayidx62 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !646
  %arrayidx72 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !647
  %arrayidx91 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !648
  %tobool207 = icmp eq i32* %model_nr, null, !dbg !649
  br label %land.rhs, !dbg !650

land.rhs:                                         ; preds = %if.else75.i, %if.then71.i, %if.then37.i, %if.else197, %if.then194, %if.end188, %read_atom.exit, %sw.bb9, %sw.bb14, %if.else, %if.then44, %if.end126, %if.then130, %lor.lhs.false137, %sw.bb206, %if.then208, %while.body, %if.end2, %while.cond.backedge
  %bCOMPND.0282 = phi i32 [ 0, %if.end2 ], [ %bCOMPND.0282, %while.cond.backedge ], [ %bCOMPND.0282, %while.body ], [ %bCOMPND.0282, %if.then208 ], [ %bCOMPND.0282, %sw.bb206 ], [ %bCOMPND.0282, %lor.lhs.false137 ], [ %bCOMPND.0282, %if.then130 ], [ %bCOMPND.0282, %if.end126 ], [ %bCOMPND.0282, %if.then44 ], [ %bCOMPND.0282, %if.else ], [ %bCOMPND.0282, %sw.bb14 ], [ %bCOMPND.0282, %sw.bb9 ], [ %bCOMPND.0282, %read_atom.exit ], [ 1, %if.end188 ], [ 1, %if.then194 ], [ 1, %if.else197 ], [ %bCOMPND.0282, %if.then37.i ], [ %bCOMPND.0282, %if.then71.i ], [ %bCOMPND.0282, %if.else75.i ]
  %natom.0278 = phi i32 [ 0, %if.end2 ], [ %natom.0278, %while.cond.backedge ], [ %natom.0278, %while.body ], [ %natom.0278, %if.then208 ], [ %natom.0278, %sw.bb206 ], [ %natom.0278, %lor.lhs.false137 ], [ %natom.0278, %if.then130 ], [ %natom.0278, %if.end126 ], [ %natom.0278, %if.then44 ], [ %natom.0278, %if.else ], [ %natom.0278, %sw.bb14 ], [ %natom.0278, %sw.bb9 ], [ %inc249.i, %read_atom.exit ], [ %natom.0278, %if.end188 ], [ %natom.0278, %if.then194 ], [ %natom.0278, %if.else197 ], [ %natom.0278, %if.then37.i ], [ %natom.0278, %if.then71.i ], [ %natom.0278, %if.else75.i ]
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #8, !dbg !650
  %cmp4 = icmp eq i8* %call, null, !dbg !650
  br i1 %cmp4, label %while.end213, label %while.body

while.body:                                       ; preds = %land.rhs
  %call6 = call i32 @line2type(i8* %0) #9, !dbg !651
  call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !285), !dbg !651
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
  ], !dbg !652

while.cond.backedge:                              ; preds = %while.body
  %25 = load i32* @bTER, align 4, !dbg !653, !tbaa !425
  %tobool203 = icmp eq i32 %25, 0, !dbg !653
  call void @llvm.dbg.value(metadata !654, i64 0, metadata !289), !dbg !655
  br i1 %tobool203, label %land.rhs, label %while.end213, !dbg !650

sw.bb:                                            ; preds = %while.body, %while.body
  call void @llvm.lifetime.start(i64 12, i8* %2) #2
  call void @llvm.lifetime.start(i64 12, i8* %3) #2
  call void @llvm.lifetime.start(i64 12, i8* %4) #2
  call void @llvm.lifetime.start(i64 12, i8* %5) #2
  call void @llvm.lifetime.start(i64 12, i8* %6) #2
  call void @llvm.lifetime.start(i64 12, i8* %7) #2
  call void @llvm.lifetime.start(i64 12, i8* %8) #2
  call void @llvm.lifetime.start(i64 12, i8* %9) #2
  call void @llvm.lifetime.start(i64 12, i8* %10) #2
  call void @llvm.lifetime.start(i64 12, i8* %11) #2
  call void @llvm.dbg.value(metadata !656, i64 0, metadata !657) #2, !dbg !658
  call void @llvm.dbg.value(metadata !659, i64 0, metadata !660) #2, !dbg !661
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %anr.i}, metadata !355) #2, !dbg !662
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %anm.i}, metadata !356) #2, !dbg !662
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %resnm.i}, metadata !358) #2, !dbg !662
  call void @llvm.dbg.declare(metadata !663, metadata !359) #2, !dbg !662
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %resnr.i}, metadata !360) #2, !dbg !662
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %xc.i}, metadata !361) #2, !dbg !664
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %yc.i}, metadata !362) #2, !dbg !664
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %zc.i}, metadata !363) #2, !dbg !664
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %occup.i}, metadata !364) #2, !dbg !664
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %bfac.i}, metadata !365) #2, !dbg !664
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %pdbresnr.i}, metadata !366) #2, !dbg !664
  %26 = load i32* %nr.i, align 4, !dbg !595, !tbaa !425
  %cmp.i = icmp sgt i32 %26, %natom.0278, !dbg !595
  br i1 %cmp.i, label %for.end50.i, label %if.then.i, !dbg !595

if.then.i:                                        ; preds = %sw.bb
  %add.i = add nsw i32 %natom.0278, 1, !dbg !665
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([54 x i8]* @.str29, i64 0, i64 0), i32 %add.i, i32 %26) #8, !dbg !665
  br label %for.end50.i, !dbg !665

for.end50.i:                                      ; preds = %if.then.i, %sw.bb
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %scevgep203.i, i64 5, i32 1, i1 false) #2, !dbg !666
  store i8 0, i8* %arrayidx7.i, align 1, !dbg !599, !tbaa !426
  call void @trim(i8* %2) #8, !dbg !668
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !669) #2, !dbg !600
  %27 = load i32* %12, align 4, !dbg !600
  store i32 %27, i32* %13, align 4, !dbg !600
  store i8 0, i8* %arrayidx21.i, align 4, !dbg !602, !tbaa !426
  call void @trim(i8* %3) #8, !dbg !670
  %28 = bitcast i8* %arrayidx24.i to i64*, !dbg !603
  %29 = load i64* %28, align 16, !dbg !603
  %30 = trunc i64 %29 to i8, !dbg !603
  call void @llvm.dbg.value(metadata !{i8 %30}, i64 0, metadata !671) #2, !dbg !603
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !669) #2, !dbg !672
  %31 = lshr i64 %29, 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %14, align 4, !dbg !604
  store i8 0, i8* %arrayidx38.i, align 4, !dbg !606, !tbaa !426
  call void @trim(i8* %4) #8, !dbg !673
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !669) #2, !dbg !674
  %33 = load i8* %arrayidx44.i, align 1, !dbg !607, !tbaa !426
  call void @llvm.dbg.value(metadata !654, i64 0, metadata !669) #2, !dbg !674
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !669) #2, !dbg !675
  %34 = load i32* %15, align 2, !dbg !609
  store i32 %34, i32* %16, align 4, !dbg !609
  store i32 %34, i32* %17, align 4, !dbg !612
  store i8 0, i8* %arrayidx69.i, align 4, !dbg !613, !tbaa !426
  call void @trim(i8* %5) #8, !dbg !676
  %35 = load i8* %arrayidx72.i, align 2, !dbg !614, !tbaa !426
  store i8 %35, i8* %arrayidx74.i, align 4, !dbg !614, !tbaa !426
  store i8 0, i8* %arrayidx77.i, align 1, !dbg !615, !tbaa !426
  call void @trim(i8* %11) #8, !dbg !677
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !669) #2, !dbg !616
  %36 = load i64* %18, align 2, !dbg !616
  store i64 %36, i64* %19, align 8, !dbg !616
  store i8 0, i8* %arrayidx92.i, align 8, !dbg !618, !tbaa !426
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !669) #2, !dbg !619
  %37 = load i64* %20, align 2, !dbg !619
  store i64 %37, i64* %21, align 8, !dbg !619
  store i8 0, i8* %arrayidx105.i, align 8, !dbg !621, !tbaa !426
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !669) #2, !dbg !622
  %38 = load i64* %22, align 2, !dbg !622
  store i64 %38, i64* %23, align 8, !dbg !622
  store i8 0, i8* %arrayidx118.i, align 8, !dbg !624, !tbaa !426
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !669) #2, !dbg !678
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %scevgep85.i, i64 6, i32 1, i1 false) #2, !dbg !678
  store i8 0, i8* %arrayidx131.i, align 1, !dbg !625, !tbaa !426
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !669) #2, !dbg !680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %scevgep.i270, i64 7, i32 1, i1 false) #2, !dbg !680
  store i8 0, i8* %arrayidx144.i, align 1, !dbg !626, !tbaa !426
  %39 = load %struct.t_atom** %atom.i, align 8, !dbg !627, !tbaa !478
  %tobool.i = icmp eq %struct.t_atom* %39, null, !dbg !627
  %idxprom195.pre.i = sext i32 %natom.0278 to i64, !dbg !682
  br i1 %tobool.i, label %if.end192.i, label %if.then145.i, !dbg !627

if.then145.i:                                     ; preds = %for.end50.i
  %cmp149.i = icmp eq i32 %natom.0278, 0, !dbg !683
  br i1 %cmp149.i, label %if.then162.critedge.i, label %lor.lhs.false.i, !dbg !683

lor.lhs.false.i:                                  ; preds = %if.then145.i
  %call.i271 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnr, i64 0, i64 0), i8* %11) #10, !dbg !683
  %cmp151.i = icmp eq i32 %call.i271, 0, !dbg !683
  br i1 %cmp151.i, label %lor.lhs.false152.i, label %if.else.i272, !dbg !683

lor.lhs.false152.i:                               ; preds = %lor.lhs.false.i
  %call154.i = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnm, i64 0, i64 0), i8* %4) #10, !dbg !684
  %cmp155.i = icmp eq i32 %call154.i, 0, !dbg !684
  br i1 %cmp155.i, label %if.else174.i, label %if.else.i272, !dbg !684

if.then162.critedge.i:                            ; preds = %if.then145.i
  %call158.c.i = call i8* @strcpy(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnr, i64 0, i64 0), i8* %11) #8, !dbg !685
  %call160.c.i = call i8* @strcpy(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnm, i64 0, i64 0), i8* %4) #8, !dbg !686
  br label %if.end168.i

if.else.i272:                                     ; preds = %lor.lhs.false152.i, %lor.lhs.false.i
  %call158.i = call i8* @strcpy(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnr, i64 0, i64 0), i8* %11) #8, !dbg !685
  %call160.i = call i8* @strcpy(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnm, i64 0, i64 0), i8* %4) #8, !dbg !686
  %sub.i = add nsw i32 %natom.0278, -1, !dbg !687
  %idxprom163.i = sext i32 %sub.i to i64, !dbg !687
  %40 = load %struct.t_atom** %atom.i, align 8, !dbg !687, !tbaa !478
  %resnr166.i = getelementptr inbounds %struct.t_atom* %40, i64 %idxprom163.i, i32 7, !dbg !687
  %41 = load i32* %resnr166.i, align 4, !dbg !687, !tbaa !425
  %add167.i = add nsw i32 %41, 1, !dbg !687
  call void @llvm.dbg.value(metadata !{i32 %add167.i}, i64 0, metadata !688) #2, !dbg !687
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.else.i272, %if.then162.critedge.i
  %newres.0.i = phi i32 [ %add167.i, %if.else.i272 ], [ 0, %if.then162.critedge.i ]
  %add169.i = add nsw i32 %newres.0.i, 1, !dbg !629
  store i32 %add169.i, i32* %nres.i, align 4, !dbg !629, !tbaa !425
  %call171.i = call i8** @put_symtab(%struct.t_symtab* @read_pdbfile.symtab, i8* %4) #8, !dbg !632
  %idxprom172.i = sext i32 %newres.0.i to i64, !dbg !632
  %42 = load i8**** %resname.i, align 8, !dbg !632, !tbaa !478
  %arrayidx173.i = getelementptr inbounds i8*** %42, i64 %idxprom172.i, !dbg !632
  store i8** %call171.i, i8*** %arrayidx173.i, align 8, !dbg !632, !tbaa !478
  br label %if.end180.i, !dbg !689

if.else174.i:                                     ; preds = %lor.lhs.false152.i
  %sub175.i = add nsw i32 %natom.0278, -1, !dbg !690
  %idxprom176.i = sext i32 %sub175.i to i64, !dbg !690
  %resnr179.i = getelementptr inbounds %struct.t_atom* %39, i64 %idxprom176.i, i32 7, !dbg !690
  %43 = load i32* %resnr179.i, align 4, !dbg !690, !tbaa !425
  call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !688) #2, !dbg !690
  br label %if.end180.i

if.end180.i:                                      ; preds = %if.else174.i, %if.end168.i
  %newres.1.i = phi i32 [ %newres.0.i, %if.end168.i ], [ %43, %if.else174.i ]
  br i1 %tobool181.i, label %if.end184.i, label %if.then182.i, !dbg !633

if.then182.i:                                     ; preds = %if.end180.i
  call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !691) #2, !dbg !693
  %call.i.i = call i64 @strlen(i8* %3) #10, !dbg !694
  %conv.i.i = trunc i64 %call.i.i to i32, !dbg !694
  call void @llvm.dbg.value(metadata !{i32 %conv.i.i}, i64 0, metadata !695) #2, !dbg !694
  %44 = load i8* %3, align 4, !dbg !696, !tbaa !426
  %idxprom.i.i = sext i8 %44 to i64, !dbg !696
  %call2.i.i = call i16** @__ctype_b_loc() #11, !dbg !696
  %45 = load i16** %call2.i.i, align 8, !dbg !696, !tbaa !478
  %arrayidx3.i.i = getelementptr inbounds i16* %45, i64 %idxprom.i.i, !dbg !696
  %46 = load i16* %arrayidx3.i.i, align 2, !dbg !696, !tbaa !565
  %and.i.i = and i16 %46, 2048, !dbg !696
  %tobool.i.i = icmp eq i16 %and.i.i, 0, !dbg !696
  br i1 %tobool.i.i, label %if.end.i.i, label %for.cond.preheader.i.i, !dbg !696

for.cond.preheader.i.i:                           ; preds = %if.then182.i
  %cmp31.i.i = icmp sgt i32 %conv.i.i, 1, !dbg !697
  br i1 %cmp31.i.i, label %for.body.i.i, label %for.end.i.i, !dbg !697

for.body.i.i:                                     ; preds = %for.cond.preheader.i.i, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ 1, %for.cond.preheader.i.i ]
  %arrayidx8.i.i = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 %indvars.iv.i.i, !dbg !700
  %47 = load i8* %arrayidx8.i.i, align 1, !dbg !700, !tbaa !426
  %48 = add nsw i64 %indvars.iv.i.i, -1, !dbg !700
  %arrayidx10.i.i = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 %48, !dbg !700
  store i8 %47, i8* %arrayidx10.i.i, align 1, !dbg !700, !tbaa !426
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !697
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32, !dbg !697
  %exitcond = icmp eq i32 %lftr.wideiv, %conv.i.i, !dbg !697
  br i1 %exitcond, label %for.end.i.i, label %for.body.i.i, !dbg !697

for.end.i.i:                                      ; preds = %for.body.i.i, %for.cond.preheader.i.i
  %sub11.i.i = shl i64 %call.i.i, 32, !dbg !701
  %sext.i.i = add i64 %sub11.i.i, -4294967296, !dbg !701
  %idxprom12.i.i = ashr exact i64 %sext.i.i, 32, !dbg !701
  %arrayidx13.i.i = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 %idxprom12.i.i, !dbg !701
  store i8 %44, i8* %arrayidx13.i.i, align 1, !dbg !701, !tbaa !426
  br label %if.end.i.i, !dbg !702

if.end.i.i:                                       ; preds = %for.end.i.i, %if.then182.i
  %call14.i.i = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([4 x i8]* @.str30, i64 0, i64 0)) #10, !dbg !703
  %cmp15.i.i = icmp eq i32 %call14.i.i, 0, !dbg !703
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.end184.i, !dbg !703

if.then17.i.i:                                    ; preds = %if.end.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0), i64 3, i32 1, i1 false) #2, !dbg !704
  br label %if.end184.i, !dbg !704

if.end184.i:                                      ; preds = %if.then17.i.i, %if.end.i.i, %if.end180.i
  %call186.i = call i8** @put_symtab(%struct.t_symtab* @read_pdbfile.symtab, i8* %3) #8, !dbg !634
  %49 = load i8**** %atomname.i273, align 8, !dbg !634, !tbaa !478
  %arrayidx188.i = getelementptr inbounds i8*** %49, i64 %idxprom195.pre.i, !dbg !634
  store i8** %call186.i, i8*** %arrayidx188.i, align 8, !dbg !634, !tbaa !478
  %chain190.i = getelementptr inbounds %struct.t_atom* %39, i64 %idxprom195.pre.i, i32 9, !dbg !705
  store i8 %33, i8* %chain190.i, align 1, !dbg !705, !tbaa !426
  %resnr191.i = getelementptr inbounds %struct.t_atom* %39, i64 %idxprom195.pre.i, i32 7, !dbg !706
  store i32 %newres.1.i, i32* %resnr191.i, align 4, !dbg !706, !tbaa !425
  %m.i = getelementptr inbounds %struct.t_atom* %39, i64 %idxprom195.pre.i, i32 0, !dbg !707
  store float 0.000000e+00, float* %m.i, align 4, !dbg !707, !tbaa !446
  %q.i = getelementptr inbounds %struct.t_atom* %39, i64 %idxprom195.pre.i, i32 1, !dbg !708
  store float 0.000000e+00, float* %q.i, align 4, !dbg !708, !tbaa !446
  br label %if.end192.i, !dbg !709

if.end192.i:                                      ; preds = %if.end184.i, %for.end50.i
  %call194.i = call double @atof(i8* %6) #10, !dbg !682
  %mul.i = fmul double %call194.i, 1.000000e-01, !dbg !682
  %conv.i = fptrunc double %mul.i to float, !dbg !682
  %arrayidx197.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom195.pre.i, i64 0, !dbg !682
  store float %conv.i, float* %arrayidx197.i, align 4, !dbg !682, !tbaa !446
  %call199.i = call double @atof(i8* %7) #10, !dbg !710
  %mul200.i = fmul double %call199.i, 1.000000e-01, !dbg !710
  %conv201.i = fptrunc double %mul200.i to float, !dbg !710
  %arrayidx204.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom195.pre.i, i64 1, !dbg !710
  store float %conv201.i, float* %arrayidx204.i, align 4, !dbg !710, !tbaa !446
  %call206.i = call double @atof(i8* %8) #10, !dbg !711
  %mul207.i = fmul double %call206.i, 1.000000e-01, !dbg !711
  %conv208.i = fptrunc double %mul207.i to float, !dbg !711
  %arrayidx211.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom195.pre.i, i64 2, !dbg !711
  store float %conv208.i, float* %arrayidx211.i, align 4, !dbg !711, !tbaa !446
  %50 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !dbg !628, !tbaa !478
  %tobool212.i = icmp eq %struct.t_pdbinfo* %50, null, !dbg !628
  br i1 %tobool212.i, label %read_atom.exit, label %if.then213.i, !dbg !628

if.then213.i:                                     ; preds = %if.end192.i
  %type217.i = getelementptr inbounds %struct.t_pdbinfo* %50, i64 %idxprom195.pre.i, i32 0, !dbg !712
  store i32 %call6, i32* %type217.i, align 4, !dbg !712, !tbaa !425
  %call219.i = call i32 @atoi(i8* %2) #10, !dbg !714
  %atomnr.i = getelementptr inbounds %struct.t_pdbinfo* %50, i64 %idxprom195.pre.i, i32 1, !dbg !714
  store i32 %call219.i, i32* %atomnr.i, align 4, !dbg !714, !tbaa !425
  %altloc226.i = getelementptr inbounds %struct.t_pdbinfo* %50, i64 %idxprom195.pre.i, i32 2, !dbg !715
  store i8 %30, i8* %altloc226.i, align 1, !dbg !715, !tbaa !426
  %51 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !dbg !716, !tbaa !478
  %arraydecay231.i = getelementptr inbounds %struct.t_pdbinfo* %51, i64 %idxprom195.pre.i, i32 3, i64 0, !dbg !716
  %call233.i = call i8* @strcpy(i8* %arraydecay231.i, i8* %11) #8, !dbg !716
  %call235.i = call double @atof(i8* %10) #10, !dbg !717
  %conv236.i = fptrunc double %call235.i to float, !dbg !717
  %52 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !dbg !717, !tbaa !478
  %bfac240.i = getelementptr inbounds %struct.t_pdbinfo* %52, i64 %idxprom195.pre.i, i32 5, !dbg !717
  store float %conv236.i, float* %bfac240.i, align 4, !dbg !717, !tbaa !446
  %call242.i = call double @atof(i8* %9) #10, !dbg !718
  %conv243.i = fptrunc double %call242.i to float, !dbg !718
  %occup247.i = getelementptr inbounds %struct.t_pdbinfo* %52, i64 %idxprom195.pre.i, i32 4, !dbg !718
  store float %conv243.i, float* %occup247.i, align 4, !dbg !718, !tbaa !446
  br label %read_atom.exit, !dbg !719

read_atom.exit:                                   ; preds = %if.end192.i, %if.then213.i
  %inc249.i = add nsw i32 %natom.0278, 1, !dbg !720
  call void @llvm.dbg.value(metadata !{i32 %inc249.i}, i64 0, metadata !721) #2, !dbg !720
  call void @llvm.lifetime.end(i64 12, i8* %2) #2, !dbg !722
  call void @llvm.lifetime.end(i64 12, i8* %3) #2, !dbg !722
  call void @llvm.lifetime.end(i64 12, i8* %4) #2, !dbg !722
  call void @llvm.lifetime.end(i64 12, i8* %5) #2, !dbg !722
  call void @llvm.lifetime.end(i64 12, i8* %6) #2, !dbg !722
  call void @llvm.lifetime.end(i64 12, i8* %7) #2, !dbg !722
  call void @llvm.lifetime.end(i64 12, i8* %8) #2, !dbg !722
  call void @llvm.lifetime.end(i64 12, i8* %9) #2, !dbg !722
  call void @llvm.lifetime.end(i64 12, i8* %10) #2, !dbg !722
  call void @llvm.lifetime.end(i64 12, i8* %11) #2, !dbg !722
  call void @llvm.dbg.value(metadata !{i32 %inc249.i}, i64 0, metadata !288), !dbg !596
  br label %land.rhs, !dbg !723

sw.bb9:                                           ; preds = %while.body
  %53 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !dbg !724, !tbaa !478
  %tobool10 = icmp eq %struct.t_pdbinfo* %53, null, !dbg !724
  br i1 %tobool10, label %land.rhs, label %if.then11, !dbg !724

if.then11:                                        ; preds = %sw.bb9
  call void @llvm.lifetime.start(i64 12, i8* %2) #2
  call void @llvm.lifetime.start(i64 12, i8* %3) #2
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !725) #2, !dbg !726
  call void @llvm.dbg.value(metadata !{i32 %natom.0278}, i64 0, metadata !727) #2, !dbg !726
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !728) #2, !dbg !726
  call void @llvm.dbg.value(metadata !659, i64 0, metadata !729) #2, !dbg !730
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %anr.i}, metadata !323) #2, !dbg !731
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %anm.i}, metadata !324) #2, !dbg !731
  call void @llvm.dbg.value(metadata !732, i64 0, metadata !733) #2, !dbg !734
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !735) #2, !dbg !736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %scevgep203.i, i64 5, i32 1, i1 false) #2, !dbg !736
  store i8 0, i8* %arrayidx7.i, align 1, !dbg !738, !tbaa !426
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !735) #2, !dbg !739
  %54 = load i32* %12, align 4, !dbg !739
  store i32 %54, i32* %13, align 4, !dbg !739
  store i8 0, i8* %arrayidx21.i, align 4, !dbg !741, !tbaa !426
  call void @trim(i8* %3) #8, !dbg !742
  %call.i = call i32 @atoi(i8* %2) #10, !dbg !743
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !744) #2, !dbg !743
  %cmp23125.i = icmp sgt i32 %natom.0278, 0, !dbg !745
  br i1 %cmp23125.i, label %for.body24.lr.ph.i, label %if.then37.i, !dbg !745

for.body24.lr.ph.i:                               ; preds = %if.then11
  %55 = load i8**** %atomname.i273, align 8, !dbg !747, !tbaa !478
  %56 = sext i32 %natom.0278 to i64
  br label %for.body24.i, !dbg !745

for.body24.i:                                     ; preds = %for.cond22.backedge.i, %for.body24.lr.ph.i
  %indvars.iv.i = phi i64 [ %56, %for.body24.lr.ph.i ], [ %indvars.iv.next.i, %for.cond22.backedge.i ]
  %i.0127.in.i = phi i32 [ %natom.0278, %for.body24.lr.ph.i ], [ %i.0127.i, %for.cond22.backedge.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1, !dbg !745
  %i.0127.i = add nsw i32 %i.0127.in.i, -1, !dbg !745
  %arrayidx27.i = getelementptr inbounds i8*** %55, i64 %indvars.iv.next.i, !dbg !747
  %57 = load i8*** %arrayidx27.i, align 8, !dbg !747, !tbaa !478
  %58 = load i8** %57, align 8, !dbg !747, !tbaa !478
  %call28.i = call i32 @strcmp(i8* %3, i8* %58) #10, !dbg !747
  %cmp29.i = icmp eq i32 %call28.i, 0, !dbg !747
  br i1 %cmp29.i, label %land.lhs.true.i, label %for.cond22.backedge.i, !dbg !747

for.cond22.backedge.i:                            ; preds = %land.lhs.true.i, %for.body24.i
  %59 = trunc i64 %indvars.iv.next.i to i32, !dbg !745
  %cmp23.i = icmp sgt i32 %59, 0, !dbg !745
  br i1 %cmp23.i, label %for.body24.i, label %if.then37.i, !dbg !745

land.lhs.true.i:                                  ; preds = %for.body24.i
  %60 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !dbg !747, !tbaa !478
  %atomnr32.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %indvars.iv.next.i, i32 1, !dbg !747
  %61 = load i32* %atomnr32.i, align 4, !dbg !747, !tbaa !425
  %cmp33.i = icmp eq i32 %call.i, %61, !dbg !747
  br i1 %cmp33.i, label %for.end35.i, label %for.cond22.backedge.i, !dbg !747

for.end35.i:                                      ; preds = %land.lhs.true.i
  %cmp36.i = icmp slt i32 %i.0127.in.i, 1, !dbg !748
  br i1 %cmp36.i, label %if.then37.i, label %if.else.i, !dbg !748

if.then37.i:                                      ; preds = %for.cond22.backedge.i, %for.end35.i, %if.then11
  %62 = load %struct._IO_FILE** @stderr, align 8, !dbg !749, !tbaa !478
  %call39.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([47 x i8]* @.str26, i64 0, i64 0), i8* %3, i32 %call.i) #8, !dbg !749
  br label %land.rhs, !dbg !749

if.else.i:                                        ; preds = %for.end35.i
  %idxprom40.i = sext i32 %i.0127.i to i64, !dbg !635
  %arrayidx43.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %idxprom40.i, i32 7, i64 0, !dbg !635
  %arrayidx48.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %idxprom40.i, i32 7, i64 1, !dbg !635
  %arrayidx53.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %idxprom40.i, i32 7, i64 2, !dbg !635
  %arrayidx58.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %idxprom40.i, i32 7, i64 3, !dbg !635
  %arrayidx63.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %idxprom40.i, i32 7, i64 4, !dbg !635
  %arrayidx68.i = getelementptr inbounds %struct.t_pdbinfo* %60, i64 %idxprom40.i, i32 7, i64 5, !dbg !635
  %call69.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr.i, i8* getelementptr inbounds ([13 x i8]* @.str27, i64 0, i64 0), i32* %arrayidx43.i, i32* %arrayidx48.i, i32* %arrayidx53.i, i32* %arrayidx58.i, i32* %arrayidx63.i, i32* %arrayidx68.i) #8, !dbg !635
  %cmp70.i = icmp eq i32 %call69.i, 6, !dbg !635
  br i1 %cmp70.i, label %if.then71.i, label %if.else75.i, !dbg !635

if.then71.i:                                      ; preds = %if.else.i
  %63 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !dbg !750, !tbaa !478
  %bAnisotropic.i = getelementptr inbounds %struct.t_pdbinfo* %63, i64 %idxprom40.i, i32 6, !dbg !750
  store i32 1, i32* %bAnisotropic.i, align 4, !dbg !750, !tbaa !425
  br label %land.rhs, !dbg !752

if.else75.i:                                      ; preds = %if.else.i
  %64 = load %struct._IO_FILE** @stderr, align 8, !dbg !753, !tbaa !478
  %call76.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([35 x i8]* @.str28, i64 0, i64 0), i32 %i.0127.i) #8, !dbg !753
  %65 = load %struct.t_pdbinfo** %pdbinfo.i274, align 8, !dbg !755, !tbaa !478
  %bAnisotropic80.i = getelementptr inbounds %struct.t_pdbinfo* %65, i64 %idxprom40.i, i32 6, !dbg !755
  store i32 0, i32* %bAnisotropic80.i, align 4, !dbg !755, !tbaa !425
  br label %land.rhs

sw.bb14:                                          ; preds = %while.body
  br i1 %cmp, label %if.then16, label %land.rhs, !dbg !756

if.then16:                                        ; preds = %sw.bb14
  %call21 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), i8* %arraydecay18, i8* %arraydecay19, i8* %arraydecay20, double* %alpha, double* %beta, double* %gamma) #8, !dbg !638
  %call23 = call double @atof(i8* %arraydecay18) #10, !dbg !757
  %mul = fmul double %call23, 1.000000e-01, !dbg !757
  call void @llvm.dbg.value(metadata !{double %mul}, i64 0, metadata !278), !dbg !757
  %call25 = call double @atof(i8* %arraydecay19) #10, !dbg !758
  %mul26 = fmul double %call25, 1.000000e-01, !dbg !758
  call void @llvm.dbg.value(metadata !{double %mul26}, i64 0, metadata !280), !dbg !758
  %call28 = call double @atof(i8* %arraydecay20) #10, !dbg !759
  %mul29 = fmul double %call28, 1.000000e-01, !dbg !759
  call void @llvm.dbg.value(metadata !{double %mul29}, i64 0, metadata !281), !dbg !759
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !760) #2, !dbg !761
  call void @llvm.dbg.value(metadata !583, i64 0, metadata !762) #2, !dbg !763
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 36, i32 4, i1 false) #2, !dbg !764
  %conv = fptrunc double %mul to float, !dbg !642
  store float %conv, float* %arrayidx31, align 4, !dbg !642, !tbaa !446
  call void @llvm.dbg.value(metadata !{double* %alpha}, i64 0, metadata !282), !dbg !765
  %66 = load double* %alpha, align 8, !dbg !765, !tbaa !766
  %sub = fadd double %66, -9.000000e+01, !dbg !765
  %call32 = call double @fabs(double %sub) #11, !dbg !765
  %cmp33 = fcmp ogt double %call32, 1.200000e-38, !dbg !765
  call void @llvm.dbg.value(metadata !{double* %beta}, i64 0, metadata !283), !dbg !767
  %.pre = load double* %beta, align 8, !dbg !767, !tbaa !766
  br i1 %cmp33, label %if.then44, label %lor.lhs.false, !dbg !765

lor.lhs.false:                                    ; preds = %if.then16
  %sub35 = fadd double %.pre, -9.000000e+01, !dbg !768
  %call36 = call double @fabs(double %sub35) #11, !dbg !768
  %cmp37 = fcmp ogt double %call36, 1.200000e-38, !dbg !768
  br i1 %cmp37, label %if.then44, label %lor.lhs.false39, !dbg !768

lor.lhs.false39:                                  ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata !{double* %gamma}, i64 0, metadata !284), !dbg !769
  %67 = load double* %gamma, align 8, !dbg !769, !tbaa !766
  %sub40 = fadd double %67, -9.000000e+01, !dbg !769
  %call41 = call double @fabs(double %sub40) #11, !dbg !769
  %cmp42 = fcmp ogt double %call41, 1.200000e-38, !dbg !769
  br i1 %cmp42, label %if.then44, label %if.else, !dbg !769

if.then44:                                        ; preds = %if.then16, %lor.lhs.false, %lor.lhs.false39
  call void @llvm.dbg.value(metadata !{double* %alpha}, i64 0, metadata !282), !dbg !770
  %mul45 = fmul double %66, 0x3F91DF46A2529D39, !dbg !770
  call void @llvm.dbg.value(metadata !{double %mul45}, i64 0, metadata !282), !dbg !770
  store double %mul45, double* %alpha, align 8, !dbg !770, !tbaa !766
  call void @llvm.dbg.value(metadata !{double* %beta}, i64 0, metadata !283), !dbg !767
  %mul46 = fmul double %.pre, 0x3F91DF46A2529D39, !dbg !767
  call void @llvm.dbg.value(metadata !{double %mul46}, i64 0, metadata !283), !dbg !767
  store double %mul46, double* %beta, align 8, !dbg !767, !tbaa !766
  call void @llvm.dbg.value(metadata !{double* %gamma}, i64 0, metadata !284), !dbg !771
  %68 = load double* %gamma, align 8, !dbg !771, !tbaa !766
  %mul47 = fmul double %68, 0x3F91DF46A2529D39, !dbg !771
  call void @llvm.dbg.value(metadata !{double %mul47}, i64 0, metadata !284), !dbg !771
  store double %mul47, double* %gamma, align 8, !dbg !771, !tbaa !766
  %call48 = call double @cos(double %mul47) #8, !dbg !643
  %mul49 = fmul double %mul26, %call48, !dbg !643
  %conv50 = fptrunc double %mul49 to float, !dbg !643
  store float %conv50, float* %arrayidx52, align 4, !dbg !643, !tbaa !446
  call void @llvm.dbg.value(metadata !{double* %gamma}, i64 0, metadata !284), !dbg !645
  %69 = load double* %gamma, align 8, !dbg !645, !tbaa !766
  %call53 = call double @sin(double %69) #8, !dbg !645
  %mul54 = fmul double %mul26, %call53, !dbg !645
  %conv55 = fptrunc double %mul54 to float, !dbg !645
  store float %conv55, float* %arrayidx57, align 4, !dbg !645, !tbaa !446
  call void @llvm.dbg.value(metadata !{double* %beta}, i64 0, metadata !283), !dbg !646
  %70 = load double* %beta, align 8, !dbg !646, !tbaa !766
  %call58 = call double @cos(double %70) #8, !dbg !646
  %mul59 = fmul double %mul29, %call58, !dbg !646
  %conv60 = fptrunc double %mul59 to float, !dbg !646
  store float %conv60, float* %arrayidx62, align 4, !dbg !646, !tbaa !446
  call void @llvm.dbg.value(metadata !{double* %alpha}, i64 0, metadata !282), !dbg !647
  %71 = load double* %alpha, align 8, !dbg !647, !tbaa !766
  %call63 = call double @cos(double %71) #8, !dbg !647
  call void @llvm.dbg.value(metadata !{double* %beta}, i64 0, metadata !283), !dbg !647
  %72 = load double* %beta, align 8, !dbg !647, !tbaa !766
  %call64 = call double @cos(double %72) #8, !dbg !647
  call void @llvm.dbg.value(metadata !{double* %gamma}, i64 0, metadata !284), !dbg !647
  %73 = load double* %gamma, align 8, !dbg !647, !tbaa !766
  %call65 = call double @cos(double %73) #8, !dbg !647
  %mul66 = fmul double %call64, %call65, !dbg !647
  %sub67 = fsub double %call63, %mul66, !dbg !647
  %mul68 = fmul double %mul29, %sub67, !dbg !647
  call void @llvm.dbg.value(metadata !{double* %gamma}, i64 0, metadata !284), !dbg !647
  %74 = load double* %gamma, align 8, !dbg !647, !tbaa !766
  %call69 = call double @sin(double %74) #8, !dbg !647
  %div = fdiv double %mul68, %call69, !dbg !647
  %conv70 = fptrunc double %div to float, !dbg !647
  store float %conv70, float* %arrayidx72, align 4, !dbg !647, !tbaa !446
  %mul73 = fmul double %mul29, %mul29, !dbg !648
  %75 = load float* %arrayidx62, align 4, !dbg !648, !tbaa !446
  %mul78 = fmul float %75, %75, !dbg !648
  %conv79 = fpext float %mul78 to double, !dbg !648
  %sub80 = fsub double %mul73, %conv79, !dbg !648
  %mul85 = fmul float %conv70, %conv70, !dbg !648
  %conv86 = fpext float %mul85 to double, !dbg !648
  %sub87 = fsub double %sub80, %conv86, !dbg !648
  %call88 = call double @sqrt(double %sub87) #8, !dbg !648
  %conv89 = fptrunc double %call88 to float, !dbg !648
  store float %conv89, float* %arrayidx91, align 4, !dbg !648, !tbaa !446
  br label %land.rhs, !dbg !772

if.else:                                          ; preds = %lor.lhs.false39
  %conv92 = fptrunc double %mul26 to float, !dbg !773
  store float %conv92, float* %arrayidx57, align 4, !dbg !773, !tbaa !446
  %conv95 = fptrunc double %mul29 to float, !dbg !775
  store float %conv95, float* %arrayidx91, align 4, !dbg !775, !tbaa !446
  br label %land.rhs

land.rhs104:                                      ; preds = %while.body, %while.body, %land.rhs104
  %c.0 = phi i8* [ %incdec.ptr, %land.rhs104 ], [ %scevgep203.i, %while.body ], [ %scevgep203.i, %while.body ]
  %76 = load i8* %c.0, align 1, !dbg !776, !tbaa !426
  %cmp107 = icmp eq i8 %76, 32, !dbg !776
  %incdec.ptr = getelementptr inbounds i8* %c.0, i64 1, !dbg !776
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !286), !dbg !776
  br i1 %cmp107, label %land.rhs113, label %land.rhs104

land.rhs113:                                      ; preds = %land.rhs104, %land.rhs113.land.rhs113_crit_edge
  %77 = phi i8 [ %.pre289, %land.rhs113.land.rhs113_crit_edge ], [ 32, %land.rhs104 ]
  %c.1 = phi i8* [ %incdec.ptr120, %land.rhs113.land.rhs113_crit_edge ], [ %c.0, %land.rhs104 ]
  %cmp116 = icmp eq i8 %77, 32, !dbg !777
  %incdec.ptr120 = getelementptr inbounds i8* %c.1, i64 1, !dbg !777
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr120}, i64 0, metadata !286), !dbg !777
  br i1 %cmp116, label %land.rhs113.land.rhs113_crit_edge, label %while.end121

land.rhs113.land.rhs113_crit_edge:                ; preds = %land.rhs113
  %.pre289 = load i8* %incdec.ptr120, align 1, !dbg !777, !tbaa !426
  br label %land.rhs113

while.end121:                                     ; preds = %land.rhs113
  %call122 = call i8* @strstr(i8* %c.1, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0)) #10, !dbg !778
  call void @llvm.dbg.value(metadata !{i8* %call122}, i64 0, metadata !287), !dbg !778
  %tobool123 = icmp eq i8* %call122, null, !dbg !779
  br i1 %tobool123, label %if.end126, label %if.then124, !dbg !779

if.then124:                                       ; preds = %while.end121
  store i8 0, i8* %call122, align 1, !dbg !780, !tbaa !426
  %strlenfirst266.pre = load i8* %c.1, align 1, !dbg !782
  br label %if.end126, !dbg !783

if.end126:                                        ; preds = %while.end121, %if.then124
  %strlenfirst266 = phi i8 [ %77, %while.end121 ], [ %strlenfirst266.pre, %if.then124 ]
  %cmp128 = icmp eq i8 %strlenfirst266, 0, !dbg !782
  br i1 %cmp128, label %land.rhs, label %if.then130, !dbg !782

if.then130:                                       ; preds = %if.end126
  %call131 = call i8* @strcpy(i8* %title, i8* %c.1) #8, !dbg !784
  br label %land.rhs, !dbg !784

sw.bb133:                                         ; preds = %while.body
  %call135 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0)) #10, !dbg !785
  %tobool136 = icmp eq i8* %call135, null, !dbg !785
  br i1 %tobool136, label %if.then142, label %lor.lhs.false137, !dbg !785

lor.lhs.false137:                                 ; preds = %sw.bb133
  %call140 = call i8* @strstr(i8* %scevgep203.i, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0)) #10, !dbg !785
  %tobool141 = icmp eq i8* %call140, null, !dbg !785
  br i1 %tobool141, label %land.rhs, label %if.then142, !dbg !785

if.then142:                                       ; preds = %lor.lhs.false137, %sw.bb133
  %call145 = call i8* @strstr(i8* %scevgep203.i, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0)) #10, !dbg !786
  call void @llvm.dbg.value(metadata !{i8* %call145}, i64 0, metadata !286), !dbg !786
  %tobool146 = icmp eq i8* %call145, null, !dbg !786
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !286), !dbg !788
  %arraydecay.call145 = select i1 %tobool146, i8* %0, i8* %call145, !dbg !786
  br label %land.rhs152, !dbg !786

land.rhs152:                                      ; preds = %land.rhs152, %if.then142
  %c.2 = phi i8* [ %incdec.ptr159, %land.rhs152 ], [ %arraydecay.call145, %if.then142 ]
  %78 = load i8* %c.2, align 1, !dbg !789, !tbaa !426
  %cmp155 = icmp eq i8 %78, 32, !dbg !789
  %incdec.ptr159 = getelementptr inbounds i8* %c.2, i64 1, !dbg !789
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr159}, i64 0, metadata !286), !dbg !789
  br i1 %cmp155, label %land.rhs163, label %land.rhs152

land.rhs163:                                      ; preds = %land.rhs152, %land.rhs163.land.rhs163_crit_edge
  %79 = phi i8 [ %.pre290, %land.rhs163.land.rhs163_crit_edge ], [ 32, %land.rhs152 ]
  %c.3 = phi i8* [ %incdec.ptr170, %land.rhs163.land.rhs163_crit_edge ], [ %c.2, %land.rhs152 ]
  %cmp166 = icmp eq i8 %79, 32, !dbg !790
  %incdec.ptr170 = getelementptr inbounds i8* %c.3, i64 1, !dbg !790
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr170}, i64 0, metadata !286), !dbg !790
  br i1 %cmp166, label %land.rhs163.land.rhs163_crit_edge, label %while.end171

land.rhs163.land.rhs163_crit_edge:                ; preds = %land.rhs163
  %.pre290 = load i8* %incdec.ptr170, align 1, !dbg !790, !tbaa !426
  br label %land.rhs163

while.end171:                                     ; preds = %land.rhs163
  %call172 = call i8* @strstr(i8* %c.3, i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0)) #10, !dbg !791
  call void @llvm.dbg.value(metadata !{i8* %call172}, i64 0, metadata !287), !dbg !791
  %tobool173 = icmp eq i8* %call172, null, !dbg !792
  br i1 %tobool173, label %if.end188, label %while.cond175, !dbg !792

while.cond175:                                    ; preds = %while.end171, %while.cond175
  %d.0 = phi i8* [ %arrayidx176, %while.cond175 ], [ %call172, %while.end171 ]
  %arrayidx176 = getelementptr inbounds i8* %d.0, i64 -1, !dbg !793
  %80 = load i8* %arrayidx176, align 1, !dbg !793, !tbaa !426
  %cmp178 = icmp eq i8 %80, 59, !dbg !793
  %cmp181 = icmp ugt i8* %d.0, %c.3, !dbg !793
  %cmp181. = and i1 %cmp178, %cmp181, !dbg !793
  br i1 %cmp181., label %while.cond175, label %while.end186

while.end186:                                     ; preds = %while.cond175
  store i8 0, i8* %d.0, align 1, !dbg !795, !tbaa !426
  %strlenfirst.pre = load i8* %c.3, align 1, !dbg !796
  br label %if.end188, !dbg !797

if.end188:                                        ; preds = %while.end171, %while.end186
  %strlenfirst = phi i8 [ %79, %while.end171 ], [ %strlenfirst.pre, %while.end186 ]
  %cmp190 = icmp eq i8 %strlenfirst, 0, !dbg !796
  br i1 %cmp190, label %land.rhs, label %if.then192, !dbg !796

if.then192:                                       ; preds = %if.end188
  %tobool193 = icmp eq i32 %bCOMPND.0282, 0, !dbg !798
  br i1 %tobool193, label %if.else197, label %if.then194, !dbg !798

if.then194:                                       ; preds = %if.then192
  %strlen = call i64 @strlen(i8* %title), !dbg !800
  %endptr = getelementptr i8* %title, i64 %strlen, !dbg !800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([3 x i8]* @.str19, i64 0, i64 0), i64 3, i32 1, i1 false), !dbg !800
  %call196 = call i8* @strcat(i8* %title, i8* %c.3) #8, !dbg !802
  br label %land.rhs, !dbg !803

if.else197:                                       ; preds = %if.then192
  %call198 = call i8* @strcpy(i8* %title, i8* %c.3) #8, !dbg !804
  br label %land.rhs

sw.bb206:                                         ; preds = %while.body
  br i1 %tobool207, label %land.rhs, label %if.then208, !dbg !649

if.then208:                                       ; preds = %sw.bb206
  %call210 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0), i32* %model_nr) #8, !dbg !805
  br label %land.rhs, !dbg !805

while.end213:                                     ; preds = %while.body, %land.rhs, %while.cond.backedge
  call void @llvm.lifetime.end(i64 4097, i8* %0) #2, !dbg !806
  ret i32 %natom.0278, !dbg !806
}

; Function Attrs: optsize
declare void @open_symtab(%struct.t_symtab*) #4

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #6

; Function Attrs: nounwind optsize
declare double @cos(double) #3

; Function Attrs: nounwind optsize
declare double @sin(double) #3

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define void @get_pdb_coordnum(%struct._IO_FILE* %in, i32* nocapture %natoms) #0 {
entry:
  %line = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in}, i64 0, metadata !294), !dbg !807
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !295), !dbg !807
  %0 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0, !dbg !808
  call void @llvm.lifetime.start(i64 4096, i8* %0) #2, !dbg !808
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %line}, metadata !296), !dbg !808
  store i32 0, i32* %natoms, align 4, !dbg !809, !tbaa !425
  %call20 = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #8, !dbg !810
  %tobool21 = icmp eq i8* %call20, null, !dbg !810
  br i1 %tobool21, label %while.end, label %while.body, !dbg !810

while.body:                                       ; preds = %entry, %while.cond.backedge
  %1 = load i32* @bTER, align 4, !dbg !811, !tbaa !425
  %tobool1 = icmp eq i32 %1, 0, !dbg !811
  br i1 %tobool1, label %land.lhs.true5, label %land.lhs.true, !dbg !811

land.lhs.true:                                    ; preds = %while.body
  %call3 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i64 3) #10, !dbg !811
  %cmp = icmp eq i32 %call3, 0, !dbg !811
  br i1 %cmp, label %while.end, label %if.end, !dbg !811

land.lhs.true5:                                   ; preds = %while.body
  %call7 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0), i64 6) #10, !dbg !813
  %cmp8 = icmp eq i32 %call7, 0, !dbg !813
  br i1 %cmp8, label %while.end, label %if.end, !dbg !813

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true5
  %call10 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i64 6) #10, !dbg !814
  %cmp11 = icmp eq i32 %call10, 0, !dbg !814
  br i1 %cmp11, label %if.then16, label %lor.lhs.false12, !dbg !814

lor.lhs.false12:                                  ; preds = %if.end
  %call14 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i64 6) #10, !dbg !814
  %cmp15 = icmp eq i32 %call14, 0, !dbg !814
  br i1 %cmp15, label %if.then16, label %while.cond.backedge, !dbg !814

if.then16:                                        ; preds = %lor.lhs.false12, %if.end
  %2 = load i32* %natoms, align 4, !dbg !815, !tbaa !425
  %inc = add nsw i32 %2, 1, !dbg !815
  store i32 %inc, i32* %natoms, align 4, !dbg !815, !tbaa !425
  br label %while.cond.backedge, !dbg !815

while.cond.backedge:                              ; preds = %if.then16, %lor.lhs.false12
  %call = call i8* @fgets2(i8* %0, i32 4096, %struct._IO_FILE* %in) #8, !dbg !810
  %tobool = icmp eq i8* %call, null, !dbg !810
  br i1 %tobool, label %while.end, label %while.body, !dbg !810

while.end:                                        ; preds = %while.cond.backedge, %land.lhs.true, %land.lhs.true5, %entry
  call void @llvm.lifetime.end(i64 4096, i8* %0) #2, !dbg !816
  ret void, !dbg !816
}

; Function Attrs: nounwind optsize uwtable
define void @read_pdb_conf(i8* %infile, i8* %title, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, [3 x float]* %box, i32 %bChange) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %infile}, i64 0, metadata !304), !dbg !817
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !305), !dbg !817
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !306), !dbg !818
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !307), !dbg !818
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !308), !dbg !818
  tail call void @llvm.dbg.value(metadata !{i32 %bChange}, i64 0, metadata !309), !dbg !818
  %call = tail call %struct._IO_FILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str25, i64 0, i64 0)) #8, !dbg !819
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !310), !dbg !819
  %call1 = tail call i32 @read_pdbfile(%struct._IO_FILE* %call, i8* %title, i32* null, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i32 %bChange) #9, !dbg !820
  tail call void @ffclose(%struct._IO_FILE* %call) #8, !dbg !821
  ret void, !dbg !822
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #4

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #6

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #4

; Function Attrs: optsize
declare i8** @put_symtab(%struct.t_symtab*, i8*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

declare float @fabsf(float)

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readonly }
attributes #11 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !41, metadata !42, metadata !408, metadata !41, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !18, metadata !33}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 52, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 52, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"epdbATOM", i64 0} ; [ DW_TAG_enumerator ] [epdbATOM :: 0]
!7 = metadata !{i32 786472, metadata !"epdbHETATM", i64 1} ; [ DW_TAG_enumerator ] [epdbHETATM :: 1]
!8 = metadata !{i32 786472, metadata !"epdbANISOU", i64 2} ; [ DW_TAG_enumerator ] [epdbANISOU :: 2]
!9 = metadata !{i32 786472, metadata !"epdbCRYST1", i64 3} ; [ DW_TAG_enumerator ] [epdbCRYST1 :: 3]
!10 = metadata !{i32 786472, metadata !"epdbCOMPND", i64 4} ; [ DW_TAG_enumerator ] [epdbCOMPND :: 4]
!11 = metadata !{i32 786472, metadata !"epdbMODEL", i64 5} ; [ DW_TAG_enumerator ] [epdbMODEL :: 5]
!12 = metadata !{i32 786472, metadata !"epdbENDMDL", i64 6} ; [ DW_TAG_enumerator ] [epdbENDMDL :: 6]
!13 = metadata !{i32 786472, metadata !"epdbTER", i64 7} ; [ DW_TAG_enumerator ] [epdbTER :: 7]
!14 = metadata !{i32 786472, metadata !"epdbHEADER", i64 8} ; [ DW_TAG_enumerator ] [epdbHEADER :: 8]
!15 = metadata !{i32 786472, metadata !"epdbTITLE", i64 9} ; [ DW_TAG_enumerator ] [epdbTITLE :: 9]
!16 = metadata !{i32 786472, metadata !"epdbREMARK", i64 10} ; [ DW_TAG_enumerator ] [epdbREMARK :: 10]
!17 = metadata !{i32 786472, metadata !"epdbNR", i64 11} ; [ DW_TAG_enumerator ] [epdbNR :: 11]
!18 = metadata !{i32 786436, metadata !19, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!19 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!21 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!22 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!23 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!24 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!25 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!26 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!27 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!28 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!29 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!30 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!31 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!32 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!33 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 57, i64 32, i64 32, i32 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 57, size 32, align 32, offset 0] [from ]
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!35 = metadata !{i32 786472, metadata !"U11", i64 0} ; [ DW_TAG_enumerator ] [U11 :: 0]
!36 = metadata !{i32 786472, metadata !"U22", i64 1} ; [ DW_TAG_enumerator ] [U22 :: 1]
!37 = metadata !{i32 786472, metadata !"U33", i64 2} ; [ DW_TAG_enumerator ] [U33 :: 2]
!38 = metadata !{i32 786472, metadata !"U12", i64 3} ; [ DW_TAG_enumerator ] [U12 :: 3]
!39 = metadata !{i32 786472, metadata !"U13", i64 4} ; [ DW_TAG_enumerator ] [U13 :: 4]
!40 = metadata !{i32 786472, metadata !"U23", i64 5} ; [ DW_TAG_enumerator ] [U23 :: 5]
!41 = metadata !{i32 0}
!42 = metadata !{metadata !43, metadata !50, metadata !53, metadata !222, metadata !235, metadata !245, metadata !252, metadata !256, metadata !290, metadata !300, metadata !311, metadata !325, metadata !368, metadata !376, metadata !386, metadata !392, metadata !405}
!43 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"set_pdb_wide_format", metadata !"set_pdb_wide_format", metadata !"", i32 58, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @set_pdb_wide_format, null, null, metadata !48, i32 59} ; [ DW_TAG_subprogram ] [line 58] [def] [scope 59] [set_pdb_wide_format]
!44 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!45 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{null, metadata !47}
!47 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786689, metadata !43, metadata !"bSet", metadata !44, i32 16777274, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bSet] [line 58]
!50 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"pdb_use_ter", metadata !"pdb_use_ter", metadata !"", i32 63, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @pdb_use_ter, null, null, metadata !51, i32 64} ; [ DW_TAG_subprogram ] [line 63] [def] [scope 64] [pdb_use_ter]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786689, metadata !50, metadata !"bSet", metadata !44, i32 16777279, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bSet] [line 63]
!53 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"write_pdbfile_indexed", metadata !"write_pdbfile_indexed", metadata !"", i32 84, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8, i32, i32, i32*)* @write_pdbfile_indexed, null, null, metadata !195, i32 87} ; [ DW_TAG_subprogram ] [line 84] [def] [scope 87] [write_pdbfile_indexed]
!54 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{null, metadata !56, metadata !63, metadata !113, metadata !189, metadata !194, metadata !64, metadata !47, metadata !161, metadata !160}
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!57 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!58 = metadata !{i32 786451, metadata !59, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !60, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!59 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!60 = metadata !{metadata !61, metadata !62, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !83, metadata !84, metadata !85, metadata !86, metadata !89, metadata !91, metadata !93, metadata !97, metadata !99, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !108, metadata !109}
!61 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!62 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !63} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!64 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!65 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !63} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!66 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !63} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!67 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !63} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!68 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !63} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!69 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !63} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!70 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !63} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!71 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !63} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!72 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !63} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!73 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !63} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!74 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !63} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!75 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !76} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!77 = metadata !{i32 786451, metadata !59, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !78, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!78 = metadata !{metadata !79, metadata !80, metadata !82}
!79 = metadata !{i32 786445, metadata !59, metadata !77, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!80 = metadata !{i32 786445, metadata !59, metadata !77, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!82 = metadata !{i32 786445, metadata !59, metadata !77, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!83 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !81} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!84 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !47} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!85 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !47} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!86 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !87} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!87 = metadata !{i32 786454, metadata !59, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!88 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!89 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !90} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!90 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!91 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !92} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!92 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!93 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !94} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!94 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !64, metadata !95, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!97 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !98} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!99 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !100} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!100 = metadata !{i32 786454, metadata !59, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!101 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !98} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!102 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !98} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!103 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !98} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!104 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !98} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!105 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !106} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!106 = metadata !{i32 786454, metadata !59, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!107 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!108 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !47} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!109 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !110} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!110 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !64, metadata !111, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!111 = metadata !{metadata !112}
!112 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!114 = metadata !{i32 786454, metadata !1, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!115 = metadata !{i32 786451, metadata !116, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !117, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!116 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!117 = metadata !{metadata !118, metadata !119, metadata !140, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !164, metadata !172}
!118 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!119 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !120} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!121 = metadata !{i32 786454, metadata !116, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!122 = metadata !{i32 786451, metadata !116, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !123, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!123 = metadata !{metadata !124, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !139}
!124 = metadata !{i32 786445, metadata !116, metadata !122, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !125} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!125 = metadata !{i32 786454, metadata !116, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!126 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!127 = metadata !{i32 786445, metadata !116, metadata !122, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !125} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!128 = metadata !{i32 786445, metadata !116, metadata !122, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !125} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!129 = metadata !{i32 786445, metadata !116, metadata !122, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !125} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!130 = metadata !{i32 786445, metadata !116, metadata !122, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !90} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!131 = metadata !{i32 786445, metadata !116, metadata !122, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !90} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!132 = metadata !{i32 786445, metadata !116, metadata !122, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !47} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!133 = metadata !{i32 786445, metadata !116, metadata !122, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !47} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!134 = metadata !{i32 786445, metadata !116, metadata !122, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !135} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!135 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !136, metadata !137, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!136 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!137 = metadata !{metadata !138}
!138 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!139 = metadata !{i32 786445, metadata !116, metadata !122, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !136} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!140 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !141} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!143 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !141} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!144 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !141} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!145 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !47} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!146 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !141} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!147 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !47} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!148 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !141} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!149 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !150} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!150 = metadata !{i32 786454, metadata !116, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!151 = metadata !{i32 786451, metadata !152, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !153, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!152 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!153 = metadata !{metadata !154, metadata !158, metadata !159, metadata !162, metadata !163}
!154 = metadata !{i32 786445, metadata !152, metadata !151, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!155 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !47, metadata !156, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!156 = metadata !{metadata !157}
!157 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!158 = metadata !{i32 786445, metadata !152, metadata !151, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !47} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!159 = metadata !{i32 786445, metadata !152, metadata !151, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !160} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!160 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!161 = metadata !{i32 786454, metadata !152, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!162 = metadata !{i32 786445, metadata !152, metadata !151, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !47} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!163 = metadata !{i32 786445, metadata !152, metadata !151, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !160} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!164 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !165} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!165 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !166, metadata !137, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!166 = metadata !{i32 786454, metadata !116, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!167 = metadata !{i32 786451, metadata !116, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !168, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!168 = metadata !{metadata !169, metadata !170}
!169 = metadata !{i32 786445, metadata !116, metadata !167, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!170 = metadata !{i32 786445, metadata !116, metadata !167, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !171} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!171 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!172 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !173} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!173 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !174} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!174 = metadata !{i32 786454, metadata !116, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !175} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!175 = metadata !{i32 786451, metadata !116, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !176, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!176 = metadata !{metadata !177, metadata !178, metadata !179, metadata !180, metadata !184, metadata !185, metadata !186, metadata !187}
!177 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!178 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !47} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!179 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !64} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!180 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !181} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!181 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !64, metadata !182, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!182 = metadata !{metadata !183}
!183 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!184 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !125} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!185 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !125} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!186 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !47} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!187 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !188} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!188 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !47, metadata !182, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!189 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !190} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!190 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !191} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!191 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !125, metadata !192, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!192 = metadata !{metadata !193}
!193 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!194 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !191} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!195 = metadata !{metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221}
!196 = metadata !{i32 786689, metadata !53, metadata !"out", metadata !44, i32 16777300, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 84]
!197 = metadata !{i32 786689, metadata !53, metadata !"title", metadata !44, i32 33554516, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 84]
!198 = metadata !{i32 786689, metadata !53, metadata !"atoms", metadata !44, i32 50331733, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 85]
!199 = metadata !{i32 786689, metadata !53, metadata !"x", metadata !44, i32 67108949, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 85]
!200 = metadata !{i32 786689, metadata !53, metadata !"box", metadata !44, i32 83886165, metadata !194, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 85]
!201 = metadata !{i32 786689, metadata !53, metadata !"chain", metadata !44, i32 100663381, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chain] [line 85]
!202 = metadata !{i32 786689, metadata !53, metadata !"model_nr", metadata !44, i32 117440598, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [model_nr] [line 86]
!203 = metadata !{i32 786689, metadata !53, metadata !"nindex", metadata !44, i32 134217814, metadata !161, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nindex] [line 86]
!204 = metadata !{i32 786689, metadata !53, metadata !"index", metadata !44, i32 150995030, metadata !160, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 86]
!205 = metadata !{i32 786688, metadata !53, metadata !"resnm", metadata !44, i32 88, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resnm] [line 88]
!206 = metadata !{i32 786688, metadata !53, metadata !"nm", metadata !44, i32 88, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nm] [line 88]
!207 = metadata !{i32 786688, metadata !53, metadata !"ch", metadata !44, i32 88, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 88]
!208 = metadata !{i32 786688, metadata !53, metadata !"pdbform", metadata !44, i32 88, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pdbform] [line 88]
!209 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !64, metadata !210, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!210 = metadata !{metadata !211}
!211 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!212 = metadata !{i32 786688, metadata !53, metadata !"i", metadata !44, i32 89, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 89]
!213 = metadata !{i32 786688, metadata !53, metadata !"ii", metadata !44, i32 89, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 89]
!214 = metadata !{i32 786688, metadata !53, metadata !"resnr", metadata !44, i32 90, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resnr] [line 90]
!215 = metadata !{i32 786688, metadata !53, metadata !"type", metadata !44, i32 90, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 90]
!216 = metadata !{i32 786688, metadata !53, metadata !"occup", metadata !44, i32 91, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [occup] [line 91]
!217 = metadata !{i32 786688, metadata !53, metadata !"bfac", metadata !44, i32 91, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bfac] [line 91]
!218 = metadata !{i32 786688, metadata !53, metadata !"alpha", metadata !44, i32 92, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alpha] [line 92]
!219 = metadata !{i32 786688, metadata !53, metadata !"beta", metadata !44, i32 92, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [beta] [line 92]
!220 = metadata !{i32 786688, metadata !53, metadata !"gamma", metadata !44, i32 92, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gamma] [line 92]
!221 = metadata !{i32 786688, metadata !53, metadata !"bOccup", metadata !44, i32 93, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOccup] [line 93]
!222 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"write_pdbfile", metadata !"write_pdbfile", metadata !"", i32 186, metadata !223, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8, i32)* @write_pdbfile, null, null, metadata !225, i32 188} ; [ DW_TAG_subprogram ] [line 186] [def] [scope 188] [write_pdbfile]
!223 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !224, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!224 = metadata !{null, metadata !56, metadata !63, metadata !113, metadata !189, metadata !194, metadata !64, metadata !47}
!225 = metadata !{metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234}
!226 = metadata !{i32 786689, metadata !222, metadata !"out", metadata !44, i32 16777402, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 186]
!227 = metadata !{i32 786689, metadata !222, metadata !"title", metadata !44, i32 33554618, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 186]
!228 = metadata !{i32 786689, metadata !222, metadata !"atoms", metadata !44, i32 50331834, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 186]
!229 = metadata !{i32 786689, metadata !222, metadata !"x", metadata !44, i32 67109050, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 186]
!230 = metadata !{i32 786689, metadata !222, metadata !"box", metadata !44, i32 83886267, metadata !194, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 187]
!231 = metadata !{i32 786689, metadata !222, metadata !"chain", metadata !44, i32 100663483, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chain] [line 187]
!232 = metadata !{i32 786689, metadata !222, metadata !"model_nr", metadata !44, i32 117440699, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [model_nr] [line 187]
!233 = metadata !{i32 786688, metadata !222, metadata !"i", metadata !44, i32 189, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 189]
!234 = metadata !{i32 786688, metadata !222, metadata !"index", metadata !44, i32 189, metadata !160, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 189]
!235 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"line2type", metadata !"line2type", metadata !"", i32 198, metadata !236, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @line2type, null, null, metadata !238, i32 199} ; [ DW_TAG_subprogram ] [line 198] [def] [scope 199] [line2type]
!236 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!237 = metadata !{metadata !47, metadata !63}
!238 = metadata !{metadata !239, metadata !240, metadata !241}
!239 = metadata !{i32 786689, metadata !235, metadata !"line", metadata !44, i32 16777414, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 198]
!240 = metadata !{i32 786688, metadata !235, metadata !"k", metadata !44, i32 200, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 200]
!241 = metadata !{i32 786688, metadata !235, metadata !"type", metadata !44, i32 201, metadata !242, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 201]
!242 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !64, metadata !243, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from char]
!243 = metadata !{metadata !244}
!244 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!245 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"is_hydrogen", metadata !"is_hydrogen", metadata !"", i32 357, metadata !236, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @is_hydrogen, null, null, metadata !246, i32 358} ; [ DW_TAG_subprogram ] [line 357] [def] [scope 358] [is_hydrogen]
!246 = metadata !{metadata !247, metadata !248}
!247 = metadata !{i32 786689, metadata !245, metadata !"nm", metadata !44, i32 16777573, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nm] [line 357]
!248 = metadata !{i32 786688, metadata !245, metadata !"buf", metadata !44, i32 359, metadata !249, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 359]
!249 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 240, i64 8, i32 0, i32 0, metadata !64, metadata !250, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 240, align 8, offset 0] [from char]
!250 = metadata !{metadata !251}
!251 = metadata !{i32 786465, i64 0, i64 30}      ; [ DW_TAG_subrange_type ] [0, 29]
!252 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"is_dummymass", metadata !"is_dummymass", metadata !"", i32 371, metadata !236, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @is_dummymass, null, null, metadata !253, i32 372} ; [ DW_TAG_subprogram ] [line 371] [def] [scope 372] [is_dummymass]
!253 = metadata !{metadata !254, metadata !255}
!254 = metadata !{i32 786689, metadata !252, metadata !"nm", metadata !44, i32 16777587, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nm] [line 371]
!255 = metadata !{i32 786688, metadata !252, metadata !"buf", metadata !44, i32 373, metadata !249, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 373]
!256 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"read_pdbfile", metadata !"read_pdbfile", metadata !"", i32 384, metadata !257, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i8*, i32*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i32)* @read_pdbfile, null, null, metadata !259, i32 386} ; [ DW_TAG_subprogram ] [line 384] [def] [scope 386] [read_pdbfile]
!257 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!258 = metadata !{metadata !47, metadata !56, metadata !63, metadata !171, metadata !113, metadata !189, metadata !194, metadata !47}
!259 = metadata !{metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !272, metadata !276, metadata !277, metadata !278, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289}
!260 = metadata !{i32 786689, metadata !256, metadata !"in", metadata !44, i32 16777600, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 384]
!261 = metadata !{i32 786689, metadata !256, metadata !"title", metadata !44, i32 33554816, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 384]
!262 = metadata !{i32 786689, metadata !256, metadata !"model_nr", metadata !44, i32 50332032, metadata !171, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [model_nr] [line 384]
!263 = metadata !{i32 786689, metadata !256, metadata !"atoms", metadata !44, i32 67109249, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 385]
!264 = metadata !{i32 786689, metadata !256, metadata !"x", metadata !44, i32 83886465, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 385]
!265 = metadata !{i32 786689, metadata !256, metadata !"box", metadata !44, i32 100663681, metadata !194, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 385]
!266 = metadata !{i32 786689, metadata !256, metadata !"bChange", metadata !44, i32 117440897, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bChange] [line 385]
!267 = metadata !{i32 786688, metadata !256, metadata !"bCOMPND", metadata !44, i32 389, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bCOMPND] [line 389]
!268 = metadata !{i32 786688, metadata !256, metadata !"line", metadata !44, i32 390, metadata !269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 390]
!269 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32776, i64 8, i32 0, i32 0, metadata !64, metadata !270, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32776, align 8, offset 0] [from char]
!270 = metadata !{metadata !271}
!271 = metadata !{i32 786465, i64 0, i64 4097}    ; [ DW_TAG_subrange_type ] [0, 4096]
!272 = metadata !{i32 786688, metadata !256, metadata !"sa", metadata !44, i32 391, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sa] [line 391]
!273 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 8, i32 0, i32 0, metadata !64, metadata !274, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from char]
!274 = metadata !{metadata !275}
!275 = metadata !{i32 786465, i64 0, i64 12}      ; [ DW_TAG_subrange_type ] [0, 11]
!276 = metadata !{i32 786688, metadata !256, metadata !"sb", metadata !44, i32 391, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sb] [line 391]
!277 = metadata !{i32 786688, metadata !256, metadata !"sc", metadata !44, i32 391, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 391]
!278 = metadata !{i32 786688, metadata !256, metadata !"fa", metadata !44, i32 392, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fa] [line 392]
!279 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!280 = metadata !{i32 786688, metadata !256, metadata !"fb", metadata !44, i32 392, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fb] [line 392]
!281 = metadata !{i32 786688, metadata !256, metadata !"fc", metadata !44, i32 392, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fc] [line 392]
!282 = metadata !{i32 786688, metadata !256, metadata !"alpha", metadata !44, i32 392, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alpha] [line 392]
!283 = metadata !{i32 786688, metadata !256, metadata !"beta", metadata !44, i32 392, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [beta] [line 392]
!284 = metadata !{i32 786688, metadata !256, metadata !"gamma", metadata !44, i32 392, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gamma] [line 392]
!285 = metadata !{i32 786688, metadata !256, metadata !"line_type", metadata !44, i32 393, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line_type] [line 393]
!286 = metadata !{i32 786688, metadata !256, metadata !"c", metadata !44, i32 394, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 394]
!287 = metadata !{i32 786688, metadata !256, metadata !"d", metadata !44, i32 394, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 394]
!288 = metadata !{i32 786688, metadata !256, metadata !"natom", metadata !44, i32 395, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [natom] [line 395]
!289 = metadata !{i32 786688, metadata !256, metadata !"bStop", metadata !44, i32 396, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bStop] [line 396]
!290 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"get_pdb_coordnum", metadata !"get_pdb_coordnum", metadata !"", i32 508, metadata !291, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32*)* @get_pdb_coordnum, null, null, metadata !293, i32 509} ; [ DW_TAG_subprogram ] [line 508] [def] [scope 509] [get_pdb_coordnum]
!291 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!292 = metadata !{null, metadata !56, metadata !171}
!293 = metadata !{metadata !294, metadata !295, metadata !296}
!294 = metadata !{i32 786689, metadata !290, metadata !"in", metadata !44, i32 16777724, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 508]
!295 = metadata !{i32 786689, metadata !290, metadata !"natoms", metadata !44, i32 33554940, metadata !171, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 508]
!296 = metadata !{i32 786688, metadata !290, metadata !"line", metadata !44, i32 510, metadata !297, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 510]
!297 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !64, metadata !298, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!298 = metadata !{metadata !299}
!299 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!300 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"read_pdb_conf", metadata !"read_pdb_conf", metadata !"", i32 522, metadata !301, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i32)* @read_pdb_conf, null, null, metadata !303, i32 524} ; [ DW_TAG_subprogram ] [line 522] [def] [scope 524] [read_pdb_conf]
!301 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!302 = metadata !{null, metadata !63, metadata !63, metadata !113, metadata !189, metadata !194, metadata !47}
!303 = metadata !{metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310}
!304 = metadata !{i32 786689, metadata !300, metadata !"infile", metadata !44, i32 16777738, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [infile] [line 522]
!305 = metadata !{i32 786689, metadata !300, metadata !"title", metadata !44, i32 33554954, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 522]
!306 = metadata !{i32 786689, metadata !300, metadata !"atoms", metadata !44, i32 50332171, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 523]
!307 = metadata !{i32 786689, metadata !300, metadata !"x", metadata !44, i32 67109387, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 523]
!308 = metadata !{i32 786689, metadata !300, metadata !"box", metadata !44, i32 83886603, metadata !194, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 523]
!309 = metadata !{i32 786689, metadata !300, metadata !"bChange", metadata !44, i32 100663819, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bChange] [line 523]
!310 = metadata !{i32 786688, metadata !300, metadata !"in", metadata !44, i32 525, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 525]
!311 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"read_anisou", metadata !"read_anisou", metadata !"", i32 214, metadata !312, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !314, i32 215} ; [ DW_TAG_subprogram ] [line 214] [local] [def] [scope 215] [read_anisou]
!312 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!313 = metadata !{null, metadata !63, metadata !47, metadata !113}
!314 = metadata !{metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324}
!315 = metadata !{i32 786689, metadata !311, metadata !"line", metadata !44, i32 16777430, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 214]
!316 = metadata !{i32 786689, metadata !311, metadata !"natom", metadata !44, i32 33554646, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natom] [line 214]
!317 = metadata !{i32 786689, metadata !311, metadata !"atoms", metadata !44, i32 50331862, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 214]
!318 = metadata !{i32 786688, metadata !311, metadata !"i", metadata !44, i32 216, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 216]
!319 = metadata !{i32 786688, metadata !311, metadata !"j", metadata !44, i32 216, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 216]
!320 = metadata !{i32 786688, metadata !311, metadata !"k", metadata !44, i32 216, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 216]
!321 = metadata !{i32 786688, metadata !311, metadata !"atomnr", metadata !44, i32 216, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atomnr] [line 216]
!322 = metadata !{i32 786688, metadata !311, metadata !"nc", metadata !44, i32 217, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nc] [line 217]
!323 = metadata !{i32 786688, metadata !311, metadata !"anr", metadata !44, i32 218, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [anr] [line 218]
!324 = metadata !{i32 786688, metadata !311, metadata !"anm", metadata !44, i32 218, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [anm] [line 218]
!325 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"read_atom", metadata !"read_atom", metadata !"", i32 256, metadata !326, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !343, i32 258} ; [ DW_TAG_subprogram ] [line 256] [local] [def] [scope 258] [read_atom]
!326 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !327, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!327 = metadata !{metadata !47, metadata !328, metadata !63, metadata !47, metadata !47, metadata !113, metadata !189, metadata !47}
!328 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !329} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symtab]
!329 = metadata !{i32 786454, metadata !1, null, metadata !"t_symtab", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !330} ; [ DW_TAG_typedef ] [t_symtab] [line 46, size 0, align 0, offset 0] [from ]
!330 = metadata !{i32 786451, metadata !331, null, metadata !"", i32 42, i64 128, i64 64, i32 0, i32 0, null, metadata !332, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 128, align 64, offset 0] [from ]
!331 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/symtab.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!332 = metadata !{metadata !333, metadata !334}
!333 = metadata !{i32 786445, metadata !331, metadata !330, metadata !"nr", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [nr] [line 44, size 32, align 32, offset 0] [from int]
!334 = metadata !{i32 786445, metadata !331, metadata !330, metadata !"symbuf", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !335} ; [ DW_TAG_member ] [symbuf] [line 45, size 64, align 64, offset 64] [from ]
!335 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !336} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_symbuf]
!336 = metadata !{i32 786454, metadata !331, null, metadata !"t_symbuf", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !337} ; [ DW_TAG_typedef ] [t_symbuf] [line 40, size 0, align 0, offset 0] [from symbuf]
!337 = metadata !{i32 786451, metadata !331, null, metadata !"symbuf", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !338, i32 0, null, null} ; [ DW_TAG_structure_type ] [symbuf] [line 36, size 192, align 64, offset 0] [from ]
!338 = metadata !{metadata !339, metadata !340, metadata !341}
!339 = metadata !{i32 786445, metadata !331, metadata !337, metadata !"bufsize", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [bufsize] [line 37, size 32, align 32, offset 0] [from int]
!340 = metadata !{i32 786445, metadata !331, metadata !337, metadata !"buf", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !142} ; [ DW_TAG_member ] [buf] [line 38, size 64, align 64, offset 64] [from ]
!341 = metadata !{i32 786445, metadata !331, metadata !337, metadata !"next", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !342} ; [ DW_TAG_member ] [next] [line 39, size 64, align 64, offset 128] [from ]
!342 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !337} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from symbuf]
!343 = metadata !{metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367}
!344 = metadata !{i32 786689, metadata !325, metadata !"symtab", metadata !44, i32 16777472, metadata !328, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symtab] [line 256]
!345 = metadata !{i32 786689, metadata !325, metadata !"line", metadata !44, i32 33554688, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 256]
!346 = metadata !{i32 786689, metadata !325, metadata !"type", metadata !44, i32 50331904, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 256]
!347 = metadata !{i32 786689, metadata !325, metadata !"natom", metadata !44, i32 67109120, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natom] [line 256]
!348 = metadata !{i32 786689, metadata !325, metadata !"atoms", metadata !44, i32 83886337, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 257]
!349 = metadata !{i32 786689, metadata !325, metadata !"x", metadata !44, i32 100663553, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 257]
!350 = metadata !{i32 786689, metadata !325, metadata !"bChange", metadata !44, i32 117440769, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bChange] [line 257]
!351 = metadata !{i32 786688, metadata !325, metadata !"atomn", metadata !44, i32 259, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atomn] [line 259]
!352 = metadata !{i32 786688, metadata !325, metadata !"j", metadata !44, i32 260, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 260]
!353 = metadata !{i32 786688, metadata !325, metadata !"k", metadata !44, i32 260, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 260]
!354 = metadata !{i32 786688, metadata !325, metadata !"nc", metadata !44, i32 261, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nc] [line 261]
!355 = metadata !{i32 786688, metadata !325, metadata !"anr", metadata !44, i32 262, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [anr] [line 262]
!356 = metadata !{i32 786688, metadata !325, metadata !"anm", metadata !44, i32 262, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [anm] [line 262]
!357 = metadata !{i32 786688, metadata !325, metadata !"altloc", metadata !44, i32 262, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [altloc] [line 262]
!358 = metadata !{i32 786688, metadata !325, metadata !"resnm", metadata !44, i32 262, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resnm] [line 262]
!359 = metadata !{i32 786688, metadata !325, metadata !"chain", metadata !44, i32 262, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chain] [line 262]
!360 = metadata !{i32 786688, metadata !325, metadata !"resnr", metadata !44, i32 262, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resnr] [line 262]
!361 = metadata !{i32 786688, metadata !325, metadata !"xc", metadata !44, i32 263, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xc] [line 263]
!362 = metadata !{i32 786688, metadata !325, metadata !"yc", metadata !44, i32 263, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yc] [line 263]
!363 = metadata !{i32 786688, metadata !325, metadata !"zc", metadata !44, i32 263, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zc] [line 263]
!364 = metadata !{i32 786688, metadata !325, metadata !"occup", metadata !44, i32 263, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [occup] [line 263]
!365 = metadata !{i32 786688, metadata !325, metadata !"bfac", metadata !44, i32 263, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bfac] [line 263]
!366 = metadata !{i32 786688, metadata !325, metadata !"pdbresnr", metadata !44, i32 263, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pdbresnr] [line 263]
!367 = metadata !{i32 786688, metadata !325, metadata !"newres", metadata !44, i32 265, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newres] [line 265]
!368 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"gromacs_name", metadata !"gromacs_name", metadata !"", i32 68, metadata !369, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !371, i32 69} ; [ DW_TAG_subprogram ] [line 68] [local] [def] [scope 69] [gromacs_name]
!369 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !370, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!370 = metadata !{null, metadata !63}
!371 = metadata !{metadata !372, metadata !373, metadata !374, metadata !375}
!372 = metadata !{i32 786689, metadata !368, metadata !"name", metadata !44, i32 16777284, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 68]
!373 = metadata !{i32 786688, metadata !368, metadata !"i", metadata !44, i32 70, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 70]
!374 = metadata !{i32 786688, metadata !368, metadata !"length", metadata !44, i32 70, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 70]
!375 = metadata !{i32 786688, metadata !368, metadata !"temp", metadata !44, i32 71, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 71]
!376 = metadata !{i32 786478, metadata !377, metadata !378, metadata !"clear_mat", metadata !"clear_mat", metadata !"", i32 334, metadata !379, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !381, i32 335} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [scope 335] [clear_mat]
!377 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!378 = metadata !{i32 786473, metadata !377}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!379 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !380, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!380 = metadata !{null, metadata !194}
!381 = metadata !{metadata !382, metadata !383}
!382 = metadata !{i32 786689, metadata !376, metadata !"a", metadata !378, i32 16777550, metadata !194, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 334]
!383 = metadata !{i32 786688, metadata !384, metadata !"nul", metadata !378, i32 336, metadata !385, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!384 = metadata !{i32 786443, metadata !377, metadata !376} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!385 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!386 = metadata !{i32 786478, metadata !377, metadata !378, metadata !"norm", metadata !"norm", metadata !"", i32 358, metadata !387, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !390, i32 359} ; [ DW_TAG_subprogram ] [line 358] [local] [def] [scope 359] [norm]
!387 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !388, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!388 = metadata !{metadata !125, metadata !389}
!389 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!390 = metadata !{metadata !391}
!391 = metadata !{i32 786689, metadata !386, metadata !"a", metadata !378, i32 16777574, metadata !389, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 358]
!392 = metadata !{i32 786478, metadata !377, metadata !378, metadata !"cos_angle_no_table", metadata !"cos_angle_no_table", metadata !"", i32 392, metadata !393, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float*, float*)* @cos_angle_no_table, null, null, metadata !395, i32 393} ; [ DW_TAG_subprogram ] [line 392] [local] [def] [scope 393] [cos_angle_no_table]
!393 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !394, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!394 = metadata !{metadata !125, metadata !389, metadata !389}
!395 = metadata !{metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404}
!396 = metadata !{i32 786689, metadata !392, metadata !"a", metadata !378, i32 16777608, metadata !389, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 392]
!397 = metadata !{i32 786689, metadata !392, metadata !"b", metadata !378, i32 33554824, metadata !389, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 392]
!398 = metadata !{i32 786688, metadata !392, metadata !"cos", metadata !378, i32 395, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cos] [line 395]
!399 = metadata !{i32 786688, metadata !392, metadata !"m", metadata !378, i32 396, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 396]
!400 = metadata !{i32 786688, metadata !392, metadata !"aa", metadata !378, i32 397, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aa] [line 397]
!401 = metadata !{i32 786688, metadata !392, metadata !"bb", metadata !378, i32 397, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bb] [line 397]
!402 = metadata !{i32 786688, metadata !392, metadata !"ip", metadata !378, i32 397, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 397]
!403 = metadata !{i32 786688, metadata !392, metadata !"ipa", metadata !378, i32 397, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipa] [line 397]
!404 = metadata !{i32 786688, metadata !392, metadata !"ipb", metadata !378, i32 397, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipb] [line 397]
!405 = metadata !{i32 786478, metadata !377, metadata !378, metadata !"norm2", metadata !"norm2", metadata !"", i32 353, metadata !387, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !406, i32 354} ; [ DW_TAG_subprogram ] [line 353] [local] [def] [scope 354] [norm2]
!406 = metadata !{metadata !407}
!407 = metadata !{i32 786689, metadata !405, metadata !"a", metadata !378, i32 16777569, metadata !389, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 353]
!408 = metadata !{metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !413, metadata !413, metadata !414, metadata !418, metadata !420, metadata !421, metadata !422}
!409 = metadata !{i32 786484, i32 0, metadata !256, metadata !"symtab", metadata !"symtab", metadata !"", metadata !44, i32 387, metadata !329, i32 1, i32 1, %struct.t_symtab* @read_pdbfile.symtab, null} ; [ DW_TAG_variable ] [symtab] [line 387] [local] [def]
!410 = metadata !{i32 786484, i32 0, metadata !256, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !44, i32 388, metadata !47, i32 1, i32 1, null, null}
!411 = metadata !{i32 786484, i32 0, metadata !325, metadata !"oldresnm", metadata !"oldresnm", metadata !"", metadata !44, i32 264, metadata !273, i32 1, i32 1, [12 x i8]* @read_atom.oldresnm, null} ; [ DW_TAG_variable ] [oldresnm] [line 264] [local] [def]
!412 = metadata !{i32 786484, i32 0, metadata !325, metadata !"oldresnr", metadata !"oldresnr", metadata !"", metadata !44, i32 264, metadata !273, i32 1, i32 1, [12 x i8]* @read_atom.oldresnr, null} ; [ DW_TAG_variable ] [oldresnr] [line 264] [local] [def]
!413 = metadata !{i32 786484, i32 0, metadata !378, metadata !"nul", metadata !"nul", metadata !"nul", metadata !378, i32 336, metadata !385, i32 1, i32 1, float 0.000000e+00, null} ; [ DW_TAG_variable ] [nul] [line 336] [local] [def]
!414 = metadata !{i32 786484, i32 0, null, metadata !"pdbtp", metadata !"pdbtp", metadata !"", metadata !44, i32 49, metadata !415, i32 1, i32 1, [11 x i8*]* @pdbtp, null} ; [ DW_TAG_variable ] [pdbtp] [line 49] [local] [def]
!415 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 704, i64 64, i32 0, i32 0, metadata !63, metadata !416, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 704, align 64, offset 0] [from ]
!416 = metadata !{metadata !417}
!417 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!418 = metadata !{i32 786484, i32 0, null, metadata !"pdbformat4", metadata !"pdbformat4", metadata !"", metadata !419, i32 47, metadata !63, i32 1, i32 1, null, null}
!419 = metadata !{i32 786473, metadata !4}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.h]
!420 = metadata !{i32 786484, i32 0, null, metadata !"pdbformat", metadata !"pdbformat", metadata !"", metadata !419, i32 46, metadata !63, i32 1, i32 1, null, null}
!421 = metadata !{i32 786484, i32 0, null, metadata !"bTER", metadata !"bTER", metadata !"", metadata !44, i32 54, metadata !47, i32 1, i32 1, i32* @bTER, null} ; [ DW_TAG_variable ] [bTER] [line 54] [local] [def]
!422 = metadata !{i32 786484, i32 0, null, metadata !"bWideFormat", metadata !"bWideFormat", metadata !"", metadata !44, i32 55, metadata !47, i32 1, i32 1, i32* @bWideFormat, null} ; [ DW_TAG_variable ] [bWideFormat] [line 55] [local] [def]
!423 = metadata !{i32 58, i32 0, metadata !43, null} ; [ DW_TAG_imported_module ]
!424 = metadata !{i32 60, i32 0, metadata !43, null}
!425 = metadata !{metadata !"int", metadata !426}
!426 = metadata !{metadata !"omnipotent char", metadata !427}
!427 = metadata !{metadata !"Simple C/C++ TBAA"}
!428 = metadata !{i32 61, i32 0, metadata !43, null}
!429 = metadata !{i32 63, i32 0, metadata !50, null}
!430 = metadata !{i32 65, i32 0, metadata !50, null}
!431 = metadata !{i32 66, i32 0, metadata !50, null}
!432 = metadata !{i32 84, i32 0, metadata !53, null}
!433 = metadata !{i32 85, i32 0, metadata !53, null}
!434 = metadata !{i32 86, i32 0, metadata !53, null}
!435 = metadata !{i32 88, i32 0, metadata !53, null}
!436 = metadata !{i32 95, i32 0, metadata !53, null}
!437 = metadata !{i32 96, i32 0, metadata !53, null}
!438 = metadata !{i32 97, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !1, metadata !53, i32 96, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!440 = metadata !{i32 98, i32 0, metadata !439, null}
!441 = metadata !{i32 99, i32 0, metadata !439, null}
!442 = metadata !{i32 100, i32 0, metadata !53, null}
!443 = metadata !{i32 786689, metadata !405, metadata !"a", metadata !378, i32 16777569, metadata !389, i32 0, metadata !442} ; [ DW_TAG_arg_variable ] [a] [line 353]
!444 = metadata !{i32 353, i32 0, metadata !405, metadata !442}
!445 = metadata !{i32 355, i32 0, metadata !405, metadata !442}
!446 = metadata !{metadata !"float", metadata !426}
!447 = metadata !{i32 355, i32 0, metadata !405, metadata !448}
!448 = metadata !{i32 103, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !53, i32 102, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!450 = metadata !{i32 786689, metadata !405, metadata !"a", metadata !378, i32 16777569, metadata !389, i32 0, metadata !451} ; [ DW_TAG_arg_variable ] [a] [line 353]
!451 = metadata !{i32 101, i32 0, metadata !53, null}
!452 = metadata !{i32 353, i32 0, metadata !405, metadata !451}
!453 = metadata !{i32 355, i32 0, metadata !405, metadata !451}
!454 = metadata !{i32 102, i32 0, metadata !53, null}
!455 = metadata !{i32 786689, metadata !405, metadata !"a", metadata !378, i32 16777569, metadata !389, i32 0, metadata !454} ; [ DW_TAG_arg_variable ] [a] [line 353]
!456 = metadata !{i32 353, i32 0, metadata !405, metadata !454}
!457 = metadata !{i32 355, i32 0, metadata !405, metadata !454}
!458 = metadata !{i32 786689, metadata !405, metadata !"a", metadata !378, i32 16777569, metadata !389, i32 0, metadata !448} ; [ DW_TAG_arg_variable ] [a] [line 353]
!459 = metadata !{i32 353, i32 0, metadata !405, metadata !448}
!460 = metadata !{i32 104, i32 0, metadata !449, null}
!461 = metadata !{i32 355, i32 0, metadata !405, metadata !462}
!462 = metadata !{i32 107, i32 0, metadata !449, null}
!463 = metadata !{i32 786689, metadata !405, metadata !"a", metadata !378, i32 16777569, metadata !389, i32 0, metadata !462} ; [ DW_TAG_arg_variable ] [a] [line 353]
!464 = metadata !{i32 353, i32 0, metadata !405, metadata !462}
!465 = metadata !{i32 108, i32 0, metadata !449, null}
!466 = metadata !{i32 355, i32 0, metadata !405, metadata !467}
!467 = metadata !{i32 111, i32 0, metadata !449, null}
!468 = metadata !{i32 786689, metadata !405, metadata !"a", metadata !378, i32 16777569, metadata !389, i32 0, metadata !467} ; [ DW_TAG_arg_variable ] [a] [line 353]
!469 = metadata !{i32 353, i32 0, metadata !405, metadata !467}
!470 = metadata !{i32 112, i32 0, metadata !449, null}
!471 = metadata !{i32 115, i32 0, metadata !449, null}
!472 = metadata !{i32 786689, metadata !386, metadata !"a", metadata !378, i32 16777574, metadata !389, i32 0, metadata !473} ; [ DW_TAG_arg_variable ] [a] [line 358]
!473 = metadata !{i32 117, i32 0, metadata !449, null}
!474 = metadata !{i32 358, i32 0, metadata !386, metadata !473}
!475 = metadata !{i32 360, i32 0, metadata !386, metadata !473}
!476 = metadata !{i32 119, i32 0, metadata !449, null}
!477 = metadata !{i32 120, i32 0, metadata !53, null}
!478 = metadata !{metadata !"any pointer", metadata !426}
!479 = metadata !{i32 125, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !481, i32 125, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!481 = metadata !{i32 786443, metadata !1, metadata !53, i32 120, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!482 = metadata !{i32 126, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !480, i32 125, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!484 = metadata !{i32 127, i32 0, metadata !483, null}
!485 = metadata !{i32 93, i32 0, metadata !53, null}
!486 = metadata !{i32 133, i32 0, metadata !53, null}
!487 = metadata !{i32 134, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !53, i32 133, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!489 = metadata !{i32 135, i32 0, metadata !488, null}
!490 = metadata !{i32 136, i32 0, metadata !488, null}
!491 = metadata !{i32 137, i32 0, metadata !488, null}
!492 = metadata !{i32 139, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !1, metadata !53, i32 139, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!494 = metadata !{i32 141, i32 0, metadata !495, null}
!495 = metadata !{i32 786443, metadata !1, metadata !493, i32 139, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!496 = metadata !{i32 142, i32 0, metadata !495, null}
!497 = metadata !{i32 143, i32 0, metadata !495, null}
!498 = metadata !{i32 147, i32 0, metadata !495, null}
!499 = metadata !{i32 156, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !495, i32 154, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!501 = metadata !{i32 140, i32 0, metadata !495, null}
!502 = metadata !{i32 144, i32 0, metadata !495, null}
!503 = metadata !{i32 145, i32 0, metadata !495, null}
!504 = metadata !{i32 146, i32 0, metadata !495, null}
!505 = metadata !{i32 150, i32 0, metadata !495, null}
!506 = metadata !{i32 154, i32 0, metadata !495, null}
!507 = metadata !{i32 155, i32 0, metadata !500, null}
!508 = metadata !{i32 157, i32 0, metadata !500, null}
!509 = metadata !{i32 158, i32 0, metadata !500, null}
!510 = metadata !{i32 164, i32 0, metadata !495, null}
!511 = metadata !{i32 165, i32 0, metadata !495, null}
!512 = metadata !{i32 167, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !495, i32 166, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!514 = metadata !{i32 168, i32 0, metadata !513, null}
!515 = metadata !{i32 169, i32 0, metadata !513, null}
!516 = metadata !{i32 172, i32 0, metadata !495, null}
!517 = metadata !{i32 175, i32 0, metadata !495, null}
!518 = metadata !{i32 173, i32 0, metadata !495, null}
!519 = metadata !{i32 177, i32 0, metadata !495, null}
!520 = metadata !{i32 181, i32 0, metadata !53, null}
!521 = metadata !{i32 182, i32 0, metadata !53, null}
!522 = metadata !{i32 183, i32 0, metadata !53, null}
!523 = metadata !{i32 184, i32 0, metadata !53, null}
!524 = metadata !{i32 392, i32 0, metadata !392, null}
!525 = metadata !{double 0.000000e+00}
!526 = metadata !{i32 399, i32 0, metadata !392, null}
!527 = metadata !{i32 400, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !377, metadata !392, i32 400, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!529 = metadata !{i32 401, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !377, metadata !528, i32 400, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!531 = metadata !{i32 402, i32 0, metadata !530, null}
!532 = metadata !{i32 403, i32 0, metadata !530, null}
!533 = metadata !{i32 404, i32 0, metadata !530, null}
!534 = metadata !{i32 405, i32 0, metadata !530, null}
!535 = metadata !{i32 407, i32 0, metadata !392, null}
!536 = metadata !{i32 409, i32 0, metadata !392, null}
!537 = metadata !{i32 411, i32 0, metadata !392, null}
!538 = metadata !{i32 412, i32 0, metadata !392, null}
!539 = metadata !{i32 415, i32 0, metadata !392, null}
!540 = metadata !{i32 186, i32 0, metadata !222, null}
!541 = metadata !{i32 187, i32 0, metadata !222, null}
!542 = metadata !{i32 191, i32 0, metadata !222, null}
!543 = metadata !{i32 192, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !222, i32 192, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!545 = metadata !{i32 193, i32 0, metadata !544, null}
!546 = metadata !{i32 194, i32 0, metadata !222, null}
!547 = metadata !{i32 195, i32 0, metadata !222, null}
!548 = metadata !{i32 196, i32 0, metadata !222, null}
!549 = metadata !{i32 198, i32 0, metadata !235, null}
!550 = metadata !{i32 201, i32 0, metadata !235, null}
!551 = metadata !{i32 203, i32 0, metadata !552, null}
!552 = metadata !{i32 786443, metadata !1, metadata !235, i32 203, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!553 = metadata !{i32 204, i32 0, metadata !552, null}
!554 = metadata !{i32 205, i32 0, metadata !235, null}
!555 = metadata !{i32 207, i32 0, metadata !556, null}
!556 = metadata !{i32 786443, metadata !1, metadata !235, i32 207, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!557 = metadata !{i32 208, i32 0, metadata !556, null}
!558 = metadata !{i32 211, i32 0, metadata !235, null}
!559 = metadata !{i32 357, i32 0, metadata !245, null}
!560 = metadata !{i32 359, i32 0, metadata !245, null}
!561 = metadata !{i32 361, i32 0, metadata !245, null}
!562 = metadata !{i32 362, i32 0, metadata !245, null}
!563 = metadata !{i32 364, i32 0, metadata !245, null}
!564 = metadata !{i32 366, i32 0, metadata !245, null}
!565 = metadata !{metadata !"short", metadata !426}
!566 = metadata !{i32 368, i32 0, metadata !245, null}
!567 = metadata !{i32 371, i32 0, metadata !252, null}
!568 = metadata !{i32 373, i32 0, metadata !252, null}
!569 = metadata !{i32 375, i32 0, metadata !252, null}
!570 = metadata !{i32 376, i32 0, metadata !252, null}
!571 = metadata !{i32 378, i32 0, metadata !252, null}
!572 = metadata !{i32 381, i32 0, metadata !252, null}
!573 = metadata !{i32 384, i32 0, metadata !256, null}
!574 = metadata !{i32 385, i32 0, metadata !256, null}
!575 = metadata !{i32 390, i32 0, metadata !256, null}
!576 = metadata !{i32 391, i32 0, metadata !256, null}
!577 = metadata !{i32 392, i32 0, metadata !256, null}
!578 = metadata !{i32 396, i32 0, metadata !256, null}
!579 = metadata !{i32 398, i32 0, metadata !256, null}
!580 = metadata !{i32 786689, metadata !376, metadata !"a", metadata !378, i32 16777550, metadata !194, i32 0, metadata !581} ; [ DW_TAG_arg_variable ] [a] [line 334]
!581 = metadata !{i32 399, i32 0, metadata !256, null}
!582 = metadata !{i32 334, i32 0, metadata !376, metadata !581}
!583 = metadata !{float 0.000000e+00}
!584 = metadata !{i32 786688, metadata !384, metadata !"nul", metadata !378, i32 336, metadata !385, i32 0, metadata !581} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!585 = metadata !{i32 336, i32 0, metadata !384, metadata !581}
!586 = metadata !{i32 341, i32 0, metadata !384, metadata !581}
!587 = metadata !{i32 338, i32 0, metadata !384, metadata !581}
!588 = metadata !{i32 401, i32 0, metadata !256, null}
!589 = metadata !{i32 402, i32 0, metadata !590, null}
!590 = metadata !{i32 786443, metadata !1, metadata !256, i32 401, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!591 = metadata !{i32 404, i32 0, metadata !590, null}
!592 = metadata !{i32 406, i32 0, metadata !256, null}
!593 = metadata !{i32 407, i32 0, metadata !256, null}
!594 = metadata !{i32 408, i32 0, metadata !256, null}
!595 = metadata !{i32 267, i32 0, metadata !325, metadata !596}
!596 = metadata !{i32 415, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !1, metadata !598, i32 412, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!598 = metadata !{i32 786443, metadata !1, metadata !256, i32 409, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!599 = metadata !{i32 274, i32 0, metadata !325, metadata !596}
!600 = metadata !{i32 277, i32 0, metadata !601, metadata !596}
!601 = metadata !{i32 786443, metadata !1, metadata !325, i32 277, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!602 = metadata !{i32 278, i32 0, metadata !325, metadata !596}
!603 = metadata !{i32 280, i32 0, metadata !325, metadata !596}
!604 = metadata !{i32 283, i32 0, metadata !605, metadata !596}
!605 = metadata !{i32 786443, metadata !1, metadata !325, i32 282, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!606 = metadata !{i32 284, i32 0, metadata !325, metadata !596}
!607 = metadata !{i32 288, i32 0, metadata !608, metadata !596}
!608 = metadata !{i32 786443, metadata !1, metadata !325, i32 287, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!609 = metadata !{i32 292, i32 0, metadata !610, metadata !596}
!610 = metadata !{i32 786443, metadata !1, metadata !611, i32 291, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!611 = metadata !{i32 786443, metadata !1, metadata !325, i32 291, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!612 = metadata !{i32 293, i32 0, metadata !610, metadata !596}
!613 = metadata !{i32 295, i32 0, metadata !325, metadata !596}
!614 = metadata !{i32 297, i32 0, metadata !325, metadata !596}
!615 = metadata !{i32 298, i32 0, metadata !325, metadata !596}
!616 = metadata !{i32 303, i32 0, metadata !617, metadata !596}
!617 = metadata !{i32 786443, metadata !1, metadata !325, i32 303, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!618 = metadata !{i32 304, i32 0, metadata !325, metadata !596}
!619 = metadata !{i32 305, i32 0, metadata !620, metadata !596}
!620 = metadata !{i32 786443, metadata !1, metadata !325, i32 305, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!621 = metadata !{i32 306, i32 0, metadata !325, metadata !596}
!622 = metadata !{i32 307, i32 0, metadata !623, metadata !596}
!623 = metadata !{i32 786443, metadata !1, metadata !325, i32 307, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!624 = metadata !{i32 308, i32 0, metadata !325, metadata !596}
!625 = metadata !{i32 312, i32 0, metadata !325, metadata !596}
!626 = metadata !{i32 316, i32 0, metadata !325, metadata !596}
!627 = metadata !{i32 318, i32 0, metadata !325, metadata !596}
!628 = metadata !{i32 344, i32 0, metadata !325, metadata !596}
!629 = metadata !{i32 328, i32 0, metadata !630, metadata !596}
!630 = metadata !{i32 786443, metadata !1, metadata !631, i32 321, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!631 = metadata !{i32 786443, metadata !1, metadata !325, i32 318, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!632 = metadata !{i32 329, i32 0, metadata !630, metadata !596}
!633 = metadata !{i32 333, i32 0, metadata !631, metadata !596}
!634 = metadata !{i32 335, i32 0, metadata !631, metadata !596}
!635 = metadata !{i32 242, i32 0, metadata !636, metadata !637}
!636 = metadata !{i32 786443, metadata !1, metadata !311, i32 241, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!637 = metadata !{i32 420, i32 0, metadata !597, null}
!638 = metadata !{i32 425, i32 0, metadata !639, null}
!639 = metadata !{i32 786443, metadata !1, metadata !597, i32 424, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!640 = metadata !{i32 341, i32 0, metadata !384, metadata !641}
!641 = metadata !{i32 429, i32 0, metadata !639, null}
!642 = metadata !{i32 430, i32 0, metadata !639, null}
!643 = metadata !{i32 437, i32 0, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !639, i32 433, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!645 = metadata !{i32 438, i32 0, metadata !644, null}
!646 = metadata !{i32 439, i32 0, metadata !644, null}
!647 = metadata !{i32 440, i32 0, metadata !644, null}
!648 = metadata !{i32 441, i32 0, metadata !644, null}
!649 = metadata !{i32 494, i32 0, metadata !597, null}
!650 = metadata !{i32 409, i32 0, metadata !256, null}
!651 = metadata !{i32 410, i32 0, metadata !598, null}
!652 = metadata !{i32 412, i32 0, metadata !598, null}
!653 = metadata !{i32 490, i32 0, metadata !597, null}
!654 = metadata !{i32 1}
!655 = metadata !{i32 491, i32 0, metadata !597, null}
!656 = metadata !{%struct.t_symtab* @read_pdbfile.symtab}
!657 = metadata !{i32 786689, metadata !325, metadata !"symtab", metadata !44, i32 16777472, metadata !328, i32 0, metadata !596} ; [ DW_TAG_arg_variable ] [symtab] [line 256]
!658 = metadata !{i32 256, i32 0, metadata !325, metadata !596}
!659 = metadata !{i8 0}
!660 = metadata !{i32 786688, metadata !325, metadata !"nc", metadata !44, i32 261, metadata !64, i32 0, metadata !596} ; [ DW_TAG_auto_variable ] [nc] [line 261]
!661 = metadata !{i32 261, i32 0, metadata !325, metadata !596}
!662 = metadata !{i32 262, i32 0, metadata !325, metadata !596}
!663 = metadata !{[12 x i8]* undef}
!664 = metadata !{i32 263, i32 0, metadata !325, metadata !596}
!665 = metadata !{i32 268, i32 0, metadata !325, metadata !596}
!666 = metadata !{i32 273, i32 0, metadata !667, metadata !596}
!667 = metadata !{i32 786443, metadata !1, metadata !325, i32 273, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!668 = metadata !{i32 275, i32 0, metadata !325, metadata !596}
!669 = metadata !{i32 786688, metadata !325, metadata !"k", metadata !44, i32 260, metadata !47, i32 0, metadata !596} ; [ DW_TAG_auto_variable ] [k] [line 260]
!670 = metadata !{i32 279, i32 0, metadata !325, metadata !596}
!671 = metadata !{i32 786688, metadata !325, metadata !"altloc", metadata !44, i32 262, metadata !64, i32 0, metadata !596} ; [ DW_TAG_auto_variable ] [altloc] [line 262]
!672 = metadata !{i32 282, i32 0, metadata !605, metadata !596}
!673 = metadata !{i32 285, i32 0, metadata !325, metadata !596}
!674 = metadata !{i32 287, i32 0, metadata !608, metadata !596}
!675 = metadata !{i32 291, i32 0, metadata !611, metadata !596}
!676 = metadata !{i32 296, i32 0, metadata !325, metadata !596}
!677 = metadata !{i32 299, i32 0, metadata !325, metadata !596}
!678 = metadata !{i32 311, i32 0, metadata !679, metadata !596}
!679 = metadata !{i32 786443, metadata !1, metadata !325, i32 311, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!680 = metadata !{i32 315, i32 0, metadata !681, metadata !596}
!681 = metadata !{i32 786443, metadata !1, metadata !325, i32 315, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!682 = metadata !{i32 341, i32 0, metadata !325, metadata !596}
!683 = metadata !{i32 320, i32 0, metadata !631, metadata !596}
!684 = metadata !{i32 321, i32 0, metadata !631, metadata !596}
!685 = metadata !{i32 322, i32 0, metadata !630, metadata !596}
!686 = metadata !{i32 323, i32 0, metadata !630, metadata !596}
!687 = metadata !{i32 327, i32 0, metadata !630, metadata !596}
!688 = metadata !{i32 786688, metadata !325, metadata !"newres", metadata !44, i32 265, metadata !47, i32 0, metadata !596} ; [ DW_TAG_auto_variable ] [newres] [line 265]
!689 = metadata !{i32 330, i32 0, metadata !630, metadata !596}
!690 = metadata !{i32 332, i32 0, metadata !631, metadata !596}
!691 = metadata !{i32 786689, metadata !368, metadata !"name", metadata !44, i32 16777284, metadata !63, i32 0, metadata !692} ; [ DW_TAG_arg_variable ] [name] [line 68]
!692 = metadata !{i32 334, i32 0, metadata !631, metadata !596}
!693 = metadata !{i32 68, i32 0, metadata !368, metadata !692}
!694 = metadata !{i32 73, i32 0, metadata !368, metadata !692}
!695 = metadata !{i32 786688, metadata !368, metadata !"length", metadata !44, i32 70, metadata !47, i32 0, metadata !692} ; [ DW_TAG_auto_variable ] [length] [line 70]
!696 = metadata !{i32 74, i32 0, metadata !368, metadata !692}
!697 = metadata !{i32 76, i32 0, metadata !698, metadata !692}
!698 = metadata !{i32 786443, metadata !1, metadata !699, i32 76, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!699 = metadata !{i32 786443, metadata !1, metadata !368, i32 74, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!700 = metadata !{i32 77, i32 0, metadata !698, metadata !692}
!701 = metadata !{i32 78, i32 0, metadata !699, metadata !692}
!702 = metadata !{i32 79, i32 0, metadata !699, metadata !692}
!703 = metadata !{i32 80, i32 0, metadata !368, metadata !692}
!704 = metadata !{i32 81, i32 0, metadata !368, metadata !692}
!705 = metadata !{i32 336, i32 0, metadata !631, metadata !596}
!706 = metadata !{i32 337, i32 0, metadata !631, metadata !596}
!707 = metadata !{i32 338, i32 0, metadata !631, metadata !596}
!708 = metadata !{i32 339, i32 0, metadata !631, metadata !596}
!709 = metadata !{i32 340, i32 0, metadata !631, metadata !596}
!710 = metadata !{i32 342, i32 0, metadata !325, metadata !596}
!711 = metadata !{i32 343, i32 0, metadata !325, metadata !596}
!712 = metadata !{i32 345, i32 0, metadata !713, metadata !596}
!713 = metadata !{i32 786443, metadata !1, metadata !325, i32 344, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!714 = metadata !{i32 346, i32 0, metadata !713, metadata !596}
!715 = metadata !{i32 347, i32 0, metadata !713, metadata !596}
!716 = metadata !{i32 348, i32 0, metadata !713, metadata !596}
!717 = metadata !{i32 349, i32 0, metadata !713, metadata !596}
!718 = metadata !{i32 350, i32 0, metadata !713, metadata !596}
!719 = metadata !{i32 351, i32 0, metadata !713, metadata !596}
!720 = metadata !{i32 352, i32 0, metadata !325, metadata !596}
!721 = metadata !{i32 786689, metadata !325, metadata !"natom", metadata !44, i32 67109120, metadata !47, i32 0, metadata !596} ; [ DW_TAG_arg_variable ] [natom] [line 256]
!722 = metadata !{i32 354, i32 0, metadata !325, metadata !596}
!723 = metadata !{i32 416, i32 0, metadata !597, null}
!724 = metadata !{i32 419, i32 0, metadata !597, null}
!725 = metadata !{i32 786689, metadata !311, metadata !"line", metadata !44, i32 16777430, metadata !63, i32 0, metadata !637} ; [ DW_TAG_arg_variable ] [line] [line 214]
!726 = metadata !{i32 214, i32 0, metadata !311, metadata !637}
!727 = metadata !{i32 786689, metadata !311, metadata !"natom", metadata !44, i32 33554646, metadata !47, i32 0, metadata !637} ; [ DW_TAG_arg_variable ] [natom] [line 214]
!728 = metadata !{i32 786689, metadata !311, metadata !"atoms", metadata !44, i32 50331862, metadata !113, i32 0, metadata !637} ; [ DW_TAG_arg_variable ] [atoms] [line 214]
!729 = metadata !{i32 786688, metadata !311, metadata !"nc", metadata !44, i32 217, metadata !64, i32 0, metadata !637} ; [ DW_TAG_auto_variable ] [nc] [line 217]
!730 = metadata !{i32 217, i32 0, metadata !311, metadata !637}
!731 = metadata !{i32 218, i32 0, metadata !311, metadata !637}
!732 = metadata !{i32 6}
!733 = metadata !{i32 786688, metadata !311, metadata !"j", metadata !44, i32 216, metadata !47, i32 0, metadata !637} ; [ DW_TAG_auto_variable ] [j] [line 216]
!734 = metadata !{i32 221, i32 0, metadata !311, metadata !637}
!735 = metadata !{i32 786688, metadata !311, metadata !"k", metadata !44, i32 216, metadata !47, i32 0, metadata !637} ; [ DW_TAG_auto_variable ] [k] [line 216]
!736 = metadata !{i32 222, i32 0, metadata !737, metadata !637}
!737 = metadata !{i32 786443, metadata !1, metadata !311, i32 222, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!738 = metadata !{i32 223, i32 0, metadata !311, metadata !637}
!739 = metadata !{i32 225, i32 0, metadata !740, metadata !637}
!740 = metadata !{i32 786443, metadata !1, metadata !311, i32 225, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!741 = metadata !{i32 226, i32 0, metadata !311, metadata !637}
!742 = metadata !{i32 230, i32 0, metadata !311, metadata !637}
!743 = metadata !{i32 233, i32 0, metadata !311, metadata !637}
!744 = metadata !{i32 786688, metadata !311, metadata !"atomnr", metadata !44, i32 216, metadata !47, i32 0, metadata !637} ; [ DW_TAG_auto_variable ] [atomnr] [line 216]
!745 = metadata !{i32 234, i32 0, metadata !746, metadata !637}
!746 = metadata !{i32 786443, metadata !1, metadata !311, i32 234, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!747 = metadata !{i32 235, i32 0, metadata !746, metadata !637}
!748 = metadata !{i32 238, i32 0, metadata !311, metadata !637}
!749 = metadata !{i32 239, i32 0, metadata !311, metadata !637}
!750 = metadata !{i32 247, i32 0, metadata !751, metadata !637}
!751 = metadata !{i32 786443, metadata !1, metadata !636, i32 246, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!752 = metadata !{i32 248, i32 0, metadata !751, metadata !637}
!753 = metadata !{i32 250, i32 0, metadata !754, metadata !637}
!754 = metadata !{i32 786443, metadata !1, metadata !636, i32 249, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!755 = metadata !{i32 251, i32 0, metadata !754, metadata !637}
!756 = metadata !{i32 424, i32 0, metadata !597, null}
!757 = metadata !{i32 426, i32 0, metadata !639, null}
!758 = metadata !{i32 427, i32 0, metadata !639, null}
!759 = metadata !{i32 428, i32 0, metadata !639, null}
!760 = metadata !{i32 786689, metadata !376, metadata !"a", metadata !378, i32 16777550, metadata !194, i32 0, metadata !641} ; [ DW_TAG_arg_variable ] [a] [line 334]
!761 = metadata !{i32 334, i32 0, metadata !376, metadata !641}
!762 = metadata !{i32 786688, metadata !384, metadata !"nul", metadata !378, i32 336, metadata !385, i32 0, metadata !641} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!763 = metadata !{i32 336, i32 0, metadata !384, metadata !641}
!764 = metadata !{i32 338, i32 0, metadata !384, metadata !641}
!765 = metadata !{i32 431, i32 0, metadata !639, null}
!766 = metadata !{metadata !"double", metadata !426}
!767 = metadata !{i32 435, i32 0, metadata !644, null}
!768 = metadata !{i32 432, i32 0, metadata !639, null}
!769 = metadata !{i32 433, i32 0, metadata !639, null}
!770 = metadata !{i32 434, i32 0, metadata !644, null}
!771 = metadata !{i32 436, i32 0, metadata !644, null}
!772 = metadata !{i32 443, i32 0, metadata !644, null}
!773 = metadata !{i32 444, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !639, i32 443, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!775 = metadata !{i32 445, i32 0, metadata !774, null}
!776 = metadata !{i32 454, i32 0, metadata !597, null}
!777 = metadata !{i32 455, i32 0, metadata !597, null}
!778 = metadata !{i32 457, i32 0, metadata !597, null}
!779 = metadata !{i32 458, i32 0, metadata !597, null}
!780 = metadata !{i32 459, i32 0, metadata !781, null}
!781 = metadata !{i32 786443, metadata !1, metadata !597, i32 458, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!782 = metadata !{i32 461, i32 0, metadata !597, null}
!783 = metadata !{i32 460, i32 0, metadata !781, null}
!784 = metadata !{i32 462, i32 0, metadata !597, null}
!785 = metadata !{i32 466, i32 0, metadata !597, null}
!786 = metadata !{i32 467, i32 0, metadata !787, null}
!787 = metadata !{i32 786443, metadata !1, metadata !597, i32 466, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!788 = metadata !{i32 468, i32 0, metadata !787, null}
!789 = metadata !{i32 470, i32 0, metadata !787, null}
!790 = metadata !{i32 471, i32 0, metadata !787, null}
!791 = metadata !{i32 473, i32 0, metadata !787, null}
!792 = metadata !{i32 474, i32 0, metadata !787, null}
!793 = metadata !{i32 475, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !787, i32 474, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!795 = metadata !{i32 476, i32 0, metadata !794, null}
!796 = metadata !{i32 478, i32 0, metadata !787, null}
!797 = metadata !{i32 477, i32 0, metadata !794, null}
!798 = metadata !{i32 479, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !787, i32 478, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!800 = metadata !{i32 480, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !799, i32 479, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!802 = metadata !{i32 481, i32 0, metadata !801, null}
!803 = metadata !{i32 482, i32 0, metadata !801, null}
!804 = metadata !{i32 483, i32 0, metadata !799, null}
!805 = metadata !{i32 495, i32 0, metadata !597, null}
!806 = metadata !{i32 506, i32 0, metadata !256, null}
!807 = metadata !{i32 508, i32 0, metadata !290, null}
!808 = metadata !{i32 510, i32 0, metadata !290, null}
!809 = metadata !{i32 512, i32 0, metadata !290, null}
!810 = metadata !{i32 513, i32 0, metadata !290, null}
!811 = metadata !{i32 514, i32 0, metadata !812, null}
!812 = metadata !{i32 786443, metadata !1, metadata !290, i32 513, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/pdbio.c]
!813 = metadata !{i32 515, i32 0, metadata !812, null}
!814 = metadata !{i32 517, i32 0, metadata !812, null}
!815 = metadata !{i32 518, i32 0, metadata !812, null}
!816 = metadata !{i32 520, i32 0, metadata !290, null}
!817 = metadata !{i32 522, i32 0, metadata !300, null}
!818 = metadata !{i32 523, i32 0, metadata !300, null}
!819 = metadata !{i32 527, i32 0, metadata !300, null}
!820 = metadata !{i32 528, i32 0, metadata !300, null}
!821 = metadata !{i32 529, i32 0, metadata !300, null}
!822 = metadata !{i32 530, i32 0, metadata !300, null}
