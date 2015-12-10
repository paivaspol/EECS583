; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._cell = type { i32, i32, i32, i32, %struct._cell*, %struct._cell* }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [44 x i8] c"\0A fatal error in BKL_fidmat(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str2 = private unnamed_addr constant [75 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c\00", align 1
@.str4 = private unnamed_addr constant [60 x i8] c"\0A fatal error in BKL_fidmatPass(%p,%p,%p,%p,%d)\0A bad input\0A\00", align 1
@Undo = internal global %struct._cell zeroinitializer, align 8
@Head = internal global %struct._cell zeroinitializer, align 8

; Function Attrs: nounwind optsize uwtable
define float @BKL_fidmat(%struct._BKL* %bkl) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !78), !dbg !127
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !128
  br i1 %cmp, label %if.then, label %if.end, !dbg !128

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !129, !tbaa !131
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), %struct._BKL* null) #5, !dbg !129
  tail call void @exit(i32 -1) #6, !dbg !134
  unreachable, !dbg !134

if.end:                                           ; preds = %entry
  %ndom1 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !135
  %1 = load i32* %ndom1, align 4, !dbg !135, !tbaa !136
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !80), !dbg !135
  %cmp2 = icmp slt i32 %1, 9, !dbg !137
  br i1 %cmp2, label %if.then3, label %if.then9, !dbg !137

if.then3:                                         ; preds = %if.end
  %sub = add nsw i32 %1, -1, !dbg !138
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !81), !dbg !138
  %call4 = tail call i32* @IVinit(i32 %sub, i32 -1) #5, !dbg !139
  tail call void @llvm.dbg.value(metadata !{i32* %call4}, i64 0, metadata !83), !dbg !139
  %call5 = tail call i32* @IVinit(i32 %sub, i32 -1) #5, !dbg !140
  tail call void @llvm.dbg.value(metadata !{i32* %call5}, i64 0, metadata !84), !dbg !140
  tail call void @IVramp(i32 %sub, i32* %call4, i32 1, i32 1) #5, !dbg !141
  %call6 = tail call float @BKL_exhSearch(%struct._BKL* %bkl, i32 %sub, i32* %call4, i32* %call5) #5, !dbg !142
  tail call void @IVfree(i32* %call4) #5, !dbg !143
  tail call void @IVfree(i32* %call5) #5, !dbg !144
  %call7 = tail call float @BKL_evalfcn(%struct._BKL* %bkl) #5, !dbg !145
  tail call void @llvm.dbg.value(metadata !{float %call7}, i64 0, metadata !79), !dbg !145
  br label %if.end48, !dbg !146

if.then9:                                         ; preds = %if.end
  %conv = sext i32 %1 to i64, !dbg !147
  %mul = shl nsw i64 %conv, 5, !dbg !147
  %call10 = tail call noalias i8* @malloc(i64 %mul) #5, !dbg !147
  %2 = bitcast i8* %call10 to %struct._cell*, !dbg !147
  tail call void @llvm.dbg.value(metadata !{%struct._cell* %2}, i64 0, metadata !97), !dbg !147
  %cmp11 = icmp eq i8* %call10, null, !dbg !147
  br i1 %cmp11, label %if.then13, label %for.body.lr.ph, !dbg !147

if.then13:                                        ; preds = %if.then9
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !149, !tbaa !131
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul, i32 98, i8* getelementptr inbounds ([75 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !149
  tail call void @exit(i32 -1) #6, !dbg !149
  unreachable, !dbg !149

for.body.lr.ph:                                   ; preds = %if.then9
  %call29 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !151
  tail call void @llvm.dbg.value(metadata !{i32* %call29}, i64 0, metadata !101), !dbg !151
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !100), !dbg !152
  tail call void @llvm.dbg.value(metadata !{%struct._cell* %2}, i64 0, metadata !85), !dbg !152
  br label %for.body, !dbg !152

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %idom.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %cell.092 = phi %struct._cell* [ %2, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %domid = getelementptr inbounds %struct._cell* %cell.092, i64 0, i32 0, !dbg !154
  store i32 %idom.093, i32* %domid, align 4, !dbg !154, !tbaa !136
  %deltaW = getelementptr inbounds %struct._cell* %cell.092, i64 0, i32 3, !dbg !156
  store i32 0, i32* %deltaW, align 4, !dbg !156, !tbaa !136
  %deltaB = getelementptr inbounds %struct._cell* %cell.092, i64 0, i32 2, !dbg !156
  store i32 0, i32* %deltaB, align 4, !dbg !156, !tbaa !136
  %deltaS = getelementptr inbounds %struct._cell* %cell.092, i64 0, i32 1, !dbg !156
  store i32 0, i32* %deltaS, align 4, !dbg !156, !tbaa !136
  %next = getelementptr inbounds %struct._cell* %cell.092, i64 0, i32 5, !dbg !157
  store %struct._cell* %cell.092, %struct._cell** %next, align 8, !dbg !157, !tbaa !131
  %prev = getelementptr inbounds %struct._cell* %cell.092, i64 0, i32 4, !dbg !157
  store %struct._cell* %cell.092, %struct._cell** %prev, align 8, !dbg !157, !tbaa !131
  %inc = add nsw i32 %idom.093, 1, !dbg !152
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !100), !dbg !152
  %incdec.ptr = getelementptr inbounds %struct._cell* %cell.092, i64 1, !dbg !152
  tail call void @llvm.dbg.value(metadata !{%struct._cell* %incdec.ptr}, i64 0, metadata !85), !dbg !152
  %exitcond = icmp eq i32 %inc, %1, !dbg !152
  br i1 %exitcond, label %for.end, label %for.body, !dbg !152

for.end:                                          ; preds = %for.body
  %bpg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !158
  %4 = load %struct._BPG** %bpg, align 8, !dbg !158, !tbaa !131
  %call32 = tail call %struct._Graph* @BPG_makeGraphXbyX(%struct._BPG* %4) #5, !dbg !158
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %call32}, i64 0, metadata !99), !dbg !158
  %npass = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 5, !dbg !159
  store i32 1, i32* %npass, align 4, !dbg !159, !tbaa !136
  %call34 = tail call fastcc float @BKL_fidmatPass(%struct._BKL* %bkl, %struct._cell* %2, i32* %call29, %struct._Graph* %call32, i32 1) #7, !dbg !160
  tail call void @llvm.dbg.value(metadata !{float %call34}, i64 0, metadata !98), !dbg !160
  br label %while.body, !dbg !161

while.body:                                       ; preds = %while.body, %for.end
  %bestcost.0 = phi float [ %call34, %for.end ], [ %call38, %while.body ]
  %5 = load i32* %npass, align 4, !dbg !162, !tbaa !136
  %inc36 = add nsw i32 %5, 1, !dbg !162
  store i32 %inc36, i32* %npass, align 4, !dbg !162, !tbaa !136
  %call38 = tail call fastcc float @BKL_fidmatPass(%struct._BKL* %bkl, %struct._cell* %2, i32* %call29, %struct._Graph* %call32, i32 %inc36) #7, !dbg !164
  tail call void @llvm.dbg.value(metadata !{float %call38}, i64 0, metadata !79), !dbg !164
  %cmp39 = fcmp olt float %call38, %bestcost.0, !dbg !165
  br i1 %cmp39, label %while.body, label %if.end47, !dbg !165

if.end47:                                         ; preds = %while.body
  tail call void @free(i8* %call10) #5, !dbg !166
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !97), !dbg !166
  tail call void @IVfree(i32* %call29) #5, !dbg !169
  tail call void @Graph_free(%struct._Graph* %call32) #5, !dbg !170
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then3
  %cost.0 = phi float [ %call7, %if.then3 ], [ %call38, %if.end47 ]
  ret float %cost.0, !dbg !171
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #4

; Function Attrs: optsize
declare float @BKL_exhSearch(%struct._BKL*, i32, i32*, i32*) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: optsize
declare float @BKL_evalfcn(%struct._BKL*) #4

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare %struct._Graph* @BPG_makeGraphXbyX(%struct._BPG*) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc float @BKL_fidmatPass(%struct._BKL* %bkl, %struct._cell* %cells, i32* %tags, %struct._Graph* %DomByDom, i32 %npass) #0 {
entry:
  %size = alloca i32, align 4
  %doms = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !106), !dbg !172
  call void @llvm.dbg.value(metadata !{%struct._cell* %cells}, i64 0, metadata !107), !dbg !173
  call void @llvm.dbg.value(metadata !{i32* %tags}, i64 0, metadata !108), !dbg !174
  call void @llvm.dbg.value(metadata !{%struct._Graph* %DomByDom}, i64 0, metadata !109), !dbg !175
  call void @llvm.dbg.value(metadata !{i32 %npass}, i64 0, metadata !110), !dbg !176
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !119), !dbg !177
  call void @llvm.dbg.declare(metadata !{i32** %doms}, metadata !121), !dbg !178
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !179
  %cmp1 = icmp eq %struct._cell* %cells, null, !dbg !179
  %or.cond = or i1 %cmp, %cmp1, !dbg !179
  %cmp3 = icmp eq i32* %tags, null, !dbg !179
  %or.cond230 = or i1 %or.cond, %cmp3, !dbg !179
  %cmp5 = icmp eq %struct._Graph* %DomByDom, null, !dbg !179
  %or.cond231 = or i1 %or.cond230, %cmp5, !dbg !179
  br i1 %or.cond231, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !180, !tbaa !131
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str4, i64 0, i64 0), %struct._BKL* %bkl, %struct._cell* %cells, i32* %tags, %struct._Graph* %DomByDom, i32 %npass) #5, !dbg !180
  call void @exit(i32 -1) #6, !dbg !182
  unreachable, !dbg !182

if.end:                                           ; preds = %entry
  %ndom6 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !183
  %1 = load i32* %ndom6, align 4, !dbg !183, !tbaa !136
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !118), !dbg !183
  %arraydecay = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 0, !dbg !184
  call void @llvm.dbg.value(metadata !{i32* %arraydecay}, i64 0, metadata !120), !dbg !184
  %call8 = call float @BKL_evalfcn(%struct._BKL* %bkl) #5, !dbg !185
  call void @llvm.dbg.value(metadata !{float %call8}, i64 0, metadata !112), !dbg !185
  store %struct._cell* @Head, %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !dbg !186, !tbaa !131
  store %struct._cell* @Head, %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 5), align 8, !dbg !186, !tbaa !131
  store %struct._cell* @Undo, %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 4), align 8, !dbg !187, !tbaa !131
  store %struct._cell* @Undo, %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !dbg !187, !tbaa !131
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !115), !dbg !188
  %cmp11238 = icmp sgt i32 %1, 0, !dbg !188
  br i1 %cmp11238, label %for.body, label %while.end132, !dbg !188

while.cond.preheader:                             ; preds = %for.inc
  %.pre = load %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 5), align 8, !dbg !190, !tbaa !131
  %cmp24236 = icmp eq %struct._cell* %.pre, @Head, !dbg !190
  br i1 %cmp24236, label %while.cond119.preheader, label %while.body.lr.ph, !dbg !190

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arrayidx29 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 1, !dbg !191
  %arrayidx32 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 2, !dbg !191
  %nimprove = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 8, !dbg !193
  br label %while.body, !dbg !190

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %for.inc ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv241, !dbg !195
  call void @llvm.dbg.value(metadata !{%struct._cell* %arrayidx}, i64 0, metadata !111), !dbg !195
  %domid = getelementptr inbounds %struct._cell* %arrayidx, i64 0, i32 0, !dbg !197
  %2 = trunc i64 %indvars.iv241 to i32, !dbg !197
  store i32 %2, i32* %domid, align 4, !dbg !197, !tbaa !136
  %next12 = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv241, i32 5, !dbg !198
  store %struct._cell* %arrayidx, %struct._cell** %next12, align 8, !dbg !198, !tbaa !131
  %prev13 = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv241, i32 4, !dbg !198
  store %struct._cell* %arrayidx, %struct._cell** %prev13, align 8, !dbg !198, !tbaa !131
  %call14 = call i32 @BKL_domAdjToSep(%struct._BKL* %bkl, i32 %2) #5, !dbg !199
  %cmp15 = icmp eq i32 %call14, 1, !dbg !199
  br i1 %cmp15, label %if.then16, label %for.inc, !dbg !199

if.then16:                                        ; preds = %for.body
  %deltaS = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv241, i32 1, !dbg !200
  %deltaB = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv241, i32 2, !dbg !200
  %deltaW = getelementptr inbounds %struct._cell* %cells, i64 %indvars.iv241, i32 3, !dbg !200
  call void @BKL_evalgain(%struct._BKL* %bkl, i32 %2, i32* %deltaS, i32* %deltaB, i32* %deltaW) #5, !dbg !200
  %3 = load %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !dbg !202, !tbaa !131
  store %struct._cell* %3, %struct._cell** %prev13, align 8, !dbg !202, !tbaa !131
  %next19 = getelementptr inbounds %struct._cell* %3, i64 0, i32 5, !dbg !202
  store %struct._cell* %arrayidx, %struct._cell** %next19, align 8, !dbg !202, !tbaa !131
  store %struct._cell* %arrayidx, %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !dbg !202, !tbaa !131
  store %struct._cell* @Head, %struct._cell** %next12, align 8, !dbg !202, !tbaa !131
  br label %for.inc, !dbg !203

for.inc:                                          ; preds = %for.body, %if.then16
  %indvars.iv.next242 = add i64 %indvars.iv241, 1, !dbg !188
  %lftr.wideiv = trunc i64 %indvars.iv.next242 to i32, !dbg !188
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !188
  br i1 %exitcond, label %while.cond.preheader, label %for.body, !dbg !188

while.cond.loopexit:                              ; preds = %for.inc116, %if.end87
  %4 = load %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 5), align 8, !dbg !190, !tbaa !131
  %cmp24 = icmp eq %struct._cell* %4, @Head, !dbg !190
  br i1 %cmp24, label %while.cond119.preheader, label %while.body, !dbg !190

while.cond119.preheader:                          ; preds = %while.cond.loopexit, %while.cond.preheader
  %bestcost.0.lcssa.ph = phi float [ %bestcost.1, %while.cond.loopexit ], [ %call8, %while.cond.preheader ]
  %.pr = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !dbg !204, !tbaa !131
  call void @llvm.dbg.value(metadata !{%struct._cell* %.pr}, i64 0, metadata !111), !dbg !204
  %cmp121232 = icmp eq %struct._cell* %.pr, @Undo, !dbg !204
  br i1 %cmp121232, label %while.end132, label %while.body122, !dbg !204

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.loopexit
  %5 = phi %struct._cell* [ %.pre, %while.body.lr.ph ], [ %4, %while.cond.loopexit ]
  %bestcost.0237 = phi float [ %call8, %while.body.lr.ph ], [ %bestcost.1, %while.cond.loopexit ]
  call void @llvm.dbg.value(metadata !{%struct._cell* %5}, i64 0, metadata !111), !dbg !205
  %domid26 = getelementptr inbounds %struct._cell* %5, i64 0, i32 0, !dbg !206
  %6 = load i32* %domid26, align 4, !dbg !206, !tbaa !136
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !115), !dbg !206
  %7 = load i32* %arraydecay, align 4, !dbg !191, !tbaa !136
  %deltaS28 = getelementptr inbounds %struct._cell* %5, i64 0, i32 1, !dbg !191
  %8 = load i32* %deltaS28, align 4, !dbg !191, !tbaa !136
  %add = add nsw i32 %8, %7, !dbg !191
  %9 = load i32* %arrayidx29, align 4, !dbg !191, !tbaa !136
  %deltaB30 = getelementptr inbounds %struct._cell* %5, i64 0, i32 2, !dbg !191
  %10 = load i32* %deltaB30, align 4, !dbg !191, !tbaa !136
  %add31 = add nsw i32 %10, %9, !dbg !191
  %11 = load i32* %arrayidx32, align 4, !dbg !191, !tbaa !136
  %deltaW33 = getelementptr inbounds %struct._cell* %5, i64 0, i32 3, !dbg !191
  %12 = load i32* %deltaW33, align 4, !dbg !191, !tbaa !136
  %add34 = add nsw i32 %12, %11, !dbg !191
  %call35 = call float @BKL_eval(%struct._BKL* %bkl, i32 %add, i32 %add31, i32 %add34) #5, !dbg !191
  call void @llvm.dbg.value(metadata !{float %call35}, i64 0, metadata !113), !dbg !191
  br label %for.cond37.outer, !dbg !207

for.cond37.outer:                                 ; preds = %if.then51, %while.body
  %dom.1.ph = phi i32 [ %6, %while.body ], [ %19, %if.then51 ]
  %bettercost.0.ph = phi float [ %call35, %while.body ], [ %call49, %if.then51 ]
  %.pn.ph = phi %struct._cell* [ %5, %while.body ], [ %cell.0, %if.then51 ]
  br label %for.cond37

for.cond37:                                       ; preds = %for.cond37.outer, %for.body39
  %.pn = phi %struct._cell* [ %cell.0, %for.body39 ], [ %.pn.ph, %for.cond37.outer ]
  %cell.0.in = getelementptr inbounds %struct._cell* %.pn, i64 0, i32 5, !dbg !207
  %cell.0 = load %struct._cell** %cell.0.in, align 8, !dbg !207
  %cmp38 = icmp eq %struct._cell* %cell.0, @Head, !dbg !207
  br i1 %cmp38, label %for.end56, label %for.body39, !dbg !207

for.body39:                                       ; preds = %for.cond37
  %13 = load i32* %arraydecay, align 4, !dbg !209, !tbaa !136
  %deltaS41 = getelementptr inbounds %struct._cell* %cell.0, i64 0, i32 1, !dbg !209
  %14 = load i32* %deltaS41, align 4, !dbg !209, !tbaa !136
  %add42 = add nsw i32 %14, %13, !dbg !209
  %15 = load i32* %arrayidx29, align 4, !dbg !209, !tbaa !136
  %deltaB44 = getelementptr inbounds %struct._cell* %cell.0, i64 0, i32 2, !dbg !209
  %16 = load i32* %deltaB44, align 4, !dbg !209, !tbaa !136
  %add45 = add nsw i32 %16, %15, !dbg !209
  %17 = load i32* %arrayidx32, align 4, !dbg !209, !tbaa !136
  %deltaW47 = getelementptr inbounds %struct._cell* %cell.0, i64 0, i32 3, !dbg !209
  %18 = load i32* %deltaW47, align 4, !dbg !209, !tbaa !136
  %add48 = add nsw i32 %18, %17, !dbg !209
  %call49 = call float @BKL_eval(%struct._BKL* %bkl, i32 %add42, i32 %add45, i32 %add48) #5, !dbg !209
  call void @llvm.dbg.value(metadata !{float %call49}, i64 0, metadata !114), !dbg !209
  %cmp50 = fcmp olt float %call49, %bettercost.0.ph, !dbg !211
  br i1 %cmp50, label %if.then51, label %for.cond37, !dbg !211

if.then51:                                        ; preds = %for.body39
  %domid52 = getelementptr inbounds %struct._cell* %cell.0, i64 0, i32 0, !dbg !212
  %19 = load i32* %domid52, align 4, !dbg !212, !tbaa !136
  call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !115), !dbg !212
  call void @llvm.dbg.value(metadata !{float %call49}, i64 0, metadata !113), !dbg !214
  br label %for.cond37.outer, !dbg !215

for.end56:                                        ; preds = %for.cond37
  %idxprom57 = sext i32 %dom.1.ph to i64, !dbg !216
  %arrayidx58 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom57, !dbg !216
  call void @llvm.dbg.value(metadata !{%struct._cell* %arrayidx58}, i64 0, metadata !111), !dbg !216
  %next59 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom57, i32 5, !dbg !217
  %20 = load %struct._cell** %next59, align 8, !dbg !217, !tbaa !131
  %prev60 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom57, i32 4, !dbg !217
  %21 = load %struct._cell** %prev60, align 8, !dbg !217, !tbaa !131
  %next61 = getelementptr inbounds %struct._cell* %21, i64 0, i32 5, !dbg !217
  store %struct._cell* %20, %struct._cell** %next61, align 8, !dbg !217, !tbaa !131
  %22 = load %struct._cell** %prev60, align 8, !dbg !217, !tbaa !131
  %23 = load %struct._cell** %next59, align 8, !dbg !217, !tbaa !131
  %prev64 = getelementptr inbounds %struct._cell* %23, i64 0, i32 4, !dbg !217
  store %struct._cell* %22, %struct._cell** %prev64, align 8, !dbg !217, !tbaa !131
  store %struct._cell* %arrayidx58, %struct._cell** %next59, align 8, !dbg !217, !tbaa !131
  store %struct._cell* %arrayidx58, %struct._cell** %prev60, align 8, !dbg !217, !tbaa !131
  call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %dom.1.ph) #5, !dbg !218
  %24 = load i32* %arraydecay, align 4, !dbg !219, !tbaa !136
  %25 = load i32* %arrayidx29, align 4, !dbg !219, !tbaa !136
  %26 = load i32* %arrayidx32, align 4, !dbg !219, !tbaa !136
  %call70 = call float @BKL_eval(%struct._BKL* %bkl, i32 %24, i32 %25, i32 %26) #5, !dbg !219
  call void @llvm.dbg.value(metadata !{float %call70}, i64 0, metadata !114), !dbg !219
  %cmp71 = fcmp ogt float %bestcost.0237, %call70, !dbg !220
  %27 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !dbg !221, !tbaa !131
  br i1 %cmp71, label %if.then72, label %if.else, !dbg !220

if.then72:                                        ; preds = %for.end56
  call void @llvm.dbg.value(metadata !{float %call70}, i64 0, metadata !112), !dbg !222
  %28 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 4), align 8, !dbg !221, !tbaa !131
  %next75 = getelementptr inbounds %struct._cell* %28, i64 0, i32 5, !dbg !221
  store %struct._cell* %27, %struct._cell** %next75, align 8, !dbg !221, !tbaa !131
  %29 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 4), align 8, !dbg !221, !tbaa !131
  %30 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !dbg !221, !tbaa !131
  %prev78 = getelementptr inbounds %struct._cell* %30, i64 0, i32 4, !dbg !221
  store %struct._cell* %29, %struct._cell** %prev78, align 8, !dbg !221, !tbaa !131
  store %struct._cell* @Undo, %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !dbg !221, !tbaa !131
  store %struct._cell* @Undo, %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 4), align 8, !dbg !221, !tbaa !131
  %31 = load i32* %nimprove, align 4, !dbg !193, !tbaa !136
  %inc81 = add nsw i32 %31, 1, !dbg !193
  store i32 %inc81, i32* %nimprove, align 4, !dbg !193, !tbaa !136
  br label %if.end87, !dbg !223

if.else:                                          ; preds = %for.end56
  store %struct._cell* %27, %struct._cell** %next59, align 8, !dbg !224, !tbaa !131
  %prev84 = getelementptr inbounds %struct._cell* %27, i64 0, i32 4, !dbg !224
  store %struct._cell* %arrayidx58, %struct._cell** %prev84, align 8, !dbg !224, !tbaa !131
  store %struct._cell* %arrayidx58, %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !dbg !224, !tbaa !131
  store %struct._cell* @Undo, %struct._cell** %prev60, align 8, !dbg !224, !tbaa !131
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then72
  %bestcost.1 = phi float [ %call70, %if.then72 ], [ %bestcost.0237, %if.else ]
  %arrayidx89 = getelementptr inbounds i32* %tags, i64 %idxprom57, !dbg !226
  store i32 %npass, i32* %arrayidx89, align 4, !dbg !226, !tbaa !136
  call void @Graph_adjAndSize(%struct._Graph* %DomByDom, i32 %dom.1.ph, i32* %size, i32** %doms) #5, !dbg !227
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !117), !dbg !228
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !119), !dbg !228
  %32 = load i32* %size, align 4, !dbg !228, !tbaa !136
  %cmp91234 = icmp sgt i32 %32, 0, !dbg !228
  br i1 %cmp91234, label %for.body92, label %while.cond.loopexit, !dbg !228

for.body92:                                       ; preds = %for.inc116, %if.end87
  %indvars.iv = phi i64 [ 0, %if.end87 ], [ %indvars.iv.next, %for.inc116 ]
  call void @llvm.dbg.value(metadata !{i32** %doms}, i64 0, metadata !121), !dbg !230
  %33 = load i32** %doms, align 8, !dbg !230, !tbaa !131
  %arrayidx94 = getelementptr inbounds i32* %33, i64 %indvars.iv, !dbg !230
  %34 = load i32* %arrayidx94, align 4, !dbg !230, !tbaa !136
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !116), !dbg !230
  %idxprom95 = sext i32 %34 to i64, !dbg !232
  %arrayidx96 = getelementptr inbounds i32* %tags, i64 %idxprom95, !dbg !232
  %35 = load i32* %arrayidx96, align 4, !dbg !232, !tbaa !136
  %cmp97 = icmp slt i32 %35, %npass, !dbg !232
  br i1 %cmp97, label %land.lhs.true, label %for.inc116, !dbg !232

land.lhs.true:                                    ; preds = %for.body92
  %call98 = call i32 @BKL_domAdjToSep(%struct._BKL* %bkl, i32 %34) #5, !dbg !232
  %cmp99 = icmp eq i32 %call98, 1, !dbg !232
  br i1 %cmp99, label %if.then100, label %for.inc116, !dbg !232

if.then100:                                       ; preds = %land.lhs.true
  %arrayidx102 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom95, !dbg !233
  call void @llvm.dbg.value(metadata !{%struct._cell* %arrayidx102}, i64 0, metadata !111), !dbg !233
  %deltaS103 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom95, i32 1, !dbg !235
  %deltaB104 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom95, i32 2, !dbg !235
  %deltaW105 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom95, i32 3, !dbg !235
  call void @BKL_evalgain(%struct._BKL* %bkl, i32 %34, i32* %deltaS103, i32* %deltaB104, i32* %deltaW105) #5, !dbg !235
  %prev106 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom95, i32 4, !dbg !236
  %36 = load %struct._cell** %prev106, align 8, !dbg !236, !tbaa !131
  %cmp107 = icmp eq %struct._cell* %36, %arrayidx102, !dbg !236
  br i1 %cmp107, label %if.then108, label %for.inc116, !dbg !236

if.then108:                                       ; preds = %if.then100
  %37 = load %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !dbg !237, !tbaa !131
  store %struct._cell* %37, %struct._cell** %prev106, align 8, !dbg !237, !tbaa !131
  %next111 = getelementptr inbounds %struct._cell* %37, i64 0, i32 5, !dbg !237
  store %struct._cell* %arrayidx102, %struct._cell** %next111, align 8, !dbg !237, !tbaa !131
  store %struct._cell* %arrayidx102, %struct._cell** getelementptr inbounds (%struct._cell* @Head, i64 0, i32 4), align 8, !dbg !237, !tbaa !131
  %next113 = getelementptr inbounds %struct._cell* %cells, i64 %idxprom95, i32 5, !dbg !237
  store %struct._cell* @Head, %struct._cell** %next113, align 8, !dbg !237, !tbaa !131
  br label %for.inc116, !dbg !239

for.inc116:                                       ; preds = %if.then100, %land.lhs.true, %for.body92, %if.then108
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !228
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !119), !dbg !228
  %38 = load i32* %size, align 4, !dbg !228, !tbaa !136
  %39 = trunc i64 %indvars.iv.next to i32, !dbg !228
  %cmp91 = icmp slt i32 %39, %38, !dbg !228
  br i1 %cmp91, label %for.body92, label %while.cond.loopexit, !dbg !228

while.body122:                                    ; preds = %while.cond119.preheader, %while.body122
  %40 = phi %struct._cell* [ %46, %while.body122 ], [ %.pr, %while.cond119.preheader ]
  %next123 = getelementptr inbounds %struct._cell* %40, i64 0, i32 5, !dbg !240
  %41 = load %struct._cell** %next123, align 8, !dbg !240, !tbaa !131
  %prev124 = getelementptr inbounds %struct._cell* %40, i64 0, i32 4, !dbg !240
  %42 = load %struct._cell** %prev124, align 8, !dbg !240, !tbaa !131
  %next125 = getelementptr inbounds %struct._cell* %42, i64 0, i32 5, !dbg !240
  store %struct._cell* %41, %struct._cell** %next125, align 8, !dbg !240, !tbaa !131
  %43 = load %struct._cell** %prev124, align 8, !dbg !240, !tbaa !131
  %44 = load %struct._cell** %next123, align 8, !dbg !240, !tbaa !131
  %prev128 = getelementptr inbounds %struct._cell* %44, i64 0, i32 4, !dbg !240
  store %struct._cell* %43, %struct._cell** %prev128, align 8, !dbg !240, !tbaa !131
  store %struct._cell* %40, %struct._cell** %next123, align 8, !dbg !240, !tbaa !131
  store %struct._cell* %40, %struct._cell** %prev124, align 8, !dbg !240, !tbaa !131
  %domid131 = getelementptr inbounds %struct._cell* %40, i64 0, i32 0, !dbg !242
  %45 = load i32* %domid131, align 4, !dbg !242, !tbaa !136
  call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %45) #5, !dbg !242
  %46 = load %struct._cell** getelementptr inbounds (%struct._cell* @Undo, i64 0, i32 5), align 8, !dbg !204, !tbaa !131
  call void @llvm.dbg.value(metadata !{%struct._cell* %40}, i64 0, metadata !111), !dbg !204
  %cmp121 = icmp eq %struct._cell* %46, @Undo, !dbg !204
  br i1 %cmp121, label %while.end132, label %while.body122, !dbg !204

while.end132:                                     ; preds = %if.end, %while.body122, %while.cond119.preheader
  %bestcost.0.lcssa245 = phi float [ %bestcost.0.lcssa.ph, %while.body122 ], [ %bestcost.0.lcssa.ph, %while.cond119.preheader ], [ %call8, %if.end ]
  ret float %bestcost.0.lcssa245, !dbg !243
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare void @Graph_free(%struct._Graph*) #4

; Function Attrs: optsize
declare i32 @BKL_domAdjToSep(%struct._BKL*, i32) #4

; Function Attrs: optsize
declare void @BKL_evalgain(%struct._BKL*, i32, i32*, i32*, i32*) #4

; Function Attrs: optsize
declare float @BKL_eval(%struct._BKL*, i32, i32, i32) #4

; Function Attrs: optsize
declare void @BKL_flipDomain(%struct._BKL*, i32) #4

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #4

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !122, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !102}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_fidmat", metadata !"BKL_fidmat", metadata !"", i32 47, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._BKL*)* @BKL_fidmat, null, null, metadata !77, i32 49} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 49] [BKL_fidmat]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BKL]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"BKL", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [BKL] [line 45, size 0, align 0, offset 0] [from _BKL]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_BKL", i32 46, i64 704, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BKL] [line 46, size 704, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../BKL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !75, metadata !76}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"bpg", i32 47, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [bpg] [line 47, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BPG]
!16 = metadata !{i32 786454, metadata !12, null, metadata !"BPG", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [BPG] [line 21, size 0, align 0, offset 0] [from _BPG]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"_BPG", i32 22, i64 128, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BPG] [line 22, size 128, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../BPG/BPG.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !22, metadata !23}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"nX", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [nX] [line 23, size 32, align 32, offset 0] [from int]
!21 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"nY", i32 24, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [nY] [line 24, size 32, align 32, offset 32] [from int]
!23 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"graph", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [graph] [line 25, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!25 = metadata !{i32 786454, metadata !18, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../Graph/Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !59, metadata !60}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!32 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!33 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !21} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!35 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!37 = metadata !{i32 786454, metadata !27, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!38 = metadata !{i32 786451, metadata !39, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !40, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!39 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !47, metadata !49, metadata !50}
!41 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!42 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!43 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!44 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!45 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!47 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !48} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!50 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !51} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!52 = metadata !{i32 786454, metadata !39, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!53 = metadata !{i32 786451, metadata !39, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !54, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58}
!55 = metadata !{i32 786445, metadata !39, metadata !53, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!56 = metadata !{i32 786445, metadata !39, metadata !53, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!57 = metadata !{i32 786445, metadata !39, metadata !53, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!58 = metadata !{i32 786445, metadata !39, metadata !53, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !51} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!59 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!60 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!61 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ndom", i32 48, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [ndom] [line 48, size 32, align 32, offset 64] [from int]
!62 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nseg", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [nseg] [line 49, size 32, align 32, offset 96] [from int]
!63 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nreg", i32 50, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [nreg] [line 50, size 32, align 32, offset 128] [from int]
!64 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"totweight", i32 51, i64 32, i64 32, i64 160, i32 0, metadata !21} ; [ DW_TAG_member ] [totweight] [line 51, size 32, align 32, offset 160] [from int]
!65 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"npass", i32 52, i64 32, i64 32, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [npass] [line 52, size 32, align 32, offset 192] [from int]
!66 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"npatch", i32 53, i64 32, i64 32, i64 224, i32 0, metadata !21} ; [ DW_TAG_member ] [npatch] [line 53, size 32, align 32, offset 224] [from int]
!67 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nflips", i32 54, i64 32, i64 32, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [nflips] [line 54, size 32, align 32, offset 256] [from int]
!68 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nimprove", i32 55, i64 32, i64 32, i64 288, i32 0, metadata !21} ; [ DW_TAG_member ] [nimprove] [line 55, size 32, align 32, offset 288] [from int]
!69 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ngaineval", i32 56, i64 32, i64 32, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [ngaineval] [line 56, size 32, align 32, offset 320] [from int]
!70 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"colors", i32 57, i64 64, i64 64, i64 384, i32 0, metadata !46} ; [ DW_TAG_member ] [colors] [line 57, size 64, align 64, offset 384] [from ]
!71 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cweights", i32 58, i64 96, i64 32, i64 448, i32 0, metadata !72} ; [ DW_TAG_member ] [cweights] [line 58, size 96, align 32, offset 448] [from ]
!72 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !21, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!75 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"regwghts", i32 59, i64 64, i64 64, i64 576, i32 0, metadata !46} ; [ DW_TAG_member ] [regwghts] [line 59, size 64, align 64, offset 576] [from ]
!76 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"alpha", i32 60, i64 32, i64 32, i64 640, i32 0, metadata !8} ; [ DW_TAG_member ] [alpha] [line 60, size 32, align 32, offset 640] [from float]
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !81, metadata !83, metadata !84, metadata !85, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101}
!78 = metadata !{i32 786689, metadata !4, metadata !"bkl", metadata !5, i32 16777264, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 48]
!79 = metadata !{i32 786688, metadata !4, metadata !"cost", metadata !5, i32 50, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cost] [line 50]
!80 = metadata !{i32 786688, metadata !4, metadata !"ndom", metadata !5, i32 51, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndom] [line 51]
!81 = metadata !{i32 786688, metadata !82, metadata !"mdom", metadata !5, i32 73, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mdom] [line 73]
!82 = metadata !{i32 786443, metadata !1, metadata !4, i32 72, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!83 = metadata !{i32 786688, metadata !82, metadata !"domids", metadata !5, i32 73, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domids] [line 73]
!84 = metadata !{i32 786688, metadata !82, metadata !"tcolors", metadata !5, i32 73, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tcolors] [line 73]
!85 = metadata !{i32 786688, metadata !86, metadata !"cell", metadata !5, i32 88, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cell] [line 88]
!86 = metadata !{i32 786443, metadata !1, metadata !4, i32 87, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Cell]
!88 = metadata !{i32 786454, metadata !1, null, metadata !"Cell", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [Cell] [line 14, size 0, align 0, offset 0] [from _cell]
!89 = metadata !{i32 786451, metadata !1, null, metadata !"_cell", i32 15, i64 256, i64 64, i32 0, i32 0, null, metadata !90, i32 0, null, null} ; [ DW_TAG_structure_type ] [_cell] [line 15, size 256, align 64, offset 0] [from ]
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96}
!91 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"domid", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [domid] [line 16, size 32, align 32, offset 0] [from int]
!92 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"deltaS", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [deltaS] [line 17, size 32, align 32, offset 32] [from int]
!93 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"deltaB", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [deltaB] [line 18, size 32, align 32, offset 64] [from int]
!94 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"deltaW", i32 19, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [deltaW] [line 19, size 32, align 32, offset 96] [from int]
!95 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"prev", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !87} ; [ DW_TAG_member ] [prev] [line 20, size 64, align 64, offset 128] [from ]
!96 = metadata !{i32 786445, metadata !1, metadata !89, metadata !"next", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !87} ; [ DW_TAG_member ] [next] [line 21, size 64, align 64, offset 192] [from ]
!97 = metadata !{i32 786688, metadata !86, metadata !"cells", metadata !5, i32 88, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cells] [line 88]
!98 = metadata !{i32 786688, metadata !86, metadata !"bestcost", metadata !5, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bestcost] [line 89]
!99 = metadata !{i32 786688, metadata !86, metadata !"DomByDom", metadata !5, i32 90, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DomByDom] [line 90]
!100 = metadata !{i32 786688, metadata !86, metadata !"idom", metadata !5, i32 91, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idom] [line 91]
!101 = metadata !{i32 786688, metadata !86, metadata !"tags", metadata !5, i32 92, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tags] [line 92]
!102 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_fidmatPass", metadata !"BKL_fidmatPass", metadata !"", i32 176, metadata !103, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._BKL*, %struct._cell*, i32*, %struct._Graph*, i32)* @BKL_fidmatPass, null, null, metadata !105, i32 182} ; [ DW_TAG_subprogram ] [line 176] [local] [def] [scope 182] [BKL_fidmatPass]
!103 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!104 = metadata !{metadata !8, metadata !9, metadata !87, metadata !46, metadata !24, metadata !21}
!105 = metadata !{metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121}
!106 = metadata !{i32 786689, metadata !102, metadata !"bkl", metadata !5, i32 16777393, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 177]
!107 = metadata !{i32 786689, metadata !102, metadata !"cells", metadata !5, i32 33554610, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cells] [line 178]
!108 = metadata !{i32 786689, metadata !102, metadata !"tags", metadata !5, i32 50331827, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tags] [line 179]
!109 = metadata !{i32 786689, metadata !102, metadata !"DomByDom", metadata !5, i32 67109044, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DomByDom] [line 180]
!110 = metadata !{i32 786689, metadata !102, metadata !"npass", metadata !5, i32 83886261, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [npass] [line 181]
!111 = metadata !{i32 786688, metadata !102, metadata !"cell", metadata !5, i32 183, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cell] [line 183]
!112 = metadata !{i32 786688, metadata !102, metadata !"bestcost", metadata !5, i32 184, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bestcost] [line 184]
!113 = metadata !{i32 786688, metadata !102, metadata !"bettercost", metadata !5, i32 184, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bettercost] [line 184]
!114 = metadata !{i32 786688, metadata !102, metadata !"cost", metadata !5, i32 184, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cost] [line 184]
!115 = metadata !{i32 786688, metadata !102, metadata !"dom", metadata !5, i32 185, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dom] [line 185]
!116 = metadata !{i32 786688, metadata !102, metadata !"dom2", metadata !5, i32 185, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dom2] [line 185]
!117 = metadata !{i32 786688, metadata !102, metadata !"ii", metadata !5, i32 185, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 185]
!118 = metadata !{i32 786688, metadata !102, metadata !"ndom", metadata !5, i32 185, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndom] [line 185]
!119 = metadata !{i32 786688, metadata !102, metadata !"size", metadata !5, i32 185, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 185]
!120 = metadata !{i32 786688, metadata !102, metadata !"cweights", metadata !5, i32 186, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cweights] [line 186]
!121 = metadata !{i32 786688, metadata !102, metadata !"doms", metadata !5, i32 186, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [doms] [line 186]
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126}
!123 = metadata !{i32 786484, i32 0, null, metadata !"undo", metadata !"undo", metadata !"", metadata !5, i32 25, metadata !87, i32 1, i32 1, null, null}
!124 = metadata !{i32 786484, i32 0, null, metadata !"Undo", metadata !"Undo", metadata !"", metadata !5, i32 25, metadata !88, i32 1, i32 1, %struct._cell* @Undo, null} ; [ DW_TAG_variable ] [Undo] [line 25] [local] [def]
!125 = metadata !{i32 786484, i32 0, null, metadata !"head", metadata !"head", metadata !"", metadata !5, i32 24, metadata !87, i32 1, i32 1, null, null}
!126 = metadata !{i32 786484, i32 0, null, metadata !"Head", metadata !"Head", metadata !"", metadata !5, i32 24, metadata !88, i32 1, i32 1, %struct._cell* @Head, null} ; [ DW_TAG_variable ] [Head] [line 24] [local] [def]
!127 = metadata !{i32 48, i32 0, metadata !4, null}
!128 = metadata !{i32 57, i32 0, metadata !4, null}
!129 = metadata !{i32 58, i32 0, metadata !130, null} ; [ DW_TAG_imported_module ]
!130 = metadata !{i32 786443, metadata !1, metadata !4, i32 57, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!131 = metadata !{metadata !"any pointer", metadata !132}
!132 = metadata !{metadata !"omnipotent char", metadata !133}
!133 = metadata !{metadata !"Simple C/C++ TBAA"}
!134 = metadata !{i32 60, i32 0, metadata !130, null}
!135 = metadata !{i32 62, i32 0, metadata !4, null}
!136 = metadata !{metadata !"int", metadata !132}
!137 = metadata !{i32 72, i32 0, metadata !4, null}
!138 = metadata !{i32 79, i32 0, metadata !82, null}
!139 = metadata !{i32 80, i32 0, metadata !82, null}
!140 = metadata !{i32 81, i32 0, metadata !82, null}
!141 = metadata !{i32 82, i32 0, metadata !82, null}
!142 = metadata !{i32 83, i32 0, metadata !82, null}
!143 = metadata !{i32 84, i32 0, metadata !82, null}
!144 = metadata !{i32 85, i32 0, metadata !82, null}
!145 = metadata !{i32 86, i32 0, metadata !82, null}
!146 = metadata !{i32 87, i32 0, metadata !82, null}
!147 = metadata !{i32 98, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !86, i32 98, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!149 = metadata !{i32 98, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !148, i32 98, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!151 = metadata !{i32 99, i32 0, metadata !86, null}
!152 = metadata !{i32 100, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !86, i32 100, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!154 = metadata !{i32 101, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !153, i32 100, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!156 = metadata !{i32 102, i32 0, metadata !155, null}
!157 = metadata !{i32 103, i32 0, metadata !155, null}
!158 = metadata !{i32 110, i32 0, metadata !86, null}
!159 = metadata !{i32 127, i32 0, metadata !86, null}
!160 = metadata !{i32 128, i32 0, metadata !86, null}
!161 = metadata !{i32 140, i32 0, metadata !86, null}
!162 = metadata !{i32 141, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !86, i32 140, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!164 = metadata !{i32 142, i32 0, metadata !163, null}
!165 = metadata !{i32 149, i32 0, metadata !163, null}
!166 = metadata !{i32 160, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !86, i32 160, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!168 = metadata !{%struct._cell* null}
!169 = metadata !{i32 161, i32 0, metadata !86, null}
!170 = metadata !{i32 162, i32 0, metadata !86, null}
!171 = metadata !{i32 165, i32 0, metadata !4, null}
!172 = metadata !{i32 177, i32 0, metadata !102, null}
!173 = metadata !{i32 178, i32 0, metadata !102, null}
!174 = metadata !{i32 179, i32 0, metadata !102, null}
!175 = metadata !{i32 180, i32 0, metadata !102, null}
!176 = metadata !{i32 181, i32 0, metadata !102, null}
!177 = metadata !{i32 185, i32 0, metadata !102, null}
!178 = metadata !{i32 186, i32 0, metadata !102, null}
!179 = metadata !{i32 192, i32 0, metadata !102, null}
!180 = metadata !{i32 193, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !102, i32 192, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!182 = metadata !{i32 195, i32 0, metadata !181, null}
!183 = metadata !{i32 197, i32 0, metadata !102, null}
!184 = metadata !{i32 198, i32 0, metadata !102, null}
!185 = metadata !{i32 204, i32 0, metadata !102, null}
!186 = metadata !{i32 210, i32 0, metadata !102, null}
!187 = metadata !{i32 211, i32 0, metadata !102, null}
!188 = metadata !{i32 212, i32 0, metadata !189, null}
!189 = metadata !{i32 786443, metadata !1, metadata !102, i32 212, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!190 = metadata !{i32 238, i32 0, metadata !102, null}
!191 = metadata !{i32 246, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !102, i32 238, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!193 = metadata !{i32 305, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !192, i32 297, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!195 = metadata !{i32 213, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !189, i32 212, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!197 = metadata !{i32 214, i32 0, metadata !196, null}
!198 = metadata !{i32 215, i32 0, metadata !196, null}
!199 = metadata !{i32 216, i32 0, metadata !196, null}
!200 = metadata !{i32 223, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !196, i32 216, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!202 = metadata !{i32 230, i32 0, metadata !201, null}
!203 = metadata !{i32 231, i32 0, metadata !201, null}
!204 = metadata !{i32 361, i32 0, metadata !102, null}
!205 = metadata !{i32 244, i32 0, metadata !192, null}
!206 = metadata !{i32 245, i32 0, metadata !192, null}
!207 = metadata !{i32 254, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !192, i32 254, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!209 = metadata !{i32 255, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !208, i32 254, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!211 = metadata !{i32 263, i32 0, metadata !210, null}
!212 = metadata !{i32 268, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !210, i32 263, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!214 = metadata !{i32 269, i32 0, metadata !213, null}
!215 = metadata !{i32 270, i32 0, metadata !213, null}
!216 = metadata !{i32 277, i32 0, metadata !192, null}
!217 = metadata !{i32 278, i32 0, metadata !192, null}
!218 = metadata !{i32 291, i32 0, metadata !192, null}
!219 = metadata !{i32 292, i32 0, metadata !192, null}
!220 = metadata !{i32 297, i32 0, metadata !192, null}
!221 = metadata !{i32 304, i32 0, metadata !194, null}
!222 = metadata !{i32 303, i32 0, metadata !194, null}
!223 = metadata !{i32 306, i32 0, metadata !194, null}
!224 = metadata !{i32 312, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !192, i32 306, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!226 = metadata !{i32 319, i32 0, metadata !192, null}
!227 = metadata !{i32 320, i32 0, metadata !192, null}
!228 = metadata !{i32 321, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !192, i32 321, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!230 = metadata !{i32 322, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !229, i32 321, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!232 = metadata !{i32 323, i32 0, metadata !231, null}
!233 = metadata !{i32 336, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !231, i32 323, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!235 = metadata !{i32 337, i32 0, metadata !234, null}
!236 = metadata !{i32 344, i32 0, metadata !234, null}
!237 = metadata !{i32 351, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !234, i32 344, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!239 = metadata !{i32 352, i32 0, metadata !238, null}
!240 = metadata !{i32 366, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !102, i32 361, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_fidmat.c]
!242 = metadata !{i32 367, i32 0, metadata !241, null}
!243 = metadata !{i32 369, i32 0, metadata !102, null}
