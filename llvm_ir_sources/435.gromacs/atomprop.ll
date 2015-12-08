; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_prop = type { [10 x i8], [10 x i8], float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@get_mass.mass = internal global %struct.t_prop* null, align 8
@get_mass.nmass = internal global i32 0, align 4
@get_mass.maxmass = internal global i32 0, align 4
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [131 x i8] c"WARNING: masses will be determined based on residue and atom names,\0A         this can deviate from the real mass of the atom type\0A\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"atommass.dat\00", align 1
@debug = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [30 x i8] c"Mass of atom %s %s set to %g\0A\00", align 1
@get_vdw.vdwr = internal global %struct.t_prop* null, align 8
@get_vdw.nvdwr = internal global i32 0, align 4
@get_vdw.maxvdwr = internal global i32 0, align 4
@.str3 = private unnamed_addr constant [13 x i8] c"vdwradii.dat\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"Van der Waals radius of atom %s %s set to %g\0A\00", align 1
@get_dgsolv.dgs = internal global %struct.t_prop* null, align 8
@get_dgsolv.ndgs = internal global i32 0, align 4
@get_dgsolv.maxdgs = internal global i32 0, align 4
@.str5 = private unnamed_addr constant [11 x i8] c"dgsolv.dat\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"Eisenberg86a\00", align 1
@.str7 = private unnamed_addr constant [41 x i8] c"Atomic solvation factors in kJ/mol nm^2\0A\00", align 1
@.str8 = private unnamed_addr constant [42 x i8] c"Solvation factor of atom %s %s set to %g\0A\00", align 1
@.str9 = private unnamed_addr constant [7 x i8] c"*props\00", align 1
@.str10 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"atomname\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"AAA\00", align 1
@.str15 = private unnamed_addr constant [36 x i8] c"search: %4s %4s match: %4s %4s %8g\0A\00", align 1
@.str16 = private unnamed_addr constant [18 x i8] c"%10s  %10s  %10g\0A\00", align 1
@.str17 = private unnamed_addr constant [10 x i8] c"%s %s %lf\00", align 1
@.str18 = private unnamed_addr constant [29 x i8] c"ERROR in file %s at line %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @get_mass(i8* %resnm, i8* %atomnm) #0 {
entry:
  %m = alloca float, align 4
  %0 = load %struct.t_prop** @get_mass.mass, align 8, !tbaa !0
  %tobool = icmp eq %struct.t_prop* %0, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([131 x i8]* @.str, i64 0, i64 0), i64 130, i64 1, %struct._IO_FILE* %1)
  %call1 = call fastcc i32 @read_props(i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), %struct.t_prop** @get_mass.mass, i32* @get_mass.maxmass) #7
  store i32 %call1, i32* @get_mass.nmass, align 4, !tbaa !3
  %3 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool2 = icmp eq %struct._IO_FILE* %3, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.then
  %4 = load %struct.t_prop** @get_mass.mass, align 8, !tbaa !0
  call fastcc void @write_props(%struct._IO_FILE* %3, i32 %call1, %struct.t_prop* %4) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry, %if.then3
  %5 = load i32* @get_mass.nmass, align 4, !tbaa !3
  %6 = load %struct.t_prop** @get_mass.mass, align 8, !tbaa !0
  %call5 = call fastcc i32 @get_prop(float* %m, i8* %resnm, i8* %atomnm, i32 %5, %struct.t_prop* %6) #7
  %tobool6 = icmp eq i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  %.pre = load float* %m, align 4, !tbaa !4
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  store float 0x402805A1C0000000, float* %m, align 4, !tbaa !4
  call fastcc void @add_prop(float 0x402805A1C0000000, i8* %resnm, i8* %atomnm, i32* @get_mass.nmass, %struct.t_prop** @get_mass.mass, i32* @get_mass.maxmass) #7
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0), i8* %resnm, i8* %atomnm, double 0x402805A1C0000000) #8
  br label %if.end9

if.end9:                                          ; preds = %if.end4.if.end9_crit_edge, %if.then7
  %8 = phi float [ %.pre, %if.end4.if.end9_crit_edge ], [ 0x402805A1C0000000, %if.then7 ]
  ret float %8
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_props(i8* %propdata, %struct.t_prop** nocapture %props, i32* nocapture %maxprop) #0 {
entry:
  %line = alloca [4096 x i8], align 16
  %resname = alloca [10 x i8], align 1
  %atomname = alloca [10 x i8], align 1
  %pp = alloca double, align 8
  %i = alloca i32, align 4
  %0 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #6
  %call = call %struct._IO_FILE* @libopen(i8* %propdata) #8
  store %struct.t_prop* null, %struct.t_prop** %props, align 8, !tbaa !0
  store i32 0, i32* %maxprop, align 4, !tbaa !3
  store i32 0, i32* %i, align 4, !tbaa !3
  %call116 = call i32 @get_a_line(%struct._IO_FILE* %call, i8* %0, i32 4096) #8
  %tobool17 = icmp eq i32 %call116, 0
  br i1 %tobool17, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay3 = getelementptr inbounds [10 x i8]* %resname, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [10 x i8]* %atomname, i64 0, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call5 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i8* %arraydecay3, i8* %arraydecay4, double* %pp) #8
  %cmp = icmp eq i32 %call5, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %1 = load double* %pp, align 8, !tbaa !5
  %conv = fptrunc double %1 to float
  call fastcc void @add_prop(float %conv, i8* %arraydecay3, i8* %arraydecay4, i32* %i, %struct.t_prop** %props, i32* %maxprop) #7
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  %2 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool8 = icmp eq %struct._IO_FILE* %2, null
  br i1 %tobool8, label %while.cond.backedge, label %if.then9

if.then9:                                         ; preds = %if.else
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = load i32* %i, align 4, !tbaa !3
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([29 x i8]* @.str18, i64 0, i64 0), i8* %propdata, i32 %4) #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then9, %if.then, %if.else
  %call1 = call i32 @get_a_line(%struct._IO_FILE* %call, i8* %0, i32 4096) #8
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond.backedge
  %.pre = load i32* %i, align 4, !tbaa !3
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %5 = phi i32 [ %.pre, %while.cond.while.end_crit_edge ], [ 0, %entry ]
  call void @ffclose(%struct._IO_FILE* %call) #8
  call void @llvm.lifetime.end(i64 4096, i8* %0) #6
  ret i32 %5
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @write_props(%struct._IO_FILE* %fp, i32 %nprop, %struct.t_prop* %props) #0 {
entry:
  %tobool = icmp ne %struct._IO_FILE* %fp, null
  %cmp13 = icmp sgt i32 %nprop, 0
  %or.cond = and i1 %tobool, %cmp13
  br i1 %or.cond, label %for.body, label %if.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arraydecay = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 1, i64 0
  %arraydecay3 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 0, i64 0
  %prop = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 2
  %0 = load float* %prop, align 4, !tbaa !4
  %conv = fpext float %0 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str16, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay3, double %conv) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nprop
  br i1 %exitcond, label %if.end, label %for.body

if.end:                                           ; preds = %entry, %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @get_prop(float* nocapture %p, i8* %resname, i8* %atomnm, i32 %nprop, %struct.t_prop* %props) #0 {
entry:
  %0 = load i8* %atomnm, align 1, !tbaa !1
  %idxprom = sext i8 %0 to i64
  %call = tail call i16** @__ctype_b_loc() #9
  %1 = load i16** %call, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds i16* %1, i64 %idxprom
  %2 = load i16* %arrayidx1, align 2, !tbaa !6
  %and = and i16 %2, 2048
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = tail call i64 @strlen(i8* %atomnm) #10
  %add = add i64 %call3, 1
  %conv4 = trunc i64 %add to i32
  %call5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str10, i64 0, i64 0), i32 128, i32 %conv4, i32 1) #8
  %call7134 = tail call i64 @strlen(i8* %atomnm) #10
  %cmp135 = icmp ugt i64 %call7134, 1
  br i1 %cmp135, label %for.body, label %for.end

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %for.body ], [ 1, %if.then ]
  %i.0136 = phi i32 [ %inc, %for.body ], [ 1, %if.then ]
  %arrayidx10 = getelementptr inbounds i8* %atomnm, i64 %indvars.iv142
  %3 = load i8* %arrayidx10, align 1, !tbaa !1
  %4 = add nsw i64 %indvars.iv142, -1
  %arrayidx12 = getelementptr inbounds i8* %call5, i64 %4
  store i8 %3, i8* %arrayidx12, align 1, !tbaa !1
  %indvars.iv.next143 = add i64 %indvars.iv142, 1
  %inc = add nsw i32 %i.0136, 1
  %call7 = tail call i64 @strlen(i8* %atomnm) #10
  %cmp = icmp ult i64 %indvars.iv.next143, %call7
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = add i32 %i.0136, 2
  %phitmp140 = sext i32 %phitmp to i64
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.then
  %conv6.lcssa = phi i64 [ %indvars.iv.next143, %for.cond.for.end_crit_edge ], [ 1, %if.then ]
  %i.0.lcssa = phi i64 [ %phitmp140, %for.cond.for.end_crit_edge ], [ 2, %if.then ]
  %5 = load i8* %atomnm, align 1, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8* %call5, i64 %conv6.lcssa
  store i8 %5, i8* %arrayidx16, align 1, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8* %call5, i64 %i.0.lcssa
  store i8 0, i8* %arrayidx18, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %entry, %for.end
  %atomname.0 = phi i8* [ %call5, %for.end ], [ %atomnm, %entry ]
  %cmp20127 = icmp sgt i32 %nprop, 0
  br i1 %cmp20127, label %for.body22, label %for.end72

for.body22:                                       ; preds = %if.end, %for.inc70
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc70 ], [ 0, %if.end ]
  %mrlen.0131 = phi i32 [ %mrlen.1, %for.inc70 ], [ -3, %if.end ]
  %malen.0130 = phi i32 [ %malen.1, %for.inc70 ], [ -3, %if.end ]
  %j.0128 = phi i32 [ %j.1, %for.inc70 ], [ 0, %if.end ]
  %arraydecay = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 1, i64 0
  %call26 = tail call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #10
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.end55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body22
  %call33 = tail call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0)) #10
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.end55, label %if.else37

if.else37:                                        ; preds = %lor.lhs.false
  %call38 = tail call i32 @is_protein(i8* %resname) #8
  %tobool39 = icmp eq i32 %call38, 0
  br i1 %tobool39, label %if.else48, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else37
  %call44 = tail call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0)) #10
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.end55, label %if.else48

if.else48:                                        ; preds = %if.else37, %land.lhs.true
  %call53 = tail call fastcc i32 @dbcmp_len(i8* %resname, i8* %arraydecay) #7
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true, %for.body22, %lor.lhs.false, %if.else48
  %rlen.0 = phi i32 [ %call53, %if.else48 ], [ -2, %lor.lhs.false ], [ -2, %for.body22 ], [ -1, %land.lhs.true ]
  %arraydecay59 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 0, i64 0
  %call60 = tail call fastcc i32 @dbcmp_len(i8* %atomname.0, i8* %arraydecay59) #7
  %cmp61 = icmp slt i32 %call60, %malen.0130
  %cmp64 = icmp slt i32 %rlen.0, %mrlen.0131
  %or.cond = or i1 %cmp61, %cmp64
  br i1 %or.cond, label %for.inc70, label %if.then66

if.then66:                                        ; preds = %if.end55
  %prop = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 2
  %6 = load float* %prop, align 4, !tbaa !4
  store float %6, float* %p, align 4, !tbaa !4
  %7 = trunc i64 %indvars.iv to i32
  br label %for.inc70

for.inc70:                                        ; preds = %if.end55, %if.then66
  %j.1 = phi i32 [ %7, %if.then66 ], [ %j.0128, %if.end55 ]
  %malen.1 = phi i32 [ %call60, %if.then66 ], [ %malen.0130, %if.end55 ]
  %mrlen.1 = phi i32 [ %rlen.0, %if.then66 ], [ %mrlen.0131, %if.end55 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nprop
  br i1 %exitcond, label %for.end72, label %for.body22

for.end72:                                        ; preds = %for.inc70, %if.end
  %mrlen.0.lcssa = phi i32 [ -3, %if.end ], [ %mrlen.1, %for.inc70 ]
  %malen.0.lcssa = phi i32 [ -3, %if.end ], [ %malen.1, %for.inc70 ]
  %j.0.lcssa = phi i32 [ 0, %if.end ], [ %j.1, %for.inc70 ]
  %8 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool73 = icmp eq %struct._IO_FILE* %8, null
  br i1 %tobool73, label %if.end85, label %if.then74

if.then74:                                        ; preds = %for.end72
  %idxprom75 = sext i32 %j.0.lcssa to i64
  %arraydecay78 = getelementptr inbounds %struct.t_prop* %props, i64 %idxprom75, i32 1, i64 0
  %arraydecay82 = getelementptr inbounds %struct.t_prop* %props, i64 %idxprom75, i32 0, i64 0
  %9 = load float* %p, align 4, !tbaa !4
  %conv83 = fpext float %9 to double
  %call84 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([36 x i8]* @.str15, i64 0, i64 0), i8* %resname, i8* %atomname.0, i8* %arraydecay78, i8* %arraydecay82, double %conv83) #8
  br label %if.end85

if.end85:                                         ; preds = %for.end72, %if.then74
  %cmp88 = icmp ne i32 %mrlen.0.lcssa, -3
  %not.cmp86 = icmp ne i32 %malen.0.lcssa, -3
  %.cmp88 = and i1 %cmp88, %not.cmp86
  %land.ext = zext i1 %.cmp88 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @add_prop(float %p, i8* nocapture %resnm, i8* nocapture %atomnm, i32* nocapture %nprop, %struct.t_prop** nocapture %props, i32* nocapture %maxprop) #0 {
entry:
  %0 = load i32* %nprop, align 4, !tbaa !3
  %1 = load i32* %maxprop, align 4, !tbaa !3
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre19 = load %struct.t_prop** %props, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %add = add nsw i32 %1, 10
  store i32 %add, i32* %maxprop, align 4, !tbaa !3
  %2 = load %struct.t_prop** %props, align 8, !tbaa !0
  %3 = getelementptr inbounds %struct.t_prop* %2, i64 0, i32 0, i64 0
  %mul = mul i32 %add, 24
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str10, i64 0, i64 0), i32 56, i8* %3, i32 %mul) #8
  %4 = bitcast i8* %call to %struct.t_prop*
  store %struct.t_prop* %4, %struct.t_prop** %props, align 8, !tbaa !0
  %.pre = load i32* %nprop, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %struct.t_prop* [ %.pre19, %entry.if.end_crit_edge ], [ %4, %if.then ]
  %6 = phi i32 [ %0, %entry.if.end_crit_edge ], [ %.pre, %if.then ]
  %idxprom = sext i32 %6 to i64
  %arraydecay = getelementptr inbounds %struct.t_prop* %5, i64 %idxprom, i32 0, i64 0
  %call2 = tail call i8* @strcpy(i8* %arraydecay, i8* %atomnm) #8
  %7 = load i32* %nprop, align 4, !tbaa !3
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.t_prop** %props, align 8, !tbaa !0
  %arraydecay5 = getelementptr inbounds %struct.t_prop* %8, i64 %idxprom3, i32 1, i64 0
  %call6 = tail call i8* @strcpy(i8* %arraydecay5, i8* %resnm) #8
  %9 = load i32* %nprop, align 4, !tbaa !3
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.t_prop** %props, align 8, !tbaa !0
  %prop = getelementptr inbounds %struct.t_prop* %10, i64 %idxprom7, i32 2
  store float %p, float* %prop, align 4, !tbaa !4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %nprop, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @get_vdw(i8* %resnm, i8* %atomnm, float %default_r) #0 {
entry:
  %r = alloca float, align 4
  %0 = load %struct.t_prop** @get_vdw.vdwr, align 8, !tbaa !0
  %tobool = icmp eq %struct.t_prop* %0, null
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @read_props(i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), %struct.t_prop** @get_vdw.vdwr, i32* @get_vdw.maxvdwr) #7
  store i32 %call, i32* @get_vdw.nvdwr, align 4, !tbaa !3
  %1 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool1 = icmp eq %struct._IO_FILE* %1, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.then
  %2 = load %struct.t_prop** @get_vdw.vdwr, align 8, !tbaa !0
  call fastcc void @write_props(%struct._IO_FILE* %1, i32 %call, %struct.t_prop* %2) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry, %if.then2
  %3 = load i32* @get_vdw.nvdwr, align 4, !tbaa !3
  %4 = load %struct.t_prop** @get_vdw.vdwr, align 8, !tbaa !0
  %call4 = call fastcc i32 @get_prop(float* %r, i8* %resnm, i8* %atomnm, i32 %3, %struct.t_prop* %4) #7
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end3.if.end8_crit_edge

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  %.pre = load float* %r, align 4, !tbaa !4
  br label %if.end8

if.then6:                                         ; preds = %if.end3
  store float %default_r, float* %r, align 4, !tbaa !4
  call fastcc void @add_prop(float %default_r, i8* %resnm, i8* %atomnm, i32* @get_vdw.nvdwr, %struct.t_prop** @get_vdw.vdwr, i32* @get_vdw.maxvdwr) #7
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv = fpext float %default_r to double
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), i8* %resnm, i8* %atomnm, double %conv) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end3.if.end8_crit_edge, %if.then6
  %6 = phi float [ %.pre, %if.end3.if.end8_crit_edge ], [ %default_r, %if.then6 ]
  ret float %6
}

; Function Attrs: nounwind optsize uwtable
define float @get_dgsolv(i8* %resnm, i8* %atomnm, float %default_s) #0 {
entry:
  %r = alloca float, align 4
  %0 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !tbaa !0
  %tobool = icmp eq %struct.t_prop* %0, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @read_props(i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), %struct.t_prop** @get_dgsolv.dgs, i32* @get_dgsolv.maxdgs) #7
  store i32 %call, i32* @get_dgsolv.ndgs, align 4, !tbaa !3
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  call void @please_cite(%struct._IO_FILE* %1, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0)) #8
  %2 = load i32* @get_dgsolv.ndgs, align 4, !tbaa !3
  %cmp18 = icmp sgt i32 %2, 0
  br i1 %cmp18, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %3 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %prop = getelementptr inbounds %struct.t_prop* %3, i64 %indvars.iv, i32 2
  %4 = load float* %prop, align 4, !tbaa !4
  %conv = fpext float %4 to double
  %mul = fmul double %conv, 4.184000e+02
  %conv1 = fptrunc double %mul to float
  store float %conv1, float* %prop, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %5, %2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.then
  %6 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool2 = icmp eq %struct._IO_FILE* %6, null
  br i1 %tobool2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %for.end
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str7, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %6)
  %8 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %9 = load i32* @get_dgsolv.ndgs, align 4, !tbaa !3
  %10 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !tbaa !0
  call fastcc void @write_props(%struct._IO_FILE* %8, i32 %9, %struct.t_prop* %10) #7
  br label %if.end5

if.end5:                                          ; preds = %for.end, %entry, %if.then3
  %11 = load i32* @get_dgsolv.ndgs, align 4, !tbaa !3
  %12 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !tbaa !0
  %call6 = call fastcc i32 @get_prop(float* %r, i8* %resnm, i8* %atomnm, i32 %11, %struct.t_prop* %12) #7
  %tobool7 = icmp eq i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  %.pre = load float* %r, align 4, !tbaa !4
  br label %if.end11

if.then8:                                         ; preds = %if.end5
  store float %default_s, float* %r, align 4, !tbaa !4
  call fastcc void @add_prop(float %default_s, i8* %resnm, i8* %atomnm, i32* @get_dgsolv.ndgs, %struct.t_prop** @get_dgsolv.dgs, i32* @get_dgsolv.maxdgs) #7
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv9 = fpext float %default_s to double
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i8* %resnm, i8* %atomnm, double %conv9) #8
  br label %if.end11

if.end11:                                         ; preds = %if.end5.if.end11_crit_edge, %if.then8
  %14 = phi float [ %.pre, %if.end5.if.end11_crit_edge ], [ %default_s, %if.then8 ]
  ret float %14
}

; Function Attrs: optsize
declare void @please_cite(%struct._IO_FILE*, i8*) #2

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @is_protein(i8*) #2

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @dbcmp_len(i8* nocapture %search, i8* nocapture %database) #5 {
entry:
  %0 = load i8* %search, align 1, !tbaa !1
  %tobool23 = icmp eq i8 %0, 0
  br i1 %tobool23, label %while.end, label %land.lhs.true

while.cond:                                       ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds i8* %search, i64 %indvars.iv.next
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %while.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry, %while.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ]
  %2 = phi i8 [ %1, %while.cond ], [ %0, %entry ]
  %i.024 = phi i32 [ %inc, %while.cond ], [ 0, %entry ]
  %arrayidx2 = getelementptr inbounds i8* %database, i64 %indvars.iv
  %3 = load i8* %arrayidx2, align 1, !tbaa !1
  %cmp = icmp eq i8 %2, %3
  %not.tobool4 = icmp ne i8 %3, 0
  %.cmp = and i1 %cmp, %not.tobool4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.024, 1
  br i1 %.cmp, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond, %land.lhs.true, %entry
  %idxprom.lcssa = phi i64 [ 0, %entry ], [ %indvars.iv, %land.lhs.true ], [ %indvars.iv.next, %while.cond ]
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %i.024, %land.lhs.true ], [ %inc, %while.cond ]
  %arrayidx13 = getelementptr inbounds i8* %database, i64 %idxprom.lcssa
  %4 = load i8* %arrayidx13, align 1, !tbaa !1
  %tobool14 = icmp eq i8 %4, 0
  %i.0. = select i1 %tobool14, i32 %i.0.lcssa, i32 -3
  ret i32 %i.0.
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare %struct._IO_FILE* @libopen(i8*) #2

; Function Attrs: optsize
declare i32 @get_a_line(%struct._IO_FILE*, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone }
attributes #10 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
!6 = metadata !{metadata !"short", metadata !1}
