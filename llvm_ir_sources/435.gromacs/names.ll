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
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !132), !dbg !133
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !132), !dbg !134
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !135
  %2 = load i32* %1, align 4, !dbg !137, !tbaa !138
  %3 = add nsw i32 %2, -1, !dbg !137
  store i32 %3, i32* %1, align 4, !dbg !137, !tbaa !138
  %4 = icmp sgt i32 %2, 0, !dbg !147
  br i1 %4, label %._crit_edge, label %5, !dbg !148

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !149
  br label %10, !dbg !148

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !150
  %7 = load i32* %6, align 4, !dbg !150, !tbaa !151
  %8 = icmp sle i32 %2, %7, !dbg !152
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !153
  %or.cond = or i1 %9, %8, !dbg !154
  br i1 %or.cond, label %15, label %10, !dbg !154

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !149
  %11 = trunc i32 %_c to i8, !dbg !155
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !156
  %13 = load i8** %12, align 8, !dbg !157, !tbaa !158
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !157
  store i8* %14, i8** %12, align 8, !dbg !157, !tbaa !158
  store i8 %11, i8* %13, align 1, !dbg !159, !tbaa !160
  br label %17, !dbg !161

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #4, !dbg !162
  br label %17, !dbg !163

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !164
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !132), !dbg !165
  %1 = icmp sgt i32 %__signo, 32, !dbg !166
  br i1 %1, label %5, label %2, !dbg !167

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !168
  %4 = shl i32 1, %3, !dbg !169
  br label %5, !dbg !167

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !167
  ret i32 %6, !dbg !170
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!128, !129, !130}
!llvm.ident = !{!131}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !81, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/names.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !{!6, !75}
!6 = !DISubprogram(name: "__sputc", scope: !7, file: !7, line: 348, type: !8, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!7 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !7, line: 153, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !7, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !19, !20, !22, !23, !28, !29, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !7, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !7, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !7, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !7, line: 126, baseType: !21, size: 16, align: 16, offset: 128)
!21 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !7, line: 127, baseType: !21, size: 16, align: 16, offset: 144)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !7, line: 128, baseType: !24, size: 128, align: 64, offset: 192)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !7, line: 88, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !24, file: !7, line: 89, baseType: !16, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !24, file: !7, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !7, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !7, line: 132, baseType: !30, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !7, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!10, !30}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !7, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!10, !30, !39, !10}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !7, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !30, !44, !10}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !7, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !7, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!10, !30, !54, !10}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !7, line: 139, baseType: !24, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !7, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !7, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !7, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !7, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !7, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !7, line: 148, baseType: !24, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !7, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !7, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !6, file: !7, line: 348, type: !10)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !6, file: !7, line: 348, type: !11)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!10, !10}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !10)
!81 = !{!82, !86, !88, !89, !93, !94, !95, !99, !103, !104, !108, !109, !113, !114, !115, !116, !117, !118, !119, !120, !124, !125, !126, !127}
!82 = !DIGlobalVariable(name: "eblock_names", scope: !0, file: !1, line: 38, type: !83, isLocal: false, isDefinition: true, variable: [4 x i8*]* @eblock_names)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, align: 64, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 4)
!86 = !DIGlobalVariable(name: "epbc_names", scope: !0, file: !1, line: 43, type: !87, isLocal: false, isDefinition: true, variable: [3 x i8*]* @epbc_names)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 192, align: 64, elements: !63)
!88 = !DIGlobalVariable(name: "ens_names", scope: !0, file: !1, line: 48, type: !87, isLocal: false, isDefinition: true, variable: [3 x i8*]* @ens_names)
!89 = !DIGlobalVariable(name: "ei_names", scope: !0, file: !1, line: 53, type: !90, isLocal: false, isDefinition: true, variable: [7 x i8*]* @ei_names)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 448, align: 64, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 7)
!93 = !DIGlobalVariable(name: "bool_names", scope: !0, file: !1, line: 58, type: !87, isLocal: false, isDefinition: true, variable: [3 x i8*]* @bool_names)
!94 = !DIGlobalVariable(name: "yesno_names", scope: !0, file: !1, line: 63, type: !87, isLocal: false, isDefinition: true, variable: [3 x i8*]* @yesno_names)
!95 = !DIGlobalVariable(name: "ptype_str", scope: !0, file: !1, line: 68, type: !96, isLocal: false, isDefinition: true, variable: [6 x i8*]* @ptype_str)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 384, align: 64, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 6)
!99 = !DIGlobalVariable(name: "eel_names", scope: !0, file: !1, line: 72, type: !100, isLocal: false, isDefinition: true, variable: [11 x i8*]* @eel_names)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 704, align: 64, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 11)
!103 = !DIGlobalVariable(name: "eewg_names", scope: !0, file: !1, line: 77, type: !87, isLocal: false, isDefinition: true, variable: [3 x i8*]* @eewg_names)
!104 = !DIGlobalVariable(name: "evdw_names", scope: !0, file: !1, line: 81, type: !105, isLocal: false, isDefinition: true, variable: [5 x i8*]* @evdw_names)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 320, align: 64, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 5)
!108 = !DIGlobalVariable(name: "eshake_names", scope: !0, file: !1, line: 85, type: !87, isLocal: false, isDefinition: true, variable: [3 x i8*]* @eshake_names)
!109 = !DIGlobalVariable(name: "egrp_nm", scope: !0, file: !1, line: 89, type: !110, isLocal: false, isDefinition: true, variable: [8 x i8*]* @egrp_nm)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 512, align: 64, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 8)
!113 = !DIGlobalVariable(name: "etcoupl_names", scope: !0, file: !1, line: 93, type: !105, isLocal: false, isDefinition: true, variable: [5 x i8*]* @etcoupl_names)
!114 = !DIGlobalVariable(name: "epcoupl_names", scope: !0, file: !1, line: 97, type: !105, isLocal: false, isDefinition: true, variable: [5 x i8*]* @epcoupl_names)
!115 = !DIGlobalVariable(name: "epcoupltype_names", scope: !0, file: !1, line: 101, type: !105, isLocal: false, isDefinition: true, variable: [5 x i8*]* @epcoupltype_names)
!116 = !DIGlobalVariable(name: "edisre_names", scope: !0, file: !1, line: 105, type: !83, isLocal: false, isDefinition: true, variable: [4 x i8*]* @edisre_names)
!117 = !DIGlobalVariable(name: "edisreweighting_names", scope: !0, file: !1, line: 109, type: !87, isLocal: false, isDefinition: true, variable: [3 x i8*]* @edisreweighting_names)
!118 = !DIGlobalVariable(name: "enbf_names", scope: !0, file: !1, line: 113, type: !83, isLocal: false, isDefinition: true, variable: [4 x i8*]* @enbf_names)
!119 = !DIGlobalVariable(name: "ecomb_names", scope: !0, file: !1, line: 117, type: !105, isLocal: false, isDefinition: true, variable: [5 x i8*]* @ecomb_names)
!120 = !DIGlobalVariable(name: "gtypes", scope: !0, file: !1, line: 121, type: !121, isLocal: false, isDefinition: true, variable: [10 x i8*]* @gtypes)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 640, align: 64, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 10)
!124 = !DIGlobalVariable(name: "efep_names", scope: !0, file: !1, line: 126, type: !87, isLocal: false, isDefinition: true, variable: [3 x i8*]* @efep_names)
!125 = !DIGlobalVariable(name: "esolv_names", scope: !0, file: !1, line: 130, type: !105, isLocal: false, isDefinition: true, variable: [5 x i8*]* @esolv_names)
!126 = !DIGlobalVariable(name: "edispc_names", scope: !0, file: !1, line: 134, type: !83, isLocal: false, isDefinition: true, variable: [4 x i8*]* @edispc_names)
!127 = !DIGlobalVariable(name: "ecm_names", scope: !0, file: !1, line: 138, type: !83, isLocal: false, isDefinition: true, variable: [4 x i8*]* @ecm_names)
!128 = !{i32 2, !"Dwarf Version", i32 2}
!129 = !{i32 2, !"Debug Info Version", i32 700000003}
!130 = !{i32 1, !"PIC Level", i32 2}
!131 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!132 = !DIExpression()
!133 = !DILocation(line: 348, column: 40, scope: !6)
!134 = !DILocation(line: 348, column: 50, scope: !6)
!135 = !DILocation(line: 349, column: 12, scope: !136)
!136 = distinct !DILexicalBlock(scope: !6, file: !7, line: 349, column: 6)
!137 = !DILocation(line: 349, column: 6, scope: !136)
!138 = !{!139, !143, i64 12}
!139 = !{!"__sFILE", !140, i64 0, !143, i64 8, !143, i64 12, !144, i64 16, !144, i64 18, !145, i64 24, !143, i64 40, !140, i64 48, !140, i64 56, !140, i64 64, !140, i64 72, !140, i64 80, !145, i64 88, !140, i64 104, !143, i64 112, !141, i64 116, !141, i64 119, !145, i64 120, !143, i64 136, !146, i64 144}
!140 = !{!"any pointer", !141, i64 0}
!141 = !{!"omnipotent char", !142, i64 0}
!142 = !{!"Simple C/C++ TBAA"}
!143 = !{!"int", !141, i64 0}
!144 = !{!"short", !141, i64 0}
!145 = !{!"__sbuf", !140, i64 0, !143, i64 8}
!146 = !{!"long long", !141, i64 0}
!147 = !DILocation(line: 349, column: 15, scope: !136)
!148 = !DILocation(line: 349, column: 20, scope: !136)
!149 = !DILocation(line: 350, column: 10, scope: !136)
!150 = !DILocation(line: 349, column: 38, scope: !136)
!151 = !{!139, !143, i64 40}
!152 = !DILocation(line: 349, column: 31, scope: !136)
!153 = !DILocation(line: 349, column: 59, scope: !136)
!154 = !DILocation(line: 349, column: 47, scope: !136)
!155 = !DILocation(line: 350, column: 23, scope: !136)
!156 = !DILocation(line: 350, column: 16, scope: !136)
!157 = !DILocation(line: 350, column: 18, scope: !136)
!158 = !{!139, !140, i64 0}
!159 = !DILocation(line: 350, column: 21, scope: !136)
!160 = !{!141, !141, i64 0}
!161 = !DILocation(line: 350, column: 3, scope: !136)
!162 = !DILocation(line: 352, column: 11, scope: !136)
!163 = !DILocation(line: 352, column: 3, scope: !136)
!164 = !DILocation(line: 353, column: 1, scope: !6)
!165 = !DILocation(line: 114, column: 15, scope: !75)
!166 = !DILocation(line: 116, column: 20, scope: !75)
!167 = !DILocation(line: 116, column: 12, scope: !75)
!168 = !DILocation(line: 116, column: 57, scope: !75)
!169 = !DILocation(line: 116, column: 45, scope: !75)
!170 = !DILocation(line: 116, column: 5, scope: !75)
