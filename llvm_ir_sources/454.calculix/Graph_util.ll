; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [57 x i8] c"\0A fatal error in Graph_externalDegree(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Graph_adjAndSize(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [67 x i8] c"\0A fatal error in Graph_adjAndSize(%p,%d,%p,%p)\0A g->adjIVL == NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [64 x i8] c"\0A fatal error in Graph_adjAndEwghts(%p,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [72 x i8] c"\0A fatal error in Graph_adjAndEwghts(%p,%d,%p,%p,%p)\0A g->adjIVL == NULL\0A\00", align 1
@.str5 = private unnamed_addr constant [91 x i8] c"\0A fatal error in Graph_adjAndEwghts(%p,%d,%p,%p,%p)\0A g->type = %d and g->ewghtIVL == NULL\0A\00", align 1
@.str6 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Graph_sizeOf(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Graph_componentMap(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [63 x i8] c"\0A fatal error in Graph_componentStats(%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Graph_subGraph(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [84 x i8] c"\0A fatal error in Graph_subGraph(%p,%d,%p,%p)\0A g->type = 0 or 1 currently supported\0A\00", align 1
@.str11 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Graph_isSymmetric(%p)\0A bad input\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str12 = private unnamed_addr constant [44 x i8] c"\0A edge (%d,%d) present, edge (%d,%d) is not\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_externalDegree(%struct._Graph* %g, i32 %v) #0 {
entry:
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !47), !dbg !159
  call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !48), !dbg !160
  call void @llvm.dbg.declare(metadata !{i32* %vsize}, metadata !50), !dbg !161
  call void @llvm.dbg.declare(metadata !{i32** %vadj}, metadata !53), !dbg !162
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !163
  %cmp1 = icmp slt i32 %v, 0, !dbg !163
  %or.cond = or i1 %cmp, %cmp1, !dbg !163
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !163

lor.lhs.false2:                                   ; preds = %entry
  %nvtx = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !163
  %0 = load i32* %nvtx, align 4, !dbg !163, !tbaa !164
  %nvbnd = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !163
  %1 = load i32* %nvbnd, align 4, !dbg !163, !tbaa !164
  %add = add nsw i32 %1, %0, !dbg !163
  %cmp3 = icmp sgt i32 %add, %v, !dbg !163
  br i1 %cmp3, label %if.end, label %if.then, !dbg !163

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !167, !tbaa !169
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), %struct._Graph* %g, i32 %v) #5, !dbg !167
  call void @exit(i32 -1) #6, !dbg !170
  unreachable, !dbg !170

if.end:                                           ; preds = %lor.lhs.false2
  %vwghts4 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !171
  %3 = load i32** %vwghts4, align 8, !dbg !171, !tbaa !169
  call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !54), !dbg !171
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %v, i32* %vsize, i32** %vadj) #7, !dbg !172
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !49), !dbg !173
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !52), !dbg !173
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !50), !dbg !173
  %4 = load i32* %vsize, align 4, !dbg !173, !tbaa !164
  %cmp526 = icmp sgt i32 %4, 0, !dbg !173
  br i1 %cmp526, label %for.body.lr.ph, label %for.end, !dbg !173

for.body.lr.ph:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !53), !dbg !175
  %5 = load i32** %vadj, align 8, !dbg !175, !tbaa !169
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !50), !dbg !173
  %cmp8 = icmp eq i32* %3, null, !dbg !177
  br label %for.body, !dbg !173

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %weight.027 = phi i32 [ 0, %for.body.lr.ph ], [ %weight.1, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !53), !dbg !175
  %arrayidx = getelementptr inbounds i32* %5, i64 %indvars.iv, !dbg !175
  %6 = load i32* %arrayidx, align 4, !dbg !175, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !51), !dbg !175
  %cmp6 = icmp eq i32 %6, %v, !dbg !175
  br i1 %cmp6, label %for.inc, label %if.then7, !dbg !175

if.then7:                                         ; preds = %for.body
  br i1 %cmp8, label %cond.end, label %cond.true, !dbg !177

cond.true:                                        ; preds = %if.then7
  %idxprom9 = sext i32 %6 to i64, !dbg !177
  %arrayidx10 = getelementptr inbounds i32* %3, i64 %idxprom9, !dbg !177
  %7 = load i32* %arrayidx10, align 4, !dbg !177, !tbaa !164
  br label %cond.end, !dbg !177

cond.end:                                         ; preds = %if.then7, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 1, %if.then7 ], !dbg !177
  %add11 = add nsw i32 %cond, %weight.027, !dbg !177
  call void @llvm.dbg.value(metadata !{i32 %add11}, i64 0, metadata !52), !dbg !177
  br label %for.inc, !dbg !179

for.inc:                                          ; preds = %for.body, %cond.end
  %weight.1 = phi i32 [ %add11, %cond.end ], [ %weight.027, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !173
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !50), !dbg !173
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !173
  %cmp5 = icmp slt i32 %8, %4, !dbg !173
  br i1 %cmp5, label %for.body, label %for.end, !dbg !173

for.end:                                          ; preds = %for.inc, %if.end
  %weight.0.lcssa = phi i32 [ 0, %if.end ], [ %weight.1, %for.inc ]
  ret i32 %weight.0.lcssa, !dbg !180
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Graph_adjAndSize(%struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !59), !dbg !181
  tail call void @llvm.dbg.value(metadata !{i32 %jvtx}, i64 0, metadata !60), !dbg !182
  tail call void @llvm.dbg.value(metadata !{i32* %psize}, i64 0, metadata !61), !dbg !183
  tail call void @llvm.dbg.value(metadata !{i32** %padj}, i64 0, metadata !62), !dbg !184
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !185
  %cmp1 = icmp slt i32 %jvtx, 0, !dbg !185
  %or.cond = or i1 %cmp, %cmp1, !dbg !185
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !185

lor.lhs.false2:                                   ; preds = %entry
  %nvtx = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !185
  %0 = load i32* %nvtx, align 4, !dbg !185, !tbaa !164
  %nvbnd = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !185
  %1 = load i32* %nvbnd, align 4, !dbg !185, !tbaa !164
  %add = add nsw i32 %1, %0, !dbg !185
  %cmp3 = icmp sle i32 %add, %jvtx, !dbg !185
  %cmp5 = icmp eq i32* %psize, null, !dbg !185
  %or.cond29 = or i1 %cmp3, %cmp5, !dbg !185
  %cmp7 = icmp eq i32** %padj, null, !dbg !185
  %or.cond30 = or i1 %or.cond29, %cmp7, !dbg !185
  br i1 %or.cond30, label %if.then, label %if.end, !dbg !185

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !186, !tbaa !169
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj) #5, !dbg !186
  tail call void @exit(i32 -1) #6, !dbg !188
  unreachable, !dbg !188

if.end:                                           ; preds = %lor.lhs.false2
  %adjIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6, !dbg !189
  %3 = load %struct._IVL** %adjIVL, align 8, !dbg !189, !tbaa !169
  %cmp8 = icmp eq %struct._IVL* %3, null, !dbg !189
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !189

if.then9:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !190, !tbaa !169
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj) #5, !dbg !190
  tail call void @exit(i32 -1) #6, !dbg !192
  unreachable, !dbg !192

if.end11:                                         ; preds = %if.end
  tail call void @IVL_listAndSize(%struct._IVL* %3, i32 %jvtx, i32* %psize, i32** %padj) #5, !dbg !193
  ret void, !dbg !194
}

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #4

; Function Attrs: nounwind optsize uwtable
define void @Graph_adjAndEweights(%struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj, i32** %pewghts) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !67), !dbg !195
  tail call void @llvm.dbg.value(metadata !{i32 %jvtx}, i64 0, metadata !68), !dbg !196
  tail call void @llvm.dbg.value(metadata !{i32* %psize}, i64 0, metadata !69), !dbg !197
  tail call void @llvm.dbg.value(metadata !{i32** %padj}, i64 0, metadata !70), !dbg !198
  tail call void @llvm.dbg.value(metadata !{i32** %pewghts}, i64 0, metadata !71), !dbg !199
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !200
  %cmp1 = icmp slt i32 %jvtx, 0, !dbg !200
  %or.cond = or i1 %cmp, %cmp1, !dbg !200
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !200

lor.lhs.false2:                                   ; preds = %entry
  %nvtx = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !200
  %0 = load i32* %nvtx, align 4, !dbg !200, !tbaa !164
  %nvbnd = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !200
  %1 = load i32* %nvbnd, align 4, !dbg !200, !tbaa !164
  %add = add nsw i32 %1, %0, !dbg !200
  %cmp3 = icmp sle i32 %add, %jvtx, !dbg !200
  %cmp5 = icmp eq i32* %psize, null, !dbg !200
  %or.cond58 = or i1 %cmp3, %cmp5, !dbg !200
  %cmp7 = icmp eq i32** %padj, null, !dbg !200
  %or.cond59 = or i1 %or.cond58, %cmp7, !dbg !200
  %cmp9 = icmp eq i32** %pewghts, null, !dbg !200
  %or.cond60 = or i1 %or.cond59, %cmp9, !dbg !200
  br i1 %or.cond60, label %if.then, label %if.end, !dbg !200

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !201, !tbaa !169
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([64 x i8]* @.str3, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj, i32** %pewghts) #5, !dbg !201
  tail call void @exit(i32 -1) #6, !dbg !203
  unreachable, !dbg !203

if.end:                                           ; preds = %lor.lhs.false2
  %adjIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6, !dbg !204
  %3 = load %struct._IVL** %adjIVL, align 8, !dbg !204, !tbaa !169
  %cmp10 = icmp eq %struct._IVL* %3, null, !dbg !204
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !204

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !205, !tbaa !169
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([72 x i8]* @.str4, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj, i32** %pewghts) #5, !dbg !205
  tail call void @exit(i32 -1) #6, !dbg !207
  unreachable, !dbg !207

if.end13:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0, !dbg !208
  %5 = load i32* %type, align 4, !dbg !208, !tbaa !164
  %cmp14 = icmp sgt i32 %5, 1, !dbg !208
  br i1 %cmp14, label %land.lhs.true, label %if.end19, !dbg !208

land.lhs.true:                                    ; preds = %if.end13
  %ewghtIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8, !dbg !208
  %6 = load %struct._IVL** %ewghtIVL, align 8, !dbg !208, !tbaa !169
  %cmp15 = icmp eq %struct._IVL* %6, null, !dbg !208
  br i1 %cmp15, label %if.then16, label %if.end19, !dbg !208

if.then16:                                        ; preds = %land.lhs.true
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !209, !tbaa !169
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([91 x i8]* @.str5, i64 0, i64 0), %struct._Graph* %g, i32 %jvtx, i32* %psize, i32** %padj, i32** %pewghts, i32 %5) #5, !dbg !209
  tail call void @exit(i32 -1) #6, !dbg !211
  unreachable, !dbg !211

if.end19:                                         ; preds = %land.lhs.true, %if.end13
  tail call void @IVL_listAndSize(%struct._IVL* %3, i32 %jvtx, i32* %psize, i32** %padj) #5, !dbg !212
  %8 = load i32* %type, align 4, !dbg !213, !tbaa !164
  %cmp22 = icmp sgt i32 %8, 1, !dbg !213
  br i1 %cmp22, label %if.then23, label %if.else, !dbg !213

if.then23:                                        ; preds = %if.end19
  %ewghtIVL24 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8, !dbg !214
  %9 = load %struct._IVL** %ewghtIVL24, align 8, !dbg !214, !tbaa !169
  tail call void @IVL_listAndSize(%struct._IVL* %9, i32 %jvtx, i32* %psize, i32** %pewghts) #5, !dbg !214
  br label %if.end25, !dbg !216

if.else:                                          ; preds = %if.end19
  store i32* null, i32** %pewghts, align 8, !dbg !217, !tbaa !169
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then23
  ret void, !dbg !219
}

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_sizeOf(%struct._Graph* %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !76), !dbg !220
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !221
  br i1 %cmp, label %if.then, label %if.end, !dbg !221

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !222, !tbaa !169
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str6, i64 0, i64 0), %struct._Graph* null) #5, !dbg !222
  tail call void @exit(i32 -1) #6, !dbg !224
  unreachable, !dbg !224

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !225, i64 0, metadata !77), !dbg !226
  %vwghts = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !227
  %1 = load i32** %vwghts, align 8, !dbg !227, !tbaa !169
  %cmp1 = icmp eq i32* %1, null, !dbg !227
  br i1 %cmp1, label %if.end6, label %if.then2, !dbg !227

if.then2:                                         ; preds = %if.end
  %nvtx = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !228
  %2 = load i32* %nvtx, align 4, !dbg !228, !tbaa !164
  %nvbnd = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !228
  %3 = load i32* %nvbnd, align 4, !dbg !228, !tbaa !164
  %add = add nsw i32 %3, %2, !dbg !228
  %mul = shl i32 %add, 2, !dbg !228
  %add4 = add i32 %mul, 48, !dbg !228
  tail call void @llvm.dbg.value(metadata !{i32 %add4}, i64 0, metadata !77), !dbg !228
  br label %if.end6, !dbg !230

if.end6:                                          ; preds = %if.end, %if.then2
  %nbytes.0 = phi i32 [ %add4, %if.then2 ], [ 48, %if.end ]
  %adjIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6, !dbg !231
  %4 = load %struct._IVL** %adjIVL, align 8, !dbg !231, !tbaa !169
  %cmp7 = icmp eq %struct._IVL* %4, null, !dbg !231
  br i1 %cmp7, label %if.end13, label %if.then9, !dbg !231

if.then9:                                         ; preds = %if.end6
  %call11 = tail call i32 @IVL_sizeOf(%struct._IVL* %4) #5, !dbg !232
  %add12 = add nsw i32 %call11, %nbytes.0, !dbg !232
  tail call void @llvm.dbg.value(metadata !{i32 %add12}, i64 0, metadata !77), !dbg !232
  br label %if.end13, !dbg !234

if.end13:                                         ; preds = %if.end6, %if.then9
  %nbytes.1 = phi i32 [ %add12, %if.then9 ], [ %nbytes.0, %if.end6 ]
  %ewghtIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8, !dbg !235
  %5 = load %struct._IVL** %ewghtIVL, align 8, !dbg !235, !tbaa !169
  %cmp14 = icmp eq %struct._IVL* %5, null, !dbg !235
  br i1 %cmp14, label %if.end20, label %if.then16, !dbg !235

if.then16:                                        ; preds = %if.end13
  %call18 = tail call i32 @IVL_sizeOf(%struct._IVL* %5) #5, !dbg !236
  %add19 = add nsw i32 %call18, %nbytes.1, !dbg !236
  tail call void @llvm.dbg.value(metadata !{i32 %add19}, i64 0, metadata !77), !dbg !236
  br label %if.end20, !dbg !238

if.end20:                                         ; preds = %if.end13, %if.then16
  %nbytes.2 = phi i32 [ %add19, %if.then16 ], [ %nbytes.1, %if.end13 ]
  ret i32 %nbytes.2, !dbg !239
}

; Function Attrs: optsize
declare i32 @IVL_sizeOf(%struct._IVL*) #4

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @Graph_componentMap(%struct._Graph* %g) #0 {
entry:
  %usize = alloca i32, align 4
  %uadj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !91), !dbg !240
  call void @llvm.dbg.declare(metadata !{i32* %usize}, metadata !98), !dbg !241
  call void @llvm.dbg.declare(metadata !{i32** %uadj}, metadata !103), !dbg !242
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !243
  br i1 %cmp, label %if.then, label %if.end, !dbg !243

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !244, !tbaa !169
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), %struct._Graph* null) #5, !dbg !244
  call void @exit(i32 -1) #6, !dbg !246
  unreachable, !dbg !246

if.end:                                           ; preds = %entry
  %nvtx1 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !247
  %1 = load i32* %nvtx1, align 4, !dbg !247, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !96), !dbg !247
  %cmp2 = icmp slt i32 %1, 1, !dbg !247
  br i1 %cmp2, label %return, label %for.body.lr.ph, !dbg !247

for.body.lr.ph:                                   ; preds = %if.end
  %call5 = call %struct._IV* @IV_new() #5, !dbg !248
  call void @llvm.dbg.value(metadata !{%struct._IV* %call5}, i64 0, metadata !104), !dbg !248
  call void @IV_init(%struct._IV* %call5, i32 %1, i32* null) #5, !dbg !249
  %call6 = call i32* @IV_entries(%struct._IV* %call5) #5, !dbg !250
  call void @llvm.dbg.value(metadata !{i32* %call6}, i64 0, metadata !102), !dbg !250
  %call7 = call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !251
  call void @llvm.dbg.value(metadata !{i32* %call7}, i64 0, metadata !101), !dbg !251
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !99), !dbg !252
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !94), !dbg !252
  br label %for.body, !dbg !252

for.body:                                         ; preds = %for.inc35, %for.body.lr.ph
  %indvars.iv73 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next74, %for.inc35 ]
  %ncomp.070 = phi i32 [ 0, %for.body.lr.ph ], [ %ncomp.1, %for.inc35 ]
  %arrayidx = getelementptr inbounds i32* %call6, i64 %indvars.iv73, !dbg !254
  %2 = load i32* %arrayidx, align 4, !dbg !254, !tbaa !164
  %cmp9 = icmp eq i32 %2, -1, !dbg !254
  br i1 %cmp9, label %if.then10, label %for.inc35, !dbg !254

if.then10:                                        ; preds = %for.body
  store i32 %ncomp.070, i32* %arrayidx, align 4, !dbg !256, !tbaa !164
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !93), !dbg !258
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !95), !dbg !258
  %3 = trunc i64 %indvars.iv73 to i32, !dbg !259
  store i32 %3, i32* %call7, align 4, !dbg !259, !tbaa !164
  br label %while.body, !dbg !260

while.cond.loopexit:                              ; preds = %for.inc, %while.body
  %last.1.lcssa = phi i32 [ %last.067, %while.body ], [ %last.2, %for.inc ]
  %4 = trunc i64 %indvars.iv71 to i32, !dbg !260
  %cmp14 = icmp slt i32 %4, %last.1.lcssa, !dbg !260
  br i1 %cmp14, label %while.cond.loopexit.while.body_crit_edge, label %while.end, !dbg !260

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  %arrayidx16.phi.trans.insert = getelementptr inbounds i32* %call7, i64 %indvars.iv.next72
  %.pre75 = load i32* %arrayidx16.phi.trans.insert, align 4, !dbg !261, !tbaa !164
  br label %while.body, !dbg !260

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %if.then10
  %5 = phi i32 [ %.pre75, %while.cond.loopexit.while.body_crit_edge ], [ %3, %if.then10 ]
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %while.cond.loopexit.while.body_crit_edge ], [ 0, %if.then10 ]
  %last.067 = phi i32 [ %last.1.lcssa, %while.cond.loopexit.while.body_crit_edge ], [ 0, %if.then10 ]
  %indvars.iv.next72 = add i64 %indvars.iv71, 1, !dbg !260
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !97), !dbg !261
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %5, i32* %usize, i32** %uadj) #7, !dbg !263
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !264
  call void @llvm.dbg.value(metadata !{i32* %usize}, i64 0, metadata !98), !dbg !264
  %6 = load i32* %usize, align 4, !dbg !264, !tbaa !164
  %cmp1863 = icmp sgt i32 %6, 0, !dbg !264
  br i1 %cmp1863, label %for.body19.lr.ph, label %while.cond.loopexit, !dbg !264

for.body19.lr.ph:                                 ; preds = %while.body
  call void @llvm.dbg.value(metadata !{i32** %uadj}, i64 0, metadata !103), !dbg !266
  %7 = load i32** %uadj, align 8, !dbg !266, !tbaa !169
  br label %for.body19, !dbg !264

for.body19:                                       ; preds = %for.body19.lr.ph, %for.inc
  %8 = phi i32 [ %6, %for.body19.lr.ph ], [ %11, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %last.164 = phi i32 [ %last.067, %for.body19.lr.ph ], [ %last.2, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %uadj}, i64 0, metadata !103), !dbg !266
  %arrayidx21 = getelementptr inbounds i32* %7, i64 %indvars.iv, !dbg !266
  %9 = load i32* %arrayidx21, align 4, !dbg !266, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !100), !dbg !266
  %idxprom22 = sext i32 %9 to i64, !dbg !268
  %arrayidx23 = getelementptr inbounds i32* %call6, i64 %idxprom22, !dbg !268
  %10 = load i32* %arrayidx23, align 4, !dbg !268, !tbaa !164
  %cmp24 = icmp eq i32 %10, -1, !dbg !268
  br i1 %cmp24, label %if.then25, label %for.inc, !dbg !268

if.then25:                                        ; preds = %for.body19
  %inc26 = add nsw i32 %last.164, 1, !dbg !269
  call void @llvm.dbg.value(metadata !{i32 %inc26}, i64 0, metadata !93), !dbg !269
  %idxprom27 = sext i32 %inc26 to i64, !dbg !269
  %arrayidx28 = getelementptr inbounds i32* %call7, i64 %idxprom27, !dbg !269
  store i32 %9, i32* %arrayidx28, align 4, !dbg !269, !tbaa !164
  store i32 %ncomp.070, i32* %arrayidx23, align 4, !dbg !271, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32* %usize}, i64 0, metadata !98), !dbg !264
  %.pre = load i32* %usize, align 4, !dbg !264, !tbaa !164
  br label %for.inc, !dbg !272

for.inc:                                          ; preds = %for.body19, %if.then25
  %11 = phi i32 [ %.pre, %if.then25 ], [ %8, %for.body19 ], !dbg !264
  %last.2 = phi i32 [ %inc26, %if.then25 ], [ %last.164, %for.body19 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !264
  call void @llvm.dbg.value(metadata !{i32* %usize}, i64 0, metadata !98), !dbg !264
  %12 = trunc i64 %indvars.iv.next to i32, !dbg !264
  %cmp18 = icmp slt i32 %12, %11, !dbg !264
  br i1 %cmp18, label %for.body19, label %while.cond.loopexit, !dbg !264

while.end:                                        ; preds = %while.cond.loopexit
  %inc33 = add nsw i32 %ncomp.070, 1, !dbg !273
  call void @llvm.dbg.value(metadata !{i32 %inc33}, i64 0, metadata !94), !dbg !273
  br label %for.inc35, !dbg !274

for.inc35:                                        ; preds = %for.body, %while.end
  %ncomp.1 = phi i32 [ %inc33, %while.end ], [ %ncomp.070, %for.body ]
  %indvars.iv.next74 = add i64 %indvars.iv73, 1, !dbg !252
  %lftr.wideiv = trunc i64 %indvars.iv.next74 to i32, !dbg !252
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !252
  br i1 %exitcond, label %for.end37, label %for.body, !dbg !252

for.end37:                                        ; preds = %for.inc35
  call void @IVfree(i32* %call7) #5, !dbg !275
  br label %return, !dbg !276

return:                                           ; preds = %if.end, %for.end37
  %retval.0 = phi %struct._IV* [ %call5, %for.end37 ], [ null, %if.end ]
  ret %struct._IV* %retval.0, !dbg !276
}

; Function Attrs: optsize
declare %struct._IV* @IV_new() #4

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #4

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #4

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: nounwind optsize uwtable
define void @Graph_componentStats(%struct._Graph* %g, i32* %map, i32* %counts, i32* %weights) #0 {
entry:
  %v = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !109), !dbg !277
  call void @llvm.dbg.value(metadata !{i32* %map}, i64 0, metadata !110), !dbg !278
  call void @llvm.dbg.value(metadata !{i32* %counts}, i64 0, metadata !111), !dbg !279
  call void @llvm.dbg.value(metadata !{i32* %weights}, i64 0, metadata !112), !dbg !280
  call void @llvm.dbg.declare(metadata !{i32* %v}, metadata !115), !dbg !281
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !282
  %cmp1 = icmp eq i32* %map, null, !dbg !282
  %or.cond = or i1 %cmp, %cmp1, !dbg !282
  %cmp3 = icmp eq i32* %counts, null, !dbg !282
  %or.cond50 = or i1 %or.cond, %cmp3, !dbg !282
  %cmp5 = icmp eq i32* %weights, null, !dbg !282
  %or.cond51 = or i1 %or.cond50, %cmp5, !dbg !282
  br i1 %or.cond51, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !283, !tbaa !169
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str8, i64 0, i64 0), %struct._Graph* %g, i32* %map, i32* %counts, i32* %weights) #5, !dbg !283
  call void @exit(i32 -1) #6, !dbg !285
  unreachable, !dbg !285

if.end:                                           ; preds = %entry
  %nvtx6 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !286
  %1 = load i32* %nvtx6, align 4, !dbg !286, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !114), !dbg !286
  %call7 = call i32 @IVmax(i32 %1, i32* %map, i32* %v) #5, !dbg !287
  %add = add nsw i32 %call7, 1, !dbg !287
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !113), !dbg !287
  %vwghts8 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !288
  %2 = load i32** %vwghts8, align 8, !dbg !288, !tbaa !169
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !117), !dbg !288
  %cmp9 = icmp eq i32* %2, null, !dbg !288
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !115), !dbg !289
  store i32 0, i32* %v, align 4, !dbg !289, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32* %v}, i64 0, metadata !115), !dbg !292
  %cmp2152 = icmp sgt i32 %1, 0, !dbg !292
  br i1 %cmp9, label %for.cond20.preheader, label %for.cond.preheader, !dbg !288

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp2152, label %for.body, label %if.end31, !dbg !289

for.cond20.preheader:                             ; preds = %if.end
  br i1 %cmp2152, label %for.body22.lr.ph, label %for.end30, !dbg !292

for.body22.lr.ph:                                 ; preds = %for.cond20.preheader
  call void @llvm.dbg.value(metadata !{i32* %v}, i64 0, metadata !115), !dbg !292
  %3 = icmp sgt i32 %1, 1
  br label %for.body22, !dbg !292

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %4 = phi i32 [ %inc19, %for.body ], [ 0, %for.cond.preheader ]
  %idxprom = sext i32 %4 to i64, !dbg !295
  %arrayidx = getelementptr inbounds i32* %map, i64 %idxprom, !dbg !295
  %5 = load i32* %arrayidx, align 4, !dbg !295, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !116), !dbg !295
  %idxprom12 = sext i32 %5 to i64, !dbg !297
  %arrayidx13 = getelementptr inbounds i32* %counts, i64 %idxprom12, !dbg !297
  %6 = load i32* %arrayidx13, align 4, !dbg !297, !tbaa !164
  %inc = add nsw i32 %6, 1, !dbg !297
  store i32 %inc, i32* %arrayidx13, align 4, !dbg !297, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32* %v}, i64 0, metadata !115), !dbg !298
  %arrayidx15 = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !298
  %7 = load i32* %arrayidx15, align 4, !dbg !298, !tbaa !164
  %arrayidx17 = getelementptr inbounds i32* %weights, i64 %idxprom12, !dbg !298
  %8 = load i32* %arrayidx17, align 4, !dbg !298, !tbaa !164
  %add18 = add nsw i32 %8, %7, !dbg !298
  store i32 %add18, i32* %arrayidx17, align 4, !dbg !298, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32* %v}, i64 0, metadata !115), !dbg !289
  %inc19 = add nsw i32 %4, 1, !dbg !289
  call void @llvm.dbg.value(metadata !{i32 %inc19}, i64 0, metadata !115), !dbg !289
  store i32 %inc19, i32* %v, align 4, !dbg !289, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32* %v}, i64 0, metadata !115), !dbg !289
  %cmp11 = icmp slt i32 %inc19, %1, !dbg !289
  br i1 %cmp11, label %for.body, label %if.end31, !dbg !289

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %inc2953 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc29, %for.body22 ], !dbg !299
  %idxprom23 = sext i32 %inc2953 to i64, !dbg !299
  %arrayidx24 = getelementptr inbounds i32* %map, i64 %idxprom23, !dbg !299
  %9 = load i32* %arrayidx24, align 4, !dbg !299, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !116), !dbg !299
  %idxprom25 = sext i32 %9 to i64, !dbg !301
  %arrayidx26 = getelementptr inbounds i32* %counts, i64 %idxprom25, !dbg !301
  %10 = load i32* %arrayidx26, align 4, !dbg !301, !tbaa !164
  %inc27 = add nsw i32 %10, 1, !dbg !301
  store i32 %inc27, i32* %arrayidx26, align 4, !dbg !301, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32* %v}, i64 0, metadata !115), !dbg !292
  %inc29 = add nsw i32 %inc2953, 1, !dbg !292
  call void @llvm.dbg.value(metadata !{i32 %smax}, i64 0, metadata !115), !dbg !292
  call void @llvm.dbg.value(metadata !{i32* %v}, i64 0, metadata !115), !dbg !292
  %cmp21 = icmp slt i32 %inc29, %1, !dbg !292
  br i1 %cmp21, label %for.body22, label %for.cond20.for.end30_crit_edge, !dbg !292

for.cond20.for.end30_crit_edge:                   ; preds = %for.body22
  %smax = select i1 %3, i32 %1, i32 1
  call void @llvm.dbg.value(metadata !{i32 %smax}, i64 0, metadata !115), !dbg !292
  store i32 %smax, i32* %v, align 4, !dbg !292, !tbaa !164
  br label %for.end30, !dbg !292

for.end30:                                        ; preds = %for.cond20.for.end30_crit_edge, %for.cond20.preheader
  call void @IVcopy(i32 %add, i32* %weights, i32* %counts) #5, !dbg !302
  br label %if.end31

if.end31:                                         ; preds = %for.cond.preheader, %for.body, %for.end30
  ret void, !dbg !303
}

; Function Attrs: optsize
declare i32 @IVmax(i32, i32*, i32*) #4

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #4

; Function Attrs: nounwind optsize uwtable
define %struct._Graph* @Graph_subGraph(%struct._Graph* %g, i32 %icomp, i32* %compids, i32** %pmap) #0 {
entry:
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !122), !dbg !304
  call void @llvm.dbg.value(metadata !{i32 %icomp}, i64 0, metadata !123), !dbg !305
  call void @llvm.dbg.value(metadata !{i32* %compids}, i64 0, metadata !124), !dbg !306
  call void @llvm.dbg.value(metadata !{i32** %pmap}, i64 0, metadata !125), !dbg !307
  call void @llvm.dbg.declare(metadata !{i32* %vsize}, metadata !138), !dbg !308
  call void @llvm.dbg.declare(metadata !{i32** %vadj}, metadata !143), !dbg !309
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !310
  %cmp1 = icmp slt i32 %icomp, 1, !dbg !310
  %or.cond = or i1 %cmp, %cmp1, !dbg !310
  %cmp3 = icmp eq i32* %compids, null, !dbg !310
  %or.cond279 = or i1 %or.cond, %cmp3, !dbg !310
  %cmp5 = icmp eq i32** %pmap, null, !dbg !310
  %or.cond280 = or i1 %or.cond279, %cmp5, !dbg !310
  br i1 %or.cond280, label %if.then, label %if.end, !dbg !310

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !311, !tbaa !169
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str9, i64 0, i64 0), %struct._Graph* %g, i32 %icomp, i32* %compids, i32** %pmap) #5, !dbg !311
  call void @exit(i32 -1) #6, !dbg !313
  unreachable, !dbg !313

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0, !dbg !314
  %1 = load i32* %type, align 4, !dbg !314, !tbaa !164
  %2 = icmp ugt i32 %1, 1, !dbg !314
  br i1 %2, label %if.then10, label %if.end12, !dbg !314

if.then10:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !315, !tbaa !169
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([84 x i8]* @.str10, i64 0, i64 0), %struct._Graph* %g, i32 %icomp, i32* %compids, i32** %pmap) #5, !dbg !315
  call void @exit(i32 -1) #6, !dbg !317
  unreachable, !dbg !317

if.end12:                                         ; preds = %if.end
  %nvtx13 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !318
  %4 = load i32* %nvtx13, align 4, !dbg !318, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !132), !dbg !318
  %nvbnd14 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !319
  %5 = load i32* %nvbnd14, align 4, !dbg !319, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !130), !dbg !319
  %add = add nsw i32 %5, %4, !dbg !320
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !134), !dbg !320
  %call15 = call i32* @IVinit(i32 %add, i32 -1) #5, !dbg !321
  call void @llvm.dbg.value(metadata !{i32* %call15}, i64 0, metadata !142), !dbg !321
  %call16 = call i32* @IVinit(i32 %add, i32 -1) #5, !dbg !322
  call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !141), !dbg !322
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !136), !dbg !323
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !127), !dbg !323
  %cmp17304 = icmp sgt i32 %4, 0, !dbg !323
  br i1 %cmp17304, label %for.body, label %for.end67, !dbg !323

for.cond26.preheader:                             ; preds = %for.inc
  %cmp27300 = icmp sgt i32 %count.1, 0, !dbg !325
  br i1 %cmp27300, label %for.body28, label %for.end67, !dbg !325

for.body:                                         ; preds = %if.end12, %for.inc
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %for.inc ], [ 0, %if.end12 ]
  %count.0306 = phi i32 [ %count.1, %for.inc ], [ 0, %if.end12 ]
  %arrayidx = getelementptr inbounds i32* %compids, i64 %indvars.iv331, !dbg !327
  %6 = load i32* %arrayidx, align 4, !dbg !327, !tbaa !164
  %cmp18 = icmp eq i32 %6, %icomp, !dbg !327
  br i1 %cmp18, label %if.then19, label %for.inc, !dbg !327

if.then19:                                        ; preds = %for.body
  %idxprom20 = sext i32 %count.0306 to i64, !dbg !329
  %arrayidx21 = getelementptr inbounds i32* %call15, i64 %idxprom20, !dbg !329
  %7 = trunc i64 %indvars.iv331 to i32, !dbg !329
  store i32 %7, i32* %arrayidx21, align 4, !dbg !329, !tbaa !164
  %inc = add nsw i32 %count.0306, 1, !dbg !331
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !127), !dbg !331
  %arrayidx23 = getelementptr inbounds i32* %call16, i64 %indvars.iv331, !dbg !331
  store i32 %count.0306, i32* %arrayidx23, align 4, !dbg !331, !tbaa !164
  br label %for.inc, !dbg !332

for.inc:                                          ; preds = %for.body, %if.then19
  %count.1 = phi i32 [ %inc, %if.then19 ], [ %count.0306, %for.body ]
  %indvars.iv.next332 = add i64 %indvars.iv331, 1, !dbg !323
  %lftr.wideiv333 = trunc i64 %indvars.iv.next332 to i32, !dbg !323
  %exitcond334 = icmp eq i32 %lftr.wideiv333, %4, !dbg !323
  br i1 %exitcond334, label %for.cond26.preheader, label %for.body, !dbg !323

for.body28:                                       ; preds = %for.cond26.preheader, %for.inc65
  %indvars.iv327 = phi i64 [ %indvars.iv.next328, %for.inc65 ], [ 0, %for.cond26.preheader ]
  %count.2302 = phi i32 [ %count.3.lcssa, %for.inc65 ], [ %count.1, %for.cond26.preheader ]
  %arrayidx30 = getelementptr inbounds i32* %call15, i64 %indvars.iv327, !dbg !333
  %8 = load i32* %arrayidx30, align 4, !dbg !333, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !136), !dbg !333
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %8, i32* %vsize, i32** %vadj) #7, !dbg !335
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !128), !dbg !336
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !138), !dbg !336
  %9 = load i32* %vsize, align 4, !dbg !336, !tbaa !164
  %cmp32296 = icmp sgt i32 %9, 0, !dbg !336
  br i1 %cmp32296, label %for.body33.lr.ph, label %for.inc65, !dbg !336

for.body33.lr.ph:                                 ; preds = %for.body28
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !143), !dbg !338
  %10 = load i32** %vadj, align 8, !dbg !338, !tbaa !169
  br label %for.body33, !dbg !336

for.body33:                                       ; preds = %for.body33.lr.ph, %for.inc62
  %indvars.iv325 = phi i64 [ 0, %for.body33.lr.ph ], [ %indvars.iv.next326, %for.inc62 ]
  %count.3298 = phi i32 [ %count.2302, %for.body33.lr.ph ], [ %count.4, %for.inc62 ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !143), !dbg !338
  %arrayidx35 = getelementptr inbounds i32* %10, i64 %indvars.iv325, !dbg !338
  %11 = load i32* %arrayidx35, align 4, !dbg !338, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !139), !dbg !338
  %cmp36 = icmp slt i32 %11, %4, !dbg !340
  %idxprom38 = sext i32 %11 to i64, !dbg !341
  br i1 %cmp36, label %if.then37, label %if.else, !dbg !340

if.then37:                                        ; preds = %for.body33
  %arrayidx39 = getelementptr inbounds i32* %compids, i64 %idxprom38, !dbg !341
  %12 = load i32* %arrayidx39, align 4, !dbg !341, !tbaa !164
  %cmp40 = icmp eq i32 %12, 0, !dbg !341
  br i1 %cmp40, label %land.lhs.true, label %for.inc62, !dbg !341

land.lhs.true:                                    ; preds = %if.then37
  %arrayidx42 = getelementptr inbounds i32* %call16, i64 %idxprom38, !dbg !341
  %13 = load i32* %arrayidx42, align 4, !dbg !341, !tbaa !164
  %cmp43 = icmp eq i32 %13, -1, !dbg !341
  br i1 %cmp43, label %if.then44, label %for.inc62, !dbg !341

if.then44:                                        ; preds = %land.lhs.true
  %idxprom45 = sext i32 %count.3298 to i64, !dbg !343
  %arrayidx46 = getelementptr inbounds i32* %call15, i64 %idxprom45, !dbg !343
  store i32 %11, i32* %arrayidx46, align 4, !dbg !343, !tbaa !164
  %inc47 = add nsw i32 %count.3298, 1, !dbg !345
  call void @llvm.dbg.value(metadata !{i32 %inc47}, i64 0, metadata !127), !dbg !345
  store i32 %count.3298, i32* %arrayidx42, align 4, !dbg !345, !tbaa !164
  br label %for.inc62, !dbg !346

if.else:                                          ; preds = %for.body33
  %arrayidx52 = getelementptr inbounds i32* %call16, i64 %idxprom38, !dbg !347
  %14 = load i32* %arrayidx52, align 4, !dbg !347, !tbaa !164
  %cmp53 = icmp eq i32 %14, -1, !dbg !347
  br i1 %cmp53, label %if.then54, label %for.inc62, !dbg !347

if.then54:                                        ; preds = %if.else
  %idxprom55 = sext i32 %count.3298 to i64, !dbg !348
  %arrayidx56 = getelementptr inbounds i32* %call15, i64 %idxprom55, !dbg !348
  store i32 %11, i32* %arrayidx56, align 4, !dbg !348, !tbaa !164
  %inc57 = add nsw i32 %count.3298, 1, !dbg !350
  call void @llvm.dbg.value(metadata !{i32 %inc57}, i64 0, metadata !127), !dbg !350
  store i32 %count.3298, i32* %arrayidx52, align 4, !dbg !350, !tbaa !164
  br label %for.inc62, !dbg !351

for.inc62:                                        ; preds = %if.then44, %land.lhs.true, %if.then37, %if.then54, %if.else
  %count.4 = phi i32 [ %inc47, %if.then44 ], [ %count.3298, %land.lhs.true ], [ %count.3298, %if.then37 ], [ %inc57, %if.then54 ], [ %count.3298, %if.else ]
  %indvars.iv.next326 = add i64 %indvars.iv325, 1, !dbg !336
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !138), !dbg !336
  %15 = load i32* %vsize, align 4, !dbg !336, !tbaa !164
  %16 = trunc i64 %indvars.iv.next326 to i32, !dbg !336
  %cmp32 = icmp slt i32 %16, %15, !dbg !336
  br i1 %cmp32, label %for.body33, label %for.inc65, !dbg !336

for.inc65:                                        ; preds = %for.inc62, %for.body28
  %count.3.lcssa = phi i32 [ %count.2302, %for.body28 ], [ %count.4, %for.inc62 ]
  %indvars.iv.next328 = add i64 %indvars.iv327, 1, !dbg !325
  %lftr.wideiv329 = trunc i64 %indvars.iv.next328 to i32, !dbg !325
  %exitcond330 = icmp eq i32 %lftr.wideiv329, %count.1, !dbg !325
  br i1 %exitcond330, label %for.end67, label %for.body28, !dbg !325

for.end67:                                        ; preds = %if.end12, %for.inc65, %for.cond26.preheader
  %cmp27300339 = phi i1 [ false, %for.cond26.preheader ], [ %cmp27300, %for.inc65 ], [ false, %if.end12 ]
  %count.0.lcssa338 = phi i32 [ %count.1, %for.cond26.preheader ], [ %count.1, %for.inc65 ], [ 0, %if.end12 ]
  %count.2.lcssa = phi i32 [ %count.1, %for.cond26.preheader ], [ %count.3.lcssa, %for.inc65 ], [ 0, %if.end12 ]
  %sub = sub nsw i32 %count.2.lcssa, %count.0.lcssa338, !dbg !352
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !131), !dbg !352
  call void @llvm.dbg.value(metadata !{i32 %count.2.lcssa}, i64 0, metadata !135), !dbg !353
  %idxprom68 = sext i32 %count.0.lcssa338 to i64, !dbg !354
  %arrayidx69 = getelementptr inbounds i32* %call15, i64 %idxprom68, !dbg !354
  call void @IVqsortUp(i32 %sub, i32* %arrayidx69) #5, !dbg !354
  call void @llvm.dbg.value(metadata !{i32 %count.0.lcssa338}, i64 0, metadata !128), !dbg !355
  %cmp71294 = icmp slt i32 %count.0.lcssa338, %count.2.lcssa, !dbg !355
  br i1 %cmp71294, label %for.body72, label %for.end79, !dbg !355

for.body72:                                       ; preds = %for.end67, %for.body72
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %for.body72 ], [ %idxprom68, %for.end67 ]
  %arrayidx74 = getelementptr inbounds i32* %call15, i64 %indvars.iv321, !dbg !357
  %17 = load i32* %arrayidx74, align 4, !dbg !357, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !136), !dbg !357
  %idxprom75 = sext i32 %17 to i64, !dbg !359
  %arrayidx76 = getelementptr inbounds i32* %call16, i64 %idxprom75, !dbg !359
  %18 = trunc i64 %indvars.iv321 to i32, !dbg !359
  store i32 %18, i32* %arrayidx76, align 4, !dbg !359, !tbaa !164
  %indvars.iv.next322 = add i64 %indvars.iv321, 1, !dbg !355
  %lftr.wideiv323 = trunc i64 %indvars.iv.next322 to i32, !dbg !355
  %exitcond324 = icmp eq i32 %lftr.wideiv323, %count.2.lcssa, !dbg !355
  br i1 %exitcond324, label %for.end79, label %for.body72, !dbg !355

for.end79:                                        ; preds = %for.body72, %for.end67
  %call80 = call %struct._Graph* @Graph_new() #5, !dbg !360
  call void @llvm.dbg.value(metadata !{%struct._Graph* %call80}, i64 0, metadata !126), !dbg !360
  %19 = load i32* %type, align 4, !dbg !361, !tbaa !164
  call void @Graph_init1(%struct._Graph* %call80, i32 %19, i32 %count.0.lcssa338, i32 %sub, i32 0, i32 1, i32 3) #5, !dbg !361
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !137), !dbg !362
  br i1 %cmp27300339, label %for.body84.lr.ph, label %for.end101, !dbg !362

for.body84.lr.ph:                                 ; preds = %for.end79
  %adjIVL = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 6, !dbg !364
  br label %for.body84, !dbg !362

for.body84:                                       ; preds = %for.end98, %for.body84.lr.ph
  %indvars.iv317 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next318, %for.end98 ]
  %arrayidx86 = getelementptr inbounds i32* %call15, i64 %indvars.iv317, !dbg !366
  %20 = load i32* %arrayidx86, align 4, !dbg !366, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !136), !dbg !366
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %20, i32* %vsize, i32** %vadj) #7, !dbg !367
  %21 = load %struct._IVL** %adjIVL, align 8, !dbg !364, !tbaa !169
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !138), !dbg !364
  %22 = load i32* %vsize, align 4, !dbg !364, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !143), !dbg !364
  %23 = load i32** %vadj, align 8, !dbg !364, !tbaa !169
  %24 = trunc i64 %indvars.iv317 to i32, !dbg !364
  call void @IVL_setPointerToList(%struct._IVL* %21, i32 %24, i32 %22, i32* %23) #5, !dbg !364
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !128), !dbg !368
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !138), !dbg !368
  %25 = load i32* %vsize, align 4, !dbg !368, !tbaa !164
  %cmp88289 = icmp sgt i32 %25, 0, !dbg !368
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !143), !dbg !370
  %26 = load i32** %vadj, align 8, !dbg !370, !tbaa !169
  br i1 %cmp88289, label %for.body89, label %for.end98, !dbg !368

for.body89:                                       ; preds = %for.body84, %for.body89
  %indvars.iv315 = phi i64 [ %indvars.iv.next316, %for.body89 ], [ 0, %for.body84 ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !143), !dbg !370
  %arrayidx91 = getelementptr inbounds i32* %26, i64 %indvars.iv315, !dbg !370
  %27 = load i32* %arrayidx91, align 4, !dbg !370, !tbaa !164
  %idxprom92 = sext i32 %27 to i64, !dbg !370
  %arrayidx93 = getelementptr inbounds i32* %call16, i64 %idxprom92, !dbg !370
  %28 = load i32* %arrayidx93, align 4, !dbg !370, !tbaa !164
  store i32 %28, i32* %arrayidx91, align 4, !dbg !370, !tbaa !164
  %indvars.iv.next316 = add i64 %indvars.iv315, 1, !dbg !368
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !138), !dbg !368
  %29 = load i32* %vsize, align 4, !dbg !368, !tbaa !164
  %30 = trunc i64 %indvars.iv.next316 to i32, !dbg !368
  %cmp88 = icmp slt i32 %30, %29, !dbg !368
  br i1 %cmp88, label %for.body89, label %for.end98, !dbg !368

for.end98:                                        ; preds = %for.body84, %for.body89
  %.lcssa = phi i32 [ %29, %for.body89 ], [ %25, %for.body84 ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !143), !dbg !372
  call void @IVqsortUp(i32 %.lcssa, i32* %26) #5, !dbg !372
  %indvars.iv.next318 = add i64 %indvars.iv317, 1, !dbg !362
  %lftr.wideiv319 = trunc i64 %indvars.iv.next318 to i32, !dbg !362
  %exitcond320 = icmp eq i32 %lftr.wideiv319, %count.0.lcssa338, !dbg !362
  br i1 %exitcond320, label %for.end101, label %for.body84, !dbg !362

for.end101:                                       ; preds = %for.end98, %for.end79
  %cmp102 = icmp sgt i32 %sub, 0, !dbg !373
  br i1 %cmp102, label %if.then103, label %if.end130, !dbg !373

if.then103:                                       ; preds = %for.end101
  %call104 = call i32* @IVinit(i32 %add, i32 -1) #5, !dbg !374
  call void @llvm.dbg.value(metadata !{i32* %call104}, i64 0, metadata !144), !dbg !374
  call void @llvm.dbg.value(metadata !{i32 %count.0.lcssa338}, i64 0, metadata !137), !dbg !375
  br i1 %cmp71294, label %for.body107.lr.ph, label %for.end129, !dbg !375

for.body107.lr.ph:                                ; preds = %if.then103
  %adjIVL126 = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 6, !dbg !377
  br label %for.body107, !dbg !375

for.body107:                                      ; preds = %for.end125, %for.body107.lr.ph
  %indvars.iv310 = phi i64 [ %idxprom68, %for.body107.lr.ph ], [ %indvars.iv.next311, %for.end125 ]
  %arrayidx109 = getelementptr inbounds i32* %call15, i64 %indvars.iv310, !dbg !379
  %31 = load i32* %arrayidx109, align 4, !dbg !379, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !136), !dbg !379
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %31, i32* %vsize, i32** %vadj) #7, !dbg !380
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !128), !dbg !381
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !127), !dbg !381
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !138), !dbg !381
  %32 = load i32* %vsize, align 4, !dbg !381, !tbaa !164
  %cmp111284 = icmp sgt i32 %32, 0, !dbg !381
  br i1 %cmp111284, label %for.body112.lr.ph, label %for.end125, !dbg !381

for.body112.lr.ph:                                ; preds = %for.body107
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !143), !dbg !383
  %33 = load i32** %vadj, align 8, !dbg !383, !tbaa !169
  br label %for.body112, !dbg !381

for.body112:                                      ; preds = %for.body112.lr.ph, %for.inc123
  %34 = phi i32 [ %32, %for.body112.lr.ph ], [ %37, %for.inc123 ]
  %indvars.iv308 = phi i64 [ 0, %for.body112.lr.ph ], [ %indvars.iv.next309, %for.inc123 ]
  %count.5286 = phi i32 [ 0, %for.body112.lr.ph ], [ %count.6, %for.inc123 ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !143), !dbg !383
  %arrayidx114 = getelementptr inbounds i32* %33, i64 %indvars.iv308, !dbg !383
  %35 = load i32* %arrayidx114, align 4, !dbg !383, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %35}, i64 0, metadata !139), !dbg !383
  %idxprom115 = sext i32 %35 to i64, !dbg !385
  %arrayidx116 = getelementptr inbounds i32* %call16, i64 %idxprom115, !dbg !385
  %36 = load i32* %arrayidx116, align 4, !dbg !385, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %36}, i64 0, metadata !140), !dbg !385
  %cmp117 = icmp eq i32 %36, -1, !dbg !385
  br i1 %cmp117, label %for.inc123, label %if.then118, !dbg !385

if.then118:                                       ; preds = %for.body112
  %inc119 = add nsw i32 %count.5286, 1, !dbg !386
  call void @llvm.dbg.value(metadata !{i32 %inc119}, i64 0, metadata !127), !dbg !386
  %idxprom120 = sext i32 %count.5286 to i64, !dbg !386
  %arrayidx121 = getelementptr inbounds i32* %call104, i64 %idxprom120, !dbg !386
  store i32 %36, i32* %arrayidx121, align 4, !dbg !386, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !138), !dbg !381
  %.pre = load i32* %vsize, align 4, !dbg !381, !tbaa !164
  br label %for.inc123, !dbg !388

for.inc123:                                       ; preds = %for.body112, %if.then118
  %37 = phi i32 [ %.pre, %if.then118 ], [ %34, %for.body112 ], !dbg !381
  %count.6 = phi i32 [ %inc119, %if.then118 ], [ %count.5286, %for.body112 ]
  %indvars.iv.next309 = add i64 %indvars.iv308, 1, !dbg !381
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !138), !dbg !381
  %38 = trunc i64 %indvars.iv.next309 to i32, !dbg !381
  %cmp111 = icmp slt i32 %38, %37, !dbg !381
  br i1 %cmp111, label %for.body112, label %for.end125, !dbg !381

for.end125:                                       ; preds = %for.inc123, %for.body107
  %count.5.lcssa = phi i32 [ 0, %for.body107 ], [ %count.6, %for.inc123 ]
  call void @IVqsortUp(i32 %count.5.lcssa, i32* %call104) #5, !dbg !389
  %39 = load %struct._IVL** %adjIVL126, align 8, !dbg !377, !tbaa !169
  %40 = trunc i64 %indvars.iv310 to i32, !dbg !377
  call void @IVL_setList(%struct._IVL* %39, i32 %40, i32 %count.5.lcssa, i32* %call104) #5, !dbg !377
  %indvars.iv.next311 = add i64 %indvars.iv310, 1, !dbg !375
  %lftr.wideiv312 = trunc i64 %indvars.iv.next311 to i32, !dbg !375
  %exitcond313 = icmp eq i32 %lftr.wideiv312, %count.2.lcssa, !dbg !375
  br i1 %exitcond313, label %for.end129, label %for.body107, !dbg !375

for.end129:                                       ; preds = %for.end125, %if.then103
  call void @IVfree(i32* %call104) #5, !dbg !390
  br label %if.end130, !dbg !391

if.end130:                                        ; preds = %for.end129, %for.end101
  %type131 = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 0, !dbg !392
  %41 = load i32* %type131, align 4, !dbg !392, !tbaa !164
  %rem = srem i32 %41, 2, !dbg !392
  %cmp132 = icmp eq i32 %rem, 1, !dbg !392
  br i1 %cmp132, label %if.then133, label %if.else152, !dbg !392

if.then133:                                       ; preds = %if.end130
  %totvwght = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 4, !dbg !393
  store i32 0, i32* %totvwght, align 4, !dbg !393, !tbaa !164
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !137), !dbg !395
  %cmp135282 = icmp sgt i32 %count.2.lcssa, 0, !dbg !395
  br i1 %cmp135282, label %for.body136.lr.ph, label %if.end155, !dbg !395

for.body136.lr.ph:                                ; preds = %if.then133
  %vwghts = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !397
  %42 = load i32** %vwghts, align 8, !dbg !397, !tbaa !169
  %vwghts147 = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 7, !dbg !399
  %43 = load i32** %vwghts147, align 8, !dbg !399, !tbaa !169
  br label %for.body136, !dbg !395

for.body136:                                      ; preds = %for.body136.for.body136_crit_edge, %for.body136.lr.ph
  %44 = phi i32 [ 0, %for.body136.lr.ph ], [ %.pre335, %for.body136.for.body136_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body136.lr.ph ], [ %indvars.iv.next, %for.body136.for.body136_crit_edge ]
  %arrayidx138 = getelementptr inbounds i32* %call15, i64 %indvars.iv, !dbg !400
  %45 = load i32* %arrayidx138, align 4, !dbg !400, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %45}, i64 0, metadata !136), !dbg !400
  %idxprom139 = sext i32 %45 to i64, !dbg !397
  %arrayidx140 = getelementptr inbounds i32* %42, i64 %idxprom139, !dbg !397
  %46 = load i32* %arrayidx140, align 4, !dbg !397, !tbaa !164
  %add142 = add nsw i32 %44, %46, !dbg !397
  store i32 %add142, i32* %totvwght, align 4, !dbg !397, !tbaa !164
  %47 = load i32* %arrayidx140, align 4, !dbg !399, !tbaa !164
  %arrayidx148 = getelementptr inbounds i32* %43, i64 %indvars.iv, !dbg !399
  store i32 %47, i32* %arrayidx148, align 4, !dbg !399, !tbaa !164
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !395
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !395
  %exitcond = icmp eq i32 %lftr.wideiv, %count.2.lcssa, !dbg !395
  br i1 %exitcond, label %if.end155, label %for.body136.for.body136_crit_edge, !dbg !395

for.body136.for.body136_crit_edge:                ; preds = %for.body136
  %.pre335 = load i32* %totvwght, align 4, !dbg !397, !tbaa !164
  br label %for.body136, !dbg !395

if.else152:                                       ; preds = %if.end130
  %nvtx153 = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 1, !dbg !401
  %48 = load i32* %nvtx153, align 4, !dbg !401, !tbaa !164
  %totvwght154 = getelementptr inbounds %struct._Graph* %call80, i64 0, i32 4, !dbg !401
  store i32 %48, i32* %totvwght154, align 4, !dbg !401, !tbaa !164
  br label %if.end155

if.end155:                                        ; preds = %if.then133, %for.body136, %if.else152
  call void @IVfree(i32* %call16) #5, !dbg !403
  %call156 = call i32* @IVinit(i32 %count.2.lcssa, i32 -1) #5, !dbg !404
  store i32* %call156, i32** %pmap, align 8, !dbg !404, !tbaa !169
  call void @IVcopy(i32 %count.2.lcssa, i32* %call156, i32* %call15) #5, !dbg !405
  call void @IVfree(i32* %call15) #5, !dbg !406
  ret %struct._Graph* %call80, !dbg !407
}

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #4

; Function Attrs: optsize
declare %struct._Graph* @Graph_new() #4

; Function Attrs: optsize
declare void @Graph_init1(%struct._Graph*, i32, i32, i32, i32, i32, i32) #4

; Function Attrs: optsize
declare void @IVL_setPointerToList(%struct._IVL*, i32, i32, i32*) #4

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_isSymmetric(%struct._Graph* %graph) #0 {
entry:
  %vsize = alloca i32, align 4
  %wsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %wadj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._Graph* %graph}, i64 0, metadata !148), !dbg !408
  call void @llvm.dbg.declare(metadata !{i32* %vsize}, metadata !154), !dbg !409
  call void @llvm.dbg.declare(metadata !{i32* %wsize}, metadata !156), !dbg !409
  call void @llvm.dbg.declare(metadata !{i32** %vadj}, metadata !157), !dbg !410
  call void @llvm.dbg.declare(metadata !{i32** %wadj}, metadata !158), !dbg !410
  %cmp = icmp eq %struct._Graph* %graph, null, !dbg !411
  br i1 %cmp, label %if.then, label %if.end, !dbg !411

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !412, !tbaa !169
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str11, i64 0, i64 0), %struct._Graph* null) #5, !dbg !412
  call void @exit(i32 -1) #6, !dbg !414
  unreachable, !dbg !414

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !415, i64 0, metadata !152), !dbg !416
  %nvtx1 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1, !dbg !417
  %1 = load i32* %nvtx1, align 4, !dbg !417, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !151), !dbg !417
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !153), !dbg !418
  %cmp246 = icmp sgt i32 %1, 0, !dbg !418
  br i1 %cmp246, label %for.body, label %for.end23, !dbg !418

for.body:                                         ; preds = %if.end, %for.inc21
  %v.048 = phi i32 [ %inc22, %for.inc21 ], [ 0, %if.end ]
  %rc.047 = phi i32 [ %rc.1.lcssa, %for.inc21 ], [ 1, %if.end ]
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %v.048, i32* %vsize, i32** %vadj) #7, !dbg !420
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !149), !dbg !422
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !154), !dbg !422
  %2 = load i32* %vsize, align 4, !dbg !422, !tbaa !164
  %cmp442 = icmp sgt i32 %2, 0, !dbg !422
  br i1 %cmp442, label %for.body5, label %for.inc21, !dbg !422

for.body5:                                        ; preds = %for.body, %for.inc18
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc18 ], [ 0, %for.body ]
  %rc.143 = phi i32 [ %rc.2, %for.inc18 ], [ %rc.047, %for.body ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !157), !dbg !424
  %3 = load i32** %vadj, align 8, !dbg !424, !tbaa !169
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv52, !dbg !424
  %4 = load i32* %arrayidx, align 4, !dbg !424, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !155), !dbg !424
  call void @Graph_adjAndSize(%struct._Graph* %graph, i32 %4, i32* %wsize, i32** %wadj) #7, !dbg !426
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !150), !dbg !427
  call void @llvm.dbg.value(metadata !{i32* %wsize}, i64 0, metadata !156), !dbg !427
  %5 = load i32* %wsize, align 4, !dbg !427, !tbaa !164
  %cmp740 = icmp sgt i32 %5, 0, !dbg !427
  br i1 %cmp740, label %for.body8.lr.ph, label %for.end, !dbg !427

for.body8.lr.ph:                                  ; preds = %for.body5
  call void @llvm.dbg.value(metadata !{i32** %wadj}, i64 0, metadata !158), !dbg !429
  %6 = load i32** %wadj, align 8, !dbg !429, !tbaa !169
  call void @llvm.dbg.value(metadata !{i32* %wsize}, i64 0, metadata !156), !dbg !427
  br label %for.body8, !dbg !427

for.cond6:                                        ; preds = %for.body8
  call void @llvm.dbg.value(metadata !{i32* %wsize}, i64 0, metadata !156), !dbg !427
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !427
  %cmp7 = icmp slt i32 %7, %5, !dbg !427
  br i1 %cmp7, label %for.body8, label %for.end, !dbg !427

for.body8:                                        ; preds = %for.body8.lr.ph, %for.cond6
  %indvars.iv = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next, %for.cond6 ]
  %jj.041 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.cond6 ]
  call void @llvm.dbg.value(metadata !{i32** %wadj}, i64 0, metadata !158), !dbg !429
  %arrayidx10 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !429
  %8 = load i32* %arrayidx10, align 4, !dbg !429, !tbaa !164
  %cmp11 = icmp eq i32 %8, %v.048, !dbg !429
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !427
  %inc = add nsw i32 %jj.041, 1, !dbg !427
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !150), !dbg !427
  br i1 %cmp11, label %for.end, label %for.cond6, !dbg !429

for.end:                                          ; preds = %for.cond6, %for.body8, %for.body5
  %jj.0.lcssa = phi i32 [ 0, %for.body5 ], [ %jj.041, %for.body8 ], [ %inc, %for.cond6 ]
  call void @llvm.dbg.value(metadata !{i32* %wsize}, i64 0, metadata !156), !dbg !431
  %cmp14 = icmp eq i32 %jj.0.lcssa, %5, !dbg !431
  br i1 %cmp14, label %if.then15, label %for.inc18, !dbg !431

if.then15:                                        ; preds = %for.end
  %9 = load %struct._IO_FILE** @stdout, align 8, !dbg !432, !tbaa !169
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([44 x i8]* @.str12, i64 0, i64 0), i32 %v.048, i32 %4, i32 %4, i32 %v.048) #5, !dbg !432
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !152), !dbg !434
  br label %for.inc18, !dbg !435

for.inc18:                                        ; preds = %for.end, %if.then15
  %rc.2 = phi i32 [ 0, %if.then15 ], [ %rc.143, %for.end ]
  %indvars.iv.next53 = add i64 %indvars.iv52, 1, !dbg !422
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !154), !dbg !422
  %10 = load i32* %vsize, align 4, !dbg !422, !tbaa !164
  %11 = trunc i64 %indvars.iv.next53 to i32, !dbg !422
  %cmp4 = icmp slt i32 %11, %10, !dbg !422
  br i1 %cmp4, label %for.body5, label %for.inc21, !dbg !422

for.inc21:                                        ; preds = %for.inc18, %for.body
  %rc.1.lcssa = phi i32 [ %rc.047, %for.body ], [ %rc.2, %for.inc18 ]
  %inc22 = add nsw i32 %v.048, 1, !dbg !418
  call void @llvm.dbg.value(metadata !{i32 %inc22}, i64 0, metadata !153), !dbg !418
  %exitcond = icmp eq i32 %inc22, %1, !dbg !418
  br i1 %exitcond, label %for.end23, label %for.body, !dbg !418

for.end23:                                        ; preds = %for.inc21, %if.end
  %rc.0.lcssa = phi i32 [ 1, %if.end ], [ %rc.1.lcssa, %for.inc21 ]
  ret i32 %rc.0.lcssa, !dbg !436
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !55, metadata !63, metadata !72, metadata !78, metadata !105, metadata !118, metadata !146}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_externalDegree", metadata !"Graph_externalDegree", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Graph*, i32)* @Graph_externalDegree, null, null, metadata !46, i32 19} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 19] [Graph_externalDegree]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !44, metadata !45}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!22 = metadata !{i32 786454, metadata !12, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!30 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!34 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!35 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!37 = metadata !{i32 786454, metadata !24, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!38 = metadata !{i32 786451, metadata !24, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !39, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43}
!40 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!41 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!42 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!43 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!44 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!45 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!46 = metadata !{metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!47 = metadata !{i32 786689, metadata !4, metadata !"g", metadata !5, i32 16777233, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 17]
!48 = metadata !{i32 786689, metadata !4, metadata !"v", metadata !5, i32 33554450, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 18]
!49 = metadata !{i32 786688, metadata !4, metadata !"ii", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 20]
!50 = metadata !{i32 786688, metadata !4, metadata !"vsize", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vsize] [line 20]
!51 = metadata !{i32 786688, metadata !4, metadata !"w", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 20]
!52 = metadata !{i32 786688, metadata !4, metadata !"weight", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight] [line 20]
!53 = metadata !{i32 786688, metadata !4, metadata !"vadj", metadata !5, i32 21, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vadj] [line 21]
!54 = metadata !{i32 786688, metadata !4, metadata !"vwghts", metadata !5, i32 21, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vwghts] [line 21]
!55 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_adjAndSize", metadata !"Graph_adjAndSize", metadata !"", i32 50, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Graph*, i32, i32*, i32**)* @Graph_adjAndSize, null, null, metadata !58, i32 55} ; [ DW_TAG_subprogram ] [line 50] [def] [scope 55] [Graph_adjAndSize]
!56 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{null, metadata !9, metadata !8, metadata !31, metadata !33}
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62}
!59 = metadata !{i32 786689, metadata !55, metadata !"g", metadata !5, i32 16777267, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 51]
!60 = metadata !{i32 786689, metadata !55, metadata !"jvtx", metadata !5, i32 33554484, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jvtx] [line 52]
!61 = metadata !{i32 786689, metadata !55, metadata !"psize", metadata !5, i32 50331701, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psize] [line 53]
!62 = metadata !{i32 786689, metadata !55, metadata !"padj", metadata !5, i32 67108918, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [padj] [line 54]
!63 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_adjAndEweights", metadata !"Graph_adjAndEweights", metadata !"", i32 94, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Graph*, i32, i32*, i32**, i32**)* @Graph_adjAndEweights, null, null, metadata !66, i32 100} ; [ DW_TAG_subprogram ] [line 94] [def] [scope 100] [Graph_adjAndEweights]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{null, metadata !9, metadata !8, metadata !31, metadata !33, metadata !33}
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70, metadata !71}
!67 = metadata !{i32 786689, metadata !63, metadata !"g", metadata !5, i32 16777311, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 95]
!68 = metadata !{i32 786689, metadata !63, metadata !"jvtx", metadata !5, i32 33554528, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jvtx] [line 96]
!69 = metadata !{i32 786689, metadata !63, metadata !"psize", metadata !5, i32 50331745, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psize] [line 97]
!70 = metadata !{i32 786689, metadata !63, metadata !"padj", metadata !5, i32 67108962, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [padj] [line 98]
!71 = metadata !{i32 786689, metadata !63, metadata !"pewghts", metadata !5, i32 83886179, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pewghts] [line 99]
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_sizeOf", metadata !"Graph_sizeOf", metadata !"", i32 145, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Graph*)* @Graph_sizeOf, null, null, metadata !75, i32 147} ; [ DW_TAG_subprogram ] [line 145] [def] [scope 147] [Graph_sizeOf]
!73 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{metadata !8, metadata !9}
!75 = metadata !{metadata !76, metadata !77}
!76 = metadata !{i32 786689, metadata !72, metadata !"g", metadata !5, i32 16777362, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 146]
!77 = metadata !{i32 786688, metadata !72, metadata !"nbytes", metadata !5, i32 148, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 148]
!78 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_componentMap", metadata !"Graph_componentMap", metadata !"", i32 181, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._Graph*)* @Graph_componentMap, null, null, metadata !90, i32 183} ; [ DW_TAG_subprogram ] [line 181] [def] [scope 183] [Graph_componentMap]
!79 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{metadata !81, metadata !9}
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!82 = metadata !{i32 786454, metadata !1, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!83 = metadata !{i32 786451, metadata !84, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !85, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!84 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!85 = metadata !{metadata !86, metadata !87, metadata !88, metadata !89}
!86 = metadata !{i32 786445, metadata !84, metadata !83, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!87 = metadata !{i32 786445, metadata !84, metadata !83, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!88 = metadata !{i32 786445, metadata !84, metadata !83, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!89 = metadata !{i32 786445, metadata !84, metadata !83, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104}
!91 = metadata !{i32 786689, metadata !78, metadata !"g", metadata !5, i32 16777398, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 182]
!92 = metadata !{i32 786688, metadata !78, metadata !"ii", metadata !5, i32 184, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 184]
!93 = metadata !{i32 786688, metadata !78, metadata !"last", metadata !5, i32 184, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 184]
!94 = metadata !{i32 786688, metadata !78, metadata !"ncomp", metadata !5, i32 184, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncomp] [line 184]
!95 = metadata !{i32 786688, metadata !78, metadata !"now", metadata !5, i32 184, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [now] [line 184]
!96 = metadata !{i32 786688, metadata !78, metadata !"nvtx", metadata !5, i32 184, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 184]
!97 = metadata !{i32 786688, metadata !78, metadata !"u", metadata !5, i32 184, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 184]
!98 = metadata !{i32 786688, metadata !78, metadata !"usize", metadata !5, i32 184, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [usize] [line 184]
!99 = metadata !{i32 786688, metadata !78, metadata !"v", metadata !5, i32 184, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 184]
!100 = metadata !{i32 786688, metadata !78, metadata !"w", metadata !5, i32 184, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 184]
!101 = metadata !{i32 786688, metadata !78, metadata !"list", metadata !5, i32 185, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list] [line 185]
!102 = metadata !{i32 786688, metadata !78, metadata !"map", metadata !5, i32 185, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 185]
!103 = metadata !{i32 786688, metadata !78, metadata !"uadj", metadata !5, i32 185, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uadj] [line 185]
!104 = metadata !{i32 786688, metadata !78, metadata !"mapIV", metadata !5, i32 186, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapIV] [line 186]
!105 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_componentStats", metadata !"Graph_componentStats", metadata !"", i32 249, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Graph*, i32*, i32*, i32*)* @Graph_componentStats, null, null, metadata !108, i32 254} ; [ DW_TAG_subprogram ] [line 249] [def] [scope 254] [Graph_componentStats]
!106 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!107 = metadata !{null, metadata !9, metadata !31, metadata !31, metadata !31}
!108 = metadata !{metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!109 = metadata !{i32 786689, metadata !105, metadata !"g", metadata !5, i32 16777466, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 250]
!110 = metadata !{i32 786689, metadata !105, metadata !"map", metadata !5, i32 33554683, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [map] [line 251]
!111 = metadata !{i32 786689, metadata !105, metadata !"counts", metadata !5, i32 50331900, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [counts] [line 252]
!112 = metadata !{i32 786689, metadata !105, metadata !"weights", metadata !5, i32 67109117, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weights] [line 253]
!113 = metadata !{i32 786688, metadata !105, metadata !"ncomp", metadata !5, i32 255, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncomp] [line 255]
!114 = metadata !{i32 786688, metadata !105, metadata !"nvtx", metadata !5, i32 255, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 255]
!115 = metadata !{i32 786688, metadata !105, metadata !"v", metadata !5, i32 255, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 255]
!116 = metadata !{i32 786688, metadata !105, metadata !"vcomp", metadata !5, i32 255, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vcomp] [line 255]
!117 = metadata !{i32 786688, metadata !105, metadata !"vwghts", metadata !5, i32 256, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vwghts] [line 256]
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_subGraph", metadata !"Graph_subGraph", metadata !"", i32 308, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Graph* (%struct._Graph*, i32, i32*, i32**)* @Graph_subGraph, null, null, metadata !121, i32 313} ; [ DW_TAG_subprogram ] [line 308] [def] [scope 313] [Graph_subGraph]
!119 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{metadata !9, metadata !9, metadata !8, metadata !31, metadata !33}
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144}
!122 = metadata !{i32 786689, metadata !118, metadata !"g", metadata !5, i32 16777525, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 309]
!123 = metadata !{i32 786689, metadata !118, metadata !"icomp", metadata !5, i32 33554742, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [icomp] [line 310]
!124 = metadata !{i32 786689, metadata !118, metadata !"compids", metadata !5, i32 50331959, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [compids] [line 311]
!125 = metadata !{i32 786689, metadata !118, metadata !"pmap", metadata !5, i32 67109176, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pmap] [line 312]
!126 = metadata !{i32 786688, metadata !118, metadata !"gsub", metadata !5, i32 314, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gsub] [line 314]
!127 = metadata !{i32 786688, metadata !118, metadata !"count", metadata !5, i32 315, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 315]
!128 = metadata !{i32 786688, metadata !118, metadata !"ii", metadata !5, i32 315, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 315]
!129 = metadata !{i32 786688, metadata !118, metadata !"iv", metadata !5, i32 315, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iv] [line 315]
!130 = metadata !{i32 786688, metadata !118, metadata !"nvbnd", metadata !5, i32 315, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvbnd] [line 315]
!131 = metadata !{i32 786688, metadata !118, metadata !"nvbndsub", metadata !5, i32 315, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvbndsub] [line 315]
!132 = metadata !{i32 786688, metadata !118, metadata !"nvtx", metadata !5, i32 315, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 315]
!133 = metadata !{i32 786688, metadata !118, metadata !"nvtxsub", metadata !5, i32 315, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtxsub] [line 315]
!134 = metadata !{i32 786688, metadata !118, metadata !"nvtot", metadata !5, i32 315, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtot] [line 315]
!135 = metadata !{i32 786688, metadata !118, metadata !"nvtotsub", metadata !5, i32 315, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtotsub] [line 315]
!136 = metadata !{i32 786688, metadata !118, metadata !"v", metadata !5, i32 316, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 316]
!137 = metadata !{i32 786688, metadata !118, metadata !"vsub", metadata !5, i32 316, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vsub] [line 316]
!138 = metadata !{i32 786688, metadata !118, metadata !"vsize", metadata !5, i32 316, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vsize] [line 316]
!139 = metadata !{i32 786688, metadata !118, metadata !"w", metadata !5, i32 316, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 316]
!140 = metadata !{i32 786688, metadata !118, metadata !"wsub", metadata !5, i32 316, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wsub] [line 316]
!141 = metadata !{i32 786688, metadata !118, metadata !"invmap", metadata !5, i32 317, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [invmap] [line 317]
!142 = metadata !{i32 786688, metadata !118, metadata !"map", metadata !5, i32 317, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 317]
!143 = metadata !{i32 786688, metadata !118, metadata !"vadj", metadata !5, i32 317, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vadj] [line 317]
!144 = metadata !{i32 786688, metadata !145, metadata !"ind", metadata !5, i32 407, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ind] [line 407]
!145 = metadata !{i32 786443, metadata !1, metadata !118, i32 406, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!146 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_isSymmetric", metadata !"Graph_isSymmetric", metadata !"", i32 460, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Graph*)* @Graph_isSymmetric, null, null, metadata !147, i32 462} ; [ DW_TAG_subprogram ] [line 460] [def] [scope 462] [Graph_isSymmetric]
!147 = metadata !{metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158}
!148 = metadata !{i32 786689, metadata !146, metadata !"graph", metadata !5, i32 16777677, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 461]
!149 = metadata !{i32 786688, metadata !146, metadata !"ii", metadata !5, i32 463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 463]
!150 = metadata !{i32 786688, metadata !146, metadata !"jj", metadata !5, i32 463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 463]
!151 = metadata !{i32 786688, metadata !146, metadata !"nvtx", metadata !5, i32 463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 463]
!152 = metadata !{i32 786688, metadata !146, metadata !"rc", metadata !5, i32 463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 463]
!153 = metadata !{i32 786688, metadata !146, metadata !"v", metadata !5, i32 463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 463]
!154 = metadata !{i32 786688, metadata !146, metadata !"vsize", metadata !5, i32 463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vsize] [line 463]
!155 = metadata !{i32 786688, metadata !146, metadata !"w", metadata !5, i32 463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 463]
!156 = metadata !{i32 786688, metadata !146, metadata !"wsize", metadata !5, i32 463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wsize] [line 463]
!157 = metadata !{i32 786688, metadata !146, metadata !"vadj", metadata !5, i32 464, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vadj] [line 464]
!158 = metadata !{i32 786688, metadata !146, metadata !"wadj", metadata !5, i32 464, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wadj] [line 464]
!159 = metadata !{i32 17, i32 0, metadata !4, null}
!160 = metadata !{i32 18, i32 0, metadata !4, null}
!161 = metadata !{i32 20, i32 0, metadata !4, null}
!162 = metadata !{i32 21, i32 0, metadata !4, null}
!163 = metadata !{i32 27, i32 0, metadata !4, null}
!164 = metadata !{metadata !"int", metadata !165}
!165 = metadata !{metadata !"omnipotent char", metadata !166}
!166 = metadata !{metadata !"Simple C/C++ TBAA"}
!167 = metadata !{i32 28, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !4, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!169 = metadata !{metadata !"any pointer", metadata !165}
!170 = metadata !{i32 30, i32 0, metadata !168, null}
!171 = metadata !{i32 32, i32 0, metadata !4, null}
!172 = metadata !{i32 33, i32 0, metadata !4, null}
!173 = metadata !{i32 34, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!175 = metadata !{i32 35, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !174, i32 34, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!177 = metadata !{i32 36, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !176, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!179 = metadata !{i32 37, i32 0, metadata !178, null}
!180 = metadata !{i32 39, i32 0, metadata !4, null}
!181 = metadata !{i32 51, i32 0, metadata !55, null}
!182 = metadata !{i32 52, i32 0, metadata !55, null}
!183 = metadata !{i32 53, i32 0, metadata !55, null}
!184 = metadata !{i32 54, i32 0, metadata !55, null}
!185 = metadata !{i32 61, i32 0, metadata !55, null}
!186 = metadata !{i32 63, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !55, i32 62, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!188 = metadata !{i32 66, i32 0, metadata !187, null}
!189 = metadata !{i32 68, i32 0, metadata !55, null}
!190 = metadata !{i32 69, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !55, i32 68, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!192 = metadata !{i32 71, i32 0, metadata !191, null}
!193 = metadata !{i32 73, i32 0, metadata !55, null}
!194 = metadata !{i32 82, i32 0, metadata !55, null}
!195 = metadata !{i32 95, i32 0, metadata !63, null}
!196 = metadata !{i32 96, i32 0, metadata !63, null}
!197 = metadata !{i32 97, i32 0, metadata !63, null}
!198 = metadata !{i32 98, i32 0, metadata !63, null}
!199 = metadata !{i32 99, i32 0, metadata !63, null}
!200 = metadata !{i32 106, i32 0, metadata !63, null}
!201 = metadata !{i32 108, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !63, i32 107, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!203 = metadata !{i32 112, i32 0, metadata !202, null}
!204 = metadata !{i32 114, i32 0, metadata !63, null}
!205 = metadata !{i32 115, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !63, i32 114, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!207 = metadata !{i32 119, i32 0, metadata !206, null}
!208 = metadata !{i32 121, i32 0, metadata !63, null}
!209 = metadata !{i32 122, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !63, i32 121, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!211 = metadata !{i32 126, i32 0, metadata !210, null}
!212 = metadata !{i32 128, i32 0, metadata !63, null}
!213 = metadata !{i32 129, i32 0, metadata !63, null}
!214 = metadata !{i32 130, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !63, i32 129, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!216 = metadata !{i32 131, i32 0, metadata !215, null}
!217 = metadata !{i32 132, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !63, i32 131, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!219 = metadata !{i32 134, i32 0, metadata !63, null}
!220 = metadata !{i32 146, i32 0, metadata !72, null}
!221 = metadata !{i32 154, i32 0, metadata !72, null}
!222 = metadata !{i32 155, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !72, i32 154, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!224 = metadata !{i32 157, i32 0, metadata !223, null}
!225 = metadata !{i32 48}
!226 = metadata !{i32 159, i32 0, metadata !72, null}
!227 = metadata !{i32 160, i32 0, metadata !72, null}
!228 = metadata !{i32 161, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !72, i32 160, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!230 = metadata !{i32 162, i32 0, metadata !229, null}
!231 = metadata !{i32 163, i32 0, metadata !72, null}
!232 = metadata !{i32 164, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !72, i32 163, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!234 = metadata !{i32 165, i32 0, metadata !233, null}
!235 = metadata !{i32 166, i32 0, metadata !72, null}
!236 = metadata !{i32 167, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !72, i32 166, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!238 = metadata !{i32 168, i32 0, metadata !237, null}
!239 = metadata !{i32 169, i32 0, metadata !72, null}
!240 = metadata !{i32 182, i32 0, metadata !78, null}
!241 = metadata !{i32 184, i32 0, metadata !78, null}
!242 = metadata !{i32 185, i32 0, metadata !78, null}
!243 = metadata !{i32 192, i32 0, metadata !78, null}
!244 = metadata !{i32 193, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !78, i32 192, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!246 = metadata !{i32 195, i32 0, metadata !245, null}
!247 = metadata !{i32 197, i32 0, metadata !78, null}
!248 = metadata !{i32 200, i32 0, metadata !78, null}
!249 = metadata !{i32 201, i32 0, metadata !78, null}
!250 = metadata !{i32 202, i32 0, metadata !78, null}
!251 = metadata !{i32 204, i32 0, metadata !78, null}
!252 = metadata !{i32 205, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !78, i32 205, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!254 = metadata !{i32 206, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !253, i32 205, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!256 = metadata !{i32 212, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !255, i32 206, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!258 = metadata !{i32 213, i32 0, metadata !257, null}
!259 = metadata !{i32 214, i32 0, metadata !257, null}
!260 = metadata !{i32 215, i32 0, metadata !257, null}
!261 = metadata !{i32 216, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !257, i32 215, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!263 = metadata !{i32 217, i32 0, metadata !262, null}
!264 = metadata !{i32 218, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !262, i32 218, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!266 = metadata !{i32 219, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !265, i32 218, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!268 = metadata !{i32 220, i32 0, metadata !267, null}
!269 = metadata !{i32 226, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !267, i32 220, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!271 = metadata !{i32 227, i32 0, metadata !270, null}
!272 = metadata !{i32 228, i32 0, metadata !270, null}
!273 = metadata !{i32 231, i32 0, metadata !257, null}
!274 = metadata !{i32 232, i32 0, metadata !257, null}
!275 = metadata !{i32 234, i32 0, metadata !78, null}
!276 = metadata !{i32 236, i32 0, metadata !78, null}
!277 = metadata !{i32 250, i32 0, metadata !105, null}
!278 = metadata !{i32 251, i32 0, metadata !105, null}
!279 = metadata !{i32 252, i32 0, metadata !105, null}
!280 = metadata !{i32 253, i32 0, metadata !105, null}
!281 = metadata !{i32 255, i32 0, metadata !105, null}
!282 = metadata !{i32 262, i32 0, metadata !105, null}
!283 = metadata !{i32 263, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !105, i32 262, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!285 = metadata !{i32 265, i32 0, metadata !284, null}
!286 = metadata !{i32 272, i32 0, metadata !105, null}
!287 = metadata !{i32 273, i32 0, metadata !105, null}
!288 = metadata !{i32 274, i32 0, metadata !105, null}
!289 = metadata !{i32 275, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !291, i32 275, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!291 = metadata !{i32 786443, metadata !1, metadata !105, i32 274, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!292 = metadata !{i32 281, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !294, i32 281, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!294 = metadata !{i32 786443, metadata !1, metadata !105, i32 280, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!295 = metadata !{i32 276, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !290, i32 275, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!297 = metadata !{i32 277, i32 0, metadata !296, null}
!298 = metadata !{i32 278, i32 0, metadata !296, null}
!299 = metadata !{i32 282, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !293, i32 281, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!301 = metadata !{i32 283, i32 0, metadata !300, null}
!302 = metadata !{i32 285, i32 0, metadata !294, null}
!303 = metadata !{i32 287, i32 0, metadata !105, null}
!304 = metadata !{i32 309, i32 0, metadata !118, null}
!305 = metadata !{i32 310, i32 0, metadata !118, null}
!306 = metadata !{i32 311, i32 0, metadata !118, null}
!307 = metadata !{i32 312, i32 0, metadata !118, null}
!308 = metadata !{i32 316, i32 0, metadata !118, null}
!309 = metadata !{i32 317, i32 0, metadata !118, null}
!310 = metadata !{i32 323, i32 0, metadata !118, null}
!311 = metadata !{i32 324, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !118, i32 323, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!313 = metadata !{i32 326, i32 0, metadata !312, null}
!314 = metadata !{i32 328, i32 0, metadata !118, null}
!315 = metadata !{i32 329, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !118, i32 328, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!317 = metadata !{i32 332, i32 0, metadata !316, null}
!318 = metadata !{i32 334, i32 0, metadata !118, null}
!319 = metadata !{i32 335, i32 0, metadata !118, null}
!320 = metadata !{i32 336, i32 0, metadata !118, null}
!321 = metadata !{i32 344, i32 0, metadata !118, null}
!322 = metadata !{i32 345, i32 0, metadata !118, null}
!323 = metadata !{i32 346, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !118, i32 346, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!325 = metadata !{i32 358, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !118, i32 358, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!327 = metadata !{i32 347, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !324, i32 346, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!329 = metadata !{i32 348, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !328, i32 347, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!331 = metadata !{i32 349, i32 0, metadata !330, null}
!332 = metadata !{i32 350, i32 0, metadata !330, null}
!333 = metadata !{i32 359, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !326, i32 358, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!335 = metadata !{i32 360, i32 0, metadata !334, null}
!336 = metadata !{i32 361, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !334, i32 361, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!338 = metadata !{i32 362, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !337, i32 361, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!340 = metadata !{i32 363, i32 0, metadata !339, null}
!341 = metadata !{i32 364, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !339, i32 363, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!343 = metadata !{i32 365, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !342, i32 364, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!345 = metadata !{i32 366, i32 0, metadata !344, null}
!346 = metadata !{i32 367, i32 0, metadata !344, null}
!347 = metadata !{i32 368, i32 0, metadata !339, null}
!348 = metadata !{i32 369, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !339, i32 368, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!350 = metadata !{i32 370, i32 0, metadata !349, null}
!351 = metadata !{i32 371, i32 0, metadata !349, null}
!352 = metadata !{i32 374, i32 0, metadata !118, null}
!353 = metadata !{i32 375, i32 0, metadata !118, null}
!354 = metadata !{i32 376, i32 0, metadata !118, null}
!355 = metadata !{i32 377, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !118, i32 377, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!357 = metadata !{i32 378, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !356, i32 377, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!359 = metadata !{i32 379, i32 0, metadata !358, null}
!360 = metadata !{i32 386, i32 0, metadata !118, null}
!361 = metadata !{i32 387, i32 0, metadata !118, null}
!362 = metadata !{i32 397, i32 0, metadata !363, null}
!363 = metadata !{i32 786443, metadata !1, metadata !118, i32 397, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!364 = metadata !{i32 400, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !363, i32 397, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!366 = metadata !{i32 398, i32 0, metadata !365, null}
!367 = metadata !{i32 399, i32 0, metadata !365, null}
!368 = metadata !{i32 401, i32 0, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !365, i32 401, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!370 = metadata !{i32 402, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !369, i32 401, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!372 = metadata !{i32 404, i32 0, metadata !365, null}
!373 = metadata !{i32 406, i32 0, metadata !118, null}
!374 = metadata !{i32 407, i32 0, metadata !145, null}
!375 = metadata !{i32 408, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !145, i32 408, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!377 = metadata !{i32 418, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !376, i32 408, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!379 = metadata !{i32 409, i32 0, metadata !378, null}
!380 = metadata !{i32 410, i32 0, metadata !378, null}
!381 = metadata !{i32 411, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !378, i32 411, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!383 = metadata !{i32 412, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !382, i32 411, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!385 = metadata !{i32 413, i32 0, metadata !384, null}
!386 = metadata !{i32 414, i32 0, metadata !387, null}
!387 = metadata !{i32 786443, metadata !1, metadata !384, i32 413, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!388 = metadata !{i32 415, i32 0, metadata !387, null}
!389 = metadata !{i32 417, i32 0, metadata !378, null}
!390 = metadata !{i32 420, i32 0, metadata !145, null}
!391 = metadata !{i32 421, i32 0, metadata !145, null}
!392 = metadata !{i32 427, i32 0, metadata !118, null}
!393 = metadata !{i32 428, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !118, i32 427, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!395 = metadata !{i32 429, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !394, i32 429, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!397 = metadata !{i32 431, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !396, i32 429, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!399 = metadata !{i32 432, i32 0, metadata !398, null}
!400 = metadata !{i32 430, i32 0, metadata !398, null}
!401 = metadata !{i32 435, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !118, i32 434, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!403 = metadata !{i32 443, i32 0, metadata !118, null}
!404 = metadata !{i32 444, i32 0, metadata !118, null}
!405 = metadata !{i32 445, i32 0, metadata !118, null}
!406 = metadata !{i32 446, i32 0, metadata !118, null}
!407 = metadata !{i32 448, i32 0, metadata !118, null}
!408 = metadata !{i32 461, i32 0, metadata !146, null}
!409 = metadata !{i32 463, i32 0, metadata !146, null}
!410 = metadata !{i32 464, i32 0, metadata !146, null}
!411 = metadata !{i32 470, i32 0, metadata !146, null}
!412 = metadata !{i32 471, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !146, i32 470, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!414 = metadata !{i32 473, i32 0, metadata !413, null}
!415 = metadata !{i32 1}
!416 = metadata !{i32 480, i32 0, metadata !146, null}
!417 = metadata !{i32 481, i32 0, metadata !146, null}
!418 = metadata !{i32 482, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !146, i32 482, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!420 = metadata !{i32 483, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !419, i32 482, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!422 = metadata !{i32 484, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !421, i32 484, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!424 = metadata !{i32 485, i32 0, metadata !425, null}
!425 = metadata !{i32 786443, metadata !1, metadata !423, i32 484, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!426 = metadata !{i32 486, i32 0, metadata !425, null}
!427 = metadata !{i32 487, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !425, i32 487, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!429 = metadata !{i32 488, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !428, i32 487, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!431 = metadata !{i32 492, i32 0, metadata !425, null}
!432 = metadata !{i32 493, i32 0, metadata !433, null}
!433 = metadata !{i32 786443, metadata !1, metadata !425, i32 492, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_util.c]
!434 = metadata !{i32 495, i32 0, metadata !433, null}
!435 = metadata !{i32 499, i32 0, metadata !433, null}
!436 = metadata !{i32 502, i32 0, metadata !146, null}
