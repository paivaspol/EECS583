; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"# This file was created by %s\0A\00", align 1
@.str2 = private unnamed_addr constant [35 x i8] c"# which is part of G R O M A C S:\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"# All this happened at: %s\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str6 = private unnamed_addr constant [17 x i8] c"@    title \22%s\22\0A\00", align 1
@.str7 = private unnamed_addr constant [24 x i8] c"@    xaxis  label \22%s\22\0A\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"@    yaxis  label \22%s\22\0A\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"@TYPE xy\0A\00", align 1
@.str11 = private unnamed_addr constant [23 x i8] c"@ view %g, %g, %g, %g\0A\00", align 1
@.str12 = private unnamed_addr constant [65 x i8] c"@ world xmin %g\0A@ world ymin %g\0A@ world xmax %g\0A@ world ymax %g\0A\00", align 1
@.str13 = private unnamed_addr constant [13 x i8] c"@ legend on\0A\00", align 1
@.str14 = private unnamed_addr constant [17 x i8] c"@ legend box on\0A\00", align 1
@.str15 = private unnamed_addr constant [23 x i8] c"@ legend loctype view\0A\00", align 1
@.str16 = private unnamed_addr constant [17 x i8] c"@ legend %g, %g\0A\00", align 1
@.str17 = private unnamed_addr constant [20 x i8] c"@ legend length %d\0A\00", align 1
@.str19 = private unnamed_addr constant [19 x i8] c"@ s%d legend \22%s\22\0A\00", align 1
@.str20 = private unnamed_addr constant [14 x i8] c"@    with g0\0A\00", align 1
@.str21 = private unnamed_addr constant [23 x i8] c"@    s%d linestyle %d\0A\00", align 1
@.str22 = private unnamed_addr constant [19 x i8] c"@    s%d color %d\0A\00", align 1
@.str23 = private unnamed_addr constant [11 x i8] c"@with box\0A\00", align 1
@.str24 = private unnamed_addr constant [13 x i8] c"@    box on\0A\00", align 1
@.str25 = private unnamed_addr constant [21 x i8] c"@    box loctype %s\0A\00", align 1
@LocTypeStr = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str52, i32 0, i32 0)], align 16
@.str26 = private unnamed_addr constant [25 x i8] c"@    box %g, %g, %g, %g\0A\00", align 1
@.str27 = private unnamed_addr constant [23 x i8] c"@    box linestyle %d\0A\00", align 1
@.str28 = private unnamed_addr constant [23 x i8] c"@    box linewidth %d\0A\00", align 1
@.str29 = private unnamed_addr constant [19 x i8] c"@    box color %d\0A\00", align 1
@.str30 = private unnamed_addr constant [18 x i8] c"@    box fill %s\0A\00", align 1
@BoxFillStr = internal unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str50, i32 0, i32 0)], align 16
@.str31 = private unnamed_addr constant [24 x i8] c"@    box fill color %d\0A\00", align 1
@.str32 = private unnamed_addr constant [26 x i8] c"@    box fill pattern %d\0A\00", align 1
@.str33 = private unnamed_addr constant [10 x i8] c"@box def\0A\00", align 1
@.str34 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@.str36 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c\00", align 1
@.str37 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
@.str38 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str39 = private unnamed_addr constant [6 x i8] c"yy[k]\00", align 1
@stderr = external global %struct._IO_FILE*
@.str42 = private unnamed_addr constant [39 x i8] c"Only %d columns on line %d in file %s\0A\00", align 1
@.str43 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str44 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str45 = private unnamed_addr constant [9 x i8] c"  %12.5e\00", align 1
@fgets3.ptr = internal unnamed_addr global i8* null, align 8
@fgets3.len = internal unnamed_addr global i32 4096, align 4
@.str47 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str48 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str49 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str50 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str51 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str52 = private unnamed_addr constant [6 x i8] c"world\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IO_FILE* @xvgropen(i8* %fn, i8* %title, i8* %xaxis, i8* %yaxis) #0 {
entry:
  %t = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !83), !dbg !247
  call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !84), !dbg !247
  call void @llvm.dbg.value(metadata !{i8* %xaxis}, i64 0, metadata !85), !dbg !247
  call void @llvm.dbg.value(metadata !{i8* %yaxis}, i64 0, metadata !86), !dbg !247
  call void @llvm.dbg.declare(metadata !{i64* %t}, metadata !88), !dbg !248
  %call = call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #7, !dbg !249
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !87), !dbg !249
  %call1 = call i8* @Program() #7, !dbg !250
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i8* %call1) #7, !dbg !250
  %0 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str2, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %call), !dbg !251
  %call4 = call i8* @bromacs() #7, !dbg !252
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* %call4) #7, !dbg !252
  %call6 = call i64 @time(i64* %t) #7, !dbg !253
  %call7 = call i8* @ctime(i64* %t) #7, !dbg !254
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0), i8* %call7) #7, !dbg !254
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %call), !dbg !255
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i8* %title) #7, !dbg !256
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), i8* %xaxis) #7, !dbg !257
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0), i8* %yaxis) #7, !dbg !258
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %call), !dbg !259
  ret %struct._IO_FILE* %call, !dbg !260
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare i8* @Program() #2

; Function Attrs: optsize
declare i8* @bromacs() #2

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #3

; Function Attrs: nounwind optsize
declare i8* @ctime(i64*) #3

; Function Attrs: nounwind optsize uwtable
define void @xvgr_view(%struct._IO_FILE* nocapture %out, float %xmin, float %ymin, float %xmax, float %ymax) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !97), !dbg !261
  tail call void @llvm.dbg.value(metadata !{float %xmin}, i64 0, metadata !98), !dbg !261
  tail call void @llvm.dbg.value(metadata !{float %ymin}, i64 0, metadata !99), !dbg !261
  tail call void @llvm.dbg.value(metadata !{float %xmax}, i64 0, metadata !100), !dbg !261
  tail call void @llvm.dbg.value(metadata !{float %ymax}, i64 0, metadata !101), !dbg !261
  %conv = fpext float %xmin to double, !dbg !262
  %conv1 = fpext float %ymin to double, !dbg !262
  %conv2 = fpext float %xmax to double, !dbg !262
  %conv3 = fpext float %ymax to double, !dbg !262
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str11, i64 0, i64 0), double %conv, double %conv1, double %conv2, double %conv3) #7, !dbg !262
  ret void, !dbg !263
}

; Function Attrs: nounwind optsize uwtable
define void @xvgr_world(%struct._IO_FILE* nocapture %out, float %xmin, float %ymin, float %xmax, float %ymax) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !104), !dbg !264
  tail call void @llvm.dbg.value(metadata !{float %xmin}, i64 0, metadata !105), !dbg !264
  tail call void @llvm.dbg.value(metadata !{float %ymin}, i64 0, metadata !106), !dbg !264
  tail call void @llvm.dbg.value(metadata !{float %xmax}, i64 0, metadata !107), !dbg !264
  tail call void @llvm.dbg.value(metadata !{float %ymax}, i64 0, metadata !108), !dbg !264
  %conv = fpext float %xmin to double, !dbg !265
  %conv1 = fpext float %ymin to double, !dbg !265
  %conv2 = fpext float %xmax to double, !dbg !265
  %conv3 = fpext float %ymax to double, !dbg !265
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([65 x i8]* @.str12, i64 0, i64 0), double %conv, double %conv1, double %conv2, double %conv3) #7, !dbg !265
  ret void, !dbg !266
}

; Function Attrs: nounwind optsize uwtable
define void @xvgr_legend(%struct._IO_FILE* nocapture %out, i32 %nsets, i8** nocapture %setname) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !114), !dbg !267
  tail call void @llvm.dbg.value(metadata !{i32 %nsets}, i64 0, metadata !115), !dbg !267
  tail call void @llvm.dbg.value(metadata !{i8** %setname}, i64 0, metadata !116), !dbg !267
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !268) #6, !dbg !270
  tail call void @llvm.dbg.value(metadata !271, i64 0, metadata !272) #6, !dbg !270
  tail call void @llvm.dbg.value(metadata !271, i64 0, metadata !273) #6, !dbg !270
  tail call void @llvm.dbg.value(metadata !274, i64 0, metadata !275) #6, !dbg !270
  tail call void @llvm.dbg.value(metadata !276, i64 0, metadata !277) #6, !dbg !270
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str11, i64 0, i64 0), double 0x3FC3333340000000, double 0x3FC3333340000000, double 7.500000e-01, double 0x3FEB333340000000) #7, !dbg !278
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %out), !dbg !279
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %out), !dbg !280
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str15, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %out), !dbg !281
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), double 7.800000e-01, double 8.000000e-01) #7, !dbg !282
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), i32 2) #7, !dbg !283
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !117), !dbg !284
  %cmp26 = icmp sgt i32 %nsets, 0, !dbg !284
  br i1 %cmp26, label %for.body, label %for.end, !dbg !284

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %setname, i64 %indvars.iv, !dbg !286
  %3 = load i8** %arrayidx, align 8, !dbg !286, !tbaa !287
  %tobool = icmp eq i8* %3, null, !dbg !286
  br i1 %tobool, label %for.inc, label %if.then, !dbg !286

if.then:                                          ; preds = %for.body
  %4 = trunc i64 %indvars.iv to i32, !dbg !290
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str19, i64 0, i64 0), i32 %4, i8* %3) #7, !dbg !290
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !284
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !284
  %exitcond = icmp eq i32 %lftr.wideiv, %nsets, !dbg !284
  br i1 %exitcond, label %for.end, label %for.body, !dbg !284

for.end:                                          ; preds = %for.inc, %entry
  ret void, !dbg !292
}

; Function Attrs: nounwind optsize uwtable
define void @xvgr_line_props(%struct._IO_FILE* nocapture %out, i32 %NrSet, i32 %LineStyle, i32 %LineColor) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !122), !dbg !293
  tail call void @llvm.dbg.value(metadata !{i32 %NrSet}, i64 0, metadata !123), !dbg !293
  tail call void @llvm.dbg.value(metadata !{i32 %LineStyle}, i64 0, metadata !124), !dbg !293
  tail call void @llvm.dbg.value(metadata !{i32 %LineColor}, i64 0, metadata !125), !dbg !293
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %out), !dbg !294
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str21, i64 0, i64 0), i32 %NrSet, i32 %LineStyle) #7, !dbg !295
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str22, i64 0, i64 0), i32 %NrSet, i32 %LineColor) #7, !dbg !296
  ret void, !dbg !297
}

; Function Attrs: nounwind optsize uwtable
define void @xvgr_box(%struct._IO_FILE* nocapture %out, i32 %LocType, float %xmin, float %ymin, float %xmax, float %ymax, i32 %LineStyle, i32 %LineWidth, i32 %LineColor, i32 %BoxFill, i32 %BoxColor, i32 %BoxPattern) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !130), !dbg !298
  tail call void @llvm.dbg.value(metadata !{i32 %LocType}, i64 0, metadata !131), !dbg !299
  tail call void @llvm.dbg.value(metadata !{float %xmin}, i64 0, metadata !132), !dbg !300
  tail call void @llvm.dbg.value(metadata !{float %ymin}, i64 0, metadata !133), !dbg !300
  tail call void @llvm.dbg.value(metadata !{float %xmax}, i64 0, metadata !134), !dbg !300
  tail call void @llvm.dbg.value(metadata !{float %ymax}, i64 0, metadata !135), !dbg !300
  tail call void @llvm.dbg.value(metadata !{i32 %LineStyle}, i64 0, metadata !136), !dbg !301
  tail call void @llvm.dbg.value(metadata !{i32 %LineWidth}, i64 0, metadata !137), !dbg !301
  tail call void @llvm.dbg.value(metadata !{i32 %LineColor}, i64 0, metadata !138), !dbg !301
  tail call void @llvm.dbg.value(metadata !{i32 %BoxFill}, i64 0, metadata !139), !dbg !302
  tail call void @llvm.dbg.value(metadata !{i32 %BoxColor}, i64 0, metadata !140), !dbg !302
  tail call void @llvm.dbg.value(metadata !{i32 %BoxPattern}, i64 0, metadata !141), !dbg !302
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str23, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %out), !dbg !303
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str24, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %out), !dbg !304
  %idxprom = sext i32 %LocType to i64, !dbg !305
  %arrayidx = getelementptr inbounds [2 x i8*]* @LocTypeStr, i64 0, i64 %idxprom, !dbg !305
  %2 = load i8** %arrayidx, align 8, !dbg !305, !tbaa !287
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str25, i64 0, i64 0), i8* %2) #7, !dbg !305
  %conv = fpext float %xmin to double, !dbg !306
  %conv3 = fpext float %ymin to double, !dbg !306
  %conv4 = fpext float %xmax to double, !dbg !306
  %conv5 = fpext float %ymax to double, !dbg !306
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str26, i64 0, i64 0), double %conv, double %conv3, double %conv4, double %conv5) #7, !dbg !306
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str27, i64 0, i64 0), i32 %LineStyle) #7, !dbg !307
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str28, i64 0, i64 0), i32 %LineWidth) #7, !dbg !308
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i32 %LineColor) #7, !dbg !309
  %idxprom10 = sext i32 %BoxFill to i64, !dbg !310
  %arrayidx11 = getelementptr inbounds [3 x i8*]* @BoxFillStr, i64 0, i64 %idxprom10, !dbg !310
  %3 = load i8** %arrayidx11, align 8, !dbg !310, !tbaa !287
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str30, i64 0, i64 0), i8* %3) #7, !dbg !310
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([24 x i8]* @.str31, i64 0, i64 0), i32 %BoxColor) #7, !dbg !311
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str32, i64 0, i64 0), i32 %BoxPattern) #7, !dbg !312
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %out), !dbg !313
  ret void, !dbg !314
}

; Function Attrs: nounwind optsize uwtable
define void @lsq_y_ax(i32 %n, float* nocapture %x, float* nocapture %y, float* nocapture %a) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !147), !dbg !315
  tail call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !148), !dbg !315
  tail call void @llvm.dbg.value(metadata !{float* %y}, i64 0, metadata !149), !dbg !315
  tail call void @llvm.dbg.value(metadata !{float* %a}, i64 0, metadata !150), !dbg !315
  tail call void @llvm.dbg.value(metadata !316, i64 0, metadata !152), !dbg !317
  tail call void @llvm.dbg.value(metadata !316, i64 0, metadata !154), !dbg !317
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !151), !dbg !318
  %cmp20 = icmp sgt i32 %n, 0, !dbg !318
  br i1 %cmp20, label %for.body, label %for.end, !dbg !318

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %yx.023 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %xx.022 = phi double [ %add9, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %y, i64 %indvars.iv, !dbg !320
  %0 = load float* %arrayidx, align 4, !dbg !320, !tbaa !322
  %arrayidx2 = getelementptr inbounds float* %x, i64 %indvars.iv, !dbg !320
  %1 = load float* %arrayidx2, align 4, !dbg !320, !tbaa !322
  %mul = fmul float %0, %1, !dbg !320
  %conv = fpext float %mul to double, !dbg !320
  %add = fadd double %yx.023, %conv, !dbg !320
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !154), !dbg !320
  %mul7 = fmul float %1, %1, !dbg !323
  %conv8 = fpext float %mul7 to double, !dbg !323
  %add9 = fadd double %xx.022, %conv8, !dbg !323
  tail call void @llvm.dbg.value(metadata !{double %add9}, i64 0, metadata !152), !dbg !323
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !318
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !318
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !318
  br i1 %exitcond, label %for.end, label %for.body, !dbg !318

for.end:                                          ; preds = %for.body, %entry
  %yx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %xx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add9, %for.body ]
  %div = fdiv double %yx.0.lcssa, %xx.0.lcssa, !dbg !324
  %conv10 = fptrunc double %div to float, !dbg !324
  store float %conv10, float* %a, align 4, !dbg !324, !tbaa !322
  ret void, !dbg !325
}

; Function Attrs: nounwind optsize uwtable
define float @lsq_y_ax_b(i32 %n, float* nocapture %x, float* nocapture %y, float* nocapture %a, float* nocapture %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !159), !dbg !326
  tail call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !160), !dbg !326
  tail call void @llvm.dbg.value(metadata !{float* %y}, i64 0, metadata !161), !dbg !326
  tail call void @llvm.dbg.value(metadata !{float* %a}, i64 0, metadata !162), !dbg !326
  tail call void @llvm.dbg.value(metadata !{float* %b}, i64 0, metadata !163), !dbg !326
  tail call void @llvm.dbg.value(metadata !316, i64 0, metadata !168), !dbg !327
  tail call void @llvm.dbg.value(metadata !316, i64 0, metadata !167), !dbg !327
  tail call void @llvm.dbg.value(metadata !316, i64 0, metadata !166), !dbg !327
  tail call void @llvm.dbg.value(metadata !316, i64 0, metadata !165), !dbg !327
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !164), !dbg !328
  %cmp93 = icmp sgt i32 %n, 0, !dbg !328
  br i1 %cmp93, label %for.body, label %for.end, !dbg !328

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.body ], [ 0, %entry ]
  %sy.098 = phi double [ %add17, %for.body ], [ 0.000000e+00, %entry ]
  %sx.097 = phi double [ %add13, %for.body ], [ 0.000000e+00, %entry ]
  %xx.096 = phi double [ %add9, %for.body ], [ 0.000000e+00, %entry ]
  %yx.095 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %y, i64 %indvars.iv103, !dbg !330
  %0 = load float* %arrayidx, align 4, !dbg !330, !tbaa !322
  %arrayidx2 = getelementptr inbounds float* %x, i64 %indvars.iv103, !dbg !330
  %1 = load float* %arrayidx2, align 4, !dbg !330, !tbaa !322
  %mul = fmul float %0, %1, !dbg !330
  %conv = fpext float %mul to double, !dbg !330
  %add = fadd double %yx.095, %conv, !dbg !330
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !165), !dbg !330
  %mul7 = fmul float %1, %1, !dbg !332
  %conv8 = fpext float %mul7 to double, !dbg !332
  %add9 = fadd double %xx.096, %conv8, !dbg !332
  tail call void @llvm.dbg.value(metadata !{double %add9}, i64 0, metadata !166), !dbg !332
  %conv12 = fpext float %1 to double, !dbg !333
  %add13 = fadd double %sx.097, %conv12, !dbg !333
  tail call void @llvm.dbg.value(metadata !{double %add13}, i64 0, metadata !167), !dbg !333
  %conv16 = fpext float %0 to double, !dbg !334
  %add17 = fadd double %sy.098, %conv16, !dbg !334
  tail call void @llvm.dbg.value(metadata !{double %add17}, i64 0, metadata !168), !dbg !334
  %indvars.iv.next104 = add i64 %indvars.iv103, 1, !dbg !328
  %lftr.wideiv105 = trunc i64 %indvars.iv.next104 to i32, !dbg !328
  %exitcond106 = icmp eq i32 %lftr.wideiv105, %n, !dbg !328
  br i1 %exitcond106, label %for.end, label %for.body, !dbg !328

for.end:                                          ; preds = %for.body, %entry
  %sy.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add17, %for.body ]
  %sx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add13, %for.body ]
  %xx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add9, %for.body ]
  %yx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %conv18 = sitofp i32 %n to double, !dbg !335
  %mul19 = fmul double %conv18, %yx.0.lcssa, !dbg !335
  %mul20 = fmul double %sx.0.lcssa, %sy.0.lcssa, !dbg !335
  %sub = fsub double %mul19, %mul20, !dbg !335
  %mul22 = fmul double %conv18, %xx.0.lcssa, !dbg !335
  %mul23 = fmul double %sx.0.lcssa, %sx.0.lcssa, !dbg !335
  %sub24 = fsub double %mul22, %mul23, !dbg !335
  %div = fdiv double %sub, %sub24, !dbg !335
  %conv25 = fptrunc double %div to float, !dbg !335
  store float %conv25, float* %a, align 4, !dbg !335, !tbaa !322
  %conv26 = fpext float %conv25 to double, !dbg !336
  %mul27 = fmul double %sx.0.lcssa, %conv26, !dbg !336
  %sub28 = fsub double %sy.0.lcssa, %mul27, !dbg !336
  %div30 = fdiv double %sub28, %conv18, !dbg !336
  %conv31 = fptrunc double %div30 to float, !dbg !336
  store float %conv31, float* %b, align 4, !dbg !336, !tbaa !322
  tail call void @llvm.dbg.value(metadata !316, i64 0, metadata !169), !dbg !337
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !164), !dbg !338
  br i1 %cmp93, label %for.body35.lr.ph, label %return, !dbg !338

for.body35.lr.ph:                                 ; preds = %for.end
  %2 = load float* %a, align 4, !dbg !340, !tbaa !322
  br label %for.body35, !dbg !338

for.body35:                                       ; preds = %for.body35, %for.body35.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body35.lr.ph ], [ %indvars.iv.next, %for.body35 ]
  %chi2.092 = phi double [ 0.000000e+00, %for.body35.lr.ph ], [ %add44, %for.body35 ]
  %arrayidx37 = getelementptr inbounds float* %y, i64 %indvars.iv, !dbg !340
  %3 = load float* %arrayidx37, align 4, !dbg !340, !tbaa !322
  %arrayidx39 = getelementptr inbounds float* %x, i64 %indvars.iv, !dbg !340
  %4 = load float* %arrayidx39, align 4, !dbg !340, !tbaa !322
  %mul40 = fmul float %2, %4, !dbg !340
  %add41 = fadd float %mul40, %conv31, !dbg !340
  %sub42 = fsub float %3, %add41, !dbg !340
  tail call void @llvm.dbg.value(metadata !{float %sub42}, i64 0, metadata !341), !dbg !342
  %mul.i = fmul float %sub42, %sub42, !dbg !343
  %conv43 = fpext float %mul.i to double, !dbg !340
  %add44 = fadd double %chi2.092, %conv43, !dbg !340
  tail call void @llvm.dbg.value(metadata !{double %add44}, i64 0, metadata !169), !dbg !340
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !338
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !338
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !338
  br i1 %exitcond, label %for.end47, label %for.body35, !dbg !338

for.end47:                                        ; preds = %for.body35
  %cmp48 = icmp sgt i32 %n, 2, !dbg !345
  br i1 %cmp48, label %if.then, label %return, !dbg !345

if.then:                                          ; preds = %for.end47
  %sub50 = add nsw i32 %n, -2, !dbg !346
  %conv51 = sitofp i32 %sub50 to double, !dbg !346
  %div52 = fdiv double %add44, %conv51, !dbg !346
  %call53 = tail call double @sqrt(double %div52) #7, !dbg !346
  %conv54 = fptrunc double %call53 to float, !dbg !346
  br label %return, !dbg !346

return:                                           ; preds = %for.end, %for.end47, %if.then
  %retval.0 = phi float [ %conv54, %if.then ], [ 0.000000e+00, %for.end47 ], [ 0.000000e+00, %for.end ]
  ret float %retval.0, !dbg !347
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize uwtable
define i32 @read_xvg(i8* %fn, float*** nocapture %y, i32* nocapture %ny) #0 {
entry:
  %is.i = alloca [2 x i32], align 4
  %lf = alloca double, align 8
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !177), !dbg !348
  call void @llvm.dbg.value(metadata !{float*** %y}, i64 0, metadata !178), !dbg !348
  call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !179), !dbg !348
  call void @llvm.dbg.value(metadata !349, i64 0, metadata !182), !dbg !350
  call void @llvm.dbg.value(metadata !349, i64 0, metadata !183), !dbg !351
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !185), !dbg !352
  call void @llvm.dbg.declare(metadata !{double* %lf}, metadata !190), !dbg !353
  call void @llvm.dbg.value(metadata !354, i64 0, metadata !191), !dbg !355
  store i32 0, i32* %ny, align 4, !dbg !356, !tbaa !357
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !186), !dbg !358
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !187), !dbg !359
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !188), !dbg !360
  %call = call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str34, i64 0, i64 0)) #7, !dbg !361
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !180), !dbg !361
  %0 = bitcast [2 x i32]* %is.i to i8*, !dbg !362
  br label %while.cond.outer, !dbg !367

while.cond.outer:                                 ; preds = %if.end88, %entry
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %if.end88 ], [ 0, %entry ]
  %base.0.ph = phi i8* [ %base.2.lcssa, %if.end88 ], [ null, %entry ]
  %fmt.0.ph = phi i8* [ %fmt.2.lcssa, %if.end88 ], [ null, %entry ]
  %line.0.ph = phi i32 [ %inc, %if.end88 ], [ 0, %entry ]
  %nny.0.ph = phi i32 [ %nny.1, %if.end88 ], [ 0, %entry ]
  %nx.0.ph = phi i32 [ %inc89, %if.end88 ], [ 0, %entry ]
  %maxx.0.ph = phi i32 [ %maxx.1182, %if.end88 ], [ 0, %entry ]
  %yy.0.ph = phi float** [ %yy.1, %if.end88 ], [ null, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.body, %while.body, %while.cond.outer
  %line.0 = phi i32 [ %line.0.ph, %while.cond.outer ], [ %inc, %while.body ], [ %inc, %while.body ]
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !368) #6, !dbg !369
  %1 = load i8** @fgets3.ptr, align 8, !dbg !370, !tbaa !287
  %cmp.i = icmp eq i8* %1, null, !dbg !370
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !370

if.then.i:                                        ; preds = %while.cond
  %2 = load i32* @fgets3.len, align 4, !dbg !371, !tbaa !357
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 187, i32 %2, i32 1) #7, !dbg !371
  store i8* %call.i, i8** @fgets3.ptr, align 8, !dbg !371, !tbaa !287
  br label %if.end.i, !dbg !371

if.end.i:                                         ; preds = %if.then.i, %while.cond
  %3 = phi i8* [ %call.i, %if.then.i ], [ %1, %while.cond ]
  %4 = load i32* @fgets3.len, align 4, !dbg !372, !tbaa !357
  %sub.i = add nsw i32 %4, -1, !dbg !372
  %call1.i = call i8* @fgets(i8* %3, i32 %sub.i, %struct._IO_FILE* %call) #7, !dbg !372
  %cmp2.i = icmp eq i8* %call1.i, null, !dbg !372
  br i1 %cmp2.i, label %while.end, label %if.end4.i, !dbg !372

if.end4.i:                                        ; preds = %if.end.i
  %5 = load i8** @fgets3.ptr, align 8, !dbg !373, !tbaa !287
  call void @llvm.dbg.value(metadata !{i8* %5}, i64 0, metadata !374) #6, !dbg !373
  %call5.i147 = call i8* @strchr(i8* %5, i32 10) #8, !dbg !375
  %cmp6.i148 = icmp eq i8* %call5.i147, null, !dbg !375
  br i1 %cmp6.i148, label %land.rhs.i, label %while.end.i, !dbg !375

land.rhs.i:                                       ; preds = %if.end4.i, %while.body.while.cond_crit_edge.i
  %p.0.i149 = phi i8* [ %add.ptr.i, %while.body.while.cond_crit_edge.i ], [ %5, %if.end4.i ]
  %call7.i = call i32 @feof(%struct._IO_FILE* %call) #7, !dbg !375
  %lnot.i = icmp eq i32 %call7.i, 0, !dbg !375
  br i1 %lnot.i, label %while.body.i, label %while.end.isplit

while.body.i:                                     ; preds = %land.rhs.i
  %6 = load i32* @fgets3.len, align 4, !dbg !376, !tbaa !357
  %add.i = add nsw i32 %6, 4096, !dbg !376
  store i32 %add.i, i32* @fgets3.len, align 4, !dbg !376, !tbaa !357
  %7 = load i8** @fgets3.ptr, align 8, !dbg !378, !tbaa !287
  %call9.i = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 196, i8* %7, i32 %add.i) #7, !dbg !378
  store i8* %call9.i, i8** @fgets3.ptr, align 8, !dbg !378, !tbaa !287
  %add.ptr10.i = getelementptr inbounds i8* %p.0.i149, i64 4095, !dbg !379
  %call11.i = call i8* @fgets(i8* %add.ptr10.i, i32 4096, %struct._IO_FILE* %call) #7, !dbg !379
  %cmp12.i = icmp eq i8* %call11.i, null, !dbg !379
  br i1 %cmp12.i, label %while.end.isplit, label %while.body.while.cond_crit_edge.i, !dbg !379

while.body.while.cond_crit_edge.i:                ; preds = %while.body.i
  %add.ptr.i = getelementptr inbounds i8* %p.0.i149, i64 4096, !dbg !380
  %.pre31.i = load i8** @fgets3.ptr, align 8, !dbg !375, !tbaa !287
  %call5.i = call i8* @strchr(i8* %.pre31.i, i32 10) #8, !dbg !375
  %cmp6.i = icmp eq i8* %call5.i, null, !dbg !375
  br i1 %cmp6.i, label %land.rhs.i, label %while.end.i, !dbg !375

while.end.isplit:                                 ; preds = %land.rhs.i, %while.body.i
  %.pre = load i8** @fgets3.ptr, align 8, !dbg !381, !tbaa !287
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.while.cond_crit_edge.i, %while.end.isplit, %if.end4.i
  %8 = phi i8* [ %.pre, %while.end.isplit ], [ %5, %if.end4.i ], [ %.pre31.i, %while.body.while.cond_crit_edge.i ]
  %call16.i = call i64 @strlen(i8* %8) #8, !dbg !381
  %sub18.i = shl i64 %call16.i, 32, !dbg !382
  %sext.i = add i64 %sub18.i, -4294967296, !dbg !382
  %idxprom.i = ashr exact i64 %sext.i, 32, !dbg !382
  %arrayidx.i = getelementptr inbounds i8* %8, i64 %idxprom.i, !dbg !382
  %9 = load i8* %arrayidx.i, align 1, !dbg !382, !tbaa !288
  %cmp20.i = icmp eq i8 %9, 10, !dbg !382
  br i1 %cmp20.i, label %if.then22.i, label %fgets3.exit, !dbg !382

if.then22.i:                                      ; preds = %while.end.i
  store i8 0, i8* %arrayidx.i, align 1, !dbg !383, !tbaa !288
  %.pre.i = load i8** @fgets3.ptr, align 8, !dbg !384, !tbaa !287
  br label %fgets3.exit, !dbg !383

fgets3.exit:                                      ; preds = %while.end.i, %if.then22.i
  %retval.0.i = phi i8* [ %.pre.i, %if.then22.i ], [ %8, %while.end.i ]
  call void @llvm.dbg.value(metadata !{i8* %retval.0.i}, i64 0, metadata !181), !dbg !367
  %cmp = icmp eq i8* %retval.0.i, null, !dbg !367
  br i1 %cmp, label %while.end, label %while.body, !dbg !367

while.body:                                       ; preds = %fgets3.exit
  %inc = add nsw i32 %line.0, 1, !dbg !385
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !185), !dbg !385
  call void @trim(i8* %retval.0.i) #7, !dbg !386
  %10 = load i8* %retval.0.i, align 1, !dbg !387, !tbaa !288
  switch i8 %10, label %if.then [
    i8 64, label %while.cond
    i8 35, label %while.cond
  ], !dbg !387

if.then:                                          ; preds = %while.body
  %cmp8 = icmp eq i32 %nny.0.ph, 0, !dbg !388
  br i1 %cmp8, label %if.then10, label %if.end20, !dbg !388

if.then10:                                        ; preds = %if.then
  call void @llvm.lifetime.start(i64 8, i8* %0) #6, !dbg !362
  call void @llvm.dbg.value(metadata !{i8* %retval.0.i}, i64 0, metadata !389) #6, !dbg !362
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %is.i}, metadata !212) #6, !dbg !390
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !391) #6, !dbg !392
  %cmp.i140 = icmp eq i8 %10, 0, !dbg !393
  br i1 %cmp.i140, label %wordcount.exit.thread, label %for.body.lr.ph.i, !dbg !393

wordcount.exit.thread:                            ; preds = %if.then10
  call void @llvm.lifetime.end(i64 8, i8* %0) #6, !dbg !394
  call void @llvm.dbg.value(metadata !{i32 %n.1.i}, i64 0, metadata !186), !dbg !363
  store i32 0, i32* %ny, align 4, !dbg !363, !tbaa !357
  br label %return, !dbg !395

for.body.lr.ph.i:                                 ; preds = %if.then10
  %call7.i141 = call i16** @__ctype_b_loc() #9, !dbg !396
  %11 = load i16** %call7.i141, align 8, !dbg !396, !tbaa !287
  br label %for.body.i, !dbg !399

for.body.i:                                       ; preds = %if.end21.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end21.i ]
  %12 = phi i8 [ %10, %for.body.lr.ph.i ], [ %16, %if.end21.i ]
  %cur.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %sub22.pre.i, %if.end21.i ]
  %n.035.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %n.1.i, %if.end21.i ]
  %idxprom6.i = sext i8 %12 to i64, !dbg !396
  %arrayidx8.i = getelementptr inbounds i16* %11, i64 %idxprom6.i, !dbg !396
  %13 = load i16* %arrayidx8.i, align 2, !dbg !396, !tbaa !400
  %conv9.i = zext i16 %13 to i32, !dbg !396
  %and.i = and i32 %conv9.i, 8192, !dbg !396
  %idxprom10.i = sext i32 %cur.036.i to i64, !dbg !396
  %arrayidx11.i = getelementptr inbounds [2 x i32]* %is.i, i64 0, i64 %idxprom10.i, !dbg !396
  store i32 %and.i, i32* %arrayidx11.i, align 4, !dbg !396, !tbaa !357
  %14 = trunc i64 %indvars.iv.i to i32, !dbg !401
  %cmp12.i142 = icmp slt i32 %14, 1, !dbg !401
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !401
  %or.cond.i = or i1 %cmp12.i142, %tobool.i, !dbg !401
  %sub22.pre.i = sub nsw i32 1, %cur.036.i, !dbg !402
  br i1 %or.cond.i, label %if.end21.i, label %land.lhs.true16.i, !dbg !401

land.lhs.true16.i:                                ; preds = %for.body.i
  %idxprom17.i = sext i32 %sub22.pre.i to i64, !dbg !401
  %arrayidx18.i = getelementptr inbounds [2 x i32]* %is.i, i64 0, i64 %idxprom17.i, !dbg !401
  %15 = load i32* %arrayidx18.i, align 4, !dbg !401, !tbaa !357
  %tobool19.i = icmp eq i32 %15, 0, !dbg !401
  %inc.i = zext i1 %tobool19.i to i32, !dbg !401
  %inc.n.0.i = add nsw i32 %inc.i, %n.035.i, !dbg !401
  br label %if.end21.i, !dbg !401

if.end21.i:                                       ; preds = %land.lhs.true16.i, %for.body.i
  %n.1.i = phi i32 [ %inc.n.0.i, %land.lhs.true16.i ], [ %n.035.i, %for.body.i ]
  call void @llvm.dbg.value(metadata !{i32 %sub22.pre.i}, i64 0, metadata !391) #6, !dbg !402
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !399
  %arrayidx.i143 = getelementptr inbounds i8* %retval.0.i, i64 %indvars.iv.next.i, !dbg !399
  %16 = load i8* %arrayidx.i143, align 1, !dbg !399, !tbaa !288
  %cmp1.i = icmp eq i8 %16, 0, !dbg !399
  br i1 %cmp1.i, label %wordcount.exit, label %for.body.i, !dbg !399

wordcount.exit:                                   ; preds = %if.end21.i
  call void @llvm.lifetime.end(i64 8, i8* %0) #6, !dbg !394
  call void @llvm.dbg.value(metadata !{i32 %n.1.i}, i64 0, metadata !186), !dbg !363
  store i32 %n.1.i, i32* %ny, align 4, !dbg !363, !tbaa !357
  %cmp12 = icmp eq i32 %n.1.i, 0, !dbg !395
  br i1 %cmp12, label %return, label %if.end, !dbg !395

if.end:                                           ; preds = %wordcount.exit
  %call15 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 249, i32 %n.1.i, i32 8) #7, !dbg !403
  %17 = bitcast i8* %call15 to float**, !dbg !403
  call void @llvm.dbg.value(metadata !{float** %17}, i64 0, metadata !191), !dbg !403
  %mul = mul nsw i32 %n.1.i, 3, !dbg !404
  %add = add nsw i32 %mul, 1, !dbg !404
  %call16 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 250, i32 %add, i32 1) #7, !dbg !404
  call void @llvm.dbg.value(metadata !{i8* %call16}, i64 0, metadata !183), !dbg !404
  %call19 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 251, i32 %add, i32 1) #7, !dbg !405
  call void @llvm.dbg.value(metadata !{i8* %call19}, i64 0, metadata !182), !dbg !405
  br label %if.end20, !dbg !406

if.end20:                                         ; preds = %if.end, %if.then
  %base.1 = phi i8* [ %call19, %if.end ], [ %base.0.ph, %if.then ]
  %fmt.1 = phi i8* [ %call16, %if.end ], [ %fmt.0.ph, %if.then ]
  %nny.1 = phi i32 [ %n.1.i, %if.end ], [ %nny.0.ph, %if.then ]
  %yy.1 = phi float** [ %17, %if.end ], [ %yy.0.ph, %if.then ]
  %18 = trunc i64 %indvars.iv179 to i32, !dbg !407
  %cmp21 = icmp slt i32 %18, %maxx.0.ph, !dbg !407
  br i1 %cmp21, label %if.end35, label %if.then23, !dbg !407

if.then23:                                        ; preds = %if.end20
  %add24 = add nsw i32 %maxx.0.ph, 1024, !dbg !408
  call void @llvm.dbg.value(metadata !{i32 %add24}, i64 0, metadata !188), !dbg !408
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !184), !dbg !410
  %cmp25150 = icmp sgt i32 %nny.1, 0, !dbg !410
  br i1 %cmp25150, label %for.body.lr.ph, label %if.end35.thread, !dbg !410

if.end35.thread:                                  ; preds = %if.then23
  store i8 0, i8* %fmt.1, align 1, !dbg !412, !tbaa !288
  store i8 0, i8* %base.1, align 1, !dbg !413, !tbaa !288
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !184), !dbg !414
  br label %for.end72, !dbg !414

for.body.lr.ph:                                   ; preds = %if.then23
  %mul29 = shl i32 %add24, 2, !dbg !416
  br label %for.body, !dbg !410

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx27 = getelementptr inbounds float** %yy.1, i64 %indvars.iv, !dbg !416
  %19 = load float** %arrayidx27, align 8, !dbg !416, !tbaa !287
  %20 = bitcast float* %19 to i8*, !dbg !416
  %call31 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 257, i8* %20, i32 %mul29) #7, !dbg !416
  %21 = bitcast i8* %call31 to float*, !dbg !416
  store float* %21, float** %arrayidx27, align 8, !dbg !416, !tbaa !287
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !410
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !410
  %exitcond = icmp eq i32 %lftr.wideiv, %nny.1, !dbg !410
  br i1 %exitcond, label %if.end35, label %for.body, !dbg !410

if.end35:                                         ; preds = %for.body, %if.end20
  %maxx.1 = phi i32 [ %maxx.0.ph, %if.end20 ], [ %add24, %for.body ]
  store i8 0, i8* %fmt.1, align 1, !dbg !412, !tbaa !288
  store i8 0, i8* %base.1, align 1, !dbg !413, !tbaa !288
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !184), !dbg !414
  %cmp39152 = icmp sgt i32 %nny.1, 0, !dbg !414
  br i1 %cmp39152, label %for.body41.lr.ph, label %for.end72, !dbg !414

for.body41.lr.ph:                                 ; preds = %if.end35
  %22 = mul i32 %nny.1, 3, !dbg !417
  %add58 = add i32 %22, 4, !dbg !417
  %add64 = add nsw i32 %22, 1, !dbg !419
  br label %for.body41, !dbg !414

for.body41:                                       ; preds = %for.body41.lr.ph, %if.end50
  %indvars.iv169 = phi i64 [ 0, %for.body41.lr.ph ], [ %indvars.iv.next170, %if.end50 ]
  %k.1155 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc71, %if.end50 ]
  %fmt.2154 = phi i8* [ %fmt.1, %for.body41.lr.ph ], [ %call62, %if.end50 ]
  %base.2153 = phi i8* [ %base.1, %for.body41.lr.ph ], [ %call68, %if.end50 ]
  %call42 = call i8* @strcpy(i8* %fmt.2154, i8* %base.2153) #7, !dbg !420
  %strlen = call i64 @strlen(i8* %fmt.2154), !dbg !421
  %endptr = getelementptr i8* %fmt.2154, i64 %strlen, !dbg !421
  %23 = bitcast i8* %endptr to i32*, !dbg !421
  store i32 6712357, i32* %23, align 1, !dbg !421
  %call44 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %retval.0.i, i8* %fmt.2154, double* %lf) #7, !dbg !422
  call void @llvm.dbg.value(metadata !{i32 %call44}, i64 0, metadata !189), !dbg !422
  switch i32 %call44, label %if.end50 [
    i32 -1, label %for.end72
    i32 0, label %for.end72
  ], !dbg !423

if.end50:                                         ; preds = %for.body41
  call void @llvm.dbg.value(metadata !{double* %lf}, i64 0, metadata !190), !dbg !424
  %24 = load double* %lf, align 8, !dbg !424, !tbaa !425
  %conv51 = fptrunc double %24 to float, !dbg !424
  %arrayidx54 = getelementptr inbounds float** %yy.1, i64 %indvars.iv169, !dbg !424
  %25 = load float** %arrayidx54, align 8, !dbg !424, !tbaa !287
  %arrayidx55 = getelementptr inbounds float* %25, i64 %indvars.iv179, !dbg !424
  store float %conv51, float* %arrayidx55, align 4, !dbg !424, !tbaa !322
  %call62 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 272, i8* %fmt.2154, i32 %add58) #7, !dbg !417
  call void @llvm.dbg.value(metadata !{i8* %call62}, i64 0, metadata !183), !dbg !417
  %call68 = call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 273, i8* %base.2153, i32 %add64) #7, !dbg !419
  call void @llvm.dbg.value(metadata !{i8* %call68}, i64 0, metadata !182), !dbg !419
  %strlen138 = call i64 @strlen(i8* %call68), !dbg !426
  %endptr139 = getelementptr i8* %call68, i64 %strlen138, !dbg !426
  %26 = bitcast i8* %endptr139 to i32*, !dbg !426
  store i32 7547429, i32* %26, align 1, !dbg !426
  %indvars.iv.next170 = add i64 %indvars.iv169, 1, !dbg !414
  %inc71 = add nsw i32 %k.1155, 1, !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %inc71}, i64 0, metadata !184), !dbg !414
  %27 = trunc i64 %indvars.iv.next170 to i32, !dbg !414
  %cmp39 = icmp slt i32 %27, %nny.1, !dbg !414
  br i1 %cmp39, label %for.body41, label %for.end72, !dbg !414

for.end72:                                        ; preds = %if.end50, %for.body41, %for.body41, %if.end35.thread, %if.end35
  %maxx.1182 = phi i32 [ %maxx.1, %if.end35 ], [ %add24, %if.end35.thread ], [ %maxx.1, %for.body41 ], [ %maxx.1, %for.body41 ], [ %maxx.1, %if.end50 ]
  %k.1.lcssa = phi i32 [ 0, %if.end35 ], [ 0, %if.end35.thread ], [ %k.1155, %for.body41 ], [ %k.1155, %for.body41 ], [ %inc71, %if.end50 ]
  %fmt.2.lcssa = phi i8* [ %fmt.1, %if.end35 ], [ %fmt.1, %if.end35.thread ], [ %fmt.2154, %for.body41 ], [ %fmt.2154, %for.body41 ], [ %call62, %if.end50 ]
  %base.2.lcssa = phi i8* [ %base.1, %if.end35 ], [ %base.1, %if.end35.thread ], [ %base.2153, %for.body41 ], [ %base.2153, %for.body41 ], [ %call68, %if.end50 ]
  %cmp73 = icmp eq i32 %k.1.lcssa, %nny.1, !dbg !427
  br i1 %cmp73, label %if.end88, label %if.then75, !dbg !427

if.then75:                                        ; preds = %for.end72
  %28 = load %struct._IO_FILE** @stderr, align 8, !dbg !428, !tbaa !287
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([39 x i8]* @.str42, i64 0, i64 0), i32 %k.1.lcssa, i32 %inc, i8* %fn) #7, !dbg !428
  %cmp78158 = icmp slt i32 %k.1.lcssa, %nny.1, !dbg !430
  br i1 %cmp78158, label %for.body80.lr.ph, label %if.end88, !dbg !430

for.body80.lr.ph:                                 ; preds = %if.then75
  %29 = sext i32 %k.1.lcssa to i64
  br label %for.body80, !dbg !430

for.body80:                                       ; preds = %for.body80, %for.body80.lr.ph
  %indvars.iv171 = phi i64 [ %29, %for.body80.lr.ph ], [ %indvars.iv.next172, %for.body80 ]
  %arrayidx83 = getelementptr inbounds float** %yy.1, i64 %indvars.iv171, !dbg !432
  %30 = load float** %arrayidx83, align 8, !dbg !432, !tbaa !287
  %arrayidx84 = getelementptr inbounds float* %30, i64 %indvars.iv179, !dbg !432
  store float 0.000000e+00, float* %arrayidx84, align 4, !dbg !432, !tbaa !322
  %indvars.iv.next172 = add i64 %indvars.iv171, 1, !dbg !430
  %lftr.wideiv173 = trunc i64 %indvars.iv.next172 to i32, !dbg !430
  %exitcond174 = icmp eq i32 %lftr.wideiv173, %nny.1, !dbg !430
  br i1 %exitcond174, label %if.end88, label %for.body80, !dbg !430

if.end88:                                         ; preds = %if.then75, %for.body80, %for.end72
  %indvars.iv.next180 = add i64 %indvars.iv179, 1, !dbg !433
  %inc89 = add nsw i32 %nx.0.ph, 1, !dbg !434
  call void @llvm.dbg.value(metadata !{i32 %inc89}, i64 0, metadata !187), !dbg !434
  br label %while.cond.outer, !dbg !433

while.end:                                        ; preds = %if.end.i, %fgets3.exit
  call void @ffclose(%struct._IO_FILE* %call) #7, !dbg !435
  store float** %yy.0.ph, float*** %y, align 8, !dbg !436, !tbaa !287
  br label %return, !dbg !437

return:                                           ; preds = %wordcount.exit, %wordcount.exit.thread, %while.end
  %retval.0 = phi i32 [ %nx.0.ph, %while.end ], [ 0, %wordcount.exit.thread ], [ 0, %wordcount.exit ]
  ret i32 %retval.0, !dbg !438
}

; Function Attrs: optsize
declare void @trim(i8*) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind optsize uwtable
define void @write_xvg(i8* %fn, i8* %title, i32 %nx, i32 %ny, float** nocapture %y, i8** %leg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !196), !dbg !439
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !197), !dbg !439
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !198), !dbg !439
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !199), !dbg !439
  tail call void @llvm.dbg.value(metadata !{float** %y}, i64 0, metadata !200), !dbg !439
  tail call void @llvm.dbg.value(metadata !{i8** %leg}, i64 0, metadata !201), !dbg !439
  %call = tail call %struct._IO_FILE* @xvgropen(i8* %fn, i8* %title, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #10, !dbg !440
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !202), !dbg !440
  %tobool = icmp eq i8** %leg, null, !dbg !441
  br i1 %tobool, label %for.cond.preheader, label %if.then, !dbg !441

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %ny, -1, !dbg !442
  tail call void @xvgr_legend(%struct._IO_FILE* %call, i32 %sub, i8** %leg) #10, !dbg !442
  br label %for.cond.preheader, !dbg !442

for.cond.preheader:                               ; preds = %entry, %if.then
  %cmp21 = icmp sgt i32 %nx, 0, !dbg !443
  br i1 %cmp21, label %for.cond1.preheader.lr.ph, label %for.end10, !dbg !443

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %cmp219 = icmp sgt i32 %ny, 0, !dbg !445
  br label %for.cond1.preheader, !dbg !443

for.cond1.preheader:                              ; preds = %for.end, %for.cond1.preheader.lr.ph
  %indvars.iv23 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next24, %for.end ]
  br i1 %cmp219, label %for.body3, label %for.end, !dbg !445

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds float** %y, i64 %indvars.iv, !dbg !448
  %0 = load float** %arrayidx, align 8, !dbg !448, !tbaa !287
  %arrayidx5 = getelementptr inbounds float* %0, i64 %indvars.iv23, !dbg !448
  %1 = load float* %arrayidx5, align 4, !dbg !448, !tbaa !322
  %conv = fpext float %1 to double, !dbg !448
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([9 x i8]* @.str45, i64 0, i64 0), double %conv) #7, !dbg !448
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !445
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !445
  %exitcond = icmp eq i32 %lftr.wideiv, %ny, !dbg !445
  br i1 %exitcond, label %for.end, label %for.body3, !dbg !445

for.end:                                          ; preds = %for.body3, %for.cond1.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %call), !dbg !450
  %indvars.iv.next24 = add i64 %indvars.iv23, 1, !dbg !443
  %lftr.wideiv25 = trunc i64 %indvars.iv.next24 to i32, !dbg !443
  %exitcond26 = icmp eq i32 %lftr.wideiv25, %nx, !dbg !443
  br i1 %exitcond26, label %for.end10, label %for.cond1.preheader, !dbg !443

for.end10:                                        ; preds = %for.end, %for.cond.preheader
  tail call void @ffclose(%struct._IO_FILE* %call) #7, !dbg !451
  ret void, !dbg !452
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { nounwind optsize readnone }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !238, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !91, metadata !102, metadata !109, metadata !118, metadata !126, metadata !142, metadata !155, metadata !170, metadata !192, metadata !205, metadata !217, metadata !224, metadata !231}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"xvgropen", metadata !"xvgropen", metadata !"", i32 57, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IO_FILE* (i8*, i8*, i8*, i8*)* @xvgropen, null, null, metadata !82, i32 58} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 58] [xvgropen]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !32, metadata !32, metadata !32, metadata !32}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!27 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !31, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !52, metadata !53, metadata !54, metadata !55, metadata !58, metadata !60, metadata !62, metadata !66, metadata !68, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !77, metadata !78}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!33 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!36 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!37 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!38 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!39 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!40 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!41 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!42 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!43 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!44 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !45} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!46 = metadata !{i32 786451, metadata !27, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !47, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!47 = metadata !{metadata !48, metadata !49, metadata !51}
!48 = metadata !{i32 786445, metadata !27, metadata !46, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786445, metadata !27, metadata !46, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !50} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!51 = metadata !{i32 786445, metadata !27, metadata !46, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!52 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !50} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!53 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!54 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!55 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !56} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!56 = metadata !{i32 786454, metadata !27, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!57 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!58 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !59} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!59 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!60 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !61} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!61 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!62 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !63} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !33, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!66 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !67} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!68 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !69} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!69 = metadata !{i32 786454, metadata !27, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!70 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!71 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!72 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!73 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!74 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !75} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!75 = metadata !{i32 786454, metadata !27, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!76 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!77 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!78 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !79} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!79 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !33, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88}
!83 = metadata !{i32 786689, metadata !20, metadata !"fn", metadata !21, i32 16777273, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 57]
!84 = metadata !{i32 786689, metadata !20, metadata !"title", metadata !21, i32 33554489, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 57]
!85 = metadata !{i32 786689, metadata !20, metadata !"xaxis", metadata !21, i32 50331705, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xaxis] [line 57]
!86 = metadata !{i32 786689, metadata !20, metadata !"yaxis", metadata !21, i32 67108921, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [yaxis] [line 57]
!87 = metadata !{i32 786688, metadata !20, metadata !"xvgr", metadata !21, i32 59, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xvgr] [line 59]
!88 = metadata !{i32 786688, metadata !20, metadata !"t", metadata !21, i32 60, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 60]
!89 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!90 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!91 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"xvgr_view", metadata !"xvgr_view", metadata !"", i32 80, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, float, float)* @xvgr_view, null, null, metadata !96, i32 81} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 81] [xvgr_view]
!92 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!93 = metadata !{null, metadata !24, metadata !94, metadata !94, metadata !94, metadata !94}
!94 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!95 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101}
!97 = metadata !{i32 786689, metadata !91, metadata !"out", metadata !21, i32 16777296, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 80]
!98 = metadata !{i32 786689, metadata !91, metadata !"xmin", metadata !21, i32 33554512, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xmin] [line 80]
!99 = metadata !{i32 786689, metadata !91, metadata !"ymin", metadata !21, i32 50331728, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ymin] [line 80]
!100 = metadata !{i32 786689, metadata !91, metadata !"xmax", metadata !21, i32 67108944, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xmax] [line 80]
!101 = metadata !{i32 786689, metadata !91, metadata !"ymax", metadata !21, i32 83886160, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ymax] [line 80]
!102 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"xvgr_world", metadata !"xvgr_world", metadata !"", i32 85, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, float, float, float, float)* @xvgr_world, null, null, metadata !103, i32 86} ; [ DW_TAG_subprogram ] [line 85] [def] [scope 86] [xvgr_world]
!103 = metadata !{metadata !104, metadata !105, metadata !106, metadata !107, metadata !108}
!104 = metadata !{i32 786689, metadata !102, metadata !"out", metadata !21, i32 16777301, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 85]
!105 = metadata !{i32 786689, metadata !102, metadata !"xmin", metadata !21, i32 33554517, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xmin] [line 85]
!106 = metadata !{i32 786689, metadata !102, metadata !"ymin", metadata !21, i32 50331733, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ymin] [line 85]
!107 = metadata !{i32 786689, metadata !102, metadata !"xmax", metadata !21, i32 67108949, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xmax] [line 85]
!108 = metadata !{i32 786689, metadata !102, metadata !"ymax", metadata !21, i32 83886165, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ymax] [line 85]
!109 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"xvgr_legend", metadata !"xvgr_legend", metadata !"", i32 93, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i8**)* @xvgr_legend, null, null, metadata !113, i32 94} ; [ DW_TAG_subprogram ] [line 93] [def] [scope 94] [xvgr_legend]
!110 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{null, metadata !24, metadata !30, metadata !112}
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117}
!114 = metadata !{i32 786689, metadata !109, metadata !"out", metadata !21, i32 16777309, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 93]
!115 = metadata !{i32 786689, metadata !109, metadata !"nsets", metadata !21, i32 33554525, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsets] [line 93]
!116 = metadata !{i32 786689, metadata !109, metadata !"setname", metadata !21, i32 50331741, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [setname] [line 93]
!117 = metadata !{i32 786688, metadata !109, metadata !"i", metadata !21, i32 95, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 95]
!118 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"xvgr_line_props", metadata !"xvgr_line_props", metadata !"", i32 112, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, i32)* @xvgr_line_props, null, null, metadata !121, i32 113} ; [ DW_TAG_subprogram ] [line 112] [def] [scope 113] [xvgr_line_props]
!119 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{null, metadata !24, metadata !30, metadata !30, metadata !30}
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !125}
!122 = metadata !{i32 786689, metadata !118, metadata !"out", metadata !21, i32 16777328, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 112]
!123 = metadata !{i32 786689, metadata !118, metadata !"NrSet", metadata !21, i32 33554544, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NrSet] [line 112]
!124 = metadata !{i32 786689, metadata !118, metadata !"LineStyle", metadata !21, i32 50331760, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [LineStyle] [line 112]
!125 = metadata !{i32 786689, metadata !118, metadata !"LineColor", metadata !21, i32 67108976, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [LineColor] [line 112]
!126 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"xvgr_box", metadata !"xvgr_box", metadata !"", i32 122, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, float, float, float, float, i32, i32, i32, i32, i32, i32)* @xvgr_box, null, null, metadata !129, i32 127} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 127] [xvgr_box]
!127 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!128 = metadata !{null, metadata !24, metadata !30, metadata !94, metadata !94, metadata !94, metadata !94, metadata !30, metadata !30, metadata !30, metadata !30, metadata !30, metadata !30}
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141}
!130 = metadata !{i32 786689, metadata !126, metadata !"out", metadata !21, i32 16777338, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 122]
!131 = metadata !{i32 786689, metadata !126, metadata !"LocType", metadata !21, i32 33554555, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [LocType] [line 123]
!132 = metadata !{i32 786689, metadata !126, metadata !"xmin", metadata !21, i32 50331772, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xmin] [line 124]
!133 = metadata !{i32 786689, metadata !126, metadata !"ymin", metadata !21, i32 67108988, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ymin] [line 124]
!134 = metadata !{i32 786689, metadata !126, metadata !"xmax", metadata !21, i32 83886204, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xmax] [line 124]
!135 = metadata !{i32 786689, metadata !126, metadata !"ymax", metadata !21, i32 100663420, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ymax] [line 124]
!136 = metadata !{i32 786689, metadata !126, metadata !"LineStyle", metadata !21, i32 117440637, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [LineStyle] [line 125]
!137 = metadata !{i32 786689, metadata !126, metadata !"LineWidth", metadata !21, i32 134217853, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [LineWidth] [line 125]
!138 = metadata !{i32 786689, metadata !126, metadata !"LineColor", metadata !21, i32 150995069, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [LineColor] [line 125]
!139 = metadata !{i32 786689, metadata !126, metadata !"BoxFill", metadata !21, i32 167772286, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BoxFill] [line 126]
!140 = metadata !{i32 786689, metadata !126, metadata !"BoxColor", metadata !21, i32 184549502, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BoxColor] [line 126]
!141 = metadata !{i32 786689, metadata !126, metadata !"BoxPattern", metadata !21, i32 201326718, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BoxPattern] [line 126]
!142 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"lsq_y_ax", metadata !"lsq_y_ax", metadata !"", i32 141, metadata !143, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, float*, float*, float*)* @lsq_y_ax, null, null, metadata !146, i32 142} ; [ DW_TAG_subprogram ] [line 141] [def] [scope 142] [lsq_y_ax]
!143 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!144 = metadata !{null, metadata !30, metadata !145, metadata !145, metadata !145}
!145 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!146 = metadata !{metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !154}
!147 = metadata !{i32 786689, metadata !142, metadata !"n", metadata !21, i32 16777357, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 141]
!148 = metadata !{i32 786689, metadata !142, metadata !"x", metadata !21, i32 33554573, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 141]
!149 = metadata !{i32 786689, metadata !142, metadata !"y", metadata !21, i32 50331789, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 141]
!150 = metadata !{i32 786689, metadata !142, metadata !"a", metadata !21, i32 67109005, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 141]
!151 = metadata !{i32 786688, metadata !142, metadata !"i", metadata !21, i32 143, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 143]
!152 = metadata !{i32 786688, metadata !142, metadata !"xx", metadata !21, i32 144, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx] [line 144]
!153 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!154 = metadata !{i32 786688, metadata !142, metadata !"yx", metadata !21, i32 144, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yx] [line 144]
!155 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"lsq_y_ax_b", metadata !"lsq_y_ax_b", metadata !"", i32 154, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32, float*, float*, float*, float*)* @lsq_y_ax_b, null, null, metadata !158, i32 155} ; [ DW_TAG_subprogram ] [line 154] [def] [scope 155] [lsq_y_ax_b]
!156 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!157 = metadata !{metadata !94, metadata !30, metadata !145, metadata !145, metadata !145, metadata !145}
!158 = metadata !{metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169}
!159 = metadata !{i32 786689, metadata !155, metadata !"n", metadata !21, i32 16777370, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 154]
!160 = metadata !{i32 786689, metadata !155, metadata !"x", metadata !21, i32 33554586, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 154]
!161 = metadata !{i32 786689, metadata !155, metadata !"y", metadata !21, i32 50331802, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 154]
!162 = metadata !{i32 786689, metadata !155, metadata !"a", metadata !21, i32 67109018, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 154]
!163 = metadata !{i32 786689, metadata !155, metadata !"b", metadata !21, i32 83886234, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 154]
!164 = metadata !{i32 786688, metadata !155, metadata !"i", metadata !21, i32 156, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 156]
!165 = metadata !{i32 786688, metadata !155, metadata !"yx", metadata !21, i32 157, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yx] [line 157]
!166 = metadata !{i32 786688, metadata !155, metadata !"xx", metadata !21, i32 157, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx] [line 157]
!167 = metadata !{i32 786688, metadata !155, metadata !"sx", metadata !21, i32 157, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sx] [line 157]
!168 = metadata !{i32 786688, metadata !155, metadata !"sy", metadata !21, i32 157, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sy] [line 157]
!169 = metadata !{i32 786688, metadata !155, metadata !"chi2", metadata !21, i32 157, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chi2] [line 157]
!170 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_xvg", metadata !"read_xvg", metadata !"", i32 225, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, float***, i32*)* @read_xvg, null, null, metadata !176, i32 226} ; [ DW_TAG_subprogram ] [line 225] [def] [scope 226] [read_xvg]
!171 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!172 = metadata !{metadata !30, metadata !32, metadata !173, metadata !175}
!173 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !174} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!175 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!176 = metadata !{metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191}
!177 = metadata !{i32 786689, metadata !170, metadata !"fn", metadata !21, i32 16777441, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 225]
!178 = metadata !{i32 786689, metadata !170, metadata !"y", metadata !21, i32 33554657, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 225]
!179 = metadata !{i32 786689, metadata !170, metadata !"ny", metadata !21, i32 50331873, metadata !175, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 225]
!180 = metadata !{i32 786688, metadata !170, metadata !"fp", metadata !21, i32 227, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 227]
!181 = metadata !{i32 786688, metadata !170, metadata !"ptr", metadata !21, i32 228, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 228]
!182 = metadata !{i32 786688, metadata !170, metadata !"base", metadata !21, i32 229, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 229]
!183 = metadata !{i32 786688, metadata !170, metadata !"fmt", metadata !21, i32 230, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 230]
!184 = metadata !{i32 786688, metadata !170, metadata !"k", metadata !21, i32 231, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 231]
!185 = metadata !{i32 786688, metadata !170, metadata !"line", metadata !21, i32 231, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 231]
!186 = metadata !{i32 786688, metadata !170, metadata !"nny", metadata !21, i32 231, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nny] [line 231]
!187 = metadata !{i32 786688, metadata !170, metadata !"nx", metadata !21, i32 231, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 231]
!188 = metadata !{i32 786688, metadata !170, metadata !"maxx", metadata !21, i32 231, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxx] [line 231]
!189 = metadata !{i32 786688, metadata !170, metadata !"rval", metadata !21, i32 231, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rval] [line 231]
!190 = metadata !{i32 786688, metadata !170, metadata !"lf", metadata !21, i32 232, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lf] [line 232]
!191 = metadata !{i32 786688, metadata !170, metadata !"yy", metadata !21, i32 233, metadata !174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yy] [line 233]
!192 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"write_xvg", metadata !"write_xvg", metadata !"", i32 292, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i32, float**, i8**)* @write_xvg, null, null, metadata !195, i32 293} ; [ DW_TAG_subprogram ] [line 292] [def] [scope 293] [write_xvg]
!193 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!194 = metadata !{null, metadata !32, metadata !32, metadata !30, metadata !30, metadata !174, metadata !112}
!195 = metadata !{metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204}
!196 = metadata !{i32 786689, metadata !192, metadata !"fn", metadata !21, i32 16777508, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 292]
!197 = metadata !{i32 786689, metadata !192, metadata !"title", metadata !21, i32 33554724, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 292]
!198 = metadata !{i32 786689, metadata !192, metadata !"nx", metadata !21, i32 50331940, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 292]
!199 = metadata !{i32 786689, metadata !192, metadata !"ny", metadata !21, i32 67109156, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 292]
!200 = metadata !{i32 786689, metadata !192, metadata !"y", metadata !21, i32 83886372, metadata !174, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 292]
!201 = metadata !{i32 786689, metadata !192, metadata !"leg", metadata !21, i32 100663588, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [leg] [line 292]
!202 = metadata !{i32 786688, metadata !192, metadata !"fp", metadata !21, i32 294, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 294]
!203 = metadata !{i32 786688, metadata !192, metadata !"i", metadata !21, i32 295, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 295]
!204 = metadata !{i32 786688, metadata !192, metadata !"j", metadata !21, i32 295, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 295]
!205 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"wordcount", metadata !"wordcount", metadata !"", i32 206, metadata !206, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !208, i32 207} ; [ DW_TAG_subprogram ] [line 206] [local] [def] [scope 207] [wordcount]
!206 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!207 = metadata !{metadata !30, metadata !32}
!208 = metadata !{metadata !209, metadata !210, metadata !211, metadata !212, metadata !216}
!209 = metadata !{i32 786689, metadata !205, metadata !"ptr", metadata !21, i32 16777422, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ptr] [line 206]
!210 = metadata !{i32 786688, metadata !205, metadata !"i", metadata !21, i32 208, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 208]
!211 = metadata !{i32 786688, metadata !205, metadata !"n", metadata !21, i32 208, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 208]
!212 = metadata !{i32 786688, metadata !205, metadata !"is", metadata !21, i32 208, metadata !213, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is] [line 208]
!213 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !30, metadata !214, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!214 = metadata !{metadata !215}
!215 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!216 = metadata !{i32 786688, metadata !205, metadata !"cur", metadata !21, i32 209, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cur] [line 209]
!217 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"fgets3", metadata !"fgets3", metadata !"", i32 179, metadata !218, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !220, i32 180} ; [ DW_TAG_subprogram ] [line 179] [local] [def] [scope 180] [fgets3]
!218 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !219, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!219 = metadata !{metadata !32, metadata !24}
!220 = metadata !{metadata !221, metadata !222, metadata !223}
!221 = metadata !{i32 786689, metadata !217, metadata !"fp", metadata !21, i32 16777395, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 179]
!222 = metadata !{i32 786688, metadata !217, metadata !"p", metadata !21, i32 183, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 183]
!223 = metadata !{i32 786688, metadata !217, metadata !"slen", metadata !21, i32 184, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slen] [line 184]
!224 = metadata !{i32 786478, metadata !225, metadata !226, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !227, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !229, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!225 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!226 = metadata !{i32 786473, metadata !225}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!227 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !228, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!228 = metadata !{metadata !94, metadata !94}
!229 = metadata !{metadata !230}
!230 = metadata !{i32 786689, metadata !224, metadata !"x", metadata !226, i32 16777413, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!231 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"use_xmgr", metadata !"use_xmgr", metadata !"", i32 45, metadata !232, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !234, i32 46} ; [ DW_TAG_subprogram ] [line 45] [local] [def] [scope 46] [use_xmgr]
!232 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !233, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!233 = metadata !{metadata !30}
!234 = metadata !{metadata !235, metadata !237}
!235 = metadata !{i32 786688, metadata !236, metadata !"env", metadata !21, i32 47, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [env] [line 47]
!236 = metadata !{i32 786443, metadata !1, metadata !231} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!237 = metadata !{i32 786688, metadata !236, metadata !"bXMGR", metadata !21, i32 48, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bXMGR] [line 48]
!238 = metadata !{metadata !239, metadata !240, metadata !241, metadata !245}
!239 = metadata !{i32 786484, i32 0, metadata !217, metadata !"ptr", metadata !"ptr", metadata !"", metadata !21, i32 181, metadata !32, i32 1, i32 1, i8** @fgets3.ptr, null} ; [ DW_TAG_variable ] [ptr] [line 181] [local] [def]
!240 = metadata !{i32 786484, i32 0, metadata !217, metadata !"len", metadata !"len", metadata !"", metadata !21, i32 182, metadata !30, i32 1, i32 1, i32* @fgets3.len, null} ; [ DW_TAG_variable ] [len] [line 182] [local] [def]
!241 = metadata !{i32 786484, i32 0, null, metadata !"BoxFillStr", metadata !"BoxFillStr", metadata !"", metadata !21, i32 120, metadata !242, i32 1, i32 1, [3 x i8*]* @BoxFillStr, null} ; [ DW_TAG_variable ] [BoxFillStr] [line 120] [local] [def]
!242 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !32, metadata !243, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from ]
!243 = metadata !{metadata !244}
!244 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!245 = metadata !{i32 786484, i32 0, null, metadata !"LocTypeStr", metadata !"LocTypeStr", metadata !"", metadata !21, i32 119, metadata !246, i32 1, i32 1, [2 x i8*]* @LocTypeStr, null} ; [ DW_TAG_variable ] [LocTypeStr] [line 119] [local] [def]
!246 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !32, metadata !214, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from ]
!247 = metadata !{i32 57, i32 0, metadata !20, null}
!248 = metadata !{i32 60, i32 0, metadata !20, null}
!249 = metadata !{i32 62, i32 0, metadata !20, null}
!250 = metadata !{i32 63, i32 0, metadata !20, null}
!251 = metadata !{i32 64, i32 0, metadata !20, null}
!252 = metadata !{i32 65, i32 0, metadata !20, null}
!253 = metadata !{i32 66, i32 0, metadata !20, null}
!254 = metadata !{i32 67, i32 0, metadata !20, null}
!255 = metadata !{i32 68, i32 0, metadata !20, null}
!256 = metadata !{i32 69, i32 0, metadata !20, null}
!257 = metadata !{i32 70, i32 0, metadata !20, null}
!258 = metadata !{i32 71, i32 0, metadata !20, null}
!259 = metadata !{i32 75, i32 0, metadata !20, null}
!260 = metadata !{i32 77, i32 0, metadata !20, null}
!261 = metadata !{i32 80, i32 0, metadata !91, null}
!262 = metadata !{i32 82, i32 0, metadata !91, null}
!263 = metadata !{i32 83, i32 0, metadata !91, null}
!264 = metadata !{i32 85, i32 0, metadata !102, null}
!265 = metadata !{i32 87, i32 0, metadata !102, null}
!266 = metadata !{i32 91, i32 0, metadata !102, null}
!267 = metadata !{i32 93, i32 0, metadata !109, null}
!268 = metadata !{i32 786689, metadata !91, metadata !"out", metadata !21, i32 16777296, metadata !24, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [out] [line 80]
!269 = metadata !{i32 97, i32 0, metadata !109, null}
!270 = metadata !{i32 80, i32 0, metadata !91, metadata !269}
!271 = metadata !{float 0x3FC3333340000000}
!272 = metadata !{i32 786689, metadata !91, metadata !"xmin", metadata !21, i32 33554512, metadata !94, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [xmin] [line 80]
!273 = metadata !{i32 786689, metadata !91, metadata !"ymin", metadata !21, i32 50331728, metadata !94, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [ymin] [line 80]
!274 = metadata !{float 7.500000e-01}
!275 = metadata !{i32 786689, metadata !91, metadata !"xmax", metadata !21, i32 67108944, metadata !94, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [xmax] [line 80]
!276 = metadata !{float 0x3FEB333340000000}
!277 = metadata !{i32 786689, metadata !91, metadata !"ymax", metadata !21, i32 83886160, metadata !94, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [ymax] [line 80]
!278 = metadata !{i32 82, i32 0, metadata !91, metadata !269}
!279 = metadata !{i32 98, i32 0, metadata !109, null}
!280 = metadata !{i32 99, i32 0, metadata !109, null}
!281 = metadata !{i32 100, i32 0, metadata !109, null}
!282 = metadata !{i32 101, i32 0, metadata !109, null}
!283 = metadata !{i32 102, i32 0, metadata !109, null}
!284 = metadata !{i32 103, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !109, i32 103, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!286 = metadata !{i32 104, i32 0, metadata !285, null}
!287 = metadata !{metadata !"any pointer", metadata !288}
!288 = metadata !{metadata !"omnipotent char", metadata !289}
!289 = metadata !{metadata !"Simple C/C++ TBAA"}
!290 = metadata !{i32 108, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !285, i32 104, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!292 = metadata !{i32 110, i32 0, metadata !109, null}
!293 = metadata !{i32 112, i32 0, metadata !118, null}
!294 = metadata !{i32 114, i32 0, metadata !118, null}
!295 = metadata !{i32 115, i32 0, metadata !118, null}
!296 = metadata !{i32 116, i32 0, metadata !118, null}
!297 = metadata !{i32 117, i32 0, metadata !118, null}
!298 = metadata !{i32 122, i32 0, metadata !126, null}
!299 = metadata !{i32 123, i32 0, metadata !126, null}
!300 = metadata !{i32 124, i32 0, metadata !126, null}
!301 = metadata !{i32 125, i32 0, metadata !126, null}
!302 = metadata !{i32 126, i32 0, metadata !126, null}
!303 = metadata !{i32 128, i32 0, metadata !126, null}
!304 = metadata !{i32 129, i32 0, metadata !126, null}
!305 = metadata !{i32 130, i32 0, metadata !126, null}
!306 = metadata !{i32 131, i32 0, metadata !126, null}
!307 = metadata !{i32 132, i32 0, metadata !126, null}
!308 = metadata !{i32 133, i32 0, metadata !126, null}
!309 = metadata !{i32 134, i32 0, metadata !126, null}
!310 = metadata !{i32 135, i32 0, metadata !126, null}
!311 = metadata !{i32 136, i32 0, metadata !126, null}
!312 = metadata !{i32 137, i32 0, metadata !126, null}
!313 = metadata !{i32 138, i32 0, metadata !126, null}
!314 = metadata !{i32 139, i32 0, metadata !126, null}
!315 = metadata !{i32 141, i32 0, metadata !142, null}
!316 = metadata !{double 0.000000e+00}
!317 = metadata !{i32 146, i32 0, metadata !142, null}
!318 = metadata !{i32 147, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !142, i32 147, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!320 = metadata !{i32 148, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !319, i32 147, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!322 = metadata !{metadata !"float", metadata !288}
!323 = metadata !{i32 149, i32 0, metadata !321, null}
!324 = metadata !{i32 151, i32 0, metadata !142, null}
!325 = metadata !{i32 152, i32 0, metadata !142, null}
!326 = metadata !{i32 154, i32 0, metadata !155, null}
!327 = metadata !{i32 159, i32 0, metadata !155, null}
!328 = metadata !{i32 160, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !155, i32 160, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!330 = metadata !{i32 161, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !329, i32 160, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!332 = metadata !{i32 162, i32 0, metadata !331, null}
!333 = metadata !{i32 163, i32 0, metadata !331, null}
!334 = metadata !{i32 164, i32 0, metadata !331, null}
!335 = metadata !{i32 166, i32 0, metadata !155, null}
!336 = metadata !{i32 167, i32 0, metadata !155, null}
!337 = metadata !{i32 169, i32 0, metadata !155, null}
!338 = metadata !{i32 170, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !155, i32 170, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!340 = metadata !{i32 171, i32 0, metadata !339, null}
!341 = metadata !{i32 786689, metadata !224, metadata !"x", metadata !226, i32 16777413, metadata !94, i32 0, metadata !340} ; [ DW_TAG_arg_variable ] [x] [line 197]
!342 = metadata !{i32 197, i32 0, metadata !224, metadata !340}
!343 = metadata !{i32 199, i32 0, metadata !344, metadata !340}
!344 = metadata !{i32 786443, metadata !225, metadata !224} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!345 = metadata !{i32 173, i32 0, metadata !155, null}
!346 = metadata !{i32 174, i32 0, metadata !155, null}
!347 = metadata !{i32 177, i32 0, metadata !155, null}
!348 = metadata !{i32 225, i32 0, metadata !170, null}
!349 = metadata !{i8* null}
!350 = metadata !{i32 229, i32 0, metadata !170, null}
!351 = metadata !{i32 230, i32 0, metadata !170, null}
!352 = metadata !{i32 231, i32 0, metadata !170, null}
!353 = metadata !{i32 232, i32 0, metadata !170, null}
!354 = metadata !{float** null}
!355 = metadata !{i32 233, i32 0, metadata !170, null}
!356 = metadata !{i32 235, i32 0, metadata !170, null}
!357 = metadata !{metadata !"int", metadata !288}
!358 = metadata !{i32 236, i32 0, metadata !170, null}
!359 = metadata !{i32 237, i32 0, metadata !170, null}
!360 = metadata !{i32 238, i32 0, metadata !170, null}
!361 = metadata !{i32 239, i32 0, metadata !170, null}
!362 = metadata !{i32 206, i32 0, metadata !205, metadata !363}
!363 = metadata !{i32 245, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !365, i32 244, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!365 = metadata !{i32 786443, metadata !1, metadata !366, i32 243, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!366 = metadata !{i32 786443, metadata !1, metadata !170, i32 240, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!367 = metadata !{i32 240, i32 0, metadata !170, null}
!368 = metadata !{i32 786689, metadata !217, metadata !"fp", metadata !21, i32 16777395, metadata !24, i32 0, metadata !367} ; [ DW_TAG_arg_variable ] [fp] [line 179]
!369 = metadata !{i32 179, i32 0, metadata !217, metadata !367}
!370 = metadata !{i32 186, i32 0, metadata !217, metadata !367}
!371 = metadata !{i32 187, i32 0, metadata !217, metadata !367}
!372 = metadata !{i32 189, i32 0, metadata !217, metadata !367}
!373 = metadata !{i32 191, i32 0, metadata !217, metadata !367}
!374 = metadata !{i32 786688, metadata !217, metadata !"p", metadata !21, i32 183, metadata !32, i32 0, metadata !367} ; [ DW_TAG_auto_variable ] [p] [line 183]
!375 = metadata !{i32 192, i32 0, metadata !217, metadata !367}
!376 = metadata !{i32 194, i32 0, metadata !377, metadata !367}
!377 = metadata !{i32 786443, metadata !1, metadata !217, i32 192, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!378 = metadata !{i32 196, i32 0, metadata !377, metadata !367}
!379 = metadata !{i32 197, i32 0, metadata !377, metadata !367}
!380 = metadata !{i32 195, i32 0, metadata !377, metadata !367}
!381 = metadata !{i32 200, i32 0, metadata !217, metadata !367}
!382 = metadata !{i32 201, i32 0, metadata !217, metadata !367}
!383 = metadata !{i32 202, i32 0, metadata !217, metadata !367}
!384 = metadata !{i32 203, i32 0, metadata !217, metadata !367}
!385 = metadata !{i32 241, i32 0, metadata !366, null}
!386 = metadata !{i32 242, i32 0, metadata !366, null}
!387 = metadata !{i32 243, i32 0, metadata !366, null}
!388 = metadata !{i32 244, i32 0, metadata !365, null}
!389 = metadata !{i32 786689, metadata !205, metadata !"ptr", metadata !21, i32 16777422, metadata !32, i32 0, metadata !363} ; [ DW_TAG_arg_variable ] [ptr] [line 206]
!390 = metadata !{i32 208, i32 0, metadata !205, metadata !363}
!391 = metadata !{i32 786688, metadata !205, metadata !"cur", metadata !21, i32 209, metadata !30, i32 0, metadata !363} ; [ DW_TAG_auto_variable ] [cur] [line 209]
!392 = metadata !{i32 209, i32 0, metadata !205, metadata !363}
!393 = metadata !{i32 212, i32 0, metadata !205, metadata !363}
!394 = metadata !{i32 223, i32 0, metadata !205, metadata !363}
!395 = metadata !{i32 247, i32 0, metadata !364, null}
!396 = metadata !{i32 217, i32 0, metadata !397, metadata !363}
!397 = metadata !{i32 786443, metadata !1, metadata !398, i32 216, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!398 = metadata !{i32 786443, metadata !1, metadata !205, i32 216, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!399 = metadata !{i32 216, i32 0, metadata !398, metadata !363}
!400 = metadata !{metadata !"short", metadata !288}
!401 = metadata !{i32 218, i32 0, metadata !397, metadata !363}
!402 = metadata !{i32 220, i32 0, metadata !397, metadata !363}
!403 = metadata !{i32 249, i32 0, metadata !364, null}
!404 = metadata !{i32 250, i32 0, metadata !364, null}
!405 = metadata !{i32 251, i32 0, metadata !364, null}
!406 = metadata !{i32 252, i32 0, metadata !364, null}
!407 = metadata !{i32 254, i32 0, metadata !365, null}
!408 = metadata !{i32 255, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !365, i32 254, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!410 = metadata !{i32 256, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !409, i32 256, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!412 = metadata !{i32 260, i32 0, metadata !365, null}
!413 = metadata !{i32 261, i32 0, metadata !365, null}
!414 = metadata !{i32 264, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !365, i32 264, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!416 = metadata !{i32 257, i32 0, metadata !411, null}
!417 = metadata !{i32 272, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !415, i32 264, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!419 = metadata !{i32 273, i32 0, metadata !418, null}
!420 = metadata !{i32 265, i32 0, metadata !418, null}
!421 = metadata !{i32 266, i32 0, metadata !418, null}
!422 = metadata !{i32 267, i32 0, metadata !418, null}
!423 = metadata !{i32 269, i32 0, metadata !418, null}
!424 = metadata !{i32 271, i32 0, metadata !418, null}
!425 = metadata !{metadata !"double", metadata !288}
!426 = metadata !{i32 274, i32 0, metadata !418, null}
!427 = metadata !{i32 276, i32 0, metadata !365, null}
!428 = metadata !{i32 277, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !365, i32 276, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!430 = metadata !{i32 279, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !1, metadata !429, i32 279, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!432 = metadata !{i32 280, i32 0, metadata !431, null}
!433 = metadata !{i32 283, i32 0, metadata !365, null}
!434 = metadata !{i32 282, i32 0, metadata !365, null}
!435 = metadata !{i32 285, i32 0, metadata !170, null}
!436 = metadata !{i32 287, i32 0, metadata !170, null}
!437 = metadata !{i32 289, i32 0, metadata !170, null}
!438 = metadata !{i32 290, i32 0, metadata !170, null}
!439 = metadata !{i32 292, i32 0, metadata !192, null}
!440 = metadata !{i32 297, i32 0, metadata !192, null}
!441 = metadata !{i32 298, i32 0, metadata !192, null}
!442 = metadata !{i32 299, i32 0, metadata !192, null}
!443 = metadata !{i32 300, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !192, i32 300, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!445 = metadata !{i32 301, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !447, i32 301, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!447 = metadata !{i32 786443, metadata !1, metadata !444, i32 300, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!448 = metadata !{i32 302, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !446, i32 301, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xvgr.c]
!450 = metadata !{i32 304, i32 0, metadata !447, null}
!451 = metadata !{i32 306, i32 0, metadata !192, null}
!452 = metadata !{i32 307, i32 0, metadata !192, null}
