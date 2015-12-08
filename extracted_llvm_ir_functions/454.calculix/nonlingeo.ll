; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/nonlingeo.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"ENER\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"increment %d attempt %d \0A\00", align 1
@.str6 = private unnamed_addr constant [20 x i8] c"increment size= %e\0A\00", align 1
@.str7 = private unnamed_addr constant [32 x i8] c"sum of previous increments=%e\0A\0A\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"ilin=%d\0A\00", align 1
@.str9 = private unnamed_addr constant [15 x i8] c"iteration %d\0A\0A\00", align 1
@.str10 = private unnamed_addr constant [28 x i8] c"largest residual force= %f\0A\00", align 1
@.str11 = private unnamed_addr constant [41 x i8] c"convergence; dtheta is decreased to %f\0A\0A\00", align 1
@.str12 = private unnamed_addr constant [41 x i8] c"convergence; dtheta is increased to %f\0A\0A\00", align 1
@.str14 = private unnamed_addr constant [49 x i8] c"dtheta exceeds thetamax and is decreased to %f\0A\0A\00", align 1
@.str15 = private unnamed_addr constant [66 x i8] c"dtheta exceeds the remainder of the step and is decreased to %f\0A\0A\00", align 1
@.str19 = private unnamed_addr constant [39 x i8] c"divergence; dtheta is decreased to %f\0A\00", align 1
@.str23 = private unnamed_addr constant [54 x i8] c"estimated number of iterations till convergence = %d\0A\00", align 1
@.str24 = private unnamed_addr constant [49 x i8] c"too slow convergence; dtheta is decreased to %f\0A\00", align 1
@.str26 = private unnamed_addr constant [5 x i8] c"E   \00", align 1
@.str27 = private unnamed_addr constant [5 x i8] c"PE  \00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"SDV \00", align 1
@str = private unnamed_addr constant [16 x i8] c"no convergence\0A\00"
@str32 = private unnamed_addr constant [30 x i8] c"the increment is reattempted\0A\00"
@str33 = private unnamed_addr constant [27 x i8] c"*ERROR: too many cutbacks\0A\00"
@str34 = private unnamed_addr constant [45 x i8] c"*ERROR: increment size smaller than minimum\0A\00"
@str35 = private unnamed_addr constant [47 x i8] c"*ERROR: solution seems to diverge; please try \00"
@str36 = private unnamed_addr constant [41 x i8] c"automatic incrementation; program stops\0A\00"
@str37 = private unnamed_addr constant [36 x i8] c"*ERROR: too many iterations needed\0A\00"
@str39 = private unnamed_addr constant [13 x i8] c"convergence\0A\00"
@str40 = private unnamed_addr constant [38 x i8] c"*ERROR: max. # of increments reached\0A\00"
@str41 = private unnamed_addr constant [21 x i8] c"\0A*ERROR in nonlingeo\00"
@str42 = private unnamed_addr constant [55 x i8] c"increment size smaller than one millionth of step size\00"
@str43 = private unnamed_addr constant [25 x i8] c"increase increment size\0A\00"

; Function Attrs: nounwind optsize uwtable
define void @nonlingeo(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32 %lakonLen, i32* %ne, i32* %nodeboun, i32* %ndirboun, double* %xboun, i32* %nboun, i32* %ipompc, i32** nocapture %nodempcp, double** nocapture %coefmpcp, i8* %labmpc, i32 %labmpcLen, i32* %nmpc, i32* %nodeforc, i32* %ndirforc, double* %xforc, i32* %nforc, i32* %nelemload, i8* %sideload, i32 %sideloadLen, double* %xload, i32* %nload, double* %p1, double* %p2, double* %om, double* %bodyf, double* %ad, double* %au, double* %b, i32* %nactdof, i32** nocapture %icolp, i32* %jq, i32** nocapture %irowp, i32* %neq, i32* %nzl, i32* %nmethod, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t0, double* %t1, double* %t1old, i32* %ithermal, double* %prestr, i32* %iprestr, double* %vold, i32* %iperturb, double* %sti, i32* %nzs, i32* %nodeprint, i32* %noprint, i32* %nelemprint, i32* %neprint, i32* %kode, double* %adb, double* %aub, i8* %noelplab, i32 %noelplabLen, i8* %nodeflab, i32 %nodeflabLen, i32* nocapture %idrct, i32* nocapture %jmax, i32* nocapture %jout, double* nocapture %tinc, double* nocapture %tper, double* nocapture %tmin, double* nocapture %tmax, double* %eei, double* %xbounold, double* %xforcold, double* %xloadold, double* %omold, double* %bodyfold, double* %veold, double* %accold, i8* nocapture %amname, i32 %amnameLen, double* %amta, i32* %namta, i32* %nam, i32* %iamforc, i32* %iamload, i32* %iamom, i32* %iambodyf, i32* %iamt1, double* nocapture %alpha, double* nocapture %haftol, i32* %iexpl, i32* %iamboun, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, double* %xstate, i32* %npmat_, i32* %istep, double* %ttime, i8* %matname, i32 %matnameLen, double* nocapture %qaold, i32* %mint_, i32* %isolver, i32* %ncmat_, i32* %nstate_, i32* nocapture %iumat, i32* %ns, double* %csab, i32* %nkon, double* %ener, i32* nocapture %mpcinfo, i32* %nnn, i8* %output, i32 %outputLen, i32* %nodeflow, i32* %iamflow, double* %xflow, double* %shcon, i32* %nshcon, double* %cocon, i32* %ncocon, double* %physcon, double* %xflowold, i32* %nflow, double* nocapture %ctrl) #0 {
entry:
  %bodyfold4380 = bitcast double* %bodyfold to i8*
  %au.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %adb.addr = alloca double*, align 8
  %aub.addr = alloca double*, align 8
  %iout = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %icutb = alloca i32, align 4
  %nmethodact = alloca i32, align 4
  %icol = alloca i32*, align 8
  %irow = alloca i32*, align 8
  %ielas = alloca i32, align 4
  %icmd = alloca i32, align 4
  %memmpc_ = alloca i32, align 4
  %mpcfree = alloca i32, align 4
  %icascade = alloca i32, align 4
  %maxlenmpc = alloca i32, align 4
  %nodempc = alloca i32*, align 8
  %ntg = alloca i32, align 4
  %ntr = alloca i32, align 4
  %ntm = alloca i32, align 4
  %ntri = alloca i32, align 4
  %mass = alloca i32, align 4
  %stiffness = alloca i32, align 4
  %buckling = alloca i32, align 4
  %rhsi = alloca i32, align 4
  %intscheme = alloca i32, align 4
  %vmax = alloca double, align 8
  %f = alloca double*, align 8
  %qa = alloca double, align 8
  %cam = alloca double, align 8
  %finc = alloca double*, align 8
  %bodyfact = alloca [3 x double], align 16
  %bodyfact4381 = bitcast [3 x double]* %bodyfact to i8*
  %omact = alloca double, align 8
  %fext = alloca double*, align 8
  %reltime = alloca double, align 8
  %time = alloca double, align 8
  %bet = alloca double, align 8
  %gam = alloca double, align 8
  %aux2 = alloca double*, align 8
  %dtime = alloca double, align 8
  %fini = alloca double*, align 8
  %fextini = alloca double*, align 8
  %coefmpc = alloca double*, align 8
  store double* %au, double** %au.addr, align 8, !tbaa !0
  store double* %b, double** %b.addr, align 8, !tbaa !0
  store double* %adb, double** %adb.addr, align 8, !tbaa !0
  store double* %aub, double** %aub.addr, align 8, !tbaa !0
  store i32 0, i32* %iout, align 4, !tbaa !3
  store i32 0, i32* %j, align 4, !tbaa !3
  store i32 0, i32* %icutb, align 4, !tbaa !3
  store i32 1, i32* %nmethodact, align 4, !tbaa !3
  store i32 0, i32* %ielas, align 4, !tbaa !3
  store i32 0, i32* %icmd, align 4, !tbaa !3
  store i32 0, i32* %mass, align 4, !tbaa !3
  store i32 1, i32* %stiffness, align 4, !tbaa !3
  store i32 0, i32* %buckling, align 4, !tbaa !3
  store i32 1, i32* %rhsi, align 4, !tbaa !3
  store i32 0, i32* %intscheme, align 4, !tbaa !3
  store double* null, double** %f, align 8, !tbaa !0
  store double* null, double** %finc, align 8, !tbaa !0
  store double* null, double** %fext, align 8, !tbaa !0
  store double* null, double** %aux2, align 8, !tbaa !0
  store double* null, double** %fini, align 8, !tbaa !0
  store double* null, double** %fextini, align 8, !tbaa !0
  %0 = load double* %ctrl, align 8, !tbaa !4
  %conv = fptosi double %0 to i32
  %arrayidx1 = getelementptr inbounds double* %ctrl, i64 1
  %1 = load double* %arrayidx1, align 8, !tbaa !4
  %conv2 = fptosi double %1 to i32
  %arrayidx3 = getelementptr inbounds double* %ctrl, i64 2
  %2 = load double* %arrayidx3, align 8, !tbaa !4
  %conv4 = fptosi double %2 to i32
  %arrayidx5 = getelementptr inbounds double* %ctrl, i64 3
  %3 = load double* %arrayidx5, align 8, !tbaa !4
  %conv6 = fptosi double %3 to i32
  %arrayidx7 = getelementptr inbounds double* %ctrl, i64 4
  %4 = load double* %arrayidx7, align 8, !tbaa !4
  %conv8 = fptosi double %4 to i32
  %arrayidx9 = getelementptr inbounds double* %ctrl, i64 5
  %5 = load double* %arrayidx9, align 8, !tbaa !4
  %conv10 = fptosi double %5 to i32
  %arrayidx11 = getelementptr inbounds double* %ctrl, i64 7
  %6 = load double* %arrayidx11, align 8, !tbaa !4
  %conv12 = fptosi double %6 to i32
  %arrayidx13 = getelementptr inbounds double* %ctrl, i64 10
  %7 = load double* %arrayidx13, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds double* %ctrl, i64 11
  %8 = load double* %arrayidx14, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds double* %ctrl, i64 12
  %9 = load double* %arrayidx15, align 8, !tbaa !4
  %arrayidx16 = getelementptr inbounds double* %ctrl, i64 16
  %10 = load double* %arrayidx16, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds double* %ctrl, i64 18
  %11 = load double* %arrayidx17, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds double* %ctrl, i64 19
  %12 = load double* %arrayidx18, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds double* %ctrl, i64 20
  %13 = load double* %arrayidx19, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds double* %ctrl, i64 21
  %14 = load double* %arrayidx20, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds double* %ctrl, i64 22
  %15 = load double* %arrayidx21, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds double* %ctrl, i64 23
  %16 = load double* %arrayidx22, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds double* %ctrl, i64 24
  %17 = load double* %arrayidx23, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds double* %ctrl, i64 25
  %18 = load double* %arrayidx24, align 8, !tbaa !4
  %19 = load i32* %mpcinfo, align 4, !tbaa !3
  store i32 %19, i32* %memmpc_, align 4, !tbaa !3
  %arrayidx26 = getelementptr inbounds i32* %mpcinfo, i64 1
  %20 = load i32* %arrayidx26, align 4, !tbaa !3
  store i32 %20, i32* %mpcfree, align 4, !tbaa !3
  %arrayidx27 = getelementptr inbounds i32* %mpcinfo, i64 2
  %21 = load i32* %arrayidx27, align 4, !tbaa !3
  store i32 %21, i32* %icascade, align 4, !tbaa !3
  %arrayidx28 = getelementptr inbounds i32* %mpcinfo, i64 3
  %22 = load i32* %arrayidx28, align 4, !tbaa !3
  store i32 %22, i32* %maxlenmpc, align 4, !tbaa !3
  %23 = load i32** %icolp, align 8, !tbaa !0
  store i32* %23, i32** %icol, align 8, !tbaa !0
  %24 = load i32** %irowp, align 8, !tbaa !0
  store i32* %24, i32** %irow, align 8, !tbaa !0
  %25 = load i32** %nodempcp, align 8, !tbaa !0
  store i32* %25, i32** %nodempc, align 8, !tbaa !0
  %26 = load double** %coefmpcp, align 8, !tbaa !0
  store double* %26, double** %coefmpc, align 8, !tbaa !0
  %cmp = icmp eq i32 %21, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %27 = load i32* %nmpc, align 4, !tbaa !3
  %mul = mul nsw i32 %19, 3
  %conv30 = sext i32 %mul to i64
  %call = call i8* @u_calloc(i64 %conv30, i64 4) #5
  %28 = bitcast i8* %call to i32*
  %29 = load i32* %memmpc_, align 4, !tbaa !3
  %cmp324329 = icmp sgt i32 %29, 0
  br i1 %cmp324329, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %30 = load i32** %nodempc, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv4573 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next4574, %for.body ]
  %arrayidx34 = getelementptr inbounds i32* %30, i64 %indvars.iv4573
  %31 = load i32* %arrayidx34, align 4, !tbaa !3
  %arrayidx36 = getelementptr inbounds i32* %28, i64 %indvars.iv4573
  store i32 %31, i32* %arrayidx36, align 4, !tbaa !3
  %indvars.iv.next4574 = add i64 %indvars.iv4573, 1
  %32 = load i32* %memmpc_, align 4, !tbaa !3
  %mul31 = mul nsw i32 %32, 3
  %33 = trunc i64 %indvars.iv.next4574 to i32
  %cmp32 = icmp slt i32 %33, %mul31
  br i1 %cmp32, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.then
  %.lcssa4327 = phi i32 [ %29, %if.then ], [ %32, %for.body ]
  %conv37 = sext i32 %.lcssa4327 to i64
  %call38 = call i8* @u_calloc(i64 %conv37, i64 8) #5
  %34 = bitcast i8* %call38 to double*
  %35 = load i32* %memmpc_, align 4, !tbaa !3
  %cmp404325 = icmp sgt i32 %35, 0
  br i1 %cmp404325, label %for.body42.lr.ph, label %if.end

for.body42.lr.ph:                                 ; preds = %for.end
  %36 = load double** %coefmpc, align 8, !tbaa !0
  br label %for.body42

for.body42:                                       ; preds = %for.body42.lr.ph, %for.body42
  %indvars.iv4570 = phi i64 [ 0, %for.body42.lr.ph ], [ %indvars.iv.next4571, %for.body42 ]
  %arrayidx44 = getelementptr inbounds double* %36, i64 %indvars.iv4570
  %37 = load double* %arrayidx44, align 8, !tbaa !4
  %arrayidx46 = getelementptr inbounds double* %34, i64 %indvars.iv4570
  store double %37, double* %arrayidx46, align 8, !tbaa !4
  %indvars.iv.next4571 = add i64 %indvars.iv4570, 1
  %38 = trunc i64 %indvars.iv.next4571 to i32
  %cmp40 = icmp slt i32 %38, %35
  br i1 %cmp40, label %for.body42, label %if.end

if.end:                                           ; preds = %for.end, %for.body42, %entry
  %nmpcref.0 = phi i32 [ undef, %entry ], [ %27, %for.body42 ], [ %27, %for.end ]
  %nodempcref.0 = phi i32* [ null, %entry ], [ %28, %for.body42 ], [ %28, %for.end ]
  %coefmpcref.0 = phi double* [ null, %entry ], [ %34, %for.body42 ], [ %34, %for.end ]
  %39 = load i32* %mint_, align 4, !tbaa !3
  %mul50 = mul nsw i32 %39, 21
  %40 = load i32* %ne, align 4, !tbaa !3
  %mul51 = mul nsw i32 %mul50, %40
  %conv52 = sext i32 %mul51 to i64
  %call53 = call i8* @u_calloc(i64 %conv52, i64 8) #5
  %41 = bitcast i8* %call53 to double*
  %42 = load i32* %neq, align 4, !tbaa !3
  %conv54 = sext i32 %42 to i64
  %call55 = call i8* @u_calloc(i64 %conv54, i64 8) #5
  %43 = bitcast i8* %call55 to double*
  store double* %43, double** %f, align 8, !tbaa !0
  %44 = load i32* %neq, align 4, !tbaa !3
  %conv56 = sext i32 %44 to i64
  %call57 = call i8* @u_calloc(i64 %conv56, i64 8) #5
  %45 = bitcast i8* %call57 to double*
  store double* %45, double** %finc, align 8, !tbaa !0
  %46 = load i32* %neq, align 4, !tbaa !3
  %conv58 = sext i32 %46 to i64
  %call59 = call i8* @u_calloc(i64 %conv58, i64 8) #5
  %47 = bitcast i8* %call59 to double*
  store double* %47, double** %fext, align 8, !tbaa !0
  %48 = load i32* %neq, align 4, !tbaa !3
  %conv60 = sext i32 %48 to i64
  %call61 = call i8* @u_calloc(i64 %conv60, i64 8) #5
  %49 = bitcast i8* %call61 to double*
  store double* %49, double** %b.addr, align 8, !tbaa !0
  %50 = load i32* %nk, align 4, !tbaa !3
  %mul62 = shl nsw i32 %50, 2
  %conv63 = sext i32 %mul62 to i64
  %call64 = call i8* @u_calloc(i64 %conv63, i64 8) #5
  %51 = bitcast i8* %call64 to double*
  %52 = load i32* %maxlenmpc, align 4, !tbaa !3
  %mul65 = mul nsw i32 %52, 7
  %conv66 = sext i32 %mul65 to i64
  %call67 = call i8* @u_calloc(i64 %conv66, i64 8) #5
  %53 = bitcast i8* %call67 to double*
  %54 = load i32* %maxlenmpc, align 4, !tbaa !3
  %conv68 = sext i32 %54 to i64
  %call69 = call i8* @u_calloc(i64 %conv68, i64 4) #5
  %55 = bitcast i8* %call69 to i32*
  %56 = load i32* %nboun, align 4, !tbaa !3
  %conv70 = sext i32 %56 to i64
  %call71 = call i8* @u_calloc(i64 %conv70, i64 8) #5
  %57 = bitcast i8* %call71 to double*
  %58 = load i32* %nboun, align 4, !tbaa !3
  %conv72 = sext i32 %58 to i64
  %call73 = call i8* @u_calloc(i64 %conv72, i64 8) #5
  %59 = bitcast i8* %call73 to double*
  %60 = load i32* %nboun, align 4, !tbaa !3
  %cmp754323 = icmp sgt i32 %60, 0
  br i1 %cmp754323, label %for.body77, label %for.end84

for.body77:                                       ; preds = %if.end, %for.body77
  %indvars.iv4568 = phi i64 [ %indvars.iv.next4569, %for.body77 ], [ 0, %if.end ]
  %arrayidx79 = getelementptr inbounds double* %xbounold, i64 %indvars.iv4568
  %61 = load double* %arrayidx79, align 8, !tbaa !4
  %arrayidx81 = getelementptr inbounds double* %57, i64 %indvars.iv4568
  store double %61, double* %arrayidx81, align 8, !tbaa !4
  %indvars.iv.next4569 = add i64 %indvars.iv4568, 1
  %62 = trunc i64 %indvars.iv.next4569 to i32
  %cmp75 = icmp slt i32 %62, %60
  br i1 %cmp75, label %for.body77, label %for.end84

for.end84:                                        ; preds = %for.body77, %if.end
  %63 = load i32* %nforc, align 4, !tbaa !3
  %conv85 = sext i32 %63 to i64
  %call86 = call i8* @u_calloc(i64 %conv85, i64 8) #5
  %64 = bitcast i8* %call86 to double*
  %65 = load i32* %nload, align 4, !tbaa !3
  %mul87 = shl nsw i32 %65, 1
  %conv88 = sext i32 %mul87 to i64
  %call89 = call i8* @u_calloc(i64 %conv88, i64 8) #5
  %66 = bitcast i8* %call89 to double*
  %67 = load i32* %ithermal, align 4, !tbaa !3
  %cmp90 = icmp sgt i32 %67, 1
  br i1 %cmp90, label %if.then92, label %if.end163

if.then92:                                        ; preds = %for.end84
  %68 = load i32* %nflow, align 4, !tbaa !3
  %conv93 = sext i32 %68 to i64
  %call94 = call i8* @u_calloc(i64 %conv93, i64 8) #5
  %69 = bitcast i8* %call94 to double*
  %70 = load i32* %nload, align 4, !tbaa !3
  %conv95 = sext i32 %70 to i64
  %call96 = call i8* @u_calloc(i64 %conv95, i64 4) #5
  %71 = bitcast i8* %call96 to i32*
  %72 = load i32* %nload, align 4, !tbaa !3
  %conv97 = sext i32 %72 to i64
  %call98 = call i8* @u_calloc(i64 %conv97, i64 4) #5
  %73 = bitcast i8* %call98 to i32*
  %74 = load i32* %nload, align 4, !tbaa !3
  %conv99 = sext i32 %74 to i64
  %call100 = call i8* @u_calloc(i64 %conv99, i64 4) #5
  %75 = bitcast i8* %call100 to i32*
  %76 = load i32* %nload, align 4, !tbaa !3
  %mul101 = mul nsw i32 %76, 6
  %conv102 = sext i32 %mul101 to i64
  %call103 = call i8* @u_calloc(i64 %conv102, i64 4) #5
  %77 = bitcast i8* %call103 to i32*
  %78 = load i32* %nload, align 4, !tbaa !3
  %conv104 = sext i32 %78 to i64
  %call105 = call i8* @u_calloc(i64 %conv104, i64 4) #5
  %79 = bitcast i8* %call105 to i32*
  call void @envtemp_(i32* %71, i32* %73, i32* %ntg, i32* %ntr, i8* %sideload, i32* %nelemload, i32* %ipkon, i32* %kon, i8* %lakon, i32* %ielmat, i32* %ne, i32* %nload, i32* %75, i32* %77, i32* %ntri, i32* %79) #5
  %80 = load i32* %ntg, align 4, !tbaa !3
  %conv106 = sext i32 %80 to i64
  %mul107 = shl nsw i64 %conv106, 2
  %call108 = call i8* @realloc(i8* %call96, i64 %mul107) #5
  %81 = bitcast i8* %call108 to i32*
  %82 = load i32* %ntg, align 4, !tbaa !3
  %conv109 = sext i32 %82 to i64
  %mul110 = shl nsw i64 %conv109, 2
  %call111 = call i8* @realloc(i8* %call98, i64 %mul110) #5
  %83 = bitcast i8* %call111 to i32*
  %84 = load i32* %ntri, align 4, !tbaa !3
  %conv112 = sext i32 %84 to i64
  %mul113 = shl nsw i64 %conv112, 2
  %call114 = call i8* @realloc(i8* %call100, i64 %mul113) #5
  %85 = bitcast i8* %call114 to i32*
  %86 = load i32* %ntri, align 4, !tbaa !3
  %mul115 = mul nsw i32 %86, 3
  %conv116 = sext i32 %mul115 to i64
  %mul117 = shl nsw i64 %conv116, 2
  %call118 = call i8* @realloc(i8* %call103, i64 %mul117) #5
  %87 = bitcast i8* %call118 to i32*
  %88 = load i32* %ntr, align 4, !tbaa !3
  %conv119 = sext i32 %88 to i64
  %mul120 = shl nsw i64 %conv119, 2
  %call121 = call i8* @realloc(i8* %call105, i64 %mul120) #5
  %89 = bitcast i8* %call121 to i32*
  %90 = load i32* %ntri, align 4, !tbaa !3
  %conv122 = sext i32 %90 to i64
  %call123 = call i8* @u_calloc(i64 %conv122, i64 8) #5
  %91 = bitcast i8* %call123 to double*
  %92 = load i32* %ntri, align 4, !tbaa !3
  %mul124 = mul nsw i32 %92, 3
  %conv125 = sext i32 %mul124 to i64
  %call126 = call i8* @u_calloc(i64 %conv125, i64 8) #5
  %93 = bitcast i8* %call126 to double*
  %94 = load i32* %ntri, align 4, !tbaa !3
  %mul127 = mul nsw i32 %94, 3
  %conv128 = sext i32 %mul127 to i64
  %call129 = call i8* @u_calloc(i64 %conv128, i64 8) #5
  %95 = bitcast i8* %call129 to double*
  %96 = load i32* %ntri, align 4, !tbaa !3
  %mul130 = mul nsw i32 %96, 3
  %conv131 = sext i32 %mul130 to i64
  %call132 = call i8* @u_calloc(i64 %conv131, i64 8) #5
  %97 = bitcast i8* %call132 to double*
  %98 = load i32* %ntri, align 4, !tbaa !3
  %mul133 = shl nsw i32 %98, 2
  %conv134 = sext i32 %mul133 to i64
  %call135 = call i8* @u_calloc(i64 %conv134, i64 8) #5
  %99 = bitcast i8* %call135 to double*
  %100 = load i32* %ntri, align 4, !tbaa !3
  %mul136 = mul nsw i32 %100, %100
  %conv1374060 = zext i32 %mul136 to i64
  %call138 = call i8* @u_calloc(i64 %conv1374060, i64 8) #5
  %101 = bitcast i8* %call138 to double*
  %102 = load i32* %ntri, align 4, !tbaa !3
  %conv139 = sext i32 %102 to i64
  %call140 = call i8* @u_calloc(i64 %conv139, i64 8) #5
  %103 = bitcast i8* %call140 to double*
  %104 = load i32* %ntri, align 4, !tbaa !3
  %conv141 = sext i32 %104 to i64
  %call142 = call i8* @u_calloc(i64 %conv141, i64 4) #5
  %105 = bitcast i8* %call142 to i32*
  %106 = load i32* %ntr, align 4, !tbaa !3
  %mul143 = mul nsw i32 %106, %106
  %conv1444061 = zext i32 %mul143 to i64
  %call145 = call i8* @u_calloc(i64 %conv1444061, i64 8) #5
  %107 = bitcast i8* %call145 to double*
  %108 = load i32* %ntr, align 4, !tbaa !3
  %conv146 = sext i32 %108 to i64
  %call147 = call i8* @u_calloc(i64 %conv146, i64 8) #5
  %109 = bitcast i8* %call147 to double*
  %110 = load i32* %ntr, align 4, !tbaa !3
  %conv148 = sext i32 %110 to i64
  %call149 = call i8* @u_calloc(i64 %conv148, i64 8) #5
  %111 = bitcast i8* %call149 to double*
  %112 = load i32* %ntr, align 4, !tbaa !3
  %conv150 = sext i32 %112 to i64
  %call151 = call i8* @u_calloc(i64 %conv150, i64 8) #5
  %113 = bitcast i8* %call151 to double*
  %114 = load i32* %ntg, align 4, !tbaa !3
  %115 = load i32* %ntr, align 4, !tbaa !3
  %cmp152 = icmp sgt i32 %114, %115
  %. = select i1 %cmp152, i32 %114, i32 %115
  store i32 %., i32* %ntm, align 4, !tbaa !3
  %mul156 = mul nsw i32 %., %.
  %conv1574062 = zext i32 %mul156 to i64
  %call158 = call i8* @u_calloc(i64 %conv1574062, i64 8) #5
  %116 = bitcast i8* %call158 to double*
  %117 = load i32* %ntm, align 4, !tbaa !3
  %conv159 = sext i32 %117 to i64
  %call160 = call i8* @u_calloc(i64 %conv159, i64 8) #5
  %118 = bitcast i8* %call160 to double*
  %119 = load i32* %ntm, align 4, !tbaa !3
  %conv161 = sext i32 %119 to i64
  %call162 = call i8* @u_calloc(i64 %conv161, i64 4) #5
  %120 = bitcast i8* %call162 to i32*
  %.pre = load i32* %ithermal, align 4, !tbaa !3
  br label %if.end163

if.end163:                                        ; preds = %if.then92, %for.end84
  %121 = phi i32 [ %.pre, %if.then92 ], [ %67, %for.end84 ]
  %matg.0 = phi i32* [ %83, %if.then92 ], [ null, %for.end84 ]
  %iptri.0 = phi i32* [ %85, %if.then92 ], [ null, %for.end84 ]
  %kontri.0 = phi i32* [ %87, %if.then92 ], [ null, %for.end84 ]
  %nloadtr.0 = phi i32* [ %89, %if.then92 ], [ null, %for.end84 ]
  %ipiv.0 = phi i32* [ %120, %if.then92 ], [ null, %for.end84 ]
  %idist.0 = phi i32* [ %105, %if.then92 ], [ null, %for.end84 ]
  %itg.0 = phi i32* [ %81, %if.then92 ], [ null, %for.end84 ]
  %ac.0 = phi double* [ %116, %if.then92 ], [ null, %for.end84 ]
  %bc.0 = phi double* [ %118, %if.then92 ], [ null, %for.end84 ]
  %xflowact.0 = phi double* [ %69, %if.then92 ], [ null, %for.end84 ]
  %area.0 = phi double* [ %91, %if.then92 ], [ null, %for.end84 ]
  %tarea.0 = phi double* [ %109, %if.then92 ], [ null, %for.end84 ]
  %tenv.0 = phi double* [ %111, %if.then92 ], [ null, %for.end84 ]
  %dist.0 = phi double* [ %103, %if.then92 ], [ null, %for.end84 ]
  %erad.0 = phi double* [ %113, %if.then92 ], [ null, %for.end84 ]
  %pmid.0 = phi double* [ %93, %if.then92 ], [ null, %for.end84 ]
  %ft.0 = phi double* [ %101, %if.then92 ], [ null, %for.end84 ]
  %fij.0 = phi double* [ %107, %if.then92 ], [ null, %for.end84 ]
  %e1.0 = phi double* [ %95, %if.then92 ], [ null, %for.end84 ]
  %e2.0 = phi double* [ %97, %if.then92 ], [ null, %for.end84 ]
  %e3.0 = phi double* [ %99, %if.then92 ], [ null, %for.end84 ]
  %cmp164 = icmp eq i32 %121, 1
  br i1 %cmp164, label %if.then166, label %if.end182

if.then166:                                       ; preds = %if.end163
  %122 = load i32* %nk, align 4, !tbaa !3
  %conv167 = sext i32 %122 to i64
  %call168 = call i8* @u_calloc(i64 %conv167, i64 8) #5
  %123 = bitcast i8* %call168 to double*
  %124 = load i32* %nk, align 4, !tbaa !3
  %conv169 = sext i32 %124 to i64
  %call170 = call i8* @u_calloc(i64 %conv169, i64 8) #5
  %125 = bitcast i8* %call170 to double*
  %126 = load i32* %nk, align 4, !tbaa !3
  %cmp1724321 = icmp sgt i32 %126, 0
  br i1 %cmp1724321, label %for.body174, label %if.end182

for.body174:                                      ; preds = %if.then166, %for.body174
  %indvars.iv4566 = phi i64 [ %indvars.iv.next4567, %for.body174 ], [ 0, %if.then166 ]
  %arrayidx176 = getelementptr inbounds double* %t1old, i64 %indvars.iv4566
  %127 = load double* %arrayidx176, align 8, !tbaa !4
  %arrayidx178 = getelementptr inbounds double* %125, i64 %indvars.iv4566
  store double %127, double* %arrayidx178, align 8, !tbaa !4
  %indvars.iv.next4567 = add i64 %indvars.iv4566, 1
  %128 = trunc i64 %indvars.iv.next4567 to i32
  %cmp172 = icmp slt i32 %128, %126
  br i1 %cmp172, label %for.body174, label %if.end182

if.end182:                                        ; preds = %if.then166, %for.body174, %if.end163
  %t1act.0 = phi double* [ null, %if.end163 ], [ %125, %for.body174 ], [ %125, %if.then166 ]
  %t1ini.0 = phi double* [ null, %if.end163 ], [ %123, %for.body174 ], [ %123, %if.then166 ]
  %129 = bitcast double* %t1act.0 to i8*
  %130 = bitcast double* %t1ini.0 to i8*
  %131 = load i32* %nam, align 4, !tbaa !3
  %conv183 = sext i32 %131 to i64
  %call184 = call i8* @u_calloc(i64 %conv183, i64 8) #5
  %132 = bitcast i8* %call184 to double*
  %133 = load i32* %neq, align 4, !tbaa !3
  %conv185 = sext i32 %133 to i64
  %call186 = call i8* @u_calloc(i64 %conv185, i64 8) #5
  %134 = bitcast i8* %call186 to double*
  store double* %134, double** %fini, align 8, !tbaa !0
  %135 = load i32* %nmethod, align 4, !tbaa !3
  %cmp187 = icmp eq i32 %135, 4
  br i1 %cmp187, label %if.then189, label %if.end204

if.then189:                                       ; preds = %if.end182
  %136 = load i32* %neq, align 4, !tbaa !3
  %conv190 = sext i32 %136 to i64
  %call191 = call i8* @u_calloc(i64 %conv190, i64 8) #5
  %137 = bitcast i8* %call191 to double*
  store double* %137, double** %aux2, align 8, !tbaa !0
  %138 = load i32* %neq, align 4, !tbaa !3
  %conv192 = sext i32 %138 to i64
  %call193 = call i8* @u_calloc(i64 %conv192, i64 8) #5
  %139 = bitcast i8* %call193 to double*
  store double* %139, double** %fextini, align 8, !tbaa !0
  %140 = load i32* %nk, align 4, !tbaa !3
  %mul194 = shl nsw i32 %140, 2
  %conv195 = sext i32 %mul194 to i64
  %call196 = call i8* @u_calloc(i64 %conv195, i64 8) #5
  %141 = bitcast i8* %call196 to double*
  %142 = load i32* %nk, align 4, !tbaa !3
  %mul197 = shl nsw i32 %142, 2
  %conv198 = sext i32 %mul197 to i64
  %call199 = call i8* @u_calloc(i64 %conv198, i64 8) #5
  %143 = bitcast i8* %call199 to double*
  %144 = load i32* %neq, align 4, !tbaa !3
  %conv200 = sext i32 %144 to i64
  %call201 = call i8* @u_calloc(i64 %conv200, i64 8) #5
  %145 = bitcast i8* %call201 to double*
  store double* %145, double** %adb.addr, align 8, !tbaa !0
  %146 = load i32* %nzs, align 4, !tbaa !3
  %conv202 = sext i32 %146 to i64
  %call203 = call i8* @u_calloc(i64 %conv202, i64 8) #5
  %147 = bitcast i8* %call203 to double*
  store double* %147, double** %aub.addr, align 8, !tbaa !0
  br label %if.end204

if.end204:                                        ; preds = %if.then189, %if.end182
  %veini.0 = phi double* [ %141, %if.then189 ], [ null, %if.end182 ]
  %accini.0 = phi double* [ %143, %if.then189 ], [ null, %if.end182 ]
  %148 = bitcast double* %accini.0 to i8*
  %149 = bitcast double* %veini.0 to i8*
  %150 = load i32* %nstate_, align 4, !tbaa !3
  %cmp205 = icmp eq i32 %150, 0
  %.pre4581 = load i32* %mint_, align 4, !tbaa !3
  br i1 %cmp205, label %if.end204.if.end225_crit_edge, label %if.then207

if.end204.if.end225_crit_edge:                    ; preds = %if.end204
  %.pre4582 = load i32* %ne, align 4, !tbaa !3
  br label %if.end225

if.then207:                                       ; preds = %if.end204
  %mul208 = mul nsw i32 %.pre4581, %150
  %151 = load i32* %ne, align 4, !tbaa !3
  %mul209 = mul nsw i32 %mul208, %151
  %conv210 = sext i32 %mul209 to i64
  %call211 = call i8* @u_calloc(i64 %conv210, i64 8) #5
  %152 = bitcast i8* %call211 to double*
  %153 = load i32* %nstate_, align 4, !tbaa !3
  %154 = load i32* %mint_, align 4, !tbaa !3
  %mul2134317 = mul nsw i32 %154, %153
  %155 = load i32* %ne, align 4, !tbaa !3
  %mul2144318 = mul nsw i32 %mul2134317, %155
  %cmp2154319 = icmp sgt i32 %mul2144318, 0
  br i1 %cmp2154319, label %for.body217, label %if.end225

for.body217:                                      ; preds = %if.then207, %for.body217
  %indvars.iv4564 = phi i64 [ %indvars.iv.next4565, %for.body217 ], [ 0, %if.then207 ]
  %arrayidx219 = getelementptr inbounds double* %xstate, i64 %indvars.iv4564
  %156 = load double* %arrayidx219, align 8, !tbaa !4
  %arrayidx221 = getelementptr inbounds double* %152, i64 %indvars.iv4564
  store double %156, double* %arrayidx221, align 8, !tbaa !4
  %indvars.iv.next4565 = add i64 %indvars.iv4564, 1
  %157 = trunc i64 %indvars.iv.next4565 to i32
  %cmp215 = icmp slt i32 %157, %mul2144318
  br i1 %cmp215, label %for.body217, label %if.end225

if.end225:                                        ; preds = %if.then207, %for.body217, %if.end204.if.end225_crit_edge
  %158 = phi i32 [ %.pre4582, %if.end204.if.end225_crit_edge ], [ %155, %for.body217 ], [ %155, %if.then207 ]
  %159 = phi i32 [ %.pre4581, %if.end204.if.end225_crit_edge ], [ %154, %for.body217 ], [ %154, %if.then207 ]
  %xstateini.0 = phi double* [ null, %if.end204.if.end225_crit_edge ], [ %152, %for.body217 ], [ %152, %if.then207 ]
  %160 = bitcast double* %xstateini.0 to i8*
  %mul226 = mul nsw i32 %159, 6
  %mul227 = mul nsw i32 %mul226, %158
  %conv228 = sext i32 %mul227 to i64
  %call229 = call i8* @u_calloc(i64 %conv228, i64 8) #5
  %161 = bitcast i8* %call229 to double*
  %162 = load i32* %mint_, align 4, !tbaa !3
  %mul230 = mul nsw i32 %162, 6
  %163 = load i32* %ne, align 4, !tbaa !3
  %mul231 = mul nsw i32 %mul230, %163
  %conv232 = sext i32 %mul231 to i64
  %call233 = call i8* @u_calloc(i64 %conv232, i64 8) #5
  %164 = bitcast i8* %call233 to double*
  %arrayidx234 = getelementptr inbounds i8* %nodeflab, i64 24
  %call235 = call i32 @strcmp1(i8* %arrayidx234, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #5
  %cmp236 = icmp eq i32 %call235, 0
  br i1 %cmp236, label %if.then242, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end225
  %arrayidx238 = getelementptr inbounds i8* %noelplab, i64 24
  %call239 = call i32 @strcmp1(i8* %arrayidx238, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #5
  %cmp240 = icmp eq i32 %call239, 0
  br i1 %cmp240, label %if.then242, label %if.end246

if.then242:                                       ; preds = %lor.lhs.false, %if.end225
  %165 = load i32* %mint_, align 4, !tbaa !3
  %166 = load i32* %ne, align 4, !tbaa !3
  %mul243 = mul nsw i32 %166, %165
  %conv244 = sext i32 %mul243 to i64
  %call245 = call i8* @u_calloc(i64 %conv244, i64 8) #5
  %167 = bitcast i8* %call245 to double*
  br label %if.end246

if.end246:                                        ; preds = %if.then242, %lor.lhs.false
  %enerini.0 = phi double* [ %167, %if.then242 ], [ null, %lor.lhs.false ]
  %168 = bitcast double* %enerini.0 to i8*
  %169 = load double* %qaold, align 8, !tbaa !4
  store double %169, double* %qa, align 8, !tbaa !4
  %170 = load double* %tinc, align 8, !tbaa !4
  %171 = load double* %tper, align 8, !tbaa !4
  %div = fdiv double %170, %171
  %cmp247 = fcmp ugt double %div, 1.000000e-06
  br i1 %cmp247, label %if.end253, label %if.then249

if.then249:                                       ; preds = %if.end246
  %puts4057 = call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str41, i64 0, i64 0))
  %puts4058 = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str42, i64 0, i64 0))
  %puts4059 = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str43, i64 0, i64 0))
  %.pre4575 = load double* %tper, align 8, !tbaa !4
  br label %if.end253

if.end253:                                        ; preds = %if.end246, %if.then249
  %172 = phi double [ %171, %if.end246 ], [ %.pre4575, %if.then249 ]
  %173 = load double* %tmin, align 8, !tbaa !4
  %div254 = fdiv double %173, %172
  store double %div254, double* %tmin, align 8, !tbaa !4
  %174 = load double* %tmax, align 8, !tbaa !4
  %175 = load double* %tper, align 8, !tbaa !4
  %div255 = fdiv double %174, %175
  store double %div255, double* %tmax, align 8, !tbaa !4
  %cmp256 = fcmp ogt double %14, 1.000000e-10
  br i1 %cmp256, label %if.end270, label %if.else259

if.else259:                                       ; preds = %if.end253
  %cmp260 = fcmp ogt double %13, 1.000000e-10
  br i1 %cmp260, label %if.end270, label %if.else263

if.else263:                                       ; preds = %if.else259
  %176 = load double* %qa, align 8, !tbaa !4
  %cmp264 = fcmp ogt double %176, 1.000000e-10
  %.4063 = select i1 %cmp264, double %176, double 1.000000e-02
  br label %if.end270

if.end270:                                        ; preds = %if.else263, %if.else259, %if.end253
  %qam.0 = phi double [ %14, %if.end253 ], [ %13, %if.else259 ], [ %.4063, %if.else263 ]
  %177 = load i32* %nmethod, align 4, !tbaa !3
  %cmp271 = icmp eq i32 %177, 4
  br i1 %cmp271, label %if.then273, label %if.end459

if.then273:                                       ; preds = %if.end270
  %178 = load double* %alpha, align 8, !tbaa !4
  %sub = fsub double 1.000000e+00, %178
  %mul275 = fmul double %sub, %sub
  %div276 = fmul double %mul275, 2.500000e-01
  store double %div276, double* %bet, align 8, !tbaa !4
  %sub277 = fsub double 5.000000e-01, %178
  store double %sub277, double* %gam, align 8, !tbaa !4
  store i32 1, i32* %mass, align 4, !tbaa !3
  %179 = load i32* %nk, align 4, !tbaa !3
  %mul278 = shl nsw i32 %179, 2
  %conv279 = sext i32 %mul278 to i64
  %call280 = call i8* @u_calloc(i64 %conv279, i64 8) #5
  %180 = bitcast i8* %call280 to double*
  %181 = load i32* %mint_, align 4, !tbaa !3
  %mul281 = mul nsw i32 %181, 6
  %182 = load i32* %ne, align 4, !tbaa !3
  %mul282 = mul nsw i32 %mul281, %182
  %conv283 = sext i32 %mul282 to i64
  %call284 = call i8* @u_calloc(i64 %conv283, i64 8) #5
  %183 = bitcast i8* %call284 to double*
  store i32 -1, i32* %iout, align 4, !tbaa !3
  store double 1.000000e+00, double* %dtime, align 8, !tbaa !4
  store i32 1, i32* %ielas, align 4, !tbaa !3
  %184 = load i32* %ithermal, align 4, !tbaa !3
  %cmp285 = icmp sgt i32 %184, 1
  br i1 %cmp285, label %if.then287, label %if.end288

if.then287:                                       ; preds = %if.then273
  call void @radflowload_(i32* %itg.0, i32* %matg.0, i32* %ntg, i32* %ntr, i32* %ntm, i32* %nodeflow, double* %xflowact.0, double* %ac.0, double* %bc.0, i32* %nload, i8* %sideload, i32* %nelemload, double* %66, i8* %lakon, i32* %ipiv.0, i32* %ntmat, double* %vold, double* %shcon, i32* %nshcon, i32* %ipkon, i32* %kon, double* %co, double* %pmid.0, double* %e1.0, double* %e2.0, double* %e3.0, i32* %iptri.0, i32* %kontri.0, i32* %ntri, i32* %nloadtr.0, double* %tarea.0, double* %tenv.0, double* %physcon, double* %erad.0, double* %fij.0, double* %ft.0, double* %dist.0, i32* %idist.0, double* %area.0, i32* %nflow) #5
  br label %if.end288

if.end288:                                        ; preds = %if.then287, %if.then273
  %185 = load i32* %icascade, align 4, !tbaa !3
  %cmp289 = icmp eq i32 %185, 2
  br i1 %cmp289, label %if.then291, label %if.end288.if.end322_crit_edge

if.end288.if.end322_crit_edge:                    ; preds = %if.end288
  %.pre4583 = load double** %coefmpc, align 8, !tbaa !0
  br label %if.end322

if.then291:                                       ; preds = %if.end288
  store i32 %nmpcref.0, i32* %nmpc, align 4, !tbaa !3
  store i32 %19, i32* %memmpc_, align 4, !tbaa !3
  store i32 %20, i32* %mpcfree, align 4, !tbaa !3
  %186 = load i32** %nodempc, align 8, !tbaa !0
  %187 = bitcast i32* %186 to i8*
  %mul292 = mul nsw i32 %19, 3
  %conv293 = sext i32 %mul292 to i64
  %mul294 = shl nsw i64 %conv293, 2
  %call295 = call i8* @realloc(i8* %187, i64 %mul294) #5
  %188 = bitcast i8* %call295 to i32*
  store i32* %188, i32** %nodempc, align 8, !tbaa !0
  %cmp2984315 = icmp sgt i32 %19, 0
  br i1 %cmp2984315, label %for.body300, label %for.end307

for.body300:                                      ; preds = %if.then291, %for.body300
  %indvars.iv4562 = phi i64 [ %indvars.iv.next4563, %for.body300 ], [ 0, %if.then291 ]
  %arrayidx302 = getelementptr inbounds i32* %nodempcref.0, i64 %indvars.iv4562
  %189 = load i32* %arrayidx302, align 4, !tbaa !3
  %arrayidx304 = getelementptr inbounds i32* %188, i64 %indvars.iv4562
  store i32 %189, i32* %arrayidx304, align 4, !tbaa !3
  %indvars.iv.next4563 = add i64 %indvars.iv4562, 1
  %190 = trunc i64 %indvars.iv.next4563 to i32
  %cmp298 = icmp slt i32 %190, %mul292
  br i1 %cmp298, label %for.body300, label %for.end307

for.end307:                                       ; preds = %for.body300, %if.then291
  %191 = load double** %coefmpc, align 8, !tbaa !0
  %192 = bitcast double* %191 to i8*
  %conv308 = sext i32 %19 to i64
  %mul309 = shl nsw i64 %conv308, 3
  %call310 = call i8* @realloc(i8* %192, i64 %mul309) #5
  %193 = bitcast i8* %call310 to double*
  store double* %193, double** %coefmpc, align 8, !tbaa !0
  br i1 %cmp2984315, label %for.body314, label %if.end322

for.body314:                                      ; preds = %for.end307, %for.body314
  %indvars.iv4558 = phi i64 [ %indvars.iv.next4559, %for.body314 ], [ 0, %for.end307 ]
  %arrayidx316 = getelementptr inbounds double* %coefmpcref.0, i64 %indvars.iv4558
  %194 = load double* %arrayidx316, align 8, !tbaa !4
  %arrayidx318 = getelementptr inbounds double* %193, i64 %indvars.iv4558
  store double %194, double* %arrayidx318, align 8, !tbaa !4
  %indvars.iv.next4559 = add i64 %indvars.iv4558, 1
  %lftr.wideiv4560 = trunc i64 %indvars.iv.next4559 to i32
  %exitcond4561 = icmp eq i32 %lftr.wideiv4560, %19
  br i1 %exitcond4561, label %if.end322, label %for.body314

if.end322:                                        ; preds = %for.end307, %for.body314, %if.end288.if.end322_crit_edge
  %195 = phi double* [ %.pre4583, %if.end288.if.end322_crit_edge ], [ %193, %for.body314 ], [ %193, %for.end307 ]
  %196 = load i32** %nodempc, align 8, !tbaa !0
  call void @nonlinmpc_(double* %co, double* %vold, i32* %ipompc, i32* %196, double* %195, i8* %labmpc, i32* %nmpc, i32* %ikboun, i32* %ilboun, i32* %nboun, double* %xbounold, double* %53, i32* %55, i32* %maxlenmpc, i32* %ikmpc, i32* %ilmpc, i32* %icascade, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne) #5
  %197 = load i32* %icascade, align 4, !tbaa !3
  %cmp323 = icmp eq i32 %197, 2
  br i1 %cmp323, label %if.then325, label %if.end356

if.then325:                                       ; preds = %if.end322
  %198 = load i32* %nmpc, align 4, !tbaa !3
  %199 = load i32* %memmpc_, align 4, !tbaa !3
  %200 = load i32* %mpcfree, align 4, !tbaa !3
  %201 = bitcast i32* %nodempcref.0 to i8*
  %mul326 = mul nsw i32 %199, 3
  %conv327 = sext i32 %mul326 to i64
  %mul328 = shl nsw i64 %conv327, 2
  %call329 = call i8* @realloc(i8* %201, i64 %mul328) #5
  %202 = bitcast i8* %call329 to i32*
  %203 = load i32* %memmpc_, align 4, !tbaa !3
  %cmp3324310 = icmp sgt i32 %203, 0
  br i1 %cmp3324310, label %for.body334.lr.ph, label %for.end341

for.body334.lr.ph:                                ; preds = %if.then325
  %204 = load i32** %nodempc, align 8, !tbaa !0
  %205 = bitcast i32* %204 to i8*
  %mul331 = mul nsw i32 %203, 3
  %206 = icmp sgt i32 %mul331, 1
  %mul331.op = add i32 %mul331, -1
  %207 = zext i32 %mul331.op to i64
  %.op4603 = shl nuw nsw i64 %207, 2
  %.op4603.op = add i64 %.op4603, 4
  %208 = select i1 %206, i64 %.op4603.op, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call329, i8* %205, i64 %208, i32 4, i1 false)
  br label %for.end341

for.end341:                                       ; preds = %for.body334.lr.ph, %if.then325
  %209 = bitcast double* %coefmpcref.0 to i8*
  %conv342 = sext i32 %203 to i64
  %mul343 = shl nsw i64 %conv342, 3
  %call344 = call i8* @realloc(i8* %209, i64 %mul343) #5
  %210 = bitcast i8* %call344 to double*
  %211 = load i32* %memmpc_, align 4, !tbaa !3
  %cmp3464306 = icmp sgt i32 %211, 0
  br i1 %cmp3464306, label %for.body348.lr.ph, label %if.end356thread-pre-split

for.body348.lr.ph:                                ; preds = %for.end341
  %212 = load double** %coefmpc, align 8, !tbaa !0
  %213 = bitcast double* %212 to i8*
  %214 = icmp sgt i32 %211, 1
  %.op4601 = add i32 %211, -1
  %215 = zext i32 %.op4601 to i64
  %.op4602 = shl nuw nsw i64 %215, 3
  %.op4602.op = add i64 %.op4602, 8
  %216 = select i1 %214, i64 %.op4602.op, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call344, i8* %213, i64 %216, i32 8, i1 false)
  br label %if.end356thread-pre-split

if.end356thread-pre-split:                        ; preds = %for.body348.lr.ph, %for.end341
  %.pr = load i32* %icascade, align 4, !tbaa !3
  br label %if.end356

if.end356:                                        ; preds = %if.end356thread-pre-split, %if.end322
  %217 = phi i32 [ %.pr, %if.end356thread-pre-split ], [ %197, %if.end322 ]
  %mpcfreeref.1 = phi i32 [ %200, %if.end356thread-pre-split ], [ %20, %if.end322 ]
  %memmpcref_.1 = phi i32 [ %199, %if.end356thread-pre-split ], [ %19, %if.end322 ]
  %nmpcref.1 = phi i32 [ %198, %if.end356thread-pre-split ], [ %nmpcref.0, %if.end322 ]
  %nodempcref.1 = phi i32* [ %202, %if.end356thread-pre-split ], [ %nodempcref.0, %if.end322 ]
  %coefmpcref.1 = phi double* [ %210, %if.end356thread-pre-split ], [ %coefmpcref.0, %if.end322 ]
  %cmp357 = icmp sgt i32 %217, 0
  br i1 %cmp357, label %if.then359, label %if.end360

if.then359:                                       ; preds = %if.end356
  %218 = load i32** %icol, align 8, !tbaa !0
  call void @remastruct(i32* %ipompc, double** %coefmpc, i32** %nodempc, i32* %nmpc, i32* %mpcfree, i32* %nodeboun, i32* %ndirboun, i32* %nboun, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, i8* %labmpc, i32 %labmpcLen, i32* %nk, i32* %memmpc_, i32* %icascade, i32* %maxlenmpc, i32* %kon, i32* %ipkon, i8* %lakon, i32 %lakonLen, i32* %ne, i32* %nnn, i32* %nactdof, i32* %218, i32* %jq, i32** %irow, i32* %isolver, i32* %neq, i32* %nzs, i32* %nmethod, double** %f, double** %finc, double** %fext, double** %b.addr, double** %aux2, double** %fini, double** %fextini, double** %adb.addr, double** %aub.addr, i32* %ithermal) #5
  br label %if.end360

if.end360:                                        ; preds = %if.end356, %if.then359
  %219 = load double** %f, align 8, !tbaa !0
  %220 = load double** %b.addr, align 8, !tbaa !0
  %221 = load i32** %nodempc, align 8, !tbaa !0
  %222 = load double** %coefmpc, align 8, !tbaa !0
  call void @results_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, double* %vold, double* null, i32* null, i32* %nelemprint, i32* %neprint, double* %183, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t0, double* %t1old, i32* %ithermal, double* %prestr, i32* %iprestr, i8* %noelplab, i8* %nodeflab, double* %eei, double* null, i32* %iperturb, double* %219, double* %180, i32* %nactdof, i32* %iout, double* %qa, i32* %noprint, i32* %nodeprint, double* %vold, double* %220, i32* %nodeboun, i32* %ndirboun, double* %xbounold, i32* %nboun, i32* %ipompc, i32* %221, double* %222, i8* %labmpc, i32* %nmpc, i32* %nmethod, double* %cam, i32* %neq, double* %veold, double* %accold, double* %bet, double* %gam, double* %dtime, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, double* %xstateini.0, double* %41, double* %xstate, i32* %npmat_, double* null, i8* %matname, i32* %mint_, i32* %ielas, i32* %icmd, i32* %ncmat_, i32* %nstate_, double* %sti, double* %51, i32* %ikboun, i32* %ilboun, double* %ener, double* null, double* %sti, double* null, double* %161, double* %enerini.0, double* %cocon, i32* %ncocon) #5
  store i32 0, i32* %iout, align 4, !tbaa !3
  store i32 0, i32* %ielas, align 4, !tbaa !3
  call void @free(i8* %call280) #5
  call void @free(i8* %call284) #5
  %223 = load i32* %iexpl, align 4, !tbaa !3
  %cmp361 = icmp eq i32 %223, 0
  br i1 %cmp361, label %if.then363, label %if.end364

if.then363:                                       ; preds = %if.end360
  store i32 1, i32* %intscheme, align 4, !tbaa !3
  br label %if.end364

if.end364:                                        ; preds = %if.then363, %if.end360
  %224 = load i32* %neq, align 4, !tbaa !3
  %conv365 = sext i32 %224 to i64
  %call366 = call i8* @u_calloc(i64 %conv365, i64 8) #5
  %225 = bitcast i8* %call366 to double*
  %226 = load i32* %nzs, align 4, !tbaa !3
  %conv367 = sext i32 %226 to i64
  %call368 = call i8* @u_calloc(i64 %conv367, i64 8) #5
  %227 = bitcast i8* %call368 to double*
  store double* %227, double** %au.addr, align 8, !tbaa !0
  %228 = load i32** %nodempc, align 8, !tbaa !0
  %229 = load double** %coefmpc, align 8, !tbaa !0
  %230 = load double** %finc, align 8, !tbaa !0
  %231 = load double** %fext, align 8, !tbaa !0
  %232 = load i32** %icol, align 8, !tbaa !0
  %233 = load i32** %irow, align 8, !tbaa !0
  %234 = load double** %adb.addr, align 8, !tbaa !0
  %235 = load double** %aub.addr, align 8, !tbaa !0
  call void @mafillsm_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, i32* %nodeboun, i32* %ndirboun, double* %xbounold, i32* %nboun, i32* %ipompc, i32* %228, double* %229, i32* %nmpc, i32* %nodeforc, i32* %ndirforc, double* %xforcold, i32* %nforc, i32* %nelemload, i8* %sideload, double* %xloadold, i32* %nload, double* %p1, double* %p2, double* %omold, double* %bodyfold, double* %225, double* %227, double* %230, double* %231, i32* %nactdof, i32* %232, i32* %jq, i32* %233, i32* %neq, i32* %nzl, i32* %nmethodact, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t0, double* %t1old, i32* %ithermal, double* %prestr, i32* %iprestr, double* %vold, i32* %iperturb, double* %sti, i32* %nzs, double* %183, double* %234, double* %235, double* %eei, i32* %iexpl, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, double* %41, i32* %npmat_, double* %dtime, i8* %matname, i32* %mint_, i32* %ncmat_, i32* %mass, i32* %stiffness, i32* %buckling, i32* %rhsi, i32* %intscheme, double* %physcon, double* %shcon, i32* %nshcon, double* %cocon, i32* %ncocon) #5
  %236 = load i32* %nmethodact, align 4, !tbaa !3
  %cmp369 = icmp eq i32 %236, 0
  br i1 %cmp369, label %if.then371, label %if.end373

if.then371:                                       ; preds = %if.end364
  %237 = load i32* %kode, align 4, !tbaa !3
  %inc372 = add nsw i32 %237, 1
  store i32 %inc372, i32* %kode, align 4, !tbaa !3
  call void @out_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, double* null, double* null, i32* null, i32* %nmethod, i32* %kode, i8* %nodeflab, double* null, double* %t1, double* %180, double* %ttime, double* null, i32* %ielmat, i8* %matname, double* null, double* null, i32* %nstate_, i32* %istep, i32* %j, i32* %iperturb, double* %ener, i32* %mint_, i8* %output) #5
  call void (...)* @stop_() #5
  br label %if.end373

if.end373:                                        ; preds = %if.then371, %if.end364
  store double 0.000000e+00, double* %reltime, align 8, !tbaa !4
  store double 0.000000e+00, double* %time, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [3 x double]* %bodyfact, i64 0, i64 0
  call void @tempload_(double* %xforcold, double* %xforc, double* %64, i32* %iamforc, i32* %nforc, double* %xloadold, double* %xload, double* %66, i32* %iamload, i32* %nload, double* %omold, double* %om, double* %omact, i32* %iamom, double* %bodyfold, double* %bodyf, double* %arraydecay, i32* %iambodyf, double* %t1old, double* %t1, double* %t1act.0, i32* %iamt1, i32* %nk, double* %amta, i32* %namta, i32* %nam, double* %132, double* %time, double* %reltime, double* %ttime, double* %dtime, i32* %ithermal, i32* %nmethod, double* %xbounold, double* %xboun, double* %57, i32* %iamboun, i32* %nboun, double* %xflowold, double* %xflow, double* %xflowact.0, i32* %iamflow, i32* %nflow) #5
  %238 = load i32** %nodempc, align 8, !tbaa !0
  %239 = load double** %coefmpc, align 8, !tbaa !0
  %240 = load double** %fext, align 8, !tbaa !0
  call void @rhs_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, i32* %ipompc, i32* %238, double* %239, i32* %nmpc, i32* %nodeforc, i32* %ndirforc, double* %64, i32* %nforc, i32* %nelemload, i8* %sideload, double* %66, i32* %nload, double* %p1, double* %p2, double* %omact, double* %arraydecay, double* %240, i32* %nactdof, i32* %neq, i32* %nmethodact, i32* %ikmpc, i32* %ilmpc, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t0, double* %t1act.0, i32* %ithermal, double* %prestr, i32* %iprestr, double* %vold, i32* %iperturb, i32* %iexpl, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, i32* %npmat_) #5
  %241 = load i32* %neq, align 4, !tbaa !3
  %cmp3764304 = icmp sgt i32 %241, 0
  br i1 %cmp3764304, label %for.body378.lr.ph, label %for.end388

for.body378.lr.ph:                                ; preds = %if.end373
  %242 = load double** %fext, align 8, !tbaa !0
  %243 = load double** %f, align 8, !tbaa !0
  %244 = load double** %b.addr, align 8, !tbaa !0
  br label %for.body378

for.body378:                                      ; preds = %for.body378.lr.ph, %for.body378
  %indvars.iv4550 = phi i64 [ 0, %for.body378.lr.ph ], [ %indvars.iv.next4551, %for.body378 ]
  %arrayidx380 = getelementptr inbounds double* %242, i64 %indvars.iv4550
  %245 = load double* %arrayidx380, align 8, !tbaa !4
  %arrayidx382 = getelementptr inbounds double* %243, i64 %indvars.iv4550
  %246 = load double* %arrayidx382, align 8, !tbaa !4
  %sub383 = fsub double %245, %246
  %arrayidx385 = getelementptr inbounds double* %244, i64 %indvars.iv4550
  store double %sub383, double* %arrayidx385, align 8, !tbaa !4
  %indvars.iv.next4551 = add i64 %indvars.iv4550, 1
  %247 = trunc i64 %indvars.iv.next4551 to i32
  %cmp376 = icmp slt i32 %247, %241
  br i1 %cmp376, label %for.body378, label %for.end388

for.end388:                                       ; preds = %for.body378, %if.end373
  %248 = load i32* %iexpl, align 4, !tbaa !3
  %cmp389 = icmp eq i32 %248, 0
  br i1 %cmp389, label %for.cond392.preheader, label %for.cond420.preheader

for.cond420.preheader:                            ; preds = %for.end388
  br i1 %cmp3764304, label %for.body423.lr.ph, label %for.cond438.preheader

for.body423.lr.ph:                                ; preds = %for.cond420.preheader
  %249 = load double** %fext, align 8, !tbaa !0
  %250 = load double** %f, align 8, !tbaa !0
  %251 = load double** %adb.addr, align 8, !tbaa !0
  %252 = load double** %b.addr, align 8, !tbaa !0
  br label %for.body423

for.cond392.preheader:                            ; preds = %for.end388
  br i1 %cmp3764304, label %for.body395.lr.ph, label %for.cond403.preheader

for.body395.lr.ph:                                ; preds = %for.cond392.preheader
  %253 = load double** %adb.addr, align 8, !tbaa !0
  br label %for.body395

for.cond403.preheader:                            ; preds = %for.body395, %for.cond392.preheader
  %254 = load i32* %nzs, align 4, !tbaa !3
  %cmp4044298 = icmp sgt i32 %254, 0
  br i1 %cmp4044298, label %for.body406.lr.ph, label %for.end413

for.body406.lr.ph:                                ; preds = %for.cond403.preheader
  %255 = load double** %aub.addr, align 8, !tbaa !0
  %256 = load double** %au.addr, align 8, !tbaa !0
  br label %for.body406

for.body395:                                      ; preds = %for.body395.lr.ph, %for.body395
  %indvars.iv4546 = phi i64 [ 0, %for.body395.lr.ph ], [ %indvars.iv.next4547, %for.body395 ]
  %arrayidx397 = getelementptr inbounds double* %253, i64 %indvars.iv4546
  %257 = load double* %arrayidx397, align 8, !tbaa !4
  %arrayidx399 = getelementptr inbounds double* %225, i64 %indvars.iv4546
  store double %257, double* %arrayidx399, align 8, !tbaa !4
  %indvars.iv.next4547 = add i64 %indvars.iv4546, 1
  %258 = trunc i64 %indvars.iv.next4547 to i32
  %cmp393 = icmp slt i32 %258, %241
  br i1 %cmp393, label %for.body395, label %for.cond403.preheader

for.body406:                                      ; preds = %for.body406.lr.ph, %for.body406
  %indvars.iv4544 = phi i64 [ 0, %for.body406.lr.ph ], [ %indvars.iv.next4545, %for.body406 ]
  %arrayidx408 = getelementptr inbounds double* %255, i64 %indvars.iv4544
  %259 = load double* %arrayidx408, align 8, !tbaa !4
  %arrayidx410 = getelementptr inbounds double* %256, i64 %indvars.iv4544
  store double %259, double* %arrayidx410, align 8, !tbaa !4
  %indvars.iv.next4545 = add i64 %indvars.iv4544, 1
  %260 = trunc i64 %indvars.iv.next4545 to i32
  %cmp404 = icmp slt i32 %260, %254
  br i1 %cmp404, label %for.body406, label %for.end413

for.end413:                                       ; preds = %for.body406, %for.cond403.preheader
  %261 = load i32* %isolver, align 4, !tbaa !3
  %cmp414 = icmp eq i32 %261, 0
  br i1 %cmp414, label %if.then416, label %if.else417

if.then416:                                       ; preds = %for.end413
  %262 = load double** %au.addr, align 8, !tbaa !0
  %263 = load double** %b.addr, align 8, !tbaa !0
  %264 = load i32** %icol, align 8, !tbaa !0
  %265 = load i32** %irow, align 8, !tbaa !0
  call void @spooles(double* %225, double* %262, double* %263, i32* %264, i32* %265, i32* %neq, i32* %nzs) #5
  br label %for.cond438.preheader

if.else417:                                       ; preds = %for.end413
  %266 = load double** %b.addr, align 8, !tbaa !0
  call void @preiter(double* %225, double** %au.addr, double* %266, i32** %icol, i32** %irow, i32* %neq, i32* %nzs, i32* %isolver, i32* %iperturb) #5
  br label %for.cond438.preheader

for.cond438.preheader:                            ; preds = %for.cond420.preheader, %for.body423, %if.then416, %if.else417
  %267 = load i32* %nk, align 4, !tbaa !3
  %cmp4404296 = icmp sgt i32 %267, 0
  br i1 %cmp4404296, label %for.body442.lr.ph, label %for.end458

for.body442.lr.ph:                                ; preds = %for.cond438.preheader
  %mul439 = shl nsw i32 %267, 2
  %268 = load double** %b.addr, align 8, !tbaa !0
  br label %for.body442

for.body423:                                      ; preds = %for.body423.lr.ph, %for.body423
  %indvars.iv4548 = phi i64 [ 0, %for.body423.lr.ph ], [ %indvars.iv.next4549, %for.body423 ]
  %arrayidx425 = getelementptr inbounds double* %249, i64 %indvars.iv4548
  %269 = load double* %arrayidx425, align 8, !tbaa !4
  %arrayidx427 = getelementptr inbounds double* %250, i64 %indvars.iv4548
  %270 = load double* %arrayidx427, align 8, !tbaa !4
  %sub428 = fsub double %269, %270
  %arrayidx430 = getelementptr inbounds double* %251, i64 %indvars.iv4548
  %271 = load double* %arrayidx430, align 8, !tbaa !4
  %div431 = fdiv double %sub428, %271
  %arrayidx433 = getelementptr inbounds double* %252, i64 %indvars.iv4548
  store double %div431, double* %arrayidx433, align 8, !tbaa !4
  %indvars.iv.next4549 = add i64 %indvars.iv4548, 1
  %272 = trunc i64 %indvars.iv.next4549 to i32
  %cmp421 = icmp slt i32 %272, %241
  br i1 %cmp421, label %for.body423, label %for.cond438.preheader

for.body442:                                      ; preds = %for.body442.lr.ph, %for.inc456
  %indvars.iv4542 = phi i64 [ 0, %for.body442.lr.ph ], [ %indvars.iv.next4543, %for.inc456 ]
  %arrayidx444 = getelementptr inbounds i32* %nactdof, i64 %indvars.iv4542
  %273 = load i32* %arrayidx444, align 4, !tbaa !3
  %cmp445 = icmp eq i32 %273, 0
  br i1 %cmp445, label %for.inc456, label %if.then447

if.then447:                                       ; preds = %for.body442
  %sub450 = add nsw i32 %273, -1
  %idxprom451 = sext i32 %sub450 to i64
  %arrayidx452 = getelementptr inbounds double* %268, i64 %idxprom451
  %274 = load double* %arrayidx452, align 8, !tbaa !4
  %arrayidx454 = getelementptr inbounds double* %accold, i64 %indvars.iv4542
  store double %274, double* %arrayidx454, align 8, !tbaa !4
  br label %for.inc456

for.inc456:                                       ; preds = %for.body442, %if.then447
  %indvars.iv.next4543 = add i64 %indvars.iv4542, 1
  %275 = trunc i64 %indvars.iv.next4543 to i32
  %cmp440 = icmp slt i32 %275, %mul439
  br i1 %cmp440, label %for.body442, label %for.end458

for.end458:                                       ; preds = %for.inc456, %for.cond438.preheader
  call void @free(i8* %call366) #5
  %276 = load double** %au.addr, align 8, !tbaa !0
  %277 = bitcast double* %276 to i8*
  call void @free(i8* %277) #5
  store i32 0, i32* %mass, align 4, !tbaa !3
  store i32 0, i32* %intscheme, align 4, !tbaa !3
  br label %if.end459

if.end459:                                        ; preds = %for.end458, %if.end270
  %mpcfreeref.2 = phi i32 [ %mpcfreeref.1, %for.end458 ], [ %20, %if.end270 ]
  %memmpcref_.2 = phi i32 [ %memmpcref_.1, %for.end458 ], [ %19, %if.end270 ]
  %nmpcref.2 = phi i32 [ %nmpcref.1, %for.end458 ], [ %nmpcref.0, %if.end270 ]
  %nodempcref.2 = phi i32* [ %nodempcref.1, %for.end458 ], [ %nodempcref.0, %if.end270 ]
  %ad.addr.0 = phi double* [ %225, %for.end458 ], [ %ad, %if.end270 ]
  %coefmpcref.2 = phi double* [ %coefmpcref.1, %for.end458 ], [ %coefmpcref.0, %if.end270 ]
  %278 = load i32* %iexpl, align 4, !tbaa !3
  %cmp460 = icmp eq i32 %278, 0
  br i1 %cmp460, label %while.cond.preheader, label %if.then462

if.then462:                                       ; preds = %if.end459
  store i32 3, i32* %icmd, align 4, !tbaa !3
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then462, %if.end459
  %cmp46442724345 = fcmp ogt double %div, 1.000000e-06
  br i1 %cmp46442724345, label %while.body.lr.ph.lr.ph, label %while.end1821.thread

while.body.lr.ph.lr.ph:                           ; preds = %while.cond.preheader
  %arrayidx573 = getelementptr inbounds i8* %noelplab, i64 24
  %arraydecay622 = getelementptr inbounds [3 x double]* %bodyfact, i64 0, i64 0
  %cmp1190 = fcmp olt double %14, 1.000000e-10
  %conv1538 = sitofp i32 %conv6 to double
  %arrayidx1739 = getelementptr inbounds i8* %nodeflab, i64 12
  %arrayidx1748 = getelementptr inbounds i8* %nodeflab, i64 20
  %arrayidx1764 = getelementptr inbounds i8* %nodeflab, i64 28
  %arrayidx1790 = getelementptr inbounds i32* %ns, i64 4
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %while.cond.outer.backedge
  %coefmpcref.3.ph4364 = phi double* [ %coefmpcref.2, %while.body.lr.ph.lr.ph ], [ %coefmpcref.7, %while.cond.outer.backedge ]
  %xstaten.0.ph4363 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %xstaten.1, %while.cond.outer.backedge ]
  %enern.0.ph4362 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %enern.1, %while.cond.outer.backedge ]
  %ad.addr.1.ph4361 = phi double* [ %ad.addr.0, %while.body.lr.ph.lr.ph ], [ %ad.addr.3, %while.cond.outer.backedge ]
  %inum.0.ph4360 = phi i32* [ null, %while.body.lr.ph.lr.ph ], [ %718, %while.cond.outer.backedge ]
  %jnz.0.ph4359 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %jnz.1, %while.cond.outer.backedge ]
  %istab.0.ph4358 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %istab.1.be.ph, %while.cond.outer.backedge ]
  %nodempcref.3.ph4357 = phi i32* [ %nodempcref.2, %while.body.lr.ph.lr.ph ], [ %nodempcref.7, %while.cond.outer.backedge ]
  %ram1.0.ph4356 = phi double [ 0.000000e+00, %while.body.lr.ph.lr.ph ], [ %ram.14227, %while.cond.outer.backedge ]
  %ram.0.ph4355 = phi double [ 0.000000e+00, %while.body.lr.ph.lr.ph ], [ %ram.4, %while.cond.outer.backedge ]
  %theta.0.ph4354 = phi double [ 0.000000e+00, %while.body.lr.ph.lr.ph ], [ %theta.1.be.ph, %while.cond.outer.backedge ]
  %dtheta.0.ph4353 = phi double [ %div, %while.body.lr.ph.lr.ph ], [ %dtheta.1.be.ph, %while.cond.outer.backedge ]
  %qam.1.ph4352 = phi double [ %qam.0, %while.body.lr.ph.lr.ph ], [ %qam.4, %while.cond.outer.backedge ]
  %nmpcref.3.ph4351 = phi i32 [ %nmpcref.2, %while.body.lr.ph.lr.ph ], [ %nmpcref.7, %while.cond.outer.backedge ]
  %memmpcref_.3.ph4350 = phi i32 [ %memmpcref_.2, %while.body.lr.ph.lr.ph ], [ %memmpcref_.7, %while.cond.outer.backedge ]
  %mpcfreeref.3.ph4349 = phi i32 [ %mpcfreeref.2, %while.body.lr.ph.lr.ph ], [ %mpcfreeref.7, %while.cond.outer.backedge ]
  %epn.0.ph4348 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %epn.1, %while.cond.outer.backedge ]
  %een.0.ph4347 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %een.1, %while.cond.outer.backedge ]
  %stn.0.ph4346 = phi double* [ null, %while.body.lr.ph.lr.ph ], [ %716, %while.cond.outer.backedge ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %coefmpcref.34288 = phi double* [ %coefmpcref.3.ph4364, %while.body.lr.ph ], [ %coefmpcref.7, %while.cond.backedge ]
  %ad.addr.14287 = phi double* [ %ad.addr.1.ph4361, %while.body.lr.ph ], [ %ad.addr.3, %while.cond.backedge ]
  %inum.04286 = phi i32* [ %inum.0.ph4360, %while.body.lr.ph ], [ %inum.14234, %while.cond.backedge ]
  %jprint.04285 = phi i32 [ 0, %while.body.lr.ph ], [ %jprint.1, %while.cond.backedge ]
  %jnz.04284 = phi i32 [ %jnz.0.ph4359, %while.body.lr.ph ], [ %jnz.1, %while.cond.backedge ]
  %istab.04283 = phi i32 [ %istab.0.ph4358, %while.body.lr.ph ], [ %istab.1.be.ph, %while.cond.backedge ]
  %nodempcref.34282 = phi i32* [ %nodempcref.3.ph4357, %while.body.lr.ph ], [ %nodempcref.7, %while.cond.backedge ]
  %ram1.04281 = phi double [ %ram1.0.ph4356, %while.body.lr.ph ], [ %ram.14227, %while.cond.backedge ]
  %ram.04280 = phi double [ %ram.0.ph4355, %while.body.lr.ph ], [ %ram.4, %while.cond.backedge ]
  %theta.04279 = phi double [ %theta.0.ph4354, %while.body.lr.ph ], [ %theta.1.be.ph, %while.cond.backedge ]
  %dtheta.04278 = phi double [ %dtheta.0.ph4353, %while.body.lr.ph ], [ %dtheta.1.be.ph, %while.cond.backedge ]
  %qam.14277 = phi double [ %qam.1.ph4352, %while.body.lr.ph ], [ %qam.4, %while.cond.backedge ]
  %nmpcref.34276 = phi i32 [ %nmpcref.3.ph4351, %while.body.lr.ph ], [ %nmpcref.7, %while.cond.backedge ]
  %memmpcref_.34274 = phi i32 [ %memmpcref_.3.ph4350, %while.body.lr.ph ], [ %memmpcref_.7, %while.cond.backedge ]
  %mpcfreeref.34273 = phi i32 [ %mpcfreeref.3.ph4349, %while.body.lr.ph ], [ %mpcfreeref.7, %while.cond.backedge ]
  %279 = load i32* %icutb, align 4, !tbaa !3
  %cmp466 = icmp eq i32 %279, 0
  br i1 %cmp466, label %if.then468, label %if.end608

if.then468:                                       ; preds = %while.body
  %280 = load i32* %j, align 4, !tbaa !3
  %inc469 = add nsw i32 %280, 1
  store i32 %inc469, i32* %j, align 4, !tbaa !3
  %inc470 = add nsw i32 %jprint.04285, 1
  %281 = load i32* %nk, align 4, !tbaa !3
  %cmp4734093 = icmp sgt i32 %281, 0
  br i1 %cmp4734093, label %for.body475.lr.ph, label %for.cond483.loopexit

for.body475.lr.ph:                                ; preds = %if.then468
  %mul472 = shl nsw i32 %281, 2
  br label %for.body475

for.body475:                                      ; preds = %for.body475.lr.ph, %for.body475
  %indvars.iv4399 = phi i64 [ 0, %for.body475.lr.ph ], [ %indvars.iv.next4400, %for.body475 ]
  %arrayidx477 = getelementptr inbounds double* %vold, i64 %indvars.iv4399
  %282 = load double* %arrayidx477, align 8, !tbaa !4
  %arrayidx479 = getelementptr inbounds double* %51, i64 %indvars.iv4399
  store double %282, double* %arrayidx479, align 8, !tbaa !4
  %indvars.iv.next4400 = add i64 %indvars.iv4399, 1
  %283 = trunc i64 %indvars.iv.next4400 to i32
  %cmp473 = icmp slt i32 %283, %mul472
  br i1 %cmp473, label %for.body475, label %for.cond483.loopexit

for.cond483.loopexit:                             ; preds = %for.body475, %if.then468
  %284 = load i32* %nboun, align 4, !tbaa !3
  %cmp4844095 = icmp sgt i32 %284, 0
  br i1 %cmp4844095, label %for.body486, label %for.end493

for.body486:                                      ; preds = %for.cond483.loopexit, %for.body486
  %indvars.iv4401 = phi i64 [ %indvars.iv.next4402, %for.body486 ], [ 0, %for.cond483.loopexit ]
  %arrayidx488 = getelementptr inbounds double* %57, i64 %indvars.iv4401
  %285 = load double* %arrayidx488, align 8, !tbaa !4
  %arrayidx490 = getelementptr inbounds double* %59, i64 %indvars.iv4401
  store double %285, double* %arrayidx490, align 8, !tbaa !4
  %indvars.iv.next4402 = add i64 %indvars.iv4401, 1
  %286 = trunc i64 %indvars.iv.next4402 to i32
  %cmp484 = icmp slt i32 %286, %284
  br i1 %cmp484, label %for.body486, label %for.end493

for.end493:                                       ; preds = %for.body486, %for.cond483.loopexit
  %287 = load i32* %ithermal, align 4, !tbaa !3
  %cmp494.not = icmp ne i32 %287, 1
  %cmp4734093.not = xor i1 %cmp4734093, true
  %brmerge = or i1 %cmp494.not, %cmp4734093.not
  br i1 %brmerge, label %for.cond509.preheader, label %for.body500

for.body500:                                      ; preds = %for.end493, %for.body500
  %indvars.iv4403 = phi i64 [ %indvars.iv.next4404, %for.body500 ], [ 0, %for.end493 ]
  %arrayidx502 = getelementptr inbounds double* %t1act.0, i64 %indvars.iv4403
  %288 = load double* %arrayidx502, align 8, !tbaa !4
  %arrayidx504 = getelementptr inbounds double* %t1ini.0, i64 %indvars.iv4403
  store double %288, double* %arrayidx504, align 8, !tbaa !4
  %indvars.iv.next4404 = add i64 %indvars.iv4403, 1
  %289 = trunc i64 %indvars.iv.next4404 to i32
  %cmp498 = icmp slt i32 %289, %281
  br i1 %cmp498, label %for.body500, label %for.cond509.preheader

for.cond509.preheader:                            ; preds = %for.end493, %for.body500
  %290 = load i32* %neq, align 4, !tbaa !3
  %cmp5104099 = icmp sgt i32 %290, 0
  br i1 %cmp5104099, label %for.body512.lr.ph, label %for.end519

for.body512.lr.ph:                                ; preds = %for.cond509.preheader
  %291 = load double** %f, align 8, !tbaa !0
  %292 = load double** %fini, align 8, !tbaa !0
  br label %for.body512

for.body512:                                      ; preds = %for.body512.lr.ph, %for.body512
  %indvars.iv4405 = phi i64 [ 0, %for.body512.lr.ph ], [ %indvars.iv.next4406, %for.body512 ]
  %arrayidx514 = getelementptr inbounds double* %291, i64 %indvars.iv4405
  %293 = load double* %arrayidx514, align 8, !tbaa !4
  %arrayidx516 = getelementptr inbounds double* %292, i64 %indvars.iv4405
  store double %293, double* %arrayidx516, align 8, !tbaa !4
  %indvars.iv.next4406 = add i64 %indvars.iv4405, 1
  %294 = trunc i64 %indvars.iv.next4406 to i32
  %cmp510 = icmp slt i32 %294, %290
  br i1 %cmp510, label %for.body512, label %for.end519

for.end519:                                       ; preds = %for.body512, %for.cond509.preheader
  %295 = load i32* %nmethod, align 4, !tbaa !3
  %cmp520 = icmp eq i32 %295, 4
  br i1 %cmp520, label %for.cond523.preheader, label %for.cond551.preheader

for.cond523.preheader:                            ; preds = %for.end519
  br i1 %cmp4734093, label %for.body527.lr.ph, label %for.cond539.loopexit

for.body527.lr.ph:                                ; preds = %for.cond523.preheader
  %mul524 = shl nsw i32 %281, 2
  br label %for.body527

for.body527:                                      ; preds = %for.body527.lr.ph, %for.body527
  %indvars.iv4407 = phi i64 [ 0, %for.body527.lr.ph ], [ %indvars.iv.next4408, %for.body527 ]
  %arrayidx529 = getelementptr inbounds double* %veold, i64 %indvars.iv4407
  %296 = load double* %arrayidx529, align 8, !tbaa !4
  %arrayidx531 = getelementptr inbounds double* %veini.0, i64 %indvars.iv4407
  store double %296, double* %arrayidx531, align 8, !tbaa !4
  %arrayidx533 = getelementptr inbounds double* %accold, i64 %indvars.iv4407
  %297 = load double* %arrayidx533, align 8, !tbaa !4
  %arrayidx535 = getelementptr inbounds double* %accini.0, i64 %indvars.iv4407
  store double %297, double* %arrayidx535, align 8, !tbaa !4
  %indvars.iv.next4408 = add i64 %indvars.iv4407, 1
  %298 = trunc i64 %indvars.iv.next4408 to i32
  %cmp525 = icmp slt i32 %298, %mul524
  br i1 %cmp525, label %for.body527, label %for.cond539.loopexit

for.cond539.loopexit:                             ; preds = %for.body527, %for.cond523.preheader
  br i1 %cmp5104099, label %for.body542.lr.ph, label %for.cond551.preheader

for.body542.lr.ph:                                ; preds = %for.cond539.loopexit
  %299 = load double** %fext, align 8, !tbaa !0
  %300 = load double** %fextini, align 8, !tbaa !0
  br label %for.body542

for.body542:                                      ; preds = %for.body542.lr.ph, %for.body542
  %indvars.iv4409 = phi i64 [ 0, %for.body542.lr.ph ], [ %indvars.iv.next4410, %for.body542 ]
  %arrayidx544 = getelementptr inbounds double* %299, i64 %indvars.iv4409
  %301 = load double* %arrayidx544, align 8, !tbaa !4
  %arrayidx546 = getelementptr inbounds double* %300, i64 %indvars.iv4409
  store double %301, double* %arrayidx546, align 8, !tbaa !4
  %indvars.iv.next4410 = add i64 %indvars.iv4409, 1
  %302 = trunc i64 %indvars.iv.next4410 to i32
  %cmp540 = icmp slt i32 %302, %290
  br i1 %cmp540, label %for.body542, label %for.cond551.preheader

for.cond551.preheader:                            ; preds = %for.cond539.loopexit, %for.body542, %for.end519
  %303 = load i32* %mint_, align 4, !tbaa !3
  %mul5524106 = mul nsw i32 %303, 6
  %304 = load i32* %ne, align 4, !tbaa !3
  %mul5534107 = mul nsw i32 %mul5524106, %304
  %cmp5544108 = icmp sgt i32 %mul5534107, 0
  br i1 %cmp5544108, label %for.body556, label %for.end567

for.body556:                                      ; preds = %for.cond551.preheader, %for.body556
  %indvars.iv4411 = phi i64 [ %indvars.iv.next4412, %for.body556 ], [ 0, %for.cond551.preheader ]
  %arrayidx558 = getelementptr inbounds double* %eei, i64 %indvars.iv4411
  %305 = load double* %arrayidx558, align 8, !tbaa !4
  %arrayidx560 = getelementptr inbounds double* %161, i64 %indvars.iv4411
  store double %305, double* %arrayidx560, align 8, !tbaa !4
  %arrayidx562 = getelementptr inbounds double* %sti, i64 %indvars.iv4411
  %306 = load double* %arrayidx562, align 8, !tbaa !4
  %arrayidx564 = getelementptr inbounds double* %164, i64 %indvars.iv4411
  store double %306, double* %arrayidx564, align 8, !tbaa !4
  %indvars.iv.next4412 = add i64 %indvars.iv4411, 1
  %307 = trunc i64 %indvars.iv.next4412 to i32
  %cmp554 = icmp slt i32 %307, %mul5534107
  br i1 %cmp554, label %for.body556, label %for.end567

for.end567:                                       ; preds = %for.body556, %for.cond551.preheader
  %call569 = call i32 @strcmp1(i8* %arrayidx234, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #5
  %cmp570 = icmp eq i32 %call569, 0
  br i1 %cmp570, label %for.cond578.preheader, label %lor.lhs.false572

lor.lhs.false572:                                 ; preds = %for.end567
  %call574 = call i32 @strcmp1(i8* %arrayidx573, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #5
  %cmp575 = icmp eq i32 %call574, 0
  br i1 %cmp575, label %for.cond578.preheader, label %if.end590

for.cond578.preheader:                            ; preds = %lor.lhs.false572, %for.end567
  %308 = load i32* %mint_, align 4, !tbaa !3
  %309 = load i32* %ne, align 4, !tbaa !3
  %mul5794110 = mul nsw i32 %309, %308
  %cmp5804111 = icmp sgt i32 %mul5794110, 0
  br i1 %cmp5804111, label %for.body582, label %if.end590

for.body582:                                      ; preds = %for.cond578.preheader, %for.body582
  %indvars.iv4413 = phi i64 [ %indvars.iv.next4414, %for.body582 ], [ 0, %for.cond578.preheader ]
  %arrayidx584 = getelementptr inbounds double* %ener, i64 %indvars.iv4413
  %310 = load double* %arrayidx584, align 8, !tbaa !4
  %arrayidx586 = getelementptr inbounds double* %enerini.0, i64 %indvars.iv4413
  store double %310, double* %arrayidx586, align 8, !tbaa !4
  %indvars.iv.next4414 = add i64 %indvars.iv4413, 1
  %311 = trunc i64 %indvars.iv.next4414 to i32
  %cmp580 = icmp slt i32 %311, %mul5794110
  br i1 %cmp580, label %for.body582, label %if.end590

if.end590:                                        ; preds = %for.cond578.preheader, %for.body582, %lor.lhs.false572
  %312 = load i32* %nstate_, align 4, !tbaa !3
  %cmp591 = icmp eq i32 %312, 0
  br i1 %cmp591, label %if.end608, label %for.cond594.preheader

for.cond594.preheader:                            ; preds = %if.end590
  %313 = load i32* %mint_, align 4, !tbaa !3
  %mul5954113 = mul nsw i32 %313, %312
  %314 = load i32* %ne, align 4, !tbaa !3
  %mul5964114 = mul nsw i32 %mul5954113, %314
  %cmp5974115 = icmp sgt i32 %mul5964114, 0
  br i1 %cmp5974115, label %for.body599, label %if.end608

for.body599:                                      ; preds = %for.cond594.preheader, %for.body599
  %indvars.iv4415 = phi i64 [ %indvars.iv.next4416, %for.body599 ], [ 0, %for.cond594.preheader ]
  %arrayidx601 = getelementptr inbounds double* %xstate, i64 %indvars.iv4415
  %315 = load double* %arrayidx601, align 8, !tbaa !4
  %arrayidx603 = getelementptr inbounds double* %xstateini.0, i64 %indvars.iv4415
  store double %315, double* %arrayidx603, align 8, !tbaa !4
  %indvars.iv.next4416 = add i64 %indvars.iv4415, 1
  %316 = trunc i64 %indvars.iv.next4416 to i32
  %cmp597 = icmp slt i32 %316, %mul5964114
  br i1 %cmp597, label %for.body599, label %if.end608

if.end608:                                        ; preds = %for.cond594.preheader, %for.body599, %if.end590, %while.body
  %jprint.1 = phi i32 [ %inc470, %if.end590 ], [ %jprint.04285, %while.body ], [ %inc470, %for.body599 ], [ %inc470, %for.cond594.preheader ]
  %317 = load i32* %j, align 4, !tbaa !3
  %318 = load i32* %jmax, align 4, !tbaa !3
  %cmp609 = icmp sgt i32 %317, %318
  br i1 %cmp609, label %if.then611, label %if.end613

if.then611:                                       ; preds = %if.end608
  %puts4056 = call i32 @puts(i8* getelementptr inbounds ([38 x i8]* @str40, i64 0, i64 0))
  call void (...)* @stop_() #5
  %.pre4577 = load i32* %j, align 4, !tbaa !3
  br label %if.end613

if.end613:                                        ; preds = %if.end608, %if.then611
  %319 = phi i32 [ %.pre4577, %if.then611 ], [ %317, %if.end608 ]
  %320 = load i32* %icutb, align 4, !tbaa !3
  %add = add nsw i32 %320, 1
  %call614 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0), i32 %319, i32 %add) #5
  %321 = load double* %tper, align 8, !tbaa !4
  %mul615 = fmul double %dtheta.04278, %321
  %call616 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str6, i64 0, i64 0), double %mul615) #5
  %322 = load double* %tper, align 8, !tbaa !4
  %mul617 = fmul double %theta.04279, %322
  %call618 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str7, i64 0, i64 0), double %mul617) #5
  %add619 = fadd double %dtheta.04278, %theta.04279
  store double %add619, double* %reltime, align 8, !tbaa !4
  %323 = load double* %tper, align 8, !tbaa !4
  %mul620 = fmul double %add619, %323
  store double %mul620, double* %time, align 8, !tbaa !4
  %mul621 = fmul double %dtheta.04278, %323
  store double %mul621, double* %dtime, align 8, !tbaa !4
  call void @tempload_(double* %xforcold, double* %xforc, double* %64, i32* %iamforc, i32* %nforc, double* %xloadold, double* %xload, double* %66, i32* %iamload, i32* %nload, double* %omold, double* %om, double* %omact, i32* %iamom, double* %bodyfold, double* %bodyf, double* %arraydecay622, i32* %iambodyf, double* %t1old, double* %t1, double* %t1act.0, i32* %iamt1, i32* %nk, double* %amta, i32* %namta, i32* %nam, double* %132, double* %time, double* %reltime, double* %ttime, double* %dtime, i32* %ithermal, i32* %nmethod, double* %xbounold, double* %xboun, double* %57, i32* %iamboun, i32* %nboun, double* %xflowold, double* %xflow, double* %xflowact.0, i32* %iamflow, i32* %nflow) #5
  %324 = load i32* %ithermal, align 4, !tbaa !3
  %cmp623 = icmp sgt i32 %324, 1
  br i1 %cmp623, label %if.then625, label %if.end626

if.then625:                                       ; preds = %if.end613
  call void @radflowload_(i32* %itg.0, i32* %matg.0, i32* %ntg, i32* %ntr, i32* %ntm, i32* %nodeflow, double* %xflowact.0, double* %ac.0, double* %bc.0, i32* %nload, i8* %sideload, i32* %nelemload, double* %66, i8* %lakon, i32* %ipiv.0, i32* %ntmat, double* %vold, double* %shcon, i32* %nshcon, i32* %ipkon, i32* %kon, double* %co, double* %pmid.0, double* %e1.0, double* %e2.0, double* %e3.0, i32* %iptri.0, i32* %kontri.0, i32* %ntri, i32* %nloadtr.0, double* %tarea.0, double* %tenv.0, double* %physcon, double* %erad.0, double* %fij.0, double* %ft.0, double* %dist.0, i32* %idist.0, double* %area.0, i32* %nflow) #5
  br label %if.end626

if.end626:                                        ; preds = %if.then625, %if.end613
  %325 = load i32* %icascade, align 4, !tbaa !3
  %cmp627 = icmp eq i32 %325, 2
  br i1 %cmp627, label %if.then629, label %if.end626.if.end660_crit_edge

if.end626.if.end660_crit_edge:                    ; preds = %if.end626
  %.pre4584 = load double** %coefmpc, align 8, !tbaa !0
  br label %if.end660

if.then629:                                       ; preds = %if.end626
  store i32 %nmpcref.34276, i32* %nmpc, align 4, !tbaa !3
  store i32 %memmpcref_.34274, i32* %memmpc_, align 4, !tbaa !3
  store i32 %mpcfreeref.34273, i32* %mpcfree, align 4, !tbaa !3
  %326 = load i32** %nodempc, align 8, !tbaa !0
  %327 = bitcast i32* %326 to i8*
  %mul630 = mul nsw i32 %memmpcref_.34274, 3
  %conv631 = sext i32 %mul630 to i64
  %mul632 = shl nsw i64 %conv631, 2
  %call633 = call i8* @realloc(i8* %327, i64 %mul632) #5
  %328 = bitcast i8* %call633 to i32*
  store i32* %328, i32** %nodempc, align 8, !tbaa !0
  %cmp6364117 = icmp sgt i32 %memmpcref_.34274, 0
  br i1 %cmp6364117, label %for.body638, label %for.end645

for.body638:                                      ; preds = %if.then629, %for.body638
  %indvars.iv4417 = phi i64 [ %indvars.iv.next4418, %for.body638 ], [ 0, %if.then629 ]
  %arrayidx640 = getelementptr inbounds i32* %nodempcref.34282, i64 %indvars.iv4417
  %329 = load i32* %arrayidx640, align 4, !tbaa !3
  %arrayidx642 = getelementptr inbounds i32* %328, i64 %indvars.iv4417
  store i32 %329, i32* %arrayidx642, align 4, !tbaa !3
  %indvars.iv.next4418 = add i64 %indvars.iv4417, 1
  %330 = trunc i64 %indvars.iv.next4418 to i32
  %cmp636 = icmp slt i32 %330, %mul630
  br i1 %cmp636, label %for.body638, label %for.end645

for.end645:                                       ; preds = %for.body638, %if.then629
  %331 = load double** %coefmpc, align 8, !tbaa !0
  %332 = bitcast double* %331 to i8*
  %conv646 = sext i32 %memmpcref_.34274 to i64
  %mul647 = shl nsw i64 %conv646, 3
  %call648 = call i8* @realloc(i8* %332, i64 %mul647) #5
  %333 = bitcast i8* %call648 to double*
  store double* %333, double** %coefmpc, align 8, !tbaa !0
  br i1 %cmp6364117, label %for.body652, label %if.end660

for.body652:                                      ; preds = %for.end645, %for.body652
  %indvars.iv4419 = phi i64 [ %indvars.iv.next4420, %for.body652 ], [ 0, %for.end645 ]
  %arrayidx654 = getelementptr inbounds double* %coefmpcref.34288, i64 %indvars.iv4419
  %334 = load double* %arrayidx654, align 8, !tbaa !4
  %arrayidx656 = getelementptr inbounds double* %333, i64 %indvars.iv4419
  store double %334, double* %arrayidx656, align 8, !tbaa !4
  %indvars.iv.next4420 = add i64 %indvars.iv4419, 1
  %lftr.wideiv4421 = trunc i64 %indvars.iv.next4420 to i32
  %exitcond4422 = icmp eq i32 %lftr.wideiv4421, %memmpcref_.34274
  br i1 %exitcond4422, label %if.end660, label %for.body652

if.end660:                                        ; preds = %for.end645, %for.body652, %if.end626.if.end660_crit_edge
  %335 = phi double* [ %.pre4584, %if.end626.if.end660_crit_edge ], [ %333, %for.body652 ], [ %333, %for.end645 ]
  %336 = load i32** %nodempc, align 8, !tbaa !0
  call void @nonlinmpc_(double* %co, double* %vold, i32* %ipompc, i32* %336, double* %335, i8* %labmpc, i32* %nmpc, i32* %ikboun, i32* %ilboun, i32* %nboun, double* %57, double* %53, i32* %55, i32* %maxlenmpc, i32* %ikmpc, i32* %ilmpc, i32* %icascade, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne) #5
  %337 = load i32* %icascade, align 4, !tbaa !3
  %cmp661 = icmp eq i32 %337, 2
  br i1 %cmp661, label %if.then663, label %if.end694

if.then663:                                       ; preds = %if.end660
  %338 = load i32* %nmpc, align 4, !tbaa !3
  %339 = load i32* %memmpc_, align 4, !tbaa !3
  %340 = load i32* %mpcfree, align 4, !tbaa !3
  %341 = bitcast i32* %nodempcref.34282 to i8*
  %mul664 = mul nsw i32 %339, 3
  %conv665 = sext i32 %mul664 to i64
  %mul666 = shl nsw i64 %conv665, 2
  %call667 = call i8* @realloc(i8* %341, i64 %mul666) #5
  %342 = bitcast i8* %call667 to i32*
  %343 = load i32* %memmpc_, align 4, !tbaa !3
  %cmp6704122 = icmp sgt i32 %343, 0
  br i1 %cmp6704122, label %for.body672.lr.ph, label %for.end679

for.body672.lr.ph:                                ; preds = %if.then663
  %344 = load i32** %nodempc, align 8, !tbaa !0
  %345 = bitcast i32* %344 to i8*
  %mul669 = mul nsw i32 %343, 3
  %346 = icmp sgt i32 %mul669, 1
  %mul669.op = add i32 %mul669, -1
  %347 = zext i32 %mul669.op to i64
  %.op4600 = shl nuw nsw i64 %347, 2
  %.op4600.op = add i64 %.op4600, 4
  %348 = select i1 %346, i64 %.op4600.op, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call667, i8* %345, i64 %348, i32 4, i1 false)
  br label %for.end679

for.end679:                                       ; preds = %for.body672.lr.ph, %if.then663
  %349 = bitcast double* %coefmpcref.34288 to i8*
  %conv680 = sext i32 %343 to i64
  %mul681 = shl nsw i64 %conv680, 3
  %call682 = call i8* @realloc(i8* %349, i64 %mul681) #5
  %350 = bitcast i8* %call682 to double*
  %351 = load i32* %memmpc_, align 4, !tbaa !3
  %cmp6844124 = icmp sgt i32 %351, 0
  br i1 %cmp6844124, label %for.body686.lr.ph, label %if.end694thread-pre-split

for.body686.lr.ph:                                ; preds = %for.end679
  %352 = load double** %coefmpc, align 8, !tbaa !0
  %353 = bitcast double* %352 to i8*
  %354 = icmp sgt i32 %351, 1
  %.op4598 = add i32 %351, -1
  %355 = zext i32 %.op4598 to i64
  %.op4599 = shl nuw nsw i64 %355, 3
  %.op4599.op = add i64 %.op4599, 8
  %356 = select i1 %354, i64 %.op4599.op, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call682, i8* %353, i64 %356, i32 8, i1 false)
  br label %if.end694thread-pre-split

if.end694thread-pre-split:                        ; preds = %for.body686.lr.ph, %for.end679
  %.pr4068 = load i32* %icascade, align 4, !tbaa !3
  br label %if.end694

if.end694:                                        ; preds = %if.end694thread-pre-split, %if.end660
  %357 = phi i32 [ %.pr4068, %if.end694thread-pre-split ], [ %337, %if.end660 ]
  %mpcfreeref.4 = phi i32 [ %340, %if.end694thread-pre-split ], [ %mpcfreeref.34273, %if.end660 ]
  %memmpcref_.4 = phi i32 [ %339, %if.end694thread-pre-split ], [ %memmpcref_.34274, %if.end660 ]
  %nmpcref.4 = phi i32 [ %338, %if.end694thread-pre-split ], [ %nmpcref.34276, %if.end660 ]
  %nodempcref.4 = phi i32* [ %342, %if.end694thread-pre-split ], [ %nodempcref.34282, %if.end660 ]
  %coefmpcref.4 = phi double* [ %350, %if.end694thread-pre-split ], [ %coefmpcref.34288, %if.end660 ]
  %cmp695 = icmp sgt i32 %357, 0
  br i1 %cmp695, label %if.then697, label %for.cond699.preheader

if.then697:                                       ; preds = %if.end694
  %358 = load i32** %icol, align 8, !tbaa !0
  call void @remastruct(i32* %ipompc, double** %coefmpc, i32** %nodempc, i32* %nmpc, i32* %mpcfree, i32* %nodeboun, i32* %ndirboun, i32* %nboun, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, i8* %labmpc, i32 %labmpcLen, i32* %nk, i32* %memmpc_, i32* %icascade, i32* %maxlenmpc, i32* %kon, i32* %ipkon, i8* %lakon, i32 %lakonLen, i32* %ne, i32* %nnn, i32* %nactdof, i32* %358, i32* %jq, i32** %irow, i32* %isolver, i32* %neq, i32* %nzs, i32* %nmethod, double** %f, double** %finc, double** %fext, double** %b.addr, double** %aux2, double** %fini, double** %fextini, double** %adb.addr, double** %aub.addr, i32* %ithermal) #5
  br label %for.cond699.preheader

for.cond699.preheader:                            ; preds = %if.then697, %if.end694
  %359 = load i32* %nboun, align 4, !tbaa !3
  %cmp7004126 = icmp sgt i32 %359, 0
  br i1 %cmp7004126, label %for.body702, label %for.end715

for.body702:                                      ; preds = %for.cond699.preheader, %for.body702
  %indvars.iv4428 = phi i64 [ %indvars.iv.next4429, %for.body702 ], [ 0, %for.cond699.preheader ]
  %dev.04128 = phi double [ %dev.1, %for.body702 ], [ 0.000000e+00, %for.cond699.preheader ]
  %arrayidx704 = getelementptr inbounds double* %57, i64 %indvars.iv4428
  %360 = load double* %arrayidx704, align 8, !tbaa !4
  %arrayidx706 = getelementptr inbounds double* %59, i64 %indvars.iv4428
  %361 = load double* %arrayidx706, align 8, !tbaa !4
  %sub707 = fsub double %360, %361
  %call708 = call double @fabs(double %sub707) #6
  %cmp709 = fcmp ogt double %call708, %dev.04128
  %dev.1 = select i1 %cmp709, double %call708, double %dev.04128
  %indvars.iv.next4429 = add i64 %indvars.iv4428, 1
  %362 = trunc i64 %indvars.iv.next4429 to i32
  %cmp700 = icmp slt i32 %362, %359
  br i1 %cmp700, label %for.body702, label %for.cond699.for.end715_crit_edge

for.cond699.for.end715_crit_edge:                 ; preds = %for.body702
  %phitmp = fcmp ogt double %dev.1, 1.000000e-10
  br label %for.end715

for.end715:                                       ; preds = %for.cond699.for.end715_crit_edge, %for.cond699.preheader
  %dev.0.lcssa = phi i1 [ %phitmp, %for.cond699.for.end715_crit_edge ], [ false, %for.cond699.preheader ]
  %ilin.0 = zext i1 %dev.0.lcssa to i32
  %call720 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i32 %ilin.0) #5
  %363 = load i32* %nk, align 4, !tbaa !3
  %mul721 = shl nsw i32 %363, 2
  %conv722 = sext i32 %mul721 to i64
  %call723 = call i8* @u_calloc(i64 %conv722, i64 8) #5
  %364 = bitcast i8* %call723 to double*
  %365 = load i32* %nmethod, align 4, !tbaa !3
  %cmp724 = icmp eq i32 %365, 4
  br i1 %cmp724, label %if.then726, label %if.else770

if.then726:                                       ; preds = %for.end715
  %366 = load double* %bet, align 8, !tbaa !4
  %mul727 = fmul double %366, 2.000000e+00
  %sub728 = fsub double 1.000000e+00, %mul727
  %mul729 = fmul double %sub728, 5.000000e-01
  %367 = load double* %dtime, align 8, !tbaa !4
  %mul730 = fmul double %367, %mul729
  %mul731 = fmul double %367, %mul730
  %368 = load double* %gam, align 8, !tbaa !4
  %sub732 = fsub double 1.000000e+00, %368
  %mul733 = fmul double %367, %sub732
  %369 = load i32* %nk, align 4, !tbaa !3
  %cmp7364141 = icmp sgt i32 %369, 0
  br i1 %cmp7364141, label %for.body738.lr.ph, label %if.end810

for.body738.lr.ph:                                ; preds = %if.then726
  %mul735 = shl nsw i32 %369, 2
  br label %for.body738

for.body738:                                      ; preds = %for.body738.for.body738_crit_edge, %for.body738.lr.ph
  %370 = phi double [ %367, %for.body738.lr.ph ], [ %.pre4585, %for.body738.for.body738_crit_edge ]
  %indvars.iv4434 = phi i64 [ 0, %for.body738.lr.ph ], [ %indvars.iv.next4435, %for.body738.for.body738_crit_edge ]
  %uam.04142 = phi double [ 0.000000e+00, %for.body738.lr.ph ], [ %uam.1, %for.body738.for.body738_crit_edge ]
  %arrayidx740 = getelementptr inbounds double* %veold, i64 %indvars.iv4434
  %371 = load double* %arrayidx740, align 8, !tbaa !4
  %mul741 = fmul double %370, %371
  %arrayidx743 = getelementptr inbounds double* %accold, i64 %indvars.iv4434
  %372 = load double* %arrayidx743, align 8, !tbaa !4
  %mul744 = fmul double %mul731, %372
  %add745 = fadd double %mul741, %mul744
  %call746 = call double @fabs(double %add745) #6
  %cmp747 = fcmp ogt double %call746, %uam.04142
  %uam.1 = select i1 %cmp747, double %call746, double %uam.04142
  %arrayidx753 = getelementptr inbounds double* %vold, i64 %indvars.iv4434
  %373 = load double* %arrayidx753, align 8, !tbaa !4
  %add754 = fadd double %373, %add745
  %arrayidx756 = getelementptr inbounds double* %364, i64 %indvars.iv4434
  store double %add754, double* %arrayidx756, align 8, !tbaa !4
  %374 = load double* %arrayidx740, align 8, !tbaa !4
  %375 = load double* %arrayidx743, align 8, !tbaa !4
  %mul761 = fmul double %mul733, %375
  %add762 = fadd double %374, %mul761
  store double %add762, double* %arrayidx740, align 8, !tbaa !4
  store double 0.000000e+00, double* %arrayidx743, align 8, !tbaa !4
  %indvars.iv.next4435 = add i64 %indvars.iv4434, 1
  %376 = trunc i64 %indvars.iv.next4435 to i32
  %cmp736 = icmp slt i32 %376, %mul735
  br i1 %cmp736, label %for.body738.for.body738_crit_edge, label %if.end810

for.body738.for.body738_crit_edge:                ; preds = %for.body738
  %.pre4585 = load double* %dtime, align 8, !tbaa !4
  br label %for.body738

if.else770:                                       ; preds = %for.end715
  %377 = load i32* %nstate_, align 4, !tbaa !3
  %cmp771 = icmp eq i32 %377, 0
  %378 = load i32* %nk, align 4, !tbaa !3
  %cmp7764135 = icmp sgt i32 %378, 0
  br i1 %cmp771, label %for.cond774.preheader, label %for.cond797.preheader

for.cond774.preheader:                            ; preds = %if.else770
  br i1 %cmp7764135, label %for.body778.lr.ph, label %if.end810

for.body778.lr.ph:                                ; preds = %for.cond774.preheader
  %mul775 = shl nsw i32 %378, 2
  br label %for.body778

for.cond797.preheader:                            ; preds = %if.else770
  br i1 %cmp7764135, label %for.body801.lr.ph, label %if.end810

for.body801.lr.ph:                                ; preds = %for.cond797.preheader
  %mul798 = shl nsw i32 %378, 2
  br label %for.body801

for.body778:                                      ; preds = %for.body778.lr.ph, %for.body778
  %indvars.iv4432 = phi i64 [ 0, %for.body778.lr.ph ], [ %indvars.iv.next4433, %for.body778 ]
  %uam.24136 = phi double [ 0.000000e+00, %for.body778.lr.ph ], [ %uam.3, %for.body778 ]
  %379 = load double* %dtime, align 8, !tbaa !4
  %arrayidx780 = getelementptr inbounds double* %veold, i64 %indvars.iv4432
  %380 = load double* %arrayidx780, align 8, !tbaa !4
  %mul781 = fmul double %379, %380
  %call782 = call double @fabs(double %mul781) #6
  %cmp783 = fcmp ogt double %call782, %uam.24136
  %uam.3 = select i1 %cmp783, double %call782, double %uam.24136
  %arrayidx789 = getelementptr inbounds double* %vold, i64 %indvars.iv4432
  %381 = load double* %arrayidx789, align 8, !tbaa !4
  %add790 = fadd double %mul781, %381
  %arrayidx792 = getelementptr inbounds double* %364, i64 %indvars.iv4432
  store double %add790, double* %arrayidx792, align 8, !tbaa !4
  %indvars.iv.next4433 = add i64 %indvars.iv4432, 1
  %382 = trunc i64 %indvars.iv.next4433 to i32
  %cmp776 = icmp slt i32 %382, %mul775
  br i1 %cmp776, label %for.body778, label %if.end810

for.body801:                                      ; preds = %for.body801.lr.ph, %for.body801
  %indvars.iv4430 = phi i64 [ 0, %for.body801.lr.ph ], [ %indvars.iv.next4431, %for.body801 ]
  %arrayidx803 = getelementptr inbounds double* %vold, i64 %indvars.iv4430
  %383 = load double* %arrayidx803, align 8, !tbaa !4
  %arrayidx805 = getelementptr inbounds double* %364, i64 %indvars.iv4430
  store double %383, double* %arrayidx805, align 8, !tbaa !4
  %indvars.iv.next4431 = add i64 %indvars.iv4430, 1
  %384 = trunc i64 %indvars.iv.next4431 to i32
  %cmp799 = icmp slt i32 %384, %mul798
  br i1 %cmp799, label %for.body801, label %if.end810

if.end810:                                        ; preds = %if.then726, %for.body738, %for.cond774.preheader, %for.body778, %for.cond797.preheader, %for.body801
  %385 = phi i32 [ %378, %for.body801 ], [ %378, %for.cond797.preheader ], [ %378, %for.body778 ], [ %378, %for.cond774.preheader ], [ %369, %for.body738 ], [ %369, %if.then726 ]
  %uam.4 = phi double [ 0.000000e+00, %for.body801 ], [ 0.000000e+00, %for.cond797.preheader ], [ %uam.3, %for.body778 ], [ 0.000000e+00, %for.cond774.preheader ], [ %uam.1, %for.body738 ], [ 0.000000e+00, %if.then726 ]
  %mul811 = shl nsw i32 %385, 2
  %conv812 = sext i32 %mul811 to i64
  %call813 = call i8* @u_calloc(i64 %conv812, i64 8) #5
  %386 = bitcast i8* %call813 to double*
  %387 = load i32* %mint_, align 4, !tbaa !3
  %mul814 = mul nsw i32 %387, 6
  %388 = load i32* %ne, align 4, !tbaa !3
  %mul815 = mul nsw i32 %mul814, %388
  %conv816 = sext i32 %mul815 to i64
  %call817 = call i8* @u_calloc(i64 %conv816, i64 8) #5
  %389 = bitcast i8* %call817 to double*
  store i32 -1, i32* %iout, align 4, !tbaa !3
  %390 = load i32* %iperturb, align 4, !tbaa !3
  store i32 1, i32* %ielas, align 4, !tbaa !3
  %391 = load i32* %nmethod, align 4, !tbaa !3
  %cmp818 = icmp ne i32 %391, 4
  %or.cond = and i1 %cmp818, %dev.0.lcssa
  br i1 %or.cond, label %if.then822, label %if.else848

if.then822:                                       ; preds = %if.end810
  store i32 0, i32* %iperturb, align 4, !tbaa !3
  %392 = load i32* %neq, align 4, !tbaa !3
  %cmp8244152 = icmp sgt i32 %392, 0
  %393 = load double** %f, align 8, !tbaa !0
  %394 = load double** %b.addr, align 8, !tbaa !0
  br i1 %cmp8244152, label %for.body826, label %for.end833

for.body826:                                      ; preds = %if.then822, %for.body826
  %indvars.iv4443 = phi i64 [ %indvars.iv.next4444, %for.body826 ], [ 0, %if.then822 ]
  %arrayidx828 = getelementptr inbounds double* %393, i64 %indvars.iv4443
  %395 = load double* %arrayidx828, align 8, !tbaa !4
  %arrayidx830 = getelementptr inbounds double* %394, i64 %indvars.iv4443
  store double %395, double* %arrayidx830, align 8, !tbaa !4
  %indvars.iv.next4444 = add i64 %indvars.iv4443, 1
  %396 = trunc i64 %indvars.iv.next4444 to i32
  %cmp824 = icmp slt i32 %396, %392
  br i1 %cmp824, label %for.body826, label %for.end833

for.end833:                                       ; preds = %if.then822, %for.body826
  %397 = load i32** %nodempc, align 8, !tbaa !0
  %398 = load double** %coefmpc, align 8, !tbaa !0
  call void @results_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, double* %364, double* %stn.0.ph4346, i32* %inum.04286, i32* %nelemprint, i32* %neprint, double* %389, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t1ini.0, double* %t1act.0, i32* %ithermal, double* %prestr, i32* %iprestr, i8* %noelplab, i8* %nodeflab, double* %eei, double* %een.0.ph4347, i32* %iperturb, double* %393, double* %386, i32* %nactdof, i32* %iout, double* %qa, i32* %noprint, i32* %nodeprint, double* %vold, double* %394, i32* %nodeboun, i32* %ndirboun, double* %57, i32* %nboun, i32* %ipompc, i32* %397, double* %398, i8* %labmpc, i32* %nmpc, i32* %nmethod, double* %cam, i32* %neq, double* %veold, double* %accold, double* %bet, double* %gam, double* %dtime, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, double* %xstateini.0, double* %41, double* %xstate, i32* %npmat_, double* %epn.0.ph4348, i8* %matname, i32* %mint_, i32* %ielas, i32* %icmd, i32* %ncmat_, i32* %nstate_, double* %164, double* %51, i32* %ikboun, i32* %ilboun, double* %ener, double* %enern.0.ph4362, double* %sti, double* %xstaten.0.ph4363, double* %161, double* %enerini.0, double* %cocon, i32* %ncocon) #5
  %399 = load i32* %neq, align 4, !tbaa !3
  %cmp8354155 = icmp sgt i32 %399, 0
  br i1 %cmp8354155, label %for.body837.lr.ph, label %if.end874

for.body837.lr.ph:                                ; preds = %for.end833
  %400 = load double** %f, align 8, !tbaa !0
  %401 = load double** %b.addr, align 8, !tbaa !0
  br label %for.body837

for.body837:                                      ; preds = %for.body837.lr.ph, %for.body837
  %indvars.iv4445 = phi i64 [ 0, %for.body837.lr.ph ], [ %indvars.iv.next4446, %for.body837 ]
  %arrayidx839 = getelementptr inbounds double* %400, i64 %indvars.iv4445
  %402 = load double* %arrayidx839, align 8, !tbaa !4
  %arrayidx841 = getelementptr inbounds double* %401, i64 %indvars.iv4445
  %403 = load double* %arrayidx841, align 8, !tbaa !4
  %add842 = fadd double %402, %403
  store double %add842, double* %arrayidx839, align 8, !tbaa !4
  %indvars.iv.next4446 = add i64 %indvars.iv4445, 1
  %404 = trunc i64 %indvars.iv.next4446 to i32
  %cmp835 = icmp slt i32 %404, %399
  br i1 %cmp835, label %for.body837, label %if.end874

if.else848:                                       ; preds = %if.end810
  %405 = load double** %f, align 8, !tbaa !0
  %406 = load double** %b.addr, align 8, !tbaa !0
  %407 = load i32** %nodempc, align 8, !tbaa !0
  %408 = load double** %coefmpc, align 8, !tbaa !0
  call void @results_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, double* %364, double* %stn.0.ph4346, i32* %inum.04286, i32* %nelemprint, i32* %neprint, double* %389, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t0, double* %t1act.0, i32* %ithermal, double* %prestr, i32* %iprestr, i8* %noelplab, i8* %nodeflab, double* %eei, double* %een.0.ph4347, i32* %iperturb, double* %405, double* %386, i32* %nactdof, i32* %iout, double* %qa, i32* %noprint, i32* %nodeprint, double* %vold, double* %406, i32* %nodeboun, i32* %ndirboun, double* %57, i32* %nboun, i32* %ipompc, i32* %407, double* %408, i8* %labmpc, i32* %nmpc, i32* %nmethod, double* %cam, i32* %neq, double* %veold, double* %accold, double* %bet, double* %gam, double* %dtime, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, double* %xstateini.0, double* %41, double* %xstate, i32* %npmat_, double* %epn.0.ph4348, i8* %matname, i32* %mint_, i32* %ielas, i32* %icmd, i32* %ncmat_, i32* %nstate_, double* %164, double* %51, i32* %ikboun, i32* %ilboun, double* %ener, double* %enern.0.ph4362, double* %sti, double* %xstaten.0.ph4363, double* %161, double* %enerini.0, double* %cocon, i32* %ncocon) #5
  %409 = load i32* %nk, align 4, !tbaa !3
  %cmp8514146 = icmp sgt i32 %409, 0
  br i1 %cmp8514146, label %for.body853.lr.ph, label %for.cond861.loopexit

for.body853.lr.ph:                                ; preds = %if.else848
  %mul850 = shl nsw i32 %409, 2
  br label %for.body853

for.body853:                                      ; preds = %for.body853.lr.ph, %for.body853
  %indvars.iv4437 = phi i64 [ 0, %for.body853.lr.ph ], [ %indvars.iv.next4438, %for.body853 ]
  %arrayidx855 = getelementptr inbounds double* %364, i64 %indvars.iv4437
  %410 = load double* %arrayidx855, align 8, !tbaa !4
  %arrayidx857 = getelementptr inbounds double* %vold, i64 %indvars.iv4437
  store double %410, double* %arrayidx857, align 8, !tbaa !4
  %indvars.iv.next4438 = add i64 %indvars.iv4437, 1
  %411 = trunc i64 %indvars.iv.next4438 to i32
  %cmp851 = icmp slt i32 %411, %mul850
  br i1 %cmp851, label %for.body853, label %for.cond861.loopexit

for.cond861.loopexit:                             ; preds = %for.body853, %if.else848
  %412 = load i32* %mint_, align 4, !tbaa !3
  %mul8624148 = mul nsw i32 %412, 6
  %413 = load i32* %ne, align 4, !tbaa !3
  %mul8634149 = mul nsw i32 %mul8624148, %413
  %cmp8644150 = icmp sgt i32 %mul8634149, 0
  br i1 %cmp8644150, label %for.body866, label %if.end874

for.body866:                                      ; preds = %for.cond861.loopexit, %for.body866
  %indvars.iv4440 = phi i64 [ %indvars.iv.next4441, %for.body866 ], [ 0, %for.cond861.loopexit ]
  %arrayidx868 = getelementptr inbounds double* %389, i64 %indvars.iv4440
  %414 = load double* %arrayidx868, align 8, !tbaa !4
  %arrayidx870 = getelementptr inbounds double* %sti, i64 %indvars.iv4440
  store double %414, double* %arrayidx870, align 8, !tbaa !4
  %indvars.iv.next4441 = add i64 %indvars.iv4440, 1
  %415 = trunc i64 %indvars.iv.next4441 to i32
  %cmp864 = icmp slt i32 %415, %mul8634149
  br i1 %cmp864, label %for.body866, label %if.end874

if.end874:                                        ; preds = %for.end833, %for.body837, %for.cond861.loopexit, %for.body866
  store i32 0, i32* %ielas, align 4, !tbaa !3
  store i32 0, i32* %iout, align 4, !tbaa !3
  call void @free(i8* %call813) #5
  call void @free(i8* %call817) #5
  call void @free(i8* %call723) #5
  store i32 1, i32* %l, align 4, !tbaa !3
  %conv1197 = sitofp i32 %jnz.04284 to double
  %mul1198 = fmul double %qam.14277, %conv1197
  %add1200 = add nsw i32 %jnz.04284, 1
  %conv1201 = sitofp i32 %add1200 to double
  br label %while.body878

while.body878:                                    ; preds = %while.cond875.backedge.while.body878_crit_edge, %if.end874
  %416 = phi i32 [ 1, %if.end874 ], [ %.pre4588, %while.cond875.backedge.while.body878_crit_edge ]
  %coefmpcref.54237 = phi double* [ %coefmpcref.4, %if.end874 ], [ %coefmpcref.7, %while.cond875.backedge.while.body878_crit_edge ]
  %stx.04236 = phi double* [ %389, %if.end874 ], [ %stx.0.be, %while.cond875.backedge.while.body878_crit_edge ]
  %ad.addr.24235 = phi double* [ %ad.addr.14287, %if.end874 ], [ %ad.addr.3, %while.cond875.backedge.while.body878_crit_edge ]
  %inum.14234 = phi i32* [ %inum.04286, %if.end874 ], [ %inum.1.be, %while.cond875.backedge.while.body878_crit_edge ]
  %newinc.04231 = phi i1 [ true, %if.end874 ], [ false, %while.cond875.backedge.while.body878_crit_edge ]
  %nodempcref.54230 = phi i32* [ %nodempcref.4, %if.end874 ], [ %nodempcref.7, %while.cond875.backedge.while.body878_crit_edge ]
  %uam.54229 = phi double [ %uam.4, %if.end874 ], [ %uam.5.be, %while.cond875.backedge.while.body878_crit_edge ]
  %ram1.14228 = phi double [ %ram1.04281, %if.end874 ], [ %ram1.1.be, %while.cond875.backedge.while.body878_crit_edge ]
  %ram.14227 = phi double [ %ram.04280, %if.end874 ], [ %ram.1.be, %while.cond875.backedge.while.body878_crit_edge ]
  %qam.24224 = phi double [ %qam.14277, %if.end874 ], [ %qam.2.be, %while.cond875.backedge.while.body878_crit_edge ]
  %fn.04223 = phi double* [ %386, %if.end874 ], [ %fn.0.be, %while.cond875.backedge.while.body878_crit_edge ]
  %nmpcref.54222 = phi i32 [ %nmpcref.4, %if.end874 ], [ %nmpcref.7, %while.cond875.backedge.while.body878_crit_edge ]
  %memmpcref_.54220 = phi i32 [ %memmpcref_.4, %if.end874 ], [ %memmpcref_.7, %while.cond875.backedge.while.body878_crit_edge ]
  %mpcfreeref.54219 = phi i32 [ %mpcfreeref.4, %if.end874 ], [ %mpcfreeref.7, %while.cond875.backedge.while.body878_crit_edge ]
  %v.04218 = phi double* [ %364, %if.end874 ], [ %v.0.be, %while.cond875.backedge.while.body878_crit_edge ]
  %call879 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0), i32 %416) #5
  br i1 %newinc.04231, label %if.end959, label %if.then882

if.then882:                                       ; preds = %while.body878
  %417 = load i32* %ithermal, align 4, !tbaa !3
  %cmp883 = icmp sgt i32 %417, 1
  br i1 %cmp883, label %if.then885, label %if.end886

if.then885:                                       ; preds = %if.then882
  call void @radflowload_(i32* %itg.0, i32* %matg.0, i32* %ntg, i32* %ntr, i32* %ntm, i32* %nodeflow, double* %xflowact.0, double* %ac.0, double* %bc.0, i32* %nload, i8* %sideload, i32* %nelemload, double* %66, i8* %lakon, i32* %ipiv.0, i32* %ntmat, double* %vold, double* %shcon, i32* %nshcon, i32* %ipkon, i32* %kon, double* %co, double* %pmid.0, double* %e1.0, double* %e2.0, double* %e3.0, i32* %iptri.0, i32* %kontri.0, i32* %ntri, i32* %nloadtr.0, double* %tarea.0, double* %tenv.0, double* %physcon, double* %erad.0, double* %fij.0, double* %ft.0, double* %dist.0, i32* %idist.0, double* %area.0, i32* %nflow) #5
  br label %if.end886

if.end886:                                        ; preds = %if.then885, %if.then882
  %418 = load i32* %icascade, align 4, !tbaa !3
  %cmp887 = icmp eq i32 %418, 2
  br i1 %cmp887, label %if.then889, label %if.end886.if.end920_crit_edge

if.end886.if.end920_crit_edge:                    ; preds = %if.end886
  %.pre4595 = load double** %coefmpc, align 8, !tbaa !0
  br label %if.end920

if.then889:                                       ; preds = %if.end886
  store i32 %nmpcref.54222, i32* %nmpc, align 4, !tbaa !3
  store i32 %memmpcref_.54220, i32* %memmpc_, align 4, !tbaa !3
  store i32 %mpcfreeref.54219, i32* %mpcfree, align 4, !tbaa !3
  %419 = load i32** %nodempc, align 8, !tbaa !0
  %420 = bitcast i32* %419 to i8*
  %mul890 = mul nsw i32 %memmpcref_.54220, 3
  %conv891 = sext i32 %mul890 to i64
  %mul892 = shl nsw i64 %conv891, 2
  %call893 = call i8* @realloc(i8* %420, i64 %mul892) #5
  %421 = bitcast i8* %call893 to i32*
  store i32* %421, i32** %nodempc, align 8, !tbaa !0
  %cmp8964157 = icmp sgt i32 %memmpcref_.54220, 0
  br i1 %cmp8964157, label %for.body898, label %for.end905

for.body898:                                      ; preds = %if.then889, %for.body898
  %indvars.iv4447 = phi i64 [ %indvars.iv.next4448, %for.body898 ], [ 0, %if.then889 ]
  %arrayidx900 = getelementptr inbounds i32* %nodempcref.54230, i64 %indvars.iv4447
  %422 = load i32* %arrayidx900, align 4, !tbaa !3
  %arrayidx902 = getelementptr inbounds i32* %421, i64 %indvars.iv4447
  store i32 %422, i32* %arrayidx902, align 4, !tbaa !3
  %indvars.iv.next4448 = add i64 %indvars.iv4447, 1
  %423 = trunc i64 %indvars.iv.next4448 to i32
  %cmp896 = icmp slt i32 %423, %mul890
  br i1 %cmp896, label %for.body898, label %for.end905

for.end905:                                       ; preds = %for.body898, %if.then889
  %424 = load double** %coefmpc, align 8, !tbaa !0
  %425 = bitcast double* %424 to i8*
  %conv906 = sext i32 %memmpcref_.54220 to i64
  %mul907 = shl nsw i64 %conv906, 3
  %call908 = call i8* @realloc(i8* %425, i64 %mul907) #5
  %426 = bitcast i8* %call908 to double*
  store double* %426, double** %coefmpc, align 8, !tbaa !0
  br i1 %cmp8964157, label %for.body912, label %if.end920

for.body912:                                      ; preds = %for.end905, %for.body912
  %indvars.iv4449 = phi i64 [ %indvars.iv.next4450, %for.body912 ], [ 0, %for.end905 ]
  %arrayidx914 = getelementptr inbounds double* %coefmpcref.54237, i64 %indvars.iv4449
  %427 = load double* %arrayidx914, align 8, !tbaa !4
  %arrayidx916 = getelementptr inbounds double* %426, i64 %indvars.iv4449
  store double %427, double* %arrayidx916, align 8, !tbaa !4
  %indvars.iv.next4450 = add i64 %indvars.iv4449, 1
  %lftr.wideiv4451 = trunc i64 %indvars.iv.next4450 to i32
  %exitcond4452 = icmp eq i32 %lftr.wideiv4451, %memmpcref_.54220
  br i1 %exitcond4452, label %if.end920, label %for.body912

if.end920:                                        ; preds = %for.end905, %for.body912, %if.end886.if.end920_crit_edge
  %428 = phi double* [ %.pre4595, %if.end886.if.end920_crit_edge ], [ %426, %for.body912 ], [ %426, %for.end905 ]
  %429 = load i32** %nodempc, align 8, !tbaa !0
  call void @nonlinmpc_(double* %co, double* %vold, i32* %ipompc, i32* %429, double* %428, i8* %labmpc, i32* %nmpc, i32* %ikboun, i32* %ilboun, i32* %nboun, double* %57, double* %53, i32* %55, i32* %maxlenmpc, i32* %ikmpc, i32* %ilmpc, i32* %icascade, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne) #5
  %430 = load i32* %icascade, align 4, !tbaa !3
  %cmp921 = icmp eq i32 %430, 2
  br i1 %cmp921, label %if.then923, label %if.end954

if.then923:                                       ; preds = %if.end920
  %431 = load i32* %nmpc, align 4, !tbaa !3
  %432 = load i32* %memmpc_, align 4, !tbaa !3
  %433 = load i32* %mpcfree, align 4, !tbaa !3
  %434 = bitcast i32* %nodempcref.54230 to i8*
  %mul924 = mul nsw i32 %432, 3
  %conv925 = sext i32 %mul924 to i64
  %mul926 = shl nsw i64 %conv925, 2
  %call927 = call i8* @realloc(i8* %434, i64 %mul926) #5
  %435 = bitcast i8* %call927 to i32*
  %436 = load i32* %memmpc_, align 4, !tbaa !3
  %cmp9304163 = icmp sgt i32 %436, 0
  br i1 %cmp9304163, label %for.body932.lr.ph, label %for.end939

for.body932.lr.ph:                                ; preds = %if.then923
  %437 = load i32** %nodempc, align 8, !tbaa !0
  %438 = bitcast i32* %437 to i8*
  %mul929 = mul nsw i32 %436, 3
  %439 = icmp sgt i32 %mul929, 1
  %mul929.op = add i32 %mul929, -1
  %440 = zext i32 %mul929.op to i64
  %.op4597 = shl nuw nsw i64 %440, 2
  %.op4597.op = add i64 %.op4597, 4
  %441 = select i1 %439, i64 %.op4597.op, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call927, i8* %438, i64 %441, i32 4, i1 false)
  br label %for.end939

for.end939:                                       ; preds = %for.body932.lr.ph, %if.then923
  %442 = bitcast double* %coefmpcref.54237 to i8*
  %conv940 = sext i32 %436 to i64
  %mul941 = shl nsw i64 %conv940, 3
  %call942 = call i8* @realloc(i8* %442, i64 %mul941) #5
  %443 = bitcast i8* %call942 to double*
  %444 = load i32* %memmpc_, align 4, !tbaa !3
  %cmp9444166 = icmp sgt i32 %444, 0
  br i1 %cmp9444166, label %for.body946.lr.ph, label %if.end954thread-pre-split

for.body946.lr.ph:                                ; preds = %for.end939
  %445 = load double** %coefmpc, align 8, !tbaa !0
  %446 = bitcast double* %445 to i8*
  %447 = icmp sgt i32 %444, 1
  %.op = add i32 %444, -1
  %448 = zext i32 %.op to i64
  %.op4596 = shl nuw nsw i64 %448, 3
  %.op4596.op = add i64 %.op4596, 8
  %449 = select i1 %447, i64 %.op4596.op, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call942, i8* %446, i64 %449, i32 8, i1 false)
  br label %if.end954thread-pre-split

if.end954thread-pre-split:                        ; preds = %for.body946.lr.ph, %for.end939
  %.pr4069 = load i32* %icascade, align 4, !tbaa !3
  br label %if.end954

if.end954:                                        ; preds = %if.end954thread-pre-split, %if.end920
  %450 = phi i32 [ %.pr4069, %if.end954thread-pre-split ], [ %430, %if.end920 ]
  %mpcfreeref.6 = phi i32 [ %433, %if.end954thread-pre-split ], [ %mpcfreeref.54219, %if.end920 ]
  %memmpcref_.6 = phi i32 [ %432, %if.end954thread-pre-split ], [ %memmpcref_.54220, %if.end920 ]
  %nmpcref.6 = phi i32 [ %431, %if.end954thread-pre-split ], [ %nmpcref.54222, %if.end920 ]
  %nodempcref.6 = phi i32* [ %435, %if.end954thread-pre-split ], [ %nodempcref.54230, %if.end920 ]
  %coefmpcref.6 = phi double* [ %443, %if.end954thread-pre-split ], [ %coefmpcref.54237, %if.end920 ]
  %cmp955 = icmp sgt i32 %450, 0
  br i1 %cmp955, label %if.then957, label %if.end959

if.then957:                                       ; preds = %if.end954
  %451 = load i32** %icol, align 8, !tbaa !0
  call void @remastruct(i32* %ipompc, double** %coefmpc, i32** %nodempc, i32* %nmpc, i32* %mpcfree, i32* %nodeboun, i32* %ndirboun, i32* %nboun, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, i8* %labmpc, i32 %labmpcLen, i32* %nk, i32* %memmpc_, i32* %icascade, i32* %maxlenmpc, i32* %kon, i32* %ipkon, i8* %lakon, i32 %lakonLen, i32* %ne, i32* %nnn, i32* %nactdof, i32* %451, i32* %jq, i32** %irow, i32* %isolver, i32* %neq, i32* %nzs, i32* %nmethod, double** %f, double** %finc, double** %fext, double** %b.addr, double** %aux2, double** %fini, double** %fextini, double** %adb.addr, double** %aub.addr, i32* %ithermal) #5
  br label %if.end959

if.end959:                                        ; preds = %while.body878, %if.end954, %if.then957
  %mpcfreeref.7 = phi i32 [ %mpcfreeref.6, %if.then957 ], [ %mpcfreeref.6, %if.end954 ], [ %mpcfreeref.54219, %while.body878 ]
  %memmpcref_.7 = phi i32 [ %memmpcref_.6, %if.then957 ], [ %memmpcref_.6, %if.end954 ], [ %memmpcref_.54220, %while.body878 ]
  %nmpcref.7 = phi i32 [ %nmpcref.6, %if.then957 ], [ %nmpcref.6, %if.end954 ], [ %nmpcref.54222, %while.body878 ]
  %nodempcref.7 = phi i32* [ %nodempcref.6, %if.then957 ], [ %nodempcref.6, %if.end954 ], [ %nodempcref.54230, %while.body878 ]
  %coefmpcref.7 = phi double* [ %coefmpcref.6, %if.then957 ], [ %coefmpcref.6, %if.end954 ], [ %coefmpcref.54237, %while.body878 ]
  %452 = load i32* %iexpl, align 4, !tbaa !3
  %cmp960 = icmp eq i32 %452, 0
  br i1 %cmp960, label %if.then962, label %if.else1038

if.then962:                                       ; preds = %if.end959
  %453 = load i32* %neq, align 4, !tbaa !3
  %conv963 = sext i32 %453 to i64
  %call964 = call i8* @u_calloc(i64 %conv963, i64 8) #5
  %454 = bitcast i8* %call964 to double*
  %455 = load i32* %nzs, align 4, !tbaa !3
  %conv965 = sext i32 %455 to i64
  %call966 = call i8* @u_calloc(i64 %conv965, i64 8) #5
  %456 = bitcast i8* %call966 to double*
  store double* %456, double** %au.addr, align 8, !tbaa !0
  store i32 1, i32* %nmethodact, align 4, !tbaa !3
  %457 = load i32** %nodempc, align 8, !tbaa !0
  %458 = load double** %coefmpc, align 8, !tbaa !0
  %459 = load double** %finc, align 8, !tbaa !0
  %460 = load double** %fext, align 8, !tbaa !0
  %461 = load i32** %icol, align 8, !tbaa !0
  %462 = load i32** %irow, align 8, !tbaa !0
  %463 = load double** %adb.addr, align 8, !tbaa !0
  %464 = load double** %aub.addr, align 8, !tbaa !0
  call void @mafillsm_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, i32* %nodeboun, i32* %ndirboun, double* %57, i32* %nboun, i32* %ipompc, i32* %457, double* %458, i32* %nmpc, i32* %nodeforc, i32* %ndirforc, double* %64, i32* %nforc, i32* %nelemload, i8* %sideload, double* %66, i32* %nload, double* %p1, double* %p2, double* %omact, double* %arraydecay622, double* %454, double* %456, double* %459, double* %460, i32* %nactdof, i32* %461, i32* %jq, i32* %462, i32* %neq, i32* %nzl, i32* %nmethodact, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t0, double* %t1act.0, i32* %ithermal, double* %prestr, i32* %iprestr, double* %vold, i32* %iperturb, double* %sti, i32* %nzs, double* %stx.04236, double* %463, double* %464, double* %eei, i32* %iexpl, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, double* %41, i32* %npmat_, double* %dtime, i8* %matname, i32* %mint_, i32* %ncmat_, i32* %mass, i32* %stiffness, i32* %buckling, i32* %rhsi, i32* %intscheme, double* %physcon, double* %shcon, i32* %nshcon, double* %cocon, i32* %ncocon) #5
  store i32 %390, i32* %iperturb, align 4, !tbaa !3
  br i1 %newinc.04231, label %if.then970, label %if.end1094

if.then970:                                       ; preds = %if.then962
  %465 = load i32* %nmethod, align 4, !tbaa !3
  %cmp971 = icmp eq i32 %465, 4
  br i1 %cmp971, label %for.cond989.preheader, label %for.cond974.preheader

for.cond989.preheader:                            ; preds = %if.then970
  %466 = load i32* %nk, align 4, !tbaa !3
  %cmp9914177 = icmp sgt i32 %466, 0
  br i1 %cmp9914177, label %for.body993.lr.ph, label %for.cond989.preheader.for.end1009_crit_edge

for.cond989.preheader.for.end1009_crit_edge:      ; preds = %for.cond989.preheader
  %.pre4589 = load double** %aux2, align 8, !tbaa !0
  br label %for.end1009

for.body993.lr.ph:                                ; preds = %for.cond989.preheader
  %mul990 = shl nsw i32 %466, 2
  %467 = load double** %aux2, align 8, !tbaa !0
  br label %for.body993

for.cond974.preheader:                            ; preds = %if.then970
  %468 = load i32* %neq, align 4, !tbaa !3
  %cmp9754174 = icmp sgt i32 %468, 0
  br i1 %cmp9754174, label %for.body977.lr.ph, label %if.end1094

for.body977.lr.ph:                                ; preds = %for.cond974.preheader
  %469 = load double** %fext, align 8, !tbaa !0
  %470 = load double** %f, align 8, !tbaa !0
  %471 = load double** %b.addr, align 8, !tbaa !0
  br label %for.body977

for.body977:                                      ; preds = %for.body977.lr.ph, %for.body977
  %indvars.iv4463 = phi i64 [ 0, %for.body977.lr.ph ], [ %indvars.iv.next4464, %for.body977 ]
  %arrayidx979 = getelementptr inbounds double* %469, i64 %indvars.iv4463
  %472 = load double* %arrayidx979, align 8, !tbaa !4
  %arrayidx981 = getelementptr inbounds double* %470, i64 %indvars.iv4463
  %473 = load double* %arrayidx981, align 8, !tbaa !4
  %sub982 = fsub double %472, %473
  %arrayidx984 = getelementptr inbounds double* %471, i64 %indvars.iv4463
  store double %sub982, double* %arrayidx984, align 8, !tbaa !4
  %indvars.iv.next4464 = add i64 %indvars.iv4463, 1
  %474 = trunc i64 %indvars.iv.next4464 to i32
  %cmp975 = icmp slt i32 %474, %468
  br i1 %cmp975, label %for.body977, label %if.end1094

for.body993:                                      ; preds = %for.body993.lr.ph, %for.inc1007
  %indvars.iv4465 = phi i64 [ 0, %for.body993.lr.ph ], [ %indvars.iv.next4466, %for.inc1007 ]
  %arrayidx995 = getelementptr inbounds i32* %nactdof, i64 %indvars.iv4465
  %475 = load i32* %arrayidx995, align 4, !tbaa !3
  %cmp996 = icmp eq i32 %475, 0
  br i1 %cmp996, label %for.inc1007, label %if.then998

if.then998:                                       ; preds = %for.body993
  %arrayidx1000 = getelementptr inbounds double* %accold, i64 %indvars.iv4465
  %476 = load double* %arrayidx1000, align 8, !tbaa !4
  %sub1003 = add nsw i32 %475, -1
  %idxprom1004 = sext i32 %sub1003 to i64
  %arrayidx1005 = getelementptr inbounds double* %467, i64 %idxprom1004
  store double %476, double* %arrayidx1005, align 8, !tbaa !4
  br label %for.inc1007

for.inc1007:                                      ; preds = %for.body993, %if.then998
  %indvars.iv.next4466 = add i64 %indvars.iv4465, 1
  %477 = trunc i64 %indvars.iv.next4466 to i32
  %cmp991 = icmp slt i32 %477, %mul990
  br i1 %cmp991, label %for.body993, label %for.end1009

for.end1009:                                      ; preds = %for.inc1007, %for.cond989.preheader.for.end1009_crit_edge
  %478 = phi double* [ %.pre4589, %for.cond989.preheader.for.end1009_crit_edge ], [ %467, %for.inc1007 ]
  %479 = load double** %b.addr, align 8, !tbaa !0
  %480 = load double** %adb.addr, align 8, !tbaa !0
  %481 = load double** %aub.addr, align 8, !tbaa !0
  %482 = load i32** %icol, align 8, !tbaa !0
  %483 = load i32** %irow, align 8, !tbaa !0
  call void @op_(i32* %neq, double* null, double* %478, double* %479, double* %480, double* %481, i32* %482, i32* %483, i32* %nzl) #5
  %484 = load double* %alpha, align 8, !tbaa !4
  %add1010 = fadd double %484, 1.000000e+00
  %485 = load i32* %neq, align 4, !tbaa !3
  %cmp10124180 = icmp sgt i32 %485, 0
  br i1 %cmp10124180, label %for.body1014.lr.ph, label %if.end1094

for.body1014.lr.ph:                               ; preds = %for.end1009
  %486 = load double** %fext, align 8, !tbaa !0
  %487 = load double** %f, align 8, !tbaa !0
  %488 = load double** %fextini, align 8, !tbaa !0
  %489 = load double** %fini, align 8, !tbaa !0
  %490 = load double** %b.addr, align 8, !tbaa !0
  br label %for.body1014

for.body1014:                                     ; preds = %for.body1014.for.body1014_crit_edge, %for.body1014.lr.ph
  %491 = phi double [ %484, %for.body1014.lr.ph ], [ %.pre4590, %for.body1014.for.body1014_crit_edge ]
  %indvars.iv4467 = phi i64 [ 0, %for.body1014.lr.ph ], [ %indvars.iv.next4468, %for.body1014.for.body1014_crit_edge ]
  %arrayidx1016 = getelementptr inbounds double* %486, i64 %indvars.iv4467
  %492 = load double* %arrayidx1016, align 8, !tbaa !4
  %arrayidx1018 = getelementptr inbounds double* %487, i64 %indvars.iv4467
  %493 = load double* %arrayidx1018, align 8, !tbaa !4
  %sub1019 = fsub double %492, %493
  %mul1020 = fmul double %add1010, %sub1019
  %arrayidx1022 = getelementptr inbounds double* %488, i64 %indvars.iv4467
  %494 = load double* %arrayidx1022, align 8, !tbaa !4
  %arrayidx1024 = getelementptr inbounds double* %489, i64 %indvars.iv4467
  %495 = load double* %arrayidx1024, align 8, !tbaa !4
  %sub1025 = fsub double %494, %495
  %mul1026 = fmul double %491, %sub1025
  %sub1027 = fsub double %mul1020, %mul1026
  %arrayidx1029 = getelementptr inbounds double* %490, i64 %indvars.iv4467
  %496 = load double* %arrayidx1029, align 8, !tbaa !4
  %sub1030 = fsub double %sub1027, %496
  store double %sub1030, double* %arrayidx1029, align 8, !tbaa !4
  %indvars.iv.next4468 = add i64 %indvars.iv4467, 1
  %497 = trunc i64 %indvars.iv.next4468 to i32
  %cmp1012 = icmp slt i32 %497, %485
  br i1 %cmp1012, label %for.body1014.for.body1014_crit_edge, label %if.end1094

for.body1014.for.body1014_crit_edge:              ; preds = %for.body1014
  %.pre4590 = load double* %alpha, align 8, !tbaa !4
  br label %for.body1014

if.else1038:                                      ; preds = %if.end959
  br i1 %newinc.04231, label %if.then1041, label %if.end1094

if.then1041:                                      ; preds = %if.else1038
  %498 = load i32** %nodempc, align 8, !tbaa !0
  %499 = load double** %coefmpc, align 8, !tbaa !0
  %500 = load double** %fext, align 8, !tbaa !0
  call void @rhs_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, i32* %ipompc, i32* %498, double* %499, i32* %nmpc, i32* %nodeforc, i32* %ndirforc, double* %64, i32* %nforc, i32* %nelemload, i8* %sideload, double* %66, i32* %nload, double* %p1, double* %p2, double* %omact, double* %arraydecay622, double* %500, i32* %nactdof, i32* %neq, i32* %nmethodact, i32* %ikmpc, i32* %ilmpc, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t0, double* %t1act.0, i32* %ithermal, double* %prestr, i32* %iprestr, double* %vold, i32* %iperturb, i32* %iexpl, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, i32* %npmat_) #5
  %501 = load i32* %nk, align 4, !tbaa !3
  %cmp10454169 = icmp sgt i32 %501, 0
  br i1 %cmp10454169, label %for.body1047.lr.ph, label %for.end1063

for.body1047.lr.ph:                               ; preds = %if.then1041
  %mul1044 = shl nsw i32 %501, 2
  %502 = load double** %aux2, align 8, !tbaa !0
  br label %for.body1047

for.body1047:                                     ; preds = %for.body1047.lr.ph, %for.inc1061
  %indvars.iv4459 = phi i64 [ 0, %for.body1047.lr.ph ], [ %indvars.iv.next4460, %for.inc1061 ]
  %arrayidx1049 = getelementptr inbounds i32* %nactdof, i64 %indvars.iv4459
  %503 = load i32* %arrayidx1049, align 4, !tbaa !3
  %cmp1050 = icmp eq i32 %503, 0
  br i1 %cmp1050, label %for.inc1061, label %if.then1052

if.then1052:                                      ; preds = %for.body1047
  %arrayidx1054 = getelementptr inbounds double* %accold, i64 %indvars.iv4459
  %504 = load double* %arrayidx1054, align 8, !tbaa !4
  %sub1057 = add nsw i32 %503, -1
  %idxprom1058 = sext i32 %sub1057 to i64
  %arrayidx1059 = getelementptr inbounds double* %502, i64 %idxprom1058
  store double %504, double* %arrayidx1059, align 8, !tbaa !4
  br label %for.inc1061

for.inc1061:                                      ; preds = %for.body1047, %if.then1052
  %indvars.iv.next4460 = add i64 %indvars.iv4459, 1
  %505 = trunc i64 %indvars.iv.next4460 to i32
  %cmp1045 = icmp slt i32 %505, %mul1044
  br i1 %cmp1045, label %for.body1047, label %for.end1063

for.end1063:                                      ; preds = %for.inc1061, %if.then1041
  %506 = load double* %alpha, align 8, !tbaa !4
  %add1064 = fadd double %506, 1.000000e+00
  %507 = load i32* %neq, align 4, !tbaa !3
  %cmp10664171 = icmp sgt i32 %507, 0
  br i1 %cmp10664171, label %for.body1068.lr.ph, label %if.end1094

for.body1068.lr.ph:                               ; preds = %for.end1063
  %508 = load double** %fext, align 8, !tbaa !0
  %509 = load double** %f, align 8, !tbaa !0
  %510 = load double** %fextini, align 8, !tbaa !0
  %511 = load double** %fini, align 8, !tbaa !0
  %512 = load double** %adb.addr, align 8, !tbaa !0
  %513 = load double** %aux2, align 8, !tbaa !0
  %514 = load double** %b.addr, align 8, !tbaa !0
  br label %for.body1068

for.body1068:                                     ; preds = %for.body1068.for.body1068_crit_edge, %for.body1068.lr.ph
  %515 = phi double [ %506, %for.body1068.lr.ph ], [ %.pre4594, %for.body1068.for.body1068_crit_edge ]
  %indvars.iv4461 = phi i64 [ 0, %for.body1068.lr.ph ], [ %indvars.iv.next4462, %for.body1068.for.body1068_crit_edge ]
  %arrayidx1070 = getelementptr inbounds double* %508, i64 %indvars.iv4461
  %516 = load double* %arrayidx1070, align 8, !tbaa !4
  %arrayidx1072 = getelementptr inbounds double* %509, i64 %indvars.iv4461
  %517 = load double* %arrayidx1072, align 8, !tbaa !4
  %sub1073 = fsub double %516, %517
  %mul1074 = fmul double %add1064, %sub1073
  %arrayidx1076 = getelementptr inbounds double* %510, i64 %indvars.iv4461
  %518 = load double* %arrayidx1076, align 8, !tbaa !4
  %arrayidx1078 = getelementptr inbounds double* %511, i64 %indvars.iv4461
  %519 = load double* %arrayidx1078, align 8, !tbaa !4
  %sub1079 = fsub double %518, %519
  %mul1080 = fmul double %515, %sub1079
  %sub1081 = fsub double %mul1074, %mul1080
  %arrayidx1083 = getelementptr inbounds double* %512, i64 %indvars.iv4461
  %520 = load double* %arrayidx1083, align 8, !tbaa !4
  %arrayidx1085 = getelementptr inbounds double* %513, i64 %indvars.iv4461
  %521 = load double* %arrayidx1085, align 8, !tbaa !4
  %mul1086 = fmul double %520, %521
  %sub1087 = fsub double %sub1081, %mul1086
  %arrayidx1089 = getelementptr inbounds double* %514, i64 %indvars.iv4461
  store double %sub1087, double* %arrayidx1089, align 8, !tbaa !4
  %indvars.iv.next4462 = add i64 %indvars.iv4461, 1
  %522 = trunc i64 %indvars.iv.next4462 to i32
  %cmp1066 = icmp slt i32 %522, %507
  br i1 %cmp1066, label %for.body1068.for.body1068_crit_edge, label %if.end1094

for.body1068.for.body1068_crit_edge:              ; preds = %for.body1068
  %.pre4594 = load double* %alpha, align 8, !tbaa !4
  br label %for.body1068

if.end1094:                                       ; preds = %for.end1009, %for.body1014, %for.cond974.preheader, %for.body977, %for.end1063, %for.body1068, %if.else1038, %if.then962
  %ad.addr.3 = phi double* [ %454, %if.then962 ], [ %ad.addr.24235, %if.else1038 ], [ %ad.addr.24235, %for.body1068 ], [ %ad.addr.24235, %for.end1063 ], [ %454, %for.body977 ], [ %454, %for.cond974.preheader ], [ %454, %for.body1014 ], [ %454, %for.end1009 ]
  %523 = load i32* %nmethodact, align 4, !tbaa !3
  %cmp1095 = icmp eq i32 %523, 0
  br i1 %cmp1095, label %if.then1100, label %lor.lhs.false1097

lor.lhs.false1097:                                ; preds = %if.end1094
  %524 = load i32* %nmethod, align 4, !tbaa !3
  %cmp1098 = icmp eq i32 %524, 0
  br i1 %cmp1098, label %if.then1100, label %if.else1113

if.then1100:                                      ; preds = %lor.lhs.false1097, %if.end1094
  %525 = load i32* %kode, align 4, !tbaa !3
  %inc1101 = add nsw i32 %525, 1
  store i32 %inc1101, i32* %kode, align 4, !tbaa !3
  %526 = load i32* %nk, align 4, !tbaa !3
  %conv1102 = sext i32 %526 to i64
  %call1103 = call i8* @u_calloc(i64 %conv1102, i64 4) #5
  %527 = bitcast i8* %call1103 to i32*
  %528 = load i32* %nk, align 4, !tbaa !3
  %cmp11054216 = icmp sgt i32 %528, 0
  br i1 %cmp11054216, label %for.body1107, label %for.end1112

for.body1107:                                     ; preds = %if.then1100, %for.body1107
  %indvars.iv4495 = phi i64 [ %indvars.iv.next4496, %for.body1107 ], [ 0, %if.then1100 ]
  %arrayidx1109 = getelementptr inbounds i32* %527, i64 %indvars.iv4495
  store i32 1, i32* %arrayidx1109, align 4, !tbaa !3
  %indvars.iv.next4496 = add i64 %indvars.iv4495, 1
  %529 = load i32* %nk, align 4, !tbaa !3
  %530 = trunc i64 %indvars.iv.next4496 to i32
  %cmp1105 = icmp slt i32 %530, %529
  br i1 %cmp1105, label %for.body1107, label %for.end1112

for.end1112:                                      ; preds = %for.body1107, %if.then1100
  call void @out_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, double* %v.04218, double* %stn.0.ph4346, i32* %527, i32* %nmethod, i32* %kode, i8* %nodeflab, double* %een.0.ph4347, double* %t1, double* %fn.04223, double* %ttime, double* %epn.0.ph4348, i32* %ielmat, i8* %matname, double* %enern.0.ph4362, double* %xstaten.0.ph4363, i32* %nstate_, i32* %istep, i32* %j, i32* %iperturb, double* %ener, i32* %mint_, i8* %output) #5
  call void @free(i8* %call1103) #5
  call void (...)* @stop_() #5
  br label %while.cond875.backedge.while.body878_crit_edge

if.else1113:                                      ; preds = %lor.lhs.false1097
  %531 = load i32* %iexpl, align 4, !tbaa !3
  %cmp1114 = icmp eq i32 %531, 0
  br i1 %cmp1114, label %if.then1116, label %for.cond1161.preheader

for.cond1161.preheader:                           ; preds = %if.else1113
  %532 = load i32* %neq, align 4, !tbaa !3
  %cmp11624182 = icmp sgt i32 %532, 0
  br i1 %cmp11624182, label %for.body1164.lr.ph, label %if.end1175

for.body1164.lr.ph:                               ; preds = %for.cond1161.preheader
  %533 = load double** %b.addr, align 8, !tbaa !0
  %534 = load double** %adb.addr, align 8, !tbaa !0
  br label %for.body1164

if.then1116:                                      ; preds = %if.else1113
  %cmp1117 = icmp eq i32 %524, 4
  br i1 %cmp1117, label %if.then1119, label %if.end1154

if.then1119:                                      ; preds = %if.then1116
  %535 = load double* %bet, align 8, !tbaa !4
  %536 = load double* %dtime, align 8, !tbaa !4
  %mul1120 = fmul double %535, %536
  %mul1121 = fmul double %536, %mul1120
  %537 = load double* %alpha, align 8, !tbaa !4
  %add1122 = fadd double %537, 1.000000e+00
  %mul1123 = fmul double %mul1121, %add1122
  %538 = load i32* %neq, align 4, !tbaa !3
  %cmp11254184 = icmp sgt i32 %538, 0
  br i1 %cmp11254184, label %for.body1127.lr.ph, label %for.cond1139.loopexit

for.body1127.lr.ph:                               ; preds = %if.then1119
  %539 = load double** %adb.addr, align 8, !tbaa !0
  br label %for.body1127

for.body1127:                                     ; preds = %for.body1127.lr.ph, %for.body1127
  %indvars.iv4471 = phi i64 [ 0, %for.body1127.lr.ph ], [ %indvars.iv.next4472, %for.body1127 ]
  %arrayidx1129 = getelementptr inbounds double* %539, i64 %indvars.iv4471
  %540 = load double* %arrayidx1129, align 8, !tbaa !4
  %arrayidx1131 = getelementptr inbounds double* %ad.addr.3, i64 %indvars.iv4471
  %541 = load double* %arrayidx1131, align 8, !tbaa !4
  %mul1132 = fmul double %mul1123, %541
  %add1133 = fadd double %540, %mul1132
  store double %add1133, double* %arrayidx1131, align 8, !tbaa !4
  %indvars.iv.next4472 = add i64 %indvars.iv4471, 1
  %542 = trunc i64 %indvars.iv.next4472 to i32
  %cmp1125 = icmp slt i32 %542, %538
  br i1 %cmp1125, label %for.body1127, label %for.cond1139.loopexit

for.cond1139.loopexit:                            ; preds = %for.body1127, %if.then1119
  %543 = load i32* %nzs, align 4, !tbaa !3
  %cmp11404186 = icmp sgt i32 %543, 0
  br i1 %cmp11404186, label %for.body1142.lr.ph, label %if.end1154

for.body1142.lr.ph:                               ; preds = %for.cond1139.loopexit
  %544 = load double** %aub.addr, align 8, !tbaa !0
  %545 = load double** %au.addr, align 8, !tbaa !0
  br label %for.body1142

for.body1142:                                     ; preds = %for.body1142.lr.ph, %for.body1142
  %indvars.iv4473 = phi i64 [ 0, %for.body1142.lr.ph ], [ %indvars.iv.next4474, %for.body1142 ]
  %arrayidx1144 = getelementptr inbounds double* %544, i64 %indvars.iv4473
  %546 = load double* %arrayidx1144, align 8, !tbaa !4
  %arrayidx1146 = getelementptr inbounds double* %545, i64 %indvars.iv4473
  %547 = load double* %arrayidx1146, align 8, !tbaa !4
  %mul1147 = fmul double %mul1123, %547
  %add1148 = fadd double %546, %mul1147
  store double %add1148, double* %arrayidx1146, align 8, !tbaa !4
  %indvars.iv.next4474 = add i64 %indvars.iv4473, 1
  %548 = trunc i64 %indvars.iv.next4474 to i32
  %cmp1140 = icmp slt i32 %548, %543
  br i1 %cmp1140, label %for.body1142, label %if.end1154

if.end1154:                                       ; preds = %for.cond1139.loopexit, %for.body1142, %if.then1116
  %549 = load i32* %isolver, align 4, !tbaa !3
  %cmp1155 = icmp eq i32 %549, 0
  br i1 %cmp1155, label %if.then1157, label %if.else1158

if.then1157:                                      ; preds = %if.end1154
  %550 = load double** %au.addr, align 8, !tbaa !0
  %551 = load double** %b.addr, align 8, !tbaa !0
  %552 = load i32** %icol, align 8, !tbaa !0
  %553 = load i32** %irow, align 8, !tbaa !0
  call void @spooles(double* %ad.addr.3, double* %550, double* %551, i32* %552, i32* %553, i32* %neq, i32* %nzs) #5
  br label %if.end1159

if.else1158:                                      ; preds = %if.end1154
  %554 = load double** %b.addr, align 8, !tbaa !0
  call void @preiter(double* %ad.addr.3, double** %au.addr, double* %554, i32** %icol, i32** %irow, i32* %neq, i32* %nzs, i32* %isolver, i32* %iperturb) #5
  br label %if.end1159

if.end1159:                                       ; preds = %if.else1158, %if.then1157
  %555 = bitcast double* %ad.addr.3 to i8*
  call void @free(i8* %555) #5
  %556 = load double** %au.addr, align 8, !tbaa !0
  %557 = bitcast double* %556 to i8*
  call void @free(i8* %557) #5
  br label %if.end1175

for.body1164:                                     ; preds = %for.body1164.lr.ph, %for.body1164
  %indvars.iv4469 = phi i64 [ 0, %for.body1164.lr.ph ], [ %indvars.iv.next4470, %for.body1164 ]
  %arrayidx1166 = getelementptr inbounds double* %533, i64 %indvars.iv4469
  %558 = load double* %arrayidx1166, align 8, !tbaa !4
  %arrayidx1168 = getelementptr inbounds double* %534, i64 %indvars.iv4469
  %559 = load double* %arrayidx1168, align 8, !tbaa !4
  %div1169 = fdiv double %558, %559
  store double %div1169, double* %arrayidx1166, align 8, !tbaa !4
  %indvars.iv.next4470 = add i64 %indvars.iv4469, 1
  %560 = trunc i64 %indvars.iv.next4470 to i32
  %cmp1162 = icmp slt i32 %560, %532
  br i1 %cmp1162, label %for.body1164, label %if.end1175

if.end1175:                                       ; preds = %for.cond1161.preheader, %for.body1164, %if.end1159
  %561 = load i32* %nk, align 4, !tbaa !3
  %mul1176 = shl nsw i32 %561, 2
  %conv1177 = sext i32 %mul1176 to i64
  %call1178 = call i8* @u_calloc(i64 %conv1177, i64 8) #5
  %562 = bitcast i8* %call1178 to double*
  %563 = load i32* %mint_, align 4, !tbaa !3
  %mul1179 = mul nsw i32 %563, 6
  %564 = load i32* %ne, align 4, !tbaa !3
  %mul1180 = mul nsw i32 %mul1179, %564
  %conv1181 = sext i32 %mul1180 to i64
  %call1182 = call i8* @u_calloc(i64 %conv1181, i64 8) #5
  %565 = bitcast i8* %call1182 to double*
  %566 = load i32* %nk, align 4, !tbaa !3
  %mul1183 = shl nsw i32 %566, 2
  %conv1184 = sext i32 %mul1183 to i64
  %call1185 = call i8* @u_calloc(i64 %conv1184, i64 8) #5
  %567 = bitcast i8* %call1185 to double*
  %568 = load double** %f, align 8, !tbaa !0
  %569 = load double** %b.addr, align 8, !tbaa !0
  %570 = load i32** %nodempc, align 8, !tbaa !0
  %571 = load double** %coefmpc, align 8, !tbaa !0
  call void @results_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, double* %562, double* %stn.0.ph4346, i32* %inum.14234, i32* %nelemprint, i32* %neprint, double* %565, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t0, double* %t1act.0, i32* %ithermal, double* %prestr, i32* %iprestr, i8* %noelplab, i8* %nodeflab, double* %eei, double* %een.0.ph4347, i32* %iperturb, double* %568, double* %567, i32* %nactdof, i32* %iout, double* %qa, i32* %noprint, i32* %nodeprint, double* %vold, double* %569, i32* %nodeboun, i32* %ndirboun, double* %57, i32* %nboun, i32* %ipompc, i32* %570, double* %571, i8* %labmpc, i32* %nmpc, i32* %nmethod, double* %cam, i32* %neq, double* %veold, double* %accold, double* %bet, double* %gam, double* %dtime, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, double* %xstateini.0, double* %41, double* %xstate, i32* %npmat_, double* %epn.0.ph4348, i8* %matname, i32* %mint_, i32* %ielas, i32* %icmd, i32* %ncmat_, i32* %nstate_, double* %164, double* %51, i32* %ikboun, i32* %ilboun, double* %ener, double* %enern.0.ph4362, double* %sti, double* %xstaten.0.ph4363, double* %161, double* %enerini.0, double* %cocon, i32* %ncocon) #5
  %572 = load double* %cam, align 8, !tbaa !4
  %cmp1186 = fcmp ogt double %572, %uam.54229
  %uam.6 = select i1 %cmp1186, double %572, double %uam.54229
  br i1 %cmp1190, label %if.then1192, label %if.end1205

if.then1192:                                      ; preds = %if.end1175
  %573 = load double* %qa, align 8, !tbaa !4
  %mul1193 = fmul double %16, %qam.24224
  %cmp1194 = fcmp ogt double %573, %mul1193
  br i1 %cmp1194, label %if.then1196, label %if.end1205

if.then1196:                                      ; preds = %if.then1192
  %add1199 = fadd double %mul1198, %573
  %div1202 = fdiv double %add1199, %conv1201
  br label %if.end1205

if.end1205:                                       ; preds = %if.then1192, %if.then1196, %if.end1175
  %qam.3 = phi double [ %div1202, %if.then1196 ], [ %qam.24224, %if.end1175 ], [ %qam.14277, %if.then1192 ]
  %574 = load i32* %nk, align 4, !tbaa !3
  %cmp12084189 = icmp sgt i32 %574, 0
  br i1 %cmp12084189, label %for.body1210.lr.ph, label %for.cond1218.loopexit

for.body1210.lr.ph:                               ; preds = %if.end1205
  %mul1207 = shl nsw i32 %574, 2
  br label %for.body1210

for.body1210:                                     ; preds = %for.body1210.lr.ph, %for.body1210
  %indvars.iv4475 = phi i64 [ 0, %for.body1210.lr.ph ], [ %indvars.iv.next4476, %for.body1210 ]
  %arrayidx1212 = getelementptr inbounds double* %562, i64 %indvars.iv4475
  %575 = load double* %arrayidx1212, align 8, !tbaa !4
  %arrayidx1214 = getelementptr inbounds double* %vold, i64 %indvars.iv4475
  store double %575, double* %arrayidx1214, align 8, !tbaa !4
  %indvars.iv.next4476 = add i64 %indvars.iv4475, 1
  %576 = trunc i64 %indvars.iv.next4476 to i32
  %cmp1208 = icmp slt i32 %576, %mul1207
  br i1 %cmp1208, label %for.body1210, label %for.cond1218.loopexit

for.cond1218.loopexit:                            ; preds = %for.body1210, %if.end1205
  %577 = load i32* %mint_, align 4, !tbaa !3
  %mul12194191 = mul nsw i32 %577, 6
  %578 = load i32* %ne, align 4, !tbaa !3
  %mul12204192 = mul nsw i32 %mul12194191, %578
  %cmp12214193 = icmp sgt i32 %mul12204192, 0
  br i1 %cmp12214193, label %for.body1223, label %for.end1230

for.body1223:                                     ; preds = %for.cond1218.loopexit, %for.body1223
  %indvars.iv4478 = phi i64 [ %indvars.iv.next4479, %for.body1223 ], [ 0, %for.cond1218.loopexit ]
  %arrayidx1225 = getelementptr inbounds double* %565, i64 %indvars.iv4478
  %579 = load double* %arrayidx1225, align 8, !tbaa !4
  %arrayidx1227 = getelementptr inbounds double* %sti, i64 %indvars.iv4478
  store double %579, double* %arrayidx1227, align 8, !tbaa !4
  %indvars.iv.next4479 = add i64 %indvars.iv4478, 1
  %580 = trunc i64 %indvars.iv.next4479 to i32
  %cmp1221 = icmp slt i32 %580, %mul12204192
  br i1 %cmp1221, label %for.body1223, label %for.end1230

for.end1230:                                      ; preds = %for.body1223, %for.cond1218.loopexit
  call void @free(i8* %call1178) #5
  call void @free(i8* %call1182) #5
  call void @free(i8* %call1185) #5
  %581 = load i32* %nmethod, align 4, !tbaa !3
  %cmp1231 = icmp eq i32 %581, 4
  br i1 %cmp1231, label %if.else1248, label %for.cond1234.preheader

for.cond1234.preheader:                           ; preds = %for.end1230
  %582 = load i32* %neq, align 4, !tbaa !3
  %cmp12354195 = icmp sgt i32 %582, 0
  br i1 %cmp12354195, label %for.body1237.lr.ph, label %for.end1365

for.body1237.lr.ph:                               ; preds = %for.cond1234.preheader
  %583 = load double** %fext, align 8, !tbaa !0
  %584 = load double** %f, align 8, !tbaa !0
  %585 = load double** %b.addr, align 8, !tbaa !0
  br label %for.body1237

for.body1237:                                     ; preds = %for.body1237.lr.ph, %for.body1237
  %indvars.iv4481 = phi i64 [ 0, %for.body1237.lr.ph ], [ %indvars.iv.next4482, %for.body1237 ]
  %arrayidx1239 = getelementptr inbounds double* %583, i64 %indvars.iv4481
  %586 = load double* %arrayidx1239, align 8, !tbaa !4
  %arrayidx1241 = getelementptr inbounds double* %584, i64 %indvars.iv4481
  %587 = load double* %arrayidx1241, align 8, !tbaa !4
  %sub1242 = fsub double %586, %587
  %arrayidx1244 = getelementptr inbounds double* %585, i64 %indvars.iv4481
  store double %sub1242, double* %arrayidx1244, align 8, !tbaa !4
  %indvars.iv.next4482 = add i64 %indvars.iv4481, 1
  %588 = trunc i64 %indvars.iv.next4482 to i32
  %cmp1235 = icmp slt i32 %588, %582
  br i1 %cmp1235, label %for.body1237, label %for.cond1352.preheader

if.else1248:                                      ; preds = %for.end1230
  %589 = load i32* %iexpl, align 4, !tbaa !3
  %cmp1249 = icmp eq i32 %589, 0
  %590 = load i32* %nk, align 4, !tbaa !3
  %cmp12544204 = icmp sgt i32 %590, 0
  br i1 %cmp1249, label %for.cond1252.preheader, label %for.cond1300.preheader

for.cond1252.preheader:                           ; preds = %if.else1248
  br i1 %cmp12544204, label %for.body1256.lr.ph, label %for.cond1252.preheader.for.end1272_crit_edge

for.cond1252.preheader.for.end1272_crit_edge:     ; preds = %for.cond1252.preheader
  %.pre4592 = load double** %aux2, align 8, !tbaa !0
  br label %for.end1272

for.body1256.lr.ph:                               ; preds = %for.cond1252.preheader
  %mul1253 = shl nsw i32 %590, 2
  %591 = load double** %aux2, align 8, !tbaa !0
  br label %for.body1256

for.cond1300.preheader:                           ; preds = %if.else1248
  br i1 %cmp12544204, label %for.body1304.lr.ph, label %for.end1320

for.body1304.lr.ph:                               ; preds = %for.cond1300.preheader
  %mul1301 = shl nsw i32 %590, 2
  %592 = load double** %aux2, align 8, !tbaa !0
  br label %for.body1304

for.body1256:                                     ; preds = %for.body1256.lr.ph, %for.inc1270
  %indvars.iv4487 = phi i64 [ 0, %for.body1256.lr.ph ], [ %indvars.iv.next4488, %for.inc1270 ]
  %arrayidx1258 = getelementptr inbounds i32* %nactdof, i64 %indvars.iv4487
  %593 = load i32* %arrayidx1258, align 4, !tbaa !3
  %cmp1259 = icmp eq i32 %593, 0
  br i1 %cmp1259, label %for.inc1270, label %if.then1261

if.then1261:                                      ; preds = %for.body1256
  %arrayidx1263 = getelementptr inbounds double* %accold, i64 %indvars.iv4487
  %594 = load double* %arrayidx1263, align 8, !tbaa !4
  %sub1266 = add nsw i32 %593, -1
  %idxprom1267 = sext i32 %sub1266 to i64
  %arrayidx1268 = getelementptr inbounds double* %591, i64 %idxprom1267
  store double %594, double* %arrayidx1268, align 8, !tbaa !4
  br label %for.inc1270

for.inc1270:                                      ; preds = %for.body1256, %if.then1261
  %indvars.iv.next4488 = add i64 %indvars.iv4487, 1
  %595 = trunc i64 %indvars.iv.next4488 to i32
  %cmp1254 = icmp slt i32 %595, %mul1253
  br i1 %cmp1254, label %for.body1256, label %for.end1272

for.end1272:                                      ; preds = %for.inc1270, %for.cond1252.preheader.for.end1272_crit_edge
  %596 = phi double* [ %.pre4592, %for.cond1252.preheader.for.end1272_crit_edge ], [ %591, %for.inc1270 ]
  %597 = load double** %b.addr, align 8, !tbaa !0
  %598 = load double** %adb.addr, align 8, !tbaa !0
  %599 = load double** %aub.addr, align 8, !tbaa !0
  %600 = load i32** %icol, align 8, !tbaa !0
  %601 = load i32** %irow, align 8, !tbaa !0
  call void @op_(i32* %neq, double* null, double* %596, double* %597, double* %598, double* %599, i32* %600, i32* %601, i32* %nzl) #5
  %602 = load double* %alpha, align 8, !tbaa !4
  %add1273 = fadd double %602, 1.000000e+00
  %603 = load i32* %neq, align 4, !tbaa !3
  %cmp12754207 = icmp sgt i32 %603, 0
  br i1 %cmp12754207, label %for.body1277.lr.ph, label %for.end1365

for.body1277.lr.ph:                               ; preds = %for.end1272
  %604 = load double** %fext, align 8, !tbaa !0
  %605 = load double** %f, align 8, !tbaa !0
  %606 = load double** %fextini, align 8, !tbaa !0
  %607 = load double** %fini, align 8, !tbaa !0
  %608 = load double** %b.addr, align 8, !tbaa !0
  br label %for.body1277

for.body1277:                                     ; preds = %for.body1277.for.body1277_crit_edge, %for.body1277.lr.ph
  %609 = phi double [ %602, %for.body1277.lr.ph ], [ %.pre4593, %for.body1277.for.body1277_crit_edge ]
  %indvars.iv4489 = phi i64 [ 0, %for.body1277.lr.ph ], [ %indvars.iv.next4490, %for.body1277.for.body1277_crit_edge ]
  %arrayidx1279 = getelementptr inbounds double* %604, i64 %indvars.iv4489
  %610 = load double* %arrayidx1279, align 8, !tbaa !4
  %arrayidx1281 = getelementptr inbounds double* %605, i64 %indvars.iv4489
  %611 = load double* %arrayidx1281, align 8, !tbaa !4
  %sub1282 = fsub double %610, %611
  %mul1283 = fmul double %add1273, %sub1282
  %arrayidx1285 = getelementptr inbounds double* %606, i64 %indvars.iv4489
  %612 = load double* %arrayidx1285, align 8, !tbaa !4
  %arrayidx1287 = getelementptr inbounds double* %607, i64 %indvars.iv4489
  %613 = load double* %arrayidx1287, align 8, !tbaa !4
  %sub1288 = fsub double %612, %613
  %mul1289 = fmul double %609, %sub1288
  %sub1290 = fsub double %mul1283, %mul1289
  %arrayidx1292 = getelementptr inbounds double* %608, i64 %indvars.iv4489
  %614 = load double* %arrayidx1292, align 8, !tbaa !4
  %sub1293 = fsub double %sub1290, %614
  store double %sub1293, double* %arrayidx1292, align 8, !tbaa !4
  %indvars.iv.next4490 = add i64 %indvars.iv4489, 1
  %615 = trunc i64 %indvars.iv.next4490 to i32
  %cmp1275 = icmp slt i32 %615, %603
  br i1 %cmp1275, label %for.body1277.for.body1277_crit_edge, label %for.cond1352.preheader

for.body1277.for.body1277_crit_edge:              ; preds = %for.body1277
  %.pre4593 = load double* %alpha, align 8, !tbaa !4
  br label %for.body1277

for.body1304:                                     ; preds = %for.body1304.lr.ph, %for.inc1318
  %indvars.iv4483 = phi i64 [ 0, %for.body1304.lr.ph ], [ %indvars.iv.next4484, %for.inc1318 ]
  %arrayidx1306 = getelementptr inbounds i32* %nactdof, i64 %indvars.iv4483
  %616 = load i32* %arrayidx1306, align 4, !tbaa !3
  %cmp1307 = icmp eq i32 %616, 0
  br i1 %cmp1307, label %for.inc1318, label %if.then1309

if.then1309:                                      ; preds = %for.body1304
  %arrayidx1311 = getelementptr inbounds double* %accold, i64 %indvars.iv4483
  %617 = load double* %arrayidx1311, align 8, !tbaa !4
  %sub1314 = add nsw i32 %616, -1
  %idxprom1315 = sext i32 %sub1314 to i64
  %arrayidx1316 = getelementptr inbounds double* %592, i64 %idxprom1315
  store double %617, double* %arrayidx1316, align 8, !tbaa !4
  br label %for.inc1318

for.inc1318:                                      ; preds = %for.body1304, %if.then1309
  %indvars.iv.next4484 = add i64 %indvars.iv4483, 1
  %618 = trunc i64 %indvars.iv.next4484 to i32
  %cmp1302 = icmp slt i32 %618, %mul1301
  br i1 %cmp1302, label %for.body1304, label %for.end1320

for.end1320:                                      ; preds = %for.inc1318, %for.cond1300.preheader
  %619 = load double* %alpha, align 8, !tbaa !4
  %add1321 = fadd double %619, 1.000000e+00
  %620 = load i32* %neq, align 4, !tbaa !3
  %cmp13234201 = icmp sgt i32 %620, 0
  br i1 %cmp13234201, label %for.body1325.lr.ph, label %for.end1365

for.body1325.lr.ph:                               ; preds = %for.end1320
  %621 = load double** %fext, align 8, !tbaa !0
  %622 = load double** %f, align 8, !tbaa !0
  %623 = load double** %fextini, align 8, !tbaa !0
  %624 = load double** %fini, align 8, !tbaa !0
  %625 = load double** %adb.addr, align 8, !tbaa !0
  %626 = load double** %aux2, align 8, !tbaa !0
  %627 = load double** %b.addr, align 8, !tbaa !0
  br label %for.body1325

for.body1325:                                     ; preds = %for.body1325.for.body1325_crit_edge, %for.body1325.lr.ph
  %628 = phi double [ %619, %for.body1325.lr.ph ], [ %.pre4591, %for.body1325.for.body1325_crit_edge ]
  %indvars.iv4485 = phi i64 [ 0, %for.body1325.lr.ph ], [ %indvars.iv.next4486, %for.body1325.for.body1325_crit_edge ]
  %arrayidx1327 = getelementptr inbounds double* %621, i64 %indvars.iv4485
  %629 = load double* %arrayidx1327, align 8, !tbaa !4
  %arrayidx1329 = getelementptr inbounds double* %622, i64 %indvars.iv4485
  %630 = load double* %arrayidx1329, align 8, !tbaa !4
  %sub1330 = fsub double %629, %630
  %mul1331 = fmul double %add1321, %sub1330
  %arrayidx1333 = getelementptr inbounds double* %623, i64 %indvars.iv4485
  %631 = load double* %arrayidx1333, align 8, !tbaa !4
  %arrayidx1335 = getelementptr inbounds double* %624, i64 %indvars.iv4485
  %632 = load double* %arrayidx1335, align 8, !tbaa !4
  %sub1336 = fsub double %631, %632
  %mul1337 = fmul double %628, %sub1336
  %sub1338 = fsub double %mul1331, %mul1337
  %arrayidx1340 = getelementptr inbounds double* %625, i64 %indvars.iv4485
  %633 = load double* %arrayidx1340, align 8, !tbaa !4
  %arrayidx1342 = getelementptr inbounds double* %626, i64 %indvars.iv4485
  %634 = load double* %arrayidx1342, align 8, !tbaa !4
  %mul1343 = fmul double %633, %634
  %sub1344 = fsub double %sub1338, %mul1343
  %arrayidx1346 = getelementptr inbounds double* %627, i64 %indvars.iv4485
  store double %sub1344, double* %arrayidx1346, align 8, !tbaa !4
  %indvars.iv.next4486 = add i64 %indvars.iv4485, 1
  %635 = trunc i64 %indvars.iv.next4486 to i32
  %cmp1323 = icmp slt i32 %635, %620
  br i1 %cmp1323, label %for.body1325.for.body1325_crit_edge, label %for.cond1352.preheader

for.body1325.for.body1325_crit_edge:              ; preds = %for.body1325
  %.pre4591 = load double* %alpha, align 8, !tbaa !4
  br label %for.body1325

for.cond1352.preheader:                           ; preds = %for.body1277, %for.body1325, %for.body1237
  %636 = phi i32 [ %582, %for.body1237 ], [ %620, %for.body1325 ], [ %603, %for.body1277 ]
  %cmp13534209 = icmp sgt i32 %636, 0
  br i1 %cmp13534209, label %for.body1355.lr.ph, label %for.end1365

for.body1355.lr.ph:                               ; preds = %for.cond1352.preheader
  %637 = load double** %b.addr, align 8, !tbaa !0
  br label %for.body1355

for.body1355:                                     ; preds = %for.body1355.lr.ph, %for.body1355
  %indvars.iv4491 = phi i64 [ 0, %for.body1355.lr.ph ], [ %indvars.iv.next4492, %for.body1355 ]
  %ram.24210 = phi double [ 0.000000e+00, %for.body1355.lr.ph ], [ %ram.3, %for.body1355 ]
  %arrayidx1357 = getelementptr inbounds double* %637, i64 %indvars.iv4491
  %638 = load double* %arrayidx1357, align 8, !tbaa !4
  %call1358 = call double @fabs(double %638) #6
  %cmp1359 = fcmp ogt double %call1358, %ram.24210
  %ram.3 = select i1 %cmp1359, double %call1358, double %ram.24210
  %indvars.iv.next4492 = add i64 %indvars.iv4491, 1
  %639 = trunc i64 %indvars.iv.next4492 to i32
  %cmp1353 = icmp slt i32 %639, %636
  br i1 %cmp1353, label %for.body1355, label %for.end1365

for.end1365:                                      ; preds = %for.end1272, %for.end1320, %for.cond1234.preheader, %for.body1355, %for.cond1352.preheader
  %ram.2.lcssa = phi double [ 0.000000e+00, %for.cond1352.preheader ], [ %ram.3, %for.body1355 ], [ 0.000000e+00, %for.cond1234.preheader ], [ 0.000000e+00, %for.end1320 ], [ 0.000000e+00, %for.end1272 ]
  %cmp1366 = fcmp olt double %ram.2.lcssa, 1.000000e-06
  %ram.4 = select i1 %cmp1366, double 0.000000e+00, double %ram.2.lcssa
  %call1370 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str10, i64 0, i64 0), double %ram.4) #5
  %640 = load double* %qa, align 8, !tbaa !4
  %mul1371 = fmul double %16, %qam.3
  %cmp1372 = fcmp ogt double %640, %mul1371
  br i1 %cmp1372, label %if.then1374, label %if.end1381

if.then1374:                                      ; preds = %for.end1365
  %641 = load i32* %l, align 4, !tbaa !3
  %cmp1375 = icmp sgt i32 %641, %conv4
  %.4064 = select i1 %cmp1375, double %15, double %11
  br label %if.end1381

if.end1381:                                       ; preds = %for.end1365, %if.then1374
  %c1.1 = phi double [ %.4064, %if.then1374 ], [ %16, %for.end1365 ]
  %c2.0 = phi double [ %12, %if.then1374 ], [ %17, %for.end1365 ]
  %cmp1382 = fcmp olt double %ram.14227, %ram1.14228
  %ram2.0 = select i1 %cmp1382, double %ram.14227, double %ram1.14228
  %mul1386 = fmul double %qam.3, %c1.1
  %cmp1387 = fcmp ugt double %ram.4, %mul1386
  br i1 %cmp1387, label %if.else1473, label %land.lhs.true1389

land.lhs.true1389:                                ; preds = %if.end1381
  %642 = load double* %cam, align 8, !tbaa !4
  %mul1390 = fmul double %uam.6, %c2.0
  %cmp1391 = fcmp ugt double %642, %mul1390
  br i1 %cmp1391, label %lor.lhs.false1393, label %if.then1407

lor.lhs.false1393:                                ; preds = %land.lhs.true1389
  %mul1394 = fmul double %ram.4, %642
  %div1395 = fdiv double %mul1394, %ram2.0
  %cmp1397 = fcmp olt double %div1395, %mul1390
  br i1 %cmp1397, label %if.then1407, label %lor.lhs.false1399

lor.lhs.false1399:                                ; preds = %lor.lhs.false1393
  %mul1400 = fmul double %18, %qam.3
  %cmp1401 = fcmp ugt double %ram.4, %mul1400
  %cmp1405 = fcmp ugt double %640, %mul1371
  %or.cond4620 = and i1 %cmp1401, %cmp1405
  br i1 %or.cond4620, label %if.else1473, label %if.then1407

if.then1407:                                      ; preds = %lor.lhs.false1399, %land.lhs.true1389, %lor.lhs.false1393
  %643 = load double* %ttime, align 8, !tbaa !4
  %644 = load double* %dtime, align 8, !tbaa !4
  %add1408 = fadd double %643, %644
  store double %add1408, double* %ttime, align 8, !tbaa !4
  call void @writesummary_(i32* %istep, i32* %j, i32* %icutb, i32* %l, double* %ttime, double* %time, double* %dtime) #5
  store i32 0, i32* %icutb, align 4, !tbaa !3
  %add1409 = fadd double %dtheta.04278, %theta.04279
  %645 = load i32* %nmethod, align 4, !tbaa !3
  %cmp1410 = icmp eq i32 %645, 4
  br i1 %cmp1410, label %if.end1429, label %for.cond1413.preheader

for.cond1413.preheader:                           ; preds = %if.then1407
  %646 = load i32* %nk, align 4, !tbaa !3
  %cmp14154214 = icmp sgt i32 %646, 0
  br i1 %cmp14154214, label %for.body1417.lr.ph, label %if.end1429

for.body1417.lr.ph:                               ; preds = %for.cond1413.preheader
  %mul1414 = shl nsw i32 %646, 2
  %.pre4580 = load double* %dtime, align 8, !tbaa !4
  br label %for.body1417

for.body1417:                                     ; preds = %for.body1417.lr.ph, %for.body1417
  %indvars.iv4493 = phi i64 [ 0, %for.body1417.lr.ph ], [ %indvars.iv.next4494, %for.body1417 ]
  %arrayidx1419 = getelementptr inbounds double* %vold, i64 %indvars.iv4493
  %647 = load double* %arrayidx1419, align 8, !tbaa !4
  %arrayidx1421 = getelementptr inbounds double* %51, i64 %indvars.iv4493
  %648 = load double* %arrayidx1421, align 8, !tbaa !4
  %sub1422 = fsub double %647, %648
  %div1423 = fdiv double %sub1422, %.pre4580
  %arrayidx1425 = getelementptr inbounds double* %veold, i64 %indvars.iv4493
  store double %div1423, double* %arrayidx1425, align 8, !tbaa !4
  %indvars.iv.next4494 = add i64 %indvars.iv4493, 1
  %649 = trunc i64 %indvars.iv.next4494 to i32
  %cmp1415 = icmp slt i32 %649, %mul1414
  br i1 %cmp1415, label %for.body1417, label %if.end1429

if.end1429:                                       ; preds = %for.cond1413.preheader, %for.body1417, %if.then1407
  %650 = load i32* %l, align 4, !tbaa !3
  %cmp1430 = icmp sgt i32 %650, %conv8
  br i1 %cmp1430, label %if.then1432, label %if.else1436

if.then1432:                                      ; preds = %if.end1429
  %mul1433 = fmul double %9, %dtheta.04278
  %651 = load double* %tper, align 8, !tbaa !4
  %mul1434 = fmul double %mul1433, %651
  %call1435 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str11, i64 0, i64 0), double %mul1434) #5
  br label %if.end1455

if.else1436:                                      ; preds = %if.end1429
  %cmp1437 = icmp sgt i32 %650, %conv10
  br i1 %cmp1437, label %if.else1452, label %if.then1439

if.then1439:                                      ; preds = %if.else1436
  %cmp1440 = icmp eq i32 %istab.04283, 1
  br i1 %cmp1440, label %land.lhs.true1442, label %if.else1449

land.lhs.true1442:                                ; preds = %if.then1439
  %652 = load i32* %idrct, align 4, !tbaa !3
  %cmp1443 = icmp eq i32 %652, 0
  br i1 %cmp1443, label %if.then1445, label %if.else1449

if.then1445:                                      ; preds = %land.lhs.true1442
  %mul1446 = fmul double %10, %dtheta.04278
  %653 = load double* %tper, align 8, !tbaa !4
  %mul1447 = fmul double %mul1446, %653
  %call1448 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str12, i64 0, i64 0), double %mul1447) #5
  br label %if.end1455

if.else1449:                                      ; preds = %land.lhs.true1442, %if.then1439
  %puts4055 = call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str39, i64 0, i64 0))
  br label %if.end1455

if.else1452:                                      ; preds = %if.else1436
  %puts4054 = call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str39, i64 0, i64 0))
  br label %if.end1455

if.end1455:                                       ; preds = %if.else1452, %if.else1449, %if.then1445, %if.then1432
  %dtheta.2 = phi double [ %mul1433, %if.then1432 ], [ %mul1446, %if.then1445 ], [ %dtheta.04278, %if.else1449 ], [ %dtheta.04278, %if.else1452 ]
  %istab.2 = phi i32 [ %istab.04283, %if.then1432 ], [ 1, %if.then1445 ], [ 1, %if.else1449 ], [ 0, %if.else1452 ]
  %654 = load double* %tmax, align 8, !tbaa !4
  %cmp1456 = fcmp ogt double %dtheta.2, %654
  br i1 %cmp1456, label %land.lhs.true1458, label %if.end1464

land.lhs.true1458:                                ; preds = %if.end1455
  %655 = load i32* %idrct, align 4, !tbaa !3
  %cmp1459 = icmp eq i32 %655, 0
  br i1 %cmp1459, label %if.then1461, label %if.end1464

if.then1461:                                      ; preds = %land.lhs.true1458
  %656 = load double* %tper, align 8, !tbaa !4
  %mul1462 = fmul double %654, %656
  %call1463 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str14, i64 0, i64 0), double %mul1462) #5
  br label %if.end1464

if.end1464:                                       ; preds = %if.then1461, %land.lhs.true1458, %if.end1455
  %dtheta.3 = phi double [ %654, %if.then1461 ], [ %dtheta.2, %land.lhs.true1458 ], [ %dtheta.2, %if.end1455 ]
  %sub1465 = fsub double 1.000000e+00, %add1409
  %cmp1466 = fcmp ogt double %dtheta.3, %sub1465
  br i1 %cmp1466, label %if.then1468, label %while.endthread-pre-split

if.then1468:                                      ; preds = %if.end1464
  %657 = load double* %tper, align 8, !tbaa !4
  %mul1470 = fmul double %sub1465, %657
  %call1471 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([66 x i8]* @.str15, i64 0, i64 0), double %mul1470) #5
  br label %while.endthread-pre-split

if.else1473:                                      ; preds = %lor.lhs.false1399, %if.end1381
  %658 = load i32* %l, align 4, !tbaa !3
  %cmp1474 = icmp sgt i32 %658, %conv6
  br i1 %cmp1474, label %if.then1476, label %if.end1478

if.then1476:                                      ; preds = %if.else1473
  %puts4053 = call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @str37, i64 0, i64 0))
  call void (...)* @stop_() #5
  %.pre4578 = load i32* %l, align 4, !tbaa !3
  br label %if.end1478

if.end1478:                                       ; preds = %if.then1476, %if.else1473
  %659 = phi i32 [ %.pre4578, %if.then1476 ], [ %658, %if.else1473 ]
  %cmp1479 = icmp sge i32 %659, %conv
  %cmp1482 = fcmp ogt double %ram.14227, %ram2.0
  %or.cond4065 = and i1 %cmp1479, %cmp1482
  %cmp1485 = fcmp ogt double %ram.4, %ram2.0
  %or.cond4066 = and i1 %or.cond4065, %cmp1485
  %cmp1489 = fcmp ogt double %ram.4, %mul1386
  %or.cond4067 = and i1 %or.cond4066, %cmp1489
  br i1 %or.cond4067, label %if.then1491, label %if.end1515

if.then1491:                                      ; preds = %if.end1478
  %660 = load i32* %idrct, align 4, !tbaa !3
  %cmp1492 = icmp eq i32 %660, 1
  br i1 %cmp1492, label %if.then1494, label %if.else1497

if.then1494:                                      ; preds = %if.then1491
  %puts4051 = call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @str35, i64 0, i64 0))
  %puts4052 = call i32 @puts(i8* getelementptr inbounds ([41 x i8]* @str36, i64 0, i64 0))
  call void (...)* @stop_() #5
  %.pre4579 = load i32* %l, align 4, !tbaa !3
  br label %if.end1515

if.else1497:                                      ; preds = %if.then1491
  %mul1498 = fmul double %7, %dtheta.04278
  %661 = load double* %tper, align 8, !tbaa !4
  %mul1499 = fmul double %mul1498, %661
  %call1500 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str19, i64 0, i64 0), double %mul1499) #5
  %puts4048 = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str32, i64 0, i64 0))
  %662 = load double* %tmin, align 8, !tbaa !4
  %cmp1502 = fcmp olt double %mul1498, %662
  br i1 %cmp1502, label %if.then1504, label %if.end1506

if.then1504:                                      ; preds = %if.else1497
  %puts4050 = call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str34, i64 0, i64 0))
  call void (...)* @stop_() #5
  br label %if.end1506

if.end1506:                                       ; preds = %if.then1504, %if.else1497
  %663 = load i32* %icutb, align 4, !tbaa !3
  %inc1507 = add nsw i32 %663, 1
  store i32 %inc1507, i32* %icutb, align 4, !tbaa !3
  %cmp1508 = icmp slt i32 %663, %conv12
  br i1 %cmp1508, label %while.end, label %if.then1510

if.then1510:                                      ; preds = %if.end1506
  %puts4049 = call i32 @puts(i8* getelementptr inbounds ([27 x i8]* @str33, i64 0, i64 0))
  call void (...)* @stop_() #5
  br label %while.endthread-pre-split

while.cond875.backedge.while.body878_crit_edge:   ; preds = %for.end1112, %if.end1562
  %v.0.be = phi double* [ %v.04218, %for.end1112 ], [ %562, %if.end1562 ]
  %fn.0.be = phi double* [ %fn.04223, %for.end1112 ], [ %567, %if.end1562 ]
  %qam.2.be = phi double [ %qam.24224, %for.end1112 ], [ %qam.3, %if.end1562 ]
  %ram.1.be = phi double [ %ram.14227, %for.end1112 ], [ %ram.4, %if.end1562 ]
  %ram1.1.be = phi double [ %ram1.14228, %for.end1112 ], [ %ram.14227, %if.end1562 ]
  %uam.5.be = phi double [ %uam.54229, %for.end1112 ], [ %uam.6, %if.end1562 ]
  %inum.1.be = phi i32* [ %527, %for.end1112 ], [ %inum.14234, %if.end1562 ]
  %stx.0.be = phi double* [ %stx.04236, %for.end1112 ], [ %565, %if.end1562 ]
  %.pre4588 = load i32* %l, align 4, !tbaa !3
  br label %while.body878

if.end1515:                                       ; preds = %if.end1478, %if.then1494
  %664 = phi i32 [ %659, %if.end1478 ], [ %.pre4579, %if.then1494 ]
  %cmp1516 = icmp slt i32 %664, %conv2
  br i1 %cmp1516, label %if.end1562, label %if.then1518

if.then1518:                                      ; preds = %if.end1515
  %conv1519 = sitofp i32 %664 to double
  %mul1520 = fmul double %11, %qam.3
  %div1521 = fdiv double %mul1520, %ram.4
  %call1522 = call double @log(double %div1521) #5
  %div1523 = fdiv double %ram.4, %ram.14227
  %call1524 = call double @log(double %div1523) #5
  %div1525 = fdiv double %call1522, %call1524
  %add1526 = fadd double %conv1519, %div1525
  %call1527 = call double @ceil(double %add1526) #6
  %conv1528 = fptosi double %call1527 to i32
  %call1529 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str23, i64 0, i64 0), i32 %conv1528) #5
  %665 = load i32* %l, align 4, !tbaa !3
  %conv1530 = sitofp i32 %665 to double
  %call1533 = call double @log(double %div1521) #5
  %call1535 = call double @log(double %div1523) #5
  %div1536 = fdiv double %call1533, %call1535
  %add1537 = fadd double %conv1530, %div1536
  %cmp1539 = fcmp ogt double %add1537, %conv1538
  br i1 %cmp1539, label %if.then1541, label %if.end1562

if.then1541:                                      ; preds = %if.then1518
  %666 = load i32* %idrct, align 4, !tbaa !3
  %cmp1542 = icmp eq i32 %666, 1
  br i1 %cmp1542, label %if.end1562, label %if.then1544

if.then1544:                                      ; preds = %if.then1541
  %mul1545 = fmul double %8, %dtheta.04278
  %667 = load double* %tper, align 8, !tbaa !4
  %mul1546 = fmul double %mul1545, %667
  %call1547 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str24, i64 0, i64 0), double %mul1546) #5
  %puts4045 = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str32, i64 0, i64 0))
  %668 = load double* %tmin, align 8, !tbaa !4
  %cmp1549 = fcmp olt double %mul1545, %668
  br i1 %cmp1549, label %if.then1551, label %if.end1553

if.then1551:                                      ; preds = %if.then1544
  %puts4047 = call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str34, i64 0, i64 0))
  call void (...)* @stop_() #5
  br label %if.end1553

if.end1553:                                       ; preds = %if.then1551, %if.then1544
  %669 = load i32* %icutb, align 4, !tbaa !3
  %inc1554 = add nsw i32 %669, 1
  store i32 %inc1554, i32* %icutb, align 4, !tbaa !3
  %cmp1555 = icmp slt i32 %669, %conv12
  br i1 %cmp1555, label %while.end, label %if.then1557

if.then1557:                                      ; preds = %if.end1553
  %puts4046 = call i32 @puts(i8* getelementptr inbounds ([27 x i8]* @str33, i64 0, i64 0))
  call void (...)* @stop_() #5
  br label %while.endthread-pre-split

if.end1562:                                       ; preds = %if.then1541, %if.end1515, %if.then1518
  %puts = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str, i64 0, i64 0))
  %670 = load i32* %l, align 4, !tbaa !3
  %inc1564 = add nsw i32 %670, 1
  store i32 %inc1564, i32* %l, align 4, !tbaa !3
  br label %while.cond875.backedge.while.body878_crit_edge

while.endthread-pre-split:                        ; preds = %if.then1510, %if.then1557, %if.end1464, %if.then1468
  %dtheta.1.be.ph.ph = phi double [ %sub1465, %if.then1468 ], [ %dtheta.3, %if.end1464 ], [ %mul1545, %if.then1557 ], [ %mul1498, %if.then1510 ]
  %theta.1.be.ph.ph = phi double [ %add1409, %if.then1468 ], [ %add1409, %if.end1464 ], [ %theta.04279, %if.then1557 ], [ %theta.04279, %if.then1510 ]
  %istab.1.be.ph.ph = phi i32 [ %istab.2, %if.then1468 ], [ %istab.2, %if.end1464 ], [ 0, %if.then1557 ], [ 0, %if.then1510 ]
  %.pr4612 = load i32* %icutb, align 4, !tbaa !3
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %if.end1553, %if.end1506
  %671 = phi i32 [ %.pr4612, %while.endthread-pre-split ], [ %inc1554, %if.end1553 ], [ %inc1507, %if.end1506 ]
  %dtheta.1.be.ph = phi double [ %dtheta.1.be.ph.ph, %while.endthread-pre-split ], [ %mul1545, %if.end1553 ], [ %mul1498, %if.end1506 ]
  %theta.1.be.ph = phi double [ %theta.1.be.ph.ph, %while.endthread-pre-split ], [ %theta.04279, %if.end1553 ], [ %theta.04279, %if.end1506 ]
  %istab.1.be.ph = phi i32 [ %istab.1.be.ph.ph, %while.endthread-pre-split ], [ 0, %if.end1553 ], [ 0, %if.end1506 ]
  %672 = load double* %qa, align 8, !tbaa !4
  %mul1567 = fmul double %16, %qam.3
  %cmp1568 = fcmp ogt double %672, %mul1567
  br i1 %cmp1568, label %land.lhs.true1570, label %if.end1575

land.lhs.true1570:                                ; preds = %while.end
  %cmp1571 = icmp eq i32 %671, 0
  %inc1574 = zext i1 %cmp1571 to i32
  %inc1574.jnz.0 = add nsw i32 %inc1574, %jnz.04284
  br label %if.end1575

if.end1575:                                       ; preds = %while.end, %land.lhs.true1570
  %jnz.1 = phi i32 [ %inc1574.jnz.0, %land.lhs.true1570 ], [ %jnz.04284, %while.end ]
  %cmp1576 = icmp eq i32 %671, 0
  br i1 %cmp1576, label %if.end1717, label %for.cond1579.preheader

for.cond1579.preheader:                           ; preds = %if.end1575
  %673 = load i32* %nk, align 4, !tbaa !3
  %cmp15814239 = icmp sgt i32 %673, 0
  br i1 %cmp15814239, label %for.body1583.lr.ph, label %for.cond1591.loopexit

for.body1583.lr.ph:                               ; preds = %for.cond1579.preheader
  %mul1580 = shl nsw i32 %673, 2
  br label %for.body1583

for.body1583:                                     ; preds = %for.body1583.lr.ph, %for.body1583
  %indvars.iv4497 = phi i64 [ 0, %for.body1583.lr.ph ], [ %indvars.iv.next4498, %for.body1583 ]
  %arrayidx1585 = getelementptr inbounds double* %51, i64 %indvars.iv4497
  %674 = load double* %arrayidx1585, align 8, !tbaa !4
  %arrayidx1587 = getelementptr inbounds double* %vold, i64 %indvars.iv4497
  store double %674, double* %arrayidx1587, align 8, !tbaa !4
  %indvars.iv.next4498 = add i64 %indvars.iv4497, 1
  %675 = trunc i64 %indvars.iv.next4498 to i32
  %cmp1581 = icmp slt i32 %675, %mul1580
  br i1 %cmp1581, label %for.body1583, label %for.cond1591.loopexit

for.cond1591.loopexit:                            ; preds = %for.body1583, %for.cond1579.preheader
  %676 = load i32* %nboun, align 4, !tbaa !3
  %cmp15924241 = icmp sgt i32 %676, 0
  br i1 %cmp15924241, label %for.body1594, label %for.end1601

for.body1594:                                     ; preds = %for.cond1591.loopexit, %for.body1594
  %indvars.iv4500 = phi i64 [ %indvars.iv.next4501, %for.body1594 ], [ 0, %for.cond1591.loopexit ]
  %arrayidx1596 = getelementptr inbounds double* %59, i64 %indvars.iv4500
  %677 = load double* %arrayidx1596, align 8, !tbaa !4
  %arrayidx1598 = getelementptr inbounds double* %57, i64 %indvars.iv4500
  store double %677, double* %arrayidx1598, align 8, !tbaa !4
  %indvars.iv.next4501 = add i64 %indvars.iv4500, 1
  %678 = trunc i64 %indvars.iv.next4501 to i32
  %cmp1592 = icmp slt i32 %678, %676
  br i1 %cmp1592, label %for.body1594, label %for.end1601

for.end1601:                                      ; preds = %for.body1594, %for.cond1591.loopexit
  %679 = load i32* %ithermal, align 4, !tbaa !3
  %cmp1602.not = icmp ne i32 %679, 1
  %cmp15814239.not = xor i1 %cmp15814239, true
  %brmerge4621 = or i1 %cmp1602.not, %cmp15814239.not
  br i1 %brmerge4621, label %for.cond1617.preheader, label %for.body1608

for.body1608:                                     ; preds = %for.end1601, %for.body1608
  %indvars.iv4502 = phi i64 [ %indvars.iv.next4503, %for.body1608 ], [ 0, %for.end1601 ]
  %arrayidx1610 = getelementptr inbounds double* %t1ini.0, i64 %indvars.iv4502
  %680 = load double* %arrayidx1610, align 8, !tbaa !4
  %arrayidx1612 = getelementptr inbounds double* %t1act.0, i64 %indvars.iv4502
  store double %680, double* %arrayidx1612, align 8, !tbaa !4
  %indvars.iv.next4503 = add i64 %indvars.iv4502, 1
  %681 = trunc i64 %indvars.iv.next4503 to i32
  %cmp1606 = icmp slt i32 %681, %673
  br i1 %cmp1606, label %for.body1608, label %for.cond1617.preheader

for.cond1617.preheader:                           ; preds = %for.end1601, %for.body1608
  %682 = load i32* %neq, align 4, !tbaa !3
  %cmp16184245 = icmp sgt i32 %682, 0
  br i1 %cmp16184245, label %for.body1620.lr.ph, label %for.end1627

for.body1620.lr.ph:                               ; preds = %for.cond1617.preheader
  %683 = load double** %fini, align 8, !tbaa !0
  %684 = load double** %f, align 8, !tbaa !0
  br label %for.body1620

for.body1620:                                     ; preds = %for.body1620.lr.ph, %for.body1620
  %indvars.iv4504 = phi i64 [ 0, %for.body1620.lr.ph ], [ %indvars.iv.next4505, %for.body1620 ]
  %arrayidx1622 = getelementptr inbounds double* %683, i64 %indvars.iv4504
  %685 = load double* %arrayidx1622, align 8, !tbaa !4
  %arrayidx1624 = getelementptr inbounds double* %684, i64 %indvars.iv4504
  store double %685, double* %arrayidx1624, align 8, !tbaa !4
  %indvars.iv.next4505 = add i64 %indvars.iv4504, 1
  %686 = trunc i64 %indvars.iv.next4505 to i32
  %cmp1618 = icmp slt i32 %686, %682
  br i1 %cmp1618, label %for.body1620, label %for.end1627

for.end1627:                                      ; preds = %for.body1620, %for.cond1617.preheader
  %687 = load i32* %nmethod, align 4, !tbaa !3
  %cmp1628 = icmp eq i32 %687, 4
  br i1 %cmp1628, label %for.cond1631.preheader, label %for.cond1659.preheader

for.cond1631.preheader:                           ; preds = %for.end1627
  br i1 %cmp15814239, label %for.body1635.lr.ph, label %for.cond1647.loopexit

for.body1635.lr.ph:                               ; preds = %for.cond1631.preheader
  %mul1632 = shl nsw i32 %673, 2
  br label %for.body1635

for.body1635:                                     ; preds = %for.body1635.lr.ph, %for.body1635
  %indvars.iv4506 = phi i64 [ 0, %for.body1635.lr.ph ], [ %indvars.iv.next4507, %for.body1635 ]
  %arrayidx1637 = getelementptr inbounds double* %veini.0, i64 %indvars.iv4506
  %688 = load double* %arrayidx1637, align 8, !tbaa !4
  %arrayidx1639 = getelementptr inbounds double* %veold, i64 %indvars.iv4506
  store double %688, double* %arrayidx1639, align 8, !tbaa !4
  %arrayidx1641 = getelementptr inbounds double* %accini.0, i64 %indvars.iv4506
  %689 = load double* %arrayidx1641, align 8, !tbaa !4
  %arrayidx1643 = getelementptr inbounds double* %accold, i64 %indvars.iv4506
  store double %689, double* %arrayidx1643, align 8, !tbaa !4
  %indvars.iv.next4507 = add i64 %indvars.iv4506, 1
  %690 = trunc i64 %indvars.iv.next4507 to i32
  %cmp1633 = icmp slt i32 %690, %mul1632
  br i1 %cmp1633, label %for.body1635, label %for.cond1647.loopexit

for.cond1647.loopexit:                            ; preds = %for.body1635, %for.cond1631.preheader
  br i1 %cmp16184245, label %for.body1650.lr.ph, label %for.cond1659.preheader

for.body1650.lr.ph:                               ; preds = %for.cond1647.loopexit
  %691 = load double** %fextini, align 8, !tbaa !0
  %692 = load double** %fext, align 8, !tbaa !0
  br label %for.body1650

for.body1650:                                     ; preds = %for.body1650.lr.ph, %for.body1650
  %indvars.iv4510 = phi i64 [ 0, %for.body1650.lr.ph ], [ %indvars.iv.next4511, %for.body1650 ]
  %arrayidx1652 = getelementptr inbounds double* %691, i64 %indvars.iv4510
  %693 = load double* %arrayidx1652, align 8, !tbaa !4
  %arrayidx1654 = getelementptr inbounds double* %692, i64 %indvars.iv4510
  store double %693, double* %arrayidx1654, align 8, !tbaa !4
  %indvars.iv.next4511 = add i64 %indvars.iv4510, 1
  %694 = trunc i64 %indvars.iv.next4511 to i32
  %cmp1648 = icmp slt i32 %694, %682
  br i1 %cmp1648, label %for.body1650, label %for.cond1659.preheader

for.cond1659.preheader:                           ; preds = %for.cond1647.loopexit, %for.body1650, %for.end1627
  %695 = load i32* %mint_, align 4, !tbaa !3
  %mul16604252 = mul nsw i32 %695, 6
  %696 = load i32* %ne, align 4, !tbaa !3
  %mul16614253 = mul nsw i32 %mul16604252, %696
  %cmp16624254 = icmp sgt i32 %mul16614253, 0
  br i1 %cmp16624254, label %for.body1664, label %for.end1675

for.body1664:                                     ; preds = %for.cond1659.preheader, %for.body1664
  %indvars.iv4512 = phi i64 [ %indvars.iv.next4513, %for.body1664 ], [ 0, %for.cond1659.preheader ]
  %arrayidx1666 = getelementptr inbounds double* %161, i64 %indvars.iv4512
  %697 = load double* %arrayidx1666, align 8, !tbaa !4
  %arrayidx1668 = getelementptr inbounds double* %eei, i64 %indvars.iv4512
  store double %697, double* %arrayidx1668, align 8, !tbaa !4
  %arrayidx1670 = getelementptr inbounds double* %164, i64 %indvars.iv4512
  %698 = load double* %arrayidx1670, align 8, !tbaa !4
  %arrayidx1672 = getelementptr inbounds double* %sti, i64 %indvars.iv4512
  store double %698, double* %arrayidx1672, align 8, !tbaa !4
  %indvars.iv.next4513 = add i64 %indvars.iv4512, 1
  %699 = trunc i64 %indvars.iv.next4513 to i32
  %cmp1662 = icmp slt i32 %699, %mul16614253
  br i1 %cmp1662, label %for.body1664, label %for.end1675

for.end1675:                                      ; preds = %for.body1664, %for.cond1659.preheader
  %call1677 = call i32 @strcmp1(i8* %arrayidx234, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #5
  %cmp1678 = icmp eq i32 %call1677, 0
  br i1 %cmp1678, label %for.cond1686.preheader, label %lor.lhs.false1680

lor.lhs.false1680:                                ; preds = %for.end1675
  %call1682 = call i32 @strcmp1(i8* %arrayidx573, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #5
  %cmp1683 = icmp eq i32 %call1682, 0
  br i1 %cmp1683, label %for.cond1686.preheader, label %if.end1698

for.cond1686.preheader:                           ; preds = %lor.lhs.false1680, %for.end1675
  %700 = load i32* %mint_, align 4, !tbaa !3
  %701 = load i32* %ne, align 4, !tbaa !3
  %mul16874256 = mul nsw i32 %701, %700
  %cmp16884257 = icmp sgt i32 %mul16874256, 0
  br i1 %cmp16884257, label %for.body1690, label %if.end1698

for.body1690:                                     ; preds = %for.cond1686.preheader, %for.body1690
  %indvars.iv4516 = phi i64 [ %indvars.iv.next4517, %for.body1690 ], [ 0, %for.cond1686.preheader ]
  %arrayidx1692 = getelementptr inbounds double* %enerini.0, i64 %indvars.iv4516
  %702 = load double* %arrayidx1692, align 8, !tbaa !4
  %arrayidx1694 = getelementptr inbounds double* %ener, i64 %indvars.iv4516
  store double %702, double* %arrayidx1694, align 8, !tbaa !4
  %indvars.iv.next4517 = add i64 %indvars.iv4516, 1
  %703 = trunc i64 %indvars.iv.next4517 to i32
  %cmp1688 = icmp slt i32 %703, %mul16874256
  br i1 %cmp1688, label %for.body1690, label %if.end1698

if.end1698:                                       ; preds = %for.cond1686.preheader, %for.body1690, %lor.lhs.false1680
  %704 = load i32* %nstate_, align 4, !tbaa !3
  %cmp1699 = icmp eq i32 %704, 0
  br i1 %cmp1699, label %if.end1717, label %for.cond1702.preheader

for.cond1702.preheader:                           ; preds = %if.end1698
  %705 = load i32* %mint_, align 4, !tbaa !3
  %mul17034259 = mul nsw i32 %705, %704
  %706 = load i32* %ne, align 4, !tbaa !3
  %mul17044260 = mul nsw i32 %mul17034259, %706
  %cmp17054261 = icmp sgt i32 %mul17044260, 0
  br i1 %cmp17054261, label %for.body1707, label %if.end1717

for.body1707:                                     ; preds = %for.cond1702.preheader, %for.body1707
  %indvars.iv4519 = phi i64 [ %indvars.iv.next4520, %for.body1707 ], [ 0, %for.cond1702.preheader ]
  %arrayidx1709 = getelementptr inbounds double* %xstateini.0, i64 %indvars.iv4519
  %707 = load double* %arrayidx1709, align 8, !tbaa !4
  %arrayidx1711 = getelementptr inbounds double* %xstate, i64 %indvars.iv4519
  store double %707, double* %arrayidx1711, align 8, !tbaa !4
  %indvars.iv.next4520 = add i64 %indvars.iv4519, 1
  %708 = trunc i64 %indvars.iv.next4520 to i32
  %cmp1705 = icmp slt i32 %708, %mul17044260
  br i1 %cmp1705, label %for.body1707, label %if.end1717

if.end1717:                                       ; preds = %for.cond1702.preheader, %for.body1707, %if.end1698, %if.end1575
  %qam.4 = phi double [ %qam.3, %if.end1575 ], [ %qam.14277, %if.end1698 ], [ %qam.14277, %for.body1707 ], [ %qam.14277, %for.cond1702.preheader ]
  %709 = load i32* %jout, align 4, !tbaa !3
  %cmp1718 = icmp eq i32 %709, %jprint.1
  br i1 %cmp1718, label %land.lhs.true1720, label %while.cond.backedge

land.lhs.true1720:                                ; preds = %if.end1717
  %710 = load i32* %icutb, align 4, !tbaa !3
  %cmp1721 = icmp eq i32 %710, 0
  br i1 %cmp1721, label %if.then1723, label %while.cond.backedge

while.cond.backedge:                              ; preds = %land.lhs.true1720, %if.end1717
  %cmp464 = fcmp ogt double %dtheta.1.be.ph, 1.000000e-06
  br i1 %cmp464, label %while.body, label %while.end1821

if.then1723:                                      ; preds = %land.lhs.true1720
  %711 = load i32* %nk, align 4, !tbaa !3
  %mul1724 = shl nsw i32 %711, 2
  %conv1725 = sext i32 %mul1724 to i64
  %call1726 = call i8* @u_calloc(i64 %conv1725, i64 8) #5
  %712 = bitcast i8* %call1726 to double*
  %713 = load i32* %nk, align 4, !tbaa !3
  %mul1727 = shl nsw i32 %713, 2
  %conv1728 = sext i32 %mul1727 to i64
  %call1729 = call i8* @u_calloc(i64 %conv1728, i64 8) #5
  %714 = bitcast i8* %call1729 to double*
  %715 = load i32* %nk, align 4, !tbaa !3
  %mul1730 = mul nsw i32 %715, 6
  %conv1731 = sext i32 %mul1730 to i64
  %call1732 = call i8* @u_calloc(i64 %conv1731, i64 8) #5
  %716 = bitcast i8* %call1732 to double*
  %717 = load i32* %nk, align 4, !tbaa !3
  %conv1733 = sext i32 %717 to i64
  %call1734 = call i8* @u_calloc(i64 %conv1733, i64 4) #5
  %718 = bitcast i8* %call1734 to i32*
  %719 = load i32* %mint_, align 4, !tbaa !3
  %mul1735 = mul nsw i32 %719, 6
  %720 = load i32* %ne, align 4, !tbaa !3
  %mul1736 = mul nsw i32 %mul1735, %720
  %conv1737 = sext i32 %mul1736 to i64
  %call1738 = call i8* @u_calloc(i64 %conv1737, i64 8) #5
  %721 = bitcast i8* %call1738 to double*
  %call1740 = call i32 @strcmp1(i8* %arrayidx1739, i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0)) #5
  %cmp1741 = icmp eq i32 %call1740, 0
  br i1 %cmp1741, label %if.then1743, label %if.end1747

if.then1743:                                      ; preds = %if.then1723
  %722 = load i32* %nk, align 4, !tbaa !3
  %mul1744 = mul nsw i32 %722, 6
  %conv1745 = sext i32 %mul1744 to i64
  %call1746 = call i8* @u_calloc(i64 %conv1745, i64 8) #5
  %723 = bitcast i8* %call1746 to double*
  br label %if.end1747

if.end1747:                                       ; preds = %if.then1743, %if.then1723
  %een.1 = phi double* [ %723, %if.then1743 ], [ %een.0.ph4347, %if.then1723 ]
  %call1749 = call i32 @strcmp1(i8* %arrayidx1748, i8* getelementptr inbounds ([5 x i8]* @.str27, i64 0, i64 0)) #5
  %cmp1750 = icmp eq i32 %call1749, 0
  br i1 %cmp1750, label %if.then1752, label %if.end1755

if.then1752:                                      ; preds = %if.end1747
  %724 = load i32* %nk, align 4, !tbaa !3
  %conv1753 = sext i32 %724 to i64
  %call1754 = call i8* @u_calloc(i64 %conv1753, i64 8) #5
  %725 = bitcast i8* %call1754 to double*
  br label %if.end1755

if.end1755:                                       ; preds = %if.then1752, %if.end1747
  %epn.1 = phi double* [ %725, %if.then1752 ], [ %epn.0.ph4348, %if.end1747 ]
  %call1757 = call i32 @strcmp1(i8* %arrayidx234, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #5
  %cmp1758 = icmp eq i32 %call1757, 0
  br i1 %cmp1758, label %if.then1760, label %if.end1763

if.then1760:                                      ; preds = %if.end1755
  %726 = load i32* %nk, align 4, !tbaa !3
  %conv1761 = sext i32 %726 to i64
  %call1762 = call i8* @u_calloc(i64 %conv1761, i64 8) #5
  %727 = bitcast i8* %call1762 to double*
  br label %if.end1763

if.end1763:                                       ; preds = %if.then1760, %if.end1755
  %enern.1 = phi double* [ %727, %if.then1760 ], [ %enern.0.ph4362, %if.end1755 ]
  %call1765 = call i32 @strcmp1(i8* %arrayidx1764, i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #5
  %cmp1766 = icmp eq i32 %call1765, 0
  br i1 %cmp1766, label %if.then1768, label %if.end1772

if.then1768:                                      ; preds = %if.end1763
  %728 = load i32* %nstate_, align 4, !tbaa !3
  %729 = load i32* %nk, align 4, !tbaa !3
  %mul1769 = mul nsw i32 %729, %728
  %conv1770 = sext i32 %mul1769 to i64
  %call1771 = call i8* @u_calloc(i64 %conv1770, i64 8) #5
  %730 = bitcast i8* %call1771 to double*
  br label %if.end1772

if.end1772:                                       ; preds = %if.then1768, %if.end1763
  %xstaten.1 = phi double* [ %730, %if.then1768 ], [ %xstaten.0.ph4363, %if.end1763 ]
  %731 = load i32* %nk, align 4, !tbaa !3
  %cmp17754264 = icmp sgt i32 %731, 0
  br i1 %cmp17754264, label %for.body1777.lr.ph, label %for.end1784

for.body1777.lr.ph:                               ; preds = %if.end1772
  %mul1774 = shl nsw i32 %731, 2
  br label %for.body1777

for.body1777:                                     ; preds = %for.body1777.lr.ph, %for.body1777
  %indvars.iv4536 = phi i64 [ 0, %for.body1777.lr.ph ], [ %indvars.iv.next4537, %for.body1777 ]
  %arrayidx1779 = getelementptr inbounds double* %vold, i64 %indvars.iv4536
  %732 = load double* %arrayidx1779, align 8, !tbaa !4
  %arrayidx1781 = getelementptr inbounds double* %712, i64 %indvars.iv4536
  store double %732, double* %arrayidx1781, align 8, !tbaa !4
  %indvars.iv.next4537 = add i64 %indvars.iv4536, 1
  %733 = trunc i64 %indvars.iv.next4537 to i32
  %cmp1775 = icmp slt i32 %733, %mul1774
  br i1 %cmp1775, label %for.body1777, label %for.end1784

for.end1784:                                      ; preds = %for.body1777, %if.end1772
  store i32 2, i32* %iout, align 4, !tbaa !3
  store i32 3, i32* %icmd, align 4, !tbaa !3
  %734 = load double** %f, align 8, !tbaa !0
  %735 = load double** %b.addr, align 8, !tbaa !0
  %736 = load i32** %nodempc, align 8, !tbaa !0
  %737 = load double** %coefmpc, align 8, !tbaa !0
  call void @results_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, double* %712, double* %716, i32* %718, i32* %nelemprint, i32* %neprint, double* %721, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t0, double* %t1act.0, i32* %ithermal, double* %prestr, i32* %iprestr, i8* %noelplab, i8* %nodeflab, double* %eei, double* %een.1, i32* %iperturb, double* %734, double* %714, i32* %nactdof, i32* %iout, double* %qa, i32* %noprint, i32* %nodeprint, double* %vold, double* %735, i32* %nodeboun, i32* %ndirboun, double* %57, i32* %nboun, i32* %ipompc, i32* %736, double* %737, i8* %labmpc, i32* %nmpc, i32* %nmethod, double* %vmax, i32* %neq, double* %veold, double* %accold, double* %bet, double* %gam, double* %dtime, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, double* %xstateini.0, double* %41, double* %xstate, i32* %npmat_, double* %epn.1, i8* %matname, i32* %mint_, i32* %ielas, i32* %icmd, i32* %ncmat_, i32* %nstate_, double* %164, double* %51, i32* %ikboun, i32* %ilboun, double* %ener, double* %enern.1, double* %sti, double* %xstaten.1, double* %161, double* %enerini.0, double* %cocon, i32* %ncocon) #5
  store i32 0, i32* %iout, align 4, !tbaa !3
  %738 = load i32* %iexpl, align 4, !tbaa !3
  %cmp1785 = icmp eq i32 %738, 0
  br i1 %cmp1785, label %if.then1787, label %if.end1788

if.then1787:                                      ; preds = %for.end1784
  store i32 0, i32* %icmd, align 4, !tbaa !3
  br label %if.end1788

if.end1788:                                       ; preds = %if.then1787, %for.end1784
  %739 = load i32* %kode, align 4, !tbaa !3
  %inc1789 = add nsw i32 %739, 1
  store i32 %inc1789, i32* %kode, align 4, !tbaa !3
  %740 = load i32* %arrayidx1790, align 4, !tbaa !3
  %cmp1791 = icmp sgt i32 %740, 1
  br i1 %cmp1791, label %if.then1793, label %if.else1794

if.then1793:                                      ; preds = %if.end1788
  call void @frdcyc(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32 %lakonLen, i32* %ne, double* %712, double* %716, i32* %718, i32* %nmethod, i32* %kode, i8* %nodeflab, i32 %nodeflabLen, double* %een.1, double* %t1act.0, double* %714, double* %ttime, double* %epn.1, i32* %ielmat, i8* %matname, i32 %matnameLen, i32* %ns, double* %csab, i32* %nkon, double* %enern.1, double* %xstaten.1, i32* %nstate_, i32* %istep, i32* %j, i32* %iperturb, double* %ener, i32* %mint_, i8* %output, i32 %outputLen) #5
  br label %if.end1795

if.else1794:                                      ; preds = %if.end1788
  call void @out_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, double* %712, double* %716, i32* %718, i32* %nmethod, i32* %kode, i8* %nodeflab, double* %een.1, double* %t1act.0, double* %714, double* %ttime, double* %epn.1, i32* %ielmat, i8* %matname, double* %enern.1, double* %xstaten.1, i32* %nstate_, i32* %istep, i32* %j, i32* %iperturb, double* %ener, i32* %mint_, i8* %output) #5
  br label %if.end1795

if.end1795:                                       ; preds = %if.else1794, %if.then1793
  call void @free(i8* %call1726) #5
  call void @free(i8* %call1729) #5
  call void @free(i8* %call1732) #5
  call void @free(i8* %call1734) #5
  call void @free(i8* %call1738) #5
  %call1797 = call i32 @strcmp1(i8* %arrayidx1739, i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0)) #5
  %cmp1798 = icmp eq i32 %call1797, 0
  br i1 %cmp1798, label %if.then1800, label %if.end1801

if.then1800:                                      ; preds = %if.end1795
  %741 = bitcast double* %een.1 to i8*
  call void @free(i8* %741) #5
  br label %if.end1801

if.end1801:                                       ; preds = %if.then1800, %if.end1795
  %call1803 = call i32 @strcmp1(i8* %arrayidx1748, i8* getelementptr inbounds ([5 x i8]* @.str27, i64 0, i64 0)) #5
  %cmp1804 = icmp eq i32 %call1803, 0
  br i1 %cmp1804, label %if.then1806, label %if.end1807

if.then1806:                                      ; preds = %if.end1801
  %742 = bitcast double* %epn.1 to i8*
  call void @free(i8* %742) #5
  br label %if.end1807

if.end1807:                                       ; preds = %if.then1806, %if.end1801
  %call1809 = call i32 @strcmp1(i8* %arrayidx234, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #5
  %cmp1810 = icmp eq i32 %call1809, 0
  br i1 %cmp1810, label %if.then1812, label %if.end1813

if.then1812:                                      ; preds = %if.end1807
  %743 = bitcast double* %enern.1 to i8*
  call void @free(i8* %743) #5
  br label %if.end1813

if.end1813:                                       ; preds = %if.then1812, %if.end1807
  %call1815 = call i32 @strcmp1(i8* %arrayidx1764, i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #5
  %cmp1816 = icmp eq i32 %call1815, 0
  br i1 %cmp1816, label %if.then1818, label %while.cond.outer.backedge

if.then1818:                                      ; preds = %if.end1813
  %744 = bitcast double* %xstaten.1 to i8*
  call void @free(i8* %744) #5
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.then1818, %if.end1813
  %cmp4644272 = fcmp ogt double %dtheta.1.be.ph, 1.000000e-06
  br i1 %cmp4644272, label %while.body.lr.ph, label %while.end1821.thread

while.end1821.thread:                             ; preds = %while.cond.outer.backedge, %while.cond.preheader
  %coefmpcref.3.lcssa.ph = phi double* [ %coefmpcref.7, %while.cond.outer.backedge ], [ %coefmpcref.2, %while.cond.preheader ]
  %nodempcref.3.lcssa.ph = phi i32* [ %nodempcref.7, %while.cond.outer.backedge ], [ %nodempcref.2, %while.cond.preheader ]
  %nmpcref.3.lcssa.ph = phi i32 [ %nmpcref.7, %while.cond.outer.backedge ], [ %nmpcref.2, %while.cond.preheader ]
  %memmpcref_.3.lcssa.ph = phi i32 [ %memmpcref_.7, %while.cond.outer.backedge ], [ %memmpcref_.2, %while.cond.preheader ]
  %mpcfreeref.3.lcssa.ph = phi i32 [ %mpcfreeref.7, %while.cond.outer.backedge ], [ %mpcfreeref.2, %while.cond.preheader ]
  %745 = load double** %finc, align 8, !tbaa !0
  %746 = bitcast double* %745 to i8*
  call void @free(i8* %746) #5
  br label %for.cond1922.preheader

while.end1821:                                    ; preds = %while.cond.backedge
  %747 = load double** %finc, align 8, !tbaa !0
  %748 = bitcast double* %747 to i8*
  call void @free(i8* %748) #5
  %cmp1822 = icmp eq i32 %jprint.1, 0
  br i1 %cmp1822, label %for.cond1922.preheader, label %if.then1824

if.then1824:                                      ; preds = %while.end1821
  %749 = load i32* %nk, align 4, !tbaa !3
  %mul1825 = shl nsw i32 %749, 2
  %conv1826 = sext i32 %mul1825 to i64
  %call1827 = call i8* @u_calloc(i64 %conv1826, i64 8) #5
  %750 = bitcast i8* %call1827 to double*
  %751 = load i32* %nk, align 4, !tbaa !3
  %mul1828 = shl nsw i32 %751, 2
  %conv1829 = sext i32 %mul1828 to i64
  %call1830 = call i8* @u_calloc(i64 %conv1829, i64 8) #5
  %752 = bitcast i8* %call1830 to double*
  %753 = load i32* %nk, align 4, !tbaa !3
  %mul1831 = mul nsw i32 %753, 6
  %conv1832 = sext i32 %mul1831 to i64
  %call1833 = call i8* @u_calloc(i64 %conv1832, i64 8) #5
  %754 = bitcast i8* %call1833 to double*
  %755 = load i32* %nk, align 4, !tbaa !3
  %conv1834 = sext i32 %755 to i64
  %call1835 = call i8* @u_calloc(i64 %conv1834, i64 4) #5
  %756 = bitcast i8* %call1835 to i32*
  %757 = load i32* %mint_, align 4, !tbaa !3
  %mul1836 = mul nsw i32 %757, 6
  %758 = load i32* %ne, align 4, !tbaa !3
  %mul1837 = mul nsw i32 %mul1836, %758
  %conv1838 = sext i32 %mul1837 to i64
  %call1839 = call i8* @u_calloc(i64 %conv1838, i64 8) #5
  %759 = bitcast i8* %call1839 to double*
  %arrayidx1840 = getelementptr inbounds i8* %nodeflab, i64 12
  %call1841 = call i32 @strcmp1(i8* %arrayidx1840, i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0)) #5
  %cmp1842 = icmp eq i32 %call1841, 0
  br i1 %cmp1842, label %if.then1844, label %if.end1848

if.then1844:                                      ; preds = %if.then1824
  %760 = load i32* %nk, align 4, !tbaa !3
  %mul1845 = mul nsw i32 %760, 6
  %conv1846 = sext i32 %mul1845 to i64
  %call1847 = call i8* @u_calloc(i64 %conv1846, i64 8) #5
  %761 = bitcast i8* %call1847 to double*
  br label %if.end1848

if.end1848:                                       ; preds = %if.then1844, %if.then1824
  %een.2 = phi double* [ %761, %if.then1844 ], [ %een.0.ph4347, %if.then1824 ]
  %arrayidx1849 = getelementptr inbounds i8* %nodeflab, i64 20
  %call1850 = call i32 @strcmp1(i8* %arrayidx1849, i8* getelementptr inbounds ([5 x i8]* @.str27, i64 0, i64 0)) #5
  %cmp1851 = icmp eq i32 %call1850, 0
  br i1 %cmp1851, label %if.then1853, label %if.end1856

if.then1853:                                      ; preds = %if.end1848
  %762 = load i32* %nk, align 4, !tbaa !3
  %conv1854 = sext i32 %762 to i64
  %call1855 = call i8* @u_calloc(i64 %conv1854, i64 8) #5
  %763 = bitcast i8* %call1855 to double*
  br label %if.end1856

if.end1856:                                       ; preds = %if.then1853, %if.end1848
  %epn.2 = phi double* [ %763, %if.then1853 ], [ %epn.0.ph4348, %if.end1848 ]
  %call1858 = call i32 @strcmp1(i8* %arrayidx234, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #5
  %cmp1859 = icmp eq i32 %call1858, 0
  br i1 %cmp1859, label %if.then1861, label %if.end1864

if.then1861:                                      ; preds = %if.end1856
  %764 = load i32* %nk, align 4, !tbaa !3
  %conv1862 = sext i32 %764 to i64
  %call1863 = call i8* @u_calloc(i64 %conv1862, i64 8) #5
  %765 = bitcast i8* %call1863 to double*
  br label %if.end1864

if.end1864:                                       ; preds = %if.then1861, %if.end1856
  %enern.2 = phi double* [ %765, %if.then1861 ], [ %enern.0.ph4362, %if.end1856 ]
  %arrayidx1865 = getelementptr inbounds i8* %nodeflab, i64 28
  %call1866 = call i32 @strcmp1(i8* %arrayidx1865, i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #5
  %cmp1867 = icmp eq i32 %call1866, 0
  br i1 %cmp1867, label %if.then1869, label %if.end1873

if.then1869:                                      ; preds = %if.end1864
  %766 = load i32* %nstate_, align 4, !tbaa !3
  %767 = load i32* %nk, align 4, !tbaa !3
  %mul1870 = mul nsw i32 %767, %766
  %conv1871 = sext i32 %mul1870 to i64
  %call1872 = call i8* @u_calloc(i64 %conv1871, i64 8) #5
  %768 = bitcast i8* %call1872 to double*
  br label %if.end1873

if.end1873:                                       ; preds = %if.then1869, %if.end1864
  %xstaten.2 = phi double* [ %768, %if.then1869 ], [ %xstaten.0.ph4363, %if.end1864 ]
  %769 = load i32* %nk, align 4, !tbaa !3
  %cmp18764090 = icmp sgt i32 %769, 0
  br i1 %cmp18764090, label %for.body1878.lr.ph, label %for.end1885

for.body1878.lr.ph:                               ; preds = %if.end1873
  %mul1875 = shl nsw i32 %769, 2
  br label %for.body1878

for.body1878:                                     ; preds = %for.body1878.lr.ph, %for.body1878
  %indvars.iv4397 = phi i64 [ 0, %for.body1878.lr.ph ], [ %indvars.iv.next4398, %for.body1878 ]
  %arrayidx1880 = getelementptr inbounds double* %vold, i64 %indvars.iv4397
  %770 = load double* %arrayidx1880, align 8, !tbaa !4
  %arrayidx1882 = getelementptr inbounds double* %750, i64 %indvars.iv4397
  store double %770, double* %arrayidx1882, align 8, !tbaa !4
  %indvars.iv.next4398 = add i64 %indvars.iv4397, 1
  %771 = trunc i64 %indvars.iv.next4398 to i32
  %cmp1876 = icmp slt i32 %771, %mul1875
  br i1 %cmp1876, label %for.body1878, label %for.end1885

for.end1885:                                      ; preds = %for.body1878, %if.end1873
  store i32 2, i32* %iout, align 4, !tbaa !3
  store i32 3, i32* %icmd, align 4, !tbaa !3
  %772 = load double** %f, align 8, !tbaa !0
  %773 = load double** %b.addr, align 8, !tbaa !0
  %774 = load i32** %nodempc, align 8, !tbaa !0
  %775 = load double** %coefmpc, align 8, !tbaa !0
  call void @results_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, double* %750, double* %754, i32* %756, i32* %nelemprint, i32* %neprint, double* %759, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t0, double* %t1, i32* %ithermal, double* %prestr, i32* %iprestr, i8* %noelplab, i8* %nodeflab, double* %eei, double* %een.2, i32* %iperturb, double* %772, double* %752, i32* %nactdof, i32* %iout, double* %qa, i32* %noprint, i32* %nodeprint, double* %vold, double* %773, i32* %nodeboun, i32* %ndirboun, double* %57, i32* %nboun, i32* %ipompc, i32* %774, double* %775, i8* %labmpc, i32* %nmpc, i32* %nmethod, double* %vmax, i32* %neq, double* %veold, double* %accold, double* %bet, double* %gam, double* %dtime, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, double* %xstateini.0, double* %41, double* %xstate, i32* %npmat_, double* %epn.2, i8* %matname, i32* %mint_, i32* %ielas, i32* %icmd, i32* %ncmat_, i32* %nstate_, double* %164, double* %51, i32* %ikboun, i32* %ilboun, double* %ener, double* %enern.2, double* %sti, double* %xstaten.2, double* %161, double* %enerini.0, double* %cocon, i32* %ncocon) #5
  store i32 0, i32* %iout, align 4, !tbaa !3
  %776 = load i32* %iexpl, align 4, !tbaa !3
  %cmp1886 = icmp eq i32 %776, 0
  br i1 %cmp1886, label %if.then1888, label %if.end1889

if.then1888:                                      ; preds = %for.end1885
  store i32 0, i32* %icmd, align 4, !tbaa !3
  br label %if.end1889

if.end1889:                                       ; preds = %if.then1888, %for.end1885
  %777 = load i32* %kode, align 4, !tbaa !3
  %inc1890 = add nsw i32 %777, 1
  store i32 %inc1890, i32* %kode, align 4, !tbaa !3
  %arrayidx1891 = getelementptr inbounds i32* %ns, i64 4
  %778 = load i32* %arrayidx1891, align 4, !tbaa !3
  %cmp1892 = icmp sgt i32 %778, 1
  br i1 %cmp1892, label %if.then1894, label %if.else1895

if.then1894:                                      ; preds = %if.end1889
  call void @frdcyc(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32 %lakonLen, i32* %ne, double* %750, double* %754, i32* %756, i32* %nmethod, i32* %kode, i8* %nodeflab, i32 %nodeflabLen, double* %een.2, double* %t1act.0, double* %752, double* %ttime, double* %epn.2, i32* %ielmat, i8* %matname, i32 %matnameLen, i32* %ns, double* %csab, i32* %nkon, double* %enern.2, double* %xstaten.2, i32* %nstate_, i32* %istep, i32* %j, i32* %iperturb, double* %ener, i32* %mint_, i8* %output, i32 %outputLen) #5
  br label %if.end1896

if.else1895:                                      ; preds = %if.end1889
  call void @out_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, double* %750, double* %754, i32* %756, i32* %nmethod, i32* %kode, i8* %nodeflab, double* %een.2, double* %t1act.0, double* %752, double* %ttime, double* %epn.2, i32* %ielmat, i8* %matname, double* %enern.2, double* %xstaten.2, i32* %nstate_, i32* %istep, i32* %j, i32* %iperturb, double* %ener, i32* %mint_, i8* %output) #5
  br label %if.end1896

if.end1896:                                       ; preds = %if.else1895, %if.then1894
  call void @free(i8* %call1827) #5
  call void @free(i8* %call1830) #5
  call void @free(i8* %call1833) #5
  call void @free(i8* %call1835) #5
  call void @free(i8* %call1839) #5
  %call1898 = call i32 @strcmp1(i8* %arrayidx1840, i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0)) #5
  %cmp1899 = icmp eq i32 %call1898, 0
  br i1 %cmp1899, label %if.then1901, label %if.end1902

if.then1901:                                      ; preds = %if.end1896
  %779 = bitcast double* %een.2 to i8*
  call void @free(i8* %779) #5
  br label %if.end1902

if.end1902:                                       ; preds = %if.then1901, %if.end1896
  %call1904 = call i32 @strcmp1(i8* %arrayidx1849, i8* getelementptr inbounds ([5 x i8]* @.str27, i64 0, i64 0)) #5
  %cmp1905 = icmp eq i32 %call1904, 0
  br i1 %cmp1905, label %if.then1907, label %if.end1908

if.then1907:                                      ; preds = %if.end1902
  %780 = bitcast double* %epn.2 to i8*
  call void @free(i8* %780) #5
  br label %if.end1908

if.end1908:                                       ; preds = %if.then1907, %if.end1902
  %call1910 = call i32 @strcmp1(i8* %arrayidx234, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #5
  %cmp1911 = icmp eq i32 %call1910, 0
  br i1 %cmp1911, label %if.then1913, label %if.end1914

if.then1913:                                      ; preds = %if.end1908
  %781 = bitcast double* %enern.2 to i8*
  call void @free(i8* %781) #5
  br label %if.end1914

if.end1914:                                       ; preds = %if.then1913, %if.end1908
  %call1916 = call i32 @strcmp1(i8* %arrayidx1865, i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #5
  %cmp1917 = icmp eq i32 %call1916, 0
  br i1 %cmp1917, label %if.then1919, label %for.cond1922.preheader

if.then1919:                                      ; preds = %if.end1914
  %782 = bitcast double* %xstaten.2 to i8*
  call void @free(i8* %782) #5
  br label %for.cond1922.preheader

for.cond1922.preheader:                           ; preds = %while.end1821.thread, %while.end1821, %if.end1914, %if.then1919
  %mpcfreeref.3.lcssa4618 = phi i32 [ %mpcfreeref.3.lcssa.ph, %while.end1821.thread ], [ %mpcfreeref.7, %while.end1821 ], [ %mpcfreeref.7, %if.end1914 ], [ %mpcfreeref.7, %if.then1919 ]
  %memmpcref_.3.lcssa4617 = phi i32 [ %memmpcref_.3.lcssa.ph, %while.end1821.thread ], [ %memmpcref_.7, %while.end1821 ], [ %memmpcref_.7, %if.end1914 ], [ %memmpcref_.7, %if.then1919 ]
  %nmpcref.3.lcssa4616 = phi i32 [ %nmpcref.3.lcssa.ph, %while.end1821.thread ], [ %nmpcref.7, %while.end1821 ], [ %nmpcref.7, %if.end1914 ], [ %nmpcref.7, %if.then1919 ]
  %nodempcref.3.lcssa4615 = phi i32* [ %nodempcref.3.lcssa.ph, %while.end1821.thread ], [ %nodempcref.7, %while.end1821 ], [ %nodempcref.7, %if.end1914 ], [ %nodempcref.7, %if.then1919 ]
  %coefmpcref.3.lcssa4614 = phi double* [ %coefmpcref.3.lcssa.ph, %while.end1821.thread ], [ %coefmpcref.7, %while.end1821 ], [ %coefmpcref.7, %if.end1914 ], [ %coefmpcref.7, %if.then1919 ]
  %783 = load i32* %nboun, align 4, !tbaa !3
  %cmp19234087 = icmp sgt i32 %783, 0
  br i1 %cmp19234087, label %for.body1925, label %for.cond1933.preheader

for.cond1933.preheader:                           ; preds = %for.body1925, %for.cond1922.preheader
  %784 = load i32* %nforc, align 4, !tbaa !3
  %cmp19344085 = icmp sgt i32 %784, 0
  br i1 %cmp19344085, label %for.body1936, label %for.cond1944.preheader

for.body1925:                                     ; preds = %for.cond1922.preheader, %for.body1925
  %indvars.iv4394 = phi i64 [ %indvars.iv.next4395, %for.body1925 ], [ 0, %for.cond1922.preheader ]
  %arrayidx1927 = getelementptr inbounds double* %57, i64 %indvars.iv4394
  %785 = load double* %arrayidx1927, align 8, !tbaa !4
  %arrayidx1929 = getelementptr inbounds double* %xbounold, i64 %indvars.iv4394
  store double %785, double* %arrayidx1929, align 8, !tbaa !4
  %indvars.iv.next4395 = add i64 %indvars.iv4394, 1
  %786 = trunc i64 %indvars.iv.next4395 to i32
  %cmp1923 = icmp slt i32 %786, %783
  br i1 %cmp1923, label %for.body1925, label %for.cond1933.preheader

for.cond1944.preheader:                           ; preds = %for.body1936, %for.cond1933.preheader
  %787 = load i32* %nload, align 4, !tbaa !3
  %cmp19464083 = icmp sgt i32 %787, 0
  br i1 %cmp19464083, label %for.body1948.lr.ph, label %for.end1955

for.body1948.lr.ph:                               ; preds = %for.cond1944.preheader
  %mul1945 = shl nsw i32 %787, 1
  br label %for.body1948

for.body1936:                                     ; preds = %for.cond1933.preheader, %for.body1936
  %indvars.iv4391 = phi i64 [ %indvars.iv.next4392, %for.body1936 ], [ 0, %for.cond1933.preheader ]
  %arrayidx1938 = getelementptr inbounds double* %64, i64 %indvars.iv4391
  %788 = load double* %arrayidx1938, align 8, !tbaa !4
  %arrayidx1940 = getelementptr inbounds double* %xforcold, i64 %indvars.iv4391
  store double %788, double* %arrayidx1940, align 8, !tbaa !4
  %indvars.iv.next4392 = add i64 %indvars.iv4391, 1
  %789 = trunc i64 %indvars.iv.next4392 to i32
  %cmp1934 = icmp slt i32 %789, %784
  br i1 %cmp1934, label %for.body1936, label %for.cond1944.preheader

for.body1948:                                     ; preds = %for.body1948.lr.ph, %for.body1948
  %indvars.iv4388 = phi i64 [ 0, %for.body1948.lr.ph ], [ %indvars.iv.next4389, %for.body1948 ]
  %arrayidx1950 = getelementptr inbounds double* %66, i64 %indvars.iv4388
  %790 = load double* %arrayidx1950, align 8, !tbaa !4
  %arrayidx1952 = getelementptr inbounds double* %xloadold, i64 %indvars.iv4388
  store double %790, double* %arrayidx1952, align 8, !tbaa !4
  %indvars.iv.next4389 = add i64 %indvars.iv4388, 1
  %791 = trunc i64 %indvars.iv.next4389 to i32
  %cmp1946 = icmp slt i32 %791, %mul1945
  br i1 %cmp1946, label %for.body1948, label %for.end1955

for.end1955:                                      ; preds = %for.body1948, %for.cond1944.preheader
  %792 = load i32* %ithermal, align 4, !tbaa !3
  %cmp1956 = icmp sgt i32 %792, 1
  br i1 %cmp1956, label %for.cond1959.preheader, label %if.end1970

for.cond1959.preheader:                           ; preds = %for.end1955
  %793 = load i32* %nflow, align 4, !tbaa !3
  %cmp19604080 = icmp sgt i32 %793, 0
  br i1 %cmp19604080, label %for.body1962, label %if.end1985

for.body1962:                                     ; preds = %for.cond1959.preheader, %for.body1962
  %indvars.iv4385 = phi i64 [ %indvars.iv.next4386, %for.body1962 ], [ 0, %for.cond1959.preheader ]
  %arrayidx1964 = getelementptr inbounds double* %xflowact.0, i64 %indvars.iv4385
  %794 = load double* %arrayidx1964, align 8, !tbaa !4
  %arrayidx1966 = getelementptr inbounds double* %xflowold, i64 %indvars.iv4385
  store double %794, double* %arrayidx1966, align 8, !tbaa !4
  %indvars.iv.next4386 = add i64 %indvars.iv4385, 1
  %795 = trunc i64 %indvars.iv.next4386 to i32
  %cmp1960 = icmp slt i32 %795, %793
  br i1 %cmp1960, label %for.body1962, label %if.end1970

if.end1970:                                       ; preds = %for.body1962, %for.end1955
  %cmp1971 = icmp eq i32 %792, 1
  br i1 %cmp1971, label %for.cond1974.preheader, label %if.end1985

for.cond1974.preheader:                           ; preds = %if.end1970
  %796 = load i32* %nk, align 4, !tbaa !3
  %cmp19754078 = icmp sgt i32 %796, 0
  br i1 %cmp19754078, label %for.body1977, label %if.end1985

for.body1977:                                     ; preds = %for.cond1974.preheader, %for.body1977
  %indvars.iv4382 = phi i64 [ %indvars.iv.next4383, %for.body1977 ], [ 0, %for.cond1974.preheader ]
  %arrayidx1979 = getelementptr inbounds double* %t1act.0, i64 %indvars.iv4382
  %797 = load double* %arrayidx1979, align 8, !tbaa !4
  %arrayidx1981 = getelementptr inbounds double* %t1old, i64 %indvars.iv4382
  store double %797, double* %arrayidx1981, align 8, !tbaa !4
  %indvars.iv.next4383 = add i64 %indvars.iv4382, 1
  %798 = trunc i64 %indvars.iv.next4383 to i32
  %cmp1975 = icmp slt i32 %798, %796
  br i1 %cmp1975, label %for.body1977, label %if.end1985

if.end1985:                                       ; preds = %for.cond1959.preheader, %for.cond1974.preheader, %for.body1977, %if.end1970
  %799 = load double* %omact, align 8, !tbaa !4
  store double %799, double* %omold, align 8, !tbaa !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %bodyfold4380, i8* %bodyfact4381, i64 24, i32 8, i1 false)
  %800 = load double* %qa, align 8, !tbaa !4
  store double %800, double* %qaold, align 8, !tbaa !4
  %801 = load double** %f, align 8, !tbaa !0
  %802 = bitcast double* %801 to i8*
  call void @free(i8* %802) #5
  %803 = load double** %b.addr, align 8, !tbaa !0
  %804 = bitcast double* %803 to i8*
  call void @free(i8* %804) #5
  call void @free(i8* %call71) #5
  call void @free(i8* %call86) #5
  call void @free(i8* %call89) #5
  %805 = bitcast double* %xflowact.0 to i8*
  call void @free(i8* %805) #5
  %806 = load double** %fext, align 8, !tbaa !0
  %807 = bitcast double* %806 to i8*
  call void @free(i8* %807) #5
  call void @free(i8* %call184) #5
  call void @free(i8* %call73) #5
  call void @free(i8* %call53) #5
  %808 = load i32* %ithermal, align 4, !tbaa !3
  %cmp1997 = icmp eq i32 %808, 1
  br i1 %cmp1997, label %if.then1999, label %if.end2000

if.then1999:                                      ; preds = %if.end1985
  call void @free(i8* %129) #5
  call void @free(i8* %130) #5
  %.pr4072 = load i32* %ithermal, align 4, !tbaa !3
  br label %if.end2000

if.end2000:                                       ; preds = %if.then1999, %if.end1985
  %809 = phi i32 [ %.pr4072, %if.then1999 ], [ %808, %if.end1985 ]
  %cmp2001 = icmp sgt i32 %809, 1
  br i1 %cmp2001, label %if.then2003, label %if.end2004

if.then2003:                                      ; preds = %if.end2000
  %810 = bitcast i32* %itg.0 to i8*
  call void @free(i8* %810) #5
  %811 = bitcast i32* %matg.0 to i8*
  call void @free(i8* %811) #5
  %812 = bitcast i32* %iptri.0 to i8*
  call void @free(i8* %812) #5
  %813 = bitcast i32* %kontri.0 to i8*
  call void @free(i8* %813) #5
  %814 = bitcast i32* %nloadtr.0 to i8*
  call void @free(i8* %814) #5
  %815 = bitcast double* %area.0 to i8*
  call void @free(i8* %815) #5
  %816 = bitcast double* %pmid.0 to i8*
  call void @free(i8* %816) #5
  %817 = bitcast double* %ft.0 to i8*
  call void @free(i8* %817) #5
  %818 = bitcast double* %dist.0 to i8*
  call void @free(i8* %818) #5
  %819 = bitcast i32* %idist.0 to i8*
  call void @free(i8* %819) #5
  %820 = bitcast double* %fij.0 to i8*
  call void @free(i8* %820) #5
  %821 = bitcast double* %tarea.0 to i8*
  call void @free(i8* %821) #5
  %822 = bitcast double* %tenv.0 to i8*
  call void @free(i8* %822) #5
  %823 = bitcast double* %erad.0 to i8*
  call void @free(i8* %823) #5
  %824 = bitcast double* %ac.0 to i8*
  call void @free(i8* %824) #5
  %825 = bitcast double* %bc.0 to i8*
  call void @free(i8* %825) #5
  %826 = bitcast i32* %ipiv.0 to i8*
  call void @free(i8* %826) #5
  %827 = bitcast double* %e1.0 to i8*
  call void @free(i8* %827) #5
  %828 = bitcast double* %e2.0 to i8*
  call void @free(i8* %828) #5
  %829 = bitcast double* %e3.0 to i8*
  call void @free(i8* %829) #5
  br label %if.end2004

if.end2004:                                       ; preds = %if.then2003, %if.end2000
  %830 = load double** %fini, align 8, !tbaa !0
  %831 = bitcast double* %830 to i8*
  call void @free(i8* %831) #5
  %832 = load i32* %nmethod, align 4, !tbaa !3
  %cmp2005 = icmp eq i32 %832, 4
  br i1 %cmp2005, label %if.then2007, label %if.end2008

if.then2007:                                      ; preds = %if.end2004
  %833 = load double** %aux2, align 8, !tbaa !0
  %834 = bitcast double* %833 to i8*
  call void @free(i8* %834) #5
  %835 = load double** %fextini, align 8, !tbaa !0
  %836 = bitcast double* %835 to i8*
  call void @free(i8* %836) #5
  call void @free(i8* %149) #5
  call void @free(i8* %148) #5
  %837 = load double** %adb.addr, align 8, !tbaa !0
  %838 = bitcast double* %837 to i8*
  call void @free(i8* %838) #5
  %839 = load double** %aub.addr, align 8, !tbaa !0
  %840 = bitcast double* %839 to i8*
  call void @free(i8* %840) #5
  br label %if.end2008

if.end2008:                                       ; preds = %if.then2007, %if.end2004
  call void @free(i8* %call229) #5
  call void @free(i8* %call233) #5
  %call2010 = call i32 @strcmp1(i8* %arrayidx234, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #5
  %cmp2011 = icmp eq i32 %call2010, 0
  br i1 %cmp2011, label %if.then2018, label %lor.lhs.false2013

lor.lhs.false2013:                                ; preds = %if.end2008
  %arrayidx2014 = getelementptr inbounds i8* %noelplab, i64 24
  %call2015 = call i32 @strcmp1(i8* %arrayidx2014, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #5
  %cmp2016 = icmp eq i32 %call2015, 0
  br i1 %cmp2016, label %if.then2018, label %if.end2019

if.then2018:                                      ; preds = %lor.lhs.false2013, %if.end2008
  call void @free(i8* %168) #5
  br label %if.end2019

if.end2019:                                       ; preds = %if.then2018, %lor.lhs.false2013
  %841 = load i32* %nstate_, align 4, !tbaa !3
  %cmp2020 = icmp eq i32 %841, 0
  br i1 %cmp2020, label %if.end2023, label %if.then2022

if.then2022:                                      ; preds = %if.end2019
  call void @free(i8* %160) #5
  br label %if.end2023

if.end2023:                                       ; preds = %if.end2019, %if.then2022
  call void @free(i8* %call67) #5
  call void @free(i8* %call69) #5
  call void @free(i8* %call64) #5
  %842 = load i32** %icol, align 8, !tbaa !0
  store i32* %842, i32** %icolp, align 8, !tbaa !0
  %843 = load i32** %irow, align 8, !tbaa !0
  store i32* %843, i32** %irowp, align 8, !tbaa !0
  %844 = load i32* %icascade, align 4, !tbaa !3
  %cmp2024 = icmp eq i32 %844, 2
  br i1 %cmp2024, label %if.then2026, label %if.end2057

if.then2026:                                      ; preds = %if.end2023
  store i32 %nmpcref.3.lcssa4616, i32* %nmpc, align 4, !tbaa !3
  store i32 %memmpcref_.3.lcssa4617, i32* %memmpc_, align 4, !tbaa !3
  store i32 %mpcfreeref.3.lcssa4618, i32* %mpcfree, align 4, !tbaa !3
  %845 = load i32** %nodempc, align 8, !tbaa !0
  %846 = bitcast i32* %845 to i8*
  %mul2027 = mul nsw i32 %memmpcref_.3.lcssa4617, 3
  %conv2028 = sext i32 %mul2027 to i64
  %mul2029 = shl nsw i64 %conv2028, 2
  %call2030 = call i8* @realloc(i8* %846, i64 %mul2029) #5
  %847 = bitcast i8* %call2030 to i32*
  store i32* %847, i32** %nodempc, align 8, !tbaa !0
  %cmp20334075 = icmp sgt i32 %memmpcref_.3.lcssa4617, 0
  br i1 %cmp20334075, label %for.body2035, label %for.end2042

for.body2035:                                     ; preds = %if.then2026, %for.body2035
  %indvars.iv4374 = phi i64 [ %indvars.iv.next4375, %for.body2035 ], [ 0, %if.then2026 ]
  %arrayidx2037 = getelementptr inbounds i32* %nodempcref.3.lcssa4615, i64 %indvars.iv4374
  %848 = load i32* %arrayidx2037, align 4, !tbaa !3
  %arrayidx2039 = getelementptr inbounds i32* %847, i64 %indvars.iv4374
  store i32 %848, i32* %arrayidx2039, align 4, !tbaa !3
  %indvars.iv.next4375 = add i64 %indvars.iv4374, 1
  %849 = trunc i64 %indvars.iv.next4375 to i32
  %cmp2033 = icmp slt i32 %849, %mul2027
  br i1 %cmp2033, label %for.body2035, label %for.end2042

for.end2042:                                      ; preds = %for.body2035, %if.then2026
  %850 = load double** %coefmpc, align 8, !tbaa !0
  %851 = bitcast double* %850 to i8*
  %conv2043 = sext i32 %memmpcref_.3.lcssa4617 to i64
  %mul2044 = shl nsw i64 %conv2043, 3
  %call2045 = call i8* @realloc(i8* %851, i64 %mul2044) #5
  %852 = bitcast i8* %call2045 to double*
  store double* %852, double** %coefmpc, align 8, !tbaa !0
  br i1 %cmp20334075, label %for.body2049, label %for.end2056

for.body2049:                                     ; preds = %for.end2042, %for.body2049
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body2049 ], [ 0, %for.end2042 ]
  %arrayidx2051 = getelementptr inbounds double* %coefmpcref.3.lcssa4614, i64 %indvars.iv
  %853 = load double* %arrayidx2051, align 8, !tbaa !4
  %arrayidx2053 = getelementptr inbounds double* %852, i64 %indvars.iv
  store double %853, double* %arrayidx2053, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %memmpcref_.3.lcssa4617
  br i1 %exitcond, label %for.end2056, label %for.body2049

for.end2056:                                      ; preds = %for.body2049, %for.end2042
  %854 = bitcast i32* %nodempcref.3.lcssa4615 to i8*
  call void @free(i8* %854) #5
  %855 = bitcast double* %coefmpcref.3.lcssa4614 to i8*
  call void @free(i8* %855) #5
  %.pre4576 = load i32* %icascade, align 4, !tbaa !3
  br label %if.end2057

if.end2057:                                       ; preds = %for.end2056, %if.end2023
  %856 = phi i32 [ %.pre4576, %for.end2056 ], [ %844, %if.end2023 ]
  %857 = load i32* %memmpc_, align 4, !tbaa !3
  store i32 %857, i32* %mpcinfo, align 4, !tbaa !3
  %858 = load i32* %mpcfree, align 4, !tbaa !3
  store i32 %858, i32* %arrayidx26, align 4, !tbaa !3
  store i32 %856, i32* %arrayidx27, align 4, !tbaa !3
  %859 = load i32* %maxlenmpc, align 4, !tbaa !3
  store i32 %859, i32* %arrayidx28, align 4, !tbaa !3
  %860 = load i32** %nodempc, align 8, !tbaa !0
  store i32* %860, i32** %nodempcp, align 8, !tbaa !0
  %861 = load double** %coefmpc, align 8, !tbaa !0
  store double* %861, double** %coefmpcp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #1

; Function Attrs: optsize
declare void @envtemp_(i32*, i32*, i32*, i32*, i8*, i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: optsize
declare i32 @strcmp1(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @radflowload_(i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, i32*, i8*, i32*, double*, i8*, i32*, i32*, double*, double*, i32*, i32*, i32*, double*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, i32*) #1

; Function Attrs: optsize
declare void @nonlinmpc_(double*, double*, i32*, i32*, double*, i8*, i32*, i32*, i32*, i32*, double*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*) #1

; Function Attrs: optsize
declare void @remastruct(i32*, double**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, double**, double**, double**, double**, double**, double**, double**, double**, double**, i32*) #1

; Function Attrs: optsize
declare void @results_(double*, i32*, i32*, i32*, i8*, i32*, double*, double*, i32*, i32*, i32*, double*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, i32*, i32*, double*, i32*, double*, double*, i32*, double*, i32*, i8*, i8*, double*, double*, i32*, double*, double*, i32*, i32*, double*, i32*, i32*, double*, double*, i32*, i32*, double*, i32*, i32*, i32*, double*, i8*, i32*, i32*, double*, i32*, double*, double*, double*, double*, double*, double*, i32*, double*, i32*, double*, double*, double*, i32*, double*, i8*, i32*, i32*, i32*, i32*, i32*, double*, double*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare void @mafillsm_(double*, i32*, i32*, i32*, i8*, i32*, i32*, i32*, double*, i32*, i32*, i32*, double*, i32*, i32*, i32*, double*, i32*, i32*, i8*, double*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, i32*, i32*, double*, i32*, double*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, double*, double*, double*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, double*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, i32*, double*, i32*) #1

; Function Attrs: optsize
declare void @out_(double*, i32*, i32*, i32*, i8*, i32*, double*, double*, i32*, i32*, i32*, i8*, double*, double*, double*, double*, double*, i32*, i8*, double*, double*, i32*, i32*, i32*, i32*, double*, i32*, i8*) #1

; Function Attrs: optsize
declare void @stop_(...) #1

; Function Attrs: optsize
declare void @tempload_(double*, double*, double*, i32*, i32*, double*, double*, double*, i32*, i32*, double*, double*, double*, i32*, double*, double*, double*, i32*, double*, double*, double*, i32*, i32*, double*, i32*, i32*, double*, double*, double*, double*, double*, i32*, i32*, double*, double*, double*, i32*, i32*, double*, double*, double*, i32*, i32*) #1

; Function Attrs: optsize
declare void @rhs_(double*, i32*, i32*, i32*, i8*, i32*, i32*, i32*, double*, i32*, i32*, i32*, double*, i32*, i32*, i8*, double*, i32*, double*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, i32*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, i32*, i32*, double*, i32*, double*, double*, i32*, double*, i32*, double*, i32*, i32*, double*, i32*, double*, i32*, i32*) #1

; Function Attrs: optsize
declare void @spooles(double*, double*, double*, i32*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare void @preiter(double*, double**, double*, i32**, i32**, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: optsize
declare void @op_(i32*, double*, double*, double*, double*, double*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare void @writesummary_(i32*, i32*, i32*, i32*, double*, double*, double*) #1

; Function Attrs: nounwind optsize readnone
declare double @ceil(double) #3

; Function Attrs: nounwind optsize
declare double @log(double) #2

; Function Attrs: optsize
declare void @frdcyc(double*, i32*, i32*, i32*, i8*, i32, i32*, double*, double*, i32*, i32*, i32*, i8*, i32, double*, double*, double*, double*, double*, i32*, i8*, i32, i32*, double*, i32*, double*, double*, i32*, i32*, i32*, i32*, double*, i32*, i8*, i32) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
