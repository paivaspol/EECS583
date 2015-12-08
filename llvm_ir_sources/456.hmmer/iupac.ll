; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/iupac.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iupactype = type { i8, i8, i8, i8 }

@dnafq = global [4 x float] [float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01], align 16
@aafq = global [20 x float] [float 0x3FB3554760000000, float 0x3F91615EC0000000, float 0x3FAB269E00000000, float 0x3FB02E2320000000, float 0x3FA4DEC1C0000000, float 0x3FB185CEE0000000, float 0x3F96F19940000000, float 0x3FAD545420000000, float 0x3FAE696A20000000, float 0x3FB7E8FF40000000, float 0x3F982278E0000000, float 0x3FA730A4E0000000, float 0x3FA938DE60000000, float 0x3FA4992860000000, float 0x3FAA67C6C0000000, float 0x3FB27C9DE0000000, float 0x3FAD6A9C60000000, float 0x3FB0B45AE0000000, float 0x3F89A06A60000000, float 0x3FA0605680000000], align 16
@aa_alphabet = global [21 x i8] c"ACDEFGHIKLMNPQRSTVWY\00", align 16
@aa_index = global [20 x i32] [i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 10, i32 11, i32 12, i32 13, i32 15, i32 16, i32 17, i32 18, i32 19, i32 21, i32 22, i32 24], align 16
@iupac = global [17 x %struct.iupactype] [%struct.iupactype { i8 65, i8 84, i8 8, i8 1 }, %struct.iupactype { i8 67, i8 71, i8 4, i8 2 }, %struct.iupactype { i8 71, i8 67, i8 2, i8 4 }, %struct.iupactype { i8 84, i8 65, i8 1, i8 8 }, %struct.iupactype { i8 85, i8 65, i8 1, i8 8 }, %struct.iupactype { i8 78, i8 78, i8 15, i8 15 }, %struct.iupactype { i8 32, i8 32, i8 16, i8 16 }, %struct.iupactype { i8 82, i8 89, i8 10, i8 5 }, %struct.iupactype { i8 89, i8 82, i8 5, i8 10 }, %struct.iupactype { i8 77, i8 75, i8 12, i8 3 }, %struct.iupactype { i8 75, i8 77, i8 3, i8 12 }, %struct.iupactype { i8 83, i8 83, i8 6, i8 6 }, %struct.iupactype { i8 87, i8 87, i8 9, i8 9 }, %struct.iupactype { i8 72, i8 68, i8 13, i8 11 }, %struct.iupactype { i8 66, i8 86, i8 7, i8 14 }, %struct.iupactype { i8 86, i8 66, i8 14, i8 7 }, %struct.iupactype { i8 68, i8 72, i8 11, i8 13 }], align 16
@.str = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str17 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str20 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str21 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@stdcode1 = global [65 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0)], align 16
@.str22 = private unnamed_addr constant [4 x i8] c"Lys\00", align 1
@.str23 = private unnamed_addr constant [4 x i8] c"Asn\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"Thr\00", align 1
@.str25 = private unnamed_addr constant [4 x i8] c"Arg\00", align 1
@.str26 = private unnamed_addr constant [4 x i8] c"Ser\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"Ile\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"Met\00", align 1
@.str29 = private unnamed_addr constant [4 x i8] c"Gln\00", align 1
@.str30 = private unnamed_addr constant [4 x i8] c"His\00", align 1
@.str31 = private unnamed_addr constant [4 x i8] c"Pro\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c"Leu\00", align 1
@.str33 = private unnamed_addr constant [4 x i8] c"Glu\00", align 1
@.str34 = private unnamed_addr constant [4 x i8] c"Asp\00", align 1
@.str35 = private unnamed_addr constant [4 x i8] c"Ala\00", align 1
@.str36 = private unnamed_addr constant [4 x i8] c"Gly\00", align 1
@.str37 = private unnamed_addr constant [4 x i8] c"Val\00", align 1
@.str38 = private unnamed_addr constant [4 x i8] c"***\00", align 1
@.str39 = private unnamed_addr constant [4 x i8] c"Tyr\00", align 1
@.str40 = private unnamed_addr constant [4 x i8] c"Cys\00", align 1
@.str41 = private unnamed_addr constant [4 x i8] c"Trp\00", align 1
@.str42 = private unnamed_addr constant [4 x i8] c"Phe\00", align 1
@.str43 = private unnamed_addr constant [4 x i8] c"XXX\00", align 1
@stdcode3 = global [65 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str43, i32 0, i32 0)], align 16