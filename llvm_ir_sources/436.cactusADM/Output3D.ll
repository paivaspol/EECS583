; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.IOASCIIGH = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i32*, %struct.PNamedData*, %struct.PNamedData*, %struct.PNamedData*, i32***, i32** }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str1 = private unnamed_addr constant [66 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c\00", align 1
@.str2 = private unnamed_addr constant [85 x i8] c"Already done IOASCII 3D output for '%s' in current iteration (probably via triggers)\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"No IOASCII 3D output for '%s' (dim != 3)\00", align 1
@.str4 = private unnamed_addr constant [61 x i8] c"No IOASCII 3D output for '%s' (not a grid function or array)\00", align 1
@CheckSteerableParameters.out3D_vars_lastset = internal unnamed_addr global i32 -1, align 4
@ioasciipriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.0
@.str5 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str7 = private unnamed_addr constant [39 x i8] c"IOASCII_3D: Output every %d iterations\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"out3D_vars\00", align 1
@.str9 = private unnamed_addr constant [36 x i8] c"IOASCII_3D: Output requested for %s\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str11 = private unnamed_addr constant [46 x i8] c"Optional string '%s' in variable name ignored\00", align 1
@.str12 = private unnamed_addr constant [55 x i8] c"$Id: Output3D.c,v 1.2 2001/12/28 21:22:44 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_IOASCII_Output3D_c() #0 {
entry:
  ret i8* getelementptr inbounds ([55 x i8]* @.str12, i64 0, i64 0), !dbg !226
}

; Function Attrs: nounwind optsize uwtable
define i32 @IOASCII_Output3DGH(%struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !54), !dbg !227
  %call = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !228
  %0 = bitcast i8* %call to %struct.IOASCIIGH*, !dbg !228
  tail call void @llvm.dbg.value(metadata !{%struct.IOASCIIGH* %0}, i64 0, metadata !57), !dbg !228
  tail call fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* %0) #7, !dbg !229
  %out3D_every = getelementptr inbounds i8* %call, i64 8, !dbg !230
  %1 = bitcast i8* %out3D_every to i32*, !dbg !230
  %2 = load i32* %1, align 4, !dbg !230, !tbaa !231
  %cmp = icmp slt i32 %2, 1, !dbg !230
  br i1 %cmp, label %return, label %for.cond.preheader, !dbg !230

for.cond.preheader:                               ; preds = %entry
  %call224 = tail call i32 @CCTK_NumVars() #6, !dbg !234
  %cmp325 = icmp sgt i32 %call224, 0, !dbg !234
  br i1 %cmp325, label %for.body.lr.ph, label %return, !dbg !234

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cctk_iteration = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !236
  %out3D_last = getelementptr inbounds i8* %call, i64 80, !dbg !236
  %3 = bitcast i8* %out3D_last to i32**, !dbg !236
  br label %for.body, !dbg !234

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %retval1.026 = phi i32 [ 0, %for.body.lr.ph ], [ %retval1.1, %for.inc ]
  %4 = trunc i64 %indvars.iv to i32, !dbg !239
  %call4 = tail call i32 @IOASCII_TimeFor3D(%struct.cGH* %GH, i32 %4) #7, !dbg !239
  %tobool = icmp eq i32 %call4, 0, !dbg !239
  br i1 %tobool, label %for.inc, label %if.end6, !dbg !239

if.end6:                                          ; preds = %for.body
  %call7 = tail call i8* @CCTK_VarName(i32 %4) #6, !dbg !240
  tail call void @llvm.dbg.value(metadata !{i8* %call7}, i64 0, metadata !93), !dbg !240
  %call8 = tail call i32 @IOASCII_Write3D(%struct.cGH* %GH, i32 %4, i8* %call7) #6, !dbg !241
  %cmp9 = icmp eq i32 %call8, 0, !dbg !241
  br i1 %cmp9, label %if.then10, label %for.inc, !dbg !241

if.then10:                                        ; preds = %if.end6
  %5 = load i32* %cctk_iteration, align 4, !dbg !236, !tbaa !231
  %6 = load i32** %3, align 8, !dbg !236, !tbaa !242
  %arrayidx = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !236
  store i32 %5, i32* %arrayidx, align 4, !dbg !236, !tbaa !231
  %inc = add nsw i32 %retval1.026, 1, !dbg !243
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !56), !dbg !243
  br label %for.inc, !dbg !244

for.inc:                                          ; preds = %for.body, %if.end6, %if.then10
  %retval1.1 = phi i32 [ %inc, %if.then10 ], [ %retval1.026, %if.end6 ], [ %retval1.026, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !234
  %call2 = tail call i32 @CCTK_NumVars() #6, !dbg !234
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !234
  %cmp3 = icmp slt i32 %7, %call2, !dbg !234
  br i1 %cmp3, label %for.body, label %return, !dbg !234

return:                                           ; preds = %for.cond.preheader, %for.inc, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.cond.preheader ], [ %retval1.1, %for.inc ]
  ret i32 %retval.0, !dbg !245
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* nocapture %myGH) #1 {
entry:
  %msg = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{%struct.IOASCIIGH* %myGH}, i64 0, metadata !144), !dbg !246
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !150), !dbg !247
  %0 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 14), align 8, !dbg !248, !tbaa !242
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !166), !dbg !248
  %1 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 35), align 4, !dbg !248, !tbaa !231
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !188), !dbg !248
  %2 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 37), align 8, !dbg !248, !tbaa !231
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !190), !dbg !248
  %3 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 12), align 8, !dbg !248, !tbaa !242
  call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !209), !dbg !248
  %out3D_every1 = getelementptr inbounds %struct.IOASCIIGH* %myGH, i64 0, i32 2, !dbg !249
  %4 = load i32* %out3D_every1, align 4, !dbg !249, !tbaa !231
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !146), !dbg !249
  %cmp = icmp sgt i32 %2, 0, !dbg !250
  %cond = select i1 %cmp, i32 %2, i32 -1, !dbg !250
  %cmp3 = icmp sgt i32 %1, 0, !dbg !251
  %.cond = select i1 %cmp3, i32 %1, i32 %cond, !dbg !251
  store i32 %.cond, i32* %out3D_every1, align 4, !dbg !250, !tbaa !231
  %cmp6 = icmp eq i32 %.cond, %4, !dbg !252
  br i1 %cmp6, label %if.end14, label %if.then7, !dbg !252

if.then7:                                         ; preds = %entry
  %call = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !253
  %tobool = icmp eq i32 %call, 0, !dbg !253
  br i1 %tobool, label %lor.lhs.false, label %if.then10, !dbg !253

lor.lhs.false:                                    ; preds = %if.then7
  %call8 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !255
  %tobool9 = icmp eq i32 %call8, 0, !dbg !255
  br i1 %tobool9, label %if.end14, label %if.then10, !dbg !255

if.then10:                                        ; preds = %lor.lhs.false, %if.then7
  %5 = load i32* %out3D_every1, align 4, !dbg !256, !tbaa !231
  %call12 = call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str7, i64 0, i64 0), i32 %5) #6, !dbg !256
  br label %if.end14, !dbg !258

if.end14:                                         ; preds = %lor.lhs.false, %entry, %if.then10
  %call15 = call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !259
  call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !147), !dbg !259
  %6 = load i32* @CheckSteerableParameters.out3D_vars_lastset, align 4, !dbg !260, !tbaa !231
  %cmp16 = icmp eq i32 %call15, %6, !dbg !260
  br i1 %cmp16, label %if.end44, label %if.then17, !dbg !260

if.then17:                                        ; preds = %if.end14
  %call18 = call i32 @CCTK_NumVars() #6, !dbg !261
  call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !148), !dbg !261
  %do_out3D = getelementptr inbounds %struct.IOASCIIGH* %myGH, i64 0, i32 5, !dbg !263
  %7 = load i8** %do_out3D, align 8, !dbg !263, !tbaa !242
  %conv = sext i32 %call18 to i64, !dbg !263
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %conv, i32 1, i1 false), !dbg !263
  %8 = load i8** %do_out3D, align 8, !dbg !264, !tbaa !242
  %call20 = call i32 @CCTK_TraverseString(i8* %0, void (i32, i8*, i8*)* @SetOutputFlag, i8* %8, i32 3) #6, !dbg !264
  %call21 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !265
  %tobool22 = icmp eq i32 %call21, 0, !dbg !265
  br i1 %tobool22, label %lor.lhs.false23, label %if.then26, !dbg !265

lor.lhs.false23:                                  ; preds = %if.then17
  %call24 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !266
  %tobool25 = icmp eq i32 %call24, 0, !dbg !266
  br i1 %tobool25, label %if.end43, label %if.then26, !dbg !266

if.then26:                                        ; preds = %lor.lhs.false23, %if.then17
  call void @llvm.dbg.value(metadata !267, i64 0, metadata !150), !dbg !268
  store i8* null, i8** %msg, align 8, !dbg !268, !tbaa !242
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !145), !dbg !270
  %cmp2764 = icmp sgt i32 %call18, 0, !dbg !270
  br i1 %cmp2764, label %for.body, label %if.end43, !dbg !270

for.body:                                         ; preds = %for.inc, %if.then26
  %indvars.iv = phi i64 [ 0, %if.then26 ], [ %indvars.iv.next, %for.inc ]
  %9 = load i8** %do_out3D, align 8, !dbg !272, !tbaa !242
  %arrayidx = getelementptr inbounds i8* %9, i64 %indvars.iv, !dbg !272
  %10 = load i8* %arrayidx, align 1, !dbg !272, !tbaa !232
  %tobool30 = icmp eq i8 %10, 0, !dbg !272
  br i1 %tobool30, label %for.inc, label %if.then31, !dbg !272

if.then31:                                        ; preds = %for.body
  %11 = trunc i64 %indvars.iv to i32, !dbg !274
  %call32 = call i8* @CCTK_FullName(i32 %11) #6, !dbg !274
  call void @llvm.dbg.value(metadata !{i8* %call32}, i64 0, metadata !149), !dbg !274
  call void @llvm.dbg.value(metadata !{i8** %msg}, i64 0, metadata !150), !dbg !276
  %12 = load i8** %msg, align 8, !dbg !276, !tbaa !242
  %tobool33 = icmp eq i8* %12, null, !dbg !276
  br i1 %tobool33, label %if.then34, label %if.else, !dbg !276

if.then34:                                        ; preds = %if.then31
  %call35 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg, i8* getelementptr inbounds ([36 x i8]* @.str9, i64 0, i64 0), i8* %call32) #6, !dbg !277
  br label %if.end37, !dbg !279

if.else:                                          ; preds = %if.then31
  %call36 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg, i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), i8* %12, i8* %call32) #6, !dbg !280
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then34
  call void @free(i8* %call32) #6, !dbg !282
  br label %for.inc, !dbg !283

for.inc:                                          ; preds = %for.body, %if.end37
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !270
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !270
  %exitcond = icmp eq i32 %lftr.wideiv, %call18, !dbg !270
  br i1 %exitcond, label %for.end, label %for.body, !dbg !270

for.end:                                          ; preds = %for.inc
  call void @llvm.dbg.value(metadata !{i8** %msg}, i64 0, metadata !150), !dbg !284
  %.pre = load i8** %msg, align 8, !dbg !284, !tbaa !242
  call void @llvm.dbg.value(metadata !{i8** %msg}, i64 0, metadata !150), !dbg !284
  %tobool39 = icmp eq i8* %.pre, null, !dbg !284
  br i1 %tobool39, label %if.end43, label %if.then40, !dbg !284

if.then40:                                        ; preds = %for.end
  %call41 = call i32 @CCTK_Info(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %.pre) #6, !dbg !285
  call void @llvm.dbg.value(metadata !{i8** %msg}, i64 0, metadata !150), !dbg !287
  %13 = load i8** %msg, align 8, !dbg !287, !tbaa !242
  call void @free(i8* %13) #6, !dbg !287
  br label %if.end43, !dbg !288

if.end43:                                         ; preds = %if.then26, %for.end, %lor.lhs.false23, %if.then40
  store i32 %call15, i32* @CheckSteerableParameters.out3D_vars_lastset, align 4, !dbg !289, !tbaa !231
  br label %if.end44, !dbg !290

if.end44:                                         ; preds = %if.end14, %if.end43
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  call void @llvm.dbg.value(metadata !291, i64 0, metadata !212), !dbg !292
  ret void, !dbg !292
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #3

; Function Attrs: nounwind optsize uwtable
define i32 @IOASCII_TimeFor3D(%struct.cGH* %GH, i32 %vindex) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !107), !dbg !293
  tail call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !108), !dbg !293
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !109), !dbg !294
  %call = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !295
  %0 = bitcast i8* %call to %struct.IOASCIIGH*, !dbg !295
  tail call void @llvm.dbg.value(metadata !{%struct.IOASCIIGH* %0}, i64 0, metadata !110), !dbg !295
  tail call fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* %0) #7, !dbg !296
  %out3D_every = getelementptr inbounds i8* %call, i64 8, !dbg !297
  %1 = bitcast i8* %out3D_every to i32*, !dbg !297
  %2 = load i32* %1, align 4, !dbg !297, !tbaa !231
  %cmp = icmp slt i32 %2, 1, !dbg !297
  br i1 %cmp, label %return, label %if.end, !dbg !297

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %vindex to i64, !dbg !298
  %do_out3D = getelementptr inbounds i8* %call, i64 32, !dbg !298
  %3 = bitcast i8* %do_out3D to i8**, !dbg !298
  %4 = load i8** %3, align 8, !dbg !298, !tbaa !242
  %arrayidx = getelementptr inbounds i8* %4, i64 %idxprom, !dbg !298
  %5 = load i8* %arrayidx, align 1, !dbg !298, !tbaa !232
  %tobool = icmp eq i8 %5, 0, !dbg !298
  br i1 %tobool, label %return, label %land.lhs.true, !dbg !298

land.lhs.true:                                    ; preds = %if.end
  %cctk_iteration = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !298
  %6 = load i32* %cctk_iteration, align 4, !dbg !298, !tbaa !231
  %rem = srem i32 %6, %2, !dbg !298
  %cmp2 = icmp eq i32 %rem, 0, !dbg !298
  br i1 %cmp2, label %if.then4, label %return, !dbg !298

if.then4:                                         ; preds = %land.lhs.true
  %out3D_last = getelementptr inbounds i8* %call, i64 80, !dbg !299
  %7 = bitcast i8* %out3D_last to i32**, !dbg !299
  %8 = load i32** %7, align 8, !dbg !299, !tbaa !242
  %arrayidx6 = getelementptr inbounds i32* %8, i64 %idxprom, !dbg !299
  %9 = load i32* %arrayidx6, align 4, !dbg !299, !tbaa !231
  %cmp8 = icmp eq i32 %9, %6, !dbg !299
  br i1 %cmp8, label %if.then10, label %return, !dbg !299

if.then10:                                        ; preds = %if.then4
  %call11 = tail call i8* @CCTK_FullName(i32 %vindex) #6, !dbg !301
  tail call void @llvm.dbg.value(metadata !{i8* %call11}, i64 0, metadata !111), !dbg !301
  %call12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 224, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str2, i64 0, i64 0), i8* %call11) #6, !dbg !303
  tail call void @free(i8* %call11) #6, !dbg !304
  br label %return, !dbg !305

return:                                           ; preds = %land.lhs.true, %if.then10, %if.end, %if.then4, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then10 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 1, %if.then4 ]
  ret i32 %retval.0, !dbg !306
}

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #3

; Function Attrs: optsize
declare i32 @IOASCII_Write3D(%struct.cGH*, i32, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IOASCII_Output3DVarAs(%struct.cGH* %GH, i8* %fullname, i8* %alias) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !98), !dbg !307
  tail call void @llvm.dbg.value(metadata !{i8* %fullname}, i64 0, metadata !99), !dbg !307
  tail call void @llvm.dbg.value(metadata !{i8* %alias}, i64 0, metadata !100), !dbg !307
  %call = tail call i32 @CCTK_VarIndex(i8* %fullname) #6, !dbg !308
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !101), !dbg !308
  tail call void @llvm.dbg.value(metadata !309, i64 0, metadata !102), !dbg !310
  %call2 = tail call fastcc i32 @CheckOutputVar(i32 %call) #7, !dbg !311
  %cmp = icmp eq i32 %call2, 0, !dbg !311
  br i1 %cmp, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @IOASCII_Write3D(%struct.cGH* %GH, i32 %call, i8* %alias) #6, !dbg !312
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !102), !dbg !312
  br label %if.end, !dbg !314

if.end:                                           ; preds = %if.then, %entry
  %retval1.0 = phi i32 [ %call3, %if.then ], [ -1, %entry ]
  ret i32 %retval1.0, !dbg !315
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CheckOutputVar(i32 %vindex) #1 {
entry:
  %groupinfo = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !123), !dbg !316
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %groupinfo}, metadata !125), !dbg !317
  %call = call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #6, !dbg !318
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !124), !dbg !318
  %call1 = call i32 @CCTK_GroupData(i32 %call, %struct.cGroup* %groupinfo) #6, !dbg !319
  call void @llvm.dbg.value(metadata !267, i64 0, metadata !139), !dbg !320
  %dim = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 4, !dbg !321
  %0 = load i32* %dim, align 4, !dbg !321, !tbaa !231
  %cmp = icmp eq i32 %0, 3, !dbg !321
  br i1 %cmp, label %if.end6, label %if.then7, !dbg !321

if.end6:                                          ; preds = %entry
  %grouptype = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 0, !dbg !322
  %1 = load i32* %grouptype, align 4, !dbg !322, !tbaa !231
  %.off = add i32 %1, -2, !dbg !322
  %switch = icmp ult i32 %.off, 2, !dbg !322
  call void @llvm.dbg.value(metadata !323, i64 0, metadata !139), !dbg !324
  %. = select i1 %switch, i8* null, i8* getelementptr inbounds ([61 x i8]* @.str4, i64 0, i64 0), !dbg !322
  br i1 %switch, label %if.end10, label %if.then7, !dbg !326

if.then7:                                         ; preds = %if.end6, %entry
  %errormsg.017 = phi i8* [ %., %if.end6 ], [ getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), %entry ]
  %call8 = call i8* @CCTK_FullName(i32 %vindex) #6, !dbg !327
  call void @llvm.dbg.value(metadata !{i8* %call8}, i64 0, metadata !138), !dbg !327
  %call9 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 398, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %errormsg.017, i8* %call8) #6, !dbg !329
  call void @free(i8* %call8) #6, !dbg !330
  br label %if.end10, !dbg !331

if.end10:                                         ; preds = %if.end6, %if.then7
  %tobool18 = phi i32 [ 1, %if.then7 ], [ 0, %if.end6 ]
  ret i32 %tobool18, !dbg !332
}

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @IOASCII_TriggerOutput3D(%struct.cGH* %GH, i32 %vindex) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !114), !dbg !333
  tail call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !115), !dbg !333
  %call = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !334
  %call2 = tail call i8* @CCTK_VarName(i32 %vindex) #6, !dbg !335
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !117), !dbg !335
  %call3 = tail call i32 @IOASCII_Write3D(%struct.cGH* %GH, i32 %vindex, i8* %call2) #6, !dbg !336
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !116), !dbg !336
  %cmp = icmp eq i32 %call3, 0, !dbg !337
  br i1 %cmp, label %if.then, label %if.end, !dbg !337

if.then:                                          ; preds = %entry
  %cctk_iteration = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !338
  %0 = load i32* %cctk_iteration, align 4, !dbg !338, !tbaa !231
  %idxprom = sext i32 %vindex to i64, !dbg !338
  %out3D_last = getelementptr inbounds i8* %call, i64 80, !dbg !338
  %1 = bitcast i8* %out3D_last to i32**, !dbg !338
  %2 = load i32** %1, align 8, !dbg !338, !tbaa !242
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !338
  store i32 %0, i32* %arrayidx, align 4, !dbg !338, !tbaa !231
  br label %if.end, !dbg !340

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call3, !dbg !341
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #3

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_ParameterQueryTimesSet(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: optsize
declare i32 @CCTK_TraverseString(i8*, void (i32, i8*, i8*)*, i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define internal void @SetOutputFlag(i32 %vindex, i8* %optstring, i8* nocapture %arg) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !219), !dbg !342
  tail call void @llvm.dbg.value(metadata !{i8* %optstring}, i64 0, metadata !220), !dbg !342
  tail call void @llvm.dbg.value(metadata !{i8* %arg}, i64 0, metadata !221), !dbg !342
  tail call void @llvm.dbg.value(metadata !{i8* %arg}, i64 0, metadata !222), !dbg !343
  %call = tail call fastcc i32 @CheckOutputVar(i32 %vindex) #7, !dbg !344
  %cmp = icmp eq i32 %call, 0, !dbg !344
  br i1 %cmp, label %if.then, label %if.end, !dbg !344

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %vindex to i64, !dbg !345
  %arrayidx = getelementptr inbounds i8* %arg, i64 %idxprom, !dbg !345
  store i8 1, i8* %arrayidx, align 1, !dbg !345, !tbaa !232
  br label %if.end, !dbg !347

if.end:                                           ; preds = %if.then, %entry
  %tobool = icmp eq i8* %optstring, null, !dbg !348
  br i1 %tobool, label %if.end3, label %if.then1, !dbg !348

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 421, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str11, i64 0, i64 0), i8* %optstring) #6, !dbg !349
  br label %if.end3, !dbg !351

if.end3:                                          ; preds = %if.end, %if.then1
  ret void, !dbg !352
}

; Function Attrs: optsize
declare i32 @Util_asprintf(i8**, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !223, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !94, metadata !103, metadata !112, metadata !119, metadata !140, metadata !215}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_IOASCII_Output3D_c", metadata !"CCTKi_version_CactusBase_IOASCII_Output3D_c", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_IOASCII_Output3D_c, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [CCTKi_version_CactusBase_IOASCII_Output3D_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IOASCII_Output3DGH", metadata !"IOASCII_Output3DGH", metadata !"", i32 61, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @IOASCII_Output3DGH, null, null, metadata !53, i32 62} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 62] [IOASCII_Output3DGH]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !33, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !45, metadata !46}
!21 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!23 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!27 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!28 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!29 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!30 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!31 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!32 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!33 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!35 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!36 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!37 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!38 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!39 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!40 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!41 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !42} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !43} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!46 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !47} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!48 = metadata !{i32 786454, metadata !19, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!52 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57, metadata !93}
!54 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777277, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 61]
!55 = metadata !{i32 786688, metadata !11, metadata !"vindex", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vindex] [line 63]
!56 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 63]
!57 = metadata !{i32 786688, metadata !11, metadata !"myGH", metadata !5, i32 64, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myGH] [line 64]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from asciiioGH]
!59 = metadata !{i32 786454, metadata !1, null, metadata !"asciiioGH", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [asciiioGH] [line 55, size 0, align 0, offset 0] [from IOASCIIGH]
!60 = metadata !{i32 786451, metadata !61, null, metadata !"IOASCIIGH", i32 20, i64 1024, i64 64, i32 0, i32 0, null, metadata !62, i32 0, null, null} ; [ DW_TAG_structure_type ] [IOASCIIGH] [line 20, size 1024, align 64, offset 0] [from ]
!61 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/../include/ioASCIIGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!62 = metadata !{metadata !63, metadata !64, metadata !65, metadata !66, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !87, metadata !88, metadata !89, metadata !92}
!63 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"out1D_every", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [out1D_every] [line 23, size 32, align 32, offset 0] [from int]
!64 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"out2D_every", i32 24, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [out2D_every] [line 24, size 32, align 32, offset 32] [from int]
!65 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"out3D_every", i32 25, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [out3D_every] [line 25, size 32, align 32, offset 64] [from int]
!66 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"do_out1D", i32 28, i64 64, i64 64, i64 128, i32 0, metadata !67} ; [ DW_TAG_member ] [do_out1D] [line 28, size 64, align 64, offset 128] [from ]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!68 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"do_out2D", i32 29, i64 64, i64 64, i64 192, i32 0, metadata !67} ; [ DW_TAG_member ] [do_out2D] [line 29, size 64, align 64, offset 192] [from ]
!69 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"do_out3D", i32 30, i64 64, i64 64, i64 256, i32 0, metadata !67} ; [ DW_TAG_member ] [do_out3D] [line 30, size 64, align 64, offset 256] [from ]
!70 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"outdir1D", i32 33, i64 64, i64 64, i64 320, i32 0, metadata !67} ; [ DW_TAG_member ] [outdir1D] [line 33, size 64, align 64, offset 320] [from ]
!71 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"outdir2D", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !67} ; [ DW_TAG_member ] [outdir2D] [line 34, size 64, align 64, offset 384] [from ]
!72 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"outdir3D", i32 35, i64 64, i64 64, i64 448, i32 0, metadata !67} ; [ DW_TAG_member ] [outdir3D] [line 35, size 64, align 64, offset 448] [from ]
!73 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"out1D_last", i32 38, i64 64, i64 64, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [out1D_last] [line 38, size 64, align 64, offset 512] [from ]
!74 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"out2D_last", i32 39, i64 64, i64 64, i64 576, i32 0, metadata !24} ; [ DW_TAG_member ] [out2D_last] [line 39, size 64, align 64, offset 576] [from ]
!75 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"out3D_last", i32 40, i64 64, i64 64, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [out3D_last] [line 40, size 64, align 64, offset 640] [from ]
!76 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"filenameList1D", i32 43, i64 64, i64 64, i64 704, i32 0, metadata !77} ; [ DW_TAG_member ] [filenameList1D] [line 43, size 64, align 64, offset 704] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pNamedData]
!78 = metadata !{i32 786454, metadata !61, null, metadata !"pNamedData", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [pNamedData] [line 26, size 0, align 0, offset 0] [from PNamedData]
!79 = metadata !{i32 786451, metadata !80, null, metadata !"PNamedData", i32 18, i64 256, i64 64, i32 0, i32 0, null, metadata !81, i32 0, null, null} ; [ DW_TAG_structure_type ] [PNamedData] [line 18, size 256, align 64, offset 0] [from ]
!80 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/../include/StoreNamedData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!81 = metadata !{metadata !82, metadata !84, metadata !85, metadata !86}
!82 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"last", i32 20, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_member ] [last] [line 20, size 64, align 64, offset 0] [from ]
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PNamedData]
!84 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"next", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !83} ; [ DW_TAG_member ] [next] [line 21, size 64, align 64, offset 64] [from ]
!85 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"name", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !67} ; [ DW_TAG_member ] [name] [line 23, size 64, align 64, offset 128] [from ]
!86 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"data", i32 25, i64 64, i64 64, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 25, size 64, align 64, offset 192] [from ]
!87 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"fileList_2D", i32 44, i64 64, i64 64, i64 768, i32 0, metadata !77} ; [ DW_TAG_member ] [fileList_2D] [line 44, size 64, align 64, offset 768] [from ]
!88 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"fileList_3D", i32 45, i64 64, i64 64, i64 832, i32 0, metadata !77} ; [ DW_TAG_member ] [fileList_3D] [line 45, size 64, align 64, offset 832] [from ]
!89 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"spxyz", i32 49, i64 64, i64 64, i64 896, i32 0, metadata !90} ; [ DW_TAG_member ] [spxyz] [line 49, size 64, align 64, offset 896] [from ]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!92 = metadata !{i32 786445, metadata !61, metadata !60, metadata !"sp2xyz", i32 53, i64 64, i64 64, i64 960, i32 0, metadata !91} ; [ DW_TAG_member ] [sp2xyz] [line 53, size 64, align 64, offset 960] [from ]
!93 = metadata !{i32 786688, metadata !11, metadata !"name", metadata !5, i32 65, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 65]
!94 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IOASCII_Output3DVarAs", metadata !"IOASCII_Output3DVarAs", metadata !"", i32 146, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*, i8*)* @IOASCII_Output3DVarAs, null, null, metadata !97, i32 147} ; [ DW_TAG_subprogram ] [line 146] [def] [scope 147] [IOASCII_Output3DVarAs]
!95 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{metadata !14, metadata !15, metadata !8, metadata !8}
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101, metadata !102}
!98 = metadata !{i32 786689, metadata !94, metadata !"GH", metadata !5, i32 16777362, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 146]
!99 = metadata !{i32 786689, metadata !94, metadata !"fullname", metadata !5, i32 33554578, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fullname] [line 146]
!100 = metadata !{i32 786689, metadata !94, metadata !"alias", metadata !5, i32 50331794, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alias] [line 146]
!101 = metadata !{i32 786688, metadata !94, metadata !"vindex", metadata !5, i32 148, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vindex] [line 148]
!102 = metadata !{i32 786688, metadata !94, metadata !"retval", metadata !5, i32 148, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 148]
!103 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IOASCII_TimeFor3D", metadata !"IOASCII_TimeFor3D", metadata !"", i32 196, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @IOASCII_TimeFor3D, null, null, metadata !106, i32 197} ; [ DW_TAG_subprogram ] [line 196] [def] [scope 197] [IOASCII_TimeFor3D]
!104 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{metadata !14, metadata !15, metadata !14}
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110, metadata !111}
!107 = metadata !{i32 786689, metadata !103, metadata !"GH", metadata !5, i32 16777412, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 196]
!108 = metadata !{i32 786689, metadata !103, metadata !"vindex", metadata !5, i32 33554628, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 196]
!109 = metadata !{i32 786688, metadata !103, metadata !"return_type", metadata !5, i32 198, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_type] [line 198]
!110 = metadata !{i32 786688, metadata !103, metadata !"myGH", metadata !5, i32 199, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myGH] [line 199]
!111 = metadata !{i32 786688, metadata !103, metadata !"fullname", metadata !5, i32 200, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fullname] [line 200]
!112 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IOASCII_TriggerOutput3D", metadata !"IOASCII_TriggerOutput3D", metadata !"", i32 265, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @IOASCII_TriggerOutput3D, null, null, metadata !113, i32 266} ; [ DW_TAG_subprogram ] [line 265] [def] [scope 266] [IOASCII_TriggerOutput3D]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117, metadata !118}
!114 = metadata !{i32 786689, metadata !112, metadata !"GH", metadata !5, i32 16777481, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 265]
!115 = metadata !{i32 786689, metadata !112, metadata !"vindex", metadata !5, i32 33554697, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 265]
!116 = metadata !{i32 786688, metadata !112, metadata !"retval", metadata !5, i32 267, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 267]
!117 = metadata !{i32 786688, metadata !112, metadata !"var", metadata !5, i32 268, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 268]
!118 = metadata !{i32 786688, metadata !112, metadata !"myGH", metadata !5, i32 269, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myGH] [line 269]
!119 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CheckOutputVar", metadata !"CheckOutputVar", metadata !"", i32 372, metadata !120, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CheckOutputVar, null, null, metadata !122, i32 373} ; [ DW_TAG_subprogram ] [line 372] [local] [def] [scope 373] [CheckOutputVar]
!120 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!121 = metadata !{metadata !14, metadata !14}
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !138, metadata !139}
!123 = metadata !{i32 786689, metadata !119, metadata !"vindex", metadata !5, i32 16777588, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 372]
!124 = metadata !{i32 786688, metadata !119, metadata !"groupindex", metadata !5, i32 374, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupindex] [line 374]
!125 = metadata !{i32 786688, metadata !119, metadata !"groupinfo", metadata !5, i32 375, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupinfo] [line 375]
!126 = metadata !{i32 786454, metadata !1, null, metadata !"cGroup", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ] [cGroup] [line 24, size 0, align 0, offset 0] [from ]
!127 = metadata !{i32 786451, metadata !128, null, metadata !"", i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !129, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 256, align 32, offset 0] [from ]
!128 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/../include/cctk_Groups.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137}
!130 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"grouptype", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [grouptype] [line 16, size 32, align 32, offset 0] [from int]
!131 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"vartype", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [vartype] [line 17, size 32, align 32, offset 32] [from int]
!132 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"disttype", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [disttype] [line 18, size 32, align 32, offset 64] [from int]
!133 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"stagtype", i32 19, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [stagtype] [line 19, size 32, align 32, offset 96] [from int]
!134 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"dim", i32 20, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 20, size 32, align 32, offset 128] [from int]
!135 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"numvars", i32 21, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [numvars] [line 21, size 32, align 32, offset 160] [from int]
!136 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"numtimelevels", i32 22, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [numtimelevels] [line 22, size 32, align 32, offset 192] [from int]
!137 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"vectorgroup", i32 23, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [vectorgroup] [line 23, size 32, align 32, offset 224] [from int]
!138 = metadata !{i32 786688, metadata !119, metadata !"fullname", metadata !5, i32 376, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fullname] [line 376]
!139 = metadata !{i32 786688, metadata !119, metadata !"errormsg", metadata !5, i32 377, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errormsg] [line 377]
!140 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CheckSteerableParameters", metadata !"CheckSteerableParameters", metadata !"", i32 298, metadata !141, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.IOASCIIGH*)* @CheckSteerableParameters, null, null, metadata !143, i32 299} ; [ DW_TAG_subprogram ] [line 298] [local] [def] [scope 299] [CheckSteerableParameters]
!141 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!142 = metadata !{null, metadata !58}
!143 = metadata !{metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212}
!144 = metadata !{i32 786689, metadata !140, metadata !"myGH", metadata !5, i32 16777514, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [myGH] [line 298]
!145 = metadata !{i32 786688, metadata !140, metadata !"i", metadata !5, i32 300, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 300]
!146 = metadata !{i32 786688, metadata !140, metadata !"out_old", metadata !5, i32 300, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_old] [line 300]
!147 = metadata !{i32 786688, metadata !140, metadata !"times_set", metadata !5, i32 300, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [times_set] [line 300]
!148 = metadata !{i32 786688, metadata !140, metadata !"num_vars", metadata !5, i32 300, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_vars] [line 300]
!149 = metadata !{i32 786688, metadata !140, metadata !"fullname", metadata !5, i32 301, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fullname] [line 301]
!150 = metadata !{i32 786688, metadata !140, metadata !"msg", metadata !5, i32 301, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 301]
!151 = metadata !{i32 786688, metadata !140, metadata !"out1D_xline_y", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_xline_y] [line 303]
!152 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!153 = metadata !{i32 786688, metadata !140, metadata !"out1D_xline_z", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_xline_z] [line 303]
!154 = metadata !{i32 786688, metadata !140, metadata !"out1D_yline_x", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_yline_x] [line 303]
!155 = metadata !{i32 786688, metadata !140, metadata !"out1D_yline_z", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_yline_z] [line 303]
!156 = metadata !{i32 786688, metadata !140, metadata !"out1D_zline_x", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_zline_x] [line 303]
!157 = metadata !{i32 786688, metadata !140, metadata !"out1D_zline_y", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_zline_y] [line 303]
!158 = metadata !{i32 786688, metadata !140, metadata !"out2D_xyplane_z", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_xyplane_z] [line 303]
!159 = metadata !{i32 786688, metadata !140, metadata !"out2D_xzplane_y", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_xzplane_y] [line 303]
!160 = metadata !{i32 786688, metadata !140, metadata !"out2D_yzplane_x", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_yzplane_x] [line 303]
!161 = metadata !{i32 786688, metadata !140, metadata !"out1D_style", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_style] [line 303]
!162 = metadata !{i32 786688, metadata !140, metadata !"out1D_vars", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_vars] [line 303]
!163 = metadata !{i32 786688, metadata !140, metadata !"out2D_style", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_style] [line 303]
!164 = metadata !{i32 786688, metadata !140, metadata !"out2D_vars", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_vars] [line 303]
!165 = metadata !{i32 786688, metadata !140, metadata !"out3D_style", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_style] [line 303]
!166 = metadata !{i32 786688, metadata !140, metadata !"out3D_vars", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_vars] [line 303]
!167 = metadata !{i32 786688, metadata !140, metadata !"out_format", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_format] [line 303]
!168 = metadata !{i32 786688, metadata !140, metadata !"out_style", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_style] [line 303]
!169 = metadata !{i32 786688, metadata !140, metadata !"outdir1D", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir1D] [line 303]
!170 = metadata !{i32 786688, metadata !140, metadata !"outdir2D", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir2D] [line 303]
!171 = metadata !{i32 786688, metadata !140, metadata !"outdir3D", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir3D] [line 303]
!172 = metadata !{i32 786688, metadata !140, metadata !"out1D_d", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_d] [line 303]
!173 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!174 = metadata !{i32 786688, metadata !140, metadata !"out1D_every", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_every] [line 303]
!175 = metadata !{i32 786688, metadata !140, metadata !"out1D_x", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_x] [line 303]
!176 = metadata !{i32 786688, metadata !140, metadata !"out1D_xline_yi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_xline_yi] [line 303]
!177 = metadata !{i32 786688, metadata !140, metadata !"out1D_xline_zi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_xline_zi] [line 303]
!178 = metadata !{i32 786688, metadata !140, metadata !"out1D_y", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_y] [line 303]
!179 = metadata !{i32 786688, metadata !140, metadata !"out1D_yline_xi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_yline_xi] [line 303]
!180 = metadata !{i32 786688, metadata !140, metadata !"out1D_yline_zi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_yline_zi] [line 303]
!181 = metadata !{i32 786688, metadata !140, metadata !"out1D_z", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_z] [line 303]
!182 = metadata !{i32 786688, metadata !140, metadata !"out1D_zline_xi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_zline_xi] [line 303]
!183 = metadata !{i32 786688, metadata !140, metadata !"out1D_zline_yi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_zline_yi] [line 303]
!184 = metadata !{i32 786688, metadata !140, metadata !"out2D_every", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_every] [line 303]
!185 = metadata !{i32 786688, metadata !140, metadata !"out2D_xyplane_zi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_xyplane_zi] [line 303]
!186 = metadata !{i32 786688, metadata !140, metadata !"out2D_xzplane_yi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_xzplane_yi] [line 303]
!187 = metadata !{i32 786688, metadata !140, metadata !"out2D_yzplane_xi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_yzplane_xi] [line 303]
!188 = metadata !{i32 786688, metadata !140, metadata !"out3D_every", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_every] [line 303]
!189 = metadata !{i32 786688, metadata !140, metadata !"outdir", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir] [line 303]
!190 = metadata !{i32 786688, metadata !140, metadata !"out_every", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_every] [line 303]
!191 = metadata !{i32 786688, metadata !140, metadata !"out_xline_y", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_y] [line 303]
!192 = metadata !{i32 786688, metadata !140, metadata !"out_xline_z", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_z] [line 303]
!193 = metadata !{i32 786688, metadata !140, metadata !"out_yline_x", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_x] [line 303]
!194 = metadata !{i32 786688, metadata !140, metadata !"out_yline_z", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_z] [line 303]
!195 = metadata !{i32 786688, metadata !140, metadata !"out_zline_x", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_x] [line 303]
!196 = metadata !{i32 786688, metadata !140, metadata !"out_zline_y", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_y] [line 303]
!197 = metadata !{i32 786688, metadata !140, metadata !"out_xline_yi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_yi] [line 303]
!198 = metadata !{i32 786688, metadata !140, metadata !"out_xline_zi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_zi] [line 303]
!199 = metadata !{i32 786688, metadata !140, metadata !"out_yline_xi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_xi] [line 303]
!200 = metadata !{i32 786688, metadata !140, metadata !"out_yline_zi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_zi] [line 303]
!201 = metadata !{i32 786688, metadata !140, metadata !"out_zline_xi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_xi] [line 303]
!202 = metadata !{i32 786688, metadata !140, metadata !"out_zline_yi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_yi] [line 303]
!203 = metadata !{i32 786688, metadata !140, metadata !"out_yzplane_x", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yzplane_x] [line 303]
!204 = metadata !{i32 786688, metadata !140, metadata !"out_xzplane_y", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xzplane_y] [line 303]
!205 = metadata !{i32 786688, metadata !140, metadata !"out_xyplane_z", metadata !5, i32 303, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xyplane_z] [line 303]
!206 = metadata !{i32 786688, metadata !140, metadata !"out_xyplane_zi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xyplane_zi] [line 303]
!207 = metadata !{i32 786688, metadata !140, metadata !"out_xzplane_yi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xzplane_yi] [line 303]
!208 = metadata !{i32 786688, metadata !140, metadata !"out_yzplane_xi", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yzplane_xi] [line 303]
!209 = metadata !{i32 786688, metadata !140, metadata !"newverbose", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newverbose] [line 303]
!210 = metadata !{i32 786688, metadata !140, metadata !"new_filename_scheme", metadata !5, i32 303, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_filename_scheme] [line 303]
!211 = metadata !{i32 786688, metadata !140, metadata !"out_fileinfo", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_fileinfo] [line 303]
!212 = metadata !{i32 786688, metadata !140, metadata !"cctk_pdummy_pointer", metadata !5, i32 303, metadata !213, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 303]
!213 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!214 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!215 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SetOutputFlag", metadata !"SetOutputFlag", metadata !"", i32 408, metadata !216, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*, i8*)* @SetOutputFlag, null, null, metadata !218, i32 409} ; [ DW_TAG_subprogram ] [line 408] [local] [def] [scope 409] [SetOutputFlag]
!216 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!217 = metadata !{null, metadata !14, metadata !8, metadata !44}
!218 = metadata !{metadata !219, metadata !220, metadata !221, metadata !222}
!219 = metadata !{i32 786689, metadata !215, metadata !"vindex", metadata !5, i32 16777624, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 408]
!220 = metadata !{i32 786689, metadata !215, metadata !"optstring", metadata !5, i32 33554840, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [optstring] [line 408]
!221 = metadata !{i32 786689, metadata !215, metadata !"arg", metadata !5, i32 50332056, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 408]
!222 = metadata !{i32 786688, metadata !215, metadata !"flags", metadata !5, i32 410, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 410]
!223 = metadata !{metadata !224, metadata !225}
!224 = metadata !{i32 786484, i32 0, metadata !140, metadata !"out3D_vars_lastset", metadata !"out3D_vars_lastset", metadata !"", metadata !5, i32 302, metadata !14, i32 1, i32 1, i32* @CheckSteerableParameters.out3D_vars_lastset, null} ; [ DW_TAG_variable ] [out3D_vars_lastset] [line 302] [local] [def]
!225 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 24, metadata !8, i32 1, i32 1, null, null}
!226 = metadata !{i32 25, i32 0, metadata !4, null}
!227 = metadata !{i32 61, i32 0, metadata !11, null}
!228 = metadata !{i32 69, i32 0, metadata !11, null}
!229 = metadata !{i32 71, i32 0, metadata !11, null}
!230 = metadata !{i32 74, i32 0, metadata !11, null}
!231 = metadata !{metadata !"int", metadata !232}
!232 = metadata !{metadata !"omnipotent char", metadata !233}
!233 = metadata !{metadata !"Simple C/C++ TBAA"}
!234 = metadata !{i32 80, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !11, i32 80, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!236 = metadata !{i32 104, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !238, i32 102, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!238 = metadata !{i32 786443, metadata !1, metadata !235, i32 81, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!239 = metadata !{i32 84, i32 0, metadata !238, null}
!240 = metadata !{i32 90, i32 0, metadata !238, null}
!241 = metadata !{i32 101, i32 0, metadata !238, null}
!242 = metadata !{metadata !"any pointer", metadata !232}
!243 = metadata !{i32 105, i32 0, metadata !237, null}
!244 = metadata !{i32 106, i32 0, metadata !237, null}
!245 = metadata !{i32 110, i32 0, metadata !11, null}
!246 = metadata !{i32 298, i32 0, metadata !140, null}
!247 = metadata !{i32 301, i32 0, metadata !140, null}
!248 = metadata !{i32 303, i32 0, metadata !140, null}
!249 = metadata !{i32 306, i32 0, metadata !140, null}
!250 = metadata !{i32 309, i32 0, metadata !140, null}
!251 = metadata !{i32 310, i32 0, metadata !140, null}
!252 = metadata !{i32 317, i32 0, metadata !140, null}
!253 = metadata !{i32 319, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !140, i32 318, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!255 = metadata !{i32 320, i32 0, metadata !254, null}
!256 = metadata !{i32 322, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !254, i32 321, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!258 = metadata !{i32 324, i32 0, metadata !257, null}
!259 = metadata !{i32 328, i32 0, metadata !140, null}
!260 = metadata !{i32 329, i32 0, metadata !140, null}
!261 = metadata !{i32 331, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !140, i32 330, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!263 = metadata !{i32 332, i32 0, metadata !262, null}
!264 = metadata !{i32 333, i32 0, metadata !262, null}
!265 = metadata !{i32 336, i32 0, metadata !262, null}
!266 = metadata !{i32 337, i32 0, metadata !262, null}
!267 = metadata !{i8* null}
!268 = metadata !{i32 339, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !262, i32 338, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!270 = metadata !{i32 340, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !269, i32 340, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!272 = metadata !{i32 342, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !271, i32 341, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!274 = metadata !{i32 344, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !273, i32 343, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!276 = metadata !{i32 345, i32 0, metadata !275, null}
!277 = metadata !{i32 347, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !275, i32 346, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!279 = metadata !{i32 349, i32 0, metadata !278, null}
!280 = metadata !{i32 352, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !275, i32 351, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!282 = metadata !{i32 354, i32 0, metadata !275, null}
!283 = metadata !{i32 355, i32 0, metadata !275, null}
!284 = metadata !{i32 357, i32 0, metadata !269, null}
!285 = metadata !{i32 359, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !269, i32 358, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!287 = metadata !{i32 360, i32 0, metadata !286, null}
!288 = metadata !{i32 361, i32 0, metadata !286, null}
!289 = metadata !{i32 365, i32 0, metadata !262, null}
!290 = metadata !{i32 366, i32 0, metadata !262, null}
!291 = metadata !{i8* undef}
!292 = metadata !{i32 368, i32 0, metadata !140, null}
!293 = metadata !{i32 196, i32 0, metadata !103, null}
!294 = metadata !{i32 204, i32 0, metadata !103, null}
!295 = metadata !{i32 207, i32 0, metadata !103, null}
!296 = metadata !{i32 209, i32 0, metadata !103, null}
!297 = metadata !{i32 212, i32 0, metadata !103, null}
!298 = metadata !{i32 218, i32 0, metadata !103, null}
!299 = metadata !{i32 221, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !103, i32 219, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!301 = metadata !{i32 223, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !300, i32 222, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!303 = metadata !{i32 224, i32 0, metadata !302, null}
!304 = metadata !{i32 227, i32 0, metadata !302, null}
!305 = metadata !{i32 228, i32 0, metadata !302, null}
!306 = metadata !{i32 236, i32 0, metadata !103, null}
!307 = metadata !{i32 146, i32 0, metadata !94, null}
!308 = metadata !{i32 151, i32 0, metadata !94, null}
!309 = metadata !{i32 -1}
!310 = metadata !{i32 160, i32 0, metadata !94, null}
!311 = metadata !{i32 161, i32 0, metadata !94, null}
!312 = metadata !{i32 163, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !94, i32 162, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!314 = metadata !{i32 164, i32 0, metadata !313, null}
!315 = metadata !{i32 166, i32 0, metadata !94, null}
!316 = metadata !{i32 372, i32 0, metadata !119, null}
!317 = metadata !{i32 375, i32 0, metadata !119, null}
!318 = metadata !{i32 381, i32 0, metadata !119, null}
!319 = metadata !{i32 382, i32 0, metadata !119, null}
!320 = metadata !{i32 385, i32 0, metadata !119, null}
!321 = metadata !{i32 386, i32 0, metadata !119, null}
!322 = metadata !{i32 390, i32 0, metadata !119, null}
!323 = metadata !{null}
!324 = metadata !{i32 392, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !1, metadata !119, i32 391, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!326 = metadata !{i32 395, i32 0, metadata !119, null}
!327 = metadata !{i32 397, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !119, i32 396, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!329 = metadata !{i32 398, i32 0, metadata !328, null}
!330 = metadata !{i32 399, i32 0, metadata !328, null}
!331 = metadata !{i32 400, i32 0, metadata !328, null}
!332 = metadata !{i32 402, i32 0, metadata !119, null}
!333 = metadata !{i32 265, i32 0, metadata !112, null}
!334 = metadata !{i32 273, i32 0, metadata !112, null}
!335 = metadata !{i32 275, i32 0, metadata !112, null}
!336 = metadata !{i32 284, i32 0, metadata !112, null}
!337 = metadata !{i32 286, i32 0, metadata !112, null}
!338 = metadata !{i32 289, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !112, i32 287, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!340 = metadata !{i32 290, i32 0, metadata !339, null}
!341 = metadata !{i32 292, i32 0, metadata !112, null}
!342 = metadata !{i32 408, i32 0, metadata !215, null}
!343 = metadata !{i32 410, i32 0, metadata !215, null}
!344 = metadata !{i32 414, i32 0, metadata !215, null}
!345 = metadata !{i32 416, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !215, i32 415, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!347 = metadata !{i32 417, i32 0, metadata !346, null}
!348 = metadata !{i32 419, i32 0, metadata !215, null}
!349 = metadata !{i32 421, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !215, i32 420, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c]
!351 = metadata !{i32 423, i32 0, metadata !350, null}
!352 = metadata !{i32 424, i32 0, metadata !215, null}
