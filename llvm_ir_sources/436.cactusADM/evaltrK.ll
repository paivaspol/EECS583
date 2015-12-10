; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/evaltrK.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@.str53 = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/evaltrK.c,v 1.12 2002/01/04 10:02:43 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_evaltrK_c() #0 {
entry:
  ret i8* getelementptr inbounds ([94 x i8]* @.str53, i64 0, i64 0), !dbg !175
}

; Function Attrs: nounwind optsize uwtable
define void @evaltrK(%struct.cGH* nocapture %cctkGH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %cctkGH}, i64 0, metadata !53), !dbg !176
  %cctk_lsh3 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 3, !dbg !177
  %0 = load i32** %cctk_lsh3, align 8, !dbg !177, !tbaa !178
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !56), !dbg !177
  %call = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #4, !dbg !177
  %idxprom = sext i32 %call to i64, !dbg !177
  %data = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17, !dbg !177
  %1 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx = getelementptr inbounds i8*** %1, i64 %idxprom, !dbg !177
  %2 = load i8*** %arrayidx, align 8, !dbg !177, !tbaa !178
  %3 = load i8** %2, align 8, !dbg !177, !tbaa !178
  %4 = bitcast i8* %3 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %4}, i64 0, metadata !74), !dbg !177
  %call19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !177
  %call24 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !177
  %call29 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !177
  %call34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !177
  %call39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !177
  %call44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !177
  %call49 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !177
  %call54 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !177
  %call59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #4, !dbg !177
  %call64 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #4, !dbg !177
  %call69 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #4, !dbg !177
  %call74 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #4, !dbg !177
  %call79 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #4, !dbg !177
  %idxprom80 = sext i32 %call79 to i64, !dbg !177
  %5 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx82 = getelementptr inbounds i8*** %5, i64 %idxprom80, !dbg !177
  %6 = load i8*** %arrayidx82, align 8, !dbg !177, !tbaa !178
  %7 = load i8** %6, align 8, !dbg !177, !tbaa !178
  %8 = bitcast i8* %7 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %8}, i64 0, metadata !87), !dbg !177
  %call84 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #4, !dbg !177
  %call89 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #4, !dbg !177
  %call94 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4, !dbg !177
  %call99 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #4, !dbg !177
  %call104 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #4, !dbg !177
  %call109 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #4, !dbg !177
  %call114 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #4, !dbg !177
  %call119 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #4, !dbg !177
  %call124 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #4, !dbg !177
  %idxprom125 = sext i32 %call124 to i64, !dbg !177
  %9 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx127 = getelementptr inbounds i8*** %9, i64 %idxprom125, !dbg !177
  %10 = load i8*** %arrayidx127, align 8, !dbg !177, !tbaa !178
  %11 = load i8** %10, align 8, !dbg !177, !tbaa !178
  %12 = bitcast i8* %11 to i32*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{i32* %12}, i64 0, metadata !96), !dbg !177
  %call129 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #4, !dbg !177
  %call134 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #4, !dbg !177
  %call139 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #4, !dbg !177
  %call144 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #4, !dbg !177
  %idxprom145 = sext i32 %call144 to i64, !dbg !177
  %13 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx147 = getelementptr inbounds i8*** %13, i64 %idxprom145, !dbg !177
  %14 = load i8*** %arrayidx147, align 8, !dbg !177, !tbaa !178
  %15 = load i8** %14, align 8, !dbg !177, !tbaa !178
  %16 = bitcast i8* %15 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %16}, i64 0, metadata !100), !dbg !177
  %call149 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #4, !dbg !177
  %idxprom150 = sext i32 %call149 to i64, !dbg !177
  %17 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx152 = getelementptr inbounds i8*** %17, i64 %idxprom150, !dbg !177
  %18 = load i8*** %arrayidx152, align 8, !dbg !177, !tbaa !178
  %19 = load i8** %18, align 8, !dbg !177, !tbaa !178
  %20 = bitcast i8* %19 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %20}, i64 0, metadata !101), !dbg !177
  %call154 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #4, !dbg !177
  %idxprom155 = sext i32 %call154 to i64, !dbg !177
  %21 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx157 = getelementptr inbounds i8*** %21, i64 %idxprom155, !dbg !177
  %22 = load i8*** %arrayidx157, align 8, !dbg !177, !tbaa !178
  %23 = load i8** %22, align 8, !dbg !177, !tbaa !178
  %24 = bitcast i8* %23 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %24}, i64 0, metadata !102), !dbg !177
  %call159 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #4, !dbg !177
  %idxprom160 = sext i32 %call159 to i64, !dbg !177
  %25 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx162 = getelementptr inbounds i8*** %25, i64 %idxprom160, !dbg !177
  %26 = load i8*** %arrayidx162, align 8, !dbg !177, !tbaa !178
  %27 = load i8** %26, align 8, !dbg !177, !tbaa !178
  %28 = bitcast i8* %27 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %28}, i64 0, metadata !103), !dbg !177
  %call164 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #4, !dbg !177
  %idxprom165 = sext i32 %call164 to i64, !dbg !177
  %29 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx167 = getelementptr inbounds i8*** %29, i64 %idxprom165, !dbg !177
  %30 = load i8*** %arrayidx167, align 8, !dbg !177, !tbaa !178
  %31 = load i8** %30, align 8, !dbg !177, !tbaa !178
  %32 = bitcast i8* %31 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %32}, i64 0, metadata !104), !dbg !177
  %call169 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #4, !dbg !177
  %idxprom170 = sext i32 %call169 to i64, !dbg !177
  %33 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx172 = getelementptr inbounds i8*** %33, i64 %idxprom170, !dbg !177
  %34 = load i8*** %arrayidx172, align 8, !dbg !177, !tbaa !178
  %35 = load i8** %34, align 8, !dbg !177, !tbaa !178
  %36 = bitcast i8* %35 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %36}, i64 0, metadata !105), !dbg !177
  %call174 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #4, !dbg !177
  %idxprom175 = sext i32 %call174 to i64, !dbg !177
  %37 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx177 = getelementptr inbounds i8*** %37, i64 %idxprom175, !dbg !177
  %38 = load i8*** %arrayidx177, align 8, !dbg !177, !tbaa !178
  %39 = load i8** %38, align 8, !dbg !177, !tbaa !178
  %40 = bitcast i8* %39 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %40}, i64 0, metadata !106), !dbg !177
  %call179 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #4, !dbg !177
  %idxprom180 = sext i32 %call179 to i64, !dbg !177
  %41 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx182 = getelementptr inbounds i8*** %41, i64 %idxprom180, !dbg !177
  %42 = load i8*** %arrayidx182, align 8, !dbg !177, !tbaa !178
  %43 = load i8** %42, align 8, !dbg !177, !tbaa !178
  %44 = bitcast i8* %43 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %44}, i64 0, metadata !107), !dbg !177
  %call184 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #4, !dbg !177
  %idxprom185 = sext i32 %call184 to i64, !dbg !177
  %45 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx187 = getelementptr inbounds i8*** %45, i64 %idxprom185, !dbg !177
  %46 = load i8*** %arrayidx187, align 8, !dbg !177, !tbaa !178
  %47 = load i8** %46, align 8, !dbg !177, !tbaa !178
  %48 = bitcast i8* %47 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %48}, i64 0, metadata !108), !dbg !177
  %call189 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #4, !dbg !177
  %idxprom190 = sext i32 %call189 to i64, !dbg !177
  %49 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx192 = getelementptr inbounds i8*** %49, i64 %idxprom190, !dbg !177
  %50 = load i8*** %arrayidx192, align 8, !dbg !177, !tbaa !178
  %51 = load i8** %50, align 8, !dbg !177, !tbaa !178
  %52 = bitcast i8* %51 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %52}, i64 0, metadata !109), !dbg !177
  %call194 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #4, !dbg !177
  %idxprom195 = sext i32 %call194 to i64, !dbg !177
  %53 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx197 = getelementptr inbounds i8*** %53, i64 %idxprom195, !dbg !177
  %54 = load i8*** %arrayidx197, align 8, !dbg !177, !tbaa !178
  %55 = load i8** %54, align 8, !dbg !177, !tbaa !178
  %56 = bitcast i8* %55 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %56}, i64 0, metadata !110), !dbg !177
  %call199 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #4, !dbg !177
  %idxprom200 = sext i32 %call199 to i64, !dbg !177
  %57 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx202 = getelementptr inbounds i8*** %57, i64 %idxprom200, !dbg !177
  %58 = load i8*** %arrayidx202, align 8, !dbg !177, !tbaa !178
  %59 = load i8** %58, align 8, !dbg !177, !tbaa !178
  %60 = bitcast i8* %59 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %60}, i64 0, metadata !111), !dbg !177
  %call204 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #4, !dbg !177
  %idxprom205 = sext i32 %call204 to i64, !dbg !177
  %61 = load i8**** %data, align 8, !dbg !177, !tbaa !178
  %arrayidx207 = getelementptr inbounds i8*** %61, i64 %idxprom205, !dbg !177
  %62 = load i8*** %arrayidx207, align 8, !dbg !177, !tbaa !178
  %63 = load i8** %62, align 8, !dbg !177, !tbaa !178
  %64 = bitcast i8* %63 to double*, !dbg !177
  tail call void @llvm.dbg.value(metadata !{double* %64}, i64 0, metadata !112), !dbg !177
  %call209 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #4, !dbg !177
  %call214 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #4, !dbg !177
  %call219 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #4, !dbg !177
  %call224 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #4, !dbg !177
  %call229 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #4, !dbg !177
  %call234 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #4, !dbg !177
  %call239 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #4, !dbg !177
  %call244 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #4, !dbg !177
  %call249 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #4, !dbg !177
  %call254 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #4, !dbg !177
  %call259 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #4, !dbg !177
  %call264 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #4, !dbg !177
  %call269 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #4, !dbg !177
  %call274 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #4, !dbg !177
  tail call void @llvm.dbg.value(metadata !181, i64 0, metadata !166), !dbg !182
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !158), !dbg !183
  %65 = load i32* %0, align 4, !dbg !183, !tbaa !185
  %arrayidx280 = getelementptr inbounds i32* %0, i64 1, !dbg !183
  %66 = load i32* %arrayidx280, align 4, !dbg !183, !tbaa !185
  %mul541 = mul nsw i32 %66, %65, !dbg !183
  %arrayidx281 = getelementptr inbounds i32* %0, i64 2, !dbg !183
  %67 = load i32* %arrayidx281, align 4, !dbg !183, !tbaa !185
  %mul282542 = mul nsw i32 %mul541, %67, !dbg !183
  %cmp543 = icmp sgt i32 %mul282542, 0, !dbg !183
  br i1 %cmp543, label %for.body, label %for.end, !dbg !183

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv546 = phi i64 [ %indvars.iv.next547, %for.body ], [ 0, %entry ]
  %arrayidx284 = getelementptr inbounds double* %16, i64 %indvars.iv546, !dbg !186
  %68 = load double* %arrayidx284, align 8, !dbg !186, !tbaa !188
  tail call void @llvm.dbg.value(metadata !{double %68}, i64 0, metadata !167), !dbg !186
  %arrayidx286 = getelementptr inbounds double* %20, i64 %indvars.iv546, !dbg !189
  %69 = load double* %arrayidx286, align 8, !dbg !189, !tbaa !188
  tail call void @llvm.dbg.value(metadata !{double %69}, i64 0, metadata !168), !dbg !189
  %arrayidx288 = getelementptr inbounds double* %24, i64 %indvars.iv546, !dbg !190
  %70 = load double* %arrayidx288, align 8, !dbg !190, !tbaa !188
  tail call void @llvm.dbg.value(metadata !{double %70}, i64 0, metadata !169), !dbg !190
  %arrayidx290 = getelementptr inbounds double* %28, i64 %indvars.iv546, !dbg !191
  %71 = load double* %arrayidx290, align 8, !dbg !191, !tbaa !188
  tail call void @llvm.dbg.value(metadata !{double %71}, i64 0, metadata !170), !dbg !191
  %arrayidx292 = getelementptr inbounds double* %32, i64 %indvars.iv546, !dbg !192
  %72 = load double* %arrayidx292, align 8, !dbg !192, !tbaa !188
  tail call void @llvm.dbg.value(metadata !{double %72}, i64 0, metadata !171), !dbg !192
  %arrayidx294 = getelementptr inbounds double* %36, i64 %indvars.iv546, !dbg !193
  %73 = load double* %arrayidx294, align 8, !dbg !193, !tbaa !188
  tail call void @llvm.dbg.value(metadata !{double %73}, i64 0, metadata !172), !dbg !193
  %mul295 = fmul double %70, %70, !dbg !194
  %mul296 = fmul double %mul295, %71, !dbg !194
  %mul297 = fmul double %69, 2.000000e+00, !dbg !194
  %mul298 = fmul double %mul297, %70, !dbg !194
  %mul299 = fmul double %mul298, %72, !dbg !194
  %add = fsub double %mul299, %mul296, !dbg !194
  %mul300 = fmul double %68, %72, !dbg !194
  %mul301 = fmul double %72, %mul300, !dbg !194
  %sub302 = fsub double %add, %mul301, !dbg !194
  %mul303 = fmul double %69, %69, !dbg !194
  %mul304 = fmul double %mul303, %73, !dbg !194
  %sub305 = fsub double %sub302, %mul304, !dbg !194
  %mul306 = fmul double %68, %71, !dbg !194
  %mul307 = fmul double %mul306, %73, !dbg !194
  %add308 = fadd double %mul307, %sub305, !dbg !194
  tail call void @llvm.dbg.value(metadata !{double %add308}, i64 0, metadata !159), !dbg !194
  %mul309 = fmul double %72, %72, !dbg !195
  %mul311 = fmul double %71, %73, !dbg !195
  %add312 = fsub double %mul311, %mul309, !dbg !195
  %div = fdiv double %add312, %add308, !dbg !195
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !160), !dbg !195
  %mul313 = fmul double %70, %72, !dbg !196
  %mul314 = fmul double %69, %73, !dbg !196
  %sub315 = fsub double %mul313, %mul314, !dbg !196
  %div316 = fdiv double %sub315, %add308, !dbg !196
  tail call void @llvm.dbg.value(metadata !{double %div316}, i64 0, metadata !161), !dbg !196
  %mul319 = fmul double %68, %73, !dbg !197
  %add320 = fsub double %mul319, %mul295, !dbg !197
  %div321 = fdiv double %add320, %add308, !dbg !197
  tail call void @llvm.dbg.value(metadata !{double %div321}, i64 0, metadata !162), !dbg !197
  %74 = fmul double %70, %71, !dbg !198
  %mul324 = fmul double %69, %72, !dbg !198
  %add325 = fsub double %mul324, %74, !dbg !198
  %div326 = fdiv double %add325, %add308, !dbg !198
  tail call void @llvm.dbg.value(metadata !{double %div326}, i64 0, metadata !163), !dbg !198
  %mul327 = fmul double %69, %70, !dbg !199
  %sub329 = fsub double %mul327, %mul300, !dbg !199
  %div330 = fdiv double %sub329, %add308, !dbg !199
  tail call void @llvm.dbg.value(metadata !{double %div330}, i64 0, metadata !164), !dbg !199
  %add334 = fsub double %mul306, %mul303, !dbg !200
  %div335 = fdiv double %add334, %add308, !dbg !200
  tail call void @llvm.dbg.value(metadata !{double %div335}, i64 0, metadata !165), !dbg !200
  %arrayidx337 = getelementptr inbounds double* %40, i64 %indvars.iv546, !dbg !201
  %75 = load double* %arrayidx337, align 8, !dbg !201, !tbaa !188
  %mul338 = fmul double %div, %75, !dbg !201
  %arrayidx340 = getelementptr inbounds double* %52, i64 %indvars.iv546, !dbg !201
  %76 = load double* %arrayidx340, align 8, !dbg !201, !tbaa !188
  %mul341 = fmul double %div321, %76, !dbg !201
  %add342 = fadd double %mul338, %mul341, !dbg !201
  %arrayidx344 = getelementptr inbounds double* %60, i64 %indvars.iv546, !dbg !201
  %77 = load double* %arrayidx344, align 8, !dbg !201, !tbaa !188
  %mul345 = fmul double %div335, %77, !dbg !201
  %add346 = fadd double %add342, %mul345, !dbg !201
  %mul347 = fmul double %div316, 2.000000e+00, !dbg !201
  %arrayidx349 = getelementptr inbounds double* %44, i64 %indvars.iv546, !dbg !201
  %78 = load double* %arrayidx349, align 8, !dbg !201, !tbaa !188
  %mul350 = fmul double %mul347, %78, !dbg !201
  %add351 = fadd double %add346, %mul350, !dbg !201
  %mul352 = fmul double %div326, 2.000000e+00, !dbg !201
  %arrayidx354 = getelementptr inbounds double* %48, i64 %indvars.iv546, !dbg !201
  %79 = load double* %arrayidx354, align 8, !dbg !201, !tbaa !188
  %mul355 = fmul double %mul352, %79, !dbg !201
  %add356 = fadd double %add351, %mul355, !dbg !201
  %mul357 = fmul double %div330, 2.000000e+00, !dbg !201
  %arrayidx359 = getelementptr inbounds double* %56, i64 %indvars.iv546, !dbg !201
  %80 = load double* %arrayidx359, align 8, !dbg !201, !tbaa !188
  %mul360 = fmul double %mul357, %80, !dbg !201
  %add361 = fadd double %add356, %mul360, !dbg !201
  %arrayidx363 = getelementptr inbounds double* %8, i64 %indvars.iv546, !dbg !201
  store double %add361, double* %arrayidx363, align 8, !dbg !201, !tbaa !188
  %arrayidx365 = getelementptr inbounds double* %4, i64 %indvars.iv546, !dbg !202
  store double %add308, double* %arrayidx365, align 8, !dbg !202, !tbaa !188
  %indvars.iv.next547 = add i64 %indvars.iv546, 1, !dbg !183
  %81 = trunc i64 %indvars.iv.next547 to i32, !dbg !183
  %cmp = icmp slt i32 %81, %mul282542, !dbg !183
  br i1 %cmp, label %for.body, label %for.end, !dbg !183

for.end:                                          ; preds = %for.body, %entry
  %82 = load i32* %12, align 4, !dbg !203, !tbaa !185
  %cmp366.not = icmp ne i32 %82, 1, !dbg !203
  %cmp543.not = xor i1 %cmp543, true, !dbg !203
  %brmerge = or i1 %cmp366.not, %cmp543.not, !dbg !203
  br i1 %brmerge, label %if.end, label %for.body374, !dbg !203

for.body374:                                      ; preds = %for.end, %for.body374
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body374 ], [ 0, %for.end ]
  %arrayidx376 = getelementptr inbounds double* %8, i64 %indvars.iv, !dbg !204
  %83 = load double* %arrayidx376, align 8, !dbg !204, !tbaa !188
  %arrayidx378 = getelementptr inbounds double* %64, i64 %indvars.iv, !dbg !204
  %84 = load double* %arrayidx378, align 8, !dbg !204, !tbaa !188
  %mul381 = fmul double %84, %84, !dbg !204
  %mul387 = fmul double %mul381, %mul381, !dbg !204
  %div388 = fdiv double %83, %mul387, !dbg !204
  store double %div388, double* %arrayidx376, align 8, !dbg !204, !tbaa !188
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !208
  %85 = trunc i64 %indvars.iv.next to i32, !dbg !208
  %cmp373 = icmp slt i32 %85, %mul282542, !dbg !208
  br i1 %cmp373, label %for.body374, label %if.end, !dbg !208

if.end:                                           ; preds = %for.end, %for.body374
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !157), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  tail call void @llvm.dbg.value(metadata !209, i64 0, metadata !71), !dbg !210
  ret void, !dbg !210
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !173, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/evaltrK.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/evaltrK.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusEinstein_Einstein_evaltrK_c", metadata !"CCTKi_version_CactusEinstein_Einstein_evaltrK_c", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusEinstein_Einstein_evaltrK_c, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 11] [def] [CCTKi_version_CactusEinstein_Einstein_evaltrK_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/evaltrK.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"evaltrK", metadata !"evaltrK", metadata !"", i32 17, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.cGH*)* @evaltrK, null, null, metadata !52, i32 18} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 18] [evaltrK]
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
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172}
!53 = metadata !{i32 786689, metadata !11, metadata !"cctkGH", metadata !5, i32 16777233, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctkGH] [line 17]
!54 = metadata !{i32 786688, metadata !11, metadata !"cctk_dim", metadata !5, i32 20, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dim] [line 20]
!55 = metadata !{i32 786688, metadata !11, metadata !"cctk_gsh", metadata !5, i32 20, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_gsh] [line 20]
!56 = metadata !{i32 786688, metadata !11, metadata !"cctk_lsh", metadata !5, i32 20, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lsh] [line 20]
!57 = metadata !{i32 786688, metadata !11, metadata !"cctk_lbnd", metadata !5, i32 20, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lbnd] [line 20]
!58 = metadata !{i32 786688, metadata !11, metadata !"cctk_ubnd", metadata !5, i32 20, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_ubnd] [line 20]
!59 = metadata !{i32 786688, metadata !11, metadata !"cctk_lssh", metadata !5, i32 20, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lssh] [line 20]
!60 = metadata !{i32 786688, metadata !11, metadata !"cctk_from", metadata !5, i32 20, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_from] [line 20]
!61 = metadata !{i32 786688, metadata !11, metadata !"cctk_to", metadata !5, i32 20, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_to] [line 20]
!62 = metadata !{i32 786688, metadata !11, metadata !"cctk_bbox", metadata !5, i32 20, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_bbox] [line 20]
!63 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_time", metadata !5, i32 20, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_time] [line 20]
!64 = metadata !{i32 786688, metadata !11, metadata !"cctk_time", metadata !5, i32 20, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_time] [line 20]
!65 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_space", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_space] [line 20]
!66 = metadata !{i32 786688, metadata !11, metadata !"cctk_origin_space", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_origin_space] [line 20]
!67 = metadata !{i32 786688, metadata !11, metadata !"cctk_levfac", metadata !5, i32 20, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_levfac] [line 20]
!68 = metadata !{i32 786688, metadata !11, metadata !"cctk_convlevel", metadata !5, i32 20, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_convlevel] [line 20]
!69 = metadata !{i32 786688, metadata !11, metadata !"cctk_nghostzones", metadata !5, i32 20, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_nghostzones] [line 20]
!70 = metadata !{i32 786688, metadata !11, metadata !"cctk_iteration", metadata !5, i32 20, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_iteration] [line 20]
!71 = metadata !{i32 786688, metadata !11, metadata !"cctk_dummy_pointer", metadata !5, i32 20, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dummy_pointer] [line 20]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!73 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{i32 786688, metadata !11, metadata !"detg", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [detg] [line 20]
!75 = metadata !{i32 786688, metadata !11, metadata !"gpp", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gpp] [line 20]
!76 = metadata !{i32 786688, metadata !11, metadata !"gqp", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gqp] [line 20]
!77 = metadata !{i32 786688, metadata !11, metadata !"gqq", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gqq] [line 20]
!78 = metadata !{i32 786688, metadata !11, metadata !"grp", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grp] [line 20]
!79 = metadata !{i32 786688, metadata !11, metadata !"grq", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grq] [line 20]
!80 = metadata !{i32 786688, metadata !11, metadata !"grr", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grr] [line 20]
!81 = metadata !{i32 786688, metadata !11, metadata !"kpp", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kpp] [line 20]
!82 = metadata !{i32 786688, metadata !11, metadata !"kqp", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kqp] [line 20]
!83 = metadata !{i32 786688, metadata !11, metadata !"kqq", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kqq] [line 20]
!84 = metadata !{i32 786688, metadata !11, metadata !"krp", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [krp] [line 20]
!85 = metadata !{i32 786688, metadata !11, metadata !"krq", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [krq] [line 20]
!86 = metadata !{i32 786688, metadata !11, metadata !"krr", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [krr] [line 20]
!87 = metadata !{i32 786688, metadata !11, metadata !"trK", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [trK] [line 20]
!88 = metadata !{i32 786688, metadata !11, metadata !"active_slicing_handle", metadata !5, i32 20, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [active_slicing_handle] [line 20]
!89 = metadata !{i32 786688, metadata !11, metadata !"alp", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alp] [line 20]
!90 = metadata !{i32 786688, metadata !11, metadata !"betax", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betax] [line 20]
!91 = metadata !{i32 786688, metadata !11, metadata !"betay", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betay] [line 20]
!92 = metadata !{i32 786688, metadata !11, metadata !"betaz", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betaz] [line 20]
!93 = metadata !{i32 786688, metadata !11, metadata !"coarse_dx", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dx] [line 20]
!94 = metadata !{i32 786688, metadata !11, metadata !"coarse_dy", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dy] [line 20]
!95 = metadata !{i32 786688, metadata !11, metadata !"coarse_dz", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dz] [line 20]
!96 = metadata !{i32 786688, metadata !11, metadata !"conformal_state", metadata !5, i32 20, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conformal_state] [line 20]
!97 = metadata !{i32 786688, metadata !11, metadata !"courant_min_time", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_min_time] [line 20]
!98 = metadata !{i32 786688, metadata !11, metadata !"courant_wave_speed", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_wave_speed] [line 20]
!99 = metadata !{i32 786688, metadata !11, metadata !"emask", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [emask] [line 20]
!100 = metadata !{i32 786688, metadata !11, metadata !"gxx", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxx] [line 20]
!101 = metadata !{i32 786688, metadata !11, metadata !"gxy", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxy] [line 20]
!102 = metadata !{i32 786688, metadata !11, metadata !"gxz", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxz] [line 20]
!103 = metadata !{i32 786688, metadata !11, metadata !"gyy", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gyy] [line 20]
!104 = metadata !{i32 786688, metadata !11, metadata !"gyz", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gyz] [line 20]
!105 = metadata !{i32 786688, metadata !11, metadata !"gzz", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gzz] [line 20]
!106 = metadata !{i32 786688, metadata !11, metadata !"kxx", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kxx] [line 20]
!107 = metadata !{i32 786688, metadata !11, metadata !"kxy", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kxy] [line 20]
!108 = metadata !{i32 786688, metadata !11, metadata !"kxz", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kxz] [line 20]
!109 = metadata !{i32 786688, metadata !11, metadata !"kyy", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kyy] [line 20]
!110 = metadata !{i32 786688, metadata !11, metadata !"kyz", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kyz] [line 20]
!111 = metadata !{i32 786688, metadata !11, metadata !"kzz", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kzz] [line 20]
!112 = metadata !{i32 786688, metadata !11, metadata !"psi", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psi] [line 20]
!113 = metadata !{i32 786688, metadata !11, metadata !"psix", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psix] [line 20]
!114 = metadata !{i32 786688, metadata !11, metadata !"psixx", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psixx] [line 20]
!115 = metadata !{i32 786688, metadata !11, metadata !"psixy", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psixy] [line 20]
!116 = metadata !{i32 786688, metadata !11, metadata !"psixz", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psixz] [line 20]
!117 = metadata !{i32 786688, metadata !11, metadata !"psiy", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiy] [line 20]
!118 = metadata !{i32 786688, metadata !11, metadata !"psiyy", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiyy] [line 20]
!119 = metadata !{i32 786688, metadata !11, metadata !"psiyz", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiyz] [line 20]
!120 = metadata !{i32 786688, metadata !11, metadata !"psiz", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiz] [line 20]
!121 = metadata !{i32 786688, metadata !11, metadata !"psizz", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psizz] [line 20]
!122 = metadata !{i32 786688, metadata !11, metadata !"r", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 20]
!123 = metadata !{i32 786688, metadata !11, metadata !"shift_state", metadata !5, i32 20, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift_state] [line 20]
!124 = metadata !{i32 786688, metadata !11, metadata !"x", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 20]
!125 = metadata !{i32 786688, metadata !11, metadata !"y", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 20]
!126 = metadata !{i32 786688, metadata !11, metadata !"z", metadata !5, i32 20, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 20]
!127 = metadata !{i32 786688, metadata !11, metadata !"gaussian_amplitude", metadata !5, i32 21, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_amplitude] [line 21]
!128 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!129 = metadata !{i32 786688, metadata !11, metadata !"gaussian_sigma2", metadata !5, i32 21, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_sigma2] [line 21]
!130 = metadata !{i32 786688, metadata !11, metadata !"psiminustwo_cut", metadata !5, i32 21, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiminustwo_cut] [line 21]
!131 = metadata !{i32 786688, metadata !11, metadata !"rot_shift_att_sigma", metadata !5, i32 21, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_sigma] [line 21]
!132 = metadata !{i32 786688, metadata !11, metadata !"rotation_omega", metadata !5, i32 21, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_omega] [line 21]
!133 = metadata !{i32 786688, metadata !11, metadata !"advection", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [advection] [line 21]
!134 = metadata !{i32 786688, metadata !11, metadata !"evolution_system", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [evolution_system] [line 21]
!135 = metadata !{i32 786688, metadata !11, metadata !"initial_data", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_data] [line 21]
!136 = metadata !{i32 786688, metadata !11, metadata !"initial_lapse", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_lapse] [line 21]
!137 = metadata !{i32 786688, metadata !11, metadata !"initial_shift", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_shift] [line 21]
!138 = metadata !{i32 786688, metadata !11, metadata !"mixed_slicing", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mixed_slicing] [line 21]
!139 = metadata !{i32 786688, metadata !11, metadata !"shift", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 21]
!140 = metadata !{i32 786688, metadata !11, metadata !"slicing", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing] [line 21]
!141 = metadata !{i32 786688, metadata !11, metadata !"slicing_verbose", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing_verbose] [line 21]
!142 = metadata !{i32 786688, metadata !11, metadata !"einstein_register_slicing", metadata !5, i32 21, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [einstein_register_slicing] [line 21]
!143 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!144 = metadata !{i32 786688, metadata !11, metadata !"rot_shift_att", metadata !5, i32 21, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att] [line 21]
!145 = metadata !{i32 786688, metadata !11, metadata !"rot_shift_att_pow", metadata !5, i32 21, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_pow] [line 21]
!146 = metadata !{i32 786688, metadata !11, metadata !"rotation_psipower", metadata !5, i32 21, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_psipower] [line 21]
!147 = metadata !{i32 786688, metadata !11, metadata !"use_conformal", metadata !5, i32 21, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal] [line 21]
!148 = metadata !{i32 786688, metadata !11, metadata !"use_conformal_derivs", metadata !5, i32 21, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal_derivs] [line 21]
!149 = metadata !{i32 786688, metadata !11, metadata !"use_mask", metadata !5, i32 21, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_mask] [line 21]
!150 = metadata !{i32 786688, metadata !11, metadata !"dtfac", metadata !5, i32 21, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtfac] [line 21]
!151 = metadata !{i32 786688, metadata !11, metadata !"gauge_speed", metadata !5, i32 21, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gauge_speed] [line 21]
!152 = metadata !{i32 786688, metadata !11, metadata !"wavecalc", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wavecalc] [line 21]
!153 = metadata !{i32 786688, metadata !11, metadata !"conformal_storage_all", metadata !5, i32 21, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conformal_storage_all] [line 21]
!154 = metadata !{i32 786688, metadata !11, metadata !"rsquared_in_sphm", metadata !5, i32 21, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsquared_in_sphm] [line 21]
!155 = metadata !{i32 786688, metadata !11, metadata !"domain", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 21]
!156 = metadata !{i32 786688, metadata !11, metadata !"timestep_method", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_method] [line 21]
!157 = metadata !{i32 786688, metadata !11, metadata !"cctk_pdummy_pointer", metadata !5, i32 21, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 21]
!158 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 23, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 23]
!159 = metadata !{i32 786688, metadata !11, metadata !"det", metadata !5, i32 24, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [det] [line 24]
!160 = metadata !{i32 786688, metadata !11, metadata !"uxx", metadata !5, i32 24, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uxx] [line 24]
!161 = metadata !{i32 786688, metadata !11, metadata !"uxy", metadata !5, i32 24, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uxy] [line 24]
!162 = metadata !{i32 786688, metadata !11, metadata !"uyy", metadata !5, i32 24, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uyy] [line 24]
!163 = metadata !{i32 786688, metadata !11, metadata !"uxz", metadata !5, i32 24, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uxz] [line 24]
!164 = metadata !{i32 786688, metadata !11, metadata !"uyz", metadata !5, i32 24, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uyz] [line 24]
!165 = metadata !{i32 786688, metadata !11, metadata !"uzz", metadata !5, i32 24, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uzz] [line 24]
!166 = metadata !{i32 786688, metadata !11, metadata !"two", metadata !5, i32 24, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [two] [line 24]
!167 = metadata !{i32 786688, metadata !11, metadata !"gxxp", metadata !5, i32 25, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxxp] [line 25]
!168 = metadata !{i32 786688, metadata !11, metadata !"gxyp", metadata !5, i32 25, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxyp] [line 25]
!169 = metadata !{i32 786688, metadata !11, metadata !"gxzp", metadata !5, i32 25, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxzp] [line 25]
!170 = metadata !{i32 786688, metadata !11, metadata !"gyyp", metadata !5, i32 25, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gyyp] [line 25]
!171 = metadata !{i32 786688, metadata !11, metadata !"gyzp", metadata !5, i32 25, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gyzp] [line 25]
!172 = metadata !{i32 786688, metadata !11, metadata !"gzzp", metadata !5, i32 25, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gzzp] [line 25]
!173 = metadata !{metadata !174}
!174 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 9, metadata !8, i32 1, i32 1, null, null}
!175 = metadata !{i32 11, i32 0, metadata !4, null}
!176 = metadata !{i32 17, i32 0, metadata !11, null}
!177 = metadata !{i32 20, i32 0, metadata !11, null}
!178 = metadata !{metadata !"any pointer", metadata !179}
!179 = metadata !{metadata !"omnipotent char", metadata !180}
!180 = metadata !{metadata !"Simple C/C++ TBAA"}
!181 = metadata !{double 2.000000e+00}
!182 = metadata !{i32 27, i32 0, metadata !11, null}
!183 = metadata !{i32 30, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !11, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/evaltrK.c]
!185 = metadata !{metadata !"int", metadata !179}
!186 = metadata !{i32 34, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !184, i32 31, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/evaltrK.c]
!188 = metadata !{metadata !"double", metadata !179}
!189 = metadata !{i32 35, i32 0, metadata !187, null}
!190 = metadata !{i32 36, i32 0, metadata !187, null}
!191 = metadata !{i32 37, i32 0, metadata !187, null}
!192 = metadata !{i32 38, i32 0, metadata !187, null}
!193 = metadata !{i32 39, i32 0, metadata !187, null}
!194 = metadata !{i32 42, i32 0, metadata !187, null}
!195 = metadata !{i32 46, i32 0, metadata !187, null}
!196 = metadata !{i32 47, i32 0, metadata !187, null}
!197 = metadata !{i32 48, i32 0, metadata !187, null}
!198 = metadata !{i32 49, i32 0, metadata !187, null}
!199 = metadata !{i32 50, i32 0, metadata !187, null}
!200 = metadata !{i32 51, i32 0, metadata !187, null}
!201 = metadata !{i32 54, i32 0, metadata !187, null}
!202 = metadata !{i32 57, i32 0, metadata !187, null}
!203 = metadata !{i32 61, i32 0, metadata !11, null}
!204 = metadata !{i32 65, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !206, i32 64, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/evaltrK.c]
!206 = metadata !{i32 786443, metadata !1, metadata !207, i32 63, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/evaltrK.c]
!207 = metadata !{i32 786443, metadata !1, metadata !11, i32 62, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/evaltrK.c]
!208 = metadata !{i32 63, i32 0, metadata !206, null}
!209 = metadata !{i8* undef}
!210 = metadata !{i32 72, i32 0, metadata !11, null}
