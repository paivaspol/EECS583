; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/names.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"CGS\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"MOLS\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"SBLOCKS\00", align 1
@eblock_names = global [4 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i8* null], align 16
@.str3 = private unnamed_addr constant [4 x i8] c"xyz\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@epbc_names = global [3 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i8* null], align 16
@.str5 = private unnamed_addr constant [5 x i8] c"Grid\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"Simple\00", align 1
@ens_names = global [3 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* null], align 16
@.str7 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"steep\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"cg\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"bd\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"nm\00", align 1
@ei_names = global [7 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str12, i32 0, i32 0), i8* null], align 16
@.str13 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@bool_names = global [3 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str14, i32 0, i32 0), i8* null], align 16
@.str15 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@yesno_names = global [3 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i8* null], align 16
@.str16 = private unnamed_addr constant [5 x i8] c"Atom\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c"Nucleus\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"Shell\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"Bond\00", align 1
@.str20 = private unnamed_addr constant [6 x i8] c"Dummy\00", align 1
@ptype_str = global [6 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), i8* null], align 16
@.str21 = private unnamed_addr constant [8 x i8] c"Cut-off\00", align 1
@.str22 = private unnamed_addr constant [15 x i8] c"Reaction-Field\00", align 1
@.str23 = private unnamed_addr constant [27 x i8] c"Generalized-Reaction-Field\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"PME\00", align 1
@.str25 = private unnamed_addr constant [6 x i8] c"Ewald\00", align 1
@.str26 = private unnamed_addr constant [5 x i8] c"PPPM\00", align 1
@.str27 = private unnamed_addr constant [8 x i8] c"Poisson\00", align 1
@.str28 = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@.str29 = private unnamed_addr constant [6 x i8] c"Shift\00", align 1
@.str30 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@eel_names = global [11 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i32 0, i32 0), i8* null], align 16
@.str31 = private unnamed_addr constant [3 x i8] c"3d\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c"3dc\00", align 1
@eewg_names = global [3 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0), i8* null], align 16
@evdw_names = global [5 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i32 0, i32 0), i8* null], align 16
@.str33 = private unnamed_addr constant [6 x i8] c"Lincs\00", align 1
@.str34 = private unnamed_addr constant [6 x i8] c"Shake\00", align 1
@eshake_names = global [3 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str34, i32 0, i32 0), i8* null], align 16
@.str35 = private unnamed_addr constant [8 x i8] c"Coul-SR\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"LJ\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"Buck\00", align 1
@.str38 = private unnamed_addr constant [8 x i8] c"Coul-LR\00", align 1
@.str39 = private unnamed_addr constant [6 x i8] c"LJ-LR\00", align 1
@.str40 = private unnamed_addr constant [8 x i8] c"Coul-14\00", align 1
@.str41 = private unnamed_addr constant [6 x i8] c"LJ-14\00", align 1
@egrp_nm = global [8 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str41, i32 0, i32 0), i8* null], align 16
@.str42 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str43 = private unnamed_addr constant [10 x i8] c"Berendsen\00", align 1
@.str44 = private unnamed_addr constant [12 x i8] c"Nose-Hoover\00", align 1
@etcoupl_names = global [5 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i8* null], align 16
@.str45 = private unnamed_addr constant [18 x i8] c"Parrinello-Rahman\00", align 1
@.str46 = private unnamed_addr constant [10 x i8] c"Isotropic\00", align 1
@epcoupl_names = global [5 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str46, i32 0, i32 0), i8* null], align 16
@.str47 = private unnamed_addr constant [14 x i8] c"Semiisotropic\00", align 1
@.str48 = private unnamed_addr constant [12 x i8] c"Anisotropic\00", align 1
@.str49 = private unnamed_addr constant [16 x i8] c"Surface-Tension\00", align 1
@epcoupltype_names = global [5 x i8*] [i8* getelementptr inbounds ([10 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str49, i32 0, i32 0), i8* null], align 16
@.str50 = private unnamed_addr constant [9 x i8] c"Ensemble\00", align 1
@edisre_names = global [4 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str50, i32 0, i32 0), i8* null], align 16
@.str51 = private unnamed_addr constant [13 x i8] c"Conservative\00", align 1
@.str52 = private unnamed_addr constant [6 x i8] c"Equal\00", align 1
@edisreweighting_names = global [3 x i8*] [i8* getelementptr inbounds ([13 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str52, i32 0, i32 0), i8* null], align 16
@.str53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str54 = private unnamed_addr constant [11 x i8] c"Buckingham\00", align 1
@enbf_names = global [4 x i8*] [i8* getelementptr inbounds ([1 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str54, i32 0, i32 0), i8* null], align 16
@.str55 = private unnamed_addr constant [11 x i8] c"Arithmetic\00", align 1
@.str56 = private unnamed_addr constant [10 x i8] c"Geometric\00", align 1
@.str57 = private unnamed_addr constant [12 x i8] c"ArithSigEps\00", align 1
@ecomb_names = global [5 x i8*] [i8* getelementptr inbounds ([1 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str57, i32 0, i32 0), i8* null], align 16
@.str58 = private unnamed_addr constant [11 x i8] c"T-Coupling\00", align 1
@.str59 = private unnamed_addr constant [12 x i8] c"Energy Mon.\00", align 1
@.str60 = private unnamed_addr constant [13 x i8] c"Acceleration\00", align 1
@.str61 = private unnamed_addr constant [7 x i8] c"Freeze\00", align 1
@.str62 = private unnamed_addr constant [6 x i8] c"User1\00", align 1
@.str63 = private unnamed_addr constant [6 x i8] c"User2\00", align 1
@.str64 = private unnamed_addr constant [4 x i8] c"VCM\00", align 1
@.str65 = private unnamed_addr constant [4 x i8] c"XTC\00", align 1
@.str66 = private unnamed_addr constant [13 x i8] c"Or. Res. Fit\00", align 1
@gtypes = global [10 x i8*] [i8* getelementptr inbounds ([11 x i8]* @.str58, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str64, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str66, i32 0, i32 0), i8* null], align 16
@efep_names = global [3 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i8* null], align 16
@.str67 = private unnamed_addr constant [8 x i8] c"General\00", align 1
@.str68 = private unnamed_addr constant [12 x i8] c"MNO Solvent\00", align 1
@.str69 = private unnamed_addr constant [6 x i8] c"Water\00", align 1
@.str70 = private unnamed_addr constant [12 x i8] c"Water-Water\00", align 1
@esolv_names = global [5 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str67, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str69, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str70, i32 0, i32 0), i8* null], align 16
@.str71 = private unnamed_addr constant [9 x i8] c"EnerPres\00", align 1
@.str72 = private unnamed_addr constant [5 x i8] c"Ener\00", align 1
@edispc_names = global [4 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str72, i32 0, i32 0), i8* null], align 16
@.str73 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str74 = private unnamed_addr constant [8 x i8] c"Angular\00", align 1
@.str75 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@ecm_names = global [4 x i8*] [i8* getelementptr inbounds ([7 x i8]* @.str73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str74, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str75, i32 0, i32 0), i8* null], align 16

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #3
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
