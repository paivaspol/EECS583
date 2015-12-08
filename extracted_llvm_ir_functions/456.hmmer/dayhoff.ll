; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@squid_errno = external global i32
@.str = private unnamed_addr constant [32 x i8] c"BLOSUM Clustered Scoring Matrix\00", align 1
@.str1 = private unnamed_addr constant [21 x i8] c"substitution matrix,\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str4 = private unnamed_addr constant [64 x i8] c"Failed to parse PAM matrix scale factor. Defaulting to ln(2)/2!\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @ParsePAMFile(%struct._IO_FILE* %fp, i32*** nocapture %ret_pam, float* %ret_scale) #0 {
entry:
  %buffer = alloca [512 x i8], align 16
  %order = alloca [27 x i32], align 16
  %0 = getelementptr inbounds [512 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 512, i8* %0) #1
  %1 = bitcast [27 x i32]* %order to i8*
  call void @llvm.lifetime.start(i64 108, i8* %1) #1
  %cmp = icmp eq %struct._IO_FILE* %fp, null
  br i1 %cmp, label %if.then, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %call181 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %fp) #6
  %cmp1182 = icmp eq i8* %call181, null
  br i1 %cmp1182, label %if.then2, label %if.end3

if.then:                                          ; preds = %entry
  store i32 2, i32* @squid_errno, align 4, !tbaa !0
  br label %cleanup

if.then2:                                         ; preds = %do.body.backedge, %do.body.preheader
  store i32 2, i32* @squid_errno, align 4, !tbaa !0
  br label %cleanup

if.end3:                                          ; preds = %do.body.preheader, %do.body.backedge
  %gotscale.0184 = phi i32 [ %gotscale.1, %do.body.backedge ], [ 0, %do.body.preheader ]
  %scale.0183 = phi float [ %scale.1, %do.body.backedge ], [ 0.000000e+00, %do.body.preheader ]
  %call5 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0)) #7
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %call8 = call i8* @strchr(i8* %0, i32 47) #7
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.else, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %incdec.ptr = getelementptr inbounds i8* %call8, i64 1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %idxprom = sext i8 %2 to i64
  %call11 = call i16** @__ctype_b_loc() #8
  %3 = load i16** %call11, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i16* %3, i64 %idxprom
  %4 = load i16* %arrayidx, align 2, !tbaa !4
  %and = and i16 %4, 2048
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  store i32 5, i32* @squid_errno, align 4, !tbaa !0
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  %call16 = call double @atof(i8* %incdec.ptr) #7
  %div = fdiv double 0x3FE62E42FEFA39EF, %call16
  %conv17 = fptrunc double %div to float
  br label %do.cond

if.else:                                          ; preds = %land.lhs.true, %if.end3
  %call19 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([21 x i8]* @.str1, i64 0, i64 0)) #7
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %do.cond, label %while.cond

while.cond:                                       ; preds = %if.else, %while.body
  %call24 = call i8* @strrchr(i8* %0, i32 61) #7
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %do.cond, label %while.body

while.body:                                       ; preds = %while.cond
  %add.ptr = getelementptr inbounds i8* %call24, i64 2
  %call27 = call i32 @IsReal(i8* %add.ptr) #6
  %tobool28 = icmp eq i32 %call27, 0
  br i1 %tobool28, label %while.cond, label %if.then29

if.then29:                                        ; preds = %while.body
  %call30 = call double @atof(i8* %add.ptr) #7
  %conv31 = fptrunc double %call30 to float
  br label %do.cond

do.cond:                                          ; preds = %while.cond, %if.else, %if.end14, %if.then29
  %scale.1 = phi float [ %conv17, %if.end14 ], [ %conv31, %if.then29 ], [ %scale.0183, %if.else ], [ %scale.0183, %while.cond ]
  %gotscale.1 = phi i32 [ 1, %if.end14 ], [ 1, %if.then29 ], [ %gotscale.0184, %if.else ], [ %gotscale.0184, %while.cond ]
  %call36 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #6
  %cmp37 = icmp eq i8* %call36, null
  br i1 %cmp37, label %do.body.backedge, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %5 = load i8* %call36, align 1, !tbaa !1
  %cmp40 = icmp eq i8 %5, 35
  br i1 %cmp40, label %do.body.backedge, label %do.body42

do.body.backedge:                                 ; preds = %lor.rhs, %do.cond
  %call = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %fp) #6
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

do.body42:                                        ; preds = %lor.rhs, %do.body42.do.body42_crit_edge
  %6 = phi i8 [ %.pre, %do.body42.do.body42_crit_edge ], [ %5, %lor.rhs ]
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %do.body42.do.body42_crit_edge ], [ 0, %lor.rhs ]
  %idx.0 = phi i32 [ %inc, %do.body42.do.body42_crit_edge ], [ 0, %lor.rhs ]
  %conv43 = sext i8 %6 to i32
  %sub = add nsw i32 %conv43, -65
  %arrayidx45 = getelementptr inbounds [27 x i32]* %order, i64 0, i64 %indvars.iv187
  %7 = icmp ult i32 %sub, 26
  %.sub = select i1 %7, i32 %sub, i32 26
  store i32 %.sub, i32* %arrayidx45, align 4, !tbaa !0
  %inc = add nsw i32 %idx.0, 1
  %call59 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #6
  %cmp60 = icmp eq i8* %call59, null
  br i1 %cmp60, label %do.end62, label %do.body42.do.body42_crit_edge

do.body42.do.body42_crit_edge:                    ; preds = %do.body42
  %indvars.iv.next188 = add i64 %indvars.iv187, 1
  %.pre = load i8* %call59, align 1, !tbaa !1
  br label %do.body42

do.end62:                                         ; preds = %do.body42
  %call63 = call noalias i8* @calloc(i64 27, i64 8) #6
  %8 = bitcast i8* %call63 to i32**
  %cmp64 = icmp eq i8* %call63, null
  br i1 %cmp64, label %if.then66, label %for.body

if.then66:                                        ; preds = %do.end62
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #6
  br label %for.body

for.cond78.preheader:                             ; preds = %for.inc
  %cmp79178 = icmp sgt i32 %idx.0, -1
  br i1 %cmp79178, label %for.body81, label %for.end131

for.body:                                         ; preds = %do.end62, %if.then66, %for.inc
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %for.inc ], [ 0, %if.then66 ], [ 0, %do.end62 ]
  %call70 = call noalias i8* @calloc(i64 27, i64 4) #6
  %9 = bitcast i8* %call70 to i32*
  %arrayidx72 = getelementptr inbounds i32** %8, i64 %indvars.iv185
  store i32* %9, i32** %arrayidx72, align 8, !tbaa !3
  %cmp73 = icmp eq i8* %call70, null
  br i1 %cmp73, label %if.then75, label %for.inc

if.then75:                                        ; preds = %for.body
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then75
  %indvars.iv.next186 = add i64 %indvars.iv185, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next186 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 27
  br i1 %exitcond, label %for.cond78.preheader, label %for.body

for.body81:                                       ; preds = %for.cond78.preheader, %for.inc129
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc129 ], [ 0, %for.cond78.preheader ]
  %call83 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %fp) #6
  %cmp84 = icmp eq i8* %call83, null
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %for.body81
  store i32 2, i32* @squid_errno, align 4, !tbaa !0
  br label %cleanup

if.end87:                                         ; preds = %for.body81
  %call89 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #6
  %cmp90 = icmp eq i8* %call89, null
  br i1 %cmp90, label %if.then92, label %for.body97.lr.ph

for.body97.lr.ph:                                 ; preds = %if.end87
  %arrayidx120 = getelementptr inbounds [27 x i32]* %order, i64 0, i64 %indvars.iv
  br label %for.body97

if.then92:                                        ; preds = %if.end87
  store i32 2, i32* @squid_errno, align 4, !tbaa !0
  br label %cleanup

for.body97:                                       ; preds = %for.body97.lr.ph, %if.end124
  %col.0177 = phi i32 [ 0, %for.body97.lr.ph ], [ %inc127, %if.end124 ]
  %sptr.1176 = phi i8* [ %call89, %for.body97.lr.ph ], [ %call125, %if.end124 ]
  %cmp98 = icmp eq i8* %sptr.1176, null
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %for.body97
  store i32 2, i32* @squid_errno, align 4, !tbaa !0
  br label %cleanup

if.end101:                                        ; preds = %for.body97
  %10 = load i8* %sptr.1176, align 1, !tbaa !1
  %cmp103 = icmp eq i8 %10, 42
  br i1 %cmp103, label %if.then113, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %if.end101
  %idxprom107 = sext i8 %10 to i64
  %call108 = call i16** @__ctype_b_loc() #8
  %11 = load i16** %call108, align 8, !tbaa !3
  %arrayidx109 = getelementptr inbounds i16* %11, i64 %idxprom107
  %12 = load i16* %arrayidx109, align 2, !tbaa !4
  %and111 = and i16 %12, 1024
  %tobool112 = icmp eq i16 %and111, 0
  br i1 %tobool112, label %if.else114, label %if.then113

if.then113:                                       ; preds = %lor.lhs.false105, %if.end101
  %dec = add nsw i32 %col.0177, -1
  br label %if.end124

if.else114:                                       ; preds = %lor.lhs.false105
  %call115 = call i32 @atoi(i8* %sptr.1176) #7
  %idxprom116 = sext i32 %col.0177 to i64
  %arrayidx117 = getelementptr inbounds [27 x i32]* %order, i64 0, i64 %idxprom116
  %13 = load i32* %arrayidx117, align 4, !tbaa !0
  %idxprom118 = sext i32 %13 to i64
  %14 = load i32* %arrayidx120, align 4, !tbaa !0
  %idxprom121 = sext i32 %14 to i64
  %arrayidx122 = getelementptr inbounds i32** %8, i64 %idxprom121
  %15 = load i32** %arrayidx122, align 8, !tbaa !3
  %arrayidx123 = getelementptr inbounds i32* %15, i64 %idxprom118
  store i32 %call115, i32* %arrayidx123, align 4, !tbaa !0
  br label %if.end124

if.end124:                                        ; preds = %if.else114, %if.then113
  %col.1 = phi i32 [ %dec, %if.then113 ], [ %col.0177, %if.else114 ]
  %call125 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #6
  %inc127 = add nsw i32 %col.1, 1
  %cmp95 = icmp slt i32 %inc127, %inc
  br i1 %cmp95, label %for.body97, label %for.inc129

for.inc129:                                       ; preds = %if.end124
  %indvars.iv.next = add i64 %indvars.iv, 1
  %16 = trunc i64 %indvars.iv.next to i32
  %cmp79 = icmp slt i32 %16, %inc
  br i1 %cmp79, label %for.body81, label %for.end131

for.end131:                                       ; preds = %for.inc129, %for.cond78.preheader
  %cmp132 = icmp eq float* %ret_scale, null
  br i1 %cmp132, label %if.end142, label %if.then134

if.then134:                                       ; preds = %for.end131
  %tobool135 = icmp eq i32 %gotscale.1, 0
  br i1 %tobool135, label %if.else137, label %if.then136

if.then136:                                       ; preds = %if.then134
  store float %scale.1, float* %ret_scale, align 4, !tbaa !5
  br label %if.end142

if.else137:                                       ; preds = %if.then134
  call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([64 x i8]* @.str4, i64 0, i64 0)) #6
  store float 0x3FD62E4300000000, float* %ret_scale, align 4, !tbaa !5
  br label %if.end142

if.end142:                                        ; preds = %for.end131, %if.then136, %if.else137
  store i32** %8, i32*** %ret_pam, align 8, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %if.then100, %if.then92, %if.then86, %if.then13, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then86 ], [ 0, %if.then92 ], [ 0, %if.then100 ], [ 1, %if.end142 ], [ 0, %if.then13 ]
  call void @llvm.lifetime.end(i64 108, i8* %1) #1
  call void @llvm.lifetime.end(i64 512, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: optsize
declare i32 @IsReal(i8*) #5

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #5

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #3

; Function Attrs: optsize
declare void @Warn(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
