; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/profile.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str2 = private unnamed_addr constant [5 x i8] c"E   \00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"ENER\00", align 1
@str = private unnamed_addr constant [56 x i8] c"LU-decomposition of the system of equations (profiler)\0A\00"
@str4 = private unnamed_addr constant [33 x i8] c"solving the system of equations\0A\00"

; Function Attrs: nounwind optsize uwtable
define void @profile(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32 %lakonLen, i32* %ne, i32* %nodeboun, i32* %ndirboun, double* %xboun, i32* %nboun, i32* %ipompc, i32* %nodempc, double* %coefmpc, i8* %labmpc, i32 %labmpcLen, i32* %nmpc, i32* %nodeforc, i32* %ndirforc, double* %xforc, i32* %nforc, i32* %nelemload, i8* %sideload, i32 %sideloadLen, double* %xload, i32* %nload, double* %p1, double* %p2, double* %om, double* %bodyf, double* nocapture %ad, double* nocapture %au, double* nocapture %b, i32* %nactdof, i32* %jp, i32* %jq, i32* %neq, i32* %nmethod, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t0, double* %t1, double* %t1old, i32* %ithermal, double* %prestr, i32* %iprestr, double* %vold, i32* %iperturb, double* %sti, i32* %nodeprint, i32* %noprint, i32* %nelemprint, i32* %neprint, i32* %kode, i32* nocapture %nsky, i8* %noelplab, i32 %noelplabLen, i8* %nodeflab, i32 %nodeflabLen, double* %eei, i32* %iexpl, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, double* %xstate, i32* %npmat_, i8* %matname, i32 %matnameLen, i32* %mint_, i32* %ncmat_, i32* %nstate_, i32* %ns, double* %csab, i32* %nkon, double* %ener, double* %xbounold, double* %xforcold, double* %xloadold, double* %omold, double* %bodyfold, i8* nocapture %amname, i32 %amnameLen, double* %amta, i32* %namta, i32* %nam, i32* %iamforc, i32* %iamload, i32* %iamom, i32* %iambodyf, i32* %iamt1, i32* %iamboun, double* %ttime, i8* %output, i32 %outputLen) #0 {
entry:
  %bodyfold489 = bitcast double* %bodyfold to i8*
  %flg = alloca i32, align 4
  %iout = alloca i32, align 4
  %ielas = alloca i32, align 4
  %icmd = alloca i32, align 4
  %iinc = alloca i32, align 4
  %istep = alloca i32, align 4
  %mass = alloca i32, align 4
  %stiffness = alloca i32, align 4
  %buckling = alloca i32, align 4
  %rhs = alloca i32, align 4
  %intscheme = alloca i32, align 4
  %nflow = alloca i32, align 4
  %energy = alloca double, align 8
  %vmax = alloca double, align 8
  %qa = alloca double, align 8
  %omact = alloca double, align 8
  %bodyfact = alloca [3 x double], align 16
  %bodyfact490 = bitcast [3 x double]* %bodyfact to i8*
  %bet = alloca double, align 8
  %gam = alloca double, align 8
  %dtime = alloca double, align 8
  %time = alloca double, align 8
  %reltime = alloca double, align 8
  store i32 0, i32* %flg, align 4, !tbaa !0
  store i32 1, i32* %iout, align 4, !tbaa !0
  store i32 1, i32* %iinc, align 4, !tbaa !0
  store i32 1, i32* %istep, align 4, !tbaa !0
  store i32 0, i32* %mass, align 4, !tbaa !0
  store i32 1, i32* %stiffness, align 4, !tbaa !0
  store i32 0, i32* %buckling, align 4, !tbaa !0
  store i32 1, i32* %rhs, align 4, !tbaa !0
  store i32 0, i32* %intscheme, align 4, !tbaa !0
  store double 1.000000e+00, double* %time, align 8, !tbaa !3
  store double 1.000000e+00, double* %reltime, align 8, !tbaa !3
  %0 = load i32* %nboun, align 4, !tbaa !0
  %conv = sext i32 %0 to i64
  %call = call i8* @u_calloc(i64 %conv, i64 8) #4
  %1 = bitcast i8* %call to double*
  %2 = load i32* %nboun, align 4, !tbaa !0
  %cmp487 = icmp sgt i32 %2, 0
  br i1 %cmp487, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv509 = phi i64 [ %indvars.iv.next510, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %xbounold, i64 %indvars.iv509
  %3 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx3 = getelementptr inbounds double* %1, i64 %indvars.iv509
  store double %3, double* %arrayidx3, align 8, !tbaa !3
  %indvars.iv.next510 = add i64 %indvars.iv509, 1
  %4 = trunc i64 %indvars.iv.next510 to i32
  %cmp = icmp slt i32 %4, %2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %5 = load i32* %nforc, align 4, !tbaa !0
  %conv4 = sext i32 %5 to i64
  %call5 = call i8* @u_calloc(i64 %conv4, i64 8) #4
  %6 = bitcast i8* %call5 to double*
  %7 = load i32* %nload, align 4, !tbaa !0
  %mul = shl nsw i32 %7, 1
  %conv6 = sext i32 %mul to i64
  %call7 = call i8* @u_calloc(i64 %conv6, i64 8) #4
  %8 = bitcast i8* %call7 to double*
  %9 = load i32* %ithermal, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %9, 1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %10 = load i32* %nk, align 4, !tbaa !0
  %conv10 = sext i32 %10 to i64
  %call11 = call i8* @u_calloc(i64 %conv10, i64 8) #4
  %11 = bitcast i8* %call11 to double*
  %12 = load i32* %nk, align 4, !tbaa !0
  %cmp13485 = icmp sgt i32 %12, 0
  br i1 %cmp13485, label %for.body15, label %if.end

for.body15:                                       ; preds = %if.then, %for.body15
  %indvars.iv507 = phi i64 [ %indvars.iv.next508, %for.body15 ], [ 0, %if.then ]
  %arrayidx17 = getelementptr inbounds double* %t1old, i64 %indvars.iv507
  %13 = load double* %arrayidx17, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds double* %11, i64 %indvars.iv507
  store double %13, double* %arrayidx19, align 8, !tbaa !3
  %indvars.iv.next508 = add i64 %indvars.iv507, 1
  %14 = trunc i64 %indvars.iv.next508 to i32
  %cmp13 = icmp slt i32 %14, %12
  br i1 %cmp13, label %for.body15, label %if.end

if.end:                                           ; preds = %if.then, %for.body15, %for.end
  %t1act.0 = phi double* [ null, %for.end ], [ %11, %for.body15 ], [ %11, %if.then ]
  %15 = load i32* %nam, align 4, !tbaa !0
  %conv23 = sext i32 %15 to i64
  %call24 = call i8* @u_calloc(i64 %conv23, i64 8) #4
  %16 = bitcast i8* %call24 to double*
  %arraydecay = getelementptr inbounds [3 x double]* %bodyfact, i64 0, i64 0
  call void @tempload_(double* %xforcold, double* %xforc, double* %6, i32* %iamforc, i32* %nforc, double* %xloadold, double* %xload, double* %8, i32* %iamload, i32* %nload, double* %omold, double* %om, double* %omact, i32* %iamom, double* %bodyfold, double* %bodyf, double* %arraydecay, i32* %iambodyf, double* %t1old, double* %t1, double* %t1act.0, i32* %iamt1, i32* %nk, double* %amta, i32* %namta, i32* %nam, double* %16, double* %time, double* %reltime, double* %ttime, double* %dtime, i32* %ithermal, i32* %nmethod, double* %xbounold, double* %xboun, double* %1, i32* %iamboun, i32* %nboun, double* null, double* null, double* null, i32* null, i32* %nflow) #4
  %17 = load double* %ttime, align 8, !tbaa !3
  %add = fadd double %17, 1.000000e+00
  store double %add, double* %ttime, align 8, !tbaa !3
  %18 = load i32* %neq, align 4, !tbaa !0
  %conv25 = sext i32 %18 to i64
  %call26 = call i8* @u_calloc(i64 %conv25, i64 8) #4
  %19 = bitcast i8* %call26 to double*
  %20 = load i32* %nsky, align 4, !tbaa !0
  %conv27 = sext i32 %20 to i64
  %call28 = call i8* @u_calloc(i64 %conv27, i64 8) #4
  %21 = bitcast i8* %call28 to double*
  %22 = load i32* %neq, align 4, !tbaa !0
  %conv29 = sext i32 %22 to i64
  %call30 = call i8* @u_calloc(i64 %conv29, i64 8) #4
  %23 = bitcast i8* %call30 to double*
  call void @mafillpr_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, i32* %nodeboun, i32* %ndirboun, double* %1, i32* %nboun, i32* %ipompc, i32* %nodempc, double* %coefmpc, i32* %nmpc, i32* %nodeforc, i32* %ndirforc, double* %6, i32* %nforc, i32* %nelemload, i8* %sideload, double* %8, i32* %nload, double* %p1, double* %p2, double* %omact, double* %arraydecay, double* %19, double* %21, double* %23, i32* %nactdof, i32* %jp, i32* %jq, i32* %neq, i32* %nmethod, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t0, double* %t1act.0, i32* %ithermal, double* %prestr, i32* %iprestr, double* %vold, i32* %iperturb, double* null, double* %sti, double* %eei, i32* %iexpl, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, double* null, i32* %npmat_, double* %dtime, i8* %matname, i32* %mint_, i32* %ncmat_, i32* %mass, i32* %stiffness, i32* %buckling, i32* %rhs, i32* %intscheme) #4
  %24 = load i32* %nmethod, align 4, !tbaa !0
  %cmp32 = icmp eq i32 %24, 1
  br i1 %cmp32, label %if.then34, label %if.else144

if.then34:                                        ; preds = %if.end
  %puts = call i32 @puts(i8* getelementptr inbounds ([56 x i8]* @str, i64 0, i64 0))
  call void @datri_(double* %21, double* %21, double* %19, i32* %jp, i32* %neq, i32* %flg) #4
  %puts467 = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str4, i64 0, i64 0))
  call void @dasol_(double* %21, double* %21, double* %19, double* %23, i32* %jp, i32* %neq, double* %energy) #4
  call void @free(i8* %call28) #4
  call void @free(i8* %call26) #4
  %25 = load i32* %nk, align 4, !tbaa !0
  %mul37 = shl nsw i32 %25, 2
  %conv38 = sext i32 %mul37 to i64
  %call39 = call i8* @u_calloc(i64 %conv38, i64 8) #4
  %26 = bitcast i8* %call39 to double*
  %27 = load i32* %nk, align 4, !tbaa !0
  %mul40 = shl nsw i32 %27, 2
  %conv41 = sext i32 %mul40 to i64
  %call42 = call i8* @u_calloc(i64 %conv41, i64 8) #4
  %28 = bitcast i8* %call42 to double*
  %29 = load i32* %nk, align 4, !tbaa !0
  %mul43 = mul nsw i32 %29, 6
  %conv44 = sext i32 %mul43 to i64
  %call45 = call i8* @u_calloc(i64 %conv44, i64 8) #4
  %30 = bitcast i8* %call45 to double*
  %31 = load i32* %nk, align 4, !tbaa !0
  %conv46 = sext i32 %31 to i64
  %call47 = call i8* @u_calloc(i64 %conv46, i64 4) #4
  %32 = bitcast i8* %call47 to i32*
  %33 = load i32* %mint_, align 4, !tbaa !0
  %mul48 = mul nsw i32 %33, 6
  %34 = load i32* %ne, align 4, !tbaa !0
  %mul49 = mul nsw i32 %mul48, %34
  %conv50 = sext i32 %mul49 to i64
  %call51 = call i8* @u_calloc(i64 %conv50, i64 8) #4
  %35 = bitcast i8* %call51 to double*
  %arrayidx52 = getelementptr inbounds i8* %nodeflab, i64 12
  %call53 = call i32 @strcmp1(i8* %arrayidx52, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #4
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end60

if.then56:                                        ; preds = %if.then34
  %36 = load i32* %nk, align 4, !tbaa !0
  %mul57 = mul nsw i32 %36, 6
  %conv58 = sext i32 %mul57 to i64
  %call59 = call i8* @u_calloc(i64 %conv58, i64 8) #4
  %37 = bitcast i8* %call59 to double*
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.then34
  %een.0 = phi double* [ %37, %if.then56 ], [ null, %if.then34 ]
  %arrayidx61 = getelementptr inbounds i8* %nodeflab, i64 24
  %call62 = call i32 @strcmp1(i8* %arrayidx61, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end60
  %38 = load i32* %nk, align 4, !tbaa !0
  %conv66 = sext i32 %38 to i64
  %call67 = call i8* @u_calloc(i64 %conv66, i64 8) #4
  %39 = bitcast i8* %call67 to double*
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end60
  %enern.0 = phi double* [ %39, %if.then65 ], [ null, %if.end60 ]
  %call70 = call i32 @strcmp1(i8* %arrayidx61, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end68
  %arrayidx73 = getelementptr inbounds i8* %noelplab, i64 24
  %call74 = call i32 @strcmp1(i8* %arrayidx73, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.end89

if.then77:                                        ; preds = %lor.lhs.false, %if.end68
  %40 = load i32* %mint_, align 4, !tbaa !0
  %mul78 = mul nsw i32 %40, 6
  %41 = load i32* %ne, align 4, !tbaa !0
  %mul79 = mul nsw i32 %mul78, %41
  %conv80 = sext i32 %mul79 to i64
  %call81 = call i8* @u_calloc(i64 %conv80, i64 8) #4
  %42 = bitcast i8* %call81 to double*
  %43 = load i32* %mint_, align 4, !tbaa !0
  %mul82 = mul nsw i32 %43, 6
  %44 = load i32* %ne, align 4, !tbaa !0
  %mul83 = mul nsw i32 %mul82, %44
  %conv84 = sext i32 %mul83 to i64
  %call85 = call i8* @u_calloc(i64 %conv84, i64 8) #4
  %45 = bitcast i8* %call85 to double*
  %46 = load i32* %mint_, align 4, !tbaa !0
  %47 = load i32* %ne, align 4, !tbaa !0
  %mul86 = mul nsw i32 %47, %46
  %conv87 = sext i32 %mul86 to i64
  %call88 = call i8* @u_calloc(i64 %conv87, i64 8) #4
  %48 = bitcast i8* %call88 to double*
  br label %if.end89

if.end89:                                         ; preds = %if.then77, %lor.lhs.false
  %stiini.0 = phi double* [ %45, %if.then77 ], [ null, %lor.lhs.false ]
  %eeiini.0 = phi double* [ %42, %if.then77 ], [ null, %lor.lhs.false ]
  %enerini.0 = phi double* [ %48, %if.then77 ], [ null, %lor.lhs.false ]
  call void @results_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, double* %26, double* %30, i32* %32, i32* %nelemprint, i32* %neprint, double* %35, double* %elcon, i32* %nelcon, double* %rhcon, i32* %nrhcon, double* %alcon, i32* %nalcon, double* %alzero, i32* %ielmat, i32* %ielorien, i32* %norien, double* %orab, i32* %ntmat, double* %t0, double* %t1, i32* %ithermal, double* %prestr, i32* %iprestr, i8* %noelplab, i8* %nodeflab, double* %eei, double* %een.0, i32* %iperturb, double* null, double* %28, i32* %nactdof, i32* %iout, double* %qa, i32* %noprint, i32* %nodeprint, double* %vold, double* %23, i32* %nodeboun, i32* %ndirboun, double* %xboun, i32* %nboun, i32* %ipompc, i32* %nodempc, double* %coefmpc, i8* %labmpc, i32* %nmpc, i32* %nmethod, double* %vmax, i32* %neq, double* null, double* null, double* %bet, double* %gam, double* %dtime, double* %plicon, i32* %nplicon, double* %plkcon, i32* %nplkcon, double* null, double* null, double* %xstate, i32* %npmat_, double* null, i8* %matname, i32* %mint_, i32* %ielas, i32* %icmd, i32* %ncmat_, i32* %nstate_, double* %stiini.0, double* null, i32* %ikboun, i32* %ilboun, double* %ener, double* %enern.0, double* %sti, double* null, double* %eeiini.0, double* %enerini.0, double* null, i32* null) #4
  call void @free(i8* %call30) #4
  %call91 = call i32 @strcmp1(i8* %arrayidx61, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp92 = icmp eq i32 %call91, 0
  br i1 %cmp92, label %if.then99, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %if.end89
  %arrayidx95 = getelementptr inbounds i8* %noelplab, i64 24
  %call96 = call i32 @strcmp1(i8* %arrayidx95, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp97 = icmp eq i32 %call96, 0
  br i1 %cmp97, label %if.then99, label %for.cond101.preheader

if.then99:                                        ; preds = %lor.lhs.false94, %if.end89
  %49 = bitcast double* %eeiini.0 to i8*
  call void @free(i8* %49) #4
  %50 = bitcast double* %stiini.0 to i8*
  call void @free(i8* %50) #4
  %51 = bitcast double* %enerini.0 to i8*
  call void @free(i8* %51) #4
  br label %for.cond101.preheader

for.cond101.preheader:                            ; preds = %if.then99, %lor.lhs.false94
  %52 = load i32* %nk, align 4, !tbaa !0
  %cmp103483 = icmp sgt i32 %52, 0
  br i1 %cmp103483, label %for.body105.lr.ph, label %for.cond113.preheader

for.body105.lr.ph:                                ; preds = %for.cond101.preheader
  %mul102 = shl nsw i32 %52, 2
  br label %for.body105

for.cond113.preheader:                            ; preds = %for.body105, %for.cond101.preheader
  %53 = load i32* %mint_, align 4, !tbaa !0
  %mul114478 = mul nsw i32 %53, 6
  %54 = load i32* %ne, align 4, !tbaa !0
  %mul115479 = mul nsw i32 %mul114478, %54
  %cmp116480 = icmp sgt i32 %mul115479, 0
  br i1 %cmp116480, label %for.body118, label %for.end125

for.body105:                                      ; preds = %for.body105.lr.ph, %for.body105
  %indvars.iv504 = phi i64 [ 0, %for.body105.lr.ph ], [ %indvars.iv.next505, %for.body105 ]
  %arrayidx107 = getelementptr inbounds double* %26, i64 %indvars.iv504
  %55 = load double* %arrayidx107, align 8, !tbaa !3
  %arrayidx109 = getelementptr inbounds double* %vold, i64 %indvars.iv504
  store double %55, double* %arrayidx109, align 8, !tbaa !3
  %indvars.iv.next505 = add i64 %indvars.iv504, 1
  %56 = trunc i64 %indvars.iv.next505 to i32
  %cmp103 = icmp slt i32 %56, %mul102
  br i1 %cmp103, label %for.body105, label %for.cond113.preheader

for.body118:                                      ; preds = %for.cond113.preheader, %for.body118
  %indvars.iv501 = phi i64 [ %indvars.iv.next502, %for.body118 ], [ 0, %for.cond113.preheader ]
  %arrayidx120 = getelementptr inbounds double* %35, i64 %indvars.iv501
  %57 = load double* %arrayidx120, align 8, !tbaa !3
  %arrayidx122 = getelementptr inbounds double* %sti, i64 %indvars.iv501
  store double %57, double* %arrayidx122, align 8, !tbaa !3
  %indvars.iv.next502 = add i64 %indvars.iv501, 1
  %58 = trunc i64 %indvars.iv.next502 to i32
  %cmp116 = icmp slt i32 %58, %mul115479
  br i1 %cmp116, label %for.body118, label %for.end125

for.end125:                                       ; preds = %for.body118, %for.cond113.preheader
  %59 = load i32* %kode, align 4, !tbaa !0
  %inc126 = add nsw i32 %59, 1
  store i32 %inc126, i32* %kode, align 4, !tbaa !0
  %arrayidx127 = getelementptr inbounds i32* %ns, i64 4
  %60 = load i32* %arrayidx127, align 4, !tbaa !0
  %cmp128 = icmp sgt i32 %60, 1
  br i1 %cmp128, label %if.then130, label %if.else

if.then130:                                       ; preds = %for.end125
  call void @frdcyc(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32 %lakonLen, i32* %ne, double* %26, double* %30, i32* %32, i32* %nmethod, i32* %kode, i8* %nodeflab, i32 %nodeflabLen, double* %een.0, double* %t1, double* %28, double* %ttime, double* null, i32* %ielmat, i8* %matname, i32 %matnameLen, i32* %ns, double* %csab, i32* %nkon, double* %enern.0, double* null, i32* %nstate_, i32* %istep, i32* %iinc, i32* %iperturb, double* %ener, i32* %mint_, i8* %output, i32 %outputLen) #4
  br label %if.end131

if.else:                                          ; preds = %for.end125
  call void @out_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, double* %26, double* %30, i32* %32, i32* %nmethod, i32* %kode, i8* %nodeflab, double* %een.0, double* %t1, double* %28, double* %ttime, double* null, i32* %ielmat, i8* %matname, double* %enern.0, double* null, i32* %nstate_, i32* %istep, i32* %iinc, i32* %iperturb, double* %ener, i32* %mint_, i8* %output) #4
  br label %if.end131

if.end131:                                        ; preds = %if.else, %if.then130
  call void @free(i8* %call39) #4
  call void @free(i8* %call42) #4
  call void @free(i8* %call45) #4
  call void @free(i8* %call47) #4
  call void @free(i8* %call51) #4
  %call133 = call i32 @strcmp1(i8* %arrayidx52, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #4
  %cmp134 = icmp eq i32 %call133, 0
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end131
  %61 = bitcast double* %een.0 to i8*
  call void @free(i8* %61) #4
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end131
  %call139 = call i32 @strcmp1(i8* %arrayidx61, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp140 = icmp eq i32 %call139, 0
  br i1 %cmp140, label %if.then142, label %for.cond147.preheader

if.then142:                                       ; preds = %if.end137
  %62 = bitcast double* %enern.0 to i8*
  call void @free(i8* %62) #4
  br label %for.cond147.preheader

if.else144:                                       ; preds = %if.end
  %63 = load i32* %kode, align 4, !tbaa !0
  %inc145 = add nsw i32 %63, 1
  store i32 %inc145, i32* %kode, align 4, !tbaa !0
  call void @out_(double* %co, i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, double* null, double* null, i32* null, i32* %nmethod, i32* %kode, i8* %nodeflab, double* null, double* %t1, double* null, double* %ttime, double* null, i32* %ielmat, i8* %matname, double* null, double* null, i32* %nstate_, i32* %istep, i32* %iinc, i32* %iperturb, double* %ener, i32* %mint_, i8* %output) #4
  br label %for.cond147.preheader

for.cond147.preheader:                            ; preds = %if.end137, %if.then142, %if.else144
  %64 = load i32* %nboun, align 4, !tbaa !0
  %cmp148476 = icmp sgt i32 %64, 0
  br i1 %cmp148476, label %for.body150, label %for.cond158.preheader

for.cond158.preheader:                            ; preds = %for.body150, %for.cond147.preheader
  %65 = load i32* %nforc, align 4, !tbaa !0
  %cmp159474 = icmp sgt i32 %65, 0
  br i1 %cmp159474, label %for.body161, label %for.cond169.preheader

for.body150:                                      ; preds = %for.cond147.preheader, %for.body150
  %indvars.iv498 = phi i64 [ %indvars.iv.next499, %for.body150 ], [ 0, %for.cond147.preheader ]
  %arrayidx152 = getelementptr inbounds double* %1, i64 %indvars.iv498
  %66 = load double* %arrayidx152, align 8, !tbaa !3
  %arrayidx154 = getelementptr inbounds double* %xbounold, i64 %indvars.iv498
  store double %66, double* %arrayidx154, align 8, !tbaa !3
  %indvars.iv.next499 = add i64 %indvars.iv498, 1
  %67 = trunc i64 %indvars.iv.next499 to i32
  %cmp148 = icmp slt i32 %67, %64
  br i1 %cmp148, label %for.body150, label %for.cond158.preheader

for.cond169.preheader:                            ; preds = %for.body161, %for.cond158.preheader
  %68 = load i32* %nload, align 4, !tbaa !0
  %cmp171472 = icmp sgt i32 %68, 0
  br i1 %cmp171472, label %for.body173.lr.ph, label %for.end180

for.body173.lr.ph:                                ; preds = %for.cond169.preheader
  %mul170 = shl nsw i32 %68, 1
  br label %for.body173

for.body161:                                      ; preds = %for.cond158.preheader, %for.body161
  %indvars.iv495 = phi i64 [ %indvars.iv.next496, %for.body161 ], [ 0, %for.cond158.preheader ]
  %arrayidx163 = getelementptr inbounds double* %6, i64 %indvars.iv495
  %69 = load double* %arrayidx163, align 8, !tbaa !3
  %arrayidx165 = getelementptr inbounds double* %xforcold, i64 %indvars.iv495
  store double %69, double* %arrayidx165, align 8, !tbaa !3
  %indvars.iv.next496 = add i64 %indvars.iv495, 1
  %70 = trunc i64 %indvars.iv.next496 to i32
  %cmp159 = icmp slt i32 %70, %65
  br i1 %cmp159, label %for.body161, label %for.cond169.preheader

for.body173:                                      ; preds = %for.body173.lr.ph, %for.body173
  %indvars.iv492 = phi i64 [ 0, %for.body173.lr.ph ], [ %indvars.iv.next493, %for.body173 ]
  %arrayidx175 = getelementptr inbounds double* %8, i64 %indvars.iv492
  %71 = load double* %arrayidx175, align 8, !tbaa !3
  %arrayidx177 = getelementptr inbounds double* %xloadold, i64 %indvars.iv492
  store double %71, double* %arrayidx177, align 8, !tbaa !3
  %indvars.iv.next493 = add i64 %indvars.iv492, 1
  %72 = trunc i64 %indvars.iv.next493 to i32
  %cmp171 = icmp slt i32 %72, %mul170
  br i1 %cmp171, label %for.body173, label %for.end180

for.end180:                                       ; preds = %for.body173, %for.cond169.preheader
  %73 = load i32* %ithermal, align 4, !tbaa !0
  %cmp181 = icmp eq i32 %73, 1
  br i1 %cmp181, label %for.cond184.preheader, label %if.end195

for.cond184.preheader:                            ; preds = %for.end180
  %74 = load i32* %nk, align 4, !tbaa !0
  %cmp185469 = icmp sgt i32 %74, 0
  br i1 %cmp185469, label %for.body187, label %if.end195

for.body187:                                      ; preds = %for.cond184.preheader, %for.body187
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body187 ], [ 0, %for.cond184.preheader ]
  %arrayidx189 = getelementptr inbounds double* %t1act.0, i64 %indvars.iv
  %75 = load double* %arrayidx189, align 8, !tbaa !3
  %arrayidx191 = getelementptr inbounds double* %t1old, i64 %indvars.iv
  store double %75, double* %arrayidx191, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %76 = trunc i64 %indvars.iv.next to i32
  %cmp185 = icmp slt i32 %76, %74
  br i1 %cmp185, label %for.body187, label %if.end195

if.end195:                                        ; preds = %for.cond184.preheader, %for.body187, %for.end180
  %77 = load double* %omact, align 8, !tbaa !3
  store double %77, double* %omold, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %bodyfold489, i8* %bodyfact490, i64 24, i32 8, i1 false)
  call void @free(i8* %call) #4
  call void @free(i8* %call5) #4
  call void @free(i8* %call7) #4
  %78 = bitcast double* %t1act.0 to i8*
  call void @free(i8* %78) #4
  call void @free(i8* %call24) #4
  ret void
}

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #1

; Function Attrs: optsize
declare void @tempload_(double*, double*, double*, i32*, i32*, double*, double*, double*, i32*, i32*, double*, double*, double*, i32*, double*, double*, double*, i32*, double*, double*, double*, i32*, i32*, double*, i32*, i32*, double*, double*, double*, double*, double*, i32*, i32*, double*, double*, double*, i32*, i32*, double*, double*, double*, i32*, i32*) #1

; Function Attrs: optsize
declare void @mafillpr_(double*, i32*, i32*, i32*, i8*, i32*, i32*, i32*, double*, i32*, i32*, i32*, double*, i32*, i32*, i32*, double*, i32*, i32*, i8*, double*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, i32*, i32*, double*, i32*, double*, double*, i32*, double*, i32*, double*, i32*, double*, double*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, double*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare void @datri_(double*, double*, double*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare void @dasol_(double*, double*, double*, double*, i32*, i32*, double*) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare i32 @strcmp1(i8*, i8*) #1

; Function Attrs: optsize
declare void @results_(double*, i32*, i32*, i32*, i8*, i32*, double*, double*, i32*, i32*, i32*, double*, double*, i32*, double*, i32*, double*, i32*, double*, i32*, i32*, i32*, double*, i32*, double*, double*, i32*, double*, i32*, i8*, i8*, double*, double*, i32*, double*, double*, i32*, i32*, double*, i32*, i32*, double*, double*, i32*, i32*, double*, i32*, i32*, i32*, double*, i8*, i32*, i32*, double*, i32*, double*, double*, double*, double*, double*, double*, i32*, double*, i32*, double*, double*, double*, i32*, double*, i8*, i32*, i32*, i32*, i32*, i32*, double*, double*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*) #1

; Function Attrs: optsize
declare void @frdcyc(double*, i32*, i32*, i32*, i8*, i32, i32*, double*, double*, i32*, i32*, i32*, i8*, i32, double*, double*, double*, double*, double*, i32*, i8*, i32, i32*, double*, i32*, double*, double*, i32*, i32*, i32*, i32*, double*, i32*, i8*, i32) #1

; Function Attrs: optsize
declare void @out_(double*, i32*, i32*, i32*, i8*, i32*, double*, double*, i32*, i32*, i32*, i8*, double*, double*, double*, double*, double*, i32*, i8*, double*, double*, i32*, i32*, i32*, i32*, double*, i32*, i8*) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
