; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitSymBound.c'
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
@.str53 = private unnamed_addr constant [98 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/InitSymBound.c,v 1.9 2002/01/04 10:01:40 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_InitSymBound_c() #0 {
entry:
  ret i8* getelementptr inbounds ([98 x i8]* @.str53, i64 0, i64 0), !dbg !134
}

; Function Attrs: nounwind optsize uwtable
define void @Einstein_InitSymBound(%struct.cGH* %cctkGH) #1 {
entry:
  %sym = alloca [3 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %cctkGH}, i64 0, metadata !53), !dbg !135
  %call = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #4, !dbg !136
  %call19 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !136
  %call24 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !136
  %call29 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !136
  %call34 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !136
  %call39 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !136
  %call44 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !136
  %call49 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !136
  %call54 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !136
  %call59 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #4, !dbg !136
  %call64 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #4, !dbg !136
  %call69 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #4, !dbg !136
  %call74 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #4, !dbg !136
  %call79 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #4, !dbg !136
  %call84 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #4, !dbg !136
  %call89 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #4, !dbg !136
  %call94 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4, !dbg !136
  %call99 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #4, !dbg !136
  %call104 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #4, !dbg !136
  %call109 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #4, !dbg !136
  %call114 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #4, !dbg !136
  %call119 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #4, !dbg !136
  %call124 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #4, !dbg !136
  %call129 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #4, !dbg !136
  %call134 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #4, !dbg !136
  %call139 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #4, !dbg !136
  %call144 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #4, !dbg !136
  %call149 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #4, !dbg !136
  %call154 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #4, !dbg !136
  %call159 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #4, !dbg !136
  %call164 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #4, !dbg !136
  %call169 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #4, !dbg !136
  %call174 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #4, !dbg !136
  %call179 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #4, !dbg !136
  %call184 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #4, !dbg !136
  %call189 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #4, !dbg !136
  %call194 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #4, !dbg !136
  %call199 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #4, !dbg !136
  %call204 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #4, !dbg !136
  %call209 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #4, !dbg !136
  %call214 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #4, !dbg !136
  %call219 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #4, !dbg !136
  %call224 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #4, !dbg !136
  %call229 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #4, !dbg !136
  %call234 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #4, !dbg !136
  %call239 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #4, !dbg !136
  %call244 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #4, !dbg !136
  %call249 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #4, !dbg !136
  %call254 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #4, !dbg !136
  %call259 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #4, !dbg !136
  %call264 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #4, !dbg !136
  %call269 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #4, !dbg !136
  %call274 = call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #4, !dbg !136
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %sym}, metadata !128), !dbg !137
  call void @llvm.dbg.value(metadata !138, i64 0, metadata !127), !dbg !139
  %arrayidx279 = getelementptr inbounds [3 x i32]* %sym, i64 0, i64 0, !dbg !140
  store i32 1, i32* %arrayidx279, align 4, !dbg !140, !tbaa !141
  %arrayidx280 = getelementptr inbounds [3 x i32]* %sym, i64 0, i64 1, !dbg !144
  store i32 1, i32* %arrayidx280, align 4, !dbg !144, !tbaa !141
  %arrayidx281 = getelementptr inbounds [3 x i32]* %sym, i64 0, i64 2, !dbg !145
  store i32 1, i32* %arrayidx281, align 4, !dbg !145, !tbaa !141
  %call282 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #4, !dbg !146
  %call284 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #4, !dbg !147
  %call286 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #4, !dbg !148
  store i32 -1, i32* %arrayidx279, align 4, !dbg !149, !tbaa !141
  store i32 -1, i32* %arrayidx280, align 4, !dbg !150, !tbaa !141
  store i32 1, i32* %arrayidx281, align 4, !dbg !151, !tbaa !141
  %call292 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #4, !dbg !152
  store i32 -1, i32* %arrayidx279, align 4, !dbg !153, !tbaa !141
  store i32 1, i32* %arrayidx280, align 4, !dbg !154, !tbaa !141
  store i32 -1, i32* %arrayidx281, align 4, !dbg !155, !tbaa !141
  %call299 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #4, !dbg !156
  store i32 1, i32* %arrayidx279, align 4, !dbg !157, !tbaa !141
  store i32 -1, i32* %arrayidx280, align 4, !dbg !158, !tbaa !141
  store i32 -1, i32* %arrayidx281, align 4, !dbg !159, !tbaa !141
  %call306 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #4, !dbg !160
  store i32 1, i32* %arrayidx279, align 4, !dbg !161, !tbaa !141
  store i32 1, i32* %arrayidx280, align 4, !dbg !162, !tbaa !141
  store i32 1, i32* %arrayidx281, align 4, !dbg !163, !tbaa !141
  %call311 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #4, !dbg !164
  %call313 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #4, !dbg !165
  %call315 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #4, !dbg !166
  store i32 -1, i32* %arrayidx279, align 4, !dbg !167, !tbaa !141
  store i32 -1, i32* %arrayidx280, align 4, !dbg !168, !tbaa !141
  store i32 1, i32* %arrayidx281, align 4, !dbg !169, !tbaa !141
  %call322 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #4, !dbg !170
  store i32 -1, i32* %arrayidx279, align 4, !dbg !171, !tbaa !141
  store i32 1, i32* %arrayidx280, align 4, !dbg !172, !tbaa !141
  store i32 -1, i32* %arrayidx281, align 4, !dbg !173, !tbaa !141
  %call329 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #4, !dbg !174
  store i32 1, i32* %arrayidx279, align 4, !dbg !175, !tbaa !141
  store i32 -1, i32* %arrayidx280, align 4, !dbg !176, !tbaa !141
  store i32 -1, i32* %arrayidx281, align 4, !dbg !177, !tbaa !141
  %call336 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #4, !dbg !178
  store i32 1, i32* %arrayidx279, align 4, !dbg !179, !tbaa !141
  store i32 1, i32* %arrayidx280, align 4, !dbg !180, !tbaa !141
  store i32 1, i32* %arrayidx281, align 4, !dbg !181, !tbaa !141
  %call341 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #4, !dbg !182
  store i32 -1, i32* %arrayidx279, align 4, !dbg !183, !tbaa !141
  store i32 1, i32* %arrayidx280, align 4, !dbg !184, !tbaa !141
  store i32 1, i32* %arrayidx281, align 4, !dbg !185, !tbaa !141
  %call347 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4, !dbg !186
  store i32 1, i32* %arrayidx279, align 4, !dbg !187, !tbaa !141
  store i32 -1, i32* %arrayidx280, align 4, !dbg !188, !tbaa !141
  store i32 1, i32* %arrayidx281, align 4, !dbg !189, !tbaa !141
  %call353 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #4, !dbg !190
  store i32 1, i32* %arrayidx279, align 4, !dbg !191, !tbaa !141
  store i32 1, i32* %arrayidx280, align 4, !dbg !192, !tbaa !141
  store i32 -1, i32* %arrayidx281, align 4, !dbg !193, !tbaa !141
  %call359 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #4, !dbg !194
  store i32 1, i32* %arrayidx279, align 4, !dbg !195, !tbaa !141
  store i32 1, i32* %arrayidx280, align 4, !dbg !196, !tbaa !141
  store i32 1, i32* %arrayidx281, align 4, !dbg !197, !tbaa !141
  %call364 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %arrayidx279, i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #4, !dbg !198
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  call void @llvm.dbg.value(metadata !199, i64 0, metadata !71), !dbg !200
  ret void, !dbg !200
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #3

; Function Attrs: optsize
declare i32 @SetCartSymVN(%struct.cGH*, i32*, i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !132, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitSymBound.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitSymBound.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusEinstein_Einstein_InitSymBound_c", metadata !"CCTKi_version_CactusEinstein_Einstein_InitSymBound_c", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusEinstein_Einstein_InitSymBound_c, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [CCTKi_version_CactusEinstein_Einstein_InitSymBound_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Einstein/InitSymBound.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Einstein_InitSymBound", metadata !"Einstein_InitSymBound", metadata !"", i32 39, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.cGH*)* @Einstein_InitSymBound, null, null, metadata !52, i32 40} ; [ DW_TAG_subprogram ] [line 39] [def] [scope 40] [Einstein_InitSymBound]
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
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128}
!53 = metadata !{i32 786689, metadata !11, metadata !"cctkGH", metadata !5, i32 16777255, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctkGH] [line 39]
!54 = metadata !{i32 786688, metadata !11, metadata !"cctk_dim", metadata !5, i32 42, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dim] [line 42]
!55 = metadata !{i32 786688, metadata !11, metadata !"cctk_gsh", metadata !5, i32 42, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_gsh] [line 42]
!56 = metadata !{i32 786688, metadata !11, metadata !"cctk_lsh", metadata !5, i32 42, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lsh] [line 42]
!57 = metadata !{i32 786688, metadata !11, metadata !"cctk_lbnd", metadata !5, i32 42, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lbnd] [line 42]
!58 = metadata !{i32 786688, metadata !11, metadata !"cctk_ubnd", metadata !5, i32 42, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_ubnd] [line 42]
!59 = metadata !{i32 786688, metadata !11, metadata !"cctk_lssh", metadata !5, i32 42, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lssh] [line 42]
!60 = metadata !{i32 786688, metadata !11, metadata !"cctk_from", metadata !5, i32 42, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_from] [line 42]
!61 = metadata !{i32 786688, metadata !11, metadata !"cctk_to", metadata !5, i32 42, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_to] [line 42]
!62 = metadata !{i32 786688, metadata !11, metadata !"cctk_bbox", metadata !5, i32 42, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_bbox] [line 42]
!63 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_time", metadata !5, i32 42, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_time] [line 42]
!64 = metadata !{i32 786688, metadata !11, metadata !"cctk_time", metadata !5, i32 42, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_time] [line 42]
!65 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_space", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_space] [line 42]
!66 = metadata !{i32 786688, metadata !11, metadata !"cctk_origin_space", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_origin_space] [line 42]
!67 = metadata !{i32 786688, metadata !11, metadata !"cctk_levfac", metadata !5, i32 42, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_levfac] [line 42]
!68 = metadata !{i32 786688, metadata !11, metadata !"cctk_convlevel", metadata !5, i32 42, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_convlevel] [line 42]
!69 = metadata !{i32 786688, metadata !11, metadata !"cctk_nghostzones", metadata !5, i32 42, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_nghostzones] [line 42]
!70 = metadata !{i32 786688, metadata !11, metadata !"cctk_iteration", metadata !5, i32 42, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_iteration] [line 42]
!71 = metadata !{i32 786688, metadata !11, metadata !"cctk_dummy_pointer", metadata !5, i32 42, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dummy_pointer] [line 42]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!73 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{i32 786688, metadata !11, metadata !"detg", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [detg] [line 42]
!75 = metadata !{i32 786688, metadata !11, metadata !"gpp", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gpp] [line 42]
!76 = metadata !{i32 786688, metadata !11, metadata !"gqp", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gqp] [line 42]
!77 = metadata !{i32 786688, metadata !11, metadata !"gqq", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gqq] [line 42]
!78 = metadata !{i32 786688, metadata !11, metadata !"grp", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grp] [line 42]
!79 = metadata !{i32 786688, metadata !11, metadata !"grq", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grq] [line 42]
!80 = metadata !{i32 786688, metadata !11, metadata !"grr", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grr] [line 42]
!81 = metadata !{i32 786688, metadata !11, metadata !"kpp", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kpp] [line 42]
!82 = metadata !{i32 786688, metadata !11, metadata !"kqp", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kqp] [line 42]
!83 = metadata !{i32 786688, metadata !11, metadata !"kqq", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kqq] [line 42]
!84 = metadata !{i32 786688, metadata !11, metadata !"krp", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [krp] [line 42]
!85 = metadata !{i32 786688, metadata !11, metadata !"krq", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [krq] [line 42]
!86 = metadata !{i32 786688, metadata !11, metadata !"krr", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [krr] [line 42]
!87 = metadata !{i32 786688, metadata !11, metadata !"trK", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [trK] [line 42]
!88 = metadata !{i32 786688, metadata !11, metadata !"active_slicing_handle", metadata !5, i32 42, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [active_slicing_handle] [line 42]
!89 = metadata !{i32 786688, metadata !11, metadata !"alp", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alp] [line 42]
!90 = metadata !{i32 786688, metadata !11, metadata !"betax", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betax] [line 42]
!91 = metadata !{i32 786688, metadata !11, metadata !"betay", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betay] [line 42]
!92 = metadata !{i32 786688, metadata !11, metadata !"betaz", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betaz] [line 42]
!93 = metadata !{i32 786688, metadata !11, metadata !"coarse_dx", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dx] [line 42]
!94 = metadata !{i32 786688, metadata !11, metadata !"coarse_dy", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dy] [line 42]
!95 = metadata !{i32 786688, metadata !11, metadata !"coarse_dz", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coarse_dz] [line 42]
!96 = metadata !{i32 786688, metadata !11, metadata !"conformal_state", metadata !5, i32 42, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conformal_state] [line 42]
!97 = metadata !{i32 786688, metadata !11, metadata !"courant_min_time", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_min_time] [line 42]
!98 = metadata !{i32 786688, metadata !11, metadata !"courant_wave_speed", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_wave_speed] [line 42]
!99 = metadata !{i32 786688, metadata !11, metadata !"emask", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [emask] [line 42]
!100 = metadata !{i32 786688, metadata !11, metadata !"gxx", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxx] [line 42]
!101 = metadata !{i32 786688, metadata !11, metadata !"gxy", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxy] [line 42]
!102 = metadata !{i32 786688, metadata !11, metadata !"gxz", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gxz] [line 42]
!103 = metadata !{i32 786688, metadata !11, metadata !"gyy", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gyy] [line 42]
!104 = metadata !{i32 786688, metadata !11, metadata !"gyz", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gyz] [line 42]
!105 = metadata !{i32 786688, metadata !11, metadata !"gzz", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gzz] [line 42]
!106 = metadata !{i32 786688, metadata !11, metadata !"kxx", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kxx] [line 42]
!107 = metadata !{i32 786688, metadata !11, metadata !"kxy", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kxy] [line 42]
!108 = metadata !{i32 786688, metadata !11, metadata !"kxz", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kxz] [line 42]
!109 = metadata !{i32 786688, metadata !11, metadata !"kyy", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kyy] [line 42]
!110 = metadata !{i32 786688, metadata !11, metadata !"kyz", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kyz] [line 42]
!111 = metadata !{i32 786688, metadata !11, metadata !"kzz", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kzz] [line 42]
!112 = metadata !{i32 786688, metadata !11, metadata !"psi", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psi] [line 42]
!113 = metadata !{i32 786688, metadata !11, metadata !"psix", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psix] [line 42]
!114 = metadata !{i32 786688, metadata !11, metadata !"psixx", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psixx] [line 42]
!115 = metadata !{i32 786688, metadata !11, metadata !"psixy", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psixy] [line 42]
!116 = metadata !{i32 786688, metadata !11, metadata !"psixz", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psixz] [line 42]
!117 = metadata !{i32 786688, metadata !11, metadata !"psiy", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiy] [line 42]
!118 = metadata !{i32 786688, metadata !11, metadata !"psiyy", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiyy] [line 42]
!119 = metadata !{i32 786688, metadata !11, metadata !"psiyz", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiyz] [line 42]
!120 = metadata !{i32 786688, metadata !11, metadata !"psiz", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiz] [line 42]
!121 = metadata !{i32 786688, metadata !11, metadata !"psizz", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psizz] [line 42]
!122 = metadata !{i32 786688, metadata !11, metadata !"r", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 42]
!123 = metadata !{i32 786688, metadata !11, metadata !"shift_state", metadata !5, i32 42, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift_state] [line 42]
!124 = metadata !{i32 786688, metadata !11, metadata !"x", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 42]
!125 = metadata !{i32 786688, metadata !11, metadata !"y", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 42]
!126 = metadata !{i32 786688, metadata !11, metadata !"z", metadata !5, i32 42, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 42]
!127 = metadata !{i32 786688, metadata !11, metadata !"one", metadata !5, i32 44, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [one] [line 44]
!128 = metadata !{i32 786688, metadata !11, metadata !"sym", metadata !5, i32 45, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 45]
!129 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !20, metadata !130, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!130 = metadata !{metadata !131}
!131 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!132 = metadata !{metadata !133}
!133 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 18, metadata !8, i32 1, i32 1, null, null}
!134 = metadata !{i32 20, i32 0, metadata !4, null}
!135 = metadata !{i32 39, i32 0, metadata !11, null}
!136 = metadata !{i32 42, i32 0, metadata !11, null}
!137 = metadata !{i32 45, i32 0, metadata !11, null}
!138 = metadata !{i32 1}
!139 = metadata !{i32 47, i32 0, metadata !11, null}
!140 = metadata !{i32 49, i32 0, metadata !11, null}
!141 = metadata !{metadata !"int", metadata !142}
!142 = metadata !{metadata !"omnipotent char", metadata !143}
!143 = metadata !{metadata !"Simple C/C++ TBAA"}
!144 = metadata !{i32 50, i32 0, metadata !11, null}
!145 = metadata !{i32 51, i32 0, metadata !11, null}
!146 = metadata !{i32 52, i32 0, metadata !11, null}
!147 = metadata !{i32 53, i32 0, metadata !11, null}
!148 = metadata !{i32 54, i32 0, metadata !11, null}
!149 = metadata !{i32 55, i32 0, metadata !11, null}
!150 = metadata !{i32 56, i32 0, metadata !11, null}
!151 = metadata !{i32 57, i32 0, metadata !11, null}
!152 = metadata !{i32 58, i32 0, metadata !11, null} ; [ DW_TAG_imported_module ]
!153 = metadata !{i32 59, i32 0, metadata !11, null}
!154 = metadata !{i32 60, i32 0, metadata !11, null}
!155 = metadata !{i32 61, i32 0, metadata !11, null}
!156 = metadata !{i32 62, i32 0, metadata !11, null}
!157 = metadata !{i32 63, i32 0, metadata !11, null}
!158 = metadata !{i32 64, i32 0, metadata !11, null}
!159 = metadata !{i32 65, i32 0, metadata !11, null}
!160 = metadata !{i32 66, i32 0, metadata !11, null}
!161 = metadata !{i32 69, i32 0, metadata !11, null}
!162 = metadata !{i32 70, i32 0, metadata !11, null}
!163 = metadata !{i32 71, i32 0, metadata !11, null}
!164 = metadata !{i32 72, i32 0, metadata !11, null}
!165 = metadata !{i32 73, i32 0, metadata !11, null}
!166 = metadata !{i32 74, i32 0, metadata !11, null}
!167 = metadata !{i32 75, i32 0, metadata !11, null}
!168 = metadata !{i32 76, i32 0, metadata !11, null}
!169 = metadata !{i32 77, i32 0, metadata !11, null}
!170 = metadata !{i32 78, i32 0, metadata !11, null}
!171 = metadata !{i32 79, i32 0, metadata !11, null}
!172 = metadata !{i32 80, i32 0, metadata !11, null}
!173 = metadata !{i32 81, i32 0, metadata !11, null}
!174 = metadata !{i32 82, i32 0, metadata !11, null}
!175 = metadata !{i32 83, i32 0, metadata !11, null}
!176 = metadata !{i32 84, i32 0, metadata !11, null}
!177 = metadata !{i32 85, i32 0, metadata !11, null}
!178 = metadata !{i32 86, i32 0, metadata !11, null}
!179 = metadata !{i32 88, i32 0, metadata !11, null}
!180 = metadata !{i32 89, i32 0, metadata !11, null}
!181 = metadata !{i32 90, i32 0, metadata !11, null}
!182 = metadata !{i32 91, i32 0, metadata !11, null}
!183 = metadata !{i32 93, i32 0, metadata !11, null}
!184 = metadata !{i32 94, i32 0, metadata !11, null}
!185 = metadata !{i32 95, i32 0, metadata !11, null}
!186 = metadata !{i32 96, i32 0, metadata !11, null}
!187 = metadata !{i32 97, i32 0, metadata !11, null}
!188 = metadata !{i32 98, i32 0, metadata !11, null}
!189 = metadata !{i32 99, i32 0, metadata !11, null}
!190 = metadata !{i32 100, i32 0, metadata !11, null}
!191 = metadata !{i32 101, i32 0, metadata !11, null}
!192 = metadata !{i32 102, i32 0, metadata !11, null}
!193 = metadata !{i32 103, i32 0, metadata !11, null}
!194 = metadata !{i32 104, i32 0, metadata !11, null}
!195 = metadata !{i32 106, i32 0, metadata !11, null}
!196 = metadata !{i32 107, i32 0, metadata !11, null}
!197 = metadata !{i32 108, i32 0, metadata !11, null}
!198 = metadata !{i32 109, i32 0, metadata !11, null}
!199 = metadata !{i8* undef}
!200 = metadata !{i32 111, i32 0, metadata !11, null}
