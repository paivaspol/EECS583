; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylo_s = type { i32, i32, i32, float, float, float, i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.intstack_s = type { i32, %struct.intstack_s* }

@.str = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c\00", align 1
@.str1 = private unnamed_addr constant [20 x i8] c"AllocPhylo() failed\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"%s:%.5f\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"):%.5f\00", align 1
@.str8 = private unnamed_addr constant [28 x i8] c"Interior node %d (code %d)\0A\00", align 1
@.str9 = private unnamed_addr constant [23 x i8] c"\09Parent: %d (code %d)\0A\00", align 1
@.str10 = private unnamed_addr constant [21 x i8] c"\09Left:   %d (%s) %f\0A\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"interior\00", align 1
@.str12 = private unnamed_addr constant [22 x i8] c"\09Right:   %d (%s) %f\0A\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"\09Height:  %f\0A\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"\09Includes:%d seqs\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Cluster(float** nocapture %dmx, i32 %N, i32 %mode, %struct.phylo_s** nocapture %ret_tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float** %dmx}, i64 0, metadata !34), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !35), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !36), !dbg !209
  tail call void @llvm.dbg.value(metadata !{%struct.phylo_s** %ret_tree}, i64 0, metadata !37), !dbg !209
  %conv = sext i32 %N to i64, !dbg !210
  %mul = shl nsw i64 %conv, 3, !dbg !210
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 168, i64 %mul) #5, !dbg !210
  %0 = bitcast i8* %call to float**, !dbg !210
  tail call void @llvm.dbg.value(metadata !{float** %0}, i64 0, metadata !39), !dbg !210
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !42), !dbg !211
  %cmp813 = icmp sgt i32 %N, 0, !dbg !211
  %mul3 = shl nsw i64 %conv, 2, !dbg !213
  br i1 %cmp813, label %for.body8.lr.ph, label %for.end19, !dbg !211

for.body8.lr.ph:                                  ; preds = %for.inc17, %entry
  %indvars.iv874 = phi i64 [ %indvars.iv.next875, %for.inc17 ], [ 0, %entry ]
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 171, i64 %mul3) #5, !dbg !213
  %1 = bitcast i8* %call4 to float*, !dbg !213
  %arrayidx = getelementptr inbounds float** %0, i64 %indvars.iv874, !dbg !213
  store float* %1, float** %arrayidx, align 8, !dbg !213, !tbaa !215
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !43), !dbg !218
  %arrayidx11 = getelementptr inbounds float** %dmx, i64 %indvars.iv874, !dbg !220
  %2 = load float** %arrayidx11, align 8, !dbg !220, !tbaa !215
  br label %for.body8, !dbg !218

for.body8:                                        ; preds = %for.body8, %for.body8.lr.ph
  %indvars.iv870 = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next871, %for.body8 ]
  %arrayidx12 = getelementptr inbounds float* %2, i64 %indvars.iv870, !dbg !220
  %3 = load float* %arrayidx12, align 4, !dbg !220, !tbaa !221
  %arrayidx16 = getelementptr inbounds float* %1, i64 %indvars.iv870, !dbg !220
  store float %3, float* %arrayidx16, align 4, !dbg !220, !tbaa !221
  %indvars.iv.next871 = add i64 %indvars.iv870, 1, !dbg !218
  %lftr.wideiv872 = trunc i64 %indvars.iv.next871 to i32, !dbg !218
  %exitcond873 = icmp eq i32 %lftr.wideiv872, %N, !dbg !218
  br i1 %exitcond873, label %for.inc17, label %for.body8, !dbg !218

for.inc17:                                        ; preds = %for.body8
  %indvars.iv.next875 = add i64 %indvars.iv874, 1, !dbg !211
  %lftr.wideiv876 = trunc i64 %indvars.iv.next875 to i32, !dbg !211
  %exitcond877 = icmp eq i32 %lftr.wideiv876, %N, !dbg !211
  br i1 %exitcond877, label %for.end19, label %for.body8.lr.ph, !dbg !211

for.end19:                                        ; preds = %for.inc17, %entry
  %call22 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 176, i64 %mul3) #5, !dbg !222
  %4 = bitcast i8* %call22 to i32*, !dbg !222
  tail call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !40), !dbg !222
  %sub = add i32 %N, -1, !dbg !223
  %conv23 = sext i32 %sub to i64, !dbg !223
  %mul24 = shl nsw i64 %conv23, 2, !dbg !223
  %call25 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 177, i64 %mul24) #5, !dbg !223
  %5 = bitcast i8* %call25 to float*, !dbg !223
  tail call void @llvm.dbg.value(metadata !{float* %5}, i64 0, metadata !51), !dbg !223
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !47), !dbg !224
  br i1 %cmp813, label %for.body29, label %for.cond35.preheader, !dbg !224

for.cond35.preheader:                             ; preds = %for.body29, %for.end19
  %cmp37806 = icmp sgt i32 %sub, 0, !dbg !226
  br i1 %cmp37806, label %for.body39.lr.ph, label %for.end44, !dbg !226

for.body39.lr.ph:                                 ; preds = %for.cond35.preheader
  %6 = add i32 %N, -2, !dbg !226
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 2, !dbg !226
  %9 = add i64 %8, 4, !dbg !226
  call void @llvm.memset.p0i8.i64(i8* %call25, i8 0, i64 %9, i32 4, i1 false), !dbg !226
  br label %for.end44, !dbg !226

for.body29:                                       ; preds = %for.end19, %for.body29
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %for.body29 ], [ 0, %for.end19 ]
  %arrayidx31 = getelementptr inbounds i32* %4, i64 %indvars.iv866, !dbg !224
  %10 = trunc i64 %indvars.iv866 to i32, !dbg !224
  store i32 %10, i32* %arrayidx31, align 4, !dbg !224, !tbaa !228
  %indvars.iv.next867 = add i64 %indvars.iv866, 1, !dbg !224
  %lftr.wideiv868 = trunc i64 %indvars.iv.next867 to i32, !dbg !224
  %exitcond869 = icmp eq i32 %lftr.wideiv868, %N, !dbg !224
  br i1 %exitcond869, label %for.cond35.preheader, label %for.body29, !dbg !224

for.end44:                                        ; preds = %for.body39.lr.ph, %for.cond35.preheader
  %i.1.lcssa = phi i32 [ %sub, %for.body39.lr.ph ], [ 0, %for.cond35.preheader ]
  %call45 = tail call %struct.phylo_s* @AllocPhylo(i32 %N) #6, !dbg !229
  tail call void @llvm.dbg.value(metadata !{%struct.phylo_s* %call45}, i64 0, metadata !38), !dbg !229
  %cmp46 = icmp eq %struct.phylo_s* %call45, null, !dbg !229
  br i1 %cmp46, label %if.then, label %for.cond48.preheader, !dbg !229

if.then:                                          ; preds = %for.end44
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([20 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !229
  br label %for.cond48.preheader, !dbg !229

for.cond48.preheader:                             ; preds = %if.then, %for.end44
  %cmp49802 = icmp sgt i32 %N, 1, !dbg !230
  br i1 %cmp49802, label %for.cond52.preheader.lr.ph, label %for.end487, !dbg !230

for.cond52.preheader.lr.ph:                       ; preds = %for.cond48.preheader
  %add481 = add i32 %N, -2, !dbg !232
  br label %for.body55.lr.ph, !dbg !230

for.body55.lr.ph:                                 ; preds = %for.end480, %for.cond52.preheader.lr.ph
  %indvars.iv859 = phi i64 [ %conv, %for.cond52.preheader.lr.ph ], [ %indvars.iv.next860, %for.end480 ]
  %indvars.iv855 = phi i32 [ %N, %for.cond52.preheader.lr.ph ], [ %indvars.iv.next856, %for.end480 ], !dbg !234
  %i.2805 = phi i32 [ %i.1.lcssa, %for.cond52.preheader.lr.ph ], [ %50, %for.end480 ]
  %j.1803 = phi i32 [ 0, %for.cond52.preheader.lr.ph ], [ %49, %for.end480 ]
  br label %for.body55, !dbg !236

for.cond52.loopexit:                              ; preds = %for.body59, %for.body55
  %i.4.lcssa = phi i32 [ %i.3786, %for.body55 ], [ %i.5, %for.body59 ]
  %min.1.lcssa = phi float [ %min.0785, %for.body55 ], [ %min.2, %for.body59 ]
  %j.3.lcssa = phi i32 [ %j.2783, %for.body55 ], [ %j.4, %for.body59 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !236
  %exitcond826 = icmp eq i32 %11, %indvars.iv855, !dbg !236
  br i1 %exitcond826, label %for.end77, label %for.body55, !dbg !236

for.body55:                                       ; preds = %for.cond52.loopexit, %for.body55.lr.ph
  %indvars.iv821 = phi i64 [ 0, %for.body55.lr.ph ], [ %indvars.iv.next822, %for.cond52.loopexit ]
  %indvars.iv = phi i64 [ 1, %for.body55.lr.ph ], [ %indvars.iv.next, %for.cond52.loopexit ]
  %i.3786 = phi i32 [ %i.2805, %for.body55.lr.ph ], [ %i.4.lcssa, %for.cond52.loopexit ]
  %min.0785 = phi float [ 9.999990e+05, %for.body55.lr.ph ], [ %min.1.lcssa, %for.cond52.loopexit ]
  %j.2783 = phi i32 [ %j.1803, %for.body55.lr.ph ], [ %j.3.lcssa, %for.cond52.loopexit ]
  %indvars.iv.next822 = add i64 %indvars.iv821, 1, !dbg !236
  %11 = trunc i64 %indvars.iv.next822 to i32, !dbg !238
  %12 = trunc i64 %indvars.iv859 to i32, !dbg !238
  %cmp57775 = icmp slt i32 %11, %12, !dbg !238
  br i1 %cmp57775, label %for.body59.lr.ph, label %for.cond52.loopexit, !dbg !238

for.body59.lr.ph:                                 ; preds = %for.body55
  %arrayidx62 = getelementptr inbounds float** %0, i64 %indvars.iv821, !dbg !240
  %13 = load float** %arrayidx62, align 8, !dbg !240, !tbaa !215
  br label %for.body59, !dbg !238

for.body59:                                       ; preds = %for.body59, %for.body59.lr.ph
  %indvars.iv816 = phi i64 [ %indvars.iv, %for.body59.lr.ph ], [ %indvars.iv.next817, %for.body59 ], !dbg !236
  %i.4779 = phi i32 [ %i.3786, %for.body59.lr.ph ], [ %i.5, %for.body59 ]
  %min.1778 = phi float [ %min.0785, %for.body59.lr.ph ], [ %min.2, %for.body59 ]
  %j.3776 = phi i32 [ %j.2783, %for.body59.lr.ph ], [ %j.4, %for.body59 ]
  %arrayidx63 = getelementptr inbounds float* %13, i64 %indvars.iv816, !dbg !240
  %14 = load float* %arrayidx63, align 4, !dbg !240, !tbaa !221
  %cmp64 = fcmp olt float %14, %min.1778, !dbg !240
  tail call void @llvm.dbg.value(metadata !{float %14}, i64 0, metadata !48), !dbg !241
  tail call void @llvm.dbg.value(metadata !243, i64 0, metadata !42), !dbg !244
  tail call void @llvm.dbg.value(metadata !243, i64 0, metadata !43), !dbg !245
  %15 = trunc i64 %indvars.iv816 to i32, !dbg !240
  %j.4 = select i1 %cmp64, i32 %15, i32 %j.3776, !dbg !240
  %min.2 = select i1 %cmp64, float %14, float %min.1778, !dbg !240
  %16 = trunc i64 %indvars.iv821 to i32, !dbg !240
  %i.5 = select i1 %cmp64, i32 %16, i32 %i.4779, !dbg !240
  %indvars.iv.next817 = add i64 %indvars.iv816, 1, !dbg !238
  %lftr.wideiv = trunc i64 %indvars.iv.next817 to i32, !dbg !238
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv855, !dbg !238
  br i1 %exitcond, label %for.cond52.loopexit, label %for.body59, !dbg !238

for.end77:                                        ; preds = %for.cond52.loopexit
  %idxprom78 = sext i32 %i.4.lcssa to i64, !dbg !246
  %arrayidx79 = getelementptr inbounds i32* %4, i64 %idxprom78, !dbg !246
  %17 = load i32* %arrayidx79, align 4, !dbg !246, !tbaa !228
  %18 = add nsw i64 %indvars.iv859, -2, !dbg !246
  %left = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 1, !dbg !246
  store i32 %17, i32* %left, align 4, !dbg !246, !tbaa !228
  %idxprom83 = sext i32 %j.3.lcssa to i64, !dbg !247
  %arrayidx84 = getelementptr inbounds i32* %4, i64 %idxprom83, !dbg !247
  %19 = load i32* %arrayidx84, align 4, !dbg !247, !tbaa !228
  %right = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 2, !dbg !247
  store i32 %19, i32* %right, align 4, !dbg !247, !tbaa !228
  %20 = load i32* %arrayidx79, align 4, !dbg !248, !tbaa !228
  %cmp90 = icmp slt i32 %20, %N, !dbg !248
  br i1 %cmp90, label %if.end100, label %if.then92, !dbg !248

if.then92:                                        ; preds = %for.end77
  %21 = trunc i64 %indvars.iv859 to i32, !dbg !248
  %sub94 = add i32 %add481, %21, !dbg !248
  %sub97 = sub nsw i32 %20, %N, !dbg !248
  %idxprom98 = sext i32 %sub97 to i64, !dbg !248
  %parent = getelementptr inbounds %struct.phylo_s* %call45, i64 %idxprom98, i32 0, !dbg !248
  store i32 %sub94, i32* %parent, align 4, !dbg !248, !tbaa !228
  br label %if.end100, !dbg !248

if.end100:                                        ; preds = %for.end77, %if.then92
  %22 = load i32* %arrayidx84, align 4, !dbg !249, !tbaa !228
  %cmp103 = icmp slt i32 %22, %N, !dbg !249
  br i1 %cmp103, label %if.end114, label %if.then105, !dbg !249

if.then105:                                       ; preds = %if.end100
  %23 = trunc i64 %indvars.iv859 to i32, !dbg !249
  %sub107 = add i32 %add481, %23, !dbg !249
  %sub110 = sub nsw i32 %22, %N, !dbg !249
  %idxprom111 = sext i32 %sub110 to i64, !dbg !249
  %parent113 = getelementptr inbounds %struct.phylo_s* %call45, i64 %idxprom111, i32 0, !dbg !249
  store i32 %sub107, i32* %parent113, align 4, !dbg !249, !tbaa !228
  br label %if.end114, !dbg !249

if.end114:                                        ; preds = %if.end100, %if.then105
  %diff118 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 3, !dbg !250
  store float %min.1.lcssa, float* %diff118, align 4, !dbg !250, !tbaa !221
  %arrayidx121 = getelementptr inbounds float* %5, i64 %18, !dbg !250
  store float %min.1.lcssa, float* %arrayidx121, align 4, !dbg !250, !tbaa !221
  %rblen = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 5, !dbg !251
  store float %min.1.lcssa, float* %rblen, align 4, !dbg !251, !tbaa !221
  %lblen = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 4, !dbg !251
  store float %min.1.lcssa, float* %lblen, align 4, !dbg !251, !tbaa !221
  %24 = load i32* %arrayidx79, align 4, !dbg !252, !tbaa !228
  %cmp130 = icmp slt i32 %24, %N, !dbg !252
  br i1 %cmp130, label %if.end143, label %if.then132, !dbg !252

if.then132:                                       ; preds = %if.end114
  %sub135 = sub nsw i32 %24, %N, !dbg !252
  %idxprom136 = sext i32 %sub135 to i64, !dbg !252
  %arrayidx137 = getelementptr inbounds float* %5, i64 %idxprom136, !dbg !252
  %25 = load float* %arrayidx137, align 4, !dbg !252, !tbaa !221
  %sub142 = fsub float %min.1.lcssa, %25, !dbg !252
  store float %sub142, float* %lblen, align 4, !dbg !252, !tbaa !221
  br label %if.end143, !dbg !252

if.end143:                                        ; preds = %if.end114, %if.then132
  %26 = load i32* %arrayidx84, align 4, !dbg !253, !tbaa !228
  %cmp146 = icmp slt i32 %26, %N, !dbg !253
  br i1 %cmp146, label %if.end159, label %if.then148, !dbg !253

if.then148:                                       ; preds = %if.end143
  %sub151 = sub nsw i32 %26, %N, !dbg !253
  %idxprom152 = sext i32 %sub151 to i64, !dbg !253
  %arrayidx153 = getelementptr inbounds float* %5, i64 %idxprom152, !dbg !253
  %27 = load float* %arrayidx153, align 4, !dbg !253, !tbaa !221
  %sub158 = fsub float %min.1.lcssa, %27, !dbg !253
  store float %sub158, float* %rblen, align 4, !dbg !253, !tbaa !221
  br label %if.end159, !dbg !253

if.end159:                                        ; preds = %if.end143, %if.then148
  br i1 %cmp130, label %if.then164, label %if.else, !dbg !254

if.then164:                                       ; preds = %if.end159
  %incnum = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 7, !dbg !255
  %28 = load i32* %incnum, align 4, !dbg !255, !tbaa !228
  %inc168 = add nsw i32 %28, 1, !dbg !255
  store i32 %inc168, i32* %incnum, align 4, !dbg !255, !tbaa !228
  %29 = load i32* %arrayidx79, align 4, !dbg !257, !tbaa !228
  %idxprom171 = sext i32 %29 to i64, !dbg !257
  %is_in = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 6, !dbg !257
  %30 = load i8** %is_in, align 8, !dbg !257, !tbaa !215
  %arrayidx175 = getelementptr inbounds i8* %30, i64 %idxprom171, !dbg !257
  store i8 1, i8* %arrayidx175, align 1, !dbg !257, !tbaa !216
  br label %if.end211, !dbg !258

if.else:                                          ; preds = %if.end159
  %sub178 = sub nsw i32 %24, %N, !dbg !259
  %idxprom179 = sext i32 %sub178 to i64, !dbg !259
  %incnum181 = getelementptr inbounds %struct.phylo_s* %call45, i64 %idxprom179, i32 7, !dbg !259
  %31 = load i32* %incnum181, align 4, !dbg !259, !tbaa !228
  %incnum185 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 7, !dbg !259
  %32 = load i32* %incnum185, align 4, !dbg !259, !tbaa !228
  %add186 = add nsw i32 %32, %31, !dbg !259
  store i32 %add186, i32* %incnum185, align 4, !dbg !259, !tbaa !228
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !44), !dbg !261
  br i1 %cmp813, label %for.body190.lr.ph, label %if.end211, !dbg !261

for.body190.lr.ph:                                ; preds = %if.else
  %is_in204 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 6, !dbg !263
  br label %for.body190, !dbg !261

for.body190:                                      ; preds = %for.body190, %for.body190.lr.ph
  %indvars.iv827 = phi i64 [ 0, %for.body190.lr.ph ], [ %indvars.iv.next828, %for.body190 ]
  %33 = load i32* %arrayidx79, align 4, !dbg !263, !tbaa !228
  %sub194 = sub nsw i32 %33, %N, !dbg !263
  %idxprom195 = sext i32 %sub194 to i64, !dbg !263
  %is_in197 = getelementptr inbounds %struct.phylo_s* %call45, i64 %idxprom195, i32 6, !dbg !263
  %34 = load i8** %is_in197, align 8, !dbg !263, !tbaa !215
  %arrayidx198 = getelementptr inbounds i8* %34, i64 %indvars.iv827, !dbg !263
  %35 = load i8* %arrayidx198, align 1, !dbg !263, !tbaa !216
  %36 = load i8** %is_in204, align 8, !dbg !263, !tbaa !215
  %arrayidx205 = getelementptr inbounds i8* %36, i64 %indvars.iv827, !dbg !263
  %37 = load i8* %arrayidx205, align 1, !dbg !263, !tbaa !216
  %or773 = or i8 %37, %35, !dbg !263
  store i8 %or773, i8* %arrayidx205, align 1, !dbg !263, !tbaa !216
  %indvars.iv.next828 = add i64 %indvars.iv827, 1, !dbg !261
  %lftr.wideiv829 = trunc i64 %indvars.iv.next828 to i32, !dbg !261
  %exitcond830 = icmp eq i32 %lftr.wideiv829, %N, !dbg !261
  br i1 %exitcond830, label %if.end211, label %for.body190, !dbg !261

if.end211:                                        ; preds = %if.else, %for.body190, %if.then164
  %38 = load i32* %arrayidx84, align 4, !dbg !264, !tbaa !228
  %cmp214 = icmp slt i32 %38, %N, !dbg !264
  br i1 %cmp214, label %if.then216, label %if.else230, !dbg !264

if.then216:                                       ; preds = %if.end211
  %incnum220 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 7, !dbg !265
  %39 = load i32* %incnum220, align 4, !dbg !265, !tbaa !228
  %inc221 = add nsw i32 %39, 1, !dbg !265
  store i32 %inc221, i32* %incnum220, align 4, !dbg !265, !tbaa !228
  %40 = load i32* %arrayidx84, align 4, !dbg !267, !tbaa !228
  %idxprom224 = sext i32 %40 to i64, !dbg !267
  %is_in228 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 6, !dbg !267
  %41 = load i8** %is_in228, align 8, !dbg !267, !tbaa !215
  %arrayidx229 = getelementptr inbounds i8* %41, i64 %idxprom224, !dbg !267
  store i8 1, i8* %arrayidx229, align 1, !dbg !267, !tbaa !216
  br label %if.end267, !dbg !268

if.else230:                                       ; preds = %if.end211
  %sub233 = sub nsw i32 %38, %N, !dbg !269
  %idxprom234 = sext i32 %sub233 to i64, !dbg !269
  %incnum236 = getelementptr inbounds %struct.phylo_s* %call45, i64 %idxprom234, i32 7, !dbg !269
  %42 = load i32* %incnum236, align 4, !dbg !269, !tbaa !228
  %incnum240 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 7, !dbg !269
  %43 = load i32* %incnum240, align 4, !dbg !269, !tbaa !228
  %add241 = add nsw i32 %43, %42, !dbg !269
  store i32 %add241, i32* %incnum240, align 4, !dbg !269, !tbaa !228
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !44), !dbg !271
  br i1 %cmp813, label %for.body245.lr.ph, label %if.end267, !dbg !271

for.body245.lr.ph:                                ; preds = %if.else230
  %is_in259 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 6, !dbg !273
  br label %for.body245, !dbg !271

for.body245:                                      ; preds = %for.body245, %for.body245.lr.ph
  %indvars.iv831 = phi i64 [ 0, %for.body245.lr.ph ], [ %indvars.iv.next832, %for.body245 ]
  %44 = load i32* %arrayidx84, align 4, !dbg !273, !tbaa !228
  %sub249 = sub nsw i32 %44, %N, !dbg !273
  %idxprom250 = sext i32 %sub249 to i64, !dbg !273
  %is_in252 = getelementptr inbounds %struct.phylo_s* %call45, i64 %idxprom250, i32 6, !dbg !273
  %45 = load i8** %is_in252, align 8, !dbg !273, !tbaa !215
  %arrayidx253 = getelementptr inbounds i8* %45, i64 %indvars.iv831, !dbg !273
  %46 = load i8* %arrayidx253, align 1, !dbg !273, !tbaa !216
  %47 = load i8** %is_in259, align 8, !dbg !273, !tbaa !215
  %arrayidx260 = getelementptr inbounds i8* %47, i64 %indvars.iv831, !dbg !273
  %48 = load i8* %arrayidx260, align 1, !dbg !273, !tbaa !216
  %or262772 = or i8 %48, %46, !dbg !273
  store i8 %or262772, i8* %arrayidx260, align 1, !dbg !273, !tbaa !216
  %indvars.iv.next832 = add i64 %indvars.iv831, 1, !dbg !271
  %lftr.wideiv833 = trunc i64 %indvars.iv.next832 to i32, !dbg !271
  %exitcond834 = icmp eq i32 %lftr.wideiv833, %N, !dbg !271
  br i1 %exitcond834, label %if.end267, label %for.body245, !dbg !271

if.end267:                                        ; preds = %if.else230, %for.body245, %if.then216
  %indvars.iv.next860 = add i64 %indvars.iv859, -1, !dbg !230
  %indvars.iv.next856 = add i32 %indvars.iv855, -1, !dbg !230
  %49 = trunc i64 %indvars.iv.next860 to i32, !dbg !274
  %cmp269 = icmp eq i32 %i.4.lcssa, %49, !dbg !274
  %50 = trunc i64 %18 to i32, !dbg !274
  %cmp272 = icmp eq i32 %j.3.lcssa, %50, !dbg !274
  %or.cond = or i1 %cmp269, %cmp272, !dbg !274
  tail call void @llvm.dbg.value(metadata !{i32 %j.3.lcssa}, i64 0, metadata !52), !dbg !275
  tail call void @llvm.dbg.value(metadata !{i32 %i.4.lcssa}, i64 0, metadata !43), !dbg !275
  tail call void @llvm.dbg.value(metadata !{i32 %j.3.lcssa}, i64 0, metadata !42), !dbg !275
  %j.5 = select i1 %or.cond, i32 %i.4.lcssa, i32 %j.3.lcssa, !dbg !274
  %i.6 = select i1 %or.cond, i32 %j.3.lcssa, i32 %i.4.lcssa, !dbg !274
  %cmp277 = icmp eq i32 %i.6, %50, !dbg !277
  br i1 %cmp277, label %if.end325, label %for.body293.lr.ph, !dbg !277

for.body293.lr.ph:                                ; preds = %if.end267
  %arrayidx282 = getelementptr inbounds float** %0, i64 %18, !dbg !278
  %51 = load float** %arrayidx282, align 8, !dbg !278, !tbaa !215
  tail call void @llvm.dbg.value(metadata !{float* %51}, i64 0, metadata !49), !dbg !278
  %idxprom283 = sext i32 %i.6 to i64, !dbg !278
  %arrayidx284 = getelementptr inbounds float** %0, i64 %idxprom283, !dbg !278
  %52 = load float** %arrayidx284, align 8, !dbg !278, !tbaa !215
  store float* %52, float** %arrayidx282, align 8, !dbg !278, !tbaa !215
  store float* %51, float** %arrayidx284, align 8, !dbg !278, !tbaa !215
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !46), !dbg !280
  br label %for.body293, !dbg !280

for.body293:                                      ; preds = %for.body293, %for.body293.lr.ph
  %indvars.iv835 = phi i64 [ 0, %for.body293.lr.ph ], [ %indvars.iv.next836, %for.body293 ]
  %arrayidx297 = getelementptr inbounds float** %0, i64 %indvars.iv835, !dbg !282
  %53 = load float** %arrayidx297, align 8, !dbg !282, !tbaa !215
  %arrayidx298 = getelementptr inbounds float* %53, i64 %18, !dbg !282
  %54 = load float* %arrayidx298, align 4, !dbg !282, !tbaa !221
  tail call void @llvm.dbg.value(metadata !{float %54}, i64 0, metadata !50), !dbg !282
  %arrayidx302 = getelementptr inbounds float* %53, i64 %idxprom283, !dbg !284
  %55 = load float* %arrayidx302, align 4, !dbg !284, !tbaa !221
  store float %55, float* %arrayidx298, align 4, !dbg !284, !tbaa !221
  store float %54, float* %arrayidx302, align 4, !dbg !285, !tbaa !221
  %indvars.iv.next836 = add i64 %indvars.iv835, 1, !dbg !280
  %lftr.wideiv839 = trunc i64 %indvars.iv.next836 to i32, !dbg !280
  %exitcond840 = icmp eq i32 %lftr.wideiv839, %indvars.iv855, !dbg !280
  br i1 %exitcond840, label %for.end314, label %for.body293, !dbg !280

for.end314:                                       ; preds = %for.body293
  %arrayidx317 = getelementptr inbounds i32* %4, i64 %18, !dbg !286
  %56 = load i32* %arrayidx317, align 4, !dbg !286, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !52), !dbg !286
  %arrayidx319 = getelementptr inbounds i32* %4, i64 %idxprom283, !dbg !286
  %57 = load i32* %arrayidx319, align 4, !dbg !286, !tbaa !228
  store i32 %57, i32* %arrayidx317, align 4, !dbg !286, !tbaa !228
  store i32 %56, i32* %arrayidx319, align 4, !dbg !286, !tbaa !228
  br label %if.end325, !dbg !288

if.end325:                                        ; preds = %if.end267, %for.end314
  %cmp327 = icmp eq i32 %j.5, %49, !dbg !289
  br i1 %cmp327, label %for.body381.lr.ph, label %for.body343.lr.ph, !dbg !289

for.body343.lr.ph:                                ; preds = %if.end325
  %arrayidx332 = getelementptr inbounds float** %0, i64 %indvars.iv.next860, !dbg !290
  %58 = load float** %arrayidx332, align 8, !dbg !290, !tbaa !215
  tail call void @llvm.dbg.value(metadata !{float* %58}, i64 0, metadata !49), !dbg !290
  %idxprom333 = sext i32 %j.5 to i64, !dbg !290
  %arrayidx334 = getelementptr inbounds float** %0, i64 %idxprom333, !dbg !290
  %59 = load float** %arrayidx334, align 8, !dbg !290, !tbaa !215
  store float* %59, float** %arrayidx332, align 8, !dbg !290, !tbaa !215
  store float* %58, float** %arrayidx334, align 8, !dbg !290, !tbaa !215
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !46), !dbg !292
  br label %for.body343, !dbg !292

for.body343:                                      ; preds = %for.body343, %for.body343.lr.ph
  %indvars.iv841 = phi i64 [ 0, %for.body343.lr.ph ], [ %indvars.iv.next842, %for.body343 ]
  %arrayidx347 = getelementptr inbounds float** %0, i64 %indvars.iv841, !dbg !294
  %60 = load float** %arrayidx347, align 8, !dbg !294, !tbaa !215
  %arrayidx348 = getelementptr inbounds float* %60, i64 %indvars.iv.next860, !dbg !294
  %61 = load float* %arrayidx348, align 4, !dbg !294, !tbaa !221
  tail call void @llvm.dbg.value(metadata !{float %61}, i64 0, metadata !50), !dbg !294
  %arrayidx352 = getelementptr inbounds float* %60, i64 %idxprom333, !dbg !296
  %62 = load float* %arrayidx352, align 4, !dbg !296, !tbaa !221
  store float %62, float* %arrayidx348, align 4, !dbg !296, !tbaa !221
  store float %61, float* %arrayidx352, align 4, !dbg !297, !tbaa !221
  %indvars.iv.next842 = add i64 %indvars.iv841, 1, !dbg !292
  %lftr.wideiv845 = trunc i64 %indvars.iv.next842 to i32, !dbg !292
  %exitcond846 = icmp eq i32 %lftr.wideiv845, %indvars.iv855, !dbg !292
  br i1 %exitcond846, label %for.end364, label %for.body343, !dbg !292

for.end364:                                       ; preds = %for.body343
  %arrayidx367 = getelementptr inbounds i32* %4, i64 %indvars.iv.next860, !dbg !298
  %63 = load i32* %arrayidx367, align 4, !dbg !298, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %63}, i64 0, metadata !52), !dbg !298
  %arrayidx369 = getelementptr inbounds i32* %4, i64 %idxprom333, !dbg !298
  %64 = load i32* %arrayidx369, align 4, !dbg !298, !tbaa !228
  store i32 %64, i32* %arrayidx367, align 4, !dbg !298, !tbaa !228
  store i32 %63, i32* %arrayidx369, align 4, !dbg !298, !tbaa !228
  br label %for.body381.lr.ph, !dbg !300

for.body381.lr.ph:                                ; preds = %for.end364, %if.end325
  %arrayidx449 = getelementptr inbounds float** %0, i64 %18, !dbg !301
  %arrayidx453 = getelementptr inbounds float** %0, i64 %indvars.iv.next860, !dbg !301
  br label %for.body381, !dbg !305

for.body381:                                      ; preds = %for.inc463, %for.body381.lr.ph
  %indvars.iv847 = phi i64 [ 0, %for.body381.lr.ph ], [ %indvars.iv.next848, %for.inc463 ]
  switch i32 %mode, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb397
    i32 1, label %sw.bb420
  ], !dbg !306

sw.bb:                                            ; preds = %for.body381
  %65 = load float** %arrayidx449, align 8, !dbg !307, !tbaa !215
  %arrayidx385 = getelementptr inbounds float* %65, i64 %indvars.iv847, !dbg !307
  %66 = load float* %arrayidx385, align 4, !dbg !307, !tbaa !221
  %67 = load float** %arrayidx453, align 8, !dbg !307, !tbaa !215
  %arrayidx389 = getelementptr inbounds float* %67, i64 %indvars.iv847, !dbg !307
  %68 = load float* %arrayidx389, align 4, !dbg !307, !tbaa !221
  %add390 = fadd float %66, %68, !dbg !307
  %conv392 = fmul float %add390, 5.000000e-01, !dbg !307
  store float %conv392, float* %arrayidx385, align 4, !dbg !307, !tbaa !221
  br label %for.inc463, !dbg !307

sw.bb397:                                         ; preds = %for.body381
  %69 = load float** %arrayidx449, align 8, !dbg !308, !tbaa !215
  %arrayidx401 = getelementptr inbounds float* %69, i64 %indvars.iv847, !dbg !308
  %70 = load float* %arrayidx401, align 4, !dbg !308, !tbaa !221
  %71 = load float** %arrayidx453, align 8, !dbg !308, !tbaa !215
  %arrayidx405 = getelementptr inbounds float* %71, i64 %indvars.iv847, !dbg !308
  %72 = load float* %arrayidx405, align 4, !dbg !308, !tbaa !221
  %cmp406 = fcmp olt float %70, %72, !dbg !308
  %. = select i1 %cmp406, float %70, float %72, !dbg !308
  store float %., float* %arrayidx401, align 4, !dbg !308, !tbaa !221
  br label %for.inc463, !dbg !308

sw.bb420:                                         ; preds = %for.body381
  %73 = load float** %arrayidx449, align 8, !dbg !309, !tbaa !215
  %arrayidx424 = getelementptr inbounds float* %73, i64 %indvars.iv847, !dbg !309
  %74 = load float* %arrayidx424, align 4, !dbg !309, !tbaa !221
  %75 = load float** %arrayidx453, align 8, !dbg !309, !tbaa !215
  %arrayidx428 = getelementptr inbounds float* %75, i64 %indvars.iv847, !dbg !309
  %76 = load float* %arrayidx428, align 4, !dbg !309, !tbaa !221
  %cmp429 = fcmp ogt float %74, %76, !dbg !309
  %.774 = select i1 %cmp429, float %74, float %76, !dbg !309
  store float %.774, float* %arrayidx424, align 4, !dbg !309, !tbaa !221
  br label %for.inc463, !dbg !309

sw.default:                                       ; preds = %for.body381
  %77 = load float** %arrayidx449, align 8, !dbg !301, !tbaa !215
  %arrayidx450 = getelementptr inbounds float* %77, i64 %indvars.iv847, !dbg !301
  %78 = load float* %arrayidx450, align 4, !dbg !301, !tbaa !221
  %79 = load float** %arrayidx453, align 8, !dbg !301, !tbaa !215
  %arrayidx454 = getelementptr inbounds float* %79, i64 %indvars.iv847, !dbg !301
  %80 = load float* %arrayidx454, align 4, !dbg !301, !tbaa !221
  %add455 = fadd float %78, %80, !dbg !301
  %conv458 = fmul float %add455, 5.000000e-01, !dbg !301
  store float %conv458, float* %arrayidx450, align 4, !dbg !301, !tbaa !221
  br label %for.inc463, !dbg !301

for.inc463:                                       ; preds = %sw.bb, %sw.bb397, %sw.bb420, %sw.default
  %indvars.iv.next848 = add i64 %indvars.iv847, 1, !dbg !305
  %lftr.wideiv851 = trunc i64 %indvars.iv.next848 to i32, !dbg !305
  %exitcond852 = icmp eq i32 %lftr.wideiv851, %indvars.iv855, !dbg !305
  br i1 %exitcond852, label %for.body469.lr.ph, label %for.body381, !dbg !305

for.body469.lr.ph:                                ; preds = %for.inc463
  %arrayidx472 = getelementptr inbounds float** %0, i64 %18, !dbg !310
  %81 = load float** %arrayidx472, align 8, !dbg !310, !tbaa !215
  br label %for.body469, !dbg !234

for.body469:                                      ; preds = %for.body469, %for.body469.lr.ph
  %indvars.iv853 = phi i64 [ 0, %for.body469.lr.ph ], [ %indvars.iv.next854, %for.body469 ]
  %arrayidx473 = getelementptr inbounds float* %81, i64 %indvars.iv853, !dbg !310
  %82 = load float* %arrayidx473, align 4, !dbg !310, !tbaa !221
  %arrayidx476 = getelementptr inbounds float** %0, i64 %indvars.iv853, !dbg !310
  %83 = load float** %arrayidx476, align 8, !dbg !310, !tbaa !215
  %arrayidx477 = getelementptr inbounds float* %83, i64 %18, !dbg !310
  store float %82, float* %arrayidx477, align 4, !dbg !310, !tbaa !221
  %indvars.iv.next854 = add i64 %indvars.iv853, 1, !dbg !234
  %lftr.wideiv857 = trunc i64 %indvars.iv.next854 to i32, !dbg !234
  %exitcond858 = icmp eq i32 %lftr.wideiv857, %indvars.iv855, !dbg !234
  br i1 %exitcond858, label %for.end480, label %for.body469, !dbg !234

for.end480:                                       ; preds = %for.body469
  %84 = trunc i64 %indvars.iv859 to i32, !dbg !232
  %sub482 = add i32 %add481, %84, !dbg !232
  %arrayidx485 = getelementptr inbounds i32* %4, i64 %18, !dbg !232
  store i32 %sub482, i32* %arrayidx485, align 4, !dbg !232, !tbaa !228
  tail call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next856}, i64 0, metadata !45), !dbg !230
  %cmp49 = icmp sgt i32 %49, 1, !dbg !230
  br i1 %cmp49, label %for.body55.lr.ph, label %for.end487, !dbg !230

for.end487:                                       ; preds = %for.end480, %for.cond48.preheader
  %85 = bitcast i8* %call to i8**, !dbg !311
  tail call void @Free2DArray(i8** %85, i32 %N) #5, !dbg !311
  tail call void @free(i8* %call22) #5, !dbg !312
  tail call void @free(i8* %call25) #5, !dbg !313
  store %struct.phylo_s* %call45, %struct.phylo_s** %ret_tree, align 8, !dbg !314, !tbaa !215
  ret i32 1, !dbg !315
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize uwtable
define noalias %struct.phylo_s* @AllocPhylo(i32 %N) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !57), !dbg !316
  %sub = add nsw i32 %N, -1, !dbg !317
  %conv = sext i32 %sub to i64, !dbg !317
  %mul = mul i64 %conv, 40, !dbg !317
  %call = tail call noalias i8* @malloc(i64 %mul) #5, !dbg !317
  %0 = bitcast i8* %call to %struct.phylo_s*, !dbg !317
  tail call void @llvm.dbg.value(metadata !{%struct.phylo_s* %0}, i64 0, metadata !58), !dbg !317
  %cmp = icmp eq i8* %call, null, !dbg !317
  br i1 %cmp, label %return, label %for.cond.preheader, !dbg !317

for.cond.preheader:                               ; preds = %entry
  %cmp344 = icmp sgt i32 %sub, 0, !dbg !318
  br i1 %cmp344, label %for.body.lr.ph, label %return, !dbg !318

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv17 = sext i32 %N to i64, !dbg !320
  br label %for.body, !dbg !318

for.cond:                                         ; preds = %for.body
  %1 = trunc i64 %indvars.iv.next to i32, !dbg !318
  %cmp3 = icmp slt i32 %1, %sub, !dbg !318
  br i1 %cmp3, label %for.body, label %return, !dbg !318

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %diff = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 3, !dbg !322
  store float 0.000000e+00, float* %diff, align 4, !dbg !322, !tbaa !221
  %rblen = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 5, !dbg !323
  store float 0.000000e+00, float* %rblen, align 4, !dbg !323, !tbaa !221
  %lblen = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 4, !dbg !323
  store float 0.000000e+00, float* %lblen, align 4, !dbg !323, !tbaa !221
  %parent = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 0, !dbg !324
  store i32 -1, i32* %parent, align 4, !dbg !324, !tbaa !228
  %right = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 2, !dbg !324
  store i32 -1, i32* %right, align 4, !dbg !324, !tbaa !228
  %left = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 1, !dbg !324
  store i32 -1, i32* %left, align 4, !dbg !324, !tbaa !228
  %incnum = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 7, !dbg !325
  store i32 0, i32* %incnum, align 4, !dbg !325, !tbaa !228
  %call18 = tail call noalias i8* @calloc(i64 %conv17, i64 1) #5, !dbg !320
  %is_in = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 6, !dbg !320
  store i8* %call18, i8** %is_in, align 8, !dbg !320, !tbaa !215
  %cmp21 = icmp eq i8* %call18, null, !dbg !320
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !318
  br i1 %cmp21, label %return, label %for.cond, !dbg !320

return:                                           ; preds = %for.cond.preheader, %for.body, %for.cond, %entry
  %retval.0 = phi %struct.phylo_s* [ null, %entry ], [ %0, %for.cond.preheader ], [ null, %for.body ], [ %0, %for.cond ]
  ret %struct.phylo_s* %retval.0, !dbg !326
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind optsize uwtable
define void @FreePhylo(%struct.phylo_s* nocapture %tree, i32 %N) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.phylo_s* %tree}, i64 0, metadata !64), !dbg !327
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !65), !dbg !327
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !66), !dbg !328
  %sub = add i32 %N, -1, !dbg !328
  %cmp4 = icmp sgt i32 %sub, 0, !dbg !328
  br i1 %cmp4, label %for.body, label %for.end, !dbg !328

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %is_in = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 6, !dbg !330
  %0 = load i8** %is_in, align 8, !dbg !330, !tbaa !215
  tail call void @free(i8* %0) #5, !dbg !330
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !328
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !328
  %exitcond = icmp eq i32 %lftr.wideiv, %sub, !dbg !328
  br i1 %exitcond, label %for.end, label %for.body, !dbg !328

for.end:                                          ; preds = %for.body, %entry
  %1 = bitcast %struct.phylo_s* %tree to i8*, !dbg !331
  tail call void @free(i8* %1) #5, !dbg !331
  ret void, !dbg !332
}

; Function Attrs: nounwind optsize uwtable
define void @MakeDiffMx(i8** nocapture %aseqs, i32 %num, float*** nocapture %ret_dmx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %aseqs}, i64 0, metadata !73), !dbg !333
  tail call void @llvm.dbg.value(metadata !{i32 %num}, i64 0, metadata !74), !dbg !333
  tail call void @llvm.dbg.value(metadata !{float*** %ret_dmx}, i64 0, metadata !75), !dbg !333
  %call = tail call float** @FMX2Alloc(i32 %num, i32 %num) #5, !dbg !334
  tail call void @llvm.dbg.value(metadata !{float** %call}, i64 0, metadata !76), !dbg !334
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !77), !dbg !335
  %cmp35 = icmp sgt i32 %num, 0, !dbg !335
  br i1 %cmp35, label %for.body3.lr.ph, label %for.end18, !dbg !335

for.body3.lr.ph:                                  ; preds = %for.inc16, %entry
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.inc16 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %aseqs, i64 %indvars.iv39, !dbg !337
  %arrayidx14 = getelementptr inbounds float** %call, i64 %indvars.iv39, !dbg !337
  br label %for.body3, !dbg !339

for.body3:                                        ; preds = %for.body3, %for.body3.lr.ph
  %indvars.iv37 = phi i64 [ %indvars.iv39, %for.body3.lr.ph ], [ %indvars.iv.next38, %for.body3 ], !dbg !335
  %0 = load i8** %arrayidx, align 8, !dbg !337, !tbaa !215
  %arrayidx5 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv37, !dbg !337
  %1 = load i8** %arrayidx5, align 8, !dbg !337, !tbaa !215
  %call6 = tail call float @PairwiseIdentity(i8* %0, i8* %1) #5, !dbg !337
  %conv7 = fsub float 1.000000e+00, %call6, !dbg !337
  %arrayidx10 = getelementptr inbounds float** %call, i64 %indvars.iv37, !dbg !337
  %2 = load float** %arrayidx10, align 8, !dbg !337, !tbaa !215
  %arrayidx11 = getelementptr inbounds float* %2, i64 %indvars.iv39, !dbg !337
  store float %conv7, float* %arrayidx11, align 4, !dbg !337, !tbaa !221
  %3 = load float** %arrayidx14, align 8, !dbg !337, !tbaa !215
  %arrayidx15 = getelementptr inbounds float* %3, i64 %indvars.iv37, !dbg !337
  store float %conv7, float* %arrayidx15, align 4, !dbg !337, !tbaa !221
  %indvars.iv.next38 = add i64 %indvars.iv37, 1, !dbg !339
  %lftr.wideiv = trunc i64 %indvars.iv.next38 to i32, !dbg !339
  %exitcond = icmp eq i32 %lftr.wideiv, %num, !dbg !339
  br i1 %exitcond, label %for.inc16, label %for.body3, !dbg !339

for.inc16:                                        ; preds = %for.body3
  %indvars.iv.next40 = add i64 %indvars.iv39, 1, !dbg !335
  %lftr.wideiv41 = trunc i64 %indvars.iv.next40 to i32, !dbg !335
  %exitcond42 = icmp eq i32 %lftr.wideiv41, %num, !dbg !335
  br i1 %exitcond42, label %for.end18, label %for.body3.lr.ph, !dbg !335

for.end18:                                        ; preds = %for.inc16, %entry
  store float** %call, float*** %ret_dmx, align 8, !dbg !340, !tbaa !215
  ret void, !dbg !341
}

; Function Attrs: optsize
declare float** @FMX2Alloc(i32, i32) #2

; Function Attrs: optsize
declare float @PairwiseIdentity(i8*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @MakeIdentityMx(i8** nocapture %aseqs, i32 %num, float*** nocapture %ret_imx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %aseqs}, i64 0, metadata !81), !dbg !342
  tail call void @llvm.dbg.value(metadata !{i32 %num}, i64 0, metadata !82), !dbg !342
  tail call void @llvm.dbg.value(metadata !{float*** %ret_imx}, i64 0, metadata !83), !dbg !342
  %call = tail call float** @FMX2Alloc(i32 %num, i32 %num) #5, !dbg !343
  tail call void @llvm.dbg.value(metadata !{float** %call}, i64 0, metadata !84), !dbg !343
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !85), !dbg !344
  %cmp34 = icmp sgt i32 %num, 0, !dbg !344
  br i1 %cmp34, label %for.body3.lr.ph, label %for.end17, !dbg !344

for.body3.lr.ph:                                  ; preds = %for.inc15, %entry
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc15 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %aseqs, i64 %indvars.iv38, !dbg !346
  %arrayidx13 = getelementptr inbounds float** %call, i64 %indvars.iv38, !dbg !346
  br label %for.body3, !dbg !348

for.body3:                                        ; preds = %for.body3, %for.body3.lr.ph
  %indvars.iv36 = phi i64 [ %indvars.iv38, %for.body3.lr.ph ], [ %indvars.iv.next37, %for.body3 ], !dbg !344
  %0 = load i8** %arrayidx, align 8, !dbg !346, !tbaa !215
  %arrayidx5 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv36, !dbg !346
  %1 = load i8** %arrayidx5, align 8, !dbg !346, !tbaa !215
  %call6 = tail call float @PairwiseIdentity(i8* %0, i8* %1) #5, !dbg !346
  %arrayidx9 = getelementptr inbounds float** %call, i64 %indvars.iv36, !dbg !346
  %2 = load float** %arrayidx9, align 8, !dbg !346, !tbaa !215
  %arrayidx10 = getelementptr inbounds float* %2, i64 %indvars.iv38, !dbg !346
  store float %call6, float* %arrayidx10, align 4, !dbg !346, !tbaa !221
  %3 = load float** %arrayidx13, align 8, !dbg !346, !tbaa !215
  %arrayidx14 = getelementptr inbounds float* %3, i64 %indvars.iv36, !dbg !346
  store float %call6, float* %arrayidx14, align 4, !dbg !346, !tbaa !221
  %indvars.iv.next37 = add i64 %indvars.iv36, 1, !dbg !348
  %lftr.wideiv = trunc i64 %indvars.iv.next37 to i32, !dbg !348
  %exitcond = icmp eq i32 %lftr.wideiv, %num, !dbg !348
  br i1 %exitcond, label %for.inc15, label %for.body3, !dbg !348

for.inc15:                                        ; preds = %for.body3
  %indvars.iv.next39 = add i64 %indvars.iv38, 1, !dbg !344
  %lftr.wideiv40 = trunc i64 %indvars.iv.next39 to i32, !dbg !344
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %num, !dbg !344
  br i1 %exitcond41, label %for.end17, label %for.body3.lr.ph, !dbg !344

for.end17:                                        ; preds = %for.inc15, %entry
  store float** %call, float*** %ret_imx, align 8, !dbg !349, !tbaa !215
  ret void, !dbg !350
}

; Function Attrs: nounwind optsize uwtable
define void @PrintNewHampshireTree(%struct._IO_FILE* nocapture %fp, %struct.aliinfo_s* nocapture %ainfo, %struct.phylo_s* nocapture %tree, i32 %N) #0 {
entry:
  %code = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !189), !dbg !351
  call void @llvm.dbg.value(metadata !{%struct.aliinfo_s* %ainfo}, i64 0, metadata !190), !dbg !351
  call void @llvm.dbg.value(metadata !{%struct.phylo_s* %tree}, i64 0, metadata !191), !dbg !351
  call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !192), !dbg !351
  call void @llvm.dbg.declare(metadata !{i32* %code}, metadata !199), !dbg !352
  %mul = shl nsw i32 %N, 1, !dbg !353
  %sub = add nsw i32 %mul, -1, !dbg !353
  %conv = sext i32 %sub to i64, !dbg !353
  %mul1 = shl nsw i64 %conv, 2, !dbg !353
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 464, i64 %mul1) #5, !dbg !353
  %0 = bitcast i8* %call to float*, !dbg !353
  call void @llvm.dbg.value(metadata !{float* %0}, i64 0, metadata !200), !dbg !353
  %call2 = call %struct.intstack_s* @InitIntStack() #5, !dbg !354
  call void @llvm.dbg.value(metadata !{%struct.intstack_s* %call2}, i64 0, metadata !193), !dbg !354
  call void @PushIntStack(%struct.intstack_s* %call2, i32 %N) #5, !dbg !355
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !201), !dbg !356
  %call395 = call i32 @PopIntStack(%struct.intstack_s* %call2, i32* %code) #5, !dbg !357
  %tobool96 = icmp eq i32 %call395, 0, !dbg !357
  br i1 %tobool96, label %while.end, label %while.body.lr.ph, !dbg !357

while.body.lr.ph:                                 ; preds = %entry
  %sqinfo = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6, !dbg !358
  br label %while.body, !dbg !357

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %docomma.097 = phi i32 [ 0, %while.body.lr.ph ], [ %docomma.0.be, %while.cond.backedge ]
  call void @llvm.dbg.value(metadata !{i32* %code}, i64 0, metadata !199), !dbg !361
  %1 = load i32* %code, align 4, !dbg !361, !tbaa !228
  %cmp = icmp slt i32 %1, %N, !dbg !361
  br i1 %cmp, label %if.then, label %if.else, !dbg !361

if.then:                                          ; preds = %while.body
  %tobool5 = icmp eq i32 %docomma.097, 0, !dbg !362
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !362

if.then6:                                         ; preds = %if.then
  %fputc94 = call i32 @fputc(i32 44, %struct._IO_FILE* %fp), !dbg !362
  call void @llvm.dbg.value(metadata !{i32* %code}, i64 0, metadata !199), !dbg !358
  %.pre = load i32* %code, align 4, !dbg !358, !tbaa !228
  br label %if.end, !dbg !362

if.end:                                           ; preds = %if.then, %if.then6
  %2 = phi i32 [ %1, %if.then ], [ %.pre, %if.then6 ]
  call void @llvm.dbg.value(metadata !{i32* %code}, i64 0, metadata !199), !dbg !358
  %idxprom = sext i32 %2 to i64, !dbg !358
  %3 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !358, !tbaa !215
  %arraydecay = getelementptr inbounds %struct.seqinfo_s* %3, i64 %idxprom, i32 1, i64 0, !dbg !358
  %arrayidx9 = getelementptr inbounds float* %0, i64 %idxprom, !dbg !358
  %4 = load float* %arrayidx9, align 4, !dbg !358, !tbaa !221
  %conv10 = fpext float %4 to double, !dbg !358
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* %arraydecay, double %conv10) #5, !dbg !358
  call void @llvm.dbg.value(metadata !363, i64 0, metadata !201), !dbg !364
  br label %while.cond.backedge, !dbg !365

if.else:                                          ; preds = %while.body
  %cmp13 = icmp slt i32 %1, %mul, !dbg !366
  br i1 %cmp13, label %if.then15, label %if.else45, !dbg !366

if.then15:                                        ; preds = %if.else
  %tobool16 = icmp eq i32 %docomma.097, 0, !dbg !367
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !367

if.then17:                                        ; preds = %if.then15
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp), !dbg !367
  br label %if.end19, !dbg !367

if.end19:                                         ; preds = %if.then15, %if.then17
  %fputc = call i32 @fputc(i32 40, %struct._IO_FILE* %fp), !dbg !369
  call void @llvm.dbg.value(metadata !{i32* %code}, i64 0, metadata !199), !dbg !370
  %6 = load i32* %code, align 4, !dbg !370, !tbaa !228
  %add = add nsw i32 %6, %N, !dbg !370
  call void @PushIntStack(%struct.intstack_s* %call2, i32 %add) #5, !dbg !370
  call void @llvm.dbg.value(metadata !{i32* %code}, i64 0, metadata !199), !dbg !371
  %7 = load i32* %code, align 4, !dbg !371, !tbaa !228
  %sub21 = sub nsw i32 %7, %N, !dbg !371
  %idxprom22 = sext i32 %sub21 to i64, !dbg !371
  %right = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom22, i32 2, !dbg !371
  %8 = load i32* %right, align 4, !dbg !371, !tbaa !228
  call void @PushIntStack(%struct.intstack_s* %call2, i32 %8) #5, !dbg !371
  call void @llvm.dbg.value(metadata !{i32* %code}, i64 0, metadata !199), !dbg !372
  %9 = load i32* %code, align 4, !dbg !372, !tbaa !228
  %sub24 = sub nsw i32 %9, %N, !dbg !372
  %idxprom25 = sext i32 %sub24 to i64, !dbg !372
  %left = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom25, i32 1, !dbg !372
  %10 = load i32* %left, align 4, !dbg !372, !tbaa !228
  call void @PushIntStack(%struct.intstack_s* %call2, i32 %10) #5, !dbg !372
  call void @llvm.dbg.value(metadata !{i32* %code}, i64 0, metadata !199), !dbg !373
  %11 = load i32* %code, align 4, !dbg !373, !tbaa !228
  %sub27 = sub nsw i32 %11, %N, !dbg !373
  %idxprom28 = sext i32 %sub27 to i64, !dbg !373
  %rblen = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom28, i32 5, !dbg !373
  %12 = load float* %rblen, align 4, !dbg !373, !tbaa !221
  %right33 = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom28, i32 2, !dbg !373
  %13 = load i32* %right33, align 4, !dbg !373, !tbaa !228
  %idxprom34 = sext i32 %13 to i64, !dbg !373
  %arrayidx35 = getelementptr inbounds float* %0, i64 %idxprom34, !dbg !373
  store float %12, float* %arrayidx35, align 4, !dbg !373, !tbaa !221
  call void @llvm.dbg.value(metadata !{i32* %code}, i64 0, metadata !199), !dbg !374
  %lblen = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom28, i32 4, !dbg !374
  %14 = load float* %lblen, align 4, !dbg !374, !tbaa !221
  %left42 = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom28, i32 1, !dbg !374
  %15 = load i32* %left42, align 4, !dbg !374, !tbaa !228
  %idxprom43 = sext i32 %15 to i64, !dbg !374
  %arrayidx44 = getelementptr inbounds float* %0, i64 %idxprom43, !dbg !374
  store float %14, float* %arrayidx44, align 4, !dbg !374, !tbaa !221
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !201), !dbg !375
  br label %while.cond.backedge, !dbg !376

while.cond.backedge:                              ; preds = %if.end19, %if.end, %if.else51, %if.then49
  %docomma.0.be = phi i32 [ 1, %if.end ], [ 0, %if.end19 ], [ 1, %if.else51 ], [ 1, %if.then49 ]
  %call3 = call i32 @PopIntStack(%struct.intstack_s* %call2, i32* %code) #5, !dbg !357
  %tobool = icmp eq i32 %call3, 0, !dbg !357
  br i1 %tobool, label %while.end, label %while.body, !dbg !357

if.else45:                                        ; preds = %if.else
  %cmp47 = icmp eq i32 %1, %mul, !dbg !377
  br i1 %cmp47, label %if.then49, label %if.else51, !dbg !377

if.then49:                                        ; preds = %if.else45
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp), !dbg !377
  br label %while.cond.backedge, !dbg !377

if.else51:                                        ; preds = %if.else45
  %sub52 = sub nsw i32 %1, %N, !dbg !379
  %idxprom53 = sext i32 %sub52 to i64, !dbg !379
  %arrayidx54 = getelementptr inbounds float* %0, i64 %idxprom53, !dbg !379
  %17 = load float* %arrayidx54, align 4, !dbg !379, !tbaa !221
  %conv55 = fpext float %17 to double, !dbg !379
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), double %conv55) #5, !dbg !379
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %entry
  %call60 = call i32 @FreeIntStack(%struct.intstack_s* %call2) #5, !dbg !380
  call void @free(i8* %call) #5, !dbg !381
  ret void, !dbg !382
}

; Function Attrs: optsize
declare %struct.intstack_s* @InitIntStack() #2

; Function Attrs: optsize
declare void @PushIntStack(%struct.intstack_s*, i32) #2

; Function Attrs: optsize
declare i32 @PopIntStack(%struct.intstack_s*, i32*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare i32 @FreeIntStack(%struct.intstack_s*) #2

; Function Attrs: nounwind optsize uwtable
define void @PrintPhylo(%struct._IO_FILE* nocapture %fp, %struct.aliinfo_s* nocapture %ainfo, %struct.phylo_s* nocapture %tree, i32 %N) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !204), !dbg !383
  tail call void @llvm.dbg.value(metadata !{%struct.aliinfo_s* %ainfo}, i64 0, metadata !205), !dbg !383
  tail call void @llvm.dbg.value(metadata !{%struct.phylo_s* %tree}, i64 0, metadata !206), !dbg !383
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !207), !dbg !383
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !208), !dbg !384
  %sub = add i32 %N, -1, !dbg !384
  %cmp119 = icmp sgt i32 %sub, 0, !dbg !384
  br i1 %cmp119, label %for.body.lr.ph, label %for.end, !dbg !384

for.body.lr.ph:                                   ; preds = %entry
  %sqinfo = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6, !dbg !386
  br label %for.body, !dbg !384

for.body:                                         ; preds = %cond.end62, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end62 ]
  %idx.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end62 ]
  %add = add nsw i32 %idx.0120, %N, !dbg !388
  %0 = trunc i64 %indvars.iv to i32, !dbg !388
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str8, i64 0, i64 0), i32 %0, i32 %add) #5, !dbg !388
  %parent = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 0, !dbg !389
  %1 = load i32* %parent, align 4, !dbg !389, !tbaa !228
  %sub1 = sub nsw i32 %1, %N, !dbg !389
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0), i32 %sub1, i32 %1) #5, !dbg !389
  %left = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 1, !dbg !386
  %2 = load i32* %left, align 4, !dbg !386, !tbaa !228
  %cmp8 = icmp slt i32 %2, %N, !dbg !386
  %sub12 = select i1 %cmp8, i32 %N, i32 0, !dbg !386
  %sub12. = sub nsw i32 %2, %sub12, !dbg !386
  br i1 %cmp8, label %cond.true20, label %cond.end27, !dbg !386

cond.true20:                                      ; preds = %for.body
  %idxprom24 = sext i32 %2 to i64, !dbg !386
  %3 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !386, !tbaa !215
  %arraydecay = getelementptr inbounds %struct.seqinfo_s* %3, i64 %idxprom24, i32 1, i64 0, !dbg !386
  br label %cond.end27, !dbg !386

cond.end27:                                       ; preds = %for.body, %cond.true20
  %cond28 = phi i8* [ %arraydecay, %cond.true20 ], [ getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), %for.body ], !dbg !386
  %lblen = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 4, !dbg !386
  %4 = load float* %lblen, align 4, !dbg !386, !tbaa !221
  %conv = fpext float %4 to double, !dbg !386
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str10, i64 0, i64 0), i32 %sub12., i8* %cond28, double %conv) #5, !dbg !386
  %right = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 2, !dbg !390
  %5 = load i32* %right, align 4, !dbg !390, !tbaa !228
  %cmp34 = icmp slt i32 %5, %N, !dbg !390
  %sub40 = select i1 %cmp34, i32 %N, i32 0, !dbg !390
  %sub40. = sub nsw i32 %5, %sub40, !dbg !390
  br i1 %cmp34, label %cond.true52, label %cond.end62, !dbg !390

cond.true52:                                      ; preds = %cond.end27
  %idxprom56 = sext i32 %5 to i64, !dbg !390
  %6 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !390, !tbaa !215
  %arraydecay60 = getelementptr inbounds %struct.seqinfo_s* %6, i64 %idxprom56, i32 1, i64 0, !dbg !390
  br label %cond.end62, !dbg !390

cond.end62:                                       ; preds = %cond.end27, %cond.true52
  %cond63 = phi i8* [ %arraydecay60, %cond.true52 ], [ getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), %cond.end27 ], !dbg !390
  %rblen = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 5, !dbg !390
  %7 = load float* %rblen, align 4, !dbg !390, !tbaa !221
  %conv66 = fpext float %7 to double, !dbg !390
  %call67 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str12, i64 0, i64 0), i32 %sub40., i8* %cond63, double %conv66) #5, !dbg !390
  %diff = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 3, !dbg !391
  %8 = load float* %diff, align 4, !dbg !391, !tbaa !221
  %conv70 = fpext float %8 to double, !dbg !391
  %call71 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), double %conv70) #5, !dbg !391
  %incnum = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 7, !dbg !392
  %9 = load i32* %incnum, align 4, !dbg !392, !tbaa !228
  %call74 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), i32 %9) #5, !dbg !392
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !384
  %inc = add nsw i32 %idx.0120, 1, !dbg !384
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !208), !dbg !384
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !384
  %exitcond = icmp eq i32 %lftr.wideiv, %sub, !dbg !384
  br i1 %exitcond, label %for.end, label %for.body, !dbg !384

for.end:                                          ; preds = %cond.end62, %entry
  ret void, !dbg !393
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !9, metadata !10, metadata !9, metadata !9, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"clust_strategy", i32 273, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [clust_strategy] [line 273, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/squid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"CLUSTER_MEAN", i64 0} ; [ DW_TAG_enumerator ] [CLUSTER_MEAN :: 0]
!7 = metadata !{i32 786472, metadata !"CLUSTER_MAX", i64 1} ; [ DW_TAG_enumerator ] [CLUSTER_MAX :: 1]
!8 = metadata !{i32 786472, metadata !"CLUSTER_MIN", i64 2} ; [ DW_TAG_enumerator ] [CLUSTER_MIN :: 2]
!9 = metadata !{i32 0}
!10 = metadata !{metadata !11, metadata !53, metadata !60, metadata !67, metadata !79, metadata !87, metadata !202}
!11 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"Cluster", metadata !"Cluster", metadata !"", i32 148, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float**, i32, i32, %struct.phylo_s**)* @Cluster, null, null, metadata !33, i32 149} ; [ DW_TAG_subprogram ] [line 148] [def] [scope 149] [Cluster]
!12 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!13 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15, metadata !16, metadata !15, metadata !3, metadata !19}
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!18 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from phylo_s]
!21 = metadata !{i32 786451, metadata !4, null, metadata !"phylo_s", i32 258, i64 320, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null} ; [ DW_TAG_structure_type ] [phylo_s] [line 258, size 320, align 64, offset 0] [from ]
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !32}
!23 = metadata !{i32 786445, metadata !4, metadata !21, metadata !"parent", i32 259, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [parent] [line 259, size 32, align 32, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !4, metadata !21, metadata !"left", i32 260, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [left] [line 260, size 32, align 32, offset 32] [from int]
!25 = metadata !{i32 786445, metadata !4, metadata !21, metadata !"right", i32 261, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [right] [line 261, size 32, align 32, offset 64] [from int]
!26 = metadata !{i32 786445, metadata !4, metadata !21, metadata !"diff", i32 262, i64 32, i64 32, i64 96, i32 0, metadata !18} ; [ DW_TAG_member ] [diff] [line 262, size 32, align 32, offset 96] [from float]
!27 = metadata !{i32 786445, metadata !4, metadata !21, metadata !"lblen", i32 263, i64 32, i64 32, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [lblen] [line 263, size 32, align 32, offset 128] [from float]
!28 = metadata !{i32 786445, metadata !4, metadata !21, metadata !"rblen", i32 264, i64 32, i64 32, i64 160, i32 0, metadata !18} ; [ DW_TAG_member ] [rblen] [line 264, size 32, align 32, offset 160] [from float]
!29 = metadata !{i32 786445, metadata !4, metadata !21, metadata !"is_in", i32 265, i64 64, i64 64, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [is_in] [line 265, size 64, align 64, offset 192] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!31 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!32 = metadata !{i32 786445, metadata !4, metadata !21, metadata !"incnum", i32 266, i64 32, i64 32, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [incnum] [line 266, size 32, align 32, offset 256] [from int]
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!34 = metadata !{i32 786689, metadata !11, metadata !"dmx", metadata !12, i32 16777364, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dmx] [line 148]
!35 = metadata !{i32 786689, metadata !11, metadata !"N", metadata !12, i32 33554580, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 148]
!36 = metadata !{i32 786689, metadata !11, metadata !"mode", metadata !12, i32 50331796, metadata !3, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 148]
!37 = metadata !{i32 786689, metadata !11, metadata !"ret_tree", metadata !12, i32 67109012, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tree] [line 148]
!38 = metadata !{i32 786688, metadata !11, metadata !"tree", metadata !12, i32 150, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 150]
!39 = metadata !{i32 786688, metadata !11, metadata !"mx", metadata !12, i32 151, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mx] [line 151]
!40 = metadata !{i32 786688, metadata !11, metadata !"coord", metadata !12, i32 152, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord] [line 152]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!42 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !12, i32 153, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 153]
!43 = metadata !{i32 786688, metadata !11, metadata !"j", metadata !12, i32 153, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 153]
!44 = metadata !{i32 786688, metadata !11, metadata !"idx", metadata !12, i32 154, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 154]
!45 = metadata !{i32 786688, metadata !11, metadata !"Np", metadata !12, i32 155, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Np] [line 155]
!46 = metadata !{i32 786688, metadata !11, metadata !"row", metadata !12, i32 156, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 156]
!47 = metadata !{i32 786688, metadata !11, metadata !"col", metadata !12, i32 156, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 156]
!48 = metadata !{i32 786688, metadata !11, metadata !"min", metadata !12, i32 157, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min] [line 157]
!49 = metadata !{i32 786688, metadata !11, metadata !"trow", metadata !12, i32 158, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [trow] [line 158]
!50 = metadata !{i32 786688, metadata !11, metadata !"tcol", metadata !12, i32 159, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tcol] [line 159]
!51 = metadata !{i32 786688, metadata !11, metadata !"diff", metadata !12, i32 160, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff] [line 160]
!52 = metadata !{i32 786688, metadata !11, metadata !"swapfoo", metadata !12, i32 161, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [swapfoo] [line 161]
!53 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"AllocPhylo", metadata !"AllocPhylo", metadata !"", i32 329, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.phylo_s* (i32)* @AllocPhylo, null, null, metadata !56, i32 330} ; [ DW_TAG_subprogram ] [line 329] [def] [scope 330] [AllocPhylo]
!54 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{metadata !20, metadata !15}
!56 = metadata !{metadata !57, metadata !58, metadata !59}
!57 = metadata !{i32 786689, metadata !53, metadata !"N", metadata !12, i32 16777545, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 329]
!58 = metadata !{i32 786688, metadata !53, metadata !"tree", metadata !12, i32 331, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 331]
!59 = metadata !{i32 786688, metadata !53, metadata !"i", metadata !12, i32 332, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 332]
!60 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"FreePhylo", metadata !"FreePhylo", metadata !"", i32 360, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.phylo_s*, i32)* @FreePhylo, null, null, metadata !63, i32 361} ; [ DW_TAG_subprogram ] [line 360] [def] [scope 361] [FreePhylo]
!61 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!62 = metadata !{null, metadata !20, metadata !15}
!63 = metadata !{metadata !64, metadata !65, metadata !66}
!64 = metadata !{i32 786689, metadata !60, metadata !"tree", metadata !12, i32 16777576, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 360]
!65 = metadata !{i32 786689, metadata !60, metadata !"N", metadata !12, i32 33554792, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 360]
!66 = metadata !{i32 786688, metadata !60, metadata !"idx", metadata !12, i32 362, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 362]
!67 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"MakeDiffMx", metadata !"MakeDiffMx", metadata !"", i32 384, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i32, float***)* @MakeDiffMx, null, null, metadata !72, i32 385} ; [ DW_TAG_subprogram ] [line 384] [def] [scope 385] [MakeDiffMx]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{null, metadata !70, metadata !15, metadata !71}
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!71 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78}
!73 = metadata !{i32 786689, metadata !67, metadata !"aseqs", metadata !12, i32 16777600, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseqs] [line 384]
!74 = metadata !{i32 786689, metadata !67, metadata !"num", metadata !12, i32 33554816, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num] [line 384]
!75 = metadata !{i32 786689, metadata !67, metadata !"ret_dmx", metadata !12, i32 50332032, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_dmx] [line 384]
!76 = metadata !{i32 786688, metadata !67, metadata !"dmx", metadata !12, i32 386, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 386]
!77 = metadata !{i32 786688, metadata !67, metadata !"i", metadata !12, i32 387, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 387]
!78 = metadata !{i32 786688, metadata !67, metadata !"j", metadata !12, i32 387, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 387]
!79 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"MakeIdentityMx", metadata !"MakeIdentityMx", metadata !"", i32 420, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i32, float***)* @MakeIdentityMx, null, null, metadata !80, i32 421} ; [ DW_TAG_subprogram ] [line 420] [def] [scope 421] [MakeIdentityMx]
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86}
!81 = metadata !{i32 786689, metadata !79, metadata !"aseqs", metadata !12, i32 16777636, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseqs] [line 420]
!82 = metadata !{i32 786689, metadata !79, metadata !"num", metadata !12, i32 33554852, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num] [line 420]
!83 = metadata !{i32 786689, metadata !79, metadata !"ret_imx", metadata !12, i32 50332068, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_imx] [line 420]
!84 = metadata !{i32 786688, metadata !79, metadata !"imx", metadata !12, i32 422, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imx] [line 422]
!85 = metadata !{i32 786688, metadata !79, metadata !"i", metadata !12, i32 423, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 423]
!86 = metadata !{i32 786688, metadata !79, metadata !"j", metadata !12, i32 423, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 423]
!87 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"PrintNewHampshireTree", metadata !"PrintNewHampshireTree", metadata !"", i32 457, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.aliinfo_s*, %struct.phylo_s*, i32)* @PrintNewHampshireTree, null, null, metadata !188, i32 458} ; [ DW_TAG_subprogram ] [line 457] [def] [scope 458] [PrintNewHampshireTree]
!88 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{null, metadata !90, metadata !145, metadata !20, metadata !15}
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!91 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!92 = metadata !{i32 786451, metadata !93, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !94, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!93 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!94 = metadata !{metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !115, metadata !116, metadata !117, metadata !118, metadata !121, metadata !123, metadata !125, metadata !129, metadata !131, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !140, metadata !141}
!95 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!96 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!97 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!98 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!99 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!100 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!101 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!102 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!103 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!104 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!105 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!106 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !30} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!107 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !108} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!109 = metadata !{i32 786451, metadata !93, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !110, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!110 = metadata !{metadata !111, metadata !112, metadata !114}
!111 = metadata !{i32 786445, metadata !93, metadata !109, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!112 = metadata !{i32 786445, metadata !93, metadata !109, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !113} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!114 = metadata !{i32 786445, metadata !93, metadata !109, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!115 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !113} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!116 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !15} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!117 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !15} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!118 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !119} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!119 = metadata !{i32 786454, metadata !93, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!120 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!121 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !122} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!122 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!123 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !124} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!124 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!125 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !126} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!126 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !31, metadata !127, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!127 = metadata !{metadata !128}
!128 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!129 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !130} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!130 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!131 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !132} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!132 = metadata !{i32 786454, metadata !93, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!133 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !130} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!134 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !130} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!135 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !130} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!136 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !130} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!137 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !138} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!138 = metadata !{i32 786454, metadata !93, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!139 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!140 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !15} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!141 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !142} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!142 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !31, metadata !143, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!143 = metadata !{metadata !144}
!144 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!145 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from AINFO]
!146 = metadata !{i32 786454, metadata !1, null, metadata !"AINFO", i32 83, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_typedef ] [AINFO] [line 83, size 0, align 0, offset 0] [from aliinfo_s]
!147 = metadata !{i32 786451, metadata !148, null, metadata !"aliinfo_s", i32 65, i64 832, i64 64, i32 0, i32 0, null, metadata !149, i32 0, null, null} ; [ DW_TAG_structure_type ] [aliinfo_s] [line 65, size 832, align 64, offset 0] [from ]
!148 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!149 = metadata !{metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187}
!150 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"flags", i32 66, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [flags] [line 66, size 32, align 32, offset 0] [from int]
!151 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"alen", i32 67, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [alen] [line 67, size 32, align 32, offset 32] [from int]
!152 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nseq", i32 68, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [nseq] [line 68, size 32, align 32, offset 64] [from int]
!153 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"wgt", i32 69, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [wgt] [line 69, size 64, align 64, offset 128] [from ]
!154 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"cs", i32 70, i64 64, i64 64, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [cs] [line 70, size 64, align 64, offset 192] [from ]
!155 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"rf", i32 71, i64 64, i64 64, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [rf] [line 71, size 64, align 64, offset 256] [from ]
!156 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"sqinfo", i32 72, i64 64, i64 64, i64 320, i32 0, metadata !157} ; [ DW_TAG_member ] [sqinfo] [line 72, size 64, align 64, offset 320] [from ]
!157 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seqinfo_s]
!158 = metadata !{i32 786451, metadata !4, null, metadata !"seqinfo_s", i32 84, i64 2880, i64 64, i32 0, i32 0, null, metadata !159, i32 0, null, null} ; [ DW_TAG_structure_type ] [seqinfo_s] [line 84, size 2880, align 64, offset 0] [from ]
!159 = metadata !{metadata !160, metadata !161, metadata !165, metadata !166, metadata !167, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177}
!160 = metadata !{i32 786445, metadata !4, metadata !158, metadata !"flags", i32 85, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [flags] [line 85, size 32, align 32, offset 0] [from int]
!161 = metadata !{i32 786445, metadata !4, metadata !158, metadata !"name", i32 86, i64 512, i64 8, i64 32, i32 0, metadata !162} ; [ DW_TAG_member ] [name] [line 86, size 512, align 8, offset 32] [from ]
!162 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !31, metadata !163, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!163 = metadata !{metadata !164}
!164 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!165 = metadata !{i32 786445, metadata !4, metadata !158, metadata !"id", i32 87, i64 512, i64 8, i64 544, i32 0, metadata !162} ; [ DW_TAG_member ] [id] [line 87, size 512, align 8, offset 544] [from ]
!166 = metadata !{i32 786445, metadata !4, metadata !158, metadata !"acc", i32 88, i64 512, i64 8, i64 1056, i32 0, metadata !162} ; [ DW_TAG_member ] [acc] [line 88, size 512, align 8, offset 1056] [from ]
!167 = metadata !{i32 786445, metadata !4, metadata !158, metadata !"desc", i32 89, i64 1024, i64 8, i64 1568, i32 0, metadata !168} ; [ DW_TAG_member ] [desc] [line 89, size 1024, align 8, offset 1568] [from ]
!168 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !31, metadata !169, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!169 = metadata !{metadata !170}
!170 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!171 = metadata !{i32 786445, metadata !4, metadata !158, metadata !"len", i32 90, i64 32, i64 32, i64 2592, i32 0, metadata !15} ; [ DW_TAG_member ] [len] [line 90, size 32, align 32, offset 2592] [from int]
!172 = metadata !{i32 786445, metadata !4, metadata !158, metadata !"start", i32 91, i64 32, i64 32, i64 2624, i32 0, metadata !15} ; [ DW_TAG_member ] [start] [line 91, size 32, align 32, offset 2624] [from int]
!173 = metadata !{i32 786445, metadata !4, metadata !158, metadata !"stop", i32 92, i64 32, i64 32, i64 2656, i32 0, metadata !15} ; [ DW_TAG_member ] [stop] [line 92, size 32, align 32, offset 2656] [from int]
!174 = metadata !{i32 786445, metadata !4, metadata !158, metadata !"olen", i32 93, i64 32, i64 32, i64 2688, i32 0, metadata !15} ; [ DW_TAG_member ] [olen] [line 93, size 32, align 32, offset 2688] [from int]
!175 = metadata !{i32 786445, metadata !4, metadata !158, metadata !"type", i32 94, i64 32, i64 32, i64 2720, i32 0, metadata !15} ; [ DW_TAG_member ] [type] [line 94, size 32, align 32, offset 2720] [from int]
!176 = metadata !{i32 786445, metadata !4, metadata !158, metadata !"ss", i32 95, i64 64, i64 64, i64 2752, i32 0, metadata !30} ; [ DW_TAG_member ] [ss] [line 95, size 64, align 64, offset 2752] [from ]
!177 = metadata !{i32 786445, metadata !4, metadata !158, metadata !"sa", i32 96, i64 64, i64 64, i64 2816, i32 0, metadata !30} ; [ DW_TAG_member ] [sa] [line 96, size 64, align 64, offset 2816] [from ]
!178 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"name", i32 75, i64 64, i64 64, i64 384, i32 0, metadata !30} ; [ DW_TAG_member ] [name] [line 75, size 64, align 64, offset 384] [from ]
!179 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"desc", i32 76, i64 64, i64 64, i64 448, i32 0, metadata !30} ; [ DW_TAG_member ] [desc] [line 76, size 64, align 64, offset 448] [from ]
!180 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"acc", i32 77, i64 64, i64 64, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [acc] [line 77, size 64, align 64, offset 512] [from ]
!181 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"au", i32 78, i64 64, i64 64, i64 576, i32 0, metadata !30} ; [ DW_TAG_member ] [au] [line 78, size 64, align 64, offset 576] [from ]
!182 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"tc1", i32 79, i64 32, i64 32, i64 640, i32 0, metadata !18} ; [ DW_TAG_member ] [tc1] [line 79, size 32, align 32, offset 640] [from float]
!183 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"tc2", i32 79, i64 32, i64 32, i64 672, i32 0, metadata !18} ; [ DW_TAG_member ] [tc2] [line 79, size 32, align 32, offset 672] [from float]
!184 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nc1", i32 80, i64 32, i64 32, i64 704, i32 0, metadata !18} ; [ DW_TAG_member ] [nc1] [line 80, size 32, align 32, offset 704] [from float]
!185 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"nc2", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !18} ; [ DW_TAG_member ] [nc2] [line 80, size 32, align 32, offset 736] [from float]
!186 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"ga1", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !18} ; [ DW_TAG_member ] [ga1] [line 81, size 32, align 32, offset 768] [from float]
!187 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"ga2", i32 81, i64 32, i64 32, i64 800, i32 0, metadata !18} ; [ DW_TAG_member ] [ga2] [line 81, size 32, align 32, offset 800] [from float]
!188 = metadata !{metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !199, metadata !200, metadata !201}
!189 = metadata !{i32 786689, metadata !87, metadata !"fp", metadata !12, i32 16777673, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 457]
!190 = metadata !{i32 786689, metadata !87, metadata !"ainfo", metadata !12, i32 33554889, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ainfo] [line 457]
!191 = metadata !{i32 786689, metadata !87, metadata !"tree", metadata !12, i32 50332105, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 457]
!192 = metadata !{i32 786689, metadata !87, metadata !"N", metadata !12, i32 67109321, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 457]
!193 = metadata !{i32 786688, metadata !87, metadata !"stack", metadata !12, i32 459, metadata !194, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stack] [line 459]
!194 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !195} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from intstack_s]
!195 = metadata !{i32 786451, metadata !4, null, metadata !"intstack_s", i32 282, i64 128, i64 64, i32 0, i32 0, null, metadata !196, i32 0, null, null} ; [ DW_TAG_structure_type ] [intstack_s] [line 282, size 128, align 64, offset 0] [from ]
!196 = metadata !{metadata !197, metadata !198}
!197 = metadata !{i32 786445, metadata !4, metadata !195, metadata !"data", i32 283, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [data] [line 283, size 32, align 32, offset 0] [from int]
!198 = metadata !{i32 786445, metadata !4, metadata !195, metadata !"nxt", i32 284, i64 64, i64 64, i64 64, i32 0, metadata !194} ; [ DW_TAG_member ] [nxt] [line 284, size 64, align 64, offset 64] [from ]
!199 = metadata !{i32 786688, metadata !87, metadata !"code", metadata !12, i32 460, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 460]
!200 = metadata !{i32 786688, metadata !87, metadata !"blen", metadata !12, i32 461, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blen] [line 461]
!201 = metadata !{i32 786688, metadata !87, metadata !"docomma", metadata !12, i32 462, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [docomma] [line 462]
!202 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"PrintPhylo", metadata !"PrintPhylo", metadata !"", i32 520, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.aliinfo_s*, %struct.phylo_s*, i32)* @PrintPhylo, null, null, metadata !203, i32 521} ; [ DW_TAG_subprogram ] [line 520] [def] [scope 521] [PrintPhylo]
!203 = metadata !{metadata !204, metadata !205, metadata !206, metadata !207, metadata !208}
!204 = metadata !{i32 786689, metadata !202, metadata !"fp", metadata !12, i32 16777736, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 520]
!205 = metadata !{i32 786689, metadata !202, metadata !"ainfo", metadata !12, i32 33554952, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ainfo] [line 520]
!206 = metadata !{i32 786689, metadata !202, metadata !"tree", metadata !12, i32 50332168, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 520]
!207 = metadata !{i32 786689, metadata !202, metadata !"N", metadata !12, i32 67109384, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 520]
!208 = metadata !{i32 786688, metadata !202, metadata !"idx", metadata !12, i32 522, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 522]
!209 = metadata !{i32 148, i32 0, metadata !11, null}
!210 = metadata !{i32 168, i32 0, metadata !11, null}
!211 = metadata !{i32 169, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !11, i32 169, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!213 = metadata !{i32 171, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !212, i32 170, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!215 = metadata !{metadata !"any pointer", metadata !216}
!216 = metadata !{metadata !"omnipotent char", metadata !217}
!217 = metadata !{metadata !"Simple C/C++ TBAA"}
!218 = metadata !{i32 172, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !214, i32 172, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!220 = metadata !{i32 173, i32 0, metadata !219, null}
!221 = metadata !{metadata !"float", metadata !216}
!222 = metadata !{i32 176, i32 0, metadata !11, null}
!223 = metadata !{i32 177, i32 0, metadata !11, null}
!224 = metadata !{i32 179, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !11, i32 179, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!226 = metadata !{i32 180, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !11, i32 180, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!228 = metadata !{metadata !"int", metadata !216}
!229 = metadata !{i32 183, i32 0, metadata !11, null}
!230 = metadata !{i32 191, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !11, i32 191, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!232 = metadata !{i32 303, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !231, i32 192, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!234 = metadata !{i32 300, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !233, i32 300, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!236 = metadata !{i32 195, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !233, i32 195, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!238 = metadata !{i32 196, i32 0, metadata !239, null}
!239 = metadata !{i32 786443, metadata !1, metadata !237, i32 196, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!240 = metadata !{i32 197, i32 0, metadata !239, null}
!241 = metadata !{i32 199, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !239, i32 198, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!243 = metadata !{i32 undef}
!244 = metadata !{i32 200, i32 0, metadata !242, null}
!245 = metadata !{i32 201, i32 0, metadata !242, null}
!246 = metadata !{i32 208, i32 0, metadata !233, null}
!247 = metadata !{i32 209, i32 0, metadata !233, null}
!248 = metadata !{i32 210, i32 0, metadata !233, null}
!249 = metadata !{i32 211, i32 0, metadata !233, null}
!250 = metadata !{i32 214, i32 0, metadata !233, null}
!251 = metadata !{i32 217, i32 0, metadata !233, null}
!252 = metadata !{i32 218, i32 0, metadata !233, null}
!253 = metadata !{i32 219, i32 0, metadata !233, null}
!254 = metadata !{i32 222, i32 0, metadata !233, null}
!255 = metadata !{i32 224, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !233, i32 223, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!257 = metadata !{i32 225, i32 0, metadata !256, null}
!258 = metadata !{i32 226, i32 0, metadata !256, null}
!259 = metadata !{i32 229, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !233, i32 228, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!261 = metadata !{i32 230, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !260, i32 230, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!263 = metadata !{i32 231, i32 0, metadata !262, null}
!264 = metadata !{i32 234, i32 0, metadata !233, null}
!265 = metadata !{i32 236, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !233, i32 235, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!267 = metadata !{i32 237, i32 0, metadata !266, null}
!268 = metadata !{i32 238, i32 0, metadata !266, null}
!269 = metadata !{i32 241, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !233, i32 240, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!271 = metadata !{i32 242, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !270, i32 242, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!273 = metadata !{i32 243, i32 0, metadata !272, null}
!274 = metadata !{i32 252, i32 0, metadata !233, null}
!275 = metadata !{i32 253, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !233, i32 253, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!277 = metadata !{i32 255, i32 0, metadata !233, null}
!278 = metadata !{i32 258, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !233, i32 256, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!280 = metadata !{i32 260, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !279, i32 260, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!282 = metadata !{i32 262, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !281, i32 261, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!284 = metadata !{i32 263, i32 0, metadata !283, null}
!285 = metadata !{i32 264, i32 0, metadata !283, null}
!286 = metadata !{i32 267, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !279, i32 267, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!288 = metadata !{i32 268, i32 0, metadata !279, null}
!289 = metadata !{i32 270, i32 0, metadata !233, null}
!290 = metadata !{i32 273, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !233, i32 271, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!292 = metadata !{i32 275, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !291, i32 275, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!294 = metadata !{i32 277, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !293, i32 276, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!296 = metadata !{i32 278, i32 0, metadata !295, null}
!297 = metadata !{i32 279, i32 0, metadata !295, null}
!298 = metadata !{i32 282, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !291, i32 282, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!300 = metadata !{i32 283, i32 0, metadata !291, null}
!301 = metadata !{i32 296, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !303, i32 292, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!303 = metadata !{i32 786443, metadata !1, metadata !304, i32 291, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!304 = metadata !{i32 786443, metadata !1, metadata !233, i32 290, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!305 = metadata !{i32 290, i32 0, metadata !304, null}
!306 = metadata !{i32 292, i32 0, metadata !303, null}
!307 = metadata !{i32 293, i32 0, metadata !302, null}
!308 = metadata !{i32 294, i32 0, metadata !302, null}
!309 = metadata !{i32 295, i32 0, metadata !302, null}
!310 = metadata !{i32 301, i32 0, metadata !235, null}
!311 = metadata !{i32 309, i32 0, metadata !11, null}
!312 = metadata !{i32 310, i32 0, metadata !11, null}
!313 = metadata !{i32 311, i32 0, metadata !11, null}
!314 = metadata !{i32 312, i32 0, metadata !11, null}
!315 = metadata !{i32 313, i32 0, metadata !11, null}
!316 = metadata !{i32 329, i32 0, metadata !53, null}
!317 = metadata !{i32 334, i32 0, metadata !53, null}
!318 = metadata !{i32 337, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !53, i32 337, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!320 = metadata !{i32 343, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !319, i32 338, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!322 = metadata !{i32 339, i32 0, metadata !321, null}
!323 = metadata !{i32 340, i32 0, metadata !321, null}
!324 = metadata !{i32 341, i32 0, metadata !321, null}
!325 = metadata !{i32 342, i32 0, metadata !321, null}
!326 = metadata !{i32 347, i32 0, metadata !53, null}
!327 = metadata !{i32 360, i32 0, metadata !60, null}
!328 = metadata !{i32 364, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !60, i32 364, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!330 = metadata !{i32 365, i32 0, metadata !329, null}
!331 = metadata !{i32 366, i32 0, metadata !60, null}
!332 = metadata !{i32 367, i32 0, metadata !60, null}
!333 = metadata !{i32 384, i32 0, metadata !67, null}
!334 = metadata !{i32 391, i32 0, metadata !67, null}
!335 = metadata !{i32 396, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !67, i32 396, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!337 = metadata !{i32 398, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !336, i32 397, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!339 = metadata !{i32 397, i32 0, metadata !338, null}
!340 = metadata !{i32 400, i32 0, metadata !67, null}
!341 = metadata !{i32 401, i32 0, metadata !67, null}
!342 = metadata !{i32 420, i32 0, metadata !79, null}
!343 = metadata !{i32 427, i32 0, metadata !79, null}
!344 = metadata !{i32 431, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !79, i32 431, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!346 = metadata !{i32 433, i32 0, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !345, i32 432, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!348 = metadata !{i32 432, i32 0, metadata !347, null}
!349 = metadata !{i32 435, i32 0, metadata !79, null}
!350 = metadata !{i32 436, i32 0, metadata !79, null}
!351 = metadata !{i32 457, i32 0, metadata !87, null}
!352 = metadata !{i32 460, i32 0, metadata !87, null}
!353 = metadata !{i32 464, i32 0, metadata !87, null}
!354 = metadata !{i32 465, i32 0, metadata !87, null}
!355 = metadata !{i32 466, i32 0, metadata !87, null}
!356 = metadata !{i32 467, i32 0, metadata !87, null}
!357 = metadata !{i32 475, i32 0, metadata !87, null}
!358 = metadata !{i32 481, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !360, i32 478, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!360 = metadata !{i32 786443, metadata !1, metadata !87, i32 476, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!361 = metadata !{i32 477, i32 0, metadata !360, null}
!362 = metadata !{i32 480, i32 0, metadata !359, null}
!363 = metadata !{i32 1}
!364 = metadata !{i32 482, i32 0, metadata !359, null}
!365 = metadata !{i32 483, i32 0, metadata !359, null}
!366 = metadata !{i32 485, i32 0, metadata !360, null}
!367 = metadata !{i32 488, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !360, i32 486, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!369 = metadata !{i32 489, i32 0, metadata !368, null}
!370 = metadata !{i32 491, i32 0, metadata !368, null}
!371 = metadata !{i32 492, i32 0, metadata !368, null}
!372 = metadata !{i32 493, i32 0, metadata !368, null}
!373 = metadata !{i32 495, i32 0, metadata !368, null}
!374 = metadata !{i32 496, i32 0, metadata !368, null}
!375 = metadata !{i32 497, i32 0, metadata !368, null}
!376 = metadata !{i32 498, i32 0, metadata !368, null}
!377 = metadata !{i32 503, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !360, i32 501, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!379 = metadata !{i32 504, i32 0, metadata !378, null}
!380 = metadata !{i32 509, i32 0, metadata !87, null}
!381 = metadata !{i32 510, i32 0, metadata !87, null}
!382 = metadata !{i32 511, i32 0, metadata !87, null}
!383 = metadata !{i32 520, i32 0, metadata !202, null}
!384 = metadata !{i32 524, i32 0, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !202, i32 524, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!386 = metadata !{i32 528, i32 0, metadata !387, null}
!387 = metadata !{i32 786443, metadata !1, metadata !385, i32 525, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/cluster.c]
!388 = metadata !{i32 526, i32 0, metadata !387, null}
!389 = metadata !{i32 527, i32 0, metadata !387, null}
!390 = metadata !{i32 532, i32 0, metadata !387, null}
!391 = metadata !{i32 536, i32 0, metadata !387, null}
!392 = metadata !{i32 537, i32 0, metadata !387, null}
!393 = metadata !{i32 539, i32 0, metadata !202, null}
