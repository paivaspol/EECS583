; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/debug.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7prior_s = type { i32, i32, [200 x float], [200 x [7 x float]], i32, [200 x float], [200 x [20 x float]], i32, [200 x float], [200 x [20 x float]] }

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"BOGUS\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"protein\00", align 1
@.str12 = private unnamed_addr constant [13 x i8] c"nucleic acid\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str14 = private unnamed_addr constant [20 x i8] c" [ trace is NULL ]\0A\00", align 1
@.str15 = private unnamed_addr constant [37 x i8] c"st  node   rpos  - traceback len %d\0A\00", align 1
@.str16 = private unnamed_addr constant [17 x i8] c"--  ---- ------\0A\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"%1s  %4d %6d\0A\00", align 1
@.str18 = private unnamed_addr constant [58 x i8] c"oi, you can't print scores from that hmm, it's not ready.\00", align 1
@.str19 = private unnamed_addr constant [54 x i8] c"st  node   rpos  transit emission - traceback len %d\0A\00", align 1
@.str20 = private unnamed_addr constant [35 x i8] c"--  ---- ------  ------- --------\0A\00", align 1
@.str21 = private unnamed_addr constant [18 x i8] c"%1s  %4d %6d  %7d\00", align 1
@.str22 = private unnamed_addr constant [8 x i8] c" %8d %c\00", align 1
@Alphabet = external global [25 x i8]
@.str23 = private unnamed_addr constant [8 x i8] c" %8s %c\00", align 1
@.str24 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str26 = private unnamed_addr constant [35 x i8] c"                 ------- --------\0A\00", align 1
@.str27 = private unnamed_addr constant [24 x i8] c"           total: %6d\0A\0A\00", align 1
@.str28 = private unnamed_addr constant [11 x i8] c"Dirichlet\0A\00", align 1
@.str29 = private unnamed_addr constant [5 x i8] c"PAM\0A\00", align 1
@.str30 = private unnamed_addr constant [18 x i8] c"No such strategy.\00", align 1
@Alphabet_type = external global i32
@.str31 = private unnamed_addr constant [7 x i8] c"Amino\0A\00", align 1
@.str32 = private unnamed_addr constant [9 x i8] c"Nucleic\0A\00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c"\0A%d\0A\00", align 1
@.str34 = private unnamed_addr constant [6 x i8] c"%.4f\0A\00", align 1
@.str35 = private unnamed_addr constant [6 x i8] c"%.4f \00", align 1
@Alphabet_size = external global i32
@switch.table = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0)]

; Function Attrs: nounwind optsize readnone uwtable
define i8* @Statetype(i8 signext %st) #0 {
entry:
  %conv = sext i8 %st to i32
  %switch.tableidx = add i32 %conv, -1
  %0 = icmp ult i32 %switch.tableidx, 10
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [10 x i8*]* @switch.table, i64 0, i64 %1
  %switch.load = load i8** %switch.gep, align 8
  ret i8* %switch.load

return:                                           ; preds = %entry
  ret i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readnone uwtable
define i8* @AlphabetType2String(i32 %type) #0 {
entry:
  switch i32 %type, label %sw.default [
    i32 3, label %return
    i32 2, label %sw.bb1
    i32 0, label %sw.bb2
  ]

sw.bb1:                                           ; preds = %entry
  br label %return

sw.bb2:                                           ; preds = %entry
  br label %return

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %sw.default, %sw.bb2, %sw.bb1
  %retval.0 = phi i8* [ getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), %sw.default ], [ getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([13 x i8]* @.str12, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @P7PrintTrace(%struct._IO_FILE* nocapture %fp, %struct.p7trace_s* %tr, %struct.plan7_s* %hmm, i8* %dsq) #1 {
entry:
  %cmp = icmp eq %struct.p7trace_s* %tr, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str14, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %fp)
  br label %if.end205

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.plan7_s* %hmm, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0
  %1 = load i32* %tlen, align 4, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([37 x i8]* @.str15, i64 0, i64 0), i32 %1) #6
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %fp)
  %3 = load i32* %tlen, align 4, !tbaa !0
  %cmp6312 = icmp sgt i32 %3, 0
  br i1 %cmp6312, label %for.body.lr.ph, label %if.end205

for.body.lr.ph:                                   ; preds = %if.then2
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %Statetype.exit
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %Statetype.exit ]
  %4 = load i8** %statetype, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %4, i64 %indvars.iv
  %5 = load i8* %arrayidx, align 1, !tbaa !1
  %conv.i = sext i8 %5 to i32
  %switch.tableidx.i = add i32 %conv.i, -1
  %6 = icmp ult i32 %switch.tableidx.i, 10
  br i1 %6, label %switch.lookup.i, label %Statetype.exit

switch.lookup.i:                                  ; preds = %for.body
  %7 = sext i32 %switch.tableidx.i to i64
  %switch.gep.i = getelementptr inbounds [10 x i8*]* @switch.table, i64 0, i64 %7
  %switch.load.i = load i8** %switch.gep.i, align 8
  br label %Statetype.exit

Statetype.exit:                                   ; preds = %for.body, %switch.lookup.i
  %call7303 = phi i8* [ %switch.load.i, %switch.lookup.i ], [ getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), %for.body ]
  %8 = load i32** %nodeidx, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds i32* %8, i64 %indvars.iv
  %9 = load i32* %arrayidx9, align 4, !tbaa !0
  %10 = load i32** %pos, align 8, !tbaa !3
  %arrayidx11 = getelementptr inbounds i32* %10, i64 %indvars.iv
  %11 = load i32* %arrayidx11, align 4, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* %call7303, i32 %9, i32 %11) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = load i32* %tlen, align 4, !tbaa !0
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp6 = icmp slt i32 %13, %12
  br i1 %cmp6, label %for.body, label %if.end205

if.else:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %14 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %14, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0)) #6
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  %tlen15 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0
  %15 = load i32* %tlen15, align 4, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([54 x i8]* @.str19, i64 0, i64 0), i32 %15) #6
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str20, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %fp)
  %17 = load i32* %tlen15, align 4, !tbaa !0
  %cmp20314 = icmp sgt i32 %17, 0
  br i1 %cmp20314, label %for.body21.lr.ph, label %for.end202

for.body21.lr.ph:                                 ; preds = %if.end14
  %cmp22 = icmp ne i8* %dsq, null
  %pos25 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  %statetype31 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %nodeidx35 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32
  br label %for.body21

for.body21:                                       ; preds = %for.body21.lr.ph, %if.end198
  %18 = phi i32 [ %17, %for.body21.lr.ph ], [ %73, %if.end198 ]
  %indvars.iv320 = phi i64 [ 0, %for.body21.lr.ph ], [ %indvars.iv.next321, %if.end198 ]
  %sym.0316 = phi i32 [ undef, %for.body21.lr.ph ], [ %sym.1, %if.end198 ]
  %sc.0315 = phi i32 [ 0, %for.body21.lr.ph ], [ %sc.2, %if.end198 ]
  br i1 %cmp22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %for.body21
  %19 = load i32** %pos25, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds i32* %19, i64 %indvars.iv320
  %20 = load i32* %arrayidx26, align 4, !tbaa !0
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds i8* %dsq, i64 %idxprom27
  %21 = load i8* %arrayidx28, align 1, !tbaa !1
  %conv = sext i8 %21 to i32
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %for.body21
  %sym.1 = phi i32 [ %conv, %if.then23 ], [ %sym.0316, %for.body21 ]
  %22 = load i8** %statetype31, align 8, !tbaa !3
  %arrayidx32 = getelementptr inbounds i8* %22, i64 %indvars.iv320
  %23 = load i8* %arrayidx32, align 1, !tbaa !1
  %conv.i304 = sext i8 %23 to i32
  %switch.tableidx.i305 = add i32 %conv.i304, -1
  %24 = icmp ult i32 %switch.tableidx.i305, 10
  br i1 %24, label %switch.lookup.i308, label %Statetype.exit310

switch.lookup.i308:                               ; preds = %if.end29
  %25 = sext i32 %switch.tableidx.i305 to i64
  %switch.gep.i306 = getelementptr inbounds [10 x i8*]* @switch.table, i64 0, i64 %25
  %switch.load.i307 = load i8** %switch.gep.i306, align 8
  br label %Statetype.exit310

Statetype.exit310:                                ; preds = %if.end29, %switch.lookup.i308
  %call33311 = phi i8* [ %switch.load.i307, %switch.lookup.i308 ], [ getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), %if.end29 ]
  %26 = load i32** %nodeidx35, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds i32* %26, i64 %indvars.iv320
  %27 = load i32* %arrayidx36, align 4, !tbaa !0
  %28 = load i32** %pos25, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds i32* %28, i64 %indvars.iv320
  %29 = load i32* %arrayidx39, align 4, !tbaa !0
  %sub = add nsw i32 %18, -1
  %30 = trunc i64 %indvars.iv320 to i32
  %cmp41 = icmp slt i32 %30, %sub
  br i1 %cmp41, label %cond.true, label %cond.end

cond.true:                                        ; preds = %Statetype.exit310
  %31 = add nsw i64 %indvars.iv320, 1
  %arrayidx51 = getelementptr inbounds i8* %22, i64 %31
  %32 = load i8* %arrayidx51, align 1, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32* %26, i64 %31
  %33 = load i32* %arrayidx55, align 4, !tbaa !0
  %call56 = tail call i32 @TransitionScoreLookup(%struct.plan7_s* %hmm, i8 signext %23, i32 %27, i8 signext %32, i32 %33) #6
  br label %cond.end

cond.end:                                         ; preds = %Statetype.exit310, %cond.true
  %cond = phi i32 [ %call56, %cond.true ], [ 0, %Statetype.exit310 ]
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str21, i64 0, i64 0), i8* %call33311, i32 %27, i32 %29, i32 %cond) #6
  %34 = load i32* %tlen15, align 4, !tbaa !0
  %sub59 = add nsw i32 %34, -1
  %cmp60 = icmp slt i32 %30, %sub59
  br i1 %cmp60, label %if.then62, label %if.end79

if.then62:                                        ; preds = %cond.end
  %35 = load i8** %statetype31, align 8, !tbaa !3
  %arrayidx65 = getelementptr inbounds i8* %35, i64 %indvars.iv320
  %36 = load i8* %arrayidx65, align 1, !tbaa !1
  %37 = load i32** %nodeidx35, align 8, !tbaa !3
  %arrayidx68 = getelementptr inbounds i32* %37, i64 %indvars.iv320
  %38 = load i32* %arrayidx68, align 4, !tbaa !0
  %39 = add nsw i64 %indvars.iv320, 1
  %arrayidx72 = getelementptr inbounds i8* %35, i64 %39
  %40 = load i8* %arrayidx72, align 1, !tbaa !1
  %arrayidx76 = getelementptr inbounds i32* %37, i64 %39
  %41 = load i32* %arrayidx76, align 4, !tbaa !0
  %call77 = tail call i32 @TransitionScoreLookup(%struct.plan7_s* %hmm, i8 signext %36, i32 %38, i8 signext %40, i32 %41) #6
  %add78 = add nsw i32 %call77, %sc.0315
  br label %if.end79

if.end79:                                         ; preds = %if.then62, %cond.end
  %sc.1 = phi i32 [ %add78, %if.then62 ], [ %sc.0315, %cond.end ]
  br i1 %cmp22, label %if.then82, label %if.else196

if.then82:                                        ; preds = %if.end79
  %42 = load i8** %statetype31, align 8, !tbaa !3
  %arrayidx85 = getelementptr inbounds i8* %42, i64 %indvars.iv320
  %43 = load i8* %arrayidx85, align 1, !tbaa !1
  switch i8 %43, label %if.end198 [
    i8 1, label %if.then89
    i8 3, label %if.then117
    i8 5, label %land.lhs.true
    i8 8, label %land.lhs.true161
    i8 10, label %land.lhs.true176
  ]

if.then89:                                        ; preds = %if.then82
  %44 = load i32** %nodeidx35, align 8, !tbaa !3
  %arrayidx92 = getelementptr inbounds i32* %44, i64 %indvars.iv320
  %45 = load i32* %arrayidx92, align 4, !tbaa !0
  %idxprom93 = sext i32 %45 to i64
  %idxprom94 = sext i32 %sym.1 to i64
  %46 = load i32*** %msc, align 8, !tbaa !3
  %arrayidx95 = getelementptr inbounds i32** %46, i64 %idxprom94
  %47 = load i32** %arrayidx95, align 8, !tbaa !3
  %arrayidx96 = getelementptr inbounds i32* %47, i64 %idxprom93
  %48 = load i32* %arrayidx96, align 4, !tbaa !0
  %arrayidx98 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom94
  %49 = load i8* %arrayidx98, align 1, !tbaa !1
  %conv99 = sext i8 %49 to i32
  %call100 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), i32 %48, i32 %conv99) #6
  %50 = load i32** %nodeidx35, align 8, !tbaa !3
  %arrayidx103 = getelementptr inbounds i32* %50, i64 %indvars.iv320
  %51 = load i32* %arrayidx103, align 4, !tbaa !0
  %idxprom104 = sext i32 %51 to i64
  %52 = load i32*** %msc, align 8, !tbaa !3
  %arrayidx107 = getelementptr inbounds i32** %52, i64 %idxprom94
  %53 = load i32** %arrayidx107, align 8, !tbaa !3
  %arrayidx108 = getelementptr inbounds i32* %53, i64 %idxprom104
  %54 = load i32* %arrayidx108, align 4, !tbaa !0
  %add109 = add nsw i32 %54, %sc.1
  br label %if.end198

if.then117:                                       ; preds = %if.then82
  %55 = load i32** %nodeidx35, align 8, !tbaa !3
  %arrayidx120 = getelementptr inbounds i32* %55, i64 %indvars.iv320
  %56 = load i32* %arrayidx120, align 4, !tbaa !0
  %idxprom121 = sext i32 %56 to i64
  %idxprom122 = sext i32 %sym.1 to i64
  %57 = load i32*** %isc, align 8, !tbaa !3
  %arrayidx123 = getelementptr inbounds i32** %57, i64 %idxprom122
  %58 = load i32** %arrayidx123, align 8, !tbaa !3
  %arrayidx124 = getelementptr inbounds i32* %58, i64 %idxprom121
  %59 = load i32* %arrayidx124, align 4, !tbaa !0
  %arrayidx126 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom122
  %60 = load i8* %arrayidx126, align 1, !tbaa !1
  %conv127 = sext i8 %60 to i32
  %call128 = tail call i32 @tolower(i32 %conv127) #6
  %sext302 = shl i32 %call128, 24
  %conv130 = ashr exact i32 %sext302, 24
  %call131 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), i32 %59, i32 %conv130) #6
  %61 = load i32** %nodeidx35, align 8, !tbaa !3
  %arrayidx134 = getelementptr inbounds i32* %61, i64 %indvars.iv320
  %62 = load i32* %arrayidx134, align 4, !tbaa !0
  %idxprom135 = sext i32 %62 to i64
  %63 = load i32*** %isc, align 8, !tbaa !3
  %arrayidx138 = getelementptr inbounds i32** %63, i64 %idxprom122
  %64 = load i32** %arrayidx138, align 8, !tbaa !3
  %arrayidx139 = getelementptr inbounds i32* %64, i64 %idxprom135
  %65 = load i32* %arrayidx139, align 4, !tbaa !0
  %add140 = add nsw i32 %65, %sc.1
  br label %if.end198

land.lhs.true:                                    ; preds = %if.then82
  %66 = add nsw i64 %indvars.iv320, -1
  %arrayidx151 = getelementptr inbounds i8* %42, i64 %66
  %67 = load i8* %arrayidx151, align 1, !tbaa !1
  %cmp153 = icmp eq i8 %67, 5
  br i1 %cmp153, label %if.then184, label %if.end198

land.lhs.true161:                                 ; preds = %if.then82
  %68 = add nsw i64 %indvars.iv320, -1
  %arrayidx165 = getelementptr inbounds i8* %42, i64 %68
  %69 = load i8* %arrayidx165, align 1, !tbaa !1
  %cmp167 = icmp eq i8 %69, 8
  br i1 %cmp167, label %if.then184, label %if.end198

land.lhs.true176:                                 ; preds = %if.then82
  %70 = add nsw i64 %indvars.iv320, -1
  %arrayidx180 = getelementptr inbounds i8* %42, i64 %70
  %71 = load i8* %arrayidx180, align 1, !tbaa !1
  %cmp182 = icmp eq i8 %71, 10
  br i1 %cmp182, label %if.then184, label %if.end198

if.then184:                                       ; preds = %land.lhs.true176, %land.lhs.true161, %land.lhs.true
  %idxprom186 = sext i32 %sym.1 to i64
  %arrayidx187 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom186
  %72 = load i8* %arrayidx187, align 1, !tbaa !1
  %conv188 = sext i8 %72 to i32
  %call189 = tail call i32 @tolower(i32 %conv188) #6
  %sext = shl i32 %call189, 24
  %conv191 = ashr exact i32 %sext, 24
  %call192 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), i32 0, i32 %conv191) #6
  br label %if.end198

if.else196:                                       ; preds = %if.end79
  %call197 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str24, i64 0, i64 0), i32 45) #6
  br label %if.end198

if.end198:                                        ; preds = %if.then82, %land.lhs.true, %land.lhs.true161, %if.then89, %land.lhs.true176, %if.then184, %if.then117, %if.else196
  %sc.2 = phi i32 [ %add109, %if.then89 ], [ %add140, %if.then117 ], [ %sc.1, %if.then184 ], [ %sc.1, %land.lhs.true176 ], [ %sc.1, %if.else196 ], [ %sc.1, %land.lhs.true161 ], [ %sc.1, %land.lhs.true ], [ %sc.1, %if.then82 ]
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next321 = add i64 %indvars.iv320, 1
  %73 = load i32* %tlen15, align 4, !tbaa !0
  %74 = trunc i64 %indvars.iv.next321 to i32
  %cmp20 = icmp slt i32 %74, %73
  br i1 %cmp20, label %for.body21, label %for.end202

for.end202:                                       ; preds = %if.end198, %if.end14
  %sc.0.lcssa = phi i32 [ 0, %if.end14 ], [ %sc.2, %if.end198 ]
  %75 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str26, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %fp)
  %call204 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str27, i64 0, i64 0), i32 %sc.0.lcssa) #6
  br label %if.end205

if.end205:                                        ; preds = %if.then2, %Statetype.exit, %if.then, %for.end202
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare i32 @TransitionScoreLookup(%struct.plan7_s*, i8 signext, i32, i8 signext, i32) #3

; Function Attrs: nounwind optsize
declare i32 @tolower(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @P7PrintPrior(%struct._IO_FILE* nocapture %fp, %struct.p7prior_s* nocapture %pri) #1 {
entry:
  %strategy = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 0
  %0 = load i32* %strategy, align 4, !tbaa !0
  switch i32 %0, label %if.else5 [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

if.then:                                          ; preds = %entry
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str28, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %fp)
  br label %if.end6

if.then3:                                         ; preds = %entry
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str29, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %fp)
  br label %if.end6

if.else5:                                         ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([18 x i8]* @.str30, i64 0, i64 0)) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.else5, %if.then
  %3 = load i32* @Alphabet_type, align 4, !tbaa !0
  switch i32 %3, label %if.end15 [
    i32 3, label %if.then8
    i32 2, label %if.then12
  ]

if.then8:                                         ; preds = %if.end6
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str31, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %fp)
  br label %if.end15

if.then12:                                        ; preds = %if.end6
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str32, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %fp)
  br label %if.end15

if.end15:                                         ; preds = %if.end6, %if.then12, %if.then8
  %tnum = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 1
  %6 = load i32* %tnum, align 4, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i32 %6) #6
  %7 = load i32* %tnum, align 4, !tbaa !0
  %cmp18145 = icmp sgt i32 %7, 0
  br i1 %cmp18145, label %for.body, label %for.end33

for.body:                                         ; preds = %if.end15, %for.end
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.end ], [ 0, %if.end15 ]
  %arrayidx = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 2, i64 %indvars.iv155
  %8 = load float* %arrayidx, align 4, !tbaa !4
  %conv = fpext float %8 to double
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), double %conv) #6
  br label %for.body23

for.body23:                                       ; preds = %for.body23, %for.body
  %indvars.iv153 = phi i64 [ 0, %for.body ], [ %indvars.iv.next154, %for.body23 ]
  %arrayidx27 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 3, i64 %indvars.iv155, i64 %indvars.iv153
  %9 = load float* %arrayidx27, align 4, !tbaa !4
  %conv28 = fpext float %9 to double
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), double %conv28) #6
  %indvars.iv.next154 = add i64 %indvars.iv153, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next154 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 7
  br i1 %exitcond, label %for.end, label %for.body23

for.end:                                          ; preds = %for.body23
  %fputc135 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next156 = add i64 %indvars.iv155, 1
  %10 = load i32* %tnum, align 4, !tbaa !0
  %11 = trunc i64 %indvars.iv.next156 to i32
  %cmp18 = icmp slt i32 %11, %10
  br i1 %cmp18, label %for.body, label %for.end33

for.end33:                                        ; preds = %for.end, %if.end15
  %mnum = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 4
  %12 = load i32* %mnum, align 4, !tbaa !0
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i32 %12) #6
  %13 = load i32* %mnum, align 4, !tbaa !0
  %cmp37142 = icmp sgt i32 %13, 0
  br i1 %cmp37142, label %for.body39, label %for.end60

for.body39:                                       ; preds = %for.end33, %for.end56
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %for.end56 ], [ 0, %for.end33 ]
  %arrayidx41 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 5, i64 %indvars.iv151
  %14 = load float* %arrayidx41, align 4, !tbaa !4
  %conv42 = fpext float %14 to double
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), double %conv42) #6
  %15 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp45140 = icmp sgt i32 %15, 0
  br i1 %cmp45140, label %for.body47, label %for.end56

for.body47:                                       ; preds = %for.body39, %for.body47
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %for.body47 ], [ 0, %for.body39 ]
  %arrayidx51 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 6, i64 %indvars.iv151, i64 %indvars.iv149
  %16 = load float* %arrayidx51, align 4, !tbaa !4
  %conv52 = fpext float %16 to double
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), double %conv52) #6
  %indvars.iv.next150 = add i64 %indvars.iv149, 1
  %17 = load i32* @Alphabet_size, align 4, !tbaa !0
  %18 = trunc i64 %indvars.iv.next150 to i32
  %cmp45 = icmp slt i32 %18, %17
  br i1 %cmp45, label %for.body47, label %for.end56

for.end56:                                        ; preds = %for.body47, %for.body39
  %fputc132 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next152 = add i64 %indvars.iv151, 1
  %19 = load i32* %mnum, align 4, !tbaa !0
  %20 = trunc i64 %indvars.iv.next152 to i32
  %cmp37 = icmp slt i32 %20, %19
  br i1 %cmp37, label %for.body39, label %for.end60

for.end60:                                        ; preds = %for.end56, %for.end33
  %inum = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 7
  %21 = load i32* %inum, align 4, !tbaa !0
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i32 %21) #6
  %22 = load i32* %inum, align 4, !tbaa !0
  %cmp64138 = icmp sgt i32 %22, 0
  br i1 %cmp64138, label %for.body66, label %for.end87

for.body66:                                       ; preds = %for.end60, %for.end83
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %for.end83 ], [ 0, %for.end60 ]
  %arrayidx68 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 8, i64 %indvars.iv147
  %23 = load float* %arrayidx68, align 4, !tbaa !4
  %conv69 = fpext float %23 to double
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), double %conv69) #6
  %24 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp72136 = icmp sgt i32 %24, 0
  br i1 %cmp72136, label %for.body74, label %for.end83

for.body74:                                       ; preds = %for.body66, %for.body74
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body74 ], [ 0, %for.body66 ]
  %arrayidx78 = getelementptr inbounds %struct.p7prior_s* %pri, i64 0, i32 9, i64 %indvars.iv147, i64 %indvars.iv
  %25 = load float* %arrayidx78, align 4, !tbaa !4
  %conv79 = fpext float %25 to double
  %call80 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), double %conv79) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %26 = load i32* @Alphabet_size, align 4, !tbaa !0
  %27 = trunc i64 %indvars.iv.next to i32
  %cmp72 = icmp slt i32 %27, %26
  br i1 %cmp72, label %for.body74, label %for.end83

for.end83:                                        ; preds = %for.body74, %for.body66
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next148 = add i64 %indvars.iv147, 1
  %28 = load i32* %inum, align 4, !tbaa !0
  %29 = trunc i64 %indvars.iv.next148 to i32
  %cmp64 = icmp slt i32 %29, %28
  br i1 %cmp64, label %for.body66, label %for.end87

for.end87:                                        ; preds = %for.end83, %for.end60
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @TraceVerify(%struct.p7trace_s* nocapture %tr, i32 %M, i32 %N) #4 {
entry:
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %0 = load i8** %statetype, align 8, !tbaa !3
  %1 = load i8* %0, align 1, !tbaa !1
  %cmp = icmp eq i8 %1, 4
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr inbounds i8* %0, i64 1
  %2 = load i8* %arrayidx3, align 1, !tbaa !1
  %cmp5 = icmp eq i8 %2, 5
  br i1 %cmp5, label %if.end8, label %return

if.end8:                                          ; preds = %if.end
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0
  %3 = load i32* %tlen, align 4, !tbaa !0
  %sub = add nsw i32 %3, -2
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i8* %0, i64 %idxprom
  %4 = load i8* %arrayidx10, align 1, !tbaa !1
  %cmp12 = icmp eq i8 %4, 8
  br i1 %cmp12, label %if.end15, label %return

if.end15:                                         ; preds = %if.end8
  %sub17 = add nsw i32 %3, -1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx20 = getelementptr inbounds i8* %0, i64 %idxprom18
  %5 = load i8* %arrayidx20, align 1, !tbaa !1
  %cmp22 = icmp eq i8 %5, 9
  br i1 %cmp22, label %if.end25, label %return

if.end25:                                         ; preds = %if.end15
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  %6 = load i32** %pos, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds i32* %6, i64 1
  %7 = load i32* %arrayidx26, align 4, !tbaa !0
  %cmp27 = icmp eq i32 %7, 0
  br i1 %cmp27, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %if.end25
  %nodeidx301 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2
  %cmp32420 = icmp sgt i32 %3, 0
  br i1 %cmp32420, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub178 = add nsw i32 %M, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i32 [ 4, %for.body.lr.ph ], [ %phitmp, %for.inc.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %nm.0427 = phi i32 [ 0, %for.body.lr.ph ], [ %nm.1, %for.inc.for.body_crit_edge ]
  %nj.0426 = phi i32 [ 0, %for.body.lr.ph ], [ %nj.1, %for.inc.for.body_crit_edge ]
  %nc.0425 = phi i32 [ 0, %for.body.lr.ph ], [ %nc.1, %for.inc.for.body_crit_edge ]
  %nn.0424 = phi i32 [ 0, %for.body.lr.ph ], [ %nn.1, %for.inc.for.body_crit_edge ]
  %i.0423 = phi i32 [ 0, %for.body.lr.ph ], [ %i.4, %for.inc.for.body_crit_edge ]
  %k.0422 = phi i32 [ 0, %for.body.lr.ph ], [ %k.2, %for.inc.for.body_crit_edge ]
  switch i32 %8, label %return [
    i32 4, label %sw.bb
    i32 5, label %sw.bb63
    i32 6, label %sw.bb98
    i32 1, label %sw.bb113
    i32 3, label %sw.bb153
    i32 2, label %sw.bb188
    i32 7, label %sw.bb218
    i32 10, label %sw.bb233
    i32 8, label %sw.bb263
    i32 9, label %sw.bb293
  ]

sw.bb:                                            ; preds = %for.body
  %9 = load i32** %nodeidx301, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds i32* %9, i64 %indvars.iv
  %10 = load i32* %arrayidx39, align 4, !tbaa !0
  %cmp40 = icmp eq i32 %10, 0
  br i1 %cmp40, label %if.end43, label %return

if.end43:                                         ; preds = %sw.bb
  %arrayidx46 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %11 = load i32* %arrayidx46, align 4, !tbaa !0
  %12 = trunc i64 %indvars.iv to i32
  %13 = or i32 %k.0422, %12
  %14 = or i32 %13, %i.0423
  %15 = or i32 %14, %11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %for.inc, label %return

sw.bb63:                                          ; preds = %for.body
  %17 = load i32** %nodeidx301, align 8, !tbaa !3
  %arrayidx66 = getelementptr inbounds i32* %17, i64 %indvars.iv
  %18 = load i32* %arrayidx66, align 4, !tbaa !0
  %19 = or i32 %18, %k.0422
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %if.end74, label %return

if.end74:                                         ; preds = %sw.bb63
  %cmp75 = icmp sgt i32 %nn.0424, 0
  %arrayidx80 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %21 = load i32* %arrayidx80, align 4, !tbaa !0
  br i1 %cmp75, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.end74
  %add = add nsw i32 %i.0423, 1
  %cmp81 = icmp eq i32 %21, %add
  br i1 %cmp81, label %if.end96, label %return

if.else:                                          ; preds = %if.end74
  %22 = or i32 %21, %i.0423
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %if.end96, label %return

if.end96:                                         ; preds = %if.else, %if.then77
  %i.1 = phi i32 [ %21, %if.then77 ], [ %i.0423, %if.else ]
  %inc97 = add nsw i32 %nn.0424, 1
  br label %for.inc

sw.bb98:                                          ; preds = %for.body
  %24 = load i32** %nodeidx301, align 8, !tbaa !3
  %arrayidx101 = getelementptr inbounds i32* %24, i64 %indvars.iv
  %25 = load i32* %arrayidx101, align 4, !tbaa !0
  %cmp102 = icmp eq i32 %25, 0
  br i1 %cmp102, label %if.end105, label %return

if.end105:                                        ; preds = %sw.bb98
  %arrayidx108 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %26 = load i32* %arrayidx108, align 4, !tbaa !0
  %cmp109 = icmp eq i32 %26, 0
  br i1 %cmp109, label %for.inc, label %return

sw.bb113:                                         ; preds = %for.body
  %arrayidx116 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %27 = load i32* %arrayidx116, align 4, !tbaa !0
  %add117 = add nsw i32 %i.0423, 1
  %cmp118 = icmp eq i32 %27, %add117
  br i1 %cmp118, label %if.end121, label %return

if.end121:                                        ; preds = %sw.bb113
  %28 = load i32** %nodeidx301, align 8, !tbaa !3
  %arrayidx124 = getelementptr inbounds i32* %28, i64 %indvars.iv
  %29 = load i32* %arrayidx124, align 4, !tbaa !0
  %cmp125 = icmp slt i32 %29, 1
  %cmp130 = icmp sgt i32 %29, %M
  %or.cond = or i1 %cmp125, %cmp130
  br i1 %or.cond, label %return, label %if.end133

if.end133:                                        ; preds = %if.end121
  %cmp135 = icmp eq i32 %nm.0427, 0
  br i1 %cmp135, label %if.end151, label %if.else141

if.else141:                                       ; preds = %if.end133
  %add145 = add nsw i32 %k.0422, 1
  %cmp146 = icmp eq i32 %29, %add145
  br i1 %cmp146, label %if.end151, label %return

if.end151:                                        ; preds = %if.else141, %if.end133
  %inc152 = add nsw i32 %nm.0427, 1
  br label %for.inc

sw.bb153:                                         ; preds = %for.body
  %arrayidx156 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %30 = load i32* %arrayidx156, align 4, !tbaa !0
  %add157 = add nsw i32 %i.0423, 1
  %cmp158 = icmp eq i32 %30, %add157
  br i1 %cmp158, label %if.end161, label %return

if.end161:                                        ; preds = %sw.bb153
  %31 = load i32** %nodeidx301, align 8, !tbaa !3
  %arrayidx164 = getelementptr inbounds i32* %31, i64 %indvars.iv
  %32 = load i32* %arrayidx164, align 4, !tbaa !0
  %cmp165 = icmp ne i32 %32, %k.0422
  %cmp172 = icmp slt i32 %32, 1
  %or.cond417 = or i1 %cmp165, %cmp172
  br i1 %or.cond417, label %return, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %if.end161
  %cmp179 = icmp sle i32 %k.0422, %sub178
  %cmp183 = icmp slt i32 %k.0422, %M
  %or.cond418 = and i1 %cmp179, %cmp183
  br i1 %or.cond418, label %for.inc, label %return

sw.bb188:                                         ; preds = %for.body
  %arrayidx191 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %33 = load i32* %arrayidx191, align 4, !tbaa !0
  %cmp192 = icmp eq i32 %33, 0
  br i1 %cmp192, label %if.end195, label %return

if.end195:                                        ; preds = %sw.bb188
  %34 = load i32** %nodeidx301, align 8, !tbaa !3
  %arrayidx198 = getelementptr inbounds i32* %34, i64 %indvars.iv
  %35 = load i32* %arrayidx198, align 4, !tbaa !0
  %add199 = add nsw i32 %k.0422, 1
  %cmp200 = icmp eq i32 %35, %add199
  br i1 %cmp200, label %if.end203, label %return

if.end203:                                        ; preds = %if.end195
  %cmp207 = icmp slt i32 %k.0422, 0
  %cmp213 = icmp sge i32 %k.0422, %M
  %or.cond411 = or i1 %cmp207, %cmp213
  br i1 %or.cond411, label %return, label %for.inc

sw.bb218:                                         ; preds = %for.body
  %36 = load i32** %nodeidx301, align 8, !tbaa !3
  %arrayidx221 = getelementptr inbounds i32* %36, i64 %indvars.iv
  %37 = load i32* %arrayidx221, align 4, !tbaa !0
  %cmp222 = icmp eq i32 %37, 0
  br i1 %cmp222, label %if.end225, label %return

if.end225:                                        ; preds = %sw.bb218
  %arrayidx228 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %38 = load i32* %arrayidx228, align 4, !tbaa !0
  %cmp229 = icmp eq i32 %38, 0
  br i1 %cmp229, label %for.inc, label %return

sw.bb233:                                         ; preds = %for.body
  %39 = load i32** %nodeidx301, align 8, !tbaa !3
  %arrayidx236 = getelementptr inbounds i32* %39, i64 %indvars.iv
  %40 = load i32* %arrayidx236, align 4, !tbaa !0
  %cmp237 = icmp eq i32 %40, 0
  br i1 %cmp237, label %if.end240, label %return

if.end240:                                        ; preds = %sw.bb233
  %cmp241 = icmp sgt i32 %nj.0426, 0
  %arrayidx246 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %41 = load i32* %arrayidx246, align 4, !tbaa !0
  br i1 %cmp241, label %if.then243, label %if.else253

if.then243:                                       ; preds = %if.end240
  %add247 = add nsw i32 %i.0423, 1
  %cmp248 = icmp eq i32 %41, %add247
  br i1 %cmp248, label %if.end261, label %return

if.else253:                                       ; preds = %if.end240
  %cmp257 = icmp eq i32 %41, 0
  br i1 %cmp257, label %if.end261, label %return

if.end261:                                        ; preds = %if.then243, %if.else253
  %i.2 = phi i32 [ %i.0423, %if.else253 ], [ %add247, %if.then243 ]
  %inc262 = add nsw i32 %nj.0426, 1
  br label %for.inc

sw.bb263:                                         ; preds = %for.body
  %42 = load i32** %nodeidx301, align 8, !tbaa !3
  %arrayidx266 = getelementptr inbounds i32* %42, i64 %indvars.iv
  %43 = load i32* %arrayidx266, align 4, !tbaa !0
  %cmp267 = icmp eq i32 %43, 0
  br i1 %cmp267, label %if.end270, label %return

if.end270:                                        ; preds = %sw.bb263
  %cmp271 = icmp sgt i32 %nc.0425, 0
  %arrayidx276 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %44 = load i32* %arrayidx276, align 4, !tbaa !0
  br i1 %cmp271, label %if.then273, label %if.else283

if.then273:                                       ; preds = %if.end270
  %add277 = add nsw i32 %i.0423, 1
  %cmp278 = icmp eq i32 %44, %add277
  br i1 %cmp278, label %if.end291, label %return

if.else283:                                       ; preds = %if.end270
  %cmp287 = icmp eq i32 %44, 0
  br i1 %cmp287, label %if.end291, label %return

if.end291:                                        ; preds = %if.then273, %if.else283
  %i.3 = phi i32 [ %i.0423, %if.else283 ], [ %add277, %if.then273 ]
  %inc292 = add nsw i32 %nc.0425, 1
  br label %for.inc

sw.bb293:                                         ; preds = %for.body
  %45 = trunc i64 %indvars.iv to i32
  %cmp296 = icmp eq i32 %45, %sub17
  br i1 %cmp296, label %if.end299, label %return

if.end299:                                        ; preds = %sw.bb293
  %46 = load i32** %nodeidx301, align 8, !tbaa !3
  %arrayidx302 = getelementptr inbounds i32* %46, i64 %indvars.iv
  %47 = load i32* %arrayidx302, align 4, !tbaa !0
  %cmp303 = icmp eq i32 %47, 0
  br i1 %cmp303, label %if.end306, label %return

if.end306:                                        ; preds = %if.end299
  %arrayidx309 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %48 = load i32* %arrayidx309, align 4, !tbaa !0
  %cmp310 = icmp eq i32 %48, 0
  %cmp314 = icmp eq i32 %i.0423, %N
  %or.cond419 = and i1 %cmp310, %cmp314
  br i1 %or.cond419, label %for.inc, label %return

for.inc:                                          ; preds = %if.end306, %lor.lhs.false174, %if.end43, %if.end225, %if.end203, %if.end105, %if.end96, %if.end151, %if.end261, %if.end291
  %k.2 = phi i32 [ %k.0422, %if.end291 ], [ %k.0422, %if.end261 ], [ %29, %if.end151 ], [ %k.0422, %if.end96 ], [ %k.0422, %if.end105 ], [ %add199, %if.end203 ], [ %k.0422, %if.end225 ], [ %k.0422, %if.end43 ], [ %k.0422, %lor.lhs.false174 ], [ %k.0422, %if.end306 ]
  %i.4 = phi i32 [ %i.3, %if.end291 ], [ %i.2, %if.end261 ], [ %add117, %if.end151 ], [ %i.1, %if.end96 ], [ %i.0423, %if.end105 ], [ %i.0423, %if.end203 ], [ %i.0423, %if.end225 ], [ %i.0423, %if.end43 ], [ %add157, %lor.lhs.false174 ], [ %N, %if.end306 ]
  %nn.1 = phi i32 [ %nn.0424, %if.end291 ], [ %nn.0424, %if.end261 ], [ %nn.0424, %if.end151 ], [ %inc97, %if.end96 ], [ %nn.0424, %if.end105 ], [ %nn.0424, %if.end203 ], [ %nn.0424, %if.end225 ], [ %nn.0424, %if.end43 ], [ %nn.0424, %lor.lhs.false174 ], [ %nn.0424, %if.end306 ]
  %nc.1 = phi i32 [ %inc292, %if.end291 ], [ %nc.0425, %if.end261 ], [ %nc.0425, %if.end151 ], [ %nc.0425, %if.end96 ], [ %nc.0425, %if.end105 ], [ %nc.0425, %if.end203 ], [ %nc.0425, %if.end225 ], [ %nc.0425, %if.end43 ], [ %nc.0425, %lor.lhs.false174 ], [ %nc.0425, %if.end306 ]
  %nj.1 = phi i32 [ %nj.0426, %if.end291 ], [ %inc262, %if.end261 ], [ %nj.0426, %if.end151 ], [ %nj.0426, %if.end96 ], [ %nj.0426, %if.end105 ], [ %nj.0426, %if.end203 ], [ 0, %if.end225 ], [ %nj.0426, %if.end43 ], [ %nj.0426, %lor.lhs.false174 ], [ %nj.0426, %if.end306 ]
  %nm.1 = phi i32 [ %nm.0427, %if.end291 ], [ %nm.0427, %if.end261 ], [ %inc152, %if.end151 ], [ %nm.0427, %if.end96 ], [ 0, %if.end105 ], [ %nm.0427, %if.end203 ], [ %nm.0427, %if.end225 ], [ %nm.0427, %if.end43 ], [ %nm.0427, %lor.lhs.false174 ], [ %nm.0427, %if.end306 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %49 = trunc i64 %indvars.iv.next to i32
  %cmp32 = icmp slt i32 %49, %3
  br i1 %cmp32, label %for.inc.for.body_crit_edge, label %return

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %arrayidx36.phi.trans.insert = getelementptr inbounds i8* %0, i64 %indvars.iv.next
  %.pre = load i8* %arrayidx36.phi.trans.insert, align 1, !tbaa !1
  %phitmp = sext i8 %.pre to i32
  br label %for.body

return:                                           ; preds = %for.cond.preheader, %lor.lhs.false174, %if.end161, %for.body, %if.end306, %if.end299, %sw.bb293, %if.else283, %if.then273, %sw.bb263, %if.else253, %if.then243, %sw.bb233, %if.end225, %sw.bb218, %if.end203, %if.end195, %sw.bb188, %sw.bb153, %if.else141, %if.end121, %sw.bb113, %if.end105, %sw.bb98, %if.else, %if.then77, %sw.bb63, %if.end43, %sw.bb, %for.inc, %if.end25, %if.end15, %if.end8, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end8 ], [ 0, %if.end15 ], [ 0, %if.end25 ], [ 1, %for.cond.preheader ], [ 0, %lor.lhs.false174 ], [ 0, %if.end161 ], [ 0, %for.body ], [ 0, %if.end306 ], [ 0, %if.end299 ], [ 0, %sw.bb293 ], [ 0, %if.else283 ], [ 0, %if.then273 ], [ 0, %sw.bb263 ], [ 0, %if.else253 ], [ 0, %if.then243 ], [ 0, %sw.bb233 ], [ 0, %if.end225 ], [ 0, %sw.bb218 ], [ 0, %if.end203 ], [ 0, %if.end195 ], [ 0, %sw.bb188 ], [ 0, %sw.bb153 ], [ 0, %if.else141 ], [ 0, %if.end121 ], [ 0, %sw.bb113 ], [ 0, %if.end105 ], [ 0, %sw.bb98 ], [ 0, %if.else ], [ 0, %if.then77 ], [ 0, %sw.bb63 ], [ 0, %if.end43 ], [ 0, %sw.bb ], [ 1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @TraceCompare(%struct.p7trace_s* nocapture %t1, %struct.p7trace_s* nocapture %t2) #4 {
entry:
  %tlen = getelementptr inbounds %struct.p7trace_s* %t1, i64 0, i32 0
  %0 = load i32* %tlen, align 4, !tbaa !0
  %tlen1 = getelementptr inbounds %struct.p7trace_s* %t2, i64 0, i32 0
  %1 = load i32* %tlen1, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %entry
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %t1, i64 0, i32 2
  %pos = getelementptr inbounds %struct.p7trace_s* %t1, i64 0, i32 3
  %cmp344 = icmp sgt i32 %0, 0
  br i1 %cmp344, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %statetype = getelementptr inbounds %struct.p7trace_s* %t1, i64 0, i32 1
  %2 = load i8** %statetype, align 8, !tbaa !3
  %statetype5 = getelementptr inbounds %struct.p7trace_s* %t2, i64 0, i32 1
  %3 = load i8** %statetype5, align 8, !tbaa !3
  %nodeidx15 = getelementptr inbounds %struct.p7trace_s* %t2, i64 0, i32 2
  %pos24 = getelementptr inbounds %struct.p7trace_s* %t2, i64 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %if.end20
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %4, %0
  br i1 %cmp3, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i8* %2, i64 %indvars.iv
  %5 = load i8* %arrayidx, align 1, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8* %3, i64 %indvars.iv
  %6 = load i8* %arrayidx6, align 1, !tbaa !1
  %cmp8 = icmp eq i8 %5, %6
  br i1 %cmp8, label %if.end11, label %return

if.end11:                                         ; preds = %for.body
  %7 = load i32** %nodeidx, align 8, !tbaa !3
  %arrayidx13 = getelementptr inbounds i32* %7, i64 %indvars.iv
  %8 = load i32* %arrayidx13, align 4, !tbaa !0
  %9 = load i32** %nodeidx15, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds i32* %9, i64 %indvars.iv
  %10 = load i32* %arrayidx16, align 4, !tbaa !0
  %cmp17 = icmp eq i32 %8, %10
  br i1 %cmp17, label %if.end20, label %return

if.end20:                                         ; preds = %if.end11
  %11 = load i32** %pos, align 8, !tbaa !3
  %arrayidx22 = getelementptr inbounds i32* %11, i64 %indvars.iv
  %12 = load i32* %arrayidx22, align 4, !tbaa !0
  %13 = load i32** %pos24, align 8, !tbaa !3
  %arrayidx25 = getelementptr inbounds i32* %13, i64 %indvars.iv
  %14 = load i32* %arrayidx25, align 4, !tbaa !0
  %cmp26 = icmp eq i32 %12, %14
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp26, label %for.cond, label %return

return:                                           ; preds = %for.cond.preheader, %if.end20, %if.end11, %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.cond.preheader ], [ 0, %if.end20 ], [ 0, %if.end11 ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
