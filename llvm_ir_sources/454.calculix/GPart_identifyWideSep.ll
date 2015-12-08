; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_identifyWideSep.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct._IO_FILE* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [61 x i8] c"\0A fatal error in GPart_identifyWideSep(%p,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"\0A GPart_identifyWideSep : %d separator nodes loaded\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"\0A\0A level = %d, first = %d\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"\0A %d : \00", align 1
@.str4 = private unnamed_addr constant [23 x i8] c"\0A    adding %d to list\00", align 1
@.str5 = private unnamed_addr constant [42 x i8] c"\0A %d nodes added from the first component\00", align 1
@.str6 = private unnamed_addr constant [43 x i8] c"\0A %d nodes added from the second component\00", align 1
@.str7 = private unnamed_addr constant [25 x i8] c"\0A separator has %d nodes\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"\0A sepIV\00", align 1
@.str9 = private unnamed_addr constant [36 x i8] c"\0A return from GPart_identifyWideSep\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @GPart_identifyWideSep(%struct._GPart* %gpart, i32 %nlevel1, i32 %nlevel2) #0 {
entry:
  %ierr = alloca i32, align 4
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %cmp = icmp eq %struct._GPart* %gpart, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %g1 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  %0 = load %struct._Graph** %g1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Graph* %0, null
  %cmp4 = icmp slt i32 %nlevel1, 0
  %or.cond = or i1 %cmp2, %cmp4
  %cmp6 = icmp slt i32 %nlevel2, 0
  %or.cond494 = or i1 %or.cond, %cmp6
  br i1 %or.cond494, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, i32 %nlevel1, i32 %nlevel2) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call8 = call i32* @IV_entries(%struct._IV* %compidsIV) #5
  %nvtx9 = getelementptr inbounds %struct._Graph* %0, i64 0, i32 1
  %2 = load i32* %nvtx9, align 4, !tbaa !3
  %call10 = call i32* @IVinit(i32 %2, i32 -1) #5
  %call11 = call i32* @IVinit(i32 %2, i32 -1) #5
  %msglvl12 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11
  %3 = load i32* %msglvl12, align 4, !tbaa !3
  %msgFile13 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %4 = load %struct._IO_FILE** %msgFile13, align 8, !tbaa !0
  %cmp14544 = icmp sgt i32 %2, 0
  br i1 %cmp14544, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv567 = phi i64 [ %indvars.iv.next568, %for.inc ], [ 0, %if.end ]
  %nsep.0545 = phi i32 [ %nsep.1, %for.inc ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %call8, i64 %indvars.iv567
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %5, 0
  br i1 %cmp15, label %if.then16, label %for.inc

if.then16:                                        ; preds = %for.body
  %inc = add nsw i32 %nsep.0545, 1
  %idxprom17 = sext i32 %nsep.0545 to i64
  %arrayidx18 = getelementptr inbounds i32* %call11, i64 %idxprom17
  %6 = trunc i64 %indvars.iv567 to i32
  store i32 %6, i32* %arrayidx18, align 4, !tbaa !3
  %arrayidx20 = getelementptr inbounds i32* %call10, i64 %indvars.iv567
  store i32 0, i32* %arrayidx20, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then16
  %nsep.1 = phi i32 [ %inc, %if.then16 ], [ %nsep.0545, %for.body ]
  %indvars.iv.next568 = add i64 %indvars.iv567, 1
  %lftr.wideiv569 = trunc i64 %indvars.iv.next568 to i32
  %exitcond570 = icmp eq i32 %lftr.wideiv569, %2
  br i1 %exitcond570, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  %nsep.0.lcssa = phi i32 [ 0, %if.end ], [ %nsep.1, %for.inc ]
  %cmp23 = icmp sgt i32 %3, 1
  br i1 %cmp23, label %if.end27, label %if.end32

if.end27:                                         ; preds = %for.end
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 %nsep.0.lcssa) #5
  %call26 = call i32 @fflush(%struct._IO_FILE* %4) #5
  %cmp28 = icmp sgt i32 %3, 2
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end27
  %call30 = call i32 @IVfp80(%struct._IO_FILE* %4, i32 %nsep.0.lcssa, i32* %call11, i32 80, i32* %ierr) #5
  %call31 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end32

if.end32:                                         ; preds = %for.end, %if.then29, %if.end27
  %cmp28496 = phi i1 [ true, %if.then29 ], [ false, %if.end27 ], [ false, %for.end ]
  %cmp33 = icmp sgt i32 %nlevel1, 0
  br i1 %cmp33, label %if.then34, label %if.end132

if.then34:                                        ; preds = %if.end32
  br i1 %cmp28496, label %if.then36, label %for.cond40.preheader

if.then36:                                        ; preds = %if.then34
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i32 1, i32 %nsep.0.lcssa) #5
  %call38 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %if.then36, %if.then34
  %cmp41538 = icmp sgt i32 %nsep.0.lcssa, 0
  br i1 %cmp41538, label %for.body42, label %for.cond82.preheader

for.cond82.preheader:                             ; preds = %for.inc79, %for.cond40.preheader
  %count.0.lcssa = phi i32 [ %nsep.0.lcssa, %for.cond40.preheader ], [ %count.1.lcssa, %for.inc79 ]
  %cmp83529 = icmp slt i32 %nlevel1, 2
  br i1 %cmp83529, label %if.end132, label %for.body84

for.body42:                                       ; preds = %for.cond40.preheader, %for.inc79
  %indvars.iv563 = phi i64 [ %indvars.iv.next564, %for.inc79 ], [ 0, %for.cond40.preheader ]
  %count.0540 = phi i32 [ %count.1.lcssa, %for.inc79 ], [ %nsep.0.lcssa, %for.cond40.preheader ]
  %arrayidx44 = getelementptr inbounds i32* %call11, i64 %indvars.iv563
  %7 = load i32* %arrayidx44, align 4, !tbaa !3
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %7, i32* %vsize, i32** %vadj) #5
  br i1 %cmp28496, label %if.then46, label %for.cond51.preheader

if.then46:                                        ; preds = %for.body42
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 %7) #5
  %8 = load i32* %vsize, align 4, !tbaa !3
  %9 = load i32** %vadj, align 8, !tbaa !0
  %call48 = call i32 @IVfp80(%struct._IO_FILE* %4, i32 %8, i32* %9, i32 80, i32* %ierr) #5
  %call49 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %for.cond51.preheader

for.cond51.preheader:                             ; preds = %if.then46, %for.body42
  %10 = load i32* %vsize, align 4, !tbaa !3
  %cmp52534 = icmp sgt i32 %10, 0
  br i1 %cmp52534, label %for.body53, label %for.inc79

for.body53:                                       ; preds = %for.inc76, %for.cond51.preheader
  %11 = phi i32 [ %10, %for.cond51.preheader ], [ %16, %for.inc76 ]
  %indvars.iv561 = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next562, %for.inc76 ]
  %count.1536 = phi i32 [ %count.0540, %for.cond51.preheader ], [ %count.2, %for.inc76 ]
  %12 = load i32** %vadj, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds i32* %12, i64 %indvars.iv561
  %13 = load i32* %arrayidx55, align 4, !tbaa !3
  %cmp56 = icmp slt i32 %13, %2
  br i1 %cmp56, label %land.lhs.true, label %for.inc76

land.lhs.true:                                    ; preds = %for.body53
  %idxprom57 = sext i32 %13 to i64
  %arrayidx58 = getelementptr inbounds i32* %call10, i64 %idxprom57
  %14 = load i32* %arrayidx58, align 4, !tbaa !3
  %cmp59 = icmp eq i32 %14, -1
  br i1 %cmp59, label %land.lhs.true60, label %for.inc76

land.lhs.true60:                                  ; preds = %land.lhs.true
  %arrayidx62 = getelementptr inbounds i32* %call8, i64 %idxprom57
  %15 = load i32* %arrayidx62, align 4, !tbaa !3
  %cmp63 = icmp eq i32 %15, 1
  br i1 %cmp63, label %if.then64, label %for.inc76

if.then64:                                        ; preds = %land.lhs.true60
  br i1 %cmp28496, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.then64
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), i32 %13) #5
  %call68 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.then64
  %inc70 = add nsw i32 %count.1536, 1
  %idxprom71 = sext i32 %count.1536 to i64
  %arrayidx72 = getelementptr inbounds i32* %call11, i64 %idxprom71
  store i32 %13, i32* %arrayidx72, align 4, !tbaa !3
  store i32 1, i32* %arrayidx58, align 4, !tbaa !3
  %.pre571 = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc76

for.inc76:                                        ; preds = %for.body53, %land.lhs.true, %land.lhs.true60, %if.end69
  %16 = phi i32 [ %.pre571, %if.end69 ], [ %11, %land.lhs.true60 ], [ %11, %land.lhs.true ], [ %11, %for.body53 ]
  %count.2 = phi i32 [ %inc70, %if.end69 ], [ %count.1536, %land.lhs.true60 ], [ %count.1536, %land.lhs.true ], [ %count.1536, %for.body53 ]
  %indvars.iv.next562 = add i64 %indvars.iv561, 1
  %17 = trunc i64 %indvars.iv.next562 to i32
  %cmp52 = icmp slt i32 %17, %16
  br i1 %cmp52, label %for.body53, label %for.inc79

for.inc79:                                        ; preds = %for.inc76, %for.cond51.preheader
  %count.1.lcssa = phi i32 [ %count.0540, %for.cond51.preheader ], [ %count.2, %for.inc76 ]
  %indvars.iv.next564 = add i64 %indvars.iv563, 1
  %lftr.wideiv565 = trunc i64 %indvars.iv.next564 to i32
  %exitcond566 = icmp eq i32 %lftr.wideiv565, %nsep.0.lcssa
  br i1 %exitcond566, label %for.cond82.preheader, label %for.body42

for.body84:                                       ; preds = %for.cond82.preheader, %for.inc129
  %count.3532 = phi i32 [ %count.4.lcssa, %for.inc129 ], [ %count.0.lcssa, %for.cond82.preheader ]
  %ilevel.0531 = phi i32 [ %inc130, %for.inc129 ], [ 2, %for.cond82.preheader ]
  %now.1530 = phi i32 [ %now.2.lcssa, %for.inc129 ], [ %nsep.0.lcssa, %for.cond82.preheader ]
  br i1 %cmp28496, label %if.then86, label %if.end89

if.then86:                                        ; preds = %for.body84
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i32 %ilevel.0531, i32 %nsep.0.lcssa) #5
  %call88 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %for.body84
  %sub = add i32 %count.3532, -1
  %cmp90524 = icmp sgt i32 %now.1530, %sub
  br i1 %cmp90524, label %for.inc129, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end89
  %18 = sext i32 %now.1530 to i64
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc126, %for.cond100.preheader
  %count.5.lcssa = phi i32 [ %count.4526, %for.cond100.preheader ], [ %count.6, %for.inc126 ]
  %19 = trunc i64 %indvars.iv557 to i32
  %cmp90 = icmp slt i32 %19, %sub
  br i1 %cmp90, label %while.body, label %for.inc129

while.body:                                       ; preds = %while.cond.loopexit, %while.body.lr.ph
  %indvars.iv557 = phi i64 [ %indvars.iv.next558, %while.cond.loopexit ], [ %18, %while.body.lr.ph ]
  %count.4526 = phi i32 [ %count.5.lcssa, %while.cond.loopexit ], [ %count.3532, %while.body.lr.ph ]
  %indvars.iv.next558 = add i64 %indvars.iv557, 1
  %arrayidx93 = getelementptr inbounds i32* %call11, i64 %indvars.iv557
  %20 = load i32* %arrayidx93, align 4, !tbaa !3
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %20, i32* %vsize, i32** %vadj) #5
  br i1 %cmp28496, label %if.then95, label %for.cond100.preheader

if.then95:                                        ; preds = %while.body
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 %20) #5
  %21 = load i32* %vsize, align 4, !tbaa !3
  %22 = load i32** %vadj, align 8, !tbaa !0
  %call97 = call i32 @IVfp80(%struct._IO_FILE* %4, i32 %21, i32* %22, i32 80, i32* %ierr) #5
  %call98 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %for.cond100.preheader

for.cond100.preheader:                            ; preds = %if.then95, %while.body
  %23 = load i32* %vsize, align 4, !tbaa !3
  %cmp101520 = icmp sgt i32 %23, 0
  br i1 %cmp101520, label %for.body102, label %while.cond.loopexit

for.body102:                                      ; preds = %for.inc126, %for.cond100.preheader
  %24 = phi i32 [ %23, %for.cond100.preheader ], [ %29, %for.inc126 ]
  %indvars.iv555 = phi i64 [ 0, %for.cond100.preheader ], [ %indvars.iv.next556, %for.inc126 ]
  %count.5522 = phi i32 [ %count.4526, %for.cond100.preheader ], [ %count.6, %for.inc126 ]
  %25 = load i32** %vadj, align 8, !tbaa !0
  %arrayidx104 = getelementptr inbounds i32* %25, i64 %indvars.iv555
  %26 = load i32* %arrayidx104, align 4, !tbaa !3
  %cmp105 = icmp slt i32 %26, %2
  br i1 %cmp105, label %land.lhs.true106, label %for.inc126

land.lhs.true106:                                 ; preds = %for.body102
  %idxprom107 = sext i32 %26 to i64
  %arrayidx108 = getelementptr inbounds i32* %call10, i64 %idxprom107
  %27 = load i32* %arrayidx108, align 4, !tbaa !3
  %cmp109 = icmp eq i32 %27, -1
  br i1 %cmp109, label %land.lhs.true110, label %for.inc126

land.lhs.true110:                                 ; preds = %land.lhs.true106
  %arrayidx112 = getelementptr inbounds i32* %call8, i64 %idxprom107
  %28 = load i32* %arrayidx112, align 4, !tbaa !3
  %cmp113 = icmp eq i32 %28, 1
  br i1 %cmp113, label %if.then114, label %for.inc126

if.then114:                                       ; preds = %land.lhs.true110
  br i1 %cmp28496, label %if.then116, label %if.end119

if.then116:                                       ; preds = %if.then114
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), i32 %26) #5
  %call118 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %if.then114
  store i32 1, i32* %arrayidx108, align 4, !tbaa !3
  %inc122 = add nsw i32 %count.5522, 1
  %idxprom123 = sext i32 %count.5522 to i64
  %arrayidx124 = getelementptr inbounds i32* %call11, i64 %idxprom123
  store i32 %26, i32* %arrayidx124, align 4, !tbaa !3
  %.pre = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc126

for.inc126:                                       ; preds = %for.body102, %land.lhs.true106, %land.lhs.true110, %if.end119
  %29 = phi i32 [ %.pre, %if.end119 ], [ %24, %land.lhs.true110 ], [ %24, %land.lhs.true106 ], [ %24, %for.body102 ]
  %count.6 = phi i32 [ %inc122, %if.end119 ], [ %count.5522, %land.lhs.true110 ], [ %count.5522, %land.lhs.true106 ], [ %count.5522, %for.body102 ]
  %indvars.iv.next556 = add i64 %indvars.iv555, 1
  %30 = trunc i64 %indvars.iv.next556 to i32
  %cmp101 = icmp slt i32 %30, %29
  br i1 %cmp101, label %for.body102, label %while.cond.loopexit

for.inc129:                                       ; preds = %while.cond.loopexit, %if.end89
  %count.4.lcssa = phi i32 [ %count.3532, %if.end89 ], [ %count.5.lcssa, %while.cond.loopexit ]
  %now.2.lcssa = phi i32 [ %now.1530, %if.end89 ], [ %count.3532, %while.cond.loopexit ]
  %inc130 = add nsw i32 %ilevel.0531, 1
  %exitcond560 = icmp eq i32 %ilevel.0531, %nlevel1
  br i1 %exitcond560, label %if.end132, label %for.body84

if.end132:                                        ; preds = %for.cond82.preheader, %for.inc129, %if.end32
  %count.7 = phi i32 [ %nsep.0.lcssa, %if.end32 ], [ %count.0.lcssa, %for.cond82.preheader ], [ %count.4.lcssa, %for.inc129 ]
  %sub133 = sub nsw i32 %count.7, %nsep.0.lcssa
  br i1 %cmp28496, label %if.then135, label %if.end138

if.then135:                                       ; preds = %if.end132
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([42 x i8]* @.str5, i64 0, i64 0), i32 %sub133) #5
  %call137 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end138

if.end138:                                        ; preds = %if.then135, %if.end132
  %cmp139 = icmp sgt i32 %3, 3
  br i1 %cmp139, label %if.then140, label %if.end145

if.then140:                                       ; preds = %if.end138
  %idxprom141 = sext i32 %nsep.0.lcssa to i64
  %arrayidx142 = getelementptr inbounds i32* %call11, i64 %idxprom141
  %call143 = call i32 @IVfp80(%struct._IO_FILE* %4, i32 %sub133, i32* %arrayidx142, i32 80, i32* %ierr) #5
  %call144 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %if.end138
  %cmp146 = icmp sgt i32 %nlevel2, 0
  br i1 %cmp146, label %if.then147, label %if.end250

if.then147:                                       ; preds = %if.end145
  br i1 %cmp28496, label %if.then149, label %for.cond153.preheader

if.then149:                                       ; preds = %if.then147
  %call150 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i32 1, i32 %count.7) #5
  %call151 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %for.cond153.preheader

for.cond153.preheader:                            ; preds = %if.then149, %if.then147
  %cmp154516 = icmp sgt i32 %nsep.0.lcssa, 0
  br i1 %cmp154516, label %for.body155, label %for.cond196.preheader

for.cond196.preheader:                            ; preds = %for.inc193, %for.cond153.preheader
  %count.8.lcssa = phi i32 [ %count.7, %for.cond153.preheader ], [ %count.9.lcssa, %for.inc193 ]
  %cmp197507 = icmp slt i32 %nlevel2, 2
  br i1 %cmp197507, label %if.end250, label %for.body198

for.body155:                                      ; preds = %for.cond153.preheader, %for.inc193
  %indvars.iv552 = phi i64 [ %indvars.iv.next553, %for.inc193 ], [ 0, %for.cond153.preheader ]
  %count.8518 = phi i32 [ %count.9.lcssa, %for.inc193 ], [ %count.7, %for.cond153.preheader ]
  %arrayidx157 = getelementptr inbounds i32* %call11, i64 %indvars.iv552
  %31 = load i32* %arrayidx157, align 4, !tbaa !3
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %31, i32* %vsize, i32** %vadj) #5
  br i1 %cmp28496, label %if.then159, label %for.cond164.preheader

if.then159:                                       ; preds = %for.body155
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 %31) #5
  %32 = load i32* %vsize, align 4, !tbaa !3
  %33 = load i32** %vadj, align 8, !tbaa !0
  %call161 = call i32 @IVfp80(%struct._IO_FILE* %4, i32 %32, i32* %33, i32 80, i32* %ierr) #5
  %call162 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %for.cond164.preheader

for.cond164.preheader:                            ; preds = %if.then159, %for.body155
  %34 = load i32* %vsize, align 4, !tbaa !3
  %cmp165512 = icmp sgt i32 %34, 0
  br i1 %cmp165512, label %for.body166, label %for.inc193

for.body166:                                      ; preds = %for.inc190, %for.cond164.preheader
  %35 = phi i32 [ %34, %for.cond164.preheader ], [ %40, %for.inc190 ]
  %indvars.iv550 = phi i64 [ 0, %for.cond164.preheader ], [ %indvars.iv.next551, %for.inc190 ]
  %count.9514 = phi i32 [ %count.8518, %for.cond164.preheader ], [ %count.10, %for.inc190 ]
  %36 = load i32** %vadj, align 8, !tbaa !0
  %arrayidx168 = getelementptr inbounds i32* %36, i64 %indvars.iv550
  %37 = load i32* %arrayidx168, align 4, !tbaa !3
  %cmp169 = icmp slt i32 %37, %2
  br i1 %cmp169, label %land.lhs.true170, label %for.inc190

land.lhs.true170:                                 ; preds = %for.body166
  %idxprom171 = sext i32 %37 to i64
  %arrayidx172 = getelementptr inbounds i32* %call10, i64 %idxprom171
  %38 = load i32* %arrayidx172, align 4, !tbaa !3
  %cmp173 = icmp eq i32 %38, -1
  br i1 %cmp173, label %land.lhs.true174, label %for.inc190

land.lhs.true174:                                 ; preds = %land.lhs.true170
  %arrayidx176 = getelementptr inbounds i32* %call8, i64 %idxprom171
  %39 = load i32* %arrayidx176, align 4, !tbaa !3
  %cmp177 = icmp eq i32 %39, 2
  br i1 %cmp177, label %if.then178, label %for.inc190

if.then178:                                       ; preds = %land.lhs.true174
  br i1 %cmp28496, label %if.then180, label %if.end183

if.then180:                                       ; preds = %if.then178
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), i32 %37) #5
  %call182 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end183

if.end183:                                        ; preds = %if.then180, %if.then178
  %inc184 = add nsw i32 %count.9514, 1
  %idxprom185 = sext i32 %count.9514 to i64
  %arrayidx186 = getelementptr inbounds i32* %call11, i64 %idxprom185
  store i32 %37, i32* %arrayidx186, align 4, !tbaa !3
  store i32 2, i32* %arrayidx172, align 4, !tbaa !3
  %.pre573 = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc190

for.inc190:                                       ; preds = %for.body166, %land.lhs.true170, %land.lhs.true174, %if.end183
  %40 = phi i32 [ %.pre573, %if.end183 ], [ %35, %land.lhs.true174 ], [ %35, %land.lhs.true170 ], [ %35, %for.body166 ]
  %count.10 = phi i32 [ %inc184, %if.end183 ], [ %count.9514, %land.lhs.true174 ], [ %count.9514, %land.lhs.true170 ], [ %count.9514, %for.body166 ]
  %indvars.iv.next551 = add i64 %indvars.iv550, 1
  %41 = trunc i64 %indvars.iv.next551 to i32
  %cmp165 = icmp slt i32 %41, %40
  br i1 %cmp165, label %for.body166, label %for.inc193

for.inc193:                                       ; preds = %for.inc190, %for.cond164.preheader
  %count.9.lcssa = phi i32 [ %count.8518, %for.cond164.preheader ], [ %count.10, %for.inc190 ]
  %indvars.iv.next553 = add i64 %indvars.iv552, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next553 to i32
  %exitcond554 = icmp eq i32 %lftr.wideiv, %nsep.0.lcssa
  br i1 %exitcond554, label %for.cond196.preheader, label %for.body155

for.body198:                                      ; preds = %for.cond196.preheader, %for.inc247
  %count.11510 = phi i32 [ %count.12.lcssa, %for.inc247 ], [ %count.8.lcssa, %for.cond196.preheader ]
  %ilevel.1509 = phi i32 [ %inc248, %for.inc247 ], [ 2, %for.cond196.preheader ]
  %now.4508 = phi i32 [ %now.5.lcssa, %for.inc247 ], [ %count.7, %for.cond196.preheader ]
  br i1 %cmp28496, label %if.then200, label %if.end203

if.then200:                                       ; preds = %for.body198
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i32 %ilevel.1509, i32 %count.7) #5
  %call202 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end203

if.end203:                                        ; preds = %if.then200, %for.body198
  %sub204 = add i32 %count.11510, -1
  %cmp206502 = icmp sgt i32 %now.4508, %sub204
  br i1 %cmp206502, label %for.inc247, label %while.body207.lr.ph

while.body207.lr.ph:                              ; preds = %if.end203
  %42 = sext i32 %now.4508 to i64
  br label %while.body207

while.cond205.loopexit:                           ; preds = %for.inc243, %for.cond217.preheader
  %count.13.lcssa = phi i32 [ %count.12504, %for.cond217.preheader ], [ %count.14, %for.inc243 ]
  %43 = trunc i64 %indvars.iv548 to i32
  %cmp206 = icmp slt i32 %43, %sub204
  br i1 %cmp206, label %while.body207, label %for.inc247

while.body207:                                    ; preds = %while.cond205.loopexit, %while.body207.lr.ph
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %while.cond205.loopexit ], [ %42, %while.body207.lr.ph ]
  %count.12504 = phi i32 [ %count.13.lcssa, %while.cond205.loopexit ], [ %count.11510, %while.body207.lr.ph ]
  %indvars.iv.next549 = add i64 %indvars.iv548, 1
  %arrayidx210 = getelementptr inbounds i32* %call11, i64 %indvars.iv548
  %44 = load i32* %arrayidx210, align 4, !tbaa !3
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %44, i32* %vsize, i32** %vadj) #5
  br i1 %cmp28496, label %if.then212, label %for.cond217.preheader

if.then212:                                       ; preds = %while.body207
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 %44) #5
  %45 = load i32* %vsize, align 4, !tbaa !3
  %46 = load i32** %vadj, align 8, !tbaa !0
  %call214 = call i32 @IVfp80(%struct._IO_FILE* %4, i32 %45, i32* %46, i32 80, i32* %ierr) #5
  %call215 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %for.cond217.preheader

for.cond217.preheader:                            ; preds = %if.then212, %while.body207
  %47 = load i32* %vsize, align 4, !tbaa !3
  %cmp218499 = icmp sgt i32 %47, 0
  br i1 %cmp218499, label %for.body219, label %while.cond205.loopexit

for.body219:                                      ; preds = %for.inc243, %for.cond217.preheader
  %48 = phi i32 [ %47, %for.cond217.preheader ], [ %53, %for.inc243 ]
  %indvars.iv = phi i64 [ 0, %for.cond217.preheader ], [ %indvars.iv.next, %for.inc243 ]
  %count.13501 = phi i32 [ %count.12504, %for.cond217.preheader ], [ %count.14, %for.inc243 ]
  %49 = load i32** %vadj, align 8, !tbaa !0
  %arrayidx221 = getelementptr inbounds i32* %49, i64 %indvars.iv
  %50 = load i32* %arrayidx221, align 4, !tbaa !3
  %cmp222 = icmp slt i32 %50, %2
  br i1 %cmp222, label %land.lhs.true223, label %for.inc243

land.lhs.true223:                                 ; preds = %for.body219
  %idxprom224 = sext i32 %50 to i64
  %arrayidx225 = getelementptr inbounds i32* %call10, i64 %idxprom224
  %51 = load i32* %arrayidx225, align 4, !tbaa !3
  %cmp226 = icmp eq i32 %51, -1
  br i1 %cmp226, label %land.lhs.true227, label %for.inc243

land.lhs.true227:                                 ; preds = %land.lhs.true223
  %arrayidx229 = getelementptr inbounds i32* %call8, i64 %idxprom224
  %52 = load i32* %arrayidx229, align 4, !tbaa !3
  %cmp230 = icmp eq i32 %52, 2
  br i1 %cmp230, label %if.then231, label %for.inc243

if.then231:                                       ; preds = %land.lhs.true227
  br i1 %cmp28496, label %if.then233, label %if.end236

if.then233:                                       ; preds = %if.then231
  %call234 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), i32 %50) #5
  %call235 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end236

if.end236:                                        ; preds = %if.then233, %if.then231
  store i32 2, i32* %arrayidx225, align 4, !tbaa !3
  %inc239 = add nsw i32 %count.13501, 1
  %idxprom240 = sext i32 %count.13501 to i64
  %arrayidx241 = getelementptr inbounds i32* %call11, i64 %idxprom240
  store i32 %50, i32* %arrayidx241, align 4, !tbaa !3
  %.pre572 = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc243

for.inc243:                                       ; preds = %for.body219, %land.lhs.true223, %land.lhs.true227, %if.end236
  %53 = phi i32 [ %.pre572, %if.end236 ], [ %48, %land.lhs.true227 ], [ %48, %land.lhs.true223 ], [ %48, %for.body219 ]
  %count.14 = phi i32 [ %inc239, %if.end236 ], [ %count.13501, %land.lhs.true227 ], [ %count.13501, %land.lhs.true223 ], [ %count.13501, %for.body219 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %54 = trunc i64 %indvars.iv.next to i32
  %cmp218 = icmp slt i32 %54, %53
  br i1 %cmp218, label %for.body219, label %while.cond205.loopexit

for.inc247:                                       ; preds = %while.cond205.loopexit, %if.end203
  %count.12.lcssa = phi i32 [ %count.11510, %if.end203 ], [ %count.13.lcssa, %while.cond205.loopexit ]
  %now.5.lcssa = phi i32 [ %now.4508, %if.end203 ], [ %count.11510, %while.cond205.loopexit ]
  %inc248 = add nsw i32 %ilevel.1509, 1
  %exitcond = icmp eq i32 %ilevel.1509, %nlevel2
  br i1 %exitcond, label %if.end250, label %for.body198

if.end250:                                        ; preds = %for.cond196.preheader, %for.inc247, %if.end145
  %count.15 = phi i32 [ %count.7, %if.end145 ], [ %count.8.lcssa, %for.cond196.preheader ], [ %count.12.lcssa, %for.inc247 ]
  %sub251 = sub nsw i32 %count.15, %nsep.0.lcssa
  %sub252 = sub i32 %sub251, %sub133
  br i1 %cmp28496, label %if.then254, label %if.end257

if.then254:                                       ; preds = %if.end250
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([43 x i8]* @.str6, i64 0, i64 0), i32 %sub252) #5
  %call256 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end257

if.end257:                                        ; preds = %if.then254, %if.end250
  br i1 %cmp139, label %if.then259, label %if.end264

if.then259:                                       ; preds = %if.end257
  %idxprom260 = sext i32 %count.7 to i64
  %arrayidx261 = getelementptr inbounds i32* %call11, i64 %idxprom260
  %call262 = call i32 @IVfp80(%struct._IO_FILE* %4, i32 %sub252, i32* %arrayidx261, i32 80, i32* %ierr) #5
  %call263 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end264

if.end264:                                        ; preds = %if.then259, %if.end257
  call void @IVqsortUp(i32 %count.15, i32* %call11) #5
  %call265 = call %struct._IV* @IV_new() #5
  call void @IV_init(%struct._IV* %call265, i32 %count.15, i32* null) #5
  %call266 = call i32* @IV_entries(%struct._IV* %call265) #5
  call void @IVcopy(i32 %count.15, i32* %call266, i32* %call11) #5
  br i1 %cmp23, label %if.then268, label %if.end272

if.then268:                                       ; preds = %if.end264
  %call269 = call i32 @IV_size(%struct._IV* %call265) #5
  %call270 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([25 x i8]* @.str7, i64 0, i64 0), i32 %call269) #5
  %call271 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end272

if.end272:                                        ; preds = %if.then268, %if.end264
  br i1 %cmp28496, label %if.then274, label %if.end283.critedge

if.then274:                                       ; preds = %if.end272
  %55 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %4)
  %call276 = call i32 @IV_writeForHumanEye(%struct._IV* %call265, %struct._IO_FILE* %4) #5
  %call277 = call i32 @fflush(%struct._IO_FILE* %4) #5
  call void @IVfree(i32* %call10) #5
  call void @IVfree(i32* %call11) #5
  %56 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str9, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %4)
  %call282 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end283

if.end283.critedge:                               ; preds = %if.end272
  call void @IVfree(i32* %call10) #5
  call void @IVfree(i32* %call11) #5
  br label %if.end283

if.end283:                                        ; preds = %if.end283.critedge, %if.then274
  ret %struct._IV* %call265
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
