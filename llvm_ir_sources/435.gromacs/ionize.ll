; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_recoil = type { float, float, float, float }
%struct.t_element = type { i8*, i32, %struct.t_cross* }
%struct.t_cross = type { float, float, float, float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
@.str4 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c\00", align 1
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
@debug = external global %struct._IO_FILE*
@.str13 = private unnamed_addr constant [55 x i8] c"Integrated probability functions for theta incoherent\0A\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"%10f\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"  %10f\00", align 1
@stderr = external global %struct._IO_FILE*
@.str17 = private unnamed_addr constant [32 x i8] c"DECAY: Going to decay a k hole\0A\00", align 1
@.str18 = private unnamed_addr constant [48 x i8] c"DECAY: factor=%10g, dv = (%8.3f, %8.3f, %8.3f)\0A\00", align 1
@ionize.xvg = internal unnamed_addr global %struct._IO_FILE* null, align 8
@ionize.ion = internal unnamed_addr global %struct._IO_FILE* null, align 8
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

; Function Attrs: nounwind optsize uwtable
define void @dump_ca(%struct._IO_FILE* nocapture %fp, %struct.t_cross_atom* nocapture %ca, i32 %i, i8* nocapture %file, i32 %line) #0 {
entry:
  %z = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %0 = load i32* %z, align 4, !tbaa !0
  %n = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %1 = load i32* %n, align 4, !tbaa !0
  %k = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %2 = load i32* %k, align 4, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 %line, i32 %i, i32 %0, i32 %1, i32 %2) #7
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define %struct.t_cross_atom* @mk_cross_atom(%struct._IO_FILE* nocapture %log, %struct.t_mdatoms* nocapture %md, i8*** nocapture %atomname, i32 %Eindex) #0 {
entry:
  %elem_index = alloca [22 x i32], align 16
  %0 = bitcast [22 x i32]* %elem_index to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #2
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 88, i32 16, i1 false)
  %1 = getelementptr [22 x i32]* %elem_index, i64 0, i64 6
  store i32 1, i32* %1, align 8
  %2 = getelementptr [22 x i32]* %elem_index, i64 0, i64 7
  store i32 2, i32* %2, align 4
  %3 = getelementptr [22 x i32]* %elem_index, i64 0, i64 8
  store i32 3, i32* %3, align 16
  %4 = getelementptr [22 x i32]* %elem_index, i64 0, i64 16
  store i32 4, i32* %4, align 16
  %5 = getelementptr [22 x i32]* %elem_index, i64 0, i64 20
  store i32 5, i32* %5, align 16
  %6 = getelementptr [22 x i32]* %elem_index, i64 0, i64 21
  store i32 6, i32* %6, align 4
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str1, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %log)
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %log)
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %9 = load i32* %nr, align 4, !tbaa !0
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 196, i32 %9, i32 28) #7
  %10 = bitcast i8* %call2 to %struct.t_cross_atom*
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 197, i32 8, i32 4) #7
  %11 = bitcast i8* %call3 to i32*
  %12 = load i32* %nr, align 4, !tbaa !0
  %cmp174 = icmp sgt i32 %12, 0
  br i1 %cmp174, label %for.body.lr.ph, label %for.end88

for.body.lr.ph:                                   ; preds = %entry
  %idxprom36 = sext i32 %Eindex to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc86
  %indvars.iv182 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next183, %for.inc86 ]
  %arrayidx = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182
  %n = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 1
  store i32 0, i32* %n, align 4, !tbaa !0
  %k = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 2
  store i32 0, i32* %k, align 4, !tbaa !0
  %arrayidx8 = getelementptr inbounds i8*** %atomname, i64 %indvars.iv182
  %13 = load i8*** %arrayidx8, align 8, !tbaa !3
  %14 = load i8** %13, align 8, !tbaa !3
  br label %for.body12

for.cond9:                                        ; preds = %for.body12
  %15 = trunc i64 %indvars.iv.next180 to i32
  %cmp10 = icmp ult i32 %15, 7
  br i1 %cmp10, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.body, %for.cond9
  %indvars.iv179 = phi i64 [ 0, %for.body ], [ %indvars.iv.next180, %for.cond9 ]
  %j.0172 = phi i32 [ 0, %for.body ], [ %inc, %for.cond9 ]
  %name = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %indvars.iv179, i32 0
  %16 = load i8** %name, align 8, !tbaa !3
  %call18 = call i64 @strlen(i8* %16) #8
  %call19 = call i32 @strncmp(i8* %14, i8* %16, i64 %call18) #8
  %cmp20 = icmp eq i32 %call19, 0
  %indvars.iv.next180 = add i64 %indvars.iv179, 1
  %inc = add nsw i32 %j.0172, 1
  br i1 %cmp20, label %if.then, label %for.cond9

if.then:                                          ; preds = %for.body12
  %nel = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %indvars.iv179, i32 1
  %17 = load i32* %nel, align 8, !tbaa !0
  %z = getelementptr inbounds %struct.t_cross_atom* %arrayidx, i64 0, i32 0
  store i32 %17, i32* %z, align 4, !tbaa !0
  br label %for.end

for.end:                                          ; preds = %for.cond9, %if.then
  %conv171 = phi i64 [ %indvars.iv179, %if.then ], [ %indvars.iv.next180, %for.cond9 ]
  %j.0169 = phi i32 [ %j.0172, %if.then ], [ %inc, %for.cond9 ]
  %cmp27 = icmp eq i32 %j.0169, 7
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %for.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str6, i64 0, i64 0), i8* %14) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %for.end
  %arrayidx34 = getelementptr inbounds i32* %11, i64 %conv171
  %18 = load i32* %arrayidx34, align 4, !tbaa !0
  %inc35 = add nsw i32 %18, 1
  store i32 %inc35, i32* %arrayidx34, align 4, !tbaa !0
  %z39 = getelementptr inbounds %struct.t_cross_atom* %arrayidx, i64 0, i32 0
  %19 = load i32* %z39, align 4, !tbaa !0
  %idxprom40 = sext i32 %19 to i64
  %arrayidx41 = getelementptr inbounds [22 x i32]* %elem_index, i64 0, i64 %idxprom40
  %20 = load i32* %arrayidx41, align 4, !tbaa !0
  %idxprom42 = sext i32 %20 to i64
  %cross = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %idxprom42, i32 2
  %21 = load %struct.t_cross** %cross, align 8, !tbaa !3
  %photo = getelementptr inbounds %struct.t_cross* %21, i64 %idxprom36, i32 0
  %22 = load float* %photo, align 4, !tbaa !4
  %sigPh = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 4
  store float %22, float* %sigPh, align 4, !tbaa !4
  %incoh = getelementptr inbounds %struct.t_cross* %21, i64 %idxprom36, i32 2
  %23 = load float* %incoh, align 4, !tbaa !4
  %sigIn = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 5
  store float %23, float* %sigIn, align 4, !tbaa !4
  %Prob_K = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom40, i32 2
  %24 = load float* %Prob_K, align 8, !tbaa !4
  %fj = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 3
  store float %24, float* %fj, align 4, !tbaa !4
  switch i32 %19, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb71
    i32 8, label %sw.bb75
    i32 16, label %sw.bb79
    i32 20, label %sw.bb79
  ]

sw.bb:                                            ; preds = %if.end32
  %vAuger = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 6
  store float 0x3FECED9160000000, float* %vAuger, align 4, !tbaa !4
  br label %for.inc86

sw.bb71:                                          ; preds = %if.end32
  %vAuger74 = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 6
  store float 0x3FED70A3E0000000, float* %vAuger74, align 4, !tbaa !4
  br label %for.inc86

sw.bb75:                                          ; preds = %if.end32
  %vAuger78 = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 6
  store float 0x3FEDBA5E40000000, float* %vAuger78, align 4, !tbaa !4
  br label %for.inc86

sw.bb79:                                          ; preds = %if.end32, %if.end32
  %vAuger82 = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 6
  store float 1.000000e+00, float* %vAuger82, align 4, !tbaa !4
  br label %for.inc86

sw.default:                                       ; preds = %if.end32
  %vAuger85 = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 6
  store float -1.000000e+00, float* %vAuger85, align 4, !tbaa !4
  br label %for.inc86

for.inc86:                                        ; preds = %sw.bb, %sw.bb71, %sw.bb75, %sw.bb79, %sw.default
  %indvars.iv.next183 = add i64 %indvars.iv182, 1
  %25 = load i32* %nr, align 4, !tbaa !0
  %26 = trunc i64 %indvars.iv.next183 to i32
  %cmp = icmp slt i32 %26, %25
  br i1 %cmp, label %for.body, label %for.end88

for.end88:                                        ; preds = %for.inc86, %entry
  %.lcssa = phi i32 [ %12, %entry ], [ %25, %for.inc86 ]
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([76 x i8]* @.str7, i64 0, i64 0), i32 %.lcssa) #7
  br label %for.body95

for.body95:                                       ; preds = %for.inc108, %for.end88
  %indvars.iv = phi i64 [ 0, %for.end88 ], [ %indvars.iv.next, %for.inc108 ]
  %arrayidx97 = getelementptr inbounds i32* %11, i64 %indvars.iv
  %27 = load i32* %arrayidx97, align 4, !tbaa !0
  %cmp98 = icmp sgt i32 %27, 0
  br i1 %cmp98, label %if.then100, label %for.inc108

if.then100:                                       ; preds = %for.body95
  %name103 = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %indvars.iv, i32 0
  %28 = load i8** %name103, align 8, !tbaa !3
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i8* %28, i32 %27) #7
  br label %for.inc108

for.inc108:                                       ; preds = %for.body95, %if.then100
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 7
  br i1 %exitcond, label %for.end110, label %for.body95

for.end110:                                       ; preds = %for.inc108
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %log)
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 240, i8* %call3) #7
  call void @llvm.lifetime.end(i64 88, i8* %0) #2
  ret %struct.t_cross_atom* %10
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly uwtable
define i32 @number_K(%struct.t_cross_atom* nocapture %ca) #5 {
entry:
  %z = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %0 = load i32* %z, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %n = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %1 = load i32* %n, align 4, !tbaa !0
  %sub = sub nsw i32 %0, %1
  br label %return

if.else:                                          ; preds = %entry
  %k = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %2 = load i32* %k, align 4, !tbaa !0
  %sub2 = sub nsw i32 2, %2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %sub2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @number_L(%struct.t_cross_atom* nocapture %ca) #5 {
entry:
  %k = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %0 = load i32* %k, align 4, !tbaa !0
  %sub = add nsw i32 %0, -2
  %z = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %1 = load i32* %z, align 4, !tbaa !0
  %add = add nsw i32 %sub, %1
  %n = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %2 = load i32* %n, align 4, !tbaa !0
  %sub1 = sub i32 %add, %2
  ret i32 %sub1
}

; Function Attrs: nounwind optsize uwtable
define float @xray_cross_section(i32 %eColl, %struct.t_cross_atom* nocapture %ca) #0 {
entry:
  switch i32 %eColl, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
  ]

sw.bb:                                            ; preds = %entry
  %z.i = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %0 = load i32* %z.i, align 4, !tbaa !0
  %cmp.i = icmp slt i32 %0, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  %n.i = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %1 = load i32* %n.i, align 4, !tbaa !0
  %sub.i = sub nsw i32 %0, %1
  br label %number_K.exit

if.else.i:                                        ; preds = %sw.bb
  %k.i = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %2 = load i32* %k.i, align 4, !tbaa !0
  %sub2.i = sub nsw i32 2, %2
  br label %number_K.exit

number_K.exit:                                    ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %sub2.i, %if.else.i ]
  switch i32 %0, label %if.else7 [
    i32 1, label %if.then
    i32 2, label %if.then4
  ]

if.then:                                          ; preds = %number_K.exit
  %sigPh = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 4
  %3 = load float* %sigPh, align 4, !tbaa !4
  br label %sw.epilog

if.then4:                                         ; preds = %number_K.exit
  %sigPh5 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 4
  %4 = load float* %sigPh5, align 4, !tbaa !4
  %conv6 = fmul float %4, 5.000000e-01
  br label %sw.epilog

if.else7:                                         ; preds = %number_K.exit
  %k.i44 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %5 = load i32* %k.i44, align 4, !tbaa !0
  %n.i47 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %6 = load i32* %n.i47, align 4, !tbaa !0
  %sub.i45 = add i32 %0, -2
  %add.i = add i32 %sub.i45, %5
  %sub1.i = sub i32 %add.i, %6
  %conv8 = sitofp i32 %retval.0.i to double
  %mul9 = fmul double %conv8, 5.000000e-01
  %fj = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 3
  %7 = load float* %fj, align 4, !tbaa !4
  %conv10 = fpext float %7 to double
  %mul11 = fmul double %mul9, %conv10
  %div = sdiv i32 %sub1.i, %sub.i45
  %conv13 = sitofp i32 %div to float
  %sub15 = fsub float 1.000000e+00, %7
  %mul16 = fmul float %sub15, %conv13
  %conv17 = fpext float %mul16 to double
  %add = fadd double %mul11, %conv17
  %sigPh18 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 4
  %8 = load float* %sigPh18, align 4, !tbaa !4
  %conv19 = fpext float %8 to double
  %mul20 = fmul double %conv19, %add
  %conv21 = fptrunc double %mul20 to float
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %z24 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %9 = load i32* %z24, align 4, !tbaa !0
  %n = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %10 = load i32* %n, align 4, !tbaa !0
  %sub25 = sub nsw i32 %9, %10
  %conv26 = sitofp i32 %sub25 to float
  %sigIn = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 5
  %11 = load float* %sigIn, align 4, !tbaa !4
  %mul27 = fmul float %11, %conv26
  %conv29 = sitofp i32 %9 to float
  %div30 = fdiv float %mul27, %conv29
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %eColl) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.else7, %if.then4, %sw.default, %sw.bb23
  %c.0 = phi float [ 0.000000e+00, %sw.default ], [ %div30, %sw.bb23 ], [ %3, %if.then ], [ %conv6, %if.then4 ], [ %conv21, %if.else7 ]
  ret float %c.0
}

; Function Attrs: nounwind optsize uwtable
define float @prob_K(i32 %eColl, %struct.t_cross_atom* nocapture %ca) #0 {
entry:
  %z = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %0 = load i32* %z, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %1 = load i32* %n, align 4, !tbaa !0
  %cmp2 = icmp eq i32 %0, %1
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  switch i32 %eColl, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end
  %k = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %2 = load i32* %k, align 4, !tbaa !0
  %sub = add i32 %0, -2
  %add = sub i32 %sub, %1
  %sub5 = add i32 %add, %2
  %conv = sitofp i32 %sub5 to float
  %fj = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 3
  %3 = load float* %fj, align 4, !tbaa !4
  %sub6 = fsub float 1.000000e+00, %3
  %mul = fmul float %conv, %sub6
  %conv9 = sitofp i32 %sub to float
  %div = fdiv float %mul, %conv9
  %sub11 = sub nsw i32 2, %2
  %conv12 = sitofp i32 %sub11 to float
  %mul14 = fmul float %3, %conv12
  %conv17 = fmul float %mul14, 5.000000e-01
  %add18 = fadd float %div, %conv17
  %div19 = fdiv float %conv17, %add18
  br label %return

sw.bb20:                                          ; preds = %if.end
  %k21 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %4 = load i32* %k21, align 4, !tbaa !0
  %sub22 = sub nsw i32 2, %4
  %sub25 = sub nsw i32 %0, %1
  %div26 = sdiv i32 %sub22, %sub25
  %conv27 = sitofp i32 %div26 to float
  br label %return

sw.default:                                       ; preds = %if.end
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %eColl) #7
  br label %return

return:                                           ; preds = %sw.bb, %sw.bb20, %sw.default, %entry, %lor.lhs.false
  %retval.0 = phi float [ 0.000000e+00, %lor.lhs.false ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %sw.default ], [ %conv27, %sw.bb20 ], [ %div19, %sw.bb ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize uwtable
define double @myexp(double %x) #0 {
entry:
  %cmp = fcmp olt double %x, -7.000000e+01
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %call = tail call double @exp(double %x) #7
  br label %return

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi double [ %call, %if.else ], [ 0.000000e+00, %entry ]
  ret double %retval.0
}

; Function Attrs: nounwind optsize
declare double @exp(double) #1

; Function Attrs: nounwind optsize uwtable
define float @ptheta_incoh(i32 %Eindex, float %theta) #0 {
entry:
  %conv = fpext float %theta to double
  %idxprom = sext i32 %Eindex to i64
  %arrayidx1 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 7
  %0 = load double* %arrayidx1, align 8, !tbaa !5
  %sub = fsub double %conv, %0
  %arrayidx4 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 1
  %1 = load double* %arrayidx4, align 8, !tbaa !5
  %div = fdiv double %sub, %1
  %conv5 = fptrunc double %div to float
  %mul.i = fmul float %conv5, %conv5
  %conv6 = fpext float %mul.i to double
  %mul = fmul double %conv6, -5.000000e-01
  %cmp.i94 = fcmp olt double %mul, -7.000000e+01
  br i1 %cmp.i94, label %myexp.exit98, label %if.else.i96

if.else.i96:                                      ; preds = %entry
  %call.i95 = tail call double @exp(double %mul) #7
  br label %myexp.exit98

myexp.exit98:                                     ; preds = %entry, %if.else.i96
  %retval.0.i97 = phi double [ %call.i95, %if.else.i96 ], [ 0.000000e+00, %entry ]
  %sub8 = fadd float %theta, -1.800000e+02
  %conv9 = fpext float %sub8 to double
  %add = fadd double %conv9, %0
  %div16 = fdiv double %add, %1
  %conv17 = fptrunc double %div16 to float
  %mul.i99 = fmul float %conv17, %conv17
  %conv19 = fpext float %mul.i99 to double
  %mul20 = fmul double %conv19, -5.000000e-01
  %cmp.i106 = fcmp olt double %mul20, -7.000000e+01
  br i1 %cmp.i106, label %myexp.exit110, label %if.else.i108

if.else.i108:                                     ; preds = %myexp.exit98
  %call.i107 = tail call double @exp(double %mul20) #7
  br label %myexp.exit110

myexp.exit110:                                    ; preds = %myexp.exit98, %if.else.i108
  %retval.0.i109 = phi double [ %call.i107, %if.else.i108 ], [ 0.000000e+00, %myexp.exit98 ]
  %sub22 = fadd float %theta, -9.000000e+01
  %conv23 = fpext float %sub22 to double
  %arrayidx26 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 3
  %2 = load double* %arrayidx26, align 8, !tbaa !5
  %div27 = fdiv double %conv23, %2
  %conv28 = fptrunc double %div27 to float
  %mul.i111 = fmul float %conv28, %conv28
  %conv30 = fpext float %mul.i111 to double
  %mul31 = fmul double %conv30, -5.000000e-01
  %cmp.i113 = fcmp olt double %mul31, -7.000000e+01
  br i1 %cmp.i113, label %myexp.exit117, label %if.else.i115

if.else.i115:                                     ; preds = %myexp.exit110
  %call.i114 = tail call double @exp(double %mul31) #7
  br label %myexp.exit117

myexp.exit117:                                    ; preds = %myexp.exit110, %if.else.i115
  %retval.0.i116 = phi double [ %call.i114, %if.else.i115 ], [ 0.000000e+00, %myexp.exit110 ]
  %arrayidx36 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 6
  %3 = load double* %arrayidx36, align 16, !tbaa !5
  %sub37 = fsub double %conv, %3
  %arrayidx40 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 5
  %4 = load double* %arrayidx40, align 8, !tbaa !5
  %div41 = fdiv double %sub37, %4
  %conv42 = fptrunc double %div41 to float
  %mul.i112 = fmul float %conv42, %conv42
  %conv44 = fpext float %mul.i112 to double
  %mul45 = fmul double %conv44, -5.000000e-01
  %cmp.i101 = fcmp olt double %mul45, -7.000000e+01
  br i1 %cmp.i101, label %myexp.exit105, label %if.else.i103

if.else.i103:                                     ; preds = %myexp.exit117
  %call.i102 = tail call double @exp(double %mul45) #7
  br label %myexp.exit105

myexp.exit105:                                    ; preds = %myexp.exit117, %if.else.i103
  %retval.0.i104 = phi double [ %call.i102, %if.else.i103 ], [ 0.000000e+00, %myexp.exit117 ]
  %add52 = fadd double %conv9, %3
  %div56 = fdiv double %add52, %4
  %conv57 = fptrunc double %div56 to float
  %mul.i100 = fmul float %conv57, %conv57
  %conv59 = fpext float %mul.i100 to double
  %mul60 = fmul double %conv59, -5.000000e-01
  %cmp.i = fcmp olt double %mul60, -7.000000e+01
  br i1 %cmp.i, label %myexp.exit, label %if.else.i

if.else.i:                                        ; preds = %myexp.exit105
  %call.i = tail call double @exp(double %mul60) #7
  br label %myexp.exit

myexp.exit:                                       ; preds = %myexp.exit105, %if.else.i
  %retval.0.i = phi double [ %call.i, %if.else.i ], [ 0.000000e+00, %myexp.exit105 ]
  %arrayidx64 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 0
  %5 = load double* %arrayidx64, align 16, !tbaa !5
  %add65 = fadd double %retval.0.i97, %retval.0.i109
  %mul66 = fmul double %add65, %5
  %arrayidx69 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 2
  %6 = load double* %arrayidx69, align 16, !tbaa !5
  %mul70 = fmul double %retval.0.i116, %6
  %add71 = fadd double %mul66, %mul70
  %arrayidx74 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 4
  %7 = load double* %arrayidx74, align 16, !tbaa !5
  %add75 = fadd double %retval.0.i104, %retval.0.i
  %mul76 = fmul double %add75, %7
  %add77 = fadd double %add71, %mul76
  %conv78 = fptrunc double %add77 to float
  ret float %conv78
}

; Function Attrs: nounwind optsize uwtable
define float @rand_theta_incoh(i32 %Eindex, i32* %seed) #0 {
entry:
  %y = alloca [2 x float], align 4
  %.b = load i1* @rand_theta_incoh.bFirst, align 1
  br i1 %.b, label %if.end63, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 361, i32 6, i32 8) #7
  %0 = bitcast i8* %call to float**
  store float** %0, float*** @rand_theta_incoh.intp, align 8, !tbaa !3
  store i32 0, i32* @rand_theta_incoh.i, align 4, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %if.then, %for.inc31
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 363, i32 451, i32 4) #7
  %1 = bitcast i8* %call2 to float*
  %2 = load i32* @rand_theta_incoh.i, align 4, !tbaa !0
  %idxprom = sext i32 %2 to i64
  %3 = load float*** @rand_theta_incoh.intp, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds float** %3, i64 %idxprom
  store float* %1, float** %arrayidx, align 8, !tbaa !3
  %call3 = call float @ptheta_incoh(i32 %2, float 0.000000e+00) #9
  %4 = load i32* @rand_theta_incoh.cur, align 4, !tbaa !0
  %sub = sub nsw i32 1, %4
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds [2 x float]* %y, i64 0, i64 %idxprom4
  store float %call3, float* %arrayidx5, align 4, !tbaa !4
  store i32 1, i32* @rand_theta_incoh.j, align 4, !tbaa !0
  %5 = load i32* @rand_theta_incoh.i, align 4, !tbaa !0
  br label %for.body9

for.body9:                                        ; preds = %for.body, %for.body9
  %6 = phi i32 [ %5, %for.body ], [ %9, %for.body9 ]
  %storemerge108113 = phi i32 [ 1, %for.body ], [ %inc, %for.body9 ]
  %conv10 = sitofp i32 %storemerge108113 to float
  %mul = fmul float %conv10, 0x3FC99999A0000000
  %call11 = call float @ptheta_incoh(i32 %6, float %mul) #9
  %7 = load i32* @rand_theta_incoh.cur, align 4, !tbaa !0
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [2 x float]* %y, i64 0, i64 %idxprom12
  store float %call11, float* %arrayidx13, align 4, !tbaa !4
  %8 = load i32* @rand_theta_incoh.j, align 4, !tbaa !0
  %sub14 = add nsw i32 %8, -1
  %idxprom15 = sext i32 %sub14 to i64
  %9 = load i32* @rand_theta_incoh.i, align 4, !tbaa !0
  %idxprom16 = sext i32 %9 to i64
  %10 = load float*** @rand_theta_incoh.intp, align 8, !tbaa !3
  %arrayidx17 = getelementptr inbounds float** %10, i64 %idxprom16
  %11 = load float** %arrayidx17, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds float* %11, i64 %idxprom15
  %12 = load float* %arrayidx18, align 4, !tbaa !4
  %sub21 = sub nsw i32 1, %7
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds [2 x float]* %y, i64 0, i64 %idxprom22
  %13 = load float* %arrayidx23, align 4, !tbaa !4
  %add = fadd float %call11, %13
  %mul24 = fmul float %add, 0x3FC99999A0000000
  %add25 = fadd float %12, %mul24
  %idxprom26 = sext i32 %8 to i64
  %arrayidx29 = getelementptr inbounds float* %11, i64 %idxprom26
  store float %add25, float* %arrayidx29, align 4, !tbaa !4
  store i32 %sub21, i32* @rand_theta_incoh.cur, align 4, !tbaa !0
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @rand_theta_incoh.j, align 4, !tbaa !0
  %cmp7 = icmp slt i32 %inc, 451
  br i1 %cmp7, label %for.body9, label %for.inc31

for.inc31:                                        ; preds = %for.body9
  %inc32 = add nsw i32 %9, 1
  store i32 %inc32, i32* @rand_theta_incoh.i, align 4, !tbaa !0
  %cmp = icmp ult i32 %inc32, 6
  br i1 %cmp, label %for.body, label %for.end33

for.end33:                                        ; preds = %for.inc31
  %14 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool34 = icmp eq %struct._IO_FILE* %14, null
  br i1 %tobool34, label %if.end, label %if.then35

if.then35:                                        ; preds = %for.end33
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %14)
  store i32 0, i32* @rand_theta_incoh.j, align 4, !tbaa !0
  br label %for.body40

for.body40:                                       ; preds = %if.then35, %for.end58
  %storemerge106111 = phi i32 [ 0, %if.then35 ], [ %inc61, %for.end58 ]
  %16 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %conv41 = sitofp i32 %storemerge106111 to float
  %mul42 = fmul float %conv41, 0x3FC99999A0000000
  %conv43 = fpext float %mul42 to double
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([5 x i8]* @.str14, i64 0, i64 0), double %conv43) #7
  store i32 0, i32* @rand_theta_incoh.i, align 4, !tbaa !0
  %17 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  br label %for.body49

for.body49:                                       ; preds = %for.body40, %for.body49
  %18 = phi %struct._IO_FILE* [ %17, %for.body40 ], [ %24, %for.body49 ]
  %storemerge107110 = phi i32 [ 0, %for.body40 ], [ %inc57, %for.body49 ]
  %conv46 = sext i32 %storemerge107110 to i64
  %19 = load i32* @rand_theta_incoh.j, align 4, !tbaa !0
  %idxprom50 = sext i32 %19 to i64
  %20 = load float*** @rand_theta_incoh.intp, align 8, !tbaa !3
  %arrayidx52 = getelementptr inbounds float** %20, i64 %conv46
  %21 = load float** %arrayidx52, align 8, !tbaa !3
  %arrayidx53 = getelementptr inbounds float* %21, i64 %idxprom50
  %22 = load float* %arrayidx53, align 4, !tbaa !4
  %conv54 = fpext float %22 to double
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), double %conv54) #7
  %23 = load i32* @rand_theta_incoh.i, align 4, !tbaa !0
  %inc57 = add nsw i32 %23, 1
  store i32 %inc57, i32* @rand_theta_incoh.i, align 4, !tbaa !0
  %cmp47 = icmp ult i32 %inc57, 6
  %24 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  br i1 %cmp47, label %for.body49, label %for.end58

for.end58:                                        ; preds = %for.body49
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %24)
  %25 = load i32* @rand_theta_incoh.j, align 4, !tbaa !0
  %inc61 = add nsw i32 %25, 1
  store i32 %inc61, i32* @rand_theta_incoh.j, align 4, !tbaa !0
  %cmp38 = icmp slt i32 %inc61, 450
  br i1 %cmp38, label %for.body40, label %if.end

if.end:                                           ; preds = %for.end58, %for.end33
  store i1 true, i1* @rand_theta_incoh.bFirst, align 1
  br label %if.end63

if.end63:                                         ; preds = %entry, %if.end
  %call64 = call float @rando(i32* %seed) #7
  store i32 0, i32* @rand_theta_incoh.j, align 4, !tbaa !0
  %idxprom69 = sext i32 %Eindex to i64
  %26 = load float*** @rand_theta_incoh.intp, align 8, !tbaa !3
  %arrayidx70 = getelementptr inbounds float** %26, i64 %idxprom69
  %27 = load float** %arrayidx70, align 8, !tbaa !3
  br label %land.rhs

for.cond65:                                       ; preds = %land.rhs
  %28 = trunc i64 %indvars.iv.next to i32
  store i32 %28, i32* @rand_theta_incoh.j, align 4, !tbaa !0
  %cmp66 = icmp slt i32 %28, 450
  br i1 %cmp66, label %land.rhs, label %for.end77

land.rhs:                                         ; preds = %if.end63, %for.cond65
  %29 = phi i32 [ 0, %if.end63 ], [ %28, %for.cond65 ]
  %indvars.iv = phi i64 [ 0, %if.end63 ], [ %indvars.iv.next, %for.cond65 ]
  %arrayidx71 = getelementptr inbounds float* %27, i64 %indvars.iv
  %30 = load float* %arrayidx71, align 4, !tbaa !4
  %cmp72 = fcmp ogt float %call64, %30
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp72, label %for.cond65, label %for.end77

for.end77:                                        ; preds = %for.cond65, %land.rhs
  %31 = phi i32 [ %28, %for.cond65 ], [ %29, %land.rhs ]
  %sub78 = add nsw i32 %31, -1
  %conv79 = sitofp i32 %sub78 to float
  %idxprom81 = sext i32 %sub78 to i64
  %arrayidx84 = getelementptr inbounds float* %27, i64 %idxprom81
  %32 = load float* %arrayidx84, align 4, !tbaa !4
  %sub85 = fsub float %call64, %32
  %idxprom86 = sext i32 %31 to i64
  %arrayidx89 = getelementptr inbounds float* %27, i64 %idxprom86
  %33 = load float* %arrayidx89, align 4, !tbaa !4
  %sub95 = fsub float %33, %32
  %div = fdiv float %sub85, %sub95
  %add96 = fadd float %conv79, %div
  %mul97 = fmul float %add96, 0x3FC99999A0000000
  ret float %mul97
}

; Function Attrs: optsize
declare float @rando(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @rand_vector(float* nocapture %v, i32* %seed) #0 {
entry:
  %call = tail call float @rando(i32* %seed) #7
  %conv1 = fmul float %call, 1.800000e+02
  %call2 = tail call float @rando(i32* %seed) #7
  %conv5 = fmul float %call2, 3.600000e+02
  %conv.i = fpext float %conv5 to double
  %call.i = tail call double @cos(double %conv.i) #7
  %conv1.i = fpext float %conv1 to double
  %call2.i = tail call double @sin(double %conv1.i) #7
  %mul.i = fmul double %call.i, %call2.i
  %conv3.i = fptrunc double %mul.i to float
  store float %conv3.i, float* %v, align 4, !tbaa !4
  %call5.i = tail call double @sin(double %conv.i) #7
  %call7.i = tail call double @sin(double %conv1.i) #7
  %mul8.i = fmul double %call5.i, %call7.i
  %conv9.i = fptrunc double %mul8.i to float
  %arrayidx10.i = getelementptr inbounds float* %v, i64 1
  store float %conv9.i, float* %arrayidx10.i, align 4, !tbaa !4
  %call12.i = tail call double @cos(double %conv1.i) #7
  %conv13.i = fptrunc double %call12.i to float
  %arrayidx14.i = getelementptr inbounds float* %v, i64 2
  store float %conv13.i, float* %arrayidx14.i, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @electron_cross_section(%struct._IO_FILE* nocapture %fp, float* nocapture %v, float %mass, i32 %nelec) #0 {
entry:
  %conv = fpext float %mass to double
  %mul = fmul double %conv, 5.000000e-01
  %0 = load float* %v, align 4, !tbaa !4
  %mul.i = fmul float %0, %0
  %arrayidx2.i = getelementptr inbounds float* %v, i64 1
  %1 = load float* %arrayidx2.i, align 4, !tbaa !4
  %mul4.i = fmul float %1, %1
  %add.i = fadd float %mul.i, %mul4.i
  %arrayidx5.i = getelementptr inbounds float* %v, i64 2
  %2 = load float* %arrayidx5.i, align 4, !tbaa !4
  %mul7.i = fmul float %2, %2
  %add8.i = fadd float %add.i, %mul7.i
  %conv1 = fpext float %add8.i to double
  %mul2 = fmul double %mul, %conv1
  %conv3 = fptrunc double %mul2 to float
  %conv4 = sitofp i32 %nelec to float
  %div = fdiv float %conv3, 0x409484A900000000
  %conv9 = fpext float %conv4 to double
  %mul10 = fmul double %conv9, 0x3FA204BEBAEEAAAF
  %conv15 = fptrunc double %mul10 to float
  %conv16 = fpext float %div to double
  %call17 = tail call double @log(double %conv16) #7
  %conv18 = fptrunc double %call17 to float
  %add = fadd float %div, 1.000000e+00
  %add19 = fadd float %add, 1.000000e+00
  %div20 = fdiv float %conv15, %add19
  %conv21 = fpext float %div20 to double
  %conv24 = fpext float %conv18 to double
  %mul25 = fmul double %conv24, 5.000000e-01
  %mul.i52 = fmul float %div, %div
  %div27 = fdiv float 1.000000e+00, %mul.i52
  %sub = fsub float 1.000000e+00, %div27
  %conv28 = fpext float %sub to double
  %mul29 = fmul double %mul25, %conv28
  %div31 = fdiv float 1.000000e+00, %div
  %sub32 = fsub float 1.000000e+00, %div31
  %div34 = fdiv float %conv18, %add
  %sub35 = fsub float %sub32, %div34
  %conv37 = fpext float %sub35 to double
  %add38 = fadd double %mul29, %conv37
  %mul39 = fmul double %conv21, %add38
  %conv40 = fptrunc double %mul39 to float
  ret float %conv40
}

; Function Attrs: nounwind optsize
declare double @log(double) #1

; Function Attrs: nounwind optsize uwtable
define i32 @khole_decay(%struct._IO_FILE* nocapture %fp, %struct.t_cross_atom* nocapture %ca, [3 x float]* nocapture %x, [3 x float]* nocapture %v, i32 %ion, i32* %seed, float %dt) #0 {
entry:
  %dv = alloca [3 x float], align 4
  %vAuger = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 6
  %0 = load float* %vAuger, align 4, !tbaa !4
  %cmp = fcmp olt float %0, 0.000000e+00
  %z.i.phi.trans.insert = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %.pre = load i32* %z.i.phi.trans.insert, align 4, !tbaa !0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %idxprom = sext i32 %.pre to i64
  %tau = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom, i32 3
  %1 = load float* %tau, align 4, !tbaa !4
  %fabsf = call float @fabsf(float %1) #10
  %2 = fpext float %fabsf to double
  %cmp1 = fcmp olt double %2, 1.200000e-38
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %lor.lhs.false
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %n.i = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %4 = load i32* %n.i, align 4, !tbaa !0
  %k.i = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %5 = load i32* %k.i, align 4, !tbaa !0
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 451, i32 %ion, i32 %.pre, i32 %4, i32 %5) #7
  call void @exit(i32 1) #11
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call float @rando(i32* %seed) #7
  %6 = load i32* %z.i.phi.trans.insert, align 4, !tbaa !0
  %idxprom5 = sext i32 %6 to i64
  %tau7 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom5, i32 3
  %7 = load float* %tau7, align 4, !tbaa !4
  %div = fdiv float %dt, %7
  %cmp8 = fcmp olt float %call3, %div
  br i1 %cmp8, label %if.then10, label %return

if.then10:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %8, null
  br i1 %tobool, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then10
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str17, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %8)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then11
  %n = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1
  %10 = load i32* %n, align 4, !tbaa !0
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %n, align 4, !tbaa !0
  %k = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2
  %11 = load i32* %k, align 4, !tbaa !0
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %k, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds [3 x float]* %dv, i64 0, i64 0
  call void @rand_vector(float* %arraydecay, i32* %seed) #9
  %12 = load float* %vAuger, align 4, !tbaa !4
  %13 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool15 = icmp eq %struct._IO_FILE* %13, null
  br i1 %tobool15, label %if.end13.if.end25_crit_edge, label %if.then16

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  %.pre43 = load float* %arraydecay, align 4, !tbaa !4
  %arrayidx2.i.phi.trans.insert = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1
  %.pre44 = load float* %arrayidx2.i.phi.trans.insert, align 4, !tbaa !4
  %arrayidx5.i.phi.trans.insert = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2
  %.pre45 = load float* %arrayidx5.i.phi.trans.insert, align 4, !tbaa !4
  br label %if.end25

if.then16:                                        ; preds = %if.end13
  %conv17 = fpext float %12 to double
  %14 = load float* %arraydecay, align 4, !tbaa !4
  %conv19 = fpext float %14 to double
  %arrayidx20 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1
  %15 = load float* %arrayidx20, align 4, !tbaa !4
  %conv21 = fpext float %15 to double
  %arrayidx22 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2
  %16 = load float* %arrayidx22, align 4, !tbaa !4
  %conv23 = fpext float %16 to double
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([48 x i8]* @.str18, i64 0, i64 0), double %conv17, double %conv19, double %conv21, double %conv23) #7
  br label %if.end25

if.end25:                                         ; preds = %if.end13.if.end25_crit_edge, %if.then16
  %17 = phi float [ %.pre45, %if.end13.if.end25_crit_edge ], [ %16, %if.then16 ]
  %18 = phi float [ %.pre44, %if.end13.if.end25_crit_edge ], [ %15, %if.then16 ]
  %19 = phi float [ %.pre43, %if.end13.if.end25_crit_edge ], [ %14, %if.then16 ]
  %mul.i = fmul float %12, %19
  store float %mul.i, float* %arraydecay, align 4, !tbaa !4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1
  %mul3.i = fmul float %12, %18
  store float %mul3.i, float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2
  %mul6.i = fmul float %12, %17
  store float %mul6.i, float* %arrayidx5.i, align 4, !tbaa !4
  %idxprom28 = sext i32 %ion to i64
  %arraydecay30 = getelementptr inbounds [3 x float]* %v, i64 %idxprom28, i64 0
  %20 = load float* %arraydecay30, align 4, !tbaa !4
  %add.i = fadd float %20, %mul.i
  %arrayidx2.i41 = getelementptr inbounds [3 x float]* %v, i64 %idxprom28, i64 1
  %21 = load float* %arrayidx2.i41, align 4, !tbaa !4
  %add4.i = fadd float %21, %mul3.i
  %arrayidx5.i42 = getelementptr inbounds [3 x float]* %v, i64 %idxprom28, i64 2
  %22 = load float* %arrayidx5.i42, align 4, !tbaa !4
  %add7.i = fadd float %mul6.i, %22
  store float %add.i, float* %arraydecay30, align 4, !tbaa !4
  store float %add4.i, float* %arrayidx2.i41, align 4, !tbaa !4
  store float %add7.i, float* %arrayidx5.i42, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %if.end, %if.end25
  %retval.0 = phi i32 [ 1, %if.end25 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #6

; Function Attrs: nounwind optsize uwtable
define void @ionize(%struct._IO_FILE* nocapture %fp, %struct.t_mdatoms* nocapture %md, i8*** nocapture %atomname, float %t, %struct.t_inputrec* nocapture %ir, [3 x float]* nocapture %x, [3 x float]* nocapture %v, i32 %start, i32 %end, [3 x float]* nocapture %box, %struct.t_commrec* %cr) #0 {
entry:
  %pcoll = alloca [2 x float], align 4
  %dv = alloca [3 x float], align 4
  %ddv = alloca [3 x float], align 4
  %nbuf = alloca [2 x i32], align 4
  %.b = load i1* @ionize.bFirst, align 1
  br i1 %.b, label %if.end89, label %if.then

if.then:                                          ; preds = %entry
  %userreal1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76
  %0 = load float* %userreal1, align 4, !tbaa !4
  store float %0, float* @ionize.t0, align 4, !tbaa !4
  %userreal2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77
  %1 = load float* %userreal2, align 4, !tbaa !4
  store float %1, float* @ionize.nphot, align 4, !tbaa !4
  %userreal3 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78
  %2 = load float* %userreal3, align 4, !tbaa !4
  store float %2, float* @ionize.width, align 4, !tbaa !4
  %userreal4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79
  %3 = load float* %userreal4, align 4, !tbaa !4
  store float %3, float* @ionize.rho, align 4, !tbaa !4
  %userint1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72
  %4 = load i32* %userint1, align 4, !tbaa !0
  store i32 %4, i32* @ionize_seed, align 4, !tbaa !0
  %userint2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73
  %5 = load i32* %userint2, align 4, !tbaa !0
  store i32 %5, i32* @ionize.ephot, align 4, !tbaa !0
  %userint3 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74
  %6 = load i32* %userint3, align 4, !tbaa !0
  store i32 %6, i32* @ionize.mode, align 4, !tbaa !0
  %userint4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75
  %7 = load i32* %userint4, align 4, !tbaa !0
  %conv = sitofp i32 %7 to double
  %mul = fmul double %conv, 1.000000e-03
  %conv1 = fptrunc double %mul to float
  store float %conv1, float* @ionize.interval, align 4, !tbaa !4
  %cmp = fcmp ole float %2, 0.000000e+00
  %cmp3 = fcmp ole float %1, 0.000000e+00
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %conv6 = fpext float %2 to double
  %conv7 = fpext float %1 to double
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([100 x i8]* @.str24, i64 0, i64 0), double %conv6, double %conv7) #7
  %.pre799 = load i32* @ionize.mode, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then5
  %8 = phi i32 [ %6, %if.then ], [ %.pre799, %if.then5 ]
  %9 = icmp ugt i32 %8, 2
  br i1 %9, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str25, i64 0, i64 0), i32 2) #7
  %.pr = load i32* @ionize.mode, align 4, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then13
  %10 = phi i32 [ %8, %if.end ], [ %.pr, %if.then13 ]
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end14
  %11 = load float* @ionize.nphot, align 4, !tbaa !4
  %conv15 = fpext float %11 to double
  %12 = load float* @ionize.rho, align 4, !tbaa !4
  %div = fmul float %12, 5.000000e-01
  %mul.i = fmul float %div, %div
  %conv16 = fpext float %mul.i to double
  %mul17 = fmul double %conv16, 0x400921FB54442D18
  %div18 = fdiv double %conv15, %mul17
  %mul19 = fmul double %div18, 1.000000e-10
  %13 = load float* @ionize.width, align 4, !tbaa !4
  %conv21 = fpext float %13 to double
  %mul23 = fmul double %conv21, 0x40040D931FF62705
  %div24 = fdiv double %mul19, %mul23
  %conv25 = fptrunc double %div24 to float
  store float %conv25, float* @ionize.imax, align 4, !tbaa !4
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end14
  %14 = load float* @ionize.nphot, align 4, !tbaa !4
  %conv27 = fpext float %14 to double
  %15 = load float* @ionize.rho, align 4, !tbaa !4
  %div28 = fmul float %15, 5.000000e-01
  %mul.i723 = fmul float %div28, %div28
  %conv30 = fpext float %mul.i723 to double
  %mul31 = fmul double %conv30, 0x400921FB54442D18
  %div32 = fdiv double %conv27, %mul31
  %mul33 = fmul double %div32, 1.000000e-10
  %16 = load float* @ionize.width, align 4, !tbaa !4
  %conv35 = fpext float %16 to double
  %mul37 = fmul double %conv35, 0x40040D931FF62705
  %div38 = fdiv double %mul33, %mul37
  %conv39 = fptrunc double %div38 to float
  store float %conv39, float* @ionize.imax, align 4, !tbaa !4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end14, %sw.bb26, %sw.bb
  %17 = load i32* @ionize_seed, align 4, !tbaa !0
  %cmp40 = icmp eq i32 %17, 0
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %sw.epilog
  %call43 = call i32 @make_seed() #7
  store i32 %call43, i32* @ionize_seed, align 4, !tbaa !0
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %sw.epilog
  %18 = phi i32 [ %call43, %if.then42 ], [ %17, %sw.epilog ]
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %19 = load i32* %nnodes, align 4, !tbaa !0
  %cmp45 = icmp sgt i32 %19, 1
  br i1 %cmp45, label %for.cond.preheader, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end44
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %20 = load i32* %nthreads, align 4, !tbaa !0
  %cmp48 = icmp sgt i32 %20, 1
  br i1 %cmp48, label %for.cond.preheader, label %for.cond58.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false47, %if.end44
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %21 = load i32* %nodeid, align 4, !tbaa !0
  %cmp51776 = icmp sgt i32 %21, 0
  br i1 %cmp51776, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.0777 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %call53 = call float @rando(i32* @ionize_seed) #7
  %mul54 = fmul float %call53, 0x41E0000000000000
  %conv55 = fptosi float %mul54 to i32
  store i32 %conv55, i32* @ionize_seed, align 4, !tbaa !0
  %inc = add nsw i32 %i.0777, 1
  %22 = load i32* %nodeid, align 4, !tbaa !0
  %cmp51 = icmp slt i32 %inc, %22
  br i1 %cmp51, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %23 = phi i32 [ %18, %for.cond.preheader ], [ %conv55, %for.body ]
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([52 x i8]* @.str26, i64 0, i64 0), i32 %23) #7
  br label %for.cond58.preheader

for.cond58.preheader:                             ; preds = %lor.lhs.false47, %for.end
  store i32 0, i32* @ionize.Eindex, align 4, !tbaa !0
  %24 = load i32* @ionize.ephot, align 4, !tbaa !0
  br label %land.rhs

for.cond58:                                       ; preds = %land.rhs
  %25 = trunc i64 %indvars.iv.next796 to i32
  store i32 %25, i32* @ionize.Eindex, align 4, !tbaa !0
  %cmp60 = icmp ult i32 %25, 6
  br i1 %cmp60, label %land.rhs, label %for.end67

land.rhs:                                         ; preds = %for.cond58.preheader, %for.cond58
  %.pr738 = phi i32 [ 0, %for.cond58.preheader ], [ %25, %for.cond58 ]
  %indvars.iv795 = phi i64 [ 0, %for.cond58.preheader ], [ %indvars.iv.next796, %for.cond58 ]
  %storemerge775 = phi i32 [ 0, %for.cond58.preheader ], [ %inc66, %for.cond58 ]
  %arrayidx = getelementptr inbounds [6 x i32]* @Energies, i64 0, i64 %indvars.iv795
  %26 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp62 = icmp eq i32 %26, %24
  %indvars.iv.next796 = add i64 %indvars.iv795, 1
  %inc66 = add nsw i32 %storemerge775, 1
  br i1 %cmp62, label %if.end72, label %for.cond58

for.end67:                                        ; preds = %for.cond58
  %cmp69 = icmp eq i32 %inc66, 6
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %for.end67
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str27, i64 0, i64 0), i32 %24) #7
  %.pre801 = load i32* @ionize.Eindex, align 4, !tbaa !0
  br label %if.end72

if.end72:                                         ; preds = %land.rhs, %if.then71, %for.end67
  %27 = phi i32 [ %.pre801, %if.then71 ], [ %25, %for.end67 ], [ %.pr738, %land.rhs ]
  %call73 = call %struct.t_cross_atom* @mk_cross_atom(%struct._IO_FILE* %fp, %struct.t_mdatoms* %md, i8*** %atomname, i32 %27) #9
  store %struct.t_cross_atom* %call73, %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !3
  store i32 0, i32* @ionize.dq_tot, align 4, !tbaa !0
  store i32 0, i32* @ionize.nkd_tot, align 4, !tbaa !0
  %call74 = call %struct._IO_FILE* @xvgropen(i8* getelementptr inbounds ([11 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0)) #7
  store %struct._IO_FILE* %call74, %struct._IO_FILE** @ionize.xvg, align 8, !tbaa !3
  call void @xvgr_legend(%struct._IO_FILE* %call74, i32 5, i8** getelementptr inbounds ([5 x i8*]* @ionize.leg, i64 0, i64 0)) #7
  %call75 = call %struct._IO_FILE* @ffopen(i8* getelementptr inbounds ([11 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str33, i64 0, i64 0)) #7
  store %struct._IO_FILE* %call75, %struct._IO_FILE** @ionize.ion, align 8, !tbaa !3
  %28 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str34, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %fp)
  %29 = load float* @ionize.imax, align 4, !tbaa !4
  %conv77 = fpext float %29 to double
  %30 = load float* @ionize.t0, align 4, !tbaa !4
  %conv78 = fpext float %30 to double
  %31 = load float* @ionize.width, align 4, !tbaa !4
  %conv79 = fpext float %31 to double
  %32 = load i32* @ionize_seed, align 4, !tbaa !0
  %33 = load float* @ionize.nphot, align 4, !tbaa !4
  %conv80 = fpext float %33 to double
  %34 = load float* @ionize.rho, align 4, !tbaa !4
  %conv81 = fpext float %34 to double
  %35 = load i32* @ionize.ephot, align 4, !tbaa !0
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([102 x i8]* @.str35, i64 0, i64 0), double %conv77, double %conv78, double %conv79, i32 %32, double %conv80, double %conv81, i32 %35) #7
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([99 x i8]* @.str36, i64 0, i64 0), double 5.120000e+02, double 9.400000e+05, double 0x41124C41D4FDF3B6) #7
  %36 = load float* @ionize.interval, align 4, !tbaa !4
  %conv84 = fpext float %36 to double
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str37, i64 0, i64 0), double %conv84) #7
  %37 = load i32* @ionize.Eindex, align 4, !tbaa !0
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str38, i64 0, i64 0), i32 %37) #7
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([45 x i8]* @.str39, i64 0, i64 0), i32 %start, i32 %end) #7
  %call88 = call i32 @fflush(%struct._IO_FILE* %fp) #7
  store i1 true, i1* @ionize.bFirst, align 1
  br label %if.end89

if.end89:                                         ; preds = %entry, %if.end72
  %38 = load float* @ionize.t0, align 4, !tbaa !4
  %39 = load float* @ionize.interval, align 4, !tbaa !4
  %cmp90 = fcmp ogt float %39, 0.000000e+00
  br i1 %cmp90, label %while.cond.preheader, label %if.end100

while.cond.preheader:                             ; preds = %if.end89
  %conv93 = fpext float %t to double
  %conv94767 = fpext float %38 to double
  %conv95768 = fpext float %39 to double
  %mul96769 = fmul double %conv95768, 5.000000e-01
  %add770 = fadd double %conv94767, %mul96769
  %cmp97771 = fcmp ogt double %conv93, %add770
  br i1 %cmp97771, label %while.body, label %if.end100

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %tmax.0772 = phi float [ %add99, %while.body ], [ %38, %while.cond.preheader ]
  %add99 = fadd float %tmax.0772, %39
  %conv94 = fpext float %add99 to double
  %add = fadd double %conv94, %mul96769
  %cmp97 = fcmp ogt double %conv93, %add
  br i1 %cmp97, label %while.body, label %if.end100

if.end100:                                        ; preds = %while.cond.preheader, %while.body, %if.end89
  %tmax.1 = phi float [ %38, %if.end89 ], [ %38, %while.cond.preheader ], [ %add99, %while.body ]
  %40 = load float* @ionize.imax, align 4, !tbaa !4
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %41 = load float* %delta_t, align 4, !tbaa !4
  %mul101 = fmul float %40, %41
  %conv102 = fpext float %mul101 to double
  %sub = fsub float %t, %tmax.1
  %42 = load float* @ionize.width, align 4, !tbaa !4
  %div103 = fdiv float %sub, %42
  %mul.i724 = fmul float %div103, %div103
  %conv105 = fpext float %mul.i724 to double
  %mul106 = fmul double %conv105, -5.000000e-01
  %call107 = call double @exp(double %mul106) #7
  %mul108 = fmul double %conv102, %call107
  %conv109 = fptrunc double %mul108 to float
  %arrayidx111 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %43 = load float* %arrayidx111, align 4, !tbaa !4
  %conv114 = fmul float %43, 5.000000e-01
  %arrayidx116 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %44 = load float* %arrayidx116, align 4, !tbaa !4
  %conv119 = fmul float %44, 5.000000e-01
  %45 = load float* @ionize.rho, align 4, !tbaa !4
  %mul.i726 = fmul float %45, %45
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %46 = load i32* %nr, align 4, !tbaa !0
  %call121 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 585, i32 %46, i32 4) #7
  %47 = bitcast i8* %call121 to i32*
  %48 = load i32* %nr, align 4, !tbaa !0
  %call123 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 586, i32 %48, i32 4) #7
  %49 = bitcast i8* %call123 to i32*
  %50 = load i32* %nr, align 4, !tbaa !0
  %call125 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 587, i32 %50, i32 4) #7
  %51 = bitcast i8* %call125 to i32*
  %cmp127758 = icmp slt i32 %start, %end
  br i1 %cmp127758, label %for.cond130.preheader.lr.ph, label %for.end491

for.cond130.preheader.lr.ph:                      ; preds = %if.end100
  %arrayidx143 = getelementptr inbounds [2 x float]* %pcoll, i64 0, i64 0
  %arrayidx145 = getelementptr inbounds [2 x float]* %pcoll, i64 0, i64 1
  %conv154 = fpext float %t to double
  %arraydecay = getelementptr inbounds [3 x float]* %dv, i64 0, i64 0
  %arrayidx1.i = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1
  %arrayidx2.i = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %arraydecay297 = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 0
  %arrayidx10.i = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 1
  %arrayidx14.i = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 2
  %chargeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  %chargeB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7
  %52 = sext i32 %start to i64
  br label %for.cond130.preheader

for.cond130.preheader:                            ; preds = %for.cond130.preheader.lr.ph, %for.inc489
  %indvars.iv792 = phi i64 [ %52, %for.cond130.preheader.lr.ph ], [ %indvars.iv.next793, %for.inc489 ]
  %E_lost.0764 = phi float [ 0.000000e+00, %for.cond130.preheader.lr.ph ], [ %E_lost.3, %for.inc489 ]
  %nkdecay.0761 = phi i32 [ 0, %for.cond130.preheader.lr.ph ], [ %nkdecay.1.lcssa, %for.inc489 ]
  %dq.0759 = phi i32 [ 0, %for.cond130.preheader.lr.ph ], [ %dq.3, %for.inc489 ]
  br label %for.body133

for.body133:                                      ; preds = %for.body133, %for.cond130.preheader
  %indvars.iv781 = phi i64 [ 0, %for.cond130.preheader ], [ %indvars.iv.next782, %for.body133 ]
  %53 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !3
  %arrayidx135 = getelementptr inbounds %struct.t_cross_atom* %53, i64 %indvars.iv792
  %54 = trunc i64 %indvars.iv781 to i32
  %call136 = call float @xray_cross_section(i32 %54, %struct.t_cross_atom* %arrayidx135) #9
  %mul137 = fmul float %conv109, %call136
  %arrayidx139 = getelementptr inbounds [2 x float]* %pcoll, i64 0, i64 %indvars.iv781
  store float %mul137, float* %arrayidx139, align 4, !tbaa !4
  %indvars.iv.next782 = add i64 %indvars.iv781, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next782 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end142, label %for.body133

for.end142:                                       ; preds = %for.body133
  %55 = load float* %arrayidx143, align 4, !tbaa !4
  %sub144 = fsub float 1.000000e+00, %55
  %56 = load float* %arrayidx145, align 4, !tbaa !4
  %sub146 = fsub float 1.000000e+00, %56
  %mul147 = fmul float %sub144, %sub146
  %sub148 = fsub float 1.000000e+00, %mul147
  %57 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool149 = icmp ne %struct._IO_FILE* %57, null
  %58 = trunc i64 %indvars.iv792 to i32
  %cmp150 = icmp eq i32 %58, 0
  %or.cond715 = and i1 %tobool149, %cmp150
  br i1 %or.cond715, label %if.then152, label %if.end156

if.then152:                                       ; preds = %for.end142
  %conv153 = fpext float %sub148 to double
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0), double %conv153, double %conv154) #7
  br label %if.end156

if.end156:                                        ; preds = %for.end142, %if.then152
  %59 = load i32* @ionize.mode, align 4, !tbaa !0
  switch i32 %59, label %sw.default [
    i32 0, label %sw.bb157
    i32 1, label %if.end456
  ]

sw.bb157:                                         ; preds = %if.end156
  %call158 = call float @rando(i32* @ionize_seed) #7
  %cmp159 = fcmp olt float %call158, %sub148
  br i1 %cmp159, label %land.lhs.true161, label %if.end456

land.lhs.true161:                                 ; preds = %sw.bb157
  %60 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !3
  %n = getelementptr inbounds %struct.t_cross_atom* %60, i64 %indvars.iv792, i32 1
  %61 = load i32* %n, align 4, !tbaa !0
  %z = getelementptr inbounds %struct.t_cross_atom* %60, i64 %indvars.iv792, i32 0
  %62 = load i32* %z, align 4, !tbaa !0
  %cmp166 = icmp slt i32 %61, %62
  br i1 %cmp166, label %land.rhs168, label %if.end456

land.rhs168:                                      ; preds = %land.lhs.true161
  %arrayidx171 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv792, i64 0
  %63 = load float* %arrayidx171, align 4, !tbaa !4
  %sub172 = fsub float %63, %conv114
  %mul.i729 = fmul float %sub172, %sub172
  %arrayidx176 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv792, i64 1
  %64 = load float* %arrayidx176, align 4, !tbaa !4
  %sub177 = fsub float %64, %conv119
  %mul.i730 = fmul float %sub177, %sub177
  %add179 = fadd float %mul.i729, %mul.i730
  %cmp180 = fcmp olt float %add179, %mul.i726
  br i1 %cmp180, label %if.then186, label %if.end456

sw.default:                                       ; preds = %if.end156
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([41 x i8]* @.str44, i64 0, i64 0), i32 %59, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 614) #7
  br label %if.end456

if.then186:                                       ; preds = %land.rhs168
  store float 0.000000e+00, float* %arraydecay, align 4, !tbaa !4
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !4
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !4
  %add190 = fadd float %55, %56
  %div191 = fdiv float %55, %add190
  %call192 = call float @rando(i32* @ionize_seed) #7
  %cmp193 = fcmp olt float %call192, %div191
  %65 = zext i1 %cmp193 to i32
  %. = xor i32 %65, 1
  %66 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !3
  %z.i731 = getelementptr inbounds %struct.t_cross_atom* %66, i64 %indvars.iv792, i32 0
  %67 = load i32* %z.i731, align 4, !tbaa !0
  %cmp.i = icmp slt i32 %67, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then186
  %n.i732 = getelementptr inbounds %struct.t_cross_atom* %66, i64 %indvars.iv792, i32 1
  %68 = load i32* %n.i732, align 4, !tbaa !0
  %sub.i = sub nsw i32 %67, %68
  %k.i734.phi.trans.insert = getelementptr inbounds %struct.t_cross_atom* %66, i64 %indvars.iv792, i32 2
  %.pre = load i32* %k.i734.phi.trans.insert, align 4, !tbaa !0
  br label %number_K.exit

if.else.i:                                        ; preds = %if.then186
  %k.i733 = getelementptr inbounds %struct.t_cross_atom* %66, i64 %indvars.iv792, i32 2
  %69 = load i32* %k.i733, align 4, !tbaa !0
  %sub2.i = sub nsw i32 2, %69
  %n.i737.phi.trans.insert = getelementptr inbounds %struct.t_cross_atom* %66, i64 %indvars.iv792, i32 1
  %.pre797 = load i32* %n.i737.phi.trans.insert, align 4, !tbaa !0
  br label %number_K.exit

number_K.exit:                                    ; preds = %if.then.i, %if.else.i
  %70 = phi i32 [ %68, %if.then.i ], [ %.pre797, %if.else.i ]
  %71 = phi i32 [ %.pre, %if.then.i ], [ %69, %if.else.i ]
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %sub2.i, %if.else.i ]
  %sub.i735 = add nsw i32 %71, -2
  %add.i = add nsw i32 %sub.i735, %67
  %sub1.i = sub i32 %add.i, %70
  %cmp203 = icmp eq i32 %retval.0.i, 0
  br i1 %cmp203, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %number_K.exit
  %cmp205 = icmp sgt i32 %sub1.i, 0
  br i1 %cmp205, label %land.rhs207, label %lor.end

land.rhs207:                                      ; preds = %lor.rhs
  %call208 = call float @rando(i32* @ionize_seed) #7
  %72 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !3
  %arrayidx210 = getelementptr inbounds %struct.t_cross_atom* %72, i64 %indvars.iv792
  %call211 = call float @prob_K(i32 %., %struct.t_cross_atom* %arrayidx210) #9
  %cmp212 = fcmp ogt float %call208, %call211
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs207, %number_K.exit
  %73 = phi i1 [ true, %number_K.exit ], [ false, %lor.rhs ], [ %cmp212, %land.rhs207 ]
  br i1 %cmp193, label %sw.bb216, label %sw.bb316

sw.bb216:                                         ; preds = %lor.end
  %call217 = call float @gauss(float 7.000000e+01, float 2.600000e+01, i32* @ionize_seed) #7
  %conv218 = fpext float %call217 to double
  %mul219 = fmul double %conv218, 0x3F91DF46A2529D39
  %conv220 = fptrunc double %mul219 to float
  %call221 = call float @rando(i32* @ionize_seed) #7
  %conv222 = fpext float %call221 to double
  %mul223 = fmul double %conv222, 0x401921FB54442D18
  %conv224 = fptrunc double %mul223 to float
  %74 = load i32* @ionize.ephot, align 4, !tbaa !0
  %conv227 = sitofp i32 %74 to float
  %75 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !3
  %z230 = getelementptr inbounds %struct.t_cross_atom* %75, i64 %indvars.iv792, i32 0
  %76 = load i32* %z230, align 4, !tbaa !0
  %idxprom231 = sext i32 %76 to i64
  br i1 %73, label %if.then226, label %if.else240

if.then226:                                       ; preds = %sw.bb216
  %E_L = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom231, i32 1
  %77 = load float* %E_L, align 4, !tbaa !4
  %n235 = getelementptr inbounds %struct.t_cross_atom* %75, i64 %indvars.iv792, i32 1
  %78 = load i32* %n235, align 4, !tbaa !0
  %add236 = add nsw i32 %78, 1
  %conv237 = sitofp i32 %add236 to float
  %mul238 = fmul float %77, %conv237
  br label %if.end258

if.else240:                                       ; preds = %sw.bb216
  %E_K = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom231, i32 0
  %79 = load float* %E_K, align 16, !tbaa !4
  %cmp251 = icmp sgt i32 %76, 2
  %cmp254 = icmp sgt i32 %sub1.i, 0
  %or.cond719 = and i1 %cmp251, %cmp254
  %.721 = zext i1 %or.cond719 to i32
  br label %if.end258

if.end258:                                        ; preds = %if.else240, %if.then226
  %bKHole.0 = phi i32 [ 0, %if.then226 ], [ %.721, %if.else240 ]
  %mul238.pn = phi float [ %mul238, %if.then226 ], [ %79, %if.else240 ]
  %E_lost.1 = fsub float %conv227, %mul238.pn
  %80 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool259 = icmp eq %struct._IO_FILE* %80, null
  br i1 %tobool259, label %if.end280, label %cond.false

cond.false:                                       ; preds = %if.end258
  %idxprom266 = zext i1 %73 to i64
  %arrayidx267 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom266
  %81 = load i8** %arrayidx267, align 8, !tbaa !3
  %idxprom275711 = zext i32 %bKHole.0 to i64
  %arrayidx276 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom275711
  %82 = load i8** %arrayidx276, align 8, !tbaa !3
  %call279 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([48 x i8]* @.str45, i64 0, i64 0), i32 %58, i32 %retval.0.i, i32 %sub1.i, i8* %81, i8* %82) #7
  br label %if.end280

if.end280:                                        ; preds = %if.end258, %cond.false
  %cmp281 = fcmp olt float %E_lost.1, 0.000000e+00
  br i1 %cmp281, label %if.end424, label %if.else284

if.else284:                                       ; preds = %if.end280
  %83 = load float** %massT, align 8, !tbaa !3
  %arrayidx286 = getelementptr inbounds float* %83, i64 %indvars.iv792
  %84 = load float* %arrayidx286, align 4, !tbaa !4
  %conv287 = fpext float %84 to double
  %mul288 = fmul double %conv287, 9.400000e+05
  %div289 = fdiv double 5.120000e+02, %mul288
  %mul290 = fmul float %E_lost.1, 2.000000e+00
  %conv291 = fpext float %mul290 to double
  %div292 = fmul double %conv291, 1.953125e-03
  %call293 = call double @sqrt(double %div292) #7
  %mul294 = fmul double %call293, 0x41124C41D4FDF3B6
  %mul295 = fmul double %div289, %mul294
  %conv296 = fptrunc double %mul295 to float
  %conv.i = fpext float %conv224 to double
  %call.i727 = call double @cos(double %conv.i) #7
  %conv1.i = fpext float %conv220 to double
  %call2.i = call double @sin(double %conv1.i) #7
  %mul.i728 = fmul double %call.i727, %call2.i
  %conv3.i = fptrunc double %mul.i728 to float
  store float %conv3.i, float* %arraydecay297, align 4, !tbaa !4
  %call5.i = call double @sin(double %conv.i) #7
  %call7.i = call double @sin(double %conv1.i) #7
  %mul8.i = fmul double %call5.i, %call7.i
  %conv9.i = fptrunc double %mul8.i to float
  store float %conv9.i, float* %arrayidx10.i, align 4, !tbaa !4
  %call12.i = call double @cos(double %conv1.i) #7
  %conv13.i = fptrunc double %call12.i to float
  store float %conv13.i, float* %arrayidx14.i, align 4, !tbaa !4
  br label %for.body301

for.body301:                                      ; preds = %for.body301.for.body301_crit_edge, %if.else284
  %85 = phi float [ %conv3.i, %if.else284 ], [ %.pre803, %for.body301.for.body301_crit_edge ]
  %indvars.iv783 = phi i64 [ 0, %if.else284 ], [ %indvars.iv.next784, %for.body301.for.body301_crit_edge ]
  %mul304 = fmul float %conv296, %85
  %arrayidx306 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 %indvars.iv783
  %86 = load float* %arrayidx306, align 4, !tbaa !4
  %sub307 = fsub float %86, %mul304
  store float %sub307, float* %arrayidx306, align 4, !tbaa !4
  %indvars.iv.next784 = add i64 %indvars.iv783, 1
  %lftr.wideiv785 = trunc i64 %indvars.iv.next784 to i32
  %exitcond786 = icmp eq i32 %lftr.wideiv785, 3
  br i1 %exitcond786, label %for.end310, label %for.body301.for.body301_crit_edge

for.body301.for.body301_crit_edge:                ; preds = %for.body301
  %arrayidx303.phi.trans.insert = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 %indvars.iv.next784
  %.pre803 = load float* %arrayidx303.phi.trans.insert, align 4, !tbaa !4
  br label %for.body301

for.end310:                                       ; preds = %for.body301
  %87 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool311 = icmp eq %struct._IO_FILE* %87, null
  br i1 %tobool311, label %if.then387, label %if.then312

if.then312:                                       ; preds = %for.end310
  call void @pr_rvec(%struct._IO_FILE* %87, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0), float* %arraydecay, i32 3) #7
  br label %if.then387

sw.bb316:                                         ; preds = %lor.end
  %88 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !3
  %arrayidx321 = getelementptr inbounds %struct.t_cross_atom* %88, i64 %indvars.iv792
  br i1 %73, label %if.then319, label %if.else332

if.then319:                                       ; preds = %sw.bb316
  %n322 = getelementptr inbounds %struct.t_cross_atom* %88, i64 %indvars.iv792, i32 1
  %89 = load i32* %n322, align 4, !tbaa !0
  %add323 = add nsw i32 %89, 1
  %conv324 = sitofp i32 %add323 to float
  %z327 = getelementptr inbounds %struct.t_cross_atom* %arrayidx321, i64 0, i32 0
  %90 = load i32* %z327, align 4, !tbaa !0
  %idxprom328 = sext i32 %90 to i64
  %E_L330 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom328, i32 1
  %91 = load float* %E_L330, align 4, !tbaa !4
  %mul331 = fmul float %conv324, %91
  br label %if.end349

if.else332:                                       ; preds = %sw.bb316
  %z335 = getelementptr inbounds %struct.t_cross_atom* %arrayidx321, i64 0, i32 0
  %92 = load i32* %z335, align 4, !tbaa !0
  %idxprom336 = sext i32 %92 to i64
  %E_K338 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom336, i32 0
  %93 = load float* %E_K338, align 16, !tbaa !4
  %cmp342 = icmp sgt i32 %92, 2
  %cmp345 = icmp sgt i32 %sub1.i, 0
  %or.cond720 = and i1 %cmp342, %cmp345
  br label %if.end349

if.end349:                                        ; preds = %if.else332, %if.then319
  %bKHole.1 = phi i1 [ false, %if.then319 ], [ %or.cond720, %if.else332 ]
  %Ebind.0 = phi float [ %mul331, %if.then319 ], [ %93, %if.else332 ]
  %94 = load i32* @ionize.Eindex, align 4, !tbaa !0
  %call350 = call float @rand_theta_incoh(i32 %94, i32* @ionize_seed) #9
  %conv351 = fpext float %call350 to double
  %mul352 = fmul double %conv351, 0x3F91DF46A2529D39
  %conv353 = fptrunc double %mul352 to float
  %95 = load i32* @ionize.ephot, align 4, !tbaa !0
  %conv354 = sitofp i32 %95 to float
  %mul.i725 = fmul float %conv354, %conv354
  %div356 = fmul float %mul.i725, 1.953125e-03
  %conv357 = fpext float %div356 to double
  %mul358 = fmul float %conv353, 2.000000e+00
  %conv359 = fpext float %mul358 to double
  %call360 = call double @cos(double %conv359) #7
  %sub361 = fsub double 1.000000e+00, %call360
  %mul362 = fmul double %sub361, %conv357
  %conv363 = fptrunc double %mul362 to float
  %cmp364 = fcmp ole float %Ebind.0, %conv363
  %cmp364. = and i1 %bKHole.1, %cmp364
  %land.ext370 = zext i1 %cmp364. to i32
  %96 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool371 = icmp eq %struct._IO_FILE* %96, null
  br i1 %tobool371, label %sw.epilog385, label %if.end376

if.end376:                                        ; preds = %if.end349
  %conv373 = fpext float %Ebind.0 to double
  %conv374 = fpext float %conv363 to double
  %call375 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([34 x i8]* @.str48, i64 0, i64 0), double %conv373, double %conv374) #7
  %.pre798 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool377 = xor i1 %cmp364, true
  %tobool379 = icmp ne %struct._IO_FILE* %.pre798, null
  %or.cond566 = and i1 %tobool379, %tobool377
  br i1 %or.cond566, label %if.then380, label %sw.epilog385

if.then380:                                       ; preds = %if.end376
  call void @pr_rvec(%struct._IO_FILE* %.pre798, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str49, i64 0, i64 0), float* %arraydecay, i32 3) #7
  br label %sw.epilog385

sw.epilog385:                                     ; preds = %if.end349, %if.end376, %if.then380
  br i1 %cmp364, label %if.then387, label %if.end424

if.then387:                                       ; preds = %if.then312, %for.end310, %sw.epilog385
  %E_lost.2744 = phi float [ %E_lost.0764, %sw.epilog385 ], [ %E_lost.1, %for.end310 ], [ %E_lost.1, %if.then312 ]
  %bKHole.2741 = phi i32 [ %land.ext370, %sw.epilog385 ], [ %bKHole.0, %for.end310 ], [ %bKHole.0, %if.then312 ]
  %97 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !3
  %n390 = getelementptr inbounds %struct.t_cross_atom* %97, i64 %indvars.iv792, i32 1
  %98 = load i32* %n390, align 4, !tbaa !0
  %z393 = getelementptr inbounds %struct.t_cross_atom* %97, i64 %indvars.iv792, i32 0
  %99 = load i32* %z393, align 4, !tbaa !0
  %cmp394 = icmp slt i32 %98, %99
  br i1 %cmp394, label %if.then396, label %if.end412

if.then396:                                       ; preds = %if.then387
  %100 = load float** %chargeA, align 8, !tbaa !3
  %arrayidx398 = getelementptr inbounds float* %100, i64 %indvars.iv792
  %101 = load float* %arrayidx398, align 4, !tbaa !4
  %conv401 = fadd float %101, 1.000000e+00
  store float %conv401, float* %arrayidx398, align 4, !tbaa !4
  %102 = load float** %chargeB, align 8, !tbaa !3
  %arrayidx403 = getelementptr inbounds float* %102, i64 %indvars.iv792
  %103 = load float* %arrayidx403, align 4, !tbaa !4
  %conv406 = fadd float %103, 1.000000e+00
  store float %conv406, float* %arrayidx403, align 4, !tbaa !4
  %inc410 = add nsw i32 %98, 1
  store i32 %inc410, i32* %n390, align 4, !tbaa !0
  %inc411 = add nsw i32 %dq.0759, 1
  br label %if.end412

if.end412:                                        ; preds = %if.then387, %if.then396
  %dq.1 = phi i32 [ %inc411, %if.then396 ], [ %dq.0759, %if.then387 ]
  %104 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool413 = icmp eq %struct._IO_FILE* %104, null
  br i1 %tobool413, label %if.end424, label %if.then414

if.then414:                                       ; preds = %if.end412
  %105 = load float* %arraydecay, align 4, !tbaa !4
  %conv416 = fpext float %105 to double
  %106 = load float* %arrayidx1.i, align 4, !tbaa !4
  %conv418 = fpext float %106 to double
  %107 = load float* %arrayidx2.i, align 4, !tbaa !4
  %conv420 = fpext float %107 to double
  %108 = load i32* @ionize.ephot, align 4, !tbaa !0
  %conv421 = fpext float %E_lost.2744 to double
  %call422 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([65 x i8]* @.str51, i64 0, i64 0), i32 %58, double %conv416, double %conv418, double %conv420, i32 %108, double %conv421) #7
  br label %if.end424

if.end424:                                        ; preds = %if.end280, %if.end412, %if.then414, %sw.epilog385
  %tobool386746 = phi i1 [ true, %if.then414 ], [ true, %if.end412 ], [ false, %sw.epilog385 ], [ false, %if.end280 ]
  %E_lost.2745 = phi float [ %E_lost.2744, %if.then414 ], [ %E_lost.2744, %if.end412 ], [ %E_lost.0764, %sw.epilog385 ], [ 0.000000e+00, %if.end280 ]
  %bKHole.2740 = phi i32 [ %bKHole.2741, %if.then414 ], [ %bKHole.2741, %if.end412 ], [ %land.ext370, %sw.epilog385 ], [ 0, %if.end280 ]
  %dq.2 = phi i32 [ %dq.1, %if.then414 ], [ %dq.1, %if.end412 ], [ %dq.0759, %sw.epilog385 ], [ %dq.0759, %if.end280 ]
  br label %for.body428

for.body428:                                      ; preds = %for.body428, %if.end424
  %indvars.iv787 = phi i64 [ 0, %if.end424 ], [ %indvars.iv.next788, %for.body428 ]
  %arrayidx430 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 %indvars.iv787
  %109 = load float* %arrayidx430, align 4, !tbaa !4
  %arrayidx434 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv792, i64 %indvars.iv787
  %110 = load float* %arrayidx434, align 4, !tbaa !4
  %add435 = fadd float %109, %110
  store float %add435, float* %arrayidx434, align 4, !tbaa !4
  %indvars.iv.next788 = add i64 %indvars.iv787, 1
  %lftr.wideiv789 = trunc i64 %indvars.iv.next788 to i32
  %exitcond790 = icmp eq i32 %lftr.wideiv789, 3
  br i1 %exitcond790, label %for.end438, label %for.body428

for.end438:                                       ; preds = %for.body428
  %tobool439 = icmp eq i32 %bKHole.2740, 0
  br i1 %tobool439, label %if.else448, label %if.then440

if.then440:                                       ; preds = %for.end438
  %111 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !3
  %k443 = getelementptr inbounds %struct.t_cross_atom* %111, i64 %indvars.iv792, i32 2
  %112 = load i32* %k443, align 4, !tbaa !0
  %inc444 = add nsw i32 %112, 1
  store i32 %inc444, i32* %k443, align 4, !tbaa !0
  %arrayidx446 = getelementptr inbounds i32* %49, i64 %indvars.iv792
  %113 = load i32* %arrayidx446, align 4, !tbaa !0
  %inc447 = add nsw i32 %113, 1
  store i32 %inc447, i32* %arrayidx446, align 4, !tbaa !0
  br label %if.end456

if.else448:                                       ; preds = %for.end438
  br i1 %tobool386746, label %if.then450, label %if.end456

if.then450:                                       ; preds = %if.else448
  %arrayidx452 = getelementptr inbounds i32* %47, i64 %indvars.iv792
  %114 = load i32* %arrayidx452, align 4, !tbaa !0
  %inc453 = add nsw i32 %114, 1
  store i32 %inc453, i32* %arrayidx452, align 4, !tbaa !0
  br label %if.end456

if.end456:                                        ; preds = %if.else448, %sw.bb157, %if.end156, %land.lhs.true161, %sw.default, %if.then440, %if.then450, %land.rhs168
  %dq.3 = phi i32 [ %dq.2, %if.then440 ], [ %dq.2, %if.then450 ], [ %dq.0759, %land.rhs168 ], [ %dq.0759, %sw.default ], [ %dq.0759, %land.lhs.true161 ], [ %dq.0759, %if.end156 ], [ %dq.0759, %sw.bb157 ], [ %dq.2, %if.else448 ]
  %E_lost.3 = phi float [ %E_lost.2745, %if.then440 ], [ %E_lost.2745, %if.then450 ], [ %E_lost.0764, %land.rhs168 ], [ %E_lost.0764, %sw.default ], [ %E_lost.0764, %land.lhs.true161 ], [ %E_lost.0764, %if.end156 ], [ %E_lost.0764, %sw.bb157 ], [ %E_lost.2745, %if.else448 ]
  %115 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !3
  %k459 = getelementptr inbounds %struct.t_cross_atom* %115, i64 %indvars.iv792, i32 2
  %116 = load i32* %k459, align 4, !tbaa !0
  %cmp461755 = icmp sgt i32 %116, 0
  br i1 %cmp461755, label %for.body463.lr.ph, label %for.end477

for.body463.lr.ph:                                ; preds = %if.end456
  %arrayidx472 = getelementptr inbounds i32* %51, i64 %indvars.iv792
  br label %for.body463

for.body463:                                      ; preds = %for.inc475.for.body463_crit_edge, %for.body463.lr.ph
  %117 = phi %struct.t_cross_atom* [ %115, %for.body463.lr.ph ], [ %.pre802, %for.inc475.for.body463_crit_edge ]
  %nkdecay.1757 = phi i32 [ %nkdecay.0761, %for.body463.lr.ph ], [ %nkdecay.2, %for.inc475.for.body463_crit_edge ]
  %kk.0756 = phi i32 [ 1, %for.body463.lr.ph ], [ %phitmp, %for.inc475.for.body463_crit_edge ]
  %arrayidx465 = getelementptr inbounds %struct.t_cross_atom* %117, i64 %indvars.iv792
  %118 = load float* %delta_t, align 4, !tbaa !4
  %call467 = call i32 @khole_decay(%struct._IO_FILE* undef, %struct.t_cross_atom* %arrayidx465, [3 x float]* undef, [3 x float]* %v, i32 %58, i32* @ionize_seed, float %118) #9
  %tobool468 = icmp eq i32 %call467, 0
  br i1 %tobool468, label %for.inc475, label %if.then469

if.then469:                                       ; preds = %for.body463
  %inc470 = add nsw i32 %nkdecay.1757, 1
  %119 = load i32* %arrayidx472, align 4, !tbaa !0
  %inc473 = add nsw i32 %119, 1
  store i32 %inc473, i32* %arrayidx472, align 4, !tbaa !0
  br label %for.inc475

for.inc475:                                       ; preds = %for.body463, %if.then469
  %nkdecay.2 = phi i32 [ %inc470, %if.then469 ], [ %nkdecay.1757, %for.body463 ]
  %exitcond791 = icmp eq i32 %kk.0756, %116
  br i1 %exitcond791, label %for.end477, label %for.inc475.for.body463_crit_edge

for.inc475.for.body463_crit_edge:                 ; preds = %for.inc475
  %.pre802 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !3
  %phitmp = add i32 %kk.0756, 1
  br label %for.body463

for.end477:                                       ; preds = %for.inc475, %if.end456
  %nkdecay.1.lcssa = phi i32 [ %nkdecay.0761, %if.end456 ], [ %nkdecay.2, %for.inc475 ]
  %120 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool478 = icmp eq %struct._IO_FILE* %120, null
  br i1 %tobool478, label %for.inc489, label %land.lhs.true479

land.lhs.true479:                                 ; preds = %for.end477
  %121 = load %struct.t_cross_atom** @ionize.ca, align 8, !tbaa !3
  %n482 = getelementptr inbounds %struct.t_cross_atom* %121, i64 %indvars.iv792, i32 1
  %122 = load i32* %n482, align 4, !tbaa !0
  %cmp483 = icmp sgt i32 %122, 0
  br i1 %cmp483, label %if.then485, label %for.inc489

if.then485:                                       ; preds = %land.lhs.true479
  %z.i = getelementptr inbounds %struct.t_cross_atom* %121, i64 %indvars.iv792, i32 0
  %123 = load i32* %z.i, align 4, !tbaa !0
  %k.i = getelementptr inbounds %struct.t_cross_atom* %121, i64 %indvars.iv792, i32 2
  %124 = load i32* %k.i, align 4, !tbaa !0
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 745, i32 %58, i32 %123, i32 %122, i32 %124) #7
  br label %for.inc489

for.inc489:                                       ; preds = %for.end477, %land.lhs.true479, %if.then485
  %indvars.iv.next793 = add i64 %indvars.iv792, 1
  %125 = trunc i64 %indvars.iv.next793 to i32
  %cmp127 = icmp slt i32 %125, %end
  br i1 %cmp127, label %for.cond130.preheader, label %for.end491

for.end491:                                       ; preds = %for.inc489, %if.end100
  %nkdecay.0.lcssa = phi i32 [ 0, %if.end100 ], [ %nkdecay.1.lcssa, %for.inc489 ]
  %dq.0.lcssa = phi i32 [ 0, %if.end100 ], [ %dq.3, %for.inc489 ]
  %nnodes492 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %126 = load i32* %nnodes492, align 4, !tbaa !0
  %cmp493 = icmp sgt i32 %126, 1
  br i1 %cmp493, label %if.then499, label %lor.lhs.false495

lor.lhs.false495:                                 ; preds = %for.end491
  %nthreads496 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %127 = load i32* %nthreads496, align 4, !tbaa !0
  %cmp497 = icmp sgt i32 %127, 1
  br i1 %cmp497, label %if.then499, label %if.end508

if.then499:                                       ; preds = %lor.lhs.false495, %for.end491
  %128 = load i32* %nr, align 4, !tbaa !0
  call void @gmx_sumi(i32 %128, i32* %47, %struct.t_commrec* %cr) #7
  %129 = load i32* %nr, align 4, !tbaa !0
  call void @gmx_sumi(i32 %129, i32* %49, %struct.t_commrec* %cr) #7
  %130 = load i32* %nr, align 4, !tbaa !0
  call void @gmx_sumi(i32 %130, i32* %51, %struct.t_commrec* %cr) #7
  %arrayidx503 = getelementptr inbounds [2 x i32]* %nbuf, i64 0, i64 0
  store i32 %dq.0.lcssa, i32* %arrayidx503, align 4, !tbaa !0
  %arrayidx504 = getelementptr inbounds [2 x i32]* %nbuf, i64 0, i64 1
  store i32 %nkdecay.0.lcssa, i32* %arrayidx504, align 4, !tbaa !0
  call void @gmx_sumi(i32 2, i32* %arrayidx503, %struct.t_commrec* %cr) #7
  %131 = load i32* %arrayidx503, align 4, !tbaa !0
  %132 = load i32* %arrayidx504, align 4, !tbaa !0
  br label %if.end508

if.end508:                                        ; preds = %if.then499, %lor.lhs.false495
  %dq.4 = phi i32 [ %131, %if.then499 ], [ %dq.0.lcssa, %lor.lhs.false495 ]
  %nkdecay.3 = phi i32 [ %132, %if.then499 ], [ %nkdecay.0.lcssa, %lor.lhs.false495 ]
  %133 = load i32* @ionize.dq_tot, align 4, !tbaa !0
  %add509 = add nsw i32 %133, %dq.4
  store i32 %add509, i32* @ionize.dq_tot, align 4, !tbaa !0
  %134 = load i32* @ionize.nkd_tot, align 4, !tbaa !0
  %add510 = add nsw i32 %134, %nkdecay.3
  store i32 %add510, i32* @ionize.nkd_tot, align 4, !tbaa !0
  %nodeid511 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %135 = load i32* %nodeid511, align 4, !tbaa !0
  %cmp512 = icmp eq i32 %135, 0
  br i1 %cmp512, label %land.lhs.true514, label %if.end562

land.lhs.true514:                                 ; preds = %if.end508
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %136 = load i32* %threadid, align 4, !tbaa !0
  %cmp515 = icmp eq i32 %136, 0
  br i1 %cmp515, label %if.then517, label %if.end562

if.then517:                                       ; preds = %land.lhs.true514
  %137 = load %struct._IO_FILE** @ionize.ion, align 8, !tbaa !3
  %conv518 = fpext float %t to double
  %call519 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([7 x i8]* @.str52, i64 0, i64 0), double %conv518) #7
  %138 = load i32* %nr, align 4, !tbaa !0
  %cmp522750 = icmp sgt i32 %138, 0
  br i1 %cmp522750, label %for.body524, label %for.end548

for.body524:                                      ; preds = %if.then517, %for.inc546
  %indvars.iv = phi i64 [ %indvars.iv.next.pre-phi, %for.inc546 ], [ 0, %if.then517 ]
  %arrayidx526 = getelementptr inbounds i32* %47, i64 %indvars.iv
  %139 = load i32* %arrayidx526, align 4, !tbaa !0
  %tobool527 = icmp eq i32 %139, 0
  br i1 %tobool527, label %if.end531, label %if.then528

if.then528:                                       ; preds = %for.body524
  %140 = load %struct._IO_FILE** @ionize.ion, align 8, !tbaa !3
  %141 = add nsw i64 %indvars.iv, 1
  %142 = trunc i64 %141 to i32
  %call530 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([7 x i8]* @.str53, i64 0, i64 0), i32 %142) #7
  br label %if.end531

if.end531:                                        ; preds = %for.body524, %if.then528
  %arrayidx533 = getelementptr inbounds i32* %49, i64 %indvars.iv
  %143 = load i32* %arrayidx533, align 4, !tbaa !0
  %tobool534 = icmp eq i32 %143, 0
  br i1 %tobool534, label %if.end538, label %if.then535

if.then535:                                       ; preds = %if.end531
  %144 = load %struct._IO_FILE** @ionize.ion, align 8, !tbaa !3
  %145 = add nsw i64 %indvars.iv, 1
  %146 = trunc i64 %145 to i32
  %call537 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([7 x i8]* @.str54, i64 0, i64 0), i32 %146) #7
  br label %if.end538

if.end538:                                        ; preds = %if.end531, %if.then535
  %arrayidx540 = getelementptr inbounds i32* %51, i64 %indvars.iv
  %147 = load i32* %arrayidx540, align 4, !tbaa !0
  %tobool541 = icmp eq i32 %147, 0
  br i1 %tobool541, label %if.end538.for.inc546_crit_edge, label %if.then542

if.end538.for.inc546_crit_edge:                   ; preds = %if.end538
  %indvars.iv.next.pre = add i64 %indvars.iv, 1
  %.pre804 = trunc i64 %indvars.iv.next.pre to i32
  br label %for.inc546

if.then542:                                       ; preds = %if.end538
  %148 = load %struct._IO_FILE** @ionize.ion, align 8, !tbaa !3
  %149 = add nsw i64 %indvars.iv, 1
  %150 = trunc i64 %149 to i32
  %call544 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([7 x i8]* @.str55, i64 0, i64 0), i32 %150) #7
  br label %for.inc546

for.inc546:                                       ; preds = %if.end538.for.inc546_crit_edge, %if.then542
  %.pre-phi = phi i32 [ %.pre804, %if.end538.for.inc546_crit_edge ], [ %150, %if.then542 ]
  %indvars.iv.next.pre-phi = phi i64 [ %indvars.iv.next.pre, %if.end538.for.inc546_crit_edge ], [ %149, %if.then542 ]
  %151 = load i32* %nr, align 4, !tbaa !0
  %cmp522 = icmp slt i32 %.pre-phi, %151
  br i1 %cmp522, label %for.body524, label %for.end548

for.end548:                                       ; preds = %for.inc546, %if.then517
  %152 = load %struct._IO_FILE** @ionize.ion, align 8, !tbaa !3
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %152)
  %153 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool550 = icmp eq %struct._IO_FILE* %153, null
  br i1 %tobool550, label %if.end553, label %if.then551

if.then551:                                       ; preds = %for.end548
  %154 = load %struct._IO_FILE** @ionize.ion, align 8, !tbaa !3
  %call552 = call i32 @fflush(%struct._IO_FILE* %154) #7
  br label %if.end553

if.end553:                                        ; preds = %for.end548, %if.then551
  %155 = load %struct._IO_FILE** @ionize.xvg, align 8, !tbaa !3
  %conv555 = fpext float %conv109 to double
  %156 = load i32* @ionize.dq_tot, align 4, !tbaa !0
  %157 = load i32* @ionize.nkd_tot, align 4, !tbaa !0
  %call556 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([35 x i8]* @.str56, i64 0, i64 0), double %conv518, double %conv555, i32 %dq.4, i32 %156, i32 %nkdecay.3, i32 %157) #7
  %158 = load %struct._IO_FILE** @ionize.xvg, align 8, !tbaa !3
  %fputc714 = call i32 @fputc(i32 10, %struct._IO_FILE* %158)
  %159 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool558 = icmp eq %struct._IO_FILE* %159, null
  br i1 %tobool558, label %if.end562, label %if.then559

if.then559:                                       ; preds = %if.end553
  %160 = load %struct._IO_FILE** @ionize.xvg, align 8, !tbaa !3
  %call560 = call i32 @fflush(%struct._IO_FILE* %160) #7
  br label %if.end562

if.end562:                                        ; preds = %if.end553, %if.then559, %land.lhs.true514, %if.end508
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 784, i8* %call121) #7
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 785, i8* %call123) #7
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 786, i8* %call125) #7
  ret void
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: optsize
declare i32 @make_seed() #3

; Function Attrs: optsize
declare %struct._IO_FILE* @xvgropen(i8*, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare void @xvgr_legend(%struct._IO_FILE*, i32, i8**) #3

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare float @gauss(float, float, i32*) #3

; Function Attrs: optsize
declare void @pr_rvec(%struct._IO_FILE*, i32, i8*, float*, i32) #3

; Function Attrs: nounwind optsize
declare double @cos(double) #1

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #3

; Function Attrs: nounwind optsize
declare double @sin(double) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
