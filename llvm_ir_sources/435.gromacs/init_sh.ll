; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_shell = type { i32, i32, i32, i32, i32, float, float }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }

@.str = private unnamed_addr constant [12 x i8] c"shell_index\00", align 1
@.str1 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c\00", align 1
@.str2 = private unnamed_addr constant [65 x i8] c"Your number of shells %d is not equal to the number of shells %d\00", align 1
@.str3 = private unnamed_addr constant [18 x i8] c"There are: %d %s\0A\00", align 1
@ptype_str = external global [6 x i8*]
@.str4 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str5 = private unnamed_addr constant [43 x i8] c"nsi is %d should be within 0 - %d. a1 = %d\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"What is this?\00", align 1
@.str7 = private unnamed_addr constant [48 x i8] c"Can not handle more than three bonds per shell\0A\00", align 1
@.str8 = private unnamed_addr constant [30 x i8] c"What is this? shell=%d, a1=%d\00", align 1
@.str9 = private unnamed_addr constant [65 x i8] c"Something weird with shells. They may not be bonded to something\00", align 1
@debug = external global %struct._IO_FILE*
@.str10 = private unnamed_addr constant [12 x i8] c"SHELL DATA\0A\00", align 1
@.str11 = private unnamed_addr constant [25 x i8] c"%5s  %8s  %5s  %5s  %5s\0A\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"Shell\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"Force k\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"Nucl1\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"Nucl2\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"Nucl3\00", align 1
@.str17 = private unnamed_addr constant [16 x i8] c"%5d  %8.3f  %5d\00", align 1
@.str18 = private unnamed_addr constant [7 x i8] c"  %5d\0A\00", align 1
@.str19 = private unnamed_addr constant [12 x i8] c"  %5d  %5d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_shell* @init_shells(%struct._IO_FILE* %log, i32 %start, i32 %homenr, %struct.t_idef* nocapture %idef, %struct.t_mdatoms* nocapture %md, i32* nocapture %nshell) #0 {
entry:
  %n = alloca [5 x i32], align 16
  %n498 = bitcast [5 x i32]* %n to i8*
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !311), !dbg !345
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !312), !dbg !345
  call void @llvm.dbg.value(metadata !{i32 %homenr}, i64 0, metadata !313), !dbg !345
  call void @llvm.dbg.value(metadata !{%struct.t_idef* %idef}, i64 0, metadata !314), !dbg !346
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !315), !dbg !346
  call void @llvm.dbg.value(metadata !{i32* %nshell}, i64 0, metadata !316), !dbg !346
  call void @llvm.dbg.value(metadata !347, i64 0, metadata !317), !dbg !348
  call void @llvm.dbg.declare(metadata !{[5 x i32]* %n}, metadata !319), !dbg !349
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !325), !dbg !350
  call void @llvm.memset.p0i8.i64(i8* %n498, i8 0, i64 20, i32 16, i1 false), !dbg !352
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 72, i32 %homenr, i32 4) #5, !dbg !353
  %0 = bitcast i8* %call to i32*, !dbg !353
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !318), !dbg !353
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !324), !dbg !354
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !325), !dbg !355
  %add = add nsw i32 %homenr, %start, !dbg !355
  %cmp2467 = icmp sgt i32 %homenr, 0, !dbg !355
  br i1 %cmp2467, label %for.body3.lr.ph, label %for.end19.thread, !dbg !355

for.end19.thread:                                 ; preds = %entry
  %arrayidx20.pre = getelementptr inbounds [5 x i32]* %n, i64 0, i64 2, !dbg !357
  br label %if.end25, !dbg !357

for.body3.lr.ph:                                  ; preds = %entry
  %ptype = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13, !dbg !358
  %1 = load i16** %ptype, align 8, !dbg !358, !tbaa !360
  %2 = sext i32 %start to i64
  br label %for.body3, !dbg !355

for.body3:                                        ; preds = %for.body3.lr.ph, %for.inc17
  %indvars.iv492 = phi i64 [ %2, %for.body3.lr.ph ], [ %indvars.iv.next493, %for.inc17 ]
  %nsi.0468 = phi i32 [ 0, %for.body3.lr.ph ], [ %nsi.1, %for.inc17 ]
  %arrayidx5 = getelementptr inbounds i16* %1, i64 %indvars.iv492, !dbg !358
  %3 = load i16* %arrayidx5, align 2, !dbg !358, !tbaa !363
  %idxprom6 = zext i16 %3 to i64, !dbg !358
  %arrayidx7 = getelementptr inbounds [5 x i32]* %n, i64 0, i64 %idxprom6, !dbg !358
  %4 = load i32* %arrayidx7, align 4, !dbg !358, !tbaa !364
  %inc8 = add nsw i32 %4, 1, !dbg !358
  store i32 %inc8, i32* %arrayidx7, align 4, !dbg !358, !tbaa !364
  %cmp12 = icmp eq i16 %3, 2, !dbg !365
  br i1 %cmp12, label %if.then, label %for.inc17, !dbg !365

if.then:                                          ; preds = %for.body3
  %inc14 = add nsw i32 %nsi.0468, 1, !dbg !366
  call void @llvm.dbg.value(metadata !{i32 %inc14}, i64 0, metadata !324), !dbg !366
  %5 = trunc i64 %indvars.iv492 to i32, !dbg !366
  %sub = sub nsw i32 %5, %start, !dbg !366
  %idxprom15 = sext i32 %sub to i64, !dbg !366
  %arrayidx16 = getelementptr inbounds i32* %0, i64 %idxprom15, !dbg !366
  store i32 %nsi.0468, i32* %arrayidx16, align 4, !dbg !366, !tbaa !364
  br label %for.inc17, !dbg !366

for.inc17:                                        ; preds = %for.body3, %if.then
  %nsi.1 = phi i32 [ %inc14, %if.then ], [ %nsi.0468, %for.body3 ]
  %indvars.iv.next493 = add i64 %indvars.iv492, 1, !dbg !355
  %6 = trunc i64 %indvars.iv.next493 to i32, !dbg !355
  %cmp2 = icmp slt i32 %6, %add, !dbg !355
  br i1 %cmp2, label %for.body3, label %for.end19, !dbg !355

for.end19:                                        ; preds = %for.inc17
  %arrayidx20.phi.trans.insert = getelementptr inbounds [5 x i32]* %n, i64 0, i64 2
  %.pre = load i32* %arrayidx20.phi.trans.insert, align 8, !dbg !357, !tbaa !364
  %cmp21 = icmp eq i32 %nsi.1, %.pre, !dbg !357
  br i1 %cmp21, label %if.end25, label %if.then23, !dbg !357

if.then23:                                        ; preds = %for.end19
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), i32 %nsi.1, i32 %.pre) #5, !dbg !367
  br label %if.end25, !dbg !367

if.end25:                                         ; preds = %for.end19.thread, %for.end19, %if.then23
  %arrayidx20.pre-phi502 = phi i32* [ %arrayidx20.pre, %for.end19.thread ], [ %arrayidx20.phi.trans.insert, %for.end19 ], [ %arrayidx20.phi.trans.insert, %if.then23 ]
  %tobool = icmp ne %struct._IO_FILE* %log, null, !dbg !368
  br i1 %tobool, label %for.body30, label %if.end45, !dbg !368

for.body30:                                       ; preds = %if.end25, %for.inc42
  %indvars.iv488 = phi i64 [ %indvars.iv.next489, %for.inc42 ], [ 0, %if.end25 ]
  %arrayidx32 = getelementptr inbounds [5 x i32]* %n, i64 0, i64 %indvars.iv488, !dbg !369
  %7 = load i32* %arrayidx32, align 4, !dbg !369, !tbaa !364
  %cmp33 = icmp eq i32 %7, 0, !dbg !369
  br i1 %cmp33, label %for.inc42, label %if.then35, !dbg !369

if.then35:                                        ; preds = %for.body30
  %arrayidx39 = getelementptr inbounds [6 x i8*]* @ptype_str, i64 0, i64 %indvars.iv488, !dbg !371
  %8 = load i8** %arrayidx39, align 8, !dbg !371, !tbaa !360
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0), i32 %7, i8* %8) #5, !dbg !371
  br label %for.inc42, !dbg !371

for.inc42:                                        ; preds = %for.body30, %if.then35
  %indvars.iv.next489 = add i64 %indvars.iv488, 1, !dbg !372
  %lftr.wideiv490 = trunc i64 %indvars.iv.next489 to i32, !dbg !372
  %exitcond491 = icmp eq i32 %lftr.wideiv490, 5, !dbg !372
  br i1 %exitcond491, label %if.end45, label %for.body30, !dbg !372

if.end45:                                         ; preds = %for.inc42, %if.end25
  %9 = load i32* %arrayidx20.pre-phi502, align 8, !dbg !373, !tbaa !364
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !323), !dbg !373
  store i32 %9, i32* %nshell, align 4, !dbg !374, !tbaa !364
  %cmp47 = icmp sgt i32 %9, 0, !dbg !375
  br i1 %cmp47, label %for.body54.lr.ph, label %if.end298, !dbg !375

for.body54.lr.ph:                                 ; preds = %if.end45
  %call50 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 90, i32 %9, i32 28) #5, !dbg !376
  %10 = bitcast i8* %call50 to %struct.t_shell*, !dbg !376
  call void @llvm.dbg.value(metadata !{%struct.t_shell* %10}, i64 0, metadata !317), !dbg !376
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !325), !dbg !378
  br label %for.body54, !dbg !378

for.body54:                                       ; preds = %for.body54, %for.body54.lr.ph
  %indvars.iv484 = phi i64 [ 0, %for.body54.lr.ph ], [ %indvars.iv.next485, %for.body54 ]
  %shell57 = getelementptr inbounds %struct.t_shell* %10, i64 %indvars.iv484, i32 1, !dbg !380
  %nnucl = getelementptr inbounds %struct.t_shell* %10, i64 %indvars.iv484, i32 0, !dbg !382
  %11 = bitcast i32* %shell57 to i8*, !dbg !382
  call void @llvm.memset.p0i8.i64(i8* %11, i8 -1, i64 16, i32 4, i1 false), !dbg !383
  store i32 0, i32* %nnucl, align 4, !dbg !382, !tbaa !364
  %k_1 = getelementptr inbounds %struct.t_shell* %10, i64 %indvars.iv484, i32 6, !dbg !384
  store float 0.000000e+00, float* %k_1, align 4, !dbg !384, !tbaa !385
  %k = getelementptr inbounds %struct.t_shell* %10, i64 %indvars.iv484, i32 5, !dbg !386
  store float 0.000000e+00, float* %k, align 4, !dbg !386, !tbaa !385
  %indvars.iv.next485 = add i64 %indvars.iv484, 1, !dbg !378
  %lftr.wideiv486 = trunc i64 %indvars.iv.next485 to i32, !dbg !378
  %exitcond487 = icmp eq i32 %lftr.wideiv486, %9, !dbg !378
  br i1 %exitcond487, label %for.end72, label %for.body54, !dbg !378

for.end72:                                        ; preds = %for.body54
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !323), !dbg !387
  call void @llvm.dbg.value(metadata !{i32* %13}, i64 0, metadata !336), !dbg !388
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !325), !dbg !389
  %nr = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 0, i32 0, !dbg !389
  %12 = load i32* %nr, align 4, !dbg !389, !tbaa !364
  %cmp77461474 = icmp sgt i32 %12, 0, !dbg !389
  br i1 %cmp77461474, label %for.body79.lr.ph.lr.ph, label %for.end190, !dbg !389

for.body79.lr.ph.lr.ph:                           ; preds = %for.end72
  %iatoms = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 0, i32 2, !dbg !388
  %13 = load i32** %iatoms, align 8, !dbg !388, !tbaa !360
  %functype = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3, !dbg !391
  %ptype87 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13, !dbg !393
  %iparams = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4, !dbg !394
  br label %for.body79.lr.ph, !dbg !389

for.body79.lr.ph:                                 ; preds = %if.end174.for.body79.lr.ph_crit_edge, %for.body79.lr.ph.lr.ph
  %14 = phi i32 [ %12, %for.body79.lr.ph.lr.ph ], [ %34, %if.end174.for.body79.lr.ph_crit_edge ]
  %ia.0.ph477 = phi i32* [ %13, %for.body79.lr.ph.lr.ph ], [ %add.ptr187, %if.end174.for.body79.lr.ph_crit_edge ]
  %i.4.ph476 = phi i32 [ 0, %for.body79.lr.ph.lr.ph ], [ %add189, %if.end174.for.body79.lr.ph_crit_edge ]
  %ns.0.ph475 = phi i32 [ 0, %for.body79.lr.ph.lr.ph ], [ %ns.1, %if.end174.for.body79.lr.ph_crit_edge ]
  %15 = load i32** %functype, align 8, !dbg !391, !tbaa !360
  %16 = load i16** %ptype87, align 8, !dbg !393, !tbaa !360
  br label %for.body79, !dbg !389

for.body79:                                       ; preds = %for.body79.lr.ph, %if.else105
  %ia.0463 = phi i32* [ %ia.0.ph477, %for.body79.lr.ph ], [ %add.ptr, %if.else105 ]
  %i.4462 = phi i32 [ %i.4.ph476, %for.body79.lr.ph ], [ %add107, %if.else105 ]
  %17 = load i32* %ia.0463, align 4, !dbg !395, !tbaa !364
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !327), !dbg !395
  %idxprom81 = sext i32 %17 to i64, !dbg !391
  %arrayidx82 = getelementptr inbounds i32* %15, i64 %idxprom81, !dbg !391
  %18 = load i32* %arrayidx82, align 4, !dbg !391, !tbaa !364
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !328), !dbg !391
  %idxprom83 = sext i32 %18 to i64, !dbg !396
  %nratoms = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom83, i32 2, !dbg !396
  %19 = load i32* %nratoms, align 8, !dbg !396, !tbaa !364
  call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !329), !dbg !396
  %arrayidx85 = getelementptr inbounds i32* %ia.0463, i64 1, !dbg !393
  %20 = load i32* %arrayidx85, align 4, !dbg !393, !tbaa !364
  %idxprom86 = sext i32 %20 to i64, !dbg !393
  %arrayidx88 = getelementptr inbounds i16* %16, i64 %idxprom86, !dbg !393
  %21 = load i16* %arrayidx88, align 2, !dbg !393, !tbaa !363
  %cmp90 = icmp eq i16 %21, 2, !dbg !393
  %arrayidx94 = getelementptr inbounds i32* %ia.0463, i64 2, !dbg !397
  %22 = load i32* %arrayidx94, align 4, !dbg !397, !tbaa !364
  br i1 %cmp90, label %if.end110, label %if.else, !dbg !393

if.else:                                          ; preds = %for.body79
  %idxprom96 = sext i32 %22 to i64, !dbg !399
  %arrayidx98 = getelementptr inbounds i16* %16, i64 %idxprom96, !dbg !399
  %23 = load i16* %arrayidx98, align 2, !dbg !399, !tbaa !363
  %cmp100 = icmp eq i16 %23, 2, !dbg !399
  br i1 %cmp100, label %if.end110, label %if.else105, !dbg !399

if.else105:                                       ; preds = %if.else
  %add106 = add nsw i32 %19, 1, !dbg !400
  %add107 = add nsw i32 %add106, %i.4462, !dbg !400
  call void @llvm.dbg.value(metadata !{i32 %add107}, i64 0, metadata !325), !dbg !400
  %idx.ext = sext i32 %add106 to i64, !dbg !402
  %add.ptr = getelementptr inbounds i32* %ia.0463, i64 %idx.ext, !dbg !402
  call void @llvm.dbg.value(metadata !{i32* %add.ptr}, i64 0, metadata !336), !dbg !402
  %cmp77 = icmp slt i32 %add107, %14, !dbg !389
  br i1 %cmp77, label %for.body79, label %for.end190, !dbg !389

if.end110:                                        ; preds = %if.else, %for.body79
  %a1.0 = phi i32 [ %20, %for.body79 ], [ %22, %if.else ]
  %a2.0 = phi i32 [ %22, %for.body79 ], [ %20, %if.else ]
  %sub111 = sub nsw i32 %a1.0, %start, !dbg !403
  %idxprom112 = sext i32 %sub111 to i64, !dbg !403
  %arrayidx113 = getelementptr inbounds i32* %0, i64 %idxprom112, !dbg !403
  %24 = load i32* %arrayidx113, align 4, !dbg !403, !tbaa !364
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !324), !dbg !403
  %cmp114 = icmp sgt i32 %24, -1, !dbg !404
  %.pre500 = load i32* %nshell, align 4, !dbg !405, !tbaa !364
  %cmp116 = icmp slt i32 %24, %.pre500, !dbg !404
  %or.cond = and i1 %cmp114, %cmp116, !dbg !404
  br i1 %or.cond, label %if.end119, label %if.then118, !dbg !404

if.then118:                                       ; preds = %if.end110
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), i32 %24, i32 %.pre500, i32 %a1.0) #5, !dbg !405
  br label %if.end119, !dbg !405

if.end119:                                        ; preds = %if.end110, %if.then118
  %idxprom120 = sext i32 %24 to i64, !dbg !406
  %shell122 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom120, i32 1, !dbg !406
  %25 = load i32* %shell122, align 4, !dbg !406, !tbaa !364
  %cmp123 = icmp eq i32 %25, -1, !dbg !406
  br i1 %cmp123, label %if.then125, label %if.else130, !dbg !406

if.then125:                                       ; preds = %if.end119
  store i32 %a1.0, i32* %shell122, align 4, !dbg !407, !tbaa !364
  %inc129 = add nsw i32 %ns.0.ph475, 1, !dbg !409
  call void @llvm.dbg.value(metadata !{i32 %inc129}, i64 0, metadata !323), !dbg !409
  br label %if.end138, !dbg !410

if.else130:                                       ; preds = %if.end119
  %cmp134 = icmp eq i32 %25, %a1.0, !dbg !411
  br i1 %cmp134, label %if.end138, label %if.then136, !dbg !411

if.then136:                                       ; preds = %if.else130
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #5, !dbg !412
  br label %if.end138, !dbg !412

if.end138:                                        ; preds = %if.else130, %if.then136, %if.then125
  %ns.1 = phi i32 [ %inc129, %if.then125 ], [ %ns.0.ph475, %if.then136 ], [ %ns.0.ph475, %if.else130 ]
  %nucl1141 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom120, i32 2, !dbg !413
  %26 = load i32* %nucl1141, align 4, !dbg !413, !tbaa !364
  %cmp142 = icmp eq i32 %26, -1, !dbg !413
  br i1 %cmp142, label %if.then144, label %if.else148, !dbg !413

if.then144:                                       ; preds = %if.end138
  store i32 %a2.0, i32* %nucl1141, align 4, !dbg !414, !tbaa !364
  br label %if.end174, !dbg !414

if.else148:                                       ; preds = %if.end138
  %nucl2151 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom120, i32 3, !dbg !415
  %27 = load i32* %nucl2151, align 4, !dbg !415, !tbaa !364
  %cmp152 = icmp eq i32 %27, -1, !dbg !415
  br i1 %cmp152, label %if.then154, label %if.else158, !dbg !415

if.then154:                                       ; preds = %if.else148
  store i32 %a2.0, i32* %nucl2151, align 4, !dbg !416, !tbaa !364
  br label %if.end174, !dbg !416

if.else158:                                       ; preds = %if.else148
  %nucl3161 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom120, i32 4, !dbg !417
  %28 = load i32* %nucl3161, align 4, !dbg !417, !tbaa !364
  %cmp162 = icmp eq i32 %28, -1, !dbg !417
  br i1 %cmp162, label %if.then164, label %if.else168, !dbg !417

if.then164:                                       ; preds = %if.else158
  store i32 %a2.0, i32* %nucl3161, align 4, !dbg !418, !tbaa !364
  br label %if.end174, !dbg !418

if.else168:                                       ; preds = %if.else158
  br i1 %tobool, label %if.then170, label %if.end171, !dbg !419

if.then170:                                       ; preds = %if.else168
  call fastcc void @pr_shell(%struct._IO_FILE* %log, i32 %ns.1, %struct.t_shell* %10) #6, !dbg !421
  br label %if.end171, !dbg !421

if.end171:                                        ; preds = %if.then170, %if.else168
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !422
  br label %if.end174

if.end174:                                        ; preds = %if.then154, %if.end171, %if.then164, %if.then144
  %29 = load %union.t_iparams** %iparams, align 8, !dbg !394, !tbaa !360
  %30 = getelementptr inbounds %union.t_iparams* %29, i64 %idxprom81, i32 0, i32 1, !dbg !394
  %31 = load float* %30, align 4, !dbg !394, !tbaa !385
  %k179 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom120, i32 5, !dbg !394
  %32 = load float* %k179, align 4, !dbg !394, !tbaa !385
  %add180 = fadd float %31, %32, !dbg !394
  store float %add180, float* %k179, align 4, !dbg !394, !tbaa !385
  %nnucl183 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom120, i32 0, !dbg !423
  %33 = load i32* %nnucl183, align 4, !dbg !423, !tbaa !364
  %inc184 = add nsw i32 %33, 1, !dbg !423
  store i32 %inc184, i32* %nnucl183, align 4, !dbg !423, !tbaa !364
  %add185 = add nsw i32 %19, 1, !dbg !424
  call void @llvm.dbg.value(metadata !{i32* %add.ptr187}, i64 0, metadata !336), !dbg !424
  %add189 = add nsw i32 %add185, %i.4462, !dbg !425
  call void @llvm.dbg.value(metadata !{i32 %add189}, i64 0, metadata !325), !dbg !425
  %34 = load i32* %nr, align 4, !dbg !389, !tbaa !364
  %cmp77461 = icmp slt i32 %add189, %34, !dbg !389
  br i1 %cmp77461, label %if.end174.for.body79.lr.ph_crit_edge, label %for.end190, !dbg !389

if.end174.for.body79.lr.ph_crit_edge:             ; preds = %if.end174
  %idx.ext186 = sext i32 %add185 to i64, !dbg !424
  %add.ptr187 = getelementptr inbounds i32* %ia.0463, i64 %idx.ext186, !dbg !424
  br label %for.body79.lr.ph, !dbg !389

for.end190:                                       ; preds = %for.end72, %if.end174, %if.else105
  %ns.0.ph473 = phi i32 [ %ns.0.ph475, %if.else105 ], [ 0, %for.end72 ], [ %ns.1, %if.end174 ]
  call void @llvm.dbg.value(metadata !{i32* %36}, i64 0, metadata !336), !dbg !426
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !325), !dbg !427
  %nr197 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 19, i32 0, !dbg !427
  %35 = load i32* %nr197, align 4, !dbg !427, !tbaa !364
  %cmp198455 = icmp sgt i32 %35, 0, !dbg !427
  br i1 %cmp198455, label %for.body200.lr.ph, label %for.end274, !dbg !427

for.body200.lr.ph:                                ; preds = %for.end190
  %iatoms193 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 19, i32 2, !dbg !426
  %36 = load i32** %iatoms193, align 8, !dbg !426, !tbaa !360
  %functype203 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3, !dbg !429
  %iparams248 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4, !dbg !431
  br label %for.body200, !dbg !427

for.body200:                                      ; preds = %if.end243.for.body200_crit_edge, %for.body200.lr.ph
  %ia.1458 = phi i32* [ %36, %for.body200.lr.ph ], [ %add.ptr271, %if.end243.for.body200_crit_edge ]
  %i.5457 = phi i32 [ 0, %for.body200.lr.ph ], [ %add273, %if.end243.for.body200_crit_edge ]
  %ns.2456 = phi i32 [ %ns.0.ph473, %for.body200.lr.ph ], [ %ns.3, %if.end243.for.body200_crit_edge ]
  %37 = load i32* %ia.1458, align 4, !dbg !432, !tbaa !364
  call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !327), !dbg !432
  %idxprom202 = sext i32 %37 to i64, !dbg !429
  %38 = load i32** %functype203, align 8, !dbg !429, !tbaa !360
  %arrayidx204 = getelementptr inbounds i32* %38, i64 %idxprom202, !dbg !429
  %39 = load i32* %arrayidx204, align 4, !dbg !429, !tbaa !364
  call void @llvm.dbg.value(metadata !{i32 %39}, i64 0, metadata !328), !dbg !429
  %idxprom205 = sext i32 %39 to i64, !dbg !433
  %nratoms207 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom205, i32 2, !dbg !433
  %40 = load i32* %nratoms207, align 8, !dbg !433, !tbaa !364
  call void @llvm.dbg.value(metadata !{i32 %40}, i64 0, metadata !329), !dbg !433
  %arrayidx208 = getelementptr inbounds i32* %ia.1458, i64 1, !dbg !434
  %41 = load i32* %arrayidx208, align 4, !dbg !434, !tbaa !364
  %add209 = add nsw i32 %41, 4, !dbg !434
  call void @llvm.dbg.value(metadata !{i32 %add209}, i64 0, metadata !332), !dbg !434
  %add211 = add nsw i32 %41, 3, !dbg !435
  call void @llvm.dbg.value(metadata !{i32 %add211}, i64 0, metadata !333), !dbg !435
  %sub212 = sub nsw i32 %add209, %start, !dbg !436
  %idxprom213 = sext i32 %sub212 to i64, !dbg !436
  %arrayidx214 = getelementptr inbounds i32* %0, i64 %idxprom213, !dbg !436
  %42 = load i32* %arrayidx214, align 4, !dbg !436, !tbaa !364
  call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !324), !dbg !436
  %cmp215 = icmp sgt i32 %42, -1, !dbg !437
  %.pre499 = load i32* %nshell, align 4, !dbg !438, !tbaa !364
  %cmp218 = icmp slt i32 %42, %.pre499, !dbg !437
  %or.cond503 = and i1 %cmp215, %cmp218, !dbg !437
  br i1 %or.cond503, label %if.end221, label %if.then220, !dbg !437

if.then220:                                       ; preds = %for.body200
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), i32 %42, i32 %.pre499, i32 %add209) #5, !dbg !438
  br label %if.end221, !dbg !438

if.end221:                                        ; preds = %for.body200, %if.then220
  %idxprom222 = sext i32 %42 to i64, !dbg !439
  %shell224 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom222, i32 1, !dbg !439
  %43 = load i32* %shell224, align 4, !dbg !439, !tbaa !364
  %cmp225 = icmp eq i32 %43, -1, !dbg !439
  br i1 %cmp225, label %if.then227, label %if.else232, !dbg !439

if.then227:                                       ; preds = %if.end221
  store i32 %add209, i32* %shell224, align 4, !dbg !440, !tbaa !364
  %inc231 = add nsw i32 %ns.2456, 1, !dbg !442
  call void @llvm.dbg.value(metadata !{i32 %inc231}, i64 0, metadata !323), !dbg !442
  br label %if.end243, !dbg !443

if.else232:                                       ; preds = %if.end221
  %cmp236 = icmp eq i32 %43, %add209, !dbg !444
  br i1 %cmp236, label %if.end243, label %if.then238, !dbg !444

if.then238:                                       ; preds = %if.else232
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str8, i64 0, i64 0), i32 %43, i32 %add209) #5, !dbg !445
  br label %if.end243, !dbg !445

if.end243:                                        ; preds = %if.else232, %if.then238, %if.then227
  %ns.3 = phi i32 [ %inc231, %if.then227 ], [ %ns.2456, %if.then238 ], [ %ns.2456, %if.else232 ]
  %nucl1246 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom222, i32 2, !dbg !446
  store i32 %add211, i32* %nucl1246, align 4, !dbg !446, !tbaa !364
  %44 = load %union.t_iparams** %iparams248, align 8, !dbg !431, !tbaa !360
  %kx = getelementptr inbounds %union.t_iparams* %44, i64 %idxprom202, i32 0, i32 0, !dbg !431
  %45 = load float* %kx, align 4, !dbg !431, !tbaa !385
  %ky = getelementptr inbounds %union.t_iparams* %44, i64 %idxprom202, i32 0, i32 1, !dbg !431
  %46 = load float* %ky, align 4, !dbg !431, !tbaa !385
  %add254 = fadd float %45, %46, !dbg !431
  %kz = getelementptr inbounds %union.t_iparams* %44, i64 %idxprom202, i32 0, i32 2, !dbg !431
  %47 = load float* %kz, align 4, !dbg !431, !tbaa !385
  %add259 = fadd float %add254, %47, !dbg !431
  %conv261 = fdiv float %add259, 3.000000e+00, !dbg !431
  %k264 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom222, i32 5, !dbg !431
  store float %conv261, float* %k264, align 4, !dbg !431, !tbaa !385
  %nnucl267 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom222, i32 0, !dbg !447
  %48 = load i32* %nnucl267, align 4, !dbg !447, !tbaa !364
  %inc268 = add nsw i32 %48, 1, !dbg !447
  store i32 %inc268, i32* %nnucl267, align 4, !dbg !447, !tbaa !364
  %add269 = add nsw i32 %40, 1, !dbg !448
  call void @llvm.dbg.value(metadata !{i32* %add.ptr271}, i64 0, metadata !336), !dbg !448
  %add273 = add nsw i32 %add269, %i.5457, !dbg !449
  call void @llvm.dbg.value(metadata !{i32 %add273}, i64 0, metadata !325), !dbg !449
  %49 = load i32* %nr197, align 4, !dbg !427, !tbaa !364
  %cmp198 = icmp slt i32 %add273, %49, !dbg !427
  br i1 %cmp198, label %if.end243.for.body200_crit_edge, label %for.end274, !dbg !427

if.end243.for.body200_crit_edge:                  ; preds = %if.end243
  %idx.ext270 = sext i32 %add269 to i64, !dbg !448
  %add.ptr271 = getelementptr inbounds i32* %ia.1458, i64 %idx.ext270, !dbg !448
  br label %for.body200, !dbg !427

for.end274:                                       ; preds = %if.end243, %for.end190
  %ns.2.lcssa = phi i32 [ %ns.0.ph473, %for.end190 ], [ %ns.3, %if.end243 ]
  %50 = load i32* %nshell, align 4, !dbg !450, !tbaa !364
  %cmp275 = icmp eq i32 %ns.2.lcssa, %50, !dbg !450
  br i1 %cmp275, label %for.cond279.preheader, label %if.then277, !dbg !450

if.then277:                                       ; preds = %for.end274
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([65 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !451
  br label %for.cond279.preheader, !dbg !451

for.cond279.preheader:                            ; preds = %for.end274, %if.then277
  %cmp280453 = icmp sgt i32 %ns.2.lcssa, 0, !dbg !452
  br i1 %cmp280453, label %for.body282, label %for.end294, !dbg !452

for.body282:                                      ; preds = %for.cond279.preheader, %for.body282
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body282 ], [ 0, %for.cond279.preheader ]
  %k285 = getelementptr inbounds %struct.t_shell* %10, i64 %indvars.iv, i32 5, !dbg !454
  %51 = load float* %k285, align 4, !dbg !454, !tbaa !385
  %conv288 = fdiv float 1.000000e+00, %51, !dbg !454
  %k_1291 = getelementptr inbounds %struct.t_shell* %10, i64 %indvars.iv, i32 6, !dbg !454
  store float %conv288, float* %k_1291, align 4, !dbg !454, !tbaa !385
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !452
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !452
  %exitcond = icmp eq i32 %lftr.wideiv, %ns.2.lcssa, !dbg !452
  br i1 %exitcond, label %for.end294, label %for.body282, !dbg !452

for.end294:                                       ; preds = %for.body282, %for.cond279.preheader
  %52 = load %struct._IO_FILE** @debug, align 8, !dbg !455, !tbaa !360
  %tobool295 = icmp eq %struct._IO_FILE* %52, null, !dbg !455
  br i1 %tobool295, label %if.end298, label %if.then296, !dbg !455

if.then296:                                       ; preds = %for.end294
  call fastcc void @pr_shell(%struct._IO_FILE* %52, i32 %ns.2.lcssa, %struct.t_shell* %10) #6, !dbg !456
  br label %if.end298, !dbg !456

if.end298:                                        ; preds = %for.end294, %if.then296, %if.end45
  %shell.0 = phi %struct.t_shell* [ %10, %if.then296 ], [ %10, %for.end294 ], [ null, %if.end45 ]
  ret %struct.t_shell* %shell.0, !dbg !457
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pr_shell(%struct._IO_FILE* %log, i32 %ns, %struct.t_shell* nocapture %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !341), !dbg !458
  tail call void @llvm.dbg.value(metadata !{i32 %ns}, i64 0, metadata !342), !dbg !458
  tail call void @llvm.dbg.value(metadata !{%struct.t_shell* %s}, i64 0, metadata !343), !dbg !458
  %tobool = icmp eq %struct._IO_FILE* %log, null, !dbg !459
  br i1 %tobool, label %if.end30, label %if.then, !dbg !459

if.then:                                          ; preds = %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %log), !dbg !460
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([25 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0)) #5, !dbg !462
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !344), !dbg !463
  %cmp52 = icmp sgt i32 %ns, 0, !dbg !463
  br i1 %cmp52, label %for.body, label %if.end30, !dbg !463

for.body:                                         ; preds = %if.then, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then ]
  %shell = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 1, !dbg !465
  %1 = load i32* %shell, align 4, !dbg !465, !tbaa !364
  %k_1 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 6, !dbg !465
  %2 = load float* %k_1, align 4, !dbg !465, !tbaa !385
  %conv = fpext float %2 to double, !dbg !465
  %div = fdiv double 1.000000e+00, %conv, !dbg !465
  %nucl1 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 2, !dbg !465
  %3 = load i32* %nucl1, align 4, !dbg !465, !tbaa !364
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i32 %1, double %div, i32 %3) #5, !dbg !465
  %nnucl = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 0, !dbg !467
  %4 = load i32* %nnucl, align 4, !dbg !467, !tbaa !364
  switch i32 %4, label %if.else27 [
    i32 2, label %if.then11
    i32 3, label %if.then20
  ], !dbg !467

if.then11:                                        ; preds = %for.body
  %nucl2 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 3, !dbg !468
  %5 = load i32* %nucl2, align 4, !dbg !468, !tbaa !364
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0), i32 %5) #5, !dbg !468
  br label %for.inc, !dbg !468

if.then20:                                        ; preds = %for.body
  %nucl223 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 3, !dbg !469
  %6 = load i32* %nucl223, align 4, !dbg !469, !tbaa !364
  %nucl3 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 4, !dbg !469
  %7 = load i32* %nucl3, align 4, !dbg !469, !tbaa !364
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i32 %6, i32 %7) #5, !dbg !469
  br label %for.inc, !dbg !469

if.else27:                                        ; preds = %for.body
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %log), !dbg !470
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.else27, %if.then20
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !463
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !463
  %exitcond = icmp eq i32 %lftr.wideiv, %ns, !dbg !463
  br i1 %exitcond, label %if.end30, label %for.body, !dbg !463

if.end30:                                         ; preds = %if.then, %for.inc, %entry
  ret void, !dbg !471
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !60, metadata !61, metadata !60, metadata !60, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !12}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 36, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 36, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11}
!6 = metadata !{i32 786472, metadata !"eptAtom", i64 0} ; [ DW_TAG_enumerator ] [eptAtom :: 0]
!7 = metadata !{i32 786472, metadata !"eptNucleus", i64 1} ; [ DW_TAG_enumerator ] [eptNucleus :: 1]
!8 = metadata !{i32 786472, metadata !"eptShell", i64 2} ; [ DW_TAG_enumerator ] [eptShell :: 2]
!9 = metadata !{i32 786472, metadata !"eptBond", i64 3} ; [ DW_TAG_enumerator ] [eptBond :: 3]
!10 = metadata !{i32 786472, metadata !"eptDummy", i64 4} ; [ DW_TAG_enumerator ] [eptDummy :: 4]
!11 = metadata !{i32 786472, metadata !"eptNR", i64 5} ; [ DW_TAG_enumerator ] [eptNR :: 5]
!12 = metadata !{i32 786436, metadata !13, null, metadata !"", i32 49, i64 32, i64 32, i32 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 49, size 32, align 32, offset 0] [from ]
!13 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!14 = metadata !{metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59}
!15 = metadata !{i32 786472, metadata !"F_BONDS", i64 0} ; [ DW_TAG_enumerator ] [F_BONDS :: 0]
!16 = metadata !{i32 786472, metadata !"F_G96BONDS", i64 1} ; [ DW_TAG_enumerator ] [F_G96BONDS :: 1]
!17 = metadata !{i32 786472, metadata !"F_MORSE", i64 2} ; [ DW_TAG_enumerator ] [F_MORSE :: 2]
!18 = metadata !{i32 786472, metadata !"F_CUBICBONDS", i64 3} ; [ DW_TAG_enumerator ] [F_CUBICBONDS :: 3]
!19 = metadata !{i32 786472, metadata !"F_CONNBONDS", i64 4} ; [ DW_TAG_enumerator ] [F_CONNBONDS :: 4]
!20 = metadata !{i32 786472, metadata !"F_HARMONIC", i64 5} ; [ DW_TAG_enumerator ] [F_HARMONIC :: 5]
!21 = metadata !{i32 786472, metadata !"F_ANGLES", i64 6} ; [ DW_TAG_enumerator ] [F_ANGLES :: 6]
!22 = metadata !{i32 786472, metadata !"F_G96ANGLES", i64 7} ; [ DW_TAG_enumerator ] [F_G96ANGLES :: 7]
!23 = metadata !{i32 786472, metadata !"F_PDIHS", i64 8} ; [ DW_TAG_enumerator ] [F_PDIHS :: 8]
!24 = metadata !{i32 786472, metadata !"F_RBDIHS", i64 9} ; [ DW_TAG_enumerator ] [F_RBDIHS :: 9]
!25 = metadata !{i32 786472, metadata !"F_IDIHS", i64 10} ; [ DW_TAG_enumerator ] [F_IDIHS :: 10]
!26 = metadata !{i32 786472, metadata !"F_LJ14", i64 11} ; [ DW_TAG_enumerator ] [F_LJ14 :: 11]
!27 = metadata !{i32 786472, metadata !"F_COUL14", i64 12} ; [ DW_TAG_enumerator ] [F_COUL14 :: 12]
!28 = metadata !{i32 786472, metadata !"F_LJ", i64 13} ; [ DW_TAG_enumerator ] [F_LJ :: 13]
!29 = metadata !{i32 786472, metadata !"F_BHAM", i64 14} ; [ DW_TAG_enumerator ] [F_BHAM :: 14]
!30 = metadata !{i32 786472, metadata !"F_LJLR", i64 15} ; [ DW_TAG_enumerator ] [F_LJLR :: 15]
!31 = metadata !{i32 786472, metadata !"F_DISPCORR", i64 16} ; [ DW_TAG_enumerator ] [F_DISPCORR :: 16]
!32 = metadata !{i32 786472, metadata !"F_SR", i64 17} ; [ DW_TAG_enumerator ] [F_SR :: 17]
!33 = metadata !{i32 786472, metadata !"F_LR", i64 18} ; [ DW_TAG_enumerator ] [F_LR :: 18]
!34 = metadata !{i32 786472, metadata !"F_WPOL", i64 19} ; [ DW_TAG_enumerator ] [F_WPOL :: 19]
!35 = metadata !{i32 786472, metadata !"F_POSRES", i64 20} ; [ DW_TAG_enumerator ] [F_POSRES :: 20]
!36 = metadata !{i32 786472, metadata !"F_DISRES", i64 21} ; [ DW_TAG_enumerator ] [F_DISRES :: 21]
!37 = metadata !{i32 786472, metadata !"F_DISRESVIOL", i64 22} ; [ DW_TAG_enumerator ] [F_DISRESVIOL :: 22]
!38 = metadata !{i32 786472, metadata !"F_ORIRES", i64 23} ; [ DW_TAG_enumerator ] [F_ORIRES :: 23]
!39 = metadata !{i32 786472, metadata !"F_ORIRESDEV", i64 24} ; [ DW_TAG_enumerator ] [F_ORIRESDEV :: 24]
!40 = metadata !{i32 786472, metadata !"F_ANGRES", i64 25} ; [ DW_TAG_enumerator ] [F_ANGRES :: 25]
!41 = metadata !{i32 786472, metadata !"F_ANGRESZ", i64 26} ; [ DW_TAG_enumerator ] [F_ANGRESZ :: 26]
!42 = metadata !{i32 786472, metadata !"F_SHAKE", i64 27} ; [ DW_TAG_enumerator ] [F_SHAKE :: 27]
!43 = metadata !{i32 786472, metadata !"F_SHAKENC", i64 28} ; [ DW_TAG_enumerator ] [F_SHAKENC :: 28]
!44 = metadata !{i32 786472, metadata !"F_SETTLE", i64 29} ; [ DW_TAG_enumerator ] [F_SETTLE :: 29]
!45 = metadata !{i32 786472, metadata !"F_DUMMY2", i64 30} ; [ DW_TAG_enumerator ] [F_DUMMY2 :: 30]
!46 = metadata !{i32 786472, metadata !"F_DUMMY3", i64 31} ; [ DW_TAG_enumerator ] [F_DUMMY3 :: 31]
!47 = metadata !{i32 786472, metadata !"F_DUMMY3FD", i64 32} ; [ DW_TAG_enumerator ] [F_DUMMY3FD :: 32]
!48 = metadata !{i32 786472, metadata !"F_DUMMY3FAD", i64 33} ; [ DW_TAG_enumerator ] [F_DUMMY3FAD :: 33]
!49 = metadata !{i32 786472, metadata !"F_DUMMY3OUT", i64 34} ; [ DW_TAG_enumerator ] [F_DUMMY3OUT :: 34]
!50 = metadata !{i32 786472, metadata !"F_DUMMY4FD", i64 35} ; [ DW_TAG_enumerator ] [F_DUMMY4FD :: 35]
!51 = metadata !{i32 786472, metadata !"F_EQM", i64 36} ; [ DW_TAG_enumerator ] [F_EQM :: 36]
!52 = metadata !{i32 786472, metadata !"F_EPOT", i64 37} ; [ DW_TAG_enumerator ] [F_EPOT :: 37]
!53 = metadata !{i32 786472, metadata !"F_EKIN", i64 38} ; [ DW_TAG_enumerator ] [F_EKIN :: 38]
!54 = metadata !{i32 786472, metadata !"F_ETOT", i64 39} ; [ DW_TAG_enumerator ] [F_ETOT :: 39]
!55 = metadata !{i32 786472, metadata !"F_TEMP", i64 40} ; [ DW_TAG_enumerator ] [F_TEMP :: 40]
!56 = metadata !{i32 786472, metadata !"F_PRES", i64 41} ; [ DW_TAG_enumerator ] [F_PRES :: 41]
!57 = metadata !{i32 786472, metadata !"F_DVDL", i64 42} ; [ DW_TAG_enumerator ] [F_DVDL :: 42]
!58 = metadata !{i32 786472, metadata !"F_DVDLKIN", i64 43} ; [ DW_TAG_enumerator ] [F_DVDLKIN :: 43]
!59 = metadata !{i32 786472, metadata !"F_NRE", i64 44} ; [ DW_TAG_enumerator ] [F_NRE :: 44]
!60 = metadata !{i32 0}
!61 = metadata !{metadata !62, metadata !337}
!62 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"init_shells", metadata !"init_shells", metadata !"", i32 59, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_shell* (%struct._IO_FILE*, i32, i32, %struct.t_idef*, %struct.t_mdatoms*, i32*)* @init_shells, null, null, metadata !310, i32 61} ; [ DW_TAG_subprogram ] [line 59] [def] [scope 61] [init_shells]
!63 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{metadata !66, metadata !82, metadata !72, metadata !72, metadata !139, metadata !279, metadata !295}
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_shell]
!67 = metadata !{i32 786454, metadata !1, null, metadata !"t_shell", i32 66, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [t_shell] [line 66, size 0, align 0, offset 0] [from ]
!68 = metadata !{i32 786451, metadata !69, null, metadata !"", i32 60, i64 224, i64 32, i32 0, i32 0, null, metadata !70, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 60, size 224, align 32, offset 0] [from ]
!69 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/xmdrun.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!70 = metadata !{metadata !71, metadata !73, metadata !75, metadata !76, metadata !77, metadata !78, metadata !81}
!71 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"nnucl", i32 61, i64 32, i64 32, i64 0, i32 0, metadata !72} ; [ DW_TAG_member ] [nnucl] [line 61, size 32, align 32, offset 0] [from int]
!72 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!73 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"shell", i32 62, i64 32, i64 32, i64 32, i32 0, metadata !74} ; [ DW_TAG_member ] [shell] [line 62, size 32, align 32, offset 32] [from atom_id]
!74 = metadata !{i32 786454, metadata !69, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!75 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"nucl1", i32 63, i64 32, i64 32, i64 64, i32 0, metadata !74} ; [ DW_TAG_member ] [nucl1] [line 63, size 32, align 32, offset 64] [from atom_id]
!76 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"nucl2", i32 63, i64 32, i64 32, i64 96, i32 0, metadata !74} ; [ DW_TAG_member ] [nucl2] [line 63, size 32, align 32, offset 96] [from atom_id]
!77 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"nucl3", i32 63, i64 32, i64 32, i64 128, i32 0, metadata !74} ; [ DW_TAG_member ] [nucl3] [line 63, size 32, align 32, offset 128] [from atom_id]
!78 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"k", i32 64, i64 32, i64 32, i64 160, i32 0, metadata !79} ; [ DW_TAG_member ] [k] [line 64, size 32, align 32, offset 160] [from real]
!79 = metadata !{i32 786454, metadata !69, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!80 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!81 = metadata !{i32 786445, metadata !69, metadata !68, metadata !"k_1", i32 65, i64 32, i64 32, i64 192, i32 0, metadata !79} ; [ DW_TAG_member ] [k_1] [line 65, size 32, align 32, offset 192] [from real]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!83 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!84 = metadata !{i32 786451, metadata !85, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !86, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!85 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!86 = metadata !{metadata !87, metadata !88, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !109, metadata !110, metadata !111, metadata !112, metadata !115, metadata !117, metadata !119, metadata !123, metadata !125, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !134, metadata !135}
!87 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !72} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!88 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!90 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!91 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !89} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!92 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !89} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!93 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !89} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!94 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !89} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!95 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !89} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!96 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !89} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!97 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !89} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!98 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !89} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!99 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !89} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!100 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !89} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!101 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !102} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!102 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!103 = metadata !{i32 786451, metadata !85, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !104, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!104 = metadata !{metadata !105, metadata !106, metadata !108}
!105 = metadata !{i32 786445, metadata !85, metadata !103, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!106 = metadata !{i32 786445, metadata !85, metadata !103, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !107} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!108 = metadata !{i32 786445, metadata !85, metadata !103, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !72} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!109 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !107} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!110 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !72} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!111 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !72} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!112 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !113} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!113 = metadata !{i32 786454, metadata !85, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!114 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!115 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !116} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!116 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!117 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !118} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!118 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!119 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !120} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!120 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !90, metadata !121, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!121 = metadata !{metadata !122}
!122 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!123 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !124} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!124 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!125 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !126} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!126 = metadata !{i32 786454, metadata !85, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!127 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !124} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!128 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !124} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!129 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !124} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!130 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !124} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!131 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !132} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!132 = metadata !{i32 786454, metadata !85, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!133 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!134 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !72} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!135 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !136} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!136 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !90, metadata !137, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!137 = metadata !{metadata !138}
!138 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!139 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_idef]
!140 = metadata !{i32 786454, metadata !1, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!141 = metadata !{i32 786451, metadata !13, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !142, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146, metadata !149, metadata !264}
!143 = metadata !{i32 786445, metadata !13, metadata !141, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !72} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!144 = metadata !{i32 786445, metadata !13, metadata !141, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !72} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!145 = metadata !{i32 786445, metadata !13, metadata !141, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !72} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!146 = metadata !{i32 786445, metadata !13, metadata !141, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !147} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!147 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!148 = metadata !{i32 786454, metadata !13, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!149 = metadata !{i32 786445, metadata !13, metadata !141, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !150} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!150 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!151 = metadata !{i32 786454, metadata !13, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !152} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!152 = metadata !{i32 786455, metadata !13, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !153, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!153 = metadata !{metadata !154, metadata !160, metadata !167, metadata !173, metadata !182, metadata !187, metadata !194, metadata !202, metadata !207, metadata !212, metadata !218, metadata !226, metadata !233, metadata !242, metadata !251, metadata !260}
!154 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!155 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !156, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!156 = metadata !{metadata !157, metadata !158, metadata !159}
!157 = metadata !{i32 786445, metadata !13, metadata !155, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!158 = metadata !{i32 786445, metadata !13, metadata !155, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !79} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!159 = metadata !{i32 786445, metadata !13, metadata !155, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!160 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !161} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!161 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !162, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !166}
!163 = metadata !{i32 786445, metadata !13, metadata !161, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!164 = metadata !{i32 786445, metadata !13, metadata !161, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !79} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!165 = metadata !{i32 786445, metadata !13, metadata !161, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!166 = metadata !{i32 786445, metadata !13, metadata !161, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !79} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!167 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !168} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!168 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !169, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!169 = metadata !{metadata !170, metadata !171, metadata !172}
!170 = metadata !{i32 786445, metadata !13, metadata !168, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!171 = metadata !{i32 786445, metadata !13, metadata !168, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !79} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!172 = metadata !{i32 786445, metadata !13, metadata !168, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!173 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !174} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!174 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !175, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!175 = metadata !{metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181}
!176 = metadata !{i32 786445, metadata !13, metadata !174, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!177 = metadata !{i32 786445, metadata !13, metadata !174, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !79} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!178 = metadata !{i32 786445, metadata !13, metadata !174, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!179 = metadata !{i32 786445, metadata !13, metadata !174, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !79} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!180 = metadata !{i32 786445, metadata !13, metadata !174, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !79} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!181 = metadata !{i32 786445, metadata !13, metadata !174, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !79} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!182 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!183 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !184, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!184 = metadata !{metadata !185, metadata !186}
!185 = metadata !{i32 786445, metadata !13, metadata !183, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!186 = metadata !{i32 786445, metadata !13, metadata !183, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !79} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!187 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !188} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!188 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !189, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!189 = metadata !{metadata !190, metadata !191, metadata !192, metadata !193}
!190 = metadata !{i32 786445, metadata !13, metadata !188, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!191 = metadata !{i32 786445, metadata !13, metadata !188, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !79} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!192 = metadata !{i32 786445, metadata !13, metadata !188, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!193 = metadata !{i32 786445, metadata !13, metadata !188, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !79} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!194 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !195} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!195 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !196, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!196 = metadata !{metadata !197, metadata !198, metadata !199, metadata !200, metadata !201}
!197 = metadata !{i32 786445, metadata !13, metadata !195, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!198 = metadata !{i32 786445, metadata !13, metadata !195, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !79} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!199 = metadata !{i32 786445, metadata !13, metadata !195, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !72} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!200 = metadata !{i32 786445, metadata !13, metadata !195, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !79} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!201 = metadata !{i32 786445, metadata !13, metadata !195, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !79} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!202 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !203} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!203 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !204, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!204 = metadata !{metadata !205, metadata !206}
!205 = metadata !{i32 786445, metadata !13, metadata !203, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!206 = metadata !{i32 786445, metadata !13, metadata !203, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !79} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!207 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !208} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!208 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !209, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!209 = metadata !{metadata !210, metadata !211}
!210 = metadata !{i32 786445, metadata !13, metadata !208, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!211 = metadata !{i32 786445, metadata !13, metadata !208, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !79} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!212 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !213} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!213 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !214, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!214 = metadata !{metadata !215, metadata !216, metadata !217}
!215 = metadata !{i32 786445, metadata !13, metadata !213, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!216 = metadata !{i32 786445, metadata !13, metadata !213, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !79} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!217 = metadata !{i32 786445, metadata !13, metadata !213, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!218 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !219} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!219 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !220, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!220 = metadata !{metadata !221, metadata !225}
!221 = metadata !{i32 786445, metadata !13, metadata !219, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !222} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!222 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !79, metadata !223, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!223 = metadata !{metadata !224}
!224 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!225 = metadata !{i32 786445, metadata !13, metadata !219, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !222} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!226 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !227} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!227 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !228, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!228 = metadata !{metadata !229}
!229 = metadata !{i32 786445, metadata !13, metadata !227, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !230} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!230 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !79, metadata !231, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!231 = metadata !{metadata !232}
!232 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!233 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !234} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!234 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !235, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!235 = metadata !{metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241}
!236 = metadata !{i32 786445, metadata !13, metadata !234, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!237 = metadata !{i32 786445, metadata !13, metadata !234, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !79} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!238 = metadata !{i32 786445, metadata !13, metadata !234, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!239 = metadata !{i32 786445, metadata !13, metadata !234, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !79} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!240 = metadata !{i32 786445, metadata !13, metadata !234, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !79} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!241 = metadata !{i32 786445, metadata !13, metadata !234, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !79} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!242 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !243} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!243 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !244, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!244 = metadata !{metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250}
!245 = metadata !{i32 786445, metadata !13, metadata !243, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!246 = metadata !{i32 786445, metadata !13, metadata !243, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !79} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!247 = metadata !{i32 786445, metadata !13, metadata !243, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!248 = metadata !{i32 786445, metadata !13, metadata !243, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !79} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!249 = metadata !{i32 786445, metadata !13, metadata !243, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !72} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!250 = metadata !{i32 786445, metadata !13, metadata !243, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !72} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!251 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !252} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!252 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !253, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!253 = metadata !{metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259}
!254 = metadata !{i32 786445, metadata !13, metadata !252, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !72} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!255 = metadata !{i32 786445, metadata !13, metadata !252, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !72} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!256 = metadata !{i32 786445, metadata !13, metadata !252, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !72} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!257 = metadata !{i32 786445, metadata !13, metadata !252, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !79} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!258 = metadata !{i32 786445, metadata !13, metadata !252, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !79} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!259 = metadata !{i32 786445, metadata !13, metadata !252, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !79} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!260 = metadata !{i32 786445, metadata !13, metadata !152, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !261} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!261 = metadata !{i32 786451, metadata !13, metadata !152, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !262, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!262 = metadata !{metadata !263}
!263 = metadata !{i32 786445, metadata !13, metadata !261, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !230} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!264 = metadata !{i32 786445, metadata !13, metadata !141, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !265} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!265 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !266, metadata !277, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!266 = metadata !{i32 786454, metadata !13, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !267} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!267 = metadata !{i32 786451, metadata !13, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !268, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!268 = metadata !{metadata !269, metadata !270, metadata !274}
!269 = metadata !{i32 786445, metadata !13, metadata !267, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !72} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!270 = metadata !{i32 786445, metadata !13, metadata !267, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !271} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!271 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !72, metadata !272, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!272 = metadata !{metadata !273}
!273 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!274 = metadata !{i32 786445, metadata !13, metadata !267, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !275} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!275 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !276} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!276 = metadata !{i32 786454, metadata !13, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!277 = metadata !{metadata !278}
!278 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!279 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !280} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mdatoms]
!280 = metadata !{i32 786454, metadata !1, null, metadata !"t_mdatoms", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_typedef ] [t_mdatoms] [line 51, size 0, align 0, offset 0] [from ]
!281 = metadata !{i32 786451, metadata !282, null, metadata !"", i32 40, i64 1408, i64 64, i32 0, i32 0, null, metadata !283, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 1408, align 64, offset 0] [from ]
!282 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!283 = metadata !{metadata !284, metadata !285, metadata !286, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !296, metadata !297, metadata !298, metadata !299, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309}
!284 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"tmass", i32 41, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [tmass] [line 41, size 32, align 32, offset 0] [from real]
!285 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"nr", i32 42, i64 32, i64 32, i64 32, i32 0, metadata !72} ; [ DW_TAG_member ] [nr] [line 42, size 32, align 32, offset 32] [from int]
!286 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"massA", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !287} ; [ DW_TAG_member ] [massA] [line 43, size 64, align 64, offset 64] [from ]
!287 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!288 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"massB", i32 43, i64 64, i64 64, i64 128, i32 0, metadata !287} ; [ DW_TAG_member ] [massB] [line 43, size 64, align 64, offset 128] [from ]
!289 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"massT", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !287} ; [ DW_TAG_member ] [massT] [line 43, size 64, align 64, offset 192] [from ]
!290 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"invmass", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !287} ; [ DW_TAG_member ] [invmass] [line 43, size 64, align 64, offset 256] [from ]
!291 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"chargeA", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !287} ; [ DW_TAG_member ] [chargeA] [line 44, size 64, align 64, offset 320] [from ]
!292 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"chargeB", i32 44, i64 64, i64 64, i64 384, i32 0, metadata !287} ; [ DW_TAG_member ] [chargeB] [line 44, size 64, align 64, offset 384] [from ]
!293 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"chargeT", i32 44, i64 64, i64 64, i64 448, i32 0, metadata !287} ; [ DW_TAG_member ] [chargeT] [line 44, size 64, align 64, offset 448] [from ]
!294 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"bPerturbed", i32 45, i64 64, i64 64, i64 512, i32 0, metadata !295} ; [ DW_TAG_member ] [bPerturbed] [line 45, size 64, align 64, offset 512] [from ]
!295 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!296 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"resnr", i32 46, i64 64, i64 64, i64 576, i32 0, metadata !295} ; [ DW_TAG_member ] [resnr] [line 46, size 64, align 64, offset 576] [from ]
!297 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"typeA", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !295} ; [ DW_TAG_member ] [typeA] [line 47, size 64, align 64, offset 640] [from ]
!298 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"typeB", i32 47, i64 64, i64 64, i64 704, i32 0, metadata !295} ; [ DW_TAG_member ] [typeB] [line 47, size 64, align 64, offset 704] [from ]
!299 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"ptype", i32 48, i64 64, i64 64, i64 768, i32 0, metadata !300} ; [ DW_TAG_member ] [ptype] [line 48, size 64, align 64, offset 768] [from ]
!300 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!301 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"cTC", i32 49, i64 64, i64 64, i64 832, i32 0, metadata !300} ; [ DW_TAG_member ] [cTC] [line 49, size 64, align 64, offset 832] [from ]
!302 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"cENER", i32 49, i64 64, i64 64, i64 896, i32 0, metadata !300} ; [ DW_TAG_member ] [cENER] [line 49, size 64, align 64, offset 896] [from ]
!303 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"cACC", i32 49, i64 64, i64 64, i64 960, i32 0, metadata !300} ; [ DW_TAG_member ] [cACC] [line 49, size 64, align 64, offset 960] [from ]
!304 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"cFREEZE", i32 49, i64 64, i64 64, i64 1024, i32 0, metadata !300} ; [ DW_TAG_member ] [cFREEZE] [line 49, size 64, align 64, offset 1024] [from ]
!305 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"cXTC", i32 49, i64 64, i64 64, i64 1088, i32 0, metadata !300} ; [ DW_TAG_member ] [cXTC] [line 49, size 64, align 64, offset 1088] [from ]
!306 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"cVCM", i32 49, i64 64, i64 64, i64 1152, i32 0, metadata !300} ; [ DW_TAG_member ] [cVCM] [line 49, size 64, align 64, offset 1152] [from ]
!307 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"cU1", i32 50, i64 64, i64 64, i64 1216, i32 0, metadata !300} ; [ DW_TAG_member ] [cU1] [line 50, size 64, align 64, offset 1216] [from ]
!308 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"cU2", i32 50, i64 64, i64 64, i64 1280, i32 0, metadata !300} ; [ DW_TAG_member ] [cU2] [line 50, size 64, align 64, offset 1280] [from ]
!309 = metadata !{i32 786445, metadata !282, metadata !281, metadata !"cORF", i32 50, i64 64, i64 64, i64 1344, i32 0, metadata !300} ; [ DW_TAG_member ] [cORF] [line 50, size 64, align 64, offset 1344] [from ]
!310 = metadata !{metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336}
!311 = metadata !{i32 786689, metadata !62, metadata !"log", metadata !63, i32 16777275, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 59]
!312 = metadata !{i32 786689, metadata !62, metadata !"start", metadata !63, i32 33554491, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 59]
!313 = metadata !{i32 786689, metadata !62, metadata !"homenr", metadata !63, i32 50331707, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 59]
!314 = metadata !{i32 786689, metadata !62, metadata !"idef", metadata !63, i32 67108924, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idef] [line 60]
!315 = metadata !{i32 786689, metadata !62, metadata !"md", metadata !63, i32 83886140, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 60]
!316 = metadata !{i32 786689, metadata !62, metadata !"nshell", metadata !63, i32 100663356, metadata !295, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nshell] [line 60]
!317 = metadata !{i32 786688, metadata !62, metadata !"shell", metadata !63, i32 62, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shell] [line 62]
!318 = metadata !{i32 786688, metadata !62, metadata !"shell_index", metadata !63, i32 63, metadata !295, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shell_index] [line 63]
!319 = metadata !{i32 786688, metadata !62, metadata !"n", metadata !63, i32 64, metadata !320, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 64]
!320 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 32, i32 0, i32 0, metadata !72, metadata !321, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 32, offset 0] [from int]
!321 = metadata !{metadata !322}
!322 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!323 = metadata !{i32 786688, metadata !62, metadata !"ns", metadata !63, i32 64, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ns] [line 64]
!324 = metadata !{i32 786688, metadata !62, metadata !"nsi", metadata !63, i32 64, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nsi] [line 64]
!325 = metadata !{i32 786688, metadata !62, metadata !"i", metadata !63, i32 65, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 65]
!326 = metadata !{i32 786688, metadata !62, metadata !"j", metadata !63, i32 65, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 65]
!327 = metadata !{i32 786688, metadata !62, metadata !"type", metadata !63, i32 65, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 65]
!328 = metadata !{i32 786688, metadata !62, metadata !"ftype", metadata !63, i32 65, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ftype] [line 65]
!329 = metadata !{i32 786688, metadata !62, metadata !"nra", metadata !63, i32 65, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nra] [line 65]
!330 = metadata !{i32 786688, metadata !62, metadata !"pt1", metadata !63, i32 66, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pt1] [line 66]
!331 = metadata !{i32 786688, metadata !62, metadata !"pt2", metadata !63, i32 66, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pt2] [line 66]
!332 = metadata !{i32 786688, metadata !62, metadata !"a1", metadata !63, i32 66, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a1] [line 66]
!333 = metadata !{i32 786688, metadata !62, metadata !"a2", metadata !63, i32 66, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a2] [line 66]
!334 = metadata !{i32 786688, metadata !62, metadata !"bS1", metadata !63, i32 67, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bS1] [line 67]
!335 = metadata !{i32 786688, metadata !62, metadata !"bS2", metadata !63, i32 67, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bS2] [line 67]
!336 = metadata !{i32 786688, metadata !62, metadata !"ia", metadata !63, i32 68, metadata !275, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ia] [line 68]
!337 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"pr_shell", metadata !"pr_shell", metadata !"", i32 38, metadata !338, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, %struct.t_shell*)* @pr_shell, null, null, metadata !340, i32 39} ; [ DW_TAG_subprogram ] [line 38] [local] [def] [scope 39] [pr_shell]
!338 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!339 = metadata !{null, metadata !82, metadata !72, metadata !66}
!340 = metadata !{metadata !341, metadata !342, metadata !343, metadata !344}
!341 = metadata !{i32 786689, metadata !337, metadata !"log", metadata !63, i32 16777254, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 38]
!342 = metadata !{i32 786689, metadata !337, metadata !"ns", metadata !63, i32 33554470, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ns] [line 38]
!343 = metadata !{i32 786689, metadata !337, metadata !"s", metadata !63, i32 50331686, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 38]
!344 = metadata !{i32 786688, metadata !337, metadata !"i", metadata !63, i32 40, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 40]
!345 = metadata !{i32 59, i32 0, metadata !62, null}
!346 = metadata !{i32 60, i32 0, metadata !62, null}
!347 = metadata !{%struct.t_shell* null}
!348 = metadata !{i32 62, i32 0, metadata !62, null}
!349 = metadata !{i32 64, i32 0, metadata !62, null}
!350 = metadata !{i32 70, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !62, i32 70, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!352 = metadata !{i32 71, i32 0, metadata !351, null}
!353 = metadata !{i32 72, i32 0, metadata !62, null}
!354 = metadata !{i32 73, i32 0, metadata !62, null}
!355 = metadata !{i32 74, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !62, i32 74, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!357 = metadata !{i32 79, i32 0, metadata !62, null}
!358 = metadata !{i32 75, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !356, i32 74, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!360 = metadata !{metadata !"any pointer", metadata !361}
!361 = metadata !{metadata !"omnipotent char", metadata !362}
!362 = metadata !{metadata !"Simple C/C++ TBAA"}
!363 = metadata !{metadata !"short", metadata !361}
!364 = metadata !{metadata !"int", metadata !361}
!365 = metadata !{i32 76, i32 0, metadata !359, null}
!366 = metadata !{i32 77, i32 0, metadata !359, null}
!367 = metadata !{i32 80, i32 0, metadata !62, null}
!368 = metadata !{i32 82, i32 0, metadata !62, null}
!369 = metadata !{i32 84, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !62, i32 83, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!371 = metadata !{i32 85, i32 0, metadata !370, null}
!372 = metadata !{i32 83, i32 0, metadata !370, null}
!373 = metadata !{i32 87, i32 0, metadata !62, null}
!374 = metadata !{i32 88, i32 0, metadata !62, null}
!375 = metadata !{i32 89, i32 0, metadata !62, null}
!376 = metadata !{i32 90, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !62, i32 89, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!378 = metadata !{i32 93, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !377, i32 93, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!380 = metadata !{i32 94, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !379, i32 93, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!382 = metadata !{i32 98, i32 0, metadata !381, null}
!383 = metadata !{i32 95, i32 0, metadata !381, null}
!384 = metadata !{i32 99, i32 0, metadata !381, null}
!385 = metadata !{metadata !"float", metadata !361}
!386 = metadata !{i32 100, i32 0, metadata !381, null}
!387 = metadata !{i32 104, i32 0, metadata !377, null}
!388 = metadata !{i32 105, i32 0, metadata !377, null}
!389 = metadata !{i32 106, i32 0, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !377, i32 106, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!391 = metadata !{i32 108, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !390, i32 106, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!393 = metadata !{i32 113, i32 0, metadata !392, null}
!394 = metadata !{i32 149, i32 0, metadata !392, null}
!395 = metadata !{i32 107, i32 0, metadata !392, null}
!396 = metadata !{i32 109, i32 0, metadata !392, null}
!397 = metadata !{i32 115, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !392, i32 113, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!399 = metadata !{i32 117, i32 0, metadata !392, null}
!400 = metadata !{i32 122, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !392, i32 121, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!402 = metadata !{i32 123, i32 0, metadata !401, null}
!403 = metadata !{i32 127, i32 0, metadata !392, null}
!404 = metadata !{i32 128, i32 0, metadata !392, null}
!405 = metadata !{i32 129, i32 0, metadata !392, null}
!406 = metadata !{i32 131, i32 0, metadata !392, null}
!407 = metadata !{i32 132, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !392, i32 131, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!409 = metadata !{i32 133, i32 0, metadata !408, null}
!410 = metadata !{i32 134, i32 0, metadata !408, null}
!411 = metadata !{i32 135, i32 0, metadata !392, null}
!412 = metadata !{i32 136, i32 0, metadata !392, null}
!413 = metadata !{i32 138, i32 0, metadata !392, null}
!414 = metadata !{i32 139, i32 0, metadata !392, null}
!415 = metadata !{i32 140, i32 0, metadata !392, null}
!416 = metadata !{i32 141, i32 0, metadata !392, null}
!417 = metadata !{i32 142, i32 0, metadata !392, null}
!418 = metadata !{i32 143, i32 0, metadata !392, null}
!419 = metadata !{i32 145, i32 0, metadata !420, null}
!420 = metadata !{i32 786443, metadata !1, metadata !392, i32 144, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!421 = metadata !{i32 146, i32 0, metadata !420, null}
!422 = metadata !{i32 147, i32 0, metadata !420, null}
!423 = metadata !{i32 150, i32 0, metadata !392, null}
!424 = metadata !{i32 152, i32 0, metadata !392, null}
!425 = metadata !{i32 153, i32 0, metadata !392, null}
!426 = metadata !{i32 155, i32 0, metadata !377, null}
!427 = metadata !{i32 156, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !377, i32 156, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!429 = metadata !{i32 158, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !428, i32 156, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!431 = metadata !{i32 177, i32 0, metadata !430, null}
!432 = metadata !{i32 157, i32 0, metadata !430, null}
!433 = metadata !{i32 159, i32 0, metadata !430, null}
!434 = metadata !{i32 161, i32 0, metadata !430, null}
!435 = metadata !{i32 162, i32 0, metadata !430, null}
!436 = metadata !{i32 165, i32 0, metadata !430, null}
!437 = metadata !{i32 166, i32 0, metadata !430, null}
!438 = metadata !{i32 167, i32 0, metadata !430, null}
!439 = metadata !{i32 169, i32 0, metadata !430, null}
!440 = metadata !{i32 170, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !430, i32 169, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!442 = metadata !{i32 171, i32 0, metadata !441, null}
!443 = metadata !{i32 172, i32 0, metadata !441, null}
!444 = metadata !{i32 173, i32 0, metadata !430, null}
!445 = metadata !{i32 174, i32 0, metadata !430, null}
!446 = metadata !{i32 176, i32 0, metadata !430, null}
!447 = metadata !{i32 180, i32 0, metadata !430, null}
!448 = metadata !{i32 182, i32 0, metadata !430, null}
!449 = metadata !{i32 183, i32 0, metadata !430, null}
!450 = metadata !{i32 186, i32 0, metadata !377, null}
!451 = metadata !{i32 187, i32 0, metadata !377, null}
!452 = metadata !{i32 189, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !377, i32 189, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!454 = metadata !{i32 190, i32 0, metadata !453, null}
!455 = metadata !{i32 192, i32 0, metadata !377, null}
!456 = metadata !{i32 193, i32 0, metadata !377, null}
!457 = metadata !{i32 195, i32 0, metadata !62, null}
!458 = metadata !{i32 38, i32 0, metadata !337, null}
!459 = metadata !{i32 42, i32 0, metadata !337, null}
!460 = metadata !{i32 44, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !337, i32 43, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!462 = metadata !{i32 45, i32 0, metadata !461, null}
!463 = metadata !{i32 47, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !461, i32 47, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!465 = metadata !{i32 48, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !1, metadata !464, i32 47, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/init_sh.c]
!467 = metadata !{i32 49, i32 0, metadata !466, null}
!468 = metadata !{i32 50, i32 0, metadata !466, null}
!469 = metadata !{i32 52, i32 0, metadata !466, null}
!470 = metadata !{i32 54, i32 0, metadata !466, null}
!471 = metadata !{i32 57, i32 0, metadata !337, null}
