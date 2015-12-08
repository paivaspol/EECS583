; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
@stderr = external global %struct._IO_FILE*
@.str12 = private unnamed_addr constant [54 x i8] c"Warning: resetting color table in %s when opening %s\0A\00", align 1
@.str13 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.c\00", align 1
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
@rgb = internal unnamed_addr global %struct.t_rgb* null, align 8
@maxrgb = internal unnamed_addr global i32 0, align 4
@.str60 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str61 = private unnamed_addr constant [22 x i8] c"/B%d {%s b} bind def\0A\00", align 1
@.str62 = private unnamed_addr constant [37 x i8] c"/%s {%g %g %g setrgbcolor} bind def\0A\00", align 1
@i2a.buf = internal global [12 x i8] zeroinitializer, align 1
@.str63 = private unnamed_addr constant [4 x i8] c"C%d\00", align 1
@.str64 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IO_FILE* @ps_open(i8* %fn, float %x1, float %y1, float %x2, float %y2) #0 {
entry:
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #4
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #4
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([22 x i8]* @.str2, i64 0, i64 0)) #4
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([15 x i8]* @.str3, i64 0, i64 0), i8* %fn) #4
  %conv = fpext float %x1 to double
  %conv4 = fpext float %y1 to double
  %conv5 = fpext float %x2 to double
  %conv6 = fpext float %y2 to double
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0), double %conv, double %conv4, double %conv5, double %conv6) #4
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0)) #4
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str6, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %call)
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %call)
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %call)
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str9, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %call)
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str10, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %call)
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str11, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %call)
  %6 = load i32* @nrgb, align 4, !tbaa !0
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* %fn) #4
  store i32 0, i32* @nrgb, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct._IO_FILE* %call
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @ps_linewidth(%struct._IO_FILE* nocapture %ps, i32 %lw) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0), i32 %lw) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_color(%struct._IO_FILE* nocapture %ps, float %r, float %g, float %b) #0 {
entry:
  %call = tail call fastcc i32 @search_col(%struct._IO_FILE* %ps, float %r, float %g, float %b) #5
  %call.i = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str63, i64 0, i64 0), i32 %call) #4
  %call.i3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([4 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0)) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @search_col(%struct._IO_FILE* nocapture %ps, float %r, float %g, float %b) #0 {
entry:
  %0 = load i32* @nrgb, align 4, !tbaa !0
  %cmp63 = icmp sgt i32 %0, 0
  br i1 %cmp63, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = load %struct.t_rgb** @rgb, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %r1 = getelementptr inbounds %struct.t_rgb* %1, i64 %indvars.iv, i32 0
  %2 = load float* %r1, align 4, !tbaa !4
  %sub = fsub float %2, %r
  %fabsf = tail call float @fabsf(float %sub) #6
  %3 = fpext float %fabsf to double
  %cmp2 = fcmp olt double %3, 1.200000e-07
  br i1 %cmp2, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g6 = getelementptr inbounds %struct.t_rgb* %1, i64 %indvars.iv, i32 1
  %4 = load float* %g6, align 4, !tbaa !4
  %sub7 = fsub float %4, %g
  %fabsf57 = tail call float @fabsf(float %sub7) #6
  %5 = fpext float %fabsf57 to double
  %cmp10 = fcmp olt double %5, 1.200000e-07
  br i1 %cmp10, label %land.lhs.true12, label %for.inc

land.lhs.true12:                                  ; preds = %land.lhs.true
  %b15 = getelementptr inbounds %struct.t_rgb* %1, i64 %indvars.iv, i32 2
  %6 = load float* %b15, align 4, !tbaa !4
  %sub16 = fsub float %6, %b
  %fabsf58 = tail call float @fabsf(float %sub16) #6
  %7 = fpext float %fabsf58 to double
  %cmp19 = fcmp olt double %7, 1.200000e-07
  br i1 %cmp19, label %return, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true12
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.064, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %8, %0
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  %phitmp = sext i32 %inc to i64
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %i.0.lcssa = phi i64 [ %phitmp, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %9 = load i32* @maxrgb, align 4, !tbaa !0
  %cmp21 = icmp slt i32 %0, %9
  br i1 %cmp21, label %if.end27, label %if.then23

if.then23:                                        ; preds = %for.end
  %add = add nsw i32 %9, 100
  store i32 %add, i32* @maxrgb, align 4, !tbaa !0
  %10 = load %struct.t_rgb** @rgb, align 8, !tbaa !3
  %11 = bitcast %struct.t_rgb* %10 to i8*
  %mul = mul i32 %add, 12
  %call26 = tail call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 109, i8* %11, i32 %mul) #4
  %12 = bitcast i8* %call26 to %struct.t_rgb*
  store %struct.t_rgb* %12, %struct.t_rgb** @rgb, align 8, !tbaa !3
  %.pre = load i32* @nrgb, align 4, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %for.end, %if.then23
  %13 = phi i32 [ %0, %for.end ], [ %.pre, %if.then23 ]
  %call.i = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str63, i64 0, i64 0), i32 %13) #4
  %conv.i = fpext float %r to double
  %conv1.i = fpext float %g to double
  %conv2.i = fpext float %b to double
  %call.i59 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([37 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), double %conv.i, double %conv1.i, double %conv2.i) #4
  %14 = load i32* @nrgb, align 4, !tbaa !0
  %call.i60 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str63, i64 0, i64 0), i32 %14) #4
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str61, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0)) #4
  %15 = load %struct.t_rgb** @rgb, align 8, !tbaa !3
  %r33 = getelementptr inbounds %struct.t_rgb* %15, i64 %i.0.lcssa, i32 0
  store float %r, float* %r33, align 4, !tbaa !4
  %g36 = getelementptr inbounds %struct.t_rgb* %15, i64 %i.0.lcssa, i32 1
  store float %g, float* %g36, align 4, !tbaa !4
  %b39 = getelementptr inbounds %struct.t_rgb* %15, i64 %i.0.lcssa, i32 2
  store float %b, float* %b39, align 4, !tbaa !4
  %16 = load i32* @nrgb, align 4, !tbaa !0
  %inc40 = add nsw i32 %16, 1
  store i32 %inc40, i32* @nrgb, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %land.lhs.true12, %if.end27
  %retval.0 = phi i32 [ %16, %if.end27 ], [ %i.064, %land.lhs.true12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @ps_rgb(%struct._IO_FILE* nocapture %ps, %struct.t_rgb* nocapture %rgb) #0 {
entry:
  %r = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0
  %0 = load float* %r, align 4, !tbaa !4
  %g = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1
  %1 = load float* %g, align 4, !tbaa !4
  %b = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2
  %2 = load float* %b, align 4, !tbaa !4
  tail call void @ps_color(%struct._IO_FILE* %ps, float %0, float %1, float %2) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_init_rgb_nbox(%struct._IO_FILE* nocapture %ps, float %xbox, float %ybox) #0 {
entry:
  store float %ybox, float* @gen_ybox, align 4, !tbaa !4
  %conv = fpext float %xbox to double
  %sub = fsub float -0.000000e+00, %xbox
  %conv1 = fpext float %sub to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([82 x i8]* @.str15, i64 0, i64 0), double 0.000000e+00, double %conv, double 0.000000e+00, double 0.000000e+00, double %conv1, double 0.000000e+00) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_rgb_nbox(%struct._IO_FILE* nocapture %ps, %struct.t_rgb* nocapture %rgb, float %n) #0 {
entry:
  %cmp = fcmp ogt float %n, 2.000000e+00
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp213 = fcmp ogt float %n, 0.000000e+00
  br i1 %cmp213, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %r.i10 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0
  %g.i11 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1
  %b.i12 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2
  br label %for.body

if.then:                                          ; preds = %entry
  %r.i = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0
  %0 = load float* %r.i, align 4, !tbaa !4
  %g.i = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1
  %1 = load float* %g.i, align 4, !tbaa !4
  %b.i = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2
  %2 = load float* %b.i, align 4, !tbaa !4
  tail call void @ps_color(%struct._IO_FILE* %ps, float %0, float %1, float %2) #4
  %3 = load float* @gen_ybox, align 4, !tbaa !4
  %mul = fmul float %3, %n
  %conv = fpext float %mul to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), double %conv) #4
  br label %if.end

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %4 = load float* %r.i10, align 4, !tbaa !4
  %5 = load float* %g.i11, align 4, !tbaa !4
  %6 = load float* %b.i12, align 4, !tbaa !4
  %call.i = tail call fastcc i32 @search_col(%struct._IO_FILE* %ps, float %4, float %5, float %6) #4
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i32 %call.i) #4
  %inc = add nsw i32 %i.014, 1
  %conv1 = sitofp i32 %inc to float
  %cmp2 = fcmp olt float %conv1, %n
  br i1 %cmp2, label %for.body, label %if.end

if.end:                                           ; preds = %for.cond.preheader, %for.body, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_rgb_box(%struct._IO_FILE* nocapture %ps, %struct.t_rgb* nocapture %rgb) #0 {
entry:
  %r = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0
  %0 = load float* %r, align 4, !tbaa !4
  %g = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1
  %1 = load float* %g, align 4, !tbaa !4
  %b = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2
  %2 = load float* %b, align 4, !tbaa !4
  %call = tail call fastcc i32 @search_col(%struct._IO_FILE* %ps, float %0, float %1, float %2) #5
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i32 %call) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_init_rgb_box(%struct._IO_FILE* nocapture %ps, float %xbox, float %ybox) #0 {
entry:
  %conv = fpext float %ybox to double
  %conv1 = fpext float %xbox to double
  %sub = fsub float -0.000000e+00, %ybox
  %conv2 = fpext float %sub to double
  %sub3 = fsub float -0.000000e+00, %xbox
  %conv4 = fpext float %sub3 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([76 x i8]* @.str17, i64 0, i64 0), double 0.000000e+00, double %conv, double %conv1, double 0.000000e+00, double 0.000000e+00, double %conv2, double %conv4, double 0.000000e+00, double %conv) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_lineto(%struct._IO_FILE* nocapture %ps, float %x, float %y) #0 {
entry:
  %conv = fpext float %x to double
  %conv1 = fpext float %y to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), double %conv, double %conv1) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_linerel(%struct._IO_FILE* nocapture %ps, float %dx, float %dy) #0 {
entry:
  %conv = fpext float %dx to double
  %conv1 = fpext float %dy to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %conv, double %conv1) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_moveto(%struct._IO_FILE* nocapture %ps, float %x, float %y) #0 {
entry:
  %conv = fpext float %x to double
  %conv1 = fpext float %y to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %conv, double %conv1) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_moverel(%struct._IO_FILE* nocapture %ps, float %dx, float %dy) #0 {
entry:
  %conv = fpext float %dx to double
  %conv1 = fpext float %dy to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0), double %conv, double %conv1) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_line(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #0 {
entry:
  %conv.i = fpext float %x1 to double
  %conv1.i = fpext float %y1 to double
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %conv.i, double %conv1.i) #4
  %conv.i3 = fpext float %x2 to double
  %conv1.i4 = fpext float %y2 to double
  %call.i5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), double %conv.i3, double %conv1.i4) #4
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %ps)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_box(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #0 {
entry:
  tail call fastcc void @do_box(%struct._IO_FILE* %ps, float %x1, float %y1, float %x2, float %y2) #5
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %ps)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_box(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #0 {
entry:
  %conv.i = fpext float %x1 to double
  %conv1.i = fpext float %y1 to double
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %conv.i, double %conv1.i) #4
  %sub = fsub float %y2, %y1
  %conv1.i14 = fpext float %sub to double
  %call.i15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double 0.000000e+00, double %conv1.i14) #4
  %sub1 = fsub float %x2, %x1
  %conv.i16 = fpext float %sub1 to double
  %call.i17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %conv.i16, double 0.000000e+00) #4
  %sub2 = fsub float %y1, %y2
  %conv1.i18 = fpext float %sub2 to double
  %call.i19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double 0.000000e+00, double %conv1.i18) #4
  %sub3 = fsub float %x1, %x2
  %conv.i20 = fpext float %sub3 to double
  %call.i21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %conv.i20, double 0.000000e+00) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_fillbox(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #0 {
entry:
  tail call fastcc void @do_box(%struct._IO_FILE* %ps, float %x1, float %y1, float %x2, float %y2) #5
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str24, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %ps)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_arc(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %rad, float %a0, float %a1) #0 {
entry:
  %conv = fpext float %x1 to double
  %conv1 = fpext float %y1 to double
  %conv2 = fpext float %rad to double
  %conv3 = fpext float %a0 to double
  %conv4 = fpext float %a1 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str25, i64 0, i64 0), double %conv, double %conv1, double %conv2, double %conv3, double %conv4) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_fillarc(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %rad, float %a0, float %a1) #0 {
entry:
  %conv = fpext float %x1 to double
  %conv1 = fpext float %y1 to double
  %conv2 = fpext float %rad to double
  %conv3 = fpext float %a0 to double
  %conv4 = fpext float %a1 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0), double %conv, double %conv1, double %conv2, double %conv3, double %conv4) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_arcslice(%struct._IO_FILE* nocapture %ps, float %xc, float %yc, float %rad1, float %rad2, float %a0, float %a1) #0 {
entry:
  %conv = fpext float %xc to double
  %conv1 = fpext float %yc to double
  %conv2 = fpext float %rad1 to double
  %conv3 = fpext float %a0 to double
  %conv4 = fpext float %a1 to double
  %conv7 = fpext float %rad2 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([60 x i8]* @.str27, i64 0, i64 0), double %conv, double %conv1, double %conv2, double %conv3, double %conv4, double %conv, double %conv1, double %conv7, double %conv4, double %conv3) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_fillarcslice(%struct._IO_FILE* nocapture %ps, float %xc, float %yc, float %rad1, float %rad2, float %a0, float %a1) #0 {
entry:
  %conv = fpext float %xc to double
  %conv1 = fpext float %yc to double
  %conv2 = fpext float %rad1 to double
  %conv3 = fpext float %a0 to double
  %conv4 = fpext float %a1 to double
  %conv7 = fpext float %rad2 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([60 x i8]* @.str28, i64 0, i64 0), double %conv, double %conv1, double %conv2, double %conv3, double %conv4, double %conv, double %conv1, double %conv7, double %conv4, double %conv3) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_circle(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %rad) #0 {
entry:
  %conv.i = fpext float %x1 to double
  %conv1.i = fpext float %y1 to double
  %conv2.i = fpext float %rad to double
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str25, i64 0, i64 0), double %conv.i, double %conv1.i, double %conv2.i, double 0.000000e+00, double 3.600000e+02) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_font(%struct._IO_FILE* nocapture %ps, i32 %font, float %size) #0 {
entry:
  %0 = icmp ugt i32 %font, 12
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %2 = load i8** getelementptr inbounds ([12 x i8*]* @fontnm, i64 0, i64 0), align 16, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([28 x i8]* @.str41, i64 0, i64 0), i32 %font, i8* %2) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %font.addr.0 = phi i32 [ 0, %if.then ], [ %font, %entry ]
  %idxprom = sext i32 %font.addr.0 to i64
  %arrayidx = getelementptr inbounds [12 x i8*]* @fontnm, i64 0, i64 %idxprom
  %3 = load i8** %arrayidx, align 8, !tbaa !3
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([14 x i8]* @.str42, i64 0, i64 0), i8* %3) #4
  %conv = fpext float %size to double
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str43, i64 0, i64 0), double %conv) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_strfont(%struct._IO_FILE* nocapture %ps, i8* %font, float %size) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([14 x i8]* @.str42, i64 0, i64 0), i8* %font) #4
  %conv = fpext float %size to double
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str43, i64 0, i64 0), double %conv) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_text(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, i8* %str) #0 {
entry:
  %conv.i = fpext float %x1 to double
  %conv1.i = fpext float %y1 to double
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %conv.i, double %conv1.i) #4
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0), i8* %str) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_rotate(%struct._IO_FILE* nocapture %ps, i32 %bPlus) #0 {
entry:
  %tobool = icmp eq i32 %bPlus, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str45, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %ps)
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str46, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %ps)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_ctext(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, i8* %str, i32 %expos) #0 {
entry:
  %cmp = icmp eq i32 %expos, 1
  %conv.i.i = fpext float %x1 to double
  %conv1.i.i = fpext float %y1 to double
  %call.i.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %conv.i.i, double %conv1.i.i) #4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0), i8* %str) #4
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0), i8* %str) #4
  switch i32 %expos, label %sw.default [
    i32 2, label %sw.bb4
    i32 0, label %sw.bb2
  ]

sw.bb2:                                           ; preds = %if.end
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str49, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %ps)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str50, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %ps)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str51, i64 0, i64 0), i32 %expos) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb2
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([19 x i8]* @.str52, i64 0, i64 0), i8* %str) #4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @ps_translate(%struct._IO_FILE* nocapture %ps, float %x, float %y) #0 {
entry:
  %conv = fpext float %x to double
  %conv1 = fpext float %y to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), double %conv, double %conv1) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_setorigin(%struct._IO_FILE* nocapture %ps) #0 {
entry:
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str54, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %ps)
  %1 = load i32* @ostack, align 4, !tbaa !0
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @ostack, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_unsetorigin(%struct._IO_FILE* nocapture %ps) #0 {
entry:
  %0 = load i32* @ostack, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str55, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str56, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %ps)
  %2 = load i32* @ostack, align 4, !tbaa !0
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @ostack, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ps_close(%struct._IO_FILE* %ps) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([12 x i8]* @.str57, i64 0, i64 0)) #4
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str58, i64 0, i64 0)) #4
  tail call void @ffclose(%struct._IO_FILE* %ps) #4
  ret void
}

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define void @ps_comment(%struct._IO_FILE* nocapture %ps, i8* %s) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str59, i64 0, i64 0), i8* %s) #4
  ret void
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
