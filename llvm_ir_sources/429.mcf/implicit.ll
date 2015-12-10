; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"net->max_new_m >= 3\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c\00", align 1
@__PRETTY_FUNCTION__.resize_prob = private unnamed_addr constant [30 x i8] c"long resize_prob(network_t *)\00", align 1
@.str2 = private unnamed_addr constant [31 x i8] c"network %s: not enough memory\0A\00", align 1
@stdout = external global %struct._IO_FILE*

; Function Attrs: nounwind optsize uwtable
define i64 @resize_prob(%struct.network* %net) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.network* %net}, i64 0, metadata !83), !dbg !152
  %max_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 9, !dbg !153
  %0 = load i64* %max_new_m, align 8, !dbg !153, !tbaa !154
  %cmp = icmp sgt i64 %0, 2, !dbg !153
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !153

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 39, i8* getelementptr inbounds ([30 x i8]* @__PRETTY_FUNCTION__.resize_prob, i64 0, i64 0)) #6, !dbg !153
  unreachable, !dbg !153

cond.end:                                         ; preds = %entry
  %max_m = getelementptr inbounds %struct.network* %net, i64 0, i32 4, !dbg !157
  %1 = load i64* %max_m, align 8, !dbg !157, !tbaa !154
  %add = add nsw i64 %1, %0, !dbg !157
  store i64 %add, i64* %max_m, align 8, !dbg !157, !tbaa !154
  %max_residual_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 8, !dbg !158
  %2 = load i64* %max_residual_new_m, align 8, !dbg !158, !tbaa !154
  %add3 = add nsw i64 %2, %0, !dbg !158
  store i64 %add3, i64* %max_residual_new_m, align 8, !dbg !158, !tbaa !154
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23, !dbg !159
  %3 = load %struct.arc** %arcs, align 8, !dbg !159, !tbaa !160
  %4 = bitcast %struct.arc* %3 to i8*, !dbg !159
  %mul = shl i64 %add, 6, !dbg !159
  %call = tail call i8* @realloc(i8* %4, i64 %mul) #7, !dbg !159
  %5 = bitcast i8* %call to %struct.arc*, !dbg !159
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %5}, i64 0, metadata !84), !dbg !159
  %tobool = icmp eq i8* %call, null, !dbg !161
  br i1 %tobool, label %if.then, label %if.end, !dbg !161

if.then:                                          ; preds = %cond.end
  %arraydecay = getelementptr inbounds %struct.network* %net, i64 0, i32 0, i64 0, !dbg !162
  %call5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str2, i64 0, i64 0), i8* %arraydecay) #7, !dbg !162
  %6 = load %struct._IO_FILE** @stdout, align 8, !dbg !164, !tbaa !160
  %call6 = tail call i32 @fflush(%struct._IO_FILE* %6) #7, !dbg !164
  br label %return, !dbg !165

if.end:                                           ; preds = %cond.end
  %7 = ptrtoint i8* %call to i64, !dbg !166
  %8 = load %struct.arc** %arcs, align 8, !dbg !166, !tbaa !160
  %9 = ptrtoint %struct.arc* %8 to i64, !dbg !166
  %sub = sub i64 %7, %9, !dbg !166
  tail call void @llvm.dbg.value(metadata !{i64 %sub}, i64 0, metadata !92), !dbg !166
  store %struct.arc* %5, %struct.arc** %arcs, align 8, !dbg !167, !tbaa !160
  %m = getelementptr inbounds %struct.network* %net, i64 0, i32 5, !dbg !168
  %10 = load i64* %m, align 8, !dbg !168, !tbaa !154
  %add.ptr = getelementptr inbounds %struct.arc* %5, i64 %10, !dbg !168
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !168
  store %struct.arc* %add.ptr, %struct.arc** %stop_arcs, align 8, !dbg !168, !tbaa !160
  %nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 21, !dbg !169
  %11 = load %struct.node** %nodes, align 8, !dbg !169, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{%struct.node* %11}, i64 0, metadata !87), !dbg !169
  tail call void @llvm.dbg.value(metadata !{%struct.node* %11}, i64 0, metadata !91), !dbg !169
  %stop_nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 22, !dbg !170
  %12 = load %struct.node** %stop_nodes, align 8, !dbg !170, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{%struct.node* %12}, i64 0, metadata !90), !dbg !170
  %node.037 = getelementptr inbounds %struct.node* %11, i64 1, !dbg !170
  %cmp938 = icmp ult %struct.node* %node.037, %12, !dbg !170
  br i1 %cmp938, label %for.body, label %return, !dbg !170

for.body:                                         ; preds = %if.end, %for.cond.backedge
  %node.040 = phi %struct.node* [ %node.0, %for.cond.backedge ], [ %node.037, %if.end ]
  %.pn39 = phi %struct.node* [ %node.040, %for.cond.backedge ], [ %11, %if.end ]
  %pred = getelementptr inbounds %struct.node* %.pn39, i64 1, i32 3, !dbg !172
  %13 = load %struct.node** %pred, align 8, !dbg !172, !tbaa !160
  %cmp10 = icmp eq %struct.node* %13, %11, !dbg !172
  br i1 %cmp10, label %for.cond.backedge, label %if.then11, !dbg !172

for.cond.backedge:                                ; preds = %for.body, %if.then11
  %node.0 = getelementptr inbounds %struct.node* %node.040, i64 1, !dbg !170
  %cmp9 = icmp ult %struct.node* %node.0, %12, !dbg !170
  br i1 %cmp9, label %for.body, label %return, !dbg !170

if.then11:                                        ; preds = %for.body
  %basic_arc = getelementptr inbounds %struct.node* %.pn39, i64 1, i32 6, !dbg !173
  %14 = load %struct.arc** %basic_arc, align 8, !dbg !173, !tbaa !160
  %15 = ptrtoint %struct.arc* %14 to i64, !dbg !173
  %add12 = add i64 %sub, %15, !dbg !173
  %16 = inttoptr i64 %add12 to %struct.arc*, !dbg !173
  store %struct.arc* %16, %struct.arc** %basic_arc, align 8, !dbg !173, !tbaa !160
  br label %for.cond.backedge, !dbg !173

return:                                           ; preds = %if.end, %for.cond.backedge, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ 0, %for.cond.backedge ], [ 0, %if.end ]
  ret i64 %retval.0, !dbg !174
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @insert_new_arc(%struct.arc* nocapture %new, i64 %newpos, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %new}, i64 0, metadata !99), !dbg !175
  tail call void @llvm.dbg.value(metadata !{i64 %newpos}, i64 0, metadata !100), !dbg !175
  tail call void @llvm.dbg.value(metadata !{%struct.node* %tail}, i64 0, metadata !101), !dbg !175
  tail call void @llvm.dbg.value(metadata !{%struct.node* %head}, i64 0, metadata !102), !dbg !175
  tail call void @llvm.dbg.value(metadata !{i64 %cost}, i64 0, metadata !103), !dbg !176
  tail call void @llvm.dbg.value(metadata !{i64 %red_cost}, i64 0, metadata !104), !dbg !176
  %tail1 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 1, !dbg !177
  store %struct.node* %tail, %struct.node** %tail1, align 8, !dbg !177, !tbaa !160
  %head3 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 2, !dbg !178
  store %struct.node* %head, %struct.node** %head3, align 8, !dbg !178, !tbaa !160
  %org_cost = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 7, !dbg !179
  store i64 %cost, i64* %org_cost, align 8, !dbg !179, !tbaa !154
  %cost6 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 0, !dbg !180
  store i64 %cost, i64* %cost6, align 8, !dbg !180, !tbaa !154
  %flow = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 6, !dbg !181
  store i64 %red_cost, i64* %flow, align 8, !dbg !181, !tbaa !154
  tail call void @llvm.dbg.value(metadata !{i64 %add}, i64 0, metadata !105), !dbg !182
  %tobool111 = icmp eq i64 %newpos, 0, !dbg !183
  br i1 %tobool111, label %while.end, label %land.rhs.lr.ph, !dbg !183

land.rhs.lr.ph:                                   ; preds = %entry
  %add = add nsw i64 %newpos, 1, !dbg !182
  br label %land.rhs, !dbg !183

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %sub113 = phi i64 [ %newpos, %land.rhs.lr.ph ], [ %sub8, %while.body ]
  %pos.0112 = phi i64 [ %add, %land.rhs.lr.ph ], [ %div, %while.body ]
  %div = sdiv i64 %pos.0112, 2, !dbg !183
  %sub8 = add nsw i64 %div, -1, !dbg !183
  %flow10 = getelementptr inbounds %struct.arc* %new, i64 %sub8, i32 6, !dbg !183
  %0 = load i64* %flow10, align 8, !dbg !183, !tbaa !154
  %cmp = icmp slt i64 %0, %red_cost, !dbg !183
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %tail14 = getelementptr inbounds %struct.arc* %new, i64 %sub8, i32 1, !dbg !184
  %1 = load %struct.node** %tail14, align 8, !dbg !184, !tbaa !160
  %tail17 = getelementptr inbounds %struct.arc* %new, i64 %sub113, i32 1, !dbg !184
  store %struct.node* %1, %struct.node** %tail17, align 8, !dbg !184, !tbaa !160
  %head21 = getelementptr inbounds %struct.arc* %new, i64 %sub8, i32 2, !dbg !186
  %2 = load %struct.node** %head21, align 8, !dbg !186, !tbaa !160
  %head24 = getelementptr inbounds %struct.arc* %new, i64 %sub113, i32 2, !dbg !186
  store %struct.node* %2, %struct.node** %head24, align 8, !dbg !186, !tbaa !160
  %cost28 = getelementptr inbounds %struct.arc* %new, i64 %sub8, i32 0, !dbg !187
  %3 = load i64* %cost28, align 8, !dbg !187, !tbaa !154
  %cost31 = getelementptr inbounds %struct.arc* %new, i64 %sub113, i32 0, !dbg !187
  store i64 %3, i64* %cost31, align 8, !dbg !187, !tbaa !154
  %4 = load i64* %cost28, align 8, !dbg !188, !tbaa !154
  %org_cost38 = getelementptr inbounds %struct.arc* %new, i64 %sub113, i32 7, !dbg !188
  store i64 %4, i64* %org_cost38, align 8, !dbg !188, !tbaa !154
  %flow45 = getelementptr inbounds %struct.arc* %new, i64 %sub113, i32 6, !dbg !189
  store i64 %0, i64* %flow45, align 8, !dbg !189, !tbaa !154
  tail call void @llvm.dbg.value(metadata !{i64 %div}, i64 0, metadata !105), !dbg !190
  store %struct.node* %tail, %struct.node** %tail14, align 8, !dbg !191, !tbaa !160
  store %struct.node* %head, %struct.node** %head21, align 8, !dbg !192, !tbaa !160
  store i64 %cost, i64* %cost28, align 8, !dbg !193, !tbaa !154
  %org_cost58 = getelementptr inbounds %struct.arc* %new, i64 %sub8, i32 7, !dbg !194
  store i64 %cost, i64* %org_cost58, align 8, !dbg !194, !tbaa !154
  store i64 %red_cost, i64* %flow10, align 8, !dbg !195, !tbaa !154
  %tobool = icmp eq i64 %sub8, 0, !dbg !183
  br i1 %tobool, label %while.end, label %land.rhs, !dbg !183

while.end:                                        ; preds = %while.body, %land.rhs, %entry
  ret void, !dbg !196
}

; Function Attrs: nounwind optsize uwtable
define void @replace_weaker_arc(%struct.network* nocapture %net, %struct.arc* nocapture %new, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.network* %net}, i64 0, metadata !110), !dbg !197
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %new}, i64 0, metadata !111), !dbg !197
  tail call void @llvm.dbg.value(metadata !{%struct.node* %tail}, i64 0, metadata !112), !dbg !197
  tail call void @llvm.dbg.value(metadata !{%struct.node* %head}, i64 0, metadata !113), !dbg !197
  tail call void @llvm.dbg.value(metadata !{i64 %cost}, i64 0, metadata !114), !dbg !198
  tail call void @llvm.dbg.value(metadata !{i64 %red_cost}, i64 0, metadata !115), !dbg !198
  %tail1 = getelementptr inbounds %struct.arc* %new, i64 0, i32 1, !dbg !199
  store %struct.node* %tail, %struct.node** %tail1, align 8, !dbg !199, !tbaa !160
  %head3 = getelementptr inbounds %struct.arc* %new, i64 0, i32 2, !dbg !200
  store %struct.node* %head, %struct.node** %head3, align 8, !dbg !200, !tbaa !160
  %org_cost = getelementptr inbounds %struct.arc* %new, i64 0, i32 7, !dbg !201
  store i64 %cost, i64* %org_cost, align 8, !dbg !201, !tbaa !154
  %cost6 = getelementptr inbounds %struct.arc* %new, i64 0, i32 0, !dbg !202
  store i64 %cost, i64* %cost6, align 8, !dbg !202, !tbaa !154
  %flow = getelementptr inbounds %struct.arc* %new, i64 0, i32 6, !dbg !203
  store i64 %red_cost, i64* %flow, align 8, !dbg !203, !tbaa !154
  tail call void @llvm.dbg.value(metadata !204, i64 0, metadata !116), !dbg !205
  %flow9 = getelementptr inbounds %struct.arc* %new, i64 1, i32 6, !dbg !206
  %0 = load i64* %flow9, align 8, !dbg !206, !tbaa !154
  %flow11 = getelementptr inbounds %struct.arc* %new, i64 2, i32 6, !dbg !206
  %1 = load i64* %flow11, align 8, !dbg !206, !tbaa !154
  %cmp12 = icmp sgt i64 %0, %1, !dbg !206
  %conv = select i1 %cmp12, i64 2, i64 3, !dbg !206
  tail call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !117), !dbg !206
  %max_residual_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 8, !dbg !207
  %2 = load i64* %max_residual_new_m, align 8, !dbg !207, !tbaa !154
  %cmp13130 = icmp sgt i64 %conv, %2, !dbg !207
  br i1 %cmp13130, label %while.end, label %land.rhs, !dbg !207

land.rhs:                                         ; preds = %entry, %while.cond.backedge
  %cmp.0132 = phi i64 [ %cmp.0.be, %while.cond.backedge ], [ %conv, %entry ]
  %pos.0131 = phi i64 [ %cmp.0132, %while.cond.backedge ], [ 1, %entry ]
  %sub = add nsw i64 %cmp.0132, -1, !dbg !207
  %flow16 = getelementptr inbounds %struct.arc* %new, i64 %sub, i32 6, !dbg !207
  %3 = load i64* %flow16, align 8, !dbg !207, !tbaa !154
  %cmp17 = icmp sgt i64 %3, %red_cost, !dbg !207
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %tail21 = getelementptr inbounds %struct.arc* %new, i64 %sub, i32 1, !dbg !208
  %4 = load %struct.node** %tail21, align 8, !dbg !208, !tbaa !160
  %sub22 = add nsw i64 %pos.0131, -1, !dbg !208
  %tail24 = getelementptr inbounds %struct.arc* %new, i64 %sub22, i32 1, !dbg !208
  store %struct.node* %4, %struct.node** %tail24, align 8, !dbg !208, !tbaa !160
  %head27 = getelementptr inbounds %struct.arc* %new, i64 %sub, i32 2, !dbg !210
  %5 = load %struct.node** %head27, align 8, !dbg !210, !tbaa !160
  %head30 = getelementptr inbounds %struct.arc* %new, i64 %sub22, i32 2, !dbg !210
  store %struct.node* %5, %struct.node** %head30, align 8, !dbg !210, !tbaa !160
  %cost33 = getelementptr inbounds %struct.arc* %new, i64 %sub, i32 0, !dbg !211
  %6 = load i64* %cost33, align 8, !dbg !211, !tbaa !154
  %cost36 = getelementptr inbounds %struct.arc* %new, i64 %sub22, i32 0, !dbg !211
  store i64 %6, i64* %cost36, align 8, !dbg !211, !tbaa !154
  %7 = load i64* %cost33, align 8, !dbg !212, !tbaa !154
  %org_cost42 = getelementptr inbounds %struct.arc* %new, i64 %sub22, i32 7, !dbg !212
  store i64 %7, i64* %org_cost42, align 8, !dbg !212, !tbaa !154
  %flow48 = getelementptr inbounds %struct.arc* %new, i64 %sub22, i32 6, !dbg !213
  store i64 %3, i64* %flow48, align 8, !dbg !213, !tbaa !154
  store %struct.node* %tail, %struct.node** %tail21, align 8, !dbg !214, !tbaa !160
  store %struct.node* %head, %struct.node** %head27, align 8, !dbg !215, !tbaa !160
  store i64 %cost, i64* %cost33, align 8, !dbg !216, !tbaa !154
  %org_cost60 = getelementptr inbounds %struct.arc* %new, i64 %sub, i32 7, !dbg !217
  store i64 %cost, i64* %org_cost60, align 8, !dbg !217, !tbaa !154
  store i64 %red_cost, i64* %flow16, align 8, !dbg !218, !tbaa !154
  tail call void @llvm.dbg.value(metadata !{i64 %cmp.0132}, i64 0, metadata !116), !dbg !219
  %mul = shl nsw i64 %cmp.0132, 1, !dbg !220
  tail call void @llvm.dbg.value(metadata !{i64 %mul}, i64 0, metadata !117), !dbg !220
  %add129 = or i64 %mul, 1, !dbg !221
  %8 = load i64* %max_residual_new_m, align 8, !dbg !221, !tbaa !154
  %cmp65 = icmp sgt i64 %add129, %8, !dbg !221
  br i1 %cmp65, label %while.cond.backedge, label %if.then, !dbg !221

while.cond.backedge:                              ; preds = %while.body, %if.then
  %cmp.0.be = phi i64 [ %mul, %while.body ], [ %add129.mul, %if.then ]
  %cmp13 = icmp sgt i64 %cmp.0.be, %8, !dbg !207
  br i1 %cmp13, label %while.end, label %land.rhs, !dbg !207

if.then:                                          ; preds = %while.body
  %sub67 = add nsw i64 %mul, -1, !dbg !222
  %flow69 = getelementptr inbounds %struct.arc* %new, i64 %sub67, i32 6, !dbg !222
  %9 = load i64* %flow69, align 8, !dbg !222, !tbaa !154
  %flow71 = getelementptr inbounds %struct.arc* %new, i64 %mul, i32 6, !dbg !222
  %10 = load i64* %flow71, align 8, !dbg !222, !tbaa !154
  %cmp72 = icmp slt i64 %9, %10, !dbg !222
  tail call void @llvm.dbg.value(metadata !{i64 %add129}, i64 0, metadata !117), !dbg !223
  %add129.mul = select i1 %cmp72, i64 %add129, i64 %mul, !dbg !222
  br label %while.cond.backedge, !dbg !222

while.end:                                        ; preds = %while.cond.backedge, %land.rhs, %entry
  ret void, !dbg !224
}

; Function Attrs: nounwind optsize uwtable
define i64 @price_out_impl(%struct.network* %net) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.network* %net}, i64 0, metadata !120), !dbg !225
  tail call void @llvm.dbg.value(metadata !226, i64 0, metadata !123), !dbg !227
  tail call void @llvm.dbg.value(metadata !226, i64 0, metadata !124), !dbg !228
  tail call void @llvm.dbg.value(metadata !229, i64 0, metadata !126), !dbg !230
  %bigM1 = getelementptr inbounds %struct.network* %net, i64 0, i32 18, !dbg !231
  %0 = load i64* %bigM1, align 8, !dbg !231, !tbaa !154
  tail call void @llvm.dbg.value(metadata !{i64 %0}, i64 0, metadata !127), !dbg !231
  tail call void @llvm.dbg.value(metadata !232, i64 0, metadata !129), !dbg !233
  %sub = add nsw i64 %0, -15, !dbg !234
  tail call void @llvm.dbg.value(metadata !{i64 %sub}, i64 0, metadata !131), !dbg !234
  %n_trips = getelementptr inbounds %struct.network* %net, i64 0, i32 3, !dbg !235
  %1 = load i64* %n_trips, align 8, !dbg !235, !tbaa !154
  %cmp = icmp slt i64 %1, 15001, !dbg !235
  br i1 %cmp, label %if.then, label %if.end12.thread, !dbg !235

if.end12.thread:                                  ; preds = %entry
  %stop_arcs215 = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !236
  %2 = load %struct.arc** %stop_arcs215, align 8, !dbg !236, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %14}, i64 0, metadata !134), !dbg !236
  tail call void @llvm.dbg.value(metadata !{i64 %15}, i64 0, metadata !122), !dbg !237
  %arcs216 = getelementptr inbounds %struct.network* %net, i64 0, i32 23, !dbg !238
  %3 = load %struct.arc** %arcs216, align 8, !dbg !238, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %10}, i64 0, metadata !132), !dbg !238
  tail call void @llvm.dbg.value(metadata !226, i64 0, metadata !121), !dbg !239
  br label %land.rhs.lr.ph, !dbg !239

if.then:                                          ; preds = %entry
  %m = getelementptr inbounds %struct.network* %net, i64 0, i32 5, !dbg !241
  %4 = load i64* %m, align 8, !dbg !241, !tbaa !154
  %max_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 9, !dbg !241
  %5 = load i64* %max_new_m, align 8, !dbg !241, !tbaa !154
  %add = add nsw i64 %5, %4, !dbg !241
  %max_m = getelementptr inbounds %struct.network* %net, i64 0, i32 4, !dbg !241
  %6 = load i64* %max_m, align 8, !dbg !241, !tbaa !154
  %cmp2 = icmp sgt i64 %add, %6, !dbg !241
  br i1 %cmp2, label %land.lhs.true, label %if.end12, !dbg !241

land.lhs.true:                                    ; preds = %if.then
  %mul = mul nsw i64 %1, %1, !dbg !241
  %div = lshr i64 %mul, 1, !dbg !241
  %add6 = add nsw i64 %4, %div, !dbg !241
  %cmp8 = icmp sgt i64 %add6, %6, !dbg !241
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !241

if.then9:                                         ; preds = %land.lhs.true
  tail call void @llvm.dbg.value(metadata !204, i64 0, metadata !124), !dbg !243
  %call = tail call i64 @resize_prob(%struct.network* %net) #8, !dbg !245
  %tobool = icmp eq i64 %call, 0, !dbg !245
  br i1 %tobool, label %if.end, label %return, !dbg !245

if.end:                                           ; preds = %if.then9
  tail call void @refresh_neighbour_lists(%struct.network* %net) #7, !dbg !246
  %.pre = load i64* %n_trips, align 8, !dbg !237, !tbaa !154
  br label %if.end12, !dbg !247

if.end12:                                         ; preds = %if.then, %land.lhs.true, %if.end
  %7 = phi i64 [ %.pre, %if.end ], [ %1, %land.lhs.true ], [ %1, %if.then ]
  %resized.0 = phi i64 [ 1, %if.end ], [ 0, %land.lhs.true ], [ 0, %if.then ]
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !236
  %8 = load %struct.arc** %stop_arcs, align 8, !dbg !236, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %14}, i64 0, metadata !134), !dbg !236
  tail call void @llvm.dbg.value(metadata !{i64 %15}, i64 0, metadata !122), !dbg !237
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23, !dbg !238
  %9 = load %struct.arc** %arcs, align 8, !dbg !238, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %10}, i64 0, metadata !132), !dbg !238
  tail call void @llvm.dbg.value(metadata !226, i64 0, metadata !121), !dbg !239
  %cmp14206 = icmp sgt i64 %7, 0, !dbg !239
  br i1 %cmp14206, label %land.rhs.lr.ph, label %for.cond16.preheader, !dbg !239

land.rhs.lr.ph:                                   ; preds = %if.end12.thread, %if.end12
  %10 = phi %struct.arc* [ %3, %if.end12.thread ], [ %9, %if.end12 ]
  %11 = phi %struct.arc* [ %2, %if.end12.thread ], [ %8, %if.end12 ]
  %stop_arcs221 = phi %struct.arc** [ %stop_arcs215, %if.end12.thread ], [ %stop_arcs, %if.end12 ]
  %resized.0219 = phi i64 [ 0, %if.end12.thread ], [ %resized.0, %if.end12 ]
  %12 = phi i64 [ %1, %if.end12.thread ], [ %7, %if.end12 ]
  br label %land.rhs, !dbg !239

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %i.0208 = phi i64 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc ]
  %arcout.0207 = phi %struct.arc* [ %10, %land.rhs.lr.ph ], [ %add.ptr, %for.inc ]
  %ident = getelementptr inbounds %struct.arc* %arcout.0207, i64 1, i32 3, !dbg !239
  %13 = load i32* %ident, align 4, !dbg !239, !tbaa !248
  %cmp15 = icmp eq i32 %13, -1, !dbg !239
  br i1 %cmp15, label %for.inc, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.inc, %land.rhs, %if.end12
  %14 = phi %struct.arc* [ %8, %if.end12 ], [ %11, %land.rhs ], [ %11, %for.inc ]
  %stop_arcs220 = phi %struct.arc** [ %stop_arcs, %if.end12 ], [ %stop_arcs221, %land.rhs ], [ %stop_arcs221, %for.inc ]
  %resized.0218 = phi i64 [ %resized.0, %if.end12 ], [ %resized.0219, %land.rhs ], [ %resized.0219, %for.inc ]
  %15 = phi i64 [ %7, %if.end12 ], [ %12, %land.rhs ], [ %12, %for.inc ]
  %i.0.lcssa = phi i64 [ 0, %if.end12 ], [ %i.0208, %land.rhs ], [ %inc, %for.inc ]
  %arcout.0.lcssa = phi %struct.arc* [ %9, %if.end12 ], [ %arcout.0207, %land.rhs ], [ %add.ptr, %for.inc ]
  %cmp17200 = icmp slt i64 %i.0.lcssa, %15, !dbg !249
  br i1 %cmp17200, label %for.body18.lr.ph, label %return, !dbg !249

for.body18.lr.ph:                                 ; preds = %for.cond16.preheader
  %max_residual_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 8, !dbg !251
  %flow = getelementptr inbounds %struct.arc* %14, i64 0, i32 6, !dbg !255
  br label %for.body18, !dbg !249

for.inc:                                          ; preds = %land.rhs
  %inc = add nsw i64 %i.0208, 1, !dbg !239
  tail call void @llvm.dbg.value(metadata !{i64 %inc}, i64 0, metadata !121), !dbg !239
  %add.ptr = getelementptr inbounds %struct.arc* %arcout.0207, i64 3, !dbg !239
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %add.ptr}, i64 0, metadata !132), !dbg !239
  %cmp14 = icmp slt i64 %inc, %12, !dbg !239
  br i1 %cmp14, label %land.rhs, label %for.cond16.preheader, !dbg !239

for.body18:                                       ; preds = %for.inc66, %for.body18.lr.ph
  %i.1204 = phi i64 [ %i.0.lcssa, %for.body18.lr.ph ], [ %inc67, %for.inc66 ]
  %first_of_sparse_list.0203 = phi %struct.arc* [ null, %for.body18.lr.ph ], [ %first_of_sparse_list.1, %for.inc66 ]
  %new_arcs.0202 = phi i64 [ 0, %for.body18.lr.ph ], [ %new_arcs.3, %for.inc66 ]
  %arcout.1201 = phi %struct.arc* [ %arcout.0.lcssa, %for.body18.lr.ph ], [ %add.ptr68, %for.inc66 ]
  %ident20 = getelementptr inbounds %struct.arc* %arcout.1201, i64 1, i32 3, !dbg !256
  %16 = load i32* %ident20, align 4, !dbg !256, !tbaa !248
  %cmp21 = icmp eq i32 %16, -1, !dbg !256
  br i1 %cmp21, label %if.end26, label %if.then22, !dbg !256

if.then22:                                        ; preds = %for.body18
  %arrayidx19 = getelementptr inbounds %struct.arc* %arcout.1201, i64 1, !dbg !256
  %head23 = getelementptr inbounds %struct.arc* %arcout.1201, i64 0, i32 2, !dbg !257
  %17 = load %struct.node** %head23, align 8, !dbg !257, !tbaa !160
  %firstout = getelementptr inbounds %struct.node* %17, i64 0, i32 7, !dbg !257
  %18 = load %struct.arc** %firstout, align 8, !dbg !257, !tbaa !160
  %head24 = getelementptr inbounds %struct.arc* %18, i64 0, i32 2, !dbg !257
  %19 = load %struct.node** %head24, align 8, !dbg !257, !tbaa !160
  %arc_tmp = getelementptr inbounds %struct.node* %19, i64 0, i32 9, !dbg !257
  store %struct.arc* %first_of_sparse_list.0203, %struct.arc** %arc_tmp, align 8, !dbg !257, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %arrayidx19}, i64 0, metadata !136), !dbg !259
  br label %if.end26, !dbg !260

if.end26:                                         ; preds = %for.body18, %if.then22
  %first_of_sparse_list.1 = phi %struct.arc* [ %arrayidx19, %if.then22 ], [ %first_of_sparse_list.0203, %for.body18 ]
  %ident27 = getelementptr inbounds %struct.arc* %arcout.1201, i64 0, i32 3, !dbg !261
  %20 = load i32* %ident27, align 4, !dbg !261, !tbaa !248
  %cmp28 = icmp eq i32 %20, -1, !dbg !261
  br i1 %cmp28, label %for.inc66, label %if.end30, !dbg !261

if.end30:                                         ; preds = %if.end26
  %head31 = getelementptr inbounds %struct.arc* %arcout.1201, i64 0, i32 2, !dbg !262
  %21 = load %struct.node** %head31, align 8, !dbg !262, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{%struct.node* %21}, i64 0, metadata !138), !dbg !262
  %time = getelementptr inbounds %struct.node* %21, i64 0, i32 13, !dbg !263
  %22 = load i32* %time, align 4, !dbg !263, !tbaa !248
  %conv = sext i32 %22 to i64, !dbg !263
  %org_cost = getelementptr inbounds %struct.arc* %arcout.1201, i64 0, i32 7, !dbg !263
  %23 = load i64* %org_cost, align 8, !dbg !263, !tbaa !154
  %sub32 = sub i64 %sub, %23, !dbg !263
  %add33 = add i64 %sub32, %conv, !dbg !263
  tail call void @llvm.dbg.value(metadata !{i64 %add33}, i64 0, metadata !125), !dbg !263
  %potential = getelementptr inbounds %struct.node* %21, i64 0, i32 0, !dbg !264
  %tail34 = getelementptr inbounds %struct.arc* %first_of_sparse_list.1, i64 0, i32 1, !dbg !265
  %24 = load %struct.node** %tail34, align 8, !dbg !265, !tbaa !160
  %arc_tmp35 = getelementptr inbounds %struct.node* %24, i64 0, i32 9, !dbg !265
  %arcin.0191196 = load %struct.arc** %arc_tmp35, align 8, !dbg !265
  %tobool36192197 = icmp eq %struct.arc* %arcin.0191196, null, !dbg !266
  br i1 %tobool36192197, label %for.inc66, label %while.body.lr.ph, !dbg !266

while.body.lr.ph:                                 ; preds = %if.end30, %if.end64
  %arcin.0191199 = phi %struct.arc* [ %arcin.0191, %if.end64 ], [ %arcin.0191196, %if.end30 ]
  %new_arcs.1.ph198 = phi i64 [ %new_arcs.2, %if.end64 ], [ %new_arcs.0202, %if.end30 ]
  br label %while.body, !dbg !266

while.cond:                                       ; preds = %while.body
  %arc_tmp45 = getelementptr inbounds %struct.node* %25, i64 0, i32 9, !dbg !267
  %arcin.0 = load %struct.arc** %arc_tmp45, align 8, !dbg !265
  %tobool36 = icmp eq %struct.arc* %arcin.0, null, !dbg !266
  br i1 %tobool36, label %for.inc66, label %while.body, !dbg !266

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %arcin.0193 = phi %struct.arc* [ %arcin.0191199, %while.body.lr.ph ], [ %arcin.0, %while.cond ]
  %tail37 = getelementptr inbounds %struct.arc* %arcin.0193, i64 0, i32 1, !dbg !269
  %25 = load %struct.node** %tail37, align 8, !dbg !269, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{%struct.node* %25}, i64 0, metadata !137), !dbg !269
  %time38 = getelementptr inbounds %struct.node* %25, i64 0, i32 13, !dbg !270
  %26 = load i32* %time38, align 4, !dbg !270, !tbaa !248
  %conv39 = sext i32 %26 to i64, !dbg !270
  %org_cost40 = getelementptr inbounds %struct.arc* %arcin.0193, i64 0, i32 7, !dbg !270
  %27 = load i64* %org_cost40, align 8, !dbg !270, !tbaa !154
  %add41 = add nsw i64 %conv39, %27, !dbg !270
  %cmp42 = icmp sgt i64 %add41, %add33, !dbg !270
  br i1 %cmp42, label %while.cond, label %if.end46, !dbg !270

if.end46:                                         ; preds = %while.body
  %potential47 = getelementptr inbounds %struct.node* %25, i64 0, i32 0, !dbg !271
  %28 = load i64* %potential47, align 8, !dbg !271, !tbaa !154
  %sub48 = sub nsw i64 30, %28, !dbg !271
  %29 = load i64* %potential, align 8, !dbg !271, !tbaa !154
  %add50 = add nsw i64 %sub48, %29, !dbg !271
  tail call void @llvm.dbg.value(metadata !{i64 %add50}, i64 0, metadata !130), !dbg !271
  %cmp51 = icmp slt i64 %add50, 0, !dbg !272
  br i1 %cmp51, label %if.then53, label %if.end64, !dbg !272

if.then53:                                        ; preds = %if.end46
  %30 = load i64* %max_residual_new_m, align 8, !dbg !251, !tbaa !154
  %cmp54 = icmp slt i64 %new_arcs.1.ph198, %30, !dbg !251
  br i1 %cmp54, label %if.then56, label %if.else, !dbg !251

if.then56:                                        ; preds = %if.then53
  tail call void @insert_new_arc(%struct.arc* %14, i64 %new_arcs.1.ph198, %struct.node* %25, %struct.node* %21, i64 30, i64 %add50) #8, !dbg !273
  %inc57 = add nsw i64 %new_arcs.1.ph198, 1, !dbg !275
  tail call void @llvm.dbg.value(metadata !{i64 %inc57}, i64 0, metadata !123), !dbg !275
  br label %if.end64, !dbg !276

if.else:                                          ; preds = %if.then53
  %31 = load i64* %flow, align 8, !dbg !255, !tbaa !154
  %cmp59 = icmp sgt i64 %31, %add50, !dbg !255
  br i1 %cmp59, label %if.then61, label %if.end64, !dbg !255

if.then61:                                        ; preds = %if.else
  tail call void @replace_weaker_arc(%struct.network* %net, %struct.arc* %14, %struct.node* %25, %struct.node* %21, i64 30, i64 %add50) #8, !dbg !277
  br label %if.end64, !dbg !277

if.end64:                                         ; preds = %if.then56, %if.then61, %if.else, %if.end46
  %new_arcs.2 = phi i64 [ %inc57, %if.then56 ], [ %new_arcs.1.ph198, %if.then61 ], [ %new_arcs.1.ph198, %if.else ], [ %new_arcs.1.ph198, %if.end46 ]
  %arc_tmp65 = getelementptr inbounds %struct.node* %25, i64 0, i32 9, !dbg !278
  %arcin.0191 = load %struct.arc** %arc_tmp65, align 8, !dbg !265
  %tobool36192 = icmp eq %struct.arc* %arcin.0191, null, !dbg !266
  br i1 %tobool36192, label %for.inc66, label %while.body.lr.ph, !dbg !266

for.inc66:                                        ; preds = %while.cond, %if.end64, %if.end30, %if.end26
  %new_arcs.3 = phi i64 [ %new_arcs.0202, %if.end26 ], [ %new_arcs.1.ph198, %while.cond ], [ %new_arcs.0202, %if.end30 ], [ %new_arcs.2, %if.end64 ]
  %inc67 = add nsw i64 %i.1204, 1, !dbg !249
  tail call void @llvm.dbg.value(metadata !{i64 %inc67}, i64 0, metadata !121), !dbg !249
  %add.ptr68 = getelementptr inbounds %struct.arc* %arcout.1201, i64 3, !dbg !249
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %add.ptr68}, i64 0, metadata !132), !dbg !249
  %exitcond = icmp eq i64 %inc67, %15, !dbg !249
  br i1 %exitcond, label %for.end69, label %for.body18, !dbg !249

for.end69:                                        ; preds = %for.inc66
  %tobool70 = icmp eq i64 %new_arcs.3, 0, !dbg !279
  br i1 %tobool70, label %return, label %if.then71, !dbg !279

if.then71:                                        ; preds = %for.end69
  %32 = load %struct.arc** %stop_arcs220, align 8, !dbg !280, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %32}, i64 0, metadata !134), !dbg !280
  %add.ptr74 = getelementptr inbounds %struct.arc* %32, i64 %new_arcs.3, !dbg !282
  store %struct.arc* %add.ptr74, %struct.arc** %stop_arcs220, align 8, !dbg !282, !tbaa !160
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %add.ptr74}, i64 0, metadata !135), !dbg !283
  %tobool76 = icmp eq i64 %resized.0218, 0, !dbg !284
  br i1 %tobool76, label %for.body90, label %for.body81, !dbg !284

for.body81:                                       ; preds = %if.then71, %for.body81
  %arcnew.0190 = phi %struct.arc* [ %incdec.ptr, %for.body81 ], [ %32, %if.then71 ]
  %flow82 = getelementptr inbounds %struct.arc* %arcnew.0190, i64 0, i32 6, !dbg !285
  store i64 0, i64* %flow82, align 8, !dbg !285, !tbaa !154
  %ident83 = getelementptr inbounds %struct.arc* %arcnew.0190, i64 0, i32 3, !dbg !289
  store i32 1, i32* %ident83, align 4, !dbg !289, !tbaa !248
  %incdec.ptr = getelementptr inbounds %struct.arc* %arcnew.0190, i64 1, !dbg !290
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %incdec.ptr}, i64 0, metadata !134), !dbg !290
  %cmp79 = icmp eq %struct.arc* %incdec.ptr, %add.ptr74, !dbg !290
  br i1 %cmp79, label %if.end103, label %for.body81, !dbg !290

for.body90:                                       ; preds = %if.then71, %for.body90
  %arcnew.1187 = phi %struct.arc* [ %incdec.ptr101, %for.body90 ], [ %32, %if.then71 ]
  %flow91 = getelementptr inbounds %struct.arc* %arcnew.1187, i64 0, i32 6, !dbg !291
  store i64 0, i64* %flow91, align 8, !dbg !291, !tbaa !154
  %ident92 = getelementptr inbounds %struct.arc* %arcnew.1187, i64 0, i32 3, !dbg !295
  store i32 1, i32* %ident92, align 4, !dbg !295, !tbaa !248
  %tail93 = getelementptr inbounds %struct.arc* %arcnew.1187, i64 0, i32 1, !dbg !296
  %33 = load %struct.node** %tail93, align 8, !dbg !296, !tbaa !160
  %firstout94 = getelementptr inbounds %struct.node* %33, i64 0, i32 7, !dbg !296
  %34 = load %struct.arc** %firstout94, align 8, !dbg !296, !tbaa !160
  %nextout = getelementptr inbounds %struct.arc* %arcnew.1187, i64 0, i32 4, !dbg !296
  store %struct.arc* %34, %struct.arc** %nextout, align 8, !dbg !296, !tbaa !160
  store %struct.arc* %arcnew.1187, %struct.arc** %firstout94, align 8, !dbg !297, !tbaa !160
  %head97 = getelementptr inbounds %struct.arc* %arcnew.1187, i64 0, i32 2, !dbg !298
  %35 = load %struct.node** %head97, align 8, !dbg !298, !tbaa !160
  %firstin = getelementptr inbounds %struct.node* %35, i64 0, i32 8, !dbg !298
  %36 = load %struct.arc** %firstin, align 8, !dbg !298, !tbaa !160
  %nextin = getelementptr inbounds %struct.arc* %arcnew.1187, i64 0, i32 5, !dbg !298
  store %struct.arc* %36, %struct.arc** %nextin, align 8, !dbg !298, !tbaa !160
  store %struct.arc* %arcnew.1187, %struct.arc** %firstin, align 8, !dbg !299, !tbaa !160
  %incdec.ptr101 = getelementptr inbounds %struct.arc* %arcnew.1187, i64 1, !dbg !300
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %incdec.ptr101}, i64 0, metadata !134), !dbg !300
  %cmp88 = icmp eq %struct.arc* %incdec.ptr101, %add.ptr74, !dbg !300
  br i1 %cmp88, label %if.end103, label %for.body90, !dbg !300

if.end103:                                        ; preds = %for.body81, %for.body90
  %m104 = getelementptr inbounds %struct.network* %net, i64 0, i32 5, !dbg !301
  %37 = load i64* %m104, align 8, !dbg !301, !tbaa !154
  %add105 = add nsw i64 %37, %new_arcs.3, !dbg !301
  store i64 %add105, i64* %m104, align 8, !dbg !301, !tbaa !154
  %m_impl = getelementptr inbounds %struct.network* %net, i64 0, i32 7, !dbg !302
  %38 = load i64* %m_impl, align 8, !dbg !302, !tbaa !154
  %add106 = add nsw i64 %38, %new_arcs.3, !dbg !302
  store i64 %add106, i64* %m_impl, align 8, !dbg !302, !tbaa !154
  %max_residual_new_m107 = getelementptr inbounds %struct.network* %net, i64 0, i32 8, !dbg !303
  %39 = load i64* %max_residual_new_m107, align 8, !dbg !303, !tbaa !154
  %sub108 = sub nsw i64 %39, %new_arcs.3, !dbg !303
  store i64 %sub108, i64* %max_residual_new_m107, align 8, !dbg !303, !tbaa !154
  br label %return, !dbg !304

return:                                           ; preds = %for.cond16.preheader, %if.end103, %for.end69, %if.then9
  %retval.0 = phi i64 [ -1, %if.then9 ], [ 0, %for.end69 ], [ %new_arcs.3, %if.end103 ], [ 0, %for.cond16.preheader ]
  ret i64 %retval.0, !dbg !305
}

; Function Attrs: optsize
declare void @refresh_neighbour_lists(%struct.network*) #3

; Function Attrs: nounwind optsize uwtable
define i64 @suspend_impl(%struct.network* %net, i64 %threshold, i64 %all) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.network* %net}, i64 0, metadata !143), !dbg !306
  tail call void @llvm.dbg.value(metadata !{i64 %threshold}, i64 0, metadata !144), !dbg !306
  tail call void @llvm.dbg.value(metadata !{i64 %all}, i64 0, metadata !145), !dbg !306
  %tobool = icmp eq i64 %all, 0, !dbg !307
  br i1 %tobool, label %if.else, label %if.then, !dbg !307

if.then:                                          ; preds = %entry
  %m_impl = getelementptr inbounds %struct.network* %net, i64 0, i32 7, !dbg !308
  %0 = load i64* %m_impl, align 8, !dbg !308, !tbaa !154
  tail call void @llvm.dbg.value(metadata !{i64 %0}, i64 0, metadata !146), !dbg !308
  br label %if.end25, !dbg !308

if.else:                                          ; preds = %entry
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !309
  %1 = load %struct.arc** %stop_arcs, align 8, !dbg !309, !tbaa !160
  %m = getelementptr inbounds %struct.network* %net, i64 0, i32 5, !dbg !311
  %2 = load i64* %m, align 8, !dbg !311, !tbaa !154
  %m_impl1 = getelementptr inbounds %struct.network* %net, i64 0, i32 7, !dbg !311
  %3 = load i64* %m_impl1, align 8, !dbg !311, !tbaa !154
  %sub = sub nsw i64 %2, %3, !dbg !311
  %arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 23, !dbg !311
  %4 = load %struct.arc** %arcs, align 8, !dbg !311, !tbaa !160
  %arrayidx = getelementptr inbounds %struct.arc* %4, i64 %sub, !dbg !311
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %arrayidx}, i64 0, metadata !148), !dbg !311
  tail call void @llvm.dbg.value(metadata !226, i64 0, metadata !146), !dbg !312
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %arrayidx}, i64 0, metadata !149), !dbg !312
  %cmp62 = icmp ult %struct.arc* %arrayidx, %1, !dbg !312
  br i1 %cmp62, label %for.body, label %if.end34, !dbg !312

for.body:                                         ; preds = %if.else, %for.inc
  %susp.065 = phi i64 [ %susp.1, %for.inc ], [ 0, %if.else ]
  %arc.064 = phi %struct.arc* [ %incdec.ptr24, %for.inc ], [ %arrayidx, %if.else ]
  %new_arc.063 = phi %struct.arc* [ %new_arc.1, %for.inc ], [ %arrayidx, %if.else ]
  %ident = getelementptr inbounds %struct.arc* %arc.064, i64 0, i32 3, !dbg !314
  %5 = load i32* %ident, align 4, !dbg !314, !tbaa !248
  switch i32 %5, label %if.end19 [
    i32 1, label %if.then3
    i32 0, label %if.then9
  ], !dbg !314

if.then3:                                         ; preds = %for.body
  %cost = getelementptr inbounds %struct.arc* %arc.064, i64 0, i32 0, !dbg !316
  %6 = load i64* %cost, align 8, !dbg !316, !tbaa !154
  %tail = getelementptr inbounds %struct.arc* %arc.064, i64 0, i32 1, !dbg !316
  %7 = load %struct.node** %tail, align 8, !dbg !316, !tbaa !160
  %potential = getelementptr inbounds %struct.node* %7, i64 0, i32 0, !dbg !316
  %8 = load i64* %potential, align 8, !dbg !316, !tbaa !154
  %sub4 = sub i64 %6, %8, !dbg !316
  %head = getelementptr inbounds %struct.arc* %arc.064, i64 0, i32 2, !dbg !316
  %9 = load %struct.node** %head, align 8, !dbg !316, !tbaa !160
  %potential5 = getelementptr inbounds %struct.node* %9, i64 0, i32 0, !dbg !316
  %10 = load i64* %potential5, align 8, !dbg !316, !tbaa !154
  %add = add nsw i64 %sub4, %10, !dbg !316
  tail call void @llvm.dbg.value(metadata !{i64 %add}, i64 0, metadata !147), !dbg !316
  br label %if.end19, !dbg !316

if.then9:                                         ; preds = %for.body
  %tail10 = getelementptr inbounds %struct.arc* %arc.064, i64 0, i32 1, !dbg !317
  %11 = load %struct.node** %tail10, align 8, !dbg !317, !tbaa !160
  %basic_arc = getelementptr inbounds %struct.node* %11, i64 0, i32 6, !dbg !317
  %12 = load %struct.arc** %basic_arc, align 8, !dbg !317, !tbaa !160
  %cmp11 = icmp eq %struct.arc* %12, %arc.064, !dbg !317
  br i1 %cmp11, label %if.then12, label %if.else15, !dbg !317

if.then12:                                        ; preds = %if.then9
  store %struct.arc* %new_arc.063, %struct.arc** %basic_arc, align 8, !dbg !320, !tbaa !160
  br label %if.end19, !dbg !320

if.else15:                                        ; preds = %if.then9
  %head16 = getelementptr inbounds %struct.arc* %arc.064, i64 0, i32 2, !dbg !321
  %13 = load %struct.node** %head16, align 8, !dbg !321, !tbaa !160
  %basic_arc17 = getelementptr inbounds %struct.node* %13, i64 0, i32 6, !dbg !321
  store %struct.arc* %new_arc.063, %struct.arc** %basic_arc17, align 8, !dbg !321, !tbaa !160
  br label %if.end19

if.end19:                                         ; preds = %for.body, %if.else15, %if.then12, %if.then3
  %red_cost.0 = phi i64 [ %add, %if.then3 ], [ -2, %if.then12 ], [ -2, %if.else15 ], [ -2, %for.body ]
  %cmp20 = icmp sgt i64 %red_cost.0, %threshold, !dbg !322
  br i1 %cmp20, label %if.then21, label %if.else22, !dbg !322

if.then21:                                        ; preds = %if.end19
  %inc = add nsw i64 %susp.065, 1, !dbg !323
  tail call void @llvm.dbg.value(metadata !{i64 %inc}, i64 0, metadata !146), !dbg !323
  br label %for.inc, !dbg !323

if.else22:                                        ; preds = %if.end19
  %14 = bitcast %struct.arc* %new_arc.063 to i8*, !dbg !324
  %15 = bitcast %struct.arc* %arc.064 to i8*, !dbg !324
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 64, i32 8, i1 false), !dbg !324, !tbaa.struct !326
  %incdec.ptr = getelementptr inbounds %struct.arc* %new_arc.063, i64 1, !dbg !327
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %incdec.ptr}, i64 0, metadata !148), !dbg !327
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %if.else22
  %new_arc.1 = phi %struct.arc* [ %new_arc.063, %if.then21 ], [ %incdec.ptr, %if.else22 ]
  %susp.1 = phi i64 [ %inc, %if.then21 ], [ %susp.065, %if.else22 ]
  %incdec.ptr24 = getelementptr inbounds %struct.arc* %arc.064, i64 1, !dbg !312
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %incdec.ptr24}, i64 0, metadata !149), !dbg !312
  %cmp = icmp ult %struct.arc* %incdec.ptr24, %1, !dbg !312
  br i1 %cmp, label %for.body, label %if.end25, !dbg !312

if.end25:                                         ; preds = %for.inc, %if.then
  %susp.2 = phi i64 [ %0, %if.then ], [ %susp.1, %for.inc ]
  %tobool26 = icmp eq i64 %susp.2, 0, !dbg !328
  br i1 %tobool26, label %if.end34, label %if.then27, !dbg !328

if.then27:                                        ; preds = %if.end25
  %m28 = getelementptr inbounds %struct.network* %net, i64 0, i32 5, !dbg !329
  %16 = load i64* %m28, align 8, !dbg !329, !tbaa !154
  %sub29 = sub nsw i64 %16, %susp.2, !dbg !329
  store i64 %sub29, i64* %m28, align 8, !dbg !329, !tbaa !154
  %m_impl30 = getelementptr inbounds %struct.network* %net, i64 0, i32 7, !dbg !331
  %17 = load i64* %m_impl30, align 8, !dbg !331, !tbaa !154
  %sub31 = sub nsw i64 %17, %susp.2, !dbg !331
  store i64 %sub31, i64* %m_impl30, align 8, !dbg !331, !tbaa !154
  %stop_arcs32 = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !332
  %18 = load %struct.arc** %stop_arcs32, align 8, !dbg !332, !tbaa !160
  %idx.neg = sub i64 0, %susp.2, !dbg !332
  %add.ptr = getelementptr inbounds %struct.arc* %18, i64 %idx.neg, !dbg !332
  store %struct.arc* %add.ptr, %struct.arc** %stop_arcs32, align 8, !dbg !332, !tbaa !160
  %max_residual_new_m = getelementptr inbounds %struct.network* %net, i64 0, i32 8, !dbg !333
  %19 = load i64* %max_residual_new_m, align 8, !dbg !333, !tbaa !154
  %add33 = add nsw i64 %19, %susp.2, !dbg !333
  store i64 %add33, i64* %max_residual_new_m, align 8, !dbg !333, !tbaa !154
  tail call void @refresh_neighbour_lists(%struct.network* %net) #7, !dbg !334
  br label %if.end34, !dbg !335

if.end34:                                         ; preds = %if.else, %if.end25, %if.then27
  %susp.267 = phi i64 [ 0, %if.end25 ], [ %susp.2, %if.then27 ], [ 0, %if.else ]
  ret i64 %susp.267, !dbg !336
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !95, metadata !106, metadata !118, metadata !139}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"resize_prob", metadata !"resize_prob", metadata !"", i32 28, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.network*)* @resize_prob, null, null, metadata !82, i32 33} ; [ DW_TAG_subprogram ] [line 28] [def] [scope 33] [resize_prob]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
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
!82 = metadata !{metadata !83, metadata !84, metadata !87, metadata !90, metadata !91, metadata !92}
!83 = metadata !{i32 786689, metadata !4, metadata !"net", metadata !5, i32 16777244, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [net] [line 28]
!84 = metadata !{i32 786688, metadata !4, metadata !"arc", metadata !5, i32 34, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arc] [line 34]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from arc_t]
!86 = metadata !{i32 786454, metadata !1, null, metadata !"arc_t", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [arc_t] [line 102, size 0, align 0, offset 0] [from arc]
!87 = metadata !{i32 786688, metadata !4, metadata !"node", metadata !5, i32 35, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 35]
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node_t]
!89 = metadata !{i32 786454, metadata !1, null, metadata !"node_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [node_t] [line 99, size 0, align 0, offset 0] [from node]
!90 = metadata !{i32 786688, metadata !4, metadata !"stop", metadata !5, i32 35, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stop] [line 35]
!91 = metadata !{i32 786688, metadata !4, metadata !"root", metadata !5, i32 35, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 35]
!92 = metadata !{i32 786688, metadata !4, metadata !"off", metadata !5, i32 36, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 36]
!93 = metadata !{i32 786454, metadata !1, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!94 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!95 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"insert_new_arc", metadata !"insert_new_arc", metadata !"", i32 83, metadata !96, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.arc*, i64, %struct.node*, %struct.node*, i64, i64)* @insert_new_arc, null, null, metadata !98, i32 94} ; [ DW_TAG_subprogram ] [line 83] [def] [scope 94] [insert_new_arc]
!96 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!97 = metadata !{null, metadata !85, metadata !8, metadata !88, metadata !88, metadata !40, metadata !40}
!98 = metadata !{metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105}
!99 = metadata !{i32 786689, metadata !95, metadata !"new", metadata !5, i32 16777299, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [new] [line 83]
!100 = metadata !{i32 786689, metadata !95, metadata !"newpos", metadata !5, i32 33554515, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newpos] [line 83]
!101 = metadata !{i32 786689, metadata !95, metadata !"tail", metadata !5, i32 50331731, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tail] [line 83]
!102 = metadata !{i32 786689, metadata !95, metadata !"head", metadata !5, i32 67108947, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [head] [line 83]
!103 = metadata !{i32 786689, metadata !95, metadata !"cost", metadata !5, i32 83886164, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cost] [line 84]
!104 = metadata !{i32 786689, metadata !95, metadata !"red_cost", metadata !5, i32 100663380, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [red_cost] [line 84]
!105 = metadata !{i32 786688, metadata !95, metadata !"pos", metadata !5, i32 95, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 95]
!106 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"replace_weaker_arc", metadata !"replace_weaker_arc", metadata !"", i32 129, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.network*, %struct.arc*, %struct.node*, %struct.node*, i64, i64)* @replace_weaker_arc, null, null, metadata !109, i32 140} ; [ DW_TAG_subprogram ] [line 129] [def] [scope 140] [replace_weaker_arc]
!107 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{null, metadata !9, metadata !85, metadata !88, metadata !88, metadata !40, metadata !40}
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!110 = metadata !{i32 786689, metadata !106, metadata !"net", metadata !5, i32 16777345, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [net] [line 129]
!111 = metadata !{i32 786689, metadata !106, metadata !"new", metadata !5, i32 33554561, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [new] [line 129]
!112 = metadata !{i32 786689, metadata !106, metadata !"tail", metadata !5, i32 50331777, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tail] [line 129]
!113 = metadata !{i32 786689, metadata !106, metadata !"head", metadata !5, i32 67108993, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [head] [line 129]
!114 = metadata !{i32 786689, metadata !106, metadata !"cost", metadata !5, i32 83886210, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cost] [line 130]
!115 = metadata !{i32 786689, metadata !106, metadata !"red_cost", metadata !5, i32 100663426, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [red_cost] [line 130]
!116 = metadata !{i32 786688, metadata !106, metadata !"pos", metadata !5, i32 141, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 141]
!117 = metadata !{i32 786688, metadata !106, metadata !"cmp", metadata !5, i32 142, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmp] [line 142]
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"price_out_impl", metadata !"price_out_impl", metadata !"", i32 194, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.network*)* @price_out_impl, null, null, metadata !119, i32 199} ; [ DW_TAG_subprogram ] [line 194] [def] [scope 199] [price_out_impl]
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138}
!120 = metadata !{i32 786689, metadata !118, metadata !"net", metadata !5, i32 16777410, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [net] [line 194]
!121 = metadata !{i32 786688, metadata !118, metadata !"i", metadata !5, i32 200, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 200]
!122 = metadata !{i32 786688, metadata !118, metadata !"trips", metadata !5, i32 201, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [trips] [line 201]
!123 = metadata !{i32 786688, metadata !118, metadata !"new_arcs", metadata !5, i32 202, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_arcs] [line 202]
!124 = metadata !{i32 786688, metadata !118, metadata !"resized", metadata !5, i32 203, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resized] [line 203]
!125 = metadata !{i32 786688, metadata !118, metadata !"latest", metadata !5, i32 204, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [latest] [line 204]
!126 = metadata !{i32 786688, metadata !118, metadata !"min_impl_duration", metadata !5, i32 205, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min_impl_duration] [line 205]
!127 = metadata !{i32 786688, metadata !118, metadata !"bigM", metadata !5, i32 207, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bigM] [line 207]
!128 = metadata !{i32 786688, metadata !118, metadata !"head_potential", metadata !5, i32 208, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head_potential] [line 208]
!129 = metadata !{i32 786688, metadata !118, metadata !"arc_cost", metadata !5, i32 209, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arc_cost] [line 209]
!130 = metadata !{i32 786688, metadata !118, metadata !"red_cost", metadata !5, i32 210, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [red_cost] [line 210]
!131 = metadata !{i32 786688, metadata !118, metadata !"bigM_minus_min_impl_duration", metadata !5, i32 211, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bigM_minus_min_impl_duration] [line 211]
!132 = metadata !{i32 786688, metadata !118, metadata !"arcout", metadata !5, i32 213, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arcout] [line 213]
!133 = metadata !{i32 786688, metadata !118, metadata !"arcin", metadata !5, i32 213, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arcin] [line 213]
!134 = metadata !{i32 786688, metadata !118, metadata !"arcnew", metadata !5, i32 213, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arcnew] [line 213]
!135 = metadata !{i32 786688, metadata !118, metadata !"stop", metadata !5, i32 213, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stop] [line 213]
!136 = metadata !{i32 786688, metadata !118, metadata !"first_of_sparse_list", metadata !5, i32 214, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first_of_sparse_list] [line 214]
!137 = metadata !{i32 786688, metadata !118, metadata !"tail", metadata !5, i32 215, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tail] [line 215]
!138 = metadata !{i32 786688, metadata !118, metadata !"head", metadata !5, i32 215, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head] [line 215]
!139 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"suspend_impl", metadata !"suspend_impl", metadata !"", i32 359, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.network*, i64, i64)* @suspend_impl, null, null, metadata !142, i32 366} ; [ DW_TAG_subprogram ] [line 359] [def] [scope 366] [suspend_impl]
!140 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{metadata !8, metadata !9, metadata !40, metadata !8}
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150}
!143 = metadata !{i32 786689, metadata !139, metadata !"net", metadata !5, i32 16777575, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [net] [line 359]
!144 = metadata !{i32 786689, metadata !139, metadata !"threshold", metadata !5, i32 33554791, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [threshold] [line 359]
!145 = metadata !{i32 786689, metadata !139, metadata !"all", metadata !5, i32 50332007, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [all] [line 359]
!146 = metadata !{i32 786688, metadata !139, metadata !"susp", metadata !5, i32 367, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [susp] [line 367]
!147 = metadata !{i32 786688, metadata !139, metadata !"red_cost", metadata !5, i32 369, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [red_cost] [line 369]
!148 = metadata !{i32 786688, metadata !139, metadata !"new_arc", metadata !5, i32 370, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_arc] [line 370]
!149 = metadata !{i32 786688, metadata !139, metadata !"arc", metadata !5, i32 370, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arc] [line 370]
!150 = metadata !{i32 786688, metadata !139, metadata !"stop", metadata !5, i32 371, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stop] [line 371]
!151 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!152 = metadata !{i32 28, i32 0, metadata !4, null}
!153 = metadata !{i32 39, i32 0, metadata !4, null}
!154 = metadata !{metadata !"long", metadata !155}
!155 = metadata !{metadata !"omnipotent char", metadata !156}
!156 = metadata !{metadata !"Simple C/C++ TBAA"}
!157 = metadata !{i32 42, i32 0, metadata !4, null}
!158 = metadata !{i32 43, i32 0, metadata !4, null}
!159 = metadata !{i32 55, i32 0, metadata !4, null}
!160 = metadata !{metadata !"any pointer", metadata !155}
!161 = metadata !{i32 56, i32 0, metadata !4, null}
!162 = metadata !{i32 58, i32 0, metadata !163, null} ; [ DW_TAG_imported_module ]
!163 = metadata !{i32 786443, metadata !1, metadata !4, i32 57, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!164 = metadata !{i32 59, i32 0, metadata !163, null}
!165 = metadata !{i32 60, i32 0, metadata !163, null}
!166 = metadata !{i32 63, i32 0, metadata !4, null}
!167 = metadata !{i32 65, i32 0, metadata !4, null}
!168 = metadata !{i32 66, i32 0, metadata !4, null}
!169 = metadata !{i32 68, i32 0, metadata !4, null}
!170 = metadata !{i32 69, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !4, i32 69, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!172 = metadata !{i32 70, i32 0, metadata !171, null}
!173 = metadata !{i32 71, i32 0, metadata !171, null}
!174 = metadata !{i32 73, i32 0, metadata !4, null}
!175 = metadata !{i32 83, i32 0, metadata !95, null}
!176 = metadata !{i32 84, i32 0, metadata !95, null}
!177 = metadata !{i32 97, i32 0, metadata !95, null}
!178 = metadata !{i32 98, i32 0, metadata !95, null}
!179 = metadata !{i32 99, i32 0, metadata !95, null}
!180 = metadata !{i32 100, i32 0, metadata !95, null}
!181 = metadata !{i32 101, i32 0, metadata !95, null}
!182 = metadata !{i32 103, i32 0, metadata !95, null}
!183 = metadata !{i32 104, i32 0, metadata !95, null}
!184 = metadata !{i32 106, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !95, i32 105, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!186 = metadata !{i32 107, i32 0, metadata !185, null}
!187 = metadata !{i32 108, i32 0, metadata !185, null}
!188 = metadata !{i32 109, i32 0, metadata !185, null}
!189 = metadata !{i32 110, i32 0, metadata !185, null}
!190 = metadata !{i32 112, i32 0, metadata !185, null}
!191 = metadata !{i32 113, i32 0, metadata !185, null}
!192 = metadata !{i32 114, i32 0, metadata !185, null}
!193 = metadata !{i32 115, i32 0, metadata !185, null}
!194 = metadata !{i32 116, i32 0, metadata !185, null}
!195 = metadata !{i32 117, i32 0, metadata !185, null}
!196 = metadata !{i32 120, i32 0, metadata !95, null}
!197 = metadata !{i32 129, i32 0, metadata !106, null}
!198 = metadata !{i32 130, i32 0, metadata !106, null}
!199 = metadata !{i32 144, i32 0, metadata !106, null}
!200 = metadata !{i32 145, i32 0, metadata !106, null}
!201 = metadata !{i32 146, i32 0, metadata !106, null}
!202 = metadata !{i32 147, i32 0, metadata !106, null}
!203 = metadata !{i32 148, i32 0, metadata !106, null}
!204 = metadata !{i64 1}
!205 = metadata !{i32 150, i32 0, metadata !106, null}
!206 = metadata !{i32 151, i32 0, metadata !106, null}
!207 = metadata !{i32 152, i32 0, metadata !106, null}
!208 = metadata !{i32 154, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !106, i32 153, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!210 = metadata !{i32 155, i32 0, metadata !209, null}
!211 = metadata !{i32 156, i32 0, metadata !209, null}
!212 = metadata !{i32 157, i32 0, metadata !209, null}
!213 = metadata !{i32 158, i32 0, metadata !209, null}
!214 = metadata !{i32 160, i32 0, metadata !209, null}
!215 = metadata !{i32 161, i32 0, metadata !209, null}
!216 = metadata !{i32 162, i32 0, metadata !209, null}
!217 = metadata !{i32 163, i32 0, metadata !209, null}
!218 = metadata !{i32 164, i32 0, metadata !209, null}
!219 = metadata !{i32 165, i32 0, metadata !209, null}
!220 = metadata !{i32 166, i32 0, metadata !209, null}
!221 = metadata !{i32 167, i32 0, metadata !209, null}
!222 = metadata !{i32 168, i32 0, metadata !209, null}
!223 = metadata !{i32 169, i32 0, metadata !209, null}
!224 = metadata !{i32 172, i32 0, metadata !106, null}
!225 = metadata !{i32 194, i32 0, metadata !118, null}
!226 = metadata !{i64 0}
!227 = metadata !{i32 202, i32 0, metadata !118, null}
!228 = metadata !{i32 203, i32 0, metadata !118, null}
!229 = metadata !{i64 15}
!230 = metadata !{i32 205, i32 0, metadata !118, null}
!231 = metadata !{i32 207, i32 0, metadata !118, null}
!232 = metadata !{i64 30}
!233 = metadata !{i32 209, i32 0, metadata !118, null}
!234 = metadata !{i32 223, i32 0, metadata !118, null}
!235 = metadata !{i32 227, i32 0, metadata !118, null}
!236 = metadata !{i32 259, i32 0, metadata !118, null}
!237 = metadata !{i32 260, i32 0, metadata !118, null}
!238 = metadata !{i32 262, i32 0, metadata !118, null}
!239 = metadata !{i32 263, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !118, i32 263, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!241 = metadata !{i32 229, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !118, i32 228, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!243 = metadata !{i32 234, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !242, i32 233, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!245 = metadata !{i32 235, i32 0, metadata !244, null}
!246 = metadata !{i32 238, i32 0, metadata !244, null}
!247 = metadata !{i32 239, i32 0, metadata !244, null}
!248 = metadata !{metadata !"int", metadata !155}
!249 = metadata !{i32 265, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !118, i32 265, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!251 = metadata !{i32 297, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !253, i32 296, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!253 = metadata !{i32 786443, metadata !1, metadata !254, i32 284, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!254 = metadata !{i32 786443, metadata !1, metadata !250, i32 266, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!255 = metadata !{i32 303, i32 0, metadata !252, null}
!256 = metadata !{i32 267, i32 0, metadata !254, null}
!257 = metadata !{i32 269, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !254, i32 268, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!259 = metadata !{i32 270, i32 0, metadata !258, null}
!260 = metadata !{i32 271, i32 0, metadata !258, null}
!261 = metadata !{i32 273, i32 0, metadata !254, null}
!262 = metadata !{i32 276, i32 0, metadata !254, null}
!263 = metadata !{i32 277, i32 0, metadata !254, null}
!264 = metadata !{i32 280, i32 0, metadata !254, null}
!265 = metadata !{i32 282, i32 0, metadata !254, null}
!266 = metadata !{i32 283, i32 0, metadata !254, null}
!267 = metadata !{i32 289, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !253, i32 288, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!269 = metadata !{i32 285, i32 0, metadata !253, null}
!270 = metadata !{i32 287, i32 0, metadata !253, null}
!271 = metadata !{i32 293, i32 0, metadata !253, null}
!272 = metadata !{i32 295, i32 0, metadata !253, null}
!273 = metadata !{i32 299, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !252, i32 298, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!275 = metadata !{i32 301, i32 0, metadata !274, null}
!276 = metadata !{i32 302, i32 0, metadata !274, null}
!277 = metadata !{i32 304, i32 0, metadata !252, null}
!278 = metadata !{i32 308, i32 0, metadata !253, null}
!279 = metadata !{i32 312, i32 0, metadata !118, null}
!280 = metadata !{i32 314, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !118, i32 313, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!282 = metadata !{i32 315, i32 0, metadata !281, null}
!283 = metadata !{i32 316, i32 0, metadata !281, null}
!284 = metadata !{i32 317, i32 0, metadata !281, null}
!285 = metadata !{i32 321, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !287, i32 320, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!287 = metadata !{i32 786443, metadata !1, metadata !288, i32 319, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!288 = metadata !{i32 786443, metadata !1, metadata !281, i32 318, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!289 = metadata !{i32 322, i32 0, metadata !286, null}
!290 = metadata !{i32 319, i32 0, metadata !287, null}
!291 = metadata !{i32 329, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !293, i32 328, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!293 = metadata !{i32 786443, metadata !1, metadata !294, i32 327, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!294 = metadata !{i32 786443, metadata !1, metadata !281, i32 326, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!295 = metadata !{i32 330, i32 0, metadata !292, null}
!296 = metadata !{i32 331, i32 0, metadata !292, null}
!297 = metadata !{i32 332, i32 0, metadata !292, null}
!298 = metadata !{i32 333, i32 0, metadata !292, null}
!299 = metadata !{i32 334, i32 0, metadata !292, null}
!300 = metadata !{i32 327, i32 0, metadata !293, null}
!301 = metadata !{i32 338, i32 0, metadata !281, null}
!302 = metadata !{i32 339, i32 0, metadata !281, null}
!303 = metadata !{i32 340, i32 0, metadata !281, null}
!304 = metadata !{i32 341, i32 0, metadata !281, null}
!305 = metadata !{i32 351, i32 0, metadata !118, null}
!306 = metadata !{i32 359, i32 0, metadata !139, null}
!307 = metadata !{i32 375, i32 0, metadata !139, null}
!308 = metadata !{i32 376, i32 0, metadata !139, null}
!309 = metadata !{i32 379, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !139, i32 378, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!311 = metadata !{i32 380, i32 0, metadata !310, null}
!312 = metadata !{i32 381, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !310, i32 381, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!314 = metadata !{i32 383, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !313, i32 382, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!316 = metadata !{i32 384, i32 0, metadata !315, null}
!317 = metadata !{i32 392, i32 0, metadata !318, null}
!318 = metadata !{i32 786443, metadata !1, metadata !319, i32 391, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!319 = metadata !{i32 786443, metadata !1, metadata !315, i32 387, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!320 = metadata !{i32 393, i32 0, metadata !318, null}
!321 = metadata !{i32 395, i32 0, metadata !318, null}
!322 = metadata !{i32 399, i32 0, metadata !315, null}
!323 = metadata !{i32 400, i32 0, metadata !315, null}
!324 = metadata !{i32 403, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !1, metadata !315, i32 402, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!326 = metadata !{i64 0, i64 8, metadata !154, i64 8, i64 8, metadata !160, i64 16, i64 8, metadata !160, i64 24, i64 4, metadata !248, i64 32, i64 8, metadata !160, i64 40, i64 8, metadata !160, i64 48, i64 8, metadata !154, i64 56, i64 8, metadata !154}
!327 = metadata !{i32 404, i32 0, metadata !325, null}
!328 = metadata !{i32 415, i32 0, metadata !139, null}
!329 = metadata !{i32 417, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !139, i32 416, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/implicit.c]
!331 = metadata !{i32 418, i32 0, metadata !330, null}
!332 = metadata !{i32 419, i32 0, metadata !330, null}
!333 = metadata !{i32 420, i32 0, metadata !330, null}
!334 = metadata !{i32 422, i32 0, metadata !330, null}
!335 = metadata !{i32 423, i32 0, metadata !330, null}
!336 = metadata !{i32 425, i32 0, metadata !139, null}
