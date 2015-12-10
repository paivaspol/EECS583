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
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !35, metadata !356), !dbg !357
  %1 = icmp sgt i32 %__signo, 32, !dbg !358
  br i1 %1, label %5, label %2, !dbg !359

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !360
  %4 = shl i32 1, %3, !dbg !361
  br label %5, !dbg !359

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !359
  ret i32 %6, !dbg !362
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @ps_open(i8* %fn, float %x1, float %y1, float %x2, float %y2) #1 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !103, metadata !356), !dbg !363
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !104, metadata !356), !dbg !364
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !105, metadata !356), !dbg !365
  tail call void @llvm.dbg.value(metadata float %x2, i64 0, metadata !106, metadata !356), !dbg !366
  tail call void @llvm.dbg.value(metadata float %y2, i64 0, metadata !107, metadata !356), !dbg !367
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #6, !dbg !368
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %1, i64 0, metadata !108, metadata !356), !dbg !369
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !370
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([22 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !371
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([15 x i8]* @.str3, i64 0, i64 0), i8* %fn) #6, !dbg !372
  %5 = fpext float %x1 to double, !dbg !373
  %6 = fpext float %y1 to double, !dbg !374
  %7 = fpext float %x2 to double, !dbg !375
  %8 = fpext float %y2 to double, !dbg !376
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0), double %5, double %6, double %7, double %8) #6, !dbg !377
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !378
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str6, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %1), !dbg !379
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %1), !dbg !380
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0), i64 23, i64 1, %struct.__sFILE* %1), !dbg !381
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str9, i64 0, i64 0), i64 23, i64 1, %struct.__sFILE* %1), !dbg !382
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str10, i64 0, i64 0), i64 19, i64 1, %struct.__sFILE* %1), !dbg !383
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str11, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %1), !dbg !384
  %17 = load i32* @nrgb, align 4, !dbg !385, !tbaa !387
  %18 = icmp sgt i32 %17, 0, !dbg !391
  br i1 %18, label %19, label %22, !dbg !392

; <label>:19                                      ; preds = %0
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !393, !tbaa !395
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([54 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str13, i64 0, i64 0), i8* %fn) #6, !dbg !397
  store i32 0, i32* @nrgb, align 4, !dbg !398, !tbaa !387
  br label %22, !dbg !399

; <label>:22                                      ; preds = %19, %0
  ret %struct.__sFILE* %1, !dbg !400
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_linewidth(%struct.__sFILE* nocapture %ps, i32 %lw) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !113, metadata !356), !dbg !401
  tail call void @llvm.dbg.value(metadata i32 %lw, i64 0, metadata !114, metadata !356), !dbg !402
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0), i32 %lw) #6, !dbg !403
  ret void, !dbg !404
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_color(%struct.__sFILE* nocapture %ps, float %r, float %g, float %b) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !119, metadata !356), !dbg !405
  tail call void @llvm.dbg.value(metadata float %r, i64 0, metadata !120, metadata !356), !dbg !406
  tail call void @llvm.dbg.value(metadata float %g, i64 0, metadata !121, metadata !356), !dbg !407
  tail call void @llvm.dbg.value(metadata float %b, i64 0, metadata !122, metadata !356), !dbg !408
  %1 = tail call fastcc i32 @search_col(%struct.__sFILE* %ps, float %r, float %g, float %b) #7, !dbg !409
  %2 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), i32 0, i64 12, i8* getelementptr inbounds ([4 x i8]* @.str61, i64 0, i64 0), i32 %1) #6, !dbg !410
  tail call void @llvm.dbg.value(metadata !351, i64 0, metadata !308, metadata !356) #5, !dbg !412
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0)) #6, !dbg !414
  ret void, !dbg !415
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @search_col(%struct.__sFILE* nocapture %ps, float %r, float %g, float %b) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !318, metadata !356), !dbg !416
  tail call void @llvm.dbg.value(metadata float %r, i64 0, metadata !319, metadata !356), !dbg !417
  tail call void @llvm.dbg.value(metadata float %g, i64 0, metadata !320, metadata !356), !dbg !418
  tail call void @llvm.dbg.value(metadata float %b, i64 0, metadata !321, metadata !356), !dbg !419
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !322, metadata !356), !dbg !420
  %1 = load i32* @nrgb, align 4, !dbg !421, !tbaa !387
  %2 = icmp sgt i32 %1, 0, !dbg !424
  br i1 %2, label %.lr.ph, label %25, !dbg !425

.lr.ph:                                           ; preds = %0
  %3 = load %struct.t_rgb** @rgb, align 8, !dbg !426, !tbaa !395
  %4 = sext i32 %1 to i64, !dbg !425
  br label %5, !dbg !425

; <label>:5                                       ; preds = %.lr.ph, %23
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %23 ]
  %6 = getelementptr inbounds %struct.t_rgb* %3, i64 %indvars.iv, i32 0, !dbg !428
  %7 = load float* %6, align 4, !dbg !428, !tbaa !429
  %8 = fsub float %7, %r, !dbg !432
  %fabsf = tail call float @fabsf(float %8) #8, !dbg !433
  %9 = fpext float %fabsf to double, !dbg !433
  %10 = fcmp olt double %9, 1.200000e-07, !dbg !434
  br i1 %10, label %11, label %23, !dbg !435

; <label>:11                                      ; preds = %5
  %12 = getelementptr inbounds %struct.t_rgb* %3, i64 %indvars.iv, i32 1, !dbg !436
  %13 = load float* %12, align 4, !dbg !436, !tbaa !437
  %14 = fsub float %13, %g, !dbg !438
  %fabsf1 = tail call float @fabsf(float %14) #8, !dbg !439
  %15 = fpext float %fabsf1 to double, !dbg !439
  %16 = fcmp olt double %15, 1.200000e-07, !dbg !440
  br i1 %16, label %17, label %23, !dbg !441

; <label>:17                                      ; preds = %11
  %18 = getelementptr inbounds %struct.t_rgb* %3, i64 %indvars.iv, i32 2, !dbg !442
  %19 = load float* %18, align 4, !dbg !442, !tbaa !443
  %20 = fsub float %19, %b, !dbg !444
  %fabsf2 = tail call float @fabsf(float %20) #8, !dbg !445
  %21 = fpext float %fabsf2 to double, !dbg !445
  %22 = fcmp olt double %21, 1.200000e-07, !dbg !446
  br i1 %22, label %.loopexit, label %23, !dbg !447

; <label>:23                                      ; preds = %5, %11, %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !425
  %24 = icmp slt i64 %indvars.iv.next, %4, !dbg !424
  br i1 %24, label %5, label %._crit_edge, !dbg !425

._crit_edge:                                      ; preds = %23
  %sext = shl i64 %indvars.iv.next, 32, !dbg !425
  %phitmp = ashr exact i64 %sext, 32, !dbg !425
  br label %25, !dbg !425

; <label>:25                                      ; preds = %._crit_edge, %0
  %i.0.lcssa = phi i64 [ %phitmp, %._crit_edge ], [ 0, %0 ]
  %26 = load i32* @maxrgb, align 4, !dbg !448, !tbaa !387
  %27 = icmp slt i32 %1, %26, !dbg !450
  br i1 %27, label %33, label %28, !dbg !451

; <label>:28                                      ; preds = %25
  %29 = add nsw i32 %26, 100, !dbg !452
  store i32 %29, i32* @maxrgb, align 4, !dbg !452, !tbaa !387
  %30 = load i8** bitcast (%struct.t_rgb** @rgb to i8**), align 8, !dbg !454, !tbaa !395
  %31 = mul i32 %29, 12, !dbg !454
  %32 = tail call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str13, i64 0, i64 0), i32 109, i8* %30, i32 %31) #6, !dbg !454
  store i8* %32, i8** bitcast (%struct.t_rgb** @rgb to i8**), align 8, !dbg !454, !tbaa !395
  %.pre = load i32* @nrgb, align 4, !dbg !455, !tbaa !387
  br label %33, !dbg !456

; <label>:33                                      ; preds = %25, %28
  %34 = phi i32 [ %1, %25 ], [ %.pre, %28 ]
  %35 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), i32 0, i64 12, i8* getelementptr inbounds ([4 x i8]* @.str61, i64 0, i64 0), i32 %34) #6, !dbg !457
  tail call void @llvm.dbg.value(metadata !351, i64 0, metadata !331, metadata !356) #5, !dbg !459
  %36 = fpext float %r to double, !dbg !461
  %37 = fpext float %g to double, !dbg !462
  %38 = fpext float %b to double, !dbg !463
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([37 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), double %36, double %37, double %38) #6, !dbg !464
  %40 = load i32* @nrgb, align 4, !dbg !465, !tbaa !387
  %41 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0), i32 0, i64 12, i8* getelementptr inbounds ([4 x i8]* @.str61, i64 0, i64 0), i32 %40) #6, !dbg !466
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str63, i64 0, i64 0), i32 %40, i8* getelementptr inbounds ([12 x i8]* @i2a.buf, i64 0, i64 0)) #6, !dbg !468
  %43 = load %struct.t_rgb** @rgb, align 8, !dbg !469, !tbaa !395
  %44 = getelementptr inbounds %struct.t_rgb* %43, i64 %i.0.lcssa, i32 0, !dbg !470
  store float %r, float* %44, align 4, !dbg !471, !tbaa !429
  %45 = getelementptr inbounds %struct.t_rgb* %43, i64 %i.0.lcssa, i32 1, !dbg !472
  store float %g, float* %45, align 4, !dbg !473, !tbaa !437
  %46 = getelementptr inbounds %struct.t_rgb* %43, i64 %i.0.lcssa, i32 2, !dbg !474
  store float %b, float* %46, align 4, !dbg !475, !tbaa !443
  %47 = load i32* @nrgb, align 4, !dbg !476, !tbaa !387
  %48 = add nsw i32 %47, 1, !dbg !476
  store i32 %48, i32* @nrgb, align 4, !dbg !476, !tbaa !387
  br label %50, !dbg !477

.loopexit:                                        ; preds = %17
  %49 = trunc i64 %indvars.iv to i32
  br label %50

; <label>:50                                      ; preds = %.loopexit, %33
  %.0 = phi i32 [ %47, %33 ], [ %49, %.loopexit ]
  ret i32 %.0, !dbg !478
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_rgb(%struct.__sFILE* nocapture %ps, %struct.t_rgb* nocapture readonly %rgb) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !135, metadata !356), !dbg !479
  tail call void @llvm.dbg.value(metadata %struct.t_rgb* %rgb, i64 0, metadata !136, metadata !356), !dbg !480
  %1 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0, !dbg !481
  %2 = load float* %1, align 4, !dbg !481, !tbaa !429
  %3 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1, !dbg !482
  %4 = load float* %3, align 4, !dbg !482, !tbaa !437
  %5 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2, !dbg !483
  %6 = load float* %5, align 4, !dbg !483, !tbaa !443
  tail call void @ps_color(%struct.__sFILE* %ps, float %2, float %4, float %6) #7, !dbg !484
  ret void, !dbg !485
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_init_rgb_nbox(%struct.__sFILE* nocapture %ps, float %xbox, float %ybox) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !141, metadata !356), !dbg !486
  tail call void @llvm.dbg.value(metadata float %xbox, i64 0, metadata !142, metadata !356), !dbg !487
  tail call void @llvm.dbg.value(metadata float %ybox, i64 0, metadata !143, metadata !356), !dbg !488
  store float %ybox, float* @gen_ybox, align 4, !dbg !489, !tbaa !490
  %1 = fpext float %xbox to double, !dbg !491
  %2 = fsub float -0.000000e+00, %xbox, !dbg !492
  %3 = fpext float %2 to double, !dbg !492
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([82 x i8]* @.str15, i64 0, i64 0), double 0.000000e+00, double %1, double 0.000000e+00, double 0.000000e+00, double %3, double 0.000000e+00) #6, !dbg !493
  ret void, !dbg !494
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_rgb_nbox(%struct.__sFILE* nocapture %ps, %struct.t_rgb* nocapture readonly %rgb, float %n) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !148, metadata !356), !dbg !495
  tail call void @llvm.dbg.value(metadata %struct.t_rgb* %rgb, i64 0, metadata !149, metadata !356), !dbg !496
  tail call void @llvm.dbg.value(metadata float %n, i64 0, metadata !150, metadata !356), !dbg !497
  %1 = fcmp ogt float %n, 2.000000e+00, !dbg !498
  br i1 %1, label %6, label %.preheader, !dbg !500

.preheader:                                       ; preds = %0
  %2 = fcmp ogt float %n, 0.000000e+00, !dbg !501
  br i1 %2, label %.lr.ph, label %.loopexit, !dbg !504

.lr.ph:                                           ; preds = %.preheader
  %3 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0, !dbg !505
  %4 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1, !dbg !507
  %5 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2, !dbg !508
  br label %17, !dbg !504

; <label>:6                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !135, metadata !356) #5, !dbg !509
  tail call void @llvm.dbg.value(metadata %struct.t_rgb* %rgb, i64 0, metadata !136, metadata !356) #5, !dbg !512
  %7 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0, !dbg !513
  %8 = load float* %7, align 4, !dbg !513, !tbaa !429
  %9 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1, !dbg !514
  %10 = load float* %9, align 4, !dbg !514, !tbaa !437
  %11 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2, !dbg !515
  %12 = load float* %11, align 4, !dbg !515, !tbaa !443
  tail call void @ps_color(%struct.__sFILE* %ps, float %8, float %10, float %12) #6, !dbg !516
  %13 = load float* @gen_ybox, align 4, !dbg !517, !tbaa !490
  %14 = fmul float %13, %n, !dbg !518
  %15 = fpext float %14 to double, !dbg !519
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), double %15) #6, !dbg !520
  br label %.loopexit, !dbg !521

; <label>:17                                      ; preds = %.lr.ph, %17
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %23, %17 ]
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !159, metadata !356) #5, !dbg !522
  tail call void @llvm.dbg.value(metadata %struct.t_rgb* %rgb, i64 0, metadata !160, metadata !356) #5, !dbg !523
  %18 = load float* %3, align 4, !dbg !505, !tbaa !429
  %19 = load float* %4, align 4, !dbg !507, !tbaa !437
  %20 = load float* %5, align 4, !dbg !508, !tbaa !443
  %21 = tail call fastcc i32 @search_col(%struct.__sFILE* %ps, float %18, float %19, float %20) #6, !dbg !524
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i32 %21) #6, !dbg !525
  %23 = add nuw nsw i32 %i.01, 1, !dbg !526
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !151, metadata !356), !dbg !527
  %24 = sitofp i32 %23 to float, !dbg !528
  %25 = fcmp olt float %24, %n, !dbg !501
  br i1 %25, label %17, label %.loopexit, !dbg !504

.loopexit:                                        ; preds = %17, %.preheader, %6
  ret void, !dbg !529
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_rgb_box(%struct.__sFILE* nocapture %ps, %struct.t_rgb* nocapture readonly %rgb) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !159, metadata !356), !dbg !530
  tail call void @llvm.dbg.value(metadata %struct.t_rgb* %rgb, i64 0, metadata !160, metadata !356), !dbg !531
  %1 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 0, !dbg !532
  %2 = load float* %1, align 4, !dbg !532, !tbaa !429
  %3 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 1, !dbg !533
  %4 = load float* %3, align 4, !dbg !533, !tbaa !437
  %5 = getelementptr inbounds %struct.t_rgb* %rgb, i64 0, i32 2, !dbg !534
  %6 = load float* %5, align 4, !dbg !534, !tbaa !443
  %7 = tail call fastcc i32 @search_col(%struct.__sFILE* %ps, float %2, float %4, float %6) #7, !dbg !535
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i32 %7) #6, !dbg !536
  ret void, !dbg !537
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_init_rgb_box(%struct.__sFILE* nocapture %ps, float %xbox, float %ybox) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !154, metadata !356), !dbg !538
  tail call void @llvm.dbg.value(metadata float %xbox, i64 0, metadata !155, metadata !356), !dbg !539
  tail call void @llvm.dbg.value(metadata float %ybox, i64 0, metadata !156, metadata !356), !dbg !540
  %1 = fpext float %ybox to double, !dbg !541
  %2 = fpext float %xbox to double, !dbg !542
  %3 = fsub float -0.000000e+00, %ybox, !dbg !543
  %4 = fpext float %3 to double, !dbg !543
  %5 = fsub float -0.000000e+00, %xbox, !dbg !544
  %6 = fpext float %5 to double, !dbg !544
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([76 x i8]* @.str17, i64 0, i64 0), double 0.000000e+00, double %1, double %2, double 0.000000e+00, double 0.000000e+00, double %4, double %6, double 0.000000e+00, double %1) #6, !dbg !545
  ret void, !dbg !546
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_lineto(%struct.__sFILE* nocapture %ps, float %x, float %y) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !163, metadata !356), !dbg !547
  tail call void @llvm.dbg.value(metadata float %x, i64 0, metadata !164, metadata !356), !dbg !548
  tail call void @llvm.dbg.value(metadata float %y, i64 0, metadata !165, metadata !356), !dbg !549
  %1 = fpext float %x to double, !dbg !550
  %2 = fpext float %y to double, !dbg !551
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), double %1, double %2) #6, !dbg !552
  ret void, !dbg !553
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_linerel(%struct.__sFILE* nocapture %ps, float %dx, float %dy) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !168, metadata !356), !dbg !554
  tail call void @llvm.dbg.value(metadata float %dx, i64 0, metadata !169, metadata !356), !dbg !555
  tail call void @llvm.dbg.value(metadata float %dy, i64 0, metadata !170, metadata !356), !dbg !556
  %1 = fpext float %dx to double, !dbg !557
  %2 = fpext float %dy to double, !dbg !558
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %1, double %2) #6, !dbg !559
  ret void, !dbg !560
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_moveto(%struct.__sFILE* nocapture %ps, float %x, float %y) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !173, metadata !356), !dbg !561
  tail call void @llvm.dbg.value(metadata float %x, i64 0, metadata !174, metadata !356), !dbg !562
  tail call void @llvm.dbg.value(metadata float %y, i64 0, metadata !175, metadata !356), !dbg !563
  %1 = fpext float %x to double, !dbg !564
  %2 = fpext float %y to double, !dbg !565
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %1, double %2) #6, !dbg !566
  ret void, !dbg !567
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_moverel(%struct.__sFILE* nocapture %ps, float %dx, float %dy) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !178, metadata !356), !dbg !568
  tail call void @llvm.dbg.value(metadata float %dx, i64 0, metadata !179, metadata !356), !dbg !569
  tail call void @llvm.dbg.value(metadata float %dy, i64 0, metadata !180, metadata !356), !dbg !570
  %1 = fpext float %dx to double, !dbg !571
  %2 = fpext float %dy to double, !dbg !572
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0), double %1, double %2) #6, !dbg !573
  ret void, !dbg !574
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_line(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !185, metadata !356), !dbg !575
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !186, metadata !356), !dbg !576
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !187, metadata !356), !dbg !577
  tail call void @llvm.dbg.value(metadata float %x2, i64 0, metadata !188, metadata !356), !dbg !578
  tail call void @llvm.dbg.value(metadata float %y2, i64 0, metadata !189, metadata !356), !dbg !579
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !173, metadata !356) #5, !dbg !580
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !174, metadata !356) #5, !dbg !582
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !175, metadata !356) #5, !dbg !583
  %1 = fpext float %x1 to double, !dbg !584
  %2 = fpext float %y1 to double, !dbg !585
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %1, double %2) #6, !dbg !586
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !163, metadata !356) #5, !dbg !587
  tail call void @llvm.dbg.value(metadata float %x2, i64 0, metadata !164, metadata !356) #5, !dbg !589
  tail call void @llvm.dbg.value(metadata float %y2, i64 0, metadata !165, metadata !356) #5, !dbg !590
  %4 = fpext float %x2 to double, !dbg !591
  %5 = fpext float %y2 to double, !dbg !592
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), double %4, double %5) #6, !dbg !593
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %ps), !dbg !594
  ret void, !dbg !595
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_box(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !192, metadata !356), !dbg !596
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !193, metadata !356), !dbg !597
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !194, metadata !356), !dbg !598
  tail call void @llvm.dbg.value(metadata float %x2, i64 0, metadata !195, metadata !356), !dbg !599
  tail call void @llvm.dbg.value(metadata float %y2, i64 0, metadata !196, metadata !356), !dbg !600
  tail call fastcc void @do_box(%struct.__sFILE* %ps, float %x1, float %y1, float %x2, float %y2) #7, !dbg !601
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %ps), !dbg !602
  ret void, !dbg !603
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_box(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !334, metadata !356), !dbg !604
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !335, metadata !356), !dbg !605
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !336, metadata !356), !dbg !606
  tail call void @llvm.dbg.value(metadata float %x2, i64 0, metadata !337, metadata !356), !dbg !607
  tail call void @llvm.dbg.value(metadata float %y2, i64 0, metadata !338, metadata !356), !dbg !608
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !173, metadata !356) #5, !dbg !609
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !174, metadata !356) #5, !dbg !611
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !175, metadata !356) #5, !dbg !612
  %1 = fpext float %x1 to double, !dbg !613
  %2 = fpext float %y1 to double, !dbg !614
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %1, double %2) #6, !dbg !615
  %4 = fsub float %y2, %y1, !dbg !616
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !168, metadata !356) #5, !dbg !617
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !169, metadata !356) #5, !dbg !619
  tail call void @llvm.dbg.value(metadata float %4, i64 0, metadata !170, metadata !356) #5, !dbg !620
  %5 = fpext float %4 to double, !dbg !621
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double 0.000000e+00, double %5) #6, !dbg !622
  %7 = fsub float %x2, %x1, !dbg !623
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !168, metadata !356) #5, !dbg !624
  tail call void @llvm.dbg.value(metadata float %7, i64 0, metadata !169, metadata !356) #5, !dbg !626
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !170, metadata !356) #5, !dbg !627
  %8 = fpext float %7 to double, !dbg !628
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %8, double 0.000000e+00) #6, !dbg !629
  %10 = fsub float %y1, %y2, !dbg !630
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !168, metadata !356) #5, !dbg !631
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !169, metadata !356) #5, !dbg !633
  tail call void @llvm.dbg.value(metadata float %10, i64 0, metadata !170, metadata !356) #5, !dbg !634
  %11 = fpext float %10 to double, !dbg !635
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double 0.000000e+00, double %11) #6, !dbg !636
  %13 = fsub float %x1, %x2, !dbg !637
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !168, metadata !356) #5, !dbg !638
  tail call void @llvm.dbg.value(metadata float %13, i64 0, metadata !169, metadata !356) #5, !dbg !640
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !170, metadata !356) #5, !dbg !641
  %14 = fpext float %13 to double, !dbg !642
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %14, double 0.000000e+00) #6, !dbg !643
  ret void, !dbg !644
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_fillbox(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %x2, float %y2) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !199, metadata !356), !dbg !645
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !200, metadata !356), !dbg !646
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !201, metadata !356), !dbg !647
  tail call void @llvm.dbg.value(metadata float %x2, i64 0, metadata !202, metadata !356), !dbg !648
  tail call void @llvm.dbg.value(metadata float %y2, i64 0, metadata !203, metadata !356), !dbg !649
  tail call fastcc void @do_box(%struct.__sFILE* %ps, float %x1, float %y1, float %x2, float %y2) #7, !dbg !650
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str24, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %ps), !dbg !651
  ret void, !dbg !652
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_arc(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %rad, float %a0, float %a1) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !208, metadata !356), !dbg !653
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !209, metadata !356), !dbg !654
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !210, metadata !356), !dbg !655
  tail call void @llvm.dbg.value(metadata float %rad, i64 0, metadata !211, metadata !356), !dbg !656
  tail call void @llvm.dbg.value(metadata float %a0, i64 0, metadata !212, metadata !356), !dbg !657
  tail call void @llvm.dbg.value(metadata float %a1, i64 0, metadata !213, metadata !356), !dbg !658
  %1 = fpext float %x1 to double, !dbg !659
  %2 = fpext float %y1 to double, !dbg !660
  %3 = fpext float %rad to double, !dbg !661
  %4 = fpext float %a0 to double, !dbg !662
  %5 = fpext float %a1 to double, !dbg !663
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str25, i64 0, i64 0), double %1, double %2, double %3, double %4, double %5) #6, !dbg !664
  ret void, !dbg !665
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_fillarc(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %rad, float %a0, float %a1) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !216, metadata !356), !dbg !666
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !217, metadata !356), !dbg !667
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !218, metadata !356), !dbg !668
  tail call void @llvm.dbg.value(metadata float %rad, i64 0, metadata !219, metadata !356), !dbg !669
  tail call void @llvm.dbg.value(metadata float %a0, i64 0, metadata !220, metadata !356), !dbg !670
  tail call void @llvm.dbg.value(metadata float %a1, i64 0, metadata !221, metadata !356), !dbg !671
  %1 = fpext float %x1 to double, !dbg !672
  %2 = fpext float %y1 to double, !dbg !673
  %3 = fpext float %rad to double, !dbg !674
  %4 = fpext float %a0 to double, !dbg !675
  %5 = fpext float %a1 to double, !dbg !676
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0), double %1, double %2, double %3, double %4, double %5) #6, !dbg !677
  ret void, !dbg !678
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_arcslice(%struct.__sFILE* nocapture %ps, float %xc, float %yc, float %rad1, float %rad2, float %a0, float %a1) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !226, metadata !356), !dbg !679
  tail call void @llvm.dbg.value(metadata float %xc, i64 0, metadata !227, metadata !356), !dbg !680
  tail call void @llvm.dbg.value(metadata float %yc, i64 0, metadata !228, metadata !356), !dbg !681
  tail call void @llvm.dbg.value(metadata float %rad1, i64 0, metadata !229, metadata !356), !dbg !682
  tail call void @llvm.dbg.value(metadata float %rad2, i64 0, metadata !230, metadata !356), !dbg !683
  tail call void @llvm.dbg.value(metadata float %a0, i64 0, metadata !231, metadata !356), !dbg !684
  tail call void @llvm.dbg.value(metadata float %a1, i64 0, metadata !232, metadata !356), !dbg !685
  %1 = fpext float %xc to double, !dbg !686
  %2 = fpext float %yc to double, !dbg !687
  %3 = fpext float %rad1 to double, !dbg !688
  %4 = fpext float %a0 to double, !dbg !689
  %5 = fpext float %a1 to double, !dbg !690
  %6 = fpext float %rad2 to double, !dbg !691
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([60 x i8]* @.str27, i64 0, i64 0), double %1, double %2, double %3, double %4, double %5, double %1, double %2, double %6, double %5, double %4) #6, !dbg !692
  ret void, !dbg !693
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_fillarcslice(%struct.__sFILE* nocapture %ps, float %xc, float %yc, float %rad1, float %rad2, float %a0, float %a1) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !235, metadata !356), !dbg !694
  tail call void @llvm.dbg.value(metadata float %xc, i64 0, metadata !236, metadata !356), !dbg !695
  tail call void @llvm.dbg.value(metadata float %yc, i64 0, metadata !237, metadata !356), !dbg !696
  tail call void @llvm.dbg.value(metadata float %rad1, i64 0, metadata !238, metadata !356), !dbg !697
  tail call void @llvm.dbg.value(metadata float %rad2, i64 0, metadata !239, metadata !356), !dbg !698
  tail call void @llvm.dbg.value(metadata float %a0, i64 0, metadata !240, metadata !356), !dbg !699
  tail call void @llvm.dbg.value(metadata float %a1, i64 0, metadata !241, metadata !356), !dbg !700
  %1 = fpext float %xc to double, !dbg !701
  %2 = fpext float %yc to double, !dbg !702
  %3 = fpext float %rad1 to double, !dbg !703
  %4 = fpext float %a0 to double, !dbg !704
  %5 = fpext float %a1 to double, !dbg !705
  %6 = fpext float %rad2 to double, !dbg !706
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([60 x i8]* @.str28, i64 0, i64 0), double %1, double %2, double %3, double %4, double %5, double %1, double %2, double %6, double %5, double %4) #6, !dbg !707
  ret void, !dbg !708
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_circle(%struct.__sFILE* nocapture %ps, float %x1, float %y1, float %rad) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !244, metadata !356), !dbg !709
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !245, metadata !356), !dbg !710
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !246, metadata !356), !dbg !711
  tail call void @llvm.dbg.value(metadata float %rad, i64 0, metadata !247, metadata !356), !dbg !712
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !208, metadata !356) #5, !dbg !713
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !209, metadata !356) #5, !dbg !715
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !210, metadata !356) #5, !dbg !716
  tail call void @llvm.dbg.value(metadata float %rad, i64 0, metadata !211, metadata !356) #5, !dbg !717
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !212, metadata !356) #5, !dbg !718
  tail call void @llvm.dbg.value(metadata float 3.600000e+02, i64 0, metadata !213, metadata !356) #5, !dbg !719
  %1 = fpext float %x1 to double, !dbg !720
  %2 = fpext float %y1 to double, !dbg !721
  %3 = fpext float %rad to double, !dbg !722
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str25, i64 0, i64 0), double %1, double %2, double %3, double 0.000000e+00, double 3.600000e+02) #6, !dbg !723
  ret void, !dbg !724
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_font(%struct.__sFILE* nocapture %ps, i32 %font, float %size) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !252, metadata !356), !dbg !725
  tail call void @llvm.dbg.value(metadata i32 %font, i64 0, metadata !253, metadata !356), !dbg !726
  tail call void @llvm.dbg.value(metadata float %size, i64 0, metadata !254, metadata !356), !dbg !727
  %1 = icmp ugt i32 %font, 12, !dbg !728
  br i1 %1, label %2, label %6, !dbg !728

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !730, !tbaa !395
  %4 = load i8** getelementptr inbounds ([12 x i8*]* @fontnm, i64 0, i64 0), align 16, !dbg !732, !tbaa !395
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([28 x i8]* @.str41, i64 0, i64 0), i32 %font, i8* %4) #6, !dbg !733
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !253, metadata !356), !dbg !726
  br label %6, !dbg !734

; <label>:6                                       ; preds = %0, %2
  %.0 = phi i32 [ 0, %2 ], [ %font, %0 ]
  %7 = sext i32 %.0 to i64, !dbg !735
  %8 = getelementptr inbounds [12 x i8*]* @fontnm, i64 0, i64 %7, !dbg !735
  %9 = load i8** %8, align 8, !dbg !735, !tbaa !395
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([14 x i8]* @.str42, i64 0, i64 0), i8* %9) #6, !dbg !736
  %11 = fpext float %size to double, !dbg !737
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str43, i64 0, i64 0), double %11) #6, !dbg !738
  ret void, !dbg !739
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_strfont(%struct.__sFILE* nocapture %ps, i8* %font, float %size) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !259, metadata !356), !dbg !740
  tail call void @llvm.dbg.value(metadata i8* %font, i64 0, metadata !260, metadata !356), !dbg !741
  tail call void @llvm.dbg.value(metadata float %size, i64 0, metadata !261, metadata !356), !dbg !742
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([14 x i8]* @.str42, i64 0, i64 0), i8* %font) #6, !dbg !743
  %2 = fpext float %size to double, !dbg !744
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([22 x i8]* @.str43, i64 0, i64 0), double %2) #6, !dbg !745
  ret void, !dbg !746
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_text(%struct.__sFILE* nocapture %ps, float %x1, float %y1, i8* %str) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !266, metadata !356), !dbg !747
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !267, metadata !356), !dbg !748
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !268, metadata !356), !dbg !749
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !269, metadata !356), !dbg !750
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !173, metadata !356) #5, !dbg !751
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !174, metadata !356) #5, !dbg !753
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !175, metadata !356) #5, !dbg !754
  %1 = fpext float %x1 to double, !dbg !755
  %2 = fpext float %y1 to double, !dbg !756
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %1, double %2) #6, !dbg !757
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0), i8* %str) #6, !dbg !758
  ret void, !dbg !759
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_rotate(%struct.__sFILE* nocapture %ps, i32 %bPlus) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !272, metadata !356), !dbg !760
  tail call void @llvm.dbg.value(metadata i32 %bPlus, i64 0, metadata !273, metadata !356), !dbg !761
  %1 = icmp eq i32 %bPlus, 0, !dbg !762
  br i1 %1, label %4, label %2, !dbg !764

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str45, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %ps), !dbg !765
  br label %6, !dbg !765

; <label>:4                                       ; preds = %0
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str46, i64 0, i64 0), i64 30, i64 1, %struct.__sFILE* %ps), !dbg !766
  br label %6

; <label>:6                                       ; preds = %4, %2
  ret void, !dbg !767
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_ctext(%struct.__sFILE* nocapture %ps, float %x1, float %y1, i8* %str, i32 %expos) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !278, metadata !356), !dbg !768
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !279, metadata !356), !dbg !769
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !280, metadata !356), !dbg !770
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !281, metadata !356), !dbg !771
  tail call void @llvm.dbg.value(metadata i32 %expos, i64 0, metadata !282, metadata !356), !dbg !772
  %1 = icmp eq i32 %expos, 1, !dbg !773
  %2 = fpext float %x1 to double, !dbg !775
  %3 = fpext float %y1 to double, !dbg !779
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), double %2, double %3) #6, !dbg !780
  br i1 %1, label %5, label %7, !dbg !781

; <label>:5                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !266, metadata !356) #5, !dbg !782
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !267, metadata !356) #5, !dbg !783
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !268, metadata !356) #5, !dbg !784
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !269, metadata !356) #5, !dbg !785
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !173, metadata !356) #5, !dbg !786
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !174, metadata !356) #5, !dbg !787
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !175, metadata !356) #5, !dbg !788
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0), i8* %str) #6, !dbg !789
  br label %16, !dbg !790

; <label>:7                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !173, metadata !356) #5, !dbg !791
  tail call void @llvm.dbg.value(metadata float %x1, i64 0, metadata !174, metadata !356) #5, !dbg !793
  tail call void @llvm.dbg.value(metadata float %y1, i64 0, metadata !175, metadata !356) #5, !dbg !794
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0), i8* %str) #6, !dbg !795
  switch i32 %expos, label %13 [
    i32 2, label %11
    i32 0, label %9
  ], !dbg !796

; <label>:9                                       ; preds = %7
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str49, i64 0, i64 0), i64 20, i64 1, %struct.__sFILE* %ps), !dbg !797
  br label %14, !dbg !799

; <label>:11                                      ; preds = %7
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str50, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %ps), !dbg !800
  br label %14, !dbg !801

; <label>:13                                      ; preds = %7
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str51, i64 0, i64 0), i32 %expos) #6, !dbg !802
  br label %14, !dbg !803

; <label>:14                                      ; preds = %13, %11, %9
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([19 x i8]* @.str52, i64 0, i64 0), i8* %str) #6, !dbg !804
  br label %16, !dbg !805

; <label>:16                                      ; preds = %14, %5
  ret void, !dbg !805
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_translate(%struct.__sFILE* nocapture %ps, float %x, float %y) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !285, metadata !356), !dbg !806
  tail call void @llvm.dbg.value(metadata float %x, i64 0, metadata !286, metadata !356), !dbg !807
  tail call void @llvm.dbg.value(metadata float %y, i64 0, metadata !287, metadata !356), !dbg !808
  %1 = fpext float %x to double, !dbg !809
  %2 = fpext float %y to double, !dbg !810
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), double %1, double %2) #6, !dbg !811
  ret void, !dbg !812
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_setorigin(%struct.__sFILE* nocapture %ps) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !292, metadata !356), !dbg !813
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str54, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %ps), !dbg !814
  %2 = load i32* @ostack, align 4, !dbg !815, !tbaa !387
  %3 = add nsw i32 %2, 1, !dbg !815
  store i32 %3, i32* @ostack, align 4, !dbg !815, !tbaa !387
  ret void, !dbg !816
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_unsetorigin(%struct.__sFILE* nocapture %ps) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !295, metadata !356), !dbg !817
  %1 = load i32* @ostack, align 4, !dbg !818, !tbaa !387
  %2 = icmp slt i32 %1, 1, !dbg !820
  br i1 %2, label %3, label %4, !dbg !821

; <label>:3                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str55, i64 0, i64 0)) #6, !dbg !822
  br label %4, !dbg !822

; <label>:4                                       ; preds = %3, %0
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str56, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %ps), !dbg !823
  %6 = load i32* @ostack, align 4, !dbg !824, !tbaa !387
  %7 = add nsw i32 %6, -1, !dbg !824
  store i32 %7, i32* @ostack, align 4, !dbg !824, !tbaa !387
  ret void, !dbg !825
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_close(%struct.__sFILE* %ps) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !298, metadata !356), !dbg !826
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([12 x i8]* @.str57, i64 0, i64 0)) #6, !dbg !827
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str58, i64 0, i64 0)) #6, !dbg !828
  tail call void @ffclose(%struct.__sFILE* %ps) #6, !dbg !829
  ret void, !dbg !830
}

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @ps_comment(%struct.__sFILE* nocapture %ps, i8* %s) #1 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ps, i64 0, metadata !303, metadata !356), !dbg !831
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !304, metadata !356), !dbg !832
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ps, i8* getelementptr inbounds ([9 x i8]* @.str59, i64 0, i64 0), i8* %s) #6, !dbg !833
  ret void, !dbg !834
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!352, !353, !354}
!llvm.ident = !{!355}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !24, subprograms: !28, globals: !339, imports: !351)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/writeps.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !19}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 52, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/writeps.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !DIEnumerator(name: "efontTIMES", value: 0)
!7 = !DIEnumerator(name: "efontTIMESITALIC", value: 1)
!8 = !DIEnumerator(name: "efontTIMESBOLD", value: 2)
!9 = !DIEnumerator(name: "efontTIMESBOLDITALIC", value: 3)
!10 = !DIEnumerator(name: "efontHELV", value: 4)
!11 = !DIEnumerator(name: "efontHELVITALIC", value: 5)
!12 = !DIEnumerator(name: "efontHELVBOLD", value: 6)
!13 = !DIEnumerator(name: "efontHELVBOLDITALIC", value: 7)
!14 = !DIEnumerator(name: "efontCOUR", value: 8)
!15 = !DIEnumerator(name: "efontCOURITALIC", value: 9)
!16 = !DIEnumerator(name: "efontCOURBOLD", value: 10)
!17 = !DIEnumerator(name: "efontCOURBOLDITALIC", value: 11)
!18 = !DIEnumerator(name: "efontNR", value: 12)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, size: 32, align: 32, elements: !20)
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "eXCenter", value: 0)
!22 = !DIEnumerator(name: "eXLeft", value: 1)
!23 = !DIEnumerator(name: "eXRight", value: 2)
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !26, line: 87, baseType: !27)
!26 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!27 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!28 = !{!29, !36, !109, !115, !123, !137, !144, !152, !157, !161, !166, !171, !176, !181, !190, !197, !204, !214, !222, !233, !242, !248, !255, !262, !270, !274, !283, !288, !293, !296, !299, !305, !309, !314, !323, !332}
!29 = !DISubprogram(name: "__sigbits", scope: !30, file: !30, line: 114, type: !31, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !34)
!30 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !33}
!33 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!34 = !{!35}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !29, file: !30, line: 114, type: !33)
!36 = !DISubprogram(name: "ps_open", scope: !1, file: !1, line: 46, type: !37, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: %struct.__sFILE* (i8*, float, float, float, float)* @ps_open, variables: !102)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !68, !25, !25, !25, !25}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !41, line: 153, baseType: !42)
!41 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !41, line: 122, size: 1216, align: 64, elements: !43)
!43 = !{!44, !47, !48, !49, !51, !52, !57, !58, !60, !64, !70, !80, !86, !87, !90, !91, !95, !99, !100, !101}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !42, file: !41, line: 123, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !42, file: !41, line: 124, baseType: !33, size: 32, align: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !42, file: !41, line: 125, baseType: !33, size: 32, align: 32, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !42, file: !41, line: 126, baseType: !50, size: 16, align: 16, offset: 128)
!50 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !42, file: !41, line: 127, baseType: !50, size: 16, align: 16, offset: 144)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !42, file: !41, line: 128, baseType: !53, size: 128, align: 64, offset: 192)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !41, line: 88, size: 128, align: 64, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !53, file: !41, line: 89, baseType: !45, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !53, file: !41, line: 90, baseType: !33, size: 32, align: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !42, file: !41, line: 129, baseType: !33, size: 32, align: 32, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !42, file: !41, line: 132, baseType: !59, size: 64, align: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !42, file: !41, line: 133, baseType: !61, size: 64, align: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!33, !59}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !42, file: !41, line: 134, baseType: !65, size: 64, align: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!33, !59, !68, !33}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !42, file: !41, line: 135, baseType: !71, size: 64, align: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !59, !74, !33}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !41, line: 77, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !76, line: 71, baseType: !77)
!76 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!79 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !42, file: !41, line: 136, baseType: !81, size: 64, align: 64, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!33, !59, !84, !33}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !42, file: !41, line: 139, baseType: !53, size: 128, align: 64, offset: 704)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !42, file: !41, line: 140, baseType: !88, size: 64, align: 64, offset: 832)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !41, line: 94, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !42, file: !41, line: 141, baseType: !33, size: 32, align: 32, offset: 896)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !42, file: !41, line: 144, baseType: !92, size: 24, align: 8, offset: 928)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 24, align: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 3)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !42, file: !41, line: 145, baseType: !96, size: 8, align: 8, offset: 952)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, align: 8, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 1)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !42, file: !41, line: 148, baseType: !53, size: 128, align: 64, offset: 960)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !42, file: !41, line: 151, baseType: !33, size: 32, align: 32, offset: 1088)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !42, file: !41, line: 152, baseType: !74, size: 64, align: 64, offset: 1152)
!102 = !{!103, !104, !105, !106, !107, !108}
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !36, file: !1, line: 46, type: !68)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x1", arg: 2, scope: !36, file: !1, line: 46, type: !25)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y1", arg: 3, scope: !36, file: !1, line: 46, type: !25)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x2", arg: 4, scope: !36, file: !1, line: 46, type: !25)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y2", arg: 5, scope: !36, file: !1, line: 46, type: !25)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ps", scope: !36, file: !1, line: 48, type: !39)
!109 = !DISubprogram(name: "ps_linewidth", scope: !1, file: !1, line: 72, type: !110, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32)* @ps_linewidth, variables: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !39, !33}
!112 = !{!113, !114}
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !109, file: !1, line: 72, type: !39)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lw", arg: 2, scope: !109, file: !1, line: 72, type: !33)
!115 = !DISubprogram(name: "ps_color", scope: !1, file: !1, line: 122, type: !116, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, float)* @ps_color, variables: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !39, !25, !25, !25}
!118 = !{!119, !120, !121, !122}
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !115, file: !1, line: 122, type: !39)
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 2, scope: !115, file: !1, line: 122, type: !25)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 3, scope: !115, file: !1, line: 122, type: !25)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 4, scope: !115, file: !1, line: 122, type: !25)
!123 = !DISubprogram(name: "ps_rgb", scope: !1, file: !1, line: 127, type: !124, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_rgb*)* @ps_rgb, variables: !134)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !39, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_rgb", file: !128, line: 38, baseType: !129)
!128 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/matrix.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!129 = !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 36, size: 96, align: 32, elements: !130)
!130 = !{!131, !132, !133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !129, file: !128, line: 37, baseType: !25, size: 32, align: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !129, file: !128, line: 37, baseType: !25, size: 32, align: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !129, file: !128, line: 37, baseType: !25, size: 32, align: 32, offset: 64)
!134 = !{!135, !136}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !123, file: !1, line: 127, type: !39)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rgb", arg: 2, scope: !123, file: !1, line: 127, type: !126)
!137 = !DISubprogram(name: "ps_init_rgb_nbox", scope: !1, file: !1, line: 134, type: !138, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float)* @ps_init_rgb_nbox, variables: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !39, !25, !25}
!140 = !{!141, !142, !143}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !137, file: !1, line: 134, type: !39)
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xbox", arg: 2, scope: !137, file: !1, line: 134, type: !25)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ybox", arg: 3, scope: !137, file: !1, line: 134, type: !25)
!144 = !DISubprogram(name: "ps_rgb_nbox", scope: !1, file: !1, line: 143, type: !145, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_rgb*, float)* @ps_rgb_nbox, variables: !147)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !39, !126, !25}
!147 = !{!148, !149, !150, !151}
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !144, file: !1, line: 143, type: !39)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rgb", arg: 2, scope: !144, file: !1, line: 143, type: !126)
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !144, file: !1, line: 143, type: !25)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !144, file: !1, line: 145, type: !33)
!152 = !DISubprogram(name: "ps_init_rgb_box", scope: !1, file: !1, line: 157, type: !138, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float)* @ps_init_rgb_box, variables: !153)
!153 = !{!154, !155, !156}
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !152, file: !1, line: 157, type: !39)
!155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xbox", arg: 2, scope: !152, file: !1, line: 157, type: !25)
!156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ybox", arg: 3, scope: !152, file: !1, line: 157, type: !25)
!157 = !DISubprogram(name: "ps_rgb_box", scope: !1, file: !1, line: 165, type: !124, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_rgb*)* @ps_rgb_box, variables: !158)
!158 = !{!159, !160}
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !157, file: !1, line: 165, type: !39)
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rgb", arg: 2, scope: !157, file: !1, line: 165, type: !126)
!161 = !DISubprogram(name: "ps_lineto", scope: !1, file: !1, line: 171, type: !138, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float)* @ps_lineto, variables: !162)
!162 = !{!163, !164, !165}
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !161, file: !1, line: 171, type: !39)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 2, scope: !161, file: !1, line: 171, type: !25)
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 3, scope: !161, file: !1, line: 171, type: !25)
!166 = !DISubprogram(name: "ps_linerel", scope: !1, file: !1, line: 176, type: !138, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float)* @ps_linerel, variables: !167)
!167 = !{!168, !169, !170}
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !166, file: !1, line: 176, type: !39)
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dx", arg: 2, scope: !166, file: !1, line: 176, type: !25)
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dy", arg: 3, scope: !166, file: !1, line: 176, type: !25)
!171 = !DISubprogram(name: "ps_moveto", scope: !1, file: !1, line: 181, type: !138, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float)* @ps_moveto, variables: !172)
!172 = !{!173, !174, !175}
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !171, file: !1, line: 181, type: !39)
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 2, scope: !171, file: !1, line: 181, type: !25)
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 3, scope: !171, file: !1, line: 181, type: !25)
!176 = !DISubprogram(name: "ps_moverel", scope: !1, file: !1, line: 186, type: !138, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float)* @ps_moverel, variables: !177)
!177 = !{!178, !179, !180}
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !176, file: !1, line: 186, type: !39)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dx", arg: 2, scope: !176, file: !1, line: 186, type: !25)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dy", arg: 3, scope: !176, file: !1, line: 186, type: !25)
!181 = !DISubprogram(name: "ps_line", scope: !1, file: !1, line: 191, type: !182, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, float, float)* @ps_line, variables: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !39, !25, !25, !25, !25}
!184 = !{!185, !186, !187, !188, !189}
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !181, file: !1, line: 191, type: !39)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x1", arg: 2, scope: !181, file: !1, line: 191, type: !25)
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y1", arg: 3, scope: !181, file: !1, line: 191, type: !25)
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x2", arg: 4, scope: !181, file: !1, line: 191, type: !25)
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y2", arg: 5, scope: !181, file: !1, line: 191, type: !25)
!190 = !DISubprogram(name: "ps_box", scope: !1, file: !1, line: 207, type: !182, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, float, float)* @ps_box, variables: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !190, file: !1, line: 207, type: !39)
!193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x1", arg: 2, scope: !190, file: !1, line: 207, type: !25)
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y1", arg: 3, scope: !190, file: !1, line: 207, type: !25)
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x2", arg: 4, scope: !190, file: !1, line: 207, type: !25)
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y2", arg: 5, scope: !190, file: !1, line: 207, type: !25)
!197 = !DISubprogram(name: "ps_fillbox", scope: !1, file: !1, line: 213, type: !182, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, float, float)* @ps_fillbox, variables: !198)
!198 = !{!199, !200, !201, !202, !203}
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !197, file: !1, line: 213, type: !39)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x1", arg: 2, scope: !197, file: !1, line: 213, type: !25)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y1", arg: 3, scope: !197, file: !1, line: 213, type: !25)
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x2", arg: 4, scope: !197, file: !1, line: 213, type: !25)
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y2", arg: 5, scope: !197, file: !1, line: 213, type: !25)
!204 = !DISubprogram(name: "ps_arc", scope: !1, file: !1, line: 219, type: !205, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, float, float, float)* @ps_arc, variables: !207)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !39, !25, !25, !25, !25, !25}
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !204, file: !1, line: 219, type: !39)
!209 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x1", arg: 2, scope: !204, file: !1, line: 219, type: !25)
!210 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y1", arg: 3, scope: !204, file: !1, line: 219, type: !25)
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rad", arg: 4, scope: !204, file: !1, line: 219, type: !25)
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a0", arg: 5, scope: !204, file: !1, line: 219, type: !25)
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 6, scope: !204, file: !1, line: 219, type: !25)
!214 = !DISubprogram(name: "ps_fillarc", scope: !1, file: !1, line: 224, type: !205, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, float, float, float)* @ps_fillarc, variables: !215)
!215 = !{!216, !217, !218, !219, !220, !221}
!216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !214, file: !1, line: 224, type: !39)
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x1", arg: 2, scope: !214, file: !1, line: 224, type: !25)
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y1", arg: 3, scope: !214, file: !1, line: 224, type: !25)
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rad", arg: 4, scope: !214, file: !1, line: 224, type: !25)
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a0", arg: 5, scope: !214, file: !1, line: 224, type: !25)
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 6, scope: !214, file: !1, line: 224, type: !25)
!222 = !DISubprogram(name: "ps_arcslice", scope: !1, file: !1, line: 229, type: !223, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, float, float, float, float)* @ps_arcslice, variables: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !39, !25, !25, !25, !25, !25, !25}
!225 = !{!226, !227, !228, !229, !230, !231, !232}
!226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !222, file: !1, line: 229, type: !39)
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xc", arg: 2, scope: !222, file: !1, line: 229, type: !25)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "yc", arg: 3, scope: !222, file: !1, line: 229, type: !25)
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rad1", arg: 4, scope: !222, file: !1, line: 230, type: !25)
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rad2", arg: 5, scope: !222, file: !1, line: 230, type: !25)
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a0", arg: 6, scope: !222, file: !1, line: 230, type: !25)
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 7, scope: !222, file: !1, line: 230, type: !25)
!233 = !DISubprogram(name: "ps_fillarcslice", scope: !1, file: !1, line: 236, type: !223, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, float, float, float, float)* @ps_fillarcslice, variables: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241}
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !233, file: !1, line: 236, type: !39)
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xc", arg: 2, scope: !233, file: !1, line: 236, type: !25)
!237 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "yc", arg: 3, scope: !233, file: !1, line: 236, type: !25)
!238 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rad1", arg: 4, scope: !233, file: !1, line: 237, type: !25)
!239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rad2", arg: 5, scope: !233, file: !1, line: 237, type: !25)
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a0", arg: 6, scope: !233, file: !1, line: 237, type: !25)
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 7, scope: !233, file: !1, line: 237, type: !25)
!242 = !DISubprogram(name: "ps_circle", scope: !1, file: !1, line: 243, type: !116, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, float)* @ps_circle, variables: !243)
!243 = !{!244, !245, !246, !247}
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !242, file: !1, line: 243, type: !39)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x1", arg: 2, scope: !242, file: !1, line: 243, type: !25)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y1", arg: 3, scope: !242, file: !1, line: 243, type: !25)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rad", arg: 4, scope: !242, file: !1, line: 243, type: !25)
!248 = !DISubprogram(name: "ps_font", scope: !1, file: !1, line: 254, type: !249, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, float)* @ps_font, variables: !251)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !39, !33, !25}
!251 = !{!252, !253, !254}
!252 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !248, file: !1, line: 254, type: !39)
!253 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "font", arg: 2, scope: !248, file: !1, line: 254, type: !33)
!254 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !248, file: !1, line: 254, type: !25)
!255 = !DISubprogram(name: "ps_strfont", scope: !1, file: !1, line: 265, type: !256, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*, float)* @ps_strfont, variables: !258)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !39, !68, !25}
!258 = !{!259, !260, !261}
!259 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !255, file: !1, line: 265, type: !39)
!260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "font", arg: 2, scope: !255, file: !1, line: 265, type: !68)
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !255, file: !1, line: 265, type: !25)
!262 = !DISubprogram(name: "ps_text", scope: !1, file: !1, line: 271, type: !263, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, i8*)* @ps_text, variables: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !39, !25, !25, !68}
!265 = !{!266, !267, !268, !269}
!266 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !262, file: !1, line: 271, type: !39)
!267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x1", arg: 2, scope: !262, file: !1, line: 271, type: !25)
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y1", arg: 3, scope: !262, file: !1, line: 271, type: !25)
!269 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 4, scope: !262, file: !1, line: 271, type: !68)
!270 = !DISubprogram(name: "ps_rotate", scope: !1, file: !1, line: 277, type: !110, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32)* @ps_rotate, variables: !271)
!271 = !{!272, !273}
!272 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !270, file: !1, line: 277, type: !39)
!273 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bPlus", arg: 2, scope: !270, file: !1, line: 277, type: !33)
!274 = !DISubprogram(name: "ps_ctext", scope: !1, file: !1, line: 285, type: !275, isLocal: false, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, i8*, i32)* @ps_ctext, variables: !277)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !39, !25, !25, !68, !33}
!277 = !{!278, !279, !280, !281, !282}
!278 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !274, file: !1, line: 285, type: !39)
!279 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x1", arg: 2, scope: !274, file: !1, line: 285, type: !25)
!280 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y1", arg: 3, scope: !274, file: !1, line: 285, type: !25)
!281 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 4, scope: !274, file: !1, line: 285, type: !68)
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "expos", arg: 5, scope: !274, file: !1, line: 285, type: !33)
!283 = !DISubprogram(name: "ps_translate", scope: !1, file: !1, line: 309, type: !138, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float)* @ps_translate, variables: !284)
!284 = !{!285, !286, !287}
!285 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !283, file: !1, line: 309, type: !39)
!286 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 2, scope: !283, file: !1, line: 309, type: !25)
!287 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 3, scope: !283, file: !1, line: 309, type: !25)
!288 = !DISubprogram(name: "ps_setorigin", scope: !1, file: !1, line: 316, type: !289, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*)* @ps_setorigin, variables: !291)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !39}
!291 = !{!292}
!292 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !288, file: !1, line: 316, type: !39)
!293 = !DISubprogram(name: "ps_unsetorigin", scope: !1, file: !1, line: 322, type: !289, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*)* @ps_unsetorigin, variables: !294)
!294 = !{!295}
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !293, file: !1, line: 322, type: !39)
!296 = !DISubprogram(name: "ps_close", scope: !1, file: !1, line: 330, type: !289, isLocal: false, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*)* @ps_close, variables: !297)
!297 = !{!298}
!298 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !296, file: !1, line: 330, type: !39)
!299 = !DISubprogram(name: "ps_comment", scope: !1, file: !1, line: 337, type: !300, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*)* @ps_comment, variables: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !39, !68}
!302 = !{!303, !304}
!303 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !299, file: !1, line: 337, type: !39)
!304 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !299, file: !1, line: 337, type: !68)
!305 = !DISubprogram(name: "ps_selcolor", scope: !1, file: !1, line: 82, type: !300, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, variables: !306)
!306 = !{!307, !308}
!307 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !305, file: !1, line: 82, type: !39)
!308 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cname", arg: 2, scope: !305, file: !1, line: 82, type: !68)
!309 = !DISubprogram(name: "i2a", scope: !1, file: !1, line: 87, type: !310, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, variables: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{!68, !33}
!312 = !{!313}
!313 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 1, scope: !309, file: !1, line: 87, type: !33)
!314 = !DISubprogram(name: "search_col", scope: !1, file: !1, line: 96, type: !315, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, float, float, float)* @search_col, variables: !317)
!315 = !DISubroutineType(types: !316)
!316 = !{!33, !39, !25, !25, !25}
!317 = !{!318, !319, !320, !321, !322}
!318 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !314, file: !1, line: 96, type: !39)
!319 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 2, scope: !314, file: !1, line: 96, type: !25)
!320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 3, scope: !314, file: !1, line: 96, type: !25)
!321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 4, scope: !314, file: !1, line: 96, type: !25)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !314, file: !1, line: 98, type: !33)
!323 = !DISubprogram(name: "ps_defcolor", scope: !1, file: !1, line: 77, type: !324, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, variables: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !39, !25, !25, !25, !68}
!326 = !{!327, !328, !329, !330, !331}
!327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !323, file: !1, line: 77, type: !39)
!328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 2, scope: !323, file: !1, line: 77, type: !25)
!329 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 3, scope: !323, file: !1, line: 77, type: !25)
!330 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 4, scope: !323, file: !1, line: 77, type: !25)
!331 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cname", arg: 5, scope: !323, file: !1, line: 77, type: !68)
!332 = !DISubprogram(name: "do_box", scope: !1, file: !1, line: 198, type: !182, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, float, float)* @do_box, variables: !333)
!333 = !{!334, !335, !336, !337, !338}
!334 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !332, file: !1, line: 198, type: !39)
!335 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x1", arg: 2, scope: !332, file: !1, line: 198, type: !25)
!336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y1", arg: 3, scope: !332, file: !1, line: 198, type: !25)
!337 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x2", arg: 4, scope: !332, file: !1, line: 198, type: !25)
!338 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y2", arg: 5, scope: !332, file: !1, line: 198, type: !25)
!339 = !{!340, !344, !345, !347, !348, !349, !350}
!340 = !DIGlobalVariable(name: "fontnm", scope: !0, file: !1, line: 248, type: !341, isLocal: false, isDefinition: true, variable: [12 x i8*]* @fontnm)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 768, align: 64, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 12)
!344 = !DIGlobalVariable(name: "nrgb", scope: !0, file: !1, line: 43, type: !33, isLocal: true, isDefinition: true, variable: i32* @nrgb)
!345 = !DIGlobalVariable(name: "buf", scope: !309, file: !1, line: 89, type: !346, isLocal: true, isDefinition: true, variable: [12 x i8]* @i2a.buf)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 96, align: 8, elements: !342)
!347 = !DIGlobalVariable(name: "rgb", scope: !0, file: !1, line: 44, type: !126, isLocal: true, isDefinition: true, variable: %struct.t_rgb** @rgb)
!348 = !DIGlobalVariable(name: "maxrgb", scope: !0, file: !1, line: 42, type: !33, isLocal: true, isDefinition: true, variable: i32* @maxrgb)
!349 = !DIGlobalVariable(name: "gen_ybox", scope: !0, file: !1, line: 132, type: !25, isLocal: true, isDefinition: true, variable: float* @gen_ybox)
!350 = !DIGlobalVariable(name: "ostack", scope: !0, file: !1, line: 314, type: !33, isLocal: true, isDefinition: true, variable: i32* @ostack)
!351 = !{}
!352 = !{i32 2, !"Dwarf Version", i32 2}
!353 = !{i32 2, !"Debug Info Version", i32 700000003}
!354 = !{i32 1, !"PIC Level", i32 2}
!355 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!356 = !DIExpression()
!357 = !DILocation(line: 114, column: 15, scope: !29)
!358 = !DILocation(line: 116, column: 20, scope: !29)
!359 = !DILocation(line: 116, column: 12, scope: !29)
!360 = !DILocation(line: 116, column: 57, scope: !29)
!361 = !DILocation(line: 116, column: 45, scope: !29)
!362 = !DILocation(line: 116, column: 5, scope: !29)
!363 = !DILocation(line: 46, column: 21, scope: !36)
!364 = !DILocation(line: 46, column: 29, scope: !36)
!365 = !DILocation(line: 46, column: 37, scope: !36)
!366 = !DILocation(line: 46, column: 45, scope: !36)
!367 = !DILocation(line: 46, column: 53, scope: !36)
!368 = !DILocation(line: 50, column: 6, scope: !36)
!369 = !DILocation(line: 48, column: 9, scope: !36)
!370 = !DILocation(line: 51, column: 3, scope: !36)
!371 = !DILocation(line: 52, column: 3, scope: !36)
!372 = !DILocation(line: 53, column: 3, scope: !36)
!373 = !DILocation(line: 54, column: 47, scope: !36)
!374 = !DILocation(line: 54, column: 50, scope: !36)
!375 = !DILocation(line: 54, column: 53, scope: !36)
!376 = !DILocation(line: 54, column: 56, scope: !36)
!377 = !DILocation(line: 54, column: 3, scope: !36)
!378 = !DILocation(line: 55, column: 3, scope: !36)
!379 = !DILocation(line: 56, column: 3, scope: !36)
!380 = !DILocation(line: 57, column: 3, scope: !36)
!381 = !DILocation(line: 58, column: 3, scope: !36)
!382 = !DILocation(line: 59, column: 3, scope: !36)
!383 = !DILocation(line: 60, column: 3, scope: !36)
!384 = !DILocation(line: 61, column: 3, scope: !36)
!385 = !DILocation(line: 63, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !36, file: !1, line: 63, column: 7)
!387 = !{!388, !388, i64 0}
!388 = !{!"int", !389, i64 0}
!389 = !{!"omnipotent char", !390, i64 0}
!390 = !{!"Simple C/C++ TBAA"}
!391 = !DILocation(line: 63, column: 12, scope: !386)
!392 = !DILocation(line: 63, column: 7, scope: !36)
!393 = !DILocation(line: 64, column: 13, scope: !394)
!394 = distinct !DILexicalBlock(scope: !386, file: !1, line: 63, column: 17)
!395 = !{!396, !396, i64 0}
!396 = !{!"any pointer", !389, i64 0}
!397 = !DILocation(line: 64, column: 5, scope: !394)
!398 = !DILocation(line: 66, column: 9, scope: !394)
!399 = !DILocation(line: 67, column: 3, scope: !394)
!400 = !DILocation(line: 69, column: 3, scope: !36)
!401 = !DILocation(line: 72, column: 25, scope: !109)
!402 = !DILocation(line: 72, column: 33, scope: !109)
!403 = !DILocation(line: 74, column: 3, scope: !109)
!404 = !DILocation(line: 75, column: 1, scope: !109)
!405 = !DILocation(line: 122, column: 21, scope: !115)
!406 = !DILocation(line: 122, column: 29, scope: !115)
!407 = !DILocation(line: 122, column: 36, scope: !115)
!408 = !DILocation(line: 122, column: 43, scope: !115)
!409 = !DILocation(line: 124, column: 22, scope: !115)
!410 = !DILocation(line: 91, column: 3, scope: !309, inlinedAt: !411)
!411 = distinct !DILocation(line: 124, column: 18, scope: !115)
!412 = !DILocation(line: 82, column: 40, scope: !305, inlinedAt: !413)
!413 = distinct !DILocation(line: 124, column: 3, scope: !115)
!414 = !DILocation(line: 84, column: 3, scope: !305, inlinedAt: !413)
!415 = !DILocation(line: 125, column: 1, scope: !115)
!416 = !DILocation(line: 96, column: 29, scope: !314)
!417 = !DILocation(line: 96, column: 37, scope: !314)
!418 = !DILocation(line: 96, column: 44, scope: !314)
!419 = !DILocation(line: 96, column: 51, scope: !314)
!420 = !DILocation(line: 98, column: 8, scope: !314)
!421 = !DILocation(line: 100, column: 15, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 100, column: 3)
!423 = distinct !DILexicalBlock(scope: !314, file: !1, line: 100, column: 3)
!424 = !DILocation(line: 100, column: 14, scope: !422)
!425 = !DILocation(line: 100, column: 3, scope: !423)
!426 = !DILocation(line: 101, column: 16, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !1, line: 101, column: 10)
!428 = !DILocation(line: 101, column: 23, scope: !427)
!429 = !{!430, !431, i64 0}
!430 = !{!"", !431, i64 0, !431, i64 4, !431, i64 8}
!431 = !{!"float", !389, i64 0}
!432 = !DILocation(line: 101, column: 24, scope: !427)
!433 = !DILocation(line: 101, column: 11, scope: !427)
!434 = !DILocation(line: 101, column: 28, scope: !427)
!435 = !DILocation(line: 101, column: 44, scope: !427)
!436 = !DILocation(line: 102, column: 16, scope: !427)
!437 = !{!430, !431, i64 4}
!438 = !DILocation(line: 102, column: 17, scope: !427)
!439 = !DILocation(line: 102, column: 4, scope: !427)
!440 = !DILocation(line: 102, column: 21, scope: !427)
!441 = !DILocation(line: 102, column: 37, scope: !427)
!442 = !DILocation(line: 103, column: 16, scope: !427)
!443 = !{!430, !431, i64 8}
!444 = !DILocation(line: 103, column: 17, scope: !427)
!445 = !DILocation(line: 103, column: 4, scope: !427)
!446 = !DILocation(line: 103, column: 21, scope: !427)
!447 = !DILocation(line: 101, column: 10, scope: !422)
!448 = !DILocation(line: 106, column: 15, scope: !449)
!449 = distinct !DILexicalBlock(scope: !314, file: !1, line: 106, column: 7)
!450 = !DILocation(line: 106, column: 12, scope: !449)
!451 = !DILocation(line: 106, column: 7, scope: !314)
!452 = !DILocation(line: 108, column: 13, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !1, line: 107, column: 5)
!454 = !DILocation(line: 109, column: 7, scope: !453)
!455 = !DILocation(line: 112, column: 28, scope: !314)
!456 = !DILocation(line: 110, column: 5, scope: !453)
!457 = !DILocation(line: 91, column: 3, scope: !309, inlinedAt: !458)
!458 = distinct !DILocation(line: 112, column: 24, scope: !314)
!459 = !DILocation(line: 77, column: 61, scope: !323, inlinedAt: !460)
!460 = distinct !DILocation(line: 112, column: 3, scope: !314)
!461 = !DILocation(line: 79, column: 60, scope: !323, inlinedAt: !460)
!462 = !DILocation(line: 79, column: 62, scope: !323, inlinedAt: !460)
!463 = !DILocation(line: 79, column: 64, scope: !323, inlinedAt: !460)
!464 = !DILocation(line: 79, column: 3, scope: !323, inlinedAt: !460)
!465 = !DILocation(line: 113, column: 39, scope: !314)
!466 = !DILocation(line: 91, column: 3, scope: !309, inlinedAt: !467)
!467 = distinct !DILocation(line: 113, column: 44, scope: !314)
!468 = !DILocation(line: 113, column: 3, scope: !314)
!469 = !DILocation(line: 114, column: 3, scope: !314)
!470 = !DILocation(line: 114, column: 10, scope: !314)
!471 = !DILocation(line: 114, column: 11, scope: !314)
!472 = !DILocation(line: 115, column: 10, scope: !314)
!473 = !DILocation(line: 115, column: 11, scope: !314)
!474 = !DILocation(line: 116, column: 10, scope: !314)
!475 = !DILocation(line: 116, column: 11, scope: !314)
!476 = !DILocation(line: 117, column: 7, scope: !314)
!477 = !DILocation(line: 119, column: 3, scope: !314)
!478 = !DILocation(line: 120, column: 1, scope: !314)
!479 = !DILocation(line: 127, column: 19, scope: !123)
!480 = !DILocation(line: 127, column: 29, scope: !123)
!481 = !DILocation(line: 129, column: 20, scope: !123)
!482 = !DILocation(line: 129, column: 27, scope: !123)
!483 = !DILocation(line: 129, column: 34, scope: !123)
!484 = !DILocation(line: 129, column: 3, scope: !123)
!485 = !DILocation(line: 130, column: 1, scope: !123)
!486 = !DILocation(line: 134, column: 29, scope: !137)
!487 = !DILocation(line: 134, column: 37, scope: !137)
!488 = !DILocation(line: 134, column: 48, scope: !137)
!489 = !DILocation(line: 136, column: 11, scope: !137)
!490 = !{!431, !431, i64 0}
!491 = !DILocation(line: 139, column: 8, scope: !137)
!492 = !DILocation(line: 139, column: 21, scope: !137)
!493 = !DILocation(line: 137, column: 3, scope: !137)
!494 = !DILocation(line: 141, column: 1, scope: !137)
!495 = !DILocation(line: 143, column: 24, scope: !144)
!496 = !DILocation(line: 143, column: 34, scope: !144)
!497 = !DILocation(line: 143, column: 43, scope: !144)
!498 = !DILocation(line: 147, column: 9, scope: !499)
!499 = distinct !DILexicalBlock(scope: !144, file: !1, line: 147, column: 8)
!500 = !DILocation(line: 147, column: 8, scope: !144)
!501 = !DILocation(line: 152, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !1, line: 152, column: 5)
!503 = distinct !DILexicalBlock(scope: !499, file: !1, line: 152, column: 5)
!504 = !DILocation(line: 152, column: 5, scope: !503)
!505 = !DILocation(line: 167, column: 41, scope: !157, inlinedAt: !506)
!506 = distinct !DILocation(line: 153, column: 7, scope: !502)
!507 = !DILocation(line: 167, column: 48, scope: !157, inlinedAt: !506)
!508 = !DILocation(line: 167, column: 55, scope: !157, inlinedAt: !506)
!509 = !DILocation(line: 127, column: 19, scope: !123, inlinedAt: !510)
!510 = distinct !DILocation(line: 148, column: 5, scope: !511)
!511 = distinct !DILexicalBlock(scope: !499, file: !1, line: 147, column: 14)
!512 = !DILocation(line: 127, column: 29, scope: !123, inlinedAt: !510)
!513 = !DILocation(line: 129, column: 20, scope: !123, inlinedAt: !510)
!514 = !DILocation(line: 129, column: 27, scope: !123, inlinedAt: !510)
!515 = !DILocation(line: 129, column: 34, scope: !123, inlinedAt: !510)
!516 = !DILocation(line: 129, column: 3, scope: !123, inlinedAt: !510)
!517 = !DILocation(line: 149, column: 31, scope: !511)
!518 = !DILocation(line: 149, column: 30, scope: !511)
!519 = !DILocation(line: 149, column: 29, scope: !511)
!520 = !DILocation(line: 149, column: 5, scope: !511)
!521 = !DILocation(line: 151, column: 3, scope: !511)
!522 = !DILocation(line: 165, column: 23, scope: !157, inlinedAt: !506)
!523 = !DILocation(line: 165, column: 33, scope: !157, inlinedAt: !506)
!524 = !DILocation(line: 167, column: 22, scope: !157, inlinedAt: !506)
!525 = !DILocation(line: 167, column: 3, scope: !157, inlinedAt: !506)
!526 = !DILocation(line: 152, column: 23, scope: !502)
!527 = !DILocation(line: 145, column: 7, scope: !144)
!528 = !DILocation(line: 152, column: 16, scope: !502)
!529 = !DILocation(line: 155, column: 1, scope: !144)
!530 = !DILocation(line: 165, column: 23, scope: !157)
!531 = !DILocation(line: 165, column: 33, scope: !157)
!532 = !DILocation(line: 167, column: 41, scope: !157)
!533 = !DILocation(line: 167, column: 48, scope: !157)
!534 = !DILocation(line: 167, column: 55, scope: !157)
!535 = !DILocation(line: 167, column: 22, scope: !157)
!536 = !DILocation(line: 167, column: 3, scope: !157)
!537 = !DILocation(line: 169, column: 1, scope: !157)
!538 = !DILocation(line: 157, column: 28, scope: !152)
!539 = !DILocation(line: 157, column: 36, scope: !152)
!540 = !DILocation(line: 157, column: 47, scope: !152)
!541 = !DILocation(line: 161, column: 8, scope: !152)
!542 = !DILocation(line: 161, column: 13, scope: !152)
!543 = !DILocation(line: 161, column: 26, scope: !152)
!544 = !DILocation(line: 161, column: 32, scope: !152)
!545 = !DILocation(line: 159, column: 3, scope: !152)
!546 = !DILocation(line: 163, column: 1, scope: !152)
!547 = !DILocation(line: 171, column: 22, scope: !161)
!548 = !DILocation(line: 171, column: 30, scope: !161)
!549 = !DILocation(line: 171, column: 37, scope: !161)
!550 = !DILocation(line: 173, column: 26, scope: !161)
!551 = !DILocation(line: 173, column: 28, scope: !161)
!552 = !DILocation(line: 173, column: 3, scope: !161)
!553 = !DILocation(line: 174, column: 1, scope: !161)
!554 = !DILocation(line: 176, column: 23, scope: !166)
!555 = !DILocation(line: 176, column: 31, scope: !166)
!556 = !DILocation(line: 176, column: 39, scope: !166)
!557 = !DILocation(line: 178, column: 26, scope: !166)
!558 = !DILocation(line: 178, column: 29, scope: !166)
!559 = !DILocation(line: 178, column: 3, scope: !166)
!560 = !DILocation(line: 179, column: 1, scope: !166)
!561 = !DILocation(line: 181, column: 22, scope: !171)
!562 = !DILocation(line: 181, column: 30, scope: !171)
!563 = !DILocation(line: 181, column: 37, scope: !171)
!564 = !DILocation(line: 183, column: 26, scope: !171)
!565 = !DILocation(line: 183, column: 28, scope: !171)
!566 = !DILocation(line: 183, column: 3, scope: !171)
!567 = !DILocation(line: 184, column: 1, scope: !171)
!568 = !DILocation(line: 186, column: 23, scope: !176)
!569 = !DILocation(line: 186, column: 31, scope: !176)
!570 = !DILocation(line: 186, column: 39, scope: !176)
!571 = !DILocation(line: 188, column: 27, scope: !176)
!572 = !DILocation(line: 188, column: 30, scope: !176)
!573 = !DILocation(line: 188, column: 3, scope: !176)
!574 = !DILocation(line: 189, column: 1, scope: !176)
!575 = !DILocation(line: 191, column: 20, scope: !181)
!576 = !DILocation(line: 191, column: 28, scope: !181)
!577 = !DILocation(line: 191, column: 36, scope: !181)
!578 = !DILocation(line: 191, column: 44, scope: !181)
!579 = !DILocation(line: 191, column: 52, scope: !181)
!580 = !DILocation(line: 181, column: 22, scope: !171, inlinedAt: !581)
!581 = distinct !DILocation(line: 193, column: 3, scope: !181)
!582 = !DILocation(line: 181, column: 30, scope: !171, inlinedAt: !581)
!583 = !DILocation(line: 181, column: 37, scope: !171, inlinedAt: !581)
!584 = !DILocation(line: 183, column: 26, scope: !171, inlinedAt: !581)
!585 = !DILocation(line: 183, column: 28, scope: !171, inlinedAt: !581)
!586 = !DILocation(line: 183, column: 3, scope: !171, inlinedAt: !581)
!587 = !DILocation(line: 171, column: 22, scope: !161, inlinedAt: !588)
!588 = distinct !DILocation(line: 194, column: 3, scope: !181)
!589 = !DILocation(line: 171, column: 30, scope: !161, inlinedAt: !588)
!590 = !DILocation(line: 171, column: 37, scope: !161, inlinedAt: !588)
!591 = !DILocation(line: 173, column: 26, scope: !161, inlinedAt: !588)
!592 = !DILocation(line: 173, column: 28, scope: !161, inlinedAt: !588)
!593 = !DILocation(line: 173, column: 3, scope: !161, inlinedAt: !588)
!594 = !DILocation(line: 195, column: 3, scope: !181)
!595 = !DILocation(line: 196, column: 1, scope: !181)
!596 = !DILocation(line: 207, column: 19, scope: !190)
!597 = !DILocation(line: 207, column: 27, scope: !190)
!598 = !DILocation(line: 207, column: 35, scope: !190)
!599 = !DILocation(line: 207, column: 43, scope: !190)
!600 = !DILocation(line: 207, column: 51, scope: !190)
!601 = !DILocation(line: 209, column: 3, scope: !190)
!602 = !DILocation(line: 210, column: 3, scope: !190)
!603 = !DILocation(line: 211, column: 1, scope: !190)
!604 = !DILocation(line: 198, column: 26, scope: !332)
!605 = !DILocation(line: 198, column: 34, scope: !332)
!606 = !DILocation(line: 198, column: 42, scope: !332)
!607 = !DILocation(line: 198, column: 50, scope: !332)
!608 = !DILocation(line: 198, column: 58, scope: !332)
!609 = !DILocation(line: 181, column: 22, scope: !171, inlinedAt: !610)
!610 = distinct !DILocation(line: 200, column: 3, scope: !332)
!611 = !DILocation(line: 181, column: 30, scope: !171, inlinedAt: !610)
!612 = !DILocation(line: 181, column: 37, scope: !171, inlinedAt: !610)
!613 = !DILocation(line: 183, column: 26, scope: !171, inlinedAt: !610)
!614 = !DILocation(line: 183, column: 28, scope: !171, inlinedAt: !610)
!615 = !DILocation(line: 183, column: 3, scope: !171, inlinedAt: !610)
!616 = !DILocation(line: 201, column: 28, scope: !332)
!617 = !DILocation(line: 176, column: 23, scope: !166, inlinedAt: !618)
!618 = distinct !DILocation(line: 201, column: 3, scope: !332)
!619 = !DILocation(line: 176, column: 31, scope: !166, inlinedAt: !618)
!620 = !DILocation(line: 176, column: 39, scope: !166, inlinedAt: !618)
!621 = !DILocation(line: 178, column: 29, scope: !166, inlinedAt: !618)
!622 = !DILocation(line: 178, column: 3, scope: !166, inlinedAt: !618)
!623 = !DILocation(line: 202, column: 26, scope: !332)
!624 = !DILocation(line: 176, column: 23, scope: !166, inlinedAt: !625)
!625 = distinct !DILocation(line: 202, column: 3, scope: !332)
!626 = !DILocation(line: 176, column: 31, scope: !166, inlinedAt: !625)
!627 = !DILocation(line: 176, column: 39, scope: !166, inlinedAt: !625)
!628 = !DILocation(line: 178, column: 26, scope: !166, inlinedAt: !625)
!629 = !DILocation(line: 178, column: 3, scope: !166, inlinedAt: !625)
!630 = !DILocation(line: 203, column: 28, scope: !332)
!631 = !DILocation(line: 176, column: 23, scope: !166, inlinedAt: !632)
!632 = distinct !DILocation(line: 203, column: 3, scope: !332)
!633 = !DILocation(line: 176, column: 31, scope: !166, inlinedAt: !632)
!634 = !DILocation(line: 176, column: 39, scope: !166, inlinedAt: !632)
!635 = !DILocation(line: 178, column: 29, scope: !166, inlinedAt: !632)
!636 = !DILocation(line: 178, column: 3, scope: !166, inlinedAt: !632)
!637 = !DILocation(line: 204, column: 26, scope: !332)
!638 = !DILocation(line: 176, column: 23, scope: !166, inlinedAt: !639)
!639 = distinct !DILocation(line: 204, column: 3, scope: !332)
!640 = !DILocation(line: 176, column: 31, scope: !166, inlinedAt: !639)
!641 = !DILocation(line: 176, column: 39, scope: !166, inlinedAt: !639)
!642 = !DILocation(line: 178, column: 26, scope: !166, inlinedAt: !639)
!643 = !DILocation(line: 178, column: 3, scope: !166, inlinedAt: !639)
!644 = !DILocation(line: 205, column: 1, scope: !332)
!645 = !DILocation(line: 213, column: 23, scope: !197)
!646 = !DILocation(line: 213, column: 31, scope: !197)
!647 = !DILocation(line: 213, column: 39, scope: !197)
!648 = !DILocation(line: 213, column: 47, scope: !197)
!649 = !DILocation(line: 213, column: 55, scope: !197)
!650 = !DILocation(line: 215, column: 3, scope: !197)
!651 = !DILocation(line: 216, column: 3, scope: !197)
!652 = !DILocation(line: 217, column: 1, scope: !197)
!653 = !DILocation(line: 219, column: 19, scope: !204)
!654 = !DILocation(line: 219, column: 27, scope: !204)
!655 = !DILocation(line: 219, column: 35, scope: !204)
!656 = !DILocation(line: 219, column: 43, scope: !204)
!657 = !DILocation(line: 219, column: 52, scope: !204)
!658 = !DILocation(line: 219, column: 60, scope: !204)
!659 = !DILocation(line: 221, column: 39, scope: !204)
!660 = !DILocation(line: 221, column: 42, scope: !204)
!661 = !DILocation(line: 221, column: 45, scope: !204)
!662 = !DILocation(line: 221, column: 49, scope: !204)
!663 = !DILocation(line: 221, column: 52, scope: !204)
!664 = !DILocation(line: 221, column: 3, scope: !204)
!665 = !DILocation(line: 222, column: 1, scope: !204)
!666 = !DILocation(line: 224, column: 23, scope: !214)
!667 = !DILocation(line: 224, column: 31, scope: !214)
!668 = !DILocation(line: 224, column: 39, scope: !214)
!669 = !DILocation(line: 224, column: 47, scope: !214)
!670 = !DILocation(line: 224, column: 56, scope: !214)
!671 = !DILocation(line: 224, column: 64, scope: !214)
!672 = !DILocation(line: 226, column: 39, scope: !214)
!673 = !DILocation(line: 226, column: 42, scope: !214)
!674 = !DILocation(line: 226, column: 45, scope: !214)
!675 = !DILocation(line: 226, column: 49, scope: !214)
!676 = !DILocation(line: 226, column: 52, scope: !214)
!677 = !DILocation(line: 226, column: 3, scope: !214)
!678 = !DILocation(line: 227, column: 1, scope: !214)
!679 = !DILocation(line: 229, column: 24, scope: !222)
!680 = !DILocation(line: 229, column: 32, scope: !222)
!681 = !DILocation(line: 229, column: 40, scope: !222)
!682 = !DILocation(line: 230, column: 9, scope: !222)
!683 = !DILocation(line: 230, column: 19, scope: !222)
!684 = !DILocation(line: 230, column: 29, scope: !222)
!685 = !DILocation(line: 230, column: 37, scope: !222)
!686 = !DILocation(line: 233, column: 4, scope: !222)
!687 = !DILocation(line: 233, column: 7, scope: !222)
!688 = !DILocation(line: 233, column: 10, scope: !222)
!689 = !DILocation(line: 233, column: 15, scope: !222)
!690 = !DILocation(line: 233, column: 18, scope: !222)
!691 = !DILocation(line: 233, column: 27, scope: !222)
!692 = !DILocation(line: 232, column: 3, scope: !222)
!693 = !DILocation(line: 234, column: 1, scope: !222)
!694 = !DILocation(line: 236, column: 28, scope: !233)
!695 = !DILocation(line: 236, column: 36, scope: !233)
!696 = !DILocation(line: 236, column: 44, scope: !233)
!697 = !DILocation(line: 237, column: 13, scope: !233)
!698 = !DILocation(line: 237, column: 23, scope: !233)
!699 = !DILocation(line: 237, column: 33, scope: !233)
!700 = !DILocation(line: 237, column: 41, scope: !233)
!701 = !DILocation(line: 240, column: 4, scope: !233)
!702 = !DILocation(line: 240, column: 7, scope: !233)
!703 = !DILocation(line: 240, column: 10, scope: !233)
!704 = !DILocation(line: 240, column: 15, scope: !233)
!705 = !DILocation(line: 240, column: 18, scope: !233)
!706 = !DILocation(line: 240, column: 27, scope: !233)
!707 = !DILocation(line: 239, column: 3, scope: !233)
!708 = !DILocation(line: 241, column: 1, scope: !233)
!709 = !DILocation(line: 243, column: 22, scope: !242)
!710 = !DILocation(line: 243, column: 30, scope: !242)
!711 = !DILocation(line: 243, column: 38, scope: !242)
!712 = !DILocation(line: 243, column: 46, scope: !242)
!713 = !DILocation(line: 219, column: 19, scope: !204, inlinedAt: !714)
!714 = distinct !DILocation(line: 245, column: 3, scope: !242)
!715 = !DILocation(line: 219, column: 27, scope: !204, inlinedAt: !714)
!716 = !DILocation(line: 219, column: 35, scope: !204, inlinedAt: !714)
!717 = !DILocation(line: 219, column: 43, scope: !204, inlinedAt: !714)
!718 = !DILocation(line: 219, column: 52, scope: !204, inlinedAt: !714)
!719 = !DILocation(line: 219, column: 60, scope: !204, inlinedAt: !714)
!720 = !DILocation(line: 221, column: 39, scope: !204, inlinedAt: !714)
!721 = !DILocation(line: 221, column: 42, scope: !204, inlinedAt: !714)
!722 = !DILocation(line: 221, column: 45, scope: !204, inlinedAt: !714)
!723 = !DILocation(line: 221, column: 3, scope: !204, inlinedAt: !714)
!724 = !DILocation(line: 246, column: 1, scope: !242)
!725 = !DILocation(line: 254, column: 20, scope: !248)
!726 = !DILocation(line: 254, column: 27, scope: !248)
!727 = !DILocation(line: 254, column: 37, scope: !248)
!728 = !DILocation(line: 257, column: 18, scope: !729)
!729 = distinct !DILexicalBlock(scope: !248, file: !1, line: 257, column: 7)
!730 = !DILocation(line: 258, column: 13, scope: !731)
!731 = distinct !DILexicalBlock(scope: !729, file: !1, line: 257, column: 39)
!732 = !DILocation(line: 258, column: 56, scope: !731)
!733 = !DILocation(line: 258, column: 5, scope: !731)
!734 = !DILocation(line: 260, column: 3, scope: !731)
!735 = !DILocation(line: 261, column: 31, scope: !248)
!736 = !DILocation(line: 261, column: 3, scope: !248)
!737 = !DILocation(line: 262, column: 39, scope: !248)
!738 = !DILocation(line: 262, column: 3, scope: !248)
!739 = !DILocation(line: 263, column: 1, scope: !248)
!740 = !DILocation(line: 265, column: 23, scope: !255)
!741 = !DILocation(line: 265, column: 32, scope: !255)
!742 = !DILocation(line: 265, column: 42, scope: !255)
!743 = !DILocation(line: 267, column: 3, scope: !255)
!744 = !DILocation(line: 268, column: 39, scope: !255)
!745 = !DILocation(line: 268, column: 3, scope: !255)
!746 = !DILocation(line: 269, column: 1, scope: !255)
!747 = !DILocation(line: 271, column: 20, scope: !262)
!748 = !DILocation(line: 271, column: 28, scope: !262)
!749 = !DILocation(line: 271, column: 36, scope: !262)
!750 = !DILocation(line: 271, column: 45, scope: !262)
!751 = !DILocation(line: 181, column: 22, scope: !171, inlinedAt: !752)
!752 = distinct !DILocation(line: 273, column: 3, scope: !262)
!753 = !DILocation(line: 181, column: 30, scope: !171, inlinedAt: !752)
!754 = !DILocation(line: 181, column: 37, scope: !171, inlinedAt: !752)
!755 = !DILocation(line: 183, column: 26, scope: !171, inlinedAt: !752)
!756 = !DILocation(line: 183, column: 28, scope: !171, inlinedAt: !752)
!757 = !DILocation(line: 183, column: 3, scope: !171, inlinedAt: !752)
!758 = !DILocation(line: 274, column: 3, scope: !262)
!759 = !DILocation(line: 275, column: 1, scope: !262)
!760 = !DILocation(line: 277, column: 22, scope: !270)
!761 = !DILocation(line: 277, column: 30, scope: !270)
!762 = !DILocation(line: 279, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !270, file: !1, line: 279, column: 7)
!764 = !DILocation(line: 279, column: 7, scope: !270)
!765 = !DILocation(line: 280, column: 5, scope: !763)
!766 = !DILocation(line: 282, column: 5, scope: !763)
!767 = !DILocation(line: 283, column: 1, scope: !270)
!768 = !DILocation(line: 285, column: 21, scope: !274)
!769 = !DILocation(line: 285, column: 29, scope: !274)
!770 = !DILocation(line: 285, column: 37, scope: !274)
!771 = !DILocation(line: 285, column: 46, scope: !274)
!772 = !DILocation(line: 285, column: 54, scope: !274)
!773 = !DILocation(line: 287, column: 13, scope: !774)
!774 = distinct !DILexicalBlock(scope: !274, file: !1, line: 287, column: 7)
!775 = !DILocation(line: 183, column: 26, scope: !171, inlinedAt: !776)
!776 = distinct !DILocation(line: 273, column: 3, scope: !262, inlinedAt: !777)
!777 = distinct !DILocation(line: 288, column: 5, scope: !778)
!778 = distinct !DILexicalBlock(scope: !774, file: !1, line: 287, column: 24)
!779 = !DILocation(line: 183, column: 28, scope: !171, inlinedAt: !776)
!780 = !DILocation(line: 183, column: 3, scope: !171, inlinedAt: !776)
!781 = !DILocation(line: 287, column: 7, scope: !274)
!782 = !DILocation(line: 271, column: 20, scope: !262, inlinedAt: !777)
!783 = !DILocation(line: 271, column: 28, scope: !262, inlinedAt: !777)
!784 = !DILocation(line: 271, column: 36, scope: !262, inlinedAt: !777)
!785 = !DILocation(line: 271, column: 45, scope: !262, inlinedAt: !777)
!786 = !DILocation(line: 181, column: 22, scope: !171, inlinedAt: !776)
!787 = !DILocation(line: 181, column: 30, scope: !171, inlinedAt: !776)
!788 = !DILocation(line: 181, column: 37, scope: !171, inlinedAt: !776)
!789 = !DILocation(line: 274, column: 3, scope: !262, inlinedAt: !777)
!790 = !DILocation(line: 289, column: 5, scope: !778)
!791 = !DILocation(line: 181, column: 22, scope: !171, inlinedAt: !792)
!792 = distinct !DILocation(line: 291, column: 3, scope: !274)
!793 = !DILocation(line: 181, column: 30, scope: !171, inlinedAt: !792)
!794 = !DILocation(line: 181, column: 37, scope: !171, inlinedAt: !792)
!795 = !DILocation(line: 292, column: 3, scope: !274)
!796 = !DILocation(line: 293, column: 3, scope: !274)
!797 = !DILocation(line: 298, column: 5, scope: !798)
!798 = distinct !DILexicalBlock(scope: !274, file: !1, line: 293, column: 18)
!799 = !DILocation(line: 299, column: 5, scope: !798)
!800 = !DILocation(line: 301, column: 5, scope: !798)
!801 = !DILocation(line: 302, column: 5, scope: !798)
!802 = !DILocation(line: 304, column: 5, scope: !798)
!803 = !DILocation(line: 305, column: 3, scope: !798)
!804 = !DILocation(line: 306, column: 3, scope: !274)
!805 = !DILocation(line: 307, column: 1, scope: !274)
!806 = !DILocation(line: 309, column: 25, scope: !283)
!807 = !DILocation(line: 309, column: 33, scope: !283)
!808 = !DILocation(line: 309, column: 40, scope: !283)
!809 = !DILocation(line: 311, column: 34, scope: !283)
!810 = !DILocation(line: 311, column: 36, scope: !283)
!811 = !DILocation(line: 311, column: 3, scope: !283)
!812 = !DILocation(line: 312, column: 1, scope: !283)
!813 = !DILocation(line: 316, column: 25, scope: !288)
!814 = !DILocation(line: 318, column: 3, scope: !288)
!815 = !DILocation(line: 319, column: 9, scope: !288)
!816 = !DILocation(line: 320, column: 1, scope: !288)
!817 = !DILocation(line: 322, column: 27, scope: !293)
!818 = !DILocation(line: 324, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !293, file: !1, line: 324, column: 7)
!820 = !DILocation(line: 324, column: 14, scope: !819)
!821 = !DILocation(line: 324, column: 7, scope: !293)
!822 = !DILocation(line: 325, column: 5, scope: !819)
!823 = !DILocation(line: 326, column: 3, scope: !293)
!824 = !DILocation(line: 327, column: 9, scope: !293)
!825 = !DILocation(line: 328, column: 1, scope: !293)
!826 = !DILocation(line: 330, column: 21, scope: !296)
!827 = !DILocation(line: 332, column: 3, scope: !296)
!828 = !DILocation(line: 333, column: 3, scope: !296)
!829 = !DILocation(line: 334, column: 3, scope: !296)
!830 = !DILocation(line: 335, column: 1, scope: !296)
!831 = !DILocation(line: 337, column: 23, scope: !299)
!832 = !DILocation(line: 337, column: 32, scope: !299)
!833 = !DILocation(line: 339, column: 3, scope: !299)
!834 = !DILocation(line: 340, column: 1, scope: !299)
