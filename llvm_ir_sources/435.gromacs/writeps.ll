; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/writeps.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_rgb = type { float, float, float }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str1 = private unnamed_addr constant [26 x i8] c"%%!PS-Adobe-2.0 EPSF-1.2\0A\00", align 1
@.str2 = private unnamed_addr constant [22 x i8] c"%%%%Creator: GROMACS\0A\00", align 1
@.str3 = private unnamed_addr constant [15 x i8] c"%%%%Title: %s\0A\00", align 1
@.str4 = private unnamed_addr constant [30 x i8] c"%%%%BoundingBox: %g %g %g %g\0A\00", align 1
@.str5 = private unnamed_addr constant [17 x i8] c"%%%%EndComments\0A\00", align 1
@.str6 = private unnamed_addr constant [22 x i8] c"/m {moveto} bind def\0A\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"/l {lineto} bind def\0A\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"/rm {rmoveto} bind def\0A\00", align 1
@.str9 = private unnamed_addr constant [24 x i8] c"/r  {rlineto} bind def\0A\00", align 1
@.str10 = private unnamed_addr constant [20 x i8] c"/f {fill} bind def\0A\00", align 1
@.str11 = private unnamed_addr constant [22 x i8] c"/s {stroke} bind def\0A\00", align 1
@nrgb = internal unnamed_addr global i32 0, align 4
@__stderrp = external global %struct.__sFILE*
@.str12 = private unnamed_addr constant [54 x i8] c"Warning: resetting color table in %s when opening %s\0A\00", align 1
@.str13 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/writeps.c\00", align 1
@.str14 = private unnamed_addr constant [17 x i8] c"%d setlinewidth\0A\00", align 1
@gen_ybox = internal unnamed_addr global float 0.000000e+00, align 4
@.str15 = private unnamed_addr constant [82 x i8] c"/by {def currentpoint %g y r %g %g r %g y neg r %g %g r f y add moveto} bind def\0A\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"/y %g by\0A\00", align 1
@.str17 = private unnamed_addr constant [76 x i8] c"/b {currentpoint %g %g r %g %g r %g %g r %g %g r f %g add moveto} bind def\0A\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"B%d\0A\00", align 1
@.str19 = private unnamed_addr constant [9 x i8] c"%g %g l\0A\00", align 1
@.str20 = private unnamed_addr constant [9 x i8] c"%g %g r\0A\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"%g %g m\0A\00", align 1
@.str22 = private unnamed_addr constant [10 x i8] c"%g %g rm\0A\00", align 1
@.str23 = private unnamed_addr constant [3 x i8] c"s\0A\00", align 1
@.str24 = private unnamed_addr constant [3 x i8] c"f\0A\00", align 1
@.str25 = private unnamed_addr constant [22 x i8] c"%g %g %g %g %g arc s\0A\00", align 1
@.str26 = private unnamed_addr constant [22 x i8] c"%g %g %g %g %g arc f\0A\00", align 1
@.str27 = private unnamed_addr constant [60 x i8] c"newpath %g %g %g %g %g arc %g %g %g %g %g arcn closepath s\0A\00", align 1
@.str28 = private unnamed_addr constant [60 x i8] c"newpath %g %g %g %g %g arc %g %g %g %g %g arcn closepath f\0A\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"Times-Roman\00", align 1
@.str30 = private unnamed_addr constant [13 x i8] c"Times-Italic\00", align 1
@.str31 = private unnamed_addr constant [11 x i8] c"Times-Bold\00", align 1
@.str32 = private unnamed_addr constant [17 x i8] c"Times-BoldItalic\00", align 1
@.str33 = private unnamed_addr constant [10 x i8] c"Helvetica\00", align 1
@.str34 = private unnamed_addr constant [18 x i8] c"Helvetica-Oblique\00", align 1
@.str35 = private unnamed_addr constant [15 x i8] c"Helvetica-Bold\00", align 1
@.str36 = private unnamed_addr constant [22 x i8] c"Helvetica-BoldOblique\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"Courier\00", align 1
@.str38 = private unnamed_addr constant [16 x i8] c"Courier-Oblique\00", align 1
@.str39 = private unnamed_addr constant [13 x i8] c"Courier-Bold\00", align 1
@.str40 = private unnamed_addr constant [20 x i8] c"Courier-BoldOblique\00", align 1
@fontnm = global [12 x i8*] [i8* getelementptr inbounds ([12 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str40, i32 0, i32 0)], align 16
@.str41 = private unnamed_addr constant [28 x i8] c"Invalid Font: %d, using %s\0A\00", align 1
@.str42 = private unnamed_addr constant [14 x i8] c"/%s findfont\0A\00", align 1
@.str43 = private unnamed_addr constant [22 x i8] c"%g scalefont setfont\0A\00", align 1
@.str44 = private unnamed_addr constant [11 x i8] c"(%s) show\0A\00", align 1
@.str45 = private unnamed_addr constant [29 x i8] c"612.5 0 translate 90 rotate\0A\00", align 1
@.str46 = private unnamed_addr constant [31 x i8] c"-90 rotate -612.5 0 translate\0A\00", align 1
@.str47 = private unnamed_addr constant [18 x i8] c"(%s) stringwidth\0A\00", align 1
@.str49 = private unnamed_addr constant [21 x i8] c"exch 2 div neg exch\0A\00", align 1
@.str50 = private unnamed_addr constant [15 x i8] c"exch neg exch\0A\00", align 1
@.str51 = private unnamed_addr constant [34 x i8] c"invalid position index (expos=%d)\00", align 1
@.str52 = private unnamed_addr constant [19 x i8] c"rmoveto (%s) show\0A\00", align 1
@.str53 = private unnamed_addr constant [17 x i8] c"%g %g translate\0A\00", align 1
@.str54 = private unnamed_addr constant [56 x i8] c"currentpoint dup 3 -1 roll dup 4 1 roll exch translate\0A\00", align 1
@ostack = internal unnamed_addr global i32 0, align 4
@.str55 = private unnamed_addr constant [21 x i8] c"No origin on stack!\0A\00", align 1
@.str56 = private unnamed_addr constant [29 x i8] c"neg exch neg exch translate\0A\00", align 1
@.str57 = private unnamed_addr constant [12 x i8] c"%%showpage\0A\00", align 1
@.str58 = private unnamed_addr constant [9 x i8] c"%%%%EOF\0A\00", align 1
@.str59 = private unnamed_addr constant [9 x i8] c"%%%% %s\0A\00", align 1
@.str60 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@i2a.buf = internal global [12 x i8] zeroinitializer, align 1
@.str61 = private unnamed_addr constant [4 x i8] c"C%d\00", align 1
@rgb = internal unnamed_addr global %struct.t_rgb* null, align 8
@maxrgb = internal unnamed_addr global i32 0, align 4
@.str62 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str63 = private unnamed_addr constant [22 x i8] c"/B%d {%s b} bind def\0A\00", align 1
@.str64 = private unnamed_addr constant [37 x i8] c"/%s {%g %g %g setrgbcolor} bind def\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
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

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @ps_open(i8* %fn, float %x1, float %y1, float %x2, float %y2) #1 {
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #5
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #5
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([22 x i8]* @.str2, i64 0, i64 0)) #5
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([15 x i8]* @.str3, i64 0, i64 0), i8* %fn) #5
  %5 = fpext float %x1 to double
  %6 = fpext float %y1 to double
  %7 = fpext float %x2 to double
  %8 = fpext float %y2 to double
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0), double %5, double %6, double %7, double %8) #5
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0)) #5
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str6, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %1)
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %1)
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0), i64 23, i64 1, %struct.__sFILE* %1)
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str9, i64 0, i64 0), i64 23, i64 1, %struct.__sFILE* %1)
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str10, i64 0, i64 0), i64 19, i64 1, %struct.__sFILE* %1)
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str11, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %1)
  %17 = load i32* @nrgb, align 4, !tbaa !2
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %0
  %20 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str13, i64 0, i64 0), i8* %fn) #5
  store i32 0, i32* @nrgb, align 4, !tbaa !2
  br label %22

; <label>:22                                      ; preds = %19, %0
  ret %struct.__sFILE* %1
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_linewidth(%struct.__sFILE* nocapture %ps, i32 %lw) #1 {
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0), i32 %lw) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_color(%struct.__sFILE* nocapture %ps, float %r, float %g, float %b) #1 {
  %1 = tail call fastcc i32 @search_col(%struct.__sFILE* %ps, float %r, float %g, float %b) #6
  %2 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), i32 0, i64 12, i8* getelementptr inbounds ([4 x i8]* @.str61, i64 0, i64 0), i32 %1) #5
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0)) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @search_col(%struct.__sFILE* nocapture %ps, float %r, float %g, float %b) #1 {
  %1 = load i32* @nrgb, align 4, !tbaa !2
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %0
  %3 = load %struct.t_rgb** @rgb, align 8, !tbaa !6
  %4 = sext i32 %1 to i64
  br label %5

; <label>:5                                       ; preds = %.lr.ph, %23
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %23 ]
  %6 = getelementptr inbounds %struct.t_rgb* %3, i64 %indvars.iv, i32 0
  %7 = load float* %6, align 4, !tbaa !8
  %8 = fsub float %7, %r
  %fabsf = tail call float @fabsf(float %8) #7
  %9 = fpext float %fabsf to double
  %10 = fcmp olt double %9, 1.200000e-07
  br i1 %10, label %11, label %23

; <label>:11                                      ; preds = %5
  %12 = getelementptr inbounds %struct.t_rgb* %3, i64 %indvars.iv, i32 1
  %13 = load float* %12, align 4, !tbaa !11
  %14 = fsub float %13, %g
  %fabsf1 = tail call float @fabsf(float %14) #7
  %15 = fpext float %fabsf1 to double
  %16 = fcmp olt double %15, 1.200000e-07
  br i1 %16, label %17, label %23

; <label>:17                                      ; preds = %11
  %18 = getelementptr inbounds %struct.t_rgb* %3, i64 %indvars.iv, i32 2
  %19 = load float* %18, align 4, !tbaa !12
  %20 = fsub float %19, %b
  %fabsf2 = tail call float @fabsf(float %20) #7
  %21 = fpext float %fabsf2 to double
  %22 = fcmp olt double %21, 1.200000e-07
  br i1 %22, label %.loopexit, label %23

; <label>:23                                      ; preds = %5, %11, %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %24 = icmp slt i64 %indvars.iv.next, %4
  br i1 %24, label %5, label %._crit_edge

._crit_edge:                                      ; preds = %23
  %sext = shl i64 %indvars.iv.next, 32
  %phitmp = ashr exact i64 %sext, 32
  br label %25

; <label>:25                                      ; preds = %._crit_edge, %0
  %i.0.lcssa = phi i64 [ %phitmp, %._crit_edge ], [ 0, %0 ]
  %26 = load i32* @maxrgb, align 4, !tbaa !2
  %27 = icmp slt i32 %1, %26
  br i1 %27, label %33, label %28

; <label>:28                                      ; preds = %25
  %29 = add nsw i32 %26, 100
  store i32 %29, i32* @maxrgb, align 4, !tbaa !2
  %30 = load i8** bitcast (%struct.t_rgb** @rgb to i8**), align 8, !tbaa !6
  %31 = mul i32 %29, 12
  %32 = tail call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str13, i64 0, i64 0), i32 109, i8* %30, i32 %31) #5
  store i8* %32, i8** bitcast (%struct.t_rgb** @rgb to i8**), align 8, !tbaa !6
  %.pre = load i32* @nrgb, align 4, !tbaa !2
  br label %33

; <label>:33                                      ; preds = %25, %28
  %34 = phi i32 [ %1, %25 ], [ %.pre, %28 ]
  %35 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), i32 0, i64 12, i8* getelementptr inbounds ([4 x i8]* @.str61, i64 0, i64 0), i32 %34) #5
  %36 = fpext float %r to double
  %37 = fpext float %g to double
  %38 = fpext float %b to double
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([37 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), double %36, double %37, double %38) #5
  %40 = load i32* @nrgb, align 4, !tbaa !2
  %41 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), i32 0, i64 12, i8* getelementptr inbounds ([4 x i8]* @.str61, i64 0, i64 0), i32 %40) #5
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str63, i64 0, i64 0), i32 %40, i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0)) #5
  %43 = load %struct.t_rgb** @rgb, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.t_rgb* %43, i64 %i.0.lcssa, i32 0
  store float %r, float* %44, align 4, !tbaa !8
  %45 = getelementptr inbounds %struct.t_rgb* %43, i64 %i.0.lcssa, i32 1
  store float %g, float* %45, align 4, !tbaa !11
  %46 = getelementptr inbounds %struct.t_rgb* %43, i64 %i.0.lcssa, i32 2
  store float %b, float* %46, align 4, !tbaa !12
  %47 = load i32* @nrgb, align 4, !tbaa !2
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @nrgb, align 4, !tbaa !2
  br label %50

.loopexit:                                        ; preds = %17
  %49 = trunc i64 %indvars.iv to i32
  br label %50

; <label>:50                                      ; preds = %.loopexit, %33
  %.0 = phi i32 [ %47, %33 ], [ %49, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_rgb(%struct.__sFILE* nocapture %ps, %struct.t_rgb* nocapture readonly %rgb) #1 {
  %1 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0
  %2 = load float* %1, align 4, !tbaa !8
  %3 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1
  %4 = load float* %3, align 4, !tbaa !11
  %5 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2
  %6 = load float* %5, align 4, !tbaa !12
  tail call void @ps_color(%struct.__sFILE* %ps, float %2, float %4, float %6) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_init_rgb_nbox(%struct.__sFILE* nocapture %ps, float %xbox, float %ybox) #1 {
  store float %ybox, float* @gen_ybox, align 4, !tbaa !13
  %1 = fpext float %xbox to double
  %2 = fsub float -0.000000e+00, %xbox
  %3 = fpext float %2 to double
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([82 x i8]* @.str15, i64 0, i64 0), double 0.000000e+00, double %1, double 0.000000e+00, double 0.000000e+00, double %3, double 0.000000e+00) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_rgb_nbox(%struct.__sFILE* nocapture %ps, %struct.t_rgb* nocapture readonly %rgb, float %n) #1 {
  %1 = fcmp ogt float %n, 2.000000e+00
  br i1 %1, label %6, label %.preheader

.preheader:                                       ; preds = %0
  %2 = fcmp ogt float %n, 0.000000e+00
  br i1 %2, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %3 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0
  %4 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1
  %5 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2
  br label %17

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0
  %8 = load float* %7, align 4, !tbaa !8
  %9 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1
  %10 = load float* %9, align 4, !tbaa !11
  %11 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2
  %12 = load float* %11, align 4, !tbaa !12
  tail call void @ps_color(%struct.__sFILE* %ps, float %8, float %10, float %12) #5
  %13 = load float* @gen_ybox, align 4, !tbaa !13
  %14 = fmul float %13, %n
  %15 = fpext float %14 to double
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), double %15) #5
  br label %.loopexit

; <label>:17                                      ; preds = %.lr.ph, %17
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %23, %17 ]
  %18 = load float* %3, align 4, !tbaa !8
  %19 = load float* %4, align 4, !tbaa !11
  %20 = load float* %5, align 4, !tbaa !12
  %21 = tail call fastcc i32 @search_col(%struct.__sFILE* %ps, float %18, float %19, float %20) #5
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i32 %21) #5
  %23 = add nuw nsw i32 %i.01, 1
  %24 = sitofp i32 %23 to float
  %25 = fcmp olt float %24, %n
  br i1 %25, label %17, label %.loopexit

.loopexit:                                        ; preds = %17, %.preheader, %6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_rgb_box(%struct.__sFILE* nocapture %ps, %struct.t_rgb* nocapture readonly %rgb) #1 {
  %1 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0
  %2 = load float* %1, align 4, !tbaa !8
  %3 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1
  %4 = load float* %3, align 4, !tbaa !11
  %5 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2
  %6 = load float* %5, align 4, !tbaa !12
  %7 = tail call fastcc i32 @search_col(%struct.__sFILE* %ps, float %2, float %4, float %6) #6
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i32 %7) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_init_rgb_box(%struct.__sFILE* nocapture %ps, float %xbox, float %ybox) #1 {
  %1 = fpext float %ybox to double
  %2 = fpext float %xbox to double
  %3 = fsub float -0.000000e+00, %ybox
  %4 = fpext float %3 to double
  %5 = fsub float -0.000000e+00, %xbox
  %6 = fpext float %5 to double
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([76 x i8]* @.str17, i64 0, i64 0), double 0.000000e+00, double %1, double %2, double 0.000000e+00, double 0.000000e+00, double %4, double %6, double 0.000000e+00, double %1) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_lineto(%struct.__sFILE* nocapture %ps, float %x, float %y) #1 {
  %1 = fpext float %x to double
  %2 = fpext float %y to double
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), double %1, double %2) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_linerel(%struct.__sFILE* nocapture %ps, float %dx, float %dy) #1 {
  %1 = fpext float %dx to double
  %2 = fpext float %dy to double
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %1, double %2) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_moveto(%struct.__sFILE* nocapture %ps, float %x, float %y) #1 {
  %1 = fpext float %x to double
  %2 = fpext float %y to double
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %1, double %2) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_moverel(%struct.__sFILE* nocapture %ps, float %dx, float %dy) #1 {
  %1 = fpext float %dx to double
  %2 = fpext float %dy to double
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0), double %1, double %2) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_line(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #1 {
  %1 = fpext float %x1 to double
  %2 = fpext float %y1 to double
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %1, double %2) #5
  %4 = fpext float %x2 to double
  %5 = fpext float %y2 to double
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), double %4, double %5) #5
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %ps)
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_box(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #1 {
  tail call fastcc void @do_box(%struct.__sFILE* %ps, float %x1, float %y1, float %x2, float %y2) #6
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %ps)
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_box(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #1 {
  %1 = fpext float %x1 to double
  %2 = fpext float %y1 to double
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %1, double %2) #5
  %4 = fsub float %y2, %y1
  %5 = fpext float %4 to double
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double 0.000000e+00, double %5) #5
  %7 = fsub float %x2, %x1
  %8 = fpext float %7 to double
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %8, double 0.000000e+00) #5
  %10 = fsub float %y1, %y2
  %11 = fpext float %10 to double
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double 0.000000e+00, double %11) #5
  %13 = fsub float %x1, %x2
  %14 = fpext float %13 to double
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %14, double 0.000000e+00) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_fillbox(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #1 {
  tail call fastcc void @do_box(%struct.__sFILE* %ps, float %x1, float %y1, float %x2, float %y2) #6
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str24, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %ps)
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_arc(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %rad, float %a0, float %a1) #1 {
  %1 = fpext float %x1 to double
  %2 = fpext float %y1 to double
  %3 = fpext float %rad to double
  %4 = fpext float %a0 to double
  %5 = fpext float %a1 to double
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str25, i64 0, i64 0), double %1, double %2, double %3, double %4, double %5) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_fillarc(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %rad, float %a0, float %a1) #1 {
  %1 = fpext float %x1 to double
  %2 = fpext float %y1 to double
  %3 = fpext float %rad to double
  %4 = fpext float %a0 to double
  %5 = fpext float %a1 to double
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0), double %1, double %2, double %3, double %4, double %5) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_arcslice(%struct.__sFILE* nocapture %ps, float %xc, float %yc, float %rad1, float %rad2, float %a0, float %a1) #1 {
  %1 = fpext float %xc to double
  %2 = fpext float %yc to double
  %3 = fpext float %rad1 to double
  %4 = fpext float %a0 to double
  %5 = fpext float %a1 to double
  %6 = fpext float %rad2 to double
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([60 x i8]* @.str27, i64 0, i64 0), double %1, double %2, double %3, double %4, double %5, double %1, double %2, double %6, double %5, double %4) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_fillarcslice(%struct.__sFILE* nocapture %ps, float %xc, float %yc, float %rad1, float %rad2, float %a0, float %a1) #1 {
  %1 = fpext float %xc to double
  %2 = fpext float %yc to double
  %3 = fpext float %rad1 to double
  %4 = fpext float %a0 to double
  %5 = fpext float %a1 to double
  %6 = fpext float %rad2 to double
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([60 x i8]* @.str28, i64 0, i64 0), double %1, double %2, double %3, double %4, double %5, double %1, double %2, double %6, double %5, double %4) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_circle(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %rad) #1 {
  %1 = fpext float %x1 to double
  %2 = fpext float %y1 to double
  %3 = fpext float %rad to double
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str25, i64 0, i64 0), double %1, double %2, double %3, double 0.000000e+00, double 3.600000e+02) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_font(%struct.__sFILE* nocapture %ps, i32 %font, float %size) #1 {
  %1 = icmp ugt i32 %font, 12
  br i1 %1, label %2, label %6

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %4 = load i8** getelementptr inbounds ([12 x i8*]* @fontnm, i64 0, i64 0), align 16, !tbaa !6
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([28 x i8]* @.str41, i64 0, i64 0), i32 %font, i8* %4) #5
  br label %6

; <label>:6                                       ; preds = %0, %2
  %.0 = phi i32 [ 0, %2 ], [ %font, %0 ]
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds [12 x i8*]* @fontnm, i64 0, i64 %7
  %9 = load i8** %8, align 8, !tbaa !6
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([14 x i8]* @.str42, i64 0, i64 0), i8* %9) #5
  %11 = fpext float %size to double
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str43, i64 0, i64 0), double %11) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_strfont(%struct.__sFILE* nocapture %ps, i8* %font, float %size) #1 {
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([14 x i8]* @.str42, i64 0, i64 0), i8* %font) #5
  %2 = fpext float %size to double
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str43, i64 0, i64 0), double %2) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_text(%struct.__sFILE* nocapture %ps, float %x1, float %y1, i8* %str) #1 {
  %1 = fpext float %x1 to double
  %2 = fpext float %y1 to double
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %1, double %2) #5
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0), i8* %str) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_rotate(%struct.__sFILE* nocapture %ps, i32 %bPlus) #1 {
  %1 = icmp eq i32 %bPlus, 0
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str45, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %ps)
  br label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str46, i64 0, i64 0), i64 30, i64 1, %struct.__sFILE* %ps)
  br label %6

; <label>:6                                       ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_ctext(%struct.__sFILE* nocapture %ps, float %x1, float %y1, i8* %str, i32 %expos) #1 {
  %1 = icmp eq i32 %expos, 1
  %2 = fpext float %x1 to double
  %3 = fpext float %y1 to double
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %2, double %3) #5
  br i1 %1, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0), i8* %str) #5
  br label %16

; <label>:7                                       ; preds = %0
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0), i8* %str) #5
  switch i32 %expos, label %13 [
    i32 2, label %11
    i32 0, label %9
  ]

; <label>:9                                       ; preds = %7
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str49, i64 0, i64 0), i64 20, i64 1, %struct.__sFILE* %ps)
  br label %14

; <label>:11                                      ; preds = %7
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str50, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %ps)
  br label %14

; <label>:13                                      ; preds = %7
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str51, i64 0, i64 0), i32 %expos) #5
  br label %14

; <label>:14                                      ; preds = %13, %11, %9
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([19 x i8]* @.str52, i64 0, i64 0), i8* %str) #5
  br label %16

; <label>:16                                      ; preds = %14, %5
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_translate(%struct.__sFILE* nocapture %ps, float %x, float %y) #1 {
  %1 = fpext float %x to double
  %2 = fpext float %y to double
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), double %1, double %2) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_setorigin(%struct.__sFILE* nocapture %ps) #1 {
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str54, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %ps)
  %2 = load i32* @ostack, align 4, !tbaa !2
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @ostack, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_unsetorigin(%struct.__sFILE* nocapture %ps) #1 {
  %1 = load i32* @ostack, align 4, !tbaa !2
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str55, i64 0, i64 0)) #5
  br label %4

; <label>:4                                       ; preds = %3, %0
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str56, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %ps)
  %6 = load i32* @ostack, align 4, !tbaa !2
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* @ostack, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_close(%struct.__sFILE* %ps) #1 {
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([12 x i8]* @.str57, i64 0, i64 0)) #5
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str58, i64 0, i64 0)) #5
  tail call void @ffclose(%struct.__sFILE* %ps) #5
  ret void
}

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_comment(%struct.__sFILE* nocapture %ps, i8* %s) #1 {
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str59, i64 0, i64 0), i8* %s) #5
  ret void
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !10, i64 0}
!9 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8}
!10 = !{!"float", !4, i64 0}
!11 = !{!9, !10, i64 4}
!12 = !{!9, !10, i64 8}
!13 = !{!10, !10, i64 0}
