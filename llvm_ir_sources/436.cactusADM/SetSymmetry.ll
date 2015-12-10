; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [9 x i8] c"Symmetry\00", align 1
@.str1 = private unnamed_addr constant [72 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str3 = private unnamed_addr constant [40 x i8] c"Cannot find variable %s in SetCartSymVN\00", align 1
@.str4 = private unnamed_addr constant [53 x i8] c"Cannot find group %s (grp.index: %d) in SetCartSymGI\00", align 1
@.str5 = private unnamed_addr constant [37 x i8] c"Cannot find group %s in SetCartSymGN\00", align 1
@.str6 = private unnamed_addr constant [97 x i8] c"$Header: /cactus/CactusBase/CartGrid3D/src/SetSymmetry.c,v 1.7 2001/05/10 12:35:37 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_SetSymmetry_c() #0 {
entry:
  ret i8* getelementptr inbounds ([97 x i8]* @.str6, i64 0, i64 0), !dbg !204
}

; Function Attrs: nounwind optsize uwtable
define i32 @SetCartSymVI(%struct.cGH* nocapture %GH, i32* nocapture %sym, i32 %vi) #1 {
entry:
  %domainsym = alloca [6 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !53), !dbg !205
  call void @llvm.dbg.value(metadata !{i32* %sym}, i64 0, metadata !54), !dbg !205
  call void @llvm.dbg.value(metadata !{i32 %vi}, i64 0, metadata !55), !dbg !205
  call void @llvm.dbg.declare(metadata !{[6 x i32]* %domainsym}, metadata !95), !dbg !206
  %call = call i32 @CCTK_GHExtensionHandle(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #5, !dbg !207
  %idxprom = sext i32 %call to i64, !dbg !207
  %extensions = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18, !dbg !207
  %0 = load i8*** %extensions, align 8, !dbg !207, !tbaa !208
  %arrayidx = getelementptr inbounds i8** %0, i64 %idxprom, !dbg !207
  %1 = load i8** %arrayidx, align 8, !dbg !207, !tbaa !208
  %arraydecay = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 0, !dbg !211
  call void @DecodeSymParameters3D(i32* %arraydecay) #5, !dbg !211
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !212
  %idxprom10 = sext i32 %vi to i64, !dbg !214
  %GFSym11 = bitcast i8* %1 to i32***, !dbg !214
  br label %for.body, !dbg !212

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx2 = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 %indvars.iv, !dbg !217
  %2 = load i32* %arrayidx2, align 4, !dbg !217, !tbaa !218
  %tobool = icmp eq i32 %2, 0, !dbg !217
  br i1 %tobool, label %if.else, label %if.then, !dbg !217

if.then:                                          ; preds = %for.body
  %3 = trunc i64 %indvars.iv to i32, !dbg !219
  %div = sdiv i32 %3, 2, !dbg !219
  %idxprom3 = sext i32 %div to i64, !dbg !219
  %arrayidx4 = getelementptr inbounds i32* %sym, i64 %idxprom3, !dbg !219
  %4 = load i32* %arrayidx4, align 4, !dbg !219, !tbaa !218
  %5 = load i32*** %GFSym11, align 8, !dbg !219, !tbaa !208
  %arrayidx7 = getelementptr inbounds i32** %5, i64 %idxprom10, !dbg !219
  %6 = load i32** %arrayidx7, align 8, !dbg !219, !tbaa !208
  %arrayidx8 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !219
  store i32 %4, i32* %arrayidx8, align 4, !dbg !219, !tbaa !218
  br label %for.inc, !dbg !221

if.else:                                          ; preds = %for.body
  %7 = load i32*** %GFSym11, align 8, !dbg !214, !tbaa !208
  %arrayidx12 = getelementptr inbounds i32** %7, i64 %idxprom10, !dbg !214
  %8 = load i32** %arrayidx12, align 8, !dbg !214, !tbaa !208
  %arrayidx13 = getelementptr inbounds i32* %8, i64 %indvars.iv, !dbg !214
  store i32 -41, i32* %arrayidx13, align 4, !dbg !214, !tbaa !218
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !212
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !212
  %exitcond = icmp eq i32 %lftr.wideiv, 6, !dbg !212
  br i1 %exitcond, label %for.end, label %for.body, !dbg !212

for.end:                                          ; preds = %for.inc
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !92), !dbg !223
  ret i32 0, !dbg !223
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_GHExtensionHandle(i8*) #3

; Function Attrs: optsize
declare void @DecodeSymParameters3D(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @setcartsymvi_(i32* nocapture %ierr, %struct.cGH* nocapture %GH, i32* nocapture %sym, i32* nocapture %vi) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !112), !dbg !224
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !113), !dbg !224
  tail call void @llvm.dbg.value(metadata !{i32* %sym}, i64 0, metadata !114), !dbg !224
  tail call void @llvm.dbg.value(metadata !{i32* %vi}, i64 0, metadata !115), !dbg !224
  %0 = load i32* %vi, align 4, !dbg !225, !tbaa !218
  %call = tail call i32 @SetCartSymVI(%struct.cGH* %GH, i32* %sym, i32 %0) #6, !dbg !225
  store i32 0, i32* %ierr, align 4, !dbg !225, !tbaa !218
  ret void, !dbg !226
}

; Function Attrs: nounwind optsize uwtable
define i32 @SetCartSymVN(%struct.cGH* nocapture %GH, i32* nocapture %sym, i8* %vn) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !120), !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32* %sym}, i64 0, metadata !121), !dbg !227
  tail call void @llvm.dbg.value(metadata !{i8* %vn}, i64 0, metadata !122), !dbg !227
  %call = tail call i32 @CCTK_VarIndex(i8* %vn) #5, !dbg !228
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !123), !dbg !228
  %cmp = icmp sgt i32 %call, -1, !dbg !229
  br i1 %cmp, label %if.then, label %if.else, !dbg !229

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @SetCartSymVI(%struct.cGH* %GH, i32* %sym, i32 %call) #6, !dbg !230
  br label %return, !dbg !230

if.else:                                          ; preds = %entry
  %call2 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 151, i8* getelementptr inbounds ([72 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str3, i64 0, i64 0), i8* %vn) #5, !dbg !232
  br label %return, !dbg !234

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.else ]
  ret i32 %retval.0, !dbg !235
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @setcartsymvn_(i32* nocapture %ierr, %struct.cGH* nocapture %GH, i32* nocapture %sym, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !130), !dbg !236
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !131), !dbg !236
  tail call void @llvm.dbg.value(metadata !{i32* %sym}, i64 0, metadata !132), !dbg !236
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !133), !dbg !236
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !134), !dbg !236
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !237
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !135), !dbg !237
  %call1 = tail call i32 @SetCartSymVN(%struct.cGH* %GH, i32* %sym, i8* %call) #6, !dbg !238
  store i32 %call1, i32* %ierr, align 4, !dbg !238, !tbaa !218
  tail call void @free(i8* %call) #5, !dbg !239
  ret void, !dbg !240
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @SetCartSymGI(%struct.cGH* nocapture %GH, i32* nocapture %sym, i32 %gi) #1 {
entry:
  %domainsym = alloca [6 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !138), !dbg !241
  call void @llvm.dbg.value(metadata !{i32* %sym}, i64 0, metadata !139), !dbg !241
  call void @llvm.dbg.value(metadata !{i32 %gi}, i64 0, metadata !140), !dbg !241
  call void @llvm.dbg.declare(metadata !{[6 x i32]* %domainsym}, metadata !176), !dbg !242
  %call = call i32 @CCTK_GHExtensionHandle(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #5, !dbg !243
  %idxprom = sext i32 %call to i64, !dbg !243
  %extensions = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18, !dbg !243
  %0 = load i8*** %extensions, align 8, !dbg !243, !tbaa !208
  %arrayidx = getelementptr inbounds i8** %0, i64 %idxprom, !dbg !243
  %1 = load i8** %arrayidx, align 8, !dbg !243, !tbaa !208
  %call1 = call i32 @CCTK_FirstVarIndexI(i32 %gi) #5, !dbg !244
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !178), !dbg !244
  %call2 = call i32 @CCTK_NumVarsInGroupI(i32 %gi) #5, !dbg !245
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !179), !dbg !245
  %cmp = icmp slt i32 %call1, 0, !dbg !246
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !246

for.cond.preheader:                               ; preds = %entry
  %add = add nsw i32 %call2, %call1, !dbg !247
  %cmp541 = icmp sgt i32 %call2, 0, !dbg !247
  br i1 %cmp541, label %for.body.lr.ph, label %return, !dbg !247

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arraydecay = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 0, !dbg !249
  %GFSym20 = bitcast i8* %1 to i32***, !dbg !251
  %2 = sext i32 %call1 to i64
  br label %for.body, !dbg !247

if.then:                                          ; preds = %entry
  %call3 = call i8* @CCTK_GroupName(i32 %gi) #5, !dbg !255
  %call4 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 200, i8* getelementptr inbounds ([72 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str4, i64 0, i64 0), i8* %call3, i32 %call1) #5, !dbg !255
  br label %return, !dbg !257

for.body:                                         ; preds = %for.body.lr.ph, %for.inc24
  %indvars.iv43 = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next44, %for.inc24 ]
  call void @DecodeSymParameters3D(i32* %arraydecay) #5, !dbg !249
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !181), !dbg !258
  br label %for.body8, !dbg !258

for.body8:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.inc ]
  %arrayidx10 = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 %indvars.iv, !dbg !259
  %3 = load i32* %arrayidx10, align 4, !dbg !259, !tbaa !218
  %tobool = icmp eq i32 %3, 0, !dbg !259
  br i1 %tobool, label %if.else, label %if.then11, !dbg !259

if.then11:                                        ; preds = %for.body8
  %4 = trunc i64 %indvars.iv to i32, !dbg !260
  %div = sdiv i32 %4, 2, !dbg !260
  %idxprom12 = sext i32 %div to i64, !dbg !260
  %arrayidx13 = getelementptr inbounds i32* %sym, i64 %idxprom12, !dbg !260
  %5 = load i32* %arrayidx13, align 4, !dbg !260, !tbaa !218
  %6 = load i32*** %GFSym20, align 8, !dbg !260, !tbaa !208
  %arrayidx16 = getelementptr inbounds i32** %6, i64 %indvars.iv43, !dbg !260
  %7 = load i32** %arrayidx16, align 8, !dbg !260, !tbaa !208
  %arrayidx17 = getelementptr inbounds i32* %7, i64 %indvars.iv, !dbg !260
  store i32 %5, i32* %arrayidx17, align 4, !dbg !260, !tbaa !218
  br label %for.inc, !dbg !262

if.else:                                          ; preds = %for.body8
  %8 = load i32*** %GFSym20, align 8, !dbg !251, !tbaa !208
  %arrayidx21 = getelementptr inbounds i32** %8, i64 %indvars.iv43, !dbg !251
  %9 = load i32** %arrayidx21, align 8, !dbg !251, !tbaa !208
  %arrayidx22 = getelementptr inbounds i32* %9, i64 %indvars.iv, !dbg !251
  store i32 -41, i32* %arrayidx22, align 4, !dbg !251, !tbaa !218
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !258
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !258
  %exitcond = icmp eq i32 %lftr.wideiv, 6, !dbg !258
  br i1 %exitcond, label %for.inc24, label %for.body8, !dbg !258

for.inc24:                                        ; preds = %for.inc
  %indvars.iv.next44 = add i64 %indvars.iv43, 1, !dbg !247
  %10 = trunc i64 %indvars.iv.next44 to i32, !dbg !247
  %cmp5 = icmp slt i32 %10, %add, !dbg !247
  br i1 %cmp5, label %for.body, label %return, !dbg !247

return:                                           ; preds = %for.cond.preheader, %for.inc24, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %for.inc24 ], [ 0, %for.cond.preheader ]
  ret i32 %retval.0, !dbg !263
}

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #3

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @setcartsymgi_(i32* nocapture %ierr, %struct.cGH* nocapture %GH, i32* nocapture %sym, i32* nocapture %gi) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !184), !dbg !264
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !185), !dbg !264
  tail call void @llvm.dbg.value(metadata !{i32* %sym}, i64 0, metadata !186), !dbg !264
  tail call void @llvm.dbg.value(metadata !{i32* %gi}, i64 0, metadata !187), !dbg !264
  %0 = load i32* %gi, align 4, !dbg !265, !tbaa !218
  %call = tail call i32 @SetCartSymGI(%struct.cGH* %GH, i32* %sym, i32 %0) #6, !dbg !265
  store i32 %call, i32* %ierr, align 4, !dbg !265, !tbaa !218
  ret void, !dbg !266
}

; Function Attrs: nounwind optsize uwtable
define i32 @SetCartSymGN(%struct.cGH* nocapture %GH, i32* nocapture %sym, i8* %gn) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !190), !dbg !267
  tail call void @llvm.dbg.value(metadata !{i32* %sym}, i64 0, metadata !191), !dbg !267
  tail call void @llvm.dbg.value(metadata !{i8* %gn}, i64 0, metadata !192), !dbg !267
  %call = tail call i32 @CCTK_GroupIndex(i8* %gn) #5, !dbg !268
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !193), !dbg !268
  %cmp = icmp sgt i32 %call, -1, !dbg !269
  br i1 %cmp, label %if.then, label %if.else, !dbg !269

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @SetCartSymGI(%struct.cGH* %GH, i32* %sym, i32 %call) #6, !dbg !270
  br label %return, !dbg !270

if.else:                                          ; preds = %entry
  %call2 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 277, i8* getelementptr inbounds ([72 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str5, i64 0, i64 0), i8* %gn) #5, !dbg !272
  br label %return, !dbg !274

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ -1, %if.else ]
  ret i32 %retval.0, !dbg !275
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @setcartsymgn_(i32* nocapture %ierr, %struct.cGH* nocapture %GH, i32* nocapture %sym, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !196), !dbg !276
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !197), !dbg !276
  tail call void @llvm.dbg.value(metadata !{i32* %sym}, i64 0, metadata !198), !dbg !276
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !199), !dbg !276
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !200), !dbg !276
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !277
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !201), !dbg !277
  %call1 = tail call i32 @SetCartSymGN(%struct.cGH* %GH, i32* %sym, i8* %call) #6, !dbg !278
  store i32 %call1, i32* %ierr, align 4, !dbg !278, !tbaa !218
  tail call void @free(i8* %call) #5, !dbg !279
  ret void, !dbg !280
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !202, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !108, metadata !116, metadata !124, metadata !136, metadata !182, metadata !188, metadata !194}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_CartGrid3D_SetSymmetry_c", metadata !"CCTKi_version_CactusBase_CartGrid3D_SetSymmetry_c", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_CartGrid3D_SetSymmetry_c, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [CCTKi_version_CactusBase_CartGrid3D_SetSymmetry_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SetCartSymVI", metadata !"SetCartSymVI", metadata !"", i32 74, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, i32)* @SetCartSymVI, null, null, metadata !52, i32 75} ; [ DW_TAG_subprogram ] [line 74] [def] [scope 75] [SetCartSymVI]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !23, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !44, metadata !45}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!21 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!25 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!27 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!28 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!29 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!30 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!31 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!34 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!35 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!36 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!37 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!38 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!39 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!40 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !41} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !42} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!45 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !46} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!47 = metadata !{i32 786454, metadata !18, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!48 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51}
!50 = metadata !{i32 786445, metadata !18, metadata !48, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!51 = metadata !{i32 786445, metadata !18, metadata !48, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !95, metadata !99, metadata !107}
!53 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777290, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 74]
!54 = metadata !{i32 786689, metadata !11, metadata !"sym", metadata !5, i32 33554506, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 74]
!55 = metadata !{i32 786689, metadata !11, metadata !"vi", metadata !5, i32 50331722, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi] [line 74]
!56 = metadata !{i32 786688, metadata !11, metadata !"dx", metadata !5, i32 77, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 77]
!57 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!58 = metadata !{i32 786688, metadata !11, metadata !"dxyz", metadata !5, i32 77, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dxyz] [line 77]
!59 = metadata !{i32 786688, metadata !11, metadata !"dy", metadata !5, i32 77, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 77]
!60 = metadata !{i32 786688, metadata !11, metadata !"dz", metadata !5, i32 77, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 77]
!61 = metadata !{i32 786688, metadata !11, metadata !"xmax", metadata !5, i32 77, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmax] [line 77]
!62 = metadata !{i32 786688, metadata !11, metadata !"xmin", metadata !5, i32 77, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmin] [line 77]
!63 = metadata !{i32 786688, metadata !11, metadata !"xyzmax", metadata !5, i32 77, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmax] [line 77]
!64 = metadata !{i32 786688, metadata !11, metadata !"xyzmin", metadata !5, i32 77, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmin] [line 77]
!65 = metadata !{i32 786688, metadata !11, metadata !"ymax", metadata !5, i32 77, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymax] [line 77]
!66 = metadata !{i32 786688, metadata !11, metadata !"ymin", metadata !5, i32 77, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymin] [line 77]
!67 = metadata !{i32 786688, metadata !11, metadata !"zmax", metadata !5, i32 77, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmax] [line 77]
!68 = metadata !{i32 786688, metadata !11, metadata !"zmin", metadata !5, i32 77, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmin] [line 77]
!69 = metadata !{i32 786688, metadata !11, metadata !"bitant_plane", metadata !5, i32 77, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitant_plane] [line 77]
!70 = metadata !{i32 786688, metadata !11, metadata !"domain", metadata !5, i32 77, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 77]
!71 = metadata !{i32 786688, metadata !11, metadata !"quadrant_direction", metadata !5, i32 77, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quadrant_direction] [line 77]
!72 = metadata !{i32 786688, metadata !11, metadata !"type", metadata !5, i32 77, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 77]
!73 = metadata !{i32 786688, metadata !11, metadata !"symmetry_xmax", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmax] [line 77]
!74 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!75 = metadata !{i32 786688, metadata !11, metadata !"symmetry_xmin", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmin] [line 77]
!76 = metadata !{i32 786688, metadata !11, metadata !"symmetry_ymax", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymax] [line 77]
!77 = metadata !{i32 786688, metadata !11, metadata !"symmetry_ymin", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymin] [line 77]
!78 = metadata !{i32 786688, metadata !11, metadata !"symmetry_zmax", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmax] [line 77]
!79 = metadata !{i32 786688, metadata !11, metadata !"symmetry_zmin", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmin] [line 77]
!80 = metadata !{i32 786688, metadata !11, metadata !"avoid_origin", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_origin] [line 77]
!81 = metadata !{i32 786688, metadata !11, metadata !"avoid_originx", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originx] [line 77]
!82 = metadata !{i32 786688, metadata !11, metadata !"avoid_originy", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originy] [line 77]
!83 = metadata !{i32 786688, metadata !11, metadata !"avoid_originz", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originz] [line 77]
!84 = metadata !{i32 786688, metadata !11, metadata !"no_origin", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_origin] [line 77]
!85 = metadata !{i32 786688, metadata !11, metadata !"no_originx", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originx] [line 77]
!86 = metadata !{i32 786688, metadata !11, metadata !"no_originy", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originy] [line 77]
!87 = metadata !{i32 786688, metadata !11, metadata !"no_originz", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originz] [line 77]
!88 = metadata !{i32 786688, metadata !11, metadata !"periodic", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 77]
!89 = metadata !{i32 786688, metadata !11, metadata !"periodic_x", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 77]
!90 = metadata !{i32 786688, metadata !11, metadata !"periodic_y", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 77]
!91 = metadata !{i32 786688, metadata !11, metadata !"periodic_z", metadata !5, i32 77, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 77]
!92 = metadata !{i32 786688, metadata !11, metadata !"cctk_pdummy_pointer", metadata !5, i32 77, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 77]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!94 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!95 = metadata !{i32 786688, metadata !11, metadata !"domainsym", metadata !5, i32 79, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domainsym] [line 79]
!96 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !14, metadata !97, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!99 = metadata !{i32 786688, metadata !11, metadata !"sGHex", metadata !5, i32 80, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sGHex] [line 80]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SymmetryGHex]
!101 = metadata !{i32 786454, metadata !1, null, metadata !"SymmetryGHex", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ] [SymmetryGHex] [line 36, size 0, align 0, offset 0] [from Symmetry]
!102 = metadata !{i32 786451, metadata !103, null, metadata !"Symmetry", i32 27, i64 64, i64 64, i32 0, i32 0, null, metadata !104, i32 0, null, null} ; [ DW_TAG_structure_type ] [Symmetry] [line 27, size 64, align 64, offset 0] [from ]
!103 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/../include/Symmetry.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"GFSym", i32 34, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [GFSym] [line 34, size 64, align 64, offset 0] [from ]
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!107 = metadata !{i32 786688, metadata !11, metadata !"dir", metadata !5, i32 81, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 81]
!108 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"setcartsymvi_", metadata !"setcartsymvi_", metadata !"", i32 119, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i32*)* @setcartsymvi_, null, null, metadata !111, i32 121} ; [ DW_TAG_subprogram ] [line 119] [def] [scope 121] [setcartsymvi_]
!109 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{null, metadata !23, metadata !15, metadata !23, metadata !23}
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115}
!112 = metadata !{i32 786689, metadata !108, metadata !"ierr", metadata !5, i32 16777336, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 120]
!113 = metadata !{i32 786689, metadata !108, metadata !"GH", metadata !5, i32 33554552, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 120]
!114 = metadata !{i32 786689, metadata !108, metadata !"sym", metadata !5, i32 50331768, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 120]
!115 = metadata !{i32 786689, metadata !108, metadata !"vi", metadata !5, i32 67108984, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi] [line 120]
!116 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SetCartSymVN", metadata !"SetCartSymVN", metadata !"", i32 141, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, i8*)* @SetCartSymVN, null, null, metadata !119, i32 141} ; [ DW_TAG_subprogram ] [line 141] [def] [SetCartSymVN]
!117 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!118 = metadata !{metadata !14, metadata !15, metadata !23, metadata !8}
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !123}
!120 = metadata !{i32 786689, metadata !116, metadata !"GH", metadata !5, i32 16777357, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 141]
!121 = metadata !{i32 786689, metadata !116, metadata !"sym", metadata !5, i32 33554573, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 141]
!122 = metadata !{i32 786689, metadata !116, metadata !"vn", metadata !5, i32 50331789, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vn] [line 141]
!123 = metadata !{i32 786688, metadata !116, metadata !"vi", metadata !5, i32 142, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vi] [line 142]
!124 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"setcartsymvn_", metadata !"setcartsymvn_", metadata !"", i32 157, metadata !125, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i8*, i32)* @setcartsymvn_, null, null, metadata !129, i32 159} ; [ DW_TAG_subprogram ] [line 157] [def] [scope 159] [setcartsymvn_]
!125 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!126 = metadata !{null, metadata !23, metadata !15, metadata !23, metadata !127, metadata !128}
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!128 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135}
!130 = metadata !{i32 786689, metadata !124, metadata !"ierr", metadata !5, i32 16777374, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 158]
!131 = metadata !{i32 786689, metadata !124, metadata !"GH", metadata !5, i32 33554590, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 158]
!132 = metadata !{i32 786689, metadata !124, metadata !"sym", metadata !5, i32 50331806, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 158]
!133 = metadata !{i32 786689, metadata !124, metadata !"cctk_str1", metadata !5, i32 67109022, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 158]
!134 = metadata !{i32 786689, metadata !124, metadata !"cctk_strlen1", metadata !5, i32 83886238, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 158]
!135 = metadata !{i32 786688, metadata !124, metadata !"vn", metadata !5, i32 160, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vn] [line 160]
!136 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SetCartSymGI", metadata !"SetCartSymGI", metadata !"", i32 183, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, i32)* @SetCartSymGI, null, null, metadata !137, i32 184} ; [ DW_TAG_subprogram ] [line 183] [def] [scope 184] [SetCartSymGI]
!137 = metadata !{metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181}
!138 = metadata !{i32 786689, metadata !136, metadata !"GH", metadata !5, i32 16777399, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 183]
!139 = metadata !{i32 786689, metadata !136, metadata !"sym", metadata !5, i32 33554615, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 183]
!140 = metadata !{i32 786689, metadata !136, metadata !"gi", metadata !5, i32 50331831, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi] [line 183]
!141 = metadata !{i32 786688, metadata !136, metadata !"dx", metadata !5, i32 186, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 186]
!142 = metadata !{i32 786688, metadata !136, metadata !"dxyz", metadata !5, i32 186, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dxyz] [line 186]
!143 = metadata !{i32 786688, metadata !136, metadata !"dy", metadata !5, i32 186, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 186]
!144 = metadata !{i32 786688, metadata !136, metadata !"dz", metadata !5, i32 186, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 186]
!145 = metadata !{i32 786688, metadata !136, metadata !"xmax", metadata !5, i32 186, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmax] [line 186]
!146 = metadata !{i32 786688, metadata !136, metadata !"xmin", metadata !5, i32 186, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmin] [line 186]
!147 = metadata !{i32 786688, metadata !136, metadata !"xyzmax", metadata !5, i32 186, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmax] [line 186]
!148 = metadata !{i32 786688, metadata !136, metadata !"xyzmin", metadata !5, i32 186, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmin] [line 186]
!149 = metadata !{i32 786688, metadata !136, metadata !"ymax", metadata !5, i32 186, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymax] [line 186]
!150 = metadata !{i32 786688, metadata !136, metadata !"ymin", metadata !5, i32 186, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymin] [line 186]
!151 = metadata !{i32 786688, metadata !136, metadata !"zmax", metadata !5, i32 186, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmax] [line 186]
!152 = metadata !{i32 786688, metadata !136, metadata !"zmin", metadata !5, i32 186, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmin] [line 186]
!153 = metadata !{i32 786688, metadata !136, metadata !"bitant_plane", metadata !5, i32 186, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitant_plane] [line 186]
!154 = metadata !{i32 786688, metadata !136, metadata !"domain", metadata !5, i32 186, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 186]
!155 = metadata !{i32 786688, metadata !136, metadata !"quadrant_direction", metadata !5, i32 186, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quadrant_direction] [line 186]
!156 = metadata !{i32 786688, metadata !136, metadata !"type", metadata !5, i32 186, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 186]
!157 = metadata !{i32 786688, metadata !136, metadata !"symmetry_xmax", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmax] [line 186]
!158 = metadata !{i32 786688, metadata !136, metadata !"symmetry_xmin", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmin] [line 186]
!159 = metadata !{i32 786688, metadata !136, metadata !"symmetry_ymax", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymax] [line 186]
!160 = metadata !{i32 786688, metadata !136, metadata !"symmetry_ymin", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymin] [line 186]
!161 = metadata !{i32 786688, metadata !136, metadata !"symmetry_zmax", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmax] [line 186]
!162 = metadata !{i32 786688, metadata !136, metadata !"symmetry_zmin", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmin] [line 186]
!163 = metadata !{i32 786688, metadata !136, metadata !"avoid_origin", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_origin] [line 186]
!164 = metadata !{i32 786688, metadata !136, metadata !"avoid_originx", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originx] [line 186]
!165 = metadata !{i32 786688, metadata !136, metadata !"avoid_originy", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originy] [line 186]
!166 = metadata !{i32 786688, metadata !136, metadata !"avoid_originz", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originz] [line 186]
!167 = metadata !{i32 786688, metadata !136, metadata !"no_origin", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_origin] [line 186]
!168 = metadata !{i32 786688, metadata !136, metadata !"no_originx", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originx] [line 186]
!169 = metadata !{i32 786688, metadata !136, metadata !"no_originy", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originy] [line 186]
!170 = metadata !{i32 786688, metadata !136, metadata !"no_originz", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originz] [line 186]
!171 = metadata !{i32 786688, metadata !136, metadata !"periodic", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 186]
!172 = metadata !{i32 786688, metadata !136, metadata !"periodic_x", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 186]
!173 = metadata !{i32 786688, metadata !136, metadata !"periodic_y", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 186]
!174 = metadata !{i32 786688, metadata !136, metadata !"periodic_z", metadata !5, i32 186, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 186]
!175 = metadata !{i32 786688, metadata !136, metadata !"cctk_pdummy_pointer", metadata !5, i32 186, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 186]
!176 = metadata !{i32 786688, metadata !136, metadata !"domainsym", metadata !5, i32 188, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domainsym] [line 188]
!177 = metadata !{i32 786688, metadata !136, metadata !"sGHex", metadata !5, i32 189, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sGHex] [line 189]
!178 = metadata !{i32 786688, metadata !136, metadata !"first_vari", metadata !5, i32 190, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first_vari] [line 190]
!179 = metadata !{i32 786688, metadata !136, metadata !"numvars", metadata !5, i32 190, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [numvars] [line 190]
!180 = metadata !{i32 786688, metadata !136, metadata !"vi", metadata !5, i32 190, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vi] [line 190]
!181 = metadata !{i32 786688, metadata !136, metadata !"dir", metadata !5, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 191]
!182 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"setcartsymgi_", metadata !"setcartsymgi_", metadata !"", i32 243, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i32*)* @setcartsymgi_, null, null, metadata !183, i32 245} ; [ DW_TAG_subprogram ] [line 243] [def] [scope 245] [setcartsymgi_]
!183 = metadata !{metadata !184, metadata !185, metadata !186, metadata !187}
!184 = metadata !{i32 786689, metadata !182, metadata !"ierr", metadata !5, i32 16777460, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 244]
!185 = metadata !{i32 786689, metadata !182, metadata !"GH", metadata !5, i32 33554676, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 244]
!186 = metadata !{i32 786689, metadata !182, metadata !"sym", metadata !5, i32 50331892, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 244]
!187 = metadata !{i32 786689, metadata !182, metadata !"gi", metadata !5, i32 67109108, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi] [line 244]
!188 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SetCartSymGN", metadata !"SetCartSymGN", metadata !"", i32 267, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, i8*)* @SetCartSymGN, null, null, metadata !189, i32 268} ; [ DW_TAG_subprogram ] [line 267] [def] [scope 268] [SetCartSymGN]
!189 = metadata !{metadata !190, metadata !191, metadata !192, metadata !193}
!190 = metadata !{i32 786689, metadata !188, metadata !"GH", metadata !5, i32 16777483, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 267]
!191 = metadata !{i32 786689, metadata !188, metadata !"sym", metadata !5, i32 33554699, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 267]
!192 = metadata !{i32 786689, metadata !188, metadata !"gn", metadata !5, i32 50331915, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gn] [line 267]
!193 = metadata !{i32 786688, metadata !188, metadata !"gi", metadata !5, i32 269, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gi] [line 269]
!194 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"setcartsymgn_", metadata !"setcartsymgn_", metadata !"", i32 283, metadata !125, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i8*, i32)* @setcartsymgn_, null, null, metadata !195, i32 285} ; [ DW_TAG_subprogram ] [line 283] [def] [scope 285] [setcartsymgn_]
!195 = metadata !{metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201}
!196 = metadata !{i32 786689, metadata !194, metadata !"ierr", metadata !5, i32 16777500, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 284]
!197 = metadata !{i32 786689, metadata !194, metadata !"GH", metadata !5, i32 33554716, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 284]
!198 = metadata !{i32 786689, metadata !194, metadata !"sym", metadata !5, i32 50331932, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 284]
!199 = metadata !{i32 786689, metadata !194, metadata !"cctk_str1", metadata !5, i32 67109148, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 284]
!200 = metadata !{i32 786689, metadata !194, metadata !"cctk_strlen1", metadata !5, i32 83886364, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 284]
!201 = metadata !{i32 786688, metadata !194, metadata !"gn", metadata !5, i32 286, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gn] [line 286]
!202 = metadata !{metadata !203}
!203 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 22, metadata !8, i32 1, i32 1, null, null}
!204 = metadata !{i32 24, i32 0, metadata !4, null}
!205 = metadata !{i32 74, i32 0, metadata !11, null}
!206 = metadata !{i32 79, i32 0, metadata !11, null}
!207 = metadata !{i32 84, i32 0, metadata !11, null}
!208 = metadata !{metadata !"any pointer", metadata !209}
!209 = metadata !{metadata !"omnipotent char", metadata !210}
!210 = metadata !{metadata !"Simple C/C++ TBAA"}
!211 = metadata !{i32 97, i32 0, metadata !11, null}
!212 = metadata !{i32 98, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !11, i32 98, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!214 = metadata !{i32 106, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !216, i32 105, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!216 = metadata !{i32 786443, metadata !1, metadata !213, i32 99, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!217 = metadata !{i32 100, i32 0, metadata !216, null}
!218 = metadata !{metadata !"int", metadata !209}
!219 = metadata !{i32 102, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !216, i32 101, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!221 = metadata !{i32 103, i32 0, metadata !220, null}
!222 = metadata !{i8* undef}
!223 = metadata !{i32 116, i32 0, metadata !11, null}
!224 = metadata !{i32 120, i32 0, metadata !108, null}
!225 = metadata !{i32 122, i32 0, metadata !108, null}
!226 = metadata !{i32 123, i32 0, metadata !108, null}
!227 = metadata !{i32 141, i32 0, metadata !116, null}
!228 = metadata !{i32 143, i32 0, metadata !116, null}
!229 = metadata !{i32 145, i32 0, metadata !116, null}
!230 = metadata !{i32 147, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !116, i32 146, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!232 = metadata !{i32 151, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !116, i32 150, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!234 = metadata !{i32 153, i32 0, metadata !233, null}
!235 = metadata !{i32 155, i32 0, metadata !116, null}
!236 = metadata !{i32 158, i32 0, metadata !124, null}
!237 = metadata !{i32 160, i32 0, metadata !124, null}
!238 = metadata !{i32 161, i32 0, metadata !124, null}
!239 = metadata !{i32 162, i32 0, metadata !124, null}
!240 = metadata !{i32 163, i32 0, metadata !124, null}
!241 = metadata !{i32 183, i32 0, metadata !136, null}
!242 = metadata !{i32 188, i32 0, metadata !136, null}
!243 = metadata !{i32 193, i32 0, metadata !136, null}
!244 = metadata !{i32 195, i32 0, metadata !136, null}
!245 = metadata !{i32 196, i32 0, metadata !136, null}
!246 = metadata !{i32 198, i32 0, metadata !136, null}
!247 = metadata !{i32 212, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !136, i32 212, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!249 = metadata !{i32 220, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !248, i32 213, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!251 = metadata !{i32 229, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !253, i32 228, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!253 = metadata !{i32 786443, metadata !1, metadata !254, i32 222, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!254 = metadata !{i32 786443, metadata !1, metadata !250, i32 221, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!255 = metadata !{i32 202, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !136, i32 199, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!257 = metadata !{i32 203, i32 0, metadata !256, null}
!258 = metadata !{i32 221, i32 0, metadata !254, null}
!259 = metadata !{i32 223, i32 0, metadata !253, null}
!260 = metadata !{i32 225, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !253, i32 224, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!262 = metadata !{i32 226, i32 0, metadata !261, null}
!263 = metadata !{i32 240, i32 0, metadata !136, null}
!264 = metadata !{i32 244, i32 0, metadata !182, null}
!265 = metadata !{i32 246, i32 0, metadata !182, null}
!266 = metadata !{i32 247, i32 0, metadata !182, null}
!267 = metadata !{i32 267, i32 0, metadata !188, null}
!268 = metadata !{i32 269, i32 0, metadata !188, null}
!269 = metadata !{i32 271, i32 0, metadata !188, null}
!270 = metadata !{i32 273, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !188, i32 272, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!272 = metadata !{i32 277, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !188, i32 276, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c]
!274 = metadata !{i32 279, i32 0, metadata !273, null}
!275 = metadata !{i32 281, i32 0, metadata !188, null}
!276 = metadata !{i32 284, i32 0, metadata !194, null}
!277 = metadata !{i32 286, i32 0, metadata !194, null}
!278 = metadata !{i32 287, i32 0, metadata !194, null}
!279 = metadata !{i32 288, i32 0, metadata !194, null}
!280 = metadata !{i32 289, i32 0, metadata !194, null}
