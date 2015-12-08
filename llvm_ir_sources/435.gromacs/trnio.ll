; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/trnio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_trnheader = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float }

@.str = private unnamed_addr constant [18 x i8] c"box_size    = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [18 x i8] c"x_size      = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c"v_size      = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [18 x i8] c"f_size      = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [18 x i8] c"natoms      = %d\0A\00", align 1
@.str5 = private unnamed_addr constant [18 x i8] c"step        = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"t           = %e\0A\00", align 1
@.str7 = private unnamed_addr constant [18 x i8] c"lambda      = %e\0A\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"Empty file %s\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@do_read = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@.str11 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str12 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/trnio.c\00", align 1
@do_write = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@.str13 = private unnamed_addr constant [3 x i8] c"pv\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str18 = private unnamed_addr constant [21 x i8] c"inputrec in trn file\00", align 1
@.str19 = private unnamed_addr constant [21 x i8] c"energies in trn file\00", align 1
@.str20 = private unnamed_addr constant [21 x i8] c"topology in trn file\00", align 1
@.str21 = private unnamed_addr constant [25 x i8] c"symbol table in trn file\00", align 1
@do_trnheader.magic = internal global i32 1993, align 4
@.str22 = private unnamed_addr constant [13 x i8] c"GMX_trn_file\00", align 1
@do_trnheader.bFirst = internal unnamed_addr global i1 false
@.str23 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@stderr = external global %struct._IO_FILE*
@.str25 = private unnamed_addr constant [17 x i8] c"trn version: %s\0A\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str27 = private unnamed_addr constant [12 x i8] c"sh->ir_size\00", align 1
@.str28 = private unnamed_addr constant [11 x i8] c"sh->e_size\00", align 1
@.str29 = private unnamed_addr constant [13 x i8] c"sh->box_size\00", align 1
@.str30 = private unnamed_addr constant [13 x i8] c"sh->vir_size\00", align 1
@.str31 = private unnamed_addr constant [14 x i8] c"sh->pres_size\00", align 1
@.str32 = private unnamed_addr constant [13 x i8] c"sh->top_size\00", align 1
@.str33 = private unnamed_addr constant [13 x i8] c"sh->sym_size\00", align 1
@.str34 = private unnamed_addr constant [11 x i8] c"sh->x_size\00", align 1
@.str35 = private unnamed_addr constant [11 x i8] c"sh->v_size\00", align 1
@.str36 = private unnamed_addr constant [11 x i8] c"sh->f_size\00", align 1
@.str37 = private unnamed_addr constant [11 x i8] c"sh->natoms\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"sh->step\00", align 1
@.str39 = private unnamed_addr constant [8 x i8] c"sh->nre\00", align 1
@.str40 = private unnamed_addr constant [6 x i8] c"sh->t\00", align 1
@.str41 = private unnamed_addr constant [11 x i8] c"sh->lambda\00", align 1
@.str42 = private unnamed_addr constant [47 x i8] c"Can not determine precision of trn file, quit!\00", align 1
@.str43 = private unnamed_addr constant [36 x i8] c"Float size %d. Maybe different CPU?\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @pr_trnheader(%struct._IO_FILE* %fp, i32 %indent, i8* %title, %struct.t_trnheader* %sh) #0 {
entry:
  %tobool = icmp eq %struct.t_trnheader* %sh, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @pr_title(%struct._IO_FILE* %fp, i32 %indent, i8* %title) #4
  %call1 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #4
  %box_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2
  %0 = load i32* %box_size, align 4, !tbaa !0
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i32 %0) #4
  %call3 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #4
  %x_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7
  %1 = load i32* %x_size, align 4, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0), i32 %1) #4
  %call5 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #4
  %v_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8
  %2 = load i32* %v_size, align 4, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str2, i64 0, i64 0), i32 %2) #4
  %call7 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #4
  %f_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9
  %3 = load i32* %f_size, align 4, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0), i32 %3) #4
  %call9 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #4
  %natoms = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %4 = load i32* %natoms, align 4, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str4, i64 0, i64 0), i32 %4) #4
  %call11 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #4
  %step = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 11
  %5 = load i32* %step, align 4, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0), i32 %5) #4
  %call13 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #4
  %t = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 13
  %6 = load float* %t, align 4, !tbaa !3
  %conv = fpext float %6 to double
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), double %conv) #4
  %call15 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #4
  %lambda = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 14
  %7 = load float* %lambda, align 4, !tbaa !3
  %conv16 = fpext float %7 to double
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str7, i64 0, i64 0), double %conv16) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare i32 @pr_title(%struct._IO_FILE*, i32, i8*) #1

; Function Attrs: optsize
declare i32 @pr_indent(%struct._IO_FILE*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @read_trnheader(i8* %fn, %struct.t_trnheader* %trn) #0 {
entry:
  %bOK = alloca i32, align 4
  %call.i = call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #4
  %call1 = call fastcc i32 @do_trnheader(i32 %call.i, i32 1, %struct.t_trnheader* %trn, i32* %bOK) #5
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i8* %fn) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  call void @gmx_fio_close(i32 %call.i) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @open_trn(i8* %fn, i8* %mode) #0 {
entry:
  %call = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #4
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @do_trnheader(i32 %fp, i32 %bRead, %struct.t_trnheader* %sh, i32* %bOK) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #3
  store i32 1, i32* %bOK, align 4, !tbaa !0
  call void @gmx_fio_select(i32 %fp) #4
  %tobool = icmp ne i32 %bRead, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %call = call i32 %1(i8* bitcast (i32* @do_trnheader.magic to i8*), i32 1, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 79) #4
  %tobool1 = icmp eq i32 %call, 0
  br i1 %tobool1, label %cleanup, label %if.then5

cond.false:                                       ; preds = %entry
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %call2 = call i32 %2(i8* bitcast (i32* @do_trnheader.magic to i8*), i32 1, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 79) #4
  %tobool3 = icmp eq i32 %call2, 0
  br i1 %tobool3, label %cleanup, label %if.else

if.then5:                                         ; preds = %cond.true
  %3 = load i32* %bOK, align 4, !tbaa !0
  %tobool6317 = icmp eq i32 %3, 0
  br i1 %tobool6317, label %land.end, label %cond.end

cond.end:                                         ; preds = %if.then5
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %call9 = call i32 %4(i8* %0, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 83) #4
  %tobool13 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %if.then5, %cond.end
  %5 = phi i1 [ false, %if.then5 ], [ %tobool13, %cond.end ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %bOK, align 4, !tbaa !0
  %.b = load i1* @do_trnheader.bFirst, align 1
  br i1 %.b, label %if.end31, label %if.then15

if.then15:                                        ; preds = %land.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), i8* %0) #4
  store i1 true, i1* @do_trnheader.bFirst, align 1
  %.pr = load i32* %bOK, align 4, !tbaa !0
  br label %if.end31

if.else:                                          ; preds = %cond.false
  %7 = load i32* %bOK, align 4, !tbaa !0
  %tobool6 = icmp eq i32 %7, 0
  br i1 %tobool6, label %land.end29, label %cond.end26

cond.end26:                                       ; preds = %if.else
  %8 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %call25 = call i32 %8(i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i32 1, i32 7, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 90) #4
  %tobool28 = icmp ne i32 %call25, 0
  br label %land.end29

land.end29:                                       ; preds = %if.else, %cond.end26
  %9 = phi i1 [ false, %if.else ], [ %tobool28, %cond.end26 ]
  %land.ext30 = zext i1 %9 to i32
  store i32 %land.ext30, i32* %bOK, align 4, !tbaa !0
  br label %if.end31

if.end31:                                         ; preds = %land.end, %if.then15, %land.end29
  %10 = phi i32 [ %land.ext, %land.end ], [ %.pr, %if.then15 ], [ %land.ext30, %land.end29 ]
  %tobool32 = icmp eq i32 %10, 0
  br i1 %tobool32, label %land.end43.thread, label %land.rhs33

land.end43.thread:                                ; preds = %if.end31
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %land.end56.thread

land.rhs33:                                       ; preds = %if.end31
  br i1 %tobool, label %cond.true35, label %cond.false37

cond.true35:                                      ; preds = %land.rhs33
  %11 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %12 = bitcast %struct.t_trnheader* %sh to i8*
  %call36 = call i32 %11(i8* %12, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 91) #4
  br label %land.end43

cond.false37:                                     ; preds = %land.rhs33
  %13 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %14 = bitcast %struct.t_trnheader* %sh to i8*
  %call39 = call i32 %13(i8* %14, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 91) #4
  br label %land.end43

land.end43:                                       ; preds = %cond.true35, %cond.false37
  %cond41 = phi i32 [ %call36, %cond.true35 ], [ %call39, %cond.false37 ]
  %tobool42 = icmp ne i32 %cond41, 0
  %land.ext44 = zext i1 %tobool42 to i32
  store i32 %land.ext44, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool42, label %land.rhs46, label %land.end56.thread

land.rhs46:                                       ; preds = %land.end43
  br i1 %tobool, label %cond.true48, label %cond.false50

cond.true48:                                      ; preds = %land.rhs46
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %e_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 1
  %16 = bitcast i32* %e_size to i8*
  %call49 = call i32 %15(i8* %16, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 92) #4
  br label %land.end56

cond.false50:                                     ; preds = %land.rhs46
  %17 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %e_size51 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 1
  %18 = bitcast i32* %e_size51 to i8*
  %call52 = call i32 %17(i8* %18, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 92) #4
  br label %land.end56

land.end56.thread:                                ; preds = %land.end43, %land.end43.thread
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %land.end69.thread

land.end56:                                       ; preds = %cond.true48, %cond.false50
  %cond54 = phi i32 [ %call49, %cond.true48 ], [ %call52, %cond.false50 ]
  %tobool55 = icmp ne i32 %cond54, 0
  %land.ext57 = zext i1 %tobool55 to i32
  store i32 %land.ext57, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool55, label %land.rhs59, label %land.end69.thread

land.rhs59:                                       ; preds = %land.end56
  br i1 %tobool, label %cond.true61, label %cond.false63

cond.true61:                                      ; preds = %land.rhs59
  %19 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %box_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2
  %20 = bitcast i32* %box_size to i8*
  %call62 = call i32 %19(i8* %20, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 93) #4
  br label %land.end69

cond.false63:                                     ; preds = %land.rhs59
  %21 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %box_size64 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2
  %22 = bitcast i32* %box_size64 to i8*
  %call65 = call i32 %21(i8* %22, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 93) #4
  br label %land.end69

land.end69.thread:                                ; preds = %land.end56, %land.end56.thread
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %land.end82.thread

land.end69:                                       ; preds = %cond.true61, %cond.false63
  %cond67 = phi i32 [ %call62, %cond.true61 ], [ %call65, %cond.false63 ]
  %tobool68 = icmp ne i32 %cond67, 0
  %land.ext70 = zext i1 %tobool68 to i32
  store i32 %land.ext70, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool68, label %land.rhs72, label %land.end82.thread

land.rhs72:                                       ; preds = %land.end69
  br i1 %tobool, label %cond.true74, label %cond.false76

cond.true74:                                      ; preds = %land.rhs72
  %23 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %vir_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 3
  %24 = bitcast i32* %vir_size to i8*
  %call75 = call i32 %23(i8* %24, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 94) #4
  br label %land.end82

cond.false76:                                     ; preds = %land.rhs72
  %25 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %vir_size77 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 3
  %26 = bitcast i32* %vir_size77 to i8*
  %call78 = call i32 %25(i8* %26, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 94) #4
  br label %land.end82

land.end82.thread:                                ; preds = %land.end69, %land.end69.thread
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %land.end95.thread

land.end82:                                       ; preds = %cond.true74, %cond.false76
  %cond80 = phi i32 [ %call75, %cond.true74 ], [ %call78, %cond.false76 ]
  %tobool81 = icmp ne i32 %cond80, 0
  %land.ext83 = zext i1 %tobool81 to i32
  store i32 %land.ext83, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool81, label %land.rhs85, label %land.end95.thread

land.rhs85:                                       ; preds = %land.end82
  br i1 %tobool, label %cond.true87, label %cond.false89

cond.true87:                                      ; preds = %land.rhs85
  %27 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %pres_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 4
  %28 = bitcast i32* %pres_size to i8*
  %call88 = call i32 %27(i8* %28, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 95) #4
  br label %land.end95

cond.false89:                                     ; preds = %land.rhs85
  %29 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %pres_size90 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 4
  %30 = bitcast i32* %pres_size90 to i8*
  %call91 = call i32 %29(i8* %30, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 95) #4
  br label %land.end95

land.end95.thread:                                ; preds = %land.end82, %land.end82.thread
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %land.end108.thread

land.end95:                                       ; preds = %cond.true87, %cond.false89
  %cond93 = phi i32 [ %call88, %cond.true87 ], [ %call91, %cond.false89 ]
  %tobool94 = icmp ne i32 %cond93, 0
  %land.ext96 = zext i1 %tobool94 to i32
  store i32 %land.ext96, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool94, label %land.rhs98, label %land.end108.thread

land.rhs98:                                       ; preds = %land.end95
  br i1 %tobool, label %cond.true100, label %cond.false102

cond.true100:                                     ; preds = %land.rhs98
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %top_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 5
  %32 = bitcast i32* %top_size to i8*
  %call101 = call i32 %31(i8* %32, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 96) #4
  br label %land.end108

cond.false102:                                    ; preds = %land.rhs98
  %33 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %top_size103 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 5
  %34 = bitcast i32* %top_size103 to i8*
  %call104 = call i32 %33(i8* %34, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 96) #4
  br label %land.end108

land.end108.thread:                               ; preds = %land.end95, %land.end95.thread
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %land.end121.thread

land.end108:                                      ; preds = %cond.true100, %cond.false102
  %cond106 = phi i32 [ %call101, %cond.true100 ], [ %call104, %cond.false102 ]
  %tobool107 = icmp ne i32 %cond106, 0
  %land.ext109 = zext i1 %tobool107 to i32
  store i32 %land.ext109, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool107, label %land.rhs111, label %land.end121.thread

land.rhs111:                                      ; preds = %land.end108
  br i1 %tobool, label %cond.true113, label %cond.false115

cond.true113:                                     ; preds = %land.rhs111
  %35 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %sym_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 6
  %36 = bitcast i32* %sym_size to i8*
  %call114 = call i32 %35(i8* %36, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 97) #4
  br label %land.end121

cond.false115:                                    ; preds = %land.rhs111
  %37 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %sym_size116 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 6
  %38 = bitcast i32* %sym_size116 to i8*
  %call117 = call i32 %37(i8* %38, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 97) #4
  br label %land.end121

land.end121.thread:                               ; preds = %land.end108, %land.end108.thread
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %land.end134.thread

land.end121:                                      ; preds = %cond.true113, %cond.false115
  %cond119 = phi i32 [ %call114, %cond.true113 ], [ %call117, %cond.false115 ]
  %tobool120 = icmp ne i32 %cond119, 0
  %land.ext122 = zext i1 %tobool120 to i32
  store i32 %land.ext122, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool120, label %land.rhs124, label %land.end134.thread

land.rhs124:                                      ; preds = %land.end121
  br i1 %tobool, label %cond.true126, label %cond.false128

cond.true126:                                     ; preds = %land.rhs124
  %39 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %x_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7
  %40 = bitcast i32* %x_size to i8*
  %call127 = call i32 %39(i8* %40, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 98) #4
  br label %land.end134

cond.false128:                                    ; preds = %land.rhs124
  %41 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %x_size129 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7
  %42 = bitcast i32* %x_size129 to i8*
  %call130 = call i32 %41(i8* %42, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 98) #4
  br label %land.end134

land.end134.thread:                               ; preds = %land.end121, %land.end121.thread
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %land.end147.thread

land.end134:                                      ; preds = %cond.true126, %cond.false128
  %cond132 = phi i32 [ %call127, %cond.true126 ], [ %call130, %cond.false128 ]
  %tobool133 = icmp ne i32 %cond132, 0
  %land.ext135 = zext i1 %tobool133 to i32
  store i32 %land.ext135, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool133, label %land.rhs137, label %land.end147.thread

land.rhs137:                                      ; preds = %land.end134
  br i1 %tobool, label %cond.true139, label %cond.false141

cond.true139:                                     ; preds = %land.rhs137
  %43 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %v_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8
  %44 = bitcast i32* %v_size to i8*
  %call140 = call i32 %43(i8* %44, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 99) #4
  br label %land.end147

cond.false141:                                    ; preds = %land.rhs137
  %45 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %v_size142 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8
  %46 = bitcast i32* %v_size142 to i8*
  %call143 = call i32 %45(i8* %46, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 99) #4
  br label %land.end147

land.end147.thread:                               ; preds = %land.end134, %land.end134.thread
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %land.end160.thread

land.end147:                                      ; preds = %cond.true139, %cond.false141
  %cond145 = phi i32 [ %call140, %cond.true139 ], [ %call143, %cond.false141 ]
  %tobool146 = icmp ne i32 %cond145, 0
  %land.ext148 = zext i1 %tobool146 to i32
  store i32 %land.ext148, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool146, label %land.rhs150, label %land.end160.thread

land.rhs150:                                      ; preds = %land.end147
  br i1 %tobool, label %cond.true152, label %cond.false154

cond.true152:                                     ; preds = %land.rhs150
  %47 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %f_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9
  %48 = bitcast i32* %f_size to i8*
  %call153 = call i32 %47(i8* %48, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 100) #4
  br label %land.end160

cond.false154:                                    ; preds = %land.rhs150
  %49 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %f_size155 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9
  %50 = bitcast i32* %f_size155 to i8*
  %call156 = call i32 %49(i8* %50, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 100) #4
  br label %land.end160

land.end160.thread:                               ; preds = %land.end147, %land.end147.thread
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %cleanup

land.end160:                                      ; preds = %cond.true152, %cond.false154
  %cond158 = phi i32 [ %call153, %cond.true152 ], [ %call156, %cond.false154 ]
  %tobool159 = icmp ne i32 %cond158, 0
  %land.ext161 = zext i1 %tobool159 to i32
  store i32 %land.ext161, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool159, label %if.end164, label %cleanup

if.end164:                                        ; preds = %land.end160
  %box_size.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2
  %51 = load i32* %box_size.i, align 4, !tbaa !0
  %tobool.i = icmp eq i32 %51, 0
  br i1 %tobool.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end164
  %div.i = sdiv i32 %51, 9
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end164
  %x_size.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7
  %52 = load i32* %x_size.i, align 4, !tbaa !0
  %tobool2.i = icmp eq i32 %52, 0
  br i1 %tobool2.i, label %if.else6.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  %natoms.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %53 = load i32* %natoms.i, align 4, !tbaa !0
  %mul.i = mul nsw i32 %53, 3
  %div5.i = sdiv i32 %52, %mul.i
  br label %if.end23.i

if.else6.i:                                       ; preds = %if.else.i
  %v_size.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8
  %54 = load i32* %v_size.i, align 4, !tbaa !0
  %tobool7.i = icmp eq i32 %54, 0
  br i1 %tobool7.i, label %if.else13.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else6.i
  %natoms10.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %55 = load i32* %natoms10.i, align 4, !tbaa !0
  %mul11.i = mul nsw i32 %55, 3
  %div12.i = sdiv i32 %54, %mul11.i
  br label %if.end23.i

if.else13.i:                                      ; preds = %if.else6.i
  %f_size.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9
  %56 = load i32* %f_size.i, align 4, !tbaa !0
  %tobool14.i = icmp eq i32 %56, 0
  br i1 %tobool14.i, label %if.end23.thread.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else13.i
  %natoms17.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %57 = load i32* %natoms17.i, align 4, !tbaa !0
  %mul18.i = mul nsw i32 %57, 3
  %div19.i = sdiv i32 %56, %mul18.i
  br label %if.end23.i

if.end23.thread.i:                                ; preds = %if.else13.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str42, i64 0, i64 0)) #4
  br label %if.then28.i

if.end23.i:                                       ; preds = %if.then15.i, %if.then8.i, %if.then3.i, %if.then.i
  %nflsize.0.i = phi i32 [ %div.i, %if.then.i ], [ %div5.i, %if.then3.i ], [ %div12.i, %if.then8.i ], [ %div19.i, %if.then15.i ]
  switch i32 %nflsize.0.i, label %if.then28.i [
    i32 4, label %nFloatSize.exit
    i32 8, label %nFloatSize.exit
  ]

if.then28.i:                                      ; preds = %if.end23.i, %if.end23.thread.i
  %nflsize.040.i = phi i32 [ 0, %if.end23.thread.i ], [ %nflsize.0.i, %if.end23.i ]
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str43, i64 0, i64 0), i32 %nflsize.040.i) #4
  br label %nFloatSize.exit

nFloatSize.exit:                                  ; preds = %if.end23.i, %if.end23.i, %if.then28.i
  %nflsize.041.i = phi i32 [ %nflsize.0.i, %if.end23.i ], [ %nflsize.0.i, %if.end23.i ], [ %nflsize.040.i, %if.then28.i ]
  %cmp = icmp eq i32 %nflsize.041.i, 8
  %conv166 = zext i1 %cmp to i32
  call void @gmx_fio_setprecision(i32 %fp, i32 %conv166) #4
  %58 = load i32* %bOK, align 4, !tbaa !0
  %tobool167 = icmp eq i32 %58, 0
  br i1 %tobool167, label %land.end178.thread, label %land.rhs168

land.end178.thread:                               ; preds = %nFloatSize.exit
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %land.end191.thread

land.rhs168:                                      ; preds = %nFloatSize.exit
  br i1 %tobool, label %cond.true170, label %cond.false172

cond.true170:                                     ; preds = %land.rhs168
  %59 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %natoms = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %60 = bitcast i32* %natoms to i8*
  %call171 = call i32 %59(i8* %60, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 105) #4
  br label %land.end178

cond.false172:                                    ; preds = %land.rhs168
  %61 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %natoms173 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %62 = bitcast i32* %natoms173 to i8*
  %call174 = call i32 %61(i8* %62, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 105) #4
  br label %land.end178

land.end178:                                      ; preds = %cond.true170, %cond.false172
  %cond176 = phi i32 [ %call171, %cond.true170 ], [ %call174, %cond.false172 ]
  %tobool177 = icmp ne i32 %cond176, 0
  %land.ext179 = zext i1 %tobool177 to i32
  store i32 %land.ext179, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool177, label %land.rhs181, label %land.end191.thread

land.rhs181:                                      ; preds = %land.end178
  br i1 %tobool, label %cond.true183, label %cond.false185

cond.true183:                                     ; preds = %land.rhs181
  %63 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %step = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 11
  %64 = bitcast i32* %step to i8*
  %call184 = call i32 %63(i8* %64, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 106) #4
  br label %land.end191

cond.false185:                                    ; preds = %land.rhs181
  %65 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %step186 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 11
  %66 = bitcast i32* %step186 to i8*
  %call187 = call i32 %65(i8* %66, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 106) #4
  br label %land.end191

land.end191.thread:                               ; preds = %land.end178, %land.end178.thread
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %land.end204.thread

land.end191:                                      ; preds = %cond.true183, %cond.false185
  %cond189 = phi i32 [ %call184, %cond.true183 ], [ %call187, %cond.false185 ]
  %tobool190 = icmp ne i32 %cond189, 0
  %land.ext192 = zext i1 %tobool190 to i32
  store i32 %land.ext192, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool190, label %land.rhs194, label %land.end204.thread

land.rhs194:                                      ; preds = %land.end191
  br i1 %tobool, label %cond.true196, label %cond.false198

cond.true196:                                     ; preds = %land.rhs194
  %67 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %nre = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 12
  %68 = bitcast i32* %nre to i8*
  %call197 = call i32 %67(i8* %68, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 107) #4
  br label %land.end204

cond.false198:                                    ; preds = %land.rhs194
  %69 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %nre199 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 12
  %70 = bitcast i32* %nre199 to i8*
  %call200 = call i32 %69(i8* %70, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 107) #4
  br label %land.end204

land.end204.thread:                               ; preds = %land.end191, %land.end191.thread
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %land.end217.thread

land.end204:                                      ; preds = %cond.true196, %cond.false198
  %cond202 = phi i32 [ %call197, %cond.true196 ], [ %call200, %cond.false198 ]
  %tobool203 = icmp ne i32 %cond202, 0
  %land.ext205 = zext i1 %tobool203 to i32
  store i32 %land.ext205, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool203, label %land.rhs207, label %land.end217.thread

land.rhs207:                                      ; preds = %land.end204
  br i1 %tobool, label %cond.true209, label %cond.false211

cond.true209:                                     ; preds = %land.rhs207
  %71 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %t = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 13
  %72 = bitcast float* %t to i8*
  %call210 = call i32 %71(i8* %72, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 108) #4
  br label %land.end217

cond.false211:                                    ; preds = %land.rhs207
  %73 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %t212 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 13
  %74 = bitcast float* %t212 to i8*
  %call213 = call i32 %73(i8* %74, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 108) #4
  br label %land.end217

land.end217.thread:                               ; preds = %land.end204, %land.end204.thread
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %land.end230

land.end217:                                      ; preds = %cond.true209, %cond.false211
  %cond215 = phi i32 [ %call210, %cond.true209 ], [ %call213, %cond.false211 ]
  %tobool216 = icmp ne i32 %cond215, 0
  %land.ext218 = zext i1 %tobool216 to i32
  store i32 %land.ext218, i32* %bOK, align 4, !tbaa !0
  br i1 %tobool216, label %land.rhs220, label %land.end230

land.rhs220:                                      ; preds = %land.end217
  br i1 %tobool, label %cond.true222, label %cond.false224

cond.true222:                                     ; preds = %land.rhs220
  %75 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %lambda = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 14
  %76 = bitcast float* %lambda to i8*
  %call223 = call i32 %75(i8* %76, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 109) #4
  br label %cond.end227

cond.false224:                                    ; preds = %land.rhs220
  %77 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %lambda225 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 14
  %78 = bitcast float* %lambda225 to i8*
  %call226 = call i32 %77(i8* %78, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 109) #4
  br label %cond.end227

cond.end227:                                      ; preds = %cond.false224, %cond.true222
  %cond228 = phi i32 [ %call223, %cond.true222 ], [ %call226, %cond.false224 ]
  %tobool229 = icmp ne i32 %cond228, 0
  br label %land.end230

land.end230:                                      ; preds = %land.end217.thread, %cond.end227, %land.end217
  %79 = phi i1 [ false, %land.end217 ], [ %tobool229, %cond.end227 ], [ false, %land.end217.thread ]
  %land.ext231 = zext i1 %79 to i32
  store i32 %land.ext231, i32* %bOK, align 4, !tbaa !0
  br label %cleanup

cleanup:                                          ; preds = %land.end160.thread, %land.end160, %cond.false, %cond.true, %land.end230
  %retval.0 = phi i32 [ %land.ext231, %land.end230 ], [ 0, %cond.true ], [ 0, %cond.false ], [ %land.ext161, %land.end160 ], [ 0, %land.end160.thread ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @close_trn(i32 %fp) #0 {
entry:
  tail call void @gmx_fio_close(i32 %fp) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @fread_trnheader(i32 %fp, %struct.t_trnheader* %trn, i32* %bOK) #0 {
entry:
  %call = tail call fastcc i32 @do_trnheader(i32 %fp, i32 1, %struct.t_trnheader* %trn, i32* %bOK) #5
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define void @write_trn(i8* %fn, i32 %step, float %t, float %lambda, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  %step.addr = alloca i32, align 4
  %t.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %natoms.addr = alloca i32, align 4
  store i32 %step, i32* %step.addr, align 4, !tbaa !0
  store float %t, float* %t.addr, align 4, !tbaa !3
  store float %lambda, float* %lambda.addr, align 4, !tbaa !3
  store i32 %natoms, i32* %natoms.addr, align 4, !tbaa !0
  %call.i = call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #4
  %call1 = call fastcc i32 @do_trn(i32 %call.i, i32 0, i32* %step.addr, float* %t.addr, float* %lambda.addr, [3 x float]* %box, i32* %natoms.addr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #5
  call void @gmx_fio_close(i32 %call.i) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @do_trn(i32 %fp, i32 %bRead, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  %bOK = alloca i32, align 4
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 161, i32 1, i32 60) #4
  %0 = bitcast i8* %call to %struct.t_trnheader*
  %tobool = icmp ne i32 %bRead, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tobool1 = icmp ne [3 x float]* %box, null
  %conv = select i1 %tobool1, i32 36, i32 0
  %box_size = getelementptr inbounds i8* %call, i64 8
  %1 = bitcast i8* %box_size to i32*
  store i32 %conv, i32* %1, align 4, !tbaa !0
  %tobool2 = icmp eq [3 x float]* %x, null
  br i1 %tobool2, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %2 = load i32* %natoms, align 4, !tbaa !0
  %mul = mul i32 %2, 12
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond4 = phi i32 [ %mul, %cond.true ], [ 0, %if.then ]
  %x_size = getelementptr inbounds i8* %call, i64 28
  %3 = bitcast i8* %x_size to i32*
  store i32 %cond4, i32* %3, align 4, !tbaa !0
  %tobool6 = icmp eq [3 x float]* %v, null
  br i1 %tobool6, label %cond.end11, label %cond.true7

cond.true7:                                       ; preds = %cond.end
  %4 = load i32* %natoms, align 4, !tbaa !0
  %mul9 = mul i32 %4, 12
  br label %cond.end11

cond.end11:                                       ; preds = %cond.end, %cond.true7
  %cond12 = phi i32 [ %mul9, %cond.true7 ], [ 0, %cond.end ]
  %v_size = getelementptr inbounds i8* %call, i64 32
  %5 = bitcast i8* %v_size to i32*
  store i32 %cond12, i32* %5, align 4, !tbaa !0
  %tobool14 = icmp eq [3 x float]* %f, null
  br i1 %tobool14, label %cond.end19, label %cond.true15

cond.true15:                                      ; preds = %cond.end11
  %6 = load i32* %natoms, align 4, !tbaa !0
  %mul17 = mul i32 %6, 12
  br label %cond.end19

cond.end19:                                       ; preds = %cond.end11, %cond.true15
  %cond20 = phi i32 [ %mul17, %cond.true15 ], [ 0, %cond.end11 ]
  %f_size = getelementptr inbounds i8* %call, i64 36
  %7 = bitcast i8* %f_size to i32*
  store i32 %cond20, i32* %7, align 4, !tbaa !0
  %8 = load i32* %natoms, align 4, !tbaa !0
  %natoms22 = getelementptr inbounds i8* %call, i64 40
  %9 = bitcast i8* %natoms22 to i32*
  store i32 %8, i32* %9, align 4, !tbaa !0
  %10 = load i32* %step, align 4, !tbaa !0
  %step23 = getelementptr inbounds i8* %call, i64 44
  %11 = bitcast i8* %step23 to i32*
  store i32 %10, i32* %11, align 4, !tbaa !0
  %nre = getelementptr inbounds i8* %call, i64 48
  %12 = bitcast i8* %nre to i32*
  store i32 0, i32* %12, align 4, !tbaa !0
  %13 = load float* %t, align 4, !tbaa !3
  %t24 = getelementptr inbounds i8* %call, i64 52
  %14 = bitcast i8* %t24 to float*
  store float %13, float* %14, align 4, !tbaa !3
  %15 = load float* %lambda, align 4, !tbaa !3
  %lambda25 = getelementptr inbounds i8* %call, i64 56
  %16 = bitcast i8* %lambda25 to float*
  store float %15, float* %16, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cond.end19, %entry
  %call26 = call fastcc i32 @do_trnheader(i32 %fp, i32 %bRead, %struct.t_trnheader* %0, i32* %bOK) #5
  %tobool27 = icmp eq i32 %call26, 0
  br i1 %tobool27, label %return, label %if.end29

if.end29:                                         ; preds = %if.end
  br i1 %tobool, label %if.then31, label %if.end48

if.then31:                                        ; preds = %if.end29
  %natoms32 = getelementptr inbounds i8* %call, i64 40
  %17 = bitcast i8* %natoms32 to i32*
  %18 = load i32* %17, align 4, !tbaa !0
  store i32 %18, i32* %natoms, align 4, !tbaa !0
  %step33 = getelementptr inbounds i8* %call, i64 44
  %19 = bitcast i8* %step33 to i32*
  %20 = load i32* %19, align 4, !tbaa !0
  store i32 %20, i32* %step, align 4, !tbaa !0
  %t34 = getelementptr inbounds i8* %call, i64 52
  %21 = bitcast i8* %t34 to float*
  %22 = load float* %21, align 4, !tbaa !3
  store float %22, float* %t, align 4, !tbaa !3
  %lambda35 = getelementptr inbounds i8* %call, i64 56
  %23 = bitcast i8* %lambda35 to float*
  %24 = load float* %23, align 4, !tbaa !3
  store float %24, float* %lambda, align 4, !tbaa !3
  %ir_size = bitcast i8* %call to i32*
  %25 = load i32* %ir_size, align 4, !tbaa !0
  %tobool36 = icmp eq i32 %25, 0
  br i1 %tobool36, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.then31
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str18, i64 0, i64 0)) #4
  br label %if.end38

if.end38:                                         ; preds = %if.then31, %if.then37
  %e_size = getelementptr inbounds i8* %call, i64 4
  %26 = bitcast i8* %e_size to i32*
  %27 = load i32* %26, align 4, !tbaa !0
  %tobool39 = icmp eq i32 %27, 0
  br i1 %tobool39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end38
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str19, i64 0, i64 0)) #4
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %if.then40
  %top_size = getelementptr inbounds i8* %call, i64 20
  %28 = bitcast i8* %top_size to i32*
  %29 = load i32* %28, align 4, !tbaa !0
  %tobool42 = icmp eq i32 %29, 0
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end41
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str20, i64 0, i64 0)) #4
  br label %if.end44

if.end44:                                         ; preds = %if.end41, %if.then43
  %sym_size = getelementptr inbounds i8* %call, i64 24
  %30 = bitcast i8* %sym_size to i32*
  %31 = load i32* %30, align 4, !tbaa !0
  %tobool45 = icmp eq i32 %31, 0
  br i1 %tobool45, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.end44
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str21, i64 0, i64 0)) #4
  br label %if.end48

if.end48:                                         ; preds = %if.end44, %if.then46, %if.end29
  %call49 = call fastcc i32 @do_htrn(i32 %bRead, %struct.t_trnheader* %0, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #5
  store i32 %call49, i32* %bOK, align 4, !tbaa !0
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 191, i8* %call) #4
  %32 = load i32* %bOK, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.end48
  %retval.0 = phi i32 [ %32, %if.end48 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @read_trn(i8* %fn, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  %call.i = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #4
  %call1 = tail call fastcc i32 @do_trn(i32 %call.i, i32 1, i32* %step, float* %t, float* %lambda, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #5
  tail call void @gmx_fio_close(i32 %call.i) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fwrite_trn(i32 %fp, i32 %step, float %t, float %lambda, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  %step.addr = alloca i32, align 4
  %t.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %natoms.addr = alloca i32, align 4
  store i32 %step, i32* %step.addr, align 4, !tbaa !0
  store float %t, float* %t.addr, align 4, !tbaa !3
  store float %lambda, float* %lambda.addr, align 4, !tbaa !3
  store i32 %natoms, i32* %natoms.addr, align 4, !tbaa !0
  %call = call fastcc i32 @do_trn(i32 %fp, i32 0, i32* %step.addr, float* %t.addr, float* %lambda.addr, [3 x float]* %box, i32* %natoms.addr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @fread_trn(i32 %fp, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  %call = tail call fastcc i32 @do_trn(i32 %fp, i32 1, i32* %step, float* %t, float* %lambda, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #5
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define i32 @fread_htrn(i32 %fp, %struct.t_trnheader* nocapture %trn, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  %call = tail call fastcc i32 @do_htrn(i32 1, %struct.t_trnheader* %trn, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #5
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @do_htrn(i32 %bRead, %struct.t_trnheader* nocapture %sh, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  %pv = alloca [3 x [3 x float]], align 16
  %0 = bitcast [3 x [3 x float]]* %pv to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #3
  %box_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2
  %1 = load i32* %box_size, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %tobool1 = icmp eq i32 %bRead, 0
  br i1 %tobool1, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.rhs
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %3 = bitcast [3 x float]* %box to i8*
  %call = call i32 %2(i8* %3, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 145) #4
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %5 = bitcast [3 x float]* %box to i8*
  %call2 = call i32 %4(i8* %5, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 145) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call2, %cond.false ]
  %tobool3 = icmp ne i32 %cond, 0
  %land.ext = zext i1 %tobool3 to i32
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end
  %bOK.0 = phi i32 [ %land.ext, %cond.end ], [ 1, %entry ]
  %vir_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 3
  %6 = load i32* %vir_size, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.end19, label %if.then5

if.then5:                                         ; preds = %if.end
  %tobool6 = icmp eq i32 %bOK.0, 0
  br i1 %tobool6, label %land.end17, label %land.rhs7

land.rhs7:                                        ; preds = %if.then5
  %tobool8 = icmp eq i32 %bRead, 0
  br i1 %tobool8, label %cond.false11, label %cond.true9

cond.true9:                                       ; preds = %land.rhs7
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %call10 = call i32 %7(i8* %0, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 146) #4
  br label %cond.end14

cond.false11:                                     ; preds = %land.rhs7
  %8 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %call13 = call i32 %8(i8* %0, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 146) #4
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false11, %cond.true9
  %cond15 = phi i32 [ %call10, %cond.true9 ], [ %call13, %cond.false11 ]
  %tobool16 = icmp ne i32 %cond15, 0
  br label %land.end17

land.end17:                                       ; preds = %if.then5, %cond.end14
  %9 = phi i1 [ false, %if.then5 ], [ %tobool16, %cond.end14 ]
  %land.ext18 = zext i1 %9 to i32
  br label %if.end19

if.end19:                                         ; preds = %if.end, %land.end17
  %bOK.1 = phi i32 [ %land.ext18, %land.end17 ], [ %bOK.0, %if.end ]
  %pres_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 4
  %10 = load i32* %pres_size, align 4, !tbaa !0
  %cmp20 = icmp eq i32 %10, 0
  br i1 %cmp20, label %if.end36, label %if.then21

if.then21:                                        ; preds = %if.end19
  %tobool22 = icmp eq i32 %bOK.1, 0
  br i1 %tobool22, label %land.end34, label %land.rhs23

land.rhs23:                                       ; preds = %if.then21
  %tobool24 = icmp eq i32 %bRead, 0
  br i1 %tobool24, label %cond.false28, label %cond.true25

cond.true25:                                      ; preds = %land.rhs23
  %11 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %call27 = call i32 %11(i8* %0, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 147) #4
  br label %cond.end31

cond.false28:                                     ; preds = %land.rhs23
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %call30 = call i32 %12(i8* %0, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 147) #4
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false28, %cond.true25
  %cond32 = phi i32 [ %call27, %cond.true25 ], [ %call30, %cond.false28 ]
  %tobool33 = icmp ne i32 %cond32, 0
  br label %land.end34

land.end34:                                       ; preds = %if.then21, %cond.end31
  %13 = phi i1 [ false, %if.then21 ], [ %tobool33, %cond.end31 ]
  %land.ext35 = zext i1 %13 to i32
  br label %if.end36

if.end36:                                         ; preds = %if.end19, %land.end34
  %bOK.2 = phi i32 [ %land.ext35, %land.end34 ], [ %bOK.1, %if.end19 ]
  %x_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7
  %14 = load i32* %x_size, align 4, !tbaa !0
  %cmp37 = icmp eq i32 %14, 0
  br i1 %cmp37, label %if.end52, label %if.then38

if.then38:                                        ; preds = %if.end36
  %tobool39 = icmp eq i32 %bOK.2, 0
  br i1 %tobool39, label %land.end50, label %land.rhs40

land.rhs40:                                       ; preds = %if.then38
  %tobool41 = icmp eq i32 %bRead, 0
  br i1 %tobool41, label %cond.false44, label %cond.true42

cond.true42:                                      ; preds = %land.rhs40
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %16 = bitcast [3 x float]* %x to i8*
  %natoms = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %17 = load i32* %natoms, align 4, !tbaa !0
  %call43 = call i32 %15(i8* %16, i32 %17, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 148) #4
  br label %cond.end47

cond.false44:                                     ; preds = %land.rhs40
  %18 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %19 = bitcast [3 x float]* %x to i8*
  %natoms45 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %20 = load i32* %natoms45, align 4, !tbaa !0
  %call46 = call i32 %18(i8* %19, i32 %20, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 148) #4
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false44, %cond.true42
  %cond48 = phi i32 [ %call43, %cond.true42 ], [ %call46, %cond.false44 ]
  %tobool49 = icmp ne i32 %cond48, 0
  br label %land.end50

land.end50:                                       ; preds = %if.then38, %cond.end47
  %21 = phi i1 [ false, %if.then38 ], [ %tobool49, %cond.end47 ]
  %land.ext51 = zext i1 %21 to i32
  br label %if.end52

if.end52:                                         ; preds = %if.end36, %land.end50
  %bOK.3 = phi i32 [ %land.ext51, %land.end50 ], [ %bOK.2, %if.end36 ]
  %v_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8
  %22 = load i32* %v_size, align 4, !tbaa !0
  %cmp53 = icmp eq i32 %22, 0
  br i1 %cmp53, label %if.end69, label %if.then54

if.then54:                                        ; preds = %if.end52
  %tobool55 = icmp eq i32 %bOK.3, 0
  br i1 %tobool55, label %land.end67, label %land.rhs56

land.rhs56:                                       ; preds = %if.then54
  %tobool57 = icmp eq i32 %bRead, 0
  br i1 %tobool57, label %cond.false61, label %cond.true58

cond.true58:                                      ; preds = %land.rhs56
  %23 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %24 = bitcast [3 x float]* %v to i8*
  %natoms59 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %25 = load i32* %natoms59, align 4, !tbaa !0
  %call60 = call i32 %23(i8* %24, i32 %25, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 149) #4
  br label %cond.end64

cond.false61:                                     ; preds = %land.rhs56
  %26 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %27 = bitcast [3 x float]* %v to i8*
  %natoms62 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %28 = load i32* %natoms62, align 4, !tbaa !0
  %call63 = call i32 %26(i8* %27, i32 %28, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 149) #4
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false61, %cond.true58
  %cond65 = phi i32 [ %call60, %cond.true58 ], [ %call63, %cond.false61 ]
  %tobool66 = icmp ne i32 %cond65, 0
  br label %land.end67

land.end67:                                       ; preds = %if.then54, %cond.end64
  %29 = phi i1 [ false, %if.then54 ], [ %tobool66, %cond.end64 ]
  %land.ext68 = zext i1 %29 to i32
  br label %if.end69

if.end69:                                         ; preds = %if.end52, %land.end67
  %bOK.4 = phi i32 [ %land.ext68, %land.end67 ], [ %bOK.3, %if.end52 ]
  %f_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9
  %30 = load i32* %f_size, align 4, !tbaa !0
  %cmp70 = icmp eq i32 %30, 0
  br i1 %cmp70, label %if.end86, label %if.then71

if.then71:                                        ; preds = %if.end69
  %tobool72 = icmp eq i32 %bOK.4, 0
  br i1 %tobool72, label %land.end84, label %land.rhs73

land.rhs73:                                       ; preds = %if.then71
  %tobool74 = icmp eq i32 %bRead, 0
  br i1 %tobool74, label %cond.false78, label %cond.true75

cond.true75:                                      ; preds = %land.rhs73
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !4
  %32 = bitcast [3 x float]* %f to i8*
  %natoms76 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %33 = load i32* %natoms76, align 4, !tbaa !0
  %call77 = call i32 %31(i8* %32, i32 %33, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 150) #4
  br label %cond.end81

cond.false78:                                     ; preds = %land.rhs73
  %34 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !4
  %35 = bitcast [3 x float]* %f to i8*
  %natoms79 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10
  %36 = load i32* %natoms79, align 4, !tbaa !0
  %call80 = call i32 %34(i8* %35, i32 %36, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 150) #4
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false78, %cond.true75
  %cond82 = phi i32 [ %call77, %cond.true75 ], [ %call80, %cond.false78 ]
  %tobool83 = icmp ne i32 %cond82, 0
  br label %land.end84

land.end84:                                       ; preds = %if.then71, %cond.end81
  %37 = phi i1 [ false, %if.then71 ], [ %tobool83, %cond.end81 ]
  %land.ext85 = zext i1 %37 to i32
  br label %if.end86

if.end86:                                         ; preds = %if.end69, %land.end84
  %bOK.5 = phi i32 [ %land.ext85, %land.end84 ], [ %bOK.4, %if.end69 ]
  call void @llvm.lifetime.end(i64 36, i8* %0) #3
  ret i32 %bOK.5
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #1

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: optsize
declare void @gmx_fio_select(i32) #1

; Function Attrs: optsize
declare void @gmx_fio_setprecision(i32, i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
