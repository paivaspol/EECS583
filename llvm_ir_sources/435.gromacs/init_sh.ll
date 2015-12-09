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
  call void @llvm.memset.p0i8.i64(i8* %n498, i8 0, i64 20, i32 16, i1 false)
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 72, i32 %homenr, i32 4) #4
  %0 = bitcast i8* %call to i32*
  %add = add nsw i32 %homenr, %start
  %cmp2467 = icmp sgt i32 %homenr, 0
  br i1 %cmp2467, label %for.body3.lr.ph, label %for.end19.thread

for.end19.thread:                                 ; preds = %entry
  %arrayidx20.pre = getelementptr inbounds [5 x i32]* %n, i64 0, i64 2
  br label %if.end25

for.body3.lr.ph:                                  ; preds = %entry
  %ptype = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %1 = load i16** %ptype, align 8, !tbaa !0
  %2 = sext i32 %start to i64
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %for.inc17
  %indvars.iv492 = phi i64 [ %2, %for.body3.lr.ph ], [ %indvars.iv.next493, %for.inc17 ]
  %nsi.0468 = phi i32 [ 0, %for.body3.lr.ph ], [ %nsi.1, %for.inc17 ]
  %arrayidx5 = getelementptr inbounds i16* %1, i64 %indvars.iv492
  %3 = load i16* %arrayidx5, align 2, !tbaa !3
  %idxprom6 = zext i16 %3 to i64
  %arrayidx7 = getelementptr inbounds [5 x i32]* %n, i64 0, i64 %idxprom6
  %4 = load i32* %arrayidx7, align 4, !tbaa !4
  %inc8 = add nsw i32 %4, 1
  store i32 %inc8, i32* %arrayidx7, align 4, !tbaa !4
  %cmp12 = icmp eq i16 %3, 2
  br i1 %cmp12, label %if.then, label %for.inc17

if.then:                                          ; preds = %for.body3
  %inc14 = add nsw i32 %nsi.0468, 1
  %5 = trunc i64 %indvars.iv492 to i32
  %sub = sub nsw i32 %5, %start
  %idxprom15 = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds i32* %0, i64 %idxprom15
  store i32 %nsi.0468, i32* %arrayidx16, align 4, !tbaa !4
  br label %for.inc17

for.inc17:                                        ; preds = %for.body3, %if.then
  %nsi.1 = phi i32 [ %inc14, %if.then ], [ %nsi.0468, %for.body3 ]
  %indvars.iv.next493 = add i64 %indvars.iv492, 1
  %6 = trunc i64 %indvars.iv.next493 to i32
  %cmp2 = icmp slt i32 %6, %add
  br i1 %cmp2, label %for.body3, label %for.end19

for.end19:                                        ; preds = %for.inc17
  %arrayidx20.phi.trans.insert = getelementptr inbounds [5 x i32]* %n, i64 0, i64 2
  %.pre = load i32* %arrayidx20.phi.trans.insert, align 8, !tbaa !4
  %cmp21 = icmp eq i32 %nsi.1, %.pre
  br i1 %cmp21, label %if.end25, label %if.then23

if.then23:                                        ; preds = %for.end19
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), i32 %nsi.1, i32 %.pre) #4
  br label %if.end25

if.end25:                                         ; preds = %for.end19.thread, %for.end19, %if.then23
  %arrayidx20.pre-phi502 = phi i32* [ %arrayidx20.pre, %for.end19.thread ], [ %arrayidx20.phi.trans.insert, %for.end19 ], [ %arrayidx20.phi.trans.insert, %if.then23 ]
  %tobool = icmp ne %struct._IO_FILE* %log, null
  br i1 %tobool, label %for.body30, label %if.end45

for.body30:                                       ; preds = %if.end25, %for.inc42
  %indvars.iv488 = phi i64 [ %indvars.iv.next489, %for.inc42 ], [ 0, %if.end25 ]
  %arrayidx32 = getelementptr inbounds [5 x i32]* %n, i64 0, i64 %indvars.iv488
  %7 = load i32* %arrayidx32, align 4, !tbaa !4
  %cmp33 = icmp eq i32 %7, 0
  br i1 %cmp33, label %for.inc42, label %if.then35

if.then35:                                        ; preds = %for.body30
  %arrayidx39 = getelementptr inbounds [6 x i8*]* @ptype_str, i64 0, i64 %indvars.iv488
  %8 = load i8** %arrayidx39, align 8, !tbaa !0
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0), i32 %7, i8* %8) #4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body30, %if.then35
  %indvars.iv.next489 = add i64 %indvars.iv488, 1
  %lftr.wideiv490 = trunc i64 %indvars.iv.next489 to i32
  %exitcond491 = icmp eq i32 %lftr.wideiv490, 5
  br i1 %exitcond491, label %if.end45, label %for.body30

if.end45:                                         ; preds = %for.inc42, %if.end25
  %9 = load i32* %arrayidx20.pre-phi502, align 8, !tbaa !4
  store i32 %9, i32* %nshell, align 4, !tbaa !4
  %cmp47 = icmp sgt i32 %9, 0
  br i1 %cmp47, label %for.body54.lr.ph, label %if.end298

for.body54.lr.ph:                                 ; preds = %if.end45
  %call50 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 90, i32 %9, i32 28) #4
  %10 = bitcast i8* %call50 to %struct.t_shell*
  br label %for.body54

for.body54:                                       ; preds = %for.body54, %for.body54.lr.ph
  %indvars.iv484 = phi i64 [ 0, %for.body54.lr.ph ], [ %indvars.iv.next485, %for.body54 ]
  %shell57 = getelementptr inbounds %struct.t_shell* %10, i64 %indvars.iv484, i32 1
  %nnucl = getelementptr inbounds %struct.t_shell* %10, i64 %indvars.iv484, i32 0
  %11 = bitcast i32* %shell57 to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 -1, i64 16, i32 4, i1 false)
  store i32 0, i32* %nnucl, align 4, !tbaa !4
  %k_1 = getelementptr inbounds %struct.t_shell* %10, i64 %indvars.iv484, i32 6
  store float 0.000000e+00, float* %k_1, align 4, !tbaa !5
  %k = getelementptr inbounds %struct.t_shell* %10, i64 %indvars.iv484, i32 5
  store float 0.000000e+00, float* %k, align 4, !tbaa !5
  %indvars.iv.next485 = add i64 %indvars.iv484, 1
  %lftr.wideiv486 = trunc i64 %indvars.iv.next485 to i32
  %exitcond487 = icmp eq i32 %lftr.wideiv486, %9
  br i1 %exitcond487, label %for.end72, label %for.body54

for.end72:                                        ; preds = %for.body54
  %nr = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 0, i32 0
  %12 = load i32* %nr, align 4, !tbaa !4
  %cmp77461474 = icmp sgt i32 %12, 0
  br i1 %cmp77461474, label %for.body79.lr.ph.lr.ph, label %for.end190

for.body79.lr.ph.lr.ph:                           ; preds = %for.end72
  %iatoms = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 0, i32 2
  %13 = load i32** %iatoms, align 8, !tbaa !0
  %functype = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  %ptype87 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %iparams = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  br label %for.body79.lr.ph

for.body79.lr.ph:                                 ; preds = %if.end174.for.body79.lr.ph_crit_edge, %for.body79.lr.ph.lr.ph
  %14 = phi i32 [ %12, %for.body79.lr.ph.lr.ph ], [ %34, %if.end174.for.body79.lr.ph_crit_edge ]
  %ia.0.ph477 = phi i32* [ %13, %for.body79.lr.ph.lr.ph ], [ %add.ptr187, %if.end174.for.body79.lr.ph_crit_edge ]
  %i.4.ph476 = phi i32 [ 0, %for.body79.lr.ph.lr.ph ], [ %add189, %if.end174.for.body79.lr.ph_crit_edge ]
  %ns.0.ph475 = phi i32 [ 0, %for.body79.lr.ph.lr.ph ], [ %ns.1, %if.end174.for.body79.lr.ph_crit_edge ]
  %15 = load i32** %functype, align 8, !tbaa !0
  %16 = load i16** %ptype87, align 8, !tbaa !0
  br label %for.body79

for.body79:                                       ; preds = %for.body79.lr.ph, %if.else105
  %ia.0463 = phi i32* [ %ia.0.ph477, %for.body79.lr.ph ], [ %add.ptr, %if.else105 ]
  %i.4462 = phi i32 [ %i.4.ph476, %for.body79.lr.ph ], [ %add107, %if.else105 ]
  %17 = load i32* %ia.0463, align 4, !tbaa !4
  %idxprom81 = sext i32 %17 to i64
  %arrayidx82 = getelementptr inbounds i32* %15, i64 %idxprom81
  %18 = load i32* %arrayidx82, align 4, !tbaa !4
  %idxprom83 = sext i32 %18 to i64
  %nratoms = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom83, i32 2
  %19 = load i32* %nratoms, align 8, !tbaa !4
  %arrayidx85 = getelementptr inbounds i32* %ia.0463, i64 1
  %20 = load i32* %arrayidx85, align 4, !tbaa !4
  %idxprom86 = sext i32 %20 to i64
  %arrayidx88 = getelementptr inbounds i16* %16, i64 %idxprom86
  %21 = load i16* %arrayidx88, align 2, !tbaa !3
  %cmp90 = icmp eq i16 %21, 2
  %arrayidx94 = getelementptr inbounds i32* %ia.0463, i64 2
  %22 = load i32* %arrayidx94, align 4, !tbaa !4
  br i1 %cmp90, label %if.end110, label %if.else

if.else:                                          ; preds = %for.body79
  %idxprom96 = sext i32 %22 to i64
  %arrayidx98 = getelementptr inbounds i16* %16, i64 %idxprom96
  %23 = load i16* %arrayidx98, align 2, !tbaa !3
  %cmp100 = icmp eq i16 %23, 2
  br i1 %cmp100, label %if.end110, label %if.else105

if.else105:                                       ; preds = %if.else
  %add106 = add nsw i32 %19, 1
  %add107 = add nsw i32 %add106, %i.4462
  %idx.ext = sext i32 %add106 to i64
  %add.ptr = getelementptr inbounds i32* %ia.0463, i64 %idx.ext
  %cmp77 = icmp slt i32 %add107, %14
  br i1 %cmp77, label %for.body79, label %for.end190

if.end110:                                        ; preds = %if.else, %for.body79
  %a1.0 = phi i32 [ %20, %for.body79 ], [ %22, %if.else ]
  %a2.0 = phi i32 [ %22, %for.body79 ], [ %20, %if.else ]
  %sub111 = sub nsw i32 %a1.0, %start
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds i32* %0, i64 %idxprom112
  %24 = load i32* %arrayidx113, align 4, !tbaa !4
  %cmp114 = icmp sgt i32 %24, -1
  %.pre500 = load i32* %nshell, align 4, !tbaa !4
  %cmp116 = icmp slt i32 %24, %.pre500
  %or.cond = and i1 %cmp114, %cmp116
  br i1 %or.cond, label %if.end119, label %if.then118

if.then118:                                       ; preds = %if.end110
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), i32 %24, i32 %.pre500, i32 %a1.0) #4
  br label %if.end119

if.end119:                                        ; preds = %if.end110, %if.then118
  %idxprom120 = sext i32 %24 to i64
  %shell122 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom120, i32 1
  %25 = load i32* %shell122, align 4, !tbaa !4
  %cmp123 = icmp eq i32 %25, -1
  br i1 %cmp123, label %if.then125, label %if.else130

if.then125:                                       ; preds = %if.end119
  store i32 %a1.0, i32* %shell122, align 4, !tbaa !4
  %inc129 = add nsw i32 %ns.0.ph475, 1
  br label %if.end138

if.else130:                                       ; preds = %if.end119
  %cmp134 = icmp eq i32 %25, %a1.0
  br i1 %cmp134, label %if.end138, label %if.then136

if.then136:                                       ; preds = %if.else130
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #4
  br label %if.end138

if.end138:                                        ; preds = %if.else130, %if.then136, %if.then125
  %ns.1 = phi i32 [ %inc129, %if.then125 ], [ %ns.0.ph475, %if.then136 ], [ %ns.0.ph475, %if.else130 ]
  %nucl1141 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom120, i32 2
  %26 = load i32* %nucl1141, align 4, !tbaa !4
  %cmp142 = icmp eq i32 %26, -1
  br i1 %cmp142, label %if.then144, label %if.else148

if.then144:                                       ; preds = %if.end138
  store i32 %a2.0, i32* %nucl1141, align 4, !tbaa !4
  br label %if.end174

if.else148:                                       ; preds = %if.end138
  %nucl2151 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom120, i32 3
  %27 = load i32* %nucl2151, align 4, !tbaa !4
  %cmp152 = icmp eq i32 %27, -1
  br i1 %cmp152, label %if.then154, label %if.else158

if.then154:                                       ; preds = %if.else148
  store i32 %a2.0, i32* %nucl2151, align 4, !tbaa !4
  br label %if.end174

if.else158:                                       ; preds = %if.else148
  %nucl3161 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom120, i32 4
  %28 = load i32* %nucl3161, align 4, !tbaa !4
  %cmp162 = icmp eq i32 %28, -1
  br i1 %cmp162, label %if.then164, label %if.else168

if.then164:                                       ; preds = %if.else158
  store i32 %a2.0, i32* %nucl3161, align 4, !tbaa !4
  br label %if.end174

if.else168:                                       ; preds = %if.else158
  br i1 %tobool, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.else168
  call fastcc void @pr_shell(%struct._IO_FILE* %log, i32 %ns.1, %struct.t_shell* %10) #5
  br label %if.end171

if.end171:                                        ; preds = %if.then170, %if.else168
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str7, i64 0, i64 0)) #4
  br label %if.end174

if.end174:                                        ; preds = %if.then154, %if.end171, %if.then164, %if.then144
  %29 = load %union.t_iparams** %iparams, align 8, !tbaa !0
  %30 = getelementptr inbounds %union.t_iparams* %29, i64 %idxprom81, i32 0, i32 1
  %31 = load float* %30, align 4, !tbaa !5
  %k179 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom120, i32 5
  %32 = load float* %k179, align 4, !tbaa !5
  %add180 = fadd float %31, %32
  store float %add180, float* %k179, align 4, !tbaa !5
  %nnucl183 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom120, i32 0
  %33 = load i32* %nnucl183, align 4, !tbaa !4
  %inc184 = add nsw i32 %33, 1
  store i32 %inc184, i32* %nnucl183, align 4, !tbaa !4
  %add185 = add nsw i32 %19, 1
  %add189 = add nsw i32 %add185, %i.4462
  %34 = load i32* %nr, align 4, !tbaa !4
  %cmp77461 = icmp slt i32 %add189, %34
  br i1 %cmp77461, label %if.end174.for.body79.lr.ph_crit_edge, label %for.end190

if.end174.for.body79.lr.ph_crit_edge:             ; preds = %if.end174
  %idx.ext186 = sext i32 %add185 to i64
  %add.ptr187 = getelementptr inbounds i32* %ia.0463, i64 %idx.ext186
  br label %for.body79.lr.ph

for.end190:                                       ; preds = %for.end72, %if.end174, %if.else105
  %ns.0.ph473 = phi i32 [ %ns.0.ph475, %if.else105 ], [ 0, %for.end72 ], [ %ns.1, %if.end174 ]
  %nr197 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 19, i32 0
  %35 = load i32* %nr197, align 4, !tbaa !4
  %cmp198455 = icmp sgt i32 %35, 0
  br i1 %cmp198455, label %for.body200.lr.ph, label %for.end274

for.body200.lr.ph:                                ; preds = %for.end190
  %iatoms193 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 19, i32 2
  %36 = load i32** %iatoms193, align 8, !tbaa !0
  %functype203 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  %iparams248 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  br label %for.body200

for.body200:                                      ; preds = %if.end243.for.body200_crit_edge, %for.body200.lr.ph
  %ia.1458 = phi i32* [ %36, %for.body200.lr.ph ], [ %add.ptr271, %if.end243.for.body200_crit_edge ]
  %i.5457 = phi i32 [ 0, %for.body200.lr.ph ], [ %add273, %if.end243.for.body200_crit_edge ]
  %ns.2456 = phi i32 [ %ns.0.ph473, %for.body200.lr.ph ], [ %ns.3, %if.end243.for.body200_crit_edge ]
  %37 = load i32* %ia.1458, align 4, !tbaa !4
  %idxprom202 = sext i32 %37 to i64
  %38 = load i32** %functype203, align 8, !tbaa !0
  %arrayidx204 = getelementptr inbounds i32* %38, i64 %idxprom202
  %39 = load i32* %arrayidx204, align 4, !tbaa !4
  %idxprom205 = sext i32 %39 to i64
  %nratoms207 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom205, i32 2
  %40 = load i32* %nratoms207, align 8, !tbaa !4
  %arrayidx208 = getelementptr inbounds i32* %ia.1458, i64 1
  %41 = load i32* %arrayidx208, align 4, !tbaa !4
  %add209 = add nsw i32 %41, 4
  %add211 = add nsw i32 %41, 3
  %sub212 = sub nsw i32 %add209, %start
  %idxprom213 = sext i32 %sub212 to i64
  %arrayidx214 = getelementptr inbounds i32* %0, i64 %idxprom213
  %42 = load i32* %arrayidx214, align 4, !tbaa !4
  %cmp215 = icmp sgt i32 %42, -1
  %.pre499 = load i32* %nshell, align 4, !tbaa !4
  %cmp218 = icmp slt i32 %42, %.pre499
  %or.cond503 = and i1 %cmp215, %cmp218
  br i1 %or.cond503, label %if.end221, label %if.then220

if.then220:                                       ; preds = %for.body200
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), i32 %42, i32 %.pre499, i32 %add209) #4
  br label %if.end221

if.end221:                                        ; preds = %for.body200, %if.then220
  %idxprom222 = sext i32 %42 to i64
  %shell224 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom222, i32 1
  %43 = load i32* %shell224, align 4, !tbaa !4
  %cmp225 = icmp eq i32 %43, -1
  br i1 %cmp225, label %if.then227, label %if.else232

if.then227:                                       ; preds = %if.end221
  store i32 %add209, i32* %shell224, align 4, !tbaa !4
  %inc231 = add nsw i32 %ns.2456, 1
  br label %if.end243

if.else232:                                       ; preds = %if.end221
  %cmp236 = icmp eq i32 %43, %add209
  br i1 %cmp236, label %if.end243, label %if.then238

if.then238:                                       ; preds = %if.else232
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str8, i64 0, i64 0), i32 %43, i32 %add209) #4
  br label %if.end243

if.end243:                                        ; preds = %if.else232, %if.then238, %if.then227
  %ns.3 = phi i32 [ %inc231, %if.then227 ], [ %ns.2456, %if.then238 ], [ %ns.2456, %if.else232 ]
  %nucl1246 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom222, i32 2
  store i32 %add211, i32* %nucl1246, align 4, !tbaa !4
  %44 = load %union.t_iparams** %iparams248, align 8, !tbaa !0
  %kx = getelementptr inbounds %union.t_iparams* %44, i64 %idxprom202, i32 0, i32 0
  %45 = load float* %kx, align 4, !tbaa !5
  %ky = getelementptr inbounds %union.t_iparams* %44, i64 %idxprom202, i32 0, i32 1
  %46 = load float* %ky, align 4, !tbaa !5
  %add254 = fadd float %45, %46
  %kz = getelementptr inbounds %union.t_iparams* %44, i64 %idxprom202, i32 0, i32 2
  %47 = load float* %kz, align 4, !tbaa !5
  %add259 = fadd float %add254, %47
  %conv261 = fdiv float %add259, 3.000000e+00
  %k264 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom222, i32 5
  store float %conv261, float* %k264, align 4, !tbaa !5
  %nnucl267 = getelementptr inbounds %struct.t_shell* %10, i64 %idxprom222, i32 0
  %48 = load i32* %nnucl267, align 4, !tbaa !4
  %inc268 = add nsw i32 %48, 1
  store i32 %inc268, i32* %nnucl267, align 4, !tbaa !4
  %add269 = add nsw i32 %40, 1
  %add273 = add nsw i32 %add269, %i.5457
  %49 = load i32* %nr197, align 4, !tbaa !4
  %cmp198 = icmp slt i32 %add273, %49
  br i1 %cmp198, label %if.end243.for.body200_crit_edge, label %for.end274

if.end243.for.body200_crit_edge:                  ; preds = %if.end243
  %idx.ext270 = sext i32 %add269 to i64
  %add.ptr271 = getelementptr inbounds i32* %ia.1458, i64 %idx.ext270
  br label %for.body200

for.end274:                                       ; preds = %if.end243, %for.end190
  %ns.2.lcssa = phi i32 [ %ns.0.ph473, %for.end190 ], [ %ns.3, %if.end243 ]
  %50 = load i32* %nshell, align 4, !tbaa !4
  %cmp275 = icmp eq i32 %ns.2.lcssa, %50
  br i1 %cmp275, label %for.cond279.preheader, label %if.then277

if.then277:                                       ; preds = %for.end274
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([65 x i8]* @.str9, i64 0, i64 0)) #4
  br label %for.cond279.preheader

for.cond279.preheader:                            ; preds = %for.end274, %if.then277
  %cmp280453 = icmp sgt i32 %ns.2.lcssa, 0
  br i1 %cmp280453, label %for.body282, label %for.end294

for.body282:                                      ; preds = %for.cond279.preheader, %for.body282
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body282 ], [ 0, %for.cond279.preheader ]
  %k285 = getelementptr inbounds %struct.t_shell* %10, i64 %indvars.iv, i32 5
  %51 = load float* %k285, align 4, !tbaa !5
  %conv288 = fdiv float 1.000000e+00, %51
  %k_1291 = getelementptr inbounds %struct.t_shell* %10, i64 %indvars.iv, i32 6
  store float %conv288, float* %k_1291, align 4, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ns.2.lcssa
  br i1 %exitcond, label %for.end294, label %for.body282

for.end294:                                       ; preds = %for.body282, %for.cond279.preheader
  %52 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool295 = icmp eq %struct._IO_FILE* %52, null
  br i1 %tobool295, label %if.end298, label %if.then296

if.then296:                                       ; preds = %for.end294
  call fastcc void @pr_shell(%struct._IO_FILE* %52, i32 %ns.2.lcssa, %struct.t_shell* %10) #5
  br label %if.end298

if.end298:                                        ; preds = %for.end294, %if.then296, %if.end45
  %shell.0 = phi %struct.t_shell* [ %10, %if.then296 ], [ %10, %for.end294 ], [ null, %if.end45 ]
  ret %struct.t_shell* %shell.0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pr_shell(%struct._IO_FILE* %log, i32 %ns, %struct.t_shell* nocapture %s) #0 {
entry:
  %tobool = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.end30, label %if.then

if.then:                                          ; preds = %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %log)
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([25 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0)) #4
  %cmp52 = icmp sgt i32 %ns, 0
  br i1 %cmp52, label %for.body, label %if.end30

for.body:                                         ; preds = %if.then, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then ]
  %shell = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 1
  %1 = load i32* %shell, align 4, !tbaa !4
  %k_1 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 6
  %2 = load float* %k_1, align 4, !tbaa !5
  %conv = fpext float %2 to double
  %div = fdiv double 1.000000e+00, %conv
  %nucl1 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 2
  %3 = load i32* %nucl1, align 4, !tbaa !4
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i32 %1, double %div, i32 %3) #4
  %nnucl = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 0
  %4 = load i32* %nnucl, align 4, !tbaa !4
  switch i32 %4, label %if.else27 [
    i32 2, label %if.then11
    i32 3, label %if.then20
  ]

if.then11:                                        ; preds = %for.body
  %nucl2 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 3
  %5 = load i32* %nucl2, align 4, !tbaa !4
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0), i32 %5) #4
  br label %for.inc

if.then20:                                        ; preds = %for.body
  %nucl223 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 3
  %6 = load i32* %nucl223, align 4, !tbaa !4
  %nucl3 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 4
  %7 = load i32* %nucl3, align 4, !tbaa !4
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i32 %6, i32 %7) #4
  br label %for.inc

if.else27:                                        ; preds = %for.body
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.else27, %if.then20
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ns
  br i1 %exitcond, label %if.end30, label %for.body

if.end30:                                         ; preds = %if.then, %for.inc, %entry
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"short", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}