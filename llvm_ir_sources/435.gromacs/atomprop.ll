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
  call void @llvm.dbg.value(metadata !{i8* %resnm}, i64 0, metadata !29), !dbg !184
  call void @llvm.dbg.value(metadata !{i8* %atomnm}, i64 0, metadata !30), !dbg !184
  call void @llvm.dbg.declare(metadata !{float* %m}, metadata !31), !dbg !185
  %0 = load %struct.t_prop** @get_mass.mass, align 8, !dbg !186, !tbaa !187
  %tobool = icmp eq %struct.t_prop* %0, null, !dbg !186
  br i1 %tobool, label %if.then, label %if.end4, !dbg !186

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !190, !tbaa !187
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([131 x i8]* @.str, i64 0, i64 0), i64 130, i64 1, %struct._IO_FILE* %1), !dbg !190
  %call1 = call fastcc i32 @read_props(i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), %struct.t_prop** @get_mass.mass, i32* @get_mass.maxmass) #8, !dbg !192
  store i32 %call1, i32* @get_mass.nmass, align 4, !dbg !192, !tbaa !193
  %3 = load %struct._IO_FILE** @debug, align 8, !dbg !194, !tbaa !187
  %tobool2 = icmp eq %struct._IO_FILE* %3, null, !dbg !194
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !194

if.then3:                                         ; preds = %if.then
  %4 = load %struct.t_prop** @get_mass.mass, align 8, !dbg !195, !tbaa !187
  call fastcc void @write_props(%struct._IO_FILE* %3, i32 %call1, %struct.t_prop* %4) #8, !dbg !195
  br label %if.end4, !dbg !195

if.end4:                                          ; preds = %if.then, %entry, %if.then3
  %5 = load i32* @get_mass.nmass, align 4, !dbg !196, !tbaa !193
  %6 = load %struct.t_prop** @get_mass.mass, align 8, !dbg !196, !tbaa !187
  %call5 = call fastcc i32 @get_prop(float* %m, i8* %resnm, i8* %atomnm, i32 %5, %struct.t_prop* %6) #8, !dbg !196
  %tobool6 = icmp eq i32 %call5, 0, !dbg !196
  br i1 %tobool6, label %if.then7, label %if.end4.if.end9_crit_edge, !dbg !196

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @llvm.dbg.value(metadata !{float* %m}, i64 0, metadata !31), !dbg !197
  %.pre = load float* %m, align 4, !dbg !197, !tbaa !198
  br label %if.end9, !dbg !196

if.then7:                                         ; preds = %if.end4
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !31), !dbg !200
  store float 0x402805A1C0000000, float* %m, align 4, !dbg !200, !tbaa !198
  call fastcc void @add_prop(float 0x402805A1C0000000, i8* %resnm, i8* %atomnm, i32* @get_mass.nmass, %struct.t_prop** @get_mass.mass, i32* @get_mass.maxmass) #8, !dbg !202
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !203, !tbaa !187
  call void @llvm.dbg.value(metadata !{float* %m}, i64 0, metadata !31), !dbg !203
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0), i8* %resnm, i8* %atomnm, double 0x402805A1C0000000) #9, !dbg !203
  br label %if.end9, !dbg !204

if.end9:                                          ; preds = %if.end4.if.end9_crit_edge, %if.then7
  %8 = phi float [ %.pre, %if.end4.if.end9_crit_edge ], [ 0x402805A1C0000000, %if.then7 ]
  call void @llvm.dbg.value(metadata !{float* %m}, i64 0, metadata !31), !dbg !197
  ret float %8, !dbg !197
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_props(i8* %propdata, %struct.t_prop** nocapture %props, i32* nocapture %maxprop) #0 {
entry:
  %line = alloca [4096 x i8], align 16
  %resname = alloca [10 x i8], align 1
  %atomname = alloca [10 x i8], align 1
  %pp = alloca double, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %propdata}, i64 0, metadata !161), !dbg !205
  call void @llvm.dbg.value(metadata !{%struct.t_prop** %props}, i64 0, metadata !162), !dbg !205
  call void @llvm.dbg.value(metadata !{i32* %maxprop}, i64 0, metadata !163), !dbg !205
  %0 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0, !dbg !206
  call void @llvm.lifetime.start(i64 4096, i8* %0) #7, !dbg !206
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %line}, metadata !165), !dbg !206
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %resname}, metadata !169), !dbg !206
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %atomname}, metadata !170), !dbg !206
  call void @llvm.dbg.declare(metadata !{double* %pp}, metadata !171), !dbg !207
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !173), !dbg !208
  %call = call %struct._IO_FILE* @libopen(i8* %propdata) #9, !dbg !209
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !164), !dbg !209
  store %struct.t_prop* null, %struct.t_prop** %props, align 8, !dbg !210, !tbaa !187
  store i32 0, i32* %maxprop, align 4, !dbg !211, !tbaa !193
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !173), !dbg !212
  store i32 0, i32* %i, align 4, !dbg !212, !tbaa !193
  %call116 = call i32 @get_a_line(%struct._IO_FILE* %call, i8* %0, i32 4096) #9, !dbg !213
  %tobool17 = icmp eq i32 %call116, 0, !dbg !213
  br i1 %tobool17, label %while.end, label %while.body.lr.ph, !dbg !213

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay3 = getelementptr inbounds [10 x i8]* %resname, i64 0, i64 0, !dbg !214
  %arraydecay4 = getelementptr inbounds [10 x i8]* %atomname, i64 0, i64 0, !dbg !214
  br label %while.body, !dbg !213

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call5 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i8* %arraydecay3, i8* %arraydecay4, double* %pp) #9, !dbg !214
  %cmp = icmp eq i32 %call5, 3, !dbg !214
  br i1 %cmp, label %if.then, label %if.else, !dbg !214

if.then:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata !{double* %pp}, i64 0, metadata !171), !dbg !216
  %1 = load double* %pp, align 8, !dbg !216, !tbaa !217
  %conv = fptrunc double %1 to float, !dbg !216
  call fastcc void @add_prop(float %conv, i8* %arraydecay3, i8* %arraydecay4, i32* %i, %struct.t_prop** %props, i32* %maxprop) #8, !dbg !216
  br label %while.cond.backedge, !dbg !216

if.else:                                          ; preds = %while.body
  %2 = load %struct._IO_FILE** @debug, align 8, !dbg !218, !tbaa !187
  %tobool8 = icmp eq %struct._IO_FILE* %2, null, !dbg !218
  br i1 %tobool8, label %while.cond.backedge, label %if.then9, !dbg !218

if.then9:                                         ; preds = %if.else
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !219, !tbaa !187
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !173), !dbg !219
  %4 = load i32* %i, align 4, !dbg !219, !tbaa !193
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([29 x i8]* @.str18, i64 0, i64 0), i8* %propdata, i32 %4) #9, !dbg !219
  br label %while.cond.backedge, !dbg !219

while.cond.backedge:                              ; preds = %if.then9, %if.then, %if.else
  %call1 = call i32 @get_a_line(%struct._IO_FILE* %call, i8* %0, i32 4096) #9, !dbg !213
  %tobool = icmp eq i32 %call1, 0, !dbg !213
  br i1 %tobool, label %while.cond.while.end_crit_edge, label %while.body, !dbg !213

while.cond.while.end_crit_edge:                   ; preds = %while.cond.backedge
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !173), !dbg !220
  %.pre = load i32* %i, align 4, !dbg !220, !tbaa !193
  br label %while.end, !dbg !213

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %5 = phi i32 [ %.pre, %while.cond.while.end_crit_edge ], [ 0, %entry ]
  call void @ffclose(%struct._IO_FILE* %call) #9, !dbg !221
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !173), !dbg !220
  call void @llvm.lifetime.end(i64 4096, i8* %0) #7, !dbg !222
  ret i32 %5, !dbg !222
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @write_props(%struct._IO_FILE* %fp, i32 %nprop, %struct.t_prop* %props) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !153), !dbg !223
  tail call void @llvm.dbg.value(metadata !{i32 %nprop}, i64 0, metadata !154), !dbg !223
  tail call void @llvm.dbg.value(metadata !{%struct.t_prop* %props}, i64 0, metadata !155), !dbg !223
  %tobool = icmp ne %struct._IO_FILE* %fp, null, !dbg !224
  %cmp13 = icmp sgt i32 %nprop, 0, !dbg !225
  %or.cond = and i1 %tobool, %cmp13, !dbg !224
  br i1 %or.cond, label %for.body, label %if.end, !dbg !224

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arraydecay = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 1, i64 0, !dbg !227
  %arraydecay3 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 0, i64 0, !dbg !227
  %prop = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 2, !dbg !227
  %0 = load float* %prop, align 4, !dbg !227, !tbaa !198
  %conv = fpext float %0 to double, !dbg !227
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str16, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay3, double %conv) #9, !dbg !227
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !225
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !225
  %exitcond = icmp eq i32 %lftr.wideiv, %nprop, !dbg !225
  br i1 %exitcond, label %if.end, label %for.body, !dbg !225

if.end:                                           ; preds = %entry, %for.body
  ret void, !dbg !228
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @get_prop(float* nocapture %p, i8* %resname, i8* %atomnm, i32 %nprop, %struct.t_prop* %props) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %p}, i64 0, metadata !75), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i8* %resname}, i64 0, metadata !76), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i8* %atomnm}, i64 0, metadata !77), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i32 %nprop}, i64 0, metadata !78), !dbg !230
  tail call void @llvm.dbg.value(metadata !{%struct.t_prop* %props}, i64 0, metadata !79), !dbg !230
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !81), !dbg !231
  tail call void @llvm.dbg.value(metadata !232, i64 0, metadata !84), !dbg !233
  tail call void @llvm.dbg.value(metadata !232, i64 0, metadata !85), !dbg !234
  %0 = load i8* %atomnm, align 1, !dbg !235, !tbaa !188
  %idxprom = sext i8 %0 to i64, !dbg !235
  %call = tail call i16** @__ctype_b_loc() #10, !dbg !235
  %1 = load i16** %call, align 8, !dbg !235, !tbaa !187
  %arrayidx1 = getelementptr inbounds i16* %1, i64 %idxprom, !dbg !235
  %2 = load i16* %arrayidx1, align 2, !dbg !235, !tbaa !236
  %and = and i16 %2, 2048, !dbg !235
  %tobool = icmp eq i16 %and, 0, !dbg !235
  br i1 %tobool, label %if.end, label %if.then, !dbg !235

if.then:                                          ; preds = %entry
  %call3 = tail call i64 @strlen(i8* %atomnm) #11, !dbg !237
  %add = add i64 %call3, 1, !dbg !237
  %conv4 = trunc i64 %add to i32, !dbg !237
  %call5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str10, i64 0, i64 0), i32 128, i32 %conv4, i32 1) #9, !dbg !237
  tail call void @llvm.dbg.value(metadata !{i8* %call5}, i64 0, metadata !86), !dbg !237
  tail call void @llvm.dbg.value(metadata !239, i64 0, metadata !80), !dbg !240
  %call7134 = tail call i64 @strlen(i8* %atomnm) #11, !dbg !240
  %cmp135 = icmp ugt i64 %call7134, 1, !dbg !240
  br i1 %cmp135, label %for.body, label %for.end, !dbg !240

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %for.body ], [ 1, %if.then ]
  %i.0136 = phi i32 [ %inc, %for.body ], [ 1, %if.then ]
  %arrayidx10 = getelementptr inbounds i8* %atomnm, i64 %indvars.iv142, !dbg !242
  %3 = load i8* %arrayidx10, align 1, !dbg !242, !tbaa !188
  %4 = add nsw i64 %indvars.iv142, -1, !dbg !242
  %arrayidx12 = getelementptr inbounds i8* %call5, i64 %4, !dbg !242
  store i8 %3, i8* %arrayidx12, align 1, !dbg !242, !tbaa !188
  %indvars.iv.next143 = add i64 %indvars.iv142, 1, !dbg !240
  %inc = add nsw i32 %i.0136, 1, !dbg !240
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !80), !dbg !240
  %call7 = tail call i64 @strlen(i8* %atomnm) #11, !dbg !240
  %cmp = icmp ult i64 %indvars.iv.next143, %call7, !dbg !240
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge, !dbg !240

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = add i32 %i.0136, 2, !dbg !240
  %phitmp140 = sext i32 %phitmp to i64, !dbg !240
  br label %for.end, !dbg !240

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.then
  %conv6.lcssa = phi i64 [ %indvars.iv.next143, %for.cond.for.end_crit_edge ], [ 1, %if.then ]
  %i.0.lcssa = phi i64 [ %phitmp140, %for.cond.for.end_crit_edge ], [ 2, %if.then ]
  %5 = load i8* %atomnm, align 1, !dbg !243, !tbaa !188
  %arrayidx16 = getelementptr inbounds i8* %call5, i64 %conv6.lcssa, !dbg !243
  store i8 %5, i8* %arrayidx16, align 1, !dbg !243, !tbaa !188
  %arrayidx18 = getelementptr inbounds i8* %call5, i64 %i.0.lcssa, !dbg !244
  store i8 0, i8* %arrayidx18, align 1, !dbg !244, !tbaa !188
  br label %if.end, !dbg !245

if.end:                                           ; preds = %entry, %for.end
  %atomname.0 = phi i8* [ %call5, %for.end ], [ %atomnm, %entry ]
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !80), !dbg !246
  %cmp20127 = icmp sgt i32 %nprop, 0, !dbg !246
  br i1 %cmp20127, label %for.body22, label %for.end72, !dbg !246

for.body22:                                       ; preds = %if.end, %for.inc70
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc70 ], [ 0, %if.end ]
  %mrlen.0131 = phi i32 [ %mrlen.1, %for.inc70 ], [ -3, %if.end ]
  %malen.0130 = phi i32 [ %malen.1, %for.inc70 ], [ -3, %if.end ]
  %j.0128 = phi i32 [ %j.1, %for.inc70 ], [ 0, %if.end ]
  %arraydecay = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 1, i64 0, !dbg !248
  %call26 = tail call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #11, !dbg !248
  %cmp27 = icmp eq i32 %call26, 0, !dbg !248
  br i1 %cmp27, label %if.end55, label %lor.lhs.false, !dbg !248

lor.lhs.false:                                    ; preds = %for.body22
  %call33 = tail call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0)) #11, !dbg !250
  %cmp34 = icmp eq i32 %call33, 0, !dbg !250
  br i1 %cmp34, label %if.end55, label %if.else37, !dbg !250

if.else37:                                        ; preds = %lor.lhs.false
  %call38 = tail call i32 @is_protein(i8* %resname) #9, !dbg !251
  %tobool39 = icmp eq i32 %call38, 0, !dbg !251
  br i1 %tobool39, label %if.else48, label %land.lhs.true, !dbg !251

land.lhs.true:                                    ; preds = %if.else37
  %call44 = tail call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0)) #11, !dbg !251
  %cmp45 = icmp eq i32 %call44, 0, !dbg !251
  br i1 %cmp45, label %if.end55, label %if.else48, !dbg !251

if.else48:                                        ; preds = %if.else37, %land.lhs.true
  %call53 = tail call fastcc i32 @dbcmp_len(i8* %resname, i8* %arraydecay) #8, !dbg !252
  tail call void @llvm.dbg.value(metadata !{i32 %call53}, i64 0, metadata !83), !dbg !252
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true, %for.body22, %lor.lhs.false, %if.else48
  %rlen.0 = phi i32 [ %call53, %if.else48 ], [ -2, %lor.lhs.false ], [ -2, %for.body22 ], [ -1, %land.lhs.true ]
  %arraydecay59 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 0, i64 0, !dbg !254
  %call60 = tail call fastcc i32 @dbcmp_len(i8* %atomname.0, i8* %arraydecay59) #8, !dbg !254
  tail call void @llvm.dbg.value(metadata !{i32 %call60}, i64 0, metadata !82), !dbg !254
  %cmp61 = icmp slt i32 %call60, %malen.0130, !dbg !255
  %cmp64 = icmp slt i32 %rlen.0, %mrlen.0131, !dbg !255
  %or.cond = or i1 %cmp61, %cmp64, !dbg !255
  br i1 %or.cond, label %for.inc70, label %if.then66, !dbg !255

if.then66:                                        ; preds = %if.end55
  tail call void @llvm.dbg.value(metadata !{i32 %call60}, i64 0, metadata !84), !dbg !256
  tail call void @llvm.dbg.value(metadata !{i32 %rlen.0}, i64 0, metadata !85), !dbg !258
  %prop = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 2, !dbg !259
  %6 = load float* %prop, align 4, !dbg !259, !tbaa !198
  store float %6, float* %p, align 4, !dbg !259, !tbaa !198
  tail call void @llvm.dbg.value(metadata !260, i64 0, metadata !81), !dbg !261
  %7 = trunc i64 %indvars.iv to i32, !dbg !262
  br label %for.inc70, !dbg !262

for.inc70:                                        ; preds = %if.end55, %if.then66
  %j.1 = phi i32 [ %7, %if.then66 ], [ %j.0128, %if.end55 ]
  %malen.1 = phi i32 [ %call60, %if.then66 ], [ %malen.0130, %if.end55 ]
  %mrlen.1 = phi i32 [ %rlen.0, %if.then66 ], [ %mrlen.0131, %if.end55 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !246
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !246
  %exitcond = icmp eq i32 %lftr.wideiv, %nprop, !dbg !246
  br i1 %exitcond, label %for.end72, label %for.body22, !dbg !246

for.end72:                                        ; preds = %for.inc70, %if.end
  %mrlen.0.lcssa = phi i32 [ -3, %if.end ], [ %mrlen.1, %for.inc70 ]
  %malen.0.lcssa = phi i32 [ -3, %if.end ], [ %malen.1, %for.inc70 ]
  %j.0.lcssa = phi i32 [ 0, %if.end ], [ %j.1, %for.inc70 ]
  %8 = load %struct._IO_FILE** @debug, align 8, !dbg !263, !tbaa !187
  %tobool73 = icmp eq %struct._IO_FILE* %8, null, !dbg !263
  br i1 %tobool73, label %if.end85, label %if.then74, !dbg !263

if.then74:                                        ; preds = %for.end72
  %idxprom75 = sext i32 %j.0.lcssa to i64, !dbg !264
  %arraydecay78 = getelementptr inbounds %struct.t_prop* %props, i64 %idxprom75, i32 1, i64 0, !dbg !264
  %arraydecay82 = getelementptr inbounds %struct.t_prop* %props, i64 %idxprom75, i32 0, i64 0, !dbg !264
  %9 = load float* %p, align 4, !dbg !264, !tbaa !198
  %conv83 = fpext float %9 to double, !dbg !264
  %call84 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([36 x i8]* @.str15, i64 0, i64 0), i8* %resname, i8* %atomname.0, i8* %arraydecay78, i8* %arraydecay82, double %conv83) #9, !dbg !264
  br label %if.end85, !dbg !264

if.end85:                                         ; preds = %for.end72, %if.then74
  %cmp88 = icmp ne i32 %mrlen.0.lcssa, -3, !dbg !265
  %not.cmp86 = icmp ne i32 %malen.0.lcssa, -3, !dbg !265
  %.cmp88 = and i1 %cmp88, %not.cmp86, !dbg !265
  %land.ext = zext i1 %.cmp88 to i32
  ret i32 %land.ext, !dbg !266
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @add_prop(float %p, i8* nocapture %resnm, i8* nocapture %atomnm, i32* nocapture %nprop, %struct.t_prop** nocapture %props, i32* nocapture %maxprop) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %p}, i64 0, metadata !64), !dbg !267
  tail call void @llvm.dbg.value(metadata !{i8* %resnm}, i64 0, metadata !65), !dbg !267
  tail call void @llvm.dbg.value(metadata !{i8* %atomnm}, i64 0, metadata !66), !dbg !267
  tail call void @llvm.dbg.value(metadata !{i32* %nprop}, i64 0, metadata !67), !dbg !268
  tail call void @llvm.dbg.value(metadata !{%struct.t_prop** %props}, i64 0, metadata !68), !dbg !268
  tail call void @llvm.dbg.value(metadata !{i32* %maxprop}, i64 0, metadata !69), !dbg !268
  %0 = load i32* %nprop, align 4, !dbg !269, !tbaa !193
  %1 = load i32* %maxprop, align 4, !dbg !269, !tbaa !193
  %cmp = icmp slt i32 %0, %1, !dbg !269
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then, !dbg !269

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre19 = load %struct.t_prop** %props, align 8, !dbg !270, !tbaa !187
  br label %if.end, !dbg !269

if.then:                                          ; preds = %entry
  %add = add nsw i32 %1, 10, !dbg !271
  store i32 %add, i32* %maxprop, align 4, !dbg !271, !tbaa !193
  %2 = load %struct.t_prop** %props, align 8, !dbg !273, !tbaa !187
  %3 = getelementptr inbounds %struct.t_prop* %2, i64 0, i32 0, i64 0, !dbg !273
  %mul = mul i32 %add, 24, !dbg !273
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str10, i64 0, i64 0), i32 56, i8* %3, i32 %mul) #9, !dbg !273
  %4 = bitcast i8* %call to %struct.t_prop*, !dbg !273
  store %struct.t_prop* %4, %struct.t_prop** %props, align 8, !dbg !273, !tbaa !187
  %.pre = load i32* %nprop, align 4, !dbg !270, !tbaa !193
  br label %if.end, !dbg !274

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi %struct.t_prop* [ %.pre19, %entry.if.end_crit_edge ], [ %4, %if.then ]
  %6 = phi i32 [ %0, %entry.if.end_crit_edge ], [ %.pre, %if.then ]
  %idxprom = sext i32 %6 to i64, !dbg !270
  %arraydecay = getelementptr inbounds %struct.t_prop* %5, i64 %idxprom, i32 0, i64 0, !dbg !270
  %call2 = tail call i8* @strcpy(i8* %arraydecay, i8* %atomnm) #9, !dbg !270
  %7 = load i32* %nprop, align 4, !dbg !275, !tbaa !193
  %idxprom3 = sext i32 %7 to i64, !dbg !275
  %8 = load %struct.t_prop** %props, align 8, !dbg !275, !tbaa !187
  %arraydecay5 = getelementptr inbounds %struct.t_prop* %8, i64 %idxprom3, i32 1, i64 0, !dbg !275
  %call6 = tail call i8* @strcpy(i8* %arraydecay5, i8* %resnm) #9, !dbg !275
  %9 = load i32* %nprop, align 4, !dbg !276, !tbaa !193
  %idxprom7 = sext i32 %9 to i64, !dbg !276
  %10 = load %struct.t_prop** %props, align 8, !dbg !276, !tbaa !187
  %prop = getelementptr inbounds %struct.t_prop* %10, i64 %idxprom7, i32 2, !dbg !276
  store float %p, float* %prop, align 4, !dbg !276, !tbaa !198
  %inc = add nsw i32 %9, 1, !dbg !277
  store i32 %inc, i32* %nprop, align 4, !dbg !277, !tbaa !193
  ret void, !dbg !278
}

; Function Attrs: nounwind optsize uwtable
define float @get_vdw(i8* %resnm, i8* %atomnm, float %default_r) #0 {
entry:
  %r = alloca float, align 4
  call void @llvm.dbg.value(metadata !{i8* %resnm}, i64 0, metadata !36), !dbg !279
  call void @llvm.dbg.value(metadata !{i8* %atomnm}, i64 0, metadata !37), !dbg !279
  call void @llvm.dbg.value(metadata !{float %default_r}, i64 0, metadata !38), !dbg !279
  call void @llvm.dbg.declare(metadata !{float* %r}, metadata !39), !dbg !280
  %0 = load %struct.t_prop** @get_vdw.vdwr, align 8, !dbg !281, !tbaa !187
  %tobool = icmp eq %struct.t_prop* %0, null, !dbg !281
  br i1 %tobool, label %if.then, label %if.end3, !dbg !281

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @read_props(i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), %struct.t_prop** @get_vdw.vdwr, i32* @get_vdw.maxvdwr) #8, !dbg !282
  store i32 %call, i32* @get_vdw.nvdwr, align 4, !dbg !282, !tbaa !193
  %1 = load %struct._IO_FILE** @debug, align 8, !dbg !284, !tbaa !187
  %tobool1 = icmp eq %struct._IO_FILE* %1, null, !dbg !284
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !284

if.then2:                                         ; preds = %if.then
  %2 = load %struct.t_prop** @get_vdw.vdwr, align 8, !dbg !285, !tbaa !187
  call fastcc void @write_props(%struct._IO_FILE* %1, i32 %call, %struct.t_prop* %2) #8, !dbg !285
  br label %if.end3, !dbg !285

if.end3:                                          ; preds = %if.then, %entry, %if.then2
  %3 = load i32* @get_vdw.nvdwr, align 4, !dbg !286, !tbaa !193
  %4 = load %struct.t_prop** @get_vdw.vdwr, align 8, !dbg !286, !tbaa !187
  %call4 = call fastcc i32 @get_prop(float* %r, i8* %resnm, i8* %atomnm, i32 %3, %struct.t_prop* %4) #8, !dbg !286
  %tobool5 = icmp eq i32 %call4, 0, !dbg !286
  br i1 %tobool5, label %if.then6, label %if.end3.if.end8_crit_edge, !dbg !286

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @llvm.dbg.value(metadata !{float* %r}, i64 0, metadata !39), !dbg !287
  %.pre = load float* %r, align 4, !dbg !287, !tbaa !198
  br label %if.end8, !dbg !286

if.then6:                                         ; preds = %if.end3
  call void @llvm.dbg.value(metadata !{float %default_r}, i64 0, metadata !39), !dbg !288
  store float %default_r, float* %r, align 4, !dbg !288, !tbaa !198
  call fastcc void @add_prop(float %default_r, i8* %resnm, i8* %atomnm, i32* @get_vdw.nvdwr, %struct.t_prop** @get_vdw.vdwr, i32* @get_vdw.maxvdwr) #8, !dbg !290
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !291, !tbaa !187
  call void @llvm.dbg.value(metadata !{float* %r}, i64 0, metadata !39), !dbg !291
  %conv = fpext float %default_r to double, !dbg !291
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), i8* %resnm, i8* %atomnm, double %conv) #9, !dbg !291
  br label %if.end8, !dbg !292

if.end8:                                          ; preds = %if.end3.if.end8_crit_edge, %if.then6
  %6 = phi float [ %.pre, %if.end3.if.end8_crit_edge ], [ %default_r, %if.then6 ]
  call void @llvm.dbg.value(metadata !{float* %r}, i64 0, metadata !39), !dbg !287
  ret float %6, !dbg !287
}

; Function Attrs: nounwind optsize uwtable
define float @get_dgsolv(i8* %resnm, i8* %atomnm, float %default_s) #0 {
entry:
  %r = alloca float, align 4
  call void @llvm.dbg.value(metadata !{i8* %resnm}, i64 0, metadata !42), !dbg !293
  call void @llvm.dbg.value(metadata !{i8* %atomnm}, i64 0, metadata !43), !dbg !293
  call void @llvm.dbg.value(metadata !{float %default_s}, i64 0, metadata !44), !dbg !293
  call void @llvm.dbg.declare(metadata !{float* %r}, metadata !45), !dbg !294
  %0 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !dbg !295, !tbaa !187
  %tobool = icmp eq %struct.t_prop* %0, null, !dbg !295
  br i1 %tobool, label %if.then, label %if.end5, !dbg !295

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @read_props(i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), %struct.t_prop** @get_dgsolv.dgs, i32* @get_dgsolv.maxdgs) #8, !dbg !296
  store i32 %call, i32* @get_dgsolv.ndgs, align 4, !dbg !296, !tbaa !193
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !298, !tbaa !187
  call void @please_cite(%struct._IO_FILE* %1, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0)) #9, !dbg !298
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !46), !dbg !299
  %2 = load i32* @get_dgsolv.ndgs, align 4, !dbg !299, !tbaa !193
  %cmp18 = icmp sgt i32 %2, 0, !dbg !299
  br i1 %cmp18, label %for.body.lr.ph, label %for.end, !dbg !299

for.body.lr.ph:                                   ; preds = %if.then
  %3 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !dbg !301, !tbaa !187
  br label %for.body, !dbg !299

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %prop = getelementptr inbounds %struct.t_prop* %3, i64 %indvars.iv, i32 2, !dbg !301
  %4 = load float* %prop, align 4, !dbg !301, !tbaa !198
  %conv = fpext float %4 to double, !dbg !301
  %mul = fmul double %conv, 4.184000e+02, !dbg !301
  %conv1 = fptrunc double %mul to float, !dbg !301
  store float %conv1, float* %prop, align 4, !dbg !301, !tbaa !198
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !299
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !299
  %cmp = icmp slt i32 %5, %2, !dbg !299
  br i1 %cmp, label %for.body, label %for.end, !dbg !299

for.end:                                          ; preds = %for.body, %if.then
  %6 = load %struct._IO_FILE** @debug, align 8, !dbg !302, !tbaa !187
  %tobool2 = icmp eq %struct._IO_FILE* %6, null, !dbg !302
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !302

if.then3:                                         ; preds = %for.end
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str7, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %6), !dbg !303
  %8 = load %struct._IO_FILE** @debug, align 8, !dbg !305, !tbaa !187
  %9 = load i32* @get_dgsolv.ndgs, align 4, !dbg !305, !tbaa !193
  %10 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !dbg !305, !tbaa !187
  call fastcc void @write_props(%struct._IO_FILE* %8, i32 %9, %struct.t_prop* %10) #8, !dbg !305
  br label %if.end5, !dbg !306

if.end5:                                          ; preds = %for.end, %entry, %if.then3
  %11 = load i32* @get_dgsolv.ndgs, align 4, !dbg !307, !tbaa !193
  %12 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !dbg !307, !tbaa !187
  %call6 = call fastcc i32 @get_prop(float* %r, i8* %resnm, i8* %atomnm, i32 %11, %struct.t_prop* %12) #8, !dbg !307
  %tobool7 = icmp eq i32 %call6, 0, !dbg !307
  br i1 %tobool7, label %if.then8, label %if.end5.if.end11_crit_edge, !dbg !307

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @llvm.dbg.value(metadata !{float* %r}, i64 0, metadata !45), !dbg !308
  %.pre = load float* %r, align 4, !dbg !308, !tbaa !198
  br label %if.end11, !dbg !307

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.value(metadata !{float %default_s}, i64 0, metadata !45), !dbg !309
  store float %default_s, float* %r, align 4, !dbg !309, !tbaa !198
  call fastcc void @add_prop(float %default_s, i8* %resnm, i8* %atomnm, i32* @get_dgsolv.ndgs, %struct.t_prop** @get_dgsolv.dgs, i32* @get_dgsolv.maxdgs) #8, !dbg !311
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !312, !tbaa !187
  call void @llvm.dbg.value(metadata !{float* %r}, i64 0, metadata !45), !dbg !312
  %conv9 = fpext float %default_s to double, !dbg !312
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i8* %resnm, i8* %atomnm, double %conv9) #9, !dbg !312
  br label %if.end11, !dbg !313

if.end11:                                         ; preds = %if.end5.if.end11_crit_edge, %if.then8
  %14 = phi float [ %.pre, %if.end5.if.end11_crit_edge ], [ %default_s, %if.then8 ]
  call void @llvm.dbg.value(metadata !{float* %r}, i64 0, metadata !45), !dbg !308
  ret float %14, !dbg !308
}

; Function Attrs: optsize
declare void @please_cite(%struct._IO_FILE*, i8*) #3

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @is_protein(i8*) #3

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @dbcmp_len(i8* nocapture %search, i8* nocapture %database) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %search}, i64 0, metadata !91), !dbg !314
  tail call void @llvm.dbg.value(metadata !{i8* %database}, i64 0, metadata !92), !dbg !314
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !93), !dbg !315
  %0 = load i8* %search, align 1, !dbg !316, !tbaa !188
  %tobool23 = icmp eq i8 %0, 0, !dbg !316
  br i1 %tobool23, label %while.end, label %land.lhs.true, !dbg !316

while.cond:                                       ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds i8* %search, i64 %indvars.iv.next, !dbg !316
  %1 = load i8* %arrayidx, align 1, !dbg !316, !tbaa !188
  %tobool = icmp eq i8 %1, 0, !dbg !316
  br i1 %tobool, label %while.end, label %land.lhs.true, !dbg !316

land.lhs.true:                                    ; preds = %entry, %while.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ]
  %2 = phi i8 [ %1, %while.cond ], [ %0, %entry ]
  %i.024 = phi i32 [ %inc, %while.cond ], [ 0, %entry ]
  %arrayidx2 = getelementptr inbounds i8* %database, i64 %indvars.iv, !dbg !316
  %3 = load i8* %arrayidx2, align 1, !dbg !316, !tbaa !188
  %cmp = icmp eq i8 %2, %3, !dbg !316
  %not.tobool4 = icmp ne i8 %3, 0, !dbg !316
  %.cmp = and i1 %cmp, %not.tobool4, !dbg !316
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !316
  %inc = add nsw i32 %i.024, 1, !dbg !317
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !93), !dbg !317
  br i1 %.cmp, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond, %land.lhs.true, %entry
  %idxprom.lcssa = phi i64 [ 0, %entry ], [ %indvars.iv, %land.lhs.true ], [ %indvars.iv.next, %while.cond ]
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %i.024, %land.lhs.true ], [ %inc, %while.cond ]
  %arrayidx13 = getelementptr inbounds i8* %database, i64 %idxprom.lcssa, !dbg !318
  %4 = load i8* %arrayidx13, align 1, !dbg !318, !tbaa !188
  %tobool14 = icmp eq i8 %4, 0, !dbg !318
  tail call void @llvm.dbg.value(metadata !232, i64 0, metadata !93), !dbg !319
  %i.0. = select i1 %tobool14, i32 %i.0.lcssa, i32 -3, !dbg !318
  ret i32 %i.0., !dbg !320
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare %struct._IO_FILE* @libopen(i8*) #3

; Function Attrs: optsize
declare i32 @get_a_line(%struct._IO_FILE*, i8*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #7

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readnone }
attributes #11 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !174, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !32, metadata !40, metadata !48, metadata !70, metadata !87, metadata !94, metadata !157}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"get_mass", metadata !"get_mass", metadata !"", i32 163, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i8*)* @get_mass, null, null, metadata !28, i32 164} ; [ DW_TAG_subprogram ] [line 163] [def] [scope 164] [get_mass]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !26, metadata !26}
!24 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!25 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!27 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!28 = metadata !{metadata !29, metadata !30, metadata !31}
!29 = metadata !{i32 786689, metadata !20, metadata !"resnm", metadata !21, i32 16777379, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [resnm] [line 163]
!30 = metadata !{i32 786689, metadata !20, metadata !"atomnm", metadata !21, i32 33554595, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atomnm] [line 163]
!31 = metadata !{i32 786688, metadata !20, metadata !"m", metadata !21, i32 165, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 165]
!32 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"get_vdw", metadata !"get_vdw", metadata !"", i32 189, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i8*, float)* @get_vdw, null, null, metadata !35, i32 190} ; [ DW_TAG_subprogram ] [line 189] [def] [scope 190] [get_vdw]
!33 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{metadata !24, metadata !26, metadata !26, metadata !24}
!35 = metadata !{metadata !36, metadata !37, metadata !38, metadata !39}
!36 = metadata !{i32 786689, metadata !32, metadata !"resnm", metadata !21, i32 16777405, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [resnm] [line 189]
!37 = metadata !{i32 786689, metadata !32, metadata !"atomnm", metadata !21, i32 33554621, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atomnm] [line 189]
!38 = metadata !{i32 786689, metadata !32, metadata !"default_r", metadata !21, i32 50331837, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [default_r] [line 189]
!39 = metadata !{i32 786688, metadata !32, metadata !"r", metadata !21, i32 191, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 191]
!40 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"get_dgsolv", metadata !"get_dgsolv", metadata !"", i32 211, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, i8*, float)* @get_dgsolv, null, null, metadata !41, i32 212} ; [ DW_TAG_subprogram ] [line 211] [def] [scope 212] [get_dgsolv]
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45, metadata !46}
!42 = metadata !{i32 786689, metadata !40, metadata !"resnm", metadata !21, i32 16777427, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [resnm] [line 211]
!43 = metadata !{i32 786689, metadata !40, metadata !"atomnm", metadata !21, i32 33554643, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atomnm] [line 211]
!44 = metadata !{i32 786689, metadata !40, metadata !"default_s", metadata !21, i32 50331859, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [default_s] [line 211]
!45 = metadata !{i32 786688, metadata !40, metadata !"r", metadata !21, i32 216, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 216]
!46 = metadata !{i32 786688, metadata !40, metadata !"i", metadata !21, i32 217, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 217]
!47 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!48 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"add_prop", metadata !"add_prop", metadata !"", i32 51, metadata !49, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float, i8*, i8*, i32*, %struct.t_prop**, i32*)* @add_prop, null, null, metadata !63, i32 53} ; [ DW_TAG_subprogram ] [line 51] [local] [def] [scope 53] [add_prop]
!49 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{null, metadata !24, metadata !26, metadata !26, metadata !51, metadata !52, metadata !51}
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_prop]
!54 = metadata !{i32 786454, metadata !1, null, metadata !"t_prop", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [t_prop] [line 49, size 0, align 0, offset 0] [from ]
!55 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 45, i64 192, i64 32, i32 0, i32 0, null, metadata !56, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 45, size 192, align 32, offset 0] [from ]
!56 = metadata !{metadata !57, metadata !61, metadata !62}
!57 = metadata !{i32 786445, metadata !1, metadata !55, metadata !"atomname", i32 46, i64 80, i64 8, i64 0, i32 0, metadata !58} ; [ DW_TAG_member ] [atomname] [line 46, size 80, align 8, offset 0] [from ]
!58 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 80, i64 8, i32 0, i32 0, metadata !27, metadata !59, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from char]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ] [0, 9]
!61 = metadata !{i32 786445, metadata !1, metadata !55, metadata !"resname", i32 47, i64 80, i64 8, i64 80, i32 0, metadata !58} ; [ DW_TAG_member ] [resname] [line 47, size 80, align 8, offset 80] [from ]
!62 = metadata !{i32 786445, metadata !1, metadata !55, metadata !"prop", i32 48, i64 32, i64 32, i64 160, i32 0, metadata !24} ; [ DW_TAG_member ] [prop] [line 48, size 32, align 32, offset 160] [from real]
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69}
!64 = metadata !{i32 786689, metadata !48, metadata !"p", metadata !21, i32 16777267, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 51]
!65 = metadata !{i32 786689, metadata !48, metadata !"resnm", metadata !21, i32 33554483, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [resnm] [line 51]
!66 = metadata !{i32 786689, metadata !48, metadata !"atomnm", metadata !21, i32 50331699, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atomnm] [line 51]
!67 = metadata !{i32 786689, metadata !48, metadata !"nprop", metadata !21, i32 67108916, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprop] [line 52]
!68 = metadata !{i32 786689, metadata !48, metadata !"props", metadata !21, i32 83886132, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [props] [line 52]
!69 = metadata !{i32 786689, metadata !48, metadata !"maxprop", metadata !21, i32 100663348, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxprop] [line 52]
!70 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"get_prop", metadata !"get_prop", metadata !"", i32 117, metadata !71, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float*, i8*, i8*, i32, %struct.t_prop*)* @get_prop, null, null, metadata !74, i32 119} ; [ DW_TAG_subprogram ] [line 117] [local] [def] [scope 119] [get_prop]
!71 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!72 = metadata !{metadata !47, metadata !73, metadata !26, metadata !26, metadata !47, metadata !53}
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86}
!75 = metadata !{i32 786689, metadata !70, metadata !"p", metadata !21, i32 16777333, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 117]
!76 = metadata !{i32 786689, metadata !70, metadata !"resname", metadata !21, i32 33554549, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [resname] [line 117]
!77 = metadata !{i32 786689, metadata !70, metadata !"atomnm", metadata !21, i32 50331765, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atomnm] [line 117]
!78 = metadata !{i32 786689, metadata !70, metadata !"nprop", metadata !21, i32 67108982, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprop] [line 118]
!79 = metadata !{i32 786689, metadata !70, metadata !"props", metadata !21, i32 83886198, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [props] [line 118]
!80 = metadata !{i32 786688, metadata !70, metadata !"i", metadata !21, i32 120, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 120]
!81 = metadata !{i32 786688, metadata !70, metadata !"j", metadata !21, i32 120, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 120]
!82 = metadata !{i32 786688, metadata !70, metadata !"alen", metadata !21, i32 120, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alen] [line 120]
!83 = metadata !{i32 786688, metadata !70, metadata !"rlen", metadata !21, i32 120, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rlen] [line 120]
!84 = metadata !{i32 786688, metadata !70, metadata !"malen", metadata !21, i32 120, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [malen] [line 120]
!85 = metadata !{i32 786688, metadata !70, metadata !"mrlen", metadata !21, i32 120, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mrlen] [line 120]
!86 = metadata !{i32 786688, metadata !70, metadata !"atomname", metadata !21, i32 121, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atomname] [line 121]
!87 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"dbcmp_len", metadata !"dbcmp_len", metadata !"", i32 104, metadata !88, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @dbcmp_len, null, null, metadata !90, i32 105} ; [ DW_TAG_subprogram ] [line 104] [local] [def] [scope 105] [dbcmp_len]
!88 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{metadata !47, metadata !26, metadata !26}
!90 = metadata !{metadata !91, metadata !92, metadata !93}
!91 = metadata !{i32 786689, metadata !87, metadata !"search", metadata !21, i32 16777320, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [search] [line 104]
!92 = metadata !{i32 786689, metadata !87, metadata !"database", metadata !21, i32 33554536, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [database] [line 104]
!93 = metadata !{i32 786688, metadata !87, metadata !"i", metadata !21, i32 106, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 106]
!94 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"write_props", metadata !"write_props", metadata !"", i32 87, metadata !95, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, %struct.t_prop*)* @write_props, null, null, metadata !152, i32 88} ; [ DW_TAG_subprogram ] [line 87] [local] [def] [scope 88] [write_props]
!95 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{null, metadata !97, metadata !47, metadata !53}
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!98 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!99 = metadata !{i32 786451, metadata !100, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !101, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!100 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !122, metadata !123, metadata !124, metadata !125, metadata !128, metadata !130, metadata !132, metadata !136, metadata !138, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !147, metadata !148}
!102 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!103 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!104 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!105 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!106 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!107 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!108 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!109 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!110 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!111 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!112 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!113 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!114 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !115} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!116 = metadata !{i32 786451, metadata !100, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !117, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!117 = metadata !{metadata !118, metadata !119, metadata !121}
!118 = metadata !{i32 786445, metadata !100, metadata !116, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !115} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!119 = metadata !{i32 786445, metadata !100, metadata !116, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !120} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!121 = metadata !{i32 786445, metadata !100, metadata !116, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!122 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !120} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!123 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !47} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!124 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !47} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!125 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !126} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!126 = metadata !{i32 786454, metadata !100, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!127 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!128 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !129} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!129 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!130 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !131} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!131 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!132 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !133} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!133 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !27, metadata !134, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!134 = metadata !{metadata !135}
!135 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!136 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !137} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!137 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!138 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !139} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!139 = metadata !{i32 786454, metadata !100, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!140 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !137} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!141 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !137} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!142 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !137} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!143 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !137} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!144 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !145} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!145 = metadata !{i32 786454, metadata !100, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!146 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!147 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !47} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!148 = metadata !{i32 786445, metadata !100, metadata !99, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !149} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!149 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !27, metadata !150, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!150 = metadata !{metadata !151}
!151 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!152 = metadata !{metadata !153, metadata !154, metadata !155, metadata !156}
!153 = metadata !{i32 786689, metadata !94, metadata !"fp", metadata !21, i32 16777303, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 87]
!154 = metadata !{i32 786689, metadata !94, metadata !"nprop", metadata !21, i32 33554519, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprop] [line 87]
!155 = metadata !{i32 786689, metadata !94, metadata !"props", metadata !21, i32 50331735, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [props] [line 87]
!156 = metadata !{i32 786688, metadata !94, metadata !"i", metadata !21, i32 89, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 89]
!157 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_props", metadata !"read_props", metadata !"", i32 64, metadata !158, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.t_prop**, i32*)* @read_props, null, null, metadata !160, i32 65} ; [ DW_TAG_subprogram ] [line 64] [local] [def] [scope 65] [read_props]
!158 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!159 = metadata !{metadata !47, metadata !26, metadata !52, metadata !51}
!160 = metadata !{metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !169, metadata !170, metadata !171, metadata !173}
!161 = metadata !{i32 786689, metadata !157, metadata !"propdata", metadata !21, i32 16777280, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [propdata] [line 64]
!162 = metadata !{i32 786689, metadata !157, metadata !"props", metadata !21, i32 33554496, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [props] [line 64]
!163 = metadata !{i32 786689, metadata !157, metadata !"maxprop", metadata !21, i32 50331712, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxprop] [line 64]
!164 = metadata !{i32 786688, metadata !157, metadata !"fp", metadata !21, i32 66, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 66]
!165 = metadata !{i32 786688, metadata !157, metadata !"line", metadata !21, i32 67, metadata !166, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 67]
!166 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !27, metadata !167, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!167 = metadata !{metadata !168}
!168 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!169 = metadata !{i32 786688, metadata !157, metadata !"resname", metadata !21, i32 67, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resname] [line 67]
!170 = metadata !{i32 786688, metadata !157, metadata !"atomname", metadata !21, i32 67, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atomname] [line 67]
!171 = metadata !{i32 786688, metadata !157, metadata !"pp", metadata !21, i32 68, metadata !172, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pp] [line 68]
!172 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!173 = metadata !{i32 786688, metadata !157, metadata !"i", metadata !21, i32 69, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 69]
!174 = metadata !{metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183}
!175 = metadata !{i32 786484, i32 0, metadata !20, metadata !"mass", metadata !"mass", metadata !"", metadata !21, i32 166, metadata !53, i32 1, i32 1, %struct.t_prop** @get_mass.mass, null} ; [ DW_TAG_variable ] [mass] [line 166] [local] [def]
!176 = metadata !{i32 786484, i32 0, metadata !20, metadata !"nmass", metadata !"nmass", metadata !"", metadata !21, i32 167, metadata !47, i32 1, i32 1, i32* @get_mass.nmass, null} ; [ DW_TAG_variable ] [nmass] [line 167] [local] [def]
!177 = metadata !{i32 786484, i32 0, metadata !20, metadata !"maxmass", metadata !"maxmass", metadata !"", metadata !21, i32 168, metadata !47, i32 1, i32 1, i32* @get_mass.maxmass, null} ; [ DW_TAG_variable ] [maxmass] [line 168] [local] [def]
!178 = metadata !{i32 786484, i32 0, metadata !32, metadata !"vdwr", metadata !"vdwr", metadata !"", metadata !21, i32 192, metadata !53, i32 1, i32 1, %struct.t_prop** @get_vdw.vdwr, null} ; [ DW_TAG_variable ] [vdwr] [line 192] [local] [def]
!179 = metadata !{i32 786484, i32 0, metadata !32, metadata !"nvdwr", metadata !"nvdwr", metadata !"", metadata !21, i32 193, metadata !47, i32 1, i32 1, i32* @get_vdw.nvdwr, null} ; [ DW_TAG_variable ] [nvdwr] [line 193] [local] [def]
!180 = metadata !{i32 786484, i32 0, metadata !32, metadata !"maxvdwr", metadata !"maxvdwr", metadata !"", metadata !21, i32 194, metadata !47, i32 1, i32 1, i32* @get_vdw.maxvdwr, null} ; [ DW_TAG_variable ] [maxvdwr] [line 194] [local] [def]
!181 = metadata !{i32 786484, i32 0, metadata !40, metadata !"dgs", metadata !"dgs", metadata !"", metadata !21, i32 213, metadata !53, i32 1, i32 1, %struct.t_prop** @get_dgsolv.dgs, null} ; [ DW_TAG_variable ] [dgs] [line 213] [local] [def]
!182 = metadata !{i32 786484, i32 0, metadata !40, metadata !"ndgs", metadata !"ndgs", metadata !"", metadata !21, i32 214, metadata !47, i32 1, i32 1, i32* @get_dgsolv.ndgs, null} ; [ DW_TAG_variable ] [ndgs] [line 214] [local] [def]
!183 = metadata !{i32 786484, i32 0, metadata !40, metadata !"maxdgs", metadata !"maxdgs", metadata !"", metadata !21, i32 215, metadata !47, i32 1, i32 1, i32* @get_dgsolv.maxdgs, null} ; [ DW_TAG_variable ] [maxdgs] [line 215] [local] [def]
!184 = metadata !{i32 163, i32 0, metadata !20, null}
!185 = metadata !{i32 165, i32 0, metadata !20, null}
!186 = metadata !{i32 170, i32 0, metadata !20, null}
!187 = metadata !{metadata !"any pointer", metadata !188}
!188 = metadata !{metadata !"omnipotent char", metadata !189}
!189 = metadata !{metadata !"Simple C/C++ TBAA"}
!190 = metadata !{i32 171, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !20, i32 170, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!192 = metadata !{i32 174, i32 0, metadata !191, null}
!193 = metadata !{metadata !"int", metadata !188}
!194 = metadata !{i32 175, i32 0, metadata !191, null}
!195 = metadata !{i32 176, i32 0, metadata !191, null}
!196 = metadata !{i32 179, i32 0, metadata !20, null}
!197 = metadata !{i32 186, i32 0, metadata !20, null}
!198 = metadata !{metadata !"float", metadata !188}
!199 = metadata !{float 0x402805A1C0000000}
!200 = metadata !{i32 180, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !20, i32 179, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!202 = metadata !{i32 181, i32 0, metadata !201, null}
!203 = metadata !{i32 182, i32 0, metadata !201, null}
!204 = metadata !{i32 184, i32 0, metadata !201, null}
!205 = metadata !{i32 64, i32 0, metadata !157, null}
!206 = metadata !{i32 67, i32 0, metadata !157, null}
!207 = metadata !{i32 68, i32 0, metadata !157, null}
!208 = metadata !{i32 69, i32 0, metadata !157, null}
!209 = metadata !{i32 71, i32 0, metadata !157, null}
!210 = metadata !{i32 72, i32 0, metadata !157, null}
!211 = metadata !{i32 73, i32 0, metadata !157, null}
!212 = metadata !{i32 74, i32 0, metadata !157, null}
!213 = metadata !{i32 75, i32 0, metadata !157, null}
!214 = metadata !{i32 76, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !157, i32 75, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!216 = metadata !{i32 77, i32 0, metadata !215, null}
!217 = metadata !{metadata !"double", metadata !188}
!218 = metadata !{i32 79, i32 0, metadata !215, null}
!219 = metadata !{i32 80, i32 0, metadata !215, null}
!220 = metadata !{i32 84, i32 0, metadata !157, null}
!221 = metadata !{i32 82, i32 0, metadata !157, null}
!222 = metadata !{i32 85, i32 0, metadata !157, null}
!223 = metadata !{i32 87, i32 0, metadata !94, null}
!224 = metadata !{i32 91, i32 0, metadata !94, null}
!225 = metadata !{i32 92, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !94, i32 92, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!227 = metadata !{i32 93, i32 0, metadata !226, null}
!228 = metadata !{i32 95, i32 0, metadata !94, null}
!229 = metadata !{i32 117, i32 0, metadata !70, null}
!230 = metadata !{i32 118, i32 0, metadata !70, null}
!231 = metadata !{i32 120, i32 0, metadata !70, null}
!232 = metadata !{i32 -3}
!233 = metadata !{i32 123, i32 0, metadata !70, null}
!234 = metadata !{i32 124, i32 0, metadata !70, null}
!235 = metadata !{i32 126, i32 0, metadata !70, null}
!236 = metadata !{metadata !"short", metadata !188}
!237 = metadata !{i32 128, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !70, i32 126, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!239 = metadata !{i32 1}
!240 = metadata !{i32 129, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !238, i32 129, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!242 = metadata !{i32 130, i32 0, metadata !241, null}
!243 = metadata !{i32 131, i32 0, metadata !238, null}
!244 = metadata !{i32 132, i32 0, metadata !238, null}
!245 = metadata !{i32 133, i32 0, metadata !238, null}
!246 = metadata !{i32 136, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !70, i32 136, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!248 = metadata !{i32 137, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !247, i32 136, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!250 = metadata !{i32 138, i32 0, metadata !249, null}
!251 = metadata !{i32 140, i32 0, metadata !249, null}
!252 = metadata !{i32 143, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !249, i32 142, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!254 = metadata !{i32 145, i32 0, metadata !249, null}
!255 = metadata !{i32 146, i32 0, metadata !249, null}
!256 = metadata !{i32 147, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !249, i32 146, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!258 = metadata !{i32 148, i32 0, metadata !257, null}
!259 = metadata !{i32 149, i32 0, metadata !257, null}
!260 = metadata !{i32 undef}
!261 = metadata !{i32 150, i32 0, metadata !257, null}
!262 = metadata !{i32 151, i32 0, metadata !257, null}
!263 = metadata !{i32 153, i32 0, metadata !70, null}
!264 = metadata !{i32 154, i32 0, metadata !70, null}
!265 = metadata !{i32 157, i32 0, metadata !70, null}
!266 = metadata !{i32 158, i32 0, metadata !70, null}
!267 = metadata !{i32 51, i32 0, metadata !48, null}
!268 = metadata !{i32 52, i32 0, metadata !48, null}
!269 = metadata !{i32 54, i32 0, metadata !48, null}
!270 = metadata !{i32 58, i32 0, metadata !48, null} ; [ DW_TAG_imported_module ]
!271 = metadata !{i32 55, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !48, i32 54, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!273 = metadata !{i32 56, i32 0, metadata !272, null}
!274 = metadata !{i32 57, i32 0, metadata !272, null}
!275 = metadata !{i32 59, i32 0, metadata !48, null}
!276 = metadata !{i32 60, i32 0, metadata !48, null}
!277 = metadata !{i32 61, i32 0, metadata !48, null}
!278 = metadata !{i32 62, i32 0, metadata !48, null}
!279 = metadata !{i32 189, i32 0, metadata !32, null}
!280 = metadata !{i32 191, i32 0, metadata !32, null}
!281 = metadata !{i32 196, i32 0, metadata !32, null}
!282 = metadata !{i32 197, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !32, i32 196, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!284 = metadata !{i32 198, i32 0, metadata !283, null}
!285 = metadata !{i32 199, i32 0, metadata !283, null}
!286 = metadata !{i32 202, i32 0, metadata !32, null}
!287 = metadata !{i32 208, i32 0, metadata !32, null}
!288 = metadata !{i32 203, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !32, i32 202, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!290 = metadata !{i32 204, i32 0, metadata !289, null}
!291 = metadata !{i32 205, i32 0, metadata !289, null}
!292 = metadata !{i32 207, i32 0, metadata !289, null}
!293 = metadata !{i32 211, i32 0, metadata !40, null}
!294 = metadata !{i32 216, i32 0, metadata !40, null}
!295 = metadata !{i32 219, i32 0, metadata !40, null}
!296 = metadata !{i32 220, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !40, i32 219, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!298 = metadata !{i32 221, i32 0, metadata !297, null}
!299 = metadata !{i32 223, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !297, i32 223, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!301 = metadata !{i32 224, i32 0, metadata !300, null}
!302 = metadata !{i32 226, i32 0, metadata !297, null}
!303 = metadata !{i32 227, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !297, i32 226, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!305 = metadata !{i32 228, i32 0, metadata !304, null}
!306 = metadata !{i32 229, i32 0, metadata !304, null}
!307 = metadata !{i32 232, i32 0, metadata !40, null}
!308 = metadata !{i32 238, i32 0, metadata !40, null}
!309 = metadata !{i32 233, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !40, i32 232, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/atomprop.c]
!311 = metadata !{i32 234, i32 0, metadata !310, null}
!312 = metadata !{i32 235, i32 0, metadata !310, null}
!313 = metadata !{i32 237, i32 0, metadata !310, null}
!314 = metadata !{i32 104, i32 0, metadata !87, null}
!315 = metadata !{i32 108, i32 0, metadata !87, null}
!316 = metadata !{i32 109, i32 0, metadata !87, null}
!317 = metadata !{i32 110, i32 0, metadata !87, null}
!318 = metadata !{i32 112, i32 0, metadata !87, null}
!319 = metadata !{i32 113, i32 0, metadata !87, null}
!320 = metadata !{i32 114, i32 0, metadata !87, null}
