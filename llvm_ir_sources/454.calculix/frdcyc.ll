; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"U   \00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"NT  \00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"S   \00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"E   \00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"RF  \00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"PE  \00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"ENER\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"SDV \00", align 1

; Function Attrs: nounwind optsize uwtable
define void @frdcyc(double* %co, i32* %nk, i32* nocapture %kon, i32* nocapture %ipkon, i8* nocapture %lakon, i32 %lakonLen, i32* nocapture %ne, double* %v, double* %stn, i32* nocapture %inum, i32* %nmethod, i32* %kode, i8* %nodeflab, i32 %nodeflabLen, double* %een, double* nocapture %t1, double* %fn, double* %time, double* nocapture %epn, i32* nocapture %ielmat, i8* %matname, i32 %matnameLen, i32* nocapture %ns, double* %csab, i32* nocapture %nkon, double* nocapture %enern, double* nocapture %xstaten, i32* %nstate_, i32* %istep, i32* %iinc, i32* %iperturb, double* %ener, i32* %mint_, i8* %output, i32 %outputLen) #0 {
entry:
  %nkt = alloca i32, align 4
  %icntrl = alloca i32, align 4
  %net = alloca i32, align 4
  %imag = alloca i32, align 4
  %t = alloca [3 x double], align 16
  store i32 0, i32* %imag, align 4, !tbaa !0
  %0 = load i32* %nk, align 4, !tbaa !0
  %mul1 = mul nsw i32 %0, 3
  %arrayidx = getelementptr inbounds i32* %ns, i64 4
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %mul2 = mul nsw i32 %mul1, %1
  %conv = sext i32 %mul2 to i64
  %call3 = call i8* @u_calloc(i64 %conv, i64 8) #3
  %2 = bitcast i8* %call3 to double*
  %call5 = call i32 @strcmp1(i8* %nodeflab, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #3
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32* %nk, align 4, !tbaa !0
  %mul7 = shl i32 %3, 2
  %4 = load i32* %arrayidx, align 4, !tbaa !0
  %mul9 = mul nsw i32 %mul7, %4
  %conv10 = sext i32 %mul9 to i64
  %call11 = call i8* @u_calloc(i64 %conv10, i64 8) #3
  %5 = bitcast i8* %call11 to double*
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %vt.0 = phi double* [ %5, %if.then ], [ null, %entry ]
  %6 = bitcast double* %vt.0 to i8*
  %arrayidx12 = getelementptr inbounds i8* %nodeflab, i64 4
  %call13 = call i32 @strcmp1(i8* %arrayidx12, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #3
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end
  %7 = load i32* %nk, align 4, !tbaa !0
  %8 = load i32* %arrayidx, align 4, !tbaa !0
  %mul18 = mul nsw i32 %8, %7
  %conv19 = sext i32 %mul18 to i64
  %call20 = call i8* @u_calloc(i64 %conv19, i64 8) #3
  %9 = bitcast i8* %call20 to double*
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end
  %t1t.0 = phi double* [ %9, %if.then16 ], [ null, %if.end ]
  %10 = bitcast double* %t1t.0 to i8*
  %arrayidx22 = getelementptr inbounds i8* %nodeflab, i64 8
  %call23 = call i32 @strcmp1(i8* %arrayidx22, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #3
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end21
  %11 = load i32* %nk, align 4, !tbaa !0
  %mul27 = mul nsw i32 %11, 6
  %12 = load i32* %arrayidx, align 4, !tbaa !0
  %mul29 = mul nsw i32 %mul27, %12
  %conv30 = sext i32 %mul29 to i64
  %call31 = call i8* @u_calloc(i64 %conv30, i64 8) #3
  %13 = bitcast i8* %call31 to double*
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end21
  %stnt.0 = phi double* [ %13, %if.then26 ], [ null, %if.end21 ]
  %14 = bitcast double* %stnt.0 to i8*
  %arrayidx33 = getelementptr inbounds i8* %nodeflab, i64 12
  %call34 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #3
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end43

if.then37:                                        ; preds = %if.end32
  %15 = load i32* %nk, align 4, !tbaa !0
  %mul38 = mul nsw i32 %15, 6
  %16 = load i32* %arrayidx, align 4, !tbaa !0
  %mul40 = mul nsw i32 %mul38, %16
  %conv41 = sext i32 %mul40 to i64
  %call42 = call i8* @u_calloc(i64 %conv41, i64 8) #3
  %17 = bitcast i8* %call42 to double*
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %if.end32
  %eent.0 = phi double* [ %17, %if.then37 ], [ null, %if.end32 ]
  %18 = bitcast double* %eent.0 to i8*
  %arrayidx44 = getelementptr inbounds i8* %nodeflab, i64 16
  %call45 = call i32 @strcmp1(i8* %arrayidx44, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #3
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.end43
  %19 = load i32* %nk, align 4, !tbaa !0
  %mul49 = shl i32 %19, 2
  %20 = load i32* %arrayidx, align 4, !tbaa !0
  %mul51 = mul nsw i32 %mul49, %20
  %conv52 = sext i32 %mul51 to i64
  %call53 = call i8* @u_calloc(i64 %conv52, i64 8) #3
  %21 = bitcast i8* %call53 to double*
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.end43
  %fnt.0 = phi double* [ %21, %if.then48 ], [ null, %if.end43 ]
  %22 = bitcast double* %fnt.0 to i8*
  %arrayidx55 = getelementptr inbounds i8* %nodeflab, i64 20
  %call56 = call i32 @strcmp1(i8* %arrayidx55, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #3
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %if.end64

if.then59:                                        ; preds = %if.end54
  %23 = load i32* %nk, align 4, !tbaa !0
  %24 = load i32* %arrayidx, align 4, !tbaa !0
  %mul61 = mul nsw i32 %24, %23
  %conv62 = sext i32 %mul61 to i64
  %call63 = call i8* @u_calloc(i64 %conv62, i64 8) #3
  %25 = bitcast i8* %call63 to double*
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end54
  %epnt.0 = phi double* [ %25, %if.then59 ], [ null, %if.end54 ]
  %26 = bitcast double* %epnt.0 to i8*
  %arrayidx65 = getelementptr inbounds i8* %nodeflab, i64 24
  %call66 = call i32 @strcmp1(i8* %arrayidx65, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #3
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.end74

if.then69:                                        ; preds = %if.end64
  %27 = load i32* %nk, align 4, !tbaa !0
  %28 = load i32* %arrayidx, align 4, !tbaa !0
  %mul71 = mul nsw i32 %28, %27
  %conv72 = sext i32 %mul71 to i64
  %call73 = call i8* @u_calloc(i64 %conv72, i64 8) #3
  %29 = bitcast i8* %call73 to double*
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %if.end64
  %enernt.0 = phi double* [ %29, %if.then69 ], [ null, %if.end64 ]
  %30 = bitcast double* %enernt.0 to i8*
  %arrayidx75 = getelementptr inbounds i8* %nodeflab, i64 28
  %call76 = call i32 @strcmp1(i8* %arrayidx75, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #3
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.end85

if.then79:                                        ; preds = %if.end74
  %31 = load i32* %nstate_, align 4, !tbaa !0
  %32 = load i32* %nk, align 4, !tbaa !0
  %mul80 = mul nsw i32 %32, %31
  %33 = load i32* %arrayidx, align 4, !tbaa !0
  %mul82 = mul nsw i32 %mul80, %33
  %conv83 = sext i32 %mul82 to i64
  %call84 = call i8* @u_calloc(i64 %conv83, i64 8) #3
  %34 = bitcast i8* %call84 to double*
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %if.end74
  %xstatent.0 = phi double* [ %34, %if.then79 ], [ null, %if.end74 ]
  %35 = bitcast double* %xstatent.0 to i8*
  %36 = load i32* %kode, align 4, !tbaa !0
  %cmp86 = icmp eq i32 %36, 1
  br i1 %cmp86, label %if.then88, label %if.end106

if.then88:                                        ; preds = %if.end85
  %37 = load i32* %nkon, align 4, !tbaa !0
  %38 = load i32* %arrayidx, align 4, !tbaa !0
  %mul90 = mul nsw i32 %38, %37
  %conv91 = sext i32 %mul90 to i64
  %call92 = call i8* @u_calloc(i64 %conv91, i64 4) #3
  %39 = bitcast i8* %call92 to i32*
  %40 = load i32* %ne, align 4, !tbaa !0
  %41 = load i32* %arrayidx, align 4, !tbaa !0
  %mul94 = mul nsw i32 %41, %40
  %conv95 = sext i32 %mul94 to i64
  %call96 = call i8* @u_calloc(i64 %conv95, i64 4) #3
  %42 = bitcast i8* %call96 to i32*
  %43 = load i32* %ne, align 4, !tbaa !0
  %mul97 = shl i32 %43, 3
  %44 = load i32* %arrayidx, align 4, !tbaa !0
  %mul99 = mul nsw i32 %mul97, %44
  %conv100 = sext i32 %mul99 to i64
  %call101 = call i8* @u_calloc(i64 %conv100, i64 1) #3
  %45 = load i32* %ne, align 4, !tbaa !0
  %46 = load i32* %arrayidx, align 4, !tbaa !0
  %mul103 = mul nsw i32 %46, %45
  %conv104 = sext i32 %mul103 to i64
  %call105 = call i8* @u_calloc(i64 %conv104, i64 4) #3
  %47 = bitcast i8* %call105 to i32*
  br label %if.end106

if.end106:                                        ; preds = %if.then88, %if.end85
  %ipkont.0 = phi i32* [ %42, %if.then88 ], [ null, %if.end85 ]
  %ielmatt.0 = phi i32* [ %47, %if.then88 ], [ null, %if.end85 ]
  %kont.0 = phi i32* [ %39, %if.then88 ], [ null, %if.end85 ]
  %lakont.0 = phi i8* [ %call101, %if.then88 ], [ null, %if.end85 ]
  %48 = load i32* %nk, align 4, !tbaa !0
  %49 = load i32* %arrayidx, align 4, !tbaa !0
  %mul108 = mul nsw i32 %49, %48
  %conv109 = sext i32 %mul108 to i64
  %call110 = call i8* @u_calloc(i64 %conv109, i64 4) #3
  %50 = bitcast i8* %call110 to i32*
  %51 = load i32* %arrayidx, align 4, !tbaa !0
  %52 = load i32* %nk, align 4, !tbaa !0
  %mul112 = mul nsw i32 %52, %51
  store i32 %mul112, i32* %nkt, align 4, !tbaa !0
  %53 = load i32* %ne, align 4, !tbaa !0
  %mul114 = mul nsw i32 %53, %51
  store i32 %mul114, i32* %net, align 4, !tbaa !0
  %cmp1161109 = icmp sgt i32 %52, 0
  br i1 %cmp1161109, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end106
  %mul115 = mul nsw i32 %52, 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv1163 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1164, %for.body ]
  %arrayidx118 = getelementptr inbounds double* %co, i64 %indvars.iv1163
  %54 = load double* %arrayidx118, align 8, !tbaa !3
  %arrayidx120 = getelementptr inbounds double* %2, i64 %indvars.iv1163
  store double %54, double* %arrayidx120, align 8, !tbaa !3
  %indvars.iv.next1164 = add i64 %indvars.iv1163, 1
  %55 = trunc i64 %indvars.iv.next1164 to i32
  %cmp116 = icmp slt i32 %55, %mul115
  br i1 %cmp116, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end106
  %56 = load i32* %kode, align 4, !tbaa !0
  %cmp121 = icmp eq i32 %56, 1
  br i1 %cmp121, label %for.cond124.preheader, label %if.end169

for.cond124.preheader:                            ; preds = %for.end
  %57 = load i32* %nkon, align 4, !tbaa !0
  %cmp1251106 = icmp sgt i32 %57, 0
  br i1 %cmp1251106, label %for.body127, label %for.cond135.preheader

for.cond124.for.cond135.preheader_crit_edge:      ; preds = %for.body127
  %.pre1165 = load i32* %ne, align 4, !tbaa !0
  br label %for.cond135.preheader

for.cond135.preheader:                            ; preds = %for.cond124.for.cond135.preheader_crit_edge, %for.cond124.preheader
  %58 = phi i32 [ %.pre1165, %for.cond124.for.cond135.preheader_crit_edge ], [ %53, %for.cond124.preheader ]
  %cmp1361104 = icmp sgt i32 %58, 0
  br i1 %cmp1361104, label %for.body138, label %if.end169

for.body127:                                      ; preds = %for.cond124.preheader, %for.body127
  %indvars.iv1161 = phi i64 [ %indvars.iv.next1162, %for.body127 ], [ 0, %for.cond124.preheader ]
  %arrayidx129 = getelementptr inbounds i32* %kon, i64 %indvars.iv1161
  %59 = load i32* %arrayidx129, align 4, !tbaa !0
  %arrayidx131 = getelementptr inbounds i32* %kont.0, i64 %indvars.iv1161
  store i32 %59, i32* %arrayidx131, align 4, !tbaa !0
  %indvars.iv.next1162 = add i64 %indvars.iv1161, 1
  %60 = load i32* %nkon, align 4, !tbaa !0
  %61 = trunc i64 %indvars.iv.next1162 to i32
  %cmp125 = icmp slt i32 %61, %60
  br i1 %cmp125, label %for.body127, label %for.cond124.for.cond135.preheader_crit_edge

for.cond146.preheader:                            ; preds = %for.body138
  %cmp1481102 = icmp sgt i32 %63, 0
  br i1 %cmp1481102, label %for.body150, label %if.end169

for.body138:                                      ; preds = %for.cond135.preheader, %for.body138
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %for.body138 ], [ 0, %for.cond135.preheader ]
  %arrayidx140 = getelementptr inbounds i32* %ipkon, i64 %indvars.iv1159
  %62 = load i32* %arrayidx140, align 4, !tbaa !0
  %arrayidx142 = getelementptr inbounds i32* %ipkont.0, i64 %indvars.iv1159
  store i32 %62, i32* %arrayidx142, align 4, !tbaa !0
  %indvars.iv.next1160 = add i64 %indvars.iv1159, 1
  %63 = load i32* %ne, align 4, !tbaa !0
  %64 = trunc i64 %indvars.iv.next1160 to i32
  %cmp136 = icmp slt i32 %64, %63
  br i1 %cmp136, label %for.body138, label %for.cond146.preheader

for.cond158.preheader:                            ; preds = %for.body150
  %cmp1591099 = icmp sgt i32 %66, 0
  br i1 %cmp1591099, label %for.body161, label %if.end169

for.body150:                                      ; preds = %for.cond146.preheader, %for.body150
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %for.body150 ], [ 0, %for.cond146.preheader ]
  %arrayidx152 = getelementptr inbounds i8* %lakon, i64 %indvars.iv1157
  %65 = load i8* %arrayidx152, align 1, !tbaa !1
  %arrayidx154 = getelementptr inbounds i8* %lakont.0, i64 %indvars.iv1157
  store i8 %65, i8* %arrayidx154, align 1, !tbaa !1
  %indvars.iv.next1158 = add i64 %indvars.iv1157, 1
  %66 = load i32* %ne, align 4, !tbaa !0
  %mul147 = shl nsw i32 %66, 3
  %67 = trunc i64 %indvars.iv.next1158 to i32
  %cmp148 = icmp slt i32 %67, %mul147
  br i1 %cmp148, label %for.body150, label %for.cond158.preheader

for.body161:                                      ; preds = %for.cond158.preheader, %for.body161
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %for.body161 ], [ 0, %for.cond158.preheader ]
  %arrayidx163 = getelementptr inbounds i32* %ielmat, i64 %indvars.iv1155
  %68 = load i32* %arrayidx163, align 4, !tbaa !0
  %arrayidx165 = getelementptr inbounds i32* %ielmatt.0, i64 %indvars.iv1155
  store i32 %68, i32* %arrayidx165, align 4, !tbaa !0
  %indvars.iv.next1156 = add i64 %indvars.iv1155, 1
  %69 = load i32* %ne, align 4, !tbaa !0
  %70 = trunc i64 %indvars.iv.next1156 to i32
  %cmp159 = icmp slt i32 %70, %69
  br i1 %cmp159, label %for.body161, label %if.end169

if.end169:                                        ; preds = %for.cond135.preheader, %for.cond146.preheader, %for.cond158.preheader, %for.body161, %for.end
  store i32 1, i32* %icntrl, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds [3 x double]* %t, i64 0, i64 0
  call void @rectcyl_(double* %2, double* %v, double* %fn, double* %stn, double* %een, double* %csab, i32* %nk, i32* %icntrl, double* %arraydecay, i8* %nodeflab, i32* %imag) #3
  %71 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp1721095 = icmp sgt i32 %71, 1
  br i1 %cmp1721095, label %for.body174, label %for.end291

for.body174:                                      ; preds = %for.inc289, %if.end169
  %72 = phi i32 [ %71, %if.end169 ], [ %106, %for.inc289 ]
  %i.01096 = phi i32 [ 1, %if.end169 ], [ %inc290, %for.inc289 ]
  %conv175 = sitofp i32 %i.01096 to double
  %mul176 = fmul double %conv175, 2.000000e+00
  %mul177 = fmul double %mul176, 0x400921FB54442D18
  %73 = load i32* %ns, align 4, !tbaa !0
  %conv179 = sitofp i32 %73 to double
  %div = fdiv double %mul177, %conv179
  %74 = load i32* %nk, align 4, !tbaa !0
  %cmp1811084 = icmp sgt i32 %74, 0
  br i1 %cmp1811084, label %for.body183.lr.ph, label %for.end216

for.body183.lr.ph:                                ; preds = %for.body174
  %mul188 = mul nsw i32 %i.01096, 3
  %mul199 = mul nsw i32 %74, %mul188
  br label %for.body183

for.body183:                                      ; preds = %for.body183.lr.ph, %for.body183
  %indvars.iv1145 = phi i64 [ 0, %for.body183.lr.ph ], [ %indvars.iv.next1146, %for.body183 ]
  %75 = trunc i64 %indvars.iv1145 to i32
  %mul184 = mul nsw i32 %75, 3
  %idxprom185 = sext i32 %mul184 to i64
  %arrayidx186 = getelementptr inbounds double* %2, i64 %idxprom185
  %76 = load double* %arrayidx186, align 8, !tbaa !3
  %add = add nsw i32 %mul199, %mul184
  %idxprom190 = sext i32 %add to i64
  %arrayidx191 = getelementptr inbounds double* %2, i64 %idxprom190
  store double %76, double* %arrayidx191, align 8, !tbaa !3
  %add193 = add nsw i32 %mul184, 1
  %idxprom194 = sext i32 %add193 to i64
  %arrayidx195 = getelementptr inbounds double* %2, i64 %idxprom194
  %77 = load double* %arrayidx195, align 8, !tbaa !3
  %sub = fsub double %77, %div
  %add200 = add nsw i32 %mul199, %add193
  %idxprom201 = sext i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds double* %2, i64 %idxprom201
  store double %sub, double* %arrayidx202, align 8, !tbaa !3
  %add204 = add nsw i32 %mul184, 2
  %idxprom205 = sext i32 %add204 to i64
  %arrayidx206 = getelementptr inbounds double* %2, i64 %idxprom205
  %78 = load double* %arrayidx206, align 8, !tbaa !3
  %add211 = add nsw i32 %mul199, %add204
  %idxprom212 = sext i32 %add211 to i64
  %arrayidx213 = getelementptr inbounds double* %2, i64 %idxprom212
  store double %78, double* %arrayidx213, align 8, !tbaa !3
  %indvars.iv.next1146 = add i64 %indvars.iv1145, 1
  %79 = trunc i64 %indvars.iv.next1146 to i32
  %cmp181 = icmp slt i32 %79, %74
  br i1 %cmp181, label %for.body183, label %for.end216

for.end216:                                       ; preds = %for.body183, %for.body174
  %80 = load i32* %kode, align 4, !tbaa !0
  %cmp217 = icmp eq i32 %80, 1
  br i1 %cmp217, label %for.cond220.preheader, label %for.inc289

for.cond220.preheader:                            ; preds = %for.end216
  %81 = load i32* %nkon, align 4, !tbaa !0
  %cmp2211086 = icmp sgt i32 %81, 0
  br i1 %cmp2211086, label %for.body223, label %for.cond235.loopexit

for.body223:                                      ; preds = %for.cond220.preheader, %for.body223.for.body223_crit_edge
  %82 = phi i32 [ %.pre1166, %for.body223.for.body223_crit_edge ], [ %74, %for.cond220.preheader ]
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %for.body223.for.body223_crit_edge ], [ 0, %for.cond220.preheader ]
  %83 = phi i32 [ %86, %for.body223.for.body223_crit_edge ], [ %81, %for.cond220.preheader ]
  %arrayidx225 = getelementptr inbounds i32* %kon, i64 %indvars.iv1147
  %84 = load i32* %arrayidx225, align 4, !tbaa !0
  %mul226 = mul nsw i32 %82, %i.01096
  %add227 = add nsw i32 %mul226, %84
  %mul228 = mul nsw i32 %83, %i.01096
  %85 = trunc i64 %indvars.iv1147 to i32
  %add229 = add nsw i32 %mul228, %85
  %idxprom230 = sext i32 %add229 to i64
  %arrayidx231 = getelementptr inbounds i32* %kont.0, i64 %idxprom230
  store i32 %add227, i32* %arrayidx231, align 4, !tbaa !0
  %indvars.iv.next1148 = add i64 %indvars.iv1147, 1
  %86 = load i32* %nkon, align 4, !tbaa !0
  %87 = trunc i64 %indvars.iv.next1148 to i32
  %cmp221 = icmp slt i32 %87, %86
  br i1 %cmp221, label %for.body223.for.body223_crit_edge, label %for.cond235.loopexit

for.body223.for.body223_crit_edge:                ; preds = %for.body223
  %.pre1166 = load i32* %nk, align 4, !tbaa !0
  br label %for.body223

for.cond235.loopexit:                             ; preds = %for.body223, %for.cond220.preheader
  %88 = load i32* %ne, align 4, !tbaa !0
  %cmp2361088 = icmp sgt i32 %88, 0
  br i1 %cmp2361088, label %for.body238, label %for.inc289.loopexit

for.body238:                                      ; preds = %for.cond235.loopexit, %for.inc257
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %for.inc257 ], [ 0, %for.cond235.loopexit ]
  %89 = phi i32 [ %94, %for.inc257 ], [ %88, %for.cond235.loopexit ]
  %arrayidx240 = getelementptr inbounds i32* %ipkon, i64 %indvars.iv1149
  %90 = load i32* %arrayidx240, align 4, !tbaa !0
  %cmp241 = icmp sgt i32 %90, -1
  br i1 %cmp241, label %if.then243, label %if.else

if.then243:                                       ; preds = %for.body238
  %91 = load i32* %nkon, align 4, !tbaa !0
  %mul246 = mul nsw i32 %91, %i.01096
  %add247 = add nsw i32 %mul246, %90
  %mul248 = mul nsw i32 %89, %i.01096
  %92 = trunc i64 %indvars.iv1149 to i32
  %add249 = add nsw i32 %mul248, %92
  %idxprom250 = sext i32 %add249 to i64
  %arrayidx251 = getelementptr inbounds i32* %ipkont.0, i64 %idxprom250
  store i32 %add247, i32* %arrayidx251, align 4, !tbaa !0
  br label %for.inc257

if.else:                                          ; preds = %for.body238
  %mul252 = mul nsw i32 %89, %i.01096
  %93 = trunc i64 %indvars.iv1149 to i32
  %add253 = add nsw i32 %mul252, %93
  %idxprom254 = sext i32 %add253 to i64
  %arrayidx255 = getelementptr inbounds i32* %ipkont.0, i64 %idxprom254
  store i32 -1, i32* %arrayidx255, align 4, !tbaa !0
  br label %for.inc257

for.inc257:                                       ; preds = %if.then243, %if.else
  %indvars.iv.next1150 = add i64 %indvars.iv1149, 1
  %94 = load i32* %ne, align 4, !tbaa !0
  %95 = trunc i64 %indvars.iv.next1150 to i32
  %cmp236 = icmp slt i32 %95, %94
  br i1 %cmp236, label %for.body238, label %for.cond260.loopexit

for.cond260.loopexit:                             ; preds = %for.inc257
  %cmp2621091 = icmp sgt i32 %94, 0
  br i1 %cmp2621091, label %for.body264.lr.ph, label %for.inc289.loopexit

for.body264.lr.ph:                                ; preds = %for.cond260.loopexit
  %mul267 = shl i32 %i.01096, 3
  br label %for.body264

for.body264:                                      ; preds = %for.body264.lr.ph, %for.body264
  %indvars.iv1151 = phi i64 [ 0, %for.body264.lr.ph ], [ %indvars.iv.next1152, %for.body264 ]
  %96 = phi i32 [ %94, %for.body264.lr.ph ], [ %99, %for.body264 ]
  %arrayidx266 = getelementptr inbounds i8* %lakon, i64 %indvars.iv1151
  %97 = load i8* %arrayidx266, align 1, !tbaa !1
  %mul268 = mul nsw i32 %mul267, %96
  %98 = trunc i64 %indvars.iv1151 to i32
  %add269 = add nsw i32 %mul268, %98
  %idxprom270 = sext i32 %add269 to i64
  %arrayidx271 = getelementptr inbounds i8* %lakont.0, i64 %idxprom270
  store i8 %97, i8* %arrayidx271, align 1, !tbaa !1
  %indvars.iv.next1152 = add i64 %indvars.iv1151, 1
  %99 = load i32* %ne, align 4, !tbaa !0
  %mul261 = shl nsw i32 %99, 3
  %100 = trunc i64 %indvars.iv.next1152 to i32
  %cmp262 = icmp slt i32 %100, %mul261
  br i1 %cmp262, label %for.body264, label %for.cond275.loopexit

for.cond275.loopexit:                             ; preds = %for.body264
  %cmp2761093 = icmp sgt i32 %99, 0
  br i1 %cmp2761093, label %for.body278, label %for.inc289.loopexit

for.body278:                                      ; preds = %for.cond275.loopexit, %for.body278
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %for.body278 ], [ 0, %for.cond275.loopexit ]
  %101 = phi i32 [ %104, %for.body278 ], [ %99, %for.cond275.loopexit ]
  %arrayidx280 = getelementptr inbounds i32* %ielmat, i64 %indvars.iv1153
  %102 = load i32* %arrayidx280, align 4, !tbaa !0
  %mul281 = mul nsw i32 %101, %i.01096
  %103 = trunc i64 %indvars.iv1153 to i32
  %add282 = add nsw i32 %mul281, %103
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds i32* %ielmatt.0, i64 %idxprom283
  store i32 %102, i32* %arrayidx284, align 4, !tbaa !0
  %indvars.iv.next1154 = add i64 %indvars.iv1153, 1
  %104 = load i32* %ne, align 4, !tbaa !0
  %105 = trunc i64 %indvars.iv.next1154 to i32
  %cmp276 = icmp slt i32 %105, %104
  br i1 %cmp276, label %for.body278, label %for.inc289.loopexit

for.inc289.loopexit:                              ; preds = %for.cond235.loopexit, %for.cond260.loopexit, %for.body278, %for.cond275.loopexit
  %.pre = load i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc289

for.inc289:                                       ; preds = %for.inc289.loopexit, %for.end216
  %106 = phi i32 [ %.pre, %for.inc289.loopexit ], [ %72, %for.end216 ]
  %inc290 = add nsw i32 %i.01096, 1
  %cmp172 = icmp slt i32 %inc290, %106
  br i1 %cmp172, label %for.body174, label %for.end291

for.end291:                                       ; preds = %for.inc289, %if.end169
  store i32 -1, i32* %icntrl, align 4, !tbaa !0
  call void @rectcyl_(double* %2, double* %vt.0, double* %fnt.0, double* %stnt.0, double* %eent.0, double* %csab, i32* %nkt, i32* %icntrl, double* %arraydecay, i8* %nodeflab, i32* %imag) #3
  %107 = load i32* %nk, align 4, !tbaa !0
  %cmp2941082 = icmp sgt i32 %107, 0
  br i1 %cmp2941082, label %for.body296, label %for.end303

for.body296:                                      ; preds = %for.end291, %for.body296
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %for.body296 ], [ 0, %for.end291 ]
  %arrayidx298 = getelementptr inbounds i32* %inum, i64 %indvars.iv1143
  %108 = load i32* %arrayidx298, align 4, !tbaa !0
  %arrayidx300 = getelementptr inbounds i32* %50, i64 %indvars.iv1143
  store i32 %108, i32* %arrayidx300, align 4, !tbaa !0
  %indvars.iv.next1144 = add i64 %indvars.iv1143, 1
  %109 = load i32* %nk, align 4, !tbaa !0
  %110 = trunc i64 %indvars.iv.next1144 to i32
  %cmp294 = icmp slt i32 %110, %109
  br i1 %cmp294, label %for.body296, label %for.end303

for.end303:                                       ; preds = %for.body296, %for.end291
  store i32 2, i32* %icntrl, align 4, !tbaa !0
  call void @rectcyl_(double* %co, double* %v, double* %fn, double* %stn, double* %een, double* %csab, i32* %nk, i32* %icntrl, double* %arraydecay, i8* %nodeflab, i32* %imag) #3
  %call306 = call i32 @strcmp1(i8* %nodeflab, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #3
  %cmp307 = icmp eq i32 %call306, 0
  br i1 %cmp307, label %for.cond310.preheader, label %if.end322

for.cond310.preheader:                            ; preds = %for.end303
  %111 = load i32* %nk, align 4, !tbaa !0
  %cmp3121080 = icmp sgt i32 %111, 0
  br i1 %cmp3121080, label %for.body314.lr.ph, label %if.end322

for.body314.lr.ph:                                ; preds = %for.cond310.preheader
  %mul311 = shl nsw i32 %111, 2
  br label %for.body314

for.body314:                                      ; preds = %for.body314.lr.ph, %for.body314
  %indvars.iv1141 = phi i64 [ 0, %for.body314.lr.ph ], [ %indvars.iv.next1142, %for.body314 ]
  %arrayidx316 = getelementptr inbounds double* %v, i64 %indvars.iv1141
  %112 = load double* %arrayidx316, align 8, !tbaa !3
  %arrayidx318 = getelementptr inbounds double* %vt.0, i64 %indvars.iv1141
  store double %112, double* %arrayidx318, align 8, !tbaa !3
  %indvars.iv.next1142 = add i64 %indvars.iv1141, 1
  %113 = trunc i64 %indvars.iv.next1142 to i32
  %cmp312 = icmp slt i32 %113, %mul311
  br i1 %cmp312, label %for.body314, label %if.end322

if.end322:                                        ; preds = %for.cond310.preheader, %for.body314, %for.end303
  %call324 = call i32 @strcmp1(i8* %arrayidx12, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #3
  %cmp325 = icmp eq i32 %call324, 0
  br i1 %cmp325, label %for.cond328.preheader, label %if.end339

for.cond328.preheader:                            ; preds = %if.end322
  %114 = load i32* %nk, align 4, !tbaa !0
  %cmp3291077 = icmp sgt i32 %114, 0
  br i1 %cmp3291077, label %for.body331, label %if.end339

for.body331:                                      ; preds = %for.cond328.preheader, %for.body331
  %indvars.iv1139 = phi i64 [ %indvars.iv.next1140, %for.body331 ], [ 0, %for.cond328.preheader ]
  %arrayidx333 = getelementptr inbounds double* %t1, i64 %indvars.iv1139
  %115 = load double* %arrayidx333, align 8, !tbaa !3
  %arrayidx335 = getelementptr inbounds double* %t1t.0, i64 %indvars.iv1139
  store double %115, double* %arrayidx335, align 8, !tbaa !3
  %indvars.iv.next1140 = add i64 %indvars.iv1139, 1
  %116 = trunc i64 %indvars.iv.next1140 to i32
  %cmp329 = icmp slt i32 %116, %114
  br i1 %cmp329, label %for.body331, label %if.end339

if.end339:                                        ; preds = %for.cond328.preheader, %for.body331, %if.end322
  %call341 = call i32 @strcmp1(i8* %arrayidx22, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #3
  %cmp342 = icmp eq i32 %call341, 0
  br i1 %cmp342, label %for.cond345.preheader, label %if.end357

for.cond345.preheader:                            ; preds = %if.end339
  %117 = load i32* %nk, align 4, !tbaa !0
  %cmp3471075 = icmp sgt i32 %117, 0
  br i1 %cmp3471075, label %for.body349.lr.ph, label %if.end357

for.body349.lr.ph:                                ; preds = %for.cond345.preheader
  %mul346 = mul nsw i32 %117, 6
  br label %for.body349

for.body349:                                      ; preds = %for.body349.lr.ph, %for.body349
  %indvars.iv1137 = phi i64 [ 0, %for.body349.lr.ph ], [ %indvars.iv.next1138, %for.body349 ]
  %arrayidx351 = getelementptr inbounds double* %stn, i64 %indvars.iv1137
  %118 = load double* %arrayidx351, align 8, !tbaa !3
  %arrayidx353 = getelementptr inbounds double* %stnt.0, i64 %indvars.iv1137
  store double %118, double* %arrayidx353, align 8, !tbaa !3
  %indvars.iv.next1138 = add i64 %indvars.iv1137, 1
  %119 = trunc i64 %indvars.iv.next1138 to i32
  %cmp347 = icmp slt i32 %119, %mul346
  br i1 %cmp347, label %for.body349, label %if.end357

if.end357:                                        ; preds = %for.cond345.preheader, %for.body349, %if.end339
  %call359 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #3
  %cmp360 = icmp eq i32 %call359, 0
  br i1 %cmp360, label %for.cond363.preheader, label %if.end375

for.cond363.preheader:                            ; preds = %if.end357
  %120 = load i32* %nk, align 4, !tbaa !0
  %cmp3651072 = icmp sgt i32 %120, 0
  br i1 %cmp3651072, label %for.body367.lr.ph, label %if.end375

for.body367.lr.ph:                                ; preds = %for.cond363.preheader
  %mul364 = mul nsw i32 %120, 6
  br label %for.body367

for.body367:                                      ; preds = %for.body367.lr.ph, %for.body367
  %indvars.iv1135 = phi i64 [ 0, %for.body367.lr.ph ], [ %indvars.iv.next1136, %for.body367 ]
  %arrayidx369 = getelementptr inbounds double* %een, i64 %indvars.iv1135
  %121 = load double* %arrayidx369, align 8, !tbaa !3
  %arrayidx371 = getelementptr inbounds double* %eent.0, i64 %indvars.iv1135
  store double %121, double* %arrayidx371, align 8, !tbaa !3
  %indvars.iv.next1136 = add i64 %indvars.iv1135, 1
  %122 = trunc i64 %indvars.iv.next1136 to i32
  %cmp365 = icmp slt i32 %122, %mul364
  br i1 %cmp365, label %for.body367, label %if.end375

if.end375:                                        ; preds = %for.cond363.preheader, %for.body367, %if.end357
  %call377 = call i32 @strcmp1(i8* %arrayidx44, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #3
  %cmp378 = icmp eq i32 %call377, 0
  br i1 %cmp378, label %for.cond381.preheader, label %if.end393

for.cond381.preheader:                            ; preds = %if.end375
  %123 = load i32* %nk, align 4, !tbaa !0
  %cmp3831069 = icmp sgt i32 %123, 0
  br i1 %cmp3831069, label %for.body385.lr.ph, label %if.end393

for.body385.lr.ph:                                ; preds = %for.cond381.preheader
  %mul382 = shl nsw i32 %123, 2
  br label %for.body385

for.body385:                                      ; preds = %for.body385.lr.ph, %for.body385
  %indvars.iv1133 = phi i64 [ 0, %for.body385.lr.ph ], [ %indvars.iv.next1134, %for.body385 ]
  %arrayidx387 = getelementptr inbounds double* %fn, i64 %indvars.iv1133
  %124 = load double* %arrayidx387, align 8, !tbaa !3
  %arrayidx389 = getelementptr inbounds double* %fnt.0, i64 %indvars.iv1133
  store double %124, double* %arrayidx389, align 8, !tbaa !3
  %indvars.iv.next1134 = add i64 %indvars.iv1133, 1
  %125 = trunc i64 %indvars.iv.next1134 to i32
  %cmp383 = icmp slt i32 %125, %mul382
  br i1 %cmp383, label %for.body385, label %if.end393

if.end393:                                        ; preds = %for.cond381.preheader, %for.body385, %if.end375
  %call395 = call i32 @strcmp1(i8* %arrayidx55, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #3
  %cmp396 = icmp eq i32 %call395, 0
  br i1 %cmp396, label %for.cond399.preheader, label %if.end410

for.cond399.preheader:                            ; preds = %if.end393
  %126 = load i32* %nk, align 4, !tbaa !0
  %cmp4001066 = icmp sgt i32 %126, 0
  br i1 %cmp4001066, label %for.body402, label %if.end410

for.body402:                                      ; preds = %for.cond399.preheader, %for.body402
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %for.body402 ], [ 0, %for.cond399.preheader ]
  %arrayidx404 = getelementptr inbounds double* %epn, i64 %indvars.iv1131
  %127 = load double* %arrayidx404, align 8, !tbaa !3
  %arrayidx406 = getelementptr inbounds double* %epnt.0, i64 %indvars.iv1131
  store double %127, double* %arrayidx406, align 8, !tbaa !3
  %indvars.iv.next1132 = add i64 %indvars.iv1131, 1
  %128 = trunc i64 %indvars.iv.next1132 to i32
  %cmp400 = icmp slt i32 %128, %126
  br i1 %cmp400, label %for.body402, label %if.end410

if.end410:                                        ; preds = %for.cond399.preheader, %for.body402, %if.end393
  %call412 = call i32 @strcmp1(i8* %arrayidx65, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #3
  %cmp413 = icmp eq i32 %call412, 0
  br i1 %cmp413, label %for.cond416.preheader, label %if.end427

for.cond416.preheader:                            ; preds = %if.end410
  %129 = load i32* %nk, align 4, !tbaa !0
  %cmp4171064 = icmp sgt i32 %129, 0
  br i1 %cmp4171064, label %for.body419, label %if.end427

for.body419:                                      ; preds = %for.cond416.preheader, %for.body419
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %for.body419 ], [ 0, %for.cond416.preheader ]
  %arrayidx421 = getelementptr inbounds double* %enern, i64 %indvars.iv1129
  %130 = load double* %arrayidx421, align 8, !tbaa !3
  %arrayidx423 = getelementptr inbounds double* %enernt.0, i64 %indvars.iv1129
  store double %130, double* %arrayidx423, align 8, !tbaa !3
  %indvars.iv.next1130 = add i64 %indvars.iv1129, 1
  %131 = trunc i64 %indvars.iv.next1130 to i32
  %cmp417 = icmp slt i32 %131, %129
  br i1 %cmp417, label %for.body419, label %if.end427

if.end427:                                        ; preds = %for.cond416.preheader, %for.body419, %if.end410
  %call429 = call i32 @strcmp1(i8* %arrayidx75, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #3
  %cmp430 = icmp eq i32 %call429, 0
  br i1 %cmp430, label %for.cond433.preheader, label %for.cond446.preheader

for.cond433.preheader:                            ; preds = %if.end427
  %132 = load i32* %nstate_, align 4, !tbaa !0
  %133 = load i32* %nk, align 4, !tbaa !0
  %mul4341061 = mul nsw i32 %133, %132
  %cmp4351062 = icmp sgt i32 %mul4341061, 0
  br i1 %cmp4351062, label %for.body437, label %for.cond446.preheader

for.cond446.preheader:                            ; preds = %for.cond433.preheader, %for.body437, %if.end427
  %134 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp4481058 = icmp sgt i32 %134, 1
  br i1 %cmp4481058, label %for.cond451.preheader, label %for.end628

for.body437:                                      ; preds = %for.cond433.preheader, %for.body437
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %for.body437 ], [ 0, %for.cond433.preheader ]
  %arrayidx439 = getelementptr inbounds double* %xstaten, i64 %indvars.iv1127
  %135 = load double* %arrayidx439, align 8, !tbaa !3
  %arrayidx441 = getelementptr inbounds double* %xstatent.0, i64 %indvars.iv1127
  store double %135, double* %arrayidx441, align 8, !tbaa !3
  %indvars.iv.next1128 = add i64 %indvars.iv1127, 1
  %136 = trunc i64 %indvars.iv.next1128 to i32
  %cmp435 = icmp slt i32 %136, %mul4341061
  br i1 %cmp435, label %for.body437, label %for.cond446.preheader

for.cond451.preheader:                            ; preds = %for.inc626, %for.cond446.preheader
  %i.11059 = phi i32 [ 1, %for.cond446.preheader ], [ %inc627, %for.inc626 ]
  %137 = load i32* %nk, align 4, !tbaa !0
  %cmp4521030 = icmp sgt i32 %137, 0
  br i1 %cmp4521030, label %for.body454, label %for.end463

for.body454:                                      ; preds = %for.cond451.preheader, %for.body454
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body454 ], [ 0, %for.cond451.preheader ]
  %138 = phi i32 [ %141, %for.body454 ], [ %137, %for.cond451.preheader ]
  %arrayidx456 = getelementptr inbounds i32* %inum, i64 %indvars.iv
  %139 = load i32* %arrayidx456, align 4, !tbaa !0
  %mul457 = mul nsw i32 %138, %i.11059
  %140 = trunc i64 %indvars.iv to i32
  %add458 = add nsw i32 %mul457, %140
  %idxprom459 = sext i32 %add458 to i64
  %arrayidx460 = getelementptr inbounds i32* %50, i64 %idxprom459
  store i32 %139, i32* %arrayidx460, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %141 = load i32* %nk, align 4, !tbaa !0
  %142 = trunc i64 %indvars.iv.next to i32
  %cmp452 = icmp slt i32 %142, %141
  br i1 %cmp452, label %for.body454, label %for.end463

for.end463:                                       ; preds = %for.body454, %for.cond451.preheader
  %call465 = call i32 @strcmp1(i8* %nodeflab, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #3
  %cmp466 = icmp eq i32 %call465, 0
  br i1 %cmp466, label %for.cond469.preheader, label %if.end484

for.cond469.preheader:                            ; preds = %for.end463
  %143 = load i32* %nk, align 4, !tbaa !0
  %cmp4711033 = icmp sgt i32 %143, 0
  br i1 %cmp4711033, label %for.body473.lr.ph, label %if.end484

for.body473.lr.ph:                                ; preds = %for.cond469.preheader
  %mul4701032 = shl nsw i32 %143, 2
  br label %for.body473

for.body473:                                      ; preds = %for.body473.lr.ph, %for.body473
  %indvars.iv1111 = phi i64 [ 0, %for.body473.lr.ph ], [ %indvars.iv.next1112, %for.body473 ]
  %arrayidx475 = getelementptr inbounds double* %v, i64 %indvars.iv1111
  %144 = load double* %arrayidx475, align 8, !tbaa !3
  %mul477 = mul nsw i32 %mul4701032, %i.11059
  %145 = trunc i64 %indvars.iv1111 to i32
  %add478 = add nsw i32 %mul477, %145
  %idxprom479 = sext i32 %add478 to i64
  %arrayidx480 = getelementptr inbounds double* %vt.0, i64 %idxprom479
  store double %144, double* %arrayidx480, align 8, !tbaa !3
  %indvars.iv.next1112 = add i64 %indvars.iv1111, 1
  %146 = trunc i64 %indvars.iv.next1112 to i32
  %cmp471 = icmp slt i32 %146, %mul4701032
  br i1 %cmp471, label %for.body473, label %if.end484

if.end484:                                        ; preds = %for.cond469.preheader, %for.body473, %for.end463
  %call486 = call i32 @strcmp1(i8* %arrayidx12, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #3
  %cmp487 = icmp eq i32 %call486, 0
  br i1 %cmp487, label %for.cond490.preheader, label %if.end503

for.cond490.preheader:                            ; preds = %if.end484
  %147 = load i32* %nk, align 4, !tbaa !0
  %cmp4911036 = icmp sgt i32 %147, 0
  br i1 %cmp4911036, label %for.body493, label %if.end503

for.body493:                                      ; preds = %for.cond490.preheader, %for.body493
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %for.body493 ], [ 0, %for.cond490.preheader ]
  %arrayidx495 = getelementptr inbounds double* %t1, i64 %indvars.iv1113
  %148 = load double* %arrayidx495, align 8, !tbaa !3
  %mul496 = mul nsw i32 %147, %i.11059
  %149 = trunc i64 %indvars.iv1113 to i32
  %add497 = add nsw i32 %mul496, %149
  %idxprom498 = sext i32 %add497 to i64
  %arrayidx499 = getelementptr inbounds double* %t1t.0, i64 %idxprom498
  store double %148, double* %arrayidx499, align 8, !tbaa !3
  %indvars.iv.next1114 = add i64 %indvars.iv1113, 1
  %150 = trunc i64 %indvars.iv.next1114 to i32
  %cmp491 = icmp slt i32 %150, %147
  br i1 %cmp491, label %for.body493, label %if.end503

if.end503:                                        ; preds = %for.cond490.preheader, %for.body493, %if.end484
  %call505 = call i32 @strcmp1(i8* %arrayidx22, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #3
  %cmp506 = icmp eq i32 %call505, 0
  br i1 %cmp506, label %for.cond509.preheader, label %if.end524

for.cond509.preheader:                            ; preds = %if.end503
  %151 = load i32* %nk, align 4, !tbaa !0
  %cmp5111039 = icmp sgt i32 %151, 0
  br i1 %cmp5111039, label %for.body513.lr.ph, label %if.end524

for.body513.lr.ph:                                ; preds = %for.cond509.preheader
  %mul5101038 = mul nsw i32 %151, 6
  br label %for.body513

for.body513:                                      ; preds = %for.body513.lr.ph, %for.body513
  %indvars.iv1115 = phi i64 [ 0, %for.body513.lr.ph ], [ %indvars.iv.next1116, %for.body513 ]
  %arrayidx515 = getelementptr inbounds double* %stn, i64 %indvars.iv1115
  %152 = load double* %arrayidx515, align 8, !tbaa !3
  %mul517 = mul nsw i32 %mul5101038, %i.11059
  %153 = trunc i64 %indvars.iv1115 to i32
  %add518 = add nsw i32 %mul517, %153
  %idxprom519 = sext i32 %add518 to i64
  %arrayidx520 = getelementptr inbounds double* %stnt.0, i64 %idxprom519
  store double %152, double* %arrayidx520, align 8, !tbaa !3
  %indvars.iv.next1116 = add i64 %indvars.iv1115, 1
  %154 = trunc i64 %indvars.iv.next1116 to i32
  %cmp511 = icmp slt i32 %154, %mul5101038
  br i1 %cmp511, label %for.body513, label %if.end524

if.end524:                                        ; preds = %for.cond509.preheader, %for.body513, %if.end503
  %call526 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #3
  %cmp527 = icmp eq i32 %call526, 0
  br i1 %cmp527, label %for.cond530.preheader, label %if.end545

for.cond530.preheader:                            ; preds = %if.end524
  %155 = load i32* %nk, align 4, !tbaa !0
  %cmp5321043 = icmp sgt i32 %155, 0
  br i1 %cmp5321043, label %for.body534.lr.ph, label %if.end545

for.body534.lr.ph:                                ; preds = %for.cond530.preheader
  %mul5311042 = mul nsw i32 %155, 6
  br label %for.body534

for.body534:                                      ; preds = %for.body534.lr.ph, %for.body534
  %indvars.iv1117 = phi i64 [ 0, %for.body534.lr.ph ], [ %indvars.iv.next1118, %for.body534 ]
  %arrayidx536 = getelementptr inbounds double* %een, i64 %indvars.iv1117
  %156 = load double* %arrayidx536, align 8, !tbaa !3
  %mul538 = mul nsw i32 %mul5311042, %i.11059
  %157 = trunc i64 %indvars.iv1117 to i32
  %add539 = add nsw i32 %mul538, %157
  %idxprom540 = sext i32 %add539 to i64
  %arrayidx541 = getelementptr inbounds double* %eent.0, i64 %idxprom540
  store double %156, double* %arrayidx541, align 8, !tbaa !3
  %indvars.iv.next1118 = add i64 %indvars.iv1117, 1
  %158 = trunc i64 %indvars.iv.next1118 to i32
  %cmp532 = icmp slt i32 %158, %mul5311042
  br i1 %cmp532, label %for.body534, label %if.end545

if.end545:                                        ; preds = %for.cond530.preheader, %for.body534, %if.end524
  %call547 = call i32 @strcmp1(i8* %arrayidx44, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #3
  %cmp548 = icmp eq i32 %call547, 0
  br i1 %cmp548, label %for.cond551.preheader, label %if.end566

for.cond551.preheader:                            ; preds = %if.end545
  %159 = load i32* %nk, align 4, !tbaa !0
  %cmp5531047 = icmp sgt i32 %159, 0
  br i1 %cmp5531047, label %for.body555.lr.ph, label %if.end566

for.body555.lr.ph:                                ; preds = %for.cond551.preheader
  %mul5521046 = shl nsw i32 %159, 2
  br label %for.body555

for.body555:                                      ; preds = %for.body555.lr.ph, %for.body555
  %indvars.iv1119 = phi i64 [ 0, %for.body555.lr.ph ], [ %indvars.iv.next1120, %for.body555 ]
  %arrayidx557 = getelementptr inbounds double* %fn, i64 %indvars.iv1119
  %160 = load double* %arrayidx557, align 8, !tbaa !3
  %mul559 = mul nsw i32 %mul5521046, %i.11059
  %161 = trunc i64 %indvars.iv1119 to i32
  %add560 = add nsw i32 %mul559, %161
  %idxprom561 = sext i32 %add560 to i64
  %arrayidx562 = getelementptr inbounds double* %fnt.0, i64 %idxprom561
  store double %160, double* %arrayidx562, align 8, !tbaa !3
  %indvars.iv.next1120 = add i64 %indvars.iv1119, 1
  %162 = trunc i64 %indvars.iv.next1120 to i32
  %cmp553 = icmp slt i32 %162, %mul5521046
  br i1 %cmp553, label %for.body555, label %if.end566

if.end566:                                        ; preds = %for.cond551.preheader, %for.body555, %if.end545
  %call568 = call i32 @strcmp1(i8* %arrayidx55, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #3
  %cmp569 = icmp eq i32 %call568, 0
  br i1 %cmp569, label %for.cond572.preheader, label %if.end585

for.cond572.preheader:                            ; preds = %if.end566
  %163 = load i32* %nk, align 4, !tbaa !0
  %cmp5731050 = icmp sgt i32 %163, 0
  br i1 %cmp5731050, label %for.body575, label %if.end585

for.body575:                                      ; preds = %for.cond572.preheader, %for.body575
  %indvars.iv1121 = phi i64 [ %indvars.iv.next1122, %for.body575 ], [ 0, %for.cond572.preheader ]
  %arrayidx577 = getelementptr inbounds double* %epn, i64 %indvars.iv1121
  %164 = load double* %arrayidx577, align 8, !tbaa !3
  %mul578 = mul nsw i32 %163, %i.11059
  %165 = trunc i64 %indvars.iv1121 to i32
  %add579 = add nsw i32 %mul578, %165
  %idxprom580 = sext i32 %add579 to i64
  %arrayidx581 = getelementptr inbounds double* %epnt.0, i64 %idxprom580
  store double %164, double* %arrayidx581, align 8, !tbaa !3
  %indvars.iv.next1122 = add i64 %indvars.iv1121, 1
  %166 = trunc i64 %indvars.iv.next1122 to i32
  %cmp573 = icmp slt i32 %166, %163
  br i1 %cmp573, label %for.body575, label %if.end585

if.end585:                                        ; preds = %for.cond572.preheader, %for.body575, %if.end566
  %call587 = call i32 @strcmp1(i8* %arrayidx65, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #3
  %cmp588 = icmp eq i32 %call587, 0
  br i1 %cmp588, label %for.cond591.preheader, label %if.end604

for.cond591.preheader:                            ; preds = %if.end585
  %167 = load i32* %nk, align 4, !tbaa !0
  %cmp5921052 = icmp sgt i32 %167, 0
  br i1 %cmp5921052, label %for.body594, label %if.end604

for.body594:                                      ; preds = %for.cond591.preheader, %for.body594
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %for.body594 ], [ 0, %for.cond591.preheader ]
  %arrayidx596 = getelementptr inbounds double* %enern, i64 %indvars.iv1123
  %168 = load double* %arrayidx596, align 8, !tbaa !3
  %mul597 = mul nsw i32 %167, %i.11059
  %169 = trunc i64 %indvars.iv1123 to i32
  %add598 = add nsw i32 %mul597, %169
  %idxprom599 = sext i32 %add598 to i64
  %arrayidx600 = getelementptr inbounds double* %enernt.0, i64 %idxprom599
  store double %168, double* %arrayidx600, align 8, !tbaa !3
  %indvars.iv.next1124 = add i64 %indvars.iv1123, 1
  %170 = trunc i64 %indvars.iv.next1124 to i32
  %cmp592 = icmp slt i32 %170, %167
  br i1 %cmp592, label %for.body594, label %if.end604

if.end604:                                        ; preds = %for.cond591.preheader, %for.body594, %if.end585
  %call606 = call i32 @strcmp1(i8* %arrayidx75, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #3
  %cmp607 = icmp eq i32 %call606, 0
  br i1 %cmp607, label %for.cond610.preheader, label %for.inc626

for.cond610.preheader:                            ; preds = %if.end604
  %171 = load i32* %nstate_, align 4, !tbaa !0
  %172 = load i32* %nk, align 4, !tbaa !0
  %mul6111054 = mul nsw i32 %172, %171
  %cmp6121055 = icmp sgt i32 %mul6111054, 0
  br i1 %cmp6121055, label %for.body614, label %for.inc626

for.body614:                                      ; preds = %for.cond610.preheader, %for.body614
  %indvars.iv1125 = phi i64 [ %indvars.iv.next1126, %for.body614 ], [ 0, %for.cond610.preheader ]
  %arrayidx616 = getelementptr inbounds double* %xstaten, i64 %indvars.iv1125
  %173 = load double* %arrayidx616, align 8, !tbaa !3
  %mul618 = mul nsw i32 %mul6111054, %i.11059
  %174 = trunc i64 %indvars.iv1125 to i32
  %add619 = add nsw i32 %mul618, %174
  %idxprom620 = sext i32 %add619 to i64
  %arrayidx621 = getelementptr inbounds double* %xstatent.0, i64 %idxprom620
  store double %173, double* %arrayidx621, align 8, !tbaa !3
  %indvars.iv.next1126 = add i64 %indvars.iv1125, 1
  %175 = trunc i64 %indvars.iv.next1126 to i32
  %cmp612 = icmp slt i32 %175, %mul6111054
  br i1 %cmp612, label %for.body614, label %for.inc626

for.inc626:                                       ; preds = %for.cond610.preheader, %for.body614, %if.end604
  %inc627 = add nsw i32 %i.11059, 1
  %176 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp448 = icmp slt i32 %inc627, %176
  br i1 %cmp448, label %for.cond451.preheader, label %for.end628

for.end628:                                       ; preds = %for.inc626, %for.cond446.preheader
  store i32 -2, i32* %icntrl, align 4, !tbaa !0
  call void @rectcyl_(double* %2, double* %vt.0, double* %fnt.0, double* %stnt.0, double* %eent.0, double* %csab, i32* %nkt, i32* %icntrl, double* %arraydecay, i8* %nodeflab, i32* %imag) #3
  call void @out_(double* %2, i32* %nkt, i32* %kont.0, i32* %ipkont.0, i8* %lakont.0, i32* %net, double* %vt.0, double* %stnt.0, i32* %50, i32* %nmethod, i32* %kode, i8* %nodeflab, double* %eent.0, double* %t1t.0, double* %fnt.0, double* %time, double* %epnt.0, i32* %ielmatt.0, i8* %matname, double* %enernt.0, double* %xstatent.0, i32* %nstate_, i32* %istep, i32* %iinc, i32* %iperturb, double* %ener, i32* %mint_, i8* %output) #3
  %call631 = call i32 @strcmp1(i8* %nodeflab, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #3
  %cmp632 = icmp eq i32 %call631, 0
  br i1 %cmp632, label %if.then634, label %if.end635

if.then634:                                       ; preds = %for.end628
  call void @free(i8* %6) #3
  br label %if.end635

if.end635:                                        ; preds = %if.then634, %for.end628
  %call637 = call i32 @strcmp1(i8* %arrayidx12, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #3
  %cmp638 = icmp eq i32 %call637, 0
  br i1 %cmp638, label %if.then640, label %if.end641

if.then640:                                       ; preds = %if.end635
  call void @free(i8* %10) #3
  br label %if.end641

if.end641:                                        ; preds = %if.then640, %if.end635
  %call643 = call i32 @strcmp1(i8* %arrayidx22, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #3
  %cmp644 = icmp eq i32 %call643, 0
  br i1 %cmp644, label %if.then646, label %if.end647

if.then646:                                       ; preds = %if.end641
  call void @free(i8* %14) #3
  br label %if.end647

if.end647:                                        ; preds = %if.then646, %if.end641
  %call649 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #3
  %cmp650 = icmp eq i32 %call649, 0
  br i1 %cmp650, label %if.then652, label %if.end653

if.then652:                                       ; preds = %if.end647
  call void @free(i8* %18) #3
  br label %if.end653

if.end653:                                        ; preds = %if.then652, %if.end647
  %call655 = call i32 @strcmp1(i8* %arrayidx44, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #3
  %cmp656 = icmp eq i32 %call655, 0
  br i1 %cmp656, label %if.then658, label %if.end659

if.then658:                                       ; preds = %if.end653
  call void @free(i8* %22) #3
  br label %if.end659

if.end659:                                        ; preds = %if.then658, %if.end653
  %call661 = call i32 @strcmp1(i8* %arrayidx55, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #3
  %cmp662 = icmp eq i32 %call661, 0
  br i1 %cmp662, label %if.then664, label %if.end665

if.then664:                                       ; preds = %if.end659
  call void @free(i8* %26) #3
  br label %if.end665

if.end665:                                        ; preds = %if.then664, %if.end659
  %call667 = call i32 @strcmp1(i8* %arrayidx65, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #3
  %cmp668 = icmp eq i32 %call667, 0
  br i1 %cmp668, label %if.then670, label %if.end671

if.then670:                                       ; preds = %if.end665
  call void @free(i8* %30) #3
  br label %if.end671

if.end671:                                        ; preds = %if.then670, %if.end665
  %call673 = call i32 @strcmp1(i8* %arrayidx75, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #3
  %cmp674 = icmp eq i32 %call673, 0
  br i1 %cmp674, label %if.then676, label %if.end677

if.then676:                                       ; preds = %if.end671
  call void @free(i8* %35) #3
  br label %if.end677

if.end677:                                        ; preds = %if.then676, %if.end671
  %177 = load i32* %kode, align 4, !tbaa !0
  %cmp678 = icmp eq i32 %177, 1
  br i1 %cmp678, label %if.then680, label %if.end681

if.then680:                                       ; preds = %if.end677
  %178 = bitcast i32* %kont.0 to i8*
  call void @free(i8* %178) #3
  %179 = bitcast i32* %ipkont.0 to i8*
  call void @free(i8* %179) #3
  call void @free(i8* %lakont.0) #3
  %180 = bitcast i32* %ielmatt.0 to i8*
  call void @free(i8* %180) #3
  br label %if.end681

if.end681:                                        ; preds = %if.then680, %if.end677
  call void @free(i8* %call110) #3
  call void @free(i8* %call3) #3
  ret void
}

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #1

; Function Attrs: optsize
declare i32 @strcmp1(i8*, i8*) #1

; Function Attrs: optsize
declare void @rectcyl_(double*, double*, double*, double*, double*, double*, i32*, i32*, double*, i8*, i32*) #1

; Function Attrs: optsize
declare void @out_(double*, i32*, i32*, i32*, i8*, i32*, double*, double*, i32*, i32*, i32*, i8*, double*, double*, double*, double*, double*, i32*, i8*, double*, double*, i32*, i32*, i32*, i32*, double*, i32*, i8*) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
