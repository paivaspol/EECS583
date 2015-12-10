; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_ebin = type { i32, i8**, %struct.t_energy* }
%struct.t_energy = type { float, double, double, float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"eb\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"eb->e\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"eb->enm\00", align 1
@.str4 = private unnamed_addr constant [59 x i8] c"%s-%d: Energies out of range: index=%d nener=%d maxener=%d\00", align 1
@.str5 = private unnamed_addr constant [29 x i8] c"Invalid index in pr_ebin: %d\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"%15s\00", align 1
@.str8 = private unnamed_addr constant [33 x i8] c"Invalid print mode %d in pr_ebin\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"   %12.5e\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_ebin* @mk_ebin() #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 63, i32 1, i32 24) #6, !dbg !153
  %0 = bitcast i8* %call to %struct.t_ebin*, !dbg !153
  tail call void @llvm.dbg.value(metadata !{%struct.t_ebin* %0}, i64 0, metadata !40), !dbg !153
  ret %struct.t_ebin* %0, !dbg !154
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @get_ebin_space(%struct.t_ebin* nocapture %eb, i32 %nener, i8** nocapture %enm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_ebin* %eb}, i64 0, metadata !45), !dbg !155
  tail call void @llvm.dbg.value(metadata !{i32 %nener}, i64 0, metadata !46), !dbg !155
  tail call void @llvm.dbg.value(metadata !{i8** %enm}, i64 0, metadata !47), !dbg !155
  %nener1 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 0, !dbg !156
  %0 = load i32* %nener1, align 4, !dbg !156, !tbaa !157
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !48), !dbg !156
  %add = add nsw i32 %0, %nener, !dbg !160
  store i32 %add, i32* %nener1, align 4, !dbg !160, !tbaa !157
  %e = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 2, !dbg !161
  %1 = load %struct.t_energy** %e, align 8, !dbg !161, !tbaa !162
  %2 = bitcast %struct.t_energy* %1 to i8*, !dbg !161
  %mul = shl i32 %add, 5, !dbg !161
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 75, i8* %2, i32 %mul) #6, !dbg !161
  %3 = bitcast i8* %call to %struct.t_energy*, !dbg !161
  store %struct.t_energy* %3, %struct.t_energy** %e, align 8, !dbg !161, !tbaa !162
  %enm6 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 1, !dbg !163
  %4 = load i8*** %enm6, align 8, !dbg !163, !tbaa !162
  %5 = bitcast i8** %4 to i8*, !dbg !163
  %6 = load i32* %nener1, align 4, !dbg !163, !tbaa !157
  %mul9 = shl i32 %6, 3, !dbg !163
  %call11 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 76, i8* %5, i32 %mul9) #6, !dbg !163
  %7 = bitcast i8* %call11 to i8**, !dbg !163
  store i8** %7, i8*** %enm6, align 8, !dbg !163, !tbaa !162
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !49), !dbg !164
  %8 = load i32* %nener1, align 4, !dbg !164, !tbaa !157
  %cmp54 = icmp slt i32 %0, %8, !dbg !164
  br i1 %cmp54, label %for.body.lr.ph, label %for.end, !dbg !164

for.body.lr.ph:                                   ; preds = %entry
  %9 = sext i32 %0 to i64
  br label %for.body, !dbg !164

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %10 = load %struct.t_energy** %e, align 8, !dbg !166, !tbaa !162
  %e16 = getelementptr inbounds %struct.t_energy* %10, i64 %indvars.iv, i32 0, !dbg !166
  store float 0.000000e+00, float* %e16, align 4, !dbg !166, !tbaa !168
  %eav = getelementptr inbounds %struct.t_energy* %10, i64 %indvars.iv, i32 1, !dbg !169
  %11 = trunc i64 %indvars.iv to i32, !dbg !170
  %sub = sub nsw i32 %11, %0, !dbg !170
  %idxprom26 = sext i32 %sub to i64, !dbg !170
  %arrayidx27 = getelementptr inbounds i8** %enm, i64 %idxprom26, !dbg !170
  %12 = bitcast double* %eav to i8*, !dbg !170
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 20, i32 8, i1 false), !dbg !169
  %13 = load i8** %arrayidx27, align 8, !dbg !170, !tbaa !162
  %call28 = tail call noalias i8* @strdup(i8* %13) #6, !dbg !170
  %14 = load i8*** %enm6, align 8, !dbg !170, !tbaa !162
  %arrayidx31 = getelementptr inbounds i8** %14, i64 %indvars.iv, !dbg !170
  store i8* %call28, i8** %arrayidx31, align 8, !dbg !170, !tbaa !162
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !164
  %15 = load i32* %nener1, align 4, !dbg !164, !tbaa !157
  %16 = trunc i64 %indvars.iv.next to i32, !dbg !164
  %cmp = icmp slt i32 %16, %15, !dbg !164
  br i1 %cmp, label %for.body, label %for.end, !dbg !164

for.end:                                          ; preds = %for.body, %entry
  ret i32 %0, !dbg !171
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @add_ebin(%struct.t_ebin* nocapture %eb, i32 %index, i32 %nener, float* nocapture %ener, i32 %step) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_ebin* %eb}, i64 0, metadata !55), !dbg !172
  tail call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !56), !dbg !172
  tail call void @llvm.dbg.value(metadata !{i32 %nener}, i64 0, metadata !57), !dbg !172
  tail call void @llvm.dbg.value(metadata !{float* %ener}, i64 0, metadata !58), !dbg !172
  tail call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !59), !dbg !172
  %add = add nsw i32 %nener, %index, !dbg !173
  %nener1 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 0, !dbg !173
  %0 = load i32* %nener1, align 4, !dbg !173, !tbaa !157
  %cmp = icmp sgt i32 %add, %0, !dbg !173
  %cmp2 = icmp slt i32 %index, 0, !dbg !173
  %or.cond = or i1 %cmp, %cmp2, !dbg !173
  br i1 %or.cond, label %if.then, label %if.end, !dbg !173

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([59 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 95, i32 %index, i32 %nener, i32 %0) #6, !dbg !174
  br label %if.end, !dbg !174

if.end:                                           ; preds = %entry, %if.then
  tail call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !61), !dbg !175
  %cmp4 = icmp sgt i32 %step, 0, !dbg !176
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !176

if.then5:                                         ; preds = %if.end
  %conv = sitofp i32 %step to double, !dbg !177
  %div = fdiv double 1.000000e+00, %conv, !dbg !177
  %add7 = fadd double %conv, 1.000000e+00, !dbg !177
  %div8 = fdiv double %div, %add7, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double %div8}, i64 0, metadata !65), !dbg !177
  br label %if.end9, !dbg !177

if.end9:                                          ; preds = %if.end, %if.then5
  %invmm.0 = phi double [ %div8, %if.then5 ], [ 0.000000e+00, %if.end ]
  %idxprom = sext i32 %index to i64, !dbg !178
  %e10 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 2, !dbg !178
  %1 = load %struct.t_energy** %e10, align 8, !dbg !178, !tbaa !162
  tail call void @llvm.dbg.value(metadata !10, i64 0, metadata !60), !dbg !179
  %cmp1154 = icmp sgt i32 %nener, 0, !dbg !179
  br i1 %cmp1154, label %for.body.lr.ph, label %for.end, !dbg !179

for.body.lr.ph:                                   ; preds = %if.end9
  %conv22 = sitofp i32 %step to double, !dbg !181
  br label %for.body, !dbg !179

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx14 = getelementptr inbounds float* %ener, i64 %indvars.iv, !dbg !183
  %2 = load float* %arrayidx14, align 4, !dbg !183, !tbaa !168
  %conv15 = fpext float %2 to double, !dbg !183
  tail call void @llvm.dbg.value(metadata !{double %conv15}, i64 0, metadata !62), !dbg !183
  %arrayidx.sum = add i64 %indvars.iv, %idxprom, !dbg !184
  %e19 = getelementptr inbounds %struct.t_energy* %1, i64 %arrayidx.sum, i32 0, !dbg !184
  store float %2, float* %e19, align 4, !dbg !184, !tbaa !168
  %esum = getelementptr inbounds %struct.t_energy* %1, i64 %arrayidx.sum, i32 2, !dbg !181
  %3 = load double* %esum, align 8, !dbg !181, !tbaa !185
  %mul = fmul double %conv22, %conv15, !dbg !181
  %sub = fsub double %3, %mul, !dbg !181
  %conv23 = fptrunc double %sub to float, !dbg !181
  tail call void @llvm.dbg.value(metadata !{float %conv23}, i64 0, metadata !186), !dbg !187
  %mul.i = fmul float %conv23, %conv23, !dbg !188
  %conv24 = fpext float %mul.i to double, !dbg !181
  %mul25 = fmul double %invmm.0, %conv24, !dbg !181
  %eav = getelementptr inbounds %struct.t_energy* %1, i64 %arrayidx.sum, i32 1, !dbg !181
  %4 = load double* %eav, align 8, !dbg !181, !tbaa !185
  %add28 = fadd double %4, %mul25, !dbg !181
  store double %add28, double* %eav, align 8, !dbg !181, !tbaa !185
  %add32 = fadd double %conv15, %3, !dbg !190
  store double %add32, double* %esum, align 8, !dbg !190, !tbaa !185
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !179
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !179
  %exitcond = icmp eq i32 %lftr.wideiv, %nener, !dbg !179
  br i1 %exitcond, label %for.end, label %for.body, !dbg !179

for.end:                                          ; preds = %for.body, %if.end9
  ret void, !dbg !191
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @pr_ebin(%struct._IO_FILE* nocapture %fp, %struct.t_ebin* nocapture %eb, i32 %index, i32 %nener, i32 %nperline, i32 %prmode, i32 %tsteps, i32 %bPrHead) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !126), !dbg !192
  tail call void @llvm.dbg.value(metadata !{%struct.t_ebin* %eb}, i64 0, metadata !127), !dbg !192
  tail call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !128), !dbg !192
  tail call void @llvm.dbg.value(metadata !{i32 %nener}, i64 0, metadata !129), !dbg !192
  tail call void @llvm.dbg.value(metadata !{i32 %nperline}, i64 0, metadata !130), !dbg !192
  tail call void @llvm.dbg.value(metadata !{i32 %prmode}, i64 0, metadata !131), !dbg !193
  tail call void @llvm.dbg.value(metadata !{i32 %tsteps}, i64 0, metadata !132), !dbg !193
  tail call void @llvm.dbg.value(metadata !{i32 %bPrHead}, i64 0, metadata !133), !dbg !193
  tail call void @llvm.dbg.value(metadata !194, i64 0, metadata !137), !dbg !195
  %cmp = icmp slt i32 %index, 0, !dbg !196
  br i1 %cmp, label %if.then, label %if.end, !dbg !196

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str5, i64 0, i64 0), i32 %index) #6, !dbg !197
  br label %if.end, !dbg !197

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq i32 %nener, -1, !dbg !198
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !198

if.then2:                                         ; preds = %if.end
  %nener3 = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 0, !dbg !199
  %0 = load i32* %nener3, align 4, !dbg !199, !tbaa !157
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !129), !dbg !199
  br label %if.end4, !dbg !199

if.else:                                          ; preds = %if.end
  %add = add nsw i32 %nener, %index, !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !129), !dbg !200
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %nener.addr.0 = phi i32 [ %0, %if.then2 ], [ %add, %if.else ]
  tail call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !134), !dbg !201
  %cmp596 = icmp sgt i32 %nener.addr.0, %index, !dbg !201
  br i1 %cmp596, label %for.body.lr.ph, label %for.end50, !dbg !201

for.body.lr.ph:                                   ; preds = %if.end4
  %tobool = icmp eq i32 %bPrHead, 0, !dbg !203
  %cmp884 = icmp sgt i32 %nperline, 0, !dbg !205
  %enm = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 1, !dbg !208
  %e = getelementptr inbounds %struct.t_ebin* %eb, i64 0, i32 2, !dbg !209
  %conv.i = sitofp i32 %tsteps to double, !dbg !212
  %1 = sub i32 0, %nperline, !dbg !201
  br label %for.body, !dbg !201

for.body:                                         ; preds = %for.body.lr.ph, %for.end48
  %ee.098 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %ee.1.lcssa, %for.end48 ]
  %i.097 = phi i32 [ %index, %for.body.lr.ph ], [ %i.3.lcssa, %for.end48 ]
  br i1 %tobool, label %for.cond14.preheader, label %for.cond7.preheader, !dbg !203

for.cond7.preheader:                              ; preds = %for.body
  %cmp985 = icmp slt i32 %i.097, %nener.addr.0, !dbg !205
  %cmp9.86 = and i1 %cmp884, %cmp985, !dbg !205
  br i1 %cmp9.86, label %for.body10.lr.ph, label %for.end

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %2 = sext i32 %i.097 to i64
  %3 = sub i32 %i.097, %nener.addr.0
  %4 = icmp ult i32 %3, %1
  %umax = select i1 %4, i32 %1, i32 %3
  %5 = sub i32 0, %umax
  br label %for.body10

for.body10:                                       ; preds = %for.body10, %for.body10.lr.ph
  %indvars.iv = phi i64 [ %2, %for.body10.lr.ph ], [ %indvars.iv.next, %for.body10 ]
  %j.088 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %for.body10 ]
  %6 = load i8*** %enm, align 8, !dbg !208, !tbaa !162
  %arrayidx = getelementptr inbounds i8** %6, i64 %indvars.iv, !dbg !208
  %7 = load i8** %arrayidx, align 8, !dbg !208, !tbaa !162
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* %7) #6, !dbg !208
  %inc = add nsw i32 %j.088, 1, !dbg !205
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !135), !dbg !205
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %inc, %5
  br i1 %exitcond, label %for.end, label %for.body10

for.end:                                          ; preds = %for.body10, %for.cond7.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !214
  tail call void @llvm.dbg.value(metadata !{i32 %i.097}, i64 0, metadata !134), !dbg !215
  br label %for.cond14.preheader, !dbg !216

for.cond14.preheader:                             ; preds = %for.body, %for.end
  %cmp1790 = icmp slt i32 %i.097, %nener.addr.0, !dbg !217
  %or.cond91 = and i1 %cmp884, %cmp1790, !dbg !217
  br i1 %or.cond91, label %for.body19.lr.ph, label %for.end48, !dbg !217

for.body19.lr.ph:                                 ; preds = %for.cond14.preheader
  %8 = sext i32 %i.097 to i64
  %9 = sub i32 %i.097, %nener.addr.0, !dbg !217
  %10 = icmp ult i32 %9, %1, !dbg !217
  %umax101 = select i1 %10, i32 %1, i32 %9, !dbg !217
  %11 = sub i32 0, %umax101, !dbg !217
  br label %for.body19, !dbg !217

for.body19:                                       ; preds = %if.end42, %for.body19.lr.ph
  %indvars.iv99 = phi i64 [ %8, %for.body19.lr.ph ], [ %indvars.iv.next100, %if.end42 ]
  %ee.194 = phi float [ %ee.098, %for.body19.lr.ph ], [ %ee.2, %if.end42 ]
  %j.193 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc46, %if.end42 ]
  switch i32 %prmode, label %if.else39 [
    i32 0, label %if.then21
    i32 2, label %if.then27
    i32 1, label %if.then34
  ], !dbg !218

if.then21:                                        ; preds = %for.body19
  %12 = load %struct.t_energy** %e, align 8, !dbg !209, !tbaa !162
  %e24 = getelementptr inbounds %struct.t_energy* %12, i64 %indvars.iv99, i32 0, !dbg !209
  %13 = load float* %e24, align 4, !dbg !209, !tbaa !168
  tail call void @llvm.dbg.value(metadata !{float %13}, i64 0, metadata !137), !dbg !209
  br label %if.end42, !dbg !209

if.then27:                                        ; preds = %for.body19
  %14 = load %struct.t_energy** %e, align 8, !dbg !213, !tbaa !162
  tail call void @llvm.dbg.value(metadata !{i32 %tsteps}, i64 0, metadata !219) #5, !dbg !220
  %esum.i = getelementptr inbounds %struct.t_energy* %14, i64 %indvars.iv99, i32 2, !dbg !212
  %15 = load double* %esum.i, align 8, !dbg !212, !tbaa !185
  %div.i = fdiv double %15, %conv.i, !dbg !212
  tail call void @llvm.dbg.value(metadata !{double %div.i}, i64 0, metadata !221) #5, !dbg !212
  %eav1.i = getelementptr inbounds %struct.t_energy* %14, i64 %indvars.iv99, i32 1, !dbg !222
  %16 = load double* %eav1.i, align 8, !dbg !222, !tbaa !185
  %div3.i = fdiv double %16, %conv.i, !dbg !222
  %call.i = tail call double @sqrt(double %div3.i) #6, !dbg !222
  tail call void @llvm.dbg.value(metadata !{double %call.i}, i64 0, metadata !223) #5, !dbg !222
  %call4.i = tail call double @fabs(double %div.i) #7, !dbg !224
  %cmp.i = fcmp ogt double %call4.i, 1.200000e-38, !dbg !224
  br i1 %cmp.i, label %if.then.i, label %rms_ener.exit, !dbg !224

if.then.i:                                        ; preds = %if.then27
  %div6.i = fdiv double %call.i, %div.i, !dbg !225
  %call7.i = tail call double @fabs(double %div6.i) #7, !dbg !225
  %cmp8.i = fcmp olt double %call7.i, 1.000000e-06, !dbg !225
  br i1 %cmp8.i, label %if.then10.i, label %rms_ener.exit, !dbg !225

if.then10.i:                                      ; preds = %if.then.i
  tail call void @llvm.dbg.value(metadata !226, i64 0, metadata !223) #5, !dbg !227
  br label %rms_ener.exit, !dbg !227

rms_ener.exit:                                    ; preds = %if.then27, %if.then.i, %if.then10.i
  %rms.0.i = phi double [ 0.000000e+00, %if.then10.i ], [ %call.i, %if.then.i ], [ %call.i, %if.then27 ]
  %conv12.i = fptrunc double %rms.0.i to float, !dbg !228
  tail call void @llvm.dbg.value(metadata !{float %conv12.i}, i64 0, metadata !137), !dbg !213
  br label %if.end42, !dbg !213

if.then34:                                        ; preds = %for.body19
  %17 = load %struct.t_energy** %e, align 8, !dbg !229, !tbaa !162
  %esum = getelementptr inbounds %struct.t_energy* %17, i64 %indvars.iv99, i32 2, !dbg !229
  %18 = load double* %esum, align 8, !dbg !229, !tbaa !185
  %div = fdiv double %18, %conv.i, !dbg !229
  %conv38 = fptrunc double %div to float, !dbg !229
  tail call void @llvm.dbg.value(metadata !{float %conv38}, i64 0, metadata !137), !dbg !229
  br label %if.end42, !dbg !229

if.else39:                                        ; preds = %for.body19
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str8, i64 0, i64 0), i32 %prmode) #6, !dbg !230
  br label %if.end42

if.end42:                                         ; preds = %rms_ener.exit, %if.else39, %if.then34, %if.then21
  %ee.2 = phi float [ %13, %if.then21 ], [ %conv12.i, %rms_ener.exit ], [ %conv38, %if.then34 ], [ %ee.194, %if.else39 ]
  %conv43 = fpext float %ee.2 to double, !dbg !231
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), double %conv43) #6, !dbg !231
  %inc46 = add nsw i32 %j.193, 1, !dbg !217
  tail call void @llvm.dbg.value(metadata !{i32 %inc46}, i64 0, metadata !135), !dbg !217
  %indvars.iv.next100 = add i64 %indvars.iv99, 1, !dbg !217
  tail call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !134), !dbg !217
  %exitcond102 = icmp eq i32 %inc46, %11, !dbg !217
  br i1 %exitcond102, label %for.cond14.for.end48_crit_edge, label %for.body19, !dbg !217

for.cond14.for.end48_crit_edge:                   ; preds = %if.end42
  %19 = sub i32 %i.097, %umax101, !dbg !217
  br label %for.end48, !dbg !217

for.end48:                                        ; preds = %for.cond14.for.end48_crit_edge, %for.cond14.preheader
  %ee.1.lcssa = phi float [ %ee.2, %for.cond14.for.end48_crit_edge ], [ %ee.098, %for.cond14.preheader ]
  %i.3.lcssa = phi i32 [ %19, %for.cond14.for.end48_crit_edge ], [ %i.097, %for.cond14.preheader ]
  %fputc83 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !232
  %cmp5 = icmp slt i32 %i.3.lcssa, %nener.addr.0, !dbg !201
  br i1 %cmp5, label %for.body, label %for.end50, !dbg !201

for.end50:                                        ; preds = %for.end48, %if.end4
  ret void, !dbg !233
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !10, metadata !11, metadata !10, metadata !10, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 50, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 50, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9}
!6 = metadata !{i32 786472, metadata !"eprNORMAL", i64 0} ; [ DW_TAG_enumerator ] [eprNORMAL :: 0]
!7 = metadata !{i32 786472, metadata !"eprAVER", i64 1} ; [ DW_TAG_enumerator ] [eprAVER :: 1]
!8 = metadata !{i32 786472, metadata !"eprRMS", i64 2} ; [ DW_TAG_enumerator ] [eprRMS :: 2]
!9 = metadata !{i32 786472, metadata !"eprNR", i64 3} ; [ DW_TAG_enumerator ] [eprNR :: 3]
!10 = metadata !{i32 0}
!11 = metadata !{metadata !12, metadata !41, metadata !50, metadata !67, metadata !138, metadata !146}
!12 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"mk_ebin", metadata !"mk_ebin", metadata !"", i32 59, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_ebin* ()* @mk_ebin, null, null, metadata !39, i32 60} ; [ DW_TAG_subprogram ] [line 59] [def] [scope 60] [mk_ebin]
!13 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c]
!14 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_ebin]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"t_ebin", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [t_ebin] [line 48, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 44, i64 192, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 44, size 192, align 64, offset 0] [from ]
!19 = metadata !{metadata !20, metadata !22, metadata !26}
!20 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"nener", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [nener] [line 45, size 32, align 32, offset 0] [from int]
!21 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!22 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"enm", i32 46, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [enm] [line 46, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!25 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!26 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"e", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [e] [line 47, size 64, align 64, offset 128] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_energy]
!28 = metadata !{i32 786454, metadata !4, null, metadata !"t_energy", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [t_energy] [line 41, size 0, align 0, offset 0] [from ]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"", i32 36, i64 256, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 256, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/energy.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !35, metadata !37, metadata !38}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"e", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [e] [line 37, size 32, align 32, offset 0] [from real]
!33 = metadata !{i32 786454, metadata !30, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!34 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"eav", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [eav] [line 38, size 64, align 64, offset 64] [from double]
!36 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!37 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"esum", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [esum] [line 39, size 64, align 64, offset 128] [from double]
!38 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"e2sum", i32 40, i64 32, i64 32, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [e2sum] [line 40, size 32, align 32, offset 192] [from real]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786688, metadata !12, metadata !"eb", metadata !13, i32 61, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eb] [line 61]
!41 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"get_ebin_space", metadata !"get_ebin_space", metadata !"", i32 68, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.t_ebin*, i32, i8**)* @get_ebin_space, null, null, metadata !44, i32 69} ; [ DW_TAG_subprogram ] [line 68] [def] [scope 69] [get_ebin_space]
!42 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{metadata !21, metadata !16, metadata !21, metadata !23}
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48, metadata !49}
!45 = metadata !{i32 786689, metadata !41, metadata !"eb", metadata !13, i32 16777284, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eb] [line 68]
!46 = metadata !{i32 786689, metadata !41, metadata !"nener", metadata !13, i32 33554500, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nener] [line 68]
!47 = metadata !{i32 786689, metadata !41, metadata !"enm", metadata !13, i32 50331716, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [enm] [line 68]
!48 = metadata !{i32 786688, metadata !41, metadata !"index", metadata !13, i32 70, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 70]
!49 = metadata !{i32 786688, metadata !41, metadata !"i", metadata !13, i32 71, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 71]
!50 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"add_ebin", metadata !"add_ebin", metadata !"", i32 87, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_ebin*, i32, i32, float*, i32)* @add_ebin, null, null, metadata !54, i32 88} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 88] [add_ebin]
!51 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{null, metadata !16, metadata !21, metadata !21, metadata !53, metadata !21}
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!55 = metadata !{i32 786689, metadata !50, metadata !"eb", metadata !13, i32 16777303, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eb] [line 87]
!56 = metadata !{i32 786689, metadata !50, metadata !"index", metadata !13, i32 33554519, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 87]
!57 = metadata !{i32 786689, metadata !50, metadata !"nener", metadata !13, i32 50331735, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nener] [line 87]
!58 = metadata !{i32 786689, metadata !50, metadata !"ener", metadata !13, i32 67108951, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ener] [line 87]
!59 = metadata !{i32 786689, metadata !50, metadata !"step", metadata !13, i32 83886167, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 87]
!60 = metadata !{i32 786688, metadata !50, metadata !"i", metadata !13, i32 89, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 89]
!61 = metadata !{i32 786688, metadata !50, metadata !"m", metadata !13, i32 89, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 89]
!62 = metadata !{i32 786688, metadata !50, metadata !"e", metadata !13, i32 90, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 90]
!63 = metadata !{i32 786688, metadata !50, metadata !"sum", metadata !13, i32 90, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 90]
!64 = metadata !{i32 786688, metadata !50, metadata !"sigma", metadata !13, i32 90, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sigma] [line 90]
!65 = metadata !{i32 786688, metadata !50, metadata !"invmm", metadata !13, i32 90, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [invmm] [line 90]
!66 = metadata !{i32 786688, metadata !50, metadata !"eg", metadata !13, i32 91, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eg] [line 91]
!67 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"pr_ebin", metadata !"pr_ebin", metadata !"", i32 116, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_ebin*, i32, i32, i32, i32, i32, i32)* @pr_ebin, null, null, metadata !125, i32 118} ; [ DW_TAG_subprogram ] [line 116] [def] [scope 118] [pr_ebin]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{null, metadata !70, metadata !16, metadata !21, metadata !21, metadata !21, metadata !21, metadata !21, metadata !21}
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!71 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!72 = metadata !{i32 786451, metadata !73, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !74, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!73 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !95, metadata !96, metadata !97, metadata !98, metadata !101, metadata !103, metadata !105, metadata !109, metadata !111, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !120, metadata !121}
!75 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!76 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!77 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!78 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!79 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!80 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!81 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!82 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!83 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!84 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!85 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!86 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!87 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!89 = metadata !{i32 786451, metadata !73, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !90, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!90 = metadata !{metadata !91, metadata !92, metadata !94}
!91 = metadata !{i32 786445, metadata !73, metadata !89, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!92 = metadata !{i32 786445, metadata !73, metadata !89, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !93} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!94 = metadata !{i32 786445, metadata !73, metadata !89, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!95 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !93} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!96 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !21} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!97 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !21} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!98 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !99} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!99 = metadata !{i32 786454, metadata !73, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!100 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!101 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !102} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!102 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!103 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !104} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!104 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!105 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !106} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!106 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !25, metadata !107, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!109 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !110} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!111 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !112} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!112 = metadata !{i32 786454, metadata !73, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!113 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!114 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!115 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!116 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!117 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !118} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!118 = metadata !{i32 786454, metadata !73, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!119 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!120 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !21} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!121 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !122} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!122 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !25, metadata !123, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!123 = metadata !{metadata !124}
!124 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!125 = metadata !{metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137}
!126 = metadata !{i32 786689, metadata !67, metadata !"fp", metadata !13, i32 16777332, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 116]
!127 = metadata !{i32 786689, metadata !67, metadata !"eb", metadata !13, i32 33554548, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eb] [line 116]
!128 = metadata !{i32 786689, metadata !67, metadata !"index", metadata !13, i32 50331764, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 116]
!129 = metadata !{i32 786689, metadata !67, metadata !"nener", metadata !13, i32 67108980, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nener] [line 116]
!130 = metadata !{i32 786689, metadata !67, metadata !"nperline", metadata !13, i32 83886196, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nperline] [line 116]
!131 = metadata !{i32 786689, metadata !67, metadata !"prmode", metadata !13, i32 100663413, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prmode] [line 117]
!132 = metadata !{i32 786689, metadata !67, metadata !"tsteps", metadata !13, i32 117440629, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tsteps] [line 117]
!133 = metadata !{i32 786689, metadata !67, metadata !"bPrHead", metadata !13, i32 134217845, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bPrHead] [line 117]
!134 = metadata !{i32 786688, metadata !67, metadata !"i", metadata !13, i32 119, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 119]
!135 = metadata !{i32 786688, metadata !67, metadata !"j", metadata !13, i32 119, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 119]
!136 = metadata !{i32 786688, metadata !67, metadata !"i0", metadata !13, i32 119, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i0] [line 119]
!137 = metadata !{i32 786688, metadata !67, metadata !"ee", metadata !13, i32 120, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ee] [line 120]
!138 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"rms_ener", metadata !"rms_ener", metadata !"", i32 45, metadata !139, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !141, i32 46} ; [ DW_TAG_subprogram ] [line 45] [local] [def] [scope 46] [rms_ener]
!139 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{metadata !33, metadata !27, metadata !21}
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145}
!142 = metadata !{i32 786689, metadata !138, metadata !"e", metadata !13, i32 16777261, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 45]
!143 = metadata !{i32 786689, metadata !138, metadata !"nsteps", metadata !13, i32 33554477, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsteps] [line 45]
!144 = metadata !{i32 786688, metadata !138, metadata !"eav", metadata !13, i32 47, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eav] [line 47]
!145 = metadata !{i32 786688, metadata !138, metadata !"rms", metadata !13, i32 47, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rms] [line 47]
!146 = metadata !{i32 786478, metadata !147, metadata !148, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !149, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !151, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!147 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!148 = metadata !{i32 786473, metadata !147}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!149 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!150 = metadata !{metadata !33, metadata !33}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 786689, metadata !146, metadata !"x", metadata !148, i32 16777413, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!153 = metadata !{i32 63, i32 0, metadata !12, null}
!154 = metadata !{i32 65, i32 0, metadata !12, null}
!155 = metadata !{i32 68, i32 0, metadata !41, null}
!156 = metadata !{i32 73, i32 0, metadata !41, null}
!157 = metadata !{metadata !"int", metadata !158}
!158 = metadata !{metadata !"omnipotent char", metadata !159}
!159 = metadata !{metadata !"Simple C/C++ TBAA"}
!160 = metadata !{i32 74, i32 0, metadata !41, null}
!161 = metadata !{i32 75, i32 0, metadata !41, null}
!162 = metadata !{metadata !"any pointer", metadata !158}
!163 = metadata !{i32 76, i32 0, metadata !41, null}
!164 = metadata !{i32 77, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !41, i32 77, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c]
!166 = metadata !{i32 78, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !165, i32 77, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c]
!168 = metadata !{metadata !"float", metadata !158}
!169 = metadata !{i32 79, i32 0, metadata !167, null}
!170 = metadata !{i32 82, i32 0, metadata !167, null}
!171 = metadata !{i32 84, i32 0, metadata !41, null}
!172 = metadata !{i32 87, i32 0, metadata !50, null}
!173 = metadata !{i32 93, i32 0, metadata !50, null}
!174 = metadata !{i32 94, i32 0, metadata !50, null}
!175 = metadata !{i32 97, i32 0, metadata !50, null}
!176 = metadata !{i32 98, i32 0, metadata !50, null}
!177 = metadata !{i32 99, i32 0, metadata !50, null}
!178 = metadata !{i32 103, i32 0, metadata !50, null}
!179 = metadata !{i32 105, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !50, i32 105, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c]
!181 = metadata !{i32 111, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !180, i32 105, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c]
!183 = metadata !{i32 107, i32 0, metadata !182, null}
!184 = metadata !{i32 110, i32 0, metadata !182, null}
!185 = metadata !{metadata !"double", metadata !158}
!186 = metadata !{i32 786689, metadata !146, metadata !"x", metadata !148, i32 16777413, metadata !33, i32 0, metadata !181} ; [ DW_TAG_arg_variable ] [x] [line 197]
!187 = metadata !{i32 197, i32 0, metadata !146, metadata !181}
!188 = metadata !{i32 199, i32 0, metadata !189, metadata !181}
!189 = metadata !{i32 786443, metadata !147, metadata !146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!190 = metadata !{i32 112, i32 0, metadata !182, null}
!191 = metadata !{i32 114, i32 0, metadata !50, null}
!192 = metadata !{i32 116, i32 0, metadata !67, null}
!193 = metadata !{i32 117, i32 0, metadata !67, null}
!194 = metadata !{float 0.000000e+00}
!195 = metadata !{i32 120, i32 0, metadata !67, null}
!196 = metadata !{i32 122, i32 0, metadata !67, null}
!197 = metadata !{i32 123, i32 0, metadata !67, null}
!198 = metadata !{i32 124, i32 0, metadata !67, null}
!199 = metadata !{i32 125, i32 0, metadata !67, null}
!200 = metadata !{i32 127, i32 0, metadata !67, null}
!201 = metadata !{i32 128, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !67, i32 128, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c]
!203 = metadata !{i32 129, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !202, i32 128, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c]
!205 = metadata !{i32 131, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !207, i32 131, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c]
!207 = metadata !{i32 786443, metadata !1, metadata !204, i32 129, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c]
!208 = metadata !{i32 132, i32 0, metadata !206, null}
!209 = metadata !{i32 138, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !211, i32 136, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c]
!211 = metadata !{i32 786443, metadata !1, metadata !204, i32 136, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ebin.c]
!212 = metadata !{i32 49, i32 0, metadata !138, metadata !213}
!213 = metadata !{i32 140, i32 0, metadata !210, null}
!214 = metadata !{i32 133, i32 0, metadata !207, null}
!215 = metadata !{i32 134, i32 0, metadata !207, null}
!216 = metadata !{i32 135, i32 0, metadata !207, null}
!217 = metadata !{i32 136, i32 0, metadata !211, null}
!218 = metadata !{i32 137, i32 0, metadata !210, null}
!219 = metadata !{i32 786689, metadata !138, metadata !"nsteps", metadata !13, i32 33554477, metadata !21, i32 0, metadata !213} ; [ DW_TAG_arg_variable ] [nsteps] [line 45]
!220 = metadata !{i32 45, i32 0, metadata !138, metadata !213}
!221 = metadata !{i32 786688, metadata !138, metadata !"eav", metadata !13, i32 47, metadata !36, i32 0, metadata !213} ; [ DW_TAG_auto_variable ] [eav] [line 47]
!222 = metadata !{i32 50, i32 0, metadata !138, metadata !213}
!223 = metadata !{i32 786688, metadata !138, metadata !"rms", metadata !13, i32 47, metadata !36, i32 0, metadata !213} ; [ DW_TAG_auto_variable ] [rms] [line 47]
!224 = metadata !{i32 52, i32 0, metadata !138, metadata !213}
!225 = metadata !{i32 53, i32 0, metadata !138, metadata !213}
!226 = metadata !{double 0.000000e+00}
!227 = metadata !{i32 54, i32 0, metadata !138, metadata !213}
!228 = metadata !{i32 56, i32 0, metadata !138, metadata !213}
!229 = metadata !{i32 142, i32 0, metadata !210, null}
!230 = metadata !{i32 144, i32 0, metadata !210, null}
!231 = metadata !{i32 146, i32 0, metadata !210, null}
!232 = metadata !{i32 148, i32 0, metadata !204, null}
!233 = metadata !{i32 150, i32 0, metadata !67, null}
