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
@.str3 = private unnamed_addr constant [12 x i8] c"%ld %ld %ld\00", align 1
@str = private unnamed_addr constant [30 x i8] c"read_min(): not enough memory\00"

; Function Attrs: nounwind optsize uwtable
define i64 @read_min(%struct.network* %net) #0 {
entry:
  %instring = alloca [201 x i8], align 16
  %t = alloca i64, align 8
  %h = alloca i64, align 8
  %c = alloca i64, align 8
  %0 = getelementptr inbounds [201 x i8]* %instring, i64 0, i64 0
  call void @llvm.lifetime.start(i64 201, i8* %0) #1
  %arraydecay = getelementptr inbounds %struct.network* %net, i64 0, i32 0, i64 0
  %call = call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #4
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i8* @fgets(i8* %0, i32 200, %struct._IO_FILE* %call) #4
  %call4 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i64* %t, i64* %h) #4
  %cmp5 = icmp eq i32 %call4, 2
  br i1 %cmp5, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %1 = load i64* %t, align 8, !tbaa !0
  %n_trips = getelementptr inbounds %struct.network* %net, i64 0, i32 3
  store i64 %1, i64* %n_trips, align 8, !tbaa !0
  %2 = load i64* %h, align 8, !tbaa !0
  %m_org = getelementptr inbounds %struct.network* %net, i64 0, i32 6
  store i64 %2, i64* %m_org, align 8, !tbaa !0
  %add = shl nsw i64 %1, 1
  %add8382 = or i64 %add, 1
  %n = getelementptr inbounds %struct.network* %net, i64 0, i32 2
  store i64 %add8382, i64* %n, align 8, !tbaa !0
  %add10 = mul i64 %1, 3
  %add11 = add nsw i64 %add10, %2
  %m = getelementptr inbounds %struct.network* %net, i64 0, i32 5
  store i64 %add11, i64* %m, align 8, !tbaa !0
  %cmp13 = icmp slt i64 %1, 15001
  %max_m = getelementptr inbounds %struct.network* %net, i64 0, i32 4
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end7
  store i64 %add11, i64* %max_m, align 8, !tbaa !0
  %max_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 9
  store i64 3000000, i64* %max_new_m, align 8, !tbaa !0
  br label %if.end18

if.else:                                          ; preds = %if.end7
  store i64 27328512, i64* %max_m, align 8, !tbaa !0
  %max_new_m17 = getelementptr inbounds %struct.network* %net, i64 0, i32 9
  store i64 28900000, i64* %max_new_m17, align 8, !tbaa !0
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %3 = phi i64 [ 27328512, %if.else ], [ %add11, %if.then14 ]
  %sub = sub nsw i64 %3, %add11
  %max_residual_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 8
  store i64 %sub, i64* %max_residual_new_m, align 8, !tbaa !0
  %add22 = add i64 %add8382, 1
  %call23 = call noalias i8* @calloc(i64 %add22, i64 104) #4
  %4 = bitcast i8* %call23 to %struct.node*
  %nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 21
  store %struct.node* %4, %struct.node** %nodes, align 8, !tbaa !3
  %call25 = call noalias i8* @calloc(i64 %add8382, i64 64) #4
  %5 = bitcast i8* %call25 to %struct.arc*
  %dummy_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 25
  store %struct.arc* %5, %struct.arc** %dummy_arcs, align 8, !tbaa !3
  %call27 = call noalias i8* @calloc(i64 %3, i64 64) #4
  %6 = bitcast i8* %call27 to %struct.arc*
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23
  store %struct.arc* %6, %struct.arc** %arcs, align 8, !tbaa !3
  %tobool = icmp eq i8* %call23, null
  %tobool30 = icmp eq i8* %call27, null
  %or.cond = or i1 %tobool, %tobool30
  %tobool33 = icmp eq i8* %call25, null
  %or.cond407 = or i1 %or.cond, %tobool33
  br i1 %or.cond407, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end18
  %puts = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str, i64 0, i64 0))
  %call36 = call i64 @getfree(%struct.network* %net) #4
  br label %cleanup

if.end37:                                         ; preds = %if.end18
  %add.ptr40 = getelementptr inbounds %struct.node* %4, i64 %add22
  %stop_nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 22
  store %struct.node* %add.ptr40, %struct.node** %stop_nodes, align 8, !tbaa !3
  %add.ptr43 = getelementptr inbounds %struct.arc* %6, i64 %add11
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24
  store %struct.arc* %add.ptr43, %struct.arc** %stop_arcs, align 8, !tbaa !3
  %add.ptr46 = getelementptr inbounds %struct.arc* %5, i64 %add8382
  %stop_dummy = getelementptr inbounds %struct.network* %net, i64 0, i32 26
  store %struct.arc* %add.ptr46, %struct.arc** %stop_dummy, align 8, !tbaa !3
  %cmp50400 = icmp slt i64 %1, 1
  br i1 %cmp50400, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end37
  %bigM = getelementptr inbounds %struct.network* %net, i64 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end58, %for.body.lr.ph
  %arc.0402 = phi %struct.arc* [ %6, %for.body.lr.ph ], [ %incdec.ptr129, %if.end58 ]
  %i.0401 = phi i64 [ 1, %for.body.lr.ph ], [ %inc, %if.end58 ]
  %call52 = call i8* @fgets(i8* %0, i32 200, %struct._IO_FILE* %call) #4
  %call54 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i64* %t, i64* %h) #4
  %cmp55 = icmp eq i32 %call54, 2
  br i1 %cmp55, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i64* %t, align 8, !tbaa !0
  %8 = load i64* %h, align 8, !tbaa !0
  %cmp56 = icmp sgt i64 %7, %8
  br i1 %cmp56, label %cleanup, label %if.end58

if.end58:                                         ; preds = %lor.lhs.false
  %sub59 = sub nsw i64 0, %i.0401
  %conv = trunc i64 %sub59 to i32
  %arrayidx = getelementptr inbounds %struct.node* %4, i64 %i.0401
  %number = getelementptr inbounds %struct.node* %4, i64 %i.0401, i32 12
  store i32 %conv, i32* %number, align 4, !tbaa !4
  %flow = getelementptr inbounds %struct.node* %4, i64 %i.0401, i32 10
  store i64 -1, i64* %flow, align 8, !tbaa !0
  %conv61 = trunc i64 %i.0401 to i32
  %9 = load i64* %n_trips, align 8, !tbaa !0
  %add63 = add nsw i64 %9, %i.0401
  %number65 = getelementptr inbounds %struct.node* %4, i64 %add63, i32 12
  store i32 %conv61, i32* %number65, align 4, !tbaa !4
  %flow69 = getelementptr inbounds %struct.node* %4, i64 %add63, i32 10
  store i64 1, i64* %flow69, align 8, !tbaa !0
  %conv70 = trunc i64 %7 to i32
  %time = getelementptr inbounds %struct.node* %4, i64 %i.0401, i32 13
  store i32 %conv70, i32* %time, align 4, !tbaa !4
  %conv72 = trunc i64 %8 to i32
  %time76 = getelementptr inbounds %struct.node* %4, i64 %add63, i32 13
  store i32 %conv72, i32* %time76, align 4, !tbaa !4
  %10 = load i64* %n, align 8, !tbaa !0
  %arrayidx78 = getelementptr inbounds %struct.node* %4, i64 %10
  %tail = getelementptr inbounds %struct.arc* %arc.0402, i64 0, i32 1
  store %struct.node* %arrayidx78, %struct.node** %tail, align 8, !tbaa !3
  %head = getelementptr inbounds %struct.arc* %arc.0402, i64 0, i32 2
  store %struct.node* %arrayidx, %struct.node** %head, align 8, !tbaa !3
  %11 = load i64* %bigM, align 8, !tbaa !0
  %add80 = add nsw i64 %11, 15
  %cost = getelementptr inbounds %struct.arc* %arc.0402, i64 0, i32 0
  store i64 %add80, i64* %cost, align 8, !tbaa !0
  %org_cost = getelementptr inbounds %struct.arc* %arc.0402, i64 0, i32 7
  store i64 %add80, i64* %org_cost, align 8, !tbaa !0
  %firstout = getelementptr inbounds %struct.node* %4, i64 %10, i32 7
  %12 = load %struct.arc** %firstout, align 8, !tbaa !3
  %nextout = getelementptr inbounds %struct.arc* %arc.0402, i64 0, i32 4
  store %struct.arc* %12, %struct.arc** %nextout, align 8, !tbaa !3
  store %struct.arc* %arc.0402, %struct.arc** %firstout, align 8, !tbaa !3
  %13 = load %struct.node** %head, align 8, !tbaa !3
  %firstin = getelementptr inbounds %struct.node* %13, i64 0, i32 8
  %14 = load %struct.arc** %firstin, align 8, !tbaa !3
  %nextin = getelementptr inbounds %struct.arc* %arc.0402, i64 0, i32 5
  store %struct.arc* %14, %struct.arc** %nextin, align 8, !tbaa !3
  store %struct.arc* %arc.0402, %struct.arc** %firstin, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds %struct.arc* %arc.0402, i64 1
  %15 = load i64* %n_trips, align 8, !tbaa !0
  %add88 = add nsw i64 %15, %i.0401
  %arrayidx89 = getelementptr inbounds %struct.node* %4, i64 %add88
  %tail90 = getelementptr inbounds %struct.arc* %arc.0402, i64 1, i32 1
  store %struct.node* %arrayidx89, %struct.node** %tail90, align 8, !tbaa !3
  %16 = load i64* %n, align 8, !tbaa !0
  %arrayidx92 = getelementptr inbounds %struct.node* %4, i64 %16
  %head93 = getelementptr inbounds %struct.arc* %arc.0402, i64 1, i32 2
  store %struct.node* %arrayidx92, %struct.node** %head93, align 8, !tbaa !3
  %cost94 = getelementptr inbounds %struct.arc* %incdec.ptr, i64 0, i32 0
  store i64 15, i64* %cost94, align 8, !tbaa !0
  %org_cost95 = getelementptr inbounds %struct.arc* %arc.0402, i64 1, i32 7
  store i64 15, i64* %org_cost95, align 8, !tbaa !0
  %firstout97 = getelementptr inbounds %struct.node* %4, i64 %add88, i32 7
  %17 = load %struct.arc** %firstout97, align 8, !tbaa !3
  %nextout98 = getelementptr inbounds %struct.arc* %arc.0402, i64 1, i32 4
  store %struct.arc* %17, %struct.arc** %nextout98, align 8, !tbaa !3
  store %struct.arc* %incdec.ptr, %struct.arc** %firstout97, align 8, !tbaa !3
  %18 = load %struct.node** %head93, align 8, !tbaa !3
  %firstin102 = getelementptr inbounds %struct.node* %18, i64 0, i32 8
  %19 = load %struct.arc** %firstin102, align 8, !tbaa !3
  %nextin103 = getelementptr inbounds %struct.arc* %arc.0402, i64 1, i32 5
  store %struct.arc* %19, %struct.arc** %nextin103, align 8, !tbaa !3
  store %struct.arc* %incdec.ptr, %struct.arc** %firstin102, align 8, !tbaa !3
  %incdec.ptr106 = getelementptr inbounds %struct.arc* %arc.0402, i64 2
  %tail108 = getelementptr inbounds %struct.arc* %arc.0402, i64 2, i32 1
  store %struct.node* %arrayidx, %struct.node** %tail108, align 8, !tbaa !3
  %20 = load i64* %n_trips, align 8, !tbaa !0
  %add110 = add nsw i64 %20, %i.0401
  %arrayidx111 = getelementptr inbounds %struct.node* %4, i64 %add110
  %head112 = getelementptr inbounds %struct.arc* %arc.0402, i64 2, i32 2
  store %struct.node* %arrayidx111, %struct.node** %head112, align 8, !tbaa !3
  %21 = load i64* %bigM, align 8, !tbaa !0
  %cmp114 = icmp sgt i64 %21, 10000000
  %phitmp384 = shl i64 %21, 1
  %phitmp384. = select i1 %cmp114, i64 %phitmp384, i64 20000000
  %cost117 = getelementptr inbounds %struct.arc* %incdec.ptr106, i64 0, i32 0
  store i64 %phitmp384., i64* %cost117, align 8, !tbaa !0
  %org_cost118 = getelementptr inbounds %struct.arc* %arc.0402, i64 2, i32 7
  store i64 %phitmp384., i64* %org_cost118, align 8, !tbaa !0
  %firstout120 = getelementptr inbounds %struct.node* %4, i64 %i.0401, i32 7
  %22 = load %struct.arc** %firstout120, align 8, !tbaa !3
  %nextout121 = getelementptr inbounds %struct.arc* %arc.0402, i64 2, i32 4
  store %struct.arc* %22, %struct.arc** %nextout121, align 8, !tbaa !3
  store %struct.arc* %incdec.ptr106, %struct.arc** %firstout120, align 8, !tbaa !3
  %23 = load %struct.node** %head112, align 8, !tbaa !3
  %firstin125 = getelementptr inbounds %struct.node* %23, i64 0, i32 8
  %24 = load %struct.arc** %firstin125, align 8, !tbaa !3
  %nextin126 = getelementptr inbounds %struct.arc* %arc.0402, i64 2, i32 5
  store %struct.arc* %24, %struct.arc** %nextin126, align 8, !tbaa !3
  store %struct.arc* %incdec.ptr106, %struct.arc** %firstin125, align 8, !tbaa !3
  %incdec.ptr129 = getelementptr inbounds %struct.arc* %arc.0402, i64 3
  %inc = add nsw i64 %i.0401, 1
  %25 = load i64* %n_trips, align 8, !tbaa !0
  %cmp50 = icmp slt i64 %i.0401, %25
  br i1 %cmp50, label %for.body, label %for.end

for.end:                                          ; preds = %if.end58, %if.end37
  %.lcssa398 = phi i64 [ %1, %if.end37 ], [ %25, %if.end58 ]
  %arc.0.lcssa = phi %struct.arc* [ %6, %if.end37 ], [ %incdec.ptr129, %if.end58 ]
  %i.0.lcssa = phi i64 [ 1, %if.end37 ], [ %inc, %if.end58 ]
  %add131 = add nsw i64 %.lcssa398, 1
  %cmp132 = icmp eq i64 %i.0.lcssa, %add131
  br i1 %cmp132, label %for.cond136.preheader, label %cleanup

for.cond136.preheader:                            ; preds = %for.end
  %26 = load i64* %m_org, align 8, !tbaa !0
  %cmp138391 = icmp sgt i64 %26, 0
  br i1 %cmp138391, label %for.body140, label %for.end170

for.body140:                                      ; preds = %for.cond136.preheader, %if.end148
  %arc.1393 = phi %struct.arc* [ %incdec.ptr169, %if.end148 ], [ %arc.0.lcssa, %for.cond136.preheader ]
  %i.1392 = phi i64 [ %inc168, %if.end148 ], [ 0, %for.cond136.preheader ]
  %call142 = call i8* @fgets(i8* %0, i32 200, %struct._IO_FILE* %call) #4
  %call144 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i64* %t, i64* %h, i64* %c) #4
  %cmp145 = icmp eq i32 %call144, 3
  br i1 %cmp145, label %if.end148, label %cleanup

if.end148:                                        ; preds = %for.body140
  %27 = load i64* %t, align 8, !tbaa !0
  %28 = load i64* %n_trips, align 8, !tbaa !0
  %add150 = add nsw i64 %28, %27
  %arrayidx151 = getelementptr inbounds %struct.node* %4, i64 %add150
  %tail152 = getelementptr inbounds %struct.arc* %arc.1393, i64 0, i32 1
  store %struct.node* %arrayidx151, %struct.node** %tail152, align 8, !tbaa !3
  %29 = load i64* %h, align 8, !tbaa !0
  %arrayidx153 = getelementptr inbounds %struct.node* %4, i64 %29
  %head154 = getelementptr inbounds %struct.arc* %arc.1393, i64 0, i32 2
  store %struct.node* %arrayidx153, %struct.node** %head154, align 8, !tbaa !3
  %30 = load i64* %c, align 8, !tbaa !0
  %org_cost155 = getelementptr inbounds %struct.arc* %arc.1393, i64 0, i32 7
  store i64 %30, i64* %org_cost155, align 8, !tbaa !0
  %31 = load i64* %c, align 8, !tbaa !0
  %cost156 = getelementptr inbounds %struct.arc* %arc.1393, i64 0, i32 0
  store i64 %31, i64* %cost156, align 8, !tbaa !0
  %firstout158 = getelementptr inbounds %struct.node* %4, i64 %add150, i32 7
  %32 = load %struct.arc** %firstout158, align 8, !tbaa !3
  %nextout159 = getelementptr inbounds %struct.arc* %arc.1393, i64 0, i32 4
  store %struct.arc* %32, %struct.arc** %nextout159, align 8, !tbaa !3
  store %struct.arc* %arc.1393, %struct.arc** %firstout158, align 8, !tbaa !3
  %33 = load %struct.node** %head154, align 8, !tbaa !3
  %firstin163 = getelementptr inbounds %struct.node* %33, i64 0, i32 8
  %34 = load %struct.arc** %firstin163, align 8, !tbaa !3
  %nextin164 = getelementptr inbounds %struct.arc* %arc.1393, i64 0, i32 5
  store %struct.arc* %34, %struct.arc** %nextin164, align 8, !tbaa !3
  store %struct.arc* %arc.1393, %struct.arc** %firstin163, align 8, !tbaa !3
  %inc168 = add nsw i64 %i.1392, 1
  %incdec.ptr169 = getelementptr inbounds %struct.arc* %arc.1393, i64 1
  %35 = load i64* %m_org, align 8, !tbaa !0
  %cmp138 = icmp slt i64 %inc168, %35
  br i1 %cmp138, label %for.body140, label %for.end170

for.end170:                                       ; preds = %if.end148, %for.cond136.preheader
  %36 = phi %struct.arc* [ %arc.0.lcssa, %for.cond136.preheader ], [ %incdec.ptr169, %if.end148 ]
  %37 = load %struct.arc** %stop_arcs, align 8, !tbaa !3
  %cmp172 = icmp eq %struct.arc* %37, %36
  br i1 %cmp172, label %if.end190, label %if.then174

if.then174:                                       ; preds = %for.end170
  store %struct.arc* %36, %struct.arc** %stop_arcs, align 8, !tbaa !3
  %38 = load %struct.arc** %arcs, align 8, !tbaa !3
  store i64 0, i64* %m, align 8, !tbaa !0
  %cmp180387 = icmp ult %struct.arc* %38, %36
  br i1 %cmp180387, label %for.body182, label %for.end187

for.body182:                                      ; preds = %if.then174, %for.body182
  %39 = phi i64 [ %inc184, %for.body182 ], [ 0, %if.then174 ]
  %arc.2388 = phi %struct.arc* [ %incdec.ptr186, %for.body182 ], [ %38, %if.then174 ]
  %inc184 = add nsw i64 %39, 1
  %incdec.ptr186 = getelementptr inbounds %struct.arc* %arc.2388, i64 1
  %cmp180 = icmp ult %struct.arc* %incdec.ptr186, %36
  br i1 %cmp180, label %for.body182, label %for.cond178.for.end187_crit_edge

for.cond178.for.end187_crit_edge:                 ; preds = %for.body182
  store i64 %inc184, i64* %m, align 8, !tbaa !0
  br label %for.end187

for.end187:                                       ; preds = %for.cond178.for.end187_crit_edge, %if.then174
  %.lcssa = phi i64 [ %inc184, %for.cond178.for.end187_crit_edge ], [ 0, %if.then174 ]
  store i64 %.lcssa, i64* %m_org, align 8, !tbaa !0
  br label %if.end190

if.end190:                                        ; preds = %for.end170, %for.end187
  %call191 = call i32 @fclose(%struct._IO_FILE* %call) #4
  %arrayidx192 = getelementptr inbounds %struct.network* %net, i64 0, i32 1, i64 0
  store i8 0, i8* %arrayidx192, align 1, !tbaa !1
  %40 = load i64* %n_trips, align 8, !tbaa !0
  %cmp195385 = icmp slt i64 %40, 1
  br i1 %cmp195385, label %cleanup, label %for.body197.lr.ph

for.body197.lr.ph:                                ; preds = %if.end190
  %bigM198 = getelementptr inbounds %struct.network* %net, i64 0, i32 18
  %41 = load %struct.arc** %arcs, align 8, !tbaa !3
  br label %for.body197

for.body197:                                      ; preds = %cond.end218, %for.body197.lr.ph
  %i.2386 = phi i64 [ 1, %for.body197.lr.ph ], [ %inc227, %cond.end218 ]
  %42 = load i64* %bigM198, align 8, !tbaa !0
  %cmp199 = icmp sgt i64 %42, 10000000
  br i1 %cmp199, label %cond.true201, label %cond.end204

cond.true201:                                     ; preds = %for.body197
  %phitmp = mul i64 %42, -2
  br label %cond.end204

cond.end204:                                      ; preds = %for.body197, %cond.true201
  %cond205 = phi i64 [ %phitmp, %cond.true201 ], [ -20000000, %for.body197 ]
  %mul207 = mul nsw i64 %i.2386, 3
  %sub208 = add nsw i64 %mul207, -1
  %cost211 = getelementptr inbounds %struct.arc* %41, i64 %sub208, i32 0
  store i64 %cond205, i64* %cost211, align 8, !tbaa !0
  %43 = load i64* %bigM198, align 8, !tbaa !0
  %cmp213 = icmp sgt i64 %43, 10000000
  br i1 %cmp213, label %cond.true215, label %cond.end218

cond.true215:                                     ; preds = %cond.end204
  %phitmp383 = mul i64 %43, -2
  br label %cond.end218

cond.end218:                                      ; preds = %cond.end204, %cond.true215
  %cond219 = phi i64 [ %phitmp383, %cond.true215 ], [ -20000000, %cond.end204 ]
  %org_cost225 = getelementptr inbounds %struct.arc* %41, i64 %sub208, i32 7
  store i64 %cond219, i64* %org_cost225, align 8, !tbaa !0
  %inc227 = add nsw i64 %i.2386, 1
  %44 = load i64* %n_trips, align 8, !tbaa !0
  %cmp195 = icmp slt i64 %i.2386, %44
  br i1 %cmp195, label %for.body197, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %for.body, %for.body140, %if.end190, %cond.end218, %for.end, %if.end, %entry, %if.then34
  %retval.0 = phi i64 [ -1, %if.then34 ], [ -1, %entry ], [ -1, %if.end ], [ -1, %for.end ], [ 0, %cond.end218 ], [ 0, %if.end190 ], [ -1, %for.body140 ], [ -1, %for.body ], [ -1, %lor.lhs.false ]
  call void @llvm.lifetime.end(i64 201, i8* %0) #1
  ret i64 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare i64 @getfree(%struct.network*) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"long", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
