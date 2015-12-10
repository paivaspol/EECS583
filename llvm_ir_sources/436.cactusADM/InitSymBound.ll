; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/InitSymBound.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_InitSymBound_c() #0 {
  ret i8* getelementptr inbounds ([98 x i8]* @.str53, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Einstein_InitSymBound(%struct.cGH* %cctkGH) #1 {
  %sym = alloca [3 x i32], align 4
  %1 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #3
  %2 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #3
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #3
  %4 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #3
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #3
  %6 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #3
  %7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #3
  %8 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #3
  %9 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #3
  %10 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #3
  %11 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #3
  %12 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #3
  %13 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #3
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #3
  %15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #3
  %16 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #3
  %17 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #3
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #3
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #3
  %20 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #3
  %21 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #3
  %22 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #3
  %23 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #3
  %24 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #3
  %25 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #3
  %26 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #3
  %27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #3
  %28 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #3
  %29 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #3
  %30 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #3
  %31 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #3
  %32 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #3
  %33 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #3
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #3
  %35 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #3
  %36 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #3
  %37 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #3
  %38 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #3
  %39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #3
  %40 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #3
  %41 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #3
  %42 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #3
  %43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #3
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #3
  %45 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #3
  %46 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #3
  %47 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #3
  %48 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #3
  %49 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #3
  %50 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #3
  %51 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #3
  %52 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #3
  %53 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #3
  %54 = getelementptr inbounds [3 x i32]* %sym, i64 0, i64 0
  store i32 1, i32* %54, align 4, !tbaa !2
  %55 = getelementptr inbounds [3 x i32]* %sym, i64 0, i64 1
  store i32 1, i32* %55, align 4, !tbaa !2
  %56 = getelementptr inbounds [3 x i32]* %sym, i64 0, i64 2
  store i32 1, i32* %56, align 4, !tbaa !2
  %57 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #3
  %58 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #3
  %59 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #3
  store i32 -1, i32* %54, align 4, !tbaa !2
  store i32 -1, i32* %55, align 4, !tbaa !2
  store i32 1, i32* %56, align 4, !tbaa !2
  %60 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #3
  store i32 -1, i32* %54, align 4, !tbaa !2
  store i32 1, i32* %55, align 4, !tbaa !2
  store i32 -1, i32* %56, align 4, !tbaa !2
  %61 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #3
  store i32 1, i32* %54, align 4, !tbaa !2
  store i32 -1, i32* %55, align 4, !tbaa !2
  store i32 -1, i32* %56, align 4, !tbaa !2
  %62 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #3
  store i32 1, i32* %54, align 4, !tbaa !2
  store i32 1, i32* %55, align 4, !tbaa !2
  store i32 1, i32* %56, align 4, !tbaa !2
  %63 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #3
  %64 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #3
  %65 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #3
  store i32 -1, i32* %54, align 4, !tbaa !2
  store i32 -1, i32* %55, align 4, !tbaa !2
  store i32 1, i32* %56, align 4, !tbaa !2
  %66 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #3
  store i32 -1, i32* %54, align 4, !tbaa !2
  store i32 1, i32* %55, align 4, !tbaa !2
  store i32 -1, i32* %56, align 4, !tbaa !2
  %67 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #3
  store i32 1, i32* %54, align 4, !tbaa !2
  store i32 -1, i32* %55, align 4, !tbaa !2
  store i32 -1, i32* %56, align 4, !tbaa !2
  %68 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #3
  store i32 1, i32* %54, align 4, !tbaa !2
  store i32 1, i32* %55, align 4, !tbaa !2
  store i32 1, i32* %56, align 4, !tbaa !2
  %69 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #3
  store i32 -1, i32* %54, align 4, !tbaa !2
  store i32 1, i32* %55, align 4, !tbaa !2
  store i32 1, i32* %56, align 4, !tbaa !2
  %70 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #3
  store i32 1, i32* %54, align 4, !tbaa !2
  store i32 -1, i32* %55, align 4, !tbaa !2
  store i32 1, i32* %56, align 4, !tbaa !2
  %71 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #3
  store i32 1, i32* %54, align 4, !tbaa !2
  store i32 1, i32* %55, align 4, !tbaa !2
  store i32 -1, i32* %56, align 4, !tbaa !2
  %72 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #3
  store i32 1, i32* %54, align 4, !tbaa !2
  store i32 1, i32* %55, align 4, !tbaa !2
  store i32 1, i32* %56, align 4, !tbaa !2
  %73 = call i32 @SetCartSymVN(%struct.cGH* %cctkGH, i32* %54, i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #3
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @SetCartSymVN(%struct.cGH*, i32*, i8*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
