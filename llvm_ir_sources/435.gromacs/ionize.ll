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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #12
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

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #13
  %4 = fcmp une float %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #2 {
  %1 = fcmp ord double %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #13
  %4 = fcmp une double %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #2 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #13
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #2 {
  %1 = tail call float @llvm.fabs.f32(float %__x) #13
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #13
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #13
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #2 {
  %1 = fcmp uno float %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #2 {
  %1 = fcmp uno double %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #2 {
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #2 {
  %1 = bitcast float %__x to i32
  %2 = lshr i32 %1, 31
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #2 {
  %1 = bitcast double %__x to i64
  %2 = lshr i64 %1, 63
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #2 {
  %1 = bitcast x86_fp80 %__x to i80
  %2 = lshr i80 %1, 79
  %3 = trunc i80 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  %2 = tail call float @llvm.fabs.f32(float %__x) #3
  %3 = fcmp une float %2, 0x7FF0000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #2 {
  %1 = fcmp ord double %__x, 0.000000e+00
  %2 = tail call double @llvm.fabs.f64(double %__x) #3
  %3 = fcmp une double %2, 0x7FF0000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #2 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #3
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #12
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !14
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  %1 = tail call { double, double } @__sincos_stret(double %__x) #12
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #12
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !14
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #12
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @dump_ca(%struct.__sFILE* nocapture %fp, %struct.t_cross_atom* nocapture readonly %ca, i32 %i, i8* nocapture readnone %file, i32 %line) #4 {
  %1 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !18
  %3 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !20
  %5 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %6 = load i32* %5, align 4, !tbaa !21
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 %line, i32 %i, i32 %2, i32 %4, i32 %6) #12
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_cross_atom* @mk_cross_atom(%struct.__sFILE* nocapture %log, %struct.t_mdatoms* nocapture readonly %md, i8*** nocapture readonly %atomname, i32 %Eindex) #4 {
  %elem_index = alloca [22 x i32], align 16
  %1 = bitcast [22 x i32]* %elem_index to i8*
  call void @llvm.lifetime.start(i64 88, i8* %1) #6
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 88, i32 16, i1 false)
  %2 = getelementptr [22 x i32]* %elem_index, i64 0, i64 6
  store i32 1, i32* %2, align 8
  %3 = getelementptr [22 x i32]* %elem_index, i64 0, i64 7
  store i32 2, i32* %3, align 4
  %4 = getelementptr [22 x i32]* %elem_index, i64 0, i64 8
  store i32 3, i32* %4, align 16
  %5 = getelementptr [22 x i32]* %elem_index, i64 0, i64 16
  store i32 4, i32* %5, align 16
  %6 = getelementptr [22 x i32]* %elem_index, i64 0, i64 20
  store i32 5, i32* %6, align 16
  %7 = getelementptr [22 x i32]* %elem_index, i64 0, i64 21
  store i32 6, i32* %7, align 4
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str1, i64 0, i64 0), i64 46, i64 1, %struct.__sFILE* %log)
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i64 51, i64 1, %struct.__sFILE* %log)
  %10 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %11 = load i32* %10, align 4, !tbaa !22
  %12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 196, i32 %11, i32 28) #12
  %13 = bitcast i8* %12 to %struct.t_cross_atom*
  %14 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 197, i32 8, i32 4) #12
  %15 = bitcast i8* %14 to i32*
  %16 = load i32* %10, align 4, !tbaa !22
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %18 = sext i32 %Eindex to i64
  br label %19

; <label>:19                                      ; preds = %.lr.ph, %79
  %indvars.iv13 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next14, %79 ]
  %20 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13
  %21 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 1
  store i32 0, i32* %21, align 4, !tbaa !20
  %22 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 2
  store i32 0, i32* %22, align 4, !tbaa !21
  %23 = getelementptr inbounds i8*** %atomname, i64 %indvars.iv13
  %24 = load i8*** %23, align 8, !tbaa !24
  %25 = load i8** %24, align 8, !tbaa !24
  br label %26

; <label>:26                                      ; preds = %19, %35
  %indvars.iv11 = phi i64 [ 0, %19 ], [ %indvars.iv.next12, %35 ]
  %27 = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %indvars.iv11, i32 0
  %28 = load i8** %27, align 8, !tbaa !25
  %29 = tail call i64 @strlen(i8* %28) #12
  %30 = tail call i32 @strncmp(i8* %25, i8* %28, i64 %29) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %.thread, label %35

.thread:                                          ; preds = %26
  %32 = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %indvars.iv11, i32 1
  %33 = load i32* %32, align 8, !tbaa !27
  %34 = getelementptr inbounds %struct.t_cross_atom* %20, i64 0, i32 0
  store i32 %33, i32* %34, align 4, !tbaa !18
  br label %41

; <label>:35                                      ; preds = %26
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %36 = trunc i64 %indvars.iv.next12 to i32
  %37 = icmp ult i32 %36, 7
  br i1 %37, label %26, label %38

; <label>:38                                      ; preds = %35
  %39 = icmp eq i32 %36, 7
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %38
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str6, i64 0, i64 0), i8* %25) #12
  br label %41

; <label>:41                                      ; preds = %.thread, %40, %38
  %42 = phi i64 [ %indvars.iv11, %.thread ], [ %indvars.iv.next12, %40 ], [ %indvars.iv.next12, %38 ]
  %43 = getelementptr inbounds i32* %15, i64 %42
  %44 = load i32* %43, align 4, !tbaa !28
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4, !tbaa !28
  %46 = getelementptr inbounds %struct.t_cross_atom* %20, i64 0, i32 0
  %47 = load i32* %46, align 4, !tbaa !18
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [22 x i32]* %elem_index, i64 0, i64 %48
  %50 = load i32* %49, align 4, !tbaa !28
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %51, i32 2
  %53 = load %struct.t_cross** %52, align 8, !tbaa !29
  %54 = getelementptr inbounds %struct.t_cross* %53, i64 %18, i32 0
  %55 = bitcast float* %54 to i32*
  %56 = load i32* %55, align 4, !tbaa !30
  %57 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 4
  %58 = bitcast float* %57 to i32*
  store i32 %56, i32* %58, align 4, !tbaa !32
  %59 = getelementptr inbounds %struct.t_cross* %53, i64 %18, i32 2
  %60 = bitcast float* %59 to i32*
  %61 = load i32* %60, align 4, !tbaa !33
  %62 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 5
  %63 = bitcast float* %62 to i32*
  store i32 %61, i32* %63, align 4, !tbaa !34
  %64 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %48, i32 2
  %65 = bitcast float* %64 to i32*
  %66 = load i32* %65, align 8, !tbaa !33
  %67 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 3
  %68 = bitcast float* %67 to i32*
  store i32 %66, i32* %68, align 4, !tbaa !35
  switch i32 %47, label %77 [
    i32 6, label %69
    i32 7, label %71
    i32 8, label %73
    i32 16, label %75
    i32 20, label %75
  ]

; <label>:69                                      ; preds = %41
  %70 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 6
  store float 0x3FECED9160000000, float* %70, align 4, !tbaa !36
  br label %79

; <label>:71                                      ; preds = %41
  %72 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 6
  store float 0x3FED70A3E0000000, float* %72, align 4, !tbaa !36
  br label %79

; <label>:73                                      ; preds = %41
  %74 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 6
  store float 0x3FEDBA5E40000000, float* %74, align 4, !tbaa !36
  br label %79

; <label>:75                                      ; preds = %41, %41
  %76 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 6
  store float 1.000000e+00, float* %76, align 4, !tbaa !36
  br label %79

; <label>:77                                      ; preds = %41
  %78 = getelementptr inbounds %struct.t_cross_atom* %13, i64 %indvars.iv13, i32 6
  store float -1.000000e+00, float* %78, align 4, !tbaa !36
  br label %79

; <label>:79                                      ; preds = %69, %71, %73, %75, %77
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %80 = load i32* %10, align 4, !tbaa !22
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %indvars.iv.next14, %81
  br i1 %82, label %19, label %._crit_edge

._crit_edge:                                      ; preds = %79, %0
  %.lcssa3 = phi i32 [ %16, %0 ], [ %80, %79 ]
  %83 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([76 x i8]* @.str7, i64 0, i64 0), i32 %.lcssa3) #12
  br label %84

; <label>:84                                      ; preds = %92, %._crit_edge
  %indvars.iv = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next, %92 ]
  %85 = getelementptr inbounds i32* %15, i64 %indvars.iv
  %86 = load i32* %85, align 4, !tbaa !28
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %92

; <label>:88                                      ; preds = %84
  %89 = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %indvars.iv, i32 0
  %90 = load i8** %89, align 8, !tbaa !25
  %91 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i8* %90, i32 %86) #12
  br label %92

; <label>:92                                      ; preds = %84, %88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond, label %93, label %84

; <label>:93                                      ; preds = %92
  %94 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i64 7, i64 1, %struct.__sFILE* %log)
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 240, i8* %14) #12
  call void @llvm.lifetime.end(i64 88, i8* %1) #6
  ret %struct.t_cross_atom* %13
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #7

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @number_K(%struct.t_cross_atom* nocapture readonly %ca) #8 {
  %1 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !18
  %3 = icmp slt i32 %2, 3
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %6 = load i32* %5, align 4, !tbaa !20
  %7 = sub nsw i32 %2, %6
  br label %12

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %10 = load i32* %9, align 4, !tbaa !21
  %11 = sub nsw i32 2, %10
  br label %12

; <label>:12                                      ; preds = %8, %4
  %.0 = phi i32 [ %7, %4 ], [ %11, %8 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @number_L(%struct.t_cross_atom* nocapture readonly %ca) #8 {
  %1 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !21
  %3 = add nsw i32 %2, -2
  %4 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %5 = load i32* %4, align 4, !tbaa !18
  %6 = add nsw i32 %3, %5
  %7 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %8 = load i32* %7, align 4, !tbaa !20
  %9 = sub i32 %6, %8
  ret i32 %9
}

; Function Attrs: nounwind optsize ssp uwtable
define float @xray_cross_section(i32 %eColl, %struct.t_cross_atom* nocapture readonly %ca) #4 {
  switch i32 %eColl, label %57 [
    i32 0, label %1
    i32 1, label %45
  ]

; <label>:1                                       ; preds = %0
  %2 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !18
  %4 = icmp slt i32 %3, 3
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %1
  %6 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %7 = load i32* %6, align 4, !tbaa !20
  %8 = sub nsw i32 %3, %7
  br label %number_K.exit

; <label>:9                                       ; preds = %1
  %10 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %11 = load i32* %10, align 4, !tbaa !21
  %12 = sub nsw i32 2, %11
  br label %number_K.exit

number_K.exit:                                    ; preds = %5, %9
  %.0.i = phi i32 [ %8, %5 ], [ %12, %9 ]
  switch i32 %3, label %20 [
    i32 1, label %13
    i32 2, label %16
  ]

; <label>:13                                      ; preds = %number_K.exit
  %14 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 4
  %15 = load float* %14, align 4, !tbaa !32
  br label %58

; <label>:16                                      ; preds = %number_K.exit
  %17 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 4
  %18 = load float* %17, align 4, !tbaa !32
  %19 = fmul float %18, 5.000000e-01
  br label %58

; <label>:20                                      ; preds = %number_K.exit
  %21 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %22 = load i32* %21, align 4, !tbaa !21
  %23 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %24 = load i32* %23, align 4, !tbaa !20
  %25 = add i32 %3, -2
  %26 = add i32 %25, %22
  %27 = sub i32 %26, %24
  %28 = sitofp i32 %.0.i to double
  %29 = fmul double %28, 5.000000e-01
  %30 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 3
  %31 = load float* %30, align 4, !tbaa !35
  %32 = fpext float %31 to double
  %33 = fmul double %29, %32
  %34 = sdiv i32 %27, %25
  %35 = sitofp i32 %34 to float
  %36 = fsub float 1.000000e+00, %31
  %37 = fmul float %36, %35
  %38 = fpext float %37 to double
  %39 = fadd double %33, %38
  %40 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 4
  %41 = load float* %40, align 4, !tbaa !32
  %42 = fpext float %41 to double
  %43 = fmul double %42, %39
  %44 = fptrunc double %43 to float
  br label %58

; <label>:45                                      ; preds = %0
  %46 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %47 = load i32* %46, align 4, !tbaa !18
  %48 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %49 = load i32* %48, align 4, !tbaa !20
  %50 = sub nsw i32 %47, %49
  %51 = sitofp i32 %50 to float
  %52 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 5
  %53 = load float* %52, align 4, !tbaa !34
  %54 = fmul float %53, %51
  %55 = sitofp i32 %47 to float
  %56 = fdiv float %54, %55
  br label %58

; <label>:57                                      ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %eColl) #12
  br label %58

; <label>:58                                      ; preds = %13, %20, %16, %57, %45
  %c.0 = phi float [ 0.000000e+00, %57 ], [ %56, %45 ], [ %15, %13 ], [ %19, %16 ], [ %44, %20 ]
  ret float %c.0
}

; Function Attrs: nounwind optsize ssp uwtable
define float @prob_K(i32 %eColl, %struct.t_cross_atom* nocapture readonly %ca) #4 {
  %1 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !18
  %3 = icmp slt i32 %2, 3
  br i1 %3, label %36, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %6 = load i32* %5, align 4, !tbaa !20
  %7 = icmp eq i32 %2, %6
  br i1 %7, label %36, label %8

; <label>:8                                       ; preds = %4
  switch i32 %eColl, label %35 [
    i32 0, label %9
    i32 1, label %28
  ]

; <label>:9                                       ; preds = %8
  %10 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %11 = load i32* %10, align 4, !tbaa !21
  %12 = add i32 %2, -2
  %13 = sub i32 %12, %6
  %14 = add i32 %13, %11
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 3
  %17 = load float* %16, align 4, !tbaa !35
  %18 = fsub float 1.000000e+00, %17
  %19 = fmul float %18, %15
  %20 = sitofp i32 %12 to float
  %21 = fdiv float %19, %20
  %22 = sub nsw i32 2, %11
  %23 = sitofp i32 %22 to float
  %24 = fmul float %17, %23
  %25 = fmul float %24, 5.000000e-01
  %26 = fadd float %21, %25
  %27 = fdiv float %25, %26
  br label %36

; <label>:28                                      ; preds = %8
  %29 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %30 = load i32* %29, align 4, !tbaa !21
  %31 = sub nsw i32 2, %30
  %32 = sub nsw i32 %2, %6
  %33 = sdiv i32 %31, %32
  %34 = sitofp i32 %33 to float
  br label %36

; <label>:35                                      ; preds = %8
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %eColl) #12
  br label %36

; <label>:36                                      ; preds = %9, %28, %35, %0, %4
  %.0 = phi float [ 0.000000e+00, %4 ], [ 0.000000e+00, %0 ], [ 0.000000e+00, %35 ], [ %34, %28 ], [ %27, %9 ]
  ret float %.0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define double @myexp(double %x) #9 {
  %1 = fcmp olt double %x, -7.000000e+01
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call double @exp(double %x) #14
  br label %4

; <label>:4                                       ; preds = %0, %2
  %.0 = phi double [ %3, %2 ], [ 0.000000e+00, %0 ]
  ret double %.0
}

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #10

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @ptheta_incoh(i32 %Eindex, float %theta) #9 {
  %1 = fpext float %theta to double
  %2 = sext i32 %Eindex to i64
  %3 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 7
  %4 = load double* %3, align 8, !tbaa !16
  %5 = fsub double %1, %4
  %6 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 1
  %7 = load double* %6, align 8, !tbaa !16
  %8 = fdiv double %5, %7
  %9 = fptrunc double %8 to float
  %10 = fmul float %9, %9
  %11 = fpext float %10 to double
  %12 = fmul double %11, -5.000000e-01
  %13 = fcmp olt double %12, -7.000000e+01
  br i1 %13, label %myexp.exit2, label %14

; <label>:14                                      ; preds = %0
  %15 = tail call double @exp(double %12) #14
  br label %myexp.exit2

myexp.exit2:                                      ; preds = %0, %14
  %.0.i1 = phi double [ %15, %14 ], [ 0.000000e+00, %0 ]
  %16 = fadd float %theta, -1.800000e+02
  %17 = fpext float %16 to double
  %18 = fadd double %17, %4
  %19 = fdiv double %18, %7
  %20 = fptrunc double %19 to float
  %21 = fmul float %20, %20
  %22 = fpext float %21 to double
  %23 = fmul double %22, -5.000000e-01
  %24 = fcmp olt double %23, -7.000000e+01
  br i1 %24, label %myexp.exit6, label %25

; <label>:25                                      ; preds = %myexp.exit2
  %26 = tail call double @exp(double %23) #14
  br label %myexp.exit6

myexp.exit6:                                      ; preds = %myexp.exit2, %25
  %.0.i5 = phi double [ %26, %25 ], [ 0.000000e+00, %myexp.exit2 ]
  %27 = fadd float %theta, -9.000000e+01
  %28 = fpext float %27 to double
  %29 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 3
  %30 = load double* %29, align 8, !tbaa !16
  %31 = fdiv double %28, %30
  %32 = fptrunc double %31 to float
  %33 = fmul float %32, %32
  %34 = fpext float %33 to double
  %35 = fmul double %34, -5.000000e-01
  %36 = fcmp olt double %35, -7.000000e+01
  br i1 %36, label %myexp.exit8, label %37

; <label>:37                                      ; preds = %myexp.exit6
  %38 = tail call double @exp(double %35) #14
  br label %myexp.exit8

myexp.exit8:                                      ; preds = %myexp.exit6, %37
  %.0.i7 = phi double [ %38, %37 ], [ 0.000000e+00, %myexp.exit6 ]
  %39 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 6
  %40 = load double* %39, align 16, !tbaa !16
  %41 = fsub double %1, %40
  %42 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 5
  %43 = load double* %42, align 8, !tbaa !16
  %44 = fdiv double %41, %43
  %45 = fptrunc double %44 to float
  %46 = fmul float %45, %45
  %47 = fpext float %46 to double
  %48 = fmul double %47, -5.000000e-01
  %49 = fcmp olt double %48, -7.000000e+01
  br i1 %49, label %myexp.exit4, label %50

; <label>:50                                      ; preds = %myexp.exit8
  %51 = tail call double @exp(double %48) #14
  br label %myexp.exit4

myexp.exit4:                                      ; preds = %myexp.exit8, %50
  %.0.i3 = phi double [ %51, %50 ], [ 0.000000e+00, %myexp.exit8 ]
  %52 = fadd double %17, %40
  %53 = fdiv double %52, %43
  %54 = fptrunc double %53 to float
  %55 = fmul float %54, %54
  %56 = fpext float %55 to double
  %57 = fmul double %56, -5.000000e-01
  %58 = fcmp olt double %57, -7.000000e+01
  br i1 %58, label %myexp.exit, label %59

; <label>:59                                      ; preds = %myexp.exit4
  %60 = tail call double @exp(double %57) #14
  br label %myexp.exit

myexp.exit:                                       ; preds = %myexp.exit4, %59
  %.0.i = phi double [ %60, %59 ], [ 0.000000e+00, %myexp.exit4 ]
  %61 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 0
  %62 = load double* %61, align 16, !tbaa !16
  %63 = fadd double %.0.i1, %.0.i5
  %64 = fmul double %63, %62
  %65 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 2
  %66 = load double* %65, align 16, !tbaa !16
  %67 = fmul double %.0.i7, %66
  %68 = fadd double %64, %67
  %69 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %2, i64 4
  %70 = load double* %69, align 16, !tbaa !16
  %71 = fadd double %.0.i3, %.0.i
  %72 = fmul double %71, %70
  %73 = fadd double %68, %72
  %74 = fptrunc double %73 to float
  ret float %74
}

; Function Attrs: nounwind optsize ssp uwtable
define float @rand_theta_incoh(i32 %Eindex, i32* %seed) #4 {
  %y = alloca [2 x float], align 4
  %.b = load i1* @rand_theta_incoh.bFirst, align 1
  br i1 %.b, label %71, label %1

; <label>:1                                       ; preds = %0
  %2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 361, i32 6, i32 8) #12
  store i8* %2, i8** bitcast (float*** @rand_theta_incoh.intp to i8**), align 8, !tbaa !24
  store i32 0, i32* @rand_theta_incoh.i, align 4, !tbaa !28
  br label %3

; <label>:3                                       ; preds = %1, %36
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 363, i32 451, i32 4) #12
  %5 = load i32* @rand_theta_incoh.i, align 4, !tbaa !28
  %6 = sext i32 %5 to i64
  %7 = load float*** @rand_theta_incoh.intp, align 8, !tbaa !24
  %8 = getelementptr inbounds float** %7, i64 %6
  %9 = bitcast float** %8 to i8**
  store i8* %4, i8** %9, align 8, !tbaa !24
  %10 = tail call float @ptheta_incoh(i32 %5, float 0.000000e+00) #15
  %11 = load i32* @rand_theta_incoh.cur, align 4, !tbaa !28
  %12 = sub nsw i32 1, %11
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x float]* %y, i64 0, i64 %13
  store float %10, float* %14, align 4, !tbaa !14
  store i32 1, i32* @rand_theta_incoh.j, align 4, !tbaa !28
  %15 = load float*** @rand_theta_incoh.intp, align 8, !tbaa !24
  %16 = getelementptr inbounds float** %15, i64 %6
  %17 = load float** %16, align 8, !tbaa !24
  %.pre = load float* %17, align 4, !tbaa !14
  br label %18

; <label>:18                                      ; preds = %3, %18
  %19 = phi float [ %.pre, %3 ], [ %32, %18 ]
  %indvars.iv14 = phi i64 [ 1, %3 ], [ %indvars.iv.next15, %18 ]
  %20 = phi i32 [ %11, %3 ], [ %26, %18 ]
  %storemerge49 = phi i32 [ 1, %3 ], [ %35, %18 ]
  %21 = sitofp i32 %storemerge49 to float
  %22 = fmul float %21, 0x3FC99999A0000000
  %23 = tail call float @ptheta_incoh(i32 %5, float %22) #15
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds [2 x float]* %y, i64 0, i64 %24
  store float %23, float* %25, align 4, !tbaa !14
  %26 = sub nsw i32 1, %20
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [2 x float]* %y, i64 0, i64 %27
  %29 = load float* %28, align 4, !tbaa !14
  %30 = fadd float %23, %29
  %31 = fmul float %30, 0x3FC99999A0000000
  %32 = fadd float %19, %31
  %33 = getelementptr inbounds float* %17, i64 %indvars.iv14
  store float %32, float* %33, align 4, !tbaa !14
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, 1
  %34 = icmp slt i64 %indvars.iv.next15, 451
  %35 = trunc i64 %indvars.iv.next15 to i32
  br i1 %34, label %18, label %36

; <label>:36                                      ; preds = %18
  store i32 %26, i32* @rand_theta_incoh.cur, align 4, !tbaa !28
  store i32 451, i32* @rand_theta_incoh.j, align 4, !tbaa !28
  %37 = add nsw i32 %5, 1
  store i32 %37, i32* @rand_theta_incoh.i, align 4, !tbaa !28
  %38 = icmp ult i32 %37, 6
  br i1 %38, label %3, label %39

; <label>:39                                      ; preds = %36
  %40 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  %41 = icmp eq %struct.__sFILE* %40, null
  br i1 %41, label %.loopexit, label %42

; <label>:42                                      ; preds = %39
  %43 = tail call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i64 54, i64 1, %struct.__sFILE* %40)
  store i32 0, i32* @rand_theta_incoh.j, align 4, !tbaa !28
  br label %44

; <label>:44                                      ; preds = %42, %67
  %storemerge28 = phi i32 [ 0, %42 ], [ %69, %67 ]
  %45 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  %46 = sitofp i32 %storemerge28 to float
  %47 = fmul float %46, 0x3FC99999A0000000
  %48 = fpext float %47 to double
  %49 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %45, i8* getelementptr inbounds ([5 x i8]* @.str14, i64 0, i64 0), double %48) #12
  store i32 0, i32* @rand_theta_incoh.i, align 4, !tbaa !28
  %50 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  br label %51

; <label>:51                                      ; preds = %44, %51
  %52 = phi %struct.__sFILE* [ %50, %44 ], [ %66, %51 ]
  %storemerge37 = phi i32 [ 0, %44 ], [ %64, %51 ]
  %53 = sext i32 %storemerge37 to i64
  %54 = load i32* @rand_theta_incoh.j, align 4, !tbaa !28
  %55 = sext i32 %54 to i64
  %56 = load float*** @rand_theta_incoh.intp, align 8, !tbaa !24
  %57 = getelementptr inbounds float** %56, i64 %53
  %58 = load float** %57, align 8, !tbaa !24
  %59 = getelementptr inbounds float* %58, i64 %55
  %60 = load float* %59, align 4, !tbaa !14
  %61 = fpext float %60 to double
  %62 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %52, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), double %61) #12
  %63 = load i32* @rand_theta_incoh.i, align 4, !tbaa !28
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @rand_theta_incoh.i, align 4, !tbaa !28
  %65 = icmp ult i32 %64, 6
  %66 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  br i1 %65, label %51, label %67

; <label>:67                                      ; preds = %51
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %66)
  %68 = load i32* @rand_theta_incoh.j, align 4, !tbaa !28
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @rand_theta_incoh.j, align 4, !tbaa !28
  %70 = icmp slt i32 %69, 450
  br i1 %70, label %44, label %.loopexit

.loopexit:                                        ; preds = %67, %39
  store i1 true, i1* @rand_theta_incoh.bFirst, align 1
  br label %71

; <label>:71                                      ; preds = %0, %.loopexit
  %72 = tail call float @rando(i32* %seed) #12
  store i32 0, i32* @rand_theta_incoh.j, align 4, !tbaa !28
  %73 = sext i32 %Eindex to i64
  %74 = load float*** @rand_theta_incoh.intp, align 8, !tbaa !24
  %75 = getelementptr inbounds float** %74, i64 %73
  %76 = load float** %75, align 8, !tbaa !24
  br label %80

; <label>:77                                      ; preds = %80
  %78 = trunc i64 %indvars.iv.next to i32
  store i32 %78, i32* @rand_theta_incoh.j, align 4, !tbaa !28
  %79 = icmp slt i64 %indvars.iv.next, 450
  br i1 %79, label %80, label %.critedge

; <label>:80                                      ; preds = %71, %77
  %81 = phi i32 [ 0, %71 ], [ %78, %77 ]
  %indvars.iv = phi i64 [ 0, %71 ], [ %indvars.iv.next, %77 ]
  %82 = getelementptr inbounds float* %76, i64 %indvars.iv
  %83 = load float* %82, align 4, !tbaa !14
  %84 = fcmp ogt float %72, %83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %84, label %77, label %.critedge

.critedge:                                        ; preds = %77, %80
  %85 = phi i32 [ %78, %77 ], [ %81, %80 ]
  %86 = add nsw i32 %85, -1
  %87 = sitofp i32 %86 to float
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds float* %76, i64 %88
  %90 = load float* %89, align 4, !tbaa !14
  %91 = fsub float %72, %90
  %92 = sext i32 %85 to i64
  %93 = getelementptr inbounds float* %76, i64 %92
  %94 = load float* %93, align 4, !tbaa !14
  %95 = fsub float %94, %90
  %96 = fdiv float %91, %95
  %97 = fadd float %87, %96
  %98 = fmul float %97, 0x3FC99999A0000000
  ret float %98
}

; Function Attrs: optsize
declare float @rando(i32*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @rand_vector(float* nocapture %v, i32* %seed) #4 {
  %1 = tail call float @rando(i32* %seed) #12
  %2 = fmul float %1, 1.800000e+02
  %3 = tail call float @rando(i32* %seed) #12
  %4 = fmul float %3, 3.600000e+02
  %5 = fpext float %4 to double
  %6 = tail call double @cos(double %5) #14
  %7 = fpext float %2 to double
  %8 = tail call double @sin(double %7) #14
  %9 = fmul double %6, %8
  %10 = fptrunc double %9 to float
  store float %10, float* %v, align 4, !tbaa !14
  %11 = tail call double @sin(double %5) #14
  %12 = fmul double %8, %11
  %13 = fptrunc double %12 to float
  %14 = getelementptr inbounds float* %v, i64 1
  store float %13, float* %14, align 4, !tbaa !14
  %15 = tail call double @cos(double %7) #14
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds float* %v, i64 2
  store float %16, float* %17, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @electron_cross_section(%struct.__sFILE* nocapture readnone %fp, float* nocapture readonly %v, float %mass, i32 %nelec) #8 {
  %1 = fpext float %mass to double
  %2 = fmul double %1, 5.000000e-01
  %3 = load float* %v, align 4, !tbaa !14
  %4 = fmul float %3, %3
  %5 = getelementptr inbounds float* %v, i64 1
  %6 = load float* %5, align 4, !tbaa !14
  %7 = fmul float %6, %6
  %8 = fadd float %4, %7
  %9 = getelementptr inbounds float* %v, i64 2
  %10 = load float* %9, align 4, !tbaa !14
  %11 = fmul float %10, %10
  %12 = fadd float %8, %11
  %13 = fpext float %12 to double
  %14 = fmul double %2, %13
  %15 = fptrunc double %14 to float
  %16 = sitofp i32 %nelec to float
  %17 = fdiv float %15, 0x409484A900000000
  %18 = fpext float %16 to double
  %19 = fmul double %18, 0x3FA204BEBAEEAAAF
  %20 = fptrunc double %19 to float
  %21 = fpext float %17 to double
  %22 = tail call double @log(double %21) #14
  %23 = fptrunc double %22 to float
  %24 = fadd float %17, 1.000000e+00
  %25 = fadd float %24, 1.000000e+00
  %26 = fdiv float %20, %25
  %27 = fpext float %26 to double
  %28 = fpext float %23 to double
  %29 = fmul double %28, 5.000000e-01
  %30 = fmul float %17, %17
  %31 = fdiv float 1.000000e+00, %30
  %32 = fsub float 1.000000e+00, %31
  %33 = fpext float %32 to double
  %34 = fmul double %29, %33
  %35 = fdiv float 1.000000e+00, %17
  %36 = fsub float 1.000000e+00, %35
  %37 = fdiv float %23, %24
  %38 = fsub float %36, %37
  %39 = fpext float %38 to double
  %40 = fadd double %34, %39
  %41 = fmul double %27, %40
  %42 = fptrunc double %41 to float
  ret float %42
}

; Function Attrs: nounwind optsize readnone
declare double @log(double) #10

; Function Attrs: nounwind optsize ssp uwtable
define i32 @khole_decay(%struct.__sFILE* nocapture readnone %fp, %struct.t_cross_atom* nocapture %ca, [3 x float]* nocapture readnone %x, [3 x float]* nocapture %v, i32 %ion, i32* %seed, float %dt) #4 {
  %dv = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 6
  %2 = load float* %1, align 4, !tbaa !36
  %3 = fcmp olt float %2, 0.000000e+00
  %.phi.trans.insert5 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %.pre6 = load i32* %.phi.trans.insert5, align 4, !tbaa !18
  br i1 %3, label %._crit_edge4, label %4

; <label>:4                                       ; preds = %0
  %5 = sext i32 %.pre6 to i64
  %6 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %5, i32 3
  %7 = load float* %6, align 4, !tbaa !37
  %fabsf = tail call float @fabsf(float %7) #10
  %8 = fpext float %fabsf to double
  %9 = fcmp olt double %8, 1.200000e-38
  br i1 %9, label %._crit_edge4, label %16

._crit_edge4:                                     ; preds = %0, %4
  %10 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %12 = load i32* %11, align 4, !tbaa !20
  %13 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %14 = load i32* %13, align 4, !tbaa !21
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 451, i32 %ion, i32 %.pre6, i32 %12, i32 %14) #12
  tail call void @exit(i32 1) #16
  unreachable

; <label>:16                                      ; preds = %4
  %17 = tail call float @rando(i32* %seed) #12
  %18 = load i32* %.phi.trans.insert5, align 4, !tbaa !18
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %19, i32 3
  %21 = load float* %20, align 4, !tbaa !37
  %22 = fdiv float %dt, %21
  %23 = fcmp olt float %17, %22
  br i1 %23, label %24, label %68

; <label>:24                                      ; preds = %16
  %25 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  %26 = icmp eq %struct.__sFILE* %25, null
  br i1 %26, label %29, label %27

; <label>:27                                      ; preds = %24
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str17, i64 0, i64 0), i64 31, i64 1, %struct.__sFILE* %25)
  br label %29

; <label>:29                                      ; preds = %24, %27
  %30 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %31 = load i32* %30, align 4, !tbaa !20
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4, !tbaa !20
  %33 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %34 = load i32* %33, align 4, !tbaa !21
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4, !tbaa !21
  %36 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 0
  call void @rand_vector(float* %36, i32* %seed) #15
  %37 = load float* %1, align 4, !tbaa !36
  %38 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  %39 = icmp eq %struct.__sFILE* %38, null
  br i1 %39, label %._crit_edge, label %40

._crit_edge:                                      ; preds = %29
  %.pre = load float* %36, align 4, !tbaa !14
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1
  %.pre1 = load float* %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert2 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2
  %.pre3 = load float* %.phi.trans.insert2, align 4, !tbaa !14
  br label %51

; <label>:40                                      ; preds = %29
  %41 = fpext float %37 to double
  %42 = load float* %36, align 4, !tbaa !14
  %43 = fpext float %42 to double
  %44 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1
  %45 = load float* %44, align 4, !tbaa !14
  %46 = fpext float %45 to double
  %47 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2
  %48 = load float* %47, align 4, !tbaa !14
  %49 = fpext float %48 to double
  %50 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %38, i8* getelementptr inbounds ([48 x i8]* @.str18, i64 0, i64 0), double %41, double %43, double %46, double %49) #12
  br label %51

; <label>:51                                      ; preds = %._crit_edge, %40
  %.pre-phi8 = phi float* [ %.phi.trans.insert2, %._crit_edge ], [ %47, %40 ]
  %.pre-phi7 = phi float* [ %.phi.trans.insert, %._crit_edge ], [ %44, %40 ]
  %52 = phi float [ %.pre3, %._crit_edge ], [ %48, %40 ]
  %53 = phi float [ %.pre1, %._crit_edge ], [ %45, %40 ]
  %54 = phi float [ %.pre, %._crit_edge ], [ %42, %40 ]
  %55 = fmul float %37, %54
  store float %55, float* %36, align 4, !tbaa !14
  %56 = fmul float %37, %53
  store float %56, float* %.pre-phi7, align 4, !tbaa !14
  %57 = fmul float %37, %52
  store float %57, float* %.pre-phi8, align 4, !tbaa !14
  %58 = sext i32 %ion to i64
  %59 = getelementptr inbounds [3 x float]* %v, i64 %58, i64 0
  %60 = load float* %59, align 4, !tbaa !14
  %61 = fadd float %60, %55
  %62 = getelementptr inbounds [3 x float]* %v, i64 %58, i64 1
  %63 = load float* %62, align 4, !tbaa !14
  %64 = fadd float %63, %56
  %65 = getelementptr inbounds [3 x float]* %v, i64 %58, i64 2
  %66 = load float* %65, align 4, !tbaa !14
  %67 = fadd float %57, %66
  store float %61, float* %59, align 4, !tbaa !14
  store float %64, float* %62, align 4, !tbaa !14
  store float %67, float* %65, align 4, !tbaa !14
  br label %68

; <label>:68                                      ; preds = %16, %51
  %.0 = phi i32 [ 1, %51 ], [ 0, %16 ]
  ret i32 %.0
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #11

; Function Attrs: nounwind optsize ssp uwtable
define void @ionize(%struct.__sFILE* nocapture %fp, %struct.t_mdatoms* nocapture readonly %md, i8*** nocapture readonly %atomname, float %t, %struct.t_inputrec* nocapture readonly %ir, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %v, i32 %start, i32 %end, [3 x float]* nocapture readonly %box, %struct.t_commrec* %cr) #4 {
  %pcoll = alloca [2 x float], align 4
  %dv = alloca [3 x float], align 4
  %ddv = alloca [3 x float], align 4
  %nbuf = alloca [2 x i32], align 4
  %.b = load i1* @ionize.bFirst, align 1
  br i1 %.b, label %129, label %1

; <label>:1                                       ; preds = %0
  %2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76
  %3 = bitcast float* %2 to i32*
  %4 = load i32* %3, align 4, !tbaa !38
  store i32 %4, i32* bitcast (float* @ionize.t0 to i32*), align 4, !tbaa !14
  %5 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77
  %6 = bitcast float* %5 to i32*
  %7 = load i32* %6, align 4, !tbaa !41
  store i32 %7, i32* bitcast (float* @ionize.nphot to i32*), align 4, !tbaa !14
  %8 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78
  %9 = bitcast float* %8 to i32*
  %10 = load i32* %9, align 4, !tbaa !42
  store i32 %10, i32* bitcast (float* @ionize.width to i32*), align 4, !tbaa !14
  %11 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79
  %12 = bitcast float* %11 to i32*
  %13 = load i32* %12, align 4, !tbaa !43
  store i32 %13, i32* bitcast (float* @ionize.rho to i32*), align 4, !tbaa !14
  %14 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72
  %15 = load i32* %14, align 4, !tbaa !44
  store i32 %15, i32* @ionize_seed, align 4, !tbaa !28
  %16 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73
  %17 = load i32* %16, align 4, !tbaa !45
  store i32 %17, i32* @ionize.ephot, align 4, !tbaa !28
  %18 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74
  %19 = load i32* %18, align 4, !tbaa !46
  store i32 %19, i32* @ionize.mode, align 4, !tbaa !28
  %20 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75
  %21 = load i32* %20, align 4, !tbaa !47
  %22 = sitofp i32 %21 to double
  %23 = fmul double %22, 1.000000e-03
  %24 = fptrunc double %23 to float
  store float %24, float* @ionize.interval, align 4, !tbaa !14
  %25 = bitcast i32 %10 to float
  %26 = fcmp ole float %25, 0.000000e+00
  %27 = bitcast i32 %7 to float
  %28 = fcmp ole float %27, 0.000000e+00
  %or.cond = or i1 %26, %28
  br i1 %or.cond, label %29, label %32

; <label>:29                                      ; preds = %1
  %30 = fpext float %25 to double
  %31 = fpext float %27 to double
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([100 x i8]* @.str24, i64 0, i64 0), double %30, double %31) #12
  %.pre = load i32* @ionize.mode, align 4, !tbaa !28
  br label %32

; <label>:32                                      ; preds = %1, %29
  %33 = phi i32 [ %19, %1 ], [ %.pre, %29 ]
  %34 = icmp ugt i32 %33, 2
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %32
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str25, i64 0, i64 0), i32 2) #12
  %.pr = load i32* @ionize.mode, align 4, !tbaa !28
  br label %36

; <label>:36                                      ; preds = %32, %35
  %37 = phi i32 [ %33, %32 ], [ %.pr, %35 ]
  switch i32 %37, label %68 [
    i32 0, label %38
    i32 1, label %53
  ]

; <label>:38                                      ; preds = %36
  %39 = load float* @ionize.nphot, align 4, !tbaa !14
  %40 = fpext float %39 to double
  %41 = load float* @ionize.rho, align 4, !tbaa !14
  %42 = fmul float %41, 5.000000e-01
  %43 = fmul float %42, %42
  %44 = fpext float %43 to double
  %45 = fmul double %44, 0x400921FB54442D18
  %46 = fdiv double %40, %45
  %47 = fmul double %46, 1.000000e-10
  %48 = load float* @ionize.width, align 4, !tbaa !14
  %49 = fpext float %48 to double
  %50 = fmul double %49, 0x40040D931FF62705
  %51 = fdiv double %47, %50
  %52 = fptrunc double %51 to float
  store float %52, float* @ionize.imax, align 4, !tbaa !14
  br label %68

; <label>:53                                      ; preds = %36
  %54 = load float* @ionize.nphot, align 4, !tbaa !14
  %55 = fpext float %54 to double
  %56 = load float* @ionize.rho, align 4, !tbaa !14
  %57 = fmul float %56, 5.000000e-01
  %58 = fmul float %57, %57
  %59 = fpext float %58 to double
  %60 = fmul double %59, 0x400921FB54442D18
  %61 = fdiv double %55, %60
  %62 = fmul double %61, 1.000000e-10
  %63 = load float* @ionize.width, align 4, !tbaa !14
  %64 = fpext float %63 to double
  %65 = fmul double %64, 0x40040D931FF62705
  %66 = fdiv double %62, %65
  %67 = fptrunc double %66 to float
  store float %67, float* @ionize.imax, align 4, !tbaa !14
  br label %68

; <label>:68                                      ; preds = %36, %53, %38
  %69 = load i32* @ionize_seed, align 4, !tbaa !28
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

; <label>:71                                      ; preds = %68
  %72 = tail call i32 @make_seed() #12
  store i32 %72, i32* @ionize_seed, align 4, !tbaa !28
  br label %73

; <label>:73                                      ; preds = %71, %68
  %74 = phi i32 [ %72, %71 ], [ %69, %68 ]
  %75 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %76 = load i32* %75, align 4, !tbaa !48
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %.preheader36, label %78

; <label>:78                                      ; preds = %73
  %79 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %80 = load i32* %79, align 4, !tbaa !50
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %.preheader36, label %.preheader35

.preheader36:                                     ; preds = %78, %73
  %82 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %83 = load i32* %82, align 4, !tbaa !51
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.preheader36, %.lr.ph60
  %i.059 = phi i32 [ %88, %.lr.ph60 ], [ 0, %.preheader36 ]
  %85 = tail call float @rando(i32* @ionize_seed) #12
  %86 = fmul float %85, 0x41E0000000000000
  %87 = fptosi float %86 to i32
  store i32 %87, i32* @ionize_seed, align 4, !tbaa !28
  %88 = add nuw nsw i32 %i.059, 1
  %89 = load i32* %82, align 4, !tbaa !51
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %.lr.ph60, label %._crit_edge61

._crit_edge61:                                    ; preds = %.lr.ph60, %.preheader36
  %91 = phi i32 [ %74, %.preheader36 ], [ %87, %.lr.ph60 ]
  %92 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([52 x i8]* @.str26, i64 0, i64 0), i32 %91) #12
  br label %.preheader35

.preheader35:                                     ; preds = %._crit_edge61, %78
  store i32 0, i32* @ionize.Eindex, align 4, !tbaa !28
  %93 = load i32* @ionize.ephot, align 4, !tbaa !28
  br label %94

; <label>:94                                      ; preds = %.preheader35, %98
  %.pr23 = phi i32 [ 0, %.preheader35 ], [ %99, %98 ]
  %indvars.iv75 = phi i64 [ 0, %.preheader35 ], [ %indvars.iv.next76, %98 ]
  %95 = getelementptr inbounds [6 x i32]* @Energies, i64 0, i64 %indvars.iv75
  %96 = load i32* %95, align 4, !tbaa !28
  %97 = icmp eq i32 %96, %93
  br i1 %97, label %.critedge.thread, label %98

; <label>:98                                      ; preds = %94
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %99 = trunc i64 %indvars.iv.next76 to i32
  store i32 %99, i32* @ionize.Eindex, align 4, !tbaa !28
  %100 = icmp ult i32 %99, 6
  br i1 %100, label %94, label %.critedge

.critedge:                                        ; preds = %98
  %101 = icmp eq i32 %99, 6
  br i1 %101, label %102, label %.critedge.thread

; <label>:102                                     ; preds = %.critedge
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str27, i64 0, i64 0), i32 %93) #12
  %.pre78 = load i32* @ionize.Eindex, align 4, !tbaa !28
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %94, %102, %.critedge
  %103 = phi i32 [ %.pre78, %102 ], [ %99, %.critedge ], [ %.pr23, %94 ]
  %104 = tail call %struct.t_cross_atom* @mk_cross_atom(%struct.__sFILE* %fp, %struct.t_mdatoms* %md, i8*** %atomname, i32 %103) #15
  store %struct.t_cross_atom* %104, %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !24
  store i32 0, i32* @ionize.dq_tot, align 4, !tbaa !28
  store i32 0, i32* @ionize.nkd_tot, align 4, !tbaa !28
  %105 = tail call %struct.__sFILE* @xvgropen(i8* getelementptr inbounds ([11 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0)) #12
  store %struct.__sFILE* %105, %struct.__sFILE** @ionize.xvg, align 8, !tbaa !24
  tail call void @xvgr_legend(%struct.__sFILE* %105, i32 5, i8** getelementptr inbounds ([5 x i8*]* @ionize.leg, i64 0, i64 0)) #12
  %106 = tail call %struct.__sFILE* @ffopen(i8* getelementptr inbounds ([11 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str33, i64 0, i64 0)) #12
  store %struct.__sFILE* %106, %struct.__sFILE** @ionize.ion, align 8, !tbaa !24
  %107 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str34, i64 0, i64 0), i64 42, i64 1, %struct.__sFILE* %fp)
  %108 = load float* @ionize.imax, align 4, !tbaa !14
  %109 = fpext float %108 to double
  %110 = load float* @ionize.t0, align 4, !tbaa !14
  %111 = fpext float %110 to double
  %112 = load float* @ionize.width, align 4, !tbaa !14
  %113 = fpext float %112 to double
  %114 = load i32* @ionize_seed, align 4, !tbaa !28
  %115 = load float* @ionize.nphot, align 4, !tbaa !14
  %116 = fpext float %115 to double
  %117 = load float* @ionize.rho, align 4, !tbaa !14
  %118 = fpext float %117 to double
  %119 = load i32* @ionize.ephot, align 4, !tbaa !28
  %120 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([102 x i8]* @.str35, i64 0, i64 0), double %109, double %111, double %113, i32 %114, double %116, double %118, i32 %119) #12
  %121 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([99 x i8]* @.str36, i64 0, i64 0), double 5.120000e+02, double 9.400000e+05, double 0x41124C41D4FDF3B6) #12
  %122 = load float* @ionize.interval, align 4, !tbaa !14
  %123 = fpext float %122 to double
  %124 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str37, i64 0, i64 0), double %123) #12
  %125 = load i32* @ionize.Eindex, align 4, !tbaa !28
  %126 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str38, i64 0, i64 0), i32 %125) #12
  %127 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([45 x i8]* @.str39, i64 0, i64 0), i32 %start, i32 %end) #12
  %128 = tail call i32 @fflush(%struct.__sFILE* %fp) #12
  store i1 true, i1* @ionize.bFirst, align 1
  br label %129

; <label>:129                                     ; preds = %0, %.critedge.thread
  %130 = load float* @ionize.t0, align 4, !tbaa !14
  %131 = load float* @ionize.interval, align 4, !tbaa !14
  %132 = fcmp ogt float %131, 0.000000e+00
  br i1 %132, label %.preheader34, label %.loopexit

.preheader34:                                     ; preds = %129
  %133 = fpext float %t to double
  %134 = fpext float %130 to double
  %135 = fpext float %131 to double
  %136 = fmul double %135, 5.000000e-01
  %137 = fadd double %134, %136
  %138 = fcmp ogt double %133, %137
  br i1 %138, label %.lr.ph56, label %.loopexit

.lr.ph56:                                         ; preds = %.preheader34, %.lr.ph56
  %tmax.055 = phi float [ %139, %.lr.ph56 ], [ %130, %.preheader34 ]
  %139 = fadd float %tmax.055, %131
  %140 = fpext float %139 to double
  %141 = fadd double %140, %136
  %142 = fcmp ogt double %133, %141
  br i1 %142, label %.lr.ph56, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph56, %.preheader34, %129
  %tmax.1 = phi float [ %130, %129 ], [ %130, %.preheader34 ], [ %139, %.lr.ph56 ]
  %143 = load float* @ionize.imax, align 4, !tbaa !14
  %144 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %145 = load float* %144, align 4, !tbaa !52
  %146 = fmul float %143, %145
  %147 = fpext float %146 to double
  %148 = fsub float %t, %tmax.1
  %149 = load float* @ionize.width, align 4, !tbaa !14
  %150 = fdiv float %148, %149
  %151 = fmul float %150, %150
  %152 = fpext float %151 to double
  %153 = fmul double %152, -5.000000e-01
  %154 = tail call double @exp(double %153) #14
  %155 = fmul double %147, %154
  %156 = fptrunc double %155 to float
  %157 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %158 = load float* %157, align 4, !tbaa !14
  %159 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %160 = load float* %159, align 4, !tbaa !14
  %161 = insertelement <2 x float> undef, float %158, i32 0
  %162 = insertelement <2 x float> %161, float %160, i32 1
  %163 = fmul <2 x float> %162, <float 5.000000e-01, float 5.000000e-01>
  %164 = load float* @ionize.rho, align 4, !tbaa !14
  %165 = fmul float %164, %164
  %166 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %167 = load i32* %166, align 4, !tbaa !22
  %168 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 585, i32 %167, i32 4) #12
  %169 = bitcast i8* %168 to i32*
  %170 = load i32* %166, align 4, !tbaa !22
  %171 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 586, i32 %170, i32 4) #12
  %172 = bitcast i8* %171 to i32*
  %173 = load i32* %166, align 4, !tbaa !22
  %174 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 587, i32 %173, i32 4) #12
  %175 = bitcast i8* %174 to i32*
  %176 = icmp slt i32 %start, %end
  br i1 %176, label %.preheader.lr.ph, label %._crit_edge52

.preheader.lr.ph:                                 ; preds = %.loopexit
  %177 = getelementptr inbounds [2 x float]* %pcoll, i64 0, i64 0
  %178 = getelementptr inbounds [2 x float]* %pcoll, i64 0, i64 1
  %179 = fpext float %t to double
  %180 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 0
  %181 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1
  %182 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2
  %183 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %184 = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 0
  %185 = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 1
  %186 = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 2
  %187 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  %188 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7
  %189 = sext i32 %start to i64
  %190 = add i32 %end, -1
  br label %.preheader

.preheader:                                       ; preds = %477, %.preheader.lr.ph
  %indvars.iv72 = phi i64 [ %189, %.preheader.lr.ph ], [ %indvars.iv.next73, %477 ]
  %E_lost.051 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %E_lost.3, %477 ]
  %nkdecay.048 = phi i32 [ 0, %.preheader.lr.ph ], [ %nkdecay.1.lcssa, %477 ]
  %dq.046 = phi i32 [ 0, %.preheader.lr.ph ], [ %dq.3, %477 ]
  br label %191

; <label>:191                                     ; preds = %191, %.preheader
  %indvars.iv63 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next64, %191 ]
  %192 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !24
  %193 = getelementptr inbounds %struct.t_cross_atom* %192, i64 %indvars.iv72
  %194 = trunc i64 %indvars.iv63 to i32
  %195 = call float @xray_cross_section(i32 %194, %struct.t_cross_atom* %193) #15
  %196 = fmul float %156, %195
  %197 = getelementptr inbounds [2 x float]* %pcoll, i64 0, i64 %indvars.iv63
  store float %196, float* %197, align 4, !tbaa !14
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %exitcond = icmp eq i64 %indvars.iv.next64, 2
  br i1 %exitcond, label %198, label %191

; <label>:198                                     ; preds = %191
  %199 = load float* %177, align 4, !tbaa !14
  %200 = fsub float 1.000000e+00, %199
  %201 = load float* %178, align 4, !tbaa !14
  %202 = fsub float 1.000000e+00, %201
  %203 = fmul float %200, %202
  %204 = fsub float 1.000000e+00, %203
  %205 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  %206 = icmp ne %struct.__sFILE* %205, null
  %207 = trunc i64 %indvars.iv72 to i32
  %208 = icmp eq i32 %207, 0
  %or.cond6 = and i1 %208, %206
  br i1 %or.cond6, label %209, label %212

; <label>:209                                     ; preds = %198
  %210 = fpext float %204 to double
  %211 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %205, i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0), double %210, double %179) #12
  br label %212

; <label>:212                                     ; preds = %209, %198
  %213 = load i32* @ionize.mode, align 4, !tbaa !28
  switch i32 %213, label %234 [
    i32 0, label %214
    i32 1, label %.thread
  ]

; <label>:214                                     ; preds = %212
  %215 = call float @rando(i32* @ionize_seed) #12
  %216 = fcmp olt float %215, %204
  br i1 %216, label %217, label %.thread

; <label>:217                                     ; preds = %214
  %218 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !24
  %219 = getelementptr inbounds %struct.t_cross_atom* %218, i64 %indvars.iv72, i32 1
  %220 = load i32* %219, align 4, !tbaa !20
  %221 = getelementptr inbounds %struct.t_cross_atom* %218, i64 %indvars.iv72, i32 0
  %222 = load i32* %221, align 4, !tbaa !18
  %223 = icmp slt i32 %220, %222
  br i1 %223, label %224, label %.thread

; <label>:224                                     ; preds = %217
  %225 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv72, i64 0
  %226 = bitcast float* %225 to <2 x float>*
  %227 = load <2 x float>* %226, align 4, !tbaa !14
  %228 = fsub <2 x float> %227, %163
  %229 = fmul <2 x float> %228, %228
  %230 = extractelement <2 x float> %229, i32 0
  %231 = extractelement <2 x float> %229, i32 1
  %232 = fadd float %230, %231
  %233 = fcmp olt float %232, %165
  br i1 %233, label %235, label %.thread

; <label>:234                                     ; preds = %212
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([41 x i8]* @.str44, i64 0, i64 0), i32 %213, i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 614) #12
  br label %.thread

; <label>:235                                     ; preds = %224
  store float 0.000000e+00, float* %180, align 4, !tbaa !14
  store float 0.000000e+00, float* %181, align 4, !tbaa !14
  store float 0.000000e+00, float* %182, align 4, !tbaa !14
  %236 = fadd float %199, %201
  %237 = fdiv float %199, %236
  %238 = call float @rando(i32* @ionize_seed) #12
  %239 = fcmp olt float %238, %237
  %240 = zext i1 %239 to i32
  %. = xor i32 %240, 1
  %241 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !24
  %242 = getelementptr inbounds %struct.t_cross_atom* %241, i64 %indvars.iv72, i32 0
  %243 = load i32* %242, align 4, !tbaa !18
  %244 = icmp slt i32 %243, 3
  br i1 %244, label %245, label %249

; <label>:245                                     ; preds = %235
  %246 = getelementptr inbounds %struct.t_cross_atom* %241, i64 %indvars.iv72, i32 1
  %247 = load i32* %246, align 4, !tbaa !20
  %248 = sub nsw i32 %243, %247
  %.phi.trans.insert = getelementptr inbounds %struct.t_cross_atom* %241, i64 %indvars.iv72, i32 2
  %.pre79 = load i32* %.phi.trans.insert, align 4, !tbaa !21
  br label %number_K.exit

; <label>:249                                     ; preds = %235
  %250 = getelementptr inbounds %struct.t_cross_atom* %241, i64 %indvars.iv72, i32 2
  %251 = load i32* %250, align 4, !tbaa !21
  %252 = sub nsw i32 2, %251
  %.phi.trans.insert80 = getelementptr inbounds %struct.t_cross_atom* %241, i64 %indvars.iv72, i32 1
  %.pre81 = load i32* %.phi.trans.insert80, align 4, !tbaa !20
  br label %number_K.exit

number_K.exit:                                    ; preds = %245, %249
  %253 = phi i32 [ %247, %245 ], [ %.pre81, %249 ]
  %254 = phi i32 [ %.pre79, %245 ], [ %251, %249 ]
  %.0.i = phi i32 [ %248, %245 ], [ %252, %249 ]
  %255 = add nsw i32 %254, -2
  %256 = add nsw i32 %255, %243
  %257 = sub i32 %256, %253
  %258 = icmp eq i32 %.0.i, 0
  br i1 %258, label %267, label %259

; <label>:259                                     ; preds = %number_K.exit
  %260 = icmp sgt i32 %257, 0
  br i1 %260, label %261, label %267

; <label>:261                                     ; preds = %259
  %262 = call float @rando(i32* @ionize_seed) #12
  %263 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !24
  %264 = getelementptr inbounds %struct.t_cross_atom* %263, i64 %indvars.iv72
  %265 = call float @prob_K(i32 %., %struct.t_cross_atom* %264) #15
  %266 = fcmp ogt float %262, %265
  br label %267

; <label>:267                                     ; preds = %259, %261, %number_K.exit
  %268 = phi i1 [ true, %number_K.exit ], [ false, %259 ], [ %266, %261 ]
  br i1 %239, label %269, label %347

; <label>:269                                     ; preds = %267
  %270 = call float @gauss(float 7.000000e+01, float 2.600000e+01, i32* @ionize_seed) #12
  %271 = fpext float %270 to double
  %272 = fmul double %271, 0x3F91DF46A2529D39
  %273 = fptrunc double %272 to float
  %274 = call float @rando(i32* @ionize_seed) #12
  %275 = fpext float %274 to double
  %276 = fmul double %275, 0x401921FB54442D18
  %277 = fptrunc double %276 to float
  %278 = load i32* @ionize.ephot, align 4, !tbaa !28
  %279 = sitofp i32 %278 to float
  %280 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !24
  %281 = getelementptr inbounds %struct.t_cross_atom* %280, i64 %indvars.iv72, i32 0
  %282 = load i32* %281, align 4, !tbaa !18
  %283 = sext i32 %282 to i64
  br i1 %268, label %284, label %292

; <label>:284                                     ; preds = %269
  %285 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %283, i32 1
  %286 = load float* %285, align 4, !tbaa !53
  %287 = getelementptr inbounds %struct.t_cross_atom* %280, i64 %indvars.iv72, i32 1
  %288 = load i32* %287, align 4, !tbaa !20
  %289 = add nsw i32 %288, 1
  %290 = sitofp i32 %289 to float
  %291 = fmul float %286, %290
  br label %297

; <label>:292                                     ; preds = %269
  %293 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %283, i32 0
  %294 = load float* %293, align 16, !tbaa !30
  %295 = icmp sgt i32 %282, 2
  %296 = icmp sgt i32 %257, 0
  %or.cond8 = and i1 %296, %295
  %.20 = zext i1 %or.cond8 to i32
  br label %297

; <label>:297                                     ; preds = %292, %284
  %bKHole.0 = phi i32 [ 0, %284 ], [ %.20, %292 ]
  %.pn = phi float [ %291, %284 ], [ %294, %292 ]
  %E_lost.1 = fsub float %279, %.pn
  %298 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  %299 = icmp eq %struct.__sFILE* %298, null
  br i1 %299, label %308, label %300

; <label>:300                                     ; preds = %297
  %301 = zext i1 %268 to i64
  %302 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %301
  %303 = load i8** %302, align 8, !tbaa !24
  %304 = zext i32 %bKHole.0 to i64
  %305 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %304
  %306 = load i8** %305, align 8, !tbaa !24
  %307 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %298, i8* getelementptr inbounds ([48 x i8]* @.str45, i64 0, i64 0), i32 %207, i32 %.0.i, i32 %257, i8* %303, i8* %306) #12
  br label %308

; <label>:308                                     ; preds = %297, %300
  %309 = fcmp olt float %E_lost.1, 0.000000e+00
  br i1 %309, label %.thread32, label %310

; <label>:310                                     ; preds = %308
  %311 = load float** %183, align 8, !tbaa !54
  %312 = getelementptr inbounds float* %311, i64 %indvars.iv72
  %313 = load float* %312, align 4, !tbaa !14
  %314 = fpext float %313 to double
  %315 = fmul double %314, 9.400000e+05
  %316 = fdiv double 5.120000e+02, %315
  %317 = fmul float %E_lost.1, 2.000000e+00
  %318 = fpext float %317 to double
  %319 = fmul double %318, 1.953125e-03
  %320 = call double @sqrt(double %319) #14
  %321 = fmul double %320, 0x41124C41D4FDF3B6
  %322 = fmul double %316, %321
  %323 = fptrunc double %322 to float
  %324 = fpext float %277 to double
  %325 = call double @cos(double %324) #14
  %326 = fpext float %273 to double
  %327 = call double @sin(double %326) #14
  %328 = fmul double %325, %327
  %329 = fptrunc double %328 to float
  store float %329, float* %184, align 4, !tbaa !14
  %330 = call double @sin(double %324) #14
  %331 = fmul double %327, %330
  %332 = fptrunc double %331 to float
  store float %332, float* %185, align 4, !tbaa !14
  %333 = call double @cos(double %326) #14
  %334 = fptrunc double %333 to float
  store float %334, float* %186, align 4, !tbaa !14
  %335 = fmul float %323, %329
  %336 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 0
  %337 = load float* %336, align 4, !tbaa !14
  %338 = fsub float %337, %335
  store float %338, float* %336, align 4, !tbaa !14
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %310, %._crit_edge83
  %indvars.iv.next6696 = phi i64 [ 1, %310 ], [ %indvars.iv.next66, %._crit_edge83 ]
  %.phi.trans.insert84 = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 %indvars.iv.next6696
  %.pre85 = load float* %.phi.trans.insert84, align 4, !tbaa !14
  %339 = fmul float %323, %.pre85
  %340 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 %indvars.iv.next6696
  %341 = load float* %340, align 4, !tbaa !14
  %342 = fsub float %341, %339
  store float %342, float* %340, align 4, !tbaa !14
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv.next6696, 1
  %exitcond67 = icmp eq i64 %indvars.iv.next66, 3
  br i1 %exitcond67, label %343, label %._crit_edge83

; <label>:343                                     ; preds = %._crit_edge83
  %344 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  %345 = icmp eq %struct.__sFILE* %344, null
  br i1 %345, label %.thread25, label %346

; <label>:346                                     ; preds = %343
  call void @pr_rvec(%struct.__sFILE* %344, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0), float* %180, i32 3) #12
  br label %.thread25

; <label>:347                                     ; preds = %267
  %348 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !24
  %349 = getelementptr inbounds %struct.t_cross_atom* %348, i64 %indvars.iv72, i32 0
  %350 = load i32* %349, align 4
  br i1 %268, label %351, label %360

; <label>:351                                     ; preds = %347
  %352 = getelementptr inbounds %struct.t_cross_atom* %348, i64 %indvars.iv72, i32 1
  %353 = load i32* %352, align 4, !tbaa !20
  %354 = add nsw i32 %353, 1
  %355 = sitofp i32 %354 to float
  %356 = sext i32 %350 to i64
  %357 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %356, i32 1
  %358 = load float* %357, align 4, !tbaa !53
  %359 = fmul float %355, %358
  br label %366

; <label>:360                                     ; preds = %347
  %361 = sext i32 %350 to i64
  %362 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %361, i32 0
  %363 = load float* %362, align 16, !tbaa !30
  %364 = icmp sgt i32 %350, 2
  %365 = icmp sgt i32 %257, 0
  %or.cond14 = and i1 %365, %364
  br label %366

; <label>:366                                     ; preds = %360, %351
  %bKHole.1 = phi i1 [ false, %351 ], [ %or.cond14, %360 ]
  %Ebind.0 = phi float [ %359, %351 ], [ %363, %360 ]
  %367 = load i32* @ionize.Eindex, align 4, !tbaa !28
  %368 = call float @rand_theta_incoh(i32 %367, i32* @ionize_seed) #15
  %369 = fpext float %368 to double
  %370 = fmul double %369, 0x3F91DF46A2529D39
  %371 = fptrunc double %370 to float
  %372 = load i32* @ionize.ephot, align 4, !tbaa !28
  %373 = sitofp i32 %372 to float
  %374 = fmul float %373, %373
  %375 = fmul float %374, 1.953125e-03
  %376 = fpext float %375 to double
  %377 = fmul float %371, 2.000000e+00
  %378 = fpext float %377 to double
  %379 = call double @cos(double %378) #14
  %380 = fsub double 1.000000e+00, %379
  %381 = fmul double %380, %376
  %382 = fptrunc double %381 to float
  %383 = fcmp ole float %Ebind.0, %382
  %.22 = and i1 %bKHole.1, %383
  %384 = zext i1 %.22 to i32
  %385 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  %386 = icmp eq %struct.__sFILE* %385, null
  br i1 %386, label %.thread91, label %387

; <label>:387                                     ; preds = %366
  %388 = fpext float %Ebind.0 to double
  %389 = fpext float %382 to double
  %390 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %385, i8* getelementptr inbounds ([34 x i8]* @.str48, i64 0, i64 0), double %388, double %389) #12
  %.pre82 = load %struct.__sFILE** @debug, align 8
  %391 = xor i1 %383, true
  %392 = icmp ne %struct.__sFILE* %.pre82, null
  %or.cond16 = and i1 %392, %391
  br i1 %or.cond16, label %393, label %.thread91

; <label>:393                                     ; preds = %387
  call void @pr_rvec(%struct.__sFILE* %.pre82, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str49, i64 0, i64 0), float* %180, i32 3) #12
  br label %.thread91

.thread91:                                        ; preds = %366, %387, %393
  br i1 %383, label %.thread25, label %.thread32

.thread25:                                        ; preds = %346, %343, %.thread91
  %E_lost.230 = phi float [ %E_lost.051, %.thread91 ], [ %E_lost.1, %343 ], [ %E_lost.1, %346 ]
  %bKHole.227 = phi i32 [ %384, %.thread91 ], [ %bKHole.0, %343 ], [ %bKHole.0, %346 ]
  %394 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !24
  %395 = getelementptr inbounds %struct.t_cross_atom* %394, i64 %indvars.iv72, i32 1
  %396 = load i32* %395, align 4, !tbaa !20
  %397 = getelementptr inbounds %struct.t_cross_atom* %394, i64 %indvars.iv72, i32 0
  %398 = load i32* %397, align 4, !tbaa !18
  %399 = icmp slt i32 %396, %398
  br i1 %399, label %400, label %411

; <label>:400                                     ; preds = %.thread25
  %401 = load float** %187, align 8, !tbaa !55
  %402 = getelementptr inbounds float* %401, i64 %indvars.iv72
  %403 = load float* %402, align 4, !tbaa !14
  %404 = fadd float %403, 1.000000e+00
  store float %404, float* %402, align 4, !tbaa !14
  %405 = load float** %188, align 8, !tbaa !56
  %406 = getelementptr inbounds float* %405, i64 %indvars.iv72
  %407 = load float* %406, align 4, !tbaa !14
  %408 = fadd float %407, 1.000000e+00
  store float %408, float* %406, align 4, !tbaa !14
  %409 = add nsw i32 %396, 1
  store i32 %409, i32* %395, align 4, !tbaa !20
  %410 = add nsw i32 %dq.046, 1
  br label %411

; <label>:411                                     ; preds = %400, %.thread25
  %dq.1 = phi i32 [ %410, %400 ], [ %dq.046, %.thread25 ]
  %412 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  %413 = icmp eq %struct.__sFILE* %412, null
  br i1 %413, label %.thread32, label %414

; <label>:414                                     ; preds = %411
  %415 = load float* %180, align 4, !tbaa !14
  %416 = fpext float %415 to double
  %417 = load float* %181, align 4, !tbaa !14
  %418 = fpext float %417 to double
  %419 = load float* %182, align 4, !tbaa !14
  %420 = fpext float %419 to double
  %421 = load i32* @ionize.ephot, align 4, !tbaa !28
  %422 = fpext float %E_lost.230 to double
  %423 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %412, i8* getelementptr inbounds ([65 x i8]* @.str51, i64 0, i64 0), i32 %207, double %416, double %418, double %420, i32 %421, double %422) #12
  br label %.thread32

.thread32:                                        ; preds = %308, %411, %414, %.thread91
  %424 = phi i1 [ true, %414 ], [ true, %411 ], [ false, %.thread91 ], [ false, %308 ]
  %E_lost.231 = phi float [ %E_lost.230, %414 ], [ %E_lost.230, %411 ], [ %E_lost.051, %.thread91 ], [ 0.000000e+00, %308 ]
  %bKHole.226 = phi i32 [ %bKHole.227, %414 ], [ %bKHole.227, %411 ], [ %384, %.thread91 ], [ 0, %308 ]
  %dq.2 = phi i32 [ %dq.1, %414 ], [ %dq.1, %411 ], [ %dq.046, %.thread91 ], [ %dq.046, %308 ]
  br label %425

; <label>:425                                     ; preds = %425, %.thread32
  %indvars.iv68 = phi i64 [ 0, %.thread32 ], [ %indvars.iv.next69, %425 ]
  %426 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 %indvars.iv68
  %427 = load float* %426, align 4, !tbaa !14
  %428 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv72, i64 %indvars.iv68
  %429 = load float* %428, align 4, !tbaa !14
  %430 = fadd float %427, %429
  store float %430, float* %428, align 4, !tbaa !14
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %exitcond70 = icmp eq i64 %indvars.iv.next69, 3
  br i1 %exitcond70, label %431, label %425

; <label>:431                                     ; preds = %425
  %432 = icmp eq i32 %bKHole.226, 0
  br i1 %432, label %441, label %433

; <label>:433                                     ; preds = %431
  %434 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !24
  %435 = getelementptr inbounds %struct.t_cross_atom* %434, i64 %indvars.iv72, i32 2
  %436 = load i32* %435, align 4, !tbaa !21
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %435, align 4, !tbaa !21
  %438 = getelementptr inbounds i32* %172, i64 %indvars.iv72
  %439 = load i32* %438, align 4, !tbaa !28
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %438, align 4, !tbaa !28
  br label %.thread

; <label>:441                                     ; preds = %431
  br i1 %424, label %442, label %.thread

; <label>:442                                     ; preds = %441
  %443 = getelementptr inbounds i32* %169, i64 %indvars.iv72
  %444 = load i32* %443, align 4, !tbaa !28
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %443, align 4, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %214, %217, %224, %212, %234, %433, %442, %441
  %dq.3 = phi i32 [ %dq.2, %433 ], [ %dq.2, %442 ], [ %dq.2, %441 ], [ %dq.046, %224 ], [ %dq.046, %234 ], [ %dq.046, %212 ], [ %dq.046, %217 ], [ %dq.046, %214 ]
  %E_lost.3 = phi float [ %E_lost.231, %433 ], [ %E_lost.231, %442 ], [ %E_lost.231, %441 ], [ %E_lost.051, %224 ], [ %E_lost.051, %234 ], [ %E_lost.051, %212 ], [ %E_lost.051, %217 ], [ %E_lost.051, %214 ]
  %446 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !24
  %447 = getelementptr inbounds %struct.t_cross_atom* %446, i64 %indvars.iv72, i32 2
  %448 = load i32* %447, align 4, !tbaa !21
  %449 = icmp sgt i32 %448, 0
  br i1 %449, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %.thread
  %450 = getelementptr inbounds i32* %175, i64 %indvars.iv72
  %451 = add i32 %448, -1
  br label %452

; <label>:452                                     ; preds = %._crit_edge86, %.lr.ph44
  %453 = phi %struct.t_cross_atom* [ %446, %.lr.ph44 ], [ %.pre87, %._crit_edge86 ]
  %nkdecay.143 = phi i32 [ %nkdecay.048, %.lr.ph44 ], [ %nkdecay.2, %._crit_edge86 ]
  %kk.042 = phi i32 [ 0, %.lr.ph44 ], [ %463, %._crit_edge86 ]
  %454 = getelementptr inbounds %struct.t_cross_atom* %453, i64 %indvars.iv72
  %455 = load float* %144, align 4, !tbaa !52
  %456 = call i32 @khole_decay(%struct.__sFILE* undef, %struct.t_cross_atom* %454, [3 x float]* undef, [3 x float]* %v, i32 %207, i32* @ionize_seed, float %455) #15
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %462, label %458

; <label>:458                                     ; preds = %452
  %459 = add nsw i32 %nkdecay.143, 1
  %460 = load i32* %450, align 4, !tbaa !28
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %450, align 4, !tbaa !28
  br label %462

; <label>:462                                     ; preds = %452, %458
  %nkdecay.2 = phi i32 [ %459, %458 ], [ %nkdecay.143, %452 ]
  %exitcond71 = icmp eq i32 %kk.042, %451
  br i1 %exitcond71, label %._crit_edge45, label %._crit_edge86

._crit_edge86:                                    ; preds = %462
  %463 = add nuw nsw i32 %kk.042, 1
  %.pre87 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !24
  br label %452

._crit_edge45:                                    ; preds = %462, %.thread
  %nkdecay.1.lcssa = phi i32 [ %nkdecay.048, %.thread ], [ %nkdecay.2, %462 ]
  %464 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  %465 = icmp eq %struct.__sFILE* %464, null
  br i1 %465, label %477, label %466

; <label>:466                                     ; preds = %._crit_edge45
  %467 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !24
  %468 = getelementptr inbounds %struct.t_cross_atom* %467, i64 %indvars.iv72, i32 1
  %469 = load i32* %468, align 4, !tbaa !20
  %470 = icmp sgt i32 %469, 0
  br i1 %470, label %471, label %477

; <label>:471                                     ; preds = %466
  %472 = getelementptr inbounds %struct.t_cross_atom* %467, i64 %indvars.iv72, i32 0
  %473 = load i32* %472, align 4, !tbaa !18
  %474 = getelementptr inbounds %struct.t_cross_atom* %467, i64 %indvars.iv72, i32 2
  %475 = load i32* %474, align 4, !tbaa !21
  %476 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %464, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 745, i32 %207, i32 %473, i32 %469, i32 %475) #12
  br label %477

; <label>:477                                     ; preds = %._crit_edge45, %466, %471
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1
  %exitcond74 = icmp eq i32 %207, %190
  br i1 %exitcond74, label %._crit_edge52, label %.preheader

._crit_edge52:                                    ; preds = %477, %.loopexit
  %nkdecay.0.lcssa = phi i32 [ 0, %.loopexit ], [ %nkdecay.1.lcssa, %477 ]
  %dq.0.lcssa = phi i32 [ 0, %.loopexit ], [ %dq.3, %477 ]
  %478 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %479 = load i32* %478, align 4, !tbaa !48
  %480 = icmp sgt i32 %479, 1
  br i1 %480, label %485, label %481

; <label>:481                                     ; preds = %._crit_edge52
  %482 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %483 = load i32* %482, align 4, !tbaa !50
  %484 = icmp sgt i32 %483, 1
  br i1 %484, label %485, label %493

; <label>:485                                     ; preds = %481, %._crit_edge52
  %486 = load i32* %166, align 4, !tbaa !22
  call void @gmx_sumi(i32 %486, i32* %169, %struct.t_commrec* %cr) #12
  %487 = load i32* %166, align 4, !tbaa !22
  call void @gmx_sumi(i32 %487, i32* %172, %struct.t_commrec* %cr) #12
  %488 = load i32* %166, align 4, !tbaa !22
  call void @gmx_sumi(i32 %488, i32* %175, %struct.t_commrec* %cr) #12
  %489 = getelementptr inbounds [2 x i32]* %nbuf, i64 0, i64 0
  store i32 %dq.0.lcssa, i32* %489, align 4, !tbaa !28
  %490 = getelementptr inbounds [2 x i32]* %nbuf, i64 0, i64 1
  store i32 %nkdecay.0.lcssa, i32* %490, align 4, !tbaa !28
  call void @gmx_sumi(i32 2, i32* %489, %struct.t_commrec* %cr) #12
  %491 = load i32* %489, align 4, !tbaa !28
  %492 = load i32* %490, align 4, !tbaa !28
  br label %493

; <label>:493                                     ; preds = %485, %481
  %dq.4 = phi i32 [ %491, %485 ], [ %dq.0.lcssa, %481 ]
  %nkdecay.3 = phi i32 [ %492, %485 ], [ %nkdecay.0.lcssa, %481 ]
  %494 = load i32* @ionize.dq_tot, align 4, !tbaa !28
  %495 = add nsw i32 %494, %dq.4
  store i32 %495, i32* @ionize.dq_tot, align 4, !tbaa !28
  %496 = load i32* @ionize.nkd_tot, align 4, !tbaa !28
  %497 = add nsw i32 %496, %nkdecay.3
  store i32 %497, i32* @ionize.nkd_tot, align 4, !tbaa !28
  %498 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %499 = load i32* %498, align 4, !tbaa !51
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %559

; <label>:501                                     ; preds = %493
  %502 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %503 = load i32* %502, align 4, !tbaa !57
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %559

; <label>:505                                     ; preds = %501
  %506 = load %struct.__sFILE** @ionize.ion, align 8, !tbaa !24
  %507 = fpext float %t to double
  %508 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %506, i8* getelementptr inbounds ([7 x i8]* @.str52, i64 0, i64 0), double %507) #12
  %509 = load i32* %166, align 4, !tbaa !22
  %510 = icmp sgt i32 %509, 0
  br i1 %510, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %505, %537
  %indvars.iv = phi i64 [ %indvars.iv.next.pre-phi, %537 ], [ 0, %505 ]
  %511 = getelementptr inbounds i32* %169, i64 %indvars.iv
  %512 = load i32* %511, align 4, !tbaa !28
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %519, label %514

; <label>:514                                     ; preds = %.lr.ph
  %515 = load %struct.__sFILE** @ionize.ion, align 8, !tbaa !24
  %516 = add nuw nsw i64 %indvars.iv, 1
  %517 = trunc i64 %516 to i32
  %518 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %515, i8* getelementptr inbounds ([7 x i8]* @.str53, i64 0, i64 0), i32 %517) #12
  br label %519

; <label>:519                                     ; preds = %.lr.ph, %514
  %520 = getelementptr inbounds i32* %172, i64 %indvars.iv
  %521 = load i32* %520, align 4, !tbaa !28
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %528, label %523

; <label>:523                                     ; preds = %519
  %524 = load %struct.__sFILE** @ionize.ion, align 8, !tbaa !24
  %525 = add nuw nsw i64 %indvars.iv, 1
  %526 = trunc i64 %525 to i32
  %527 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %524, i8* getelementptr inbounds ([7 x i8]* @.str54, i64 0, i64 0), i32 %526) #12
  br label %528

; <label>:528                                     ; preds = %519, %523
  %529 = getelementptr inbounds i32* %175, i64 %indvars.iv
  %530 = load i32* %529, align 4, !tbaa !28
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %._crit_edge89, label %532

._crit_edge89:                                    ; preds = %528
  %.pre90 = add nuw nsw i64 %indvars.iv, 1
  br label %537

; <label>:532                                     ; preds = %528
  %533 = load %struct.__sFILE** @ionize.ion, align 8, !tbaa !24
  %534 = add nuw nsw i64 %indvars.iv, 1
  %535 = trunc i64 %534 to i32
  %536 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %533, i8* getelementptr inbounds ([7 x i8]* @.str55, i64 0, i64 0), i32 %535) #12
  br label %537

; <label>:537                                     ; preds = %._crit_edge89, %532
  %indvars.iv.next.pre-phi = phi i64 [ %.pre90, %._crit_edge89 ], [ %534, %532 ]
  %538 = load i32* %166, align 4, !tbaa !22
  %539 = sext i32 %538 to i64
  %540 = icmp slt i64 %indvars.iv.next.pre-phi, %539
  br i1 %540, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %537, %505
  %541 = load %struct.__sFILE** @ionize.ion, align 8, !tbaa !24
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %541)
  %542 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  %543 = icmp eq %struct.__sFILE* %542, null
  br i1 %543, label %547, label %544

; <label>:544                                     ; preds = %._crit_edge
  %545 = load %struct.__sFILE** @ionize.ion, align 8, !tbaa !24
  %546 = call i32 @fflush(%struct.__sFILE* %545) #12
  br label %547

; <label>:547                                     ; preds = %._crit_edge, %544
  %548 = load %struct.__sFILE** @ionize.xvg, align 8, !tbaa !24
  %549 = fpext float %156 to double
  %550 = load i32* @ionize.dq_tot, align 4, !tbaa !28
  %551 = load i32* @ionize.nkd_tot, align 4, !tbaa !28
  %552 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %548, i8* getelementptr inbounds ([35 x i8]* @.str56, i64 0, i64 0), double %507, double %549, i32 %dq.4, i32 %550, i32 %nkdecay.3, i32 %551) #12
  %553 = load %struct.__sFILE** @ionize.xvg, align 8, !tbaa !24
  %fputc19 = call i32 @fputc(i32 10, %struct.__sFILE* %553)
  %554 = load %struct.__sFILE** @debug, align 8, !tbaa !24
  %555 = icmp eq %struct.__sFILE* %554, null
  br i1 %555, label %559, label %556

; <label>:556                                     ; preds = %547
  %557 = load %struct.__sFILE** @ionize.xvg, align 8, !tbaa !24
  %558 = call i32 @fflush(%struct.__sFILE* %557) #12
  br label %559

; <label>:559                                     ; preds = %547, %556, %501, %493
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 784, i8* %168) #12
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 785, i8* %171) #12
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 786, i8* %174) #12
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #10

; Function Attrs: optsize
declare i32 @make_seed() #1

; Function Attrs: optsize
declare %struct.__sFILE* @xvgropen(i8*, i8*, i8*, i8*) #1

; Function Attrs: optsize
declare void @xvgr_legend(%struct.__sFILE*, i32, i8**) #1

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #5

; Function Attrs: optsize
declare float @gauss(float, float, i32*) #1

; Function Attrs: optsize
declare void @pr_rvec(%struct.__sFILE*, i32, i8*, float*, i32) #1

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #10

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #1

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #10

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
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
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !5, i64 0}
!18 = !{!19, !7, i64 0}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24}
!20 = !{!19, !7, i64 4}
!21 = !{!19, !7, i64 8}
!22 = !{!23, !7, i64 4}
!23 = !{!"", !15, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!24 = !{!4, !4, i64 0}
!25 = !{!26, !4, i64 0}
!26 = !{!"", !4, i64 0, !7, i64 8, !4, i64 16}
!27 = !{!26, !7, i64 8}
!28 = !{!7, !7, i64 0}
!29 = !{!26, !4, i64 16}
!30 = !{!31, !15, i64 0}
!31 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!32 = !{!19, !15, i64 16}
!33 = !{!31, !15, i64 8}
!34 = !{!19, !15, i64 20}
!35 = !{!19, !15, i64 12}
!36 = !{!19, !15, i64 24}
!37 = !{!31, !15, i64 12}
!38 = !{!39, !15, i64 368}
!39 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !15, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !15, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !15, i64 200, !15, i64 204, !7, i64 208, !15, i64 212, !15, i64 216, !7, i64 220, !15, i64 224, !15, i64 228, !15, i64 232, !7, i64 236, !15, i64 240, !15, i64 244, !7, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !7, i64 296, !15, i64 300, !15, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !15, i64 328, !7, i64 332, !15, i64 336, !15, i64 340, !7, i64 344, !15, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !40, i64 384, !5, i64 448, !5, i64 520}
!40 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!41 = !{!39, !15, i64 372}
!42 = !{!39, !15, i64 376}
!43 = !{!39, !15, i64 380}
!44 = !{!39, !7, i64 352}
!45 = !{!39, !7, i64 356}
!46 = !{!39, !7, i64 360}
!47 = !{!39, !7, i64 364}
!48 = !{!49, !7, i64 4}
!49 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!50 = !{!49, !7, i64 20}
!51 = !{!49, !7, i64 0}
!52 = !{!39, !15, i64 60}
!53 = !{!31, !15, i64 4}
!54 = !{!23, !4, i64 24}
!55 = !{!23, !4, i64 40}
!56 = !{!23, !4, i64 48}
!57 = !{!49, !7, i64 16}
