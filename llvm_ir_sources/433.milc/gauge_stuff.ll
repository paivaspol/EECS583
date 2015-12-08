; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/gauge_stuff.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@gauge_action_nloops = global i32 3, align 4
@gauge_action_nreps = global i32 1, align 4
@make_loop_table.loop_ind = internal unnamed_addr constant [3 x [6 x i32]] [[6 x i32] [i32 0, i32 1, i32 7, i32 6, i32 -1, i32 -1], [6 x i32] [i32 0, i32 0, i32 1, i32 7, i32 7, i32 6], [6 x i32] [i32 0, i32 1, i32 2, i32 7, i32 6, i32 5]], align 16
@make_loop_table.loop_length_in = internal unnamed_addr constant [3 x i32] [i32 4, i32 6, i32 6], align 4
@loop_num = common global [3 x i32] zeroinitializer, align 4
@loop_length = common global [3 x i32] zeroinitializer, align 4
@loop_coeff = common global [3 x [1 x double]] zeroinitializer, align 16
@u0 = external global double
@gauge_action_description = common global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [36 x i8] c"\22Symanzik 1x1 + 1x2 + 1x1x1 action\22\00", align 1
@this_node = external global i32
@loop_char = common global [16 x i32] zeroinitializer, align 16
@loop_table = common global [3 x [16 x [6 x i32]]] zeroinitializer, align 16
@.str4 = private unnamed_addr constant [42 x i8] c"                    %d %d      %e     %d\0A\00", align 1
@lattice = external global %struct.site*
@sites_on_node = external global i32
@beta = external global double
@.str5 = private unnamed_addr constant [13 x i8] c"PLAQ:\09%f\09%f\0A\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"P_LOOP:\09%e\09%e\0A\00", align 1
@.str7 = private unnamed_addr constant [23 x i8] c"G_LOOP:  %d  %d  %d   \00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"\09%e\00", align 1
@volume = external global i32
@.str9 = private unnamed_addr constant [4 x i8] c"\09( \00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str12 = private unnamed_addr constant [13 x i8] c"GACTION: %e\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str13 = private unnamed_addr constant [13 x i8] c",  L = %d )\0A\00", align 1
@loop_ind = common global [3 x [6 x i32]] zeroinitializer, align 16
@loop_expect = common global [3 x [1 x [16 x double]]] zeroinitializer, align 16
@str = private unnamed_addr constant [54 x i8] c"loop coefficients: nloop rep loop_coeff  multiplicity\00"
@str14 = private unnamed_addr constant [24 x i8] c"OOPS: MAX_NUM too small\00"
@str15 = private unnamed_addr constant [34 x i8] c"Symanzik 1x1 + 1x2 + 1x1x1 action\00"
@str16 = private unnamed_addr constant [3 x i8] c" )\00"

; Function Attrs: nounwind optsize uwtable
define void @make_loop_table() #0 {
entry:
  %perm = alloca [8 x i32], align 16
  %pp = alloca [8 x i32], align 16
  %ir = alloca [4 x i32], align 16
  %chr = alloca i32, align 4
  %vec = alloca [6 x i32], align 16
  call void @llvm.memset.p0i8.i64(i8* bitcast ([3 x i32]* @loop_num to i8*), i8 0, i64 12, i32 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([3 x i32]* @loop_length to i8*), i8* bitcast ([3 x i32]* @make_loop_table.loop_length_in to i8*), i64 12, i32 4, i1 false)
  br label %for.inc12

for.inc12:                                        ; preds = %for.inc12, %entry
  %indvars.iv353 = phi i64 [ 0, %entry ], [ %indvars.iv.next354, %for.inc12 ]
  %arrayidx11 = getelementptr inbounds [3 x [1 x double]]* @loop_coeff, i64 0, i64 %indvars.iv353, i64 0
  store double 0.000000e+00, double* %arrayidx11, align 8, !tbaa !0
  %indvars.iv.next354 = add i64 %indvars.iv353, 1
  %lftr.wideiv355 = trunc i64 %indvars.iv.next354 to i32
  %exitcond356 = icmp eq i32 %lftr.wideiv355, 3
  br i1 %exitcond356, label %for.end14, label %for.inc12

for.end14:                                        ; preds = %for.inc12
  %vec347 = bitcast [6 x i32]* %vec to i8*
  store double 1.000000e+00, double* getelementptr inbounds ([3 x [1 x double]]* @loop_coeff, i64 0, i64 0, i64 0), align 16, !tbaa !0
  %0 = load double* @u0, align 8, !tbaa !0
  %mul = fmul double %0, 2.000000e+01
  %mul15 = fmul double %0, %mul
  %div = fdiv double -1.000000e+00, %mul15
  %call = call double @log(double %0) #5
  %mul16 = fmul double %call, 6.264000e-01
  %sub = fsub double 1.000000e+00, %mul16
  %mul17 = fmul double %div, %sub
  store double %mul17, double* getelementptr inbounds ([3 x [1 x double]]* @loop_coeff, i64 0, i64 1, i64 0), align 8, !tbaa !0
  %1 = load double* @u0, align 8, !tbaa !0
  %mul18 = fmul double %1, %1
  %div19 = fdiv double 1.000000e+00, %mul18
  %mul20 = fmul double %div19, 4.335000e-02
  %call21 = call double @log(double %1) #5
  %mul22 = fmul double %mul20, %call21
  store double %mul22, double* getelementptr inbounds ([3 x [1 x double]]* @loop_coeff, i64 0, i64 2, i64 0), align 16, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([128 x i8]* @gauge_action_description, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str, i64 0, i64 0), i64 36, i32 1, i1 false)
  %2 = load i32* @this_node, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %2, 0
  br i1 %cmp24, label %if.then, label %for.cond26.preheader

if.then:                                          ; preds = %for.end14
  %puts292 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str15, i64 0, i64 0))
  br label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %if.then, %for.end14
  %arrayidx31 = getelementptr inbounds [8 x i32]* %perm, i64 0, i64 0
  %arrayidx36 = getelementptr inbounds [8 x i32]* %perm, i64 0, i64 1
  %arrayidx41 = getelementptr inbounds [8 x i32]* %perm, i64 0, i64 2
  %arrayidx46 = getelementptr inbounds [8 x i32]* %perm, i64 0, i64 3
  %arrayidx74 = getelementptr inbounds [4 x i32]* %ir, i64 0, i64 0
  %arrayidx79 = getelementptr inbounds [4 x i32]* %ir, i64 0, i64 1
  %arrayidx84 = getelementptr inbounds [4 x i32]* %ir, i64 0, i64 2
  %arrayidx89 = getelementptr inbounds [4 x i32]* %ir, i64 0, i64 3
  %arraydecay = getelementptr inbounds [6 x i32]* %vec, i64 0, i64 0
  br label %for.body28

for.body28:                                       ; preds = %for.cond26.preheader, %for.inc207
  %indvars.iv349 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next350, %for.inc207 ]
  %arrayidx30 = getelementptr inbounds [3 x i32]* @loop_length, i64 0, i64 %indvars.iv349
  %3 = load i32* %arrayidx30, align 4, !tbaa !3
  store i32 0, i32* %arrayidx31, align 16, !tbaa !3
  %cmp121299 = icmp sgt i32 %3, 0
  %arrayidx173 = getelementptr inbounds [3 x i32]* @loop_num, i64 0, i64 %indvars.iv349
  %4 = add i32 %3, -1
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 2
  %7 = add i64 %6, 4
  br label %for.body35

for.body35:                                       ; preds = %for.body28, %for.inc203
  %8 = phi i32 [ 0, %for.body28 ], [ %inc205, %for.inc203 ]
  %count.0321 = phi i32 [ 0, %for.body28 ], [ %count.9, %for.inc203 ]
  store i32 0, i32* %arrayidx36, align 4, !tbaa !3
  br label %for.body40

for.body40:                                       ; preds = %for.body35, %for.inc199
  %9 = phi i32 [ 0, %for.body35 ], [ %inc201, %for.inc199 ]
  %count.1320 = phi i32 [ %count.0321, %for.body35 ], [ %count.9, %for.inc199 ]
  store i32 0, i32* %arrayidx41, align 8, !tbaa !3
  br label %for.body45

for.body45:                                       ; preds = %for.body40, %for.inc195
  %10 = phi i32 [ 0, %for.body40 ], [ %inc197, %for.inc195 ]
  %count.2318 = phi i32 [ %count.1320, %for.body40 ], [ %count.9, %for.inc195 ]
  store i32 0, i32* %arrayidx46, align 4, !tbaa !3
  br label %for.body50

for.body50:                                       ; preds = %for.body45, %for.inc191
  %11 = phi i32 [ %10, %for.body45 ], [ %32, %for.inc191 ]
  %count.3316 = phi i32 [ %count.2318, %for.body45 ], [ %count.9, %for.inc191 ]
  %storemerge285315 = phi i32 [ 0, %for.body45 ], [ %inc193, %for.inc191 ]
  %cmp53 = icmp eq i32 %8, %9
  br i1 %cmp53, label %for.inc191, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body50
  %12 = bitcast i32* %arrayidx41 to i64*
  %13 = load i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %cmp56 = icmp eq i32 %8, %14
  %cmp60 = icmp eq i32 %8, %storemerge285315
  %or.cond = or i1 %cmp56, %cmp60
  %cmp64 = icmp eq i32 %9, %14
  %or.cond293 = or i1 %or.cond, %cmp64
  %cmp68 = icmp eq i32 %9, %storemerge285315
  %or.cond294 = or i1 %or.cond293, %cmp68
  %cmp72 = icmp eq i32 %14, %storemerge285315
  %or.cond295 = or i1 %or.cond294, %cmp72
  %15 = lshr i64 %13, 32
  %16 = trunc i64 %15 to i32
  br i1 %or.cond295, label %for.inc191, label %if.then73

if.then73:                                        ; preds = %land.lhs.true
  store i32 0, i32* %arrayidx74, align 16, !tbaa !3
  br label %for.body78

for.body78:                                       ; preds = %if.then73, %for.inc186
  %count.4313 = phi i32 [ %count.3316, %if.then73 ], [ %count.8, %for.inc186 ]
  store i32 0, i32* %arrayidx79, align 4, !tbaa !3
  br label %for.body83

for.body83:                                       ; preds = %for.body78, %for.inc182
  %17 = phi i32 [ 0, %for.body78 ], [ %inc184, %for.inc182 ]
  %count.5311 = phi i32 [ %count.4313, %for.body78 ], [ %count.8, %for.inc182 ]
  store i32 0, i32* %arrayidx84, align 8, !tbaa !3
  br label %for.body88

for.body88:                                       ; preds = %for.body83, %for.inc178
  %18 = phi i32 [ 0, %for.body83 ], [ %inc180, %for.inc178 ]
  %count.6309 = phi i32 [ %count.5311, %for.body83 ], [ %count.8, %for.inc178 ]
  store i32 0, i32* %arrayidx89, align 4, !tbaa !3
  br label %for.cond94.preheader

for.cond94.preheader:                             ; preds = %for.body88, %if.end171
  %19 = phi i32 [ 0, %for.body88 ], [ %inc176, %if.end171 ]
  %count.7307 = phi i32 [ %count.6309, %for.body88 ], [ %count.8, %if.end171 ]
  br label %for.body96

for.body96:                                       ; preds = %if.end110, %for.cond94.preheader
  %indvars.iv327 = phi i64 [ 0, %for.cond94.preheader ], [ %indvars.iv.next328, %if.end110 ]
  %arrayidx98 = getelementptr inbounds [8 x i32]* %perm, i64 0, i64 %indvars.iv327
  %20 = load i32* %arrayidx98, align 4, !tbaa !3
  %arrayidx100 = getelementptr inbounds [8 x i32]* %pp, i64 0, i64 %indvars.iv327
  store i32 %20, i32* %arrayidx100, align 4, !tbaa !3
  %arrayidx102 = getelementptr inbounds [4 x i32]* %ir, i64 0, i64 %indvars.iv327
  %21 = load i32* %arrayidx102, align 4, !tbaa !3
  %cmp103 = icmp eq i32 %21, 1
  br i1 %cmp103, label %if.then104, label %if.end110

if.then104:                                       ; preds = %for.body96
  %sub107 = sub nsw i32 7, %20
  store i32 %sub107, i32* %arrayidx100, align 4, !tbaa !3
  br label %if.end110

if.end110:                                        ; preds = %if.then104, %for.body96
  %22 = phi i32 [ %sub107, %if.then104 ], [ %20, %for.body96 ]
  %sub113 = sub nsw i32 7, %22
  %23 = sub nsw i64 7, %indvars.iv327
  %arrayidx116 = getelementptr inbounds [8 x i32]* %pp, i64 0, i64 %23
  store i32 %sub113, i32* %arrayidx116, align 4, !tbaa !3
  %indvars.iv.next328 = add i64 %indvars.iv327, 1
  %lftr.wideiv330 = trunc i64 %indvars.iv.next328 to i32
  %exitcond331 = icmp eq i32 %lftr.wideiv330, 4
  br i1 %exitcond331, label %for.cond120.loopexit, label %for.body96

for.cond120.loopexit:                             ; preds = %if.end110
  br i1 %cmp121299, label %for.body122, label %for.end133

for.body122:                                      ; preds = %for.cond120.loopexit, %for.body122
  %indvars.iv333 = phi i64 [ %indvars.iv.next334, %for.body122 ], [ 0, %for.cond120.loopexit ]
  %arrayidx126 = getelementptr inbounds [3 x [6 x i32]]* @make_loop_table.loop_ind, i64 0, i64 %indvars.iv349, i64 %indvars.iv333
  %24 = load i32* %arrayidx126, align 4, !tbaa !3
  %idxprom127 = sext i32 %24 to i64
  %arrayidx128 = getelementptr inbounds [8 x i32]* %pp, i64 0, i64 %idxprom127
  %25 = load i32* %arrayidx128, align 4, !tbaa !3
  %arrayidx130 = getelementptr inbounds [6 x i32]* %vec, i64 0, i64 %indvars.iv333
  store i32 %25, i32* %arrayidx130, align 4, !tbaa !3
  %indvars.iv.next334 = add i64 %indvars.iv333, 1
  %lftr.wideiv335 = trunc i64 %indvars.iv.next334 to i32
  %exitcond336 = icmp eq i32 %lftr.wideiv335, %3
  br i1 %exitcond336, label %for.end133, label %for.body122

for.end133:                                       ; preds = %for.body122, %for.cond120.loopexit
  call void @char_num(i32* %arraydecay, i32* %chr, i32 %3) #6
  %cmp135301 = icmp sgt i32 %count.7307, 0
  br i1 %cmp135301, label %for.body136.lr.ph, label %if.then146

for.body136.lr.ph:                                ; preds = %for.end133
  %26 = load i32* %chr, align 4, !tbaa !3
  br label %for.body136

for.body136:                                      ; preds = %for.body136, %for.body136.lr.ph
  %indvars.iv337 = phi i64 [ 0, %for.body136.lr.ph ], [ %indvars.iv.next338, %for.body136 ]
  %flag.0303 = phi i32 [ 0, %for.body136.lr.ph ], [ %.flag.0, %for.body136 ]
  %arrayidx138 = getelementptr inbounds [16 x i32]* @loop_char, i64 0, i64 %indvars.iv337
  %27 = load i32* %arrayidx138, align 4, !tbaa !3
  %cmp139 = icmp eq i32 %26, %27
  %.flag.0 = select i1 %cmp139, i32 1, i32 %flag.0303
  %indvars.iv.next338 = add i64 %indvars.iv337, 1
  %lftr.wideiv339 = trunc i64 %indvars.iv.next338 to i32
  %exitcond340 = icmp eq i32 %lftr.wideiv339, %count.7307
  br i1 %exitcond340, label %for.end144, label %for.body136

for.end144:                                       ; preds = %for.body136
  %phitmp = icmp eq i32 %.flag.0, 0
  br i1 %phitmp, label %if.then146, label %if.end164

if.then146:                                       ; preds = %for.end133, %for.end144
  %28 = load i32* %chr, align 4, !tbaa !3
  %idxprom147 = sext i32 %count.7307 to i64
  %arrayidx148 = getelementptr inbounds [16 x i32]* @loop_char, i64 0, i64 %idxprom147
  store i32 %28, i32* %arrayidx148, align 4, !tbaa !3
  br i1 %cmp121299, label %for.body151.lr.ph, label %for.end162

for.body151.lr.ph:                                ; preds = %if.then146
  %29 = mul i64 %idxprom147, 6
  %scevgep345 = getelementptr [3 x [16 x [6 x i32]]]* @loop_table, i64 0, i64 %indvars.iv349, i64 0, i64 %29
  %scevgep345346 = bitcast i32* %scevgep345 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep345346, i8* %vec347, i64 %7, i32 8, i1 false)
  br label %for.end162

for.end162:                                       ; preds = %for.body151.lr.ph, %if.then146
  %inc163 = add nsw i32 %count.7307, 1
  br label %if.end164

if.end164:                                        ; preds = %for.end162, %for.end144
  %count.8 = phi i32 [ %inc163, %for.end162 ], [ %count.7307, %for.end144 ]
  %cmp165 = icmp sgt i32 %count.8, 16
  br i1 %cmp165, label %if.then166, label %if.end171

if.then166:                                       ; preds = %if.end164
  %30 = load i32* @this_node, align 4, !tbaa !3
  %cmp167 = icmp eq i32 %30, 0
  br i1 %cmp167, label %if.then168, label %if.end170

if.then168:                                       ; preds = %if.then166
  %puts291 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str14, i64 0, i64 0))
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %if.then166
  call void @exit(i32 0) #7
  unreachable

if.end171:                                        ; preds = %if.end164
  store i32 %count.8, i32* %arrayidx173, align 4, !tbaa !3
  %inc176 = add nsw i32 %19, 1
  store i32 %inc176, i32* %arrayidx89, align 4, !tbaa !3
  %cmp92 = icmp slt i32 %inc176, 2
  br i1 %cmp92, label %for.cond94.preheader, label %for.inc178

for.inc178:                                       ; preds = %if.end171
  %inc180 = add nsw i32 %18, 1
  store i32 %inc180, i32* %arrayidx84, align 8, !tbaa !3
  %cmp87 = icmp slt i32 %inc180, 2
  br i1 %cmp87, label %for.body88, label %for.inc182

for.inc182:                                       ; preds = %for.inc178
  %inc184 = add nsw i32 %17, 1
  store i32 %inc184, i32* %arrayidx79, align 4, !tbaa !3
  %cmp82 = icmp slt i32 %inc184, 2
  br i1 %cmp82, label %for.body83, label %for.inc186

for.inc186:                                       ; preds = %for.inc182
  %31 = load i32* %arrayidx74, align 16, !tbaa !3
  %inc188 = add nsw i32 %31, 1
  store i32 %inc188, i32* %arrayidx74, align 16, !tbaa !3
  %cmp77 = icmp slt i32 %inc188, 2
  br i1 %cmp77, label %for.body78, label %for.inc191

for.inc191:                                       ; preds = %for.inc186, %land.lhs.true, %for.body50
  %32 = phi i32 [ %14, %land.lhs.true ], [ %11, %for.body50 ], [ %14, %for.inc186 ]
  %33 = phi i32 [ %16, %land.lhs.true ], [ %storemerge285315, %for.body50 ], [ %16, %for.inc186 ]
  %count.9 = phi i32 [ %count.3316, %land.lhs.true ], [ %count.3316, %for.body50 ], [ %count.8, %for.inc186 ]
  %inc193 = add nsw i32 %33, 1
  store i32 %inc193, i32* %arrayidx46, align 4, !tbaa !3
  %cmp49 = icmp slt i32 %inc193, 4
  br i1 %cmp49, label %for.body50, label %for.inc195

for.inc195:                                       ; preds = %for.inc191
  %inc197 = add nsw i32 %32, 1
  store i32 %inc197, i32* %arrayidx41, align 8, !tbaa !3
  %cmp44 = icmp slt i32 %inc197, 4
  br i1 %cmp44, label %for.body45, label %for.inc199

for.inc199:                                       ; preds = %for.inc195
  %inc201 = add nsw i32 %9, 1
  store i32 %inc201, i32* %arrayidx36, align 4, !tbaa !3
  %cmp39 = icmp slt i32 %inc201, 4
  br i1 %cmp39, label %for.body40, label %for.inc203

for.inc203:                                       ; preds = %for.inc199
  %inc205 = add nsw i32 %8, 1
  store i32 %inc205, i32* %arrayidx31, align 16, !tbaa !3
  %cmp34 = icmp slt i32 %inc205, 4
  br i1 %cmp34, label %for.body35, label %for.inc207

for.inc207:                                       ; preds = %for.inc203
  %indvars.iv.next350 = add i64 %indvars.iv349, 1
  %34 = trunc i64 %indvars.iv.next350 to i32
  %cmp27 = icmp slt i32 %34, 3
  br i1 %cmp27, label %for.body28, label %for.end209

for.end209:                                       ; preds = %for.inc207
  %35 = load i32* @this_node, align 4, !tbaa !3
  %cmp210 = icmp eq i32 %35, 0
  br i1 %cmp210, label %if.then211, label %for.body219

if.then211:                                       ; preds = %for.end209
  %puts = call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str, i64 0, i64 0))
  br label %for.body219thread-pre-split

for.body219thread-pre-split:                      ; preds = %for.inc230, %if.then211
  %indvars.iv.ph = phi i64 [ 0, %if.then211 ], [ %indvars.iv.next, %for.inc230 ]
  %.pr = load i32* @this_node, align 4, !tbaa !3
  br label %for.body219

for.body219:                                      ; preds = %for.body219thread-pre-split, %for.end209
  %36 = phi i32 [ %.pr, %for.body219thread-pre-split ], [ %35, %for.end209 ]
  %indvars.iv = phi i64 [ %indvars.iv.ph, %for.body219thread-pre-split ], [ 0, %for.end209 ]
  %cmp220 = icmp eq i32 %36, 0
  br i1 %cmp220, label %if.then221, label %for.inc230

if.then221:                                       ; preds = %for.body219
  %arrayidx225 = getelementptr inbounds [3 x [1 x double]]* @loop_coeff, i64 0, i64 %indvars.iv, i64 0
  %37 = load double* %arrayidx225, align 8, !tbaa !0
  %arrayidx227 = getelementptr inbounds [3 x i32]* @loop_num, i64 0, i64 %indvars.iv
  %38 = load i32* %arrayidx227, align 4, !tbaa !3
  %39 = trunc i64 %indvars.iv to i32
  %call228 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str4, i64 0, i64 0), i32 %39, i32 0, double %37, i32 %38) #5
  br label %for.inc230

for.inc230:                                       ; preds = %for.body219, %if.then221
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end235, label %for.body219thread-pre-split

for.end235:                                       ; preds = %for.inc230
  ret void
}

; Function Attrs: nounwind optsize
declare double @log(double) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @char_num(i32* nocapture %dig, i32* nocapture %chr, i32 %length) #0 {
entry:
  %bdig = alloca [6 x i32], align 16
  %sub = add i32 %length, -1
  %cmp139 = icmp sgt i32 %sub, 0
  br i1 %cmp139, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %tenl.0141 = phi i32 [ %mul, %for.body ], [ 1, %entry ]
  %j.0140 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %mul = mul nsw i32 %tenl.0141, 10
  %inc = add nsw i32 %j.0140, 1
  %exitcond156 = icmp eq i32 %inc, %sub
  br i1 %exitcond156, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %tenl.0.lcssa = phi i32 [ 1, %entry ], [ %mul, %for.body ]
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32* %dig, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !3
  store i32 %0, i32* %chr, align 4, !tbaa !3
  %sub2 = add i32 %length, -2
  %cmp4136 = icmp sgt i32 %sub2, -1
  br i1 %cmp4136, label %for.body5.lr.ph, label %for.cond12.preheader

for.body5.lr.ph:                                  ; preds = %for.end
  %1 = sext i32 %sub2 to i64
  br label %for.body5

for.cond12.preheader:                             ; preds = %for.body5, %for.end
  %2 = phi i32 [ %0, %for.end ], [ %add, %for.body5 ]
  br i1 %cmp139, label %for.body14, label %for.cond27.preheader

for.body5:                                        ; preds = %for.body5.lr.ph, %for.body5
  %indvars.iv153 = phi i64 [ %1, %for.body5.lr.ph ], [ %indvars.iv.next154, %for.body5 ]
  %3 = phi i32 [ %0, %for.body5.lr.ph ], [ %add, %for.body5 ]
  %mul6 = mul nsw i32 %3, 10
  %arrayidx8 = getelementptr inbounds i32* %dig, i64 %indvars.iv153
  %4 = load i32* %arrayidx8, align 4, !tbaa !3
  %add = add nsw i32 %4, %mul6
  store i32 %add, i32* %chr, align 4, !tbaa !3
  %5 = trunc i64 %indvars.iv153 to i32
  %cmp4 = icmp sgt i32 %5, 0
  %indvars.iv.next154 = add i64 %indvars.iv153, -1
  br i1 %cmp4, label %for.body5, label %for.cond12.preheader

for.cond27.preheader:                             ; preds = %if.end, %for.cond12.preheader
  %6 = phi i32 [ %2, %for.cond12.preheader ], [ %9, %if.end ]
  %cmp28131 = icmp sgt i32 %length, 0
  br i1 %cmp28131, label %for.body29, label %for.end39

for.body14:                                       ; preds = %for.cond12.preheader, %if.end
  %7 = phi i32 [ %9, %if.end ], [ %2, %for.cond12.preheader ]
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %if.end ], [ %idxprom, %for.cond12.preheader ]
  %old.0135 = phi i32 [ %add22, %if.end ], [ %2, %for.cond12.preheader ]
  %j.2134 = phi i32 [ %dec25, %if.end ], [ %sub, %for.cond12.preheader ]
  %arrayidx16 = getelementptr inbounds i32* %dig, i64 %indvars.iv150
  %8 = load i32* %arrayidx16, align 4, !tbaa !3
  %mul17 = mul nsw i32 %8, %tenl.0.lcssa
  %sub18 = sub nsw i32 %old.0135, %mul17
  %mul19 = mul nsw i32 %sub18, 10
  %add22 = add nsw i32 %mul19, %8
  %cmp23 = icmp slt i32 %add22, %7
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body14
  store i32 %add22, i32* %chr, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body14
  %9 = phi i32 [ %add22, %if.then ], [ %7, %for.body14 ]
  %dec25 = add nsw i32 %j.2134, -1
  %cmp13 = icmp sgt i32 %dec25, 0
  %indvars.iv.next151 = add i64 %indvars.iv150, -1
  br i1 %cmp13, label %for.body14, label %for.cond27.preheader

for.body29:                                       ; preds = %for.cond27.preheader, %for.body29
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %for.body29 ], [ 0, %for.cond27.preheader ]
  %10 = trunc i64 %indvars.iv148 to i32
  %sub31 = sub i32 %sub, %10
  %idxprom32 = sext i32 %sub31 to i64
  %arrayidx33 = getelementptr inbounds i32* %dig, i64 %idxprom32
  %11 = load i32* %arrayidx33, align 4, !tbaa !3
  %sub34 = sub nsw i32 7, %11
  %arrayidx36 = getelementptr inbounds [6 x i32]* %bdig, i64 0, i64 %indvars.iv148
  store i32 %sub34, i32* %arrayidx36, align 4, !tbaa !3
  %indvars.iv.next149 = add i64 %indvars.iv148, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next149 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %length
  br i1 %exitcond, label %for.cond27.for.end39_crit_edge, label %for.body29

for.cond27.for.end39_crit_edge:                   ; preds = %for.body29
  %arrayidx42.phi.trans.insert = getelementptr inbounds [6 x i32]* %bdig, i64 0, i64 %idxprom
  %.pre = load i32* %arrayidx42.phi.trans.insert, align 4, !tbaa !3
  br label %for.end39

for.end39:                                        ; preds = %for.cond27.preheader, %for.cond27.for.end39_crit_edge
  %12 = phi i32 [ %.pre, %for.cond27.for.end39_crit_edge ], [ undef, %for.cond27.preheader ]
  br i1 %cmp4136, label %for.body46.lr.ph, label %for.end53

for.body46.lr.ph:                                 ; preds = %for.end39
  %13 = sext i32 %sub2 to i64
  br label %for.body46

for.body46:                                       ; preds = %for.body46.lr.ph, %for.body46
  %indvars.iv145 = phi i64 [ %13, %for.body46.lr.ph ], [ %indvars.iv.next146, %for.body46 ]
  %old.1130 = phi i32 [ %12, %for.body46.lr.ph ], [ %add50, %for.body46 ]
  %mul47 = mul nsw i32 %old.1130, 10
  %arrayidx49 = getelementptr inbounds [6 x i32]* %bdig, i64 0, i64 %indvars.iv145
  %14 = load i32* %arrayidx49, align 4, !tbaa !3
  %add50 = add nsw i32 %14, %mul47
  %15 = trunc i64 %indvars.iv145 to i32
  %cmp45 = icmp sgt i32 %15, 0
  %indvars.iv.next146 = add i64 %indvars.iv145, -1
  br i1 %cmp45, label %for.body46, label %for.end53

for.end53:                                        ; preds = %for.body46, %for.end39
  %old.1.lcssa = phi i32 [ %12, %for.end39 ], [ %add50, %for.body46 ]
  %cmp54 = icmp slt i32 %old.1.lcssa, %6
  br i1 %cmp54, label %if.then55, label %for.cond58.preheader

if.then55:                                        ; preds = %for.end53
  store i32 %old.1.lcssa, i32* %chr, align 4, !tbaa !3
  br label %for.cond58.preheader

for.cond58.preheader:                             ; preds = %if.then55, %for.end53
  %16 = phi i32 [ %old.1.lcssa, %if.then55 ], [ %6, %for.end53 ]
  br i1 %cmp139, label %for.body60, label %for.end74

for.body60:                                       ; preds = %for.cond58.preheader, %if.end71.for.body60_crit_edge
  %17 = phi i32 [ %.pre157, %if.end71.for.body60_crit_edge ], [ %12, %for.cond58.preheader ]
  %18 = phi i32 [ %19, %if.end71.for.body60_crit_edge ], [ %16, %for.cond58.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end71.for.body60_crit_edge ], [ %idxprom, %for.cond58.preheader ]
  %old.2127 = phi i32 [ %add68, %if.end71.for.body60_crit_edge ], [ %old.1.lcssa, %for.cond58.preheader ]
  %j.5126 = phi i32 [ %dec73, %if.end71.for.body60_crit_edge ], [ %sub, %for.cond58.preheader ]
  %mul63 = mul nsw i32 %17, %tenl.0.lcssa
  %sub64 = sub nsw i32 %old.2127, %mul63
  %mul65 = mul nsw i32 %sub64, 10
  %add68 = add nsw i32 %mul65, %17
  %cmp69 = icmp slt i32 %add68, %18
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %for.body60
  store i32 %add68, i32* %chr, align 4, !tbaa !3
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %for.body60
  %19 = phi i32 [ %add68, %if.then70 ], [ %18, %for.body60 ]
  %dec73 = add nsw i32 %j.5126, -1
  %cmp59 = icmp sgt i32 %dec73, 0
  %indvars.iv.next = add i64 %indvars.iv, -1
  br i1 %cmp59, label %if.end71.for.body60_crit_edge, label %for.end74

if.end71.for.body60_crit_edge:                    ; preds = %if.end71
  %arrayidx62.phi.trans.insert = getelementptr inbounds [6 x i32]* %bdig, i64 0, i64 %indvars.iv.next
  %.pre157 = load i32* %arrayidx62.phi.trans.insert, align 4, !tbaa !3
  br label %for.body60

for.end74:                                        ; preds = %if.end71, %for.cond58.preheader
  ret void
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define double @imp_gauge_action() #0 {
entry:
  %g_action = alloca double, align 8
  store double 0.000000e+00, double* %g_action, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.inc32, %entry
  %indvars.iv58 = phi i64 [ 0, %entry ], [ %indvars.iv.next59, %for.inc32 ]
  %arrayidx = getelementptr inbounds [3 x i32]* @loop_length, i64 0, i64 %indvars.iv58
  %0 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds [3 x i32]* @loop_num, i64 0, i64 %indvars.iv58
  %1 = load i32* %arrayidx3, align 4, !tbaa !3
  %cmp455 = icmp sgt i32 %1, 0
  br i1 %cmp455, label %for.body5.lr.ph, label %for.inc32

for.body5.lr.ph:                                  ; preds = %for.body
  %arrayidx15 = getelementptr inbounds [3 x [1 x double]]* @loop_coeff, i64 0, i64 %indvars.iv58, i64 0
  br label %for.body5

for.body5:                                        ; preds = %for.body5.lr.ph, %for.inc29
  %indvars.iv = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next, %for.inc29 ]
  %arraydecay = getelementptr inbounds [3 x [16 x [6 x i32]]]* @loop_table, i64 0, i64 %indvars.iv58, i64 %indvars.iv, i64 0
  call void @path_product(i32* %arraydecay, i32 %0) #5
  %2 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp1152 = icmp sgt i32 %2, 0
  br i1 %cmp1152, label %for.body12.lr.ph, label %for.inc29

for.body12.lr.ph:                                 ; preds = %for.body5
  %3 = load %struct.site** @lattice, align 8, !tbaa !4
  br label %for.body12

for.body12:                                       ; preds = %for.body12.lr.ph, %for.body12
  %i.054 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc27, %for.body12 ]
  %s.053 = phi %struct.site* [ %3, %for.body12.lr.ph ], [ %incdec.ptr, %for.body12 ]
  %tempmat1 = getelementptr inbounds %struct.site* %s.053, i64 0, i32 18
  %call = call { double, double } @trace_su3(%struct.su3_matrix* %tempmat1) #5
  %4 = extractvalue { double, double } %call, 0
  %sub = fsub double 3.000000e+00, %4
  %5 = load double* %arrayidx15, align 8, !tbaa !0
  %mul = fmul double %5, %sub
  %6 = load double* %g_action, align 8, !tbaa !0
  %add25 = fadd double %6, %mul
  store double %add25, double* %g_action, align 8, !tbaa !0
  %inc27 = add nsw i32 %i.054, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.053, i64 1
  %7 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp11 = icmp slt i32 %inc27, %7
  br i1 %cmp11, label %for.body12, label %for.inc29

for.inc29:                                        ; preds = %for.body12, %for.body5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = load i32* %arrayidx3, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %9, %8
  br i1 %cmp4, label %for.body5, label %for.inc32

for.inc32:                                        ; preds = %for.inc29, %for.body
  %indvars.iv.next59 = add i64 %indvars.iv58, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next59 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end34, label %for.body

for.end34:                                        ; preds = %for.inc32
  call void @g_doublesum(double* %g_action) #5
  %10 = load double* %g_action, align 8, !tbaa !0
  ret double %10
}

; Function Attrs: optsize
declare void @path_product(i32*, i32) #3

; Function Attrs: optsize
declare { double, double } @trace_su3(%struct.su3_matrix*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: optsize
declare void @g_doublesum(double*) #3

; Function Attrs: nounwind optsize uwtable
define void @imp_gauge_force(double %eps, i32 %mom_off) #0 {
entry:
  %tmat1 = alloca %struct.su3_matrix, align 8
  %tmat2 = alloca %struct.su3_matrix, align 8
  %dirs = alloca [6 x i32], align 16
  %path_dir = alloca [6 x i32], align 16
  %0 = bitcast %struct.su3_matrix* %tmat1 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #4
  %1 = bitcast %struct.su3_matrix* %tmat2 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #4
  %2 = load double* @beta, align 8, !tbaa !0
  %mul = fmul double %2, %eps
  %div = fdiv double %mul, 3.000000e+00
  %arraydecay = getelementptr inbounds [6 x i32]* %path_dir, i64 0, i64 0
  %idx.ext = sext i32 %mom_off to i64
  %.pre = load i32* @sites_on_node, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.inc150, %entry
  %3 = phi i32 [ %.pre, %entry ], [ %44, %for.inc150 ]
  %indvars.iv274 = phi i64 [ 0, %entry ], [ %indvars.iv.next275, %for.inc150 ]
  %cmp2221 = icmp sgt i32 %3, 0
  br i1 %cmp2221, label %for.cond4.preheader.lr.ph, label %for.cond18.loopexit

for.cond4.preheader.lr.ph:                        ; preds = %for.body
  %4 = load %struct.site** @lattice, align 8, !tbaa !4
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond4.preheader.lr.ph, %for.inc15
  %i.0223 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %inc16, %for.inc15 ]
  %st.0222 = phi %struct.site* [ %4, %for.cond4.preheader.lr.ph ], [ %incdec.ptr, %for.inc15 ]
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc12, %for.cond4.preheader
  %indvars.iv246 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next247, %for.inc12 ]
  br label %for.body9

for.body9:                                        ; preds = %for.body9, %for.cond7.preheader
  %indvars.iv = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next, %for.body9 ]
  %call = call { double, double } @cmplx(double 0.000000e+00, double 0.000000e+00) #5
  %5 = extractvalue { double, double } %call, 0
  %6 = extractvalue { double, double } %call, 1
  %coerce.sroa.0.0.idx = getelementptr inbounds %struct.site* %st.0222, i64 0, i32 19, i32 0, i64 %indvars.iv246, i64 %indvars.iv, i32 0
  store double %5, double* %coerce.sroa.0.0.idx, align 8
  %coerce.sroa.1.8.idx153 = getelementptr inbounds %struct.site* %st.0222, i64 0, i32 19, i32 0, i64 %indvars.iv246, i64 %indvars.iv, i32 1
  store double %6, double* %coerce.sroa.1.8.idx153, align 8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc12, label %for.body9

for.inc12:                                        ; preds = %for.body9
  %indvars.iv.next247 = add i64 %indvars.iv246, 1
  %lftr.wideiv248 = trunc i64 %indvars.iv.next247 to i32
  %exitcond249 = icmp eq i32 %lftr.wideiv248, 3
  br i1 %exitcond249, label %for.inc15, label %for.cond7.preheader

for.inc15:                                        ; preds = %for.inc12
  %inc16 = add nsw i32 %i.0223, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %st.0222, i64 1
  %7 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %inc16, %7
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond18.loopexit

for.cond18.loopexit:                              ; preds = %for.inc15, %for.body
  %8 = phi i32 [ %3, %for.body ], [ %7, %for.inc15 ]
  %9 = sub nsw i64 7, %indvars.iv274
  %10 = add i64 %indvars.iv274, 7
  br label %for.body20

for.body20:                                       ; preds = %for.inc131, %for.cond18.loopexit
  %11 = phi i32 [ %8, %for.cond18.loopexit ], [ %39, %for.inc131 ]
  %indvars.iv270 = phi i64 [ 0, %for.cond18.loopexit ], [ %indvars.iv.next271, %for.inc131 ]
  %arrayidx22 = getelementptr inbounds [3 x i32]* @loop_length, i64 0, i64 %indvars.iv270
  %12 = load i32* %arrayidx22, align 4, !tbaa !3
  %arrayidx25 = getelementptr inbounds [3 x i32]* @loop_num, i64 0, i64 %indvars.iv270
  %13 = load i32* %arrayidx25, align 4, !tbaa !3
  %cmp26236 = icmp sgt i32 %13, 0
  br i1 %cmp26236, label %for.cond28.preheader.lr.ph, label %for.inc131

for.cond28.preheader.lr.ph:                       ; preds = %for.body20
  %cmp29224 = icmp sgt i32 %12, 0
  %sub60 = add nsw i32 %12, -1
  %arrayidx116 = getelementptr inbounds [3 x [1 x double]]* @loop_coeff, i64 0, i64 %indvars.iv270, i64 0
  %cmp95228 = icmp sgt i32 %sub60, 0
  %sub103 = add nsw i32 %12, -2
  br label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.cond28.preheader.lr.ph, %for.inc128
  %14 = phi i32 [ %13, %for.cond28.preheader.lr.ph ], [ %36, %for.inc128 ]
  %15 = phi i32 [ %11, %for.cond28.preheader.lr.ph ], [ %37, %for.inc128 ]
  %indvars.iv268 = phi i64 [ 0, %for.cond28.preheader.lr.ph ], [ %indvars.iv.next269, %for.inc128 ]
  br i1 %cmp29224, label %for.body30, label %for.inc128

for.body30:                                       ; preds = %for.cond28.preheader, %for.inc57
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %for.inc57 ], [ 0, %for.cond28.preheader ]
  %arrayidx36 = getelementptr inbounds [3 x [16 x [6 x i32]]]* @loop_table, i64 0, i64 %indvars.iv270, i64 %indvars.iv268, i64 %indvars.iv250
  %16 = load i32* %arrayidx36, align 4, !tbaa !3
  %cmp37 = icmp slt i32 %16, 4
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %for.body30
  %17 = trunc i64 %indvars.iv274 to i32
  %add = add nsw i32 %16, %17
  %rem = srem i32 %add, 4
  %arrayidx45 = getelementptr inbounds [6 x i32]* %dirs, i64 0, i64 %indvars.iv250
  store i32 %rem, i32* %arrayidx45, align 4, !tbaa !3
  br label %for.inc57

if.else:                                          ; preds = %for.body30
  %18 = trunc i64 %10 to i32
  %add52 = sub i32 %18, %16
  %rem53 = srem i32 %add52, 4
  %sub54 = sub nsw i32 7, %rem53
  %arrayidx56 = getelementptr inbounds [6 x i32]* %dirs, i64 0, i64 %indvars.iv250
  store i32 %sub54, i32* %arrayidx56, align 4, !tbaa !3
  br label %for.inc57

for.inc57:                                        ; preds = %if.then, %if.else
  %indvars.iv.next251 = add i64 %indvars.iv250, 1
  %lftr.wideiv252 = trunc i64 %indvars.iv.next251 to i32
  %exitcond253 = icmp eq i32 %lftr.wideiv252, %12
  br i1 %exitcond253, label %for.end59, label %for.body30

for.end59:                                        ; preds = %for.inc57
  br i1 %cmp29224, label %for.body63, label %for.inc128

for.body63:                                       ; preds = %for.end59, %for.inc125
  %19 = phi i32 [ %35, %for.inc125 ], [ %15, %for.end59 ]
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %for.inc125 ], [ 0, %for.end59 ]
  %arrayidx65 = getelementptr inbounds [6 x i32]* %dirs, i64 0, i64 %indvars.iv262
  %20 = load i32* %arrayidx65, align 4, !tbaa !3
  %21 = trunc i64 %indvars.iv274 to i32
  %cmp66 = icmp eq i32 %20, %21
  %22 = trunc i64 %9 to i32
  %cmp70 = icmp eq i32 %20, %22
  %or.cond = or i1 %cmp66, %cmp70
  br i1 %or.cond, label %if.then71, label %for.inc125

if.then71:                                        ; preds = %for.body63
  %cmp74 = icmp slt i32 %20, 4
  br i1 %cmp74, label %for.cond76.preheader, label %for.cond94.preheader

for.cond76.preheader:                             ; preds = %if.then71
  br i1 %cmp95228, label %for.body78.lr.ph, label %if.end89

for.body78.lr.ph:                                 ; preds = %for.cond76.preheader
  %23 = add i64 %indvars.iv262, 1
  br label %for.body78

for.body78:                                       ; preds = %for.body78, %for.body78.lr.ph
  %indvars.iv254 = phi i64 [ 0, %for.body78.lr.ph ], [ %indvars.iv.next255, %for.body78 ]
  %24 = trunc i64 %indvars.iv254 to i32
  %25 = trunc i64 %23 to i32
  %add80 = add i32 %25, %24
  %rem81 = srem i32 %add80, %12
  %idxprom82 = sext i32 %rem81 to i64
  %arrayidx83 = getelementptr inbounds [6 x i32]* %dirs, i64 0, i64 %idxprom82
  %26 = load i32* %arrayidx83, align 4, !tbaa !3
  %arrayidx85 = getelementptr inbounds [6 x i32]* %path_dir, i64 0, i64 %indvars.iv254
  store i32 %26, i32* %arrayidx85, align 4, !tbaa !3
  %indvars.iv.next255 = add i64 %indvars.iv254, 1
  %lftr.wideiv256 = trunc i64 %indvars.iv.next255 to i32
  %exitcond257 = icmp eq i32 %lftr.wideiv256, %sub60
  br i1 %exitcond257, label %if.end89, label %for.body78

if.end89:                                         ; preds = %for.cond76.preheader, %for.body78
  %cmp92.not = icmp slt i32 %20, 4
  %cmp95228.not = xor i1 %cmp95228, true
  %brmerge = or i1 %cmp92.not, %cmp95228.not
  br i1 %brmerge, label %if.end110, label %for.body96.lr.ph

for.cond94.preheader:                             ; preds = %if.then71
  br i1 %cmp95228, label %for.body96.lr.ph, label %if.end110

for.body96.lr.ph:                                 ; preds = %if.end89, %for.cond94.preheader
  %27 = add i64 %indvars.iv262, 1
  br label %for.body96

for.body96:                                       ; preds = %for.body96, %for.body96.lr.ph
  %indvars.iv258 = phi i64 [ 0, %for.body96.lr.ph ], [ %indvars.iv.next259, %for.body96 ]
  %28 = trunc i64 %indvars.iv258 to i32
  %29 = trunc i64 %27 to i32
  %add98 = add i32 %29, %28
  %rem99 = srem i32 %add98, %12
  %idxprom100 = sext i32 %rem99 to i64
  %arrayidx101 = getelementptr inbounds [6 x i32]* %dirs, i64 0, i64 %idxprom100
  %30 = load i32* %arrayidx101, align 4, !tbaa !3
  %sub102 = sub nsw i32 7, %30
  %sub104 = sub i32 %sub103, %28
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds [6 x i32]* %path_dir, i64 0, i64 %idxprom105
  store i32 %sub102, i32* %arrayidx106, align 4, !tbaa !3
  %indvars.iv.next259 = add i64 %indvars.iv258, 1
  %lftr.wideiv260 = trunc i64 %indvars.iv.next259 to i32
  %exitcond261 = icmp eq i32 %lftr.wideiv260, %sub60
  br i1 %exitcond261, label %if.end110, label %for.body96

if.end110:                                        ; preds = %if.end89, %for.cond94.preheader, %for.body96
  call void @path_product(i32* %arraydecay, i32 %sub60) #5
  %31 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp112230 = icmp sgt i32 %31, 0
  br i1 %cmp112230, label %for.body113.lr.ph, label %for.inc125

for.body113.lr.ph:                                ; preds = %if.end110
  %32 = load %struct.site** @lattice, align 8, !tbaa !4
  br label %for.body113

for.body113:                                      ; preds = %for.body113.lr.ph, %for.body113
  %i.1232 = phi i32 [ 0, %for.body113.lr.ph ], [ %inc120, %for.body113 ]
  %st.1231 = phi %struct.site* [ %32, %for.body113.lr.ph ], [ %incdec.ptr121, %for.body113 ]
  %tempmat1 = getelementptr inbounds %struct.site* %st.1231, i64 0, i32 18
  call void @su3_adjoint(%struct.su3_matrix* %tempmat1, %struct.su3_matrix* %tmat1) #5
  %33 = load double* %arrayidx116, align 8, !tbaa !0
  %staple117 = getelementptr inbounds %struct.site* %st.1231, i64 0, i32 19
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %staple117, %struct.su3_matrix* %tmat1, double %33, %struct.su3_matrix* %staple117) #5
  %inc120 = add nsw i32 %i.1232, 1
  %incdec.ptr121 = getelementptr inbounds %struct.site* %st.1231, i64 1
  %34 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp112 = icmp slt i32 %inc120, %34
  br i1 %cmp112, label %for.body113, label %for.inc125

for.inc125:                                       ; preds = %if.end110, %for.body113, %for.body63
  %35 = phi i32 [ %19, %for.body63 ], [ %31, %if.end110 ], [ %34, %for.body113 ]
  %indvars.iv.next263 = add i64 %indvars.iv262, 1
  %lftr.wideiv266 = trunc i64 %indvars.iv.next263 to i32
  %exitcond267 = icmp eq i32 %lftr.wideiv266, %12
  br i1 %exitcond267, label %for.cond61.for.inc128_crit_edge, label %for.body63

for.cond61.for.inc128_crit_edge:                  ; preds = %for.inc125
  %.pre280 = load i32* %arrayidx25, align 4, !tbaa !3
  br label %for.inc128

for.inc128:                                       ; preds = %for.cond28.preheader, %for.end59, %for.cond61.for.inc128_crit_edge
  %36 = phi i32 [ %.pre280, %for.cond61.for.inc128_crit_edge ], [ %14, %for.end59 ], [ %14, %for.cond28.preheader ]
  %37 = phi i32 [ %35, %for.cond61.for.inc128_crit_edge ], [ %15, %for.end59 ], [ %15, %for.cond28.preheader ]
  %indvars.iv.next269 = add i64 %indvars.iv268, 1
  %38 = trunc i64 %indvars.iv.next269 to i32
  %cmp26 = icmp slt i32 %38, %36
  br i1 %cmp26, label %for.cond28.preheader, label %for.inc131

for.inc131:                                       ; preds = %for.inc128, %for.body20
  %39 = phi i32 [ %11, %for.body20 ], [ %37, %for.inc128 ]
  %indvars.iv.next271 = add i64 %indvars.iv270, 1
  %lftr.wideiv272 = trunc i64 %indvars.iv.next271 to i32
  %exitcond273 = icmp eq i32 %lftr.wideiv272, 3
  br i1 %exitcond273, label %for.end133, label %for.body20

for.end133:                                       ; preds = %for.inc131
  %cmp135242 = icmp sgt i32 %39, 0
  br i1 %cmp135242, label %for.body136.lr.ph, label %for.inc150

for.body136.lr.ph:                                ; preds = %for.end133
  %40 = load %struct.site** @lattice, align 8, !tbaa !4
  br label %for.body136

for.body136:                                      ; preds = %for.body136.lr.ph, %for.body136
  %i.2244 = phi i32 [ 0, %for.body136.lr.ph ], [ %inc147, %for.body136 ]
  %st.2243 = phi %struct.site* [ %40, %for.body136.lr.ph ], [ %incdec.ptr148, %for.body136 ]
  %arrayidx138 = getelementptr inbounds %struct.site* %st.2243, i64 0, i32 8, i64 %indvars.iv274
  %staple139 = getelementptr inbounds %struct.site* %st.2243, i64 0, i32 19
  call void @mult_su3_na(%struct.su3_matrix* %arrayidx138, %struct.su3_matrix* %staple139, %struct.su3_matrix* %tmat1) #5
  %41 = bitcast %struct.site* %st.2243 to i8*
  %add.ptr = getelementptr inbounds i8* %41, i64 %idx.ext
  %42 = bitcast i8* %add.ptr to %struct.anti_hermitmat*
  %arrayidx141 = getelementptr inbounds %struct.anti_hermitmat* %42, i64 %indvars.iv274
  call void @uncompress_anti_hermitian(%struct.anti_hermitmat* %arrayidx141, %struct.su3_matrix* %tmat2) #5
  call void @scalar_mult_sub_su3_matrix(%struct.su3_matrix* %tmat2, %struct.su3_matrix* %tmat1, double %div, %struct.su3_matrix* %staple139) #5
  call void @make_anti_hermitian(%struct.su3_matrix* %staple139, %struct.anti_hermitmat* %arrayidx141) #5
  %inc147 = add nsw i32 %i.2244, 1
  %incdec.ptr148 = getelementptr inbounds %struct.site* %st.2243, i64 1
  %43 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp135 = icmp slt i32 %inc147, %43
  br i1 %cmp135, label %for.body136, label %for.inc150

for.inc150:                                       ; preds = %for.body136, %for.end133
  %44 = phi i32 [ %39, %for.end133 ], [ %43, %for.body136 ]
  %indvars.iv.next275 = add i64 %indvars.iv274, 1
  %lftr.wideiv278 = trunc i64 %indvars.iv.next275 to i32
  %exitcond279 = icmp eq i32 %lftr.wideiv278, 4
  br i1 %exitcond279, label %for.end152, label %for.body

for.end152:                                       ; preds = %for.inc150
  call void @llvm.lifetime.end(i64 144, i8* %1) #4
  call void @llvm.lifetime.end(i64 144, i8* %0) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare { double, double } @cmplx(double, double) #3

; Function Attrs: optsize
declare void @su3_adjoint(%struct.su3_matrix*, %struct.su3_matrix*) #3

; Function Attrs: optsize
declare void @scalar_mult_add_su3_matrix(%struct.su3_matrix*, %struct.su3_matrix*, double, %struct.su3_matrix*) #3

; Function Attrs: optsize
declare void @mult_su3_na(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #3

; Function Attrs: optsize
declare void @uncompress_anti_hermitian(%struct.anti_hermitmat*, %struct.su3_matrix*) #3

; Function Attrs: optsize
declare void @scalar_mult_sub_su3_matrix(%struct.su3_matrix*, %struct.su3_matrix*, double, %struct.su3_matrix*) #3

; Function Attrs: optsize
declare void @make_anti_hermitian(%struct.su3_matrix*, %struct.anti_hermitmat*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @g_measure() #0 {
entry:
  %ss_plaquette = alloca double, align 8
  %st_plaquette = alloca double, align 8
  %average = alloca [1 x double], align 8
  %total_action = alloca double, align 8
  call void @d_plaquette(double* %ss_plaquette, double* %st_plaquette) #5
  %0 = load i32* @this_node, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double* %ss_plaquette, align 8, !tbaa !0
  %2 = load double* %st_plaquette, align 8, !tbaa !0
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0), double %1, double %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call { double, double } @ploop() #5
  %3 = load i32* @this_node, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = extractvalue { double, double } %call1, 1
  %5 = extractvalue { double, double } %call1, 0
  %call4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), double %5, double %4) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  store double 0.000000e+00, double* %total_action, align 8, !tbaa !0
  %arraydecay52 = getelementptr inbounds [1 x double]* %average, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.inc100, %if.end5
  %indvars.iv168 = phi i64 [ 0, %if.end5 ], [ %indvars.iv.next169, %for.inc100 ]
  %arrayidx = getelementptr inbounds [3 x i32]* @loop_length, i64 0, i64 %indvars.iv168
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds [3 x i32]* @loop_num, i64 0, i64 %indvars.iv168
  %7 = load i32* %arrayidx9, align 4, !tbaa !3
  %cmp10160 = icmp sgt i32 %7, 0
  br i1 %cmp10160, label %for.body11.lr.ph, label %for.inc100

for.body11.lr.ph:                                 ; preds = %for.body
  %cmp75156 = icmp sgt i32 %6, 0
  %arrayidx31 = getelementptr inbounds [3 x [1 x double]]* @loop_coeff, i64 0, i64 %indvars.iv168, i64 0
  br label %for.end

for.end:                                          ; preds = %for.body11.lr.ph, %for.inc97
  %indvars.iv166 = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next167, %for.inc97 ]
  %arraydecay = getelementptr inbounds [3 x [16 x [6 x i32]]]* @loop_table, i64 0, i64 %indvars.iv168, i64 %indvars.iv166, i64 0
  call void @path_product(i32* %arraydecay, i32 %6) #5
  %arrayidx20 = getelementptr inbounds [1 x double]* %average, i64 0, i64 0
  store double 0.000000e+00, double* %arrayidx20, align 8, !tbaa !0
  %8 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp22153 = icmp sgt i32 %8, 0
  br i1 %cmp22153, label %for.body23.lr.ph, label %for.end51

for.body23.lr.ph:                                 ; preds = %for.end
  %9 = load %struct.site** @lattice, align 8, !tbaa !4
  br label %for.body23

for.body23:                                       ; preds = %for.body23.lr.ph, %for.body23
  %i.0155 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc50, %for.body23 ]
  %s.0154 = phi %struct.site* [ %9, %for.body23.lr.ph ], [ %incdec.ptr, %for.body23 ]
  %tempmat1 = getelementptr inbounds %struct.site* %s.0154, i64 0, i32 18
  %call24 = call { double, double } @trace_su3(%struct.su3_matrix* %tempmat1) #5
  %10 = extractvalue { double, double } %call24, 0
  %11 = load double* %arraydecay52, align 8, !tbaa !0
  %add = fadd double %11, %10
  store double %add, double* %arraydecay52, align 8, !tbaa !0
  %sub = fsub double 3.000000e+00, %10
  %12 = load double* %arrayidx31, align 8, !tbaa !0
  %mul = fmul double %12, %sub
  %13 = load double* %total_action, align 8, !tbaa !0
  %add32 = fadd double %13, %mul
  store double %add32, double* %total_action, align 8, !tbaa !0
  %inc50 = add nsw i32 %i.0155, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.0154, i64 1
  %14 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp22 = icmp slt i32 %inc50, %14
  br i1 %cmp22, label %for.body23, label %for.end51

for.end51:                                        ; preds = %for.body23, %for.end
  call void @g_vecdoublesum(double* %arraydecay52, i32 1) #5
  %15 = load i32* @this_node, align 4, !tbaa !3
  %cmp53 = icmp eq i32 %15, 0
  br i1 %cmp53, label %if.then54, label %for.inc66

if.then54:                                        ; preds = %for.end51
  %16 = trunc i64 %indvars.iv166 to i32
  %17 = trunc i64 %indvars.iv168 to i32
  %call55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str7, i64 0, i64 0), i32 %17, i32 %16, i32 %6) #5
  br label %for.cond57

for.cond57:                                       ; preds = %if.then54, %for.inc66
  %rep.2.ph = phi i32 [ 0, %if.then54 ], [ %inc67, %for.inc66 ]
  %.pr = load i32* @this_node, align 4, !tbaa !3
  %cmp58 = icmp slt i32 %rep.2.ph, 1
  %cmp60 = icmp eq i32 %.pr, 0
  br i1 %cmp58, label %for.body59, label %for.end68

for.body59:                                       ; preds = %for.cond57
  br i1 %cmp60, label %if.then61, label %for.inc66

if.then61:                                        ; preds = %for.body59
  %idxprom62 = sext i32 %rep.2.ph to i64
  %arrayidx63 = getelementptr inbounds [1 x double]* %average, i64 0, i64 %idxprom62
  %18 = load double* %arrayidx63, align 8, !tbaa !0
  %19 = load i32* @volume, align 4, !tbaa !3
  %conv = sitofp i32 %19 to double
  %div = fdiv double %18, %conv
  %call64 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), double %div) #5
  br label %for.inc66

for.inc66:                                        ; preds = %for.end51, %for.body59, %if.then61
  %rep.2175178 = phi i32 [ %rep.2.ph, %for.body59 ], [ %rep.2.ph, %if.then61 ], [ 0, %for.end51 ]
  %inc67 = add nsw i32 %rep.2175178, 1
  br label %for.cond57

for.end68:                                        ; preds = %for.cond57
  br i1 %cmp60, label %if.then71, label %for.cond74.preheader

if.then71:                                        ; preds = %for.end68
  %call72 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0)) #5
  %.pre = load i32* @this_node, align 4, !tbaa !3
  br label %for.cond74.preheader

for.cond74.preheader:                             ; preds = %if.then71, %for.end68
  %20 = phi i32 [ %.pre, %if.then71 ], [ %.pr, %for.end68 ]
  %cmp78157 = icmp eq i32 %20, 0
  br i1 %cmp75156, label %for.body77, label %for.end91

for.body77:                                       ; preds = %for.cond74.preheader, %for.inc89
  %21 = phi i32 [ %23, %for.inc89 ], [ %20, %for.cond74.preheader ]
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %for.inc89 ], [ 0, %for.cond74.preheader ]
  %cmp78159 = phi i1 [ %cmp78, %for.inc89 ], [ %cmp78157, %for.cond74.preheader ]
  br i1 %cmp78159, label %if.then80, label %for.inc89

if.then80:                                        ; preds = %for.body77
  %arrayidx86 = getelementptr inbounds [3 x [16 x [6 x i32]]]* @loop_table, i64 0, i64 %indvars.iv168, i64 %indvars.iv166, i64 %indvars.iv164
  %22 = load i32* %arrayidx86, align 4, !tbaa !3
  %call87 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32 %22) #5
  %.pre172 = load i32* @this_node, align 4, !tbaa !3
  br label %for.inc89

for.inc89:                                        ; preds = %for.body77, %if.then80
  %23 = phi i32 [ %21, %for.body77 ], [ %.pre172, %if.then80 ]
  %indvars.iv.next165 = add i64 %indvars.iv164, 1
  %cmp78 = icmp eq i32 %23, 0
  %lftr.wideiv = trunc i64 %indvars.iv.next165 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond, label %for.end91, label %for.body77

for.end91:                                        ; preds = %for.inc89, %for.cond74.preheader
  %cmp78.lcssa = phi i1 [ %cmp78157, %for.cond74.preheader ], [ %cmp78, %for.inc89 ]
  br i1 %cmp78.lcssa, label %if.then94, label %for.inc97

if.then94:                                        ; preds = %for.end91
  %puts = call i32 @puts(i8* getelementptr inbounds ([3 x i8]* @str16, i64 0, i64 0))
  br label %for.inc97

for.inc97:                                        ; preds = %for.end91, %if.then94
  %indvars.iv.next167 = add i64 %indvars.iv166, 1
  %24 = load i32* %arrayidx9, align 4, !tbaa !3
  %25 = trunc i64 %indvars.iv.next167 to i32
  %cmp10 = icmp slt i32 %25, %24
  br i1 %cmp10, label %for.end, label %for.inc100

for.inc100:                                       ; preds = %for.inc97, %for.body
  %indvars.iv.next169 = add i64 %indvars.iv168, 1
  %lftr.wideiv170 = trunc i64 %indvars.iv.next169 to i32
  %exitcond171 = icmp eq i32 %lftr.wideiv170, 3
  br i1 %exitcond171, label %for.end102, label %for.body

for.end102:                                       ; preds = %for.inc100
  call void @g_doublesum(double* %total_action) #5
  %26 = load i32* @this_node, align 4, !tbaa !3
  %cmp103 = icmp eq i32 %26, 0
  br i1 %cmp103, label %if.end109, label %if.end114

if.end109:                                        ; preds = %for.end102
  %27 = load double* %total_action, align 8, !tbaa !0
  %28 = load i32* @volume, align 4, !tbaa !3
  %conv106 = sitofp i32 %28 to double
  %div107 = fdiv double %27, %conv106
  %call108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str12, i64 0, i64 0), double %div107) #5
  %.pr150 = load i32* @this_node, align 4, !tbaa !3
  %cmp110 = icmp eq i32 %.pr150, 0
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.end109
  %29 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %call113 = call i32 @fflush(%struct._IO_FILE* %29) #5
  br label %if.end114

if.end114:                                        ; preds = %for.end102, %if.then112, %if.end109
  ret void
}

; Function Attrs: optsize
declare void @d_plaquette(double*, double*) #3

; Function Attrs: optsize
declare { double, double } @ploop() #3

; Function Attrs: optsize
declare void @g_vecdoublesum(double*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @printpath(i32* nocapture %path, i32 %length) #0 {
entry:
  %0 = load i32* @this_node, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0)) #5
  br label %for.condthread-pre-split

for.condthread-pre-split:                         ; preds = %for.inc, %if.then
  %i.0.ph = phi i32 [ 0, %if.then ], [ %inc, %for.inc ]
  %.pr = load i32* @this_node, align 4, !tbaa !3
  br label %for.cond

for.cond:                                         ; preds = %for.condthread-pre-split, %entry
  %1 = phi i32 [ %.pr, %for.condthread-pre-split ], [ %0, %entry ]
  %i.0 = phi i32 [ %i.0.ph, %for.condthread-pre-split ], [ 0, %entry ]
  %cmp1 = icmp slt i32 %i.0, %length
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32* %path, i64 %idxprom
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32 %2) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then3
  %inc = add nsw i32 %i.0, 1
  br label %for.condthread-pre-split

for.end:                                          ; preds = %for.cond
  br i1 %cmp2, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.end
  %call8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), i32 %length) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.end
  ret void
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
