; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@gridrest_ = external global %struct.anon
@cartgrid3dpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [77 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"CartSymGI: Cannot find group %d (%s)\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"Symmetry\00", align 1
@.str4 = private unnamed_addr constant [30 x i8] c"Symmetries unspecified for %s\00", align 1
@.str5 = private unnamed_addr constant [30 x i8] c"No Symmetries for GF of dim>3\00", align 1
@.str6 = private unnamed_addr constant [32 x i8] c"CartSymGN: Cannot find group %s\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str8 = private unnamed_addr constant [48 x i8] c"Cannot find variable index %d (%s) in CartSymVI\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"No Symmetries for GF dim>3\00", align 1
@.str10 = private unnamed_addr constant [37 x i8] c"Cannot find variable %s in CartSymVN\00", align 1
@.str11 = private unnamed_addr constant [101 x i8] c"$Header: /cactus/CactusBase/CartGrid3D/src/SymmetryWrappers.c,v 1.15 2001/08/18 21:40:41 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_SymmetryWrappers_c() #0 {
entry:
  ret i8* getelementptr inbounds ([101 x i8]* @.str11, i64 0, i64 0), !dbg !209
}

; Function Attrs: nounwind optsize uwtable
define i32 @CartSymGI(%struct.cGH* %GH, i32 %gi) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !53), !dbg !210
  tail call void @llvm.dbg.value(metadata !{i32 %gi}, i64 0, metadata !54), !dbg !210
  %0 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 0), align 4, !dbg !211, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !79), !dbg !211
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 1), align 4, !dbg !211, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !80), !dbg !211
  %2 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 2), align 4, !dbg !211, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !81), !dbg !211
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 3), align 4, !dbg !211, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !82), !dbg !211
  %4 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 4), align 4, !dbg !211, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !83), !dbg !211
  %5 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 5), align 4, !dbg !211, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !84), !dbg !211
  %6 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 6), align 4, !dbg !211, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !85), !dbg !211
  %7 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 7), align 4, !dbg !211, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !86), !dbg !211
  tail call void @llvm.dbg.value(metadata !215, i64 0, metadata !99), !dbg !216
  tail call void @llvm.dbg.value(metadata !215, i64 0, metadata !100), !dbg !216
  %call = tail call i32 @CCTK_FirstVarIndexI(i32 %gi) #5, !dbg !217
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !96), !dbg !217
  %cmp = icmp slt i32 %call, 0, !dbg !218
  br i1 %cmp, label %if.then, label %if.end, !dbg !218

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @CCTK_GroupName(i32 %gi) #5, !dbg !219
  %call2 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 92, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0), i32 %gi, i8* %call1) #5, !dbg !219
  br label %return, !dbg !221

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi) #5, !dbg !222
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !94), !dbg !222
  %call4 = tail call i32 @CCTK_GroupDimI(i32 %gi) #5, !dbg !223
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !98), !dbg !223
  %call5 = tail call i32 @CCTK_GHExtensionHandle(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !224
  %idxprom = sext i32 %call5 to i64, !dbg !224
  %extensions = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18, !dbg !224
  %8 = load i8*** %extensions, align 8, !dbg !224, !tbaa !225
  %arrayidx = getelementptr inbounds i8** %8, i64 %idxprom, !dbg !224
  %9 = load i8** %arrayidx, align 8, !dbg !224, !tbaa !225
  %mul = shl nsw i32 %call4, 1, !dbg !226
  %conv = sext i32 %mul to i64, !dbg !226
  %mul6 = shl nsw i64 %conv, 2, !dbg !226
  %call7 = tail call noalias i8* @malloc(i64 %mul6) #5, !dbg !226
  %10 = bitcast i8* %call7 to i32*, !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32* %10}, i64 0, metadata !102), !dbg !226
  %conv8 = sext i32 %call4 to i64, !dbg !227
  %mul9 = shl nsw i64 %conv8, 2, !dbg !227
  %call10 = tail call noalias i8* @malloc(i64 %mul9) #5, !dbg !227
  %11 = bitcast i8* %call10 to i32*, !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32* %11}, i64 0, metadata !103), !dbg !227
  %call13 = tail call noalias i8* @malloc(i64 %mul9) #5, !dbg !228
  %12 = bitcast i8* %call13 to i32*, !dbg !228
  tail call void @llvm.dbg.value(metadata !{i32* %12}, i64 0, metadata !104), !dbg !228
  %call16 = tail call noalias i8* @malloc(i64 %mul9) #5, !dbg !229
  %13 = bitcast i8* %call16 to i32*, !dbg !229
  tail call void @llvm.dbg.value(metadata !{i32* %13}, i64 0, metadata !105), !dbg !229
  %call17 = tail call i32 @CCTK_GroupStaggerDirArrayGI(i32* %11, i32 %call4, i32 %gi) #5, !dbg !230
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !100), !dbg !230
  %tobool.not = icmp eq i32 %4, 0, !dbg !231
  %tobool18 = icmp eq i32 %5, 0, !dbg !231
  %or.cond = or i1 %tobool.not, %tobool18, !dbg !231
  %tobool20 = icmp eq i32 %0, 0, !dbg !231
  %or.cond216 = or i1 %or.cond, %tobool20, !dbg !231
  %tobool21 = icmp ne i32 %1, 0, !dbg !231
  %not.or.cond216 = xor i1 %or.cond216, true, !dbg !231
  %.tobool21 = and i1 %tobool21, %not.or.cond216, !dbg !231
  %land.ext = zext i1 %.tobool21 to i32
  store i32 %land.ext, i32* %13, align 4, !tbaa !212
  %tobool25 = icmp eq i32 %6, 0, !dbg !232
  %or.cond218 = or i1 %tobool.not, %tobool25, !dbg !232
  %or.cond219 = or i1 %or.cond218, %tobool20, !dbg !232
  %tobool29 = icmp ne i32 %2, 0, !dbg !232
  %not.or.cond219 = xor i1 %or.cond219, true, !dbg !232
  %.tobool29 = and i1 %tobool29, %not.or.cond219, !dbg !232
  %land.ext31 = zext i1 %.tobool29 to i32
  %arrayidx32 = getelementptr inbounds i8* %call16, i64 4
  %14 = bitcast i8* %arrayidx32 to i32*
  store i32 %land.ext31, i32* %14, align 4, !tbaa !212
  %tobool35 = icmp eq i32 %7, 0, !dbg !233
  %or.cond221 = or i1 %tobool.not, %tobool35, !dbg !233
  %or.cond222 = or i1 %or.cond221, %tobool20, !dbg !233
  %tobool39 = icmp ne i32 %3, 0, !dbg !233
  %not.or.cond222 = xor i1 %or.cond222, true, !dbg !233
  %.tobool39 = and i1 %tobool39, %not.or.cond222, !dbg !233
  %land.ext41 = zext i1 %.tobool39 to i32
  %arrayidx42 = getelementptr inbounds i8* %call16, i64 8
  %15 = bitcast i8* %arrayidx42 to i32*
  store i32 %land.ext41, i32* %15, align 4, !tbaa !212
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !101), !dbg !234
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !95), !dbg !235
  %add = add nsw i32 %call3, %call, !dbg !235
  %cmp43226 = icmp sgt i32 %call3, 0, !dbg !235
  br i1 %cmp43226, label %for.cond45.preheader.lr.ph, label %for.end140, !dbg !235

for.cond45.preheader.lr.ph:                       ; preds = %if.end
  %cmp46224 = icmp sgt i32 %call4, 0, !dbg !237
  %cctk_nghostzones = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !240
  %GFSym106 = bitcast i8* %9 to i32***, !dbg !240
  %data = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !240
  %cctk_lssh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !242
  %cctk_bbox = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !244
  %16 = sext i32 %call to i64
  br label %for.cond45.preheader, !dbg !235

for.cond45.preheader:                             ; preds = %for.cond45.preheader.lr.ph, %sw.epilog
  %indvars.iv228 = phi i64 [ %16, %for.cond45.preheader.lr.ph ], [ %indvars.iv.next229, %sw.epilog ]
  br i1 %cmp46224, label %for.body48.lr.ph, label %for.end, !dbg !237

for.body48.lr.ph:                                 ; preds = %for.cond45.preheader
  %.pre = load i32*** %GFSym106, align 8, !dbg !245, !tbaa !225
  %arrayidx52.phi.trans.insert = getelementptr inbounds i32** %.pre, i64 %indvars.iv228
  %.pre230 = load i32** %arrayidx52.phi.trans.insert, align 8, !dbg !245, !tbaa !225
  br label %for.body48, !dbg !237

for.body48:                                       ; preds = %land.end96, %for.body48.lr.ph
  %17 = phi i32* [ %.pre230, %for.body48.lr.ph ], [ %21, %land.end96 ]
  %indvars.iv = phi i64 [ 0, %for.body48.lr.ph ], [ %indvars.iv.next, %land.end96 ]
  %18 = trunc i64 %indvars.iv to i32, !dbg !245
  %mul49 = shl nsw i32 %18, 1, !dbg !245
  %idxprom50 = sext i32 %mul49 to i64, !dbg !245
  %arrayidx53 = getelementptr inbounds i32* %17, i64 %idxprom50, !dbg !245
  %19 = load i32* %arrayidx53, align 4, !dbg !245, !tbaa !212
  %cmp54 = icmp eq i32 %19, -42, !dbg !245
  br i1 %cmp54, label %if.then56, label %if.end59, !dbg !245

if.then56:                                        ; preds = %for.body48
  %20 = trunc i64 %indvars.iv228 to i32, !dbg !246
  %call57 = tail call i8* @CCTK_FullName(i32 %20) #5, !dbg !246
  %call58 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 140, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0), i8* %call57) #5, !dbg !246
  %.pre231 = load i32*** %GFSym106, align 8, !dbg !244, !tbaa !225
  %arrayidx72.phi.trans.insert = getelementptr inbounds i32** %.pre231, i64 %indvars.iv228
  %.pre232 = load i32** %arrayidx72.phi.trans.insert, align 8, !dbg !244, !tbaa !225
  br label %if.end59, !dbg !248

if.end59:                                         ; preds = %for.body48, %if.then56
  %21 = phi i32* [ %.pre232, %if.then56 ], [ %17, %for.body48 ], !dbg !242
  %arrayidx61 = getelementptr inbounds i32* %11, i64 %indvars.iv, !dbg !242
  %22 = load i32* %arrayidx61, align 4, !dbg !242, !tbaa !212
  %mul62 = mul nsw i32 %18, 3, !dbg !242
  %add63 = add nsw i32 %22, %mul62, !dbg !242
  %idxprom64 = sext i32 %add63 to i64, !dbg !242
  %23 = load i32** %cctk_lssh, align 8, !dbg !242, !tbaa !225
  %arrayidx65 = getelementptr inbounds i32* %23, i64 %idxprom64, !dbg !242
  %24 = load i32* %arrayidx65, align 4, !dbg !242, !tbaa !212
  %arrayidx67 = getelementptr inbounds i32* %12, i64 %indvars.iv, !dbg !242
  store i32 %24, i32* %arrayidx67, align 4, !dbg !242, !tbaa !212
  %arrayidx73 = getelementptr inbounds i32* %21, i64 %idxprom50, !dbg !244
  %25 = load i32* %arrayidx73, align 4, !dbg !244, !tbaa !212
  %.off = add i32 %25, 42, !dbg !244
  %switch = icmp ugt i32 %.off, 1, !dbg !244
  %cmp88 = icmp sgt i32 %24, 1, !dbg !244
  %or.cond223 = and i1 %switch, %cmp88, !dbg !244
  br i1 %or.cond223, label %land.rhs90, label %land.end96, !dbg !244

land.rhs90:                                       ; preds = %if.end59
  %26 = load i32** %cctk_bbox, align 8, !dbg !244, !tbaa !225
  %arrayidx93 = getelementptr inbounds i32* %26, i64 %idxprom50, !dbg !244
  %27 = load i32* %arrayidx93, align 4, !dbg !244, !tbaa !212
  %cmp94 = icmp eq i32 %27, 1, !dbg !244
  br label %land.end96

land.end96:                                       ; preds = %if.end59, %land.rhs90
  %28 = phi i1 [ %cmp94, %land.rhs90 ], [ false, %if.end59 ]
  %land.ext97 = zext i1 %28 to i32
  %arrayidx100 = getelementptr inbounds i32* %10, i64 %idxprom50
  store i32 %land.ext97, i32* %arrayidx100, align 4, !tbaa !212
  %add102215 = or i32 %mul49, 1, !dbg !249
  %idxprom103 = sext i32 %add102215 to i64, !dbg !249
  %arrayidx104 = getelementptr inbounds i32* %10, i64 %idxprom103, !dbg !249
  store i32 0, i32* %arrayidx104, align 4, !dbg !249, !tbaa !212
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !237
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !237
  %exitcond = icmp eq i32 %lftr.wideiv, %call4, !dbg !237
  br i1 %exitcond, label %for.end, label %for.body48, !dbg !237

for.end:                                          ; preds = %land.end96, %for.cond45.preheader
  switch i32 %call4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb113
    i32 3, label %sw.bb124
  ], !dbg !250

sw.bb:                                            ; preds = %for.end
  %29 = load i32** %cctk_nghostzones, align 8, !dbg !240, !tbaa !225
  %30 = load i32*** %GFSym106, align 8, !dbg !240, !tbaa !225
  %arrayidx107 = getelementptr inbounds i32** %30, i64 %indvars.iv228, !dbg !240
  %31 = load i32** %arrayidx107, align 8, !dbg !240, !tbaa !225
  %32 = load i8**** %data, align 8, !dbg !240, !tbaa !225
  %arrayidx110 = getelementptr inbounds i8*** %32, i64 %indvars.iv228, !dbg !240
  %33 = load i8*** %arrayidx110, align 8, !dbg !240, !tbaa !225
  %34 = load i8** %33, align 8, !dbg !240, !tbaa !225
  %35 = bitcast i8* %34 to double*, !dbg !240
  %call112 = tail call i32 @CartApplySym1Di(%struct.cGH* %GH, i32* %10, i32* %13, i32* %12, i32* %29, i32* %31, double* %35) #5, !dbg !240
  tail call void @llvm.dbg.value(metadata !{i32 %call112}, i64 0, metadata !99), !dbg !240
  br label %sw.epilog, !dbg !251

sw.bb113:                                         ; preds = %for.end
  %36 = load i32** %cctk_nghostzones, align 8, !dbg !252, !tbaa !225
  %37 = load i32*** %GFSym106, align 8, !dbg !252, !tbaa !225
  %arrayidx117 = getelementptr inbounds i32** %37, i64 %indvars.iv228, !dbg !252
  %38 = load i32** %arrayidx117, align 8, !dbg !252, !tbaa !225
  %39 = load i8**** %data, align 8, !dbg !252, !tbaa !225
  %arrayidx121 = getelementptr inbounds i8*** %39, i64 %indvars.iv228, !dbg !252
  %40 = load i8*** %arrayidx121, align 8, !dbg !252, !tbaa !225
  %41 = load i8** %40, align 8, !dbg !252, !tbaa !225
  %42 = bitcast i8* %41 to double*, !dbg !252
  %call123 = tail call i32 @CartApplySym2Di(%struct.cGH* %GH, i32* %10, i32* %13, i32* %12, i32* %36, i32* %38, double* %42) #5, !dbg !252
  tail call void @llvm.dbg.value(metadata !{i32 %call123}, i64 0, metadata !99), !dbg !252
  br label %sw.epilog, !dbg !253

sw.bb124:                                         ; preds = %for.end
  %43 = load i32** %cctk_nghostzones, align 8, !dbg !254, !tbaa !225
  %44 = load i32*** %GFSym106, align 8, !dbg !254, !tbaa !225
  %arrayidx128 = getelementptr inbounds i32** %44, i64 %indvars.iv228, !dbg !254
  %45 = load i32** %arrayidx128, align 8, !dbg !254, !tbaa !225
  %46 = load i8**** %data, align 8, !dbg !254, !tbaa !225
  %arrayidx132 = getelementptr inbounds i8*** %46, i64 %indvars.iv228, !dbg !254
  %47 = load i8*** %arrayidx132, align 8, !dbg !254, !tbaa !225
  %48 = load i8** %47, align 8, !dbg !254, !tbaa !225
  %49 = bitcast i8* %48 to double*, !dbg !254
  %call134 = tail call i32 @CartApplySym3Di(%struct.cGH* %GH, i32* %10, i32* %13, i32* %12, i32* %43, i32* %45, double* %49) #5, !dbg !254
  tail call void @llvm.dbg.value(metadata !{i32 %call134}, i64 0, metadata !99), !dbg !254
  br label %sw.epilog, !dbg !255

sw.default:                                       ; preds = %for.end
  tail call void @llvm.dbg.value(metadata !215, i64 0, metadata !99), !dbg !256
  %call135 = tail call i32 @CCTK_Warn(i32 1, i32 187, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !256
  br label %sw.epilog, !dbg !257

sw.epilog:                                        ; preds = %sw.default, %sw.bb124, %sw.bb113, %sw.bb
  %indvars.iv.next229 = add i64 %indvars.iv228, 1, !dbg !235
  %50 = trunc i64 %indvars.iv.next229 to i32, !dbg !235
  %cmp43 = icmp slt i32 %50, %add, !dbg !235
  br i1 %cmp43, label %for.cond45.preheader, label %for.end140, !dbg !235

for.end140:                                       ; preds = %sw.epilog, %if.end
  tail call void @free(i8* %call10) #5, !dbg !258
  tail call void @free(i8* %call7) #5, !dbg !259
  tail call void @free(i8* %call13) #5, !dbg !260
  tail call void @free(i8* %call16) #5, !dbg !261
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !91), !dbg !263
  br label %return, !dbg !263

return:                                           ; preds = %for.end140, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call17, %for.end140 ]
  ret i32 %retval.0, !dbg !264
}

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupDimI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GHExtensionHandle(i8*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupStaggerDirArrayGI(i32*, i32, i32) #2

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #2

; Function Attrs: optsize
declare i32 @CartApplySym1Di(%struct.cGH*, i32*, i32*, i32*, i32*, i32*, double*) #2

; Function Attrs: optsize
declare i32 @CartApplySym2Di(%struct.cGH*, i32*, i32*, i32*, i32*, i32*, double*) #2

; Function Attrs: optsize
declare i32 @CartApplySym3Di(%struct.cGH*, i32*, i32*, i32*, i32*, i32*, double*) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @cartsymgi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture %gi) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !118), !dbg !265
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !119), !dbg !265
  tail call void @llvm.dbg.value(metadata !{i32* %gi}, i64 0, metadata !120), !dbg !265
  %0 = load i32* %gi, align 4, !dbg !266, !tbaa !212
  %call = tail call i32 @CartSymGI(%struct.cGH* %GH, i32 %0) #6, !dbg !266
  store i32 %call, i32* %ierr, align 4, !dbg !266, !tbaa !212
  ret void, !dbg !267
}

; Function Attrs: nounwind optsize uwtable
define i32 @CartSymGN(%struct.cGH* %GH, i8* %gn) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !125), !dbg !268
  tail call void @llvm.dbg.value(metadata !{i8* %gn}, i64 0, metadata !126), !dbg !268
  %call = tail call i32 @CCTK_GroupIndex(i8* %gn) #5, !dbg !269
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !127), !dbg !269
  tail call void @llvm.dbg.value(metadata !215, i64 0, metadata !128), !dbg !270
  %cmp = icmp sgt i32 %call, -1, !dbg !271
  br i1 %cmp, label %if.then, label %if.else, !dbg !271

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @CartSymGI(%struct.cGH* %GH, i32 %call) #6, !dbg !272
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !128), !dbg !272
  br label %if.end, !dbg !274

if.else:                                          ; preds = %entry
  %call3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 233, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str6, i64 0, i64 0), i8* %gn) #5, !dbg !275
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call2, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !277
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @cartsymgn_(i32* nocapture %ierr, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !135), !dbg !278
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !136), !dbg !278
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !137), !dbg !278
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !138), !dbg !278
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !279
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !139), !dbg !279
  %call1 = tail call i32 @CartSymGN(%struct.cGH* %GH, i8* %call) #6, !dbg !280
  store i32 %call1, i32* %ierr, align 4, !dbg !280, !tbaa !212
  tail call void @free(i8* %call) #5, !dbg !281
  ret void, !dbg !282
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @CartSymVI(%struct.cGH* %GH, i32 %vi) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !142), !dbg !283
  tail call void @llvm.dbg.value(metadata !{i32 %vi}, i64 0, metadata !143), !dbg !283
  %0 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 13), align 8, !dbg !284, !tbaa !225
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !157), !dbg !284
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 0), align 4, !dbg !284, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !166), !dbg !284
  %2 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 1), align 4, !dbg !284, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !167), !dbg !284
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 2), align 4, !dbg !284, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !168), !dbg !284
  %4 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 3), align 4, !dbg !284, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !169), !dbg !284
  %5 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 4), align 4, !dbg !284, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !170), !dbg !284
  %6 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 5), align 4, !dbg !284, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !171), !dbg !284
  %7 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 6), align 4, !dbg !284, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !172), !dbg !284
  %8 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 7), align 4, !dbg !284, !tbaa !212
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !173), !dbg !284
  tail call void @llvm.dbg.value(metadata !215, i64 0, metadata !182), !dbg !285
  %call = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !286
  %tobool = icmp eq i32 %call, 0, !dbg !286
  br i1 %tobool, label %if.end, label %return, !dbg !286

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vi) #5, !dbg !287
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !179), !dbg !287
  %cmp = icmp slt i32 %call1, 0, !dbg !288
  br i1 %cmp, label %if.then2, label %if.end5, !dbg !288

if.then2:                                         ; preds = %if.end
  %call3 = tail call i8* @CCTK_FullName(i32 %vi) #5, !dbg !289
  %call4 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 284, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str8, i64 0, i64 0), i32 %vi, i8* %call3) #5, !dbg !289
  br label %return, !dbg !291

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @CCTK_GroupDimI(i32 %call1) #5, !dbg !292
  tail call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !181), !dbg !292
  %call7 = tail call i32 @CCTK_GHExtensionHandle(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !293
  %idxprom = sext i32 %call7 to i64, !dbg !293
  %extensions = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18, !dbg !293
  %9 = load i8*** %extensions, align 8, !dbg !293, !tbaa !225
  %arrayidx = getelementptr inbounds i8** %9, i64 %idxprom, !dbg !293
  %10 = load i8** %arrayidx, align 8, !dbg !293, !tbaa !225
  %mul = shl nsw i32 %call6, 1, !dbg !294
  %conv = sext i32 %mul to i64, !dbg !294
  %mul8 = shl nsw i64 %conv, 2, !dbg !294
  %call9 = tail call noalias i8* @malloc(i64 %mul8) #5, !dbg !294
  %11 = bitcast i8* %call9 to i32*, !dbg !294
  tail call void @llvm.dbg.value(metadata !{i32* %11}, i64 0, metadata !184), !dbg !294
  %conv10 = sext i32 %call6 to i64, !dbg !295
  %mul11 = shl nsw i64 %conv10, 2, !dbg !295
  %call12 = tail call noalias i8* @malloc(i64 %mul11) #5, !dbg !295
  %12 = bitcast i8* %call12 to i32*, !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32* %12}, i64 0, metadata !185), !dbg !295
  %call15 = tail call noalias i8* @malloc(i64 %mul11) #5, !dbg !296
  %13 = bitcast i8* %call15 to i32*, !dbg !296
  tail call void @llvm.dbg.value(metadata !{i32* %13}, i64 0, metadata !186), !dbg !296
  %call18 = tail call noalias i8* @malloc(i64 %mul11) #5, !dbg !297
  %14 = bitcast i8* %call18 to i32*, !dbg !297
  tail call void @llvm.dbg.value(metadata !{i32* %14}, i64 0, metadata !187), !dbg !297
  %call19 = tail call i32 @CCTK_GroupStaggerDirArrayGI(i32* %12, i32 %call6, i32 %call1) #5, !dbg !298
  tail call void @llvm.dbg.value(metadata !{i32 %call19}, i64 0, metadata !182), !dbg !298
  %tobool20.not = icmp eq i32 %5, 0, !dbg !299
  %tobool21 = icmp eq i32 %6, 0, !dbg !299
  %or.cond = or i1 %tobool20.not, %tobool21, !dbg !299
  %tobool23 = icmp eq i32 %1, 0, !dbg !299
  %or.cond205 = or i1 %or.cond, %tobool23, !dbg !299
  %tobool24 = icmp ne i32 %2, 0, !dbg !299
  %not.or.cond205 = xor i1 %or.cond205, true, !dbg !299
  %.tobool24 = and i1 %tobool24, %not.or.cond205, !dbg !299
  %land.ext = zext i1 %.tobool24 to i32
  store i32 %land.ext, i32* %14, align 4, !tbaa !212
  %tobool28 = icmp eq i32 %7, 0, !dbg !300
  %or.cond207 = or i1 %tobool20.not, %tobool28, !dbg !300
  %or.cond208 = or i1 %or.cond207, %tobool23, !dbg !300
  %tobool32 = icmp ne i32 %3, 0, !dbg !300
  %not.or.cond208 = xor i1 %or.cond208, true, !dbg !300
  %.tobool32 = and i1 %tobool32, %not.or.cond208, !dbg !300
  %land.ext34 = zext i1 %.tobool32 to i32
  %arrayidx35 = getelementptr inbounds i8* %call18, i64 4
  %15 = bitcast i8* %arrayidx35 to i32*
  store i32 %land.ext34, i32* %15, align 4, !tbaa !212
  %tobool38 = icmp eq i32 %8, 0, !dbg !301
  %or.cond210 = or i1 %tobool20.not, %tobool38, !dbg !301
  %or.cond211 = or i1 %or.cond210, %tobool23, !dbg !301
  %tobool42 = icmp ne i32 %4, 0, !dbg !301
  %not.or.cond211 = xor i1 %or.cond211, true, !dbg !301
  %.tobool42 = and i1 %tobool42, %not.or.cond211, !dbg !301
  %land.ext44 = zext i1 %.tobool42 to i32
  %arrayidx45 = getelementptr inbounds i8* %call18, i64 8
  %16 = bitcast i8* %arrayidx45 to i32*
  store i32 %land.ext44, i32* %16, align 4, !tbaa !212
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !183), !dbg !302
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !180), !dbg !303
  %cmp46213 = icmp sgt i32 %call6, 0, !dbg !303
  br i1 %cmp46213, label %for.body.lr.ph, label %for.end, !dbg !303

for.body.lr.ph:                                   ; preds = %if.end5
  %idxprom50 = sext i32 %vi to i64, !dbg !305
  %GFSym = bitcast i8* %10 to i32***, !dbg !305
  %cctk_lssh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !307
  %cctk_bbox = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !308
  %.pre = load i32*** %GFSym, align 8, !dbg !305, !tbaa !225
  %arrayidx51.phi.trans.insert = getelementptr inbounds i32** %.pre, i64 %idxprom50
  %.pre215 = load i32** %arrayidx51.phi.trans.insert, align 8, !dbg !305, !tbaa !225
  br label %for.body, !dbg !303

for.body:                                         ; preds = %land.end93, %for.body.lr.ph
  %17 = phi i32* [ %.pre215, %for.body.lr.ph ], [ %20, %land.end93 ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %land.end93 ]
  %18 = trunc i64 %indvars.iv to i32, !dbg !305
  %mul48 = shl nsw i32 %18, 1, !dbg !305
  %idxprom49 = sext i32 %mul48 to i64, !dbg !305
  %arrayidx52 = getelementptr inbounds i32* %17, i64 %idxprom49, !dbg !305
  %19 = load i32* %arrayidx52, align 4, !dbg !305, !tbaa !212
  %cmp53 = icmp eq i32 %19, -42, !dbg !305
  br i1 %cmp53, label %if.then55, label %if.end58, !dbg !305

if.then55:                                        ; preds = %for.body
  %call56 = tail call i8* @CCTK_FullName(i32 %vi) #5, !dbg !309
  %call57 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 328, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0), i8* %call56) #5, !dbg !309
  %.pre216 = load i32*** %GFSym, align 8, !dbg !308, !tbaa !225
  %arrayidx70.phi.trans.insert = getelementptr inbounds i32** %.pre216, i64 %idxprom50
  %.pre217 = load i32** %arrayidx70.phi.trans.insert, align 8, !dbg !308, !tbaa !225
  br label %if.end58, !dbg !311

if.end58:                                         ; preds = %for.body, %if.then55
  %20 = phi i32* [ %.pre217, %if.then55 ], [ %17, %for.body ], !dbg !307
  %arrayidx60 = getelementptr inbounds i32* %12, i64 %indvars.iv, !dbg !307
  %21 = load i32* %arrayidx60, align 4, !dbg !307, !tbaa !212
  %mul61 = mul nsw i32 %18, 3, !dbg !307
  %add = add nsw i32 %21, %mul61, !dbg !307
  %idxprom62 = sext i32 %add to i64, !dbg !307
  %22 = load i32** %cctk_lssh, align 8, !dbg !307, !tbaa !225
  %arrayidx63 = getelementptr inbounds i32* %22, i64 %idxprom62, !dbg !307
  %23 = load i32* %arrayidx63, align 4, !dbg !307, !tbaa !212
  %arrayidx65 = getelementptr inbounds i32* %13, i64 %indvars.iv, !dbg !307
  store i32 %23, i32* %arrayidx65, align 4, !dbg !307, !tbaa !212
  %arrayidx71 = getelementptr inbounds i32* %20, i64 %idxprom49, !dbg !308
  %24 = load i32* %arrayidx71, align 4, !dbg !308, !tbaa !212
  %.off = add i32 %24, 42, !dbg !308
  %switch = icmp ugt i32 %.off, 1, !dbg !308
  %cmp86 = icmp sgt i32 %23, 1, !dbg !308
  %or.cond212 = and i1 %switch, %cmp86, !dbg !308
  br i1 %or.cond212, label %land.rhs88, label %land.end93, !dbg !308

land.rhs88:                                       ; preds = %if.end58
  %25 = load i32** %cctk_bbox, align 8, !dbg !308, !tbaa !225
  %arrayidx91 = getelementptr inbounds i32* %25, i64 %idxprom49, !dbg !308
  %26 = load i32* %arrayidx91, align 4, !dbg !308, !tbaa !212
  %tobool92 = icmp ne i32 %26, 0, !dbg !308
  br label %land.end93

land.end93:                                       ; preds = %if.end58, %land.rhs88
  %27 = phi i1 [ %tobool92, %land.rhs88 ], [ false, %if.end58 ]
  %land.ext94 = zext i1 %27 to i32
  %arrayidx97 = getelementptr inbounds i32* %11, i64 %idxprom49
  store i32 %land.ext94, i32* %arrayidx97, align 4, !tbaa !212
  %add99204 = or i32 %mul48, 1, !dbg !312
  %idxprom100 = sext i32 %add99204 to i64, !dbg !312
  %arrayidx101 = getelementptr inbounds i32* %11, i64 %idxprom100, !dbg !312
  store i32 0, i32* %arrayidx101, align 4, !dbg !312, !tbaa !212
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !303
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !303
  %exitcond = icmp eq i32 %lftr.wideiv, %call6, !dbg !303
  br i1 %exitcond, label %for.end, label %for.body, !dbg !303

for.end:                                          ; preds = %land.end93, %if.end5
  switch i32 %call6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb110
    i32 3, label %sw.bb121
  ], !dbg !313

sw.bb:                                            ; preds = %for.end
  %cctk_nghostzones = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !314
  %28 = load i32** %cctk_nghostzones, align 8, !dbg !314, !tbaa !225
  %idxprom102 = sext i32 %vi to i64, !dbg !314
  %GFSym103 = bitcast i8* %10 to i32***, !dbg !314
  %29 = load i32*** %GFSym103, align 8, !dbg !314, !tbaa !225
  %arrayidx104 = getelementptr inbounds i32** %29, i64 %idxprom102, !dbg !314
  %30 = load i32** %arrayidx104, align 8, !dbg !314, !tbaa !225
  %data = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !314
  %31 = load i8**** %data, align 8, !dbg !314, !tbaa !225
  %arrayidx107 = getelementptr inbounds i8*** %31, i64 %idxprom102, !dbg !314
  %32 = load i8*** %arrayidx107, align 8, !dbg !314, !tbaa !225
  %33 = load i8** %32, align 8, !dbg !314, !tbaa !225
  %34 = bitcast i8* %33 to double*, !dbg !314
  %call109 = tail call i32 @CartApplySym1Di(%struct.cGH* %GH, i32* %11, i32* %14, i32* %13, i32* %28, i32* %30, double* %34) #5, !dbg !314
  tail call void @llvm.dbg.value(metadata !{i32 %call109}, i64 0, metadata !182), !dbg !314
  br label %sw.epilog, !dbg !316

sw.bb110:                                         ; preds = %for.end
  %cctk_nghostzones111 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !317
  %35 = load i32** %cctk_nghostzones111, align 8, !dbg !317, !tbaa !225
  %idxprom112 = sext i32 %vi to i64, !dbg !317
  %GFSym113 = bitcast i8* %10 to i32***, !dbg !317
  %36 = load i32*** %GFSym113, align 8, !dbg !317, !tbaa !225
  %arrayidx114 = getelementptr inbounds i32** %36, i64 %idxprom112, !dbg !317
  %37 = load i32** %arrayidx114, align 8, !dbg !317, !tbaa !225
  %data117 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !317
  %38 = load i8**** %data117, align 8, !dbg !317, !tbaa !225
  %arrayidx118 = getelementptr inbounds i8*** %38, i64 %idxprom112, !dbg !317
  %39 = load i8*** %arrayidx118, align 8, !dbg !317, !tbaa !225
  %40 = load i8** %39, align 8, !dbg !317, !tbaa !225
  %41 = bitcast i8* %40 to double*, !dbg !317
  %call120 = tail call i32 @CartApplySym2Di(%struct.cGH* %GH, i32* %11, i32* %14, i32* %13, i32* %35, i32* %37, double* %41) #5, !dbg !317
  tail call void @llvm.dbg.value(metadata !{i32 %call120}, i64 0, metadata !182), !dbg !317
  br label %sw.epilog, !dbg !318

sw.bb121:                                         ; preds = %for.end
  %cctk_nghostzones122 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !319
  %42 = load i32** %cctk_nghostzones122, align 8, !dbg !319, !tbaa !225
  %idxprom123 = sext i32 %vi to i64, !dbg !319
  %GFSym124 = bitcast i8* %10 to i32***, !dbg !319
  %43 = load i32*** %GFSym124, align 8, !dbg !319, !tbaa !225
  %arrayidx125 = getelementptr inbounds i32** %43, i64 %idxprom123, !dbg !319
  %44 = load i32** %arrayidx125, align 8, !dbg !319, !tbaa !225
  %data128 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !319
  %45 = load i8**** %data128, align 8, !dbg !319, !tbaa !225
  %arrayidx129 = getelementptr inbounds i8*** %45, i64 %idxprom123, !dbg !319
  %46 = load i8*** %arrayidx129, align 8, !dbg !319, !tbaa !225
  %47 = load i8** %46, align 8, !dbg !319, !tbaa !225
  %48 = bitcast i8* %47 to double*, !dbg !319
  %call131 = tail call i32 @CartApplySym3Di(%struct.cGH* %GH, i32* %11, i32* %14, i32* %13, i32* %42, i32* %44, double* %48) #5, !dbg !319
  tail call void @llvm.dbg.value(metadata !{i32 %call131}, i64 0, metadata !182), !dbg !319
  br label %sw.epilog, !dbg !320

sw.default:                                       ; preds = %for.end
  tail call void @llvm.dbg.value(metadata !215, i64 0, metadata !182), !dbg !321
  %call132 = tail call i32 @CCTK_Warn(i32 1, i32 376, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !321
  br label %sw.epilog, !dbg !322

sw.epilog:                                        ; preds = %sw.default, %sw.bb121, %sw.bb110, %sw.bb
  %berr.0 = phi i32 [ -1, %sw.default ], [ %call131, %sw.bb121 ], [ %call120, %sw.bb110 ], [ %call109, %sw.bb ]
  tail call void @free(i8* %call15) #5, !dbg !323
  tail call void @free(i8* %call12) #5, !dbg !324
  tail call void @free(i8* %call9) #5, !dbg !325
  tail call void @free(i8* %call18) #5, !dbg !326
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  tail call void @llvm.dbg.value(metadata !262, i64 0, metadata !178), !dbg !327
  br label %return, !dbg !327

return:                                           ; preds = %entry, %sw.epilog, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ %berr.0, %sw.epilog ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !328
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @cartsymvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture %vi) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !191), !dbg !329
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !192), !dbg !329
  tail call void @llvm.dbg.value(metadata !{i32* %vi}, i64 0, metadata !193), !dbg !329
  %0 = load i32* %vi, align 4, !dbg !330, !tbaa !212
  %call = tail call i32 @CartSymVI(%struct.cGH* %GH, i32 %0) #6, !dbg !330
  store i32 %call, i32* %ierr, align 4, !dbg !330, !tbaa !212
  ret void, !dbg !331
}

; Function Attrs: nounwind optsize uwtable
define i32 @CartSymVN(%struct.cGH* %GH, i8* %vn) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !196), !dbg !332
  tail call void @llvm.dbg.value(metadata !{i8* %vn}, i64 0, metadata !197), !dbg !332
  tail call void @llvm.dbg.value(metadata !215, i64 0, metadata !198), !dbg !333
  %call = tail call i32 @CCTK_VarIndex(i8* %vn) #5, !dbg !334
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !199), !dbg !334
  %cmp = icmp sgt i32 %call, -1, !dbg !335
  br i1 %cmp, label %if.then, label %if.else, !dbg !335

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @CartSymVI(%struct.cGH* %GH, i32 %call) #6, !dbg !336
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !198), !dbg !336
  br label %if.end, !dbg !338

if.else:                                          ; preds = %entry
  %call3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 421, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str10, i64 0, i64 0), i8* %vn) #5, !dbg !339
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call2, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !341
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @cartsymvn_(i32* nocapture %ierr, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !202), !dbg !342
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !203), !dbg !342
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !204), !dbg !342
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !205), !dbg !342
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !343
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !206), !dbg !343
  %call1 = tail call i32 @CartSymVN(%struct.cGH* %GH, i8* %call) #6, !dbg !344
  store i32 %call1, i32* %ierr, align 4, !dbg !344, !tbaa !212
  tail call void @free(i8* %call) #5, !dbg !345
  ret void, !dbg !346
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !207, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !114, metadata !121, metadata !129, metadata !140, metadata !189, metadata !194, metadata !200}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_CartGrid3D_SymmetryWrappers_c", metadata !"CCTKi_version_CactusBase_CartGrid3D_SymmetryWrappers_c", metadata !"", i32 54, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_CartGrid3D_SymmetryWrappers_c, null, null, metadata !2, i32 54} ; [ DW_TAG_subprogram ] [line 54] [def] [CCTKi_version_CactusBase_CartGrid3D_SymmetryWrappers_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CartSymGI", metadata !"CartSymGI", metadata !"", i32 74, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @CartSymGI, null, null, metadata !52, i32 75} ; [ DW_TAG_subprogram ] [line 74] [def] [scope 75] [CartSymGI]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14}
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
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106}
!53 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777290, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 74]
!54 = metadata !{i32 786689, metadata !11, metadata !"gi", metadata !5, i32 33554506, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi] [line 74]
!55 = metadata !{i32 786688, metadata !11, metadata !"dx", metadata !5, i32 76, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 76]
!56 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!57 = metadata !{i32 786688, metadata !11, metadata !"dxyz", metadata !5, i32 76, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dxyz] [line 76]
!58 = metadata !{i32 786688, metadata !11, metadata !"dy", metadata !5, i32 76, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 76]
!59 = metadata !{i32 786688, metadata !11, metadata !"dz", metadata !5, i32 76, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 76]
!60 = metadata !{i32 786688, metadata !11, metadata !"xmax", metadata !5, i32 76, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmax] [line 76]
!61 = metadata !{i32 786688, metadata !11, metadata !"xmin", metadata !5, i32 76, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmin] [line 76]
!62 = metadata !{i32 786688, metadata !11, metadata !"xyzmax", metadata !5, i32 76, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmax] [line 76]
!63 = metadata !{i32 786688, metadata !11, metadata !"xyzmin", metadata !5, i32 76, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmin] [line 76]
!64 = metadata !{i32 786688, metadata !11, metadata !"ymax", metadata !5, i32 76, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymax] [line 76]
!65 = metadata !{i32 786688, metadata !11, metadata !"ymin", metadata !5, i32 76, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymin] [line 76]
!66 = metadata !{i32 786688, metadata !11, metadata !"zmax", metadata !5, i32 76, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmax] [line 76]
!67 = metadata !{i32 786688, metadata !11, metadata !"zmin", metadata !5, i32 76, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmin] [line 76]
!68 = metadata !{i32 786688, metadata !11, metadata !"bitant_plane", metadata !5, i32 76, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitant_plane] [line 76]
!69 = metadata !{i32 786688, metadata !11, metadata !"domain", metadata !5, i32 76, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 76]
!70 = metadata !{i32 786688, metadata !11, metadata !"quadrant_direction", metadata !5, i32 76, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quadrant_direction] [line 76]
!71 = metadata !{i32 786688, metadata !11, metadata !"type", metadata !5, i32 76, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 76]
!72 = metadata !{i32 786688, metadata !11, metadata !"symmetry_xmax", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmax] [line 76]
!73 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!74 = metadata !{i32 786688, metadata !11, metadata !"symmetry_xmin", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmin] [line 76]
!75 = metadata !{i32 786688, metadata !11, metadata !"symmetry_ymax", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymax] [line 76]
!76 = metadata !{i32 786688, metadata !11, metadata !"symmetry_ymin", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymin] [line 76]
!77 = metadata !{i32 786688, metadata !11, metadata !"symmetry_zmax", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmax] [line 76]
!78 = metadata !{i32 786688, metadata !11, metadata !"symmetry_zmin", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmin] [line 76]
!79 = metadata !{i32 786688, metadata !11, metadata !"avoid_origin", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_origin] [line 76]
!80 = metadata !{i32 786688, metadata !11, metadata !"avoid_originx", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originx] [line 76]
!81 = metadata !{i32 786688, metadata !11, metadata !"avoid_originy", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originy] [line 76]
!82 = metadata !{i32 786688, metadata !11, metadata !"avoid_originz", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originz] [line 76]
!83 = metadata !{i32 786688, metadata !11, metadata !"no_origin", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_origin] [line 76]
!84 = metadata !{i32 786688, metadata !11, metadata !"no_originx", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originx] [line 76]
!85 = metadata !{i32 786688, metadata !11, metadata !"no_originy", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originy] [line 76]
!86 = metadata !{i32 786688, metadata !11, metadata !"no_originz", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originz] [line 76]
!87 = metadata !{i32 786688, metadata !11, metadata !"periodic", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 76]
!88 = metadata !{i32 786688, metadata !11, metadata !"periodic_x", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 76]
!89 = metadata !{i32 786688, metadata !11, metadata !"periodic_y", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 76]
!90 = metadata !{i32 786688, metadata !11, metadata !"periodic_z", metadata !5, i32 76, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 76]
!91 = metadata !{i32 786688, metadata !11, metadata !"cctk_pdummy_pointer", metadata !5, i32 76, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 76]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!93 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{i32 786688, metadata !11, metadata !"numvars", metadata !5, i32 78, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [numvars] [line 78]
!95 = metadata !{i32 786688, metadata !11, metadata !"vi", metadata !5, i32 78, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vi] [line 78]
!96 = metadata !{i32 786688, metadata !11, metadata !"first_vi", metadata !5, i32 78, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first_vi] [line 78]
!97 = metadata !{i32 786688, metadata !11, metadata !"idim", metadata !5, i32 79, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idim] [line 79]
!98 = metadata !{i32 786688, metadata !11, metadata !"gdim", metadata !5, i32 79, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gdim] [line 79]
!99 = metadata !{i32 786688, metadata !11, metadata !"berr", metadata !5, i32 80, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [berr] [line 80]
!100 = metadata !{i32 786688, metadata !11, metadata !"ierr", metadata !5, i32 80, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 80]
!101 = metadata !{i32 786688, metadata !11, metadata !"time", metadata !5, i32 81, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time] [line 81]
!102 = metadata !{i32 786688, metadata !11, metadata !"doSym", metadata !5, i32 82, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [doSym] [line 82]
!103 = metadata !{i32 786688, metadata !11, metadata !"dstag", metadata !5, i32 82, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dstag] [line 82]
!104 = metadata !{i32 786688, metadata !11, metadata !"lssh", metadata !5, i32 82, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lssh] [line 82]
!105 = metadata !{i32 786688, metadata !11, metadata !"cntstag", metadata !5, i32 82, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cntstag] [line 82]
!106 = metadata !{i32 786688, metadata !11, metadata !"sGHex", metadata !5, i32 83, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sGHex] [line 83]
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SymmetryGHex]
!108 = metadata !{i32 786454, metadata !1, null, metadata !"SymmetryGHex", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ] [SymmetryGHex] [line 36, size 0, align 0, offset 0] [from Symmetry]
!109 = metadata !{i32 786451, metadata !110, null, metadata !"Symmetry", i32 27, i64 64, i64 64, i32 0, i32 0, null, metadata !111, i32 0, null, null} ; [ DW_TAG_structure_type ] [Symmetry] [line 27, size 64, align 64, offset 0] [from ]
!110 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/../include/Symmetry.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 786445, metadata !110, metadata !109, metadata !"GFSym", i32 34, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [GFSym] [line 34, size 64, align 64, offset 0] [from ]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!114 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cartsymgi_", metadata !"cartsymgi_", metadata !"", i32 200, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*)* @cartsymgi_, null, null, metadata !117, i32 201} ; [ DW_TAG_subprogram ] [line 200] [def] [scope 201] [cartsymgi_]
!115 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!116 = metadata !{null, metadata !23, metadata !15, metadata !23}
!117 = metadata !{metadata !118, metadata !119, metadata !120}
!118 = metadata !{i32 786689, metadata !114, metadata !"ierr", metadata !5, i32 16777416, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 200]
!119 = metadata !{i32 786689, metadata !114, metadata !"GH", metadata !5, i32 33554632, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 200]
!120 = metadata !{i32 786689, metadata !114, metadata !"gi", metadata !5, i32 50331848, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi] [line 200]
!121 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CartSymGN", metadata !"CartSymGN", metadata !"", i32 223, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CartSymGN, null, null, metadata !124, i32 224} ; [ DW_TAG_subprogram ] [line 223] [def] [scope 224] [CartSymGN]
!122 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!123 = metadata !{metadata !14, metadata !15, metadata !8}
!124 = metadata !{metadata !125, metadata !126, metadata !127, metadata !128}
!125 = metadata !{i32 786689, metadata !121, metadata !"GH", metadata !5, i32 16777439, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 223]
!126 = metadata !{i32 786689, metadata !121, metadata !"gn", metadata !5, i32 33554655, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gn] [line 223]
!127 = metadata !{i32 786688, metadata !121, metadata !"gi", metadata !5, i32 225, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gi] [line 225]
!128 = metadata !{i32 786688, metadata !121, metadata !"retval", metadata !5, i32 226, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 226]
!129 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cartsymgn_", metadata !"cartsymgn_", metadata !"", i32 239, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i8*, i32)* @cartsymgn_, null, null, metadata !134, i32 241} ; [ DW_TAG_subprogram ] [line 239] [def] [scope 241] [cartsymgn_]
!130 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{null, metadata !23, metadata !15, metadata !132, metadata !133}
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!133 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!134 = metadata !{metadata !135, metadata !136, metadata !137, metadata !138, metadata !139}
!135 = metadata !{i32 786689, metadata !129, metadata !"ierr", metadata !5, i32 16777456, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 240]
!136 = metadata !{i32 786689, metadata !129, metadata !"GH", metadata !5, i32 33554672, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 240]
!137 = metadata !{i32 786689, metadata !129, metadata !"cctk_str1", metadata !5, i32 50331888, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 240]
!138 = metadata !{i32 786689, metadata !129, metadata !"cctk_strlen1", metadata !5, i32 67109104, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 240]
!139 = metadata !{i32 786688, metadata !129, metadata !"gn", metadata !5, i32 242, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gn] [line 242]
!140 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CartSymVI", metadata !"CartSymVI", metadata !"", i32 264, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @CartSymVI, null, null, metadata !141, i32 265} ; [ DW_TAG_subprogram ] [line 264] [def] [scope 265] [CartSymVI]
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188}
!142 = metadata !{i32 786689, metadata !140, metadata !"GH", metadata !5, i32 16777480, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 264]
!143 = metadata !{i32 786689, metadata !140, metadata !"vi", metadata !5, i32 33554696, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi] [line 264]
!144 = metadata !{i32 786688, metadata !140, metadata !"dx", metadata !5, i32 266, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 266]
!145 = metadata !{i32 786688, metadata !140, metadata !"dxyz", metadata !5, i32 266, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dxyz] [line 266]
!146 = metadata !{i32 786688, metadata !140, metadata !"dy", metadata !5, i32 266, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 266]
!147 = metadata !{i32 786688, metadata !140, metadata !"dz", metadata !5, i32 266, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 266]
!148 = metadata !{i32 786688, metadata !140, metadata !"xmax", metadata !5, i32 266, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmax] [line 266]
!149 = metadata !{i32 786688, metadata !140, metadata !"xmin", metadata !5, i32 266, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmin] [line 266]
!150 = metadata !{i32 786688, metadata !140, metadata !"xyzmax", metadata !5, i32 266, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmax] [line 266]
!151 = metadata !{i32 786688, metadata !140, metadata !"xyzmin", metadata !5, i32 266, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmin] [line 266]
!152 = metadata !{i32 786688, metadata !140, metadata !"ymax", metadata !5, i32 266, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymax] [line 266]
!153 = metadata !{i32 786688, metadata !140, metadata !"ymin", metadata !5, i32 266, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymin] [line 266]
!154 = metadata !{i32 786688, metadata !140, metadata !"zmax", metadata !5, i32 266, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmax] [line 266]
!155 = metadata !{i32 786688, metadata !140, metadata !"zmin", metadata !5, i32 266, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmin] [line 266]
!156 = metadata !{i32 786688, metadata !140, metadata !"bitant_plane", metadata !5, i32 266, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitant_plane] [line 266]
!157 = metadata !{i32 786688, metadata !140, metadata !"domain", metadata !5, i32 266, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 266]
!158 = metadata !{i32 786688, metadata !140, metadata !"quadrant_direction", metadata !5, i32 266, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quadrant_direction] [line 266]
!159 = metadata !{i32 786688, metadata !140, metadata !"type", metadata !5, i32 266, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 266]
!160 = metadata !{i32 786688, metadata !140, metadata !"symmetry_xmax", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmax] [line 266]
!161 = metadata !{i32 786688, metadata !140, metadata !"symmetry_xmin", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmin] [line 266]
!162 = metadata !{i32 786688, metadata !140, metadata !"symmetry_ymax", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymax] [line 266]
!163 = metadata !{i32 786688, metadata !140, metadata !"symmetry_ymin", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymin] [line 266]
!164 = metadata !{i32 786688, metadata !140, metadata !"symmetry_zmax", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmax] [line 266]
!165 = metadata !{i32 786688, metadata !140, metadata !"symmetry_zmin", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmin] [line 266]
!166 = metadata !{i32 786688, metadata !140, metadata !"avoid_origin", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_origin] [line 266]
!167 = metadata !{i32 786688, metadata !140, metadata !"avoid_originx", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originx] [line 266]
!168 = metadata !{i32 786688, metadata !140, metadata !"avoid_originy", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originy] [line 266]
!169 = metadata !{i32 786688, metadata !140, metadata !"avoid_originz", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originz] [line 266]
!170 = metadata !{i32 786688, metadata !140, metadata !"no_origin", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_origin] [line 266]
!171 = metadata !{i32 786688, metadata !140, metadata !"no_originx", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originx] [line 266]
!172 = metadata !{i32 786688, metadata !140, metadata !"no_originy", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originy] [line 266]
!173 = metadata !{i32 786688, metadata !140, metadata !"no_originz", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originz] [line 266]
!174 = metadata !{i32 786688, metadata !140, metadata !"periodic", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 266]
!175 = metadata !{i32 786688, metadata !140, metadata !"periodic_x", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 266]
!176 = metadata !{i32 786688, metadata !140, metadata !"periodic_y", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 266]
!177 = metadata !{i32 786688, metadata !140, metadata !"periodic_z", metadata !5, i32 266, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 266]
!178 = metadata !{i32 786688, metadata !140, metadata !"cctk_pdummy_pointer", metadata !5, i32 266, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 266]
!179 = metadata !{i32 786688, metadata !140, metadata !"gi", metadata !5, i32 268, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gi] [line 268]
!180 = metadata !{i32 786688, metadata !140, metadata !"idim", metadata !5, i32 269, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idim] [line 269]
!181 = metadata !{i32 786688, metadata !140, metadata !"gdim", metadata !5, i32 269, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gdim] [line 269]
!182 = metadata !{i32 786688, metadata !140, metadata !"berr", metadata !5, i32 270, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [berr] [line 270]
!183 = metadata !{i32 786688, metadata !140, metadata !"time", metadata !5, i32 271, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time] [line 271]
!184 = metadata !{i32 786688, metadata !140, metadata !"doSym", metadata !5, i32 272, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [doSym] [line 272]
!185 = metadata !{i32 786688, metadata !140, metadata !"dstag", metadata !5, i32 272, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dstag] [line 272]
!186 = metadata !{i32 786688, metadata !140, metadata !"lssh", metadata !5, i32 272, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lssh] [line 272]
!187 = metadata !{i32 786688, metadata !140, metadata !"cntstag", metadata !5, i32 272, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cntstag] [line 272]
!188 = metadata !{i32 786688, metadata !140, metadata !"sGHex", metadata !5, i32 273, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sGHex] [line 273]
!189 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cartsymvi_", metadata !"cartsymvi_", metadata !"", i32 387, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*)* @cartsymvi_, null, null, metadata !190, i32 388} ; [ DW_TAG_subprogram ] [line 387] [def] [scope 388] [cartsymvi_]
!190 = metadata !{metadata !191, metadata !192, metadata !193}
!191 = metadata !{i32 786689, metadata !189, metadata !"ierr", metadata !5, i32 16777603, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 387]
!192 = metadata !{i32 786689, metadata !189, metadata !"GH", metadata !5, i32 33554819, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 387]
!193 = metadata !{i32 786689, metadata !189, metadata !"vi", metadata !5, i32 50332035, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi] [line 387]
!194 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CartSymVN", metadata !"CartSymVN", metadata !"", i32 410, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CartSymVN, null, null, metadata !195, i32 411} ; [ DW_TAG_subprogram ] [line 410] [def] [scope 411] [CartSymVN]
!195 = metadata !{metadata !196, metadata !197, metadata !198, metadata !199}
!196 = metadata !{i32 786689, metadata !194, metadata !"GH", metadata !5, i32 16777626, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 410]
!197 = metadata !{i32 786689, metadata !194, metadata !"vn", metadata !5, i32 33554842, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vn] [line 410]
!198 = metadata !{i32 786688, metadata !194, metadata !"retval", metadata !5, i32 412, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 412]
!199 = metadata !{i32 786688, metadata !194, metadata !"vi", metadata !5, i32 413, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vi] [line 413]
!200 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cartsymvn_", metadata !"cartsymvn_", metadata !"", i32 427, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i8*, i32)* @cartsymvn_, null, null, metadata !201, i32 429} ; [ DW_TAG_subprogram ] [line 427] [def] [scope 429] [cartsymvn_]
!201 = metadata !{metadata !202, metadata !203, metadata !204, metadata !205, metadata !206}
!202 = metadata !{i32 786689, metadata !200, metadata !"ierr", metadata !5, i32 16777644, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 428]
!203 = metadata !{i32 786689, metadata !200, metadata !"GH", metadata !5, i32 33554860, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 428]
!204 = metadata !{i32 786689, metadata !200, metadata !"cctk_str1", metadata !5, i32 50332076, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 428]
!205 = metadata !{i32 786689, metadata !200, metadata !"cctk_strlen1", metadata !5, i32 67109292, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 428]
!206 = metadata !{i32 786688, metadata !200, metadata !"vn", metadata !5, i32 430, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vn] [line 430]
!207 = metadata !{metadata !208}
!208 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 52, metadata !8, i32 1, i32 1, null, null}
!209 = metadata !{i32 54, i32 0, metadata !4, null}
!210 = metadata !{i32 74, i32 0, metadata !11, null}
!211 = metadata !{i32 76, i32 0, metadata !11, null}
!212 = metadata !{metadata !"int", metadata !213}
!213 = metadata !{metadata !"omnipotent char", metadata !214}
!214 = metadata !{metadata !"Simple C/C++ TBAA"}
!215 = metadata !{i32 -1}
!216 = metadata !{i32 80, i32 0, metadata !11, null}
!217 = metadata !{i32 89, i32 0, metadata !11, null}
!218 = metadata !{i32 90, i32 0, metadata !11, null}
!219 = metadata !{i32 93, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !11, i32 91, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!221 = metadata !{i32 94, i32 0, metadata !220, null}
!222 = metadata !{i32 97, i32 0, metadata !11, null}
!223 = metadata !{i32 98, i32 0, metadata !11, null}
!224 = metadata !{i32 101, i32 0, metadata !11, null}
!225 = metadata !{metadata !"any pointer", metadata !213}
!226 = metadata !{i32 102, i32 0, metadata !11, null}
!227 = metadata !{i32 103, i32 0, metadata !11, null}
!228 = metadata !{i32 104, i32 0, metadata !11, null}
!229 = metadata !{i32 105, i32 0, metadata !11, null}
!230 = metadata !{i32 108, i32 0, metadata !11, null}
!231 = metadata !{i32 113, i32 0, metadata !11, null}
!232 = metadata !{i32 114, i32 0, metadata !11, null}
!233 = metadata !{i32 115, i32 0, metadata !11, null}
!234 = metadata !{i32 118, i32 0, metadata !11, null}
!235 = metadata !{i32 124, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !11, i32 124, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!237 = metadata !{i32 136, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !239, i32 136, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!239 = metadata !{i32 786443, metadata !1, metadata !236, i32 125, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!240 = metadata !{i32 166, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !239, i32 165, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!242 = metadata !{i32 144, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !238, i32 137, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!244 = metadata !{i32 146, i32 0, metadata !243, null}
!245 = metadata !{i32 138, i32 0, metadata !243, null}
!246 = metadata !{i32 141, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !243, i32 139, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!248 = metadata !{i32 142, i32 0, metadata !247, null}
!249 = metadata !{i32 149, i32 0, metadata !243, null}
!250 = metadata !{i32 164, i32 0, metadata !239, null}
!251 = metadata !{i32 172, i32 0, metadata !241, null}
!252 = metadata !{i32 173, i32 0, metadata !241, null}
!253 = metadata !{i32 179, i32 0, metadata !241, null}
!254 = metadata !{i32 180, i32 0, metadata !241, null}
!255 = metadata !{i32 186, i32 0, metadata !241, null}
!256 = metadata !{i32 187, i32 0, metadata !241, null}
!257 = metadata !{i32 188, i32 0, metadata !241, null}
!258 = metadata !{i32 192, i32 0, metadata !11, null}
!259 = metadata !{i32 193, i32 0, metadata !11, null}
!260 = metadata !{i32 194, i32 0, metadata !11, null}
!261 = metadata !{i32 195, i32 0, metadata !11, null}
!262 = metadata !{i8* undef}
!263 = metadata !{i32 197, i32 0, metadata !11, null}
!264 = metadata !{i32 198, i32 0, metadata !11, null}
!265 = metadata !{i32 200, i32 0, metadata !114, null}
!266 = metadata !{i32 202, i32 0, metadata !114, null}
!267 = metadata !{i32 203, i32 0, metadata !114, null}
!268 = metadata !{i32 223, i32 0, metadata !121, null}
!269 = metadata !{i32 225, i32 0, metadata !121, null}
!270 = metadata !{i32 226, i32 0, metadata !121, null}
!271 = metadata !{i32 227, i32 0, metadata !121, null}
!272 = metadata !{i32 229, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !121, i32 228, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!274 = metadata !{i32 230, i32 0, metadata !273, null}
!275 = metadata !{i32 233, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !121, i32 232, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!277 = metadata !{i32 236, i32 0, metadata !121, null}
!278 = metadata !{i32 240, i32 0, metadata !129, null}
!279 = metadata !{i32 242, i32 0, metadata !129, null}
!280 = metadata !{i32 243, i32 0, metadata !129, null}
!281 = metadata !{i32 244, i32 0, metadata !129, null}
!282 = metadata !{i32 245, i32 0, metadata !129, null}
!283 = metadata !{i32 264, i32 0, metadata !140, null}
!284 = metadata !{i32 266, i32 0, metadata !140, null}
!285 = metadata !{i32 270, i32 0, metadata !140, null}
!286 = metadata !{i32 277, i32 0, metadata !140, null}
!287 = metadata !{i32 281, i32 0, metadata !140, null}
!288 = metadata !{i32 282, i32 0, metadata !140, null}
!289 = metadata !{i32 286, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !140, i32 283, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!291 = metadata !{i32 287, i32 0, metadata !290, null}
!292 = metadata !{i32 290, i32 0, metadata !140, null}
!293 = metadata !{i32 292, i32 0, metadata !140, null}
!294 = metadata !{i32 293, i32 0, metadata !140, null}
!295 = metadata !{i32 294, i32 0, metadata !140, null}
!296 = metadata !{i32 295, i32 0, metadata !140, null}
!297 = metadata !{i32 296, i32 0, metadata !140, null}
!298 = metadata !{i32 299, i32 0, metadata !140, null}
!299 = metadata !{i32 302, i32 0, metadata !140, null}
!300 = metadata !{i32 303, i32 0, metadata !140, null}
!301 = metadata !{i32 304, i32 0, metadata !140, null}
!302 = metadata !{i32 307, i32 0, metadata !140, null}
!303 = metadata !{i32 324, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !140, i32 324, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!305 = metadata !{i32 326, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !304, i32 325, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!307 = metadata !{i32 332, i32 0, metadata !306, null}
!308 = metadata !{i32 334, i32 0, metadata !306, null}
!309 = metadata !{i32 329, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !306, i32 327, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!311 = metadata !{i32 330, i32 0, metadata !310, null}
!312 = metadata !{i32 337, i32 0, metadata !306, null}
!313 = metadata !{i32 353, i32 0, metadata !140, null}
!314 = metadata !{i32 355, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !140, i32 354, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!316 = metadata !{i32 361, i32 0, metadata !315, null}
!317 = metadata !{i32 362, i32 0, metadata !315, null}
!318 = metadata !{i32 368, i32 0, metadata !315, null}
!319 = metadata !{i32 369, i32 0, metadata !315, null}
!320 = metadata !{i32 375, i32 0, metadata !315, null}
!321 = metadata !{i32 376, i32 0, metadata !315, null}
!322 = metadata !{i32 377, i32 0, metadata !315, null}
!323 = metadata !{i32 379, i32 0, metadata !140, null}
!324 = metadata !{i32 380, i32 0, metadata !140, null}
!325 = metadata !{i32 381, i32 0, metadata !140, null}
!326 = metadata !{i32 382, i32 0, metadata !140, null}
!327 = metadata !{i32 384, i32 0, metadata !140, null}
!328 = metadata !{i32 385, i32 0, metadata !140, null}
!329 = metadata !{i32 387, i32 0, metadata !189, null}
!330 = metadata !{i32 389, i32 0, metadata !189, null}
!331 = metadata !{i32 390, i32 0, metadata !189, null}
!332 = metadata !{i32 410, i32 0, metadata !194, null}
!333 = metadata !{i32 412, i32 0, metadata !194, null}
!334 = metadata !{i32 413, i32 0, metadata !194, null}
!335 = metadata !{i32 415, i32 0, metadata !194, null}
!336 = metadata !{i32 417, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !194, i32 416, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!338 = metadata !{i32 418, i32 0, metadata !337, null}
!339 = metadata !{i32 421, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !194, i32 420, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c]
!341 = metadata !{i32 424, i32 0, metadata !194, null}
!342 = metadata !{i32 428, i32 0, metadata !200, null}
!343 = metadata !{i32 430, i32 0, metadata !200, null}
!344 = metadata !{i32 431, i32 0, metadata !200, null}
!345 = metadata !{i32 432, i32 0, metadata !200, null}
!346 = metadata !{i32 433, i32 0, metadata !200, null}
