; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_smoothYSep.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct._IO_FILE* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct._IO_FILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }
%struct._Ideq = type { i32, i32, i32, %struct._IV }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [58 x i8] c"\0A fatal error in GPart_smoothSep(%p,%p,%p,%f)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"\0A YVmapIV\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"\0A YCmapIV\00", align 1
@.str3 = private unnamed_addr constant [30 x i8] c"\0A network : %d nodes, %d arcs\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A after max flow solution, %d arc traversals\00", align 1
@.str5 = private unnamed_addr constant [37 x i8] c"\0A present partition : < %d, %d, %d >\00", align 1
@.str6 = private unnamed_addr constant [23 x i8] c", imbalance = infinite\00", align 1
@.str7 = private unnamed_addr constant [20 x i8] c", imbalance = %6.3f\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c", cost = %.2f\00", align 1
@.str9 = private unnamed_addr constant [28 x i8] c"\0A mark starting from source\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"\0A Ycompids1\00", align 1
@.str11 = private unnamed_addr constant [45 x i8] c"\0A y = %d, v = %d, oldcomp = %d, newcomp = %d\00", align 1
@.str12 = private unnamed_addr constant [38 x i8] c"\0A min-cut from source: < %d, %d, %d >\00", align 1
@.str13 = private unnamed_addr constant [18 x i8] c", newcost1 = %.2f\00", align 1
@.str14 = private unnamed_addr constant [26 x i8] c"\0A mark starting from sink\00", align 1
@.str15 = private unnamed_addr constant [12 x i8] c"\0A Ycompids2\00", align 1
@.str16 = private unnamed_addr constant [36 x i8] c"\0A min-cut from sink: < %d, %d, %d >\00", align 1
@.str17 = private unnamed_addr constant [46 x i8] c"\0A accepting new partition from source min-cut\00", align 1
@.str18 = private unnamed_addr constant [14 x i8] c", cost = %.3f\00", align 1
@.str19 = private unnamed_addr constant [44 x i8] c"\0A accepting new partition from sink min-cut\00", align 1
@.str20 = private unnamed_addr constant [36 x i8] c"\0A ynet = %d, y = %d, YCmap[%d] = %d\00", align 1
@.str21 = private unnamed_addr constant [68 x i8] c"\0A fatal error in getNewCompids()\0A ynet = %d, y = %d, YCmap[%d] = %d\00", align 1
@.str22 = private unnamed_addr constant [20 x i8] c", Ycompids[%d] = %d\00", align 1
@.str23 = private unnamed_addr constant [59 x i8] c"\0A fatal error in createNetwork(%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [14 x i8] c"\0A maxcap = %d\00", align 1
@.str25 = private unnamed_addr constant [38 x i8] c"\0A fatal error, y = %d, YCmap[%d] = %d\00", align 1
@.str26 = private unnamed_addr constant [38 x i8] c"\0A n12 = %d, n1 = %d, n0 = %d, n2 = %d\00", align 1
@.str27 = private unnamed_addr constant [26 x i8] c"\0A %d nodes in the network\00", align 1
@.str28 = private unnamed_addr constant [42 x i8] c"\0A comp 0 : y = %d, v = %d, i0 = %d and %d\00", align 1
@.str29 = private unnamed_addr constant [35 x i8] c"\0A comp 1 : y = %d, v = %d, i1 = %d\00", align 1
@.str30 = private unnamed_addr constant [35 x i8] c"\0A comp 2 : y = %d, v = %d, i2 = %d\00", align 1
@.str31 = private unnamed_addr constant [37 x i8] c"\0A comp 12 : y = %d, v = %d, i12 = %d\00", align 1
@.str32 = private unnamed_addr constant [46 x i8] c"\0A fatal error, y = %d, v = %d, YCmap[%d] = %d\00", align 1
@.str33 = private unnamed_addr constant [10 x i8] c"\0A NYmapIV\00", align 1
@.str34 = private unnamed_addr constant [8 x i8] c"\0A VNmap\00", align 1
@.str35 = private unnamed_addr constant [53 x i8] c"\0A checking out y = %d, v = %d, vnet = %d, vwght = %d\00", align 1
@.str36 = private unnamed_addr constant [30 x i8] c"\0A S: arc (%d, %d) --> (%d,%d)\00", align 1
@.str37 = private unnamed_addr constant [34 x i8] c"\0A B: arc (source, %d) --> (%d,%d)\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"\0A w = %d\00", align 1
@.str39 = private unnamed_addr constant [12 x i8] c"\0A wnet = %d\00", align 1
@.str40 = private unnamed_addr constant [12 x i8] c"\0A zwid = %d\00", align 1
@.str41 = private unnamed_addr constant [30 x i8] c"\0A B: arc (%d, %d) --> (%d,%d)\00", align 1
@.str42 = private unnamed_addr constant [32 x i8] c"\0A B: arc (%d, sink) --> (%d,%d)\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @GPart_smoothYSep(%struct._GPart* %gpart, %struct._IV* %YVmapIV, %struct._IV* %YCmapIV, float %alpha) #0 {
entry:
  %ierr.i = alloca i32, align 4
  %vsize.i = alloca i32, align 4
  %vadj.i = alloca i32*, align 8
  %ierr = alloca i32, align 4
  %deltas = alloca [3 x i32], align 4
  %cmp = icmp eq %struct._GPart* %gpart, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %g1 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  %0 = load %struct._Graph** %g1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Graph* %0, null
  %cmp4 = icmp eq %struct._IV* %YVmapIV, null
  %or.cond = or i1 %cmp2, %cmp4
  br i1 %or.cond, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call = call i32 @IV_size(%struct._IV* %YVmapIV) #6
  %cmp6 = icmp slt i32 %call, 1
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %call8 = call i32* @IV_entries(%struct._IV* %YVmapIV) #6
  %cmp9 = icmp eq i32* %call8, null
  %cmp11 = icmp eq %struct._IV* %YCmapIV, null
  %or.cond685 = or i1 %cmp9, %cmp11
  br i1 %or.cond685, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %call13 = call i32 @IV_size(%struct._IV* %YCmapIV) #6
  %cmp14 = icmp eq i32 %call13, %call
  br i1 %cmp14, label %lor.lhs.false15, label %if.then

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = call i32* @IV_entries(%struct._IV* %YCmapIV) #6
  %cmp17 = icmp eq i32* %call16, null
  %cmp19 = fcmp olt float %alpha, 0.000000e+00
  %or.cond686 = or i1 %cmp17, %cmp19
  br i1 %or.cond686, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false12, %lor.lhs.false15, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv21 = fpext float %alpha to double
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, %struct._IV* %YVmapIV, %struct._IV* %YCmapIV, double %conv21) #6
  call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false15
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call23 = call i32* @IV_entries(%struct._IV* %compidsIV) #6
  %cweightsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6
  %call24 = call i32* @IV_entries(%struct._IV* %cweightsIV) #6
  %vwghts25 = getelementptr inbounds %struct._Graph* %0, i64 0, i32 7
  %2 = load i32** %vwghts25, align 8, !tbaa !0
  %msgFile26 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %3 = load %struct._IO_FILE** %msgFile26, align 8, !tbaa !0
  %msglvl27 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11
  %4 = load i32* %msglvl27, align 4, !tbaa !3
  %cmp28 = icmp sgt i32 %4, 2
  br i1 %cmp28, label %if.then30, label %lor.lhs.false.i

if.then30:                                        ; preds = %if.end
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %3)
  %call32 = call i32 @IV_writeForHumanEye(%struct._IV* %YVmapIV, %struct._IO_FILE* %3) #6
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %3)
  %call34 = call i32 @IV_writeForHumanEye(%struct._IV* %YCmapIV, %struct._IO_FILE* %3) #6
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end, %if.then30
  %call36 = call %struct._IV* @IV_new() #6
  %7 = bitcast i32* %ierr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #5
  %8 = bitcast i32* %vsize.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #5
  %9 = bitcast i32** %vadj.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #5
  %nvtx1.i = getelementptr inbounds %struct._Graph* %0, i64 0, i32 1
  %10 = load i32* %nvtx1.i, align 4, !tbaa !3
  %cmp2.i = icmp slt i32 %10, 1
  %cmp4.i = icmp eq i32* %call23, null
  %or.cond.i = or i1 %cmp2.i, %cmp4.i
  br i1 %or.cond.i, label %if.then.i, label %lor.lhs.false7.i

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %call.i = call i32 @IV_size(%struct._IV* %YVmapIV) #6
  %cmp8.i = icmp slt i32 %call.i, 1
  br i1 %cmp8.i, label %if.then.i, label %lor.lhs.false9.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false7.i
  %call10.i = call i32* @IV_entries(%struct._IV* %YVmapIV) #6
  %cmp11.i = icmp eq i32* %call10.i, null
  br i1 %cmp11.i, label %if.then.i, label %lor.lhs.false14.i

lor.lhs.false14.i:                                ; preds = %lor.lhs.false9.i
  %call15.i = call i32 @IV_size(%struct._IV* %YCmapIV) #6
  %cmp16.i = icmp eq i32 %call.i, %call15.i
  br i1 %cmp16.i, label %lor.lhs.false17.i, label %if.then.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false14.i
  %call18.i = call i32* @IV_entries(%struct._IV* %YCmapIV) #6
  %cmp19.i = icmp eq i32* %call18.i, null
  %cmp21.i = icmp eq %struct._IV* %call36, null
  %or.cond577.i = or i1 %cmp19.i, %cmp21.i
  br i1 %or.cond577.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false17.i, %lor.lhs.false14.i, %lor.lhs.false9.i, %lor.lhs.false7.i, %lor.lhs.false.i
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([59 x i8]* @.str23, i64 0, i64 0), %struct._Graph* %0, i32* %call23, %struct._IV* %YVmapIV, %struct._IV* %call36, %struct._IV* %YCmapIV) #6
  call void @exit(i32 -1) #7
  unreachable

if.end.i:                                         ; preds = %lor.lhs.false17.i
  %12 = load i32** %vwghts25, align 8, !tbaa !0
  %cmp24.i = icmp eq i32* %12, null
  br i1 %cmp24.i, label %if.end27.i, label %if.else.i

if.else.i:                                        ; preds = %if.end.i
  %call26.i = call i32 @IVsum(i32 %10, i32* %12) #6
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %if.end.i
  %maxcap.0.i = phi i32 [ %call26.i, %if.else.i ], [ %10, %if.end.i ]
  %cmp28.i = icmp sgt i32 %4, 4
  br i1 %cmp28.i, label %if.then29.i, label %for.cond.preheader.i

if.then29.i:                                      ; preds = %if.end27.i
  %call30.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8]* @.str24, i64 0, i64 0), i32 %maxcap.0.i) #6
  %call31.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then29.i, %if.end27.i
  %cmp33608.i = icmp sgt i32 %call.i, 0
  br i1 %cmp33608.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %indvars.iv637.i = phi i64 [ %indvars.iv.next638.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %y.0613.i = phi i32 [ %inc43.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %n0.0612.i = phi i32 [ %n0.1.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %n1.0611.i = phi i32 [ %n1.1.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %n12.0610.i = phi i32 [ %n12.1.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %n2.0609.i = phi i32 [ %n2.1.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %arrayidx.i = getelementptr inbounds i32* %call18.i, i64 %indvars.iv637.i
  %13 = load i32* %arrayidx.i, align 4, !tbaa !3
  switch i32 %13, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb34.i
    i32 2, label %sw.bb36.i
    i32 3, label %sw.bb38.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  %inc.i = add nsw i32 %n0.0612.i, 1
  br label %for.inc.i

sw.bb34.i:                                        ; preds = %for.body.i
  %inc35.i = add nsw i32 %n1.0611.i, 1
  br label %for.inc.i

sw.bb36.i:                                        ; preds = %for.body.i
  %inc37.i = add nsw i32 %n2.0609.i, 1
  br label %for.inc.i

sw.bb38.i:                                        ; preds = %for.body.i
  %inc39.i = add nsw i32 %n12.0610.i, 1
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body.i
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([38 x i8]* @.str25, i64 0, i64 0), i32 %y.0613.i, i32 %y.0613.i, i32 %13) #6
  call void @exit(i32 -1) #7
  unreachable

for.inc.i:                                        ; preds = %sw.bb38.i, %sw.bb36.i, %sw.bb34.i, %sw.bb.i
  %n2.1.i = phi i32 [ %n2.0609.i, %sw.bb38.i ], [ %inc37.i, %sw.bb36.i ], [ %n2.0609.i, %sw.bb34.i ], [ %n2.0609.i, %sw.bb.i ]
  %n12.1.i = phi i32 [ %inc39.i, %sw.bb38.i ], [ %n12.0610.i, %sw.bb36.i ], [ %n12.0610.i, %sw.bb34.i ], [ %n12.0610.i, %sw.bb.i ]
  %n1.1.i = phi i32 [ %n1.0611.i, %sw.bb38.i ], [ %n1.0611.i, %sw.bb36.i ], [ %inc35.i, %sw.bb34.i ], [ %n1.0611.i, %sw.bb.i ]
  %n0.1.i = phi i32 [ %n0.0612.i, %sw.bb38.i ], [ %n0.0612.i, %sw.bb36.i ], [ %n0.0612.i, %sw.bb34.i ], [ %inc.i, %sw.bb.i ]
  %indvars.iv.next638.i = add i64 %indvars.iv637.i, 1
  %inc43.i = add nsw i32 %y.0613.i, 1
  %15 = trunc i64 %indvars.iv.next638.i to i32
  %cmp33.i = icmp slt i32 %15, %call.i
  br i1 %cmp33.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.inc.i, %for.cond.preheader.i
  %n0.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %n0.1.i, %for.inc.i ]
  %n1.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %n1.1.i, %for.inc.i ]
  %n12.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %n12.1.i, %for.inc.i ]
  %n2.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %n2.1.i, %for.inc.i ]
  %mul.i = shl nsw i32 %n0.0.lcssa.i, 1
  %add.i = add i32 %n1.0.lcssa.i, 1
  %add44.i = add i32 %add.i, %mul.i
  %add45.i = add i32 %add44.i, %n12.0.lcssa.i
  %add46.i = add i32 %add45.i, %n2.0.lcssa.i
  %add47.i = add nsw i32 %add46.i, 1
  br i1 %cmp28, label %if.then49.i, label %if.end53.i

if.then49.i:                                      ; preds = %for.end.i
  %call50.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([38 x i8]* @.str26, i64 0, i64 0), i32 %n12.0.lcssa.i, i32 %n1.0.lcssa.i, i32 %n0.0.lcssa.i, i32 %n2.0.lcssa.i) #6
  %call51.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([26 x i8]* @.str27, i64 0, i64 0), i32 %add47.i) #6
  %call52.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then49.i, %for.end.i
  call void @IV_init(%struct._IV* %call36, i32 %add47.i, i32* null) #6
  %call54.i = call i32* @IV_entries(%struct._IV* %call36) #6
  %call55.i = call i32* @IVinit(i32 %10, i32 -1) #6
  %add56.i = add nsw i32 %n12.0.lcssa.i, 1
  %add58.i = add nsw i32 %add56.i, %n1.0.lcssa.i
  br i1 %cmp33608.i, label %for.body65.lr.ph.i, label %for.end125.i

for.body65.lr.ph.i:                               ; preds = %if.end53.i
  %add62.i = add nsw i32 %add58.i, %mul.i
  br label %for.body65.i

for.body65.i:                                     ; preds = %for.inc123.i, %for.body65.lr.ph.i
  %indvars.iv632.i = phi i64 [ 0, %for.body65.lr.ph.i ], [ %indvars.iv.next633.i, %for.inc123.i ]
  %i0.0601.i = phi i32 [ %add58.i, %for.body65.lr.ph.i ], [ %i0.1.i, %for.inc123.i ]
  %i1.0600.i = phi i32 [ %add56.i, %for.body65.lr.ph.i ], [ %i1.1.i, %for.inc123.i ]
  %i12.0599.i = phi i32 [ 1, %for.body65.lr.ph.i ], [ %i12.1.i, %for.inc123.i ]
  %i2.0598.i = phi i32 [ %add62.i, %for.body65.lr.ph.i ], [ %i2.1.i, %for.inc123.i ]
  %y.1597.i = phi i32 [ 0, %for.body65.lr.ph.i ], [ %inc124.i, %for.inc123.i ]
  %arrayidx67.i = getelementptr inbounds i32* %call10.i, i64 %indvars.iv632.i
  %16 = load i32* %arrayidx67.i, align 4, !tbaa !3
  %arrayidx69.i = getelementptr inbounds i32* %call18.i, i64 %indvars.iv632.i
  %17 = load i32* %arrayidx69.i, align 4, !tbaa !3
  switch i32 %17, label %sw.default118.i [
    i32 0, label %sw.bb70.i
    i32 1, label %sw.bb85.i
    i32 2, label %sw.bb96.i
    i32 3, label %sw.bb107.i
  ]

sw.bb70.i:                                        ; preds = %for.body65.i
  %idxprom71.i = sext i32 %i0.0601.i to i64
  %arrayidx72.i = getelementptr inbounds i32* %call54.i, i64 %idxprom71.i
  %18 = trunc i64 %indvars.iv632.i to i32
  store i32 %18, i32* %arrayidx72.i, align 4, !tbaa !3
  %add73.i = add nsw i32 %i0.0601.i, 1
  %idxprom74.i = sext i32 %add73.i to i64
  %arrayidx75.i = getelementptr inbounds i32* %call54.i, i64 %idxprom74.i
  store i32 %18, i32* %arrayidx75.i, align 4, !tbaa !3
  %idxprom76.i = sext i32 %16 to i64
  %arrayidx77.i = getelementptr inbounds i32* %call55.i, i64 %idxprom76.i
  store i32 %i0.0601.i, i32* %arrayidx77.i, align 4, !tbaa !3
  br i1 %cmp28.i, label %if.then79.i, label %if.end83.i

if.then79.i:                                      ; preds = %sw.bb70.i
  %call81.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([42 x i8]* @.str28, i64 0, i64 0), i32 %18, i32 %16, i32 %i0.0601.i, i32 %add73.i) #6
  %call82.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then79.i, %sw.bb70.i
  %add84.i = add nsw i32 %i0.0601.i, 2
  br label %for.inc123.i

sw.bb85.i:                                        ; preds = %for.body65.i
  %idxprom86.i = sext i32 %i1.0600.i to i64
  %arrayidx87.i = getelementptr inbounds i32* %call54.i, i64 %idxprom86.i
  %19 = trunc i64 %indvars.iv632.i to i32
  store i32 %19, i32* %arrayidx87.i, align 4, !tbaa !3
  %idxprom88.i = sext i32 %16 to i64
  %arrayidx89.i = getelementptr inbounds i32* %call55.i, i64 %idxprom88.i
  store i32 %i1.0600.i, i32* %arrayidx89.i, align 4, !tbaa !3
  br i1 %cmp28.i, label %if.then91.i, label %if.end94.i

if.then91.i:                                      ; preds = %sw.bb85.i
  %call92.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([35 x i8]* @.str29, i64 0, i64 0), i32 %19, i32 %16, i32 %i1.0600.i) #6
  %call93.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then91.i, %sw.bb85.i
  %inc95.i = add nsw i32 %i1.0600.i, 1
  br label %for.inc123.i

sw.bb96.i:                                        ; preds = %for.body65.i
  %idxprom97.i = sext i32 %i2.0598.i to i64
  %arrayidx98.i = getelementptr inbounds i32* %call54.i, i64 %idxprom97.i
  %20 = trunc i64 %indvars.iv632.i to i32
  store i32 %20, i32* %arrayidx98.i, align 4, !tbaa !3
  %idxprom99.i = sext i32 %16 to i64
  %arrayidx100.i = getelementptr inbounds i32* %call55.i, i64 %idxprom99.i
  store i32 %i2.0598.i, i32* %arrayidx100.i, align 4, !tbaa !3
  br i1 %cmp28.i, label %if.then102.i, label %if.end105.i

if.then102.i:                                     ; preds = %sw.bb96.i
  %call103.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([35 x i8]* @.str30, i64 0, i64 0), i32 %20, i32 %16, i32 %i2.0598.i) #6
  %call104.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then102.i, %sw.bb96.i
  %inc106.i = add nsw i32 %i2.0598.i, 1
  br label %for.inc123.i

sw.bb107.i:                                       ; preds = %for.body65.i
  %idxprom108.i = sext i32 %i12.0599.i to i64
  %arrayidx109.i = getelementptr inbounds i32* %call54.i, i64 %idxprom108.i
  %21 = trunc i64 %indvars.iv632.i to i32
  store i32 %21, i32* %arrayidx109.i, align 4, !tbaa !3
  %idxprom110.i = sext i32 %16 to i64
  %arrayidx111.i = getelementptr inbounds i32* %call55.i, i64 %idxprom110.i
  store i32 %i12.0599.i, i32* %arrayidx111.i, align 4, !tbaa !3
  br i1 %cmp28.i, label %if.then113.i, label %if.end116.i

if.then113.i:                                     ; preds = %sw.bb107.i
  %call114.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([37 x i8]* @.str31, i64 0, i64 0), i32 %21, i32 %16, i32 %i12.0599.i) #6
  %call115.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then113.i, %sw.bb107.i
  %inc117.i = add nsw i32 %i12.0599.i, 1
  br label %for.inc123.i

sw.default118.i:                                  ; preds = %for.body65.i
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call121.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([46 x i8]* @.str32, i64 0, i64 0), i32 %y.1597.i, i32 %16, i32 %y.1597.i, i32 %17) #6
  call void @exit(i32 -1) #7
  unreachable

for.inc123.i:                                     ; preds = %if.end116.i, %if.end105.i, %if.end94.i, %if.end83.i
  %i2.1.i = phi i32 [ %i2.0598.i, %if.end116.i ], [ %inc106.i, %if.end105.i ], [ %i2.0598.i, %if.end94.i ], [ %i2.0598.i, %if.end83.i ]
  %i12.1.i = phi i32 [ %inc117.i, %if.end116.i ], [ %i12.0599.i, %if.end105.i ], [ %i12.0599.i, %if.end94.i ], [ %i12.0599.i, %if.end83.i ]
  %i1.1.i = phi i32 [ %i1.0600.i, %if.end116.i ], [ %i1.0600.i, %if.end105.i ], [ %inc95.i, %if.end94.i ], [ %i1.0600.i, %if.end83.i ]
  %i0.1.i = phi i32 [ %i0.0601.i, %if.end116.i ], [ %i0.0601.i, %if.end105.i ], [ %i0.0601.i, %if.end94.i ], [ %add84.i, %if.end83.i ]
  %indvars.iv.next633.i = add i64 %indvars.iv632.i, 1
  %inc124.i = add nsw i32 %y.1597.i, 1
  %23 = trunc i64 %indvars.iv.next633.i to i32
  %cmp64.i = icmp slt i32 %23, %call.i
  br i1 %cmp64.i, label %for.body65.i, label %for.end125.i

for.end125.i:                                     ; preds = %for.inc123.i, %if.end53.i
  br i1 %cmp28.i, label %if.then127.i, label %if.end133.i

if.then127.i:                                     ; preds = %for.end125.i
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %3) #5
  %call129.i = call i32 @IV_writeForHumanEye(%struct._IV* %call36, %struct._IO_FILE* %3) #6
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %3) #5
  %call131.i = call i32 @IVfp80(%struct._IO_FILE* %3, i32 %10, i32* %call55.i, i32 80, i32* %ierr.i) #6
  %call132.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then127.i, %for.end125.i
  %call134.i = call %struct._Network* @Network_new() #6
  call void @Network_init(%struct._Network* %call134.i, i32 %add47.i, i32 0) #6
  br i1 %cmp33608.i, label %for.body137.i, label %createNetwork.exit

for.body137.i:                                    ; preds = %if.end133.i, %for.inc287.i
  %indvars.iv625.i = phi i64 [ %indvars.iv.next626.i, %for.inc287.i ], [ 0, %if.end133.i ]
  %y.2592.i = phi i32 [ %inc288.i, %for.inc287.i ], [ 0, %if.end133.i ]
  %arrayidx139.i = getelementptr inbounds i32* %call10.i, i64 %indvars.iv625.i
  %26 = load i32* %arrayidx139.i, align 4, !tbaa !3
  %idxprom140.i = sext i32 %26 to i64
  %arrayidx141.i = getelementptr inbounds i32* %call55.i, i64 %idxprom140.i
  %27 = load i32* %arrayidx141.i, align 4, !tbaa !3
  br i1 %cmp24.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.body137.i
  %arrayidx144.i = getelementptr inbounds i32* %12, i64 %idxprom140.i
  %28 = load i32* %arrayidx144.i, align 4, !tbaa !3
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body137.i
  %cond.i = phi i32 [ %28, %cond.true.i ], [ 1, %for.body137.i ]
  br i1 %cmp28.i, label %if.then146.i, label %if.end149.i

if.then146.i:                                     ; preds = %cond.end.i
  %29 = trunc i64 %indvars.iv625.i to i32
  %call147.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([53 x i8]* @.str35, i64 0, i64 0), i32 %29, i32 %26, i32 %27, i32 %cond.i) #6
  %call148.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.then146.i, %cond.end.i
  %arrayidx151.i = getelementptr inbounds i32* %call18.i, i64 %indvars.iv625.i
  %30 = load i32* %arrayidx151.i, align 4, !tbaa !3
  switch i32 %30, label %sw.default282.i [
    i32 0, label %sw.bb152.i
    i32 1, label %sw.bb188.i
    i32 2, label %sw.bb235.i
    i32 3, label %sw.bb271.i
  ]

sw.bb152.i:                                       ; preds = %if.end149.i
  %add153.i = add nsw i32 %27, 1
  call void @Network_addArc(%struct._Network* %call134.i, i32 %27, i32 %add153.i, i32 %cond.i, i32 0) #6
  br i1 %cmp28.i, label %if.then155.i, label %if.end158.i

if.then155.i:                                     ; preds = %sw.bb152.i
  %call156.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8]* @.str36, i64 0, i64 0), i32 %26, i32 %26, i32 %27, i32 %add153.i) #6
  %call157.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end158.i

if.end158.i:                                      ; preds = %if.then155.i, %sw.bb152.i
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %26, i32* %vsize.i, i32** %vadj.i) #6
  %31 = load i32* %vsize.i, align 4, !tbaa !3
  %cmp160587.i = icmp sgt i32 %31, 0
  br i1 %cmp160587.i, label %for.body161.i, label %for.inc287.i

for.body161.i:                                    ; preds = %for.inc185.i, %if.end158.i
  %32 = phi i32 [ %31, %if.end158.i ], [ %38, %for.inc185.i ]
  %indvars.iv619.i = phi i64 [ 0, %if.end158.i ], [ %indvars.iv.next620.i, %for.inc185.i ]
  %33 = load i32** %vadj.i, align 8, !tbaa !0
  %arrayidx163.i = getelementptr inbounds i32* %33, i64 %indvars.iv619.i
  %34 = load i32* %arrayidx163.i, align 4, !tbaa !3
  %cmp164.i = icmp sge i32 %34, %10
  %cmp165.i = icmp eq i32 %26, %34
  %or.cond578.i = or i1 %cmp164.i, %cmp165.i
  br i1 %or.cond578.i, label %for.inc185.i, label %land.lhs.true166.i

land.lhs.true166.i:                               ; preds = %for.body161.i
  %idxprom167.i = sext i32 %34 to i64
  %arrayidx168.i = getelementptr inbounds i32* %call55.i, i64 %idxprom167.i
  %35 = load i32* %arrayidx168.i, align 4, !tbaa !3
  %cmp169.i = icmp eq i32 %35, -1
  br i1 %cmp169.i, label %for.inc185.i, label %if.then170.i

if.then170.i:                                     ; preds = %land.lhs.true166.i
  %idxprom171.i = sext i32 %35 to i64
  %arrayidx172.i = getelementptr inbounds i32* %call54.i, i64 %idxprom171.i
  %36 = load i32* %arrayidx172.i, align 4, !tbaa !3
  %idxprom173.i = sext i32 %36 to i64
  %arrayidx174.i = getelementptr inbounds i32* %call18.i, i64 %idxprom173.i
  %37 = load i32* %arrayidx174.i, align 4, !tbaa !3
  %cmp175.i = icmp eq i32 %37, 0
  br i1 %cmp175.i, label %if.then176.i, label %for.inc185.i

if.then176.i:                                     ; preds = %if.then170.i
  br i1 %cmp28.i, label %if.then179.i, label %if.end182.i

if.then179.i:                                     ; preds = %if.then176.i
  %call180.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8]* @.str36, i64 0, i64 0), i32 %26, i32 %34, i32 %add153.i, i32 %35) #6
  %call181.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.then179.i, %if.then176.i
  call void @Network_addArc(%struct._Network* %call134.i, i32 %add153.i, i32 %35, i32 %maxcap.0.i, i32 0) #6
  %.pre.i = load i32* %vsize.i, align 4, !tbaa !3
  br label %for.inc185.i

for.inc185.i:                                     ; preds = %if.end182.i, %if.then170.i, %land.lhs.true166.i, %for.body161.i
  %38 = phi i32 [ %32, %for.body161.i ], [ %32, %land.lhs.true166.i ], [ %.pre.i, %if.end182.i ], [ %32, %if.then170.i ]
  %indvars.iv.next620.i = add i64 %indvars.iv619.i, 1
  %39 = trunc i64 %indvars.iv.next620.i to i32
  %cmp160.i = icmp slt i32 %39, %38
  br i1 %cmp160.i, label %for.body161.i, label %for.inc287.i

sw.bb188.i:                                       ; preds = %if.end149.i
  call void @Network_addArc(%struct._Network* %call134.i, i32 0, i32 %27, i32 %cond.i, i32 0) #6
  br i1 %cmp28.i, label %if.then190.i, label %if.end193.i

if.then190.i:                                     ; preds = %sw.bb188.i
  %call191.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([34 x i8]* @.str37, i64 0, i64 0), i32 %26, i32 0, i32 %27) #6
  %call192.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end193.i

if.end193.i:                                      ; preds = %if.then190.i, %sw.bb188.i
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %26, i32* %vsize.i, i32** %vadj.i) #6
  %40 = load i32* %vsize.i, align 4, !tbaa !3
  %cmp195584.i = icmp sgt i32 %40, 0
  br i1 %cmp195584.i, label %for.body196.i, label %for.inc287.i

for.body196.i:                                    ; preds = %for.inc232.i, %if.end193.i
  %indvars.iv617.i = phi i64 [ 0, %if.end193.i ], [ %indvars.iv.next618.i, %for.inc232.i ]
  %41 = load i32** %vadj.i, align 8, !tbaa !0
  %arrayidx198.i = getelementptr inbounds i32* %41, i64 %indvars.iv617.i
  %42 = load i32* %arrayidx198.i, align 4, !tbaa !3
  br i1 %cmp28.i, label %if.then200.i, label %if.end203.i

if.then200.i:                                     ; preds = %for.body196.i
  %call201.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0), i32 %42) #6
  %call202.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end203.i

if.end203.i:                                      ; preds = %if.then200.i, %for.body196.i
  %cmp204.i = icmp sge i32 %42, %10
  %cmp206.i = icmp eq i32 %26, %42
  %or.cond579.i = or i1 %cmp204.i, %cmp206.i
  br i1 %or.cond579.i, label %for.inc232.i, label %land.lhs.true207.i

land.lhs.true207.i:                               ; preds = %if.end203.i
  %idxprom208.i = sext i32 %42 to i64
  %arrayidx209.i = getelementptr inbounds i32* %call55.i, i64 %idxprom208.i
  %43 = load i32* %arrayidx209.i, align 4, !tbaa !3
  %cmp210.i = icmp eq i32 %43, -1
  br i1 %cmp210.i, label %for.inc232.i, label %if.then211.i

if.then211.i:                                     ; preds = %land.lhs.true207.i
  %idxprom212.i = sext i32 %43 to i64
  %arrayidx213.i = getelementptr inbounds i32* %call54.i, i64 %idxprom212.i
  %44 = load i32* %arrayidx213.i, align 4, !tbaa !3
  br i1 %cmp28.i, label %if.then215.i, label %if.end220.i

if.then215.i:                                     ; preds = %if.then211.i
  %call216.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([12 x i8]* @.str39, i64 0, i64 0), i32 %43) #6
  %call217.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  %call218.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([12 x i8]* @.str40, i64 0, i64 0), i32 %44) #6
  %call219.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.then215.i, %if.then211.i
  %idxprom221.i = sext i32 %44 to i64
  %arrayidx222.i = getelementptr inbounds i32* %call18.i, i64 %idxprom221.i
  %45 = load i32* %arrayidx222.i, align 4, !tbaa !3
  %cmp223.i = icmp eq i32 %45, 1
  br i1 %cmp223.i, label %for.inc232.i, label %if.then224.i

if.then224.i:                                     ; preds = %if.end220.i
  br i1 %cmp28.i, label %if.then226.i, label %if.end229.i

if.then226.i:                                     ; preds = %if.then224.i
  %call227.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8]* @.str41, i64 0, i64 0), i32 %26, i32 %42, i32 %27, i32 %43) #6
  %call228.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end229.i

if.end229.i:                                      ; preds = %if.then226.i, %if.then224.i
  call void @Network_addArc(%struct._Network* %call134.i, i32 %27, i32 %43, i32 %maxcap.0.i, i32 0) #6
  br label %for.inc232.i

for.inc232.i:                                     ; preds = %if.end220.i, %land.lhs.true207.i, %if.end203.i, %if.end229.i
  %indvars.iv.next618.i = add i64 %indvars.iv617.i, 1
  %46 = load i32* %vsize.i, align 4, !tbaa !3
  %47 = trunc i64 %indvars.iv.next618.i to i32
  %cmp195.i = icmp slt i32 %47, %46
  br i1 %cmp195.i, label %for.body196.i, label %for.inc287.i

sw.bb235.i:                                       ; preds = %if.end149.i
  call void @Network_addArc(%struct._Network* %call134.i, i32 %27, i32 %add46.i, i32 %cond.i, i32 0) #6
  br i1 %cmp28.i, label %if.then237.i, label %if.end240.i

if.then237.i:                                     ; preds = %sw.bb235.i
  %call238.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([32 x i8]* @.str42, i64 0, i64 0), i32 %26, i32 %27, i32 %add46.i) #6
  %call239.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end240.i

if.end240.i:                                      ; preds = %if.then237.i, %sw.bb235.i
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %26, i32* %vsize.i, i32** %vadj.i) #6
  %48 = load i32* %vsize.i, align 4, !tbaa !3
  %cmp242581.i = icmp sgt i32 %48, 0
  br i1 %cmp242581.i, label %for.body243.i, label %for.inc287.i

for.body243.i:                                    ; preds = %for.inc268.i, %if.end240.i
  %49 = phi i32 [ %48, %if.end240.i ], [ %55, %for.inc268.i ]
  %indvars.iv.i = phi i64 [ 0, %if.end240.i ], [ %indvars.iv.next.i, %for.inc268.i ]
  %50 = load i32** %vadj.i, align 8, !tbaa !0
  %arrayidx245.i = getelementptr inbounds i32* %50, i64 %indvars.iv.i
  %51 = load i32* %arrayidx245.i, align 4, !tbaa !3
  %cmp246.i = icmp sge i32 %51, %10
  %cmp248.i = icmp eq i32 %26, %51
  %or.cond580.i = or i1 %cmp246.i, %cmp248.i
  br i1 %or.cond580.i, label %for.inc268.i, label %land.lhs.true249.i

land.lhs.true249.i:                               ; preds = %for.body243.i
  %idxprom250.i = sext i32 %51 to i64
  %arrayidx251.i = getelementptr inbounds i32* %call55.i, i64 %idxprom250.i
  %52 = load i32* %arrayidx251.i, align 4, !tbaa !3
  %cmp252.i = icmp eq i32 %52, -1
  br i1 %cmp252.i, label %for.inc268.i, label %if.then253.i

if.then253.i:                                     ; preds = %land.lhs.true249.i
  %idxprom254.i = sext i32 %52 to i64
  %arrayidx255.i = getelementptr inbounds i32* %call54.i, i64 %idxprom254.i
  %53 = load i32* %arrayidx255.i, align 4, !tbaa !3
  %idxprom256.i = sext i32 %53 to i64
  %arrayidx257.i = getelementptr inbounds i32* %call18.i, i64 %idxprom256.i
  %54 = load i32* %arrayidx257.i, align 4, !tbaa !3
  %cmp258.i = icmp eq i32 %54, 0
  br i1 %cmp258.i, label %if.then259.i, label %for.inc268.i

if.then259.i:                                     ; preds = %if.then253.i
  %add260.i = add nsw i32 %52, 1
  br i1 %cmp28.i, label %if.then262.i, label %if.end265.i

if.then262.i:                                     ; preds = %if.then259.i
  %call263.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8]* @.str41, i64 0, i64 0), i32 %51, i32 %26, i32 %add260.i, i32 %27) #6
  %call264.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end265.i

if.end265.i:                                      ; preds = %if.then262.i, %if.then259.i
  call void @Network_addArc(%struct._Network* %call134.i, i32 %add260.i, i32 %27, i32 %maxcap.0.i, i32 0) #6
  %.pre639.i = load i32* %vsize.i, align 4, !tbaa !3
  br label %for.inc268.i

for.inc268.i:                                     ; preds = %if.end265.i, %if.then253.i, %land.lhs.true249.i, %for.body243.i
  %55 = phi i32 [ %49, %for.body243.i ], [ %49, %land.lhs.true249.i ], [ %.pre639.i, %if.end265.i ], [ %49, %if.then253.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %56 = trunc i64 %indvars.iv.next.i to i32
  %cmp242.i = icmp slt i32 %56, %55
  br i1 %cmp242.i, label %for.body243.i, label %for.inc287.i

sw.bb271.i:                                       ; preds = %if.end149.i
  call void @Network_addArc(%struct._Network* %call134.i, i32 0, i32 %27, i32 %cond.i, i32 0) #6
  br i1 %cmp28.i, label %if.then273.i, label %for.inc287.critedge.i

if.then273.i:                                     ; preds = %sw.bb271.i
  %call274.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([34 x i8]* @.str37, i64 0, i64 0), i32 %26, i32 0, i32 %27) #6
  %call275.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  call void @Network_addArc(%struct._Network* %call134.i, i32 %27, i32 %add46.i, i32 %cond.i, i32 0) #6
  %call279.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([32 x i8]* @.str42, i64 0, i64 0), i32 %26, i32 %27, i32 %add46.i) #6
  %call280.i = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %for.inc287.i

sw.default282.i:                                  ; preds = %if.end149.i
  %57 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call285.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([46 x i8]* @.str32, i64 0, i64 0), i32 %y.2592.i, i32 %26, i32 %y.2592.i, i32 %30) #6
  call void @exit(i32 -1) #7
  unreachable

for.inc287.critedge.i:                            ; preds = %sw.bb271.i
  call void @Network_addArc(%struct._Network* %call134.i, i32 %27, i32 %add46.i, i32 %cond.i, i32 0) #6
  br label %for.inc287.i

for.inc287.i:                                     ; preds = %for.inc185.i, %for.inc232.i, %for.inc268.i, %for.inc287.critedge.i, %if.then273.i, %if.end240.i, %if.end193.i, %if.end158.i
  %indvars.iv.next626.i = add i64 %indvars.iv625.i, 1
  %inc288.i = add nsw i32 %y.2592.i, 1
  %58 = trunc i64 %indvars.iv.next626.i to i32
  %cmp136.i = icmp slt i32 %58, %call.i
  br i1 %cmp136.i, label %for.body137.i, label %createNetwork.exit

createNetwork.exit:                               ; preds = %for.inc287.i, %if.end133.i
  call void @IVfree(i32* %call55.i) #6
  call void @llvm.lifetime.end(i64 4, i8* %7) #5
  call void @llvm.lifetime.end(i64 4, i8* %8) #5
  call void @llvm.lifetime.end(i64 8, i8* %9) #5
  call void @Network_setMessageInfo(%struct._Network* %call134.i, i32 %4, %struct._IO_FILE* %3) #6
  %nnode38 = getelementptr inbounds %struct._Network* %call134.i, i64 0, i32 0
  %59 = load i32* %nnode38, align 4, !tbaa !3
  %cmp39 = icmp sgt i32 %4, 1
  br i1 %cmp39, label %if.then41, label %if.end44

if.then41:                                        ; preds = %createNetwork.exit
  %narc = getelementptr inbounds %struct._Network* %call134.i, i64 0, i32 1
  %60 = load i32* %narc, align 4, !tbaa !3
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8]* @.str3, i64 0, i64 0), i32 %59, i32 %60) #6
  %call43 = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %createNetwork.exit
  br i1 %cmp28.i, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @Network_writeForHumanEye(%struct._Network* %call134.i, %struct._IO_FILE* %3) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44
  call void @Network_findMaxFlow(%struct._Network* %call134.i) #6
  br i1 %cmp39, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end48
  %ntrav = getelementptr inbounds %struct._Network* %call134.i, i64 0, i32 2
  %61 = load i32* %ntrav, align 4, !tbaa !3
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), i32 %61) #6
  %call53 = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end48
  br i1 %cmp28.i, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @Network_writeForHumanEye(%struct._Network* %call134.i, %struct._IO_FILE* %3) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54
  %62 = load i32* %call24, align 4, !tbaa !3
  %conv59 = sitofp i32 %62 to float
  %arrayidx60 = getelementptr inbounds i32* %call24, i64 1
  %63 = load i32* %arrayidx60, align 4, !tbaa !3
  %conv61 = sitofp i32 %63 to float
  %arrayidx62 = getelementptr inbounds i32* %call24, i64 2
  %64 = load i32* %arrayidx62, align 4, !tbaa !3
  %conv63 = sitofp i32 %64 to float
  %call64 = call fastcc float @eval(float %alpha, float %conv59, float %conv61, float %conv63) #8
  br i1 %cmp39, label %if.then67, label %if.end93

if.then67:                                        ; preds = %if.end58
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([37 x i8]* @.str5, i64 0, i64 0), i32 %62, i32 %63, i32 %64) #6
  %65 = load i32* %arrayidx60, align 4, !tbaa !3
  %66 = load i32* %arrayidx62, align 4, !tbaa !3
  %cmp74 = icmp sle i32 %65, %66
  %cond = select i1 %cmp74, i32 %65, i32 %66
  %cmp82 = icmp eq i32 %cond, 0
  br i1 %cmp82, label %if.then84, label %if.else

if.then84:                                        ; preds = %if.then67
  %67 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %3)
  br label %if.end89

if.else:                                          ; preds = %if.then67
  %cmp76 = icmp sgt i32 %65, %66
  %cond81 = select i1 %cmp76, i32 %65, i32 %66
  %conv86 = sitofp i32 %cond81 to double
  %conv87 = sitofp i32 %cond to double
  %div = fdiv double %conv86, %conv87
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([20 x i8]* @.str7, i64 0, i64 0), double %div) #6
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.then84
  %conv90 = fpext float %call64 to double
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), double %conv90) #6
  %call92 = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end93

if.end93:                                         ; preds = %if.end89, %if.end58
  %call94 = call %struct._Ideq* @Ideq_new() #6
  %call95 = call i32 @Ideq_resize(%struct._Ideq* %call94, i32 %59) #6
  %call96 = call i32* @IVinit(i32 %59, i32 -1) #6
  %call97 = call i32* @IVinit(i32 %call, i32 -1) #6
  %call98 = call i32* @IVinit(i32 %call, i32 -1) #6
  call void @Network_findMincutFromSource(%struct._Network* %call134.i, %struct._Ideq* %call94, i32* %call96) #6
  br i1 %cmp28, label %if.then101, label %if.end113.critedge

if.then101:                                       ; preds = %if.end93
  %68 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str9, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %3)
  %call103 = call i32 @IVfp80(%struct._IO_FILE* %3, i32 %59, i32* %call96, i32 80, i32* %ierr) #6
  %call104 = call i32 @fflush(%struct._IO_FILE* %3) #6
  %call106 = call i32* @IV_entries(%struct._IV* %call36) #6
  call fastcc void @getNewCompids(i32 %59, i32* %call106, i32* %call16, i32* %call96, i32* %call97, i32 %4, %struct._IO_FILE* %3) #8
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %3)
  %call111 = call i32 @IVfp80(%struct._IO_FILE* %3, i32 %call, i32* %call97, i32 80, i32* %ierr) #6
  %call112 = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end113

if.end113.critedge:                               ; preds = %if.end93
  %call106.c = call i32* @IV_entries(%struct._IV* %call36) #6
  call fastcc void @getNewCompids(i32 %59, i32* %call106.c, i32* %call16, i32* %call96, i32* %call97, i32 %4, %struct._IO_FILE* %3) #8
  br label %if.end113

if.end113:                                        ; preds = %if.end113.critedge, %if.then101
  %arrayidx114 = getelementptr inbounds [3 x i32]* %deltas, i64 0, i64 2
  store i32 0, i32* %arrayidx114, align 4, !tbaa !3
  %arrayidx115 = getelementptr inbounds [3 x i32]* %deltas, i64 0, i64 1
  store i32 0, i32* %arrayidx115, align 4, !tbaa !3
  %arrayidx116 = getelementptr inbounds [3 x i32]* %deltas, i64 0, i64 0
  store i32 0, i32* %arrayidx116, align 4, !tbaa !3
  %cmp117696 = icmp sgt i32 %call, 0
  br i1 %cmp117696, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end113
  %cmp124 = icmp sgt i32 %4, 5
  %cmp133 = icmp eq i32* %2, null
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv720 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next721, %for.inc ]
  %arrayidx119 = getelementptr inbounds i32* %call8, i64 %indvars.iv720
  %70 = load i32* %arrayidx119, align 4, !tbaa !3
  %idxprom120 = sext i32 %70 to i64
  %arrayidx121 = getelementptr inbounds i32* %call23, i64 %idxprom120
  %71 = load i32* %arrayidx121, align 4, !tbaa !3
  %arrayidx123 = getelementptr inbounds i32* %call97, i64 %indvars.iv720
  %72 = load i32* %arrayidx123, align 4, !tbaa !3
  br i1 %cmp124, label %if.then126, label %if.end129

if.then126:                                       ; preds = %for.body
  %73 = trunc i64 %indvars.iv720 to i32
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str11, i64 0, i64 0), i32 %73, i32 %70, i32 %71, i32 %72) #6
  %call128 = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %for.body
  %cmp130 = icmp eq i32 %71, %72
  br i1 %cmp130, label %for.inc, label %if.then132

if.then132:                                       ; preds = %if.end129
  br i1 %cmp133, label %cond.end139, label %cond.true135

cond.true135:                                     ; preds = %if.then132
  %arrayidx137 = getelementptr inbounds i32* %2, i64 %idxprom120
  %74 = load i32* %arrayidx137, align 4, !tbaa !3
  br label %cond.end139

cond.end139:                                      ; preds = %if.then132, %cond.true135
  %cond140 = phi i32 [ %74, %cond.true135 ], [ 1, %if.then132 ]
  %idxprom141 = sext i32 %71 to i64
  %arrayidx142 = getelementptr inbounds [3 x i32]* %deltas, i64 0, i64 %idxprom141
  %75 = load i32* %arrayidx142, align 4, !tbaa !3
  %sub = sub nsw i32 %75, %cond140
  store i32 %sub, i32* %arrayidx142, align 4, !tbaa !3
  %idxprom143 = sext i32 %72 to i64
  %arrayidx144 = getelementptr inbounds [3 x i32]* %deltas, i64 0, i64 %idxprom143
  %76 = load i32* %arrayidx144, align 4, !tbaa !3
  %add = add nsw i32 %76, %cond140
  store i32 %add, i32* %arrayidx144, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.end129, %cond.end139
  %indvars.iv.next721 = add i64 %indvars.iv720, 1
  %lftr.wideiv722 = trunc i64 %indvars.iv.next721 to i32
  %exitcond723 = icmp eq i32 %lftr.wideiv722, %call
  br i1 %exitcond723, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  %.pre = load i32* %arrayidx116, align 4, !tbaa !3
  %.pre736 = load i32* %arrayidx115, align 4, !tbaa !3
  %.pre737 = load i32* %arrayidx114, align 4, !tbaa !3
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end113
  %77 = phi i32 [ %.pre737, %for.cond.for.end_crit_edge ], [ 0, %if.end113 ]
  %78 = phi i32 [ %.pre736, %for.cond.for.end_crit_edge ], [ 0, %if.end113 ]
  %79 = phi i32 [ %.pre, %for.cond.for.end_crit_edge ], [ 0, %if.end113 ]
  %80 = load i32* %call24, align 4, !tbaa !3
  %add148 = add nsw i32 %79, %80
  %conv149 = sitofp i32 %add148 to float
  %81 = load i32* %arrayidx60, align 4, !tbaa !3
  %add152 = add nsw i32 %78, %81
  %conv153 = sitofp i32 %add152 to float
  %82 = load i32* %arrayidx62, align 4, !tbaa !3
  %add156 = add nsw i32 %77, %82
  %conv157 = sitofp i32 %add156 to float
  %call158 = call fastcc float @eval(float %alpha, float %conv149, float %conv153, float %conv157) #8
  br i1 %cmp39, label %if.then161, label %if.end207.thread

if.end207.thread:                                 ; preds = %for.end
  call void @Network_findMincutFromSink(%struct._Network* %call134.i, %struct._Ideq* %call94, i32* %call96) #6
  br label %if.end222.critedge

if.then161:                                       ; preds = %for.end
  %call175 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([38 x i8]* @.str12, i64 0, i64 0), i32 %add148, i32 %add152, i32 %add156) #6
  %83 = load i32* %arrayidx60, align 4, !tbaa !3
  %add178 = add nsw i32 %78, %83
  %84 = load i32* %arrayidx62, align 4, !tbaa !3
  %add181 = add nsw i32 %77, %84
  %cmp182 = icmp sle i32 %add178, %add181
  %cond187 = select i1 %cmp182, i32 %add178, i32 %add181
  %cmp194 = icmp eq i32 %cond187, 0
  br i1 %cmp194, label %if.then196, label %if.else198

if.then196:                                       ; preds = %if.then161
  %85 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %3)
  br label %if.end207

if.else198:                                       ; preds = %if.then161
  %cmp188 = icmp sgt i32 %add178, %add181
  %cond193 = select i1 %cmp188, i32 %add178, i32 %add181
  %conv199 = sitofp i32 %cond193 to double
  %conv200 = sitofp i32 %cond187 to double
  %div201 = fdiv double %conv199, %conv200
  %call202 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([20 x i8]* @.str7, i64 0, i64 0), double %div201) #6
  br label %if.end207

if.end207:                                        ; preds = %if.then196, %if.else198
  %conv204 = fpext float %call158 to double
  %call205 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), double %conv204) #6
  %call206 = call i32 @fflush(%struct._IO_FILE* %3) #6
  call void @Network_findMincutFromSink(%struct._Network* %call134.i, %struct._Ideq* %call94, i32* %call96) #6
  %cmp208 = icmp sgt i32 %4, 3
  br i1 %cmp208, label %if.then210, label %if.end222.critedge

if.then210:                                       ; preds = %if.end207
  %86 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str14, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %3)
  %call212 = call i32 @IVfp80(%struct._IO_FILE* %3, i32 %59, i32* %call96, i32 80, i32* %ierr) #6
  %call213 = call i32 @fflush(%struct._IO_FILE* %3) #6
  %call215 = call i32* @IV_entries(%struct._IV* %call36) #6
  call fastcc void @getNewCompids(i32 %59, i32* %call215, i32* %call16, i32* %call96, i32* %call98, i32 %4, %struct._IO_FILE* %3) #8
  %87 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %3)
  %call220 = call i32 @IVfp80(%struct._IO_FILE* %3, i32 %call, i32* %call98, i32 80, i32* %ierr) #6
  %call221 = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end222

if.end222.critedge:                               ; preds = %if.end207.thread, %if.end207
  %call215.c = call i32* @IV_entries(%struct._IV* %call36) #6
  call fastcc void @getNewCompids(i32 %59, i32* %call215.c, i32* %call16, i32* %call96, i32* %call98, i32 %4, %struct._IO_FILE* %3) #8
  br label %if.end222

if.end222:                                        ; preds = %if.end222.critedge, %if.then210
  store i32 0, i32* %arrayidx114, align 4, !tbaa !3
  store i32 0, i32* %arrayidx115, align 4, !tbaa !3
  store i32 0, i32* %arrayidx116, align 4, !tbaa !3
  br i1 %cmp117696, label %for.body229.lr.ph, label %for.end256

for.body229.lr.ph:                                ; preds = %if.end222
  %cmp239 = icmp eq i32* %2, null
  br label %for.body229

for.body229:                                      ; preds = %for.inc254, %for.body229.lr.ph
  %indvars.iv716 = phi i64 [ 0, %for.body229.lr.ph ], [ %indvars.iv.next717, %for.inc254 ]
  %arrayidx231 = getelementptr inbounds i32* %call8, i64 %indvars.iv716
  %88 = load i32* %arrayidx231, align 4, !tbaa !3
  %idxprom232 = sext i32 %88 to i64
  %arrayidx233 = getelementptr inbounds i32* %call23, i64 %idxprom232
  %89 = load i32* %arrayidx233, align 4, !tbaa !3
  %arrayidx235 = getelementptr inbounds i32* %call98, i64 %indvars.iv716
  %90 = load i32* %arrayidx235, align 4, !tbaa !3
  %cmp236 = icmp eq i32 %89, %90
  br i1 %cmp236, label %for.inc254, label %if.then238

if.then238:                                       ; preds = %for.body229
  br i1 %cmp239, label %cond.end245, label %cond.true241

cond.true241:                                     ; preds = %if.then238
  %arrayidx243 = getelementptr inbounds i32* %2, i64 %idxprom232
  %91 = load i32* %arrayidx243, align 4, !tbaa !3
  br label %cond.end245

cond.end245:                                      ; preds = %if.then238, %cond.true241
  %cond246 = phi i32 [ %91, %cond.true241 ], [ 1, %if.then238 ]
  %idxprom247 = sext i32 %89 to i64
  %arrayidx248 = getelementptr inbounds [3 x i32]* %deltas, i64 0, i64 %idxprom247
  %92 = load i32* %arrayidx248, align 4, !tbaa !3
  %sub249 = sub nsw i32 %92, %cond246
  store i32 %sub249, i32* %arrayidx248, align 4, !tbaa !3
  %idxprom250 = sext i32 %90 to i64
  %arrayidx251 = getelementptr inbounds [3 x i32]* %deltas, i64 0, i64 %idxprom250
  %93 = load i32* %arrayidx251, align 4, !tbaa !3
  %add252 = add nsw i32 %93, %cond246
  store i32 %add252, i32* %arrayidx251, align 4, !tbaa !3
  br label %for.inc254

for.inc254:                                       ; preds = %for.body229, %cond.end245
  %indvars.iv.next717 = add i64 %indvars.iv716, 1
  %lftr.wideiv718 = trunc i64 %indvars.iv.next717 to i32
  %exitcond719 = icmp eq i32 %lftr.wideiv718, %call
  br i1 %exitcond719, label %for.cond226.for.end256_crit_edge, label %for.body229

for.cond226.for.end256_crit_edge:                 ; preds = %for.inc254
  %.pre738 = load i32* %arrayidx116, align 4, !tbaa !3
  %.pre739 = load i32* %arrayidx115, align 4, !tbaa !3
  %.pre740 = load i32* %arrayidx114, align 4, !tbaa !3
  br label %for.end256

for.end256:                                       ; preds = %for.cond226.for.end256_crit_edge, %if.end222
  %94 = phi i32 [ %.pre740, %for.cond226.for.end256_crit_edge ], [ 0, %if.end222 ]
  %95 = phi i32 [ %.pre739, %for.cond226.for.end256_crit_edge ], [ 0, %if.end222 ]
  %96 = phi i32 [ %.pre738, %for.cond226.for.end256_crit_edge ], [ 0, %if.end222 ]
  %97 = load i32* %call24, align 4, !tbaa !3
  %add259 = add nsw i32 %96, %97
  %conv260 = sitofp i32 %add259 to float
  %98 = load i32* %arrayidx60, align 4, !tbaa !3
  %add263 = add nsw i32 %95, %98
  %conv264 = sitofp i32 %add263 to float
  %99 = load i32* %arrayidx62, align 4, !tbaa !3
  %add267 = add nsw i32 %94, %99
  %conv268 = sitofp i32 %add267 to float
  %call269 = call fastcc float @eval(float %alpha, float %conv260, float %conv264, float %conv268) #8
  br i1 %cmp39, label %if.then272, label %if.end318

if.then272:                                       ; preds = %for.end256
  %call286 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([36 x i8]* @.str16, i64 0, i64 0), i32 %add259, i32 %add263, i32 %add267) #6
  %100 = load i32* %arrayidx60, align 4, !tbaa !3
  %add289 = add nsw i32 %95, %100
  %101 = load i32* %arrayidx62, align 4, !tbaa !3
  %add292 = add nsw i32 %94, %101
  %cmp293 = icmp sle i32 %add289, %add292
  %cond298 = select i1 %cmp293, i32 %add289, i32 %add292
  %cmp305 = icmp eq i32 %cond298, 0
  br i1 %cmp305, label %if.then307, label %if.else309

if.then307:                                       ; preds = %if.then272
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %3)
  br label %if.end314

if.else309:                                       ; preds = %if.then272
  %cmp299 = icmp sgt i32 %add289, %add292
  %cond304 = select i1 %cmp299, i32 %add289, i32 %add292
  %conv310 = sitofp i32 %cond304 to double
  %conv311 = sitofp i32 %cond298 to double
  %div312 = fdiv double %conv310, %conv311
  %call313 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([20 x i8]* @.str7, i64 0, i64 0), double %div312) #6
  br label %if.end314

if.end314:                                        ; preds = %if.else309, %if.then307
  %conv315 = fpext float %call269 to double
  %call316 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), double %conv315) #6
  %call317 = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end318

if.end318:                                        ; preds = %if.end314, %for.end256
  %cmp319 = fcmp ole float %call158, %call269
  %cmp321 = fcmp olt float %call158, %call64
  %or.cond687 = and i1 %cmp319, %cmp321
  br i1 %or.cond687, label %if.then323, label %if.else370

if.then323:                                       ; preds = %if.end318
  br i1 %cmp39, label %if.then326, label %for.cond330.preheader

if.then326:                                       ; preds = %if.then323
  %103 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str17, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %3)
  %call328 = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %for.cond330.preheader

for.cond330.preheader:                            ; preds = %if.then326, %if.then323
  br i1 %cmp117696, label %for.body333.lr.ph, label %for.end362

for.body333.lr.ph:                                ; preds = %for.cond330.preheader
  %cmp345 = icmp eq i32* %2, null
  br label %for.body333

for.body333:                                      ; preds = %for.inc360, %for.body333.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body333.lr.ph ], [ %indvars.iv.next, %for.inc360 ]
  %arrayidx335 = getelementptr inbounds i32* %call8, i64 %indvars.iv
  %104 = load i32* %arrayidx335, align 4, !tbaa !3
  %idxprom336 = sext i32 %104 to i64
  %arrayidx337 = getelementptr inbounds i32* %call23, i64 %idxprom336
  %105 = load i32* %arrayidx337, align 4, !tbaa !3
  %arrayidx339 = getelementptr inbounds i32* %call97, i64 %indvars.iv
  %106 = load i32* %arrayidx339, align 4, !tbaa !3
  %cmp340 = icmp eq i32 %105, %106
  br i1 %cmp340, label %for.inc360, label %if.then342

if.then342:                                       ; preds = %for.body333
  store i32 %106, i32* %arrayidx337, align 4, !tbaa !3
  br i1 %cmp345, label %cond.end351, label %cond.true347

cond.true347:                                     ; preds = %if.then342
  %arrayidx349 = getelementptr inbounds i32* %2, i64 %idxprom336
  %107 = load i32* %arrayidx349, align 4, !tbaa !3
  br label %cond.end351

cond.end351:                                      ; preds = %if.then342, %cond.true347
  %cond352 = phi i32 [ %107, %cond.true347 ], [ 1, %if.then342 ]
  %idxprom353 = sext i32 %105 to i64
  %arrayidx354 = getelementptr inbounds i32* %call24, i64 %idxprom353
  %108 = load i32* %arrayidx354, align 4, !tbaa !3
  %sub355 = sub nsw i32 %108, %cond352
  store i32 %sub355, i32* %arrayidx354, align 4, !tbaa !3
  %idxprom356 = sext i32 %106 to i64
  %arrayidx357 = getelementptr inbounds i32* %call24, i64 %idxprom356
  %109 = load i32* %arrayidx357, align 4, !tbaa !3
  %add358 = add nsw i32 %109, %cond352
  store i32 %add358, i32* %arrayidx357, align 4, !tbaa !3
  br label %for.inc360

for.inc360:                                       ; preds = %for.body333, %cond.end351
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call
  br i1 %exitcond, label %for.end362, label %for.body333

for.end362:                                       ; preds = %for.inc360, %for.cond330.preheader
  br i1 %cmp39, label %if.then365, label %if.end424

if.then365:                                       ; preds = %for.end362
  %conv366 = fpext float %call158 to double
  %call367 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8]* @.str18, i64 0, i64 0), double %conv366) #6
  %call368 = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end424

if.else370:                                       ; preds = %if.end318
  %cmp371 = fcmp ole float %call269, %call158
  %cmp374 = fcmp olt float %call269, %call64
  %or.cond688 = and i1 %cmp371, %cmp374
  br i1 %or.cond688, label %if.then376, label %if.end424

if.then376:                                       ; preds = %if.else370
  br i1 %cmp39, label %if.then379, label %for.cond383.preheader

if.then379:                                       ; preds = %if.then376
  %110 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str19, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %3)
  %call381 = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %for.cond383.preheader

for.cond383.preheader:                            ; preds = %if.then379, %if.then376
  br i1 %cmp117696, label %for.body386.lr.ph, label %for.end415

for.body386.lr.ph:                                ; preds = %for.cond383.preheader
  %cmp398 = icmp eq i32* %2, null
  br label %for.body386

for.body386:                                      ; preds = %for.inc413, %for.body386.lr.ph
  %indvars.iv712 = phi i64 [ 0, %for.body386.lr.ph ], [ %indvars.iv.next713, %for.inc413 ]
  %arrayidx388 = getelementptr inbounds i32* %call8, i64 %indvars.iv712
  %111 = load i32* %arrayidx388, align 4, !tbaa !3
  %idxprom389 = sext i32 %111 to i64
  %arrayidx390 = getelementptr inbounds i32* %call23, i64 %idxprom389
  %112 = load i32* %arrayidx390, align 4, !tbaa !3
  %arrayidx392 = getelementptr inbounds i32* %call98, i64 %indvars.iv712
  %113 = load i32* %arrayidx392, align 4, !tbaa !3
  %cmp393 = icmp eq i32 %112, %113
  br i1 %cmp393, label %for.inc413, label %if.then395

if.then395:                                       ; preds = %for.body386
  store i32 %113, i32* %arrayidx390, align 4, !tbaa !3
  br i1 %cmp398, label %cond.end404, label %cond.true400

cond.true400:                                     ; preds = %if.then395
  %arrayidx402 = getelementptr inbounds i32* %2, i64 %idxprom389
  %114 = load i32* %arrayidx402, align 4, !tbaa !3
  br label %cond.end404

cond.end404:                                      ; preds = %if.then395, %cond.true400
  %cond405 = phi i32 [ %114, %cond.true400 ], [ 1, %if.then395 ]
  %idxprom406 = sext i32 %112 to i64
  %arrayidx407 = getelementptr inbounds i32* %call24, i64 %idxprom406
  %115 = load i32* %arrayidx407, align 4, !tbaa !3
  %sub408 = sub nsw i32 %115, %cond405
  store i32 %sub408, i32* %arrayidx407, align 4, !tbaa !3
  %idxprom409 = sext i32 %113 to i64
  %arrayidx410 = getelementptr inbounds i32* %call24, i64 %idxprom409
  %116 = load i32* %arrayidx410, align 4, !tbaa !3
  %add411 = add nsw i32 %116, %cond405
  store i32 %add411, i32* %arrayidx410, align 4, !tbaa !3
  br label %for.inc413

for.inc413:                                       ; preds = %for.body386, %cond.end404
  %indvars.iv.next713 = add i64 %indvars.iv712, 1
  %lftr.wideiv714 = trunc i64 %indvars.iv.next713 to i32
  %exitcond715 = icmp eq i32 %lftr.wideiv714, %call
  br i1 %exitcond715, label %for.end415, label %for.body386

for.end415:                                       ; preds = %for.inc413, %for.cond383.preheader
  br i1 %cmp39, label %if.then418, label %if.end424

if.then418:                                       ; preds = %for.end415
  %conv419 = fpext float %call269 to double
  %call420 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([14 x i8]* @.str18, i64 0, i64 0), double %conv419) #6
  %call421 = call i32 @fflush(%struct._IO_FILE* %3) #6
  br label %if.end424

if.end424:                                        ; preds = %if.else370, %if.then418, %for.end415, %for.end362, %if.then365
  %bestcost.0 = phi float [ %call158, %if.then365 ], [ %call158, %for.end362 ], [ %call269, %if.then418 ], [ %call269, %for.end415 ], [ %call64, %if.else370 ]
  call void @Network_free(%struct._Network* %call134.i) #6
  call void @IV_free(%struct._IV* %call36) #6
  call void @IVfree(i32* %call96) #6
  call void @IVfree(i32* %call97) #6
  call void @IVfree(i32* %call98) #6
  call void @Ideq_free(%struct._Ideq* %call94) #6
  ret float %bestcost.0
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #1

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare %struct._IV* @IV_new() #1

; Function Attrs: optsize
declare void @Network_setMessageInfo(%struct._Network*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @Network_writeForHumanEye(%struct._Network*, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare void @Network_findMaxFlow(%struct._Network*) #1

; Function Attrs: nounwind optsize readnone uwtable
define internal fastcc float @eval(float %alpha, float %wS, float %wB, float %wW) #4 {
entry:
  %cmp = fcmp oeq float %wB, 0.000000e+00
  %cmp1 = fcmp oeq float %wW, 0.000000e+00
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = fadd float %wS, %wB
  %add2 = fadd float %add, %wW
  %mul = fmul float %add2, %add2
  br label %if.end20

if.else:                                          ; preds = %entry
  %cmp5 = fcmp ult float %wB, %wW
  %conv = fpext float %wS to double
  br i1 %cmp5, label %if.else12, label %if.then6

if.then6:                                         ; preds = %if.else
  %mul7 = fmul float %alpha, %wB
  %div = fdiv float %mul7, %wW
  %conv8 = fpext float %div to double
  %add9 = fadd double %conv8, 1.000000e+00
  %mul10 = fmul double %conv, %add9
  %conv11 = fptrunc double %mul10 to float
  br label %if.end20

if.else12:                                        ; preds = %if.else
  %mul14 = fmul float %alpha, %wW
  %div15 = fdiv float %mul14, %wB
  %conv16 = fpext float %div15 to double
  %add17 = fadd double %conv16, 1.000000e+00
  %mul18 = fmul double %conv, %add17
  %conv19 = fptrunc double %mul18 to float
  br label %if.end20

if.end20:                                         ; preds = %if.then6, %if.else12, %if.then
  %cost.0 = phi float [ %mul, %if.then ], [ %conv11, %if.then6 ], [ %conv19, %if.else12 ]
  ret float %cost.0
}

; Function Attrs: optsize
declare %struct._Ideq* @Ideq_new() #1

; Function Attrs: optsize
declare i32 @Ideq_resize(%struct._Ideq*, i32) #1

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #1

; Function Attrs: optsize
declare void @Network_findMincutFromSource(%struct._Network*, %struct._Ideq*, i32*) #1

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @getNewCompids(i32 %nnode, i32* nocapture %NYmap, i32* nocapture %YCmap, i32* nocapture %mark, i32* nocapture %Ycompids, i32 %msglvl, %struct._IO_FILE* nocapture %msgFile) #0 {
entry:
  %sub = add nsw i32 %nnode, -1
  %cmp103 = icmp sgt i32 %sub, 1
  br i1 %cmp103, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, 2
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %ynet.0104 = phi i32 [ 1, %while.body.lr.ph ], [ %ynet.1, %while.cond.backedge ]
  %idxprom = sext i32 %ynet.0104 to i64
  %arrayidx = getelementptr inbounds i32* %NYmap, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom2 = sext i32 %0 to i64
  %arrayidx3 = getelementptr inbounds i32* %YCmap, i64 %idxprom2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %1 = load i32* %arrayidx3, align 4, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i32 %ynet.0104, i32 %0, i32 %0, i32 %1) #6
  %call4 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  br label %if.end

if.end:                                           ; preds = %while.body, %if.then
  %2 = load i32* %arrayidx3, align 4, !tbaa !3
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
    i32 2, label %sw.bb32
    i32 3, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end
  %arrayidx8 = getelementptr inbounds i32* %mark, i64 %idxprom
  %3 = load i32* %arrayidx8, align 4, !tbaa !3
  %add = add nsw i32 %ynet.0104, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i32* %mark, i64 %idxprom9
  %4 = load i32* %arrayidx10, align 4, !tbaa !3
  %cmp11 = icmp eq i32 %3, %4
  %arrayidx18 = getelementptr inbounds i32* %Ycompids, i64 %idxprom2
  %.100 = select i1 %cmp11, i32 %3, i32 0
  store i32 %.100, i32* %arrayidx18, align 4, !tbaa !3
  %add20 = add nsw i32 %ynet.0104, 2
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  %arrayidx23 = getelementptr inbounds i32* %mark, i64 %idxprom
  %5 = load i32* %arrayidx23, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %5, 1
  %arrayidx27 = getelementptr inbounds i32* %Ycompids, i64 %idxprom2
  %. = zext i1 %cmp24 to i32
  store i32 %., i32* %arrayidx27, align 4, !tbaa !3
  %inc = add nsw i32 %ynet.0104, 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  %arrayidx34 = getelementptr inbounds i32* %mark, i64 %idxprom
  %6 = load i32* %arrayidx34, align 4, !tbaa !3
  %cmp35 = icmp eq i32 %6, 2
  %arrayidx38 = getelementptr inbounds i32* %Ycompids, i64 %idxprom2
  %.99 = select i1 %cmp35, i32 2, i32 0
  store i32 %.99, i32* %arrayidx38, align 4, !tbaa !3
  %inc43 = add nsw i32 %ynet.0104, 1
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end
  %arrayidx46 = getelementptr inbounds i32* %Ycompids, i64 %idxprom2
  store i32 0, i32* %arrayidx46, align 4, !tbaa !3
  %inc47 = add nsw i32 %ynet.0104, 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([68 x i8]* @.str21, i64 0, i64 0), i32 %ynet.0104, i32 %0, i32 %0, i32 %2) #6
  tail call void @exit(i32 -1) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb44, %sw.bb32, %sw.bb21, %sw.bb
  %8 = phi i32 [ 0, %sw.bb44 ], [ %.99, %sw.bb32 ], [ %., %sw.bb21 ], [ %.100, %sw.bb ]
  %ynet.1 = phi i32 [ %inc47, %sw.bb44 ], [ %inc43, %sw.bb32 ], [ %inc, %sw.bb21 ], [ %add20, %sw.bb ]
  br i1 %cmp1, label %if.then52, label %while.cond.backedge

if.then52:                                        ; preds = %sw.epilog
  %call55 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([20 x i8]* @.str22, i64 0, i64 0), i32 %0, i32 %8) #6
  %call56 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then52, %sw.epilog
  %cmp = icmp slt i32 %ynet.1, %sub
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.cond.backedge, %entry
  ret void
}

; Function Attrs: optsize
declare void @Network_findMincutFromSink(%struct._Network*, %struct._Ideq*, i32*) #1

; Function Attrs: optsize
declare void @Network_free(%struct._Network*) #1

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #1

; Function Attrs: optsize
declare void @IVfree(i32*) #1

; Function Attrs: optsize
declare void @Ideq_free(%struct._Ideq*) #1

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #1

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #1

; Function Attrs: optsize
declare %struct._Network* @Network_new() #1

; Function Attrs: optsize
declare void @Network_init(%struct._Network*, i32, i32) #1

; Function Attrs: optsize
declare void @Network_addArc(%struct._Network*, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
