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
  %conv = sext i32 %N to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 168, i64 %mul) #4
  %0 = bitcast i8* %call to float**
  %cmp813 = icmp sgt i32 %N, 0
  %mul3 = shl nsw i64 %conv, 2
  br i1 %cmp813, label %for.body8.lr.ph, label %for.end19

for.body8.lr.ph:                                  ; preds = %for.inc17, %entry
  %indvars.iv874 = phi i64 [ %indvars.iv.next875, %for.inc17 ], [ 0, %entry ]
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 171, i64 %mul3) #4
  %1 = bitcast i8* %call4 to float*
  %arrayidx = getelementptr inbounds float** %0, i64 %indvars.iv874
  store float* %1, float** %arrayidx, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds float** %dmx, i64 %indvars.iv874
  %2 = load float** %arrayidx11, align 8, !tbaa !0
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.body8.lr.ph
  %indvars.iv870 = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next871, %for.body8 ]
  %arrayidx12 = getelementptr inbounds float* %2, i64 %indvars.iv870
  %3 = load float* %arrayidx12, align 4, !tbaa !3
  %arrayidx16 = getelementptr inbounds float* %1, i64 %indvars.iv870
  store float %3, float* %arrayidx16, align 4, !tbaa !3
  %indvars.iv.next871 = add i64 %indvars.iv870, 1
  %lftr.wideiv872 = trunc i64 %indvars.iv.next871 to i32
  %exitcond873 = icmp eq i32 %lftr.wideiv872, %N
  br i1 %exitcond873, label %for.inc17, label %for.body8

for.inc17:                                        ; preds = %for.body8
  %indvars.iv.next875 = add i64 %indvars.iv874, 1
  %lftr.wideiv876 = trunc i64 %indvars.iv.next875 to i32
  %exitcond877 = icmp eq i32 %lftr.wideiv876, %N
  br i1 %exitcond877, label %for.end19, label %for.body8.lr.ph

for.end19:                                        ; preds = %for.inc17, %entry
  %call22 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 176, i64 %mul3) #4
  %4 = bitcast i8* %call22 to i32*
  %sub = add i32 %N, -1
  %conv23 = sext i32 %sub to i64
  %mul24 = shl nsw i64 %conv23, 2
  %call25 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 177, i64 %mul24) #4
  %5 = bitcast i8* %call25 to float*
  br i1 %cmp813, label %for.body29, label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %for.body29, %for.end19
  %cmp37806 = icmp sgt i32 %sub, 0
  br i1 %cmp37806, label %for.body39.lr.ph, label %for.end44

for.body39.lr.ph:                                 ; preds = %for.cond35.preheader
  %6 = add i32 %N, -2
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = add i64 %8, 4
  call void @llvm.memset.p0i8.i64(i8* %call25, i8 0, i64 %9, i32 4, i1 false)
  br label %for.end44

for.body29:                                       ; preds = %for.end19, %for.body29
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %for.body29 ], [ 0, %for.end19 ]
  %arrayidx31 = getelementptr inbounds i32* %4, i64 %indvars.iv866
  %10 = trunc i64 %indvars.iv866 to i32
  store i32 %10, i32* %arrayidx31, align 4, !tbaa !4
  %indvars.iv.next867 = add i64 %indvars.iv866, 1
  %lftr.wideiv868 = trunc i64 %indvars.iv.next867 to i32
  %exitcond869 = icmp eq i32 %lftr.wideiv868, %N
  br i1 %exitcond869, label %for.cond35.preheader, label %for.body29

for.end44:                                        ; preds = %for.body39.lr.ph, %for.cond35.preheader
  %i.1.lcssa = phi i32 [ %sub, %for.body39.lr.ph ], [ 0, %for.cond35.preheader ]
  %call45 = tail call %struct.phylo_s* @AllocPhylo(i32 %N) #5
  %cmp46 = icmp eq %struct.phylo_s* %call45, null
  br i1 %cmp46, label %if.then, label %for.cond48.preheader

if.then:                                          ; preds = %for.end44
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([20 x i8]* @.str1, i64 0, i64 0)) #4
  br label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %if.then, %for.end44
  %cmp49802 = icmp sgt i32 %N, 1
  br i1 %cmp49802, label %for.cond52.preheader.lr.ph, label %for.end487

for.cond52.preheader.lr.ph:                       ; preds = %for.cond48.preheader
  %add481 = add i32 %N, -2
  br label %for.body55.lr.ph

for.body55.lr.ph:                                 ; preds = %for.end480, %for.cond52.preheader.lr.ph
  %indvars.iv859 = phi i64 [ %conv, %for.cond52.preheader.lr.ph ], [ %indvars.iv.next860, %for.end480 ]
  %indvars.iv855 = phi i32 [ %N, %for.cond52.preheader.lr.ph ], [ %indvars.iv.next856, %for.end480 ]
  %i.2805 = phi i32 [ %i.1.lcssa, %for.cond52.preheader.lr.ph ], [ %50, %for.end480 ]
  %j.1803 = phi i32 [ 0, %for.cond52.preheader.lr.ph ], [ %49, %for.end480 ]
  br label %for.body55

for.cond52.loopexit:                              ; preds = %for.body59, %for.body55
  %i.4.lcssa = phi i32 [ %i.3786, %for.body55 ], [ %i.5, %for.body59 ]
  %min.1.lcssa = phi float [ %min.0785, %for.body55 ], [ %min.2, %for.body59 ]
  %j.3.lcssa = phi i32 [ %j.2783, %for.body55 ], [ %j.4, %for.body59 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond826 = icmp eq i32 %11, %indvars.iv855
  br i1 %exitcond826, label %for.end77, label %for.body55

for.body55:                                       ; preds = %for.cond52.loopexit, %for.body55.lr.ph
  %indvars.iv821 = phi i64 [ 0, %for.body55.lr.ph ], [ %indvars.iv.next822, %for.cond52.loopexit ]
  %indvars.iv = phi i64 [ 1, %for.body55.lr.ph ], [ %indvars.iv.next, %for.cond52.loopexit ]
  %i.3786 = phi i32 [ %i.2805, %for.body55.lr.ph ], [ %i.4.lcssa, %for.cond52.loopexit ]
  %min.0785 = phi float [ 9.999990e+05, %for.body55.lr.ph ], [ %min.1.lcssa, %for.cond52.loopexit ]
  %j.2783 = phi i32 [ %j.1803, %for.body55.lr.ph ], [ %j.3.lcssa, %for.cond52.loopexit ]
  %indvars.iv.next822 = add i64 %indvars.iv821, 1
  %11 = trunc i64 %indvars.iv.next822 to i32
  %12 = trunc i64 %indvars.iv859 to i32
  %cmp57775 = icmp slt i32 %11, %12
  br i1 %cmp57775, label %for.body59.lr.ph, label %for.cond52.loopexit

for.body59.lr.ph:                                 ; preds = %for.body55
  %arrayidx62 = getelementptr inbounds float** %0, i64 %indvars.iv821
  %13 = load float** %arrayidx62, align 8, !tbaa !0
  br label %for.body59

for.body59:                                       ; preds = %for.body59, %for.body59.lr.ph
  %indvars.iv816 = phi i64 [ %indvars.iv, %for.body59.lr.ph ], [ %indvars.iv.next817, %for.body59 ]
  %i.4779 = phi i32 [ %i.3786, %for.body59.lr.ph ], [ %i.5, %for.body59 ]
  %min.1778 = phi float [ %min.0785, %for.body59.lr.ph ], [ %min.2, %for.body59 ]
  %j.3776 = phi i32 [ %j.2783, %for.body59.lr.ph ], [ %j.4, %for.body59 ]
  %arrayidx63 = getelementptr inbounds float* %13, i64 %indvars.iv816
  %14 = load float* %arrayidx63, align 4, !tbaa !3
  %cmp64 = fcmp olt float %14, %min.1778
  %15 = trunc i64 %indvars.iv816 to i32
  %j.4 = select i1 %cmp64, i32 %15, i32 %j.3776
  %min.2 = select i1 %cmp64, float %14, float %min.1778
  %16 = trunc i64 %indvars.iv821 to i32
  %i.5 = select i1 %cmp64, i32 %16, i32 %i.4779
  %indvars.iv.next817 = add i64 %indvars.iv816, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next817 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv855
  br i1 %exitcond, label %for.cond52.loopexit, label %for.body59

for.end77:                                        ; preds = %for.cond52.loopexit
  %idxprom78 = sext i32 %i.4.lcssa to i64
  %arrayidx79 = getelementptr inbounds i32* %4, i64 %idxprom78
  %17 = load i32* %arrayidx79, align 4, !tbaa !4
  %18 = add nsw i64 %indvars.iv859, -2
  %left = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 1
  store i32 %17, i32* %left, align 4, !tbaa !4
  %idxprom83 = sext i32 %j.3.lcssa to i64
  %arrayidx84 = getelementptr inbounds i32* %4, i64 %idxprom83
  %19 = load i32* %arrayidx84, align 4, !tbaa !4
  %right = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 2
  store i32 %19, i32* %right, align 4, !tbaa !4
  %20 = load i32* %arrayidx79, align 4, !tbaa !4
  %cmp90 = icmp slt i32 %20, %N
  br i1 %cmp90, label %if.end100, label %if.then92

if.then92:                                        ; preds = %for.end77
  %21 = trunc i64 %indvars.iv859 to i32
  %sub94 = add i32 %add481, %21
  %sub97 = sub nsw i32 %20, %N
  %idxprom98 = sext i32 %sub97 to i64
  %parent = getelementptr inbounds %struct.phylo_s* %call45, i64 %idxprom98, i32 0
  store i32 %sub94, i32* %parent, align 4, !tbaa !4
  br label %if.end100

if.end100:                                        ; preds = %for.end77, %if.then92
  %22 = load i32* %arrayidx84, align 4, !tbaa !4
  %cmp103 = icmp slt i32 %22, %N
  br i1 %cmp103, label %if.end114, label %if.then105

if.then105:                                       ; preds = %if.end100
  %23 = trunc i64 %indvars.iv859 to i32
  %sub107 = add i32 %add481, %23
  %sub110 = sub nsw i32 %22, %N
  %idxprom111 = sext i32 %sub110 to i64
  %parent113 = getelementptr inbounds %struct.phylo_s* %call45, i64 %idxprom111, i32 0
  store i32 %sub107, i32* %parent113, align 4, !tbaa !4
  br label %if.end114

if.end114:                                        ; preds = %if.end100, %if.then105
  %diff118 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 3
  store float %min.1.lcssa, float* %diff118, align 4, !tbaa !3
  %arrayidx121 = getelementptr inbounds float* %5, i64 %18
  store float %min.1.lcssa, float* %arrayidx121, align 4, !tbaa !3
  %rblen = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 5
  store float %min.1.lcssa, float* %rblen, align 4, !tbaa !3
  %lblen = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 4
  store float %min.1.lcssa, float* %lblen, align 4, !tbaa !3
  %24 = load i32* %arrayidx79, align 4, !tbaa !4
  %cmp130 = icmp slt i32 %24, %N
  br i1 %cmp130, label %if.end143, label %if.then132

if.then132:                                       ; preds = %if.end114
  %sub135 = sub nsw i32 %24, %N
  %idxprom136 = sext i32 %sub135 to i64
  %arrayidx137 = getelementptr inbounds float* %5, i64 %idxprom136
  %25 = load float* %arrayidx137, align 4, !tbaa !3
  %sub142 = fsub float %min.1.lcssa, %25
  store float %sub142, float* %lblen, align 4, !tbaa !3
  br label %if.end143

if.end143:                                        ; preds = %if.end114, %if.then132
  %26 = load i32* %arrayidx84, align 4, !tbaa !4
  %cmp146 = icmp slt i32 %26, %N
  br i1 %cmp146, label %if.end159, label %if.then148

if.then148:                                       ; preds = %if.end143
  %sub151 = sub nsw i32 %26, %N
  %idxprom152 = sext i32 %sub151 to i64
  %arrayidx153 = getelementptr inbounds float* %5, i64 %idxprom152
  %27 = load float* %arrayidx153, align 4, !tbaa !3
  %sub158 = fsub float %min.1.lcssa, %27
  store float %sub158, float* %rblen, align 4, !tbaa !3
  br label %if.end159

if.end159:                                        ; preds = %if.end143, %if.then148
  br i1 %cmp130, label %if.then164, label %if.else

if.then164:                                       ; preds = %if.end159
  %incnum = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 7
  %28 = load i32* %incnum, align 4, !tbaa !4
  %inc168 = add nsw i32 %28, 1
  store i32 %inc168, i32* %incnum, align 4, !tbaa !4
  %29 = load i32* %arrayidx79, align 4, !tbaa !4
  %idxprom171 = sext i32 %29 to i64
  %is_in = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 6
  %30 = load i8** %is_in, align 8, !tbaa !0
  %arrayidx175 = getelementptr inbounds i8* %30, i64 %idxprom171
  store i8 1, i8* %arrayidx175, align 1, !tbaa !1
  br label %if.end211

if.else:                                          ; preds = %if.end159
  %sub178 = sub nsw i32 %24, %N
  %idxprom179 = sext i32 %sub178 to i64
  %incnum181 = getelementptr inbounds %struct.phylo_s* %call45, i64 %idxprom179, i32 7
  %31 = load i32* %incnum181, align 4, !tbaa !4
  %incnum185 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 7
  %32 = load i32* %incnum185, align 4, !tbaa !4
  %add186 = add nsw i32 %32, %31
  store i32 %add186, i32* %incnum185, align 4, !tbaa !4
  br i1 %cmp813, label %for.body190.lr.ph, label %if.end211

for.body190.lr.ph:                                ; preds = %if.else
  %is_in204 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 6
  br label %for.body190

for.body190:                                      ; preds = %for.body190, %for.body190.lr.ph
  %indvars.iv827 = phi i64 [ 0, %for.body190.lr.ph ], [ %indvars.iv.next828, %for.body190 ]
  %33 = load i32* %arrayidx79, align 4, !tbaa !4
  %sub194 = sub nsw i32 %33, %N
  %idxprom195 = sext i32 %sub194 to i64
  %is_in197 = getelementptr inbounds %struct.phylo_s* %call45, i64 %idxprom195, i32 6
  %34 = load i8** %is_in197, align 8, !tbaa !0
  %arrayidx198 = getelementptr inbounds i8* %34, i64 %indvars.iv827
  %35 = load i8* %arrayidx198, align 1, !tbaa !1
  %36 = load i8** %is_in204, align 8, !tbaa !0
  %arrayidx205 = getelementptr inbounds i8* %36, i64 %indvars.iv827
  %37 = load i8* %arrayidx205, align 1, !tbaa !1
  %or773 = or i8 %37, %35
  store i8 %or773, i8* %arrayidx205, align 1, !tbaa !1
  %indvars.iv.next828 = add i64 %indvars.iv827, 1
  %lftr.wideiv829 = trunc i64 %indvars.iv.next828 to i32
  %exitcond830 = icmp eq i32 %lftr.wideiv829, %N
  br i1 %exitcond830, label %if.end211, label %for.body190

if.end211:                                        ; preds = %if.else, %for.body190, %if.then164
  %38 = load i32* %arrayidx84, align 4, !tbaa !4
  %cmp214 = icmp slt i32 %38, %N
  br i1 %cmp214, label %if.then216, label %if.else230

if.then216:                                       ; preds = %if.end211
  %incnum220 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 7
  %39 = load i32* %incnum220, align 4, !tbaa !4
  %inc221 = add nsw i32 %39, 1
  store i32 %inc221, i32* %incnum220, align 4, !tbaa !4
  %40 = load i32* %arrayidx84, align 4, !tbaa !4
  %idxprom224 = sext i32 %40 to i64
  %is_in228 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 6
  %41 = load i8** %is_in228, align 8, !tbaa !0
  %arrayidx229 = getelementptr inbounds i8* %41, i64 %idxprom224
  store i8 1, i8* %arrayidx229, align 1, !tbaa !1
  br label %if.end267

if.else230:                                       ; preds = %if.end211
  %sub233 = sub nsw i32 %38, %N
  %idxprom234 = sext i32 %sub233 to i64
  %incnum236 = getelementptr inbounds %struct.phylo_s* %call45, i64 %idxprom234, i32 7
  %42 = load i32* %incnum236, align 4, !tbaa !4
  %incnum240 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 7
  %43 = load i32* %incnum240, align 4, !tbaa !4
  %add241 = add nsw i32 %43, %42
  store i32 %add241, i32* %incnum240, align 4, !tbaa !4
  br i1 %cmp813, label %for.body245.lr.ph, label %if.end267

for.body245.lr.ph:                                ; preds = %if.else230
  %is_in259 = getelementptr inbounds %struct.phylo_s* %call45, i64 %18, i32 6
  br label %for.body245

for.body245:                                      ; preds = %for.body245, %for.body245.lr.ph
  %indvars.iv831 = phi i64 [ 0, %for.body245.lr.ph ], [ %indvars.iv.next832, %for.body245 ]
  %44 = load i32* %arrayidx84, align 4, !tbaa !4
  %sub249 = sub nsw i32 %44, %N
  %idxprom250 = sext i32 %sub249 to i64
  %is_in252 = getelementptr inbounds %struct.phylo_s* %call45, i64 %idxprom250, i32 6
  %45 = load i8** %is_in252, align 8, !tbaa !0
  %arrayidx253 = getelementptr inbounds i8* %45, i64 %indvars.iv831
  %46 = load i8* %arrayidx253, align 1, !tbaa !1
  %47 = load i8** %is_in259, align 8, !tbaa !0
  %arrayidx260 = getelementptr inbounds i8* %47, i64 %indvars.iv831
  %48 = load i8* %arrayidx260, align 1, !tbaa !1
  %or262772 = or i8 %48, %46
  store i8 %or262772, i8* %arrayidx260, align 1, !tbaa !1
  %indvars.iv.next832 = add i64 %indvars.iv831, 1
  %lftr.wideiv833 = trunc i64 %indvars.iv.next832 to i32
  %exitcond834 = icmp eq i32 %lftr.wideiv833, %N
  br i1 %exitcond834, label %if.end267, label %for.body245

if.end267:                                        ; preds = %if.else230, %for.body245, %if.then216
  %indvars.iv.next860 = add i64 %indvars.iv859, -1
  %indvars.iv.next856 = add i32 %indvars.iv855, -1
  %49 = trunc i64 %indvars.iv.next860 to i32
  %cmp269 = icmp eq i32 %i.4.lcssa, %49
  %50 = trunc i64 %18 to i32
  %cmp272 = icmp eq i32 %j.3.lcssa, %50
  %or.cond = or i1 %cmp269, %cmp272
  %j.5 = select i1 %or.cond, i32 %i.4.lcssa, i32 %j.3.lcssa
  %i.6 = select i1 %or.cond, i32 %j.3.lcssa, i32 %i.4.lcssa
  %cmp277 = icmp eq i32 %i.6, %50
  br i1 %cmp277, label %if.end325, label %for.body293.lr.ph

for.body293.lr.ph:                                ; preds = %if.end267
  %arrayidx282 = getelementptr inbounds float** %0, i64 %18
  %51 = load float** %arrayidx282, align 8, !tbaa !0
  %idxprom283 = sext i32 %i.6 to i64
  %arrayidx284 = getelementptr inbounds float** %0, i64 %idxprom283
  %52 = load float** %arrayidx284, align 8, !tbaa !0
  store float* %52, float** %arrayidx282, align 8, !tbaa !0
  store float* %51, float** %arrayidx284, align 8, !tbaa !0
  br label %for.body293

for.body293:                                      ; preds = %for.body293, %for.body293.lr.ph
  %indvars.iv835 = phi i64 [ 0, %for.body293.lr.ph ], [ %indvars.iv.next836, %for.body293 ]
  %arrayidx297 = getelementptr inbounds float** %0, i64 %indvars.iv835
  %53 = load float** %arrayidx297, align 8, !tbaa !0
  %arrayidx298 = getelementptr inbounds float* %53, i64 %18
  %54 = load float* %arrayidx298, align 4, !tbaa !3
  %arrayidx302 = getelementptr inbounds float* %53, i64 %idxprom283
  %55 = load float* %arrayidx302, align 4, !tbaa !3
  store float %55, float* %arrayidx298, align 4, !tbaa !3
  store float %54, float* %arrayidx302, align 4, !tbaa !3
  %indvars.iv.next836 = add i64 %indvars.iv835, 1
  %lftr.wideiv839 = trunc i64 %indvars.iv.next836 to i32
  %exitcond840 = icmp eq i32 %lftr.wideiv839, %indvars.iv855
  br i1 %exitcond840, label %for.end314, label %for.body293

for.end314:                                       ; preds = %for.body293
  %arrayidx317 = getelementptr inbounds i32* %4, i64 %18
  %56 = load i32* %arrayidx317, align 4, !tbaa !4
  %arrayidx319 = getelementptr inbounds i32* %4, i64 %idxprom283
  %57 = load i32* %arrayidx319, align 4, !tbaa !4
  store i32 %57, i32* %arrayidx317, align 4, !tbaa !4
  store i32 %56, i32* %arrayidx319, align 4, !tbaa !4
  br label %if.end325

if.end325:                                        ; preds = %if.end267, %for.end314
  %cmp327 = icmp eq i32 %j.5, %49
  br i1 %cmp327, label %for.body381.lr.ph, label %for.body343.lr.ph

for.body343.lr.ph:                                ; preds = %if.end325
  %arrayidx332 = getelementptr inbounds float** %0, i64 %indvars.iv.next860
  %58 = load float** %arrayidx332, align 8, !tbaa !0
  %idxprom333 = sext i32 %j.5 to i64
  %arrayidx334 = getelementptr inbounds float** %0, i64 %idxprom333
  %59 = load float** %arrayidx334, align 8, !tbaa !0
  store float* %59, float** %arrayidx332, align 8, !tbaa !0
  store float* %58, float** %arrayidx334, align 8, !tbaa !0
  br label %for.body343

for.body343:                                      ; preds = %for.body343, %for.body343.lr.ph
  %indvars.iv841 = phi i64 [ 0, %for.body343.lr.ph ], [ %indvars.iv.next842, %for.body343 ]
  %arrayidx347 = getelementptr inbounds float** %0, i64 %indvars.iv841
  %60 = load float** %arrayidx347, align 8, !tbaa !0
  %arrayidx348 = getelementptr inbounds float* %60, i64 %indvars.iv.next860
  %61 = load float* %arrayidx348, align 4, !tbaa !3
  %arrayidx352 = getelementptr inbounds float* %60, i64 %idxprom333
  %62 = load float* %arrayidx352, align 4, !tbaa !3
  store float %62, float* %arrayidx348, align 4, !tbaa !3
  store float %61, float* %arrayidx352, align 4, !tbaa !3
  %indvars.iv.next842 = add i64 %indvars.iv841, 1
  %lftr.wideiv845 = trunc i64 %indvars.iv.next842 to i32
  %exitcond846 = icmp eq i32 %lftr.wideiv845, %indvars.iv855
  br i1 %exitcond846, label %for.end364, label %for.body343

for.end364:                                       ; preds = %for.body343
  %arrayidx367 = getelementptr inbounds i32* %4, i64 %indvars.iv.next860
  %63 = load i32* %arrayidx367, align 4, !tbaa !4
  %arrayidx369 = getelementptr inbounds i32* %4, i64 %idxprom333
  %64 = load i32* %arrayidx369, align 4, !tbaa !4
  store i32 %64, i32* %arrayidx367, align 4, !tbaa !4
  store i32 %63, i32* %arrayidx369, align 4, !tbaa !4
  br label %for.body381.lr.ph

for.body381.lr.ph:                                ; preds = %for.end364, %if.end325
  %arrayidx449 = getelementptr inbounds float** %0, i64 %18
  %arrayidx453 = getelementptr inbounds float** %0, i64 %indvars.iv.next860
  br label %for.body381

for.body381:                                      ; preds = %for.inc463, %for.body381.lr.ph
  %indvars.iv847 = phi i64 [ 0, %for.body381.lr.ph ], [ %indvars.iv.next848, %for.inc463 ]
  switch i32 %mode, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb397
    i32 1, label %sw.bb420
  ]

sw.bb:                                            ; preds = %for.body381
  %65 = load float** %arrayidx449, align 8, !tbaa !0
  %arrayidx385 = getelementptr inbounds float* %65, i64 %indvars.iv847
  %66 = load float* %arrayidx385, align 4, !tbaa !3
  %67 = load float** %arrayidx453, align 8, !tbaa !0
  %arrayidx389 = getelementptr inbounds float* %67, i64 %indvars.iv847
  %68 = load float* %arrayidx389, align 4, !tbaa !3
  %add390 = fadd float %66, %68
  %conv392 = fmul float %add390, 5.000000e-01
  store float %conv392, float* %arrayidx385, align 4, !tbaa !3
  br label %for.inc463

sw.bb397:                                         ; preds = %for.body381
  %69 = load float** %arrayidx449, align 8, !tbaa !0
  %arrayidx401 = getelementptr inbounds float* %69, i64 %indvars.iv847
  %70 = load float* %arrayidx401, align 4, !tbaa !3
  %71 = load float** %arrayidx453, align 8, !tbaa !0
  %arrayidx405 = getelementptr inbounds float* %71, i64 %indvars.iv847
  %72 = load float* %arrayidx405, align 4, !tbaa !3
  %cmp406 = fcmp olt float %70, %72
  %. = select i1 %cmp406, float %70, float %72
  store float %., float* %arrayidx401, align 4, !tbaa !3
  br label %for.inc463

sw.bb420:                                         ; preds = %for.body381
  %73 = load float** %arrayidx449, align 8, !tbaa !0
  %arrayidx424 = getelementptr inbounds float* %73, i64 %indvars.iv847
  %74 = load float* %arrayidx424, align 4, !tbaa !3
  %75 = load float** %arrayidx453, align 8, !tbaa !0
  %arrayidx428 = getelementptr inbounds float* %75, i64 %indvars.iv847
  %76 = load float* %arrayidx428, align 4, !tbaa !3
  %cmp429 = fcmp ogt float %74, %76
  %.774 = select i1 %cmp429, float %74, float %76
  store float %.774, float* %arrayidx424, align 4, !tbaa !3
  br label %for.inc463

sw.default:                                       ; preds = %for.body381
  %77 = load float** %arrayidx449, align 8, !tbaa !0
  %arrayidx450 = getelementptr inbounds float* %77, i64 %indvars.iv847
  %78 = load float* %arrayidx450, align 4, !tbaa !3
  %79 = load float** %arrayidx453, align 8, !tbaa !0
  %arrayidx454 = getelementptr inbounds float* %79, i64 %indvars.iv847
  %80 = load float* %arrayidx454, align 4, !tbaa !3
  %add455 = fadd float %78, %80
  %conv458 = fmul float %add455, 5.000000e-01
  store float %conv458, float* %arrayidx450, align 4, !tbaa !3
  br label %for.inc463

for.inc463:                                       ; preds = %sw.bb, %sw.bb397, %sw.bb420, %sw.default
  %indvars.iv.next848 = add i64 %indvars.iv847, 1
  %lftr.wideiv851 = trunc i64 %indvars.iv.next848 to i32
  %exitcond852 = icmp eq i32 %lftr.wideiv851, %indvars.iv855
  br i1 %exitcond852, label %for.body469.lr.ph, label %for.body381

for.body469.lr.ph:                                ; preds = %for.inc463
  %arrayidx472 = getelementptr inbounds float** %0, i64 %18
  %81 = load float** %arrayidx472, align 8, !tbaa !0
  br label %for.body469

for.body469:                                      ; preds = %for.body469, %for.body469.lr.ph
  %indvars.iv853 = phi i64 [ 0, %for.body469.lr.ph ], [ %indvars.iv.next854, %for.body469 ]
  %arrayidx473 = getelementptr inbounds float* %81, i64 %indvars.iv853
  %82 = load float* %arrayidx473, align 4, !tbaa !3
  %arrayidx476 = getelementptr inbounds float** %0, i64 %indvars.iv853
  %83 = load float** %arrayidx476, align 8, !tbaa !0
  %arrayidx477 = getelementptr inbounds float* %83, i64 %18
  store float %82, float* %arrayidx477, align 4, !tbaa !3
  %indvars.iv.next854 = add i64 %indvars.iv853, 1
  %lftr.wideiv857 = trunc i64 %indvars.iv.next854 to i32
  %exitcond858 = icmp eq i32 %lftr.wideiv857, %indvars.iv855
  br i1 %exitcond858, label %for.end480, label %for.body469

for.end480:                                       ; preds = %for.body469
  %84 = trunc i64 %indvars.iv859 to i32
  %sub482 = add i32 %add481, %84
  %arrayidx485 = getelementptr inbounds i32* %4, i64 %18
  store i32 %sub482, i32* %arrayidx485, align 4, !tbaa !4
  %cmp49 = icmp sgt i32 %49, 1
  br i1 %cmp49, label %for.body55.lr.ph, label %for.end487

for.end487:                                       ; preds = %for.end480, %for.cond48.preheader
  %85 = bitcast i8* %call to i8**
  tail call void @Free2DArray(i8** %85, i32 %N) #4
  tail call void @free(i8* %call22) #4
  tail call void @free(i8* %call25) #4
  store %struct.phylo_s* %call45, %struct.phylo_s** %ret_tree, align 8, !tbaa !0
  ret i32 1
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize uwtable
define noalias %struct.phylo_s* @AllocPhylo(i32 %N) #0 {
entry:
  %sub = add nsw i32 %N, -1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 40
  %call = tail call noalias i8* @malloc(i64 %mul) #4
  %0 = bitcast i8* %call to %struct.phylo_s*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp344 = icmp sgt i32 %sub, 0
  br i1 %cmp344, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv17 = sext i32 %N to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %1, %sub
  br i1 %cmp3, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %diff = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 3
  store float 0.000000e+00, float* %diff, align 4, !tbaa !3
  %rblen = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 5
  store float 0.000000e+00, float* %rblen, align 4, !tbaa !3
  %lblen = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 4
  store float 0.000000e+00, float* %lblen, align 4, !tbaa !3
  %parent = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 0
  store i32 -1, i32* %parent, align 4, !tbaa !4
  %right = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 2
  store i32 -1, i32* %right, align 4, !tbaa !4
  %left = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 1
  store i32 -1, i32* %left, align 4, !tbaa !4
  %incnum = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 7
  store i32 0, i32* %incnum, align 4, !tbaa !4
  %call18 = tail call noalias i8* @calloc(i64 %conv17, i64 1) #4
  %is_in = getelementptr inbounds %struct.phylo_s* %0, i64 %indvars.iv, i32 6
  store i8* %call18, i8** %is_in, align 8, !tbaa !0
  %cmp21 = icmp eq i8* %call18, null
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp21, label %return, label %for.cond

return:                                           ; preds = %for.cond.preheader, %for.body, %for.cond, %entry
  %retval.0 = phi %struct.phylo_s* [ null, %entry ], [ %0, %for.cond.preheader ], [ null, %for.body ], [ %0, %for.cond ]
  ret %struct.phylo_s* %retval.0
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @FreePhylo(%struct.phylo_s* nocapture %tree, i32 %N) #0 {
entry:
  %sub = add i32 %N, -1
  %cmp4 = icmp sgt i32 %sub, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %is_in = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 6
  %0 = load i8** %is_in, align 8, !tbaa !0
  tail call void @free(i8* %0) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %1 = bitcast %struct.phylo_s* %tree to i8*
  tail call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MakeDiffMx(i8** nocapture %aseqs, i32 %num, float*** nocapture %ret_dmx) #0 {
entry:
  %call = tail call float** @FMX2Alloc(i32 %num, i32 %num) #4
  %cmp35 = icmp sgt i32 %num, 0
  br i1 %cmp35, label %for.body3.lr.ph, label %for.end18

for.body3.lr.ph:                                  ; preds = %for.inc16, %entry
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.inc16 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %aseqs, i64 %indvars.iv39
  %arrayidx14 = getelementptr inbounds float** %call, i64 %indvars.iv39
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body3.lr.ph
  %indvars.iv37 = phi i64 [ %indvars.iv39, %for.body3.lr.ph ], [ %indvars.iv.next38, %for.body3 ]
  %0 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv37
  %1 = load i8** %arrayidx5, align 8, !tbaa !0
  %call6 = tail call float @PairwiseIdentity(i8* %0, i8* %1) #4
  %conv7 = fsub float 1.000000e+00, %call6
  %arrayidx10 = getelementptr inbounds float** %call, i64 %indvars.iv37
  %2 = load float** %arrayidx10, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds float* %2, i64 %indvars.iv39
  store float %conv7, float* %arrayidx11, align 4, !tbaa !3
  %3 = load float** %arrayidx14, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds float* %3, i64 %indvars.iv37
  store float %conv7, float* %arrayidx15, align 4, !tbaa !3
  %indvars.iv.next38 = add i64 %indvars.iv37, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next38 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num
  br i1 %exitcond, label %for.inc16, label %for.body3

for.inc16:                                        ; preds = %for.body3
  %indvars.iv.next40 = add i64 %indvars.iv39, 1
  %lftr.wideiv41 = trunc i64 %indvars.iv.next40 to i32
  %exitcond42 = icmp eq i32 %lftr.wideiv41, %num
  br i1 %exitcond42, label %for.end18, label %for.body3.lr.ph

for.end18:                                        ; preds = %for.inc16, %entry
  store float** %call, float*** %ret_dmx, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare float** @FMX2Alloc(i32, i32) #1

; Function Attrs: optsize
declare float @PairwiseIdentity(i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @MakeIdentityMx(i8** nocapture %aseqs, i32 %num, float*** nocapture %ret_imx) #0 {
entry:
  %call = tail call float** @FMX2Alloc(i32 %num, i32 %num) #4
  %cmp34 = icmp sgt i32 %num, 0
  br i1 %cmp34, label %for.body3.lr.ph, label %for.end17

for.body3.lr.ph:                                  ; preds = %for.inc15, %entry
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc15 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %aseqs, i64 %indvars.iv38
  %arrayidx13 = getelementptr inbounds float** %call, i64 %indvars.iv38
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body3.lr.ph
  %indvars.iv36 = phi i64 [ %indvars.iv38, %for.body3.lr.ph ], [ %indvars.iv.next37, %for.body3 ]
  %0 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv36
  %1 = load i8** %arrayidx5, align 8, !tbaa !0
  %call6 = tail call float @PairwiseIdentity(i8* %0, i8* %1) #4
  %arrayidx9 = getelementptr inbounds float** %call, i64 %indvars.iv36
  %2 = load float** %arrayidx9, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds float* %2, i64 %indvars.iv38
  store float %call6, float* %arrayidx10, align 4, !tbaa !3
  %3 = load float** %arrayidx13, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds float* %3, i64 %indvars.iv36
  store float %call6, float* %arrayidx14, align 4, !tbaa !3
  %indvars.iv.next37 = add i64 %indvars.iv36, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next37 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num
  br i1 %exitcond, label %for.inc15, label %for.body3

for.inc15:                                        ; preds = %for.body3
  %indvars.iv.next39 = add i64 %indvars.iv38, 1
  %lftr.wideiv40 = trunc i64 %indvars.iv.next39 to i32
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %num
  br i1 %exitcond41, label %for.end17, label %for.body3.lr.ph

for.end17:                                        ; preds = %for.inc15, %entry
  store float** %call, float*** %ret_imx, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @PrintNewHampshireTree(%struct._IO_FILE* nocapture %fp, %struct.aliinfo_s* nocapture %ainfo, %struct.phylo_s* nocapture %tree, i32 %N) #0 {
entry:
  %code = alloca i32, align 4
  %mul = shl nsw i32 %N, 1
  %sub = add nsw i32 %mul, -1
  %conv = sext i32 %sub to i64
  %mul1 = shl nsw i64 %conv, 2
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 464, i64 %mul1) #4
  %0 = bitcast i8* %call to float*
  %call2 = call %struct.intstack_s* @InitIntStack() #4
  call void @PushIntStack(%struct.intstack_s* %call2, i32 %N) #4
  %call395 = call i32 @PopIntStack(%struct.intstack_s* %call2, i32* %code) #4
  %tobool96 = icmp eq i32 %call395, 0
  br i1 %tobool96, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %sqinfo = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %docomma.097 = phi i32 [ 0, %while.body.lr.ph ], [ %docomma.0.be, %while.cond.backedge ]
  %1 = load i32* %code, align 4, !tbaa !4
  %cmp = icmp slt i32 %1, %N
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %tobool5 = icmp eq i32 %docomma.097, 0
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %fputc94 = call i32 @fputc(i32 44, %struct._IO_FILE* %fp)
  %.pre = load i32* %code, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then6
  %2 = phi i32 [ %1, %if.then ], [ %.pre, %if.then6 ]
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.seqinfo_s* %3, i64 %idxprom, i32 1, i64 0
  %arrayidx9 = getelementptr inbounds float* %0, i64 %idxprom
  %4 = load float* %arrayidx9, align 4, !tbaa !3
  %conv10 = fpext float %4 to double
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* %arraydecay, double %conv10) #4
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  %cmp13 = icmp slt i32 %1, %mul
  br i1 %cmp13, label %if.then15, label %if.else45

if.then15:                                        ; preds = %if.else
  %tobool16 = icmp eq i32 %docomma.097, 0
  br i1 %tobool16, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.then15
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then17
  %fputc = call i32 @fputc(i32 40, %struct._IO_FILE* %fp)
  %6 = load i32* %code, align 4, !tbaa !4
  %add = add nsw i32 %6, %N
  call void @PushIntStack(%struct.intstack_s* %call2, i32 %add) #4
  %7 = load i32* %code, align 4, !tbaa !4
  %sub21 = sub nsw i32 %7, %N
  %idxprom22 = sext i32 %sub21 to i64
  %right = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom22, i32 2
  %8 = load i32* %right, align 4, !tbaa !4
  call void @PushIntStack(%struct.intstack_s* %call2, i32 %8) #4
  %9 = load i32* %code, align 4, !tbaa !4
  %sub24 = sub nsw i32 %9, %N
  %idxprom25 = sext i32 %sub24 to i64
  %left = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom25, i32 1
  %10 = load i32* %left, align 4, !tbaa !4
  call void @PushIntStack(%struct.intstack_s* %call2, i32 %10) #4
  %11 = load i32* %code, align 4, !tbaa !4
  %sub27 = sub nsw i32 %11, %N
  %idxprom28 = sext i32 %sub27 to i64
  %rblen = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom28, i32 5
  %12 = load float* %rblen, align 4, !tbaa !3
  %right33 = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom28, i32 2
  %13 = load i32* %right33, align 4, !tbaa !4
  %idxprom34 = sext i32 %13 to i64
  %arrayidx35 = getelementptr inbounds float* %0, i64 %idxprom34
  store float %12, float* %arrayidx35, align 4, !tbaa !3
  %lblen = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom28, i32 4
  %14 = load float* %lblen, align 4, !tbaa !3
  %left42 = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom28, i32 1
  %15 = load i32* %left42, align 4, !tbaa !4
  %idxprom43 = sext i32 %15 to i64
  %arrayidx44 = getelementptr inbounds float* %0, i64 %idxprom43
  store float %14, float* %arrayidx44, align 4, !tbaa !3
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end19, %if.end, %if.else51, %if.then49
  %docomma.0.be = phi i32 [ 1, %if.end ], [ 0, %if.end19 ], [ 1, %if.else51 ], [ 1, %if.then49 ]
  %call3 = call i32 @PopIntStack(%struct.intstack_s* %call2, i32* %code) #4
  %tobool = icmp eq i32 %call3, 0
  br i1 %tobool, label %while.end, label %while.body

if.else45:                                        ; preds = %if.else
  %cmp47 = icmp eq i32 %1, %mul
  br i1 %cmp47, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.else45
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp)
  br label %while.cond.backedge

if.else51:                                        ; preds = %if.else45
  %sub52 = sub nsw i32 %1, %N
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds float* %0, i64 %idxprom53
  %17 = load float* %arrayidx54, align 4, !tbaa !3
  %conv55 = fpext float %17 to double
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), double %conv55) #4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %entry
  %call60 = call i32 @FreeIntStack(%struct.intstack_s* %call2) #4
  call void @free(i8* %call) #4
  ret void
}

; Function Attrs: optsize
declare %struct.intstack_s* @InitIntStack() #1

; Function Attrs: optsize
declare void @PushIntStack(%struct.intstack_s*, i32) #1

; Function Attrs: optsize
declare i32 @PopIntStack(%struct.intstack_s*, i32*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i32 @FreeIntStack(%struct.intstack_s*) #1

; Function Attrs: nounwind optsize uwtable
define void @PrintPhylo(%struct._IO_FILE* nocapture %fp, %struct.aliinfo_s* nocapture %ainfo, %struct.phylo_s* nocapture %tree, i32 %N) #0 {
entry:
  %sub = add i32 %N, -1
  %cmp119 = icmp sgt i32 %sub, 0
  br i1 %cmp119, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sqinfo = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cond.end62, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end62 ]
  %idx.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end62 ]
  %add = add nsw i32 %idx.0120, %N
  %0 = trunc i64 %indvars.iv to i32
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str8, i64 0, i64 0), i32 %0, i32 %add) #4
  %parent = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 0
  %1 = load i32* %parent, align 4, !tbaa !4
  %sub1 = sub nsw i32 %1, %N
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0), i32 %sub1, i32 %1) #4
  %left = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 1
  %2 = load i32* %left, align 4, !tbaa !4
  %cmp8 = icmp slt i32 %2, %N
  %sub12 = select i1 %cmp8, i32 %N, i32 0
  %sub12. = sub nsw i32 %2, %sub12
  br i1 %cmp8, label %cond.true20, label %cond.end27

cond.true20:                                      ; preds = %for.body
  %idxprom24 = sext i32 %2 to i64
  %3 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.seqinfo_s* %3, i64 %idxprom24, i32 1, i64 0
  br label %cond.end27

cond.end27:                                       ; preds = %for.body, %cond.true20
  %cond28 = phi i8* [ %arraydecay, %cond.true20 ], [ getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), %for.body ]
  %lblen = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 4
  %4 = load float* %lblen, align 4, !tbaa !3
  %conv = fpext float %4 to double
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str10, i64 0, i64 0), i32 %sub12., i8* %cond28, double %conv) #4
  %right = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 2
  %5 = load i32* %right, align 4, !tbaa !4
  %cmp34 = icmp slt i32 %5, %N
  %sub40 = select i1 %cmp34, i32 %N, i32 0
  %sub40. = sub nsw i32 %5, %sub40
  br i1 %cmp34, label %cond.true52, label %cond.end62

cond.true52:                                      ; preds = %cond.end27
  %idxprom56 = sext i32 %5 to i64
  %6 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %arraydecay60 = getelementptr inbounds %struct.seqinfo_s* %6, i64 %idxprom56, i32 1, i64 0
  br label %cond.end62

cond.end62:                                       ; preds = %cond.end27, %cond.true52
  %cond63 = phi i8* [ %arraydecay60, %cond.true52 ], [ getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), %cond.end27 ]
  %rblen = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 5
  %7 = load float* %rblen, align 4, !tbaa !3
  %conv66 = fpext float %7 to double
  %call67 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str12, i64 0, i64 0), i32 %sub40., i8* %cond63, double %conv66) #4
  %diff = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 3
  %8 = load float* %diff, align 4, !tbaa !3
  %conv70 = fpext float %8 to double
  %call71 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), double %conv70) #4
  %incnum = getelementptr inbounds %struct.phylo_s* %tree, i64 %indvars.iv, i32 7
  %9 = load i32* %incnum, align 4, !tbaa !4
  %call74 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), i32 %9) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %idx.0120, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %cond.end62, %entry
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
