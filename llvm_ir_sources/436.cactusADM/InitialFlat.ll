; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [15 x i8] c"Einstein::detg\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"Einstein::gpp\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"Einstein::gqp\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"Einstein::gqq\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"Einstein::grp\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"Einstein::grq\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"Einstein::grr\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"Einstein::kpp\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"Einstein::kqp\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"Einstein::kqq\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"Einstein::krp\00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c"Einstein::krq\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"Einstein::krr\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"Einstein::trK\00", align 1
@.str14 = private unnamed_addr constant [32 x i8] c"einstein::active_slicing_handle\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"einstein::alp\00", align 1
@.str16 = private unnamed_addr constant [16 x i8] c"einstein::betax\00", align 1
@.str17 = private unnamed_addr constant [16 x i8] c"einstein::betay\00", align 1
@.str18 = private unnamed_addr constant [16 x i8] c"einstein::betaz\00", align 1
@.str19 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dx\00", align 1
@.str20 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dy\00", align 1
@.str21 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dz\00", align 1
@.str22 = private unnamed_addr constant [26 x i8] c"einstein::conformal_state\00", align 1
@.str23 = private unnamed_addr constant [23 x i8] c"TIME::courant_min_time\00", align 1
@.str24 = private unnamed_addr constant [25 x i8] c"TIME::courant_wave_speed\00", align 1
@.str25 = private unnamed_addr constant [16 x i8] c"einstein::emask\00", align 1
@.str26 = private unnamed_addr constant [14 x i8] c"einstein::gxx\00", align 1
@.str27 = private unnamed_addr constant [14 x i8] c"einstein::gxy\00", align 1
@.str28 = private unnamed_addr constant [14 x i8] c"einstein::gxz\00", align 1
@.str29 = private unnamed_addr constant [14 x i8] c"einstein::gyy\00", align 1
@.str30 = private unnamed_addr constant [14 x i8] c"einstein::gyz\00", align 1
@.str31 = private unnamed_addr constant [14 x i8] c"einstein::gzz\00", align 1
@.str32 = private unnamed_addr constant [14 x i8] c"einstein::kxx\00", align 1
@.str33 = private unnamed_addr constant [14 x i8] c"einstein::kxy\00", align 1
@.str34 = private unnamed_addr constant [14 x i8] c"einstein::kxz\00", align 1
@.str35 = private unnamed_addr constant [14 x i8] c"einstein::kyy\00", align 1
@.str36 = private unnamed_addr constant [14 x i8] c"einstein::kyz\00", align 1
@.str37 = private unnamed_addr constant [14 x i8] c"einstein::kzz\00", align 1
@.str38 = private unnamed_addr constant [14 x i8] c"einstein::psi\00", align 1
@.str39 = private unnamed_addr constant [15 x i8] c"einstein::psix\00", align 1
@.str40 = private unnamed_addr constant [16 x i8] c"einstein::psixx\00", align 1
@.str41 = private unnamed_addr constant [16 x i8] c"einstein::psixy\00", align 1
@.str42 = private unnamed_addr constant [16 x i8] c"einstein::psixz\00", align 1
@.str43 = private unnamed_addr constant [15 x i8] c"einstein::psiy\00", align 1
@.str44 = private unnamed_addr constant [16 x i8] c"einstein::psiyy\00", align 1
@.str45 = private unnamed_addr constant [16 x i8] c"einstein::psiyz\00", align 1
@.str46 = private unnamed_addr constant [15 x i8] c"einstein::psiz\00", align 1
@.str47 = private unnamed_addr constant [16 x i8] c"einstein::psizz\00", align 1
@.str48 = private unnamed_addr constant [8 x i8] c"GRID::r\00", align 1
@.str49 = private unnamed_addr constant [22 x i8] c"einstein::shift_state\00", align 1
@.str50 = private unnamed_addr constant [8 x i8] c"GRID::x\00", align 1
@.str51 = private unnamed_addr constant [8 x i8] c"GRID::y\00", align 1
@.str52 = private unnamed_addr constant [8 x i8] c"GRID::z\00", align 1
@einsteinrest_ = external global %struct.anon
@.str53 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str54 = private unnamed_addr constant [41 x i8] c"Setting flat Minkowski space in Einstein\00", align 1
@.str55 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str56 = private unnamed_addr constant [97 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/InitialFlat.c,v 1.8 2002/01/04 10:18:16 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_InitialFlat_c() #0 {
entry:
  ret i8* getelementptr inbounds ([97 x i8]* @.str56, i64 0, i64 0), !dbg !167
}

; Function Attrs: nounwind optsize uwtable
define void @InitialFlat(%struct.cGH* nocapture %cctkGH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %cctkGH}, i64 0, metadata !53), !dbg !168
  %cctk_lsh3 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 3, !dbg !169
  %0 = load i32** %cctk_lsh3, align 8, !dbg !169, !tbaa !170
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !56), !dbg !169
  %call = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #4, !dbg !169
  %data = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17, !dbg !169
  %call19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !169
  %call24 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !169
  %call29 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !169
  %call34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !169
  %call39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !169
  %call44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !169
  %call49 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !169
  %call54 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !169
  %call59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #4, !dbg !169
  %call64 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #4, !dbg !169
  %call69 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #4, !dbg !169
  %call74 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #4, !dbg !169
  %call79 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #4, !dbg !169
  %call84 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #4, !dbg !169
  %call89 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #4, !dbg !169
  %call94 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4, !dbg !169
  %idxprom95 = sext i32 %call94 to i64, !dbg !169
  %1 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx97 = getelementptr inbounds i8*** %1, i64 %idxprom95, !dbg !169
  %2 = load i8*** %arrayidx97, align 8, !dbg !169, !tbaa !170
  %3 = load i8** %2, align 8, !dbg !169, !tbaa !170
  %4 = bitcast i8* %3 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %4}, i64 0, metadata !90), !dbg !169
  %call99 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #4, !dbg !169
  %idxprom100 = sext i32 %call99 to i64, !dbg !169
  %5 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx102 = getelementptr inbounds i8*** %5, i64 %idxprom100, !dbg !169
  %6 = load i8*** %arrayidx102, align 8, !dbg !169, !tbaa !170
  %7 = load i8** %6, align 8, !dbg !169, !tbaa !170
  %8 = bitcast i8* %7 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %8}, i64 0, metadata !91), !dbg !169
  %call104 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #4, !dbg !169
  %idxprom105 = sext i32 %call104 to i64, !dbg !169
  %9 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx107 = getelementptr inbounds i8*** %9, i64 %idxprom105, !dbg !169
  %10 = load i8*** %arrayidx107, align 8, !dbg !169, !tbaa !170
  %11 = load i8** %10, align 8, !dbg !169, !tbaa !170
  %12 = bitcast i8* %11 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %12}, i64 0, metadata !92), !dbg !169
  %call109 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #4, !dbg !169
  %call114 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #4, !dbg !169
  %call119 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #4, !dbg !169
  %call124 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #4, !dbg !169
  %idxprom125 = sext i32 %call124 to i64, !dbg !169
  %13 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx127 = getelementptr inbounds i8*** %13, i64 %idxprom125, !dbg !169
  %14 = load i8*** %arrayidx127, align 8, !dbg !169, !tbaa !170
  %15 = load i8** %14, align 8, !dbg !169, !tbaa !170
  %16 = bitcast i8* %15 to i32*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{i32* %16}, i64 0, metadata !96), !dbg !169
  %call129 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #4, !dbg !169
  %call134 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #4, !dbg !169
  %call139 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #4, !dbg !169
  %call144 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #4, !dbg !169
  %idxprom145 = sext i32 %call144 to i64, !dbg !169
  %17 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx147 = getelementptr inbounds i8*** %17, i64 %idxprom145, !dbg !169
  %18 = load i8*** %arrayidx147, align 8, !dbg !169, !tbaa !170
  %19 = load i8** %18, align 8, !dbg !169, !tbaa !170
  %20 = bitcast i8* %19 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %20}, i64 0, metadata !100), !dbg !169
  %call149 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #4, !dbg !169
  %idxprom150 = sext i32 %call149 to i64, !dbg !169
  %21 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx152 = getelementptr inbounds i8*** %21, i64 %idxprom150, !dbg !169
  %22 = load i8*** %arrayidx152, align 8, !dbg !169, !tbaa !170
  %23 = load i8** %22, align 8, !dbg !169, !tbaa !170
  %24 = bitcast i8* %23 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %24}, i64 0, metadata !101), !dbg !169
  %call154 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #4, !dbg !169
  %idxprom155 = sext i32 %call154 to i64, !dbg !169
  %25 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx157 = getelementptr inbounds i8*** %25, i64 %idxprom155, !dbg !169
  %26 = load i8*** %arrayidx157, align 8, !dbg !169, !tbaa !170
  %27 = load i8** %26, align 8, !dbg !169, !tbaa !170
  %28 = bitcast i8* %27 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %28}, i64 0, metadata !102), !dbg !169
  %call159 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #4, !dbg !169
  %idxprom160 = sext i32 %call159 to i64, !dbg !169
  %29 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx162 = getelementptr inbounds i8*** %29, i64 %idxprom160, !dbg !169
  %30 = load i8*** %arrayidx162, align 8, !dbg !169, !tbaa !170
  %31 = load i8** %30, align 8, !dbg !169, !tbaa !170
  %32 = bitcast i8* %31 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %32}, i64 0, metadata !103), !dbg !169
  %call164 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #4, !dbg !169
  %idxprom165 = sext i32 %call164 to i64, !dbg !169
  %33 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx167 = getelementptr inbounds i8*** %33, i64 %idxprom165, !dbg !169
  %34 = load i8*** %arrayidx167, align 8, !dbg !169, !tbaa !170
  %35 = load i8** %34, align 8, !dbg !169, !tbaa !170
  %36 = bitcast i8* %35 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %36}, i64 0, metadata !104), !dbg !169
  %call169 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #4, !dbg !169
  %idxprom170 = sext i32 %call169 to i64, !dbg !169
  %37 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx172 = getelementptr inbounds i8*** %37, i64 %idxprom170, !dbg !169
  %38 = load i8*** %arrayidx172, align 8, !dbg !169, !tbaa !170
  %39 = load i8** %38, align 8, !dbg !169, !tbaa !170
  %40 = bitcast i8* %39 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %40}, i64 0, metadata !105), !dbg !169
  %call174 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #4, !dbg !169
  %idxprom175 = sext i32 %call174 to i64, !dbg !169
  %41 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx177 = getelementptr inbounds i8*** %41, i64 %idxprom175, !dbg !169
  %42 = load i8*** %arrayidx177, align 8, !dbg !169, !tbaa !170
  %43 = load i8** %42, align 8, !dbg !169, !tbaa !170
  %44 = bitcast i8* %43 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %44}, i64 0, metadata !106), !dbg !169
  %call179 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #4, !dbg !169
  %idxprom180 = sext i32 %call179 to i64, !dbg !169
  %45 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx182 = getelementptr inbounds i8*** %45, i64 %idxprom180, !dbg !169
  %46 = load i8*** %arrayidx182, align 8, !dbg !169, !tbaa !170
  %47 = load i8** %46, align 8, !dbg !169, !tbaa !170
  %48 = bitcast i8* %47 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %48}, i64 0, metadata !107), !dbg !169
  %call184 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #4, !dbg !169
  %idxprom185 = sext i32 %call184 to i64, !dbg !169
  %49 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx187 = getelementptr inbounds i8*** %49, i64 %idxprom185, !dbg !169
  %50 = load i8*** %arrayidx187, align 8, !dbg !169, !tbaa !170
  %51 = load i8** %50, align 8, !dbg !169, !tbaa !170
  %52 = bitcast i8* %51 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %52}, i64 0, metadata !108), !dbg !169
  %call189 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #4, !dbg !169
  %idxprom190 = sext i32 %call189 to i64, !dbg !169
  %53 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx192 = getelementptr inbounds i8*** %53, i64 %idxprom190, !dbg !169
  %54 = load i8*** %arrayidx192, align 8, !dbg !169, !tbaa !170
  %55 = load i8** %54, align 8, !dbg !169, !tbaa !170
  %56 = bitcast i8* %55 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %56}, i64 0, metadata !109), !dbg !169
  %call194 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #4, !dbg !169
  %idxprom195 = sext i32 %call194 to i64, !dbg !169
  %57 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx197 = getelementptr inbounds i8*** %57, i64 %idxprom195, !dbg !169
  %58 = load i8*** %arrayidx197, align 8, !dbg !169, !tbaa !170
  %59 = load i8** %58, align 8, !dbg !169, !tbaa !170
  %60 = bitcast i8* %59 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %60}, i64 0, metadata !110), !dbg !169
  %call199 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #4, !dbg !169
  %idxprom200 = sext i32 %call199 to i64, !dbg !169
  %61 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx202 = getelementptr inbounds i8*** %61, i64 %idxprom200, !dbg !169
  %62 = load i8*** %arrayidx202, align 8, !dbg !169, !tbaa !170
  %63 = load i8** %62, align 8, !dbg !169, !tbaa !170
  %64 = bitcast i8* %63 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %64}, i64 0, metadata !111), !dbg !169
  %call204 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #4, !dbg !169
  %idxprom205 = sext i32 %call204 to i64, !dbg !169
  %65 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx207 = getelementptr inbounds i8*** %65, i64 %idxprom205, !dbg !169
  %66 = load i8*** %arrayidx207, align 8, !dbg !169, !tbaa !170
  %67 = load i8** %66, align 8, !dbg !169, !tbaa !170
  %68 = bitcast i8* %67 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %68}, i64 0, metadata !112), !dbg !169
  %call209 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #4, !dbg !169
  %idxprom210 = sext i32 %call209 to i64, !dbg !169
  %69 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx212 = getelementptr inbounds i8*** %69, i64 %idxprom210, !dbg !169
  %70 = load i8*** %arrayidx212, align 8, !dbg !169, !tbaa !170
  %71 = load i8** %70, align 8, !dbg !169, !tbaa !170
  %72 = bitcast i8* %71 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %72}, i64 0, metadata !113), !dbg !169
  %call214 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #4, !dbg !169
  %idxprom215 = sext i32 %call214 to i64, !dbg !169
  %73 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx217 = getelementptr inbounds i8*** %73, i64 %idxprom215, !dbg !169
  %74 = load i8*** %arrayidx217, align 8, !dbg !169, !tbaa !170
  %75 = load i8** %74, align 8, !dbg !169, !tbaa !170
  %76 = bitcast i8* %75 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %76}, i64 0, metadata !114), !dbg !169
  %call219 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #4, !dbg !169
  %idxprom220 = sext i32 %call219 to i64, !dbg !169
  %77 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx222 = getelementptr inbounds i8*** %77, i64 %idxprom220, !dbg !169
  %78 = load i8*** %arrayidx222, align 8, !dbg !169, !tbaa !170
  %79 = load i8** %78, align 8, !dbg !169, !tbaa !170
  %80 = bitcast i8* %79 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %80}, i64 0, metadata !115), !dbg !169
  %call224 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #4, !dbg !169
  %idxprom225 = sext i32 %call224 to i64, !dbg !169
  %81 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx227 = getelementptr inbounds i8*** %81, i64 %idxprom225, !dbg !169
  %82 = load i8*** %arrayidx227, align 8, !dbg !169, !tbaa !170
  %83 = load i8** %82, align 8, !dbg !169, !tbaa !170
  %84 = bitcast i8* %83 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %84}, i64 0, metadata !116), !dbg !169
  %call229 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #4, !dbg !169
  %idxprom230 = sext i32 %call229 to i64, !dbg !169
  %85 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx232 = getelementptr inbounds i8*** %85, i64 %idxprom230, !dbg !169
  %86 = load i8*** %arrayidx232, align 8, !dbg !169, !tbaa !170
  %87 = load i8** %86, align 8, !dbg !169, !tbaa !170
  %88 = bitcast i8* %87 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %88}, i64 0, metadata !117), !dbg !169
  %call234 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #4, !dbg !169
  %idxprom235 = sext i32 %call234 to i64, !dbg !169
  %89 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx237 = getelementptr inbounds i8*** %89, i64 %idxprom235, !dbg !169
  %90 = load i8*** %arrayidx237, align 8, !dbg !169, !tbaa !170
  %91 = load i8** %90, align 8, !dbg !169, !tbaa !170
  %92 = bitcast i8* %91 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %92}, i64 0, metadata !118), !dbg !169
  %call239 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #4, !dbg !169
  %idxprom240 = sext i32 %call239 to i64, !dbg !169
  %93 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx242 = getelementptr inbounds i8*** %93, i64 %idxprom240, !dbg !169
  %94 = load i8*** %arrayidx242, align 8, !dbg !169, !tbaa !170
  %95 = load i8** %94, align 8, !dbg !169, !tbaa !170
  %96 = bitcast i8* %95 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %96}, i64 0, metadata !119), !dbg !169
  %call244 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #4, !dbg !169
  %idxprom245 = sext i32 %call244 to i64, !dbg !169
  %97 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx247 = getelementptr inbounds i8*** %97, i64 %idxprom245, !dbg !169
  %98 = load i8*** %arrayidx247, align 8, !dbg !169, !tbaa !170
  %99 = load i8** %98, align 8, !dbg !169, !tbaa !170
  %100 = bitcast i8* %99 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %100}, i64 0, metadata !120), !dbg !169
  %call249 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #4, !dbg !169
  %idxprom250 = sext i32 %call249 to i64, !dbg !169
  %101 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx252 = getelementptr inbounds i8*** %101, i64 %idxprom250, !dbg !169
  %102 = load i8*** %arrayidx252, align 8, !dbg !169, !tbaa !170
  %103 = load i8** %102, align 8, !dbg !169, !tbaa !170
  %104 = bitcast i8* %103 to double*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %104}, i64 0, metadata !121), !dbg !169
  %call254 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #4, !dbg !169
  %call259 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #4, !dbg !169
  %idxprom260 = sext i32 %call259 to i64, !dbg !169
  %105 = load i8**** %data, align 8, !dbg !169, !tbaa !170
  %arrayidx262 = getelementptr inbounds i8*** %105, i64 %idxprom260, !dbg !169
  %106 = load i8*** %arrayidx262, align 8, !dbg !169, !tbaa !170
  %107 = load i8** %106, align 8, !dbg !169, !tbaa !170
  %108 = bitcast i8* %107 to i32*, !dbg !169
  tail call void @llvm.dbg.value(metadata !{i32* %108}, i64 0, metadata !123), !dbg !169
  %call264 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #4, !dbg !169
  %call269 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #4, !dbg !169
  %call274 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #4, !dbg !169
  %109 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 11), align 8, !dbg !173, !tbaa !170
  tail call void @llvm.dbg.value(metadata !{i8* %109}, i64 0, metadata !139), !dbg !173
  %110 = load i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 18), align 8, !dbg !173, !tbaa !174
  tail call void @llvm.dbg.value(metadata !{i32 %110}, i64 0, metadata !147), !dbg !173
  %call279 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([9 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str54, i64 0, i64 0)) #4, !dbg !175
  %111 = load i32* %0, align 4, !dbg !176, !tbaa !174
  tail call void @llvm.dbg.value(metadata !{i32 %111}, i64 0, metadata !162), !dbg !176
  %arrayidx281 = getelementptr inbounds i32* %0, i64 1, !dbg !177
  %112 = load i32* %arrayidx281, align 4, !dbg !177, !tbaa !174
  tail call void @llvm.dbg.value(metadata !{i32 %112}, i64 0, metadata !163), !dbg !177
  %arrayidx282 = getelementptr inbounds i32* %0, i64 2, !dbg !178
  %113 = load i32* %arrayidx282, align 4, !dbg !178, !tbaa !174
  tail call void @llvm.dbg.value(metadata !{i32 %113}, i64 0, metadata !164), !dbg !178
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !161), !dbg !179
  %cmp464 = icmp sgt i32 %113, 0, !dbg !179
  br i1 %cmp464, label %for.cond283.preheader.lr.ph, label %for.end355, !dbg !179

for.cond283.preheader.lr.ph:                      ; preds = %entry
  %cmp284461 = icmp sgt i32 %112, 0, !dbg !181
  %cmp287459 = icmp sgt i32 %111, 0, !dbg !184
  %tobool = icmp eq i32 %110, 0, !dbg !187
  br label %for.cond283.preheader, !dbg !179

for.cond283.preheader:                            ; preds = %for.inc353, %for.cond283.preheader.lr.ph
  %k.0465 = phi i32 [ 0, %for.cond283.preheader.lr.ph ], [ %inc354, %for.inc353 ]
  br i1 %cmp284461, label %for.cond286.preheader, label %for.inc353, !dbg !181

for.cond286.preheader:                            ; preds = %for.cond283.preheader, %for.inc350
  %j.0462 = phi i32 [ %inc351, %for.inc350 ], [ 0, %for.cond283.preheader ]
  br i1 %cmp287459, label %for.body288, label %for.inc350, !dbg !184

for.body288:                                      ; preds = %for.cond286.preheader, %for.inc
  %i.0460 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond286.preheader ]
  %114 = load i32** %cctk_lsh3, align 8, !dbg !189, !tbaa !170
  %115 = load i32* %114, align 4, !dbg !189, !tbaa !174
  %arrayidx292 = getelementptr inbounds i32* %114, i64 1, !dbg !189
  %116 = load i32* %arrayidx292, align 4, !dbg !189, !tbaa !174
  %mul = mul nsw i32 %116, %k.0465, !dbg !189
  %add = add nsw i32 %mul, %j.0462, !dbg !189
  %mul293 = mul nsw i32 %add, %115, !dbg !189
  %add294 = add nsw i32 %mul293, %i.0460, !dbg !189
  tail call void @llvm.dbg.value(metadata !{i32 %add294}, i64 0, metadata !158), !dbg !189
  %idxprom295 = sext i32 %add294 to i64, !dbg !190
  %arrayidx296 = getelementptr inbounds double* %20, i64 %idxprom295, !dbg !190
  store double 1.000000e+00, double* %arrayidx296, align 8, !dbg !190, !tbaa !191
  %arrayidx298 = getelementptr inbounds double* %32, i64 %idxprom295, !dbg !192
  store double 1.000000e+00, double* %arrayidx298, align 8, !dbg !192, !tbaa !191
  %arrayidx300 = getelementptr inbounds double* %40, i64 %idxprom295, !dbg !193
  store double 1.000000e+00, double* %arrayidx300, align 8, !dbg !193, !tbaa !191
  %arrayidx302 = getelementptr inbounds double* %24, i64 %idxprom295, !dbg !194
  store double 0.000000e+00, double* %arrayidx302, align 8, !dbg !194, !tbaa !191
  %arrayidx304 = getelementptr inbounds double* %28, i64 %idxprom295, !dbg !195
  store double 0.000000e+00, double* %arrayidx304, align 8, !dbg !195, !tbaa !191
  %arrayidx306 = getelementptr inbounds double* %36, i64 %idxprom295, !dbg !196
  store double 0.000000e+00, double* %arrayidx306, align 8, !dbg !196, !tbaa !191
  %arrayidx308 = getelementptr inbounds double* %44, i64 %idxprom295, !dbg !197
  store double 0.000000e+00, double* %arrayidx308, align 8, !dbg !197, !tbaa !191
  %arrayidx310 = getelementptr inbounds double* %48, i64 %idxprom295, !dbg !198
  store double 0.000000e+00, double* %arrayidx310, align 8, !dbg !198, !tbaa !191
  %arrayidx312 = getelementptr inbounds double* %52, i64 %idxprom295, !dbg !199
  store double 0.000000e+00, double* %arrayidx312, align 8, !dbg !199, !tbaa !191
  %arrayidx314 = getelementptr inbounds double* %56, i64 %idxprom295, !dbg !200
  store double 0.000000e+00, double* %arrayidx314, align 8, !dbg !200, !tbaa !191
  %arrayidx316 = getelementptr inbounds double* %60, i64 %idxprom295, !dbg !201
  store double 0.000000e+00, double* %arrayidx316, align 8, !dbg !201, !tbaa !191
  %arrayidx318 = getelementptr inbounds double* %64, i64 %idxprom295, !dbg !202
  store double 0.000000e+00, double* %arrayidx318, align 8, !dbg !202, !tbaa !191
  %call319 = tail call i32 @CCTK_Equals(i8* %109, i8* getelementptr inbounds ([5 x i8]* @.str55, i64 0, i64 0)) #4, !dbg !203
  %cmp320 = icmp eq i32 %call319, 0, !dbg !203
  br i1 %cmp320, label %if.then, label %if.else, !dbg !203

if.then:                                          ; preds = %for.body288
  store i32 1, i32* %108, align 4, !dbg !204, !tbaa !174
  %arrayidx322 = getelementptr inbounds double* %4, i64 %idxprom295, !dbg !206
  store double 0.000000e+00, double* %arrayidx322, align 8, !dbg !206, !tbaa !191
  %arrayidx324 = getelementptr inbounds double* %8, i64 %idxprom295, !dbg !207
  store double 0.000000e+00, double* %arrayidx324, align 8, !dbg !207, !tbaa !191
  %arrayidx326 = getelementptr inbounds double* %12, i64 %idxprom295, !dbg !208
  store double 0.000000e+00, double* %arrayidx326, align 8, !dbg !208, !tbaa !191
  br label %if.end, !dbg !209

if.else:                                          ; preds = %for.body288
  store i32 0, i32* %108, align 4, !dbg !210, !tbaa !174
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br i1 %tobool, label %if.else348, label %if.then327, !dbg !187

if.then327:                                       ; preds = %if.end
  store i32 1, i32* %16, align 4, !dbg !212, !tbaa !174
  %arrayidx329 = getelementptr inbounds double* %68, i64 %idxprom295, !dbg !214
  store double 1.000000e+00, double* %arrayidx329, align 8, !dbg !214, !tbaa !191
  %arrayidx331 = getelementptr inbounds double* %72, i64 %idxprom295, !dbg !215
  store double 0.000000e+00, double* %arrayidx331, align 8, !dbg !215, !tbaa !191
  %arrayidx333 = getelementptr inbounds double* %88, i64 %idxprom295, !dbg !216
  store double 0.000000e+00, double* %arrayidx333, align 8, !dbg !216, !tbaa !191
  %arrayidx335 = getelementptr inbounds double* %100, i64 %idxprom295, !dbg !217
  store double 0.000000e+00, double* %arrayidx335, align 8, !dbg !217, !tbaa !191
  %arrayidx337 = getelementptr inbounds double* %80, i64 %idxprom295, !dbg !218
  store double 0.000000e+00, double* %arrayidx337, align 8, !dbg !218, !tbaa !191
  %arrayidx339 = getelementptr inbounds double* %84, i64 %idxprom295, !dbg !219
  store double 0.000000e+00, double* %arrayidx339, align 8, !dbg !219, !tbaa !191
  %arrayidx341 = getelementptr inbounds double* %96, i64 %idxprom295, !dbg !220
  store double 0.000000e+00, double* %arrayidx341, align 8, !dbg !220, !tbaa !191
  %arrayidx343 = getelementptr inbounds double* %76, i64 %idxprom295, !dbg !221
  store double 0.000000e+00, double* %arrayidx343, align 8, !dbg !221, !tbaa !191
  %arrayidx345 = getelementptr inbounds double* %92, i64 %idxprom295, !dbg !222
  store double 0.000000e+00, double* %arrayidx345, align 8, !dbg !222, !tbaa !191
  %arrayidx347 = getelementptr inbounds double* %104, i64 %idxprom295, !dbg !223
  store double 0.000000e+00, double* %arrayidx347, align 8, !dbg !223, !tbaa !191
  br label %for.inc, !dbg !224

if.else348:                                       ; preds = %if.end
  store i32 0, i32* %16, align 4, !dbg !225, !tbaa !174
  br label %for.inc

for.inc:                                          ; preds = %if.then327, %if.else348
  %inc = add nsw i32 %i.0460, 1, !dbg !184
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !159), !dbg !184
  %exitcond = icmp eq i32 %inc, %111, !dbg !184
  br i1 %exitcond, label %for.inc350, label %for.body288, !dbg !184

for.inc350:                                       ; preds = %for.inc, %for.cond286.preheader
  %inc351 = add nsw i32 %j.0462, 1, !dbg !181
  tail call void @llvm.dbg.value(metadata !{i32 %inc351}, i64 0, metadata !160), !dbg !181
  %exitcond466 = icmp eq i32 %inc351, %112, !dbg !181
  br i1 %exitcond466, label %for.inc353, label %for.cond286.preheader, !dbg !181

for.inc353:                                       ; preds = %for.inc350, %for.cond283.preheader
  %inc354 = add nsw i32 %k.0465, 1, !dbg !179
  tail call void @llvm.dbg.value(metadata !{i32 %inc354}, i64 0, metadata !161), !dbg !179
  %exitcond467 = icmp eq i32 %inc354, %113, !dbg !179
  br i1 %exitcond467, label %for.end355, label %for.cond283.preheader, !dbg !179

for.end355:                                       ; preds = %for.inc353, %entry
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !157), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !71), !dbg !228
  ret void, !dbg !228
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !165, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusEinstein_Einstein_InitialFlat_c", metadata !"CCTKi_version_CactusEinstein_Einstein_InitialFlat_c", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusEinstein_Einstein_InitialFlat_c, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [CCTKi_version_CactusEinstein_Einstein_InitialFlat_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InitialFlat", metadata !"InitialFlat", metadata !"", i32 16, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.cGH*)* @InitialFlat, null, null, metadata !52, i32 17} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 17] [InitialFlat]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !14}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164}
!53 = metadata !{i32 786689, metadata !11, metadata !"cctkGH", metadata !5, i32 16777232, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctkGH] [line 16]
!54 = metadata !{i32 786688, metadata !11, metadata !"cctk_dim", metadata !5, i32 19, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dim] [line 19]
!55 = metadata !{i32 786688, metadata !11, metadata !"cctk_gsh", metadata !5, i32 19, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_gsh] [line 19]
!56 = metadata !{i32 786688, metadata !11, metadata !"cctk_lsh", metadata !5, i32 19, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lsh] [line 19]
!57 = metadata !{i32 786688, metadata !11, metadata !"cctk_lbnd", metadata !5, i32 19, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lbnd] [line 19]
!58 = metadata !{i32 786688, metadata !11, metadata !"cctk_ubnd", metadata !5, i32 19, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_ubnd] [line 19]
!59 = metadata !{i32 786688, metadata !11, metadata !"cctk_lssh", metadata !5, i32 19, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lssh] [line 19]
!60 = metadata !{i32 786688, metadata !11, metadata !"cctk_from", metadata !5, i32 19, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_from] [line 19]
!61 = metadata !{i32 786688, metadata !11, metadata !"cctk_to", metadata !5, i32 19, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_to] [line 19]
!62 = metadata !{i32 786688, metadata !11, metadata !"cctk_bbox", metadata !5, i32 19, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_bbox] [line 19]
!63 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_time", metadata !5, i32 19, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_time] [line 19]
!64 = metadata !{i32 786688, metadata !11, metadata !"cctk_time", metadata !5, i32 19, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_time] [line 19]
!65 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_space", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_space] [line 19]
!66 = metadata !{i32 786688, metadata !11, metadata !"cctk_origin_space", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_origin_space] [line 19]
!67 = metadata !{i32 786688, metadata !11, metadata !"cctk_levfac", metadata !5, i32 19, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_levfac] [line 19]
!68 = metadata !{i32 786688, metadata !11, metadata !"cctk_convlevel", metadata !5, i32 19, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_convlevel] [line 19]
!69 = metadata !{i32 786688, metadata !11, metadata !"cctk_nghostzones", metadata !5, i32 19, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_nghostzones] [line 19]
!70 = metadata !{i32 786688, metadata !11, metadata !"cctk_iteration", metadata !5, i32 19, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_iteration] [line 19]
!71 = metadata !{i32 786688, metadata !11, metadata !"cctk_dummy_pointer", metadata !5, i32 19, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dummy_pointer] [line 19]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!73 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{i32 786688, metadata !11, metadata !"detg", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [detg] [line 19]
!75 = metadata !{i32 786688, metadata !11, metadata !"gpp", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gpp] [line 19]
!76 = metadata !{i32 786688, metadata !11, metadata !"gqp", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gqp] [line 19]
!77 = metadata !{i32 786688, metadata !11, metadata !"gqq", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gqq] [line 19]
!78 = metadata !{i32 786688, metadata !11, metadata !"grp", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grp] [line 19]
!79 = metadata !{i32 786688, metadata !11, metadata !"grq", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grq] [line 19]
!80 = metadata !{i32 786688, metadata !11, metadata !"grr", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grr] [line 19]
!81 = metadata !{i32 786688, metadata !11, metadata !"kpp", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kpp] [line 19]
!82 = metadata !{i32 786688, metadata !11, metadata !"kqp", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kqp] [line 19]
!83 = metadata !{i32 786688, metadata !11, metadata !"kqq", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kqq] [line 19]
!84 = metadata !{i32 786688, metadata !11, metadata !"krp", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [krp] [line 19]
!85 = metadata !{i32 786688, metadata !11, metadata !"krq", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [krq] [line 19]
!86 = metadata !{i32 786688, metadata !11, metadata !"krr", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [krr] [line 19]
!87 = metadata !{i32 786688, metadata !11, metadata !"trK", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [trK] [line 19]
!88 = metadata !{i32 786688, metadata !11, metadata !"active_slicing_handle", metadata !5, i32 19, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [active_slicing_handle] [line 19]
!89 = metadata !{i32 786688, metadata !11, metadata !"alp", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alp] [line 19]
!90 = metadata !{i32 786688, metadata !11, metadata !"betax", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betax] [line 19]
!91 = metadata !{i32 786688, metadata !11, metadata !"betay", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betay] [line 19]
!92 = metadata !{i32 786688, metadata !11, metadata !"betaz", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betaz] [line 19]
!93 = metadata !{i32 786688, metadata !11, metadata !"coarse_dx", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dx] [line 19]
!94 = metadata !{i32 786688, metadata !11, metadata !"coarse_dy", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dy] [line 19]
!95 = metadata !{i32 786688, metadata !11, metadata !"coarse_dz", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dz] [line 19]
!96 = metadata !{i32 786688, metadata !11, metadata !"conformal_state", metadata !5, i32 19, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conformal_state] [line 19]
!97 = metadata !{i32 786688, metadata !11, metadata !"courant_min_time", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_min_time] [line 19]
!98 = metadata !{i32 786688, metadata !11, metadata !"courant_wave_speed", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_wave_speed] [line 19]
!99 = metadata !{i32 786688, metadata !11, metadata !"emask", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [emask] [line 19]
!100 = metadata !{i32 786688, metadata !11, metadata !"gxx", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxx] [line 19]
!101 = metadata !{i32 786688, metadata !11, metadata !"gxy", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxy] [line 19]
!102 = metadata !{i32 786688, metadata !11, metadata !"gxz", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxz] [line 19]
!103 = metadata !{i32 786688, metadata !11, metadata !"gyy", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gyy] [line 19]
!104 = metadata !{i32 786688, metadata !11, metadata !"gyz", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gyz] [line 19]
!105 = metadata !{i32 786688, metadata !11, metadata !"gzz", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gzz] [line 19]
!106 = metadata !{i32 786688, metadata !11, metadata !"kxx", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kxx] [line 19]
!107 = metadata !{i32 786688, metadata !11, metadata !"kxy", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kxy] [line 19]
!108 = metadata !{i32 786688, metadata !11, metadata !"kxz", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kxz] [line 19]
!109 = metadata !{i32 786688, metadata !11, metadata !"kyy", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kyy] [line 19]
!110 = metadata !{i32 786688, metadata !11, metadata !"kyz", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kyz] [line 19]
!111 = metadata !{i32 786688, metadata !11, metadata !"kzz", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kzz] [line 19]
!112 = metadata !{i32 786688, metadata !11, metadata !"psi", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psi] [line 19]
!113 = metadata !{i32 786688, metadata !11, metadata !"psix", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psix] [line 19]
!114 = metadata !{i32 786688, metadata !11, metadata !"psixx", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psixx] [line 19]
!115 = metadata !{i32 786688, metadata !11, metadata !"psixy", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psixy] [line 19]
!116 = metadata !{i32 786688, metadata !11, metadata !"psixz", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psixz] [line 19]
!117 = metadata !{i32 786688, metadata !11, metadata !"psiy", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiy] [line 19]
!118 = metadata !{i32 786688, metadata !11, metadata !"psiyy", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiyy] [line 19]
!119 = metadata !{i32 786688, metadata !11, metadata !"psiyz", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiyz] [line 19]
!120 = metadata !{i32 786688, metadata !11, metadata !"psiz", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiz] [line 19]
!121 = metadata !{i32 786688, metadata !11, metadata !"psizz", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psizz] [line 19]
!122 = metadata !{i32 786688, metadata !11, metadata !"r", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 19]
!123 = metadata !{i32 786688, metadata !11, metadata !"shift_state", metadata !5, i32 19, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift_state] [line 19]
!124 = metadata !{i32 786688, metadata !11, metadata !"x", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 19]
!125 = metadata !{i32 786688, metadata !11, metadata !"y", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 19]
!126 = metadata !{i32 786688, metadata !11, metadata !"z", metadata !5, i32 19, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 19]
!127 = metadata !{i32 786688, metadata !11, metadata !"gaussian_amplitude", metadata !5, i32 20, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_amplitude] [line 20]
!128 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!129 = metadata !{i32 786688, metadata !11, metadata !"gaussian_sigma2", metadata !5, i32 20, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_sigma2] [line 20]
!130 = metadata !{i32 786688, metadata !11, metadata !"psiminustwo_cut", metadata !5, i32 20, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiminustwo_cut] [line 20]
!131 = metadata !{i32 786688, metadata !11, metadata !"rot_shift_att_sigma", metadata !5, i32 20, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_sigma] [line 20]
!132 = metadata !{i32 786688, metadata !11, metadata !"rotation_omega", metadata !5, i32 20, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_omega] [line 20]
!133 = metadata !{i32 786688, metadata !11, metadata !"advection", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [advection] [line 20]
!134 = metadata !{i32 786688, metadata !11, metadata !"evolution_system", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [evolution_system] [line 20]
!135 = metadata !{i32 786688, metadata !11, metadata !"initial_data", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_data] [line 20]
!136 = metadata !{i32 786688, metadata !11, metadata !"initial_lapse", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_lapse] [line 20]
!137 = metadata !{i32 786688, metadata !11, metadata !"initial_shift", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_shift] [line 20]
!138 = metadata !{i32 786688, metadata !11, metadata !"mixed_slicing", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mixed_slicing] [line 20]
!139 = metadata !{i32 786688, metadata !11, metadata !"shift", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 20]
!140 = metadata !{i32 786688, metadata !11, metadata !"slicing", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing] [line 20]
!141 = metadata !{i32 786688, metadata !11, metadata !"slicing_verbose", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing_verbose] [line 20]
!142 = metadata !{i32 786688, metadata !11, metadata !"einstein_register_slicing", metadata !5, i32 20, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [einstein_register_slicing] [line 20]
!143 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!144 = metadata !{i32 786688, metadata !11, metadata !"rot_shift_att", metadata !5, i32 20, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att] [line 20]
!145 = metadata !{i32 786688, metadata !11, metadata !"rot_shift_att_pow", metadata !5, i32 20, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_pow] [line 20]
!146 = metadata !{i32 786688, metadata !11, metadata !"rotation_psipower", metadata !5, i32 20, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_psipower] [line 20]
!147 = metadata !{i32 786688, metadata !11, metadata !"use_conformal", metadata !5, i32 20, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal] [line 20]
!148 = metadata !{i32 786688, metadata !11, metadata !"use_conformal_derivs", metadata !5, i32 20, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal_derivs] [line 20]
!149 = metadata !{i32 786688, metadata !11, metadata !"use_mask", metadata !5, i32 20, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_mask] [line 20]
!150 = metadata !{i32 786688, metadata !11, metadata !"dtfac", metadata !5, i32 20, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtfac] [line 20]
!151 = metadata !{i32 786688, metadata !11, metadata !"gauge_speed", metadata !5, i32 20, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gauge_speed] [line 20]
!152 = metadata !{i32 786688, metadata !11, metadata !"wavecalc", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wavecalc] [line 20]
!153 = metadata !{i32 786688, metadata !11, metadata !"conformal_storage_all", metadata !5, i32 20, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conformal_storage_all] [line 20]
!154 = metadata !{i32 786688, metadata !11, metadata !"rsquared_in_sphm", metadata !5, i32 20, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsquared_in_sphm] [line 20]
!155 = metadata !{i32 786688, metadata !11, metadata !"domain", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 20]
!156 = metadata !{i32 786688, metadata !11, metadata !"timestep_method", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_method] [line 20]
!157 = metadata !{i32 786688, metadata !11, metadata !"cctk_pdummy_pointer", metadata !5, i32 20, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 20]
!158 = metadata !{i32 786688, metadata !11, metadata !"index", metadata !5, i32 22, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 22]
!159 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 22, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 22]
!160 = metadata !{i32 786688, metadata !11, metadata !"j", metadata !5, i32 22, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 22]
!161 = metadata !{i32 786688, metadata !11, metadata !"k", metadata !5, i32 22, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 22]
!162 = metadata !{i32 786688, metadata !11, metadata !"nx", metadata !5, i32 22, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 22]
!163 = metadata !{i32 786688, metadata !11, metadata !"ny", metadata !5, i32 22, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ny] [line 22]
!164 = metadata !{i32 786688, metadata !11, metadata !"nz", metadata !5, i32 22, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nz] [line 22]
!165 = metadata !{metadata !166}
!166 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 10, metadata !8, i32 1, i32 1, null, null}
!167 = metadata !{i32 12, i32 0, metadata !4, null}
!168 = metadata !{i32 16, i32 0, metadata !11, null}
!169 = metadata !{i32 19, i32 0, metadata !11, null}
!170 = metadata !{metadata !"any pointer", metadata !171}
!171 = metadata !{metadata !"omnipotent char", metadata !172}
!172 = metadata !{metadata !"Simple C/C++ TBAA"}
!173 = metadata !{i32 20, i32 0, metadata !11, null}
!174 = metadata !{metadata !"int", metadata !171}
!175 = metadata !{i32 24, i32 0, metadata !11, null}
!176 = metadata !{i32 26, i32 0, metadata !11, null}
!177 = metadata !{i32 27, i32 0, metadata !11, null}
!178 = metadata !{i32 28, i32 0, metadata !11, null}
!179 = metadata !{i32 30, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !11, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c]
!181 = metadata !{i32 32, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !183, i32 32, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c]
!183 = metadata !{i32 786443, metadata !1, metadata !180, i32 31, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c]
!184 = metadata !{i32 34, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !186, i32 34, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c]
!186 = metadata !{i32 786443, metadata !1, metadata !182, i32 33, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c]
!187 = metadata !{i32 65, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !185, i32 35, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c]
!189 = metadata !{i32 37, i32 0, metadata !188, null}
!190 = metadata !{i32 39, i32 0, metadata !188, null}
!191 = metadata !{metadata !"double", metadata !171}
!192 = metadata !{i32 40, i32 0, metadata !188, null}
!193 = metadata !{i32 41, i32 0, metadata !188, null}
!194 = metadata !{i32 42, i32 0, metadata !188, null}
!195 = metadata !{i32 43, i32 0, metadata !188, null}
!196 = metadata !{i32 44, i32 0, metadata !188, null}
!197 = metadata !{i32 46, i32 0, metadata !188, null}
!198 = metadata !{i32 47, i32 0, metadata !188, null}
!199 = metadata !{i32 48, i32 0, metadata !188, null}
!200 = metadata !{i32 49, i32 0, metadata !188, null}
!201 = metadata !{i32 50, i32 0, metadata !188, null}
!202 = metadata !{i32 51, i32 0, metadata !188, null}
!203 = metadata !{i32 53, i32 0, metadata !188, null}
!204 = metadata !{i32 55, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !188, i32 54, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c]
!206 = metadata !{i32 56, i32 0, metadata !205, null}
!207 = metadata !{i32 57, i32 0, metadata !205, null}
!208 = metadata !{i32 58, i32 0, metadata !205, null} ; [ DW_TAG_imported_module ]
!209 = metadata !{i32 59, i32 0, metadata !205, null}
!210 = metadata !{i32 62, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !188, i32 61, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c]
!212 = metadata !{i32 67, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !188, i32 66, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c]
!214 = metadata !{i32 68, i32 0, metadata !213, null}
!215 = metadata !{i32 69, i32 0, metadata !213, null}
!216 = metadata !{i32 70, i32 0, metadata !213, null}
!217 = metadata !{i32 71, i32 0, metadata !213, null}
!218 = metadata !{i32 72, i32 0, metadata !213, null}
!219 = metadata !{i32 73, i32 0, metadata !213, null}
!220 = metadata !{i32 74, i32 0, metadata !213, null}
!221 = metadata !{i32 75, i32 0, metadata !213, null}
!222 = metadata !{i32 76, i32 0, metadata !213, null}
!223 = metadata !{i32 77, i32 0, metadata !213, null}
!224 = metadata !{i32 78, i32 0, metadata !213, null}
!225 = metadata !{i32 81, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !188, i32 80, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c]
!227 = metadata !{i8* undef}
!228 = metadata !{i32 90, i32 0, metadata !11, null}
