; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"%ld %ld %ld\00", align 1
@str = private unnamed_addr constant [30 x i8] c"read_min(): not enough memory\00"

; Function Attrs: nounwind optsize uwtable
define i64 @read_min(%struct.network* %net) #0 {
entry:
  %instring = alloca [201 x i8], align 16
  %t = alloca i64, align 8
  %h = alloca i64, align 8
  %c = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{%struct.network* %net}, i64 0, metadata !83), !dbg !154
  call void @llvm.dbg.value(metadata !155, i64 0, metadata !84), !dbg !156
  %0 = getelementptr inbounds [201 x i8]* %instring, i64 0, i64 0, !dbg !157
  call void @llvm.lifetime.start(i64 201, i8* %0) #2, !dbg !157
  call void @llvm.dbg.declare(metadata !{[201 x i8]* %instring}, metadata !140), !dbg !157
  call void @llvm.dbg.declare(metadata !{i64* %t}, metadata !144), !dbg !158
  call void @llvm.dbg.declare(metadata !{i64* %h}, metadata !145), !dbg !158
  call void @llvm.dbg.declare(metadata !{i64* %c}, metadata !146), !dbg !158
  %arraydecay = getelementptr inbounds %struct.network* %net, i64 0, i32 0, i64 0, !dbg !159
  %call = call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #5, !dbg !159
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !84), !dbg !159
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !159
  br i1 %cmp, label %cleanup, label %if.end, !dbg !159

if.end:                                           ; preds = %entry
  %call2 = call i8* @fgets(i8* %0, i32 200, %struct._IO_FILE* %call) #5, !dbg !160
  %call4 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i64* %t, i64* %h) #5, !dbg !161
  %cmp5 = icmp eq i32 %call4, 2, !dbg !161
  br i1 %cmp5, label %if.end7, label %cleanup, !dbg !161

if.end7:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i64* %t}, i64 0, metadata !144), !dbg !162
  %1 = load i64* %t, align 8, !dbg !162, !tbaa !163
  %n_trips = getelementptr inbounds %struct.network* %net, i64 0, i32 3, !dbg !162
  store i64 %1, i64* %n_trips, align 8, !dbg !162, !tbaa !163
  call void @llvm.dbg.value(metadata !{i64* %h}, i64 0, metadata !145), !dbg !166
  %2 = load i64* %h, align 8, !dbg !166, !tbaa !163
  %m_org = getelementptr inbounds %struct.network* %net, i64 0, i32 6, !dbg !166
  store i64 %2, i64* %m_org, align 8, !dbg !166, !tbaa !163
  call void @llvm.dbg.value(metadata !{i64* %t}, i64 0, metadata !144), !dbg !167
  %add = shl nsw i64 %1, 1, !dbg !167
  %add8388 = or i64 %add, 1, !dbg !167
  %n = getelementptr inbounds %struct.network* %net, i64 0, i32 2, !dbg !167
  store i64 %add8388, i64* %n, align 8, !dbg !167, !tbaa !163
  call void @llvm.dbg.value(metadata !{i64* %t}, i64 0, metadata !144), !dbg !168
  %add10 = mul i64 %1, 3, !dbg !168
  call void @llvm.dbg.value(metadata !{i64* %h}, i64 0, metadata !145), !dbg !168
  %add11 = add nsw i64 %add10, %2, !dbg !168
  %m = getelementptr inbounds %struct.network* %net, i64 0, i32 5, !dbg !168
  store i64 %add11, i64* %m, align 8, !dbg !168, !tbaa !163
  %cmp13 = icmp slt i64 %1, 15001, !dbg !169
  %max_m = getelementptr inbounds %struct.network* %net, i64 0, i32 4, !dbg !170
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !169

if.then14:                                        ; preds = %if.end7
  store i64 %add11, i64* %max_m, align 8, !dbg !170, !tbaa !163
  %max_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 9, !dbg !172
  store i64 3000000, i64* %max_new_m, align 8, !dbg !172, !tbaa !163
  br label %cond.end, !dbg !173

if.else:                                          ; preds = %if.end7
  store i64 27328512, i64* %max_m, align 8, !dbg !174, !tbaa !163
  %max_new_m17 = getelementptr inbounds %struct.network* %net, i64 0, i32 9, !dbg !176
  store i64 28900000, i64* %max_new_m17, align 8, !dbg !176, !tbaa !163
  br label %cond.end

cond.end:                                         ; preds = %if.then14, %if.else
  %3 = phi i64 [ 27328512, %if.else ], [ %add11, %if.then14 ]
  %sub = sub nsw i64 %3, %add11, !dbg !177
  %max_residual_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 8, !dbg !177
  store i64 %sub, i64* %max_residual_new_m, align 8, !dbg !177, !tbaa !163
  %add24 = add i64 %add8388, 1, !dbg !178
  %call25 = call noalias i8* @calloc(i64 %add24, i64 104) #5, !dbg !178
  %4 = bitcast i8* %call25 to %struct.node*, !dbg !178
  %nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 21, !dbg !178
  store %struct.node* %4, %struct.node** %nodes, align 8, !dbg !178, !tbaa !179
  %call27 = call noalias i8* @calloc(i64 %add8388, i64 64) #5, !dbg !180
  %5 = bitcast i8* %call27 to %struct.arc*, !dbg !180
  %dummy_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 25, !dbg !180
  store %struct.arc* %5, %struct.arc** %dummy_arcs, align 8, !dbg !180, !tbaa !179
  %call29 = call noalias i8* @calloc(i64 %3, i64 64) #5, !dbg !181
  %6 = bitcast i8* %call29 to %struct.arc*, !dbg !181
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23, !dbg !181
  store %struct.arc* %6, %struct.arc** %arcs, align 8, !dbg !181, !tbaa !179
  %tobool = icmp eq i8* %call25, null, !dbg !182
  %tobool32 = icmp eq i8* %call29, null, !dbg !182
  %or.cond = or i1 %tobool, %tobool32, !dbg !182
  %tobool35 = icmp eq i8* %call27, null, !dbg !182
  %or.cond413 = or i1 %or.cond, %tobool35, !dbg !182
  br i1 %or.cond413, label %if.then36, label %if.end39, !dbg !182

if.then36:                                        ; preds = %cond.end
  %puts = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str, i64 0, i64 0)), !dbg !183
  %call38 = call i64 @getfree(%struct.network* %net) #5, !dbg !185
  br label %cleanup, !dbg !186

if.end39:                                         ; preds = %cond.end
  %add.ptr42 = getelementptr inbounds %struct.node* %4, i64 %add24, !dbg !187
  %stop_nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 22, !dbg !187
  store %struct.node* %add.ptr42, %struct.node** %stop_nodes, align 8, !dbg !187, !tbaa !179
  %add.ptr45 = getelementptr inbounds %struct.arc* %6, i64 %add11, !dbg !188
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !188
  store %struct.arc* %add.ptr45, %struct.arc** %stop_arcs, align 8, !dbg !188, !tbaa !179
  %add.ptr48 = getelementptr inbounds %struct.arc* %5, i64 %add8388, !dbg !189
  %stop_dummy = getelementptr inbounds %struct.network* %net, i64 0, i32 26, !dbg !189
  store %struct.arc* %add.ptr48, %struct.arc** %stop_dummy, align 8, !dbg !189, !tbaa !179
  call void @llvm.dbg.value(metadata !{%struct.node* %4}, i64 0, metadata !151), !dbg !190
  call void @llvm.dbg.value(metadata !{%struct.arc* %6}, i64 0, metadata !148), !dbg !191
  call void @llvm.dbg.value(metadata !192, i64 0, metadata !147), !dbg !193
  %cmp52406 = icmp slt i64 %1, 1, !dbg !193
  br i1 %cmp52406, label %for.end, label %for.body.lr.ph, !dbg !193

for.body.lr.ph:                                   ; preds = %if.end39
  %bigM = getelementptr inbounds %struct.network* %net, i64 0, i32 18, !dbg !195
  br label %for.body, !dbg !193

for.body:                                         ; preds = %if.end60, %for.body.lr.ph
  %arc.0408 = phi %struct.arc* [ %6, %for.body.lr.ph ], [ %incdec.ptr134, %if.end60 ]
  %i.0407 = phi i64 [ 1, %for.body.lr.ph ], [ %inc, %if.end60 ]
  %call54 = call i8* @fgets(i8* %0, i32 200, %struct._IO_FILE* %call) #5, !dbg !197
  %call56 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i64* %t, i64* %h) #5, !dbg !198
  %cmp57 = icmp eq i32 %call56, 2, !dbg !198
  br i1 %cmp57, label %lor.lhs.false, label %cleanup, !dbg !198

lor.lhs.false:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i64* %t}, i64 0, metadata !144), !dbg !198
  %7 = load i64* %t, align 8, !dbg !198, !tbaa !163
  call void @llvm.dbg.value(metadata !{i64* %h}, i64 0, metadata !145), !dbg !198
  %8 = load i64* %h, align 8, !dbg !198, !tbaa !163
  %cmp58 = icmp sgt i64 %7, %8, !dbg !198
  br i1 %cmp58, label %cleanup, label %if.end60, !dbg !198

if.end60:                                         ; preds = %lor.lhs.false
  %sub61 = sub nsw i64 0, %i.0407, !dbg !199
  %conv = trunc i64 %sub61 to i32, !dbg !199
  %arrayidx = getelementptr inbounds %struct.node* %4, i64 %i.0407, !dbg !199
  %number = getelementptr inbounds %struct.node* %4, i64 %i.0407, i32 12, !dbg !199
  store i32 %conv, i32* %number, align 4, !dbg !199, !tbaa !200
  %flow = getelementptr inbounds %struct.node* %4, i64 %i.0407, i32 10, !dbg !201
  store i64 -1, i64* %flow, align 8, !dbg !201, !tbaa !163
  %conv63 = trunc i64 %i.0407 to i32, !dbg !202
  %9 = load i64* %n_trips, align 8, !dbg !202, !tbaa !163
  %add65 = add nsw i64 %9, %i.0407, !dbg !202
  %number67 = getelementptr inbounds %struct.node* %4, i64 %add65, i32 12, !dbg !202
  store i32 %conv63, i32* %number67, align 4, !dbg !202, !tbaa !200
  %flow71 = getelementptr inbounds %struct.node* %4, i64 %add65, i32 10, !dbg !203
  store i64 1, i64* %flow71, align 8, !dbg !203, !tbaa !163
  call void @llvm.dbg.value(metadata !{i64* %t}, i64 0, metadata !144), !dbg !204
  %conv72 = trunc i64 %7 to i32, !dbg !204
  %time = getelementptr inbounds %struct.node* %4, i64 %i.0407, i32 13, !dbg !204
  store i32 %conv72, i32* %time, align 4, !dbg !204, !tbaa !200
  call void @llvm.dbg.value(metadata !{i64* %h}, i64 0, metadata !145), !dbg !205
  %conv74 = trunc i64 %8 to i32, !dbg !205
  %time78 = getelementptr inbounds %struct.node* %4, i64 %add65, i32 13, !dbg !205
  store i32 %conv74, i32* %time78, align 4, !dbg !205, !tbaa !200
  %10 = load i64* %n, align 8, !dbg !206, !tbaa !163
  %arrayidx80 = getelementptr inbounds %struct.node* %4, i64 %10, !dbg !206
  %tail = getelementptr inbounds %struct.arc* %arc.0408, i64 0, i32 1, !dbg !206
  store %struct.node* %arrayidx80, %struct.node** %tail, align 8, !dbg !206, !tbaa !179
  %head = getelementptr inbounds %struct.arc* %arc.0408, i64 0, i32 2, !dbg !207
  store %struct.node* %arrayidx, %struct.node** %head, align 8, !dbg !207, !tbaa !179
  %11 = load i64* %bigM, align 8, !dbg !195, !tbaa !163
  %add82 = add nsw i64 %11, 15, !dbg !195
  %cost = getelementptr inbounds %struct.arc* %arc.0408, i64 0, i32 0, !dbg !195
  store i64 %add82, i64* %cost, align 8, !dbg !195, !tbaa !163
  %org_cost = getelementptr inbounds %struct.arc* %arc.0408, i64 0, i32 7, !dbg !195
  store i64 %add82, i64* %org_cost, align 8, !dbg !195, !tbaa !163
  %firstout = getelementptr inbounds %struct.node* %4, i64 %10, i32 7, !dbg !208
  %12 = load %struct.arc** %firstout, align 8, !dbg !208, !tbaa !179
  %nextout = getelementptr inbounds %struct.arc* %arc.0408, i64 0, i32 4, !dbg !208
  store %struct.arc* %12, %struct.arc** %nextout, align 8, !dbg !208, !tbaa !179
  store %struct.arc* %arc.0408, %struct.arc** %firstout, align 8, !dbg !209, !tbaa !179
  %13 = load %struct.node** %head, align 8, !dbg !210, !tbaa !179
  %firstin = getelementptr inbounds %struct.node* %13, i64 0, i32 8, !dbg !210
  %14 = load %struct.arc** %firstin, align 8, !dbg !210, !tbaa !179
  %nextin = getelementptr inbounds %struct.arc* %arc.0408, i64 0, i32 5, !dbg !210
  store %struct.arc* %14, %struct.arc** %nextin, align 8, !dbg !210, !tbaa !179
  store %struct.arc* %arc.0408, %struct.arc** %firstin, align 8, !dbg !211, !tbaa !179
  %incdec.ptr = getelementptr inbounds %struct.arc* %arc.0408, i64 1, !dbg !212
  call void @llvm.dbg.value(metadata !{%struct.arc* %incdec.ptr}, i64 0, metadata !148), !dbg !212
  %15 = load i64* %n_trips, align 8, !dbg !213, !tbaa !163
  %add90 = add nsw i64 %15, %i.0407, !dbg !213
  %arrayidx91 = getelementptr inbounds %struct.node* %4, i64 %add90, !dbg !213
  %tail92 = getelementptr inbounds %struct.arc* %arc.0408, i64 1, i32 1, !dbg !213
  store %struct.node* %arrayidx91, %struct.node** %tail92, align 8, !dbg !213, !tbaa !179
  %16 = load i64* %n, align 8, !dbg !214, !tbaa !163
  %arrayidx94 = getelementptr inbounds %struct.node* %4, i64 %16, !dbg !214
  %head95 = getelementptr inbounds %struct.arc* %arc.0408, i64 1, i32 2, !dbg !214
  store %struct.node* %arrayidx94, %struct.node** %head95, align 8, !dbg !214, !tbaa !179
  %cost96 = getelementptr inbounds %struct.arc* %incdec.ptr, i64 0, i32 0, !dbg !215
  store i64 15, i64* %cost96, align 8, !dbg !215, !tbaa !163
  %org_cost97 = getelementptr inbounds %struct.arc* %arc.0408, i64 1, i32 7, !dbg !215
  store i64 15, i64* %org_cost97, align 8, !dbg !215, !tbaa !163
  %firstout99 = getelementptr inbounds %struct.node* %4, i64 %add90, i32 7, !dbg !216
  %17 = load %struct.arc** %firstout99, align 8, !dbg !216, !tbaa !179
  %nextout100 = getelementptr inbounds %struct.arc* %arc.0408, i64 1, i32 4, !dbg !216
  store %struct.arc* %17, %struct.arc** %nextout100, align 8, !dbg !216, !tbaa !179
  store %struct.arc* %incdec.ptr, %struct.arc** %firstout99, align 8, !dbg !217, !tbaa !179
  %18 = load %struct.node** %head95, align 8, !dbg !218, !tbaa !179
  %firstin104 = getelementptr inbounds %struct.node* %18, i64 0, i32 8, !dbg !218
  %19 = load %struct.arc** %firstin104, align 8, !dbg !218, !tbaa !179
  %nextin105 = getelementptr inbounds %struct.arc* %arc.0408, i64 1, i32 5, !dbg !218
  store %struct.arc* %19, %struct.arc** %nextin105, align 8, !dbg !218, !tbaa !179
  store %struct.arc* %incdec.ptr, %struct.arc** %firstin104, align 8, !dbg !219, !tbaa !179
  %incdec.ptr108 = getelementptr inbounds %struct.arc* %arc.0408, i64 2, !dbg !220
  call void @llvm.dbg.value(metadata !{%struct.arc* %incdec.ptr108}, i64 0, metadata !148), !dbg !220
  %tail110 = getelementptr inbounds %struct.arc* %arc.0408, i64 2, i32 1, !dbg !221
  store %struct.node* %arrayidx, %struct.node** %tail110, align 8, !dbg !221, !tbaa !179
  %20 = load i64* %n_trips, align 8, !dbg !222, !tbaa !163
  %add112 = add nsw i64 %20, %i.0407, !dbg !222
  %arrayidx113 = getelementptr inbounds %struct.node* %4, i64 %add112, !dbg !222
  %head114 = getelementptr inbounds %struct.arc* %arc.0408, i64 2, i32 2, !dbg !222
  store %struct.node* %arrayidx113, %struct.node** %head114, align 8, !dbg !222, !tbaa !179
  %21 = load i64* %bigM, align 8, !dbg !223, !tbaa !163
  %cmp116 = icmp sgt i64 %21, 10000000, !dbg !223
  %phitmp390 = shl i64 %21, 1, !dbg !223
  %phitmp390. = select i1 %cmp116, i64 %phitmp390, i64 20000000, !dbg !223
  %cost122 = getelementptr inbounds %struct.arc* %incdec.ptr108, i64 0, i32 0, !dbg !223
  store i64 %phitmp390., i64* %cost122, align 8, !dbg !223, !tbaa !163
  %org_cost123 = getelementptr inbounds %struct.arc* %arc.0408, i64 2, i32 7, !dbg !223
  store i64 %phitmp390., i64* %org_cost123, align 8, !dbg !223, !tbaa !163
  %firstout125 = getelementptr inbounds %struct.node* %4, i64 %i.0407, i32 7, !dbg !224
  %22 = load %struct.arc** %firstout125, align 8, !dbg !224, !tbaa !179
  %nextout126 = getelementptr inbounds %struct.arc* %arc.0408, i64 2, i32 4, !dbg !224
  store %struct.arc* %22, %struct.arc** %nextout126, align 8, !dbg !224, !tbaa !179
  store %struct.arc* %incdec.ptr108, %struct.arc** %firstout125, align 8, !dbg !225, !tbaa !179
  %23 = load %struct.node** %head114, align 8, !dbg !226, !tbaa !179
  %firstin130 = getelementptr inbounds %struct.node* %23, i64 0, i32 8, !dbg !226
  %24 = load %struct.arc** %firstin130, align 8, !dbg !226, !tbaa !179
  %nextin131 = getelementptr inbounds %struct.arc* %arc.0408, i64 2, i32 5, !dbg !226
  store %struct.arc* %24, %struct.arc** %nextin131, align 8, !dbg !226, !tbaa !179
  store %struct.arc* %incdec.ptr108, %struct.arc** %firstin130, align 8, !dbg !227, !tbaa !179
  %incdec.ptr134 = getelementptr inbounds %struct.arc* %arc.0408, i64 3, !dbg !228
  call void @llvm.dbg.value(metadata !{%struct.arc* %incdec.ptr134}, i64 0, metadata !148), !dbg !228
  %inc = add nsw i64 %i.0407, 1, !dbg !193
  call void @llvm.dbg.value(metadata !{i64 %inc}, i64 0, metadata !147), !dbg !193
  %25 = load i64* %n_trips, align 8, !dbg !193, !tbaa !163
  %cmp52 = icmp slt i64 %i.0407, %25, !dbg !193
  br i1 %cmp52, label %for.body, label %for.end, !dbg !193

for.end:                                          ; preds = %if.end60, %if.end39
  %.lcssa404 = phi i64 [ %1, %if.end39 ], [ %25, %if.end60 ]
  %arc.0.lcssa = phi %struct.arc* [ %6, %if.end39 ], [ %incdec.ptr134, %if.end60 ]
  %i.0.lcssa = phi i64 [ 1, %if.end39 ], [ %inc, %if.end60 ]
  %add136 = add nsw i64 %.lcssa404, 1, !dbg !229
  %cmp137 = icmp eq i64 %i.0.lcssa, %add136, !dbg !229
  br i1 %cmp137, label %for.cond141.preheader, label %cleanup, !dbg !229

for.cond141.preheader:                            ; preds = %for.end
  %26 = load i64* %m_org, align 8, !dbg !230, !tbaa !163
  %cmp143397 = icmp sgt i64 %26, 0, !dbg !230
  br i1 %cmp143397, label %for.body145, label %for.end175, !dbg !230

for.body145:                                      ; preds = %for.cond141.preheader, %if.end153
  %arc.1399 = phi %struct.arc* [ %incdec.ptr174, %if.end153 ], [ %arc.0.lcssa, %for.cond141.preheader ]
  %i.1398 = phi i64 [ %inc173, %if.end153 ], [ 0, %for.cond141.preheader ]
  %call147 = call i8* @fgets(i8* %0, i32 200, %struct._IO_FILE* %call) #5, !dbg !232
  %call149 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i64* %t, i64* %h, i64* %c) #5, !dbg !234
  %cmp150 = icmp eq i32 %call149, 3, !dbg !234
  br i1 %cmp150, label %if.end153, label %cleanup, !dbg !234

if.end153:                                        ; preds = %for.body145
  call void @llvm.dbg.value(metadata !{i64* %t}, i64 0, metadata !144), !dbg !235
  %27 = load i64* %t, align 8, !dbg !235, !tbaa !163
  %28 = load i64* %n_trips, align 8, !dbg !235, !tbaa !163
  %add155 = add nsw i64 %28, %27, !dbg !235
  %arrayidx156 = getelementptr inbounds %struct.node* %4, i64 %add155, !dbg !235
  %tail157 = getelementptr inbounds %struct.arc* %arc.1399, i64 0, i32 1, !dbg !235
  store %struct.node* %arrayidx156, %struct.node** %tail157, align 8, !dbg !235, !tbaa !179
  call void @llvm.dbg.value(metadata !{i64* %h}, i64 0, metadata !145), !dbg !236
  %29 = load i64* %h, align 8, !dbg !236, !tbaa !163
  %arrayidx158 = getelementptr inbounds %struct.node* %4, i64 %29, !dbg !236
  %head159 = getelementptr inbounds %struct.arc* %arc.1399, i64 0, i32 2, !dbg !236
  store %struct.node* %arrayidx158, %struct.node** %head159, align 8, !dbg !236, !tbaa !179
  call void @llvm.dbg.value(metadata !{i64* %c}, i64 0, metadata !146), !dbg !237
  %30 = load i64* %c, align 8, !dbg !237, !tbaa !163
  %org_cost160 = getelementptr inbounds %struct.arc* %arc.1399, i64 0, i32 7, !dbg !237
  store i64 %30, i64* %org_cost160, align 8, !dbg !237, !tbaa !163
  call void @llvm.dbg.value(metadata !{i64* %c}, i64 0, metadata !146), !dbg !238
  %31 = load i64* %c, align 8, !dbg !238, !tbaa !163
  %cost161 = getelementptr inbounds %struct.arc* %arc.1399, i64 0, i32 0, !dbg !238
  store i64 %31, i64* %cost161, align 8, !dbg !238, !tbaa !163
  %firstout163 = getelementptr inbounds %struct.node* %4, i64 %add155, i32 7, !dbg !239
  %32 = load %struct.arc** %firstout163, align 8, !dbg !239, !tbaa !179
  %nextout164 = getelementptr inbounds %struct.arc* %arc.1399, i64 0, i32 4, !dbg !239
  store %struct.arc* %32, %struct.arc** %nextout164, align 8, !dbg !239, !tbaa !179
  store %struct.arc* %arc.1399, %struct.arc** %firstout163, align 8, !dbg !240, !tbaa !179
  %33 = load %struct.node** %head159, align 8, !dbg !241, !tbaa !179
  %firstin168 = getelementptr inbounds %struct.node* %33, i64 0, i32 8, !dbg !241
  %34 = load %struct.arc** %firstin168, align 8, !dbg !241, !tbaa !179
  %nextin169 = getelementptr inbounds %struct.arc* %arc.1399, i64 0, i32 5, !dbg !241
  store %struct.arc* %34, %struct.arc** %nextin169, align 8, !dbg !241, !tbaa !179
  store %struct.arc* %arc.1399, %struct.arc** %firstin168, align 8, !dbg !242, !tbaa !179
  %inc173 = add nsw i64 %i.1398, 1, !dbg !230
  call void @llvm.dbg.value(metadata !{i64 %inc173}, i64 0, metadata !147), !dbg !230
  %incdec.ptr174 = getelementptr inbounds %struct.arc* %arc.1399, i64 1, !dbg !230
  call void @llvm.dbg.value(metadata !{%struct.arc* %incdec.ptr174}, i64 0, metadata !148), !dbg !230
  %35 = load i64* %m_org, align 8, !dbg !230, !tbaa !163
  %cmp143 = icmp slt i64 %inc173, %35, !dbg !230
  br i1 %cmp143, label %for.body145, label %for.end175, !dbg !230

for.end175:                                       ; preds = %if.end153, %for.cond141.preheader
  %36 = phi %struct.arc* [ %arc.0.lcssa, %for.cond141.preheader ], [ %incdec.ptr174, %if.end153 ]
  %37 = load %struct.arc** %stop_arcs, align 8, !dbg !243, !tbaa !179
  %cmp177 = icmp eq %struct.arc* %37, %36, !dbg !243
  br i1 %cmp177, label %if.end195, label %if.then179, !dbg !243

if.then179:                                       ; preds = %for.end175
  store %struct.arc* %36, %struct.arc** %stop_arcs, align 8, !dbg !244, !tbaa !179
  %38 = load %struct.arc** %arcs, align 8, !dbg !246, !tbaa !179
  call void @llvm.dbg.value(metadata !{%struct.arc* %38}, i64 0, metadata !148), !dbg !246
  store i64 0, i64* %m, align 8, !dbg !247, !tbaa !163
  %cmp185393 = icmp ult %struct.arc* %38, %36, !dbg !247
  br i1 %cmp185393, label %for.body187, label %for.end192, !dbg !247

for.body187:                                      ; preds = %if.then179, %for.body187
  %39 = phi i64 [ %inc189, %for.body187 ], [ 0, %if.then179 ]
  %arc.2394 = phi %struct.arc* [ %incdec.ptr191, %for.body187 ], [ %38, %if.then179 ]
  %inc189 = add nsw i64 %39, 1, !dbg !249
  %incdec.ptr191 = getelementptr inbounds %struct.arc* %arc.2394, i64 1, !dbg !247
  call void @llvm.dbg.value(metadata !{%struct.arc* %incdec.ptr191}, i64 0, metadata !148), !dbg !247
  %cmp185 = icmp ult %struct.arc* %incdec.ptr191, %36, !dbg !247
  br i1 %cmp185, label %for.body187, label %for.cond183.for.end192_crit_edge, !dbg !247

for.cond183.for.end192_crit_edge:                 ; preds = %for.body187
  store i64 %inc189, i64* %m, align 8, !dbg !249, !tbaa !163
  br label %for.end192, !dbg !247

for.end192:                                       ; preds = %for.cond183.for.end192_crit_edge, %if.then179
  %.lcssa = phi i64 [ %inc189, %for.cond183.for.end192_crit_edge ], [ 0, %if.then179 ]
  store i64 %.lcssa, i64* %m_org, align 8, !dbg !250, !tbaa !163
  br label %if.end195, !dbg !251

if.end195:                                        ; preds = %for.end175, %for.end192
  %call196 = call i32 @fclose(%struct._IO_FILE* %call) #5, !dbg !252
  %arrayidx197 = getelementptr inbounds %struct.network* %net, i64 0, i32 1, i64 0, !dbg !253
  store i8 0, i8* %arrayidx197, align 1, !dbg !253, !tbaa !164
  call void @llvm.dbg.value(metadata !192, i64 0, metadata !147), !dbg !254
  %40 = load i64* %n_trips, align 8, !dbg !254, !tbaa !163
  %cmp200391 = icmp slt i64 %40, 1, !dbg !254
  br i1 %cmp200391, label %cleanup, label %for.body202.lr.ph, !dbg !254

for.body202.lr.ph:                                ; preds = %if.end195
  %bigM203 = getelementptr inbounds %struct.network* %net, i64 0, i32 18, !dbg !256
  %41 = load %struct.arc** %arcs, align 8, !dbg !256, !tbaa !179
  br label %for.body202, !dbg !254

for.body202:                                      ; preds = %cond.end223, %for.body202.lr.ph
  %i.2392 = phi i64 [ 1, %for.body202.lr.ph ], [ %inc232, %cond.end223 ]
  %42 = load i64* %bigM203, align 8, !dbg !256, !tbaa !163
  %cmp204 = icmp sgt i64 %42, 10000000, !dbg !256
  br i1 %cmp204, label %cond.true206, label %cond.end209, !dbg !256

cond.true206:                                     ; preds = %for.body202
  %phitmp = mul i64 %42, -2, !dbg !256
  br label %cond.end209, !dbg !256

cond.end209:                                      ; preds = %for.body202, %cond.true206
  %cond210 = phi i64 [ %phitmp, %cond.true206 ], [ -20000000, %for.body202 ]
  %mul212 = mul nsw i64 %i.2392, 3, !dbg !256
  %sub213 = add nsw i64 %mul212, -1, !dbg !256
  %cost216 = getelementptr inbounds %struct.arc* %41, i64 %sub213, i32 0, !dbg !256
  store i64 %cond210, i64* %cost216, align 8, !dbg !256, !tbaa !163
  %43 = load i64* %bigM203, align 8, !dbg !258, !tbaa !163
  %cmp218 = icmp sgt i64 %43, 10000000, !dbg !258
  br i1 %cmp218, label %cond.true220, label %cond.end223, !dbg !258

cond.true220:                                     ; preds = %cond.end209
  %phitmp389 = mul i64 %43, -2, !dbg !258
  br label %cond.end223, !dbg !258

cond.end223:                                      ; preds = %cond.end209, %cond.true220
  %cond224 = phi i64 [ %phitmp389, %cond.true220 ], [ -20000000, %cond.end209 ]
  %org_cost230 = getelementptr inbounds %struct.arc* %41, i64 %sub213, i32 7, !dbg !258
  store i64 %cond224, i64* %org_cost230, align 8, !dbg !258, !tbaa !163
  %inc232 = add nsw i64 %i.2392, 1, !dbg !254
  call void @llvm.dbg.value(metadata !{i64 %inc232}, i64 0, metadata !147), !dbg !254
  %44 = load i64* %n_trips, align 8, !dbg !254, !tbaa !163
  %cmp200 = icmp slt i64 %i.2392, %44, !dbg !254
  br i1 %cmp200, label %for.body202, label %cleanup, !dbg !254

cleanup:                                          ; preds = %lor.lhs.false, %for.body, %for.body145, %if.end195, %cond.end223, %for.end, %if.end, %entry, %if.then36
  %retval.0 = phi i64 [ -1, %if.then36 ], [ -1, %entry ], [ -1, %if.end ], [ -1, %for.end ], [ 0, %cond.end223 ], [ 0, %if.end195 ], [ -1, %for.body145 ], [ -1, %for.body ], [ -1, %lor.lhs.false ]
  call void @llvm.lifetime.end(i64 201, i8* %0) #2, !dbg !259
  ret i64 %retval.0, !dbg !260
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare i64 @getfree(%struct.network*) #4

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"read_min", metadata !"read_min", metadata !"", i32 29, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.network*)* @read_min, null, null, metadata !82, i32 34} ; [ DW_TAG_subprogram ] [line 29] [def] [scope 34] [read_min]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from network_t]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"network_t", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [network_t] [line 163, size 0, align 0, offset 0] [from network]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"network", i32 138, i64 4992, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [network] [line 138, size 4992, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/defines.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !39, metadata !41, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inputfile", i32 140, i64 1600, i64 8, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [inputfile] [line 140, size 1600, align 8, offset 0] [from ]
!15 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1600, i64 8, i32 0, i32 0, metadata !16, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1600, align 8, offset 0] [from char]
!16 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 200}      ; [ DW_TAG_subrange_type ] [0, 199]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"clustfile", i32 141, i64 1600, i64 8, i64 1600, i32 0, metadata !15} ; [ DW_TAG_member ] [clustfile] [line 141, size 1600, align 8, offset 1600] [from ]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n", i32 142, i64 64, i64 64, i64 3200, i32 0, metadata !8} ; [ DW_TAG_member ] [n] [line 142, size 64, align 64, offset 3200] [from long int]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n_trips", i32 142, i64 64, i64 64, i64 3264, i32 0, metadata !8} ; [ DW_TAG_member ] [n_trips] [line 142, size 64, align 64, offset 3264] [from long int]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"max_m", i32 143, i64 64, i64 64, i64 3328, i32 0, metadata !8} ; [ DW_TAG_member ] [max_m] [line 143, size 64, align 64, offset 3328] [from long int]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"m", i32 143, i64 64, i64 64, i64 3392, i32 0, metadata !8} ; [ DW_TAG_member ] [m] [line 143, size 64, align 64, offset 3392] [from long int]
!24 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"m_org", i32 143, i64 64, i64 64, i64 3456, i32 0, metadata !8} ; [ DW_TAG_member ] [m_org] [line 143, size 64, align 64, offset 3456] [from long int]
!25 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"m_impl", i32 143, i64 64, i64 64, i64 3520, i32 0, metadata !8} ; [ DW_TAG_member ] [m_impl] [line 143, size 64, align 64, offset 3520] [from long int]
!26 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"max_residual_new_m", i32 144, i64 64, i64 64, i64 3584, i32 0, metadata !8} ; [ DW_TAG_member ] [max_residual_new_m] [line 144, size 64, align 64, offset 3584] [from long int]
!27 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"max_new_m", i32 144, i64 64, i64 64, i64 3648, i32 0, metadata !8} ; [ DW_TAG_member ] [max_new_m] [line 144, size 64, align 64, offset 3648] [from long int]
!28 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"primal_unbounded", i32 146, i64 64, i64 64, i64 3712, i32 0, metadata !8} ; [ DW_TAG_member ] [primal_unbounded] [line 146, size 64, align 64, offset 3712] [from long int]
!29 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"dual_unbounded", i32 147, i64 64, i64 64, i64 3776, i32 0, metadata !8} ; [ DW_TAG_member ] [dual_unbounded] [line 147, size 64, align 64, offset 3776] [from long int]
!30 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"perturbed", i32 148, i64 64, i64 64, i64 3840, i32 0, metadata !8} ; [ DW_TAG_member ] [perturbed] [line 148, size 64, align 64, offset 3840] [from long int]
!31 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"feasible", i32 149, i64 64, i64 64, i64 3904, i32 0, metadata !8} ; [ DW_TAG_member ] [feasible] [line 149, size 64, align 64, offset 3904] [from long int]
!32 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"eps", i32 150, i64 64, i64 64, i64 3968, i32 0, metadata !8} ; [ DW_TAG_member ] [eps] [line 150, size 64, align 64, offset 3968] [from long int]
!33 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"opt_tol", i32 151, i64 64, i64 64, i64 4032, i32 0, metadata !8} ; [ DW_TAG_member ] [opt_tol] [line 151, size 64, align 64, offset 4032] [from long int]
!34 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"feas_tol", i32 152, i64 64, i64 64, i64 4096, i32 0, metadata !8} ; [ DW_TAG_member ] [feas_tol] [line 152, size 64, align 64, offset 4096] [from long int]
!35 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"pert_val", i32 153, i64 64, i64 64, i64 4160, i32 0, metadata !8} ; [ DW_TAG_member ] [pert_val] [line 153, size 64, align 64, offset 4160] [from long int]
!36 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"bigM", i32 154, i64 64, i64 64, i64 4224, i32 0, metadata !8} ; [ DW_TAG_member ] [bigM] [line 154, size 64, align 64, offset 4224] [from long int]
!37 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"optcost", i32 155, i64 64, i64 64, i64 4288, i32 0, metadata !38} ; [ DW_TAG_member ] [optcost] [line 155, size 64, align 64, offset 4288] [from double]
!38 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!39 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ignore_impl", i32 156, i64 64, i64 64, i64 4352, i32 0, metadata !40} ; [ DW_TAG_member ] [ignore_impl] [line 156, size 64, align 64, offset 4352] [from cost_t]
!40 = metadata !{i32 786454, metadata !12, null, metadata !"cost_t", i32 69, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [cost_t] [line 69, size 0, align 0, offset 0] [from long int]
!41 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nodes", i32 157, i64 64, i64 64, i64 4416, i32 0, metadata !42} ; [ DW_TAG_member ] [nodes] [line 157, size 64, align 64, offset 4416] [from node_p]
!42 = metadata !{i32 786454, metadata !12, null, metadata !"node_p", i32 100, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [node_p] [line 100, size 0, align 0, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node]
!44 = metadata !{i32 786451, metadata !12, null, metadata !"node", i32 107, i64 832, i64 64, i32 0, i32 0, null, metadata !45, i32 0, null, null} ; [ DW_TAG_structure_type ] [node] [line 107, size 832, align 64, offset 0] [from ]
!45 = metadata !{metadata !46, metadata !47, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73}
!46 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"potential", i32 109, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [potential] [line 109, size 64, align 64, offset 0] [from cost_t]
!47 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"orientation", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !48} ; [ DW_TAG_member ] [orientation] [line 110, size 32, align 32, offset 64] [from int]
!48 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!49 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"child", i32 111, i64 64, i64 64, i64 128, i32 0, metadata !42} ; [ DW_TAG_member ] [child] [line 111, size 64, align 64, offset 128] [from node_p]
!50 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"pred", i32 112, i64 64, i64 64, i64 192, i32 0, metadata !42} ; [ DW_TAG_member ] [pred] [line 112, size 64, align 64, offset 192] [from node_p]
!51 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"sibling", i32 113, i64 64, i64 64, i64 256, i32 0, metadata !42} ; [ DW_TAG_member ] [sibling] [line 113, size 64, align 64, offset 256] [from node_p]
!52 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"sibling_prev", i32 114, i64 64, i64 64, i64 320, i32 0, metadata !42} ; [ DW_TAG_member ] [sibling_prev] [line 114, size 64, align 64, offset 320] [from node_p]
!53 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"basic_arc", i32 115, i64 64, i64 64, i64 384, i32 0, metadata !54} ; [ DW_TAG_member ] [basic_arc] [line 115, size 64, align 64, offset 384] [from arc_p]
!54 = metadata !{i32 786454, metadata !12, null, metadata !"arc_p", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [arc_p] [line 103, size 0, align 0, offset 0] [from ]
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from arc]
!56 = metadata !{i32 786451, metadata !12, null, metadata !"arc", i32 126, i64 512, i64 64, i32 0, i32 0, null, metadata !57, i32 0, null, null} ; [ DW_TAG_structure_type ] [arc] [line 126, size 512, align 64, offset 0] [from ]
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !66}
!58 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"cost", i32 128, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [cost] [line 128, size 64, align 64, offset 0] [from cost_t]
!59 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"tail", i32 129, i64 64, i64 64, i64 64, i32 0, metadata !42} ; [ DW_TAG_member ] [tail] [line 129, size 64, align 64, offset 64] [from node_p]
!60 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"head", i32 129, i64 64, i64 64, i64 128, i32 0, metadata !42} ; [ DW_TAG_member ] [head] [line 129, size 64, align 64, offset 128] [from node_p]
!61 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"ident", i32 130, i64 32, i64 32, i64 192, i32 0, metadata !48} ; [ DW_TAG_member ] [ident] [line 130, size 32, align 32, offset 192] [from int]
!62 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"nextout", i32 131, i64 64, i64 64, i64 256, i32 0, metadata !54} ; [ DW_TAG_member ] [nextout] [line 131, size 64, align 64, offset 256] [from arc_p]
!63 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"nextin", i32 131, i64 64, i64 64, i64 320, i32 0, metadata !54} ; [ DW_TAG_member ] [nextin] [line 131, size 64, align 64, offset 320] [from arc_p]
!64 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"flow", i32 132, i64 64, i64 64, i64 384, i32 0, metadata !65} ; [ DW_TAG_member ] [flow] [line 132, size 64, align 64, offset 384] [from flow_t]
!65 = metadata !{i32 786454, metadata !12, null, metadata !"flow_t", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [flow_t] [line 68, size 0, align 0, offset 0] [from long int]
!66 = metadata !{i32 786445, metadata !12, metadata !56, metadata !"org_cost", i32 133, i64 64, i64 64, i64 448, i32 0, metadata !40} ; [ DW_TAG_member ] [org_cost] [line 133, size 64, align 64, offset 448] [from cost_t]
!67 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"firstout", i32 116, i64 64, i64 64, i64 448, i32 0, metadata !54} ; [ DW_TAG_member ] [firstout] [line 116, size 64, align 64, offset 448] [from arc_p]
!68 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"firstin", i32 116, i64 64, i64 64, i64 512, i32 0, metadata !54} ; [ DW_TAG_member ] [firstin] [line 116, size 64, align 64, offset 512] [from arc_p]
!69 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"arc_tmp", i32 117, i64 64, i64 64, i64 576, i32 0, metadata !54} ; [ DW_TAG_member ] [arc_tmp] [line 117, size 64, align 64, offset 576] [from arc_p]
!70 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"flow", i32 118, i64 64, i64 64, i64 640, i32 0, metadata !65} ; [ DW_TAG_member ] [flow] [line 118, size 64, align 64, offset 640] [from flow_t]
!71 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"depth", i32 119, i64 64, i64 64, i64 704, i32 0, metadata !8} ; [ DW_TAG_member ] [depth] [line 119, size 64, align 64, offset 704] [from long int]
!72 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"number", i32 120, i64 32, i64 32, i64 768, i32 0, metadata !48} ; [ DW_TAG_member ] [number] [line 120, size 32, align 32, offset 768] [from int]
!73 = metadata !{i32 786445, metadata !12, metadata !44, metadata !"time", i32 121, i64 32, i64 32, i64 800, i32 0, metadata !48} ; [ DW_TAG_member ] [time] [line 121, size 32, align 32, offset 800] [from int]
!74 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"stop_nodes", i32 157, i64 64, i64 64, i64 4480, i32 0, metadata !42} ; [ DW_TAG_member ] [stop_nodes] [line 157, size 64, align 64, offset 4480] [from node_p]
!75 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"arcs", i32 158, i64 64, i64 64, i64 4544, i32 0, metadata !54} ; [ DW_TAG_member ] [arcs] [line 158, size 64, align 64, offset 4544] [from arc_p]
!76 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"stop_arcs", i32 158, i64 64, i64 64, i64 4608, i32 0, metadata !54} ; [ DW_TAG_member ] [stop_arcs] [line 158, size 64, align 64, offset 4608] [from arc_p]
!77 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"dummy_arcs", i32 159, i64 64, i64 64, i64 4672, i32 0, metadata !54} ; [ DW_TAG_member ] [dummy_arcs] [line 159, size 64, align 64, offset 4672] [from arc_p]
!78 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"stop_dummy", i32 159, i64 64, i64 64, i64 4736, i32 0, metadata !54} ; [ DW_TAG_member ] [stop_dummy] [line 159, size 64, align 64, offset 4736] [from arc_p]
!79 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"iterations", i32 160, i64 64, i64 64, i64 4800, i32 0, metadata !8} ; [ DW_TAG_member ] [iterations] [line 160, size 64, align 64, offset 4800] [from long int]
!80 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"bound_exchanges", i32 161, i64 64, i64 64, i64 4864, i32 0, metadata !8} ; [ DW_TAG_member ] [bound_exchanges] [line 161, size 64, align 64, offset 4864] [from long int]
!81 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"checksum", i32 162, i64 64, i64 64, i64 4928, i32 0, metadata !8} ; [ DW_TAG_member ] [checksum] [line 162, size 64, align 64, offset 4928] [from long int]
!82 = metadata !{metadata !83, metadata !84, metadata !140, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !151}
!83 = metadata !{i32 786689, metadata !4, metadata !"net", metadata !5, i32 16777245, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [net] [line 29]
!84 = metadata !{i32 786688, metadata !4, metadata !"in", metadata !5, i32 35, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 35]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!86 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!87 = metadata !{i32 786451, metadata !88, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !89, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!88 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!89 = metadata !{metadata !90, metadata !91, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !111, metadata !112, metadata !113, metadata !114, metadata !116, metadata !118, metadata !120, metadata !124, metadata !126, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !135, metadata !136}
!90 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!91 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !92} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!93 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !92} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!94 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !92} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!95 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !92} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!96 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !92} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!97 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !92} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!98 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !92} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!99 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !92} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!100 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !92} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!101 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !92} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!102 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !92} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!103 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !104} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !105} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!105 = metadata !{i32 786451, metadata !88, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !106, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!106 = metadata !{metadata !107, metadata !108, metadata !110}
!107 = metadata !{i32 786445, metadata !88, metadata !105, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!108 = metadata !{i32 786445, metadata !88, metadata !105, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !109} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!109 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!110 = metadata !{i32 786445, metadata !88, metadata !105, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !48} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!111 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !109} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!112 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !48} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!113 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !48} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!114 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !115} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!115 = metadata !{i32 786454, metadata !88, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!116 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !117} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!117 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!118 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !119} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!119 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!120 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !121} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!121 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !16, metadata !122, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!122 = metadata !{metadata !123}
!123 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!124 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !125} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!125 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!126 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !127} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!127 = metadata !{i32 786454, metadata !88, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!128 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !125} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!129 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !125} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!130 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !125} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!131 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !125} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!132 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !133} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!133 = metadata !{i32 786454, metadata !88, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!134 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!135 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !48} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!136 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !137} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!137 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !16, metadata !138, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!138 = metadata !{metadata !139}
!139 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!140 = metadata !{i32 786688, metadata !4, metadata !"instring", metadata !5, i32 36, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [instring] [line 36]
!141 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1608, i64 8, i32 0, i32 0, metadata !16, metadata !142, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1608, align 8, offset 0] [from char]
!142 = metadata !{metadata !143}
!143 = metadata !{i32 786465, i64 0, i64 201}     ; [ DW_TAG_subrange_type ] [0, 200]
!144 = metadata !{i32 786688, metadata !4, metadata !"t", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 37]
!145 = metadata !{i32 786688, metadata !4, metadata !"h", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 37]
!146 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 37]
!147 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 38, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 38]
!148 = metadata !{i32 786688, metadata !4, metadata !"arc", metadata !5, i32 39, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arc] [line 39]
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from arc_t]
!150 = metadata !{i32 786454, metadata !1, null, metadata !"arc_t", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [arc_t] [line 102, size 0, align 0, offset 0] [from arc]
!151 = metadata !{i32 786688, metadata !4, metadata !"node", metadata !5, i32 40, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 40]
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node_t]
!153 = metadata !{i32 786454, metadata !1, null, metadata !"node_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [node_t] [line 99, size 0, align 0, offset 0] [from node]
!154 = metadata !{i32 29, i32 0, metadata !4, null}
!155 = metadata !{%struct._IO_FILE* null}
!156 = metadata !{i32 35, i32 0, metadata !4, null}
!157 = metadata !{i32 36, i32 0, metadata !4, null}
!158 = metadata !{i32 37, i32 0, metadata !4, null}
!159 = metadata !{i32 43, i32 0, metadata !4, null}
!160 = metadata !{i32 46, i32 0, metadata !4, null}
!161 = metadata !{i32 47, i32 0, metadata !4, null}
!162 = metadata !{i32 51, i32 0, metadata !4, null}
!163 = metadata !{metadata !"long", metadata !164}
!164 = metadata !{metadata !"omnipotent char", metadata !165}
!165 = metadata !{metadata !"Simple C/C++ TBAA"}
!166 = metadata !{i32 52, i32 0, metadata !4, null}
!167 = metadata !{i32 53, i32 0, metadata !4, null}
!168 = metadata !{i32 54, i32 0, metadata !4, null}
!169 = metadata !{i32 56, i32 0, metadata !4, null}
!170 = metadata !{i32 58, i32 0, metadata !171, null} ; [ DW_TAG_imported_module ]
!171 = metadata !{i32 786443, metadata !1, metadata !4, i32 57, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c]
!172 = metadata !{i32 59, i32 0, metadata !171, null}
!173 = metadata !{i32 60, i32 0, metadata !171, null}
!174 = metadata !{i32 67, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !4, i32 62, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c]
!176 = metadata !{i32 71, i32 0, metadata !175, null}
!177 = metadata !{i32 74, i32 0, metadata !4, null}
!178 = metadata !{i32 80, i32 0, metadata !4, null}
!179 = metadata !{metadata !"any pointer", metadata !164}
!180 = metadata !{i32 81, i32 0, metadata !4, null}
!181 = metadata !{i32 82, i32 0, metadata !4, null}
!182 = metadata !{i32 84, i32 0, metadata !4, null}
!183 = metadata !{i32 86, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !4, i32 85, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c]
!185 = metadata !{i32 87, i32 0, metadata !184, null}
!186 = metadata !{i32 88, i32 0, metadata !184, null}
!187 = metadata !{i32 108, i32 0, metadata !4, null}
!188 = metadata !{i32 109, i32 0, metadata !4, null}
!189 = metadata !{i32 110, i32 0, metadata !4, null}
!190 = metadata !{i32 113, i32 0, metadata !4, null}
!191 = metadata !{i32 114, i32 0, metadata !4, null}
!192 = metadata !{i64 1}
!193 = metadata !{i32 116, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !4, i32 116, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c]
!195 = metadata !{i32 134, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !194, i32 117, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c]
!197 = metadata !{i32 118, i32 0, metadata !196, null}
!198 = metadata !{i32 120, i32 0, metadata !196, null}
!199 = metadata !{i32 123, i32 0, metadata !196, null}
!200 = metadata !{metadata !"int", metadata !164}
!201 = metadata !{i32 124, i32 0, metadata !196, null}
!202 = metadata !{i32 126, i32 0, metadata !196, null}
!203 = metadata !{i32 127, i32 0, metadata !196, null}
!204 = metadata !{i32 129, i32 0, metadata !196, null}
!205 = metadata !{i32 130, i32 0, metadata !196, null}
!206 = metadata !{i32 132, i32 0, metadata !196, null}
!207 = metadata !{i32 133, i32 0, metadata !196, null}
!208 = metadata !{i32 135, i32 0, metadata !196, null}
!209 = metadata !{i32 136, i32 0, metadata !196, null}
!210 = metadata !{i32 137, i32 0, metadata !196, null}
!211 = metadata !{i32 138, i32 0, metadata !196, null}
!212 = metadata !{i32 139, i32 0, metadata !196, null}
!213 = metadata !{i32 141, i32 0, metadata !196, null}
!214 = metadata !{i32 142, i32 0, metadata !196, null}
!215 = metadata !{i32 143, i32 0, metadata !196, null}
!216 = metadata !{i32 144, i32 0, metadata !196, null}
!217 = metadata !{i32 145, i32 0, metadata !196, null}
!218 = metadata !{i32 146, i32 0, metadata !196, null}
!219 = metadata !{i32 147, i32 0, metadata !196, null}
!220 = metadata !{i32 148, i32 0, metadata !196, null}
!221 = metadata !{i32 150, i32 0, metadata !196, null}
!222 = metadata !{i32 151, i32 0, metadata !196, null}
!223 = metadata !{i32 152, i32 0, metadata !196, null}
!224 = metadata !{i32 153, i32 0, metadata !196, null}
!225 = metadata !{i32 154, i32 0, metadata !196, null}
!226 = metadata !{i32 155, i32 0, metadata !196, null}
!227 = metadata !{i32 156, i32 0, metadata !196, null}
!228 = metadata !{i32 157, i32 0, metadata !196, null}
!229 = metadata !{i32 161, i32 0, metadata !4, null}
!230 = metadata !{i32 165, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !4, i32 165, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c]
!232 = metadata !{i32 167, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !231, i32 166, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c]
!234 = metadata !{i32 169, i32 0, metadata !233, null}
!235 = metadata !{i32 172, i32 0, metadata !233, null}
!236 = metadata !{i32 173, i32 0, metadata !233, null}
!237 = metadata !{i32 174, i32 0, metadata !233, null}
!238 = metadata !{i32 175, i32 0, metadata !233, null}
!239 = metadata !{i32 176, i32 0, metadata !233, null}
!240 = metadata !{i32 177, i32 0, metadata !233, null}
!241 = metadata !{i32 178, i32 0, metadata !233, null}
!242 = metadata !{i32 179, i32 0, metadata !233, null}
!243 = metadata !{i32 183, i32 0, metadata !4, null}
!244 = metadata !{i32 185, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !4, i32 184, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c]
!246 = metadata !{i32 186, i32 0, metadata !245, null}
!247 = metadata !{i32 187, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !245, i32 187, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c]
!249 = metadata !{i32 188, i32 0, metadata !248, null}
!250 = metadata !{i32 189, i32 0, metadata !245, null}
!251 = metadata !{i32 190, i32 0, metadata !245, null}
!252 = metadata !{i32 192, i32 0, metadata !4, null}
!253 = metadata !{i32 195, i32 0, metadata !4, null}
!254 = metadata !{i32 197, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !4, i32 197, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c]
!256 = metadata !{i32 199, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !255, i32 198, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/readmin.c]
!258 = metadata !{i32 201, i32 0, metadata !257, null}
!259 = metadata !{i32 206, i32 0, metadata !4, null}
!260 = metadata !{i32 207, i32 0, metadata !4, null}
