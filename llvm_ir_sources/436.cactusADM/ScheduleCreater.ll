; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.T_SCHED_MODIFIER = type { %struct.T_SCHED_MODIFIER*, i32, i8* }
%struct.t_sched_item = type { i8*, i32, i8*, i32, i32, i8**, i8*, %struct.T_SCHED_MODIFIER* }
%struct.t_sched_group = type { i8*, i32*, i32, %struct.t_sched_item* }

@schedule_groups = internal global %struct.cHandledData* null, align 8
@n_schedule_groups = internal unnamed_addr global i32 0, align 4
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [66 x i8] c"Error while sorting group '%s' - %d remaining unsorted routines.\0A\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"Schedule sort failed with error code %d\0A\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str5 = private unnamed_addr constant [96 x i8] c"$Header: /cactus/Cactus/src/schedule/ScheduleCreater.c,v 1.11 2001/05/10 12:35:18 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_schedule_ScheduleCreater_c() #0 {
entry:
  ret i8* getelementptr inbounds ([96 x i8]* @.str5, i64 0, i64 0), !dbg !189
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.T_SCHED_MODIFIER* @CCTKi_ScheduleAddModifier(%struct.T_SCHED_MODIFIER* %orig, i8* nocapture %modifier, i8* nocapture %argument) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.T_SCHED_MODIFIER* %orig}, i64 0, metadata !39), !dbg !190
  tail call void @llvm.dbg.value(metadata !{i8* %modifier}, i64 0, metadata !40), !dbg !191
  tail call void @llvm.dbg.value(metadata !{i8* %argument}, i64 0, metadata !41), !dbg !192
  %call = tail call noalias i8* @malloc(i64 24) #8, !dbg !193
  %0 = bitcast i8* %call to %struct.T_SCHED_MODIFIER*, !dbg !193
  tail call void @llvm.dbg.value(metadata !{%struct.T_SCHED_MODIFIER* %0}, i64 0, metadata !42), !dbg !193
  %tobool = icmp eq i8* %call, null, !dbg !194
  br i1 %tobool, label %if.end10, label %if.then, !dbg !194

if.then:                                          ; preds = %entry
  %call1 = tail call i64 @strlen(i8* %argument) #9, !dbg !195
  %add = add i64 %call1, 1, !dbg !195
  %call2 = tail call noalias i8* @malloc(i64 %add) #8, !dbg !195
  %argument3 = getelementptr inbounds i8* %call, i64 16, !dbg !195
  %1 = bitcast i8* %argument3 to i8**, !dbg !195
  store i8* %call2, i8** %1, align 8, !dbg !195, !tbaa !197
  %tobool5 = icmp eq i8* %call2, null, !dbg !200
  br i1 %tobool5, label %if.else, label %if.then6, !dbg !200

if.then6:                                         ; preds = %if.then
  %call8 = tail call i8* @strcpy(i8* %call2, i8* %argument) #8, !dbg !201
  tail call void @llvm.dbg.value(metadata !{i8* %modifier}, i64 0, metadata !203) #7, !dbg !205
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !206) #7, !dbg !207
  %call.i = tail call i32 @strcmp(i8* %modifier, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #9, !dbg !208
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !208
  br i1 %tobool.i, label %ScheduleTranslateModifierType.exit, label %if.else.i, !dbg !208

if.else.i:                                        ; preds = %if.then6
  %call2.i = tail call i32 @strcmp(i8* %modifier, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !209
  %tobool3.i = icmp eq i32 %call2.i, 0, !dbg !209
  br i1 %tobool3.i, label %ScheduleTranslateModifierType.exit, label %if.else5.i, !dbg !209

if.else5.i:                                       ; preds = %if.else.i
  %call6.i = tail call i32 @strcmp(i8* %modifier, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #9, !dbg !210
  %tobool7.i = icmp eq i32 %call6.i, 0, !dbg !210
  tail call void @llvm.dbg.value(metadata !211, i64 0, metadata !206) #7, !dbg !212
  %..i = select i1 %tobool7.i, i32 3, i32 0, !dbg !210
  br label %ScheduleTranslateModifierType.exit, !dbg !210

ScheduleTranslateModifierType.exit:               ; preds = %if.then6, %if.else.i, %if.else5.i
  %call918 = phi i32 [ %..i, %if.else5.i ], [ 1, %if.then6 ], [ 2, %if.else.i ]
  %type = getelementptr inbounds i8* %call, i64 8, !dbg !204
  %2 = bitcast i8* %type to i32*, !dbg !204
  store i32 %call918, i32* %2, align 4, !dbg !204, !tbaa !198
  %next = bitcast i8* %call to %struct.T_SCHED_MODIFIER**, !dbg !214
  store %struct.T_SCHED_MODIFIER* %orig, %struct.T_SCHED_MODIFIER** %next, align 8, !dbg !214, !tbaa !197
  br label %if.end10, !dbg !215

if.else:                                          ; preds = %if.then
  tail call void @free(i8* %call) #8, !dbg !216
  tail call void @llvm.dbg.value(metadata !218, i64 0, metadata !42), !dbg !219
  br label %if.end10

if.end10:                                         ; preds = %entry, %ScheduleTranslateModifierType.exit, %if.else
  %this.0 = phi %struct.T_SCHED_MODIFIER* [ %0, %ScheduleTranslateModifierType.exit ], [ null, %if.else ], [ %0, %entry ]
  ret %struct.T_SCHED_MODIFIER* %this.0, !dbg !220
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DoScheduleFunction(i8* %gname, i8* nocapture %fname, i8* %func, %struct.T_SCHED_MODIFIER* %modifiers, i8* %attributes) #1 {
entry:
  %this_group = alloca i8*, align 8, !dbg !221
  call void @llvm.dbg.value(metadata !{i8* %gname}, i64 0, metadata !49), !dbg !222
  call void @llvm.dbg.value(metadata !{i8* %fname}, i64 0, metadata !50), !dbg !223
  call void @llvm.dbg.value(metadata !{i8* %func}, i64 0, metadata !51), !dbg !224
  call void @llvm.dbg.value(metadata !{%struct.T_SCHED_MODIFIER* %modifiers}, i64 0, metadata !52), !dbg !225
  call void @llvm.dbg.value(metadata !{i8* %attributes}, i64 0, metadata !53), !dbg !226
  %0 = load %struct.cHandledData** @schedule_groups, align 8, !dbg !221, !tbaa !197
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %gname, i8** %this_group) #8, !dbg !221
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !55), !dbg !221
  %cmp = icmp slt i32 %call, 0, !dbg !227
  br i1 %cmp, label %if.end, label %if.else, !dbg !227

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @ScheduleCreateGroup(i8* %gname) #10, !dbg !228
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !55), !dbg !228
  %cmp2 = icmp slt i32 %call1, 0, !dbg !230
  br i1 %cmp2, label %if.end9, label %if.else, !dbg !230

if.else:                                          ; preds = %entry, %if.end
  %handle.017 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  %call4 = call fastcc %struct.t_sched_item* @ScheduleCreateItem(i8* %fname, %struct.T_SCHED_MODIFIER* %modifiers, i8* %attributes) #10, !dbg !231
  call void @llvm.dbg.value(metadata !{%struct.t_sched_item* %call4}, i64 0, metadata !80), !dbg !231
  %tobool = icmp eq %struct.t_sched_item* %call4, null, !dbg !233
  br i1 %tobool, label %if.end9, label %if.then5, !dbg !233

if.then5:                                         ; preds = %if.else
  %type = getelementptr inbounds %struct.t_sched_item* %call4, i64 0, i32 1, !dbg !234
  store i32 2, i32* %type, align 4, !dbg !234, !tbaa !198
  %function = getelementptr inbounds %struct.t_sched_item* %call4, i64 0, i32 2, !dbg !236
  store i8* %func, i8** %function, align 8, !dbg !236, !tbaa !197
  %call6 = call fastcc i32 @ScheduleAddItem(i32 %handle.017, %struct.t_sched_item* %call4) #10, !dbg !237
  call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !54), !dbg !237
  br label %if.end9, !dbg !238

if.end9:                                          ; preds = %if.else, %if.end, %if.then5
  %retcode.0 = phi i32 [ %call6, %if.then5 ], [ -1, %if.end ], [ -1, %if.else ]
  ret i32 %retcode.0, !dbg !239
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @ScheduleCreateGroup(i8* %name) #1 {
entry:
  %this_group = alloca %struct.t_sched_group*, align 8
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !181), !dbg !240
  call void @llvm.dbg.declare(metadata !{%struct.t_sched_group** %this_group}, metadata !184), !dbg !241
  %0 = load %struct.cHandledData** @schedule_groups, align 8, !dbg !242, !tbaa !197
  %1 = bitcast %struct.t_sched_group** %this_group to i8**, !dbg !242
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %name, i8** %1) #8, !dbg !242
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !183), !dbg !242
  %cmp = icmp sgt i32 %call, -1, !dbg !243
  br i1 %cmp, label %if.end15, label %if.else, !dbg !243

if.else:                                          ; preds = %entry
  %call1 = call noalias i8* @malloc(i64 32) #8, !dbg !244
  %2 = bitcast i8* %call1 to %struct.t_sched_group*, !dbg !244
  call void @llvm.dbg.value(metadata !{%struct.t_sched_group* %2}, i64 0, metadata !184), !dbg !244
  store %struct.t_sched_group* %2, %struct.t_sched_group** %this_group, align 8, !dbg !244, !tbaa !197
  %tobool = icmp eq i8* %call1, null, !dbg !246
  br i1 %tobool, label %if.end15, label %if.then2, !dbg !246

if.then2:                                         ; preds = %if.else
  %call3 = call i64 @strlen(i8* %name) #9, !dbg !247
  %add = add i64 %call3, 1, !dbg !247
  %call4 = call noalias i8* @malloc(i64 %add) #8, !dbg !247
  call void @llvm.dbg.value(metadata !{%struct.t_sched_group** %this_group}, i64 0, metadata !184), !dbg !247
  %name5 = bitcast i8* %call1 to i8**, !dbg !247
  store i8* %call4, i8** %name5, align 8, !dbg !247, !tbaa !197
  call void @llvm.dbg.value(metadata !{%struct.t_sched_group** %this_group}, i64 0, metadata !184), !dbg !249
  %tobool7 = icmp eq i8* %call4, null, !dbg !249
  br i1 %tobool7, label %if.else12, label %if.then8, !dbg !249

if.then8:                                         ; preds = %if.then2
  %call10 = call i8* @strcpy(i8* %call4, i8* %name) #8, !dbg !250
  call void @llvm.dbg.value(metadata !{%struct.t_sched_group** %this_group}, i64 0, metadata !184), !dbg !252
  %3 = load %struct.t_sched_group** %this_group, align 8, !dbg !252, !tbaa !197
  %order = getelementptr inbounds %struct.t_sched_group* %3, i64 0, i32 1, !dbg !252
  store i32* null, i32** %order, align 8, !dbg !252, !tbaa !197
  call void @llvm.dbg.value(metadata !{%struct.t_sched_group** %this_group}, i64 0, metadata !184), !dbg !253
  %4 = load %struct.t_sched_group** %this_group, align 8, !dbg !253, !tbaa !197
  %n_scheditems = getelementptr inbounds %struct.t_sched_group* %4, i64 0, i32 2, !dbg !253
  store i32 0, i32* %n_scheditems, align 4, !dbg !253, !tbaa !254
  call void @llvm.dbg.value(metadata !{%struct.t_sched_group** %this_group}, i64 0, metadata !184), !dbg !255
  %scheditems = getelementptr inbounds %struct.t_sched_group* %4, i64 0, i32 3, !dbg !255
  store %struct.t_sched_item* null, %struct.t_sched_item** %scheditems, align 8, !dbg !255, !tbaa !197
  call void @llvm.dbg.value(metadata !{%struct.t_sched_group** %this_group}, i64 0, metadata !184), !dbg !256
  %5 = load %struct.t_sched_group** %this_group, align 8, !dbg !256, !tbaa !197
  %6 = bitcast %struct.t_sched_group* %5 to i8*, !dbg !256
  %call11 = call i32 @Util_NewHandle(%struct.cHandledData** @schedule_groups, i8* %name, i8* %6) #8, !dbg !256
  call void @llvm.dbg.value(metadata !{i32 %call11}, i64 0, metadata !182), !dbg !256
  %7 = load i32* @n_schedule_groups, align 4, !dbg !257, !tbaa !254
  %inc = add nsw i32 %7, 1, !dbg !257
  store i32 %inc, i32* @n_schedule_groups, align 4, !dbg !257, !tbaa !254
  br label %if.end15, !dbg !258

if.else12:                                        ; preds = %if.then2
  call void @free(i8* %call1) #8, !dbg !259
  call void @llvm.dbg.value(metadata !261, i64 0, metadata !182), !dbg !262
  br label %if.end15

if.end15:                                         ; preds = %if.else, %entry, %if.else12, %if.then8
  %retcode.0 = phi i32 [ %call11, %if.then8 ], [ -2, %if.else12 ], [ -1, %entry ], [ -2, %if.else ]
  ret i32 %retcode.0, !dbg !263
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc noalias %struct.t_sched_item* @ScheduleCreateItem(i8* nocapture %name, %struct.T_SCHED_MODIFIER* %modifiers, i8* %attributes) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !165), !dbg !264
  tail call void @llvm.dbg.value(metadata !{%struct.T_SCHED_MODIFIER* %modifiers}, i64 0, metadata !166), !dbg !264
  tail call void @llvm.dbg.value(metadata !{i8* %attributes}, i64 0, metadata !167), !dbg !264
  %call = tail call noalias i8* @malloc(i64 56) #8, !dbg !265
  %0 = bitcast i8* %call to %struct.t_sched_item*, !dbg !265
  tail call void @llvm.dbg.value(metadata !{%struct.t_sched_item* %0}, i64 0, metadata !168), !dbg !265
  %tobool = icmp eq i8* %call, null, !dbg !266
  br i1 %tobool, label %if.end12, label %if.then, !dbg !266

if.then:                                          ; preds = %entry
  %call1 = tail call i64 @strlen(i8* %name) #9, !dbg !267
  %add = add i64 %call1, 1, !dbg !267
  %call2 = tail call noalias i8* @malloc(i64 %add) #8, !dbg !267
  %name3 = bitcast i8* %call to i8**, !dbg !267
  store i8* %call2, i8** %name3, align 8, !dbg !267, !tbaa !197
  %tobool5 = icmp eq i8* %call2, null, !dbg !269
  br i1 %tobool5, label %if.else, label %if.then6, !dbg !269

if.then6:                                         ; preds = %if.then
  %call8 = tail call i8* @strcpy(i8* %call2, i8* %name) #8, !dbg !270
  %type = getelementptr inbounds i8* %call, i64 8, !dbg !272
  %1 = bitcast i8* %type to i32*, !dbg !272
  store i32 0, i32* %1, align 4, !dbg !272, !tbaa !198
  %function = getelementptr inbounds i8* %call, i64 16, !dbg !273
  %2 = bitcast i8* %function to i8**, !dbg !273
  store i8* null, i8** %2, align 8, !dbg !273, !tbaa !197
  %group = getelementptr inbounds i8* %call, i64 24, !dbg !274
  %3 = bitcast i8* %group to i32*, !dbg !274
  store i32 -1, i32* %3, align 4, !dbg !274, !tbaa !254
  %modifiers9 = getelementptr inbounds i8* %call, i64 48, !dbg !275
  %4 = bitcast i8* %modifiers9 to %struct.T_SCHED_MODIFIER**, !dbg !275
  store %struct.T_SCHED_MODIFIER* %modifiers, %struct.T_SCHED_MODIFIER** %4, align 8, !dbg !275, !tbaa !197
  %n_whiles = getelementptr inbounds i8* %call, i64 28, !dbg !276
  %5 = bitcast i8* %n_whiles to i32*, !dbg !276
  store i32 0, i32* %5, align 4, !dbg !276, !tbaa !254
  %whiles = getelementptr inbounds i8* %call, i64 32, !dbg !277
  %6 = bitcast i8* %whiles to i8***, !dbg !277
  store i8** null, i8*** %6, align 8, !dbg !277, !tbaa !197
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !278) #7, !dbg !280
  %tobool2.i = icmp eq %struct.T_SCHED_MODIFIER* %modifiers, null, !dbg !281
  br i1 %tobool2.i, label %ScheduleSetupWhiles.exit, label %for.body.i, !dbg !281

for.body.i:                                       ; preds = %if.then6, %for.inc.i
  %7 = phi i8** [ %14, %for.inc.i ], [ null, %if.then6 ]
  %8 = phi i32 [ %15, %for.inc.i ], [ 0, %if.then6 ]
  %modifier.04.i = phi %struct.T_SCHED_MODIFIER* [ %modifier.0.i, %for.inc.i ], [ %modifiers, %if.then6 ]
  %type.i = getelementptr inbounds %struct.T_SCHED_MODIFIER* %modifier.04.i, i64 0, i32 1, !dbg !283
  %9 = load i32* %type.i, align 4, !dbg !283, !tbaa !198
  %cmp.i = icmp eq i32 %9, 3, !dbg !283
  br i1 %cmp.i, label %if.then.i, label %for.inc.i, !dbg !283

if.then.i:                                        ; preds = %for.body.i
  %inc.i = add nsw i32 %8, 1, !dbg !285
  store i32 %inc.i, i32* %5, align 4, !dbg !285, !tbaa !254
  %10 = bitcast i8** %7 to i8*, !dbg !287
  %conv.i = sext i32 %inc.i to i64, !dbg !287
  %mul.i = shl nsw i64 %conv.i, 3, !dbg !287
  %call.i = tail call i8* @realloc(i8* %10, i64 %mul.i) #8, !dbg !287
  %11 = bitcast i8* %call.i to i8**, !dbg !287
  tail call void @llvm.dbg.value(metadata !{i8** %11}, i64 0, metadata !288) #7, !dbg !287
  %tobool3.i = icmp eq i8* %call.i, null, !dbg !289
  br i1 %tobool3.i, label %for.inc.i, label %if.then4.i, !dbg !289

if.then4.i:                                       ; preds = %if.then.i
  store i8** %11, i8*** %6, align 8, !dbg !290, !tbaa !197
  %argument.i = getelementptr inbounds %struct.T_SCHED_MODIFIER* %modifier.04.i, i64 0, i32 2, !dbg !292
  %12 = load i8** %argument.i, align 8, !dbg !292, !tbaa !197
  %call6.i = tail call i64 @strlen(i8* %12) #9, !dbg !292
  %add.i = add i64 %call6.i, 1, !dbg !292
  %call8.i = tail call noalias i8* @malloc(i64 %add.i) #8, !dbg !292
  %idxprom.i = sext i32 %8 to i64, !dbg !292
  %arrayidx.i = getelementptr inbounds i8** %11, i64 %idxprom.i, !dbg !292
  store i8* %call8.i, i8** %arrayidx.i, align 8, !dbg !292, !tbaa !197
  %tobool14.i = icmp eq i8* %call8.i, null, !dbg !293
  br i1 %tobool14.i, label %if.else.i, label %if.then15.i, !dbg !293

if.then15.i:                                      ; preds = %if.then4.i
  %13 = load i8** %argument.i, align 8, !dbg !294, !tbaa !197
  %call21.i = tail call i8* @strcpy(i8* %call8.i, i8* %13) #8, !dbg !294
  br label %for.inc.i, !dbg !296

if.else.i:                                        ; preds = %if.then4.i
  store i32 %8, i32* %5, align 4, !dbg !297, !tbaa !254
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then15.i, %if.then.i, %for.body.i
  %14 = phi i8** [ %11, %if.else.i ], [ %11, %if.then15.i ], [ %7, %if.then.i ], [ %7, %for.body.i ]
  %15 = phi i32 [ %8, %if.else.i ], [ %inc.i, %if.then15.i ], [ %inc.i, %if.then.i ], [ %8, %for.body.i ]
  %next.i = getelementptr inbounds %struct.T_SCHED_MODIFIER* %modifier.04.i, i64 0, i32 0, !dbg !281
  %modifier.0.i = load %struct.T_SCHED_MODIFIER** %next.i, align 8, !dbg !281
  %tobool.i = icmp eq %struct.T_SCHED_MODIFIER* %modifier.0.i, null, !dbg !281
  br i1 %tobool.i, label %ScheduleSetupWhiles.exit, label %for.body.i, !dbg !281

ScheduleSetupWhiles.exit:                         ; preds = %for.inc.i, %if.then6
  %attributes11 = getelementptr inbounds i8* %call, i64 40, !dbg !299
  %16 = bitcast i8* %attributes11 to i8**, !dbg !299
  store i8* %attributes, i8** %16, align 8, !dbg !299, !tbaa !197
  br label %if.end12, !dbg !300

if.else:                                          ; preds = %if.then
  tail call void @free(i8* %call) #8, !dbg !301
  tail call void @llvm.dbg.value(metadata !303, i64 0, metadata !168), !dbg !304
  br label %if.end12

if.end12:                                         ; preds = %entry, %ScheduleSetupWhiles.exit, %if.else
  %this.0 = phi %struct.t_sched_item* [ %0, %ScheduleSetupWhiles.exit ], [ null, %if.else ], [ %0, %entry ]
  ret %struct.t_sched_item* %this.0, !dbg !305
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @ScheduleAddItem(i32 %ghandle, %struct.t_sched_item* nocapture %item) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %ghandle}, i64 0, metadata !156), !dbg !306
  tail call void @llvm.dbg.value(metadata !{%struct.t_sched_item* %item}, i64 0, metadata !157), !dbg !306
  %0 = load %struct.cHandledData** @schedule_groups, align 8, !dbg !307, !tbaa !197
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %ghandle) #8, !dbg !307
  %n_scheditems = getelementptr inbounds i8* %call, i64 16, !dbg !308
  %1 = bitcast i8* %n_scheditems to i32*, !dbg !308
  %2 = load i32* %1, align 4, !dbg !308, !tbaa !254
  %inc = add nsw i32 %2, 1, !dbg !308
  store i32 %inc, i32* %1, align 4, !dbg !308, !tbaa !254
  %scheditems = getelementptr inbounds i8* %call, i64 24, !dbg !309
  %3 = bitcast i8* %scheditems to %struct.t_sched_item**, !dbg !309
  %4 = load %struct.t_sched_item** %3, align 8, !dbg !309, !tbaa !197
  %5 = bitcast %struct.t_sched_item* %4 to i8*, !dbg !309
  %conv = sext i32 %inc to i64, !dbg !309
  %mul = mul i64 %conv, 56, !dbg !309
  %call2 = tail call i8* @realloc(i8* %5, i64 %mul) #8, !dbg !309
  %6 = bitcast i8* %call2 to %struct.t_sched_item*, !dbg !309
  tail call void @llvm.dbg.value(metadata !{%struct.t_sched_item* %6}, i64 0, metadata !160), !dbg !309
  %tobool = icmp eq i8* %call2, null, !dbg !310
  br i1 %tobool, label %if.else, label %if.then, !dbg !310

if.then:                                          ; preds = %entry
  store %struct.t_sched_item* %6, %struct.t_sched_item** %3, align 8, !dbg !311, !tbaa !197
  %7 = load i32* %1, align 4, !dbg !313, !tbaa !254
  %sub = add nsw i32 %7, -1, !dbg !313
  %idxprom = sext i32 %sub to i64, !dbg !313
  %arrayidx = getelementptr inbounds %struct.t_sched_item* %6, i64 %idxprom, !dbg !313
  %8 = bitcast %struct.t_sched_item* %arrayidx to i8*, !dbg !313
  %9 = bitcast %struct.t_sched_item* %item to i8*, !dbg !313
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 56, i32 8, i1 false), !dbg !313, !tbaa.struct !314
  tail call void @free(i8* %9) #8, !dbg !315
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !158), !dbg !316
  br label %if.end, !dbg !317

if.else:                                          ; preds = %entry
  %10 = load i32* %1, align 4, !dbg !318, !tbaa !254
  %dec = add nsw i32 %10, -1, !dbg !318
  store i32 %dec, i32* %1, align 4, !dbg !318, !tbaa !254
  tail call void @llvm.dbg.value(metadata !320, i64 0, metadata !158), !dbg !321
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retcode.0 = phi i32 [ 0, %if.then ], [ -1, %if.else ]
  ret i32 %retcode.0, !dbg !322
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DoScheduleGroup(i8* %gname, i8* %thisname, %struct.T_SCHED_MODIFIER* %modifiers, i8* %attributes) #1 {
entry:
  %this_group = alloca i8*, align 8, !dbg !323
  call void @llvm.dbg.value(metadata !{i8* %gname}, i64 0, metadata !85), !dbg !324
  call void @llvm.dbg.value(metadata !{i8* %thisname}, i64 0, metadata !86), !dbg !325
  call void @llvm.dbg.value(metadata !{%struct.T_SCHED_MODIFIER* %modifiers}, i64 0, metadata !87), !dbg !326
  call void @llvm.dbg.value(metadata !{i8* %attributes}, i64 0, metadata !88), !dbg !327
  %0 = load %struct.cHandledData** @schedule_groups, align 8, !dbg !323, !tbaa !197
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %gname, i8** %this_group) #8, !dbg !323
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !90), !dbg !323
  %cmp = icmp slt i32 %call, 0, !dbg !328
  br i1 %cmp, label %if.then, label %if.end, !dbg !328

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @ScheduleCreateGroup(i8* %gname) #10, !dbg !329
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !90), !dbg !329
  br label %if.end, !dbg !331

if.end:                                           ; preds = %if.then, %entry
  %handle.0 = phi i32 [ %call1, %if.then ], [ %call, %entry ]
  %1 = load %struct.cHandledData** @schedule_groups, align 8, !dbg !332, !tbaa !197
  %call2 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %thisname, i8** %this_group) #8, !dbg !332
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !91), !dbg !332
  %cmp3 = icmp slt i32 %call2, 0, !dbg !333
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !333

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i32 @ScheduleCreateGroup(i8* %thisname) #10, !dbg !334
  call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !91), !dbg !334
  br label %if.end6, !dbg !336

if.end6:                                          ; preds = %if.then4, %if.end
  %thishandle.0 = phi i32 [ %call5, %if.then4 ], [ %call2, %if.end ]
  %2 = or i32 %thishandle.0, %handle.0, !dbg !337
  %3 = icmp slt i32 %2, 0, !dbg !337
  br i1 %3, label %if.end15, label %if.else, !dbg !337

if.else:                                          ; preds = %if.end6
  %call10 = call fastcc %struct.t_sched_item* @ScheduleCreateItem(i8* %thisname, %struct.T_SCHED_MODIFIER* %modifiers, i8* %attributes) #10, !dbg !338
  call void @llvm.dbg.value(metadata !{%struct.t_sched_item* %call10}, i64 0, metadata !93), !dbg !338
  %tobool = icmp eq %struct.t_sched_item* %call10, null, !dbg !340
  br i1 %tobool, label %if.end15, label %if.then11, !dbg !340

if.then11:                                        ; preds = %if.else
  %type = getelementptr inbounds %struct.t_sched_item* %call10, i64 0, i32 1, !dbg !341
  store i32 1, i32* %type, align 4, !dbg !341, !tbaa !198
  %group = getelementptr inbounds %struct.t_sched_item* %call10, i64 0, i32 3, !dbg !343
  store i32 %thishandle.0, i32* %group, align 4, !dbg !343, !tbaa !254
  %call12 = call fastcc i32 @ScheduleAddItem(i32 %handle.0, %struct.t_sched_item* %call10) #10, !dbg !344
  call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !89), !dbg !344
  br label %if.end15, !dbg !345

if.end15:                                         ; preds = %if.else, %if.end6, %if.then11
  %retcode.0 = phi i32 [ %call12, %if.then11 ], [ -1, %if.end6 ], [ -1, %if.else ]
  ret i32 %retcode.0, !dbg !346
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DoScheduleSortAllGroups() #1 {
entry:
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !101), !dbg !347
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !98), !dbg !348
  %0 = load i32* @n_schedule_groups, align 4, !dbg !348, !tbaa !254
  %cmp16 = icmp sgt i32 %0, 0, !dbg !348
  br i1 %cmp16, label %for.body, label %for.end, !dbg !348

for.body:                                         ; preds = %entry, %for.inc
  %n_errors.018 = phi i32 [ %n_errors.1, %for.inc ], [ 0, %entry ]
  %group.017 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %1 = load %struct.cHandledData** @schedule_groups, align 8, !dbg !350, !tbaa !197
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %group.017) #8, !dbg !350
  %tobool = icmp eq i8* %call, null, !dbg !350
  br i1 %tobool, label %for.inc, label %if.then, !dbg !350

if.then:                                          ; preds = %for.body
  %n_scheditems.i = getelementptr inbounds i8* %call, i64 16, !dbg !352
  %2 = bitcast i8* %n_scheditems.i to i32*, !dbg !352
  %3 = load i32* %2, align 4, !dbg !352, !tbaa !254
  %call.i = tail call i8** @CCTKi_ScheduleCreateArray(i32 %3) #8, !dbg !352
  tail call void @llvm.dbg.value(metadata !{i8** %call.i}, i64 0, metadata !355) #7, !dbg !352
  %4 = load i32* %2, align 4, !dbg !356, !tbaa !254
  %call2.i = tail call i32* @CCTKi_ScheduleCreateIVec(i32 %4) #8, !dbg !356
  tail call void @llvm.dbg.value(metadata !{i32* %call2.i}, i64 0, metadata !357) #7, !dbg !356
  %5 = load i32* %2, align 4, !dbg !358, !tbaa !254
  %call4.i = tail call i32* @CCTKi_ScheduleCreateIVec(i32 %5) #8, !dbg !358
  tail call void @llvm.dbg.value(metadata !{i32* %call4.i}, i64 0, metadata !359) #7, !dbg !358
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !360) #7, !dbg !361
  %6 = load i32* %2, align 4, !dbg !361, !tbaa !254
  %cmp80.i = icmp sgt i32 %6, 0, !dbg !361
  br i1 %cmp80.i, label %for.body.lr.ph.i, label %for.end31.i, !dbg !361

for.body.lr.ph.i:                                 ; preds = %if.then
  %scheditems.i = getelementptr inbounds i8* %call, i64 24, !dbg !363
  %7 = bitcast i8* %scheditems.i to %struct.t_sched_item**, !dbg !363
  br label %for.body.i, !dbg !361

for.body.i:                                       ; preds = %for.inc29.i, %for.body.lr.ph.i
  %8 = phi i32 [ %6, %for.body.lr.ph.i ], [ %20, %for.inc29.i ]
  %indvars.iv84.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next85.i, %for.inc29.i ]
  %9 = load %struct.t_sched_item** %7, align 8, !dbg !363, !tbaa !197
  %modifiers.i = getelementptr inbounds %struct.t_sched_item* %9, i64 %indvars.iv84.i, i32 7, !dbg !363
  %modifier.075.i = load %struct.T_SCHED_MODIFIER** %modifiers.i, align 8, !dbg !363
  %tobool76.i = icmp eq %struct.T_SCHED_MODIFIER* %modifier.075.i, null, !dbg !363
  br i1 %tobool76.i, label %for.end.i, label %for.body7.i, !dbg !363

for.body7.i:                                      ; preds = %for.body.i, %for.inc.i
  %modifier.077.i = phi %struct.T_SCHED_MODIFIER* [ %modifier.0.i, %for.inc.i ], [ %modifier.075.i, %for.body.i ]
  %type.i = getelementptr inbounds %struct.T_SCHED_MODIFIER* %modifier.077.i, i64 0, i32 1, !dbg !366
  %10 = load i32* %type.i, align 4, !dbg !366, !tbaa !198
  %cmp8.i = icmp eq i32 %10, 3, !dbg !366
  br i1 %cmp8.i, label %for.inc.i, label %if.end.i, !dbg !366

if.end.i:                                         ; preds = %for.body7.i
  %argument.i = getelementptr inbounds %struct.T_SCHED_MODIFIER* %modifier.077.i, i64 0, i32 2, !dbg !368
  %11 = load i8** %argument.i, align 8, !dbg !368, !tbaa !197
  tail call void @llvm.dbg.value(metadata !{i8* %11}, i64 0, metadata !369) #7, !dbg !370
  tail call void @llvm.dbg.value(metadata !320, i64 0, metadata !371) #7, !dbg !372
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !373) #7, !dbg !374
  %12 = load i32* %2, align 4, !dbg !374, !tbaa !254
  %cmp6.i.i = icmp sgt i32 %12, 0, !dbg !374
  br i1 %cmp6.i.i, label %for.body.i.i, label %for.inc.i, !dbg !374

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nsw i32 %i.07.i.i, 1, !dbg !374
  %13 = trunc i64 %indvars.iv.next.i.i to i32, !dbg !374
  %cmp.i.i = icmp slt i32 %13, %12, !dbg !374
  br i1 %cmp.i.i, label %for.body.i.i, label %for.inc.i, !dbg !374

for.body.i.i:                                     ; preds = %if.end.i, %for.cond.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.cond.i.i ], [ 0, %if.end.i ]
  %i.07.i.i = phi i32 [ %inc.i.i, %for.cond.i.i ], [ 0, %if.end.i ]
  %name2.i.i = getelementptr inbounds %struct.t_sched_item* %9, i64 %indvars.iv.i.i, i32 0, !dbg !376
  %14 = load i8** %name2.i.i, align 8, !dbg !376, !tbaa !197
  %call.i.i = tail call i32 @strcmp(i8* %14, i8* %11) #9, !dbg !376
  %tobool.i.i = icmp eq i32 %call.i.i, 0, !dbg !376
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !374
  br i1 %tobool.i.i, label %ScheduleItemNumber.exit.i, label %for.cond.i.i, !dbg !376

ScheduleItemNumber.exit.i:                        ; preds = %for.body.i.i
  tail call void @llvm.dbg.value(metadata !{i32 %i.07.i.i}, i64 0, metadata !378) #7, !dbg !368
  %cmp10.i = icmp sgt i32 %i.07.i.i, -1, !dbg !379
  %cmp12.i = icmp slt i32 %i.07.i.i, %12, !dbg !379
  %or.cond.i = and i1 %cmp10.i, %cmp12.i, !dbg !379
  br i1 %or.cond.i, label %if.then13.i, label %for.inc.i, !dbg !379

if.then13.i:                                      ; preds = %ScheduleItemNumber.exit.i
  switch i32 %10, label %sw.default.i [
    i32 1, label %sw.epilog.i
    i32 2, label %sw.bb15.i
  ], !dbg !380

sw.bb15.i:                                        ; preds = %if.then13.i
  tail call void @llvm.dbg.value(metadata !382, i64 0, metadata !383) #7, !dbg !384
  br label %sw.epilog.i, !dbg !384

sw.default.i:                                     ; preds = %if.then13.i
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !383) #7, !dbg !386
  br label %sw.epilog.i, !dbg !387

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb15.i, %if.then13.i
  %mod.0.i = phi i32 [ 0, %sw.default.i ], [ 1, %sw.bb15.i ], [ -1, %if.then13.i ]
  %idxprom16.i = sext i32 %i.07.i.i to i64, !dbg !388
  %arrayidx17.i = getelementptr inbounds i32* %call4.i, i64 %idxprom16.i, !dbg !388
  store i32 %mod.0.i, i32* %arrayidx17.i, align 4, !dbg !388, !tbaa !254
  br label %for.inc.i, !dbg !389

for.inc.i:                                        ; preds = %for.cond.i.i, %sw.epilog.i, %ScheduleItemNumber.exit.i, %if.end.i, %for.body7.i
  %next.i = getelementptr inbounds %struct.T_SCHED_MODIFIER* %modifier.077.i, i64 0, i32 0, !dbg !363
  %modifier.0.i = load %struct.T_SCHED_MODIFIER** %next.i, align 8, !dbg !363
  %tobool.i = icmp eq %struct.T_SCHED_MODIFIER* %modifier.0.i, null, !dbg !363
  br i1 %tobool.i, label %for.cond6.for.end_crit_edge.i, label %for.body7.i, !dbg !363

for.cond6.for.end_crit_edge.i:                    ; preds = %for.inc.i
  %.pre.i = load i32* %2, align 4, !dbg !390, !tbaa !254
  br label %for.end.i, !dbg !363

for.end.i:                                        ; preds = %for.cond6.for.end_crit_edge.i, %for.body.i
  %15 = phi i32 [ %.pre.i, %for.cond6.for.end_crit_edge.i ], [ %8, %for.body.i ]
  %16 = trunc i64 %indvars.iv84.i to i32, !dbg !390
  %call20.i = tail call i32 @CCTKi_ScheduleAddRow(i32 %15, i8** %call.i, i32* %call2.i, i32 %16, i32* %call4.i) #8, !dbg !390
  tail call void @llvm.dbg.value(metadata !16, i64 0, metadata !391) #7, !dbg !392
  %17 = load i32* %2, align 4, !dbg !392, !tbaa !254
  %cmp2378.i = icmp sgt i32 %17, 0, !dbg !392
  br i1 %cmp2378.i, label %for.body24.i, label %for.inc29.i, !dbg !392

for.body24.i:                                     ; preds = %for.end.i, %for.body24.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body24.i ], [ 0, %for.end.i ]
  %arrayidx26.i = getelementptr inbounds i32* %call4.i, i64 %indvars.iv.i, !dbg !394
  store i32 0, i32* %arrayidx26.i, align 4, !dbg !394, !tbaa !254
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !392
  %18 = load i32* %2, align 4, !dbg !392, !tbaa !254
  %19 = trunc i64 %indvars.iv.next.i to i32, !dbg !392
  %cmp23.i = icmp slt i32 %19, %18, !dbg !392
  br i1 %cmp23.i, label %for.body24.i, label %for.inc29.i, !dbg !392

for.inc29.i:                                      ; preds = %for.body24.i, %for.end.i
  %20 = phi i32 [ %17, %for.end.i ], [ %18, %for.body24.i ]
  %indvars.iv.next85.i = add i64 %indvars.iv84.i, 1, !dbg !361
  %21 = trunc i64 %indvars.iv.next85.i to i32, !dbg !361
  %cmp.i = icmp slt i32 %21, %20, !dbg !361
  br i1 %cmp.i, label %for.body.i, label %for.end31.i, !dbg !361

for.end31.i:                                      ; preds = %for.inc29.i, %if.then
  %.lcssa.i = phi i32 [ %6, %if.then ], [ %20, %for.inc29.i ]
  %call33.i = tail call i32 @CCTKi_ScheduleSort(i32 %.lcssa.i, i8** %call.i, i32* %call2.i) #8, !dbg !396
  tail call void @llvm.dbg.value(metadata !{i32 %call33.i}, i64 0, metadata !397) #7, !dbg !396
  %tobool34.i = icmp eq i32 %call33.i, 0, !dbg !398
  br i1 %tobool34.i, label %for.inc.critedge, label %if.then35.i, !dbg !398

if.then35.i:                                      ; preds = %for.end31.i
  %22 = load %struct._IO_FILE** @stderr, align 8, !dbg !399, !tbaa !197
  %call36.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), i32 %call33.i) #8, !dbg !399
  %23 = load i32* %2, align 4, !dbg !401, !tbaa !254
  tail call void @CCTKi_ScheduleDestroyIVec(i32 %23, i32* %call4.i) #8, !dbg !401
  %24 = load i32* %2, align 4, !dbg !402, !tbaa !254
  tail call void @CCTKi_ScheduleDestroyArray(i32 %24, i8** %call.i) #8, !dbg !402
  %order40.i = getelementptr inbounds i8* %call, i64 8, !dbg !403
  %25 = bitcast i8* %order40.i to i32**, !dbg !403
  store i32* %call2.i, i32** %25, align 8, !dbg !403, !tbaa !197
  tail call void @llvm.dbg.value(metadata !{i32 %call33.i}, i64 0, metadata !100), !dbg !353
  %26 = load %struct._IO_FILE** @stderr, align 8, !dbg !404, !tbaa !197
  %name = bitcast i8* %call to i8**, !dbg !404
  %27 = load i8** %name, align 8, !dbg !404, !tbaa !197
  %sub = sub nsw i32 0, %call33.i, !dbg !404
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %sub) #8, !dbg !404
  %add = sub i32 %n_errors.018, %call33.i, !dbg !406
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !101), !dbg !406
  br label %for.inc, !dbg !407

for.inc.critedge:                                 ; preds = %for.end31.i
  %28 = load i32* %2, align 4, !dbg !401, !tbaa !254
  tail call void @CCTKi_ScheduleDestroyIVec(i32 %28, i32* %call4.i) #8, !dbg !401
  %29 = load i32* %2, align 4, !dbg !402, !tbaa !254
  tail call void @CCTKi_ScheduleDestroyArray(i32 %29, i8** %call.i) #8, !dbg !402
  %order40.i.c = getelementptr inbounds i8* %call, i64 8, !dbg !403
  %30 = bitcast i8* %order40.i.c to i32**, !dbg !403
  store i32* %call2.i, i32** %30, align 8, !dbg !403, !tbaa !197
  tail call void @llvm.dbg.value(metadata !{i32 %call33.i}, i64 0, metadata !100), !dbg !353
  br label %for.inc

for.inc:                                          ; preds = %for.inc.critedge, %for.body, %if.then35.i
  %n_errors.1 = phi i32 [ %add, %if.then35.i ], [ %n_errors.018, %for.body ], [ %n_errors.018, %for.inc.critedge ]
  %inc = add nsw i32 %group.017, 1, !dbg !348
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !98), !dbg !348
  %31 = load i32* @n_schedule_groups, align 4, !dbg !348, !tbaa !254
  %cmp = icmp slt i32 %inc, %31, !dbg !348
  br i1 %cmp, label %for.body, label %for.end, !dbg !348

for.end:                                          ; preds = %for.inc, %entry
  %n_errors.0.lcssa = phi i32 [ 0, %entry ], [ %n_errors.1, %for.inc ]
  %sub7 = sub nsw i32 0, %n_errors.0.lcssa, !dbg !408
  ret i32 %sub7, !dbg !408
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize readonly uwtable
define %struct.cHandledData* @CCTKi_DoScheduleGetGroups() #6 {
entry:
  %0 = load %struct.cHandledData** @schedule_groups, align 8, !dbg !409, !tbaa !197
  ret %struct.cHandledData* %0, !dbg !409
}

; Function Attrs: optsize
declare i8** @CCTKi_ScheduleCreateArray(i32) #5

; Function Attrs: optsize
declare i32* @CCTKi_ScheduleCreateIVec(i32) #5

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleAddRow(i32, i8**, i32*, i32, i32*) #5

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleSort(i32, i8**, i32*) #5

; Function Attrs: optsize
declare void @CCTKi_ScheduleDestroyIVec(i32, i32*) #5

; Function Attrs: optsize
declare void @CCTKi_ScheduleDestroyArray(i32, i8**) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #7

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !16, metadata !17, metadata !185, metadata !16, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !10}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 17, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 17, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctki_Schedule.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9}
!6 = metadata !{i32 786472, metadata !"sched_mod_none", i64 0} ; [ DW_TAG_enumerator ] [sched_mod_none :: 0]
!7 = metadata !{i32 786472, metadata !"sched_before", i64 1} ; [ DW_TAG_enumerator ] [sched_before :: 1]
!8 = metadata !{i32 786472, metadata !"sched_after", i64 2} ; [ DW_TAG_enumerator ] [sched_after :: 2]
!9 = metadata !{i32 786472, metadata !"sched_while", i64 3} ; [ DW_TAG_enumerator ] [sched_while :: 3]
!10 = metadata !{i32 786436, metadata !11, null, metadata !"", i32 45, i64 32, i64 32, i32 0, i32 0, null, metadata !12, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 45, size 32, align 32, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/Schedule.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !14, metadata !15}
!13 = metadata !{i32 786472, metadata !"sched_item_none", i64 0} ; [ DW_TAG_enumerator ] [sched_item_none :: 0]
!14 = metadata !{i32 786472, metadata !"sched_group", i64 1} ; [ DW_TAG_enumerator ] [sched_group :: 1]
!15 = metadata !{i32 786472, metadata !"sched_function", i64 2} ; [ DW_TAG_enumerator ] [sched_function :: 2]
!16 = metadata !{i32 0}
!17 = metadata !{metadata !18, metadata !25, metadata !43, metadata !81, metadata !94, metadata !102, metadata !121, metadata !138, metadata !146, metadata !152, metadata !161, metadata !169, metadata !177}
!18 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"CCTKi_version_schedule_ScheduleCreater_c", metadata !"CCTKi_version_schedule_ScheduleCreater_c", metadata !"", i32 26, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_schedule_ScheduleCreater_c, null, null, metadata !16, i32 26} ; [ DW_TAG_subprogram ] [line 26] [def] [CCTKi_version_schedule_ScheduleCreater_c]
!19 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!23 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!24 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!25 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"CCTKi_ScheduleAddModifier", metadata !"CCTKi_ScheduleAddModifier", metadata !"", i32 107, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.T_SCHED_MODIFIER* (%struct.T_SCHED_MODIFIER*, i8*, i8*)* @CCTKi_ScheduleAddModifier, null, null, metadata !38, i32 110} ; [ DW_TAG_subprogram ] [line 107] [def] [scope 110] [CCTKi_ScheduleAddModifier]
!26 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!27 = metadata !{metadata !28, metadata !28, metadata !22, metadata !22}
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_sched_modifier]
!29 = metadata !{i32 786454, metadata !1, null, metadata !"t_sched_modifier", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [t_sched_modifier] [line 27, size 0, align 0, offset 0] [from T_SCHED_MODIFIER]
!30 = metadata !{i32 786451, metadata !4, null, metadata !"T_SCHED_MODIFIER", i32 19, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [T_SCHED_MODIFIER] [line 19, size 192, align 64, offset 0] [from ]
!31 = metadata !{metadata !32, metadata !34, metadata !36}
!32 = metadata !{i32 786445, metadata !4, metadata !30, metadata !"next", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [next] [line 21, size 64, align 64, offset 0] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from T_SCHED_MODIFIER]
!34 = metadata !{i32 786445, metadata !4, metadata !30, metadata !"type", i32 23, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [type] [line 23, size 32, align 32, offset 64] [from t_sched_modifier_type]
!35 = metadata !{i32 786454, metadata !4, null, metadata !"t_sched_modifier_type", i32 17, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [t_sched_modifier_type] [line 17, size 0, align 0, offset 0] [from ]
!36 = metadata !{i32 786445, metadata !4, metadata !30, metadata !"argument", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [argument] [line 25, size 64, align 64, offset 128] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42}
!39 = metadata !{i32 786689, metadata !25, metadata !"orig", metadata !19, i32 16777323, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [orig] [line 107]
!40 = metadata !{i32 786689, metadata !25, metadata !"modifier", metadata !19, i32 33554540, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [modifier] [line 108]
!41 = metadata !{i32 786689, metadata !25, metadata !"argument", metadata !19, i32 50331757, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argument] [line 109]
!42 = metadata !{i32 786688, metadata !25, metadata !"this", metadata !19, i32 111, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this] [line 111]
!43 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"CCTKi_DoScheduleFunction", metadata !"CCTKi_DoScheduleFunction", metadata !"", i32 186, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i8*, %struct.T_SCHED_MODIFIER*, i8*)* @CCTKi_DoScheduleFunction, null, null, metadata !48, i32 191} ; [ DW_TAG_subprogram ] [line 186] [def] [scope 191] [CCTKi_DoScheduleFunction]
!44 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!45 = metadata !{metadata !46, metadata !22, metadata !22, metadata !47, metadata !28, metadata !47}
!46 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !80}
!49 = metadata !{i32 786689, metadata !43, metadata !"gname", metadata !19, i32 16777402, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gname] [line 186]
!50 = metadata !{i32 786689, metadata !43, metadata !"fname", metadata !19, i32 33554619, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fname] [line 187]
!51 = metadata !{i32 786689, metadata !43, metadata !"func", metadata !19, i32 50331836, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 188]
!52 = metadata !{i32 786689, metadata !43, metadata !"modifiers", metadata !19, i32 67109053, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [modifiers] [line 189]
!53 = metadata !{i32 786689, metadata !43, metadata !"attributes", metadata !19, i32 83886270, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [attributes] [line 190]
!54 = metadata !{i32 786688, metadata !43, metadata !"retcode", metadata !19, i32 192, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retcode] [line 192]
!55 = metadata !{i32 786688, metadata !43, metadata !"handle", metadata !19, i32 193, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 193]
!56 = metadata !{i32 786688, metadata !43, metadata !"this_group", metadata !19, i32 194, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_group] [line 194]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_sched_group]
!58 = metadata !{i32 786454, metadata !1, null, metadata !"t_sched_group", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [t_sched_group] [line 73, size 0, align 0, offset 0] [from ]
!59 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 64, i64 256, i64 64, i32 0, i32 0, null, metadata !60, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 64, size 256, align 64, offset 0] [from ]
!60 = metadata !{metadata !61, metadata !62, metadata !64, metadata !65}
!61 = metadata !{i32 786445, metadata !11, metadata !59, metadata !"name", i32 66, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [name] [line 66, size 64, align 64, offset 0] [from ]
!62 = metadata !{i32 786445, metadata !11, metadata !59, metadata !"order", i32 67, i64 64, i64 64, i64 64, i32 0, metadata !63} ; [ DW_TAG_member ] [order] [line 67, size 64, align 64, offset 64] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!64 = metadata !{i32 786445, metadata !11, metadata !59, metadata !"n_scheditems", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [n_scheditems] [line 69, size 32, align 32, offset 128] [from int]
!65 = metadata !{i32 786445, metadata !11, metadata !59, metadata !"scheditems", i32 71, i64 64, i64 64, i64 192, i32 0, metadata !66} ; [ DW_TAG_member ] [scheditems] [line 71, size 64, align 64, offset 192] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_sched_item]
!67 = metadata !{i32 786454, metadata !11, null, metadata !"t_sched_item", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [t_sched_item] [line 62, size 0, align 0, offset 0] [from ]
!68 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 47, i64 448, i64 64, i32 0, i32 0, null, metadata !69, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 47, size 448, align 64, offset 0] [from ]
!69 = metadata !{metadata !70, metadata !71, metadata !73, metadata !74, metadata !75, metadata !76, metadata !78, metadata !79}
!70 = metadata !{i32 786445, metadata !11, metadata !68, metadata !"name", i32 49, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [name] [line 49, size 64, align 64, offset 0] [from ]
!71 = metadata !{i32 786445, metadata !11, metadata !68, metadata !"type", i32 51, i64 32, i64 32, i64 64, i32 0, metadata !72} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 64] [from t_sched_item_type]
!72 = metadata !{i32 786454, metadata !11, null, metadata !"t_sched_item_type", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [t_sched_item_type] [line 45, size 0, align 0, offset 0] [from ]
!73 = metadata !{i32 786445, metadata !11, metadata !68, metadata !"function", i32 53, i64 64, i64 64, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [function] [line 53, size 64, align 64, offset 128] [from ]
!74 = metadata !{i32 786445, metadata !11, metadata !68, metadata !"group", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [group] [line 54, size 32, align 32, offset 192] [from int]
!75 = metadata !{i32 786445, metadata !11, metadata !68, metadata !"n_whiles", i32 56, i64 32, i64 32, i64 224, i32 0, metadata !46} ; [ DW_TAG_member ] [n_whiles] [line 56, size 32, align 32, offset 224] [from int]
!76 = metadata !{i32 786445, metadata !11, metadata !68, metadata !"whiles", i32 57, i64 64, i64 64, i64 256, i32 0, metadata !77} ; [ DW_TAG_member ] [whiles] [line 57, size 64, align 64, offset 256] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!78 = metadata !{i32 786445, metadata !11, metadata !68, metadata !"attributes", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !47} ; [ DW_TAG_member ] [attributes] [line 59, size 64, align 64, offset 320] [from ]
!79 = metadata !{i32 786445, metadata !11, metadata !68, metadata !"modifiers", i32 61, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [modifiers] [line 61, size 64, align 64, offset 384] [from ]
!80 = metadata !{i32 786688, metadata !43, metadata !"newitem", metadata !19, i32 195, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newitem] [line 195]
!81 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"CCTKi_DoScheduleGroup", metadata !"CCTKi_DoScheduleGroup", metadata !"", i32 270, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, %struct.T_SCHED_MODIFIER*, i8*)* @CCTKi_DoScheduleGroup, null, null, metadata !84, i32 274} ; [ DW_TAG_subprogram ] [line 270] [def] [scope 274] [CCTKi_DoScheduleGroup]
!82 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{metadata !46, metadata !22, metadata !22, metadata !28, metadata !47}
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93}
!85 = metadata !{i32 786689, metadata !81, metadata !"gname", metadata !19, i32 16777486, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gname] [line 270]
!86 = metadata !{i32 786689, metadata !81, metadata !"thisname", metadata !19, i32 33554703, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thisname] [line 271]
!87 = metadata !{i32 786689, metadata !81, metadata !"modifiers", metadata !19, i32 50331920, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [modifiers] [line 272]
!88 = metadata !{i32 786689, metadata !81, metadata !"attributes", metadata !19, i32 67109137, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [attributes] [line 273]
!89 = metadata !{i32 786688, metadata !81, metadata !"retcode", metadata !19, i32 275, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retcode] [line 275]
!90 = metadata !{i32 786688, metadata !81, metadata !"handle", metadata !19, i32 276, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 276]
!91 = metadata !{i32 786688, metadata !81, metadata !"thishandle", metadata !19, i32 277, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thishandle] [line 277]
!92 = metadata !{i32 786688, metadata !81, metadata !"this_group", metadata !19, i32 278, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_group] [line 278]
!93 = metadata !{i32 786688, metadata !81, metadata !"newitem", metadata !19, i32 279, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newitem] [line 279]
!94 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"CCTKi_DoScheduleSortAllGroups", metadata !"CCTKi_DoScheduleSortAllGroups", metadata !"", i32 339, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_DoScheduleSortAllGroups, null, null, metadata !97, i32 340} ; [ DW_TAG_subprogram ] [line 339] [def] [scope 340] [CCTKi_DoScheduleSortAllGroups]
!95 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{metadata !46}
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101}
!98 = metadata !{i32 786688, metadata !94, metadata !"group", metadata !19, i32 341, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 341]
!99 = metadata !{i32 786688, metadata !94, metadata !"gdata", metadata !19, i32 342, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gdata] [line 342]
!100 = metadata !{i32 786688, metadata !94, metadata !"errcode", metadata !19, i32 343, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errcode] [line 343]
!101 = metadata !{i32 786688, metadata !94, metadata !"n_errors", metadata !19, i32 344, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_errors] [line 344]
!102 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"CCTKi_DoScheduleGetGroups", metadata !"CCTKi_DoScheduleGetGroups", metadata !"", i32 387, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.cHandledData* ()* @CCTKi_DoScheduleGetGroups, null, null, metadata !16, i32 388} ; [ DW_TAG_subprogram ] [line 387] [def] [scope 388] [CCTKi_DoScheduleGetGroups]
!103 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandledData]
!106 = metadata !{i32 786454, metadata !1, null, metadata !"cHandledData", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ] [cHandledData] [line 28, size 0, align 0, offset 0] [from ]
!107 = metadata !{i32 786451, metadata !108, null, metadata !"", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !109, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 23, size 128, align 64, offset 0] [from ]
!108 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreHandledData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!109 = metadata !{metadata !110, metadata !119, metadata !120}
!110 = metadata !{i32 786445, metadata !108, metadata !107, metadata !"array", i32 25, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_member ] [array] [line 25, size 64, align 64, offset 0] [from ]
!111 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandleStorage]
!112 = metadata !{i32 786454, metadata !108, null, metadata !"cHandleStorage", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !113} ; [ DW_TAG_typedef ] [cHandleStorage] [line 21, size 0, align 0, offset 0] [from ]
!113 = metadata !{i32 786451, metadata !108, null, metadata !"", i32 16, i64 192, i64 64, i32 0, i32 0, null, metadata !114, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 16, size 192, align 64, offset 0] [from ]
!114 = metadata !{metadata !115, metadata !117, metadata !118}
!115 = metadata !{i32 786445, metadata !108, metadata !113, metadata !"in_use", i32 18, i64 32, i64 32, i64 0, i32 0, metadata !116} ; [ DW_TAG_member ] [in_use] [line 18, size 32, align 32, offset 0] [from unsigned int]
!116 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!117 = metadata !{i32 786445, metadata !108, metadata !113, metadata !"name", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !37} ; [ DW_TAG_member ] [name] [line 19, size 64, align 64, offset 64] [from ]
!118 = metadata !{i32 786445, metadata !108, metadata !113, metadata !"data", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [data] [line 20, size 64, align 64, offset 128] [from ]
!119 = metadata !{i32 786445, metadata !108, metadata !107, metadata !"array_size", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !116} ; [ DW_TAG_member ] [array_size] [line 26, size 32, align 32, offset 64] [from unsigned int]
!120 = metadata !{i32 786445, metadata !108, metadata !107, metadata !"first_unused", i32 27, i64 32, i64 32, i64 96, i32 0, metadata !116} ; [ DW_TAG_member ] [first_unused] [line 27, size 32, align 32, offset 96] [from unsigned int]
!121 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"ScheduleSortGroup", metadata !"ScheduleSortGroup", metadata !"", i32 702, metadata !122, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !124, i32 703} ; [ DW_TAG_subprogram ] [line 702] [local] [def] [scope 703] [ScheduleSortGroup]
!122 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!123 = metadata !{metadata !46, metadata !57}
!124 = metadata !{metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !134, metadata !135, metadata !136, metadata !137}
!125 = metadata !{i32 786689, metadata !121, metadata !"group", metadata !19, i32 16777918, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 702]
!126 = metadata !{i32 786688, metadata !121, metadata !"item", metadata !19, i32 704, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [item] [line 704]
!127 = metadata !{i32 786688, metadata !121, metadata !"order", metadata !19, i32 705, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [order] [line 705]
!128 = metadata !{i32 786688, metadata !121, metadata !"thisorders", metadata !19, i32 706, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thisorders] [line 706]
!129 = metadata !{i32 786688, metadata !121, metadata !"modifier", metadata !19, i32 707, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [modifier] [line 707]
!130 = metadata !{i32 786688, metadata !121, metadata !"array", metadata !19, i32 708, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array] [line 708]
!131 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from signed char]
!133 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!134 = metadata !{i32 786688, metadata !121, metadata !"number", metadata !19, i32 709, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [number] [line 709]
!135 = metadata !{i32 786688, metadata !121, metadata !"mod", metadata !19, i32 710, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mod] [line 710]
!136 = metadata !{i32 786688, metadata !121, metadata !"i", metadata !19, i32 711, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 711]
!137 = metadata !{i32 786688, metadata !121, metadata !"errcode", metadata !19, i32 712, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errcode] [line 712]
!138 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"ScheduleItemNumber", metadata !"ScheduleItemNumber", metadata !"", i32 864, metadata !139, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !141, i32 865} ; [ DW_TAG_subprogram ] [line 864] [local] [def] [scope 865] [ScheduleItemNumber]
!139 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{metadata !46, metadata !57, metadata !22}
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145}
!142 = metadata !{i32 786689, metadata !138, metadata !"group", metadata !19, i32 16778080, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 864]
!143 = metadata !{i32 786689, metadata !138, metadata !"name", metadata !19, i32 33555296, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 864]
!144 = metadata !{i32 786688, metadata !138, metadata !"retval", metadata !19, i32 866, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 866]
!145 = metadata !{i32 786688, metadata !138, metadata !"i", metadata !19, i32 867, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 867]
!146 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"ScheduleTranslateModifierType", metadata !"ScheduleTranslateModifierType", metadata !"", i32 645, metadata !147, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !149, i32 646} ; [ DW_TAG_subprogram ] [line 645] [local] [def] [scope 646] [ScheduleTranslateModifierType]
!147 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{metadata !35, metadata !22}
!149 = metadata !{metadata !150, metadata !151}
!150 = metadata !{i32 786689, metadata !146, metadata !"modifier", metadata !19, i32 16777861, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [modifier] [line 645]
!151 = metadata !{i32 786688, metadata !146, metadata !"retval", metadata !19, i32 649, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 649]
!152 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"ScheduleAddItem", metadata !"ScheduleAddItem", metadata !"", i32 584, metadata !153, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.t_sched_item*)* @ScheduleAddItem, null, null, metadata !155, i32 585} ; [ DW_TAG_subprogram ] [line 584] [local] [def] [scope 585] [ScheduleAddItem]
!153 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!154 = metadata !{metadata !46, metadata !46, metadata !66}
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !160}
!156 = metadata !{i32 786689, metadata !152, metadata !"ghandle", metadata !19, i32 16777800, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghandle] [line 584]
!157 = metadata !{i32 786689, metadata !152, metadata !"item", metadata !19, i32 33555016, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [item] [line 584]
!158 = metadata !{i32 786688, metadata !152, metadata !"retcode", metadata !19, i32 586, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retcode] [line 586]
!159 = metadata !{i32 786688, metadata !152, metadata !"this_group", metadata !19, i32 587, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_group] [line 587]
!160 = metadata !{i32 786688, metadata !152, metadata !"temp", metadata !19, i32 588, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 588]
!161 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"ScheduleCreateItem", metadata !"ScheduleCreateItem", metadata !"", i32 510, metadata !162, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_sched_item* (i8*, %struct.T_SCHED_MODIFIER*, i8*)* @ScheduleCreateItem, null, null, metadata !164, i32 511} ; [ DW_TAG_subprogram ] [line 510] [local] [def] [scope 511] [ScheduleCreateItem]
!162 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !163, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!163 = metadata !{metadata !66, metadata !22, metadata !28, metadata !47}
!164 = metadata !{metadata !165, metadata !166, metadata !167, metadata !168}
!165 = metadata !{i32 786689, metadata !161, metadata !"name", metadata !19, i32 16777726, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 510]
!166 = metadata !{i32 786689, metadata !161, metadata !"modifiers", metadata !19, i32 33554942, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [modifiers] [line 510]
!167 = metadata !{i32 786689, metadata !161, metadata !"attributes", metadata !19, i32 50332158, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [attributes] [line 510]
!168 = metadata !{i32 786688, metadata !161, metadata !"this", metadata !19, i32 512, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this] [line 512]
!169 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"ScheduleSetupWhiles", metadata !"ScheduleSetupWhiles", metadata !"", i32 910, metadata !170, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !172, i32 911} ; [ DW_TAG_subprogram ] [line 910] [local] [def] [scope 911] [ScheduleSetupWhiles]
!170 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!171 = metadata !{metadata !46, metadata !66}
!172 = metadata !{metadata !173, metadata !174, metadata !175, metadata !176}
!173 = metadata !{i32 786689, metadata !169, metadata !"item", metadata !19, i32 16778126, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [item] [line 910]
!174 = metadata !{i32 786688, metadata !169, metadata !"retval", metadata !19, i32 912, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 912]
!175 = metadata !{i32 786688, metadata !169, metadata !"modifier", metadata !19, i32 913, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [modifier] [line 913]
!176 = metadata !{i32 786688, metadata !169, metadata !"temp", metadata !19, i32 914, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 914]
!177 = metadata !{i32 786478, metadata !1, metadata !19, metadata !"ScheduleCreateGroup", metadata !"ScheduleCreateGroup", metadata !"", i32 423, metadata !178, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @ScheduleCreateGroup, null, null, metadata !180, i32 424} ; [ DW_TAG_subprogram ] [line 423] [local] [def] [scope 424] [ScheduleCreateGroup]
!178 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!179 = metadata !{metadata !46, metadata !22}
!180 = metadata !{metadata !181, metadata !182, metadata !183, metadata !184}
!181 = metadata !{i32 786689, metadata !177, metadata !"name", metadata !19, i32 16777639, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 423]
!182 = metadata !{i32 786688, metadata !177, metadata !"retcode", metadata !19, i32 425, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retcode] [line 425]
!183 = metadata !{i32 786688, metadata !177, metadata !"handle", metadata !19, i32 426, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 426]
!184 = metadata !{i32 786688, metadata !177, metadata !"this_group", metadata !19, i32 428, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_group] [line 428]
!185 = metadata !{metadata !186, metadata !187, metadata !188}
!186 = metadata !{i32 786484, i32 0, null, metadata !"n_schedule_groups", metadata !"n_schedule_groups", metadata !"", metadata !19, i32 62, metadata !46, i32 1, i32 1, i32* @n_schedule_groups, null} ; [ DW_TAG_variable ] [n_schedule_groups] [line 62] [local] [def]
!187 = metadata !{i32 786484, i32 0, null, metadata !"schedule_groups", metadata !"schedule_groups", metadata !"", metadata !19, i32 63, metadata !105, i32 1, i32 1, %struct.cHandledData** @schedule_groups, null} ; [ DW_TAG_variable ] [schedule_groups] [line 63] [local] [def]
!188 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !19, i32 24, metadata !22, i32 1, i32 1, null, null}
!189 = metadata !{i32 26, i32 0, metadata !18, null}
!190 = metadata !{i32 107, i32 0, metadata !25, null}
!191 = metadata !{i32 108, i32 0, metadata !25, null}
!192 = metadata !{i32 109, i32 0, metadata !25, null}
!193 = metadata !{i32 113, i32 0, metadata !25, null}
!194 = metadata !{i32 115, i32 0, metadata !25, null}
!195 = metadata !{i32 117, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !25, i32 116, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!197 = metadata !{metadata !"any pointer", metadata !198}
!198 = metadata !{metadata !"omnipotent char", metadata !199}
!199 = metadata !{metadata !"Simple C/C++ TBAA"}
!200 = metadata !{i32 118, i32 0, metadata !196, null}
!201 = metadata !{i32 120, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !196, i32 119, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!203 = metadata !{i32 786689, metadata !146, metadata !"modifier", metadata !19, i32 16777861, metadata !22, i32 0, metadata !204} ; [ DW_TAG_arg_variable ] [modifier] [line 645]
!204 = metadata !{i32 122, i32 0, metadata !202, null}
!205 = metadata !{i32 645, i32 0, metadata !146, metadata !204}
!206 = metadata !{i32 786688, metadata !146, metadata !"retval", metadata !19, i32 649, metadata !35, i32 0, metadata !204} ; [ DW_TAG_auto_variable ] [retval] [line 649]
!207 = metadata !{i32 651, i32 0, metadata !146, metadata !204}
!208 = metadata !{i32 653, i32 0, metadata !146, metadata !204}
!209 = metadata !{i32 657, i32 0, metadata !146, metadata !204}
!210 = metadata !{i32 661, i32 0, metadata !146, metadata !204}
!211 = metadata !{i32 3}
!212 = metadata !{i32 663, i32 0, metadata !213, metadata !204}
!213 = metadata !{i32 786443, metadata !1, metadata !146, i32 662, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!214 = metadata !{i32 124, i32 0, metadata !202, null}
!215 = metadata !{i32 125, i32 0, metadata !202, null}
!216 = metadata !{i32 128, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !196, i32 127, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!218 = metadata !{%struct.T_SCHED_MODIFIER* null}
!219 = metadata !{i32 129, i32 0, metadata !217, null}
!220 = metadata !{i32 133, i32 0, metadata !25, null}
!221 = metadata !{i32 197, i32 0, metadata !43, null}
!222 = metadata !{i32 186, i32 0, metadata !43, null}
!223 = metadata !{i32 187, i32 0, metadata !43, null}
!224 = metadata !{i32 188, i32 0, metadata !43, null}
!225 = metadata !{i32 189, i32 0, metadata !43, null}
!226 = metadata !{i32 190, i32 0, metadata !43, null}
!227 = metadata !{i32 199, i32 0, metadata !43, null}
!228 = metadata !{i32 201, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !43, i32 200, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!230 = metadata !{i32 204, i32 0, metadata !43, null}
!231 = metadata !{i32 210, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !43, i32 209, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!233 = metadata !{i32 212, i32 0, metadata !232, null}
!234 = metadata !{i32 214, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !232, i32 213, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!236 = metadata !{i32 215, i32 0, metadata !235, null}
!237 = metadata !{i32 216, i32 0, metadata !235, null}
!238 = metadata !{i32 217, i32 0, metadata !235, null}
!239 = metadata !{i32 224, i32 0, metadata !43, null}
!240 = metadata !{i32 423, i32 0, metadata !177, null}
!241 = metadata !{i32 428, i32 0, metadata !177, null}
!242 = metadata !{i32 430, i32 0, metadata !177, null}
!243 = metadata !{i32 432, i32 0, metadata !177, null}
!244 = metadata !{i32 439, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !177, i32 438, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!246 = metadata !{i32 441, i32 0, metadata !245, null}
!247 = metadata !{i32 443, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !245, i32 442, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!249 = metadata !{i32 445, i32 0, metadata !248, null}
!250 = metadata !{i32 447, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !248, i32 446, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!252 = metadata !{i32 449, i32 0, metadata !251, null}
!253 = metadata !{i32 450, i32 0, metadata !251, null}
!254 = metadata !{metadata !"int", metadata !198}
!255 = metadata !{i32 451, i32 0, metadata !251, null}
!256 = metadata !{i32 452, i32 0, metadata !251, null}
!257 = metadata !{i32 453, i32 0, metadata !251, null}
!258 = metadata !{i32 454, i32 0, metadata !251, null}
!259 = metadata !{i32 457, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !248, i32 456, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!261 = metadata !{i32 -2}
!262 = metadata !{i32 459, i32 0, metadata !260, null}
!263 = metadata !{i32 468, i32 0, metadata !177, null}
!264 = metadata !{i32 510, i32 0, metadata !161, null}
!265 = metadata !{i32 514, i32 0, metadata !161, null}
!266 = metadata !{i32 516, i32 0, metadata !161, null}
!267 = metadata !{i32 518, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !161, i32 517, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!269 = metadata !{i32 520, i32 0, metadata !268, null}
!270 = metadata !{i32 522, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !268, i32 521, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!272 = metadata !{i32 524, i32 0, metadata !271, null}
!273 = metadata !{i32 525, i32 0, metadata !271, null}
!274 = metadata !{i32 526, i32 0, metadata !271, null}
!275 = metadata !{i32 527, i32 0, metadata !271, null}
!276 = metadata !{i32 529, i32 0, metadata !271, null}
!277 = metadata !{i32 530, i32 0, metadata !271, null}
!278 = metadata !{i32 786688, metadata !169, metadata !"retval", metadata !19, i32 912, metadata !46, i32 0, metadata !279} ; [ DW_TAG_auto_variable ] [retval] [line 912]
!279 = metadata !{i32 532, i32 0, metadata !271, null}
!280 = metadata !{i32 916, i32 0, metadata !169, metadata !279}
!281 = metadata !{i32 918, i32 0, metadata !282, metadata !279}
!282 = metadata !{i32 786443, metadata !1, metadata !169, i32 918, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!283 = metadata !{i32 920, i32 0, metadata !284, metadata !279}
!284 = metadata !{i32 786443, metadata !1, metadata !282, i32 919, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!285 = metadata !{i32 922, i32 0, metadata !286, metadata !279}
!286 = metadata !{i32 786443, metadata !1, metadata !284, i32 921, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!287 = metadata !{i32 923, i32 0, metadata !286, metadata !279}
!288 = metadata !{i32 786688, metadata !169, metadata !"temp", metadata !19, i32 914, metadata !77, i32 0, metadata !279} ; [ DW_TAG_auto_variable ] [temp] [line 914]
!289 = metadata !{i32 925, i32 0, metadata !286, metadata !279}
!290 = metadata !{i32 927, i32 0, metadata !291, metadata !279}
!291 = metadata !{i32 786443, metadata !1, metadata !286, i32 926, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!292 = metadata !{i32 929, i32 0, metadata !291, metadata !279}
!293 = metadata !{i32 930, i32 0, metadata !291, metadata !279}
!294 = metadata !{i32 932, i32 0, metadata !295, metadata !279}
!295 = metadata !{i32 786443, metadata !1, metadata !291, i32 931, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!296 = metadata !{i32 933, i32 0, metadata !295, metadata !279}
!297 = metadata !{i32 936, i32 0, metadata !298, metadata !279}
!298 = metadata !{i32 786443, metadata !1, metadata !291, i32 935, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!299 = metadata !{i32 534, i32 0, metadata !271, null}
!300 = metadata !{i32 540, i32 0, metadata !271, null}
!301 = metadata !{i32 543, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !268, i32 542, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!303 = metadata !{%struct.t_sched_item* null}
!304 = metadata !{i32 544, i32 0, metadata !302, null}
!305 = metadata !{i32 548, i32 0, metadata !161, null}
!306 = metadata !{i32 584, i32 0, metadata !152, null}
!307 = metadata !{i32 590, i32 0, metadata !152, null}
!308 = metadata !{i32 592, i32 0, metadata !152, null}
!309 = metadata !{i32 594, i32 0, metadata !152, null}
!310 = metadata !{i32 596, i32 0, metadata !152, null}
!311 = metadata !{i32 598, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !152, i32 597, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!313 = metadata !{i32 599, i32 0, metadata !312, null}
!314 = metadata !{i64 0, i64 8, metadata !197, i64 8, i64 4, metadata !198, i64 16, i64 8, metadata !197, i64 24, i64 4, metadata !254, i64 28, i64 4, metadata !254, i64 32, i64 8, metadata !197, i64 40, i64 8, metadata !197, i64 48, i64 8, metadata !197}
!315 = metadata !{i32 605, i32 0, metadata !312, null}
!316 = metadata !{i32 607, i32 0, metadata !312, null}
!317 = metadata !{i32 608, i32 0, metadata !312, null}
!318 = metadata !{i32 611, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !152, i32 610, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!320 = metadata !{i32 -1}
!321 = metadata !{i32 612, i32 0, metadata !319, null}
!322 = metadata !{i32 615, i32 0, metadata !152, null}
!323 = metadata !{i32 282, i32 0, metadata !81, null}
!324 = metadata !{i32 270, i32 0, metadata !81, null}
!325 = metadata !{i32 271, i32 0, metadata !81, null}
!326 = metadata !{i32 272, i32 0, metadata !81, null}
!327 = metadata !{i32 273, i32 0, metadata !81, null}
!328 = metadata !{i32 284, i32 0, metadata !81, null}
!329 = metadata !{i32 286, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !81, i32 285, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!331 = metadata !{i32 287, i32 0, metadata !330, null}
!332 = metadata !{i32 290, i32 0, metadata !81, null}
!333 = metadata !{i32 292, i32 0, metadata !81, null}
!334 = metadata !{i32 294, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !81, i32 293, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!336 = metadata !{i32 295, i32 0, metadata !335, null}
!337 = metadata !{i32 297, i32 0, metadata !81, null}
!338 = metadata !{i32 303, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !81, i32 302, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!340 = metadata !{i32 305, i32 0, metadata !339, null}
!341 = metadata !{i32 307, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !339, i32 306, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!343 = metadata !{i32 308, i32 0, metadata !342, null}
!344 = metadata !{i32 309, i32 0, metadata !342, null}
!345 = metadata !{i32 310, i32 0, metadata !342, null}
!346 = metadata !{i32 317, i32 0, metadata !81, null}
!347 = metadata !{i32 346, i32 0, metadata !94, null}
!348 = metadata !{i32 348, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !94, i32 348, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!350 = metadata !{i32 350, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !349, i32 349, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!352 = metadata !{i32 719, i32 0, metadata !121, metadata !353}
!353 = metadata !{i32 352, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !351, i32 351, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!355 = metadata !{i32 786688, metadata !121, metadata !"array", metadata !19, i32 708, metadata !131, i32 0, metadata !353} ; [ DW_TAG_auto_variable ] [array] [line 708]
!356 = metadata !{i32 720, i32 0, metadata !121, metadata !353}
!357 = metadata !{i32 786688, metadata !121, metadata !"order", metadata !19, i32 705, metadata !63, i32 0, metadata !353} ; [ DW_TAG_auto_variable ] [order] [line 705]
!358 = metadata !{i32 721, i32 0, metadata !121, metadata !353}
!359 = metadata !{i32 786688, metadata !121, metadata !"thisorders", metadata !19, i32 706, metadata !63, i32 0, metadata !353} ; [ DW_TAG_auto_variable ] [thisorders] [line 706]
!360 = metadata !{i32 786688, metadata !121, metadata !"item", metadata !19, i32 704, metadata !46, i32 0, metadata !353} ; [ DW_TAG_auto_variable ] [item] [line 704]
!361 = metadata !{i32 723, i32 0, metadata !362, metadata !353}
!362 = metadata !{i32 786443, metadata !1, metadata !121, i32 723, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!363 = metadata !{i32 728, i32 0, metadata !364, metadata !353}
!364 = metadata !{i32 786443, metadata !1, metadata !365, i32 728, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!365 = metadata !{i32 786443, metadata !1, metadata !362, i32 724, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!366 = metadata !{i32 730, i32 0, metadata !367, metadata !353}
!367 = metadata !{i32 786443, metadata !1, metadata !364, i32 729, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!368 = metadata !{i32 734, i32 0, metadata !367, metadata !353}
!369 = metadata !{i32 786689, metadata !138, metadata !"name", metadata !19, i32 33555296, metadata !22, i32 0, metadata !368} ; [ DW_TAG_arg_variable ] [name] [line 864]
!370 = metadata !{i32 864, i32 0, metadata !138, metadata !368}
!371 = metadata !{i32 786688, metadata !138, metadata !"retval", metadata !19, i32 866, metadata !46, i32 0, metadata !368} ; [ DW_TAG_auto_variable ] [retval] [line 866]
!372 = metadata !{i32 869, i32 0, metadata !138, metadata !368}
!373 = metadata !{i32 786688, metadata !138, metadata !"i", metadata !19, i32 867, metadata !46, i32 0, metadata !368} ; [ DW_TAG_auto_variable ] [i] [line 867]
!374 = metadata !{i32 873, i32 0, metadata !375, metadata !368}
!375 = metadata !{i32 786443, metadata !1, metadata !138, i32 873, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!376 = metadata !{i32 875, i32 0, metadata !377, metadata !368}
!377 = metadata !{i32 786443, metadata !1, metadata !375, i32 874, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!378 = metadata !{i32 786688, metadata !121, metadata !"number", metadata !19, i32 709, metadata !46, i32 0, metadata !353} ; [ DW_TAG_auto_variable ] [number] [line 709]
!379 = metadata !{i32 739, i32 0, metadata !367, metadata !353}
!380 = metadata !{i32 741, i32 0, metadata !381, metadata !353}
!381 = metadata !{i32 786443, metadata !1, metadata !367, i32 740, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!382 = metadata !{i32 1}
!383 = metadata !{i32 786688, metadata !121, metadata !"mod", metadata !19, i32 710, metadata !46, i32 0, metadata !353} ; [ DW_TAG_auto_variable ] [mod] [line 710]
!384 = metadata !{i32 744, i32 0, metadata !385, metadata !353}
!385 = metadata !{i32 786443, metadata !1, metadata !381, i32 742, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!386 = metadata !{i32 746, i32 0, metadata !385, metadata !353}
!387 = metadata !{i32 747, i32 0, metadata !385, metadata !353}
!388 = metadata !{i32 752, i32 0, metadata !381, metadata !353}
!389 = metadata !{i32 753, i32 0, metadata !381, metadata !353}
!390 = metadata !{i32 765, i32 0, metadata !365, metadata !353}
!391 = metadata !{i32 786688, metadata !121, metadata !"i", metadata !19, i32 711, metadata !46, i32 0, metadata !353} ; [ DW_TAG_auto_variable ] [i] [line 711]
!392 = metadata !{i32 768, i32 0, metadata !393, metadata !353}
!393 = metadata !{i32 786443, metadata !1, metadata !365, i32 768, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!394 = metadata !{i32 770, i32 0, metadata !395, metadata !353}
!395 = metadata !{i32 786443, metadata !1, metadata !393, i32 769, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!396 = metadata !{i32 796, i32 0, metadata !121, metadata !353}
!397 = metadata !{i32 786688, metadata !121, metadata !"errcode", metadata !19, i32 712, metadata !46, i32 0, metadata !353} ; [ DW_TAG_auto_variable ] [errcode] [line 712]
!398 = metadata !{i32 798, i32 0, metadata !121, metadata !353}
!399 = metadata !{i32 800, i32 0, metadata !400, metadata !353}
!400 = metadata !{i32 786443, metadata !1, metadata !121, i32 799, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!401 = metadata !{i32 824, i32 0, metadata !121, metadata !353}
!402 = metadata !{i32 825, i32 0, metadata !121, metadata !353}
!403 = metadata !{i32 827, i32 0, metadata !121, metadata !353}
!404 = metadata !{i32 356, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !354, i32 355, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c]
!406 = metadata !{i32 361, i32 0, metadata !405, null}
!407 = metadata !{i32 362, i32 0, metadata !405, null}
!408 = metadata !{i32 366, i32 0, metadata !94, null}
!409 = metadata !{i32 389, i32 0, metadata !102, null}
