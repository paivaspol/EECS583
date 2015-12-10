; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [16 x i8] c"grid::coarse_dx\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"grid::coarse_dy\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"grid::coarse_dz\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"grid::r\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"grid::x\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"grid::y\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"grid::z\00", align 1
@gridrest_ = external global %struct.anon
@cartgrid3dpriv_ = external global %struct.anon.0
@driverrest_ = external global %struct.anon.1
@.str7 = private unnamed_addr constant [8 x i8] c"byrange\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"byspacing\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"cart3d\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str14 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str15 = private unnamed_addr constant [15 x i8] c"Grid Spacings:\00", align 1
@.str16 = private unnamed_addr constant [32 x i8] c" %s%12.7e  %s%12.7e  %s%12.7e  \00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"dx=>\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"dy=>\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"dz=>\00", align 1
@.str20 = private unnamed_addr constant [27 x i8] c"Computational Coordinates:\00", align 1
@.str21 = private unnamed_addr constant [53 x i8] c" %s[%6.3f,%6.3f]  %s[%6.3f,%6.3f]  %s[%6.3f,%6.3f]  \00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"x=>\00", align 1
@.str23 = private unnamed_addr constant [4 x i8] c"y=>\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"z=>\00", align 1
@.str25 = private unnamed_addr constant [33 x i8] c"Indices of Physical Coordinates:\00", align 1
@.str26 = private unnamed_addr constant [35 x i8] c" %s[%d,%d]  %s[%d,%d]  %s[%d,%d]  \00", align 1
@.str27 = private unnamed_addr constant [95 x i8] c"$Header: /cactus/CactusBase/CartGrid3D/src/CartGrid3D.c,v 1.29 2001/08/18 21:40:40 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_CartGrid3D_c() #0 {
entry:
  ret i8* getelementptr inbounds ([95 x i8]* @.str27, i64 0, i64 0), !dbg !161
}

; Function Attrs: nounwind optsize uwtable
define void @CartGrid3D(%struct.cGH* %cctkGH) #1 {
entry:
  %infoline = alloca [120 x i8], align 16
  %domainsym = alloca [6 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct.cGH* %cctkGH}, i64 0, metadata !53), !dbg !162
  %cctk_gsh2 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 2, !dbg !163
  %0 = load i32** %cctk_gsh2, align 8, !dbg !163, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !55), !dbg !163
  %cctk_lsh3 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 3, !dbg !163
  %1 = load i32** %cctk_lsh3, align 8, !dbg !163, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !56), !dbg !163
  %cctk_lbnd4 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 4, !dbg !163
  %2 = load i32** %cctk_lbnd4, align 8, !dbg !163, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !57), !dbg !163
  %cctk_delta_space12 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 10, !dbg !163
  %3 = load double** %cctk_delta_space12, align 8, !dbg !163, !tbaa !164
  call void @llvm.dbg.value(metadata !{double* %3}, i64 0, metadata !65), !dbg !163
  %cctk_origin_space13 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 11, !dbg !163
  %4 = load double** %cctk_origin_space13, align 8, !dbg !163, !tbaa !164
  call void @llvm.dbg.value(metadata !{double* %4}, i64 0, metadata !66), !dbg !163
  %cctk_convlevel15 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 14, !dbg !163
  %5 = load i32* %cctk_convlevel15, align 4, !dbg !163, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !68), !dbg !163
  %cctk_nghostzones16 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 15, !dbg !163
  %6 = load i32** %cctk_nghostzones16, align 8, !dbg !163, !tbaa !164
  call void @llvm.dbg.value(metadata !{i32* %6}, i64 0, metadata !69), !dbg !163
  %call = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) #6, !dbg !163
  %idxprom = sext i32 %call to i64, !dbg !163
  %data = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17, !dbg !163
  %7 = load i8**** %data, align 8, !dbg !163, !tbaa !164
  %arrayidx = getelementptr inbounds i8*** %7, i64 %idxprom, !dbg !163
  %8 = load i8*** %arrayidx, align 8, !dbg !163, !tbaa !164
  %9 = load i8** %8, align 8, !dbg !163, !tbaa !164
  %10 = bitcast i8* %9 to double*, !dbg !163
  call void @llvm.dbg.value(metadata !{double* %10}, i64 0, metadata !74), !dbg !163
  %call19 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !163
  %idxprom20 = sext i32 %call19 to i64, !dbg !163
  %11 = load i8**** %data, align 8, !dbg !163, !tbaa !164
  %arrayidx22 = getelementptr inbounds i8*** %11, i64 %idxprom20, !dbg !163
  %12 = load i8*** %arrayidx22, align 8, !dbg !163, !tbaa !164
  %13 = load i8** %12, align 8, !dbg !163, !tbaa !164
  %14 = bitcast i8* %13 to double*, !dbg !163
  call void @llvm.dbg.value(metadata !{double* %14}, i64 0, metadata !75), !dbg !163
  %call24 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !163
  %idxprom25 = sext i32 %call24 to i64, !dbg !163
  %15 = load i8**** %data, align 8, !dbg !163, !tbaa !164
  %arrayidx27 = getelementptr inbounds i8*** %15, i64 %idxprom25, !dbg !163
  %16 = load i8*** %arrayidx27, align 8, !dbg !163, !tbaa !164
  %17 = load i8** %16, align 8, !dbg !163, !tbaa !164
  %18 = bitcast i8* %17 to double*, !dbg !163
  call void @llvm.dbg.value(metadata !{double* %18}, i64 0, metadata !76), !dbg !163
  %call29 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !163
  %idxprom30 = sext i32 %call29 to i64, !dbg !163
  %19 = load i8**** %data, align 8, !dbg !163, !tbaa !164
  %arrayidx32 = getelementptr inbounds i8*** %19, i64 %idxprom30, !dbg !163
  %20 = load i8*** %arrayidx32, align 8, !dbg !163, !tbaa !164
  %21 = load i8** %20, align 8, !dbg !163, !tbaa !164
  %22 = bitcast i8* %21 to double*, !dbg !163
  call void @llvm.dbg.value(metadata !{double* %22}, i64 0, metadata !77), !dbg !163
  %call34 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !163
  %idxprom35 = sext i32 %call34 to i64, !dbg !163
  %23 = load i8**** %data, align 8, !dbg !163, !tbaa !164
  %arrayidx37 = getelementptr inbounds i8*** %23, i64 %idxprom35, !dbg !163
  %24 = load i8*** %arrayidx37, align 8, !dbg !163, !tbaa !164
  %25 = load i8** %24, align 8, !dbg !163, !tbaa !164
  %26 = bitcast i8* %25 to double*, !dbg !163
  call void @llvm.dbg.value(metadata !{double* %26}, i64 0, metadata !78), !dbg !163
  %call39 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !163
  %idxprom40 = sext i32 %call39 to i64, !dbg !163
  %27 = load i8**** %data, align 8, !dbg !163, !tbaa !164
  %arrayidx42 = getelementptr inbounds i8*** %27, i64 %idxprom40, !dbg !163
  %28 = load i8*** %arrayidx42, align 8, !dbg !163, !tbaa !164
  %29 = load i8** %28, align 8, !dbg !163, !tbaa !164
  %30 = bitcast i8* %29 to double*, !dbg !163
  call void @llvm.dbg.value(metadata !{double* %30}, i64 0, metadata !79), !dbg !163
  %call44 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !163
  %idxprom45 = sext i32 %call44 to i64, !dbg !163
  %31 = load i8**** %data, align 8, !dbg !163, !tbaa !164
  %arrayidx47 = getelementptr inbounds i8*** %31, i64 %idxprom45, !dbg !163
  %32 = load i8*** %arrayidx47, align 8, !dbg !163, !tbaa !164
  %33 = load i8** %32, align 8, !dbg !163, !tbaa !164
  %34 = bitcast i8* %33 to double*, !dbg !163
  call void @llvm.dbg.value(metadata !{double* %34}, i64 0, metadata !80), !dbg !163
  %35 = load double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 0), align 8, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %35}, i64 0, metadata !81), !dbg !168
  %36 = load double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 1), align 8, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %36}, i64 0, metadata !83), !dbg !168
  %37 = load double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 2), align 8, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %37}, i64 0, metadata !84), !dbg !168
  %38 = load double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 3), align 8, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %38}, i64 0, metadata !85), !dbg !168
  %39 = load double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 4), align 8, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %39}, i64 0, metadata !86), !dbg !168
  %40 = load double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 5), align 8, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %40}, i64 0, metadata !87), !dbg !168
  %41 = load double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 6), align 8, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %41}, i64 0, metadata !88), !dbg !168
  %42 = load double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 7), align 8, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %42}, i64 0, metadata !89), !dbg !168
  %43 = load double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 8), align 8, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %43}, i64 0, metadata !90), !dbg !168
  %44 = load double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 9), align 8, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %44}, i64 0, metadata !91), !dbg !168
  %45 = load double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 10), align 8, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %45}, i64 0, metadata !92), !dbg !168
  %46 = load double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 11), align 8, !dbg !168, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %46}, i64 0, metadata !93), !dbg !168
  %47 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 15), align 8, !dbg !168, !tbaa !164
  call void @llvm.dbg.value(metadata !{i8* %47}, i64 0, metadata !97), !dbg !168
  %48 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 0), align 4, !dbg !168, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %48}, i64 0, metadata !105), !dbg !168
  %49 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 1), align 4, !dbg !168, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %49}, i64 0, metadata !106), !dbg !168
  %50 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 2), align 4, !dbg !168, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %50}, i64 0, metadata !107), !dbg !168
  %51 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 3), align 4, !dbg !168, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %51}, i64 0, metadata !108), !dbg !168
  %52 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 4), align 4, !dbg !168, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %52}, i64 0, metadata !109), !dbg !168
  %53 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 5), align 4, !dbg !168, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %53}, i64 0, metadata !110), !dbg !168
  %54 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 6), align 4, !dbg !168, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %54}, i64 0, metadata !111), !dbg !168
  %55 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 7), align 4, !dbg !168, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %55}, i64 0, metadata !112), !dbg !168
  %56 = load i32* getelementptr inbounds (%struct.anon.1* @driverrest_, i64 0, i32 8), align 4, !dbg !168, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !113), !dbg !168
  %57 = load i32* getelementptr inbounds (%struct.anon.1* @driverrest_, i64 0, i32 9), align 4, !dbg !168, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %57}, i64 0, metadata !114), !dbg !168
  %58 = load i32* getelementptr inbounds (%struct.anon.1* @driverrest_, i64 0, i32 10), align 4, !dbg !168, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %58}, i64 0, metadata !115), !dbg !168
  %59 = load i32* getelementptr inbounds (%struct.anon.1* @driverrest_, i64 0, i32 11), align 4, !dbg !168, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !116), !dbg !168
  %60 = getelementptr inbounds [120 x i8]* %infoline, i64 0, i64 0, !dbg !170
  call void @llvm.lifetime.start(i64 120, i8* %60) #4, !dbg !170
  call void @llvm.dbg.declare(metadata !{[120 x i8]* %infoline}, metadata !147), !dbg !170
  call void @llvm.dbg.declare(metadata !{[6 x i32]* %domainsym}, metadata !151), !dbg !171
  call void @llvm.dbg.declare(metadata !172, metadata !155), !dbg !173
  call void @llvm.dbg.value(metadata !174, i64 0, metadata !125), !dbg !175
  call void @llvm.dbg.value(metadata !174, i64 0, metadata !124), !dbg !175
  call void @llvm.dbg.value(metadata !174, i64 0, metadata !123), !dbg !175
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !145), !dbg !176
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !143), !dbg !176
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !141), !dbg !176
  %61 = load i32* %0, align 4, !dbg !177, !tbaa !167
  %sub = add nsw i32 %61, -1, !dbg !177
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !142), !dbg !177
  %arrayidx50 = getelementptr inbounds i32* %0, i64 1, !dbg !178
  %62 = load i32* %arrayidx50, align 4, !dbg !178, !tbaa !167
  %sub51 = add nsw i32 %62, -1, !dbg !178
  call void @llvm.dbg.value(metadata !{i32 %sub51}, i64 0, metadata !144), !dbg !178
  %arrayidx52 = getelementptr inbounds i32* %0, i64 2, !dbg !179
  %63 = load i32* %arrayidx52, align 4, !dbg !179, !tbaa !167
  %sub53 = add nsw i32 %63, -1, !dbg !179
  call void @llvm.dbg.value(metadata !{i32 %sub53}, i64 0, metadata !146), !dbg !179
  call void @llvm.dbg.value(metadata !174, i64 0, metadata !128), !dbg !180
  call void @llvm.dbg.value(metadata !174, i64 0, metadata !127), !dbg !180
  call void @llvm.dbg.value(metadata !174, i64 0, metadata !126), !dbg !180
  %tobool.not = icmp eq i32 %52, 0, !dbg !181
  %tobool54 = icmp eq i32 %53, 0, !dbg !181
  %or.cond = or i1 %tobool.not, %tobool54, !dbg !181
  %tobool56 = icmp eq i32 %48, 0, !dbg !181
  %or.cond805 = or i1 %or.cond, %tobool56, !dbg !181
  br i1 %or.cond805, label %land.end, label %land.rhs, !dbg !181

land.rhs:                                         ; preds = %entry
  %tobool57 = icmp ne i32 %49, 0, !dbg !181
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %64 = phi i1 [ false, %entry ], [ %tobool57, %land.rhs ]
  %land.ext = zext i1 %64 to i32
  %tobool61 = icmp eq i32 %54, 0, !dbg !182
  %or.cond807 = or i1 %tobool.not, %tobool61, !dbg !182
  %or.cond808 = or i1 %or.cond807, %tobool56, !dbg !182
  %tobool65 = icmp ne i32 %50, 0, !dbg !182
  %not.or.cond808 = xor i1 %or.cond808, true, !dbg !182
  %.tobool65 = and i1 %tobool65, %not.or.cond808, !dbg !182
  %land.ext67 = zext i1 %.tobool65 to i32
  %tobool71 = icmp eq i32 %55, 0, !dbg !183
  %or.cond810 = or i1 %tobool.not, %tobool71, !dbg !183
  %or.cond811 = or i1 %or.cond810, %tobool56, !dbg !183
  %tobool75 = icmp ne i32 %51, 0, !dbg !183
  %not.or.cond811 = xor i1 %or.cond811, true, !dbg !183
  %.tobool75 = and i1 %tobool75, %not.or.cond811, !dbg !183
  %land.ext77 = zext i1 %.tobool75 to i32
  %arraydecay = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 0, !dbg !184
  call void @DecodeSymParameters3D(i32* %arraydecay) #6, !dbg !184
  %65 = load i32* %arraydecay, align 16, !dbg !185, !tbaa !167
  %tobool80 = icmp eq i32 %65, 0, !dbg !185
  br i1 %tobool80, label %if.end, label %if.then, !dbg !185

if.then:                                          ; preds = %land.end
  %66 = load i32* %6, align 4, !dbg !186, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %66}, i64 0, metadata !141), !dbg !186
  br label %if.end, !dbg !188

if.end:                                           ; preds = %land.end, %if.then
  %lowerxi.0 = phi i32 [ %66, %if.then ], [ 0, %land.end ]
  %arrayidx82 = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 2, !dbg !189
  %67 = load i32* %arrayidx82, align 8, !dbg !189, !tbaa !167
  %tobool83 = icmp eq i32 %67, 0, !dbg !189
  br i1 %tobool83, label %if.end87, label %if.then84, !dbg !189

if.then84:                                        ; preds = %if.end
  %arrayidx85 = getelementptr inbounds i32* %6, i64 1, !dbg !190
  %68 = load i32* %arrayidx85, align 4, !dbg !190, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %68}, i64 0, metadata !143), !dbg !190
  br label %if.end87, !dbg !192

if.end87:                                         ; preds = %if.end, %if.then84
  %loweryi.0 = phi i32 [ %68, %if.then84 ], [ 0, %if.end ]
  %arrayidx88 = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 4, !dbg !193
  %69 = load i32* %arrayidx88, align 16, !dbg !193, !tbaa !167
  %tobool89 = icmp eq i32 %69, 0, !dbg !193
  br i1 %tobool89, label %if.end93, label %if.then90, !dbg !193

if.then90:                                        ; preds = %if.end87
  %arrayidx91 = getelementptr inbounds i32* %6, i64 2, !dbg !194
  %70 = load i32* %arrayidx91, align 4, !dbg !194, !tbaa !167
  call void @llvm.dbg.value(metadata !{i32 %70}, i64 0, metadata !145), !dbg !194
  br label %if.end93, !dbg !196

if.end93:                                         ; preds = %if.end87, %if.then90
  %lowerzi.0 = phi i32 [ %70, %if.then90 ], [ 0, %if.end87 ]
  %tobool94 = icmp eq i32 %56, 0, !dbg !197
  br i1 %tobool94, label %if.end123, label %if.then95, !dbg !197

if.then95:                                        ; preds = %if.end93
  %tobool96 = icmp eq i32 %57, 0, !dbg !198
  br i1 %tobool96, label %if.end104, label %if.then97, !dbg !198

if.then97:                                        ; preds = %if.then95
  %71 = load i32* %6, align 4, !dbg !200, !tbaa !167
  %sub99 = add nsw i32 %71, -1, !dbg !200
  call void @llvm.dbg.value(metadata !{i32 %sub99}, i64 0, metadata !141), !dbg !200
  %72 = load i32* %0, align 4, !dbg !202, !tbaa !167
  %sub101 = xor i32 %71, -1, !dbg !202
  %sub103 = add i32 %72, %sub101, !dbg !202
  call void @llvm.dbg.value(metadata !{i32 %sub103}, i64 0, metadata !142), !dbg !202
  br label %if.end104, !dbg !203

if.end104:                                        ; preds = %if.then95, %if.then97
  %lowerxi.1 = phi i32 [ %sub99, %if.then97 ], [ %lowerxi.0, %if.then95 ]
  %upperxi.0 = phi i32 [ %sub103, %if.then97 ], [ %sub, %if.then95 ]
  %tobool105 = icmp eq i32 %58, 0, !dbg !204
  br i1 %tobool105, label %if.end113, label %if.then106, !dbg !204

if.then106:                                       ; preds = %if.end104
  %arrayidx107 = getelementptr inbounds i32* %6, i64 1, !dbg !205
  %73 = load i32* %arrayidx107, align 4, !dbg !205, !tbaa !167
  %sub108 = add nsw i32 %73, -1, !dbg !205
  call void @llvm.dbg.value(metadata !{i32 %sub108}, i64 0, metadata !143), !dbg !205
  %74 = load i32* %arrayidx50, align 4, !dbg !207, !tbaa !167
  %sub110 = xor i32 %73, -1, !dbg !207
  %sub112 = add i32 %74, %sub110, !dbg !207
  call void @llvm.dbg.value(metadata !{i32 %sub112}, i64 0, metadata !144), !dbg !207
  br label %if.end113, !dbg !208

if.end113:                                        ; preds = %if.end104, %if.then106
  %loweryi.1 = phi i32 [ %sub108, %if.then106 ], [ %loweryi.0, %if.end104 ]
  %upperyi.0 = phi i32 [ %sub112, %if.then106 ], [ %sub51, %if.end104 ]
  %tobool114 = icmp eq i32 %59, 0, !dbg !209
  br i1 %tobool114, label %if.end123, label %if.then115, !dbg !209

if.then115:                                       ; preds = %if.end113
  %arrayidx116 = getelementptr inbounds i32* %6, i64 2, !dbg !210
  %75 = load i32* %arrayidx116, align 4, !dbg !210, !tbaa !167
  %sub117 = add nsw i32 %75, -1, !dbg !210
  call void @llvm.dbg.value(metadata !{i32 %sub117}, i64 0, metadata !145), !dbg !210
  %76 = load i32* %arrayidx52, align 4, !dbg !212, !tbaa !167
  %sub119 = xor i32 %75, -1, !dbg !212
  %sub121 = add i32 %76, %sub119, !dbg !212
  call void @llvm.dbg.value(metadata !{i32 %sub121}, i64 0, metadata !146), !dbg !212
  br label %if.end123, !dbg !213

if.end123:                                        ; preds = %if.end113, %if.end93, %if.then115
  %lowerxi.2 = phi i32 [ %lowerxi.1, %if.then115 ], [ %lowerxi.1, %if.end113 ], [ %lowerxi.0, %if.end93 ]
  %upperxi.1 = phi i32 [ %upperxi.0, %if.then115 ], [ %upperxi.0, %if.end113 ], [ %sub, %if.end93 ]
  %loweryi.2 = phi i32 [ %loweryi.1, %if.then115 ], [ %loweryi.1, %if.end113 ], [ %loweryi.0, %if.end93 ]
  %upperyi.1 = phi i32 [ %upperyi.0, %if.then115 ], [ %upperyi.0, %if.end113 ], [ %sub51, %if.end93 ]
  %lowerzi.1 = phi i32 [ %sub117, %if.then115 ], [ %lowerzi.0, %if.end113 ], [ %lowerzi.0, %if.end93 ]
  %upperzi.0 = phi i32 [ %sub121, %if.then115 ], [ %sub53, %if.end113 ], [ %sub53, %if.end93 ]
  %77 = call double @ldexp(double 1.000000e+00, i32 %5) #4, !dbg !214
  call void @llvm.dbg.value(metadata !{double %77}, i64 0, metadata !122), !dbg !214
  %conv125 = fptosi double %77 to i32, !dbg !215
  call void @llvm.dbg.value(metadata !{i32 %conv125}, i64 0, metadata !118), !dbg !215
  %call126 = call i32 @CCTK_Equals(i8* %47, i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !216
  %tobool127 = icmp eq i32 %call126, 0, !dbg !216
  br i1 %tobool127, label %lor.lhs.false, label %if.then130, !dbg !216

lor.lhs.false:                                    ; preds = %if.end123
  %call128 = call i32 @CCTK_Equals(i8* %47, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !216
  %tobool129 = icmp eq i32 %call128, 0, !dbg !216
  br i1 %tobool129, label %if.else289, label %if.then130, !dbg !216

if.then130:                                       ; preds = %lor.lhs.false, %if.end123
  %call131 = call i32 @CCTK_Equals(i8* %47, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !217
  %tobool132 = icmp eq i32 %call131, 0, !dbg !217
  br i1 %tobool132, label %if.else134, label %if.end144, !dbg !217

if.else134:                                       ; preds = %if.then130
  %cmp = fcmp une double %41, -4.242420e+05, !dbg !219
  %. = select i1 %cmp, double %41, double %39, !dbg !221
  %.812 = select i1 %cmp, double %41, double %43, !dbg !221
  %.813 = select i1 %cmp, double %41, double %45, !dbg !221
  %cmp139 = fcmp une double %42, -4.242420e+05, !dbg !223
  br i1 %cmp139, label %if.end144, label %if.else142, !dbg !223

if.else142:                                       ; preds = %if.else134
  call void @llvm.dbg.value(metadata !{double %40}, i64 0, metadata !129), !dbg !224
  call void @llvm.dbg.value(metadata !{double %44}, i64 0, metadata !130), !dbg !226
  call void @llvm.dbg.value(metadata !{double %46}, i64 0, metadata !131), !dbg !227
  br label %if.end144

if.end144:                                        ; preds = %if.else134, %if.then130, %if.else142
  %ymin1.0 = phi double [ %44, %if.else142 ], [ -5.000000e-01, %if.then130 ], [ %42, %if.else134 ]
  %zmin1.0 = phi double [ %46, %if.else142 ], [ -5.000000e-01, %if.then130 ], [ %42, %if.else134 ]
  %xmax1.1 = phi double [ %., %if.else142 ], [ 5.000000e-01, %if.then130 ], [ %., %if.else134 ]
  %ymax1.1 = phi double [ %.812, %if.else142 ], [ 5.000000e-01, %if.then130 ], [ %.812, %if.else134 ]
  %zmax1.1 = phi double [ %.813, %if.else142 ], [ 5.000000e-01, %if.then130 ], [ %.813, %if.else134 ]
  %xmin1.0 = phi double [ %40, %if.else142 ], [ -5.000000e-01, %if.then130 ], [ %42, %if.else134 ]
  %78 = load i32* %arraydecay, align 16, !dbg !228, !tbaa !167
  %tobool146 = icmp eq i32 %78, 0, !dbg !228
  br i1 %tobool146, label %if.else176, label %if.then147, !dbg !228

if.then147:                                       ; preds = %if.end144
  %79 = load i32* %0, align 4, !dbg !229, !tbaa !167
  %80 = load i32* %6, align 4, !dbg !229, !tbaa !167
  %sub153 = sub nsw i32 %79, %80, !dbg !229
  br i1 %64, label %if.then150, label %if.else162, !dbg !232

if.then150:                                       ; preds = %if.then147
  %conv154 = sitofp i32 %sub153 to double, !dbg !229
  %sub155 = fadd double %conv154, -5.000000e-01, !dbg !229
  %div = fdiv double %xmax1.1, %sub155, !dbg !229
  store double %div, double* %10, align 8, !dbg !229, !tbaa !169
  %conv157 = sitofp i32 %80 to double, !dbg !233
  %sub158 = fadd double %conv157, -5.000000e-01, !dbg !233
  %81 = fmul double %div, %sub158, !dbg !233
  %conv160 = sitofp i32 %conv125 to double, !dbg !233
  %82 = fmul double %conv160, %81, !dbg !233
  %mul161 = fsub double -0.000000e+00, %82, !dbg !233
  call void @llvm.dbg.value(metadata !{double %mul161}, i64 0, metadata !123), !dbg !233
  br label %if.end186, !dbg !234

if.else162:                                       ; preds = %if.then147
  %sub166 = add nsw i32 %sub153, -1, !dbg !235
  %conv167 = sitofp i32 %sub166 to double, !dbg !235
  %div168 = fdiv double %xmax1.1, %conv167, !dbg !235
  store double %div168, double* %10, align 8, !dbg !235, !tbaa !169
  %sub170 = sub nsw i32 0, %80, !dbg !237
  %conv171 = sitofp i32 %sub170 to double, !dbg !237
  %mul172 = fmul double %div168, %conv171, !dbg !237
  %conv173 = sitofp i32 %conv125 to double, !dbg !237
  %mul174 = fmul double %conv173, %mul172, !dbg !237
  call void @llvm.dbg.value(metadata !{double %mul174}, i64 0, metadata !123), !dbg !237
  br label %if.end186

if.else176:                                       ; preds = %if.end144
  %sub177 = fsub double %xmax1.1, %xmin1.0, !dbg !238
  %83 = load i32* %0, align 4, !dbg !238, !tbaa !167
  %sub179 = add nsw i32 %83, -1, !dbg !238
  %cmp180 = icmp sgt i32 %sub179, 1, !dbg !238
  br i1 %cmp180, label %cond.true, label %cond.end, !dbg !238

cond.true:                                        ; preds = %if.else176
  %phitmp = sitofp i32 %sub179 to double, !dbg !238
  br label %cond.end, !dbg !238

cond.end:                                         ; preds = %if.else176, %cond.true
  %cond = phi double [ %phitmp, %cond.true ], [ 1.000000e+00, %if.else176 ]
  %div185 = fdiv double %sub177, %cond, !dbg !238
  store double %div185, double* %10, align 8, !dbg !238, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %xmin1.0}, i64 0, metadata !123), !dbg !240
  br label %if.end186

if.end186:                                        ; preds = %if.then150, %if.else162, %cond.end
  %x_origin.0 = phi double [ %mul161, %if.then150 ], [ %mul174, %if.else162 ], [ %xmin1.0, %cond.end ]
  %84 = load i32* %arrayidx82, align 8, !dbg !241, !tbaa !167
  %tobool188 = icmp eq i32 %84, 0, !dbg !241
  br i1 %tobool188, label %if.else220, label %if.then189, !dbg !241

if.then189:                                       ; preds = %if.end186
  %85 = load i32* %arrayidx50, align 4, !dbg !242, !tbaa !167
  %arrayidx194 = getelementptr inbounds i32* %6, i64 1, !dbg !242
  %86 = load i32* %arrayidx194, align 4, !dbg !242, !tbaa !167
  %sub195 = sub nsw i32 %85, %86, !dbg !242
  br i1 %.tobool65, label %if.then192, label %if.else206, !dbg !245

if.then192:                                       ; preds = %if.then189
  %conv196 = sitofp i32 %sub195 to double, !dbg !242
  %sub197 = fadd double %conv196, -5.000000e-01, !dbg !242
  %div198 = fdiv double %ymax1.1, %sub197, !dbg !242
  store double %div198, double* %14, align 8, !dbg !242, !tbaa !169
  %conv200 = sitofp i32 %86 to double, !dbg !246
  %sub201 = fadd double %conv200, -5.000000e-01, !dbg !246
  %87 = fmul double %div198, %sub201, !dbg !246
  %conv204 = sitofp i32 %conv125 to double, !dbg !246
  %88 = fmul double %conv204, %87, !dbg !246
  %mul205 = fsub double -0.000000e+00, %88, !dbg !246
  call void @llvm.dbg.value(metadata !{double %mul205}, i64 0, metadata !124), !dbg !246
  br label %if.end234, !dbg !247

if.else206:                                       ; preds = %if.then189
  %sub210 = add nsw i32 %sub195, -1, !dbg !248
  %conv211 = sitofp i32 %sub210 to double, !dbg !248
  %div212 = fdiv double %ymax1.1, %conv211, !dbg !248
  store double %div212, double* %14, align 8, !dbg !248, !tbaa !169
  %sub214 = sub nsw i32 0, %86, !dbg !250
  %conv215 = sitofp i32 %sub214 to double, !dbg !250
  %mul216 = fmul double %div212, %conv215, !dbg !250
  %conv217 = sitofp i32 %conv125 to double, !dbg !250
  %mul218 = fmul double %conv217, %mul216, !dbg !250
  call void @llvm.dbg.value(metadata !{double %mul218}, i64 0, metadata !124), !dbg !250
  br label %if.end234

if.else220:                                       ; preds = %if.end186
  %sub221 = fsub double %ymax1.1, %ymin1.0, !dbg !251
  %89 = load i32* %arrayidx50, align 4, !dbg !251, !tbaa !167
  %sub223 = add nsw i32 %89, -1, !dbg !251
  %cmp224 = icmp sgt i32 %sub223, 1, !dbg !251
  br i1 %cmp224, label %cond.true226, label %cond.end230, !dbg !251

cond.true226:                                     ; preds = %if.else220
  %phitmp802 = sitofp i32 %sub223 to double, !dbg !251
  br label %cond.end230, !dbg !251

cond.end230:                                      ; preds = %if.else220, %cond.true226
  %cond231 = phi double [ %phitmp802, %cond.true226 ], [ 1.000000e+00, %if.else220 ]
  %div233 = fdiv double %sub221, %cond231, !dbg !251
  store double %div233, double* %14, align 8, !dbg !251, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %ymin1.0}, i64 0, metadata !124), !dbg !253
  br label %if.end234

if.end234:                                        ; preds = %if.then192, %if.else206, %cond.end230
  %y_origin.0 = phi double [ %mul205, %if.then192 ], [ %mul218, %if.else206 ], [ %ymin1.0, %cond.end230 ]
  %90 = load i32* %arrayidx88, align 16, !dbg !254, !tbaa !167
  %tobool236 = icmp eq i32 %90, 0, !dbg !254
  br i1 %tobool236, label %if.else268, label %if.then237, !dbg !254

if.then237:                                       ; preds = %if.end234
  %91 = load i32* %arrayidx52, align 4, !dbg !255, !tbaa !167
  %arrayidx242 = getelementptr inbounds i32* %6, i64 2, !dbg !255
  %92 = load i32* %arrayidx242, align 4, !dbg !255, !tbaa !167
  %sub243 = sub nsw i32 %91, %92, !dbg !255
  br i1 %.tobool75, label %if.then240, label %if.else254, !dbg !258

if.then240:                                       ; preds = %if.then237
  %conv244 = sitofp i32 %sub243 to double, !dbg !255
  %sub245 = fadd double %conv244, -5.000000e-01, !dbg !255
  %div246 = fdiv double %zmax1.1, %sub245, !dbg !255
  store double %div246, double* %18, align 8, !dbg !255, !tbaa !169
  %conv248 = sitofp i32 %92 to double, !dbg !259
  %sub249 = fadd double %conv248, -5.000000e-01, !dbg !259
  %93 = fmul double %div246, %sub249, !dbg !259
  %conv252 = sitofp i32 %conv125 to double, !dbg !259
  %94 = fmul double %conv252, %93, !dbg !259
  %mul253 = fsub double -0.000000e+00, %94, !dbg !259
  call void @llvm.dbg.value(metadata !{double %mul253}, i64 0, metadata !125), !dbg !259
  br label %if.end282, !dbg !260

if.else254:                                       ; preds = %if.then237
  %sub258 = add nsw i32 %sub243, -1, !dbg !261
  %conv259 = sitofp i32 %sub258 to double, !dbg !261
  %div260 = fdiv double %zmax1.1, %conv259, !dbg !261
  store double %div260, double* %18, align 8, !dbg !261, !tbaa !169
  %sub262 = sub nsw i32 0, %92, !dbg !263
  %conv263 = sitofp i32 %sub262 to double, !dbg !263
  %mul264 = fmul double %div260, %conv263, !dbg !263
  %conv265 = sitofp i32 %conv125 to double, !dbg !263
  %mul266 = fmul double %conv265, %mul264, !dbg !263
  call void @llvm.dbg.value(metadata !{double %mul266}, i64 0, metadata !125), !dbg !263
  br label %if.end282

if.else268:                                       ; preds = %if.end234
  %sub269 = fsub double %zmax1.1, %zmin1.0, !dbg !264
  %95 = load i32* %arrayidx52, align 4, !dbg !264, !tbaa !167
  %sub271 = add nsw i32 %95, -1, !dbg !264
  %cmp272 = icmp sgt i32 %sub271, 1, !dbg !264
  br i1 %cmp272, label %cond.true274, label %cond.end278, !dbg !264

cond.true274:                                     ; preds = %if.else268
  %phitmp803 = sitofp i32 %sub271 to double, !dbg !264
  br label %cond.end278, !dbg !264

cond.end278:                                      ; preds = %if.else268, %cond.true274
  %cond279 = phi double [ %phitmp803, %cond.true274 ], [ 1.000000e+00, %if.else268 ]
  %div281 = fdiv double %sub269, %cond279, !dbg !264
  store double %div281, double* %18, align 8, !dbg !264, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %zmin1.0}, i64 0, metadata !125), !dbg !266
  %conv283.pre = sitofp i32 %conv125 to double, !dbg !267
  br label %if.end282

if.end282:                                        ; preds = %if.then240, %if.else254, %cond.end278
  %conv283.pre-phi = phi double [ %conv252, %if.then240 ], [ %conv265, %if.else254 ], [ %conv283.pre, %cond.end278 ], !dbg !267
  %96 = phi double [ %div246, %if.then240 ], [ %div260, %if.else254 ], [ %div281, %cond.end278 ]
  %z_origin.0 = phi double [ %mul253, %if.then240 ], [ %mul266, %if.else254 ], [ %zmin1.0, %cond.end278 ]
  %97 = load double* %10, align 8, !dbg !267, !tbaa !169
  %mul284 = fmul double %conv283.pre-phi, %97, !dbg !267
  call void @llvm.dbg.value(metadata !{double %mul284}, i64 0, metadata !126), !dbg !267
  %98 = load double* %14, align 8, !dbg !268, !tbaa !169
  %mul286 = fmul double %conv283.pre-phi, %98, !dbg !268
  call void @llvm.dbg.value(metadata !{double %mul286}, i64 0, metadata !127), !dbg !268
  %mul288 = fmul double %conv283.pre-phi, %96, !dbg !269
  call void @llvm.dbg.value(metadata !{double %mul288}, i64 0, metadata !128), !dbg !269
  br label %if.end372, !dbg !270

if.else289:                                       ; preds = %lor.lhs.false
  %call290 = call i32 @CCTK_Equals(i8* %47, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !271
  %tobool291 = icmp eq i32 %call290, 0, !dbg !271
  br i1 %tobool291, label %if.end372, label %if.then292, !dbg !271

if.then292:                                       ; preds = %if.else289
  %cmp293 = fcmp ogt double %36, 0.000000e+00, !dbg !272
  %.814 = select i1 %cmp293, double %36, double %35, !dbg !274
  %.815 = select i1 %cmp293, double %36, double %37, !dbg !274
  %.816 = select i1 %cmp293, double %36, double %38, !dbg !274
  store double %.814, double* %10, align 8, !dbg !276, !tbaa !169
  store double %.815, double* %14, align 8, !dbg !277, !tbaa !169
  store double %.816, double* %18, align 8, !dbg !279, !tbaa !169
  %99 = load double* %10, align 8, !dbg !280, !tbaa !169
  %conv298 = sitofp i32 %conv125 to double, !dbg !280
  %mul299 = fmul double %conv298, %99, !dbg !280
  call void @llvm.dbg.value(metadata !{double %mul299}, i64 0, metadata !126), !dbg !280
  %100 = load double* %14, align 8, !dbg !281, !tbaa !169
  %mul301 = fmul double %conv298, %100, !dbg !281
  call void @llvm.dbg.value(metadata !{double %mul301}, i64 0, metadata !127), !dbg !281
  %mul303 = fmul double %.816, %conv298, !dbg !282
  call void @llvm.dbg.value(metadata !{double %mul303}, i64 0, metadata !128), !dbg !282
  %101 = load i32* %arraydecay, align 16, !dbg !283, !tbaa !167
  %tobool305 = icmp eq i32 %101, 0, !dbg !283
  br i1 %tobool305, label %if.else314, label %if.then306, !dbg !283

if.then306:                                       ; preds = %if.then292
  %102 = load i32* %6, align 4, !dbg !284, !tbaa !167
  %sub308 = sub nsw i32 0, %102, !dbg !284
  %conv309 = sitofp i32 %sub308 to double, !dbg !284
  %conv311 = sitofp i32 %land.ext to double, !dbg !284
  %mul312 = fmul double %conv311, 5.000000e-01, !dbg !284
  %add = fadd double %mul312, %conv309, !dbg !284
  br label %if.end324, !dbg !286

if.else314:                                       ; preds = %if.then292
  %103 = load i32* %0, align 4, !dbg !287, !tbaa !167
  %sub316 = add nsw i32 %103, -1, !dbg !287
  %.op = srem i32 %103, 2, !dbg !287
  %.op.op = sub i32 0, %.op
  %rem.neg = select i1 %64, i32 %.op.op, i32 0
  %sub320 = add i32 %sub316, %rem.neg, !dbg !287
  %conv321 = sitofp i32 %sub320 to double, !dbg !287
  %mul322 = fmul double %conv321, -5.000000e-01, !dbg !287
  br label %if.end324

if.end324:                                        ; preds = %if.else314, %if.then306
  %add.pn = phi double [ %add, %if.then306 ], [ %mul322, %if.else314 ]
  %x_origin.1 = fmul double %mul299, %add.pn, !dbg !284
  %104 = load i32* %arrayidx82, align 8, !dbg !289, !tbaa !167
  %tobool326 = icmp eq i32 %104, 0, !dbg !289
  br i1 %tobool326, label %if.else336, label %if.then327, !dbg !289

if.then327:                                       ; preds = %if.end324
  %arrayidx328 = getelementptr inbounds i32* %6, i64 1, !dbg !290
  %105 = load i32* %arrayidx328, align 4, !dbg !290, !tbaa !167
  %sub329 = sub nsw i32 0, %105, !dbg !290
  %conv330 = sitofp i32 %sub329 to double, !dbg !290
  %conv332 = sitofp i32 %land.ext67 to double, !dbg !290
  %mul333 = fmul double %conv332, 5.000000e-01, !dbg !290
  %add334 = fadd double %mul333, %conv330, !dbg !290
  br label %if.end347, !dbg !292

if.else336:                                       ; preds = %if.end324
  %106 = load i32* %arrayidx50, align 4, !dbg !293, !tbaa !167
  %sub338 = add nsw i32 %106, -1, !dbg !293
  %.op799 = srem i32 %106, 2, !dbg !293
  %.op799.op = sub i32 0, %.op799
  %rem342.neg = select i1 %.tobool65, i32 %.op799.op, i32 0
  %sub343 = add i32 %sub338, %rem342.neg, !dbg !293
  %conv344 = sitofp i32 %sub343 to double, !dbg !293
  %mul345 = fmul double %conv344, -5.000000e-01, !dbg !293
  br label %if.end347

if.end347:                                        ; preds = %if.else336, %if.then327
  %add334.pn = phi double [ %add334, %if.then327 ], [ %mul345, %if.else336 ]
  %y_origin.1 = fmul double %mul301, %add334.pn, !dbg !290
  %107 = load i32* %arrayidx88, align 16, !dbg !295, !tbaa !167
  %tobool349 = icmp eq i32 %107, 0, !dbg !295
  br i1 %tobool349, label %if.else359, label %if.then350, !dbg !295

if.then350:                                       ; preds = %if.end347
  %arrayidx351 = getelementptr inbounds i32* %6, i64 2, !dbg !296
  %108 = load i32* %arrayidx351, align 4, !dbg !296, !tbaa !167
  %sub352 = sub nsw i32 0, %108, !dbg !296
  %conv353 = sitofp i32 %sub352 to double, !dbg !296
  %conv355 = sitofp i32 %land.ext77 to double, !dbg !296
  %mul356 = fmul double %conv355, 5.000000e-01, !dbg !296
  %add357 = fadd double %mul356, %conv353, !dbg !296
  %mul358 = fmul double %mul303, %add357, !dbg !296
  call void @llvm.dbg.value(metadata !{double %mul358}, i64 0, metadata !125), !dbg !296
  br label %if.end372, !dbg !298

if.else359:                                       ; preds = %if.end347
  %109 = load i32* %arrayidx52, align 4, !dbg !299, !tbaa !167
  %sub361 = add nsw i32 %109, -1, !dbg !299
  %.op800 = srem i32 %109, 2, !dbg !299
  %.op800.op = sub i32 0, %.op800
  %rem365.neg = select i1 %.tobool75, i32 %.op800.op, i32 0
  %sub366 = add i32 %sub361, %rem365.neg, !dbg !299
  %conv367 = sitofp i32 %sub366 to double, !dbg !299
  %mul368 = fmul double %conv367, -5.000000e-01, !dbg !299
  %mul369 = fmul double %mul303, %mul368, !dbg !299
  call void @llvm.dbg.value(metadata !{double %mul369}, i64 0, metadata !125), !dbg !299
  br label %if.end372

if.end372:                                        ; preds = %if.else289, %if.else359, %if.then350, %if.end282
  %this_dz.0 = phi double [ %mul288, %if.end282 ], [ %mul303, %if.then350 ], [ %mul303, %if.else359 ], [ 0.000000e+00, %if.else289 ]
  %this_dy.0 = phi double [ %mul286, %if.end282 ], [ %mul301, %if.then350 ], [ %mul301, %if.else359 ], [ 0.000000e+00, %if.else289 ]
  %this_dx.0 = phi double [ %mul284, %if.end282 ], [ %mul299, %if.then350 ], [ %mul299, %if.else359 ], [ 0.000000e+00, %if.else289 ]
  %z_origin.1 = phi double [ %z_origin.0, %if.end282 ], [ %mul358, %if.then350 ], [ %mul369, %if.else359 ], [ 0.000000e+00, %if.else289 ]
  %y_origin.2 = phi double [ %y_origin.0, %if.end282 ], [ %y_origin.1, %if.then350 ], [ %y_origin.1, %if.else359 ], [ 0.000000e+00, %if.else289 ]
  %x_origin.2 = phi double [ %x_origin.0, %if.end282 ], [ %x_origin.1, %if.then350 ], [ %x_origin.1, %if.else359 ], [ 0.000000e+00, %if.else289 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !119), !dbg !301
  %110 = load i32* %1, align 4, !dbg !301, !tbaa !167
  %cmp374824 = icmp sgt i32 %110, 0, !dbg !301
  br i1 %cmp374824, label %for.cond376.preheader.lr.ph, label %for.end512, !dbg !301

for.cond376.preheader.lr.ph:                      ; preds = %if.end372
  %arrayidx377 = getelementptr inbounds i32* %1, i64 1, !dbg !303
  %arrayidx382 = getelementptr inbounds i32* %1, i64 2, !dbg !306
  %arrayidx401 = getelementptr inbounds i32* %2, i64 1, !dbg !309
  %arrayidx416 = getelementptr inbounds i32* %2, i64 2, !dbg !311
  %.pre = load i32* %arrayidx377, align 4, !dbg !303, !tbaa !167
  br label %for.cond376.preheader, !dbg !301

for.cond376.preheader:                            ; preds = %for.cond376.preheader.lr.ph, %for.inc510
  %111 = phi i32 [ %110, %for.cond376.preheader.lr.ph ], [ %128, %for.inc510 ]
  %112 = phi i32 [ %.pre, %for.cond376.preheader.lr.ph ], [ %129, %for.inc510 ], !dbg !303
  %i.0825 = phi i32 [ 0, %for.cond376.preheader.lr.ph ], [ %inc511, %for.inc510 ]
  %cmp378821 = icmp sgt i32 %112, 0, !dbg !303
  br i1 %cmp378821, label %for.cond381.preheader.lr.ph, label %for.inc510, !dbg !303

for.cond381.preheader.lr.ph:                      ; preds = %for.cond376.preheader
  %.pre828 = load i32* %arrayidx382, align 4, !dbg !306, !tbaa !167
  br label %for.cond381.preheader, !dbg !303

for.cond381.preheader:                            ; preds = %for.cond381.preheader.lr.ph, %for.inc507
  %113 = phi i32 [ %112, %for.cond381.preheader.lr.ph ], [ %126, %for.inc507 ]
  %114 = phi i32 [ %.pre828, %for.cond381.preheader.lr.ph ], [ %127, %for.inc507 ], !dbg !306
  %j.0822 = phi i32 [ 0, %for.cond381.preheader.lr.ph ], [ %inc508, %for.inc507 ]
  %cmp383819 = icmp sgt i32 %114, 0, !dbg !306
  br i1 %cmp383819, label %for.body385.lr.ph, label %for.inc507, !dbg !306

for.body385.lr.ph:                                ; preds = %for.cond381.preheader
  %.pre830 = load i32** %cctk_lsh3, align 8, !dbg !312, !tbaa !164
  %.pre831 = load i32* %.pre830, align 4, !dbg !312, !tbaa !167
  %arrayidx394.phi.trans.insert = getelementptr inbounds i32* %.pre830, i64 1
  %.pre832 = load i32* %arrayidx394.phi.trans.insert, align 4, !dbg !312, !tbaa !167
  br label %for.body385, !dbg !306

for.body385:                                      ; preds = %for.body385.lr.ph, %for.body385
  %115 = phi i32 [ %.pre832, %for.body385.lr.ph ], [ %124, %for.body385 ], !dbg !312
  %116 = phi i32 [ %.pre831, %for.body385.lr.ph ], [ %123, %for.body385 ], !dbg !312
  %k.0820 = phi i32 [ 0, %for.body385.lr.ph ], [ %inc, %for.body385 ]
  %117 = load i32* %2, align 4, !dbg !312, !tbaa !167
  %add387 = add nsw i32 %117, %i.0825, !dbg !312
  %conv388 = sitofp i32 %add387 to double, !dbg !312
  %mul389 = fmul double %this_dx.0, %conv388, !dbg !312
  %add390 = fadd double %x_origin.2, %mul389, !dbg !312
  %mul395 = mul nsw i32 %115, %k.0820, !dbg !312
  %add396 = add nsw i32 %mul395, %j.0822, !dbg !312
  %mul397 = mul nsw i32 %add396, %116, !dbg !312
  %add398 = add nsw i32 %mul397, %i.0825, !dbg !312
  %idxprom399 = sext i32 %add398 to i64, !dbg !312
  %arrayidx400 = getelementptr inbounds double* %26, i64 %idxprom399, !dbg !312
  store double %add390, double* %arrayidx400, align 8, !dbg !312, !tbaa !169
  %118 = load i32* %arrayidx401, align 4, !dbg !309, !tbaa !167
  %add402 = add nsw i32 %118, %j.0822, !dbg !309
  %conv403 = sitofp i32 %add402 to double, !dbg !309
  %mul404 = fmul double %this_dy.0, %conv403, !dbg !309
  %add405 = fadd double %y_origin.2, %mul404, !dbg !309
  %arrayidx415 = getelementptr inbounds double* %30, i64 %idxprom399, !dbg !309
  store double %add405, double* %arrayidx415, align 8, !dbg !309, !tbaa !169
  %119 = load i32* %arrayidx416, align 4, !dbg !311, !tbaa !167
  %add417 = add nsw i32 %119, %k.0820, !dbg !311
  %conv418 = sitofp i32 %add417 to double, !dbg !311
  %mul419 = fmul double %this_dz.0, %conv418, !dbg !311
  %add420 = fadd double %z_origin.1, %mul419, !dbg !311
  %arrayidx430 = getelementptr inbounds double* %34, i64 %idxprom399, !dbg !311
  store double %add420, double* %arrayidx430, align 8, !dbg !311, !tbaa !169
  %120 = load double* %arrayidx400, align 8, !dbg !313, !tbaa !169
  %mul451 = fmul double %120, %120, !dbg !313
  %121 = load double* %arrayidx415, align 8, !dbg !313, !tbaa !169
  %mul472 = fmul double %121, %121, !dbg !313
  %add473 = fadd double %mul451, %mul472, !dbg !313
  %mul494 = fmul double %add420, %add420, !dbg !313
  %add495 = fadd double %add473, %mul494, !dbg !313
  %call496 = call double @sqrt(double %add495) #6, !dbg !313
  %122 = load i32** %cctk_lsh3, align 8, !dbg !313, !tbaa !164
  %123 = load i32* %122, align 4, !dbg !313, !tbaa !167
  %arrayidx500 = getelementptr inbounds i32* %122, i64 1, !dbg !313
  %124 = load i32* %arrayidx500, align 4, !dbg !313, !tbaa !167
  %mul501 = mul nsw i32 %124, %k.0820, !dbg !313
  %add502 = add nsw i32 %mul501, %j.0822, !dbg !313
  %mul503 = mul nsw i32 %add502, %123, !dbg !313
  %add504 = add nsw i32 %mul503, %i.0825, !dbg !313
  %idxprom505 = sext i32 %add504 to i64, !dbg !313
  %arrayidx506 = getelementptr inbounds double* %22, i64 %idxprom505, !dbg !313
  store double %call496, double* %arrayidx506, align 8, !dbg !313, !tbaa !169
  %inc = add nsw i32 %k.0820, 1, !dbg !306
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !121), !dbg !306
  %125 = load i32* %arrayidx382, align 4, !dbg !306, !tbaa !167
  %cmp383 = icmp slt i32 %inc, %125, !dbg !306
  br i1 %cmp383, label %for.body385, label %for.cond381.for.inc507_crit_edge, !dbg !306

for.cond381.for.inc507_crit_edge:                 ; preds = %for.body385
  %.pre829 = load i32* %arrayidx377, align 4, !dbg !303, !tbaa !167
  br label %for.inc507, !dbg !306

for.inc507:                                       ; preds = %for.cond381.for.inc507_crit_edge, %for.cond381.preheader
  %126 = phi i32 [ %.pre829, %for.cond381.for.inc507_crit_edge ], [ %113, %for.cond381.preheader ], !dbg !303
  %127 = phi i32 [ %125, %for.cond381.for.inc507_crit_edge ], [ %114, %for.cond381.preheader ]
  %inc508 = add nsw i32 %j.0822, 1, !dbg !303
  call void @llvm.dbg.value(metadata !{i32 %inc508}, i64 0, metadata !120), !dbg !303
  %cmp378 = icmp slt i32 %inc508, %126, !dbg !303
  br i1 %cmp378, label %for.cond381.preheader, label %for.cond376.for.inc510_crit_edge, !dbg !303

for.cond376.for.inc510_crit_edge:                 ; preds = %for.inc507
  %.pre827 = load i32* %1, align 4, !dbg !301, !tbaa !167
  br label %for.inc510, !dbg !303

for.inc510:                                       ; preds = %for.cond376.for.inc510_crit_edge, %for.cond376.preheader
  %128 = phi i32 [ %.pre827, %for.cond376.for.inc510_crit_edge ], [ %111, %for.cond376.preheader ], !dbg !301
  %129 = phi i32 [ %126, %for.cond376.for.inc510_crit_edge ], [ %112, %for.cond376.preheader ]
  %inc511 = add nsw i32 %i.0825, 1, !dbg !301
  call void @llvm.dbg.value(metadata !{i32 %inc511}, i64 0, metadata !119), !dbg !301
  %cmp374 = icmp slt i32 %inc511, %128, !dbg !301
  br i1 %cmp374, label %for.cond376.preheader, label %for.end512, !dbg !301

for.end512:                                       ; preds = %for.inc510, %if.end372
  store double %this_dx.0, double* %3, align 8, !dbg !314, !tbaa !169
  %arrayidx514 = getelementptr inbounds double* %3, i64 1, !dbg !315
  store double %this_dy.0, double* %arrayidx514, align 8, !dbg !315, !tbaa !169
  %arrayidx515 = getelementptr inbounds double* %3, i64 2, !dbg !316
  store double %this_dz.0, double* %arrayidx515, align 8, !dbg !316, !tbaa !169
  store double %x_origin.2, double* %4, align 8, !dbg !317, !tbaa !169
  %arrayidx517 = getelementptr inbounds double* %4, i64 1, !dbg !318
  store double %y_origin.2, double* %arrayidx517, align 8, !dbg !318, !tbaa !169
  %arrayidx518 = getelementptr inbounds double* %4, i64 2, !dbg !319
  store double %z_origin.1, double* %arrayidx518, align 8, !dbg !319, !tbaa !169
  call void @llvm.dbg.value(metadata !{double %x_origin.2}, i64 0, metadata !135), !dbg !320
  %130 = load i32* %0, align 4, !dbg !321, !tbaa !167
  %sub520 = add nsw i32 %130, -1, !dbg !321
  %conv521 = sitofp i32 %sub520 to double, !dbg !321
  %mul522 = fmul double %this_dx.0, %conv521, !dbg !321
  %add523 = fadd double %x_origin.2, %mul522, !dbg !321
  call void @llvm.dbg.value(metadata !{double %add523}, i64 0, metadata !136), !dbg !321
  %call524 = call i32 @CCTK_CoordRegisterRange(%struct.cGH* %cctkGH, double %x_origin.2, double %add523, i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #6, !dbg !322
  %call525 = call i32 @CCTK_CoordRegisterRangePhysIndex(%struct.cGH* %cctkGH, i32 %lowerxi.2, i32 %upperxi.1, i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #6, !dbg !323
  call void @llvm.dbg.value(metadata !{double %y_origin.2}, i64 0, metadata !137), !dbg !324
  %131 = load i32* %arrayidx50, align 4, !dbg !325, !tbaa !167
  %sub527 = add nsw i32 %131, -1, !dbg !325
  %conv528 = sitofp i32 %sub527 to double, !dbg !325
  %mul529 = fmul double %this_dy.0, %conv528, !dbg !325
  %add530 = fadd double %y_origin.2, %mul529, !dbg !325
  call void @llvm.dbg.value(metadata !{double %add530}, i64 0, metadata !138), !dbg !325
  %call531 = call i32 @CCTK_CoordRegisterRange(%struct.cGH* %cctkGH, double %y_origin.2, double %add530, i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #6, !dbg !326
  %call532 = call i32 @CCTK_CoordRegisterRangePhysIndex(%struct.cGH* %cctkGH, i32 %loweryi.2, i32 %upperyi.1, i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #6, !dbg !327
  call void @llvm.dbg.value(metadata !{double %z_origin.1}, i64 0, metadata !139), !dbg !328
  %132 = load i32* %arrayidx52, align 4, !dbg !329, !tbaa !167
  %sub534 = add nsw i32 %132, -1, !dbg !329
  %conv535 = sitofp i32 %sub534 to double, !dbg !329
  %mul536 = fmul double %this_dz.0, %conv535, !dbg !329
  %add537 = fadd double %z_origin.1, %mul536, !dbg !329
  call void @llvm.dbg.value(metadata !{double %add537}, i64 0, metadata !140), !dbg !329
  %call538 = call i32 @CCTK_CoordRegisterRange(%struct.cGH* %cctkGH, double %z_origin.1, double %add537, i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #6, !dbg !330
  %call539 = call i32 @CCTK_CoordRegisterRangePhysIndex(%struct.cGH* %cctkGH, i32 %lowerzi.1, i32 %upperzi.0, i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #6, !dbg !331
  %call540 = call i32 @CCTK_Info(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0)) #6, !dbg !332
  %133 = load double* %3, align 8, !dbg !333, !tbaa !169
  %134 = load double* %arrayidx514, align 8, !dbg !333, !tbaa !169
  %135 = load double* %arrayidx515, align 8, !dbg !333, !tbaa !169
  %call545 = call i32 (i8*, i8*, ...)* @sprintf(i8* %60, i8* getelementptr inbounds ([32 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), double %133, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), double %134, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), double %135) #6, !dbg !333
  %call547 = call i32 @CCTK_Info(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* %60) #6, !dbg !334
  %call548 = call i32 @CCTK_Info(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str20, i64 0, i64 0)) #6, !dbg !335
  %call550 = call i32 (i8*, i8*, ...)* @sprintf(i8* %60, i8* getelementptr inbounds ([53 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), double %x_origin.2, double %add523, i8* getelementptr inbounds ([4 x i8]* @.str23, i64 0, i64 0), double %y_origin.2, double %add530, i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), double %z_origin.1, double %add537) #6, !dbg !336
  %call552 = call i32 @CCTK_Info(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* %60) #6, !dbg !337
  %call553 = call i32 @CCTK_Info(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str25, i64 0, i64 0)) #6, !dbg !338
  %call555 = call i32 (i8*, i8*, ...)* @sprintf(i8* %60, i8* getelementptr inbounds ([35 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i32 %lowerxi.2, i32 %upperxi.1, i8* getelementptr inbounds ([4 x i8]* @.str23, i64 0, i64 0), i32 %loweryi.2, i32 %upperyi.1, i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i32 %lowerzi.1, i32 %upperzi.0) #6, !dbg !339
  %call557 = call i32 @CCTK_Info(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* %60) #6, !dbg !340
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !117), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !71), !dbg !342
  call void @llvm.lifetime.end(i64 120, i8* %60) #4, !dbg !342
  ret void, !dbg !343
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @DecodeSymParameters3D(i32*) #3

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare double @sqrt(double) #5

; Function Attrs: optsize
declare i32 @CCTK_CoordRegisterRange(%struct.cGH*, double, double, i32, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_CoordRegisterRangePhysIndex(%struct.cGH*, i32, i32, i32, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

declare double @ldexp(double, i32)

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !159, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_CartGrid3D_CartGrid3D_c", metadata !"CCTKi_version_CactusBase_CartGrid3D_CartGrid3D_c", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_CartGrid3D_CartGrid3D_c, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [CCTKi_version_CactusBase_CartGrid3D_CartGrid3D_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CartGrid3D", metadata !"CartGrid3D", metadata !"", i32 33, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.cGH*)* @CartGrid3D, null, null, metadata !52, i32 34} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 34] [CartGrid3D]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !14}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !22, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !44, metadata !45}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!25 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!27 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!28 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!29 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!30 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!31 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!34 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!35 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!36 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!37 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !20} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!38 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!39 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!40 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !41} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !42} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!45 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !46} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!47 = metadata !{i32 786454, metadata !17, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!48 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51}
!50 = metadata !{i32 786445, metadata !17, metadata !48, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!51 = metadata !{i32 786445, metadata !17, metadata !48, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !151, metadata !155}
!53 = metadata !{i32 786689, metadata !11, metadata !"cctkGH", metadata !5, i32 16777249, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctkGH] [line 33]
!54 = metadata !{i32 786688, metadata !11, metadata !"cctk_dim", metadata !5, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dim] [line 36]
!55 = metadata !{i32 786688, metadata !11, metadata !"cctk_gsh", metadata !5, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_gsh] [line 36]
!56 = metadata !{i32 786688, metadata !11, metadata !"cctk_lsh", metadata !5, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lsh] [line 36]
!57 = metadata !{i32 786688, metadata !11, metadata !"cctk_lbnd", metadata !5, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lbnd] [line 36]
!58 = metadata !{i32 786688, metadata !11, metadata !"cctk_ubnd", metadata !5, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_ubnd] [line 36]
!59 = metadata !{i32 786688, metadata !11, metadata !"cctk_lssh", metadata !5, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lssh] [line 36]
!60 = metadata !{i32 786688, metadata !11, metadata !"cctk_from", metadata !5, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_from] [line 36]
!61 = metadata !{i32 786688, metadata !11, metadata !"cctk_to", metadata !5, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_to] [line 36]
!62 = metadata !{i32 786688, metadata !11, metadata !"cctk_bbox", metadata !5, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_bbox] [line 36]
!63 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_time", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_time] [line 36]
!64 = metadata !{i32 786688, metadata !11, metadata !"cctk_time", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_time] [line 36]
!65 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_space", metadata !5, i32 36, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_space] [line 36]
!66 = metadata !{i32 786688, metadata !11, metadata !"cctk_origin_space", metadata !5, i32 36, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_origin_space] [line 36]
!67 = metadata !{i32 786688, metadata !11, metadata !"cctk_levfac", metadata !5, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_levfac] [line 36]
!68 = metadata !{i32 786688, metadata !11, metadata !"cctk_convlevel", metadata !5, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_convlevel] [line 36]
!69 = metadata !{i32 786688, metadata !11, metadata !"cctk_nghostzones", metadata !5, i32 36, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_nghostzones] [line 36]
!70 = metadata !{i32 786688, metadata !11, metadata !"cctk_iteration", metadata !5, i32 36, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_iteration] [line 36]
!71 = metadata !{i32 786688, metadata !11, metadata !"cctk_dummy_pointer", metadata !5, i32 36, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dummy_pointer] [line 36]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!73 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{i32 786688, metadata !11, metadata !"coarse_dx", metadata !5, i32 36, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dx] [line 36]
!75 = metadata !{i32 786688, metadata !11, metadata !"coarse_dy", metadata !5, i32 36, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dy] [line 36]
!76 = metadata !{i32 786688, metadata !11, metadata !"coarse_dz", metadata !5, i32 36, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dz] [line 36]
!77 = metadata !{i32 786688, metadata !11, metadata !"r", metadata !5, i32 36, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 36]
!78 = metadata !{i32 786688, metadata !11, metadata !"x", metadata !5, i32 36, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 36]
!79 = metadata !{i32 786688, metadata !11, metadata !"y", metadata !5, i32 36, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 36]
!80 = metadata !{i32 786688, metadata !11, metadata !"z", metadata !5, i32 36, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 36]
!81 = metadata !{i32 786688, metadata !11, metadata !"dx", metadata !5, i32 37, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 37]
!82 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!83 = metadata !{i32 786688, metadata !11, metadata !"dxyz", metadata !5, i32 37, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dxyz] [line 37]
!84 = metadata !{i32 786688, metadata !11, metadata !"dy", metadata !5, i32 37, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 37]
!85 = metadata !{i32 786688, metadata !11, metadata !"dz", metadata !5, i32 37, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 37]
!86 = metadata !{i32 786688, metadata !11, metadata !"xmax", metadata !5, i32 37, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmax] [line 37]
!87 = metadata !{i32 786688, metadata !11, metadata !"xmin", metadata !5, i32 37, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmin] [line 37]
!88 = metadata !{i32 786688, metadata !11, metadata !"xyzmax", metadata !5, i32 37, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmax] [line 37]
!89 = metadata !{i32 786688, metadata !11, metadata !"xyzmin", metadata !5, i32 37, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xyzmin] [line 37]
!90 = metadata !{i32 786688, metadata !11, metadata !"ymax", metadata !5, i32 37, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymax] [line 37]
!91 = metadata !{i32 786688, metadata !11, metadata !"ymin", metadata !5, i32 37, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymin] [line 37]
!92 = metadata !{i32 786688, metadata !11, metadata !"zmax", metadata !5, i32 37, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmax] [line 37]
!93 = metadata !{i32 786688, metadata !11, metadata !"zmin", metadata !5, i32 37, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmin] [line 37]
!94 = metadata !{i32 786688, metadata !11, metadata !"bitant_plane", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitant_plane] [line 37]
!95 = metadata !{i32 786688, metadata !11, metadata !"domain", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 37]
!96 = metadata !{i32 786688, metadata !11, metadata !"quadrant_direction", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quadrant_direction] [line 37]
!97 = metadata !{i32 786688, metadata !11, metadata !"type", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 37]
!98 = metadata !{i32 786688, metadata !11, metadata !"symmetry_xmax", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmax] [line 37]
!99 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!100 = metadata !{i32 786688, metadata !11, metadata !"symmetry_xmin", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_xmin] [line 37]
!101 = metadata !{i32 786688, metadata !11, metadata !"symmetry_ymax", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymax] [line 37]
!102 = metadata !{i32 786688, metadata !11, metadata !"symmetry_ymin", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_ymin] [line 37]
!103 = metadata !{i32 786688, metadata !11, metadata !"symmetry_zmax", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmax] [line 37]
!104 = metadata !{i32 786688, metadata !11, metadata !"symmetry_zmin", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symmetry_zmin] [line 37]
!105 = metadata !{i32 786688, metadata !11, metadata !"avoid_origin", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_origin] [line 37]
!106 = metadata !{i32 786688, metadata !11, metadata !"avoid_originx", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originx] [line 37]
!107 = metadata !{i32 786688, metadata !11, metadata !"avoid_originy", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originy] [line 37]
!108 = metadata !{i32 786688, metadata !11, metadata !"avoid_originz", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avoid_originz] [line 37]
!109 = metadata !{i32 786688, metadata !11, metadata !"no_origin", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_origin] [line 37]
!110 = metadata !{i32 786688, metadata !11, metadata !"no_originx", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originx] [line 37]
!111 = metadata !{i32 786688, metadata !11, metadata !"no_originy", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originy] [line 37]
!112 = metadata !{i32 786688, metadata !11, metadata !"no_originz", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no_originz] [line 37]
!113 = metadata !{i32 786688, metadata !11, metadata !"periodic", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 37]
!114 = metadata !{i32 786688, metadata !11, metadata !"periodic_x", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 37]
!115 = metadata !{i32 786688, metadata !11, metadata !"periodic_y", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 37]
!116 = metadata !{i32 786688, metadata !11, metadata !"periodic_z", metadata !5, i32 37, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 37]
!117 = metadata !{i32 786688, metadata !11, metadata !"cctk_pdummy_pointer", metadata !5, i32 37, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 37]
!118 = metadata !{i32 786688, metadata !11, metadata !"iconv", metadata !5, i32 39, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iconv] [line 39]
!119 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 39, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 39]
!120 = metadata !{i32 786688, metadata !11, metadata !"j", metadata !5, i32 39, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 39]
!121 = metadata !{i32 786688, metadata !11, metadata !"k", metadata !5, i32 39, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 39]
!122 = metadata !{i32 786688, metadata !11, metadata !"dconv", metadata !5, i32 40, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dconv] [line 40]
!123 = metadata !{i32 786688, metadata !11, metadata !"x_origin", metadata !5, i32 41, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_origin] [line 41]
!124 = metadata !{i32 786688, metadata !11, metadata !"y_origin", metadata !5, i32 41, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_origin] [line 41]
!125 = metadata !{i32 786688, metadata !11, metadata !"z_origin", metadata !5, i32 41, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z_origin] [line 41]
!126 = metadata !{i32 786688, metadata !11, metadata !"this_dx", metadata !5, i32 42, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_dx] [line 42]
!127 = metadata !{i32 786688, metadata !11, metadata !"this_dy", metadata !5, i32 42, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_dy] [line 42]
!128 = metadata !{i32 786688, metadata !11, metadata !"this_dz", metadata !5, i32 42, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_dz] [line 42]
!129 = metadata !{i32 786688, metadata !11, metadata !"xmin1", metadata !5, i32 43, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmin1] [line 43]
!130 = metadata !{i32 786688, metadata !11, metadata !"ymin1", metadata !5, i32 43, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymin1] [line 43]
!131 = metadata !{i32 786688, metadata !11, metadata !"zmin1", metadata !5, i32 43, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmin1] [line 43]
!132 = metadata !{i32 786688, metadata !11, metadata !"xmax1", metadata !5, i32 43, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmax1] [line 43]
!133 = metadata !{i32 786688, metadata !11, metadata !"ymax1", metadata !5, i32 43, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ymax1] [line 43]
!134 = metadata !{i32 786688, metadata !11, metadata !"zmax1", metadata !5, i32 43, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zmax1] [line 43]
!135 = metadata !{i32 786688, metadata !11, metadata !"lowerx", metadata !5, i32 44, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowerx] [line 44]
!136 = metadata !{i32 786688, metadata !11, metadata !"upperx", metadata !5, i32 44, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [upperx] [line 44]
!137 = metadata !{i32 786688, metadata !11, metadata !"lowery", metadata !5, i32 44, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowery] [line 44]
!138 = metadata !{i32 786688, metadata !11, metadata !"uppery", metadata !5, i32 44, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uppery] [line 44]
!139 = metadata !{i32 786688, metadata !11, metadata !"lowerz", metadata !5, i32 44, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowerz] [line 44]
!140 = metadata !{i32 786688, metadata !11, metadata !"upperz", metadata !5, i32 44, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [upperz] [line 44]
!141 = metadata !{i32 786688, metadata !11, metadata !"lowerxi", metadata !5, i32 45, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowerxi] [line 45]
!142 = metadata !{i32 786688, metadata !11, metadata !"upperxi", metadata !5, i32 45, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [upperxi] [line 45]
!143 = metadata !{i32 786688, metadata !11, metadata !"loweryi", metadata !5, i32 45, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loweryi] [line 45]
!144 = metadata !{i32 786688, metadata !11, metadata !"upperyi", metadata !5, i32 45, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [upperyi] [line 45]
!145 = metadata !{i32 786688, metadata !11, metadata !"lowerzi", metadata !5, i32 45, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowerzi] [line 45]
!146 = metadata !{i32 786688, metadata !11, metadata !"upperzi", metadata !5, i32 45, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [upperzi] [line 45]
!147 = metadata !{i32 786688, metadata !11, metadata !"infoline", metadata !5, i32 46, metadata !148, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [infoline] [line 46]
!148 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 960, i64 8, i32 0, i32 0, metadata !10, metadata !149, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 960, align 8, offset 0] [from char]
!149 = metadata !{metadata !150}
!150 = metadata !{i32 786465, i64 0, i64 120}     ; [ DW_TAG_subrange_type ] [0, 119]
!151 = metadata !{i32 786688, metadata !11, metadata !"domainsym", metadata !5, i32 48, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domainsym] [line 48]
!152 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !20, metadata !153, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!153 = metadata !{metadata !154}
!154 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!155 = metadata !{i32 786688, metadata !11, metadata !"cntstag", metadata !5, i32 49, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cntstag] [line 49]
!156 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !20, metadata !157, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!157 = metadata !{metadata !158}
!158 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!159 = metadata !{metadata !160}
!160 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 23, metadata !8, i32 1, i32 1, null, null}
!161 = metadata !{i32 25, i32 0, metadata !4, null}
!162 = metadata !{i32 33, i32 0, metadata !11, null}
!163 = metadata !{i32 36, i32 0, metadata !11, null}
!164 = metadata !{metadata !"any pointer", metadata !165}
!165 = metadata !{metadata !"omnipotent char", metadata !166}
!166 = metadata !{metadata !"Simple C/C++ TBAA"}
!167 = metadata !{metadata !"int", metadata !165}
!168 = metadata !{i32 37, i32 0, metadata !11, null}
!169 = metadata !{metadata !"double", metadata !165}
!170 = metadata !{i32 46, i32 0, metadata !11, null}
!171 = metadata !{i32 48, i32 0, metadata !11, null}
!172 = metadata !{[3 x i32]* undef}
!173 = metadata !{i32 49, i32 0, metadata !11, null}
!174 = metadata !{double 0.000000e+00}
!175 = metadata !{i32 54, i32 0, metadata !11, null}
!176 = metadata !{i32 55, i32 0, metadata !11, null}
!177 = metadata !{i32 56, i32 0, metadata !11, null}
!178 = metadata !{i32 57, i32 0, metadata !11, null}
!179 = metadata !{i32 58, i32 0, metadata !11, null} ; [ DW_TAG_imported_module ]
!180 = metadata !{i32 59, i32 0, metadata !11, null}
!181 = metadata !{i32 62, i32 0, metadata !11, null}
!182 = metadata !{i32 63, i32 0, metadata !11, null}
!183 = metadata !{i32 64, i32 0, metadata !11, null}
!184 = metadata !{i32 67, i32 0, metadata !11, null}
!185 = metadata !{i32 70, i32 0, metadata !11, null}
!186 = metadata !{i32 72, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !11, i32 71, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!188 = metadata !{i32 73, i32 0, metadata !187, null}
!189 = metadata !{i32 78, i32 0, metadata !11, null}
!190 = metadata !{i32 80, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !11, i32 79, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!192 = metadata !{i32 81, i32 0, metadata !191, null}
!193 = metadata !{i32 86, i32 0, metadata !11, null}
!194 = metadata !{i32 88, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !11, i32 87, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!196 = metadata !{i32 89, i32 0, metadata !195, null}
!197 = metadata !{i32 95, i32 0, metadata !11, null}
!198 = metadata !{i32 97, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !11, i32 96, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!200 = metadata !{i32 99, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !199, i32 98, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!202 = metadata !{i32 100, i32 0, metadata !201, null}
!203 = metadata !{i32 101, i32 0, metadata !201, null}
!204 = metadata !{i32 102, i32 0, metadata !199, null}
!205 = metadata !{i32 104, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !199, i32 103, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!207 = metadata !{i32 105, i32 0, metadata !206, null}
!208 = metadata !{i32 106, i32 0, metadata !206, null}
!209 = metadata !{i32 107, i32 0, metadata !199, null}
!210 = metadata !{i32 109, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !199, i32 108, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!212 = metadata !{i32 110, i32 0, metadata !211, null}
!213 = metadata !{i32 111, i32 0, metadata !211, null}
!214 = metadata !{i32 114, i32 0, metadata !11, null}
!215 = metadata !{i32 115, i32 0, metadata !11, null}
!216 = metadata !{i32 133, i32 0, metadata !11, null}
!217 = metadata !{i32 136, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !11, i32 134, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!219 = metadata !{i32 152, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !218, i32 150, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!221 = metadata !{i32 157, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !220, i32 153, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!223 = metadata !{i32 165, i32 0, metadata !220, null}
!224 = metadata !{i32 173, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !220, i32 172, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!226 = metadata !{i32 174, i32 0, metadata !225, null}
!227 = metadata !{i32 175, i32 0, metadata !225, null}
!228 = metadata !{i32 185, i32 0, metadata !218, null}
!229 = metadata !{i32 189, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !231, i32 188, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!231 = metadata !{i32 786443, metadata !1, metadata !218, i32 186, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!232 = metadata !{i32 187, i32 0, metadata !231, null}
!233 = metadata !{i32 190, i32 0, metadata !230, null}
!234 = metadata !{i32 191, i32 0, metadata !230, null}
!235 = metadata !{i32 194, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !231, i32 193, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!237 = metadata !{i32 195, i32 0, metadata !236, null}
!238 = metadata !{i32 200, i32 0, metadata !239, null}
!239 = metadata !{i32 786443, metadata !1, metadata !218, i32 199, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!240 = metadata !{i32 201, i32 0, metadata !239, null}
!241 = metadata !{i32 204, i32 0, metadata !218, null}
!242 = metadata !{i32 208, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !244, i32 207, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!244 = metadata !{i32 786443, metadata !1, metadata !218, i32 205, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!245 = metadata !{i32 206, i32 0, metadata !244, null}
!246 = metadata !{i32 209, i32 0, metadata !243, null}
!247 = metadata !{i32 210, i32 0, metadata !243, null}
!248 = metadata !{i32 213, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !244, i32 212, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!250 = metadata !{i32 214, i32 0, metadata !249, null}
!251 = metadata !{i32 219, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !218, i32 218, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!253 = metadata !{i32 220, i32 0, metadata !252, null}
!254 = metadata !{i32 223, i32 0, metadata !218, null}
!255 = metadata !{i32 227, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !257, i32 226, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!257 = metadata !{i32 786443, metadata !1, metadata !218, i32 224, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!258 = metadata !{i32 225, i32 0, metadata !257, null}
!259 = metadata !{i32 228, i32 0, metadata !256, null}
!260 = metadata !{i32 229, i32 0, metadata !256, null}
!261 = metadata !{i32 232, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !257, i32 231, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!263 = metadata !{i32 233, i32 0, metadata !262, null}
!264 = metadata !{i32 238, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !218, i32 237, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!266 = metadata !{i32 239, i32 0, metadata !265, null}
!267 = metadata !{i32 243, i32 0, metadata !218, null}
!268 = metadata !{i32 244, i32 0, metadata !218, null}
!269 = metadata !{i32 245, i32 0, metadata !218, null}
!270 = metadata !{i32 247, i32 0, metadata !218, null}
!271 = metadata !{i32 257, i32 0, metadata !11, null}
!272 = metadata !{i32 262, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !11, i32 258, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!274 = metadata !{i32 267, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !273, i32 263, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!276 = metadata !{i32 264, i32 0, metadata !275, null}
!277 = metadata !{i32 271, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !273, i32 269, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!279 = metadata !{i32 266, i32 0, metadata !275, null}
!280 = metadata !{i32 276, i32 0, metadata !273, null}
!281 = metadata !{i32 277, i32 0, metadata !273, null}
!282 = metadata !{i32 278, i32 0, metadata !273, null}
!283 = metadata !{i32 283, i32 0, metadata !273, null}
!284 = metadata !{i32 285, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !273, i32 284, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!286 = metadata !{i32 286, i32 0, metadata !285, null}
!287 = metadata !{i32 289, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !273, i32 288, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!289 = metadata !{i32 293, i32 0, metadata !273, null}
!290 = metadata !{i32 295, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !273, i32 294, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!292 = metadata !{i32 296, i32 0, metadata !291, null}
!293 = metadata !{i32 299, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !273, i32 298, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!295 = metadata !{i32 303, i32 0, metadata !273, null}
!296 = metadata !{i32 305, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !273, i32 304, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!298 = metadata !{i32 306, i32 0, metadata !297, null}
!299 = metadata !{i32 309, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !273, i32 308, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!301 = metadata !{i32 316, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !11, i32 316, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!303 = metadata !{i32 318, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !305, i32 318, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!305 = metadata !{i32 786443, metadata !1, metadata !302, i32 317, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!306 = metadata !{i32 320, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !308, i32 320, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!308 = metadata !{i32 786443, metadata !1, metadata !304, i32 319, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!309 = metadata !{i32 323, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !307, i32 321, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/CartGrid3D.c]
!311 = metadata !{i32 324, i32 0, metadata !310, null}
!312 = metadata !{i32 322, i32 0, metadata !310, null}
!313 = metadata !{i32 325, i32 0, metadata !310, null}
!314 = metadata !{i32 332, i32 0, metadata !11, null}
!315 = metadata !{i32 333, i32 0, metadata !11, null}
!316 = metadata !{i32 334, i32 0, metadata !11, null}
!317 = metadata !{i32 336, i32 0, metadata !11, null}
!318 = metadata !{i32 337, i32 0, metadata !11, null}
!319 = metadata !{i32 338, i32 0, metadata !11, null}
!320 = metadata !{i32 340, i32 0, metadata !11, null}
!321 = metadata !{i32 341, i32 0, metadata !11, null}
!322 = metadata !{i32 342, i32 0, metadata !11, null}
!323 = metadata !{i32 343, i32 0, metadata !11, null}
!324 = metadata !{i32 345, i32 0, metadata !11, null}
!325 = metadata !{i32 346, i32 0, metadata !11, null}
!326 = metadata !{i32 347, i32 0, metadata !11, null}
!327 = metadata !{i32 348, i32 0, metadata !11, null}
!328 = metadata !{i32 350, i32 0, metadata !11, null}
!329 = metadata !{i32 351, i32 0, metadata !11, null}
!330 = metadata !{i32 352, i32 0, metadata !11, null}
!331 = metadata !{i32 353, i32 0, metadata !11, null}
!332 = metadata !{i32 355, i32 0, metadata !11, null}
!333 = metadata !{i32 356, i32 0, metadata !11, null}
!334 = metadata !{i32 360, i32 0, metadata !11, null}
!335 = metadata !{i32 362, i32 0, metadata !11, null}
!336 = metadata !{i32 363, i32 0, metadata !11, null}
!337 = metadata !{i32 367, i32 0, metadata !11, null}
!338 = metadata !{i32 369, i32 0, metadata !11, null}
!339 = metadata !{i32 370, i32 0, metadata !11, null}
!340 = metadata !{i32 374, i32 0, metadata !11, null}
!341 = metadata !{i8* undef}
!342 = metadata !{i32 395, i32 0, metadata !11, null}
!343 = metadata !{i32 397, i32 0, metadata !11, null}
