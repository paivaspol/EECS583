; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateCartGrid3DParameters.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"bitant_plane\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"KEYWORD\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"RESTRICTED\00", align 1
@.str4 = private unnamed_addr constant [29 x i8] c"Plane defining bitant domain\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"xy\00", align 1
@gridrest_ = external global %struct.anon
@.str6 = private unnamed_addr constant [9 x i8] c"xy-plane\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"xz\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"xz-plane\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"yz\00", align 1
@.str10 = private unnamed_addr constant [9 x i8] c"yz-plane\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str12 = private unnamed_addr constant [12 x i8] c"Domain type\00", align 1
@.str13 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"octant\00", align 1
@.str15 = private unnamed_addr constant [31 x i8] c"Use an octant about the origin\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"quadrant\00", align 1
@.str17 = private unnamed_addr constant [28 x i8] c"Use a quadrant in x-y plane\00", align 1
@.str18 = private unnamed_addr constant [7 x i8] c"bitant\00", align 1
@.str19 = private unnamed_addr constant [33 x i8] c"Use a bitant about the x-y plane\00", align 1
@.str20 = private unnamed_addr constant [20 x i8] c"Use the full domain\00", align 1
@.str21 = private unnamed_addr constant [3 x i8] c"dx\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str23 = private unnamed_addr constant [35 x i8] c"Coarse grid spacing in x-direction\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"0.3\00", align 1
@.str25 = private unnamed_addr constant [4 x i8] c"0:*\00", align 1
@.str26 = private unnamed_addr constant [9 x i8] c"Positive\00", align 1
@.str27 = private unnamed_addr constant [5 x i8] c"dxyz\00", align 1
@.str28 = private unnamed_addr constant [40 x i8] c"Coarse grid spacing in x,y,z-directions\00", align 1
@.str29 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str30 = private unnamed_addr constant [3 x i8] c"dy\00", align 1
@.str31 = private unnamed_addr constant [35 x i8] c"Coarse grid spacing in y-direction\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c"dz\00", align 1
@.str33 = private unnamed_addr constant [35 x i8] c"Coarse grid spacing in z-direction\00", align 1
@.str34 = private unnamed_addr constant [19 x i8] c"quadrant_direction\00", align 1
@.str35 = private unnamed_addr constant [35 x i8] c"Direction defining quadrant domain\00", align 1
@.str36 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str37 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str38 = private unnamed_addr constant [12 x i8] c"x-direction\00", align 1
@.str39 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str40 = private unnamed_addr constant [12 x i8] c"y-direction\00", align 1
@.str41 = private unnamed_addr constant [12 x i8] c"z-direction\00", align 1
@.str42 = private unnamed_addr constant [14 x i8] c"symmetry_xmax\00", align 1
@.str43 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str44 = private unnamed_addr constant [48 x i8] c"Symmetry boundary condition on upper x boundary\00", align 1
@.str45 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str46 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str47 = private unnamed_addr constant [8 x i8] c"Logical\00", align 1
@.str48 = private unnamed_addr constant [14 x i8] c"symmetry_xmin\00", align 1
@.str49 = private unnamed_addr constant [48 x i8] c"Symmetry boundary condition on lower x boundary\00", align 1
@.str50 = private unnamed_addr constant [14 x i8] c"symmetry_ymax\00", align 1
@.str51 = private unnamed_addr constant [48 x i8] c"Symmetry boundary condition on upper y boundary\00", align 1
@.str52 = private unnamed_addr constant [14 x i8] c"symmetry_ymin\00", align 1
@.str53 = private unnamed_addr constant [48 x i8] c"Symmetry boundary condition on lower y boundary\00", align 1
@.str54 = private unnamed_addr constant [14 x i8] c"symmetry_zmax\00", align 1
@.str55 = private unnamed_addr constant [48 x i8] c"Symmetry boundary condition on upper z boundary\00", align 1
@.str56 = private unnamed_addr constant [14 x i8] c"symmetry_zmin\00", align 1
@.str57 = private unnamed_addr constant [48 x i8] c"Symmetry boundary condition on lower z boundary\00", align 1
@.str58 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str59 = private unnamed_addr constant [10 x i8] c"Grid type\00", align 1
@.str60 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str61 = private unnamed_addr constant [26 x i8] c"Box grid from -0.5 to 0.5\00", align 1
@.str62 = private unnamed_addr constant [8 x i8] c"byrange\00", align 1
@.str63 = private unnamed_addr constant [27 x i8] c"Specify min and max values\00", align 1
@.str64 = private unnamed_addr constant [10 x i8] c"byspacing\00", align 1
@.str65 = private unnamed_addr constant [22 x i8] c"Specify grid spacings\00", align 1
@.str66 = private unnamed_addr constant [5 x i8] c"xmax\00", align 1
@.str67 = private unnamed_addr constant [34 x i8] c"Coordinate maximum in x-direction\00", align 1
@.str68 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str69 = private unnamed_addr constant [9 x i8] c"Anything\00", align 1
@.str70 = private unnamed_addr constant [5 x i8] c"xmin\00", align 1
@.str71 = private unnamed_addr constant [34 x i8] c"Coordinate minimum in x-direction\00", align 1
@.str72 = private unnamed_addr constant [5 x i8] c"-1.0\00", align 1
@.str73 = private unnamed_addr constant [7 x i8] c"xyzmax\00", align 1
@.str74 = private unnamed_addr constant [37 x i8] c"Coordinate maximum in xyz-directions\00", align 1
@.str75 = private unnamed_addr constant [8 x i8] c"-424242\00", align 1
@.str76 = private unnamed_addr constant [7 x i8] c"xyzmin\00", align 1
@.str77 = private unnamed_addr constant [39 x i8] c"Coordinate minimum in x,y,z-directions\00", align 1
@.str78 = private unnamed_addr constant [5 x i8] c"ymax\00", align 1
@.str79 = private unnamed_addr constant [34 x i8] c"Coordinate maximum in y-direction\00", align 1
@.str80 = private unnamed_addr constant [5 x i8] c"ymin\00", align 1
@.str81 = private unnamed_addr constant [34 x i8] c"Coordinate minimum in y-direction\00", align 1
@.str82 = private unnamed_addr constant [5 x i8] c"zmax\00", align 1
@.str83 = private unnamed_addr constant [34 x i8] c"Coordinate maximum in z-direction\00", align 1
@.str84 = private unnamed_addr constant [5 x i8] c"zmin\00", align 1
@.str85 = private unnamed_addr constant [34 x i8] c"Coordinate minimum in z-direction\00", align 1
@.str86 = private unnamed_addr constant [13 x i8] c"avoid_origin\00", align 1
@.str87 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str88 = private unnamed_addr constant [54 x i8] c"Don't place grid points on the coordinate origin/axes\00", align 1
@.str89 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@cartgrid3dpriv_ = external global %struct.anon.0
@.str90 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str91 = private unnamed_addr constant [14 x i8] c"avoid_originx\00", align 1
@.str92 = private unnamed_addr constant [56 x i8] c"Don't place grid points on the x-coordinate origin/axes\00", align 1
@.str93 = private unnamed_addr constant [14 x i8] c"avoid_originy\00", align 1
@.str94 = private unnamed_addr constant [56 x i8] c"Don't place grid points on the y-coordinate origin/axes\00", align 1
@.str95 = private unnamed_addr constant [14 x i8] c"avoid_originz\00", align 1
@.str96 = private unnamed_addr constant [56 x i8] c"Don't place grid points on the z-coordinate origin/axes\00", align 1
@.str97 = private unnamed_addr constant [10 x i8] c"no_origin\00", align 1
@.str98 = private unnamed_addr constant [66 x i8] c"DEPRECATED: Don't place grid points on the coordinate origin/axes\00", align 1
@.str99 = private unnamed_addr constant [11 x i8] c"no_originx\00", align 1
@.str100 = private unnamed_addr constant [68 x i8] c"DEPRECATED: Don't place grid points on the x-coordinate origin/axes\00", align 1
@.str101 = private unnamed_addr constant [11 x i8] c"no_originy\00", align 1
@.str102 = private unnamed_addr constant [68 x i8] c"DEPRECATED: Don't place grid points on the y-coordinate origin/axes\00", align 1
@.str103 = private unnamed_addr constant [11 x i8] c"no_originz\00", align 1
@.str104 = private unnamed_addr constant [68 x i8] c"DEPRECATED: Don't place grid points on the z-coordinate origin/axes\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsCreateCartGrid3DParameters() #0 {
entry:
  %call = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([29 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 12) to i8*), i32 3, i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !10
  %call1 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([12 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 13) to i8*), i32 4, i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !11
  %call2 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([3 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([35 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* bitcast (%struct.anon* @gridrest_ to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str26, i64 0, i64 0)) #3, !dbg !12
  %call3 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([5 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([40 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str29, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 1) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str26, i64 0, i64 0)) #3, !dbg !13
  %call4 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([3 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([35 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 2) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str26, i64 0, i64 0)) #3, !dbg !14
  %call5 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([3 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([35 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 3) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str26, i64 0, i64 0)) #3, !dbg !15
  %call6 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([19 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([35 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str36, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 14) to i8*), i32 3, i8* getelementptr inbounds ([2 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str41, i64 0, i64 0)) #3, !dbg !16
  %call7 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([48 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 16) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !17
  %call8 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([48 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 17) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !18
  %call9 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([48 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 18) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !19
  %call10 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([48 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 19) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !20
  %call11 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([48 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 20) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !21
  %call12 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([48 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 21) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !22
  %call13 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([5 x i8]* @.str58, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([10 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 15) to i8*), i32 3, i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !23
  %call14 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([5 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([34 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 4) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str69, i64 0, i64 0)) #3, !dbg !24
  %call15 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([5 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([34 x i8]* @.str71, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 5) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str69, i64 0, i64 0)) #3, !dbg !25
  %call16 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([7 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([37 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str75, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 6) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str69, i64 0, i64 0)) #3, !dbg !26
  %call17 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([7 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([39 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str75, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 7) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str69, i64 0, i64 0)) #3, !dbg !27
  %call18 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([5 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([34 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 8) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str69, i64 0, i64 0)) #3, !dbg !28
  %call19 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([5 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([34 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 9) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str69, i64 0, i64 0)) #3, !dbg !29
  %call20 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([5 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([34 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 10) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str69, i64 0, i64 0)) #3, !dbg !30
  %call21 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([5 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([34 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 11) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str69, i64 0, i64 0)) #3, !dbg !31
  %call22 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([13 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str87, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([54 x i8]* @.str88, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str89, i64 0, i64 0), i8* bitcast (%struct.anon.0* @cartgrid3dpriv_ to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str90, i64 0, i64 0)) #3, !dbg !32
  %call23 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str91, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str87, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([56 x i8]* @.str92, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str89, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 1) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str90, i64 0, i64 0)) #3, !dbg !33
  %call24 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str93, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str87, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([56 x i8]* @.str94, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str89, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 2) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str90, i64 0, i64 0)) #3, !dbg !34
  %call25 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str95, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str87, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([56 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str89, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 3) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str90, i64 0, i64 0)) #3, !dbg !35
  %call26 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([10 x i8]* @.str97, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str87, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([66 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str89, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 4) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str90, i64 0, i64 0)) #3, !dbg !36
  %call27 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([11 x i8]* @.str99, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str87, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([68 x i8]* @.str100, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str89, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 5) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str90, i64 0, i64 0)) #3, !dbg !37
  %call28 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([11 x i8]* @.str101, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str87, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([68 x i8]* @.str102, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str89, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 6) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str90, i64 0, i64 0)) #3, !dbg !38
  %call29 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([11 x i8]* @.str103, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str87, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([68 x i8]* @.str104, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str89, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 7) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str90, i64 0, i64 0)) #3, !dbg !39
  ret i32 0, !dbg !40
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterCreate(i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...) #1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CCTKi_BindingsCartGrid3DParameterExtensions() #2 {
entry:
  ret i32 0, !dbg !41
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateCartGrid3DParameters.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateCartGrid3DParameters.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsCreateCartGrid3DParameters", metadata !"CCTKi_BindingsCreateCartGrid3DParameters", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsCreateCartGrid3DParameters, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 17] [CCTKi_BindingsCreateCartGrid3DParameters]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateCartGrid3DParameters.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsCartGrid3DParameterExtensions", metadata !"CCTKi_BindingsCartGrid3DParameterExtensions", metadata !"", i32 362, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsCartGrid3DParameterExtensions, null, null, metadata !2, i32 363} ; [ DW_TAG_subprogram ] [line 362] [def] [scope 363] [CCTKi_BindingsCartGrid3DParameterExtensions]
!10 = metadata !{i32 18, i32 0, metadata !4, null}
!11 = metadata !{i32 31, i32 0, metadata !4, null}
!12 = metadata !{i32 45, i32 0, metadata !4, null}
!13 = metadata !{i32 56, i32 0, metadata !4, null}
!14 = metadata !{i32 67, i32 0, metadata !4, null}
!15 = metadata !{i32 78, i32 0, metadata !4, null}
!16 = metadata !{i32 89, i32 0, metadata !4, null}
!17 = metadata !{i32 102, i32 0, metadata !4, null}
!18 = metadata !{i32 113, i32 0, metadata !4, null}
!19 = metadata !{i32 124, i32 0, metadata !4, null}
!20 = metadata !{i32 135, i32 0, metadata !4, null}
!21 = metadata !{i32 146, i32 0, metadata !4, null}
!22 = metadata !{i32 157, i32 0, metadata !4, null}
!23 = metadata !{i32 168, i32 0, metadata !4, null}
!24 = metadata !{i32 181, i32 0, metadata !4, null}
!25 = metadata !{i32 192, i32 0, metadata !4, null}
!26 = metadata !{i32 203, i32 0, metadata !4, null}
!27 = metadata !{i32 214, i32 0, metadata !4, null}
!28 = metadata !{i32 225, i32 0, metadata !4, null}
!29 = metadata !{i32 236, i32 0, metadata !4, null}
!30 = metadata !{i32 247, i32 0, metadata !4, null}
!31 = metadata !{i32 258, i32 0, metadata !4, null}
!32 = metadata !{i32 269, i32 0, metadata !4, null}
!33 = metadata !{i32 280, i32 0, metadata !4, null}
!34 = metadata !{i32 291, i32 0, metadata !4, null}
!35 = metadata !{i32 302, i32 0, metadata !4, null}
!36 = metadata !{i32 313, i32 0, metadata !4, null}
!37 = metadata !{i32 324, i32 0, metadata !4, null}
!38 = metadata !{i32 335, i32 0, metadata !4, null}
!39 = metadata !{i32 346, i32 0, metadata !4, null}
!40 = metadata !{i32 357, i32 0, metadata !4, null}
!41 = metadata !{i32 364, i32 0, metadata !9, null}
