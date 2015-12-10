; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ionize.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_recoil = type { float, float, float, float }
%struct.t_element = type { i8*, i32, %struct.t_cross* }
%struct.t_cross = type { float, float, float, float }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_cross_atom = type { i32, i32, i32, float, float, float, float }
%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@recoil = global [27 x %struct.t_recoil] [%struct.t_recoil zeroinitializer, %struct.t_recoil { float 0x3F8BDA5120000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %struct.t_recoil { float 0x3F9930BE00000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %struct.t_recoil { float 0x3FAC28F5C0000000, float 0x3F747AE140000000, float 0x3FEEB851E0000000, float 0x3F889374C0000000 }, %struct.t_recoil { float 0x3FBDF3B640000000, float 0x3F826E9780000000, float 0x3FEE978D40000000, float 0x3F889374C0000000 }, %struct.t_recoil { float 0x3FC89374C0000000, float 0x3F80624DE0000000, float 0x3FEE76C8C0000000, float 0x3F889374C0000000 }, %struct.t_recoil { float 0x3FD22D0E60000000, float 0x3F86872B00000000, float 0x3FEE666660000000, float 0x3F87247460000000 }, %struct.t_recoil { float 0x3FD9BA5E40000000, float 0x3F8EB851E0000000, float 0x3FEE666660000000, float 0x3F80FF9720000000 }, %struct.t_recoil { float 0x3FE10624E0000000, float 0x3F8CAC0840000000, float 0x3FEDF3B640000000, float 0x3F7B089A00000000 }, %struct.t_recoil { float 0x3FE5FBE760000000, float 0x3F916872C0000000, float 0x3FEDB22D00000000, float 0x3F726E9780000000 }, %struct.t_recoil { float 0x3FEBF7CEE0000000, float 0x3F9FBE76C0000000, float 0x3FED810620000000, float 0x3F6B089A00000000 }, %struct.t_recoil { float 0x3FF126E980000000, float 0x3FA4FDF3C0000000, float 0x3FEDDB22E0000000, float 0x3F66F00680000000 }, %struct.t_recoil { float 0x3FF4E147A0000000, float 0x3FABA5E360000000, float 0x3FEDA9FBE0000000, float 0x3F6205BC00000000 }, %struct.t_recoil { float 0x3FF8F5C280000000, float 0x3FB3B645A0000000, float 0x3FED810620000000, float 0x3F5F212D80000000 }, %struct.t_recoil { float 0x3FFD6C8B40000000, float 0x3FBAE147A0000000, float 0x3FED604180000000, float 0x3F5B089A00000000 }, %struct.t_recoil { float 0x40012B0200000000, float 0x3FC10624E0000000, float 0x3FED78D500000000, float 0x3F57C1BDA0000000 }, %struct.t_recoil { float 0x4003C6A7E0000000, float 0x3FC53F7CE0000000, float 0x3FED0E5600000000, float 0x3F554C9860000000 }, %struct.t_recoil { float 0x40069374C0000000, float 0x3FCB22D0E0000000, float 0x3FECDD2F20000000, float 0x3F53A92A40000000 }, %struct.t_recoil { float 0x40099FBE80000000, float 0x3FCF9DB220000000, float 0x3FECDD2F20000000, float 0x3F50624DE0000000 }, %struct.t_recoil { float 0x400CDB22E0000000, float 0x3FD3126EA0000000, float 0x3FEC9BA5E0000000, float 0x3F4F212D80000000 }, %struct.t_recoil { float 0x401026E980000000, float 0x3FD645A1C0000000, float 0x3FEC7AE140000000, float 0x3F4BDA5120000000 }, %struct.t_recoil { float 0x4011F5C280000000, float 0x3FD9DB22E0000000, float 0x3FEC5A1CA0000000, float 0x3F498F1D40000000 }, %struct.t_recoil { float 0x4013DD2F20000000, float 0x3FDD4FDF40000000, float 0x3FEC395820000000, float 0x3F47EBAF20000000 }, %struct.t_recoil { float 0x4015DC2900000000, float 0x3FE0831260000000, float 0x3FEC51EB80000000, float 0x3F4450EFE0000000 }, %struct.t_recoil { float 0x4017F4BC60000000, float 0x3FE27EF9E0000000, float 0x3FEC418940000000, float 0x3F4205BC00000000 }, %struct.t_recoil { float 0x401A27EFA0000000, float 0x3FE4A3D700000000, float 0x3FEC28F5C0000000, float 0x3F400E6B00000000 }, %struct.t_recoil { float 0x401C72B020000000, float 0x3FE6D0E560000000, float 0x3FEC106240000000, float 0x3F3CD5F9A0000000 }], align 16
@.str = private unnamed_addr constant [51 x i8] c"IONIZE: (line %d) atom %d, z = %d, n = %d, k = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [47 x i8] c"IONIZE: Filling data structure for ionization\0A\00", align 1
@.str2 = private unnamed_addr constant [52 x i8] c"IONIZE: Warning: all fj values set to 0.95 for now\0A\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@.str4 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ionize.c\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"elemcnt\00", align 1
@element = internal unnamed_addr constant [7 x %struct.t_element] [%struct.t_element { i8* getelementptr inbounds ([2 x i8]* @.str57, i32 0, i32 0), i32 1, %struct.t_cross* getelementptr inbounds ([6 x %struct.t_cross]* @cross_sec_h, i32 0, i32 0) }, %struct.t_element { i8* getelementptr inbounds ([2 x i8]* @.str58, i32 0, i32 0), i32 6, %struct.t_cross* getelementptr inbounds ([6 x %struct.t_cross]* @cross_sec_c, i32 0, i32 0) }, %struct.t_element { i8* getelementptr inbounds ([2 x i8]* @.str59, i32 0, i32 0), i32 7, %struct.t_cross* getelementptr inbounds ([6 x %struct.t_cross]* @cross_sec_n, i32 0, i32 0) }, %struct.t_element { i8* getelementptr inbounds ([2 x i8]* @.str60, i32 0, i32 0), i32 8, %struct.t_cross* getelementptr inbounds ([6 x %struct.t_cross]* @cross_sec_o, i32 0, i32 0) }, %struct.t_element { i8* getelementptr inbounds ([2 x i8]* @.str61, i32 0, i32 0), i32 16, %struct.t_cross* getelementptr inbounds ([6 x %struct.t_cross]* @cross_sec_s, i32 0, i32 0) }, %struct.t_element { i8* getelementptr inbounds ([3 x i8]* @.str62, i32 0, i32 0), i32 20, %struct.t_cross* getelementptr inbounds ([6 x %struct.t_cross]* @cross_sec_s, i32 0, i32 0) }, %struct.t_element { i8* getelementptr inbounds ([3 x i8]* @.str63, i32 0, i32 0), i32 1, %struct.t_cross* getelementptr inbounds ([6 x %struct.t_cross]* @cross_sec_h, i32 0, i32 0) }], align 16
@.str6 = private unnamed_addr constant [46 x i8] c"IONIZE: Don't know number of electrons for %s\00", align 1
@.str7 = private unnamed_addr constant [76 x i8] c"IONIZE: You have the following elements in your system (%d atoms):\0AIONIZE: \00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"  %s: %d\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c" atoms\0A\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"No such collision type %d\0A\00", align 1
@ptheta_incoh.ppp = internal unnamed_addr constant [6 x [8 x double]] [[8 x double] [double -2.951690e-03, double 1.048470e+01, double 3.410990e-02, double 4.319630e+01, double -1.640540e-02, double 3.024520e+01, double 7.103110e+01, double 2.502820e+00], [8 x double] [double -3.708520e-03, double 9.020370e+00, double 1.005590e-01, double 4.299620e+01, double -5.378910e-02, double 3.550770e+01, double 7.143050e+01, double 1.055150e+00], [8 x double] [double -4.270390e-03, double 7.868310e+00, double 1.180420e-01, double 4.598460e+01, double -6.345050e-02, double 3.861340e+01, double 7.038570e+01, double 2.400820e-01], [8 x double] [double -4.514000e-03, double 7.072800e+00, double 1.346400e-01, double 4.821300e+01, double -7.230000e-02, double 4.106000e+01, double 6.938000e+01, double -2.000000e-02], [8 x double] [double -4.887960e-03, double 5.879880e+00, double 1.595740e-01, double 5.155560e+01, double -8.557670e-02, double 4.473070e+01, double 6.902510e+01, double -4.146040e-01], [8 x double] [double -5.046040e-03, double 4.562990e+00, double 2.010640e-01, double 5.485990e+01, double -1.071530e-01, double 4.870160e+01, double 6.882120e+01, double -4.876990e-01]], align 16
@rand_theta_incoh.bFirst = internal unnamed_addr global i1 false
@rand_theta_incoh.intp = internal unnamed_addr global float** null, align 8
@rand_theta_incoh.i = internal unnamed_addr global i32 0, align 4
@rand_theta_incoh.j = internal unnamed_addr global i32 0, align 4
@rand_theta_incoh.cur = internal unnamed_addr global i32 1, align 4
@.str11 = private unnamed_addr constant [5 x i8] c"intp\00", align 1
@.str12 = private unnamed_addr constant [8 x i8] c"intp[i]\00", align 1
@debug = external global %struct.__sFILE*
@.str13 = private unnamed_addr constant [55 x i8] c"Integrated probability functions for theta incoherent\0A\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"%10f\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"  %10f\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str17 = private unnamed_addr constant [32 x i8] c"DECAY: Going to decay a k hole\0A\00", align 1
@.str18 = private unnamed_addr constant [48 x i8] c"DECAY: factor=%10g, dv = (%8.3f, %8.3f, %8.3f)\0A\00", align 1
@ionize.xvg = internal unnamed_addr global %struct.__sFILE* null, align 8
@ionize.ion = internal unnamed_addr global %struct.__sFILE* null, align 8
@ionize.leg = internal global [5 x i8*] [i8* getelementptr inbounds ([12 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str23, i32 0, i32 0)], align 16
@.str19 = private unnamed_addr constant [12 x i8] c"Probability\00", align 1
@.str20 = private unnamed_addr constant [19 x i8] c"Primary Ionization\00", align 1
@.str21 = private unnamed_addr constant [17 x i8] c"Integral over PI\00", align 1
@.str22 = private unnamed_addr constant [12 x i8] c"KHole-Decay\00", align 1
@.str23 = private unnamed_addr constant [17 x i8] c"Integral over KD\00", align 1
@ionize.bFirst = internal unnamed_addr global i1 false
@ionize.t0 = internal unnamed_addr global float 0.000000e+00, align 4
@ionize.imax = internal unnamed_addr global float 0.000000e+00, align 4
@ionize.width = internal unnamed_addr global float 0.000000e+00, align 4
@ionize.rho = internal unnamed_addr global float 0.000000e+00, align 4
@ionize.nphot = internal unnamed_addr global float 0.000000e+00, align 4
@ionize.interval = internal unnamed_addr global float 0.000000e+00, align 4
@ionize.dq_tot = internal unnamed_addr global i32 0, align 4
@ionize.nkd_tot = internal unnamed_addr global i32 0, align 4
@ionize.ephot = internal unnamed_addr global i32 0, align 4
@ionize.mode = internal unnamed_addr global i32 0, align 4
@ionize.ca = internal unnamed_addr global %struct.t_cross_atom* null, align 8
@ionize.Eindex = internal unnamed_addr global i32 -1, align 4
@ionize_seed = internal global i32 1993, align 4
@.str24 = private unnamed_addr constant [100 x i8] c"Your parameters for ionization are not set properly\0Awidth (userreal3) = %f,  nphot (userreal2) = %f\00", align 1
@.str25 = private unnamed_addr constant [58 x i8] c"Ionization mode (userint3) should be in the range 0 .. %d\00", align 1
@.str26 = private unnamed_addr constant [52 x i8] c"IONIZE: Modifying seed on parallel processor to %d\0A\00", align 1
@Energies = internal unnamed_addr constant [6 x i32] [i32 6, i32 8, i32 10, i32 12, i32 15, i32 20], align 16
@.str27 = private unnamed_addr constant [45 x i8] c"IONIZE: Energy level of %d keV not supported\00", align 1
@.str28 = private unnamed_addr constant [11 x i8] c"ionize.xvg\00", align 1
@.str29 = private unnamed_addr constant [18 x i8] c"Ionization Events\00", align 1
@.str30 = private unnamed_addr constant [10 x i8] c"Time (ps)\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str32 = private unnamed_addr constant [11 x i8] c"ionize.log\00", align 1
@.str33 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str34 = private unnamed_addr constant [43 x i8] c"IONIZE: Parameters for ionization events:\0A\00", align 1
@.str35 = private unnamed_addr constant [102 x i8] c"IONIZE: Imax = %g, t0 = %g, width = %g, seed = %d\0AIONIZE: # Photons = %g, rho = %g, ephot = %d (keV)\0A\00", align 1
@.str36 = private unnamed_addr constant [99 x i8] c"IONIZE: Electron_mass: %10.3e(keV) Atomic_mass: %10.3e(keV)\0AIONIZE: Speed_of_light: %10.3e(nm/ps)\0A\00", align 1
@.str37 = private unnamed_addr constant [39 x i8] c"IONIZE: Interval between shots: %g ps\0A\00", align 1
@.str38 = private unnamed_addr constant [21 x i8] c"IONIZE: Eindex = %d\0A\00", align 1
@.str39 = private unnamed_addr constant [45 x i8] c"IONIZE: Doing ionizations for atoms %d - %d\0A\00", align 1
@.str40 = private unnamed_addr constant [8 x i8] c"nionize\00", align 1
@.str41 = private unnamed_addr constant [7 x i8] c"nkhole\00", align 1
@.str42 = private unnamed_addr constant [7 x i8] c"ndecay\00", align 1
@.str43 = private unnamed_addr constant [27 x i8] c"IONIZE: Ptot = %g, t = %g\0A\00", align 1
@.str44 = private unnamed_addr constant [41 x i8] c"Unknown ionization mode %d (%s, line %d)\00", align 1
@.str45 = private unnamed_addr constant [48 x i8] c"i = %d, nK = %d, nL = %d, bL = %s, bKHole = %s\0A\00", align 1
@bool_names = external global [3 x i8*]
@.str47 = private unnamed_addr constant [4 x i8] c"ELL\00", align 1
@.str48 = private unnamed_addr constant [34 x i8] c"IONIZE: Ebind: %g, Eelectron: %g\0A\00", align 1
@.str49 = private unnamed_addr constant [6 x i8] c"INELL\00", align 1
@.str51 = private unnamed_addr constant [65 x i8] c"Random-dv[%3d] = %10.3e,%10.3e,%10.3e, ephot = %d, Elost=%10.3e\0A\00", align 1
@.str52 = private unnamed_addr constant [7 x i8] c"%12.8f\00", align 1
@.str53 = private unnamed_addr constant [7 x i8] c"  I:%d\00", align 1
@.str54 = private unnamed_addr constant [7 x i8] c"  K:%d\00", align 1
@.str55 = private unnamed_addr constant [7 x i8] c"  D:%d\00", align 1
@.str56 = private unnamed_addr constant [35 x i8] c"%10.5f  %10.3e  %6d  %6d  %6d  %6d\00", align 1
@.str57 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@cross_sec_h = internal global [6 x %struct.t_cross] [%struct.t_cross { float 0x3F9AEE6320000000, float 0x3FB9DB22E0000000, float 0x3FE1916880000000, float 0x3F7D29DC80000000 }, %struct.t_cross { float 0x3F840CC780000000, float 0x3FAFA43FE0000000, float 0x3FE2A7EFA0000000, float 0x3F83A92A40000000 }, %struct.t_cross { float 0x3F72A30560000000, float 0x3FA54C9860000000, float 0x3FE32B0200000000, float 0x3F885F0700000000 }, %struct.t_cross { float 0x3F58E757A0000000, float 0x3F9C91D140000000, float 0x3FE374BC60000000, float 0x3F8CE07600000000 }, %struct.t_cross { float 0x3F52599EE0000000, float 0x3F941205C0000000, float 0x3FE37CEDA0000000, float 0x3F91B71760000000 }, %struct.t_cross { float 0x3F3B435260000000, float 0x3F87247460000000, float 0x3FE36C8B40000000, float 0x3F96D5CFA0000000 }], align 16
@.str58 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@cross_sec_c = internal global [6 x %struct.t_cross] [%struct.t_cross { float 1.990000e+02, float 0x4017851EC0000000, float 0x400251EB80000000, float 0x3F9F559B40000000 }, %struct.t_cross { float 0x4054066660000000, float 0x4010E147A0000000, float 0x40047AE140000000, float 0x3FA66CF420000000 }, %struct.t_cross { float 0x40439999A0000000, float 0x400A147AE0000000, float 0x4005EB8520000000, float 0x3FAD495180000000 }, %struct.t_cross { float 0x4035E66660000000, float 0x4004666660000000, float 0x40070A3D80000000, float 0x3FB2196520000000 }, %struct.t_cross { float 0x4025333340000000, float 0x3FFF851EC0000000, float 0x400851EB80000000, float 0x3FB76C8B40000000 }, %struct.t_cross { float 0x40109999A0000000, float 0x3FF4CCCCC0000000, float 0x40099999A0000000, float 0x3FBFBE76C0000000 }], align 16
@.str59 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@cross_sec_n = internal global [6 x %struct.t_cross] [%struct.t_cross { float 3.910000e+02, float 0x4021FAE140000000, float 0x4003EB8520000000, float 0x3FA18FC500000000 }, %struct.t_cross { float 1.590000e+02, float 0x401928F5C0000000, float 0x4006E147A0000000, float 0x3FA9A6B500000000 }, %struct.t_cross { float 0x4053B33340000000, float 0x40130A3D80000000, float 0x4008CCCCC0000000, float 0x3FB0D1B720000000 }, %struct.t_cross { float 0x40461999A0000000, float 0x400D47AE20000000, float 0x400A3D70A0000000, float 0x3FB4D013A0000000 }, %struct.t_cross { float 0x40359999A0000000, float 0x40068F5C20000000, float 0x400BAE1480000000, float 0x3FBAE147A0000000 }, %struct.t_cross { float 0x40210A3D80000000, float 0x3FFE147AE0000000, float 0x400D333340000000, float 0x3FC24DD300000000 }], align 16
@.str60 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@cross_sec_o = internal global [6 x %struct.t_cross] [%struct.t_cross { float 6.900000e+02, float 0x402A9999A0000000, float 0x400547AE20000000, float 0x3FA3333340000000 }, %struct.t_cross { float 2.840000e+02, float 0x40226B8520000000, float 0x40091EB860000000, float 0x3FACC63F20000000 }, %struct.t_cross { float 1.420000e+02, float 0x401B666660000000, float 0x400B851EC0000000, float 0x3FB3055320000000 }, %struct.t_cross { float 0x4054066660000000, float 0x4014B851E0000000, float 0x400D47AE20000000, float 0x3FB78D4FE0000000 }, %struct.t_cross { float 3.950000e+01, float 0x400FC28F60000000, float 0x400EF5C280000000, float 0x3FBE353F80000000 }, %struct.t_cross { float 0x402F666660000000, float 0x40051EB860000000, float 0x4010666660000000, float 0x3FC49BA5E0000000 }], align 16
@.str61 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@cross_sec_s = internal global [6 x %struct.t_cross] [%struct.t_cross { float 1.100000e+04, float 0x404BB33340000000, float 0x400FD70A40000000, float 0x3FABC01A40000000 }, %struct.t_cross { float 4.910000e+03, float 0x4045733340000000, float 0x4012D70A40000000, float 0x3FB573EAC0000000 }, %struct.t_cross { float 2.580000e+03, float 0x4040CCCCC0000000, float 0x401547AE20000000, float 0x3FBDB22D00000000 }, %struct.t_cross { float 1.520000e+03, float 0x403A666660000000, float 0x40173D70A0000000, float 0x3FC2F1AA00000000 }, %struct.t_cross { float 7.820000e+02, float 0x4033B33340000000, float 0x401970A3E0000000, float 0x3FC99999A0000000 }, %struct.t_cross { float 3.290000e+02, float 0x4029CCCCC0000000, float 0x401BC28F60000000, float 0x3FD1EB8520000000 }], align 16
@.str62 = private unnamed_addr constant [3 x i8] c"AR\00", align 1
@.str63 = private unnamed_addr constant [3 x i8] c"EL\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !87, metadata !677), !dbg !678
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !88, metadata !677), !dbg !679
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !680
  %2 = load i32* %1, align 4, !dbg !682, !tbaa !683
  %3 = add nsw i32 %2, -1, !dbg !682
  store i32 %3, i32* %1, align 4, !dbg !682, !tbaa !683
  %4 = icmp sgt i32 %2, 0, !dbg !692
  br i1 %4, label %._crit_edge, label %5, !dbg !693

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !694
  br label %10, !dbg !693

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !695
  %7 = load i32* %6, align 4, !dbg !695, !tbaa !696
  %8 = icmp sle i32 %2, %7, !dbg !697
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !698
  %or.cond = or i1 %9, %8, !dbg !699
  br i1 %or.cond, label %15, label %10, !dbg !699

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !694
  %11 = trunc i32 %_c to i8, !dbg !700
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !701
  %13 = load i8** %12, align 8, !dbg !702, !tbaa !703
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !702
  store i8* %14, i8** %12, align 8, !dbg !702, !tbaa !703
  store i8 %11, i8* %13, align 1, !dbg !704, !tbaa !705
  br label %17, !dbg !706

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #12, !dbg !707
  br label %17, !dbg !708

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !709
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !94, metadata !677), !dbg !710
  %1 = icmp sgt i32 %__signo, 32, !dbg !711
  br i1 %1, label %5, label %2, !dbg !712

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !713
  %4 = shl i32 1, %3, !dbg !714
  br label %5, !dbg !712

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !712
  ret i32 %6, !dbg !715
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !100, metadata !677), !dbg !716
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !717
  br i1 %1, label %2, label %5, !dbg !718

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #13, !dbg !719
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !720
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !718
  ret i32 %7, !dbg !721
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !106, metadata !677), !dbg !722
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !723
  br i1 %1, label %2, label %5, !dbg !724

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #13, !dbg !725
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !726
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !724
  ret i32 %7, !dbg !727
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !112, metadata !677), !dbg !728
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !729
  br i1 %1, label %2, label %5, !dbg !730

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #13, !dbg !731
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !732
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !730
  ret i32 %7, !dbg !733
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !115, metadata !677), !dbg !734
  %1 = tail call float @llvm.fabs.f32(float %__x) #13, !dbg !735
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !736
  %3 = zext i1 %2 to i32, !dbg !736
  ret i32 %3, !dbg !737
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !118, metadata !677), !dbg !738
  %1 = tail call double @llvm.fabs.f64(double %__x) #13, !dbg !739
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !740
  %3 = zext i1 %2 to i32, !dbg !740
  ret i32 %3, !dbg !741
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !121, metadata !677), !dbg !742
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #13, !dbg !743
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !744
  %3 = zext i1 %2 to i32, !dbg !744
  ret i32 %3, !dbg !745
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !124, metadata !677), !dbg !746
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !747
  %2 = zext i1 %1 to i32, !dbg !747
  ret i32 %2, !dbg !748
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !127, metadata !677), !dbg !749
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !750
  %2 = zext i1 %1 to i32, !dbg !750
  ret i32 %2, !dbg !751
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !130, metadata !677), !dbg !752
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !753
  %2 = zext i1 %1 to i32, !dbg !753
  ret i32 %2, !dbg !754
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !133, metadata !677), !dbg !755
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !134, metadata !677), !dbg !756
  %1 = bitcast float %__x to i32, !dbg !757
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !134, metadata !677), !dbg !756
  %2 = lshr i32 %1, 31, !dbg !758
  ret i32 %2, !dbg !759
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !142, metadata !677), !dbg !760
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !143, metadata !677), !dbg !761
  %1 = bitcast double %__x to i64, !dbg !762
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !143, metadata !677), !dbg !761
  %2 = lshr i64 %1, 63, !dbg !763
  %3 = trunc i64 %2 to i32, !dbg !764
  ret i32 %3, !dbg !765
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !151, metadata !677), !dbg !766
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !152, metadata !677), !dbg !767
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !152, metadata !677), !dbg !767
  %1 = bitcast x86_fp80 %__x to i80, !dbg !768
  %2 = lshr i80 %1, 79, !dbg !768
  %3 = trunc i80 %2 to i32, !dbg !769
  ret i32 %3, !dbg !770
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !164, metadata !677), !dbg !771
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !100, metadata !677) #6, !dbg !772
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !774
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !775
  %or.cond = and i1 %1, %3, !dbg !776
  br i1 %or.cond, label %4, label %.critedge, !dbg !776

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !777
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !778
  ret i32 %7, !dbg !779
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !167, metadata !677), !dbg !780
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !106, metadata !677) #6, !dbg !781
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !783
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !784
  %or.cond = and i1 %1, %3, !dbg !785
  br i1 %or.cond, label %4, label %.critedge, !dbg !785

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !786
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !787
  ret i32 %7, !dbg !788
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !170, metadata !677), !dbg !789
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !112, metadata !677) #6, !dbg !790
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !792
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !793
  %or.cond = and i1 %1, %3, !dbg !794
  br i1 %or.cond, label %4, label %.critedge, !dbg !794

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !795
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !796
  ret i32 %7, !dbg !797
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !176, metadata !677), !dbg !798
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !177, metadata !677), !dbg !799
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !178, metadata !677), !dbg !800
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !179, metadata !677), !dbg !801
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #12, !dbg !802
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !179, metadata !677), !dbg !801
  %2 = extractelement <2 x float> %1, i32 0, !dbg !803
  store float %2, float* %__sinp, align 4, !dbg !804, !tbaa !805
  %3 = extractelement <2 x float> %1, i32 1, !dbg !807
  store float %3, float* %__cosp, align 4, !dbg !808, !tbaa !805
  ret void, !dbg !809
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !190, metadata !677), !dbg !810
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !191, metadata !677), !dbg !811
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !192, metadata !677), !dbg !812
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !193, metadata !677), !dbg !813
  %1 = tail call { double, double } @__sincos_stret(double %__x) #12, !dbg !814
  %2 = extractvalue { double, double } %1, 0, !dbg !814
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !193, metadata !815), !dbg !813
  %3 = extractvalue { double, double } %1, 1, !dbg !814
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !193, metadata !816), !dbg !813
  store double %2, double* %__sinp, align 8, !dbg !817, !tbaa !818
  store double %3, double* %__cosp, align 8, !dbg !820, !tbaa !818
  ret void, !dbg !821
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !201, metadata !677), !dbg !822
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !202, metadata !677), !dbg !823
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !203, metadata !677), !dbg !824
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !204, metadata !677), !dbg !825
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #12, !dbg !826
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !204, metadata !677), !dbg !825
  %2 = extractelement <2 x float> %1, i32 0, !dbg !827
  store float %2, float* %__sinp, align 4, !dbg !828, !tbaa !805
  %3 = extractelement <2 x float> %1, i32 1, !dbg !829
  store float %3, float* %__cosp, align 4, !dbg !830, !tbaa !805
  ret void, !dbg !831
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !207, metadata !677), !dbg !832
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !208, metadata !677), !dbg !833
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !209, metadata !677), !dbg !834
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !210, metadata !677), !dbg !835
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #12, !dbg !836
  %2 = extractvalue { double, double } %1, 0, !dbg !836
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !210, metadata !815), !dbg !835
  %3 = extractvalue { double, double } %1, 1, !dbg !836
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !210, metadata !816), !dbg !835
  store double %2, double* %__sinp, align 8, !dbg !837, !tbaa !818
  store double %3, double* %__cosp, align 8, !dbg !838, !tbaa !818
  ret void, !dbg !839
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @dump_ca(%struct.__sFILE* nocapture %fp, %struct.t_cross_atom* nocapture readonly %ca, i32 %i, i8* nocapture readnone %file, i32 %line) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !226, metadata !677), !dbg !840
  tail call void @llvm.dbg.value(metadata %struct.t_cross_atom* %ca, i64 0, metadata !227, metadata !677), !dbg !841
  tail call void @llvm.dbg.value(metadata i32 %i, i64 0, metadata !228, metadata !677), !dbg !842
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !229, metadata !677), !dbg !843
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !230, metadata !677), !dbg !844
  %1 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0, !dbg !845
  %2 = load i32* %1, align 4, !dbg !845, !tbaa !846
  %3 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !848
  %4 = load i32* %3, align 4, !dbg !848, !tbaa !849
  %5 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !850
  %6 = load i32* %5, align 4, !dbg !850, !tbaa !851
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 %line, i32 %i, i32 %2, i32 %4, i32 %6) #12, !dbg !852
  ret void, !dbg !853
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_cross_atom* @mk_cross_atom(%struct.__sFILE* nocapture %log, %struct.t_mdatoms* nocapture readonly %md, i8*** nocapture readonly %atomname, i32 %Eindex) #4 {
  %elem_index = alloca [22 x i32], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !268, metadata !677), !dbg !854
  tail call void @llvm.dbg.value(metadata %struct.t_mdatoms* %md, i64 0, metadata !269, metadata !677), !dbg !855
  tail call void @llvm.dbg.value(metadata i8*** %atomname, i64 0, metadata !270, metadata !677), !dbg !856
  tail call void @llvm.dbg.value(metadata i32 %Eindex, i64 0, metadata !271, metadata !677), !dbg !857
  %1 = bitcast [22 x i32]* %elem_index to i8*, !dbg !858
  call void @llvm.lifetime.start(i64 88, i8* %1) #6, !dbg !858
  tail call void @llvm.dbg.declare(metadata [22 x i32]* %elem_index, metadata !272, metadata !677), !dbg !859
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 88, i32 16, i1 false), !dbg !859
  %2 = getelementptr [22 x i32]* %elem_index, i64 0, i64 6, !dbg !859
  store i32 1, i32* %2, align 8, !dbg !859
  %3 = getelementptr [22 x i32]* %elem_index, i64 0, i64 7, !dbg !859
  store i32 2, i32* %3, align 4, !dbg !859
  %4 = getelementptr [22 x i32]* %elem_index, i64 0, i64 8, !dbg !859
  store i32 3, i32* %4, align 16, !dbg !859
  %5 = getelementptr [22 x i32]* %elem_index, i64 0, i64 16, !dbg !859
  store i32 4, i32* %5, align 16, !dbg !859
  %6 = getelementptr [22 x i32]* %elem_index, i64 0, i64 20, !dbg !859
  store i32 5, i32* %6, align 16, !dbg !859
  %7 = getelementptr [22 x i32]* %elem_index, i64 0, i64 21, !dbg !859
  store i32 6, i32* %7, align 4, !dbg !859
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str1, i64 0, i64 0), i64 46, i64 1, %struct.__sFILE* %log), !dbg !860
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i64 51, i64 1, %struct.__sFILE* %log), !dbg !861
  %10 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !862
  %11 = load i32* %10, align 4, !dbg !862, !tbaa !863
  %12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 196, i32 %11, i32 28) #12, !dbg !862
  %13 = bitcast i8* %12 to %struct.t_cross_atom*, !dbg !862
  tail call void @llvm.dbg.value(metadata %struct.t_cross_atom* %13, i64 0, metadata !276, metadata !677), !dbg !865
  %14 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 197, i32 8, i32 4) #12, !dbg !866
  %15 = bitcast i8* %14 to i32*, !dbg !866
  tail call void @llvm.dbg.value(metadata i32* %15, i64 0, metadata !277, metadata !677), !dbg !867
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !279, metadata !677), !dbg !868
  %16 = load i32* %10, align 4, !dbg !869, !tbaa !863
  %17 = icmp sgt i32 %16, 0, !dbg !872
  br i1 %17, label %.lr.ph, label %._crit_edge, !dbg !873

.lr.ph:                                           ; preds = %0
  %18 = sext i32 %Eindex to i64, !dbg !874
  br label %19, !dbg !873

; <label>:19                                      ; preds = %.lr.ph, %79
  %indvars.iv13 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next14, %79 ]
  %20 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, !dbg !876
  %21 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 1, !dbg !877
  store i32 0, i32* %21, align 4, !dbg !878, !tbaa !849
  %22 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 2, !dbg !879
  store i32 0, i32* %22, align 4, !dbg !880, !tbaa !851
  %23 = getelementptr inbounds i8*** %atomname, i64 %indvars.iv13, !dbg !881
  %24 = load i8*** %23, align 8, !dbg !881, !tbaa !882
  %25 = load i8** %24, align 8, !dbg !883, !tbaa !882
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !278, metadata !677), !dbg !884
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !280, metadata !677), !dbg !885
  br label %26, !dbg !886

; <label>:26                                      ; preds = %19, %35
  %indvars.iv11 = phi i64 [ 0, %19 ], [ %indvars.iv.next12, %35 ]
  %27 = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %indvars.iv11, i32 0, !dbg !888
  %28 = load i8** %27, align 8, !dbg !888, !tbaa !891
  %29 = tail call i64 @strlen(i8* %28) #12, !dbg !893
  %30 = tail call i32 @strncmp(i8* %25, i8* %28, i64 %29) #12, !dbg !894
  %31 = icmp eq i32 %30, 0, !dbg !895
  br i1 %31, label %.thread, label %35, !dbg !896

.thread:                                          ; preds = %26
  %32 = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %indvars.iv11, i32 1, !dbg !897
  %33 = load i32* %32, align 8, !dbg !897, !tbaa !899
  %34 = getelementptr inbounds %struct.t_cross_atom* %20, i64 0, i32 0, !dbg !900
  store i32 %33, i32* %34, align 4, !dbg !901, !tbaa !846
  br label %41, !dbg !902

; <label>:35                                      ; preds = %26
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !886
  %36 = trunc i64 %indvars.iv.next12 to i32, !dbg !903
  %37 = icmp ult i32 %36, 7, !dbg !903
  br i1 %37, label %26, label %38, !dbg !886

; <label>:38                                      ; preds = %35
  %39 = icmp eq i32 %36, 7, !dbg !904
  br i1 %39, label %40, label %41, !dbg !902

; <label>:40                                      ; preds = %38
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str6, i64 0, i64 0), i8* %25) #12, !dbg !906
  br label %41, !dbg !906

; <label>:41                                      ; preds = %.thread, %40, %38
  %42 = phi i64 [ %indvars.iv11, %.thread ], [ %indvars.iv.next12, %40 ], [ %indvars.iv.next12, %38 ]
  %43 = getelementptr inbounds i32* %15, i64 %42, !dbg !907
  %44 = load i32* %43, align 4, !dbg !908, !tbaa !909
  %45 = add nsw i32 %44, 1, !dbg !908
  store i32 %45, i32* %43, align 4, !dbg !908, !tbaa !909
  %46 = getelementptr inbounds %struct.t_cross_atom* %20, i64 0, i32 0, !dbg !910
  %47 = load i32* %46, align 4, !dbg !910, !tbaa !846
  %48 = sext i32 %47 to i64, !dbg !911
  %49 = getelementptr inbounds [22 x i32]* %elem_index, i64 0, i64 %48, !dbg !911
  %50 = load i32* %49, align 4, !dbg !911, !tbaa !909
  %51 = sext i32 %50 to i64, !dbg !874
  %52 = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %51, i32 2, !dbg !912
  %53 = load %struct.t_cross** %52, align 8, !dbg !912, !tbaa !913
  %54 = getelementptr inbounds %struct.t_cross* %53, i64 %18, i32 0, !dbg !914
  %55 = bitcast float* %54 to i32*, !dbg !914
  %56 = load i32* %55, align 4, !dbg !914, !tbaa !915
  %57 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 4, !dbg !917
  %58 = bitcast float* %57 to i32*, !dbg !918
  store i32 %56, i32* %58, align 4, !dbg !918, !tbaa !919
  %59 = getelementptr inbounds %struct.t_cross* %53, i64 %18, i32 2, !dbg !920
  %60 = bitcast float* %59 to i32*, !dbg !920
  %61 = load i32* %60, align 4, !dbg !920, !tbaa !921
  %62 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 5, !dbg !922
  %63 = bitcast float* %62 to i32*, !dbg !923
  store i32 %61, i32* %63, align 4, !dbg !923, !tbaa !924
  %64 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %48, i32 2, !dbg !925
  %65 = bitcast float* %64 to i32*, !dbg !925
  %66 = load i32* %65, align 8, !dbg !925, !tbaa !921
  %67 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 3, !dbg !926
  %68 = bitcast float* %67 to i32*, !dbg !927
  store i32 %66, i32* %68, align 4, !dbg !927, !tbaa !928
  switch i32 %47, label %77 [
    i32 6, label %69
    i32 7, label %71
    i32 8, label %73
    i32 16, label %75
    i32 20, label %75
  ], !dbg !929

; <label>:69                                      ; preds = %41
  %70 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 6, !dbg !930
  store float 0x3FECED9160000000, float* %70, align 4, !dbg !932, !tbaa !933
  br label %79, !dbg !934

; <label>:71                                      ; preds = %41
  %72 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 6, !dbg !935
  store float 0x3FED70A3E0000000, float* %72, align 4, !dbg !936, !tbaa !933
  br label %79, !dbg !937

; <label>:73                                      ; preds = %41
  %74 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 6, !dbg !938
  store float 0x3FEDBA5E40000000, float* %74, align 4, !dbg !939, !tbaa !933
  br label %79, !dbg !940

; <label>:75                                      ; preds = %41, %41
  %76 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 6, !dbg !941
  store float 1.000000e+00, float* %76, align 4, !dbg !942, !tbaa !933
  br label %79, !dbg !943

; <label>:77                                      ; preds = %41
  %78 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 6, !dbg !944
  store float -1.000000e+00, float* %78, align 4, !dbg !945, !tbaa !933
  br label %79, !dbg !946

; <label>:79                                      ; preds = %69, %71, %73, %75, %77
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !873
  %80 = load i32* %10, align 4, !dbg !869, !tbaa !863
  %81 = sext i32 %80 to i64, !dbg !872
  %82 = icmp slt i64 %indvars.iv.next14, %81, !dbg !872
  br i1 %82, label %19, label %._crit_edge, !dbg !873

._crit_edge:                                      ; preds = %79, %0
  %.lcssa3 = phi i32 [ %16, %0 ], [ %80, %79 ]
  %83 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([76 x i8]* @.str7, i64 0, i64 0), i32 %.lcssa3) #12, !dbg !947
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !280, metadata !677), !dbg !885
  br label %84, !dbg !948

; <label>:84                                      ; preds = %92, %._crit_edge
  %indvars.iv = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next, %92 ]
  %85 = getelementptr inbounds i32* %15, i64 %indvars.iv, !dbg !950
  %86 = load i32* %85, align 4, !dbg !950, !tbaa !909
  %87 = icmp sgt i32 %86, 0, !dbg !953
  br i1 %87, label %88, label %92, !dbg !954

; <label>:88                                      ; preds = %84
  %89 = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %indvars.iv, i32 0, !dbg !955
  %90 = load i8** %89, align 8, !dbg !955, !tbaa !891
  %91 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i8* %90, i32 %86) #12, !dbg !956
  br label %92, !dbg !956

; <label>:92                                      ; preds = %84, %88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !948
  %exitcond = icmp eq i64 %indvars.iv.next, 7, !dbg !948
  br i1 %exitcond, label %93, label %84, !dbg !948

; <label>:93                                      ; preds = %92
  %94 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i64 7, i64 1, %struct.__sFILE* %log), !dbg !957
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 240, i8* %14) #12, !dbg !958
  call void @llvm.lifetime.end(i64 88, i8* %1) #6, !dbg !959
  ret %struct.t_cross_atom* %13, !dbg !959
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #7

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @number_K(%struct.t_cross_atom* nocapture readonly %ca) #8 {
  tail call void @llvm.dbg.value(metadata %struct.t_cross_atom* %ca, i64 0, metadata !285, metadata !677), !dbg !960
  %1 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0, !dbg !961
  %2 = load i32* %1, align 4, !dbg !961, !tbaa !846
  %3 = icmp slt i32 %2, 3, !dbg !963
  br i1 %3, label %4, label %8, !dbg !964

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !965
  %6 = load i32* %5, align 4, !dbg !965, !tbaa !849
  %7 = sub nsw i32 %2, %6, !dbg !966
  br label %12, !dbg !967

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !968
  %10 = load i32* %9, align 4, !dbg !968, !tbaa !851
  %11 = sub nsw i32 2, %10, !dbg !969
  br label %12, !dbg !970

; <label>:12                                      ; preds = %8, %4
  %.0 = phi i32 [ %7, %4 ], [ %11, %8 ]
  ret i32 %.0, !dbg !971
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @number_L(%struct.t_cross_atom* nocapture readonly %ca) #8 {
  tail call void @llvm.dbg.value(metadata %struct.t_cross_atom* %ca, i64 0, metadata !288, metadata !677), !dbg !972
  %1 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !973
  %2 = load i32* %1, align 4, !dbg !973, !tbaa !851
  %3 = add nsw i32 %2, -2, !dbg !974
  %4 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0, !dbg !975
  %5 = load i32* %4, align 4, !dbg !975, !tbaa !846
  %6 = add nsw i32 %3, %5, !dbg !976
  %7 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !977
  %8 = load i32* %7, align 4, !dbg !977, !tbaa !849
  %9 = sub i32 %6, %8, !dbg !978
  ret i32 %9, !dbg !979
}

; Function Attrs: nounwind optsize ssp uwtable
define float @xray_cross_section(i32 %eColl, %struct.t_cross_atom* nocapture readonly %ca) #4 {
  tail call void @llvm.dbg.value(metadata i32 %eColl, i64 0, metadata !293, metadata !677), !dbg !980
  tail call void @llvm.dbg.value(metadata %struct.t_cross_atom* %ca, i64 0, metadata !294, metadata !677), !dbg !981
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !295, metadata !677), !dbg !982
  switch i32 %eColl, label %57 [
    i32 0, label %1
    i32 1, label %45
  ], !dbg !983

; <label>:1                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.t_cross_atom* %ca, i64 0, metadata !285, metadata !677), !dbg !984
  %2 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0, !dbg !987
  %3 = load i32* %2, align 4, !dbg !987, !tbaa !846
  %4 = icmp slt i32 %3, 3, !dbg !988
  br i1 %4, label %5, label %9, !dbg !989

; <label>:5                                       ; preds = %1
  %6 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !990
  %7 = load i32* %6, align 4, !dbg !990, !tbaa !849
  %8 = sub nsw i32 %3, %7, !dbg !991
  br label %number_K.exit, !dbg !992

; <label>:9                                       ; preds = %1
  %10 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !993
  %11 = load i32* %10, align 4, !dbg !993, !tbaa !851
  %12 = sub nsw i32 2, %11, !dbg !994
  br label %number_K.exit, !dbg !995

number_K.exit:                                    ; preds = %5, %9
  %.0.i = phi i32 [ %8, %5 ], [ %12, %9 ], !dbg !996
  tail call void @llvm.dbg.value(metadata i32 %.0.i, i64 0, metadata !296, metadata !677), !dbg !997
  tail call void @llvm.dbg.value(metadata %struct.t_cross_atom* %ca, i64 0, metadata !288, metadata !677), !dbg !998
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !297, metadata !677), !dbg !1000
  switch i32 %3, label %20 [
    i32 1, label %13
    i32 2, label %16
  ], !dbg !1001

; <label>:13                                      ; preds = %number_K.exit
  %14 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 4, !dbg !1002
  %15 = load float* %14, align 4, !dbg !1002, !tbaa !919
  tail call void @llvm.dbg.value(metadata float %15, i64 0, metadata !295, metadata !677), !dbg !982
  br label %58, !dbg !1004

; <label>:16                                      ; preds = %number_K.exit
  %17 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 4, !dbg !1005
  %18 = load float* %17, align 4, !dbg !1005, !tbaa !919
  %19 = fmul float %18, 5.000000e-01, !dbg !1007
  tail call void @llvm.dbg.value(metadata float %19, i64 0, metadata !295, metadata !677), !dbg !982
  br label %58, !dbg !1008

; <label>:20                                      ; preds = %number_K.exit
  %21 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !1009
  %22 = load i32* %21, align 4, !dbg !1009, !tbaa !851
  %23 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !1010
  %24 = load i32* %23, align 4, !dbg !1010, !tbaa !849
  %25 = add i32 %3, -2, !dbg !1011
  %26 = add i32 %25, %22, !dbg !1012
  %27 = sub i32 %26, %24, !dbg !1013
  %28 = sitofp i32 %.0.i to double, !dbg !1014
  %29 = fmul double %28, 5.000000e-01, !dbg !1015
  %30 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 3, !dbg !1016
  %31 = load float* %30, align 4, !dbg !1016, !tbaa !928
  %32 = fpext float %31 to double, !dbg !1017
  %33 = fmul double %29, %32, !dbg !1018
  %34 = sdiv i32 %27, %25, !dbg !1019
  %35 = sitofp i32 %34 to float, !dbg !1020
  %36 = fsub float 1.000000e+00, %31, !dbg !1021
  %37 = fmul float %36, %35, !dbg !1022
  %38 = fpext float %37 to double, !dbg !1020
  %39 = fadd double %33, %38, !dbg !1023
  %40 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 4, !dbg !1024
  %41 = load float* %40, align 4, !dbg !1024, !tbaa !919
  %42 = fpext float %41 to double, !dbg !1025
  %43 = fmul double %42, %39, !dbg !1026
  %44 = fptrunc double %43 to float, !dbg !1027
  tail call void @llvm.dbg.value(metadata float %44, i64 0, metadata !295, metadata !677), !dbg !982
  br label %58

; <label>:45                                      ; preds = %0
  %46 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0, !dbg !1028
  %47 = load i32* %46, align 4, !dbg !1028, !tbaa !846
  %48 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !1029
  %49 = load i32* %48, align 4, !dbg !1029, !tbaa !849
  %50 = sub nsw i32 %47, %49, !dbg !1030
  %51 = sitofp i32 %50 to float, !dbg !1031
  %52 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 5, !dbg !1032
  %53 = load float* %52, align 4, !dbg !1032, !tbaa !924
  %54 = fmul float %53, %51, !dbg !1033
  %55 = sitofp i32 %47 to float, !dbg !1034
  %56 = fdiv float %54, %55, !dbg !1035
  tail call void @llvm.dbg.value(metadata float %56, i64 0, metadata !295, metadata !677), !dbg !982
  br label %58, !dbg !1036

; <label>:57                                      ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %eColl) #12, !dbg !1037
  br label %58, !dbg !1038

; <label>:58                                      ; preds = %13, %20, %16, %57, %45
  %c.0 = phi float [ 0.000000e+00, %57 ], [ %56, %45 ], [ %15, %13 ], [ %19, %16 ], [ %44, %20 ]
  ret float %c.0, !dbg !1039
}

; Function Attrs: nounwind optsize ssp uwtable
define float @prob_K(i32 %eColl, %struct.t_cross_atom* nocapture readonly %ca) #4 {
  tail call void @llvm.dbg.value(metadata i32 %eColl, i64 0, metadata !300, metadata !677), !dbg !1040
  tail call void @llvm.dbg.value(metadata %struct.t_cross_atom* %ca, i64 0, metadata !301, metadata !677), !dbg !1041
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !304, metadata !677), !dbg !1042
  %1 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0, !dbg !1043
  %2 = load i32* %1, align 4, !dbg !1043, !tbaa !846
  %3 = icmp slt i32 %2, 3, !dbg !1045
  br i1 %3, label %36, label %4, !dbg !1046

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !1047
  %6 = load i32* %5, align 4, !dbg !1047, !tbaa !849
  %7 = icmp eq i32 %2, %6, !dbg !1048
  br i1 %7, label %36, label %8, !dbg !1049

; <label>:8                                       ; preds = %4
  switch i32 %eColl, label %35 [
    i32 0, label %9
    i32 1, label %28
  ], !dbg !1050

; <label>:9                                       ; preds = %8
  %10 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !1051
  %11 = load i32* %10, align 4, !dbg !1051, !tbaa !851
  %12 = add i32 %2, -2, !dbg !1053
  %13 = sub i32 %12, %6, !dbg !1054
  %14 = add i32 %13, %11, !dbg !1055
  %15 = sitofp i32 %14 to float, !dbg !1056
  %16 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 3, !dbg !1057
  %17 = load float* %16, align 4, !dbg !1057, !tbaa !928
  %18 = fsub float 1.000000e+00, %17, !dbg !1058
  %19 = fmul float %18, %15, !dbg !1059
  %20 = sitofp i32 %12 to float, !dbg !1060
  %21 = fdiv float %19, %20, !dbg !1061
  tail call void @llvm.dbg.value(metadata float %21, i64 0, metadata !302, metadata !677), !dbg !1062
  %22 = sub nsw i32 2, %11, !dbg !1063
  %23 = sitofp i32 %22 to float, !dbg !1064
  %24 = fmul float %17, %23, !dbg !1065
  %25 = fmul float %24, 5.000000e-01, !dbg !1064
  tail call void @llvm.dbg.value(metadata float %25, i64 0, metadata !303, metadata !677), !dbg !1066
  %26 = fadd float %21, %25, !dbg !1067
  %27 = fdiv float %25, %26, !dbg !1068
  tail call void @llvm.dbg.value(metadata float %27, i64 0, metadata !304, metadata !677), !dbg !1042
  br label %36, !dbg !1069

; <label>:28                                      ; preds = %8
  %29 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !1070
  %30 = load i32* %29, align 4, !dbg !1070, !tbaa !851
  %31 = sub nsw i32 2, %30, !dbg !1071
  %32 = sub nsw i32 %2, %6, !dbg !1072
  %33 = sdiv i32 %31, %32, !dbg !1073
  %34 = sitofp i32 %33 to float, !dbg !1074
  tail call void @llvm.dbg.value(metadata float %34, i64 0, metadata !304, metadata !677), !dbg !1042
  br label %36, !dbg !1075

; <label>:35                                      ; preds = %8
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %eColl) #12, !dbg !1076
  br label %36, !dbg !1077

; <label>:36                                      ; preds = %9, %28, %35, %0, %4
  %.0 = phi float [ 0.000000e+00, %4 ], [ 0.000000e+00, %0 ], [ 0.000000e+00, %35 ], [ %34, %28 ], [ %27, %9 ]
  ret float %.0, !dbg !1078
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define double @myexp(double %x) #9 {
  tail call void @llvm.dbg.value(metadata double %x, i64 0, metadata !309, metadata !677), !dbg !1079
  %1 = fcmp olt double %x, -7.000000e+01, !dbg !1080
  br i1 %1, label %4, label %2, !dbg !1082

; <label>:2                                       ; preds = %0
  %3 = tail call double @exp(double %x) #14, !dbg !1083
  br label %4, !dbg !1084

; <label>:4                                       ; preds = %0, %2
  %.0 = phi double [ %3, %2 ], [ 0.000000e+00, %0 ]
  ret double %.0, !dbg !1085
}

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #10

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @ptheta_incoh(i32 %Eindex, float %theta) #9 {
  tail call void @llvm.dbg.value(metadata i32 %Eindex, i64 0, metadata !314, metadata !677), !dbg !1086
  tail call void @llvm.dbg.value(metadata float %theta, i64 0, metadata !315, metadata !677), !dbg !1087
  %1 = fpext float %theta to double, !dbg !1088
  %2 = sext i32 %Eindex to i64, !dbg !1089
  %3 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 7, !dbg !1089
  %4 = load double* %3, align 8, !dbg !1089, !tbaa !818
  %5 = fsub double %1, %4, !dbg !1090
  %6 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 1, !dbg !1091
  %7 = load double* %6, align 8, !dbg !1091, !tbaa !818
  %8 = fdiv double %5, %7, !dbg !1092
  %9 = fptrunc double %8 to float, !dbg !1093
  tail call void @llvm.dbg.value(metadata float %9, i64 0, metadata !567, metadata !677), !dbg !1094
  %10 = fmul float %9, %9, !dbg !1096
  %11 = fpext float %10 to double, !dbg !1097
  %12 = fmul double %11, -5.000000e-01, !dbg !1098
  tail call void @llvm.dbg.value(metadata double %12, i64 0, metadata !309, metadata !677) #6, !dbg !1099
  %13 = fcmp olt double %12, -7.000000e+01, !dbg !1101
  br i1 %13, label %myexp.exit2, label %14, !dbg !1102

; <label>:14                                      ; preds = %0
  %15 = tail call double @exp(double %12) #14, !dbg !1103
  br label %myexp.exit2, !dbg !1104

myexp.exit2:                                      ; preds = %0, %14
  %.0.i1 = phi double [ %15, %14 ], [ 0.000000e+00, %0 ], !dbg !1105
  tail call void @llvm.dbg.value(metadata double %.0.i1, i64 0, metadata !316, metadata !677), !dbg !1106
  %16 = fadd float %theta, -1.800000e+02, !dbg !1107
  %17 = fpext float %16 to double, !dbg !1108
  %18 = fadd double %17, %4, !dbg !1109
  %19 = fdiv double %18, %7, !dbg !1110
  %20 = fptrunc double %19 to float, !dbg !1111
  tail call void @llvm.dbg.value(metadata float %20, i64 0, metadata !567, metadata !677), !dbg !1112
  %21 = fmul float %20, %20, !dbg !1114
  %22 = fpext float %21 to double, !dbg !1115
  %23 = fmul double %22, -5.000000e-01, !dbg !1116
  tail call void @llvm.dbg.value(metadata double %23, i64 0, metadata !309, metadata !677) #6, !dbg !1117
  %24 = fcmp olt double %23, -7.000000e+01, !dbg !1119
  br i1 %24, label %myexp.exit6, label %25, !dbg !1120

; <label>:25                                      ; preds = %myexp.exit2
  %26 = tail call double @exp(double %23) #14, !dbg !1121
  br label %myexp.exit6, !dbg !1122

myexp.exit6:                                      ; preds = %myexp.exit2, %25
  %.0.i5 = phi double [ %26, %25 ], [ 0.000000e+00, %myexp.exit2 ], !dbg !1123
  tail call void @llvm.dbg.value(metadata double %.0.i5, i64 0, metadata !317, metadata !677), !dbg !1124
  %27 = fadd float %theta, -9.000000e+01, !dbg !1125
  %28 = fpext float %27 to double, !dbg !1126
  %29 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 3, !dbg !1127
  %30 = load double* %29, align 8, !dbg !1127, !tbaa !818
  %31 = fdiv double %28, %30, !dbg !1128
  %32 = fptrunc double %31 to float, !dbg !1126
  tail call void @llvm.dbg.value(metadata float %32, i64 0, metadata !567, metadata !677), !dbg !1129
  %33 = fmul float %32, %32, !dbg !1131
  %34 = fpext float %33 to double, !dbg !1132
  %35 = fmul double %34, -5.000000e-01, !dbg !1133
  tail call void @llvm.dbg.value(metadata double %35, i64 0, metadata !309, metadata !677) #6, !dbg !1134
  %36 = fcmp olt double %35, -7.000000e+01, !dbg !1136
  br i1 %36, label %myexp.exit8, label %37, !dbg !1137

; <label>:37                                      ; preds = %myexp.exit6
  %38 = tail call double @exp(double %35) #14, !dbg !1138
  br label %myexp.exit8, !dbg !1139

myexp.exit8:                                      ; preds = %myexp.exit6, %37
  %.0.i7 = phi double [ %38, %37 ], [ 0.000000e+00, %myexp.exit6 ], !dbg !1140
  tail call void @llvm.dbg.value(metadata double %.0.i7, i64 0, metadata !318, metadata !677), !dbg !1141
  %39 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 6, !dbg !1142
  %40 = load double* %39, align 16, !dbg !1142, !tbaa !818
  %41 = fsub double %1, %40, !dbg !1143
  %42 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 5, !dbg !1144
  %43 = load double* %42, align 8, !dbg !1144, !tbaa !818
  %44 = fdiv double %41, %43, !dbg !1145
  %45 = fptrunc double %44 to float, !dbg !1146
  tail call void @llvm.dbg.value(metadata float %45, i64 0, metadata !567, metadata !677), !dbg !1147
  %46 = fmul float %45, %45, !dbg !1149
  %47 = fpext float %46 to double, !dbg !1150
  %48 = fmul double %47, -5.000000e-01, !dbg !1151
  tail call void @llvm.dbg.value(metadata double %48, i64 0, metadata !309, metadata !677) #6, !dbg !1152
  %49 = fcmp olt double %48, -7.000000e+01, !dbg !1154
  br i1 %49, label %myexp.exit4, label %50, !dbg !1155

; <label>:50                                      ; preds = %myexp.exit8
  %51 = tail call double @exp(double %48) #14, !dbg !1156
  br label %myexp.exit4, !dbg !1157

myexp.exit4:                                      ; preds = %myexp.exit8, %50
  %.0.i3 = phi double [ %51, %50 ], [ 0.000000e+00, %myexp.exit8 ], !dbg !1158
  tail call void @llvm.dbg.value(metadata double %.0.i3, i64 0, metadata !319, metadata !677), !dbg !1159
  %52 = fadd double %17, %40, !dbg !1160
  %53 = fdiv double %52, %43, !dbg !1161
  %54 = fptrunc double %53 to float, !dbg !1162
  tail call void @llvm.dbg.value(metadata float %54, i64 0, metadata !567, metadata !677), !dbg !1163
  %55 = fmul float %54, %54, !dbg !1165
  %56 = fpext float %55 to double, !dbg !1166
  %57 = fmul double %56, -5.000000e-01, !dbg !1167
  tail call void @llvm.dbg.value(metadata double %57, i64 0, metadata !309, metadata !677) #6, !dbg !1168
  %58 = fcmp olt double %57, -7.000000e+01, !dbg !1170
  br i1 %58, label %myexp.exit, label %59, !dbg !1171

; <label>:59                                      ; preds = %myexp.exit4
  %60 = tail call double @exp(double %57) #14, !dbg !1172
  br label %myexp.exit, !dbg !1173

myexp.exit:                                       ; preds = %myexp.exit4, %59
  %.0.i = phi double [ %60, %59 ], [ 0.000000e+00, %myexp.exit4 ], !dbg !1174
  tail call void @llvm.dbg.value(metadata double %.0.i, i64 0, metadata !320, metadata !677), !dbg !1175
  %61 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 0, !dbg !1176
  %62 = load double* %61, align 16, !dbg !1176, !tbaa !818
  %63 = fadd double %.0.i1, %.0.i5, !dbg !1177
  %64 = fmul double %63, %62, !dbg !1178
  %65 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 2, !dbg !1179
  %66 = load double* %65, align 16, !dbg !1179, !tbaa !818
  %67 = fmul double %.0.i7, %66, !dbg !1180
  %68 = fadd double %64, %67, !dbg !1181
  %69 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 4, !dbg !1182
  %70 = load double* %69, align 16, !dbg !1182, !tbaa !818
  %71 = fadd double %.0.i3, %.0.i, !dbg !1183
  %72 = fmul double %71, %70, !dbg !1184
  %73 = fadd double %68, %72, !dbg !1185
  tail call void @llvm.dbg.value(metadata double %73, i64 0, metadata !321, metadata !677), !dbg !1186
  %74 = fptrunc double %73 to float, !dbg !1187
  ret float %74, !dbg !1188
}

; Function Attrs: nounwind optsize ssp uwtable
define float @rand_theta_incoh(i32 %Eindex, i32* %seed) #4 {
  %y = alloca [2 x float], align 4
  tail call void @llvm.dbg.value(metadata i32 %Eindex, i64 0, metadata !326, metadata !677), !dbg !1189
  tail call void @llvm.dbg.value(metadata i32* %seed, i64 0, metadata !327, metadata !677), !dbg !1190
  tail call void @llvm.dbg.declare(metadata [2 x float]* %y, metadata !330, metadata !677), !dbg !1191
  tail call void @llvm.dbg.value(metadata float 0x3FC99999A0000000, i64 0, metadata !329, metadata !677), !dbg !1192
  %.b = load i1* @rand_theta_incoh.bFirst, align 1
  br i1 %.b, label %71, label %1, !dbg !1193

; <label>:1                                       ; preds = %0
  %2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 361, i32 6, i32 8) #12, !dbg !1194
  store i8* %2, i8** bitcast (float*** @rand_theta_incoh.intp to i8**), align 8, !dbg !1194, !tbaa !882
  store i32 0, i32* @rand_theta_incoh.i, align 4, !dbg !1197, !tbaa !909
  br label %3, !dbg !1200

; <label>:3                                       ; preds = %1, %36
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 363, i32 451, i32 4) #12, !dbg !1201
  %5 = load i32* @rand_theta_incoh.i, align 4, !dbg !1201, !tbaa !909
  %6 = sext i32 %5 to i64, !dbg !1201
  %7 = load float*** @rand_theta_incoh.intp, align 8, !dbg !1201, !tbaa !882
  %8 = getelementptr inbounds float** %7, i64 %6, !dbg !1201
  %9 = bitcast float** %8 to i8**, !dbg !1201
  store i8* %4, i8** %9, align 8, !dbg !1201, !tbaa !882
  %10 = tail call float @ptheta_incoh(i32 %5, float 0.000000e+00) #15, !dbg !1203
  %11 = load i32* @rand_theta_incoh.cur, align 4, !dbg !1204, !tbaa !909
  %12 = sub nsw i32 1, %11, !dbg !1204
  %13 = sext i32 %12 to i64, !dbg !1205
  %14 = getelementptr inbounds [2 x float]* %y, i64 0, i64 %13, !dbg !1205
  store float %10, float* %14, align 4, !dbg !1206, !tbaa !805
  store i32 1, i32* @rand_theta_incoh.j, align 4, !dbg !1207, !tbaa !909
  %15 = load float*** @rand_theta_incoh.intp, align 8, !dbg !1210, !tbaa !882
  %16 = getelementptr inbounds float** %15, i64 %6, !dbg !1210
  %17 = load float** %16, align 8, !dbg !1210, !tbaa !882
  %.pre = load float* %17, align 4, !dbg !1210, !tbaa !805
  br label %18, !dbg !1212

; <label>:18                                      ; preds = %3, %18
  %19 = phi float [ %.pre, %3 ], [ %32, %18 ], !dbg !1213
  %indvars.iv14 = phi i64 [ 1, %3 ], [ %indvars.iv.next15, %18 ]
  %20 = phi i32 [ %11, %3 ], [ %26, %18 ], !dbg !1213
  %storemerge49 = phi i32 [ 1, %3 ], [ %35, %18 ]
  %21 = sitofp i32 %storemerge49 to float, !dbg !1213
  %22 = fmul float %21, 0x3FC99999A0000000, !dbg !1214
  %23 = tail call float @ptheta_incoh(i32 %5, float %22) #15, !dbg !1215
  %24 = sext i32 %20 to i64, !dbg !1216
  %25 = getelementptr inbounds [2 x float]* %y, i64 0, i64 %24, !dbg !1216
  store float %23, float* %25, align 4, !dbg !1217, !tbaa !805
  %26 = sub nsw i32 1, %20, !dbg !1218
  %27 = sext i32 %26 to i64, !dbg !1219
  %28 = getelementptr inbounds [2 x float]* %y, i64 0, i64 %27, !dbg !1219
  %29 = load float* %28, align 4, !dbg !1219, !tbaa !805
  %30 = fadd float %23, %29, !dbg !1220
  %31 = fmul float %30, 0x3FC99999A0000000, !dbg !1221
  %32 = fadd float %19, %31, !dbg !1222
  %33 = getelementptr inbounds float* %17, i64 %indvars.iv14, !dbg !1223
  store float %32, float* %33, align 4, !dbg !1224, !tbaa !805
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, 1, !dbg !1212
  %34 = icmp slt i64 %indvars.iv.next15, 451, !dbg !1225
  %35 = trunc i64 %indvars.iv.next15 to i32, !dbg !1212
  br i1 %34, label %18, label %36, !dbg !1212

; <label>:36                                      ; preds = %18
  store i32 %26, i32* @rand_theta_incoh.cur, align 4, !dbg !1226, !tbaa !909
  store i32 451, i32* @rand_theta_incoh.j, align 4, !dbg !1207, !tbaa !909
  %37 = add nsw i32 %5, 1, !dbg !1197
  store i32 %37, i32* @rand_theta_incoh.i, align 4, !dbg !1197, !tbaa !909
  %38 = icmp ult i32 %37, 6, !dbg !1227
  br i1 %38, label %3, label %39, !dbg !1200

; <label>:39                                      ; preds = %36
  %40 = load %struct.__sFILE** @debug, align 8, !dbg !1228, !tbaa !882
  %41 = icmp eq %struct.__sFILE* %40, null, !dbg !1228
  br i1 %41, label %.loopexit, label %42, !dbg !1230

; <label>:42                                      ; preds = %39
  %43 = tail call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i64 54, i64 1, %struct.__sFILE* %40), !dbg !1231
  store i32 0, i32* @rand_theta_incoh.j, align 4, !dbg !1233, !tbaa !909
  br label %44, !dbg !1236

; <label>:44                                      ; preds = %42, %67
  %storemerge28 = phi i32 [ 0, %42 ], [ %69, %67 ]
  %45 = load %struct.__sFILE** @debug, align 8, !dbg !1237, !tbaa !882
  %46 = sitofp i32 %storemerge28 to float, !dbg !1239
  %47 = fmul float %46, 0x3FC99999A0000000, !dbg !1240
  %48 = fpext float %47 to double, !dbg !1241
  %49 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %45, i8* getelementptr inbounds ([5 x i8]* @.str14, i64 0, i64 0), double %48) #12, !dbg !1242
  store i32 0, i32* @rand_theta_incoh.i, align 4, !dbg !1243, !tbaa !909
  %50 = load %struct.__sFILE** @debug, align 8, !dbg !1246, !tbaa !882
  br label %51, !dbg !1247

; <label>:51                                      ; preds = %44, %51
  %52 = phi %struct.__sFILE* [ %50, %44 ], [ %66, %51 ]
  %storemerge37 = phi i32 [ 0, %44 ], [ %64, %51 ]
  %53 = sext i32 %storemerge37 to i64, !dbg !1248
  %54 = load i32* @rand_theta_incoh.j, align 4, !dbg !1249, !tbaa !909
  %55 = sext i32 %54 to i64, !dbg !1250
  %56 = load float*** @rand_theta_incoh.intp, align 8, !dbg !1250, !tbaa !882
  %57 = getelementptr inbounds float** %56, i64 %53, !dbg !1250
  %58 = load float** %57, align 8, !dbg !1250, !tbaa !882
  %59 = getelementptr inbounds float* %58, i64 %55, !dbg !1250
  %60 = load float* %59, align 4, !dbg !1250, !tbaa !805
  %61 = fpext float %60 to double, !dbg !1250
  %62 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %52, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), double %61) #12, !dbg !1251
  %63 = load i32* @rand_theta_incoh.i, align 4, !dbg !1243, !tbaa !909
  %64 = add nsw i32 %63, 1, !dbg !1243
  store i32 %64, i32* @rand_theta_incoh.i, align 4, !dbg !1243, !tbaa !909
  %65 = icmp ult i32 %64, 6, !dbg !1252
  %66 = load %struct.__sFILE** @debug, align 8, !dbg !1246, !tbaa !882
  br i1 %65, label %51, label %67, !dbg !1247

; <label>:67                                      ; preds = %51
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %66), !dbg !1253
  %68 = load i32* @rand_theta_incoh.j, align 4, !dbg !1233, !tbaa !909
  %69 = add nsw i32 %68, 1, !dbg !1233
  store i32 %69, i32* @rand_theta_incoh.j, align 4, !dbg !1233, !tbaa !909
  %70 = icmp slt i32 %69, 450, !dbg !1254
  br i1 %70, label %44, label %.loopexit, !dbg !1236

.loopexit:                                        ; preds = %67, %39
  store i1 true, i1* @rand_theta_incoh.bFirst, align 1
  br label %71, !dbg !1255

; <label>:71                                      ; preds = %0, %.loopexit
  %72 = tail call float @rando(i32* %seed) #12, !dbg !1256
  tail call void @llvm.dbg.value(metadata float %72, i64 0, metadata !328, metadata !677), !dbg !1257
  store i32 0, i32* @rand_theta_incoh.j, align 4, !dbg !1258, !tbaa !909
  %73 = sext i32 %Eindex to i64, !dbg !1261
  %74 = load float*** @rand_theta_incoh.intp, align 8, !dbg !1261, !tbaa !882
  %75 = getelementptr inbounds float** %74, i64 %73, !dbg !1261
  %76 = load float** %75, align 8, !dbg !1261, !tbaa !882
  br label %80, !dbg !1262

; <label>:77                                      ; preds = %80
  %78 = trunc i64 %indvars.iv.next to i32, !dbg !1258
  store i32 %78, i32* @rand_theta_incoh.j, align 4, !dbg !1258, !tbaa !909
  %79 = icmp slt i64 %indvars.iv.next, 450, !dbg !1263
  br i1 %79, label %80, label %.critedge, !dbg !1262

; <label>:80                                      ; preds = %71, %77
  %81 = phi i32 [ 0, %71 ], [ %78, %77 ]
  %indvars.iv = phi i64 [ 0, %71 ], [ %indvars.iv.next, %77 ]
  %82 = getelementptr inbounds float* %76, i64 %indvars.iv, !dbg !1261
  %83 = load float* %82, align 4, !dbg !1261, !tbaa !805
  %84 = fcmp ogt float %72, %83, !dbg !1264
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1262
  br i1 %84, label %77, label %.critedge, !dbg !1265

.critedge:                                        ; preds = %77, %80
  %85 = phi i32 [ %78, %77 ], [ %81, %80 ]
  %86 = add nsw i32 %85, -1, !dbg !1266
  %87 = sitofp i32 %86 to float, !dbg !1267
  %88 = sext i32 %86 to i64, !dbg !1268
  %89 = getelementptr inbounds float* %76, i64 %88, !dbg !1268
  %90 = load float* %89, align 4, !dbg !1268, !tbaa !805
  %91 = fsub float %72, %90, !dbg !1269
  %92 = sext i32 %85 to i64, !dbg !1270
  %93 = getelementptr inbounds float* %76, i64 %92, !dbg !1270
  %94 = load float* %93, align 4, !dbg !1270, !tbaa !805
  %95 = fsub float %94, %90, !dbg !1271
  %96 = fdiv float %91, %95, !dbg !1272
  %97 = fadd float %87, %96, !dbg !1273
  %98 = fmul float %97, 0x3FC99999A0000000, !dbg !1274
  ret float %98, !dbg !1275
}

; Function Attrs: optsize
declare float @rando(i32*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @rand_vector(float* nocapture %v, i32* %seed) #4 {
  tail call void @llvm.dbg.value(metadata float* %v, i64 0, metadata !338, metadata !677), !dbg !1276
  tail call void @llvm.dbg.value(metadata i32* %seed, i64 0, metadata !339, metadata !677), !dbg !1277
  %1 = tail call float @rando(i32* %seed) #12, !dbg !1278
  %2 = fmul float %1, 1.800000e+02, !dbg !1279
  tail call void @llvm.dbg.value(metadata float %2, i64 0, metadata !340, metadata !677), !dbg !1280
  %3 = tail call float @rando(i32* %seed) #12, !dbg !1281
  %4 = fmul float %3, 3.600000e+02, !dbg !1282
  tail call void @llvm.dbg.value(metadata float %4, i64 0, metadata !341, metadata !677), !dbg !1283
  tail call void @llvm.dbg.value(metadata float %4, i64 0, metadata !572, metadata !677) #6, !dbg !1284
  tail call void @llvm.dbg.value(metadata float %2, i64 0, metadata !573, metadata !677) #6, !dbg !1286
  tail call void @llvm.dbg.value(metadata float* %v, i64 0, metadata !574, metadata !677) #6, !dbg !1287
  %5 = fpext float %4 to double, !dbg !1288
  %6 = tail call double @cos(double %5) #14, !dbg !1289
  %7 = fpext float %2 to double, !dbg !1290
  %8 = tail call double @sin(double %7) #14, !dbg !1291
  %9 = fmul double %6, %8, !dbg !1292
  %10 = fptrunc double %9 to float, !dbg !1289
  store float %10, float* %v, align 4, !dbg !1293, !tbaa !805
  %11 = tail call double @sin(double %5) #14, !dbg !1294
  %12 = fmul double %8, %11, !dbg !1295
  %13 = fptrunc double %12 to float, !dbg !1294
  %14 = getelementptr inbounds float* %v, i64 1, !dbg !1296
  store float %13, float* %14, align 4, !dbg !1297, !tbaa !805
  %15 = tail call double @cos(double %7) #14, !dbg !1298
  %16 = fptrunc double %15 to float, !dbg !1298
  %17 = getelementptr inbounds float* %v, i64 2, !dbg !1299
  store float %16, float* %17, align 4, !dbg !1300, !tbaa !805
  ret void, !dbg !1301
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @electron_cross_section(%struct.__sFILE* nocapture readnone %fp, float* nocapture readonly %v, float %mass, i32 %nelec) #8 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !346, metadata !677), !dbg !1302
  tail call void @llvm.dbg.value(metadata float* %v, i64 0, metadata !347, metadata !677), !dbg !1303
  tail call void @llvm.dbg.value(metadata float %mass, i64 0, metadata !348, metadata !677), !dbg !1304
  tail call void @llvm.dbg.value(metadata i32 %nelec, i64 0, metadata !349, metadata !677), !dbg !1305
  tail call void @llvm.dbg.value(metadata float 0x3FAB185480000000, i64 0, metadata !361, metadata !677), !dbg !1306
  %1 = fpext float %mass to double, !dbg !1307
  %2 = fmul double %1, 5.000000e-01, !dbg !1308
  tail call void @llvm.dbg.value(metadata float* %v, i64 0, metadata !579, metadata !677), !dbg !1309
  tail call void @llvm.dbg.value(metadata float* %v, i64 0, metadata !580, metadata !677), !dbg !1311
  %3 = load float* %v, align 4, !dbg !1312, !tbaa !805
  %4 = fmul float %3, %3, !dbg !1313
  %5 = getelementptr inbounds float* %v, i64 1, !dbg !1314
  %6 = load float* %5, align 4, !dbg !1314, !tbaa !805
  %7 = fmul float %6, %6, !dbg !1315
  %8 = fadd float %4, %7, !dbg !1316
  %9 = getelementptr inbounds float* %v, i64 2, !dbg !1317
  %10 = load float* %9, align 4, !dbg !1317, !tbaa !805
  %11 = fmul float %10, %10, !dbg !1318
  %12 = fadd float %8, %11, !dbg !1319
  %13 = fpext float %12 to double, !dbg !1320
  %14 = fmul double %2, %13, !dbg !1321
  %15 = fptrunc double %14 to float, !dbg !1322
  tail call void @llvm.dbg.value(metadata float %15, i64 0, metadata !350, metadata !677), !dbg !1323
  tail call void @llvm.dbg.value(metadata float 0x409484A900000000, i64 0, metadata !355, metadata !677), !dbg !1324
  tail call void @llvm.dbg.value(metadata float 0x409484A900000000, i64 0, metadata !351, metadata !677), !dbg !1325
  tail call void @llvm.dbg.value(metadata float 0x409484A900000000, i64 0, metadata !352, metadata !677), !dbg !1326
  %16 = sitofp i32 %nelec to float, !dbg !1327
  tail call void @llvm.dbg.value(metadata float %16, i64 0, metadata !356, metadata !677), !dbg !1328
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, i64 0, metadata !354, metadata !677), !dbg !1329
  %17 = fdiv float %15, 0x409484A900000000, !dbg !1330
  tail call void @llvm.dbg.value(metadata float %17, i64 0, metadata !357, metadata !677), !dbg !1331
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, i64 0, metadata !358, metadata !677), !dbg !1332
  tail call void @llvm.dbg.value(metadata float 0x3FAB185480000000, i64 0, metadata !567, metadata !677), !dbg !1333
  %18 = fpext float %16 to double, !dbg !1335
  %19 = fmul double %18, 0x3FA204BEBAEEAAAF, !dbg !1336
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, i64 0, metadata !567, metadata !677), !dbg !1337
  %20 = fptrunc double %19 to float, !dbg !1339
  tail call void @llvm.dbg.value(metadata float %20, i64 0, metadata !353, metadata !677), !dbg !1340
  %21 = fpext float %17 to double, !dbg !1341
  %22 = tail call double @log(double %21) #14, !dbg !1342
  %23 = fptrunc double %22 to float, !dbg !1342
  tail call void @llvm.dbg.value(metadata float %23, i64 0, metadata !359, metadata !677), !dbg !1343
  %24 = fadd float %17, 1.000000e+00, !dbg !1344
  %25 = fadd float %24, 1.000000e+00, !dbg !1345
  %26 = fdiv float %20, %25, !dbg !1346
  %27 = fpext float %26 to double, !dbg !1347
  %28 = fpext float %23 to double, !dbg !1348
  %29 = fmul double %28, 5.000000e-01, !dbg !1349
  tail call void @llvm.dbg.value(metadata float %17, i64 0, metadata !567, metadata !677), !dbg !1350
  %30 = fmul float %17, %17, !dbg !1352
  %31 = fdiv float 1.000000e+00, %30, !dbg !1353
  %32 = fsub float 1.000000e+00, %31, !dbg !1354
  %33 = fpext float %32 to double, !dbg !1355
  %34 = fmul double %29, %33, !dbg !1356
  %35 = fdiv float 1.000000e+00, %17, !dbg !1357
  %36 = fsub float 1.000000e+00, %35, !dbg !1358
  %37 = fdiv float %23, %24, !dbg !1359
  %38 = fsub float %36, %37, !dbg !1360
  %39 = fpext float %38 to double, !dbg !1361
  %40 = fadd double %34, %39, !dbg !1362
  %41 = fmul double %27, %40, !dbg !1363
  %42 = fptrunc double %41 to float, !dbg !1347
  tail call void @llvm.dbg.value(metadata float %42, i64 0, metadata !360, metadata !677), !dbg !1364
  ret float %42, !dbg !1365
}

; Function Attrs: nounwind optsize readnone
declare double @log(double) #10

; Function Attrs: nounwind optsize ssp uwtable
define i32 @khole_decay(%struct.__sFILE* nocapture readnone %fp, %struct.t_cross_atom* nocapture %ca, [3 x float]* nocapture readnone %x, [3 x float]* nocapture %v, i32 %ion, i32* %seed, float %dt) #4 {
  %dv = alloca [3 x float], align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !369, metadata !677), !dbg !1366
  tail call void @llvm.dbg.value(metadata %struct.t_cross_atom* %ca, i64 0, metadata !370, metadata !677), !dbg !1367
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !371, metadata !677), !dbg !1368
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !372, metadata !677), !dbg !1369
  tail call void @llvm.dbg.value(metadata i32 %ion, i64 0, metadata !373, metadata !677), !dbg !1370
  tail call void @llvm.dbg.value(metadata i32* %seed, i64 0, metadata !374, metadata !677), !dbg !1371
  tail call void @llvm.dbg.value(metadata float %dt, i64 0, metadata !375, metadata !677), !dbg !1372
  tail call void @llvm.dbg.declare(metadata [3 x float]* %dv, metadata !376, metadata !677), !dbg !1373
  %1 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 6, !dbg !1374
  %2 = load float* %1, align 4, !dbg !1374, !tbaa !933
  %3 = fcmp olt float %2, 0.000000e+00, !dbg !1376
  %.phi.trans.insert5 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %.pre6 = load i32* %.phi.trans.insert5, align 4, !dbg !1377, !tbaa !846
  br i1 %3, label %._crit_edge4, label %4, !dbg !1380

; <label>:4                                       ; preds = %0
  %5 = sext i32 %.pre6 to i64, !dbg !1381
  %6 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %5, i32 3, !dbg !1382
  %7 = load float* %6, align 4, !dbg !1382, !tbaa !1383
  %fabsf = tail call float @fabsf(float %7) #10, !dbg !1384
  %8 = fpext float %fabsf to double, !dbg !1384
  %9 = fcmp olt double %8, 1.200000e-38, !dbg !1385
  br i1 %9, label %._crit_edge4, label %16, !dbg !1386

._crit_edge4:                                     ; preds = %0, %4
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1387, !tbaa !882
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %10, i64 0, metadata !226, metadata !677) #6, !dbg !1388
  tail call void @llvm.dbg.value(metadata %struct.t_cross_atom* %ca, i64 0, metadata !227, metadata !677) #6, !dbg !1389
  tail call void @llvm.dbg.value(metadata i32 %ion, i64 0, metadata !228, metadata !677) #6, !dbg !1390
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !229, metadata !677) #6, !dbg !1391
  tail call void @llvm.dbg.value(metadata i32 451, i64 0, metadata !230, metadata !677) #6, !dbg !1392
  %11 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !1393
  %12 = load i32* %11, align 4, !dbg !1393, !tbaa !849
  %13 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !1394
  %14 = load i32* %13, align 4, !dbg !1394, !tbaa !851
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 451, i32 %ion, i32 %.pre6, i32 %12, i32 %14) #12, !dbg !1395
  tail call void @exit(i32 1) #16, !dbg !1396
  unreachable, !dbg !1396

; <label>:16                                      ; preds = %4
  %17 = tail call float @rando(i32* %seed) #12, !dbg !1397
  %18 = load i32* %.phi.trans.insert5, align 4, !dbg !1399, !tbaa !846
  %19 = sext i32 %18 to i64, !dbg !1400
  %20 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %19, i32 3, !dbg !1401
  %21 = load float* %20, align 4, !dbg !1401, !tbaa !1383
  %22 = fdiv float %dt, %21, !dbg !1402
  %23 = fcmp olt float %17, %22, !dbg !1403
  br i1 %23, label %24, label %68, !dbg !1404

; <label>:24                                      ; preds = %16
  %25 = load %struct.__sFILE** @debug, align 8, !dbg !1405, !tbaa !882
  %26 = icmp eq %struct.__sFILE* %25, null, !dbg !1405
  br i1 %26, label %29, label %27, !dbg !1408

; <label>:27                                      ; preds = %24
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str17, i64 0, i64 0), i64 31, i64 1, %struct.__sFILE* %25), !dbg !1409
  br label %29, !dbg !1409

; <label>:29                                      ; preds = %24, %27
  %30 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !1410
  %31 = load i32* %30, align 4, !dbg !1411, !tbaa !849
  %32 = add nsw i32 %31, 1, !dbg !1411
  store i32 %32, i32* %30, align 4, !dbg !1411, !tbaa !849
  %33 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !1412
  %34 = load i32* %33, align 4, !dbg !1413, !tbaa !851
  %35 = add nsw i32 %34, -1, !dbg !1413
  store i32 %35, i32* %33, align 4, !dbg !1413, !tbaa !851
  %36 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 0, !dbg !1414
  call void @rand_vector(float* %36, i32* %seed) #15, !dbg !1415
  %37 = load float* %1, align 4, !dbg !1416, !tbaa !933
  tail call void @llvm.dbg.value(metadata float %37, i64 0, metadata !377, metadata !677), !dbg !1417
  %38 = load %struct.__sFILE** @debug, align 8, !dbg !1418, !tbaa !882
  %39 = icmp eq %struct.__sFILE* %38, null, !dbg !1418
  br i1 %39, label %._crit_edge, label %40, !dbg !1420

._crit_edge:                                      ; preds = %29
  %.pre = load float* %36, align 4, !dbg !1421, !tbaa !805
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1
  %.pre1 = load float* %.phi.trans.insert, align 4, !dbg !1423, !tbaa !805
  %.phi.trans.insert2 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2
  %.pre3 = load float* %.phi.trans.insert2, align 4, !dbg !1424, !tbaa !805
  br label %51, !dbg !1420

; <label>:40                                      ; preds = %29
  %41 = fpext float %37 to double, !dbg !1425
  %42 = load float* %36, align 4, !dbg !1426, !tbaa !805
  %43 = fpext float %42 to double, !dbg !1426
  %44 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1, !dbg !1427
  %45 = load float* %44, align 4, !dbg !1427, !tbaa !805
  %46 = fpext float %45 to double, !dbg !1427
  %47 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2, !dbg !1428
  %48 = load float* %47, align 4, !dbg !1428, !tbaa !805
  %49 = fpext float %48 to double, !dbg !1428
  %50 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %38, i8* getelementptr inbounds ([48 x i8]* @.str18, i64 0, i64 0), double %41, double %43, double %46, double %49) #12, !dbg !1429
  br label %51, !dbg !1429

; <label>:51                                      ; preds = %._crit_edge, %40
  %.pre-phi8 = phi float* [ %.phi.trans.insert2, %._crit_edge ], [ %47, %40 ], !dbg !1424
  %.pre-phi7 = phi float* [ %.phi.trans.insert, %._crit_edge ], [ %44, %40 ], !dbg !1423
  %52 = phi float [ %.pre3, %._crit_edge ], [ %48, %40 ]
  %53 = phi float [ %.pre1, %._crit_edge ], [ %45, %40 ]
  %54 = phi float [ %.pre, %._crit_edge ], [ %42, %40 ]
  tail call void @llvm.dbg.value(metadata float %37, i64 0, metadata !585, metadata !677), !dbg !1430
  tail call void @llvm.dbg.value(metadata float* %36, i64 0, metadata !586, metadata !677), !dbg !1431
  tail call void @llvm.dbg.value(metadata float* %36, i64 0, metadata !587, metadata !677), !dbg !1432
  %55 = fmul float %37, %54, !dbg !1433
  store float %55, float* %36, align 4, !dbg !1434, !tbaa !805
  %56 = fmul float %37, %53, !dbg !1435
  store float %56, float* %.pre-phi7, align 4, !dbg !1436, !tbaa !805
  %57 = fmul float %37, %52, !dbg !1437
  store float %57, float* %.pre-phi8, align 4, !dbg !1438, !tbaa !805
  %58 = sext i32 %ion to i64, !dbg !1439
  %59 = getelementptr inbounds [3 x float]* %v, i64 %58, i64 0, !dbg !1439
  tail call void @llvm.dbg.value(metadata float* %59, i64 0, metadata !592, metadata !677), !dbg !1440
  tail call void @llvm.dbg.value(metadata float* %36, i64 0, metadata !593, metadata !677), !dbg !1442
  %60 = load float* %59, align 4, !dbg !1443, !tbaa !805
  %61 = fadd float %60, %55, !dbg !1444
  tail call void @llvm.dbg.value(metadata float %61, i64 0, metadata !594, metadata !677), !dbg !1445
  %62 = getelementptr inbounds [3 x float]* %v, i64 %58, i64 1, !dbg !1446
  %63 = load float* %62, align 4, !dbg !1446, !tbaa !805
  %64 = fadd float %63, %56, !dbg !1447
  tail call void @llvm.dbg.value(metadata float %64, i64 0, metadata !595, metadata !677), !dbg !1448
  %65 = getelementptr inbounds [3 x float]* %v, i64 %58, i64 2, !dbg !1449
  %66 = load float* %65, align 4, !dbg !1449, !tbaa !805
  %67 = fadd float %57, %66, !dbg !1450
  tail call void @llvm.dbg.value(metadata float %67, i64 0, metadata !596, metadata !677), !dbg !1451
  store float %61, float* %59, align 4, !dbg !1452, !tbaa !805
  store float %64, float* %62, align 4, !dbg !1453, !tbaa !805
  store float %67, float* %65, align 4, !dbg !1454, !tbaa !805
  br label %68, !dbg !1455

; <label>:68                                      ; preds = %16, %51
  %.0 = phi i32 [ 1, %51 ], [ 0, %16 ]
  ret i32 %.0, !dbg !1456
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #11

; Function Attrs: nounwind optsize ssp uwtable
define void @ionize(%struct.__sFILE* nocapture %fp, %struct.t_mdatoms* nocapture readonly %md, i8*** nocapture readonly %atomname, float %t, %struct.t_inputrec* nocapture readonly %ir, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %v, i32 %start, i32 %end, [3 x float]* nocapture readonly %box, %struct.t_commrec* %cr) #4 {
  %pcoll = alloca [2 x float], align 4
  %dv = alloca [3 x float], align 4
  %ddv = alloca [3 x float], align 4
  %nbuf = alloca [2 x i32], align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !508, metadata !677), !dbg !1457
  tail call void @llvm.dbg.value(metadata %struct.t_mdatoms* %md, i64 0, metadata !509, metadata !677), !dbg !1458
  tail call void @llvm.dbg.value(metadata i8*** %atomname, i64 0, metadata !510, metadata !677), !dbg !1459
  tail call void @llvm.dbg.value(metadata float %t, i64 0, metadata !511, metadata !677), !dbg !1460
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !512, metadata !677), !dbg !1461
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !513, metadata !677), !dbg !1462
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !514, metadata !677), !dbg !1463
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !515, metadata !677), !dbg !1464
  tail call void @llvm.dbg.value(metadata i32 %end, i64 0, metadata !516, metadata !677), !dbg !1465
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !517, metadata !677), !dbg !1466
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !518, metadata !677), !dbg !1467
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !520, metadata !677), !dbg !1468
  tail call void @llvm.dbg.declare(metadata [2 x float]* %pcoll, metadata !524, metadata !677), !dbg !1469
  tail call void @llvm.dbg.declare(metadata [3 x float]* %dv, metadata !529, metadata !677), !dbg !1470
  tail call void @llvm.dbg.declare(metadata [3 x float]* %ddv, metadata !530, metadata !677), !dbg !1471
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !531, metadata !677), !dbg !1472
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %nbuf, metadata !547, metadata !677), !dbg !1473
  %.b = load i1* @ionize.bFirst, align 1
  br i1 %.b, label %129, label %1, !dbg !1474

; <label>:1                                       ; preds = %0
  %2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76, !dbg !1475
  %3 = bitcast float* %2 to i32*, !dbg !1475
  %4 = load i32* %3, align 4, !dbg !1475, !tbaa !1478
  store i32 %4, i32* bitcast (float* @ionize.t0 to i32*), align 4, !dbg !1481, !tbaa !805
  %5 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77, !dbg !1482
  %6 = bitcast float* %5 to i32*, !dbg !1482
  %7 = load i32* %6, align 4, !dbg !1482, !tbaa !1483
  store i32 %7, i32* bitcast (float* @ionize.nphot to i32*), align 4, !dbg !1484, !tbaa !805
  %8 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78, !dbg !1485
  %9 = bitcast float* %8 to i32*, !dbg !1485
  %10 = load i32* %9, align 4, !dbg !1485, !tbaa !1486
  store i32 %10, i32* bitcast (float* @ionize.width to i32*), align 4, !dbg !1487, !tbaa !805
  %11 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79, !dbg !1488
  %12 = bitcast float* %11 to i32*, !dbg !1488
  %13 = load i32* %12, align 4, !dbg !1488, !tbaa !1489
  store i32 %13, i32* bitcast (float* @ionize.rho to i32*), align 4, !dbg !1490, !tbaa !805
  %14 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72, !dbg !1491
  %15 = load i32* %14, align 4, !dbg !1491, !tbaa !1492
  store i32 %15, i32* @ionize_seed, align 4, !dbg !1493, !tbaa !909
  %16 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73, !dbg !1494
  %17 = load i32* %16, align 4, !dbg !1494, !tbaa !1495
  store i32 %17, i32* @ionize.ephot, align 4, !dbg !1496, !tbaa !909
  %18 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74, !dbg !1497
  %19 = load i32* %18, align 4, !dbg !1497, !tbaa !1498
  store i32 %19, i32* @ionize.mode, align 4, !dbg !1499, !tbaa !909
  %20 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75, !dbg !1500
  %21 = load i32* %20, align 4, !dbg !1500, !tbaa !1501
  %22 = sitofp i32 %21 to double, !dbg !1502
  %23 = fmul double %22, 1.000000e-03, !dbg !1503
  %24 = fptrunc double %23 to float, !dbg !1504
  store float %24, float* @ionize.interval, align 4, !dbg !1505, !tbaa !805
  %25 = bitcast i32 %10 to float
  %26 = fcmp ole float %25, 0.000000e+00, !dbg !1506
  %27 = bitcast i32 %7 to float
  %28 = fcmp ole float %27, 0.000000e+00, !dbg !1508
  %or.cond = or i1 %26, %28, !dbg !1509
  br i1 %or.cond, label %29, label %32, !dbg !1509

; <label>:29                                      ; preds = %1
  %30 = fpext float %25 to double, !dbg !1510
  %31 = fpext float %27 to double, !dbg !1511
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([100 x i8]* @.str24, i64 0, i64 0), double %30, double %31) #12, !dbg !1512
  %.pre = load i32* @ionize.mode, align 4, !dbg !1513, !tbaa !909
  br label %32, !dbg !1512

; <label>:32                                      ; preds = %1, %29
  %33 = phi i32 [ %19, %1 ], [ %.pre, %29 ]
  %34 = icmp ugt i32 %33, 2, !dbg !1515
  br i1 %34, label %35, label %36, !dbg !1515

; <label>:35                                      ; preds = %32
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str25, i64 0, i64 0), i32 2) #12, !dbg !1516
  %.pr = load i32* @ionize.mode, align 4, !dbg !1517, !tbaa !909
  br label %36, !dbg !1516

; <label>:36                                      ; preds = %32, %35
  %37 = phi i32 [ %33, %32 ], [ %.pr, %35 ], !dbg !1517
  switch i32 %37, label %68 [
    i32 0, label %38
    i32 1, label %53
  ], !dbg !1518

; <label>:38                                      ; preds = %36
  %39 = load float* @ionize.nphot, align 4, !dbg !1519, !tbaa !805
  %40 = fpext float %39 to double, !dbg !1519
  %41 = load float* @ionize.rho, align 4, !dbg !1521, !tbaa !805
  %42 = fmul float %41, 5.000000e-01, !dbg !1522
  tail call void @llvm.dbg.value(metadata float %42, i64 0, metadata !567, metadata !677), !dbg !1523
  %43 = fmul float %42, %42, !dbg !1525
  %44 = fpext float %43 to double, !dbg !1526
  %45 = fmul double %44, 0x400921FB54442D18, !dbg !1527
  %46 = fdiv double %40, %45, !dbg !1528
  %47 = fmul double %46, 1.000000e-10, !dbg !1529
  %48 = load float* @ionize.width, align 4, !dbg !1530, !tbaa !805
  %49 = fpext float %48 to double, !dbg !1530
  %50 = fmul double %49, 0x40040D931FF62705, !dbg !1531
  %51 = fdiv double %47, %50, !dbg !1532
  %52 = fptrunc double %51 to float, !dbg !1533
  store float %52, float* @ionize.imax, align 4, !dbg !1534, !tbaa !805
  br label %68, !dbg !1535

; <label>:53                                      ; preds = %36
  %54 = load float* @ionize.nphot, align 4, !dbg !1536, !tbaa !805
  %55 = fpext float %54 to double, !dbg !1536
  %56 = load float* @ionize.rho, align 4, !dbg !1537, !tbaa !805
  %57 = fmul float %56, 5.000000e-01, !dbg !1538
  tail call void @llvm.dbg.value(metadata float %57, i64 0, metadata !567, metadata !677), !dbg !1539
  %58 = fmul float %57, %57, !dbg !1541
  %59 = fpext float %58 to double, !dbg !1542
  %60 = fmul double %59, 0x400921FB54442D18, !dbg !1543
  %61 = fdiv double %55, %60, !dbg !1544
  %62 = fmul double %61, 1.000000e-10, !dbg !1545
  %63 = load float* @ionize.width, align 4, !dbg !1546, !tbaa !805
  %64 = fpext float %63 to double, !dbg !1546
  %65 = fmul double %64, 0x40040D931FF62705, !dbg !1547
  %66 = fdiv double %62, %65, !dbg !1548
  %67 = fptrunc double %66 to float, !dbg !1549
  store float %67, float* @ionize.imax, align 4, !dbg !1550, !tbaa !805
  br label %68, !dbg !1551

; <label>:68                                      ; preds = %36, %53, %38
  %69 = load i32* @ionize_seed, align 4, !dbg !1552, !tbaa !909
  %70 = icmp eq i32 %69, 0, !dbg !1554
  br i1 %70, label %71, label %73, !dbg !1555

; <label>:71                                      ; preds = %68
  %72 = tail call i32 @make_seed() #12, !dbg !1556
  store i32 %72, i32* @ionize_seed, align 4, !dbg !1557, !tbaa !909
  br label %73, !dbg !1558

; <label>:73                                      ; preds = %71, %68
  %74 = phi i32 [ %72, %71 ], [ %69, %68 ]
  %75 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1559
  %76 = load i32* %75, align 4, !dbg !1559, !tbaa !1561
  %77 = icmp sgt i32 %76, 1, !dbg !1559
  br i1 %77, label %.preheader36, label %78, !dbg !1559

; <label>:78                                      ; preds = %73
  %79 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !1559
  %80 = load i32* %79, align 4, !dbg !1559, !tbaa !1563
  %81 = icmp sgt i32 %80, 1, !dbg !1559
  br i1 %81, label %.preheader36, label %.preheader35, !dbg !1564

.preheader36:                                     ; preds = %78, %73
  %82 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1565
  %83 = load i32* %82, align 4, !dbg !1565, !tbaa !1569
  %84 = icmp sgt i32 %83, 0, !dbg !1570
  br i1 %84, label %.lr.ph60, label %._crit_edge61, !dbg !1571

.lr.ph60:                                         ; preds = %.preheader36, %.lr.ph60
  %i.059 = phi i32 [ %88, %.lr.ph60 ], [ 0, %.preheader36 ]
  %85 = tail call float @rando(i32* @ionize_seed) #12, !dbg !1572
  %86 = fmul float %85, 0x41E0000000000000, !dbg !1573
  %87 = fptosi float %86 to i32, !dbg !1574
  store i32 %87, i32* @ionize_seed, align 4, !dbg !1575, !tbaa !909
  %88 = add nuw nsw i32 %i.059, 1, !dbg !1576
  tail call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !535, metadata !677), !dbg !1577
  %89 = load i32* %82, align 4, !dbg !1565, !tbaa !1569
  %90 = icmp slt i32 %88, %89, !dbg !1570
  br i1 %90, label %.lr.ph60, label %._crit_edge61, !dbg !1571

._crit_edge61:                                    ; preds = %.lr.ph60, %.preheader36
  %91 = phi i32 [ %74, %.preheader36 ], [ %87, %.lr.ph60 ]
  %92 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([52 x i8]* @.str26, i64 0, i64 0), i32 %91) #12, !dbg !1578
  br label %.preheader35, !dbg !1579

.preheader35:                                     ; preds = %._crit_edge61, %78
  store i32 0, i32* @ionize.Eindex, align 4, !dbg !1580, !tbaa !909
  %93 = load i32* @ionize.ephot, align 4, !dbg !1583, !tbaa !909
  br label %94, !dbg !1584

; <label>:94                                      ; preds = %.preheader35, %98
  %.pr23 = phi i32 [ 0, %.preheader35 ], [ %99, %98 ]
  %indvars.iv75 = phi i64 [ 0, %.preheader35 ], [ %indvars.iv.next76, %98 ]
  %95 = getelementptr inbounds [6 x i32]* @Energies, i64 0, i64 %indvars.iv75, !dbg !1585
  %96 = load i32* %95, align 4, !dbg !1585, !tbaa !909
  %97 = icmp eq i32 %96, %93, !dbg !1586
  br i1 %97, label %.critedge.thread, label %98, !dbg !1587

; <label>:98                                      ; preds = %94
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1, !dbg !1584
  %99 = trunc i64 %indvars.iv.next76 to i32, !dbg !1580
  store i32 %99, i32* @ionize.Eindex, align 4, !dbg !1580, !tbaa !909
  %100 = icmp ult i32 %99, 6, !dbg !1588
  br i1 %100, label %94, label %.critedge, !dbg !1584

.critedge:                                        ; preds = %98
  %101 = icmp eq i32 %99, 6, !dbg !1589
  br i1 %101, label %102, label %.critedge.thread, !dbg !1591

; <label>:102                                     ; preds = %.critedge
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str27, i64 0, i64 0), i32 %93) #12, !dbg !1592
  %.pre78 = load i32* @ionize.Eindex, align 4, !dbg !1593, !tbaa !909
  br label %.critedge.thread, !dbg !1592

.critedge.thread:                                 ; preds = %94, %102, %.critedge
  %103 = phi i32 [ %.pre78, %102 ], [ %99, %.critedge ], [ %.pr23, %94 ]
  %104 = tail call %struct.t_cross_atom* @mk_cross_atom(%struct.__sFILE* %fp, %struct.t_mdatoms* %md, i8*** %atomname, i32 %103) #15, !dbg !1594
  store %struct.t_cross_atom* %104, %struct.t_cross_atom** @ionize.ca, align 8, !dbg !1595, !tbaa !882
  store i32 0, i32* @ionize.dq_tot, align 4, !dbg !1596, !tbaa !909
  store i32 0, i32* @ionize.nkd_tot, align 4, !dbg !1597, !tbaa !909
  %105 = tail call %struct.__sFILE* @xvgropen(i8* getelementptr inbounds ([11 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0)) #12, !dbg !1598
  store %struct.__sFILE* %105, %struct.__sFILE** @ionize.xvg, align 8, !dbg !1599, !tbaa !882
  tail call void @xvgr_legend(%struct.__sFILE* %105, i32 5, i8** getelementptr inbounds ([5 x i8*]* @ionize.leg, i64 0, i64 0)) #12, !dbg !1600
  %106 = tail call %struct.__sFILE* @ffopen(i8* getelementptr inbounds ([11 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str33, i64 0, i64 0)) #12, !dbg !1601
  store %struct.__sFILE* %106, %struct.__sFILE** @ionize.ion, align 8, !dbg !1602, !tbaa !882
  %107 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str34, i64 0, i64 0), i64 42, i64 1, %struct.__sFILE* %fp), !dbg !1603
  %108 = load float* @ionize.imax, align 4, !dbg !1604, !tbaa !805
  %109 = fpext float %108 to double, !dbg !1604
  %110 = load float* @ionize.t0, align 4, !dbg !1605, !tbaa !805
  %111 = fpext float %110 to double, !dbg !1605
  %112 = load float* @ionize.width, align 4, !dbg !1606, !tbaa !805
  %113 = fpext float %112 to double, !dbg !1606
  %114 = load i32* @ionize_seed, align 4, !dbg !1607, !tbaa !909
  %115 = load float* @ionize.nphot, align 4, !dbg !1608, !tbaa !805
  %116 = fpext float %115 to double, !dbg !1608
  %117 = load float* @ionize.rho, align 4, !dbg !1609, !tbaa !805
  %118 = fpext float %117 to double, !dbg !1609
  %119 = load i32* @ionize.ephot, align 4, !dbg !1610, !tbaa !909
  %120 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([102 x i8]* @.str35, i64 0, i64 0), double %109, double %111, double %113, i32 %114, double %116, double %118, i32 %119) #12, !dbg !1611
  %121 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([99 x i8]* @.str36, i64 0, i64 0), double 5.120000e+02, double 9.400000e+05, double 0x41124C41D4FDF3B6) #12, !dbg !1612
  %122 = load float* @ionize.interval, align 4, !dbg !1613, !tbaa !805
  %123 = fpext float %122 to double, !dbg !1613
  %124 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str37, i64 0, i64 0), double %123) #12, !dbg !1614
  %125 = load i32* @ionize.Eindex, align 4, !dbg !1615, !tbaa !909
  %126 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str38, i64 0, i64 0), i32 %125) #12, !dbg !1616
  %127 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([45 x i8]* @.str39, i64 0, i64 0), i32 %start, i32 %end) #12, !dbg !1617
  %128 = tail call i32 @fflush(%struct.__sFILE* %fp) #12, !dbg !1618
  store i1 true, i1* @ionize.bFirst, align 1
  br label %129, !dbg !1619

; <label>:129                                     ; preds = %0, %.critedge.thread
  %130 = load float* @ionize.t0, align 4, !dbg !1620, !tbaa !805
  tail call void @llvm.dbg.value(metadata float %130, i64 0, metadata !525, metadata !677), !dbg !1621
  %131 = load float* @ionize.interval, align 4, !dbg !1622, !tbaa !805
  %132 = fcmp ogt float %131, 0.000000e+00, !dbg !1624
  br i1 %132, label %.preheader34, label %.loopexit, !dbg !1625

.preheader34:                                     ; preds = %129
  %133 = fpext float %t to double, !dbg !1626
  %134 = fpext float %130 to double, !dbg !1627
  %135 = fpext float %131 to double, !dbg !1628
  %136 = fmul double %135, 5.000000e-01, !dbg !1629
  %137 = fadd double %134, %136, !dbg !1630
  %138 = fcmp ogt double %133, %137, !dbg !1631
  br i1 %138, label %.lr.ph56, label %.loopexit, !dbg !1632

.lr.ph56:                                         ; preds = %.preheader34, %.lr.ph56
  %tmax.055 = phi float [ %139, %.lr.ph56 ], [ %130, %.preheader34 ]
  %139 = fadd float %tmax.055, %131, !dbg !1633
  tail call void @llvm.dbg.value(metadata float %139, i64 0, metadata !525, metadata !677), !dbg !1621
  %140 = fpext float %139 to double, !dbg !1627
  %141 = fadd double %140, %136, !dbg !1630
  %142 = fcmp ogt double %133, %141, !dbg !1631
  br i1 %142, label %.lr.ph56, label %.loopexit, !dbg !1632

.loopexit:                                        ; preds = %.lr.ph56, %.preheader34, %129
  %tmax.1 = phi float [ %130, %129 ], [ %130, %.preheader34 ], [ %139, %.lr.ph56 ]
  %143 = load float* @ionize.imax, align 4, !dbg !1634, !tbaa !805
  %144 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !1635
  %145 = load float* %144, align 4, !dbg !1635, !tbaa !1636
  %146 = fmul float %143, %145, !dbg !1637
  %147 = fpext float %146 to double, !dbg !1634
  %148 = fsub float %t, %tmax.1, !dbg !1638
  %149 = load float* @ionize.width, align 4, !dbg !1639, !tbaa !805
  %150 = fdiv float %148, %149, !dbg !1640
  tail call void @llvm.dbg.value(metadata float %150, i64 0, metadata !567, metadata !677), !dbg !1641
  %151 = fmul float %150, %150, !dbg !1643
  %152 = fpext float %151 to double, !dbg !1644
  %153 = fmul double %152, -5.000000e-01, !dbg !1645
  %154 = tail call double @exp(double %153) #14, !dbg !1646
  %155 = fmul double %147, %154, !dbg !1647
  %156 = fptrunc double %155 to float, !dbg !1634
  tail call void @llvm.dbg.value(metadata float %156, i64 0, metadata !521, metadata !677), !dbg !1648
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !541, metadata !677), !dbg !1649
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !543, metadata !677), !dbg !1650
  %157 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !1651
  %158 = load float* %157, align 4, !dbg !1651, !tbaa !805
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !526, metadata !677), !dbg !1652
  %159 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1653
  %160 = load float* %159, align 4, !dbg !1653, !tbaa !805
  %161 = insertelement <2 x float> undef, float %158, i32 0, !dbg !1654
  %162 = insertelement <2 x float> %161, float %160, i32 1, !dbg !1654
  %163 = fmul <2 x float> %162, <float 5.000000e-01, float 5.000000e-01>, !dbg !1654
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !527, metadata !677), !dbg !1655
  %164 = load float* @ionize.rho, align 4, !dbg !1656, !tbaa !805
  tail call void @llvm.dbg.value(metadata float %164, i64 0, metadata !567, metadata !677), !dbg !1657
  %165 = fmul float %164, %164, !dbg !1659
  tail call void @llvm.dbg.value(metadata float %165, i64 0, metadata !528, metadata !677), !dbg !1660
  %166 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !1661
  %167 = load i32* %166, align 4, !dbg !1661, !tbaa !863
  %168 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 585, i32 %167, i32 4) #12, !dbg !1661
  %169 = bitcast i8* %168 to i32*, !dbg !1661
  tail call void @llvm.dbg.value(metadata i32* %169, i64 0, metadata !544, metadata !677), !dbg !1662
  %170 = load i32* %166, align 4, !dbg !1663, !tbaa !863
  %171 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 586, i32 %170, i32 4) #12, !dbg !1663
  %172 = bitcast i8* %171 to i32*, !dbg !1663
  tail call void @llvm.dbg.value(metadata i32* %172, i64 0, metadata !545, metadata !677), !dbg !1664
  %173 = load i32* %166, align 4, !dbg !1665, !tbaa !863
  %174 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 587, i32 %173, i32 4) #12, !dbg !1665
  %175 = bitcast i8* %174 to i32*, !dbg !1665
  tail call void @llvm.dbg.value(metadata i32* %175, i64 0, metadata !546, metadata !677), !dbg !1666
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !535, metadata !677), !dbg !1577
  %176 = icmp slt i32 %start, %end, !dbg !1667
  br i1 %176, label %.preheader.lr.ph, label %._crit_edge52, !dbg !1668

.preheader.lr.ph:                                 ; preds = %.loopexit
  %177 = getelementptr inbounds [2 x float]* %pcoll, i64 0, i64 0, !dbg !1669
  %178 = getelementptr inbounds [2 x float]* %pcoll, i64 0, i64 1, !dbg !1670
  %179 = fpext float %t to double, !dbg !1671
  %180 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 0, !dbg !1673
  %181 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1, !dbg !1674
  %182 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2, !dbg !1676
  %183 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4, !dbg !1677
  %184 = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 0, !dbg !1680
  %185 = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 1, !dbg !1681
  %186 = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 2, !dbg !1683
  %187 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6, !dbg !1684
  %188 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7, !dbg !1689
  %189 = sext i32 %start to i64
  %190 = add i32 %end, -1, !dbg !1668
  br label %.preheader, !dbg !1668

.preheader:                                       ; preds = %477, %.preheader.lr.ph
  %indvars.iv72 = phi i64 [ %189, %.preheader.lr.ph ], [ %indvars.iv.next73, %477 ]
  %E_lost.051 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %E_lost.3, %477 ]
  %nkdecay.048 = phi i32 [ 0, %.preheader.lr.ph ], [ %nkdecay.1.lcssa, %477 ]
  %dq.046 = phi i32 [ 0, %.preheader.lr.ph ], [ %dq.3, %477 ]
  br label %191, !dbg !1690

; <label>:191                                     ; preds = %191, %.preheader
  %indvars.iv63 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next64, %191 ]
  %192 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !1692, !tbaa !882
  %193 = getelementptr inbounds %struct.t_cross_atom* %192, i64 %indvars.iv72, !dbg !1692
  %194 = trunc i64 %indvars.iv63 to i32, !dbg !1694
  %195 = call float @xray_cross_section(i32 %194, %struct.t_cross_atom* %193) #15, !dbg !1694
  %196 = fmul float %156, %195, !dbg !1695
  %197 = getelementptr inbounds [2 x float]* %pcoll, i64 0, i64 %indvars.iv63, !dbg !1696
  store float %196, float* %197, align 4, !dbg !1697, !tbaa !805
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1, !dbg !1690
  %exitcond = icmp eq i64 %indvars.iv.next64, 2, !dbg !1690
  br i1 %exitcond, label %198, label %191, !dbg !1690

; <label>:198                                     ; preds = %191
  %199 = load float* %177, align 4, !dbg !1669, !tbaa !805
  %200 = fsub float 1.000000e+00, %199, !dbg !1698
  %201 = load float* %178, align 4, !dbg !1670, !tbaa !805
  %202 = fsub float 1.000000e+00, %201, !dbg !1699
  %203 = fmul float %200, %202, !dbg !1700
  %204 = fsub float 1.000000e+00, %203, !dbg !1701
  call void @llvm.dbg.value(metadata float %204, i64 0, metadata !522, metadata !677), !dbg !1702
  %205 = load %struct.__sFILE** @debug, align 8, !dbg !1703, !tbaa !882
  %206 = icmp ne %struct.__sFILE* %205, null, !dbg !1703
  %207 = trunc i64 %indvars.iv72 to i32, !dbg !1704
  %208 = icmp eq i32 %207, 0, !dbg !1704
  %or.cond6 = and i1 %208, %206, !dbg !1705
  br i1 %or.cond6, label %209, label %212, !dbg !1705

; <label>:209                                     ; preds = %198
  %210 = fpext float %204 to double, !dbg !1706
  %211 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %205, i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0), double %210, double %179) #12, !dbg !1707
  br label %212, !dbg !1707

; <label>:212                                     ; preds = %209, %198
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !534, metadata !677), !dbg !1708
  %213 = load i32* @ionize.mode, align 4, !dbg !1709, !tbaa !909
  switch i32 %213, label %234 [
    i32 0, label %214
    i32 1, label %.thread
  ], !dbg !1710

; <label>:214                                     ; preds = %212
  %215 = call float @rando(i32* @ionize_seed) #12, !dbg !1711
  %216 = fcmp olt float %215, %204, !dbg !1713
  br i1 %216, label %217, label %.thread, !dbg !1714

; <label>:217                                     ; preds = %214
  %218 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !1715, !tbaa !882
  %219 = getelementptr inbounds %struct.t_cross_atom* %218, i64 %indvars.iv72, i32 1, !dbg !1716
  %220 = load i32* %219, align 4, !dbg !1716, !tbaa !849
  %221 = getelementptr inbounds %struct.t_cross_atom* %218, i64 %indvars.iv72, i32 0, !dbg !1717
  %222 = load i32* %221, align 4, !dbg !1717, !tbaa !846
  %223 = icmp slt i32 %220, %222, !dbg !1718
  br i1 %223, label %224, label %.thread, !dbg !1719

; <label>:224                                     ; preds = %217
  %225 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv72, i64 0, !dbg !1720
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !567, metadata !677), !dbg !1721
  %226 = bitcast float* %225 to <2 x float>*, !dbg !1720
  %227 = load <2 x float>* %226, align 4, !dbg !1720, !tbaa !805
  %228 = fsub <2 x float> %227, %163, !dbg !1723
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !567, metadata !677), !dbg !1724
  %229 = fmul <2 x float> %228, %228, !dbg !1726
  %230 = extractelement <2 x float> %229, i32 0, !dbg !1727
  %231 = extractelement <2 x float> %229, i32 1, !dbg !1727
  %232 = fadd float %230, %231, !dbg !1727
  %233 = fcmp olt float %232, %165, !dbg !1728
  br i1 %233, label %235, label %.thread, !dbg !1729

; <label>:234                                     ; preds = %212
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([41 x i8]* @.str44, i64 0, i64 0), i32 %213, i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 614) #12, !dbg !1730
  br label %.thread, !dbg !1731

; <label>:235                                     ; preds = %224
  tail call void @llvm.dbg.value(metadata float* %180, i64 0, metadata !601, metadata !677), !dbg !1732
  store float 0.000000e+00, float* %180, align 4, !dbg !1733, !tbaa !805
  store float 0.000000e+00, float* %181, align 4, !dbg !1734, !tbaa !805
  store float 0.000000e+00, float* %182, align 4, !dbg !1735, !tbaa !805
  %236 = fadd float %199, %201, !dbg !1736
  %237 = fdiv float %199, %236, !dbg !1737
  call void @llvm.dbg.value(metadata float %237, i64 0, metadata !523, metadata !677), !dbg !1738
  %238 = call float @rando(i32* @ionize_seed) #12, !dbg !1739
  %239 = fcmp olt float %238, %237, !dbg !1741
  %240 = zext i1 %239 to i32, !dbg !1742
  %. = xor i32 %240, 1, !dbg !1742
  %241 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !1743, !tbaa !882
  %242 = getelementptr inbounds %struct.t_cross_atom* %241, i64 %indvars.iv72, i32 0, !dbg !1744
  %243 = load i32* %242, align 4, !dbg !1744, !tbaa !846
  %244 = icmp slt i32 %243, 3, !dbg !1746
  br i1 %244, label %245, label %249, !dbg !1747

; <label>:245                                     ; preds = %235
  %246 = getelementptr inbounds %struct.t_cross_atom* %241, i64 %indvars.iv72, i32 1, !dbg !1748
  %247 = load i32* %246, align 4, !dbg !1748, !tbaa !849
  %248 = sub nsw i32 %243, %247, !dbg !1749
  %.phi.trans.insert = getelementptr inbounds %struct.t_cross_atom* %241, i64 %indvars.iv72, i32 2
  %.pre79 = load i32* %.phi.trans.insert, align 4, !dbg !1750, !tbaa !851
  br label %number_K.exit, !dbg !1752

; <label>:249                                     ; preds = %235
  %250 = getelementptr inbounds %struct.t_cross_atom* %241, i64 %indvars.iv72, i32 2, !dbg !1753
  %251 = load i32* %250, align 4, !dbg !1753, !tbaa !851
  %252 = sub nsw i32 2, %251, !dbg !1754
  %.phi.trans.insert80 = getelementptr inbounds %struct.t_cross_atom* %241, i64 %indvars.iv72, i32 1
  %.pre81 = load i32* %.phi.trans.insert80, align 4, !dbg !1755, !tbaa !849
  br label %number_K.exit, !dbg !1756

number_K.exit:                                    ; preds = %245, %249
  %253 = phi i32 [ %247, %245 ], [ %.pre81, %249 ]
  %254 = phi i32 [ %.pre79, %245 ], [ %251, %249 ]
  %.0.i = phi i32 [ %248, %245 ], [ %252, %249 ], !dbg !1757
  call void @llvm.dbg.value(metadata i32 %.0.i, i64 0, metadata !539, metadata !677), !dbg !1758
  %255 = add nsw i32 %254, -2, !dbg !1759
  %256 = add nsw i32 %255, %243, !dbg !1760
  %257 = sub i32 %256, %253, !dbg !1761
  call void @llvm.dbg.value(metadata i32 %257, i64 0, metadata !540, metadata !677), !dbg !1762
  %258 = icmp eq i32 %.0.i, 0, !dbg !1763
  br i1 %258, label %267, label %259, !dbg !1764

; <label>:259                                     ; preds = %number_K.exit
  %260 = icmp sgt i32 %257, 0, !dbg !1765
  br i1 %260, label %261, label %267, !dbg !1766

; <label>:261                                     ; preds = %259
  %262 = call float @rando(i32* @ionize_seed) #12, !dbg !1767
  %263 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !1768, !tbaa !882
  %264 = getelementptr inbounds %struct.t_cross_atom* %263, i64 %indvars.iv72, !dbg !1768
  %265 = call float @prob_K(i32 %., %struct.t_cross_atom* %264) #15, !dbg !1769
  %266 = fcmp ogt float %262, %265, !dbg !1770
  br label %267

; <label>:267                                     ; preds = %259, %261, %number_K.exit
  %268 = phi i1 [ true, %number_K.exit ], [ false, %259 ], [ %266, %261 ]
  br i1 %239, label %269, label %347, !dbg !1771

; <label>:269                                     ; preds = %267
  %270 = call float @gauss(float 7.000000e+01, float 2.600000e+01, i32* @ionize_seed) #12, !dbg !1772
  %271 = fpext float %270 to double, !dbg !1772
  %272 = fmul double %271, 0x3F91DF46A2529D39, !dbg !1773
  %273 = fptrunc double %272 to float, !dbg !1774
  call void @llvm.dbg.value(metadata float %273, i64 0, metadata !549, metadata !677), !dbg !1775
  %274 = call float @rando(i32* @ionize_seed) #12, !dbg !1776
  %275 = fpext float %274 to double, !dbg !1776
  %276 = fmul double %275, 0x401921FB54442D18, !dbg !1777
  %277 = fptrunc double %276 to float, !dbg !1778
  call void @llvm.dbg.value(metadata float %277, i64 0, metadata !557, metadata !677), !dbg !1779
  %278 = load i32* @ionize.ephot, align 4, !dbg !1780, !tbaa !909
  %279 = sitofp i32 %278 to float, !dbg !1780
  %280 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !1782, !tbaa !882
  %281 = getelementptr inbounds %struct.t_cross_atom* %280, i64 %indvars.iv72, i32 0, !dbg !1783
  %282 = load i32* %281, align 4, !dbg !1783, !tbaa !846
  %283 = sext i32 %282 to i64, !dbg !1784
  br i1 %268, label %284, label %292, !dbg !1785

; <label>:284                                     ; preds = %269
  %285 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %283, i32 1, !dbg !1786
  %286 = load float* %285, align 4, !dbg !1786, !tbaa !1787
  %287 = getelementptr inbounds %struct.t_cross_atom* %280, i64 %indvars.iv72, i32 1, !dbg !1788
  %288 = load i32* %287, align 4, !dbg !1788, !tbaa !849
  %289 = add nsw i32 %288, 1, !dbg !1789
  %290 = sitofp i32 %289 to float, !dbg !1790
  %291 = fmul float %286, %290, !dbg !1791
  br label %297, !dbg !1792

; <label>:292                                     ; preds = %269
  %293 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %283, i32 0, !dbg !1793
  %294 = load float* %293, align 16, !dbg !1793, !tbaa !915
  %295 = icmp sgt i32 %282, 2, !dbg !1795
  %296 = icmp sgt i32 %257, 0, !dbg !1797
  %or.cond8 = and i1 %296, %295, !dbg !1798
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !532, metadata !677), !dbg !1799
  %.20 = zext i1 %or.cond8 to i32, !dbg !1798
  br label %297, !dbg !1798

; <label>:297                                     ; preds = %292, %284
  %bKHole.0 = phi i32 [ 0, %284 ], [ %.20, %292 ]
  %.pn = phi float [ %291, %284 ], [ %294, %292 ]
  %E_lost.1 = fsub float %279, %.pn, !dbg !1800
  %298 = load %struct.__sFILE** @debug, align 8, !dbg !1801, !tbaa !882
  %299 = icmp eq %struct.__sFILE* %298, null, !dbg !1801
  br i1 %299, label %308, label %300, !dbg !1803

; <label>:300                                     ; preds = %297
  %301 = zext i1 %268 to i64, !dbg !1804
  %302 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %301, !dbg !1804
  %303 = load i8** %302, align 8, !dbg !1804, !tbaa !882
  %304 = zext i32 %bKHole.0 to i64, !dbg !1805
  %305 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %304, !dbg !1805
  %306 = load i8** %305, align 8, !dbg !1805, !tbaa !882
  %307 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %298, i8* getelementptr inbounds ([48 x i8]* @.str45, i64 0, i64 0), i32 %207, i32 %.0.i, i32 %257, i8* %303, i8* %306) #12, !dbg !1806
  br label %308, !dbg !1806

; <label>:308                                     ; preds = %297, %300
  %309 = fcmp olt float %E_lost.1, 0.000000e+00, !dbg !1807
  br i1 %309, label %.thread32, label %310, !dbg !1808

; <label>:310                                     ; preds = %308
  %311 = load float** %183, align 8, !dbg !1677, !tbaa !1809
  %312 = getelementptr inbounds float* %311, i64 %indvars.iv72, !dbg !1810
  %313 = load float* %312, align 4, !dbg !1810, !tbaa !805
  %314 = fpext float %313 to double, !dbg !1810
  %315 = fmul double %314, 9.400000e+05, !dbg !1811
  %316 = fdiv double 5.120000e+02, %315, !dbg !1812
  %317 = fmul float %E_lost.1, 2.000000e+00, !dbg !1813
  %318 = fpext float %317 to double, !dbg !1814
  %319 = fmul double %318, 1.953125e-03, !dbg !1815
  %320 = call double @sqrt(double %319) #14, !dbg !1816
  %321 = fmul double %320, 0x41124C41D4FDF3B6, !dbg !1817
  %322 = fmul double %316, %321, !dbg !1818
  %323 = fptrunc double %322 to float, !dbg !1819
  call void @llvm.dbg.value(metadata float %323, i64 0, metadata !519, metadata !677), !dbg !1820
  call void @llvm.dbg.value(metadata float %277, i64 0, metadata !572, metadata !677) #6, !dbg !1821
  call void @llvm.dbg.value(metadata float %273, i64 0, metadata !573, metadata !677) #6, !dbg !1822
  call void @llvm.dbg.value(metadata float* %184, i64 0, metadata !574, metadata !677) #6, !dbg !1823
  %324 = fpext float %277 to double, !dbg !1824
  %325 = call double @cos(double %324) #14, !dbg !1825
  %326 = fpext float %273 to double, !dbg !1826
  %327 = call double @sin(double %326) #14, !dbg !1827
  %328 = fmul double %325, %327, !dbg !1828
  %329 = fptrunc double %328 to float, !dbg !1825
  store float %329, float* %184, align 4, !dbg !1829, !tbaa !805
  %330 = call double @sin(double %324) #14, !dbg !1830
  %331 = fmul double %327, %330, !dbg !1831
  %332 = fptrunc double %331 to float, !dbg !1830
  store float %332, float* %185, align 4, !dbg !1832, !tbaa !805
  %333 = call double @cos(double %326) #14, !dbg !1833
  %334 = fptrunc double %333 to float, !dbg !1833
  store float %334, float* %186, align 4, !dbg !1834, !tbaa !805
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !538, metadata !677), !dbg !1835
  %335 = fmul float %323, %329, !dbg !1836
  %336 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 0, !dbg !1839
  %337 = load float* %336, align 4, !dbg !1840, !tbaa !805
  %338 = fsub float %337, %335, !dbg !1840
  store float %338, float* %336, align 4, !dbg !1840, !tbaa !805
  br label %._crit_edge83, !dbg !1841

._crit_edge83:                                    ; preds = %310, %._crit_edge83
  %indvars.iv.next6696 = phi i64 [ 1, %310 ], [ %indvars.iv.next66, %._crit_edge83 ]
  %.phi.trans.insert84 = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 %indvars.iv.next6696
  %.pre85 = load float* %.phi.trans.insert84, align 4, !dbg !1842, !tbaa !805
  %339 = fmul float %323, %.pre85, !dbg !1836
  %340 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 %indvars.iv.next6696, !dbg !1839
  %341 = load float* %340, align 4, !dbg !1840, !tbaa !805
  %342 = fsub float %341, %339, !dbg !1840
  store float %342, float* %340, align 4, !dbg !1840, !tbaa !805
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv.next6696, 1, !dbg !1841
  %exitcond67 = icmp eq i64 %indvars.iv.next66, 3, !dbg !1841
  br i1 %exitcond67, label %343, label %._crit_edge83, !dbg !1841

; <label>:343                                     ; preds = %._crit_edge83
  %344 = load %struct.__sFILE** @debug, align 8, !dbg !1843, !tbaa !882
  %345 = icmp eq %struct.__sFILE* %344, null, !dbg !1843
  br i1 %345, label %.thread25, label %346, !dbg !1845

; <label>:346                                     ; preds = %343
  call void @pr_rvec(%struct.__sFILE* %344, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0), float* %180, i32 3) #12, !dbg !1846
  br label %.thread25, !dbg !1846

; <label>:347                                     ; preds = %267
  %348 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !1847, !tbaa !882
  %349 = getelementptr inbounds %struct.t_cross_atom* %348, i64 %indvars.iv72, i32 0
  %350 = load i32* %349, align 4
  br i1 %268, label %351, label %360, !dbg !1849

; <label>:351                                     ; preds = %347
  %352 = getelementptr inbounds %struct.t_cross_atom* %348, i64 %indvars.iv72, i32 1, !dbg !1850
  %353 = load i32* %352, align 4, !dbg !1850, !tbaa !849
  %354 = add nsw i32 %353, 1, !dbg !1851
  %355 = sitofp i32 %354 to float, !dbg !1852
  %356 = sext i32 %350 to i64, !dbg !1853
  %357 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %356, i32 1, !dbg !1854
  %358 = load float* %357, align 4, !dbg !1854, !tbaa !1787
  %359 = fmul float %355, %358, !dbg !1855
  call void @llvm.dbg.value(metadata float %359, i64 0, metadata !560, metadata !677), !dbg !1856
  br label %366, !dbg !1857

; <label>:360                                     ; preds = %347
  %361 = sext i32 %350 to i64, !dbg !1858
  %362 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %361, i32 0, !dbg !1860
  %363 = load float* %362, align 16, !dbg !1860, !tbaa !915
  call void @llvm.dbg.value(metadata float %363, i64 0, metadata !560, metadata !677), !dbg !1856
  %364 = icmp sgt i32 %350, 2, !dbg !1861
  %365 = icmp sgt i32 %257, 0, !dbg !1863
  %or.cond14 = and i1 %365, %364, !dbg !1864
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !532, metadata !677), !dbg !1799
  br label %366, !dbg !1864

; <label>:366                                     ; preds = %360, %351
  %bKHole.1 = phi i1 [ false, %351 ], [ %or.cond14, %360 ]
  %Ebind.0 = phi float [ %359, %351 ], [ %363, %360 ]
  %367 = load i32* @ionize.Eindex, align 4, !dbg !1865, !tbaa !909
  %368 = call float @rand_theta_incoh(i32 %367, i32* @ionize_seed) #15, !dbg !1866
  %369 = fpext float %368 to double, !dbg !1866
  %370 = fmul double %369, 0x3F91DF46A2529D39, !dbg !1867
  %371 = fptrunc double %370 to float, !dbg !1868
  call void @llvm.dbg.value(metadata float %371, i64 0, metadata !558, metadata !677), !dbg !1869
  %372 = load i32* @ionize.ephot, align 4, !dbg !1870, !tbaa !909
  %373 = sitofp i32 %372 to float, !dbg !1870
  tail call void @llvm.dbg.value(metadata float %373, i64 0, metadata !567, metadata !677), !dbg !1871
  %374 = fmul float %373, %373, !dbg !1873
  %375 = fmul float %374, 1.953125e-03, !dbg !1874
  %376 = fpext float %375 to double, !dbg !1875
  %377 = fmul float %371, 2.000000e+00, !dbg !1876
  %378 = fpext float %377 to double, !dbg !1877
  %379 = call double @cos(double %378) #14, !dbg !1878
  %380 = fsub double 1.000000e+00, %379, !dbg !1879
  %381 = fmul double %380, %376, !dbg !1880
  %382 = fptrunc double %381 to float, !dbg !1875
  call void @llvm.dbg.value(metadata float %382, i64 0, metadata !561, metadata !677), !dbg !1881
  %383 = fcmp ole float %Ebind.0, %382, !dbg !1882
  %.22 = and i1 %bKHole.1, %383, !dbg !1883
  %384 = zext i1 %.22 to i32, !dbg !1883
  call void @llvm.dbg.value(metadata i32 %384, i64 0, metadata !532, metadata !677), !dbg !1799
  %385 = load %struct.__sFILE** @debug, align 8, !dbg !1884, !tbaa !882
  %386 = icmp eq %struct.__sFILE* %385, null, !dbg !1884
  br i1 %386, label %.thread91, label %387, !dbg !1886

; <label>:387                                     ; preds = %366
  %388 = fpext float %Ebind.0 to double, !dbg !1887
  %389 = fpext float %382 to double, !dbg !1888
  %390 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %385, i8* getelementptr inbounds ([34 x i8]* @.str48, i64 0, i64 0), double %388, double %389) #12, !dbg !1889
  %.pre82 = load %struct.__sFILE** @debug, align 8
  %391 = xor i1 %383, true, !dbg !1890
  %392 = icmp ne %struct.__sFILE* %.pre82, null, !dbg !1892
  %or.cond16 = and i1 %392, %391, !dbg !1895
  br i1 %or.cond16, label %393, label %.thread91, !dbg !1895

; <label>:393                                     ; preds = %387
  call void @pr_rvec(%struct.__sFILE* %.pre82, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str49, i64 0, i64 0), float* %180, i32 3) #12, !dbg !1896
  br label %.thread91, !dbg !1896

.thread91:                                        ; preds = %366, %387, %393
  br i1 %383, label %.thread25, label %.thread32, !dbg !1897

.thread25:                                        ; preds = %346, %343, %.thread91
  %E_lost.230 = phi float [ %E_lost.051, %.thread91 ], [ %E_lost.1, %343 ], [ %E_lost.1, %346 ]
  %bKHole.227 = phi i32 [ %384, %.thread91 ], [ %bKHole.0, %343 ], [ %bKHole.0, %346 ]
  %394 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !1898, !tbaa !882
  %395 = getelementptr inbounds %struct.t_cross_atom* %394, i64 %indvars.iv72, i32 1, !dbg !1899
  %396 = load i32* %395, align 4, !dbg !1899, !tbaa !849
  %397 = getelementptr inbounds %struct.t_cross_atom* %394, i64 %indvars.iv72, i32 0, !dbg !1900
  %398 = load i32* %397, align 4, !dbg !1900, !tbaa !846
  %399 = icmp slt i32 %396, %398, !dbg !1901
  br i1 %399, label %400, label %411, !dbg !1902

; <label>:400                                     ; preds = %.thread25
  %401 = load float** %187, align 8, !dbg !1684, !tbaa !1903
  %402 = getelementptr inbounds float* %401, i64 %indvars.iv72, !dbg !1904
  %403 = load float* %402, align 4, !dbg !1905, !tbaa !805
  %404 = fadd float %403, 1.000000e+00, !dbg !1905
  store float %404, float* %402, align 4, !dbg !1905, !tbaa !805
  %405 = load float** %188, align 8, !dbg !1689, !tbaa !1906
  %406 = getelementptr inbounds float* %405, i64 %indvars.iv72, !dbg !1907
  %407 = load float* %406, align 4, !dbg !1908, !tbaa !805
  %408 = fadd float %407, 1.000000e+00, !dbg !1908
  store float %408, float* %406, align 4, !dbg !1908, !tbaa !805
  %409 = add nsw i32 %396, 1, !dbg !1909
  store i32 %409, i32* %395, align 4, !dbg !1909, !tbaa !849
  %410 = add nsw i32 %dq.046, 1, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %410, i64 0, metadata !541, metadata !677), !dbg !1649
  br label %411, !dbg !1911

; <label>:411                                     ; preds = %400, %.thread25
  %dq.1 = phi i32 [ %410, %400 ], [ %dq.046, %.thread25 ]
  %412 = load %struct.__sFILE** @debug, align 8, !dbg !1912, !tbaa !882
  %413 = icmp eq %struct.__sFILE* %412, null, !dbg !1912
  br i1 %413, label %.thread32, label %414, !dbg !1914

; <label>:414                                     ; preds = %411
  %415 = load float* %180, align 4, !dbg !1915, !tbaa !805
  %416 = fpext float %415 to double, !dbg !1915
  %417 = load float* %181, align 4, !dbg !1917, !tbaa !805
  %418 = fpext float %417 to double, !dbg !1917
  %419 = load float* %182, align 4, !dbg !1918, !tbaa !805
  %420 = fpext float %419 to double, !dbg !1918
  %421 = load i32* @ionize.ephot, align 4, !dbg !1919, !tbaa !909
  %422 = fpext float %E_lost.230 to double, !dbg !1920
  %423 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %412, i8* getelementptr inbounds ([65 x i8]* @.str51, i64 0, i64 0), i32 %207, double %416, double %418, double %420, i32 %421, double %422) #12, !dbg !1921
  br label %.thread32, !dbg !1922

.thread32:                                        ; preds = %308, %411, %414, %.thread91
  %424 = phi i1 [ true, %414 ], [ true, %411 ], [ false, %.thread91 ], [ false, %308 ]
  %E_lost.231 = phi float [ %E_lost.230, %414 ], [ %E_lost.230, %411 ], [ %E_lost.051, %.thread91 ], [ 0.000000e+00, %308 ]
  %bKHole.226 = phi i32 [ %bKHole.227, %414 ], [ %bKHole.227, %411 ], [ %384, %.thread91 ], [ 0, %308 ]
  %dq.2 = phi i32 [ %dq.1, %414 ], [ %dq.1, %411 ], [ %dq.046, %.thread91 ], [ %dq.046, %308 ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !538, metadata !677), !dbg !1835
  br label %425, !dbg !1923

; <label>:425                                     ; preds = %425, %.thread32
  %indvars.iv68 = phi i64 [ 0, %.thread32 ], [ %indvars.iv.next69, %425 ]
  %426 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 %indvars.iv68, !dbg !1925
  %427 = load float* %426, align 4, !dbg !1925, !tbaa !805
  %428 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv72, i64 %indvars.iv68, !dbg !1927
  %429 = load float* %428, align 4, !dbg !1928, !tbaa !805
  %430 = fadd float %427, %429, !dbg !1928
  store float %430, float* %428, align 4, !dbg !1928, !tbaa !805
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1, !dbg !1923
  %exitcond70 = icmp eq i64 %indvars.iv.next69, 3, !dbg !1923
  br i1 %exitcond70, label %431, label %425, !dbg !1923

; <label>:431                                     ; preds = %425
  %432 = icmp eq i32 %bKHole.226, 0, !dbg !1929
  br i1 %432, label %441, label %433, !dbg !1931

; <label>:433                                     ; preds = %431
  %434 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !1932, !tbaa !882
  %435 = getelementptr inbounds %struct.t_cross_atom* %434, i64 %indvars.iv72, i32 2, !dbg !1934
  %436 = load i32* %435, align 4, !dbg !1935, !tbaa !851
  %437 = add nsw i32 %436, 1, !dbg !1935
  store i32 %437, i32* %435, align 4, !dbg !1935, !tbaa !851
  %438 = getelementptr inbounds i32* %172, i64 %indvars.iv72, !dbg !1936
  %439 = load i32* %438, align 4, !dbg !1937, !tbaa !909
  %440 = add nsw i32 %439, 1, !dbg !1937
  store i32 %440, i32* %438, align 4, !dbg !1937, !tbaa !909
  br label %.thread, !dbg !1938

; <label>:441                                     ; preds = %431
  br i1 %424, label %442, label %.thread, !dbg !1939

; <label>:442                                     ; preds = %441
  %443 = getelementptr inbounds i32* %169, i64 %indvars.iv72, !dbg !1940
  %444 = load i32* %443, align 4, !dbg !1942, !tbaa !909
  %445 = add nsw i32 %444, 1, !dbg !1942
  store i32 %445, i32* %443, align 4, !dbg !1942, !tbaa !909
  br label %.thread, !dbg !1940

.thread:                                          ; preds = %214, %217, %224, %212, %234, %433, %442, %441
  %dq.3 = phi i32 [ %dq.2, %433 ], [ %dq.2, %442 ], [ %dq.2, %441 ], [ %dq.046, %224 ], [ %dq.046, %234 ], [ %dq.046, %212 ], [ %dq.046, %217 ], [ %dq.046, %214 ]
  %E_lost.3 = phi float [ %E_lost.231, %433 ], [ %E_lost.231, %442 ], [ %E_lost.231, %441 ], [ %E_lost.051, %224 ], [ %E_lost.051, %234 ], [ %E_lost.051, %212 ], [ %E_lost.051, %217 ], [ %E_lost.051, %214 ]
  %446 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !1943, !tbaa !882
  %447 = getelementptr inbounds %struct.t_cross_atom* %446, i64 %indvars.iv72, i32 2, !dbg !1944
  %448 = load i32* %447, align 4, !dbg !1944, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %448, i64 0, metadata !542, metadata !677), !dbg !1945
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !537, metadata !677), !dbg !1946
  %449 = icmp sgt i32 %448, 0, !dbg !1947
  br i1 %449, label %.lr.ph44, label %._crit_edge45, !dbg !1950

.lr.ph44:                                         ; preds = %.thread
  %450 = getelementptr inbounds i32* %175, i64 %indvars.iv72, !dbg !1951
  %451 = add i32 %448, -1, !dbg !1950
  br label %452, !dbg !1950

; <label>:452                                     ; preds = %._crit_edge86, %.lr.ph44
  %453 = phi %struct.t_cross_atom* [ %446, %.lr.ph44 ], [ %.pre87, %._crit_edge86 ]
  %nkdecay.143 = phi i32 [ %nkdecay.048, %.lr.ph44 ], [ %nkdecay.2, %._crit_edge86 ]
  %kk.042 = phi i32 [ 0, %.lr.ph44 ], [ %463, %._crit_edge86 ]
  %454 = getelementptr inbounds %struct.t_cross_atom* %453, i64 %indvars.iv72, !dbg !1954
  %455 = load float* %144, align 4, !dbg !1955, !tbaa !1636
  %456 = call i32 @khole_decay(%struct.__sFILE* undef, %struct.t_cross_atom* %454, [3 x float]* undef, [3 x float]* %v, i32 %207, i32* @ionize_seed, float %455) #15, !dbg !1956
  %457 = icmp eq i32 %456, 0, !dbg !1956
  br i1 %457, label %462, label %458, !dbg !1957

; <label>:458                                     ; preds = %452
  %459 = add nsw i32 %nkdecay.143, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %459, i64 0, metadata !543, metadata !677), !dbg !1650
  %460 = load i32* %450, align 4, !dbg !1959, !tbaa !909
  %461 = add nsw i32 %460, 1, !dbg !1959
  store i32 %461, i32* %450, align 4, !dbg !1959, !tbaa !909
  br label %462, !dbg !1960

; <label>:462                                     ; preds = %452, %458
  %nkdecay.2 = phi i32 [ %459, %458 ], [ %nkdecay.143, %452 ]
  call void @llvm.dbg.value(metadata i32 %463, i64 0, metadata !537, metadata !677), !dbg !1946
  %exitcond71 = icmp eq i32 %kk.042, %451, !dbg !1950
  br i1 %exitcond71, label %._crit_edge45, label %._crit_edge86, !dbg !1950

._crit_edge86:                                    ; preds = %462
  %463 = add nuw nsw i32 %kk.042, 1, !dbg !1961
  %.pre87 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !1954, !tbaa !882
  br label %452, !dbg !1950

._crit_edge45:                                    ; preds = %462, %.thread
  %nkdecay.1.lcssa = phi i32 [ %nkdecay.048, %.thread ], [ %nkdecay.2, %462 ]
  %464 = load %struct.__sFILE** @debug, align 8, !dbg !1962, !tbaa !882
  %465 = icmp eq %struct.__sFILE* %464, null, !dbg !1962
  br i1 %465, label %477, label %466, !dbg !1964

; <label>:466                                     ; preds = %._crit_edge45
  %467 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !1965, !tbaa !882
  %468 = getelementptr inbounds %struct.t_cross_atom* %467, i64 %indvars.iv72, i32 1, !dbg !1966
  %469 = load i32* %468, align 4, !dbg !1966, !tbaa !849
  %470 = icmp sgt i32 %469, 0, !dbg !1967
  br i1 %470, label %471, label %477, !dbg !1968

; <label>:471                                     ; preds = %466
  call void @llvm.dbg.value(metadata %struct.__sFILE* %464, i64 0, metadata !226, metadata !677) #6, !dbg !1969
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !229, metadata !677) #6, !dbg !1971
  call void @llvm.dbg.value(metadata i32 745, i64 0, metadata !230, metadata !677) #6, !dbg !1972
  %472 = getelementptr inbounds %struct.t_cross_atom* %467, i64 %indvars.iv72, i32 0, !dbg !1973
  %473 = load i32* %472, align 4, !dbg !1973, !tbaa !846
  %474 = getelementptr inbounds %struct.t_cross_atom* %467, i64 %indvars.iv72, i32 2, !dbg !1974
  %475 = load i32* %474, align 4, !dbg !1974, !tbaa !851
  %476 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %464, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 745, i32 %207, i32 %473, i32 %469, i32 %475) #12, !dbg !1975
  br label %477, !dbg !1976

; <label>:477                                     ; preds = %._crit_edge45, %466, %471
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1, !dbg !1668
  %exitcond74 = icmp eq i32 %207, %190, !dbg !1668
  br i1 %exitcond74, label %._crit_edge52, label %.preheader, !dbg !1668

._crit_edge52:                                    ; preds = %477, %.loopexit
  %nkdecay.0.lcssa = phi i32 [ 0, %.loopexit ], [ %nkdecay.1.lcssa, %477 ]
  %dq.0.lcssa = phi i32 [ 0, %.loopexit ], [ %dq.3, %477 ]
  %478 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1977
  %479 = load i32* %478, align 4, !dbg !1977, !tbaa !1561
  %480 = icmp sgt i32 %479, 1, !dbg !1977
  br i1 %480, label %485, label %481, !dbg !1977

; <label>:481                                     ; preds = %._crit_edge52
  %482 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !1977
  %483 = load i32* %482, align 4, !dbg !1977, !tbaa !1563
  %484 = icmp sgt i32 %483, 1, !dbg !1977
  br i1 %484, label %485, label %493, !dbg !1979

; <label>:485                                     ; preds = %481, %._crit_edge52
  %486 = load i32* %166, align 4, !dbg !1980, !tbaa !863
  call void @gmx_sumi(i32 %486, i32* %169, %struct.t_commrec* %cr) #12, !dbg !1982
  %487 = load i32* %166, align 4, !dbg !1983, !tbaa !863
  call void @gmx_sumi(i32 %487, i32* %172, %struct.t_commrec* %cr) #12, !dbg !1984
  %488 = load i32* %166, align 4, !dbg !1985, !tbaa !863
  call void @gmx_sumi(i32 %488, i32* %175, %struct.t_commrec* %cr) #12, !dbg !1986
  %489 = getelementptr inbounds [2 x i32]* %nbuf, i64 0, i64 0, !dbg !1987
  store i32 %dq.0.lcssa, i32* %489, align 4, !dbg !1988, !tbaa !909
  %490 = getelementptr inbounds [2 x i32]* %nbuf, i64 0, i64 1, !dbg !1989
  store i32 %nkdecay.0.lcssa, i32* %490, align 4, !dbg !1990, !tbaa !909
  call void @gmx_sumi(i32 2, i32* %489, %struct.t_commrec* %cr) #12, !dbg !1991
  %491 = load i32* %489, align 4, !dbg !1992, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %491, i64 0, metadata !541, metadata !677), !dbg !1649
  %492 = load i32* %490, align 4, !dbg !1993, !tbaa !909
  call void @llvm.dbg.value(metadata i32 %492, i64 0, metadata !543, metadata !677), !dbg !1650
  br label %493, !dbg !1994

; <label>:493                                     ; preds = %485, %481
  %dq.4 = phi i32 [ %491, %485 ], [ %dq.0.lcssa, %481 ]
  %nkdecay.3 = phi i32 [ %492, %485 ], [ %nkdecay.0.lcssa, %481 ]
  %494 = load i32* @ionize.dq_tot, align 4, !dbg !1995, !tbaa !909
  %495 = add nsw i32 %494, %dq.4, !dbg !1995
  store i32 %495, i32* @ionize.dq_tot, align 4, !dbg !1995, !tbaa !909
  %496 = load i32* @ionize.nkd_tot, align 4, !dbg !1996, !tbaa !909
  %497 = add nsw i32 %496, %nkdecay.3, !dbg !1996
  store i32 %497, i32* @ionize.nkd_tot, align 4, !dbg !1996, !tbaa !909
  %498 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1997
  %499 = load i32* %498, align 4, !dbg !1997, !tbaa !1569
  %500 = icmp eq i32 %499, 0, !dbg !1997
  br i1 %500, label %501, label %559, !dbg !1997

; <label>:501                                     ; preds = %493
  %502 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1997
  %503 = load i32* %502, align 4, !dbg !1997, !tbaa !1999
  %504 = icmp eq i32 %503, 0, !dbg !1997
  br i1 %504, label %505, label %559, !dbg !2000

; <label>:505                                     ; preds = %501
  %506 = load %struct.__sFILE** @ionize.ion, align 8, !dbg !2001, !tbaa !882
  %507 = fpext float %t to double, !dbg !2003
  %508 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %506, i8* getelementptr inbounds ([7 x i8]* @.str52, i64 0, i64 0), double %507) #12, !dbg !2004
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !535, metadata !677), !dbg !1577
  %509 = load i32* %166, align 4, !dbg !2005, !tbaa !863
  %510 = icmp sgt i32 %509, 0, !dbg !2008
  br i1 %510, label %.lr.ph, label %._crit_edge, !dbg !2009

.lr.ph:                                           ; preds = %505, %537
  %indvars.iv = phi i64 [ %indvars.iv.next.pre-phi, %537 ], [ 0, %505 ]
  %511 = getelementptr inbounds i32* %169, i64 %indvars.iv, !dbg !2010
  %512 = load i32* %511, align 4, !dbg !2010, !tbaa !909
  %513 = icmp eq i32 %512, 0, !dbg !2010
  br i1 %513, label %519, label %514, !dbg !2013

; <label>:514                                     ; preds = %.lr.ph
  %515 = load %struct.__sFILE** @ionize.ion, align 8, !dbg !2014, !tbaa !882
  %516 = add nuw nsw i64 %indvars.iv, 1, !dbg !2015
  %517 = trunc i64 %516 to i32, !dbg !2016
  %518 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %515, i8* getelementptr inbounds ([7 x i8]* @.str53, i64 0, i64 0), i32 %517) #12, !dbg !2016
  br label %519, !dbg !2016

; <label>:519                                     ; preds = %.lr.ph, %514
  %520 = getelementptr inbounds i32* %172, i64 %indvars.iv, !dbg !2017
  %521 = load i32* %520, align 4, !dbg !2017, !tbaa !909
  %522 = icmp eq i32 %521, 0, !dbg !2017
  br i1 %522, label %528, label %523, !dbg !2019

; <label>:523                                     ; preds = %519
  %524 = load %struct.__sFILE** @ionize.ion, align 8, !dbg !2020, !tbaa !882
  %525 = add nuw nsw i64 %indvars.iv, 1, !dbg !2021
  %526 = trunc i64 %525 to i32, !dbg !2022
  %527 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %524, i8* getelementptr inbounds ([7 x i8]* @.str54, i64 0, i64 0), i32 %526) #12, !dbg !2022
  br label %528, !dbg !2022

; <label>:528                                     ; preds = %519, %523
  %529 = getelementptr inbounds i32* %175, i64 %indvars.iv, !dbg !2023
  %530 = load i32* %529, align 4, !dbg !2023, !tbaa !909
  %531 = icmp eq i32 %530, 0, !dbg !2023
  br i1 %531, label %._crit_edge89, label %532, !dbg !2025

._crit_edge89:                                    ; preds = %528
  %.pre90 = add nuw nsw i64 %indvars.iv, 1, !dbg !2009
  br label %537, !dbg !2025

; <label>:532                                     ; preds = %528
  %533 = load %struct.__sFILE** @ionize.ion, align 8, !dbg !2026, !tbaa !882
  %534 = add nuw nsw i64 %indvars.iv, 1, !dbg !2027
  %535 = trunc i64 %534 to i32, !dbg !2028
  %536 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %533, i8* getelementptr inbounds ([7 x i8]* @.str55, i64 0, i64 0), i32 %535) #12, !dbg !2028
  br label %537, !dbg !2028

; <label>:537                                     ; preds = %._crit_edge89, %532
  %indvars.iv.next.pre-phi = phi i64 [ %.pre90, %._crit_edge89 ], [ %534, %532 ], !dbg !2009
  %538 = load i32* %166, align 4, !dbg !2005, !tbaa !863
  %539 = sext i32 %538 to i64, !dbg !2008
  %540 = icmp slt i64 %indvars.iv.next.pre-phi, %539, !dbg !2008
  br i1 %540, label %.lr.ph, label %._crit_edge, !dbg !2009

._crit_edge:                                      ; preds = %537, %505
  %541 = load %struct.__sFILE** @ionize.ion, align 8, !dbg !2029, !tbaa !882
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %541), !dbg !2030
  %542 = load %struct.__sFILE** @debug, align 8, !dbg !2031, !tbaa !882
  %543 = icmp eq %struct.__sFILE* %542, null, !dbg !2031
  br i1 %543, label %547, label %544, !dbg !2033

; <label>:544                                     ; preds = %._crit_edge
  %545 = load %struct.__sFILE** @ionize.ion, align 8, !dbg !2034, !tbaa !882
  %546 = call i32 @fflush(%struct.__sFILE* %545) #12, !dbg !2035
  br label %547, !dbg !2035

; <label>:547                                     ; preds = %._crit_edge, %544
  %548 = load %struct.__sFILE** @ionize.xvg, align 8, !dbg !2036, !tbaa !882
  %549 = fpext float %156 to double, !dbg !2037
  %550 = load i32* @ionize.dq_tot, align 4, !dbg !2038, !tbaa !909
  %551 = load i32* @ionize.nkd_tot, align 4, !dbg !2039, !tbaa !909
  %552 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %548, i8* getelementptr inbounds ([35 x i8]* @.str56, i64 0, i64 0), double %507, double %549, i32 %dq.4, i32 %550, i32 %nkdecay.3, i32 %551) #12, !dbg !2040
  %553 = load %struct.__sFILE** @ionize.xvg, align 8, !dbg !2041, !tbaa !882
  %fputc19 = call i32 @fputc(i32 10, %struct.__sFILE* %553), !dbg !2042
  %554 = load %struct.__sFILE** @debug, align 8, !dbg !2043, !tbaa !882
  %555 = icmp eq %struct.__sFILE* %554, null, !dbg !2043
  br i1 %555, label %559, label %556, !dbg !2045

; <label>:556                                     ; preds = %547
  %557 = load %struct.__sFILE** @ionize.xvg, align 8, !dbg !2046, !tbaa !882
  %558 = call i32 @fflush(%struct.__sFILE* %557) #12, !dbg !2047
  br label %559, !dbg !2047

; <label>:559                                     ; preds = %547, %556, %501, %493
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 784, i8* %168) #12, !dbg !2048
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 785, i8* %171) #12, !dbg !2049
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 786, i8* %174) #12, !dbg !2050
  ret void, !dbg !2051
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #10

; Function Attrs: optsize
declare i32 @make_seed() #2

; Function Attrs: optsize
declare %struct.__sFILE* @xvgropen(i8*, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare void @xvgr_legend(%struct.__sFILE*, i32, i8**) #2

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #5

; Function Attrs: optsize
declare float @gauss(float, float, i32*) #2

; Function Attrs: optsize
declare void @pr_rvec(%struct.__sFILE*, i32, i8*, float*, i32) #2

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #10

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #2

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #10

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind optsize }
attributes #13 = { readnone }
attributes #14 = { nounwind optsize readnone }
attributes #15 = { optsize }
attributes #16 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!673, !674, !675}
!llvm.ident = !{!676}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !14, subprograms: !20, globals: !602, imports: !672)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ionize.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 164, size: 32, align: 32, elements: !4)
!4 = !{!5, !6, !7, !8}
!5 = !DIEnumerator(name: "eionCYL", value: 0)
!6 = !DIEnumerator(name: "eionSURF", value: 1)
!7 = !DIEnumerator(name: "eionGAUSS", value: 2)
!8 = !DIEnumerator(name: "eionNR", value: 3)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 166, size: 32, align: 32, elements: !10)
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "ecollPHOTO", value: 0)
!12 = !DIEnumerator(name: "ecollINELASTIC", value: 1)
!13 = !DIEnumerator(name: "ecollNR", value: 2)
!14 = !{!15, !16, !17}
!15 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !18, line: 87, baseType: !19)
!18 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!20 = !{!21, !89, !95, !101, !107, !113, !116, !119, !122, !125, !128, !131, !140, !149, !162, !165, !168, !171, !185, !199, !205, !211, !231, !281, !286, !289, !298, !305, !310, !322, !334, !342, !362, !378, !562, !568, !575, !581, !588, !597}
!21 = !DISubprogram(name: "__sputc", scope: !22, file: !22, line: 348, type: !23, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !86)
!22 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!23 = !DISubroutineType(types: !24)
!24 = !{!16, !16, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !22, line: 153, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !22, line: 122, size: 1216, align: 64, elements: !28)
!28 = !{!29, !32, !33, !34, !36, !37, !42, !43, !45, !49, !54, !64, !70, !71, !74, !75, !79, !83, !84, !85}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !27, file: !22, line: 123, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !27, file: !22, line: 124, baseType: !16, size: 32, align: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !27, file: !22, line: 125, baseType: !16, size: 32, align: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !27, file: !22, line: 126, baseType: !35, size: 16, align: 16, offset: 128)
!35 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !27, file: !22, line: 127, baseType: !35, size: 16, align: 16, offset: 144)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !27, file: !22, line: 128, baseType: !38, size: 128, align: 64, offset: 192)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !22, line: 88, size: 128, align: 64, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !38, file: !22, line: 89, baseType: !30, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !38, file: !22, line: 90, baseType: !16, size: 32, align: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !27, file: !22, line: 129, baseType: !16, size: 32, align: 32, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !27, file: !22, line: 132, baseType: !44, size: 64, align: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !27, file: !22, line: 133, baseType: !46, size: 64, align: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!16, !44}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !27, file: !22, line: 134, baseType: !50, size: 64, align: 64, offset: 512)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!16, !44, !53, !16}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !27, file: !22, line: 135, baseType: !55, size: 64, align: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !44, !58, !16}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !22, line: 77, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !60, line: 71, baseType: !61)
!60 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !62, line: 46, baseType: !63)
!62 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!63 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !27, file: !22, line: 136, baseType: !65, size: 64, align: 64, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!16, !44, !68, !16}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !27, file: !22, line: 139, baseType: !38, size: 128, align: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !27, file: !22, line: 140, baseType: !72, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !22, line: 94, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !27, file: !22, line: 141, baseType: !16, size: 32, align: 32, offset: 896)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !27, file: !22, line: 144, baseType: !76, size: 24, align: 8, offset: 928)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, align: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 3)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !27, file: !22, line: 145, baseType: !80, size: 8, align: 8, offset: 952)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !27, file: !22, line: 148, baseType: !38, size: 128, align: 64, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !27, file: !22, line: 151, baseType: !16, size: 32, align: 32, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !22, line: 152, baseType: !58, size: 64, align: 64, offset: 1152)
!86 = !{!87, !88}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !21, file: !22, line: 348, type: !16)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !21, file: !22, line: 348, type: !25)
!89 = !DISubprogram(name: "__sigbits", scope: !90, file: !90, line: 114, type: !91, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !93)
!90 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!91 = !DISubroutineType(types: !92)
!92 = !{!16, !16}
!93 = !{!94}
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !89, file: !90, line: 114, type: !16)
!95 = !DISubprogram(name: "__inline_isfinitef", scope: !96, file: !96, line: 204, type: !97, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !99)
!96 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!97 = !DISubroutineType(types: !98)
!98 = !{!16, !19}
!99 = !{!100}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !95, file: !96, line: 204, type: !19)
!101 = !DISubprogram(name: "__inline_isfinited", scope: !96, file: !96, line: 207, type: !102, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !105)
!102 = !DISubroutineType(types: !103)
!103 = !{!16, !104}
!104 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!105 = !{!106}
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !101, file: !96, line: 207, type: !104)
!107 = !DISubprogram(name: "__inline_isfinitel", scope: !96, file: !96, line: 210, type: !108, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !111)
!108 = !DISubroutineType(types: !109)
!109 = !{!16, !110}
!110 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!111 = !{!112}
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !107, file: !96, line: 210, type: !110)
!113 = !DISubprogram(name: "__inline_isinff", scope: !96, file: !96, line: 213, type: !97, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !114)
!114 = !{!115}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !113, file: !96, line: 213, type: !19)
!116 = !DISubprogram(name: "__inline_isinfd", scope: !96, file: !96, line: 216, type: !102, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !117)
!117 = !{!118}
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !116, file: !96, line: 216, type: !104)
!119 = !DISubprogram(name: "__inline_isinfl", scope: !96, file: !96, line: 219, type: !108, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !120)
!120 = !{!121}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !119, file: !96, line: 219, type: !110)
!122 = !DISubprogram(name: "__inline_isnanf", scope: !96, file: !96, line: 222, type: !97, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !123)
!123 = !{!124}
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !122, file: !96, line: 222, type: !19)
!125 = !DISubprogram(name: "__inline_isnand", scope: !96, file: !96, line: 225, type: !102, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !126)
!126 = !{!127}
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !125, file: !96, line: 225, type: !104)
!128 = !DISubprogram(name: "__inline_isnanl", scope: !96, file: !96, line: 228, type: !108, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !129)
!129 = !{!130}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !128, file: !96, line: 228, type: !110)
!131 = !DISubprogram(name: "__inline_signbitf", scope: !96, file: !96, line: 231, type: !97, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !132)
!132 = !{!133, !134}
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !131, file: !96, line: 231, type: !19)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !131, file: !96, line: 232, type: !135)
!135 = !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !96, line: 232, size: 32, align: 32, elements: !136)
!136 = !{!137, !138}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !135, file: !96, line: 232, baseType: !19, size: 32, align: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !135, file: !96, line: 232, baseType: !139, size: 32, align: 32)
!139 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!140 = !DISubprogram(name: "__inline_signbitd", scope: !96, file: !96, line: 236, type: !102, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !141)
!141 = !{!142, !143}
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !140, file: !96, line: 236, type: !104)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !140, file: !96, line: 237, type: !144)
!144 = !DICompositeType(tag: DW_TAG_union_type, scope: !140, file: !96, line: 237, size: 64, align: 64, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !144, file: !96, line: 237, baseType: !104, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !144, file: !96, line: 237, baseType: !148, size: 64, align: 64)
!148 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!149 = !DISubprogram(name: "__inline_signbitl", scope: !96, file: !96, line: 242, type: !108, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !150)
!150 = !{!151, !152}
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !149, file: !96, line: 242, type: !110)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !149, file: !96, line: 246, type: !153)
!153 = !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !96, line: 243, size: 128, align: 128, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !153, file: !96, line: 244, baseType: !110, size: 128, align: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !153, file: !96, line: 245, baseType: !157, size: 128, align: 64)
!157 = !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !96, line: 245, size: 128, align: 64, elements: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !157, file: !96, line: 245, baseType: !148, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !157, file: !96, line: 245, baseType: !161, size: 16, align: 16, offset: 64)
!161 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!162 = !DISubprogram(name: "__inline_isnormalf", scope: !96, file: !96, line: 257, type: !97, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !163)
!163 = !{!164}
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !162, file: !96, line: 257, type: !19)
!165 = !DISubprogram(name: "__inline_isnormald", scope: !96, file: !96, line: 260, type: !102, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !166)
!166 = !{!167}
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !165, file: !96, line: 260, type: !104)
!168 = !DISubprogram(name: "__inline_isnormall", scope: !96, file: !96, line: 263, type: !108, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !169)
!169 = !{!170}
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !168, file: !96, line: 263, type: !110)
!171 = !DISubprogram(name: "__sincosf", scope: !96, file: !96, line: 642, type: !172, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !175)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !19, !174, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!175 = !{!176, !177, !178, !179}
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !171, file: !96, line: 642, type: !19)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !171, file: !96, line: 642, type: !174)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !171, file: !96, line: 642, type: !174)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !171, file: !96, line: 643, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !96, line: 634, size: 64, align: 32, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !181, file: !96, line: 634, baseType: !19, size: 32, align: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !181, file: !96, line: 634, baseType: !19, size: 32, align: 32, offset: 32)
!185 = !DISubprogram(name: "__sincos", scope: !96, file: !96, line: 647, type: !186, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !189)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !104, !188, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!189 = !{!190, !191, !192, !193}
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !185, file: !96, line: 647, type: !104)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !185, file: !96, line: 647, type: !188)
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !185, file: !96, line: 647, type: !188)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !185, file: !96, line: 648, type: !194)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !96, line: 635, size: 128, align: 64, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !195, file: !96, line: 635, baseType: !104, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !195, file: !96, line: 635, baseType: !104, size: 64, align: 64, offset: 64)
!199 = !DISubprogram(name: "__sincospif", scope: !96, file: !96, line: 652, type: !172, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !200)
!200 = !{!201, !202, !203, !204}
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !199, file: !96, line: 652, type: !19)
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !199, file: !96, line: 652, type: !174)
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !199, file: !96, line: 652, type: !174)
!204 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !199, file: !96, line: 653, type: !180)
!205 = !DISubprogram(name: "__sincospi", scope: !96, file: !96, line: 657, type: !186, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !206)
!206 = !{!207, !208, !209, !210}
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !205, file: !96, line: 657, type: !104)
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !205, file: !96, line: 657, type: !188)
!209 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !205, file: !96, line: 657, type: !188)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !205, file: !96, line: 658, type: !194)
!211 = !DISubprogram(name: "dump_ca", scope: !1, file: !1, line: 179, type: !212, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_cross_atom*, i32, i8*, i32)* @dump_ca, variables: !225)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !25, !214, !16, !53, !16}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cross_atom", file: !1, line: 171, baseType: !216)
!216 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 168, size: 224, align: 32, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !216, file: !1, line: 169, baseType: !16, size: 32, align: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !216, file: !1, line: 169, baseType: !16, size: 32, align: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !216, file: !1, line: 169, baseType: !16, size: 32, align: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "fj", scope: !216, file: !1, line: 170, baseType: !17, size: 32, align: 32, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "sigPh", scope: !216, file: !1, line: 170, baseType: !17, size: 32, align: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "sigIn", scope: !216, file: !1, line: 170, baseType: !17, size: 32, align: 32, offset: 160)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "vAuger", scope: !216, file: !1, line: 170, baseType: !17, size: 32, align: 32, offset: 192)
!225 = !{!226, !227, !228, !229, !230}
!226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !211, file: !1, line: 179, type: !25)
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ca", arg: 2, scope: !211, file: !1, line: 179, type: !214)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 3, scope: !211, file: !1, line: 179, type: !16)
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 4, scope: !211, file: !1, line: 179, type: !53)
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 5, scope: !211, file: !1, line: 179, type: !16)
!231 = !DISubprogram(name: "mk_cross_atom", scope: !1, file: !1, line: 185, type: !232, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, function: %struct.t_cross_atom* (%struct.__sFILE*, %struct.t_mdatoms*, i8***, i32)* @mk_cross_atom, variables: !267)
!232 = !DISubroutineType(types: !233)
!233 = !{!214, !25, !234, !265, !16}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_mdatoms", file: !236, line: 51, baseType: !237)
!236 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!237 = !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 40, size: 1408, align: 64, elements: !238)
!238 = !{!239, !240, !241, !243, !244, !245, !246, !247, !248, !249, !251, !252, !253, !254, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tmass", scope: !237, file: !236, line: 41, baseType: !17, size: 32, align: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !237, file: !236, line: 42, baseType: !16, size: 32, align: 32, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "massA", scope: !237, file: !236, line: 43, baseType: !242, size: 64, align: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "massB", scope: !237, file: !236, line: 43, baseType: !242, size: 64, align: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "massT", scope: !237, file: !236, line: 43, baseType: !242, size: 64, align: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "invmass", scope: !237, file: !236, line: 43, baseType: !242, size: 64, align: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "chargeA", scope: !237, file: !236, line: 44, baseType: !242, size: 64, align: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "chargeB", scope: !237, file: !236, line: 44, baseType: !242, size: 64, align: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "chargeT", scope: !237, file: !236, line: 44, baseType: !242, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "bPerturbed", scope: !237, file: !236, line: 45, baseType: !250, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !237, file: !236, line: 46, baseType: !250, size: 64, align: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "typeA", scope: !237, file: !236, line: 47, baseType: !250, size: 64, align: 64, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !237, file: !236, line: 47, baseType: !250, size: 64, align: 64, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !237, file: !236, line: 48, baseType: !255, size: 64, align: 64, offset: 768)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "cTC", scope: !237, file: !236, line: 49, baseType: !255, size: 64, align: 64, offset: 832)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "cENER", scope: !237, file: !236, line: 49, baseType: !255, size: 64, align: 64, offset: 896)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "cACC", scope: !237, file: !236, line: 49, baseType: !255, size: 64, align: 64, offset: 960)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cFREEZE", scope: !237, file: !236, line: 49, baseType: !255, size: 64, align: 64, offset: 1024)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "cXTC", scope: !237, file: !236, line: 49, baseType: !255, size: 64, align: 64, offset: 1088)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cVCM", scope: !237, file: !236, line: 49, baseType: !255, size: 64, align: 64, offset: 1152)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "cU1", scope: !237, file: !236, line: 50, baseType: !255, size: 64, align: 64, offset: 1216)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "cU2", scope: !237, file: !236, line: 50, baseType: !255, size: 64, align: 64, offset: 1280)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "cORF", scope: !237, file: !236, line: 50, baseType: !255, size: 64, align: 64, offset: 1344)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!267 = !{!268, !269, !270, !271, !272, !276, !277, !278, !279, !280}
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !231, file: !1, line: 185, type: !25)
!269 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "md", arg: 2, scope: !231, file: !1, line: 185, type: !234)
!270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atomname", arg: 3, scope: !231, file: !1, line: 186, type: !265)
!271 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Eindex", arg: 4, scope: !231, file: !1, line: 186, type: !16)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "elem_index", scope: !231, file: !1, line: 188, type: !273)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 704, align: 32, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 22)
!276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ca", scope: !231, file: !1, line: 189, type: !214)
!277 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "elemcnt", scope: !231, file: !1, line: 190, type: !250)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cc", scope: !231, file: !1, line: 191, type: !53)
!279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !231, file: !1, line: 192, type: !16)
!280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !231, file: !1, line: 192, type: !16)
!281 = !DISubprogram(name: "number_K", scope: !1, file: !1, line: 245, type: !282, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.t_cross_atom*)* @number_K, variables: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{!16, !214}
!284 = !{!285}
!285 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ca", arg: 1, scope: !281, file: !1, line: 245, type: !214)
!286 = !DISubprogram(name: "number_L", scope: !1, file: !1, line: 253, type: !282, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.t_cross_atom*)* @number_L, variables: !287)
!287 = !{!288}
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ca", arg: 1, scope: !286, file: !1, line: 253, type: !214)
!289 = !DISubprogram(name: "xray_cross_section", scope: !1, file: !1, line: 258, type: !290, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, function: float (i32, %struct.t_cross_atom*)* @xray_cross_section, variables: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{!17, !16, !214}
!292 = !{!293, !294, !295, !296, !297}
!293 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eColl", arg: 1, scope: !289, file: !1, line: 258, type: !16)
!294 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ca", arg: 2, scope: !289, file: !1, line: 258, type: !214)
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !289, file: !1, line: 260, type: !17)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nK", scope: !289, file: !1, line: 261, type: !16)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nL", scope: !289, file: !1, line: 261, type: !16)
!298 = !DISubprogram(name: "prob_K", scope: !1, file: !1, line: 283, type: !290, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: true, function: float (i32, %struct.t_cross_atom*)* @prob_K, variables: !299)
!299 = !{!300, !301, !302, !303, !304}
!300 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eColl", arg: 1, scope: !298, file: !1, line: 283, type: !16)
!301 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ca", arg: 2, scope: !298, file: !1, line: 283, type: !214)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Pl", scope: !298, file: !1, line: 285, type: !17)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Pk", scope: !298, file: !1, line: 285, type: !17)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "P", scope: !298, file: !1, line: 285, type: !17)
!305 = !DISubprogram(name: "myexp", scope: !1, file: !1, line: 305, type: !306, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @myexp, variables: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!104, !104}
!308 = !{!309}
!309 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !305, file: !1, line: 305, type: !104)
!310 = !DISubprogram(name: "ptheta_incoh", scope: !1, file: !1, line: 313, type: !311, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, function: float (i32, float)* @ptheta_incoh, variables: !313)
!311 = !DISubroutineType(types: !312)
!312 = !{!17, !16, !17}
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321}
!314 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Eindex", arg: 1, scope: !310, file: !1, line: 313, type: !16)
!315 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "theta", arg: 2, scope: !310, file: !1, line: 313, type: !17)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g1", scope: !310, file: !1, line: 335, type: !104)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g2", scope: !310, file: !1, line: 335, type: !104)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g3", scope: !310, file: !1, line: 335, type: !104)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g4", scope: !310, file: !1, line: 335, type: !104)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g5", scope: !310, file: !1, line: 335, type: !104)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptheta", scope: !310, file: !1, line: 335, type: !104)
!322 = !DISubprogram(name: "rand_theta_incoh", scope: !1, file: !1, line: 348, type: !323, isLocal: false, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, function: float (i32, i32*)* @rand_theta_incoh, variables: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{!17, !16, !250}
!325 = !{!326, !327, !328, !329, !330}
!326 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Eindex", arg: 1, scope: !322, file: !1, line: 348, type: !16)
!327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 2, scope: !322, file: !1, line: 348, type: !250)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rrr", scope: !322, file: !1, line: 355, type: !17)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !322, file: !1, line: 355, type: !17)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !322, file: !1, line: 356, type: !331)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, align: 32, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 2)
!334 = !DISubprogram(name: "rand_vector", scope: !1, file: !1, line: 399, type: !335, isLocal: false, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, i32*)* @rand_vector, variables: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !242, !250}
!337 = !{!338, !339, !340, !341}
!338 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !334, file: !1, line: 399, type: !242)
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 2, scope: !334, file: !1, line: 399, type: !250)
!340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "theta", scope: !334, file: !1, line: 401, type: !17)
!341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "phi", scope: !334, file: !1, line: 401, type: !17)
!342 = !DISubprogram(name: "electron_cross_section", scope: !1, file: !1, line: 408, type: !343, isLocal: false, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct.__sFILE*, float*, float, i32)* @electron_cross_section, variables: !345)
!343 = !DISubroutineType(types: !344)
!344 = !{!17, !25, !242, !17, !16}
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361}
!346 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !342, file: !1, line: 408, type: !25)
!347 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !342, file: !1, line: 408, type: !242)
!348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mass", arg: 3, scope: !342, file: !1, line: 408, type: !17)
!349 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelec", arg: 4, scope: !342, file: !1, line: 408, type: !16)
!350 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "T", scope: !342, file: !1, line: 411, type: !17)
!351 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "B", scope: !342, file: !1, line: 411, type: !17)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "U", scope: !342, file: !1, line: 411, type: !17)
!353 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "S", scope: !342, file: !1, line: 411, type: !17)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Q", scope: !342, file: !1, line: 411, type: !17)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "R", scope: !342, file: !1, line: 411, type: !17)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "N", scope: !342, file: !1, line: 411, type: !17)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !342, file: !1, line: 411, type: !17)
!358 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !342, file: !1, line: 411, type: !17)
!359 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lnt", scope: !342, file: !1, line: 411, type: !17)
!360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sigma", scope: !342, file: !1, line: 411, type: !17)
!361 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a0", scope: !342, file: !1, line: 412, type: !17)
!362 = !DISubprogram(name: "khole_decay", scope: !1, file: !1, line: 444, type: !363, isLocal: false, isDefinition: true, scopeLine: 446, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, %struct.t_cross_atom*, [3 x float]*, [3 x float]*, i32, i32*, float)* @khole_decay, variables: !368)
!363 = !DISubroutineType(types: !364)
!364 = !{!16, !25, !214, !365, !365, !16, !250, !17}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !18, line: 101, baseType: !367)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 96, align: 32, elements: !77)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377}
!369 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !362, file: !1, line: 444, type: !25)
!370 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ca", arg: 2, scope: !362, file: !1, line: 444, type: !214)
!371 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !362, file: !1, line: 444, type: !365)
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 4, scope: !362, file: !1, line: 444, type: !365)
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ion", arg: 5, scope: !362, file: !1, line: 444, type: !16)
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 6, scope: !362, file: !1, line: 445, type: !250)
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dt", arg: 7, scope: !362, file: !1, line: 445, type: !17)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dv", scope: !362, file: !1, line: 447, type: !366)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factor", scope: !362, file: !1, line: 448, type: !17)
!378 = !DISubprogram(name: "ionize", scope: !1, file: !1, line: 475, type: !379, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_mdatoms*, i8***, float, %struct.t_inputrec*, [3 x float]*, [3 x float]*, i32, i32, [3 x float]*, %struct.t_commrec*)* @ionize, variables: !507)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !25, !234, !265, !17, !381, !365, !365, !16, !16, !495, !496}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_inputrec", file: !383, line: 143, baseType: !384)
!383 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!384 = !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 55, size: 4736, align: 64, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !486, !494}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "eI", scope: !384, file: !383, line: 56, baseType: !16, size: 32, align: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nsteps", scope: !384, file: !383, line: 57, baseType: !16, size: 32, align: 32, offset: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !384, file: !383, line: 58, baseType: !16, size: 32, align: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nstlist", scope: !384, file: !383, line: 59, baseType: !16, size: 32, align: 32, offset: 96)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ndelta", scope: !384, file: !383, line: 60, baseType: !16, size: 32, align: 32, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "bDomDecomp", scope: !384, file: !383, line: 61, baseType: !16, size: 32, align: 32, offset: 160)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "decomp_dir", scope: !384, file: !383, line: 62, baseType: !16, size: 32, align: 32, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nstcomm", scope: !384, file: !383, line: 63, baseType: !16, size: 32, align: 32, offset: 224)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nstlog", scope: !384, file: !383, line: 65, baseType: !16, size: 32, align: 32, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nstxout", scope: !384, file: !383, line: 66, baseType: !16, size: 32, align: 32, offset: 288)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nstvout", scope: !384, file: !383, line: 67, baseType: !16, size: 32, align: 32, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nstfout", scope: !384, file: !383, line: 68, baseType: !16, size: 32, align: 32, offset: 352)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nstenergy", scope: !384, file: !383, line: 69, baseType: !16, size: 32, align: 32, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nstxtcout", scope: !384, file: !383, line: 70, baseType: !16, size: 32, align: 32, offset: 416)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "init_t", scope: !384, file: !383, line: 71, baseType: !17, size: 32, align: 32, offset: 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !384, file: !383, line: 72, baseType: !17, size: 32, align: 32, offset: 480)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "xtcprec", scope: !384, file: !383, line: 73, baseType: !17, size: 32, align: 32, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "nkx", scope: !384, file: !383, line: 74, baseType: !16, size: 32, align: 32, offset: 544)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nky", scope: !384, file: !383, line: 74, baseType: !16, size: 32, align: 32, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "nkz", scope: !384, file: !383, line: 74, baseType: !16, size: 32, align: 32, offset: 608)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pme_order", scope: !384, file: !383, line: 76, baseType: !16, size: 32, align: 32, offset: 640)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_rtol", scope: !384, file: !383, line: 77, baseType: !17, size: 32, align: 32, offset: 672)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_geometry", scope: !384, file: !383, line: 79, baseType: !16, size: 32, align: 32, offset: 704)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_surface", scope: !384, file: !383, line: 80, baseType: !16, size: 32, align: 32, offset: 736)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "bOptFFT", scope: !384, file: !383, line: 81, baseType: !16, size: 32, align: 32, offset: 768)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ePBC", scope: !384, file: !383, line: 82, baseType: !16, size: 32, align: 32, offset: 800)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "bUncStart", scope: !384, file: !383, line: 83, baseType: !16, size: 32, align: 32, offset: 832)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "etc", scope: !384, file: !383, line: 84, baseType: !16, size: 32, align: 32, offset: 864)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !384, file: !383, line: 85, baseType: !16, size: 32, align: 32, offset: 896)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "epct", scope: !384, file: !383, line: 86, baseType: !16, size: 32, align: 32, offset: 928)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tau_p", scope: !384, file: !383, line: 87, baseType: !17, size: 32, align: 32, offset: 960)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !384, file: !383, line: 88, baseType: !418, size: 288, align: 32, offset: 992)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "tensor", file: !18, line: 105, baseType: !419)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 288, align: 32, elements: !420)
!420 = !{!78, !78}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !384, file: !383, line: 89, baseType: !418, size: 288, align: 32, offset: 1280)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "bSimAnn", scope: !384, file: !383, line: 90, baseType: !16, size: 32, align: 32, offset: 1568)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "zero_temp_time", scope: !384, file: !383, line: 91, baseType: !17, size: 32, align: 32, offset: 1600)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rlist", scope: !384, file: !383, line: 92, baseType: !17, size: 32, align: 32, offset: 1632)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "coulombtype", scope: !384, file: !383, line: 93, baseType: !16, size: 32, align: 32, offset: 1664)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb_switch", scope: !384, file: !383, line: 94, baseType: !17, size: 32, align: 32, offset: 1696)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb", scope: !384, file: !383, line: 95, baseType: !17, size: 32, align: 32, offset: 1728)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtype", scope: !384, file: !383, line: 96, baseType: !16, size: 32, align: 32, offset: 1760)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw_switch", scope: !384, file: !383, line: 97, baseType: !17, size: 32, align: 32, offset: 1792)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw", scope: !384, file: !383, line: 98, baseType: !17, size: 32, align: 32, offset: 1824)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_r", scope: !384, file: !383, line: 99, baseType: !17, size: 32, align: 32, offset: 1856)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "eDispCorr", scope: !384, file: !383, line: 100, baseType: !16, size: 32, align: 32, offset: 1888)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "shake_tol", scope: !384, file: !383, line: 101, baseType: !17, size: 32, align: 32, offset: 1920)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "fudgeQQ", scope: !384, file: !383, line: 102, baseType: !17, size: 32, align: 32, offset: 1952)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "efep", scope: !384, file: !383, line: 103, baseType: !16, size: 32, align: 32, offset: 1984)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "init_lambda", scope: !384, file: !383, line: 104, baseType: !17, size: 32, align: 32, offset: 2016)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "delta_lambda", scope: !384, file: !383, line: 105, baseType: !17, size: 32, align: 32, offset: 2048)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sc_alpha", scope: !384, file: !383, line: 106, baseType: !17, size: 32, align: 32, offset: 2080)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sc_sigma", scope: !384, file: !383, line: 107, baseType: !17, size: 32, align: 32, offset: 2112)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dr_fc", scope: !384, file: !383, line: 108, baseType: !17, size: 32, align: 32, offset: 2144)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "eDisreWeighting", scope: !384, file: !383, line: 109, baseType: !16, size: 32, align: 32, offset: 2176)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "bDisreMixed", scope: !384, file: !383, line: 110, baseType: !16, size: 32, align: 32, offset: 2208)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "nstdisreout", scope: !384, file: !383, line: 111, baseType: !16, size: 32, align: 32, offset: 2240)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dr_tau", scope: !384, file: !383, line: 112, baseType: !17, size: 32, align: 32, offset: 2272)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "orires_fc", scope: !384, file: !383, line: 113, baseType: !17, size: 32, align: 32, offset: 2304)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "orires_tau", scope: !384, file: !383, line: 114, baseType: !17, size: 32, align: 32, offset: 2336)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "nstorireout", scope: !384, file: !383, line: 115, baseType: !16, size: 32, align: 32, offset: 2368)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "em_stepsize", scope: !384, file: !383, line: 116, baseType: !17, size: 32, align: 32, offset: 2400)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "em_tol", scope: !384, file: !383, line: 117, baseType: !17, size: 32, align: 32, offset: 2432)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "niter", scope: !384, file: !383, line: 118, baseType: !16, size: 32, align: 32, offset: 2464)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "fc_stepsize", scope: !384, file: !383, line: 120, baseType: !16, size: 32, align: 32, offset: 2496)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "nstcgsteep", scope: !384, file: !383, line: 122, baseType: !16, size: 32, align: 32, offset: 2528)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "eConstrAlg", scope: !384, file: !383, line: 124, baseType: !16, size: 32, align: 32, offset: 2560)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "nProjOrder", scope: !384, file: !383, line: 125, baseType: !16, size: 32, align: 32, offset: 2592)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "LincsWarnAngle", scope: !384, file: !383, line: 126, baseType: !17, size: 32, align: 32, offset: 2624)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "bShakeSOR", scope: !384, file: !383, line: 127, baseType: !16, size: 32, align: 32, offset: 2656)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "bd_temp", scope: !384, file: !383, line: 128, baseType: !17, size: 32, align: 32, offset: 2688)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fric", scope: !384, file: !383, line: 129, baseType: !17, size: 32, align: 32, offset: 2720)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ld_seed", scope: !384, file: !383, line: 130, baseType: !16, size: 32, align: 32, offset: 2752)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "cos_accel", scope: !384, file: !383, line: 131, baseType: !17, size: 32, align: 32, offset: 2784)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "userint1", scope: !384, file: !383, line: 132, baseType: !16, size: 32, align: 32, offset: 2816)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "userint2", scope: !384, file: !383, line: 133, baseType: !16, size: 32, align: 32, offset: 2848)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "userint3", scope: !384, file: !383, line: 134, baseType: !16, size: 32, align: 32, offset: 2880)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "userint4", scope: !384, file: !383, line: 135, baseType: !16, size: 32, align: 32, offset: 2912)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "userreal1", scope: !384, file: !383, line: 136, baseType: !17, size: 32, align: 32, offset: 2944)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "userreal2", scope: !384, file: !383, line: 137, baseType: !17, size: 32, align: 32, offset: 2976)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "userreal3", scope: !384, file: !383, line: 138, baseType: !17, size: 32, align: 32, offset: 3008)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "userreal4", scope: !384, file: !383, line: 139, baseType: !17, size: 32, align: 32, offset: 3040)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !384, file: !383, line: 140, baseType: !470, size: 512, align: 64, offset: 3072)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grpopts", file: !383, line: 53, baseType: !471)
!471 = !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 42, size: 512, align: 64, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !485}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ngtc", scope: !471, file: !383, line: 43, baseType: !16, size: 32, align: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ngacc", scope: !471, file: !383, line: 44, baseType: !16, size: 32, align: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ngfrz", scope: !471, file: !383, line: 45, baseType: !16, size: 32, align: 32, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ngener", scope: !471, file: !383, line: 46, baseType: !16, size: 32, align: 32, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "nrdf", scope: !471, file: !383, line: 47, baseType: !242, size: 64, align: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ref_t", scope: !471, file: !383, line: 48, baseType: !242, size: 64, align: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "tau_t", scope: !471, file: !383, line: 49, baseType: !242, size: 64, align: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !471, file: !383, line: 50, baseType: !365, size: 64, align: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "nFreeze", scope: !471, file: !383, line: 51, baseType: !482, size: 64, align: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !18, line: 107, baseType: !484)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 96, align: 32, elements: !77)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "eg_excl", scope: !471, file: !383, line: 52, baseType: !250, size: 64, align: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !384, file: !383, line: 141, baseType: !487, size: 576, align: 64, offset: 3584)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 576, align: 64, elements: !77)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cosines", file: !383, line: 40, baseType: !489)
!489 = !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 36, size: 192, align: 64, elements: !490)
!490 = !{!491, !492, !493}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !489, file: !383, line: 37, baseType: !16, size: 32, align: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !489, file: !383, line: 38, baseType: !242, size: 64, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "phi", scope: !489, file: !383, line: 39, baseType: !242, size: 64, align: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "et", scope: !384, file: !383, line: 142, baseType: !487, size: 576, align: 64, offset: 4160)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_commrec", file: !498, line: 40, baseType: !499)
!498 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/commrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!499 = !DICompositeType(tag: DW_TAG_structure_type, file: !498, line: 36, size: 192, align: 32, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !499, file: !498, line: 37, baseType: !16, size: 32, align: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !499, file: !498, line: 37, baseType: !16, size: 32, align: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !499, file: !498, line: 38, baseType: !16, size: 32, align: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !499, file: !498, line: 38, baseType: !16, size: 32, align: 32, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "threadid", scope: !499, file: !498, line: 39, baseType: !16, size: 32, align: 32, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !499, file: !498, line: 39, baseType: !16, size: 32, align: 32, offset: 160)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !549, !557, !558, !560, !561}
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !378, file: !1, line: 475, type: !25)
!509 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "md", arg: 2, scope: !378, file: !1, line: 475, type: !234)
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atomname", arg: 3, scope: !378, file: !1, line: 475, type: !265)
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 4, scope: !378, file: !1, line: 475, type: !17)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 5, scope: !378, file: !1, line: 475, type: !381)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 6, scope: !378, file: !1, line: 476, type: !365)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 7, scope: !378, file: !1, line: 476, type: !365)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 8, scope: !378, file: !1, line: 476, type: !16)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end", arg: 9, scope: !378, file: !1, line: 476, type: !16)
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 10, scope: !378, file: !1, line: 476, type: !495)
!518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 11, scope: !378, file: !1, line: 476, type: !496)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factor", scope: !378, file: !1, line: 487, type: !17)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "E_lost", scope: !378, file: !1, line: 487, type: !17)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pt", scope: !378, file: !1, line: 488, type: !17)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptot", scope: !378, file: !1, line: 488, type: !17)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pphot", scope: !378, file: !1, line: 488, type: !17)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pcoll", scope: !378, file: !1, line: 488, type: !331)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmax", scope: !378, file: !1, line: 488, type: !17)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hboxx", scope: !378, file: !1, line: 489, type: !17)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hboxy", scope: !378, file: !1, line: 489, type: !17)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rho2", scope: !378, file: !1, line: 489, type: !17)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dv", scope: !378, file: !1, line: 490, type: !366)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ddv", scope: !378, file: !1, line: 490, type: !366)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bIonize", scope: !378, file: !1, line: 491, type: !16)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bKHole", scope: !378, file: !1, line: 491, type: !16)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bL", scope: !378, file: !1, line: 491, type: !16)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bDOIT", scope: !378, file: !1, line: 491, type: !16)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !378, file: !1, line: 492, type: !16)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !378, file: !1, line: 492, type: !16)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kk", scope: !378, file: !1, line: 492, type: !16)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !378, file: !1, line: 492, type: !16)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nK", scope: !378, file: !1, line: 492, type: !16)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nL", scope: !378, file: !1, line: 492, type: !16)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dq", scope: !378, file: !1, line: 492, type: !16)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nkh", scope: !378, file: !1, line: 492, type: !16)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nkdecay", scope: !378, file: !1, line: 492, type: !16)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nionize", scope: !378, file: !1, line: 493, type: !250)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nkhole", scope: !378, file: !1, line: 493, type: !250)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndecay", scope: !378, file: !1, line: 493, type: !250)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbuf", scope: !378, file: !1, line: 493, type: !548)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, align: 32, elements: !332)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "theta", scope: !550, file: !1, line: 639, type: !17)
!550 = distinct !DILexicalBlock(scope: !551, file: !1, line: 637, column: 24)
!551 = distinct !DILexicalBlock(scope: !552, file: !1, line: 636, column: 18)
!552 = distinct !DILexicalBlock(scope: !553, file: !1, line: 617, column: 16)
!553 = distinct !DILexicalBlock(scope: !554, file: !1, line: 617, column: 9)
!554 = distinct !DILexicalBlock(scope: !555, file: !1, line: 590, column: 30)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 590, column: 3)
!556 = distinct !DILexicalBlock(scope: !378, file: !1, line: 590, column: 3)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "phi", scope: !550, file: !1, line: 639, type: !17)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "theta", scope: !559, file: !1, line: 679, type: !17)
!559 = distinct !DILexicalBlock(scope: !551, file: !1, line: 678, column: 28)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Ebind", scope: !559, file: !1, line: 679, type: !17)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Eelec", scope: !559, file: !1, line: 679, type: !17)
!562 = !DISubprogram(name: "sqr", scope: !563, file: !563, line: 197, type: !564, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, variables: !566)
!563 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!564 = !DISubroutineType(types: !565)
!565 = !{!17, !17}
!566 = !{!567}
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !562, file: !563, line: 197, type: !17)
!568 = !DISubprogram(name: "polar2cart", scope: !1, file: !1, line: 392, type: !569, isLocal: true, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: true, variables: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !17, !17, !242}
!571 = !{!572, !573, !574}
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "phi", arg: 1, scope: !568, file: !1, line: 392, type: !17)
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "theta", arg: 2, scope: !568, file: !1, line: 392, type: !17)
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 3, scope: !568, file: !1, line: 392, type: !242)
!575 = !DISubprogram(name: "iprod", scope: !563, file: !563, line: 343, type: !576, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, variables: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{!17, !242, !242}
!578 = !{!579, !580}
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !575, file: !563, line: 343, type: !242)
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !575, file: !563, line: 343, type: !242)
!581 = !DISubprogram(name: "svmul", scope: !563, file: !563, line: 304, type: !582, isLocal: true, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, variables: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !17, !242, !242}
!584 = !{!585, !586, !587}
!585 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !581, file: !563, line: 304, type: !17)
!586 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v1", arg: 2, scope: !581, file: !563, line: 304, type: !242)
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v2", arg: 3, scope: !581, file: !563, line: 304, type: !242)
!588 = !DISubprogram(name: "rvec_inc", scope: !563, file: !563, line: 231, type: !589, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, variables: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !242, !242}
!591 = !{!592, !593, !594, !595, !596}
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !588, file: !563, line: 231, type: !242)
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !588, file: !563, line: 231, type: !242)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !588, file: !563, line: 233, type: !17)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !588, file: !563, line: 233, type: !17)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !588, file: !563, line: 233, type: !17)
!597 = !DISubprogram(name: "clear_rvec", scope: !563, file: !563, line: 316, type: !598, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, variables: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !242}
!600 = !{!601}
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !597, file: !563, line: 316, type: !242)
!602 = !{!603, !614, !619, !620, !622, !623, !624, !625, !626, !627, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !662, !665, !666, !667, !668, !669, !670}
!603 = !DIGlobalVariable(name: "recoil", scope: !0, file: !1, line: 132, type: !604, isLocal: false, isDefinition: true, variable: [27 x %struct.t_recoil]* @recoil)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 3456, align: 32, elements: !612)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_recoil", file: !1, line: 130, baseType: !606)
!606 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 128, size: 128, align: 32, elements: !607)
!607 = !{!608, !609, !610, !611}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "E_K", scope: !606, file: !1, line: 129, baseType: !17, size: 32, align: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "E_L", scope: !606, file: !1, line: 129, baseType: !17, size: 32, align: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "Prob_K", scope: !606, file: !1, line: 129, baseType: !17, size: 32, align: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "tau", scope: !606, file: !1, line: 129, baseType: !17, size: 32, align: 32, offset: 96)
!612 = !{!613}
!613 = !DISubrange(count: 27)
!614 = !DIGlobalVariable(name: "ppp", scope: !310, file: !1, line: 321, type: !615, isLocal: true, isDefinition: true, variable: [6 x [8 x double]]* @ptheta_incoh.ppp)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 3072, align: 64, elements: !616)
!616 = !{!617, !618}
!617 = !DISubrange(count: 6)
!618 = !DISubrange(count: 8)
!619 = !DIGlobalVariable(name: "bFirst", scope: !322, file: !1, line: 352, type: !16, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariable(name: "intp", scope: !322, file: !1, line: 353, type: !621, isLocal: true, isDefinition: true, variable: float*** @rand_theta_incoh.intp)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!622 = !DIGlobalVariable(name: "i", scope: !322, file: !1, line: 354, type: !16, isLocal: true, isDefinition: true, variable: i32* @rand_theta_incoh.i)
!623 = !DIGlobalVariable(name: "j", scope: !322, file: !1, line: 354, type: !16, isLocal: true, isDefinition: true, variable: i32* @rand_theta_incoh.j)
!624 = !DIGlobalVariable(name: "cur", scope: !322, file: !1, line: 354, type: !16, isLocal: true, isDefinition: true, variable: i32* @rand_theta_incoh.cur)
!625 = !DIGlobalVariable(name: "xvg", scope: !378, file: !1, line: 478, type: !25, isLocal: true, isDefinition: true, variable: %struct.__sFILE** @ionize.xvg)
!626 = !DIGlobalVariable(name: "ion", scope: !378, file: !1, line: 478, type: !25, isLocal: true, isDefinition: true, variable: %struct.__sFILE** @ionize.ion)
!627 = !DIGlobalVariable(name: "leg", scope: !378, file: !1, line: 479, type: !628, isLocal: true, isDefinition: true, variable: [5 x i8*]* @ionize.leg)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 320, align: 64, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 5)
!631 = !DIGlobalVariable(name: "bFirst", scope: !378, file: !1, line: 480, type: !16, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariable(name: "t0", scope: !378, file: !1, line: 481, type: !17, isLocal: true, isDefinition: true, variable: float* @ionize.t0)
!633 = !DIGlobalVariable(name: "imax", scope: !378, file: !1, line: 481, type: !17, isLocal: true, isDefinition: true, variable: float* @ionize.imax)
!634 = !DIGlobalVariable(name: "width", scope: !378, file: !1, line: 481, type: !17, isLocal: true, isDefinition: true, variable: float* @ionize.width)
!635 = !DIGlobalVariable(name: "rho", scope: !378, file: !1, line: 481, type: !17, isLocal: true, isDefinition: true, variable: float* @ionize.rho)
!636 = !DIGlobalVariable(name: "nphot", scope: !378, file: !1, line: 481, type: !17, isLocal: true, isDefinition: true, variable: float* @ionize.nphot)
!637 = !DIGlobalVariable(name: "interval", scope: !378, file: !1, line: 482, type: !17, isLocal: true, isDefinition: true, variable: float* @ionize.interval)
!638 = !DIGlobalVariable(name: "dq_tot", scope: !378, file: !1, line: 483, type: !16, isLocal: true, isDefinition: true, variable: i32* @ionize.dq_tot)
!639 = !DIGlobalVariable(name: "nkd_tot", scope: !378, file: !1, line: 483, type: !16, isLocal: true, isDefinition: true, variable: i32* @ionize.nkd_tot)
!640 = !DIGlobalVariable(name: "ephot", scope: !378, file: !1, line: 483, type: !16, isLocal: true, isDefinition: true, variable: i32* @ionize.ephot)
!641 = !DIGlobalVariable(name: "mode", scope: !378, file: !1, line: 483, type: !16, isLocal: true, isDefinition: true, variable: i32* @ionize.mode)
!642 = !DIGlobalVariable(name: "ca", scope: !378, file: !1, line: 484, type: !214, isLocal: true, isDefinition: true, variable: %struct.t_cross_atom** @ionize.ca)
!643 = !DIGlobalVariable(name: "Eindex", scope: !378, file: !1, line: 485, type: !16, isLocal: true, isDefinition: true, variable: i32* @ionize.Eindex)
!644 = !DIGlobalVariable(name: "element", scope: !0, file: !1, line: 106, type: !645, isLocal: true, isDefinition: true, variable: [7 x %struct.t_element]* @element)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 1344, align: 64, elements: !660)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_element", file: !1, line: 104, baseType: !647)
!647 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 100, size: 192, align: 64, elements: !648)
!648 = !{!649, !650, !651}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !647, file: !1, line: 101, baseType: !53, size: 64, align: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "nel", scope: !647, file: !1, line: 102, baseType: !16, size: 32, align: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "cross", scope: !647, file: !1, line: 103, baseType: !652, size: 64, align: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cross", file: !1, line: 50, baseType: !654)
!654 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 48, size: 128, align: 32, elements: !655)
!655 = !{!656, !657, !658, !659}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "photo", scope: !654, file: !1, line: 49, baseType: !17, size: 32, align: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "coh", scope: !654, file: !1, line: 49, baseType: !17, size: 32, align: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "incoh", scope: !654, file: !1, line: 49, baseType: !17, size: 32, align: 32, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "incoh_abs", scope: !654, file: !1, line: 49, baseType: !17, size: 32, align: 32, offset: 96)
!660 = !{!661}
!661 = !DISubrange(count: 7)
!662 = !DIGlobalVariable(name: "cross_sec_h", scope: !0, file: !1, line: 59, type: !663, isLocal: true, isDefinition: true, variable: [6 x %struct.t_cross]* @cross_sec_h)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 768, align: 32, elements: !664)
!664 = !{!617}
!665 = !DIGlobalVariable(name: "cross_sec_c", scope: !0, file: !1, line: 67, type: !663, isLocal: true, isDefinition: true, variable: [6 x %struct.t_cross]* @cross_sec_c)
!666 = !DIGlobalVariable(name: "cross_sec_n", scope: !0, file: !1, line: 75, type: !663, isLocal: true, isDefinition: true, variable: [6 x %struct.t_cross]* @cross_sec_n)
!667 = !DIGlobalVariable(name: "cross_sec_o", scope: !0, file: !1, line: 83, type: !663, isLocal: true, isDefinition: true, variable: [6 x %struct.t_cross]* @cross_sec_o)
!668 = !DIGlobalVariable(name: "cross_sec_s", scope: !0, file: !1, line: 91, type: !663, isLocal: true, isDefinition: true, variable: [6 x %struct.t_cross]* @cross_sec_s)
!669 = !DIGlobalVariable(name: "ionize_seed", scope: !0, file: !1, line: 175, type: !16, isLocal: true, isDefinition: true, variable: i32* @ionize_seed)
!670 = !DIGlobalVariable(name: "Energies", scope: !0, file: !1, line: 174, type: !671, isLocal: true, isDefinition: true, variable: [6 x i32]* @Energies)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 192, align: 32, elements: !664)
!672 = !{}
!673 = !{i32 2, !"Dwarf Version", i32 2}
!674 = !{i32 2, !"Debug Info Version", i32 700000003}
!675 = !{i32 1, !"PIC Level", i32 2}
!676 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!677 = !DIExpression()
!678 = !DILocation(line: 348, column: 40, scope: !21)
!679 = !DILocation(line: 348, column: 50, scope: !21)
!680 = !DILocation(line: 349, column: 12, scope: !681)
!681 = distinct !DILexicalBlock(scope: !21, file: !22, line: 349, column: 6)
!682 = !DILocation(line: 349, column: 6, scope: !681)
!683 = !{!684, !688, i64 12}
!684 = !{!"__sFILE", !685, i64 0, !688, i64 8, !688, i64 12, !689, i64 16, !689, i64 18, !690, i64 24, !688, i64 40, !685, i64 48, !685, i64 56, !685, i64 64, !685, i64 72, !685, i64 80, !690, i64 88, !685, i64 104, !688, i64 112, !686, i64 116, !686, i64 119, !690, i64 120, !688, i64 136, !691, i64 144}
!685 = !{!"any pointer", !686, i64 0}
!686 = !{!"omnipotent char", !687, i64 0}
!687 = !{!"Simple C/C++ TBAA"}
!688 = !{!"int", !686, i64 0}
!689 = !{!"short", !686, i64 0}
!690 = !{!"__sbuf", !685, i64 0, !688, i64 8}
!691 = !{!"long long", !686, i64 0}
!692 = !DILocation(line: 349, column: 15, scope: !681)
!693 = !DILocation(line: 349, column: 20, scope: !681)
!694 = !DILocation(line: 350, column: 10, scope: !681)
!695 = !DILocation(line: 349, column: 38, scope: !681)
!696 = !{!684, !688, i64 40}
!697 = !DILocation(line: 349, column: 31, scope: !681)
!698 = !DILocation(line: 349, column: 59, scope: !681)
!699 = !DILocation(line: 349, column: 47, scope: !681)
!700 = !DILocation(line: 350, column: 23, scope: !681)
!701 = !DILocation(line: 350, column: 16, scope: !681)
!702 = !DILocation(line: 350, column: 18, scope: !681)
!703 = !{!684, !685, i64 0}
!704 = !DILocation(line: 350, column: 21, scope: !681)
!705 = !{!686, !686, i64 0}
!706 = !DILocation(line: 350, column: 3, scope: !681)
!707 = !DILocation(line: 352, column: 11, scope: !681)
!708 = !DILocation(line: 352, column: 3, scope: !681)
!709 = !DILocation(line: 353, column: 1, scope: !21)
!710 = !DILocation(line: 114, column: 15, scope: !89)
!711 = !DILocation(line: 116, column: 20, scope: !89)
!712 = !DILocation(line: 116, column: 12, scope: !89)
!713 = !DILocation(line: 116, column: 57, scope: !89)
!714 = !DILocation(line: 116, column: 45, scope: !89)
!715 = !DILocation(line: 116, column: 5, scope: !89)
!716 = !DILocation(line: 204, column: 53, scope: !95)
!717 = !DILocation(line: 205, column: 16, scope: !95)
!718 = !DILocation(line: 205, column: 23, scope: !95)
!719 = !DILocation(line: 205, column: 26, scope: !95)
!720 = !DILocation(line: 205, column: 47, scope: !95)
!721 = !DILocation(line: 205, column: 5, scope: !95)
!722 = !DILocation(line: 207, column: 54, scope: !101)
!723 = !DILocation(line: 208, column: 16, scope: !101)
!724 = !DILocation(line: 208, column: 23, scope: !101)
!725 = !DILocation(line: 208, column: 26, scope: !101)
!726 = !DILocation(line: 208, column: 46, scope: !101)
!727 = !DILocation(line: 208, column: 5, scope: !101)
!728 = !DILocation(line: 210, column: 59, scope: !107)
!729 = !DILocation(line: 211, column: 16, scope: !107)
!730 = !DILocation(line: 211, column: 23, scope: !107)
!731 = !DILocation(line: 211, column: 26, scope: !107)
!732 = !DILocation(line: 211, column: 47, scope: !107)
!733 = !DILocation(line: 211, column: 5, scope: !107)
!734 = !DILocation(line: 213, column: 50, scope: !113)
!735 = !DILocation(line: 214, column: 12, scope: !113)
!736 = !DILocation(line: 214, column: 33, scope: !113)
!737 = !DILocation(line: 214, column: 5, scope: !113)
!738 = !DILocation(line: 216, column: 51, scope: !116)
!739 = !DILocation(line: 217, column: 12, scope: !116)
!740 = !DILocation(line: 217, column: 32, scope: !116)
!741 = !DILocation(line: 217, column: 5, scope: !116)
!742 = !DILocation(line: 219, column: 56, scope: !119)
!743 = !DILocation(line: 220, column: 12, scope: !119)
!744 = !DILocation(line: 220, column: 33, scope: !119)
!745 = !DILocation(line: 220, column: 5, scope: !119)
!746 = !DILocation(line: 222, column: 50, scope: !122)
!747 = !DILocation(line: 223, column: 16, scope: !122)
!748 = !DILocation(line: 223, column: 5, scope: !122)
!749 = !DILocation(line: 225, column: 51, scope: !125)
!750 = !DILocation(line: 226, column: 16, scope: !125)
!751 = !DILocation(line: 226, column: 5, scope: !125)
!752 = !DILocation(line: 228, column: 56, scope: !128)
!753 = !DILocation(line: 229, column: 16, scope: !128)
!754 = !DILocation(line: 229, column: 5, scope: !128)
!755 = !DILocation(line: 231, column: 52, scope: !131)
!756 = !DILocation(line: 232, column: 44, scope: !131)
!757 = !DILocation(line: 233, column: 13, scope: !131)
!758 = !DILocation(line: 234, column: 26, scope: !131)
!759 = !DILocation(line: 234, column: 5, scope: !131)
!760 = !DILocation(line: 236, column: 53, scope: !140)
!761 = !DILocation(line: 237, column: 51, scope: !140)
!762 = !DILocation(line: 238, column: 13, scope: !140)
!763 = !DILocation(line: 239, column: 26, scope: !140)
!764 = !DILocation(line: 239, column: 12, scope: !140)
!765 = !DILocation(line: 239, column: 5, scope: !140)
!766 = !DILocation(line: 242, column: 58, scope: !149)
!767 = !DILocation(line: 246, column: 7, scope: !149)
!768 = !DILocation(line: 248, column: 26, scope: !149)
!769 = !DILocation(line: 248, column: 33, scope: !149)
!770 = !DILocation(line: 248, column: 5, scope: !149)
!771 = !DILocation(line: 257, column: 53, scope: !162)
!772 = !DILocation(line: 204, column: 53, scope: !95, inlinedAt: !773)
!773 = distinct !DILocation(line: 258, column: 12, scope: !162)
!774 = !DILocation(line: 205, column: 16, scope: !95, inlinedAt: !773)
!775 = !DILocation(line: 205, column: 47, scope: !95, inlinedAt: !773)
!776 = !DILocation(line: 205, column: 23, scope: !95, inlinedAt: !773)
!777 = !DILocation(line: 258, column: 60, scope: !162)
!778 = !DILocation(line: 258, column: 36, scope: !162)
!779 = !DILocation(line: 258, column: 5, scope: !162)
!780 = !DILocation(line: 260, column: 54, scope: !165)
!781 = !DILocation(line: 207, column: 54, scope: !101, inlinedAt: !782)
!782 = distinct !DILocation(line: 261, column: 12, scope: !165)
!783 = !DILocation(line: 208, column: 16, scope: !101, inlinedAt: !782)
!784 = !DILocation(line: 208, column: 46, scope: !101, inlinedAt: !782)
!785 = !DILocation(line: 208, column: 23, scope: !101, inlinedAt: !782)
!786 = !DILocation(line: 261, column: 59, scope: !165)
!787 = !DILocation(line: 261, column: 36, scope: !165)
!788 = !DILocation(line: 261, column: 5, scope: !165)
!789 = !DILocation(line: 263, column: 59, scope: !168)
!790 = !DILocation(line: 210, column: 59, scope: !107, inlinedAt: !791)
!791 = distinct !DILocation(line: 264, column: 12, scope: !168)
!792 = !DILocation(line: 211, column: 16, scope: !107, inlinedAt: !791)
!793 = !DILocation(line: 211, column: 47, scope: !107, inlinedAt: !791)
!794 = !DILocation(line: 211, column: 23, scope: !107, inlinedAt: !791)
!795 = !DILocation(line: 264, column: 60, scope: !168)
!796 = !DILocation(line: 264, column: 36, scope: !168)
!797 = !DILocation(line: 264, column: 5, scope: !168)
!798 = !DILocation(line: 642, column: 45, scope: !171)
!799 = !DILocation(line: 642, column: 57, scope: !171)
!800 = !DILocation(line: 642, column: 72, scope: !171)
!801 = !DILocation(line: 643, column: 27, scope: !171)
!802 = !DILocation(line: 643, column: 37, scope: !171)
!803 = !DILocation(line: 644, column: 23, scope: !171)
!804 = !DILocation(line: 644, column: 13, scope: !171)
!805 = !{!806, !806, i64 0}
!806 = !{!"float", !686, i64 0}
!807 = !DILocation(line: 644, column: 51, scope: !171)
!808 = !DILocation(line: 644, column: 41, scope: !171)
!809 = !DILocation(line: 645, column: 1, scope: !171)
!810 = !DILocation(line: 647, column: 45, scope: !185)
!811 = !DILocation(line: 647, column: 58, scope: !185)
!812 = !DILocation(line: 647, column: 74, scope: !185)
!813 = !DILocation(line: 648, column: 28, scope: !185)
!814 = !DILocation(line: 648, column: 38, scope: !185)
!815 = !DIExpression(DW_OP_bit_piece, 0, 64)
!816 = !DIExpression(DW_OP_bit_piece, 64, 64)
!817 = !DILocation(line: 649, column: 13, scope: !185)
!818 = !{!819, !819, i64 0}
!819 = !{!"double", !686, i64 0}
!820 = !DILocation(line: 649, column: 41, scope: !185)
!821 = !DILocation(line: 650, column: 1, scope: !185)
!822 = !DILocation(line: 652, column: 47, scope: !199)
!823 = !DILocation(line: 652, column: 59, scope: !199)
!824 = !DILocation(line: 652, column: 74, scope: !199)
!825 = !DILocation(line: 653, column: 27, scope: !199)
!826 = !DILocation(line: 653, column: 37, scope: !199)
!827 = !DILocation(line: 654, column: 23, scope: !199)
!828 = !DILocation(line: 654, column: 13, scope: !199)
!829 = !DILocation(line: 654, column: 51, scope: !199)
!830 = !DILocation(line: 654, column: 41, scope: !199)
!831 = !DILocation(line: 655, column: 1, scope: !199)
!832 = !DILocation(line: 657, column: 47, scope: !205)
!833 = !DILocation(line: 657, column: 60, scope: !205)
!834 = !DILocation(line: 657, column: 76, scope: !205)
!835 = !DILocation(line: 658, column: 28, scope: !205)
!836 = !DILocation(line: 658, column: 38, scope: !205)
!837 = !DILocation(line: 659, column: 13, scope: !205)
!838 = !DILocation(line: 659, column: 41, scope: !205)
!839 = !DILocation(line: 660, column: 1, scope: !205)
!840 = !DILocation(line: 179, column: 20, scope: !211)
!841 = !DILocation(line: 179, column: 37, scope: !211)
!842 = !DILocation(line: 179, column: 44, scope: !211)
!843 = !DILocation(line: 179, column: 52, scope: !211)
!844 = !DILocation(line: 179, column: 61, scope: !211)
!845 = !DILocation(line: 182, column: 15, scope: !211)
!846 = !{!847, !688, i64 0}
!847 = !{!"", !688, i64 0, !688, i64 4, !688, i64 8, !806, i64 12, !806, i64 16, !806, i64 20, !806, i64 24}
!848 = !DILocation(line: 182, column: 21, scope: !211)
!849 = !{!847, !688, i64 4}
!850 = !DILocation(line: 182, column: 27, scope: !211)
!851 = !{!847, !688, i64 8}
!852 = !DILocation(line: 181, column: 3, scope: !211)
!853 = !DILocation(line: 183, column: 1, scope: !211)
!854 = !DILocation(line: 185, column: 35, scope: !231)
!855 = !DILocation(line: 185, column: 50, scope: !231)
!856 = !DILocation(line: 186, column: 15, scope: !231)
!857 = !DILocation(line: 186, column: 30, scope: !231)
!858 = !DILocation(line: 188, column: 3, scope: !231)
!859 = !DILocation(line: 188, column: 7, scope: !231)
!860 = !DILocation(line: 194, column: 3, scope: !231)
!861 = !DILocation(line: 195, column: 3, scope: !231)
!862 = !DILocation(line: 196, column: 3, scope: !231)
!863 = !{!864, !688, i64 4}
!864 = !{!"", !806, i64 0, !688, i64 4, !685, i64 8, !685, i64 16, !685, i64 24, !685, i64 32, !685, i64 40, !685, i64 48, !685, i64 56, !685, i64 64, !685, i64 72, !685, i64 80, !685, i64 88, !685, i64 96, !685, i64 104, !685, i64 112, !685, i64 120, !685, i64 128, !685, i64 136, !685, i64 144, !685, i64 152, !685, i64 160, !685, i64 168}
!865 = !DILocation(line: 189, column: 17, scope: !231)
!866 = !DILocation(line: 197, column: 3, scope: !231)
!867 = !DILocation(line: 190, column: 9, scope: !231)
!868 = !DILocation(line: 192, column: 8, scope: !231)
!869 = !DILocation(line: 198, column: 19, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !1, line: 198, column: 3)
!871 = distinct !DILexicalBlock(scope: !231, file: !1, line: 198, column: 3)
!872 = !DILocation(line: 198, column: 14, scope: !870)
!873 = !DILocation(line: 198, column: 3, scope: !871)
!874 = !DILocation(line: 212, column: 19, scope: !875)
!875 = distinct !DILexicalBlock(scope: !870, file: !1, line: 198, column: 29)
!876 = !DILocation(line: 199, column: 5, scope: !875)
!877 = !DILocation(line: 199, column: 11, scope: !875)
!878 = !DILocation(line: 199, column: 13, scope: !875)
!879 = !DILocation(line: 200, column: 11, scope: !875)
!880 = !DILocation(line: 200, column: 13, scope: !875)
!881 = !DILocation(line: 201, column: 12, scope: !875)
!882 = !{!685, !685, i64 0}
!883 = !DILocation(line: 201, column: 10, scope: !875)
!884 = !DILocation(line: 191, column: 9, scope: !231)
!885 = !DILocation(line: 192, column: 10, scope: !231)
!886 = !DILocation(line: 202, column: 5, scope: !887)
!887 = distinct !DILexicalBlock(scope: !875, file: !1, line: 202, column: 5)
!888 = !DILocation(line: 203, column: 33, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !1, line: 203, column: 11)
!890 = distinct !DILexicalBlock(scope: !887, file: !1, line: 202, column: 5)
!891 = !{!892, !685, i64 0}
!892 = !{!"", !685, i64 0, !688, i64 8, !685, i64 16}
!893 = !DILocation(line: 203, column: 38, scope: !889)
!894 = !DILocation(line: 203, column: 11, scope: !889)
!895 = !DILocation(line: 203, column: 63, scope: !889)
!896 = !DILocation(line: 203, column: 11, scope: !890)
!897 = !DILocation(line: 204, column: 23, scope: !898)
!898 = distinct !DILexicalBlock(scope: !889, file: !1, line: 203, column: 69)
!899 = !{!892, !688, i64 8}
!900 = !DILocation(line: 204, column: 8, scope: !898)
!901 = !DILocation(line: 204, column: 10, scope: !898)
!902 = !DILocation(line: 207, column: 9, scope: !875)
!903 = !DILocation(line: 202, column: 16, scope: !890)
!904 = !DILocation(line: 207, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !875, file: !1, line: 207, column: 9)
!906 = !DILocation(line: 208, column: 7, scope: !905)
!907 = !DILocation(line: 210, column: 5, scope: !875)
!908 = !DILocation(line: 210, column: 15, scope: !875)
!909 = !{!688, !688, i64 0}
!910 = !DILocation(line: 212, column: 44, scope: !875)
!911 = !DILocation(line: 212, column: 27, scope: !875)
!912 = !DILocation(line: 212, column: 48, scope: !875)
!913 = !{!892, !685, i64 16}
!914 = !DILocation(line: 212, column: 62, scope: !875)
!915 = !{!916, !806, i64 0}
!916 = !{!"", !806, i64 0, !806, i64 4, !806, i64 8, !806, i64 12}
!917 = !DILocation(line: 212, column: 11, scope: !875)
!918 = !DILocation(line: 212, column: 17, scope: !875)
!919 = !{!847, !806, i64 16}
!920 = !DILocation(line: 213, column: 62, scope: !875)
!921 = !{!916, !806, i64 8}
!922 = !DILocation(line: 213, column: 11, scope: !875)
!923 = !DILocation(line: 213, column: 17, scope: !875)
!924 = !{!847, !806, i64 20}
!925 = !DILocation(line: 214, column: 35, scope: !875)
!926 = !DILocation(line: 214, column: 11, scope: !875)
!927 = !DILocation(line: 214, column: 17, scope: !875)
!928 = !{!847, !806, i64 12}
!929 = !DILocation(line: 215, column: 5, scope: !875)
!930 = !DILocation(line: 217, column: 13, scope: !931)
!931 = distinct !DILexicalBlock(scope: !875, file: !1, line: 215, column: 22)
!932 = !DILocation(line: 217, column: 21, scope: !931)
!933 = !{!847, !806, i64 24}
!934 = !DILocation(line: 218, column: 7, scope: !931)
!935 = !DILocation(line: 220, column: 13, scope: !931)
!936 = !DILocation(line: 220, column: 21, scope: !931)
!937 = !DILocation(line: 221, column: 7, scope: !931)
!938 = !DILocation(line: 223, column: 13, scope: !931)
!939 = !DILocation(line: 223, column: 21, scope: !931)
!940 = !DILocation(line: 224, column: 7, scope: !931)
!941 = !DILocation(line: 227, column: 13, scope: !931)
!942 = !DILocation(line: 227, column: 20, scope: !931)
!943 = !DILocation(line: 228, column: 7, scope: !931)
!944 = !DILocation(line: 230, column: 13, scope: !931)
!945 = !DILocation(line: 230, column: 19, scope: !931)
!946 = !DILocation(line: 231, column: 5, scope: !931)
!947 = !DILocation(line: 234, column: 3, scope: !231)
!948 = !DILocation(line: 235, column: 3, scope: !949)
!949 = distinct !DILexicalBlock(scope: !231, file: !1, line: 235, column: 3)
!950 = !DILocation(line: 236, column: 9, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !1, line: 236, column: 9)
!952 = distinct !DILexicalBlock(scope: !949, file: !1, line: 235, column: 3)
!953 = !DILocation(line: 236, column: 20, scope: !951)
!954 = !DILocation(line: 236, column: 9, scope: !952)
!955 = !DILocation(line: 237, column: 41, scope: !951)
!956 = !DILocation(line: 237, column: 7, scope: !951)
!957 = !DILocation(line: 238, column: 3, scope: !231)
!958 = !DILocation(line: 240, column: 3, scope: !231)
!959 = !DILocation(line: 243, column: 1, scope: !231)
!960 = !DILocation(line: 245, column: 28, scope: !281)
!961 = !DILocation(line: 247, column: 11, scope: !962)
!962 = distinct !DILexicalBlock(scope: !281, file: !1, line: 247, column: 7)
!963 = !DILocation(line: 247, column: 13, scope: !962)
!964 = !DILocation(line: 247, column: 7, scope: !281)
!965 = !DILocation(line: 248, column: 22, scope: !962)
!966 = !DILocation(line: 248, column: 17, scope: !962)
!967 = !DILocation(line: 248, column: 5, scope: !962)
!968 = !DILocation(line: 250, column: 18, scope: !962)
!969 = !DILocation(line: 250, column: 13, scope: !962)
!970 = !DILocation(line: 250, column: 5, scope: !962)
!971 = !DILocation(line: 251, column: 1, scope: !281)
!972 = !DILocation(line: 253, column: 28, scope: !286)
!973 = !DILocation(line: 255, column: 14, scope: !286)
!974 = !DILocation(line: 255, column: 15, scope: !286)
!975 = !DILocation(line: 255, column: 22, scope: !286)
!976 = !DILocation(line: 255, column: 17, scope: !286)
!977 = !DILocation(line: 255, column: 28, scope: !286)
!978 = !DILocation(line: 255, column: 23, scope: !286)
!979 = !DILocation(line: 255, column: 3, scope: !286)
!980 = !DILocation(line: 258, column: 29, scope: !289)
!981 = !DILocation(line: 258, column: 49, scope: !289)
!982 = !DILocation(line: 260, column: 8, scope: !289)
!983 = !DILocation(line: 263, column: 3, scope: !289)
!984 = !DILocation(line: 245, column: 28, scope: !281, inlinedAt: !985)
!985 = distinct !DILocation(line: 265, column: 10, scope: !986)
!986 = distinct !DILexicalBlock(scope: !289, file: !1, line: 263, column: 18)
!987 = !DILocation(line: 247, column: 11, scope: !962, inlinedAt: !985)
!988 = !DILocation(line: 247, column: 13, scope: !962, inlinedAt: !985)
!989 = !DILocation(line: 247, column: 7, scope: !281, inlinedAt: !985)
!990 = !DILocation(line: 248, column: 22, scope: !962, inlinedAt: !985)
!991 = !DILocation(line: 248, column: 17, scope: !962, inlinedAt: !985)
!992 = !DILocation(line: 248, column: 5, scope: !962, inlinedAt: !985)
!993 = !DILocation(line: 250, column: 18, scope: !962, inlinedAt: !985)
!994 = !DILocation(line: 250, column: 13, scope: !962, inlinedAt: !985)
!995 = !DILocation(line: 250, column: 5, scope: !962, inlinedAt: !985)
!996 = !DILocation(line: 265, column: 10, scope: !986)
!997 = !DILocation(line: 261, column: 8, scope: !289)
!998 = !DILocation(line: 253, column: 28, scope: !286, inlinedAt: !999)
!999 = distinct !DILocation(line: 266, column: 10, scope: !986)
!1000 = !DILocation(line: 261, column: 11, scope: !289)
!1001 = !DILocation(line: 267, column: 9, scope: !986)
!1002 = !DILocation(line: 268, column: 15, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !986, file: !1, line: 267, column: 9)
!1004 = !DILocation(line: 268, column: 7, scope: !1003)
!1005 = !DILocation(line: 270, column: 15, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 269, column: 14)
!1007 = !DILocation(line: 270, column: 11, scope: !1006)
!1008 = !DILocation(line: 270, column: 7, scope: !1006)
!1009 = !DILocation(line: 255, column: 14, scope: !286, inlinedAt: !999)
!1010 = !DILocation(line: 255, column: 28, scope: !286, inlinedAt: !999)
!1011 = !DILocation(line: 255, column: 15, scope: !286, inlinedAt: !999)
!1012 = !DILocation(line: 255, column: 17, scope: !286, inlinedAt: !999)
!1013 = !DILocation(line: 255, column: 23, scope: !286, inlinedAt: !999)
!1014 = !DILocation(line: 272, column: 12, scope: !1006)
!1015 = !DILocation(line: 272, column: 14, scope: !1006)
!1016 = !DILocation(line: 272, column: 23, scope: !1006)
!1017 = !DILocation(line: 272, column: 19, scope: !1006)
!1018 = !DILocation(line: 272, column: 18, scope: !1006)
!1019 = !DILocation(line: 272, column: 30, scope: !1006)
!1020 = !DILocation(line: 272, column: 28, scope: !1006)
!1021 = !DILocation(line: 272, column: 43, scope: !1006)
!1022 = !DILocation(line: 272, column: 40, scope: !1006)
!1023 = !DILocation(line: 272, column: 26, scope: !1006)
!1024 = !DILocation(line: 272, column: 57, scope: !1006)
!1025 = !DILocation(line: 272, column: 53, scope: !1006)
!1026 = !DILocation(line: 272, column: 52, scope: !1006)
!1027 = !DILocation(line: 272, column: 11, scope: !1006)
!1028 = !DILocation(line: 275, column: 14, scope: !986)
!1029 = !DILocation(line: 275, column: 20, scope: !986)
!1030 = !DILocation(line: 275, column: 15, scope: !986)
!1031 = !DILocation(line: 275, column: 9, scope: !986)
!1032 = !DILocation(line: 275, column: 27, scope: !986)
!1033 = !DILocation(line: 275, column: 22, scope: !986)
!1034 = !DILocation(line: 275, column: 33, scope: !986)
!1035 = !DILocation(line: 275, column: 32, scope: !986)
!1036 = !DILocation(line: 276, column: 5, scope: !986)
!1037 = !DILocation(line: 278, column: 5, scope: !986)
!1038 = !DILocation(line: 279, column: 3, scope: !986)
!1039 = !DILocation(line: 280, column: 3, scope: !289)
!1040 = !DILocation(line: 283, column: 17, scope: !298)
!1041 = !DILocation(line: 283, column: 37, scope: !298)
!1042 = !DILocation(line: 285, column: 14, scope: !298)
!1043 = !DILocation(line: 287, column: 12, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !298, file: !1, line: 287, column: 7)
!1045 = !DILocation(line: 287, column: 14, scope: !1044)
!1046 = !DILocation(line: 287, column: 20, scope: !1044)
!1047 = !DILocation(line: 287, column: 37, scope: !1044)
!1048 = !DILocation(line: 287, column: 30, scope: !1044)
!1049 = !DILocation(line: 287, column: 7, scope: !298)
!1050 = !DILocation(line: 290, column: 3, scope: !298)
!1051 = !DILocation(line: 292, column: 15, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !298, file: !1, line: 290, column: 18)
!1053 = !DILocation(line: 292, column: 16, scope: !1052)
!1054 = !DILocation(line: 292, column: 18, scope: !1052)
!1055 = !DILocation(line: 292, column: 24, scope: !1052)
!1056 = !DILocation(line: 292, column: 10, scope: !1052)
!1057 = !DILocation(line: 292, column: 39, scope: !1052)
!1058 = !DILocation(line: 292, column: 34, scope: !1052)
!1059 = !DILocation(line: 292, column: 31, scope: !1052)
!1060 = !DILocation(line: 292, column: 43, scope: !1052)
!1061 = !DILocation(line: 292, column: 42, scope: !1052)
!1062 = !DILocation(line: 285, column: 8, scope: !298)
!1063 = !DILocation(line: 293, column: 12, scope: !1052)
!1064 = !DILocation(line: 293, column: 10, scope: !1052)
!1065 = !DILocation(line: 293, column: 19, scope: !1052)
!1066 = !DILocation(line: 285, column: 11, scope: !298)
!1067 = !DILocation(line: 294, column: 16, scope: !1052)
!1068 = !DILocation(line: 294, column: 12, scope: !1052)
!1069 = !DILocation(line: 295, column: 5, scope: !1052)
!1070 = !DILocation(line: 297, column: 16, scope: !1052)
!1071 = !DILocation(line: 297, column: 11, scope: !1052)
!1072 = !DILocation(line: 297, column: 25, scope: !1052)
!1073 = !DILocation(line: 297, column: 18, scope: !1052)
!1074 = !DILocation(line: 297, column: 9, scope: !1052)
!1075 = !DILocation(line: 298, column: 5, scope: !1052)
!1076 = !DILocation(line: 300, column: 5, scope: !1052)
!1077 = !DILocation(line: 301, column: 3, scope: !1052)
!1078 = !DILocation(line: 303, column: 1, scope: !298)
!1079 = !DILocation(line: 305, column: 21, scope: !305)
!1080 = !DILocation(line: 307, column: 9, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !305, file: !1, line: 307, column: 7)
!1082 = !DILocation(line: 307, column: 7, scope: !305)
!1083 = !DILocation(line: 310, column: 12, scope: !1081)
!1084 = !DILocation(line: 310, column: 5, scope: !1081)
!1085 = !DILocation(line: 311, column: 1, scope: !305)
!1086 = !DILocation(line: 313, column: 23, scope: !310)
!1087 = !DILocation(line: 313, column: 35, scope: !310)
!1088 = !DILocation(line: 337, column: 24, scope: !310)
!1089 = !DILocation(line: 337, column: 30, scope: !310)
!1090 = !DILocation(line: 337, column: 29, scope: !310)
!1091 = !DILocation(line: 337, column: 46, scope: !310)
!1092 = !DILocation(line: 337, column: 45, scope: !310)
!1093 = !DILocation(line: 337, column: 23, scope: !310)
!1094 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 337, column: 19, scope: !310)
!1096 = !DILocation(line: 199, column: 12, scope: !562, inlinedAt: !1095)
!1097 = !DILocation(line: 337, column: 19, scope: !310)
!1098 = !DILocation(line: 337, column: 18, scope: !310)
!1099 = !DILocation(line: 305, column: 21, scope: !305, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 337, column: 8, scope: !310)
!1101 = !DILocation(line: 307, column: 9, scope: !1081, inlinedAt: !1100)
!1102 = !DILocation(line: 307, column: 7, scope: !305, inlinedAt: !1100)
!1103 = !DILocation(line: 310, column: 12, scope: !1081, inlinedAt: !1100)
!1104 = !DILocation(line: 310, column: 5, scope: !1081, inlinedAt: !1100)
!1105 = !DILocation(line: 337, column: 8, scope: !310)
!1106 = !DILocation(line: 335, column: 10, scope: !310)
!1107 = !DILocation(line: 338, column: 29, scope: !310)
!1108 = !DILocation(line: 338, column: 24, scope: !310)
!1109 = !DILocation(line: 338, column: 33, scope: !310)
!1110 = !DILocation(line: 338, column: 49, scope: !310)
!1111 = !DILocation(line: 338, column: 23, scope: !310)
!1112 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 338, column: 19, scope: !310)
!1114 = !DILocation(line: 199, column: 12, scope: !562, inlinedAt: !1113)
!1115 = !DILocation(line: 338, column: 19, scope: !310)
!1116 = !DILocation(line: 338, column: 18, scope: !310)
!1117 = !DILocation(line: 305, column: 21, scope: !305, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 338, column: 8, scope: !310)
!1119 = !DILocation(line: 307, column: 9, scope: !1081, inlinedAt: !1118)
!1120 = !DILocation(line: 307, column: 7, scope: !305, inlinedAt: !1118)
!1121 = !DILocation(line: 310, column: 12, scope: !1081, inlinedAt: !1118)
!1122 = !DILocation(line: 310, column: 5, scope: !1081, inlinedAt: !1118)
!1123 = !DILocation(line: 338, column: 8, scope: !310)
!1124 = !DILocation(line: 335, column: 13, scope: !310)
!1125 = !DILocation(line: 339, column: 29, scope: !310)
!1126 = !DILocation(line: 339, column: 23, scope: !310)
!1127 = !DILocation(line: 339, column: 34, scope: !310)
!1128 = !DILocation(line: 339, column: 33, scope: !310)
!1129 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 339, column: 19, scope: !310)
!1131 = !DILocation(line: 199, column: 12, scope: !562, inlinedAt: !1130)
!1132 = !DILocation(line: 339, column: 19, scope: !310)
!1133 = !DILocation(line: 339, column: 18, scope: !310)
!1134 = !DILocation(line: 305, column: 21, scope: !305, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 339, column: 8, scope: !310)
!1136 = !DILocation(line: 307, column: 9, scope: !1081, inlinedAt: !1135)
!1137 = !DILocation(line: 307, column: 7, scope: !305, inlinedAt: !1135)
!1138 = !DILocation(line: 310, column: 12, scope: !1081, inlinedAt: !1135)
!1139 = !DILocation(line: 310, column: 5, scope: !1081, inlinedAt: !1135)
!1140 = !DILocation(line: 339, column: 8, scope: !310)
!1141 = !DILocation(line: 335, column: 16, scope: !310)
!1142 = !DILocation(line: 340, column: 30, scope: !310)
!1143 = !DILocation(line: 340, column: 29, scope: !310)
!1144 = !DILocation(line: 340, column: 46, scope: !310)
!1145 = !DILocation(line: 340, column: 45, scope: !310)
!1146 = !DILocation(line: 340, column: 23, scope: !310)
!1147 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 340, column: 19, scope: !310)
!1149 = !DILocation(line: 199, column: 12, scope: !562, inlinedAt: !1148)
!1150 = !DILocation(line: 340, column: 19, scope: !310)
!1151 = !DILocation(line: 340, column: 18, scope: !310)
!1152 = !DILocation(line: 305, column: 21, scope: !305, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 340, column: 8, scope: !310)
!1154 = !DILocation(line: 307, column: 9, scope: !1081, inlinedAt: !1153)
!1155 = !DILocation(line: 307, column: 7, scope: !305, inlinedAt: !1153)
!1156 = !DILocation(line: 310, column: 12, scope: !1081, inlinedAt: !1153)
!1157 = !DILocation(line: 310, column: 5, scope: !1081, inlinedAt: !1153)
!1158 = !DILocation(line: 340, column: 8, scope: !310)
!1159 = !DILocation(line: 335, column: 19, scope: !310)
!1160 = !DILocation(line: 341, column: 33, scope: !310)
!1161 = !DILocation(line: 341, column: 49, scope: !310)
!1162 = !DILocation(line: 341, column: 23, scope: !310)
!1163 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 341, column: 19, scope: !310)
!1165 = !DILocation(line: 199, column: 12, scope: !562, inlinedAt: !1164)
!1166 = !DILocation(line: 341, column: 19, scope: !310)
!1167 = !DILocation(line: 341, column: 18, scope: !310)
!1168 = !DILocation(line: 305, column: 21, scope: !305, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 341, column: 8, scope: !310)
!1170 = !DILocation(line: 307, column: 9, scope: !1081, inlinedAt: !1169)
!1171 = !DILocation(line: 307, column: 7, scope: !305, inlinedAt: !1169)
!1172 = !DILocation(line: 310, column: 12, scope: !1081, inlinedAt: !1169)
!1173 = !DILocation(line: 310, column: 5, scope: !1081, inlinedAt: !1169)
!1174 = !DILocation(line: 341, column: 8, scope: !310)
!1175 = !DILocation(line: 335, column: 22, scope: !310)
!1176 = !DILocation(line: 343, column: 12, scope: !310)
!1177 = !DILocation(line: 343, column: 30, scope: !310)
!1178 = !DILocation(line: 343, column: 26, scope: !310)
!1179 = !DILocation(line: 343, column: 37, scope: !310)
!1180 = !DILocation(line: 343, column: 51, scope: !310)
!1181 = !DILocation(line: 343, column: 35, scope: !310)
!1182 = !DILocation(line: 343, column: 57, scope: !310)
!1183 = !DILocation(line: 343, column: 75, scope: !310)
!1184 = !DILocation(line: 343, column: 71, scope: !310)
!1185 = !DILocation(line: 343, column: 55, scope: !310)
!1186 = !DILocation(line: 335, column: 25, scope: !310)
!1187 = !DILocation(line: 345, column: 10, scope: !310)
!1188 = !DILocation(line: 345, column: 3, scope: !310)
!1189 = !DILocation(line: 348, column: 27, scope: !322)
!1190 = !DILocation(line: 348, column: 39, scope: !322)
!1191 = !DILocation(line: 356, column: 10, scope: !322)
!1192 = !DILocation(line: 355, column: 14, scope: !322)
!1193 = !DILocation(line: 359, column: 7, scope: !322)
!1194 = !DILocation(line: 361, column: 5, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !1, line: 359, column: 15)
!1196 = distinct !DILexicalBlock(scope: !322, file: !1, line: 359, column: 7)
!1197 = !DILocation(line: 362, column: 26, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 362, column: 5)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 362, column: 5)
!1200 = !DILocation(line: 362, column: 5, scope: !1199)
!1201 = !DILocation(line: 363, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 362, column: 30)
!1203 = !DILocation(line: 364, column: 20, scope: !1202)
!1204 = !DILocation(line: 364, column: 9, scope: !1202)
!1205 = !DILocation(line: 364, column: 7, scope: !1202)
!1206 = !DILocation(line: 364, column: 18, scope: !1202)
!1207 = !DILocation(line: 366, column: 29, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 366, column: 7)
!1209 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 366, column: 7)
!1210 = !DILocation(line: 369, column: 15, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 366, column: 33)
!1212 = !DILocation(line: 366, column: 7, scope: !1209)
!1213 = !DILocation(line: 367, column: 30, scope: !1211)
!1214 = !DILocation(line: 367, column: 31, scope: !1211)
!1215 = !DILocation(line: 367, column: 15, scope: !1211)
!1216 = !DILocation(line: 367, column: 2, scope: !1211)
!1217 = !DILocation(line: 367, column: 13, scope: !1211)
!1218 = !DILocation(line: 369, column: 40, scope: !1211)
!1219 = !DILocation(line: 369, column: 38, scope: !1211)
!1220 = !DILocation(line: 369, column: 37, scope: !1211)
!1221 = !DILocation(line: 369, column: 46, scope: !1211)
!1222 = !DILocation(line: 369, column: 28, scope: !1211)
!1223 = !DILocation(line: 369, column: 2, scope: !1211)
!1224 = !DILocation(line: 369, column: 13, scope: !1211)
!1225 = !DILocation(line: 366, column: 18, scope: !1208)
!1226 = !DILocation(line: 370, column: 13, scope: !1211)
!1227 = !DILocation(line: 362, column: 16, scope: !1198)
!1228 = !DILocation(line: 373, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 373, column: 9)
!1230 = !DILocation(line: 373, column: 9, scope: !1195)
!1231 = !DILocation(line: 374, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !1, line: 373, column: 16)
!1233 = !DILocation(line: 375, column: 28, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !1, line: 375, column: 7)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !1, line: 375, column: 7)
!1236 = !DILocation(line: 375, column: 7, scope: !1235)
!1237 = !DILocation(line: 376, column: 10, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 375, column: 32)
!1239 = !DILocation(line: 376, column: 26, scope: !1238)
!1240 = !DILocation(line: 376, column: 25, scope: !1238)
!1241 = !DILocation(line: 376, column: 23, scope: !1238)
!1242 = !DILocation(line: 376, column: 2, scope: !1238)
!1243 = !DILocation(line: 377, column: 23, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !1, line: 377, column: 2)
!1245 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 377, column: 2)
!1246 = !DILocation(line: 378, column: 12, scope: !1244)
!1247 = !DILocation(line: 377, column: 2, scope: !1245)
!1248 = !DILocation(line: 377, column: 12, scope: !1244)
!1249 = !DILocation(line: 378, column: 35, scope: !1244)
!1250 = !DILocation(line: 378, column: 27, scope: !1244)
!1251 = !DILocation(line: 378, column: 4, scope: !1244)
!1252 = !DILocation(line: 377, column: 13, scope: !1244)
!1253 = !DILocation(line: 379, column: 2, scope: !1238)
!1254 = !DILocation(line: 375, column: 18, scope: !1234)
!1255 = !DILocation(line: 383, column: 3, scope: !1195)
!1256 = !DILocation(line: 385, column: 9, scope: !322)
!1257 = !DILocation(line: 355, column: 10, scope: !322)
!1258 = !DILocation(line: 386, column: 51, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 386, column: 3)
!1260 = distinct !DILexicalBlock(scope: !322, file: !1, line: 386, column: 3)
!1261 = !DILocation(line: 386, column: 32, scope: !1259)
!1262 = !DILocation(line: 386, column: 22, scope: !1259)
!1263 = !DILocation(line: 386, column: 14, scope: !1259)
!1264 = !DILocation(line: 386, column: 30, scope: !1259)
!1265 = !DILocation(line: 386, column: 3, scope: !1260)
!1266 = !DILocation(line: 389, column: 12, scope: !322)
!1267 = !DILocation(line: 389, column: 11, scope: !322)
!1268 = !DILocation(line: 389, column: 20, scope: !322)
!1269 = !DILocation(line: 389, column: 19, scope: !322)
!1270 = !DILocation(line: 389, column: 40, scope: !322)
!1271 = !DILocation(line: 389, column: 55, scope: !322)
!1272 = !DILocation(line: 389, column: 38, scope: !322)
!1273 = !DILocation(line: 389, column: 14, scope: !322)
!1274 = !DILocation(line: 389, column: 75, scope: !322)
!1275 = !DILocation(line: 389, column: 3, scope: !322)
!1276 = !DILocation(line: 399, column: 23, scope: !334)
!1277 = !DILocation(line: 399, column: 30, scope: !334)
!1278 = !DILocation(line: 403, column: 17, scope: !334)
!1279 = !DILocation(line: 403, column: 11, scope: !334)
!1280 = !DILocation(line: 401, column: 8, scope: !334)
!1281 = !DILocation(line: 404, column: 17, scope: !334)
!1282 = !DILocation(line: 404, column: 11, scope: !334)
!1283 = !DILocation(line: 401, column: 14, scope: !334)
!1284 = !DILocation(line: 392, column: 29, scope: !568, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 405, column: 3, scope: !334)
!1286 = !DILocation(line: 392, column: 38, scope: !568, inlinedAt: !1285)
!1287 = !DILocation(line: 392, column: 49, scope: !568, inlinedAt: !1285)
!1288 = !DILocation(line: 394, column: 15, scope: !568, inlinedAt: !1285)
!1289 = !DILocation(line: 394, column: 11, scope: !568, inlinedAt: !1285)
!1290 = !DILocation(line: 394, column: 24, scope: !568, inlinedAt: !1285)
!1291 = !DILocation(line: 394, column: 20, scope: !568, inlinedAt: !1285)
!1292 = !DILocation(line: 394, column: 19, scope: !568, inlinedAt: !1285)
!1293 = !DILocation(line: 394, column: 9, scope: !568, inlinedAt: !1285)
!1294 = !DILocation(line: 395, column: 11, scope: !568, inlinedAt: !1285)
!1295 = !DILocation(line: 395, column: 19, scope: !568, inlinedAt: !1285)
!1296 = !DILocation(line: 395, column: 3, scope: !568, inlinedAt: !1285)
!1297 = !DILocation(line: 395, column: 9, scope: !568, inlinedAt: !1285)
!1298 = !DILocation(line: 396, column: 11, scope: !568, inlinedAt: !1285)
!1299 = !DILocation(line: 396, column: 3, scope: !568, inlinedAt: !1285)
!1300 = !DILocation(line: 396, column: 9, scope: !568, inlinedAt: !1285)
!1301 = !DILocation(line: 406, column: 1, scope: !334)
!1302 = !DILocation(line: 408, column: 35, scope: !342)
!1303 = !DILocation(line: 408, column: 43, scope: !342)
!1304 = !DILocation(line: 408, column: 50, scope: !342)
!1305 = !DILocation(line: 408, column: 59, scope: !342)
!1306 = !DILocation(line: 412, column: 8, scope: !342)
!1307 = !DILocation(line: 415, column: 11, scope: !342)
!1308 = !DILocation(line: 415, column: 10, scope: !342)
!1309 = !DILocation(line: 343, column: 31, scope: !575, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 415, column: 16, scope: !342)
!1311 = !DILocation(line: 343, column: 38, scope: !575, inlinedAt: !1310)
!1312 = !DILocation(line: 345, column: 11, scope: !575, inlinedAt: !1310)
!1313 = !DILocation(line: 345, column: 16, scope: !575, inlinedAt: !1310)
!1314 = !DILocation(line: 345, column: 23, scope: !575, inlinedAt: !1310)
!1315 = !DILocation(line: 345, column: 28, scope: !575, inlinedAt: !1310)
!1316 = !DILocation(line: 345, column: 22, scope: !575, inlinedAt: !1310)
!1317 = !DILocation(line: 345, column: 35, scope: !575, inlinedAt: !1310)
!1318 = !DILocation(line: 345, column: 40, scope: !575, inlinedAt: !1310)
!1319 = !DILocation(line: 345, column: 34, scope: !575, inlinedAt: !1310)
!1320 = !DILocation(line: 415, column: 16, scope: !342)
!1321 = !DILocation(line: 415, column: 15, scope: !342)
!1322 = !DILocation(line: 415, column: 7, scope: !342)
!1323 = !DILocation(line: 411, column: 8, scope: !342)
!1324 = !DILocation(line: 411, column: 18, scope: !342)
!1325 = !DILocation(line: 411, column: 10, scope: !342)
!1326 = !DILocation(line: 411, column: 12, scope: !342)
!1327 = !DILocation(line: 427, column: 7, scope: !342)
!1328 = !DILocation(line: 411, column: 20, scope: !342)
!1329 = !DILocation(line: 411, column: 16, scope: !342)
!1330 = !DILocation(line: 433, column: 12, scope: !342)
!1331 = !DILocation(line: 411, column: 22, scope: !342)
!1332 = !DILocation(line: 411, column: 24, scope: !342)
!1333 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 435, column: 18, scope: !342)
!1335 = !DILocation(line: 435, column: 26, scope: !342)
!1336 = !DILocation(line: 435, column: 25, scope: !342)
!1337 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 435, column: 28, scope: !342)
!1339 = !DILocation(line: 435, column: 11, scope: !342)
!1340 = !DILocation(line: 411, column: 14, scope: !342)
!1341 = !DILocation(line: 436, column: 15, scope: !342)
!1342 = !DILocation(line: 436, column: 11, scope: !342)
!1343 = !DILocation(line: 411, column: 26, scope: !342)
!1344 = !DILocation(line: 439, column: 16, scope: !342)
!1345 = !DILocation(line: 439, column: 18, scope: !342)
!1346 = !DILocation(line: 439, column: 13, scope: !342)
!1347 = !DILocation(line: 439, column: 11, scope: !342)
!1348 = !DILocation(line: 439, column: 31, scope: !342)
!1349 = !DILocation(line: 439, column: 30, scope: !342)
!1350 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 439, column: 40, scope: !342)
!1352 = !DILocation(line: 199, column: 12, scope: !562, inlinedAt: !1351)
!1353 = !DILocation(line: 439, column: 39, scope: !342)
!1354 = !DILocation(line: 439, column: 37, scope: !342)
!1355 = !DILocation(line: 439, column: 35, scope: !342)
!1356 = !DILocation(line: 439, column: 34, scope: !342)
!1357 = !DILocation(line: 439, column: 60, scope: !342)
!1358 = !DILocation(line: 439, column: 58, scope: !342)
!1359 = !DILocation(line: 439, column: 66, scope: !342)
!1360 = !DILocation(line: 439, column: 62, scope: !342)
!1361 = !DILocation(line: 439, column: 50, scope: !342)
!1362 = !DILocation(line: 439, column: 48, scope: !342)
!1363 = !DILocation(line: 439, column: 22, scope: !342)
!1364 = !DILocation(line: 411, column: 30, scope: !342)
!1365 = !DILocation(line: 441, column: 3, scope: !342)
!1366 = !DILocation(line: 444, column: 24, scope: !362)
!1367 = !DILocation(line: 444, column: 41, scope: !362)
!1368 = !DILocation(line: 444, column: 49, scope: !362)
!1369 = !DILocation(line: 444, column: 58, scope: !362)
!1370 = !DILocation(line: 444, column: 66, scope: !362)
!1371 = !DILocation(line: 445, column: 9, scope: !362)
!1372 = !DILocation(line: 445, column: 19, scope: !362)
!1373 = !DILocation(line: 447, column: 8, scope: !362)
!1374 = !DILocation(line: 450, column: 12, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !362, file: !1, line: 450, column: 7)
!1376 = !DILocation(line: 450, column: 19, scope: !1375)
!1377 = !DILocation(line: 182, column: 15, scope: !211, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 451, column: 5, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 450, column: 65)
!1380 = !DILocation(line: 450, column: 24, scope: !1375)
!1381 = !DILocation(line: 450, column: 32, scope: !1375)
!1382 = !DILocation(line: 450, column: 46, scope: !1375)
!1383 = !{!916, !806, i64 12}
!1384 = !DILocation(line: 450, column: 27, scope: !1375)
!1385 = !DILocation(line: 450, column: 50, scope: !1375)
!1386 = !DILocation(line: 450, column: 7, scope: !362)
!1387 = !DILocation(line: 451, column: 13, scope: !1379)
!1388 = !DILocation(line: 179, column: 20, scope: !211, inlinedAt: !1378)
!1389 = !DILocation(line: 179, column: 37, scope: !211, inlinedAt: !1378)
!1390 = !DILocation(line: 179, column: 44, scope: !211, inlinedAt: !1378)
!1391 = !DILocation(line: 179, column: 52, scope: !211, inlinedAt: !1378)
!1392 = !DILocation(line: 179, column: 61, scope: !211, inlinedAt: !1378)
!1393 = !DILocation(line: 182, column: 21, scope: !211, inlinedAt: !1378)
!1394 = !DILocation(line: 182, column: 27, scope: !211, inlinedAt: !1378)
!1395 = !DILocation(line: 181, column: 3, scope: !211, inlinedAt: !1378)
!1396 = !DILocation(line: 452, column: 5, scope: !1379)
!1397 = !DILocation(line: 454, column: 7, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !362, file: !1, line: 454, column: 7)
!1399 = !DILocation(line: 454, column: 35, scope: !1398)
!1400 = !DILocation(line: 454, column: 24, scope: !1398)
!1401 = !DILocation(line: 454, column: 38, scope: !1398)
!1402 = !DILocation(line: 454, column: 23, scope: !1398)
!1403 = !DILocation(line: 454, column: 19, scope: !1398)
!1404 = !DILocation(line: 454, column: 7, scope: !362)
!1405 = !DILocation(line: 455, column: 9, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !1, line: 455, column: 9)
!1407 = distinct !DILexicalBlock(scope: !1398, file: !1, line: 454, column: 43)
!1408 = !DILocation(line: 455, column: 9, scope: !1407)
!1409 = !DILocation(line: 456, column: 7, scope: !1406)
!1410 = !DILocation(line: 457, column: 9, scope: !1407)
!1411 = !DILocation(line: 457, column: 10, scope: !1407)
!1412 = !DILocation(line: 458, column: 9, scope: !1407)
!1413 = !DILocation(line: 458, column: 10, scope: !1407)
!1414 = !DILocation(line: 460, column: 17, scope: !1407)
!1415 = !DILocation(line: 460, column: 5, scope: !1407)
!1416 = !DILocation(line: 462, column: 18, scope: !1407)
!1417 = !DILocation(line: 448, column: 8, scope: !362)
!1418 = !DILocation(line: 463, column: 9, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1407, file: !1, line: 463, column: 9)
!1420 = !DILocation(line: 463, column: 9, scope: !1407)
!1421 = !DILocation(line: 306, column: 12, scope: !581, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 466, column: 5, scope: !1407)
!1423 = !DILocation(line: 307, column: 12, scope: !581, inlinedAt: !1422)
!1424 = !DILocation(line: 308, column: 12, scope: !581, inlinedAt: !1422)
!1425 = !DILocation(line: 465, column: 8, scope: !1419)
!1426 = !DILocation(line: 465, column: 15, scope: !1419)
!1427 = !DILocation(line: 465, column: 22, scope: !1419)
!1428 = !DILocation(line: 465, column: 29, scope: !1419)
!1429 = !DILocation(line: 464, column: 7, scope: !1419)
!1430 = !DILocation(line: 304, column: 31, scope: !581, inlinedAt: !1422)
!1431 = !DILocation(line: 304, column: 38, scope: !581, inlinedAt: !1422)
!1432 = !DILocation(line: 304, column: 46, scope: !581, inlinedAt: !1422)
!1433 = !DILocation(line: 306, column: 11, scope: !581, inlinedAt: !1422)
!1434 = !DILocation(line: 306, column: 9, scope: !581, inlinedAt: !1422)
!1435 = !DILocation(line: 307, column: 11, scope: !581, inlinedAt: !1422)
!1436 = !DILocation(line: 307, column: 9, scope: !581, inlinedAt: !1422)
!1437 = !DILocation(line: 308, column: 11, scope: !581, inlinedAt: !1422)
!1438 = !DILocation(line: 308, column: 9, scope: !581, inlinedAt: !1422)
!1439 = !DILocation(line: 467, column: 14, scope: !1407)
!1440 = !DILocation(line: 231, column: 34, scope: !588, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 467, column: 5, scope: !1407)
!1442 = !DILocation(line: 231, column: 41, scope: !588, inlinedAt: !1441)
!1443 = !DILocation(line: 235, column: 5, scope: !588, inlinedAt: !1441)
!1444 = !DILocation(line: 235, column: 10, scope: !588, inlinedAt: !1441)
!1445 = !DILocation(line: 233, column: 8, scope: !588, inlinedAt: !1441)
!1446 = !DILocation(line: 236, column: 5, scope: !588, inlinedAt: !1441)
!1447 = !DILocation(line: 236, column: 10, scope: !588, inlinedAt: !1441)
!1448 = !DILocation(line: 233, column: 10, scope: !588, inlinedAt: !1441)
!1449 = !DILocation(line: 237, column: 5, scope: !588, inlinedAt: !1441)
!1450 = !DILocation(line: 237, column: 10, scope: !588, inlinedAt: !1441)
!1451 = !DILocation(line: 233, column: 12, scope: !588, inlinedAt: !1441)
!1452 = !DILocation(line: 239, column: 8, scope: !588, inlinedAt: !1441)
!1453 = !DILocation(line: 240, column: 8, scope: !588, inlinedAt: !1441)
!1454 = !DILocation(line: 241, column: 8, scope: !588, inlinedAt: !1441)
!1455 = !DILocation(line: 469, column: 5, scope: !1407)
!1456 = !DILocation(line: 473, column: 1, scope: !362)
!1457 = !DILocation(line: 475, column: 19, scope: !378)
!1458 = !DILocation(line: 475, column: 33, scope: !378)
!1459 = !DILocation(line: 475, column: 43, scope: !378)
!1460 = !DILocation(line: 475, column: 59, scope: !378)
!1461 = !DILocation(line: 475, column: 73, scope: !378)
!1462 = !DILocation(line: 476, column: 11, scope: !378)
!1463 = !DILocation(line: 476, column: 20, scope: !378)
!1464 = !DILocation(line: 476, column: 28, scope: !378)
!1465 = !DILocation(line: 476, column: 38, scope: !378)
!1466 = !DILocation(line: 476, column: 49, scope: !378)
!1467 = !DILocation(line: 476, column: 64, scope: !378)
!1468 = !DILocation(line: 487, column: 15, scope: !378)
!1469 = !DILocation(line: 488, column: 22, scope: !378)
!1470 = !DILocation(line: 490, column: 8, scope: !378)
!1471 = !DILocation(line: 490, column: 11, scope: !378)
!1472 = !DILocation(line: 491, column: 8, scope: !378)
!1473 = !DILocation(line: 493, column: 33, scope: !378)
!1474 = !DILocation(line: 495, column: 7, scope: !378)
!1475 = !DILocation(line: 497, column: 20, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !1, line: 495, column: 15)
!1477 = distinct !DILexicalBlock(scope: !378, file: !1, line: 495, column: 7)
!1478 = !{!1479, !806, i64 368}
!1479 = !{!"", !688, i64 0, !688, i64 4, !688, i64 8, !688, i64 12, !688, i64 16, !688, i64 20, !688, i64 24, !688, i64 28, !688, i64 32, !688, i64 36, !688, i64 40, !688, i64 44, !688, i64 48, !688, i64 52, !806, i64 56, !806, i64 60, !806, i64 64, !688, i64 68, !688, i64 72, !688, i64 76, !688, i64 80, !806, i64 84, !688, i64 88, !688, i64 92, !688, i64 96, !688, i64 100, !688, i64 104, !688, i64 108, !688, i64 112, !688, i64 116, !806, i64 120, !686, i64 124, !686, i64 160, !688, i64 196, !806, i64 200, !806, i64 204, !688, i64 208, !806, i64 212, !806, i64 216, !688, i64 220, !806, i64 224, !806, i64 228, !806, i64 232, !688, i64 236, !806, i64 240, !806, i64 244, !688, i64 248, !806, i64 252, !806, i64 256, !806, i64 260, !806, i64 264, !806, i64 268, !688, i64 272, !688, i64 276, !688, i64 280, !806, i64 284, !806, i64 288, !806, i64 292, !688, i64 296, !806, i64 300, !806, i64 304, !688, i64 308, !688, i64 312, !688, i64 316, !688, i64 320, !688, i64 324, !806, i64 328, !688, i64 332, !806, i64 336, !806, i64 340, !688, i64 344, !806, i64 348, !688, i64 352, !688, i64 356, !688, i64 360, !688, i64 364, !806, i64 368, !806, i64 372, !806, i64 376, !806, i64 380, !1480, i64 384, !686, i64 448, !686, i64 520}
!1480 = !{!"", !688, i64 0, !688, i64 4, !688, i64 8, !688, i64 12, !685, i64 16, !685, i64 24, !685, i64 32, !685, i64 40, !685, i64 48, !685, i64 56}
!1481 = !DILocation(line: 497, column: 14, scope: !1476)
!1482 = !DILocation(line: 498, column: 20, scope: !1476)
!1483 = !{!1479, !806, i64 372}
!1484 = !DILocation(line: 498, column: 14, scope: !1476)
!1485 = !DILocation(line: 499, column: 20, scope: !1476)
!1486 = !{!1479, !806, i64 376}
!1487 = !DILocation(line: 499, column: 14, scope: !1476)
!1488 = !DILocation(line: 500, column: 20, scope: !1476)
!1489 = !{!1479, !806, i64 380}
!1490 = !DILocation(line: 500, column: 14, scope: !1476)
!1491 = !DILocation(line: 501, column: 23, scope: !1476)
!1492 = !{!1479, !688, i64 352}
!1493 = !DILocation(line: 501, column: 17, scope: !1476)
!1494 = !DILocation(line: 502, column: 20, scope: !1476)
!1495 = !{!1479, !688, i64 356}
!1496 = !DILocation(line: 502, column: 14, scope: !1476)
!1497 = !DILocation(line: 503, column: 20, scope: !1476)
!1498 = !{!1479, !688, i64 360}
!1499 = !DILocation(line: 503, column: 14, scope: !1476)
!1500 = !DILocation(line: 504, column: 26, scope: !1476)
!1501 = !{!1479, !688, i64 364}
!1502 = !DILocation(line: 504, column: 22, scope: !1476)
!1503 = !DILocation(line: 504, column: 21, scope: !1476)
!1504 = !DILocation(line: 504, column: 16, scope: !1476)
!1505 = !DILocation(line: 504, column: 14, scope: !1476)
!1506 = !DILocation(line: 506, column: 16, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 506, column: 9)
!1508 = !DILocation(line: 506, column: 32, scope: !1507)
!1509 = !DILocation(line: 506, column: 22, scope: !1507)
!1510 = !DILocation(line: 509, column: 5, scope: !1507)
!1511 = !DILocation(line: 509, column: 11, scope: !1507)
!1512 = !DILocation(line: 507, column: 7, scope: !1507)
!1513 = !DILocation(line: 511, column: 10, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 511, column: 9)
!1515 = !DILocation(line: 511, column: 20, scope: !1514)
!1516 = !DILocation(line: 512, column: 7, scope: !1514)
!1517 = !DILocation(line: 515, column: 13, scope: !1476)
!1518 = !DILocation(line: 515, column: 5, scope: !1476)
!1519 = !DILocation(line: 517, column: 16, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 515, column: 19)
!1521 = !DILocation(line: 517, column: 32, scope: !1520)
!1522 = !DILocation(line: 517, column: 35, scope: !1520)
!1523 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 517, column: 28, scope: !1520)
!1525 = !DILocation(line: 199, column: 12, scope: !562, inlinedAt: !1524)
!1526 = !DILocation(line: 517, column: 28, scope: !1520)
!1527 = !DILocation(line: 517, column: 27, scope: !1520)
!1528 = !DILocation(line: 517, column: 21, scope: !1520)
!1529 = !DILocation(line: 517, column: 40, scope: !1520)
!1530 = !DILocation(line: 517, column: 52, scope: !1520)
!1531 = !DILocation(line: 517, column: 57, scope: !1520)
!1532 = !DILocation(line: 517, column: 50, scope: !1520)
!1533 = !DILocation(line: 517, column: 15, scope: !1520)
!1534 = !DILocation(line: 517, column: 13, scope: !1520)
!1535 = !DILocation(line: 518, column: 7, scope: !1520)
!1536 = !DILocation(line: 520, column: 16, scope: !1520)
!1537 = !DILocation(line: 520, column: 32, scope: !1520)
!1538 = !DILocation(line: 520, column: 35, scope: !1520)
!1539 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 520, column: 28, scope: !1520)
!1541 = !DILocation(line: 199, column: 12, scope: !562, inlinedAt: !1540)
!1542 = !DILocation(line: 520, column: 28, scope: !1520)
!1543 = !DILocation(line: 520, column: 27, scope: !1520)
!1544 = !DILocation(line: 520, column: 21, scope: !1520)
!1545 = !DILocation(line: 520, column: 40, scope: !1520)
!1546 = !DILocation(line: 520, column: 52, scope: !1520)
!1547 = !DILocation(line: 520, column: 57, scope: !1520)
!1548 = !DILocation(line: 520, column: 50, scope: !1520)
!1549 = !DILocation(line: 520, column: 15, scope: !1520)
!1550 = !DILocation(line: 520, column: 13, scope: !1520)
!1551 = !DILocation(line: 521, column: 7, scope: !1520)
!1552 = !DILocation(line: 523, column: 9, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 523, column: 9)
!1554 = !DILocation(line: 523, column: 21, scope: !1553)
!1555 = !DILocation(line: 523, column: 9, scope: !1476)
!1556 = !DILocation(line: 524, column: 21, scope: !1553)
!1557 = !DILocation(line: 524, column: 19, scope: !1553)
!1558 = !DILocation(line: 524, column: 7, scope: !1553)
!1559 = !DILocation(line: 525, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 525, column: 9)
!1561 = !{!1562, !688, i64 4}
!1562 = !{!"", !688, i64 0, !688, i64 4, !688, i64 8, !688, i64 12, !688, i64 16, !688, i64 20}
!1563 = !{!1562, !688, i64 20}
!1564 = !DILocation(line: 525, column: 9, scope: !1476)
!1565 = !DILocation(line: 526, column: 23, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 526, column: 7)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 526, column: 7)
!1568 = distinct !DILexicalBlock(scope: !1560, file: !1, line: 525, column: 18)
!1569 = !{!1562, !688, i64 0}
!1570 = !DILocation(line: 526, column: 18, scope: !1566)
!1571 = !DILocation(line: 526, column: 7, scope: !1567)
!1572 = !DILocation(line: 527, column: 24, scope: !1566)
!1573 = !DILocation(line: 527, column: 23, scope: !1566)
!1574 = !DILocation(line: 527, column: 16, scope: !1566)
!1575 = !DILocation(line: 527, column: 14, scope: !1566)
!1576 = !DILocation(line: 526, column: 33, scope: !1566)
!1577 = !DILocation(line: 492, column: 8, scope: !378)
!1578 = !DILocation(line: 528, column: 7, scope: !1568)
!1579 = !DILocation(line: 530, column: 5, scope: !1568)
!1580 = !DILocation(line: 532, column: 74, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !1, line: 532, column: 5)
!1582 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 532, column: 5)
!1583 = !DILocation(line: 532, column: 60, scope: !1581)
!1584 = !DILocation(line: 532, column: 36, scope: !1581)
!1585 = !DILocation(line: 532, column: 40, scope: !1581)
!1586 = !DILocation(line: 532, column: 57, scope: !1581)
!1587 = !DILocation(line: 532, column: 5, scope: !1582)
!1588 = !DILocation(line: 532, column: 27, scope: !1581)
!1589 = !DILocation(line: 534, column: 16, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 534, column: 9)
!1591 = !DILocation(line: 534, column: 9, scope: !1476)
!1592 = !DILocation(line: 535, column: 7, scope: !1590)
!1593 = !DILocation(line: 538, column: 44, scope: !1476)
!1594 = !DILocation(line: 538, column: 15, scope: !1476)
!1595 = !DILocation(line: 538, column: 13, scope: !1476)
!1596 = !DILocation(line: 540, column: 13, scope: !1476)
!1597 = !DILocation(line: 541, column: 13, scope: !1476)
!1598 = !DILocation(line: 543, column: 13, scope: !1476)
!1599 = !DILocation(line: 543, column: 11, scope: !1476)
!1600 = !DILocation(line: 544, column: 5, scope: !1476)
!1601 = !DILocation(line: 545, column: 13, scope: !1476)
!1602 = !DILocation(line: 545, column: 11, scope: !1476)
!1603 = !DILocation(line: 547, column: 5, scope: !1476)
!1604 = !DILocation(line: 550, column: 6, scope: !1476)
!1605 = !DILocation(line: 550, column: 11, scope: !1476)
!1606 = !DILocation(line: 550, column: 14, scope: !1476)
!1607 = !DILocation(line: 550, column: 20, scope: !1476)
!1608 = !DILocation(line: 550, column: 32, scope: !1476)
!1609 = !DILocation(line: 550, column: 38, scope: !1476)
!1610 = !DILocation(line: 550, column: 42, scope: !1476)
!1611 = !DILocation(line: 548, column: 5, scope: !1476)
!1612 = !DILocation(line: 551, column: 5, scope: !1476)
!1613 = !DILocation(line: 554, column: 56, scope: !1476)
!1614 = !DILocation(line: 554, column: 5, scope: !1476)
!1615 = !DILocation(line: 555, column: 38, scope: !1476)
!1616 = !DILocation(line: 555, column: 5, scope: !1476)
!1617 = !DILocation(line: 556, column: 5, scope: !1476)
!1618 = !DILocation(line: 558, column: 5, scope: !1476)
!1619 = !DILocation(line: 561, column: 3, scope: !1476)
!1620 = !DILocation(line: 570, column: 17, scope: !378)
!1621 = !DILocation(line: 488, column: 37, scope: !378)
!1622 = !DILocation(line: 571, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !378, file: !1, line: 571, column: 7)
!1624 = !DILocation(line: 571, column: 16, scope: !1623)
!1625 = !DILocation(line: 571, column: 7, scope: !378)
!1626 = !DILocation(line: 572, column: 12, scope: !1623)
!1627 = !DILocation(line: 572, column: 17, scope: !1623)
!1628 = !DILocation(line: 572, column: 22, scope: !1623)
!1629 = !DILocation(line: 572, column: 30, scope: !1623)
!1630 = !DILocation(line: 572, column: 21, scope: !1623)
!1631 = !DILocation(line: 572, column: 14, scope: !1623)
!1632 = !DILocation(line: 572, column: 5, scope: !1623)
!1633 = !DILocation(line: 573, column: 12, scope: !1623)
!1634 = !DILocation(line: 576, column: 17, scope: !378)
!1635 = !DILocation(line: 576, column: 26, scope: !378)
!1636 = !{!1479, !806, i64 60}
!1637 = !DILocation(line: 576, column: 21, scope: !378)
!1638 = !DILocation(line: 576, column: 49, scope: !378)
!1639 = !DILocation(line: 576, column: 56, scope: !378)
!1640 = !DILocation(line: 576, column: 55, scope: !378)
!1641 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 576, column: 43, scope: !378)
!1643 = !DILocation(line: 199, column: 12, scope: !562, inlinedAt: !1642)
!1644 = !DILocation(line: 576, column: 43, scope: !378)
!1645 = !DILocation(line: 576, column: 42, scope: !378)
!1646 = !DILocation(line: 576, column: 34, scope: !378)
!1647 = !DILocation(line: 576, column: 33, scope: !378)
!1648 = !DILocation(line: 488, column: 8, scope: !378)
!1649 = !DILocation(line: 492, column: 23, scope: !378)
!1650 = !DILocation(line: 492, column: 30, scope: !378)
!1651 = !DILocation(line: 580, column: 21, scope: !378)
!1652 = !DILocation(line: 489, column: 8, scope: !378)
!1653 = !DILocation(line: 581, column: 21, scope: !378)
!1654 = !DILocation(line: 580, column: 17, scope: !378)
!1655 = !DILocation(line: 489, column: 14, scope: !378)
!1656 = !DILocation(line: 582, column: 21, scope: !378)
!1657 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 582, column: 17, scope: !378)
!1659 = !DILocation(line: 199, column: 12, scope: !562, inlinedAt: !1658)
!1660 = !DILocation(line: 489, column: 20, scope: !378)
!1661 = !DILocation(line: 585, column: 3, scope: !378)
!1662 = !DILocation(line: 493, column: 9, scope: !378)
!1663 = !DILocation(line: 586, column: 3, scope: !378)
!1664 = !DILocation(line: 493, column: 18, scope: !378)
!1665 = !DILocation(line: 587, column: 3, scope: !378)
!1666 = !DILocation(line: 493, column: 26, scope: !378)
!1667 = !DILocation(line: 590, column: 18, scope: !555)
!1668 = !DILocation(line: 590, column: 3, scope: !556)
!1669 = !DILocation(line: 598, column: 19, scope: !554)
!1670 = !DILocation(line: 598, column: 41, scope: !554)
!1671 = !DILocation(line: 600, column: 54, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !554, file: !1, line: 599, column: 9)
!1673 = !DILocation(line: 618, column: 18, scope: !552)
!1674 = !DILocation(line: 322, column: 3, scope: !597, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 618, column: 7, scope: !552)
!1676 = !DILocation(line: 323, column: 3, scope: !597, inlinedAt: !1675)
!1677 = !DILocation(line: 663, column: 52, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !1, line: 661, column: 7)
!1679 = distinct !DILexicalBlock(scope: !550, file: !1, line: 656, column: 6)
!1680 = !DILocation(line: 667, column: 25, scope: !1678)
!1681 = !DILocation(line: 395, column: 3, scope: !568, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 667, column: 4, scope: !1678)
!1683 = !DILocation(line: 396, column: 3, scope: !568, inlinedAt: !1682)
!1684 = !DILocation(line: 714, column: 8, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 713, column: 25)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !1, line: 713, column: 6)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !1, line: 711, column: 20)
!1688 = distinct !DILexicalBlock(scope: !552, file: !1, line: 711, column: 11)
!1689 = !DILocation(line: 715, column: 8, scope: !1685)
!1690 = !DILocation(line: 593, column: 5, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !554, file: !1, line: 593, column: 5)
!1692 = !DILocation(line: 595, column: 43, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1691, file: !1, line: 593, column: 5)
!1694 = !DILocation(line: 595, column: 20, scope: !1693)
!1695 = !DILocation(line: 595, column: 19, scope: !1693)
!1696 = !DILocation(line: 595, column: 7, scope: !1693)
!1697 = !DILocation(line: 595, column: 15, scope: !1693)
!1698 = !DILocation(line: 598, column: 18, scope: !554)
!1699 = !DILocation(line: 598, column: 40, scope: !554)
!1700 = !DILocation(line: 598, column: 37, scope: !554)
!1701 = !DILocation(line: 598, column: 14, scope: !554)
!1702 = !DILocation(line: 488, column: 11, scope: !378)
!1703 = !DILocation(line: 599, column: 9, scope: !1672)
!1704 = !DILocation(line: 599, column: 20, scope: !1672)
!1705 = !DILocation(line: 599, column: 15, scope: !1672)
!1706 = !DILocation(line: 600, column: 49, scope: !1672)
!1707 = !DILocation(line: 600, column: 7, scope: !1672)
!1708 = !DILocation(line: 491, column: 32, scope: !378)
!1709 = !DILocation(line: 604, column: 13, scope: !554)
!1710 = !DILocation(line: 604, column: 5, scope: !554)
!1711 = !DILocation(line: 606, column: 18, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !554, file: !1, line: 604, column: 19)
!1713 = !DILocation(line: 606, column: 38, scope: !1712)
!1714 = !DILocation(line: 606, column: 46, scope: !1712)
!1715 = !DILocation(line: 606, column: 50, scope: !1712)
!1716 = !DILocation(line: 606, column: 56, scope: !1712)
!1717 = !DILocation(line: 606, column: 66, scope: !1712)
!1718 = !DILocation(line: 606, column: 58, scope: !1712)
!1719 = !DILocation(line: 606, column: 70, scope: !1712)
!1720 = !DILocation(line: 607, column: 15, scope: !1712)
!1721 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 607, column: 11, scope: !1712)
!1723 = !DILocation(line: 607, column: 24, scope: !1712)
!1724 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 607, column: 35, scope: !1712)
!1726 = !DILocation(line: 199, column: 12, scope: !562, inlinedAt: !1722)
!1727 = !DILocation(line: 607, column: 33, scope: !1712)
!1728 = !DILocation(line: 607, column: 58, scope: !1712)
!1729 = !DILocation(line: 617, column: 9, scope: !554)
!1730 = !DILocation(line: 613, column: 7, scope: !1712)
!1731 = !DILocation(line: 615, column: 5, scope: !1712)
!1732 = !DILocation(line: 316, column: 36, scope: !597, inlinedAt: !1675)
!1733 = !DILocation(line: 321, column: 8, scope: !597, inlinedAt: !1675)
!1734 = !DILocation(line: 322, column: 8, scope: !597, inlinedAt: !1675)
!1735 = !DILocation(line: 323, column: 8, scope: !597, inlinedAt: !1675)
!1736 = !DILocation(line: 621, column: 51, scope: !552)
!1737 = !DILocation(line: 621, column: 32, scope: !552)
!1738 = !DILocation(line: 488, column: 16, scope: !378)
!1739 = !DILocation(line: 623, column: 11, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !552, file: !1, line: 623, column: 11)
!1741 = !DILocation(line: 623, column: 31, scope: !1740)
!1742 = !DILocation(line: 624, column: 2, scope: !1740)
!1743 = !DILocation(line: 632, column: 22, scope: !552)
!1744 = !DILocation(line: 247, column: 11, scope: !962, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 632, column: 12, scope: !552)
!1746 = !DILocation(line: 247, column: 13, scope: !962, inlinedAt: !1745)
!1747 = !DILocation(line: 247, column: 7, scope: !281, inlinedAt: !1745)
!1748 = !DILocation(line: 248, column: 22, scope: !962, inlinedAt: !1745)
!1749 = !DILocation(line: 248, column: 17, scope: !962, inlinedAt: !1745)
!1750 = !DILocation(line: 255, column: 14, scope: !286, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 633, column: 12, scope: !552)
!1752 = !DILocation(line: 248, column: 5, scope: !962, inlinedAt: !1745)
!1753 = !DILocation(line: 250, column: 18, scope: !962, inlinedAt: !1745)
!1754 = !DILocation(line: 250, column: 13, scope: !962, inlinedAt: !1745)
!1755 = !DILocation(line: 255, column: 28, scope: !286, inlinedAt: !1751)
!1756 = !DILocation(line: 250, column: 5, scope: !962, inlinedAt: !1745)
!1757 = !DILocation(line: 632, column: 12, scope: !552)
!1758 = !DILocation(line: 492, column: 17, scope: !378)
!1759 = !DILocation(line: 255, column: 15, scope: !286, inlinedAt: !1751)
!1760 = !DILocation(line: 255, column: 17, scope: !286, inlinedAt: !1751)
!1761 = !DILocation(line: 255, column: 23, scope: !286, inlinedAt: !1751)
!1762 = !DILocation(line: 492, column: 20, scope: !378)
!1763 = !DILocation(line: 634, column: 16, scope: !552)
!1764 = !DILocation(line: 634, column: 22, scope: !552)
!1765 = !DILocation(line: 634, column: 31, scope: !552)
!1766 = !DILocation(line: 634, column: 36, scope: !552)
!1767 = !DILocation(line: 634, column: 40, scope: !552)
!1768 = !DILocation(line: 634, column: 73, scope: !552)
!1769 = !DILocation(line: 634, column: 62, scope: !552)
!1770 = !DILocation(line: 634, column: 60, scope: !552)
!1771 = !DILocation(line: 636, column: 7, scope: !552)
!1772 = !DILocation(line: 643, column: 18, scope: !550)
!1773 = !DILocation(line: 643, column: 17, scope: !550)
!1774 = !DILocation(line: 643, column: 10, scope: !550)
!1775 = !DILocation(line: 639, column: 7, scope: !550)
!1776 = !DILocation(line: 644, column: 17, scope: !550)
!1777 = !DILocation(line: 644, column: 16, scope: !550)
!1778 = !DILocation(line: 644, column: 10, scope: !550)
!1779 = !DILocation(line: 639, column: 13, scope: !550)
!1780 = !DILocation(line: 647, column: 13, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !550, file: !1, line: 646, column: 6)
!1782 = !DILocation(line: 647, column: 26, scope: !1781)
!1783 = !DILocation(line: 647, column: 32, scope: !1781)
!1784 = !DILocation(line: 647, column: 19, scope: !1781)
!1785 = !DILocation(line: 646, column: 6, scope: !550)
!1786 = !DILocation(line: 647, column: 35, scope: !1781)
!1787 = !{!916, !806, i64 4}
!1788 = !DILocation(line: 647, column: 46, scope: !1781)
!1789 = !DILocation(line: 647, column: 47, scope: !1781)
!1790 = !DILocation(line: 647, column: 39, scope: !1781)
!1791 = !DILocation(line: 647, column: 38, scope: !1781)
!1792 = !DILocation(line: 647, column: 4, scope: !1781)
!1793 = !DILocation(line: 649, column: 35, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 648, column: 7)
!1795 = !DILocation(line: 650, column: 17, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1794, file: !1, line: 650, column: 8)
!1797 = !DILocation(line: 650, column: 29, scope: !1796)
!1798 = !DILocation(line: 650, column: 22, scope: !1796)
!1799 = !DILocation(line: 491, column: 22, scope: !378)
!1800 = !DILocation(line: 647, column: 18, scope: !1781)
!1801 = !DILocation(line: 653, column: 6, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !550, file: !1, line: 653, column: 6)
!1803 = !DILocation(line: 653, column: 6, scope: !550)
!1804 = !DILocation(line: 655, column: 13, scope: !1802)
!1805 = !DILocation(line: 655, column: 22, scope: !1802)
!1806 = !DILocation(line: 654, column: 4, scope: !1802)
!1807 = !DILocation(line: 656, column: 13, scope: !1679)
!1808 = !DILocation(line: 656, column: 6, scope: !550)
!1809 = !{!864, !685, i64 24}
!1810 = !DILocation(line: 663, column: 48, scope: !1678)
!1811 = !DILocation(line: 663, column: 47, scope: !1678)
!1812 = !DILocation(line: 663, column: 31, scope: !1678)
!1813 = !DILocation(line: 664, column: 29, scope: !1678)
!1814 = !DILocation(line: 664, column: 28, scope: !1678)
!1815 = !DILocation(line: 664, column: 36, scope: !1678)
!1816 = !DILocation(line: 664, column: 23, scope: !1678)
!1817 = !DILocation(line: 664, column: 22, scope: !1678)
!1818 = !DILocation(line: 663, column: 62, scope: !1678)
!1819 = !DILocation(line: 663, column: 13, scope: !1678)
!1820 = !DILocation(line: 487, column: 8, scope: !378)
!1821 = !DILocation(line: 392, column: 29, scope: !568, inlinedAt: !1682)
!1822 = !DILocation(line: 392, column: 38, scope: !568, inlinedAt: !1682)
!1823 = !DILocation(line: 392, column: 49, scope: !568, inlinedAt: !1682)
!1824 = !DILocation(line: 394, column: 15, scope: !568, inlinedAt: !1682)
!1825 = !DILocation(line: 394, column: 11, scope: !568, inlinedAt: !1682)
!1826 = !DILocation(line: 394, column: 24, scope: !568, inlinedAt: !1682)
!1827 = !DILocation(line: 394, column: 20, scope: !568, inlinedAt: !1682)
!1828 = !DILocation(line: 394, column: 19, scope: !568, inlinedAt: !1682)
!1829 = !DILocation(line: 394, column: 9, scope: !568, inlinedAt: !1682)
!1830 = !DILocation(line: 395, column: 11, scope: !568, inlinedAt: !1682)
!1831 = !DILocation(line: 395, column: 19, scope: !568, inlinedAt: !1682)
!1832 = !DILocation(line: 395, column: 9, scope: !568, inlinedAt: !1682)
!1833 = !DILocation(line: 396, column: 11, scope: !568, inlinedAt: !1682)
!1834 = !DILocation(line: 396, column: 9, scope: !568, inlinedAt: !1682)
!1835 = !DILocation(line: 492, column: 15, scope: !378)
!1836 = !DILocation(line: 669, column: 21, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !1, line: 668, column: 4)
!1838 = distinct !DILexicalBlock(scope: !1678, file: !1, line: 668, column: 4)
!1839 = !DILocation(line: 669, column: 6, scope: !1837)
!1840 = !DILocation(line: 669, column: 12, scope: !1837)
!1841 = !DILocation(line: 668, column: 4, scope: !1838)
!1842 = !DILocation(line: 669, column: 22, scope: !1837)
!1843 = !DILocation(line: 671, column: 8, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1678, file: !1, line: 671, column: 8)
!1845 = !DILocation(line: 671, column: 8, scope: !1678)
!1846 = !DILocation(line: 672, column: 6, scope: !1844)
!1847 = !DILocation(line: 682, column: 13, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !559, file: !1, line: 681, column: 6)
!1849 = !DILocation(line: 681, column: 6, scope: !559)
!1850 = !DILocation(line: 682, column: 19, scope: !1848)
!1851 = !DILocation(line: 682, column: 20, scope: !1848)
!1852 = !DILocation(line: 682, column: 12, scope: !1848)
!1853 = !DILocation(line: 682, column: 24, scope: !1848)
!1854 = !DILocation(line: 682, column: 40, scope: !1848)
!1855 = !DILocation(line: 682, column: 23, scope: !1848)
!1856 = !DILocation(line: 679, column: 13, scope: !559)
!1857 = !DILocation(line: 682, column: 4, scope: !1848)
!1858 = !DILocation(line: 684, column: 13, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1848, file: !1, line: 683, column: 7)
!1860 = !DILocation(line: 684, column: 29, scope: !1859)
!1861 = !DILocation(line: 685, column: 17, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1859, file: !1, line: 685, column: 8)
!1863 = !DILocation(line: 685, column: 29, scope: !1862)
!1864 = !DILocation(line: 685, column: 22, scope: !1862)
!1865 = !DILocation(line: 688, column: 40, scope: !559)
!1866 = !DILocation(line: 688, column: 23, scope: !559)
!1867 = !DILocation(line: 688, column: 22, scope: !559)
!1868 = !DILocation(line: 688, column: 15, scope: !559)
!1869 = !DILocation(line: 679, column: 7, scope: !559)
!1870 = !DILocation(line: 689, column: 20, scope: !559)
!1871 = !DILocation(line: 197, column: 29, scope: !562, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 689, column: 16, scope: !559)
!1873 = !DILocation(line: 199, column: 12, scope: !562, inlinedAt: !1872)
!1874 = !DILocation(line: 689, column: 26, scope: !559)
!1875 = !DILocation(line: 689, column: 15, scope: !559)
!1876 = !DILocation(line: 689, column: 40, scope: !559)
!1877 = !DILocation(line: 689, column: 39, scope: !559)
!1878 = !DILocation(line: 689, column: 35, scope: !559)
!1879 = !DILocation(line: 689, column: 34, scope: !559)
!1880 = !DILocation(line: 689, column: 31, scope: !559)
!1881 = !DILocation(line: 679, column: 19, scope: !559)
!1882 = !DILocation(line: 690, column: 22, scope: !559)
!1883 = !DILocation(line: 691, column: 22, scope: !559)
!1884 = !DILocation(line: 692, column: 6, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !559, file: !1, line: 692, column: 6)
!1886 = !DILocation(line: 692, column: 6, scope: !559)
!1887 = !DILocation(line: 693, column: 53, scope: !1885)
!1888 = !DILocation(line: 693, column: 59, scope: !1885)
!1889 = !DILocation(line: 693, column: 4, scope: !1885)
!1890 = !DILocation(line: 694, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !559, file: !1, line: 694, column: 6)
!1892 = !DILocation(line: 703, column: 8, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !1, line: 703, column: 8)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !1, line: 694, column: 16)
!1895 = !DILocation(line: 694, column: 6, scope: !559)
!1896 = !DILocation(line: 704, column: 6, scope: !1893)
!1897 = !DILocation(line: 711, column: 11, scope: !552)
!1898 = !DILocation(line: 713, column: 6, scope: !1686)
!1899 = !DILocation(line: 713, column: 12, scope: !1686)
!1900 = !DILocation(line: 713, column: 22, scope: !1686)
!1901 = !DILocation(line: 713, column: 14, scope: !1686)
!1902 = !DILocation(line: 713, column: 6, scope: !1687)
!1903 = !{!864, !685, i64 40}
!1904 = !DILocation(line: 714, column: 4, scope: !1685)
!1905 = !DILocation(line: 714, column: 19, scope: !1685)
!1906 = !{!864, !685, i64 48}
!1907 = !DILocation(line: 715, column: 4, scope: !1685)
!1908 = !DILocation(line: 715, column: 19, scope: !1685)
!1909 = !DILocation(line: 716, column: 11, scope: !1685)
!1910 = !DILocation(line: 717, column: 7, scope: !1685)
!1911 = !DILocation(line: 718, column: 2, scope: !1685)
!1912 = !DILocation(line: 719, column: 6, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1687, file: !1, line: 719, column: 6)
!1914 = !DILocation(line: 719, column: 6, scope: !1687)
!1915 = !DILocation(line: 722, column: 7, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !1, line: 719, column: 13)
!1917 = !DILocation(line: 722, column: 14, scope: !1916)
!1918 = !DILocation(line: 722, column: 21, scope: !1916)
!1919 = !DILocation(line: 722, column: 28, scope: !1916)
!1920 = !DILocation(line: 722, column: 34, scope: !1916)
!1921 = !DILocation(line: 720, column: 4, scope: !1916)
!1922 = !DILocation(line: 723, column: 2, scope: !1916)
!1923 = !DILocation(line: 726, column: 7, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !552, file: !1, line: 726, column: 7)
!1925 = !DILocation(line: 727, column: 13, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1924, file: !1, line: 726, column: 7)
!1927 = !DILocation(line: 727, column: 2, scope: !1926)
!1928 = !DILocation(line: 727, column: 10, scope: !1926)
!1929 = !DILocation(line: 728, column: 11, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !552, file: !1, line: 728, column: 11)
!1931 = !DILocation(line: 728, column: 11, scope: !552)
!1932 = !DILocation(line: 729, column: 2, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 728, column: 19)
!1934 = !DILocation(line: 729, column: 8, scope: !1933)
!1935 = !DILocation(line: 729, column: 10, scope: !1933)
!1936 = !DILocation(line: 730, column: 2, scope: !1933)
!1937 = !DILocation(line: 730, column: 11, scope: !1933)
!1938 = !DILocation(line: 731, column: 7, scope: !1933)
!1939 = !DILocation(line: 732, column: 16, scope: !1930)
!1940 = !DILocation(line: 733, column: 2, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 732, column: 16)
!1942 = !DILocation(line: 733, column: 12, scope: !1941)
!1943 = !DILocation(line: 737, column: 11, scope: !554)
!1944 = !DILocation(line: 737, column: 17, scope: !554)
!1945 = !DILocation(line: 492, column: 26, scope: !378)
!1946 = !DILocation(line: 492, column: 12, scope: !378)
!1947 = !DILocation(line: 738, column: 22, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !1, line: 738, column: 5)
!1949 = distinct !DILexicalBlock(scope: !554, file: !1, line: 738, column: 5)
!1950 = !DILocation(line: 738, column: 5, scope: !1949)
!1951 = !DILocation(line: 741, column: 2, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !1, line: 739, column: 68)
!1953 = distinct !DILexicalBlock(scope: !1948, file: !1, line: 739, column: 11)
!1954 = !DILocation(line: 739, column: 28, scope: !1953)
!1955 = !DILocation(line: 739, column: 58, scope: !1953)
!1956 = !DILocation(line: 739, column: 11, scope: !1953)
!1957 = !DILocation(line: 739, column: 11, scope: !1948)
!1958 = !DILocation(line: 740, column: 10, scope: !1952)
!1959 = !DILocation(line: 741, column: 11, scope: !1952)
!1960 = !DILocation(line: 742, column: 7, scope: !1952)
!1961 = !DILocation(line: 738, column: 32, scope: !1948)
!1962 = !DILocation(line: 744, column: 9, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !554, file: !1, line: 744, column: 9)
!1964 = !DILocation(line: 744, column: 15, scope: !1963)
!1965 = !DILocation(line: 744, column: 19, scope: !1963)
!1966 = !DILocation(line: 744, column: 25, scope: !1963)
!1967 = !DILocation(line: 744, column: 27, scope: !1963)
!1968 = !DILocation(line: 744, column: 9, scope: !554)
!1969 = !DILocation(line: 179, column: 20, scope: !211, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 745, column: 7, scope: !1963)
!1971 = !DILocation(line: 179, column: 52, scope: !211, inlinedAt: !1970)
!1972 = !DILocation(line: 179, column: 61, scope: !211, inlinedAt: !1970)
!1973 = !DILocation(line: 182, column: 15, scope: !211, inlinedAt: !1970)
!1974 = !DILocation(line: 182, column: 27, scope: !211, inlinedAt: !1970)
!1975 = !DILocation(line: 181, column: 3, scope: !211, inlinedAt: !1970)
!1976 = !DILocation(line: 745, column: 7, scope: !1963)
!1977 = !DILocation(line: 749, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !378, file: !1, line: 749, column: 7)
!1979 = !DILocation(line: 749, column: 7, scope: !378)
!1980 = !DILocation(line: 750, column: 18, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1978, file: !1, line: 749, column: 16)
!1982 = !DILocation(line: 750, column: 5, scope: !1981)
!1983 = !DILocation(line: 751, column: 18, scope: !1981)
!1984 = !DILocation(line: 751, column: 5, scope: !1981)
!1985 = !DILocation(line: 752, column: 18, scope: !1981)
!1986 = !DILocation(line: 752, column: 5, scope: !1981)
!1987 = !DILocation(line: 753, column: 5, scope: !1981)
!1988 = !DILocation(line: 753, column: 13, scope: !1981)
!1989 = !DILocation(line: 753, column: 19, scope: !1981)
!1990 = !DILocation(line: 753, column: 27, scope: !1981)
!1991 = !DILocation(line: 754, column: 5, scope: !1981)
!1992 = !DILocation(line: 755, column: 10, scope: !1981)
!1993 = !DILocation(line: 755, column: 29, scope: !1981)
!1994 = !DILocation(line: 756, column: 3, scope: !1981)
!1995 = !DILocation(line: 758, column: 11, scope: !378)
!1996 = !DILocation(line: 759, column: 11, scope: !378)
!1997 = !DILocation(line: 762, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !378, file: !1, line: 762, column: 7)
!1999 = !{!1562, !688, i64 16}
!2000 = !DILocation(line: 762, column: 7, scope: !378)
!2001 = !DILocation(line: 764, column: 13, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !1, line: 762, column: 19)
!2003 = !DILocation(line: 764, column: 26, scope: !2002)
!2004 = !DILocation(line: 764, column: 5, scope: !2002)
!2005 = !DILocation(line: 765, column: 21, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !1, line: 765, column: 5)
!2007 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 765, column: 5)
!2008 = !DILocation(line: 765, column: 16, scope: !2006)
!2009 = !DILocation(line: 765, column: 5, scope: !2007)
!2010 = !DILocation(line: 766, column: 11, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !1, line: 766, column: 11)
!2012 = distinct !DILexicalBlock(scope: !2006, file: !1, line: 765, column: 31)
!2013 = !DILocation(line: 766, column: 11, scope: !2012)
!2014 = !DILocation(line: 767, column: 10, scope: !2011)
!2015 = !DILocation(line: 767, column: 24, scope: !2011)
!2016 = !DILocation(line: 767, column: 2, scope: !2011)
!2017 = !DILocation(line: 768, column: 11, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2012, file: !1, line: 768, column: 11)
!2019 = !DILocation(line: 768, column: 11, scope: !2012)
!2020 = !DILocation(line: 769, column: 10, scope: !2018)
!2021 = !DILocation(line: 769, column: 24, scope: !2018)
!2022 = !DILocation(line: 769, column: 2, scope: !2018)
!2023 = !DILocation(line: 770, column: 11, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2012, file: !1, line: 770, column: 11)
!2025 = !DILocation(line: 770, column: 11, scope: !2012)
!2026 = !DILocation(line: 771, column: 10, scope: !2024)
!2027 = !DILocation(line: 771, column: 24, scope: !2024)
!2028 = !DILocation(line: 771, column: 2, scope: !2024)
!2029 = !DILocation(line: 773, column: 13, scope: !2002)
!2030 = !DILocation(line: 773, column: 5, scope: !2002)
!2031 = !DILocation(line: 774, column: 9, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 774, column: 9)
!2033 = !DILocation(line: 774, column: 9, scope: !2002)
!2034 = !DILocation(line: 775, column: 14, scope: !2032)
!2035 = !DILocation(line: 775, column: 7, scope: !2032)
!2036 = !DILocation(line: 778, column: 13, scope: !2002)
!2037 = !DILocation(line: 779, column: 8, scope: !2002)
!2038 = !DILocation(line: 779, column: 14, scope: !2002)
!2039 = !DILocation(line: 779, column: 29, scope: !2002)
!2040 = !DILocation(line: 778, column: 5, scope: !2002)
!2041 = !DILocation(line: 780, column: 13, scope: !2002)
!2042 = !DILocation(line: 780, column: 5, scope: !2002)
!2043 = !DILocation(line: 781, column: 9, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2002, file: !1, line: 781, column: 9)
!2045 = !DILocation(line: 781, column: 9, scope: !2002)
!2046 = !DILocation(line: 782, column: 14, scope: !2044)
!2047 = !DILocation(line: 782, column: 7, scope: !2044)
!2048 = !DILocation(line: 784, column: 3, scope: !378)
!2049 = !DILocation(line: 785, column: 3, scope: !378)
!2050 = !DILocation(line: 786, column: 3, scope: !378)
!2051 = !DILocation(line: 787, column: 1, scope: !378)
