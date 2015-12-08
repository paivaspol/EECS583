; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_TwoSetViaBKL.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct._IO_FILE* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [54 x i8] c"\0A fatal error in GPart_DDsep(%p,%f,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [42 x i8] c"\0A CPU %9.5f : generate domain-segment map\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"\0A ndom = %d, nseg = %d\00", align 1
@.str3 = private unnamed_addr constant [42 x i8] c"\0A CPU %9.5f : create domain-segment graph\00", align 1
@.str4 = private unnamed_addr constant [19 x i8] c"\0A domain weights :\00", align 1
@.str5 = private unnamed_addr constant [20 x i8] c"\0A segment weights :\00", align 1
@.str6 = private unnamed_addr constant [11 x i8] c"\0A dsmapIV \00", align 1
@.str7 = private unnamed_addr constant [35 x i8] c"\0A\0A domain/segment bipartite graph \00", align 1
@.str8 = private unnamed_addr constant [36 x i8] c"\0A CPU %9.5f : initialize BKL object\00", align 1
@.str9 = private unnamed_addr constant [29 x i8] c"\0A BKL : flag = %d, seed = %d\00", align 1
@.str10 = private unnamed_addr constant [22 x i8] c", initial cost = %.2f\00", align 1
@.str11 = private unnamed_addr constant [26 x i8] c", cweights = < %d %d %d >\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"\0A colors\00", align 1
@.str13 = private unnamed_addr constant [25 x i8] c"\0A BKL initial weights : \00", align 1
@.str14 = private unnamed_addr constant [47 x i8] c"\0A CPU %9.5f : improve the partition via fidmat\00", align 1
@.str15 = private unnamed_addr constant [18 x i8] c"\0A BKL : %d passes\00", align 1
@.str16 = private unnamed_addr constant [11 x i8] c", %d flips\00", align 1
@.str17 = private unnamed_addr constant [15 x i8] c", %d gainevals\00", align 1
@.str18 = private unnamed_addr constant [19 x i8] c", %d improve steps\00", align 1
@.str19 = private unnamed_addr constant [15 x i8] c", cost = %9.2f\00", align 1
@.str20 = private unnamed_addr constant [58 x i8] c"\0A BKL STATS < %9d %9d %9d > %9.2f < %4d %4d %4d %4d %4d >\00", align 1
@.str21 = private unnamed_addr constant [31 x i8] c"\0A BKL partition : < %d %d %d >\00", align 1

; Function Attrs: nounwind optsize uwtable
define double @GPart_TwoSetViaBKL(%struct._GPart* %gpart, double %alpha, i32 %seed, double* %cpus) #0 {
entry:
  %ierr = alloca i32, align 4
  %ndom = alloca i32, align 4
  %nseg = alloca i32, align 4
  %cmp = icmp eq %struct._GPart* %gpart, null
  %cmp1 = icmp eq double* %cpus, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, double %alpha, i32 %seed, double* %cpus) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %g2 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  %1 = load %struct._Graph** %g2, align 8, !tbaa !0
  %nvtx3 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2
  %2 = load i32* %nvtx3, align 4, !tbaa !3
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call4 = call i32* @IV_entries(%struct._IV* %compidsIV) #5
  %cweightsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6
  %call5 = call i32* @IV_entries(%struct._IV* %cweightsIV) #5
  %vwghts6 = getelementptr inbounds %struct._Graph* %1, i64 0, i32 7
  %3 = load i32** %vwghts6, align 8, !tbaa !0
  %msglvl7 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11
  %4 = load i32* %msglvl7, align 4, !tbaa !3
  %msgFile8 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %5 = load %struct._IO_FILE** %msgFile8, align 8, !tbaa !0
  %call9 = call %struct._IV* @GPart_domSegMap(%struct._GPart* %gpart, i32* %ndom, i32* %nseg) #5
  %call10 = call i32* @IV_entries(%struct._IV* %call9) #5
  store double 0.000000e+00, double* %cpus, align 8, !tbaa !4
  %cmp11 = icmp sgt i32 %4, 1
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([42 x i8]* @.str1, i64 0, i64 0), double 0.000000e+00) #5
  %6 = load i32* %ndom, align 4, !tbaa !3
  %7 = load i32* %nseg, align 4, !tbaa !3
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i32 %6, i32 %7) #5
  %call16 = call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end
  %8 = load %struct._Graph** %g2, align 8, !tbaa !0
  %call19 = call %struct._Graph* @Graph_compress(%struct._Graph* %8, i32* %call10, i32 1) #5
  %call20 = call %struct._BPG* @BPG_new() #5
  %9 = load i32* %ndom, align 4, !tbaa !3
  %10 = load i32* %nseg, align 4, !tbaa !3
  call void @BPG_init(%struct._BPG* %call20, i32 %9, i32 %10, %struct._Graph* %call19) #5
  br i1 %cmp11, label %if.end26, label %if.end26.thread

if.end26.thread:                                  ; preds = %if.end17
  %arrayidx28350 = getelementptr inbounds double* %cpus, i64 1
  store double 0.000000e+00, double* %arrayidx28350, align 8, !tbaa !4
  br label %if.end53

if.end26:                                         ; preds = %if.end17
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([42 x i8]* @.str3, i64 0, i64 0), double 0.000000e+00) #5
  %call25 = call i32 @fflush(%struct._IO_FILE* %5) #5
  %arrayidx28 = getelementptr inbounds double* %cpus, i64 1
  store double 0.000000e+00, double* %arrayidx28, align 8, !tbaa !4
  %cmp29 = icmp sgt i32 %4, 2
  br i1 %cmp29, label %if.then30, label %if.end53

if.then30:                                        ; preds = %if.end26
  %graph = getelementptr inbounds %struct._BPG* %call20, i64 0, i32 2
  %11 = load %struct._Graph** %graph, align 8, !tbaa !0
  %vwghts31 = getelementptr inbounds %struct._Graph* %11, i64 0, i32 7
  %12 = load i32** %vwghts31, align 8, !tbaa !0
  %cmp32 = icmp eq i32* %12, null
  br i1 %cmp32, label %if.end45, label %if.then33

if.then33:                                        ; preds = %if.then30
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %5)
  %nX = getelementptr inbounds %struct._BPG* %call20, i64 0, i32 0
  %14 = load i32* %nX, align 4, !tbaa !3
  %15 = load %struct._Graph** %graph, align 8, !tbaa !0
  %vwghts36 = getelementptr inbounds %struct._Graph* %15, i64 0, i32 7
  %16 = load i32** %vwghts36, align 8, !tbaa !0
  %call37 = call i32 @IVfp80(%struct._IO_FILE* %5, i32 %14, i32* %16, i32 17, i32* %ierr) #5
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str5, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %5)
  %nY = getelementptr inbounds %struct._BPG* %call20, i64 0, i32 1
  %18 = load i32* %nY, align 4, !tbaa !3
  %19 = load %struct._Graph** %graph, align 8, !tbaa !0
  %vwghts40 = getelementptr inbounds %struct._Graph* %19, i64 0, i32 7
  %20 = load i32** %vwghts40, align 8, !tbaa !0
  %21 = load i32* %nX, align 4, !tbaa !3
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i32* %20, i64 %idx.ext
  %call42 = call i32 @IVfp80(%struct._IO_FILE* %5, i32 %18, i32* %add.ptr, i32 18, i32* %ierr) #5
  %call43 = call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then30, %if.then33
  %cmp46 = icmp sgt i32 %4, 3
  br i1 %cmp46, label %if.then47, label %if.end53

if.then47:                                        ; preds = %if.end45
  %22 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str6, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %5)
  %call49 = call i32 @IV_writeForHumanEye(%struct._IV* %call9, %struct._IO_FILE* %5) #5
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str7, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %5)
  %call51 = call i32 @BPG_writeForHumanEye(%struct._BPG* %call20, %struct._IO_FILE* %5) #5
  %call52 = call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end53

if.end53:                                         ; preds = %if.end26, %if.end26.thread, %if.then47, %if.end45
  %cmp29352354 = phi i1 [ true, %if.then47 ], [ true, %if.end45 ], [ false, %if.end26.thread ], [ false, %if.end26 ]
  %call54 = call %struct._BKL* @BKL_new() #5
  call void @BKL_init(%struct._BKL* %call54, %struct._BPG* %call20, float 1.000000e+00) #5
  %call55 = call float @BKL_setInitPart(%struct._BKL* %call54, i32 5, i32 %seed, i32* null) #5
  %call56 = call float @BKL_evalfcn(%struct._BKL* %call54) #5
  %ncomp = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4
  store i32 2, i32* %ncomp, align 4, !tbaa !3
  %arrayidx58 = getelementptr inbounds double* %cpus, i64 2
  store double 0.000000e+00, double* %arrayidx58, align 8, !tbaa !4
  br i1 %cmp11, label %if.then61, label %if.end65

if.then61:                                        ; preds = %if.end53
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([36 x i8]* @.str8, i64 0, i64 0), double 0.000000e+00) #5
  %call64 = call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.end53
  br i1 %cmp29352354, label %if.then68, label %if.end88

if.then68:                                        ; preds = %if.end65
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8]* @.str9, i64 0, i64 0), i32 5, i32 %seed) #5
  %conv70 = fpext float %call56 to double
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0), double %conv70) #5
  %call72 = call i32 @fflush(%struct._IO_FILE* %5) #5
  %arrayidx74 = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 11, i64 0
  %24 = load i32* %arrayidx74, align 4, !tbaa !3
  %arrayidx76 = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 11, i64 1
  %25 = load i32* %arrayidx76, align 4, !tbaa !3
  %arrayidx78 = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 11, i64 2
  %26 = load i32* %arrayidx78, align 4, !tbaa !3
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([26 x i8]* @.str11, i64 0, i64 0), i32 %24, i32 %25, i32 %26) #5
  %call80 = call i32 @fflush(%struct._IO_FILE* %5) #5
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %5)
  %nreg = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 3
  %28 = load i32* %nreg, align 4, !tbaa !3
  %colors = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 10
  %29 = load i32** %colors, align 8, !tbaa !0
  %call86 = call i32 @IVfp80(%struct._IO_FILE* %5, i32 %28, i32* %29, i32 80, i32* %ierr) #5
  %call87 = call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end88

if.end88:                                         ; preds = %if.end65, %if.then68
  br i1 %cmp11, label %if.then91, label %if.end96

if.then91:                                        ; preds = %if.end88
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str13, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %5)
  %arraydecay = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 11, i64 0
  %call94 = call i32 @IVfp80(%struct._IO_FILE* %5, i32 3, i32* %arraydecay, i32 25, i32* %ierr) #5
  %call95 = call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end96

if.end96:                                         ; preds = %if.then91, %if.end88
  %call97 = call float @BKL_fidmat(%struct._BKL* %call54) #5
  %31 = load double* %arrayidx58, align 8, !tbaa !4
  %add = fadd double %31, 0.000000e+00
  store double %add, double* %arrayidx58, align 8, !tbaa !4
  br i1 %cmp11, label %if.then102, label %if.end133

if.then102:                                       ; preds = %if.end96
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([47 x i8]* @.str14, i64 0, i64 0), double 0.000000e+00) #5
  %call105 = call i32 @fflush(%struct._IO_FILE* %5) #5
  %npass = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 5
  %32 = load i32* %npass, align 4, !tbaa !3
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([18 x i8]* @.str15, i64 0, i64 0), i32 %32) #5
  %nflips = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 7
  %33 = load i32* %nflips, align 4, !tbaa !3
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([11 x i8]* @.str16, i64 0, i64 0), i32 %33) #5
  %ngaineval = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 9
  %34 = load i32* %ngaineval, align 4, !tbaa !3
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([15 x i8]* @.str17, i64 0, i64 0), i32 %34) #5
  %nimprove = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 8
  %35 = load i32* %nimprove, align 4, !tbaa !3
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([19 x i8]* @.str18, i64 0, i64 0), i32 %35) #5
  %conv114 = fpext float %call97 to double
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([15 x i8]* @.str19, i64 0, i64 0), double %conv114) #5
  %arrayidx121 = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 11, i64 0
  %36 = load i32* %arrayidx121, align 4, !tbaa !3
  %arrayidx123 = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 11, i64 1
  %37 = load i32* %arrayidx123, align 4, !tbaa !3
  %arrayidx125 = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 11, i64 2
  %38 = load i32* %arrayidx125, align 4, !tbaa !3
  %39 = load i32* %npass, align 4, !tbaa !3
  %npatch = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 6
  %40 = load i32* %npatch, align 4, !tbaa !3
  %41 = load i32* %nflips, align 4, !tbaa !3
  %42 = load i32* %nimprove, align 4, !tbaa !3
  %43 = load i32* %ngaineval, align 4, !tbaa !3
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([58 x i8]* @.str20, i64 0, i64 0), i32 %36, i32 %37, i32 %38, double %conv114, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43) #5
  %call132 = call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end133

if.end133:                                        ; preds = %if.end96, %if.then102
  br i1 %cmp29352354, label %if.then136, label %if.end133.if.end142_crit_edge

if.end133.if.end142_crit_edge:                    ; preds = %if.end133
  %colors143.pre = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 10
  br label %if.end142

if.then136:                                       ; preds = %if.end133
  %44 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %5)
  %nreg138 = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 3
  %45 = load i32* %nreg138, align 4, !tbaa !3
  %colors139 = getelementptr inbounds %struct._BKL* %call54, i64 0, i32 10
  %46 = load i32** %colors139, align 8, !tbaa !0
  %call140 = call i32 @IVfp80(%struct._IO_FILE* %5, i32 %45, i32* %46, i32 80, i32* %ierr) #5
  %call141 = call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end142

if.end142:                                        ; preds = %if.end133.if.end142_crit_edge, %if.then136
  %colors143.pre-phi = phi i32** [ %colors143.pre, %if.end133.if.end142_crit_edge ], [ %colors139, %if.then136 ]
  %47 = load i32** %colors143.pre-phi, align 8, !tbaa !0
  store i32 2, i32* %ncomp, align 4, !tbaa !3
  call void @IV_setSize(%struct._IV* %cweightsIV, i32 3) #5
  %call147 = call i32* @IV_entries(%struct._IV* %cweightsIV) #5
  %arrayidx148 = getelementptr inbounds i32* %call147, i64 2
  store i32 0, i32* %arrayidx148, align 4, !tbaa !3
  %arrayidx149 = getelementptr inbounds i32* %call147, i64 1
  store i32 0, i32* %arrayidx149, align 4, !tbaa !3
  store i32 0, i32* %call147, align 4, !tbaa !3
  %cmp151 = icmp eq i32* %3, null
  %cmp154355 = icmp sgt i32 %2, 0
  br i1 %cmp151, label %for.cond.preheader, label %for.cond164.preheader

for.cond164.preheader:                            ; preds = %if.end142
  br i1 %cmp154355, label %for.body167, label %if.end182

for.cond.preheader:                               ; preds = %if.end142
  br i1 %cmp154355, label %for.body, label %if.end182

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx156 = getelementptr inbounds i32* %call10, i64 %indvars.iv
  %48 = load i32* %arrayidx156, align 4, !tbaa !3
  %idxprom157 = sext i32 %48 to i64
  %arrayidx158 = getelementptr inbounds i32* %47, i64 %idxprom157
  %49 = load i32* %arrayidx158, align 4, !tbaa !3
  %arrayidx160 = getelementptr inbounds i32* %call4, i64 %indvars.iv
  store i32 %49, i32* %arrayidx160, align 4, !tbaa !3
  %idxprom161 = sext i32 %49 to i64
  %arrayidx162 = getelementptr inbounds i32* %call147, i64 %idxprom161
  %50 = load i32* %arrayidx162, align 4, !tbaa !3
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %arrayidx162, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %if.end182, label %for.body

for.body167:                                      ; preds = %for.cond164.preheader, %for.body167
  %indvars.iv360 = phi i64 [ %indvars.iv.next361, %for.body167 ], [ 0, %for.cond164.preheader ]
  %arrayidx169 = getelementptr inbounds i32* %call10, i64 %indvars.iv360
  %51 = load i32* %arrayidx169, align 4, !tbaa !3
  %idxprom170 = sext i32 %51 to i64
  %arrayidx171 = getelementptr inbounds i32* %47, i64 %idxprom170
  %52 = load i32* %arrayidx171, align 4, !tbaa !3
  %arrayidx173 = getelementptr inbounds i32* %call4, i64 %indvars.iv360
  store i32 %52, i32* %arrayidx173, align 4, !tbaa !3
  %arrayidx175 = getelementptr inbounds i32* %3, i64 %indvars.iv360
  %53 = load i32* %arrayidx175, align 4, !tbaa !3
  %idxprom176 = sext i32 %52 to i64
  %arrayidx177 = getelementptr inbounds i32* %call147, i64 %idxprom176
  %54 = load i32* %arrayidx177, align 4, !tbaa !3
  %add178 = add nsw i32 %54, %53
  store i32 %add178, i32* %arrayidx177, align 4, !tbaa !3
  %indvars.iv.next361 = add i64 %indvars.iv360, 1
  %lftr.wideiv362 = trunc i64 %indvars.iv.next361 to i32
  %exitcond363 = icmp eq i32 %lftr.wideiv362, %2
  br i1 %exitcond363, label %if.end182, label %for.body167

if.end182:                                        ; preds = %for.cond164.preheader, %for.body167, %for.cond.preheader, %for.body
  br i1 %cmp29352354, label %if.then185, label %if.end191

if.then185:                                       ; preds = %if.end182
  %55 = load i32* %call147, align 4, !tbaa !3
  %56 = load i32* %arrayidx149, align 4, !tbaa !3
  %57 = load i32* %arrayidx148, align 4, !tbaa !3
  %call189 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([31 x i8]* @.str21, i64 0, i64 0), i32 %55, i32 %56, i32 %57) #5
  %call190 = call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end191

if.end191:                                        ; preds = %if.then185, %if.end182
  call void @BKL_free(%struct._BKL* %call54) #5
  call void @IV_free(%struct._IV* %call9) #5
  call void @BPG_free(%struct._BPG* %call20) #5
  %58 = load double* %arrayidx58, align 8, !tbaa !4
  %add194 = fadd double %58, 0.000000e+00
  store double %add194, double* %arrayidx58, align 8, !tbaa !4
  %conv195 = fpext float %call97 to double
  ret double %conv195
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare %struct._IV* @GPart_domSegMap(%struct._GPart*, i32*, i32*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare %struct._Graph* @Graph_compress(%struct._Graph*, i32*, i32) #3

; Function Attrs: optsize
declare %struct._BPG* @BPG_new() #3

; Function Attrs: optsize
declare void @BPG_init(%struct._BPG*, i32, i32, %struct._Graph*) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @BPG_writeForHumanEye(%struct._BPG*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare %struct._BKL* @BKL_new() #3

; Function Attrs: optsize
declare void @BKL_init(%struct._BKL*, %struct._BPG*, float) #3

; Function Attrs: optsize
declare float @BKL_setInitPart(%struct._BKL*, i32, i32, i32*) #3

; Function Attrs: optsize
declare float @BKL_evalfcn(%struct._BKL*) #3

; Function Attrs: optsize
declare float @BKL_fidmat(%struct._BKL*) #3

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @BKL_free(%struct._BKL*) #3

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: optsize
declare void @BPG_free(%struct._BPG*) #3

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
!4 = metadata !{metadata !"double", metadata !1}
