; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateIOASCIIParameters.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"out1D_d\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str4 = private unnamed_addr constant [47 x i8] c"Do 1D IOASCII output in the diagonal-direction\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@ioasciipriv_ = external global %struct.anon
@.str6 = private unnamed_addr constant [12 x i8] c"out1D_every\00", align 1
@.str7 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str8 = private unnamed_addr constant [53 x i8] c"How often to do 1D ASCII output, overrides out_every\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"-1:*\00", align 1
@.str11 = private unnamed_addr constant [30 x i8] c"Values <= 0 disable 1D output\00", align 1
@.str12 = private unnamed_addr constant [12 x i8] c"out1D_style\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"KEYWORD\00", align 1
@.str14 = private unnamed_addr constant [38 x i8] c"Which style for 1D lines ASCII output\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"xgraph\00", align 1
@.str16 = private unnamed_addr constant [35 x i8] c"f over x plots suitable for xgraph\00", align 1
@.str17 = private unnamed_addr constant [13 x i8] c"gnuplot f(x)\00", align 1
@.str18 = private unnamed_addr constant [36 x i8] c"f over x plots suitable for gnuplot\00", align 1
@.str19 = private unnamed_addr constant [15 x i8] c"gnuplot f(t,x)\00", align 1
@.str20 = private unnamed_addr constant [38 x i8] c"f over t,x plots suitable for gnuplot\00", align 1
@.str21 = private unnamed_addr constant [11 x i8] c"out1D_vars\00", align 1
@.str22 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str23 = private unnamed_addr constant [44 x i8] c"Variables to output in 1D ASCII file format\00", align 1
@.str24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str25 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str26 = private unnamed_addr constant [32 x i8] c"A regex which matces everything\00", align 1
@.str27 = private unnamed_addr constant [8 x i8] c"out1D_x\00", align 1
@.str28 = private unnamed_addr constant [40 x i8] c"Do 1D IOASCII output in the x-direction\00", align 1
@.str29 = private unnamed_addr constant [14 x i8] c"out1D_xline_y\00", align 1
@.str30 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str31 = private unnamed_addr constant [36 x i8] c"y-coord for 1D lines in x-direction\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str33 = private unnamed_addr constant [4 x i8] c"*:*\00", align 1
@.str34 = private unnamed_addr constant [15 x i8] c"out1D_xline_yi\00", align 1
@.str35 = private unnamed_addr constant [45 x i8] c"y-index (from 0) for 1D lines in x-direction\00", align 1
@.str36 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str37 = private unnamed_addr constant [4 x i8] c"0:*\00", align 1
@.str38 = private unnamed_addr constant [14 x i8] c"out1D_xline_z\00", align 1
@.str39 = private unnamed_addr constant [36 x i8] c"z-coord for 1D lines in x-direction\00", align 1
@.str40 = private unnamed_addr constant [15 x i8] c"out1D_xline_zi\00", align 1
@.str41 = private unnamed_addr constant [45 x i8] c"z-index (from 0) for 1D lines in x-direction\00", align 1
@.str42 = private unnamed_addr constant [8 x i8] c"out1D_y\00", align 1
@.str43 = private unnamed_addr constant [40 x i8] c"Do 1D IOASCII output in the y-direction\00", align 1
@.str44 = private unnamed_addr constant [14 x i8] c"out1D_yline_x\00", align 1
@.str45 = private unnamed_addr constant [36 x i8] c"x-coord for 1D lines in y-direction\00", align 1
@.str46 = private unnamed_addr constant [15 x i8] c"out1D_yline_xi\00", align 1
@.str47 = private unnamed_addr constant [45 x i8] c"x-index (from 0) for 1D lines in y-direction\00", align 1
@.str48 = private unnamed_addr constant [14 x i8] c"out1D_yline_z\00", align 1
@.str49 = private unnamed_addr constant [36 x i8] c"z-coord for 1D lines in y-direction\00", align 1
@.str50 = private unnamed_addr constant [15 x i8] c"out1D_yline_zi\00", align 1
@.str51 = private unnamed_addr constant [45 x i8] c"z-index (from 0) for 1D lines in y-direction\00", align 1
@.str52 = private unnamed_addr constant [8 x i8] c"out1D_z\00", align 1
@.str53 = private unnamed_addr constant [40 x i8] c"Do 1D IOASCII output in the z-direction\00", align 1
@.str54 = private unnamed_addr constant [14 x i8] c"out1D_zline_x\00", align 1
@.str55 = private unnamed_addr constant [36 x i8] c"x-coord for 1D lines in z-direction\00", align 1
@.str56 = private unnamed_addr constant [15 x i8] c"out1D_zline_xi\00", align 1
@.str57 = private unnamed_addr constant [45 x i8] c"x-index (from 0) for 1D lines in z-direction\00", align 1
@.str58 = private unnamed_addr constant [14 x i8] c"out1D_zline_y\00", align 1
@.str59 = private unnamed_addr constant [36 x i8] c"y-coord for 1D lines in z-direction\00", align 1
@.str60 = private unnamed_addr constant [15 x i8] c"out1D_zline_yi\00", align 1
@.str61 = private unnamed_addr constant [45 x i8] c"y-index (from 0) for 1D lines in z-direction\00", align 1
@.str62 = private unnamed_addr constant [12 x i8] c"out2D_every\00", align 1
@.str63 = private unnamed_addr constant [53 x i8] c"How often to do 2D ASCII output, overrides out_every\00", align 1
@.str64 = private unnamed_addr constant [30 x i8] c"Values <= 0 disable 2D output\00", align 1
@.str65 = private unnamed_addr constant [12 x i8] c"out2D_style\00", align 1
@.str66 = private unnamed_addr constant [39 x i8] c"Which style for 2D slices ASCII output\00", align 1
@.str67 = private unnamed_addr constant [15 x i8] c"gnuplot f(x,y)\00", align 1
@.str68 = private unnamed_addr constant [38 x i8] c"f over x,y plots suitable for gnuplot\00", align 1
@.str69 = private unnamed_addr constant [17 x i8] c"gnuplot f(t,x,y)\00", align 1
@.str70 = private unnamed_addr constant [40 x i8] c"f over t,x,y plots suitable for gnuplot\00", align 1
@.str71 = private unnamed_addr constant [11 x i8] c"out2D_vars\00", align 1
@.str72 = private unnamed_addr constant [44 x i8] c"Variables to output in 2D ASCII file format\00", align 1
@.str73 = private unnamed_addr constant [33 x i8] c"A regex which matches everything\00", align 1
@.str74 = private unnamed_addr constant [16 x i8] c"out2D_xyplane_z\00", align 1
@.str75 = private unnamed_addr constant [28 x i8] c"z-coord for 2D planes in xy\00", align 1
@.str76 = private unnamed_addr constant [17 x i8] c"out2D_xyplane_zi\00", align 1
@.str77 = private unnamed_addr constant [37 x i8] c"z-index (from 0) for 2D planes in xy\00", align 1
@.str78 = private unnamed_addr constant [16 x i8] c"out2D_xzplane_y\00", align 1
@.str79 = private unnamed_addr constant [28 x i8] c"y-coord for 2D planes in xz\00", align 1
@.str80 = private unnamed_addr constant [17 x i8] c"out2D_xzplane_yi\00", align 1
@.str81 = private unnamed_addr constant [37 x i8] c"y-index (from 0) for 2D planes in xz\00", align 1
@.str82 = private unnamed_addr constant [16 x i8] c"out2D_yzplane_x\00", align 1
@.str83 = private unnamed_addr constant [28 x i8] c"x-coord for 2D planes in yz\00", align 1
@.str84 = private unnamed_addr constant [17 x i8] c"out2D_yzplane_xi\00", align 1
@.str85 = private unnamed_addr constant [37 x i8] c"x-index (from 0) for 2D planes in yz\00", align 1
@.str86 = private unnamed_addr constant [12 x i8] c"out3D_every\00", align 1
@.str87 = private unnamed_addr constant [53 x i8] c"How often to do 3D ASCII output, overrides out_every\00", align 1
@.str88 = private unnamed_addr constant [30 x i8] c"Values <= 0 disable 3D output\00", align 1
@.str89 = private unnamed_addr constant [12 x i8] c"out3D_style\00", align 1
@.str90 = private unnamed_addr constant [39 x i8] c"Which style for 3D volume ASCII output\00", align 1
@.str91 = private unnamed_addr constant [17 x i8] c"gnuplot f(x,y,z)\00", align 1
@.str92 = private unnamed_addr constant [40 x i8] c"f over x,y,z plots suitable for gnuplot\00", align 1
@.str93 = private unnamed_addr constant [19 x i8] c"gnuplot f(t,x,y,z)\00", align 1
@.str94 = private unnamed_addr constant [42 x i8] c"f over t,x,y,z plots suitable for gnuplot\00", align 1
@.str95 = private unnamed_addr constant [11 x i8] c"out3D_vars\00", align 1
@.str96 = private unnamed_addr constant [44 x i8] c"Variables to output in 3D ASCII file format\00", align 1
@.str97 = private unnamed_addr constant [11 x i8] c"out_format\00", align 1
@.str98 = private unnamed_addr constant [52 x i8] c"Which format for ASCII floating-point number output\00", align 1
@.str99 = private unnamed_addr constant [5 x i8] c".13f\00", align 1
@.str100 = private unnamed_addr constant [25 x i8] c"^(\5C.[0-9]{1,2})?[EGefg]$\00", align 1
@.str101 = private unnamed_addr constant [69 x i8] c"output with given precision in exponential / floating point notation\00", align 1
@.str102 = private unnamed_addr constant [10 x i8] c"out_style\00", align 1
@.str103 = private unnamed_addr constant [55 x i8] c"Which style for 1D ASCII output (DEPRICATED IN BETA12)\00", align 1
@.str104 = private unnamed_addr constant [8 x i8] c"gnuplot\00", align 1
@.str105 = private unnamed_addr constant [27 x i8] c"output readable by gnuplot\00", align 1
@.str106 = private unnamed_addr constant [26 x i8] c"output readable by xgraph\00", align 1
@.str107 = private unnamed_addr constant [9 x i8] c"outdir1D\00", align 1
@.str108 = private unnamed_addr constant [52 x i8] c"Name of 1D ASCII output directory, overrides outdir\00", align 1
@.str109 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str110 = private unnamed_addr constant [9 x i8] c"outdir2D\00", align 1
@.str111 = private unnamed_addr constant [52 x i8] c"Name of 2D ASCII output directory, overrides outdir\00", align 1
@.str112 = private unnamed_addr constant [9 x i8] c"outdir3D\00", align 1
@.str113 = private unnamed_addr constant [52 x i8] c"Name of 3D ASCII output directory, overrides outdir\00", align 1
@.str114 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str115 = private unnamed_addr constant [13 x i8] c"out_fileinfo\00", align 1
@.str116 = private unnamed_addr constant [12 x i8] c"axis labels\00", align 1
@.str117 = private unnamed_addr constant [44 x i8] c"add axis labels information to output files\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsCreateIOASCIIParameters() #0 {
  %1 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 20) to i8*), i32 0) #2, !dbg !13
  %2 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([53 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 21) to i8*), i32 1, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str11, i64 0, i64 0)) #2, !dbg !14
  %3 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([12 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([38 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 9) to i8*), i32 3, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str20, i64 0, i64 0)) #2, !dbg !15
  %4 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([11 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([44 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 10) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0)) #2, !dbg !16
  %5 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([8 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([40 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 22) to i8*), i32 0) #2, !dbg !17
  %6 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([36 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* bitcast (%struct.anon* @ioasciipriv_ to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !18
  %7 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([15 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([45 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str36, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 23) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !19
  %8 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([36 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 1) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !20
  %9 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([15 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([45 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str36, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 24) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !21
  %10 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([8 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([40 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 25) to i8*), i32 0) #2, !dbg !22
  %11 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([36 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 2) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !23
  %12 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([45 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str36, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 26) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !24
  %13 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([36 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 3) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !25
  %14 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([15 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([45 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str36, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 27) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !26
  %15 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([40 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 28) to i8*), i32 0) #2, !dbg !27
  %16 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([36 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 4) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !28
  %17 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([15 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([45 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str36, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 29) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !29
  %18 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str58, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([36 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 5) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !30
  %19 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([15 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([45 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str36, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 30) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !31
  %20 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([12 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([53 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 31) to i8*), i32 1, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str64, i64 0, i64 0)) #2, !dbg !32
  %21 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([12 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([39 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str67, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 11) to i8*), i32 2, i8* getelementptr inbounds ([15 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str70, i64 0, i64 0)) #2, !dbg !33
  %22 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([11 x i8]* @.str71, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([44 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 12) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str73, i64 0, i64 0)) #2, !dbg !34
  %23 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([16 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([28 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 6) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !35
  %24 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([17 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([37 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str36, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 32) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !36
  %25 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([16 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([28 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 7) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !37
  %26 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([17 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([37 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str36, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 33) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !38
  %27 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([16 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([28 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 8) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !39
  %28 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([17 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([37 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str36, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 34) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #2, !dbg !40
  %29 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([12 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([53 x i8]* @.str87, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 35) to i8*), i32 1, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str88, i64 0, i64 0)) #2, !dbg !41
  %30 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([12 x i8]* @.str89, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([39 x i8]* @.str90, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str91, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 13) to i8*), i32 2, i8* getelementptr inbounds ([17 x i8]* @.str91, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str92, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str93, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str94, i64 0, i64 0)) #2, !dbg !42
  %31 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([11 x i8]* @.str95, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([44 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 14) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str73, i64 0, i64 0)) #2, !dbg !43
  %32 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([11 x i8]* @.str97, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([52 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str99, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 15) to i8*), i32 1, i8* getelementptr inbounds ([25 x i8]* @.str100, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str101, i64 0, i64 0)) #2, !dbg !44
  %33 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([10 x i8]* @.str102, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([55 x i8]* @.str103, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 16) to i8*), i32 2, i8* getelementptr inbounds ([8 x i8]* @.str104, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str105, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str106, i64 0, i64 0)) #2, !dbg !45
  %34 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([9 x i8]* @.str107, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([52 x i8]* @.str108, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str109, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 17) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0)) #2, !dbg !46
  %35 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([9 x i8]* @.str110, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([52 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str109, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 18) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0)) #2, !dbg !47
  %36 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([9 x i8]* @.str112, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([52 x i8]* @.str113, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str109, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 19) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0)) #2, !dbg !48
  ret i32 0, !dbg !49
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterCreate(i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsIOASCIIParameterExtensions() #0 {
  %1 = tail call i32 @CCTKi_ParameterAddRange(i8* getelementptr inbounds ([3 x i8]* @.str114, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str116, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str117, i64 0, i64 0)) #2, !dbg !50
  ret i32 0, !dbg !51
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterAddRange(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateIOASCIIParameters.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "CCTKi_BindingsCreateIOASCIIParameters", scope: !1, file: !1, line: 15, type: !5, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsCreateIOASCIIParameters, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "CCTKi_BindingsIOASCIIParameterExtensions", scope: !1, file: !1, line: 419, type: !5, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsIOASCIIParameterExtensions, variables: !2)
!9 = !{i32 2, !"Dwarf Version", i32 2}
!10 = !{i32 2, !"Debug Info Version", i32 700000003}
!11 = !{i32 1, !"PIC Level", i32 2}
!12 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!13 = !DILocation(line: 17, column: 3, scope: !4)
!14 = !DILocation(line: 27, column: 3, scope: !4)
!15 = !DILocation(line: 38, column: 3, scope: !4)
!16 = !DILocation(line: 51, column: 3, scope: !4)
!17 = !DILocation(line: 62, column: 3, scope: !4)
!18 = !DILocation(line: 72, column: 3, scope: !4)
!19 = !DILocation(line: 83, column: 3, scope: !4)
!20 = !DILocation(line: 94, column: 3, scope: !4)
!21 = !DILocation(line: 105, column: 3, scope: !4)
!22 = !DILocation(line: 116, column: 3, scope: !4)
!23 = !DILocation(line: 126, column: 3, scope: !4)
!24 = !DILocation(line: 137, column: 3, scope: !4)
!25 = !DILocation(line: 148, column: 3, scope: !4)
!26 = !DILocation(line: 159, column: 3, scope: !4)
!27 = !DILocation(line: 170, column: 3, scope: !4)
!28 = !DILocation(line: 180, column: 3, scope: !4)
!29 = !DILocation(line: 191, column: 3, scope: !4)
!30 = !DILocation(line: 202, column: 3, scope: !4)
!31 = !DILocation(line: 213, column: 3, scope: !4)
!32 = !DILocation(line: 224, column: 3, scope: !4)
!33 = !DILocation(line: 235, column: 3, scope: !4)
!34 = !DILocation(line: 247, column: 3, scope: !4)
!35 = !DILocation(line: 258, column: 3, scope: !4)
!36 = !DILocation(line: 269, column: 3, scope: !4)
!37 = !DILocation(line: 280, column: 3, scope: !4)
!38 = !DILocation(line: 291, column: 3, scope: !4)
!39 = !DILocation(line: 302, column: 3, scope: !4)
!40 = !DILocation(line: 313, column: 3, scope: !4)
!41 = !DILocation(line: 324, column: 3, scope: !4)
!42 = !DILocation(line: 335, column: 3, scope: !4)
!43 = !DILocation(line: 347, column: 3, scope: !4)
!44 = !DILocation(line: 358, column: 3, scope: !4)
!45 = !DILocation(line: 369, column: 3, scope: !4)
!46 = !DILocation(line: 381, column: 3, scope: !4)
!47 = !DILocation(line: 392, column: 3, scope: !4)
!48 = !DILocation(line: 403, column: 3, scope: !4)
!49 = !DILocation(line: 414, column: 3, scope: !4)
!50 = !DILocation(line: 421, column: 3, scope: !8)
!51 = !DILocation(line: 427, column: 3, scope: !8)
