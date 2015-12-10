; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.anon = type { double, double, i8*, i32, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }

@CCTK_MainLoopIndex = external global i32 ()*
@.str = private unnamed_addr constant [14 x i8] c"CCTK_ANALYSIS\00", align 1
@CCTK_OutputGH = external global i32 (%struct.cGH*)*
@.str1 = private unnamed_addr constant [76 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [83 x i8] c"Variable '%s' has multiple timelevels, default Cactus evolve routine cannot rotate\00", align 1
@CCTK_SetMainLoopIndex = external global i32 (i32)*
@.str4 = private unnamed_addr constant [16 x i8] c"CCTK_CHECKPOINT\00", align 1
@cactus_terminate = common global i32 0, align 4
@.str5 = private unnamed_addr constant [13 x i8] c"CCTK_PRESTEP\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"CCTK_EVOL\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"CCTK_POSTSTEP\00", align 1
@cactusrest_ = external global %struct.anon
@.str8 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"iteration\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"either\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str12 = private unnamed_addr constant [95 x i8] c"$Header: /cactus/Cactus/src/main/CactusDefaultEvolve.c,v 1.55 2001/09/20 21:46:18 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_CactusDefaultEvolve_c() #0 {
entry:
  ret i8* getelementptr inbounds ([95 x i8]* @.str12, i64 0, i64 0), !dbg !114
}

; Function Attrs: nounwind optsize uwtable
define i32 @CactusDefaultEvolve(%struct.tFleshConfig* nocapture %config) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %config}, i64 0, metadata !64), !dbg !115
  %0 = load i32 ()** @CCTK_MainLoopIndex, align 8, !dbg !116, !tbaa !117
  %call = tail call i32 %0() #4, !dbg !116
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !67), !dbg !116
  tail call void @llvm.dbg.value(metadata !120, i64 0, metadata !68), !dbg !121
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !66), !dbg !122
  %nGHs = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 2, !dbg !122
  %1 = load i32* %nGHs, align 4, !dbg !122, !tbaa !124
  %cmp139 = icmp eq i32 %1, 0, !dbg !122
  %GH7.pre = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 1, !dbg !125
  br i1 %cmp139, label %while.cond.preheader, label %for.body, !dbg !122

while.cond.preheader:                             ; preds = %entry, %if.end
  br label %while.cond, !dbg !125

for.body:                                         ; preds = %entry, %if.end
  %2 = phi i32 [ %8, %if.end ], [ %1, %entry ]
  %factor.0141 = phi i32 [ %mul, %if.end ], [ 1, %entry ]
  %convergence_level.0140 = phi i32 [ %inc, %if.end ], [ 0, %entry ]
  %rem = urem i32 %call, %factor.0141, !dbg !126
  %cmp1 = icmp eq i32 %rem, 0, !dbg !126
  br i1 %cmp1, label %if.then, label %if.end, !dbg !126

if.then:                                          ; preds = %for.body
  %idxprom = zext i32 %convergence_level.0140 to i64, !dbg !128
  %3 = load %struct.cGH*** %GH7.pre, align 8, !dbg !128, !tbaa !117
  %arrayidx = getelementptr inbounds %struct.cGH** %3, i64 %idxprom, !dbg !128
  %4 = load %struct.cGH** %arrayidx, align 8, !dbg !128, !tbaa !117
  %call2 = tail call i32 @CCTK_Traverse(%struct.cGH* %4, i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #4, !dbg !128
  %5 = load i32 (%struct.cGH*)** @CCTK_OutputGH, align 8, !dbg !131, !tbaa !117
  %6 = load %struct.cGH*** %GH7.pre, align 8, !dbg !131, !tbaa !117
  %arrayidx5 = getelementptr inbounds %struct.cGH** %6, i64 %idxprom, !dbg !131
  %7 = load %struct.cGH** %arrayidx5, align 8, !dbg !131, !tbaa !117
  %call6 = tail call i32 %5(%struct.cGH* %7) #4, !dbg !131
  %.pre143 = load i32* %nGHs, align 4, !dbg !122, !tbaa !124
  br label %if.end, !dbg !132

if.end:                                           ; preds = %if.then, %for.body
  %8 = phi i32 [ %.pre143, %if.then ], [ %2, %for.body ], !dbg !133
  %mul = shl nsw i32 %factor.0141, 1, !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !68), !dbg !133
  %inc = add i32 %convergence_level.0140, 1, !dbg !122
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !66), !dbg !122
  %cmp = icmp ult i32 %inc, %8, !dbg !122
  br i1 %cmp, label %for.body, label %while.cond.preheader, !dbg !122

while.cond:                                       ; preds = %while.cond.preheader, %for.end83
  %iteration.0 = phi i32 [ %call28, %for.end83 ], [ %call, %while.cond.preheader ]
  %9 = load %struct.cGH*** %GH7.pre, align 8, !dbg !125, !tbaa !117
  %10 = load %struct.cGH** %9, align 8, !dbg !125, !tbaa !117
  %cctk_time = getelementptr inbounds %struct.cGH* %10, i64 0, i32 16, !dbg !125
  %11 = load double* %cctk_time, align 8, !dbg !125, !tbaa !134
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %10}, i64 0, metadata !135) #5, !dbg !136
  tail call void @llvm.dbg.value(metadata !{double %11}, i64 0, metadata !137) #5, !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32 %iteration.0}, i64 0, metadata !138) #5, !dbg !136
  %12 = load double* getelementptr inbounds (%struct.anon* @cactusrest_, i64 0, i32 0), align 8, !dbg !139, !tbaa !134
  tail call void @llvm.dbg.value(metadata !{double %12}, i64 0, metadata !140) #5, !dbg !139
  %13 = load double* getelementptr inbounds (%struct.anon* @cactusrest_, i64 0, i32 1), align 8, !dbg !139, !tbaa !134
  tail call void @llvm.dbg.value(metadata !{double %13}, i64 0, metadata !141) #5, !dbg !139
  %14 = load i8** getelementptr inbounds (%struct.anon* @cactusrest_, i64 0, i32 2), align 8, !dbg !139, !tbaa !117
  tail call void @llvm.dbg.value(metadata !{i8* %14}, i64 0, metadata !142) #5, !dbg !139
  %15 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @cactusrest_, i64 0, i32 3) to i64*), align 8, !dbg !139
  %16 = trunc i64 %15 to i32, !dbg !139
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !143) #5, !dbg !139
  %tobool.i = icmp ult i64 %15, 4294967296, !dbg !144
  br i1 %tobool.i, label %lor.end.i, label %while.end, !dbg !144

lor.end.i:                                        ; preds = %while.cond
  %call.i = tail call i32 @CCTK_TerminationReached(%struct.cGH* %10) #4, !dbg !144
  %tobool2.i = icmp ne i32 %call.i, 0, !dbg !144
  %lor.ext.i = zext i1 %tobool2.i to i32, !dbg !144
  tail call void @llvm.dbg.value(metadata !{i32 %lor.ext.i}, i64 0, metadata !145) #5, !dbg !144
  br i1 %tobool2.i, label %DoneMainLoop.exit, label %if.then.i, !dbg !146

if.then.i:                                        ; preds = %lor.end.i
  %call4.i = tail call i32 @CCTK_Equals(i8* %14, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !147
  %tobool5.i = icmp eq i32 %call4.i, 0, !dbg !147
  br i1 %tobool5.i, label %if.else.i, label %while.body, !dbg !147

if.else.i:                                        ; preds = %if.then.i
  %call7.i = tail call i32 @CCTK_Equals(i8* %14, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0)) #4, !dbg !149
  %tobool8.i = icmp eq i32 %call7.i, 0, !dbg !149
  br i1 %tobool8.i, label %if.else10.i, label %if.then9.i, !dbg !149

if.then9.i:                                       ; preds = %if.else.i
  %cmp.i = icmp sle i32 %16, %iteration.0, !dbg !150
  %conv.i = zext i1 %cmp.i to i32, !dbg !150
  tail call void @llvm.dbg.value(metadata !{i32 %conv.i}, i64 0, metadata !145) #5, !dbg !150
  br label %DoneMainLoop.exit, !dbg !152

if.else10.i:                                      ; preds = %if.else.i
  %cmp11.i = fcmp olt double %13, %12, !dbg !153
  br i1 %cmp11.i, label %if.then13.i, label %if.else16.i, !dbg !153

if.then13.i:                                      ; preds = %if.else10.i
  %cmp14.i = fcmp ole double %12, %11, !dbg !155
  tail call void @llvm.dbg.value(metadata !{i32 %conv15.i}, i64 0, metadata !145) #5, !dbg !155
  br label %if.end.i, !dbg !157

if.else16.i:                                      ; preds = %if.else10.i
  %cmp17.i = fcmp oge double %12, %11, !dbg !158
  br label %if.end.i

if.end.i:                                         ; preds = %if.else16.i, %if.then13.i
  %cmp14.sink.i = phi i1 [ %cmp14.i, %if.then13.i ], [ %cmp17.i, %if.else16.i ]
  %call19.i = tail call i32 @CCTK_Equals(i8* %14, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #4, !dbg !160
  %tobool20.i = icmp eq i32 %call19.i, 0, !dbg !160
  br i1 %tobool20.i, label %if.else24.i, label %if.then21.i, !dbg !160

if.then21.i:                                      ; preds = %if.end.i
  %cmp22.i = icmp sle i32 %16, %iteration.0, !dbg !161
  %or47.i = or i1 %cmp14.sink.i, %cmp22.i, !dbg !161
  %or.i = zext i1 %or47.i to i32, !dbg !161
  tail call void @llvm.dbg.value(metadata !{i32 %or.i}, i64 0, metadata !145) #5, !dbg !161
  br label %DoneMainLoop.exit, !dbg !163

if.else24.i:                                      ; preds = %if.end.i
  %conv15.i = zext i1 %cmp14.sink.i to i32, !dbg !155
  %call25.i = tail call i32 @CCTK_Equals(i8* %14, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #4, !dbg !164
  %tobool26.i = icmp eq i32 %call25.i, 0, !dbg !164
  br i1 %tobool26.i, label %DoneMainLoop.exit, label %if.then27.i, !dbg !164

if.then27.i:                                      ; preds = %if.else24.i
  %cmp28.i = icmp sle i32 %16, %iteration.0, !dbg !165
  %and48.i = and i1 %cmp14.sink.i, %cmp28.i, !dbg !165
  %and.i = zext i1 %and48.i to i32, !dbg !165
  tail call void @llvm.dbg.value(metadata !{i32 %and.i}, i64 0, metadata !145) #5, !dbg !165
  br label %DoneMainLoop.exit, !dbg !167

DoneMainLoop.exit:                                ; preds = %lor.end.i, %if.then9.i, %if.then21.i, %if.else24.i, %if.then27.i
  %retval1.1.i = phi i32 [ %lor.ext.i, %lor.end.i ], [ %conv.i, %if.then9.i ], [ %or.i, %if.then21.i ], [ %and.i, %if.then27.i ], [ %conv15.i, %if.else24.i ]
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  tail call void @llvm.dbg.value(metadata !168, i64 0, metadata !169) #5, !dbg !170
  %lnot = icmp eq i32 %retval1.1.i, 0, !dbg !125
  br i1 %lnot, label %while.body, label %while.end, !dbg !125

while.body:                                       ; preds = %if.then.i, %DoneMainLoop.exit
  %cmp12 = icmp eq i32 %iteration.0, 0, !dbg !171
  br i1 %cmp12, label %if.then13, label %if.end26, !dbg !171

if.then13:                                        ; preds = %while.body
  %call14 = tail call i32 @CCTK_NumVars() #4, !dbg !172
  %cmp16128 = icmp sgt i32 %call14, 0, !dbg !172
  br i1 %cmp16128, label %for.body17, label %if.end26, !dbg !172

for.body17:                                       ; preds = %if.then13, %for.cond15.backedge
  %var.0129.in = phi i32 [ %var.0129, %for.cond15.backedge ], [ %call14, %if.then13 ]
  %var.0129 = add nsw i32 %var.0129.in, -1, !dbg !172
  %call18 = tail call i32 @CCTK_NumTimeLevelsFromVarI(i32 %var.0129) #4, !dbg !175
  %cmp19 = icmp sgt i32 %call18, 1, !dbg !175
  br i1 %cmp19, label %if.then20, label %for.cond15.backedge, !dbg !175

for.cond15.backedge:                              ; preds = %for.body17, %if.then20
  %cmp16 = icmp sgt i32 %var.0129, 0, !dbg !172
  br i1 %cmp16, label %for.body17, label %if.end26, !dbg !172

if.then20:                                        ; preds = %for.body17
  %call21 = tail call i8* @CCTK_VarName(i32 %var.0129) #4, !dbg !177
  %call22 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 140, i8* getelementptr inbounds ([76 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([83 x i8]* @.str3, i64 0, i64 0), i8* %call21) #4, !dbg !177
  br label %for.cond15.backedge, !dbg !179

if.end26:                                         ; preds = %if.then13, %for.cond15.backedge, %while.body
  %17 = load i32 (i32)** @CCTK_SetMainLoopIndex, align 8, !dbg !180, !tbaa !117
  %inc27 = add i32 %iteration.0, 1, !dbg !180
  tail call void @llvm.dbg.value(metadata !{i32 %inc27}, i64 0, metadata !67), !dbg !180
  %call28 = tail call i32 %17(i32 %inc27) #4, !dbg !180
  tail call void @llvm.dbg.value(metadata !{i32 %call28}, i64 0, metadata !67), !dbg !180
  tail call void @llvm.dbg.value(metadata !120, i64 0, metadata !70), !dbg !181
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !66), !dbg !182
  %18 = load i32* %nGHs, align 4, !dbg !182, !tbaa !124
  %cmp32130 = icmp eq i32 %18, 0, !dbg !182
  br i1 %cmp32130, label %for.end83, label %for.body33, !dbg !182

for.body33:                                       ; preds = %if.end26, %if.end41
  %factor29.0132 = phi i32 [ %mul42, %if.end41 ], [ 1, %if.end26 ]
  %convergence_level.1131 = phi i32 [ %inc44, %if.end41 ], [ 0, %if.end26 ]
  %19 = load i32 ()** @CCTK_MainLoopIndex, align 8, !dbg !184, !tbaa !117
  %call34 = tail call i32 %19() #4, !dbg !184
  %rem35 = srem i32 %call34, %factor29.0132, !dbg !184
  %cmp36 = icmp eq i32 %rem35, 0, !dbg !184
  br i1 %cmp36, label %if.then37, label %if.end41, !dbg !184

if.then37:                                        ; preds = %for.body33
  %idxprom38 = zext i32 %convergence_level.1131 to i64, !dbg !186
  %20 = load %struct.cGH*** %GH7.pre, align 8, !dbg !186, !tbaa !117
  %arrayidx40 = getelementptr inbounds %struct.cGH** %20, i64 %idxprom38, !dbg !186
  %21 = load %struct.cGH** %arrayidx40, align 8, !dbg !186, !tbaa !117
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %21}, i64 0, metadata !189) #5, !dbg !190
  %cctk_time.i = getelementptr inbounds %struct.cGH* %21, i64 0, i32 16, !dbg !191
  %22 = load double* %cctk_time.i, align 8, !dbg !191, !tbaa !134
  %cctk_delta_time.i = getelementptr inbounds %struct.cGH* %21, i64 0, i32 9, !dbg !191
  %23 = load double* %cctk_delta_time.i, align 8, !dbg !191, !tbaa !134
  %add.i = fadd double %22, %23, !dbg !191
  store double %add.i, double* %cctk_time.i, align 8, !dbg !191, !tbaa !134
  %cctk_iteration.i = getelementptr inbounds %struct.cGH* %21, i64 0, i32 1, !dbg !192
  %24 = load i32* %cctk_iteration.i, align 4, !dbg !192, !tbaa !124
  %inc.i = add nsw i32 %24, 1, !dbg !192
  store i32 %inc.i, i32* %cctk_iteration.i, align 4, !dbg !192, !tbaa !124
  %call.i123 = tail call i32 @CCTK_Traverse(%struct.cGH* %21, i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !193
  %call2.i = tail call i32 @CCTK_Traverse(%struct.cGH* %21, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !194
  %call3.i = tail call i32 @CCTK_Traverse(%struct.cGH* %21, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !195
  br label %if.end41, !dbg !196

if.end41:                                         ; preds = %if.then37, %for.body33
  %mul42 = shl nsw i32 %factor29.0132, 1, !dbg !197
  tail call void @llvm.dbg.value(metadata !{i32 %mul42}, i64 0, metadata !70), !dbg !197
  %inc44 = add i32 %convergence_level.1131, 1, !dbg !182
  tail call void @llvm.dbg.value(metadata !{i32 %inc44}, i64 0, metadata !66), !dbg !182
  %25 = load i32* %nGHs, align 4, !dbg !182, !tbaa !124
  %cmp32 = icmp ult i32 %inc44, %25, !dbg !182
  br i1 %cmp32, label %for.body33, label %for.cond47.loopexit, !dbg !182

for.cond47.loopexit:                              ; preds = %if.end41
  %cmp49133 = icmp eq i32 %25, 0, !dbg !198
  br i1 %cmp49133, label %for.end83, label %for.body50, !dbg !198

for.body50:                                       ; preds = %for.cond47.loopexit, %if.end58
  %26 = phi i32 [ %29, %if.end58 ], [ %25, %for.cond47.loopexit ]
  %factor46.0135 = phi i32 [ %mul59, %if.end58 ], [ 1, %for.cond47.loopexit ]
  %convergence_level.2134 = phi i32 [ %inc61, %if.end58 ], [ 0, %for.cond47.loopexit ]
  %rem51 = urem i32 %call28, %factor46.0135, !dbg !200
  %cmp52 = icmp eq i32 %rem51, 0, !dbg !200
  br i1 %cmp52, label %if.then53, label %if.end58, !dbg !200

if.then53:                                        ; preds = %for.body50
  %idxprom54 = zext i32 %convergence_level.2134 to i64, !dbg !202
  %27 = load %struct.cGH*** %GH7.pre, align 8, !dbg !202, !tbaa !117
  %arrayidx56 = getelementptr inbounds %struct.cGH** %27, i64 %idxprom54, !dbg !202
  %28 = load %struct.cGH** %arrayidx56, align 8, !dbg !202, !tbaa !117
  %call57 = tail call i32 @CCTK_Traverse(%struct.cGH* %28, i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !202
  %.pre142 = load i32* %nGHs, align 4, !dbg !198, !tbaa !124
  br label %if.end58, !dbg !205

if.end58:                                         ; preds = %if.then53, %for.body50
  %29 = phi i32 [ %.pre142, %if.then53 ], [ %26, %for.body50 ], !dbg !206
  %mul59 = shl nsw i32 %factor46.0135, 1, !dbg !206
  tail call void @llvm.dbg.value(metadata !{i32 %mul59}, i64 0, metadata !73), !dbg !206
  %inc61 = add i32 %convergence_level.2134, 1, !dbg !198
  tail call void @llvm.dbg.value(metadata !{i32 %inc61}, i64 0, metadata !66), !dbg !198
  %cmp49 = icmp ult i32 %inc61, %29, !dbg !198
  br i1 %cmp49, label %for.body50, label %for.cond64.loopexit, !dbg !198

for.cond64.loopexit:                              ; preds = %if.end58
  %cmp66136 = icmp eq i32 %29, 0, !dbg !207
  br i1 %cmp66136, label %for.end83, label %for.body67, !dbg !207

for.body67:                                       ; preds = %for.cond64.loopexit, %if.end79
  %30 = phi i32 [ %36, %if.end79 ], [ %29, %for.cond64.loopexit ]
  %factor63.0138 = phi i32 [ %mul80, %if.end79 ], [ 1, %for.cond64.loopexit ]
  %convergence_level.3137 = phi i32 [ %inc82, %if.end79 ], [ 0, %for.cond64.loopexit ]
  %rem68 = urem i32 %call28, %factor63.0138, !dbg !209
  %cmp69 = icmp eq i32 %rem68, 0, !dbg !209
  br i1 %cmp69, label %if.then70, label %if.end79, !dbg !209

if.then70:                                        ; preds = %for.body67
  %idxprom71 = zext i32 %convergence_level.3137 to i64, !dbg !211
  %31 = load %struct.cGH*** %GH7.pre, align 8, !dbg !211, !tbaa !117
  %arrayidx73 = getelementptr inbounds %struct.cGH** %31, i64 %idxprom71, !dbg !211
  %32 = load %struct.cGH** %arrayidx73, align 8, !dbg !211, !tbaa !117
  %call74 = tail call i32 @CCTK_Traverse(%struct.cGH* %32, i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #4, !dbg !211
  %33 = load i32 (%struct.cGH*)** @CCTK_OutputGH, align 8, !dbg !214, !tbaa !117
  %34 = load %struct.cGH*** %GH7.pre, align 8, !dbg !214, !tbaa !117
  %arrayidx77 = getelementptr inbounds %struct.cGH** %34, i64 %idxprom71, !dbg !214
  %35 = load %struct.cGH** %arrayidx77, align 8, !dbg !214, !tbaa !117
  %call78 = tail call i32 %33(%struct.cGH* %35) #4, !dbg !214
  %.pre = load i32* %nGHs, align 4, !dbg !207, !tbaa !124
  br label %if.end79, !dbg !215

if.end79:                                         ; preds = %if.then70, %for.body67
  %36 = phi i32 [ %.pre, %if.then70 ], [ %30, %for.body67 ], !dbg !216
  %mul80 = shl nsw i32 %factor63.0138, 1, !dbg !216
  tail call void @llvm.dbg.value(metadata !{i32 %mul80}, i64 0, metadata !75), !dbg !216
  %inc82 = add i32 %convergence_level.3137, 1, !dbg !207
  tail call void @llvm.dbg.value(metadata !{i32 %inc82}, i64 0, metadata !66), !dbg !207
  %cmp66 = icmp ult i32 %inc82, %36, !dbg !207
  br i1 %cmp66, label %for.body67, label %for.end83, !dbg !207

for.end83:                                        ; preds = %if.end26, %for.cond47.loopexit, %if.end79, %for.cond64.loopexit
  %37 = load i32* @cactus_terminate, align 4, !dbg !217, !tbaa !124
  %cmp84 = icmp eq i32 %37, 4, !dbg !217
  br i1 %cmp84, label %while.end, label %while.cond, !dbg !217

while.end:                                        ; preds = %while.cond, %for.end83, %DoneMainLoop.exit
  ret i32 0, !dbg !218
}

; Function Attrs: optsize
declare i32 @CCTK_Traverse(%struct.cGH*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_TerminationReached(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !111, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !77, metadata !82}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_CactusDefaultEvolve_c", metadata !"CCTKi_version_main_CactusDefaultEvolve_c", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_CactusDefaultEvolve_c, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 30] [def] [CCTKi_version_main_CactusDefaultEvolve_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusDefaultEvolve", metadata !"CactusDefaultEvolve", metadata !"", i32 105, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.tFleshConfig*)* @CactusDefaultEvolve, null, null, metadata !63, i32 106} ; [ DW_TAG_subprogram ] [line 105] [def] [scope 106] [CactusDefaultEvolve]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tFleshConfig]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"tFleshConfig", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [tFleshConfig] [line 28, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 19, i64 192, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 19, size 192, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !22, metadata !61}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"parameter_file_name", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [parameter_file_name] [line 21, size 64, align 64, offset 0] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"GH", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [GH] [line 24, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!25 = metadata !{i32 786454, metadata !18, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !41, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !53, metadata !54}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!35 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!36 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!37 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!38 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!39 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!40 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!41 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!43 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!44 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!45 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!46 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!47 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!48 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!49 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !50} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !51} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!54 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !55} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!56 = metadata !{i32 786454, metadata !27, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!57 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !58, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !60}
!59 = metadata !{i32 786445, metadata !27, metadata !57, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!60 = metadata !{i32 786445, metadata !27, metadata !57, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!61 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"nGHs", i32 25, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [nGHs] [line 25, size 32, align 32, offset 128] [from unsigned int]
!62 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !70, metadata !73, metadata !75}
!64 = metadata !{i32 786689, metadata !11, metadata !"config", metadata !5, i32 16777321, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [config] [line 105]
!65 = metadata !{i32 786688, metadata !11, metadata !"var", metadata !5, i32 107, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 107]
!66 = metadata !{i32 786688, metadata !11, metadata !"convergence_level", metadata !5, i32 108, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [convergence_level] [line 108]
!67 = metadata !{i32 786688, metadata !11, metadata !"iteration", metadata !5, i32 108, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iteration] [line 108]
!68 = metadata !{i32 786688, metadata !69, metadata !"factor", metadata !5, i32 119, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [factor] [line 119]
!69 = metadata !{i32 786443, metadata !1, metadata !11, i32 119, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!70 = metadata !{i32 786688, metadata !71, metadata !"factor", metadata !5, i32 152, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [factor] [line 152]
!71 = metadata !{i32 786443, metadata !1, metadata !72, i32 152, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!72 = metadata !{i32 786443, metadata !1, metadata !11, i32 132, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!73 = metadata !{i32 786688, metadata !74, metadata !"factor", metadata !5, i32 162, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [factor] [line 162]
!74 = metadata !{i32 786443, metadata !1, metadata !72, i32 162, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!75 = metadata !{i32 786688, metadata !76, metadata !"factor", metadata !5, i32 175, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [factor] [line 175]
!76 = metadata !{i32 786443, metadata !1, metadata !72, i32 175, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!77 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"StepGH", metadata !"StepGH", metadata !"", i32 296, metadata !78, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !80, i32 297} ; [ DW_TAG_subprogram ] [line 296] [local] [def] [scope 297] [StepGH]
!78 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{null, metadata !24}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786689, metadata !77, metadata !"GH", metadata !5, i32 16777512, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 296]
!82 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DoneMainLoop", metadata !"DoneMainLoop", metadata !"", i32 237, metadata !83, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !85, i32 238} ; [ DW_TAG_subprogram ] [line 237] [local] [def] [scope 238] [DoneMainLoop]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{metadata !14, metadata !24, metadata !40, metadata !14}
!85 = metadata !{metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !92, metadata !93, metadata !94, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108}
!86 = metadata !{i32 786689, metadata !82, metadata !"GH", metadata !5, i32 16777453, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 237]
!87 = metadata !{i32 786689, metadata !82, metadata !"time", metadata !5, i32 33554669, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [time] [line 237]
!88 = metadata !{i32 786689, metadata !82, metadata !"iteration", metadata !5, i32 50331885, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iteration] [line 237]
!89 = metadata !{i32 786688, metadata !82, metadata !"retval", metadata !5, i32 239, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 239]
!90 = metadata !{i32 786688, metadata !82, metadata !"cctk_final_time", metadata !5, i32 240, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 240]
!91 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!92 = metadata !{i32 786688, metadata !82, metadata !"cctk_initial_time", metadata !5, i32 240, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 240]
!93 = metadata !{i32 786688, metadata !82, metadata !"terminate", metadata !5, i32 240, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 240]
!94 = metadata !{i32 786688, metadata !82, metadata !"cctk_itlast", metadata !5, i32 240, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 240]
!95 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!96 = metadata !{i32 786688, metadata !82, metadata !"terminate_next", metadata !5, i32 240, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 240]
!97 = metadata !{i32 786688, metadata !82, metadata !"cctk_run_title", metadata !5, i32 240, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_run_title] [line 240]
!98 = metadata !{i32 786688, metadata !82, metadata !"cctk_timer_output", metadata !5, i32 240, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_timer_output] [line 240]
!99 = metadata !{i32 786688, metadata !82, metadata !"allow_mixeddim_gfs", metadata !5, i32 240, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 240]
!100 = metadata !{i32 786688, metadata !82, metadata !"cctk_brief_output", metadata !5, i32 240, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_brief_output] [line 240]
!101 = metadata !{i32 786688, metadata !82, metadata !"cctk_full_warnings", metadata !5, i32 240, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_full_warnings] [line 240]
!102 = metadata !{i32 786688, metadata !82, metadata !"cctk_show_banners", metadata !5, i32 240, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_show_banners] [line 240]
!103 = metadata !{i32 786688, metadata !82, metadata !"cctk_show_schedule", metadata !5, i32 240, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_show_schedule] [line 240]
!104 = metadata !{i32 786688, metadata !82, metadata !"cctk_strong_param_check", metadata !5, i32 240, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_strong_param_check] [line 240]
!105 = metadata !{i32 786688, metadata !82, metadata !"manual_cache_setup", metadata !5, i32 240, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [manual_cache_setup] [line 240]
!106 = metadata !{i32 786688, metadata !82, metadata !"manual_cache_size", metadata !5, i32 240, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [manual_cache_size] [line 240]
!107 = metadata !{i32 786688, metadata !82, metadata !"manual_cacheline_bytes", metadata !5, i32 240, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [manual_cacheline_bytes] [line 240]
!108 = metadata !{i32 786688, metadata !82, metadata !"cctk_pdummy_pointer", metadata !5, i32 240, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 240]
!109 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!110 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{metadata !112, metadata !113}
!112 = metadata !{i32 786484, i32 0, null, metadata !"cactus_terminate", metadata !"cactus_terminate", metadata !"", metadata !5, i32 50, metadata !14, i32 0, i32 1, i32* @cactus_terminate, null} ; [ DW_TAG_variable ] [cactus_terminate] [line 50] [def]
!113 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 28, metadata !8, i32 1, i32 1, null, null}
!114 = metadata !{i32 30, i32 0, metadata !4, null}
!115 = metadata !{i32 105, i32 0, metadata !11, null}
!116 = metadata !{i32 118, i32 0, metadata !11, null}
!117 = metadata !{metadata !"any pointer", metadata !118}
!118 = metadata !{metadata !"omnipotent char", metadata !119}
!119 = metadata !{metadata !"Simple C/C++ TBAA"}
!120 = metadata !{i32 1}
!121 = metadata !{i32 119, i32 0, metadata !69, null}
!122 = metadata !{i32 119, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !69, i32 119, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!124 = metadata !{metadata !"int", metadata !118}
!125 = metadata !{i32 131, i32 0, metadata !11, null}
!126 = metadata !{i32 119, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !123, i32 119, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!128 = metadata !{i32 121, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !130, i32 120, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!130 = metadata !{i32 786443, metadata !1, metadata !127, i32 119, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!131 = metadata !{i32 122, i32 0, metadata !129, null}
!132 = metadata !{i32 124, i32 0, metadata !130, null}
!133 = metadata !{i32 124, i32 0, metadata !127, null}
!134 = metadata !{metadata !"double", metadata !118}
!135 = metadata !{i32 786689, metadata !82, metadata !"GH", metadata !5, i32 16777453, metadata !24, i32 0, metadata !125} ; [ DW_TAG_arg_variable ] [GH] [line 237]
!136 = metadata !{i32 237, i32 0, metadata !82, metadata !125}
!137 = metadata !{i32 786689, metadata !82, metadata !"time", metadata !5, i32 33554669, metadata !40, i32 0, metadata !125} ; [ DW_TAG_arg_variable ] [time] [line 237]
!138 = metadata !{i32 786689, metadata !82, metadata !"iteration", metadata !5, i32 50331885, metadata !14, i32 0, metadata !125} ; [ DW_TAG_arg_variable ] [iteration] [line 237]
!139 = metadata !{i32 240, i32 0, metadata !82, metadata !125}
!140 = metadata !{i32 786688, metadata !82, metadata !"cctk_final_time", metadata !5, i32 240, metadata !91, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 240]
!141 = metadata !{i32 786688, metadata !82, metadata !"cctk_initial_time", metadata !5, i32 240, metadata !91, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 240]
!142 = metadata !{i32 786688, metadata !82, metadata !"terminate", metadata !5, i32 240, metadata !8, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [terminate] [line 240]
!143 = metadata !{i32 786688, metadata !82, metadata !"cctk_itlast", metadata !5, i32 240, metadata !95, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 240]
!144 = metadata !{i32 243, i32 0, metadata !82, metadata !125}
!145 = metadata !{i32 786688, metadata !82, metadata !"retval", metadata !5, i32 239, metadata !14, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [retval] [line 239]
!146 = metadata !{i32 244, i32 0, metadata !82, metadata !125}
!147 = metadata !{i32 246, i32 0, metadata !148, metadata !125}
!148 = metadata !{i32 786443, metadata !1, metadata !82, i32 245, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!149 = metadata !{i32 250, i32 0, metadata !148, metadata !125}
!150 = metadata !{i32 252, i32 0, metadata !151, metadata !125}
!151 = metadata !{i32 786443, metadata !1, metadata !148, i32 251, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!152 = metadata !{i32 253, i32 0, metadata !151, metadata !125}
!153 = metadata !{i32 256, i32 0, metadata !154, metadata !125}
!154 = metadata !{i32 786443, metadata !1, metadata !148, i32 255, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!155 = metadata !{i32 258, i32 0, metadata !156, metadata !125}
!156 = metadata !{i32 786443, metadata !1, metadata !154, i32 257, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!157 = metadata !{i32 259, i32 0, metadata !156, metadata !125}
!158 = metadata !{i32 262, i32 0, metadata !159, metadata !125}
!159 = metadata !{i32 786443, metadata !1, metadata !154, i32 261, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!160 = metadata !{i32 264, i32 0, metadata !154, metadata !125}
!161 = metadata !{i32 266, i32 0, metadata !162, metadata !125}
!162 = metadata !{i32 786443, metadata !1, metadata !154, i32 265, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!163 = metadata !{i32 267, i32 0, metadata !162, metadata !125}
!164 = metadata !{i32 268, i32 0, metadata !154, metadata !125}
!165 = metadata !{i32 270, i32 0, metadata !166, metadata !125}
!166 = metadata !{i32 786443, metadata !1, metadata !154, i32 269, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!167 = metadata !{i32 271, i32 0, metadata !166, metadata !125}
!168 = metadata !{i8* undef}
!169 = metadata !{i32 786688, metadata !82, metadata !"cctk_pdummy_pointer", metadata !5, i32 240, metadata !109, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 240]
!170 = metadata !{i32 275, i32 0, metadata !82, metadata !125}
!171 = metadata !{i32 133, i32 0, metadata !72, null}
!172 = metadata !{i32 136, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !174, i32 136, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!174 = metadata !{i32 786443, metadata !1, metadata !72, i32 134, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!175 = metadata !{i32 138, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !173, i32 137, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!177 = metadata !{i32 143, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !176, i32 139, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!179 = metadata !{i32 144, i32 0, metadata !178, null}
!180 = metadata !{i32 149, i32 0, metadata !72, null}
!181 = metadata !{i32 152, i32 0, metadata !71, null}
!182 = metadata !{i32 152, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !71, i32 152, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!184 = metadata !{i32 152, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !183, i32 152, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!186 = metadata !{i32 154, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !188, i32 153, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!188 = metadata !{i32 786443, metadata !1, metadata !185, i32 152, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!189 = metadata !{i32 786689, metadata !77, metadata !"GH", metadata !5, i32 16777512, metadata !24, i32 0, metadata !186} ; [ DW_TAG_arg_variable ] [GH] [line 296]
!190 = metadata !{i32 296, i32 0, metadata !77, metadata !186}
!191 = metadata !{i32 298, i32 0, metadata !77, metadata !186}
!192 = metadata !{i32 299, i32 0, metadata !77, metadata !186}
!193 = metadata !{i32 301, i32 0, metadata !77, metadata !186}
!194 = metadata !{i32 302, i32 0, metadata !77, metadata !186}
!195 = metadata !{i32 303, i32 0, metadata !77, metadata !186}
!196 = metadata !{i32 159, i32 0, metadata !188, null}
!197 = metadata !{i32 159, i32 0, metadata !185, null}
!198 = metadata !{i32 162, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !74, i32 162, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!200 = metadata !{i32 162, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !199, i32 162, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!202 = metadata !{i32 164, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !204, i32 163, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!204 = metadata !{i32 786443, metadata !1, metadata !201, i32 162, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!205 = metadata !{i32 166, i32 0, metadata !204, null}
!206 = metadata !{i32 166, i32 0, metadata !201, null}
!207 = metadata !{i32 175, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !76, i32 175, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!209 = metadata !{i32 175, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !208, i32 175, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!211 = metadata !{i32 177, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !213, i32 176, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!213 = metadata !{i32 786443, metadata !1, metadata !210, i32 175, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c]
!214 = metadata !{i32 178, i32 0, metadata !212, null}
!215 = metadata !{i32 180, i32 0, metadata !213, null}
!216 = metadata !{i32 180, i32 0, metadata !210, null}
!217 = metadata !{i32 192, i32 0, metadata !72, null}
!218 = metadata !{i32 203, i32 0, metadata !11, null}
