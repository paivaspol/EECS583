; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tophit_s = type { %struct.hit_s**, %struct.hit_s*, i32, i32, i32 }
%struct.hit_s = type { double, float, double, float, double, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s* }
%struct.fancyali_s = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c\00", align 1
@.str2 = private unnamed_addr constant [31 x i8] c"     Total hits:           %d\0A\00", align 1
@.str3 = private unnamed_addr constant [31 x i8] c"     Satisfying E cutoff:  %d\0A\00", align 1
@.str4 = private unnamed_addr constant [32 x i8] c"     Total memory:         %dK\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"tophits_s report:\00"

; Function Attrs: nounwind optsize uwtable
define %struct.tophit_s* @AllocTophits(i32 %lumpsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %lumpsize}, i64 0, metadata !57), !dbg !160
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 82, i64 32) #7, !dbg !161
  %0 = bitcast i8* %call to %struct.tophit_s*, !dbg !161
  tail call void @llvm.dbg.value(metadata !{%struct.tophit_s* %0}, i64 0, metadata !58), !dbg !161
  %hit = bitcast i8* %call to %struct.hit_s***, !dbg !162
  store %struct.hit_s** null, %struct.hit_s*** %hit, align 8, !dbg !162, !tbaa !163
  %conv = sext i32 %lumpsize to i64, !dbg !166
  %mul = mul i64 %conv, 104, !dbg !166
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 84, i64 %mul) #7, !dbg !166
  %1 = bitcast i8* %call1 to %struct.hit_s*, !dbg !166
  %unsrt = getelementptr inbounds i8* %call, i64 8, !dbg !166
  %2 = bitcast i8* %unsrt to %struct.hit_s**, !dbg !166
  store %struct.hit_s* %1, %struct.hit_s** %2, align 8, !dbg !166, !tbaa !163
  %alloc = getelementptr inbounds i8* %call, i64 16, !dbg !167
  %3 = bitcast i8* %alloc to i32*, !dbg !167
  store i32 %lumpsize, i32* %3, align 4, !dbg !167, !tbaa !168
  %num = getelementptr inbounds i8* %call, i64 20, !dbg !169
  %4 = bitcast i8* %num to i32*, !dbg !169
  store i32 0, i32* %4, align 4, !dbg !169, !tbaa !168
  %lump = getelementptr inbounds i8* %call, i64 24, !dbg !170
  %5 = bitcast i8* %lump to i32*, !dbg !170
  store i32 %lumpsize, i32* %5, align 4, !dbg !170, !tbaa !168
  ret %struct.tophit_s* %0, !dbg !171
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @GrowTophits(%struct.tophit_s* nocapture %h) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tophit_s* %h}, i64 0, metadata !63), !dbg !172
  %unsrt = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 1, !dbg !173
  %0 = load %struct.hit_s** %unsrt, align 8, !dbg !173, !tbaa !163
  %1 = bitcast %struct.hit_s* %0 to i8*, !dbg !173
  %alloc = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 2, !dbg !173
  %2 = load i32* %alloc, align 4, !dbg !173, !tbaa !168
  %lump = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 4, !dbg !173
  %3 = load i32* %lump, align 4, !dbg !173, !tbaa !168
  %add = add nsw i32 %3, %2, !dbg !173
  %conv = sext i32 %add to i64, !dbg !173
  %mul = mul i64 %conv, 104, !dbg !173
  %call = tail call i8* @sre_realloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 93, i8* %1, i64 %mul) #7, !dbg !173
  %4 = bitcast i8* %call to %struct.hit_s*, !dbg !173
  store %struct.hit_s* %4, %struct.hit_s** %unsrt, align 8, !dbg !173, !tbaa !163
  %5 = load i32* %lump, align 4, !dbg !174, !tbaa !168
  %6 = load i32* %alloc, align 4, !dbg !174, !tbaa !168
  %add4 = add nsw i32 %6, %5, !dbg !174
  store i32 %add4, i32* %alloc, align 4, !dbg !174, !tbaa !168
  ret void, !dbg !175
}

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @FreeTophits(%struct.tophit_s* nocapture %h) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tophit_s* %h}, i64 0, metadata !66), !dbg !176
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !67), !dbg !177
  %num = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 3, !dbg !177
  %0 = load i32* %num, align 4, !dbg !177, !tbaa !168
  %cmp62 = icmp sgt i32 %0, 0, !dbg !177
  %unsrt = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 1, !dbg !179
  br i1 %cmp62, label %for.body, label %for.end, !dbg !177

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %1 = load %struct.hit_s** %unsrt, align 8, !dbg !179, !tbaa !163
  %ali = getelementptr inbounds %struct.hit_s* %1, i64 %indvars.iv, i32 16, !dbg !179
  %2 = load %struct.fancyali_s** %ali, align 8, !dbg !179, !tbaa !163
  %cmp1 = icmp eq %struct.fancyali_s* %2, null, !dbg !179
  br i1 %cmp1, label %if.end, label %if.then, !dbg !179

if.then:                                          ; preds = %for.body
  tail call void @FreeFancyAli(%struct.fancyali_s* %2) #8, !dbg !179
  %.pre = load %struct.hit_s** %unsrt, align 8, !dbg !181, !tbaa !163
  br label %if.end, !dbg !179

if.end:                                           ; preds = %for.body, %if.then
  %3 = phi %struct.hit_s* [ %1, %for.body ], [ %.pre, %if.then ]
  %name = getelementptr inbounds %struct.hit_s* %3, i64 %indvars.iv, i32 5, !dbg !181
  %4 = load i8** %name, align 8, !dbg !181, !tbaa !163
  %cmp9 = icmp eq i8* %4, null, !dbg !181
  br i1 %cmp9, label %if.end15, label %if.then10, !dbg !181

if.then10:                                        ; preds = %if.end
  tail call void @free(i8* %4) #7, !dbg !181
  %.pre64 = load %struct.hit_s** %unsrt, align 8, !dbg !182, !tbaa !163
  br label %if.end15, !dbg !181

if.end15:                                         ; preds = %if.end, %if.then10
  %5 = phi %struct.hit_s* [ %3, %if.end ], [ %.pre64, %if.then10 ]
  %acc = getelementptr inbounds %struct.hit_s* %5, i64 %indvars.iv, i32 6, !dbg !182
  %6 = load i8** %acc, align 8, !dbg !182, !tbaa !163
  %cmp19 = icmp eq i8* %6, null, !dbg !182
  br i1 %cmp19, label %if.end25, label %if.then20, !dbg !182

if.then20:                                        ; preds = %if.end15
  tail call void @free(i8* %6) #7, !dbg !182
  %.pre65 = load %struct.hit_s** %unsrt, align 8, !dbg !183, !tbaa !163
  br label %if.end25, !dbg !182

if.end25:                                         ; preds = %if.end15, %if.then20
  %7 = phi %struct.hit_s* [ %5, %if.end15 ], [ %.pre65, %if.then20 ]
  %desc = getelementptr inbounds %struct.hit_s* %7, i64 %indvars.iv, i32 7, !dbg !183
  %8 = load i8** %desc, align 8, !dbg !183, !tbaa !163
  %cmp29 = icmp eq i8* %8, null, !dbg !183
  br i1 %cmp29, label %for.inc, label %if.then30, !dbg !183

if.then30:                                        ; preds = %if.end25
  tail call void @free(i8* %8) #7, !dbg !183
  br label %for.inc, !dbg !183

for.inc:                                          ; preds = %if.end25, %if.then30
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !177
  %9 = load i32* %num, align 4, !dbg !177, !tbaa !168
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !177
  %cmp = icmp slt i32 %10, %9, !dbg !177
  br i1 %cmp, label %for.body, label %for.end, !dbg !177

for.end:                                          ; preds = %entry, %for.inc
  %11 = load %struct.hit_s** %unsrt, align 8, !dbg !184, !tbaa !163
  %12 = bitcast %struct.hit_s* %11 to i8*, !dbg !184
  tail call void @free(i8* %12) #7, !dbg !184
  %hit = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !185
  %13 = load %struct.hit_s*** %hit, align 8, !dbg !185, !tbaa !163
  %cmp37 = icmp eq %struct.hit_s** %13, null, !dbg !185
  br i1 %cmp37, label %if.end40, label %if.then38, !dbg !185

if.then38:                                        ; preds = %for.end
  %14 = bitcast %struct.hit_s** %13 to i8*, !dbg !185
  tail call void @free(i8* %14) #7, !dbg !185
  br label %if.end40, !dbg !185

if.end40:                                         ; preds = %for.end, %if.then38
  %15 = bitcast %struct.tophit_s* %h to i8*, !dbg !186
  tail call void @free(i8* %15) #7, !dbg !186
  ret void, !dbg !187
}

; Function Attrs: nounwind optsize uwtable
define void @FreeFancyAli(%struct.fancyali_s* %ali) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.fancyali_s* %ali}, i64 0, metadata !77), !dbg !188
  %cmp = icmp eq %struct.fancyali_s* %ali, null, !dbg !189
  br i1 %cmp, label %if.end28, label %if.then, !dbg !189

if.then:                                          ; preds = %entry
  %rfline = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 0, !dbg !190
  %0 = load i8** %rfline, align 8, !dbg !190, !tbaa !163
  %cmp1 = icmp eq i8* %0, null, !dbg !190
  br i1 %cmp1, label %if.end, label %if.then2, !dbg !190

if.then2:                                         ; preds = %if.then
  tail call void @free(i8* %0) #7, !dbg !190
  br label %if.end, !dbg !190

if.end:                                           ; preds = %if.then, %if.then2
  %csline = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 1, !dbg !192
  %1 = load i8** %csline, align 8, !dbg !192, !tbaa !163
  %cmp4 = icmp eq i8* %1, null, !dbg !192
  br i1 %cmp4, label %if.end7, label %if.then5, !dbg !192

if.then5:                                         ; preds = %if.end
  tail call void @free(i8* %1) #7, !dbg !192
  br label %if.end7, !dbg !192

if.end7:                                          ; preds = %if.end, %if.then5
  %model = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 2, !dbg !193
  %2 = load i8** %model, align 8, !dbg !193, !tbaa !163
  %cmp8 = icmp eq i8* %2, null, !dbg !193
  br i1 %cmp8, label %if.end11, label %if.then9, !dbg !193

if.then9:                                         ; preds = %if.end7
  tail call void @free(i8* %2) #7, !dbg !193
  br label %if.end11, !dbg !193

if.end11:                                         ; preds = %if.end7, %if.then9
  %mline = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 3, !dbg !194
  %3 = load i8** %mline, align 8, !dbg !194, !tbaa !163
  %cmp12 = icmp eq i8* %3, null, !dbg !194
  br i1 %cmp12, label %if.end15, label %if.then13, !dbg !194

if.then13:                                        ; preds = %if.end11
  tail call void @free(i8* %3) #7, !dbg !194
  br label %if.end15, !dbg !194

if.end15:                                         ; preds = %if.end11, %if.then13
  %aseq = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 4, !dbg !195
  %4 = load i8** %aseq, align 8, !dbg !195, !tbaa !163
  %cmp16 = icmp eq i8* %4, null, !dbg !195
  br i1 %cmp16, label %if.end19, label %if.then17, !dbg !195

if.then17:                                        ; preds = %if.end15
  tail call void @free(i8* %4) #7, !dbg !195
  br label %if.end19, !dbg !195

if.end19:                                         ; preds = %if.end15, %if.then17
  %query = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 6, !dbg !196
  %5 = load i8** %query, align 8, !dbg !196, !tbaa !163
  %cmp20 = icmp eq i8* %5, null, !dbg !196
  br i1 %cmp20, label %if.end23, label %if.then21, !dbg !196

if.then21:                                        ; preds = %if.end19
  tail call void @free(i8* %5) #7, !dbg !196
  br label %if.end23, !dbg !196

if.end23:                                         ; preds = %if.end19, %if.then21
  %target = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 7, !dbg !197
  %6 = load i8** %target, align 8, !dbg !197, !tbaa !163
  %cmp24 = icmp eq i8* %6, null, !dbg !197
  br i1 %cmp24, label %if.end27, label %if.then25, !dbg !197

if.then25:                                        ; preds = %if.end23
  tail call void @free(i8* %6) #7, !dbg !197
  br label %if.end27, !dbg !197

if.end27:                                         ; preds = %if.end23, %if.then25
  %7 = bitcast %struct.fancyali_s* %ali to i8*, !dbg !198
  tail call void @free(i8* %7) #7, !dbg !198
  br label %if.end28, !dbg !199

if.end28:                                         ; preds = %entry, %if.end27
  ret void, !dbg !200
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define %struct.fancyali_s* @AllocFancyAli() #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 117, i64 72) #7, !dbg !201
  %0 = bitcast i8* %call to %struct.fancyali_s*, !dbg !201
  tail call void @llvm.dbg.value(metadata !{%struct.fancyali_s* %0}, i64 0, metadata !72), !dbg !201
  %query = getelementptr inbounds i8* %call, i64 48, !dbg !202
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 40, i32 8, i1 false), !dbg !203
  call void @llvm.memset.p0i8.i64(i8* %query, i8 0, i64 24, i32 8, i1 false), !dbg !202
  ret %struct.fancyali_s* %0, !dbg !204
}

; Function Attrs: nounwind optsize uwtable
define void @RegisterHit(%struct.tophit_s* nocapture %h, double %key, double %pvalue, float %score, double %motherp, float %mothersc, i8* %name, i8* %acc, i8* %desc, i32 %sqfrom, i32 %sqto, i32 %sqlen, i32 %hmmfrom, i32 %hmmto, i32 %hmmlen, i32 %domidx, i32 %ndom, %struct.fancyali_s* %ali) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tophit_s* %h}, i64 0, metadata !82), !dbg !205
  tail call void @llvm.dbg.value(metadata !{double %key}, i64 0, metadata !83), !dbg !205
  tail call void @llvm.dbg.value(metadata !{double %pvalue}, i64 0, metadata !84), !dbg !206
  tail call void @llvm.dbg.value(metadata !{float %score}, i64 0, metadata !85), !dbg !206
  tail call void @llvm.dbg.value(metadata !{double %motherp}, i64 0, metadata !86), !dbg !206
  tail call void @llvm.dbg.value(metadata !{float %mothersc}, i64 0, metadata !87), !dbg !206
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !88), !dbg !207
  tail call void @llvm.dbg.value(metadata !{i8* %acc}, i64 0, metadata !89), !dbg !207
  tail call void @llvm.dbg.value(metadata !{i8* %desc}, i64 0, metadata !90), !dbg !207
  tail call void @llvm.dbg.value(metadata !{i32 %sqfrom}, i64 0, metadata !91), !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32 %sqto}, i64 0, metadata !92), !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32 %sqlen}, i64 0, metadata !93), !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32 %hmmfrom}, i64 0, metadata !94), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %hmmto}, i64 0, metadata !95), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %hmmlen}, i64 0, metadata !96), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %domidx}, i64 0, metadata !97), !dbg !210
  tail call void @llvm.dbg.value(metadata !{i32 %ndom}, i64 0, metadata !98), !dbg !210
  tail call void @llvm.dbg.value(metadata !{%struct.fancyali_s* %ali}, i64 0, metadata !99), !dbg !211
  %num = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 3, !dbg !212
  %0 = load i32* %num, align 4, !dbg !212, !tbaa !168
  %alloc = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 2, !dbg !212
  %1 = load i32* %alloc, align 4, !dbg !212, !tbaa !168
  %cmp = icmp eq i32 %0, %1, !dbg !212
  %unsrt.i = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 1, !dbg !213
  br i1 %cmp, label %if.then, label %if.end, !dbg !212

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.tophit_s* %h}, i64 0, metadata !214) #6, !dbg !215
  %2 = load %struct.hit_s** %unsrt.i, align 8, !dbg !213, !tbaa !163
  %3 = bitcast %struct.hit_s* %2 to i8*, !dbg !213
  %lump.i = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 4, !dbg !213
  %4 = load i32* %lump.i, align 4, !dbg !213, !tbaa !168
  %add.i = add nsw i32 %4, %0, !dbg !213
  %conv.i = sext i32 %add.i to i64, !dbg !213
  %mul.i = mul i64 %conv.i, 104, !dbg !213
  %call.i = tail call i8* @sre_realloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 93, i8* %3, i64 %mul.i) #7, !dbg !213
  %5 = bitcast i8* %call.i to %struct.hit_s*, !dbg !213
  store %struct.hit_s* %5, %struct.hit_s** %unsrt.i, align 8, !dbg !213, !tbaa !163
  %6 = load i32* %lump.i, align 4, !dbg !216, !tbaa !168
  %7 = load i32* %alloc, align 4, !dbg !216, !tbaa !168
  %add4.i = add nsw i32 %7, %6, !dbg !216
  store i32 %add4.i, i32* %alloc, align 4, !dbg !216, !tbaa !168
  br label %if.end, !dbg !212

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i8* @Strdup(i8* %name) #7, !dbg !217
  %8 = load i32* %num, align 4, !dbg !217, !tbaa !168
  %idxprom = sext i32 %8 to i64, !dbg !217
  %9 = load %struct.hit_s** %unsrt.i, align 8, !dbg !217, !tbaa !163
  %name2 = getelementptr inbounds %struct.hit_s* %9, i64 %idxprom, i32 5, !dbg !217
  store i8* %call, i8** %name2, align 8, !dbg !217, !tbaa !163
  %call3 = tail call i8* @Strdup(i8* %acc) #7, !dbg !218
  %10 = load i32* %num, align 4, !dbg !218, !tbaa !168
  %idxprom5 = sext i32 %10 to i64, !dbg !218
  %11 = load %struct.hit_s** %unsrt.i, align 8, !dbg !218, !tbaa !163
  %acc8 = getelementptr inbounds %struct.hit_s* %11, i64 %idxprom5, i32 6, !dbg !218
  store i8* %call3, i8** %acc8, align 8, !dbg !218, !tbaa !163
  %call9 = tail call i8* @Strdup(i8* %desc) #7, !dbg !219
  %12 = load i32* %num, align 4, !dbg !219, !tbaa !168
  %idxprom11 = sext i32 %12 to i64, !dbg !219
  %13 = load %struct.hit_s** %unsrt.i, align 8, !dbg !219, !tbaa !163
  %desc14 = getelementptr inbounds %struct.hit_s* %13, i64 %idxprom11, i32 7, !dbg !219
  store i8* %call9, i8** %desc14, align 8, !dbg !219, !tbaa !163
  %14 = load %struct.hit_s** %unsrt.i, align 8, !dbg !220, !tbaa !163
  %sortkey = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom11, i32 0, !dbg !220
  store double %key, double* %sortkey, align 8, !dbg !220, !tbaa !221
  %pvalue23 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom11, i32 2, !dbg !222
  store double %pvalue, double* %pvalue23, align 8, !dbg !222, !tbaa !221
  %score28 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom11, i32 1, !dbg !223
  store float %score, float* %score28, align 4, !dbg !223, !tbaa !224
  %motherp33 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom11, i32 4, !dbg !225
  store double %motherp, double* %motherp33, align 8, !dbg !225, !tbaa !221
  %mothersc38 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom11, i32 3, !dbg !226
  store float %mothersc, float* %mothersc38, align 4, !dbg !226, !tbaa !224
  %sqfrom43 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom11, i32 8, !dbg !227
  store i32 %sqfrom, i32* %sqfrom43, align 4, !dbg !227, !tbaa !168
  %15 = load i32* %num, align 4, !dbg !228, !tbaa !168
  %idxprom45 = sext i32 %15 to i64, !dbg !228
  %sqto48 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom45, i32 9, !dbg !228
  store i32 %sqto, i32* %sqto48, align 4, !dbg !228, !tbaa !168
  %16 = load i32* %num, align 4, !dbg !229, !tbaa !168
  %idxprom50 = sext i32 %16 to i64, !dbg !229
  %sqlen53 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom50, i32 10, !dbg !229
  store i32 %sqlen, i32* %sqlen53, align 4, !dbg !229, !tbaa !168
  %17 = load i32* %num, align 4, !dbg !230, !tbaa !168
  %idxprom55 = sext i32 %17 to i64, !dbg !230
  %hmmfrom58 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom55, i32 11, !dbg !230
  store i32 %hmmfrom, i32* %hmmfrom58, align 4, !dbg !230, !tbaa !168
  %18 = load i32* %num, align 4, !dbg !231, !tbaa !168
  %idxprom60 = sext i32 %18 to i64, !dbg !231
  %hmmto63 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom60, i32 12, !dbg !231
  store i32 %hmmto, i32* %hmmto63, align 4, !dbg !231, !tbaa !168
  %19 = load i32* %num, align 4, !dbg !232, !tbaa !168
  %idxprom65 = sext i32 %19 to i64, !dbg !232
  %hmmlen68 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom65, i32 13, !dbg !232
  store i32 %hmmlen, i32* %hmmlen68, align 4, !dbg !232, !tbaa !168
  %20 = load i32* %num, align 4, !dbg !233, !tbaa !168
  %idxprom70 = sext i32 %20 to i64, !dbg !233
  %domidx73 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom70, i32 14, !dbg !233
  store i32 %domidx, i32* %domidx73, align 4, !dbg !233, !tbaa !168
  %21 = load i32* %num, align 4, !dbg !234, !tbaa !168
  %idxprom75 = sext i32 %21 to i64, !dbg !234
  %ndom78 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom75, i32 15, !dbg !234
  store i32 %ndom, i32* %ndom78, align 4, !dbg !234, !tbaa !168
  %22 = load i32* %num, align 4, !dbg !235, !tbaa !168
  %idxprom80 = sext i32 %22 to i64, !dbg !235
  %ali83 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom80, i32 16, !dbg !235
  store %struct.fancyali_s* %ali, %struct.fancyali_s** %ali83, align 8, !dbg !235, !tbaa !163
  %inc = add nsw i32 %22, 1, !dbg !236
  store i32 %inc, i32* %num, align 4, !dbg !236, !tbaa !168
  ret void, !dbg !237
}

; Function Attrs: optsize
declare i8* @Strdup(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @GetRankedHit(%struct.tophit_s* nocapture %h, i32 %rank, double* %r_pvalue, float* %r_score, double* %r_motherp, float* %r_mothersc, i8** %r_name, i8** %r_acc, i8** %r_desc, i32* %r_sqfrom, i32* %r_sqto, i32* %r_sqlen, i32* %r_hmmfrom, i32* %r_hmmto, i32* %r_hmmlen, i32* %r_domidx, i32* %r_ndom, %struct.fancyali_s** %r_ali) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tophit_s* %h}, i64 0, metadata !109), !dbg !238
  tail call void @llvm.dbg.value(metadata !{i32 %rank}, i64 0, metadata !110), !dbg !238
  tail call void @llvm.dbg.value(metadata !{double* %r_pvalue}, i64 0, metadata !111), !dbg !239
  tail call void @llvm.dbg.value(metadata !{float* %r_score}, i64 0, metadata !112), !dbg !239
  tail call void @llvm.dbg.value(metadata !{double* %r_motherp}, i64 0, metadata !113), !dbg !240
  tail call void @llvm.dbg.value(metadata !{float* %r_mothersc}, i64 0, metadata !114), !dbg !240
  tail call void @llvm.dbg.value(metadata !{i8** %r_name}, i64 0, metadata !115), !dbg !241
  tail call void @llvm.dbg.value(metadata !{i8** %r_acc}, i64 0, metadata !116), !dbg !241
  tail call void @llvm.dbg.value(metadata !{i8** %r_desc}, i64 0, metadata !117), !dbg !241
  tail call void @llvm.dbg.value(metadata !{i32* %r_sqfrom}, i64 0, metadata !118), !dbg !242
  tail call void @llvm.dbg.value(metadata !{i32* %r_sqto}, i64 0, metadata !119), !dbg !242
  tail call void @llvm.dbg.value(metadata !{i32* %r_sqlen}, i64 0, metadata !120), !dbg !242
  tail call void @llvm.dbg.value(metadata !{i32* %r_hmmfrom}, i64 0, metadata !121), !dbg !243
  tail call void @llvm.dbg.value(metadata !{i32* %r_hmmto}, i64 0, metadata !122), !dbg !243
  tail call void @llvm.dbg.value(metadata !{i32* %r_hmmlen}, i64 0, metadata !123), !dbg !243
  tail call void @llvm.dbg.value(metadata !{i32* %r_domidx}, i64 0, metadata !124), !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32* %r_ndom}, i64 0, metadata !125), !dbg !244
  tail call void @llvm.dbg.value(metadata !{%struct.fancyali_s** %r_ali}, i64 0, metadata !126), !dbg !245
  %cmp = icmp eq double* %r_pvalue, null, !dbg !246
  br i1 %cmp, label %if.end, label %if.then, !dbg !246

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %rank to i64, !dbg !246
  %hit = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !246
  %0 = load %struct.hit_s*** %hit, align 8, !dbg !246, !tbaa !163
  %arrayidx = getelementptr inbounds %struct.hit_s** %0, i64 %idxprom, !dbg !246
  %1 = load %struct.hit_s** %arrayidx, align 8, !dbg !246, !tbaa !163
  %pvalue = getelementptr inbounds %struct.hit_s* %1, i64 0, i32 2, !dbg !246
  %2 = load double* %pvalue, align 8, !dbg !246, !tbaa !221
  store double %2, double* %r_pvalue, align 8, !dbg !246, !tbaa !221
  br label %if.end, !dbg !246

if.end:                                           ; preds = %entry, %if.then
  %cmp1 = icmp eq float* %r_score, null, !dbg !247
  br i1 %cmp1, label %if.end6, label %if.then2, !dbg !247

if.then2:                                         ; preds = %if.end
  %idxprom3 = sext i32 %rank to i64, !dbg !247
  %hit4 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !247
  %3 = load %struct.hit_s*** %hit4, align 8, !dbg !247, !tbaa !163
  %arrayidx5 = getelementptr inbounds %struct.hit_s** %3, i64 %idxprom3, !dbg !247
  %4 = load %struct.hit_s** %arrayidx5, align 8, !dbg !247, !tbaa !163
  %score = getelementptr inbounds %struct.hit_s* %4, i64 0, i32 1, !dbg !247
  %5 = load float* %score, align 4, !dbg !247, !tbaa !224
  store float %5, float* %r_score, align 4, !dbg !247, !tbaa !224
  br label %if.end6, !dbg !247

if.end6:                                          ; preds = %if.end, %if.then2
  %cmp7 = icmp eq double* %r_motherp, null, !dbg !248
  br i1 %cmp7, label %if.end12, label %if.then8, !dbg !248

if.then8:                                         ; preds = %if.end6
  %idxprom9 = sext i32 %rank to i64, !dbg !248
  %hit10 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !248
  %6 = load %struct.hit_s*** %hit10, align 8, !dbg !248, !tbaa !163
  %arrayidx11 = getelementptr inbounds %struct.hit_s** %6, i64 %idxprom9, !dbg !248
  %7 = load %struct.hit_s** %arrayidx11, align 8, !dbg !248, !tbaa !163
  %motherp = getelementptr inbounds %struct.hit_s* %7, i64 0, i32 4, !dbg !248
  %8 = load double* %motherp, align 8, !dbg !248, !tbaa !221
  store double %8, double* %r_motherp, align 8, !dbg !248, !tbaa !221
  br label %if.end12, !dbg !248

if.end12:                                         ; preds = %if.end6, %if.then8
  %cmp13 = icmp eq float* %r_mothersc, null, !dbg !249
  br i1 %cmp13, label %if.end18, label %if.then14, !dbg !249

if.then14:                                        ; preds = %if.end12
  %idxprom15 = sext i32 %rank to i64, !dbg !249
  %hit16 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !249
  %9 = load %struct.hit_s*** %hit16, align 8, !dbg !249, !tbaa !163
  %arrayidx17 = getelementptr inbounds %struct.hit_s** %9, i64 %idxprom15, !dbg !249
  %10 = load %struct.hit_s** %arrayidx17, align 8, !dbg !249, !tbaa !163
  %mothersc = getelementptr inbounds %struct.hit_s* %10, i64 0, i32 3, !dbg !249
  %11 = load float* %mothersc, align 4, !dbg !249, !tbaa !224
  store float %11, float* %r_mothersc, align 4, !dbg !249, !tbaa !224
  br label %if.end18, !dbg !249

if.end18:                                         ; preds = %if.end12, %if.then14
  %cmp19 = icmp eq i8** %r_name, null, !dbg !250
  br i1 %cmp19, label %if.end24, label %if.then20, !dbg !250

if.then20:                                        ; preds = %if.end18
  %idxprom21 = sext i32 %rank to i64, !dbg !250
  %hit22 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !250
  %12 = load %struct.hit_s*** %hit22, align 8, !dbg !250, !tbaa !163
  %arrayidx23 = getelementptr inbounds %struct.hit_s** %12, i64 %idxprom21, !dbg !250
  %13 = load %struct.hit_s** %arrayidx23, align 8, !dbg !250, !tbaa !163
  %name = getelementptr inbounds %struct.hit_s* %13, i64 0, i32 5, !dbg !250
  %14 = load i8** %name, align 8, !dbg !250, !tbaa !163
  store i8* %14, i8** %r_name, align 8, !dbg !250, !tbaa !163
  br label %if.end24, !dbg !250

if.end24:                                         ; preds = %if.end18, %if.then20
  %cmp25 = icmp eq i8** %r_acc, null, !dbg !251
  br i1 %cmp25, label %if.end30, label %if.then26, !dbg !251

if.then26:                                        ; preds = %if.end24
  %idxprom27 = sext i32 %rank to i64, !dbg !251
  %hit28 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !251
  %15 = load %struct.hit_s*** %hit28, align 8, !dbg !251, !tbaa !163
  %arrayidx29 = getelementptr inbounds %struct.hit_s** %15, i64 %idxprom27, !dbg !251
  %16 = load %struct.hit_s** %arrayidx29, align 8, !dbg !251, !tbaa !163
  %acc = getelementptr inbounds %struct.hit_s* %16, i64 0, i32 6, !dbg !251
  %17 = load i8** %acc, align 8, !dbg !251, !tbaa !163
  store i8* %17, i8** %r_acc, align 8, !dbg !251, !tbaa !163
  br label %if.end30, !dbg !251

if.end30:                                         ; preds = %if.end24, %if.then26
  %cmp31 = icmp eq i8** %r_desc, null, !dbg !252
  br i1 %cmp31, label %if.end36, label %if.then32, !dbg !252

if.then32:                                        ; preds = %if.end30
  %idxprom33 = sext i32 %rank to i64, !dbg !252
  %hit34 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !252
  %18 = load %struct.hit_s*** %hit34, align 8, !dbg !252, !tbaa !163
  %arrayidx35 = getelementptr inbounds %struct.hit_s** %18, i64 %idxprom33, !dbg !252
  %19 = load %struct.hit_s** %arrayidx35, align 8, !dbg !252, !tbaa !163
  %desc = getelementptr inbounds %struct.hit_s* %19, i64 0, i32 7, !dbg !252
  %20 = load i8** %desc, align 8, !dbg !252, !tbaa !163
  store i8* %20, i8** %r_desc, align 8, !dbg !252, !tbaa !163
  br label %if.end36, !dbg !252

if.end36:                                         ; preds = %if.end30, %if.then32
  %cmp37 = icmp eq i32* %r_sqfrom, null, !dbg !253
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !253

if.then38:                                        ; preds = %if.end36
  %idxprom39 = sext i32 %rank to i64, !dbg !253
  %hit40 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !253
  %21 = load %struct.hit_s*** %hit40, align 8, !dbg !253, !tbaa !163
  %arrayidx41 = getelementptr inbounds %struct.hit_s** %21, i64 %idxprom39, !dbg !253
  %22 = load %struct.hit_s** %arrayidx41, align 8, !dbg !253, !tbaa !163
  %sqfrom = getelementptr inbounds %struct.hit_s* %22, i64 0, i32 8, !dbg !253
  %23 = load i32* %sqfrom, align 4, !dbg !253, !tbaa !168
  store i32 %23, i32* %r_sqfrom, align 4, !dbg !253, !tbaa !168
  br label %if.end42, !dbg !253

if.end42:                                         ; preds = %if.end36, %if.then38
  %cmp43 = icmp eq i32* %r_sqto, null, !dbg !254
  br i1 %cmp43, label %if.end48, label %if.then44, !dbg !254

if.then44:                                        ; preds = %if.end42
  %idxprom45 = sext i32 %rank to i64, !dbg !254
  %hit46 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !254
  %24 = load %struct.hit_s*** %hit46, align 8, !dbg !254, !tbaa !163
  %arrayidx47 = getelementptr inbounds %struct.hit_s** %24, i64 %idxprom45, !dbg !254
  %25 = load %struct.hit_s** %arrayidx47, align 8, !dbg !254, !tbaa !163
  %sqto = getelementptr inbounds %struct.hit_s* %25, i64 0, i32 9, !dbg !254
  %26 = load i32* %sqto, align 4, !dbg !254, !tbaa !168
  store i32 %26, i32* %r_sqto, align 4, !dbg !254, !tbaa !168
  br label %if.end48, !dbg !254

if.end48:                                         ; preds = %if.end42, %if.then44
  %cmp49 = icmp eq i32* %r_sqlen, null, !dbg !255
  br i1 %cmp49, label %if.end54, label %if.then50, !dbg !255

if.then50:                                        ; preds = %if.end48
  %idxprom51 = sext i32 %rank to i64, !dbg !255
  %hit52 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !255
  %27 = load %struct.hit_s*** %hit52, align 8, !dbg !255, !tbaa !163
  %arrayidx53 = getelementptr inbounds %struct.hit_s** %27, i64 %idxprom51, !dbg !255
  %28 = load %struct.hit_s** %arrayidx53, align 8, !dbg !255, !tbaa !163
  %sqlen = getelementptr inbounds %struct.hit_s* %28, i64 0, i32 10, !dbg !255
  %29 = load i32* %sqlen, align 4, !dbg !255, !tbaa !168
  store i32 %29, i32* %r_sqlen, align 4, !dbg !255, !tbaa !168
  br label %if.end54, !dbg !255

if.end54:                                         ; preds = %if.end48, %if.then50
  %cmp55 = icmp eq i32* %r_hmmfrom, null, !dbg !256
  br i1 %cmp55, label %if.end60, label %if.then56, !dbg !256

if.then56:                                        ; preds = %if.end54
  %idxprom57 = sext i32 %rank to i64, !dbg !256
  %hit58 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !256
  %30 = load %struct.hit_s*** %hit58, align 8, !dbg !256, !tbaa !163
  %arrayidx59 = getelementptr inbounds %struct.hit_s** %30, i64 %idxprom57, !dbg !256
  %31 = load %struct.hit_s** %arrayidx59, align 8, !dbg !256, !tbaa !163
  %hmmfrom = getelementptr inbounds %struct.hit_s* %31, i64 0, i32 11, !dbg !256
  %32 = load i32* %hmmfrom, align 4, !dbg !256, !tbaa !168
  store i32 %32, i32* %r_hmmfrom, align 4, !dbg !256, !tbaa !168
  br label %if.end60, !dbg !256

if.end60:                                         ; preds = %if.end54, %if.then56
  %cmp61 = icmp eq i32* %r_hmmto, null, !dbg !257
  br i1 %cmp61, label %if.end66, label %if.then62, !dbg !257

if.then62:                                        ; preds = %if.end60
  %idxprom63 = sext i32 %rank to i64, !dbg !257
  %hit64 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !257
  %33 = load %struct.hit_s*** %hit64, align 8, !dbg !257, !tbaa !163
  %arrayidx65 = getelementptr inbounds %struct.hit_s** %33, i64 %idxprom63, !dbg !257
  %34 = load %struct.hit_s** %arrayidx65, align 8, !dbg !257, !tbaa !163
  %hmmto = getelementptr inbounds %struct.hit_s* %34, i64 0, i32 12, !dbg !257
  %35 = load i32* %hmmto, align 4, !dbg !257, !tbaa !168
  store i32 %35, i32* %r_hmmto, align 4, !dbg !257, !tbaa !168
  br label %if.end66, !dbg !257

if.end66:                                         ; preds = %if.end60, %if.then62
  %cmp67 = icmp eq i32* %r_hmmlen, null, !dbg !258
  br i1 %cmp67, label %if.end72, label %if.then68, !dbg !258

if.then68:                                        ; preds = %if.end66
  %idxprom69 = sext i32 %rank to i64, !dbg !258
  %hit70 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !258
  %36 = load %struct.hit_s*** %hit70, align 8, !dbg !258, !tbaa !163
  %arrayidx71 = getelementptr inbounds %struct.hit_s** %36, i64 %idxprom69, !dbg !258
  %37 = load %struct.hit_s** %arrayidx71, align 8, !dbg !258, !tbaa !163
  %hmmlen = getelementptr inbounds %struct.hit_s* %37, i64 0, i32 13, !dbg !258
  %38 = load i32* %hmmlen, align 4, !dbg !258, !tbaa !168
  store i32 %38, i32* %r_hmmlen, align 4, !dbg !258, !tbaa !168
  br label %if.end72, !dbg !258

if.end72:                                         ; preds = %if.end66, %if.then68
  %cmp73 = icmp eq i32* %r_domidx, null, !dbg !259
  br i1 %cmp73, label %if.end78, label %if.then74, !dbg !259

if.then74:                                        ; preds = %if.end72
  %idxprom75 = sext i32 %rank to i64, !dbg !259
  %hit76 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !259
  %39 = load %struct.hit_s*** %hit76, align 8, !dbg !259, !tbaa !163
  %arrayidx77 = getelementptr inbounds %struct.hit_s** %39, i64 %idxprom75, !dbg !259
  %40 = load %struct.hit_s** %arrayidx77, align 8, !dbg !259, !tbaa !163
  %domidx = getelementptr inbounds %struct.hit_s* %40, i64 0, i32 14, !dbg !259
  %41 = load i32* %domidx, align 4, !dbg !259, !tbaa !168
  store i32 %41, i32* %r_domidx, align 4, !dbg !259, !tbaa !168
  br label %if.end78, !dbg !259

if.end78:                                         ; preds = %if.end72, %if.then74
  %cmp79 = icmp eq i32* %r_ndom, null, !dbg !260
  br i1 %cmp79, label %if.end84, label %if.then80, !dbg !260

if.then80:                                        ; preds = %if.end78
  %idxprom81 = sext i32 %rank to i64, !dbg !260
  %hit82 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !260
  %42 = load %struct.hit_s*** %hit82, align 8, !dbg !260, !tbaa !163
  %arrayidx83 = getelementptr inbounds %struct.hit_s** %42, i64 %idxprom81, !dbg !260
  %43 = load %struct.hit_s** %arrayidx83, align 8, !dbg !260, !tbaa !163
  %ndom = getelementptr inbounds %struct.hit_s* %43, i64 0, i32 15, !dbg !260
  %44 = load i32* %ndom, align 4, !dbg !260, !tbaa !168
  store i32 %44, i32* %r_ndom, align 4, !dbg !260, !tbaa !168
  br label %if.end84, !dbg !260

if.end84:                                         ; preds = %if.end78, %if.then80
  %cmp85 = icmp eq %struct.fancyali_s** %r_ali, null, !dbg !261
  br i1 %cmp85, label %if.end90, label %if.then86, !dbg !261

if.then86:                                        ; preds = %if.end84
  %idxprom87 = sext i32 %rank to i64, !dbg !261
  %hit88 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !261
  %45 = load %struct.hit_s*** %hit88, align 8, !dbg !261, !tbaa !163
  %arrayidx89 = getelementptr inbounds %struct.hit_s** %45, i64 %idxprom87, !dbg !261
  %46 = load %struct.hit_s** %arrayidx89, align 8, !dbg !261, !tbaa !163
  %ali = getelementptr inbounds %struct.hit_s* %46, i64 0, i32 16, !dbg !261
  %47 = load %struct.fancyali_s** %ali, align 8, !dbg !261, !tbaa !163
  store %struct.fancyali_s* %47, %struct.fancyali_s** %r_ali, align 8, !dbg !261, !tbaa !163
  br label %if.end90, !dbg !261

if.end90:                                         ; preds = %if.end84, %if.then86
  ret void, !dbg !262
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @TophitsMaxName(%struct.tophit_s* nocapture %h) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tophit_s* %h}, i64 0, metadata !131), !dbg !263
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !134), !dbg !264
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !132), !dbg !265
  %num = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 3, !dbg !265
  %0 = load i32* %num, align 4, !dbg !265, !tbaa !168
  %cmp8 = icmp sgt i32 %0, 0, !dbg !265
  br i1 %cmp8, label %for.body.lr.ph, label %for.end, !dbg !265

for.body.lr.ph:                                   ; preds = %entry
  %unsrt = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 1, !dbg !267
  %1 = load %struct.hit_s** %unsrt, align 8, !dbg !267, !tbaa !163
  br label %for.body, !dbg !265

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %maxlen.010 = phi i32 [ 0, %for.body.lr.ph ], [ %conv.maxlen.0, %for.body ]
  %name = getelementptr inbounds %struct.hit_s* %1, i64 %indvars.iv, i32 5, !dbg !267
  %2 = load i8** %name, align 8, !dbg !267, !tbaa !163
  %call = tail call i64 @strlen(i8* %2) #9, !dbg !267
  %conv = trunc i64 %call to i32, !dbg !267
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !133), !dbg !267
  %cmp1 = icmp sgt i32 %conv, %maxlen.010, !dbg !269
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !134), !dbg !269
  %conv.maxlen.0 = select i1 %cmp1, i32 %conv, i32 %maxlen.010, !dbg !269
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !265
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !265
  %cmp = icmp slt i32 %3, %0, !dbg !265
  br i1 %cmp, label %for.body, label %for.end, !dbg !265

for.end:                                          ; preds = %for.body, %entry
  %maxlen.0.lcssa = phi i32 [ 0, %entry ], [ %conv.maxlen.0, %for.body ]
  ret i32 %maxlen.0.lcssa, !dbg !270
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly uwtable
define i32 @hit_comparison(i8* nocapture %vh1, i8* nocapture %vh2) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %vh1}, i64 0, metadata !141), !dbg !271
  tail call void @llvm.dbg.value(metadata !{i8* %vh2}, i64 0, metadata !142), !dbg !271
  %0 = bitcast i8* %vh1 to %struct.hit_s**, !dbg !272
  %1 = load %struct.hit_s** %0, align 8, !dbg !272, !tbaa !163
  tail call void @llvm.dbg.value(metadata !{%struct.hit_s* %1}, i64 0, metadata !143), !dbg !272
  %2 = bitcast i8* %vh2 to %struct.hit_s**, !dbg !273
  %3 = load %struct.hit_s** %2, align 8, !dbg !273, !tbaa !163
  tail call void @llvm.dbg.value(metadata !{%struct.hit_s* %3}, i64 0, metadata !144), !dbg !273
  %sortkey = getelementptr inbounds %struct.hit_s* %1, i64 0, i32 0, !dbg !274
  %4 = load double* %sortkey, align 8, !dbg !274, !tbaa !221
  %sortkey1 = getelementptr inbounds %struct.hit_s* %3, i64 0, i32 0, !dbg !274
  %5 = load double* %sortkey1, align 8, !dbg !274, !tbaa !221
  %cmp = fcmp olt double %4, %5, !dbg !274
  br i1 %cmp, label %return, label %if.else, !dbg !274

if.else:                                          ; preds = %entry
  %cmp4 = fcmp ogt double %4, %5, !dbg !275
  %. = sext i1 %cmp4 to i32, !dbg !275
  br label %return, !dbg !275

return:                                           ; preds = %if.else, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.else ]
  ret i32 %retval.0, !dbg !276
}

; Function Attrs: nounwind optsize uwtable
define void @FullSortTophits(%struct.tophit_s* nocapture %h) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tophit_s* %h}, i64 0, metadata !147), !dbg !277
  %num = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 3, !dbg !278
  %0 = load i32* %num, align 4, !dbg !278, !tbaa !168
  %cmp = icmp eq i32 %0, 0, !dbg !278
  br i1 %cmp, label %if.end15, label %if.end, !dbg !278

if.end:                                           ; preds = %entry
  %conv = sext i32 %0 to i64, !dbg !279
  %mul = shl nsw i64 %conv, 3, !dbg !279
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 300, i64 %mul) #7, !dbg !279
  %1 = bitcast i8* %call to %struct.hit_s**, !dbg !279
  %hit = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !279
  store %struct.hit_s** %1, %struct.hit_s*** %hit, align 8, !dbg !279, !tbaa !163
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !148), !dbg !280
  %2 = load i32* %num, align 4, !dbg !280, !tbaa !168
  %cmp327 = icmp sgt i32 %2, 0, !dbg !280
  br i1 %cmp327, label %for.body.lr.ph, label %if.end15, !dbg !280

for.body.lr.ph:                                   ; preds = %if.end
  %unsrt = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 1, !dbg !282
  br label %for.body, !dbg !280

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %3 = phi %struct.hit_s** [ %1, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %4 = load %struct.hit_s** %unsrt, align 8, !dbg !282, !tbaa !163
  %arrayidx = getelementptr inbounds %struct.hit_s* %4, i64 %indvars.iv, !dbg !282
  %arrayidx7 = getelementptr inbounds %struct.hit_s** %3, i64 %indvars.iv, !dbg !282
  store %struct.hit_s* %arrayidx, %struct.hit_s** %arrayidx7, align 8, !dbg !282, !tbaa !163
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !280
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !280
  %cmp3 = icmp slt i32 %5, %2, !dbg !280
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.end, !dbg !280

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.hit_s*** %hit, align 8, !dbg !282, !tbaa !163
  br label %for.body, !dbg !280

for.end:                                          ; preds = %for.body
  %cmp9 = icmp sgt i32 %2, 1, !dbg !283
  br i1 %cmp9, label %if.then11, label %if.end15, !dbg !283

if.then11:                                        ; preds = %for.end
  %6 = load %struct.hit_s*** %hit, align 8, !dbg !284, !tbaa !163
  %call14 = tail call i32 (%struct.hit_s**, i32, i64, i32 (i8*, i8*)*, ...)* bitcast (i32 (...)* @specqsort to i32 (%struct.hit_s**, i32, i64, i32 (i8*, i8*)*, ...)*)(%struct.hit_s** %6, i32 %2, i64 8, i32 (i8*, i8*)* @hit_comparison) #7, !dbg !284
  br label %if.end15, !dbg !284

if.end15:                                         ; preds = %if.end, %entry, %if.then11, %for.end
  ret void, !dbg !284
}

; Function Attrs: optsize
declare i32 @specqsort(...) #1

; Function Attrs: nounwind optsize uwtable
define void @TophitsReport(%struct.tophit_s* nocapture %h, double %E, i32 %nseq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tophit_s* %h}, i64 0, metadata !153), !dbg !285
  tail call void @llvm.dbg.value(metadata !{double %E}, i64 0, metadata !154), !dbg !285
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !155), !dbg !285
  %alloc = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 2, !dbg !286
  %0 = load i32* %alloc, align 4, !dbg !286, !tbaa !168
  %mul = mul i32 %0, 104, !dbg !286
  %add = add i32 %mul, 32, !dbg !286
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !157), !dbg !286
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !156), !dbg !287
  %num = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 3, !dbg !287
  %1 = load i32* %num, align 4, !dbg !287, !tbaa !168
  %cmp229 = icmp sgt i32 %1, 0, !dbg !287
  br i1 %cmp229, label %for.body.lr.ph, label %for.end159, !dbg !287

for.body.lr.ph:                                   ; preds = %entry
  %unsrt = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 1, !dbg !289
  %2 = load %struct.hit_s** %unsrt, align 8, !dbg !289, !tbaa !163
  br label %for.body, !dbg !287

for.cond143.preheader:                            ; preds = %for.inc
  br i1 %cmp229, label %for.body147.lr.ph, label %for.end159, !dbg !291

for.body147.lr.ph:                                ; preds = %for.cond143.preheader
  %hit = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0, !dbg !293
  %3 = load %struct.hit_s*** %hit, align 8, !dbg !293, !tbaa !163
  %conv150 = sitofp i32 %nseq to double, !dbg !293
  br label %for.body147, !dbg !291

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv235 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next236, %for.inc ]
  %memused.0231 = phi i32 [ %add, %for.body.lr.ph ], [ %memused.5, %for.inc ]
  %name = getelementptr inbounds %struct.hit_s* %2, i64 %indvars.iv235, i32 5, !dbg !289
  %4 = load i8** %name, align 8, !dbg !289, !tbaa !163
  %cmp3 = icmp eq i8* %4, null, !dbg !289
  br i1 %cmp3, label %if.end, label %if.then, !dbg !289

if.then:                                          ; preds = %for.body
  %call = tail call i64 @strlen(i8* %4) #9, !dbg !295
  %conv10225 = zext i32 %memused.0231 to i64, !dbg !295
  %add9 = add i64 %conv10225, 1, !dbg !295
  %add11 = add i64 %add9, %call, !dbg !295
  %conv12 = trunc i64 %add11 to i32, !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32 %conv12}, i64 0, metadata !157), !dbg !295
  br label %if.end, !dbg !295

if.end:                                           ; preds = %for.body, %if.then
  %memused.1 = phi i32 [ %conv12, %if.then ], [ %memused.0231, %for.body ]
  %acc = getelementptr inbounds %struct.hit_s* %2, i64 %indvars.iv235, i32 6, !dbg !296
  %5 = load i8** %acc, align 8, !dbg !296, !tbaa !163
  %cmp16 = icmp eq i8* %5, null, !dbg !296
  br i1 %cmp16, label %if.end28, label %if.then18, !dbg !296

if.then18:                                        ; preds = %if.end
  %call23 = tail call i64 @strlen(i8* %5) #9, !dbg !297
  %conv25224 = zext i32 %memused.1 to i64, !dbg !297
  %add24 = add i64 %conv25224, 1, !dbg !297
  %add26 = add i64 %add24, %call23, !dbg !297
  %conv27 = trunc i64 %add26 to i32, !dbg !297
  tail call void @llvm.dbg.value(metadata !{i32 %conv27}, i64 0, metadata !157), !dbg !297
  br label %if.end28, !dbg !297

if.end28:                                         ; preds = %if.end, %if.then18
  %memused.2 = phi i32 [ %conv27, %if.then18 ], [ %memused.1, %if.end ]
  %desc = getelementptr inbounds %struct.hit_s* %2, i64 %indvars.iv235, i32 7, !dbg !298
  %6 = load i8** %desc, align 8, !dbg !298, !tbaa !163
  %cmp32 = icmp eq i8* %6, null, !dbg !298
  br i1 %cmp32, label %if.end44, label %if.then34, !dbg !298

if.then34:                                        ; preds = %if.end28
  %call39 = tail call i64 @strlen(i8* %6) #9, !dbg !299
  %conv41223 = zext i32 %memused.2 to i64, !dbg !299
  %add40 = add i64 %conv41223, 1, !dbg !299
  %add42 = add i64 %add40, %call39, !dbg !299
  %conv43 = trunc i64 %add42 to i32, !dbg !299
  tail call void @llvm.dbg.value(metadata !{i32 %conv43}, i64 0, metadata !157), !dbg !299
  br label %if.end44, !dbg !299

if.end44:                                         ; preds = %if.end28, %if.then34
  %memused.3 = phi i32 [ %conv43, %if.then34 ], [ %memused.2, %if.end28 ]
  %ali = getelementptr inbounds %struct.hit_s* %2, i64 %indvars.iv235, i32 16, !dbg !300
  %7 = load %struct.fancyali_s** %ali, align 8, !dbg !300, !tbaa !163
  %cmp48 = icmp eq %struct.fancyali_s* %7, null, !dbg !300
  br i1 %cmp48, label %for.inc, label %if.then50, !dbg !300

if.then50:                                        ; preds = %if.end44
  %add52 = add i32 %memused.3, 72, !dbg !301
  tail call void @llvm.dbg.value(metadata !{i32 %add52}, i64 0, metadata !157), !dbg !301
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !158), !dbg !303
  %rfline = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 0, !dbg !304
  %8 = load i8** %rfline, align 8, !dbg !304, !tbaa !163
  tail call void @llvm.dbg.value(metadata !305, i64 0, metadata !158), !dbg !304
  %not.cmp58 = icmp ne i8* %8, null, !dbg !304
  %. = zext i1 %not.cmp58 to i32, !dbg !304
  %csline = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 1, !dbg !306
  %9 = load i8** %csline, align 8, !dbg !306, !tbaa !163
  %cmp66 = icmp eq i8* %9, null, !dbg !306
  %inc69 = select i1 %not.cmp58, i32 2, i32 1, !dbg !306
  tail call void @llvm.dbg.value(metadata !{i32 %inc69}, i64 0, metadata !158), !dbg !306
  %x.1 = select i1 %cmp66, i32 %., i32 %inc69, !dbg !306
  %model = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 2, !dbg !307
  %10 = load i8** %model, align 8, !dbg !307, !tbaa !163
  %not.cmp75 = icmp ne i8* %10, null, !dbg !307
  %inc78 = zext i1 %not.cmp75 to i32, !dbg !307
  %x.1.inc78 = add nsw i32 %inc78, %x.1, !dbg !307
  %mline = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 3, !dbg !308
  %11 = load i8** %mline, align 8, !dbg !308, !tbaa !163
  %not.cmp84 = icmp ne i8* %11, null, !dbg !308
  %inc87 = zext i1 %not.cmp84 to i32, !dbg !308
  %x.3 = add nsw i32 %x.1.inc78, %inc87, !dbg !308
  %aseq = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 4, !dbg !309
  %12 = load i8** %aseq, align 8, !dbg !309, !tbaa !163
  %not.cmp93 = icmp ne i8* %12, null, !dbg !309
  %inc96 = zext i1 %not.cmp93 to i32, !dbg !309
  %x.3.inc96 = add nsw i32 %x.3, %inc96, !dbg !309
  %len = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 5, !dbg !310
  %13 = load i32* %len, align 4, !dbg !310, !tbaa !168
  %add102 = add nsw i32 %13, 1, !dbg !310
  %mul103 = mul nsw i32 %x.3.inc96, %add102, !dbg !310
  %add104 = add nsw i32 %add52, %mul103, !dbg !310
  tail call void @llvm.dbg.value(metadata !{i32 %add104}, i64 0, metadata !157), !dbg !310
  %query = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 6, !dbg !311
  %14 = load i8** %query, align 8, !dbg !311, !tbaa !163
  %cmp109 = icmp eq i8* %14, null, !dbg !311
  br i1 %cmp109, label %if.end122, label %if.then111, !dbg !311

if.then111:                                       ; preds = %if.then50
  %call117 = tail call i64 @strlen(i8* %14) #9, !dbg !312
  %conv119222 = zext i32 %add104 to i64, !dbg !312
  %add118 = add i64 %conv119222, 1, !dbg !312
  %add120 = add i64 %add118, %call117, !dbg !312
  %conv121 = trunc i64 %add120 to i32, !dbg !312
  tail call void @llvm.dbg.value(metadata !{i32 %conv121}, i64 0, metadata !157), !dbg !312
  br label %if.end122, !dbg !312

if.end122:                                        ; preds = %if.then50, %if.then111
  %memused.4 = phi i32 [ %conv121, %if.then111 ], [ %add104, %if.then50 ]
  %target = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 7, !dbg !313
  %15 = load i8** %target, align 8, !dbg !313, !tbaa !163
  %cmp127 = icmp eq i8* %15, null, !dbg !313
  br i1 %cmp127, label %for.inc, label %if.then129, !dbg !313

if.then129:                                       ; preds = %if.end122
  %call135 = tail call i64 @strlen(i8* %15) #9, !dbg !314
  %conv137221 = zext i32 %memused.4 to i64, !dbg !314
  %add136 = add i64 %conv137221, 1, !dbg !314
  %add138 = add i64 %add136, %call135, !dbg !314
  %conv139 = trunc i64 %add138 to i32, !dbg !314
  tail call void @llvm.dbg.value(metadata !{i32 %conv139}, i64 0, metadata !157), !dbg !314
  br label %for.inc, !dbg !314

for.inc:                                          ; preds = %if.end122, %if.end44, %if.then129
  %memused.5 = phi i32 [ %conv139, %if.then129 ], [ %memused.4, %if.end122 ], [ %memused.3, %if.end44 ]
  %indvars.iv.next236 = add i64 %indvars.iv235, 1, !dbg !287
  %16 = trunc i64 %indvars.iv.next236 to i32, !dbg !287
  %cmp = icmp slt i32 %16, %1, !dbg !287
  br i1 %cmp, label %for.body, label %for.cond143.preheader, !dbg !287

for.body147:                                      ; preds = %for.body147.lr.ph, %if.end155
  %indvars.iv = phi i64 [ 0, %for.body147.lr.ph ], [ %indvars.iv.next, %if.end155 ]
  %n.0228 = phi i32 [ 0, %for.body147.lr.ph ], [ %inc156, %if.end155 ]
  %arrayidx149 = getelementptr inbounds %struct.hit_s** %3, i64 %indvars.iv, !dbg !293
  %17 = load %struct.hit_s** %arrayidx149, align 8, !dbg !293, !tbaa !163
  %pvalue = getelementptr inbounds %struct.hit_s* %17, i64 0, i32 2, !dbg !293
  %18 = load double* %pvalue, align 8, !dbg !293, !tbaa !221
  %mul151 = fmul double %conv150, %18, !dbg !293
  %cmp152 = fcmp ult double %mul151, %E, !dbg !293
  br i1 %cmp152, label %if.end155, label %for.end159, !dbg !293

if.end155:                                        ; preds = %for.body147
  %inc156 = add nsw i32 %n.0228, 1, !dbg !315
  tail call void @llvm.dbg.value(metadata !{i32 %inc156}, i64 0, metadata !159), !dbg !315
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !291
  tail call void @llvm.dbg.value(metadata !{i32 %inc156}, i64 0, metadata !156), !dbg !291
  %19 = trunc i64 %indvars.iv.next to i32, !dbg !291
  %cmp145 = icmp slt i32 %19, %1, !dbg !291
  br i1 %cmp145, label %for.body147, label %for.end159, !dbg !291

for.end159:                                       ; preds = %entry, %if.end155, %for.body147, %for.cond143.preheader
  %memused.0.lcssa237 = phi i32 [ %memused.5, %for.cond143.preheader ], [ %memused.5, %for.body147 ], [ %memused.5, %if.end155 ], [ %add, %entry ]
  %n.0.lcssa = phi i32 [ 0, %for.cond143.preheader ], [ %n.0228, %for.body147 ], [ %inc156, %if.end155 ], [ 0, %entry ]
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str, i64 0, i64 0)), !dbg !316
  %20 = load i32* %num, align 4, !dbg !317, !tbaa !168
  %call162 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str2, i64 0, i64 0), i32 %20) #7, !dbg !317
  %call163 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str3, i64 0, i64 0), i32 %n.0.lcssa) #7, !dbg !318
  %div = sdiv i32 %memused.0.lcssa237, 1000, !dbg !319
  %call164 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str4, i64 0, i64 0), i32 %div) #7, !dbg !319
  ret void, !dbg !320
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !59, metadata !64, metadata !68, metadata !73, metadata !78, metadata !100, metadata !127, metadata !135, metadata !145, metadata !149}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"AllocTophits", metadata !"AllocTophits", metadata !"", i32 78, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.tophit_s* (i32)* @AllocTophits, null, null, metadata !56, i32 79} ; [ DW_TAG_subprogram ] [line 78] [def] [scope 79] [AllocTophits]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !30}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tophit_s]
!9 = metadata !{i32 786451, metadata !10, null, metadata !"tophit_s", i32 497, i64 256, i64 64, i32 0, i32 0, null, metadata !11, i32 0, null, null} ; [ DW_TAG_structure_type ] [tophit_s] [line 497, size 256, align 64, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !52, metadata !53, metadata !54, metadata !55}
!12 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"hit", i32 498, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [hit] [line 498, size 64, align 64, offset 0] [from ]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from hit_s]
!15 = metadata !{i32 786451, metadata !10, null, metadata !"hit_s", i32 470, i64 832, i64 64, i32 0, i32 0, null, metadata !16, i32 0, null, null} ; [ DW_TAG_structure_type ] [hit_s] [line 470, size 832, align 64, offset 0] [from ]
!16 = metadata !{metadata !17, metadata !19, metadata !21, metadata !22, metadata !23, metadata !24, metadata !27, metadata !28, metadata !29, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38}
!17 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"sortkey", i32 471, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [sortkey] [line 471, size 64, align 64, offset 0] [from double]
!18 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!19 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"score", i32 472, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [score] [line 472, size 32, align 32, offset 64] [from float]
!20 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"pvalue", i32 473, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [pvalue] [line 473, size 64, align 64, offset 128] [from double]
!22 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"mothersc", i32 474, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [mothersc] [line 474, size 32, align 32, offset 192] [from float]
!23 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"motherp", i32 475, i64 64, i64 64, i64 256, i32 0, metadata !18} ; [ DW_TAG_member ] [motherp] [line 475, size 64, align 64, offset 256] [from double]
!24 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"name", i32 476, i64 64, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [name] [line 476, size 64, align 64, offset 320] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"acc", i32 477, i64 64, i64 64, i64 384, i32 0, metadata !25} ; [ DW_TAG_member ] [acc] [line 477, size 64, align 64, offset 384] [from ]
!28 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"desc", i32 478, i64 64, i64 64, i64 448, i32 0, metadata !25} ; [ DW_TAG_member ] [desc] [line 478, size 64, align 64, offset 448] [from ]
!29 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"sqfrom", i32 479, i64 32, i64 32, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [sqfrom] [line 479, size 32, align 32, offset 512] [from int]
!30 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!31 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"sqto", i32 480, i64 32, i64 32, i64 544, i32 0, metadata !30} ; [ DW_TAG_member ] [sqto] [line 480, size 32, align 32, offset 544] [from int]
!32 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"sqlen", i32 481, i64 32, i64 32, i64 576, i32 0, metadata !30} ; [ DW_TAG_member ] [sqlen] [line 481, size 32, align 32, offset 576] [from int]
!33 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"hmmfrom", i32 482, i64 32, i64 32, i64 608, i32 0, metadata !30} ; [ DW_TAG_member ] [hmmfrom] [line 482, size 32, align 32, offset 608] [from int]
!34 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"hmmto", i32 483, i64 32, i64 32, i64 640, i32 0, metadata !30} ; [ DW_TAG_member ] [hmmto] [line 483, size 32, align 32, offset 640] [from int]
!35 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"hmmlen", i32 484, i64 32, i64 32, i64 672, i32 0, metadata !30} ; [ DW_TAG_member ] [hmmlen] [line 484, size 32, align 32, offset 672] [from int]
!36 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"domidx", i32 485, i64 32, i64 32, i64 704, i32 0, metadata !30} ; [ DW_TAG_member ] [domidx] [line 485, size 32, align 32, offset 704] [from int]
!37 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"ndom", i32 486, i64 32, i64 32, i64 736, i32 0, metadata !30} ; [ DW_TAG_member ] [ndom] [line 486, size 32, align 32, offset 736] [from int]
!38 = metadata !{i32 786445, metadata !10, metadata !15, metadata !"ali", i32 487, i64 64, i64 64, i64 768, i32 0, metadata !39} ; [ DW_TAG_member ] [ali] [line 487, size 64, align 64, offset 768] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from fancyali_s]
!40 = metadata !{i32 786451, metadata !10, null, metadata !"fancyali_s", i32 447, i64 576, i64 64, i32 0, i32 0, null, metadata !41, i32 0, null, null} ; [ DW_TAG_structure_type ] [fancyali_s] [line 447, size 576, align 64, offset 0] [from ]
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51}
!42 = metadata !{i32 786445, metadata !10, metadata !40, metadata !"rfline", i32 448, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ] [rfline] [line 448, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786445, metadata !10, metadata !40, metadata !"csline", i32 449, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [csline] [line 449, size 64, align 64, offset 64] [from ]
!44 = metadata !{i32 786445, metadata !10, metadata !40, metadata !"model", i32 450, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [model] [line 450, size 64, align 64, offset 128] [from ]
!45 = metadata !{i32 786445, metadata !10, metadata !40, metadata !"mline", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [mline] [line 451, size 64, align 64, offset 192] [from ]
!46 = metadata !{i32 786445, metadata !10, metadata !40, metadata !"aseq", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !25} ; [ DW_TAG_member ] [aseq] [line 452, size 64, align 64, offset 256] [from ]
!47 = metadata !{i32 786445, metadata !10, metadata !40, metadata !"len", i32 453, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [len] [line 453, size 32, align 32, offset 320] [from int]
!48 = metadata !{i32 786445, metadata !10, metadata !40, metadata !"query", i32 454, i64 64, i64 64, i64 384, i32 0, metadata !25} ; [ DW_TAG_member ] [query] [line 454, size 64, align 64, offset 384] [from ]
!49 = metadata !{i32 786445, metadata !10, metadata !40, metadata !"target", i32 455, i64 64, i64 64, i64 448, i32 0, metadata !25} ; [ DW_TAG_member ] [target] [line 455, size 64, align 64, offset 448] [from ]
!50 = metadata !{i32 786445, metadata !10, metadata !40, metadata !"sqfrom", i32 456, i64 32, i64 32, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [sqfrom] [line 456, size 32, align 32, offset 512] [from int]
!51 = metadata !{i32 786445, metadata !10, metadata !40, metadata !"sqto", i32 457, i64 32, i64 32, i64 544, i32 0, metadata !30} ; [ DW_TAG_member ] [sqto] [line 457, size 32, align 32, offset 544] [from int]
!52 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"unsrt", i32 499, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [unsrt] [line 499, size 64, align 64, offset 64] [from ]
!53 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"alloc", i32 500, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [alloc] [line 500, size 32, align 32, offset 128] [from int]
!54 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"num", i32 501, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [num] [line 501, size 32, align 32, offset 160] [from int]
!55 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"lump", i32 502, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [lump] [line 502, size 32, align 32, offset 192] [from int]
!56 = metadata !{metadata !57, metadata !58}
!57 = metadata !{i32 786689, metadata !4, metadata !"lumpsize", metadata !5, i32 16777294, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lumpsize] [line 78]
!58 = metadata !{i32 786688, metadata !4, metadata !"hitlist", metadata !5, i32 80, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hitlist] [line 80]
!59 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GrowTophits", metadata !"GrowTophits", metadata !"", i32 91, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.tophit_s*)* @GrowTophits, null, null, metadata !62, i32 92} ; [ DW_TAG_subprogram ] [line 91] [def] [scope 92] [GrowTophits]
!60 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!61 = metadata !{null, metadata !8}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786689, metadata !59, metadata !"h", metadata !5, i32 16777307, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 91]
!64 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FreeTophits", metadata !"FreeTophits", metadata !"", i32 97, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.tophit_s*)* @FreeTophits, null, null, metadata !65, i32 98} ; [ DW_TAG_subprogram ] [line 97] [def] [scope 98] [FreeTophits]
!65 = metadata !{metadata !66, metadata !67}
!66 = metadata !{i32 786689, metadata !64, metadata !"h", metadata !5, i32 16777313, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 97]
!67 = metadata !{i32 786688, metadata !64, metadata !"pos", metadata !5, i32 99, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 99]
!68 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"AllocFancyAli", metadata !"AllocFancyAli", metadata !"", i32 113, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.fancyali_s* ()* @AllocFancyAli, null, null, metadata !71, i32 114} ; [ DW_TAG_subprogram ] [line 113] [def] [scope 114] [AllocFancyAli]
!69 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!70 = metadata !{metadata !39}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786688, metadata !68, metadata !"ali", metadata !5, i32 115, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ali] [line 115]
!73 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FreeFancyAli", metadata !"FreeFancyAli", metadata !"", i32 124, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.fancyali_s*)* @FreeFancyAli, null, null, metadata !76, i32 125} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 125] [FreeFancyAli]
!74 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{null, metadata !39}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786689, metadata !73, metadata !"ali", metadata !5, i32 16777340, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ali] [line 124]
!78 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"RegisterHit", metadata !"RegisterHit", metadata !"", i32 176, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.tophit_s*, double, double, float, double, float, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s*)* @RegisterHit, null, null, metadata !81, i32 183} ; [ DW_TAG_subprogram ] [line 176] [def] [scope 183] [RegisterHit]
!79 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{null, metadata !8, metadata !18, metadata !18, metadata !20, metadata !18, metadata !20, metadata !25, metadata !25, metadata !25, metadata !30, metadata !30, metadata !30, metadata !30, metadata !30, metadata !30, metadata !30, metadata !30, metadata !39}
!81 = metadata !{metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99}
!82 = metadata !{i32 786689, metadata !78, metadata !"h", metadata !5, i32 16777392, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 176]
!83 = metadata !{i32 786689, metadata !78, metadata !"key", metadata !5, i32 33554608, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 176]
!84 = metadata !{i32 786689, metadata !78, metadata !"pvalue", metadata !5, i32 50331825, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pvalue] [line 177]
!85 = metadata !{i32 786689, metadata !78, metadata !"score", metadata !5, i32 67109041, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [score] [line 177]
!86 = metadata !{i32 786689, metadata !78, metadata !"motherp", metadata !5, i32 83886257, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [motherp] [line 177]
!87 = metadata !{i32 786689, metadata !78, metadata !"mothersc", metadata !5, i32 100663473, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mothersc] [line 177]
!88 = metadata !{i32 786689, metadata !78, metadata !"name", metadata !5, i32 117440690, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 178]
!89 = metadata !{i32 786689, metadata !78, metadata !"acc", metadata !5, i32 134217906, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [acc] [line 178]
!90 = metadata !{i32 786689, metadata !78, metadata !"desc", metadata !5, i32 150995122, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [desc] [line 178]
!91 = metadata !{i32 786689, metadata !78, metadata !"sqfrom", metadata !5, i32 167772339, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqfrom] [line 179]
!92 = metadata !{i32 786689, metadata !78, metadata !"sqto", metadata !5, i32 184549555, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqto] [line 179]
!93 = metadata !{i32 786689, metadata !78, metadata !"sqlen", metadata !5, i32 201326771, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqlen] [line 179]
!94 = metadata !{i32 786689, metadata !78, metadata !"hmmfrom", metadata !5, i32 218103988, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfrom] [line 180]
!95 = metadata !{i32 786689, metadata !78, metadata !"hmmto", metadata !5, i32 234881204, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmto] [line 180]
!96 = metadata !{i32 786689, metadata !78, metadata !"hmmlen", metadata !5, i32 251658420, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmlen] [line 180]
!97 = metadata !{i32 786689, metadata !78, metadata !"domidx", metadata !5, i32 268435637, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [domidx] [line 181]
!98 = metadata !{i32 786689, metadata !78, metadata !"ndom", metadata !5, i32 285212853, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ndom] [line 181]
!99 = metadata !{i32 786689, metadata !78, metadata !"ali", metadata !5, i32 301990070, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ali] [line 182]
!100 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GetRankedHit", metadata !"GetRankedHit", metadata !"", i32 220, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.tophit_s*, i32, double*, float*, double*, float*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.fancyali_s**)* @GetRankedHit, null, null, metadata !108, i32 228} ; [ DW_TAG_subprogram ] [line 220] [def] [scope 228] [GetRankedHit]
!101 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!102 = metadata !{null, metadata !8, metadata !30, metadata !103, metadata !104, metadata !103, metadata !104, metadata !105, metadata !105, metadata !105, metadata !106, metadata !106, metadata !106, metadata !106, metadata !106, metadata !106, metadata !106, metadata !106, metadata !107}
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!108 = metadata !{metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126}
!109 = metadata !{i32 786689, metadata !100, metadata !"h", metadata !5, i32 16777436, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 220]
!110 = metadata !{i32 786689, metadata !100, metadata !"rank", metadata !5, i32 33554652, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rank] [line 220]
!111 = metadata !{i32 786689, metadata !100, metadata !"r_pvalue", metadata !5, i32 50331869, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_pvalue] [line 221]
!112 = metadata !{i32 786689, metadata !100, metadata !"r_score", metadata !5, i32 67109085, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_score] [line 221]
!113 = metadata !{i32 786689, metadata !100, metadata !"r_motherp", metadata !5, i32 83886302, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_motherp] [line 222]
!114 = metadata !{i32 786689, metadata !100, metadata !"r_mothersc", metadata !5, i32 100663518, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_mothersc] [line 222]
!115 = metadata !{i32 786689, metadata !100, metadata !"r_name", metadata !5, i32 117440735, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_name] [line 223]
!116 = metadata !{i32 786689, metadata !100, metadata !"r_acc", metadata !5, i32 134217951, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_acc] [line 223]
!117 = metadata !{i32 786689, metadata !100, metadata !"r_desc", metadata !5, i32 150995167, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_desc] [line 223]
!118 = metadata !{i32 786689, metadata !100, metadata !"r_sqfrom", metadata !5, i32 167772384, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_sqfrom] [line 224]
!119 = metadata !{i32 786689, metadata !100, metadata !"r_sqto", metadata !5, i32 184549600, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_sqto] [line 224]
!120 = metadata !{i32 786689, metadata !100, metadata !"r_sqlen", metadata !5, i32 201326816, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_sqlen] [line 224]
!121 = metadata !{i32 786689, metadata !100, metadata !"r_hmmfrom", metadata !5, i32 218104033, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_hmmfrom] [line 225]
!122 = metadata !{i32 786689, metadata !100, metadata !"r_hmmto", metadata !5, i32 234881249, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_hmmto] [line 225]
!123 = metadata !{i32 786689, metadata !100, metadata !"r_hmmlen", metadata !5, i32 251658465, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_hmmlen] [line 225]
!124 = metadata !{i32 786689, metadata !100, metadata !"r_domidx", metadata !5, i32 268435682, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_domidx] [line 226]
!125 = metadata !{i32 786689, metadata !100, metadata !"r_ndom", metadata !5, i32 285212898, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_ndom] [line 226]
!126 = metadata !{i32 786689, metadata !100, metadata !"r_ali", metadata !5, i32 301990115, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r_ali] [line 227]
!127 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"TophitsMaxName", metadata !"TophitsMaxName", metadata !"", i32 253, metadata !128, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.tophit_s*)* @TophitsMaxName, null, null, metadata !130, i32 254} ; [ DW_TAG_subprogram ] [line 253] [def] [scope 254] [TophitsMaxName]
!128 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!129 = metadata !{metadata !30, metadata !8}
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134}
!131 = metadata !{i32 786689, metadata !127, metadata !"h", metadata !5, i32 16777469, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 253]
!132 = metadata !{i32 786688, metadata !127, metadata !"i", metadata !5, i32 255, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 255]
!133 = metadata !{i32 786688, metadata !127, metadata !"len", metadata !5, i32 256, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 256]
!134 = metadata !{i32 786688, metadata !127, metadata !"maxlen", metadata !5, i32 256, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxlen] [line 256]
!135 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"hit_comparison", metadata !"hit_comparison", metadata !"", i32 276, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @hit_comparison, null, null, metadata !140, i32 277} ; [ DW_TAG_subprogram ] [line 276] [def] [scope 277] [hit_comparison]
!136 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!137 = metadata !{metadata !30, metadata !138, metadata !138}
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!139 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{metadata !141, metadata !142, metadata !143, metadata !144}
!141 = metadata !{i32 786689, metadata !135, metadata !"vh1", metadata !5, i32 16777492, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vh1] [line 276]
!142 = metadata !{i32 786689, metadata !135, metadata !"vh2", metadata !5, i32 33554708, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vh2] [line 276]
!143 = metadata !{i32 786688, metadata !135, metadata !"h1", metadata !5, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h1] [line 279]
!144 = metadata !{i32 786688, metadata !135, metadata !"h2", metadata !5, i32 280, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h2] [line 280]
!145 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FullSortTophits", metadata !"FullSortTophits", metadata !"", i32 289, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.tophit_s*)* @FullSortTophits, null, null, metadata !146, i32 290} ; [ DW_TAG_subprogram ] [line 289] [def] [scope 290] [FullSortTophits]
!146 = metadata !{metadata !147, metadata !148}
!147 = metadata !{i32 786689, metadata !145, metadata !"h", metadata !5, i32 16777505, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 289]
!148 = metadata !{i32 786688, metadata !145, metadata !"i", metadata !5, i32 291, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 291]
!149 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"TophitsReport", metadata !"TophitsReport", metadata !"", i32 328, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.tophit_s*, double, i32)* @TophitsReport, null, null, metadata !152, i32 329} ; [ DW_TAG_subprogram ] [line 328] [def] [scope 329] [TophitsReport]
!150 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{null, metadata !8, metadata !18, metadata !30}
!152 = metadata !{metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159}
!153 = metadata !{i32 786689, metadata !149, metadata !"h", metadata !5, i32 16777544, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 328]
!154 = metadata !{i32 786689, metadata !149, metadata !"E", metadata !5, i32 33554760, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [E] [line 328]
!155 = metadata !{i32 786689, metadata !149, metadata !"nseq", metadata !5, i32 50331976, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 328]
!156 = metadata !{i32 786688, metadata !149, metadata !"i", metadata !5, i32 330, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 330]
!157 = metadata !{i32 786688, metadata !149, metadata !"memused", metadata !5, i32 331, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [memused] [line 331]
!158 = metadata !{i32 786688, metadata !149, metadata !"x", metadata !5, i32 332, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 332]
!159 = metadata !{i32 786688, metadata !149, metadata !"n", metadata !5, i32 333, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 333]
!160 = metadata !{i32 78, i32 0, metadata !4, null}
!161 = metadata !{i32 82, i32 0, metadata !4, null}
!162 = metadata !{i32 83, i32 0, metadata !4, null}
!163 = metadata !{metadata !"any pointer", metadata !164}
!164 = metadata !{metadata !"omnipotent char", metadata !165}
!165 = metadata !{metadata !"Simple C/C++ TBAA"}
!166 = metadata !{i32 84, i32 0, metadata !4, null}
!167 = metadata !{i32 85, i32 0, metadata !4, null}
!168 = metadata !{metadata !"int", metadata !164}
!169 = metadata !{i32 86, i32 0, metadata !4, null}
!170 = metadata !{i32 87, i32 0, metadata !4, null}
!171 = metadata !{i32 88, i32 0, metadata !4, null}
!172 = metadata !{i32 91, i32 0, metadata !59, null}
!173 = metadata !{i32 93, i32 0, metadata !59, null}
!174 = metadata !{i32 94, i32 0, metadata !59, null}
!175 = metadata !{i32 95, i32 0, metadata !59, null}
!176 = metadata !{i32 97, i32 0, metadata !64, null}
!177 = metadata !{i32 100, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !64, i32 100, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c]
!179 = metadata !{i32 102, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !178, i32 101, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c]
!181 = metadata !{i32 103, i32 0, metadata !180, null}
!182 = metadata !{i32 104, i32 0, metadata !180, null}
!183 = metadata !{i32 105, i32 0, metadata !180, null}
!184 = metadata !{i32 107, i32 0, metadata !64, null}
!185 = metadata !{i32 108, i32 0, metadata !64, null}
!186 = metadata !{i32 109, i32 0, metadata !64, null}
!187 = metadata !{i32 110, i32 0, metadata !64, null}
!188 = metadata !{i32 124, i32 0, metadata !73, null}
!189 = metadata !{i32 126, i32 0, metadata !73, null}
!190 = metadata !{i32 127, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !73, i32 126, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c]
!192 = metadata !{i32 128, i32 0, metadata !191, null}
!193 = metadata !{i32 129, i32 0, metadata !191, null}
!194 = metadata !{i32 130, i32 0, metadata !191, null}
!195 = metadata !{i32 131, i32 0, metadata !191, null}
!196 = metadata !{i32 132, i32 0, metadata !191, null}
!197 = metadata !{i32 133, i32 0, metadata !191, null}
!198 = metadata !{i32 134, i32 0, metadata !191, null}
!199 = metadata !{i32 135, i32 0, metadata !191, null}
!200 = metadata !{i32 136, i32 0, metadata !73, null}
!201 = metadata !{i32 117, i32 0, metadata !68, null}
!202 = metadata !{i32 119, i32 0, metadata !68, null}
!203 = metadata !{i32 118, i32 0, metadata !68, null}
!204 = metadata !{i32 121, i32 0, metadata !68, null}
!205 = metadata !{i32 176, i32 0, metadata !78, null}
!206 = metadata !{i32 177, i32 0, metadata !78, null}
!207 = metadata !{i32 178, i32 0, metadata !78, null}
!208 = metadata !{i32 179, i32 0, metadata !78, null}
!209 = metadata !{i32 180, i32 0, metadata !78, null}
!210 = metadata !{i32 181, i32 0, metadata !78, null}
!211 = metadata !{i32 182, i32 0, metadata !78, null}
!212 = metadata !{i32 186, i32 0, metadata !78, null}
!213 = metadata !{i32 93, i32 0, metadata !59, metadata !212}
!214 = metadata !{i32 786689, metadata !59, metadata !"h", metadata !5, i32 16777307, metadata !8, i32 0, metadata !212} ; [ DW_TAG_arg_variable ] [h] [line 91]
!215 = metadata !{i32 91, i32 0, metadata !59, metadata !212}
!216 = metadata !{i32 94, i32 0, metadata !59, metadata !212}
!217 = metadata !{i32 188, i32 0, metadata !78, null}
!218 = metadata !{i32 189, i32 0, metadata !78, null}
!219 = metadata !{i32 190, i32 0, metadata !78, null}
!220 = metadata !{i32 191, i32 0, metadata !78, null}
!221 = metadata !{metadata !"double", metadata !164}
!222 = metadata !{i32 192, i32 0, metadata !78, null}
!223 = metadata !{i32 193, i32 0, metadata !78, null}
!224 = metadata !{metadata !"float", metadata !164}
!225 = metadata !{i32 194, i32 0, metadata !78, null}
!226 = metadata !{i32 195, i32 0, metadata !78, null}
!227 = metadata !{i32 196, i32 0, metadata !78, null}
!228 = metadata !{i32 197, i32 0, metadata !78, null}
!229 = metadata !{i32 198, i32 0, metadata !78, null}
!230 = metadata !{i32 199, i32 0, metadata !78, null}
!231 = metadata !{i32 200, i32 0, metadata !78, null}
!232 = metadata !{i32 201, i32 0, metadata !78, null}
!233 = metadata !{i32 202, i32 0, metadata !78, null}
!234 = metadata !{i32 203, i32 0, metadata !78, null}
!235 = metadata !{i32 204, i32 0, metadata !78, null}
!236 = metadata !{i32 205, i32 0, metadata !78, null}
!237 = metadata !{i32 206, i32 0, metadata !78, null}
!238 = metadata !{i32 220, i32 0, metadata !100, null}
!239 = metadata !{i32 221, i32 0, metadata !100, null}
!240 = metadata !{i32 222, i32 0, metadata !100, null}
!241 = metadata !{i32 223, i32 0, metadata !100, null}
!242 = metadata !{i32 224, i32 0, metadata !100, null}
!243 = metadata !{i32 225, i32 0, metadata !100, null}
!244 = metadata !{i32 226, i32 0, metadata !100, null}
!245 = metadata !{i32 227, i32 0, metadata !100, null}
!246 = metadata !{i32 229, i32 0, metadata !100, null}
!247 = metadata !{i32 230, i32 0, metadata !100, null}
!248 = metadata !{i32 231, i32 0, metadata !100, null}
!249 = metadata !{i32 232, i32 0, metadata !100, null}
!250 = metadata !{i32 233, i32 0, metadata !100, null}
!251 = metadata !{i32 234, i32 0, metadata !100, null}
!252 = metadata !{i32 235, i32 0, metadata !100, null}
!253 = metadata !{i32 236, i32 0, metadata !100, null}
!254 = metadata !{i32 237, i32 0, metadata !100, null}
!255 = metadata !{i32 238, i32 0, metadata !100, null}
!256 = metadata !{i32 239, i32 0, metadata !100, null}
!257 = metadata !{i32 240, i32 0, metadata !100, null}
!258 = metadata !{i32 241, i32 0, metadata !100, null}
!259 = metadata !{i32 242, i32 0, metadata !100, null}
!260 = metadata !{i32 243, i32 0, metadata !100, null}
!261 = metadata !{i32 244, i32 0, metadata !100, null}
!262 = metadata !{i32 245, i32 0, metadata !100, null}
!263 = metadata !{i32 253, i32 0, metadata !127, null}
!264 = metadata !{i32 258, i32 0, metadata !127, null}
!265 = metadata !{i32 259, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !127, i32 259, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c]
!267 = metadata !{i32 261, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !266, i32 260, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c]
!269 = metadata !{i32 262, i32 0, metadata !268, null}
!270 = metadata !{i32 264, i32 0, metadata !127, null}
!271 = metadata !{i32 276, i32 0, metadata !135, null}
!272 = metadata !{i32 279, i32 0, metadata !135, null}
!273 = metadata !{i32 280, i32 0, metadata !135, null}
!274 = metadata !{i32 282, i32 0, metadata !135, null}
!275 = metadata !{i32 283, i32 0, metadata !135, null}
!276 = metadata !{i32 286, i32 0, metadata !135, null}
!277 = metadata !{i32 289, i32 0, metadata !145, null}
!278 = metadata !{i32 296, i32 0, metadata !145, null}
!279 = metadata !{i32 300, i32 0, metadata !145, null}
!280 = metadata !{i32 301, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !145, i32 301, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c]
!282 = metadata !{i32 302, i32 0, metadata !281, null}
!283 = metadata !{i32 306, i32 0, metadata !145, null}
!284 = metadata !{i32 307, i32 0, metadata !145, null}
!285 = metadata !{i32 328, i32 0, metadata !149, null}
!286 = metadata !{i32 338, i32 0, metadata !149, null}
!287 = metadata !{i32 339, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !149, i32 339, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c]
!289 = metadata !{i32 341, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !288, i32 340, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c]
!291 = metadata !{i32 368, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !149, i32 368, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c]
!293 = metadata !{i32 370, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !292, i32 369, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c]
!295 = metadata !{i32 342, i32 0, metadata !290, null}
!296 = metadata !{i32 343, i32 0, metadata !290, null}
!297 = metadata !{i32 344, i32 0, metadata !290, null}
!298 = metadata !{i32 345, i32 0, metadata !290, null}
!299 = metadata !{i32 346, i32 0, metadata !290, null}
!300 = metadata !{i32 347, i32 0, metadata !290, null}
!301 = metadata !{i32 349, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !290, i32 348, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c]
!303 = metadata !{i32 350, i32 0, metadata !302, null}
!304 = metadata !{i32 351, i32 0, metadata !302, null}
!305 = metadata !{i32 1}
!306 = metadata !{i32 352, i32 0, metadata !302, null}
!307 = metadata !{i32 353, i32 0, metadata !302, null}
!308 = metadata !{i32 354, i32 0, metadata !302, null}
!309 = metadata !{i32 355, i32 0, metadata !302, null}
!310 = metadata !{i32 356, i32 0, metadata !302, null}
!311 = metadata !{i32 358, i32 0, metadata !302, null}
!312 = metadata !{i32 359, i32 0, metadata !302, null}
!313 = metadata !{i32 360, i32 0, metadata !302, null}
!314 = metadata !{i32 361, i32 0, metadata !302, null}
!315 = metadata !{i32 371, i32 0, metadata !294, null}
!316 = metadata !{i32 376, i32 0, metadata !149, null}
!317 = metadata !{i32 377, i32 0, metadata !149, null}
!318 = metadata !{i32 378, i32 0, metadata !149, null}
!319 = metadata !{i32 379, i32 0, metadata !149, null}
!320 = metadata !{i32 380, i32 0, metadata !149, null}
