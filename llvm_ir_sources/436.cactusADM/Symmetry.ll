; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusBase/CartGrid3D/src/Symmetry.c,v 1.28 2001/11/05 14:59:33 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_Symmetry_c() #0 {
entry:
  ret i8* getelementptr inbounds ([94 x i8]* @.str, i64 0, i64 0), !dbg !86
}

; Function Attrs: nounwind optsize uwtable
define i32 @CartApplySym3Di(%struct.cGH* nocapture %GH, i32* nocapture %doSym, i32* nocapture %cntstag, i32* nocapture %lssh, i32* nocapture %ghostz, i32* nocapture %sym, double* nocapture %var) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !53), !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32* %doSym}, i64 0, metadata !54), !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32* %cntstag}, i64 0, metadata !55), !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32* %lssh}, i64 0, metadata !56), !dbg !88
  tail call void @llvm.dbg.value(metadata !{i32* %ghostz}, i64 0, metadata !57), !dbg !88
  tail call void @llvm.dbg.value(metadata !{i32* %sym}, i64 0, metadata !58), !dbg !88
  tail call void @llvm.dbg.value(metadata !{double* %var}, i64 0, metadata !59), !dbg !88
  %0 = load i32* %doSym, align 4, !dbg !89, !tbaa !90
  %cmp = icmp eq i32 %0, 1, !dbg !89
  br i1 %cmp, label %for.cond.preheader, label %if.end, !dbg !89

for.cond.preheader:                               ; preds = %entry
  %arrayidx1 = getelementptr inbounds i32* %lssh, i64 2, !dbg !93
  %1 = load i32* %arrayidx1, align 4, !dbg !93, !tbaa !90
  %cmp2239 = icmp sgt i32 %1, 0, !dbg !93
  br i1 %cmp2239, label %for.cond3.preheader.lr.ph, label %if.end, !dbg !93

for.cond3.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %arrayidx4 = getelementptr inbounds i32* %lssh, i64 1, !dbg !96
  %2 = load i32* %arrayidx4, align 4, !dbg !96, !tbaa !90
  %cmp5237 = icmp sgt i32 %2, 0, !dbg !96
  %cctk_lsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !99
  br label %for.cond3.preheader, !dbg !93

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.inc36
  %k.0240 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %inc37, %for.inc36 ]
  br i1 %cmp5237, label %for.cond7.preheader.lr.ph, label %for.inc36, !dbg !96

for.cond7.preheader.lr.ph:                        ; preds = %for.cond3.preheader
  %3 = load i32* %ghostz, align 4, !dbg !103, !tbaa !90
  %cmp9235 = icmp sgt i32 %3, 0, !dbg !103
  br label %for.cond7.preheader, !dbg !96

for.cond7.preheader:                              ; preds = %for.cond7.preheader.lr.ph, %for.inc33
  %j.0238 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %inc34, %for.inc33 ]
  br i1 %cmp9235, label %for.body10.lr.ph, label %for.inc33, !dbg !103

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %4 = load i32* %sym, align 4, !dbg !99, !tbaa !90
  %conv = sitofp i32 %4 to double, !dbg !99
  %5 = load i32* %cntstag, align 4, !dbg !99, !tbaa !90
  %6 = load i32** %cctk_lsh, align 8, !dbg !99, !tbaa !104
  %7 = load i32* %6, align 4, !dbg !99, !tbaa !90
  %arrayidx17 = getelementptr inbounds i32* %6, i64 1, !dbg !99
  %8 = load i32* %arrayidx17, align 4, !dbg !99, !tbaa !90
  %mul18 = mul nsw i32 %8, %k.0240, !dbg !99
  %add = add nsw i32 %mul18, %j.0238, !dbg !99
  %mul19 = mul nsw i32 %add, %7, !dbg !99
  %9 = sext i32 %mul19 to i64, !dbg !103
  br label %for.body10, !dbg !103

for.body10:                                       ; preds = %for.body10.lr.ph, %for.body10
  %indvars.iv244 = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next245, %for.body10 ]
  %mul = shl nsw i32 %3, 1, !dbg !99
  %10 = trunc i64 %indvars.iv244 to i32, !dbg !99
  %sub = sub i32 %mul, %10, !dbg !99
  %sub14 = sub i32 %sub, %5, !dbg !99
  %add20 = add i32 %sub14, %mul19, !dbg !99
  %idxprom = sext i32 %add20 to i64, !dbg !99
  %arrayidx21 = getelementptr inbounds double* %var, i64 %idxprom, !dbg !99
  %11 = load double* %arrayidx21, align 8, !dbg !99, !tbaa !105
  %mul22 = fmul double %conv, %11, !dbg !99
  %12 = add nsw i64 %9, %indvars.iv244, !dbg !99
  %arrayidx32 = getelementptr inbounds double* %var, i64 %12, !dbg !99
  store double %mul22, double* %arrayidx32, align 8, !dbg !99, !tbaa !105
  %indvars.iv.next245 = add i64 %indvars.iv244, 1, !dbg !103
  %13 = trunc i64 %indvars.iv.next245 to i32, !dbg !103
  %cmp9 = icmp slt i32 %13, %3, !dbg !103
  br i1 %cmp9, label %for.body10, label %for.inc33, !dbg !103

for.inc33:                                        ; preds = %for.body10, %for.cond7.preheader
  %inc34 = add nsw i32 %j.0238, 1, !dbg !96
  tail call void @llvm.dbg.value(metadata !{i32 %inc34}, i64 0, metadata !61), !dbg !96
  %cmp5 = icmp slt i32 %inc34, %2, !dbg !96
  br i1 %cmp5, label %for.cond7.preheader, label %for.inc36, !dbg !96

for.inc36:                                        ; preds = %for.inc33, %for.cond3.preheader
  %inc37 = add nsw i32 %k.0240, 1, !dbg !93
  tail call void @llvm.dbg.value(metadata !{i32 %inc37}, i64 0, metadata !62), !dbg !93
  %cmp2 = icmp slt i32 %inc37, %1, !dbg !93
  br i1 %cmp2, label %for.cond3.preheader, label %if.end, !dbg !93

if.end:                                           ; preds = %for.cond.preheader, %for.inc36, %entry
  %arrayidx39 = getelementptr inbounds i32* %doSym, i64 2, !dbg !106
  %14 = load i32* %arrayidx39, align 4, !dbg !106, !tbaa !90
  %cmp40 = icmp eq i32 %14, 1, !dbg !106
  br i1 %cmp40, label %for.cond43.preheader, label %if.end95, !dbg !106

for.cond43.preheader:                             ; preds = %if.end
  %15 = load i32* %lssh, align 4, !dbg !107, !tbaa !90
  %cmp45232 = icmp sgt i32 %15, 0, !dbg !107
  br i1 %cmp45232, label %for.cond48.preheader.lr.ph, label %if.end95, !dbg !107

for.cond48.preheader.lr.ph:                       ; preds = %for.cond43.preheader
  %arrayidx49 = getelementptr inbounds i32* %lssh, i64 2, !dbg !110
  %16 = load i32* %arrayidx49, align 4, !dbg !110, !tbaa !90
  %cmp50230 = icmp sgt i32 %16, 0, !dbg !110
  %arrayidx54 = getelementptr inbounds i32* %ghostz, i64 1, !dbg !113
  %arrayidx58 = getelementptr inbounds i32* %sym, i64 2, !dbg !116
  %cctk_lsh60 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !116
  %arrayidx64 = getelementptr inbounds i32* %cntstag, i64 1, !dbg !116
  br label %for.cond48.preheader, !dbg !107

for.cond48.preheader:                             ; preds = %for.cond48.preheader.lr.ph, %for.inc92
  %i.1233 = phi i32 [ 0, %for.cond48.preheader.lr.ph ], [ %inc93, %for.inc92 ]
  br i1 %cmp50230, label %for.cond53.preheader.lr.ph, label %for.inc92, !dbg !110

for.cond53.preheader.lr.ph:                       ; preds = %for.cond48.preheader
  %17 = load i32* %arrayidx54, align 4, !dbg !113, !tbaa !90
  %cmp55228 = icmp sgt i32 %17, 0, !dbg !113
  br label %for.cond53.preheader, !dbg !110

for.cond53.preheader:                             ; preds = %for.cond53.preheader.lr.ph, %for.inc89
  %k.1231 = phi i32 [ 0, %for.cond53.preheader.lr.ph ], [ %inc90, %for.inc89 ]
  br i1 %cmp55228, label %for.body57.lr.ph, label %for.inc89, !dbg !113

for.body57.lr.ph:                                 ; preds = %for.cond53.preheader
  %18 = load i32* %arrayidx58, align 4, !dbg !116, !tbaa !90
  %conv59 = sitofp i32 %18 to double, !dbg !116
  %19 = load i32** %cctk_lsh60, align 8, !dbg !116, !tbaa !104
  %20 = load i32* %19, align 4, !dbg !116, !tbaa !90
  %21 = load i32* %arrayidx64, align 4, !dbg !116, !tbaa !90
  %arrayidx68 = getelementptr inbounds i32* %19, i64 1, !dbg !116
  %22 = load i32* %arrayidx68, align 4, !dbg !116, !tbaa !90
  %mul69 = mul nsw i32 %22, %k.1231, !dbg !116
  %23 = zext i32 %mul69 to i64, !dbg !113
  br label %for.body57, !dbg !113

for.body57:                                       ; preds = %for.body57.lr.ph, %for.body57
  %indvars.iv241 = phi i64 [ 0, %for.body57.lr.ph ], [ %indvars.iv.next242, %for.body57 ]
  %mul63 = shl nsw i32 %17, 1, !dbg !116
  %24 = trunc i64 %indvars.iv241 to i32, !dbg !116
  %sub65 = sub i32 %mul63, %24, !dbg !116
  %sub66 = sub i32 %sub65, %21, !dbg !116
  %add70 = add i32 %sub66, %mul69, !dbg !116
  %mul71 = mul nsw i32 %add70, %20, !dbg !116
  %add72 = add nsw i32 %mul71, %i.1233, !dbg !116
  %idxprom73 = sext i32 %add72 to i64, !dbg !116
  %arrayidx74 = getelementptr inbounds double* %var, i64 %idxprom73, !dbg !116
  %25 = load double* %arrayidx74, align 8, !dbg !116, !tbaa !105
  %mul75 = fmul double %conv59, %25, !dbg !116
  %26 = add nsw i64 %23, %indvars.iv241, !dbg !116
  %27 = trunc i64 %26 to i32, !dbg !116
  %mul82 = mul nsw i32 %27, %20, !dbg !116
  %add83 = add nsw i32 %mul82, %i.1233, !dbg !116
  %idxprom84 = sext i32 %add83 to i64, !dbg !116
  %arrayidx85 = getelementptr inbounds double* %var, i64 %idxprom84, !dbg !116
  store double %mul75, double* %arrayidx85, align 8, !dbg !116, !tbaa !105
  %indvars.iv.next242 = add i64 %indvars.iv241, 1, !dbg !113
  %28 = trunc i64 %indvars.iv.next242 to i32, !dbg !113
  %cmp55 = icmp slt i32 %28, %17, !dbg !113
  br i1 %cmp55, label %for.body57, label %for.inc89, !dbg !113

for.inc89:                                        ; preds = %for.body57, %for.cond53.preheader
  %inc90 = add nsw i32 %k.1231, 1, !dbg !110
  tail call void @llvm.dbg.value(metadata !{i32 %inc90}, i64 0, metadata !62), !dbg !110
  %cmp50 = icmp slt i32 %inc90, %16, !dbg !110
  br i1 %cmp50, label %for.cond53.preheader, label %for.inc92, !dbg !110

for.inc92:                                        ; preds = %for.inc89, %for.cond48.preheader
  %inc93 = add nsw i32 %i.1233, 1, !dbg !107
  tail call void @llvm.dbg.value(metadata !{i32 %inc93}, i64 0, metadata !60), !dbg !107
  %cmp45 = icmp slt i32 %inc93, %15, !dbg !107
  br i1 %cmp45, label %for.cond48.preheader, label %if.end95, !dbg !107

if.end95:                                         ; preds = %for.cond43.preheader, %for.inc92, %if.end
  %arrayidx96 = getelementptr inbounds i32* %doSym, i64 4, !dbg !118
  %29 = load i32* %arrayidx96, align 4, !dbg !118, !tbaa !90
  %cmp97 = icmp eq i32 %29, 1, !dbg !118
  br i1 %cmp97, label %for.cond100.preheader, label %if.end152, !dbg !118

for.cond100.preheader:                            ; preds = %if.end95
  %30 = load i32* %lssh, align 4, !dbg !119, !tbaa !90
  %cmp102225 = icmp sgt i32 %30, 0, !dbg !119
  br i1 %cmp102225, label %for.cond105.preheader.lr.ph, label %if.end152, !dbg !119

for.cond105.preheader.lr.ph:                      ; preds = %for.cond100.preheader
  %arrayidx106 = getelementptr inbounds i32* %lssh, i64 1, !dbg !122
  %31 = load i32* %arrayidx106, align 4, !dbg !122, !tbaa !90
  %cmp107222 = icmp sgt i32 %31, 0, !dbg !122
  %arrayidx111 = getelementptr inbounds i32* %ghostz, i64 2, !dbg !125
  %arrayidx115 = getelementptr inbounds i32* %sym, i64 4, !dbg !128
  %cctk_lsh117 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !128
  %arrayidx123 = getelementptr inbounds i32* %cntstag, i64 2, !dbg !128
  br label %for.cond105.preheader, !dbg !119

for.cond105.preheader:                            ; preds = %for.cond105.preheader.lr.ph, %for.inc149
  %i.2226 = phi i32 [ 0, %for.cond105.preheader.lr.ph ], [ %inc150, %for.inc149 ]
  br i1 %cmp107222, label %for.cond110.preheader.lr.ph, label %for.inc149, !dbg !122

for.cond110.preheader.lr.ph:                      ; preds = %for.cond105.preheader
  %32 = load i32* %arrayidx111, align 4, !dbg !125, !tbaa !90
  %cmp112220 = icmp sgt i32 %32, 0, !dbg !125
  br label %for.cond110.preheader, !dbg !122

for.cond110.preheader:                            ; preds = %for.cond110.preheader.lr.ph, %for.inc146
  %j.2223 = phi i32 [ 0, %for.cond110.preheader.lr.ph ], [ %inc147, %for.inc146 ]
  br i1 %cmp112220, label %for.body114.lr.ph, label %for.inc146, !dbg !125

for.body114.lr.ph:                                ; preds = %for.cond110.preheader
  %33 = load i32* %arrayidx115, align 4, !dbg !128, !tbaa !90
  %conv116 = sitofp i32 %33 to double, !dbg !128
  %34 = load i32** %cctk_lsh117, align 8, !dbg !128, !tbaa !104
  %35 = load i32* %34, align 4, !dbg !128, !tbaa !90
  %arrayidx120 = getelementptr inbounds i32* %34, i64 1, !dbg !128
  %36 = load i32* %arrayidx120, align 4, !dbg !128, !tbaa !90
  %37 = load i32* %arrayidx123, align 4, !dbg !128, !tbaa !90
  br label %for.body114, !dbg !125

for.body114:                                      ; preds = %for.body114.lr.ph, %for.body114
  %indvars.iv = phi i64 [ 0, %for.body114.lr.ph ], [ %indvars.iv.next, %for.body114 ]
  %mul122 = shl nsw i32 %32, 1, !dbg !128
  %38 = trunc i64 %indvars.iv to i32, !dbg !128
  %sub124 = sub i32 %mul122, %38, !dbg !128
  %sub125 = sub i32 %sub124, %37, !dbg !128
  %mul126 = mul nsw i32 %sub125, %36, !dbg !128
  %add127 = add nsw i32 %mul126, %j.2223, !dbg !128
  %mul128 = mul nsw i32 %add127, %35, !dbg !128
  %add129 = add nsw i32 %mul128, %i.2226, !dbg !128
  %idxprom130 = sext i32 %add129 to i64, !dbg !128
  %arrayidx131 = getelementptr inbounds double* %var, i64 %idxprom130, !dbg !128
  %39 = load double* %arrayidx131, align 8, !dbg !128, !tbaa !105
  %mul132 = fmul double %conv116, %39, !dbg !128
  %mul137 = mul nsw i32 %36, %38, !dbg !128
  %add138 = add nsw i32 %mul137, %j.2223, !dbg !128
  %mul139 = mul nsw i32 %add138, %35, !dbg !128
  %add140 = add nsw i32 %mul139, %i.2226, !dbg !128
  %idxprom141 = sext i32 %add140 to i64, !dbg !128
  %arrayidx142 = getelementptr inbounds double* %var, i64 %idxprom141, !dbg !128
  store double %mul132, double* %arrayidx142, align 8, !dbg !128, !tbaa !105
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !125
  %40 = trunc i64 %indvars.iv.next to i32, !dbg !125
  %cmp112 = icmp slt i32 %40, %32, !dbg !125
  br i1 %cmp112, label %for.body114, label %for.inc146, !dbg !125

for.inc146:                                       ; preds = %for.body114, %for.cond110.preheader
  %inc147 = add nsw i32 %j.2223, 1, !dbg !122
  tail call void @llvm.dbg.value(metadata !{i32 %inc147}, i64 0, metadata !61), !dbg !122
  %cmp107 = icmp slt i32 %inc147, %31, !dbg !122
  br i1 %cmp107, label %for.cond110.preheader, label %for.inc149, !dbg !122

for.inc149:                                       ; preds = %for.inc146, %for.cond105.preheader
  %inc150 = add nsw i32 %i.2226, 1, !dbg !119
  tail call void @llvm.dbg.value(metadata !{i32 %inc150}, i64 0, metadata !60), !dbg !119
  %cmp102 = icmp slt i32 %inc150, %30, !dbg !119
  br i1 %cmp102, label %for.cond105.preheader, label %if.end152, !dbg !119

if.end152:                                        ; preds = %for.cond100.preheader, %for.inc149, %if.end95
  ret i32 0, !dbg !130
}

; Function Attrs: nounwind optsize uwtable
define i32 @CartApplySym2Di(%struct.cGH* nocapture %GH, i32* nocapture %doSym, i32* nocapture %cntstag, i32* nocapture %lssh, i32* nocapture %ghostz, i32* nocapture %sym, double* nocapture %var) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !65), !dbg !131
  tail call void @llvm.dbg.value(metadata !{i32* %doSym}, i64 0, metadata !66), !dbg !131
  tail call void @llvm.dbg.value(metadata !{i32* %cntstag}, i64 0, metadata !67), !dbg !131
  tail call void @llvm.dbg.value(metadata !{i32* %lssh}, i64 0, metadata !68), !dbg !132
  tail call void @llvm.dbg.value(metadata !{i32* %ghostz}, i64 0, metadata !69), !dbg !132
  tail call void @llvm.dbg.value(metadata !{i32* %sym}, i64 0, metadata !70), !dbg !132
  tail call void @llvm.dbg.value(metadata !{double* %var}, i64 0, metadata !71), !dbg !132
  %0 = load i32* %doSym, align 4, !dbg !133, !tbaa !90
  %cmp = icmp eq i32 %0, 1, !dbg !133
  br i1 %cmp, label %for.cond.preheader, label %if.end, !dbg !133

for.cond.preheader:                               ; preds = %entry
  %arrayidx1 = getelementptr inbounds i32* %lssh, i64 1, !dbg !134
  %1 = load i32* %arrayidx1, align 4, !dbg !134, !tbaa !90
  %cmp2100 = icmp sgt i32 %1, 0, !dbg !134
  br i1 %cmp2100, label %for.cond3.preheader.lr.ph, label %if.end, !dbg !134

for.cond3.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %2 = load i32* %ghostz, align 4, !dbg !137, !tbaa !90
  %cmp598 = icmp sgt i32 %2, 0, !dbg !137
  %cctk_lsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !140
  br label %for.cond3.preheader, !dbg !134

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.inc21
  %j.0101 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %inc22, %for.inc21 ]
  br i1 %cmp598, label %for.body6.lr.ph, label %for.inc21, !dbg !137

for.body6.lr.ph:                                  ; preds = %for.cond3.preheader
  %3 = load i32* %sym, align 4, !dbg !140, !tbaa !90
  %conv = sitofp i32 %3 to double, !dbg !140
  %4 = load i32* %cntstag, align 4, !dbg !140, !tbaa !90
  %5 = load i32** %cctk_lsh, align 8, !dbg !140, !tbaa !104
  %6 = load i32* %5, align 4, !dbg !140, !tbaa !90
  %mul12 = mul nsw i32 %6, %j.0101, !dbg !140
  %7 = sext i32 %mul12 to i64, !dbg !137
  br label %for.body6, !dbg !137

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv102 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next103, %for.body6 ]
  %mul = shl nsw i32 %2, 1, !dbg !140
  %8 = trunc i64 %indvars.iv102 to i32, !dbg !140
  %sub = sub i32 %mul, %8, !dbg !140
  %sub10 = sub i32 %sub, %4, !dbg !140
  %add = add i32 %sub10, %mul12, !dbg !140
  %idxprom = sext i32 %add to i64, !dbg !140
  %arrayidx13 = getelementptr inbounds double* %var, i64 %idxprom, !dbg !140
  %9 = load double* %arrayidx13, align 8, !dbg !140, !tbaa !105
  %mul14 = fmul double %conv, %9, !dbg !140
  %10 = add nsw i64 %7, %indvars.iv102, !dbg !140
  %arrayidx20 = getelementptr inbounds double* %var, i64 %10, !dbg !140
  store double %mul14, double* %arrayidx20, align 8, !dbg !140, !tbaa !105
  %indvars.iv.next103 = add i64 %indvars.iv102, 1, !dbg !137
  %11 = trunc i64 %indvars.iv.next103 to i32, !dbg !137
  %cmp5 = icmp slt i32 %11, %2, !dbg !137
  br i1 %cmp5, label %for.body6, label %for.inc21, !dbg !137

for.inc21:                                        ; preds = %for.body6, %for.cond3.preheader
  %inc22 = add nsw i32 %j.0101, 1, !dbg !134
  tail call void @llvm.dbg.value(metadata !{i32 %inc22}, i64 0, metadata !73), !dbg !134
  %cmp2 = icmp slt i32 %inc22, %1, !dbg !134
  br i1 %cmp2, label %for.cond3.preheader, label %if.end, !dbg !134

if.end:                                           ; preds = %for.cond.preheader, %for.inc21, %entry
  %arrayidx24 = getelementptr inbounds i32* %doSym, i64 2, !dbg !142
  %12 = load i32* %arrayidx24, align 4, !dbg !142, !tbaa !90
  %cmp25 = icmp eq i32 %12, 1, !dbg !142
  br i1 %cmp25, label %for.cond28.preheader, label %if.end64, !dbg !142

for.cond28.preheader:                             ; preds = %if.end
  %13 = load i32* %lssh, align 4, !dbg !143, !tbaa !90
  %cmp3095 = icmp sgt i32 %13, 0, !dbg !143
  br i1 %cmp3095, label %for.cond33.preheader.lr.ph, label %if.end64, !dbg !143

for.cond33.preheader.lr.ph:                       ; preds = %for.cond28.preheader
  %arrayidx34 = getelementptr inbounds i32* %ghostz, i64 1, !dbg !146
  %14 = load i32* %arrayidx34, align 4, !dbg !146, !tbaa !90
  %cmp3593 = icmp sgt i32 %14, 0, !dbg !146
  %arrayidx38 = getelementptr inbounds i32* %sym, i64 2, !dbg !149
  %cctk_lsh40 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !149
  %arrayidx44 = getelementptr inbounds i32* %cntstag, i64 1, !dbg !149
  br label %for.cond33.preheader, !dbg !143

for.cond33.preheader:                             ; preds = %for.cond33.preheader.lr.ph, %for.inc61
  %i.196 = phi i32 [ 0, %for.cond33.preheader.lr.ph ], [ %inc62, %for.inc61 ]
  br i1 %cmp3593, label %for.body37.lr.ph, label %for.inc61, !dbg !146

for.body37.lr.ph:                                 ; preds = %for.cond33.preheader
  %15 = load i32* %arrayidx38, align 4, !dbg !149, !tbaa !90
  %conv39 = sitofp i32 %15 to double, !dbg !149
  %16 = load i32** %cctk_lsh40, align 8, !dbg !149, !tbaa !104
  %17 = load i32* %16, align 4, !dbg !149, !tbaa !90
  %18 = load i32* %arrayidx44, align 4, !dbg !149, !tbaa !90
  br label %for.body37, !dbg !146

for.body37:                                       ; preds = %for.body37.lr.ph, %for.body37
  %indvars.iv = phi i64 [ 0, %for.body37.lr.ph ], [ %indvars.iv.next, %for.body37 ]
  %mul43 = shl nsw i32 %14, 1, !dbg !149
  %19 = trunc i64 %indvars.iv to i32, !dbg !149
  %sub45 = sub i32 %mul43, %19, !dbg !149
  %sub46 = sub i32 %sub45, %18, !dbg !149
  %mul47 = mul nsw i32 %sub46, %17, !dbg !149
  %add48 = add nsw i32 %mul47, %i.196, !dbg !149
  %idxprom49 = sext i32 %add48 to i64, !dbg !149
  %arrayidx50 = getelementptr inbounds double* %var, i64 %idxprom49, !dbg !149
  %20 = load double* %arrayidx50, align 8, !dbg !149, !tbaa !105
  %mul51 = fmul double %conv39, %20, !dbg !149
  %mul54 = mul nsw i32 %17, %19, !dbg !149
  %add55 = add nsw i32 %mul54, %i.196, !dbg !149
  %idxprom56 = sext i32 %add55 to i64, !dbg !149
  %arrayidx57 = getelementptr inbounds double* %var, i64 %idxprom56, !dbg !149
  store double %mul51, double* %arrayidx57, align 8, !dbg !149, !tbaa !105
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !146
  %21 = trunc i64 %indvars.iv.next to i32, !dbg !146
  %cmp35 = icmp slt i32 %21, %14, !dbg !146
  br i1 %cmp35, label %for.body37, label %for.inc61, !dbg !146

for.inc61:                                        ; preds = %for.body37, %for.cond33.preheader
  %inc62 = add nsw i32 %i.196, 1, !dbg !143
  tail call void @llvm.dbg.value(metadata !{i32 %inc62}, i64 0, metadata !72), !dbg !143
  %cmp30 = icmp slt i32 %inc62, %13, !dbg !143
  br i1 %cmp30, label %for.cond33.preheader, label %if.end64, !dbg !143

if.end64:                                         ; preds = %for.cond28.preheader, %for.inc61, %if.end
  ret i32 0, !dbg !151
}

; Function Attrs: nounwind optsize uwtable
define i32 @CartApplySym1Di(%struct.cGH* nocapture %GH, i32* nocapture %doSym, i32* nocapture %cntstag, i32* nocapture %lssh, i32* nocapture %ghostz, i32* nocapture %sym, double* nocapture %var) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !76), !dbg !152
  tail call void @llvm.dbg.value(metadata !{i32* %doSym}, i64 0, metadata !77), !dbg !152
  tail call void @llvm.dbg.value(metadata !{i32* %cntstag}, i64 0, metadata !78), !dbg !152
  tail call void @llvm.dbg.value(metadata !{i32* %lssh}, i64 0, metadata !79), !dbg !153
  tail call void @llvm.dbg.value(metadata !{i32* %ghostz}, i64 0, metadata !80), !dbg !153
  tail call void @llvm.dbg.value(metadata !{i32* %sym}, i64 0, metadata !81), !dbg !153
  tail call void @llvm.dbg.value(metadata !{double* %var}, i64 0, metadata !82), !dbg !153
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !76), !dbg !154
  tail call void @llvm.dbg.value(metadata !{i32* %lssh}, i64 0, metadata !79), !dbg !155
  %0 = load i32* %doSym, align 4, !dbg !156, !tbaa !90
  %cmp = icmp eq i32 %0, 1, !dbg !156
  br i1 %cmp, label %for.cond.preheader, label %if.end, !dbg !156

for.cond.preheader:                               ; preds = %entry
  %1 = load i32* %ghostz, align 4, !dbg !157, !tbaa !90
  %cmp216 = icmp sgt i32 %1, 0, !dbg !157
  br i1 %cmp216, label %for.body.lr.ph, label %if.end, !dbg !157

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = load i32* %sym, align 4, !dbg !160, !tbaa !90
  %conv = sitofp i32 %2 to double, !dbg !160
  %3 = load i32* %cntstag, align 4, !dbg !160, !tbaa !90
  br label %for.body, !dbg !157

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %mul = shl nsw i32 %1, 1, !dbg !160
  %4 = trunc i64 %indvars.iv to i32, !dbg !160
  %sub = sub i32 %mul, %4, !dbg !160
  %sub6 = sub i32 %sub, %3, !dbg !160
  %idxprom = sext i32 %sub6 to i64, !dbg !160
  %arrayidx7 = getelementptr inbounds double* %var, i64 %idxprom, !dbg !160
  %5 = load double* %arrayidx7, align 8, !dbg !160, !tbaa !105
  %mul8 = fmul double %conv, %5, !dbg !160
  %arrayidx10 = getelementptr inbounds double* %var, i64 %indvars.iv, !dbg !160
  store double %mul8, double* %arrayidx10, align 8, !dbg !160, !tbaa !105
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !157
  %6 = trunc i64 %indvars.iv.next to i32, !dbg !157
  %cmp2 = icmp slt i32 %6, %1, !dbg !157
  br i1 %cmp2, label %for.body, label %if.end, !dbg !157

if.end:                                           ; preds = %for.cond.preheader, %for.body, %entry
  ret i32 0, !dbg !162
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !84, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !63, metadata !74}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_CartGrid3D_Symmetry_c", metadata !"CCTKi_version_CactusBase_CartGrid3D_Symmetry_c", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_CartGrid3D_Symmetry_c, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [CCTKi_version_CactusBase_CartGrid3D_Symmetry_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CartApplySym3Di", metadata !"CartApplySym3Di", metadata !"", i32 68, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, i32*, i32*, i32*, i32*, double*)* @CartApplySym3Di, null, null, metadata !52, i32 70} ; [ DW_TAG_subprogram ] [line 68] [def] [scope 70] [CartApplySym3Di]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !23, metadata !23, metadata !23, metadata !23, metadata !23, metadata !33}
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
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62}
!53 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777284, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 68]
!54 = metadata !{i32 786689, metadata !11, metadata !"doSym", metadata !5, i32 33554500, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [doSym] [line 68]
!55 = metadata !{i32 786689, metadata !11, metadata !"cntstag", metadata !5, i32 50331716, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cntstag] [line 68]
!56 = metadata !{i32 786689, metadata !11, metadata !"lssh", metadata !5, i32 67108933, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lssh] [line 69]
!57 = metadata !{i32 786689, metadata !11, metadata !"ghostz", metadata !5, i32 83886149, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghostz] [line 69]
!58 = metadata !{i32 786689, metadata !11, metadata !"sym", metadata !5, i32 100663365, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 69]
!59 = metadata !{i32 786689, metadata !11, metadata !"var", metadata !5, i32 117440581, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 69]
!60 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 72, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 72]
!61 = metadata !{i32 786688, metadata !11, metadata !"j", metadata !5, i32 72, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 72]
!62 = metadata !{i32 786688, metadata !11, metadata !"k", metadata !5, i32 72, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 72]
!63 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CartApplySym2Di", metadata !"CartApplySym2Di", metadata !"", i32 152, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, i32*, i32*, i32*, i32*, double*)* @CartApplySym2Di, null, null, metadata !64, i32 154} ; [ DW_TAG_subprogram ] [line 152] [def] [scope 154] [CartApplySym2Di]
!64 = metadata !{metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73}
!65 = metadata !{i32 786689, metadata !63, metadata !"GH", metadata !5, i32 16777368, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 152]
!66 = metadata !{i32 786689, metadata !63, metadata !"doSym", metadata !5, i32 33554584, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [doSym] [line 152]
!67 = metadata !{i32 786689, metadata !63, metadata !"cntstag", metadata !5, i32 50331800, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cntstag] [line 152]
!68 = metadata !{i32 786689, metadata !63, metadata !"lssh", metadata !5, i32 67109017, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lssh] [line 153]
!69 = metadata !{i32 786689, metadata !63, metadata !"ghostz", metadata !5, i32 83886233, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghostz] [line 153]
!70 = metadata !{i32 786689, metadata !63, metadata !"sym", metadata !5, i32 100663449, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 153]
!71 = metadata !{i32 786689, metadata !63, metadata !"var", metadata !5, i32 117440665, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 153]
!72 = metadata !{i32 786688, metadata !63, metadata !"i", metadata !5, i32 155, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 155]
!73 = metadata !{i32 786688, metadata !63, metadata !"j", metadata !5, i32 155, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 155]
!74 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CartApplySym1Di", metadata !"CartApplySym1Di", metadata !"", i32 206, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, i32*, i32*, i32*, i32*, double*)* @CartApplySym1Di, null, null, metadata !75, i32 208} ; [ DW_TAG_subprogram ] [line 206] [def] [scope 208] [CartApplySym1Di]
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83}
!76 = metadata !{i32 786689, metadata !74, metadata !"GH", metadata !5, i32 16777422, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 206]
!77 = metadata !{i32 786689, metadata !74, metadata !"doSym", metadata !5, i32 33554638, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [doSym] [line 206]
!78 = metadata !{i32 786689, metadata !74, metadata !"cntstag", metadata !5, i32 50331854, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cntstag] [line 206]
!79 = metadata !{i32 786689, metadata !74, metadata !"lssh", metadata !5, i32 67109071, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lssh] [line 207]
!80 = metadata !{i32 786689, metadata !74, metadata !"ghostz", metadata !5, i32 83886287, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghostz] [line 207]
!81 = metadata !{i32 786689, metadata !74, metadata !"sym", metadata !5, i32 100663503, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 207]
!82 = metadata !{i32 786689, metadata !74, metadata !"var", metadata !5, i32 117440719, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 207]
!83 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !5, i32 209, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 209]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 22, metadata !8, i32 1, i32 1, null, null}
!86 = metadata !{i32 24, i32 0, metadata !4, null}
!87 = metadata !{i32 68, i32 0, metadata !11, null}
!88 = metadata !{i32 69, i32 0, metadata !11, null}
!89 = metadata !{i32 85, i32 0, metadata !11, null}
!90 = metadata !{metadata !"int", metadata !91}
!91 = metadata !{metadata !"omnipotent char", metadata !92}
!92 = metadata !{metadata !"Simple C/C++ TBAA"}
!93 = metadata !{i32 87, i32 0, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !95, i32 87, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!95 = metadata !{i32 786443, metadata !1, metadata !11, i32 86, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!96 = metadata !{i32 89, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !98, i32 89, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!98 = metadata !{i32 786443, metadata !1, metadata !94, i32 88, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!99 = metadata !{i32 93, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !101, i32 92, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!101 = metadata !{i32 786443, metadata !1, metadata !102, i32 91, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!102 = metadata !{i32 786443, metadata !1, metadata !97, i32 90, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!103 = metadata !{i32 91, i32 0, metadata !101, null}
!104 = metadata !{metadata !"any pointer", metadata !91}
!105 = metadata !{metadata !"double", metadata !91}
!106 = metadata !{i32 99, i32 0, metadata !11, null}
!107 = metadata !{i32 101, i32 0, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !109, i32 101, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!109 = metadata !{i32 786443, metadata !1, metadata !11, i32 100, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!110 = metadata !{i32 103, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !112, i32 103, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!112 = metadata !{i32 786443, metadata !1, metadata !108, i32 102, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!113 = metadata !{i32 105, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !115, i32 105, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!115 = metadata !{i32 786443, metadata !1, metadata !111, i32 104, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!116 = metadata !{i32 107, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !114, i32 106, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!118 = metadata !{i32 113, i32 0, metadata !11, null}
!119 = metadata !{i32 115, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !121, i32 115, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!121 = metadata !{i32 786443, metadata !1, metadata !11, i32 114, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!122 = metadata !{i32 117, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !124, i32 117, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!124 = metadata !{i32 786443, metadata !1, metadata !120, i32 116, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!125 = metadata !{i32 119, i32 0, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !127, i32 119, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!127 = metadata !{i32 786443, metadata !1, metadata !123, i32 118, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!128 = metadata !{i32 121, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !126, i32 120, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!130 = metadata !{i32 127, i32 0, metadata !11, null}
!131 = metadata !{i32 152, i32 0, metadata !63, null}
!132 = metadata !{i32 153, i32 0, metadata !63, null}
!133 = metadata !{i32 157, i32 0, metadata !63, null}
!134 = metadata !{i32 159, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !136, i32 159, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!136 = metadata !{i32 786443, metadata !1, metadata !63, i32 158, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!137 = metadata !{i32 161, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !139, i32 161, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!139 = metadata !{i32 786443, metadata !1, metadata !135, i32 160, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!140 = metadata !{i32 163, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !138, i32 162, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!142 = metadata !{i32 169, i32 0, metadata !63, null}
!143 = metadata !{i32 171, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !145, i32 171, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!145 = metadata !{i32 786443, metadata !1, metadata !63, i32 170, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!146 = metadata !{i32 173, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !148, i32 173, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!148 = metadata !{i32 786443, metadata !1, metadata !144, i32 172, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!149 = metadata !{i32 175, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !147, i32 174, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!151 = metadata !{i32 181, i32 0, metadata !63, null}
!152 = metadata !{i32 206, i32 0, metadata !74, null}
!153 = metadata !{i32 207, i32 0, metadata !74, null}
!154 = metadata !{i32 213, i32 0, metadata !74, null}
!155 = metadata !{i32 214, i32 0, metadata !74, null}
!156 = metadata !{i32 216, i32 0, metadata !74, null}
!157 = metadata !{i32 218, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !159, i32 218, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!159 = metadata !{i32 786443, metadata !1, metadata !74, i32 217, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!160 = metadata !{i32 220, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !158, i32 219, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/Symmetry.c]
!162 = metadata !{i32 225, i32 0, metadata !74, null}
