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
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !91), !dbg !339
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !92), !dbg !339
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !93), !dbg !339
  tail call void @llvm.dbg.value(metadata !{float %x2}, i64 0, metadata !94), !dbg !339
  tail call void @llvm.dbg.value(metadata !{float %y2}, i64 0, metadata !95), !dbg !339
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #5, !dbg !340
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !96), !dbg !340
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !341
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([22 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !342
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([15 x i8]* @.str3, i64 0, i64 0), i8* %fn) #5, !dbg !343
  %conv = fpext float %x1 to double, !dbg !344
  %conv4 = fpext float %y1 to double, !dbg !344
  %conv5 = fpext float %x2 to double, !dbg !344
  %conv6 = fpext float %y2 to double, !dbg !344
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0), double %conv, double %conv4, double %conv5, double %conv6) #5, !dbg !344
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !345
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str6, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %call), !dbg !346
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %call), !dbg !347
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %call), !dbg !348
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str9, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %call), !dbg !349
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str10, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %call), !dbg !350
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str11, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %call), !dbg !351
  %6 = load i32* @nrgb, align 4, !dbg !352, !tbaa !353
  %cmp = icmp sgt i32 %6, 0, !dbg !352
  br i1 %cmp, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !356, !tbaa !358
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* %fn) #5, !dbg !356
  store i32 0, i32* @nrgb, align 4, !dbg !359, !tbaa !353
  br label %if.end, !dbg !360

if.end:                                           ; preds = %if.then, %entry
  ret %struct._IO_FILE* %call, !dbg !361
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @ps_linewidth(%struct._IO_FILE* nocapture %ps, i32 %lw) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !101), !dbg !362
  tail call void @llvm.dbg.value(metadata !{i32 %lw}, i64 0, metadata !102), !dbg !362
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0), i32 %lw) #5, !dbg !363
  ret void, !dbg !364
}

; Function Attrs: nounwind optsize uwtable
define void @ps_color(%struct._IO_FILE* nocapture %ps, float %r, float %g, float %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !107), !dbg !365
  tail call void @llvm.dbg.value(metadata !{float %r}, i64 0, metadata !108), !dbg !365
  tail call void @llvm.dbg.value(metadata !{float %g}, i64 0, metadata !109), !dbg !365
  tail call void @llvm.dbg.value(metadata !{float %b}, i64 0, metadata !110), !dbg !365
  %call = tail call fastcc i32 @search_col(%struct._IO_FILE* %ps, float %r, float %g, float %b) #6, !dbg !366
  %call.i = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str63, i64 0, i64 0), i32 %call) #5, !dbg !367
  tail call void @llvm.dbg.value(metadata !368, i64 0, metadata !369) #4, !dbg !370
  %call.i3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([4 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0)) #5, !dbg !371
  ret void, !dbg !372
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @search_col(%struct._IO_FILE* nocapture %ps, float %r, float %g, float %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !304), !dbg !373
  tail call void @llvm.dbg.value(metadata !{float %r}, i64 0, metadata !305), !dbg !373
  tail call void @llvm.dbg.value(metadata !{float %g}, i64 0, metadata !306), !dbg !373
  tail call void @llvm.dbg.value(metadata !{float %b}, i64 0, metadata !307), !dbg !373
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !308), !dbg !374
  %0 = load i32* @nrgb, align 4, !dbg !374, !tbaa !353
  %cmp63 = icmp sgt i32 %0, 0, !dbg !374
  br i1 %cmp63, label %for.body.lr.ph, label %for.end, !dbg !374

for.body.lr.ph:                                   ; preds = %entry
  %1 = load %struct.t_rgb** @rgb, align 8, !dbg !376, !tbaa !358
  br label %for.body, !dbg !374

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %r1 = getelementptr inbounds %struct.t_rgb* %1, i64 %indvars.iv, i32 0, !dbg !376
  %2 = load float* %r1, align 4, !dbg !376, !tbaa !377
  %sub = fsub float %2, %r, !dbg !376
  %fabsf = tail call float @fabsf(float %sub) #7, !dbg !376
  %3 = fpext float %fabsf to double, !dbg !376
  %cmp2 = fcmp olt double %3, 1.200000e-07, !dbg !376
  br i1 %cmp2, label %land.lhs.true, label %for.inc, !dbg !376

land.lhs.true:                                    ; preds = %for.body
  %g6 = getelementptr inbounds %struct.t_rgb* %1, i64 %indvars.iv, i32 1, !dbg !378
  %4 = load float* %g6, align 4, !dbg !378, !tbaa !377
  %sub7 = fsub float %4, %g, !dbg !378
  %fabsf57 = tail call float @fabsf(float %sub7) #7, !dbg !378
  %5 = fpext float %fabsf57 to double, !dbg !378
  %cmp10 = fcmp olt double %5, 1.200000e-07, !dbg !378
  br i1 %cmp10, label %land.lhs.true12, label %for.inc, !dbg !378

land.lhs.true12:                                  ; preds = %land.lhs.true
  %b15 = getelementptr inbounds %struct.t_rgb* %1, i64 %indvars.iv, i32 2, !dbg !379
  %6 = load float* %b15, align 4, !dbg !379, !tbaa !377
  %sub16 = fsub float %6, %b, !dbg !379
  %fabsf58 = tail call float @fabsf(float %sub16) #7, !dbg !379
  %7 = fpext float %fabsf58 to double, !dbg !379
  %cmp19 = fcmp olt double %7, 1.200000e-07, !dbg !379
  br i1 %cmp19, label %return, label %for.inc, !dbg !379

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true12
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !374
  %inc = add nsw i32 %i.064, 1, !dbg !374
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !308), !dbg !374
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !374
  %cmp = icmp slt i32 %8, %0, !dbg !374
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge, !dbg !374

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  %phitmp = sext i32 %inc to i64, !dbg !374
  br label %for.end, !dbg !374

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %i.0.lcssa = phi i64 [ %phitmp, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %9 = load i32* @maxrgb, align 4, !dbg !380, !tbaa !353
  %cmp21 = icmp slt i32 %0, %9, !dbg !380
  br i1 %cmp21, label %if.end27, label %if.then23, !dbg !380

if.then23:                                        ; preds = %for.end
  %add = add nsw i32 %9, 100, !dbg !381
  store i32 %add, i32* @maxrgb, align 4, !dbg !381, !tbaa !353
  %10 = load %struct.t_rgb** @rgb, align 8, !dbg !383, !tbaa !358
  %11 = bitcast %struct.t_rgb* %10 to i8*, !dbg !383
  %mul = mul i32 %add, 12, !dbg !383
  %call26 = tail call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 109, i8* %11, i32 %mul) #5, !dbg !383
  %12 = bitcast i8* %call26 to %struct.t_rgb*, !dbg !383
  store %struct.t_rgb* %12, %struct.t_rgb** @rgb, align 8, !dbg !383, !tbaa !358
  %.pre = load i32* @nrgb, align 4, !dbg !384, !tbaa !353
  br label %if.end27, !dbg !385

if.end27:                                         ; preds = %for.end, %if.then23
  %13 = phi i32 [ %0, %for.end ], [ %.pre, %if.then23 ]
  %call.i = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str63, i64 0, i64 0), i32 %13) #5, !dbg !386
  tail call void @llvm.dbg.value(metadata !368, i64 0, metadata !387) #4, !dbg !388
  %conv.i = fpext float %r to double, !dbg !389
  %conv1.i = fpext float %g to double, !dbg !389
  %conv2.i = fpext float %b to double, !dbg !389
  %call.i59 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([37 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), double %conv.i, double %conv1.i, double %conv2.i) #5, !dbg !389
  %14 = load i32* @nrgb, align 4, !dbg !390, !tbaa !353
  %call.i60 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str63, i64 0, i64 0), i32 %14) #5, !dbg !391
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str61, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0)) #5, !dbg !390
  %15 = load %struct.t_rgb** @rgb, align 8, !dbg !392, !tbaa !358
  %r33 = getelementptr inbounds %struct.t_rgb* %15, i64 %i.0.lcssa, i32 0, !dbg !392
  store float %r, float* %r33, align 4, !dbg !392, !tbaa !377
  %g36 = getelementptr inbounds %struct.t_rgb* %15, i64 %i.0.lcssa, i32 1, !dbg !393
  store float %g, float* %g36, align 4, !dbg !393, !tbaa !377
  %b39 = getelementptr inbounds %struct.t_rgb* %15, i64 %i.0.lcssa, i32 2, !dbg !394
  store float %b, float* %b39, align 4, !dbg !394, !tbaa !377
  %16 = load i32* @nrgb, align 4, !dbg !395, !tbaa !353
  %inc40 = add nsw i32 %16, 1, !dbg !395
  store i32 %inc40, i32* @nrgb, align 4, !dbg !395, !tbaa !353
  br label %return, !dbg !396

return:                                           ; preds = %land.lhs.true12, %if.end27
  %retval.0 = phi i32 [ %16, %if.end27 ], [ %i.064, %land.lhs.true12 ]
  ret i32 %retval.0, !dbg !397
}

; Function Attrs: nounwind optsize uwtable
define void @ps_rgb(%struct._IO_FILE* nocapture %ps, %struct.t_rgb* nocapture %rgb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !123), !dbg !398
  tail call void @llvm.dbg.value(metadata !{%struct.t_rgb* %rgb}, i64 0, metadata !124), !dbg !398
  %r = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0, !dbg !399
  %0 = load float* %r, align 4, !dbg !399, !tbaa !377
  %g = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1, !dbg !399
  %1 = load float* %g, align 4, !dbg !399, !tbaa !377
  %b = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2, !dbg !399
  %2 = load float* %b, align 4, !dbg !399, !tbaa !377
  tail call void @ps_color(%struct._IO_FILE* %ps, float %0, float %1, float %2) #6, !dbg !399
  ret void, !dbg !400
}

; Function Attrs: nounwind optsize uwtable
define void @ps_init_rgb_nbox(%struct._IO_FILE* nocapture %ps, float %xbox, float %ybox) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !129), !dbg !401
  tail call void @llvm.dbg.value(metadata !{float %xbox}, i64 0, metadata !130), !dbg !401
  tail call void @llvm.dbg.value(metadata !{float %ybox}, i64 0, metadata !131), !dbg !401
  store float %ybox, float* @gen_ybox, align 4, !dbg !402, !tbaa !377
  %conv = fpext float %xbox to double, !dbg !403
  %sub = fsub float -0.000000e+00, %xbox, !dbg !403
  %conv1 = fpext float %sub to double, !dbg !403
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([82 x i8]* @.str15, i64 0, i64 0), double 0.000000e+00, double %conv, double 0.000000e+00, double 0.000000e+00, double %conv1, double 0.000000e+00) #5, !dbg !403
  ret void, !dbg !404
}

; Function Attrs: nounwind optsize uwtable
define void @ps_rgb_nbox(%struct._IO_FILE* nocapture %ps, %struct.t_rgb* nocapture %rgb, float %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !136), !dbg !405
  tail call void @llvm.dbg.value(metadata !{%struct.t_rgb* %rgb}, i64 0, metadata !137), !dbg !405
  tail call void @llvm.dbg.value(metadata !{float %n}, i64 0, metadata !138), !dbg !405
  %cmp = fcmp ogt float %n, 2.000000e+00, !dbg !406
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !406

for.cond.preheader:                               ; preds = %entry
  %cmp213 = fcmp ogt float %n, 0.000000e+00, !dbg !407
  br i1 %cmp213, label %for.body.lr.ph, label %if.end, !dbg !407

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %r.i10 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0, !dbg !409
  %g.i11 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1, !dbg !409
  %b.i12 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2, !dbg !409
  br label %for.body, !dbg !407

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !411) #4, !dbg !414
  tail call void @llvm.dbg.value(metadata !{%struct.t_rgb* %rgb}, i64 0, metadata !415) #4, !dbg !414
  %r.i = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0, !dbg !416
  %0 = load float* %r.i, align 4, !dbg !416, !tbaa !377
  %g.i = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1, !dbg !416
  %1 = load float* %g.i, align 4, !dbg !416, !tbaa !377
  %b.i = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2, !dbg !416
  %2 = load float* %b.i, align 4, !dbg !416, !tbaa !377
  tail call void @ps_color(%struct._IO_FILE* %ps, float %0, float %1, float %2) #5, !dbg !416
  %3 = load float* @gen_ybox, align 4, !dbg !417, !tbaa !377
  %mul = fmul float %3, %n, !dbg !417
  %conv = fpext float %mul to double, !dbg !417
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), double %conv) #5, !dbg !417
  br label %if.end, !dbg !418

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !419) #4, !dbg !420
  tail call void @llvm.dbg.value(metadata !{%struct.t_rgb* %rgb}, i64 0, metadata !421) #4, !dbg !420
  %4 = load float* %r.i10, align 4, !dbg !409, !tbaa !377
  %5 = load float* %g.i11, align 4, !dbg !409, !tbaa !377
  %6 = load float* %b.i12, align 4, !dbg !409, !tbaa !377
  %call.i = tail call fastcc i32 @search_col(%struct._IO_FILE* %ps, float %4, float %5, float %6) #5, !dbg !409
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i32 %call.i) #5, !dbg !409
  %inc = add nsw i32 %i.014, 1, !dbg !407
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !139), !dbg !407
  %conv1 = sitofp i32 %inc to float, !dbg !407
  %cmp2 = fcmp olt float %conv1, %n, !dbg !407
  br i1 %cmp2, label %for.body, label %if.end, !dbg !407

if.end:                                           ; preds = %for.cond.preheader, %for.body, %if.then
  ret void, !dbg !422
}

; Function Attrs: nounwind optsize uwtable
define void @ps_rgb_box(%struct._IO_FILE* nocapture %ps, %struct.t_rgb* nocapture %rgb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !147), !dbg !423
  tail call void @llvm.dbg.value(metadata !{%struct.t_rgb* %rgb}, i64 0, metadata !148), !dbg !423
  %r = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0, !dbg !424
  %0 = load float* %r, align 4, !dbg !424, !tbaa !377
  %g = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1, !dbg !424
  %1 = load float* %g, align 4, !dbg !424, !tbaa !377
  %b = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2, !dbg !424
  %2 = load float* %b, align 4, !dbg !424, !tbaa !377
  %call = tail call fastcc i32 @search_col(%struct._IO_FILE* %ps, float %0, float %1, float %2) #6, !dbg !424
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i32 %call) #5, !dbg !424
  ret void, !dbg !425
}

; Function Attrs: nounwind optsize uwtable
define void @ps_init_rgb_box(%struct._IO_FILE* nocapture %ps, float %xbox, float %ybox) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !142), !dbg !426
  tail call void @llvm.dbg.value(metadata !{float %xbox}, i64 0, metadata !143), !dbg !426
  tail call void @llvm.dbg.value(metadata !{float %ybox}, i64 0, metadata !144), !dbg !426
  %conv = fpext float %ybox to double, !dbg !427
  %conv1 = fpext float %xbox to double, !dbg !427
  %sub = fsub float -0.000000e+00, %ybox, !dbg !427
  %conv2 = fpext float %sub to double, !dbg !427
  %sub3 = fsub float -0.000000e+00, %xbox, !dbg !427
  %conv4 = fpext float %sub3 to double, !dbg !427
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([76 x i8]* @.str17, i64 0, i64 0), double 0.000000e+00, double %conv, double %conv1, double 0.000000e+00, double 0.000000e+00, double %conv2, double %conv4, double 0.000000e+00, double %conv) #5, !dbg !427
  ret void, !dbg !428
}

; Function Attrs: nounwind optsize uwtable
define void @ps_lineto(%struct._IO_FILE* nocapture %ps, float %x, float %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !151), !dbg !429
  tail call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !152), !dbg !429
  tail call void @llvm.dbg.value(metadata !{float %y}, i64 0, metadata !153), !dbg !429
  %conv = fpext float %x to double, !dbg !430
  %conv1 = fpext float %y to double, !dbg !430
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), double %conv, double %conv1) #5, !dbg !430
  ret void, !dbg !431
}

; Function Attrs: nounwind optsize uwtable
define void @ps_linerel(%struct._IO_FILE* nocapture %ps, float %dx, float %dy) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !156), !dbg !432
  tail call void @llvm.dbg.value(metadata !{float %dx}, i64 0, metadata !157), !dbg !432
  tail call void @llvm.dbg.value(metadata !{float %dy}, i64 0, metadata !158), !dbg !432
  %conv = fpext float %dx to double, !dbg !433
  %conv1 = fpext float %dy to double, !dbg !433
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %conv, double %conv1) #5, !dbg !433
  ret void, !dbg !434
}

; Function Attrs: nounwind optsize uwtable
define void @ps_moveto(%struct._IO_FILE* nocapture %ps, float %x, float %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !161), !dbg !435
  tail call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !162), !dbg !435
  tail call void @llvm.dbg.value(metadata !{float %y}, i64 0, metadata !163), !dbg !435
  %conv = fpext float %x to double, !dbg !436
  %conv1 = fpext float %y to double, !dbg !436
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %conv, double %conv1) #5, !dbg !436
  ret void, !dbg !437
}

; Function Attrs: nounwind optsize uwtable
define void @ps_moverel(%struct._IO_FILE* nocapture %ps, float %dx, float %dy) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !166), !dbg !438
  tail call void @llvm.dbg.value(metadata !{float %dx}, i64 0, metadata !167), !dbg !438
  tail call void @llvm.dbg.value(metadata !{float %dy}, i64 0, metadata !168), !dbg !438
  %conv = fpext float %dx to double, !dbg !439
  %conv1 = fpext float %dy to double, !dbg !439
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0), double %conv, double %conv1) #5, !dbg !439
  ret void, !dbg !440
}

; Function Attrs: nounwind optsize uwtable
define void @ps_line(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !173), !dbg !441
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !174), !dbg !441
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !175), !dbg !441
  tail call void @llvm.dbg.value(metadata !{float %x2}, i64 0, metadata !176), !dbg !441
  tail call void @llvm.dbg.value(metadata !{float %y2}, i64 0, metadata !177), !dbg !441
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !442) #4, !dbg !444
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !445) #4, !dbg !444
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !446) #4, !dbg !444
  %conv.i = fpext float %x1 to double, !dbg !447
  %conv1.i = fpext float %y1 to double, !dbg !447
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %conv.i, double %conv1.i) #5, !dbg !447
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !448) #4, !dbg !450
  tail call void @llvm.dbg.value(metadata !{float %x2}, i64 0, metadata !451) #4, !dbg !450
  tail call void @llvm.dbg.value(metadata !{float %y2}, i64 0, metadata !452) #4, !dbg !450
  %conv.i3 = fpext float %x2 to double, !dbg !453
  %conv1.i4 = fpext float %y2 to double, !dbg !453
  %call.i5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), double %conv.i3, double %conv1.i4) #5, !dbg !453
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %ps), !dbg !454
  ret void, !dbg !455
}

; Function Attrs: nounwind optsize uwtable
define void @ps_box(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !180), !dbg !456
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !181), !dbg !456
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !182), !dbg !456
  tail call void @llvm.dbg.value(metadata !{float %x2}, i64 0, metadata !183), !dbg !456
  tail call void @llvm.dbg.value(metadata !{float %y2}, i64 0, metadata !184), !dbg !456
  tail call fastcc void @do_box(%struct._IO_FILE* %ps, float %x1, float %y1, float %x2, float %y2) #6, !dbg !457
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %ps), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_box(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !295), !dbg !460
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !296), !dbg !460
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !297), !dbg !460
  tail call void @llvm.dbg.value(metadata !{float %x2}, i64 0, metadata !298), !dbg !460
  tail call void @llvm.dbg.value(metadata !{float %y2}, i64 0, metadata !299), !dbg !460
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !461) #4, !dbg !463
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !464) #4, !dbg !463
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !465) #4, !dbg !463
  %conv.i = fpext float %x1 to double, !dbg !466
  %conv1.i = fpext float %y1 to double, !dbg !466
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %conv.i, double %conv1.i) #5, !dbg !466
  %sub = fsub float %y2, %y1, !dbg !467
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !468) #4, !dbg !469
  tail call void @llvm.dbg.value(metadata !470, i64 0, metadata !471) #4, !dbg !469
  tail call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !472) #4, !dbg !469
  %conv1.i14 = fpext float %sub to double, !dbg !473
  %call.i15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double 0.000000e+00, double %conv1.i14) #5, !dbg !473
  %sub1 = fsub float %x2, %x1, !dbg !474
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !475) #4, !dbg !476
  tail call void @llvm.dbg.value(metadata !{float %sub1}, i64 0, metadata !477) #4, !dbg !476
  tail call void @llvm.dbg.value(metadata !470, i64 0, metadata !478) #4, !dbg !476
  %conv.i16 = fpext float %sub1 to double, !dbg !479
  %call.i17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %conv.i16, double 0.000000e+00) #5, !dbg !479
  %sub2 = fsub float %y1, %y2, !dbg !480
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !481) #4, !dbg !482
  tail call void @llvm.dbg.value(metadata !470, i64 0, metadata !483) #4, !dbg !482
  tail call void @llvm.dbg.value(metadata !{float %sub2}, i64 0, metadata !484) #4, !dbg !482
  %conv1.i18 = fpext float %sub2 to double, !dbg !485
  %call.i19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double 0.000000e+00, double %conv1.i18) #5, !dbg !485
  %sub3 = fsub float %x1, %x2, !dbg !486
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !487) #4, !dbg !488
  tail call void @llvm.dbg.value(metadata !{float %sub3}, i64 0, metadata !489) #4, !dbg !488
  tail call void @llvm.dbg.value(metadata !470, i64 0, metadata !490) #4, !dbg !488
  %conv.i20 = fpext float %sub3 to double, !dbg !491
  %call.i21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %conv.i20, double 0.000000e+00) #5, !dbg !491
  ret void, !dbg !492
}

; Function Attrs: nounwind optsize uwtable
define void @ps_fillbox(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !187), !dbg !493
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !188), !dbg !493
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !189), !dbg !493
  tail call void @llvm.dbg.value(metadata !{float %x2}, i64 0, metadata !190), !dbg !493
  tail call void @llvm.dbg.value(metadata !{float %y2}, i64 0, metadata !191), !dbg !493
  tail call fastcc void @do_box(%struct._IO_FILE* %ps, float %x1, float %y1, float %x2, float %y2) #6, !dbg !494
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str24, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %ps), !dbg !495
  ret void, !dbg !496
}

; Function Attrs: nounwind optsize uwtable
define void @ps_arc(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %rad, float %a0, float %a1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !196), !dbg !497
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !197), !dbg !497
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !198), !dbg !497
  tail call void @llvm.dbg.value(metadata !{float %rad}, i64 0, metadata !199), !dbg !497
  tail call void @llvm.dbg.value(metadata !{float %a0}, i64 0, metadata !200), !dbg !497
  tail call void @llvm.dbg.value(metadata !{float %a1}, i64 0, metadata !201), !dbg !497
  %conv = fpext float %x1 to double, !dbg !498
  %conv1 = fpext float %y1 to double, !dbg !498
  %conv2 = fpext float %rad to double, !dbg !498
  %conv3 = fpext float %a0 to double, !dbg !498
  %conv4 = fpext float %a1 to double, !dbg !498
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str25, i64 0, i64 0), double %conv, double %conv1, double %conv2, double %conv3, double %conv4) #5, !dbg !498
  ret void, !dbg !499
}

; Function Attrs: nounwind optsize uwtable
define void @ps_fillarc(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %rad, float %a0, float %a1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !204), !dbg !500
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !205), !dbg !500
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !206), !dbg !500
  tail call void @llvm.dbg.value(metadata !{float %rad}, i64 0, metadata !207), !dbg !500
  tail call void @llvm.dbg.value(metadata !{float %a0}, i64 0, metadata !208), !dbg !500
  tail call void @llvm.dbg.value(metadata !{float %a1}, i64 0, metadata !209), !dbg !500
  %conv = fpext float %x1 to double, !dbg !501
  %conv1 = fpext float %y1 to double, !dbg !501
  %conv2 = fpext float %rad to double, !dbg !501
  %conv3 = fpext float %a0 to double, !dbg !501
  %conv4 = fpext float %a1 to double, !dbg !501
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0), double %conv, double %conv1, double %conv2, double %conv3, double %conv4) #5, !dbg !501
  ret void, !dbg !502
}

; Function Attrs: nounwind optsize uwtable
define void @ps_arcslice(%struct._IO_FILE* nocapture %ps, float %xc, float %yc, float %rad1, float %rad2, float %a0, float %a1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !214), !dbg !503
  tail call void @llvm.dbg.value(metadata !{float %xc}, i64 0, metadata !215), !dbg !503
  tail call void @llvm.dbg.value(metadata !{float %yc}, i64 0, metadata !216), !dbg !503
  tail call void @llvm.dbg.value(metadata !{float %rad1}, i64 0, metadata !217), !dbg !504
  tail call void @llvm.dbg.value(metadata !{float %rad2}, i64 0, metadata !218), !dbg !504
  tail call void @llvm.dbg.value(metadata !{float %a0}, i64 0, metadata !219), !dbg !504
  tail call void @llvm.dbg.value(metadata !{float %a1}, i64 0, metadata !220), !dbg !504
  %conv = fpext float %xc to double, !dbg !505
  %conv1 = fpext float %yc to double, !dbg !505
  %conv2 = fpext float %rad1 to double, !dbg !505
  %conv3 = fpext float %a0 to double, !dbg !505
  %conv4 = fpext float %a1 to double, !dbg !505
  %conv7 = fpext float %rad2 to double, !dbg !505
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([60 x i8]* @.str27, i64 0, i64 0), double %conv, double %conv1, double %conv2, double %conv3, double %conv4, double %conv, double %conv1, double %conv7, double %conv4, double %conv3) #5, !dbg !505
  ret void, !dbg !506
}

; Function Attrs: nounwind optsize uwtable
define void @ps_fillarcslice(%struct._IO_FILE* nocapture %ps, float %xc, float %yc, float %rad1, float %rad2, float %a0, float %a1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !223), !dbg !507
  tail call void @llvm.dbg.value(metadata !{float %xc}, i64 0, metadata !224), !dbg !507
  tail call void @llvm.dbg.value(metadata !{float %yc}, i64 0, metadata !225), !dbg !507
  tail call void @llvm.dbg.value(metadata !{float %rad1}, i64 0, metadata !226), !dbg !508
  tail call void @llvm.dbg.value(metadata !{float %rad2}, i64 0, metadata !227), !dbg !508
  tail call void @llvm.dbg.value(metadata !{float %a0}, i64 0, metadata !228), !dbg !508
  tail call void @llvm.dbg.value(metadata !{float %a1}, i64 0, metadata !229), !dbg !508
  %conv = fpext float %xc to double, !dbg !509
  %conv1 = fpext float %yc to double, !dbg !509
  %conv2 = fpext float %rad1 to double, !dbg !509
  %conv3 = fpext float %a0 to double, !dbg !509
  %conv4 = fpext float %a1 to double, !dbg !509
  %conv7 = fpext float %rad2 to double, !dbg !509
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([60 x i8]* @.str28, i64 0, i64 0), double %conv, double %conv1, double %conv2, double %conv3, double %conv4, double %conv, double %conv1, double %conv7, double %conv4, double %conv3) #5, !dbg !509
  ret void, !dbg !510
}

; Function Attrs: nounwind optsize uwtable
define void @ps_circle(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, float %rad) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !232), !dbg !511
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !233), !dbg !511
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !234), !dbg !511
  tail call void @llvm.dbg.value(metadata !{float %rad}, i64 0, metadata !235), !dbg !511
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !512) #4, !dbg !514
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !515) #4, !dbg !514
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !516) #4, !dbg !514
  tail call void @llvm.dbg.value(metadata !{float %rad}, i64 0, metadata !517) #4, !dbg !514
  tail call void @llvm.dbg.value(metadata !470, i64 0, metadata !518) #4, !dbg !514
  tail call void @llvm.dbg.value(metadata !519, i64 0, metadata !520) #4, !dbg !514
  %conv.i = fpext float %x1 to double, !dbg !521
  %conv1.i = fpext float %y1 to double, !dbg !521
  %conv2.i = fpext float %rad to double, !dbg !521
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str25, i64 0, i64 0), double %conv.i, double %conv1.i, double %conv2.i, double 0.000000e+00, double 3.600000e+02) #5, !dbg !521
  ret void, !dbg !522
}

; Function Attrs: nounwind optsize uwtable
define void @ps_font(%struct._IO_FILE* nocapture %ps, i32 %font, float %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !240), !dbg !523
  tail call void @llvm.dbg.value(metadata !{i32 %font}, i64 0, metadata !241), !dbg !523
  tail call void @llvm.dbg.value(metadata !{float %size}, i64 0, metadata !242), !dbg !523
  %0 = icmp ugt i32 %font, 12, !dbg !524
  br i1 %0, label %if.then, label %if.end, !dbg !524

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !525, !tbaa !358
  %2 = load i8** getelementptr inbounds ([12 x i8*]* @fontnm, i64 0, i64 0), align 16, !dbg !525, !tbaa !358
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([28 x i8]* @.str41, i64 0, i64 0), i32 %font, i8* %2) #5, !dbg !525
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !241), !dbg !527
  br label %if.end, !dbg !528

if.end:                                           ; preds = %entry, %if.then
  %font.addr.0 = phi i32 [ 0, %if.then ], [ %font, %entry ]
  %idxprom = sext i32 %font.addr.0 to i64, !dbg !529
  %arrayidx = getelementptr inbounds [12 x i8*]* @fontnm, i64 0, i64 %idxprom, !dbg !529
  %3 = load i8** %arrayidx, align 8, !dbg !529, !tbaa !358
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([14 x i8]* @.str42, i64 0, i64 0), i8* %3) #5, !dbg !529
  %conv = fpext float %size to double, !dbg !530
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str43, i64 0, i64 0), double %conv) #5, !dbg !530
  ret void, !dbg !531
}

; Function Attrs: nounwind optsize uwtable
define void @ps_strfont(%struct._IO_FILE* nocapture %ps, i8* %font, float %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !247), !dbg !532
  tail call void @llvm.dbg.value(metadata !{i8* %font}, i64 0, metadata !248), !dbg !532
  tail call void @llvm.dbg.value(metadata !{float %size}, i64 0, metadata !249), !dbg !532
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([14 x i8]* @.str42, i64 0, i64 0), i8* %font) #5, !dbg !533
  %conv = fpext float %size to double, !dbg !534
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str43, i64 0, i64 0), double %conv) #5, !dbg !534
  ret void, !dbg !535
}

; Function Attrs: nounwind optsize uwtable
define void @ps_text(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, i8* %str) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !254), !dbg !536
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !255), !dbg !536
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !256), !dbg !536
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !257), !dbg !536
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !537) #4, !dbg !539
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !540) #4, !dbg !539
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !541) #4, !dbg !539
  %conv.i = fpext float %x1 to double, !dbg !542
  %conv1.i = fpext float %y1 to double, !dbg !542
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %conv.i, double %conv1.i) #5, !dbg !542
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0), i8* %str) #5, !dbg !543
  ret void, !dbg !544
}

; Function Attrs: nounwind optsize uwtable
define void @ps_rotate(%struct._IO_FILE* nocapture %ps, i32 %bPlus) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !260), !dbg !545
  tail call void @llvm.dbg.value(metadata !{i32 %bPlus}, i64 0, metadata !261), !dbg !545
  %tobool = icmp eq i32 %bPlus, 0, !dbg !546
  br i1 %tobool, label %if.else, label %if.then, !dbg !546

if.then:                                          ; preds = %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str45, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %ps), !dbg !547
  br label %if.end, !dbg !547

if.else:                                          ; preds = %entry
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str46, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %ps), !dbg !548
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !549
}

; Function Attrs: nounwind optsize uwtable
define void @ps_ctext(%struct._IO_FILE* nocapture %ps, float %x1, float %y1, i8* %str, i32 %expos) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !266), !dbg !550
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !267), !dbg !550
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !268), !dbg !550
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !269), !dbg !550
  tail call void @llvm.dbg.value(metadata !{i32 %expos}, i64 0, metadata !270), !dbg !550
  %cmp = icmp eq i32 %expos, 1, !dbg !551
  %conv.i.i = fpext float %x1 to double, !dbg !552
  %conv1.i.i = fpext float %y1 to double, !dbg !552
  %call.i.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %conv.i.i, double %conv1.i.i) #5, !dbg !552
  br i1 %cmp, label %if.then, label %if.end, !dbg !551

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !556) #4, !dbg !557
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !558) #4, !dbg !557
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !559) #4, !dbg !557
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !560) #4, !dbg !557
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !561) #4, !dbg !562
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !563) #4, !dbg !562
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !564) #4, !dbg !562
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0), i8* %str) #5, !dbg !565
  br label %return, !dbg !566

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !567) #4, !dbg !569
  tail call void @llvm.dbg.value(metadata !{float %x1}, i64 0, metadata !570) #4, !dbg !569
  tail call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !571) #4, !dbg !569
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0), i8* %str) #5, !dbg !572
  switch i32 %expos, label %sw.default [
    i32 2, label %sw.bb4
    i32 0, label %sw.bb2
  ], !dbg !573

sw.bb2:                                           ; preds = %if.end
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str49, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %ps), !dbg !574
  br label %sw.epilog, !dbg !576

sw.bb4:                                           ; preds = %if.end
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str50, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %ps), !dbg !577
  br label %sw.epilog, !dbg !578

sw.default:                                       ; preds = %if.end
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str51, i64 0, i64 0), i32 %expos) #5, !dbg !579
  br label %sw.epilog, !dbg !580

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb2
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([19 x i8]* @.str52, i64 0, i64 0), i8* %str) #5, !dbg !581
  br label %return, !dbg !581

return:                                           ; preds = %sw.epilog, %if.then
  ret void, !dbg !581
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @ps_translate(%struct._IO_FILE* nocapture %ps, float %x, float %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !273), !dbg !582
  tail call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !274), !dbg !582
  tail call void @llvm.dbg.value(metadata !{float %y}, i64 0, metadata !275), !dbg !582
  %conv = fpext float %x to double, !dbg !583
  %conv1 = fpext float %y to double, !dbg !583
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), double %conv, double %conv1) #5, !dbg !583
  ret void, !dbg !584
}

; Function Attrs: nounwind optsize uwtable
define void @ps_setorigin(%struct._IO_FILE* nocapture %ps) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !280), !dbg !585
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str54, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %ps), !dbg !586
  %1 = load i32* @ostack, align 4, !dbg !587, !tbaa !353
  %inc = add nsw i32 %1, 1, !dbg !587
  store i32 %inc, i32* @ostack, align 4, !dbg !587, !tbaa !353
  ret void, !dbg !588
}

; Function Attrs: nounwind optsize uwtable
define void @ps_unsetorigin(%struct._IO_FILE* nocapture %ps) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !283), !dbg !589
  %0 = load i32* @ostack, align 4, !dbg !590, !tbaa !353
  %cmp = icmp slt i32 %0, 1, !dbg !590
  br i1 %cmp, label %if.then, label %if.end, !dbg !590

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str55, i64 0, i64 0)) #5, !dbg !591
  br label %if.end, !dbg !591

if.end:                                           ; preds = %if.then, %entry
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str56, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %ps), !dbg !592
  %2 = load i32* @ostack, align 4, !dbg !593, !tbaa !353
  %dec = add nsw i32 %2, -1, !dbg !593
  store i32 %dec, i32* @ostack, align 4, !dbg !593, !tbaa !353
  ret void, !dbg !594
}

; Function Attrs: nounwind optsize uwtable
define void @ps_close(%struct._IO_FILE* %ps) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !286), !dbg !595
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([12 x i8]* @.str57, i64 0, i64 0)) #5, !dbg !596
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str58, i64 0, i64 0)) #5, !dbg !597
  tail call void @ffclose(%struct._IO_FILE* %ps) #5, !dbg !598
  ret void, !dbg !599
}

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define void @ps_comment(%struct._IO_FILE* nocapture %ps, i8* %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %ps}, i64 0, metadata !291), !dbg !600
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !292), !dbg !600
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str59, i64 0, i64 0), i8* %s) #5, !dbg !601
  ret void, !dbg !602
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !24, metadata !25, metadata !327, metadata !24, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !19}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 52, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 52, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18}
!6 = metadata !{i32 786472, metadata !"efontTIMES", i64 0} ; [ DW_TAG_enumerator ] [efontTIMES :: 0]
!7 = metadata !{i32 786472, metadata !"efontTIMESITALIC", i64 1} ; [ DW_TAG_enumerator ] [efontTIMESITALIC :: 1]
!8 = metadata !{i32 786472, metadata !"efontTIMESBOLD", i64 2} ; [ DW_TAG_enumerator ] [efontTIMESBOLD :: 2]
!9 = metadata !{i32 786472, metadata !"efontTIMESBOLDITALIC", i64 3} ; [ DW_TAG_enumerator ] [efontTIMESBOLDITALIC :: 3]
!10 = metadata !{i32 786472, metadata !"efontHELV", i64 4} ; [ DW_TAG_enumerator ] [efontHELV :: 4]
!11 = metadata !{i32 786472, metadata !"efontHELVITALIC", i64 5} ; [ DW_TAG_enumerator ] [efontHELVITALIC :: 5]
!12 = metadata !{i32 786472, metadata !"efontHELVBOLD", i64 6} ; [ DW_TAG_enumerator ] [efontHELVBOLD :: 6]
!13 = metadata !{i32 786472, metadata !"efontHELVBOLDITALIC", i64 7} ; [ DW_TAG_enumerator ] [efontHELVBOLDITALIC :: 7]
!14 = metadata !{i32 786472, metadata !"efontCOUR", i64 8} ; [ DW_TAG_enumerator ] [efontCOUR :: 8]
!15 = metadata !{i32 786472, metadata !"efontCOURITALIC", i64 9} ; [ DW_TAG_enumerator ] [efontCOURITALIC :: 9]
!16 = metadata !{i32 786472, metadata !"efontCOURBOLD", i64 10} ; [ DW_TAG_enumerator ] [efontCOURBOLD :: 10]
!17 = metadata !{i32 786472, metadata !"efontCOURBOLDITALIC", i64 11} ; [ DW_TAG_enumerator ] [efontCOURBOLDITALIC :: 11]
!18 = metadata !{i32 786472, metadata !"efontNR", i64 12} ; [ DW_TAG_enumerator ] [efontNR :: 12]
!19 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 44, i64 32, i64 32, i32 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 44, size 32, align 32, offset 0] [from ]
!20 = metadata !{metadata !21, metadata !22, metadata !23}
!21 = metadata !{i32 786472, metadata !"eXCenter", i64 0} ; [ DW_TAG_enumerator ] [eXCenter :: 0]
!22 = metadata !{i32 786472, metadata !"eXLeft", i64 1} ; [ DW_TAG_enumerator ] [eXLeft :: 1]
!23 = metadata !{i32 786472, metadata !"eXRight", i64 2} ; [ DW_TAG_enumerator ] [eXRight :: 2]
!24 = metadata !{i32 0}
!25 = metadata !{metadata !26, metadata !97, metadata !103, metadata !111, metadata !125, metadata !132, metadata !140, metadata !145, metadata !149, metadata !154, metadata !159, metadata !164, metadata !169, metadata !178, metadata !185, metadata !192, metadata !202, metadata !210, metadata !221, metadata !230, metadata !236, metadata !243, metadata !250, metadata !258, metadata !262, metadata !271, metadata !276, metadata !281, metadata !284, metadata !287, metadata !293, metadata !300, metadata !309, metadata !318, metadata !323}
!26 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_open", metadata !"ps_open", metadata !"", i32 46, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IO_FILE* (i8*, float, float, float, float)* @ps_open, null, null, metadata !90, i32 47} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 47] [ps_open]
!27 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.c]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !30, metadata !38, metadata !88, metadata !88, metadata !88, metadata !88}
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!31 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!32 = metadata !{i32 786451, metadata !33, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!33 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!34 = metadata !{metadata !35, metadata !37, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !58, metadata !59, metadata !60, metadata !61, metadata !64, metadata !66, metadata !68, metadata !72, metadata !74, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !83, metadata !84}
!35 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!36 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!37 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!39 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!40 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!41 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!42 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!43 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!44 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!45 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!46 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!47 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!48 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!49 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!50 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !51} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!52 = metadata !{i32 786451, metadata !33, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !53, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!53 = metadata !{metadata !54, metadata !55, metadata !57}
!54 = metadata !{i32 786445, metadata !33, metadata !52, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786445, metadata !33, metadata !52, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!57 = metadata !{i32 786445, metadata !33, metadata !52, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!58 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !56} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!59 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !36} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!60 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!61 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !62} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!62 = metadata !{i32 786454, metadata !33, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!63 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!64 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !65} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!65 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!66 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !67} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!67 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!68 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !69} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!69 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !39, metadata !70, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!72 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !73} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!74 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !75} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!75 = metadata !{i32 786454, metadata !33, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!76 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!77 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!78 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!79 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!80 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !81} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!81 = metadata !{i32 786454, metadata !33, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!82 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!83 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !36} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!84 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !85} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!85 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !39, metadata !86, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!86 = metadata !{metadata !87}
!87 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!88 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!89 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96}
!91 = metadata !{i32 786689, metadata !26, metadata !"fn", metadata !27, i32 16777262, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 46]
!92 = metadata !{i32 786689, metadata !26, metadata !"x1", metadata !27, i32 33554478, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 46]
!93 = metadata !{i32 786689, metadata !26, metadata !"y1", metadata !27, i32 50331694, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 46]
!94 = metadata !{i32 786689, metadata !26, metadata !"x2", metadata !27, i32 67108910, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 46]
!95 = metadata !{i32 786689, metadata !26, metadata !"y2", metadata !27, i32 83886126, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 46]
!96 = metadata !{i32 786688, metadata !26, metadata !"ps", metadata !27, i32 48, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ps] [line 48]
!97 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_linewidth", metadata !"ps_linewidth", metadata !"", i32 72, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32)* @ps_linewidth, null, null, metadata !100, i32 73} ; [ DW_TAG_subprogram ] [line 72] [def] [scope 73] [ps_linewidth]
!98 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!99 = metadata !{null, metadata !30, metadata !36}
!100 = metadata !{metadata !101, metadata !102}
!101 = metadata !{i32 786689, metadata !97, metadata !"ps", metadata !27, i32 16777288, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 72]
!102 = metadata !{i32 786689, metadata !97, metadata !"lw", metadata !27, i32 33554504, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lw] [line 72]
!103 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_color", metadata !"ps_color", metadata !"", i32 122, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, float)* @ps_color, null, null, metadata !106, i32 123} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 123] [ps_color]
!104 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{null, metadata !30, metadata !88, metadata !88, metadata !88}
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110}
!107 = metadata !{i32 786689, metadata !103, metadata !"ps", metadata !27, i32 16777338, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 122]
!108 = metadata !{i32 786689, metadata !103, metadata !"r", metadata !27, i32 33554554, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 122]
!109 = metadata !{i32 786689, metadata !103, metadata !"g", metadata !27, i32 50331770, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 122]
!110 = metadata !{i32 786689, metadata !103, metadata !"b", metadata !27, i32 67108986, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 122]
!111 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_rgb", metadata !"ps_rgb", metadata !"", i32 127, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_rgb*)* @ps_rgb, null, null, metadata !122, i32 128} ; [ DW_TAG_subprogram ] [line 127] [def] [scope 128] [ps_rgb]
!112 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = metadata !{null, metadata !30, metadata !114}
!114 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !115} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_rgb]
!115 = metadata !{i32 786454, metadata !1, null, metadata !"t_rgb", i32 38, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ] [t_rgb] [line 38, size 0, align 0, offset 0] [from ]
!116 = metadata !{i32 786451, metadata !117, null, metadata !"", i32 36, i64 96, i64 32, i32 0, i32 0, null, metadata !118, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 96, align 32, offset 0] [from ]
!117 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/matrix.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!118 = metadata !{metadata !119, metadata !120, metadata !121}
!119 = metadata !{i32 786445, metadata !117, metadata !116, metadata !"r", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [r] [line 37, size 32, align 32, offset 0] [from real]
!120 = metadata !{i32 786445, metadata !117, metadata !116, metadata !"g", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [g] [line 37, size 32, align 32, offset 32] [from real]
!121 = metadata !{i32 786445, metadata !117, metadata !116, metadata !"b", i32 37, i64 32, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [b] [line 37, size 32, align 32, offset 64] [from real]
!122 = metadata !{metadata !123, metadata !124}
!123 = metadata !{i32 786689, metadata !111, metadata !"ps", metadata !27, i32 16777343, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 127]
!124 = metadata !{i32 786689, metadata !111, metadata !"rgb", metadata !27, i32 33554559, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgb] [line 127]
!125 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_init_rgb_nbox", metadata !"ps_init_rgb_nbox", metadata !"", i32 134, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float)* @ps_init_rgb_nbox, null, null, metadata !128, i32 135} ; [ DW_TAG_subprogram ] [line 134] [def] [scope 135] [ps_init_rgb_nbox]
!126 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!127 = metadata !{null, metadata !30, metadata !88, metadata !88}
!128 = metadata !{metadata !129, metadata !130, metadata !131}
!129 = metadata !{i32 786689, metadata !125, metadata !"ps", metadata !27, i32 16777350, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 134]
!130 = metadata !{i32 786689, metadata !125, metadata !"xbox", metadata !27, i32 33554566, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xbox] [line 134]
!131 = metadata !{i32 786689, metadata !125, metadata !"ybox", metadata !27, i32 50331782, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ybox] [line 134]
!132 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_rgb_nbox", metadata !"ps_rgb_nbox", metadata !"", i32 143, metadata !133, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_rgb*, float)* @ps_rgb_nbox, null, null, metadata !135, i32 144} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 144] [ps_rgb_nbox]
!133 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!134 = metadata !{null, metadata !30, metadata !114, metadata !88}
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139}
!136 = metadata !{i32 786689, metadata !132, metadata !"ps", metadata !27, i32 16777359, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 143]
!137 = metadata !{i32 786689, metadata !132, metadata !"rgb", metadata !27, i32 33554575, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgb] [line 143]
!138 = metadata !{i32 786689, metadata !132, metadata !"n", metadata !27, i32 50331791, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 143]
!139 = metadata !{i32 786688, metadata !132, metadata !"i", metadata !27, i32 145, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 145]
!140 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_init_rgb_box", metadata !"ps_init_rgb_box", metadata !"", i32 157, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float)* @ps_init_rgb_box, null, null, metadata !141, i32 158} ; [ DW_TAG_subprogram ] [line 157] [def] [scope 158] [ps_init_rgb_box]
!141 = metadata !{metadata !142, metadata !143, metadata !144}
!142 = metadata !{i32 786689, metadata !140, metadata !"ps", metadata !27, i32 16777373, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 157]
!143 = metadata !{i32 786689, metadata !140, metadata !"xbox", metadata !27, i32 33554589, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xbox] [line 157]
!144 = metadata !{i32 786689, metadata !140, metadata !"ybox", metadata !27, i32 50331805, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ybox] [line 157]
!145 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_rgb_box", metadata !"ps_rgb_box", metadata !"", i32 165, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_rgb*)* @ps_rgb_box, null, null, metadata !146, i32 166} ; [ DW_TAG_subprogram ] [line 165] [def] [scope 166] [ps_rgb_box]
!146 = metadata !{metadata !147, metadata !148}
!147 = metadata !{i32 786689, metadata !145, metadata !"ps", metadata !27, i32 16777381, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 165]
!148 = metadata !{i32 786689, metadata !145, metadata !"rgb", metadata !27, i32 33554597, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rgb] [line 165]
!149 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_lineto", metadata !"ps_lineto", metadata !"", i32 171, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float)* @ps_lineto, null, null, metadata !150, i32 172} ; [ DW_TAG_subprogram ] [line 171] [def] [scope 172] [ps_lineto]
!150 = metadata !{metadata !151, metadata !152, metadata !153}
!151 = metadata !{i32 786689, metadata !149, metadata !"ps", metadata !27, i32 16777387, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 171]
!152 = metadata !{i32 786689, metadata !149, metadata !"x", metadata !27, i32 33554603, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 171]
!153 = metadata !{i32 786689, metadata !149, metadata !"y", metadata !27, i32 50331819, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 171]
!154 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_linerel", metadata !"ps_linerel", metadata !"", i32 176, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float)* @ps_linerel, null, null, metadata !155, i32 177} ; [ DW_TAG_subprogram ] [line 176] [def] [scope 177] [ps_linerel]
!155 = metadata !{metadata !156, metadata !157, metadata !158}
!156 = metadata !{i32 786689, metadata !154, metadata !"ps", metadata !27, i32 16777392, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 176]
!157 = metadata !{i32 786689, metadata !154, metadata !"dx", metadata !27, i32 33554608, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dx] [line 176]
!158 = metadata !{i32 786689, metadata !154, metadata !"dy", metadata !27, i32 50331824, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dy] [line 176]
!159 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_moveto", metadata !"ps_moveto", metadata !"", i32 181, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float)* @ps_moveto, null, null, metadata !160, i32 182} ; [ DW_TAG_subprogram ] [line 181] [def] [scope 182] [ps_moveto]
!160 = metadata !{metadata !161, metadata !162, metadata !163}
!161 = metadata !{i32 786689, metadata !159, metadata !"ps", metadata !27, i32 16777397, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 181]
!162 = metadata !{i32 786689, metadata !159, metadata !"x", metadata !27, i32 33554613, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 181]
!163 = metadata !{i32 786689, metadata !159, metadata !"y", metadata !27, i32 50331829, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 181]
!164 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_moverel", metadata !"ps_moverel", metadata !"", i32 186, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float)* @ps_moverel, null, null, metadata !165, i32 187} ; [ DW_TAG_subprogram ] [line 186] [def] [scope 187] [ps_moverel]
!165 = metadata !{metadata !166, metadata !167, metadata !168}
!166 = metadata !{i32 786689, metadata !164, metadata !"ps", metadata !27, i32 16777402, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 186]
!167 = metadata !{i32 786689, metadata !164, metadata !"dx", metadata !27, i32 33554618, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dx] [line 186]
!168 = metadata !{i32 786689, metadata !164, metadata !"dy", metadata !27, i32 50331834, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dy] [line 186]
!169 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_line", metadata !"ps_line", metadata !"", i32 191, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, float, float)* @ps_line, null, null, metadata !172, i32 192} ; [ DW_TAG_subprogram ] [line 191] [def] [scope 192] [ps_line]
!170 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!171 = metadata !{null, metadata !30, metadata !88, metadata !88, metadata !88, metadata !88}
!172 = metadata !{metadata !173, metadata !174, metadata !175, metadata !176, metadata !177}
!173 = metadata !{i32 786689, metadata !169, metadata !"ps", metadata !27, i32 16777407, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 191]
!174 = metadata !{i32 786689, metadata !169, metadata !"x1", metadata !27, i32 33554623, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 191]
!175 = metadata !{i32 786689, metadata !169, metadata !"y1", metadata !27, i32 50331839, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 191]
!176 = metadata !{i32 786689, metadata !169, metadata !"x2", metadata !27, i32 67109055, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 191]
!177 = metadata !{i32 786689, metadata !169, metadata !"y2", metadata !27, i32 83886271, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 191]
!178 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_box", metadata !"ps_box", metadata !"", i32 207, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, float, float)* @ps_box, null, null, metadata !179, i32 208} ; [ DW_TAG_subprogram ] [line 207] [def] [scope 208] [ps_box]
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !183, metadata !184}
!180 = metadata !{i32 786689, metadata !178, metadata !"ps", metadata !27, i32 16777423, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 207]
!181 = metadata !{i32 786689, metadata !178, metadata !"x1", metadata !27, i32 33554639, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 207]
!182 = metadata !{i32 786689, metadata !178, metadata !"y1", metadata !27, i32 50331855, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 207]
!183 = metadata !{i32 786689, metadata !178, metadata !"x2", metadata !27, i32 67109071, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 207]
!184 = metadata !{i32 786689, metadata !178, metadata !"y2", metadata !27, i32 83886287, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 207]
!185 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_fillbox", metadata !"ps_fillbox", metadata !"", i32 213, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, float, float)* @ps_fillbox, null, null, metadata !186, i32 214} ; [ DW_TAG_subprogram ] [line 213] [def] [scope 214] [ps_fillbox]
!186 = metadata !{metadata !187, metadata !188, metadata !189, metadata !190, metadata !191}
!187 = metadata !{i32 786689, metadata !185, metadata !"ps", metadata !27, i32 16777429, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 213]
!188 = metadata !{i32 786689, metadata !185, metadata !"x1", metadata !27, i32 33554645, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 213]
!189 = metadata !{i32 786689, metadata !185, metadata !"y1", metadata !27, i32 50331861, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 213]
!190 = metadata !{i32 786689, metadata !185, metadata !"x2", metadata !27, i32 67109077, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 213]
!191 = metadata !{i32 786689, metadata !185, metadata !"y2", metadata !27, i32 83886293, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 213]
!192 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_arc", metadata !"ps_arc", metadata !"", i32 219, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, float, float, float)* @ps_arc, null, null, metadata !195, i32 220} ; [ DW_TAG_subprogram ] [line 219] [def] [scope 220] [ps_arc]
!193 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!194 = metadata !{null, metadata !30, metadata !88, metadata !88, metadata !88, metadata !88, metadata !88}
!195 = metadata !{metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201}
!196 = metadata !{i32 786689, metadata !192, metadata !"ps", metadata !27, i32 16777435, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 219]
!197 = metadata !{i32 786689, metadata !192, metadata !"x1", metadata !27, i32 33554651, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 219]
!198 = metadata !{i32 786689, metadata !192, metadata !"y1", metadata !27, i32 50331867, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 219]
!199 = metadata !{i32 786689, metadata !192, metadata !"rad", metadata !27, i32 67109083, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rad] [line 219]
!200 = metadata !{i32 786689, metadata !192, metadata !"a0", metadata !27, i32 83886299, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a0] [line 219]
!201 = metadata !{i32 786689, metadata !192, metadata !"a1", metadata !27, i32 100663515, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a1] [line 219]
!202 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_fillarc", metadata !"ps_fillarc", metadata !"", i32 224, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, float, float, float)* @ps_fillarc, null, null, metadata !203, i32 225} ; [ DW_TAG_subprogram ] [line 224] [def] [scope 225] [ps_fillarc]
!203 = metadata !{metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209}
!204 = metadata !{i32 786689, metadata !202, metadata !"ps", metadata !27, i32 16777440, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 224]
!205 = metadata !{i32 786689, metadata !202, metadata !"x1", metadata !27, i32 33554656, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 224]
!206 = metadata !{i32 786689, metadata !202, metadata !"y1", metadata !27, i32 50331872, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 224]
!207 = metadata !{i32 786689, metadata !202, metadata !"rad", metadata !27, i32 67109088, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rad] [line 224]
!208 = metadata !{i32 786689, metadata !202, metadata !"a0", metadata !27, i32 83886304, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a0] [line 224]
!209 = metadata !{i32 786689, metadata !202, metadata !"a1", metadata !27, i32 100663520, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a1] [line 224]
!210 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_arcslice", metadata !"ps_arcslice", metadata !"", i32 229, metadata !211, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, float, float, float, float)* @ps_arcslice, null, null, metadata !213, i32 231} ; [ DW_TAG_subprogram ] [line 229] [def] [scope 231] [ps_arcslice]
!211 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!212 = metadata !{null, metadata !30, metadata !88, metadata !88, metadata !88, metadata !88, metadata !88, metadata !88}
!213 = metadata !{metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220}
!214 = metadata !{i32 786689, metadata !210, metadata !"ps", metadata !27, i32 16777445, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 229]
!215 = metadata !{i32 786689, metadata !210, metadata !"xc", metadata !27, i32 33554661, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xc] [line 229]
!216 = metadata !{i32 786689, metadata !210, metadata !"yc", metadata !27, i32 50331877, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [yc] [line 229]
!217 = metadata !{i32 786689, metadata !210, metadata !"rad1", metadata !27, i32 67109094, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rad1] [line 230]
!218 = metadata !{i32 786689, metadata !210, metadata !"rad2", metadata !27, i32 83886310, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rad2] [line 230]
!219 = metadata !{i32 786689, metadata !210, metadata !"a0", metadata !27, i32 100663526, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a0] [line 230]
!220 = metadata !{i32 786689, metadata !210, metadata !"a1", metadata !27, i32 117440742, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a1] [line 230]
!221 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_fillarcslice", metadata !"ps_fillarcslice", metadata !"", i32 236, metadata !211, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, float, float, float, float)* @ps_fillarcslice, null, null, metadata !222, i32 238} ; [ DW_TAG_subprogram ] [line 236] [def] [scope 238] [ps_fillarcslice]
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229}
!223 = metadata !{i32 786689, metadata !221, metadata !"ps", metadata !27, i32 16777452, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 236]
!224 = metadata !{i32 786689, metadata !221, metadata !"xc", metadata !27, i32 33554668, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xc] [line 236]
!225 = metadata !{i32 786689, metadata !221, metadata !"yc", metadata !27, i32 50331884, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [yc] [line 236]
!226 = metadata !{i32 786689, metadata !221, metadata !"rad1", metadata !27, i32 67109101, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rad1] [line 237]
!227 = metadata !{i32 786689, metadata !221, metadata !"rad2", metadata !27, i32 83886317, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rad2] [line 237]
!228 = metadata !{i32 786689, metadata !221, metadata !"a0", metadata !27, i32 100663533, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a0] [line 237]
!229 = metadata !{i32 786689, metadata !221, metadata !"a1", metadata !27, i32 117440749, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a1] [line 237]
!230 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_circle", metadata !"ps_circle", metadata !"", i32 243, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, float)* @ps_circle, null, null, metadata !231, i32 244} ; [ DW_TAG_subprogram ] [line 243] [def] [scope 244] [ps_circle]
!231 = metadata !{metadata !232, metadata !233, metadata !234, metadata !235}
!232 = metadata !{i32 786689, metadata !230, metadata !"ps", metadata !27, i32 16777459, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 243]
!233 = metadata !{i32 786689, metadata !230, metadata !"x1", metadata !27, i32 33554675, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 243]
!234 = metadata !{i32 786689, metadata !230, metadata !"y1", metadata !27, i32 50331891, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 243]
!235 = metadata !{i32 786689, metadata !230, metadata !"rad", metadata !27, i32 67109107, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rad] [line 243]
!236 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_font", metadata !"ps_font", metadata !"", i32 254, metadata !237, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, float)* @ps_font, null, null, metadata !239, i32 255} ; [ DW_TAG_subprogram ] [line 254] [def] [scope 255] [ps_font]
!237 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!238 = metadata !{null, metadata !30, metadata !36, metadata !88}
!239 = metadata !{metadata !240, metadata !241, metadata !242}
!240 = metadata !{i32 786689, metadata !236, metadata !"ps", metadata !27, i32 16777470, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 254]
!241 = metadata !{i32 786689, metadata !236, metadata !"font", metadata !27, i32 33554686, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [font] [line 254]
!242 = metadata !{i32 786689, metadata !236, metadata !"size", metadata !27, i32 50331902, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 254]
!243 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_strfont", metadata !"ps_strfont", metadata !"", i32 265, metadata !244, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, float)* @ps_strfont, null, null, metadata !246, i32 266} ; [ DW_TAG_subprogram ] [line 265] [def] [scope 266] [ps_strfont]
!244 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!245 = metadata !{null, metadata !30, metadata !38, metadata !88}
!246 = metadata !{metadata !247, metadata !248, metadata !249}
!247 = metadata !{i32 786689, metadata !243, metadata !"ps", metadata !27, i32 16777481, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 265]
!248 = metadata !{i32 786689, metadata !243, metadata !"font", metadata !27, i32 33554697, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [font] [line 265]
!249 = metadata !{i32 786689, metadata !243, metadata !"size", metadata !27, i32 50331913, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 265]
!250 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_text", metadata !"ps_text", metadata !"", i32 271, metadata !251, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, i8*)* @ps_text, null, null, metadata !253, i32 272} ; [ DW_TAG_subprogram ] [line 271] [def] [scope 272] [ps_text]
!251 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!252 = metadata !{null, metadata !30, metadata !88, metadata !88, metadata !38}
!253 = metadata !{metadata !254, metadata !255, metadata !256, metadata !257}
!254 = metadata !{i32 786689, metadata !250, metadata !"ps", metadata !27, i32 16777487, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 271]
!255 = metadata !{i32 786689, metadata !250, metadata !"x1", metadata !27, i32 33554703, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 271]
!256 = metadata !{i32 786689, metadata !250, metadata !"y1", metadata !27, i32 50331919, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 271]
!257 = metadata !{i32 786689, metadata !250, metadata !"str", metadata !27, i32 67109135, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 271]
!258 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_rotate", metadata !"ps_rotate", metadata !"", i32 277, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32)* @ps_rotate, null, null, metadata !259, i32 278} ; [ DW_TAG_subprogram ] [line 277] [def] [scope 278] [ps_rotate]
!259 = metadata !{metadata !260, metadata !261}
!260 = metadata !{i32 786689, metadata !258, metadata !"ps", metadata !27, i32 16777493, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 277]
!261 = metadata !{i32 786689, metadata !258, metadata !"bPlus", metadata !27, i32 33554709, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bPlus] [line 277]
!262 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_ctext", metadata !"ps_ctext", metadata !"", i32 285, metadata !263, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, i8*, i32)* @ps_ctext, null, null, metadata !265, i32 286} ; [ DW_TAG_subprogram ] [line 285] [def] [scope 286] [ps_ctext]
!263 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!264 = metadata !{null, metadata !30, metadata !88, metadata !88, metadata !38, metadata !36}
!265 = metadata !{metadata !266, metadata !267, metadata !268, metadata !269, metadata !270}
!266 = metadata !{i32 786689, metadata !262, metadata !"ps", metadata !27, i32 16777501, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 285]
!267 = metadata !{i32 786689, metadata !262, metadata !"x1", metadata !27, i32 33554717, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 285]
!268 = metadata !{i32 786689, metadata !262, metadata !"y1", metadata !27, i32 50331933, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 285]
!269 = metadata !{i32 786689, metadata !262, metadata !"str", metadata !27, i32 67109149, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 285]
!270 = metadata !{i32 786689, metadata !262, metadata !"expos", metadata !27, i32 83886365, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [expos] [line 285]
!271 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_translate", metadata !"ps_translate", metadata !"", i32 309, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float)* @ps_translate, null, null, metadata !272, i32 310} ; [ DW_TAG_subprogram ] [line 309] [def] [scope 310] [ps_translate]
!272 = metadata !{metadata !273, metadata !274, metadata !275}
!273 = metadata !{i32 786689, metadata !271, metadata !"ps", metadata !27, i32 16777525, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 309]
!274 = metadata !{i32 786689, metadata !271, metadata !"x", metadata !27, i32 33554741, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 309]
!275 = metadata !{i32 786689, metadata !271, metadata !"y", metadata !27, i32 50331957, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 309]
!276 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_setorigin", metadata !"ps_setorigin", metadata !"", i32 316, metadata !277, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*)* @ps_setorigin, null, null, metadata !279, i32 317} ; [ DW_TAG_subprogram ] [line 316] [def] [scope 317] [ps_setorigin]
!277 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!278 = metadata !{null, metadata !30}
!279 = metadata !{metadata !280}
!280 = metadata !{i32 786689, metadata !276, metadata !"ps", metadata !27, i32 16777532, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 316]
!281 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_unsetorigin", metadata !"ps_unsetorigin", metadata !"", i32 322, metadata !277, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*)* @ps_unsetorigin, null, null, metadata !282, i32 323} ; [ DW_TAG_subprogram ] [line 322] [def] [scope 323] [ps_unsetorigin]
!282 = metadata !{metadata !283}
!283 = metadata !{i32 786689, metadata !281, metadata !"ps", metadata !27, i32 16777538, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 322]
!284 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_close", metadata !"ps_close", metadata !"", i32 330, metadata !277, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*)* @ps_close, null, null, metadata !285, i32 331} ; [ DW_TAG_subprogram ] [line 330] [def] [scope 331] [ps_close]
!285 = metadata !{metadata !286}
!286 = metadata !{i32 786689, metadata !284, metadata !"ps", metadata !27, i32 16777546, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 330]
!287 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_comment", metadata !"ps_comment", metadata !"", i32 337, metadata !288, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*)* @ps_comment, null, null, metadata !290, i32 338} ; [ DW_TAG_subprogram ] [line 337] [def] [scope 338] [ps_comment]
!288 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !289, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!289 = metadata !{null, metadata !30, metadata !38}
!290 = metadata !{metadata !291, metadata !292}
!291 = metadata !{i32 786689, metadata !287, metadata !"ps", metadata !27, i32 16777553, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 337]
!292 = metadata !{i32 786689, metadata !287, metadata !"s", metadata !27, i32 33554769, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 337]
!293 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"do_box", metadata !"do_box", metadata !"", i32 198, metadata !170, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, float, float)* @do_box, null, null, metadata !294, i32 199} ; [ DW_TAG_subprogram ] [line 198] [local] [def] [scope 199] [do_box]
!294 = metadata !{metadata !295, metadata !296, metadata !297, metadata !298, metadata !299}
!295 = metadata !{i32 786689, metadata !293, metadata !"ps", metadata !27, i32 16777414, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 198]
!296 = metadata !{i32 786689, metadata !293, metadata !"x1", metadata !27, i32 33554630, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 198]
!297 = metadata !{i32 786689, metadata !293, metadata !"y1", metadata !27, i32 50331846, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 198]
!298 = metadata !{i32 786689, metadata !293, metadata !"x2", metadata !27, i32 67109062, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 198]
!299 = metadata !{i32 786689, metadata !293, metadata !"y2", metadata !27, i32 83886278, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 198]
!300 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"search_col", metadata !"search_col", metadata !"", i32 96, metadata !301, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, float, float, float)* @search_col, null, null, metadata !303, i32 97} ; [ DW_TAG_subprogram ] [line 96] [local] [def] [scope 97] [search_col]
!301 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!302 = metadata !{metadata !36, metadata !30, metadata !88, metadata !88, metadata !88}
!303 = metadata !{metadata !304, metadata !305, metadata !306, metadata !307, metadata !308}
!304 = metadata !{i32 786689, metadata !300, metadata !"ps", metadata !27, i32 16777312, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 96]
!305 = metadata !{i32 786689, metadata !300, metadata !"r", metadata !27, i32 33554528, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 96]
!306 = metadata !{i32 786689, metadata !300, metadata !"g", metadata !27, i32 50331744, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 96]
!307 = metadata !{i32 786689, metadata !300, metadata !"b", metadata !27, i32 67108960, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 96]
!308 = metadata !{i32 786688, metadata !300, metadata !"i", metadata !27, i32 98, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 98]
!309 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_defcolor", metadata !"ps_defcolor", metadata !"", i32 77, metadata !310, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !312, i32 78} ; [ DW_TAG_subprogram ] [line 77] [local] [def] [scope 78] [ps_defcolor]
!310 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !311, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!311 = metadata !{null, metadata !30, metadata !88, metadata !88, metadata !88, metadata !38}
!312 = metadata !{metadata !313, metadata !314, metadata !315, metadata !316, metadata !317}
!313 = metadata !{i32 786689, metadata !309, metadata !"ps", metadata !27, i32 16777293, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 77]
!314 = metadata !{i32 786689, metadata !309, metadata !"r", metadata !27, i32 33554509, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 77]
!315 = metadata !{i32 786689, metadata !309, metadata !"g", metadata !27, i32 50331725, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 77]
!316 = metadata !{i32 786689, metadata !309, metadata !"b", metadata !27, i32 67108941, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 77]
!317 = metadata !{i32 786689, metadata !309, metadata !"cname", metadata !27, i32 83886157, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cname] [line 77]
!318 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"i2a", metadata !"i2a", metadata !"", i32 87, metadata !319, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !321, i32 88} ; [ DW_TAG_subprogram ] [line 87] [local] [def] [scope 88] [i2a]
!319 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!320 = metadata !{metadata !38, metadata !36}
!321 = metadata !{metadata !322}
!322 = metadata !{i32 786689, metadata !318, metadata !"i", metadata !27, i32 16777303, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 87]
!323 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"ps_selcolor", metadata !"ps_selcolor", metadata !"", i32 82, metadata !288, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !324, i32 83} ; [ DW_TAG_subprogram ] [line 82] [local] [def] [scope 83] [ps_selcolor]
!324 = metadata !{metadata !325, metadata !326}
!325 = metadata !{i32 786689, metadata !323, metadata !"ps", metadata !27, i32 16777298, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ps] [line 82]
!326 = metadata !{i32 786689, metadata !323, metadata !"cname", metadata !27, i32 33554514, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cname] [line 82]
!327 = metadata !{metadata !328, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !338}
!328 = metadata !{i32 786484, i32 0, null, metadata !"fontnm", metadata !"fontnm", metadata !"", metadata !27, i32 248, metadata !329, i32 0, i32 1, [12 x i8*]* @fontnm, null} ; [ DW_TAG_variable ] [fontnm] [line 248] [def]
!329 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 64, i32 0, i32 0, metadata !38, metadata !330, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 768, align 64, offset 0] [from ]
!330 = metadata !{metadata !331}
!331 = metadata !{i32 786465, i64 0, i64 12}      ; [ DW_TAG_subrange_type ] [0, 11]
!332 = metadata !{i32 786484, i32 0, null, metadata !"ostack", metadata !"ostack", metadata !"", metadata !27, i32 314, metadata !36, i32 1, i32 1, i32* @ostack, null} ; [ DW_TAG_variable ] [ostack] [line 314] [local] [def]
!333 = metadata !{i32 786484, i32 0, null, metadata !"gen_ybox", metadata !"gen_ybox", metadata !"", metadata !27, i32 132, metadata !88, i32 1, i32 1, float* @gen_ybox, null} ; [ DW_TAG_variable ] [gen_ybox] [line 132] [local] [def]
!334 = metadata !{i32 786484, i32 0, null, metadata !"maxrgb", metadata !"maxrgb", metadata !"", metadata !27, i32 42, metadata !36, i32 1, i32 1, i32* @maxrgb, null} ; [ DW_TAG_variable ] [maxrgb] [line 42] [local] [def]
!335 = metadata !{i32 786484, i32 0, null, metadata !"rgb", metadata !"rgb", metadata !"", metadata !27, i32 44, metadata !114, i32 1, i32 1, %struct.t_rgb** @rgb, null} ; [ DW_TAG_variable ] [rgb] [line 44] [local] [def]
!336 = metadata !{i32 786484, i32 0, metadata !318, metadata !"buf", metadata !"buf", metadata !"", metadata !27, i32 89, metadata !337, i32 1, i32 1, [12 x i8]* @i2a.buf, null} ; [ DW_TAG_variable ] [buf] [line 89] [local] [def]
!337 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 8, i32 0, i32 0, metadata !39, metadata !330, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from char]
!338 = metadata !{i32 786484, i32 0, null, metadata !"nrgb", metadata !"nrgb", metadata !"", metadata !27, i32 43, metadata !36, i32 1, i32 1, i32* @nrgb, null} ; [ DW_TAG_variable ] [nrgb] [line 43] [local] [def]
!339 = metadata !{i32 46, i32 0, metadata !26, null}
!340 = metadata !{i32 50, i32 0, metadata !26, null}
!341 = metadata !{i32 51, i32 0, metadata !26, null}
!342 = metadata !{i32 52, i32 0, metadata !26, null}
!343 = metadata !{i32 53, i32 0, metadata !26, null}
!344 = metadata !{i32 54, i32 0, metadata !26, null}
!345 = metadata !{i32 55, i32 0, metadata !26, null}
!346 = metadata !{i32 56, i32 0, metadata !26, null}
!347 = metadata !{i32 57, i32 0, metadata !26, null}
!348 = metadata !{i32 58, i32 0, metadata !26, null} ; [ DW_TAG_imported_module ]
!349 = metadata !{i32 59, i32 0, metadata !26, null}
!350 = metadata !{i32 60, i32 0, metadata !26, null}
!351 = metadata !{i32 61, i32 0, metadata !26, null}
!352 = metadata !{i32 63, i32 0, metadata !26, null}
!353 = metadata !{metadata !"int", metadata !354}
!354 = metadata !{metadata !"omnipotent char", metadata !355}
!355 = metadata !{metadata !"Simple C/C++ TBAA"}
!356 = metadata !{i32 64, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !26, i32 63, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.c]
!358 = metadata !{metadata !"any pointer", metadata !354}
!359 = metadata !{i32 66, i32 0, metadata !357, null}
!360 = metadata !{i32 67, i32 0, metadata !357, null}
!361 = metadata !{i32 69, i32 0, metadata !26, null}
!362 = metadata !{i32 72, i32 0, metadata !97, null}
!363 = metadata !{i32 74, i32 0, metadata !97, null}
!364 = metadata !{i32 75, i32 0, metadata !97, null}
!365 = metadata !{i32 122, i32 0, metadata !103, null}
!366 = metadata !{i32 124, i32 0, metadata !103, null}
!367 = metadata !{i32 91, i32 0, metadata !318, metadata !366}
!368 = metadata !{null}
!369 = metadata !{i32 786689, metadata !323, metadata !"cname", metadata !27, i32 33554514, metadata !38, i32 0, metadata !366} ; [ DW_TAG_arg_variable ] [cname] [line 82]
!370 = metadata !{i32 82, i32 0, metadata !323, metadata !366}
!371 = metadata !{i32 84, i32 0, metadata !323, metadata !366}
!372 = metadata !{i32 125, i32 0, metadata !103, null}
!373 = metadata !{i32 96, i32 0, metadata !300, null}
!374 = metadata !{i32 100, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !300, i32 100, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.c]
!376 = metadata !{i32 101, i32 0, metadata !375, null}
!377 = metadata !{metadata !"float", metadata !354}
!378 = metadata !{i32 102, i32 0, metadata !375, null}
!379 = metadata !{i32 103, i32 0, metadata !375, null}
!380 = metadata !{i32 106, i32 0, metadata !300, null}
!381 = metadata !{i32 108, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !300, i32 107, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.c]
!383 = metadata !{i32 109, i32 0, metadata !382, null}
!384 = metadata !{i32 112, i32 0, metadata !300, null}
!385 = metadata !{i32 110, i32 0, metadata !382, null}
!386 = metadata !{i32 91, i32 0, metadata !318, metadata !384}
!387 = metadata !{i32 786689, metadata !309, metadata !"cname", metadata !27, i32 83886157, metadata !38, i32 0, metadata !384} ; [ DW_TAG_arg_variable ] [cname] [line 77]
!388 = metadata !{i32 77, i32 0, metadata !309, metadata !384}
!389 = metadata !{i32 79, i32 0, metadata !309, metadata !384}
!390 = metadata !{i32 113, i32 0, metadata !300, null}
!391 = metadata !{i32 91, i32 0, metadata !318, metadata !390}
!392 = metadata !{i32 114, i32 0, metadata !300, null}
!393 = metadata !{i32 115, i32 0, metadata !300, null}
!394 = metadata !{i32 116, i32 0, metadata !300, null}
!395 = metadata !{i32 117, i32 0, metadata !300, null}
!396 = metadata !{i32 119, i32 0, metadata !300, null}
!397 = metadata !{i32 120, i32 0, metadata !300, null}
!398 = metadata !{i32 127, i32 0, metadata !111, null}
!399 = metadata !{i32 129, i32 0, metadata !111, null}
!400 = metadata !{i32 130, i32 0, metadata !111, null}
!401 = metadata !{i32 134, i32 0, metadata !125, null}
!402 = metadata !{i32 136, i32 0, metadata !125, null}
!403 = metadata !{i32 137, i32 0, metadata !125, null}
!404 = metadata !{i32 141, i32 0, metadata !125, null}
!405 = metadata !{i32 143, i32 0, metadata !132, null}
!406 = metadata !{i32 147, i32 0, metadata !132, null}
!407 = metadata !{i32 152, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !132, i32 152, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.c]
!409 = metadata !{i32 167, i32 0, metadata !145, metadata !410}
!410 = metadata !{i32 153, i32 0, metadata !408, null}
!411 = metadata !{i32 786689, metadata !111, metadata !"ps", metadata !27, i32 16777343, metadata !30, i32 0, metadata !412} ; [ DW_TAG_arg_variable ] [ps] [line 127]
!412 = metadata !{i32 148, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !132, i32 147, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.c]
!414 = metadata !{i32 127, i32 0, metadata !111, metadata !412}
!415 = metadata !{i32 786689, metadata !111, metadata !"rgb", metadata !27, i32 33554559, metadata !114, i32 0, metadata !412} ; [ DW_TAG_arg_variable ] [rgb] [line 127]
!416 = metadata !{i32 129, i32 0, metadata !111, metadata !412}
!417 = metadata !{i32 149, i32 0, metadata !413, null}
!418 = metadata !{i32 151, i32 0, metadata !413, null}
!419 = metadata !{i32 786689, metadata !145, metadata !"ps", metadata !27, i32 16777381, metadata !30, i32 0, metadata !410} ; [ DW_TAG_arg_variable ] [ps] [line 165]
!420 = metadata !{i32 165, i32 0, metadata !145, metadata !410}
!421 = metadata !{i32 786689, metadata !145, metadata !"rgb", metadata !27, i32 33554597, metadata !114, i32 0, metadata !410} ; [ DW_TAG_arg_variable ] [rgb] [line 165]
!422 = metadata !{i32 155, i32 0, metadata !132, null}
!423 = metadata !{i32 165, i32 0, metadata !145, null}
!424 = metadata !{i32 167, i32 0, metadata !145, null}
!425 = metadata !{i32 169, i32 0, metadata !145, null}
!426 = metadata !{i32 157, i32 0, metadata !140, null}
!427 = metadata !{i32 159, i32 0, metadata !140, null}
!428 = metadata !{i32 163, i32 0, metadata !140, null}
!429 = metadata !{i32 171, i32 0, metadata !149, null}
!430 = metadata !{i32 173, i32 0, metadata !149, null}
!431 = metadata !{i32 174, i32 0, metadata !149, null}
!432 = metadata !{i32 176, i32 0, metadata !154, null}
!433 = metadata !{i32 178, i32 0, metadata !154, null}
!434 = metadata !{i32 179, i32 0, metadata !154, null}
!435 = metadata !{i32 181, i32 0, metadata !159, null}
!436 = metadata !{i32 183, i32 0, metadata !159, null}
!437 = metadata !{i32 184, i32 0, metadata !159, null}
!438 = metadata !{i32 186, i32 0, metadata !164, null}
!439 = metadata !{i32 188, i32 0, metadata !164, null}
!440 = metadata !{i32 189, i32 0, metadata !164, null}
!441 = metadata !{i32 191, i32 0, metadata !169, null}
!442 = metadata !{i32 786689, metadata !159, metadata !"ps", metadata !27, i32 16777397, metadata !30, i32 0, metadata !443} ; [ DW_TAG_arg_variable ] [ps] [line 181]
!443 = metadata !{i32 193, i32 0, metadata !169, null}
!444 = metadata !{i32 181, i32 0, metadata !159, metadata !443}
!445 = metadata !{i32 786689, metadata !159, metadata !"x", metadata !27, i32 33554613, metadata !88, i32 0, metadata !443} ; [ DW_TAG_arg_variable ] [x] [line 181]
!446 = metadata !{i32 786689, metadata !159, metadata !"y", metadata !27, i32 50331829, metadata !88, i32 0, metadata !443} ; [ DW_TAG_arg_variable ] [y] [line 181]
!447 = metadata !{i32 183, i32 0, metadata !159, metadata !443}
!448 = metadata !{i32 786689, metadata !149, metadata !"ps", metadata !27, i32 16777387, metadata !30, i32 0, metadata !449} ; [ DW_TAG_arg_variable ] [ps] [line 171]
!449 = metadata !{i32 194, i32 0, metadata !169, null}
!450 = metadata !{i32 171, i32 0, metadata !149, metadata !449}
!451 = metadata !{i32 786689, metadata !149, metadata !"x", metadata !27, i32 33554603, metadata !88, i32 0, metadata !449} ; [ DW_TAG_arg_variable ] [x] [line 171]
!452 = metadata !{i32 786689, metadata !149, metadata !"y", metadata !27, i32 50331819, metadata !88, i32 0, metadata !449} ; [ DW_TAG_arg_variable ] [y] [line 171]
!453 = metadata !{i32 173, i32 0, metadata !149, metadata !449}
!454 = metadata !{i32 195, i32 0, metadata !169, null}
!455 = metadata !{i32 196, i32 0, metadata !169, null}
!456 = metadata !{i32 207, i32 0, metadata !178, null}
!457 = metadata !{i32 209, i32 0, metadata !178, null}
!458 = metadata !{i32 210, i32 0, metadata !178, null}
!459 = metadata !{i32 211, i32 0, metadata !178, null}
!460 = metadata !{i32 198, i32 0, metadata !293, null}
!461 = metadata !{i32 786689, metadata !159, metadata !"ps", metadata !27, i32 16777397, metadata !30, i32 0, metadata !462} ; [ DW_TAG_arg_variable ] [ps] [line 181]
!462 = metadata !{i32 200, i32 0, metadata !293, null}
!463 = metadata !{i32 181, i32 0, metadata !159, metadata !462}
!464 = metadata !{i32 786689, metadata !159, metadata !"x", metadata !27, i32 33554613, metadata !88, i32 0, metadata !462} ; [ DW_TAG_arg_variable ] [x] [line 181]
!465 = metadata !{i32 786689, metadata !159, metadata !"y", metadata !27, i32 50331829, metadata !88, i32 0, metadata !462} ; [ DW_TAG_arg_variable ] [y] [line 181]
!466 = metadata !{i32 183, i32 0, metadata !159, metadata !462}
!467 = metadata !{i32 201, i32 0, metadata !293, null}
!468 = metadata !{i32 786689, metadata !154, metadata !"ps", metadata !27, i32 16777392, metadata !30, i32 0, metadata !467} ; [ DW_TAG_arg_variable ] [ps] [line 176]
!469 = metadata !{i32 176, i32 0, metadata !154, metadata !467}
!470 = metadata !{float 0.000000e+00}
!471 = metadata !{i32 786689, metadata !154, metadata !"dx", metadata !27, i32 33554608, metadata !88, i32 0, metadata !467} ; [ DW_TAG_arg_variable ] [dx] [line 176]
!472 = metadata !{i32 786689, metadata !154, metadata !"dy", metadata !27, i32 50331824, metadata !88, i32 0, metadata !467} ; [ DW_TAG_arg_variable ] [dy] [line 176]
!473 = metadata !{i32 178, i32 0, metadata !154, metadata !467}
!474 = metadata !{i32 202, i32 0, metadata !293, null}
!475 = metadata !{i32 786689, metadata !154, metadata !"ps", metadata !27, i32 16777392, metadata !30, i32 0, metadata !474} ; [ DW_TAG_arg_variable ] [ps] [line 176]
!476 = metadata !{i32 176, i32 0, metadata !154, metadata !474}
!477 = metadata !{i32 786689, metadata !154, metadata !"dx", metadata !27, i32 33554608, metadata !88, i32 0, metadata !474} ; [ DW_TAG_arg_variable ] [dx] [line 176]
!478 = metadata !{i32 786689, metadata !154, metadata !"dy", metadata !27, i32 50331824, metadata !88, i32 0, metadata !474} ; [ DW_TAG_arg_variable ] [dy] [line 176]
!479 = metadata !{i32 178, i32 0, metadata !154, metadata !474}
!480 = metadata !{i32 203, i32 0, metadata !293, null}
!481 = metadata !{i32 786689, metadata !154, metadata !"ps", metadata !27, i32 16777392, metadata !30, i32 0, metadata !480} ; [ DW_TAG_arg_variable ] [ps] [line 176]
!482 = metadata !{i32 176, i32 0, metadata !154, metadata !480}
!483 = metadata !{i32 786689, metadata !154, metadata !"dx", metadata !27, i32 33554608, metadata !88, i32 0, metadata !480} ; [ DW_TAG_arg_variable ] [dx] [line 176]
!484 = metadata !{i32 786689, metadata !154, metadata !"dy", metadata !27, i32 50331824, metadata !88, i32 0, metadata !480} ; [ DW_TAG_arg_variable ] [dy] [line 176]
!485 = metadata !{i32 178, i32 0, metadata !154, metadata !480}
!486 = metadata !{i32 204, i32 0, metadata !293, null}
!487 = metadata !{i32 786689, metadata !154, metadata !"ps", metadata !27, i32 16777392, metadata !30, i32 0, metadata !486} ; [ DW_TAG_arg_variable ] [ps] [line 176]
!488 = metadata !{i32 176, i32 0, metadata !154, metadata !486}
!489 = metadata !{i32 786689, metadata !154, metadata !"dx", metadata !27, i32 33554608, metadata !88, i32 0, metadata !486} ; [ DW_TAG_arg_variable ] [dx] [line 176]
!490 = metadata !{i32 786689, metadata !154, metadata !"dy", metadata !27, i32 50331824, metadata !88, i32 0, metadata !486} ; [ DW_TAG_arg_variable ] [dy] [line 176]
!491 = metadata !{i32 178, i32 0, metadata !154, metadata !486}
!492 = metadata !{i32 205, i32 0, metadata !293, null}
!493 = metadata !{i32 213, i32 0, metadata !185, null}
!494 = metadata !{i32 215, i32 0, metadata !185, null}
!495 = metadata !{i32 216, i32 0, metadata !185, null}
!496 = metadata !{i32 217, i32 0, metadata !185, null}
!497 = metadata !{i32 219, i32 0, metadata !192, null}
!498 = metadata !{i32 221, i32 0, metadata !192, null}
!499 = metadata !{i32 222, i32 0, metadata !192, null}
!500 = metadata !{i32 224, i32 0, metadata !202, null}
!501 = metadata !{i32 226, i32 0, metadata !202, null}
!502 = metadata !{i32 227, i32 0, metadata !202, null}
!503 = metadata !{i32 229, i32 0, metadata !210, null}
!504 = metadata !{i32 230, i32 0, metadata !210, null}
!505 = metadata !{i32 232, i32 0, metadata !210, null}
!506 = metadata !{i32 234, i32 0, metadata !210, null}
!507 = metadata !{i32 236, i32 0, metadata !221, null}
!508 = metadata !{i32 237, i32 0, metadata !221, null}
!509 = metadata !{i32 239, i32 0, metadata !221, null}
!510 = metadata !{i32 241, i32 0, metadata !221, null}
!511 = metadata !{i32 243, i32 0, metadata !230, null}
!512 = metadata !{i32 786689, metadata !192, metadata !"ps", metadata !27, i32 16777435, metadata !30, i32 0, metadata !513} ; [ DW_TAG_arg_variable ] [ps] [line 219]
!513 = metadata !{i32 245, i32 0, metadata !230, null}
!514 = metadata !{i32 219, i32 0, metadata !192, metadata !513}
!515 = metadata !{i32 786689, metadata !192, metadata !"x1", metadata !27, i32 33554651, metadata !88, i32 0, metadata !513} ; [ DW_TAG_arg_variable ] [x1] [line 219]
!516 = metadata !{i32 786689, metadata !192, metadata !"y1", metadata !27, i32 50331867, metadata !88, i32 0, metadata !513} ; [ DW_TAG_arg_variable ] [y1] [line 219]
!517 = metadata !{i32 786689, metadata !192, metadata !"rad", metadata !27, i32 67109083, metadata !88, i32 0, metadata !513} ; [ DW_TAG_arg_variable ] [rad] [line 219]
!518 = metadata !{i32 786689, metadata !192, metadata !"a0", metadata !27, i32 83886299, metadata !88, i32 0, metadata !513} ; [ DW_TAG_arg_variable ] [a0] [line 219]
!519 = metadata !{float 3.600000e+02}
!520 = metadata !{i32 786689, metadata !192, metadata !"a1", metadata !27, i32 100663515, metadata !88, i32 0, metadata !513} ; [ DW_TAG_arg_variable ] [a1] [line 219]
!521 = metadata !{i32 221, i32 0, metadata !192, metadata !513}
!522 = metadata !{i32 246, i32 0, metadata !230, null}
!523 = metadata !{i32 254, i32 0, metadata !236, null}
!524 = metadata !{i32 257, i32 0, metadata !236, null}
!525 = metadata !{i32 258, i32 0, metadata !526, null}
!526 = metadata !{i32 786443, metadata !1, metadata !236, i32 257, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.c]
!527 = metadata !{i32 259, i32 0, metadata !526, null}
!528 = metadata !{i32 260, i32 0, metadata !526, null}
!529 = metadata !{i32 261, i32 0, metadata !236, null}
!530 = metadata !{i32 262, i32 0, metadata !236, null}
!531 = metadata !{i32 263, i32 0, metadata !236, null}
!532 = metadata !{i32 265, i32 0, metadata !243, null}
!533 = metadata !{i32 267, i32 0, metadata !243, null}
!534 = metadata !{i32 268, i32 0, metadata !243, null}
!535 = metadata !{i32 269, i32 0, metadata !243, null}
!536 = metadata !{i32 271, i32 0, metadata !250, null}
!537 = metadata !{i32 786689, metadata !159, metadata !"ps", metadata !27, i32 16777397, metadata !30, i32 0, metadata !538} ; [ DW_TAG_arg_variable ] [ps] [line 181]
!538 = metadata !{i32 273, i32 0, metadata !250, null}
!539 = metadata !{i32 181, i32 0, metadata !159, metadata !538}
!540 = metadata !{i32 786689, metadata !159, metadata !"x", metadata !27, i32 33554613, metadata !88, i32 0, metadata !538} ; [ DW_TAG_arg_variable ] [x] [line 181]
!541 = metadata !{i32 786689, metadata !159, metadata !"y", metadata !27, i32 50331829, metadata !88, i32 0, metadata !538} ; [ DW_TAG_arg_variable ] [y] [line 181]
!542 = metadata !{i32 183, i32 0, metadata !159, metadata !538}
!543 = metadata !{i32 274, i32 0, metadata !250, null}
!544 = metadata !{i32 275, i32 0, metadata !250, null}
!545 = metadata !{i32 277, i32 0, metadata !258, null}
!546 = metadata !{i32 279, i32 0, metadata !258, null}
!547 = metadata !{i32 280, i32 0, metadata !258, null}
!548 = metadata !{i32 282, i32 0, metadata !258, null}
!549 = metadata !{i32 283, i32 0, metadata !258, null}
!550 = metadata !{i32 285, i32 0, metadata !262, null}
!551 = metadata !{i32 287, i32 0, metadata !262, null}
!552 = metadata !{i32 183, i32 0, metadata !159, metadata !553}
!553 = metadata !{i32 273, i32 0, metadata !250, metadata !554}
!554 = metadata !{i32 288, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !262, i32 287, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.c]
!556 = metadata !{i32 786689, metadata !250, metadata !"ps", metadata !27, i32 16777487, metadata !30, i32 0, metadata !554} ; [ DW_TAG_arg_variable ] [ps] [line 271]
!557 = metadata !{i32 271, i32 0, metadata !250, metadata !554}
!558 = metadata !{i32 786689, metadata !250, metadata !"x1", metadata !27, i32 33554703, metadata !88, i32 0, metadata !554} ; [ DW_TAG_arg_variable ] [x1] [line 271]
!559 = metadata !{i32 786689, metadata !250, metadata !"y1", metadata !27, i32 50331919, metadata !88, i32 0, metadata !554} ; [ DW_TAG_arg_variable ] [y1] [line 271]
!560 = metadata !{i32 786689, metadata !250, metadata !"str", metadata !27, i32 67109135, metadata !38, i32 0, metadata !554} ; [ DW_TAG_arg_variable ] [str] [line 271]
!561 = metadata !{i32 786689, metadata !159, metadata !"ps", metadata !27, i32 16777397, metadata !30, i32 0, metadata !553} ; [ DW_TAG_arg_variable ] [ps] [line 181]
!562 = metadata !{i32 181, i32 0, metadata !159, metadata !553}
!563 = metadata !{i32 786689, metadata !159, metadata !"x", metadata !27, i32 33554613, metadata !88, i32 0, metadata !553} ; [ DW_TAG_arg_variable ] [x] [line 181]
!564 = metadata !{i32 786689, metadata !159, metadata !"y", metadata !27, i32 50331829, metadata !88, i32 0, metadata !553} ; [ DW_TAG_arg_variable ] [y] [line 181]
!565 = metadata !{i32 274, i32 0, metadata !250, metadata !554}
!566 = metadata !{i32 289, i32 0, metadata !555, null}
!567 = metadata !{i32 786689, metadata !159, metadata !"ps", metadata !27, i32 16777397, metadata !30, i32 0, metadata !568} ; [ DW_TAG_arg_variable ] [ps] [line 181]
!568 = metadata !{i32 291, i32 0, metadata !262, null}
!569 = metadata !{i32 181, i32 0, metadata !159, metadata !568}
!570 = metadata !{i32 786689, metadata !159, metadata !"x", metadata !27, i32 33554613, metadata !88, i32 0, metadata !568} ; [ DW_TAG_arg_variable ] [x] [line 181]
!571 = metadata !{i32 786689, metadata !159, metadata !"y", metadata !27, i32 50331829, metadata !88, i32 0, metadata !568} ; [ DW_TAG_arg_variable ] [y] [line 181]
!572 = metadata !{i32 292, i32 0, metadata !262, null}
!573 = metadata !{i32 293, i32 0, metadata !262, null}
!574 = metadata !{i32 298, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !262, i32 293, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/writeps.c]
!576 = metadata !{i32 299, i32 0, metadata !575, null}
!577 = metadata !{i32 301, i32 0, metadata !575, null}
!578 = metadata !{i32 302, i32 0, metadata !575, null}
!579 = metadata !{i32 304, i32 0, metadata !575, null}
!580 = metadata !{i32 305, i32 0, metadata !575, null}
!581 = metadata !{i32 306, i32 0, metadata !262, null}
!582 = metadata !{i32 309, i32 0, metadata !271, null}
!583 = metadata !{i32 311, i32 0, metadata !271, null}
!584 = metadata !{i32 312, i32 0, metadata !271, null}
!585 = metadata !{i32 316, i32 0, metadata !276, null}
!586 = metadata !{i32 318, i32 0, metadata !276, null}
!587 = metadata !{i32 319, i32 0, metadata !276, null}
!588 = metadata !{i32 320, i32 0, metadata !276, null}
!589 = metadata !{i32 322, i32 0, metadata !281, null}
!590 = metadata !{i32 324, i32 0, metadata !281, null}
!591 = metadata !{i32 325, i32 0, metadata !281, null}
!592 = metadata !{i32 326, i32 0, metadata !281, null}
!593 = metadata !{i32 327, i32 0, metadata !281, null}
!594 = metadata !{i32 328, i32 0, metadata !281, null}
!595 = metadata !{i32 330, i32 0, metadata !284, null}
!596 = metadata !{i32 332, i32 0, metadata !284, null}
!597 = metadata !{i32 333, i32 0, metadata !284, null}
!598 = metadata !{i32 334, i32 0, metadata !284, null}
!599 = metadata !{i32 335, i32 0, metadata !284, null}
!600 = metadata !{i32 337, i32 0, metadata !287, null}
!601 = metadata !{i32 339, i32 0, metadata !287, null}
!602 = metadata !{i32 340, i32 0, metadata !287, null}
