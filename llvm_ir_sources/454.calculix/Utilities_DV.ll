; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [66 x i8] c"\0A fatal error in DVadd\0A invalid input, size = %d, y = %p, x = %p\0A\00", align 1
@.str1 = private unnamed_addr constant [79 x i8] c"\0A fatal error in DVaxpy\0A invalid input, size = %d, y = %p, alpha = %f, x = %p\0A\00", align 1
@.str2 = private unnamed_addr constant [91 x i8] c"\0A fatal error in DVaxpyi, invalid input\0A size = %d, y = %p, index = %p, alpha = %f, x = %p\00", align 1
@.str3 = private unnamed_addr constant [67 x i8] c"\0A fatal error in DVcopy, invalid input\0A size = %d, y = %p, x = %p\0A\00", align 1
@.str4 = private unnamed_addr constant [102 x i8] c"\0A fatal error in DVcompress, invalid data\0A size1 = %d, x1 = %p, y1 = %p\0A size2 = %d, x2 = %p, y2 = %p\00", align 1
@.str5 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DVdot, invalid data\0A size = %d, y = %p, x = %p\0A\00", align 1
@.str6 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DVdoti(%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [69 x i8] c"\0A fatal error in DVfill, invalid data\0A size = %d, y = %p, dval = %f\0A\00", align 1
@.str8 = private unnamed_addr constant [71 x i8] c"\0A fatal error in DVfprintf, invalid input\0A fp = %p, size = %d, y = %p\0A\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"%12.4e\00", align 1
@.str11 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DVfscanf, invalid input\0A fp = %p, size = %d, y = %p\0A\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c" %le\00", align 1
@.str13 = private unnamed_addr constant [81 x i8] c"\0A fatal error in DVgather, invalid input\0A size = %d, y = %p, x = %p, index = %p\0A\00", align 1
@.str14 = private unnamed_addr constant [88 x i8] c"\0A fatal error in DVgatherAddZero, invalid input\0A size = %d, y = %p, x = %p, index = %p\0A\00", align 1
@.str15 = private unnamed_addr constant [85 x i8] c"\0A fatal error in DVgatherZero, invalid input\0A size = %d, y = %p, x = %p, index = %p\0A\00", align 1
@.str16 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str17 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c\00", align 1
@.str19 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DVinvPerm, invalid data\0A size = %d, y = %p, index = %p\00", align 1
@.str20 = private unnamed_addr constant [68 x i8] c"\0A fatal error in DVmax, invalid data\0A size = %d, y = %p, ploc = %p\0A\00", align 1
@.str21 = private unnamed_addr constant [71 x i8] c"\0A fatal error in DVmaxabs, invalid data\0A size = %d, y = %p, ploc = %p\0A\00", align 1
@.str22 = private unnamed_addr constant [68 x i8] c"\0A fatal error in DVmin, invalid data\0A size = %d, y = %p, ploc = %p\0A\00", align 1
@.str23 = private unnamed_addr constant [71 x i8] c"\0A fatal error in DVminabs, invalid data\0A size = %d, y = %p, ploc = %p\0A\00", align 1
@.str24 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DVperm, invalid data\0A size = %d, y = %p, index = %p\0A\00", align 1
@.str25 = private unnamed_addr constant [81 x i8] c"\0A fatal error in DVramp, invalid input\0A size = %d, y = %p, start = %f, inc = %f\0A\00", align 1
@.str26 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DVsub, invalid input\0A size = %d, y = %p, x = %p\00", align 1
@.str27 = private unnamed_addr constant [71 x i8] c"\0A fatal error in DVscale, invalid data\0A size = %d, y = %p, alpha = %f\0A\00", align 1
@.str28 = private unnamed_addr constant [81 x i8] c"\0A fatal error in DVscatter, invalid data\0A size = %d, y = %p, index = %p, x = %p\0A\00", align 1
@.str29 = private unnamed_addr constant [84 x i8] c"\0A fatal error in DVscatterAdd, invalid data\0A size = %d, y = %p, index = %p, x = %p\0A\00", align 1
@.str30 = private unnamed_addr constant [88 x i8] c"\0A fatal error in DVscatterAddZero, invalid data\0A size = %d, y = %p, index = %p, x = %p\0A\00", align 1
@.str31 = private unnamed_addr constant [85 x i8] c"\0A fatal error in DVscatterZero, invalid data\0A size = %d, y = %p, index = %p, x = %p\0A\00", align 1
@.str32 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DVsum, invalid data\0A size = %d, y = %p\0A\00", align 1
@.str33 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DVsumabs, invalid data\0A size = %d, y = %p\0A\00", align 1
@.str34 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DVswap, invalid data\0A size = %d, y = %p, x = %p\00", align 1
@.str35 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DVzero, invalid data\0A size = %d, y = %p\0A\00", align 1
@.str36 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DVshuffle, invalid data\0A size = %d, y = %p, seed = %d\0A\00", align 1
@.str37 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DVscale2(%d,%p,%p,...)\0A bad input\0A\00", align 1
@.str38 = private unnamed_addr constant [39 x i8] c"\0A fatal error in DVaxpy2()\0A bad input\0A\00", align 1
@.str39 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DVdot33(%d,%p,%p,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str40 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DVdot23(%d,%p,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str41 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DVdot13(%d,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str42 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DVdot32(%d,%p,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str43 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DVdot22(%d,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str44 = private unnamed_addr constant [53 x i8] c"\0A fatal error in DVdot12(%d,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str45 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DVdot31(%d,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str46 = private unnamed_addr constant [53 x i8] c"\0A fatal error in DVdot21(%d,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str47 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DVdot11(%d,%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @DVadd(i32 %size, double* %y, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !12), !dbg !620
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !13), !dbg !621
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !14), !dbg !622
  %cmp = icmp slt i32 %size, 1, !dbg !623
  br i1 %cmp, label %return, label %if.else, !dbg !623

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !624
  %cmp2 = icmp eq double* %x, null, !dbg !624
  %or.cond = or i1 %cmp1, %cmp2, !dbg !624
  br i1 %or.cond, label %if.then3, label %for.cond.preheader, !dbg !624

for.cond.preheader:                               ; preds = %if.else
  %cmp518 = icmp sgt i32 %size, 0, !dbg !625
  br i1 %cmp518, label %for.body, label %return, !dbg !625

if.then3:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !627, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 %size, double* %y, double* %x) #6, !dbg !627
  tail call void @exit(i32 -1) #7, !dbg !632
  unreachable, !dbg !632

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !633
  %1 = load double* %arrayidx, align 8, !dbg !633, !tbaa !635
  %arrayidx7 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !633
  %2 = load double* %arrayidx7, align 8, !dbg !633, !tbaa !635
  %add = fadd double %1, %2, !dbg !633
  store double %add, double* %arrayidx7, align 8, !dbg !633, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !625
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !625
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !625
  br i1 %exitcond, label %return, label %for.body, !dbg !625

return:                                           ; preds = %for.cond.preheader, %for.body, %entry
  ret void, !dbg !636
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @DVaxpy(i32 %size, double* %y, double %alpha, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !21), !dbg !637
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !22), !dbg !638
  tail call void @llvm.dbg.value(metadata !{double %alpha}, i64 0, metadata !23), !dbg !639
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !24), !dbg !640
  %cmp = icmp slt i32 %size, 0, !dbg !641
  %cmp1 = fcmp oeq double %alpha, 0.000000e+00, !dbg !641
  %or.cond = or i1 %cmp, %cmp1, !dbg !641
  br i1 %or.cond, label %return, label %if.else, !dbg !641

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq double* %y, null, !dbg !642
  %cmp4 = icmp eq double* %x, null, !dbg !642
  %or.cond22 = or i1 %cmp2, %cmp4, !dbg !642
  br i1 %or.cond22, label %if.then5, label %for.cond.preheader, !dbg !642

for.cond.preheader:                               ; preds = %if.else
  %cmp723 = icmp sgt i32 %size, 0, !dbg !643
  br i1 %cmp723, label %for.body, label %return, !dbg !643

if.then5:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !645, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0), i32 %size, double* %y, double %alpha, double* %x) #6, !dbg !645
  tail call void @exit(i32 -1) #7, !dbg !647
  unreachable, !dbg !647

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !648
  %1 = load double* %arrayidx, align 8, !dbg !648, !tbaa !635
  %mul = fmul double %1, %alpha, !dbg !648
  %arrayidx9 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !648
  %2 = load double* %arrayidx9, align 8, !dbg !648, !tbaa !635
  %add = fadd double %2, %mul, !dbg !648
  store double %add, double* %arrayidx9, align 8, !dbg !648, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !643
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !643
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !643
  br i1 %exitcond, label %return, label %for.body, !dbg !643

return:                                           ; preds = %for.cond.preheader, %for.body, %entry
  ret void, !dbg !650
}

; Function Attrs: nounwind optsize uwtable
define void @DVaxpyi(i32 %size, double* %y, i32* %index, double %alpha, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !32), !dbg !651
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !33), !dbg !652
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !34), !dbg !653
  tail call void @llvm.dbg.value(metadata !{double %alpha}, i64 0, metadata !35), !dbg !654
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !36), !dbg !655
  %cmp = icmp slt i32 %size, 1, !dbg !656
  %cmp1 = fcmp oeq double %alpha, 0.000000e+00, !dbg !656
  %or.cond = or i1 %cmp, %cmp1, !dbg !656
  br i1 %or.cond, label %return, label %if.else, !dbg !656

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq double* %y, null, !dbg !657
  %cmp4 = icmp eq i32* %index, null, !dbg !657
  %or.cond28 = or i1 %cmp2, %cmp4, !dbg !657
  %cmp6 = icmp eq double* %x, null, !dbg !657
  %or.cond29 = or i1 %or.cond28, %cmp6, !dbg !657
  br i1 %or.cond29, label %if.then7, label %for.cond.preheader, !dbg !657

for.cond.preheader:                               ; preds = %if.else
  %cmp930 = icmp sgt i32 %size, 0, !dbg !658
  br i1 %cmp930, label %for.body, label %return, !dbg !658

if.then7:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !660, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([91 x i8]* @.str2, i64 0, i64 0), i32 %size, double* %y, i32* %index, double %alpha, double* %x) #6, !dbg !660
  tail call void @exit(i32 -1) #7, !dbg !662
  unreachable, !dbg !662

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !663
  %1 = load double* %arrayidx, align 8, !dbg !663, !tbaa !635
  %mul = fmul double %1, %alpha, !dbg !663
  %arrayidx11 = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !663
  %2 = load i32* %arrayidx11, align 4, !dbg !663, !tbaa !665
  %idxprom12 = sext i32 %2 to i64, !dbg !663
  %arrayidx13 = getelementptr inbounds double* %y, i64 %idxprom12, !dbg !663
  %3 = load double* %arrayidx13, align 8, !dbg !663, !tbaa !635
  %add = fadd double %mul, %3, !dbg !663
  store double %add, double* %arrayidx13, align 8, !dbg !663, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !658
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !658
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !658
  br i1 %exitcond, label %return, label %for.body, !dbg !658

return:                                           ; preds = %for.cond.preheader, %for.body, %entry
  ret void, !dbg !666
}

; Function Attrs: nounwind optsize uwtable
define void @DVcopy(i32 %size, double* %y, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !41), !dbg !667
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !42), !dbg !668
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !43), !dbg !669
  %cmp = icmp slt i32 %size, 1, !dbg !670
  br i1 %cmp, label %return, label %if.else, !dbg !670

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !671
  %cmp2 = icmp eq double* %x, null, !dbg !671
  %or.cond = or i1 %cmp1, %cmp2, !dbg !671
  br i1 %or.cond, label %if.then3, label %for.cond.preheader, !dbg !671

for.cond.preheader:                               ; preds = %if.else
  %cmp518 = icmp sgt i32 %size, 0, !dbg !672
  br i1 %cmp518, label %for.body, label %return, !dbg !672

if.then3:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !674, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([67 x i8]* @.str3, i64 0, i64 0), i32 %size, double* %y, double* %x) #6, !dbg !674
  tail call void @exit(i32 -1) #7, !dbg !676
  unreachable, !dbg !676

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !677
  %1 = load double* %arrayidx, align 8, !dbg !677, !tbaa !635
  %arrayidx7 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !677
  store double %1, double* %arrayidx7, align 8, !dbg !677, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !672
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !672
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !672
  br i1 %exitcond, label %return, label %for.body, !dbg !672

return:                                           ; preds = %for.cond.preheader, %for.body, %entry
  ret void, !dbg !679
}

; Function Attrs: nounwind optsize uwtable
define i32 @DVcompress(i32 %size1, double* %x1, double* %y1, i32 %size2, double* %x2, double* %y2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size1}, i64 0, metadata !50), !dbg !680
  tail call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !51), !dbg !681
  tail call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !52), !dbg !682
  tail call void @llvm.dbg.value(metadata !{i32 %size2}, i64 0, metadata !53), !dbg !683
  tail call void @llvm.dbg.value(metadata !{double* %x2}, i64 0, metadata !54), !dbg !684
  tail call void @llvm.dbg.value(metadata !{double* %y2}, i64 0, metadata !55), !dbg !685
  %cmp = icmp slt i32 %size1, 1, !dbg !686
  %cmp1 = icmp slt i32 %size2, 1, !dbg !686
  %or.cond = or i1 %cmp, %cmp1, !dbg !686
  br i1 %or.cond, label %return, label %if.else, !dbg !686

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq double* %x1, null, !dbg !687
  %cmp4 = icmp eq double* %y1, null, !dbg !687
  %or.cond131 = or i1 %cmp2, %cmp4, !dbg !687
  %cmp6 = icmp eq double* %x2, null, !dbg !687
  %or.cond132 = or i1 %or.cond131, %cmp6, !dbg !687
  %cmp8 = icmp eq double* %y2, null, !dbg !687
  %or.cond133 = or i1 %or.cond132, %cmp8, !dbg !687
  br i1 %or.cond133, label %if.then9, label %if.end10, !dbg !687

if.then9:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !688, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([102 x i8]* @.str4, i64 0, i64 0), i32 %size1, double* %x1, double* %y1, i32 %size2, double* %x2, double* %y2) #6, !dbg !688
  tail call void @exit(i32 -1) #7, !dbg !690
  unreachable, !dbg !690

if.end10:                                         ; preds = %if.else
  %call11 = tail call double* @DVinit(i32 %size1, double 0.000000e+00) #8, !dbg !691
  tail call void @llvm.dbg.value(metadata !{double* %call11}, i64 0, metadata !61), !dbg !691
  tail call void @llvm.dbg.value(metadata !692, i64 0, metadata !63), !dbg !693
  %cmp12139 = icmp sgt i32 %size1, 1, !dbg !693
  br i1 %cmp12139, label %for.body, label %for.end, !dbg !693

for.body:                                         ; preds = %if.end10, %for.body
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %for.body ], [ 1, %if.end10 ]
  %arrayidx = getelementptr inbounds double* %x1, i64 %indvars.iv142, !dbg !695
  %1 = load double* %arrayidx, align 8, !dbg !695, !tbaa !635
  %2 = add nsw i64 %indvars.iv142, -1, !dbg !695
  %arrayidx14 = getelementptr inbounds double* %x1, i64 %2, !dbg !695
  %3 = load double* %arrayidx14, align 8, !dbg !695, !tbaa !635
  %sub15 = fsub double %1, %3, !dbg !695
  tail call void @llvm.dbg.value(metadata !{double %sub15}, i64 0, metadata !57), !dbg !695
  %arrayidx17 = getelementptr inbounds double* %y1, i64 %indvars.iv142, !dbg !697
  %4 = load double* %arrayidx17, align 8, !dbg !697, !tbaa !635
  %arrayidx20 = getelementptr inbounds double* %y1, i64 %2, !dbg !697
  %5 = load double* %arrayidx20, align 8, !dbg !697, !tbaa !635
  %sub21 = fsub double %4, %5, !dbg !697
  tail call void @llvm.dbg.value(metadata !{double %sub21}, i64 0, metadata !58), !dbg !697
  %mul = fmul double %sub15, %sub15, !dbg !698
  %mul22 = fmul double %sub21, %sub21, !dbg !698
  %add = fadd double %mul, %mul22, !dbg !698
  %call23 = tail call double @sqrt(double %add) #6, !dbg !698
  %arrayidx26 = getelementptr inbounds double* %call11, i64 %2, !dbg !698
  store double %call23, double* %arrayidx26, align 8, !dbg !698, !tbaa !635
  %indvars.iv.next143 = add i64 %indvars.iv142, 1, !dbg !693
  %lftr.wideiv145 = trunc i64 %indvars.iv.next143 to i32, !dbg !693
  %exitcond146 = icmp eq i32 %lftr.wideiv145, %size1, !dbg !693
  br i1 %exitcond146, label %for.end, label %for.body, !dbg !693

for.end:                                          ; preds = %for.body, %if.end10
  %call27 = tail call double @DVsum(i32 %size1, double* %call11) #8, !dbg !699
  tail call void @llvm.dbg.value(metadata !{double %call27}, i64 0, metadata !60), !dbg !699
  %sub28 = add nsw i32 %size2, -2, !dbg !700
  %conv = sitofp i32 %sub28 to double, !dbg !700
  %div = fdiv double %call27, %conv, !dbg !700
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !56), !dbg !700
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !62), !dbg !701
  %6 = load double* %x1, align 8, !dbg !702, !tbaa !635
  store double %6, double* %x2, align 8, !dbg !702, !tbaa !635
  %7 = load double* %y1, align 8, !dbg !703, !tbaa !635
  store double %7, double* %y2, align 8, !dbg !703, !tbaa !635
  tail call void @llvm.dbg.value(metadata !692, i64 0, metadata !62), !dbg !704
  tail call void @llvm.dbg.value(metadata !705, i64 0, metadata !59), !dbg !706
  tail call void @llvm.dbg.value(metadata !692, i64 0, metadata !63), !dbg !707
  %sub39 = add i32 %size1, -1, !dbg !707
  %cmp40134 = icmp sgt i32 %sub39, 1, !dbg !707
  br i1 %cmp40134, label %for.body42, label %for.end62, !dbg !707

for.body42:                                       ; preds = %for.end, %for.inc60
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc60 ], [ 1, %for.end ]
  %i.0136 = phi i32 [ %i.1, %for.inc60 ], [ 1, %for.end ]
  %path.0135 = phi double [ %path.1, %for.inc60 ], [ 0.000000e+00, %for.end ]
  %8 = add nsw i64 %indvars.iv, -1, !dbg !709
  %arrayidx45 = getelementptr inbounds double* %call11, i64 %8, !dbg !709
  %9 = load double* %arrayidx45, align 8, !dbg !709, !tbaa !635
  %add46 = fadd double %path.0135, %9, !dbg !709
  tail call void @llvm.dbg.value(metadata !{double %add46}, i64 0, metadata !59), !dbg !709
  %cmp47 = fcmp ult double %add46, %div, !dbg !711
  br i1 %cmp47, label %for.inc60, label %if.then49, !dbg !711

if.then49:                                        ; preds = %for.body42
  %arrayidx51 = getelementptr inbounds double* %x1, i64 %indvars.iv, !dbg !712
  %10 = load double* %arrayidx51, align 8, !dbg !712, !tbaa !635
  %idxprom52 = sext i32 %i.0136 to i64, !dbg !712
  %arrayidx53 = getelementptr inbounds double* %x2, i64 %idxprom52, !dbg !712
  store double %10, double* %arrayidx53, align 8, !dbg !712, !tbaa !635
  %arrayidx55 = getelementptr inbounds double* %y1, i64 %indvars.iv, !dbg !714
  %11 = load double* %arrayidx55, align 8, !dbg !714, !tbaa !635
  %arrayidx57 = getelementptr inbounds double* %y2, i64 %idxprom52, !dbg !714
  store double %11, double* %arrayidx57, align 8, !dbg !714, !tbaa !635
  %inc58 = add nsw i32 %i.0136, 1, !dbg !715
  tail call void @llvm.dbg.value(metadata !{i32 %inc58}, i64 0, metadata !62), !dbg !715
  tail call void @llvm.dbg.value(metadata !705, i64 0, metadata !59), !dbg !716
  br label %for.inc60, !dbg !717

for.inc60:                                        ; preds = %for.body42, %if.then49
  %path.1 = phi double [ 0.000000e+00, %if.then49 ], [ %add46, %for.body42 ]
  %i.1 = phi i32 [ %inc58, %if.then49 ], [ %i.0136, %for.body42 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !707
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !707
  %exitcond = icmp eq i32 %lftr.wideiv, %sub39, !dbg !707
  br i1 %exitcond, label %for.end62, label %for.body42, !dbg !707

for.end62:                                        ; preds = %for.inc60, %for.end
  %i.0.lcssa = phi i32 [ 1, %for.end ], [ %i.1, %for.inc60 ]
  %idxprom64 = sext i32 %sub39 to i64, !dbg !718
  %arrayidx65 = getelementptr inbounds double* %x1, i64 %idxprom64, !dbg !718
  %12 = load double* %arrayidx65, align 8, !dbg !718, !tbaa !635
  %idxprom66 = sext i32 %i.0.lcssa to i64, !dbg !718
  %arrayidx67 = getelementptr inbounds double* %x2, i64 %idxprom66, !dbg !718
  store double %12, double* %arrayidx67, align 8, !dbg !718, !tbaa !635
  %arrayidx70 = getelementptr inbounds double* %y1, i64 %idxprom64, !dbg !719
  %13 = load double* %arrayidx70, align 8, !dbg !719, !tbaa !635
  %arrayidx72 = getelementptr inbounds double* %y2, i64 %idxprom66, !dbg !719
  store double %13, double* %arrayidx72, align 8, !dbg !719, !tbaa !635
  %inc73 = add nsw i32 %i.0.lcssa, 1, !dbg !720
  tail call void @llvm.dbg.value(metadata !{i32 %inc73}, i64 0, metadata !62), !dbg !720
  tail call void @llvm.dbg.value(metadata !{double* %call11}, i64 0, metadata !721) #5, !dbg !723
  %cmp.i = icmp eq double* %call11, null, !dbg !724
  br i1 %cmp.i, label %return, label %if.then2.i, !dbg !724

if.then2.i:                                       ; preds = %for.end62
  %14 = bitcast double* %call11 to i8*, !dbg !725
  tail call void @free(i8* %14) #6, !dbg !725
  tail call void @llvm.dbg.value(metadata !728, i64 0, metadata !721) #5, !dbg !725
  br label %return, !dbg !725

return:                                           ; preds = %if.then2.i, %for.end62, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %inc73, %for.end62 ], [ %inc73, %if.then2.i ]
  ret i32 %retval.0, !dbg !729
}

; Function Attrs: nounwind optsize uwtable
define double* @DVinit(i32 %size, double %dval) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !211), !dbg !730
  tail call void @llvm.dbg.value(metadata !{double %dval}, i64 0, metadata !212), !dbg !731
  tail call void @llvm.dbg.value(metadata !728, i64 0, metadata !213), !dbg !732
  %cmp = icmp sgt i32 %size, 0, !dbg !733
  br i1 %cmp, label %if.then, label %if.end, !dbg !733

if.then:                                          ; preds = %entry
  %call = tail call double* @DVinit2(i32 %size) #8, !dbg !734
  tail call void @llvm.dbg.value(metadata !{double* %call}, i64 0, metadata !213), !dbg !734
  tail call void @DVfill(i32 %size, double* %call, double %dval) #8, !dbg !736
  br label %if.end, !dbg !737

if.end:                                           ; preds = %if.then, %entry
  %y.0 = phi double* [ %call, %if.then ], [ null, %entry ]
  ret double* %y.0, !dbg !738
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize uwtable
define double @DVsum(i32 %size, double* %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !354), !dbg !739
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !355), !dbg !740
  tail call void @llvm.dbg.value(metadata !705, i64 0, metadata !356), !dbg !741
  %cmp = icmp sgt i32 %size, 0, !dbg !742
  br i1 %cmp, label %if.then, label %if.end4, !dbg !742

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !743
  br i1 %cmp1, label %if.then2, label %for.body, !dbg !743

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !744, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str32, i64 0, i64 0), i32 %size, double* null) #6, !dbg !744
  tail call void @exit(i32 -1) #7, !dbg !746
  unreachable, !dbg !746

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %sum.013 = phi double [ %add, %for.body ], [ 0.000000e+00, %if.then ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !747
  %1 = load double* %arrayidx, align 8, !dbg !747, !tbaa !635
  %add = fadd double %sum.013, %1, !dbg !747
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !356), !dbg !747
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !750
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !750
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !750
  br i1 %exitcond, label %if.end4, label %for.body, !dbg !750

if.end4:                                          ; preds = %for.body, %entry
  %sum.1 = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  ret double %sum.1, !dbg !751
}

; Function Attrs: nounwind optsize uwtable
define void @DVfree(double* %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !166), !dbg !752
  %cmp = icmp eq double* %y, null, !dbg !753
  br i1 %cmp, label %if.end3, label %if.then2, !dbg !753

if.then2:                                         ; preds = %entry
  %0 = bitcast double* %y to i8*, !dbg !754
  tail call void @free(i8* %0) #6, !dbg !754
  tail call void @llvm.dbg.value(metadata !728, i64 0, metadata !166), !dbg !754
  br label %if.end3, !dbg !754

if.end3:                                          ; preds = %entry, %if.then2
  ret void, !dbg !755
}

; Function Attrs: nounwind optsize uwtable
define double @DVdot(i32 %size, double* %y, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !68), !dbg !756
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !69), !dbg !757
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !70), !dbg !758
  tail call void @llvm.dbg.value(metadata !705, i64 0, metadata !71), !dbg !759
  %cmp = icmp sgt i32 %size, 0, !dbg !760
  br i1 %cmp, label %if.then, label %if.end7, !dbg !760

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !761
  %cmp2 = icmp eq double* %x, null, !dbg !761
  %or.cond = or i1 %cmp1, %cmp2, !dbg !761
  br i1 %or.cond, label %if.then3, label %for.body, !dbg !761

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !762, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str5, i64 0, i64 0), i32 %size, double* %y, double* %x) #6, !dbg !762
  tail call void @exit(i32 -1) #7, !dbg !764
  unreachable, !dbg !764

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %sum.019 = phi double [ %add, %for.body ], [ 0.000000e+00, %if.then ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !765
  %1 = load double* %arrayidx, align 8, !dbg !765, !tbaa !635
  %arrayidx6 = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !765
  %2 = load double* %arrayidx6, align 8, !dbg !765, !tbaa !635
  %mul = fmul double %1, %2, !dbg !765
  %add = fadd double %sum.019, %mul, !dbg !765
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !71), !dbg !765
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !768
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !768
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !768
  br i1 %exitcond, label %if.end7, label %for.body, !dbg !768

if.end7:                                          ; preds = %for.body, %entry
  %sum.1 = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  ret double %sum.1, !dbg !769
}

; Function Attrs: nounwind optsize uwtable
define double @DVdoti(i32 %size, double* %y, i32* %index, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !79), !dbg !770
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !80), !dbg !771
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !81), !dbg !772
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !82), !dbg !773
  %cmp = icmp slt i32 %size, 0, !dbg !774
  %cmp1 = icmp eq double* %y, null, !dbg !774
  %or.cond = or i1 %cmp, %cmp1, !dbg !774
  %cmp3 = icmp eq i32* %index, null, !dbg !774
  %or.cond23 = or i1 %or.cond, %cmp3, !dbg !774
  %cmp5 = icmp eq double* %x, null, !dbg !774
  %or.cond24 = or i1 %or.cond23, %cmp5, !dbg !774
  br i1 %or.cond24, label %if.then, label %for.cond.preheader, !dbg !774

for.cond.preheader:                               ; preds = %entry
  %cmp625 = icmp sgt i32 %size, 0, !dbg !775
  br i1 %cmp625, label %for.body, label %for.end, !dbg !775

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !777, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x) #6, !dbg !777
  tail call void @exit(i32 -1) #7, !dbg !779
  unreachable, !dbg !779

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %sum.026 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !780
  %1 = load i32* %arrayidx, align 4, !dbg !780, !tbaa !665
  %idxprom7 = sext i32 %1 to i64, !dbg !780
  %arrayidx8 = getelementptr inbounds double* %y, i64 %idxprom7, !dbg !780
  %2 = load double* %arrayidx8, align 8, !dbg !780, !tbaa !635
  %arrayidx10 = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !780
  %3 = load double* %arrayidx10, align 8, !dbg !780, !tbaa !635
  %mul = fmul double %2, %3, !dbg !780
  %add = fadd double %sum.026, %mul, !dbg !780
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !83), !dbg !780
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !775
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !775
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !775
  br i1 %exitcond, label %for.end, label %for.body, !dbg !775

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %sum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  ret double %sum.0.lcssa, !dbg !782
}

; Function Attrs: nounwind optsize uwtable
define void @DVfill(i32 %size, double* %y, double %dval) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !89), !dbg !783
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !90), !dbg !784
  tail call void @llvm.dbg.value(metadata !{double %dval}, i64 0, metadata !91), !dbg !785
  %cmp = icmp sgt i32 %size, 0, !dbg !786
  br i1 %cmp, label %if.then, label %if.end4, !dbg !786

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !787
  br i1 %cmp1, label %if.then2, label %for.body, !dbg !787

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !788, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str7, i64 0, i64 0), i32 %size, double* null, double %dval) #6, !dbg !788
  tail call void @exit(i32 -1) #7, !dbg !790
  unreachable, !dbg !790

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !791
  store double %dval, double* %arrayidx, align 8, !dbg !791, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !794
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !794
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !794
  br i1 %exitcond, label %if.end4, label %for.body, !dbg !794

if.end4:                                          ; preds = %for.body, %entry
  ret void, !dbg !795
}

; Function Attrs: nounwind optsize uwtable
define void @DVfprintf(%struct._IO_FILE* %fp, i32 %size, double* %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !156), !dbg !796
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !157), !dbg !797
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !158), !dbg !798
  %cmp = icmp ne %struct._IO_FILE* %fp, null, !dbg !799
  %cmp1 = icmp sgt i32 %size, 0, !dbg !799
  %or.cond = and i1 %cmp, %cmp1, !dbg !799
  br i1 %or.cond, label %if.then, label %if.end10, !dbg !799

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq double* %y, null, !dbg !800
  br i1 %cmp2, label %if.then3, label %for.body, !dbg !800

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !801, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str8, i64 0, i64 0), %struct._IO_FILE* %fp, i32 %size, double* null) #6, !dbg !801
  tail call void @exit(i32 -1) #7, !dbg !803
  unreachable, !dbg !803

for.body:                                         ; preds = %if.then, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %if.then ]
  %1 = trunc i64 %indvars.iv to i32, !dbg !804
  %rem = srem i32 %1, 6, !dbg !804
  %cmp5 = icmp eq i32 %rem, 0, !dbg !804
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !804

if.then6:                                         ; preds = %for.body
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp), !dbg !804
  br label %if.end, !dbg !804

if.end:                                           ; preds = %if.then6, %for.body
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !807
  %3 = load double* %arrayidx, align 8, !dbg !807, !tbaa !635
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0), double %3) #6, !dbg !807
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !808
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !808
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !808
  br i1 %exitcond, label %if.end10, label %for.body, !dbg !808

if.end10:                                         ; preds = %if.end, %entry
  ret void, !dbg !809
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %size, double* %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !171), !dbg !810
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !172), !dbg !811
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !173), !dbg !812
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !174), !dbg !813
  %cmp = icmp ne %struct._IO_FILE* %fp, null, !dbg !814
  %cmp1 = icmp sgt i32 %size, 0, !dbg !814
  %or.cond = and i1 %cmp, %cmp1, !dbg !814
  br i1 %or.cond, label %if.then, label %if.end9, !dbg !814

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq double* %y, null, !dbg !815
  br i1 %cmp2, label %if.then3, label %for.body, !dbg !815

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !817, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str11, i64 0, i64 0), %struct._IO_FILE* %fp, i32 %size, double* null) #6, !dbg !817
  tail call void @exit(i32 -1) #7, !dbg !819
  unreachable, !dbg !819

for.cond:                                         ; preds = %for.body
  %1 = trunc i64 %indvars.iv.next to i32, !dbg !820
  %cmp4 = icmp slt i32 %1, %size, !dbg !820
  br i1 %cmp4, label %for.body, label %if.end9, !dbg !820

for.body:                                         ; preds = %if.then, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.then ]
  %i.020 = phi i32 [ %inc, %for.cond ], [ 0, %if.then ]
  %add.ptr = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !822
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0), double* %add.ptr) #6, !dbg !822
  %cmp6 = icmp eq i32 %call5, 1, !dbg !822
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !820
  %inc = add nsw i32 %i.020, 1, !dbg !820
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !174), !dbg !820
  br i1 %cmp6, label %for.cond, label %if.end9, !dbg !822

if.end9:                                          ; preds = %for.body, %for.cond, %entry
  %i.1 = phi i32 [ 0, %entry ], [ %i.020, %for.body ], [ %inc, %for.cond ]
  ret i32 %i.1, !dbg !824
}

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind optsize uwtable
define void @DVgather(i32 %size, double* %y, double* %x, i32* %index) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !180), !dbg !825
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !181), !dbg !826
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !182), !dbg !827
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !183), !dbg !828
  %cmp = icmp sgt i32 %size, 0, !dbg !829
  br i1 %cmp, label %if.then, label %if.end11, !dbg !829

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !830
  %cmp2 = icmp eq double* %x, null, !dbg !830
  %or.cond = or i1 %cmp1, %cmp2, !dbg !830
  %cmp4 = icmp eq i32* %index, null, !dbg !830
  %or.cond23 = or i1 %or.cond, %cmp4, !dbg !830
  br i1 %or.cond23, label %if.then5, label %for.body, !dbg !830

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !831, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str13, i64 0, i64 0), i32 %size, double* %y, double* %x, i32* %index) #6, !dbg !831
  tail call void @exit(i32 -1) #7, !dbg !833
  unreachable, !dbg !833

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !834
  %1 = load i32* %arrayidx, align 4, !dbg !834, !tbaa !665
  %idxprom7 = sext i32 %1 to i64, !dbg !834
  %arrayidx8 = getelementptr inbounds double* %x, i64 %idxprom7, !dbg !834
  %2 = load double* %arrayidx8, align 8, !dbg !834, !tbaa !635
  %arrayidx10 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !834
  store double %2, double* %arrayidx10, align 8, !dbg !834, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !837
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !837
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !837
  br i1 %exitcond, label %if.end11, label %for.body, !dbg !837

if.end11:                                         ; preds = %for.body, %entry
  ret void, !dbg !838
}

; Function Attrs: nounwind optsize uwtable
define void @DVgatherAddZero(i32 %size, double* %y, double* %x, i32* %index) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !189), !dbg !839
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !190), !dbg !840
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !191), !dbg !841
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !192), !dbg !842
  %cmp = icmp sgt i32 %size, 0, !dbg !843
  br i1 %cmp, label %if.then, label %if.end13, !dbg !843

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !844
  %cmp2 = icmp eq double* %x, null, !dbg !844
  %or.cond = or i1 %cmp1, %cmp2, !dbg !844
  %cmp4 = icmp eq i32* %index, null, !dbg !844
  %or.cond27 = or i1 %or.cond, %cmp4, !dbg !844
  br i1 %or.cond27, label %if.then5, label %for.body, !dbg !844

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !845, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([88 x i8]* @.str14, i64 0, i64 0), i32 %size, double* %y, double* %x, i32* %index) #6, !dbg !845
  tail call void @exit(i32 -1) #7, !dbg !847
  unreachable, !dbg !847

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !848
  %1 = load i32* %arrayidx, align 4, !dbg !848, !tbaa !665
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !196), !dbg !848
  %idxprom7 = sext i32 %1 to i64, !dbg !851
  %arrayidx8 = getelementptr inbounds double* %x, i64 %idxprom7, !dbg !851
  %2 = load double* %arrayidx8, align 8, !dbg !851, !tbaa !635
  %arrayidx10 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !851
  %3 = load double* %arrayidx10, align 8, !dbg !851, !tbaa !635
  %add = fadd double %2, %3, !dbg !851
  store double %add, double* %arrayidx10, align 8, !dbg !851, !tbaa !635
  store double 0.000000e+00, double* %arrayidx8, align 8, !dbg !852, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !853
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !853
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !853
  br i1 %exitcond, label %if.end13, label %for.body, !dbg !853

if.end13:                                         ; preds = %for.body, %entry
  ret void, !dbg !854
}

; Function Attrs: nounwind optsize uwtable
define void @DVgatherZero(i32 %size, double* %y, double* %x, i32* %index) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !199), !dbg !855
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !200), !dbg !856
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !201), !dbg !857
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !202), !dbg !858
  %cmp = icmp sgt i32 %size, 0, !dbg !859
  br i1 %cmp, label %if.then, label %if.end13, !dbg !859

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !860
  %cmp2 = icmp eq double* %x, null, !dbg !860
  %or.cond = or i1 %cmp1, %cmp2, !dbg !860
  %cmp4 = icmp eq i32* %index, null, !dbg !860
  %or.cond27 = or i1 %or.cond, %cmp4, !dbg !860
  br i1 %or.cond27, label %if.then5, label %for.body, !dbg !860

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !861, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([85 x i8]* @.str15, i64 0, i64 0), i32 %size, double* %y, double* %x, i32* %index) #6, !dbg !861
  tail call void @exit(i32 -1) #7, !dbg !863
  unreachable, !dbg !863

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !864
  %1 = load i32* %arrayidx, align 4, !dbg !864, !tbaa !665
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !206), !dbg !864
  %idxprom7 = sext i32 %1 to i64, !dbg !867
  %arrayidx8 = getelementptr inbounds double* %x, i64 %idxprom7, !dbg !867
  %2 = load double* %arrayidx8, align 8, !dbg !867, !tbaa !635
  %arrayidx10 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !867
  store double %2, double* %arrayidx10, align 8, !dbg !867, !tbaa !635
  store double 0.000000e+00, double* %arrayidx8, align 8, !dbg !868, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !869
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !869
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !869
  br i1 %exitcond, label %if.end13, label %for.body, !dbg !869

if.end13:                                         ; preds = %for.body, %entry
  ret void, !dbg !870
}

; Function Attrs: nounwind optsize uwtable
define noalias double* @DVinit2(i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !218), !dbg !871
  tail call void @llvm.dbg.value(metadata !728, i64 0, metadata !219), !dbg !872
  %cmp = icmp sgt i32 %size, 0, !dbg !873
  br i1 %cmp, label %if.then2, label %if.end19, !dbg !873

if.then2:                                         ; preds = %entry
  %conv = sext i32 %size to i64, !dbg !874
  %mul = shl nsw i64 %conv, 3, !dbg !874
  %call = tail call noalias i8* @malloc(i64 %mul) #6, !dbg !874
  %0 = bitcast i8* %call to double*, !dbg !874
  tail call void @llvm.dbg.value(metadata !{double* %0}, i64 0, metadata !219), !dbg !874
  %cmp3 = icmp eq i8* %call, null, !dbg !874
  br i1 %cmp3, label %if.then5, label %if.end19, !dbg !874

if.then5:                                         ; preds = %if.then2
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !877, !tbaa !629
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str16, i64 0, i64 0), i64 %mul, i32 517, i8* getelementptr inbounds ([83 x i8]* @.str17, i64 0, i64 0)) #6, !dbg !877
  tail call void @exit(i32 -1) #7, !dbg !877
  unreachable, !dbg !877

if.end19:                                         ; preds = %if.then2, %entry
  %y.0 = phi double* [ %0, %if.then2 ], [ null, %entry ]
  ret double* %y.0, !dbg !879
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize uwtable
define void @DVinvPerm(i32 %size, double* %y, i32* %index) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !224), !dbg !880
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !225), !dbg !881
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !226), !dbg !882
  %cmp = icmp sgt i32 %size, 0, !dbg !883
  br i1 %cmp, label %if.then, label %if.end10, !dbg !883

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !884
  %cmp2 = icmp eq i32* %index, null, !dbg !884
  %or.cond = or i1 %cmp1, %cmp2, !dbg !884
  br i1 %or.cond, label %if.then3, label %for.body.lr.ph, !dbg !884

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !885, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([72 x i8]* @.str19, i64 0, i64 0), i32 %size, double* %y, i32* %index) #6, !dbg !885
  tail call void @exit(i32 -1) #7, !dbg !887
  unreachable, !dbg !887

for.body.lr.ph:                                   ; preds = %if.then
  %call4 = tail call double* @DVinit2(i32 %size) #8, !dbg !888
  tail call void @llvm.dbg.value(metadata !{double* %call4}, i64 0, metadata !227), !dbg !888
  tail call void @DVcopy(i32 %size, double* %call4, double* %y) #8, !dbg !889
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !230), !dbg !890
  br label %for.body, !dbg !890

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %call4, i64 %indvars.iv, !dbg !892
  %1 = load double* %arrayidx, align 8, !dbg !892, !tbaa !635
  %arrayidx7 = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !892
  %2 = load i32* %arrayidx7, align 4, !dbg !892, !tbaa !665
  %idxprom8 = sext i32 %2 to i64, !dbg !892
  %arrayidx9 = getelementptr inbounds double* %y, i64 %idxprom8, !dbg !892
  store double %1, double* %arrayidx9, align 8, !dbg !892, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !890
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !890
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !890
  br i1 %exitcond, label %if.then2.i, label %for.body, !dbg !890

if.then2.i:                                       ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{double* %call4}, i64 0, metadata !894) #5, !dbg !896
  %3 = bitcast double* %call4 to i8*, !dbg !897
  tail call void @free(i8* %3) #6, !dbg !897
  tail call void @llvm.dbg.value(metadata !728, i64 0, metadata !894) #5, !dbg !897
  br label %if.end10, !dbg !897

if.end10:                                         ; preds = %if.then2.i, %entry
  ret void, !dbg !898
}

; Function Attrs: nounwind optsize uwtable
define double @DVmax(i32 %size, double* %y, i32* %ploc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !235), !dbg !899
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !236), !dbg !900
  tail call void @llvm.dbg.value(metadata !{i32* %ploc}, i64 0, metadata !237), !dbg !901
  tail call void @llvm.dbg.value(metadata !705, i64 0, metadata !238), !dbg !902
  tail call void @llvm.dbg.value(metadata !903, i64 0, metadata !239), !dbg !904
  %cmp = icmp sgt i32 %size, 0, !dbg !905
  br i1 %cmp, label %if.then, label %if.end10, !dbg !905

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !906
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !906

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !907, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str20, i64 0, i64 0), i32 %size, double* null, i32* %ploc) #6, !dbg !907
  tail call void @exit(i32 -1) #7, !dbg !909
  unreachable, !dbg !909

if.else:                                          ; preds = %if.then
  %1 = load double* %y, align 8, !dbg !910, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !238), !dbg !910
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !239), !dbg !911
  tail call void @llvm.dbg.value(metadata !692, i64 0, metadata !240), !dbg !912
  %cmp325 = icmp sgt i32 %size, 1, !dbg !912
  br i1 %cmp325, label %for.body, label %for.end, !dbg !912

for.body:                                         ; preds = %if.else, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.else ]
  %loc.027 = phi i32 [ %loc.1, %for.body ], [ 0, %if.else ]
  %maxval.026 = phi double [ %maxval.1, %for.body ], [ %1, %if.else ]
  %arrayidx4 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !914
  %2 = load double* %arrayidx4, align 8, !dbg !914, !tbaa !635
  %cmp5 = fcmp olt double %maxval.026, %2, !dbg !914
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !238), !dbg !916
  tail call void @llvm.dbg.value(metadata !918, i64 0, metadata !239), !dbg !919
  %maxval.1 = select i1 %cmp5, double %2, double %maxval.026, !dbg !914
  %3 = trunc i64 %indvars.iv to i32, !dbg !914
  %loc.1 = select i1 %cmp5, i32 %3, i32 %loc.027, !dbg !914
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !912
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !912
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !912
  br i1 %exitcond, label %for.end, label %for.body, !dbg !912

for.end:                                          ; preds = %for.body, %if.else
  %loc.0.lcssa = phi i32 [ 0, %if.else ], [ %loc.1, %for.body ]
  %maxval.0.lcssa = phi double [ %1, %if.else ], [ %maxval.1, %for.body ]
  store i32 %loc.0.lcssa, i32* %ploc, align 4, !dbg !920, !tbaa !665
  br label %if.end10, !dbg !921

if.end10:                                         ; preds = %for.end, %entry
  %maxval.2 = phi double [ %maxval.0.lcssa, %for.end ], [ 0.000000e+00, %entry ]
  %loc.2 = phi i32 [ %loc.0.lcssa, %for.end ], [ -1, %entry ]
  store i32 %loc.2, i32* %ploc, align 4, !dbg !922, !tbaa !665
  ret double %maxval.2, !dbg !923
}

; Function Attrs: nounwind optsize uwtable
define double @DVmaxabs(i32 %size, double* %y, i32* %ploc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !245), !dbg !924
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !246), !dbg !925
  tail call void @llvm.dbg.value(metadata !{i32* %ploc}, i64 0, metadata !247), !dbg !926
  tail call void @llvm.dbg.value(metadata !705, i64 0, metadata !248), !dbg !927
  tail call void @llvm.dbg.value(metadata !903, i64 0, metadata !249), !dbg !928
  %cmp = icmp sgt i32 %size, 0, !dbg !929
  br i1 %cmp, label %if.then, label %if.end21, !dbg !929

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !930
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !930

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !931, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str21, i64 0, i64 0), i32 %size, double* null, i32* %ploc) #6, !dbg !931
  tail call void @exit(i32 -1) #7, !dbg !933
  unreachable, !dbg !933

if.else:                                          ; preds = %if.then
  %1 = load double* %y, align 8, !dbg !934, !tbaa !635
  %cmp3 = fcmp ult double %1, 0.000000e+00, !dbg !934
  br i1 %cmp3, label %cond.false, label %for.cond.preheader, !dbg !934

cond.false:                                       ; preds = %if.else
  %sub = fsub double -0.000000e+00, %1, !dbg !934
  br label %for.cond.preheader, !dbg !934

for.cond.preheader:                               ; preds = %if.else, %cond.false
  %maxval.0.ph = phi double [ %sub, %cond.false ], [ %1, %if.else ]
  %cmp638 = icmp sgt i32 %size, 1, !dbg !935
  br i1 %cmp638, label %for.body, label %for.end, !dbg !935

for.body:                                         ; preds = %for.cond.preheader, %cond.end16
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end16 ], [ 1, %for.cond.preheader ]
  %maxval.041 = phi double [ %maxval.1, %cond.end16 ], [ %maxval.0.ph, %for.cond.preheader ]
  %loc.039 = phi i32 [ %loc.1, %cond.end16 ], [ 0, %for.cond.preheader ]
  %arrayidx7 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !937
  %2 = load double* %arrayidx7, align 8, !dbg !937, !tbaa !635
  %cmp8 = fcmp ult double %2, 0.000000e+00, !dbg !937
  br i1 %cmp8, label %cond.false12, label %cond.end16, !dbg !937

cond.false12:                                     ; preds = %for.body
  %sub15 = fsub double -0.000000e+00, %2, !dbg !937
  br label %cond.end16, !dbg !937

cond.end16:                                       ; preds = %for.body, %cond.false12
  %cond17 = phi double [ %sub15, %cond.false12 ], [ %2, %for.body ], !dbg !937
  tail call void @llvm.dbg.value(metadata !{double %cond17}, i64 0, metadata !253), !dbg !937
  %cmp18 = fcmp olt double %maxval.041, %cond17, !dbg !939
  tail call void @llvm.dbg.value(metadata !{double %cond17}, i64 0, metadata !248), !dbg !940
  tail call void @llvm.dbg.value(metadata !918, i64 0, metadata !249), !dbg !942
  %3 = trunc i64 %indvars.iv to i32, !dbg !939
  %loc.1 = select i1 %cmp18, i32 %3, i32 %loc.039, !dbg !939
  %maxval.1 = select i1 %cmp18, double %cond17, double %maxval.041, !dbg !939
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !935
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !935
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !935
  br i1 %exitcond, label %for.end, label %for.body, !dbg !935

for.end:                                          ; preds = %cond.end16, %for.cond.preheader
  %maxval.0.lcssa = phi double [ %maxval.0.ph, %for.cond.preheader ], [ %maxval.1, %cond.end16 ]
  %loc.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %loc.1, %cond.end16 ]
  store i32 %loc.0.lcssa, i32* %ploc, align 4, !dbg !943, !tbaa !665
  br label %if.end21, !dbg !944

if.end21:                                         ; preds = %for.end, %entry
  %loc.2 = phi i32 [ %loc.0.lcssa, %for.end ], [ -1, %entry ]
  %maxval.2 = phi double [ %maxval.0.lcssa, %for.end ], [ 0.000000e+00, %entry ]
  store i32 %loc.2, i32* %ploc, align 4, !dbg !945, !tbaa !665
  ret double %maxval.2, !dbg !946
}

; Function Attrs: nounwind optsize uwtable
define double @DVmin(i32 %size, double* %y, i32* %ploc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !256), !dbg !947
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !257), !dbg !948
  tail call void @llvm.dbg.value(metadata !{i32* %ploc}, i64 0, metadata !258), !dbg !949
  tail call void @llvm.dbg.value(metadata !705, i64 0, metadata !259), !dbg !950
  tail call void @llvm.dbg.value(metadata !903, i64 0, metadata !260), !dbg !951
  %cmp = icmp sgt i32 %size, 0, !dbg !952
  br i1 %cmp, label %if.then, label %if.end10, !dbg !952

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !953
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !953

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !954, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str22, i64 0, i64 0), i32 %size, double* null, i32* %ploc) #6, !dbg !954
  tail call void @exit(i32 -1) #7, !dbg !956
  unreachable, !dbg !956

if.else:                                          ; preds = %if.then
  %1 = load double* %y, align 8, !dbg !957, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !259), !dbg !957
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !260), !dbg !958
  tail call void @llvm.dbg.value(metadata !692, i64 0, metadata !261), !dbg !959
  %cmp325 = icmp sgt i32 %size, 1, !dbg !959
  br i1 %cmp325, label %for.body, label %for.end, !dbg !959

for.body:                                         ; preds = %if.else, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.else ]
  %loc.027 = phi i32 [ %loc.1, %for.body ], [ 0, %if.else ]
  %minval.026 = phi double [ %minval.1, %for.body ], [ %1, %if.else ]
  %arrayidx4 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !961
  %2 = load double* %arrayidx4, align 8, !dbg !961, !tbaa !635
  %cmp5 = fcmp ogt double %minval.026, %2, !dbg !961
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !259), !dbg !963
  tail call void @llvm.dbg.value(metadata !918, i64 0, metadata !260), !dbg !965
  %minval.1 = select i1 %cmp5, double %2, double %minval.026, !dbg !961
  %3 = trunc i64 %indvars.iv to i32, !dbg !961
  %loc.1 = select i1 %cmp5, i32 %3, i32 %loc.027, !dbg !961
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !959
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !959
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !959
  br i1 %exitcond, label %for.end, label %for.body, !dbg !959

for.end:                                          ; preds = %for.body, %if.else
  %loc.0.lcssa = phi i32 [ 0, %if.else ], [ %loc.1, %for.body ]
  %minval.0.lcssa = phi double [ %1, %if.else ], [ %minval.1, %for.body ]
  store i32 %loc.0.lcssa, i32* %ploc, align 4, !dbg !966, !tbaa !665
  br label %if.end10, !dbg !967

if.end10:                                         ; preds = %for.end, %entry
  %minval.2 = phi double [ %minval.0.lcssa, %for.end ], [ 0.000000e+00, %entry ]
  %loc.2 = phi i32 [ %loc.0.lcssa, %for.end ], [ -1, %entry ]
  store i32 %loc.2, i32* %ploc, align 4, !dbg !968, !tbaa !665
  ret double %minval.2, !dbg !969
}

; Function Attrs: nounwind optsize uwtable
define double @DVminabs(i32 %size, double* %y, i32* %ploc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !266), !dbg !970
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !267), !dbg !971
  tail call void @llvm.dbg.value(metadata !{i32* %ploc}, i64 0, metadata !268), !dbg !972
  tail call void @llvm.dbg.value(metadata !705, i64 0, metadata !269), !dbg !973
  tail call void @llvm.dbg.value(metadata !903, i64 0, metadata !270), !dbg !974
  %cmp = icmp sgt i32 %size, 0, !dbg !975
  br i1 %cmp, label %if.then, label %if.end21, !dbg !975

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !976
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !976

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !977, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str23, i64 0, i64 0), i32 %size, double* null, i32* %ploc) #6, !dbg !977
  tail call void @exit(i32 -1) #7, !dbg !979
  unreachable, !dbg !979

if.else:                                          ; preds = %if.then
  %1 = load double* %y, align 8, !dbg !980, !tbaa !635
  %cmp3 = fcmp ult double %1, 0.000000e+00, !dbg !980
  br i1 %cmp3, label %cond.false, label %for.cond.preheader, !dbg !980

cond.false:                                       ; preds = %if.else
  %sub = fsub double -0.000000e+00, %1, !dbg !980
  br label %for.cond.preheader, !dbg !980

for.cond.preheader:                               ; preds = %if.else, %cond.false
  %minval.0.ph = phi double [ %sub, %cond.false ], [ %1, %if.else ]
  %cmp638 = icmp sgt i32 %size, 1, !dbg !981
  br i1 %cmp638, label %for.body, label %for.end, !dbg !981

for.body:                                         ; preds = %for.cond.preheader, %cond.end16
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end16 ], [ 1, %for.cond.preheader ]
  %minval.041 = phi double [ %minval.1, %cond.end16 ], [ %minval.0.ph, %for.cond.preheader ]
  %loc.039 = phi i32 [ %loc.1, %cond.end16 ], [ 0, %for.cond.preheader ]
  %arrayidx7 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !983
  %2 = load double* %arrayidx7, align 8, !dbg !983, !tbaa !635
  %cmp8 = fcmp ult double %2, 0.000000e+00, !dbg !983
  br i1 %cmp8, label %cond.false12, label %cond.end16, !dbg !983

cond.false12:                                     ; preds = %for.body
  %sub15 = fsub double -0.000000e+00, %2, !dbg !983
  br label %cond.end16, !dbg !983

cond.end16:                                       ; preds = %for.body, %cond.false12
  %cond17 = phi double [ %sub15, %cond.false12 ], [ %2, %for.body ], !dbg !983
  tail call void @llvm.dbg.value(metadata !{double %cond17}, i64 0, metadata !274), !dbg !983
  %cmp18 = fcmp ogt double %minval.041, %cond17, !dbg !985
  tail call void @llvm.dbg.value(metadata !{double %cond17}, i64 0, metadata !269), !dbg !986
  tail call void @llvm.dbg.value(metadata !918, i64 0, metadata !270), !dbg !988
  %3 = trunc i64 %indvars.iv to i32, !dbg !985
  %loc.1 = select i1 %cmp18, i32 %3, i32 %loc.039, !dbg !985
  %minval.1 = select i1 %cmp18, double %cond17, double %minval.041, !dbg !985
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !981
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !981
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !981
  br i1 %exitcond, label %for.end, label %for.body, !dbg !981

for.end:                                          ; preds = %cond.end16, %for.cond.preheader
  %minval.0.lcssa = phi double [ %minval.0.ph, %for.cond.preheader ], [ %minval.1, %cond.end16 ]
  %loc.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %loc.1, %cond.end16 ]
  store i32 %loc.0.lcssa, i32* %ploc, align 4, !dbg !989, !tbaa !665
  br label %if.end21, !dbg !990

if.end21:                                         ; preds = %for.end, %entry
  %loc.2 = phi i32 [ %loc.0.lcssa, %for.end ], [ -1, %entry ]
  %minval.2 = phi double [ %minval.0.lcssa, %for.end ], [ 0.000000e+00, %entry ]
  store i32 %loc.2, i32* %ploc, align 4, !dbg !991, !tbaa !665
  ret double %minval.2, !dbg !992
}

; Function Attrs: nounwind optsize uwtable
define void @DVperm(i32 %size, double* %y, i32* %index) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !277), !dbg !993
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !278), !dbg !994
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !279), !dbg !995
  %cmp = icmp sgt i32 %size, 0, !dbg !996
  br i1 %cmp, label %if.then, label %if.end10, !dbg !996

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !997
  %cmp2 = icmp eq i32* %index, null, !dbg !997
  %or.cond = or i1 %cmp1, %cmp2, !dbg !997
  br i1 %or.cond, label %if.then3, label %for.body.lr.ph, !dbg !997

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !998, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str24, i64 0, i64 0), i32 %size, double* %y, i32* %index) #6, !dbg !998
  tail call void @exit(i32 -1) #7, !dbg !1000
  unreachable, !dbg !1000

for.body.lr.ph:                                   ; preds = %if.then
  %call4 = tail call double* @DVinit2(i32 %size) #8, !dbg !1001
  tail call void @llvm.dbg.value(metadata !{double* %call4}, i64 0, metadata !280), !dbg !1001
  tail call void @DVcopy(i32 %size, double* %call4, double* %y) #8, !dbg !1002
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !283), !dbg !1003
  br label %for.body, !dbg !1003

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !1005
  %1 = load i32* %arrayidx, align 4, !dbg !1005, !tbaa !665
  %idxprom6 = sext i32 %1 to i64, !dbg !1005
  %arrayidx7 = getelementptr inbounds double* %call4, i64 %idxprom6, !dbg !1005
  %2 = load double* %arrayidx7, align 8, !dbg !1005, !tbaa !635
  %arrayidx9 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1005
  store double %2, double* %arrayidx9, align 8, !dbg !1005, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1003
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1003
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1003
  br i1 %exitcond, label %if.then2.i, label %for.body, !dbg !1003

if.then2.i:                                       ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{double* %call4}, i64 0, metadata !1007) #5, !dbg !1009
  %3 = bitcast double* %call4 to i8*, !dbg !1010
  tail call void @free(i8* %3) #6, !dbg !1010
  tail call void @llvm.dbg.value(metadata !728, i64 0, metadata !1007) #5, !dbg !1010
  br label %if.end10, !dbg !1010

if.end10:                                         ; preds = %if.then2.i, %entry
  ret void, !dbg !1011
}

; Function Attrs: nounwind optsize uwtable
define void @DVramp(i32 %size, double* %y, double %start, double %inc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !288), !dbg !1012
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !289), !dbg !1013
  tail call void @llvm.dbg.value(metadata !{double %start}, i64 0, metadata !290), !dbg !1014
  tail call void @llvm.dbg.value(metadata !{double %inc}, i64 0, metadata !291), !dbg !1015
  %cmp = icmp sgt i32 %size, 0, !dbg !1016
  br i1 %cmp, label %if.then, label %if.end5, !dbg !1016

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !1017
  br i1 %cmp1, label %if.then2, label %for.body, !dbg !1017

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1018, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str25, i64 0, i64 0), i32 %size, double* null, double %start, double %inc) #6, !dbg !1018
  tail call void @exit(i32 -1) #7, !dbg !1020
  unreachable, !dbg !1020

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %val.017 = phi double [ %add, %for.body ], [ %start, %if.then ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1021
  store double %val.017, double* %arrayidx, align 8, !dbg !1021, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1024
  %add = fadd double %val.017, %inc, !dbg !1024
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !295), !dbg !1024
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1024
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1024
  br i1 %exitcond, label %if.end5, label %for.body, !dbg !1024

if.end5:                                          ; preds = %for.body, %entry
  ret void, !dbg !1025
}

; Function Attrs: nounwind optsize uwtable
define void @DVsub(i32 %size, double* %y, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !298), !dbg !1026
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !299), !dbg !1027
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !300), !dbg !1028
  %cmp = icmp sgt i32 %size, 0, !dbg !1029
  br i1 %cmp, label %if.then, label %if.end7, !dbg !1029

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !1030
  %cmp2 = icmp eq double* %x, null, !dbg !1030
  %or.cond = or i1 %cmp1, %cmp2, !dbg !1030
  br i1 %or.cond, label %if.then3, label %for.body, !dbg !1030

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1031, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str26, i64 0, i64 0), i32 %size, double* %y, double* %x) #6, !dbg !1031
  tail call void @exit(i32 -1) #7, !dbg !1033
  unreachable, !dbg !1033

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1034
  %1 = load double* %arrayidx, align 8, !dbg !1034, !tbaa !635
  %arrayidx6 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1034
  %2 = load double* %arrayidx6, align 8, !dbg !1034, !tbaa !635
  %sub = fsub double %2, %1, !dbg !1034
  store double %sub, double* %arrayidx6, align 8, !dbg !1034, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1037
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1037
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1037
  br i1 %exitcond, label %if.end7, label %for.body, !dbg !1037

if.end7:                                          ; preds = %for.body, %entry
  ret void, !dbg !1038
}

; Function Attrs: nounwind optsize uwtable
define void @DVscale(i32 %size, double* %y, double %alpha) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !306), !dbg !1039
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !307), !dbg !1040
  tail call void @llvm.dbg.value(metadata !{double %alpha}, i64 0, metadata !308), !dbg !1041
  %cmp = icmp sgt i32 %size, 0, !dbg !1042
  %cmp1 = fcmp une double %alpha, 1.000000e+00, !dbg !1042
  %or.cond = and i1 %cmp, %cmp1, !dbg !1042
  br i1 %or.cond, label %if.then, label %if.end5, !dbg !1042

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq double* %y, null, !dbg !1043
  br i1 %cmp2, label %if.then3, label %for.body, !dbg !1043

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1044, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str27, i64 0, i64 0), i32 %size, double* null, double %alpha) #6, !dbg !1044
  tail call void @exit(i32 -1) #7, !dbg !1046
  unreachable, !dbg !1046

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1047
  %1 = load double* %arrayidx, align 8, !dbg !1047, !tbaa !635
  %mul = fmul double %1, %alpha, !dbg !1047
  store double %mul, double* %arrayidx, align 8, !dbg !1047, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1050
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1050
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1050
  br i1 %exitcond, label %if.end5, label %for.body, !dbg !1050

if.end5:                                          ; preds = %for.body, %entry
  ret void, !dbg !1051
}

; Function Attrs: nounwind optsize uwtable
define void @DVscatter(i32 %size, double* %y, i32* %index, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !316), !dbg !1052
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !317), !dbg !1053
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !318), !dbg !1054
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !319), !dbg !1055
  %cmp = icmp sgt i32 %size, 0, !dbg !1056
  br i1 %cmp, label %if.then, label %if.end11, !dbg !1056

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !1057
  %cmp2 = icmp eq double* %x, null, !dbg !1057
  %or.cond = or i1 %cmp1, %cmp2, !dbg !1057
  %cmp4 = icmp eq i32* %index, null, !dbg !1057
  %or.cond23 = or i1 %or.cond, %cmp4, !dbg !1057
  br i1 %or.cond23, label %if.then5, label %for.body, !dbg !1057

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1058, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str28, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x) #6, !dbg !1058
  tail call void @exit(i32 -1) #7, !dbg !1060
  unreachable, !dbg !1060

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1061
  %1 = load double* %arrayidx, align 8, !dbg !1061, !tbaa !635
  %arrayidx8 = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !1061
  %2 = load i32* %arrayidx8, align 4, !dbg !1061, !tbaa !665
  %idxprom9 = sext i32 %2 to i64, !dbg !1061
  %arrayidx10 = getelementptr inbounds double* %y, i64 %idxprom9, !dbg !1061
  store double %1, double* %arrayidx10, align 8, !dbg !1061, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1064
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1064
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1064
  br i1 %exitcond, label %if.end11, label %for.body, !dbg !1064

if.end11:                                         ; preds = %for.body, %entry
  ret void, !dbg !1065
}

; Function Attrs: nounwind optsize uwtable
define void @DVscatterAdd(i32 %size, double* %y, i32* %index, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !325), !dbg !1066
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !326), !dbg !1067
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !327), !dbg !1068
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !328), !dbg !1069
  %cmp = icmp sgt i32 %size, 0, !dbg !1070
  br i1 %cmp, label %if.then, label %if.end11, !dbg !1070

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !1071
  %cmp2 = icmp eq double* %x, null, !dbg !1071
  %or.cond = or i1 %cmp1, %cmp2, !dbg !1071
  %cmp4 = icmp eq i32* %index, null, !dbg !1071
  %or.cond23 = or i1 %or.cond, %cmp4, !dbg !1071
  br i1 %or.cond23, label %if.then5, label %for.body, !dbg !1071

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1072, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([84 x i8]* @.str29, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x) #6, !dbg !1072
  tail call void @exit(i32 -1) #7, !dbg !1074
  unreachable, !dbg !1074

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1075
  %1 = load double* %arrayidx, align 8, !dbg !1075, !tbaa !635
  %arrayidx8 = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !1075
  %2 = load i32* %arrayidx8, align 4, !dbg !1075, !tbaa !665
  %idxprom9 = sext i32 %2 to i64, !dbg !1075
  %arrayidx10 = getelementptr inbounds double* %y, i64 %idxprom9, !dbg !1075
  %3 = load double* %arrayidx10, align 8, !dbg !1075, !tbaa !635
  %add = fadd double %1, %3, !dbg !1075
  store double %add, double* %arrayidx10, align 8, !dbg !1075, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1078
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1078
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1078
  br i1 %exitcond, label %if.end11, label %for.body, !dbg !1078

if.end11:                                         ; preds = %for.body, %entry
  ret void, !dbg !1079
}

; Function Attrs: nounwind optsize uwtable
define void @DVscatterAddZero(i32 %size, double* %y, i32* %index, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !334), !dbg !1080
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !335), !dbg !1081
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !336), !dbg !1082
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !337), !dbg !1083
  %cmp = icmp sgt i32 %size, 0, !dbg !1084
  br i1 %cmp, label %if.then, label %if.end13, !dbg !1084

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !1085
  %cmp2 = icmp eq double* %x, null, !dbg !1085
  %or.cond = or i1 %cmp1, %cmp2, !dbg !1085
  %cmp4 = icmp eq i32* %index, null, !dbg !1085
  %or.cond27 = or i1 %or.cond, %cmp4, !dbg !1085
  br i1 %or.cond27, label %if.then5, label %for.body, !dbg !1085

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1086, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([88 x i8]* @.str30, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x) #6, !dbg !1086
  tail call void @exit(i32 -1) #7, !dbg !1088
  unreachable, !dbg !1088

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1089
  %1 = load double* %arrayidx, align 8, !dbg !1089, !tbaa !635
  %arrayidx8 = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !1089
  %2 = load i32* %arrayidx8, align 4, !dbg !1089, !tbaa !665
  %idxprom9 = sext i32 %2 to i64, !dbg !1089
  %arrayidx10 = getelementptr inbounds double* %y, i64 %idxprom9, !dbg !1089
  %3 = load double* %arrayidx10, align 8, !dbg !1089, !tbaa !635
  %add = fadd double %1, %3, !dbg !1089
  store double %add, double* %arrayidx10, align 8, !dbg !1089, !tbaa !635
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !1092, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1093
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1093
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1093
  br i1 %exitcond, label %if.end13, label %for.body, !dbg !1093

if.end13:                                         ; preds = %for.body, %entry
  ret void, !dbg !1094
}

; Function Attrs: nounwind optsize uwtable
define void @DVscatterZero(i32 %size, double* %y, i32* %index, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !343), !dbg !1095
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !344), !dbg !1096
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !345), !dbg !1097
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !346), !dbg !1098
  %cmp = icmp sgt i32 %size, 0, !dbg !1099
  br i1 %cmp, label %if.then, label %if.end13, !dbg !1099

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !1100
  %cmp2 = icmp eq double* %x, null, !dbg !1100
  %or.cond = or i1 %cmp1, %cmp2, !dbg !1100
  %cmp4 = icmp eq i32* %index, null, !dbg !1100
  %or.cond27 = or i1 %or.cond, %cmp4, !dbg !1100
  br i1 %or.cond27, label %if.then5, label %for.body, !dbg !1100

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1101, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([85 x i8]* @.str31, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x) #6, !dbg !1101
  tail call void @exit(i32 -1) #7, !dbg !1103
  unreachable, !dbg !1103

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1104
  %1 = load double* %arrayidx, align 8, !dbg !1104, !tbaa !635
  %arrayidx8 = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !1104
  %2 = load i32* %arrayidx8, align 4, !dbg !1104, !tbaa !665
  %idxprom9 = sext i32 %2 to i64, !dbg !1104
  %arrayidx10 = getelementptr inbounds double* %y, i64 %idxprom9, !dbg !1104
  store double %1, double* %arrayidx10, align 8, !dbg !1104, !tbaa !635
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !1107, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1108
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1108
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1108
  br i1 %exitcond, label %if.end13, label %for.body, !dbg !1108

if.end13:                                         ; preds = %for.body, %entry
  ret void, !dbg !1109
}

; Function Attrs: nounwind optsize uwtable
define double @DVsumabs(i32 %size, double* %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !362), !dbg !1110
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !363), !dbg !1111
  tail call void @llvm.dbg.value(metadata !705, i64 0, metadata !364), !dbg !1112
  %cmp = icmp sgt i32 %size, 0, !dbg !1113
  br i1 %cmp, label %if.then, label %if.end9, !dbg !1113

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !1114
  br i1 %cmp1, label %if.then2, label %for.body, !dbg !1114

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1115, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str33, i64 0, i64 0), i32 %size, double* null) #6, !dbg !1115
  tail call void @exit(i32 -1) #7, !dbg !1117
  unreachable, !dbg !1117

for.body:                                         ; preds = %if.then, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end ], [ 0, %if.then ]
  %sum.020 = phi double [ %add, %cond.end ], [ 0.000000e+00, %if.then ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1118
  %1 = load double* %arrayidx, align 8, !dbg !1118, !tbaa !635
  %cmp4 = fcmp ult double %1, 0.000000e+00, !dbg !1118
  br i1 %cmp4, label %cond.false, label %cond.end, !dbg !1118

cond.false:                                       ; preds = %for.body
  %sub = fsub double -0.000000e+00, %1, !dbg !1118
  br label %cond.end, !dbg !1118

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi double [ %sub, %cond.false ], [ %1, %for.body ], !dbg !1118
  %add = fadd double %sum.020, %cond, !dbg !1118
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !364), !dbg !1118
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1121
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1121
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1121
  br i1 %exitcond, label %if.end9, label %for.body, !dbg !1121

if.end9:                                          ; preds = %cond.end, %entry
  %sum.1 = phi double [ 0.000000e+00, %entry ], [ %add, %cond.end ]
  ret double %sum.1, !dbg !1122
}

; Function Attrs: nounwind optsize uwtable
define void @DVswap(i32 %size, double* %y, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !370), !dbg !1123
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !371), !dbg !1124
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !372), !dbg !1125
  %cmp = icmp sgt i32 %size, 0, !dbg !1126
  br i1 %cmp, label %if.then, label %if.end11, !dbg !1126

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !1127
  %cmp2 = icmp eq double* %x, null, !dbg !1127
  %or.cond = or i1 %cmp1, %cmp2, !dbg !1127
  br i1 %or.cond, label %if.then3, label %for.body, !dbg !1127

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1128, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str34, i64 0, i64 0), i32 %size, double* %y, double* %x) #6, !dbg !1128
  tail call void @exit(i32 -1) #7, !dbg !1130
  unreachable, !dbg !1130

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1131
  %1 = load double* %arrayidx, align 8, !dbg !1131, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !373), !dbg !1131
  %arrayidx6 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1134
  %2 = load double* %arrayidx6, align 8, !dbg !1134, !tbaa !635
  store double %2, double* %arrayidx, align 8, !dbg !1134, !tbaa !635
  store double %1, double* %arrayidx6, align 8, !dbg !1135, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1136
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1136
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1136
  br i1 %exitcond, label %if.end11, label %for.body, !dbg !1136

if.end11:                                         ; preds = %for.body, %entry
  ret void, !dbg !1137
}

; Function Attrs: nounwind optsize uwtable
define void @DVzero(i32 %size, double* %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !381), !dbg !1138
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !382), !dbg !1139
  %y13 = bitcast double* %y to i8*
  %cmp = icmp sgt i32 %size, 0, !dbg !1140
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1140

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !1141
  br i1 %cmp1, label %if.then2, label %if.end4.loopexit, !dbg !1141

if.then2:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1142, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str35, i64 0, i64 0), i32 %size, double* null) #6, !dbg !1142
  tail call void @exit(i32 -1) #7, !dbg !1144
  unreachable, !dbg !1144

if.end4.loopexit:                                 ; preds = %if.then
  %1 = add i32 %size, -1, !dbg !1145
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 3, !dbg !1145
  %4 = add i64 %3, 8, !dbg !1145
  call void @llvm.memset.p0i8.i64(i8* %y13, i8 0, i64 %4, i32 8, i1 false), !dbg !1147
  br label %if.end4

if.end4:                                          ; preds = %if.end4.loopexit, %entry
  ret void, !dbg !1149
}

; Function Attrs: nounwind optsize uwtable
define void @DVshuffle(i32 %size, double* %y, i32 %seed) #0 {
entry:
  %drand = alloca %struct._Drand, align 8
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !390), !dbg !1150
  call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !391), !dbg !1151
  call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !392), !dbg !1152
  %cmp = icmp sgt i32 %size, 0, !dbg !1153
  %cmp1 = icmp slt i32 %seed, 1, !dbg !1153
  %or.cond = or i1 %cmp, %cmp1, !dbg !1153
  br i1 %or.cond, label %if.then, label %if.end13, !dbg !1153

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq double* %y, null, !dbg !1154
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !1154

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1155, !tbaa !629
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([72 x i8]* @.str36, i64 0, i64 0), i32 %size, double* null, i32 %seed) #6, !dbg !1155
  call void @exit(i32 -1) #7, !dbg !1157
  unreachable, !dbg !1157

if.else:                                          ; preds = %if.then
  %1 = bitcast %struct._Drand* %drand to i8*, !dbg !1158
  call void @llvm.lifetime.start(i64 72, i8* %1) #5, !dbg !1158
  call void @llvm.dbg.declare(metadata !{%struct._Drand* %drand}, metadata !393), !dbg !1158
  call void @Drand_setDefaultFields(%struct._Drand* %drand) #6, !dbg !1159
  call void @Drand_setSeed(%struct._Drand* %drand, i32 %seed) #6, !dbg !1160
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !410), !dbg !1161
  br i1 %cmp, label %for.body.lr.ph, label %if.end13, !dbg !1161

for.body.lr.ph:                                   ; preds = %if.else
  %conv = sitofp i32 %size to double, !dbg !1163
  br label %for.body, !dbg !1161

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %call5 = call double @Drand_value(%struct._Drand* %drand) #6, !dbg !1163
  %mul = fmul double %conv, %call5, !dbg !1163
  %conv6 = fptosi double %mul to i32, !dbg !1163
  call void @llvm.dbg.value(metadata !{i32 %conv6}, i64 0, metadata !411), !dbg !1163
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1165
  %2 = load double* %arrayidx, align 8, !dbg !1165, !tbaa !635
  call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !409), !dbg !1165
  %idxprom7 = sext i32 %conv6 to i64, !dbg !1166
  %arrayidx8 = getelementptr inbounds double* %y, i64 %idxprom7, !dbg !1166
  %3 = load double* %arrayidx8, align 8, !dbg !1166, !tbaa !635
  store double %3, double* %arrayidx, align 8, !dbg !1166, !tbaa !635
  store double %2, double* %arrayidx8, align 8, !dbg !1167, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1161
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1161
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1161
  br i1 %exitcond, label %if.end13, label %for.body, !dbg !1161

if.end13:                                         ; preds = %if.else, %for.body, %entry
  ret void, !dbg !1168
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @Drand_setDefaultFields(%struct._Drand*) #4

; Function Attrs: optsize
declare void @Drand_setSeed(%struct._Drand*, i32) #4

; Function Attrs: optsize
declare double @Drand_value(%struct._Drand*) #4

; Function Attrs: nounwind optsize uwtable
define void @DVscale2(i32 %size, double* %x, double* %y, double %a, double %b, double %c, double %d) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !416), !dbg !1169
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !417), !dbg !1170
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !418), !dbg !1171
  tail call void @llvm.dbg.value(metadata !{double %a}, i64 0, metadata !419), !dbg !1172
  tail call void @llvm.dbg.value(metadata !{double %b}, i64 0, metadata !420), !dbg !1173
  tail call void @llvm.dbg.value(metadata !{double %c}, i64 0, metadata !421), !dbg !1174
  tail call void @llvm.dbg.value(metadata !{double %d}, i64 0, metadata !422), !dbg !1175
  %cmp = icmp slt i32 %size, 0, !dbg !1176
  %cmp1 = icmp eq double* %x, null, !dbg !1176
  %or.cond = or i1 %cmp, %cmp1, !dbg !1176
  %cmp3 = icmp eq double* %y, null, !dbg !1176
  %or.cond30 = or i1 %or.cond, %cmp3, !dbg !1176
  br i1 %or.cond30, label %if.then, label %for.cond.preheader, !dbg !1176

for.cond.preheader:                               ; preds = %entry
  %cmp431 = icmp sgt i32 %size, 0, !dbg !1177
  br i1 %cmp431, label %for.body, label %for.end, !dbg !1177

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1179, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str37, i64 0, i64 0), i32 %size, double* %x, double* %y) #6, !dbg !1179
  tail call void @exit(i32 -1) #7, !dbg !1181
  unreachable, !dbg !1181

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1182
  %1 = load double* %arrayidx, align 8, !dbg !1182, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !423), !dbg !1182
  %arrayidx6 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1184
  %2 = load double* %arrayidx6, align 8, !dbg !1184, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !424), !dbg !1184
  %mul = fmul double %1, %a, !dbg !1185
  %mul7 = fmul double %2, %b, !dbg !1185
  %add = fadd double %mul, %mul7, !dbg !1185
  store double %add, double* %arrayidx, align 8, !dbg !1185, !tbaa !635
  %mul10 = fmul double %1, %c, !dbg !1186
  %mul11 = fmul double %2, %d, !dbg !1186
  %add12 = fadd double %mul10, %mul11, !dbg !1186
  store double %add12, double* %arrayidx6, align 8, !dbg !1186, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1177
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1177
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1177
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1177

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !1187
}

; Function Attrs: nounwind optsize uwtable
define void @DVaxpy2(i32 %size, double* nocapture %z, double %a, double* %x, double %b, double* %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !430), !dbg !1188
  tail call void @llvm.dbg.value(metadata !{double* %z}, i64 0, metadata !431), !dbg !1189
  tail call void @llvm.dbg.value(metadata !{double %a}, i64 0, metadata !432), !dbg !1190
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !433), !dbg !1191
  tail call void @llvm.dbg.value(metadata !{double %b}, i64 0, metadata !434), !dbg !1192
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !435), !dbg !1193
  %cmp = icmp slt i32 %size, 0, !dbg !1194
  %cmp1 = icmp eq double* %y, null, !dbg !1194
  %or.cond = or i1 %cmp, %cmp1, !dbg !1194
  %cmp3 = icmp eq double* %x, null, !dbg !1194
  %or.cond18 = or i1 %or.cond, %cmp3, !dbg !1194
  br i1 %or.cond18, label %if.then, label %for.cond.preheader, !dbg !1194

for.cond.preheader:                               ; preds = %entry
  %cmp419 = icmp sgt i32 %size, 0, !dbg !1195
  br i1 %cmp419, label %for.body, label %for.end, !dbg !1195

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1197, !tbaa !629
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8]* @.str38, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %0), !dbg !1197
  tail call void @exit(i32 -1) #7, !dbg !1199
  unreachable, !dbg !1199

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1200
  %2 = load double* %arrayidx, align 8, !dbg !1200, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !436), !dbg !1200
  %arrayidx6 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1202
  %3 = load double* %arrayidx6, align 8, !dbg !1202, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !437), !dbg !1202
  %mul = fmul double %2, %a, !dbg !1203
  %mul7 = fmul double %3, %b, !dbg !1203
  %add = fadd double %mul, %mul7, !dbg !1203
  %arrayidx9 = getelementptr inbounds double* %z, i64 %indvars.iv, !dbg !1203
  %4 = load double* %arrayidx9, align 8, !dbg !1203, !tbaa !635
  %add10 = fadd double %4, %add, !dbg !1203
  store double %add10, double* %arrayidx9, align 8, !dbg !1203, !tbaa !635
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1195
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1195
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1195
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1195

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !1204
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot33(i32 %n, double* %row0, double* %row1, double* %row2, double* %col0, double* %col1, double* %col2, double* %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !443), !dbg !1205
  tail call void @llvm.dbg.value(metadata !{double* %row0}, i64 0, metadata !444), !dbg !1206
  tail call void @llvm.dbg.value(metadata !{double* %row1}, i64 0, metadata !445), !dbg !1207
  tail call void @llvm.dbg.value(metadata !{double* %row2}, i64 0, metadata !446), !dbg !1208
  tail call void @llvm.dbg.value(metadata !{double* %col0}, i64 0, metadata !447), !dbg !1209
  tail call void @llvm.dbg.value(metadata !{double* %col1}, i64 0, metadata !448), !dbg !1210
  tail call void @llvm.dbg.value(metadata !{double* %col2}, i64 0, metadata !449), !dbg !1211
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !450), !dbg !1212
  %cmp = icmp eq double* %sums, null, !dbg !1213
  %cmp1 = icmp eq double* %row0, null, !dbg !1213
  %or.cond = or i1 %cmp, %cmp1, !dbg !1213
  %cmp3 = icmp eq double* %row1, null, !dbg !1213
  %or.cond99 = or i1 %or.cond, %cmp3, !dbg !1213
  %cmp5 = icmp eq double* %row2, null, !dbg !1213
  %or.cond100 = or i1 %or.cond99, %cmp5, !dbg !1213
  %cmp7 = icmp eq double* %col0, null, !dbg !1213
  %or.cond101 = or i1 %or.cond100, %cmp7, !dbg !1213
  %cmp9 = icmp eq double* %col1, null, !dbg !1213
  %or.cond102 = or i1 %or.cond101, %cmp9, !dbg !1213
  %cmp11 = icmp eq double* %col2, null, !dbg !1213
  %or.cond103 = or i1 %or.cond102, %cmp11, !dbg !1213
  br i1 %or.cond103, label %if.then, label %for.cond.preheader, !dbg !1213

for.cond.preheader:                               ; preds = %entry
  %cmp12104 = icmp sgt i32 %n, 0, !dbg !1214
  br i1 %cmp12104, label %for.body, label %for.end, !dbg !1214

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1215, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str39, i64 0, i64 0), i32 %n, double* %row0, double* %row1, double* %row2, double* %col0, double* %col1, double* %col2, double* %sums) #6, !dbg !1215
  tail call void @exit(i32 -1) #7, !dbg !1217
  unreachable, !dbg !1217

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.0114 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s01.0113 = phi double [ %add24, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s02.0112 = phi double [ %add26, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s10.0111 = phi double [ %add28, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s11.0110 = phi double [ %add30, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s12.0109 = phi double [ %add32, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s22.0107 = phi double [ %add38, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s21.0106 = phi double [ %add36, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s20.0105 = phi double [ %add34, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv, !dbg !1218
  %1 = load double* %arrayidx, align 8, !dbg !1218, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !461), !dbg !1218
  %arrayidx14 = getelementptr inbounds double* %row1, i64 %indvars.iv, !dbg !1218
  %2 = load double* %arrayidx14, align 8, !dbg !1218, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !464), !dbg !1218
  %arrayidx16 = getelementptr inbounds double* %row2, i64 %indvars.iv, !dbg !1218
  %3 = load double* %arrayidx16, align 8, !dbg !1218, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !465), !dbg !1218
  %arrayidx18 = getelementptr inbounds double* %col0, i64 %indvars.iv, !dbg !1219
  %4 = load double* %arrayidx18, align 8, !dbg !1219, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !466), !dbg !1219
  %arrayidx20 = getelementptr inbounds double* %col1, i64 %indvars.iv, !dbg !1219
  %5 = load double* %arrayidx20, align 8, !dbg !1219, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !467), !dbg !1219
  %arrayidx22 = getelementptr inbounds double* %col2, i64 %indvars.iv, !dbg !1219
  %6 = load double* %arrayidx22, align 8, !dbg !1219, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !468), !dbg !1219
  %mul = fmul double %1, %4, !dbg !1220
  %add = fadd double %s00.0114, %mul, !dbg !1220
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !451), !dbg !1220
  %mul23 = fmul double %1, %5, !dbg !1220
  %add24 = fadd double %s01.0113, %mul23, !dbg !1220
  tail call void @llvm.dbg.value(metadata !{double %add24}, i64 0, metadata !452), !dbg !1220
  %mul25 = fmul double %1, %6, !dbg !1220
  %add26 = fadd double %s02.0112, %mul25, !dbg !1220
  tail call void @llvm.dbg.value(metadata !{double %add26}, i64 0, metadata !453), !dbg !1220
  %mul27 = fmul double %2, %4, !dbg !1221
  %add28 = fadd double %s10.0111, %mul27, !dbg !1221
  tail call void @llvm.dbg.value(metadata !{double %add28}, i64 0, metadata !454), !dbg !1221
  %mul29 = fmul double %2, %5, !dbg !1221
  %add30 = fadd double %s11.0110, %mul29, !dbg !1221
  tail call void @llvm.dbg.value(metadata !{double %add30}, i64 0, metadata !455), !dbg !1221
  %mul31 = fmul double %2, %6, !dbg !1221
  %add32 = fadd double %s12.0109, %mul31, !dbg !1221
  tail call void @llvm.dbg.value(metadata !{double %add32}, i64 0, metadata !456), !dbg !1221
  %mul33 = fmul double %3, %4, !dbg !1222
  %add34 = fadd double %s20.0105, %mul33, !dbg !1222
  tail call void @llvm.dbg.value(metadata !{double %add34}, i64 0, metadata !457), !dbg !1222
  %mul35 = fmul double %3, %5, !dbg !1222
  %add36 = fadd double %s21.0106, %mul35, !dbg !1222
  tail call void @llvm.dbg.value(metadata !{double %add36}, i64 0, metadata !458), !dbg !1222
  %mul37 = fmul double %3, %6, !dbg !1222
  %add38 = fadd double %s22.0107, %mul37, !dbg !1222
  tail call void @llvm.dbg.value(metadata !{double %add38}, i64 0, metadata !459), !dbg !1222
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1214
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1214
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !1214
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1214

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s01.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add24, %for.body ]
  %s02.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add26, %for.body ]
  %s10.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add28, %for.body ]
  %s11.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add30, %for.body ]
  %s12.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add32, %for.body ]
  %s22.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add38, %for.body ]
  %s21.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add36, %for.body ]
  %s20.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add34, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !dbg !1223, !tbaa !635
  %arrayidx40 = getelementptr inbounds double* %sums, i64 1, !dbg !1223
  store double %s01.0.lcssa, double* %arrayidx40, align 8, !dbg !1223, !tbaa !635
  %arrayidx41 = getelementptr inbounds double* %sums, i64 2, !dbg !1223
  store double %s02.0.lcssa, double* %arrayidx41, align 8, !dbg !1223, !tbaa !635
  %arrayidx42 = getelementptr inbounds double* %sums, i64 3, !dbg !1224
  store double %s10.0.lcssa, double* %arrayidx42, align 8, !dbg !1224, !tbaa !635
  %arrayidx43 = getelementptr inbounds double* %sums, i64 4, !dbg !1224
  store double %s11.0.lcssa, double* %arrayidx43, align 8, !dbg !1224, !tbaa !635
  %arrayidx44 = getelementptr inbounds double* %sums, i64 5, !dbg !1224
  store double %s12.0.lcssa, double* %arrayidx44, align 8, !dbg !1224, !tbaa !635
  %arrayidx45 = getelementptr inbounds double* %sums, i64 6, !dbg !1225
  store double %s20.0.lcssa, double* %arrayidx45, align 8, !dbg !1225, !tbaa !635
  %arrayidx46 = getelementptr inbounds double* %sums, i64 7, !dbg !1225
  store double %s21.0.lcssa, double* %arrayidx46, align 8, !dbg !1225, !tbaa !635
  %arrayidx47 = getelementptr inbounds double* %sums, i64 8, !dbg !1225
  store double %s22.0.lcssa, double* %arrayidx47, align 8, !dbg !1225, !tbaa !635
  ret void, !dbg !1226
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot23(i32 %n, double* %row0, double* %row1, double* %col0, double* %col1, double* %col2, double* %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !473), !dbg !1227
  tail call void @llvm.dbg.value(metadata !{double* %row0}, i64 0, metadata !474), !dbg !1228
  tail call void @llvm.dbg.value(metadata !{double* %row1}, i64 0, metadata !475), !dbg !1229
  tail call void @llvm.dbg.value(metadata !{double* %col0}, i64 0, metadata !476), !dbg !1230
  tail call void @llvm.dbg.value(metadata !{double* %col1}, i64 0, metadata !477), !dbg !1231
  tail call void @llvm.dbg.value(metadata !{double* %col2}, i64 0, metadata !478), !dbg !1232
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !479), !dbg !1233
  %cmp = icmp eq double* %sums, null, !dbg !1234
  %cmp1 = icmp eq double* %row0, null, !dbg !1234
  %or.cond = or i1 %cmp, %cmp1, !dbg !1234
  %cmp3 = icmp eq double* %row1, null, !dbg !1234
  %or.cond72 = or i1 %or.cond, %cmp3, !dbg !1234
  %cmp5 = icmp eq double* %col0, null, !dbg !1234
  %or.cond73 = or i1 %or.cond72, %cmp5, !dbg !1234
  %cmp7 = icmp eq double* %col1, null, !dbg !1234
  %or.cond74 = or i1 %or.cond73, %cmp7, !dbg !1234
  %cmp9 = icmp eq double* %col2, null, !dbg !1234
  %or.cond75 = or i1 %or.cond74, %cmp9, !dbg !1234
  br i1 %or.cond75, label %if.then, label %for.cond.preheader, !dbg !1234

for.cond.preheader:                               ; preds = %entry
  %cmp1076 = icmp sgt i32 %n, 0, !dbg !1235
  br i1 %cmp1076, label %for.body, label %for.end, !dbg !1235

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1236, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str40, i64 0, i64 0), i32 %n, double* %row0, double* %row1, double* %col0, double* %col1, double* %col2, double* %sums) #6, !dbg !1236
  tail call void @exit(i32 -1) #7, !dbg !1238
  unreachable, !dbg !1238

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.083 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s01.082 = phi double [ %add20, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s02.081 = phi double [ %add22, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s10.080 = phi double [ %add24, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s11.079 = phi double [ %add26, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s12.077 = phi double [ %add28, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv, !dbg !1239
  %1 = load double* %arrayidx, align 8, !dbg !1239, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !487), !dbg !1239
  %arrayidx12 = getelementptr inbounds double* %row1, i64 %indvars.iv, !dbg !1239
  %2 = load double* %arrayidx12, align 8, !dbg !1239, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !490), !dbg !1239
  %arrayidx14 = getelementptr inbounds double* %col0, i64 %indvars.iv, !dbg !1240
  %3 = load double* %arrayidx14, align 8, !dbg !1240, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !491), !dbg !1240
  %arrayidx16 = getelementptr inbounds double* %col1, i64 %indvars.iv, !dbg !1240
  %4 = load double* %arrayidx16, align 8, !dbg !1240, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !492), !dbg !1240
  %arrayidx18 = getelementptr inbounds double* %col2, i64 %indvars.iv, !dbg !1240
  %5 = load double* %arrayidx18, align 8, !dbg !1240, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !493), !dbg !1240
  %mul = fmul double %1, %3, !dbg !1241
  %add = fadd double %s00.083, %mul, !dbg !1241
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !480), !dbg !1241
  %mul19 = fmul double %1, %4, !dbg !1241
  %add20 = fadd double %s01.082, %mul19, !dbg !1241
  tail call void @llvm.dbg.value(metadata !{double %add20}, i64 0, metadata !481), !dbg !1241
  %mul21 = fmul double %1, %5, !dbg !1241
  %add22 = fadd double %s02.081, %mul21, !dbg !1241
  tail call void @llvm.dbg.value(metadata !{double %add22}, i64 0, metadata !482), !dbg !1241
  %mul23 = fmul double %2, %3, !dbg !1242
  %add24 = fadd double %s10.080, %mul23, !dbg !1242
  tail call void @llvm.dbg.value(metadata !{double %add24}, i64 0, metadata !483), !dbg !1242
  %mul25 = fmul double %2, %4, !dbg !1242
  %add26 = fadd double %s11.079, %mul25, !dbg !1242
  tail call void @llvm.dbg.value(metadata !{double %add26}, i64 0, metadata !484), !dbg !1242
  %mul27 = fmul double %2, %5, !dbg !1242
  %add28 = fadd double %s12.077, %mul27, !dbg !1242
  tail call void @llvm.dbg.value(metadata !{double %add28}, i64 0, metadata !485), !dbg !1242
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1235
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1235
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !1235
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1235

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s01.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add20, %for.body ]
  %s02.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add22, %for.body ]
  %s10.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add24, %for.body ]
  %s11.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add26, %for.body ]
  %s12.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add28, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !dbg !1243, !tbaa !635
  %arrayidx30 = getelementptr inbounds double* %sums, i64 1, !dbg !1243
  store double %s01.0.lcssa, double* %arrayidx30, align 8, !dbg !1243, !tbaa !635
  %arrayidx31 = getelementptr inbounds double* %sums, i64 2, !dbg !1243
  store double %s02.0.lcssa, double* %arrayidx31, align 8, !dbg !1243, !tbaa !635
  %arrayidx32 = getelementptr inbounds double* %sums, i64 3, !dbg !1244
  store double %s10.0.lcssa, double* %arrayidx32, align 8, !dbg !1244, !tbaa !635
  %arrayidx33 = getelementptr inbounds double* %sums, i64 4, !dbg !1244
  store double %s11.0.lcssa, double* %arrayidx33, align 8, !dbg !1244, !tbaa !635
  %arrayidx34 = getelementptr inbounds double* %sums, i64 5, !dbg !1244
  store double %s12.0.lcssa, double* %arrayidx34, align 8, !dbg !1244, !tbaa !635
  ret void, !dbg !1245
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot13(i32 %n, double* %row0, double* %col0, double* %col1, double* %col2, double* %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !498), !dbg !1246
  tail call void @llvm.dbg.value(metadata !{double* %row0}, i64 0, metadata !499), !dbg !1247
  tail call void @llvm.dbg.value(metadata !{double* %col0}, i64 0, metadata !500), !dbg !1248
  tail call void @llvm.dbg.value(metadata !{double* %col1}, i64 0, metadata !501), !dbg !1249
  tail call void @llvm.dbg.value(metadata !{double* %col2}, i64 0, metadata !502), !dbg !1250
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !503), !dbg !1251
  %cmp = icmp eq double* %sums, null, !dbg !1252
  %cmp1 = icmp eq double* %row0, null, !dbg !1252
  %or.cond = or i1 %cmp, %cmp1, !dbg !1252
  %cmp3 = icmp eq double* %col0, null, !dbg !1252
  %or.cond45 = or i1 %or.cond, %cmp3, !dbg !1252
  %cmp5 = icmp eq double* %col1, null, !dbg !1252
  %or.cond46 = or i1 %or.cond45, %cmp5, !dbg !1252
  %cmp7 = icmp eq double* %col2, null, !dbg !1252
  %or.cond47 = or i1 %or.cond46, %cmp7, !dbg !1252
  br i1 %or.cond47, label %if.then, label %for.cond.preheader, !dbg !1252

for.cond.preheader:                               ; preds = %entry
  %cmp848 = icmp sgt i32 %n, 0, !dbg !1253
  br i1 %cmp848, label %for.body, label %for.end, !dbg !1253

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1254, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str41, i64 0, i64 0), i32 %n, double* %row0, double* %col0, double* %col1, double* %col2, double* %sums) #6, !dbg !1254
  tail call void @exit(i32 -1) #7, !dbg !1256
  unreachable, !dbg !1256

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.052 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s01.051 = phi double [ %add16, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s02.050 = phi double [ %add18, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv, !dbg !1257
  %1 = load double* %arrayidx, align 8, !dbg !1257, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !508), !dbg !1257
  %arrayidx10 = getelementptr inbounds double* %col0, i64 %indvars.iv, !dbg !1258
  %2 = load double* %arrayidx10, align 8, !dbg !1258, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !511), !dbg !1258
  %arrayidx12 = getelementptr inbounds double* %col1, i64 %indvars.iv, !dbg !1258
  %3 = load double* %arrayidx12, align 8, !dbg !1258, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !512), !dbg !1258
  %arrayidx14 = getelementptr inbounds double* %col2, i64 %indvars.iv, !dbg !1258
  %4 = load double* %arrayidx14, align 8, !dbg !1258, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !513), !dbg !1258
  %mul = fmul double %1, %2, !dbg !1259
  %add = fadd double %s00.052, %mul, !dbg !1259
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !504), !dbg !1259
  %mul15 = fmul double %1, %3, !dbg !1259
  %add16 = fadd double %s01.051, %mul15, !dbg !1259
  tail call void @llvm.dbg.value(metadata !{double %add16}, i64 0, metadata !505), !dbg !1259
  %mul17 = fmul double %1, %4, !dbg !1259
  %add18 = fadd double %s02.050, %mul17, !dbg !1259
  tail call void @llvm.dbg.value(metadata !{double %add18}, i64 0, metadata !506), !dbg !1259
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1253
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1253
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !1253
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1253

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s01.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add16, %for.body ]
  %s02.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add18, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !dbg !1260, !tbaa !635
  %arrayidx20 = getelementptr inbounds double* %sums, i64 1, !dbg !1260
  store double %s01.0.lcssa, double* %arrayidx20, align 8, !dbg !1260, !tbaa !635
  %arrayidx21 = getelementptr inbounds double* %sums, i64 2, !dbg !1260
  store double %s02.0.lcssa, double* %arrayidx21, align 8, !dbg !1260, !tbaa !635
  ret void, !dbg !1261
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot32(i32 %n, double* %row0, double* %row1, double* %row2, double* %col0, double* %col1, double* %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !516), !dbg !1262
  tail call void @llvm.dbg.value(metadata !{double* %row0}, i64 0, metadata !517), !dbg !1263
  tail call void @llvm.dbg.value(metadata !{double* %row1}, i64 0, metadata !518), !dbg !1264
  tail call void @llvm.dbg.value(metadata !{double* %row2}, i64 0, metadata !519), !dbg !1265
  tail call void @llvm.dbg.value(metadata !{double* %col0}, i64 0, metadata !520), !dbg !1266
  tail call void @llvm.dbg.value(metadata !{double* %col1}, i64 0, metadata !521), !dbg !1267
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !522), !dbg !1268
  %cmp = icmp eq double* %sums, null, !dbg !1269
  %cmp1 = icmp eq double* %row0, null, !dbg !1269
  %or.cond = or i1 %cmp, %cmp1, !dbg !1269
  %cmp3 = icmp eq double* %row1, null, !dbg !1269
  %or.cond72 = or i1 %or.cond, %cmp3, !dbg !1269
  %cmp5 = icmp eq double* %row2, null, !dbg !1269
  %or.cond73 = or i1 %or.cond72, %cmp5, !dbg !1269
  %cmp7 = icmp eq double* %col0, null, !dbg !1269
  %or.cond74 = or i1 %or.cond73, %cmp7, !dbg !1269
  %cmp9 = icmp eq double* %col1, null, !dbg !1269
  %or.cond75 = or i1 %or.cond74, %cmp9, !dbg !1269
  br i1 %or.cond75, label %if.then, label %for.cond.preheader, !dbg !1269

for.cond.preheader:                               ; preds = %entry
  %cmp1076 = icmp sgt i32 %n, 0, !dbg !1270
  br i1 %cmp1076, label %for.body, label %for.end, !dbg !1270

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1271, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str42, i64 0, i64 0), i32 %n, double* %row0, double* %row1, double* %row2, double* %col0, double* %col1, double* %sums) #6, !dbg !1271
  tail call void @exit(i32 -1) #7, !dbg !1273
  unreachable, !dbg !1273

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.083 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s01.082 = phi double [ %add20, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s10.081 = phi double [ %add22, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s11.080 = phi double [ %add24, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s20.079 = phi double [ %add26, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s21.077 = phi double [ %add28, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv, !dbg !1274
  %1 = load double* %arrayidx, align 8, !dbg !1274, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !530), !dbg !1274
  %arrayidx12 = getelementptr inbounds double* %row1, i64 %indvars.iv, !dbg !1274
  %2 = load double* %arrayidx12, align 8, !dbg !1274, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !533), !dbg !1274
  %arrayidx14 = getelementptr inbounds double* %row2, i64 %indvars.iv, !dbg !1274
  %3 = load double* %arrayidx14, align 8, !dbg !1274, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !534), !dbg !1274
  %arrayidx16 = getelementptr inbounds double* %col0, i64 %indvars.iv, !dbg !1275
  %4 = load double* %arrayidx16, align 8, !dbg !1275, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !535), !dbg !1275
  %arrayidx18 = getelementptr inbounds double* %col1, i64 %indvars.iv, !dbg !1275
  %5 = load double* %arrayidx18, align 8, !dbg !1275, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !536), !dbg !1275
  %mul = fmul double %1, %4, !dbg !1276
  %add = fadd double %s00.083, %mul, !dbg !1276
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !523), !dbg !1276
  %mul19 = fmul double %1, %5, !dbg !1276
  %add20 = fadd double %s01.082, %mul19, !dbg !1276
  tail call void @llvm.dbg.value(metadata !{double %add20}, i64 0, metadata !524), !dbg !1276
  %mul21 = fmul double %2, %4, !dbg !1277
  %add22 = fadd double %s10.081, %mul21, !dbg !1277
  tail call void @llvm.dbg.value(metadata !{double %add22}, i64 0, metadata !525), !dbg !1277
  %mul23 = fmul double %2, %5, !dbg !1277
  %add24 = fadd double %s11.080, %mul23, !dbg !1277
  tail call void @llvm.dbg.value(metadata !{double %add24}, i64 0, metadata !526), !dbg !1277
  %mul25 = fmul double %3, %4, !dbg !1278
  %add26 = fadd double %s20.079, %mul25, !dbg !1278
  tail call void @llvm.dbg.value(metadata !{double %add26}, i64 0, metadata !527), !dbg !1278
  %mul27 = fmul double %3, %5, !dbg !1278
  %add28 = fadd double %s21.077, %mul27, !dbg !1278
  tail call void @llvm.dbg.value(metadata !{double %add28}, i64 0, metadata !528), !dbg !1278
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1270
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1270
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !1270
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1270

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s01.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add20, %for.body ]
  %s10.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add22, %for.body ]
  %s11.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add24, %for.body ]
  %s20.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add26, %for.body ]
  %s21.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add28, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !dbg !1279, !tbaa !635
  %arrayidx30 = getelementptr inbounds double* %sums, i64 1, !dbg !1279
  store double %s01.0.lcssa, double* %arrayidx30, align 8, !dbg !1279, !tbaa !635
  %arrayidx31 = getelementptr inbounds double* %sums, i64 2, !dbg !1280
  store double %s10.0.lcssa, double* %arrayidx31, align 8, !dbg !1280, !tbaa !635
  %arrayidx32 = getelementptr inbounds double* %sums, i64 3, !dbg !1280
  store double %s11.0.lcssa, double* %arrayidx32, align 8, !dbg !1280, !tbaa !635
  %arrayidx33 = getelementptr inbounds double* %sums, i64 4, !dbg !1281
  store double %s20.0.lcssa, double* %arrayidx33, align 8, !dbg !1281, !tbaa !635
  %arrayidx34 = getelementptr inbounds double* %sums, i64 5, !dbg !1281
  store double %s21.0.lcssa, double* %arrayidx34, align 8, !dbg !1281, !tbaa !635
  ret void, !dbg !1282
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot22(i32 %n, double* %row0, double* %row1, double* %col0, double* %col1, double* %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !539), !dbg !1283
  tail call void @llvm.dbg.value(metadata !{double* %row0}, i64 0, metadata !540), !dbg !1284
  tail call void @llvm.dbg.value(metadata !{double* %row1}, i64 0, metadata !541), !dbg !1285
  tail call void @llvm.dbg.value(metadata !{double* %col0}, i64 0, metadata !542), !dbg !1286
  tail call void @llvm.dbg.value(metadata !{double* %col1}, i64 0, metadata !543), !dbg !1287
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !544), !dbg !1288
  %cmp = icmp eq double* %sums, null, !dbg !1289
  %cmp1 = icmp eq double* %row0, null, !dbg !1289
  %or.cond = or i1 %cmp, %cmp1, !dbg !1289
  %cmp3 = icmp eq double* %row1, null, !dbg !1289
  %or.cond52 = or i1 %or.cond, %cmp3, !dbg !1289
  %cmp5 = icmp eq double* %col0, null, !dbg !1289
  %or.cond53 = or i1 %or.cond52, %cmp5, !dbg !1289
  %cmp7 = icmp eq double* %col1, null, !dbg !1289
  %or.cond54 = or i1 %or.cond53, %cmp7, !dbg !1289
  br i1 %or.cond54, label %if.then, label %for.cond.preheader, !dbg !1289

for.cond.preheader:                               ; preds = %entry
  %cmp855 = icmp sgt i32 %n, 0, !dbg !1290
  br i1 %cmp855, label %for.body, label %for.end, !dbg !1290

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1291, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str43, i64 0, i64 0), i32 %n, double* %row0, double* %row1, double* %col0, double* %col1, double* %sums) #6, !dbg !1291
  tail call void @exit(i32 -1) #7, !dbg !1293
  unreachable, !dbg !1293

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.060 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s01.059 = phi double [ %add16, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s10.058 = phi double [ %add18, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s11.057 = phi double [ %add20, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv, !dbg !1294
  %1 = load double* %arrayidx, align 8, !dbg !1294, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !550), !dbg !1294
  %arrayidx10 = getelementptr inbounds double* %row1, i64 %indvars.iv, !dbg !1294
  %2 = load double* %arrayidx10, align 8, !dbg !1294, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !553), !dbg !1294
  %arrayidx12 = getelementptr inbounds double* %col0, i64 %indvars.iv, !dbg !1295
  %3 = load double* %arrayidx12, align 8, !dbg !1295, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !554), !dbg !1295
  %arrayidx14 = getelementptr inbounds double* %col1, i64 %indvars.iv, !dbg !1295
  %4 = load double* %arrayidx14, align 8, !dbg !1295, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !555), !dbg !1295
  %mul = fmul double %1, %3, !dbg !1296
  %add = fadd double %s00.060, %mul, !dbg !1296
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !545), !dbg !1296
  %mul15 = fmul double %1, %4, !dbg !1296
  %add16 = fadd double %s01.059, %mul15, !dbg !1296
  tail call void @llvm.dbg.value(metadata !{double %add16}, i64 0, metadata !546), !dbg !1296
  %mul17 = fmul double %2, %3, !dbg !1297
  %add18 = fadd double %s10.058, %mul17, !dbg !1297
  tail call void @llvm.dbg.value(metadata !{double %add18}, i64 0, metadata !547), !dbg !1297
  %mul19 = fmul double %2, %4, !dbg !1297
  %add20 = fadd double %s11.057, %mul19, !dbg !1297
  tail call void @llvm.dbg.value(metadata !{double %add20}, i64 0, metadata !548), !dbg !1297
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1290
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1290
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !1290
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1290

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s01.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add16, %for.body ]
  %s10.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add18, %for.body ]
  %s11.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add20, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !dbg !1298, !tbaa !635
  %arrayidx22 = getelementptr inbounds double* %sums, i64 1, !dbg !1298
  store double %s01.0.lcssa, double* %arrayidx22, align 8, !dbg !1298, !tbaa !635
  %arrayidx23 = getelementptr inbounds double* %sums, i64 2, !dbg !1299
  store double %s10.0.lcssa, double* %arrayidx23, align 8, !dbg !1299, !tbaa !635
  %arrayidx24 = getelementptr inbounds double* %sums, i64 3, !dbg !1299
  store double %s11.0.lcssa, double* %arrayidx24, align 8, !dbg !1299, !tbaa !635
  ret void, !dbg !1300
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot12(i32 %n, double* %row0, double* %col0, double* %col1, double* %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !560), !dbg !1301
  tail call void @llvm.dbg.value(metadata !{double* %row0}, i64 0, metadata !561), !dbg !1302
  tail call void @llvm.dbg.value(metadata !{double* %col0}, i64 0, metadata !562), !dbg !1303
  tail call void @llvm.dbg.value(metadata !{double* %col1}, i64 0, metadata !563), !dbg !1304
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !564), !dbg !1305
  %cmp = icmp eq double* %sums, null, !dbg !1306
  %cmp1 = icmp eq double* %row0, null, !dbg !1306
  %or.cond = or i1 %cmp, %cmp1, !dbg !1306
  %cmp3 = icmp eq double* %col0, null, !dbg !1306
  %or.cond32 = or i1 %or.cond, %cmp3, !dbg !1306
  %cmp5 = icmp eq double* %col1, null, !dbg !1306
  %or.cond33 = or i1 %or.cond32, %cmp5, !dbg !1306
  br i1 %or.cond33, label %if.then, label %for.cond.preheader, !dbg !1306

for.cond.preheader:                               ; preds = %entry
  %cmp634 = icmp sgt i32 %n, 0, !dbg !1307
  br i1 %cmp634, label %for.body, label %for.end, !dbg !1307

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1308, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str44, i64 0, i64 0), i32 %n, double* %row0, double* %col0, double* %col1, double* %sums) #6, !dbg !1308
  tail call void @exit(i32 -1) #7, !dbg !1310
  unreachable, !dbg !1310

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.037 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s01.036 = phi double [ %add12, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv, !dbg !1311
  %1 = load double* %arrayidx, align 8, !dbg !1311, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !568), !dbg !1311
  %arrayidx8 = getelementptr inbounds double* %col0, i64 %indvars.iv, !dbg !1312
  %2 = load double* %arrayidx8, align 8, !dbg !1312, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !571), !dbg !1312
  %arrayidx10 = getelementptr inbounds double* %col1, i64 %indvars.iv, !dbg !1312
  %3 = load double* %arrayidx10, align 8, !dbg !1312, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !572), !dbg !1312
  %mul = fmul double %1, %2, !dbg !1313
  %add = fadd double %s00.037, %mul, !dbg !1313
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !565), !dbg !1313
  %mul11 = fmul double %1, %3, !dbg !1313
  %add12 = fadd double %s01.036, %mul11, !dbg !1313
  tail call void @llvm.dbg.value(metadata !{double %add12}, i64 0, metadata !566), !dbg !1313
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1307
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1307
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !1307
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1307

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s01.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add12, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !dbg !1314, !tbaa !635
  %arrayidx14 = getelementptr inbounds double* %sums, i64 1, !dbg !1314
  store double %s01.0.lcssa, double* %arrayidx14, align 8, !dbg !1314, !tbaa !635
  ret void, !dbg !1315
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot31(i32 %n, double* %row0, double* %row1, double* %row2, double* %col0, double* %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !575), !dbg !1316
  tail call void @llvm.dbg.value(metadata !{double* %row0}, i64 0, metadata !576), !dbg !1317
  tail call void @llvm.dbg.value(metadata !{double* %row1}, i64 0, metadata !577), !dbg !1318
  tail call void @llvm.dbg.value(metadata !{double* %row2}, i64 0, metadata !578), !dbg !1319
  tail call void @llvm.dbg.value(metadata !{double* %col0}, i64 0, metadata !579), !dbg !1320
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !580), !dbg !1321
  %cmp = icmp eq double* %sums, null, !dbg !1322
  %cmp1 = icmp eq double* %row0, null, !dbg !1322
  %or.cond = or i1 %cmp, %cmp1, !dbg !1322
  %cmp3 = icmp eq double* %row1, null, !dbg !1322
  %or.cond45 = or i1 %or.cond, %cmp3, !dbg !1322
  %cmp5 = icmp eq double* %row2, null, !dbg !1322
  %or.cond46 = or i1 %or.cond45, %cmp5, !dbg !1322
  %cmp7 = icmp eq double* %col0, null, !dbg !1322
  %or.cond47 = or i1 %or.cond46, %cmp7, !dbg !1322
  br i1 %or.cond47, label %if.then, label %for.cond.preheader, !dbg !1322

for.cond.preheader:                               ; preds = %entry
  %cmp848 = icmp sgt i32 %n, 0, !dbg !1323
  br i1 %cmp848, label %for.body, label %for.end, !dbg !1323

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1324, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str45, i64 0, i64 0), i32 %n, double* %row0, double* %row1, double* %row2, double* %col0, double* %sums) #6, !dbg !1324
  tail call void @exit(i32 -1) #7, !dbg !1326
  unreachable, !dbg !1326

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.052 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s10.051 = phi double [ %add16, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s20.050 = phi double [ %add18, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv, !dbg !1327
  %1 = load double* %arrayidx, align 8, !dbg !1327, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !585), !dbg !1327
  %arrayidx10 = getelementptr inbounds double* %row1, i64 %indvars.iv, !dbg !1327
  %2 = load double* %arrayidx10, align 8, !dbg !1327, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !588), !dbg !1327
  %arrayidx12 = getelementptr inbounds double* %row2, i64 %indvars.iv, !dbg !1327
  %3 = load double* %arrayidx12, align 8, !dbg !1327, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !589), !dbg !1327
  %arrayidx14 = getelementptr inbounds double* %col0, i64 %indvars.iv, !dbg !1328
  %4 = load double* %arrayidx14, align 8, !dbg !1328, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !590), !dbg !1328
  %mul = fmul double %1, %4, !dbg !1329
  %add = fadd double %s00.052, %mul, !dbg !1329
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !581), !dbg !1329
  %mul15 = fmul double %2, %4, !dbg !1330
  %add16 = fadd double %s10.051, %mul15, !dbg !1330
  tail call void @llvm.dbg.value(metadata !{double %add16}, i64 0, metadata !582), !dbg !1330
  %mul17 = fmul double %3, %4, !dbg !1331
  %add18 = fadd double %s20.050, %mul17, !dbg !1331
  tail call void @llvm.dbg.value(metadata !{double %add18}, i64 0, metadata !583), !dbg !1331
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1323
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1323
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !1323
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1323

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s10.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add16, %for.body ]
  %s20.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add18, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !dbg !1332, !tbaa !635
  %arrayidx20 = getelementptr inbounds double* %sums, i64 1, !dbg !1333
  store double %s10.0.lcssa, double* %arrayidx20, align 8, !dbg !1333, !tbaa !635
  %arrayidx21 = getelementptr inbounds double* %sums, i64 2, !dbg !1334
  store double %s20.0.lcssa, double* %arrayidx21, align 8, !dbg !1334, !tbaa !635
  ret void, !dbg !1335
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot21(i32 %n, double* %row0, double* %row1, double* %col0, double* %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !593), !dbg !1336
  tail call void @llvm.dbg.value(metadata !{double* %row0}, i64 0, metadata !594), !dbg !1337
  tail call void @llvm.dbg.value(metadata !{double* %row1}, i64 0, metadata !595), !dbg !1338
  tail call void @llvm.dbg.value(metadata !{double* %col0}, i64 0, metadata !596), !dbg !1339
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !597), !dbg !1340
  %cmp = icmp eq double* %sums, null, !dbg !1341
  %cmp1 = icmp eq double* %row0, null, !dbg !1341
  %or.cond = or i1 %cmp, %cmp1, !dbg !1341
  %cmp3 = icmp eq double* %row1, null, !dbg !1341
  %or.cond32 = or i1 %or.cond, %cmp3, !dbg !1341
  %cmp5 = icmp eq double* %col0, null, !dbg !1341
  %or.cond33 = or i1 %or.cond32, %cmp5, !dbg !1341
  br i1 %or.cond33, label %if.then, label %for.cond.preheader, !dbg !1341

for.cond.preheader:                               ; preds = %entry
  %cmp634 = icmp sgt i32 %n, 0, !dbg !1342
  br i1 %cmp634, label %for.body, label %for.end, !dbg !1342

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1343, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str46, i64 0, i64 0), i32 %n, double* %row0, double* %row1, double* %col0, double* %sums) #6, !dbg !1343
  tail call void @exit(i32 -1) #7, !dbg !1345
  unreachable, !dbg !1345

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.037 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %s10.036 = phi double [ %add12, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv, !dbg !1346
  %1 = load double* %arrayidx, align 8, !dbg !1346, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !601), !dbg !1346
  %arrayidx8 = getelementptr inbounds double* %row1, i64 %indvars.iv, !dbg !1346
  %2 = load double* %arrayidx8, align 8, !dbg !1346, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !604), !dbg !1346
  %arrayidx10 = getelementptr inbounds double* %col0, i64 %indvars.iv, !dbg !1347
  %3 = load double* %arrayidx10, align 8, !dbg !1347, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !605), !dbg !1347
  %mul = fmul double %1, %3, !dbg !1348
  %add = fadd double %s00.037, %mul, !dbg !1348
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !598), !dbg !1348
  %mul11 = fmul double %2, %3, !dbg !1349
  %add12 = fadd double %s10.036, %mul11, !dbg !1349
  tail call void @llvm.dbg.value(metadata !{double %add12}, i64 0, metadata !599), !dbg !1349
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1342
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1342
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !1342
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1342

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %s10.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add12, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !dbg !1350, !tbaa !635
  %arrayidx14 = getelementptr inbounds double* %sums, i64 1, !dbg !1351
  store double %s10.0.lcssa, double* %arrayidx14, align 8, !dbg !1351, !tbaa !635
  ret void, !dbg !1352
}

; Function Attrs: nounwind optsize uwtable
define void @DVdot11(i32 %n, double* %row0, double* %col0, double* %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !610), !dbg !1353
  tail call void @llvm.dbg.value(metadata !{double* %row0}, i64 0, metadata !611), !dbg !1354
  tail call void @llvm.dbg.value(metadata !{double* %col0}, i64 0, metadata !612), !dbg !1355
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !613), !dbg !1356
  %cmp = icmp eq double* %sums, null, !dbg !1357
  %cmp1 = icmp eq double* %row0, null, !dbg !1357
  %or.cond = or i1 %cmp, %cmp1, !dbg !1357
  %cmp3 = icmp eq double* %col0, null, !dbg !1357
  %or.cond19 = or i1 %or.cond, %cmp3, !dbg !1357
  br i1 %or.cond19, label %if.then, label %for.cond.preheader, !dbg !1357

for.cond.preheader:                               ; preds = %entry
  %cmp420 = icmp sgt i32 %n, 0, !dbg !1358
  br i1 %cmp420, label %for.body, label %for.end, !dbg !1358

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1359, !tbaa !629
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str47, i64 0, i64 0), i32 %n, double* %row0, double* %col0, double* %sums) #6, !dbg !1359
  tail call void @exit(i32 -1) #7, !dbg !1361
  unreachable, !dbg !1361

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %s00.022 = phi double [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %row0, i64 %indvars.iv, !dbg !1362
  %1 = load double* %arrayidx, align 8, !dbg !1362, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !616), !dbg !1362
  %arrayidx6 = getelementptr inbounds double* %col0, i64 %indvars.iv, !dbg !1363
  %2 = load double* %arrayidx6, align 8, !dbg !1363, !tbaa !635
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !619), !dbg !1363
  %mul = fmul double %1, %2, !dbg !1364
  %add = fadd double %s00.022, %mul, !dbg !1364
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !614), !dbg !1364
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1358
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1358
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !1358
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1358

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %s00.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  store double %s00.0.lcssa, double* %sums, align 8, !dbg !1365, !tbaa !635
  ret void, !dbg !1366
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !17, metadata !27, metadata !39, metadata !46, metadata !64, metadata !75, metadata !85, metadata !95, metadata !162, metadata !167, metadata !176, metadata !187, metadata !197, metadata !207, metadata !214, metadata !220, metadata !231, metadata !243, metadata !254, metadata !264, metadata !275, metadata !284, metadata !296, metadata !304, metadata !312, metadata !323, metadata !332, metadata !341, metadata !350, metadata !360, metadata !368, metadata !377, metadata !386, metadata !412, metadata !426, metadata !439, metadata !469, metadata !494, metadata !514, metadata !537, metadata !556, metadata !573, metadata !591, metadata !606}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVadd", metadata !"DVadd", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*)* @DVadd, null, null, metadata !11, i32 19} ; [ DW_TAG_subprogram ] [line 15] [def] [scope 19] [DVadd]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !9, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!10 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!11 = metadata !{metadata !12, metadata !13, metadata !14, metadata !15}
!12 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777232, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 16]
!13 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554449, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 17]
!14 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 50331666, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 18]
!15 = metadata !{i32 786688, metadata !16, metadata !"i", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 28]
!16 = metadata !{i32 786443, metadata !1, metadata !4, i32 27, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!17 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVaxpy", metadata !"DVaxpy", metadata !"", i32 44, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double, double*)* @DVaxpy, null, null, metadata !20, i32 49} ; [ DW_TAG_subprogram ] [line 44] [def] [scope 49] [DVaxpy]
!18 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !9}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !24, metadata !25}
!21 = metadata !{i32 786689, metadata !17, metadata !"size", metadata !5, i32 16777261, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 45]
!22 = metadata !{i32 786689, metadata !17, metadata !"y", metadata !5, i32 33554478, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 46]
!23 = metadata !{i32 786689, metadata !17, metadata !"alpha", metadata !5, i32 50331695, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 47]
!24 = metadata !{i32 786689, metadata !17, metadata !"x", metadata !5, i32 67108912, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 48]
!25 = metadata !{i32 786688, metadata !26, metadata !"i", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 58]
!26 = metadata !{i32 786443, metadata !1, metadata !17, i32 57, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVaxpyi", metadata !"DVaxpyi", metadata !"", i32 74, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, i32*, double, double*)* @DVaxpyi, null, null, metadata !31, i32 80} ; [ DW_TAG_subprogram ] [line 74] [def] [scope 80] [DVaxpyi]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !10, metadata !9}
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37}
!32 = metadata !{i32 786689, metadata !27, metadata !"size", metadata !5, i32 16777291, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 75]
!33 = metadata !{i32 786689, metadata !27, metadata !"y", metadata !5, i32 33554508, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 76]
!34 = metadata !{i32 786689, metadata !27, metadata !"index", metadata !5, i32 50331725, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 77]
!35 = metadata !{i32 786689, metadata !27, metadata !"alpha", metadata !5, i32 67108942, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 78]
!36 = metadata !{i32 786689, metadata !27, metadata !"x", metadata !5, i32 83886159, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 79]
!37 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !5, i32 89, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 89]
!38 = metadata !{i32 786443, metadata !1, metadata !27, i32 88, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVcopy", metadata !"DVcopy", metadata !"", i32 105, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*)* @DVcopy, null, null, metadata !40, i32 109} ; [ DW_TAG_subprogram ] [line 105] [def] [scope 109] [DVcopy]
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44}
!41 = metadata !{i32 786689, metadata !39, metadata !"size", metadata !5, i32 16777322, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 106]
!42 = metadata !{i32 786689, metadata !39, metadata !"y", metadata !5, i32 33554539, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 107]
!43 = metadata !{i32 786689, metadata !39, metadata !"x", metadata !5, i32 50331756, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 108]
!44 = metadata !{i32 786688, metadata !45, metadata !"i", metadata !5, i32 117, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 117]
!45 = metadata !{i32 786443, metadata !1, metadata !39, i32 116, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVcompress", metadata !"DVcompress", metadata !"", i32 138, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, double*, double*, i32, double*, double*)* @DVcompress, null, null, metadata !49, i32 145} ; [ DW_TAG_subprogram ] [line 138] [def] [scope 145] [DVcompress]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{metadata !8, metadata !8, metadata !9, metadata !9, metadata !8, metadata !9, metadata !9}
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63}
!50 = metadata !{i32 786689, metadata !46, metadata !"size1", metadata !5, i32 16777355, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size1] [line 139]
!51 = metadata !{i32 786689, metadata !46, metadata !"x1", metadata !5, i32 33554572, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 140]
!52 = metadata !{i32 786689, metadata !46, metadata !"y1", metadata !5, i32 50331789, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 141]
!53 = metadata !{i32 786689, metadata !46, metadata !"size2", metadata !5, i32 67109006, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size2] [line 142]
!54 = metadata !{i32 786689, metadata !46, metadata !"x2", metadata !5, i32 83886223, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 143]
!55 = metadata !{i32 786689, metadata !46, metadata !"y2", metadata !5, i32 100663440, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 144]
!56 = metadata !{i32 786688, metadata !46, metadata !"delta", metadata !5, i32 146, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delta] [line 146]
!57 = metadata !{i32 786688, metadata !46, metadata !"dx", metadata !5, i32 146, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 146]
!58 = metadata !{i32 786688, metadata !46, metadata !"dy", metadata !5, i32 146, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 146]
!59 = metadata !{i32 786688, metadata !46, metadata !"path", metadata !5, i32 146, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [path] [line 146]
!60 = metadata !{i32 786688, metadata !46, metadata !"totalPath", metadata !5, i32 146, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totalPath] [line 146]
!61 = metadata !{i32 786688, metadata !46, metadata !"ds", metadata !5, i32 147, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ds] [line 147]
!62 = metadata !{i32 786688, metadata !46, metadata !"i", metadata !5, i32 148, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 148]
!63 = metadata !{i32 786688, metadata !46, metadata !"j", metadata !5, i32 148, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 148]
!64 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVdot", metadata !"DVdot", metadata !"", i32 227, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (i32, double*, double*)* @DVdot, null, null, metadata !67, i32 231} ; [ DW_TAG_subprogram ] [line 227] [def] [scope 231] [DVdot]
!65 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !10, metadata !8, metadata !9, metadata !9}
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!68 = metadata !{i32 786689, metadata !64, metadata !"size", metadata !5, i32 16777444, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 228]
!69 = metadata !{i32 786689, metadata !64, metadata !"y", metadata !5, i32 33554661, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 229]
!70 = metadata !{i32 786689, metadata !64, metadata !"x", metadata !5, i32 50331878, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 230]
!71 = metadata !{i32 786688, metadata !64, metadata !"sum", metadata !5, i32 232, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 232]
!72 = metadata !{i32 786688, metadata !73, metadata !"i", metadata !5, i32 239, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 239]
!73 = metadata !{i32 786443, metadata !1, metadata !74, i32 238, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!74 = metadata !{i32 786443, metadata !1, metadata !64, i32 233, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!75 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVdoti", metadata !"DVdoti", metadata !"", i32 260, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (i32, double*, i32*, double*)* @DVdoti, null, null, metadata !78, i32 265} ; [ DW_TAG_subprogram ] [line 260] [def] [scope 265] [DVdoti]
!76 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!77 = metadata !{metadata !10, metadata !8, metadata !9, metadata !30, metadata !9}
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84}
!79 = metadata !{i32 786689, metadata !75, metadata !"size", metadata !5, i32 16777477, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 261]
!80 = metadata !{i32 786689, metadata !75, metadata !"y", metadata !5, i32 33554694, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 262]
!81 = metadata !{i32 786689, metadata !75, metadata !"index", metadata !5, i32 50331911, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 263]
!82 = metadata !{i32 786689, metadata !75, metadata !"x", metadata !5, i32 67109128, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 264]
!83 = metadata !{i32 786688, metadata !75, metadata !"sum", metadata !5, i32 266, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 266]
!84 = metadata !{i32 786688, metadata !75, metadata !"ii", metadata !5, i32 267, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 267]
!85 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVfill", metadata !"DVfill", metadata !"", i32 288, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double)* @DVfill, null, null, metadata !88, i32 292} ; [ DW_TAG_subprogram ] [line 288] [def] [scope 292] [DVfill]
!86 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{null, metadata !8, metadata !9, metadata !10}
!88 = metadata !{metadata !89, metadata !90, metadata !91, metadata !92}
!89 = metadata !{i32 786689, metadata !85, metadata !"size", metadata !5, i32 16777505, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 289]
!90 = metadata !{i32 786689, metadata !85, metadata !"y", metadata !5, i32 33554722, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 290]
!91 = metadata !{i32 786689, metadata !85, metadata !"dval", metadata !5, i32 50331939, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dval] [line 291]
!92 = metadata !{i32 786688, metadata !93, metadata !"i", metadata !5, i32 299, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 299]
!93 = metadata !{i32 786443, metadata !1, metadata !94, i32 298, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!94 = metadata !{i32 786443, metadata !1, metadata !85, i32 293, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!95 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVfprintf", metadata !"DVfprintf", metadata !"", i32 316, metadata !96, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, double*)* @DVfprintf, null, null, metadata !155, i32 320} ; [ DW_TAG_subprogram ] [line 316] [def] [scope 320] [DVfprintf]
!96 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!97 = metadata !{null, metadata !98, metadata !8, metadata !9}
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!99 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!100 = metadata !{i32 786451, metadata !101, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !102, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!101 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!102 = metadata !{metadata !103, metadata !104, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !125, metadata !126, metadata !127, metadata !128, metadata !131, metadata !133, metadata !135, metadata !139, metadata !141, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !150, metadata !151}
!103 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!104 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !105} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!106 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!107 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !105} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!108 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !105} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!109 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !105} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!110 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !105} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!111 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !105} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!112 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !105} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!113 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !105} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!114 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !105} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!115 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !105} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!116 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !105} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!117 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !118} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!119 = metadata !{i32 786451, metadata !101, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !120, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!120 = metadata !{metadata !121, metadata !122, metadata !124}
!121 = metadata !{i32 786445, metadata !101, metadata !119, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!122 = metadata !{i32 786445, metadata !101, metadata !119, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !123} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!123 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!124 = metadata !{i32 786445, metadata !101, metadata !119, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!125 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !123} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!126 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!127 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!128 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !129} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!129 = metadata !{i32 786454, metadata !101, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!130 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!131 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !132} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!132 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!133 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !134} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!134 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!135 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !136} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!136 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !106, metadata !137, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!137 = metadata !{metadata !138}
!138 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!139 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !140} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!141 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !142} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!142 = metadata !{i32 786454, metadata !101, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!143 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !140} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!144 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !140} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!145 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !140} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!146 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !140} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!147 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !148} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!148 = metadata !{i32 786454, metadata !101, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!149 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!150 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!151 = metadata !{i32 786445, metadata !101, metadata !100, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !152} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!152 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !106, metadata !153, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!153 = metadata !{metadata !154}
!154 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159}
!156 = metadata !{i32 786689, metadata !95, metadata !"fp", metadata !5, i32 16777533, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 317]
!157 = metadata !{i32 786689, metadata !95, metadata !"size", metadata !5, i32 33554750, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 318]
!158 = metadata !{i32 786689, metadata !95, metadata !"y", metadata !5, i32 50331967, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 319]
!159 = metadata !{i32 786688, metadata !160, metadata !"i", metadata !5, i32 327, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 327]
!160 = metadata !{i32 786443, metadata !1, metadata !161, i32 326, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!161 = metadata !{i32 786443, metadata !1, metadata !95, i32 321, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!162 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVfree", metadata !"DVfree", metadata !"", i32 346, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*)* @DVfree, null, null, metadata !165, i32 348} ; [ DW_TAG_subprogram ] [line 346] [def] [scope 348] [DVfree]
!163 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{null, metadata !9}
!165 = metadata !{metadata !166}
!166 = metadata !{i32 786689, metadata !162, metadata !"y", metadata !5, i32 16777563, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 347]
!167 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVfscanf", metadata !"DVfscanf", metadata !"", i32 364, metadata !168, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i32, double*)* @DVfscanf, null, null, metadata !170, i32 368} ; [ DW_TAG_subprogram ] [line 364] [def] [scope 368] [DVfscanf]
!168 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!169 = metadata !{metadata !8, metadata !98, metadata !8, metadata !9}
!170 = metadata !{metadata !171, metadata !172, metadata !173, metadata !174, metadata !175}
!171 = metadata !{i32 786689, metadata !167, metadata !"fp", metadata !5, i32 16777581, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 365]
!172 = metadata !{i32 786689, metadata !167, metadata !"size", metadata !5, i32 33554798, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 366]
!173 = metadata !{i32 786689, metadata !167, metadata !"y", metadata !5, i32 50332015, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 367]
!174 = metadata !{i32 786688, metadata !167, metadata !"i", metadata !5, i32 369, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 369]
!175 = metadata !{i32 786688, metadata !167, metadata !"rc", metadata !5, i32 369, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 369]
!176 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVgather", metadata !"DVgather", metadata !"", i32 393, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, i32*)* @DVgather, null, null, metadata !179, i32 398} ; [ DW_TAG_subprogram ] [line 393] [def] [scope 398] [DVgather]
!177 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!178 = metadata !{null, metadata !8, metadata !9, metadata !9, metadata !30}
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !183, metadata !184}
!180 = metadata !{i32 786689, metadata !176, metadata !"size", metadata !5, i32 16777610, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 394]
!181 = metadata !{i32 786689, metadata !176, metadata !"y", metadata !5, i32 33554827, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 395]
!182 = metadata !{i32 786689, metadata !176, metadata !"x", metadata !5, i32 50332044, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 396]
!183 = metadata !{i32 786689, metadata !176, metadata !"index", metadata !5, i32 67109261, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 397]
!184 = metadata !{i32 786688, metadata !185, metadata !"i", metadata !5, i32 406, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 406]
!185 = metadata !{i32 786443, metadata !1, metadata !186, i32 405, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!186 = metadata !{i32 786443, metadata !1, metadata !176, i32 399, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!187 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVgatherAddZero", metadata !"DVgatherAddZero", metadata !"", i32 423, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, i32*)* @DVgatherAddZero, null, null, metadata !188, i32 428} ; [ DW_TAG_subprogram ] [line 423] [def] [scope 428] [DVgatherAddZero]
!188 = metadata !{metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !196}
!189 = metadata !{i32 786689, metadata !187, metadata !"size", metadata !5, i32 16777640, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 424]
!190 = metadata !{i32 786689, metadata !187, metadata !"y", metadata !5, i32 33554857, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 425]
!191 = metadata !{i32 786689, metadata !187, metadata !"x", metadata !5, i32 50332074, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 426]
!192 = metadata !{i32 786689, metadata !187, metadata !"index", metadata !5, i32 67109291, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 427]
!193 = metadata !{i32 786688, metadata !194, metadata !"i", metadata !5, i32 436, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 436]
!194 = metadata !{i32 786443, metadata !1, metadata !195, i32 435, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!195 = metadata !{i32 786443, metadata !1, metadata !187, i32 429, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!196 = metadata !{i32 786688, metadata !194, metadata !"j", metadata !5, i32 436, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 436]
!197 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVgatherZero", metadata !"DVgatherZero", metadata !"", i32 455, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, i32*)* @DVgatherZero, null, null, metadata !198, i32 460} ; [ DW_TAG_subprogram ] [line 455] [def] [scope 460] [DVgatherZero]
!198 = metadata !{metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !206}
!199 = metadata !{i32 786689, metadata !197, metadata !"size", metadata !5, i32 16777672, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 456]
!200 = metadata !{i32 786689, metadata !197, metadata !"y", metadata !5, i32 33554889, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 457]
!201 = metadata !{i32 786689, metadata !197, metadata !"x", metadata !5, i32 50332106, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 458]
!202 = metadata !{i32 786689, metadata !197, metadata !"index", metadata !5, i32 67109323, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 459]
!203 = metadata !{i32 786688, metadata !204, metadata !"i", metadata !5, i32 468, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 468]
!204 = metadata !{i32 786443, metadata !1, metadata !205, i32 467, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!205 = metadata !{i32 786443, metadata !1, metadata !197, i32 461, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!206 = metadata !{i32 786688, metadata !204, metadata !"j", metadata !5, i32 468, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 468]
!207 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVinit", metadata !"DVinit", metadata !"", i32 490, metadata !208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (i32, double)* @DVinit, null, null, metadata !210, i32 493} ; [ DW_TAG_subprogram ] [line 490] [def] [scope 493] [DVinit]
!208 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{metadata !9, metadata !8, metadata !10}
!210 = metadata !{metadata !211, metadata !212, metadata !213}
!211 = metadata !{i32 786689, metadata !207, metadata !"size", metadata !5, i32 16777707, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 491]
!212 = metadata !{i32 786689, metadata !207, metadata !"dval", metadata !5, i32 33554924, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dval] [line 492]
!213 = metadata !{i32 786688, metadata !207, metadata !"y", metadata !5, i32 494, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 494]
!214 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVinit2", metadata !"DVinit2", metadata !"", i32 512, metadata !215, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (i32)* @DVinit2, null, null, metadata !217, i32 514} ; [ DW_TAG_subprogram ] [line 512] [def] [scope 514] [DVinit2]
!215 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!216 = metadata !{metadata !9, metadata !8}
!217 = metadata !{metadata !218, metadata !219}
!218 = metadata !{i32 786689, metadata !214, metadata !"size", metadata !5, i32 16777729, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 513]
!219 = metadata !{i32 786688, metadata !214, metadata !"y", metadata !5, i32 515, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 515]
!220 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVinvPerm", metadata !"DVinvPerm", metadata !"", i32 531, metadata !221, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, i32*)* @DVinvPerm, null, null, metadata !223, i32 535} ; [ DW_TAG_subprogram ] [line 531] [def] [scope 535] [DVinvPerm]
!221 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!222 = metadata !{null, metadata !8, metadata !9, metadata !30}
!223 = metadata !{metadata !224, metadata !225, metadata !226, metadata !227, metadata !230}
!224 = metadata !{i32 786689, metadata !220, metadata !"size", metadata !5, i32 16777748, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 532]
!225 = metadata !{i32 786689, metadata !220, metadata !"y", metadata !5, i32 33554965, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 533]
!226 = metadata !{i32 786689, metadata !220, metadata !"index", metadata !5, i32 50332182, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 534]
!227 = metadata !{i32 786688, metadata !228, metadata !"x", metadata !5, i32 542, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 542]
!228 = metadata !{i32 786443, metadata !1, metadata !229, i32 541, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!229 = metadata !{i32 786443, metadata !1, metadata !220, i32 536, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!230 = metadata !{i32 786688, metadata !228, metadata !"i", metadata !5, i32 543, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 543]
!231 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVmax", metadata !"DVmax", metadata !"", i32 564, metadata !232, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (i32, double*, i32*)* @DVmax, null, null, metadata !234, i32 568} ; [ DW_TAG_subprogram ] [line 564] [def] [scope 568] [DVmax]
!232 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !233, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!233 = metadata !{metadata !10, metadata !8, metadata !9, metadata !30}
!234 = metadata !{metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240}
!235 = metadata !{i32 786689, metadata !231, metadata !"size", metadata !5, i32 16777781, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 565]
!236 = metadata !{i32 786689, metadata !231, metadata !"y", metadata !5, i32 33554998, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 566]
!237 = metadata !{i32 786689, metadata !231, metadata !"ploc", metadata !5, i32 50332215, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ploc] [line 567]
!238 = metadata !{i32 786688, metadata !231, metadata !"maxval", metadata !5, i32 569, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxval] [line 569]
!239 = metadata !{i32 786688, metadata !231, metadata !"loc", metadata !5, i32 570, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 570]
!240 = metadata !{i32 786688, metadata !241, metadata !"i", metadata !5, i32 577, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 577]
!241 = metadata !{i32 786443, metadata !1, metadata !242, i32 576, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!242 = metadata !{i32 786443, metadata !1, metadata !231, i32 571, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!243 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVmaxabs", metadata !"DVmaxabs", metadata !"", i32 603, metadata !232, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (i32, double*, i32*)* @DVmaxabs, null, null, metadata !244, i32 607} ; [ DW_TAG_subprogram ] [line 603] [def] [scope 607] [DVmaxabs]
!244 = metadata !{metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !253}
!245 = metadata !{i32 786689, metadata !243, metadata !"size", metadata !5, i32 16777820, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 604]
!246 = metadata !{i32 786689, metadata !243, metadata !"y", metadata !5, i32 33555037, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 605]
!247 = metadata !{i32 786689, metadata !243, metadata !"ploc", metadata !5, i32 50332254, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ploc] [line 606]
!248 = metadata !{i32 786688, metadata !243, metadata !"maxval", metadata !5, i32 608, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxval] [line 608]
!249 = metadata !{i32 786688, metadata !243, metadata !"loc", metadata !5, i32 609, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 609]
!250 = metadata !{i32 786688, metadata !251, metadata !"i", metadata !5, i32 617, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 617]
!251 = metadata !{i32 786443, metadata !1, metadata !252, i32 616, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!252 = metadata !{i32 786443, metadata !1, metadata !243, i32 611, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!253 = metadata !{i32 786688, metadata !251, metadata !"val", metadata !5, i32 618, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 618]
!254 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVmin", metadata !"DVmin", metadata !"", i32 645, metadata !232, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (i32, double*, i32*)* @DVmin, null, null, metadata !255, i32 649} ; [ DW_TAG_subprogram ] [line 645] [def] [scope 649] [DVmin]
!255 = metadata !{metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261}
!256 = metadata !{i32 786689, metadata !254, metadata !"size", metadata !5, i32 16777862, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 646]
!257 = metadata !{i32 786689, metadata !254, metadata !"y", metadata !5, i32 33555079, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 647]
!258 = metadata !{i32 786689, metadata !254, metadata !"ploc", metadata !5, i32 50332296, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ploc] [line 648]
!259 = metadata !{i32 786688, metadata !254, metadata !"minval", metadata !5, i32 650, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minval] [line 650]
!260 = metadata !{i32 786688, metadata !254, metadata !"loc", metadata !5, i32 651, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 651]
!261 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !5, i32 658, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 658]
!262 = metadata !{i32 786443, metadata !1, metadata !263, i32 657, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!263 = metadata !{i32 786443, metadata !1, metadata !254, i32 652, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!264 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVminabs", metadata !"DVminabs", metadata !"", i32 684, metadata !232, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (i32, double*, i32*)* @DVminabs, null, null, metadata !265, i32 688} ; [ DW_TAG_subprogram ] [line 684] [def] [scope 688] [DVminabs]
!265 = metadata !{metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !274}
!266 = metadata !{i32 786689, metadata !264, metadata !"size", metadata !5, i32 16777901, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 685]
!267 = metadata !{i32 786689, metadata !264, metadata !"y", metadata !5, i32 33555118, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 686]
!268 = metadata !{i32 786689, metadata !264, metadata !"ploc", metadata !5, i32 50332335, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ploc] [line 687]
!269 = metadata !{i32 786688, metadata !264, metadata !"minval", metadata !5, i32 689, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minval] [line 689]
!270 = metadata !{i32 786688, metadata !264, metadata !"loc", metadata !5, i32 690, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 690]
!271 = metadata !{i32 786688, metadata !272, metadata !"i", metadata !5, i32 698, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 698]
!272 = metadata !{i32 786443, metadata !1, metadata !273, i32 697, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!273 = metadata !{i32 786443, metadata !1, metadata !264, i32 692, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!274 = metadata !{i32 786688, metadata !272, metadata !"val", metadata !5, i32 699, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 699]
!275 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVperm", metadata !"DVperm", metadata !"", i32 726, metadata !221, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, i32*)* @DVperm, null, null, metadata !276, i32 730} ; [ DW_TAG_subprogram ] [line 726] [def] [scope 730] [DVperm]
!276 = metadata !{metadata !277, metadata !278, metadata !279, metadata !280, metadata !283}
!277 = metadata !{i32 786689, metadata !275, metadata !"size", metadata !5, i32 16777943, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 727]
!278 = metadata !{i32 786689, metadata !275, metadata !"y", metadata !5, i32 33555160, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 728]
!279 = metadata !{i32 786689, metadata !275, metadata !"index", metadata !5, i32 50332377, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 729]
!280 = metadata !{i32 786688, metadata !281, metadata !"x", metadata !5, i32 737, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 737]
!281 = metadata !{i32 786443, metadata !1, metadata !282, i32 736, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!282 = metadata !{i32 786443, metadata !1, metadata !275, i32 731, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!283 = metadata !{i32 786688, metadata !281, metadata !"i", metadata !5, i32 738, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 738]
!284 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVramp", metadata !"DVramp", metadata !"", i32 758, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double, double)* @DVramp, null, null, metadata !287, i32 763} ; [ DW_TAG_subprogram ] [line 758] [def] [scope 763] [DVramp]
!285 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!286 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !10}
!287 = metadata !{metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !295}
!288 = metadata !{i32 786689, metadata !284, metadata !"size", metadata !5, i32 16777975, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 759]
!289 = metadata !{i32 786689, metadata !284, metadata !"y", metadata !5, i32 33555192, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 760]
!290 = metadata !{i32 786689, metadata !284, metadata !"start", metadata !5, i32 50332409, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 761]
!291 = metadata !{i32 786689, metadata !284, metadata !"inc", metadata !5, i32 67109626, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inc] [line 762]
!292 = metadata !{i32 786688, metadata !293, metadata !"i", metadata !5, i32 771, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 771]
!293 = metadata !{i32 786443, metadata !1, metadata !294, i32 770, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!294 = metadata !{i32 786443, metadata !1, metadata !284, i32 764, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!295 = metadata !{i32 786688, metadata !293, metadata !"val", metadata !5, i32 772, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 772]
!296 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVsub", metadata !"DVsub", metadata !"", i32 789, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*)* @DVsub, null, null, metadata !297, i32 793} ; [ DW_TAG_subprogram ] [line 789] [def] [scope 793] [DVsub]
!297 = metadata !{metadata !298, metadata !299, metadata !300, metadata !301}
!298 = metadata !{i32 786689, metadata !296, metadata !"size", metadata !5, i32 16778006, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 790]
!299 = metadata !{i32 786689, metadata !296, metadata !"y", metadata !5, i32 33555223, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 791]
!300 = metadata !{i32 786689, metadata !296, metadata !"x", metadata !5, i32 50332440, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 792]
!301 = metadata !{i32 786688, metadata !302, metadata !"i", metadata !5, i32 800, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 800]
!302 = metadata !{i32 786443, metadata !1, metadata !303, i32 799, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!303 = metadata !{i32 786443, metadata !1, metadata !296, i32 794, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!304 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVscale", metadata !"DVscale", metadata !"", i32 817, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double)* @DVscale, null, null, metadata !305, i32 821} ; [ DW_TAG_subprogram ] [line 817] [def] [scope 821] [DVscale]
!305 = metadata !{metadata !306, metadata !307, metadata !308, metadata !309}
!306 = metadata !{i32 786689, metadata !304, metadata !"size", metadata !5, i32 16778034, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 818]
!307 = metadata !{i32 786689, metadata !304, metadata !"y", metadata !5, i32 33555251, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 819]
!308 = metadata !{i32 786689, metadata !304, metadata !"alpha", metadata !5, i32 50332468, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 820]
!309 = metadata !{i32 786688, metadata !310, metadata !"i", metadata !5, i32 829, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 829]
!310 = metadata !{i32 786443, metadata !1, metadata !311, i32 828, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!311 = metadata !{i32 786443, metadata !1, metadata !304, i32 822, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!312 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVscatter", metadata !"DVscatter", metadata !"", i32 846, metadata !313, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, i32*, double*)* @DVscatter, null, null, metadata !315, i32 851} ; [ DW_TAG_subprogram ] [line 846] [def] [scope 851] [DVscatter]
!313 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !314, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!314 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !9}
!315 = metadata !{metadata !316, metadata !317, metadata !318, metadata !319, metadata !320}
!316 = metadata !{i32 786689, metadata !312, metadata !"size", metadata !5, i32 16778063, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 847]
!317 = metadata !{i32 786689, metadata !312, metadata !"y", metadata !5, i32 33555280, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 848]
!318 = metadata !{i32 786689, metadata !312, metadata !"index", metadata !5, i32 50332497, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 849]
!319 = metadata !{i32 786689, metadata !312, metadata !"x", metadata !5, i32 67109714, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 850]
!320 = metadata !{i32 786688, metadata !321, metadata !"i", metadata !5, i32 859, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 859]
!321 = metadata !{i32 786443, metadata !1, metadata !322, i32 858, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!322 = metadata !{i32 786443, metadata !1, metadata !312, i32 852, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!323 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVscatterAdd", metadata !"DVscatterAdd", metadata !"", i32 876, metadata !313, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, i32*, double*)* @DVscatterAdd, null, null, metadata !324, i32 881} ; [ DW_TAG_subprogram ] [line 876] [def] [scope 881] [DVscatterAdd]
!324 = metadata !{metadata !325, metadata !326, metadata !327, metadata !328, metadata !329}
!325 = metadata !{i32 786689, metadata !323, metadata !"size", metadata !5, i32 16778093, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 877]
!326 = metadata !{i32 786689, metadata !323, metadata !"y", metadata !5, i32 33555310, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 878]
!327 = metadata !{i32 786689, metadata !323, metadata !"index", metadata !5, i32 50332527, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 879]
!328 = metadata !{i32 786689, metadata !323, metadata !"x", metadata !5, i32 67109744, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 880]
!329 = metadata !{i32 786688, metadata !330, metadata !"i", metadata !5, i32 889, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 889]
!330 = metadata !{i32 786443, metadata !1, metadata !331, i32 888, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!331 = metadata !{i32 786443, metadata !1, metadata !323, i32 882, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!332 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVscatterAddZero", metadata !"DVscatterAddZero", metadata !"", i32 906, metadata !313, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, i32*, double*)* @DVscatterAddZero, null, null, metadata !333, i32 911} ; [ DW_TAG_subprogram ] [line 906] [def] [scope 911] [DVscatterAddZero]
!333 = metadata !{metadata !334, metadata !335, metadata !336, metadata !337, metadata !338}
!334 = metadata !{i32 786689, metadata !332, metadata !"size", metadata !5, i32 16778123, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 907]
!335 = metadata !{i32 786689, metadata !332, metadata !"y", metadata !5, i32 33555340, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 908]
!336 = metadata !{i32 786689, metadata !332, metadata !"index", metadata !5, i32 50332557, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 909]
!337 = metadata !{i32 786689, metadata !332, metadata !"x", metadata !5, i32 67109774, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 910]
!338 = metadata !{i32 786688, metadata !339, metadata !"i", metadata !5, i32 919, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 919]
!339 = metadata !{i32 786443, metadata !1, metadata !340, i32 918, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!340 = metadata !{i32 786443, metadata !1, metadata !332, i32 912, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!341 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVscatterZero", metadata !"DVscatterZero", metadata !"", i32 937, metadata !313, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, i32*, double*)* @DVscatterZero, null, null, metadata !342, i32 942} ; [ DW_TAG_subprogram ] [line 937] [def] [scope 942] [DVscatterZero]
!342 = metadata !{metadata !343, metadata !344, metadata !345, metadata !346, metadata !347}
!343 = metadata !{i32 786689, metadata !341, metadata !"size", metadata !5, i32 16778154, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 938]
!344 = metadata !{i32 786689, metadata !341, metadata !"y", metadata !5, i32 33555371, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 939]
!345 = metadata !{i32 786689, metadata !341, metadata !"index", metadata !5, i32 50332588, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 940]
!346 = metadata !{i32 786689, metadata !341, metadata !"x", metadata !5, i32 67109805, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 941]
!347 = metadata !{i32 786688, metadata !348, metadata !"i", metadata !5, i32 950, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 950]
!348 = metadata !{i32 786443, metadata !1, metadata !349, i32 949, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!349 = metadata !{i32 786443, metadata !1, metadata !341, i32 943, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!350 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVsum", metadata !"DVsum", metadata !"", i32 968, metadata !351, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (i32, double*)* @DVsum, null, null, metadata !353, i32 971} ; [ DW_TAG_subprogram ] [line 968] [def] [scope 971] [DVsum]
!351 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !352, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!352 = metadata !{metadata !10, metadata !8, metadata !9}
!353 = metadata !{metadata !354, metadata !355, metadata !356, metadata !357}
!354 = metadata !{i32 786689, metadata !350, metadata !"size", metadata !5, i32 16778185, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 969]
!355 = metadata !{i32 786689, metadata !350, metadata !"y", metadata !5, i32 33555402, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 970]
!356 = metadata !{i32 786688, metadata !350, metadata !"sum", metadata !5, i32 972, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 972]
!357 = metadata !{i32 786688, metadata !358, metadata !"i", metadata !5, i32 979, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 979]
!358 = metadata !{i32 786443, metadata !1, metadata !359, i32 978, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!359 = metadata !{i32 786443, metadata !1, metadata !350, i32 973, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!360 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVsumabs", metadata !"DVsumabs", metadata !"", i32 997, metadata !351, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (i32, double*)* @DVsumabs, null, null, metadata !361, i32 1000} ; [ DW_TAG_subprogram ] [line 997] [def] [scope 1000] [DVsumabs]
!361 = metadata !{metadata !362, metadata !363, metadata !364, metadata !365}
!362 = metadata !{i32 786689, metadata !360, metadata !"size", metadata !5, i32 16778214, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 998]
!363 = metadata !{i32 786689, metadata !360, metadata !"y", metadata !5, i32 33555431, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 999]
!364 = metadata !{i32 786688, metadata !360, metadata !"sum", metadata !5, i32 1001, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 1001]
!365 = metadata !{i32 786688, metadata !366, metadata !"i", metadata !5, i32 1008, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1008]
!366 = metadata !{i32 786443, metadata !1, metadata !367, i32 1007, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!367 = metadata !{i32 786443, metadata !1, metadata !360, i32 1002, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!368 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVswap", metadata !"DVswap", metadata !"", i32 1025, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*)* @DVswap, null, null, metadata !369, i32 1029} ; [ DW_TAG_subprogram ] [line 1025] [def] [scope 1029] [DVswap]
!369 = metadata !{metadata !370, metadata !371, metadata !372, metadata !373, metadata !376}
!370 = metadata !{i32 786689, metadata !368, metadata !"size", metadata !5, i32 16778242, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1026]
!371 = metadata !{i32 786689, metadata !368, metadata !"y", metadata !5, i32 33555459, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 1027]
!372 = metadata !{i32 786689, metadata !368, metadata !"x", metadata !5, i32 50332676, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 1028]
!373 = metadata !{i32 786688, metadata !374, metadata !"temp", metadata !5, i32 1036, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 1036]
!374 = metadata !{i32 786443, metadata !1, metadata !375, i32 1035, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!375 = metadata !{i32 786443, metadata !1, metadata !368, i32 1030, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!376 = metadata !{i32 786688, metadata !374, metadata !"i", metadata !5, i32 1037, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1037]
!377 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVzero", metadata !"DVzero", metadata !"", i32 1056, metadata !378, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*)* @DVzero, null, null, metadata !380, i32 1059} ; [ DW_TAG_subprogram ] [line 1056] [def] [scope 1059] [DVzero]
!378 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!379 = metadata !{null, metadata !8, metadata !9}
!380 = metadata !{metadata !381, metadata !382, metadata !383}
!381 = metadata !{i32 786689, metadata !377, metadata !"size", metadata !5, i32 16778273, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1057]
!382 = metadata !{i32 786689, metadata !377, metadata !"y", metadata !5, i32 33555490, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 1058]
!383 = metadata !{i32 786688, metadata !384, metadata !"i", metadata !5, i32 1066, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1066]
!384 = metadata !{i32 786443, metadata !1, metadata !385, i32 1065, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!385 = metadata !{i32 786443, metadata !1, metadata !377, i32 1060, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!386 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVshuffle", metadata !"DVshuffle", metadata !"", i32 1091, metadata !387, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, i32)* @DVshuffle, null, null, metadata !389, i32 1095} ; [ DW_TAG_subprogram ] [line 1091] [def] [scope 1095] [DVshuffle]
!387 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !388, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!388 = metadata !{null, metadata !8, metadata !9, metadata !8}
!389 = metadata !{metadata !390, metadata !391, metadata !392, metadata !393, metadata !409, metadata !410, metadata !411}
!390 = metadata !{i32 786689, metadata !386, metadata !"size", metadata !5, i32 16778308, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1092]
!391 = metadata !{i32 786689, metadata !386, metadata !"y", metadata !5, i32 33555525, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 1093]
!392 = metadata !{i32 786689, metadata !386, metadata !"seed", metadata !5, i32 50332742, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 1094]
!393 = metadata !{i32 786688, metadata !394, metadata !"drand", metadata !5, i32 1102, metadata !396, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [drand] [line 1102]
!394 = metadata !{i32 786443, metadata !1, metadata !395, i32 1101, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!395 = metadata !{i32 786443, metadata !1, metadata !386, i32 1096, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!396 = metadata !{i32 786454, metadata !1, null, metadata !"Drand", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !397} ; [ DW_TAG_typedef ] [Drand] [line 27, size 0, align 0, offset 0] [from _Drand]
!397 = metadata !{i32 786451, metadata !398, null, metadata !"_Drand", i32 17, i64 576, i64 64, i32 0, i32 0, null, metadata !399, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Drand] [line 17, size 576, align 64, offset 0] [from ]
!398 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/../../Drand/Drand.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!399 = metadata !{metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408}
!400 = metadata !{i32 786445, metadata !398, metadata !397, metadata !"seed1", i32 18, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [seed1] [line 18, size 64, align 64, offset 0] [from double]
!401 = metadata !{i32 786445, metadata !398, metadata !397, metadata !"seed2", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !10} ; [ DW_TAG_member ] [seed2] [line 19, size 64, align 64, offset 64] [from double]
!402 = metadata !{i32 786445, metadata !398, metadata !397, metadata !"base1", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !10} ; [ DW_TAG_member ] [base1] [line 20, size 64, align 64, offset 128] [from double]
!403 = metadata !{i32 786445, metadata !398, metadata !397, metadata !"base2", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !10} ; [ DW_TAG_member ] [base2] [line 21, size 64, align 64, offset 192] [from double]
!404 = metadata !{i32 786445, metadata !398, metadata !397, metadata !"lower", i32 22, i64 64, i64 64, i64 256, i32 0, metadata !10} ; [ DW_TAG_member ] [lower] [line 22, size 64, align 64, offset 256] [from double]
!405 = metadata !{i32 786445, metadata !398, metadata !397, metadata !"upper", i32 23, i64 64, i64 64, i64 320, i32 0, metadata !10} ; [ DW_TAG_member ] [upper] [line 23, size 64, align 64, offset 320] [from double]
!406 = metadata !{i32 786445, metadata !398, metadata !397, metadata !"mean", i32 24, i64 64, i64 64, i64 384, i32 0, metadata !10} ; [ DW_TAG_member ] [mean] [line 24, size 64, align 64, offset 384] [from double]
!407 = metadata !{i32 786445, metadata !398, metadata !397, metadata !"sigma", i32 25, i64 64, i64 64, i64 448, i32 0, metadata !10} ; [ DW_TAG_member ] [sigma] [line 25, size 64, align 64, offset 448] [from double]
!408 = metadata !{i32 786445, metadata !398, metadata !397, metadata !"mode", i32 26, i64 32, i64 32, i64 512, i32 0, metadata !8} ; [ DW_TAG_member ] [mode] [line 26, size 32, align 32, offset 512] [from int]
!409 = metadata !{i32 786688, metadata !394, metadata !"temp", metadata !5, i32 1103, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 1103]
!410 = metadata !{i32 786688, metadata !394, metadata !"i", metadata !5, i32 1104, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1104]
!411 = metadata !{i32 786688, metadata !394, metadata !"j", metadata !5, i32 1104, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1104]
!412 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVscale2", metadata !"DVscale2", metadata !"", i32 1130, metadata !413, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double, double, double, double)* @DVscale2, null, null, metadata !415, i32 1138} ; [ DW_TAG_subprogram ] [line 1130] [def] [scope 1138] [DVscale2]
!413 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !414, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!414 = metadata !{null, metadata !8, metadata !9, metadata !9, metadata !10, metadata !10, metadata !10, metadata !10}
!415 = metadata !{metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425}
!416 = metadata !{i32 786689, metadata !412, metadata !"size", metadata !5, i32 16778347, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1131]
!417 = metadata !{i32 786689, metadata !412, metadata !"x", metadata !5, i32 33555564, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 1132]
!418 = metadata !{i32 786689, metadata !412, metadata !"y", metadata !5, i32 50332781, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 1133]
!419 = metadata !{i32 786689, metadata !412, metadata !"a", metadata !5, i32 67109998, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1134]
!420 = metadata !{i32 786689, metadata !412, metadata !"b", metadata !5, i32 83887215, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1135]
!421 = metadata !{i32 786689, metadata !412, metadata !"c", metadata !5, i32 100664432, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 1136]
!422 = metadata !{i32 786689, metadata !412, metadata !"d", metadata !5, i32 117441649, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 1137]
!423 = metadata !{i32 786688, metadata !412, metadata !"xi", metadata !5, i32 1139, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi] [line 1139]
!424 = metadata !{i32 786688, metadata !412, metadata !"yi", metadata !5, i32 1139, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi] [line 1139]
!425 = metadata !{i32 786688, metadata !412, metadata !"ii", metadata !5, i32 1140, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1140]
!426 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVaxpy2", metadata !"DVaxpy2", metadata !"", i32 1168, metadata !427, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double, double*, double, double*)* @DVaxpy2, null, null, metadata !429, i32 1175} ; [ DW_TAG_subprogram ] [line 1168] [def] [scope 1175] [DVaxpy2]
!427 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !428, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!428 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !9, metadata !10, metadata !9}
!429 = metadata !{metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438}
!430 = metadata !{i32 786689, metadata !426, metadata !"size", metadata !5, i32 16778385, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1169]
!431 = metadata !{i32 786689, metadata !426, metadata !"z", metadata !5, i32 33555602, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 1170]
!432 = metadata !{i32 786689, metadata !426, metadata !"a", metadata !5, i32 50332819, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1171]
!433 = metadata !{i32 786689, metadata !426, metadata !"x", metadata !5, i32 67110036, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 1172]
!434 = metadata !{i32 786689, metadata !426, metadata !"b", metadata !5, i32 83887253, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1173]
!435 = metadata !{i32 786689, metadata !426, metadata !"y", metadata !5, i32 100664470, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 1174]
!436 = metadata !{i32 786688, metadata !426, metadata !"xi", metadata !5, i32 1176, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi] [line 1176]
!437 = metadata !{i32 786688, metadata !426, metadata !"yi", metadata !5, i32 1176, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi] [line 1176]
!438 = metadata !{i32 786688, metadata !426, metadata !"ii", metadata !5, i32 1177, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1177]
!439 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVdot33", metadata !"DVdot33", metadata !"", i32 1210, metadata !440, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*, double*, double*)* @DVdot33, null, null, metadata !442, i32 1219} ; [ DW_TAG_subprogram ] [line 1210] [def] [scope 1219] [DVdot33]
!440 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !441, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!441 = metadata !{null, metadata !8, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9}
!442 = metadata !{metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468}
!443 = metadata !{i32 786689, metadata !439, metadata !"n", metadata !5, i32 16778427, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1211]
!444 = metadata !{i32 786689, metadata !439, metadata !"row0", metadata !5, i32 33555644, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row0] [line 1212]
!445 = metadata !{i32 786689, metadata !439, metadata !"row1", metadata !5, i32 50332861, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row1] [line 1213]
!446 = metadata !{i32 786689, metadata !439, metadata !"row2", metadata !5, i32 67110078, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row2] [line 1214]
!447 = metadata !{i32 786689, metadata !439, metadata !"col0", metadata !5, i32 83887295, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col0] [line 1215]
!448 = metadata !{i32 786689, metadata !439, metadata !"col1", metadata !5, i32 100664512, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col1] [line 1216]
!449 = metadata !{i32 786689, metadata !439, metadata !"col2", metadata !5, i32 117441729, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col2] [line 1217]
!450 = metadata !{i32 786689, metadata !439, metadata !"sums", metadata !5, i32 134218946, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1218]
!451 = metadata !{i32 786688, metadata !439, metadata !"s00", metadata !5, i32 1220, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s00] [line 1220]
!452 = metadata !{i32 786688, metadata !439, metadata !"s01", metadata !5, i32 1220, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s01] [line 1220]
!453 = metadata !{i32 786688, metadata !439, metadata !"s02", metadata !5, i32 1220, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s02] [line 1220]
!454 = metadata !{i32 786688, metadata !439, metadata !"s10", metadata !5, i32 1220, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s10] [line 1220]
!455 = metadata !{i32 786688, metadata !439, metadata !"s11", metadata !5, i32 1220, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s11] [line 1220]
!456 = metadata !{i32 786688, metadata !439, metadata !"s12", metadata !5, i32 1220, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s12] [line 1220]
!457 = metadata !{i32 786688, metadata !439, metadata !"s20", metadata !5, i32 1220, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s20] [line 1220]
!458 = metadata !{i32 786688, metadata !439, metadata !"s21", metadata !5, i32 1220, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s21] [line 1220]
!459 = metadata !{i32 786688, metadata !439, metadata !"s22", metadata !5, i32 1220, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s22] [line 1220]
!460 = metadata !{i32 786688, metadata !439, metadata !"i", metadata !5, i32 1221, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1221]
!461 = metadata !{i32 786688, metadata !462, metadata !"r0i", metadata !5, i32 1242, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r0i] [line 1242]
!462 = metadata !{i32 786443, metadata !1, metadata !463, i32 1241, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!463 = metadata !{i32 786443, metadata !1, metadata !439, i32 1241, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!464 = metadata !{i32 786688, metadata !462, metadata !"r1i", metadata !5, i32 1242, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r1i] [line 1242]
!465 = metadata !{i32 786688, metadata !462, metadata !"r2i", metadata !5, i32 1242, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r2i] [line 1242]
!466 = metadata !{i32 786688, metadata !462, metadata !"c0i", metadata !5, i32 1242, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c0i] [line 1242]
!467 = metadata !{i32 786688, metadata !462, metadata !"c1i", metadata !5, i32 1242, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1i] [line 1242]
!468 = metadata !{i32 786688, metadata !462, metadata !"c2i", metadata !5, i32 1242, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2i] [line 1242]
!469 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVdot23", metadata !"DVdot23", metadata !"", i32 1277, metadata !470, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*, double*)* @DVdot23, null, null, metadata !472, i32 1285} ; [ DW_TAG_subprogram ] [line 1277] [def] [scope 1285] [DVdot23]
!470 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !471, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!471 = metadata !{null, metadata !8, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9}
!472 = metadata !{metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !490, metadata !491, metadata !492, metadata !493}
!473 = metadata !{i32 786689, metadata !469, metadata !"n", metadata !5, i32 16778494, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1278]
!474 = metadata !{i32 786689, metadata !469, metadata !"row0", metadata !5, i32 33555711, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row0] [line 1279]
!475 = metadata !{i32 786689, metadata !469, metadata !"row1", metadata !5, i32 50332928, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row1] [line 1280]
!476 = metadata !{i32 786689, metadata !469, metadata !"col0", metadata !5, i32 67110145, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col0] [line 1281]
!477 = metadata !{i32 786689, metadata !469, metadata !"col1", metadata !5, i32 83887362, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col1] [line 1282]
!478 = metadata !{i32 786689, metadata !469, metadata !"col2", metadata !5, i32 100664579, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col2] [line 1283]
!479 = metadata !{i32 786689, metadata !469, metadata !"sums", metadata !5, i32 117441796, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1284]
!480 = metadata !{i32 786688, metadata !469, metadata !"s00", metadata !5, i32 1286, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s00] [line 1286]
!481 = metadata !{i32 786688, metadata !469, metadata !"s01", metadata !5, i32 1286, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s01] [line 1286]
!482 = metadata !{i32 786688, metadata !469, metadata !"s02", metadata !5, i32 1286, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s02] [line 1286]
!483 = metadata !{i32 786688, metadata !469, metadata !"s10", metadata !5, i32 1286, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s10] [line 1286]
!484 = metadata !{i32 786688, metadata !469, metadata !"s11", metadata !5, i32 1286, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s11] [line 1286]
!485 = metadata !{i32 786688, metadata !469, metadata !"s12", metadata !5, i32 1286, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s12] [line 1286]
!486 = metadata !{i32 786688, metadata !469, metadata !"i", metadata !5, i32 1287, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1287]
!487 = metadata !{i32 786688, metadata !488, metadata !"r0i", metadata !5, i32 1308, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r0i] [line 1308]
!488 = metadata !{i32 786443, metadata !1, metadata !489, i32 1307, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!489 = metadata !{i32 786443, metadata !1, metadata !469, i32 1307, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!490 = metadata !{i32 786688, metadata !488, metadata !"r1i", metadata !5, i32 1308, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r1i] [line 1308]
!491 = metadata !{i32 786688, metadata !488, metadata !"c0i", metadata !5, i32 1308, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c0i] [line 1308]
!492 = metadata !{i32 786688, metadata !488, metadata !"c1i", metadata !5, i32 1308, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1i] [line 1308]
!493 = metadata !{i32 786688, metadata !488, metadata !"c2i", metadata !5, i32 1308, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2i] [line 1308]
!494 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVdot13", metadata !"DVdot13", metadata !"", i32 1338, metadata !495, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*)* @DVdot13, null, null, metadata !497, i32 1345} ; [ DW_TAG_subprogram ] [line 1338] [def] [scope 1345] [DVdot13]
!495 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !496, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!496 = metadata !{null, metadata !8, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9}
!497 = metadata !{metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !511, metadata !512, metadata !513}
!498 = metadata !{i32 786689, metadata !494, metadata !"n", metadata !5, i32 16778555, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1339]
!499 = metadata !{i32 786689, metadata !494, metadata !"row0", metadata !5, i32 33555772, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row0] [line 1340]
!500 = metadata !{i32 786689, metadata !494, metadata !"col0", metadata !5, i32 50332989, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col0] [line 1341]
!501 = metadata !{i32 786689, metadata !494, metadata !"col1", metadata !5, i32 67110206, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col1] [line 1342]
!502 = metadata !{i32 786689, metadata !494, metadata !"col2", metadata !5, i32 83887423, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col2] [line 1343]
!503 = metadata !{i32 786689, metadata !494, metadata !"sums", metadata !5, i32 100664640, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1344]
!504 = metadata !{i32 786688, metadata !494, metadata !"s00", metadata !5, i32 1346, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s00] [line 1346]
!505 = metadata !{i32 786688, metadata !494, metadata !"s01", metadata !5, i32 1346, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s01] [line 1346]
!506 = metadata !{i32 786688, metadata !494, metadata !"s02", metadata !5, i32 1346, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s02] [line 1346]
!507 = metadata !{i32 786688, metadata !494, metadata !"i", metadata !5, i32 1347, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1347]
!508 = metadata !{i32 786688, metadata !509, metadata !"r0i", metadata !5, i32 1368, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r0i] [line 1368]
!509 = metadata !{i32 786443, metadata !1, metadata !510, i32 1367, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!510 = metadata !{i32 786443, metadata !1, metadata !494, i32 1367, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!511 = metadata !{i32 786688, metadata !509, metadata !"c0i", metadata !5, i32 1368, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c0i] [line 1368]
!512 = metadata !{i32 786688, metadata !509, metadata !"c1i", metadata !5, i32 1368, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1i] [line 1368]
!513 = metadata !{i32 786688, metadata !509, metadata !"c2i", metadata !5, i32 1368, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2i] [line 1368]
!514 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVdot32", metadata !"DVdot32", metadata !"", i32 1399, metadata !470, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*, double*)* @DVdot32, null, null, metadata !515, i32 1407} ; [ DW_TAG_subprogram ] [line 1399] [def] [scope 1407] [DVdot32]
!515 = metadata !{metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !533, metadata !534, metadata !535, metadata !536}
!516 = metadata !{i32 786689, metadata !514, metadata !"n", metadata !5, i32 16778616, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1400]
!517 = metadata !{i32 786689, metadata !514, metadata !"row0", metadata !5, i32 33555833, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row0] [line 1401]
!518 = metadata !{i32 786689, metadata !514, metadata !"row1", metadata !5, i32 50333050, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row1] [line 1402]
!519 = metadata !{i32 786689, metadata !514, metadata !"row2", metadata !5, i32 67110267, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row2] [line 1403]
!520 = metadata !{i32 786689, metadata !514, metadata !"col0", metadata !5, i32 83887484, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col0] [line 1404]
!521 = metadata !{i32 786689, metadata !514, metadata !"col1", metadata !5, i32 100664701, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col1] [line 1405]
!522 = metadata !{i32 786689, metadata !514, metadata !"sums", metadata !5, i32 117441918, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1406]
!523 = metadata !{i32 786688, metadata !514, metadata !"s00", metadata !5, i32 1408, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s00] [line 1408]
!524 = metadata !{i32 786688, metadata !514, metadata !"s01", metadata !5, i32 1408, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s01] [line 1408]
!525 = metadata !{i32 786688, metadata !514, metadata !"s10", metadata !5, i32 1408, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s10] [line 1408]
!526 = metadata !{i32 786688, metadata !514, metadata !"s11", metadata !5, i32 1408, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s11] [line 1408]
!527 = metadata !{i32 786688, metadata !514, metadata !"s20", metadata !5, i32 1408, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s20] [line 1408]
!528 = metadata !{i32 786688, metadata !514, metadata !"s21", metadata !5, i32 1408, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s21] [line 1408]
!529 = metadata !{i32 786688, metadata !514, metadata !"i", metadata !5, i32 1409, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1409]
!530 = metadata !{i32 786688, metadata !531, metadata !"r0i", metadata !5, i32 1430, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r0i] [line 1430]
!531 = metadata !{i32 786443, metadata !1, metadata !532, i32 1429, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!532 = metadata !{i32 786443, metadata !1, metadata !514, i32 1429, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!533 = metadata !{i32 786688, metadata !531, metadata !"r1i", metadata !5, i32 1430, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r1i] [line 1430]
!534 = metadata !{i32 786688, metadata !531, metadata !"r2i", metadata !5, i32 1430, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r2i] [line 1430]
!535 = metadata !{i32 786688, metadata !531, metadata !"c0i", metadata !5, i32 1430, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c0i] [line 1430]
!536 = metadata !{i32 786688, metadata !531, metadata !"c1i", metadata !5, i32 1430, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1i] [line 1430]
!537 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVdot22", metadata !"DVdot22", metadata !"", i32 1463, metadata !495, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*)* @DVdot22, null, null, metadata !538, i32 1470} ; [ DW_TAG_subprogram ] [line 1463] [def] [scope 1470] [DVdot22]
!538 = metadata !{metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !553, metadata !554, metadata !555}
!539 = metadata !{i32 786689, metadata !537, metadata !"n", metadata !5, i32 16778680, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1464]
!540 = metadata !{i32 786689, metadata !537, metadata !"row0", metadata !5, i32 33555897, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row0] [line 1465]
!541 = metadata !{i32 786689, metadata !537, metadata !"row1", metadata !5, i32 50333114, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row1] [line 1466]
!542 = metadata !{i32 786689, metadata !537, metadata !"col0", metadata !5, i32 67110331, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col0] [line 1467]
!543 = metadata !{i32 786689, metadata !537, metadata !"col1", metadata !5, i32 83887548, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col1] [line 1468]
!544 = metadata !{i32 786689, metadata !537, metadata !"sums", metadata !5, i32 100664765, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1469]
!545 = metadata !{i32 786688, metadata !537, metadata !"s00", metadata !5, i32 1471, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s00] [line 1471]
!546 = metadata !{i32 786688, metadata !537, metadata !"s01", metadata !5, i32 1471, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s01] [line 1471]
!547 = metadata !{i32 786688, metadata !537, metadata !"s10", metadata !5, i32 1471, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s10] [line 1471]
!548 = metadata !{i32 786688, metadata !537, metadata !"s11", metadata !5, i32 1471, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s11] [line 1471]
!549 = metadata !{i32 786688, metadata !537, metadata !"i", metadata !5, i32 1472, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1472]
!550 = metadata !{i32 786688, metadata !551, metadata !"r0i", metadata !5, i32 1493, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r0i] [line 1493]
!551 = metadata !{i32 786443, metadata !1, metadata !552, i32 1492, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!552 = metadata !{i32 786443, metadata !1, metadata !537, i32 1492, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!553 = metadata !{i32 786688, metadata !551, metadata !"r1i", metadata !5, i32 1493, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r1i] [line 1493]
!554 = metadata !{i32 786688, metadata !551, metadata !"c0i", metadata !5, i32 1493, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c0i] [line 1493]
!555 = metadata !{i32 786688, metadata !551, metadata !"c1i", metadata !5, i32 1493, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1i] [line 1493]
!556 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVdot12", metadata !"DVdot12", metadata !"", i32 1522, metadata !557, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*)* @DVdot12, null, null, metadata !559, i32 1528} ; [ DW_TAG_subprogram ] [line 1522] [def] [scope 1528] [DVdot12]
!557 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !558, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!558 = metadata !{null, metadata !8, metadata !9, metadata !9, metadata !9, metadata !9}
!559 = metadata !{metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !571, metadata !572}
!560 = metadata !{i32 786689, metadata !556, metadata !"n", metadata !5, i32 16778739, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1523]
!561 = metadata !{i32 786689, metadata !556, metadata !"row0", metadata !5, i32 33555956, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row0] [line 1524]
!562 = metadata !{i32 786689, metadata !556, metadata !"col0", metadata !5, i32 50333173, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col0] [line 1525]
!563 = metadata !{i32 786689, metadata !556, metadata !"col1", metadata !5, i32 67110390, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col1] [line 1526]
!564 = metadata !{i32 786689, metadata !556, metadata !"sums", metadata !5, i32 83887607, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1527]
!565 = metadata !{i32 786688, metadata !556, metadata !"s00", metadata !5, i32 1529, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s00] [line 1529]
!566 = metadata !{i32 786688, metadata !556, metadata !"s01", metadata !5, i32 1529, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s01] [line 1529]
!567 = metadata !{i32 786688, metadata !556, metadata !"i", metadata !5, i32 1530, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1530]
!568 = metadata !{i32 786688, metadata !569, metadata !"r0i", metadata !5, i32 1551, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r0i] [line 1551]
!569 = metadata !{i32 786443, metadata !1, metadata !570, i32 1550, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!570 = metadata !{i32 786443, metadata !1, metadata !556, i32 1550, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!571 = metadata !{i32 786688, metadata !569, metadata !"c0i", metadata !5, i32 1551, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c0i] [line 1551]
!572 = metadata !{i32 786688, metadata !569, metadata !"c1i", metadata !5, i32 1551, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1i] [line 1551]
!573 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVdot31", metadata !"DVdot31", metadata !"", i32 1579, metadata !495, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*)* @DVdot31, null, null, metadata !574, i32 1586} ; [ DW_TAG_subprogram ] [line 1579] [def] [scope 1586] [DVdot31]
!574 = metadata !{metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !588, metadata !589, metadata !590}
!575 = metadata !{i32 786689, metadata !573, metadata !"n", metadata !5, i32 16778796, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1580]
!576 = metadata !{i32 786689, metadata !573, metadata !"row0", metadata !5, i32 33556013, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row0] [line 1581]
!577 = metadata !{i32 786689, metadata !573, metadata !"row1", metadata !5, i32 50333230, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row1] [line 1582]
!578 = metadata !{i32 786689, metadata !573, metadata !"row2", metadata !5, i32 67110447, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row2] [line 1583]
!579 = metadata !{i32 786689, metadata !573, metadata !"col0", metadata !5, i32 83887664, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col0] [line 1584]
!580 = metadata !{i32 786689, metadata !573, metadata !"sums", metadata !5, i32 100664881, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1585]
!581 = metadata !{i32 786688, metadata !573, metadata !"s00", metadata !5, i32 1587, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s00] [line 1587]
!582 = metadata !{i32 786688, metadata !573, metadata !"s10", metadata !5, i32 1587, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s10] [line 1587]
!583 = metadata !{i32 786688, metadata !573, metadata !"s20", metadata !5, i32 1587, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s20] [line 1587]
!584 = metadata !{i32 786688, metadata !573, metadata !"i", metadata !5, i32 1588, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1588]
!585 = metadata !{i32 786688, metadata !586, metadata !"r0i", metadata !5, i32 1609, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r0i] [line 1609]
!586 = metadata !{i32 786443, metadata !1, metadata !587, i32 1608, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!587 = metadata !{i32 786443, metadata !1, metadata !573, i32 1608, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!588 = metadata !{i32 786688, metadata !586, metadata !"r1i", metadata !5, i32 1609, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r1i] [line 1609]
!589 = metadata !{i32 786688, metadata !586, metadata !"r2i", metadata !5, i32 1609, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r2i] [line 1609]
!590 = metadata !{i32 786688, metadata !586, metadata !"c0i", metadata !5, i32 1609, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c0i] [line 1609]
!591 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVdot21", metadata !"DVdot21", metadata !"", i32 1640, metadata !557, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*)* @DVdot21, null, null, metadata !592, i32 1646} ; [ DW_TAG_subprogram ] [line 1640] [def] [scope 1646] [DVdot21]
!592 = metadata !{metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !604, metadata !605}
!593 = metadata !{i32 786689, metadata !591, metadata !"n", metadata !5, i32 16778857, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1641]
!594 = metadata !{i32 786689, metadata !591, metadata !"row0", metadata !5, i32 33556074, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row0] [line 1642]
!595 = metadata !{i32 786689, metadata !591, metadata !"row1", metadata !5, i32 50333291, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row1] [line 1643]
!596 = metadata !{i32 786689, metadata !591, metadata !"col0", metadata !5, i32 67110508, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col0] [line 1644]
!597 = metadata !{i32 786689, metadata !591, metadata !"sums", metadata !5, i32 83887725, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1645]
!598 = metadata !{i32 786688, metadata !591, metadata !"s00", metadata !5, i32 1647, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s00] [line 1647]
!599 = metadata !{i32 786688, metadata !591, metadata !"s10", metadata !5, i32 1647, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s10] [line 1647]
!600 = metadata !{i32 786688, metadata !591, metadata !"i", metadata !5, i32 1648, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1648]
!601 = metadata !{i32 786688, metadata !602, metadata !"r0i", metadata !5, i32 1669, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r0i] [line 1669]
!602 = metadata !{i32 786443, metadata !1, metadata !603, i32 1668, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!603 = metadata !{i32 786443, metadata !1, metadata !591, i32 1668, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!604 = metadata !{i32 786688, metadata !602, metadata !"r1i", metadata !5, i32 1669, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r1i] [line 1669]
!605 = metadata !{i32 786688, metadata !602, metadata !"c0i", metadata !5, i32 1669, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c0i] [line 1669]
!606 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DVdot11", metadata !"DVdot11", metadata !"", i32 1697, metadata !607, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*)* @DVdot11, null, null, metadata !609, i32 1702} ; [ DW_TAG_subprogram ] [line 1697] [def] [scope 1702] [DVdot11]
!607 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !608, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!608 = metadata !{null, metadata !8, metadata !9, metadata !9, metadata !9}
!609 = metadata !{metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !619}
!610 = metadata !{i32 786689, metadata !606, metadata !"n", metadata !5, i32 16778914, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1698]
!611 = metadata !{i32 786689, metadata !606, metadata !"row0", metadata !5, i32 33556131, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row0] [line 1699]
!612 = metadata !{i32 786689, metadata !606, metadata !"col0", metadata !5, i32 50333348, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col0] [line 1700]
!613 = metadata !{i32 786689, metadata !606, metadata !"sums", metadata !5, i32 67110565, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1701]
!614 = metadata !{i32 786688, metadata !606, metadata !"s00", metadata !5, i32 1703, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s00] [line 1703]
!615 = metadata !{i32 786688, metadata !606, metadata !"i", metadata !5, i32 1704, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1704]
!616 = metadata !{i32 786688, metadata !617, metadata !"r0i", metadata !5, i32 1725, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r0i] [line 1725]
!617 = metadata !{i32 786443, metadata !1, metadata !618, i32 1724, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!618 = metadata !{i32 786443, metadata !1, metadata !606, i32 1724, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!619 = metadata !{i32 786688, metadata !617, metadata !"c0i", metadata !5, i32 1725, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c0i] [line 1725]
!620 = metadata !{i32 16, i32 0, metadata !4, null}
!621 = metadata !{i32 17, i32 0, metadata !4, null}
!622 = metadata !{i32 18, i32 0, metadata !4, null}
!623 = metadata !{i32 20, i32 0, metadata !4, null}
!624 = metadata !{i32 22, i32 0, metadata !4, null}
!625 = metadata !{i32 29, i32 0, metadata !626, null}
!626 = metadata !{i32 786443, metadata !1, metadata !16, i32 29, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!627 = metadata !{i32 23, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!629 = metadata !{metadata !"any pointer", metadata !630}
!630 = metadata !{metadata !"omnipotent char", metadata !631}
!631 = metadata !{metadata !"Simple C/C++ TBAA"}
!632 = metadata !{i32 26, i32 0, metadata !628, null}
!633 = metadata !{i32 30, i32 0, metadata !634, null}
!634 = metadata !{i32 786443, metadata !1, metadata !626, i32 29, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!635 = metadata !{metadata !"double", metadata !630}
!636 = metadata !{i32 33, i32 0, metadata !4, null}
!637 = metadata !{i32 45, i32 0, metadata !17, null}
!638 = metadata !{i32 46, i32 0, metadata !17, null}
!639 = metadata !{i32 47, i32 0, metadata !17, null}
!640 = metadata !{i32 48, i32 0, metadata !17, null}
!641 = metadata !{i32 50, i32 0, metadata !17, null}
!642 = metadata !{i32 52, i32 0, metadata !17, null}
!643 = metadata !{i32 59, i32 0, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !26, i32 59, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!645 = metadata !{i32 53, i32 0, metadata !646, null}
!646 = metadata !{i32 786443, metadata !1, metadata !17, i32 52, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!647 = metadata !{i32 56, i32 0, metadata !646, null}
!648 = metadata !{i32 60, i32 0, metadata !649, null}
!649 = metadata !{i32 786443, metadata !1, metadata !644, i32 59, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!650 = metadata !{i32 63, i32 0, metadata !17, null}
!651 = metadata !{i32 75, i32 0, metadata !27, null}
!652 = metadata !{i32 76, i32 0, metadata !27, null}
!653 = metadata !{i32 77, i32 0, metadata !27, null}
!654 = metadata !{i32 78, i32 0, metadata !27, null}
!655 = metadata !{i32 79, i32 0, metadata !27, null}
!656 = metadata !{i32 81, i32 0, metadata !27, null}
!657 = metadata !{i32 83, i32 0, metadata !27, null}
!658 = metadata !{i32 90, i32 0, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !38, i32 90, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!660 = metadata !{i32 84, i32 0, metadata !661, null}
!661 = metadata !{i32 786443, metadata !1, metadata !27, i32 83, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!662 = metadata !{i32 87, i32 0, metadata !661, null}
!663 = metadata !{i32 91, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !659, i32 90, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!665 = metadata !{metadata !"int", metadata !630}
!666 = metadata !{i32 94, i32 0, metadata !27, null}
!667 = metadata !{i32 106, i32 0, metadata !39, null}
!668 = metadata !{i32 107, i32 0, metadata !39, null}
!669 = metadata !{i32 108, i32 0, metadata !39, null}
!670 = metadata !{i32 110, i32 0, metadata !39, null}
!671 = metadata !{i32 112, i32 0, metadata !39, null}
!672 = metadata !{i32 118, i32 0, metadata !673, null}
!673 = metadata !{i32 786443, metadata !1, metadata !45, i32 118, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!674 = metadata !{i32 113, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !39, i32 112, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!676 = metadata !{i32 115, i32 0, metadata !675, null}
!677 = metadata !{i32 119, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !673, i32 118, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!679 = metadata !{i32 122, i32 0, metadata !39, null}
!680 = metadata !{i32 139, i32 0, metadata !46, null}
!681 = metadata !{i32 140, i32 0, metadata !46, null}
!682 = metadata !{i32 141, i32 0, metadata !46, null}
!683 = metadata !{i32 142, i32 0, metadata !46, null}
!684 = metadata !{i32 143, i32 0, metadata !46, null}
!685 = metadata !{i32 144, i32 0, metadata !46, null}
!686 = metadata !{i32 154, i32 0, metadata !46, null}
!687 = metadata !{i32 156, i32 0, metadata !46, null}
!688 = metadata !{i32 157, i32 0, metadata !689, null}
!689 = metadata !{i32 786443, metadata !1, metadata !46, i32 156, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!690 = metadata !{i32 161, i32 0, metadata !689, null}
!691 = metadata !{i32 168, i32 0, metadata !46, null}
!692 = metadata !{i32 1}
!693 = metadata !{i32 169, i32 0, metadata !694, null}
!694 = metadata !{i32 786443, metadata !1, metadata !46, i32 169, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!695 = metadata !{i32 170, i32 0, metadata !696, null}
!696 = metadata !{i32 786443, metadata !1, metadata !694, i32 169, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!697 = metadata !{i32 171, i32 0, metadata !696, null}
!698 = metadata !{i32 172, i32 0, metadata !696, null}
!699 = metadata !{i32 174, i32 0, metadata !46, null}
!700 = metadata !{i32 175, i32 0, metadata !46, null}
!701 = metadata !{i32 186, i32 0, metadata !46, null}
!702 = metadata !{i32 187, i32 0, metadata !46, null}
!703 = metadata !{i32 188, i32 0, metadata !46, null}
!704 = metadata !{i32 189, i32 0, metadata !46, null}
!705 = metadata !{double 0.000000e+00}
!706 = metadata !{i32 190, i32 0, metadata !46, null}
!707 = metadata !{i32 191, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !46, i32 191, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!709 = metadata !{i32 192, i32 0, metadata !710, null}
!710 = metadata !{i32 786443, metadata !1, metadata !708, i32 191, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!711 = metadata !{i32 196, i32 0, metadata !710, null}
!712 = metadata !{i32 200, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !710, i32 196, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!714 = metadata !{i32 201, i32 0, metadata !713, null}
!715 = metadata !{i32 202, i32 0, metadata !713, null}
!716 = metadata !{i32 203, i32 0, metadata !713, null}
!717 = metadata !{i32 204, i32 0, metadata !713, null}
!718 = metadata !{i32 206, i32 0, metadata !46, null}
!719 = metadata !{i32 207, i32 0, metadata !46, null}
!720 = metadata !{i32 208, i32 0, metadata !46, null}
!721 = metadata !{i32 786689, metadata !162, metadata !"y", metadata !5, i32 16777563, metadata !9, i32 0, metadata !722} ; [ DW_TAG_arg_variable ] [y] [line 347]
!722 = metadata !{i32 214, i32 0, metadata !46, null}
!723 = metadata !{i32 347, i32 0, metadata !162, metadata !722}
!724 = metadata !{i32 349, i32 0, metadata !162, metadata !722}
!725 = metadata !{i32 350, i32 0, metadata !726, metadata !722}
!726 = metadata !{i32 786443, metadata !1, metadata !727, i32 350, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!727 = metadata !{i32 786443, metadata !1, metadata !162, i32 349, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!728 = metadata !{double* null}
!729 = metadata !{i32 216, i32 0, metadata !46, null}
!730 = metadata !{i32 491, i32 0, metadata !207, null}
!731 = metadata !{i32 492, i32 0, metadata !207, null}
!732 = metadata !{i32 494, i32 0, metadata !207, null}
!733 = metadata !{i32 495, i32 0, metadata !207, null}
!734 = metadata !{i32 496, i32 0, metadata !735, null}
!735 = metadata !{i32 786443, metadata !1, metadata !207, i32 495, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!736 = metadata !{i32 497, i32 0, metadata !735, null}
!737 = metadata !{i32 498, i32 0, metadata !735, null}
!738 = metadata !{i32 499, i32 0, metadata !207, null}
!739 = metadata !{i32 969, i32 0, metadata !350, null}
!740 = metadata !{i32 970, i32 0, metadata !350, null}
!741 = metadata !{i32 972, i32 0, metadata !350, null}
!742 = metadata !{i32 973, i32 0, metadata !350, null}
!743 = metadata !{i32 974, i32 0, metadata !359, null}
!744 = metadata !{i32 975, i32 0, metadata !745, null}
!745 = metadata !{i32 786443, metadata !1, metadata !359, i32 974, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!746 = metadata !{i32 977, i32 0, metadata !745, null}
!747 = metadata !{i32 981, i32 0, metadata !748, null}
!748 = metadata !{i32 786443, metadata !1, metadata !749, i32 980, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!749 = metadata !{i32 786443, metadata !1, metadata !358, i32 980, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!750 = metadata !{i32 980, i32 0, metadata !749, null}
!751 = metadata !{i32 985, i32 0, metadata !350, null}
!752 = metadata !{i32 347, i32 0, metadata !162, null}
!753 = metadata !{i32 349, i32 0, metadata !162, null}
!754 = metadata !{i32 350, i32 0, metadata !726, null}
!755 = metadata !{i32 352, i32 0, metadata !162, null}
!756 = metadata !{i32 228, i32 0, metadata !64, null}
!757 = metadata !{i32 229, i32 0, metadata !64, null}
!758 = metadata !{i32 230, i32 0, metadata !64, null}
!759 = metadata !{i32 232, i32 0, metadata !64, null}
!760 = metadata !{i32 233, i32 0, metadata !64, null}
!761 = metadata !{i32 234, i32 0, metadata !74, null}
!762 = metadata !{i32 235, i32 0, metadata !763, null}
!763 = metadata !{i32 786443, metadata !1, metadata !74, i32 234, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!764 = metadata !{i32 237, i32 0, metadata !763, null}
!765 = metadata !{i32 241, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !767, i32 240, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!767 = metadata !{i32 786443, metadata !1, metadata !73, i32 240, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!768 = metadata !{i32 240, i32 0, metadata !767, null}
!769 = metadata !{i32 245, i32 0, metadata !64, null}
!770 = metadata !{i32 261, i32 0, metadata !75, null}
!771 = metadata !{i32 262, i32 0, metadata !75, null}
!772 = metadata !{i32 263, i32 0, metadata !75, null}
!773 = metadata !{i32 264, i32 0, metadata !75, null}
!774 = metadata !{i32 269, i32 0, metadata !75, null}
!775 = metadata !{i32 274, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !75, i32 274, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!777 = metadata !{i32 270, i32 0, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !75, i32 269, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!779 = metadata !{i32 272, i32 0, metadata !778, null}
!780 = metadata !{i32 275, i32 0, metadata !781, null}
!781 = metadata !{i32 786443, metadata !1, metadata !776, i32 274, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!782 = metadata !{i32 277, i32 0, metadata !75, null}
!783 = metadata !{i32 289, i32 0, metadata !85, null}
!784 = metadata !{i32 290, i32 0, metadata !85, null}
!785 = metadata !{i32 291, i32 0, metadata !85, null}
!786 = metadata !{i32 293, i32 0, metadata !85, null}
!787 = metadata !{i32 294, i32 0, metadata !94, null}
!788 = metadata !{i32 295, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !94, i32 294, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!790 = metadata !{i32 297, i32 0, metadata !789, null}
!791 = metadata !{i32 301, i32 0, metadata !792, null}
!792 = metadata !{i32 786443, metadata !1, metadata !793, i32 300, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!793 = metadata !{i32 786443, metadata !1, metadata !93, i32 300, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!794 = metadata !{i32 300, i32 0, metadata !793, null}
!795 = metadata !{i32 305, i32 0, metadata !85, null}
!796 = metadata !{i32 317, i32 0, metadata !95, null}
!797 = metadata !{i32 318, i32 0, metadata !95, null}
!798 = metadata !{i32 319, i32 0, metadata !95, null}
!799 = metadata !{i32 321, i32 0, metadata !95, null}
!800 = metadata !{i32 322, i32 0, metadata !161, null}
!801 = metadata !{i32 323, i32 0, metadata !802, null}
!802 = metadata !{i32 786443, metadata !1, metadata !161, i32 322, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!803 = metadata !{i32 325, i32 0, metadata !802, null}
!804 = metadata !{i32 329, i32 0, metadata !805, null}
!805 = metadata !{i32 786443, metadata !1, metadata !806, i32 328, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!806 = metadata !{i32 786443, metadata !1, metadata !160, i32 328, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!807 = metadata !{i32 330, i32 0, metadata !805, null}
!808 = metadata !{i32 328, i32 0, metadata !806, null}
!809 = metadata !{i32 334, i32 0, metadata !95, null}
!810 = metadata !{i32 365, i32 0, metadata !167, null}
!811 = metadata !{i32 366, i32 0, metadata !167, null}
!812 = metadata !{i32 367, i32 0, metadata !167, null}
!813 = metadata !{i32 369, i32 0, metadata !167, null}
!814 = metadata !{i32 370, i32 0, metadata !167, null}
!815 = metadata !{i32 371, i32 0, metadata !816, null}
!816 = metadata !{i32 786443, metadata !1, metadata !167, i32 370, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!817 = metadata !{i32 372, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !816, i32 371, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!819 = metadata !{i32 374, i32 0, metadata !818, null}
!820 = metadata !{i32 376, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !816, i32 376, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!822 = metadata !{i32 377, i32 0, metadata !823, null}
!823 = metadata !{i32 786443, metadata !1, metadata !821, i32 376, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!824 = metadata !{i32 382, i32 0, metadata !167, null}
!825 = metadata !{i32 394, i32 0, metadata !176, null}
!826 = metadata !{i32 395, i32 0, metadata !176, null}
!827 = metadata !{i32 396, i32 0, metadata !176, null}
!828 = metadata !{i32 397, i32 0, metadata !176, null}
!829 = metadata !{i32 399, i32 0, metadata !176, null}
!830 = metadata !{i32 400, i32 0, metadata !186, null}
!831 = metadata !{i32 401, i32 0, metadata !832, null}
!832 = metadata !{i32 786443, metadata !1, metadata !186, i32 400, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!833 = metadata !{i32 404, i32 0, metadata !832, null}
!834 = metadata !{i32 408, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !1, metadata !836, i32 407, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!836 = metadata !{i32 786443, metadata !1, metadata !185, i32 407, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!837 = metadata !{i32 407, i32 0, metadata !836, null}
!838 = metadata !{i32 412, i32 0, metadata !176, null}
!839 = metadata !{i32 424, i32 0, metadata !187, null}
!840 = metadata !{i32 425, i32 0, metadata !187, null}
!841 = metadata !{i32 426, i32 0, metadata !187, null}
!842 = metadata !{i32 427, i32 0, metadata !187, null}
!843 = metadata !{i32 429, i32 0, metadata !187, null}
!844 = metadata !{i32 430, i32 0, metadata !195, null}
!845 = metadata !{i32 431, i32 0, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !195, i32 430, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!847 = metadata !{i32 434, i32 0, metadata !846, null}
!848 = metadata !{i32 438, i32 0, metadata !849, null}
!849 = metadata !{i32 786443, metadata !1, metadata !850, i32 437, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!850 = metadata !{i32 786443, metadata !1, metadata !194, i32 437, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!851 = metadata !{i32 439, i32 0, metadata !849, null}
!852 = metadata !{i32 440, i32 0, metadata !849, null}
!853 = metadata !{i32 437, i32 0, metadata !850, null}
!854 = metadata !{i32 444, i32 0, metadata !187, null}
!855 = metadata !{i32 456, i32 0, metadata !197, null}
!856 = metadata !{i32 457, i32 0, metadata !197, null}
!857 = metadata !{i32 458, i32 0, metadata !197, null}
!858 = metadata !{i32 459, i32 0, metadata !197, null}
!859 = metadata !{i32 461, i32 0, metadata !197, null}
!860 = metadata !{i32 462, i32 0, metadata !205, null}
!861 = metadata !{i32 463, i32 0, metadata !862, null}
!862 = metadata !{i32 786443, metadata !1, metadata !205, i32 462, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!863 = metadata !{i32 466, i32 0, metadata !862, null}
!864 = metadata !{i32 470, i32 0, metadata !865, null}
!865 = metadata !{i32 786443, metadata !1, metadata !866, i32 469, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!866 = metadata !{i32 786443, metadata !1, metadata !204, i32 469, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!867 = metadata !{i32 471, i32 0, metadata !865, null}
!868 = metadata !{i32 472, i32 0, metadata !865, null}
!869 = metadata !{i32 469, i32 0, metadata !866, null}
!870 = metadata !{i32 476, i32 0, metadata !197, null}
!871 = metadata !{i32 513, i32 0, metadata !214, null}
!872 = metadata !{i32 515, i32 0, metadata !214, null}
!873 = metadata !{i32 516, i32 0, metadata !214, null}
!874 = metadata !{i32 517, i32 0, metadata !875, null}
!875 = metadata !{i32 786443, metadata !1, metadata !876, i32 517, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!876 = metadata !{i32 786443, metadata !1, metadata !214, i32 516, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!877 = metadata !{i32 517, i32 0, metadata !878, null}
!878 = metadata !{i32 786443, metadata !1, metadata !875, i32 517, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!879 = metadata !{i32 519, i32 0, metadata !214, null}
!880 = metadata !{i32 532, i32 0, metadata !220, null}
!881 = metadata !{i32 533, i32 0, metadata !220, null}
!882 = metadata !{i32 534, i32 0, metadata !220, null}
!883 = metadata !{i32 536, i32 0, metadata !220, null}
!884 = metadata !{i32 537, i32 0, metadata !229, null}
!885 = metadata !{i32 538, i32 0, metadata !886, null}
!886 = metadata !{i32 786443, metadata !1, metadata !229, i32 537, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!887 = metadata !{i32 540, i32 0, metadata !886, null}
!888 = metadata !{i32 544, i32 0, metadata !228, null}
!889 = metadata !{i32 545, i32 0, metadata !228, null}
!890 = metadata !{i32 546, i32 0, metadata !891, null}
!891 = metadata !{i32 786443, metadata !1, metadata !228, i32 546, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!892 = metadata !{i32 547, i32 0, metadata !893, null}
!893 = metadata !{i32 786443, metadata !1, metadata !891, i32 546, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!894 = metadata !{i32 786689, metadata !162, metadata !"y", metadata !5, i32 16777563, metadata !9, i32 0, metadata !895} ; [ DW_TAG_arg_variable ] [y] [line 347]
!895 = metadata !{i32 549, i32 0, metadata !228, null}
!896 = metadata !{i32 347, i32 0, metadata !162, metadata !895}
!897 = metadata !{i32 350, i32 0, metadata !726, metadata !895}
!898 = metadata !{i32 552, i32 0, metadata !220, null}
!899 = metadata !{i32 565, i32 0, metadata !231, null}
!900 = metadata !{i32 566, i32 0, metadata !231, null}
!901 = metadata !{i32 567, i32 0, metadata !231, null}
!902 = metadata !{i32 569, i32 0, metadata !231, null}
!903 = metadata !{i32 -1}
!904 = metadata !{i32 570, i32 0, metadata !231, null}
!905 = metadata !{i32 571, i32 0, metadata !231, null}
!906 = metadata !{i32 572, i32 0, metadata !242, null}
!907 = metadata !{i32 573, i32 0, metadata !908, null}
!908 = metadata !{i32 786443, metadata !1, metadata !242, i32 572, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!909 = metadata !{i32 575, i32 0, metadata !908, null}
!910 = metadata !{i32 578, i32 0, metadata !241, null}
!911 = metadata !{i32 579, i32 0, metadata !241, null}
!912 = metadata !{i32 580, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !1, metadata !241, i32 580, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!914 = metadata !{i32 581, i32 0, metadata !915, null}
!915 = metadata !{i32 786443, metadata !1, metadata !913, i32 580, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!916 = metadata !{i32 582, i32 0, metadata !917, null}
!917 = metadata !{i32 786443, metadata !1, metadata !915, i32 581, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!918 = metadata !{i32 undef}
!919 = metadata !{i32 583, i32 0, metadata !917, null}
!920 = metadata !{i32 586, i32 0, metadata !241, null}
!921 = metadata !{i32 588, i32 0, metadata !242, null}
!922 = metadata !{i32 589, i32 0, metadata !231, null}
!923 = metadata !{i32 591, i32 0, metadata !231, null}
!924 = metadata !{i32 604, i32 0, metadata !243, null}
!925 = metadata !{i32 605, i32 0, metadata !243, null}
!926 = metadata !{i32 606, i32 0, metadata !243, null}
!927 = metadata !{i32 608, i32 0, metadata !243, null}
!928 = metadata !{i32 609, i32 0, metadata !243, null}
!929 = metadata !{i32 611, i32 0, metadata !243, null}
!930 = metadata !{i32 612, i32 0, metadata !252, null}
!931 = metadata !{i32 613, i32 0, metadata !932, null}
!932 = metadata !{i32 786443, metadata !1, metadata !252, i32 612, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!933 = metadata !{i32 615, i32 0, metadata !932, null}
!934 = metadata !{i32 619, i32 0, metadata !251, null}
!935 = metadata !{i32 621, i32 0, metadata !936, null}
!936 = metadata !{i32 786443, metadata !1, metadata !251, i32 621, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!937 = metadata !{i32 622, i32 0, metadata !938, null}
!938 = metadata !{i32 786443, metadata !1, metadata !936, i32 621, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!939 = metadata !{i32 623, i32 0, metadata !938, null}
!940 = metadata !{i32 624, i32 0, metadata !941, null}
!941 = metadata !{i32 786443, metadata !1, metadata !938, i32 623, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!942 = metadata !{i32 625, i32 0, metadata !941, null}
!943 = metadata !{i32 628, i32 0, metadata !251, null}
!944 = metadata !{i32 630, i32 0, metadata !252, null}
!945 = metadata !{i32 631, i32 0, metadata !243, null}
!946 = metadata !{i32 633, i32 0, metadata !243, null}
!947 = metadata !{i32 646, i32 0, metadata !254, null}
!948 = metadata !{i32 647, i32 0, metadata !254, null}
!949 = metadata !{i32 648, i32 0, metadata !254, null}
!950 = metadata !{i32 650, i32 0, metadata !254, null}
!951 = metadata !{i32 651, i32 0, metadata !254, null}
!952 = metadata !{i32 652, i32 0, metadata !254, null}
!953 = metadata !{i32 653, i32 0, metadata !263, null}
!954 = metadata !{i32 654, i32 0, metadata !955, null}
!955 = metadata !{i32 786443, metadata !1, metadata !263, i32 653, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!956 = metadata !{i32 656, i32 0, metadata !955, null}
!957 = metadata !{i32 659, i32 0, metadata !262, null}
!958 = metadata !{i32 660, i32 0, metadata !262, null}
!959 = metadata !{i32 661, i32 0, metadata !960, null}
!960 = metadata !{i32 786443, metadata !1, metadata !262, i32 661, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!961 = metadata !{i32 662, i32 0, metadata !962, null}
!962 = metadata !{i32 786443, metadata !1, metadata !960, i32 661, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!963 = metadata !{i32 663, i32 0, metadata !964, null}
!964 = metadata !{i32 786443, metadata !1, metadata !962, i32 662, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!965 = metadata !{i32 664, i32 0, metadata !964, null}
!966 = metadata !{i32 667, i32 0, metadata !262, null}
!967 = metadata !{i32 669, i32 0, metadata !263, null}
!968 = metadata !{i32 670, i32 0, metadata !254, null}
!969 = metadata !{i32 672, i32 0, metadata !254, null}
!970 = metadata !{i32 685, i32 0, metadata !264, null}
!971 = metadata !{i32 686, i32 0, metadata !264, null}
!972 = metadata !{i32 687, i32 0, metadata !264, null}
!973 = metadata !{i32 689, i32 0, metadata !264, null}
!974 = metadata !{i32 690, i32 0, metadata !264, null}
!975 = metadata !{i32 692, i32 0, metadata !264, null}
!976 = metadata !{i32 693, i32 0, metadata !273, null}
!977 = metadata !{i32 694, i32 0, metadata !978, null}
!978 = metadata !{i32 786443, metadata !1, metadata !273, i32 693, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!979 = metadata !{i32 696, i32 0, metadata !978, null}
!980 = metadata !{i32 700, i32 0, metadata !272, null}
!981 = metadata !{i32 702, i32 0, metadata !982, null}
!982 = metadata !{i32 786443, metadata !1, metadata !272, i32 702, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!983 = metadata !{i32 703, i32 0, metadata !984, null}
!984 = metadata !{i32 786443, metadata !1, metadata !982, i32 702, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!985 = metadata !{i32 704, i32 0, metadata !984, null}
!986 = metadata !{i32 705, i32 0, metadata !987, null}
!987 = metadata !{i32 786443, metadata !1, metadata !984, i32 704, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!988 = metadata !{i32 706, i32 0, metadata !987, null}
!989 = metadata !{i32 709, i32 0, metadata !272, null}
!990 = metadata !{i32 711, i32 0, metadata !273, null}
!991 = metadata !{i32 712, i32 0, metadata !264, null}
!992 = metadata !{i32 714, i32 0, metadata !264, null}
!993 = metadata !{i32 727, i32 0, metadata !275, null}
!994 = metadata !{i32 728, i32 0, metadata !275, null}
!995 = metadata !{i32 729, i32 0, metadata !275, null}
!996 = metadata !{i32 731, i32 0, metadata !275, null}
!997 = metadata !{i32 732, i32 0, metadata !282, null}
!998 = metadata !{i32 733, i32 0, metadata !999, null}
!999 = metadata !{i32 786443, metadata !1, metadata !282, i32 732, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1000 = metadata !{i32 735, i32 0, metadata !999, null}
!1001 = metadata !{i32 739, i32 0, metadata !281, null}
!1002 = metadata !{i32 740, i32 0, metadata !281, null}
!1003 = metadata !{i32 741, i32 0, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !1, metadata !281, i32 741, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1005 = metadata !{i32 742, i32 0, metadata !1006, null}
!1006 = metadata !{i32 786443, metadata !1, metadata !1004, i32 741, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1007 = metadata !{i32 786689, metadata !162, metadata !"y", metadata !5, i32 16777563, metadata !9, i32 0, metadata !1008} ; [ DW_TAG_arg_variable ] [y] [line 347]
!1008 = metadata !{i32 744, i32 0, metadata !281, null}
!1009 = metadata !{i32 347, i32 0, metadata !162, metadata !1008}
!1010 = metadata !{i32 350, i32 0, metadata !726, metadata !1008}
!1011 = metadata !{i32 747, i32 0, metadata !275, null}
!1012 = metadata !{i32 759, i32 0, metadata !284, null}
!1013 = metadata !{i32 760, i32 0, metadata !284, null}
!1014 = metadata !{i32 761, i32 0, metadata !284, null}
!1015 = metadata !{i32 762, i32 0, metadata !284, null}
!1016 = metadata !{i32 764, i32 0, metadata !284, null}
!1017 = metadata !{i32 765, i32 0, metadata !294, null}
!1018 = metadata !{i32 766, i32 0, metadata !1019, null}
!1019 = metadata !{i32 786443, metadata !1, metadata !294, i32 765, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1020 = metadata !{i32 769, i32 0, metadata !1019, null}
!1021 = metadata !{i32 774, i32 0, metadata !1022, null}
!1022 = metadata !{i32 786443, metadata !1, metadata !1023, i32 773, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1023 = metadata !{i32 786443, metadata !1, metadata !293, i32 773, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1024 = metadata !{i32 773, i32 0, metadata !1023, null}
!1025 = metadata !{i32 778, i32 0, metadata !284, null}
!1026 = metadata !{i32 790, i32 0, metadata !296, null}
!1027 = metadata !{i32 791, i32 0, metadata !296, null}
!1028 = metadata !{i32 792, i32 0, metadata !296, null}
!1029 = metadata !{i32 794, i32 0, metadata !296, null}
!1030 = metadata !{i32 795, i32 0, metadata !303, null}
!1031 = metadata !{i32 796, i32 0, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !1, metadata !303, i32 795, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1033 = metadata !{i32 798, i32 0, metadata !1032, null}
!1034 = metadata !{i32 802, i32 0, metadata !1035, null}
!1035 = metadata !{i32 786443, metadata !1, metadata !1036, i32 801, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1036 = metadata !{i32 786443, metadata !1, metadata !302, i32 801, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1037 = metadata !{i32 801, i32 0, metadata !1036, null}
!1038 = metadata !{i32 806, i32 0, metadata !296, null}
!1039 = metadata !{i32 818, i32 0, metadata !304, null}
!1040 = metadata !{i32 819, i32 0, metadata !304, null}
!1041 = metadata !{i32 820, i32 0, metadata !304, null}
!1042 = metadata !{i32 822, i32 0, metadata !304, null}
!1043 = metadata !{i32 823, i32 0, metadata !311, null}
!1044 = metadata !{i32 824, i32 0, metadata !1045, null}
!1045 = metadata !{i32 786443, metadata !1, metadata !311, i32 823, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1046 = metadata !{i32 827, i32 0, metadata !1045, null}
!1047 = metadata !{i32 831, i32 0, metadata !1048, null}
!1048 = metadata !{i32 786443, metadata !1, metadata !1049, i32 830, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1049 = metadata !{i32 786443, metadata !1, metadata !310, i32 830, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1050 = metadata !{i32 830, i32 0, metadata !1049, null}
!1051 = metadata !{i32 835, i32 0, metadata !304, null}
!1052 = metadata !{i32 847, i32 0, metadata !312, null}
!1053 = metadata !{i32 848, i32 0, metadata !312, null}
!1054 = metadata !{i32 849, i32 0, metadata !312, null}
!1055 = metadata !{i32 850, i32 0, metadata !312, null}
!1056 = metadata !{i32 852, i32 0, metadata !312, null}
!1057 = metadata !{i32 853, i32 0, metadata !322, null}
!1058 = metadata !{i32 854, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !322, i32 853, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1060 = metadata !{i32 857, i32 0, metadata !1059, null}
!1061 = metadata !{i32 861, i32 0, metadata !1062, null}
!1062 = metadata !{i32 786443, metadata !1, metadata !1063, i32 860, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1063 = metadata !{i32 786443, metadata !1, metadata !321, i32 860, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1064 = metadata !{i32 860, i32 0, metadata !1063, null}
!1065 = metadata !{i32 865, i32 0, metadata !312, null}
!1066 = metadata !{i32 877, i32 0, metadata !323, null}
!1067 = metadata !{i32 878, i32 0, metadata !323, null}
!1068 = metadata !{i32 879, i32 0, metadata !323, null}
!1069 = metadata !{i32 880, i32 0, metadata !323, null}
!1070 = metadata !{i32 882, i32 0, metadata !323, null}
!1071 = metadata !{i32 883, i32 0, metadata !331, null}
!1072 = metadata !{i32 884, i32 0, metadata !1073, null}
!1073 = metadata !{i32 786443, metadata !1, metadata !331, i32 883, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1074 = metadata !{i32 887, i32 0, metadata !1073, null}
!1075 = metadata !{i32 891, i32 0, metadata !1076, null}
!1076 = metadata !{i32 786443, metadata !1, metadata !1077, i32 890, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1077 = metadata !{i32 786443, metadata !1, metadata !330, i32 890, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1078 = metadata !{i32 890, i32 0, metadata !1077, null}
!1079 = metadata !{i32 895, i32 0, metadata !323, null}
!1080 = metadata !{i32 907, i32 0, metadata !332, null}
!1081 = metadata !{i32 908, i32 0, metadata !332, null}
!1082 = metadata !{i32 909, i32 0, metadata !332, null}
!1083 = metadata !{i32 910, i32 0, metadata !332, null}
!1084 = metadata !{i32 912, i32 0, metadata !332, null}
!1085 = metadata !{i32 913, i32 0, metadata !340, null}
!1086 = metadata !{i32 914, i32 0, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !1, metadata !340, i32 913, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1088 = metadata !{i32 917, i32 0, metadata !1087, null}
!1089 = metadata !{i32 921, i32 0, metadata !1090, null}
!1090 = metadata !{i32 786443, metadata !1, metadata !1091, i32 920, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1091 = metadata !{i32 786443, metadata !1, metadata !339, i32 920, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1092 = metadata !{i32 922, i32 0, metadata !1090, null}
!1093 = metadata !{i32 920, i32 0, metadata !1091, null}
!1094 = metadata !{i32 926, i32 0, metadata !332, null}
!1095 = metadata !{i32 938, i32 0, metadata !341, null}
!1096 = metadata !{i32 939, i32 0, metadata !341, null}
!1097 = metadata !{i32 940, i32 0, metadata !341, null}
!1098 = metadata !{i32 941, i32 0, metadata !341, null}
!1099 = metadata !{i32 943, i32 0, metadata !341, null}
!1100 = metadata !{i32 944, i32 0, metadata !349, null}
!1101 = metadata !{i32 945, i32 0, metadata !1102, null}
!1102 = metadata !{i32 786443, metadata !1, metadata !349, i32 944, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1103 = metadata !{i32 948, i32 0, metadata !1102, null}
!1104 = metadata !{i32 952, i32 0, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !1, metadata !1106, i32 951, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1106 = metadata !{i32 786443, metadata !1, metadata !348, i32 951, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1107 = metadata !{i32 953, i32 0, metadata !1105, null}
!1108 = metadata !{i32 951, i32 0, metadata !1106, null}
!1109 = metadata !{i32 957, i32 0, metadata !341, null}
!1110 = metadata !{i32 998, i32 0, metadata !360, null}
!1111 = metadata !{i32 999, i32 0, metadata !360, null}
!1112 = metadata !{i32 1001, i32 0, metadata !360, null}
!1113 = metadata !{i32 1002, i32 0, metadata !360, null}
!1114 = metadata !{i32 1003, i32 0, metadata !367, null}
!1115 = metadata !{i32 1004, i32 0, metadata !1116, null}
!1116 = metadata !{i32 786443, metadata !1, metadata !367, i32 1003, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1117 = metadata !{i32 1006, i32 0, metadata !1116, null}
!1118 = metadata !{i32 1010, i32 0, metadata !1119, null}
!1119 = metadata !{i32 786443, metadata !1, metadata !1120, i32 1009, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1120 = metadata !{i32 786443, metadata !1, metadata !366, i32 1009, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1121 = metadata !{i32 1009, i32 0, metadata !1120, null}
!1122 = metadata !{i32 1014, i32 0, metadata !360, null}
!1123 = metadata !{i32 1026, i32 0, metadata !368, null}
!1124 = metadata !{i32 1027, i32 0, metadata !368, null}
!1125 = metadata !{i32 1028, i32 0, metadata !368, null}
!1126 = metadata !{i32 1030, i32 0, metadata !368, null}
!1127 = metadata !{i32 1031, i32 0, metadata !375, null}
!1128 = metadata !{i32 1032, i32 0, metadata !1129, null}
!1129 = metadata !{i32 786443, metadata !1, metadata !375, i32 1031, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1130 = metadata !{i32 1034, i32 0, metadata !1129, null}
!1131 = metadata !{i32 1039, i32 0, metadata !1132, null}
!1132 = metadata !{i32 786443, metadata !1, metadata !1133, i32 1038, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1133 = metadata !{i32 786443, metadata !1, metadata !374, i32 1038, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1134 = metadata !{i32 1040, i32 0, metadata !1132, null}
!1135 = metadata !{i32 1041, i32 0, metadata !1132, null}
!1136 = metadata !{i32 1038, i32 0, metadata !1133, null}
!1137 = metadata !{i32 1045, i32 0, metadata !368, null}
!1138 = metadata !{i32 1057, i32 0, metadata !377, null}
!1139 = metadata !{i32 1058, i32 0, metadata !377, null}
!1140 = metadata !{i32 1060, i32 0, metadata !377, null}
!1141 = metadata !{i32 1061, i32 0, metadata !385, null}
!1142 = metadata !{i32 1062, i32 0, metadata !1143, null}
!1143 = metadata !{i32 786443, metadata !1, metadata !385, i32 1061, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1144 = metadata !{i32 1064, i32 0, metadata !1143, null}
!1145 = metadata !{i32 1067, i32 0, metadata !1146, null}
!1146 = metadata !{i32 786443, metadata !1, metadata !384, i32 1067, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1147 = metadata !{i32 1068, i32 0, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !1, metadata !1146, i32 1067, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1149 = metadata !{i32 1072, i32 0, metadata !377, null}
!1150 = metadata !{i32 1092, i32 0, metadata !386, null}
!1151 = metadata !{i32 1093, i32 0, metadata !386, null}
!1152 = metadata !{i32 1094, i32 0, metadata !386, null}
!1153 = metadata !{i32 1096, i32 0, metadata !386, null}
!1154 = metadata !{i32 1097, i32 0, metadata !395, null}
!1155 = metadata !{i32 1098, i32 0, metadata !1156, null}
!1156 = metadata !{i32 786443, metadata !1, metadata !395, i32 1097, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1157 = metadata !{i32 1100, i32 0, metadata !1156, null}
!1158 = metadata !{i32 1102, i32 0, metadata !394, null}
!1159 = metadata !{i32 1106, i32 0, metadata !394, null}
!1160 = metadata !{i32 1107, i32 0, metadata !394, null}
!1161 = metadata !{i32 1108, i32 0, metadata !1162, null}
!1162 = metadata !{i32 786443, metadata !1, metadata !394, i32 1108, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1163 = metadata !{i32 1109, i32 0, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !1, metadata !1162, i32 1108, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1165 = metadata !{i32 1110, i32 0, metadata !1164, null}
!1166 = metadata !{i32 1111, i32 0, metadata !1164, null}
!1167 = metadata !{i32 1112, i32 0, metadata !1164, null}
!1168 = metadata !{i32 1116, i32 0, metadata !386, null}
!1169 = metadata !{i32 1131, i32 0, metadata !412, null}
!1170 = metadata !{i32 1132, i32 0, metadata !412, null}
!1171 = metadata !{i32 1133, i32 0, metadata !412, null}
!1172 = metadata !{i32 1134, i32 0, metadata !412, null}
!1173 = metadata !{i32 1135, i32 0, metadata !412, null}
!1174 = metadata !{i32 1136, i32 0, metadata !412, null}
!1175 = metadata !{i32 1137, i32 0, metadata !412, null}
!1176 = metadata !{i32 1142, i32 0, metadata !412, null}
!1177 = metadata !{i32 1147, i32 0, metadata !1178, null}
!1178 = metadata !{i32 786443, metadata !1, metadata !412, i32 1147, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1179 = metadata !{i32 1143, i32 0, metadata !1180, null}
!1180 = metadata !{i32 786443, metadata !1, metadata !412, i32 1142, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1181 = metadata !{i32 1145, i32 0, metadata !1180, null}
!1182 = metadata !{i32 1148, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !1178, i32 1147, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1184 = metadata !{i32 1149, i32 0, metadata !1183, null}
!1185 = metadata !{i32 1150, i32 0, metadata !1183, null}
!1186 = metadata !{i32 1151, i32 0, metadata !1183, null}
!1187 = metadata !{i32 1153, i32 0, metadata !412, null}
!1188 = metadata !{i32 1169, i32 0, metadata !426, null}
!1189 = metadata !{i32 1170, i32 0, metadata !426, null}
!1190 = metadata !{i32 1171, i32 0, metadata !426, null}
!1191 = metadata !{i32 1172, i32 0, metadata !426, null}
!1192 = metadata !{i32 1173, i32 0, metadata !426, null}
!1193 = metadata !{i32 1174, i32 0, metadata !426, null}
!1194 = metadata !{i32 1179, i32 0, metadata !426, null}
!1195 = metadata !{i32 1184, i32 0, metadata !1196, null}
!1196 = metadata !{i32 786443, metadata !1, metadata !426, i32 1184, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1197 = metadata !{i32 1180, i32 0, metadata !1198, null}
!1198 = metadata !{i32 786443, metadata !1, metadata !426, i32 1179, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1199 = metadata !{i32 1182, i32 0, metadata !1198, null}
!1200 = metadata !{i32 1185, i32 0, metadata !1201, null}
!1201 = metadata !{i32 786443, metadata !1, metadata !1196, i32 1184, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1202 = metadata !{i32 1186, i32 0, metadata !1201, null}
!1203 = metadata !{i32 1187, i32 0, metadata !1201, null}
!1204 = metadata !{i32 1189, i32 0, metadata !426, null}
!1205 = metadata !{i32 1211, i32 0, metadata !439, null}
!1206 = metadata !{i32 1212, i32 0, metadata !439, null}
!1207 = metadata !{i32 1213, i32 0, metadata !439, null}
!1208 = metadata !{i32 1214, i32 0, metadata !439, null}
!1209 = metadata !{i32 1215, i32 0, metadata !439, null}
!1210 = metadata !{i32 1216, i32 0, metadata !439, null}
!1211 = metadata !{i32 1217, i32 0, metadata !439, null}
!1212 = metadata !{i32 1218, i32 0, metadata !439, null}
!1213 = metadata !{i32 1227, i32 0, metadata !439, null}
!1214 = metadata !{i32 1241, i32 0, metadata !463, null}
!1215 = metadata !{i32 1230, i32 0, metadata !1216, null}
!1216 = metadata !{i32 786443, metadata !1, metadata !439, i32 1229, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1217 = metadata !{i32 1233, i32 0, metadata !1216, null}
!1218 = metadata !{i32 1244, i32 0, metadata !462, null}
!1219 = metadata !{i32 1245, i32 0, metadata !462, null}
!1220 = metadata !{i32 1246, i32 0, metadata !462, null}
!1221 = metadata !{i32 1247, i32 0, metadata !462, null}
!1222 = metadata !{i32 1248, i32 0, metadata !462, null}
!1223 = metadata !{i32 1255, i32 0, metadata !439, null}
!1224 = metadata !{i32 1256, i32 0, metadata !439, null}
!1225 = metadata !{i32 1257, i32 0, metadata !439, null}
!1226 = metadata !{i32 1259, i32 0, metadata !439, null}
!1227 = metadata !{i32 1278, i32 0, metadata !469, null}
!1228 = metadata !{i32 1279, i32 0, metadata !469, null}
!1229 = metadata !{i32 1280, i32 0, metadata !469, null}
!1230 = metadata !{i32 1281, i32 0, metadata !469, null}
!1231 = metadata !{i32 1282, i32 0, metadata !469, null}
!1232 = metadata !{i32 1283, i32 0, metadata !469, null}
!1233 = metadata !{i32 1284, i32 0, metadata !469, null}
!1234 = metadata !{i32 1293, i32 0, metadata !469, null}
!1235 = metadata !{i32 1307, i32 0, metadata !489, null}
!1236 = metadata !{i32 1296, i32 0, metadata !1237, null}
!1237 = metadata !{i32 786443, metadata !1, metadata !469, i32 1295, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1238 = metadata !{i32 1299, i32 0, metadata !1237, null}
!1239 = metadata !{i32 1310, i32 0, metadata !488, null}
!1240 = metadata !{i32 1311, i32 0, metadata !488, null}
!1241 = metadata !{i32 1312, i32 0, metadata !488, null}
!1242 = metadata !{i32 1313, i32 0, metadata !488, null}
!1243 = metadata !{i32 1320, i32 0, metadata !469, null}
!1244 = metadata !{i32 1321, i32 0, metadata !469, null}
!1245 = metadata !{i32 1323, i32 0, metadata !469, null}
!1246 = metadata !{i32 1339, i32 0, metadata !494, null}
!1247 = metadata !{i32 1340, i32 0, metadata !494, null}
!1248 = metadata !{i32 1341, i32 0, metadata !494, null}
!1249 = metadata !{i32 1342, i32 0, metadata !494, null}
!1250 = metadata !{i32 1343, i32 0, metadata !494, null}
!1251 = metadata !{i32 1344, i32 0, metadata !494, null}
!1252 = metadata !{i32 1353, i32 0, metadata !494, null}
!1253 = metadata !{i32 1367, i32 0, metadata !510, null}
!1254 = metadata !{i32 1356, i32 0, metadata !1255, null}
!1255 = metadata !{i32 786443, metadata !1, metadata !494, i32 1355, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1256 = metadata !{i32 1359, i32 0, metadata !1255, null}
!1257 = metadata !{i32 1370, i32 0, metadata !509, null}
!1258 = metadata !{i32 1371, i32 0, metadata !509, null}
!1259 = metadata !{i32 1372, i32 0, metadata !509, null}
!1260 = metadata !{i32 1379, i32 0, metadata !494, null}
!1261 = metadata !{i32 1381, i32 0, metadata !494, null}
!1262 = metadata !{i32 1400, i32 0, metadata !514, null}
!1263 = metadata !{i32 1401, i32 0, metadata !514, null}
!1264 = metadata !{i32 1402, i32 0, metadata !514, null}
!1265 = metadata !{i32 1403, i32 0, metadata !514, null}
!1266 = metadata !{i32 1404, i32 0, metadata !514, null}
!1267 = metadata !{i32 1405, i32 0, metadata !514, null}
!1268 = metadata !{i32 1406, i32 0, metadata !514, null}
!1269 = metadata !{i32 1415, i32 0, metadata !514, null}
!1270 = metadata !{i32 1429, i32 0, metadata !532, null}
!1271 = metadata !{i32 1418, i32 0, metadata !1272, null}
!1272 = metadata !{i32 786443, metadata !1, metadata !514, i32 1417, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1273 = metadata !{i32 1421, i32 0, metadata !1272, null}
!1274 = metadata !{i32 1432, i32 0, metadata !531, null}
!1275 = metadata !{i32 1433, i32 0, metadata !531, null}
!1276 = metadata !{i32 1434, i32 0, metadata !531, null}
!1277 = metadata !{i32 1435, i32 0, metadata !531, null}
!1278 = metadata !{i32 1436, i32 0, metadata !531, null}
!1279 = metadata !{i32 1443, i32 0, metadata !514, null}
!1280 = metadata !{i32 1444, i32 0, metadata !514, null}
!1281 = metadata !{i32 1445, i32 0, metadata !514, null}
!1282 = metadata !{i32 1447, i32 0, metadata !514, null}
!1283 = metadata !{i32 1464, i32 0, metadata !537, null}
!1284 = metadata !{i32 1465, i32 0, metadata !537, null}
!1285 = metadata !{i32 1466, i32 0, metadata !537, null}
!1286 = metadata !{i32 1467, i32 0, metadata !537, null}
!1287 = metadata !{i32 1468, i32 0, metadata !537, null}
!1288 = metadata !{i32 1469, i32 0, metadata !537, null}
!1289 = metadata !{i32 1478, i32 0, metadata !537, null}
!1290 = metadata !{i32 1492, i32 0, metadata !552, null}
!1291 = metadata !{i32 1481, i32 0, metadata !1292, null}
!1292 = metadata !{i32 786443, metadata !1, metadata !537, i32 1480, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1293 = metadata !{i32 1484, i32 0, metadata !1292, null}
!1294 = metadata !{i32 1495, i32 0, metadata !551, null}
!1295 = metadata !{i32 1496, i32 0, metadata !551, null}
!1296 = metadata !{i32 1497, i32 0, metadata !551, null}
!1297 = metadata !{i32 1498, i32 0, metadata !551, null}
!1298 = metadata !{i32 1505, i32 0, metadata !537, null}
!1299 = metadata !{i32 1506, i32 0, metadata !537, null}
!1300 = metadata !{i32 1508, i32 0, metadata !537, null}
!1301 = metadata !{i32 1523, i32 0, metadata !556, null}
!1302 = metadata !{i32 1524, i32 0, metadata !556, null}
!1303 = metadata !{i32 1525, i32 0, metadata !556, null}
!1304 = metadata !{i32 1526, i32 0, metadata !556, null}
!1305 = metadata !{i32 1527, i32 0, metadata !556, null}
!1306 = metadata !{i32 1536, i32 0, metadata !556, null}
!1307 = metadata !{i32 1550, i32 0, metadata !570, null}
!1308 = metadata !{i32 1539, i32 0, metadata !1309, null}
!1309 = metadata !{i32 786443, metadata !1, metadata !556, i32 1538, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1310 = metadata !{i32 1542, i32 0, metadata !1309, null}
!1311 = metadata !{i32 1553, i32 0, metadata !569, null}
!1312 = metadata !{i32 1554, i32 0, metadata !569, null}
!1313 = metadata !{i32 1555, i32 0, metadata !569, null}
!1314 = metadata !{i32 1562, i32 0, metadata !556, null}
!1315 = metadata !{i32 1564, i32 0, metadata !556, null}
!1316 = metadata !{i32 1580, i32 0, metadata !573, null}
!1317 = metadata !{i32 1581, i32 0, metadata !573, null}
!1318 = metadata !{i32 1582, i32 0, metadata !573, null}
!1319 = metadata !{i32 1583, i32 0, metadata !573, null}
!1320 = metadata !{i32 1584, i32 0, metadata !573, null}
!1321 = metadata !{i32 1585, i32 0, metadata !573, null}
!1322 = metadata !{i32 1594, i32 0, metadata !573, null}
!1323 = metadata !{i32 1608, i32 0, metadata !587, null}
!1324 = metadata !{i32 1597, i32 0, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !1, metadata !573, i32 1596, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1326 = metadata !{i32 1600, i32 0, metadata !1325, null}
!1327 = metadata !{i32 1611, i32 0, metadata !586, null}
!1328 = metadata !{i32 1612, i32 0, metadata !586, null}
!1329 = metadata !{i32 1613, i32 0, metadata !586, null}
!1330 = metadata !{i32 1614, i32 0, metadata !586, null}
!1331 = metadata !{i32 1615, i32 0, metadata !586, null}
!1332 = metadata !{i32 1622, i32 0, metadata !573, null}
!1333 = metadata !{i32 1623, i32 0, metadata !573, null}
!1334 = metadata !{i32 1624, i32 0, metadata !573, null}
!1335 = metadata !{i32 1626, i32 0, metadata !573, null}
!1336 = metadata !{i32 1641, i32 0, metadata !591, null}
!1337 = metadata !{i32 1642, i32 0, metadata !591, null}
!1338 = metadata !{i32 1643, i32 0, metadata !591, null}
!1339 = metadata !{i32 1644, i32 0, metadata !591, null}
!1340 = metadata !{i32 1645, i32 0, metadata !591, null}
!1341 = metadata !{i32 1654, i32 0, metadata !591, null}
!1342 = metadata !{i32 1668, i32 0, metadata !603, null}
!1343 = metadata !{i32 1657, i32 0, metadata !1344, null}
!1344 = metadata !{i32 786443, metadata !1, metadata !591, i32 1656, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1345 = metadata !{i32 1660, i32 0, metadata !1344, null}
!1346 = metadata !{i32 1671, i32 0, metadata !602, null}
!1347 = metadata !{i32 1672, i32 0, metadata !602, null}
!1348 = metadata !{i32 1673, i32 0, metadata !602, null}
!1349 = metadata !{i32 1674, i32 0, metadata !602, null}
!1350 = metadata !{i32 1681, i32 0, metadata !591, null}
!1351 = metadata !{i32 1682, i32 0, metadata !591, null}
!1352 = metadata !{i32 1684, i32 0, metadata !591, null}
!1353 = metadata !{i32 1698, i32 0, metadata !606, null}
!1354 = metadata !{i32 1699, i32 0, metadata !606, null}
!1355 = metadata !{i32 1700, i32 0, metadata !606, null}
!1356 = metadata !{i32 1701, i32 0, metadata !606, null}
!1357 = metadata !{i32 1710, i32 0, metadata !606, null}
!1358 = metadata !{i32 1724, i32 0, metadata !618, null}
!1359 = metadata !{i32 1713, i32 0, metadata !1360, null}
!1360 = metadata !{i32 786443, metadata !1, metadata !606, i32 1712, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_DV.c]
!1361 = metadata !{i32 1716, i32 0, metadata !1360, null}
!1362 = metadata !{i32 1727, i32 0, metadata !617, null}
!1363 = metadata !{i32 1728, i32 0, metadata !617, null}
!1364 = metadata !{i32 1729, i32 0, metadata !617, null}
!1365 = metadata !{i32 1736, i32 0, metadata !606, null}
!1366 = metadata !{i32 1738, i32 0, metadata !606, null}
