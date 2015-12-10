; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@partition_1D.0 = internal unnamed_addr global i8* null
@partition_2D.0 = internal unnamed_addr global i8* null, align 16
@partition_2D.1 = internal unnamed_addr global i8* null
@partition_3D.0 = internal unnamed_addr global i8* null, align 16
@partition_3D.1 = internal unnamed_addr global i8* null
@partition_3D.2 = internal unnamed_addr global i8* null, align 16
@.str = private unnamed_addr constant [64 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [30 x i8] c"Only 1D, 2D, and 3D supported\00", align 1
@pughpriv_ = external global %struct.anon.0
@.str3 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"Only 1D, 2D, and 3D supported in manual topology setup\00", align 1
@.str5 = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1
@.str6 = private unnamed_addr constant [61 x i8] c"Wrong partition parameters: expect data for fewer processors\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str8 = private unnamed_addr constant [60 x i8] c"Wrong partition parameters: expect data for more processors\00", align 1
@.str9 = private unnamed_addr constant [69 x i8] c"Wrong partition parameters: total number of grid points doesnt match\00", align 1
@.str10 = private unnamed_addr constant [89 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/LoadAware.c,v 1.10 2002/01/07 13:51:27 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_LoadAware_c() #0 {
entry:
  ret i8* getelementptr inbounds ([89 x i8]* @.str10, i64 0, i64 0), !dbg !145
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_SetPartitionInfo(i32 %dim, i8** nocapture %partition_info) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !33), !dbg !146
  tail call void @llvm.dbg.value(metadata !{i8** %partition_info}, i64 0, metadata !34), !dbg !146
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !35), !dbg !147
  switch i32 %dim, label %if.else33 [
    i32 1, label %if.then
    i32 2, label %if.then4
    i32 3, label %if.then17
  ], !dbg !148

if.then:                                          ; preds = %entry
  %0 = load i8** @partition_1D.0, align 8, !dbg !149, !tbaa !151
  %tobool = icmp eq i8* %0, null, !dbg !149
  br i1 %tobool, label %if.end, label %if.then2, !dbg !149

if.then2:                                         ; preds = %if.then
  tail call void @free(i8* %0) #6, !dbg !154
  br label %if.end, !dbg !156

if.end:                                           ; preds = %if.then, %if.then2
  %1 = load i8** %partition_info, align 8, !dbg !157, !tbaa !151
  %call = tail call noalias i8* @strdup(i8* %1) #6, !dbg !157
  store i8* %call, i8** @partition_1D.0, align 8, !dbg !157, !tbaa !151
  br label %if.end37, !dbg !158

if.then4:                                         ; preds = %entry
  %2 = load i8** @partition_2D.0, align 16, !dbg !159, !tbaa !151
  %tobool5 = icmp eq i8* %2, null, !dbg !159
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !159

if.then6:                                         ; preds = %if.then4
  tail call void @free(i8* %2) #6, !dbg !161
  br label %if.end7, !dbg !163

if.end7:                                          ; preds = %if.then4, %if.then6
  %3 = load i8** @partition_2D.1, align 8, !dbg !164, !tbaa !151
  %tobool8 = icmp eq i8* %3, null, !dbg !164
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !164

if.then9:                                         ; preds = %if.end7
  tail call void @free(i8* %3) #6, !dbg !165
  br label %if.end10, !dbg !167

if.end10:                                         ; preds = %if.end7, %if.then9
  %4 = load i8** %partition_info, align 8, !dbg !168, !tbaa !151
  %call12 = tail call noalias i8* @strdup(i8* %4) #6, !dbg !168
  store i8* %call12, i8** @partition_2D.0, align 16, !dbg !168, !tbaa !151
  %arrayidx13 = getelementptr inbounds i8** %partition_info, i64 1, !dbg !169
  %5 = load i8** %arrayidx13, align 8, !dbg !169, !tbaa !151
  %call14 = tail call noalias i8* @strdup(i8* %5) #6, !dbg !169
  store i8* %call14, i8** @partition_2D.1, align 8, !dbg !169, !tbaa !151
  br label %if.end37, !dbg !170

if.then17:                                        ; preds = %entry
  %6 = load i8** @partition_3D.0, align 16, !dbg !171, !tbaa !151
  %tobool18 = icmp eq i8* %6, null, !dbg !171
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !171

if.then19:                                        ; preds = %if.then17
  tail call void @free(i8* %6) #6, !dbg !173
  br label %if.end20, !dbg !175

if.end20:                                         ; preds = %if.then17, %if.then19
  %7 = load i8** @partition_3D.1, align 8, !dbg !176, !tbaa !151
  %tobool21 = icmp eq i8* %7, null, !dbg !176
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !176

if.then22:                                        ; preds = %if.end20
  tail call void @free(i8* %7) #6, !dbg !177
  br label %if.end23, !dbg !179

if.end23:                                         ; preds = %if.end20, %if.then22
  %8 = load i8** @partition_3D.2, align 16, !dbg !180, !tbaa !151
  %tobool24 = icmp eq i8* %8, null, !dbg !180
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !180

if.then25:                                        ; preds = %if.end23
  tail call void @free(i8* %8) #6, !dbg !181
  br label %if.end26, !dbg !183

if.end26:                                         ; preds = %if.end23, %if.then25
  %9 = load i8** %partition_info, align 8, !dbg !184, !tbaa !151
  %call28 = tail call noalias i8* @strdup(i8* %9) #6, !dbg !184
  store i8* %call28, i8** @partition_3D.0, align 16, !dbg !184, !tbaa !151
  %arrayidx29 = getelementptr inbounds i8** %partition_info, i64 1, !dbg !185
  %10 = load i8** %arrayidx29, align 8, !dbg !185, !tbaa !151
  %call30 = tail call noalias i8* @strdup(i8* %10) #6, !dbg !185
  store i8* %call30, i8** @partition_3D.1, align 8, !dbg !185, !tbaa !151
  %arrayidx31 = getelementptr inbounds i8** %partition_info, i64 2, !dbg !186
  %11 = load i8** %arrayidx31, align 8, !dbg !186, !tbaa !151
  %call32 = tail call noalias i8* @strdup(i8* %11) #6, !dbg !186
  store i8* %call32, i8** @partition_3D.2, align 16, !dbg !186, !tbaa !151
  br label %if.end37, !dbg !187

if.else33:                                        ; preds = %entry
  %call34 = tail call i32 @CCTK_Warn(i32 1, i32 125, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !188
  tail call void @llvm.dbg.value(metadata !190, i64 0, metadata !35), !dbg !191
  br label %if.end37

if.end37:                                         ; preds = %if.end10, %if.else33, %if.end26, %if.end
  %retval1.0 = phi i32 [ 0, %if.end ], [ 0, %if.end10 ], [ 0, %if.end26 ], [ -1, %if.else33 ]
  ret i32 %retval1.0, !dbg !192
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_GetBounds(i32 %dim, i32** nocapture %bounds, i32* nocapture %nprocs, i32* nocapture %nsize) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !42), !dbg !193
  tail call void @llvm.dbg.value(metadata !{i32** %bounds}, i64 0, metadata !43), !dbg !193
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !44), !dbg !193
  tail call void @llvm.dbg.value(metadata !{i32* %nsize}, i64 0, metadata !45), !dbg !193
  %0 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 2), align 8, !dbg !194, !tbaa !151
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !61), !dbg !194
  %1 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 3), align 8, !dbg !194, !tbaa !151
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !62), !dbg !194
  %2 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 4), align 8, !dbg !194, !tbaa !151
  tail call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !63), !dbg !194
  %3 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 5), align 8, !dbg !194, !tbaa !151
  tail call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !64), !dbg !194
  %4 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 6), align 8, !dbg !194, !tbaa !151
  tail call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !65), !dbg !194
  %5 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 7), align 8, !dbg !194, !tbaa !151
  tail call void @llvm.dbg.value(metadata !{i8* %5}, i64 0, metadata !66), !dbg !194
  %6 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 8), align 8, !dbg !194, !tbaa !151
  tail call void @llvm.dbg.value(metadata !{i8* %6}, i64 0, metadata !67), !dbg !194
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !114), !dbg !195
  %call = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !196
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !115), !dbg !196
  switch i32 %dim, label %if.else95 [
    i32 1, label %if.then
    i32 2, label %if.then10
    i32 3, label %if.then46
  ], !dbg !197

if.then:                                          ; preds = %entry
  %7 = load i8** @partition_1D.0, align 8, !dbg !198, !tbaa !151
  %cmp2 = icmp ne i8* %7, null, !dbg !198
  %cond = select i1 %cmp2, i8* %7, i8* %1, !dbg !200
  tail call void @llvm.dbg.value(metadata !{i8* %cond}, i64 0, metadata !117), !dbg !200
  %8 = load i32* %nprocs, align 4, !dbg !201, !tbaa !202
  %9 = load i32* %nsize, align 4, !dbg !201, !tbaa !202
  %not.tobool5 = icmp ne i32 %call, 0, !dbg !201
  %cmp2. = or i1 %cmp2, %not.tobool5, !dbg !201
  %lor.ext = zext i1 %cmp2. to i32, !dbg !201
  tail call fastcc void @PUGH_GetSliceSizes(i32 %8, i32 %9, i8* %cond, i32** %bounds, i32 %lor.ext) #7, !dbg !201
  br label %if.end110, !dbg !203

if.then10:                                        ; preds = %entry
  %10 = load i8** @partition_2D.0, align 16, !dbg !204, !tbaa !151
  %cmp11 = icmp ne i8* %10, null, !dbg !204
  %cond17 = select i1 %cmp11, i8* %10, i8* %2, !dbg !206
  tail call void @llvm.dbg.value(metadata !{i8* %cond17}, i64 0, metadata !117), !dbg !206
  %11 = load i32* %nprocs, align 4, !dbg !207, !tbaa !202
  %12 = load i32* %nsize, align 4, !dbg !207, !tbaa !202
  %tobool21 = icmp ne i32 %call, 0, !dbg !207
  %.cmp11 = or i1 %tobool21, %cmp11, !dbg !207
  %lor.ext25 = zext i1 %.cmp11 to i32, !dbg !207
  tail call fastcc void @PUGH_GetSliceSizes(i32 %11, i32 %12, i8* %cond17, i32** %bounds, i32 %lor.ext25) #7, !dbg !207
  %13 = load i8** @partition_2D.1, align 8, !dbg !208, !tbaa !151
  %cmp27 = icmp ne i8* %13, null, !dbg !208
  %cond33 = select i1 %cmp27, i8* %13, i8* %3, !dbg !209
  tail call void @llvm.dbg.value(metadata !{i8* %cond33}, i64 0, metadata !117), !dbg !209
  %arrayidx34 = getelementptr inbounds i32* %nprocs, i64 1, !dbg !210
  %14 = load i32* %arrayidx34, align 4, !dbg !210, !tbaa !202
  %arrayidx35 = getelementptr inbounds i32* %nsize, i64 1, !dbg !210
  %15 = load i32* %arrayidx35, align 4, !dbg !210, !tbaa !202
  %arrayidx36 = getelementptr inbounds i32** %bounds, i64 1, !dbg !210
  %16 = or i1 %tobool21, %cmp27, !dbg !210
  %lor.ext41 = zext i1 %16 to i32, !dbg !210
  tail call fastcc void @PUGH_GetSliceSizes(i32 %14, i32 %15, i8* %cond33, i32** %arrayidx36, i32 %lor.ext41) #7, !dbg !210
  br label %if.end110, !dbg !211

if.then46:                                        ; preds = %entry
  %17 = load i8** @partition_3D.0, align 16, !dbg !212, !tbaa !151
  %cmp47 = icmp ne i8* %17, null, !dbg !212
  %cond53 = select i1 %cmp47, i8* %17, i8* %4, !dbg !214
  tail call void @llvm.dbg.value(metadata !{i8* %cond53}, i64 0, metadata !117), !dbg !214
  %18 = load i32* %nprocs, align 4, !dbg !215, !tbaa !202
  %19 = load i32* %nsize, align 4, !dbg !215, !tbaa !202
  %tobool57 = icmp ne i32 %call, 0, !dbg !215
  %.cmp47 = or i1 %tobool57, %cmp47, !dbg !215
  %lor.ext61 = zext i1 %.cmp47 to i32, !dbg !215
  tail call fastcc void @PUGH_GetSliceSizes(i32 %18, i32 %19, i8* %cond53, i32** %bounds, i32 %lor.ext61) #7, !dbg !215
  %20 = load i8** @partition_3D.1, align 8, !dbg !216, !tbaa !151
  %cmp63 = icmp ne i8* %20, null, !dbg !216
  %cond69 = select i1 %cmp63, i8* %20, i8* %5, !dbg !217
  tail call void @llvm.dbg.value(metadata !{i8* %cond69}, i64 0, metadata !117), !dbg !217
  %arrayidx70 = getelementptr inbounds i32* %nprocs, i64 1, !dbg !218
  %21 = load i32* %arrayidx70, align 4, !dbg !218, !tbaa !202
  %arrayidx71 = getelementptr inbounds i32* %nsize, i64 1, !dbg !218
  %22 = load i32* %arrayidx71, align 4, !dbg !218, !tbaa !202
  %arrayidx72 = getelementptr inbounds i32** %bounds, i64 1, !dbg !218
  %23 = or i1 %tobool57, %cmp63, !dbg !218
  %lor.ext77 = zext i1 %23 to i32, !dbg !218
  tail call fastcc void @PUGH_GetSliceSizes(i32 %21, i32 %22, i8* %cond69, i32** %arrayidx72, i32 %lor.ext77) #7, !dbg !218
  %24 = load i8** @partition_3D.2, align 16, !dbg !219, !tbaa !151
  %cmp79 = icmp ne i8* %24, null, !dbg !219
  %cond85 = select i1 %cmp79, i8* %24, i8* %6, !dbg !220
  tail call void @llvm.dbg.value(metadata !{i8* %cond85}, i64 0, metadata !117), !dbg !220
  %arrayidx86 = getelementptr inbounds i32* %nprocs, i64 2, !dbg !221
  %25 = load i32* %arrayidx86, align 4, !dbg !221, !tbaa !202
  %arrayidx87 = getelementptr inbounds i32* %nsize, i64 2, !dbg !221
  %26 = load i32* %arrayidx87, align 4, !dbg !221, !tbaa !202
  %arrayidx88 = getelementptr inbounds i32** %bounds, i64 2, !dbg !221
  %.cmp79 = or i1 %tobool57, %cmp79, !dbg !221
  %lor.ext93 = zext i1 %.cmp79 to i32, !dbg !221
  tail call fastcc void @PUGH_GetSliceSizes(i32 %25, i32 %26, i8* %cond85, i32** %arrayidx88, i32 %lor.ext93) #7, !dbg !221
  br label %if.end110, !dbg !222

if.else95:                                        ; preds = %entry
  %tobool96 = icmp eq i32 %call, 0, !dbg !223
  br i1 %tobool96, label %for.cond.preheader, label %if.then97, !dbg !223

for.cond.preheader:                               ; preds = %if.else95
  %cmp100158 = icmp sgt i32 %dim, 0, !dbg !225
  br i1 %cmp100158, label %for.body, label %if.end110, !dbg !225

if.then97:                                        ; preds = %if.else95
  %call98 = tail call i32 @CCTK_Warn(i32 1, i32 222, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !228
  tail call void @llvm.dbg.value(metadata !190, i64 0, metadata !114), !dbg !230
  br label %if.end110, !dbg !231

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx102 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv, !dbg !232
  %27 = load i32* %arrayidx102, align 4, !dbg !232, !tbaa !202
  %arrayidx104 = getelementptr inbounds i32* %nsize, i64 %indvars.iv, !dbg !232
  %28 = load i32* %arrayidx104, align 4, !dbg !232, !tbaa !202
  %arrayidx106 = getelementptr inbounds i32** %bounds, i64 %indvars.iv, !dbg !232
  tail call fastcc void @PUGH_GetSliceSizes(i32 %27, i32 %28, i8* null, i32** %arrayidx106, i32 0) #7, !dbg !232
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !225
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !225
  %exitcond = icmp eq i32 %lftr.wideiv, %dim, !dbg !225
  br i1 %exitcond, label %if.end110, label %for.body, !dbg !225

if.end110:                                        ; preds = %for.cond.preheader, %for.body, %if.then10, %if.then97, %if.then46, %if.then
  %retval1.0 = phi i32 [ 0, %if.then ], [ 0, %if.then10 ], [ 0, %if.then46 ], [ -1, %if.then97 ], [ 0, %for.body ], [ 0, %for.cond.preheader ]
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  tail call void @llvm.dbg.value(metadata !234, i64 0, metadata !110), !dbg !235
  ret i32 %retval1.0, !dbg !235
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @PUGH_GetSliceSizes(i32 %np, i32 %grid_points, i8* nocapture %slicesS, i32** nocapture %slices, i32 %manual) #1 {
entry:
  %tmp = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !127), !dbg !236
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !128), !dbg !236
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !129), !dbg !236
  %conv = sext i32 %np to i64, !dbg !237
  %mul = shl nsw i64 %conv, 2, !dbg !237
  %call = call noalias i8* @malloc(i64 %mul) #6, !dbg !237
  %0 = bitcast i8* %call to i32*, !dbg !237
  store i32* %0, i32** %slices, align 8, !dbg !237, !tbaa !151
  %cmp = icmp eq i8* %call, null, !dbg !238
  br i1 %cmp, label %if.then, label %if.end, !dbg !238

if.then:                                          ; preds = %entry
  %call4 = call i32 @CCTK_Warn(i32 1, i32 293, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !239
  br label %return, !dbg !241

if.end:                                           ; preds = %entry
  %tobool = icmp eq i32 %manual, 0, !dbg !242
  br i1 %tobool, label %for.cond.preheader, label %land.lhs.true, !dbg !242

for.cond.preheader:                               ; preds = %land.lhs.true, %if.end
  %cmp551 = icmp sgt i32 %np, 0, !dbg !243
  br i1 %cmp551, label %for.body.lr.ph, label %return, !dbg !243

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub59 = add i32 %grid_points, -1, !dbg !246
  br label %for.body, !dbg !243

land.lhs.true:                                    ; preds = %if.end
  %strlenfirst = load i8* %slicesS, align 1, !dbg !242
  %cmp6 = icmp eq i8 %strlenfirst, 0, !dbg !242
  br i1 %cmp6, label %for.cond.preheader, label %while.body, !dbg !242

while.cond.loopexit:                              ; preds = %land.rhs
  %tobool9 = icmp eq i8 %10, 0, !dbg !248
  br i1 %tobool9, label %while.end43, label %while.body, !dbg !248

while.body:                                       ; preds = %land.lhs.true, %while.cond.loopexit
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %while.cond.loopexit ], [ 0, %land.lhs.true ]
  %rt.011 = phi i32 [ %add, %while.cond.loopexit ], [ 0, %land.lhs.true ]
  %i.010 = phi i32 [ %inc, %while.cond.loopexit ], [ 0, %land.lhs.true ]
  %slicesS.addr.09 = phi i8* [ %slicesS.addr.25, %while.cond.loopexit ], [ %slicesS, %land.lhs.true ]
  %1 = trunc i64 %indvars.iv16 to i32, !dbg !250
  %cmp10 = icmp slt i32 %1, %np, !dbg !250
  br i1 %cmp10, label %if.end14, label %if.then12, !dbg !250

if.then12:                                        ; preds = %while.body
  %call13 = call i32 @CCTK_Warn(i32 1, i32 304, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !252
  br label %return, !dbg !254

if.end14:                                         ; preds = %while.body
  %call15 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %slicesS.addr.09, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* %tmp) #6, !dbg !255
  %cmp16 = icmp eq i32 %1, 0, !dbg !256
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !256

if.then18:                                        ; preds = %if.end14
  %2 = load i32** %slices, align 8, !dbg !257, !tbaa !151
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv16, !dbg !257
  store i32 0, i32* %arrayidx, align 4, !dbg !257, !tbaa !202
  br label %if.end21, !dbg !259

if.else:                                          ; preds = %if.end14
  %sub = add nsw i32 %rt.011, -1, !dbg !260
  %3 = load i32** %slices, align 8, !dbg !260, !tbaa !151
  %arrayidx20 = getelementptr inbounds i32* %3, i64 %indvars.iv16, !dbg !260
  store i32 %sub, i32* %arrayidx20, align 4, !dbg !260, !tbaa !202
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !127), !dbg !262
  %4 = load i32* %tmp, align 4, !dbg !262, !tbaa !202
  %add = add nsw i32 %4, %rt.011, !dbg !262
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !129), !dbg !262
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !128), !dbg !263
  %call25 = call i16** @__ctype_b_loc() #8, !dbg !264
  %5 = load i16** %call25, align 8, !dbg !264, !tbaa !151
  br label %while.cond22, !dbg !264

while.cond22:                                     ; preds = %while.cond22, %if.end21
  %slicesS.addr.1 = phi i8* [ %slicesS.addr.09, %if.end21 ], [ %incdec.ptr, %while.cond22 ]
  %6 = load i8* %slicesS.addr.1, align 1, !dbg !264, !tbaa !152
  %idxprom24 = sext i8 %6 to i64, !dbg !264
  %arrayidx26 = getelementptr inbounds i16* %5, i64 %idxprom24, !dbg !264
  %7 = load i16* %arrayidx26, align 2, !dbg !264, !tbaa !265
  %and = and i16 %7, 2048, !dbg !264
  %tobool28 = icmp eq i16 %and, 0, !dbg !264
  %incdec.ptr = getelementptr inbounds i8* %slicesS.addr.1, i64 1, !dbg !266
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !124), !dbg !266
  br i1 %tobool28, label %while.cond30.loopexit, label %while.cond22, !dbg !264

while.cond30.loopexit:                            ; preds = %while.cond22
  %indvars.iv.next17 = add i64 %indvars.iv16, 1, !dbg !248
  %inc = add nsw i32 %i.010, 1, !dbg !263
  %tobool324 = icmp eq i8 %6, 0, !dbg !268
  br i1 %tobool324, label %while.end43, label %land.rhs, !dbg !268

while.cond30:                                     ; preds = %land.rhs
  %8 = load i8* %incdec.ptr41, align 1, !dbg !268, !tbaa !152
  %tobool32 = icmp eq i8 %8, 0, !dbg !268
  br i1 %tobool32, label %while.end43, label %while.cond30.land.rhs_crit_edge, !dbg !268

while.cond30.land.rhs_crit_edge:                  ; preds = %while.cond30
  %idxprom34.phi.trans.insert = sext i8 %8 to i64
  %arrayidx36.phi.trans.insert = getelementptr inbounds i16* %5, i64 %idxprom34.phi.trans.insert
  %.pre = load i16* %arrayidx36.phi.trans.insert, align 2, !dbg !268, !tbaa !265
  br label %land.rhs, !dbg !268

land.rhs:                                         ; preds = %while.cond30.loopexit, %while.cond30.land.rhs_crit_edge
  %9 = phi i16 [ %.pre, %while.cond30.land.rhs_crit_edge ], [ %7, %while.cond30.loopexit ]
  %10 = phi i8 [ %8, %while.cond30.land.rhs_crit_edge ], [ %6, %while.cond30.loopexit ]
  %slicesS.addr.25 = phi i8* [ %incdec.ptr41, %while.cond30.land.rhs_crit_edge ], [ %slicesS.addr.1, %while.cond30.loopexit ]
  %and38 = and i16 %9, 2048, !dbg !268
  %lnot = icmp eq i16 %and38, 0, !dbg !268
  %incdec.ptr41 = getelementptr inbounds i8* %slicesS.addr.25, i64 1, !dbg !269
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr41}, i64 0, metadata !124), !dbg !269
  br i1 %lnot, label %while.cond30, label %while.cond.loopexit

while.end43:                                      ; preds = %while.cond30, %while.cond30.loopexit, %while.cond.loopexit
  %cmp44 = icmp eq i32 %inc, %np, !dbg !271
  br i1 %cmp44, label %if.end48, label %if.then46, !dbg !271

if.then46:                                        ; preds = %while.end43
  %call47 = call i32 @CCTK_Warn(i32 1, i32 331, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !272
  br label %return, !dbg !274

if.end48:                                         ; preds = %while.end43
  %cmp49 = icmp eq i32 %add, %grid_points, !dbg !275
  br i1 %cmp49, label %return, label %if.then51, !dbg !275

if.then51:                                        ; preds = %if.end48
  %call52 = call i32 @CCTK_Warn(i32 1, i32 338, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !276
  br label %return, !dbg !278

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %rt.13 = phi i32 [ 0, %for.body.lr.ph ], [ %add62, %for.body ]
  %arrayidx58 = getelementptr inbounds i32* %0, i64 %indvars.iv, !dbg !279
  store i32 %rt.13, i32* %arrayidx58, align 4, !dbg !279, !tbaa !202
  %sub60 = sub i32 %sub59, %rt.13, !dbg !246
  %11 = trunc i64 %indvars.iv to i32, !dbg !246
  %sub61 = sub nsw i32 %np, %11, !dbg !246
  %div = sdiv i32 %sub60, %sub61, !dbg !246
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !127), !dbg !246
  store i32 %div, i32* %tmp, align 4, !dbg !246, !tbaa !202
  %add62 = add nsw i32 %div, %rt.13, !dbg !280
  call void @llvm.dbg.value(metadata !{i32 %add62}, i64 0, metadata !129), !dbg !280
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !243
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !243
  %exitcond = icmp eq i32 %lftr.wideiv, %np, !dbg !243
  br i1 %exitcond, label %return, label %for.body, !dbg !243

return:                                           ; preds = %for.cond.preheader, %for.body, %if.end48, %if.then51, %if.then46, %if.then12, %if.then
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !130, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!19 = metadata !{metadata !20, metadata !27, metadata !36, metadata !118}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"CCTKi_version_CactusPUGH_PUGH_LoadAware_c", metadata !"CCTKi_version_CactusPUGH_PUGH_LoadAware_c", metadata !"", i32 25, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGH_LoadAware_c, null, null, metadata !18, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [CCTKi_version_CactusPUGH_PUGH_LoadAware_c]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"PUGH_SetPartitionInfo", metadata !"PUGH_SetPartitionInfo", metadata !"", i32 78, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**)* @PUGH_SetPartitionInfo, null, null, metadata !32, i32 79} ; [ DW_TAG_subprogram ] [line 78] [def] [scope 79] [PUGH_SetPartitionInfo]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !30, metadata !30, metadata !31}
!30 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!32 = metadata !{metadata !33, metadata !34, metadata !35}
!33 = metadata !{i32 786689, metadata !27, metadata !"dim", metadata !21, i32 16777294, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 78]
!34 = metadata !{i32 786689, metadata !27, metadata !"partition_info", metadata !21, i32 33554510, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [partition_info] [line 78]
!35 = metadata !{i32 786688, metadata !27, metadata !"retval", metadata !21, i32 80, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 80]
!36 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"PUGH_GetBounds", metadata !"PUGH_GetBounds", metadata !"", i32 169, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32**, i32*, i32*)* @PUGH_GetBounds, null, null, metadata !41, i32 170} ; [ DW_TAG_subprogram ] [line 169] [def] [scope 170] [PUGH_GetBounds]
!37 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{metadata !30, metadata !30, metadata !39, metadata !40, metadata !40}
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !107, metadata !108, metadata !109, metadata !110, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!42 = metadata !{i32 786689, metadata !36, metadata !"dim", metadata !21, i32 16777385, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 169]
!43 = metadata !{i32 786689, metadata !36, metadata !"bounds", metadata !21, i32 33554601, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bounds] [line 169]
!44 = metadata !{i32 786689, metadata !36, metadata !"nprocs", metadata !21, i32 50331817, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 169]
!45 = metadata !{i32 786689, metadata !36, metadata !"nsize", metadata !21, i32 67109033, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsize] [line 169]
!46 = metadata !{i32 786688, metadata !36, metadata !"ghost_size", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 171]
!47 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!48 = metadata !{i32 786688, metadata !36, metadata !"ghost_size_x", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 171]
!49 = metadata !{i32 786688, metadata !36, metadata !"ghost_size_y", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 171]
!50 = metadata !{i32 786688, metadata !36, metadata !"ghost_size_z", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 171]
!51 = metadata !{i32 786688, metadata !36, metadata !"global_nsize", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 171]
!52 = metadata !{i32 786688, metadata !36, metadata !"global_nx", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 171]
!53 = metadata !{i32 786688, metadata !36, metadata !"global_ny", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 171]
!54 = metadata !{i32 786688, metadata !36, metadata !"global_nz", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 171]
!55 = metadata !{i32 786688, metadata !36, metadata !"periodic", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 171]
!56 = metadata !{i32 786688, metadata !36, metadata !"periodic_x", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 171]
!57 = metadata !{i32 786688, metadata !36, metadata !"periodic_y", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 171]
!58 = metadata !{i32 786688, metadata !36, metadata !"periodic_z", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 171]
!59 = metadata !{i32 786688, metadata !36, metadata !"info", metadata !21, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 171]
!60 = metadata !{i32 786688, metadata !36, metadata !"initialize_memory", metadata !21, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 171]
!61 = metadata !{i32 786688, metadata !36, metadata !"partition", metadata !21, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 171]
!62 = metadata !{i32 786688, metadata !36, metadata !"partition_1d_x", metadata !21, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 171]
!63 = metadata !{i32 786688, metadata !36, metadata !"partition_2d_x", metadata !21, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 171]
!64 = metadata !{i32 786688, metadata !36, metadata !"partition_2d_y", metadata !21, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 171]
!65 = metadata !{i32 786688, metadata !36, metadata !"partition_3d_x", metadata !21, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 171]
!66 = metadata !{i32 786688, metadata !36, metadata !"partition_3d_y", metadata !21, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 171]
!67 = metadata !{i32 786688, metadata !36, metadata !"partition_3d_z", metadata !21, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 171]
!68 = metadata !{i32 786688, metadata !36, metadata !"processor_topology", metadata !21, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 171]
!69 = metadata !{i32 786688, metadata !36, metadata !"storage_verbose", metadata !21, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 171]
!70 = metadata !{i32 786688, metadata !36, metadata !"cacheline_mult", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 171]
!71 = metadata !{i32 786688, metadata !36, metadata !"enable_all_storage", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 171]
!72 = metadata !{i32 786688, metadata !36, metadata !"local_nsize", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 171]
!73 = metadata !{i32 786688, metadata !36, metadata !"local_nx", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 171]
!74 = metadata !{i32 786688, metadata !36, metadata !"local_ny", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 171]
!75 = metadata !{i32 786688, metadata !36, metadata !"local_nz", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 171]
!76 = metadata !{i32 786688, metadata !36, metadata !"overloadabort", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 171]
!77 = metadata !{i32 786688, metadata !36, metadata !"overloadarraygroupsizeb", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 171]
!78 = metadata !{i32 786688, metadata !36, metadata !"overloadbarrier", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 171]
!79 = metadata !{i32 786688, metadata !36, metadata !"overloaddisablegroupcomm", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 171]
!80 = metadata !{i32 786688, metadata !36, metadata !"overloaddisablegroupstorage", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 171]
!81 = metadata !{i32 786688, metadata !36, metadata !"overloadenablegroupcomm", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 171]
!82 = metadata !{i32 786688, metadata !36, metadata !"overloadenablegroupstorage", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 171]
!83 = metadata !{i32 786688, metadata !36, metadata !"overloadevolve", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 171]
!84 = metadata !{i32 786688, metadata !36, metadata !"overloadexit", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 171]
!85 = metadata !{i32 786688, metadata !36, metadata !"overloadgroupdynamicdata", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 171]
!86 = metadata !{i32 786688, metadata !36, metadata !"overloadmyproc", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 171]
!87 = metadata !{i32 786688, metadata !36, metadata !"overloadnprocs", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 171]
!88 = metadata !{i32 786688, metadata !36, metadata !"overloadparallelinit", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 171]
!89 = metadata !{i32 786688, metadata !36, metadata !"overloadquerygroupstorageb", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 171]
!90 = metadata !{i32 786688, metadata !36, metadata !"overloadsyncgroup", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 171]
!91 = metadata !{i32 786688, metadata !36, metadata !"padding_active", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 171]
!92 = metadata !{i32 786688, metadata !36, metadata !"padding_address_spacing", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 171]
!93 = metadata !{i32 786688, metadata !36, metadata !"padding_cacheline_bits", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 171]
!94 = metadata !{i32 786688, metadata !36, metadata !"padding_size", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 171]
!95 = metadata !{i32 786688, metadata !36, metadata !"processor_topology_1d_x", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 171]
!96 = metadata !{i32 786688, metadata !36, metadata !"processor_topology_2d_x", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 171]
!97 = metadata !{i32 786688, metadata !36, metadata !"processor_topology_2d_y", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 171]
!98 = metadata !{i32 786688, metadata !36, metadata !"processor_topology_3d_x", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 171]
!99 = metadata !{i32 786688, metadata !36, metadata !"processor_topology_3d_y", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 171]
!100 = metadata !{i32 786688, metadata !36, metadata !"processor_topology_3d_z", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 171]
!101 = metadata !{i32 786688, metadata !36, metadata !"storage_report_every", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 171]
!102 = metadata !{i32 786688, metadata !36, metadata !"timer_output", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 171]
!103 = metadata !{i32 786688, metadata !36, metadata !"terminate", metadata !21, i32 171, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 171]
!104 = metadata !{i32 786688, metadata !36, metadata !"cctk_initial_time", metadata !21, i32 171, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 171]
!105 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!106 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!107 = metadata !{i32 786688, metadata !36, metadata !"cctk_final_time", metadata !21, i32 171, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 171]
!108 = metadata !{i32 786688, metadata !36, metadata !"cctk_itlast", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 171]
!109 = metadata !{i32 786688, metadata !36, metadata !"terminate_next", metadata !21, i32 171, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 171]
!110 = metadata !{i32 786688, metadata !36, metadata !"cctk_pdummy_pointer", metadata !21, i32 171, metadata !111, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 171]
!111 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!112 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = metadata !{i32 786688, metadata !36, metadata !"i", metadata !21, i32 172, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 172]
!114 = metadata !{i32 786688, metadata !36, metadata !"retval", metadata !21, i32 172, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 172]
!115 = metadata !{i32 786688, metadata !36, metadata !"manual", metadata !21, i32 172, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [manual] [line 172]
!116 = metadata !{i32 786688, metadata !36, metadata !"external_manual", metadata !21, i32 172, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [external_manual] [line 172]
!117 = metadata !{i32 786688, metadata !36, metadata !"partition_info", metadata !21, i32 173, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_info] [line 173]
!118 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"PUGH_GetSliceSizes", metadata !"PUGH_GetSliceSizes", metadata !"", i32 281, metadata !119, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i8*, i32**, i32)* @PUGH_GetSliceSizes, null, null, metadata !121, i32 286} ; [ DW_TAG_subprogram ] [line 281] [local] [def] [scope 286] [PUGH_GetSliceSizes]
!119 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{metadata !30, metadata !30, metadata !30, metadata !24, metadata !39, metadata !30}
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129}
!122 = metadata !{i32 786689, metadata !118, metadata !"np", metadata !21, i32 16777497, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [np] [line 281]
!123 = metadata !{i32 786689, metadata !118, metadata !"grid_points", metadata !21, i32 33554714, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid_points] [line 282]
!124 = metadata !{i32 786689, metadata !118, metadata !"slicesS", metadata !21, i32 50331931, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [slicesS] [line 283]
!125 = metadata !{i32 786689, metadata !118, metadata !"slices", metadata !21, i32 67109148, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [slices] [line 284]
!126 = metadata !{i32 786689, metadata !118, metadata !"manual", metadata !21, i32 83886365, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manual] [line 285]
!127 = metadata !{i32 786688, metadata !118, metadata !"tmp", metadata !21, i32 287, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 287]
!128 = metadata !{i32 786688, metadata !118, metadata !"i", metadata !21, i32 287, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 287]
!129 = metadata !{i32 786688, metadata !118, metadata !"rt", metadata !21, i32 287, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rt] [line 287]
!130 = metadata !{metadata !131, metadata !136, metadata !140, metadata !144}
!131 = metadata !{i32 786484, i32 0, null, metadata !"partition_3D", metadata !"partition_3D", metadata !"", metadata !21, i32 42, metadata !132, i32 1, i32 1, null, null}
!132 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !133, metadata !134, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from ]
!133 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!134 = metadata !{metadata !135}
!135 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!136 = metadata !{i32 786484, i32 0, null, metadata !"partition_2D", metadata !"partition_2D", metadata !"", metadata !21, i32 41, metadata !137, i32 1, i32 1, null, null}
!137 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !133, metadata !138, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from ]
!138 = metadata !{metadata !139}
!139 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!140 = metadata !{i32 786484, i32 0, null, metadata !"partition_1D", metadata !"partition_1D", metadata !"", metadata !21, i32 40, metadata !141, i32 1, i32 1, null, null}
!141 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 64, i32 0, i32 0, metadata !133, metadata !142, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 64, offset 0] [from ]
!142 = metadata !{metadata !143}
!143 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!144 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !21, i32 23, metadata !24, i32 1, i32 1, null, null}
!145 = metadata !{i32 25, i32 0, metadata !20, null}
!146 = metadata !{i32 78, i32 0, metadata !27, null}
!147 = metadata !{i32 83, i32 0, metadata !27, null}
!148 = metadata !{i32 84, i32 0, metadata !27, null}
!149 = metadata !{i32 86, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !27, i32 85, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!151 = metadata !{metadata !"any pointer", metadata !152}
!152 = metadata !{metadata !"omnipotent char", metadata !153}
!153 = metadata !{metadata !"Simple C/C++ TBAA"}
!154 = metadata !{i32 88, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !150, i32 87, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!156 = metadata !{i32 89, i32 0, metadata !155, null}
!157 = metadata !{i32 90, i32 0, metadata !150, null}
!158 = metadata !{i32 91, i32 0, metadata !150, null}
!159 = metadata !{i32 94, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !27, i32 93, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!161 = metadata !{i32 96, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !160, i32 95, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!163 = metadata !{i32 97, i32 0, metadata !162, null}
!164 = metadata !{i32 98, i32 0, metadata !160, null}
!165 = metadata !{i32 100, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !160, i32 99, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!167 = metadata !{i32 101, i32 0, metadata !166, null}
!168 = metadata !{i32 102, i32 0, metadata !160, null}
!169 = metadata !{i32 103, i32 0, metadata !160, null}
!170 = metadata !{i32 104, i32 0, metadata !160, null}
!171 = metadata !{i32 107, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !27, i32 106, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!173 = metadata !{i32 109, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !172, i32 108, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!175 = metadata !{i32 110, i32 0, metadata !174, null}
!176 = metadata !{i32 111, i32 0, metadata !172, null}
!177 = metadata !{i32 113, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !172, i32 112, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!179 = metadata !{i32 114, i32 0, metadata !178, null}
!180 = metadata !{i32 115, i32 0, metadata !172, null}
!181 = metadata !{i32 117, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !172, i32 116, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!183 = metadata !{i32 118, i32 0, metadata !182, null}
!184 = metadata !{i32 119, i32 0, metadata !172, null}
!185 = metadata !{i32 120, i32 0, metadata !172, null}
!186 = metadata !{i32 121, i32 0, metadata !172, null}
!187 = metadata !{i32 122, i32 0, metadata !172, null}
!188 = metadata !{i32 125, i32 0, metadata !189, null}
!189 = metadata !{i32 786443, metadata !1, metadata !27, i32 124, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!190 = metadata !{i32 -1}
!191 = metadata !{i32 126, i32 0, metadata !189, null}
!192 = metadata !{i32 129, i32 0, metadata !27, null}
!193 = metadata !{i32 169, i32 0, metadata !36, null}
!194 = metadata !{i32 171, i32 0, metadata !36, null}
!195 = metadata !{i32 176, i32 0, metadata !36, null}
!196 = metadata !{i32 177, i32 0, metadata !36, null}
!197 = metadata !{i32 179, i32 0, metadata !36, null}
!198 = metadata !{i32 181, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !36, i32 180, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!200 = metadata !{i32 182, i32 0, metadata !199, null}
!201 = metadata !{i32 184, i32 0, metadata !199, null}
!202 = metadata !{metadata !"int", metadata !152}
!203 = metadata !{i32 186, i32 0, metadata !199, null}
!204 = metadata !{i32 189, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !36, i32 188, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!206 = metadata !{i32 190, i32 0, metadata !205, null}
!207 = metadata !{i32 192, i32 0, metadata !205, null}
!208 = metadata !{i32 194, i32 0, metadata !205, null}
!209 = metadata !{i32 195, i32 0, metadata !205, null}
!210 = metadata !{i32 197, i32 0, metadata !205, null}
!211 = metadata !{i32 199, i32 0, metadata !205, null}
!212 = metadata !{i32 202, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !36, i32 201, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!214 = metadata !{i32 203, i32 0, metadata !213, null}
!215 = metadata !{i32 205, i32 0, metadata !213, null}
!216 = metadata !{i32 207, i32 0, metadata !213, null}
!217 = metadata !{i32 208, i32 0, metadata !213, null}
!218 = metadata !{i32 210, i32 0, metadata !213, null}
!219 = metadata !{i32 212, i32 0, metadata !213, null}
!220 = metadata !{i32 213, i32 0, metadata !213, null}
!221 = metadata !{i32 215, i32 0, metadata !213, null}
!222 = metadata !{i32 217, i32 0, metadata !213, null}
!223 = metadata !{i32 220, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !36, i32 219, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!225 = metadata !{i32 227, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !227, i32 227, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!227 = metadata !{i32 786443, metadata !1, metadata !224, i32 226, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!228 = metadata !{i32 222, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !224, i32 221, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!230 = metadata !{i32 223, i32 0, metadata !229, null}
!231 = metadata !{i32 224, i32 0, metadata !229, null}
!232 = metadata !{i32 229, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !226, i32 228, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!234 = metadata !{i8* undef}
!235 = metadata !{i32 234, i32 0, metadata !36, null}
!236 = metadata !{i32 287, i32 0, metadata !118, null}
!237 = metadata !{i32 290, i32 0, metadata !118, null}
!238 = metadata !{i32 291, i32 0, metadata !118, null}
!239 = metadata !{i32 293, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !118, i32 292, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!241 = metadata !{i32 294, i32 0, metadata !240, null}
!242 = metadata !{i32 297, i32 0, metadata !118, null}
!243 = metadata !{i32 345, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !245, i32 345, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!245 = metadata !{i32 786443, metadata !1, metadata !118, i32 344, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!246 = metadata !{i32 348, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !244, i32 346, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!248 = metadata !{i32 299, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !118, i32 298, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!250 = metadata !{i32 301, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !249, i32 300, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!252 = metadata !{i32 303, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !251, i32 302, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!254 = metadata !{i32 305, i32 0, metadata !253, null}
!255 = metadata !{i32 307, i32 0, metadata !251, null}
!256 = metadata !{i32 308, i32 0, metadata !251, null}
!257 = metadata !{i32 310, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !251, i32 309, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!259 = metadata !{i32 311, i32 0, metadata !258, null}
!260 = metadata !{i32 314, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !251, i32 313, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!262 = metadata !{i32 316, i32 0, metadata !251, null}
!263 = metadata !{i32 317, i32 0, metadata !251, null}
!264 = metadata !{i32 318, i32 0, metadata !251, null}
!265 = metadata !{metadata !"short", metadata !152}
!266 = metadata !{i32 320, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !251, i32 319, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!268 = metadata !{i32 322, i32 0, metadata !251, null}
!269 = metadata !{i32 324, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !251, i32 323, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!271 = metadata !{i32 328, i32 0, metadata !249, null}
!272 = metadata !{i32 330, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !249, i32 329, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!274 = metadata !{i32 332, i32 0, metadata !273, null}
!275 = metadata !{i32 335, i32 0, metadata !249, null}
!276 = metadata !{i32 337, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !249, i32 336, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c]
!278 = metadata !{i32 339, i32 0, metadata !277, null}
!279 = metadata !{i32 347, i32 0, metadata !247, null}
!280 = metadata !{i32 349, i32 0, metadata !247, null}
