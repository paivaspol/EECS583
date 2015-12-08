; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@.str = private unnamed_addr constant [76 x i8] c"%s atom number (index[%d]=%d) is larger than the number of atoms in %s (%d)\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"the trajectory\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str5 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/rdgroup.c\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"b->index\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"*grpname\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"b->a\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str12 = private unnamed_addr constant [46 x i8] c"Something wrong in your indexfile at group %s\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"grpnr\00", align 1
@.str15 = private unnamed_addr constant [24 x i8] c"No index file specified\00", align 1
@.str16 = private unnamed_addr constant [7 x i8] c"gnames\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"grps\00", align 1
@.str18 = private unnamed_addr constant [12 x i8] c"grps->index\00", align 1
@.str19 = private unnamed_addr constant [30 x i8] c"Error: no groups in indexfile\00", align 1
@stderr = external global %struct._IO_FILE*
@.str20 = private unnamed_addr constant [35 x i8] c"Group %5d (%12s) has %5d elements\0A\00", align 1
@.str21 = private unnamed_addr constant [27 x i8] c"Select between %d and %d.\0A\00", align 1
@.str22 = private unnamed_addr constant [33 x i8] c"There is one group in the index\0A\00", align 1
@.str23 = private unnamed_addr constant [9 x i8] c"index[i]\00", align 1
@.str24 = private unnamed_addr constant [17 x i8] c"Select a group: \00", align 1

; Function Attrs: nounwind optsize uwtable
define void @check_index(i8* %gname, i32 %n, i32* nocapture %index, i8* %traj, i32 %natoms) #0 {
entry:
  %cmp18 = icmp sgt i32 %n, 0
  br i1 %cmp18, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp ne i8* %gname, null
  %cond = select i1 %tobool, i8* %gname, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)
  %tobool5 = icmp ne i8* %traj, null
  %cond9 = select i1 %tobool5, i8* %traj, i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0)
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.pre, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, %natoms
  %indvars.iv.next.pre = add i64 %indvars.iv, 1
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  %lftr.wideiv.pre = trunc i64 %indvars.iv.next.pre to i32
  br label %for.inc

if.then:                                          ; preds = %for.body
  %add4 = add nsw i32 %0, 1
  %1 = trunc i64 %indvars.iv.next.pre to i32
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* %cond, i32 %1, i32 %add4, i8* %cond9, i32 %natoms) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %if.then
  %lftr.wideiv.pre-phi = phi i32 [ %lftr.wideiv.pre, %for.body.for.inc_crit_edge ], [ %1, %if.then ]
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define %struct.t_block* @init_index(i8* %gfile, i8*** nocapture %grpname) #0 {
entry:
  %a = alloca i32, align 4
  %ng = alloca i32, align 4
  %line = alloca [4096 x i8], align 16
  %str = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #2
  %1 = getelementptr inbounds [4096 x i8]* %str, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #2
  %call = call %struct._IO_FILE* @ffopen(i8* %gfile, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #5
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 63, i32 1, i32 1056) #5
  %2 = bitcast i8* %call1 to %struct.t_block*
  %call2 = call i32 @get_a_line(%struct._IO_FILE* %call, i8* %0, i32 4096) #5
  %3 = load i8* %0, align 16, !tbaa !1
  %cmp = icmp eq i8 %3, 91
  %nr = getelementptr inbounds i8* %call1, i64 1024
  %4 = bitcast i8* %nr to i32*
  br i1 %cmp, label %if.then, label %if.else81

if.then:                                          ; preds = %entry
  store i32 0, i32* %4, align 4, !tbaa !0
  %index = getelementptr inbounds i8* %call1, i64 1032
  %5 = bitcast i8* %index to i32**
  store i32* null, i32** %5, align 8, !tbaa !3
  %nra = getelementptr inbounds i8* %call1, i64 1040
  %6 = bitcast i8* %nra to i32*
  store i32 0, i32* %6, align 4, !tbaa !0
  %a4 = getelementptr inbounds i8* %call1, i64 1048
  %7 = bitcast i8* %a4 to i32**
  store i32* null, i32** %7, align 8, !tbaa !3
  store i8** null, i8*** %grpname, align 8, !tbaa !3
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %maxentries.0 = phi i32 [ 0, %if.then ], [ %maxentries.3, %do.cond ]
  %call7 = call i32 @get_header(i8* %0, i8* %1) #5
  %tobool = icmp eq i32 %call7, 0
  br i1 %tobool, label %while.cond.preheader, label %if.then8

while.cond.preheader:                             ; preds = %do.body
  %call42202 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* %1) #5
  %cmp43203 = icmp eq i32 %call42202, 1
  br i1 %cmp43203, label %while.body, label %do.cond

if.then8:                                         ; preds = %do.body
  %8 = load i32* %4, align 4, !tbaa !0
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %4, align 4, !tbaa !0
  %9 = load i32** %5, align 8, !tbaa !3
  %10 = bitcast i32* %9 to i8*
  %add = shl i32 %8, 2
  %mul = add i32 %add, 8
  %call14 = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 76, i8* %10, i32 %mul) #5
  %11 = bitcast i8* %call14 to i32*
  store i32* %11, i32** %5, align 8, !tbaa !3
  %12 = load i8*** %grpname, align 8, !tbaa !3
  %13 = bitcast i8** %12 to i8*
  %14 = load i32* %4, align 4, !tbaa !0
  %mul18 = shl i32 %14, 3
  %call20 = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 77, i8* %13, i32 %mul18) #5
  %15 = bitcast i8* %call20 to i8**
  store i8** %15, i8*** %grpname, align 8, !tbaa !3
  %16 = load i32* %4, align 4, !tbaa !0
  %cmp22 = icmp eq i32 %16, 1
  %17 = load i32** %5, align 8, !tbaa !3
  br i1 %cmp22, label %if.then24, label %if.end

if.then24:                                        ; preds = %if.then8
  store i32 0, i32* %17, align 4, !tbaa !0
  %.pre = load i32* %4, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then24
  %18 = phi i32 [ %.pre, %if.then24 ], [ %16, %if.then8 ]
  %sub = add nsw i32 %18, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx29 = getelementptr inbounds i32* %17, i64 %idxprom
  %19 = load i32* %arrayidx29, align 4, !tbaa !0
  %idxprom31 = sext i32 %18 to i64
  %arrayidx33 = getelementptr inbounds i32* %17, i64 %idxprom31
  store i32 %19, i32* %arrayidx33, align 4, !tbaa !0
  %call35 = call i8* @gmx_strdup(i8* %1) #5
  %20 = load i32* %4, align 4, !tbaa !0
  %sub37 = add nsw i32 %20, -1
  %idxprom38 = sext i32 %sub37 to i64
  %21 = load i8*** %grpname, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds i8** %21, i64 %idxprom38
  store i8* %call35, i8** %arrayidx39, align 8, !tbaa !3
  br label %do.cond

while.body:                                       ; preds = %while.cond.preheader, %if.end59
  %maxentries.1205 = phi i32 [ %maxentries.2, %if.end59 ], [ %maxentries.0, %while.cond.preheader ]
  %pt.0204 = phi i8* [ %add.ptr, %if.end59 ], [ %0, %while.cond.preheader ]
  %22 = load i32* %4, align 4, !tbaa !0
  %idxprom46 = sext i32 %22 to i64
  %23 = load i32** %5, align 8, !tbaa !3
  %arrayidx48 = getelementptr inbounds i32* %23, i64 %idxprom46
  %24 = load i32* %arrayidx48, align 4, !tbaa !0
  %cmp49 = icmp slt i32 %24, %maxentries.1205
  br i1 %cmp49, label %while.body.if.end59_crit_edge, label %if.then51

while.body.if.end59_crit_edge:                    ; preds = %while.body
  %.pre213 = load i32** %7, align 8, !tbaa !3
  br label %if.end59

if.then51:                                        ; preds = %while.body
  %add52 = add nsw i32 %maxentries.1205, 100
  %25 = load i32** %7, align 8, !tbaa !3
  %26 = bitcast i32* %25 to i8*
  %mul55 = shl i32 %add52, 2
  %call57 = call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 88, i8* %26, i32 %mul55) #5
  %27 = bitcast i8* %call57 to i32*
  store i32* %27, i32** %7, align 8, !tbaa !3
  %.pre211 = load i32** %5, align 8, !tbaa !3
  br label %if.end59

if.end59:                                         ; preds = %while.body.if.end59_crit_edge, %if.then51
  %28 = phi i32* [ %27, %if.then51 ], [ %.pre213, %while.body.if.end59_crit_edge ]
  %29 = phi i32* [ %.pre211, %if.then51 ], [ %23, %while.body.if.end59_crit_edge ]
  %maxentries.2 = phi i32 [ %add52, %if.then51 ], [ %maxentries.1205, %while.body.if.end59_crit_edge ]
  %call61 = call i32 @atoi(i8* %1) #6
  %sub62 = add nsw i32 %call61, -1
  %idxprom63 = sext i32 %24 to i64
  %arrayidx65 = getelementptr inbounds i32* %28, i64 %idxprom63
  store i32 %sub62, i32* %arrayidx65, align 4, !tbaa !0
  %30 = load i32* %4, align 4, !tbaa !0
  %idxprom67 = sext i32 %30 to i64
  %arrayidx69 = getelementptr inbounds i32* %29, i64 %idxprom67
  %31 = load i32* %arrayidx69, align 4, !tbaa !0
  %inc70 = add nsw i32 %31, 1
  store i32 %inc70, i32* %arrayidx69, align 4, !tbaa !0
  %32 = load i32* %6, align 4, !tbaa !0
  %inc72 = add nsw i32 %32, 1
  store i32 %inc72, i32* %6, align 4, !tbaa !0
  %call74 = call i8* @strstr(i8* %pt.0204, i8* %1) #6
  %call76 = call i64 @strlen(i8* %1) #6
  %add.ptr = getelementptr inbounds i8* %call74, i64 %call76
  %call42 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* %1) #5
  %cmp43 = icmp eq i32 %call42, 1
  br i1 %cmp43, label %while.body, label %do.cond

do.cond:                                          ; preds = %while.cond.preheader, %if.end59, %if.end
  %maxentries.3 = phi i32 [ %maxentries.0, %if.end ], [ %maxentries.0, %while.cond.preheader ], [ %maxentries.2, %if.end59 ]
  %call79 = call i32 @get_a_line(%struct._IO_FILE* %call, i8* %0, i32 4096) #5
  %tobool80 = icmp eq i32 %call79, 0
  br i1 %tobool80, label %if.end140, label %do.body

if.else81:                                        ; preds = %entry
  %nra84 = getelementptr inbounds i8* %call1, i64 1040
  %33 = bitcast i8* %nra84 to i32*
  %call85 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* %nr, i8* %nra84) #5
  %34 = load i32* %4, align 4, !tbaa !0
  %add87 = add nsw i32 %34, 1
  %call88 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 101, i32 %add87, i32 4) #5
  %35 = bitcast i8* %call88 to i32*
  %index89 = getelementptr inbounds i8* %call1, i64 1032
  %36 = bitcast i8* %index89 to i32**
  store i32* %35, i32** %36, align 8, !tbaa !3
  %37 = load i32* %4, align 4, !tbaa !0
  %call91 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 102, i32 %37, i32 8) #5
  %38 = bitcast i8* %call91 to i8**
  store i8** %38, i8*** %grpname, align 8, !tbaa !3
  %39 = load i32** %36, align 8, !tbaa !3
  store i32 0, i32* %39, align 4, !tbaa !0
  %40 = load i32* %33, align 4, !tbaa !0
  %call95 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 104, i32 %40, i32 4) #5
  %41 = bitcast i8* %call95 to i32*
  %a96 = getelementptr inbounds i8* %call1, i64 1048
  %42 = bitcast i8* %a96 to i32**
  store i32* %41, i32** %42, align 8, !tbaa !3
  %43 = load i32* %4, align 4, !tbaa !0
  %cmp98209 = icmp sgt i32 %43, 0
  br i1 %cmp98209, label %for.body, label %if.end140

for.cond.loopexit:                                ; preds = %for.body127, %for.cond124.preheader
  %44 = load i32* %4, align 4, !tbaa !0
  %45 = trunc i64 %indvars.iv.next to i32
  %cmp98 = icmp slt i32 %45, %44
  br i1 %cmp98, label %for.body, label %if.end140

for.body:                                         ; preds = %if.else81, %for.cond.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond.loopexit ], [ 0, %if.else81 ]
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* %1, i32* %ng) #5
  %call103 = call i8* @gmx_strdup(i8* %1) #5
  %46 = load i8*** %grpname, align 8, !tbaa !3
  %arrayidx105 = getelementptr inbounds i8** %46, i64 %indvars.iv
  store i8* %call103, i8** %arrayidx105, align 8, !tbaa !3
  %47 = load i32** %36, align 8, !tbaa !3
  %arrayidx108 = getelementptr inbounds i32* %47, i64 %indvars.iv
  %48 = load i32* %arrayidx108, align 4, !tbaa !0
  %49 = load i32* %ng, align 4, !tbaa !0
  %add109 = add nsw i32 %49, %48
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx113 = getelementptr inbounds i32* %47, i64 %indvars.iv.next
  store i32 %add109, i32* %arrayidx113, align 4, !tbaa !0
  %50 = load i32* %33, align 4, !tbaa !0
  %cmp119 = icmp sgt i32 %add109, %50
  br i1 %cmp119, label %if.then121, label %for.cond124.preheader

if.then121:                                       ; preds = %for.body
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str12, i64 0, i64 0), i8* %1) #5
  br label %for.cond124.preheader

for.cond124.preheader:                            ; preds = %if.then121, %for.body
  %51 = load i32* %ng, align 4, !tbaa !0
  %cmp125206 = icmp sgt i32 %51, 0
  br i1 %cmp125206, label %for.body127, label %for.cond.loopexit

for.body127:                                      ; preds = %for.cond124.preheader, %for.body127
  %j.0207 = phi i32 [ %inc136, %for.body127 ], [ 0, %for.cond124.preheader ]
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i32* %a) #5
  %52 = load i32* %a, align 4, !tbaa !0
  %53 = load i32** %36, align 8, !tbaa !3
  %arrayidx131 = getelementptr inbounds i32* %53, i64 %indvars.iv
  %54 = load i32* %arrayidx131, align 4, !tbaa !0
  %add132 = add nsw i32 %54, %j.0207
  %idxprom133 = sext i32 %add132 to i64
  %55 = load i32** %42, align 8, !tbaa !3
  %arrayidx135 = getelementptr inbounds i32* %55, i64 %idxprom133
  store i32 %52, i32* %arrayidx135, align 4, !tbaa !0
  %inc136 = add nsw i32 %j.0207, 1
  %56 = load i32* %ng, align 4, !tbaa !0
  %cmp125 = icmp slt i32 %inc136, %56
  br i1 %cmp125, label %for.body127, label %for.cond.loopexit

if.end140:                                        ; preds = %if.else81, %for.cond.loopexit, %do.cond
  call void @ffclose(%struct._IO_FILE* %call) #5
  call void @llvm.lifetime.end(i64 4096, i8* %1) #2
  call void @llvm.lifetime.end(i64 4096, i8* %0) #2
  ret %struct.t_block* %2
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare i32 @get_a_line(%struct._IO_FILE*, i8*, i32) #1

; Function Attrs: optsize
declare i32 @get_header(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #1

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @rd_index(i8* %statfile, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i8** nocapture %grpnames) #0 {
entry:
  %gnames = alloca i8**, align 8
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 204, i32 %ngrps, i32 4) #5
  %0 = bitcast i8* %call to i32*
  %tobool = icmp eq i8* %statfile, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str15, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call1 = call %struct.t_block* @init_index(i8* %statfile, i8*** %gnames) #7
  %1 = load i8*** %gnames, align 8, !tbaa !3
  call fastcc void @rd_groups(%struct.t_block* %call1, i8** %1, i8** %grpnames, i32 %ngrps, i32* %isize, i32** %index, i32* %0) #7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @rd_groups(%struct.t_block* nocapture %grps, i8** nocapture %grpname, i8** nocapture %gnames, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i32* %grpnr) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 1
  %0 = load i32* %nr, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str19, i64 0, i64 0)) #5
  %.pre = load i32* %nr, align 4, !tbaa !0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %cmp2115 = icmp sgt i32 %1, 0
  br i1 %cmp2115, label %for.body.lr.ph, label %for.cond9.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %index4 = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 2
  br label %for.body

for.cond9.preheader:                              ; preds = %for.body, %for.cond.preheader
  %2 = phi i32 [ %1, %for.cond.preheader ], [ %9, %for.body ]
  %cmp10113 = icmp sgt i32 %ngrps, 0
  br i1 %cmp10113, label %for.body11.lr.ph, label %for.end71

for.body11.lr.ph:                                 ; preds = %for.cond9.preheader
  %index38 = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 2
  %a = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 4
  br label %for.body11

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv119 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next120, %for.body ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8** %grpname, i64 %indvars.iv119
  %4 = load i8** %arrayidx, align 8, !tbaa !3
  %indvars.iv.next120 = add i64 %indvars.iv119, 1
  %5 = load i32** %index4, align 8, !tbaa !3
  %arrayidx5 = getelementptr inbounds i32* %5, i64 %indvars.iv.next120
  %6 = load i32* %arrayidx5, align 4, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32* %5, i64 %indvars.iv119
  %7 = load i32* %arrayidx8, align 4, !tbaa !0
  %sub = sub nsw i32 %6, %7
  %8 = trunc i64 %indvars.iv119 to i32
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([35 x i8]* @.str20, i64 0, i64 0), i32 %8, i8* %4, i32 %sub) #5
  %9 = load i32* %nr, align 4, !tbaa !0
  %10 = trunc i64 %indvars.iv.next120 to i32
  %cmp2 = icmp slt i32 %10, %9
  br i1 %cmp2, label %for.body, label %for.cond9.preheader

for.body11:                                       ; preds = %for.inc69.for.body11_crit_edge, %for.body11.lr.ph
  %11 = phi i32 [ %2, %for.body11.lr.ph ], [ %.pre121, %for.inc69.for.body11_crit_edge ]
  %indvars.iv117 = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next118, %for.inc69.for.body11_crit_edge ]
  %cmp13 = icmp sgt i32 %11, 1
  br i1 %cmp13, label %do.body.preheader, label %if.else

do.body.preheader:                                ; preds = %for.body11
  %arrayidx16 = getelementptr inbounds i32* %grpnr, i64 %indvars.iv117
  br label %do.body

do.body.critedge:                                 ; preds = %do.body
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %13 = load i32* %nr, align 4, !tbaa !0
  %sub23.c = add nsw i32 %13, -1
  %call24.c = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), i32 0, i32 %sub23.c) #5
  br label %do.body

do.body:                                          ; preds = %do.body.critedge, %lor.rhs, %do.body.preheader
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str24, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %14) #2
  %call1.i = tail call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i32* %arrayidx16) #5
  %16 = load i32* %arrayidx16, align 4, !tbaa !0
  %cmp18 = icmp slt i32 %16, 0
  br i1 %cmp18, label %do.body.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %17 = load i32* %nr, align 4, !tbaa !0
  %cmp20 = icmp slt i32 %16, %17
  br i1 %cmp20, label %lor.rhs, label %do.cond.lor.rhs_crit_edge

do.cond.lor.rhs_crit_edge:                        ; preds = %lor.lhs.false
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %sub23 = add nsw i32 %17, -1
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), i32 0, i32 %sub23) #5
  %.pre122 = load i32* %nr, align 4, !tbaa !0
  br label %lor.rhs

lor.rhs:                                          ; preds = %do.cond.lor.rhs_crit_edge, %lor.lhs.false
  %19 = phi i32 [ %.pre122, %do.cond.lor.rhs_crit_edge ], [ %17, %lor.lhs.false ]
  %cmp28 = icmp slt i32 %16, %19
  br i1 %cmp28, label %if.end30, label %do.body

if.else:                                          ; preds = %for.body11
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str22, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %20)
  br label %if.end30

if.end30:                                         ; preds = %lor.rhs, %if.else
  %gnr1.0 = phi i32 [ 0, %if.else ], [ %16, %lor.rhs ]
  %idxprom31 = sext i32 %gnr1.0 to i64
  %arrayidx32 = getelementptr inbounds i8** %grpname, i64 %idxprom31
  %22 = load i8** %arrayidx32, align 8, !tbaa !3
  %call33 = tail call i8* @gmx_strdup(i8* %22) #5
  %arrayidx35 = getelementptr inbounds i8** %gnames, i64 %indvars.iv117
  store i8* %call33, i8** %arrayidx35, align 8, !tbaa !3
  %add36 = add nsw i32 %gnr1.0, 1
  %idxprom37 = sext i32 %add36 to i64
  %23 = load i32** %index38, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds i32* %23, i64 %idxprom37
  %24 = load i32* %arrayidx39, align 4, !tbaa !0
  %arrayidx42 = getelementptr inbounds i32* %23, i64 %idxprom31
  %25 = load i32* %arrayidx42, align 4, !tbaa !0
  %sub43 = sub nsw i32 %24, %25
  %arrayidx45 = getelementptr inbounds i32* %isize, i64 %indvars.iv117
  store i32 %sub43, i32* %arrayidx45, align 4, !tbaa !0
  %call48 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 191, i32 %sub43, i32 4) #5
  %26 = bitcast i8* %call48 to i32*
  %arrayidx50 = getelementptr inbounds i32** %index, i64 %indvars.iv117
  store i32* %26, i32** %arrayidx50, align 8, !tbaa !3
  %27 = load i32* %arrayidx45, align 4, !tbaa !0
  %cmp54111 = icmp sgt i32 %27, 0
  br i1 %cmp54111, label %for.body55.lr.ph, label %for.inc69

for.body55.lr.ph:                                 ; preds = %if.end30
  %28 = load i32** %index38, align 8, !tbaa !3
  %arrayidx58 = getelementptr inbounds i32* %28, i64 %idxprom31
  %29 = load i32** %a, align 8, !tbaa !3
  br label %for.body55

for.body55:                                       ; preds = %for.body55.lr.ph, %for.body55
  %indvars.iv = phi i64 [ 0, %for.body55.lr.ph ], [ %indvars.iv.next, %for.body55 ]
  %30 = load i32* %arrayidx58, align 4, !tbaa !0
  %31 = trunc i64 %indvars.iv to i32
  %add59 = add nsw i32 %30, %31
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds i32* %29, i64 %idxprom60
  %32 = load i32* %arrayidx61, align 4, !tbaa !0
  %arrayidx65 = getelementptr inbounds i32* %26, i64 %indvars.iv
  store i32 %32, i32* %arrayidx65, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %33 = load i32* %arrayidx45, align 4, !tbaa !0
  %34 = trunc i64 %indvars.iv.next to i32
  %cmp54 = icmp slt i32 %34, %33
  br i1 %cmp54, label %for.body55, label %for.inc69

for.inc69:                                        ; preds = %for.body55, %if.end30
  %indvars.iv.next118 = add i64 %indvars.iv117, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next118 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ngrps
  br i1 %exitcond, label %for.end71, label %for.inc69.for.body11_crit_edge

for.inc69.for.body11_crit_edge:                   ; preds = %for.inc69
  %.pre121 = load i32* %nr, align 4, !tbaa !0
  br label %for.body11

for.end71:                                        ; preds = %for.inc69, %for.cond9.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @rd_index_nrs(i8* %statfile, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i8** nocapture %grpnames, i32* %grpnr) #0 {
entry:
  %gnames = alloca i8**, align 8
  %tobool = icmp eq i8* %statfile, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str15, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = call %struct.t_block* @init_index(i8* %statfile, i8*** %gnames) #7
  %0 = load i8*** %gnames, align 8, !tbaa !3
  call fastcc void @rd_groups(%struct.t_block* %call, i8** %0, i8** %grpnames, i32 %ngrps, i32* %isize, i32** %index, i32* %grpnr) #7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @get_index(%struct.t_atoms* %atoms, i8* %fnm, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i8** nocapture %grpnames) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 231, i32 %ngrps, i32 4) #5
  %0 = bitcast i8* %call to i32*
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 232, i32 1, i32 8) #5
  %1 = bitcast i8* %call1 to i8***
  %cmp = icmp eq i8* %fnm, null
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call %struct.t_block* @init_index(i8* %fnm, i8*** %1) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 237, i32 1, i32 1056) #5
  %2 = bitcast i8* %call3 to %struct.t_block*
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 238, i32 1, i32 4) #5
  %3 = bitcast i8* %call4 to i32*
  %index5 = getelementptr inbounds i8* %call3, i64 1032
  %4 = bitcast i8* %index5 to i32**
  store i32* %3, i32** %4, align 8, !tbaa !3
  tail call void @analyse(%struct.t_atoms* %atoms, %struct.t_block* %2, i8*** %1, i32 0, i32 0) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %grps.0 = phi %struct.t_block* [ %call2, %if.then ], [ %2, %if.else ]
  %5 = load i8*** %1, align 8, !tbaa !3
  tail call fastcc void @rd_groups(%struct.t_block* %grps.0, i8** %5, i8** %grpnames, i32 %ngrps, i32* %isize, i32** %index, i32* %0) #7
  ret void
}

; Function Attrs: optsize
declare void @analyse(%struct.t_atoms*, %struct.t_block*, i8***, i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_scanf(i8* nocapture, ...) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
