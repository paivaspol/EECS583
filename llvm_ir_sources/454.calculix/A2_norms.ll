; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [43 x i8] c"\0A fatal error in A2_maxabs(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [86 x i8] c"\0A fatal error in A2_maxabs(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [46 x i8] c"\0A fatal error in A2_frobNorm(%p) \0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [88 x i8] c"\0A fatal error in A2_frobNorm(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in A2_oneNorm(%p) \0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [87 x i8] c"\0A fatal error in A2_oneNorm(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str6 = private unnamed_addr constant [50 x i8] c"\0A fatal error in A2_infinityNorm(%p) \0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [92 x i8] c"\0A fatal error in A2_infinityNorm(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str8 = private unnamed_addr constant [55 x i8] c"\0A fatal error in A2_oneNormOfColumn(%p,%d)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [98 x i8] c"\0A fatal error in A2_oneNormOfColumn(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str10 = private unnamed_addr constant [55 x i8] c"\0A fatal error in A2_twoNormOfColumn(%p,%d)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [98 x i8] c"\0A fatal error in A2_twoNormOfColumn(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str12 = private unnamed_addr constant [60 x i8] c"\0A fatal error in A2_infinityNormOfColumn(%p,%d)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [103 x i8] c"\0A fatal error in A2_infinityNormOfColumn(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str14 = private unnamed_addr constant [52 x i8] c"\0A fatal error in A2_oneNormOfRow(%p,%d)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [95 x i8] c"\0A fatal error in A2_oneNormOfRow(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str16 = private unnamed_addr constant [52 x i8] c"\0A fatal error in A2_twoNormOfRow(%p,%d)\0A bad input\0A\00", align 1
@.str17 = private unnamed_addr constant [95 x i8] c"\0A fatal error in A2_twoNormOfRow(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str18 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_infinityNormOfRow(%p,%d)\0A bad input\0A\00", align 1
@.str19 = private unnamed_addr constant [100 x i8] c"\0A fatal error in A2_infinityNormOfRow(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define double @A2_maxabs(%struct._A2* %a) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %a}, i64 0, metadata !24), !dbg !214
  %cmp = icmp eq %struct._A2* %a, null, !dbg !215
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !215

lor.lhs.false:                                    ; preds = %entry
  %n11 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1, !dbg !215
  %0 = load i32* %n11, align 4, !dbg !215, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !34), !dbg !215
  %cmp2 = icmp slt i32 %0, 0, !dbg !215
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !215

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n24 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2, !dbg !215
  %1 = load i32* %n24, align 4, !dbg !215, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !35), !dbg !215
  %cmp5 = icmp slt i32 %1, 0, !dbg !215
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !215

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %inc17 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3, !dbg !215
  %2 = load i32* %inc17, align 4, !dbg !215, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !29), !dbg !215
  %cmp8 = icmp slt i32 %2, 0, !dbg !215
  br i1 %cmp8, label %if.then, label %lor.lhs.false9, !dbg !215

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %inc210 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4, !dbg !215
  %3 = load i32* %inc210, align 4, !dbg !215, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !30), !dbg !215
  %cmp11 = icmp slt i32 %3, 0, !dbg !215
  br i1 %cmp11, label %if.then, label %if.end, !dbg !215

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !219, !tbaa !221
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), %struct._A2* %a) #6, !dbg !219
  tail call void @exit(i32 -1) #7, !dbg !222
  unreachable, !dbg !222

if.end:                                           ; preds = %lor.lhs.false9
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0, !dbg !223
  %5 = load i32* %type, align 4, !dbg !223, !tbaa !216
  %.off = add i32 %5, -1, !dbg !223
  %switch = icmp ult i32 %.off, 2, !dbg !223
  br i1 %switch, label %if.end19, label %if.then16, !dbg !223

if.then16:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !224, !tbaa !221
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([86 x i8]* @.str1, i64 0, i64 0), %struct._A2* %a, i32 %5) #6, !dbg !224
  tail call void @exit(i32 -1) #7, !dbg !226
  unreachable, !dbg !226

if.end19:                                         ; preds = %if.end
  %entries20 = getelementptr inbounds %struct._A2* %a, i64 0, i32 6, !dbg !227
  %7 = load double** %entries20, align 8, !dbg !227, !tbaa !221
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !27), !dbg !227
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !25), !dbg !229
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !28), !dbg !230
  switch i32 %5, label %if.end64 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond38.preheader
  ], !dbg !231

for.cond38.preheader:                             ; preds = %if.end19
  %cmp39116 = icmp sgt i32 %0, 0, !dbg !232
  br i1 %cmp39116, label %for.cond41.preheader.lr.ph, label %if.end64, !dbg !232

for.cond41.preheader.lr.ph:                       ; preds = %for.cond38.preheader
  %cmp42110 = icmp sgt i32 %1, 0, !dbg !235
  %idx.ext58 = sext i32 %2 to i64, !dbg !238
  %8 = sext i32 %3 to i64
  br label %for.cond41.preheader, !dbg !232

for.cond.preheader:                               ; preds = %if.end19
  %cmp24105 = icmp sgt i32 %0, 0, !dbg !239
  br i1 %cmp24105, label %for.cond25.preheader.lr.ph, label %if.end64, !dbg !239

for.cond25.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp26101 = icmp sgt i32 %1, 0, !dbg !242
  %idx.ext = sext i32 %2 to i64, !dbg !245
  %9 = sext i32 %3 to i64
  br label %for.cond25.preheader, !dbg !239

for.cond25.preheader:                             ; preds = %for.end, %for.cond25.preheader.lr.ph
  %maxval.0108 = phi double [ 0.000000e+00, %for.cond25.preheader.lr.ph ], [ %maxval.1.lcssa, %for.end ]
  %irow.0107 = phi i32 [ 0, %for.cond25.preheader.lr.ph ], [ %inc33, %for.end ]
  %row.0106 = phi double* [ %7, %for.cond25.preheader.lr.ph ], [ %add.ptr, %for.end ]
  br i1 %cmp26101, label %for.body27, label %for.end, !dbg !242

for.body27:                                       ; preds = %for.cond25.preheader, %for.body27
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body27 ], [ 0, %for.cond25.preheader ]
  %maxval.1104 = phi double [ %maxval.2, %for.body27 ], [ %maxval.0108, %for.cond25.preheader ]
  %jcol.0102 = phi i32 [ %inc, %for.body27 ], [ 0, %for.cond25.preheader ]
  %arrayidx = getelementptr inbounds double* %row.0106, i64 %indvars.iv, !dbg !246
  %10 = load double* %arrayidx, align 8, !dbg !246, !tbaa !248
  %call28 = tail call double @fabs(double %10) #8, !dbg !246
  tail call void @llvm.dbg.value(metadata !{double %call28}, i64 0, metadata !26), !dbg !246
  %cmp29 = fcmp olt double %maxval.1104, %call28, !dbg !249
  tail call void @llvm.dbg.value(metadata !{double %call28}, i64 0, metadata !25), !dbg !250
  %maxval.2 = select i1 %cmp29, double %call28, double %maxval.1104, !dbg !249
  %inc = add nsw i32 %jcol.0102, 1, !dbg !242
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !32), !dbg !242
  %indvars.iv.next = add i64 %indvars.iv, %9, !dbg !242
  %exitcond = icmp eq i32 %inc, %1, !dbg !242
  br i1 %exitcond, label %for.end, label %for.body27, !dbg !242

for.end:                                          ; preds = %for.body27, %for.cond25.preheader
  %maxval.1.lcssa = phi double [ %maxval.0108, %for.cond25.preheader ], [ %maxval.2, %for.body27 ]
  %add.ptr = getelementptr inbounds double* %row.0106, i64 %idx.ext, !dbg !245
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr}, i64 0, metadata !28), !dbg !245
  %inc33 = add nsw i32 %irow.0107, 1, !dbg !239
  tail call void @llvm.dbg.value(metadata !{i32 %inc33}, i64 0, metadata !31), !dbg !239
  %exitcond121 = icmp eq i32 %inc33, %0, !dbg !239
  br i1 %exitcond121, label %if.end64, label %for.cond25.preheader, !dbg !239

for.cond41.preheader:                             ; preds = %for.end57, %for.cond41.preheader.lr.ph
  %maxval.3119 = phi double [ 0.000000e+00, %for.cond41.preheader.lr.ph ], [ %maxval.4.lcssa, %for.end57 ]
  %irow.1118 = phi i32 [ 0, %for.cond41.preheader.lr.ph ], [ %inc61, %for.end57 ]
  %row.1117 = phi double* [ %7, %for.cond41.preheader.lr.ph ], [ %add.ptr59, %for.end57 ]
  br i1 %cmp42110, label %for.body43, label %for.end57, !dbg !235

for.body43:                                       ; preds = %for.cond41.preheader, %for.body43
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %for.body43 ], [ 0, %for.cond41.preheader ]
  %maxval.4113 = phi double [ %maxval.5, %for.body43 ], [ %maxval.3119, %for.cond41.preheader ]
  %jcol.1111 = phi i32 [ %inc55, %for.body43 ], [ 0, %for.cond41.preheader ]
  %11 = trunc i64 %indvars.iv122 to i32, !dbg !252
  %mul = shl nsw i32 %11, 1, !dbg !252
  %idxprom44 = sext i32 %mul to i64, !dbg !252
  %arrayidx45 = getelementptr inbounds double* %row.1117, i64 %idxprom44, !dbg !252
  %12 = load double* %arrayidx45, align 8, !dbg !252, !tbaa !248
  %add47100 = or i32 %mul, 1, !dbg !252
  %idxprom48 = sext i32 %add47100 to i64, !dbg !252
  %arrayidx49 = getelementptr inbounds double* %row.1117, i64 %idxprom48, !dbg !252
  %13 = load double* %arrayidx49, align 8, !dbg !252, !tbaa !248
  %call50 = tail call double @Zabs(double %12, double %13) #6, !dbg !252
  tail call void @llvm.dbg.value(metadata !{double %call50}, i64 0, metadata !26), !dbg !252
  %cmp51 = fcmp olt double %maxval.4113, %call50, !dbg !254
  tail call void @llvm.dbg.value(metadata !{double %call50}, i64 0, metadata !25), !dbg !255
  %maxval.5 = select i1 %cmp51, double %call50, double %maxval.4113, !dbg !254
  %inc55 = add nsw i32 %jcol.1111, 1, !dbg !235
  tail call void @llvm.dbg.value(metadata !{i32 %inc55}, i64 0, metadata !32), !dbg !235
  %indvars.iv.next123 = add i64 %indvars.iv122, %8, !dbg !235
  %exitcond124 = icmp eq i32 %inc55, %1, !dbg !235
  br i1 %exitcond124, label %for.end57, label %for.body43, !dbg !235

for.end57:                                        ; preds = %for.body43, %for.cond41.preheader
  %maxval.4.lcssa = phi double [ %maxval.3119, %for.cond41.preheader ], [ %maxval.5, %for.body43 ]
  %add.ptr59 = getelementptr inbounds double* %row.1117, i64 %idx.ext58, !dbg !238
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr59}, i64 0, metadata !28), !dbg !238
  %inc61 = add nsw i32 %irow.1118, 1, !dbg !232
  tail call void @llvm.dbg.value(metadata !{i32 %inc61}, i64 0, metadata !31), !dbg !232
  %exitcond125 = icmp eq i32 %inc61, %0, !dbg !232
  br i1 %exitcond125, label %if.end64, label %for.cond41.preheader, !dbg !232

if.end64:                                         ; preds = %for.cond38.preheader, %for.end57, %for.cond.preheader, %for.end, %if.end19
  %maxval.6 = phi double [ 0.000000e+00, %if.end19 ], [ 0.000000e+00, %for.cond.preheader ], [ %maxval.1.lcssa, %for.end ], [ 0.000000e+00, %for.cond38.preheader ], [ %maxval.4.lcssa, %for.end57 ]
  ret double %maxval.6, !dbg !257
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: optsize
declare double @Zabs(double, double) #4

; Function Attrs: nounwind optsize uwtable
define double @A2_frobNorm(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !38), !dbg !258
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !259
  br i1 %cmp, label %if.then, label %if.end, !dbg !259

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !260, !tbaa !221
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str2, i64 0, i64 0), %struct._A2* null) #6, !dbg !260
  tail call void @exit(i32 -1) #7, !dbg !262
  unreachable, !dbg !262

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !263
  %1 = load i32* %type, align 4, !dbg !263, !tbaa !216
  %.off = add i32 %1, -1, !dbg !263
  %switch = icmp ult i32 %.off, 2, !dbg !263
  br i1 %switch, label %if.end7, label %if.then4, !dbg !263

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !264, !tbaa !221
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #6, !dbg !264
  tail call void @exit(i32 -1) #7, !dbg !266
  unreachable, !dbg !266

if.end7:                                          ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !267
  %3 = load i32* %n1, align 4, !dbg !267, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !41), !dbg !267
  %cmp8 = icmp slt i32 %3, 1, !dbg !267
  br i1 %cmp8, label %return, label %lor.lhs.false9, !dbg !267

lor.lhs.false9:                                   ; preds = %if.end7
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !267
  %4 = load i32* %n2, align 4, !dbg !267, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !40), !dbg !267
  %cmp10 = icmp slt i32 %4, 1, !dbg !267
  br i1 %cmp10, label %return, label %if.end12, !dbg !267

if.end12:                                         ; preds = %lor.lhs.false9
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !39), !dbg !268
  switch i32 %1, label %if.end224 [
    i32 1, label %if.then15
    i32 2, label %if.then91
  ], !dbg !269

if.then15:                                        ; preds = %if.end12
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !270
  %5 = load i32* %inc1, align 4, !dbg !270, !tbaa !216
  %cmp16 = icmp eq i32 %5, 1, !dbg !270
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !271
  %6 = load i32* %inc218, align 4, !dbg !271, !tbaa !216
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !270

if.then17:                                        ; preds = %if.then15
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !45), !dbg !271
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !47), !dbg !272
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !42), !dbg !272
  %cmp19317 = icmp sgt i32 %4, 0, !dbg !272
  br i1 %cmp19317, label %for.cond20.preheader.lr.ph, label %if.end224, !dbg !272

for.cond20.preheader.lr.ph:                       ; preds = %if.then17
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !272
  %7 = load double** %entries, align 8, !dbg !272, !tbaa !221
  %cmp21314 = icmp sgt i32 %3, 0, !dbg !274
  %idx.ext = sext i32 %6 to i64, !dbg !277
  br label %for.cond20.preheader, !dbg !272

for.cond20.preheader:                             ; preds = %for.inc25, %for.cond20.preheader.lr.ph
  %norm.0320 = phi double [ 0.000000e+00, %for.cond20.preheader.lr.ph ], [ %norm.1.lcssa, %for.inc25 ]
  %col.0319 = phi double* [ %7, %for.cond20.preheader.lr.ph ], [ %add.ptr, %for.inc25 ]
  %jcol.0318 = phi i32 [ 0, %for.cond20.preheader.lr.ph ], [ %inc26, %for.inc25 ]
  br i1 %cmp21314, label %for.body22, label %for.inc25, !dbg !274

for.body22:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body22 ], [ 0, %for.cond20.preheader ]
  %norm.1316 = phi double [ %add, %for.body22 ], [ %norm.0320, %for.cond20.preheader ]
  %arrayidx = getelementptr inbounds double* %col.0319, i64 %indvars.iv, !dbg !278
  %8 = load double* %arrayidx, align 8, !dbg !278, !tbaa !248
  %mul = fmul double %8, %8, !dbg !278
  %add = fadd double %norm.1316, %mul, !dbg !278
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !39), !dbg !278
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !274
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !274
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !274
  br i1 %exitcond, label %for.inc25, label %for.body22, !dbg !274

for.inc25:                                        ; preds = %for.body22, %for.cond20.preheader
  %norm.1.lcssa = phi double [ %norm.0320, %for.cond20.preheader ], [ %add, %for.body22 ]
  %inc26 = add nsw i32 %jcol.0318, 1, !dbg !277
  tail call void @llvm.dbg.value(metadata !{i32 %inc26}, i64 0, metadata !47), !dbg !277
  %add.ptr = getelementptr inbounds double* %col.0319, i64 %idx.ext, !dbg !277
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr}, i64 0, metadata !42), !dbg !277
  %exitcond370 = icmp eq i32 %inc26, %4, !dbg !272
  br i1 %exitcond370, label %if.end224, label %for.cond20.preheader, !dbg !272

if.else:                                          ; preds = %if.then15
  %cmp29 = icmp eq i32 %6, 1, !dbg !280
  %entries35 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !281
  %9 = load double** %entries35, align 8, !dbg !281, !tbaa !221
  %cmp37327 = icmp sgt i32 %3, 0, !dbg !281
  br i1 %cmp29, label %for.cond36.preheader, label %for.cond65.preheader, !dbg !280

for.cond65.preheader:                             ; preds = %if.else
  br i1 %cmp37327, label %for.cond68.preheader.lr.ph, label %if.end224, !dbg !283

for.cond68.preheader.lr.ph:                       ; preds = %for.cond65.preheader
  %cmp69332 = icmp sgt i32 %4, 0, !dbg !285
  br label %for.cond68.preheader, !dbg !283

for.cond36.preheader:                             ; preds = %if.else
  br i1 %cmp37327, label %for.cond39.preheader.lr.ph, label %if.end224, !dbg !281

for.cond39.preheader.lr.ph:                       ; preds = %for.cond36.preheader
  %cmp40322 = icmp sgt i32 %4, 0, !dbg !288
  %idx.ext53 = sext i32 %5 to i64, !dbg !291
  br label %for.cond39.preheader, !dbg !281

for.cond39.preheader:                             ; preds = %for.inc51, %for.cond39.preheader.lr.ph
  %norm.2330 = phi double [ 0.000000e+00, %for.cond39.preheader.lr.ph ], [ %norm.3.lcssa, %for.inc51 ]
  %row.0329 = phi double* [ %9, %for.cond39.preheader.lr.ph ], [ %add.ptr54, %for.inc51 ]
  %irow33.0328 = phi i32 [ 0, %for.cond39.preheader.lr.ph ], [ %inc52, %for.inc51 ]
  br i1 %cmp40322, label %for.body41, label %for.inc51, !dbg !288

for.body41:                                       ; preds = %for.cond39.preheader, %for.body41
  %indvars.iv371 = phi i64 [ %indvars.iv.next372, %for.body41 ], [ 0, %for.cond39.preheader ]
  %norm.3324 = phi double [ %add47, %for.body41 ], [ %norm.2330, %for.cond39.preheader ]
  %arrayidx43 = getelementptr inbounds double* %row.0329, i64 %indvars.iv371, !dbg !292
  %10 = load double* %arrayidx43, align 8, !dbg !292, !tbaa !248
  %mul46 = fmul double %10, %10, !dbg !292
  %add47 = fadd double %norm.3324, %mul46, !dbg !292
  tail call void @llvm.dbg.value(metadata !{double %add47}, i64 0, metadata !39), !dbg !292
  %indvars.iv.next372 = add i64 %indvars.iv371, 1, !dbg !288
  %lftr.wideiv373 = trunc i64 %indvars.iv.next372 to i32, !dbg !288
  %exitcond374 = icmp eq i32 %lftr.wideiv373, %4, !dbg !288
  br i1 %exitcond374, label %for.inc51, label %for.body41, !dbg !288

for.inc51:                                        ; preds = %for.body41, %for.cond39.preheader
  %norm.3.lcssa = phi double [ %norm.2330, %for.cond39.preheader ], [ %add47, %for.body41 ]
  %inc52 = add nsw i32 %irow33.0328, 1, !dbg !291
  tail call void @llvm.dbg.value(metadata !{i32 %inc52}, i64 0, metadata !51), !dbg !291
  %add.ptr54 = getelementptr inbounds double* %row.0329, i64 %idx.ext53, !dbg !291
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr54}, i64 0, metadata !48), !dbg !291
  %exitcond375 = icmp eq i32 %inc52, %3, !dbg !281
  br i1 %exitcond375, label %if.end224, label %for.cond39.preheader, !dbg !281

for.cond68.preheader:                             ; preds = %for.inc83, %for.cond68.preheader.lr.ph
  %norm.4339 = phi double [ 0.000000e+00, %for.cond68.preheader.lr.ph ], [ %norm.5.lcssa, %for.inc83 ]
  %irow63.0338 = phi i32 [ 0, %for.cond68.preheader.lr.ph ], [ %inc84, %for.inc83 ]
  br i1 %cmp69332, label %for.body70.lr.ph, label %for.inc83, !dbg !285

for.body70.lr.ph:                                 ; preds = %for.cond68.preheader
  %mul71 = mul nsw i32 %irow63.0338, %5, !dbg !294
  br label %for.body70, !dbg !285

for.body70:                                       ; preds = %for.body70, %for.body70.lr.ph
  %indvars.iv376 = phi i64 [ 0, %for.body70.lr.ph ], [ %indvars.iv.next377, %for.body70 ]
  %norm.5334 = phi double [ %norm.4339, %for.body70.lr.ph ], [ %add79, %for.body70 ]
  %11 = trunc i64 %indvars.iv376 to i32, !dbg !294
  %mul72 = mul nsw i32 %11, %6, !dbg !294
  %add73 = add nsw i32 %mul72, %mul71, !dbg !294
  tail call void @llvm.dbg.value(metadata !{i32 %add73}, i64 0, metadata !59), !dbg !294
  %idxprom74 = sext i32 %add73 to i64, !dbg !296
  %arrayidx75 = getelementptr inbounds double* %9, i64 %idxprom74, !dbg !296
  %12 = load double* %arrayidx75, align 8, !dbg !296, !tbaa !248
  %mul78 = fmul double %12, %12, !dbg !296
  %add79 = fadd double %norm.5334, %mul78, !dbg !296
  tail call void @llvm.dbg.value(metadata !{double %add79}, i64 0, metadata !39), !dbg !296
  %indvars.iv.next377 = add i64 %indvars.iv376, 1, !dbg !285
  %lftr.wideiv378 = trunc i64 %indvars.iv.next377 to i32, !dbg !285
  %exitcond379 = icmp eq i32 %lftr.wideiv378, %4, !dbg !285
  br i1 %exitcond379, label %for.inc83, label %for.body70, !dbg !285

for.inc83:                                        ; preds = %for.body70, %for.cond68.preheader
  %norm.5.lcssa = phi double [ %norm.4339, %for.cond68.preheader ], [ %add79, %for.body70 ]
  %inc84 = add nsw i32 %irow63.0338, 1, !dbg !283
  tail call void @llvm.dbg.value(metadata !{i32 %inc84}, i64 0, metadata !57), !dbg !283
  %exitcond380 = icmp eq i32 %inc84, %3, !dbg !283
  br i1 %exitcond380, label %if.end224, label %for.cond68.preheader, !dbg !283

if.then91:                                        ; preds = %if.end12
  %inc192 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !297
  %13 = load i32* %inc192, align 4, !dbg !297, !tbaa !216
  %cmp93 = icmp eq i32 %13, 1, !dbg !297
  %inc297 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !298
  %14 = load i32* %inc297, align 4, !dbg !298, !tbaa !216
  br i1 %cmp93, label %for.cond104.preheader.lr.ph, label %if.else134, !dbg !297

for.cond104.preheader.lr.ph:                      ; preds = %if.then91
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !63), !dbg !298
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !65), !dbg !299
  tail call void @llvm.dbg.value(metadata !{double* %15}, i64 0, metadata !60), !dbg !299
  %entries100 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !299
  %15 = load double** %entries100, align 8, !dbg !299, !tbaa !221
  %cmp105341 = icmp sgt i32 %3, 0, !dbg !301
  %mul130 = shl nsw i32 %14, 1, !dbg !304
  %idx.ext131 = sext i32 %mul130 to i64, !dbg !304
  br label %for.cond104.preheader, !dbg !299

for.cond104.preheader:                            ; preds = %for.inc128, %for.cond104.preheader.lr.ph
  %norm.6349 = phi double [ 0.000000e+00, %for.cond104.preheader.lr.ph ], [ %norm.7.lcssa, %for.inc128 ]
  %jcol99.0348 = phi i32 [ 0, %for.cond104.preheader.lr.ph ], [ %inc129, %for.inc128 ]
  %col95.0347 = phi double* [ %15, %for.cond104.preheader.lr.ph ], [ %add.ptr132, %for.inc128 ]
  br i1 %cmp105341, label %for.body106, label %for.inc128, !dbg !301

for.body106:                                      ; preds = %for.cond104.preheader, %for.body106
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %for.body106 ], [ 0, %for.cond104.preheader ]
  %norm.7343 = phi double [ %add124, %for.body106 ], [ %norm.6349, %for.cond104.preheader ]
  %16 = trunc i64 %indvars.iv381 to i32, !dbg !305
  %mul107 = shl nsw i32 %16, 1, !dbg !305
  %idxprom108 = sext i32 %mul107 to i64, !dbg !305
  %arrayidx109 = getelementptr inbounds double* %col95.0347, i64 %idxprom108, !dbg !305
  %17 = load double* %arrayidx109, align 8, !dbg !305, !tbaa !248
  %mul113 = fmul double %17, %17, !dbg !305
  %add115313 = or i32 %mul107, 1, !dbg !305
  %idxprom116 = sext i32 %add115313 to i64, !dbg !305
  %arrayidx117 = getelementptr inbounds double* %col95.0347, i64 %idxprom116, !dbg !305
  %18 = load double* %arrayidx117, align 8, !dbg !305, !tbaa !248
  %mul122 = fmul double %18, %18, !dbg !305
  %add123 = fadd double %mul113, %mul122, !dbg !305
  %add124 = fadd double %norm.7343, %add123, !dbg !305
  tail call void @llvm.dbg.value(metadata !{double %add124}, i64 0, metadata !39), !dbg !305
  %indvars.iv.next382 = add i64 %indvars.iv381, 1, !dbg !301
  %lftr.wideiv383 = trunc i64 %indvars.iv.next382 to i32, !dbg !301
  %exitcond384 = icmp eq i32 %lftr.wideiv383, %3, !dbg !301
  br i1 %exitcond384, label %for.inc128, label %for.body106, !dbg !301

for.inc128:                                       ; preds = %for.body106, %for.cond104.preheader
  %norm.7.lcssa = phi double [ %norm.6349, %for.cond104.preheader ], [ %add124, %for.body106 ]
  %inc129 = add nsw i32 %jcol99.0348, 1, !dbg !304
  tail call void @llvm.dbg.value(metadata !{i32 %inc129}, i64 0, metadata !65), !dbg !304
  %add.ptr132 = getelementptr inbounds double* %col95.0347, i64 %idx.ext131, !dbg !304
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr132}, i64 0, metadata !60), !dbg !304
  %exitcond385 = icmp eq i32 %inc129, %4, !dbg !299
  br i1 %exitcond385, label %if.end224, label %for.cond104.preheader, !dbg !299

if.else134:                                       ; preds = %if.then91
  %cmp136 = icmp eq i32 %14, 1, !dbg !307
  %entries143 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !308
  %19 = load double** %entries143, align 8, !dbg !308, !tbaa !221
  %cmp145356 = icmp sgt i32 %3, 0, !dbg !308
  br i1 %cmp136, label %for.cond144.preheader, label %for.cond187.preheader, !dbg !307

for.cond187.preheader:                            ; preds = %if.else134
  br i1 %cmp145356, label %for.cond190.preheader.lr.ph, label %if.end224, !dbg !310

for.cond190.preheader.lr.ph:                      ; preds = %for.cond187.preheader
  %cmp191361 = icmp sgt i32 %4, 0, !dbg !312
  br label %for.cond190.preheader, !dbg !310

for.cond144.preheader:                            ; preds = %if.else134
  br i1 %cmp145356, label %for.cond147.preheader.lr.ph, label %if.end224, !dbg !308

for.cond147.preheader.lr.ph:                      ; preds = %for.cond144.preheader
  %mul173 = shl nsw i32 %13, 1, !dbg !315
  %idx.ext174 = sext i32 %mul173 to i64, !dbg !315
  br label %for.cond147.preheader, !dbg !308

for.cond147.preheader:                            ; preds = %for.inc171, %for.cond147.preheader.lr.ph
  %norm.8359 = phi double [ 0.000000e+00, %for.cond147.preheader.lr.ph ], [ %add167, %for.inc171 ]
  %irow141.0358 = phi i32 [ 0, %for.cond147.preheader.lr.ph ], [ %inc172, %for.inc171 ]
  %row138.0357 = phi double* [ %19, %for.cond147.preheader.lr.ph ], [ %add.ptr175, %for.inc171 ]
  br label %for.body149, !dbg !316

for.body149:                                      ; preds = %for.cond147.preheader, %for.body149
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %for.body149 ], [ 0, %for.cond147.preheader ]
  %norm.9353 = phi double [ %add167, %for.body149 ], [ %norm.8359, %for.cond147.preheader ]
  %20 = trunc i64 %indvars.iv386 to i32, !dbg !319
  %mul150 = shl nsw i32 %20, 1, !dbg !319
  %idxprom151 = sext i32 %mul150 to i64, !dbg !319
  %arrayidx152 = getelementptr inbounds double* %row138.0357, i64 %idxprom151, !dbg !319
  %21 = load double* %arrayidx152, align 8, !dbg !319, !tbaa !248
  %mul156 = fmul double %21, %21, !dbg !319
  %add158312 = or i32 %mul150, 1, !dbg !319
  %idxprom159 = sext i32 %add158312 to i64, !dbg !319
  %arrayidx160 = getelementptr inbounds double* %row138.0357, i64 %idxprom159, !dbg !319
  %22 = load double* %arrayidx160, align 8, !dbg !319, !tbaa !248
  %mul165 = fmul double %22, %22, !dbg !319
  %add166 = fadd double %mul156, %mul165, !dbg !319
  %add167 = fadd double %norm.9353, %add166, !dbg !319
  tail call void @llvm.dbg.value(metadata !{double %add167}, i64 0, metadata !39), !dbg !319
  %indvars.iv.next387 = add i64 %indvars.iv386, 1, !dbg !316
  %lftr.wideiv388 = trunc i64 %indvars.iv.next387 to i32, !dbg !316
  %exitcond389 = icmp eq i32 %lftr.wideiv388, %4, !dbg !316
  br i1 %exitcond389, label %for.inc171, label %for.body149, !dbg !316

for.inc171:                                       ; preds = %for.body149
  %inc172 = add nsw i32 %irow141.0358, 1, !dbg !315
  tail call void @llvm.dbg.value(metadata !{i32 %inc172}, i64 0, metadata !69), !dbg !315
  %add.ptr175 = getelementptr inbounds double* %row138.0357, i64 %idx.ext174, !dbg !315
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr175}, i64 0, metadata !66), !dbg !315
  %exitcond390 = icmp eq i32 %inc172, %3, !dbg !308
  br i1 %exitcond390, label %if.end224, label %for.cond147.preheader, !dbg !308

for.cond190.preheader:                            ; preds = %for.inc217, %for.cond190.preheader.lr.ph
  %irow184.0368 = phi i32 [ 0, %for.cond190.preheader.lr.ph ], [ %inc219, %for.inc217 ]
  %norm.10367 = phi double [ 0.000000e+00, %for.cond190.preheader.lr.ph ], [ %norm.11.lcssa, %for.inc217 ]
  br i1 %cmp191361, label %for.body192.lr.ph, label %for.inc217, !dbg !312

for.body192.lr.ph:                                ; preds = %for.cond190.preheader
  %mul193 = mul nsw i32 %irow184.0368, %13, !dbg !321
  br label %for.body192, !dbg !312

for.body192:                                      ; preds = %for.body192, %for.body192.lr.ph
  %indvars.iv391 = phi i64 [ 0, %for.body192.lr.ph ], [ %indvars.iv.next392, %for.body192 ]
  %norm.11362 = phi double [ %norm.10367, %for.body192.lr.ph ], [ %add213, %for.body192 ]
  %23 = trunc i64 %indvars.iv391 to i32, !dbg !321
  %mul194 = mul nsw i32 %23, %14, !dbg !321
  %add195 = add nsw i32 %mul194, %mul193, !dbg !321
  tail call void @llvm.dbg.value(metadata !{i32 %add195}, i64 0, metadata !77), !dbg !321
  %mul196 = shl nsw i32 %add195, 1, !dbg !323
  %idxprom197 = sext i32 %mul196 to i64, !dbg !323
  %arrayidx198 = getelementptr inbounds double* %19, i64 %idxprom197, !dbg !323
  %24 = load double* %arrayidx198, align 8, !dbg !323, !tbaa !248
  %mul202 = fmul double %24, %24, !dbg !323
  %add204311 = or i32 %mul196, 1, !dbg !323
  %idxprom205 = sext i32 %add204311 to i64, !dbg !323
  %arrayidx206 = getelementptr inbounds double* %19, i64 %idxprom205, !dbg !323
  %25 = load double* %arrayidx206, align 8, !dbg !323, !tbaa !248
  %mul211 = fmul double %25, %25, !dbg !323
  %add212 = fadd double %mul202, %mul211, !dbg !323
  %add213 = fadd double %norm.11362, %add212, !dbg !323
  tail call void @llvm.dbg.value(metadata !{double %add213}, i64 0, metadata !39), !dbg !323
  %indvars.iv.next392 = add i64 %indvars.iv391, 1, !dbg !312
  %lftr.wideiv393 = trunc i64 %indvars.iv.next392 to i32, !dbg !312
  %exitcond394 = icmp eq i32 %lftr.wideiv393, %4, !dbg !312
  br i1 %exitcond394, label %for.inc217, label %for.body192, !dbg !312

for.inc217:                                       ; preds = %for.body192, %for.cond190.preheader
  %norm.11.lcssa = phi double [ %norm.10367, %for.cond190.preheader ], [ %add213, %for.body192 ]
  %inc219 = add nsw i32 %irow184.0368, 1, !dbg !310
  tail call void @llvm.dbg.value(metadata !{i32 %inc219}, i64 0, metadata !75), !dbg !310
  %exitcond395 = icmp eq i32 %inc219, %3, !dbg !310
  br i1 %exitcond395, label %if.end224, label %for.cond190.preheader, !dbg !310

if.end224:                                        ; preds = %for.cond187.preheader, %for.inc217, %for.cond144.preheader, %for.inc171, %for.inc128, %for.cond65.preheader, %for.inc83, %for.cond36.preheader, %for.inc51, %if.then17, %for.inc25, %if.end12
  %norm.12 = phi double [ 0.000000e+00, %if.end12 ], [ 0.000000e+00, %if.then17 ], [ %norm.1.lcssa, %for.inc25 ], [ 0.000000e+00, %for.cond36.preheader ], [ %norm.3.lcssa, %for.inc51 ], [ 0.000000e+00, %for.cond65.preheader ], [ %norm.5.lcssa, %for.inc83 ], [ %norm.7.lcssa, %for.inc128 ], [ 0.000000e+00, %for.cond144.preheader ], [ %add167, %for.inc171 ], [ 0.000000e+00, %for.cond187.preheader ], [ %norm.11.lcssa, %for.inc217 ]
  %call225 = tail call double @sqrt(double %norm.12) #6, !dbg !324
  tail call void @llvm.dbg.value(metadata !{double %call225}, i64 0, metadata !39), !dbg !324
  br label %return, !dbg !325

return:                                           ; preds = %if.end7, %lor.lhs.false9, %if.end224
  %retval.0 = phi double [ %call225, %if.end224 ], [ 0.000000e+00, %lor.lhs.false9 ], [ 0.000000e+00, %if.end7 ]
  ret double %retval.0, !dbg !325
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize uwtable
define double @A2_oneNorm(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !80), !dbg !326
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !327
  br i1 %cmp, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !328, !tbaa !221
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._A2* null) #6, !dbg !328
  tail call void @exit(i32 -1) #7, !dbg !330
  unreachable, !dbg !330

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !331
  %1 = load i32* %type, align 4, !dbg !331, !tbaa !216
  %.off = add i32 %1, -1, !dbg !331
  %switch = icmp ult i32 %.off, 2, !dbg !331
  br i1 %switch, label %if.end7, label %if.then4, !dbg !331

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !332, !tbaa !221
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([87 x i8]* @.str5, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #6, !dbg !332
  tail call void @exit(i32 -1) #7, !dbg !334
  unreachable, !dbg !334

if.end7:                                          ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !335
  %3 = load i32* %n1, align 4, !dbg !335, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !83), !dbg !335
  %cmp8 = icmp slt i32 %3, 1, !dbg !335
  br i1 %cmp8, label %return, label %lor.lhs.false9, !dbg !335

lor.lhs.false9:                                   ; preds = %if.end7
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !335
  %4 = load i32* %n2, align 4, !dbg !335, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !82), !dbg !335
  %cmp10 = icmp slt i32 %4, 1, !dbg !335
  br i1 %cmp10, label %return, label %if.end12, !dbg !335

if.end12:                                         ; preds = %lor.lhs.false9
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !81), !dbg !336
  switch i32 %1, label %return [
    i32 1, label %if.then15
    i32 2, label %if.then65
  ], !dbg !337

if.then15:                                        ; preds = %if.end12
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !338
  %5 = load i32* %inc1, align 4, !dbg !338, !tbaa !216
  %cmp16 = icmp eq i32 %5, 1, !dbg !338
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !339
  %6 = load i32* %inc218, align 4, !dbg !339, !tbaa !216
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !340
  %7 = load double** %entries, align 8, !dbg !340, !tbaa !221
  %cmp19205 = icmp sgt i32 %4, 0, !dbg !340
  br i1 %cmp16, label %for.cond.preheader, label %for.cond39.preheader, !dbg !338

for.cond39.preheader:                             ; preds = %if.then15
  br i1 %cmp19205, label %for.cond42.preheader.lr.ph, label %return, !dbg !342

for.cond42.preheader.lr.ph:                       ; preds = %for.cond39.preheader
  %cmp43210 = icmp sgt i32 %3, 0, !dbg !344
  %idx.ext58 = sext i32 %6 to i64, !dbg !347
  %8 = sext i32 %5 to i64
  br label %for.cond42.preheader, !dbg !342

for.cond.preheader:                               ; preds = %if.then15
  br i1 %cmp19205, label %for.cond20.preheader.lr.ph, label %return, !dbg !340

for.cond20.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp21202 = icmp sgt i32 %3, 0, !dbg !348
  %idx.ext = sext i32 %6 to i64, !dbg !351
  br label %for.cond20.preheader, !dbg !340

for.cond20.preheader:                             ; preds = %for.end, %for.cond20.preheader.lr.ph
  %norm.0208 = phi double [ 0.000000e+00, %for.cond20.preheader.lr.ph ], [ %norm.1, %for.end ]
  %col.0207 = phi double* [ %7, %for.cond20.preheader.lr.ph ], [ %add.ptr, %for.end ]
  %jcol.0206 = phi i32 [ 0, %for.cond20.preheader.lr.ph ], [ %inc28, %for.end ]
  br i1 %cmp21202, label %for.body22, label %for.end, !dbg !348

for.body22:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body22 ], [ 0, %for.cond20.preheader ]
  %sum.0204 = phi double [ %add, %for.body22 ], [ 0.000000e+00, %for.cond20.preheader ]
  %arrayidx = getelementptr inbounds double* %col.0207, i64 %indvars.iv, !dbg !352
  %9 = load double* %arrayidx, align 8, !dbg !352, !tbaa !248
  %call23 = tail call double @fabs(double %9) #8, !dbg !352
  %add = fadd double %sum.0204, %call23, !dbg !352
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !84), !dbg !352
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !348
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !348
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !348
  br i1 %exitcond, label %for.end, label %for.body22, !dbg !348

for.end:                                          ; preds = %for.body22, %for.cond20.preheader
  %sum.0.lcssa = phi double [ 0.000000e+00, %for.cond20.preheader ], [ %add, %for.body22 ]
  %cmp24 = fcmp olt double %norm.0208, %sum.0.lcssa, !dbg !354
  tail call void @llvm.dbg.value(metadata !{double %sum.0.lcssa}, i64 0, metadata !81), !dbg !355
  %norm.1 = select i1 %cmp24, double %sum.0.lcssa, double %norm.0208, !dbg !354
  %inc28 = add nsw i32 %jcol.0206, 1, !dbg !351
  tail call void @llvm.dbg.value(metadata !{i32 %inc28}, i64 0, metadata !90), !dbg !351
  %add.ptr = getelementptr inbounds double* %col.0207, i64 %idx.ext, !dbg !351
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr}, i64 0, metadata !87), !dbg !351
  %exitcond242 = icmp eq i32 %inc28, %4, !dbg !340
  br i1 %exitcond242, label %return, label %for.cond20.preheader, !dbg !340

for.cond42.preheader:                             ; preds = %for.end52, %for.cond42.preheader.lr.ph
  %norm.2219 = phi double [ 0.000000e+00, %for.cond42.preheader.lr.ph ], [ %norm.3, %for.end52 ]
  %jcol37.0218 = phi i32 [ 0, %for.cond42.preheader.lr.ph ], [ %inc57, %for.end52 ]
  %col31.0217 = phi double* [ %7, %for.cond42.preheader.lr.ph ], [ %add.ptr59, %for.end52 ]
  br i1 %cmp43210, label %for.body44, label %for.end52, !dbg !344

for.body44:                                       ; preds = %for.cond42.preheader, %for.body44
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %for.body44 ], [ 0, %for.cond42.preheader ]
  %irow36.0212 = phi i32 [ %inc50, %for.body44 ], [ 0, %for.cond42.preheader ]
  %sum30.0211 = phi double [ %add48, %for.body44 ], [ 0.000000e+00, %for.cond42.preheader ]
  %arrayidx46 = getelementptr inbounds double* %col31.0217, i64 %indvars.iv243, !dbg !357
  %10 = load double* %arrayidx46, align 8, !dbg !357, !tbaa !248
  %call47 = tail call double @fabs(double %10) #8, !dbg !357
  %add48 = fadd double %sum30.0211, %call47, !dbg !357
  tail call void @llvm.dbg.value(metadata !{double %add48}, i64 0, metadata !91), !dbg !357
  %inc50 = add nsw i32 %irow36.0212, 1, !dbg !344
  tail call void @llvm.dbg.value(metadata !{i32 %inc50}, i64 0, metadata !96), !dbg !344
  %indvars.iv.next244 = add i64 %indvars.iv243, %8, !dbg !344
  %exitcond245 = icmp eq i32 %inc50, %3, !dbg !344
  br i1 %exitcond245, label %for.end52, label %for.body44, !dbg !344

for.end52:                                        ; preds = %for.body44, %for.cond42.preheader
  %sum30.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %add48, %for.body44 ]
  %cmp53 = fcmp olt double %norm.2219, %sum30.0.lcssa, !dbg !359
  tail call void @llvm.dbg.value(metadata !{double %sum30.0.lcssa}, i64 0, metadata !81), !dbg !360
  %norm.3 = select i1 %cmp53, double %sum30.0.lcssa, double %norm.2219, !dbg !359
  %inc57 = add nsw i32 %jcol37.0218, 1, !dbg !347
  tail call void @llvm.dbg.value(metadata !{i32 %inc57}, i64 0, metadata !97), !dbg !347
  %add.ptr59 = getelementptr inbounds double* %col31.0217, i64 %idx.ext58, !dbg !347
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr59}, i64 0, metadata !93), !dbg !347
  %exitcond246 = icmp eq i32 %inc57, %4, !dbg !342
  br i1 %exitcond246, label %return, label %for.cond42.preheader, !dbg !342

if.then65:                                        ; preds = %if.end12
  %inc166 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !362
  %11 = load i32* %inc166, align 4, !dbg !362, !tbaa !216
  %cmp67 = icmp eq i32 %11, 1, !dbg !362
  %inc272 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !363
  %12 = load i32* %inc272, align 4, !dbg !363, !tbaa !216
  %entries75 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !364
  %13 = load double** %entries75, align 8, !dbg !364, !tbaa !221
  %cmp80221 = icmp sgt i32 %3, 0, !dbg !366
  %mul98 = shl nsw i32 %12, 1, !dbg !369
  %idx.ext99 = sext i32 %mul98 to i64, !dbg !369
  br i1 %cmp67, label %for.cond79.preheader, label %for.cond116.preheader.lr.ph, !dbg !362

for.cond116.preheader.lr.ph:                      ; preds = %if.then65
  %14 = sext i32 %11 to i64
  br label %for.cond116.preheader, !dbg !370

for.cond79.preheader:                             ; preds = %if.then65, %for.end92
  %norm.4229 = phi double [ %norm.5, %for.end92 ], [ 0.000000e+00, %if.then65 ]
  %jcol74.0228 = phi i32 [ %inc97, %for.end92 ], [ 0, %if.then65 ]
  %col70.0227 = phi double* [ %add.ptr100, %for.end92 ], [ %13, %if.then65 ]
  br i1 %cmp80221, label %for.body81, label %for.end92, !dbg !366

for.body81:                                       ; preds = %for.cond79.preheader, %for.body81
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %for.body81 ], [ 0, %for.cond79.preheader ]
  %sum69.0222 = phi double [ %add89, %for.body81 ], [ 0.000000e+00, %for.cond79.preheader ]
  %15 = trunc i64 %indvars.iv247 to i32, !dbg !372
  %mul = shl nsw i32 %15, 1, !dbg !372
  %idxprom82 = sext i32 %mul to i64, !dbg !372
  %arrayidx83 = getelementptr inbounds double* %col70.0227, i64 %idxprom82, !dbg !372
  %16 = load double* %arrayidx83, align 8, !dbg !372, !tbaa !248
  %add85201 = or i32 %mul, 1, !dbg !372
  %idxprom86 = sext i32 %add85201 to i64, !dbg !372
  %arrayidx87 = getelementptr inbounds double* %col70.0227, i64 %idxprom86, !dbg !372
  %17 = load double* %arrayidx87, align 8, !dbg !372, !tbaa !248
  %call88 = tail call double @Zabs(double %16, double %17) #6, !dbg !372
  %add89 = fadd double %sum69.0222, %call88, !dbg !372
  tail call void @llvm.dbg.value(metadata !{double %add89}, i64 0, metadata !99), !dbg !372
  %indvars.iv.next248 = add i64 %indvars.iv247, 1, !dbg !366
  %lftr.wideiv249 = trunc i64 %indvars.iv.next248 to i32, !dbg !366
  %exitcond250 = icmp eq i32 %lftr.wideiv249, %3, !dbg !366
  br i1 %exitcond250, label %for.end92, label %for.body81, !dbg !366

for.end92:                                        ; preds = %for.body81, %for.cond79.preheader
  %sum69.0.lcssa = phi double [ 0.000000e+00, %for.cond79.preheader ], [ %add89, %for.body81 ]
  %cmp93 = fcmp olt double %norm.4229, %sum69.0.lcssa, !dbg !374
  tail call void @llvm.dbg.value(metadata !{double %sum69.0.lcssa}, i64 0, metadata !81), !dbg !375
  %norm.5 = select i1 %cmp93, double %sum69.0.lcssa, double %norm.4229, !dbg !374
  %inc97 = add nsw i32 %jcol74.0228, 1, !dbg !369
  tail call void @llvm.dbg.value(metadata !{i32 %inc97}, i64 0, metadata !105), !dbg !369
  %add.ptr100 = getelementptr inbounds double* %col70.0227, i64 %idx.ext99, !dbg !369
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr100}, i64 0, metadata !102), !dbg !369
  %exitcond251 = icmp eq i32 %inc97, %4, !dbg !364
  br i1 %exitcond251, label %return, label %for.cond79.preheader, !dbg !364

for.cond116.preheader:                            ; preds = %for.end131, %for.cond116.preheader.lr.ph
  %jcol110.0240 = phi i32 [ 0, %for.cond116.preheader.lr.ph ], [ %inc136, %for.end131 ]
  %norm.6239 = phi double [ 0.000000e+00, %for.cond116.preheader.lr.ph ], [ %norm.7, %for.end131 ]
  %col104.0238 = phi double* [ %13, %for.cond116.preheader.lr.ph ], [ %add.ptr139, %for.end131 ]
  br i1 %cmp80221, label %for.body118, label %for.end131, !dbg !377

for.body118:                                      ; preds = %for.cond116.preheader, %for.body118
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %for.body118 ], [ 0, %for.cond116.preheader ]
  %irow109.0233 = phi i32 [ %inc129, %for.body118 ], [ 0, %for.cond116.preheader ]
  %sum103.0232 = phi double [ %add127, %for.body118 ], [ 0.000000e+00, %for.cond116.preheader ]
  %18 = trunc i64 %indvars.iv252 to i32, !dbg !380
  %mul119 = shl nsw i32 %18, 1, !dbg !380
  %idxprom120 = sext i32 %mul119 to i64, !dbg !380
  %arrayidx121 = getelementptr inbounds double* %col104.0238, i64 %idxprom120, !dbg !380
  %19 = load double* %arrayidx121, align 8, !dbg !380, !tbaa !248
  %add123200 = or i32 %mul119, 1, !dbg !380
  %idxprom124 = sext i32 %add123200 to i64, !dbg !380
  %arrayidx125 = getelementptr inbounds double* %col104.0238, i64 %idxprom124, !dbg !380
  %20 = load double* %arrayidx125, align 8, !dbg !380, !tbaa !248
  %call126 = tail call double @Zabs(double %19, double %20) #6, !dbg !380
  %add127 = fadd double %sum103.0232, %call126, !dbg !380
  tail call void @llvm.dbg.value(metadata !{double %add127}, i64 0, metadata !106), !dbg !380
  %inc129 = add nsw i32 %irow109.0233, 1, !dbg !377
  tail call void @llvm.dbg.value(metadata !{i32 %inc129}, i64 0, metadata !111), !dbg !377
  %indvars.iv.next253 = add i64 %indvars.iv252, %14, !dbg !377
  %exitcond254 = icmp eq i32 %inc129, %3, !dbg !377
  br i1 %exitcond254, label %for.end131, label %for.body118, !dbg !377

for.end131:                                       ; preds = %for.body118, %for.cond116.preheader
  %sum103.0.lcssa = phi double [ 0.000000e+00, %for.cond116.preheader ], [ %add127, %for.body118 ]
  %cmp132 = fcmp olt double %norm.6239, %sum103.0.lcssa, !dbg !382
  tail call void @llvm.dbg.value(metadata !{double %sum103.0.lcssa}, i64 0, metadata !81), !dbg !383
  %norm.7 = select i1 %cmp132, double %sum103.0.lcssa, double %norm.6239, !dbg !382
  %inc136 = add nsw i32 %jcol110.0240, 1, !dbg !385
  tail call void @llvm.dbg.value(metadata !{i32 %inc136}, i64 0, metadata !112), !dbg !385
  %add.ptr139 = getelementptr inbounds double* %col104.0238, i64 %idx.ext99, !dbg !385
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr139}, i64 0, metadata !108), !dbg !385
  %exitcond255 = icmp eq i32 %inc136, %4, !dbg !370
  br i1 %exitcond255, label %return, label %for.cond116.preheader, !dbg !370

return:                                           ; preds = %for.end131, %for.end92, %for.cond39.preheader, %for.end52, %for.cond.preheader, %for.end, %if.end12, %if.end7, %lor.lhs.false9
  %retval.0 = phi double [ 0.000000e+00, %lor.lhs.false9 ], [ 0.000000e+00, %if.end7 ], [ 0.000000e+00, %if.end12 ], [ 0.000000e+00, %for.cond.preheader ], [ %norm.1, %for.end ], [ 0.000000e+00, %for.cond39.preheader ], [ %norm.3, %for.end52 ], [ %norm.5, %for.end92 ], [ %norm.7, %for.end131 ]
  ret double %retval.0, !dbg !386
}

; Function Attrs: nounwind optsize uwtable
define double @A2_infinityNorm(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !116), !dbg !387
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !388
  br i1 %cmp, label %if.then, label %if.end, !dbg !388

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !389, !tbaa !221
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), %struct._A2* null) #6, !dbg !389
  tail call void @exit(i32 -1) #7, !dbg !391
  unreachable, !dbg !391

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !392
  %1 = load i32* %type, align 4, !dbg !392, !tbaa !216
  %.off = add i32 %1, -1, !dbg !392
  %switch = icmp ult i32 %.off, 2, !dbg !392
  br i1 %switch, label %if.end7, label %if.then4, !dbg !392

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !393, !tbaa !221
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([92 x i8]* @.str7, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #6, !dbg !393
  tail call void @exit(i32 -1) #7, !dbg !395
  unreachable, !dbg !395

if.end7:                                          ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !396
  %3 = load i32* %n1, align 4, !dbg !396, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !119), !dbg !396
  %cmp8 = icmp slt i32 %3, 1, !dbg !396
  br i1 %cmp8, label %return, label %lor.lhs.false9, !dbg !396

lor.lhs.false9:                                   ; preds = %if.end7
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !396
  %4 = load i32* %n2, align 4, !dbg !396, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !118), !dbg !396
  %cmp10 = icmp slt i32 %4, 1, !dbg !396
  br i1 %cmp10, label %return, label %if.end12, !dbg !396

if.end12:                                         ; preds = %lor.lhs.false9
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !117), !dbg !397
  switch i32 %1, label %return [
    i32 1, label %if.then15
    i32 2, label %if.then65
  ], !dbg !398

if.then15:                                        ; preds = %if.end12
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !399
  %5 = load i32* %inc2, align 4, !dbg !399, !tbaa !216
  %cmp16 = icmp eq i32 %5, 1, !dbg !399
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !400
  %6 = load double** %entries, align 8, !dbg !400, !tbaa !221
  %inc118 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !401
  %7 = load i32* %inc118, align 4, !dbg !401, !tbaa !216
  %cmp19205 = icmp sgt i32 %3, 0, !dbg !402
  br i1 %cmp16, label %for.cond.preheader, label %for.cond39.preheader, !dbg !399

for.cond39.preheader:                             ; preds = %if.then15
  br i1 %cmp19205, label %for.cond42.preheader.lr.ph, label %return, !dbg !404

for.cond42.preheader.lr.ph:                       ; preds = %for.cond39.preheader
  %cmp43210 = icmp sgt i32 %4, 0, !dbg !406
  %idx.ext58 = sext i32 %7 to i64, !dbg !404
  %8 = sext i32 %5 to i64
  br label %for.cond42.preheader, !dbg !404

for.cond.preheader:                               ; preds = %if.then15
  br i1 %cmp19205, label %for.cond20.preheader.lr.ph, label %return, !dbg !402

for.cond20.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp21202 = icmp sgt i32 %4, 0, !dbg !409
  %idx.ext = sext i32 %7 to i64, !dbg !402
  br label %for.cond20.preheader, !dbg !402

for.cond20.preheader:                             ; preds = %for.end, %for.cond20.preheader.lr.ph
  %norm.0208 = phi double [ 0.000000e+00, %for.cond20.preheader.lr.ph ], [ %norm.1, %for.end ]
  %row.0207 = phi double* [ %6, %for.cond20.preheader.lr.ph ], [ %add.ptr, %for.end ]
  %irow.0206 = phi i32 [ 0, %for.cond20.preheader.lr.ph ], [ %inc28, %for.end ]
  br i1 %cmp21202, label %for.body22, label %for.end, !dbg !409

for.body22:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body22 ], [ 0, %for.cond20.preheader ]
  %sum.0204 = phi double [ %add, %for.body22 ], [ 0.000000e+00, %for.cond20.preheader ]
  %arrayidx = getelementptr inbounds double* %row.0207, i64 %indvars.iv, !dbg !412
  %9 = load double* %arrayidx, align 8, !dbg !412, !tbaa !248
  %call23 = tail call double @fabs(double %9) #8, !dbg !412
  %add = fadd double %sum.0204, %call23, !dbg !412
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !120), !dbg !412
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !409
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !409
  %exitcond = icmp eq i32 %lftr.wideiv, %4, !dbg !409
  br i1 %exitcond, label %for.end, label %for.body22, !dbg !409

for.end:                                          ; preds = %for.body22, %for.cond20.preheader
  %sum.0.lcssa = phi double [ 0.000000e+00, %for.cond20.preheader ], [ %add, %for.body22 ]
  %cmp24 = fcmp olt double %norm.0208, %sum.0.lcssa, !dbg !414
  tail call void @llvm.dbg.value(metadata !{double %sum.0.lcssa}, i64 0, metadata !117), !dbg !415
  %norm.1 = select i1 %cmp24, double %sum.0.lcssa, double %norm.0208, !dbg !414
  %inc28 = add nsw i32 %irow.0206, 1, !dbg !402
  tail call void @llvm.dbg.value(metadata !{i32 %inc28}, i64 0, metadata !125), !dbg !402
  %add.ptr = getelementptr inbounds double* %row.0207, i64 %idx.ext, !dbg !402
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr}, i64 0, metadata !123), !dbg !402
  %exitcond242 = icmp eq i32 %inc28, %3, !dbg !402
  br i1 %exitcond242, label %return, label %for.cond20.preheader, !dbg !402

for.cond42.preheader:                             ; preds = %for.end52, %for.cond42.preheader.lr.ph
  %norm.2219 = phi double [ 0.000000e+00, %for.cond42.preheader.lr.ph ], [ %norm.3, %for.end52 ]
  %irow37.0218 = phi i32 [ 0, %for.cond42.preheader.lr.ph ], [ %inc57, %for.end52 ]
  %row31.0217 = phi double* [ %6, %for.cond42.preheader.lr.ph ], [ %add.ptr59, %for.end52 ]
  br i1 %cmp43210, label %for.body44, label %for.end52, !dbg !406

for.body44:                                       ; preds = %for.cond42.preheader, %for.body44
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %for.body44 ], [ 0, %for.cond42.preheader ]
  %jcol38.0212 = phi i32 [ %inc50, %for.body44 ], [ 0, %for.cond42.preheader ]
  %sum30.0211 = phi double [ %add48, %for.body44 ], [ 0.000000e+00, %for.cond42.preheader ]
  %arrayidx46 = getelementptr inbounds double* %row31.0217, i64 %indvars.iv243, !dbg !417
  %10 = load double* %arrayidx46, align 8, !dbg !417, !tbaa !248
  %call47 = tail call double @fabs(double %10) #8, !dbg !417
  %add48 = fadd double %sum30.0211, %call47, !dbg !417
  tail call void @llvm.dbg.value(metadata !{double %add48}, i64 0, metadata !127), !dbg !417
  %inc50 = add nsw i32 %jcol38.0212, 1, !dbg !406
  tail call void @llvm.dbg.value(metadata !{i32 %inc50}, i64 0, metadata !133), !dbg !406
  %indvars.iv.next244 = add i64 %indvars.iv243, %8, !dbg !406
  %exitcond245 = icmp eq i32 %inc50, %4, !dbg !406
  br i1 %exitcond245, label %for.end52, label %for.body44, !dbg !406

for.end52:                                        ; preds = %for.body44, %for.cond42.preheader
  %sum30.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %add48, %for.body44 ]
  %cmp53 = fcmp olt double %norm.2219, %sum30.0.lcssa, !dbg !419
  tail call void @llvm.dbg.value(metadata !{double %sum30.0.lcssa}, i64 0, metadata !117), !dbg !420
  %norm.3 = select i1 %cmp53, double %sum30.0.lcssa, double %norm.2219, !dbg !419
  %inc57 = add nsw i32 %irow37.0218, 1, !dbg !404
  tail call void @llvm.dbg.value(metadata !{i32 %inc57}, i64 0, metadata !132), !dbg !404
  %add.ptr59 = getelementptr inbounds double* %row31.0217, i64 %idx.ext58, !dbg !404
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr59}, i64 0, metadata !129), !dbg !404
  %exitcond246 = icmp eq i32 %inc57, %3, !dbg !404
  br i1 %exitcond246, label %return, label %for.cond42.preheader, !dbg !404

if.then65:                                        ; preds = %if.end12
  %inc266 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !422
  %11 = load i32* %inc266, align 4, !dbg !422, !tbaa !216
  %cmp67 = icmp eq i32 %11, 1, !dbg !422
  %inc172 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !423
  %12 = load i32* %inc172, align 4, !dbg !423, !tbaa !216
  %entries75 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !424
  %13 = load double** %entries75, align 8, !dbg !424, !tbaa !221
  %cmp77226 = icmp sgt i32 %3, 0, !dbg !424
  br i1 %cmp67, label %for.cond76.preheader, label %for.cond113.preheader, !dbg !422

for.cond113.preheader:                            ; preds = %if.then65
  br i1 %cmp77226, label %for.cond116.preheader.lr.ph, label %return, !dbg !426

for.cond116.preheader.lr.ph:                      ; preds = %for.cond113.preheader
  %cmp117231 = icmp sgt i32 %4, 0, !dbg !428
  %mul137 = shl nsw i32 %12, 1, !dbg !431
  %idx.ext138 = sext i32 %mul137 to i64, !dbg !431
  %14 = sext i32 %11 to i64
  br label %for.cond116.preheader, !dbg !426

for.cond76.preheader:                             ; preds = %if.then65
  br i1 %cmp77226, label %for.cond79.preheader.lr.ph, label %return, !dbg !424

for.cond79.preheader.lr.ph:                       ; preds = %for.cond76.preheader
  %mul98 = shl nsw i32 %12, 1, !dbg !432
  %idx.ext99 = sext i32 %mul98 to i64, !dbg !432
  br label %for.cond79.preheader, !dbg !424

for.cond79.preheader:                             ; preds = %for.end92, %for.cond79.preheader.lr.ph
  %norm.4229 = phi double [ 0.000000e+00, %for.cond79.preheader.lr.ph ], [ %norm.5, %for.end92 ]
  %irow73.0228 = phi i32 [ 0, %for.cond79.preheader.lr.ph ], [ %inc97, %for.end92 ]
  %row70.0227 = phi double* [ %13, %for.cond79.preheader.lr.ph ], [ %add.ptr100, %for.end92 ]
  br label %for.body81, !dbg !433

for.body81:                                       ; preds = %for.cond79.preheader, %for.body81
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %for.body81 ], [ 0, %for.cond79.preheader ]
  %sum69.0222 = phi double [ %add89, %for.body81 ], [ 0.000000e+00, %for.cond79.preheader ]
  %15 = trunc i64 %indvars.iv247 to i32, !dbg !436
  %mul = shl nsw i32 %15, 1, !dbg !436
  %idxprom82 = sext i32 %mul to i64, !dbg !436
  %arrayidx83 = getelementptr inbounds double* %row70.0227, i64 %idxprom82, !dbg !436
  %16 = load double* %arrayidx83, align 8, !dbg !436, !tbaa !248
  %add85201 = or i32 %mul, 1, !dbg !436
  %idxprom86 = sext i32 %add85201 to i64, !dbg !436
  %arrayidx87 = getelementptr inbounds double* %row70.0227, i64 %idxprom86, !dbg !436
  %17 = load double* %arrayidx87, align 8, !dbg !436, !tbaa !248
  %call88 = tail call double @Zabs(double %16, double %17) #6, !dbg !436
  %add89 = fadd double %sum69.0222, %call88, !dbg !436
  tail call void @llvm.dbg.value(metadata !{double %add89}, i64 0, metadata !135), !dbg !436
  %indvars.iv.next248 = add i64 %indvars.iv247, 1, !dbg !433
  %lftr.wideiv249 = trunc i64 %indvars.iv.next248 to i32, !dbg !433
  %exitcond250 = icmp eq i32 %lftr.wideiv249, %4, !dbg !433
  br i1 %exitcond250, label %for.end92, label %for.body81, !dbg !433

for.end92:                                        ; preds = %for.body81
  %cmp93 = fcmp olt double %norm.4229, %add89, !dbg !438
  tail call void @llvm.dbg.value(metadata !{double %add89}, i64 0, metadata !117), !dbg !439
  %norm.5 = select i1 %cmp93, double %add89, double %norm.4229, !dbg !438
  %inc97 = add nsw i32 %irow73.0228, 1, !dbg !432
  tail call void @llvm.dbg.value(metadata !{i32 %inc97}, i64 0, metadata !140), !dbg !432
  %add.ptr100 = getelementptr inbounds double* %row70.0227, i64 %idx.ext99, !dbg !432
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr100}, i64 0, metadata !138), !dbg !432
  %exitcond251 = icmp eq i32 %inc97, %3, !dbg !424
  br i1 %exitcond251, label %return, label %for.cond79.preheader, !dbg !424

for.cond116.preheader:                            ; preds = %for.end131, %for.cond116.preheader.lr.ph
  %irow109.0240 = phi i32 [ 0, %for.cond116.preheader.lr.ph ], [ %inc136, %for.end131 ]
  %norm.6239 = phi double [ 0.000000e+00, %for.cond116.preheader.lr.ph ], [ %norm.7, %for.end131 ]
  %row104.0238 = phi double* [ %13, %for.cond116.preheader.lr.ph ], [ %add.ptr139, %for.end131 ]
  br i1 %cmp117231, label %for.body118, label %for.end131, !dbg !428

for.body118:                                      ; preds = %for.cond116.preheader, %for.body118
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %for.body118 ], [ 0, %for.cond116.preheader ]
  %jcol110.0233 = phi i32 [ %inc129, %for.body118 ], [ 0, %for.cond116.preheader ]
  %sum103.0232 = phi double [ %add127, %for.body118 ], [ 0.000000e+00, %for.cond116.preheader ]
  %18 = trunc i64 %indvars.iv252 to i32, !dbg !441
  %mul119 = shl nsw i32 %18, 1, !dbg !441
  %idxprom120 = sext i32 %mul119 to i64, !dbg !441
  %arrayidx121 = getelementptr inbounds double* %row104.0238, i64 %idxprom120, !dbg !441
  %19 = load double* %arrayidx121, align 8, !dbg !441, !tbaa !248
  %add123200 = or i32 %mul119, 1, !dbg !441
  %idxprom124 = sext i32 %add123200 to i64, !dbg !441
  %arrayidx125 = getelementptr inbounds double* %row104.0238, i64 %idxprom124, !dbg !441
  %20 = load double* %arrayidx125, align 8, !dbg !441, !tbaa !248
  %call126 = tail call double @Zabs(double %19, double %20) #6, !dbg !441
  %add127 = fadd double %sum103.0232, %call126, !dbg !441
  tail call void @llvm.dbg.value(metadata !{double %add127}, i64 0, metadata !142), !dbg !441
  %inc129 = add nsw i32 %jcol110.0233, 1, !dbg !428
  tail call void @llvm.dbg.value(metadata !{i32 %inc129}, i64 0, metadata !148), !dbg !428
  %indvars.iv.next253 = add i64 %indvars.iv252, %14, !dbg !428
  %exitcond254 = icmp eq i32 %inc129, %4, !dbg !428
  br i1 %exitcond254, label %for.end131, label %for.body118, !dbg !428

for.end131:                                       ; preds = %for.body118, %for.cond116.preheader
  %sum103.0.lcssa = phi double [ 0.000000e+00, %for.cond116.preheader ], [ %add127, %for.body118 ]
  %cmp132 = fcmp olt double %norm.6239, %sum103.0.lcssa, !dbg !443
  tail call void @llvm.dbg.value(metadata !{double %sum103.0.lcssa}, i64 0, metadata !117), !dbg !444
  %norm.7 = select i1 %cmp132, double %sum103.0.lcssa, double %norm.6239, !dbg !443
  %inc136 = add nsw i32 %irow109.0240, 1, !dbg !431
  tail call void @llvm.dbg.value(metadata !{i32 %inc136}, i64 0, metadata !147), !dbg !431
  %add.ptr139 = getelementptr inbounds double* %row104.0238, i64 %idx.ext138, !dbg !431
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr139}, i64 0, metadata !144), !dbg !431
  %exitcond255 = icmp eq i32 %inc136, %3, !dbg !426
  br i1 %exitcond255, label %return, label %for.cond116.preheader, !dbg !426

return:                                           ; preds = %for.cond113.preheader, %for.end131, %for.cond76.preheader, %for.end92, %for.cond39.preheader, %for.end52, %for.cond.preheader, %for.end, %if.end12, %if.end7, %lor.lhs.false9
  %retval.0 = phi double [ 0.000000e+00, %lor.lhs.false9 ], [ 0.000000e+00, %if.end7 ], [ 0.000000e+00, %if.end12 ], [ 0.000000e+00, %for.cond.preheader ], [ %norm.1, %for.end ], [ 0.000000e+00, %for.cond39.preheader ], [ %norm.3, %for.end52 ], [ 0.000000e+00, %for.cond76.preheader ], [ %norm.5, %for.end92 ], [ 0.000000e+00, %for.cond113.preheader ], [ %norm.7, %for.end131 ]
  ret double %retval.0, !dbg !446
}

; Function Attrs: nounwind optsize uwtable
define double @A2_oneNormOfColumn(%struct._A2* %mtx, i32 %jcol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !154), !dbg !447
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !155), !dbg !448
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !449
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !449

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !449
  %0 = load double** %entries, align 8, !dbg !449, !tbaa !221
  %cmp1 = icmp eq double* %0, null, !dbg !449
  %cmp3 = icmp slt i32 %jcol, 0, !dbg !449
  %or.cond = or i1 %cmp1, %cmp3, !dbg !449
  br i1 %or.cond, label %if.then, label %lor.lhs.false4, !dbg !449

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !449
  %1 = load i32* %n2, align 4, !dbg !449, !tbaa !216
  %cmp5 = icmp slt i32 %1, %jcol, !dbg !449
  br i1 %cmp5, label %if.then, label %if.end, !dbg !449

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !450, !tbaa !221
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str8, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol) #6, !dbg !450
  tail call void @exit(i32 -1) #7, !dbg !452
  unreachable, !dbg !452

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !453
  %3 = load i32* %type, align 4, !dbg !453, !tbaa !216
  %.off = add i32 %3, -1, !dbg !453
  %switch = icmp ult i32 %.off, 2, !dbg !453
  br i1 %switch, label %if.end13, label %if.then10, !dbg !453

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !454, !tbaa !221
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([98 x i8]* @.str9, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol, i32 %3) #6, !dbg !454
  tail call void @exit(i32 -1) #7, !dbg !456
  unreachable, !dbg !456

if.end13:                                         ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !457
  %5 = load i32* %n1, align 4, !dbg !457, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !161), !dbg !457
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !156), !dbg !458
  switch i32 %3, label %if.end82 [
    i32 1, label %if.then16
    i32 2, label %if.then38
  ], !dbg !459

if.then16:                                        ; preds = %if.end13
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !460
  %6 = load i32* %inc2, align 4, !dbg !460, !tbaa !216
  %mul = mul nsw i32 %6, %jcol, !dbg !460
  %idx.ext = sext i32 %mul to i64, !dbg !460
  %inc118 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !462
  %7 = load i32* %inc118, align 4, !dbg !462, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !158), !dbg !462
  %cmp19 = icmp eq i32 %7, 1, !dbg !462
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !159), !dbg !463
  %cmp21136 = icmp sgt i32 %5, 0, !dbg !463
  br i1 %cmp19, label %for.cond.preheader, label %for.cond23.preheader, !dbg !462

for.cond23.preheader:                             ; preds = %if.then16
  br i1 %cmp21136, label %for.body25.lr.ph, label %if.end82, !dbg !466

for.body25.lr.ph:                                 ; preds = %for.cond23.preheader
  %8 = sext i32 %7 to i64
  br label %for.body25, !dbg !466

for.cond.preheader:                               ; preds = %if.then16
  br i1 %cmp21136, label %for.body, label %if.end82, !dbg !463

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %sum.0138 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %add.ptr.sum135 = add i64 %indvars.iv, %idx.ext, !dbg !469
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum135, !dbg !469
  %9 = load double* %arrayidx, align 8, !dbg !469, !tbaa !248
  %call22 = tail call double @fabs(double %9) #8, !dbg !469
  %add = fadd double %sum.0138, %call22, !dbg !469
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !156), !dbg !469
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !463
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !463
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !463
  br i1 %exitcond, label %if.end82, label %for.body, !dbg !463

for.body25:                                       ; preds = %for.body25, %for.body25.lr.ph
  %indvars.iv156 = phi i64 [ 0, %for.body25.lr.ph ], [ %indvars.iv.next157, %for.body25 ]
  %sum.1143 = phi double [ 0.000000e+00, %for.body25.lr.ph ], [ %add29, %for.body25 ]
  %irow.1141 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc31, %for.body25 ]
  %add.ptr.sum = add i64 %indvars.iv156, %idx.ext, !dbg !471
  %arrayidx27 = getelementptr inbounds double* %0, i64 %add.ptr.sum, !dbg !471
  %10 = load double* %arrayidx27, align 8, !dbg !471, !tbaa !248
  %call28 = tail call double @fabs(double %10) #8, !dbg !471
  %add29 = fadd double %sum.1143, %call28, !dbg !471
  tail call void @llvm.dbg.value(metadata !{double %add29}, i64 0, metadata !156), !dbg !471
  %inc31 = add nsw i32 %irow.1141, 1, !dbg !466
  tail call void @llvm.dbg.value(metadata !{i32 %inc31}, i64 0, metadata !159), !dbg !466
  %indvars.iv.next157 = add i64 %indvars.iv156, %8, !dbg !466
  %exitcond158 = icmp eq i32 %inc31, %5, !dbg !466
  br i1 %exitcond158, label %if.end82, label %for.body25, !dbg !466

if.then38:                                        ; preds = %if.end13
  %mul40 = shl i32 %jcol, 1, !dbg !473
  %inc241 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !473
  %11 = load i32* %inc241, align 4, !dbg !473, !tbaa !216
  %mul42 = mul nsw i32 %mul40, %11, !dbg !473
  %idx.ext43 = sext i32 %mul42 to i64, !dbg !473
  %inc145 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !475
  %12 = load i32* %inc145, align 4, !dbg !475, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !158), !dbg !475
  %cmp46 = icmp eq i32 %12, 1, !dbg !475
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !159), !dbg !476
  %cmp49146 = icmp sgt i32 %5, 0, !dbg !476
  br i1 %cmp46, label %for.cond48.preheader, label %for.cond64.preheader, !dbg !475

for.cond64.preheader:                             ; preds = %if.then38
  br i1 %cmp49146, label %for.body66.lr.ph, label %if.end82, !dbg !479

for.body66.lr.ph:                                 ; preds = %for.cond64.preheader
  %13 = sext i32 %12 to i64
  br label %for.body66, !dbg !479

for.cond48.preheader:                             ; preds = %if.then38
  br i1 %cmp49146, label %for.body50, label %if.end82, !dbg !476

for.body50:                                       ; preds = %for.cond48.preheader, %for.body50
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.body50 ], [ 0, %for.cond48.preheader ]
  %sum.2148 = phi double [ %add59, %for.body50 ], [ 0.000000e+00, %for.cond48.preheader ]
  %14 = trunc i64 %indvars.iv159 to i32, !dbg !482
  %mul51 = shl nsw i32 %14, 1, !dbg !482
  %idxprom52 = sext i32 %mul51 to i64, !dbg !482
  %add.ptr44.sum132 = add i64 %idxprom52, %idx.ext43, !dbg !482
  %arrayidx53 = getelementptr inbounds double* %0, i64 %add.ptr44.sum132, !dbg !482
  %15 = load double* %arrayidx53, align 8, !dbg !482, !tbaa !248
  %add55133 = or i32 %mul51, 1, !dbg !482
  %idxprom56 = sext i32 %add55133 to i64, !dbg !482
  %add.ptr44.sum134 = add i64 %idxprom56, %idx.ext43, !dbg !482
  %arrayidx57 = getelementptr inbounds double* %0, i64 %add.ptr44.sum134, !dbg !482
  %16 = load double* %arrayidx57, align 8, !dbg !482, !tbaa !248
  %call58 = tail call double @Zabs(double %15, double %16) #6, !dbg !482
  %add59 = fadd double %sum.2148, %call58, !dbg !482
  tail call void @llvm.dbg.value(metadata !{double %add59}, i64 0, metadata !156), !dbg !482
  %indvars.iv.next160 = add i64 %indvars.iv159, 1, !dbg !476
  %lftr.wideiv161 = trunc i64 %indvars.iv.next160 to i32, !dbg !476
  %exitcond162 = icmp eq i32 %lftr.wideiv161, %5, !dbg !476
  br i1 %exitcond162, label %if.end82, label %for.body50, !dbg !476

for.body66:                                       ; preds = %for.body66, %for.body66.lr.ph
  %indvars.iv163 = phi i64 [ 0, %for.body66.lr.ph ], [ %indvars.iv.next164, %for.body66 ]
  %sum.3154 = phi double [ 0.000000e+00, %for.body66.lr.ph ], [ %add75, %for.body66 ]
  %irow.3152 = phi i32 [ 0, %for.body66.lr.ph ], [ %inc77, %for.body66 ]
  %17 = trunc i64 %indvars.iv163 to i32, !dbg !484
  %mul67 = shl nsw i32 %17, 1, !dbg !484
  %idxprom68 = sext i32 %mul67 to i64, !dbg !484
  %add.ptr44.sum = add i64 %idxprom68, %idx.ext43, !dbg !484
  %arrayidx69 = getelementptr inbounds double* %0, i64 %add.ptr44.sum, !dbg !484
  %18 = load double* %arrayidx69, align 8, !dbg !484, !tbaa !248
  %add71130 = or i32 %mul67, 1, !dbg !484
  %idxprom72 = sext i32 %add71130 to i64, !dbg !484
  %add.ptr44.sum131 = add i64 %idxprom72, %idx.ext43, !dbg !484
  %arrayidx73 = getelementptr inbounds double* %0, i64 %add.ptr44.sum131, !dbg !484
  %19 = load double* %arrayidx73, align 8, !dbg !484, !tbaa !248
  %call74 = tail call double @Zabs(double %18, double %19) #6, !dbg !484
  %add75 = fadd double %sum.3154, %call74, !dbg !484
  tail call void @llvm.dbg.value(metadata !{double %add75}, i64 0, metadata !156), !dbg !484
  %inc77 = add nsw i32 %irow.3152, 1, !dbg !479
  tail call void @llvm.dbg.value(metadata !{i32 %inc77}, i64 0, metadata !159), !dbg !479
  %indvars.iv.next164 = add i64 %indvars.iv163, %13, !dbg !479
  %exitcond165 = icmp eq i32 %inc77, %5, !dbg !479
  br i1 %exitcond165, label %if.end82, label %for.body66, !dbg !479

if.end82:                                         ; preds = %for.cond64.preheader, %for.body66, %for.cond48.preheader, %for.body50, %for.cond23.preheader, %for.body25, %for.cond.preheader, %for.body, %if.end13
  %sum.4 = phi double [ 0.000000e+00, %if.end13 ], [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ], [ 0.000000e+00, %for.cond23.preheader ], [ %add29, %for.body25 ], [ 0.000000e+00, %for.cond48.preheader ], [ %add59, %for.body50 ], [ 0.000000e+00, %for.cond64.preheader ], [ %add75, %for.body66 ]
  ret double %sum.4, !dbg !486
}

; Function Attrs: nounwind optsize uwtable
define double @A2_twoNormOfColumn(%struct._A2* %mtx, i32 %jcol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !164), !dbg !487
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !165), !dbg !488
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !489
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !489

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !489
  %0 = load double** %entries, align 8, !dbg !489, !tbaa !221
  %cmp1 = icmp eq double* %0, null, !dbg !489
  %cmp3 = icmp slt i32 %jcol, 0, !dbg !489
  %or.cond = or i1 %cmp1, %cmp3, !dbg !489
  br i1 %or.cond, label %if.then, label %lor.lhs.false4, !dbg !489

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !489
  %1 = load i32* %n2, align 4, !dbg !489, !tbaa !216
  %cmp5 = icmp slt i32 %1, %jcol, !dbg !489
  br i1 %cmp5, label %if.then, label %if.end, !dbg !489

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !490, !tbaa !221
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol) #6, !dbg !490
  tail call void @exit(i32 -1) #7, !dbg !492
  unreachable, !dbg !492

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !493
  %3 = load i32* %type, align 4, !dbg !493, !tbaa !216
  %.off = add i32 %3, -1, !dbg !493
  %switch = icmp ult i32 %.off, 2, !dbg !493
  br i1 %switch, label %if.end13, label %if.then10, !dbg !493

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !494, !tbaa !221
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([98 x i8]* @.str11, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol, i32 %3) #6, !dbg !494
  tail call void @exit(i32 -1) #7, !dbg !496
  unreachable, !dbg !496

if.end13:                                         ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !497
  %5 = load i32* %n1, align 4, !dbg !497, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !171), !dbg !497
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !166), !dbg !498
  switch i32 %3, label %if.end104 [
    i32 1, label %if.then16
    i32 2, label %if.then42
  ], !dbg !499

if.then16:                                        ; preds = %if.end13
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !500
  %6 = load i32* %inc2, align 4, !dbg !500, !tbaa !216
  %mul = mul nsw i32 %6, %jcol, !dbg !500
  %idx.ext = sext i32 %mul to i64, !dbg !500
  %inc118 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !502
  %7 = load i32* %inc118, align 4, !dbg !502, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !168), !dbg !502
  %cmp19 = icmp eq i32 %7, 1, !dbg !502
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !169), !dbg !503
  %cmp21172 = icmp sgt i32 %5, 0, !dbg !503
  br i1 %cmp19, label %for.cond.preheader, label %for.cond25.preheader, !dbg !502

for.cond25.preheader:                             ; preds = %if.then16
  br i1 %cmp21172, label %for.body27.lr.ph, label %if.end104, !dbg !506

for.body27.lr.ph:                                 ; preds = %for.cond25.preheader
  %8 = sext i32 %7 to i64
  br label %for.body27, !dbg !506

for.cond.preheader:                               ; preds = %if.then16
  br i1 %cmp21172, label %for.body, label %if.end104, !dbg !503

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %sum.0174 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %add.ptr.sum171 = add i64 %indvars.iv, %idx.ext, !dbg !509
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum171, !dbg !509
  %9 = load double* %arrayidx, align 8, !dbg !509, !tbaa !248
  %mul24 = fmul double %9, %9, !dbg !509
  %add = fadd double %sum.0174, %mul24, !dbg !509
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !166), !dbg !509
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !503
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !503
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !503
  br i1 %exitcond, label %if.end104, label %for.body, !dbg !503

for.body27:                                       ; preds = %for.body27, %for.body27.lr.ph
  %indvars.iv192 = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next193, %for.body27 ]
  %sum.1179 = phi double [ 0.000000e+00, %for.body27.lr.ph ], [ %add33, %for.body27 ]
  %irow.1177 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc35, %for.body27 ]
  %add.ptr.sum = add i64 %indvars.iv192, %idx.ext, !dbg !511
  %arrayidx29 = getelementptr inbounds double* %0, i64 %add.ptr.sum, !dbg !511
  %10 = load double* %arrayidx29, align 8, !dbg !511, !tbaa !248
  %mul32 = fmul double %10, %10, !dbg !511
  %add33 = fadd double %sum.1179, %mul32, !dbg !511
  tail call void @llvm.dbg.value(metadata !{double %add33}, i64 0, metadata !166), !dbg !511
  %inc35 = add nsw i32 %irow.1177, 1, !dbg !506
  tail call void @llvm.dbg.value(metadata !{i32 %inc35}, i64 0, metadata !169), !dbg !506
  %indvars.iv.next193 = add i64 %indvars.iv192, %8, !dbg !506
  %exitcond194 = icmp eq i32 %inc35, %5, !dbg !506
  br i1 %exitcond194, label %if.end104, label %for.body27, !dbg !506

if.then42:                                        ; preds = %if.end13
  %mul44 = shl i32 %jcol, 1, !dbg !513
  %inc245 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !513
  %11 = load i32* %inc245, align 4, !dbg !513, !tbaa !216
  %mul46 = mul nsw i32 %mul44, %11, !dbg !513
  %idx.ext47 = sext i32 %mul46 to i64, !dbg !513
  %inc149 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !515
  %12 = load i32* %inc149, align 4, !dbg !515, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !168), !dbg !515
  %cmp50 = icmp eq i32 %12, 1, !dbg !515
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !169), !dbg !516
  %cmp53182 = icmp sgt i32 %5, 0, !dbg !516
  br i1 %cmp50, label %for.cond52.preheader, label %for.cond77.preheader, !dbg !515

for.cond77.preheader:                             ; preds = %if.then42
  br i1 %cmp53182, label %for.body79.lr.ph, label %if.end104, !dbg !519

for.body79.lr.ph:                                 ; preds = %for.cond77.preheader
  %13 = sext i32 %12 to i64
  br label %for.body79, !dbg !519

for.cond52.preheader:                             ; preds = %if.then42
  br i1 %cmp53182, label %for.body54, label %if.end104, !dbg !516

for.body54:                                       ; preds = %for.cond52.preheader, %for.body54
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %for.body54 ], [ 0, %for.cond52.preheader ]
  %sum.2184 = phi double [ %add72, %for.body54 ], [ 0.000000e+00, %for.cond52.preheader ]
  %14 = trunc i64 %indvars.iv195 to i32, !dbg !522
  %mul55 = shl nsw i32 %14, 1, !dbg !522
  %idxprom56 = sext i32 %mul55 to i64, !dbg !522
  %add.ptr48.sum168 = add i64 %idxprom56, %idx.ext47, !dbg !522
  %arrayidx57 = getelementptr inbounds double* %0, i64 %add.ptr48.sum168, !dbg !522
  %15 = load double* %arrayidx57, align 8, !dbg !522, !tbaa !248
  %mul61 = fmul double %15, %15, !dbg !522
  %add63169 = or i32 %mul55, 1, !dbg !522
  %idxprom64 = sext i32 %add63169 to i64, !dbg !522
  %add.ptr48.sum170 = add i64 %idxprom64, %idx.ext47, !dbg !522
  %arrayidx65 = getelementptr inbounds double* %0, i64 %add.ptr48.sum170, !dbg !522
  %16 = load double* %arrayidx65, align 8, !dbg !522, !tbaa !248
  %mul70 = fmul double %16, %16, !dbg !522
  %add71 = fadd double %mul61, %mul70, !dbg !522
  %add72 = fadd double %sum.2184, %add71, !dbg !522
  tail call void @llvm.dbg.value(metadata !{double %add72}, i64 0, metadata !166), !dbg !522
  %indvars.iv.next196 = add i64 %indvars.iv195, 1, !dbg !516
  %lftr.wideiv197 = trunc i64 %indvars.iv.next196 to i32, !dbg !516
  %exitcond198 = icmp eq i32 %lftr.wideiv197, %5, !dbg !516
  br i1 %exitcond198, label %if.end104, label %for.body54, !dbg !516

for.body79:                                       ; preds = %for.body79, %for.body79.lr.ph
  %indvars.iv199 = phi i64 [ 0, %for.body79.lr.ph ], [ %indvars.iv.next200, %for.body79 ]
  %sum.3190 = phi double [ 0.000000e+00, %for.body79.lr.ph ], [ %add97, %for.body79 ]
  %irow.3188 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc99, %for.body79 ]
  %17 = trunc i64 %indvars.iv199 to i32, !dbg !524
  %mul80 = shl nsw i32 %17, 1, !dbg !524
  %idxprom81 = sext i32 %mul80 to i64, !dbg !524
  %add.ptr48.sum = add i64 %idxprom81, %idx.ext47, !dbg !524
  %arrayidx82 = getelementptr inbounds double* %0, i64 %add.ptr48.sum, !dbg !524
  %18 = load double* %arrayidx82, align 8, !dbg !524, !tbaa !248
  %mul86 = fmul double %18, %18, !dbg !524
  %add88166 = or i32 %mul80, 1, !dbg !524
  %idxprom89 = sext i32 %add88166 to i64, !dbg !524
  %add.ptr48.sum167 = add i64 %idxprom89, %idx.ext47, !dbg !524
  %arrayidx90 = getelementptr inbounds double* %0, i64 %add.ptr48.sum167, !dbg !524
  %19 = load double* %arrayidx90, align 8, !dbg !524, !tbaa !248
  %mul95 = fmul double %19, %19, !dbg !524
  %add96 = fadd double %mul86, %mul95, !dbg !524
  %add97 = fadd double %sum.3190, %add96, !dbg !524
  tail call void @llvm.dbg.value(metadata !{double %add97}, i64 0, metadata !166), !dbg !524
  %inc99 = add nsw i32 %irow.3188, 1, !dbg !519
  tail call void @llvm.dbg.value(metadata !{i32 %inc99}, i64 0, metadata !169), !dbg !519
  %indvars.iv.next200 = add i64 %indvars.iv199, %13, !dbg !519
  %exitcond201 = icmp eq i32 %inc99, %5, !dbg !519
  br i1 %exitcond201, label %if.end104, label %for.body79, !dbg !519

if.end104:                                        ; preds = %for.cond77.preheader, %for.body79, %for.cond52.preheader, %for.body54, %for.cond25.preheader, %for.body27, %for.cond.preheader, %for.body, %if.end13
  %sum.4 = phi double [ 0.000000e+00, %if.end13 ], [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ], [ 0.000000e+00, %for.cond25.preheader ], [ %add33, %for.body27 ], [ 0.000000e+00, %for.cond52.preheader ], [ %add72, %for.body54 ], [ 0.000000e+00, %for.cond77.preheader ], [ %add97, %for.body79 ]
  %call105 = tail call double @sqrt(double %sum.4) #6, !dbg !526
  tail call void @llvm.dbg.value(metadata !{double %call105}, i64 0, metadata !166), !dbg !526
  ret double %call105, !dbg !527
}

; Function Attrs: nounwind optsize uwtable
define double @A2_infinityNormOfColumn(%struct._A2* %mtx, i32 %jcol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !174), !dbg !528
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !175), !dbg !529
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !530
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !530

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !530
  %0 = load double** %entries, align 8, !dbg !530, !tbaa !221
  %cmp1 = icmp eq double* %0, null, !dbg !530
  %cmp3 = icmp slt i32 %jcol, 0, !dbg !530
  %or.cond = or i1 %cmp1, %cmp3, !dbg !530
  br i1 %or.cond, label %if.then, label %lor.lhs.false4, !dbg !530

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !530
  %1 = load i32* %n2, align 4, !dbg !530, !tbaa !216
  %cmp5 = icmp slt i32 %1, %jcol, !dbg !530
  br i1 %cmp5, label %if.then, label %if.end, !dbg !530

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !531, !tbaa !221
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str12, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol) #6, !dbg !531
  tail call void @exit(i32 -1) #7, !dbg !533
  unreachable, !dbg !533

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !534
  %3 = load i32* %type, align 4, !dbg !534, !tbaa !216
  %.off = add i32 %3, -1, !dbg !534
  %switch = icmp ult i32 %.off, 2, !dbg !534
  br i1 %switch, label %if.end13, label %if.then10, !dbg !534

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !535, !tbaa !221
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([103 x i8]* @.str13, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol, i32 %3) #6, !dbg !535
  tail call void @exit(i32 -1) #7, !dbg !537
  unreachable, !dbg !537

if.end13:                                         ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !538
  %5 = load i32* %n1, align 4, !dbg !538, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !182), !dbg !538
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !176), !dbg !539
  switch i32 %3, label %if.end90 [
    i32 1, label %if.then16
    i32 2, label %if.then42
  ], !dbg !540

if.then16:                                        ; preds = %if.end13
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !541
  %6 = load i32* %inc2, align 4, !dbg !541, !tbaa !216
  %mul = mul nsw i32 %6, %jcol, !dbg !541
  %idx.ext = sext i32 %mul to i64, !dbg !541
  %inc118 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !543
  %7 = load i32* %inc118, align 4, !dbg !543, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !179), !dbg !543
  %cmp19 = icmp eq i32 %7, 1, !dbg !543
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !180), !dbg !544
  %cmp21151 = icmp sgt i32 %5, 0, !dbg !544
  br i1 %cmp19, label %for.cond.preheader, label %for.cond26.preheader, !dbg !543

for.cond26.preheader:                             ; preds = %if.then16
  br i1 %cmp21151, label %for.body28.lr.ph, label %if.end90, !dbg !547

for.body28.lr.ph:                                 ; preds = %for.cond26.preheader
  %8 = sext i32 %7 to i64
  br label %for.body28, !dbg !547

for.cond.preheader:                               ; preds = %if.then16
  br i1 %cmp21151, label %for.body, label %if.end90, !dbg !544

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %norm.0153 = phi double [ %norm.1, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %add.ptr.sum150 = add i64 %indvars.iv, %idx.ext, !dbg !550
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum150, !dbg !550
  %9 = load double* %arrayidx, align 8, !dbg !550, !tbaa !248
  %call22 = tail call double @fabs(double %9) #8, !dbg !550
  tail call void @llvm.dbg.value(metadata !{double %call22}, i64 0, metadata !177), !dbg !550
  %cmp23 = fcmp olt double %norm.0153, %call22, !dbg !552
  tail call void @llvm.dbg.value(metadata !{double %call22}, i64 0, metadata !176), !dbg !553
  %norm.1 = select i1 %cmp23, double %call22, double %norm.0153, !dbg !552
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !544
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !544
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !544
  br i1 %exitcond, label %if.end90, label %for.body, !dbg !544

for.body28:                                       ; preds = %for.body28, %for.body28.lr.ph
  %indvars.iv171 = phi i64 [ 0, %for.body28.lr.ph ], [ %indvars.iv.next172, %for.body28 ]
  %norm.2158 = phi double [ 0.000000e+00, %for.body28.lr.ph ], [ %norm.3, %for.body28 ]
  %irow.1156 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc36, %for.body28 ]
  %add.ptr.sum = add i64 %indvars.iv171, %idx.ext, !dbg !555
  %arrayidx30 = getelementptr inbounds double* %0, i64 %add.ptr.sum, !dbg !555
  %10 = load double* %arrayidx30, align 8, !dbg !555, !tbaa !248
  %call31 = tail call double @fabs(double %10) #8, !dbg !555
  tail call void @llvm.dbg.value(metadata !{double %call31}, i64 0, metadata !177), !dbg !555
  %cmp32 = fcmp olt double %norm.2158, %call31, !dbg !557
  tail call void @llvm.dbg.value(metadata !{double %call31}, i64 0, metadata !176), !dbg !558
  %norm.3 = select i1 %cmp32, double %call31, double %norm.2158, !dbg !557
  %inc36 = add nsw i32 %irow.1156, 1, !dbg !547
  tail call void @llvm.dbg.value(metadata !{i32 %inc36}, i64 0, metadata !180), !dbg !547
  %indvars.iv.next172 = add i64 %indvars.iv171, %8, !dbg !547
  %exitcond173 = icmp eq i32 %inc36, %5, !dbg !547
  br i1 %exitcond173, label %if.end90, label %for.body28, !dbg !547

if.then42:                                        ; preds = %if.end13
  %mul44 = shl i32 %jcol, 1, !dbg !560
  %inc245 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !560
  %11 = load i32* %inc245, align 4, !dbg !560, !tbaa !216
  %mul46 = mul nsw i32 %mul44, %11, !dbg !560
  %idx.ext47 = sext i32 %mul46 to i64, !dbg !560
  %inc149 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !562
  %12 = load i32* %inc149, align 4, !dbg !562, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !179), !dbg !562
  %cmp50 = icmp eq i32 %12, 1, !dbg !562
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !180), !dbg !563
  %cmp53161 = icmp sgt i32 %5, 0, !dbg !563
  br i1 %cmp50, label %for.cond52.preheader, label %for.cond70.preheader, !dbg !562

for.cond70.preheader:                             ; preds = %if.then42
  br i1 %cmp53161, label %for.body72.lr.ph, label %if.end90, !dbg !566

for.body72.lr.ph:                                 ; preds = %for.cond70.preheader
  %13 = sext i32 %12 to i64
  br label %for.body72, !dbg !566

for.cond52.preheader:                             ; preds = %if.then42
  br i1 %cmp53161, label %for.body54, label %if.end90, !dbg !563

for.body54:                                       ; preds = %for.cond52.preheader, %for.body54
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %for.body54 ], [ 0, %for.cond52.preheader ]
  %norm.4163 = phi double [ %norm.5, %for.body54 ], [ 0.000000e+00, %for.cond52.preheader ]
  %14 = trunc i64 %indvars.iv174 to i32, !dbg !569
  %mul55 = shl nsw i32 %14, 1, !dbg !569
  %idxprom56 = sext i32 %mul55 to i64, !dbg !569
  %add.ptr48.sum147 = add i64 %idxprom56, %idx.ext47, !dbg !569
  %arrayidx57 = getelementptr inbounds double* %0, i64 %add.ptr48.sum147, !dbg !569
  %15 = load double* %arrayidx57, align 8, !dbg !569, !tbaa !248
  %add59148 = or i32 %mul55, 1, !dbg !569
  %idxprom60 = sext i32 %add59148 to i64, !dbg !569
  %add.ptr48.sum149 = add i64 %idxprom60, %idx.ext47, !dbg !569
  %arrayidx61 = getelementptr inbounds double* %0, i64 %add.ptr48.sum149, !dbg !569
  %16 = load double* %arrayidx61, align 8, !dbg !569, !tbaa !248
  %call62 = tail call double @Zabs(double %15, double %16) #6, !dbg !569
  tail call void @llvm.dbg.value(metadata !{double %call62}, i64 0, metadata !177), !dbg !569
  %cmp63 = fcmp olt double %norm.4163, %call62, !dbg !571
  tail call void @llvm.dbg.value(metadata !{double %call62}, i64 0, metadata !176), !dbg !572
  %norm.5 = select i1 %cmp63, double %call62, double %norm.4163, !dbg !571
  %indvars.iv.next175 = add i64 %indvars.iv174, 1, !dbg !563
  %lftr.wideiv176 = trunc i64 %indvars.iv.next175 to i32, !dbg !563
  %exitcond177 = icmp eq i32 %lftr.wideiv176, %5, !dbg !563
  br i1 %exitcond177, label %if.end90, label %for.body54, !dbg !563

for.body72:                                       ; preds = %for.body72, %for.body72.lr.ph
  %indvars.iv178 = phi i64 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next179, %for.body72 ]
  %norm.6169 = phi double [ 0.000000e+00, %for.body72.lr.ph ], [ %norm.7, %for.body72 ]
  %irow.3167 = phi i32 [ 0, %for.body72.lr.ph ], [ %inc85, %for.body72 ]
  %17 = trunc i64 %indvars.iv178 to i32, !dbg !574
  %mul73 = shl nsw i32 %17, 1, !dbg !574
  %idxprom74 = sext i32 %mul73 to i64, !dbg !574
  %add.ptr48.sum = add i64 %idxprom74, %idx.ext47, !dbg !574
  %arrayidx75 = getelementptr inbounds double* %0, i64 %add.ptr48.sum, !dbg !574
  %18 = load double* %arrayidx75, align 8, !dbg !574, !tbaa !248
  %add77145 = or i32 %mul73, 1, !dbg !574
  %idxprom78 = sext i32 %add77145 to i64, !dbg !574
  %add.ptr48.sum146 = add i64 %idxprom78, %idx.ext47, !dbg !574
  %arrayidx79 = getelementptr inbounds double* %0, i64 %add.ptr48.sum146, !dbg !574
  %19 = load double* %arrayidx79, align 8, !dbg !574, !tbaa !248
  %call80 = tail call double @Zabs(double %18, double %19) #6, !dbg !574
  tail call void @llvm.dbg.value(metadata !{double %call80}, i64 0, metadata !177), !dbg !574
  %cmp81 = fcmp olt double %norm.6169, %call80, !dbg !576
  tail call void @llvm.dbg.value(metadata !{double %call80}, i64 0, metadata !176), !dbg !577
  %norm.7 = select i1 %cmp81, double %call80, double %norm.6169, !dbg !576
  %inc85 = add nsw i32 %irow.3167, 1, !dbg !566
  tail call void @llvm.dbg.value(metadata !{i32 %inc85}, i64 0, metadata !180), !dbg !566
  %indvars.iv.next179 = add i64 %indvars.iv178, %13, !dbg !566
  %exitcond180 = icmp eq i32 %inc85, %5, !dbg !566
  br i1 %exitcond180, label %if.end90, label %for.body72, !dbg !566

if.end90:                                         ; preds = %for.cond70.preheader, %for.body72, %for.cond52.preheader, %for.body54, %for.cond26.preheader, %for.body28, %for.cond.preheader, %for.body, %if.end13
  %norm.8 = phi double [ 0.000000e+00, %if.end13 ], [ 0.000000e+00, %for.cond.preheader ], [ %norm.1, %for.body ], [ 0.000000e+00, %for.cond26.preheader ], [ %norm.3, %for.body28 ], [ 0.000000e+00, %for.cond52.preheader ], [ %norm.5, %for.body54 ], [ 0.000000e+00, %for.cond70.preheader ], [ %norm.7, %for.body72 ]
  ret double %norm.8, !dbg !579
}

; Function Attrs: nounwind optsize uwtable
define double @A2_oneNormOfRow(%struct._A2* %mtx, i32 %irow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !185), !dbg !580
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !186), !dbg !581
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !582
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !582

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !582
  %0 = load double** %entries, align 8, !dbg !582, !tbaa !221
  %cmp1 = icmp eq double* %0, null, !dbg !582
  %cmp3 = icmp slt i32 %irow, 0, !dbg !582
  %or.cond = or i1 %cmp1, %cmp3, !dbg !582
  br i1 %or.cond, label %if.then, label %lor.lhs.false4, !dbg !582

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !582
  %1 = load i32* %n1, align 4, !dbg !582, !tbaa !216
  %cmp5 = icmp slt i32 %1, %irow, !dbg !582
  br i1 %cmp5, label %if.then, label %if.end, !dbg !582

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !583, !tbaa !221
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), %struct._A2* %mtx, i32 %irow) #6, !dbg !583
  tail call void @exit(i32 -1) #7, !dbg !585
  unreachable, !dbg !585

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !586
  %3 = load i32* %type, align 4, !dbg !586, !tbaa !216
  %.off = add i32 %3, -1, !dbg !586
  %switch = icmp ult i32 %.off, 2, !dbg !586
  br i1 %switch, label %if.end13, label %if.then10, !dbg !586

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !587, !tbaa !221
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([95 x i8]* @.str15, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %3) #6, !dbg !587
  tail call void @exit(i32 -1) #7, !dbg !589
  unreachable, !dbg !589

if.end13:                                         ; preds = %if.end
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !590
  %5 = load i32* %n2, align 4, !dbg !590, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !192), !dbg !590
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !187), !dbg !591
  switch i32 %3, label %if.end82 [
    i32 1, label %if.then16
    i32 2, label %if.then38
  ], !dbg !592

if.then16:                                        ; preds = %if.end13
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !593
  %6 = load i32* %inc1, align 4, !dbg !593, !tbaa !216
  %mul = mul nsw i32 %6, %irow, !dbg !593
  %idx.ext = sext i32 %mul to i64, !dbg !593
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !595
  %7 = load i32* %inc218, align 4, !dbg !595, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !189), !dbg !595
  %cmp19 = icmp eq i32 %7, 1, !dbg !595
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !190), !dbg !596
  %cmp21136 = icmp sgt i32 %5, 0, !dbg !596
  br i1 %cmp19, label %for.cond.preheader, label %for.cond23.preheader, !dbg !595

for.cond23.preheader:                             ; preds = %if.then16
  br i1 %cmp21136, label %for.body25.lr.ph, label %if.end82, !dbg !599

for.body25.lr.ph:                                 ; preds = %for.cond23.preheader
  %8 = sext i32 %7 to i64
  br label %for.body25, !dbg !599

for.cond.preheader:                               ; preds = %if.then16
  br i1 %cmp21136, label %for.body, label %if.end82, !dbg !596

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %sum.0138 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %add.ptr.sum135 = add i64 %indvars.iv, %idx.ext, !dbg !602
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum135, !dbg !602
  %9 = load double* %arrayidx, align 8, !dbg !602, !tbaa !248
  %call22 = tail call double @fabs(double %9) #8, !dbg !602
  %add = fadd double %sum.0138, %call22, !dbg !602
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !187), !dbg !602
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !596
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !596
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !596
  br i1 %exitcond, label %if.end82, label %for.body, !dbg !596

for.body25:                                       ; preds = %for.body25, %for.body25.lr.ph
  %indvars.iv156 = phi i64 [ 0, %for.body25.lr.ph ], [ %indvars.iv.next157, %for.body25 ]
  %sum.1143 = phi double [ 0.000000e+00, %for.body25.lr.ph ], [ %add29, %for.body25 ]
  %jcol.1141 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc31, %for.body25 ]
  %add.ptr.sum = add i64 %indvars.iv156, %idx.ext, !dbg !604
  %arrayidx27 = getelementptr inbounds double* %0, i64 %add.ptr.sum, !dbg !604
  %10 = load double* %arrayidx27, align 8, !dbg !604, !tbaa !248
  %call28 = tail call double @fabs(double %10) #8, !dbg !604
  %add29 = fadd double %sum.1143, %call28, !dbg !604
  tail call void @llvm.dbg.value(metadata !{double %add29}, i64 0, metadata !187), !dbg !604
  %inc31 = add nsw i32 %jcol.1141, 1, !dbg !599
  tail call void @llvm.dbg.value(metadata !{i32 %inc31}, i64 0, metadata !190), !dbg !599
  %indvars.iv.next157 = add i64 %indvars.iv156, %8, !dbg !599
  %exitcond158 = icmp eq i32 %inc31, %5, !dbg !599
  br i1 %exitcond158, label %if.end82, label %for.body25, !dbg !599

if.then38:                                        ; preds = %if.end13
  %mul40 = shl i32 %irow, 1, !dbg !606
  %inc141 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !606
  %11 = load i32* %inc141, align 4, !dbg !606, !tbaa !216
  %mul42 = mul nsw i32 %mul40, %11, !dbg !606
  %idx.ext43 = sext i32 %mul42 to i64, !dbg !606
  %inc245 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !608
  %12 = load i32* %inc245, align 4, !dbg !608, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !189), !dbg !608
  %cmp46 = icmp eq i32 %12, 1, !dbg !608
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !190), !dbg !609
  %cmp49146 = icmp sgt i32 %5, 0, !dbg !609
  br i1 %cmp46, label %for.cond48.preheader, label %for.cond64.preheader, !dbg !608

for.cond64.preheader:                             ; preds = %if.then38
  br i1 %cmp49146, label %for.body66.lr.ph, label %if.end82, !dbg !612

for.body66.lr.ph:                                 ; preds = %for.cond64.preheader
  %13 = sext i32 %12 to i64
  br label %for.body66, !dbg !612

for.cond48.preheader:                             ; preds = %if.then38
  br i1 %cmp49146, label %for.body50, label %if.end82, !dbg !609

for.body50:                                       ; preds = %for.cond48.preheader, %for.body50
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.body50 ], [ 0, %for.cond48.preheader ]
  %sum.2148 = phi double [ %add59, %for.body50 ], [ 0.000000e+00, %for.cond48.preheader ]
  %14 = trunc i64 %indvars.iv159 to i32, !dbg !615
  %mul51 = shl nsw i32 %14, 1, !dbg !615
  %idxprom52 = sext i32 %mul51 to i64, !dbg !615
  %add.ptr44.sum132 = add i64 %idxprom52, %idx.ext43, !dbg !615
  %arrayidx53 = getelementptr inbounds double* %0, i64 %add.ptr44.sum132, !dbg !615
  %15 = load double* %arrayidx53, align 8, !dbg !615, !tbaa !248
  %add55133 = or i32 %mul51, 1, !dbg !615
  %idxprom56 = sext i32 %add55133 to i64, !dbg !615
  %add.ptr44.sum134 = add i64 %idxprom56, %idx.ext43, !dbg !615
  %arrayidx57 = getelementptr inbounds double* %0, i64 %add.ptr44.sum134, !dbg !615
  %16 = load double* %arrayidx57, align 8, !dbg !615, !tbaa !248
  %call58 = tail call double @Zabs(double %15, double %16) #6, !dbg !615
  %add59 = fadd double %sum.2148, %call58, !dbg !615
  tail call void @llvm.dbg.value(metadata !{double %add59}, i64 0, metadata !187), !dbg !615
  %indvars.iv.next160 = add i64 %indvars.iv159, 1, !dbg !609
  %lftr.wideiv161 = trunc i64 %indvars.iv.next160 to i32, !dbg !609
  %exitcond162 = icmp eq i32 %lftr.wideiv161, %5, !dbg !609
  br i1 %exitcond162, label %if.end82, label %for.body50, !dbg !609

for.body66:                                       ; preds = %for.body66, %for.body66.lr.ph
  %indvars.iv163 = phi i64 [ 0, %for.body66.lr.ph ], [ %indvars.iv.next164, %for.body66 ]
  %sum.3154 = phi double [ 0.000000e+00, %for.body66.lr.ph ], [ %add75, %for.body66 ]
  %jcol.3152 = phi i32 [ 0, %for.body66.lr.ph ], [ %inc77, %for.body66 ]
  %17 = trunc i64 %indvars.iv163 to i32, !dbg !617
  %mul67 = shl nsw i32 %17, 1, !dbg !617
  %idxprom68 = sext i32 %mul67 to i64, !dbg !617
  %add.ptr44.sum = add i64 %idxprom68, %idx.ext43, !dbg !617
  %arrayidx69 = getelementptr inbounds double* %0, i64 %add.ptr44.sum, !dbg !617
  %18 = load double* %arrayidx69, align 8, !dbg !617, !tbaa !248
  %add71130 = or i32 %mul67, 1, !dbg !617
  %idxprom72 = sext i32 %add71130 to i64, !dbg !617
  %add.ptr44.sum131 = add i64 %idxprom72, %idx.ext43, !dbg !617
  %arrayidx73 = getelementptr inbounds double* %0, i64 %add.ptr44.sum131, !dbg !617
  %19 = load double* %arrayidx73, align 8, !dbg !617, !tbaa !248
  %call74 = tail call double @Zabs(double %18, double %19) #6, !dbg !617
  %add75 = fadd double %sum.3154, %call74, !dbg !617
  tail call void @llvm.dbg.value(metadata !{double %add75}, i64 0, metadata !187), !dbg !617
  %inc77 = add nsw i32 %jcol.3152, 1, !dbg !612
  tail call void @llvm.dbg.value(metadata !{i32 %inc77}, i64 0, metadata !190), !dbg !612
  %indvars.iv.next164 = add i64 %indvars.iv163, %13, !dbg !612
  %exitcond165 = icmp eq i32 %inc77, %5, !dbg !612
  br i1 %exitcond165, label %if.end82, label %for.body66, !dbg !612

if.end82:                                         ; preds = %for.cond64.preheader, %for.body66, %for.cond48.preheader, %for.body50, %for.cond23.preheader, %for.body25, %for.cond.preheader, %for.body, %if.end13
  %sum.4 = phi double [ 0.000000e+00, %if.end13 ], [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ], [ 0.000000e+00, %for.cond23.preheader ], [ %add29, %for.body25 ], [ 0.000000e+00, %for.cond48.preheader ], [ %add59, %for.body50 ], [ 0.000000e+00, %for.cond64.preheader ], [ %add75, %for.body66 ]
  ret double %sum.4, !dbg !619
}

; Function Attrs: nounwind optsize uwtable
define double @A2_twoNormOfRow(%struct._A2* %mtx, i32 %irow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !195), !dbg !620
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !196), !dbg !621
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !622
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !622

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !622
  %0 = load double** %entries, align 8, !dbg !622, !tbaa !221
  %cmp1 = icmp eq double* %0, null, !dbg !622
  %cmp3 = icmp slt i32 %irow, 0, !dbg !622
  %or.cond = or i1 %cmp1, %cmp3, !dbg !622
  br i1 %or.cond, label %if.then, label %lor.lhs.false4, !dbg !622

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !622
  %1 = load i32* %n1, align 4, !dbg !622, !tbaa !216
  %cmp5 = icmp slt i32 %1, %irow, !dbg !622
  br i1 %cmp5, label %if.then, label %if.end, !dbg !622

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !623, !tbaa !221
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([52 x i8]* @.str16, i64 0, i64 0), %struct._A2* %mtx, i32 %irow) #6, !dbg !623
  tail call void @exit(i32 -1) #7, !dbg !625
  unreachable, !dbg !625

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !626
  %3 = load i32* %type, align 4, !dbg !626, !tbaa !216
  %.off = add i32 %3, -1, !dbg !626
  %switch = icmp ult i32 %.off, 2, !dbg !626
  br i1 %switch, label %if.end13, label %if.then10, !dbg !626

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !627, !tbaa !221
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([95 x i8]* @.str17, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %3) #6, !dbg !627
  tail call void @exit(i32 -1) #7, !dbg !629
  unreachable, !dbg !629

if.end13:                                         ; preds = %if.end
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !630
  %5 = load i32* %n2, align 4, !dbg !630, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !202), !dbg !630
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !197), !dbg !631
  switch i32 %3, label %if.end104 [
    i32 1, label %if.then16
    i32 2, label %if.then42
  ], !dbg !632

if.then16:                                        ; preds = %if.end13
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !633
  %6 = load i32* %inc1, align 4, !dbg !633, !tbaa !216
  %mul = mul nsw i32 %6, %irow, !dbg !633
  %idx.ext = sext i32 %mul to i64, !dbg !633
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !635
  %7 = load i32* %inc218, align 4, !dbg !635, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !199), !dbg !635
  %cmp19 = icmp eq i32 %7, 1, !dbg !635
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !200), !dbg !636
  %cmp21172 = icmp sgt i32 %5, 0, !dbg !636
  br i1 %cmp19, label %for.cond.preheader, label %for.cond25.preheader, !dbg !635

for.cond25.preheader:                             ; preds = %if.then16
  br i1 %cmp21172, label %for.body27.lr.ph, label %if.end104, !dbg !639

for.body27.lr.ph:                                 ; preds = %for.cond25.preheader
  %8 = sext i32 %7 to i64
  br label %for.body27, !dbg !639

for.cond.preheader:                               ; preds = %if.then16
  br i1 %cmp21172, label %for.body, label %if.end104, !dbg !636

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %sum.0174 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %add.ptr.sum171 = add i64 %indvars.iv, %idx.ext, !dbg !642
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum171, !dbg !642
  %9 = load double* %arrayidx, align 8, !dbg !642, !tbaa !248
  %mul24 = fmul double %9, %9, !dbg !642
  %add = fadd double %sum.0174, %mul24, !dbg !642
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !197), !dbg !642
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !636
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !636
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !636
  br i1 %exitcond, label %if.end104, label %for.body, !dbg !636

for.body27:                                       ; preds = %for.body27, %for.body27.lr.ph
  %indvars.iv192 = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next193, %for.body27 ]
  %sum.1179 = phi double [ 0.000000e+00, %for.body27.lr.ph ], [ %add33, %for.body27 ]
  %jcol.1177 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc35, %for.body27 ]
  %add.ptr.sum = add i64 %indvars.iv192, %idx.ext, !dbg !644
  %arrayidx29 = getelementptr inbounds double* %0, i64 %add.ptr.sum, !dbg !644
  %10 = load double* %arrayidx29, align 8, !dbg !644, !tbaa !248
  %mul32 = fmul double %10, %10, !dbg !644
  %add33 = fadd double %sum.1179, %mul32, !dbg !644
  tail call void @llvm.dbg.value(metadata !{double %add33}, i64 0, metadata !197), !dbg !644
  %inc35 = add nsw i32 %jcol.1177, 1, !dbg !639
  tail call void @llvm.dbg.value(metadata !{i32 %inc35}, i64 0, metadata !200), !dbg !639
  %indvars.iv.next193 = add i64 %indvars.iv192, %8, !dbg !639
  %exitcond194 = icmp eq i32 %inc35, %5, !dbg !639
  br i1 %exitcond194, label %if.end104, label %for.body27, !dbg !639

if.then42:                                        ; preds = %if.end13
  %mul44 = shl i32 %irow, 1, !dbg !646
  %inc145 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !646
  %11 = load i32* %inc145, align 4, !dbg !646, !tbaa !216
  %mul46 = mul nsw i32 %mul44, %11, !dbg !646
  %idx.ext47 = sext i32 %mul46 to i64, !dbg !646
  %inc249 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !648
  %12 = load i32* %inc249, align 4, !dbg !648, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !199), !dbg !648
  %cmp50 = icmp eq i32 %12, 1, !dbg !648
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !200), !dbg !649
  %cmp53182 = icmp sgt i32 %5, 0, !dbg !649
  br i1 %cmp50, label %for.cond52.preheader, label %for.cond77.preheader, !dbg !648

for.cond77.preheader:                             ; preds = %if.then42
  br i1 %cmp53182, label %for.body79.lr.ph, label %if.end104, !dbg !652

for.body79.lr.ph:                                 ; preds = %for.cond77.preheader
  %13 = sext i32 %12 to i64
  br label %for.body79, !dbg !652

for.cond52.preheader:                             ; preds = %if.then42
  br i1 %cmp53182, label %for.body54, label %if.end104, !dbg !649

for.body54:                                       ; preds = %for.cond52.preheader, %for.body54
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %for.body54 ], [ 0, %for.cond52.preheader ]
  %sum.2184 = phi double [ %add72, %for.body54 ], [ 0.000000e+00, %for.cond52.preheader ]
  %14 = trunc i64 %indvars.iv195 to i32, !dbg !655
  %mul55 = shl nsw i32 %14, 1, !dbg !655
  %idxprom56 = sext i32 %mul55 to i64, !dbg !655
  %add.ptr48.sum168 = add i64 %idxprom56, %idx.ext47, !dbg !655
  %arrayidx57 = getelementptr inbounds double* %0, i64 %add.ptr48.sum168, !dbg !655
  %15 = load double* %arrayidx57, align 8, !dbg !655, !tbaa !248
  %mul61 = fmul double %15, %15, !dbg !655
  %add63169 = or i32 %mul55, 1, !dbg !655
  %idxprom64 = sext i32 %add63169 to i64, !dbg !655
  %add.ptr48.sum170 = add i64 %idxprom64, %idx.ext47, !dbg !655
  %arrayidx65 = getelementptr inbounds double* %0, i64 %add.ptr48.sum170, !dbg !655
  %16 = load double* %arrayidx65, align 8, !dbg !655, !tbaa !248
  %mul70 = fmul double %16, %16, !dbg !655
  %add71 = fadd double %mul61, %mul70, !dbg !655
  %add72 = fadd double %sum.2184, %add71, !dbg !655
  tail call void @llvm.dbg.value(metadata !{double %add72}, i64 0, metadata !197), !dbg !655
  %indvars.iv.next196 = add i64 %indvars.iv195, 1, !dbg !649
  %lftr.wideiv197 = trunc i64 %indvars.iv.next196 to i32, !dbg !649
  %exitcond198 = icmp eq i32 %lftr.wideiv197, %5, !dbg !649
  br i1 %exitcond198, label %if.end104, label %for.body54, !dbg !649

for.body79:                                       ; preds = %for.body79, %for.body79.lr.ph
  %indvars.iv199 = phi i64 [ 0, %for.body79.lr.ph ], [ %indvars.iv.next200, %for.body79 ]
  %sum.3190 = phi double [ 0.000000e+00, %for.body79.lr.ph ], [ %add97, %for.body79 ]
  %jcol.3188 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc99, %for.body79 ]
  %17 = trunc i64 %indvars.iv199 to i32, !dbg !657
  %mul80 = shl nsw i32 %17, 1, !dbg !657
  %idxprom81 = sext i32 %mul80 to i64, !dbg !657
  %add.ptr48.sum = add i64 %idxprom81, %idx.ext47, !dbg !657
  %arrayidx82 = getelementptr inbounds double* %0, i64 %add.ptr48.sum, !dbg !657
  %18 = load double* %arrayidx82, align 8, !dbg !657, !tbaa !248
  %mul86 = fmul double %18, %18, !dbg !657
  %add88166 = or i32 %mul80, 1, !dbg !657
  %idxprom89 = sext i32 %add88166 to i64, !dbg !657
  %add.ptr48.sum167 = add i64 %idxprom89, %idx.ext47, !dbg !657
  %arrayidx90 = getelementptr inbounds double* %0, i64 %add.ptr48.sum167, !dbg !657
  %19 = load double* %arrayidx90, align 8, !dbg !657, !tbaa !248
  %mul95 = fmul double %19, %19, !dbg !657
  %add96 = fadd double %mul86, %mul95, !dbg !657
  %add97 = fadd double %sum.3190, %add96, !dbg !657
  tail call void @llvm.dbg.value(metadata !{double %add97}, i64 0, metadata !197), !dbg !657
  %inc99 = add nsw i32 %jcol.3188, 1, !dbg !652
  tail call void @llvm.dbg.value(metadata !{i32 %inc99}, i64 0, metadata !200), !dbg !652
  %indvars.iv.next200 = add i64 %indvars.iv199, %13, !dbg !652
  %exitcond201 = icmp eq i32 %inc99, %5, !dbg !652
  br i1 %exitcond201, label %if.end104, label %for.body79, !dbg !652

if.end104:                                        ; preds = %for.cond77.preheader, %for.body79, %for.cond52.preheader, %for.body54, %for.cond25.preheader, %for.body27, %for.cond.preheader, %for.body, %if.end13
  %sum.4 = phi double [ 0.000000e+00, %if.end13 ], [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ], [ 0.000000e+00, %for.cond25.preheader ], [ %add33, %for.body27 ], [ 0.000000e+00, %for.cond52.preheader ], [ %add72, %for.body54 ], [ 0.000000e+00, %for.cond77.preheader ], [ %add97, %for.body79 ]
  %call105 = tail call double @sqrt(double %sum.4) #6, !dbg !659
  tail call void @llvm.dbg.value(metadata !{double %call105}, i64 0, metadata !197), !dbg !659
  ret double %call105, !dbg !660
}

; Function Attrs: nounwind optsize uwtable
define double @A2_infinityNormOfRow(%struct._A2* %mtx, i32 %irow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !205), !dbg !661
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !206), !dbg !662
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !663
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !663

lor.lhs.false:                                    ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !663
  %0 = load double** %entries, align 8, !dbg !663, !tbaa !221
  %cmp1 = icmp eq double* %0, null, !dbg !663
  %cmp3 = icmp slt i32 %irow, 0, !dbg !663
  %or.cond = or i1 %cmp1, %cmp3, !dbg !663
  br i1 %or.cond, label %if.then, label %lor.lhs.false4, !dbg !663

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !663
  %1 = load i32* %n1, align 4, !dbg !663, !tbaa !216
  %cmp5 = icmp slt i32 %1, %irow, !dbg !663
  br i1 %cmp5, label %if.then, label %if.end, !dbg !663

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !664, !tbaa !221
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str18, i64 0, i64 0), %struct._A2* %mtx, i32 %irow) #6, !dbg !664
  tail call void @exit(i32 -1) #7, !dbg !666
  unreachable, !dbg !666

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !667
  %3 = load i32* %type, align 4, !dbg !667, !tbaa !216
  %.off = add i32 %3, -1, !dbg !667
  %switch = icmp ult i32 %.off, 2, !dbg !667
  br i1 %switch, label %if.end13, label %if.then10, !dbg !667

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !668, !tbaa !221
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([100 x i8]* @.str19, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %3) #6, !dbg !668
  tail call void @exit(i32 -1) #7, !dbg !670
  unreachable, !dbg !670

if.end13:                                         ; preds = %if.end
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !671
  %5 = load i32* %n2, align 4, !dbg !671, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !213), !dbg !671
  tail call void @llvm.dbg.value(metadata !228, i64 0, metadata !207), !dbg !672
  switch i32 %3, label %if.end90 [
    i32 1, label %if.then16
    i32 2, label %if.then42
  ], !dbg !673

if.then16:                                        ; preds = %if.end13
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !674
  %6 = load i32* %inc1, align 4, !dbg !674, !tbaa !216
  %mul = mul nsw i32 %6, %irow, !dbg !674
  %idx.ext = sext i32 %mul to i64, !dbg !674
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !676
  %7 = load i32* %inc218, align 4, !dbg !676, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !210), !dbg !676
  %cmp19 = icmp eq i32 %7, 1, !dbg !676
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !211), !dbg !677
  %cmp21151 = icmp sgt i32 %5, 0, !dbg !677
  br i1 %cmp19, label %for.cond.preheader, label %for.cond26.preheader, !dbg !676

for.cond26.preheader:                             ; preds = %if.then16
  br i1 %cmp21151, label %for.body28.lr.ph, label %if.end90, !dbg !680

for.body28.lr.ph:                                 ; preds = %for.cond26.preheader
  %8 = sext i32 %7 to i64
  br label %for.body28, !dbg !680

for.cond.preheader:                               ; preds = %if.then16
  br i1 %cmp21151, label %for.body, label %if.end90, !dbg !677

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %norm.0153 = phi double [ %norm.1, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %add.ptr.sum150 = add i64 %indvars.iv, %idx.ext, !dbg !683
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum150, !dbg !683
  %9 = load double* %arrayidx, align 8, !dbg !683, !tbaa !248
  %call22 = tail call double @fabs(double %9) #8, !dbg !683
  tail call void @llvm.dbg.value(metadata !{double %call22}, i64 0, metadata !208), !dbg !683
  %cmp23 = fcmp olt double %norm.0153, %call22, !dbg !685
  tail call void @llvm.dbg.value(metadata !{double %call22}, i64 0, metadata !207), !dbg !686
  %norm.1 = select i1 %cmp23, double %call22, double %norm.0153, !dbg !685
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !677
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !677
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !677
  br i1 %exitcond, label %if.end90, label %for.body, !dbg !677

for.body28:                                       ; preds = %for.body28, %for.body28.lr.ph
  %indvars.iv171 = phi i64 [ 0, %for.body28.lr.ph ], [ %indvars.iv.next172, %for.body28 ]
  %norm.2158 = phi double [ 0.000000e+00, %for.body28.lr.ph ], [ %norm.3, %for.body28 ]
  %jcol.1156 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc36, %for.body28 ]
  %add.ptr.sum = add i64 %indvars.iv171, %idx.ext, !dbg !688
  %arrayidx30 = getelementptr inbounds double* %0, i64 %add.ptr.sum, !dbg !688
  %10 = load double* %arrayidx30, align 8, !dbg !688, !tbaa !248
  %call31 = tail call double @fabs(double %10) #8, !dbg !688
  tail call void @llvm.dbg.value(metadata !{double %call31}, i64 0, metadata !208), !dbg !688
  %cmp32 = fcmp olt double %norm.2158, %call31, !dbg !690
  tail call void @llvm.dbg.value(metadata !{double %call31}, i64 0, metadata !207), !dbg !691
  %norm.3 = select i1 %cmp32, double %call31, double %norm.2158, !dbg !690
  %inc36 = add nsw i32 %jcol.1156, 1, !dbg !680
  tail call void @llvm.dbg.value(metadata !{i32 %inc36}, i64 0, metadata !211), !dbg !680
  %indvars.iv.next172 = add i64 %indvars.iv171, %8, !dbg !680
  %exitcond173 = icmp eq i32 %inc36, %5, !dbg !680
  br i1 %exitcond173, label %if.end90, label %for.body28, !dbg !680

if.then42:                                        ; preds = %if.end13
  %mul44 = shl i32 %irow, 1, !dbg !693
  %inc145 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !693
  %11 = load i32* %inc145, align 4, !dbg !693, !tbaa !216
  %mul46 = mul nsw i32 %mul44, %11, !dbg !693
  %idx.ext47 = sext i32 %mul46 to i64, !dbg !693
  %inc249 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !695
  %12 = load i32* %inc249, align 4, !dbg !695, !tbaa !216
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !210), !dbg !695
  %cmp50 = icmp eq i32 %12, 1, !dbg !695
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !211), !dbg !696
  %cmp53161 = icmp sgt i32 %5, 0, !dbg !696
  br i1 %cmp50, label %for.cond52.preheader, label %for.cond70.preheader, !dbg !695

for.cond70.preheader:                             ; preds = %if.then42
  br i1 %cmp53161, label %for.body72.lr.ph, label %if.end90, !dbg !699

for.body72.lr.ph:                                 ; preds = %for.cond70.preheader
  %13 = sext i32 %12 to i64
  br label %for.body72, !dbg !699

for.cond52.preheader:                             ; preds = %if.then42
  br i1 %cmp53161, label %for.body54, label %if.end90, !dbg !696

for.body54:                                       ; preds = %for.cond52.preheader, %for.body54
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %for.body54 ], [ 0, %for.cond52.preheader ]
  %norm.4163 = phi double [ %norm.5, %for.body54 ], [ 0.000000e+00, %for.cond52.preheader ]
  %14 = trunc i64 %indvars.iv174 to i32, !dbg !702
  %mul55 = shl nsw i32 %14, 1, !dbg !702
  %idxprom56 = sext i32 %mul55 to i64, !dbg !702
  %add.ptr48.sum147 = add i64 %idxprom56, %idx.ext47, !dbg !702
  %arrayidx57 = getelementptr inbounds double* %0, i64 %add.ptr48.sum147, !dbg !702
  %15 = load double* %arrayidx57, align 8, !dbg !702, !tbaa !248
  %add59148 = or i32 %mul55, 1, !dbg !702
  %idxprom60 = sext i32 %add59148 to i64, !dbg !702
  %add.ptr48.sum149 = add i64 %idxprom60, %idx.ext47, !dbg !702
  %arrayidx61 = getelementptr inbounds double* %0, i64 %add.ptr48.sum149, !dbg !702
  %16 = load double* %arrayidx61, align 8, !dbg !702, !tbaa !248
  %call62 = tail call double @Zabs(double %15, double %16) #6, !dbg !702
  tail call void @llvm.dbg.value(metadata !{double %call62}, i64 0, metadata !208), !dbg !702
  %cmp63 = fcmp olt double %norm.4163, %call62, !dbg !704
  tail call void @llvm.dbg.value(metadata !{double %call62}, i64 0, metadata !207), !dbg !705
  %norm.5 = select i1 %cmp63, double %call62, double %norm.4163, !dbg !704
  %indvars.iv.next175 = add i64 %indvars.iv174, 1, !dbg !696
  %lftr.wideiv176 = trunc i64 %indvars.iv.next175 to i32, !dbg !696
  %exitcond177 = icmp eq i32 %lftr.wideiv176, %5, !dbg !696
  br i1 %exitcond177, label %if.end90, label %for.body54, !dbg !696

for.body72:                                       ; preds = %for.body72, %for.body72.lr.ph
  %indvars.iv178 = phi i64 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next179, %for.body72 ]
  %norm.6169 = phi double [ 0.000000e+00, %for.body72.lr.ph ], [ %norm.7, %for.body72 ]
  %jcol.3167 = phi i32 [ 0, %for.body72.lr.ph ], [ %inc85, %for.body72 ]
  %17 = trunc i64 %indvars.iv178 to i32, !dbg !707
  %mul73 = shl nsw i32 %17, 1, !dbg !707
  %idxprom74 = sext i32 %mul73 to i64, !dbg !707
  %add.ptr48.sum = add i64 %idxprom74, %idx.ext47, !dbg !707
  %arrayidx75 = getelementptr inbounds double* %0, i64 %add.ptr48.sum, !dbg !707
  %18 = load double* %arrayidx75, align 8, !dbg !707, !tbaa !248
  %add77145 = or i32 %mul73, 1, !dbg !707
  %idxprom78 = sext i32 %add77145 to i64, !dbg !707
  %add.ptr48.sum146 = add i64 %idxprom78, %idx.ext47, !dbg !707
  %arrayidx79 = getelementptr inbounds double* %0, i64 %add.ptr48.sum146, !dbg !707
  %19 = load double* %arrayidx79, align 8, !dbg !707, !tbaa !248
  %call80 = tail call double @Zabs(double %18, double %19) #6, !dbg !707
  tail call void @llvm.dbg.value(metadata !{double %call80}, i64 0, metadata !208), !dbg !707
  %cmp81 = fcmp olt double %norm.6169, %call80, !dbg !709
  tail call void @llvm.dbg.value(metadata !{double %call80}, i64 0, metadata !207), !dbg !710
  %norm.7 = select i1 %cmp81, double %call80, double %norm.6169, !dbg !709
  %inc85 = add nsw i32 %jcol.3167, 1, !dbg !699
  tail call void @llvm.dbg.value(metadata !{i32 %inc85}, i64 0, metadata !211), !dbg !699
  %indvars.iv.next179 = add i64 %indvars.iv178, %13, !dbg !699
  %exitcond180 = icmp eq i32 %inc85, %5, !dbg !699
  br i1 %exitcond180, label %if.end90, label %for.body72, !dbg !699

if.end90:                                         ; preds = %for.cond70.preheader, %for.body72, %for.cond52.preheader, %for.body54, %for.cond26.preheader, %for.body28, %for.cond.preheader, %for.body, %if.end13
  %norm.8 = phi double [ 0.000000e+00, %if.end13 ], [ 0.000000e+00, %for.cond.preheader ], [ %norm.1, %for.body ], [ 0.000000e+00, %for.cond26.preheader ], [ %norm.3, %for.body28 ], [ 0.000000e+00, %for.cond52.preheader ], [ %norm.5, %for.body54 ], [ 0.000000e+00, %for.cond70.preheader ], [ %norm.7, %for.body72 ]
  ret double %norm.8, !dbg !712
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !36, metadata !78, metadata !114, metadata !150, metadata !162, metadata !172, metadata !183, metadata !193, metadata !203}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_maxabs", metadata !"A2_maxabs", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._A2*)* @A2_maxabs, null, null, metadata !23, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [A2_maxabs]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from A2]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !15} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !15} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35}
!24 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777233, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 17]
!25 = metadata !{i32 786688, metadata !4, metadata !"maxval", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxval] [line 19]
!26 = metadata !{i32 786688, metadata !4, metadata !"val", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 19]
!27 = metadata !{i32 786688, metadata !4, metadata !"entries", metadata !5, i32 20, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 20]
!28 = metadata !{i32 786688, metadata !4, metadata !"row", metadata !5, i32 20, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 20]
!29 = metadata !{i32 786688, metadata !4, metadata !"inc1", metadata !5, i32 21, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 21]
!30 = metadata !{i32 786688, metadata !4, metadata !"inc2", metadata !5, i32 21, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 21]
!31 = metadata !{i32 786688, metadata !4, metadata !"irow", metadata !5, i32 21, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 21]
!32 = metadata !{i32 786688, metadata !4, metadata !"jcol", metadata !5, i32 21, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 21]
!33 = metadata !{i32 786688, metadata !4, metadata !"kk", metadata !5, i32 21, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 21]
!34 = metadata !{i32 786688, metadata !4, metadata !"n1", metadata !5, i32 21, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 21]
!35 = metadata !{i32 786688, metadata !4, metadata !"n2", metadata !5, i32 21, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 21]
!36 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_frobNorm", metadata !"A2_frobNorm", metadata !"", i32 77, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._A2*)* @A2_frobNorm, null, null, metadata !37, i32 79} ; [ DW_TAG_subprogram ] [line 77] [def] [scope 79] [A2_frobNorm]
!37 = metadata !{metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !45, metadata !46, metadata !47, metadata !48, metadata !50, metadata !51, metadata !52, metadata !53, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !63, metadata !64, metadata !65, metadata !66, metadata !68, metadata !69, metadata !70, metadata !71, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77}
!38 = metadata !{i32 786689, metadata !36, metadata !"mtx", metadata !5, i32 16777294, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 78]
!39 = metadata !{i32 786688, metadata !36, metadata !"norm", metadata !5, i32 80, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norm] [line 80]
!40 = metadata !{i32 786688, metadata !36, metadata !"ncol", metadata !5, i32 81, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 81]
!41 = metadata !{i32 786688, metadata !36, metadata !"nrow", metadata !5, i32 81, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 81]
!42 = metadata !{i32 786688, metadata !43, metadata !"col", metadata !5, i32 105, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 105]
!43 = metadata !{i32 786443, metadata !1, metadata !44, i32 104, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!44 = metadata !{i32 786443, metadata !1, metadata !36, i32 103, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!45 = metadata !{i32 786688, metadata !43, metadata !"inc2", metadata !5, i32 106, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 106]
!46 = metadata !{i32 786688, metadata !43, metadata !"irow", metadata !5, i32 106, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 106]
!47 = metadata !{i32 786688, metadata !43, metadata !"jcol", metadata !5, i32 106, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 106]
!48 = metadata !{i32 786688, metadata !49, metadata !"row", metadata !5, i32 116, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 116]
!49 = metadata !{i32 786443, metadata !1, metadata !44, i32 115, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!50 = metadata !{i32 786688, metadata !49, metadata !"inc1", metadata !5, i32 117, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 117]
!51 = metadata !{i32 786688, metadata !49, metadata !"irow", metadata !5, i32 117, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 117]
!52 = metadata !{i32 786688, metadata !49, metadata !"jcol", metadata !5, i32 117, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 117]
!53 = metadata !{i32 786688, metadata !54, metadata !"entries", metadata !5, i32 127, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 127]
!54 = metadata !{i32 786443, metadata !1, metadata !44, i32 126, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!55 = metadata !{i32 786688, metadata !54, metadata !"inc1", metadata !5, i32 128, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 128]
!56 = metadata !{i32 786688, metadata !54, metadata !"inc2", metadata !5, i32 128, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 128]
!57 = metadata !{i32 786688, metadata !54, metadata !"irow", metadata !5, i32 128, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 128]
!58 = metadata !{i32 786688, metadata !54, metadata !"jcol", metadata !5, i32 128, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 128]
!59 = metadata !{i32 786688, metadata !54, metadata !"loc", metadata !5, i32 128, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 128]
!60 = metadata !{i32 786688, metadata !61, metadata !"col", metadata !5, i32 139, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 139]
!61 = metadata !{i32 786443, metadata !1, metadata !62, i32 138, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!62 = metadata !{i32 786443, metadata !1, metadata !36, i32 137, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!63 = metadata !{i32 786688, metadata !61, metadata !"inc2", metadata !5, i32 140, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 140]
!64 = metadata !{i32 786688, metadata !61, metadata !"irow", metadata !5, i32 140, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 140]
!65 = metadata !{i32 786688, metadata !61, metadata !"jcol", metadata !5, i32 140, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 140]
!66 = metadata !{i32 786688, metadata !67, metadata !"row", metadata !5, i32 151, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 151]
!67 = metadata !{i32 786443, metadata !1, metadata !62, i32 150, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!68 = metadata !{i32 786688, metadata !67, metadata !"inc1", metadata !5, i32 152, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 152]
!69 = metadata !{i32 786688, metadata !67, metadata !"irow", metadata !5, i32 152, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 152]
!70 = metadata !{i32 786688, metadata !67, metadata !"jcol", metadata !5, i32 152, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 152]
!71 = metadata !{i32 786688, metadata !72, metadata !"entries", metadata !5, i32 163, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 163]
!72 = metadata !{i32 786443, metadata !1, metadata !62, i32 162, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!73 = metadata !{i32 786688, metadata !72, metadata !"inc1", metadata !5, i32 164, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 164]
!74 = metadata !{i32 786688, metadata !72, metadata !"inc2", metadata !5, i32 164, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 164]
!75 = metadata !{i32 786688, metadata !72, metadata !"irow", metadata !5, i32 164, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 164]
!76 = metadata !{i32 786688, metadata !72, metadata !"jcol", metadata !5, i32 164, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 164]
!77 = metadata !{i32 786688, metadata !72, metadata !"loc", metadata !5, i32 164, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 164]
!78 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_oneNorm", metadata !"A2_oneNorm", metadata !"", i32 188, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._A2*)* @A2_oneNorm, null, null, metadata !79, i32 190} ; [ DW_TAG_subprogram ] [line 188] [def] [scope 190] [A2_oneNorm]
!79 = metadata !{metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113}
!80 = metadata !{i32 786689, metadata !78, metadata !"mtx", metadata !5, i32 16777405, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 189]
!81 = metadata !{i32 786688, metadata !78, metadata !"norm", metadata !5, i32 191, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norm] [line 191]
!82 = metadata !{i32 786688, metadata !78, metadata !"ncol", metadata !5, i32 192, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 192]
!83 = metadata !{i32 786688, metadata !78, metadata !"nrow", metadata !5, i32 192, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 192]
!84 = metadata !{i32 786688, metadata !85, metadata !"sum", metadata !5, i32 215, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 215]
!85 = metadata !{i32 786443, metadata !1, metadata !86, i32 214, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!86 = metadata !{i32 786443, metadata !1, metadata !78, i32 213, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!87 = metadata !{i32 786688, metadata !85, metadata !"col", metadata !5, i32 216, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 216]
!88 = metadata !{i32 786688, metadata !85, metadata !"inc2", metadata !5, i32 217, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 217]
!89 = metadata !{i32 786688, metadata !85, metadata !"irow", metadata !5, i32 217, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 217]
!90 = metadata !{i32 786688, metadata !85, metadata !"jcol", metadata !5, i32 217, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 217]
!91 = metadata !{i32 786688, metadata !92, metadata !"sum", metadata !5, i32 231, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 231]
!92 = metadata !{i32 786443, metadata !1, metadata !86, i32 230, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!93 = metadata !{i32 786688, metadata !92, metadata !"col", metadata !5, i32 232, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 232]
!94 = metadata !{i32 786688, metadata !92, metadata !"inc1", metadata !5, i32 233, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 233]
!95 = metadata !{i32 786688, metadata !92, metadata !"inc2", metadata !5, i32 233, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 233]
!96 = metadata !{i32 786688, metadata !92, metadata !"irow", metadata !5, i32 233, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 233]
!97 = metadata !{i32 786688, metadata !92, metadata !"jcol", metadata !5, i32 233, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 233]
!98 = metadata !{i32 786688, metadata !92, metadata !"kk", metadata !5, i32 233, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 233]
!99 = metadata !{i32 786688, metadata !100, metadata !"sum", metadata !5, i32 249, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 249]
!100 = metadata !{i32 786443, metadata !1, metadata !101, i32 248, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!101 = metadata !{i32 786443, metadata !1, metadata !78, i32 247, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!102 = metadata !{i32 786688, metadata !100, metadata !"col", metadata !5, i32 250, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 250]
!103 = metadata !{i32 786688, metadata !100, metadata !"inc2", metadata !5, i32 251, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 251]
!104 = metadata !{i32 786688, metadata !100, metadata !"irow", metadata !5, i32 251, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 251]
!105 = metadata !{i32 786688, metadata !100, metadata !"jcol", metadata !5, i32 251, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 251]
!106 = metadata !{i32 786688, metadata !107, metadata !"sum", metadata !5, i32 265, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 265]
!107 = metadata !{i32 786443, metadata !1, metadata !101, i32 264, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!108 = metadata !{i32 786688, metadata !107, metadata !"col", metadata !5, i32 266, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 266]
!109 = metadata !{i32 786688, metadata !107, metadata !"inc1", metadata !5, i32 267, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 267]
!110 = metadata !{i32 786688, metadata !107, metadata !"inc2", metadata !5, i32 267, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 267]
!111 = metadata !{i32 786688, metadata !107, metadata !"irow", metadata !5, i32 267, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 267]
!112 = metadata !{i32 786688, metadata !107, metadata !"jcol", metadata !5, i32 267, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 267]
!113 = metadata !{i32 786688, metadata !107, metadata !"kk", metadata !5, i32 267, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 267]
!114 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_infinityNorm", metadata !"A2_infinityNorm", metadata !"", i32 293, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._A2*)* @A2_infinityNorm, null, null, metadata !115, i32 295} ; [ DW_TAG_subprogram ] [line 293] [def] [scope 295] [A2_infinityNorm]
!115 = metadata !{metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149}
!116 = metadata !{i32 786689, metadata !114, metadata !"mtx", metadata !5, i32 16777510, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 294]
!117 = metadata !{i32 786688, metadata !114, metadata !"norm", metadata !5, i32 296, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norm] [line 296]
!118 = metadata !{i32 786688, metadata !114, metadata !"ncol", metadata !5, i32 297, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 297]
!119 = metadata !{i32 786688, metadata !114, metadata !"nrow", metadata !5, i32 297, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 297]
!120 = metadata !{i32 786688, metadata !121, metadata !"sum", metadata !5, i32 320, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 320]
!121 = metadata !{i32 786443, metadata !1, metadata !122, i32 319, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!122 = metadata !{i32 786443, metadata !1, metadata !114, i32 318, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!123 = metadata !{i32 786688, metadata !121, metadata !"row", metadata !5, i32 321, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 321]
!124 = metadata !{i32 786688, metadata !121, metadata !"inc1", metadata !5, i32 322, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 322]
!125 = metadata !{i32 786688, metadata !121, metadata !"irow", metadata !5, i32 322, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 322]
!126 = metadata !{i32 786688, metadata !121, metadata !"jcol", metadata !5, i32 322, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 322]
!127 = metadata !{i32 786688, metadata !128, metadata !"sum", metadata !5, i32 333, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 333]
!128 = metadata !{i32 786443, metadata !1, metadata !122, i32 332, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!129 = metadata !{i32 786688, metadata !128, metadata !"row", metadata !5, i32 334, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 334]
!130 = metadata !{i32 786688, metadata !128, metadata !"inc1", metadata !5, i32 335, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 335]
!131 = metadata !{i32 786688, metadata !128, metadata !"inc2", metadata !5, i32 335, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 335]
!132 = metadata !{i32 786688, metadata !128, metadata !"irow", metadata !5, i32 335, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 335]
!133 = metadata !{i32 786688, metadata !128, metadata !"jcol", metadata !5, i32 335, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 335]
!134 = metadata !{i32 786688, metadata !128, metadata !"kk", metadata !5, i32 335, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 335]
!135 = metadata !{i32 786688, metadata !136, metadata !"sum", metadata !5, i32 349, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 349]
!136 = metadata !{i32 786443, metadata !1, metadata !137, i32 348, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!137 = metadata !{i32 786443, metadata !1, metadata !114, i32 347, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!138 = metadata !{i32 786688, metadata !136, metadata !"row", metadata !5, i32 350, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 350]
!139 = metadata !{i32 786688, metadata !136, metadata !"inc1", metadata !5, i32 351, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 351]
!140 = metadata !{i32 786688, metadata !136, metadata !"irow", metadata !5, i32 351, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 351]
!141 = metadata !{i32 786688, metadata !136, metadata !"jcol", metadata !5, i32 351, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 351]
!142 = metadata !{i32 786688, metadata !143, metadata !"sum", metadata !5, i32 365, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 365]
!143 = metadata !{i32 786443, metadata !1, metadata !137, i32 364, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!144 = metadata !{i32 786688, metadata !143, metadata !"row", metadata !5, i32 366, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 366]
!145 = metadata !{i32 786688, metadata !143, metadata !"inc1", metadata !5, i32 367, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 367]
!146 = metadata !{i32 786688, metadata !143, metadata !"inc2", metadata !5, i32 367, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 367]
!147 = metadata !{i32 786688, metadata !143, metadata !"irow", metadata !5, i32 367, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 367]
!148 = metadata !{i32 786688, metadata !143, metadata !"jcol", metadata !5, i32 367, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 367]
!149 = metadata !{i32 786688, metadata !143, metadata !"kk", metadata !5, i32 367, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 367]
!150 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_oneNormOfColumn", metadata !"A2_oneNormOfColumn", metadata !"", i32 393, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._A2*, i32)* @A2_oneNormOfColumn, null, null, metadata !153, i32 396} ; [ DW_TAG_subprogram ] [line 393] [def] [scope 396] [A2_oneNormOfColumn]
!151 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!152 = metadata !{metadata !8, metadata !9, metadata !15}
!153 = metadata !{metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161}
!154 = metadata !{i32 786689, metadata !150, metadata !"mtx", metadata !5, i32 16777610, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 394]
!155 = metadata !{i32 786689, metadata !150, metadata !"jcol", metadata !5, i32 33554827, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 395]
!156 = metadata !{i32 786688, metadata !150, metadata !"sum", metadata !5, i32 397, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 397]
!157 = metadata !{i32 786688, metadata !150, metadata !"col", metadata !5, i32 398, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 398]
!158 = metadata !{i32 786688, metadata !150, metadata !"inc1", metadata !5, i32 399, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 399]
!159 = metadata !{i32 786688, metadata !150, metadata !"irow", metadata !5, i32 399, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 399]
!160 = metadata !{i32 786688, metadata !150, metadata !"kk", metadata !5, i32 399, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 399]
!161 = metadata !{i32 786688, metadata !150, metadata !"nrow", metadata !5, i32 399, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 399]
!162 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_twoNormOfColumn", metadata !"A2_twoNormOfColumn", metadata !"", i32 453, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._A2*, i32)* @A2_twoNormOfColumn, null, null, metadata !163, i32 456} ; [ DW_TAG_subprogram ] [line 453] [def] [scope 456] [A2_twoNormOfColumn]
!163 = metadata !{metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171}
!164 = metadata !{i32 786689, metadata !162, metadata !"mtx", metadata !5, i32 16777670, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 454]
!165 = metadata !{i32 786689, metadata !162, metadata !"jcol", metadata !5, i32 33554887, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 455]
!166 = metadata !{i32 786688, metadata !162, metadata !"sum", metadata !5, i32 457, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 457]
!167 = metadata !{i32 786688, metadata !162, metadata !"col", metadata !5, i32 458, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 458]
!168 = metadata !{i32 786688, metadata !162, metadata !"inc1", metadata !5, i32 459, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 459]
!169 = metadata !{i32 786688, metadata !162, metadata !"irow", metadata !5, i32 459, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 459]
!170 = metadata !{i32 786688, metadata !162, metadata !"kk", metadata !5, i32 459, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 459]
!171 = metadata !{i32 786688, metadata !162, metadata !"nrow", metadata !5, i32 459, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 459]
!172 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_infinityNormOfColumn", metadata !"A2_infinityNormOfColumn", metadata !"", i32 515, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._A2*, i32)* @A2_infinityNormOfColumn, null, null, metadata !173, i32 518} ; [ DW_TAG_subprogram ] [line 515] [def] [scope 518] [A2_infinityNormOfColumn]
!173 = metadata !{metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182}
!174 = metadata !{i32 786689, metadata !172, metadata !"mtx", metadata !5, i32 16777732, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 516]
!175 = metadata !{i32 786689, metadata !172, metadata !"jcol", metadata !5, i32 33554949, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 517]
!176 = metadata !{i32 786688, metadata !172, metadata !"norm", metadata !5, i32 519, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norm] [line 519]
!177 = metadata !{i32 786688, metadata !172, metadata !"val", metadata !5, i32 519, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 519]
!178 = metadata !{i32 786688, metadata !172, metadata !"col", metadata !5, i32 520, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 520]
!179 = metadata !{i32 786688, metadata !172, metadata !"inc1", metadata !5, i32 521, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 521]
!180 = metadata !{i32 786688, metadata !172, metadata !"irow", metadata !5, i32 521, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 521]
!181 = metadata !{i32 786688, metadata !172, metadata !"kk", metadata !5, i32 521, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 521]
!182 = metadata !{i32 786688, metadata !172, metadata !"nrow", metadata !5, i32 521, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 521]
!183 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_oneNormOfRow", metadata !"A2_oneNormOfRow", metadata !"", i32 587, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._A2*, i32)* @A2_oneNormOfRow, null, null, metadata !184, i32 590} ; [ DW_TAG_subprogram ] [line 587] [def] [scope 590] [A2_oneNormOfRow]
!184 = metadata !{metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192}
!185 = metadata !{i32 786689, metadata !183, metadata !"mtx", metadata !5, i32 16777804, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 588]
!186 = metadata !{i32 786689, metadata !183, metadata !"irow", metadata !5, i32 33555021, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 589]
!187 = metadata !{i32 786688, metadata !183, metadata !"sum", metadata !5, i32 591, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 591]
!188 = metadata !{i32 786688, metadata !183, metadata !"row", metadata !5, i32 592, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 592]
!189 = metadata !{i32 786688, metadata !183, metadata !"inc2", metadata !5, i32 593, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 593]
!190 = metadata !{i32 786688, metadata !183, metadata !"jcol", metadata !5, i32 593, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 593]
!191 = metadata !{i32 786688, metadata !183, metadata !"kk", metadata !5, i32 593, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 593]
!192 = metadata !{i32 786688, metadata !183, metadata !"ncol", metadata !5, i32 593, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 593]
!193 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_twoNormOfRow", metadata !"A2_twoNormOfRow", metadata !"", i32 647, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._A2*, i32)* @A2_twoNormOfRow, null, null, metadata !194, i32 650} ; [ DW_TAG_subprogram ] [line 647] [def] [scope 650] [A2_twoNormOfRow]
!194 = metadata !{metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202}
!195 = metadata !{i32 786689, metadata !193, metadata !"mtx", metadata !5, i32 16777864, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 648]
!196 = metadata !{i32 786689, metadata !193, metadata !"irow", metadata !5, i32 33555081, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 649]
!197 = metadata !{i32 786688, metadata !193, metadata !"sum", metadata !5, i32 651, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 651]
!198 = metadata !{i32 786688, metadata !193, metadata !"row", metadata !5, i32 652, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 652]
!199 = metadata !{i32 786688, metadata !193, metadata !"inc2", metadata !5, i32 653, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 653]
!200 = metadata !{i32 786688, metadata !193, metadata !"jcol", metadata !5, i32 653, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 653]
!201 = metadata !{i32 786688, metadata !193, metadata !"kk", metadata !5, i32 653, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 653]
!202 = metadata !{i32 786688, metadata !193, metadata !"ncol", metadata !5, i32 653, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 653]
!203 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_infinityNormOfRow", metadata !"A2_infinityNormOfRow", metadata !"", i32 709, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._A2*, i32)* @A2_infinityNormOfRow, null, null, metadata !204, i32 712} ; [ DW_TAG_subprogram ] [line 709] [def] [scope 712] [A2_infinityNormOfRow]
!204 = metadata !{metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213}
!205 = metadata !{i32 786689, metadata !203, metadata !"mtx", metadata !5, i32 16777926, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 710]
!206 = metadata !{i32 786689, metadata !203, metadata !"irow", metadata !5, i32 33555143, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 711]
!207 = metadata !{i32 786688, metadata !203, metadata !"norm", metadata !5, i32 713, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norm] [line 713]
!208 = metadata !{i32 786688, metadata !203, metadata !"val", metadata !5, i32 713, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 713]
!209 = metadata !{i32 786688, metadata !203, metadata !"row", metadata !5, i32 714, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 714]
!210 = metadata !{i32 786688, metadata !203, metadata !"inc2", metadata !5, i32 715, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 715]
!211 = metadata !{i32 786688, metadata !203, metadata !"jcol", metadata !5, i32 715, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 715]
!212 = metadata !{i32 786688, metadata !203, metadata !"kk", metadata !5, i32 715, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 715]
!213 = metadata !{i32 786688, metadata !203, metadata !"ncol", metadata !5, i32 715, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 715]
!214 = metadata !{i32 17, i32 0, metadata !4, null}
!215 = metadata !{i32 27, i32 0, metadata !4, null}
!216 = metadata !{metadata !"int", metadata !217}
!217 = metadata !{metadata !"omnipotent char", metadata !218}
!218 = metadata !{metadata !"Simple C/C++ TBAA"}
!219 = metadata !{i32 32, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !4, i32 31, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!221 = metadata !{metadata !"any pointer", metadata !217}
!222 = metadata !{i32 34, i32 0, metadata !220, null}
!223 = metadata !{i32 36, i32 0, metadata !4, null}
!224 = metadata !{i32 37, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !4, i32 36, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!226 = metadata !{i32 40, i32 0, metadata !225, null}
!227 = metadata !{i32 42, i32 0, metadata !4, null}
!228 = metadata !{double 0.000000e+00}
!229 = metadata !{i32 43, i32 0, metadata !4, null}
!230 = metadata !{i32 44, i32 0, metadata !4, null}
!231 = metadata !{i32 45, i32 0, metadata !4, null}
!232 = metadata !{i32 56, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !234, i32 56, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!234 = metadata !{i32 786443, metadata !1, metadata !4, i32 55, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!235 = metadata !{i32 57, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !237, i32 57, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!237 = metadata !{i32 786443, metadata !1, metadata !233, i32 56, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!238 = metadata !{i32 63, i32 0, metadata !237, null}
!239 = metadata !{i32 46, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !241, i32 46, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!241 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!242 = metadata !{i32 47, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !244, i32 47, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!244 = metadata !{i32 786443, metadata !1, metadata !240, i32 46, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!245 = metadata !{i32 53, i32 0, metadata !244, null}
!246 = metadata !{i32 48, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !243, i32 47, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!248 = metadata !{metadata !"double", metadata !217}
!249 = metadata !{i32 49, i32 0, metadata !247, null}
!250 = metadata !{i32 50, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !247, i32 49, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!252 = metadata !{i32 58, i32 0, metadata !253, null} ; [ DW_TAG_imported_module ]
!253 = metadata !{i32 786443, metadata !1, metadata !236, i32 57, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!254 = metadata !{i32 59, i32 0, metadata !253, null}
!255 = metadata !{i32 60, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !253, i32 59, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!257 = metadata !{i32 66, i32 0, metadata !4, null}
!258 = metadata !{i32 78, i32 0, metadata !36, null}
!259 = metadata !{i32 87, i32 0, metadata !36, null}
!260 = metadata !{i32 88, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !36, i32 87, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!262 = metadata !{i32 91, i32 0, metadata !261, null}
!263 = metadata !{i32 93, i32 0, metadata !36, null}
!264 = metadata !{i32 94, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !36, i32 93, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!266 = metadata !{i32 97, i32 0, metadata !265, null}
!267 = metadata !{i32 99, i32 0, metadata !36, null}
!268 = metadata !{i32 102, i32 0, metadata !36, null}
!269 = metadata !{i32 103, i32 0, metadata !36, null}
!270 = metadata !{i32 104, i32 0, metadata !44, null}
!271 = metadata !{i32 106, i32 0, metadata !43, null}
!272 = metadata !{i32 108, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !43, i32 108, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!274 = metadata !{i32 111, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !276, i32 111, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!276 = metadata !{i32 786443, metadata !1, metadata !273, i32 110, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!277 = metadata !{i32 110, i32 0, metadata !273, null}
!278 = metadata !{i32 112, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !275, i32 111, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!280 = metadata !{i32 115, i32 0, metadata !44, null}
!281 = metadata !{i32 119, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !49, i32 119, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!283 = metadata !{i32 130, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !54, i32 130, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!285 = metadata !{i32 131, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !287, i32 131, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!287 = metadata !{i32 786443, metadata !1, metadata !284, i32 130, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!288 = metadata !{i32 122, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !290, i32 122, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!290 = metadata !{i32 786443, metadata !1, metadata !282, i32 121, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!291 = metadata !{i32 121, i32 0, metadata !282, null}
!292 = metadata !{i32 123, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !289, i32 122, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!294 = metadata !{i32 132, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !286, i32 131, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!296 = metadata !{i32 133, i32 0, metadata !295, null}
!297 = metadata !{i32 138, i32 0, metadata !62, null}
!298 = metadata !{i32 140, i32 0, metadata !61, null}
!299 = metadata !{i32 142, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !61, i32 142, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!301 = metadata !{i32 145, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !303, i32 145, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!303 = metadata !{i32 786443, metadata !1, metadata !300, i32 144, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!304 = metadata !{i32 144, i32 0, metadata !300, null}
!305 = metadata !{i32 146, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !302, i32 145, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!307 = metadata !{i32 150, i32 0, metadata !62, null}
!308 = metadata !{i32 154, i32 0, metadata !309, null}
!309 = metadata !{i32 786443, metadata !1, metadata !67, i32 154, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!310 = metadata !{i32 166, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !72, i32 166, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!312 = metadata !{i32 167, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !314, i32 167, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!314 = metadata !{i32 786443, metadata !1, metadata !311, i32 166, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!315 = metadata !{i32 156, i32 0, metadata !309, null}
!316 = metadata !{i32 157, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !318, i32 157, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!318 = metadata !{i32 786443, metadata !1, metadata !309, i32 156, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!319 = metadata !{i32 158, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !317, i32 157, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!321 = metadata !{i32 168, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !313, i32 167, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!323 = metadata !{i32 169, i32 0, metadata !322, null}
!324 = metadata !{i32 175, i32 0, metadata !36, null}
!325 = metadata !{i32 177, i32 0, metadata !36, null}
!326 = metadata !{i32 189, i32 0, metadata !78, null}
!327 = metadata !{i32 198, i32 0, metadata !78, null}
!328 = metadata !{i32 199, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !78, i32 198, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!330 = metadata !{i32 201, i32 0, metadata !329, null}
!331 = metadata !{i32 203, i32 0, metadata !78, null}
!332 = metadata !{i32 204, i32 0, metadata !333, null}
!333 = metadata !{i32 786443, metadata !1, metadata !78, i32 203, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!334 = metadata !{i32 207, i32 0, metadata !333, null}
!335 = metadata !{i32 209, i32 0, metadata !78, null}
!336 = metadata !{i32 212, i32 0, metadata !78, null}
!337 = metadata !{i32 213, i32 0, metadata !78, null}
!338 = metadata !{i32 214, i32 0, metadata !86, null}
!339 = metadata !{i32 217, i32 0, metadata !85, null}
!340 = metadata !{i32 219, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !85, i32 219, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!342 = metadata !{i32 235, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !92, i32 235, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!344 = metadata !{i32 239, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !346, i32 239, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!346 = metadata !{i32 786443, metadata !1, metadata !343, i32 237, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!347 = metadata !{i32 237, i32 0, metadata !343, null}
!348 = metadata !{i32 223, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !350, i32 223, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!350 = metadata !{i32 786443, metadata !1, metadata !341, i32 221, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!351 = metadata !{i32 221, i32 0, metadata !341, null}
!352 = metadata !{i32 224, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !349, i32 223, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!354 = metadata !{i32 226, i32 0, metadata !350, null}
!355 = metadata !{i32 227, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !350, i32 226, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!357 = metadata !{i32 240, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !345, i32 239, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!359 = metadata !{i32 242, i32 0, metadata !346, null}
!360 = metadata !{i32 243, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !346, i32 242, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!362 = metadata !{i32 248, i32 0, metadata !101, null}
!363 = metadata !{i32 251, i32 0, metadata !100, null}
!364 = metadata !{i32 253, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !100, i32 253, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!366 = metadata !{i32 257, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !368, i32 257, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!368 = metadata !{i32 786443, metadata !1, metadata !365, i32 255, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!369 = metadata !{i32 255, i32 0, metadata !365, null}
!370 = metadata !{i32 269, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !107, i32 269, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!372 = metadata !{i32 258, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !367, i32 257, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!374 = metadata !{i32 260, i32 0, metadata !368, null}
!375 = metadata !{i32 261, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !368, i32 260, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!377 = metadata !{i32 273, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !379, i32 273, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!379 = metadata !{i32 786443, metadata !1, metadata !371, i32 271, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!380 = metadata !{i32 274, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !378, i32 273, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!382 = metadata !{i32 276, i32 0, metadata !379, null}
!383 = metadata !{i32 277, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !379, i32 276, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!385 = metadata !{i32 271, i32 0, metadata !371, null}
!386 = metadata !{i32 282, i32 0, metadata !78, null}
!387 = metadata !{i32 294, i32 0, metadata !114, null}
!388 = metadata !{i32 303, i32 0, metadata !114, null}
!389 = metadata !{i32 304, i32 0, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !114, i32 303, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!391 = metadata !{i32 306, i32 0, metadata !390, null}
!392 = metadata !{i32 308, i32 0, metadata !114, null}
!393 = metadata !{i32 309, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !114, i32 308, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!395 = metadata !{i32 312, i32 0, metadata !394, null}
!396 = metadata !{i32 314, i32 0, metadata !114, null}
!397 = metadata !{i32 317, i32 0, metadata !114, null}
!398 = metadata !{i32 318, i32 0, metadata !114, null}
!399 = metadata !{i32 319, i32 0, metadata !122, null}
!400 = metadata !{i32 321, i32 0, metadata !121, null}
!401 = metadata !{i32 322, i32 0, metadata !121, null}
!402 = metadata !{i32 324, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !121, i32 324, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!404 = metadata !{i32 337, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !128, i32 337, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!406 = metadata !{i32 339, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !408, i32 339, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!408 = metadata !{i32 786443, metadata !1, metadata !405, i32 337, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!409 = metadata !{i32 325, i32 0, metadata !410, null}
!410 = metadata !{i32 786443, metadata !1, metadata !411, i32 325, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!411 = metadata !{i32 786443, metadata !1, metadata !403, i32 324, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!412 = metadata !{i32 326, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !410, i32 325, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!414 = metadata !{i32 328, i32 0, metadata !411, null}
!415 = metadata !{i32 329, i32 0, metadata !416, null}
!416 = metadata !{i32 786443, metadata !1, metadata !411, i32 328, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!417 = metadata !{i32 340, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !407, i32 339, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!419 = metadata !{i32 342, i32 0, metadata !408, null}
!420 = metadata !{i32 343, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !408, i32 342, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!422 = metadata !{i32 348, i32 0, metadata !137, null}
!423 = metadata !{i32 351, i32 0, metadata !136, null}
!424 = metadata !{i32 353, i32 0, metadata !425, null}
!425 = metadata !{i32 786443, metadata !1, metadata !136, i32 353, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!426 = metadata !{i32 369, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !143, i32 369, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!428 = metadata !{i32 373, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !430, i32 373, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!430 = metadata !{i32 786443, metadata !1, metadata !427, i32 371, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!431 = metadata !{i32 371, i32 0, metadata !427, null}
!432 = metadata !{i32 355, i32 0, metadata !425, null}
!433 = metadata !{i32 357, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !435, i32 357, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!435 = metadata !{i32 786443, metadata !1, metadata !425, i32 355, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!436 = metadata !{i32 358, i32 0, metadata !437, null}
!437 = metadata !{i32 786443, metadata !1, metadata !434, i32 357, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!438 = metadata !{i32 360, i32 0, metadata !435, null}
!439 = metadata !{i32 361, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !435, i32 360, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!441 = metadata !{i32 374, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !429, i32 373, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!443 = metadata !{i32 376, i32 0, metadata !430, null}
!444 = metadata !{i32 377, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !430, i32 376, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!446 = metadata !{i32 382, i32 0, metadata !114, null}
!447 = metadata !{i32 394, i32 0, metadata !150, null}
!448 = metadata !{i32 395, i32 0, metadata !150, null}
!449 = metadata !{i32 405, i32 0, metadata !150, null}
!450 = metadata !{i32 407, i32 0, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !150, i32 406, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!452 = metadata !{i32 409, i32 0, metadata !451, null}
!453 = metadata !{i32 411, i32 0, metadata !150, null}
!454 = metadata !{i32 412, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !150, i32 411, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!456 = metadata !{i32 415, i32 0, metadata !455, null}
!457 = metadata !{i32 417, i32 0, metadata !150, null}
!458 = metadata !{i32 418, i32 0, metadata !150, null}
!459 = metadata !{i32 419, i32 0, metadata !150, null}
!460 = metadata !{i32 420, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !150, i32 419, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!462 = metadata !{i32 421, i32 0, metadata !461, null}
!463 = metadata !{i32 422, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !465, i32 422, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!465 = metadata !{i32 786443, metadata !1, metadata !461, i32 421, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!466 = metadata !{i32 426, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !468, i32 426, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!468 = metadata !{i32 786443, metadata !1, metadata !461, i32 425, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!469 = metadata !{i32 423, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !464, i32 422, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!471 = metadata !{i32 427, i32 0, metadata !472, null}
!472 = metadata !{i32 786443, metadata !1, metadata !467, i32 426, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!473 = metadata !{i32 431, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !150, i32 430, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!475 = metadata !{i32 432, i32 0, metadata !474, null}
!476 = metadata !{i32 433, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !1, metadata !478, i32 433, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!478 = metadata !{i32 786443, metadata !1, metadata !474, i32 432, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!479 = metadata !{i32 437, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !481, i32 437, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!481 = metadata !{i32 786443, metadata !1, metadata !474, i32 436, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!482 = metadata !{i32 434, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !477, i32 433, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!484 = metadata !{i32 438, i32 0, metadata !485, null}
!485 = metadata !{i32 786443, metadata !1, metadata !480, i32 437, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!486 = metadata !{i32 442, i32 0, metadata !150, null}
!487 = metadata !{i32 454, i32 0, metadata !162, null}
!488 = metadata !{i32 455, i32 0, metadata !162, null}
!489 = metadata !{i32 465, i32 0, metadata !162, null}
!490 = metadata !{i32 467, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !162, i32 466, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!492 = metadata !{i32 469, i32 0, metadata !491, null}
!493 = metadata !{i32 471, i32 0, metadata !162, null}
!494 = metadata !{i32 472, i32 0, metadata !495, null}
!495 = metadata !{i32 786443, metadata !1, metadata !162, i32 471, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!496 = metadata !{i32 475, i32 0, metadata !495, null}
!497 = metadata !{i32 477, i32 0, metadata !162, null}
!498 = metadata !{i32 478, i32 0, metadata !162, null}
!499 = metadata !{i32 479, i32 0, metadata !162, null}
!500 = metadata !{i32 480, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !162, i32 479, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!502 = metadata !{i32 481, i32 0, metadata !501, null}
!503 = metadata !{i32 482, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !1, metadata !505, i32 482, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!505 = metadata !{i32 786443, metadata !1, metadata !501, i32 481, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!506 = metadata !{i32 486, i32 0, metadata !507, null}
!507 = metadata !{i32 786443, metadata !1, metadata !508, i32 486, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!508 = metadata !{i32 786443, metadata !1, metadata !501, i32 485, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!509 = metadata !{i32 483, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !504, i32 482, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!511 = metadata !{i32 487, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !507, i32 486, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!513 = metadata !{i32 491, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !162, i32 490, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!515 = metadata !{i32 492, i32 0, metadata !514, null}
!516 = metadata !{i32 493, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !1, metadata !518, i32 493, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!518 = metadata !{i32 786443, metadata !1, metadata !514, i32 492, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!519 = metadata !{i32 497, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !521, i32 497, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!521 = metadata !{i32 786443, metadata !1, metadata !514, i32 496, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!522 = metadata !{i32 494, i32 0, metadata !523, null}
!523 = metadata !{i32 786443, metadata !1, metadata !517, i32 493, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!524 = metadata !{i32 498, i32 0, metadata !525, null}
!525 = metadata !{i32 786443, metadata !1, metadata !520, i32 497, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!526 = metadata !{i32 502, i32 0, metadata !162, null}
!527 = metadata !{i32 504, i32 0, metadata !162, null}
!528 = metadata !{i32 516, i32 0, metadata !172, null}
!529 = metadata !{i32 517, i32 0, metadata !172, null}
!530 = metadata !{i32 527, i32 0, metadata !172, null}
!531 = metadata !{i32 529, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !1, metadata !172, i32 528, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!533 = metadata !{i32 531, i32 0, metadata !532, null}
!534 = metadata !{i32 533, i32 0, metadata !172, null}
!535 = metadata !{i32 534, i32 0, metadata !536, null}
!536 = metadata !{i32 786443, metadata !1, metadata !172, i32 533, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!537 = metadata !{i32 537, i32 0, metadata !536, null}
!538 = metadata !{i32 539, i32 0, metadata !172, null}
!539 = metadata !{i32 540, i32 0, metadata !172, null}
!540 = metadata !{i32 541, i32 0, metadata !172, null}
!541 = metadata !{i32 542, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !172, i32 541, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!543 = metadata !{i32 543, i32 0, metadata !542, null}
!544 = metadata !{i32 544, i32 0, metadata !545, null}
!545 = metadata !{i32 786443, metadata !1, metadata !546, i32 544, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!546 = metadata !{i32 786443, metadata !1, metadata !542, i32 543, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!547 = metadata !{i32 551, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !549, i32 551, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!549 = metadata !{i32 786443, metadata !1, metadata !542, i32 550, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!550 = metadata !{i32 545, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !545, i32 544, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!552 = metadata !{i32 546, i32 0, metadata !551, null}
!553 = metadata !{i32 547, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !551, i32 546, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!555 = metadata !{i32 552, i32 0, metadata !556, null}
!556 = metadata !{i32 786443, metadata !1, metadata !548, i32 551, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!557 = metadata !{i32 553, i32 0, metadata !556, null}
!558 = metadata !{i32 554, i32 0, metadata !559, null}
!559 = metadata !{i32 786443, metadata !1, metadata !556, i32 553, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!560 = metadata !{i32 559, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !172, i32 558, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!562 = metadata !{i32 560, i32 0, metadata !561, null}
!563 = metadata !{i32 561, i32 0, metadata !564, null}
!564 = metadata !{i32 786443, metadata !1, metadata !565, i32 561, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!565 = metadata !{i32 786443, metadata !1, metadata !561, i32 560, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!566 = metadata !{i32 568, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !568, i32 568, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!568 = metadata !{i32 786443, metadata !1, metadata !561, i32 567, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!569 = metadata !{i32 562, i32 0, metadata !570, null}
!570 = metadata !{i32 786443, metadata !1, metadata !564, i32 561, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!571 = metadata !{i32 563, i32 0, metadata !570, null}
!572 = metadata !{i32 564, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !570, i32 563, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!574 = metadata !{i32 569, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !567, i32 568, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!576 = metadata !{i32 570, i32 0, metadata !575, null}
!577 = metadata !{i32 571, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !1, metadata !575, i32 570, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!579 = metadata !{i32 576, i32 0, metadata !172, null}
!580 = metadata !{i32 588, i32 0, metadata !183, null}
!581 = metadata !{i32 589, i32 0, metadata !183, null}
!582 = metadata !{i32 599, i32 0, metadata !183, null}
!583 = metadata !{i32 601, i32 0, metadata !584, null}
!584 = metadata !{i32 786443, metadata !1, metadata !183, i32 600, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!585 = metadata !{i32 603, i32 0, metadata !584, null}
!586 = metadata !{i32 605, i32 0, metadata !183, null}
!587 = metadata !{i32 606, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !1, metadata !183, i32 605, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!589 = metadata !{i32 609, i32 0, metadata !588, null}
!590 = metadata !{i32 611, i32 0, metadata !183, null}
!591 = metadata !{i32 612, i32 0, metadata !183, null}
!592 = metadata !{i32 613, i32 0, metadata !183, null}
!593 = metadata !{i32 614, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !1, metadata !183, i32 613, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!595 = metadata !{i32 615, i32 0, metadata !594, null}
!596 = metadata !{i32 616, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !1, metadata !598, i32 616, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!598 = metadata !{i32 786443, metadata !1, metadata !594, i32 615, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!599 = metadata !{i32 620, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !601, i32 620, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!601 = metadata !{i32 786443, metadata !1, metadata !594, i32 619, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!602 = metadata !{i32 617, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !1, metadata !597, i32 616, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!604 = metadata !{i32 621, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !600, i32 620, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!606 = metadata !{i32 625, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !1, metadata !183, i32 624, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!608 = metadata !{i32 626, i32 0, metadata !607, null}
!609 = metadata !{i32 627, i32 0, metadata !610, null}
!610 = metadata !{i32 786443, metadata !1, metadata !611, i32 627, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!611 = metadata !{i32 786443, metadata !1, metadata !607, i32 626, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!612 = metadata !{i32 631, i32 0, metadata !613, null}
!613 = metadata !{i32 786443, metadata !1, metadata !614, i32 631, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!614 = metadata !{i32 786443, metadata !1, metadata !607, i32 630, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!615 = metadata !{i32 628, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !610, i32 627, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!617 = metadata !{i32 632, i32 0, metadata !618, null}
!618 = metadata !{i32 786443, metadata !1, metadata !613, i32 631, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!619 = metadata !{i32 636, i32 0, metadata !183, null}
!620 = metadata !{i32 648, i32 0, metadata !193, null}
!621 = metadata !{i32 649, i32 0, metadata !193, null}
!622 = metadata !{i32 659, i32 0, metadata !193, null}
!623 = metadata !{i32 661, i32 0, metadata !624, null}
!624 = metadata !{i32 786443, metadata !1, metadata !193, i32 660, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!625 = metadata !{i32 663, i32 0, metadata !624, null}
!626 = metadata !{i32 665, i32 0, metadata !193, null}
!627 = metadata !{i32 666, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !193, i32 665, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!629 = metadata !{i32 669, i32 0, metadata !628, null}
!630 = metadata !{i32 671, i32 0, metadata !193, null}
!631 = metadata !{i32 672, i32 0, metadata !193, null}
!632 = metadata !{i32 673, i32 0, metadata !193, null}
!633 = metadata !{i32 674, i32 0, metadata !634, null}
!634 = metadata !{i32 786443, metadata !1, metadata !193, i32 673, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!635 = metadata !{i32 675, i32 0, metadata !634, null}
!636 = metadata !{i32 676, i32 0, metadata !637, null}
!637 = metadata !{i32 786443, metadata !1, metadata !638, i32 676, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!638 = metadata !{i32 786443, metadata !1, metadata !634, i32 675, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!639 = metadata !{i32 680, i32 0, metadata !640, null}
!640 = metadata !{i32 786443, metadata !1, metadata !641, i32 680, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!641 = metadata !{i32 786443, metadata !1, metadata !634, i32 679, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!642 = metadata !{i32 677, i32 0, metadata !643, null}
!643 = metadata !{i32 786443, metadata !1, metadata !637, i32 676, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!644 = metadata !{i32 681, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !640, i32 680, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!646 = metadata !{i32 685, i32 0, metadata !647, null}
!647 = metadata !{i32 786443, metadata !1, metadata !193, i32 684, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!648 = metadata !{i32 686, i32 0, metadata !647, null}
!649 = metadata !{i32 687, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !1, metadata !651, i32 687, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!651 = metadata !{i32 786443, metadata !1, metadata !647, i32 686, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!652 = metadata !{i32 691, i32 0, metadata !653, null}
!653 = metadata !{i32 786443, metadata !1, metadata !654, i32 691, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!654 = metadata !{i32 786443, metadata !1, metadata !647, i32 690, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!655 = metadata !{i32 688, i32 0, metadata !656, null}
!656 = metadata !{i32 786443, metadata !1, metadata !650, i32 687, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!657 = metadata !{i32 692, i32 0, metadata !658, null}
!658 = metadata !{i32 786443, metadata !1, metadata !653, i32 691, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!659 = metadata !{i32 696, i32 0, metadata !193, null}
!660 = metadata !{i32 698, i32 0, metadata !193, null}
!661 = metadata !{i32 710, i32 0, metadata !203, null}
!662 = metadata !{i32 711, i32 0, metadata !203, null}
!663 = metadata !{i32 721, i32 0, metadata !203, null}
!664 = metadata !{i32 723, i32 0, metadata !665, null}
!665 = metadata !{i32 786443, metadata !1, metadata !203, i32 722, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!666 = metadata !{i32 725, i32 0, metadata !665, null}
!667 = metadata !{i32 727, i32 0, metadata !203, null}
!668 = metadata !{i32 728, i32 0, metadata !669, null}
!669 = metadata !{i32 786443, metadata !1, metadata !203, i32 727, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!670 = metadata !{i32 731, i32 0, metadata !669, null}
!671 = metadata !{i32 733, i32 0, metadata !203, null}
!672 = metadata !{i32 734, i32 0, metadata !203, null}
!673 = metadata !{i32 735, i32 0, metadata !203, null}
!674 = metadata !{i32 736, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !203, i32 735, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!676 = metadata !{i32 737, i32 0, metadata !675, null}
!677 = metadata !{i32 738, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !679, i32 738, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!679 = metadata !{i32 786443, metadata !1, metadata !675, i32 737, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!680 = metadata !{i32 745, i32 0, metadata !681, null}
!681 = metadata !{i32 786443, metadata !1, metadata !682, i32 745, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!682 = metadata !{i32 786443, metadata !1, metadata !675, i32 744, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!683 = metadata !{i32 739, i32 0, metadata !684, null}
!684 = metadata !{i32 786443, metadata !1, metadata !678, i32 738, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!685 = metadata !{i32 740, i32 0, metadata !684, null}
!686 = metadata !{i32 741, i32 0, metadata !687, null}
!687 = metadata !{i32 786443, metadata !1, metadata !684, i32 740, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!688 = metadata !{i32 746, i32 0, metadata !689, null}
!689 = metadata !{i32 786443, metadata !1, metadata !681, i32 745, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!690 = metadata !{i32 747, i32 0, metadata !689, null}
!691 = metadata !{i32 748, i32 0, metadata !692, null}
!692 = metadata !{i32 786443, metadata !1, metadata !689, i32 747, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!693 = metadata !{i32 753, i32 0, metadata !694, null}
!694 = metadata !{i32 786443, metadata !1, metadata !203, i32 752, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!695 = metadata !{i32 754, i32 0, metadata !694, null}
!696 = metadata !{i32 755, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !698, i32 755, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!698 = metadata !{i32 786443, metadata !1, metadata !694, i32 754, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!699 = metadata !{i32 762, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !1, metadata !701, i32 762, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!701 = metadata !{i32 786443, metadata !1, metadata !694, i32 761, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!702 = metadata !{i32 756, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !697, i32 755, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!704 = metadata !{i32 757, i32 0, metadata !703, null}
!705 = metadata !{i32 758, i32 0, metadata !706, null}
!706 = metadata !{i32 786443, metadata !1, metadata !703, i32 757, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!707 = metadata !{i32 763, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !700, i32 762, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!709 = metadata !{i32 764, i32 0, metadata !708, null}
!710 = metadata !{i32 765, i32 0, metadata !711, null}
!711 = metadata !{i32 786443, metadata !1, metadata !708, i32 764, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_norms.c]
!712 = metadata !{i32 770, i32 0, metadata !203, null}
