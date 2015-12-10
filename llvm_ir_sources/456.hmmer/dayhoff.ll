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
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !88), !dbg !107
  call void @llvm.dbg.value(metadata !{i32*** %ret_pam}, i64 0, metadata !89), !dbg !107
  call void @llvm.dbg.value(metadata !{float* %ret_scale}, i64 0, metadata !90), !dbg !107
  %0 = getelementptr inbounds [512 x i8]* %buffer, i64 0, i64 0, !dbg !108
  call void @llvm.lifetime.start(i64 512, i8* %0) #2, !dbg !108
  call void @llvm.dbg.declare(metadata !{[512 x i8]* %buffer}, metadata !92), !dbg !108
  %1 = bitcast [27 x i32]* %order to i8*, !dbg !109
  call void @llvm.lifetime.start(i64 108, i8* %1) #2, !dbg !109
  call void @llvm.dbg.declare(metadata !{[27 x i32]* %order}, metadata !96), !dbg !109
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !106), !dbg !110
  call void @llvm.dbg.value(metadata !111, i64 0, metadata !105), !dbg !112
  %cmp = icmp eq %struct._IO_FILE* %fp, null, !dbg !113
  br i1 %cmp, label %if.then, label %do.body.preheader, !dbg !113

do.body.preheader:                                ; preds = %entry
  %call181 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %fp) #7, !dbg !114
  %cmp1182 = icmp eq i8* %call181, null, !dbg !114
  br i1 %cmp1182, label %if.then2, label %if.end3, !dbg !114

if.then:                                          ; preds = %entry
  store i32 2, i32* @squid_errno, align 4, !dbg !116, !tbaa !118
  br label %cleanup, !dbg !116

if.then2:                                         ; preds = %do.body.backedge, %do.body.preheader
  store i32 2, i32* @squid_errno, align 4, !dbg !121, !tbaa !118
  br label %cleanup, !dbg !121

if.end3:                                          ; preds = %do.body.preheader, %do.body.backedge
  %gotscale.0184 = phi i32 [ %gotscale.1, %do.body.backedge ], [ 0, %do.body.preheader ]
  %scale.0183 = phi float [ %scale.1, %do.body.backedge ], [ 0.000000e+00, %do.body.preheader ]
  %call5 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0)) #8, !dbg !123
  %cmp6 = icmp eq i8* %call5, null, !dbg !123
  br i1 %cmp6, label %if.else, label %land.lhs.true, !dbg !123

land.lhs.true:                                    ; preds = %if.end3
  %call8 = call i8* @strchr(i8* %0, i32 47) #8, !dbg !124
  call void @llvm.dbg.value(metadata !{i8* %call8}, i64 0, metadata !101), !dbg !124
  %cmp9 = icmp eq i8* %call8, null, !dbg !124
  br i1 %cmp9, label %if.else, label %if.then10, !dbg !124

if.then10:                                        ; preds = %land.lhs.true
  %incdec.ptr = getelementptr inbounds i8* %call8, i64 1, !dbg !125
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !101), !dbg !125
  %2 = load i8* %incdec.ptr, align 1, !dbg !127, !tbaa !119
  %idxprom = sext i8 %2 to i64, !dbg !127
  %call11 = call i16** @__ctype_b_loc() #9, !dbg !127
  %3 = load i16** %call11, align 8, !dbg !127, !tbaa !128
  %arrayidx = getelementptr inbounds i16* %3, i64 %idxprom, !dbg !127
  %4 = load i16* %arrayidx, align 2, !dbg !127, !tbaa !129
  %and = and i16 %4, 2048, !dbg !127
  %tobool = icmp eq i16 %and, 0, !dbg !127
  br i1 %tobool, label %if.then13, label %if.end14, !dbg !127

if.then13:                                        ; preds = %if.then10
  store i32 5, i32* @squid_errno, align 4, !dbg !130, !tbaa !118
  br label %cleanup, !dbg !130

if.end14:                                         ; preds = %if.then10
  %call16 = call double @atof(i8* %incdec.ptr) #8, !dbg !132
  %div = fdiv double 0x3FE62E42FEFA39EF, %call16, !dbg !132
  %conv17 = fptrunc double %div to float, !dbg !132
  call void @llvm.dbg.value(metadata !{float %conv17}, i64 0, metadata !105), !dbg !132
  call void @llvm.dbg.value(metadata !133, i64 0, metadata !106), !dbg !134
  br label %do.cond, !dbg !135

if.else:                                          ; preds = %land.lhs.true, %if.end3
  %call19 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([21 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !136
  %cmp20 = icmp eq i8* %call19, null, !dbg !136
  br i1 %cmp20, label %do.cond, label %while.cond, !dbg !136

while.cond:                                       ; preds = %if.else, %while.body
  %call24 = call i8* @strrchr(i8* %0, i32 61) #8, !dbg !137
  call void @llvm.dbg.value(metadata !{i8* %call24}, i64 0, metadata !101), !dbg !137
  %cmp25 = icmp eq i8* %call24, null, !dbg !137
  br i1 %cmp25, label %do.cond, label %while.body, !dbg !137

while.body:                                       ; preds = %while.cond
  %add.ptr = getelementptr inbounds i8* %call24, i64 2, !dbg !139
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !101), !dbg !139
  %call27 = call i32 @IsReal(i8* %add.ptr) #7, !dbg !141
  %tobool28 = icmp eq i32 %call27, 0, !dbg !141
  br i1 %tobool28, label %while.cond, label %if.then29, !dbg !141

if.then29:                                        ; preds = %while.body
  %call30 = call double @atof(i8* %add.ptr) #8, !dbg !142
  %conv31 = fptrunc double %call30 to float, !dbg !142
  call void @llvm.dbg.value(metadata !{float %conv31}, i64 0, metadata !105), !dbg !142
  call void @llvm.dbg.value(metadata !133, i64 0, metadata !106), !dbg !144
  br label %do.cond, !dbg !145

do.cond:                                          ; preds = %while.cond, %if.else, %if.end14, %if.then29
  %scale.1 = phi float [ %conv17, %if.end14 ], [ %conv31, %if.then29 ], [ %scale.0183, %if.else ], [ %scale.0183, %while.cond ]
  %gotscale.1 = phi i32 [ 1, %if.end14 ], [ 1, %if.then29 ], [ %gotscale.0184, %if.else ], [ %gotscale.0184, %while.cond ]
  %call36 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !146
  call void @llvm.dbg.value(metadata !{i8* %call36}, i64 0, metadata !101), !dbg !146
  %cmp37 = icmp eq i8* %call36, null, !dbg !146
  br i1 %cmp37, label %do.body.backedge, label %lor.rhs, !dbg !146

lor.rhs:                                          ; preds = %do.cond
  %5 = load i8* %call36, align 1, !dbg !146, !tbaa !119
  %cmp40 = icmp eq i8 %5, 35, !dbg !146
  br i1 %cmp40, label %do.body.backedge, label %do.body42, !dbg !146

do.body.backedge:                                 ; preds = %lor.rhs, %do.cond
  %call = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %fp) #7, !dbg !114
  %cmp1 = icmp eq i8* %call, null, !dbg !114
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !114

do.body42:                                        ; preds = %lor.rhs, %do.body42.do.body42_crit_edge
  %6 = phi i8 [ %.pre, %do.body42.do.body42_crit_edge ], [ %5, %lor.rhs ]
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %do.body42.do.body42_crit_edge ], [ 0, %lor.rhs ]
  %idx.0 = phi i32 [ %inc, %do.body42.do.body42_crit_edge ], [ 0, %lor.rhs ]
  %conv43 = sext i8 %6 to i32, !dbg !147
  %sub = add nsw i32 %conv43, -65, !dbg !147
  %arrayidx45 = getelementptr inbounds [27 x i32]* %order, i64 0, i64 %indvars.iv187, !dbg !147
  %7 = icmp ult i32 %sub, 26, !dbg !149
  %.sub = select i1 %7, i32 %sub, i32 26, !dbg !149
  store i32 %.sub, i32* %arrayidx45, align 4, !dbg !149, !tbaa !118
  %inc = add nsw i32 %idx.0, 1, !dbg !150
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !102), !dbg !150
  %call59 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !151
  call void @llvm.dbg.value(metadata !{i8* %call59}, i64 0, metadata !101), !dbg !151
  %cmp60 = icmp eq i8* %call59, null, !dbg !151
  br i1 %cmp60, label %do.end62, label %do.body42.do.body42_crit_edge, !dbg !151

do.body42.do.body42_crit_edge:                    ; preds = %do.body42
  %indvars.iv.next188 = add i64 %indvars.iv187, 1, !dbg !151
  %.pre = load i8* %call59, align 1, !dbg !147, !tbaa !119
  br label %do.body42, !dbg !151

do.end62:                                         ; preds = %do.body42
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !100), !dbg !152
  %call63 = call noalias i8* @calloc(i64 27, i64 8) #7, !dbg !153
  %8 = bitcast i8* %call63 to i32**, !dbg !153
  call void @llvm.dbg.value(metadata !{i32** %8}, i64 0, metadata !91), !dbg !153
  %cmp64 = icmp eq i8* %call63, null, !dbg !153
  br i1 %cmp64, label %if.then66, label %for.body, !dbg !153

if.then66:                                        ; preds = %do.end62
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !154
  br label %for.body, !dbg !154

for.cond78.preheader:                             ; preds = %for.inc
  %cmp79178 = icmp sgt i32 %idx.0, -1, !dbg !155
  br i1 %cmp79178, label %for.body81, label %for.end131, !dbg !155

for.body:                                         ; preds = %do.end62, %if.then66, %for.inc
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %for.inc ], [ 0, %if.then66 ], [ 0, %do.end62 ]
  %call70 = call noalias i8* @calloc(i64 27, i64 4) #7, !dbg !157
  %9 = bitcast i8* %call70 to i32*, !dbg !157
  %arrayidx72 = getelementptr inbounds i32** %8, i64 %indvars.iv185, !dbg !157
  store i32* %9, i32** %arrayidx72, align 8, !dbg !157, !tbaa !128
  %cmp73 = icmp eq i8* %call70, null, !dbg !157
  br i1 %cmp73, label %if.then75, label %for.inc, !dbg !157

if.then75:                                        ; preds = %for.body
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !159
  br label %for.inc, !dbg !159

for.inc:                                          ; preds = %for.body, %if.then75
  %indvars.iv.next186 = add i64 %indvars.iv185, 1, !dbg !160
  %lftr.wideiv = trunc i64 %indvars.iv.next186 to i32, !dbg !160
  %exitcond = icmp eq i32 %lftr.wideiv, 27, !dbg !160
  br i1 %exitcond, label %for.cond78.preheader, label %for.body, !dbg !160

for.body81:                                       ; preds = %for.cond78.preheader, %for.inc129
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc129 ], [ 0, %for.cond78.preheader ]
  %call83 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %fp) #7, !dbg !161
  %cmp84 = icmp eq i8* %call83, null, !dbg !161
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !161

if.then86:                                        ; preds = %for.body81
  store i32 2, i32* @squid_errno, align 4, !dbg !163, !tbaa !118
  br label %cleanup, !dbg !163

if.end87:                                         ; preds = %for.body81
  %call89 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !165
  call void @llvm.dbg.value(metadata !{i8* %call89}, i64 0, metadata !101), !dbg !165
  %cmp90 = icmp eq i8* %call89, null, !dbg !165
  br i1 %cmp90, label %if.then92, label %for.body97.lr.ph, !dbg !165

for.body97.lr.ph:                                 ; preds = %if.end87
  %arrayidx120 = getelementptr inbounds [27 x i32]* %order, i64 0, i64 %indvars.iv, !dbg !166
  br label %for.body97, !dbg !169

if.then92:                                        ; preds = %if.end87
  store i32 2, i32* @squid_errno, align 4, !dbg !170, !tbaa !118
  br label %cleanup, !dbg !170

for.body97:                                       ; preds = %for.body97.lr.ph, %if.end124
  %col.0177 = phi i32 [ 0, %for.body97.lr.ph ], [ %inc127, %if.end124 ]
  %sptr.1176 = phi i8* [ %call89, %for.body97.lr.ph ], [ %call125, %if.end124 ]
  %cmp98 = icmp eq i8* %sptr.1176, null, !dbg !172
  br i1 %cmp98, label %if.then100, label %if.end101, !dbg !172

if.then100:                                       ; preds = %for.body97
  store i32 2, i32* @squid_errno, align 4, !dbg !173, !tbaa !118
  br label %cleanup, !dbg !173

if.end101:                                        ; preds = %for.body97
  %10 = load i8* %sptr.1176, align 1, !dbg !175, !tbaa !119
  %cmp103 = icmp eq i8 %10, 42, !dbg !175
  br i1 %cmp103, label %if.then113, label %lor.lhs.false105, !dbg !175

lor.lhs.false105:                                 ; preds = %if.end101
  %idxprom107 = sext i8 %10 to i64, !dbg !175
  %call108 = call i16** @__ctype_b_loc() #9, !dbg !175
  %11 = load i16** %call108, align 8, !dbg !175, !tbaa !128
  %arrayidx109 = getelementptr inbounds i16* %11, i64 %idxprom107, !dbg !175
  %12 = load i16* %arrayidx109, align 2, !dbg !175, !tbaa !129
  %and111 = and i16 %12, 1024, !dbg !175
  %tobool112 = icmp eq i16 %and111, 0, !dbg !175
  br i1 %tobool112, label %if.else114, label %if.then113, !dbg !175

if.then113:                                       ; preds = %lor.lhs.false105, %if.end101
  %dec = add nsw i32 %col.0177, -1, !dbg !176
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !104), !dbg !176
  br label %if.end124, !dbg !176

if.else114:                                       ; preds = %lor.lhs.false105
  %call115 = call i32 @atoi(i8* %sptr.1176) #8, !dbg !166
  %idxprom116 = sext i32 %col.0177 to i64, !dbg !166
  %arrayidx117 = getelementptr inbounds [27 x i32]* %order, i64 0, i64 %idxprom116, !dbg !166
  %13 = load i32* %arrayidx117, align 4, !dbg !166, !tbaa !118
  %idxprom118 = sext i32 %13 to i64, !dbg !166
  %14 = load i32* %arrayidx120, align 4, !dbg !166, !tbaa !118
  %idxprom121 = sext i32 %14 to i64, !dbg !166
  %arrayidx122 = getelementptr inbounds i32** %8, i64 %idxprom121, !dbg !166
  %15 = load i32** %arrayidx122, align 8, !dbg !166, !tbaa !128
  %arrayidx123 = getelementptr inbounds i32* %15, i64 %idxprom118, !dbg !166
  store i32 %call115, i32* %arrayidx123, align 4, !dbg !166, !tbaa !118
  br label %if.end124

if.end124:                                        ; preds = %if.else114, %if.then113
  %col.1 = phi i32 [ %dec, %if.then113 ], [ %col.0177, %if.else114 ]
  %call125 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !177
  call void @llvm.dbg.value(metadata !{i8* %call125}, i64 0, metadata !101), !dbg !177
  %inc127 = add nsw i32 %col.1, 1, !dbg !169
  call void @llvm.dbg.value(metadata !{i32 %inc127}, i64 0, metadata !104), !dbg !169
  %cmp95 = icmp slt i32 %inc127, %inc, !dbg !169
  br i1 %cmp95, label %for.body97, label %for.inc129, !dbg !169

for.inc129:                                       ; preds = %if.end124
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !155
  %16 = trunc i64 %indvars.iv.next to i32, !dbg !155
  %cmp79 = icmp slt i32 %16, %inc, !dbg !155
  br i1 %cmp79, label %for.body81, label %for.end131, !dbg !155

for.end131:                                       ; preds = %for.inc129, %for.cond78.preheader
  %cmp132 = icmp eq float* %ret_scale, null, !dbg !178
  br i1 %cmp132, label %if.end142, label %if.then134, !dbg !178

if.then134:                                       ; preds = %for.end131
  %tobool135 = icmp eq i32 %gotscale.1, 0, !dbg !179
  br i1 %tobool135, label %if.else137, label %if.then136, !dbg !179

if.then136:                                       ; preds = %if.then134
  store float %scale.1, float* %ret_scale, align 4, !dbg !179, !tbaa !181
  br label %if.end142, !dbg !179

if.else137:                                       ; preds = %if.then134
  call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([64 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !182
  store float 0x3FD62E4300000000, float* %ret_scale, align 4, !dbg !184, !tbaa !181
  br label %if.end142

if.end142:                                        ; preds = %for.end131, %if.then136, %if.else137
  store i32** %8, i32*** %ret_pam, align 8, !dbg !185, !tbaa !128
  br label %cleanup, !dbg !186

cleanup:                                          ; preds = %if.end142, %if.then100, %if.then92, %if.then86, %if.then13, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then86 ], [ 0, %if.then92 ], [ 0, %if.then100 ], [ 1, %if.end142 ], [ 0, %if.then13 ]
  call void @llvm.lifetime.end(i64 108, i8* %1) #2, !dbg !186
  call void @llvm.lifetime.end(i64 512, i8* %0) #2, !dbg !186
  ret i32 %retval.0, !dbg !187
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: optsize
declare i32 @IsReal(i8*) #6

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #6

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: optsize
declare void @Warn(i8*, ...) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"ParsePAMFile", metadata !"ParsePAMFile", metadata !"", i32 64, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i32***, float*)* @ParsePAMFile, null, null, metadata !87, i32 65} ; [ DW_TAG_subprogram ] [line 64] [def] [scope 65] [ParsePAMFile]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !25, metadata !82, metadata !85}
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!26 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!27 = metadata !{i32 786451, metadata !28, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!28 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!29 = metadata !{metadata !30, metadata !31, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !52, metadata !53, metadata !54, metadata !55, metadata !58, metadata !60, metadata !62, metadata !66, metadata !68, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !77, metadata !78}
!30 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!33 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!34 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!36 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!37 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!38 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!39 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!40 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!41 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!42 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!43 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!44 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !45} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!46 = metadata !{i32 786451, metadata !28, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !47, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!47 = metadata !{metadata !48, metadata !49, metadata !51}
!48 = metadata !{i32 786445, metadata !28, metadata !46, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786445, metadata !28, metadata !46, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !50} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!51 = metadata !{i32 786445, metadata !28, metadata !46, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!52 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !50} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!53 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!54 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!55 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !56} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!56 = metadata !{i32 786454, metadata !28, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!57 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!58 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !59} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!59 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!60 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !61} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!61 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!62 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !63} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !33, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!66 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !67} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!68 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !69} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!69 = metadata !{i32 786454, metadata !28, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!70 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!71 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!72 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!73 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!74 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !75} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!75 = metadata !{i32 786454, metadata !28, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!76 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!77 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !24} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!78 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !79} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!79 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !33, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!86 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !96, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106}
!88 = metadata !{i32 786689, metadata !20, metadata !"fp", metadata !21, i32 16777280, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 64]
!89 = metadata !{i32 786689, metadata !20, metadata !"ret_pam", metadata !21, i32 33554496, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_pam] [line 64]
!90 = metadata !{i32 786689, metadata !20, metadata !"ret_scale", metadata !21, i32 50331712, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_scale] [line 64]
!91 = metadata !{i32 786688, metadata !20, metadata !"pam", metadata !21, i32 66, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pam] [line 66]
!92 = metadata !{i32 786688, metadata !20, metadata !"buffer", metadata !21, i32 67, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 67]
!93 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4096, i64 8, i32 0, i32 0, metadata !33, metadata !94, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4096, align 8, offset 0] [from char]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786465, i64 0, i64 512}      ; [ DW_TAG_subrange_type ] [0, 511]
!96 = metadata !{i32 786688, metadata !20, metadata !"order", metadata !21, i32 68, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [order] [line 68]
!97 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 864, i64 32, i32 0, i32 0, metadata !24, metadata !98, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 864, align 32, offset 0] [from int]
!98 = metadata !{metadata !99}
!99 = metadata !{i32 786465, i64 0, i64 27}       ; [ DW_TAG_subrange_type ] [0, 26]
!100 = metadata !{i32 786688, metadata !20, metadata !"nsymbols", metadata !21, i32 69, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nsymbols] [line 69]
!101 = metadata !{i32 786688, metadata !20, metadata !"sptr", metadata !21, i32 70, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sptr] [line 70]
!102 = metadata !{i32 786688, metadata !20, metadata !"idx", metadata !21, i32 71, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 71]
!103 = metadata !{i32 786688, metadata !20, metadata !"row", metadata !21, i32 72, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 72]
!104 = metadata !{i32 786688, metadata !20, metadata !"col", metadata !21, i32 72, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 72]
!105 = metadata !{i32 786688, metadata !20, metadata !"scale", metadata !21, i32 73, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scale] [line 73]
!106 = metadata !{i32 786688, metadata !20, metadata !"gotscale", metadata !21, i32 74, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gotscale] [line 74]
!107 = metadata !{i32 64, i32 0, metadata !20, null}
!108 = metadata !{i32 67, i32 0, metadata !20, null}
!109 = metadata !{i32 68, i32 0, metadata !20, null}
!110 = metadata !{i32 74, i32 0, metadata !20, null}
!111 = metadata !{float 0.000000e+00}
!112 = metadata !{i32 76, i32 0, metadata !20, null}
!113 = metadata !{i32 77, i32 0, metadata !20, null}
!114 = metadata !{i32 84, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !20, i32 83, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!116 = metadata !{i32 77, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !20, i32 77, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!118 = metadata !{metadata !"int", metadata !119}
!119 = metadata !{metadata !"omnipotent char", metadata !120}
!120 = metadata !{metadata !"Simple C/C++ TBAA"}
!121 = metadata !{i32 85, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !115, i32 85, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!123 = metadata !{i32 96, i32 0, metadata !115, null}
!124 = metadata !{i32 97, i32 0, metadata !115, null}
!125 = metadata !{i32 99, i32 0, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !115, i32 98, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!127 = metadata !{i32 100, i32 0, metadata !126, null}
!128 = metadata !{metadata !"any pointer", metadata !119}
!129 = metadata !{metadata !"short", metadata !119}
!130 = metadata !{i32 100, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !126, i32 100, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!132 = metadata !{i32 101, i32 0, metadata !126, null}
!133 = metadata !{i32 1}
!134 = metadata !{i32 102, i32 0, metadata !126, null}
!135 = metadata !{i32 103, i32 0, metadata !126, null}
!136 = metadata !{i32 104, i32 0, metadata !115, null}
!137 = metadata !{i32 106, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !115, i32 105, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!139 = metadata !{i32 107, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !138, i32 106, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!141 = metadata !{i32 108, i32 0, metadata !140, null}
!142 = metadata !{i32 109, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !140, i32 108, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!144 = metadata !{i32 110, i32 0, metadata !143, null}
!145 = metadata !{i32 111, i32 0, metadata !143, null}
!146 = metadata !{i32 115, i32 0, metadata !20, null}
!147 = metadata !{i32 119, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !20, i32 118, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!149 = metadata !{i32 120, i32 0, metadata !148, null}
!150 = metadata !{i32 121, i32 0, metadata !148, null}
!151 = metadata !{i32 122, i32 0, metadata !20, null}
!152 = metadata !{i32 123, i32 0, metadata !20, null}
!153 = metadata !{i32 130, i32 0, metadata !20, null}
!154 = metadata !{i32 131, i32 0, metadata !20, null}
!155 = metadata !{i32 138, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !20, i32 138, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!157 = metadata !{i32 133, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !20, i32 132, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!159 = metadata !{i32 134, i32 0, metadata !158, null}
!160 = metadata !{i32 132, i32 0, metadata !158, null}
!161 = metadata !{i32 140, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !156, i32 139, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!163 = metadata !{i32 141, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !162, i32 141, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!165 = metadata !{i32 143, i32 0, metadata !162, null}
!166 = metadata !{i32 154, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !168, i32 146, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!168 = metadata !{i32 786443, metadata !1, metadata !162, i32 145, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!169 = metadata !{i32 145, i32 0, metadata !168, null}
!170 = metadata !{i32 144, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !162, i32 144, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!172 = metadata !{i32 147, i32 0, metadata !167, null}
!173 = metadata !{i32 147, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !167, i32 147, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!175 = metadata !{i32 151, i32 0, metadata !167, null}
!176 = metadata !{i32 152, i32 0, metadata !167, null}
!177 = metadata !{i32 156, i32 0, metadata !167, null}
!178 = metadata !{i32 162, i32 0, metadata !20, null}
!179 = metadata !{i32 164, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !20, i32 163, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!181 = metadata !{metadata !"float", metadata !119}
!182 = metadata !{i32 167, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !180, i32 166, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/dayhoff.c]
!184 = metadata !{i32 168, i32 0, metadata !183, null}
!185 = metadata !{i32 171, i32 0, metadata !20, null}
!186 = metadata !{i32 172, i32 0, metadata !20, null}
!187 = metadata !{i32 173, i32 0, metadata !20, null}
