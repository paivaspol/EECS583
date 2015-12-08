; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/com_vanilla.c'
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
%struct.msg_tag = type { i32, i32, i8*, i32 }
%struct.double_complex = type { double, double }
%struct.wilson_vector = type { [4 x %struct.su3_vector] }

@neighbor = common global i32** null, align 8
@n_gathers = common global i32 0, align 4
@nx = external global i32
@ny = external global i32
@nz = external global i32
@nt = external global i32
@this_node = external global i32
@sites_on_node = external global i32
@.str2 = private unnamed_addr constant [38 x i8] c"NODE %d: no room for neighbor vector\0A\00", align 1
@lattice = external global %struct.site*
@.str4 = private unnamed_addr constant [38 x i8] c"It mapped %d %d %d %d to %d %d %d %d\0A\00", align 1
@.str7 = private unnamed_addr constant [47 x i8] c"It's square mapped %d %d %d %d to %d %d %d %d\0A\00", align 1
@even_sites_on_node = external global i32
@g_gather_flag = global i32 0, align 4
@stderr = external global %struct._IO_FILE*
@.str8 = private unnamed_addr constant [48 x i8] c"ERROR: node %d, two general_gathers() at once!\0A\00", align 1
@name = internal global [17 x i8] c"Scalar processor\00", align 16
@.str10 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str11 = private unnamed_addr constant [12 x i8] c"termination\00", align 1
@.str12 = private unnamed_addr constant [26 x i8] c"Termination: status = %d\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@str = private unnamed_addr constant [50 x i8] c"DUMMY! Your gather mapping is not its own inverse\00"
@str13 = private unnamed_addr constant [56 x i8] c"DUMMY! Your gather mapping does not obey claimed parity\00"
@str14 = private unnamed_addr constant [52 x i8] c"DUMMY! Your gather mapping does not stay in lattice\00"
@str15 = private unnamed_addr constant [37 x i8] c"Too many gathers! change MAX_GATHERS\00"
@str17 = private unnamed_addr constant [21 x i8] c"BOTCH: bad direction\00"
@str21 = private unnamed_addr constant [26 x i8] c"BOTCH: this never happens\00"

; Function Attrs: nounwind optsize readnone uwtable
define void @initialize_machine(i32 %argc, i8** nocapture %argv) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @make_nn_gathers() #1 {
entry:
  %i = alloca i32, align 4
  %call = call noalias i8* @calloc(i64 8, i64 8) #8
  %0 = bitcast i8* %call to i32**
  store i32** %0, i32*** @neighbor, align 8, !tbaa !0
  store i32 0, i32* @n_gathers, align 4, !tbaa !3
  store i32 0, i32* %i, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %call1 = call i32 @make_gather(void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)* @neighbor_coords_special, i32* %i, i32 1, i32 undef, i32 1) #9
  %1 = load i32* %i, align 4, !tbaa !3
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4, !tbaa !3
  %cmp = icmp slt i32 %inc, 4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %2 = load i32*** @neighbor, align 8, !tbaa !0
  %3 = bitcast i32** %2 to i8**
  call void @sort_eight_special(i8** %3) #9
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize uwtable
define i32 @make_gather(void (i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*)* nocapture %func, i32* %args, i32 %inverse, i32 %want_even_odd, i32 %parity_conserve) #1 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %t = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %z2 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %cmp = icmp eq i32 %inverse, 1
  %0 = load i32* @n_gathers, align 4, !tbaa !3
  %storemerge.v = select i1 %cmp, i32 2, i32 1
  %storemerge = add i32 %0, %storemerge.v
  store i32 %storemerge, i32* @n_gathers, align 4, !tbaa !3
  %cmp2 = icmp sgt i32 %storemerge, 32
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %entry
  %1 = load i32* @this_node, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  %puts288 = call i32 @puts(i8* getelementptr inbounds ([37 x i8]* @str15, i64 0, i64 0))
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3
  call void @exit(i32 1) #10
  unreachable

if.end7:                                          ; preds = %entry
  %2 = load i32*** @neighbor, align 8, !tbaa !0
  %3 = bitcast i32** %2 to i8*
  %conv = sext i32 %storemerge to i64
  %mul = shl nsw i64 %conv, 3
  %call8 = call i8* @realloc(i8* %3, i64 %mul) #8
  %4 = bitcast i8* %call8 to i32**
  store i32** %4, i32*** @neighbor, align 8, !tbaa !0
  %5 = load i32* @sites_on_node, align 4, !tbaa !3
  %conv12 = sext i32 %5 to i64
  %call13 = call noalias i8* @calloc(i64 %conv12, i64 4) #8
  %6 = bitcast i8* %call13 to i32*
  %7 = load i32* @n_gathers, align 4, !tbaa !3
  br i1 %cmp, label %if.then11, label %if.else36

if.then11:                                        ; preds = %if.end7
  %sub = add nsw i32 %7, -2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32** %4, i64 %idxprom
  store i32* %6, i32** %arrayidx, align 8, !tbaa !0
  %cmp17 = icmp eq i8* %call13, null
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then11
  %8 = load i32* @this_node, align 4, !tbaa !3
  %call20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str2, i64 0, i64 0), i32 %8) #8
  call void @terminate(i32 1) #9
  unreachable

if.end21:                                         ; preds = %if.then11
  %call23 = call noalias i8* @calloc(i64 %conv12, i64 4) #8
  %9 = bitcast i8* %call23 to i32*
  %sub24 = add nsw i32 %7, -1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds i32** %4, i64 %idxprom25
  store i32* %9, i32** %arrayidx26, align 8, !tbaa !0
  %cmp30 = icmp eq i8* %call23, null
  br i1 %cmp30, label %if.then32, label %if.end51

if.then32:                                        ; preds = %if.end21
  %10 = load i32* @this_node, align 4, !tbaa !3
  %call33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str2, i64 0, i64 0), i32 %10) #8
  call void @terminate(i32 1) #9
  unreachable

if.else36:                                        ; preds = %if.end7
  %sub39 = add nsw i32 %7, -1
  %idxprom40 = sext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds i32** %4, i64 %idxprom40
  store i32* %6, i32** %arrayidx41, align 8, !tbaa !0
  %cmp45 = icmp eq i8* %call13, null
  br i1 %cmp45, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.else36
  %11 = load i32* @this_node, align 4, !tbaa !3
  %call48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str2, i64 0, i64 0), i32 %11) #8
  call void @terminate(i32 1) #9
  unreachable

if.end51:                                         ; preds = %if.end21, %if.else36
  %dir.0 = phi i32 [ %sub39, %if.else36 ], [ %sub, %if.end21 ]
  %cmp52310 = icmp sgt i32 %5, 0
  br i1 %cmp52310, label %for.body.lr.ph, label %for.end201

for.body.lr.ph:                                   ; preds = %if.end51
  %12 = load %struct.site** @lattice, align 8, !tbaa !0
  %cmp146 = icmp eq i32 %inverse, 0
  %cmp116 = icmp eq i32 %parity_conserve, 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %s.0312 = phi %struct.site* [ %12, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %i.0311 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %x54 = getelementptr inbounds %struct.site* %s.0312, i64 0, i32 0
  %13 = load i16* %x54, align 2, !tbaa !4
  %conv55 = sext i16 %13 to i32
  %y56 = getelementptr inbounds %struct.site* %s.0312, i64 0, i32 1
  %14 = load i16* %y56, align 2, !tbaa !4
  %conv57 = sext i16 %14 to i32
  %z58 = getelementptr inbounds %struct.site* %s.0312, i64 0, i32 2
  %15 = load i16* %z58, align 2, !tbaa !4
  %conv59 = sext i16 %15 to i32
  %t60 = getelementptr inbounds %struct.site* %s.0312, i64 0, i32 3
  %16 = load i16* %t60, align 2, !tbaa !4
  %conv61 = sext i16 %16 to i32
  call void %func(i32 %conv55, i32 %conv57, i32 %conv59, i32 %conv61, i32* %args, i32 1, i32* %x, i32* %y, i32* %z, i32* %t) #8
  %17 = load i32* %x, align 4, !tbaa !3
  %18 = load i32* %y, align 4, !tbaa !3
  %add62 = add nsw i32 %18, %17
  %19 = load i32* %z, align 4, !tbaa !3
  %add63 = add nsw i32 %add62, %19
  %20 = load i32* %t, align 4, !tbaa !3
  %add64 = add nsw i32 %add63, %20
  %rem = srem i32 %add64, 2
  %21 = or i32 %18, %17
  %22 = or i32 %21, %19
  %23 = or i32 %22, %20
  %or.cond290.not = icmp sgt i32 %23, -1
  %24 = load i32* @nx, align 4, !tbaa !3
  %cmp76 = icmp slt i32 %17, %24
  %or.cond291 = and i1 %or.cond290.not, %cmp76
  %25 = load i32* @ny, align 4, !tbaa !3
  %cmp79 = icmp slt i32 %18, %25
  %or.cond292 = and i1 %or.cond291, %cmp79
  %26 = load i32* @nz, align 4, !tbaa !3
  %cmp82 = icmp slt i32 %19, %26
  %or.cond293 = and i1 %or.cond292, %cmp82
  %27 = load i32* @nt, align 4, !tbaa !3
  %cmp85 = icmp slt i32 %20, %27
  %or.cond294 = and i1 %or.cond293, %cmp85
  br i1 %or.cond294, label %if.end98, label %if.then87

if.then87:                                        ; preds = %for.body
  %puts287 = call i32 @puts(i8* getelementptr inbounds ([52 x i8]* @str14, i64 0, i64 0))
  %28 = load i16* %x54, align 2, !tbaa !4
  %conv90 = sext i16 %28 to i32
  %29 = load i16* %y56, align 2, !tbaa !4
  %conv92 = sext i16 %29 to i32
  %30 = load i16* %z58, align 2, !tbaa !4
  %conv94 = sext i16 %30 to i32
  %31 = load i16* %t60, align 2, !tbaa !4
  %conv96 = sext i16 %31 to i32
  %32 = load i32* %x, align 4, !tbaa !3
  %33 = load i32* %y, align 4, !tbaa !3
  %34 = load i32* %z, align 4, !tbaa !3
  %35 = load i32* %t, align 4, !tbaa !3
  %call97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i32 %conv90, i32 %conv92, i32 %conv94, i32 %conv96, i32 %32, i32 %33, i32 %34, i32 %35) #8
  call void @terminate(i32 1) #9
  unreachable

if.end98:                                         ; preds = %for.body
  switch i32 %parity_conserve, label %if.end145 [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true118
  ]

land.lhs.true:                                    ; preds = %if.end98
  switch i32 %rem, label %if.end145 [
    i32 0, label %land.lhs.true103
    i32 1, label %land.lhs.true110
  ]

land.lhs.true103:                                 ; preds = %land.lhs.true
  %parity = getelementptr inbounds %struct.site* %s.0312, i64 0, i32 4
  %36 = load i8* %parity, align 1, !tbaa !1
  %cmp105 = icmp eq i8 %36, 1
  br i1 %cmp105, label %if.then134, label %lor.lhs.false115

land.lhs.true110:                                 ; preds = %land.lhs.true
  %parity111 = getelementptr inbounds %struct.site* %s.0312, i64 0, i32 4
  %37 = load i8* %parity111, align 1, !tbaa !1
  %cmp113 = icmp eq i8 %37, 2
  br i1 %cmp113, label %if.then134, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %land.lhs.true103, %land.lhs.true110
  br i1 %cmp116, label %land.lhs.true118, label %if.end145

land.lhs.true118:                                 ; preds = %if.end98, %lor.lhs.false115
  switch i32 %rem, label %if.end145 [
    i32 0, label %land.lhs.true121
    i32 1, label %land.lhs.true129
  ]

land.lhs.true121:                                 ; preds = %land.lhs.true118
  %parity122 = getelementptr inbounds %struct.site* %s.0312, i64 0, i32 4
  %38 = load i8* %parity122, align 1, !tbaa !1
  %cmp124 = icmp eq i8 %38, 2
  br i1 %cmp124, label %if.then134, label %if.end145

land.lhs.true129:                                 ; preds = %land.lhs.true118
  %parity130 = getelementptr inbounds %struct.site* %s.0312, i64 0, i32 4
  %39 = load i8* %parity130, align 1, !tbaa !1
  %cmp132 = icmp eq i8 %39, 1
  br i1 %cmp132, label %if.then134, label %if.end145

if.then134:                                       ; preds = %land.lhs.true129, %land.lhs.true121, %land.lhs.true110, %land.lhs.true103
  %puts286 = call i32 @puts(i8* getelementptr inbounds ([56 x i8]* @str13, i64 0, i64 0))
  %40 = load i16* %x54, align 2, !tbaa !4
  %conv137 = sext i16 %40 to i32
  %41 = load i16* %y56, align 2, !tbaa !4
  %conv139 = sext i16 %41 to i32
  %42 = load i16* %z58, align 2, !tbaa !4
  %conv141 = sext i16 %42 to i32
  %43 = load i16* %t60, align 2, !tbaa !4
  %conv143 = sext i16 %43 to i32
  %44 = load i32* %x, align 4, !tbaa !3
  %45 = load i32* %y, align 4, !tbaa !3
  %46 = load i32* %z, align 4, !tbaa !3
  %47 = load i32* %t, align 4, !tbaa !3
  %call144 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i32 %conv137, i32 %conv139, i32 %conv141, i32 %conv143, i32 %44, i32 %45, i32 %46, i32 %47) #8
  call void @terminate(i32 1) #9
  unreachable

if.end145:                                        ; preds = %land.lhs.true121, %land.lhs.true, %land.lhs.true118, %if.end98, %land.lhs.true129, %lor.lhs.false115
  br i1 %cmp146, label %if.then148, label %for.inc

if.then148:                                       ; preds = %if.end145
  call void %func(i32 %17, i32 %18, i32 %19, i32 %20, i32* %args, i32 1, i32* %x2, i32* %y2, i32* %z2, i32* %t2) #8
  %48 = load i16* %x54, align 2, !tbaa !4
  %conv150 = sext i16 %48 to i32
  %49 = load i32* %x2, align 4, !tbaa !3
  %cmp151 = icmp eq i32 %conv150, %49
  br i1 %cmp151, label %lor.lhs.false153, label %if.then168

lor.lhs.false153:                                 ; preds = %if.then148
  %50 = load i16* %y56, align 2, !tbaa !4
  %conv155 = sext i16 %50 to i32
  %51 = load i32* %y2, align 4, !tbaa !3
  %cmp156 = icmp eq i32 %conv155, %51
  br i1 %cmp156, label %lor.lhs.false158, label %if.then168

lor.lhs.false158:                                 ; preds = %lor.lhs.false153
  %52 = load i16* %z58, align 2, !tbaa !4
  %conv160 = sext i16 %52 to i32
  %53 = load i32* %z2, align 4, !tbaa !3
  %cmp161 = icmp eq i32 %conv160, %53
  br i1 %cmp161, label %lor.lhs.false163, label %if.then168

lor.lhs.false163:                                 ; preds = %lor.lhs.false158
  %54 = load i16* %t60, align 2, !tbaa !4
  %conv165 = sext i16 %54 to i32
  %55 = load i32* %t2, align 4, !tbaa !3
  %cmp166 = icmp eq i32 %conv165, %55
  br i1 %cmp166, label %for.inc, label %if.then168

if.then168:                                       ; preds = %lor.lhs.false163, %lor.lhs.false158, %lor.lhs.false153, %if.then148
  %puts = call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str, i64 0, i64 0))
  %56 = load i16* %x54, align 2, !tbaa !4
  %conv171 = sext i16 %56 to i32
  %57 = load i16* %y56, align 2, !tbaa !4
  %conv173 = sext i16 %57 to i32
  %58 = load i16* %z58, align 2, !tbaa !4
  %conv175 = sext i16 %58 to i32
  %59 = load i16* %t60, align 2, !tbaa !4
  %conv177 = sext i16 %59 to i32
  %60 = load i32* %x2, align 4, !tbaa !3
  %61 = load i32* %y2, align 4, !tbaa !3
  %62 = load i32* %z2, align 4, !tbaa !3
  %63 = load i32* %t2, align 4, !tbaa !3
  %call178 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str7, i64 0, i64 0), i32 %conv171, i32 %conv173, i32 %conv175, i32 %conv177, i32 %60, i32 %61, i32 %62, i32 %63) #8
  call void @terminate(i32 1) #9
  unreachable

for.inc:                                          ; preds = %lor.lhs.false163, %if.end145
  %inc = add nsw i32 %i.0311, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.0312, i64 1
  %64 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp52 = icmp slt i32 %inc, %64
  br i1 %cmp52, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %cmp182299 = icmp sgt i32 %64, 0
  br i1 %cmp182299, label %for.body184.lr.ph, label %for.end201

for.body184.lr.ph:                                ; preds = %for.end
  %65 = load %struct.site** @lattice, align 8, !tbaa !0
  %idxprom195 = sext i32 %dir.0 to i64
  br label %for.body184

for.body184:                                      ; preds = %for.body184.lr.ph, %for.body184
  %indvars.iv314 = phi i64 [ 0, %for.body184.lr.ph ], [ %indvars.iv.next315, %for.body184 ]
  %s.1301 = phi %struct.site* [ %65, %for.body184.lr.ph ], [ %incdec.ptr200, %for.body184 ]
  %x185 = getelementptr inbounds %struct.site* %s.1301, i64 0, i32 0
  %66 = load i16* %x185, align 2, !tbaa !4
  %conv186 = sext i16 %66 to i32
  %y187 = getelementptr inbounds %struct.site* %s.1301, i64 0, i32 1
  %67 = load i16* %y187, align 2, !tbaa !4
  %conv188 = sext i16 %67 to i32
  %z189 = getelementptr inbounds %struct.site* %s.1301, i64 0, i32 2
  %68 = load i16* %z189, align 2, !tbaa !4
  %conv190 = sext i16 %68 to i32
  %t191 = getelementptr inbounds %struct.site* %s.1301, i64 0, i32 3
  %69 = load i16* %t191, align 2, !tbaa !4
  %conv192 = sext i16 %69 to i32
  call void %func(i32 %conv186, i32 %conv188, i32 %conv190, i32 %conv192, i32* %args, i32 1, i32* %x, i32* %y, i32* %z, i32* %t) #8
  %70 = load i32* %x, align 4, !tbaa !3
  %71 = load i32* %y, align 4, !tbaa !3
  %72 = load i32* %z, align 4, !tbaa !3
  %73 = load i32* %t, align 4, !tbaa !3
  %call193 = call i32 @node_index(i32 %70, i32 %71, i32 %72, i32 %73) #8
  %74 = load i32*** @neighbor, align 8, !tbaa !0
  %arrayidx196 = getelementptr inbounds i32** %74, i64 %idxprom195
  %75 = load i32** %arrayidx196, align 8, !tbaa !0
  %arrayidx197 = getelementptr inbounds i32* %75, i64 %indvars.iv314
  store i32 %call193, i32* %arrayidx197, align 4, !tbaa !3
  %indvars.iv.next315 = add i64 %indvars.iv314, 1
  %incdec.ptr200 = getelementptr inbounds %struct.site* %s.1301, i64 1
  %76 = load i32* @sites_on_node, align 4, !tbaa !3
  %77 = trunc i64 %indvars.iv.next315 to i32
  %cmp182 = icmp slt i32 %77, %76
  br i1 %cmp182, label %for.body184, label %for.end201

for.end201:                                       ; preds = %if.end51, %for.body184, %for.end
  %78 = phi i32 [ %64, %for.end ], [ %76, %for.body184 ], [ %5, %if.end51 ]
  %cmp208296 = icmp sgt i32 %78, 0
  %or.cond = and i1 %cmp, %cmp208296
  br i1 %or.cond, label %for.body210.lr.ph, label %return

for.body210.lr.ph:                                ; preds = %for.end201
  %79 = load %struct.site** @lattice, align 8, !tbaa !0
  %inc206 = add nsw i32 %dir.0, 1
  %idxprom221 = sext i32 %inc206 to i64
  br label %for.body210

for.body210:                                      ; preds = %for.body210.lr.ph, %for.body210
  %indvars.iv = phi i64 [ 0, %for.body210.lr.ph ], [ %indvars.iv.next, %for.body210 ]
  %s.2298 = phi %struct.site* [ %79, %for.body210.lr.ph ], [ %incdec.ptr226, %for.body210 ]
  %x211 = getelementptr inbounds %struct.site* %s.2298, i64 0, i32 0
  %80 = load i16* %x211, align 2, !tbaa !4
  %conv212 = sext i16 %80 to i32
  %y213 = getelementptr inbounds %struct.site* %s.2298, i64 0, i32 1
  %81 = load i16* %y213, align 2, !tbaa !4
  %conv214 = sext i16 %81 to i32
  %z215 = getelementptr inbounds %struct.site* %s.2298, i64 0, i32 2
  %82 = load i16* %z215, align 2, !tbaa !4
  %conv216 = sext i16 %82 to i32
  %t217 = getelementptr inbounds %struct.site* %s.2298, i64 0, i32 3
  %83 = load i16* %t217, align 2, !tbaa !4
  %conv218 = sext i16 %83 to i32
  call void %func(i32 %conv212, i32 %conv214, i32 %conv216, i32 %conv218, i32* %args, i32 -1, i32* %x, i32* %y, i32* %z, i32* %t) #8
  %84 = load i32* %x, align 4, !tbaa !3
  %85 = load i32* %y, align 4, !tbaa !3
  %86 = load i32* %z, align 4, !tbaa !3
  %87 = load i32* %t, align 4, !tbaa !3
  %call219 = call i32 @node_index(i32 %84, i32 %85, i32 %86, i32 %87) #8
  %88 = load i32*** @neighbor, align 8, !tbaa !0
  %arrayidx222 = getelementptr inbounds i32** %88, i64 %idxprom221
  %89 = load i32** %arrayidx222, align 8, !tbaa !0
  %arrayidx223 = getelementptr inbounds i32* %89, i64 %indvars.iv
  store i32 %call219, i32* %arrayidx223, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %incdec.ptr226 = getelementptr inbounds %struct.site* %s.2298, i64 1
  %90 = load i32* @sites_on_node, align 4, !tbaa !3
  %91 = trunc i64 %indvars.iv.next to i32
  %cmp208 = icmp slt i32 %91, %90
  br i1 %cmp208, label %for.body210, label %return

return:                                           ; preds = %for.body210, %for.end201
  ret i32 %dir.0
}

; Function Attrs: nounwind optsize uwtable
define void @neighbor_coords_special(i32 %x, i32 %y, i32 %z, i32 %t, i32* nocapture %dirpt, i32 %fb, i32* nocapture %x2p, i32* nocapture %y2p, i32* nocapture %z2p, i32* nocapture %t2p) #1 {
entry:
  %cmp = icmp eq i32 %fb, 1
  %0 = load i32* %dirpt, align 4, !tbaa !3
  %sub = sub nsw i32 7, %0
  %cond = select i1 %cmp, i32 %0, i32 %sub
  store i32 %x, i32* %x2p, align 4, !tbaa !3
  store i32 %y, i32* %y2p, align 4, !tbaa !3
  store i32 %z, i32* %z2p, align 4, !tbaa !3
  store i32 %t, i32* %t2p, align 4, !tbaa !3
  switch i32 %cond, label %sw.default [
    i32 0, label %sw.bb
    i32 7, label %sw.bb1
    i32 1, label %sw.bb5
    i32 6, label %sw.bb8
    i32 2, label %sw.bb12
    i32 5, label %sw.bb15
    i32 3, label %sw.bb19
    i32 4, label %sw.bb22
  ]

sw.bb:                                            ; preds = %entry
  %add = add nsw i32 %x, 1
  %1 = load i32* @nx, align 4, !tbaa !3
  %rem = srem i32 %add, %1
  store i32 %rem, i32* %x2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load i32* @nx, align 4, !tbaa !3
  %add2 = add i32 %x, -1
  %sub3 = add i32 %add2, %2
  %rem4 = srem i32 %sub3, %2
  store i32 %rem4, i32* %x2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %add6 = add nsw i32 %y, 1
  %3 = load i32* @ny, align 4, !tbaa !3
  %rem7 = srem i32 %add6, %3
  store i32 %rem7, i32* %y2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %4 = load i32* @ny, align 4, !tbaa !3
  %add9 = add i32 %y, -1
  %sub10 = add i32 %add9, %4
  %rem11 = srem i32 %sub10, %4
  store i32 %rem11, i32* %y2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %add13 = add nsw i32 %z, 1
  %5 = load i32* @nz, align 4, !tbaa !3
  %rem14 = srem i32 %add13, %5
  store i32 %rem14, i32* %z2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %6 = load i32* @nz, align 4, !tbaa !3
  %add16 = add i32 %z, -1
  %sub17 = add i32 %add16, %6
  %rem18 = srem i32 %sub17, %6
  store i32 %rem18, i32* %z2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %add20 = add nsw i32 %t, 1
  %7 = load i32* @nt, align 4, !tbaa !3
  %rem21 = srem i32 %add20, %7
  store i32 %rem21, i32* %t2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %8 = load i32* @nt, align 4, !tbaa !3
  %add23 = add i32 %t, -1
  %sub24 = add i32 %add23, %8
  %rem25 = srem i32 %sub24, %8
  store i32 %rem25, i32* %t2p, align 4, !tbaa !3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str17, i64 0, i64 0))
  tail call void @exit(i32 1) #10
  unreachable

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb19, %sw.bb15, %sw.bb12, %sw.bb8, %sw.bb5, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @sort_eight_special(i8** nocapture %pt) #1 {
entry:
  %pt39 = bitcast i8** %pt to i8*
  %tt = alloca [8 x i8*], align 16
  %0 = bitcast [8 x i8*]* %tt to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %pt39, i64 64, i32 8, i1 false)
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body5 ]
  %1 = shl nsw i64 %indvars.iv, 1
  %arrayidx7 = getelementptr inbounds [8 x i8*]* %tt, i64 0, i64 %1
  %2 = load i8** %arrayidx7, align 16, !tbaa !0
  %arrayidx9 = getelementptr inbounds i8** %pt, i64 %indvars.iv
  store i8* %2, i8** %arrayidx9, align 8, !tbaa !0
  %3 = or i64 %1, 1
  %arrayidx12 = getelementptr inbounds [8 x i8*]* %tt, i64 0, i64 %3
  %4 = load i8** %arrayidx12, align 8, !tbaa !0
  %5 = sub nsw i64 7, %indvars.iv
  %arrayidx14 = getelementptr inbounds i8** %pt, i64 %5
  store i8* %4, i8** %arrayidx14, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end17, label %for.body5

for.end17:                                        ; preds = %for.body5
  call void @llvm.lifetime.end(i64 64, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @sort_eight_neighborlists(i32 %index) #1 {
entry:
  %idxprom = sext i32 %index to i64
  %0 = load i32*** @neighbor, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32** %0, i64 %idxprom
  %1 = bitcast i32** %arrayidx to i8**
  tail call void @sort_eight_special(i8** %1) #9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: noreturn nounwind optsize uwtable
define void @terminate(i32 %status) #5 {
entry:
  tail call void @time_stamp(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0)) #9
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str12, i64 0, i64 0), i32 %status) #8
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call1 = tail call i32 @fflush(%struct._IO_FILE* %0) #8
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call2 = tail call i32 @fflush(%struct._IO_FILE* %1) #8
  tail call void @exit(i32 %status) #10
  unreachable
}

; Function Attrs: optsize
declare i32 @node_index(i32, i32, i32, i32) #6

; Function Attrs: nounwind optsize uwtable
define void @neighbor_coords(i32 %x, i32 %y, i32 %z, i32 %t, i32 %dir, i32* nocapture %x2p, i32* nocapture %y2p, i32* nocapture %z2p, i32* nocapture %t2p) #1 {
entry:
  store i32 %x, i32* %x2p, align 4, !tbaa !3
  store i32 %y, i32* %y2p, align 4, !tbaa !3
  store i32 %z, i32* %z2p, align 4, !tbaa !3
  store i32 %t, i32* %t2p, align 4, !tbaa !3
  switch i32 %dir, label %sw.default [
    i32 0, label %sw.bb
    i32 7, label %sw.bb1
    i32 1, label %sw.bb4
    i32 6, label %sw.bb7
    i32 2, label %sw.bb11
    i32 5, label %sw.bb14
    i32 3, label %sw.bb18
    i32 4, label %sw.bb21
  ]

sw.bb:                                            ; preds = %entry
  %add = add nsw i32 %x, 1
  %0 = load i32* @nx, align 4, !tbaa !3
  %rem = srem i32 %add, %0
  store i32 %rem, i32* %x2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %1 = load i32* @nx, align 4, !tbaa !3
  %add2 = add i32 %x, -1
  %sub = add i32 %add2, %1
  %rem3 = srem i32 %sub, %1
  store i32 %rem3, i32* %x2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %add5 = add nsw i32 %y, 1
  %2 = load i32* @ny, align 4, !tbaa !3
  %rem6 = srem i32 %add5, %2
  store i32 %rem6, i32* %y2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %3 = load i32* @ny, align 4, !tbaa !3
  %add8 = add i32 %y, -1
  %sub9 = add i32 %add8, %3
  %rem10 = srem i32 %sub9, %3
  store i32 %rem10, i32* %y2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %add12 = add nsw i32 %z, 1
  %4 = load i32* @nz, align 4, !tbaa !3
  %rem13 = srem i32 %add12, %4
  store i32 %rem13, i32* %z2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %5 = load i32* @nz, align 4, !tbaa !3
  %add15 = add i32 %z, -1
  %sub16 = add i32 %add15, %5
  %rem17 = srem i32 %sub16, %5
  store i32 %rem17, i32* %z2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %add19 = add nsw i32 %t, 1
  %6 = load i32* @nt, align 4, !tbaa !3
  %rem20 = srem i32 %add19, %6
  store i32 %rem20, i32* %t2p, align 4, !tbaa !3
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %7 = load i32* @nt, align 4, !tbaa !3
  %add22 = add i32 %t, -1
  %sub23 = add i32 %add22, %7
  %rem24 = srem i32 %sub23, %7
  store i32 %rem24, i32* %t2p, align 4, !tbaa !3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str17, i64 0, i64 0))
  tail call void @exit(i32 1) #10
  unreachable

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb18, %sw.bb14, %sw.bb11, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @start_handlers() #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.msg_tag* @start_gather(i32 %field, i32 %size, i32 %index, i32 %parity, i8** nocapture %dest) #1 {
entry:
  switch i32 %parity, label %sw.epilog [
    i32 2, label %for.cond.preheader
    i32 1, label %sw.bb7
    i32 3, label %for.cond28.preheader
  ]

for.cond28.preheader:                             ; preds = %entry
  %0 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp2971 = icmp sgt i32 %0, 0
  br i1 %cmp2971, label %for.body30.lr.ph, label %sw.epilog

for.body30.lr.ph:                                 ; preds = %for.cond28.preheader
  %idxprom32 = sext i32 %index to i64
  %idx.ext37 = sext i32 %field to i64
  br label %for.body30

for.cond.preheader:                               ; preds = %entry
  %1 = load i32* @even_sites_on_node, align 4, !tbaa !3
  %cmp65 = icmp sgt i32 %1, 0
  br i1 %cmp65, label %for.body.lr.ph, label %sw.epilog

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idxprom1 = sext i32 %index to i64
  %idx.ext3 = sext i32 %field to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %2 = load %struct.site** @lattice, align 8, !tbaa !0
  %3 = load i32*** @neighbor, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32** %3, i64 %idxprom1
  %4 = load i32** %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32* %4, i64 %indvars.iv
  %5 = load i32* %arrayidx2, align 4, !tbaa !3
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.site* %2, i64 %idx.ext
  %6 = bitcast %struct.site* %add.ptr to i8*
  %add.ptr4 = getelementptr inbounds i8* %6, i64 %idx.ext3
  %arrayidx6 = getelementptr inbounds i8** %dest, i64 %indvars.iv
  store i8* %add.ptr4, i8** %arrayidx6, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %7, %1
  br i1 %cmp, label %for.body, label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %8 = load i32* @even_sites_on_node, align 4, !tbaa !3
  %9 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp1168 = icmp slt i32 %8, %9
  br i1 %cmp1168, label %for.body12.lr.ph, label %sw.epilog

for.body12.lr.ph:                                 ; preds = %sw.bb7
  %idxprom14 = sext i32 %index to i64
  %idx.ext19 = sext i32 %field to i64
  %10 = sext i32 %8 to i64
  br label %for.body12

for.body12:                                       ; preds = %for.body12.lr.ph, %for.body12
  %indvars.iv73 = phi i64 [ %10, %for.body12.lr.ph ], [ %indvars.iv.next74, %for.body12 ]
  %11 = load %struct.site** @lattice, align 8, !tbaa !0
  %12 = load i32*** @neighbor, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32** %12, i64 %idxprom14
  %13 = load i32** %arrayidx15, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %13, i64 %indvars.iv73
  %14 = load i32* %arrayidx16, align 4, !tbaa !3
  %idx.ext17 = sext i32 %14 to i64
  %add.ptr18 = getelementptr inbounds %struct.site* %11, i64 %idx.ext17
  %15 = bitcast %struct.site* %add.ptr18 to i8*
  %add.ptr20 = getelementptr inbounds i8* %15, i64 %idx.ext19
  %arrayidx22 = getelementptr inbounds i8** %dest, i64 %indvars.iv73
  store i8* %add.ptr20, i8** %arrayidx22, align 8, !tbaa !0
  %indvars.iv.next74 = add i64 %indvars.iv73, 1
  %16 = trunc i64 %indvars.iv.next74 to i32
  %cmp11 = icmp slt i32 %16, %9
  br i1 %cmp11, label %for.body12, label %sw.epilog

for.body30:                                       ; preds = %for.body30.lr.ph, %for.body30
  %indvars.iv75 = phi i64 [ 0, %for.body30.lr.ph ], [ %indvars.iv.next76, %for.body30 ]
  %17 = load %struct.site** @lattice, align 8, !tbaa !0
  %18 = load i32*** @neighbor, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds i32** %18, i64 %idxprom32
  %19 = load i32** %arrayidx33, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds i32* %19, i64 %indvars.iv75
  %20 = load i32* %arrayidx34, align 4, !tbaa !3
  %idx.ext35 = sext i32 %20 to i64
  %add.ptr36 = getelementptr inbounds %struct.site* %17, i64 %idx.ext35
  %21 = bitcast %struct.site* %add.ptr36 to i8*
  %add.ptr38 = getelementptr inbounds i8* %21, i64 %idx.ext37
  %arrayidx40 = getelementptr inbounds i8** %dest, i64 %indvars.iv75
  store i8* %add.ptr38, i8** %arrayidx40, align 8, !tbaa !0
  %indvars.iv.next76 = add i64 %indvars.iv75, 1
  %22 = trunc i64 %indvars.iv.next76 to i32
  %cmp29 = icmp slt i32 %22, %0
  br i1 %cmp29, label %for.body30, label %sw.epilog

sw.epilog:                                        ; preds = %for.cond28.preheader, %for.body30, %sw.bb7, %for.body12, %for.cond.preheader, %for.body, %entry
  ret %struct.msg_tag* null
}

; Function Attrs: nounwind optsize readnone uwtable
define void @restart_gather(i32 %field, i32 %size, i32 %index, i32 %parity, i8** nocapture %dest, %struct.msg_tag* nocapture %mbuf) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.msg_tag* @start_gather_from_temp(i8* %field, i32 %size, i32 %index, i32 %parity, i8** nocapture %dest) #1 {
entry:
  switch i32 %parity, label %sw.epilog [
    i32 2, label %for.cond.preheader
    i32 1, label %sw.bb5
    i32 3, label %for.cond25.preheader
  ]

for.cond25.preheader:                             ; preds = %entry
  %0 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp2669 = icmp sgt i32 %0, 0
  br i1 %cmp2669, label %for.body27.lr.ph, label %sw.epilog

for.body27.lr.ph:                                 ; preds = %for.cond25.preheader
  %idxprom29 = sext i32 %index to i64
  br label %for.body27

for.cond.preheader:                               ; preds = %entry
  %1 = load i32* @even_sites_on_node, align 4, !tbaa !3
  %cmp63 = icmp sgt i32 %1, 0
  br i1 %cmp63, label %for.body.lr.ph, label %sw.epilog

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idxprom1 = sext i32 %index to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %2 = load i32*** @neighbor, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32** %2, i64 %idxprom1
  %3 = load i32** %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32* %3, i64 %indvars.iv
  %4 = load i32* %arrayidx2, align 4, !tbaa !3
  %mul = mul nsw i32 %4, %size
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8* %field, i64 %idx.ext
  %arrayidx4 = getelementptr inbounds i8** %dest, i64 %indvars.iv
  store i8* %add.ptr, i8** %arrayidx4, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %5, %1
  br i1 %cmp, label %for.body, label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %6 = load i32* @even_sites_on_node, align 4, !tbaa !3
  %7 = load i32* @sites_on_node, align 4, !tbaa !3
  %cmp966 = icmp slt i32 %6, %7
  br i1 %cmp966, label %for.body10.lr.ph, label %sw.epilog

for.body10.lr.ph:                                 ; preds = %sw.bb5
  %idxprom12 = sext i32 %index to i64
  %8 = sext i32 %6 to i64
  br label %for.body10

for.body10:                                       ; preds = %for.body10.lr.ph, %for.body10
  %indvars.iv71 = phi i64 [ %8, %for.body10.lr.ph ], [ %indvars.iv.next72, %for.body10 ]
  %9 = load i32*** @neighbor, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i32** %9, i64 %idxprom12
  %10 = load i32** %arrayidx13, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i32* %10, i64 %indvars.iv71
  %11 = load i32* %arrayidx14, align 4, !tbaa !3
  %mul15 = mul nsw i32 %11, %size
  %idx.ext16 = sext i32 %mul15 to i64
  %add.ptr17 = getelementptr inbounds i8* %field, i64 %idx.ext16
  %arrayidx19 = getelementptr inbounds i8** %dest, i64 %indvars.iv71
  store i8* %add.ptr17, i8** %arrayidx19, align 8, !tbaa !0
  %indvars.iv.next72 = add i64 %indvars.iv71, 1
  %12 = trunc i64 %indvars.iv.next72 to i32
  %cmp9 = icmp slt i32 %12, %7
  br i1 %cmp9, label %for.body10, label %sw.epilog

for.body27:                                       ; preds = %for.body27.lr.ph, %for.body27
  %indvars.iv73 = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next74, %for.body27 ]
  %13 = load i32*** @neighbor, align 8, !tbaa !0
  %arrayidx30 = getelementptr inbounds i32** %13, i64 %idxprom29
  %14 = load i32** %arrayidx30, align 8, !tbaa !0
  %arrayidx31 = getelementptr inbounds i32* %14, i64 %indvars.iv73
  %15 = load i32* %arrayidx31, align 4, !tbaa !3
  %mul32 = mul nsw i32 %15, %size
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds i8* %field, i64 %idx.ext33
  %arrayidx36 = getelementptr inbounds i8** %dest, i64 %indvars.iv73
  store i8* %add.ptr34, i8** %arrayidx36, align 8, !tbaa !0
  %indvars.iv.next74 = add i64 %indvars.iv73, 1
  %16 = trunc i64 %indvars.iv.next74 to i32
  %cmp26 = icmp slt i32 %16, %0
  br i1 %cmp26, label %for.body27, label %sw.epilog

sw.epilog:                                        ; preds = %for.cond25.preheader, %for.body27, %sw.bb5, %for.body10, %for.cond.preheader, %for.body, %entry
  ret %struct.msg_tag* null
}

; Function Attrs: nounwind optsize readnone uwtable
define void @restart_gather_from_temp(i8* nocapture %field, i32 %size, i32 %index, i32 %parity, i8** nocapture %dest, %struct.msg_tag* nocapture %mbuf) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @wait_gather(%struct.msg_tag* nocapture %mbuf) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @cleanup_gather(%struct.msg_tag* nocapture %mbuf) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.msg_tag* @start_general_gather(i32 %field, i32 %size, i32* nocapture %displacement, i32 %parity, i8** nocapture %dest) #1 {
entry:
  %0 = load i32* @g_gather_flag, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str8, i64 0, i64 0), i32 0) #8
  tail call void @exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i32 %parity, 1
  %2 = load i32* @even_sites_on_node, align 4, !tbaa !3
  %cond = select i1 %cmp2, i32 %2, i32 0
  %cmp3 = icmp eq i32 %parity, 2
  %3 = load i32* @sites_on_node, align 4, !tbaa !3
  %cond776 = select i1 %cmp3, i32 %2, i32 %3
  %cmp877 = icmp slt i32 %cond, %cond776
  br i1 %cmp877, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %4 = load %struct.site** @lattice, align 8, !tbaa !0
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds %struct.site* %4, i64 %idxprom
  %arrayidx17 = getelementptr inbounds i32* %displacement, i64 1
  %arrayidx30 = getelementptr inbounds i32* %displacement, i64 2
  %arrayidx43 = getelementptr inbounds i32* %displacement, i64 3
  %idx.ext = sext i32 %field to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end55
  %indvars.iv = phi i64 [ %idxprom, %for.body.lr.ph ], [ %indvars.iv.next, %if.end55 ]
  %s.079 = phi %struct.site* [ %arrayidx, %for.body.lr.ph ], [ %incdec.ptr, %if.end55 ]
  %5 = load i32* %displacement, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %5, 0
  %x = getelementptr inbounds %struct.site* %s.079, i64 0, i32 0
  %6 = load i16* %x, align 2, !tbaa !4
  %conv = sext i16 %6 to i32
  br i1 %cmp10, label %if.end16, label %if.then11

if.then11:                                        ; preds = %for.body
  %add = add nsw i32 %conv, %5
  %7 = load i32* @nx, align 4, !tbaa !3
  %add13 = add nsw i32 %add, %7
  %rem = srem i32 %add13, %7
  br label %if.end16

if.end16:                                         ; preds = %for.body, %if.then11
  %tx.0 = phi i32 [ %rem, %if.then11 ], [ %conv, %for.body ]
  %8 = load i32* %arrayidx17, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %8, 0
  %y = getelementptr inbounds %struct.site* %s.079, i64 0, i32 1
  %9 = load i16* %y, align 2, !tbaa !4
  %conv21 = sext i16 %9 to i32
  br i1 %cmp18, label %if.end29, label %if.then20

if.then20:                                        ; preds = %if.end16
  %add23 = add nsw i32 %conv21, %8
  %10 = load i32* @ny, align 4, !tbaa !3
  %add24 = add nsw i32 %add23, %10
  %rem25 = srem i32 %add24, %10
  br label %if.end29

if.end29:                                         ; preds = %if.end16, %if.then20
  %ty.0 = phi i32 [ %rem25, %if.then20 ], [ %conv21, %if.end16 ]
  %11 = load i32* %arrayidx30, align 4, !tbaa !3
  %cmp31 = icmp eq i32 %11, 0
  %z = getelementptr inbounds %struct.site* %s.079, i64 0, i32 2
  %12 = load i16* %z, align 2, !tbaa !4
  %conv34 = sext i16 %12 to i32
  br i1 %cmp31, label %if.end42, label %if.then33

if.then33:                                        ; preds = %if.end29
  %add36 = add nsw i32 %conv34, %11
  %13 = load i32* @nz, align 4, !tbaa !3
  %add37 = add nsw i32 %add36, %13
  %rem38 = srem i32 %add37, %13
  br label %if.end42

if.end42:                                         ; preds = %if.end29, %if.then33
  %tz.0 = phi i32 [ %rem38, %if.then33 ], [ %conv34, %if.end29 ]
  %14 = load i32* %arrayidx43, align 4, !tbaa !3
  %cmp44 = icmp eq i32 %14, 0
  %t = getelementptr inbounds %struct.site* %s.079, i64 0, i32 3
  %15 = load i16* %t, align 2, !tbaa !4
  %conv47 = sext i16 %15 to i32
  br i1 %cmp44, label %if.end55, label %if.then46

if.then46:                                        ; preds = %if.end42
  %add49 = add nsw i32 %conv47, %14
  %16 = load i32* @nt, align 4, !tbaa !3
  %add50 = add nsw i32 %add49, %16
  %rem51 = srem i32 %add50, %16
  br label %if.end55

if.end55:                                         ; preds = %if.end42, %if.then46
  %tt.0 = phi i32 [ %rem51, %if.then46 ], [ %conv47, %if.end42 ]
  %call56 = tail call i32 @node_index(i32 %tx.0, i32 %ty.0, i32 %tz.0, i32 %tt.0) #8
  %idxprom57 = sext i32 %call56 to i64
  %17 = load %struct.site** @lattice, align 8, !tbaa !0
  %arrayidx58 = getelementptr inbounds %struct.site* %17, i64 %idxprom57
  %18 = bitcast %struct.site* %arrayidx58 to i8*
  %add.ptr = getelementptr inbounds i8* %18, i64 %idx.ext
  %arrayidx60 = getelementptr inbounds i8** %dest, i64 %indvars.iv
  store i8* %add.ptr, i8** %arrayidx60, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.079, i64 1
  %19 = load i32* @even_sites_on_node, align 4, !tbaa !3
  %20 = load i32* @sites_on_node, align 4, !tbaa !3
  %cond7 = select i1 %cmp3, i32 %19, i32 %20
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %21, %cond7
  br i1 %cmp8, label %for.body, label %for.end

for.end:                                          ; preds = %if.end55, %if.end
  store i32 1, i32* @g_gather_flag, align 4, !tbaa !3
  ret %struct.msg_tag* null
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @wait_general_gather(%struct.msg_tag* nocapture %mbuf) #1 {
entry:
  store i32 0, i32* @g_gather_flag, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @cleanup_general_gather(%struct.msg_tag* nocapture %mbuf) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i8* @field_pointer_at_coordinates(i32 %field, i32 %size, i32 %x, i32 %y, i32 %z, i32 %t) #1 {
entry:
  %call = tail call i32 @node_index(i32 %x, i32 %y, i32 %z, i32 %t) #8
  %idxprom = sext i32 %call to i64
  %0 = load %struct.site** @lattice, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.site* %0, i64 %idxprom
  %1 = bitcast %struct.site* %arrayidx to i8*
  %idx.ext = sext i32 %field to i64
  %add.ptr = getelementptr inbounds i8* %1, i64 %idx.ext
  ret i8* %add.ptr
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @field_pointer_at_direction(i32 %field, i32 %size, %struct.site* %s, i32 %direction) #7 {
entry:
  %0 = load %struct.site** @lattice, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.site* %s to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.site* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 1808
  %idxprom = sext i32 %direction to i64
  %1 = load i32*** @neighbor, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32** %1, i64 %idxprom
  %2 = load i32** %arrayidx, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds i32* %2, i64 %sub.ptr.div
  %3 = load i32* %arrayidx1, align 4, !tbaa !3
  %conv = sext i32 %3 to i64
  %4 = inttoptr i64 %conv to i8*
  %idx.ext = sext i32 %field to i64
  %add.ptr = getelementptr inbounds i8* %4, i64 %idx.ext
  ret i8* %add.ptr
}

; Function Attrs: nounwind optsize readnone uwtable
define void @cleanup_field_pointer(i8* nocapture %buf) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @send_field(i8* nocapture %buf, i32 %size, i32 %tonode) #1 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str21, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @get_field(i8* nocapture %buf, i32 %size) #1 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str21, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define i8* @machine_type() #0 {
entry:
  ret i8* getelementptr inbounds ([17 x i8]* @name, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @mynode() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @numnodes() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind optsize readnone uwtable
define void @g_sync() #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @g_floatsum(float* nocapture %fpt) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @g_doublesum(double* nocapture %dpt) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @g_vecdoublesum(double* nocapture %dpt, i32 %ndoubles) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @g_complexsum(%struct.complex* nocapture %cpt) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @g_dcomplexsum(%struct.double_complex* nocapture %cpt) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @g_veccomplexsum(%struct.complex* nocapture %cpt, i32 %ncomplex) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @g_wvectorsum(%struct.wilson_vector* nocapture %wvpt) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @g_xor32(i32* nocapture %pt) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @g_floatmax(float* nocapture %fpt) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @g_doublemax(double* nocapture %dpt) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @broadcast_float(float* nocapture %fpt) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @broadcast_double(double* nocapture %dpt) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @broadcast_complex(%struct.complex* nocapture %cpt) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @broadcast_dcomplex(%struct.double_complex* nocapture %cpt) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @broadcast_bytes(i8* nocapture %buf, i32 %size) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @send_integer(i32 %tonode, i32* nocapture %address) #1 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str21, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @receive_integer(i32* nocapture %address) #1 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str21, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define double @dclock() #0 {
entry:
  ret double 0.000000e+00
}

; Function Attrs: nounwind optsize uwtable
define void @time_stamp(i8* %msg) #1 {
entry:
  %time_stamp = alloca i64, align 8
  %call1 = call i64 @time(i64* %time_stamp) #8
  %call2 = call i8* @ctime(i64* %time_stamp) #8
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), i8* %msg, i8* %call2) #8
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #2

; Function Attrs: nounwind optsize
declare i8* @ctime(i64*) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: noreturn nounwind optsize uwtable
define void @normal_exit(i32 %status) #5 {
entry:
  tail call void @exit(i32 %status) #10
  unreachable
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
