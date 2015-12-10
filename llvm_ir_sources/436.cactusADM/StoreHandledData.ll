; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [92 x i8] c"$Header: /cactus/Cactus/src/util/StoreHandledData.c,v 1.13 2001/07/03 21:49:41 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_util_StoreHandledData_c() #0 {
entry:
  ret i8* getelementptr inbounds ([92 x i8]* @.str, i64 0, i64 0), !dbg !78
}

; Function Attrs: nounwind optsize uwtable
define i32 @Util_NewHandle(%struct.cHandledData** nocapture %storage, i8* nocapture %name, i8* %data) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cHandledData** %storage}, i64 0, metadata !35), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !36), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !37), !dbg !79
  %0 = load %struct.cHandledData** %storage, align 8, !dbg !80, !tbaa !81
  %cmp = icmp eq %struct.cHandledData* %0, null, !dbg !80
  br i1 %cmp, label %if.then, label %if.then4, !dbg !80

if.then:                                          ; preds = %entry
  %call = tail call noalias i8* @malloc(i64 16) #7, !dbg !84
  %1 = bitcast i8* %call to %struct.cHandledData*, !dbg !84
  store %struct.cHandledData* %1, %struct.cHandledData** %storage, align 8, !dbg !84, !tbaa !81
  %tobool = icmp eq i8* %call, null, !dbg !86
  br i1 %tobool, label %if.end78, label %if.then4.thread, !dbg !86

if.then4.thread:                                  ; preds = %if.then
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 16, i32 8, i1 false), !dbg !87
  br label %if.then8, !dbg !89

if.then4:                                         ; preds = %entry
  %first_unused5.phi.trans.insert = getelementptr inbounds %struct.cHandledData* %0, i64 0, i32 2
  %.pre117 = load i32* %first_unused5.phi.trans.insert, align 4, !dbg !89, !tbaa !91
  %array_size6.phi.trans.insert = getelementptr inbounds %struct.cHandledData* %0, i64 0, i32 1
  %.pre118 = load i32* %array_size6.phi.trans.insert, align 4, !dbg !89, !tbaa !91
  %cmp7 = icmp ugt i32 %.pre117, %.pre118, !dbg !89
  br i1 %cmp7, label %if.else51, label %if.then8, !dbg !89

if.then8:                                         ; preds = %if.then4.thread, %if.then4
  %2 = phi %struct.cHandledData* [ %1, %if.then4.thread ], [ %0, %if.then4 ]
  %3 = phi i32 [ 0, %if.then4.thread ], [ %.pre118, %if.then4 ]
  %array9 = getelementptr inbounds %struct.cHandledData* %2, i64 0, i32 0, !dbg !92
  %4 = load %struct.cHandleStorage** %array9, align 8, !dbg !92, !tbaa !81
  %5 = bitcast %struct.cHandleStorage* %4 to i8*, !dbg !92
  %add = add i32 %3, 1, !dbg !92
  %conv = zext i32 %add to i64, !dbg !92
  %mul = mul i64 %conv, 24, !dbg !92
  %call11 = tail call i8* @realloc(i8* %5, i64 %mul) #7, !dbg !92
  tail call void @llvm.dbg.value(metadata !{i8* %call11}, i64 0, metadata !39), !dbg !92
  %tobool12 = icmp eq i8* %call11, null, !dbg !92
  br i1 %tobool12, label %if.end78, label %if.else14, !dbg !92

if.else14:                                        ; preds = %if.then8
  %6 = bitcast i8* %call11 to %struct.cHandleStorage*, !dbg !94
  %7 = load %struct.cHandledData** %storage, align 8, !dbg !94, !tbaa !81
  %array15 = getelementptr inbounds %struct.cHandledData* %7, i64 0, i32 0, !dbg !94
  store %struct.cHandleStorage* %6, %struct.cHandleStorage** %array15, align 8, !dbg !94, !tbaa !81
  %8 = load %struct.cHandledData** %storage, align 8, !dbg !96, !tbaa !81
  %array_size16 = getelementptr inbounds %struct.cHandledData* %8, i64 0, i32 1, !dbg !96
  %9 = load i32* %array_size16, align 4, !dbg !96, !tbaa !91
  %idxprom = zext i32 %9 to i64, !dbg !96
  %array17 = getelementptr inbounds %struct.cHandledData* %8, i64 0, i32 0, !dbg !96
  %10 = load %struct.cHandleStorage** %array17, align 8, !dbg !96, !tbaa !81
  %in_use = getelementptr inbounds %struct.cHandleStorage* %10, i64 %idxprom, i32 0, !dbg !96
  store i32 1, i32* %in_use, align 4, !dbg !96, !tbaa !91
  %11 = load i32* %array_size16, align 4, !dbg !97, !tbaa !91
  %idxprom19 = zext i32 %11 to i64, !dbg !97
  %data22 = getelementptr inbounds %struct.cHandleStorage* %10, i64 %idxprom19, i32 2, !dbg !97
  store i8* %data, i8** %data22, align 8, !dbg !97, !tbaa !81
  %call23 = tail call i64 @strlen(i8* %name) #8, !dbg !98
  %add24 = add i64 %call23, 1, !dbg !98
  %call26 = tail call noalias i8* @malloc(i64 %add24) #7, !dbg !98
  %12 = load %struct.cHandledData** %storage, align 8, !dbg !98, !tbaa !81
  %array_size27 = getelementptr inbounds %struct.cHandledData* %12, i64 0, i32 1, !dbg !98
  %13 = load i32* %array_size27, align 4, !dbg !98, !tbaa !91
  %idxprom28 = zext i32 %13 to i64, !dbg !98
  %array29 = getelementptr inbounds %struct.cHandledData* %12, i64 0, i32 0, !dbg !98
  %14 = load %struct.cHandleStorage** %array29, align 8, !dbg !98, !tbaa !81
  %name31 = getelementptr inbounds %struct.cHandleStorage* %14, i64 %idxprom28, i32 1, !dbg !98
  store i8* %call26, i8** %name31, align 8, !dbg !98, !tbaa !81
  %15 = load %struct.cHandledData** %storage, align 8, !dbg !99, !tbaa !81
  %array_size32 = getelementptr inbounds %struct.cHandledData* %15, i64 0, i32 1, !dbg !99
  %16 = load i32* %array_size32, align 4, !dbg !99, !tbaa !91
  %idxprom33 = zext i32 %16 to i64, !dbg !99
  %array34 = getelementptr inbounds %struct.cHandledData* %15, i64 0, i32 0, !dbg !99
  %17 = load %struct.cHandleStorage** %array34, align 8, !dbg !99, !tbaa !81
  %name36 = getelementptr inbounds %struct.cHandleStorage* %17, i64 %idxprom33, i32 1, !dbg !99
  %18 = load i8** %name36, align 8, !dbg !99, !tbaa !81
  %tobool37 = icmp eq i8* %18, null, !dbg !99
  br i1 %tobool37, label %if.end45, label %if.then38, !dbg !99

if.then38:                                        ; preds = %if.else14
  %call44 = tail call i8* @strcpy(i8* %18, i8* %name) #7, !dbg !100
  %.pre = load %struct.cHandledData** %storage, align 8, !dbg !102, !tbaa !81
  %array_size46.phi.trans.insert = getelementptr inbounds %struct.cHandledData* %.pre, i64 0, i32 1
  %.pre116 = load i32* %array_size46.phi.trans.insert, align 4, !dbg !102, !tbaa !91
  br label %if.end45, !dbg !103

if.end45:                                         ; preds = %if.else14, %if.then38
  %19 = phi i32 [ %16, %if.else14 ], [ %.pre116, %if.then38 ]
  %20 = phi %struct.cHandledData* [ %15, %if.else14 ], [ %.pre, %if.then38 ]
  %array_size46 = getelementptr inbounds %struct.cHandledData* %20, i64 0, i32 1, !dbg !102
  tail call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !38), !dbg !102
  %inc = add i32 %19, 1, !dbg !104
  store i32 %inc, i32* %array_size46, align 4, !dbg !104, !tbaa !91
  %first_unused49 = getelementptr inbounds %struct.cHandledData* %20, i64 0, i32 2, !dbg !105
  store i32 %inc, i32* %first_unused49, align 4, !dbg !105, !tbaa !91
  br label %if.end78

if.else51:                                        ; preds = %if.then4
  %idxprom53 = zext i32 %.pre117 to i64, !dbg !106
  %array54 = getelementptr inbounds %struct.cHandledData* %0, i64 0, i32 0, !dbg !106
  %21 = load %struct.cHandleStorage** %array54, align 8, !dbg !106, !tbaa !81
  %in_use56 = getelementptr inbounds %struct.cHandleStorage* %21, i64 %idxprom53, i32 0, !dbg !106
  %22 = load i32* %in_use56, align 4, !dbg !106, !tbaa !91
  %cmp57 = icmp eq i32 %22, 1, !dbg !106
  br i1 %cmp57, label %if.end78, label %if.else60, !dbg !106

if.else60:                                        ; preds = %if.else51
  store i32 1, i32* %in_use56, align 4, !dbg !108, !tbaa !91
  %first_unused66 = getelementptr inbounds %struct.cHandledData* %0, i64 0, i32 2, !dbg !110
  %23 = load i32* %first_unused66, align 4, !dbg !110, !tbaa !91
  %idxprom67 = zext i32 %23 to i64, !dbg !110
  %array68 = getelementptr inbounds %struct.cHandledData* %0, i64 0, i32 0, !dbg !110
  %24 = load %struct.cHandleStorage** %array68, align 8, !dbg !110, !tbaa !81
  %data70 = getelementptr inbounds %struct.cHandleStorage* %24, i64 %idxprom67, i32 2, !dbg !110
  store i8* %data, i8** %data70, align 8, !dbg !110, !tbaa !81
  %25 = load %struct.cHandledData** %storage, align 8, !dbg !111, !tbaa !81
  %first_unused71 = getelementptr inbounds %struct.cHandledData* %25, i64 0, i32 2, !dbg !111
  %26 = load i32* %first_unused71, align 4, !dbg !111, !tbaa !91
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !38), !dbg !111
  tail call void @llvm.dbg.value(metadata !{%struct.cHandledData* %25}, i64 0, metadata !112), !dbg !114
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !115), !dbg !114
  %array_size.i = getelementptr inbounds %struct.cHandledData* %25, i64 0, i32 1, !dbg !116
  %27 = load i32* %array_size.i, align 4, !dbg !116, !tbaa !91
  %array.i = getelementptr inbounds %struct.cHandledData* %25, i64 0, i32 0, !dbg !117
  br label %while.cond.i, !dbg !116

while.cond.i:                                     ; preds = %while.body.i, %if.else60
  %current.0.in.i = phi i32 [ %26, %if.else60 ], [ %current.0.i, %while.body.i ]
  %current.0.i = add i32 %current.0.in.i, 1, !dbg !119
  %cmp.i = icmp ult i32 %current.0.i, %27, !dbg !116
  br i1 %cmp.i, label %while.body.i, label %FindNextUnused.exit, !dbg !116

while.body.i:                                     ; preds = %while.cond.i
  %idxprom.i = zext i32 %current.0.i to i64, !dbg !117
  %28 = load %struct.cHandleStorage** %array.i, align 8, !dbg !117, !tbaa !81
  %in_use.i = getelementptr inbounds %struct.cHandleStorage* %28, i64 %idxprom.i, i32 0, !dbg !117
  %29 = load i32* %in_use.i, align 4, !dbg !117, !tbaa !91
  %cmp1.i = icmp eq i32 %29, 0, !dbg !117
  br i1 %cmp1.i, label %FindNextUnused.exit, label %while.cond.i, !dbg !117

FindNextUnused.exit:                              ; preds = %while.cond.i, %while.body.i
  store i32 %current.0.i, i32* %first_unused71, align 4, !dbg !113, !tbaa !91
  br label %if.end78

if.end78:                                         ; preds = %if.then, %if.else51, %if.then8, %if.end45, %FindNextUnused.exit
  %return_code.0 = phi i32 [ %19, %if.end45 ], [ %26, %FindNextUnused.exit ], [ -2, %if.then8 ], [ -2, %if.else51 ], [ -1, %if.then ]
  ret i32 %return_code.0, !dbg !120
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Util_DeleteHandle(%struct.cHandledData* nocapture %storage, i32 %handle) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cHandledData* %storage}, i64 0, metadata !44), !dbg !121
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !45), !dbg !121
  %cmp = icmp sgt i32 %handle, -1, !dbg !122
  br i1 %cmp, label %land.lhs.true, label %if.end15, !dbg !122

land.lhs.true:                                    ; preds = %entry
  %array_size = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 1, !dbg !122
  %0 = load i32* %array_size, align 4, !dbg !122, !tbaa !91
  %cmp1 = icmp ugt i32 %0, %handle, !dbg !122
  br i1 %cmp1, label %if.then, label %if.end15, !dbg !122

if.then:                                          ; preds = %land.lhs.true
  %idxprom = sext i32 %handle to i64, !dbg !123
  %array = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 0, !dbg !123
  %1 = load %struct.cHandleStorage** %array, align 8, !dbg !123, !tbaa !81
  %in_use = getelementptr inbounds %struct.cHandleStorage* %1, i64 %idxprom, i32 0, !dbg !123
  store i32 0, i32* %in_use, align 4, !dbg !123, !tbaa !91
  %data = getelementptr inbounds %struct.cHandleStorage* %1, i64 %idxprom, i32 2, !dbg !125
  store i8* null, i8** %data, align 8, !dbg !125, !tbaa !81
  %2 = load %struct.cHandleStorage** %array, align 8, !dbg !126, !tbaa !81
  %name = getelementptr inbounds %struct.cHandleStorage* %2, i64 %idxprom, i32 1, !dbg !126
  %3 = load i8** %name, align 8, !dbg !126, !tbaa !81
  tail call void @free(i8* %3) #7, !dbg !126
  %4 = load %struct.cHandleStorage** %array, align 8, !dbg !127, !tbaa !81
  %name11 = getelementptr inbounds %struct.cHandleStorage* %4, i64 %idxprom, i32 1, !dbg !127
  store i8* null, i8** %name11, align 8, !dbg !127, !tbaa !81
  %first_unused = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 2, !dbg !128
  %5 = load i32* %first_unused, align 4, !dbg !128, !tbaa !91
  %cmp12 = icmp ugt i32 %5, %handle, !dbg !128
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !128

if.then13:                                        ; preds = %if.then
  store i32 %handle, i32* %first_unused, align 4, !dbg !129, !tbaa !91
  br label %if.end15, !dbg !131

if.end15:                                         ; preds = %entry, %land.lhs.true, %if.then, %if.then13
  %return_code.0 = phi i32 [ 0, %if.then13 ], [ 0, %if.then ], [ 1, %land.lhs.true ], [ 1, %entry ]
  ret i32 %return_code.0, !dbg !132
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly uwtable
define i8* @Util_GetHandledData(%struct.cHandledData* %storage, i32 %handle) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cHandledData* %storage}, i64 0, metadata !51), !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !52), !dbg !133
  %tobool = icmp ne %struct.cHandledData* %storage, null, !dbg !134
  %cmp = icmp sgt i32 %handle, -1, !dbg !135
  %or.cond = and i1 %tobool, %cmp, !dbg !134
  br i1 %or.cond, label %land.lhs.true, label %if.end10, !dbg !134

land.lhs.true:                                    ; preds = %entry
  %array_size = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 1, !dbg !135
  %0 = load i32* %array_size, align 4, !dbg !135, !tbaa !91
  %cmp1 = icmp ugt i32 %0, %handle, !dbg !135
  br i1 %cmp1, label %land.lhs.true2, label %if.end10, !dbg !135

land.lhs.true2:                                   ; preds = %land.lhs.true
  %idxprom = sext i32 %handle to i64, !dbg !135
  %array = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 0, !dbg !135
  %1 = load %struct.cHandleStorage** %array, align 8, !dbg !135, !tbaa !81
  %in_use = getelementptr inbounds %struct.cHandleStorage* %1, i64 %idxprom, i32 0, !dbg !135
  %2 = load i32* %in_use, align 4, !dbg !135, !tbaa !91
  %cmp3 = icmp eq i32 %2, 1, !dbg !135
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !135

if.then4:                                         ; preds = %land.lhs.true2
  %data8 = getelementptr inbounds %struct.cHandleStorage* %1, i64 %idxprom, i32 2, !dbg !137
  %3 = load i8** %data8, align 8, !dbg !137, !tbaa !81
  tail call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !53), !dbg !137
  br label %if.end10, !dbg !139

if.end10:                                         ; preds = %entry, %land.lhs.true, %land.lhs.true2, %if.then4
  %data.0 = phi i8* [ %3, %if.then4 ], [ null, %land.lhs.true2 ], [ null, %land.lhs.true ], [ null, %entry ]
  ret i8* %data.0, !dbg !140
}

; Function Attrs: nounwind optsize uwtable
define i32 @Util_GetHandle(%struct.cHandledData* %storage, i8* nocapture %name, i8** %data) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cHandledData* %storage}, i64 0, metadata !59), !dbg !141
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !60), !dbg !141
  tail call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !61), !dbg !141
  tail call void @llvm.dbg.value(metadata !142, i64 0, metadata !62), !dbg !143
  %tobool = icmp ne i8** %data, null, !dbg !144
  br i1 %tobool, label %if.then, label %if.end, !dbg !144

if.then:                                          ; preds = %entry
  store i8* null, i8** %data, align 8, !dbg !145, !tbaa !81
  br label %if.end, !dbg !147

if.end:                                           ; preds = %if.then, %entry
  %tobool1 = icmp eq %struct.cHandledData* %storage, null, !dbg !148
  br i1 %tobool1, label %if.end20, label %for.cond.preheader, !dbg !148

for.cond.preheader:                               ; preds = %if.end
  %array_size = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 1, !dbg !149
  %0 = load i32* %array_size, align 4, !dbg !149, !tbaa !91
  %cmp34 = icmp eq i32 %0, 0, !dbg !149
  br i1 %cmp34, label %if.end20, label %for.body.lr.ph, !dbg !149

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %array = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 0, !dbg !152
  %1 = load %struct.cHandleStorage** %array, align 8, !dbg !152, !tbaa !81
  br label %for.body, !dbg !149

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %current.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %idxprom = zext i32 %current.035 to i64, !dbg !152
  %in_use = getelementptr inbounds %struct.cHandleStorage* %1, i64 %idxprom, i32 0, !dbg !152
  %2 = load i32* %in_use, align 4, !dbg !152, !tbaa !91
  %cmp3 = icmp eq i32 %2, 1, !dbg !152
  br i1 %cmp3, label %if.then4, label %for.inc, !dbg !152

if.then4:                                         ; preds = %for.body
  %name8 = getelementptr inbounds %struct.cHandleStorage* %1, i64 %idxprom, i32 1, !dbg !154
  %3 = load i8** %name8, align 8, !dbg !154, !tbaa !81
  %call = tail call i32 @strcmp(i8* %name, i8* %3) #8, !dbg !154
  %tobool9 = icmp eq i32 %call, 0, !dbg !154
  br i1 %tobool9, label %if.then10, label %for.inc, !dbg !154

if.then10:                                        ; preds = %if.then4
  tail call void @llvm.dbg.value(metadata !{i32 %current.035}, i64 0, metadata !62), !dbg !156
  br i1 %tobool, label %if.then12, label %if.end20, !dbg !158

if.then12:                                        ; preds = %if.then10
  %data16 = getelementptr inbounds %struct.cHandleStorage* %1, i64 %idxprom, i32 2, !dbg !159
  %4 = load i8** %data16, align 8, !dbg !159, !tbaa !81
  store i8* %4, i8** %data, align 8, !dbg !159, !tbaa !81
  br label %if.end20, !dbg !161

for.inc:                                          ; preds = %if.then4, %for.body
  %inc = add i32 %current.035, 1, !dbg !149
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !63), !dbg !149
  %cmp = icmp ult i32 %inc, %0, !dbg !149
  br i1 %cmp, label %for.body, label %if.end20, !dbg !149

if.end20:                                         ; preds = %for.cond.preheader, %for.inc, %if.end, %if.then12, %if.then10
  %handle.0 = phi i32 [ %current.035, %if.then12 ], [ %current.035, %if.then10 ], [ -2, %if.end ], [ -1, %for.inc ], [ -1, %for.cond.preheader ]
  ret i32 %handle.0, !dbg !162
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly uwtable
define i8* @Util_GetHandleName(%struct.cHandledData* %storage, i32 %handle) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cHandledData* %storage}, i64 0, metadata !68), !dbg !163
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !69), !dbg !163
  %tobool = icmp ne %struct.cHandledData* %storage, null, !dbg !164
  %cmp = icmp sgt i32 %handle, -1, !dbg !165
  %or.cond = and i1 %tobool, %cmp, !dbg !164
  br i1 %or.cond, label %land.lhs.true, label %if.end10, !dbg !164

land.lhs.true:                                    ; preds = %entry
  %array_size = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 1, !dbg !165
  %0 = load i32* %array_size, align 4, !dbg !165, !tbaa !91
  %cmp1 = icmp ugt i32 %0, %handle, !dbg !165
  br i1 %cmp1, label %land.lhs.true2, label %if.end10, !dbg !165

land.lhs.true2:                                   ; preds = %land.lhs.true
  %idxprom = sext i32 %handle to i64, !dbg !165
  %array = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 0, !dbg !165
  %1 = load %struct.cHandleStorage** %array, align 8, !dbg !165, !tbaa !81
  %in_use = getelementptr inbounds %struct.cHandleStorage* %1, i64 %idxprom, i32 0, !dbg !165
  %2 = load i32* %in_use, align 4, !dbg !165, !tbaa !91
  %cmp3 = icmp eq i32 %2, 1, !dbg !165
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !165

if.then4:                                         ; preds = %land.lhs.true2
  %name8 = getelementptr inbounds %struct.cHandleStorage* %1, i64 %idxprom, i32 1, !dbg !167
  %3 = load i8** %name8, align 8, !dbg !167, !tbaa !81
  tail call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !70), !dbg !167
  br label %if.end10, !dbg !169

if.end10:                                         ; preds = %entry, %land.lhs.true, %land.lhs.true2, %if.then4
  %name.0 = phi i8* [ %3, %if.then4 ], [ null, %land.lhs.true2 ], [ null, %land.lhs.true ], [ null, %entry ]
  ret i8* %name.0, !dbg !170
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !76, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !40, metadata !47, metadata !54, metadata !64, metadata !71}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_util_StoreHandledData_c", metadata !"CCTKi_version_util_StoreHandledData_c", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_util_StoreHandledData_c, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [CCTKi_version_util_StoreHandledData_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_NewHandle", metadata !"Util_NewHandle", metadata !"", i32 53, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cHandledData**, i8*, i8*)* @Util_NewHandle, null, null, metadata !34, i32 54} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 54] [Util_NewHandle]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !8, metadata !31}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandledData]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"cHandledData", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [cHandledData] [line 28, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 23, size 128, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreHandledData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !32, metadata !33}
!21 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"array", i32 25, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [array] [line 25, size 64, align 64, offset 0] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandleStorage]
!23 = metadata !{i32 786454, metadata !19, null, metadata !"cHandleStorage", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [cHandleStorage] [line 21, size 0, align 0, offset 0] [from ]
!24 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 16, i64 192, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 16, size 192, align 64, offset 0] [from ]
!25 = metadata !{metadata !26, metadata !28, metadata !30}
!26 = metadata !{i32 786445, metadata !19, metadata !24, metadata !"in_use", i32 18, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [in_use] [line 18, size 32, align 32, offset 0] [from unsigned int]
!27 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!28 = metadata !{i32 786445, metadata !19, metadata !24, metadata !"name", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [name] [line 19, size 64, align 64, offset 64] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!30 = metadata !{i32 786445, metadata !19, metadata !24, metadata !"data", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [data] [line 20, size 64, align 64, offset 128] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!32 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"array_size", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [array_size] [line 26, size 32, align 32, offset 64] [from unsigned int]
!33 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"first_unused", i32 27, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [first_unused] [line 27, size 32, align 32, offset 96] [from unsigned int]
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38, metadata !39}
!35 = metadata !{i32 786689, metadata !11, metadata !"storage", metadata !5, i32 16777269, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [storage] [line 53]
!36 = metadata !{i32 786689, metadata !11, metadata !"name", metadata !5, i32 33554485, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 53]
!37 = metadata !{i32 786689, metadata !11, metadata !"data", metadata !5, i32 50331701, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 53]
!38 = metadata !{i32 786688, metadata !11, metadata !"return_code", metadata !5, i32 55, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 55]
!39 = metadata !{i32 786688, metadata !11, metadata !"temp", metadata !5, i32 57, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 57]
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_DeleteHandle", metadata !"Util_DeleteHandle", metadata !"", i32 158, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cHandledData*, i32)* @Util_DeleteHandle, null, null, metadata !43, i32 159} ; [ DW_TAG_subprogram ] [line 158] [def] [scope 159] [Util_DeleteHandle]
!41 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !14, metadata !16, metadata !14}
!43 = metadata !{metadata !44, metadata !45, metadata !46}
!44 = metadata !{i32 786689, metadata !40, metadata !"storage", metadata !5, i32 16777374, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [storage] [line 158]
!45 = metadata !{i32 786689, metadata !40, metadata !"handle", metadata !5, i32 33554590, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 158]
!46 = metadata !{i32 786688, metadata !40, metadata !"return_code", metadata !5, i32 160, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 160]
!47 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_GetHandledData", metadata !"Util_GetHandledData", metadata !"", i32 238, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.cHandledData*, i32)* @Util_GetHandledData, null, null, metadata !50, i32 239} ; [ DW_TAG_subprogram ] [line 238] [def] [scope 239] [Util_GetHandledData]
!48 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!49 = metadata !{metadata !31, metadata !16, metadata !14}
!50 = metadata !{metadata !51, metadata !52, metadata !53}
!51 = metadata !{i32 786689, metadata !47, metadata !"storage", metadata !5, i32 16777454, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [storage] [line 238]
!52 = metadata !{i32 786689, metadata !47, metadata !"handle", metadata !5, i32 33554670, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 238]
!53 = metadata !{i32 786688, metadata !47, metadata !"data", metadata !5, i32 240, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 240]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_GetHandle", metadata !"Util_GetHandle", metadata !"", i32 281, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cHandledData*, i8*, i8**)* @Util_GetHandle, null, null, metadata !58, i32 282} ; [ DW_TAG_subprogram ] [line 281] [def] [scope 282] [Util_GetHandle]
!55 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{metadata !14, metadata !16, metadata !8, metadata !57}
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62, metadata !63}
!59 = metadata !{i32 786689, metadata !54, metadata !"storage", metadata !5, i32 16777497, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [storage] [line 281]
!60 = metadata !{i32 786689, metadata !54, metadata !"name", metadata !5, i32 33554713, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 281]
!61 = metadata !{i32 786689, metadata !54, metadata !"data", metadata !5, i32 50331929, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 281]
!62 = metadata !{i32 786688, metadata !54, metadata !"handle", metadata !5, i32 283, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 283]
!63 = metadata !{i32 786688, metadata !54, metadata !"current", metadata !5, i32 284, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [current] [line 284]
!64 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_GetHandleName", metadata !"Util_GetHandleName", metadata !"", i32 334, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.cHandledData*, i32)* @Util_GetHandleName, null, null, metadata !67, i32 335} ; [ DW_TAG_subprogram ] [line 334] [def] [scope 335] [Util_GetHandleName]
!65 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !8, metadata !16, metadata !14}
!67 = metadata !{metadata !68, metadata !69, metadata !70}
!68 = metadata !{i32 786689, metadata !64, metadata !"storage", metadata !5, i32 16777550, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [storage] [line 334]
!69 = metadata !{i32 786689, metadata !64, metadata !"handle", metadata !5, i32 33554766, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 334]
!70 = metadata !{i32 786688, metadata !64, metadata !"name", metadata !5, i32 336, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 336]
!71 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FindNextUnused", metadata !"FindNextUnused", metadata !"", i32 205, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !72, i32 206} ; [ DW_TAG_subprogram ] [line 205] [local] [def] [scope 206] [FindNextUnused]
!72 = metadata !{metadata !73, metadata !74, metadata !75}
!73 = metadata !{i32 786689, metadata !71, metadata !"storage", metadata !5, i32 16777421, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [storage] [line 205]
!74 = metadata !{i32 786689, metadata !71, metadata !"first", metadata !5, i32 33554637, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 205]
!75 = metadata !{i32 786688, metadata !71, metadata !"current", metadata !5, i32 207, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [current] [line 207]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 20, metadata !8, i32 1, i32 1, null, null}
!78 = metadata !{i32 22, i32 0, metadata !4, null}
!79 = metadata !{i32 53, i32 0, metadata !11, null}
!80 = metadata !{i32 59, i32 0, metadata !11, null}
!81 = metadata !{metadata !"any pointer", metadata !82}
!82 = metadata !{metadata !"omnipotent char", metadata !83}
!83 = metadata !{metadata !"Simple C/C++ TBAA"}
!84 = metadata !{i32 61, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !11, i32 60, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!86 = metadata !{i32 63, i32 0, metadata !85, null}
!87 = metadata !{i32 66, i32 0, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !85, i32 64, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!89 = metadata !{i32 78, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !11, i32 76, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!91 = metadata !{metadata !"int", metadata !82}
!92 = metadata !{i32 80, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !90, i32 79, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!94 = metadata !{i32 88, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !93, i32 87, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!96 = metadata !{i32 91, i32 0, metadata !95, null}
!97 = metadata !{i32 92, i32 0, metadata !95, null}
!98 = metadata !{i32 93, i32 0, metadata !95, null}
!99 = metadata !{i32 95, i32 0, metadata !95, null}
!100 = metadata !{i32 97, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !95, i32 96, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!102 = metadata !{i32 100, i32 0, metadata !95, null}
!103 = metadata !{i32 98, i32 0, metadata !101, null}
!104 = metadata !{i32 103, i32 0, metadata !95, null}
!105 = metadata !{i32 106, i32 0, metadata !95, null}
!106 = metadata !{i32 113, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !90, i32 110, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!108 = metadata !{i32 125, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !107, i32 123, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!110 = metadata !{i32 126, i32 0, metadata !109, null}
!111 = metadata !{i32 128, i32 0, metadata !109, null}
!112 = metadata !{i32 786689, metadata !71, metadata !"storage", metadata !5, i32 16777421, metadata !16, i32 0, metadata !113} ; [ DW_TAG_arg_variable ] [storage] [line 205]
!113 = metadata !{i32 131, i32 0, metadata !109, null}
!114 = metadata !{i32 205, i32 0, metadata !71, metadata !113}
!115 = metadata !{i32 786689, metadata !71, metadata !"first", metadata !5, i32 33554637, metadata !14, i32 0, metadata !113} ; [ DW_TAG_arg_variable ] [first] [line 205]
!116 = metadata !{i32 213, i32 0, metadata !71, metadata !113}
!117 = metadata !{i32 215, i32 0, metadata !118, metadata !113}
!118 = metadata !{i32 786443, metadata !1, metadata !71, i32 214, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!119 = metadata !{i32 209, i32 0, metadata !71, metadata !113}
!120 = metadata !{i32 140, i32 0, metadata !11, null}
!121 = metadata !{i32 158, i32 0, metadata !40, null}
!122 = metadata !{i32 162, i32 0, metadata !40, null}
!123 = metadata !{i32 165, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !40, i32 163, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!125 = metadata !{i32 166, i32 0, metadata !124, null}
!126 = metadata !{i32 167, i32 0, metadata !124, null}
!127 = metadata !{i32 168, i32 0, metadata !124, null}
!128 = metadata !{i32 170, i32 0, metadata !124, null}
!129 = metadata !{i32 172, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !124, i32 171, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!131 = metadata !{i32 173, i32 0, metadata !130, null}
!132 = metadata !{i32 183, i32 0, metadata !40, null}
!133 = metadata !{i32 238, i32 0, metadata !47, null}
!134 = metadata !{i32 242, i32 0, metadata !47, null}
!135 = metadata !{i32 244, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !47, i32 243, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!137 = metadata !{i32 249, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !136, i32 247, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!139 = metadata !{i32 250, i32 0, metadata !138, null}
!140 = metadata !{i32 263, i32 0, metadata !47, null}
!141 = metadata !{i32 281, i32 0, metadata !54, null}
!142 = metadata !{i32 -1}
!143 = metadata !{i32 286, i32 0, metadata !54, null}
!144 = metadata !{i32 288, i32 0, metadata !54, null}
!145 = metadata !{i32 290, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !54, i32 289, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!147 = metadata !{i32 291, i32 0, metadata !146, null}
!148 = metadata !{i32 293, i32 0, metadata !54, null}
!149 = metadata !{i32 295, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !151, i32 295, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!151 = metadata !{i32 786443, metadata !1, metadata !54, i32 294, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!152 = metadata !{i32 297, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !150, i32 296, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!154 = metadata !{i32 299, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !153, i32 298, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!156 = metadata !{i32 301, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !155, i32 300, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!158 = metadata !{i32 303, i32 0, metadata !157, null}
!159 = metadata !{i32 305, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !157, i32 304, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!161 = metadata !{i32 306, i32 0, metadata !160, null}
!162 = metadata !{i32 317, i32 0, metadata !54, null}
!163 = metadata !{i32 334, i32 0, metadata !64, null}
!164 = metadata !{i32 338, i32 0, metadata !64, null}
!165 = metadata !{i32 340, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !64, i32 339, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!167 = metadata !{i32 345, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !166, i32 343, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c]
!169 = metadata !{i32 346, i32 0, metadata !168, null}
!170 = metadata !{i32 359, i32 0, metadata !64, null}
