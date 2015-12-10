; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Courant.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { double, double, i8*, i32, i32 }
%struct.anon.2 = type { i8*, i32 }
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
@einsteinpriv_ = external global %struct.anon.0
@timerest_ = external global %struct.anon.2
@.str53 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1
@.str54 = private unnamed_addr constant [9 x i8] c"harmonic\00", align 1
@.str55 = private unnamed_addr constant [6 x i8] c"1+log\00", align 1
@.str56 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str57 = private unnamed_addr constant [14 x i8] c"courant_speed\00", align 1
@.str58 = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/Courant.c,v 1.18 2002/01/05 19:05:47 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_Courant_c() #0 {
entry:
  ret i8* getelementptr inbounds ([94 x i8]* @.str58, i64 0, i64 0), !dbg !194
}

; Function Attrs: nounwind optsize uwtable
define void @CalcCourant(%struct.cGH* %cctkGH) #1 {
entry:
  %minfactor = alloca double, align 8
  %tmp = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct.cGH* %cctkGH}, i64 0, metadata !53), !dbg !195
  %cctk_lsh3 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 3, !dbg !196
  %0 = load i32** %cctk_lsh3, align 8, !dbg !196, !tbaa !197
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !56), !dbg !196
  %cctk_delta_space12 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 10, !dbg !196
  %1 = load double** %cctk_delta_space12, align 8, !dbg !196, !tbaa !197
  call void @llvm.dbg.value(metadata !{double* %1}, i64 0, metadata !65), !dbg !196
  %call = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #5, !dbg !196
  %data = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17, !dbg !196
  %call19 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !196
  %call24 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !196
  %call29 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !196
  %call34 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !196
  %call39 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !196
  %call44 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #5, !dbg !196
  %call49 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !196
  %call54 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !196
  %call59 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !196
  %call64 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !196
  %call69 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !196
  %call74 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !196
  %call79 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !196
  %call84 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !196
  %call89 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #5, !dbg !196
  %idxprom90 = sext i32 %call89 to i64, !dbg !196
  %2 = load i8**** %data, align 8, !dbg !196, !tbaa !197
  %arrayidx92 = getelementptr inbounds i8*** %2, i64 %idxprom90, !dbg !196
  %3 = load i8*** %arrayidx92, align 8, !dbg !196, !tbaa !197
  %4 = load i8** %3, align 8, !dbg !196, !tbaa !197
  %5 = bitcast i8* %4 to double*, !dbg !196
  call void @llvm.dbg.value(metadata !{double* %5}, i64 0, metadata !89), !dbg !196
  %call94 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #5, !dbg !196
  %call99 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #5, !dbg !196
  %call104 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #5, !dbg !196
  %call109 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #5, !dbg !196
  %call114 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #5, !dbg !196
  %call119 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #5, !dbg !196
  %call124 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #5, !dbg !196
  %idxprom125 = sext i32 %call124 to i64, !dbg !196
  %6 = load i8**** %data, align 8, !dbg !196, !tbaa !197
  %arrayidx127 = getelementptr inbounds i8*** %6, i64 %idxprom125, !dbg !196
  %7 = load i8*** %arrayidx127, align 8, !dbg !196, !tbaa !197
  %8 = load i8** %7, align 8, !dbg !196, !tbaa !197
  %9 = bitcast i8* %8 to i32*, !dbg !196
  call void @llvm.dbg.value(metadata !{i32* %9}, i64 0, metadata !96), !dbg !196
  %call129 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #5, !dbg !196
  %idxprom130 = sext i32 %call129 to i64, !dbg !196
  %10 = load i8**** %data, align 8, !dbg !196, !tbaa !197
  %arrayidx132 = getelementptr inbounds i8*** %10, i64 %idxprom130, !dbg !196
  %11 = load i8*** %arrayidx132, align 8, !dbg !196, !tbaa !197
  %12 = load i8** %11, align 8, !dbg !196, !tbaa !197
  %13 = bitcast i8* %12 to double*, !dbg !196
  call void @llvm.dbg.value(metadata !{double* %13}, i64 0, metadata !97), !dbg !196
  %call134 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #5, !dbg !196
  %idxprom135 = sext i32 %call134 to i64, !dbg !196
  %14 = load i8**** %data, align 8, !dbg !196, !tbaa !197
  %arrayidx137 = getelementptr inbounds i8*** %14, i64 %idxprom135, !dbg !196
  %15 = load i8*** %arrayidx137, align 8, !dbg !196, !tbaa !197
  %16 = load i8** %15, align 8, !dbg !196, !tbaa !197
  %17 = bitcast i8* %16 to double*, !dbg !196
  call void @llvm.dbg.value(metadata !{double* %17}, i64 0, metadata !98), !dbg !196
  %call139 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #5, !dbg !196
  %call144 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #5, !dbg !196
  %idxprom145 = sext i32 %call144 to i64, !dbg !196
  %18 = load i8**** %data, align 8, !dbg !196, !tbaa !197
  %arrayidx147 = getelementptr inbounds i8*** %18, i64 %idxprom145, !dbg !196
  %19 = load i8*** %arrayidx147, align 8, !dbg !196, !tbaa !197
  %20 = load i8** %19, align 8, !dbg !196, !tbaa !197
  %21 = bitcast i8* %20 to double*, !dbg !196
  call void @llvm.dbg.value(metadata !{double* %21}, i64 0, metadata !100), !dbg !196
  %call149 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #5, !dbg !196
  %idxprom150 = sext i32 %call149 to i64, !dbg !196
  %22 = load i8**** %data, align 8, !dbg !196, !tbaa !197
  %arrayidx152 = getelementptr inbounds i8*** %22, i64 %idxprom150, !dbg !196
  %23 = load i8*** %arrayidx152, align 8, !dbg !196, !tbaa !197
  %24 = load i8** %23, align 8, !dbg !196, !tbaa !197
  %25 = bitcast i8* %24 to double*, !dbg !196
  call void @llvm.dbg.value(metadata !{double* %25}, i64 0, metadata !101), !dbg !196
  %call154 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #5, !dbg !196
  %idxprom155 = sext i32 %call154 to i64, !dbg !196
  %26 = load i8**** %data, align 8, !dbg !196, !tbaa !197
  %arrayidx157 = getelementptr inbounds i8*** %26, i64 %idxprom155, !dbg !196
  %27 = load i8*** %arrayidx157, align 8, !dbg !196, !tbaa !197
  %28 = load i8** %27, align 8, !dbg !196, !tbaa !197
  %29 = bitcast i8* %28 to double*, !dbg !196
  call void @llvm.dbg.value(metadata !{double* %29}, i64 0, metadata !102), !dbg !196
  %call159 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #5, !dbg !196
  %idxprom160 = sext i32 %call159 to i64, !dbg !196
  %30 = load i8**** %data, align 8, !dbg !196, !tbaa !197
  %arrayidx162 = getelementptr inbounds i8*** %30, i64 %idxprom160, !dbg !196
  %31 = load i8*** %arrayidx162, align 8, !dbg !196, !tbaa !197
  %32 = load i8** %31, align 8, !dbg !196, !tbaa !197
  %33 = bitcast i8* %32 to double*, !dbg !196
  call void @llvm.dbg.value(metadata !{double* %33}, i64 0, metadata !103), !dbg !196
  %call164 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #5, !dbg !196
  %idxprom165 = sext i32 %call164 to i64, !dbg !196
  %34 = load i8**** %data, align 8, !dbg !196, !tbaa !197
  %arrayidx167 = getelementptr inbounds i8*** %34, i64 %idxprom165, !dbg !196
  %35 = load i8*** %arrayidx167, align 8, !dbg !196, !tbaa !197
  %36 = load i8** %35, align 8, !dbg !196, !tbaa !197
  %37 = bitcast i8* %36 to double*, !dbg !196
  call void @llvm.dbg.value(metadata !{double* %37}, i64 0, metadata !104), !dbg !196
  %call169 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #5, !dbg !196
  %idxprom170 = sext i32 %call169 to i64, !dbg !196
  %38 = load i8**** %data, align 8, !dbg !196, !tbaa !197
  %arrayidx172 = getelementptr inbounds i8*** %38, i64 %idxprom170, !dbg !196
  %39 = load i8*** %arrayidx172, align 8, !dbg !196, !tbaa !197
  %40 = load i8** %39, align 8, !dbg !196, !tbaa !197
  %41 = bitcast i8* %40 to double*, !dbg !196
  call void @llvm.dbg.value(metadata !{double* %41}, i64 0, metadata !105), !dbg !196
  %call174 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #5, !dbg !196
  %call179 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #5, !dbg !196
  %call184 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #5, !dbg !196
  %call189 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #5, !dbg !196
  %call194 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #5, !dbg !196
  %call199 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #5, !dbg !196
  %call204 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #5, !dbg !196
  %idxprom205 = sext i32 %call204 to i64, !dbg !196
  %42 = load i8**** %data, align 8, !dbg !196, !tbaa !197
  %arrayidx207 = getelementptr inbounds i8*** %42, i64 %idxprom205, !dbg !196
  %43 = load i8*** %arrayidx207, align 8, !dbg !196, !tbaa !197
  %44 = load i8** %43, align 8, !dbg !196, !tbaa !197
  %45 = bitcast i8* %44 to double*, !dbg !196
  call void @llvm.dbg.value(metadata !{double* %45}, i64 0, metadata !112), !dbg !196
  %call209 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #5, !dbg !196
  %call214 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #5, !dbg !196
  %call219 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #5, !dbg !196
  %call224 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #5, !dbg !196
  %call229 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #5, !dbg !196
  %call234 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #5, !dbg !196
  %call239 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #5, !dbg !196
  %call244 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #5, !dbg !196
  %call249 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #5, !dbg !196
  %call254 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #5, !dbg !196
  %call259 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #5, !dbg !196
  %call264 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #5, !dbg !196
  %call269 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #5, !dbg !196
  %call274 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #5, !dbg !196
  %46 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 12), align 8, !dbg !200, !tbaa !197
  call void @llvm.dbg.value(metadata !{i8* %46}, i64 0, metadata !140), !dbg !200
  %47 = load double* getelementptr inbounds (%struct.anon.0* @einsteinpriv_, i64 0, i32 1), align 8, !dbg !200, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %47}, i64 0, metadata !151), !dbg !200
  %48 = load i8** getelementptr inbounds (%struct.anon.2* @timerest_, i64 0, i32 0), align 8, !dbg !200, !tbaa !197
  call void @llvm.dbg.value(metadata !{i8* %48}, i64 0, metadata !156), !dbg !200
  call void @llvm.dbg.declare(metadata !{double* %minfactor}, metadata !185), !dbg !202
  call void @llvm.dbg.declare(metadata !{double* %tmp}, metadata !186), !dbg !202
  call void @llvm.dbg.value(metadata !203, i64 0, metadata !182), !dbg !204
  call void @llvm.dbg.value(metadata !205, i64 0, metadata !185), !dbg !206
  store double 1.000000e+09, double* %minfactor, align 8, !dbg !206, !tbaa !201
  %49 = load double* %1, align 8, !dbg !207, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %49}, i64 0, metadata !187), !dbg !207
  %arrayidx285 = getelementptr inbounds double* %1, i64 1, !dbg !208
  %50 = load double* %arrayidx285, align 8, !dbg !208, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %50}, i64 0, metadata !188), !dbg !208
  %arrayidx286 = getelementptr inbounds double* %1, i64 2, !dbg !209
  %51 = load double* %arrayidx286, align 8, !dbg !209, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %51}, i64 0, metadata !189), !dbg !209
  %call287 = call i32 @CCTK_Equals(i8* %48, i8* getelementptr inbounds ([13 x i8]* @.str53, i64 0, i64 0)) #5, !dbg !210
  %tobool = icmp eq i32 %call287, 0, !dbg !210
  br i1 %tobool, label %if.else380, label %for.cond.preheader, !dbg !210

for.cond.preheader:                               ; preds = %entry
  %52 = load i32* %0, align 4, !dbg !211, !tbaa !214
  %arrayidx289 = getelementptr inbounds i32* %0, i64 1, !dbg !211
  %53 = load i32* %arrayidx289, align 4, !dbg !211, !tbaa !214
  %mul695 = mul nsw i32 %53, %52, !dbg !211
  %arrayidx290 = getelementptr inbounds i32* %0, i64 2, !dbg !211
  %54 = load i32* %arrayidx290, align 4, !dbg !211, !tbaa !214
  %mul291696 = mul nsw i32 %mul695, %54, !dbg !211
  %cmp697 = icmp sgt i32 %mul291696, 0, !dbg !211
  br i1 %cmp697, label %for.body, label %for.end, !dbg !211

for.body:                                         ; preds = %for.cond.preheader, %if.end347
  %indvars.iv700 = phi i64 [ %indvars.iv.next701, %if.end347 ], [ 0, %for.cond.preheader ]
  %maxfactor.0698 = phi double [ %cond376, %if.end347 ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx293 = getelementptr inbounds double* %21, i64 %indvars.iv700, !dbg !215
  %55 = load double* %arrayidx293, align 8, !dbg !215, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %55}, i64 0, metadata !158), !dbg !215
  %arrayidx295 = getelementptr inbounds double* %25, i64 %indvars.iv700, !dbg !217
  %56 = load double* %arrayidx295, align 8, !dbg !217, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %56}, i64 0, metadata !159), !dbg !217
  %arrayidx297 = getelementptr inbounds double* %29, i64 %indvars.iv700, !dbg !218
  %57 = load double* %arrayidx297, align 8, !dbg !218, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %57}, i64 0, metadata !160), !dbg !218
  %arrayidx299 = getelementptr inbounds double* %33, i64 %indvars.iv700, !dbg !219
  %58 = load double* %arrayidx299, align 8, !dbg !219, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %58}, i64 0, metadata !161), !dbg !219
  %arrayidx301 = getelementptr inbounds double* %37, i64 %indvars.iv700, !dbg !220
  %59 = load double* %arrayidx301, align 8, !dbg !220, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %59}, i64 0, metadata !162), !dbg !220
  %arrayidx303 = getelementptr inbounds double* %41, i64 %indvars.iv700, !dbg !221
  %60 = load double* %arrayidx303, align 8, !dbg !221, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %60}, i64 0, metadata !163), !dbg !221
  %arrayidx305 = getelementptr inbounds double* %5, i64 %indvars.iv700, !dbg !222
  %61 = load double* %arrayidx305, align 8, !dbg !222, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %61}, i64 0, metadata !165), !dbg !222
  %62 = load i32* %9, align 4, !dbg !223, !tbaa !214
  %cmp306 = icmp eq i32 %62, 1, !dbg !223
  br i1 %cmp306, label %if.then307, label %if.end, !dbg !223

if.then307:                                       ; preds = %for.body
  %arrayidx309 = getelementptr inbounds double* %45, i64 %indvars.iv700, !dbg !224
  %63 = load double* %arrayidx309, align 8, !dbg !224, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %63}, i64 0, metadata !164), !dbg !224
  %mul310 = fmul double %63, %63, !dbg !226
  call void @llvm.dbg.value(metadata !{double %mul310}, i64 0, metadata !170), !dbg !226
  br label %if.end, !dbg !227

if.end:                                           ; preds = %for.body, %if.then307
  %psi2.0 = phi double [ %mul310, %if.then307 ], [ 1.000000e+00, %for.body ]
  %mul311 = fmul double %57, %57, !dbg !228
  %mul312 = fmul double %mul311, %58, !dbg !228
  %mul313 = fmul double %56, 2.000000e+00, !dbg !228
  %mul314 = fmul double %mul313, %57, !dbg !228
  %mul315 = fmul double %mul314, %59, !dbg !228
  %add = fsub double %mul315, %mul312, !dbg !228
  %mul316 = fmul double %55, %59, !dbg !228
  %mul317 = fmul double %59, %mul316, !dbg !228
  %sub318 = fsub double %add, %mul317, !dbg !228
  %mul319 = fmul double %56, %56, !dbg !228
  %mul320 = fmul double %mul319, %60, !dbg !228
  %sub321 = fsub double %sub318, %mul320, !dbg !228
  %mul322 = fmul double %55, %58, !dbg !228
  %mul323 = fmul double %mul322, %60, !dbg !228
  %add324 = fadd double %mul323, %sub321, !dbg !228
  call void @llvm.dbg.value(metadata !{double %add324}, i64 0, metadata !169), !dbg !228
  %64 = fmul double %59, %59, !dbg !229
  %mul327 = fmul double %58, %60, !dbg !229
  %add328 = fsub double %mul327, %64, !dbg !229
  %div = fdiv double %add328, %add324, !dbg !229
  call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !166), !dbg !229
  %mul331 = fmul double %55, %60, !dbg !230
  %add332 = fsub double %mul331, %mul311, !dbg !230
  %div333 = fdiv double %add332, %add324, !dbg !230
  call void @llvm.dbg.value(metadata !{double %div333}, i64 0, metadata !167), !dbg !230
  %add337 = fsub double %mul322, %mul319, !dbg !231
  %div338 = fdiv double %add337, %add324, !dbg !231
  call void @llvm.dbg.value(metadata !{double %div338}, i64 0, metadata !168), !dbg !231
  call void @llvm.dbg.value(metadata !232, i64 0, metadata !184), !dbg !233
  %call339 = call i32 @CCTK_Equals(i8* %46, i8* getelementptr inbounds ([9 x i8]* @.str54, i64 0, i64 0)) #5, !dbg !234
  %tobool340 = icmp eq i32 %call339, 0, !dbg !234
  call void @llvm.dbg.value(metadata !{double %47}, i64 0, metadata !184), !dbg !234
  %. = select i1 %tobool340, double 1.000000e+00, double %47, !dbg !234
  %call343 = call i32 @CCTK_Equals(i8* %46, i8* getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0)) #5, !dbg !235
  %tobool344 = icmp eq i32 %call343, 0, !dbg !235
  br i1 %tobool344, label %if.end347, label %if.then345, !dbg !235

if.then345:                                       ; preds = %if.end
  %div346 = fdiv double %47, %61, !dbg !235
  call void @llvm.dbg.value(metadata !{double %div346}, i64 0, metadata !184), !dbg !235
  br label %if.end347, !dbg !235

if.end347:                                        ; preds = %if.end, %if.then345
  %fgauge.1 = phi double [ %div346, %if.then345 ], [ %., %if.end ]
  %call348 = call double @sqrt(double %fgauge.1) #5, !dbg !236
  %mul349 = fmul double %61, %call348, !dbg !236
  %call350 = call double @sqrt(double %div) #5, !dbg !236
  %mul351 = fmul double %mul349, %call350, !dbg !236
  %div352 = fdiv double %mul351, %psi2.0, !dbg !236
  %div353 = fdiv double %div352, %49, !dbg !236
  call void @llvm.dbg.value(metadata !{double %div353}, i64 0, metadata !183), !dbg !236
  %cmp354 = fcmp ogt double %div353, %maxfactor.0698, !dbg !237
  %cond = select i1 %cmp354, double %div353, double %maxfactor.0698, !dbg !237
  call void @llvm.dbg.value(metadata !{double %cond}, i64 0, metadata !182), !dbg !237
  %call355 = call double @sqrt(double %fgauge.1) #5, !dbg !238
  %mul356 = fmul double %61, %call355, !dbg !238
  %call357 = call double @sqrt(double %div333) #5, !dbg !238
  %mul358 = fmul double %mul356, %call357, !dbg !238
  %div359 = fdiv double %mul358, %psi2.0, !dbg !238
  %div360 = fdiv double %div359, %50, !dbg !238
  call void @llvm.dbg.value(metadata !{double %div360}, i64 0, metadata !183), !dbg !238
  %cmp361 = fcmp ogt double %div360, %cond, !dbg !239
  %cond365 = select i1 %cmp361, double %div360, double %cond, !dbg !239
  call void @llvm.dbg.value(metadata !{double %cond365}, i64 0, metadata !182), !dbg !239
  %call366 = call double @sqrt(double %fgauge.1) #5, !dbg !240
  %mul367 = fmul double %61, %call366, !dbg !240
  %call368 = call double @sqrt(double %div338) #5, !dbg !240
  %mul369 = fmul double %mul367, %call368, !dbg !240
  %div370 = fdiv double %mul369, %psi2.0, !dbg !240
  %div371 = fdiv double %div370, %51, !dbg !240
  call void @llvm.dbg.value(metadata !{double %div371}, i64 0, metadata !183), !dbg !240
  %cmp372 = fcmp ogt double %div371, %cond365, !dbg !241
  %cond376 = select i1 %cmp372, double %div371, double %cond365, !dbg !241
  call void @llvm.dbg.value(metadata !{double %cond376}, i64 0, metadata !182), !dbg !241
  %indvars.iv.next701 = add i64 %indvars.iv700, 1, !dbg !211
  %65 = load i32* %0, align 4, !dbg !211, !tbaa !214
  %66 = load i32* %arrayidx289, align 4, !dbg !211, !tbaa !214
  %mul = mul nsw i32 %66, %65, !dbg !211
  %67 = load i32* %arrayidx290, align 4, !dbg !211, !tbaa !214
  %mul291 = mul nsw i32 %mul, %67, !dbg !211
  %68 = trunc i64 %indvars.iv.next701 to i32, !dbg !211
  %cmp = icmp slt i32 %68, %mul291, !dbg !211
  br i1 %cmp, label %for.body, label %for.end, !dbg !211

for.end:                                          ; preds = %if.end347, %for.cond.preheader
  %maxfactor.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %cond376, %if.end347 ]
  %div377 = fdiv double 1.000000e+00, %maxfactor.0.lcssa, !dbg !242
  call void @llvm.dbg.value(metadata !{double %div377}, i64 0, metadata !185), !dbg !242
  store double %div377, double* %minfactor, align 8, !dbg !242, !tbaa !201
  %call378 = call i32 @CCTK_ReductionArrayHandle(i8* getelementptr inbounds ([8 x i8]* @.str56, i64 0, i64 0)) #5, !dbg !243
  call void @llvm.dbg.value(metadata !{i32 %call378}, i64 0, metadata !191), !dbg !243
  %69 = bitcast double* %minfactor to i8*, !dbg !244
  %70 = bitcast double* %tmp to i8*, !dbg !244
  %call379 = call i32 @CCTK_ReduceLocalScalar(%struct.cGH* %cctkGH, i32 -1, i32 %call378, i8* %69, i8* %70, i32 6) #5, !dbg !244
  call void @llvm.dbg.value(metadata !{double* %tmp}, i64 0, metadata !186), !dbg !245
  %71 = load double* %tmp, align 8, !dbg !245, !tbaa !201
  store double %71, double* %13, align 8, !dbg !245, !tbaa !201
  br label %if.end484, !dbg !246

if.else380:                                       ; preds = %entry
  %call381 = call i32 @CCTK_Equals(i8* %48, i8* getelementptr inbounds ([14 x i8]* @.str57, i64 0, i64 0)) #5, !dbg !247
  %tobool382 = icmp eq i32 %call381, 0, !dbg !247
  br i1 %tobool382, label %if.end484, label %for.cond384.preheader, !dbg !247

for.cond384.preheader:                            ; preds = %if.else380
  %72 = load i32* %0, align 4, !dbg !248, !tbaa !214
  %arrayidx386 = getelementptr inbounds i32* %0, i64 1, !dbg !248
  %73 = load i32* %arrayidx386, align 4, !dbg !248, !tbaa !214
  %mul387691 = mul nsw i32 %73, %72, !dbg !248
  %arrayidx388 = getelementptr inbounds i32* %0, i64 2, !dbg !248
  %74 = load i32* %arrayidx388, align 4, !dbg !248, !tbaa !214
  %mul389692 = mul nsw i32 %mul387691, %74, !dbg !248
  %cmp390693 = icmp sgt i32 %mul389692, 0, !dbg !248
  br i1 %cmp390693, label %for.body391, label %for.end479, !dbg !248

for.body391:                                      ; preds = %for.cond384.preheader, %if.end412
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end412 ], [ 0, %for.cond384.preheader ]
  %arrayidx393 = getelementptr inbounds double* %21, i64 %indvars.iv, !dbg !251
  %75 = load double* %arrayidx393, align 8, !dbg !251, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %75}, i64 0, metadata !158), !dbg !251
  %arrayidx395 = getelementptr inbounds double* %25, i64 %indvars.iv, !dbg !253
  %76 = load double* %arrayidx395, align 8, !dbg !253, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %76}, i64 0, metadata !159), !dbg !253
  %arrayidx397 = getelementptr inbounds double* %29, i64 %indvars.iv, !dbg !254
  %77 = load double* %arrayidx397, align 8, !dbg !254, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %77}, i64 0, metadata !160), !dbg !254
  %arrayidx399 = getelementptr inbounds double* %33, i64 %indvars.iv, !dbg !255
  %78 = load double* %arrayidx399, align 8, !dbg !255, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %78}, i64 0, metadata !161), !dbg !255
  %arrayidx401 = getelementptr inbounds double* %37, i64 %indvars.iv, !dbg !256
  %79 = load double* %arrayidx401, align 8, !dbg !256, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %79}, i64 0, metadata !162), !dbg !256
  %arrayidx403 = getelementptr inbounds double* %41, i64 %indvars.iv, !dbg !257
  %80 = load double* %arrayidx403, align 8, !dbg !257, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %80}, i64 0, metadata !163), !dbg !257
  %arrayidx405 = getelementptr inbounds double* %5, i64 %indvars.iv, !dbg !258
  %81 = load double* %arrayidx405, align 8, !dbg !258, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %81}, i64 0, metadata !165), !dbg !258
  %82 = load i32* %9, align 4, !dbg !259, !tbaa !214
  %cmp406 = icmp eq i32 %82, 1, !dbg !259
  br i1 %cmp406, label %if.then407, label %if.end412, !dbg !259

if.then407:                                       ; preds = %for.body391
  %arrayidx409 = getelementptr inbounds double* %45, i64 %indvars.iv, !dbg !260
  %83 = load double* %arrayidx409, align 8, !dbg !260, !tbaa !201
  call void @llvm.dbg.value(metadata !{double %83}, i64 0, metadata !164), !dbg !260
  %mul410 = fmul double %83, %83, !dbg !262
  call void @llvm.dbg.value(metadata !{double %mul410}, i64 0, metadata !170), !dbg !262
  br label %if.end412, !dbg !263

if.end412:                                        ; preds = %for.body391, %if.then407
  %psi2.1 = phi double [ %mul410, %if.then407 ], [ 1.000000e+00, %for.body391 ]
  %mul413 = fmul double %49, %75, !dbg !264
  %mul414 = fmul double %49, %mul413, !dbg !264
  call void @llvm.dbg.value(metadata !{double %mul414}, i64 0, metadata !171), !dbg !264
  %mul415 = fmul double %50, %78, !dbg !265
  %mul416 = fmul double %50, %mul415, !dbg !265
  call void @llvm.dbg.value(metadata !{double %mul416}, i64 0, metadata !172), !dbg !265
  %mul417 = fmul double %51, %80, !dbg !266
  %mul418 = fmul double %51, %mul417, !dbg !266
  call void @llvm.dbg.value(metadata !{double %mul418}, i64 0, metadata !173), !dbg !266
  %mul419 = fmul double %76, 2.000000e+00, !dbg !267
  %mul420 = fmul double %49, %mul419, !dbg !267
  %mul421 = fmul double %50, %mul420, !dbg !267
  call void @llvm.dbg.value(metadata !{double %mul421}, i64 0, metadata !179), !dbg !267
  %mul422 = fmul double %77, 2.000000e+00, !dbg !268
  %mul423 = fmul double %49, %mul422, !dbg !268
  %mul424 = fmul double %51, %mul423, !dbg !268
  call void @llvm.dbg.value(metadata !{double %mul424}, i64 0, metadata !180), !dbg !268
  %mul425 = fmul double %79, 2.000000e+00, !dbg !269
  %mul426 = fmul double %50, %mul425, !dbg !269
  %mul427 = fmul double %51, %mul426, !dbg !269
  call void @llvm.dbg.value(metadata !{double %mul427}, i64 0, metadata !181), !dbg !269
  %add428 = fadd double %mul414, %mul416, !dbg !270
  %add429 = fadd double %mul421, %add428, !dbg !270
  call void @llvm.dbg.value(metadata !{double %add429}, i64 0, metadata !174), !dbg !270
  %add430 = fadd double %mul414, %mul418, !dbg !271
  %add431 = fadd double %mul424, %add430, !dbg !271
  call void @llvm.dbg.value(metadata !{double %add431}, i64 0, metadata !175), !dbg !271
  %add432 = fadd double %mul416, %mul418, !dbg !272
  %add433 = fadd double %mul427, %add432, !dbg !272
  call void @llvm.dbg.value(metadata !{double %add433}, i64 0, metadata !176), !dbg !272
  %add435 = fadd double %add428, %mul418, !dbg !273
  %add436 = fadd double %mul421, %add435, !dbg !273
  %add437 = fadd double %mul424, %add436, !dbg !273
  %add438 = fadd double %mul427, %add437, !dbg !273
  call void @llvm.dbg.value(metadata !{double %add438}, i64 0, metadata !177), !dbg !273
  %cmp439 = fcmp olt double %mul416, %mul414, !dbg !274
  %cond443 = select i1 %cmp439, double %mul416, double %mul414, !dbg !274
  call void @llvm.dbg.value(metadata !{double %cond443}, i64 0, metadata !178), !dbg !274
  %cmp444 = fcmp olt double %mul418, %cond443, !dbg !275
  %cond448 = select i1 %cmp444, double %mul418, double %cond443, !dbg !275
  call void @llvm.dbg.value(metadata !{double %cond448}, i64 0, metadata !178), !dbg !275
  %cmp449 = fcmp olt double %add429, %cond448, !dbg !276
  %cond453 = select i1 %cmp449, double %add429, double %cond448, !dbg !276
  call void @llvm.dbg.value(metadata !{double %cond453}, i64 0, metadata !178), !dbg !276
  %cmp454 = fcmp olt double %add431, %cond453, !dbg !277
  %cond458 = select i1 %cmp454, double %add431, double %cond453, !dbg !277
  call void @llvm.dbg.value(metadata !{double %cond458}, i64 0, metadata !178), !dbg !277
  %cmp459 = fcmp olt double %add433, %cond458, !dbg !278
  %cond463 = select i1 %cmp459, double %add433, double %cond458, !dbg !278
  call void @llvm.dbg.value(metadata !{double %cond463}, i64 0, metadata !178), !dbg !278
  %cmp464 = fcmp olt double %add438, %cond463, !dbg !279
  %cond468 = select i1 %cmp464, double %add438, double %cond463, !dbg !279
  call void @llvm.dbg.value(metadata !{double %cond468}, i64 0, metadata !178), !dbg !279
  %call469 = call double @sqrt(double %cond468) #5, !dbg !280
  call void @llvm.dbg.value(metadata !{double %call469}, i64 0, metadata !178), !dbg !280
  %mul470 = fmul double %psi2.1, %call469, !dbg !281
  %div471 = fdiv double %mul470, %81, !dbg !281
  call void @llvm.dbg.value(metadata !{double %div471}, i64 0, metadata !183), !dbg !281
  call void @llvm.dbg.value(metadata !{double* %minfactor}, i64 0, metadata !185), !dbg !282
  %84 = load double* %minfactor, align 8, !dbg !282, !tbaa !201
  %cmp472 = fcmp olt double %div471, %84, !dbg !282
  %cond476 = select i1 %cmp472, double %div471, double %84, !dbg !282
  call void @llvm.dbg.value(metadata !{double %cond476}, i64 0, metadata !185), !dbg !282
  store double %cond476, double* %minfactor, align 8, !dbg !282, !tbaa !201
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !248
  %85 = load i32* %0, align 4, !dbg !248, !tbaa !214
  %86 = load i32* %arrayidx386, align 4, !dbg !248, !tbaa !214
  %mul387 = mul nsw i32 %86, %85, !dbg !248
  %87 = load i32* %arrayidx388, align 4, !dbg !248, !tbaa !214
  %mul389 = mul nsw i32 %mul387, %87, !dbg !248
  %88 = trunc i64 %indvars.iv.next to i32, !dbg !248
  %cmp390 = icmp slt i32 %88, %mul389, !dbg !248
  br i1 %cmp390, label %for.body391, label %for.end479, !dbg !248

for.end479:                                       ; preds = %if.end412, %for.cond384.preheader
  %call480 = call i32 @CCTK_ReductionArrayHandle(i8* getelementptr inbounds ([8 x i8]* @.str56, i64 0, i64 0)) #5, !dbg !283
  call void @llvm.dbg.value(metadata !{i32 %call480}, i64 0, metadata !191), !dbg !283
  %89 = bitcast double* %minfactor to i8*, !dbg !284
  %90 = bitcast double* %tmp to i8*, !dbg !284
  %call481 = call i32 @CCTK_ReduceLocalScalar(%struct.cGH* %cctkGH, i32 -1, i32 %call480, i8* %89, i8* %90, i32 6) #5, !dbg !284
  call void @llvm.dbg.value(metadata !{double* %tmp}, i64 0, metadata !186), !dbg !285
  %91 = load double* %tmp, align 8, !dbg !285, !tbaa !201
  %div482 = fdiv double 1.000000e+00, %91, !dbg !285
  store double %div482, double* %17, align 8, !dbg !285, !tbaa !201
  br label %if.end484, !dbg !286

if.end484:                                        ; preds = %if.else380, %for.end479, %for.end
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !157), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  call void @llvm.dbg.value(metadata !287, i64 0, metadata !71), !dbg !288
  ret void, !dbg !288
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare double @sqrt(double) #4

; Function Attrs: optsize
declare i32 @CCTK_ReductionArrayHandle(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_ReduceLocalScalar(%struct.cGH*, i32, i32, i8*, i8*, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !192, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Courant.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Courant.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusEinstein_Einstein_Courant_c", metadata !"CCTKi_version_CactusEinstein_Einstein_Courant_c", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusEinstein_Einstein_Courant_c, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [CCTKi_version_CactusEinstein_Einstein_Courant_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Courant.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CalcCourant", metadata !"CalcCourant", metadata !"", i32 27, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.cGH*)* @CalcCourant, null, null, metadata !52, i32 28} ; [ DW_TAG_subprogram ] [line 27] [def] [scope 28] [CalcCourant]
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
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191}
!53 = metadata !{i32 786689, metadata !11, metadata !"cctkGH", metadata !5, i32 16777243, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctkGH] [line 27]
!54 = metadata !{i32 786688, metadata !11, metadata !"cctk_dim", metadata !5, i32 29, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dim] [line 29]
!55 = metadata !{i32 786688, metadata !11, metadata !"cctk_gsh", metadata !5, i32 29, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_gsh] [line 29]
!56 = metadata !{i32 786688, metadata !11, metadata !"cctk_lsh", metadata !5, i32 29, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lsh] [line 29]
!57 = metadata !{i32 786688, metadata !11, metadata !"cctk_lbnd", metadata !5, i32 29, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lbnd] [line 29]
!58 = metadata !{i32 786688, metadata !11, metadata !"cctk_ubnd", metadata !5, i32 29, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_ubnd] [line 29]
!59 = metadata !{i32 786688, metadata !11, metadata !"cctk_lssh", metadata !5, i32 29, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lssh] [line 29]
!60 = metadata !{i32 786688, metadata !11, metadata !"cctk_from", metadata !5, i32 29, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_from] [line 29]
!61 = metadata !{i32 786688, metadata !11, metadata !"cctk_to", metadata !5, i32 29, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_to] [line 29]
!62 = metadata !{i32 786688, metadata !11, metadata !"cctk_bbox", metadata !5, i32 29, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_bbox] [line 29]
!63 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_time", metadata !5, i32 29, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_time] [line 29]
!64 = metadata !{i32 786688, metadata !11, metadata !"cctk_time", metadata !5, i32 29, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_time] [line 29]
!65 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_space", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_space] [line 29]
!66 = metadata !{i32 786688, metadata !11, metadata !"cctk_origin_space", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_origin_space] [line 29]
!67 = metadata !{i32 786688, metadata !11, metadata !"cctk_levfac", metadata !5, i32 29, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_levfac] [line 29]
!68 = metadata !{i32 786688, metadata !11, metadata !"cctk_convlevel", metadata !5, i32 29, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_convlevel] [line 29]
!69 = metadata !{i32 786688, metadata !11, metadata !"cctk_nghostzones", metadata !5, i32 29, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_nghostzones] [line 29]
!70 = metadata !{i32 786688, metadata !11, metadata !"cctk_iteration", metadata !5, i32 29, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_iteration] [line 29]
!71 = metadata !{i32 786688, metadata !11, metadata !"cctk_dummy_pointer", metadata !5, i32 29, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dummy_pointer] [line 29]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!73 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{i32 786688, metadata !11, metadata !"detg", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [detg] [line 29]
!75 = metadata !{i32 786688, metadata !11, metadata !"gpp", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gpp] [line 29]
!76 = metadata !{i32 786688, metadata !11, metadata !"gqp", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gqp] [line 29]
!77 = metadata !{i32 786688, metadata !11, metadata !"gqq", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gqq] [line 29]
!78 = metadata !{i32 786688, metadata !11, metadata !"grp", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grp] [line 29]
!79 = metadata !{i32 786688, metadata !11, metadata !"grq", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grq] [line 29]
!80 = metadata !{i32 786688, metadata !11, metadata !"grr", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grr] [line 29]
!81 = metadata !{i32 786688, metadata !11, metadata !"kpp", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kpp] [line 29]
!82 = metadata !{i32 786688, metadata !11, metadata !"kqp", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kqp] [line 29]
!83 = metadata !{i32 786688, metadata !11, metadata !"kqq", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kqq] [line 29]
!84 = metadata !{i32 786688, metadata !11, metadata !"krp", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [krp] [line 29]
!85 = metadata !{i32 786688, metadata !11, metadata !"krq", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [krq] [line 29]
!86 = metadata !{i32 786688, metadata !11, metadata !"krr", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [krr] [line 29]
!87 = metadata !{i32 786688, metadata !11, metadata !"trK", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [trK] [line 29]
!88 = metadata !{i32 786688, metadata !11, metadata !"active_slicing_handle", metadata !5, i32 29, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [active_slicing_handle] [line 29]
!89 = metadata !{i32 786688, metadata !11, metadata !"alp", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alp] [line 29]
!90 = metadata !{i32 786688, metadata !11, metadata !"betax", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betax] [line 29]
!91 = metadata !{i32 786688, metadata !11, metadata !"betay", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betay] [line 29]
!92 = metadata !{i32 786688, metadata !11, metadata !"betaz", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betaz] [line 29]
!93 = metadata !{i32 786688, metadata !11, metadata !"coarse_dx", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dx] [line 29]
!94 = metadata !{i32 786688, metadata !11, metadata !"coarse_dy", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dy] [line 29]
!95 = metadata !{i32 786688, metadata !11, metadata !"coarse_dz", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dz] [line 29]
!96 = metadata !{i32 786688, metadata !11, metadata !"conformal_state", metadata !5, i32 29, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conformal_state] [line 29]
!97 = metadata !{i32 786688, metadata !11, metadata !"courant_min_time", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_min_time] [line 29]
!98 = metadata !{i32 786688, metadata !11, metadata !"courant_wave_speed", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_wave_speed] [line 29]
!99 = metadata !{i32 786688, metadata !11, metadata !"emask", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [emask] [line 29]
!100 = metadata !{i32 786688, metadata !11, metadata !"gxx", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxx] [line 29]
!101 = metadata !{i32 786688, metadata !11, metadata !"gxy", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxy] [line 29]
!102 = metadata !{i32 786688, metadata !11, metadata !"gxz", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxz] [line 29]
!103 = metadata !{i32 786688, metadata !11, metadata !"gyy", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gyy] [line 29]
!104 = metadata !{i32 786688, metadata !11, metadata !"gyz", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gyz] [line 29]
!105 = metadata !{i32 786688, metadata !11, metadata !"gzz", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gzz] [line 29]
!106 = metadata !{i32 786688, metadata !11, metadata !"kxx", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kxx] [line 29]
!107 = metadata !{i32 786688, metadata !11, metadata !"kxy", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kxy] [line 29]
!108 = metadata !{i32 786688, metadata !11, metadata !"kxz", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kxz] [line 29]
!109 = metadata !{i32 786688, metadata !11, metadata !"kyy", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kyy] [line 29]
!110 = metadata !{i32 786688, metadata !11, metadata !"kyz", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kyz] [line 29]
!111 = metadata !{i32 786688, metadata !11, metadata !"kzz", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kzz] [line 29]
!112 = metadata !{i32 786688, metadata !11, metadata !"psi", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psi] [line 29]
!113 = metadata !{i32 786688, metadata !11, metadata !"psix", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psix] [line 29]
!114 = metadata !{i32 786688, metadata !11, metadata !"psixx", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psixx] [line 29]
!115 = metadata !{i32 786688, metadata !11, metadata !"psixy", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psixy] [line 29]
!116 = metadata !{i32 786688, metadata !11, metadata !"psixz", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psixz] [line 29]
!117 = metadata !{i32 786688, metadata !11, metadata !"psiy", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiy] [line 29]
!118 = metadata !{i32 786688, metadata !11, metadata !"psiyy", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiyy] [line 29]
!119 = metadata !{i32 786688, metadata !11, metadata !"psiyz", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiyz] [line 29]
!120 = metadata !{i32 786688, metadata !11, metadata !"psiz", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiz] [line 29]
!121 = metadata !{i32 786688, metadata !11, metadata !"psizz", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psizz] [line 29]
!122 = metadata !{i32 786688, metadata !11, metadata !"r", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 29]
!123 = metadata !{i32 786688, metadata !11, metadata !"shift_state", metadata !5, i32 29, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift_state] [line 29]
!124 = metadata !{i32 786688, metadata !11, metadata !"x", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 29]
!125 = metadata !{i32 786688, metadata !11, metadata !"y", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 29]
!126 = metadata !{i32 786688, metadata !11, metadata !"z", metadata !5, i32 29, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 29]
!127 = metadata !{i32 786688, metadata !11, metadata !"gaussian_amplitude", metadata !5, i32 30, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_amplitude] [line 30]
!128 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!129 = metadata !{i32 786688, metadata !11, metadata !"gaussian_sigma2", metadata !5, i32 30, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_sigma2] [line 30]
!130 = metadata !{i32 786688, metadata !11, metadata !"psiminustwo_cut", metadata !5, i32 30, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiminustwo_cut] [line 30]
!131 = metadata !{i32 786688, metadata !11, metadata !"rot_shift_att_sigma", metadata !5, i32 30, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_sigma] [line 30]
!132 = metadata !{i32 786688, metadata !11, metadata !"rotation_omega", metadata !5, i32 30, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_omega] [line 30]
!133 = metadata !{i32 786688, metadata !11, metadata !"advection", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [advection] [line 30]
!134 = metadata !{i32 786688, metadata !11, metadata !"evolution_system", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [evolution_system] [line 30]
!135 = metadata !{i32 786688, metadata !11, metadata !"initial_data", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_data] [line 30]
!136 = metadata !{i32 786688, metadata !11, metadata !"initial_lapse", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_lapse] [line 30]
!137 = metadata !{i32 786688, metadata !11, metadata !"initial_shift", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_shift] [line 30]
!138 = metadata !{i32 786688, metadata !11, metadata !"mixed_slicing", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mixed_slicing] [line 30]
!139 = metadata !{i32 786688, metadata !11, metadata !"shift", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 30]
!140 = metadata !{i32 786688, metadata !11, metadata !"slicing", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing] [line 30]
!141 = metadata !{i32 786688, metadata !11, metadata !"slicing_verbose", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing_verbose] [line 30]
!142 = metadata !{i32 786688, metadata !11, metadata !"einstein_register_slicing", metadata !5, i32 30, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [einstein_register_slicing] [line 30]
!143 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!144 = metadata !{i32 786688, metadata !11, metadata !"rot_shift_att", metadata !5, i32 30, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att] [line 30]
!145 = metadata !{i32 786688, metadata !11, metadata !"rot_shift_att_pow", metadata !5, i32 30, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_pow] [line 30]
!146 = metadata !{i32 786688, metadata !11, metadata !"rotation_psipower", metadata !5, i32 30, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_psipower] [line 30]
!147 = metadata !{i32 786688, metadata !11, metadata !"use_conformal", metadata !5, i32 30, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal] [line 30]
!148 = metadata !{i32 786688, metadata !11, metadata !"use_conformal_derivs", metadata !5, i32 30, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal_derivs] [line 30]
!149 = metadata !{i32 786688, metadata !11, metadata !"use_mask", metadata !5, i32 30, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_mask] [line 30]
!150 = metadata !{i32 786688, metadata !11, metadata !"dtfac", metadata !5, i32 30, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtfac] [line 30]
!151 = metadata !{i32 786688, metadata !11, metadata !"gauge_speed", metadata !5, i32 30, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gauge_speed] [line 30]
!152 = metadata !{i32 786688, metadata !11, metadata !"wavecalc", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wavecalc] [line 30]
!153 = metadata !{i32 786688, metadata !11, metadata !"conformal_storage_all", metadata !5, i32 30, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conformal_storage_all] [line 30]
!154 = metadata !{i32 786688, metadata !11, metadata !"rsquared_in_sphm", metadata !5, i32 30, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsquared_in_sphm] [line 30]
!155 = metadata !{i32 786688, metadata !11, metadata !"domain", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 30]
!156 = metadata !{i32 786688, metadata !11, metadata !"timestep_method", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_method] [line 30]
!157 = metadata !{i32 786688, metadata !11, metadata !"cctk_pdummy_pointer", metadata !5, i32 30, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 30]
!158 = metadata !{i32 786688, metadata !11, metadata !"gxxp", metadata !5, i32 32, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxxp] [line 32]
!159 = metadata !{i32 786688, metadata !11, metadata !"gxyp", metadata !5, i32 32, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxyp] [line 32]
!160 = metadata !{i32 786688, metadata !11, metadata !"gxzp", metadata !5, i32 32, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxzp] [line 32]
!161 = metadata !{i32 786688, metadata !11, metadata !"gyyp", metadata !5, i32 32, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gyyp] [line 32]
!162 = metadata !{i32 786688, metadata !11, metadata !"gyzp", metadata !5, i32 32, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gyzp] [line 32]
!163 = metadata !{i32 786688, metadata !11, metadata !"gzzp", metadata !5, i32 32, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gzzp] [line 32]
!164 = metadata !{i32 786688, metadata !11, metadata !"psip", metadata !5, i32 32, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psip] [line 32]
!165 = metadata !{i32 786688, metadata !11, metadata !"alpp", metadata !5, i32 32, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alpp] [line 32]
!166 = metadata !{i32 786688, metadata !11, metadata !"uxx", metadata !5, i32 34, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uxx] [line 34]
!167 = metadata !{i32 786688, metadata !11, metadata !"uyy", metadata !5, i32 34, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uyy] [line 34]
!168 = metadata !{i32 786688, metadata !11, metadata !"uzz", metadata !5, i32 34, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uzz] [line 34]
!169 = metadata !{i32 786688, metadata !11, metadata !"det", metadata !5, i32 34, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [det] [line 34]
!170 = metadata !{i32 786688, metadata !11, metadata !"psi2", metadata !5, i32 35, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psi2] [line 35]
!171 = metadata !{i32 786688, metadata !11, metadata !"s1", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 36]
!172 = metadata !{i32 786688, metadata !11, metadata !"s2", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 36]
!173 = metadata !{i32 786688, metadata !11, metadata !"s3", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s3] [line 36]
!174 = metadata !{i32 786688, metadata !11, metadata !"s4", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s4] [line 36]
!175 = metadata !{i32 786688, metadata !11, metadata !"s5", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s5] [line 36]
!176 = metadata !{i32 786688, metadata !11, metadata !"s6", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s6] [line 36]
!177 = metadata !{i32 786688, metadata !11, metadata !"s7", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s7] [line 36]
!178 = metadata !{i32 786688, metadata !11, metadata !"mins", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mins] [line 36]
!179 = metadata !{i32 786688, metadata !11, metadata !"t1", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t1] [line 36]
!180 = metadata !{i32 786688, metadata !11, metadata !"t2", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t2] [line 36]
!181 = metadata !{i32 786688, metadata !11, metadata !"t3", metadata !5, i32 36, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t3] [line 36]
!182 = metadata !{i32 786688, metadata !11, metadata !"maxfactor", metadata !5, i32 37, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxfactor] [line 37]
!183 = metadata !{i32 786688, metadata !11, metadata !"localfactor", metadata !5, i32 37, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [localfactor] [line 37]
!184 = metadata !{i32 786688, metadata !11, metadata !"fgauge", metadata !5, i32 37, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fgauge] [line 37]
!185 = metadata !{i32 786688, metadata !11, metadata !"minfactor", metadata !5, i32 38, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minfactor] [line 38]
!186 = metadata !{i32 786688, metadata !11, metadata !"tmp", metadata !5, i32 38, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 38]
!187 = metadata !{i32 786688, metadata !11, metadata !"dx", metadata !5, i32 39, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 39]
!188 = metadata !{i32 786688, metadata !11, metadata !"dy", metadata !5, i32 39, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 39]
!189 = metadata !{i32 786688, metadata !11, metadata !"dz", metadata !5, i32 39, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 39]
!190 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 40, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 40]
!191 = metadata !{i32 786688, metadata !11, metadata !"min_handle", metadata !5, i32 40, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min_handle] [line 40]
!192 = metadata !{metadata !193}
!193 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 21, metadata !8, i32 1, i32 1, null, null}
!194 = metadata !{i32 23, i32 0, metadata !4, null}
!195 = metadata !{i32 27, i32 0, metadata !11, null}
!196 = metadata !{i32 29, i32 0, metadata !11, null}
!197 = metadata !{metadata !"any pointer", metadata !198}
!198 = metadata !{metadata !"omnipotent char", metadata !199}
!199 = metadata !{metadata !"Simple C/C++ TBAA"}
!200 = metadata !{i32 30, i32 0, metadata !11, null}
!201 = metadata !{metadata !"double", metadata !198}
!202 = metadata !{i32 38, i32 0, metadata !11, null}
!203 = metadata !{double 0.000000e+00}
!204 = metadata !{i32 43, i32 0, metadata !11, null}
!205 = metadata !{double 1.000000e+09}
!206 = metadata !{i32 44, i32 0, metadata !11, null}
!207 = metadata !{i32 46, i32 0, metadata !11, null}
!208 = metadata !{i32 47, i32 0, metadata !11, null}
!209 = metadata !{i32 48, i32 0, metadata !11, null}
!210 = metadata !{i32 51, i32 0, metadata !11, null}
!211 = metadata !{i32 54, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !213, i32 54, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Courant.c]
!213 = metadata !{i32 786443, metadata !1, metadata !11, i32 52, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Courant.c]
!214 = metadata !{metadata !"int", metadata !198}
!215 = metadata !{i32 58, i32 0, metadata !216, null} ; [ DW_TAG_imported_module ]
!216 = metadata !{i32 786443, metadata !1, metadata !212, i32 55, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Courant.c]
!217 = metadata !{i32 59, i32 0, metadata !216, null}
!218 = metadata !{i32 60, i32 0, metadata !216, null}
!219 = metadata !{i32 61, i32 0, metadata !216, null}
!220 = metadata !{i32 62, i32 0, metadata !216, null}
!221 = metadata !{i32 63, i32 0, metadata !216, null}
!222 = metadata !{i32 64, i32 0, metadata !216, null}
!223 = metadata !{i32 79, i32 0, metadata !216, null}
!224 = metadata !{i32 81, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !216, i32 80, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Courant.c]
!226 = metadata !{i32 82, i32 0, metadata !225, null}
!227 = metadata !{i32 83, i32 0, metadata !225, null}
!228 = metadata !{i32 91, i32 0, metadata !216, null}
!229 = metadata !{i32 95, i32 0, metadata !216, null}
!230 = metadata !{i32 96, i32 0, metadata !216, null}
!231 = metadata !{i32 97, i32 0, metadata !216, null}
!232 = metadata !{double 1.000000e+00}
!233 = metadata !{i32 100, i32 0, metadata !216, null}
!234 = metadata !{i32 101, i32 0, metadata !216, null}
!235 = metadata !{i32 102, i32 0, metadata !216, null}
!236 = metadata !{i32 105, i32 0, metadata !216, null}
!237 = metadata !{i32 106, i32 0, metadata !216, null}
!238 = metadata !{i32 107, i32 0, metadata !216, null}
!239 = metadata !{i32 108, i32 0, metadata !216, null}
!240 = metadata !{i32 109, i32 0, metadata !216, null}
!241 = metadata !{i32 110, i32 0, metadata !216, null}
!242 = metadata !{i32 114, i32 0, metadata !213, null}
!243 = metadata !{i32 116, i32 0, metadata !213, null}
!244 = metadata !{i32 117, i32 0, metadata !213, null}
!245 = metadata !{i32 119, i32 0, metadata !213, null}
!246 = metadata !{i32 121, i32 0, metadata !213, null}
!247 = metadata !{i32 122, i32 0, metadata !11, null}
!248 = metadata !{i32 125, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !250, i32 125, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Courant.c]
!250 = metadata !{i32 786443, metadata !1, metadata !11, i32 123, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Courant.c]
!251 = metadata !{i32 129, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !249, i32 126, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Courant.c]
!253 = metadata !{i32 130, i32 0, metadata !252, null}
!254 = metadata !{i32 131, i32 0, metadata !252, null}
!255 = metadata !{i32 132, i32 0, metadata !252, null}
!256 = metadata !{i32 133, i32 0, metadata !252, null}
!257 = metadata !{i32 134, i32 0, metadata !252, null}
!258 = metadata !{i32 135, i32 0, metadata !252, null}
!259 = metadata !{i32 150, i32 0, metadata !252, null}
!260 = metadata !{i32 152, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !252, i32 151, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/Courant.c]
!262 = metadata !{i32 153, i32 0, metadata !261, null}
!263 = metadata !{i32 154, i32 0, metadata !261, null}
!264 = metadata !{i32 161, i32 0, metadata !252, null}
!265 = metadata !{i32 162, i32 0, metadata !252, null}
!266 = metadata !{i32 163, i32 0, metadata !252, null}
!267 = metadata !{i32 164, i32 0, metadata !252, null}
!268 = metadata !{i32 165, i32 0, metadata !252, null}
!269 = metadata !{i32 166, i32 0, metadata !252, null}
!270 = metadata !{i32 167, i32 0, metadata !252, null}
!271 = metadata !{i32 168, i32 0, metadata !252, null}
!272 = metadata !{i32 169, i32 0, metadata !252, null}
!273 = metadata !{i32 170, i32 0, metadata !252, null}
!274 = metadata !{i32 171, i32 0, metadata !252, null}
!275 = metadata !{i32 172, i32 0, metadata !252, null}
!276 = metadata !{i32 173, i32 0, metadata !252, null}
!277 = metadata !{i32 174, i32 0, metadata !252, null}
!278 = metadata !{i32 175, i32 0, metadata !252, null}
!279 = metadata !{i32 176, i32 0, metadata !252, null}
!280 = metadata !{i32 178, i32 0, metadata !252, null}
!281 = metadata !{i32 179, i32 0, metadata !252, null}
!282 = metadata !{i32 180, i32 0, metadata !252, null}
!283 = metadata !{i32 184, i32 0, metadata !250, null}
!284 = metadata !{i32 185, i32 0, metadata !250, null}
!285 = metadata !{i32 187, i32 0, metadata !250, null}
!286 = metadata !{i32 190, i32 0, metadata !250, null}
!287 = metadata !{i8* undef}
!288 = metadata !{i32 193, i32 0, metadata !11, null}
