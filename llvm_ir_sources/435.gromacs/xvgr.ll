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
  %call = call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #6
  %call1 = call i8* @Program() #6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i8* %call1) #6
  %0 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str2, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %call)
  %call4 = call i8* @bromacs() #6
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* %call4) #6
  %call6 = call i64 @time(i64* %t) #6
  %call7 = call i8* @ctime(i64* %t) #6
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0), i8* %call7) #6
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %call)
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i8* %title) #6
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), i8* %xaxis) #6
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0), i8* %yaxis) #6
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %call)
  ret %struct._IO_FILE* %call
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i8* @Program() #1

; Function Attrs: optsize
declare i8* @bromacs() #1

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #2

; Function Attrs: nounwind optsize
declare i8* @ctime(i64*) #2

; Function Attrs: nounwind optsize uwtable
define void @xvgr_view(%struct._IO_FILE* nocapture %out, float %xmin, float %ymin, float %xmax, float %ymax) #0 {
entry:
  %conv = fpext float %xmin to double
  %conv1 = fpext float %ymin to double
  %conv2 = fpext float %xmax to double
  %conv3 = fpext float %ymax to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str11, i64 0, i64 0), double %conv, double %conv1, double %conv2, double %conv3) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @xvgr_world(%struct._IO_FILE* nocapture %out, float %xmin, float %ymin, float %xmax, float %ymax) #0 {
entry:
  %conv = fpext float %xmin to double
  %conv1 = fpext float %ymin to double
  %conv2 = fpext float %xmax to double
  %conv3 = fpext float %ymax to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([65 x i8]* @.str12, i64 0, i64 0), double %conv, double %conv1, double %conv2, double %conv3) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @xvgr_legend(%struct._IO_FILE* nocapture %out, i32 %nsets, i8** nocapture %setname) #0 {
entry:
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str11, i64 0, i64 0), double 0x3FC3333340000000, double 0x3FC3333340000000, double 7.500000e-01, double 0x3FEB333340000000) #6
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %out)
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %out)
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str15, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %out)
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), double 7.800000e-01, double 8.000000e-01) #6
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), i32 2) #6
  %cmp26 = icmp sgt i32 %nsets, 0
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %setname, i64 %indvars.iv
  %3 = load i8** %arrayidx, align 8, !tbaa !0
  %tobool = icmp eq i8* %3, null
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %4 = trunc i64 %indvars.iv to i32
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str19, i64 0, i64 0), i32 %4, i8* %3) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nsets
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @xvgr_line_props(%struct._IO_FILE* nocapture %out, i32 %NrSet, i32 %LineStyle, i32 %LineColor) #0 {
entry:
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %out)
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str21, i64 0, i64 0), i32 %NrSet, i32 %LineStyle) #6
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str22, i64 0, i64 0), i32 %NrSet, i32 %LineColor) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @xvgr_box(%struct._IO_FILE* nocapture %out, i32 %LocType, float %xmin, float %ymin, float %xmax, float %ymax, i32 %LineStyle, i32 %LineWidth, i32 %LineColor, i32 %BoxFill, i32 %BoxColor, i32 %BoxPattern) #0 {
entry:
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str23, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %out)
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str24, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %out)
  %idxprom = sext i32 %LocType to i64
  %arrayidx = getelementptr inbounds [2 x i8*]* @LocTypeStr, i64 0, i64 %idxprom
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str25, i64 0, i64 0), i8* %2) #6
  %conv = fpext float %xmin to double
  %conv3 = fpext float %ymin to double
  %conv4 = fpext float %xmax to double
  %conv5 = fpext float %ymax to double
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str26, i64 0, i64 0), double %conv, double %conv3, double %conv4, double %conv5) #6
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str27, i64 0, i64 0), i32 %LineStyle) #6
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str28, i64 0, i64 0), i32 %LineWidth) #6
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i32 %LineColor) #6
  %idxprom10 = sext i32 %BoxFill to i64
  %arrayidx11 = getelementptr inbounds [3 x i8*]* @BoxFillStr, i64 0, i64 %idxprom10
  %3 = load i8** %arrayidx11, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str30, i64 0, i64 0), i8* %3) #6
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([24 x i8]* @.str31, i64 0, i64 0), i32 %BoxColor) #6
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str32, i64 0, i64 0), i32 %BoxPattern) #6
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %out)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @lsq_y_ax(i32 %n, float* nocapture %x, float* nocapture %y, float* nocapture %a) #0 {
entry:
  %cmp20 = icmp sgt i32 %n, 0
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %yx.023 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %xx.022 = phi double [ %add9, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %y, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds float* %x, i64 %indvars.iv
  %1 = load float* %arrayidx2, align 4, !tbaa !3
  %mul = fmul float %0, %1
  %conv = fpext float %mul to double
  %add = fadd double %yx.023, %conv
  %mul7 = fmul float %1, %1
  %conv8 = fpext float %mul7 to double
  %add9 = fadd double %xx.022, %conv8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %yx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %xx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add9, %for.body ]
  %div = fdiv double %yx.0.lcssa, %xx.0.lcssa
  %conv10 = fptrunc double %div to float
  store float %conv10, float* %a, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @lsq_y_ax_b(i32 %n, float* nocapture %x, float* nocapture %y, float* nocapture %a, float* nocapture %b) #0 {
entry:
  %cmp93 = icmp sgt i32 %n, 0
  br i1 %cmp93, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.body ], [ 0, %entry ]
  %sy.098 = phi double [ %add17, %for.body ], [ 0.000000e+00, %entry ]
  %sx.097 = phi double [ %add13, %for.body ], [ 0.000000e+00, %entry ]
  %xx.096 = phi double [ %add9, %for.body ], [ 0.000000e+00, %entry ]
  %yx.095 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %y, i64 %indvars.iv103
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds float* %x, i64 %indvars.iv103
  %1 = load float* %arrayidx2, align 4, !tbaa !3
  %mul = fmul float %0, %1
  %conv = fpext float %mul to double
  %add = fadd double %yx.095, %conv
  %mul7 = fmul float %1, %1
  %conv8 = fpext float %mul7 to double
  %add9 = fadd double %xx.096, %conv8
  %conv12 = fpext float %1 to double
  %add13 = fadd double %sx.097, %conv12
  %conv16 = fpext float %0 to double
  %add17 = fadd double %sy.098, %conv16
  %indvars.iv.next104 = add i64 %indvars.iv103, 1
  %lftr.wideiv105 = trunc i64 %indvars.iv.next104 to i32
  %exitcond106 = icmp eq i32 %lftr.wideiv105, %n
  br i1 %exitcond106, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %sy.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add17, %for.body ]
  %sx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add13, %for.body ]
  %xx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add9, %for.body ]
  %yx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %conv18 = sitofp i32 %n to double
  %mul19 = fmul double %conv18, %yx.0.lcssa
  %mul20 = fmul double %sx.0.lcssa, %sy.0.lcssa
  %sub = fsub double %mul19, %mul20
  %mul22 = fmul double %conv18, %xx.0.lcssa
  %mul23 = fmul double %sx.0.lcssa, %sx.0.lcssa
  %sub24 = fsub double %mul22, %mul23
  %div = fdiv double %sub, %sub24
  %conv25 = fptrunc double %div to float
  store float %conv25, float* %a, align 4, !tbaa !3
  %conv26 = fpext float %conv25 to double
  %mul27 = fmul double %sx.0.lcssa, %conv26
  %sub28 = fsub double %sy.0.lcssa, %mul27
  %div30 = fdiv double %sub28, %conv18
  %conv31 = fptrunc double %div30 to float
  store float %conv31, float* %b, align 4, !tbaa !3
  br i1 %cmp93, label %for.body35.lr.ph, label %return

for.body35.lr.ph:                                 ; preds = %for.end
  %2 = load float* %a, align 4, !tbaa !3
  br label %for.body35

for.body35:                                       ; preds = %for.body35, %for.body35.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body35.lr.ph ], [ %indvars.iv.next, %for.body35 ]
  %chi2.092 = phi double [ 0.000000e+00, %for.body35.lr.ph ], [ %add44, %for.body35 ]
  %arrayidx37 = getelementptr inbounds float* %y, i64 %indvars.iv
  %3 = load float* %arrayidx37, align 4, !tbaa !3
  %arrayidx39 = getelementptr inbounds float* %x, i64 %indvars.iv
  %4 = load float* %arrayidx39, align 4, !tbaa !3
  %mul40 = fmul float %2, %4
  %add41 = fadd float %mul40, %conv31
  %sub42 = fsub float %3, %add41
  %mul.i = fmul float %sub42, %sub42
  %conv43 = fpext float %mul.i to double
  %add44 = fadd double %chi2.092, %conv43
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end47, label %for.body35

for.end47:                                        ; preds = %for.body35
  %cmp48 = icmp sgt i32 %n, 2
  br i1 %cmp48, label %if.then, label %return

if.then:                                          ; preds = %for.end47
  %sub50 = add nsw i32 %n, -2
  %conv51 = sitofp i32 %sub50 to double
  %div52 = fdiv double %add44, %conv51
  %call53 = tail call double @sqrt(double %div52) #6
  %conv54 = fptrunc double %call53 to float
  br label %return

return:                                           ; preds = %for.end, %for.end47, %if.then
  %retval.0 = phi float [ %conv54, %if.then ], [ 0.000000e+00, %for.end47 ], [ 0.000000e+00, %for.end ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize uwtable
define i32 @read_xvg(i8* %fn, float*** nocapture %y, i32* nocapture %ny) #0 {
entry:
  %is.i = alloca [2 x i32], align 4
  %lf = alloca double, align 8
  store i32 0, i32* %ny, align 4, !tbaa !4
  %call = call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str34, i64 0, i64 0)) #6
  %0 = bitcast [2 x i32]* %is.i to i8*
  br label %while.cond.outer

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
  %1 = load i8** @fgets3.ptr, align 8, !tbaa !0
  %cmp.i = icmp eq i8* %1, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.cond
  %2 = load i32* @fgets3.len, align 4, !tbaa !4
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 187, i32 %2, i32 1) #6
  store i8* %call.i, i8** @fgets3.ptr, align 8, !tbaa !0
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.cond
  %3 = phi i8* [ %call.i, %if.then.i ], [ %1, %while.cond ]
  %4 = load i32* @fgets3.len, align 4, !tbaa !4
  %sub.i = add nsw i32 %4, -1
  %call1.i = call i8* @fgets(i8* %3, i32 %sub.i, %struct._IO_FILE* %call) #6
  %cmp2.i = icmp eq i8* %call1.i, null
  br i1 %cmp2.i, label %while.end, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %5 = load i8** @fgets3.ptr, align 8, !tbaa !0
  %call5.i147 = call i8* @strchr(i8* %5, i32 10) #7
  %cmp6.i148 = icmp eq i8* %call5.i147, null
  br i1 %cmp6.i148, label %land.rhs.i, label %while.end.i

land.rhs.i:                                       ; preds = %if.end4.i, %while.body.while.cond_crit_edge.i
  %p.0.i149 = phi i8* [ %add.ptr.i, %while.body.while.cond_crit_edge.i ], [ %5, %if.end4.i ]
  %call7.i = call i32 @feof(%struct._IO_FILE* %call) #6
  %lnot.i = icmp eq i32 %call7.i, 0
  br i1 %lnot.i, label %while.body.i, label %while.end.isplit

while.body.i:                                     ; preds = %land.rhs.i
  %6 = load i32* @fgets3.len, align 4, !tbaa !4
  %add.i = add nsw i32 %6, 4096
  store i32 %add.i, i32* @fgets3.len, align 4, !tbaa !4
  %7 = load i8** @fgets3.ptr, align 8, !tbaa !0
  %call9.i = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 196, i8* %7, i32 %add.i) #6
  store i8* %call9.i, i8** @fgets3.ptr, align 8, !tbaa !0
  %add.ptr10.i = getelementptr inbounds i8* %p.0.i149, i64 4095
  %call11.i = call i8* @fgets(i8* %add.ptr10.i, i32 4096, %struct._IO_FILE* %call) #6
  %cmp12.i = icmp eq i8* %call11.i, null
  br i1 %cmp12.i, label %while.end.isplit, label %while.body.while.cond_crit_edge.i

while.body.while.cond_crit_edge.i:                ; preds = %while.body.i
  %add.ptr.i = getelementptr inbounds i8* %p.0.i149, i64 4096
  %.pre31.i = load i8** @fgets3.ptr, align 8, !tbaa !0
  %call5.i = call i8* @strchr(i8* %.pre31.i, i32 10) #7
  %cmp6.i = icmp eq i8* %call5.i, null
  br i1 %cmp6.i, label %land.rhs.i, label %while.end.i

while.end.isplit:                                 ; preds = %land.rhs.i, %while.body.i
  %.pre = load i8** @fgets3.ptr, align 8, !tbaa !0
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.while.cond_crit_edge.i, %while.end.isplit, %if.end4.i
  %8 = phi i8* [ %.pre, %while.end.isplit ], [ %5, %if.end4.i ], [ %.pre31.i, %while.body.while.cond_crit_edge.i ]
  %call16.i = call i64 @strlen(i8* %8) #7
  %sub18.i = shl i64 %call16.i, 32
  %sext.i = add i64 %sub18.i, -4294967296
  %idxprom.i = ashr exact i64 %sext.i, 32
  %arrayidx.i = getelementptr inbounds i8* %8, i64 %idxprom.i
  %9 = load i8* %arrayidx.i, align 1, !tbaa !1
  %cmp20.i = icmp eq i8 %9, 10
  br i1 %cmp20.i, label %if.then22.i, label %fgets3.exit

if.then22.i:                                      ; preds = %while.end.i
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !1
  %.pre.i = load i8** @fgets3.ptr, align 8, !tbaa !0
  br label %fgets3.exit

fgets3.exit:                                      ; preds = %while.end.i, %if.then22.i
  %retval.0.i = phi i8* [ %.pre.i, %if.then22.i ], [ %8, %while.end.i ]
  %cmp = icmp eq i8* %retval.0.i, null
  br i1 %cmp, label %while.end, label %while.body

while.body:                                       ; preds = %fgets3.exit
  %inc = add nsw i32 %line.0, 1
  call void @trim(i8* %retval.0.i) #6
  %10 = load i8* %retval.0.i, align 1, !tbaa !1
  switch i8 %10, label %if.then [
    i8 64, label %while.cond
    i8 35, label %while.cond
  ]

if.then:                                          ; preds = %while.body
  %cmp8 = icmp eq i32 %nny.0.ph, 0
  br i1 %cmp8, label %if.then10, label %if.end20

if.then10:                                        ; preds = %if.then
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %cmp.i140 = icmp eq i8 %10, 0
  br i1 %cmp.i140, label %wordcount.exit.thread, label %for.body.lr.ph.i

wordcount.exit.thread:                            ; preds = %if.then10
  call void @llvm.lifetime.end(i64 8, i8* %0) #5
  store i32 0, i32* %ny, align 4, !tbaa !4
  br label %return

for.body.lr.ph.i:                                 ; preds = %if.then10
  %call7.i141 = call i16** @__ctype_b_loc() #8
  %11 = load i16** %call7.i141, align 8, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %if.end21.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end21.i ]
  %12 = phi i8 [ %10, %for.body.lr.ph.i ], [ %16, %if.end21.i ]
  %cur.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %sub22.pre.i, %if.end21.i ]
  %n.035.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %n.1.i, %if.end21.i ]
  %idxprom6.i = sext i8 %12 to i64
  %arrayidx8.i = getelementptr inbounds i16* %11, i64 %idxprom6.i
  %13 = load i16* %arrayidx8.i, align 2, !tbaa !5
  %conv9.i = zext i16 %13 to i32
  %and.i = and i32 %conv9.i, 8192
  %idxprom10.i = sext i32 %cur.036.i to i64
  %arrayidx11.i = getelementptr inbounds [2 x i32]* %is.i, i64 0, i64 %idxprom10.i
  store i32 %and.i, i32* %arrayidx11.i, align 4, !tbaa !4
  %14 = trunc i64 %indvars.iv.i to i32
  %cmp12.i142 = icmp slt i32 %14, 1
  %tobool.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %cmp12.i142, %tobool.i
  %sub22.pre.i = sub nsw i32 1, %cur.036.i
  br i1 %or.cond.i, label %if.end21.i, label %land.lhs.true16.i

land.lhs.true16.i:                                ; preds = %for.body.i
  %idxprom17.i = sext i32 %sub22.pre.i to i64
  %arrayidx18.i = getelementptr inbounds [2 x i32]* %is.i, i64 0, i64 %idxprom17.i
  %15 = load i32* %arrayidx18.i, align 4, !tbaa !4
  %tobool19.i = icmp eq i32 %15, 0
  %inc.i = zext i1 %tobool19.i to i32
  %inc.n.0.i = add nsw i32 %inc.i, %n.035.i
  br label %if.end21.i

if.end21.i:                                       ; preds = %land.lhs.true16.i, %for.body.i
  %n.1.i = phi i32 [ %inc.n.0.i, %land.lhs.true16.i ], [ %n.035.i, %for.body.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %arrayidx.i143 = getelementptr inbounds i8* %retval.0.i, i64 %indvars.iv.next.i
  %16 = load i8* %arrayidx.i143, align 1, !tbaa !1
  %cmp1.i = icmp eq i8 %16, 0
  br i1 %cmp1.i, label %wordcount.exit, label %for.body.i

wordcount.exit:                                   ; preds = %if.end21.i
  call void @llvm.lifetime.end(i64 8, i8* %0) #5
  store i32 %n.1.i, i32* %ny, align 4, !tbaa !4
  %cmp12 = icmp eq i32 %n.1.i, 0
  br i1 %cmp12, label %return, label %if.end

if.end:                                           ; preds = %wordcount.exit
  %call15 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 249, i32 %n.1.i, i32 8) #6
  %17 = bitcast i8* %call15 to float**
  %mul = mul nsw i32 %n.1.i, 3
  %add = add nsw i32 %mul, 1
  %call16 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 250, i32 %add, i32 1) #6
  %call19 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 251, i32 %add, i32 1) #6
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then
  %base.1 = phi i8* [ %call19, %if.end ], [ %base.0.ph, %if.then ]
  %fmt.1 = phi i8* [ %call16, %if.end ], [ %fmt.0.ph, %if.then ]
  %nny.1 = phi i32 [ %n.1.i, %if.end ], [ %nny.0.ph, %if.then ]
  %yy.1 = phi float** [ %17, %if.end ], [ %yy.0.ph, %if.then ]
  %18 = trunc i64 %indvars.iv179 to i32
  %cmp21 = icmp slt i32 %18, %maxx.0.ph
  br i1 %cmp21, label %if.end35, label %if.then23

if.then23:                                        ; preds = %if.end20
  %add24 = add nsw i32 %maxx.0.ph, 1024
  %cmp25150 = icmp sgt i32 %nny.1, 0
  br i1 %cmp25150, label %for.body.lr.ph, label %if.end35.thread

if.end35.thread:                                  ; preds = %if.then23
  store i8 0, i8* %fmt.1, align 1, !tbaa !1
  store i8 0, i8* %base.1, align 1, !tbaa !1
  br label %for.end72

for.body.lr.ph:                                   ; preds = %if.then23
  %mul29 = shl i32 %add24, 2
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx27 = getelementptr inbounds float** %yy.1, i64 %indvars.iv
  %19 = load float** %arrayidx27, align 8, !tbaa !0
  %20 = bitcast float* %19 to i8*
  %call31 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 257, i8* %20, i32 %mul29) #6
  %21 = bitcast i8* %call31 to float*
  store float* %21, float** %arrayidx27, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nny.1
  br i1 %exitcond, label %if.end35, label %for.body

if.end35:                                         ; preds = %for.body, %if.end20
  %maxx.1 = phi i32 [ %maxx.0.ph, %if.end20 ], [ %add24, %for.body ]
  store i8 0, i8* %fmt.1, align 1, !tbaa !1
  store i8 0, i8* %base.1, align 1, !tbaa !1
  %cmp39152 = icmp sgt i32 %nny.1, 0
  br i1 %cmp39152, label %for.body41.lr.ph, label %for.end72

for.body41.lr.ph:                                 ; preds = %if.end35
  %22 = mul i32 %nny.1, 3
  %add58 = add i32 %22, 4
  %add64 = add nsw i32 %22, 1
  br label %for.body41

for.body41:                                       ; preds = %for.body41.lr.ph, %if.end50
  %indvars.iv169 = phi i64 [ 0, %for.body41.lr.ph ], [ %indvars.iv.next170, %if.end50 ]
  %k.1155 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc71, %if.end50 ]
  %fmt.2154 = phi i8* [ %fmt.1, %for.body41.lr.ph ], [ %call62, %if.end50 ]
  %base.2153 = phi i8* [ %base.1, %for.body41.lr.ph ], [ %call68, %if.end50 ]
  %call42 = call i8* @strcpy(i8* %fmt.2154, i8* %base.2153) #6
  %strlen = call i64 @strlen(i8* %fmt.2154)
  %endptr = getelementptr i8* %fmt.2154, i64 %strlen
  %23 = bitcast i8* %endptr to i32*
  store i32 6712357, i32* %23, align 1
  %call44 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %retval.0.i, i8* %fmt.2154, double* %lf) #6
  switch i32 %call44, label %if.end50 [
    i32 -1, label %for.end72
    i32 0, label %for.end72
  ]

if.end50:                                         ; preds = %for.body41
  %24 = load double* %lf, align 8, !tbaa !6
  %conv51 = fptrunc double %24 to float
  %arrayidx54 = getelementptr inbounds float** %yy.1, i64 %indvars.iv169
  %25 = load float** %arrayidx54, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds float* %25, i64 %indvars.iv179
  store float %conv51, float* %arrayidx55, align 4, !tbaa !3
  %call62 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 272, i8* %fmt.2154, i32 %add58) #6
  %call68 = call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), i32 273, i8* %base.2153, i32 %add64) #6
  %strlen138 = call i64 @strlen(i8* %call68)
  %endptr139 = getelementptr i8* %call68, i64 %strlen138
  %26 = bitcast i8* %endptr139 to i32*
  store i32 7547429, i32* %26, align 1
  %indvars.iv.next170 = add i64 %indvars.iv169, 1
  %inc71 = add nsw i32 %k.1155, 1
  %27 = trunc i64 %indvars.iv.next170 to i32
  %cmp39 = icmp slt i32 %27, %nny.1
  br i1 %cmp39, label %for.body41, label %for.end72

for.end72:                                        ; preds = %if.end50, %for.body41, %for.body41, %if.end35.thread, %if.end35
  %maxx.1182 = phi i32 [ %maxx.1, %if.end35 ], [ %add24, %if.end35.thread ], [ %maxx.1, %for.body41 ], [ %maxx.1, %for.body41 ], [ %maxx.1, %if.end50 ]
  %k.1.lcssa = phi i32 [ 0, %if.end35 ], [ 0, %if.end35.thread ], [ %k.1155, %for.body41 ], [ %k.1155, %for.body41 ], [ %inc71, %if.end50 ]
  %fmt.2.lcssa = phi i8* [ %fmt.1, %if.end35 ], [ %fmt.1, %if.end35.thread ], [ %fmt.2154, %for.body41 ], [ %fmt.2154, %for.body41 ], [ %call62, %if.end50 ]
  %base.2.lcssa = phi i8* [ %base.1, %if.end35 ], [ %base.1, %if.end35.thread ], [ %base.2153, %for.body41 ], [ %base.2153, %for.body41 ], [ %call68, %if.end50 ]
  %cmp73 = icmp eq i32 %k.1.lcssa, %nny.1
  br i1 %cmp73, label %if.end88, label %if.then75

if.then75:                                        ; preds = %for.end72
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([39 x i8]* @.str42, i64 0, i64 0), i32 %k.1.lcssa, i32 %inc, i8* %fn) #6
  %cmp78158 = icmp slt i32 %k.1.lcssa, %nny.1
  br i1 %cmp78158, label %for.body80.lr.ph, label %if.end88

for.body80.lr.ph:                                 ; preds = %if.then75
  %29 = sext i32 %k.1.lcssa to i64
  br label %for.body80

for.body80:                                       ; preds = %for.body80, %for.body80.lr.ph
  %indvars.iv171 = phi i64 [ %29, %for.body80.lr.ph ], [ %indvars.iv.next172, %for.body80 ]
  %arrayidx83 = getelementptr inbounds float** %yy.1, i64 %indvars.iv171
  %30 = load float** %arrayidx83, align 8, !tbaa !0
  %arrayidx84 = getelementptr inbounds float* %30, i64 %indvars.iv179
  store float 0.000000e+00, float* %arrayidx84, align 4, !tbaa !3
  %indvars.iv.next172 = add i64 %indvars.iv171, 1
  %lftr.wideiv173 = trunc i64 %indvars.iv.next172 to i32
  %exitcond174 = icmp eq i32 %lftr.wideiv173, %nny.1
  br i1 %exitcond174, label %if.end88, label %for.body80

if.end88:                                         ; preds = %if.then75, %for.body80, %for.end72
  %indvars.iv.next180 = add i64 %indvars.iv179, 1
  %inc89 = add nsw i32 %nx.0.ph, 1
  br label %while.cond.outer

while.end:                                        ; preds = %if.end.i, %fgets3.exit
  call void @ffclose(%struct._IO_FILE* %call) #6
  store float** %yy.0.ph, float*** %y, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %wordcount.exit, %wordcount.exit.thread, %while.end
  %retval.0 = phi i32 [ %nx.0.ph, %while.end ], [ 0, %wordcount.exit.thread ], [ 0, %wordcount.exit ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @trim(i8*) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define void @write_xvg(i8* %fn, i8* %title, i32 %nx, i32 %ny, float** nocapture %y, i8** %leg) #0 {
entry:
  %call = tail call %struct._IO_FILE* @xvgropen(i8* %fn, i8* %title, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #9
  %tobool = icmp eq i8** %leg, null
  br i1 %tobool, label %for.cond.preheader, label %if.then

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %ny, -1
  tail call void @xvgr_legend(%struct._IO_FILE* %call, i32 %sub, i8** %leg) #9
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.then
  %cmp21 = icmp sgt i32 %nx, 0
  br i1 %cmp21, label %for.cond1.preheader.lr.ph, label %for.end10

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %cmp219 = icmp sgt i32 %ny, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end, %for.cond1.preheader.lr.ph
  %indvars.iv23 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next24, %for.end ]
  br i1 %cmp219, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds float** %y, i64 %indvars.iv
  %0 = load float** %arrayidx, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds float* %0, i64 %indvars.iv23
  %1 = load float* %arrayidx5, align 4, !tbaa !3
  %conv = fpext float %1 to double
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([9 x i8]* @.str45, i64 0, i64 0), double %conv) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ny
  br i1 %exitcond, label %for.end, label %for.body3

for.end:                                          ; preds = %for.body3, %for.cond1.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %call)
  %indvars.iv.next24 = add i64 %indvars.iv23, 1
  %lftr.wideiv25 = trunc i64 %indvars.iv.next24 to i32
  %exitcond26 = icmp eq i32 %lftr.wideiv25, %nx
  br i1 %exitcond26, label %for.end10, label %for.cond1.preheader

for.end10:                                        ; preds = %for.end, %for.cond.preheader
  tail call void @ffclose(%struct._IO_FILE* %call) #6
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { nounwind optsize readnone }
attributes #9 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
