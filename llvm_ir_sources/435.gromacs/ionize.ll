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
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !92), !dbg !540
  tail call void @llvm.dbg.value(metadata !{%struct.t_cross_atom* %ca}, i64 0, metadata !93), !dbg !540
  tail call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !94), !dbg !540
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !95), !dbg !540
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !96), !dbg !540
  %z = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0, !dbg !541
  %0 = load i32* %z, align 4, !dbg !541, !tbaa !542
  %n = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !541
  %1 = load i32* %n, align 4, !dbg !541, !tbaa !542
  %k = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !541
  %2 = load i32* %k, align 4, !dbg !541, !tbaa !542
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 %line, i32 %i, i32 %0, i32 %1, i32 %2) #8, !dbg !541
  ret void, !dbg !545
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define %struct.t_cross_atom* @mk_cross_atom(%struct._IO_FILE* nocapture %log, %struct.t_mdatoms* nocapture %md, i8*** nocapture %atomname, i32 %Eindex) #0 {
entry:
  %elem_index = alloca [22 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !134), !dbg !546
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !135), !dbg !546
  call void @llvm.dbg.value(metadata !{i8*** %atomname}, i64 0, metadata !136), !dbg !547
  call void @llvm.dbg.value(metadata !{i32 %Eindex}, i64 0, metadata !137), !dbg !547
  %0 = bitcast [22 x i32]* %elem_index to i8*, !dbg !548
  call void @llvm.lifetime.start(i64 88, i8* %0) #3, !dbg !548
  call void @llvm.dbg.declare(metadata !{[22 x i32]* %elem_index}, metadata !138), !dbg !548
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 88, i32 16, i1 false), !dbg !548
  %1 = getelementptr [22 x i32]* %elem_index, i64 0, i64 6, !dbg !548
  store i32 1, i32* %1, align 8, !dbg !548
  %2 = getelementptr [22 x i32]* %elem_index, i64 0, i64 7, !dbg !548
  store i32 2, i32* %2, align 4, !dbg !548
  %3 = getelementptr [22 x i32]* %elem_index, i64 0, i64 8, !dbg !548
  store i32 3, i32* %3, align 16, !dbg !548
  %4 = getelementptr [22 x i32]* %elem_index, i64 0, i64 16, !dbg !548
  store i32 4, i32* %4, align 16, !dbg !548
  %5 = getelementptr [22 x i32]* %elem_index, i64 0, i64 20, !dbg !548
  store i32 5, i32* %5, align 16, !dbg !548
  %6 = getelementptr [22 x i32]* %elem_index, i64 0, i64 21, !dbg !548
  store i32 6, i32* %6, align 4, !dbg !548
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str1, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %log), !dbg !549
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %log), !dbg !550
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !551
  %9 = load i32* %nr, align 4, !dbg !551, !tbaa !542
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 196, i32 %9, i32 28) #8, !dbg !551
  %10 = bitcast i8* %call2 to %struct.t_cross_atom*, !dbg !551
  call void @llvm.dbg.value(metadata !{%struct.t_cross_atom* %10}, i64 0, metadata !142), !dbg !551
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 197, i32 8, i32 4) #8, !dbg !552
  %11 = bitcast i8* %call3 to i32*, !dbg !552
  call void @llvm.dbg.value(metadata !{i32* %11}, i64 0, metadata !143), !dbg !552
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !145), !dbg !553
  %12 = load i32* %nr, align 4, !dbg !553, !tbaa !542
  %cmp174 = icmp sgt i32 %12, 0, !dbg !553
  br i1 %cmp174, label %for.body.lr.ph, label %for.end88, !dbg !553

for.body.lr.ph:                                   ; preds = %entry
  %idxprom36 = sext i32 %Eindex to i64, !dbg !555
  br label %for.body, !dbg !553

for.body:                                         ; preds = %for.body.lr.ph, %for.inc86
  %indvars.iv182 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next183, %for.inc86 ]
  %arrayidx = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, !dbg !557
  %n = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 1, !dbg !557
  store i32 0, i32* %n, align 4, !dbg !557, !tbaa !542
  %k = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 2, !dbg !558
  store i32 0, i32* %k, align 4, !dbg !558, !tbaa !542
  %arrayidx8 = getelementptr inbounds i8*** %atomname, i64 %indvars.iv182, !dbg !559
  %13 = load i8*** %arrayidx8, align 8, !dbg !559, !tbaa !560
  %14 = load i8** %13, align 8, !dbg !559, !tbaa !560
  call void @llvm.dbg.value(metadata !{i8* %14}, i64 0, metadata !144), !dbg !559
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !146), !dbg !561
  br label %for.body12, !dbg !561

for.cond9:                                        ; preds = %for.body12
  %15 = trunc i64 %indvars.iv.next180 to i32, !dbg !561
  %cmp10 = icmp ult i32 %15, 7, !dbg !561
  br i1 %cmp10, label %for.body12, label %for.end, !dbg !561

for.body12:                                       ; preds = %for.body, %for.cond9
  %indvars.iv179 = phi i64 [ 0, %for.body ], [ %indvars.iv.next180, %for.cond9 ]
  %j.0172 = phi i32 [ 0, %for.body ], [ %inc, %for.cond9 ]
  %name = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %indvars.iv179, i32 0, !dbg !563
  %16 = load i8** %name, align 8, !dbg !563, !tbaa !560
  %call18 = call i64 @strlen(i8* %16) #9, !dbg !563
  %call19 = call i32 @strncmp(i8* %14, i8* %16, i64 %call18) #9, !dbg !563
  %cmp20 = icmp eq i32 %call19, 0, !dbg !563
  %indvars.iv.next180 = add i64 %indvars.iv179, 1, !dbg !561
  %inc = add nsw i32 %j.0172, 1, !dbg !561
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !146), !dbg !561
  br i1 %cmp20, label %if.then, label %for.cond9, !dbg !563

if.then:                                          ; preds = %for.body12
  %nel = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %indvars.iv179, i32 1, !dbg !564
  %17 = load i32* %nel, align 8, !dbg !564, !tbaa !542
  %z = getelementptr inbounds %struct.t_cross_atom* %arrayidx, i64 0, i32 0, !dbg !564
  store i32 %17, i32* %z, align 4, !dbg !564, !tbaa !542
  br label %for.end, !dbg !566

for.end:                                          ; preds = %for.cond9, %if.then
  %conv171 = phi i64 [ %indvars.iv179, %if.then ], [ %indvars.iv.next180, %for.cond9 ]
  %j.0169 = phi i32 [ %j.0172, %if.then ], [ %inc, %for.cond9 ]
  %cmp27 = icmp eq i32 %j.0169, 7, !dbg !567
  br i1 %cmp27, label %if.then29, label %if.end32, !dbg !567

if.then29:                                        ; preds = %for.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str6, i64 0, i64 0), i8* %14) #8, !dbg !568
  br label %if.end32, !dbg !568

if.end32:                                         ; preds = %if.then29, %for.end
  %arrayidx34 = getelementptr inbounds i32* %11, i64 %conv171, !dbg !569
  %18 = load i32* %arrayidx34, align 4, !dbg !569, !tbaa !542
  %inc35 = add nsw i32 %18, 1, !dbg !569
  store i32 %inc35, i32* %arrayidx34, align 4, !dbg !569, !tbaa !542
  %z39 = getelementptr inbounds %struct.t_cross_atom* %arrayidx, i64 0, i32 0, !dbg !555
  %19 = load i32* %z39, align 4, !dbg !555, !tbaa !542
  %idxprom40 = sext i32 %19 to i64, !dbg !555
  %arrayidx41 = getelementptr inbounds [22 x i32]* %elem_index, i64 0, i64 %idxprom40, !dbg !555
  %20 = load i32* %arrayidx41, align 4, !dbg !555, !tbaa !542
  %idxprom42 = sext i32 %20 to i64, !dbg !555
  %cross = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %idxprom42, i32 2, !dbg !555
  %21 = load %struct.t_cross** %cross, align 8, !dbg !555, !tbaa !560
  %photo = getelementptr inbounds %struct.t_cross* %21, i64 %idxprom36, i32 0, !dbg !555
  %22 = load float* %photo, align 4, !dbg !555, !tbaa !570
  %sigPh = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 4, !dbg !555
  store float %22, float* %sigPh, align 4, !dbg !555, !tbaa !570
  %incoh = getelementptr inbounds %struct.t_cross* %21, i64 %idxprom36, i32 2, !dbg !571
  %23 = load float* %incoh, align 4, !dbg !571, !tbaa !570
  %sigIn = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 5, !dbg !571
  store float %23, float* %sigIn, align 4, !dbg !571, !tbaa !570
  %Prob_K = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom40, i32 2, !dbg !572
  %24 = load float* %Prob_K, align 8, !dbg !572, !tbaa !570
  %fj = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 3, !dbg !572
  store float %24, float* %fj, align 4, !dbg !572, !tbaa !570
  switch i32 %19, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb71
    i32 8, label %sw.bb75
    i32 16, label %sw.bb79
    i32 20, label %sw.bb79
  ], !dbg !573

sw.bb:                                            ; preds = %if.end32
  %vAuger = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 6, !dbg !574
  store float 0x3FECED9160000000, float* %vAuger, align 4, !dbg !574, !tbaa !570
  br label %for.inc86, !dbg !576

sw.bb71:                                          ; preds = %if.end32
  %vAuger74 = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 6, !dbg !577
  store float 0x3FED70A3E0000000, float* %vAuger74, align 4, !dbg !577, !tbaa !570
  br label %for.inc86, !dbg !578

sw.bb75:                                          ; preds = %if.end32
  %vAuger78 = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 6, !dbg !579
  store float 0x3FEDBA5E40000000, float* %vAuger78, align 4, !dbg !579, !tbaa !570
  br label %for.inc86, !dbg !580

sw.bb79:                                          ; preds = %if.end32, %if.end32
  %vAuger82 = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 6, !dbg !581
  store float 1.000000e+00, float* %vAuger82, align 4, !dbg !581, !tbaa !570
  br label %for.inc86, !dbg !582

sw.default:                                       ; preds = %if.end32
  %vAuger85 = getelementptr inbounds %struct.t_cross_atom* %10, i64 %indvars.iv182, i32 6, !dbg !583
  store float -1.000000e+00, float* %vAuger85, align 4, !dbg !583, !tbaa !570
  br label %for.inc86, !dbg !584

for.inc86:                                        ; preds = %sw.bb, %sw.bb71, %sw.bb75, %sw.bb79, %sw.default
  %indvars.iv.next183 = add i64 %indvars.iv182, 1, !dbg !553
  %25 = load i32* %nr, align 4, !dbg !553, !tbaa !542
  %26 = trunc i64 %indvars.iv.next183 to i32, !dbg !553
  %cmp = icmp slt i32 %26, %25, !dbg !553
  br i1 %cmp, label %for.body, label %for.end88, !dbg !553

for.end88:                                        ; preds = %for.inc86, %entry
  %.lcssa = phi i32 [ %12, %entry ], [ %25, %for.inc86 ]
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([76 x i8]* @.str7, i64 0, i64 0), i32 %.lcssa) #8, !dbg !585
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !146), !dbg !586
  br label %for.body95, !dbg !586

for.body95:                                       ; preds = %for.inc108, %for.end88
  %indvars.iv = phi i64 [ 0, %for.end88 ], [ %indvars.iv.next, %for.inc108 ]
  %arrayidx97 = getelementptr inbounds i32* %11, i64 %indvars.iv, !dbg !588
  %27 = load i32* %arrayidx97, align 4, !dbg !588, !tbaa !542
  %cmp98 = icmp sgt i32 %27, 0, !dbg !588
  br i1 %cmp98, label %if.then100, label %for.inc108, !dbg !588

if.then100:                                       ; preds = %for.body95
  %name103 = getelementptr inbounds [7 x %struct.t_element]* @element, i64 0, i64 %indvars.iv, i32 0, !dbg !589
  %28 = load i8** %name103, align 8, !dbg !589, !tbaa !560
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i8* %28, i32 %27) #8, !dbg !589
  br label %for.inc108, !dbg !589

for.inc108:                                       ; preds = %for.body95, %if.then100
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !586
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !586
  %exitcond = icmp eq i32 %lftr.wideiv, 7, !dbg !586
  br i1 %exitcond, label %for.end110, label %for.body95, !dbg !586

for.end110:                                       ; preds = %for.inc108
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %log), !dbg !590
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 240, i8* %call3) #8, !dbg !591
  call void @llvm.lifetime.end(i64 88, i8* %0) #3, !dbg !592
  ret %struct.t_cross_atom* %10, !dbg !592
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #4

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly uwtable
define i32 @number_K(%struct.t_cross_atom* nocapture %ca) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_cross_atom* %ca}, i64 0, metadata !151), !dbg !593
  %z = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0, !dbg !594
  %0 = load i32* %z, align 4, !dbg !594, !tbaa !542
  %cmp = icmp slt i32 %0, 3, !dbg !594
  br i1 %cmp, label %if.then, label %if.else, !dbg !594

if.then:                                          ; preds = %entry
  %n = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !595
  %1 = load i32* %n, align 4, !dbg !595, !tbaa !542
  %sub = sub nsw i32 %0, %1, !dbg !595
  br label %return, !dbg !595

if.else:                                          ; preds = %entry
  %k = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !596
  %2 = load i32* %k, align 4, !dbg !596, !tbaa !542
  %sub2 = sub nsw i32 2, %2, !dbg !596
  br label %return, !dbg !596

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %sub2, %if.else ]
  ret i32 %retval.0, !dbg !597
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @number_L(%struct.t_cross_atom* nocapture %ca) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_cross_atom* %ca}, i64 0, metadata !154), !dbg !598
  %k = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !599
  %0 = load i32* %k, align 4, !dbg !599, !tbaa !542
  %sub = add nsw i32 %0, -2, !dbg !599
  %z = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0, !dbg !599
  %1 = load i32* %z, align 4, !dbg !599, !tbaa !542
  %add = add nsw i32 %sub, %1, !dbg !599
  %n = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !599
  %2 = load i32* %n, align 4, !dbg !599, !tbaa !542
  %sub1 = sub i32 %add, %2, !dbg !599
  ret i32 %sub1, !dbg !599
}

; Function Attrs: nounwind optsize uwtable
define float @xray_cross_section(i32 %eColl, %struct.t_cross_atom* nocapture %ca) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %eColl}, i64 0, metadata !159), !dbg !600
  tail call void @llvm.dbg.value(metadata !{%struct.t_cross_atom* %ca}, i64 0, metadata !160), !dbg !600
  tail call void @llvm.dbg.value(metadata !601, i64 0, metadata !161), !dbg !602
  switch i32 %eColl, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
  ], !dbg !603

sw.bb:                                            ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.t_cross_atom* %ca}, i64 0, metadata !604), !dbg !607
  %z.i = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0, !dbg !608
  %0 = load i32* %z.i, align 4, !dbg !608, !tbaa !542
  %cmp.i = icmp slt i32 %0, 3, !dbg !608
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !608

if.then.i:                                        ; preds = %sw.bb
  %n.i = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !609
  %1 = load i32* %n.i, align 4, !dbg !609, !tbaa !542
  %sub.i = sub nsw i32 %0, %1, !dbg !609
  br label %number_K.exit, !dbg !609

if.else.i:                                        ; preds = %sw.bb
  %k.i = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !610
  %2 = load i32* %k.i, align 4, !dbg !610, !tbaa !542
  %sub2.i = sub nsw i32 2, %2, !dbg !610
  br label %number_K.exit, !dbg !610

number_K.exit:                                    ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %sub2.i, %if.else.i ]
  tail call void @llvm.dbg.value(metadata !{i32 %retval.0.i}, i64 0, metadata !162), !dbg !605
  tail call void @llvm.dbg.value(metadata !{%struct.t_cross_atom* %ca}, i64 0, metadata !611), !dbg !613
  tail call void @llvm.dbg.value(metadata !{i32 %sub1.i}, i64 0, metadata !163), !dbg !612
  switch i32 %0, label %if.else7 [
    i32 1, label %if.then
    i32 2, label %if.then4
  ], !dbg !614

if.then:                                          ; preds = %number_K.exit
  %sigPh = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 4, !dbg !615
  %3 = load float* %sigPh, align 4, !dbg !615, !tbaa !570
  tail call void @llvm.dbg.value(metadata !{float %3}, i64 0, metadata !161), !dbg !615
  br label %sw.epilog, !dbg !615

if.then4:                                         ; preds = %number_K.exit
  %sigPh5 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 4, !dbg !616
  %4 = load float* %sigPh5, align 4, !dbg !616, !tbaa !570
  %conv6 = fmul float %4, 5.000000e-01, !dbg !616
  tail call void @llvm.dbg.value(metadata !{float %conv6}, i64 0, metadata !161), !dbg !616
  br label %sw.epilog, !dbg !616

if.else7:                                         ; preds = %number_K.exit
  %k.i44 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !617
  %5 = load i32* %k.i44, align 4, !dbg !617, !tbaa !542
  %n.i47 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !617
  %6 = load i32* %n.i47, align 4, !dbg !617, !tbaa !542
  %sub.i45 = add i32 %0, -2, !dbg !617
  %add.i = add i32 %sub.i45, %5, !dbg !617
  %sub1.i = sub i32 %add.i, %6, !dbg !617
  %conv8 = sitofp i32 %retval.0.i to double, !dbg !618
  %mul9 = fmul double %conv8, 5.000000e-01, !dbg !618
  %fj = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 3, !dbg !618
  %7 = load float* %fj, align 4, !dbg !618, !tbaa !570
  %conv10 = fpext float %7 to double, !dbg !618
  %mul11 = fmul double %mul9, %conv10, !dbg !618
  %div = sdiv i32 %sub1.i, %sub.i45, !dbg !618
  %conv13 = sitofp i32 %div to float, !dbg !618
  %sub15 = fsub float 1.000000e+00, %7, !dbg !618
  %mul16 = fmul float %sub15, %conv13, !dbg !618
  %conv17 = fpext float %mul16 to double, !dbg !618
  %add = fadd double %mul11, %conv17, !dbg !618
  %sigPh18 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 4, !dbg !618
  %8 = load float* %sigPh18, align 4, !dbg !618, !tbaa !570
  %conv19 = fpext float %8 to double, !dbg !618
  %mul20 = fmul double %conv19, %add, !dbg !618
  %conv21 = fptrunc double %mul20 to float, !dbg !618
  tail call void @llvm.dbg.value(metadata !{float %conv21}, i64 0, metadata !161), !dbg !618
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %z24 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0, !dbg !619
  %9 = load i32* %z24, align 4, !dbg !619, !tbaa !542
  %n = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !619
  %10 = load i32* %n, align 4, !dbg !619, !tbaa !542
  %sub25 = sub nsw i32 %9, %10, !dbg !619
  %conv26 = sitofp i32 %sub25 to float, !dbg !619
  %sigIn = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 5, !dbg !619
  %11 = load float* %sigIn, align 4, !dbg !619, !tbaa !570
  %mul27 = fmul float %11, %conv26, !dbg !619
  %conv29 = sitofp i32 %9 to float, !dbg !619
  %div30 = fdiv float %mul27, %conv29, !dbg !619
  tail call void @llvm.dbg.value(metadata !{float %div30}, i64 0, metadata !161), !dbg !619
  br label %sw.epilog, !dbg !620

sw.default:                                       ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %eColl) #8, !dbg !621
  br label %sw.epilog, !dbg !622

sw.epilog:                                        ; preds = %if.then, %if.else7, %if.then4, %sw.default, %sw.bb23
  %c.0 = phi float [ 0.000000e+00, %sw.default ], [ %div30, %sw.bb23 ], [ %3, %if.then ], [ %conv6, %if.then4 ], [ %conv21, %if.else7 ]
  ret float %c.0, !dbg !623
}

; Function Attrs: nounwind optsize uwtable
define float @prob_K(i32 %eColl, %struct.t_cross_atom* nocapture %ca) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %eColl}, i64 0, metadata !166), !dbg !624
  tail call void @llvm.dbg.value(metadata !{%struct.t_cross_atom* %ca}, i64 0, metadata !167), !dbg !624
  tail call void @llvm.dbg.value(metadata !601, i64 0, metadata !170), !dbg !625
  %z = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0, !dbg !626
  %0 = load i32* %z, align 4, !dbg !626, !tbaa !542
  %cmp = icmp slt i32 %0, 3, !dbg !626
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !626

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !626
  %1 = load i32* %n, align 4, !dbg !626, !tbaa !542
  %cmp2 = icmp eq i32 %0, %1, !dbg !626
  br i1 %cmp2, label %return, label %if.end, !dbg !626

if.end:                                           ; preds = %lor.lhs.false
  switch i32 %eColl, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
  ], !dbg !627

sw.bb:                                            ; preds = %if.end
  %k = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !628
  %2 = load i32* %k, align 4, !dbg !628, !tbaa !542
  %sub = add i32 %0, -2, !dbg !628
  %add = sub i32 %sub, %1, !dbg !628
  %sub5 = add i32 %add, %2, !dbg !628
  %conv = sitofp i32 %sub5 to float, !dbg !628
  %fj = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 3, !dbg !628
  %3 = load float* %fj, align 4, !dbg !628, !tbaa !570
  %sub6 = fsub float 1.000000e+00, %3, !dbg !628
  %mul = fmul float %conv, %sub6, !dbg !628
  %conv9 = sitofp i32 %sub to float, !dbg !628
  %div = fdiv float %mul, %conv9, !dbg !628
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !168), !dbg !628
  %sub11 = sub nsw i32 2, %2, !dbg !630
  %conv12 = sitofp i32 %sub11 to float, !dbg !630
  %mul14 = fmul float %3, %conv12, !dbg !630
  %conv17 = fmul float %mul14, 5.000000e-01, !dbg !630
  tail call void @llvm.dbg.value(metadata !{float %conv17}, i64 0, metadata !169), !dbg !630
  %add18 = fadd float %div, %conv17, !dbg !631
  %div19 = fdiv float %conv17, %add18, !dbg !631
  tail call void @llvm.dbg.value(metadata !{float %div19}, i64 0, metadata !170), !dbg !631
  br label %return, !dbg !632

sw.bb20:                                          ; preds = %if.end
  %k21 = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !633
  %4 = load i32* %k21, align 4, !dbg !633, !tbaa !542
  %sub22 = sub nsw i32 2, %4, !dbg !633
  %sub25 = sub nsw i32 %0, %1, !dbg !633
  %div26 = sdiv i32 %sub22, %sub25, !dbg !633
  %conv27 = sitofp i32 %div26 to float, !dbg !633
  tail call void @llvm.dbg.value(metadata !{float %conv27}, i64 0, metadata !170), !dbg !633
  br label %return, !dbg !634

sw.default:                                       ; preds = %if.end
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %eColl) #8, !dbg !635
  br label %return, !dbg !636

return:                                           ; preds = %sw.bb, %sw.bb20, %sw.default, %entry, %lor.lhs.false
  %retval.0 = phi float [ 0.000000e+00, %lor.lhs.false ], [ 0.000000e+00, %entry ], [ 0.000000e+00, %sw.default ], [ %conv27, %sw.bb20 ], [ %div19, %sw.bb ]
  ret float %retval.0, !dbg !637
}

; Function Attrs: nounwind optsize uwtable
define double @myexp(double %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double %x}, i64 0, metadata !176), !dbg !638
  %cmp = fcmp olt double %x, -7.000000e+01, !dbg !639
  br i1 %cmp, label %return, label %if.else, !dbg !639

if.else:                                          ; preds = %entry
  %call = tail call double @exp(double %x) #8, !dbg !640
  br label %return, !dbg !640

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi double [ %call, %if.else ], [ 0.000000e+00, %entry ]
  ret double %retval.0, !dbg !641
}

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: nounwind optsize uwtable
define float @ptheta_incoh(i32 %Eindex, float %theta) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %Eindex}, i64 0, metadata !181), !dbg !642
  tail call void @llvm.dbg.value(metadata !{float %theta}, i64 0, metadata !182), !dbg !642
  %conv = fpext float %theta to double, !dbg !643
  %idxprom = sext i32 %Eindex to i64, !dbg !643
  %arrayidx1 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 7, !dbg !643
  %0 = load double* %arrayidx1, align 8, !dbg !643, !tbaa !644
  %sub = fsub double %conv, %0, !dbg !643
  %arrayidx4 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 1, !dbg !643
  %1 = load double* %arrayidx4, align 8, !dbg !643, !tbaa !644
  %div = fdiv double %sub, %1, !dbg !643
  %conv5 = fptrunc double %div to float, !dbg !643
  tail call void @llvm.dbg.value(metadata !{float %conv5}, i64 0, metadata !645), !dbg !646
  %mul.i = fmul float %conv5, %conv5, !dbg !647
  %conv6 = fpext float %mul.i to double, !dbg !643
  %mul = fmul double %conv6, -5.000000e-01, !dbg !643
  tail call void @llvm.dbg.value(metadata !{double %mul}, i64 0, metadata !649) #3, !dbg !650
  %cmp.i94 = fcmp olt double %mul, -7.000000e+01, !dbg !651
  br i1 %cmp.i94, label %myexp.exit98, label %if.else.i96, !dbg !651

if.else.i96:                                      ; preds = %entry
  %call.i95 = tail call double @exp(double %mul) #8, !dbg !652
  br label %myexp.exit98, !dbg !652

myexp.exit98:                                     ; preds = %entry, %if.else.i96
  %retval.0.i97 = phi double [ %call.i95, %if.else.i96 ], [ 0.000000e+00, %entry ]
  tail call void @llvm.dbg.value(metadata !{double %retval.0.i97}, i64 0, metadata !183), !dbg !643
  %sub8 = fadd float %theta, -1.800000e+02, !dbg !653
  %conv9 = fpext float %sub8 to double, !dbg !653
  %add = fadd double %conv9, %0, !dbg !653
  %div16 = fdiv double %add, %1, !dbg !653
  %conv17 = fptrunc double %div16 to float, !dbg !653
  tail call void @llvm.dbg.value(metadata !{float %conv17}, i64 0, metadata !654), !dbg !655
  %mul.i99 = fmul float %conv17, %conv17, !dbg !656
  %conv19 = fpext float %mul.i99 to double, !dbg !653
  %mul20 = fmul double %conv19, -5.000000e-01, !dbg !653
  tail call void @llvm.dbg.value(metadata !{double %mul20}, i64 0, metadata !657) #3, !dbg !658
  %cmp.i106 = fcmp olt double %mul20, -7.000000e+01, !dbg !659
  br i1 %cmp.i106, label %myexp.exit110, label %if.else.i108, !dbg !659

if.else.i108:                                     ; preds = %myexp.exit98
  %call.i107 = tail call double @exp(double %mul20) #8, !dbg !660
  br label %myexp.exit110, !dbg !660

myexp.exit110:                                    ; preds = %myexp.exit98, %if.else.i108
  %retval.0.i109 = phi double [ %call.i107, %if.else.i108 ], [ 0.000000e+00, %myexp.exit98 ]
  tail call void @llvm.dbg.value(metadata !{double %retval.0.i109}, i64 0, metadata !184), !dbg !653
  %sub22 = fadd float %theta, -9.000000e+01, !dbg !661
  %conv23 = fpext float %sub22 to double, !dbg !661
  %arrayidx26 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 3, !dbg !661
  %2 = load double* %arrayidx26, align 8, !dbg !661, !tbaa !644
  %div27 = fdiv double %conv23, %2, !dbg !661
  %conv28 = fptrunc double %div27 to float, !dbg !661
  tail call void @llvm.dbg.value(metadata !{float %conv28}, i64 0, metadata !662), !dbg !663
  %mul.i111 = fmul float %conv28, %conv28, !dbg !664
  %conv30 = fpext float %mul.i111 to double, !dbg !661
  %mul31 = fmul double %conv30, -5.000000e-01, !dbg !661
  tail call void @llvm.dbg.value(metadata !{double %mul31}, i64 0, metadata !665) #3, !dbg !666
  %cmp.i113 = fcmp olt double %mul31, -7.000000e+01, !dbg !667
  br i1 %cmp.i113, label %myexp.exit117, label %if.else.i115, !dbg !667

if.else.i115:                                     ; preds = %myexp.exit110
  %call.i114 = tail call double @exp(double %mul31) #8, !dbg !668
  br label %myexp.exit117, !dbg !668

myexp.exit117:                                    ; preds = %myexp.exit110, %if.else.i115
  %retval.0.i116 = phi double [ %call.i114, %if.else.i115 ], [ 0.000000e+00, %myexp.exit110 ]
  tail call void @llvm.dbg.value(metadata !{double %retval.0.i116}, i64 0, metadata !185), !dbg !661
  %arrayidx36 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 6, !dbg !669
  %3 = load double* %arrayidx36, align 16, !dbg !669, !tbaa !644
  %sub37 = fsub double %conv, %3, !dbg !669
  %arrayidx40 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 5, !dbg !669
  %4 = load double* %arrayidx40, align 8, !dbg !669, !tbaa !644
  %div41 = fdiv double %sub37, %4, !dbg !669
  %conv42 = fptrunc double %div41 to float, !dbg !669
  tail call void @llvm.dbg.value(metadata !{float %conv42}, i64 0, metadata !670), !dbg !671
  %mul.i112 = fmul float %conv42, %conv42, !dbg !672
  %conv44 = fpext float %mul.i112 to double, !dbg !669
  %mul45 = fmul double %conv44, -5.000000e-01, !dbg !669
  tail call void @llvm.dbg.value(metadata !{double %mul45}, i64 0, metadata !673) #3, !dbg !674
  %cmp.i101 = fcmp olt double %mul45, -7.000000e+01, !dbg !675
  br i1 %cmp.i101, label %myexp.exit105, label %if.else.i103, !dbg !675

if.else.i103:                                     ; preds = %myexp.exit117
  %call.i102 = tail call double @exp(double %mul45) #8, !dbg !676
  br label %myexp.exit105, !dbg !676

myexp.exit105:                                    ; preds = %myexp.exit117, %if.else.i103
  %retval.0.i104 = phi double [ %call.i102, %if.else.i103 ], [ 0.000000e+00, %myexp.exit117 ]
  tail call void @llvm.dbg.value(metadata !{double %retval.0.i104}, i64 0, metadata !186), !dbg !669
  %add52 = fadd double %conv9, %3, !dbg !677
  %div56 = fdiv double %add52, %4, !dbg !677
  %conv57 = fptrunc double %div56 to float, !dbg !677
  tail call void @llvm.dbg.value(metadata !{float %conv57}, i64 0, metadata !678), !dbg !679
  %mul.i100 = fmul float %conv57, %conv57, !dbg !680
  %conv59 = fpext float %mul.i100 to double, !dbg !677
  %mul60 = fmul double %conv59, -5.000000e-01, !dbg !677
  tail call void @llvm.dbg.value(metadata !{double %mul60}, i64 0, metadata !681) #3, !dbg !682
  %cmp.i = fcmp olt double %mul60, -7.000000e+01, !dbg !683
  br i1 %cmp.i, label %myexp.exit, label %if.else.i, !dbg !683

if.else.i:                                        ; preds = %myexp.exit105
  %call.i = tail call double @exp(double %mul60) #8, !dbg !684
  br label %myexp.exit, !dbg !684

myexp.exit:                                       ; preds = %myexp.exit105, %if.else.i
  %retval.0.i = phi double [ %call.i, %if.else.i ], [ 0.000000e+00, %myexp.exit105 ]
  tail call void @llvm.dbg.value(metadata !{double %retval.0.i}, i64 0, metadata !187), !dbg !677
  %arrayidx64 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 0, !dbg !685
  %5 = load double* %arrayidx64, align 16, !dbg !685, !tbaa !644
  %add65 = fadd double %retval.0.i97, %retval.0.i109, !dbg !685
  %mul66 = fmul double %add65, %5, !dbg !685
  %arrayidx69 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 2, !dbg !685
  %6 = load double* %arrayidx69, align 16, !dbg !685, !tbaa !644
  %mul70 = fmul double %retval.0.i116, %6, !dbg !685
  %add71 = fadd double %mul66, %mul70, !dbg !685
  %arrayidx74 = getelementptr inbounds [6 x [8 x double]]* @ptheta_incoh.ppp, i64 0, i64 %idxprom, i64 4, !dbg !685
  %7 = load double* %arrayidx74, align 16, !dbg !685, !tbaa !644
  %add75 = fadd double %retval.0.i104, %retval.0.i, !dbg !685
  %mul76 = fmul double %add75, %7, !dbg !685
  %add77 = fadd double %add71, %mul76, !dbg !685
  tail call void @llvm.dbg.value(metadata !{double %add77}, i64 0, metadata !188), !dbg !685
  %conv78 = fptrunc double %add77 to float, !dbg !686
  ret float %conv78, !dbg !686
}

; Function Attrs: nounwind optsize uwtable
define float @rand_theta_incoh(i32 %Eindex, i32* %seed) #0 {
entry:
  %y = alloca [2 x float], align 4
  call void @llvm.dbg.value(metadata !{i32 %Eindex}, i64 0, metadata !193), !dbg !687
  call void @llvm.dbg.value(metadata !{i32* %seed}, i64 0, metadata !194), !dbg !687
  call void @llvm.dbg.declare(metadata !{[2 x float]* %y}, metadata !197), !dbg !688
  call void @llvm.dbg.value(metadata !689, i64 0, metadata !196), !dbg !690
  %.b = load i1* @rand_theta_incoh.bFirst, align 1
  br i1 %.b, label %if.end63, label %if.then, !dbg !691

if.then:                                          ; preds = %entry
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 361, i32 6, i32 8) #8, !dbg !692
  %0 = bitcast i8* %call to float**, !dbg !692
  store float** %0, float*** @rand_theta_incoh.intp, align 8, !dbg !692, !tbaa !560
  store i32 0, i32* @rand_theta_incoh.i, align 4, !dbg !694, !tbaa !542
  br label %for.body, !dbg !694

for.body:                                         ; preds = %if.then, %for.inc31
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 363, i32 451, i32 4) #8, !dbg !696
  %1 = bitcast i8* %call2 to float*, !dbg !696
  %2 = load i32* @rand_theta_incoh.i, align 4, !dbg !696, !tbaa !542
  %idxprom = sext i32 %2 to i64, !dbg !696
  %3 = load float*** @rand_theta_incoh.intp, align 8, !dbg !696, !tbaa !560
  %arrayidx = getelementptr inbounds float** %3, i64 %idxprom, !dbg !696
  store float* %1, float** %arrayidx, align 8, !dbg !696, !tbaa !560
  %call3 = call float @ptheta_incoh(i32 %2, float 0.000000e+00) #10, !dbg !698
  %4 = load i32* @rand_theta_incoh.cur, align 4, !dbg !698, !tbaa !542
  %sub = sub nsw i32 1, %4, !dbg !698
  %idxprom4 = sext i32 %sub to i64, !dbg !698
  %arrayidx5 = getelementptr inbounds [2 x float]* %y, i64 0, i64 %idxprom4, !dbg !698
  store float %call3, float* %arrayidx5, align 4, !dbg !698, !tbaa !570
  store i32 1, i32* @rand_theta_incoh.j, align 4, !dbg !699, !tbaa !542
  %5 = load i32* @rand_theta_incoh.i, align 4, !dbg !701, !tbaa !542
  br label %for.body9, !dbg !699

for.body9:                                        ; preds = %for.body, %for.body9
  %6 = phi i32 [ %5, %for.body ], [ %9, %for.body9 ]
  %storemerge108113 = phi i32 [ 1, %for.body ], [ %inc, %for.body9 ]
  %conv10 = sitofp i32 %storemerge108113 to float, !dbg !701
  %mul = fmul float %conv10, 0x3FC99999A0000000, !dbg !701
  %call11 = call float @ptheta_incoh(i32 %6, float %mul) #10, !dbg !701
  %7 = load i32* @rand_theta_incoh.cur, align 4, !dbg !701, !tbaa !542
  %idxprom12 = sext i32 %7 to i64, !dbg !701
  %arrayidx13 = getelementptr inbounds [2 x float]* %y, i64 0, i64 %idxprom12, !dbg !701
  store float %call11, float* %arrayidx13, align 4, !dbg !701, !tbaa !570
  %8 = load i32* @rand_theta_incoh.j, align 4, !dbg !703, !tbaa !542
  %sub14 = add nsw i32 %8, -1, !dbg !703
  %idxprom15 = sext i32 %sub14 to i64, !dbg !703
  %9 = load i32* @rand_theta_incoh.i, align 4, !dbg !703, !tbaa !542
  %idxprom16 = sext i32 %9 to i64, !dbg !703
  %10 = load float*** @rand_theta_incoh.intp, align 8, !dbg !703, !tbaa !560
  %arrayidx17 = getelementptr inbounds float** %10, i64 %idxprom16, !dbg !703
  %11 = load float** %arrayidx17, align 8, !dbg !703, !tbaa !560
  %arrayidx18 = getelementptr inbounds float* %11, i64 %idxprom15, !dbg !703
  %12 = load float* %arrayidx18, align 4, !dbg !703, !tbaa !570
  %sub21 = sub nsw i32 1, %7, !dbg !703
  %idxprom22 = sext i32 %sub21 to i64, !dbg !703
  %arrayidx23 = getelementptr inbounds [2 x float]* %y, i64 0, i64 %idxprom22, !dbg !703
  %13 = load float* %arrayidx23, align 4, !dbg !703, !tbaa !570
  %add = fadd float %call11, %13, !dbg !703
  %mul24 = fmul float %add, 0x3FC99999A0000000, !dbg !703
  %add25 = fadd float %12, %mul24, !dbg !703
  %idxprom26 = sext i32 %8 to i64, !dbg !703
  %arrayidx29 = getelementptr inbounds float* %11, i64 %idxprom26, !dbg !703
  store float %add25, float* %arrayidx29, align 4, !dbg !703, !tbaa !570
  store i32 %sub21, i32* @rand_theta_incoh.cur, align 4, !dbg !704, !tbaa !542
  %inc = add nsw i32 %8, 1, !dbg !699
  store i32 %inc, i32* @rand_theta_incoh.j, align 4, !dbg !699, !tbaa !542
  %cmp7 = icmp slt i32 %inc, 451, !dbg !699
  br i1 %cmp7, label %for.body9, label %for.inc31, !dbg !699

for.inc31:                                        ; preds = %for.body9
  %inc32 = add nsw i32 %9, 1, !dbg !694
  store i32 %inc32, i32* @rand_theta_incoh.i, align 4, !dbg !694, !tbaa !542
  %cmp = icmp ult i32 %inc32, 6, !dbg !694
  br i1 %cmp, label %for.body, label %for.end33, !dbg !694

for.end33:                                        ; preds = %for.inc31
  %14 = load %struct._IO_FILE** @debug, align 8, !dbg !705, !tbaa !560
  %tobool34 = icmp eq %struct._IO_FILE* %14, null, !dbg !705
  br i1 %tobool34, label %if.end, label %if.then35, !dbg !705

if.then35:                                        ; preds = %for.end33
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %14), !dbg !706
  store i32 0, i32* @rand_theta_incoh.j, align 4, !dbg !708, !tbaa !542
  br label %for.body40, !dbg !708

for.body40:                                       ; preds = %if.then35, %for.end58
  %storemerge106111 = phi i32 [ 0, %if.then35 ], [ %inc61, %for.end58 ]
  %16 = load %struct._IO_FILE** @debug, align 8, !dbg !710, !tbaa !560
  %conv41 = sitofp i32 %storemerge106111 to float, !dbg !710
  %mul42 = fmul float %conv41, 0x3FC99999A0000000, !dbg !710
  %conv43 = fpext float %mul42 to double, !dbg !710
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([5 x i8]* @.str14, i64 0, i64 0), double %conv43) #8, !dbg !710
  store i32 0, i32* @rand_theta_incoh.i, align 4, !dbg !712, !tbaa !542
  %17 = load %struct._IO_FILE** @debug, align 8, !dbg !714, !tbaa !560
  br label %for.body49, !dbg !712

for.body49:                                       ; preds = %for.body40, %for.body49
  %18 = phi %struct._IO_FILE* [ %17, %for.body40 ], [ %24, %for.body49 ]
  %storemerge107110 = phi i32 [ 0, %for.body40 ], [ %inc57, %for.body49 ]
  %conv46 = sext i32 %storemerge107110 to i64, !dbg !712
  %19 = load i32* @rand_theta_incoh.j, align 4, !dbg !714, !tbaa !542
  %idxprom50 = sext i32 %19 to i64, !dbg !714
  %20 = load float*** @rand_theta_incoh.intp, align 8, !dbg !714, !tbaa !560
  %arrayidx52 = getelementptr inbounds float** %20, i64 %conv46, !dbg !714
  %21 = load float** %arrayidx52, align 8, !dbg !714, !tbaa !560
  %arrayidx53 = getelementptr inbounds float* %21, i64 %idxprom50, !dbg !714
  %22 = load float* %arrayidx53, align 4, !dbg !714, !tbaa !570
  %conv54 = fpext float %22 to double, !dbg !714
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), double %conv54) #8, !dbg !714
  %23 = load i32* @rand_theta_incoh.i, align 4, !dbg !712, !tbaa !542
  %inc57 = add nsw i32 %23, 1, !dbg !712
  store i32 %inc57, i32* @rand_theta_incoh.i, align 4, !dbg !712, !tbaa !542
  %cmp47 = icmp ult i32 %inc57, 6, !dbg !712
  %24 = load %struct._IO_FILE** @debug, align 8, !dbg !714, !tbaa !560
  br i1 %cmp47, label %for.body49, label %for.end58, !dbg !712

for.end58:                                        ; preds = %for.body49
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %24), !dbg !715
  %25 = load i32* @rand_theta_incoh.j, align 4, !dbg !708, !tbaa !542
  %inc61 = add nsw i32 %25, 1, !dbg !708
  store i32 %inc61, i32* @rand_theta_incoh.j, align 4, !dbg !708, !tbaa !542
  %cmp38 = icmp slt i32 %inc61, 450, !dbg !708
  br i1 %cmp38, label %for.body40, label %if.end, !dbg !708

if.end:                                           ; preds = %for.end58, %for.end33
  store i1 true, i1* @rand_theta_incoh.bFirst, align 1
  br label %if.end63, !dbg !716

if.end63:                                         ; preds = %entry, %if.end
  %call64 = call float @rando(i32* %seed) #8, !dbg !717
  call void @llvm.dbg.value(metadata !{float %call64}, i64 0, metadata !195), !dbg !717
  store i32 0, i32* @rand_theta_incoh.j, align 4, !dbg !718, !tbaa !542
  %idxprom69 = sext i32 %Eindex to i64, !dbg !718
  %26 = load float*** @rand_theta_incoh.intp, align 8, !dbg !718, !tbaa !560
  %arrayidx70 = getelementptr inbounds float** %26, i64 %idxprom69, !dbg !718
  %27 = load float** %arrayidx70, align 8, !dbg !718, !tbaa !560
  br label %land.rhs, !dbg !718

for.cond65:                                       ; preds = %land.rhs
  %28 = trunc i64 %indvars.iv.next to i32, !dbg !718
  store i32 %28, i32* @rand_theta_incoh.j, align 4, !dbg !718, !tbaa !542
  %cmp66 = icmp slt i32 %28, 450, !dbg !718
  br i1 %cmp66, label %land.rhs, label %for.end77, !dbg !718

land.rhs:                                         ; preds = %if.end63, %for.cond65
  %29 = phi i32 [ 0, %if.end63 ], [ %28, %for.cond65 ]
  %indvars.iv = phi i64 [ 0, %if.end63 ], [ %indvars.iv.next, %for.cond65 ]
  %arrayidx71 = getelementptr inbounds float* %27, i64 %indvars.iv, !dbg !718
  %30 = load float* %arrayidx71, align 4, !dbg !718, !tbaa !570
  %cmp72 = fcmp ogt float %call64, %30, !dbg !718
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !718
  br i1 %cmp72, label %for.cond65, label %for.end77

for.end77:                                        ; preds = %for.cond65, %land.rhs
  %31 = phi i32 [ %28, %for.cond65 ], [ %29, %land.rhs ]
  %sub78 = add nsw i32 %31, -1, !dbg !720
  %conv79 = sitofp i32 %sub78 to float, !dbg !720
  %idxprom81 = sext i32 %sub78 to i64, !dbg !720
  %arrayidx84 = getelementptr inbounds float* %27, i64 %idxprom81, !dbg !720
  %32 = load float* %arrayidx84, align 4, !dbg !720, !tbaa !570
  %sub85 = fsub float %call64, %32, !dbg !720
  %idxprom86 = sext i32 %31 to i64, !dbg !720
  %arrayidx89 = getelementptr inbounds float* %27, i64 %idxprom86, !dbg !720
  %33 = load float* %arrayidx89, align 4, !dbg !720, !tbaa !570
  %sub95 = fsub float %33, %32, !dbg !720
  %div = fdiv float %sub85, %sub95, !dbg !720
  %add96 = fadd float %conv79, %div, !dbg !720
  %mul97 = fmul float %add96, 0x3FC99999A0000000, !dbg !720
  ret float %mul97, !dbg !720
}

; Function Attrs: optsize
declare float @rando(i32*) #4

; Function Attrs: nounwind optsize uwtable
define void @rand_vector(float* nocapture %v, i32* %seed) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %v}, i64 0, metadata !205), !dbg !721
  tail call void @llvm.dbg.value(metadata !{i32* %seed}, i64 0, metadata !206), !dbg !721
  %call = tail call float @rando(i32* %seed) #8, !dbg !722
  %conv1 = fmul float %call, 1.800000e+02, !dbg !722
  tail call void @llvm.dbg.value(metadata !{float %conv1}, i64 0, metadata !207), !dbg !722
  %call2 = tail call float @rando(i32* %seed) #8, !dbg !723
  %conv5 = fmul float %call2, 3.600000e+02, !dbg !723
  tail call void @llvm.dbg.value(metadata !{float %conv5}, i64 0, metadata !208), !dbg !723
  tail call void @llvm.dbg.value(metadata !{float %conv5}, i64 0, metadata !724) #3, !dbg !726
  tail call void @llvm.dbg.value(metadata !{float %conv1}, i64 0, metadata !727) #3, !dbg !726
  tail call void @llvm.dbg.value(metadata !{float* %v}, i64 0, metadata !728) #3, !dbg !726
  %conv.i = fpext float %conv5 to double, !dbg !729
  %call.i = tail call double @cos(double %conv.i) #8, !dbg !729
  %conv1.i = fpext float %conv1 to double, !dbg !729
  %call2.i = tail call double @sin(double %conv1.i) #8, !dbg !729
  %mul.i = fmul double %call.i, %call2.i, !dbg !729
  %conv3.i = fptrunc double %mul.i to float, !dbg !729
  store float %conv3.i, float* %v, align 4, !dbg !729, !tbaa !570
  %call5.i = tail call double @sin(double %conv.i) #8, !dbg !731
  %call7.i = tail call double @sin(double %conv1.i) #8, !dbg !731
  %mul8.i = fmul double %call5.i, %call7.i, !dbg !731
  %conv9.i = fptrunc double %mul8.i to float, !dbg !731
  %arrayidx10.i = getelementptr inbounds float* %v, i64 1, !dbg !731
  store float %conv9.i, float* %arrayidx10.i, align 4, !dbg !731, !tbaa !570
  %call12.i = tail call double @cos(double %conv1.i) #8, !dbg !732
  %conv13.i = fptrunc double %call12.i to float, !dbg !732
  %arrayidx14.i = getelementptr inbounds float* %v, i64 2, !dbg !732
  store float %conv13.i, float* %arrayidx14.i, align 4, !dbg !732, !tbaa !570
  ret void, !dbg !733
}

; Function Attrs: nounwind optsize uwtable
define float @electron_cross_section(%struct._IO_FILE* nocapture %fp, float* nocapture %v, float %mass, i32 %nelec) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !213), !dbg !734
  tail call void @llvm.dbg.value(metadata !{float* %v}, i64 0, metadata !214), !dbg !734
  tail call void @llvm.dbg.value(metadata !{float %mass}, i64 0, metadata !215), !dbg !734
  tail call void @llvm.dbg.value(metadata !{i32 %nelec}, i64 0, metadata !216), !dbg !734
  tail call void @llvm.dbg.value(metadata !735, i64 0, metadata !228), !dbg !736
  %conv = fpext float %mass to double, !dbg !737
  %mul = fmul double %conv, 5.000000e-01, !dbg !737
  tail call void @llvm.dbg.value(metadata !{float* %v}, i64 0, metadata !738), !dbg !739
  tail call void @llvm.dbg.value(metadata !{float* %v}, i64 0, metadata !740), !dbg !739
  %0 = load float* %v, align 4, !dbg !741, !tbaa !570
  %mul.i = fmul float %0, %0, !dbg !741
  %arrayidx2.i = getelementptr inbounds float* %v, i64 1, !dbg !741
  %1 = load float* %arrayidx2.i, align 4, !dbg !741, !tbaa !570
  %mul4.i = fmul float %1, %1, !dbg !741
  %add.i = fadd float %mul.i, %mul4.i, !dbg !741
  %arrayidx5.i = getelementptr inbounds float* %v, i64 2, !dbg !741
  %2 = load float* %arrayidx5.i, align 4, !dbg !741, !tbaa !570
  %mul7.i = fmul float %2, %2, !dbg !741
  %add8.i = fadd float %add.i, %mul7.i, !dbg !741
  %conv1 = fpext float %add8.i to double, !dbg !737
  %mul2 = fmul double %mul, %conv1, !dbg !737
  %conv3 = fptrunc double %mul2 to float, !dbg !737
  tail call void @llvm.dbg.value(metadata !{float %conv3}, i64 0, metadata !217), !dbg !737
  tail call void @llvm.dbg.value(metadata !742, i64 0, metadata !222), !dbg !743
  tail call void @llvm.dbg.value(metadata !742, i64 0, metadata !218), !dbg !744
  tail call void @llvm.dbg.value(metadata !742, i64 0, metadata !219), !dbg !745
  %conv4 = sitofp i32 %nelec to float, !dbg !746
  tail call void @llvm.dbg.value(metadata !{float %conv4}, i64 0, metadata !223), !dbg !746
  tail call void @llvm.dbg.value(metadata !747, i64 0, metadata !221), !dbg !748
  %div = fdiv float %conv3, 0x409484A900000000, !dbg !749
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !224), !dbg !749
  tail call void @llvm.dbg.value(metadata !747, i64 0, metadata !225), !dbg !750
  tail call void @llvm.dbg.value(metadata !735, i64 0, metadata !751), !dbg !753
  %conv9 = fpext float %conv4 to double, !dbg !752
  %mul10 = fmul double %conv9, 0x3FA204BEBAEEAAAF, !dbg !752
  tail call void @llvm.dbg.value(metadata !747, i64 0, metadata !751), !dbg !753
  %conv15 = fptrunc double %mul10 to float, !dbg !752
  tail call void @llvm.dbg.value(metadata !{float %conv15}, i64 0, metadata !220), !dbg !752
  %conv16 = fpext float %div to double, !dbg !754
  %call17 = tail call double @log(double %conv16) #8, !dbg !754
  %conv18 = fptrunc double %call17 to float, !dbg !754
  tail call void @llvm.dbg.value(metadata !{float %conv18}, i64 0, metadata !226), !dbg !754
  %add = fadd float %div, 1.000000e+00, !dbg !755
  %add19 = fadd float %add, 1.000000e+00, !dbg !755
  %div20 = fdiv float %conv15, %add19, !dbg !755
  %conv21 = fpext float %div20 to double, !dbg !755
  %conv24 = fpext float %conv18 to double, !dbg !755
  %mul25 = fmul double %conv24, 5.000000e-01, !dbg !755
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !756), !dbg !757
  %mul.i52 = fmul float %div, %div, !dbg !758
  %div27 = fdiv float 1.000000e+00, %mul.i52, !dbg !755
  %sub = fsub float 1.000000e+00, %div27, !dbg !755
  %conv28 = fpext float %sub to double, !dbg !755
  %mul29 = fmul double %mul25, %conv28, !dbg !755
  %div31 = fdiv float 1.000000e+00, %div, !dbg !755
  %sub32 = fsub float 1.000000e+00, %div31, !dbg !755
  %div34 = fdiv float %conv18, %add, !dbg !755
  %sub35 = fsub float %sub32, %div34, !dbg !755
  %conv37 = fpext float %sub35 to double, !dbg !755
  %add38 = fadd double %mul29, %conv37, !dbg !755
  %mul39 = fmul double %conv21, %add38, !dbg !755
  %conv40 = fptrunc double %mul39 to float, !dbg !755
  tail call void @llvm.dbg.value(metadata !{float %conv40}, i64 0, metadata !227), !dbg !755
  ret float %conv40, !dbg !759
}

; Function Attrs: nounwind optsize
declare double @log(double) #2

; Function Attrs: nounwind optsize uwtable
define i32 @khole_decay(%struct._IO_FILE* nocapture %fp, %struct.t_cross_atom* nocapture %ca, [3 x float]* nocapture %x, [3 x float]* nocapture %v, i32 %ion, i32* %seed, float %dt) #0 {
entry:
  %dv = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !238), !dbg !760
  call void @llvm.dbg.value(metadata !{%struct.t_cross_atom* %ca}, i64 0, metadata !239), !dbg !760
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !240), !dbg !760
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !241), !dbg !760
  call void @llvm.dbg.value(metadata !{i32 %ion}, i64 0, metadata !242), !dbg !760
  call void @llvm.dbg.value(metadata !{i32* %seed}, i64 0, metadata !243), !dbg !761
  call void @llvm.dbg.value(metadata !{float %dt}, i64 0, metadata !244), !dbg !761
  call void @llvm.dbg.declare(metadata !{[3 x float]* %dv}, metadata !245), !dbg !762
  %vAuger = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 6, !dbg !763
  %0 = load float* %vAuger, align 4, !dbg !763, !tbaa !570
  %cmp = fcmp olt float %0, 0.000000e+00, !dbg !763
  %z.i.phi.trans.insert = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 0
  %.pre = load i32* %z.i.phi.trans.insert, align 4, !dbg !764, !tbaa !542
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !763

lor.lhs.false:                                    ; preds = %entry
  %idxprom = sext i32 %.pre to i64, !dbg !763
  %tau = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom, i32 3, !dbg !763
  %1 = load float* %tau, align 4, !dbg !763, !tbaa !570
  %fabsf = call float @fabsf(float %1) #11, !dbg !763
  %2 = fpext float %fabsf to double, !dbg !763
  %cmp1 = fcmp olt double %2, 1.200000e-38, !dbg !763
  br i1 %cmp1, label %if.then, label %if.end, !dbg !763

if.then:                                          ; preds = %entry, %lor.lhs.false
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !765, !tbaa !560
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %3}, i64 0, metadata !767) #3, !dbg !768
  call void @llvm.dbg.value(metadata !{%struct.t_cross_atom* %ca}, i64 0, metadata !769) #3, !dbg !768
  call void @llvm.dbg.value(metadata !{i32 %ion}, i64 0, metadata !770) #3, !dbg !768
  call void @llvm.dbg.value(metadata !771, i64 0, metadata !772) #3, !dbg !768
  call void @llvm.dbg.value(metadata !773, i64 0, metadata !774) #3, !dbg !768
  %n.i = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !764
  %4 = load i32* %n.i, align 4, !dbg !764, !tbaa !542
  %k.i = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !764
  %5 = load i32* %k.i, align 4, !dbg !764, !tbaa !542
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 451, i32 %ion, i32 %.pre, i32 %4, i32 %5) #8, !dbg !764
  call void @exit(i32 1) #12, !dbg !775
  unreachable, !dbg !775

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call float @rando(i32* %seed) #8, !dbg !776
  %6 = load i32* %z.i.phi.trans.insert, align 4, !dbg !776, !tbaa !542
  %idxprom5 = sext i32 %6 to i64, !dbg !776
  %tau7 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom5, i32 3, !dbg !776
  %7 = load float* %tau7, align 4, !dbg !776, !tbaa !570
  %div = fdiv float %dt, %7, !dbg !776
  %cmp8 = fcmp olt float %call3, %div, !dbg !776
  br i1 %cmp8, label %if.then10, label %return, !dbg !776

if.then10:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE** @debug, align 8, !dbg !777, !tbaa !560
  %tobool = icmp eq %struct._IO_FILE* %8, null, !dbg !777
  br i1 %tobool, label %if.end13, label %if.then11, !dbg !777

if.then11:                                        ; preds = %if.then10
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str17, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %8), !dbg !779
  br label %if.end13, !dbg !779

if.end13:                                         ; preds = %if.then10, %if.then11
  %n = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 1, !dbg !780
  %10 = load i32* %n, align 4, !dbg !780, !tbaa !542
  %inc = add nsw i32 %10, 1, !dbg !780
  store i32 %inc, i32* %n, align 4, !dbg !780, !tbaa !542
  %k = getelementptr inbounds %struct.t_cross_atom* %ca, i64 0, i32 2, !dbg !781
  %11 = load i32* %k, align 4, !dbg !781, !tbaa !542
  %dec = add nsw i32 %11, -1, !dbg !781
  store i32 %dec, i32* %k, align 4, !dbg !781, !tbaa !542
  %arraydecay = getelementptr inbounds [3 x float]* %dv, i64 0, i64 0, !dbg !782
  call void @rand_vector(float* %arraydecay, i32* %seed) #10, !dbg !782
  %12 = load float* %vAuger, align 4, !dbg !783, !tbaa !570
  call void @llvm.dbg.value(metadata !{float %12}, i64 0, metadata !246), !dbg !783
  %13 = load %struct._IO_FILE** @debug, align 8, !dbg !784, !tbaa !560
  %tobool15 = icmp eq %struct._IO_FILE* %13, null, !dbg !784
  br i1 %tobool15, label %if.end13.if.end25_crit_edge, label %if.then16, !dbg !784

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  %.pre43 = load float* %arraydecay, align 4, !dbg !785, !tbaa !570
  %arrayidx2.i.phi.trans.insert = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1
  %.pre44 = load float* %arrayidx2.i.phi.trans.insert, align 4, !dbg !787, !tbaa !570
  %arrayidx5.i.phi.trans.insert = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2
  %.pre45 = load float* %arrayidx5.i.phi.trans.insert, align 4, !dbg !788, !tbaa !570
  br label %if.end25, !dbg !784

if.then16:                                        ; preds = %if.end13
  %conv17 = fpext float %12 to double, !dbg !789
  %14 = load float* %arraydecay, align 4, !dbg !789, !tbaa !570
  %conv19 = fpext float %14 to double, !dbg !789
  %arrayidx20 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1, !dbg !789
  %15 = load float* %arrayidx20, align 4, !dbg !789, !tbaa !570
  %conv21 = fpext float %15 to double, !dbg !789
  %arrayidx22 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2, !dbg !789
  %16 = load float* %arrayidx22, align 4, !dbg !789, !tbaa !570
  %conv23 = fpext float %16 to double, !dbg !789
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([48 x i8]* @.str18, i64 0, i64 0), double %conv17, double %conv19, double %conv21, double %conv23) #8, !dbg !789
  br label %if.end25, !dbg !789

if.end25:                                         ; preds = %if.end13.if.end25_crit_edge, %if.then16
  %17 = phi float [ %.pre45, %if.end13.if.end25_crit_edge ], [ %16, %if.then16 ]
  %18 = phi float [ %.pre44, %if.end13.if.end25_crit_edge ], [ %15, %if.then16 ]
  %19 = phi float [ %.pre43, %if.end13.if.end25_crit_edge ], [ %14, %if.then16 ]
  tail call void @llvm.dbg.value(metadata !{float %12}, i64 0, metadata !790), !dbg !791
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !792), !dbg !791
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !793), !dbg !791
  %mul.i = fmul float %12, %19, !dbg !785
  store float %mul.i, float* %arraydecay, align 4, !dbg !785, !tbaa !570
  %arrayidx2.i = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1, !dbg !787
  %mul3.i = fmul float %12, %18, !dbg !787
  store float %mul3.i, float* %arrayidx2.i, align 4, !dbg !787, !tbaa !570
  %arrayidx5.i = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2, !dbg !788
  %mul6.i = fmul float %12, %17, !dbg !788
  store float %mul6.i, float* %arrayidx5.i, align 4, !dbg !788, !tbaa !570
  %idxprom28 = sext i32 %ion to i64, !dbg !794
  %arraydecay30 = getelementptr inbounds [3 x float]* %v, i64 %idxprom28, i64 0, !dbg !794
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay30}, i64 0, metadata !795), !dbg !796
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !797), !dbg !796
  %20 = load float* %arraydecay30, align 4, !dbg !798, !tbaa !570
  %add.i = fadd float %20, %mul.i, !dbg !798
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !799), !dbg !798
  %arrayidx2.i41 = getelementptr inbounds [3 x float]* %v, i64 %idxprom28, i64 1, !dbg !800
  %21 = load float* %arrayidx2.i41, align 4, !dbg !800, !tbaa !570
  %add4.i = fadd float %21, %mul3.i, !dbg !800
  tail call void @llvm.dbg.value(metadata !{float %add4.i}, i64 0, metadata !801), !dbg !800
  %arrayidx5.i42 = getelementptr inbounds [3 x float]* %v, i64 %idxprom28, i64 2, !dbg !802
  %22 = load float* %arrayidx5.i42, align 4, !dbg !802, !tbaa !570
  %add7.i = fadd float %mul6.i, %22, !dbg !802
  tail call void @llvm.dbg.value(metadata !{float %add7.i}, i64 0, metadata !803), !dbg !802
  store float %add.i, float* %arraydecay30, align 4, !dbg !804, !tbaa !570
  store float %add4.i, float* %arrayidx2.i41, align 4, !dbg !805, !tbaa !570
  store float %add7.i, float* %arrayidx5.i42, align 4, !dbg !806, !tbaa !570
  br label %return, !dbg !807

return:                                           ; preds = %if.end, %if.end25
  %retval.0 = phi i32 [ 1, %if.end25 ], [ 0, %if.end ]
  ret i32 %retval.0, !dbg !808
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #7

; Function Attrs: nounwind optsize uwtable
define void @ionize(%struct._IO_FILE* nocapture %fp, %struct.t_mdatoms* nocapture %md, i8*** nocapture %atomname, float %t, %struct.t_inputrec* nocapture %ir, [3 x float]* nocapture %x, [3 x float]* nocapture %v, i32 %start, i32 %end, [3 x float]* nocapture %box, %struct.t_commrec* %cr) #0 {
entry:
  %pcoll = alloca [2 x float], align 4
  %dv = alloca [3 x float], align 4
  %ddv = alloca [3 x float], align 4
  %nbuf = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !377), !dbg !809
  call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !378), !dbg !809
  call void @llvm.dbg.value(metadata !{i8*** %atomname}, i64 0, metadata !379), !dbg !809
  call void @llvm.dbg.value(metadata !{float %t}, i64 0, metadata !380), !dbg !809
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !381), !dbg !809
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !382), !dbg !810
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !383), !dbg !810
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !384), !dbg !810
  call void @llvm.dbg.value(metadata !{i32 %end}, i64 0, metadata !385), !dbg !810
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !386), !dbg !810
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !387), !dbg !810
  call void @llvm.dbg.value(metadata !601, i64 0, metadata !389), !dbg !811
  call void @llvm.dbg.declare(metadata !{[2 x float]* %pcoll}, metadata !393), !dbg !812
  call void @llvm.dbg.declare(metadata !{[3 x float]* %dv}, metadata !398), !dbg !813
  call void @llvm.dbg.declare(metadata !{[3 x float]* %ddv}, metadata !399), !dbg !813
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !400), !dbg !814
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %nbuf}, metadata !416), !dbg !815
  %.b = load i1* @ionize.bFirst, align 1
  br i1 %.b, label %if.end89, label %if.then, !dbg !816

if.then:                                          ; preds = %entry
  %userreal1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76, !dbg !817
  %0 = load float* %userreal1, align 4, !dbg !817, !tbaa !570
  store float %0, float* @ionize.t0, align 4, !dbg !817, !tbaa !570
  %userreal2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77, !dbg !819
  %1 = load float* %userreal2, align 4, !dbg !819, !tbaa !570
  store float %1, float* @ionize.nphot, align 4, !dbg !819, !tbaa !570
  %userreal3 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78, !dbg !820
  %2 = load float* %userreal3, align 4, !dbg !820, !tbaa !570
  store float %2, float* @ionize.width, align 4, !dbg !820, !tbaa !570
  %userreal4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79, !dbg !821
  %3 = load float* %userreal4, align 4, !dbg !821, !tbaa !570
  store float %3, float* @ionize.rho, align 4, !dbg !821, !tbaa !570
  %userint1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72, !dbg !822
  %4 = load i32* %userint1, align 4, !dbg !822, !tbaa !542
  store i32 %4, i32* @ionize_seed, align 4, !dbg !822, !tbaa !542
  %userint2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 73, !dbg !823
  %5 = load i32* %userint2, align 4, !dbg !823, !tbaa !542
  store i32 %5, i32* @ionize.ephot, align 4, !dbg !823, !tbaa !542
  %userint3 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 74, !dbg !824
  %6 = load i32* %userint3, align 4, !dbg !824, !tbaa !542
  store i32 %6, i32* @ionize.mode, align 4, !dbg !824, !tbaa !542
  %userint4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 75, !dbg !825
  %7 = load i32* %userint4, align 4, !dbg !825, !tbaa !542
  %conv = sitofp i32 %7 to double, !dbg !825
  %mul = fmul double %conv, 1.000000e-03, !dbg !825
  %conv1 = fptrunc double %mul to float, !dbg !825
  store float %conv1, float* @ionize.interval, align 4, !dbg !825, !tbaa !570
  %cmp = fcmp ole float %2, 0.000000e+00, !dbg !826
  %cmp3 = fcmp ole float %1, 0.000000e+00, !dbg !826
  %or.cond = or i1 %cmp, %cmp3, !dbg !826
  br i1 %or.cond, label %if.then5, label %if.end, !dbg !826

if.then5:                                         ; preds = %if.then
  %conv6 = fpext float %2 to double, !dbg !827
  %conv7 = fpext float %1 to double, !dbg !827
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([100 x i8]* @.str24, i64 0, i64 0), double %conv6, double %conv7) #8, !dbg !827
  %.pre799 = load i32* @ionize.mode, align 4, !dbg !828, !tbaa !542
  br label %if.end, !dbg !827

if.end:                                           ; preds = %if.then, %if.then5
  %8 = phi i32 [ %6, %if.then ], [ %.pre799, %if.then5 ]
  %9 = icmp ugt i32 %8, 2, !dbg !828
  br i1 %9, label %if.then13, label %if.end14, !dbg !828

if.then13:                                        ; preds = %if.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str25, i64 0, i64 0), i32 2) #8, !dbg !829
  %.pr = load i32* @ionize.mode, align 4, !dbg !830, !tbaa !542
  br label %if.end14, !dbg !829

if.end14:                                         ; preds = %if.end, %if.then13
  %10 = phi i32 [ %8, %if.end ], [ %.pr, %if.then13 ], !dbg !830
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
  ], !dbg !830

sw.bb:                                            ; preds = %if.end14
  %11 = load float* @ionize.nphot, align 4, !dbg !831, !tbaa !570
  %conv15 = fpext float %11 to double, !dbg !831
  %12 = load float* @ionize.rho, align 4, !dbg !831, !tbaa !570
  %div = fmul float %12, 5.000000e-01, !dbg !831
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !833), !dbg !834
  %mul.i = fmul float %div, %div, !dbg !835
  %conv16 = fpext float %mul.i to double, !dbg !831
  %mul17 = fmul double %conv16, 0x400921FB54442D18, !dbg !831
  %div18 = fdiv double %conv15, %mul17, !dbg !831
  %mul19 = fmul double %div18, 1.000000e-10, !dbg !831
  %13 = load float* @ionize.width, align 4, !dbg !831, !tbaa !570
  %conv21 = fpext float %13 to double, !dbg !831
  %mul23 = fmul double %conv21, 0x40040D931FF62705, !dbg !831
  %div24 = fdiv double %mul19, %mul23, !dbg !831
  %conv25 = fptrunc double %div24 to float, !dbg !831
  store float %conv25, float* @ionize.imax, align 4, !dbg !831, !tbaa !570
  br label %sw.epilog, !dbg !836

sw.bb26:                                          ; preds = %if.end14
  %14 = load float* @ionize.nphot, align 4, !dbg !837, !tbaa !570
  %conv27 = fpext float %14 to double, !dbg !837
  %15 = load float* @ionize.rho, align 4, !dbg !837, !tbaa !570
  %div28 = fmul float %15, 5.000000e-01, !dbg !837
  tail call void @llvm.dbg.value(metadata !{float %div28}, i64 0, metadata !838), !dbg !839
  %mul.i723 = fmul float %div28, %div28, !dbg !840
  %conv30 = fpext float %mul.i723 to double, !dbg !837
  %mul31 = fmul double %conv30, 0x400921FB54442D18, !dbg !837
  %div32 = fdiv double %conv27, %mul31, !dbg !837
  %mul33 = fmul double %div32, 1.000000e-10, !dbg !837
  %16 = load float* @ionize.width, align 4, !dbg !837, !tbaa !570
  %conv35 = fpext float %16 to double, !dbg !837
  %mul37 = fmul double %conv35, 0x40040D931FF62705, !dbg !837
  %div38 = fdiv double %mul33, %mul37, !dbg !837
  %conv39 = fptrunc double %div38 to float, !dbg !837
  store float %conv39, float* @ionize.imax, align 4, !dbg !837, !tbaa !570
  br label %sw.epilog, !dbg !841

sw.epilog:                                        ; preds = %if.end14, %sw.bb26, %sw.bb
  %17 = load i32* @ionize_seed, align 4, !dbg !842, !tbaa !542
  %cmp40 = icmp eq i32 %17, 0, !dbg !842
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !842

if.then42:                                        ; preds = %sw.epilog
  %call43 = call i32 @make_seed() #8, !dbg !843
  store i32 %call43, i32* @ionize_seed, align 4, !dbg !843, !tbaa !542
  br label %if.end44, !dbg !843

if.end44:                                         ; preds = %if.then42, %sw.epilog
  %18 = phi i32 [ %call43, %if.then42 ], [ %17, %sw.epilog ]
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !844
  %19 = load i32* %nnodes, align 4, !dbg !844, !tbaa !542
  %cmp45 = icmp sgt i32 %19, 1, !dbg !844
  br i1 %cmp45, label %for.cond.preheader, label %lor.lhs.false47, !dbg !844

lor.lhs.false47:                                  ; preds = %if.end44
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !844
  %20 = load i32* %nthreads, align 4, !dbg !844, !tbaa !542
  %cmp48 = icmp sgt i32 %20, 1, !dbg !844
  br i1 %cmp48, label %for.cond.preheader, label %for.cond58.preheader, !dbg !844

for.cond.preheader:                               ; preds = %lor.lhs.false47, %if.end44
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !845
  %21 = load i32* %nodeid, align 4, !dbg !845, !tbaa !542
  %cmp51776 = icmp sgt i32 %21, 0, !dbg !845
  br i1 %cmp51776, label %for.body, label %for.end, !dbg !845

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.0777 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %call53 = call float @rando(i32* @ionize_seed) #8, !dbg !848
  %mul54 = fmul float %call53, 0x41E0000000000000, !dbg !848
  %conv55 = fptosi float %mul54 to i32, !dbg !848
  store i32 %conv55, i32* @ionize_seed, align 4, !dbg !848, !tbaa !542
  %inc = add nsw i32 %i.0777, 1, !dbg !845
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !404), !dbg !845
  %22 = load i32* %nodeid, align 4, !dbg !845, !tbaa !542
  %cmp51 = icmp slt i32 %inc, %22, !dbg !845
  br i1 %cmp51, label %for.body, label %for.end, !dbg !845

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %23 = phi i32 [ %18, %for.cond.preheader ], [ %conv55, %for.body ]
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([52 x i8]* @.str26, i64 0, i64 0), i32 %23) #8, !dbg !849
  br label %for.cond58.preheader, !dbg !850

for.cond58.preheader:                             ; preds = %lor.lhs.false47, %for.end
  store i32 0, i32* @ionize.Eindex, align 4, !dbg !851, !tbaa !542
  %24 = load i32* @ionize.ephot, align 4, !dbg !851, !tbaa !542
  br label %land.rhs, !dbg !851

for.cond58:                                       ; preds = %land.rhs
  %25 = trunc i64 %indvars.iv.next796 to i32, !dbg !851
  store i32 %25, i32* @ionize.Eindex, align 4, !dbg !851, !tbaa !542
  %cmp60 = icmp ult i32 %25, 6, !dbg !851
  br i1 %cmp60, label %land.rhs, label %for.end67, !dbg !851

land.rhs:                                         ; preds = %for.cond58.preheader, %for.cond58
  %.pr738 = phi i32 [ 0, %for.cond58.preheader ], [ %25, %for.cond58 ]
  %indvars.iv795 = phi i64 [ 0, %for.cond58.preheader ], [ %indvars.iv.next796, %for.cond58 ]
  %storemerge775 = phi i32 [ 0, %for.cond58.preheader ], [ %inc66, %for.cond58 ]
  %arrayidx = getelementptr inbounds [6 x i32]* @Energies, i64 0, i64 %indvars.iv795, !dbg !851
  %26 = load i32* %arrayidx, align 4, !dbg !851, !tbaa !542
  %cmp62 = icmp eq i32 %26, %24, !dbg !851
  %indvars.iv.next796 = add i64 %indvars.iv795, 1, !dbg !851
  %inc66 = add nsw i32 %storemerge775, 1, !dbg !851
  br i1 %cmp62, label %if.end72, label %for.cond58

for.end67:                                        ; preds = %for.cond58
  %cmp69 = icmp eq i32 %inc66, 6, !dbg !853
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !853

if.then71:                                        ; preds = %for.end67
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str27, i64 0, i64 0), i32 %24) #8, !dbg !854
  %.pre801 = load i32* @ionize.Eindex, align 4, !dbg !855, !tbaa !542
  br label %if.end72, !dbg !854

if.end72:                                         ; preds = %land.rhs, %if.then71, %for.end67
  %27 = phi i32 [ %.pre801, %if.then71 ], [ %25, %for.end67 ], [ %.pr738, %land.rhs ]
  %call73 = call %struct.t_cross_atom* @mk_cross_atom(%struct._IO_FILE* %fp, %struct.t_mdatoms* %md, i8*** %atomname, i32 %27) #10, !dbg !855
  store %struct.t_cross_atom* %call73, %struct.t_cross_atom** @ionize.ca, align 8, !dbg !855, !tbaa !560
  store i32 0, i32* @ionize.dq_tot, align 4, !dbg !856, !tbaa !542
  store i32 0, i32* @ionize.nkd_tot, align 4, !dbg !857, !tbaa !542
  %call74 = call %struct._IO_FILE* @xvgropen(i8* getelementptr inbounds ([11 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0)) #8, !dbg !858
  store %struct._IO_FILE* %call74, %struct._IO_FILE** @ionize.xvg, align 8, !dbg !858, !tbaa !560
  call void @xvgr_legend(%struct._IO_FILE* %call74, i32 5, i8** getelementptr inbounds ([5 x i8*]* @ionize.leg, i64 0, i64 0)) #8, !dbg !859
  %call75 = call %struct._IO_FILE* @ffopen(i8* getelementptr inbounds ([11 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str33, i64 0, i64 0)) #8, !dbg !860
  store %struct._IO_FILE* %call75, %struct._IO_FILE** @ionize.ion, align 8, !dbg !860, !tbaa !560
  %28 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str34, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %fp), !dbg !861
  %29 = load float* @ionize.imax, align 4, !dbg !862, !tbaa !570
  %conv77 = fpext float %29 to double, !dbg !862
  %30 = load float* @ionize.t0, align 4, !dbg !862, !tbaa !570
  %conv78 = fpext float %30 to double, !dbg !862
  %31 = load float* @ionize.width, align 4, !dbg !862, !tbaa !570
  %conv79 = fpext float %31 to double, !dbg !862
  %32 = load i32* @ionize_seed, align 4, !dbg !862, !tbaa !542
  %33 = load float* @ionize.nphot, align 4, !dbg !862, !tbaa !570
  %conv80 = fpext float %33 to double, !dbg !862
  %34 = load float* @ionize.rho, align 4, !dbg !862, !tbaa !570
  %conv81 = fpext float %34 to double, !dbg !862
  %35 = load i32* @ionize.ephot, align 4, !dbg !862, !tbaa !542
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([102 x i8]* @.str35, i64 0, i64 0), double %conv77, double %conv78, double %conv79, i32 %32, double %conv80, double %conv81, i32 %35) #8, !dbg !862
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([99 x i8]* @.str36, i64 0, i64 0), double 5.120000e+02, double 9.400000e+05, double 0x41124C41D4FDF3B6) #8, !dbg !863
  %36 = load float* @ionize.interval, align 4, !dbg !864, !tbaa !570
  %conv84 = fpext float %36 to double, !dbg !864
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str37, i64 0, i64 0), double %conv84) #8, !dbg !864
  %37 = load i32* @ionize.Eindex, align 4, !dbg !865, !tbaa !542
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str38, i64 0, i64 0), i32 %37) #8, !dbg !865
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([45 x i8]* @.str39, i64 0, i64 0), i32 %start, i32 %end) #8, !dbg !866
  %call88 = call i32 @fflush(%struct._IO_FILE* %fp) #8, !dbg !867
  store i1 true, i1* @ionize.bFirst, align 1
  br label %if.end89, !dbg !868

if.end89:                                         ; preds = %entry, %if.end72
  %38 = load float* @ionize.t0, align 4, !dbg !869, !tbaa !570
  call void @llvm.dbg.value(metadata !{float %38}, i64 0, metadata !394), !dbg !869
  %39 = load float* @ionize.interval, align 4, !dbg !870, !tbaa !570
  %cmp90 = fcmp ogt float %39, 0.000000e+00, !dbg !870
  br i1 %cmp90, label %while.cond.preheader, label %if.end100, !dbg !870

while.cond.preheader:                             ; preds = %if.end89
  %conv93 = fpext float %t to double, !dbg !871
  %conv94767 = fpext float %38 to double, !dbg !871
  %conv95768 = fpext float %39 to double, !dbg !871
  %mul96769 = fmul double %conv95768, 5.000000e-01, !dbg !871
  %add770 = fadd double %conv94767, %mul96769, !dbg !871
  %cmp97771 = fcmp ogt double %conv93, %add770, !dbg !871
  br i1 %cmp97771, label %while.body, label %if.end100, !dbg !871

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %tmax.0772 = phi float [ %add99, %while.body ], [ %38, %while.cond.preheader ]
  %add99 = fadd float %tmax.0772, %39, !dbg !872
  call void @llvm.dbg.value(metadata !{float %add99}, i64 0, metadata !394), !dbg !872
  %conv94 = fpext float %add99 to double, !dbg !871
  %add = fadd double %conv94, %mul96769, !dbg !871
  %cmp97 = fcmp ogt double %conv93, %add, !dbg !871
  br i1 %cmp97, label %while.body, label %if.end100, !dbg !871

if.end100:                                        ; preds = %while.cond.preheader, %while.body, %if.end89
  %tmax.1 = phi float [ %38, %if.end89 ], [ %38, %while.cond.preheader ], [ %add99, %while.body ]
  %40 = load float* @ionize.imax, align 4, !dbg !873, !tbaa !570
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !873
  %41 = load float* %delta_t, align 4, !dbg !873, !tbaa !570
  %mul101 = fmul float %40, %41, !dbg !873
  %conv102 = fpext float %mul101 to double, !dbg !873
  %sub = fsub float %t, %tmax.1, !dbg !873
  %42 = load float* @ionize.width, align 4, !dbg !873, !tbaa !570
  %div103 = fdiv float %sub, %42, !dbg !873
  tail call void @llvm.dbg.value(metadata !{float %div103}, i64 0, metadata !874), !dbg !875
  %mul.i724 = fmul float %div103, %div103, !dbg !876
  %conv105 = fpext float %mul.i724 to double, !dbg !873
  %mul106 = fmul double %conv105, -5.000000e-01, !dbg !873
  %call107 = call double @exp(double %mul106) #8, !dbg !873
  %mul108 = fmul double %conv102, %call107, !dbg !873
  %conv109 = fptrunc double %mul108 to float, !dbg !873
  call void @llvm.dbg.value(metadata !{float %conv109}, i64 0, metadata !390), !dbg !873
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !410), !dbg !877
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !412), !dbg !878
  %arrayidx111 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !879
  %43 = load float* %arrayidx111, align 4, !dbg !879, !tbaa !570
  %conv114 = fmul float %43, 5.000000e-01, !dbg !879
  call void @llvm.dbg.value(metadata !{float %conv114}, i64 0, metadata !395), !dbg !879
  %arrayidx116 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !880
  %44 = load float* %arrayidx116, align 4, !dbg !880, !tbaa !570
  %conv119 = fmul float %44, 5.000000e-01, !dbg !880
  call void @llvm.dbg.value(metadata !{float %conv119}, i64 0, metadata !396), !dbg !880
  %45 = load float* @ionize.rho, align 4, !dbg !881, !tbaa !570
  tail call void @llvm.dbg.value(metadata !{float %45}, i64 0, metadata !882), !dbg !883
  %mul.i726 = fmul float %45, %45, !dbg !884
  call void @llvm.dbg.value(metadata !{float %mul.i726}, i64 0, metadata !397), !dbg !881
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !885
  %46 = load i32* %nr, align 4, !dbg !885, !tbaa !542
  %call121 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 585, i32 %46, i32 4) #8, !dbg !885
  %47 = bitcast i8* %call121 to i32*, !dbg !885
  call void @llvm.dbg.value(metadata !{i32* %47}, i64 0, metadata !413), !dbg !885
  %48 = load i32* %nr, align 4, !dbg !886, !tbaa !542
  %call123 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 586, i32 %48, i32 4) #8, !dbg !886
  %49 = bitcast i8* %call123 to i32*, !dbg !886
  call void @llvm.dbg.value(metadata !{i32* %49}, i64 0, metadata !414), !dbg !886
  %50 = load i32* %nr, align 4, !dbg !887, !tbaa !542
  %call125 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 587, i32 %50, i32 4) #8, !dbg !887
  %51 = bitcast i8* %call125 to i32*, !dbg !887
  call void @llvm.dbg.value(metadata !{i32* %51}, i64 0, metadata !415), !dbg !887
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !404), !dbg !888
  %cmp127758 = icmp slt i32 %start, %end, !dbg !888
  br i1 %cmp127758, label %for.cond130.preheader.lr.ph, label %for.end491, !dbg !888

for.cond130.preheader.lr.ph:                      ; preds = %if.end100
  %arrayidx143 = getelementptr inbounds [2 x float]* %pcoll, i64 0, i64 0, !dbg !889
  %arrayidx145 = getelementptr inbounds [2 x float]* %pcoll, i64 0, i64 1, !dbg !889
  %conv154 = fpext float %t to double, !dbg !890
  %arraydecay = getelementptr inbounds [3 x float]* %dv, i64 0, i64 0, !dbg !891
  %arrayidx1.i = getelementptr inbounds [3 x float]* %dv, i64 0, i64 1, !dbg !892
  %arrayidx2.i = getelementptr inbounds [3 x float]* %dv, i64 0, i64 2, !dbg !894
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4, !dbg !895
  %arraydecay297 = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 0, !dbg !897
  %arrayidx10.i = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 1, !dbg !898
  %arrayidx14.i = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 2, !dbg !899
  %chargeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6, !dbg !900
  %chargeB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7, !dbg !903
  %52 = sext i32 %start to i64
  br label %for.cond130.preheader, !dbg !888

for.cond130.preheader:                            ; preds = %for.cond130.preheader.lr.ph, %for.inc489
  %indvars.iv792 = phi i64 [ %52, %for.cond130.preheader.lr.ph ], [ %indvars.iv.next793, %for.inc489 ]
  %E_lost.0764 = phi float [ 0.000000e+00, %for.cond130.preheader.lr.ph ], [ %E_lost.3, %for.inc489 ]
  %nkdecay.0761 = phi i32 [ 0, %for.cond130.preheader.lr.ph ], [ %nkdecay.1.lcssa, %for.inc489 ]
  %dq.0759 = phi i32 [ 0, %for.cond130.preheader.lr.ph ], [ %dq.3, %for.inc489 ]
  br label %for.body133, !dbg !904

for.body133:                                      ; preds = %for.body133, %for.cond130.preheader
  %indvars.iv781 = phi i64 [ 0, %for.cond130.preheader ], [ %indvars.iv.next782, %for.body133 ]
  %53 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !906, !tbaa !560
  %arrayidx135 = getelementptr inbounds %struct.t_cross_atom* %53, i64 %indvars.iv792, !dbg !906
  %54 = trunc i64 %indvars.iv781 to i32, !dbg !906
  %call136 = call float @xray_cross_section(i32 %54, %struct.t_cross_atom* %arrayidx135) #10, !dbg !906
  %mul137 = fmul float %conv109, %call136, !dbg !906
  %arrayidx139 = getelementptr inbounds [2 x float]* %pcoll, i64 0, i64 %indvars.iv781, !dbg !906
  store float %mul137, float* %arrayidx139, align 4, !dbg !906, !tbaa !570
  %indvars.iv.next782 = add i64 %indvars.iv781, 1, !dbg !904
  %lftr.wideiv = trunc i64 %indvars.iv.next782 to i32, !dbg !904
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !904
  br i1 %exitcond, label %for.end142, label %for.body133, !dbg !904

for.end142:                                       ; preds = %for.body133
  %55 = load float* %arrayidx143, align 4, !dbg !889, !tbaa !570
  %sub144 = fsub float 1.000000e+00, %55, !dbg !889
  %56 = load float* %arrayidx145, align 4, !dbg !889, !tbaa !570
  %sub146 = fsub float 1.000000e+00, %56, !dbg !889
  %mul147 = fmul float %sub144, %sub146, !dbg !889
  %sub148 = fsub float 1.000000e+00, %mul147, !dbg !889
  call void @llvm.dbg.value(metadata !{float %sub148}, i64 0, metadata !391), !dbg !889
  %57 = load %struct._IO_FILE** @debug, align 8, !dbg !907, !tbaa !560
  %tobool149 = icmp ne %struct._IO_FILE* %57, null, !dbg !907
  %58 = trunc i64 %indvars.iv792 to i32, !dbg !907
  %cmp150 = icmp eq i32 %58, 0, !dbg !907
  %or.cond715 = and i1 %tobool149, %cmp150, !dbg !907
  br i1 %or.cond715, label %if.then152, label %if.end156, !dbg !907

if.then152:                                       ; preds = %for.end142
  %conv153 = fpext float %sub148 to double, !dbg !890
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0), double %conv153, double %conv154) #8, !dbg !890
  br label %if.end156, !dbg !890

if.end156:                                        ; preds = %for.end142, %if.then152
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !403), !dbg !908
  %59 = load i32* @ionize.mode, align 4, !dbg !909, !tbaa !542
  switch i32 %59, label %sw.default [
    i32 0, label %sw.bb157
    i32 1, label %if.end456
  ], !dbg !909

sw.bb157:                                         ; preds = %if.end156
  %call158 = call float @rando(i32* @ionize_seed) #8, !dbg !910
  %cmp159 = fcmp olt float %call158, %sub148, !dbg !910
  br i1 %cmp159, label %land.lhs.true161, label %if.end456, !dbg !910

land.lhs.true161:                                 ; preds = %sw.bb157
  %60 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !910, !tbaa !560
  %n = getelementptr inbounds %struct.t_cross_atom* %60, i64 %indvars.iv792, i32 1, !dbg !910
  %61 = load i32* %n, align 4, !dbg !910, !tbaa !542
  %z = getelementptr inbounds %struct.t_cross_atom* %60, i64 %indvars.iv792, i32 0, !dbg !910
  %62 = load i32* %z, align 4, !dbg !910, !tbaa !542
  %cmp166 = icmp slt i32 %61, %62, !dbg !910
  br i1 %cmp166, label %land.rhs168, label %if.end456, !dbg !910

land.rhs168:                                      ; preds = %land.lhs.true161
  %arrayidx171 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv792, i64 0, !dbg !912
  %63 = load float* %arrayidx171, align 4, !dbg !912, !tbaa !570
  %sub172 = fsub float %63, %conv114, !dbg !912
  tail call void @llvm.dbg.value(metadata !{float %sub172}, i64 0, metadata !913), !dbg !914
  %mul.i729 = fmul float %sub172, %sub172, !dbg !915
  %arrayidx176 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv792, i64 1, !dbg !912
  %64 = load float* %arrayidx176, align 4, !dbg !912, !tbaa !570
  %sub177 = fsub float %64, %conv119, !dbg !912
  tail call void @llvm.dbg.value(metadata !{float %sub177}, i64 0, metadata !913), !dbg !914
  %mul.i730 = fmul float %sub177, %sub177, !dbg !915
  %add179 = fadd float %mul.i729, %mul.i730, !dbg !912
  %cmp180 = fcmp olt float %add179, %mul.i726, !dbg !912
  br i1 %cmp180, label %if.then186, label %if.end456, !dbg !916

sw.default:                                       ; preds = %if.end156
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([41 x i8]* @.str44, i64 0, i64 0), i32 %59, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 614) #8, !dbg !917
  br label %if.end456

if.then186:                                       ; preds = %land.rhs168
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !918), !dbg !919
  store float 0.000000e+00, float* %arraydecay, align 4, !dbg !920, !tbaa !570
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !dbg !892, !tbaa !570
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !dbg !894, !tbaa !570
  %add190 = fadd float %55, %56, !dbg !921
  %div191 = fdiv float %55, %add190, !dbg !921
  call void @llvm.dbg.value(metadata !{float %div191}, i64 0, metadata !392), !dbg !921
  %call192 = call float @rando(i32* @ionize_seed) #8, !dbg !922
  %cmp193 = fcmp olt float %call192, %div191, !dbg !922
  %65 = zext i1 %cmp193 to i32, !dbg !923
  %. = xor i32 %65, 1, !dbg !923
  %66 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !924, !tbaa !560
  %z.i731 = getelementptr inbounds %struct.t_cross_atom* %66, i64 %indvars.iv792, i32 0, !dbg !925
  %67 = load i32* %z.i731, align 4, !dbg !925, !tbaa !542
  %cmp.i = icmp slt i32 %67, 3, !dbg !925
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !925

if.then.i:                                        ; preds = %if.then186
  %n.i732 = getelementptr inbounds %struct.t_cross_atom* %66, i64 %indvars.iv792, i32 1, !dbg !926
  %68 = load i32* %n.i732, align 4, !dbg !926, !tbaa !542
  %sub.i = sub nsw i32 %67, %68, !dbg !926
  %k.i734.phi.trans.insert = getelementptr inbounds %struct.t_cross_atom* %66, i64 %indvars.iv792, i32 2
  %.pre = load i32* %k.i734.phi.trans.insert, align 4, !dbg !927, !tbaa !542
  br label %number_K.exit, !dbg !926

if.else.i:                                        ; preds = %if.then186
  %k.i733 = getelementptr inbounds %struct.t_cross_atom* %66, i64 %indvars.iv792, i32 2, !dbg !929
  %69 = load i32* %k.i733, align 4, !dbg !929, !tbaa !542
  %sub2.i = sub nsw i32 2, %69, !dbg !929
  %n.i737.phi.trans.insert = getelementptr inbounds %struct.t_cross_atom* %66, i64 %indvars.iv792, i32 1
  %.pre797 = load i32* %n.i737.phi.trans.insert, align 4, !dbg !927, !tbaa !542
  br label %number_K.exit, !dbg !929

number_K.exit:                                    ; preds = %if.then.i, %if.else.i
  %70 = phi i32 [ %68, %if.then.i ], [ %.pre797, %if.else.i ]
  %71 = phi i32 [ %.pre, %if.then.i ], [ %69, %if.else.i ]
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %sub2.i, %if.else.i ]
  call void @llvm.dbg.value(metadata !{i32 %retval.0.i}, i64 0, metadata !408), !dbg !924
  %sub.i735 = add nsw i32 %71, -2, !dbg !927
  %add.i = add nsw i32 %sub.i735, %67, !dbg !927
  %sub1.i = sub i32 %add.i, %70, !dbg !927
  call void @llvm.dbg.value(metadata !{i32 %sub1.i}, i64 0, metadata !409), !dbg !928
  %cmp203 = icmp eq i32 %retval.0.i, 0, !dbg !930
  br i1 %cmp203, label %lor.end, label %lor.rhs, !dbg !930

lor.rhs:                                          ; preds = %number_K.exit
  %cmp205 = icmp sgt i32 %sub1.i, 0, !dbg !930
  br i1 %cmp205, label %land.rhs207, label %lor.end, !dbg !930

land.rhs207:                                      ; preds = %lor.rhs
  %call208 = call float @rando(i32* @ionize_seed) #8, !dbg !930
  %72 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !930, !tbaa !560
  %arrayidx210 = getelementptr inbounds %struct.t_cross_atom* %72, i64 %indvars.iv792, !dbg !930
  %call211 = call float @prob_K(i32 %., %struct.t_cross_atom* %arrayidx210) #10, !dbg !930
  %cmp212 = fcmp ogt float %call208, %call211, !dbg !930
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs207, %number_K.exit
  %73 = phi i1 [ true, %number_K.exit ], [ false, %lor.rhs ], [ %cmp212, %land.rhs207 ]
  br i1 %cmp193, label %sw.bb216, label %sw.bb316, !dbg !931

sw.bb216:                                         ; preds = %lor.end
  %call217 = call float @gauss(float 7.000000e+01, float 2.600000e+01, i32* @ionize_seed) #8, !dbg !932
  %conv218 = fpext float %call217 to double, !dbg !932
  %mul219 = fmul double %conv218, 0x3F91DF46A2529D39, !dbg !932
  %conv220 = fptrunc double %mul219 to float, !dbg !932
  call void @llvm.dbg.value(metadata !{float %conv220}, i64 0, metadata !418), !dbg !932
  %call221 = call float @rando(i32* @ionize_seed) #8, !dbg !933
  %conv222 = fpext float %call221 to double, !dbg !933
  %mul223 = fmul double %conv222, 0x401921FB54442D18, !dbg !933
  %conv224 = fptrunc double %mul223 to float, !dbg !933
  call void @llvm.dbg.value(metadata !{float %conv224}, i64 0, metadata !424), !dbg !933
  %74 = load i32* @ionize.ephot, align 4, !dbg !934, !tbaa !542
  %conv227 = sitofp i32 %74 to float, !dbg !934
  %75 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !934, !tbaa !560
  %z230 = getelementptr inbounds %struct.t_cross_atom* %75, i64 %indvars.iv792, i32 0, !dbg !934
  %76 = load i32* %z230, align 4, !dbg !934, !tbaa !542
  %idxprom231 = sext i32 %76 to i64, !dbg !934
  br i1 %73, label %if.then226, label %if.else240, !dbg !935

if.then226:                                       ; preds = %sw.bb216
  %E_L = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom231, i32 1, !dbg !934
  %77 = load float* %E_L, align 4, !dbg !934, !tbaa !570
  %n235 = getelementptr inbounds %struct.t_cross_atom* %75, i64 %indvars.iv792, i32 1, !dbg !934
  %78 = load i32* %n235, align 4, !dbg !934, !tbaa !542
  %add236 = add nsw i32 %78, 1, !dbg !934
  %conv237 = sitofp i32 %add236 to float, !dbg !934
  %mul238 = fmul float %77, %conv237, !dbg !934
  br label %if.end258, !dbg !934

if.else240:                                       ; preds = %sw.bb216
  %E_K = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom231, i32 0, !dbg !936
  %79 = load float* %E_K, align 16, !dbg !936, !tbaa !570
  %cmp251 = icmp sgt i32 %76, 2, !dbg !938
  %cmp254 = icmp sgt i32 %sub1.i, 0, !dbg !938
  %or.cond719 = and i1 %cmp251, %cmp254, !dbg !938
  call void @llvm.dbg.value(metadata !939, i64 0, metadata !401), !dbg !940
  %.721 = zext i1 %or.cond719 to i32, !dbg !938
  br label %if.end258, !dbg !938

if.end258:                                        ; preds = %if.else240, %if.then226
  %bKHole.0 = phi i32 [ 0, %if.then226 ], [ %.721, %if.else240 ]
  %mul238.pn = phi float [ %mul238, %if.then226 ], [ %79, %if.else240 ]
  %E_lost.1 = fsub float %conv227, %mul238.pn, !dbg !934
  %80 = load %struct._IO_FILE** @debug, align 8, !dbg !941, !tbaa !560
  %tobool259 = icmp eq %struct._IO_FILE* %80, null, !dbg !941
  br i1 %tobool259, label %if.end280, label %cond.false, !dbg !941

cond.false:                                       ; preds = %if.end258
  %idxprom266 = zext i1 %73 to i64, !dbg !942
  %arrayidx267 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom266, !dbg !942
  %81 = load i8** %arrayidx267, align 8, !dbg !942, !tbaa !560
  %idxprom275711 = zext i32 %bKHole.0 to i64, !dbg !942
  %arrayidx276 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom275711, !dbg !942
  %82 = load i8** %arrayidx276, align 8, !dbg !942, !tbaa !560
  %call279 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([48 x i8]* @.str45, i64 0, i64 0), i32 %58, i32 %retval.0.i, i32 %sub1.i, i8* %81, i8* %82) #8, !dbg !942
  br label %if.end280, !dbg !942

if.end280:                                        ; preds = %if.end258, %cond.false
  %cmp281 = fcmp olt float %E_lost.1, 0.000000e+00, !dbg !943
  br i1 %cmp281, label %if.end424, label %if.else284, !dbg !943

if.else284:                                       ; preds = %if.end280
  %83 = load float** %massT, align 8, !dbg !895, !tbaa !560
  %arrayidx286 = getelementptr inbounds float* %83, i64 %indvars.iv792, !dbg !895
  %84 = load float* %arrayidx286, align 4, !dbg !895, !tbaa !570
  %conv287 = fpext float %84 to double, !dbg !895
  %mul288 = fmul double %conv287, 9.400000e+05, !dbg !895
  %div289 = fdiv double 5.120000e+02, %mul288, !dbg !895
  %mul290 = fmul float %E_lost.1, 2.000000e+00, !dbg !944
  %conv291 = fpext float %mul290 to double, !dbg !944
  %div292 = fmul double %conv291, 1.953125e-03, !dbg !944
  %call293 = call double @sqrt(double %div292) #8, !dbg !944
  %mul294 = fmul double %call293, 0x41124C41D4FDF3B6, !dbg !944
  %mul295 = fmul double %div289, %mul294, !dbg !944
  %conv296 = fptrunc double %mul295 to float, !dbg !944
  call void @llvm.dbg.value(metadata !{float %conv296}, i64 0, metadata !388), !dbg !944
  call void @llvm.dbg.value(metadata !{float %conv224}, i64 0, metadata !945) #3, !dbg !946
  call void @llvm.dbg.value(metadata !{float %conv220}, i64 0, metadata !947) #3, !dbg !946
  call void @llvm.dbg.value(metadata !{float* %arraydecay297}, i64 0, metadata !948) #3, !dbg !946
  %conv.i = fpext float %conv224 to double, !dbg !949
  %call.i727 = call double @cos(double %conv.i) #8, !dbg !949
  %conv1.i = fpext float %conv220 to double, !dbg !949
  %call2.i = call double @sin(double %conv1.i) #8, !dbg !949
  %mul.i728 = fmul double %call.i727, %call2.i, !dbg !949
  %conv3.i = fptrunc double %mul.i728 to float, !dbg !949
  store float %conv3.i, float* %arraydecay297, align 4, !dbg !949, !tbaa !570
  %call5.i = call double @sin(double %conv.i) #8, !dbg !898
  %call7.i = call double @sin(double %conv1.i) #8, !dbg !898
  %mul8.i = fmul double %call5.i, %call7.i, !dbg !898
  %conv9.i = fptrunc double %mul8.i to float, !dbg !898
  store float %conv9.i, float* %arrayidx10.i, align 4, !dbg !898, !tbaa !570
  %call12.i = call double @cos(double %conv1.i) #8, !dbg !899
  %conv13.i = fptrunc double %call12.i to float, !dbg !899
  store float %conv13.i, float* %arrayidx14.i, align 4, !dbg !899, !tbaa !570
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !407), !dbg !950
  br label %for.body301, !dbg !950

for.body301:                                      ; preds = %for.body301.for.body301_crit_edge, %if.else284
  %85 = phi float [ %conv3.i, %if.else284 ], [ %.pre803, %for.body301.for.body301_crit_edge ]
  %indvars.iv783 = phi i64 [ 0, %if.else284 ], [ %indvars.iv.next784, %for.body301.for.body301_crit_edge ]
  %mul304 = fmul float %conv296, %85, !dbg !952
  %arrayidx306 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 %indvars.iv783, !dbg !952
  %86 = load float* %arrayidx306, align 4, !dbg !952, !tbaa !570
  %sub307 = fsub float %86, %mul304, !dbg !952
  store float %sub307, float* %arrayidx306, align 4, !dbg !952, !tbaa !570
  %indvars.iv.next784 = add i64 %indvars.iv783, 1, !dbg !950
  %lftr.wideiv785 = trunc i64 %indvars.iv.next784 to i32, !dbg !950
  %exitcond786 = icmp eq i32 %lftr.wideiv785, 3, !dbg !950
  br i1 %exitcond786, label %for.end310, label %for.body301.for.body301_crit_edge, !dbg !950

for.body301.for.body301_crit_edge:                ; preds = %for.body301
  %arrayidx303.phi.trans.insert = getelementptr inbounds [3 x float]* %ddv, i64 0, i64 %indvars.iv.next784
  %.pre803 = load float* %arrayidx303.phi.trans.insert, align 4, !dbg !952, !tbaa !570
  br label %for.body301, !dbg !950

for.end310:                                       ; preds = %for.body301
  %87 = load %struct._IO_FILE** @debug, align 8, !dbg !953, !tbaa !560
  %tobool311 = icmp eq %struct._IO_FILE* %87, null, !dbg !953
  br i1 %tobool311, label %if.then387, label %if.then312, !dbg !953

if.then312:                                       ; preds = %for.end310
  call void @pr_rvec(%struct._IO_FILE* %87, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0), float* %arraydecay, i32 3) #8, !dbg !954
  br label %if.then387, !dbg !954

sw.bb316:                                         ; preds = %lor.end
  %88 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !955, !tbaa !560
  %arrayidx321 = getelementptr inbounds %struct.t_cross_atom* %88, i64 %indvars.iv792, !dbg !955
  br i1 %73, label %if.then319, label %if.else332, !dbg !956

if.then319:                                       ; preds = %sw.bb316
  %n322 = getelementptr inbounds %struct.t_cross_atom* %88, i64 %indvars.iv792, i32 1, !dbg !955
  %89 = load i32* %n322, align 4, !dbg !955, !tbaa !542
  %add323 = add nsw i32 %89, 1, !dbg !955
  %conv324 = sitofp i32 %add323 to float, !dbg !955
  %z327 = getelementptr inbounds %struct.t_cross_atom* %arrayidx321, i64 0, i32 0, !dbg !955
  %90 = load i32* %z327, align 4, !dbg !955, !tbaa !542
  %idxprom328 = sext i32 %90 to i64, !dbg !955
  %E_L330 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom328, i32 1, !dbg !955
  %91 = load float* %E_L330, align 4, !dbg !955, !tbaa !570
  %mul331 = fmul float %conv324, %91, !dbg !955
  call void @llvm.dbg.value(metadata !{float %mul331}, i64 0, metadata !427), !dbg !955
  br label %if.end349, !dbg !955

if.else332:                                       ; preds = %sw.bb316
  %z335 = getelementptr inbounds %struct.t_cross_atom* %arrayidx321, i64 0, i32 0, !dbg !957
  %92 = load i32* %z335, align 4, !dbg !957, !tbaa !542
  %idxprom336 = sext i32 %92 to i64, !dbg !957
  %E_K338 = getelementptr inbounds [27 x %struct.t_recoil]* @recoil, i64 0, i64 %idxprom336, i32 0, !dbg !957
  %93 = load float* %E_K338, align 16, !dbg !957, !tbaa !570
  call void @llvm.dbg.value(metadata !{float %93}, i64 0, metadata !427), !dbg !957
  %cmp342 = icmp sgt i32 %92, 2, !dbg !959
  %cmp345 = icmp sgt i32 %sub1.i, 0, !dbg !959
  %or.cond720 = and i1 %cmp342, %cmp345, !dbg !959
  call void @llvm.dbg.value(metadata !939, i64 0, metadata !401), !dbg !960
  br label %if.end349, !dbg !959

if.end349:                                        ; preds = %if.else332, %if.then319
  %bKHole.1 = phi i1 [ false, %if.then319 ], [ %or.cond720, %if.else332 ]
  %Ebind.0 = phi float [ %mul331, %if.then319 ], [ %93, %if.else332 ]
  %94 = load i32* @ionize.Eindex, align 4, !dbg !961, !tbaa !542
  %call350 = call float @rand_theta_incoh(i32 %94, i32* @ionize_seed) #10, !dbg !961
  %conv351 = fpext float %call350 to double, !dbg !961
  %mul352 = fmul double %conv351, 0x3F91DF46A2529D39, !dbg !961
  %conv353 = fptrunc double %mul352 to float, !dbg !961
  call void @llvm.dbg.value(metadata !{float %conv353}, i64 0, metadata !425), !dbg !961
  %95 = load i32* @ionize.ephot, align 4, !dbg !962, !tbaa !542
  %conv354 = sitofp i32 %95 to float, !dbg !962
  tail call void @llvm.dbg.value(metadata !{float %conv354}, i64 0, metadata !963), !dbg !964
  %mul.i725 = fmul float %conv354, %conv354, !dbg !965
  %div356 = fmul float %mul.i725, 1.953125e-03, !dbg !962
  %conv357 = fpext float %div356 to double, !dbg !962
  %mul358 = fmul float %conv353, 2.000000e+00, !dbg !962
  %conv359 = fpext float %mul358 to double, !dbg !962
  %call360 = call double @cos(double %conv359) #8, !dbg !962
  %sub361 = fsub double 1.000000e+00, %call360, !dbg !962
  %mul362 = fmul double %sub361, %conv357, !dbg !962
  %conv363 = fptrunc double %mul362 to float, !dbg !962
  call void @llvm.dbg.value(metadata !{float %conv363}, i64 0, metadata !428), !dbg !962
  %cmp364 = fcmp ole float %Ebind.0, %conv363, !dbg !966
  %cmp364. = and i1 %bKHole.1, %cmp364, !dbg !967
  %land.ext370 = zext i1 %cmp364. to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext370}, i64 0, metadata !401), !dbg !814
  %96 = load %struct._IO_FILE** @debug, align 8, !dbg !968, !tbaa !560
  %tobool371 = icmp eq %struct._IO_FILE* %96, null, !dbg !968
  br i1 %tobool371, label %sw.epilog385, label %if.end376, !dbg !968

if.end376:                                        ; preds = %if.end349
  %conv373 = fpext float %Ebind.0 to double, !dbg !969
  %conv374 = fpext float %conv363 to double, !dbg !969
  %call375 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([34 x i8]* @.str48, i64 0, i64 0), double %conv373, double %conv374) #8, !dbg !969
  %.pre798 = load %struct._IO_FILE** @debug, align 8, !dbg !970, !tbaa !560
  %tobool377 = xor i1 %cmp364, true, !dbg !972
  %tobool379 = icmp ne %struct._IO_FILE* %.pre798, null, !dbg !970
  %or.cond566 = and i1 %tobool379, %tobool377, !dbg !972
  br i1 %or.cond566, label %if.then380, label %sw.epilog385, !dbg !972

if.then380:                                       ; preds = %if.end376
  call void @pr_rvec(%struct._IO_FILE* %.pre798, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str49, i64 0, i64 0), float* %arraydecay, i32 3) #8, !dbg !973
  br label %sw.epilog385, !dbg !973

sw.epilog385:                                     ; preds = %if.end349, %if.end376, %if.then380
  br i1 %cmp364, label %if.then387, label %if.end424, !dbg !974

if.then387:                                       ; preds = %if.then312, %for.end310, %sw.epilog385
  %E_lost.2744 = phi float [ %E_lost.0764, %sw.epilog385 ], [ %E_lost.1, %for.end310 ], [ %E_lost.1, %if.then312 ]
  %bKHole.2741 = phi i32 [ %land.ext370, %sw.epilog385 ], [ %bKHole.0, %for.end310 ], [ %bKHole.0, %if.then312 ]
  %97 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !975, !tbaa !560
  %n390 = getelementptr inbounds %struct.t_cross_atom* %97, i64 %indvars.iv792, i32 1, !dbg !975
  %98 = load i32* %n390, align 4, !dbg !975, !tbaa !542
  %z393 = getelementptr inbounds %struct.t_cross_atom* %97, i64 %indvars.iv792, i32 0, !dbg !975
  %99 = load i32* %z393, align 4, !dbg !975, !tbaa !542
  %cmp394 = icmp slt i32 %98, %99, !dbg !975
  br i1 %cmp394, label %if.then396, label %if.end412, !dbg !975

if.then396:                                       ; preds = %if.then387
  %100 = load float** %chargeA, align 8, !dbg !900, !tbaa !560
  %arrayidx398 = getelementptr inbounds float* %100, i64 %indvars.iv792, !dbg !900
  %101 = load float* %arrayidx398, align 4, !dbg !900, !tbaa !570
  %conv401 = fadd float %101, 1.000000e+00, !dbg !900
  store float %conv401, float* %arrayidx398, align 4, !dbg !900, !tbaa !570
  %102 = load float** %chargeB, align 8, !dbg !903, !tbaa !560
  %arrayidx403 = getelementptr inbounds float* %102, i64 %indvars.iv792, !dbg !903
  %103 = load float* %arrayidx403, align 4, !dbg !903, !tbaa !570
  %conv406 = fadd float %103, 1.000000e+00, !dbg !903
  store float %conv406, float* %arrayidx403, align 4, !dbg !903, !tbaa !570
  %inc410 = add nsw i32 %98, 1, !dbg !976
  store i32 %inc410, i32* %n390, align 4, !dbg !976, !tbaa !542
  %inc411 = add nsw i32 %dq.0759, 1, !dbg !977
  call void @llvm.dbg.value(metadata !{i32 %inc411}, i64 0, metadata !410), !dbg !977
  br label %if.end412, !dbg !978

if.end412:                                        ; preds = %if.then387, %if.then396
  %dq.1 = phi i32 [ %inc411, %if.then396 ], [ %dq.0759, %if.then387 ]
  %104 = load %struct._IO_FILE** @debug, align 8, !dbg !979, !tbaa !560
  %tobool413 = icmp eq %struct._IO_FILE* %104, null, !dbg !979
  br i1 %tobool413, label %if.end424, label %if.then414, !dbg !979

if.then414:                                       ; preds = %if.end412
  %105 = load float* %arraydecay, align 4, !dbg !980, !tbaa !570
  %conv416 = fpext float %105 to double, !dbg !980
  %106 = load float* %arrayidx1.i, align 4, !dbg !980, !tbaa !570
  %conv418 = fpext float %106 to double, !dbg !980
  %107 = load float* %arrayidx2.i, align 4, !dbg !980, !tbaa !570
  %conv420 = fpext float %107 to double, !dbg !980
  %108 = load i32* @ionize.ephot, align 4, !dbg !980, !tbaa !542
  %conv421 = fpext float %E_lost.2744 to double, !dbg !980
  %call422 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([65 x i8]* @.str51, i64 0, i64 0), i32 %58, double %conv416, double %conv418, double %conv420, i32 %108, double %conv421) #8, !dbg !980
  br label %if.end424, !dbg !982

if.end424:                                        ; preds = %if.end280, %if.end412, %if.then414, %sw.epilog385
  %tobool386746 = phi i1 [ true, %if.then414 ], [ true, %if.end412 ], [ false, %sw.epilog385 ], [ false, %if.end280 ]
  %E_lost.2745 = phi float [ %E_lost.2744, %if.then414 ], [ %E_lost.2744, %if.end412 ], [ %E_lost.0764, %sw.epilog385 ], [ 0.000000e+00, %if.end280 ]
  %bKHole.2740 = phi i32 [ %bKHole.2741, %if.then414 ], [ %bKHole.2741, %if.end412 ], [ %land.ext370, %sw.epilog385 ], [ 0, %if.end280 ]
  %dq.2 = phi i32 [ %dq.1, %if.then414 ], [ %dq.1, %if.end412 ], [ %dq.0759, %sw.epilog385 ], [ %dq.0759, %if.end280 ]
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !407), !dbg !983
  br label %for.body428, !dbg !983

for.body428:                                      ; preds = %for.body428, %if.end424
  %indvars.iv787 = phi i64 [ 0, %if.end424 ], [ %indvars.iv.next788, %for.body428 ]
  %arrayidx430 = getelementptr inbounds [3 x float]* %dv, i64 0, i64 %indvars.iv787, !dbg !985
  %109 = load float* %arrayidx430, align 4, !dbg !985, !tbaa !570
  %arrayidx434 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv792, i64 %indvars.iv787, !dbg !985
  %110 = load float* %arrayidx434, align 4, !dbg !985, !tbaa !570
  %add435 = fadd float %109, %110, !dbg !985
  store float %add435, float* %arrayidx434, align 4, !dbg !985, !tbaa !570
  %indvars.iv.next788 = add i64 %indvars.iv787, 1, !dbg !983
  %lftr.wideiv789 = trunc i64 %indvars.iv.next788 to i32, !dbg !983
  %exitcond790 = icmp eq i32 %lftr.wideiv789, 3, !dbg !983
  br i1 %exitcond790, label %for.end438, label %for.body428, !dbg !983

for.end438:                                       ; preds = %for.body428
  %tobool439 = icmp eq i32 %bKHole.2740, 0, !dbg !986
  br i1 %tobool439, label %if.else448, label %if.then440, !dbg !986

if.then440:                                       ; preds = %for.end438
  %111 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !987, !tbaa !560
  %k443 = getelementptr inbounds %struct.t_cross_atom* %111, i64 %indvars.iv792, i32 2, !dbg !987
  %112 = load i32* %k443, align 4, !dbg !987, !tbaa !542
  %inc444 = add nsw i32 %112, 1, !dbg !987
  store i32 %inc444, i32* %k443, align 4, !dbg !987, !tbaa !542
  %arrayidx446 = getelementptr inbounds i32* %49, i64 %indvars.iv792, !dbg !989
  %113 = load i32* %arrayidx446, align 4, !dbg !989, !tbaa !542
  %inc447 = add nsw i32 %113, 1, !dbg !989
  store i32 %inc447, i32* %arrayidx446, align 4, !dbg !989, !tbaa !542
  br label %if.end456, !dbg !990

if.else448:                                       ; preds = %for.end438
  br i1 %tobool386746, label %if.then450, label %if.end456, !dbg !991

if.then450:                                       ; preds = %if.else448
  %arrayidx452 = getelementptr inbounds i32* %47, i64 %indvars.iv792, !dbg !992
  %114 = load i32* %arrayidx452, align 4, !dbg !992, !tbaa !542
  %inc453 = add nsw i32 %114, 1, !dbg !992
  store i32 %inc453, i32* %arrayidx452, align 4, !dbg !992, !tbaa !542
  br label %if.end456, !dbg !992

if.end456:                                        ; preds = %if.else448, %sw.bb157, %if.end156, %land.lhs.true161, %sw.default, %if.then440, %if.then450, %land.rhs168
  %dq.3 = phi i32 [ %dq.2, %if.then440 ], [ %dq.2, %if.then450 ], [ %dq.0759, %land.rhs168 ], [ %dq.0759, %sw.default ], [ %dq.0759, %land.lhs.true161 ], [ %dq.0759, %if.end156 ], [ %dq.0759, %sw.bb157 ], [ %dq.2, %if.else448 ]
  %E_lost.3 = phi float [ %E_lost.2745, %if.then440 ], [ %E_lost.2745, %if.then450 ], [ %E_lost.0764, %land.rhs168 ], [ %E_lost.0764, %sw.default ], [ %E_lost.0764, %land.lhs.true161 ], [ %E_lost.0764, %if.end156 ], [ %E_lost.0764, %sw.bb157 ], [ %E_lost.2745, %if.else448 ]
  %115 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !993, !tbaa !560
  %k459 = getelementptr inbounds %struct.t_cross_atom* %115, i64 %indvars.iv792, i32 2, !dbg !993
  %116 = load i32* %k459, align 4, !dbg !993, !tbaa !542
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !411), !dbg !993
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !406), !dbg !994
  %cmp461755 = icmp sgt i32 %116, 0, !dbg !994
  br i1 %cmp461755, label %for.body463.lr.ph, label %for.end477, !dbg !994

for.body463.lr.ph:                                ; preds = %if.end456
  %arrayidx472 = getelementptr inbounds i32* %51, i64 %indvars.iv792, !dbg !996
  br label %for.body463, !dbg !994

for.body463:                                      ; preds = %for.inc475.for.body463_crit_edge, %for.body463.lr.ph
  %117 = phi %struct.t_cross_atom* [ %115, %for.body463.lr.ph ], [ %.pre802, %for.inc475.for.body463_crit_edge ]
  %nkdecay.1757 = phi i32 [ %nkdecay.0761, %for.body463.lr.ph ], [ %nkdecay.2, %for.inc475.for.body463_crit_edge ]
  %kk.0756 = phi i32 [ 1, %for.body463.lr.ph ], [ %phitmp, %for.inc475.for.body463_crit_edge ]
  %arrayidx465 = getelementptr inbounds %struct.t_cross_atom* %117, i64 %indvars.iv792, !dbg !998
  %118 = load float* %delta_t, align 4, !dbg !998, !tbaa !570
  %call467 = call i32 @khole_decay(%struct._IO_FILE* undef, %struct.t_cross_atom* %arrayidx465, [3 x float]* undef, [3 x float]* %v, i32 %58, i32* @ionize_seed, float %118) #10, !dbg !998
  %tobool468 = icmp eq i32 %call467, 0, !dbg !998
  br i1 %tobool468, label %for.inc475, label %if.then469, !dbg !998

if.then469:                                       ; preds = %for.body463
  %inc470 = add nsw i32 %nkdecay.1757, 1, !dbg !999
  call void @llvm.dbg.value(metadata !{i32 %inc470}, i64 0, metadata !412), !dbg !999
  %119 = load i32* %arrayidx472, align 4, !dbg !996, !tbaa !542
  %inc473 = add nsw i32 %119, 1, !dbg !996
  store i32 %inc473, i32* %arrayidx472, align 4, !dbg !996, !tbaa !542
  br label %for.inc475, !dbg !1000

for.inc475:                                       ; preds = %for.body463, %if.then469
  %nkdecay.2 = phi i32 [ %inc470, %if.then469 ], [ %nkdecay.1757, %for.body463 ]
  call void @llvm.dbg.value(metadata !{i32 %kk.0756}, i64 0, metadata !406), !dbg !994
  %exitcond791 = icmp eq i32 %kk.0756, %116, !dbg !994
  br i1 %exitcond791, label %for.end477, label %for.inc475.for.body463_crit_edge, !dbg !994

for.inc475.for.body463_crit_edge:                 ; preds = %for.inc475
  %.pre802 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !998, !tbaa !560
  %phitmp = add i32 %kk.0756, 1, !dbg !994
  br label %for.body463, !dbg !994

for.end477:                                       ; preds = %for.inc475, %if.end456
  %nkdecay.1.lcssa = phi i32 [ %nkdecay.0761, %if.end456 ], [ %nkdecay.2, %for.inc475 ]
  %120 = load %struct._IO_FILE** @debug, align 8, !dbg !1001, !tbaa !560
  %tobool478 = icmp eq %struct._IO_FILE* %120, null, !dbg !1001
  br i1 %tobool478, label %for.inc489, label %land.lhs.true479, !dbg !1001

land.lhs.true479:                                 ; preds = %for.end477
  %121 = load %struct.t_cross_atom** @ionize.ca, align 8, !dbg !1001, !tbaa !560
  %n482 = getelementptr inbounds %struct.t_cross_atom* %121, i64 %indvars.iv792, i32 1, !dbg !1001
  %122 = load i32* %n482, align 4, !dbg !1001, !tbaa !542
  %cmp483 = icmp sgt i32 %122, 0, !dbg !1001
  br i1 %cmp483, label %if.then485, label %for.inc489, !dbg !1001

if.then485:                                       ; preds = %land.lhs.true479
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %120}, i64 0, metadata !1002) #3, !dbg !1004
  call void @llvm.dbg.value(metadata !1005, i64 0, metadata !1006) #3, !dbg !1004
  call void @llvm.dbg.value(metadata !771, i64 0, metadata !1007) #3, !dbg !1004
  call void @llvm.dbg.value(metadata !1008, i64 0, metadata !1009) #3, !dbg !1004
  %z.i = getelementptr inbounds %struct.t_cross_atom* %121, i64 %indvars.iv792, i32 0, !dbg !1010
  %123 = load i32* %z.i, align 4, !dbg !1010, !tbaa !542
  %k.i = getelementptr inbounds %struct.t_cross_atom* %121, i64 %indvars.iv792, i32 2, !dbg !1010
  %124 = load i32* %k.i, align 4, !dbg !1010, !tbaa !542
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 745, i32 %58, i32 %123, i32 %122, i32 %124) #8, !dbg !1010
  br label %for.inc489, !dbg !1003

for.inc489:                                       ; preds = %for.end477, %land.lhs.true479, %if.then485
  %indvars.iv.next793 = add i64 %indvars.iv792, 1, !dbg !888
  %125 = trunc i64 %indvars.iv.next793 to i32, !dbg !888
  %cmp127 = icmp slt i32 %125, %end, !dbg !888
  br i1 %cmp127, label %for.cond130.preheader, label %for.end491, !dbg !888

for.end491:                                       ; preds = %for.inc489, %if.end100
  %nkdecay.0.lcssa = phi i32 [ 0, %if.end100 ], [ %nkdecay.1.lcssa, %for.inc489 ]
  %dq.0.lcssa = phi i32 [ 0, %if.end100 ], [ %dq.3, %for.inc489 ]
  %nnodes492 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1011
  %126 = load i32* %nnodes492, align 4, !dbg !1011, !tbaa !542
  %cmp493 = icmp sgt i32 %126, 1, !dbg !1011
  br i1 %cmp493, label %if.then499, label %lor.lhs.false495, !dbg !1011

lor.lhs.false495:                                 ; preds = %for.end491
  %nthreads496 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5, !dbg !1011
  %127 = load i32* %nthreads496, align 4, !dbg !1011, !tbaa !542
  %cmp497 = icmp sgt i32 %127, 1, !dbg !1011
  br i1 %cmp497, label %if.then499, label %if.end508, !dbg !1011

if.then499:                                       ; preds = %lor.lhs.false495, %for.end491
  %128 = load i32* %nr, align 4, !dbg !1012, !tbaa !542
  call void @gmx_sumi(i32 %128, i32* %47, %struct.t_commrec* %cr) #8, !dbg !1012
  %129 = load i32* %nr, align 4, !dbg !1014, !tbaa !542
  call void @gmx_sumi(i32 %129, i32* %49, %struct.t_commrec* %cr) #8, !dbg !1014
  %130 = load i32* %nr, align 4, !dbg !1015, !tbaa !542
  call void @gmx_sumi(i32 %130, i32* %51, %struct.t_commrec* %cr) #8, !dbg !1015
  %arrayidx503 = getelementptr inbounds [2 x i32]* %nbuf, i64 0, i64 0, !dbg !1016
  store i32 %dq.0.lcssa, i32* %arrayidx503, align 4, !dbg !1016, !tbaa !542
  %arrayidx504 = getelementptr inbounds [2 x i32]* %nbuf, i64 0, i64 1, !dbg !1016
  store i32 %nkdecay.0.lcssa, i32* %arrayidx504, align 4, !dbg !1016, !tbaa !542
  call void @gmx_sumi(i32 2, i32* %arrayidx503, %struct.t_commrec* %cr) #8, !dbg !1017
  %131 = load i32* %arrayidx503, align 4, !dbg !1018, !tbaa !542
  call void @llvm.dbg.value(metadata !{i32 %131}, i64 0, metadata !410), !dbg !1018
  %132 = load i32* %arrayidx504, align 4, !dbg !1018, !tbaa !542
  call void @llvm.dbg.value(metadata !{i32 %132}, i64 0, metadata !412), !dbg !1018
  br label %if.end508, !dbg !1019

if.end508:                                        ; preds = %if.then499, %lor.lhs.false495
  %dq.4 = phi i32 [ %131, %if.then499 ], [ %dq.0.lcssa, %lor.lhs.false495 ]
  %nkdecay.3 = phi i32 [ %132, %if.then499 ], [ %nkdecay.0.lcssa, %lor.lhs.false495 ]
  %133 = load i32* @ionize.dq_tot, align 4, !dbg !1020, !tbaa !542
  %add509 = add nsw i32 %133, %dq.4, !dbg !1020
  store i32 %add509, i32* @ionize.dq_tot, align 4, !dbg !1020, !tbaa !542
  %134 = load i32* @ionize.nkd_tot, align 4, !dbg !1021, !tbaa !542
  %add510 = add nsw i32 %134, %nkdecay.3, !dbg !1021
  store i32 %add510, i32* @ionize.nkd_tot, align 4, !dbg !1021, !tbaa !542
  %nodeid511 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1022
  %135 = load i32* %nodeid511, align 4, !dbg !1022, !tbaa !542
  %cmp512 = icmp eq i32 %135, 0, !dbg !1022
  br i1 %cmp512, label %land.lhs.true514, label %if.end562, !dbg !1022

land.lhs.true514:                                 ; preds = %if.end508
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1022
  %136 = load i32* %threadid, align 4, !dbg !1022, !tbaa !542
  %cmp515 = icmp eq i32 %136, 0, !dbg !1022
  br i1 %cmp515, label %if.then517, label %if.end562, !dbg !1022

if.then517:                                       ; preds = %land.lhs.true514
  %137 = load %struct._IO_FILE** @ionize.ion, align 8, !dbg !1023, !tbaa !560
  %conv518 = fpext float %t to double, !dbg !1023
  %call519 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([7 x i8]* @.str52, i64 0, i64 0), double %conv518) #8, !dbg !1023
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !404), !dbg !1025
  %138 = load i32* %nr, align 4, !dbg !1025, !tbaa !542
  %cmp522750 = icmp sgt i32 %138, 0, !dbg !1025
  br i1 %cmp522750, label %for.body524, label %for.end548, !dbg !1025

for.body524:                                      ; preds = %if.then517, %for.inc546
  %indvars.iv = phi i64 [ %indvars.iv.next.pre-phi, %for.inc546 ], [ 0, %if.then517 ]
  %arrayidx526 = getelementptr inbounds i32* %47, i64 %indvars.iv, !dbg !1027
  %139 = load i32* %arrayidx526, align 4, !dbg !1027, !tbaa !542
  %tobool527 = icmp eq i32 %139, 0, !dbg !1027
  br i1 %tobool527, label %if.end531, label %if.then528, !dbg !1027

if.then528:                                       ; preds = %for.body524
  %140 = load %struct._IO_FILE** @ionize.ion, align 8, !dbg !1029, !tbaa !560
  %141 = add nsw i64 %indvars.iv, 1, !dbg !1029
  %142 = trunc i64 %141 to i32, !dbg !1029
  %call530 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([7 x i8]* @.str53, i64 0, i64 0), i32 %142) #8, !dbg !1029
  br label %if.end531, !dbg !1029

if.end531:                                        ; preds = %for.body524, %if.then528
  %arrayidx533 = getelementptr inbounds i32* %49, i64 %indvars.iv, !dbg !1030
  %143 = load i32* %arrayidx533, align 4, !dbg !1030, !tbaa !542
  %tobool534 = icmp eq i32 %143, 0, !dbg !1030
  br i1 %tobool534, label %if.end538, label %if.then535, !dbg !1030

if.then535:                                       ; preds = %if.end531
  %144 = load %struct._IO_FILE** @ionize.ion, align 8, !dbg !1031, !tbaa !560
  %145 = add nsw i64 %indvars.iv, 1, !dbg !1031
  %146 = trunc i64 %145 to i32, !dbg !1031
  %call537 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([7 x i8]* @.str54, i64 0, i64 0), i32 %146) #8, !dbg !1031
  br label %if.end538, !dbg !1031

if.end538:                                        ; preds = %if.end531, %if.then535
  %arrayidx540 = getelementptr inbounds i32* %51, i64 %indvars.iv, !dbg !1032
  %147 = load i32* %arrayidx540, align 4, !dbg !1032, !tbaa !542
  %tobool541 = icmp eq i32 %147, 0, !dbg !1032
  br i1 %tobool541, label %if.end538.for.inc546_crit_edge, label %if.then542, !dbg !1032

if.end538.for.inc546_crit_edge:                   ; preds = %if.end538
  %indvars.iv.next.pre = add i64 %indvars.iv, 1, !dbg !1025
  %.pre804 = trunc i64 %indvars.iv.next.pre to i32, !dbg !1025
  br label %for.inc546, !dbg !1032

if.then542:                                       ; preds = %if.end538
  %148 = load %struct._IO_FILE** @ionize.ion, align 8, !dbg !1033, !tbaa !560
  %149 = add nsw i64 %indvars.iv, 1, !dbg !1033
  %150 = trunc i64 %149 to i32, !dbg !1033
  %call544 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([7 x i8]* @.str55, i64 0, i64 0), i32 %150) #8, !dbg !1033
  br label %for.inc546, !dbg !1033

for.inc546:                                       ; preds = %if.end538.for.inc546_crit_edge, %if.then542
  %.pre-phi = phi i32 [ %.pre804, %if.end538.for.inc546_crit_edge ], [ %150, %if.then542 ], !dbg !1025
  %indvars.iv.next.pre-phi = phi i64 [ %indvars.iv.next.pre, %if.end538.for.inc546_crit_edge ], [ %149, %if.then542 ], !dbg !1025
  %151 = load i32* %nr, align 4, !dbg !1025, !tbaa !542
  %cmp522 = icmp slt i32 %.pre-phi, %151, !dbg !1025
  br i1 %cmp522, label %for.body524, label %for.end548, !dbg !1025

for.end548:                                       ; preds = %for.inc546, %if.then517
  %152 = load %struct._IO_FILE** @ionize.ion, align 8, !dbg !1034, !tbaa !560
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %152), !dbg !1034
  %153 = load %struct._IO_FILE** @debug, align 8, !dbg !1035, !tbaa !560
  %tobool550 = icmp eq %struct._IO_FILE* %153, null, !dbg !1035
  br i1 %tobool550, label %if.end553, label %if.then551, !dbg !1035

if.then551:                                       ; preds = %for.end548
  %154 = load %struct._IO_FILE** @ionize.ion, align 8, !dbg !1036, !tbaa !560
  %call552 = call i32 @fflush(%struct._IO_FILE* %154) #8, !dbg !1036
  br label %if.end553, !dbg !1036

if.end553:                                        ; preds = %for.end548, %if.then551
  %155 = load %struct._IO_FILE** @ionize.xvg, align 8, !dbg !1037, !tbaa !560
  %conv555 = fpext float %conv109 to double, !dbg !1037
  %156 = load i32* @ionize.dq_tot, align 4, !dbg !1037, !tbaa !542
  %157 = load i32* @ionize.nkd_tot, align 4, !dbg !1037, !tbaa !542
  %call556 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([35 x i8]* @.str56, i64 0, i64 0), double %conv518, double %conv555, i32 %dq.4, i32 %156, i32 %nkdecay.3, i32 %157) #8, !dbg !1037
  %158 = load %struct._IO_FILE** @ionize.xvg, align 8, !dbg !1038, !tbaa !560
  %fputc714 = call i32 @fputc(i32 10, %struct._IO_FILE* %158), !dbg !1038
  %159 = load %struct._IO_FILE** @debug, align 8, !dbg !1039, !tbaa !560
  %tobool558 = icmp eq %struct._IO_FILE* %159, null, !dbg !1039
  br i1 %tobool558, label %if.end562, label %if.then559, !dbg !1039

if.then559:                                       ; preds = %if.end553
  %160 = load %struct._IO_FILE** @ionize.xvg, align 8, !dbg !1040, !tbaa !560
  %call560 = call i32 @fflush(%struct._IO_FILE* %160) #8, !dbg !1040
  br label %if.end562, !dbg !1040

if.end562:                                        ; preds = %if.end553, %if.then559, %land.lhs.true514, %if.end508
  call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 784, i8* %call121) #8, !dbg !1041
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 785, i8* %call123) #8, !dbg !1042
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 786, i8* %call125) #8, !dbg !1043
  ret void, !dbg !1044
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: optsize
declare i32 @make_seed() #4

; Function Attrs: optsize
declare %struct._IO_FILE* @xvgropen(i8*, i8*, i8*, i8*) #4

; Function Attrs: optsize
declare void @xvgr_legend(%struct._IO_FILE*, i32, i8**) #4

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare float @gauss(float, float, i32*) #4

; Function Attrs: optsize
declare void @pr_rvec(%struct._IO_FILE*, i32, i8*, float*, i32) #4

; Function Attrs: nounwind optsize
declare double @cos(double) #2

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #4

; Function Attrs: nounwind optsize
declare double @sin(double) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !14, metadata !15, metadata !470, metadata !14, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !9}
!3 = metadata !{i32 786436, metadata !1, null, metadata !"", i32 164, i64 32, i64 32, i32 0, i32 0, null, metadata !4, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 164, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !5, metadata !6, metadata !7, metadata !8}
!5 = metadata !{i32 786472, metadata !"eionCYL", i64 0} ; [ DW_TAG_enumerator ] [eionCYL :: 0]
!6 = metadata !{i32 786472, metadata !"eionSURF", i64 1} ; [ DW_TAG_enumerator ] [eionSURF :: 1]
!7 = metadata !{i32 786472, metadata !"eionGAUSS", i64 2} ; [ DW_TAG_enumerator ] [eionGAUSS :: 2]
!8 = metadata !{i32 786472, metadata !"eionNR", i64 3} ; [ DW_TAG_enumerator ] [eionNR :: 3]
!9 = metadata !{i32 786436, metadata !1, null, metadata !"", i32 166, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 166, size 32, align 32, offset 0] [from ]
!10 = metadata !{metadata !11, metadata !12, metadata !13}
!11 = metadata !{i32 786472, metadata !"ecollPHOTO", i64 0} ; [ DW_TAG_enumerator ] [ecollPHOTO :: 0]
!12 = metadata !{i32 786472, metadata !"ecollINELASTIC", i64 1} ; [ DW_TAG_enumerator ] [ecollINELASTIC :: 1]
!13 = metadata !{i32 786472, metadata !"ecollNR", i64 2} ; [ DW_TAG_enumerator ] [ecollNR :: 2]
!14 = metadata !{i32 0}
!15 = metadata !{metadata !16, metadata !97, metadata !147, metadata !152, metadata !155, metadata !164, metadata !171, metadata !177, metadata !189, metadata !201, metadata !209, metadata !229, metadata !247, metadata !429, metadata !436, metadata !445, metadata !452, metadata !458, metadata !465}
!16 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"dump_ca", metadata !"dump_ca", metadata !"", i32 179, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_cross_atom*, i32, i8*, i32)* @dump_ca, null, null, metadata !91, i32 180} ; [ DW_TAG_subprogram ] [line 179] [def] [scope 180] [dump_ca]
!17 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!18 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{null, metadata !20, metadata !78, metadata !26, metadata !28, metadata !26}
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!21 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!22 = metadata !{i32 786451, metadata !23, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !24, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!23 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!24 = metadata !{metadata !25, metadata !27, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !48, metadata !49, metadata !50, metadata !51, metadata !54, metadata !56, metadata !58, metadata !62, metadata !64, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !73, metadata !74}
!25 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!26 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!27 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!29 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!30 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!31 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!32 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!33 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!34 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!35 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!36 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!37 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!38 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!39 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!40 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !41} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!42 = metadata !{i32 786451, metadata !23, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !45, metadata !47}
!44 = metadata !{i32 786445, metadata !23, metadata !42, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !23, metadata !42, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!47 = metadata !{i32 786445, metadata !23, metadata !42, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!48 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !46} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!49 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !26} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!50 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !26} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!51 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !52} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!52 = metadata !{i32 786454, metadata !23, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!53 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!54 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !55} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!55 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!56 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !57} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!57 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!58 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !59} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!59 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !29, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!62 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !63} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!64 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !65} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!65 = metadata !{i32 786454, metadata !23, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!66 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!67 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!68 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!69 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!70 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!71 = metadata !{i32 786454, metadata !23, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!72 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!73 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !26} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!74 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !75} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!75 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !29, metadata !76, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_cross_atom]
!79 = metadata !{i32 786454, metadata !1, null, metadata !"t_cross_atom", i32 171, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [t_cross_atom] [line 171, size 0, align 0, offset 0] [from ]
!80 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 168, i64 224, i64 32, i32 0, i32 0, null, metadata !81, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 168, size 224, align 32, offset 0] [from ]
!81 = metadata !{metadata !82, metadata !83, metadata !84, metadata !85, metadata !88, metadata !89, metadata !90}
!82 = metadata !{i32 786445, metadata !1, metadata !80, metadata !"z", i32 169, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [z] [line 169, size 32, align 32, offset 0] [from int]
!83 = metadata !{i32 786445, metadata !1, metadata !80, metadata !"n", i32 169, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [n] [line 169, size 32, align 32, offset 32] [from int]
!84 = metadata !{i32 786445, metadata !1, metadata !80, metadata !"k", i32 169, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [k] [line 169, size 32, align 32, offset 64] [from int]
!85 = metadata !{i32 786445, metadata !1, metadata !80, metadata !"fj", i32 170, i64 32, i64 32, i64 96, i32 0, metadata !86} ; [ DW_TAG_member ] [fj] [line 170, size 32, align 32, offset 96] [from real]
!86 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!87 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!88 = metadata !{i32 786445, metadata !1, metadata !80, metadata !"sigPh", i32 170, i64 32, i64 32, i64 128, i32 0, metadata !86} ; [ DW_TAG_member ] [sigPh] [line 170, size 32, align 32, offset 128] [from real]
!89 = metadata !{i32 786445, metadata !1, metadata !80, metadata !"sigIn", i32 170, i64 32, i64 32, i64 160, i32 0, metadata !86} ; [ DW_TAG_member ] [sigIn] [line 170, size 32, align 32, offset 160] [from real]
!90 = metadata !{i32 786445, metadata !1, metadata !80, metadata !"vAuger", i32 170, i64 32, i64 32, i64 192, i32 0, metadata !86} ; [ DW_TAG_member ] [vAuger] [line 170, size 32, align 32, offset 192] [from real]
!91 = metadata !{metadata !92, metadata !93, metadata !94, metadata !95, metadata !96}
!92 = metadata !{i32 786689, metadata !16, metadata !"fp", metadata !17, i32 16777395, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 179]
!93 = metadata !{i32 786689, metadata !16, metadata !"ca", metadata !17, i32 33554611, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ca] [line 179]
!94 = metadata !{i32 786689, metadata !16, metadata !"i", metadata !17, i32 50331827, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 179]
!95 = metadata !{i32 786689, metadata !16, metadata !"file", metadata !17, i32 67109043, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 179]
!96 = metadata !{i32 786689, metadata !16, metadata !"line", metadata !17, i32 83886259, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 179]
!97 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"mk_cross_atom", metadata !"mk_cross_atom", metadata !"", i32 185, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_cross_atom* (%struct._IO_FILE*, %struct.t_mdatoms*, i8***, i32)* @mk_cross_atom, null, null, metadata !133, i32 187} ; [ DW_TAG_subprogram ] [line 185] [def] [scope 187] [mk_cross_atom]
!98 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!99 = metadata !{metadata !78, metadata !20, metadata !100, metadata !131, metadata !26}
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mdatoms]
!101 = metadata !{i32 786454, metadata !1, null, metadata !"t_mdatoms", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ] [t_mdatoms] [line 51, size 0, align 0, offset 0] [from ]
!102 = metadata !{i32 786451, metadata !103, null, metadata !"", i32 40, i64 1408, i64 64, i32 0, i32 0, null, metadata !104, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 1408, align 64, offset 0] [from ]
!103 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!104 = metadata !{metadata !105, metadata !106, metadata !107, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !117, metadata !118, metadata !119, metadata !120, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130}
!105 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"tmass", i32 41, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [tmass] [line 41, size 32, align 32, offset 0] [from real]
!106 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"nr", i32 42, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [nr] [line 42, size 32, align 32, offset 32] [from int]
!107 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"massA", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !108} ; [ DW_TAG_member ] [massA] [line 43, size 64, align 64, offset 64] [from ]
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!109 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"massB", i32 43, i64 64, i64 64, i64 128, i32 0, metadata !108} ; [ DW_TAG_member ] [massB] [line 43, size 64, align 64, offset 128] [from ]
!110 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"massT", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !108} ; [ DW_TAG_member ] [massT] [line 43, size 64, align 64, offset 192] [from ]
!111 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"invmass", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !108} ; [ DW_TAG_member ] [invmass] [line 43, size 64, align 64, offset 256] [from ]
!112 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"chargeA", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !108} ; [ DW_TAG_member ] [chargeA] [line 44, size 64, align 64, offset 320] [from ]
!113 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"chargeB", i32 44, i64 64, i64 64, i64 384, i32 0, metadata !108} ; [ DW_TAG_member ] [chargeB] [line 44, size 64, align 64, offset 384] [from ]
!114 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"chargeT", i32 44, i64 64, i64 64, i64 448, i32 0, metadata !108} ; [ DW_TAG_member ] [chargeT] [line 44, size 64, align 64, offset 448] [from ]
!115 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"bPerturbed", i32 45, i64 64, i64 64, i64 512, i32 0, metadata !116} ; [ DW_TAG_member ] [bPerturbed] [line 45, size 64, align 64, offset 512] [from ]
!116 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!117 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"resnr", i32 46, i64 64, i64 64, i64 576, i32 0, metadata !116} ; [ DW_TAG_member ] [resnr] [line 46, size 64, align 64, offset 576] [from ]
!118 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"typeA", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !116} ; [ DW_TAG_member ] [typeA] [line 47, size 64, align 64, offset 640] [from ]
!119 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"typeB", i32 47, i64 64, i64 64, i64 704, i32 0, metadata !116} ; [ DW_TAG_member ] [typeB] [line 47, size 64, align 64, offset 704] [from ]
!120 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"ptype", i32 48, i64 64, i64 64, i64 768, i32 0, metadata !121} ; [ DW_TAG_member ] [ptype] [line 48, size 64, align 64, offset 768] [from ]
!121 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!122 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"cTC", i32 49, i64 64, i64 64, i64 832, i32 0, metadata !121} ; [ DW_TAG_member ] [cTC] [line 49, size 64, align 64, offset 832] [from ]
!123 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"cENER", i32 49, i64 64, i64 64, i64 896, i32 0, metadata !121} ; [ DW_TAG_member ] [cENER] [line 49, size 64, align 64, offset 896] [from ]
!124 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"cACC", i32 49, i64 64, i64 64, i64 960, i32 0, metadata !121} ; [ DW_TAG_member ] [cACC] [line 49, size 64, align 64, offset 960] [from ]
!125 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"cFREEZE", i32 49, i64 64, i64 64, i64 1024, i32 0, metadata !121} ; [ DW_TAG_member ] [cFREEZE] [line 49, size 64, align 64, offset 1024] [from ]
!126 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"cXTC", i32 49, i64 64, i64 64, i64 1088, i32 0, metadata !121} ; [ DW_TAG_member ] [cXTC] [line 49, size 64, align 64, offset 1088] [from ]
!127 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"cVCM", i32 49, i64 64, i64 64, i64 1152, i32 0, metadata !121} ; [ DW_TAG_member ] [cVCM] [line 49, size 64, align 64, offset 1152] [from ]
!128 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"cU1", i32 50, i64 64, i64 64, i64 1216, i32 0, metadata !121} ; [ DW_TAG_member ] [cU1] [line 50, size 64, align 64, offset 1216] [from ]
!129 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"cU2", i32 50, i64 64, i64 64, i64 1280, i32 0, metadata !121} ; [ DW_TAG_member ] [cU2] [line 50, size 64, align 64, offset 1280] [from ]
!130 = metadata !{i32 786445, metadata !103, metadata !102, metadata !"cORF", i32 50, i64 64, i64 64, i64 1344, i32 0, metadata !121} ; [ DW_TAG_member ] [cORF] [line 50, size 64, align 64, offset 1344] [from ]
!131 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146}
!134 = metadata !{i32 786689, metadata !97, metadata !"log", metadata !17, i32 16777401, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 185]
!135 = metadata !{i32 786689, metadata !97, metadata !"md", metadata !17, i32 33554617, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 185]
!136 = metadata !{i32 786689, metadata !97, metadata !"atomname", metadata !17, i32 50331834, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atomname] [line 186]
!137 = metadata !{i32 786689, metadata !97, metadata !"Eindex", metadata !17, i32 67109050, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Eindex] [line 186]
!138 = metadata !{i32 786688, metadata !97, metadata !"elem_index", metadata !17, i32 188, metadata !139, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elem_index] [line 188]
!139 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 704, i64 32, i32 0, i32 0, metadata !26, metadata !140, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 704, align 32, offset 0] [from int]
!140 = metadata !{metadata !141}
!141 = metadata !{i32 786465, i64 0, i64 22}      ; [ DW_TAG_subrange_type ] [0, 21]
!142 = metadata !{i32 786688, metadata !97, metadata !"ca", metadata !17, i32 189, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ca] [line 189]
!143 = metadata !{i32 786688, metadata !97, metadata !"elemcnt", metadata !17, i32 190, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elemcnt] [line 190]
!144 = metadata !{i32 786688, metadata !97, metadata !"cc", metadata !17, i32 191, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cc] [line 191]
!145 = metadata !{i32 786688, metadata !97, metadata !"i", metadata !17, i32 192, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 192]
!146 = metadata !{i32 786688, metadata !97, metadata !"j", metadata !17, i32 192, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 192]
!147 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"number_K", metadata !"number_K", metadata !"", i32 245, metadata !148, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.t_cross_atom*)* @number_K, null, null, metadata !150, i32 246} ; [ DW_TAG_subprogram ] [line 245] [def] [scope 246] [number_K]
!148 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!149 = metadata !{metadata !26, metadata !78}
!150 = metadata !{metadata !151}
!151 = metadata !{i32 786689, metadata !147, metadata !"ca", metadata !17, i32 16777461, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ca] [line 245]
!152 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"number_L", metadata !"number_L", metadata !"", i32 253, metadata !148, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.t_cross_atom*)* @number_L, null, null, metadata !153, i32 254} ; [ DW_TAG_subprogram ] [line 253] [def] [scope 254] [number_L]
!153 = metadata !{metadata !154}
!154 = metadata !{i32 786689, metadata !152, metadata !"ca", metadata !17, i32 16777469, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ca] [line 253]
!155 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"xray_cross_section", metadata !"xray_cross_section", metadata !"", i32 258, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, %struct.t_cross_atom*)* @xray_cross_section, null, null, metadata !158, i32 259} ; [ DW_TAG_subprogram ] [line 258] [def] [scope 259] [xray_cross_section]
!156 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!157 = metadata !{metadata !86, metadata !26, metadata !78}
!158 = metadata !{metadata !159, metadata !160, metadata !161, metadata !162, metadata !163}
!159 = metadata !{i32 786689, metadata !155, metadata !"eColl", metadata !17, i32 16777474, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eColl] [line 258]
!160 = metadata !{i32 786689, metadata !155, metadata !"ca", metadata !17, i32 33554690, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ca] [line 258]
!161 = metadata !{i32 786688, metadata !155, metadata !"c", metadata !17, i32 260, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 260]
!162 = metadata !{i32 786688, metadata !155, metadata !"nK", metadata !17, i32 261, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nK] [line 261]
!163 = metadata !{i32 786688, metadata !155, metadata !"nL", metadata !17, i32 261, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 261]
!164 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"prob_K", metadata !"prob_K", metadata !"", i32 283, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, %struct.t_cross_atom*)* @prob_K, null, null, metadata !165, i32 284} ; [ DW_TAG_subprogram ] [line 283] [def] [scope 284] [prob_K]
!165 = metadata !{metadata !166, metadata !167, metadata !168, metadata !169, metadata !170}
!166 = metadata !{i32 786689, metadata !164, metadata !"eColl", metadata !17, i32 16777499, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eColl] [line 283]
!167 = metadata !{i32 786689, metadata !164, metadata !"ca", metadata !17, i32 33554715, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ca] [line 283]
!168 = metadata !{i32 786688, metadata !164, metadata !"Pl", metadata !17, i32 285, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Pl] [line 285]
!169 = metadata !{i32 786688, metadata !164, metadata !"Pk", metadata !17, i32 285, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Pk] [line 285]
!170 = metadata !{i32 786688, metadata !164, metadata !"P", metadata !17, i32 285, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [P] [line 285]
!171 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"myexp", metadata !"myexp", metadata !"", i32 305, metadata !172, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double)* @myexp, null, null, metadata !175, i32 306} ; [ DW_TAG_subprogram ] [line 305] [def] [scope 306] [myexp]
!172 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!173 = metadata !{metadata !174, metadata !174}
!174 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!175 = metadata !{metadata !176}
!176 = metadata !{i32 786689, metadata !171, metadata !"x", metadata !17, i32 16777521, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 305]
!177 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"ptheta_incoh", metadata !"ptheta_incoh", metadata !"", i32 313, metadata !178, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, float)* @ptheta_incoh, null, null, metadata !180, i32 315} ; [ DW_TAG_subprogram ] [line 313] [def] [scope 315] [ptheta_incoh]
!178 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!179 = metadata !{metadata !86, metadata !26, metadata !86}
!180 = metadata !{metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188}
!181 = metadata !{i32 786689, metadata !177, metadata !"Eindex", metadata !17, i32 16777529, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Eindex] [line 313]
!182 = metadata !{i32 786689, metadata !177, metadata !"theta", metadata !17, i32 33554745, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [theta] [line 313]
!183 = metadata !{i32 786688, metadata !177, metadata !"g1", metadata !17, i32 335, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g1] [line 335]
!184 = metadata !{i32 786688, metadata !177, metadata !"g2", metadata !17, i32 335, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g2] [line 335]
!185 = metadata !{i32 786688, metadata !177, metadata !"g3", metadata !17, i32 335, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g3] [line 335]
!186 = metadata !{i32 786688, metadata !177, metadata !"g4", metadata !17, i32 335, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g4] [line 335]
!187 = metadata !{i32 786688, metadata !177, metadata !"g5", metadata !17, i32 335, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g5] [line 335]
!188 = metadata !{i32 786688, metadata !177, metadata !"ptheta", metadata !17, i32 335, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptheta] [line 335]
!189 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"rand_theta_incoh", metadata !"rand_theta_incoh", metadata !"", i32 348, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, i32*)* @rand_theta_incoh, null, null, metadata !192, i32 349} ; [ DW_TAG_subprogram ] [line 348] [def] [scope 349] [rand_theta_incoh]
!190 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!191 = metadata !{metadata !86, metadata !26, metadata !116}
!192 = metadata !{metadata !193, metadata !194, metadata !195, metadata !196, metadata !197}
!193 = metadata !{i32 786689, metadata !189, metadata !"Eindex", metadata !17, i32 16777564, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Eindex] [line 348]
!194 = metadata !{i32 786689, metadata !189, metadata !"seed", metadata !17, i32 33554780, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 348]
!195 = metadata !{i32 786688, metadata !189, metadata !"rrr", metadata !17, i32 355, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rrr] [line 355]
!196 = metadata !{i32 786688, metadata !189, metadata !"dx", metadata !17, i32 355, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 355]
!197 = metadata !{i32 786688, metadata !189, metadata !"y", metadata !17, i32 356, metadata !198, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 356]
!198 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !86, metadata !199, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from real]
!199 = metadata !{metadata !200}
!200 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!201 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"rand_vector", metadata !"rand_vector", metadata !"", i32 399, metadata !202, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i32*)* @rand_vector, null, null, metadata !204, i32 400} ; [ DW_TAG_subprogram ] [line 399] [def] [scope 400] [rand_vector]
!202 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!203 = metadata !{null, metadata !108, metadata !116}
!204 = metadata !{metadata !205, metadata !206, metadata !207, metadata !208}
!205 = metadata !{i32 786689, metadata !201, metadata !"v", metadata !17, i32 16777615, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 399]
!206 = metadata !{i32 786689, metadata !201, metadata !"seed", metadata !17, i32 33554831, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 399]
!207 = metadata !{i32 786688, metadata !201, metadata !"theta", metadata !17, i32 401, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [theta] [line 401]
!208 = metadata !{i32 786688, metadata !201, metadata !"phi", metadata !17, i32 401, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [phi] [line 401]
!209 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"electron_cross_section", metadata !"electron_cross_section", metadata !"", i32 408, metadata !210, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, float*, float, i32)* @electron_cross_section, null, null, metadata !212, i32 409} ; [ DW_TAG_subprogram ] [line 408] [def] [scope 409] [electron_cross_section]
!210 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!211 = metadata !{metadata !86, metadata !20, metadata !108, metadata !86, metadata !26}
!212 = metadata !{metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228}
!213 = metadata !{i32 786689, metadata !209, metadata !"fp", metadata !17, i32 16777624, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 408]
!214 = metadata !{i32 786689, metadata !209, metadata !"v", metadata !17, i32 33554840, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 408]
!215 = metadata !{i32 786689, metadata !209, metadata !"mass", metadata !17, i32 50332056, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mass] [line 408]
!216 = metadata !{i32 786689, metadata !209, metadata !"nelec", metadata !17, i32 67109272, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelec] [line 408]
!217 = metadata !{i32 786688, metadata !209, metadata !"T", metadata !17, i32 411, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [T] [line 411]
!218 = metadata !{i32 786688, metadata !209, metadata !"B", metadata !17, i32 411, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [B] [line 411]
!219 = metadata !{i32 786688, metadata !209, metadata !"U", metadata !17, i32 411, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [U] [line 411]
!220 = metadata !{i32 786688, metadata !209, metadata !"S", metadata !17, i32 411, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [S] [line 411]
!221 = metadata !{i32 786688, metadata !209, metadata !"Q", metadata !17, i32 411, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Q] [line 411]
!222 = metadata !{i32 786688, metadata !209, metadata !"R", metadata !17, i32 411, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [R] [line 411]
!223 = metadata !{i32 786688, metadata !209, metadata !"N", metadata !17, i32 411, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N] [line 411]
!224 = metadata !{i32 786688, metadata !209, metadata !"t", metadata !17, i32 411, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 411]
!225 = metadata !{i32 786688, metadata !209, metadata !"u", metadata !17, i32 411, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 411]
!226 = metadata !{i32 786688, metadata !209, metadata !"lnt", metadata !17, i32 411, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lnt] [line 411]
!227 = metadata !{i32 786688, metadata !209, metadata !"sigma", metadata !17, i32 411, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sigma] [line 411]
!228 = metadata !{i32 786688, metadata !209, metadata !"a0", metadata !17, i32 412, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a0] [line 412]
!229 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"khole_decay", metadata !"khole_decay", metadata !"", i32 444, metadata !230, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, %struct.t_cross_atom*, [3 x float]*, [3 x float]*, i32, i32*, float)* @khole_decay, null, null, metadata !237, i32 446} ; [ DW_TAG_subprogram ] [line 444] [def] [scope 446] [khole_decay]
!230 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!231 = metadata !{metadata !26, metadata !20, metadata !78, metadata !232, metadata !232, metadata !26, metadata !116, metadata !86}
!232 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !233} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!233 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !234} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!234 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !86, metadata !235, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!235 = metadata !{metadata !236}
!236 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!237 = metadata !{metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246}
!238 = metadata !{i32 786689, metadata !229, metadata !"fp", metadata !17, i32 16777660, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 444]
!239 = metadata !{i32 786689, metadata !229, metadata !"ca", metadata !17, i32 33554876, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ca] [line 444]
!240 = metadata !{i32 786689, metadata !229, metadata !"x", metadata !17, i32 50332092, metadata !232, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 444]
!241 = metadata !{i32 786689, metadata !229, metadata !"v", metadata !17, i32 67109308, metadata !232, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 444]
!242 = metadata !{i32 786689, metadata !229, metadata !"ion", metadata !17, i32 83886524, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ion] [line 444]
!243 = metadata !{i32 786689, metadata !229, metadata !"seed", metadata !17, i32 100663741, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 445]
!244 = metadata !{i32 786689, metadata !229, metadata !"dt", metadata !17, i32 117440957, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dt] [line 445]
!245 = metadata !{i32 786688, metadata !229, metadata !"dv", metadata !17, i32 447, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dv] [line 447]
!246 = metadata !{i32 786688, metadata !229, metadata !"factor", metadata !17, i32 448, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [factor] [line 448]
!247 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"ionize", metadata !"ionize", metadata !"", i32 475, metadata !248, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_mdatoms*, i8***, float, %struct.t_inputrec*, [3 x float]*, [3 x float]*, i32, i32, [3 x float]*, %struct.t_commrec*)* @ionize, null, null, metadata !376, i32 477} ; [ DW_TAG_subprogram ] [line 475] [def] [scope 477] [ionize]
!248 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!249 = metadata !{null, metadata !20, metadata !100, metadata !131, metadata !86, metadata !250, metadata !232, metadata !232, metadata !26, metadata !26, metadata !364, metadata !365}
!250 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !251} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inputrec]
!251 = metadata !{i32 786454, metadata !1, null, metadata !"t_inputrec", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !252} ; [ DW_TAG_typedef ] [t_inputrec] [line 143, size 0, align 0, offset 0] [from ]
!252 = metadata !{i32 786451, metadata !253, null, metadata !"", i32 55, i64 4736, i64 64, i32 0, i32 0, null, metadata !254, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 4736, align 64, offset 0] [from ]
!253 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!254 = metadata !{metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !355, metadata !363}
!255 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"eI", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [eI] [line 56, size 32, align 32, offset 0] [from int]
!256 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nsteps", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [nsteps] [line 57, size 32, align 32, offset 32] [from int]
!257 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"ns_type", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [ns_type] [line 58, size 32, align 32, offset 64] [from int]
!258 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nstlist", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [nstlist] [line 59, size 32, align 32, offset 96] [from int]
!259 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"ndelta", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [ndelta] [line 60, size 32, align 32, offset 128] [from int]
!260 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"bDomDecomp", i32 61, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [bDomDecomp] [line 61, size 32, align 32, offset 160] [from int]
!261 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"decomp_dir", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [decomp_dir] [line 62, size 32, align 32, offset 192] [from int]
!262 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nstcomm", i32 63, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [nstcomm] [line 63, size 32, align 32, offset 224] [from int]
!263 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nstlog", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [nstlog] [line 65, size 32, align 32, offset 256] [from int]
!264 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nstxout", i32 66, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [nstxout] [line 66, size 32, align 32, offset 288] [from int]
!265 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nstvout", i32 67, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [nstvout] [line 67, size 32, align 32, offset 320] [from int]
!266 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nstfout", i32 68, i64 32, i64 32, i64 352, i32 0, metadata !26} ; [ DW_TAG_member ] [nstfout] [line 68, size 32, align 32, offset 352] [from int]
!267 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nstenergy", i32 69, i64 32, i64 32, i64 384, i32 0, metadata !26} ; [ DW_TAG_member ] [nstenergy] [line 69, size 32, align 32, offset 384] [from int]
!268 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nstxtcout", i32 70, i64 32, i64 32, i64 416, i32 0, metadata !26} ; [ DW_TAG_member ] [nstxtcout] [line 70, size 32, align 32, offset 416] [from int]
!269 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"init_t", i32 71, i64 32, i64 32, i64 448, i32 0, metadata !86} ; [ DW_TAG_member ] [init_t] [line 71, size 32, align 32, offset 448] [from real]
!270 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"delta_t", i32 72, i64 32, i64 32, i64 480, i32 0, metadata !86} ; [ DW_TAG_member ] [delta_t] [line 72, size 32, align 32, offset 480] [from real]
!271 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"xtcprec", i32 73, i64 32, i64 32, i64 512, i32 0, metadata !86} ; [ DW_TAG_member ] [xtcprec] [line 73, size 32, align 32, offset 512] [from real]
!272 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nkx", i32 74, i64 32, i64 32, i64 544, i32 0, metadata !26} ; [ DW_TAG_member ] [nkx] [line 74, size 32, align 32, offset 544] [from int]
!273 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nky", i32 74, i64 32, i64 32, i64 576, i32 0, metadata !26} ; [ DW_TAG_member ] [nky] [line 74, size 32, align 32, offset 576] [from int]
!274 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nkz", i32 74, i64 32, i64 32, i64 608, i32 0, metadata !26} ; [ DW_TAG_member ] [nkz] [line 74, size 32, align 32, offset 608] [from int]
!275 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"pme_order", i32 76, i64 32, i64 32, i64 640, i32 0, metadata !26} ; [ DW_TAG_member ] [pme_order] [line 76, size 32, align 32, offset 640] [from int]
!276 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"ewald_rtol", i32 77, i64 32, i64 32, i64 672, i32 0, metadata !86} ; [ DW_TAG_member ] [ewald_rtol] [line 77, size 32, align 32, offset 672] [from real]
!277 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"ewald_geometry", i32 79, i64 32, i64 32, i64 704, i32 0, metadata !26} ; [ DW_TAG_member ] [ewald_geometry] [line 79, size 32, align 32, offset 704] [from int]
!278 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"epsilon_surface", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !26} ; [ DW_TAG_member ] [epsilon_surface] [line 80, size 32, align 32, offset 736] [from int]
!279 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"bOptFFT", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !26} ; [ DW_TAG_member ] [bOptFFT] [line 81, size 32, align 32, offset 768] [from int]
!280 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"ePBC", i32 82, i64 32, i64 32, i64 800, i32 0, metadata !26} ; [ DW_TAG_member ] [ePBC] [line 82, size 32, align 32, offset 800] [from int]
!281 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"bUncStart", i32 83, i64 32, i64 32, i64 832, i32 0, metadata !26} ; [ DW_TAG_member ] [bUncStart] [line 83, size 32, align 32, offset 832] [from int]
!282 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"etc", i32 84, i64 32, i64 32, i64 864, i32 0, metadata !26} ; [ DW_TAG_member ] [etc] [line 84, size 32, align 32, offset 864] [from int]
!283 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"epc", i32 85, i64 32, i64 32, i64 896, i32 0, metadata !26} ; [ DW_TAG_member ] [epc] [line 85, size 32, align 32, offset 896] [from int]
!284 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"epct", i32 86, i64 32, i64 32, i64 928, i32 0, metadata !26} ; [ DW_TAG_member ] [epct] [line 86, size 32, align 32, offset 928] [from int]
!285 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"tau_p", i32 87, i64 32, i64 32, i64 960, i32 0, metadata !86} ; [ DW_TAG_member ] [tau_p] [line 87, size 32, align 32, offset 960] [from real]
!286 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"ref_p", i32 88, i64 288, i64 32, i64 992, i32 0, metadata !287} ; [ DW_TAG_member ] [ref_p] [line 88, size 288, align 32, offset 992] [from tensor]
!287 = metadata !{i32 786454, metadata !253, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !288} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!288 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !86, metadata !289, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!289 = metadata !{metadata !236, metadata !236}
!290 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"compress", i32 89, i64 288, i64 32, i64 1280, i32 0, metadata !287} ; [ DW_TAG_member ] [compress] [line 89, size 288, align 32, offset 1280] [from tensor]
!291 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"bSimAnn", i32 90, i64 32, i64 32, i64 1568, i32 0, metadata !26} ; [ DW_TAG_member ] [bSimAnn] [line 90, size 32, align 32, offset 1568] [from int]
!292 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"zero_temp_time", i32 91, i64 32, i64 32, i64 1600, i32 0, metadata !86} ; [ DW_TAG_member ] [zero_temp_time] [line 91, size 32, align 32, offset 1600] [from real]
!293 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"rlist", i32 92, i64 32, i64 32, i64 1632, i32 0, metadata !86} ; [ DW_TAG_member ] [rlist] [line 92, size 32, align 32, offset 1632] [from real]
!294 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"coulombtype", i32 93, i64 32, i64 32, i64 1664, i32 0, metadata !26} ; [ DW_TAG_member ] [coulombtype] [line 93, size 32, align 32, offset 1664] [from int]
!295 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"rcoulomb_switch", i32 94, i64 32, i64 32, i64 1696, i32 0, metadata !86} ; [ DW_TAG_member ] [rcoulomb_switch] [line 94, size 32, align 32, offset 1696] [from real]
!296 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"rcoulomb", i32 95, i64 32, i64 32, i64 1728, i32 0, metadata !86} ; [ DW_TAG_member ] [rcoulomb] [line 95, size 32, align 32, offset 1728] [from real]
!297 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"vdwtype", i32 96, i64 32, i64 32, i64 1760, i32 0, metadata !26} ; [ DW_TAG_member ] [vdwtype] [line 96, size 32, align 32, offset 1760] [from int]
!298 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"rvdw_switch", i32 97, i64 32, i64 32, i64 1792, i32 0, metadata !86} ; [ DW_TAG_member ] [rvdw_switch] [line 97, size 32, align 32, offset 1792] [from real]
!299 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"rvdw", i32 98, i64 32, i64 32, i64 1824, i32 0, metadata !86} ; [ DW_TAG_member ] [rvdw] [line 98, size 32, align 32, offset 1824] [from real]
!300 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"epsilon_r", i32 99, i64 32, i64 32, i64 1856, i32 0, metadata !86} ; [ DW_TAG_member ] [epsilon_r] [line 99, size 32, align 32, offset 1856] [from real]
!301 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"eDispCorr", i32 100, i64 32, i64 32, i64 1888, i32 0, metadata !26} ; [ DW_TAG_member ] [eDispCorr] [line 100, size 32, align 32, offset 1888] [from int]
!302 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"shake_tol", i32 101, i64 32, i64 32, i64 1920, i32 0, metadata !86} ; [ DW_TAG_member ] [shake_tol] [line 101, size 32, align 32, offset 1920] [from real]
!303 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"fudgeQQ", i32 102, i64 32, i64 32, i64 1952, i32 0, metadata !86} ; [ DW_TAG_member ] [fudgeQQ] [line 102, size 32, align 32, offset 1952] [from real]
!304 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"efep", i32 103, i64 32, i64 32, i64 1984, i32 0, metadata !26} ; [ DW_TAG_member ] [efep] [line 103, size 32, align 32, offset 1984] [from int]
!305 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"init_lambda", i32 104, i64 32, i64 32, i64 2016, i32 0, metadata !86} ; [ DW_TAG_member ] [init_lambda] [line 104, size 32, align 32, offset 2016] [from real]
!306 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"delta_lambda", i32 105, i64 32, i64 32, i64 2048, i32 0, metadata !86} ; [ DW_TAG_member ] [delta_lambda] [line 105, size 32, align 32, offset 2048] [from real]
!307 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"sc_alpha", i32 106, i64 32, i64 32, i64 2080, i32 0, metadata !86} ; [ DW_TAG_member ] [sc_alpha] [line 106, size 32, align 32, offset 2080] [from real]
!308 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"sc_sigma", i32 107, i64 32, i64 32, i64 2112, i32 0, metadata !86} ; [ DW_TAG_member ] [sc_sigma] [line 107, size 32, align 32, offset 2112] [from real]
!309 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"dr_fc", i32 108, i64 32, i64 32, i64 2144, i32 0, metadata !86} ; [ DW_TAG_member ] [dr_fc] [line 108, size 32, align 32, offset 2144] [from real]
!310 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"eDisreWeighting", i32 109, i64 32, i64 32, i64 2176, i32 0, metadata !26} ; [ DW_TAG_member ] [eDisreWeighting] [line 109, size 32, align 32, offset 2176] [from int]
!311 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"bDisreMixed", i32 110, i64 32, i64 32, i64 2208, i32 0, metadata !26} ; [ DW_TAG_member ] [bDisreMixed] [line 110, size 32, align 32, offset 2208] [from int]
!312 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nstdisreout", i32 111, i64 32, i64 32, i64 2240, i32 0, metadata !26} ; [ DW_TAG_member ] [nstdisreout] [line 111, size 32, align 32, offset 2240] [from int]
!313 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"dr_tau", i32 112, i64 32, i64 32, i64 2272, i32 0, metadata !86} ; [ DW_TAG_member ] [dr_tau] [line 112, size 32, align 32, offset 2272] [from real]
!314 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"orires_fc", i32 113, i64 32, i64 32, i64 2304, i32 0, metadata !86} ; [ DW_TAG_member ] [orires_fc] [line 113, size 32, align 32, offset 2304] [from real]
!315 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"orires_tau", i32 114, i64 32, i64 32, i64 2336, i32 0, metadata !86} ; [ DW_TAG_member ] [orires_tau] [line 114, size 32, align 32, offset 2336] [from real]
!316 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nstorireout", i32 115, i64 32, i64 32, i64 2368, i32 0, metadata !26} ; [ DW_TAG_member ] [nstorireout] [line 115, size 32, align 32, offset 2368] [from int]
!317 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"em_stepsize", i32 116, i64 32, i64 32, i64 2400, i32 0, metadata !86} ; [ DW_TAG_member ] [em_stepsize] [line 116, size 32, align 32, offset 2400] [from real]
!318 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"em_tol", i32 117, i64 32, i64 32, i64 2432, i32 0, metadata !86} ; [ DW_TAG_member ] [em_tol] [line 117, size 32, align 32, offset 2432] [from real]
!319 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"niter", i32 118, i64 32, i64 32, i64 2464, i32 0, metadata !26} ; [ DW_TAG_member ] [niter] [line 118, size 32, align 32, offset 2464] [from int]
!320 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"fc_stepsize", i32 120, i64 32, i64 32, i64 2496, i32 0, metadata !26} ; [ DW_TAG_member ] [fc_stepsize] [line 120, size 32, align 32, offset 2496] [from int]
!321 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nstcgsteep", i32 122, i64 32, i64 32, i64 2528, i32 0, metadata !26} ; [ DW_TAG_member ] [nstcgsteep] [line 122, size 32, align 32, offset 2528] [from int]
!322 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"eConstrAlg", i32 124, i64 32, i64 32, i64 2560, i32 0, metadata !26} ; [ DW_TAG_member ] [eConstrAlg] [line 124, size 32, align 32, offset 2560] [from int]
!323 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"nProjOrder", i32 125, i64 32, i64 32, i64 2592, i32 0, metadata !26} ; [ DW_TAG_member ] [nProjOrder] [line 125, size 32, align 32, offset 2592] [from int]
!324 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"LincsWarnAngle", i32 126, i64 32, i64 32, i64 2624, i32 0, metadata !86} ; [ DW_TAG_member ] [LincsWarnAngle] [line 126, size 32, align 32, offset 2624] [from real]
!325 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"bShakeSOR", i32 127, i64 32, i64 32, i64 2656, i32 0, metadata !26} ; [ DW_TAG_member ] [bShakeSOR] [line 127, size 32, align 32, offset 2656] [from int]
!326 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"bd_temp", i32 128, i64 32, i64 32, i64 2688, i32 0, metadata !86} ; [ DW_TAG_member ] [bd_temp] [line 128, size 32, align 32, offset 2688] [from real]
!327 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"bd_fric", i32 129, i64 32, i64 32, i64 2720, i32 0, metadata !86} ; [ DW_TAG_member ] [bd_fric] [line 129, size 32, align 32, offset 2720] [from real]
!328 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"ld_seed", i32 130, i64 32, i64 32, i64 2752, i32 0, metadata !26} ; [ DW_TAG_member ] [ld_seed] [line 130, size 32, align 32, offset 2752] [from int]
!329 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"cos_accel", i32 131, i64 32, i64 32, i64 2784, i32 0, metadata !86} ; [ DW_TAG_member ] [cos_accel] [line 131, size 32, align 32, offset 2784] [from real]
!330 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"userint1", i32 132, i64 32, i64 32, i64 2816, i32 0, metadata !26} ; [ DW_TAG_member ] [userint1] [line 132, size 32, align 32, offset 2816] [from int]
!331 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"userint2", i32 133, i64 32, i64 32, i64 2848, i32 0, metadata !26} ; [ DW_TAG_member ] [userint2] [line 133, size 32, align 32, offset 2848] [from int]
!332 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"userint3", i32 134, i64 32, i64 32, i64 2880, i32 0, metadata !26} ; [ DW_TAG_member ] [userint3] [line 134, size 32, align 32, offset 2880] [from int]
!333 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"userint4", i32 135, i64 32, i64 32, i64 2912, i32 0, metadata !26} ; [ DW_TAG_member ] [userint4] [line 135, size 32, align 32, offset 2912] [from int]
!334 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"userreal1", i32 136, i64 32, i64 32, i64 2944, i32 0, metadata !86} ; [ DW_TAG_member ] [userreal1] [line 136, size 32, align 32, offset 2944] [from real]
!335 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"userreal2", i32 137, i64 32, i64 32, i64 2976, i32 0, metadata !86} ; [ DW_TAG_member ] [userreal2] [line 137, size 32, align 32, offset 2976] [from real]
!336 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"userreal3", i32 138, i64 32, i64 32, i64 3008, i32 0, metadata !86} ; [ DW_TAG_member ] [userreal3] [line 138, size 32, align 32, offset 3008] [from real]
!337 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"userreal4", i32 139, i64 32, i64 32, i64 3040, i32 0, metadata !86} ; [ DW_TAG_member ] [userreal4] [line 139, size 32, align 32, offset 3040] [from real]
!338 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"opts", i32 140, i64 512, i64 64, i64 3072, i32 0, metadata !339} ; [ DW_TAG_member ] [opts] [line 140, size 512, align 64, offset 3072] [from t_grpopts]
!339 = metadata !{i32 786454, metadata !253, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !340} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!340 = metadata !{i32 786451, metadata !253, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !341, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!341 = metadata !{metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !354}
!342 = metadata !{i32 786445, metadata !253, metadata !340, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!343 = metadata !{i32 786445, metadata !253, metadata !340, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!344 = metadata !{i32 786445, metadata !253, metadata !340, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!345 = metadata !{i32 786445, metadata !253, metadata !340, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!346 = metadata !{i32 786445, metadata !253, metadata !340, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !108} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!347 = metadata !{i32 786445, metadata !253, metadata !340, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !108} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!348 = metadata !{i32 786445, metadata !253, metadata !340, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !108} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!349 = metadata !{i32 786445, metadata !253, metadata !340, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !232} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!350 = metadata !{i32 786445, metadata !253, metadata !340, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !351} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!351 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !352} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!352 = metadata !{i32 786454, metadata !253, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !353} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!353 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !26, metadata !235, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!354 = metadata !{i32 786445, metadata !253, metadata !340, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !116} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!355 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"ex", i32 141, i64 576, i64 64, i64 3584, i32 0, metadata !356} ; [ DW_TAG_member ] [ex] [line 141, size 576, align 64, offset 3584] [from ]
!356 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !357, metadata !235, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from t_cosines]
!357 = metadata !{i32 786454, metadata !253, null, metadata !"t_cosines", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !358} ; [ DW_TAG_typedef ] [t_cosines] [line 40, size 0, align 0, offset 0] [from ]
!358 = metadata !{i32 786451, metadata !253, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !359, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!359 = metadata !{metadata !360, metadata !361, metadata !362}
!360 = metadata !{i32 786445, metadata !253, metadata !358, metadata !"n", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [n] [line 37, size 32, align 32, offset 0] [from int]
!361 = metadata !{i32 786445, metadata !253, metadata !358, metadata !"a", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !108} ; [ DW_TAG_member ] [a] [line 38, size 64, align 64, offset 64] [from ]
!362 = metadata !{i32 786445, metadata !253, metadata !358, metadata !"phi", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !108} ; [ DW_TAG_member ] [phi] [line 39, size 64, align 64, offset 128] [from ]
!363 = metadata !{i32 786445, metadata !253, metadata !252, metadata !"et", i32 142, i64 576, i64 64, i64 4160, i32 0, metadata !356} ; [ DW_TAG_member ] [et] [line 142, size 576, align 64, offset 4160] [from ]
!364 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !234} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!365 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !366} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!366 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !367} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!367 = metadata !{i32 786451, metadata !368, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !369, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!368 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!369 = metadata !{metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375}
!370 = metadata !{i32 786445, metadata !368, metadata !367, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!371 = metadata !{i32 786445, metadata !368, metadata !367, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!372 = metadata !{i32 786445, metadata !368, metadata !367, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!373 = metadata !{i32 786445, metadata !368, metadata !367, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!374 = metadata !{i32 786445, metadata !368, metadata !367, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!375 = metadata !{i32 786445, metadata !368, metadata !367, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!376 = metadata !{metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !418, metadata !424, metadata !425, metadata !427, metadata !428}
!377 = metadata !{i32 786689, metadata !247, metadata !"fp", metadata !17, i32 16777691, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 475]
!378 = metadata !{i32 786689, metadata !247, metadata !"md", metadata !17, i32 33554907, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 475]
!379 = metadata !{i32 786689, metadata !247, metadata !"atomname", metadata !17, i32 50332123, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atomname] [line 475]
!380 = metadata !{i32 786689, metadata !247, metadata !"t", metadata !17, i32 67109339, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 475]
!381 = metadata !{i32 786689, metadata !247, metadata !"ir", metadata !17, i32 83886555, metadata !250, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 475]
!382 = metadata !{i32 786689, metadata !247, metadata !"x", metadata !17, i32 100663772, metadata !232, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 476]
!383 = metadata !{i32 786689, metadata !247, metadata !"v", metadata !17, i32 117440988, metadata !232, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 476]
!384 = metadata !{i32 786689, metadata !247, metadata !"start", metadata !17, i32 134218204, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 476]
!385 = metadata !{i32 786689, metadata !247, metadata !"end", metadata !17, i32 150995420, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 476]
!386 = metadata !{i32 786689, metadata !247, metadata !"box", metadata !17, i32 167772636, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 476]
!387 = metadata !{i32 786689, metadata !247, metadata !"cr", metadata !17, i32 184549852, metadata !365, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 476]
!388 = metadata !{i32 786688, metadata !247, metadata !"factor", metadata !17, i32 487, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [factor] [line 487]
!389 = metadata !{i32 786688, metadata !247, metadata !"E_lost", metadata !17, i32 487, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [E_lost] [line 487]
!390 = metadata !{i32 786688, metadata !247, metadata !"pt", metadata !17, i32 488, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pt] [line 488]
!391 = metadata !{i32 786688, metadata !247, metadata !"ptot", metadata !17, i32 488, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptot] [line 488]
!392 = metadata !{i32 786688, metadata !247, metadata !"pphot", metadata !17, i32 488, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pphot] [line 488]
!393 = metadata !{i32 786688, metadata !247, metadata !"pcoll", metadata !17, i32 488, metadata !198, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pcoll] [line 488]
!394 = metadata !{i32 786688, metadata !247, metadata !"tmax", metadata !17, i32 488, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmax] [line 488]
!395 = metadata !{i32 786688, metadata !247, metadata !"hboxx", metadata !17, i32 489, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hboxx] [line 489]
!396 = metadata !{i32 786688, metadata !247, metadata !"hboxy", metadata !17, i32 489, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hboxy] [line 489]
!397 = metadata !{i32 786688, metadata !247, metadata !"rho2", metadata !17, i32 489, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rho2] [line 489]
!398 = metadata !{i32 786688, metadata !247, metadata !"dv", metadata !17, i32 490, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dv] [line 490]
!399 = metadata !{i32 786688, metadata !247, metadata !"ddv", metadata !17, i32 490, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ddv] [line 490]
!400 = metadata !{i32 786688, metadata !247, metadata !"bIonize", metadata !17, i32 491, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bIonize] [line 491]
!401 = metadata !{i32 786688, metadata !247, metadata !"bKHole", metadata !17, i32 491, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bKHole] [line 491]
!402 = metadata !{i32 786688, metadata !247, metadata !"bL", metadata !17, i32 491, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bL] [line 491]
!403 = metadata !{i32 786688, metadata !247, metadata !"bDOIT", metadata !17, i32 491, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDOIT] [line 491]
!404 = metadata !{i32 786688, metadata !247, metadata !"i", metadata !17, i32 492, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 492]
!405 = metadata !{i32 786688, metadata !247, metadata !"k", metadata !17, i32 492, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 492]
!406 = metadata !{i32 786688, metadata !247, metadata !"kk", metadata !17, i32 492, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 492]
!407 = metadata !{i32 786688, metadata !247, metadata !"m", metadata !17, i32 492, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 492]
!408 = metadata !{i32 786688, metadata !247, metadata !"nK", metadata !17, i32 492, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nK] [line 492]
!409 = metadata !{i32 786688, metadata !247, metadata !"nL", metadata !17, i32 492, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 492]
!410 = metadata !{i32 786688, metadata !247, metadata !"dq", metadata !17, i32 492, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dq] [line 492]
!411 = metadata !{i32 786688, metadata !247, metadata !"nkh", metadata !17, i32 492, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nkh] [line 492]
!412 = metadata !{i32 786688, metadata !247, metadata !"nkdecay", metadata !17, i32 492, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nkdecay] [line 492]
!413 = metadata !{i32 786688, metadata !247, metadata !"nionize", metadata !17, i32 493, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nionize] [line 493]
!414 = metadata !{i32 786688, metadata !247, metadata !"nkhole", metadata !17, i32 493, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nkhole] [line 493]
!415 = metadata !{i32 786688, metadata !247, metadata !"ndecay", metadata !17, i32 493, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndecay] [line 493]
!416 = metadata !{i32 786688, metadata !247, metadata !"nbuf", metadata !17, i32 493, metadata !417, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbuf] [line 493]
!417 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !26, metadata !199, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!418 = metadata !{i32 786688, metadata !419, metadata !"theta", metadata !17, i32 639, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [theta] [line 639]
!419 = metadata !{i32 786443, metadata !1, metadata !420, i32 637, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!420 = metadata !{i32 786443, metadata !1, metadata !421, i32 636, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!421 = metadata !{i32 786443, metadata !1, metadata !422, i32 617, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!422 = metadata !{i32 786443, metadata !1, metadata !423, i32 590, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!423 = metadata !{i32 786443, metadata !1, metadata !247, i32 590, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!424 = metadata !{i32 786688, metadata !419, metadata !"phi", metadata !17, i32 639, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [phi] [line 639]
!425 = metadata !{i32 786688, metadata !426, metadata !"theta", metadata !17, i32 679, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [theta] [line 679]
!426 = metadata !{i32 786443, metadata !1, metadata !420, i32 678, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!427 = metadata !{i32 786688, metadata !426, metadata !"Ebind", metadata !17, i32 679, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ebind] [line 679]
!428 = metadata !{i32 786688, metadata !426, metadata !"Eelec", metadata !17, i32 679, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Eelec] [line 679]
!429 = metadata !{i32 786478, metadata !430, metadata !431, metadata !"clear_rvec", metadata !"clear_rvec", metadata !"", i32 316, metadata !432, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !434, i32 317} ; [ DW_TAG_subprogram ] [line 316] [local] [def] [scope 317] [clear_rvec]
!430 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!431 = metadata !{i32 786473, metadata !430}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!432 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !433, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!433 = metadata !{null, metadata !108}
!434 = metadata !{metadata !435}
!435 = metadata !{i32 786689, metadata !429, metadata !"a", metadata !431, i32 16777532, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 316]
!436 = metadata !{i32 786478, metadata !430, metadata !431, metadata !"rvec_inc", metadata !"rvec_inc", metadata !"", i32 231, metadata !437, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !439, i32 232} ; [ DW_TAG_subprogram ] [line 231] [local] [def] [scope 232] [rvec_inc]
!437 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !438, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!438 = metadata !{null, metadata !108, metadata !108}
!439 = metadata !{metadata !440, metadata !441, metadata !442, metadata !443, metadata !444}
!440 = metadata !{i32 786689, metadata !436, metadata !"a", metadata !431, i32 16777447, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 231]
!441 = metadata !{i32 786689, metadata !436, metadata !"b", metadata !431, i32 33554663, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 231]
!442 = metadata !{i32 786688, metadata !436, metadata !"x", metadata !431, i32 233, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 233]
!443 = metadata !{i32 786688, metadata !436, metadata !"y", metadata !431, i32 233, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 233]
!444 = metadata !{i32 786688, metadata !436, metadata !"z", metadata !431, i32 233, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 233]
!445 = metadata !{i32 786478, metadata !430, metadata !431, metadata !"svmul", metadata !"svmul", metadata !"", i32 304, metadata !446, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !448, i32 305} ; [ DW_TAG_subprogram ] [line 304] [local] [def] [scope 305] [svmul]
!446 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!447 = metadata !{null, metadata !86, metadata !108, metadata !108}
!448 = metadata !{metadata !449, metadata !450, metadata !451}
!449 = metadata !{i32 786689, metadata !445, metadata !"a", metadata !431, i32 16777520, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 304]
!450 = metadata !{i32 786689, metadata !445, metadata !"v1", metadata !431, i32 33554736, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v1] [line 304]
!451 = metadata !{i32 786689, metadata !445, metadata !"v2", metadata !431, i32 50331952, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v2] [line 304]
!452 = metadata !{i32 786478, metadata !430, metadata !431, metadata !"iprod", metadata !"iprod", metadata !"", i32 343, metadata !453, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !455, i32 344} ; [ DW_TAG_subprogram ] [line 343] [local] [def] [scope 344] [iprod]
!453 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !454, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!454 = metadata !{metadata !86, metadata !108, metadata !108}
!455 = metadata !{metadata !456, metadata !457}
!456 = metadata !{i32 786689, metadata !452, metadata !"a", metadata !431, i32 16777559, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 343]
!457 = metadata !{i32 786689, metadata !452, metadata !"b", metadata !431, i32 33554775, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 343]
!458 = metadata !{i32 786478, metadata !1, metadata !17, metadata !"polar2cart", metadata !"polar2cart", metadata !"", i32 392, metadata !459, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !461, i32 393} ; [ DW_TAG_subprogram ] [line 392] [local] [def] [scope 393] [polar2cart]
!459 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !460, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!460 = metadata !{null, metadata !86, metadata !86, metadata !108}
!461 = metadata !{metadata !462, metadata !463, metadata !464}
!462 = metadata !{i32 786689, metadata !458, metadata !"phi", metadata !17, i32 16777608, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phi] [line 392]
!463 = metadata !{i32 786689, metadata !458, metadata !"theta", metadata !17, i32 33554824, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [theta] [line 392]
!464 = metadata !{i32 786689, metadata !458, metadata !"v", metadata !17, i32 50332040, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 392]
!465 = metadata !{i32 786478, metadata !430, metadata !431, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !466, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !468, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!466 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!467 = metadata !{metadata !86, metadata !86}
!468 = metadata !{metadata !469}
!469 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!470 = metadata !{metadata !471, metadata !482, metadata !487, metadata !488, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !515, metadata !516, metadata !534, metadata !536, metadata !537, metadata !538, metadata !539}
!471 = metadata !{i32 786484, i32 0, null, metadata !"recoil", metadata !"recoil", metadata !"", metadata !17, i32 132, metadata !472, i32 0, i32 1, [27 x %struct.t_recoil]* @recoil, null} ; [ DW_TAG_variable ] [recoil] [line 132] [def]
!472 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3456, i64 32, i32 0, i32 0, metadata !473, metadata !480, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3456, align 32, offset 0] [from t_recoil]
!473 = metadata !{i32 786454, metadata !1, null, metadata !"t_recoil", i32 130, i64 0, i64 0, i64 0, i32 0, metadata !474} ; [ DW_TAG_typedef ] [t_recoil] [line 130, size 0, align 0, offset 0] [from ]
!474 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 128, i64 128, i64 32, i32 0, i32 0, null, metadata !475, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 128, align 32, offset 0] [from ]
!475 = metadata !{metadata !476, metadata !477, metadata !478, metadata !479}
!476 = metadata !{i32 786445, metadata !1, metadata !474, metadata !"E_K", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [E_K] [line 129, size 32, align 32, offset 0] [from real]
!477 = metadata !{i32 786445, metadata !1, metadata !474, metadata !"E_L", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !86} ; [ DW_TAG_member ] [E_L] [line 129, size 32, align 32, offset 32] [from real]
!478 = metadata !{i32 786445, metadata !1, metadata !474, metadata !"Prob_K", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !86} ; [ DW_TAG_member ] [Prob_K] [line 129, size 32, align 32, offset 64] [from real]
!479 = metadata !{i32 786445, metadata !1, metadata !474, metadata !"tau", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !86} ; [ DW_TAG_member ] [tau] [line 129, size 32, align 32, offset 96] [from real]
!480 = metadata !{metadata !481}
!481 = metadata !{i32 786465, i64 0, i64 27}      ; [ DW_TAG_subrange_type ] [0, 26]
!482 = metadata !{i32 786484, i32 0, metadata !177, metadata !"ppp", metadata !"ppp", metadata !"", metadata !17, i32 321, metadata !483, i32 1, i32 1, [6 x [8 x double]]* @ptheta_incoh.ppp, null} ; [ DW_TAG_variable ] [ppp] [line 321] [local] [def]
!483 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3072, i64 64, i32 0, i32 0, metadata !174, metadata !484, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3072, align 64, offset 0] [from double]
!484 = metadata !{metadata !485, metadata !486}
!485 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!486 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!487 = metadata !{i32 786484, i32 0, metadata !189, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !17, i32 352, metadata !26, i32 1, i32 1, null, null}
!488 = metadata !{i32 786484, i32 0, metadata !189, metadata !"intp", metadata !"intp", metadata !"", metadata !17, i32 353, metadata !489, i32 1, i32 1, float*** @rand_theta_incoh.intp, null} ; [ DW_TAG_variable ] [intp] [line 353] [local] [def]
!489 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!490 = metadata !{i32 786484, i32 0, metadata !189, metadata !"i", metadata !"i", metadata !"", metadata !17, i32 354, metadata !26, i32 1, i32 1, i32* @rand_theta_incoh.i, null} ; [ DW_TAG_variable ] [i] [line 354] [local] [def]
!491 = metadata !{i32 786484, i32 0, metadata !189, metadata !"j", metadata !"j", metadata !"", metadata !17, i32 354, metadata !26, i32 1, i32 1, i32* @rand_theta_incoh.j, null} ; [ DW_TAG_variable ] [j] [line 354] [local] [def]
!492 = metadata !{i32 786484, i32 0, metadata !189, metadata !"cur", metadata !"cur", metadata !"", metadata !17, i32 354, metadata !26, i32 1, i32 1, i32* @rand_theta_incoh.cur, null} ; [ DW_TAG_variable ] [cur] [line 354] [local] [def]
!493 = metadata !{i32 786484, i32 0, metadata !247, metadata !"xvg", metadata !"xvg", metadata !"", metadata !17, i32 478, metadata !20, i32 1, i32 1, %struct._IO_FILE** @ionize.xvg, null} ; [ DW_TAG_variable ] [xvg] [line 478] [local] [def]
!494 = metadata !{i32 786484, i32 0, metadata !247, metadata !"ion", metadata !"ion", metadata !"", metadata !17, i32 478, metadata !20, i32 1, i32 1, %struct._IO_FILE** @ionize.ion, null} ; [ DW_TAG_variable ] [ion] [line 478] [local] [def]
!495 = metadata !{i32 786484, i32 0, metadata !247, metadata !"leg", metadata !"leg", metadata !"", metadata !17, i32 479, metadata !496, i32 1, i32 1, [5 x i8*]* @ionize.leg, null} ; [ DW_TAG_variable ] [leg] [line 479] [local] [def]
!496 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 64, i32 0, i32 0, metadata !28, metadata !497, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 64, offset 0] [from ]
!497 = metadata !{metadata !498}
!498 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!499 = metadata !{i32 786484, i32 0, metadata !247, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !17, i32 480, metadata !26, i32 1, i32 1, null, null}
!500 = metadata !{i32 786484, i32 0, metadata !247, metadata !"t0", metadata !"t0", metadata !"", metadata !17, i32 481, metadata !86, i32 1, i32 1, float* @ionize.t0, null} ; [ DW_TAG_variable ] [t0] [line 481] [local] [def]
!501 = metadata !{i32 786484, i32 0, metadata !247, metadata !"imax", metadata !"imax", metadata !"", metadata !17, i32 481, metadata !86, i32 1, i32 1, float* @ionize.imax, null} ; [ DW_TAG_variable ] [imax] [line 481] [local] [def]
!502 = metadata !{i32 786484, i32 0, metadata !247, metadata !"width", metadata !"width", metadata !"", metadata !17, i32 481, metadata !86, i32 1, i32 1, float* @ionize.width, null} ; [ DW_TAG_variable ] [width] [line 481] [local] [def]
!503 = metadata !{i32 786484, i32 0, metadata !247, metadata !"rho", metadata !"rho", metadata !"", metadata !17, i32 481, metadata !86, i32 1, i32 1, float* @ionize.rho, null} ; [ DW_TAG_variable ] [rho] [line 481] [local] [def]
!504 = metadata !{i32 786484, i32 0, metadata !247, metadata !"nphot", metadata !"nphot", metadata !"", metadata !17, i32 481, metadata !86, i32 1, i32 1, float* @ionize.nphot, null} ; [ DW_TAG_variable ] [nphot] [line 481] [local] [def]
!505 = metadata !{i32 786484, i32 0, metadata !247, metadata !"interval", metadata !"interval", metadata !"", metadata !17, i32 482, metadata !86, i32 1, i32 1, float* @ionize.interval, null} ; [ DW_TAG_variable ] [interval] [line 482] [local] [def]
!506 = metadata !{i32 786484, i32 0, metadata !247, metadata !"dq_tot", metadata !"dq_tot", metadata !"", metadata !17, i32 483, metadata !26, i32 1, i32 1, i32* @ionize.dq_tot, null} ; [ DW_TAG_variable ] [dq_tot] [line 483] [local] [def]
!507 = metadata !{i32 786484, i32 0, metadata !247, metadata !"nkd_tot", metadata !"nkd_tot", metadata !"", metadata !17, i32 483, metadata !26, i32 1, i32 1, i32* @ionize.nkd_tot, null} ; [ DW_TAG_variable ] [nkd_tot] [line 483] [local] [def]
!508 = metadata !{i32 786484, i32 0, metadata !247, metadata !"ephot", metadata !"ephot", metadata !"", metadata !17, i32 483, metadata !26, i32 1, i32 1, i32* @ionize.ephot, null} ; [ DW_TAG_variable ] [ephot] [line 483] [local] [def]
!509 = metadata !{i32 786484, i32 0, metadata !247, metadata !"mode", metadata !"mode", metadata !"", metadata !17, i32 483, metadata !26, i32 1, i32 1, i32* @ionize.mode, null} ; [ DW_TAG_variable ] [mode] [line 483] [local] [def]
!510 = metadata !{i32 786484, i32 0, metadata !247, metadata !"ca", metadata !"ca", metadata !"", metadata !17, i32 484, metadata !78, i32 1, i32 1, %struct.t_cross_atom** @ionize.ca, null} ; [ DW_TAG_variable ] [ca] [line 484] [local] [def]
!511 = metadata !{i32 786484, i32 0, metadata !247, metadata !"Eindex", metadata !"Eindex", metadata !"", metadata !17, i32 485, metadata !26, i32 1, i32 1, i32* @ionize.Eindex, null} ; [ DW_TAG_variable ] [Eindex] [line 485] [local] [def]
!512 = metadata !{i32 786484, i32 0, null, metadata !"Energies", metadata !"Energies", metadata !"", metadata !17, i32 174, metadata !513, i32 1, i32 1, [6 x i32]* @Energies, null} ; [ DW_TAG_variable ] [Energies] [line 174] [local] [def]
!513 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !26, metadata !514, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!514 = metadata !{metadata !485}
!515 = metadata !{i32 786484, i32 0, null, metadata !"ionize_seed", metadata !"ionize_seed", metadata !"", metadata !17, i32 175, metadata !26, i32 1, i32 1, i32* @ionize_seed, null} ; [ DW_TAG_variable ] [ionize_seed] [line 175] [local] [def]
!516 = metadata !{i32 786484, i32 0, null, metadata !"element", metadata !"element", metadata !"", metadata !17, i32 106, metadata !517, i32 1, i32 1, [7 x %struct.t_element]* @element, null} ; [ DW_TAG_variable ] [element] [line 106] [local] [def]
!517 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1344, i64 64, i32 0, i32 0, metadata !518, metadata !532, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1344, align 64, offset 0] [from t_element]
!518 = metadata !{i32 786454, metadata !1, null, metadata !"t_element", i32 104, i64 0, i64 0, i64 0, i32 0, metadata !519} ; [ DW_TAG_typedef ] [t_element] [line 104, size 0, align 0, offset 0] [from ]
!519 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 100, i64 192, i64 64, i32 0, i32 0, null, metadata !520, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 100, size 192, align 64, offset 0] [from ]
!520 = metadata !{metadata !521, metadata !522, metadata !523}
!521 = metadata !{i32 786445, metadata !1, metadata !519, metadata !"name", i32 101, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [name] [line 101, size 64, align 64, offset 0] [from ]
!522 = metadata !{i32 786445, metadata !1, metadata !519, metadata !"nel", i32 102, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [nel] [line 102, size 32, align 32, offset 64] [from int]
!523 = metadata !{i32 786445, metadata !1, metadata !519, metadata !"cross", i32 103, i64 64, i64 64, i64 128, i32 0, metadata !524} ; [ DW_TAG_member ] [cross] [line 103, size 64, align 64, offset 128] [from ]
!524 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !525} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_cross]
!525 = metadata !{i32 786454, metadata !1, null, metadata !"t_cross", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !526} ; [ DW_TAG_typedef ] [t_cross] [line 50, size 0, align 0, offset 0] [from ]
!526 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 48, i64 128, i64 32, i32 0, i32 0, null, metadata !527, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 128, align 32, offset 0] [from ]
!527 = metadata !{metadata !528, metadata !529, metadata !530, metadata !531}
!528 = metadata !{i32 786445, metadata !1, metadata !526, metadata !"photo", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [photo] [line 49, size 32, align 32, offset 0] [from real]
!529 = metadata !{i32 786445, metadata !1, metadata !526, metadata !"coh", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !86} ; [ DW_TAG_member ] [coh] [line 49, size 32, align 32, offset 32] [from real]
!530 = metadata !{i32 786445, metadata !1, metadata !526, metadata !"incoh", i32 49, i64 32, i64 32, i64 64, i32 0, metadata !86} ; [ DW_TAG_member ] [incoh] [line 49, size 32, align 32, offset 64] [from real]
!531 = metadata !{i32 786445, metadata !1, metadata !526, metadata !"incoh_abs", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !86} ; [ DW_TAG_member ] [incoh_abs] [line 49, size 32, align 32, offset 96] [from real]
!532 = metadata !{metadata !533}
!533 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!534 = metadata !{i32 786484, i32 0, null, metadata !"cross_sec_s", metadata !"cross_sec_s", metadata !"", metadata !17, i32 91, metadata !535, i32 1, i32 1, [6 x %struct.t_cross]* @cross_sec_s, null} ; [ DW_TAG_variable ] [cross_sec_s] [line 91] [local] [def]
!535 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !525, metadata !514, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from t_cross]
!536 = metadata !{i32 786484, i32 0, null, metadata !"cross_sec_o", metadata !"cross_sec_o", metadata !"", metadata !17, i32 83, metadata !535, i32 1, i32 1, [6 x %struct.t_cross]* @cross_sec_o, null} ; [ DW_TAG_variable ] [cross_sec_o] [line 83] [local] [def]
!537 = metadata !{i32 786484, i32 0, null, metadata !"cross_sec_n", metadata !"cross_sec_n", metadata !"", metadata !17, i32 75, metadata !535, i32 1, i32 1, [6 x %struct.t_cross]* @cross_sec_n, null} ; [ DW_TAG_variable ] [cross_sec_n] [line 75] [local] [def]
!538 = metadata !{i32 786484, i32 0, null, metadata !"cross_sec_c", metadata !"cross_sec_c", metadata !"", metadata !17, i32 67, metadata !535, i32 1, i32 1, [6 x %struct.t_cross]* @cross_sec_c, null} ; [ DW_TAG_variable ] [cross_sec_c] [line 67] [local] [def]
!539 = metadata !{i32 786484, i32 0, null, metadata !"cross_sec_h", metadata !"cross_sec_h", metadata !"", metadata !17, i32 59, metadata !535, i32 1, i32 1, [6 x %struct.t_cross]* @cross_sec_h, null} ; [ DW_TAG_variable ] [cross_sec_h] [line 59] [local] [def]
!540 = metadata !{i32 179, i32 0, metadata !16, null}
!541 = metadata !{i32 181, i32 0, metadata !16, null}
!542 = metadata !{metadata !"int", metadata !543}
!543 = metadata !{metadata !"omnipotent char", metadata !544}
!544 = metadata !{metadata !"Simple C/C++ TBAA"}
!545 = metadata !{i32 183, i32 0, metadata !16, null}
!546 = metadata !{i32 185, i32 0, metadata !97, null}
!547 = metadata !{i32 186, i32 0, metadata !97, null}
!548 = metadata !{i32 188, i32 0, metadata !97, null}
!549 = metadata !{i32 194, i32 0, metadata !97, null}
!550 = metadata !{i32 195, i32 0, metadata !97, null}
!551 = metadata !{i32 196, i32 0, metadata !97, null}
!552 = metadata !{i32 197, i32 0, metadata !97, null}
!553 = metadata !{i32 198, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !97, i32 198, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!555 = metadata !{i32 212, i32 0, metadata !556, null}
!556 = metadata !{i32 786443, metadata !1, metadata !554, i32 198, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!557 = metadata !{i32 199, i32 0, metadata !556, null}
!558 = metadata !{i32 200, i32 0, metadata !556, null}
!559 = metadata !{i32 201, i32 0, metadata !556, null}
!560 = metadata !{metadata !"any pointer", metadata !543}
!561 = metadata !{i32 202, i32 0, metadata !562, null}
!562 = metadata !{i32 786443, metadata !1, metadata !556, i32 202, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!563 = metadata !{i32 203, i32 0, metadata !562, null}
!564 = metadata !{i32 204, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !562, i32 203, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!566 = metadata !{i32 205, i32 0, metadata !565, null}
!567 = metadata !{i32 207, i32 0, metadata !556, null}
!568 = metadata !{i32 208, i32 0, metadata !556, null}
!569 = metadata !{i32 210, i32 0, metadata !556, null}
!570 = metadata !{metadata !"float", metadata !543}
!571 = metadata !{i32 213, i32 0, metadata !556, null}
!572 = metadata !{i32 214, i32 0, metadata !556, null}
!573 = metadata !{i32 215, i32 0, metadata !556, null}
!574 = metadata !{i32 217, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !556, i32 215, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!576 = metadata !{i32 218, i32 0, metadata !575, null}
!577 = metadata !{i32 220, i32 0, metadata !575, null}
!578 = metadata !{i32 221, i32 0, metadata !575, null}
!579 = metadata !{i32 223, i32 0, metadata !575, null}
!580 = metadata !{i32 224, i32 0, metadata !575, null}
!581 = metadata !{i32 227, i32 0, metadata !575, null}
!582 = metadata !{i32 228, i32 0, metadata !575, null}
!583 = metadata !{i32 230, i32 0, metadata !575, null}
!584 = metadata !{i32 231, i32 0, metadata !575, null}
!585 = metadata !{i32 234, i32 0, metadata !97, null}
!586 = metadata !{i32 235, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !97, i32 235, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!588 = metadata !{i32 236, i32 0, metadata !587, null}
!589 = metadata !{i32 237, i32 0, metadata !587, null}
!590 = metadata !{i32 238, i32 0, metadata !97, null}
!591 = metadata !{i32 240, i32 0, metadata !97, null}
!592 = metadata !{i32 243, i32 0, metadata !97, null}
!593 = metadata !{i32 245, i32 0, metadata !147, null}
!594 = metadata !{i32 247, i32 0, metadata !147, null}
!595 = metadata !{i32 248, i32 0, metadata !147, null}
!596 = metadata !{i32 250, i32 0, metadata !147, null}
!597 = metadata !{i32 251, i32 0, metadata !147, null}
!598 = metadata !{i32 253, i32 0, metadata !152, null}
!599 = metadata !{i32 255, i32 0, metadata !152, null}
!600 = metadata !{i32 258, i32 0, metadata !155, null}
!601 = metadata !{float 0.000000e+00}
!602 = metadata !{i32 260, i32 0, metadata !155, null}
!603 = metadata !{i32 263, i32 0, metadata !155, null}
!604 = metadata !{i32 786689, metadata !147, metadata !"ca", metadata !17, i32 16777461, metadata !78, i32 0, metadata !605} ; [ DW_TAG_arg_variable ] [ca] [line 245]
!605 = metadata !{i32 265, i32 0, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !155, i32 263, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!607 = metadata !{i32 245, i32 0, metadata !147, metadata !605}
!608 = metadata !{i32 247, i32 0, metadata !147, metadata !605}
!609 = metadata !{i32 248, i32 0, metadata !147, metadata !605}
!610 = metadata !{i32 250, i32 0, metadata !147, metadata !605}
!611 = metadata !{i32 786689, metadata !152, metadata !"ca", metadata !17, i32 16777469, metadata !78, i32 0, metadata !612} ; [ DW_TAG_arg_variable ] [ca] [line 253]
!612 = metadata !{i32 266, i32 0, metadata !606, null}
!613 = metadata !{i32 253, i32 0, metadata !152, metadata !612}
!614 = metadata !{i32 267, i32 0, metadata !606, null}
!615 = metadata !{i32 268, i32 0, metadata !606, null}
!616 = metadata !{i32 270, i32 0, metadata !606, null}
!617 = metadata !{i32 255, i32 0, metadata !152, metadata !612}
!618 = metadata !{i32 272, i32 0, metadata !606, null}
!619 = metadata !{i32 275, i32 0, metadata !606, null}
!620 = metadata !{i32 276, i32 0, metadata !606, null}
!621 = metadata !{i32 278, i32 0, metadata !606, null}
!622 = metadata !{i32 279, i32 0, metadata !606, null}
!623 = metadata !{i32 280, i32 0, metadata !155, null}
!624 = metadata !{i32 283, i32 0, metadata !164, null}
!625 = metadata !{i32 285, i32 0, metadata !164, null}
!626 = metadata !{i32 287, i32 0, metadata !164, null}
!627 = metadata !{i32 290, i32 0, metadata !164, null}
!628 = metadata !{i32 292, i32 0, metadata !629, null}
!629 = metadata !{i32 786443, metadata !1, metadata !164, i32 290, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!630 = metadata !{i32 293, i32 0, metadata !629, null}
!631 = metadata !{i32 294, i32 0, metadata !629, null}
!632 = metadata !{i32 295, i32 0, metadata !629, null}
!633 = metadata !{i32 297, i32 0, metadata !629, null}
!634 = metadata !{i32 298, i32 0, metadata !629, null}
!635 = metadata !{i32 300, i32 0, metadata !629, null}
!636 = metadata !{i32 301, i32 0, metadata !629, null}
!637 = metadata !{i32 303, i32 0, metadata !164, null}
!638 = metadata !{i32 305, i32 0, metadata !171, null}
!639 = metadata !{i32 307, i32 0, metadata !171, null}
!640 = metadata !{i32 310, i32 0, metadata !171, null}
!641 = metadata !{i32 311, i32 0, metadata !171, null}
!642 = metadata !{i32 313, i32 0, metadata !177, null}
!643 = metadata !{i32 337, i32 0, metadata !177, null}
!644 = metadata !{metadata !"double", metadata !543}
!645 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, metadata !643} ; [ DW_TAG_arg_variable ] [x] [line 197]
!646 = metadata !{i32 197, i32 0, metadata !465, metadata !643}
!647 = metadata !{i32 199, i32 0, metadata !648, metadata !643}
!648 = metadata !{i32 786443, metadata !430, metadata !465} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!649 = metadata !{i32 786689, metadata !171, metadata !"x", metadata !17, i32 16777521, metadata !174, i32 0, metadata !643} ; [ DW_TAG_arg_variable ] [x] [line 305]
!650 = metadata !{i32 305, i32 0, metadata !171, metadata !643}
!651 = metadata !{i32 307, i32 0, metadata !171, metadata !643}
!652 = metadata !{i32 310, i32 0, metadata !171, metadata !643}
!653 = metadata !{i32 338, i32 0, metadata !177, null}
!654 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, metadata !653} ; [ DW_TAG_arg_variable ] [x] [line 197]
!655 = metadata !{i32 197, i32 0, metadata !465, metadata !653}
!656 = metadata !{i32 199, i32 0, metadata !648, metadata !653}
!657 = metadata !{i32 786689, metadata !171, metadata !"x", metadata !17, i32 16777521, metadata !174, i32 0, metadata !653} ; [ DW_TAG_arg_variable ] [x] [line 305]
!658 = metadata !{i32 305, i32 0, metadata !171, metadata !653}
!659 = metadata !{i32 307, i32 0, metadata !171, metadata !653}
!660 = metadata !{i32 310, i32 0, metadata !171, metadata !653}
!661 = metadata !{i32 339, i32 0, metadata !177, null}
!662 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, metadata !661} ; [ DW_TAG_arg_variable ] [x] [line 197]
!663 = metadata !{i32 197, i32 0, metadata !465, metadata !661}
!664 = metadata !{i32 199, i32 0, metadata !648, metadata !661}
!665 = metadata !{i32 786689, metadata !171, metadata !"x", metadata !17, i32 16777521, metadata !174, i32 0, metadata !661} ; [ DW_TAG_arg_variable ] [x] [line 305]
!666 = metadata !{i32 305, i32 0, metadata !171, metadata !661}
!667 = metadata !{i32 307, i32 0, metadata !171, metadata !661}
!668 = metadata !{i32 310, i32 0, metadata !171, metadata !661}
!669 = metadata !{i32 340, i32 0, metadata !177, null}
!670 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, metadata !669} ; [ DW_TAG_arg_variable ] [x] [line 197]
!671 = metadata !{i32 197, i32 0, metadata !465, metadata !669}
!672 = metadata !{i32 199, i32 0, metadata !648, metadata !669}
!673 = metadata !{i32 786689, metadata !171, metadata !"x", metadata !17, i32 16777521, metadata !174, i32 0, metadata !669} ; [ DW_TAG_arg_variable ] [x] [line 305]
!674 = metadata !{i32 305, i32 0, metadata !171, metadata !669}
!675 = metadata !{i32 307, i32 0, metadata !171, metadata !669}
!676 = metadata !{i32 310, i32 0, metadata !171, metadata !669}
!677 = metadata !{i32 341, i32 0, metadata !177, null}
!678 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, metadata !677} ; [ DW_TAG_arg_variable ] [x] [line 197]
!679 = metadata !{i32 197, i32 0, metadata !465, metadata !677}
!680 = metadata !{i32 199, i32 0, metadata !648, metadata !677}
!681 = metadata !{i32 786689, metadata !171, metadata !"x", metadata !17, i32 16777521, metadata !174, i32 0, metadata !677} ; [ DW_TAG_arg_variable ] [x] [line 305]
!682 = metadata !{i32 305, i32 0, metadata !171, metadata !677}
!683 = metadata !{i32 307, i32 0, metadata !171, metadata !677}
!684 = metadata !{i32 310, i32 0, metadata !171, metadata !677}
!685 = metadata !{i32 343, i32 0, metadata !177, null}
!686 = metadata !{i32 345, i32 0, metadata !177, null}
!687 = metadata !{i32 348, i32 0, metadata !189, null}
!688 = metadata !{i32 356, i32 0, metadata !189, null}
!689 = metadata !{float 0x3FC99999A0000000}
!690 = metadata !{i32 358, i32 0, metadata !189, null}
!691 = metadata !{i32 359, i32 0, metadata !189, null}
!692 = metadata !{i32 361, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !1, metadata !189, i32 359, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!694 = metadata !{i32 362, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !693, i32 362, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!696 = metadata !{i32 363, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !695, i32 362, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!698 = metadata !{i32 364, i32 0, metadata !697, null}
!699 = metadata !{i32 366, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !1, metadata !697, i32 366, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!701 = metadata !{i32 367, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !1, metadata !700, i32 366, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!703 = metadata !{i32 369, i32 0, metadata !702, null}
!704 = metadata !{i32 370, i32 0, metadata !702, null}
!705 = metadata !{i32 373, i32 0, metadata !693, null}
!706 = metadata !{i32 374, i32 0, metadata !707, null}
!707 = metadata !{i32 786443, metadata !1, metadata !693, i32 373, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!708 = metadata !{i32 375, i32 0, metadata !709, null}
!709 = metadata !{i32 786443, metadata !1, metadata !707, i32 375, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!710 = metadata !{i32 376, i32 0, metadata !711, null}
!711 = metadata !{i32 786443, metadata !1, metadata !709, i32 375, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!712 = metadata !{i32 377, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !711, i32 377, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!714 = metadata !{i32 378, i32 0, metadata !713, null}
!715 = metadata !{i32 379, i32 0, metadata !711, null}
!716 = metadata !{i32 383, i32 0, metadata !693, null}
!717 = metadata !{i32 385, i32 0, metadata !189, null}
!718 = metadata !{i32 386, i32 0, metadata !719, null}
!719 = metadata !{i32 786443, metadata !1, metadata !189, i32 386, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!720 = metadata !{i32 389, i32 0, metadata !189, null}
!721 = metadata !{i32 399, i32 0, metadata !201, null}
!722 = metadata !{i32 403, i32 0, metadata !201, null}
!723 = metadata !{i32 404, i32 0, metadata !201, null}
!724 = metadata !{i32 786689, metadata !458, metadata !"phi", metadata !17, i32 16777608, metadata !86, i32 0, metadata !725} ; [ DW_TAG_arg_variable ] [phi] [line 392]
!725 = metadata !{i32 405, i32 0, metadata !201, null}
!726 = metadata !{i32 392, i32 0, metadata !458, metadata !725}
!727 = metadata !{i32 786689, metadata !458, metadata !"theta", metadata !17, i32 33554824, metadata !86, i32 0, metadata !725} ; [ DW_TAG_arg_variable ] [theta] [line 392]
!728 = metadata !{i32 786689, metadata !458, metadata !"v", metadata !17, i32 50332040, metadata !108, i32 0, metadata !725} ; [ DW_TAG_arg_variable ] [v] [line 392]
!729 = metadata !{i32 394, i32 0, metadata !730, metadata !725}
!730 = metadata !{i32 786443, metadata !1, metadata !458} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!731 = metadata !{i32 395, i32 0, metadata !730, metadata !725}
!732 = metadata !{i32 396, i32 0, metadata !730, metadata !725}
!733 = metadata !{i32 406, i32 0, metadata !201, null}
!734 = metadata !{i32 408, i32 0, metadata !209, null}
!735 = metadata !{float 0x3FAB185480000000}
!736 = metadata !{i32 412, i32 0, metadata !209, null}
!737 = metadata !{i32 415, i32 0, metadata !209, null}
!738 = metadata !{i32 786689, metadata !452, metadata !"a", metadata !431, i32 16777559, metadata !108, i32 0, metadata !737} ; [ DW_TAG_arg_variable ] [a] [line 343]
!739 = metadata !{i32 343, i32 0, metadata !452, metadata !737}
!740 = metadata !{i32 786689, metadata !452, metadata !"b", metadata !431, i32 33554775, metadata !108, i32 0, metadata !737} ; [ DW_TAG_arg_variable ] [b] [line 343]
!741 = metadata !{i32 345, i32 0, metadata !452, metadata !737}
!742 = metadata !{float 0x409484A900000000}
!743 = metadata !{i32 418, i32 0, metadata !209, null}
!744 = metadata !{i32 421, i32 0, metadata !209, null}
!745 = metadata !{i32 424, i32 0, metadata !209, null}
!746 = metadata !{i32 427, i32 0, metadata !209, null}
!747 = metadata !{float 1.000000e+00}
!748 = metadata !{i32 430, i32 0, metadata !209, null}
!749 = metadata !{i32 433, i32 0, metadata !209, null}
!750 = metadata !{i32 434, i32 0, metadata !209, null}
!751 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, metadata !752} ; [ DW_TAG_arg_variable ] [x] [line 197]
!752 = metadata !{i32 435, i32 0, metadata !209, null}
!753 = metadata !{i32 197, i32 0, metadata !465, metadata !752}
!754 = metadata !{i32 436, i32 0, metadata !209, null}
!755 = metadata !{i32 439, i32 0, metadata !209, null}
!756 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, metadata !755} ; [ DW_TAG_arg_variable ] [x] [line 197]
!757 = metadata !{i32 197, i32 0, metadata !465, metadata !755}
!758 = metadata !{i32 199, i32 0, metadata !648, metadata !755}
!759 = metadata !{i32 441, i32 0, metadata !209, null}
!760 = metadata !{i32 444, i32 0, metadata !229, null}
!761 = metadata !{i32 445, i32 0, metadata !229, null}
!762 = metadata !{i32 447, i32 0, metadata !229, null}
!763 = metadata !{i32 450, i32 0, metadata !229, null}
!764 = metadata !{i32 181, i32 0, metadata !16, metadata !765}
!765 = metadata !{i32 451, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !229, i32 450, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!767 = metadata !{i32 786689, metadata !16, metadata !"fp", metadata !17, i32 16777395, metadata !20, i32 0, metadata !765} ; [ DW_TAG_arg_variable ] [fp] [line 179]
!768 = metadata !{i32 179, i32 0, metadata !16, metadata !765}
!769 = metadata !{i32 786689, metadata !16, metadata !"ca", metadata !17, i32 33554611, metadata !78, i32 0, metadata !765} ; [ DW_TAG_arg_variable ] [ca] [line 179]
!770 = metadata !{i32 786689, metadata !16, metadata !"i", metadata !17, i32 50331827, metadata !26, i32 0, metadata !765} ; [ DW_TAG_arg_variable ] [i] [line 179]
!771 = metadata !{i8* undef}
!772 = metadata !{i32 786689, metadata !16, metadata !"file", metadata !17, i32 67109043, metadata !28, i32 0, metadata !765} ; [ DW_TAG_arg_variable ] [file] [line 179]
!773 = metadata !{i32 451}
!774 = metadata !{i32 786689, metadata !16, metadata !"line", metadata !17, i32 83886259, metadata !26, i32 0, metadata !765} ; [ DW_TAG_arg_variable ] [line] [line 179]
!775 = metadata !{i32 452, i32 0, metadata !766, null}
!776 = metadata !{i32 454, i32 0, metadata !229, null}
!777 = metadata !{i32 455, i32 0, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !229, i32 454, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!779 = metadata !{i32 456, i32 0, metadata !778, null}
!780 = metadata !{i32 457, i32 0, metadata !778, null}
!781 = metadata !{i32 458, i32 0, metadata !778, null}
!782 = metadata !{i32 460, i32 0, metadata !778, null}
!783 = metadata !{i32 462, i32 0, metadata !778, null}
!784 = metadata !{i32 463, i32 0, metadata !778, null}
!785 = metadata !{i32 306, i32 0, metadata !445, metadata !786}
!786 = metadata !{i32 466, i32 0, metadata !778, null}
!787 = metadata !{i32 307, i32 0, metadata !445, metadata !786}
!788 = metadata !{i32 308, i32 0, metadata !445, metadata !786}
!789 = metadata !{i32 464, i32 0, metadata !778, null}
!790 = metadata !{i32 786689, metadata !445, metadata !"a", metadata !431, i32 16777520, metadata !86, i32 0, metadata !786} ; [ DW_TAG_arg_variable ] [a] [line 304]
!791 = metadata !{i32 304, i32 0, metadata !445, metadata !786}
!792 = metadata !{i32 786689, metadata !445, metadata !"v1", metadata !431, i32 33554736, metadata !108, i32 0, metadata !786} ; [ DW_TAG_arg_variable ] [v1] [line 304]
!793 = metadata !{i32 786689, metadata !445, metadata !"v2", metadata !431, i32 50331952, metadata !108, i32 0, metadata !786} ; [ DW_TAG_arg_variable ] [v2] [line 304]
!794 = metadata !{i32 467, i32 0, metadata !778, null}
!795 = metadata !{i32 786689, metadata !436, metadata !"a", metadata !431, i32 16777447, metadata !108, i32 0, metadata !794} ; [ DW_TAG_arg_variable ] [a] [line 231]
!796 = metadata !{i32 231, i32 0, metadata !436, metadata !794}
!797 = metadata !{i32 786689, metadata !436, metadata !"b", metadata !431, i32 33554663, metadata !108, i32 0, metadata !794} ; [ DW_TAG_arg_variable ] [b] [line 231]
!798 = metadata !{i32 235, i32 0, metadata !436, metadata !794}
!799 = metadata !{i32 786688, metadata !436, metadata !"x", metadata !431, i32 233, metadata !86, i32 0, metadata !794} ; [ DW_TAG_auto_variable ] [x] [line 233]
!800 = metadata !{i32 236, i32 0, metadata !436, metadata !794}
!801 = metadata !{i32 786688, metadata !436, metadata !"y", metadata !431, i32 233, metadata !86, i32 0, metadata !794} ; [ DW_TAG_auto_variable ] [y] [line 233]
!802 = metadata !{i32 237, i32 0, metadata !436, metadata !794}
!803 = metadata !{i32 786688, metadata !436, metadata !"z", metadata !431, i32 233, metadata !86, i32 0, metadata !794} ; [ DW_TAG_auto_variable ] [z] [line 233]
!804 = metadata !{i32 239, i32 0, metadata !436, metadata !794}
!805 = metadata !{i32 240, i32 0, metadata !436, metadata !794}
!806 = metadata !{i32 241, i32 0, metadata !436, metadata !794}
!807 = metadata !{i32 469, i32 0, metadata !778, null}
!808 = metadata !{i32 472, i32 0, metadata !229, null}
!809 = metadata !{i32 475, i32 0, metadata !247, null}
!810 = metadata !{i32 476, i32 0, metadata !247, null}
!811 = metadata !{i32 487, i32 0, metadata !247, null}
!812 = metadata !{i32 488, i32 0, metadata !247, null}
!813 = metadata !{i32 490, i32 0, metadata !247, null}
!814 = metadata !{i32 491, i32 0, metadata !247, null}
!815 = metadata !{i32 493, i32 0, metadata !247, null}
!816 = metadata !{i32 495, i32 0, metadata !247, null}
!817 = metadata !{i32 497, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !247, i32 495, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!819 = metadata !{i32 498, i32 0, metadata !818, null}
!820 = metadata !{i32 499, i32 0, metadata !818, null}
!821 = metadata !{i32 500, i32 0, metadata !818, null}
!822 = metadata !{i32 501, i32 0, metadata !818, null}
!823 = metadata !{i32 502, i32 0, metadata !818, null}
!824 = metadata !{i32 503, i32 0, metadata !818, null}
!825 = metadata !{i32 504, i32 0, metadata !818, null}
!826 = metadata !{i32 506, i32 0, metadata !818, null}
!827 = metadata !{i32 507, i32 0, metadata !818, null}
!828 = metadata !{i32 511, i32 0, metadata !818, null}
!829 = metadata !{i32 512, i32 0, metadata !818, null}
!830 = metadata !{i32 515, i32 0, metadata !818, null}
!831 = metadata !{i32 517, i32 0, metadata !832, null}
!832 = metadata !{i32 786443, metadata !1, metadata !818, i32 515, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!833 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, metadata !831} ; [ DW_TAG_arg_variable ] [x] [line 197]
!834 = metadata !{i32 197, i32 0, metadata !465, metadata !831}
!835 = metadata !{i32 199, i32 0, metadata !648, metadata !831}
!836 = metadata !{i32 518, i32 0, metadata !832, null}
!837 = metadata !{i32 520, i32 0, metadata !832, null}
!838 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, metadata !837} ; [ DW_TAG_arg_variable ] [x] [line 197]
!839 = metadata !{i32 197, i32 0, metadata !465, metadata !837}
!840 = metadata !{i32 199, i32 0, metadata !648, metadata !837}
!841 = metadata !{i32 521, i32 0, metadata !832, null}
!842 = metadata !{i32 523, i32 0, metadata !818, null}
!843 = metadata !{i32 524, i32 0, metadata !818, null}
!844 = metadata !{i32 525, i32 0, metadata !818, null}
!845 = metadata !{i32 526, i32 0, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !847, i32 526, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!847 = metadata !{i32 786443, metadata !1, metadata !818, i32 525, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!848 = metadata !{i32 527, i32 0, metadata !846, null}
!849 = metadata !{i32 528, i32 0, metadata !847, null}
!850 = metadata !{i32 530, i32 0, metadata !847, null}
!851 = metadata !{i32 532, i32 0, metadata !852, null}
!852 = metadata !{i32 786443, metadata !1, metadata !818, i32 532, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!853 = metadata !{i32 534, i32 0, metadata !818, null}
!854 = metadata !{i32 535, i32 0, metadata !818, null}
!855 = metadata !{i32 538, i32 0, metadata !818, null}
!856 = metadata !{i32 540, i32 0, metadata !818, null}
!857 = metadata !{i32 541, i32 0, metadata !818, null}
!858 = metadata !{i32 543, i32 0, metadata !818, null}
!859 = metadata !{i32 544, i32 0, metadata !818, null}
!860 = metadata !{i32 545, i32 0, metadata !818, null}
!861 = metadata !{i32 547, i32 0, metadata !818, null}
!862 = metadata !{i32 548, i32 0, metadata !818, null}
!863 = metadata !{i32 551, i32 0, metadata !818, null}
!864 = metadata !{i32 554, i32 0, metadata !818, null}
!865 = metadata !{i32 555, i32 0, metadata !818, null}
!866 = metadata !{i32 556, i32 0, metadata !818, null}
!867 = metadata !{i32 558, i32 0, metadata !818, null}
!868 = metadata !{i32 561, i32 0, metadata !818, null}
!869 = metadata !{i32 570, i32 0, metadata !247, null}
!870 = metadata !{i32 571, i32 0, metadata !247, null}
!871 = metadata !{i32 572, i32 0, metadata !247, null}
!872 = metadata !{i32 573, i32 0, metadata !247, null}
!873 = metadata !{i32 576, i32 0, metadata !247, null}
!874 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, metadata !873} ; [ DW_TAG_arg_variable ] [x] [line 197]
!875 = metadata !{i32 197, i32 0, metadata !465, metadata !873}
!876 = metadata !{i32 199, i32 0, metadata !648, metadata !873}
!877 = metadata !{i32 577, i32 0, metadata !247, null}
!878 = metadata !{i32 578, i32 0, metadata !247, null}
!879 = metadata !{i32 580, i32 0, metadata !247, null}
!880 = metadata !{i32 581, i32 0, metadata !247, null}
!881 = metadata !{i32 582, i32 0, metadata !247, null}
!882 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, metadata !881} ; [ DW_TAG_arg_variable ] [x] [line 197]
!883 = metadata !{i32 197, i32 0, metadata !465, metadata !881}
!884 = metadata !{i32 199, i32 0, metadata !648, metadata !881}
!885 = metadata !{i32 585, i32 0, metadata !247, null}
!886 = metadata !{i32 586, i32 0, metadata !247, null}
!887 = metadata !{i32 587, i32 0, metadata !247, null}
!888 = metadata !{i32 590, i32 0, metadata !423, null}
!889 = metadata !{i32 598, i32 0, metadata !422, null}
!890 = metadata !{i32 600, i32 0, metadata !422, null}
!891 = metadata !{i32 618, i32 0, metadata !421, null}
!892 = metadata !{i32 322, i32 0, metadata !893, metadata !891}
!893 = metadata !{i32 786443, metadata !430, metadata !429} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!894 = metadata !{i32 323, i32 0, metadata !893, metadata !891}
!895 = metadata !{i32 663, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !419, i32 661, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!897 = metadata !{i32 667, i32 0, metadata !896, null}
!898 = metadata !{i32 395, i32 0, metadata !730, metadata !897}
!899 = metadata !{i32 396, i32 0, metadata !730, metadata !897}
!900 = metadata !{i32 714, i32 0, metadata !901, null}
!901 = metadata !{i32 786443, metadata !1, metadata !902, i32 713, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!902 = metadata !{i32 786443, metadata !1, metadata !421, i32 711, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!903 = metadata !{i32 715, i32 0, metadata !901, null}
!904 = metadata !{i32 593, i32 0, metadata !905, null}
!905 = metadata !{i32 786443, metadata !1, metadata !422, i32 593, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!906 = metadata !{i32 595, i32 0, metadata !905, null}
!907 = metadata !{i32 599, i32 0, metadata !422, null}
!908 = metadata !{i32 603, i32 0, metadata !422, null}
!909 = metadata !{i32 604, i32 0, metadata !422, null}
!910 = metadata !{i32 606, i32 0, metadata !911, null}
!911 = metadata !{i32 786443, metadata !1, metadata !422, i32 604, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!912 = metadata !{i32 607, i32 0, metadata !911, null}
!913 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, metadata !912} ; [ DW_TAG_arg_variable ] [x] [line 197]
!914 = metadata !{i32 197, i32 0, metadata !465, metadata !912}
!915 = metadata !{i32 199, i32 0, metadata !648, metadata !912}
!916 = metadata !{i32 617, i32 0, metadata !422, null}
!917 = metadata !{i32 613, i32 0, metadata !911, null}
!918 = metadata !{i32 786689, metadata !429, metadata !"a", metadata !431, i32 16777532, metadata !108, i32 0, metadata !891} ; [ DW_TAG_arg_variable ] [a] [line 316]
!919 = metadata !{i32 316, i32 0, metadata !429, metadata !891}
!920 = metadata !{i32 321, i32 0, metadata !893, metadata !891}
!921 = metadata !{i32 621, i32 0, metadata !421, null}
!922 = metadata !{i32 623, i32 0, metadata !421, null}
!923 = metadata !{i32 624, i32 0, metadata !421, null}
!924 = metadata !{i32 632, i32 0, metadata !421, null}
!925 = metadata !{i32 247, i32 0, metadata !147, metadata !924}
!926 = metadata !{i32 248, i32 0, metadata !147, metadata !924}
!927 = metadata !{i32 255, i32 0, metadata !152, metadata !928}
!928 = metadata !{i32 633, i32 0, metadata !421, null}
!929 = metadata !{i32 250, i32 0, metadata !147, metadata !924}
!930 = metadata !{i32 634, i32 0, metadata !421, null}
!931 = metadata !{i32 636, i32 0, metadata !421, null}
!932 = metadata !{i32 643, i32 0, metadata !419, null}
!933 = metadata !{i32 644, i32 0, metadata !419, null}
!934 = metadata !{i32 647, i32 0, metadata !419, null}
!935 = metadata !{i32 646, i32 0, metadata !419, null}
!936 = metadata !{i32 649, i32 0, metadata !937, null}
!937 = metadata !{i32 786443, metadata !1, metadata !419, i32 648, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!938 = metadata !{i32 650, i32 0, metadata !937, null}
!939 = metadata !{i32 1}
!940 = metadata !{i32 651, i32 0, metadata !937, null}
!941 = metadata !{i32 653, i32 0, metadata !419, null}
!942 = metadata !{i32 654, i32 0, metadata !419, null}
!943 = metadata !{i32 656, i32 0, metadata !419, null}
!944 = metadata !{i32 664, i32 0, metadata !896, null}
!945 = metadata !{i32 786689, metadata !458, metadata !"phi", metadata !17, i32 16777608, metadata !86, i32 0, metadata !897} ; [ DW_TAG_arg_variable ] [phi] [line 392]
!946 = metadata !{i32 392, i32 0, metadata !458, metadata !897}
!947 = metadata !{i32 786689, metadata !458, metadata !"theta", metadata !17, i32 33554824, metadata !86, i32 0, metadata !897} ; [ DW_TAG_arg_variable ] [theta] [line 392]
!948 = metadata !{i32 786689, metadata !458, metadata !"v", metadata !17, i32 50332040, metadata !108, i32 0, metadata !897} ; [ DW_TAG_arg_variable ] [v] [line 392]
!949 = metadata !{i32 394, i32 0, metadata !730, metadata !897}
!950 = metadata !{i32 668, i32 0, metadata !951, null}
!951 = metadata !{i32 786443, metadata !1, metadata !896, i32 668, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!952 = metadata !{i32 669, i32 0, metadata !951, null}
!953 = metadata !{i32 671, i32 0, metadata !896, null}
!954 = metadata !{i32 672, i32 0, metadata !896, null}
!955 = metadata !{i32 682, i32 0, metadata !426, null}
!956 = metadata !{i32 681, i32 0, metadata !426, null}
!957 = metadata !{i32 684, i32 0, metadata !958, null}
!958 = metadata !{i32 786443, metadata !1, metadata !426, i32 683, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!959 = metadata !{i32 685, i32 0, metadata !958, null}
!960 = metadata !{i32 686, i32 0, metadata !958, null}
!961 = metadata !{i32 688, i32 0, metadata !426, null}
!962 = metadata !{i32 689, i32 0, metadata !426, null}
!963 = metadata !{i32 786689, metadata !465, metadata !"x", metadata !431, i32 16777413, metadata !86, i32 0, metadata !962} ; [ DW_TAG_arg_variable ] [x] [line 197]
!964 = metadata !{i32 197, i32 0, metadata !465, metadata !962}
!965 = metadata !{i32 199, i32 0, metadata !648, metadata !962}
!966 = metadata !{i32 690, i32 0, metadata !426, null}
!967 = metadata !{i32 691, i32 0, metadata !426, null}
!968 = metadata !{i32 692, i32 0, metadata !426, null}
!969 = metadata !{i32 693, i32 0, metadata !426, null}
!970 = metadata !{i32 703, i32 0, metadata !971, null}
!971 = metadata !{i32 786443, metadata !1, metadata !426, i32 694, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!972 = metadata !{i32 694, i32 0, metadata !426, null}
!973 = metadata !{i32 704, i32 0, metadata !971, null}
!974 = metadata !{i32 711, i32 0, metadata !421, null}
!975 = metadata !{i32 713, i32 0, metadata !902, null}
!976 = metadata !{i32 716, i32 0, metadata !901, null}
!977 = metadata !{i32 717, i32 0, metadata !901, null}
!978 = metadata !{i32 718, i32 0, metadata !901, null}
!979 = metadata !{i32 719, i32 0, metadata !902, null}
!980 = metadata !{i32 720, i32 0, metadata !981, null}
!981 = metadata !{i32 786443, metadata !1, metadata !902, i32 719, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!982 = metadata !{i32 723, i32 0, metadata !981, null}
!983 = metadata !{i32 726, i32 0, metadata !984, null}
!984 = metadata !{i32 786443, metadata !1, metadata !421, i32 726, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!985 = metadata !{i32 727, i32 0, metadata !984, null}
!986 = metadata !{i32 728, i32 0, metadata !421, null}
!987 = metadata !{i32 729, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !1, metadata !421, i32 728, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!989 = metadata !{i32 730, i32 0, metadata !988, null}
!990 = metadata !{i32 731, i32 0, metadata !988, null}
!991 = metadata !{i32 732, i32 0, metadata !421, null}
!992 = metadata !{i32 733, i32 0, metadata !421, null}
!993 = metadata !{i32 737, i32 0, metadata !422, null}
!994 = metadata !{i32 738, i32 0, metadata !995, null}
!995 = metadata !{i32 786443, metadata !1, metadata !422, i32 738, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!996 = metadata !{i32 741, i32 0, metadata !997, null}
!997 = metadata !{i32 786443, metadata !1, metadata !995, i32 739, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!998 = metadata !{i32 739, i32 0, metadata !995, null}
!999 = metadata !{i32 740, i32 0, metadata !997, null}
!1000 = metadata !{i32 742, i32 0, metadata !997, null}
!1001 = metadata !{i32 744, i32 0, metadata !422, null}
!1002 = metadata !{i32 786689, metadata !16, metadata !"fp", metadata !17, i32 16777395, metadata !20, i32 0, metadata !1003} ; [ DW_TAG_arg_variable ] [fp] [line 179]
!1003 = metadata !{i32 745, i32 0, metadata !422, null}
!1004 = metadata !{i32 179, i32 0, metadata !16, metadata !1003}
!1005 = metadata !{i32 undef}
!1006 = metadata !{i32 786689, metadata !16, metadata !"i", metadata !17, i32 50331827, metadata !26, i32 0, metadata !1003} ; [ DW_TAG_arg_variable ] [i] [line 179]
!1007 = metadata !{i32 786689, metadata !16, metadata !"file", metadata !17, i32 67109043, metadata !28, i32 0, metadata !1003} ; [ DW_TAG_arg_variable ] [file] [line 179]
!1008 = metadata !{i32 745}
!1009 = metadata !{i32 786689, metadata !16, metadata !"line", metadata !17, i32 83886259, metadata !26, i32 0, metadata !1003} ; [ DW_TAG_arg_variable ] [line] [line 179]
!1010 = metadata !{i32 181, i32 0, metadata !16, metadata !1003}
!1011 = metadata !{i32 749, i32 0, metadata !247, null}
!1012 = metadata !{i32 750, i32 0, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !1, metadata !247, i32 749, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!1014 = metadata !{i32 751, i32 0, metadata !1013, null}
!1015 = metadata !{i32 752, i32 0, metadata !1013, null}
!1016 = metadata !{i32 753, i32 0, metadata !1013, null}
!1017 = metadata !{i32 754, i32 0, metadata !1013, null}
!1018 = metadata !{i32 755, i32 0, metadata !1013, null}
!1019 = metadata !{i32 756, i32 0, metadata !1013, null}
!1020 = metadata !{i32 758, i32 0, metadata !247, null}
!1021 = metadata !{i32 759, i32 0, metadata !247, null}
!1022 = metadata !{i32 762, i32 0, metadata !247, null}
!1023 = metadata !{i32 764, i32 0, metadata !1024, null}
!1024 = metadata !{i32 786443, metadata !1, metadata !247, i32 762, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!1025 = metadata !{i32 765, i32 0, metadata !1026, null}
!1026 = metadata !{i32 786443, metadata !1, metadata !1024, i32 765, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!1027 = metadata !{i32 766, i32 0, metadata !1028, null}
!1028 = metadata !{i32 786443, metadata !1, metadata !1026, i32 765, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ionize.c]
!1029 = metadata !{i32 767, i32 0, metadata !1028, null}
!1030 = metadata !{i32 768, i32 0, metadata !1028, null}
!1031 = metadata !{i32 769, i32 0, metadata !1028, null}
!1032 = metadata !{i32 770, i32 0, metadata !1028, null}
!1033 = metadata !{i32 771, i32 0, metadata !1028, null}
!1034 = metadata !{i32 773, i32 0, metadata !1024, null}
!1035 = metadata !{i32 774, i32 0, metadata !1024, null}
!1036 = metadata !{i32 775, i32 0, metadata !1024, null}
!1037 = metadata !{i32 778, i32 0, metadata !1024, null}
!1038 = metadata !{i32 780, i32 0, metadata !1024, null}
!1039 = metadata !{i32 781, i32 0, metadata !1024, null}
!1040 = metadata !{i32 782, i32 0, metadata !1024, null}
!1041 = metadata !{i32 784, i32 0, metadata !247, null}
!1042 = metadata !{i32 785, i32 0, metadata !247, null}
!1043 = metadata !{i32 786, i32 0, metadata !247, null}
!1044 = metadata !{i32 787, i32 0, metadata !247, null}
