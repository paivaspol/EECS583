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
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !102), !dbg !257
  tail call void @llvm.dbg.value(metadata !{i32 %indent}, i64 0, metadata !103), !dbg !257
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !104), !dbg !257
  tail call void @llvm.dbg.value(metadata !{%struct.t_trnheader* %sh}, i64 0, metadata !105), !dbg !257
  %tobool = icmp eq %struct.t_trnheader* %sh, null, !dbg !258
  br i1 %tobool, label %if.end, label %if.then, !dbg !258

if.then:                                          ; preds = %entry
  %call = tail call i32 @pr_title(%struct._IO_FILE* %fp, i32 %indent, i8* %title) #5, !dbg !259
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !103), !dbg !259
  %call1 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #5, !dbg !261
  %box_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2, !dbg !262
  %0 = load i32* %box_size, align 4, !dbg !262, !tbaa !263
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i32 %0) #5, !dbg !262
  %call3 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #5, !dbg !266
  %x_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7, !dbg !267
  %1 = load i32* %x_size, align 4, !dbg !267, !tbaa !263
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0), i32 %1) #5, !dbg !267
  %call5 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #5, !dbg !268
  %v_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8, !dbg !269
  %2 = load i32* %v_size, align 4, !dbg !269, !tbaa !263
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str2, i64 0, i64 0), i32 %2) #5, !dbg !269
  %call7 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #5, !dbg !270
  %f_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9, !dbg !271
  %3 = load i32* %f_size, align 4, !dbg !271, !tbaa !263
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0), i32 %3) #5, !dbg !271
  %call9 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #5, !dbg !272
  %natoms = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !273
  %4 = load i32* %natoms, align 4, !dbg !273, !tbaa !263
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str4, i64 0, i64 0), i32 %4) #5, !dbg !273
  %call11 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #5, !dbg !274
  %step = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 11, !dbg !275
  %5 = load i32* %step, align 4, !dbg !275, !tbaa !263
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0), i32 %5) #5, !dbg !275
  %call13 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #5, !dbg !276
  %t = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 13, !dbg !277
  %6 = load float* %t, align 4, !dbg !277, !tbaa !278
  %conv = fpext float %6 to double, !dbg !277
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), double %conv) #5, !dbg !277
  %call15 = tail call i32 @pr_indent(%struct._IO_FILE* %fp, i32 %call) #5, !dbg !279
  %lambda = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 14, !dbg !280
  %7 = load float* %lambda, align 4, !dbg !280, !tbaa !278
  %conv16 = fpext float %7 to double, !dbg !280
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str7, i64 0, i64 0), double %conv16) #5, !dbg !280
  br label %if.end, !dbg !281

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !282
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i32 @pr_title(%struct._IO_FILE*, i32, i8*) #2

; Function Attrs: optsize
declare i32 @pr_indent(%struct._IO_FILE*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @read_trnheader(i8* %fn, %struct.t_trnheader* %trn) #0 {
entry:
  %bOK = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !110), !dbg !283
  call void @llvm.dbg.value(metadata !{%struct.t_trnheader* %trn}, i64 0, metadata !111), !dbg !283
  call void @llvm.dbg.declare(metadata !{i32* %bOK}, metadata !113), !dbg !284
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !285) #4, !dbg !287
  call void @llvm.dbg.value(metadata !288, i64 0, metadata !289) #4, !dbg !287
  %call.i = call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !290
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !112), !dbg !286
  %call1 = call fastcc i32 @do_trnheader(i32 %call.i, i32 1, %struct.t_trnheader* %trn, i32* %bOK) #6, !dbg !291
  %tobool = icmp eq i32 %call1, 0, !dbg !291
  br i1 %tobool, label %if.then, label %if.end, !dbg !291

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i8* %fn) #5, !dbg !292
  br label %if.end, !dbg !292

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !293) #4, !dbg !295
  call void @gmx_fio_close(i32 %call.i) #5, !dbg !296
  ret void, !dbg !297
}

; Function Attrs: nounwind optsize uwtable
define i32 @open_trn(i8* %fn, i8* %mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !196), !dbg !298
  tail call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !197), !dbg !298
  %call = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #5, !dbg !299
  ret i32 %call, !dbg !299
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @do_trnheader(i32 %fp, i32 %bRead, %struct.t_trnheader* %sh, i32* %bOK) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !239), !dbg !300
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !240), !dbg !300
  call void @llvm.dbg.value(metadata !{%struct.t_trnheader* %sh}, i64 0, metadata !241), !dbg !300
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !242), !dbg !300
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !301
  call void @llvm.lifetime.start(i64 256, i8* %0) #4, !dbg !301
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !243), !dbg !301
  store i32 1, i32* %bOK, align 4, !dbg !302, !tbaa !263
  call void @gmx_fio_select(i32 %fp) #5, !dbg !303
  %tobool = icmp ne i32 %bRead, 0, !dbg !304
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !304

cond.true:                                        ; preds = %entry
  %1 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !304, !tbaa !305
  %call = call i32 %1(i8* bitcast (i32* @do_trnheader.magic to i8*), i32 1, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 79) #5, !dbg !304
  %tobool1 = icmp eq i32 %call, 0, !dbg !304
  br i1 %tobool1, label %cleanup, label %if.then5, !dbg !304

cond.false:                                       ; preds = %entry
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !304, !tbaa !305
  %call2 = call i32 %2(i8* bitcast (i32* @do_trnheader.magic to i8*), i32 1, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 79) #5, !dbg !304
  %tobool3 = icmp eq i32 %call2, 0, !dbg !304
  br i1 %tobool3, label %cleanup, label %if.else, !dbg !304

if.then5:                                         ; preds = %cond.true
  %3 = load i32* %bOK, align 4, !dbg !306, !tbaa !263
  %tobool6317 = icmp eq i32 %3, 0, !dbg !306
  br i1 %tobool6317, label %land.end, label %cond.end, !dbg !306

cond.end:                                         ; preds = %if.then5
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !306, !tbaa !305
  %call9 = call i32 %4(i8* %0, i32 1, i32 7, i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 83) #5, !dbg !306
  %tobool13 = icmp ne i32 %call9, 0, !dbg !306
  br label %land.end

land.end:                                         ; preds = %if.then5, %cond.end
  %5 = phi i1 [ false, %if.then5 ], [ %tobool13, %cond.end ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %bOK, align 4, !tbaa !263
  %.b = load i1* @do_trnheader.bFirst, align 1
  br i1 %.b, label %if.end31, label %if.then15, !dbg !308

if.then15:                                        ; preds = %land.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !309, !tbaa !305
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), i8* %0) #5, !dbg !309
  store i1 true, i1* @do_trnheader.bFirst, align 1
  %.pr = load i32* %bOK, align 4, !dbg !311, !tbaa !263
  br label %if.end31, !dbg !312

if.else:                                          ; preds = %cond.false
  %7 = load i32* %bOK, align 4, !dbg !306, !tbaa !263
  %tobool6 = icmp eq i32 %7, 0, !dbg !306
  br i1 %tobool6, label %land.end29, label %cond.end26, !dbg !313

cond.end26:                                       ; preds = %if.else
  %8 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !313, !tbaa !305
  %call25 = call i32 %8(i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i32 1, i32 7, i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 90) #5, !dbg !313
  %tobool28 = icmp ne i32 %call25, 0, !dbg !313
  br label %land.end29

land.end29:                                       ; preds = %if.else, %cond.end26
  %9 = phi i1 [ false, %if.else ], [ %tobool28, %cond.end26 ]
  %land.ext30 = zext i1 %9 to i32
  store i32 %land.ext30, i32* %bOK, align 4, !tbaa !263
  br label %if.end31

if.end31:                                         ; preds = %land.end, %if.then15, %land.end29
  %10 = phi i32 [ %land.ext, %land.end ], [ %.pr, %if.then15 ], [ %land.ext30, %land.end29 ], !dbg !311
  %tobool32 = icmp eq i32 %10, 0, !dbg !311
  br i1 %tobool32, label %land.end43.thread, label %land.rhs33, !dbg !311

land.end43.thread:                                ; preds = %if.end31
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %land.end56.thread, !dbg !314

land.rhs33:                                       ; preds = %if.end31
  br i1 %tobool, label %cond.true35, label %cond.false37, !dbg !311

cond.true35:                                      ; preds = %land.rhs33
  %11 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !311, !tbaa !305
  %12 = bitcast %struct.t_trnheader* %sh to i8*, !dbg !311
  %call36 = call i32 %11(i8* %12, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 91) #5, !dbg !311
  br label %land.end43, !dbg !311

cond.false37:                                     ; preds = %land.rhs33
  %13 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !311, !tbaa !305
  %14 = bitcast %struct.t_trnheader* %sh to i8*, !dbg !311
  %call39 = call i32 %13(i8* %14, i32 1, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 91) #5, !dbg !311
  br label %land.end43, !dbg !311

land.end43:                                       ; preds = %cond.true35, %cond.false37
  %cond41 = phi i32 [ %call36, %cond.true35 ], [ %call39, %cond.false37 ], !dbg !311
  %tobool42 = icmp ne i32 %cond41, 0, !dbg !311
  %land.ext44 = zext i1 %tobool42 to i32
  store i32 %land.ext44, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool42, label %land.rhs46, label %land.end56.thread, !dbg !314

land.rhs46:                                       ; preds = %land.end43
  br i1 %tobool, label %cond.true48, label %cond.false50, !dbg !314

cond.true48:                                      ; preds = %land.rhs46
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !314, !tbaa !305
  %e_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 1, !dbg !314
  %16 = bitcast i32* %e_size to i8*, !dbg !314
  %call49 = call i32 %15(i8* %16, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 92) #5, !dbg !314
  br label %land.end56, !dbg !314

cond.false50:                                     ; preds = %land.rhs46
  %17 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !314, !tbaa !305
  %e_size51 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 1, !dbg !314
  %18 = bitcast i32* %e_size51 to i8*, !dbg !314
  %call52 = call i32 %17(i8* %18, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 92) #5, !dbg !314
  br label %land.end56, !dbg !314

land.end56.thread:                                ; preds = %land.end43, %land.end43.thread
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %land.end69.thread, !dbg !315

land.end56:                                       ; preds = %cond.true48, %cond.false50
  %cond54 = phi i32 [ %call49, %cond.true48 ], [ %call52, %cond.false50 ], !dbg !314
  %tobool55 = icmp ne i32 %cond54, 0, !dbg !314
  %land.ext57 = zext i1 %tobool55 to i32
  store i32 %land.ext57, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool55, label %land.rhs59, label %land.end69.thread, !dbg !315

land.rhs59:                                       ; preds = %land.end56
  br i1 %tobool, label %cond.true61, label %cond.false63, !dbg !315

cond.true61:                                      ; preds = %land.rhs59
  %19 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !315, !tbaa !305
  %box_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2, !dbg !315
  %20 = bitcast i32* %box_size to i8*, !dbg !315
  %call62 = call i32 %19(i8* %20, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 93) #5, !dbg !315
  br label %land.end69, !dbg !315

cond.false63:                                     ; preds = %land.rhs59
  %21 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !315, !tbaa !305
  %box_size64 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2, !dbg !315
  %22 = bitcast i32* %box_size64 to i8*, !dbg !315
  %call65 = call i32 %21(i8* %22, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 93) #5, !dbg !315
  br label %land.end69, !dbg !315

land.end69.thread:                                ; preds = %land.end56, %land.end56.thread
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %land.end82.thread, !dbg !316

land.end69:                                       ; preds = %cond.true61, %cond.false63
  %cond67 = phi i32 [ %call62, %cond.true61 ], [ %call65, %cond.false63 ], !dbg !315
  %tobool68 = icmp ne i32 %cond67, 0, !dbg !315
  %land.ext70 = zext i1 %tobool68 to i32
  store i32 %land.ext70, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool68, label %land.rhs72, label %land.end82.thread, !dbg !316

land.rhs72:                                       ; preds = %land.end69
  br i1 %tobool, label %cond.true74, label %cond.false76, !dbg !316

cond.true74:                                      ; preds = %land.rhs72
  %23 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !316, !tbaa !305
  %vir_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 3, !dbg !316
  %24 = bitcast i32* %vir_size to i8*, !dbg !316
  %call75 = call i32 %23(i8* %24, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 94) #5, !dbg !316
  br label %land.end82, !dbg !316

cond.false76:                                     ; preds = %land.rhs72
  %25 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !316, !tbaa !305
  %vir_size77 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 3, !dbg !316
  %26 = bitcast i32* %vir_size77 to i8*, !dbg !316
  %call78 = call i32 %25(i8* %26, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 94) #5, !dbg !316
  br label %land.end82, !dbg !316

land.end82.thread:                                ; preds = %land.end69, %land.end69.thread
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %land.end95.thread, !dbg !317

land.end82:                                       ; preds = %cond.true74, %cond.false76
  %cond80 = phi i32 [ %call75, %cond.true74 ], [ %call78, %cond.false76 ], !dbg !316
  %tobool81 = icmp ne i32 %cond80, 0, !dbg !316
  %land.ext83 = zext i1 %tobool81 to i32
  store i32 %land.ext83, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool81, label %land.rhs85, label %land.end95.thread, !dbg !317

land.rhs85:                                       ; preds = %land.end82
  br i1 %tobool, label %cond.true87, label %cond.false89, !dbg !317

cond.true87:                                      ; preds = %land.rhs85
  %27 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !317, !tbaa !305
  %pres_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 4, !dbg !317
  %28 = bitcast i32* %pres_size to i8*, !dbg !317
  %call88 = call i32 %27(i8* %28, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 95) #5, !dbg !317
  br label %land.end95, !dbg !317

cond.false89:                                     ; preds = %land.rhs85
  %29 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !317, !tbaa !305
  %pres_size90 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 4, !dbg !317
  %30 = bitcast i32* %pres_size90 to i8*, !dbg !317
  %call91 = call i32 %29(i8* %30, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 95) #5, !dbg !317
  br label %land.end95, !dbg !317

land.end95.thread:                                ; preds = %land.end82, %land.end82.thread
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %land.end108.thread, !dbg !318

land.end95:                                       ; preds = %cond.true87, %cond.false89
  %cond93 = phi i32 [ %call88, %cond.true87 ], [ %call91, %cond.false89 ], !dbg !317
  %tobool94 = icmp ne i32 %cond93, 0, !dbg !317
  %land.ext96 = zext i1 %tobool94 to i32
  store i32 %land.ext96, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool94, label %land.rhs98, label %land.end108.thread, !dbg !318

land.rhs98:                                       ; preds = %land.end95
  br i1 %tobool, label %cond.true100, label %cond.false102, !dbg !318

cond.true100:                                     ; preds = %land.rhs98
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !318, !tbaa !305
  %top_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 5, !dbg !318
  %32 = bitcast i32* %top_size to i8*, !dbg !318
  %call101 = call i32 %31(i8* %32, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 96) #5, !dbg !318
  br label %land.end108, !dbg !318

cond.false102:                                    ; preds = %land.rhs98
  %33 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !318, !tbaa !305
  %top_size103 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 5, !dbg !318
  %34 = bitcast i32* %top_size103 to i8*, !dbg !318
  %call104 = call i32 %33(i8* %34, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 96) #5, !dbg !318
  br label %land.end108, !dbg !318

land.end108.thread:                               ; preds = %land.end95, %land.end95.thread
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %land.end121.thread, !dbg !319

land.end108:                                      ; preds = %cond.true100, %cond.false102
  %cond106 = phi i32 [ %call101, %cond.true100 ], [ %call104, %cond.false102 ], !dbg !318
  %tobool107 = icmp ne i32 %cond106, 0, !dbg !318
  %land.ext109 = zext i1 %tobool107 to i32
  store i32 %land.ext109, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool107, label %land.rhs111, label %land.end121.thread, !dbg !319

land.rhs111:                                      ; preds = %land.end108
  br i1 %tobool, label %cond.true113, label %cond.false115, !dbg !319

cond.true113:                                     ; preds = %land.rhs111
  %35 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !319, !tbaa !305
  %sym_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 6, !dbg !319
  %36 = bitcast i32* %sym_size to i8*, !dbg !319
  %call114 = call i32 %35(i8* %36, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 97) #5, !dbg !319
  br label %land.end121, !dbg !319

cond.false115:                                    ; preds = %land.rhs111
  %37 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !319, !tbaa !305
  %sym_size116 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 6, !dbg !319
  %38 = bitcast i32* %sym_size116 to i8*, !dbg !319
  %call117 = call i32 %37(i8* %38, i32 1, i32 1, i8* getelementptr inbounds ([13 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 97) #5, !dbg !319
  br label %land.end121, !dbg !319

land.end121.thread:                               ; preds = %land.end108, %land.end108.thread
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %land.end134.thread, !dbg !320

land.end121:                                      ; preds = %cond.true113, %cond.false115
  %cond119 = phi i32 [ %call114, %cond.true113 ], [ %call117, %cond.false115 ], !dbg !319
  %tobool120 = icmp ne i32 %cond119, 0, !dbg !319
  %land.ext122 = zext i1 %tobool120 to i32
  store i32 %land.ext122, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool120, label %land.rhs124, label %land.end134.thread, !dbg !320

land.rhs124:                                      ; preds = %land.end121
  br i1 %tobool, label %cond.true126, label %cond.false128, !dbg !320

cond.true126:                                     ; preds = %land.rhs124
  %39 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !320, !tbaa !305
  %x_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7, !dbg !320
  %40 = bitcast i32* %x_size to i8*, !dbg !320
  %call127 = call i32 %39(i8* %40, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 98) #5, !dbg !320
  br label %land.end134, !dbg !320

cond.false128:                                    ; preds = %land.rhs124
  %41 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !320, !tbaa !305
  %x_size129 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7, !dbg !320
  %42 = bitcast i32* %x_size129 to i8*, !dbg !320
  %call130 = call i32 %41(i8* %42, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 98) #5, !dbg !320
  br label %land.end134, !dbg !320

land.end134.thread:                               ; preds = %land.end121, %land.end121.thread
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %land.end147.thread, !dbg !321

land.end134:                                      ; preds = %cond.true126, %cond.false128
  %cond132 = phi i32 [ %call127, %cond.true126 ], [ %call130, %cond.false128 ], !dbg !320
  %tobool133 = icmp ne i32 %cond132, 0, !dbg !320
  %land.ext135 = zext i1 %tobool133 to i32
  store i32 %land.ext135, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool133, label %land.rhs137, label %land.end147.thread, !dbg !321

land.rhs137:                                      ; preds = %land.end134
  br i1 %tobool, label %cond.true139, label %cond.false141, !dbg !321

cond.true139:                                     ; preds = %land.rhs137
  %43 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !321, !tbaa !305
  %v_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8, !dbg !321
  %44 = bitcast i32* %v_size to i8*, !dbg !321
  %call140 = call i32 %43(i8* %44, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 99) #5, !dbg !321
  br label %land.end147, !dbg !321

cond.false141:                                    ; preds = %land.rhs137
  %45 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !321, !tbaa !305
  %v_size142 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8, !dbg !321
  %46 = bitcast i32* %v_size142 to i8*, !dbg !321
  %call143 = call i32 %45(i8* %46, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 99) #5, !dbg !321
  br label %land.end147, !dbg !321

land.end147.thread:                               ; preds = %land.end134, %land.end134.thread
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %land.end160.thread, !dbg !322

land.end147:                                      ; preds = %cond.true139, %cond.false141
  %cond145 = phi i32 [ %call140, %cond.true139 ], [ %call143, %cond.false141 ], !dbg !321
  %tobool146 = icmp ne i32 %cond145, 0, !dbg !321
  %land.ext148 = zext i1 %tobool146 to i32
  store i32 %land.ext148, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool146, label %land.rhs150, label %land.end160.thread, !dbg !322

land.rhs150:                                      ; preds = %land.end147
  br i1 %tobool, label %cond.true152, label %cond.false154, !dbg !322

cond.true152:                                     ; preds = %land.rhs150
  %47 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !322, !tbaa !305
  %f_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9, !dbg !322
  %48 = bitcast i32* %f_size to i8*, !dbg !322
  %call153 = call i32 %47(i8* %48, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 100) #5, !dbg !322
  br label %land.end160, !dbg !322

cond.false154:                                    ; preds = %land.rhs150
  %49 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !322, !tbaa !305
  %f_size155 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9, !dbg !322
  %50 = bitcast i32* %f_size155 to i8*, !dbg !322
  %call156 = call i32 %49(i8* %50, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 100) #5, !dbg !322
  br label %land.end160, !dbg !322

land.end160.thread:                               ; preds = %land.end147, %land.end147.thread
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %cleanup, !dbg !323

land.end160:                                      ; preds = %cond.true152, %cond.false154
  %cond158 = phi i32 [ %call153, %cond.true152 ], [ %call156, %cond.false154 ], !dbg !322
  %tobool159 = icmp ne i32 %cond158, 0, !dbg !322
  %land.ext161 = zext i1 %tobool159 to i32
  store i32 %land.ext161, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool159, label %if.end164, label %cleanup, !dbg !323

if.end164:                                        ; preds = %land.end160
  call void @llvm.dbg.value(metadata !{%struct.t_trnheader* %sh}, i64 0, metadata !324) #4, !dbg !326
  call void @llvm.dbg.value(metadata !15, i64 0, metadata !327) #4, !dbg !328
  %box_size.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2, !dbg !329
  %51 = load i32* %box_size.i, align 4, !dbg !329, !tbaa !263
  %tobool.i = icmp eq i32 %51, 0, !dbg !329
  br i1 %tobool.i, label %if.else.i, label %if.then.i, !dbg !329

if.then.i:                                        ; preds = %if.end164
  %div.i = sdiv i32 %51, 9, !dbg !330
  call void @llvm.dbg.value(metadata !{i32 %div.i}, i64 0, metadata !327) #4, !dbg !330
  br label %if.end23.i, !dbg !330

if.else.i:                                        ; preds = %if.end164
  %x_size.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7, !dbg !331
  %52 = load i32* %x_size.i, align 4, !dbg !331, !tbaa !263
  %tobool2.i = icmp eq i32 %52, 0, !dbg !331
  br i1 %tobool2.i, label %if.else6.i, label %if.then3.i, !dbg !331

if.then3.i:                                       ; preds = %if.else.i
  %natoms.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !332
  %53 = load i32* %natoms.i, align 4, !dbg !332, !tbaa !263
  %mul.i = mul nsw i32 %53, 3, !dbg !332
  %div5.i = sdiv i32 %52, %mul.i, !dbg !332
  call void @llvm.dbg.value(metadata !{i32 %div5.i}, i64 0, metadata !327) #4, !dbg !332
  br label %if.end23.i, !dbg !332

if.else6.i:                                       ; preds = %if.else.i
  %v_size.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8, !dbg !333
  %54 = load i32* %v_size.i, align 4, !dbg !333, !tbaa !263
  %tobool7.i = icmp eq i32 %54, 0, !dbg !333
  br i1 %tobool7.i, label %if.else13.i, label %if.then8.i, !dbg !333

if.then8.i:                                       ; preds = %if.else6.i
  %natoms10.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !334
  %55 = load i32* %natoms10.i, align 4, !dbg !334, !tbaa !263
  %mul11.i = mul nsw i32 %55, 3, !dbg !334
  %div12.i = sdiv i32 %54, %mul11.i, !dbg !334
  call void @llvm.dbg.value(metadata !{i32 %div12.i}, i64 0, metadata !327) #4, !dbg !334
  br label %if.end23.i, !dbg !334

if.else13.i:                                      ; preds = %if.else6.i
  %f_size.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9, !dbg !335
  %56 = load i32* %f_size.i, align 4, !dbg !335, !tbaa !263
  %tobool14.i = icmp eq i32 %56, 0, !dbg !335
  br i1 %tobool14.i, label %if.end23.thread.i, label %if.then15.i, !dbg !335

if.then15.i:                                      ; preds = %if.else13.i
  %natoms17.i = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !336
  %57 = load i32* %natoms17.i, align 4, !dbg !336, !tbaa !263
  %mul18.i = mul nsw i32 %57, 3, !dbg !336
  %div19.i = sdiv i32 %56, %mul18.i, !dbg !336
  call void @llvm.dbg.value(metadata !{i32 %div19.i}, i64 0, metadata !327) #4, !dbg !336
  br label %if.end23.i, !dbg !336

if.end23.thread.i:                                ; preds = %if.else13.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str42, i64 0, i64 0)) #5, !dbg !337
  br label %if.then28.i, !dbg !338

if.end23.i:                                       ; preds = %if.then15.i, %if.then8.i, %if.then3.i, %if.then.i
  %nflsize.0.i = phi i32 [ %div.i, %if.then.i ], [ %div5.i, %if.then3.i ], [ %div12.i, %if.then8.i ], [ %div19.i, %if.then15.i ]
  switch i32 %nflsize.0.i, label %if.then28.i [
    i32 4, label %nFloatSize.exit
    i32 8, label %nFloatSize.exit
  ], !dbg !338

if.then28.i:                                      ; preds = %if.end23.i, %if.end23.thread.i
  %nflsize.040.i = phi i32 [ 0, %if.end23.thread.i ], [ %nflsize.0.i, %if.end23.i ]
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str43, i64 0, i64 0), i32 %nflsize.040.i) #5, !dbg !339
  br label %nFloatSize.exit, !dbg !339

nFloatSize.exit:                                  ; preds = %if.end23.i, %if.end23.i, %if.then28.i
  %nflsize.041.i = phi i32 [ %nflsize.0.i, %if.end23.i ], [ %nflsize.0.i, %if.end23.i ], [ %nflsize.040.i, %if.then28.i ]
  %cmp = icmp eq i32 %nflsize.041.i, 8, !dbg !325
  %conv166 = zext i1 %cmp to i32, !dbg !325
  call void @gmx_fio_setprecision(i32 %fp, i32 %conv166) #5, !dbg !325
  %58 = load i32* %bOK, align 4, !dbg !340, !tbaa !263
  %tobool167 = icmp eq i32 %58, 0, !dbg !340
  br i1 %tobool167, label %land.end178.thread, label %land.rhs168, !dbg !340

land.end178.thread:                               ; preds = %nFloatSize.exit
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %land.end191.thread, !dbg !341

land.rhs168:                                      ; preds = %nFloatSize.exit
  br i1 %tobool, label %cond.true170, label %cond.false172, !dbg !340

cond.true170:                                     ; preds = %land.rhs168
  %59 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !340, !tbaa !305
  %natoms = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !340
  %60 = bitcast i32* %natoms to i8*, !dbg !340
  %call171 = call i32 %59(i8* %60, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 105) #5, !dbg !340
  br label %land.end178, !dbg !340

cond.false172:                                    ; preds = %land.rhs168
  %61 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !340, !tbaa !305
  %natoms173 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !340
  %62 = bitcast i32* %natoms173 to i8*, !dbg !340
  %call174 = call i32 %61(i8* %62, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 105) #5, !dbg !340
  br label %land.end178, !dbg !340

land.end178:                                      ; preds = %cond.true170, %cond.false172
  %cond176 = phi i32 [ %call171, %cond.true170 ], [ %call174, %cond.false172 ], !dbg !340
  %tobool177 = icmp ne i32 %cond176, 0, !dbg !340
  %land.ext179 = zext i1 %tobool177 to i32
  store i32 %land.ext179, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool177, label %land.rhs181, label %land.end191.thread, !dbg !341

land.rhs181:                                      ; preds = %land.end178
  br i1 %tobool, label %cond.true183, label %cond.false185, !dbg !341

cond.true183:                                     ; preds = %land.rhs181
  %63 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !341, !tbaa !305
  %step = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 11, !dbg !341
  %64 = bitcast i32* %step to i8*, !dbg !341
  %call184 = call i32 %63(i8* %64, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 106) #5, !dbg !341
  br label %land.end191, !dbg !341

cond.false185:                                    ; preds = %land.rhs181
  %65 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !341, !tbaa !305
  %step186 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 11, !dbg !341
  %66 = bitcast i32* %step186 to i8*, !dbg !341
  %call187 = call i32 %65(i8* %66, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 106) #5, !dbg !341
  br label %land.end191, !dbg !341

land.end191.thread:                               ; preds = %land.end178, %land.end178.thread
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %land.end204.thread, !dbg !342

land.end191:                                      ; preds = %cond.true183, %cond.false185
  %cond189 = phi i32 [ %call184, %cond.true183 ], [ %call187, %cond.false185 ], !dbg !341
  %tobool190 = icmp ne i32 %cond189, 0, !dbg !341
  %land.ext192 = zext i1 %tobool190 to i32
  store i32 %land.ext192, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool190, label %land.rhs194, label %land.end204.thread, !dbg !342

land.rhs194:                                      ; preds = %land.end191
  br i1 %tobool, label %cond.true196, label %cond.false198, !dbg !342

cond.true196:                                     ; preds = %land.rhs194
  %67 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !342, !tbaa !305
  %nre = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 12, !dbg !342
  %68 = bitcast i32* %nre to i8*, !dbg !342
  %call197 = call i32 %67(i8* %68, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 107) #5, !dbg !342
  br label %land.end204, !dbg !342

cond.false198:                                    ; preds = %land.rhs194
  %69 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !342, !tbaa !305
  %nre199 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 12, !dbg !342
  %70 = bitcast i32* %nre199 to i8*, !dbg !342
  %call200 = call i32 %69(i8* %70, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 107) #5, !dbg !342
  br label %land.end204, !dbg !342

land.end204.thread:                               ; preds = %land.end191, %land.end191.thread
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %land.end217.thread, !dbg !343

land.end204:                                      ; preds = %cond.true196, %cond.false198
  %cond202 = phi i32 [ %call197, %cond.true196 ], [ %call200, %cond.false198 ], !dbg !342
  %tobool203 = icmp ne i32 %cond202, 0, !dbg !342
  %land.ext205 = zext i1 %tobool203 to i32
  store i32 %land.ext205, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool203, label %land.rhs207, label %land.end217.thread, !dbg !343

land.rhs207:                                      ; preds = %land.end204
  br i1 %tobool, label %cond.true209, label %cond.false211, !dbg !343

cond.true209:                                     ; preds = %land.rhs207
  %71 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !343, !tbaa !305
  %t = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 13, !dbg !343
  %72 = bitcast float* %t to i8*, !dbg !343
  %call210 = call i32 %71(i8* %72, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 108) #5, !dbg !343
  br label %land.end217, !dbg !343

cond.false211:                                    ; preds = %land.rhs207
  %73 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !343, !tbaa !305
  %t212 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 13, !dbg !343
  %74 = bitcast float* %t212 to i8*, !dbg !343
  %call213 = call i32 %73(i8* %74, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 108) #5, !dbg !343
  br label %land.end217, !dbg !343

land.end217.thread:                               ; preds = %land.end204, %land.end204.thread
  store i32 0, i32* %bOK, align 4, !tbaa !263
  br label %land.end230, !dbg !344

land.end217:                                      ; preds = %cond.true209, %cond.false211
  %cond215 = phi i32 [ %call210, %cond.true209 ], [ %call213, %cond.false211 ], !dbg !343
  %tobool216 = icmp ne i32 %cond215, 0, !dbg !343
  %land.ext218 = zext i1 %tobool216 to i32
  store i32 %land.ext218, i32* %bOK, align 4, !tbaa !263
  br i1 %tobool216, label %land.rhs220, label %land.end230, !dbg !344

land.rhs220:                                      ; preds = %land.end217
  br i1 %tobool, label %cond.true222, label %cond.false224, !dbg !344

cond.true222:                                     ; preds = %land.rhs220
  %75 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !344, !tbaa !305
  %lambda = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 14, !dbg !344
  %76 = bitcast float* %lambda to i8*, !dbg !344
  %call223 = call i32 %75(i8* %76, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 109) #5, !dbg !344
  br label %cond.end227, !dbg !344

cond.false224:                                    ; preds = %land.rhs220
  %77 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !344, !tbaa !305
  %lambda225 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 14, !dbg !344
  %78 = bitcast float* %lambda225 to i8*, !dbg !344
  %call226 = call i32 %77(i8* %78, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 109) #5, !dbg !344
  br label %cond.end227, !dbg !344

cond.end227:                                      ; preds = %cond.false224, %cond.true222
  %cond228 = phi i32 [ %call223, %cond.true222 ], [ %call226, %cond.false224 ], !dbg !344
  %tobool229 = icmp ne i32 %cond228, 0, !dbg !344
  br label %land.end230

land.end230:                                      ; preds = %land.end217.thread, %cond.end227, %land.end217
  %79 = phi i1 [ false, %land.end217 ], [ %tobool229, %cond.end227 ], [ false, %land.end217.thread ]
  %land.ext231 = zext i1 %79 to i32
  store i32 %land.ext231, i32* %bOK, align 4, !tbaa !263
  br label %cleanup, !dbg !345

cleanup:                                          ; preds = %land.end160.thread, %land.end160, %cond.false, %cond.true, %land.end230
  %retval.0 = phi i32 [ %land.ext231, %land.end230 ], [ 0, %cond.true ], [ 0, %cond.false ], [ %land.ext161, %land.end160 ], [ 0, %land.end160.thread ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #4, !dbg !346
  ret i32 %retval.0, !dbg !346
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @close_trn(i32 %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !202), !dbg !347
  tail call void @gmx_fio_close(i32 %fp) #5, !dbg !348
  ret void, !dbg !349
}

; Function Attrs: nounwind optsize uwtable
define i32 @fread_trnheader(i32 %fp, %struct.t_trnheader* %trn, i32* %bOK) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !119), !dbg !350
  tail call void @llvm.dbg.value(metadata !{%struct.t_trnheader* %trn}, i64 0, metadata !120), !dbg !350
  tail call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !121), !dbg !350
  %call = tail call fastcc i32 @do_trnheader(i32 %fp, i32 1, %struct.t_trnheader* %trn, i32* %bOK) #6, !dbg !351
  ret i32 %call, !dbg !351
}

; Function Attrs: nounwind optsize uwtable
define void @write_trn(i8* %fn, i32 %step, float %t, float %lambda, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  %step.addr = alloca i32, align 4
  %t.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %natoms.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !131), !dbg !352
  call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !132), !dbg !352
  store i32 %step, i32* %step.addr, align 4, !tbaa !263
  call void @llvm.dbg.declare(metadata !{i32* %step.addr}, metadata !132), !dbg !352
  call void @llvm.dbg.value(metadata !{float %t}, i64 0, metadata !133), !dbg !352
  store float %t, float* %t.addr, align 4, !tbaa !278
  call void @llvm.dbg.declare(metadata !{float* %t.addr}, metadata !133), !dbg !352
  call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !134), !dbg !352
  store float %lambda, float* %lambda.addr, align 4, !tbaa !278
  call void @llvm.dbg.declare(metadata !{float* %lambda.addr}, metadata !134), !dbg !352
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !135), !dbg !353
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !136), !dbg !353
  store i32 %natoms, i32* %natoms.addr, align 4, !tbaa !263
  call void @llvm.dbg.declare(metadata !{i32* %natoms.addr}, metadata !136), !dbg !353
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !137), !dbg !353
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !138), !dbg !353
  call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !139), !dbg !353
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !354) #4, !dbg !356
  call void @llvm.dbg.value(metadata !357, i64 0, metadata !358) #4, !dbg !356
  %call.i = call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !359
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !140), !dbg !355
  %call1 = call fastcc i32 @do_trn(i32 %call.i, i32 0, i32* %step.addr, float* %t.addr, float* %lambda.addr, [3 x float]* %box, i32* %natoms.addr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #6, !dbg !360
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !361) #4, !dbg !363
  call void @gmx_fio_close(i32 %call.i) #5, !dbg !364
  ret void, !dbg !365
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @do_trn(i32 %fp, i32 %bRead, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  %bOK = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !223), !dbg !366
  call void @llvm.dbg.value(metadata !{i32 %bRead}, i64 0, metadata !224), !dbg !366
  call void @llvm.dbg.value(metadata !{i32* %step}, i64 0, metadata !225), !dbg !366
  call void @llvm.dbg.value(metadata !{float* %t}, i64 0, metadata !226), !dbg !366
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !227), !dbg !366
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !228), !dbg !367
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !229), !dbg !367
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !230), !dbg !367
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !231), !dbg !367
  call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !232), !dbg !367
  call void @llvm.dbg.declare(metadata !{i32* %bOK}, metadata !234), !dbg !368
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 161, i32 1, i32 60) #5, !dbg !369
  %0 = bitcast i8* %call to %struct.t_trnheader*, !dbg !369
  call void @llvm.dbg.value(metadata !{%struct.t_trnheader* %0}, i64 0, metadata !233), !dbg !369
  %tobool = icmp ne i32 %bRead, 0, !dbg !370
  br i1 %tobool, label %if.end, label %if.then, !dbg !370

if.then:                                          ; preds = %entry
  %tobool1 = icmp ne [3 x float]* %box, null, !dbg !371
  %conv = select i1 %tobool1, i32 36, i32 0, !dbg !371
  %box_size = getelementptr inbounds i8* %call, i64 8, !dbg !371
  %1 = bitcast i8* %box_size to i32*, !dbg !371
  store i32 %conv, i32* %1, align 4, !dbg !371, !tbaa !263
  %tobool2 = icmp eq [3 x float]* %x, null, !dbg !373
  br i1 %tobool2, label %cond.end, label %cond.true, !dbg !373

cond.true:                                        ; preds = %if.then
  %2 = load i32* %natoms, align 4, !dbg !373, !tbaa !263
  %mul = mul i32 %2, 12, !dbg !373
  br label %cond.end, !dbg !373

cond.end:                                         ; preds = %if.then, %cond.true
  %cond4 = phi i32 [ %mul, %cond.true ], [ 0, %if.then ]
  %x_size = getelementptr inbounds i8* %call, i64 28, !dbg !373
  %3 = bitcast i8* %x_size to i32*, !dbg !373
  store i32 %cond4, i32* %3, align 4, !dbg !373, !tbaa !263
  %tobool6 = icmp eq [3 x float]* %v, null, !dbg !374
  br i1 %tobool6, label %cond.end11, label %cond.true7, !dbg !374

cond.true7:                                       ; preds = %cond.end
  %4 = load i32* %natoms, align 4, !dbg !374, !tbaa !263
  %mul9 = mul i32 %4, 12, !dbg !374
  br label %cond.end11, !dbg !374

cond.end11:                                       ; preds = %cond.end, %cond.true7
  %cond12 = phi i32 [ %mul9, %cond.true7 ], [ 0, %cond.end ]
  %v_size = getelementptr inbounds i8* %call, i64 32, !dbg !374
  %5 = bitcast i8* %v_size to i32*, !dbg !374
  store i32 %cond12, i32* %5, align 4, !dbg !374, !tbaa !263
  %tobool14 = icmp eq [3 x float]* %f, null, !dbg !375
  br i1 %tobool14, label %cond.end19, label %cond.true15, !dbg !375

cond.true15:                                      ; preds = %cond.end11
  %6 = load i32* %natoms, align 4, !dbg !375, !tbaa !263
  %mul17 = mul i32 %6, 12, !dbg !375
  br label %cond.end19, !dbg !375

cond.end19:                                       ; preds = %cond.end11, %cond.true15
  %cond20 = phi i32 [ %mul17, %cond.true15 ], [ 0, %cond.end11 ]
  %f_size = getelementptr inbounds i8* %call, i64 36, !dbg !375
  %7 = bitcast i8* %f_size to i32*, !dbg !375
  store i32 %cond20, i32* %7, align 4, !dbg !375, !tbaa !263
  %8 = load i32* %natoms, align 4, !dbg !376, !tbaa !263
  %natoms22 = getelementptr inbounds i8* %call, i64 40, !dbg !376
  %9 = bitcast i8* %natoms22 to i32*, !dbg !376
  store i32 %8, i32* %9, align 4, !dbg !376, !tbaa !263
  %10 = load i32* %step, align 4, !dbg !377, !tbaa !263
  %step23 = getelementptr inbounds i8* %call, i64 44, !dbg !377
  %11 = bitcast i8* %step23 to i32*, !dbg !377
  store i32 %10, i32* %11, align 4, !dbg !377, !tbaa !263
  %nre = getelementptr inbounds i8* %call, i64 48, !dbg !378
  %12 = bitcast i8* %nre to i32*, !dbg !378
  store i32 0, i32* %12, align 4, !dbg !378, !tbaa !263
  %13 = load float* %t, align 4, !dbg !379, !tbaa !278
  %t24 = getelementptr inbounds i8* %call, i64 52, !dbg !379
  %14 = bitcast i8* %t24 to float*, !dbg !379
  store float %13, float* %14, align 4, !dbg !379, !tbaa !278
  %15 = load float* %lambda, align 4, !dbg !380, !tbaa !278
  %lambda25 = getelementptr inbounds i8* %call, i64 56, !dbg !380
  %16 = bitcast i8* %lambda25 to float*, !dbg !380
  store float %15, float* %16, align 4, !dbg !380, !tbaa !278
  br label %if.end, !dbg !381

if.end:                                           ; preds = %cond.end19, %entry
  %call26 = call fastcc i32 @do_trnheader(i32 %fp, i32 %bRead, %struct.t_trnheader* %0, i32* %bOK) #6, !dbg !382
  %tobool27 = icmp eq i32 %call26, 0, !dbg !382
  br i1 %tobool27, label %return, label %if.end29, !dbg !382

if.end29:                                         ; preds = %if.end
  br i1 %tobool, label %if.then31, label %if.end48, !dbg !383

if.then31:                                        ; preds = %if.end29
  %natoms32 = getelementptr inbounds i8* %call, i64 40, !dbg !384
  %17 = bitcast i8* %natoms32 to i32*, !dbg !384
  %18 = load i32* %17, align 4, !dbg !384, !tbaa !263
  store i32 %18, i32* %natoms, align 4, !dbg !384, !tbaa !263
  %step33 = getelementptr inbounds i8* %call, i64 44, !dbg !386
  %19 = bitcast i8* %step33 to i32*, !dbg !386
  %20 = load i32* %19, align 4, !dbg !386, !tbaa !263
  store i32 %20, i32* %step, align 4, !dbg !386, !tbaa !263
  %t34 = getelementptr inbounds i8* %call, i64 52, !dbg !387
  %21 = bitcast i8* %t34 to float*, !dbg !387
  %22 = load float* %21, align 4, !dbg !387, !tbaa !278
  store float %22, float* %t, align 4, !dbg !387, !tbaa !278
  %lambda35 = getelementptr inbounds i8* %call, i64 56, !dbg !388
  %23 = bitcast i8* %lambda35 to float*, !dbg !388
  %24 = load float* %23, align 4, !dbg !388, !tbaa !278
  store float %24, float* %lambda, align 4, !dbg !388, !tbaa !278
  %ir_size = bitcast i8* %call to i32*, !dbg !389
  %25 = load i32* %ir_size, align 4, !dbg !389, !tbaa !263
  %tobool36 = icmp eq i32 %25, 0, !dbg !389
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !389

if.then37:                                        ; preds = %if.then31
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str18, i64 0, i64 0)) #5, !dbg !390
  br label %if.end38, !dbg !390

if.end38:                                         ; preds = %if.then31, %if.then37
  %e_size = getelementptr inbounds i8* %call, i64 4, !dbg !391
  %26 = bitcast i8* %e_size to i32*, !dbg !391
  %27 = load i32* %26, align 4, !dbg !391, !tbaa !263
  %tobool39 = icmp eq i32 %27, 0, !dbg !391
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !391

if.then40:                                        ; preds = %if.end38
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str19, i64 0, i64 0)) #5, !dbg !392
  br label %if.end41, !dbg !392

if.end41:                                         ; preds = %if.end38, %if.then40
  %top_size = getelementptr inbounds i8* %call, i64 20, !dbg !393
  %28 = bitcast i8* %top_size to i32*, !dbg !393
  %29 = load i32* %28, align 4, !dbg !393, !tbaa !263
  %tobool42 = icmp eq i32 %29, 0, !dbg !393
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !393

if.then43:                                        ; preds = %if.end41
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str20, i64 0, i64 0)) #5, !dbg !394
  br label %if.end44, !dbg !394

if.end44:                                         ; preds = %if.end41, %if.then43
  %sym_size = getelementptr inbounds i8* %call, i64 24, !dbg !395
  %30 = bitcast i8* %sym_size to i32*, !dbg !395
  %31 = load i32* %30, align 4, !dbg !395, !tbaa !263
  %tobool45 = icmp eq i32 %31, 0, !dbg !395
  br i1 %tobool45, label %if.end48, label %if.then46, !dbg !395

if.then46:                                        ; preds = %if.end44
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str21, i64 0, i64 0)) #5, !dbg !396
  br label %if.end48, !dbg !396

if.end48:                                         ; preds = %if.end44, %if.then46, %if.end29
  %call49 = call fastcc i32 @do_htrn(i32 %bRead, %struct.t_trnheader* %0, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #6, !dbg !397
  call void @llvm.dbg.value(metadata !{i32 %call49}, i64 0, metadata !234), !dbg !397
  store i32 %call49, i32* %bOK, align 4, !dbg !397, !tbaa !263
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 191, i8* %call) #5, !dbg !398
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !234), !dbg !399
  %32 = load i32* %bOK, align 4, !dbg !399, !tbaa !263
  br label %return, !dbg !399

return:                                           ; preds = %if.end, %if.end48
  %retval.0 = phi i32 [ %32, %if.end48 ], [ 0, %if.end ]
  ret i32 %retval.0, !dbg !400
}

; Function Attrs: nounwind optsize uwtable
define void @read_trn(i8* %fn, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !146), !dbg !401
  tail call void @llvm.dbg.value(metadata !{i32* %step}, i64 0, metadata !147), !dbg !401
  tail call void @llvm.dbg.value(metadata !{float* %t}, i64 0, metadata !148), !dbg !401
  tail call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !149), !dbg !401
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !150), !dbg !402
  tail call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !151), !dbg !402
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !152), !dbg !402
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !153), !dbg !402
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !154), !dbg !402
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !403) #4, !dbg !405
  tail call void @llvm.dbg.value(metadata !288, i64 0, metadata !406) #4, !dbg !405
  %call.i = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !407
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !155), !dbg !404
  %call1 = tail call fastcc i32 @do_trn(i32 %call.i, i32 1, i32* %step, float* %t, float* %lambda, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #6, !dbg !408
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !409) #4, !dbg !411
  tail call void @gmx_fio_close(i32 %call.i) #5, !dbg !412
  ret void, !dbg !413
}

; Function Attrs: nounwind optsize uwtable
define void @fwrite_trn(i32 %fp, i32 %step, float %t, float %lambda, [3 x float]* %box, i32 %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  %step.addr = alloca i32, align 4
  %t.addr = alloca float, align 4
  %lambda.addr = alloca float, align 4
  %natoms.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !160), !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !161), !dbg !414
  store i32 %step, i32* %step.addr, align 4, !tbaa !263
  call void @llvm.dbg.declare(metadata !{i32* %step.addr}, metadata !161), !dbg !414
  call void @llvm.dbg.value(metadata !{float %t}, i64 0, metadata !162), !dbg !414
  store float %t, float* %t.addr, align 4, !tbaa !278
  call void @llvm.dbg.declare(metadata !{float* %t.addr}, metadata !162), !dbg !414
  call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !163), !dbg !414
  store float %lambda, float* %lambda.addr, align 4, !tbaa !278
  call void @llvm.dbg.declare(metadata !{float* %lambda.addr}, metadata !163), !dbg !414
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !164), !dbg !415
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !165), !dbg !415
  store i32 %natoms, i32* %natoms.addr, align 4, !tbaa !263
  call void @llvm.dbg.declare(metadata !{i32* %natoms.addr}, metadata !165), !dbg !415
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !166), !dbg !415
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !167), !dbg !415
  call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !168), !dbg !415
  %call = call fastcc i32 @do_trn(i32 %fp, i32 0, i32* %step.addr, float* %t.addr, float* %lambda.addr, [3 x float]* %box, i32* %natoms.addr, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #6, !dbg !416
  ret void, !dbg !417
}

; Function Attrs: nounwind optsize uwtable
define i32 @fread_trn(i32 %fp, i32* nocapture %step, float* nocapture %t, float* nocapture %lambda, [3 x float]* %box, i32* nocapture %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !173), !dbg !418
  tail call void @llvm.dbg.value(metadata !{i32* %step}, i64 0, metadata !174), !dbg !418
  tail call void @llvm.dbg.value(metadata !{float* %t}, i64 0, metadata !175), !dbg !418
  tail call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !176), !dbg !418
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !177), !dbg !419
  tail call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !178), !dbg !419
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !179), !dbg !419
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !180), !dbg !419
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !181), !dbg !419
  %call = tail call fastcc i32 @do_trn(i32 %fp, i32 1, i32* %step, float* %t, float* %lambda, [3 x float]* %box, i32* %natoms, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #6, !dbg !420
  ret i32 %call, !dbg !420
}

; Function Attrs: nounwind optsize uwtable
define i32 @fread_htrn(i32 %fp, %struct.t_trnheader* nocapture %trn, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !186), !dbg !421
  tail call void @llvm.dbg.value(metadata !{%struct.t_trnheader* %trn}, i64 0, metadata !187), !dbg !421
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !188), !dbg !421
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !189), !dbg !421
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !190), !dbg !421
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %f}, i64 0, metadata !191), !dbg !421
  %call = tail call fastcc i32 @do_htrn(i32 1, %struct.t_trnheader* %trn, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #6, !dbg !422
  ret i32 %call, !dbg !422
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @do_htrn(i32 %bRead, %struct.t_trnheader* nocapture %sh, [3 x float]* %box, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f) #0 {
entry:
  %pv = alloca [3 x [3 x float]], align 16
  call void @llvm.dbg.value(metadata !15, i64 0, metadata !207), !dbg !423
  %0 = bitcast [3 x [3 x float]]* %pv to i8*, !dbg !424
  call void @llvm.lifetime.start(i64 36, i8* %0) #4, !dbg !424
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %pv}, metadata !214), !dbg !424
  call void @llvm.dbg.value(metadata !425, i64 0, metadata !218), !dbg !426
  %box_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 2, !dbg !427
  %1 = load i32* %box_size, align 4, !dbg !427, !tbaa !263
  %cmp = icmp eq i32 %1, 0, !dbg !427
  br i1 %cmp, label %if.end, label %land.rhs, !dbg !427

land.rhs:                                         ; preds = %entry
  %tobool1 = icmp eq i32 %bRead, 0, !dbg !427
  br i1 %tobool1, label %cond.false, label %cond.true, !dbg !427

cond.true:                                        ; preds = %land.rhs
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !427, !tbaa !305
  %3 = bitcast [3 x float]* %box to i8*, !dbg !427
  %call = call i32 %2(i8* %3, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 145) #5, !dbg !427
  br label %cond.end, !dbg !427

cond.false:                                       ; preds = %land.rhs
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !427, !tbaa !305
  %5 = bitcast [3 x float]* %box to i8*, !dbg !427
  %call2 = call i32 %4(i8* %5, i32 3, i32 5, i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 145) #5, !dbg !427
  br label %cond.end, !dbg !427

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call2, %cond.false ], !dbg !427
  %tobool3 = icmp ne i32 %cond, 0, !dbg !427
  %land.ext = zext i1 %tobool3 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext}, i64 0, metadata !218), !dbg !428
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end
  %bOK.0 = phi i32 [ %land.ext, %cond.end ], [ 1, %entry ]
  %vir_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 3, !dbg !429
  %6 = load i32* %vir_size, align 4, !dbg !429, !tbaa !263
  %cmp4 = icmp eq i32 %6, 0, !dbg !429
  br i1 %cmp4, label %if.end19, label %if.then5, !dbg !429

if.then5:                                         ; preds = %if.end
  %tobool6 = icmp eq i32 %bOK.0, 0, !dbg !429
  br i1 %tobool6, label %land.end17, label %land.rhs7, !dbg !429

land.rhs7:                                        ; preds = %if.then5
  %tobool8 = icmp eq i32 %bRead, 0, !dbg !429
  br i1 %tobool8, label %cond.false11, label %cond.true9, !dbg !429

cond.true9:                                       ; preds = %land.rhs7
  %7 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !429, !tbaa !305
  %call10 = call i32 %7(i8* %0, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 146) #5, !dbg !429
  br label %cond.end14, !dbg !429

cond.false11:                                     ; preds = %land.rhs7
  %8 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !429, !tbaa !305
  %call13 = call i32 %8(i8* %0, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 146) #5, !dbg !429
  br label %cond.end14, !dbg !429

cond.end14:                                       ; preds = %cond.false11, %cond.true9
  %cond15 = phi i32 [ %call10, %cond.true9 ], [ %call13, %cond.false11 ], !dbg !429
  %tobool16 = icmp ne i32 %cond15, 0, !dbg !429
  br label %land.end17

land.end17:                                       ; preds = %if.then5, %cond.end14
  %9 = phi i1 [ false, %if.then5 ], [ %tobool16, %cond.end14 ]
  %land.ext18 = zext i1 %9 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext18}, i64 0, metadata !218), !dbg !428
  br label %if.end19

if.end19:                                         ; preds = %if.end, %land.end17
  %bOK.1 = phi i32 [ %land.ext18, %land.end17 ], [ %bOK.0, %if.end ]
  %pres_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 4, !dbg !430
  %10 = load i32* %pres_size, align 4, !dbg !430, !tbaa !263
  %cmp20 = icmp eq i32 %10, 0, !dbg !430
  br i1 %cmp20, label %if.end36, label %if.then21, !dbg !430

if.then21:                                        ; preds = %if.end19
  %tobool22 = icmp eq i32 %bOK.1, 0, !dbg !430
  br i1 %tobool22, label %land.end34, label %land.rhs23, !dbg !430

land.rhs23:                                       ; preds = %if.then21
  %tobool24 = icmp eq i32 %bRead, 0, !dbg !430
  br i1 %tobool24, label %cond.false28, label %cond.true25, !dbg !430

cond.true25:                                      ; preds = %land.rhs23
  %11 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !430, !tbaa !305
  %call27 = call i32 %11(i8* %0, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 147) #5, !dbg !430
  br label %cond.end31, !dbg !430

cond.false28:                                     ; preds = %land.rhs23
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !430, !tbaa !305
  %call30 = call i32 %12(i8* %0, i32 3, i32 5, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 147) #5, !dbg !430
  br label %cond.end31, !dbg !430

cond.end31:                                       ; preds = %cond.false28, %cond.true25
  %cond32 = phi i32 [ %call27, %cond.true25 ], [ %call30, %cond.false28 ], !dbg !430
  %tobool33 = icmp ne i32 %cond32, 0, !dbg !430
  br label %land.end34

land.end34:                                       ; preds = %if.then21, %cond.end31
  %13 = phi i1 [ false, %if.then21 ], [ %tobool33, %cond.end31 ]
  %land.ext35 = zext i1 %13 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext35}, i64 0, metadata !218), !dbg !428
  br label %if.end36

if.end36:                                         ; preds = %if.end19, %land.end34
  %bOK.2 = phi i32 [ %land.ext35, %land.end34 ], [ %bOK.1, %if.end19 ]
  %x_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 7, !dbg !431
  %14 = load i32* %x_size, align 4, !dbg !431, !tbaa !263
  %cmp37 = icmp eq i32 %14, 0, !dbg !431
  br i1 %cmp37, label %if.end52, label %if.then38, !dbg !431

if.then38:                                        ; preds = %if.end36
  %tobool39 = icmp eq i32 %bOK.2, 0, !dbg !431
  br i1 %tobool39, label %land.end50, label %land.rhs40, !dbg !431

land.rhs40:                                       ; preds = %if.then38
  %tobool41 = icmp eq i32 %bRead, 0, !dbg !431
  br i1 %tobool41, label %cond.false44, label %cond.true42, !dbg !431

cond.true42:                                      ; preds = %land.rhs40
  %15 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !431, !tbaa !305
  %16 = bitcast [3 x float]* %x to i8*, !dbg !431
  %natoms = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !431
  %17 = load i32* %natoms, align 4, !dbg !431, !tbaa !263
  %call43 = call i32 %15(i8* %16, i32 %17, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 148) #5, !dbg !431
  br label %cond.end47, !dbg !431

cond.false44:                                     ; preds = %land.rhs40
  %18 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !431, !tbaa !305
  %19 = bitcast [3 x float]* %x to i8*, !dbg !431
  %natoms45 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !431
  %20 = load i32* %natoms45, align 4, !dbg !431, !tbaa !263
  %call46 = call i32 %18(i8* %19, i32 %20, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 148) #5, !dbg !431
  br label %cond.end47, !dbg !431

cond.end47:                                       ; preds = %cond.false44, %cond.true42
  %cond48 = phi i32 [ %call43, %cond.true42 ], [ %call46, %cond.false44 ], !dbg !431
  %tobool49 = icmp ne i32 %cond48, 0, !dbg !431
  br label %land.end50

land.end50:                                       ; preds = %if.then38, %cond.end47
  %21 = phi i1 [ false, %if.then38 ], [ %tobool49, %cond.end47 ]
  %land.ext51 = zext i1 %21 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext51}, i64 0, metadata !218), !dbg !428
  br label %if.end52

if.end52:                                         ; preds = %if.end36, %land.end50
  %bOK.3 = phi i32 [ %land.ext51, %land.end50 ], [ %bOK.2, %if.end36 ]
  %v_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 8, !dbg !432
  %22 = load i32* %v_size, align 4, !dbg !432, !tbaa !263
  %cmp53 = icmp eq i32 %22, 0, !dbg !432
  br i1 %cmp53, label %if.end69, label %if.then54, !dbg !432

if.then54:                                        ; preds = %if.end52
  %tobool55 = icmp eq i32 %bOK.3, 0, !dbg !432
  br i1 %tobool55, label %land.end67, label %land.rhs56, !dbg !432

land.rhs56:                                       ; preds = %if.then54
  %tobool57 = icmp eq i32 %bRead, 0, !dbg !432
  br i1 %tobool57, label %cond.false61, label %cond.true58, !dbg !432

cond.true58:                                      ; preds = %land.rhs56
  %23 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !432, !tbaa !305
  %24 = bitcast [3 x float]* %v to i8*, !dbg !432
  %natoms59 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !432
  %25 = load i32* %natoms59, align 4, !dbg !432, !tbaa !263
  %call60 = call i32 %23(i8* %24, i32 %25, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 149) #5, !dbg !432
  br label %cond.end64, !dbg !432

cond.false61:                                     ; preds = %land.rhs56
  %26 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !432, !tbaa !305
  %27 = bitcast [3 x float]* %v to i8*, !dbg !432
  %natoms62 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !432
  %28 = load i32* %natoms62, align 4, !dbg !432, !tbaa !263
  %call63 = call i32 %26(i8* %27, i32 %28, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 149) #5, !dbg !432
  br label %cond.end64, !dbg !432

cond.end64:                                       ; preds = %cond.false61, %cond.true58
  %cond65 = phi i32 [ %call60, %cond.true58 ], [ %call63, %cond.false61 ], !dbg !432
  %tobool66 = icmp ne i32 %cond65, 0, !dbg !432
  br label %land.end67

land.end67:                                       ; preds = %if.then54, %cond.end64
  %29 = phi i1 [ false, %if.then54 ], [ %tobool66, %cond.end64 ]
  %land.ext68 = zext i1 %29 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext68}, i64 0, metadata !218), !dbg !428
  br label %if.end69

if.end69:                                         ; preds = %if.end52, %land.end67
  %bOK.4 = phi i32 [ %land.ext68, %land.end67 ], [ %bOK.3, %if.end52 ]
  %f_size = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 9, !dbg !433
  %30 = load i32* %f_size, align 4, !dbg !433, !tbaa !263
  %cmp70 = icmp eq i32 %30, 0, !dbg !433
  br i1 %cmp70, label %if.end86, label %if.then71, !dbg !433

if.then71:                                        ; preds = %if.end69
  %tobool72 = icmp eq i32 %bOK.4, 0, !dbg !433
  br i1 %tobool72, label %land.end84, label %land.rhs73, !dbg !433

land.rhs73:                                       ; preds = %if.then71
  %tobool74 = icmp eq i32 %bRead, 0, !dbg !433
  br i1 %tobool74, label %cond.false78, label %cond.true75, !dbg !433

cond.true75:                                      ; preds = %land.rhs73
  %31 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !433, !tbaa !305
  %32 = bitcast [3 x float]* %f to i8*, !dbg !433
  %natoms76 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !433
  %33 = load i32* %natoms76, align 4, !dbg !433, !tbaa !263
  %call77 = call i32 %31(i8* %32, i32 %33, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 150) #5, !dbg !433
  br label %cond.end81, !dbg !433

cond.false78:                                     ; preds = %land.rhs73
  %34 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !433, !tbaa !305
  %35 = bitcast [3 x float]* %f to i8*, !dbg !433
  %natoms79 = getelementptr inbounds %struct.t_trnheader* %sh, i64 0, i32 10, !dbg !433
  %36 = load i32* %natoms79, align 4, !dbg !433, !tbaa !263
  %call80 = call i32 %34(i8* %35, i32 %36, i32 5, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 150) #5, !dbg !433
  br label %cond.end81, !dbg !433

cond.end81:                                       ; preds = %cond.false78, %cond.true75
  %cond82 = phi i32 [ %call77, %cond.true75 ], [ %call80, %cond.false78 ], !dbg !433
  %tobool83 = icmp ne i32 %cond82, 0, !dbg !433
  br label %land.end84

land.end84:                                       ; preds = %if.then71, %cond.end81
  %37 = phi i1 [ false, %if.then71 ], [ %tobool83, %cond.end81 ]
  %land.ext85 = zext i1 %37 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext85}, i64 0, metadata !218), !dbg !428
  br label %if.end86

if.end86:                                         ; preds = %if.end69, %land.end84
  %bOK.5 = phi i32 [ %land.ext85, %land.end84 ], [ %bOK.4, %if.end69 ]
  call void @llvm.lifetime.end(i64 36, i8* %0) #4, !dbg !434
  ret i32 %bOK.5, !dbg !434
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #2

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: optsize
declare void @gmx_fio_select(i32) #2

; Function Attrs: optsize
declare void @gmx_fio_setprecision(i32, i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !15, metadata !16, metadata !253, metadata !15, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trnio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/trnio.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 52, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 52, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/gmxfio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14}
!6 = metadata !{i32 786472, metadata !"eioREAL", i64 0} ; [ DW_TAG_enumerator ] [eioREAL :: 0]
!7 = metadata !{i32 786472, metadata !"eioINT", i64 1} ; [ DW_TAG_enumerator ] [eioINT :: 1]
!8 = metadata !{i32 786472, metadata !"eioNUCHAR", i64 2} ; [ DW_TAG_enumerator ] [eioNUCHAR :: 2]
!9 = metadata !{i32 786472, metadata !"eioUSHORT", i64 3} ; [ DW_TAG_enumerator ] [eioUSHORT :: 3]
!10 = metadata !{i32 786472, metadata !"eioRVEC", i64 4} ; [ DW_TAG_enumerator ] [eioRVEC :: 4]
!11 = metadata !{i32 786472, metadata !"eioNRVEC", i64 5} ; [ DW_TAG_enumerator ] [eioNRVEC :: 5]
!12 = metadata !{i32 786472, metadata !"eioIVEC", i64 6} ; [ DW_TAG_enumerator ] [eioIVEC :: 6]
!13 = metadata !{i32 786472, metadata !"eioSTRING", i64 7} ; [ DW_TAG_enumerator ] [eioSTRING :: 7]
!14 = metadata !{i32 786472, metadata !"eioNR", i64 8} ; [ DW_TAG_enumerator ] [eioNR :: 8]
!15 = metadata !{i32 0}
!16 = metadata !{metadata !17, metadata !106, metadata !114, metadata !122, metadata !141, metadata !156, metadata !169, metadata !182, metadata !192, metadata !198, metadata !203, metadata !219, metadata !235, metadata !247}
!17 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"pr_trnheader", metadata !"pr_trnheader", metadata !"", i32 114, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i8*, %struct.t_trnheader*)* @pr_trnheader, null, null, metadata !101, i32 115} ; [ DW_TAG_subprogram ] [line 114] [def] [scope 115] [pr_trnheader]
!18 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trnio.c]
!19 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{null, metadata !21, metadata !27, metadata !29, metadata !79}
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!22 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!24 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !28, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !49, metadata !50, metadata !51, metadata !52, metadata !55, metadata !57, metadata !59, metadata !63, metadata !65, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !75}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!30 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!31 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!32 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!33 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!34 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!35 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!36 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!37 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!38 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!39 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!40 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!41 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !42} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!43 = metadata !{i32 786451, metadata !24, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !44, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!44 = metadata !{metadata !45, metadata !46, metadata !48}
!45 = metadata !{i32 786445, metadata !24, metadata !43, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!46 = metadata !{i32 786445, metadata !24, metadata !43, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!48 = metadata !{i32 786445, metadata !24, metadata !43, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!49 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !47} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!50 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !27} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!51 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !27} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!52 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !53} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!53 = metadata !{i32 786454, metadata !24, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!54 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!55 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !56} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!56 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!57 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !58} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!58 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!59 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !60} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!60 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !30, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!63 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !64} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!64 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!65 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !66} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!66 = metadata !{i32 786454, metadata !24, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!67 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !64} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!68 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !64} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!69 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !64} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!70 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !64} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!71 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !72} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!72 = metadata !{i32 786454, metadata !24, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!73 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!74 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !27} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!75 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !76} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!76 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !30, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_trnheader]
!80 = metadata !{i32 786454, metadata !1, null, metadata !"t_trnheader", i32 77, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [t_trnheader] [line 77, size 0, align 0, offset 0] [from ]
!81 = metadata !{i32 786451, metadata !82, null, metadata !"", i32 58, i64 480, i64 32, i32 0, i32 0, null, metadata !83, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 58, size 480, align 32, offset 0] [from ]
!82 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/trnio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!83 = metadata !{metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !100}
!84 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"ir_size", i32 61, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [ir_size] [line 61, size 32, align 32, offset 0] [from int]
!85 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"e_size", i32 62, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [e_size] [line 62, size 32, align 32, offset 32] [from int]
!86 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"box_size", i32 63, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [box_size] [line 63, size 32, align 32, offset 64] [from int]
!87 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"vir_size", i32 64, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [vir_size] [line 64, size 32, align 32, offset 96] [from int]
!88 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"pres_size", i32 65, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [pres_size] [line 65, size 32, align 32, offset 128] [from int]
!89 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"top_size", i32 66, i64 32, i64 32, i64 160, i32 0, metadata !27} ; [ DW_TAG_member ] [top_size] [line 66, size 32, align 32, offset 160] [from int]
!90 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"sym_size", i32 67, i64 32, i64 32, i64 192, i32 0, metadata !27} ; [ DW_TAG_member ] [sym_size] [line 67, size 32, align 32, offset 192] [from int]
!91 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"x_size", i32 68, i64 32, i64 32, i64 224, i32 0, metadata !27} ; [ DW_TAG_member ] [x_size] [line 68, size 32, align 32, offset 224] [from int]
!92 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"v_size", i32 69, i64 32, i64 32, i64 256, i32 0, metadata !27} ; [ DW_TAG_member ] [v_size] [line 69, size 32, align 32, offset 256] [from int]
!93 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"f_size", i32 70, i64 32, i64 32, i64 288, i32 0, metadata !27} ; [ DW_TAG_member ] [f_size] [line 70, size 32, align 32, offset 288] [from int]
!94 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"natoms", i32 72, i64 32, i64 32, i64 320, i32 0, metadata !27} ; [ DW_TAG_member ] [natoms] [line 72, size 32, align 32, offset 320] [from int]
!95 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"step", i32 73, i64 32, i64 32, i64 352, i32 0, metadata !27} ; [ DW_TAG_member ] [step] [line 73, size 32, align 32, offset 352] [from int]
!96 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"nre", i32 74, i64 32, i64 32, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [nre] [line 74, size 32, align 32, offset 384] [from int]
!97 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"t", i32 75, i64 32, i64 32, i64 416, i32 0, metadata !98} ; [ DW_TAG_member ] [t] [line 75, size 32, align 32, offset 416] [from real]
!98 = metadata !{i32 786454, metadata !82, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!99 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!100 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"lambda", i32 76, i64 32, i64 32, i64 448, i32 0, metadata !98} ; [ DW_TAG_member ] [lambda] [line 76, size 32, align 32, offset 448] [from real]
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105}
!102 = metadata !{i32 786689, metadata !17, metadata !"fp", metadata !18, i32 16777330, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 114]
!103 = metadata !{i32 786689, metadata !17, metadata !"indent", metadata !18, i32 33554546, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [indent] [line 114]
!104 = metadata !{i32 786689, metadata !17, metadata !"title", metadata !18, i32 50331762, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 114]
!105 = metadata !{i32 786689, metadata !17, metadata !"sh", metadata !18, i32 67108978, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sh] [line 114]
!106 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"read_trnheader", metadata !"read_trnheader", metadata !"", i32 202, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, %struct.t_trnheader*)* @read_trnheader, null, null, metadata !109, i32 203} ; [ DW_TAG_subprogram ] [line 202] [def] [scope 203] [read_trnheader]
!107 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{null, metadata !29, metadata !79}
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113}
!110 = metadata !{i32 786689, metadata !106, metadata !"fn", metadata !18, i32 16777418, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 202]
!111 = metadata !{i32 786689, metadata !106, metadata !"trn", metadata !18, i32 33554634, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [trn] [line 202]
!112 = metadata !{i32 786688, metadata !106, metadata !"fp", metadata !18, i32 204, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 204]
!113 = metadata !{i32 786688, metadata !106, metadata !"bOK", metadata !18, i32 205, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOK] [line 205]
!114 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"fread_trnheader", metadata !"fread_trnheader", metadata !"", i32 213, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.t_trnheader*, i32*)* @fread_trnheader, null, null, metadata !118, i32 214} ; [ DW_TAG_subprogram ] [line 213] [def] [scope 214] [fread_trnheader]
!115 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!116 = metadata !{metadata !27, metadata !27, metadata !79, metadata !117}
!117 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!118 = metadata !{metadata !119, metadata !120, metadata !121}
!119 = metadata !{i32 786689, metadata !114, metadata !"fp", metadata !18, i32 16777429, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 213]
!120 = metadata !{i32 786689, metadata !114, metadata !"trn", metadata !18, i32 33554645, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [trn] [line 213]
!121 = metadata !{i32 786689, metadata !114, metadata !"bOK", metadata !18, i32 50331861, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOK] [line 213]
!122 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"write_trn", metadata !"write_trn", metadata !"", i32 218, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, float, float, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*)* @write_trn, null, null, metadata !130, i32 220} ; [ DW_TAG_subprogram ] [line 218] [def] [scope 220] [write_trn]
!123 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!124 = metadata !{null, metadata !29, metadata !27, metadata !98, metadata !98, metadata !125, metadata !27, metadata !125, metadata !125, metadata !125}
!125 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!126 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!127 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !98, metadata !128, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!128 = metadata !{metadata !129}
!129 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140}
!131 = metadata !{i32 786689, metadata !122, metadata !"fn", metadata !18, i32 16777434, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 218]
!132 = metadata !{i32 786689, metadata !122, metadata !"step", metadata !18, i32 33554650, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 218]
!133 = metadata !{i32 786689, metadata !122, metadata !"t", metadata !18, i32 50331866, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 218]
!134 = metadata !{i32 786689, metadata !122, metadata !"lambda", metadata !18, i32 67109082, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 218]
!135 = metadata !{i32 786689, metadata !122, metadata !"box", metadata !18, i32 83886299, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 219]
!136 = metadata !{i32 786689, metadata !122, metadata !"natoms", metadata !18, i32 100663515, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 219]
!137 = metadata !{i32 786689, metadata !122, metadata !"x", metadata !18, i32 117440731, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 219]
!138 = metadata !{i32 786689, metadata !122, metadata !"v", metadata !18, i32 134217947, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 219]
!139 = metadata !{i32 786689, metadata !122, metadata !"f", metadata !18, i32 150995163, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 219]
!140 = metadata !{i32 786688, metadata !122, metadata !"fp", metadata !18, i32 221, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 221]
!141 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"read_trn", metadata !"read_trn", metadata !"", i32 228, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32*, float*, float*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*)* @read_trn, null, null, metadata !145, i32 230} ; [ DW_TAG_subprogram ] [line 228] [def] [scope 230] [read_trn]
!142 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{null, metadata !29, metadata !117, metadata !144, metadata !144, metadata !125, metadata !117, metadata !125, metadata !125, metadata !125}
!144 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!145 = metadata !{metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155}
!146 = metadata !{i32 786689, metadata !141, metadata !"fn", metadata !18, i32 16777444, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 228]
!147 = metadata !{i32 786689, metadata !141, metadata !"step", metadata !18, i32 33554660, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 228]
!148 = metadata !{i32 786689, metadata !141, metadata !"t", metadata !18, i32 50331876, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 228]
!149 = metadata !{i32 786689, metadata !141, metadata !"lambda", metadata !18, i32 67109092, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 228]
!150 = metadata !{i32 786689, metadata !141, metadata !"box", metadata !18, i32 83886309, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 229]
!151 = metadata !{i32 786689, metadata !141, metadata !"natoms", metadata !18, i32 100663525, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 229]
!152 = metadata !{i32 786689, metadata !141, metadata !"x", metadata !18, i32 117440741, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 229]
!153 = metadata !{i32 786689, metadata !141, metadata !"v", metadata !18, i32 134217957, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 229]
!154 = metadata !{i32 786689, metadata !141, metadata !"f", metadata !18, i32 150995173, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 229]
!155 = metadata !{i32 786688, metadata !141, metadata !"fp", metadata !18, i32 231, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 231]
!156 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"fwrite_trn", metadata !"fwrite_trn", metadata !"", i32 238, metadata !157, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, float, float, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*)* @fwrite_trn, null, null, metadata !159, i32 240} ; [ DW_TAG_subprogram ] [line 238] [def] [scope 240] [fwrite_trn]
!157 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!158 = metadata !{null, metadata !27, metadata !27, metadata !98, metadata !98, metadata !125, metadata !27, metadata !125, metadata !125, metadata !125}
!159 = metadata !{metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168}
!160 = metadata !{i32 786689, metadata !156, metadata !"fp", metadata !18, i32 16777454, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 238]
!161 = metadata !{i32 786689, metadata !156, metadata !"step", metadata !18, i32 33554670, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 238]
!162 = metadata !{i32 786689, metadata !156, metadata !"t", metadata !18, i32 50331886, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 238]
!163 = metadata !{i32 786689, metadata !156, metadata !"lambda", metadata !18, i32 67109102, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 238]
!164 = metadata !{i32 786689, metadata !156, metadata !"box", metadata !18, i32 83886319, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 239]
!165 = metadata !{i32 786689, metadata !156, metadata !"natoms", metadata !18, i32 100663535, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 239]
!166 = metadata !{i32 786689, metadata !156, metadata !"x", metadata !18, i32 117440751, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 239]
!167 = metadata !{i32 786689, metadata !156, metadata !"v", metadata !18, i32 134217967, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 239]
!168 = metadata !{i32 786689, metadata !156, metadata !"f", metadata !18, i32 150995183, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 239]
!169 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"fread_trn", metadata !"fread_trn", metadata !"", i32 245, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*, float*, float*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*)* @fread_trn, null, null, metadata !172, i32 247} ; [ DW_TAG_subprogram ] [line 245] [def] [scope 247] [fread_trn]
!170 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!171 = metadata !{metadata !27, metadata !27, metadata !117, metadata !144, metadata !144, metadata !125, metadata !117, metadata !125, metadata !125, metadata !125}
!172 = metadata !{metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181}
!173 = metadata !{i32 786689, metadata !169, metadata !"fp", metadata !18, i32 16777461, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 245]
!174 = metadata !{i32 786689, metadata !169, metadata !"step", metadata !18, i32 33554677, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 245]
!175 = metadata !{i32 786689, metadata !169, metadata !"t", metadata !18, i32 50331893, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 245]
!176 = metadata !{i32 786689, metadata !169, metadata !"lambda", metadata !18, i32 67109109, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 245]
!177 = metadata !{i32 786689, metadata !169, metadata !"box", metadata !18, i32 83886326, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 246]
!178 = metadata !{i32 786689, metadata !169, metadata !"natoms", metadata !18, i32 100663542, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 246]
!179 = metadata !{i32 786689, metadata !169, metadata !"x", metadata !18, i32 117440758, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 246]
!180 = metadata !{i32 786689, metadata !169, metadata !"v", metadata !18, i32 134217974, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 246]
!181 = metadata !{i32 786689, metadata !169, metadata !"f", metadata !18, i32 150995190, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 246]
!182 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"fread_htrn", metadata !"fread_htrn", metadata !"", i32 251, metadata !183, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.t_trnheader*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*)* @fread_htrn, null, null, metadata !185, i32 252} ; [ DW_TAG_subprogram ] [line 251] [def] [scope 252] [fread_htrn]
!183 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!184 = metadata !{metadata !27, metadata !27, metadata !79, metadata !125, metadata !125, metadata !125, metadata !125}
!185 = metadata !{metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191}
!186 = metadata !{i32 786689, metadata !182, metadata !"fp", metadata !18, i32 16777467, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 251]
!187 = metadata !{i32 786689, metadata !182, metadata !"trn", metadata !18, i32 33554683, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [trn] [line 251]
!188 = metadata !{i32 786689, metadata !182, metadata !"box", metadata !18, i32 50331899, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 251]
!189 = metadata !{i32 786689, metadata !182, metadata !"x", metadata !18, i32 67109115, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 251]
!190 = metadata !{i32 786689, metadata !182, metadata !"v", metadata !18, i32 83886331, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 251]
!191 = metadata !{i32 786689, metadata !182, metadata !"f", metadata !18, i32 100663547, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 251]
!192 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"open_trn", metadata !"open_trn", metadata !"", i32 256, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @open_trn, null, null, metadata !195, i32 257} ; [ DW_TAG_subprogram ] [line 256] [def] [scope 257] [open_trn]
!193 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!194 = metadata !{metadata !27, metadata !29, metadata !29}
!195 = metadata !{metadata !196, metadata !197}
!196 = metadata !{i32 786689, metadata !192, metadata !"fn", metadata !18, i32 16777472, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 256]
!197 = metadata !{i32 786689, metadata !192, metadata !"mode", metadata !18, i32 33554688, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 256]
!198 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"close_trn", metadata !"close_trn", metadata !"", i32 261, metadata !199, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @close_trn, null, null, metadata !201, i32 262} ; [ DW_TAG_subprogram ] [line 261] [def] [scope 262] [close_trn]
!199 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!200 = metadata !{null, metadata !27}
!201 = metadata !{metadata !202}
!202 = metadata !{i32 786689, metadata !198, metadata !"fp", metadata !18, i32 16777477, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 261]
!203 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"do_htrn", metadata !"do_htrn", metadata !"", i32 138, metadata !204, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.t_trnheader*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*)* @do_htrn, null, null, metadata !206, i32 140} ; [ DW_TAG_subprogram ] [line 138] [local] [def] [scope 140] [do_htrn]
!204 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!205 = metadata !{metadata !27, metadata !27, metadata !27, metadata !79, metadata !125, metadata !125, metadata !125, metadata !125}
!206 = metadata !{metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !218}
!207 = metadata !{i32 786689, metadata !203, metadata !"fp", metadata !18, i32 16777354, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 138]
!208 = metadata !{i32 786689, metadata !203, metadata !"bRead", metadata !18, i32 33554570, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 138]
!209 = metadata !{i32 786689, metadata !203, metadata !"sh", metadata !18, i32 50331786, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sh] [line 138]
!210 = metadata !{i32 786689, metadata !203, metadata !"box", metadata !18, i32 67109003, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 139]
!211 = metadata !{i32 786689, metadata !203, metadata !"x", metadata !18, i32 83886219, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 139]
!212 = metadata !{i32 786689, metadata !203, metadata !"v", metadata !18, i32 100663435, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 139]
!213 = metadata !{i32 786689, metadata !203, metadata !"f", metadata !18, i32 117440651, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 139]
!214 = metadata !{i32 786688, metadata !203, metadata !"pv", metadata !18, i32 141, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pv] [line 141]
!215 = metadata !{i32 786454, metadata !1, null, metadata !"matrix", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !216} ; [ DW_TAG_typedef ] [matrix] [line 103, size 0, align 0, offset 0] [from ]
!216 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !98, metadata !217, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!217 = metadata !{metadata !129, metadata !129}
!218 = metadata !{i32 786688, metadata !203, metadata !"bOK", metadata !18, i32 142, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOK] [line 142]
!219 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"do_trn", metadata !"do_trn", metadata !"", i32 155, metadata !220, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32*, float*, float*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*)* @do_trn, null, null, metadata !222, i32 157} ; [ DW_TAG_subprogram ] [line 155] [local] [def] [scope 157] [do_trn]
!220 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!221 = metadata !{metadata !27, metadata !27, metadata !27, metadata !117, metadata !144, metadata !144, metadata !125, metadata !117, metadata !125, metadata !125, metadata !125}
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234}
!223 = metadata !{i32 786689, metadata !219, metadata !"fp", metadata !18, i32 16777371, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 155]
!224 = metadata !{i32 786689, metadata !219, metadata !"bRead", metadata !18, i32 33554587, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 155]
!225 = metadata !{i32 786689, metadata !219, metadata !"step", metadata !18, i32 50331803, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 155]
!226 = metadata !{i32 786689, metadata !219, metadata !"t", metadata !18, i32 67109019, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 155]
!227 = metadata !{i32 786689, metadata !219, metadata !"lambda", metadata !18, i32 83886235, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 155]
!228 = metadata !{i32 786689, metadata !219, metadata !"box", metadata !18, i32 100663452, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 156]
!229 = metadata !{i32 786689, metadata !219, metadata !"natoms", metadata !18, i32 117440668, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 156]
!230 = metadata !{i32 786689, metadata !219, metadata !"x", metadata !18, i32 134217884, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 156]
!231 = metadata !{i32 786689, metadata !219, metadata !"v", metadata !18, i32 150995100, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 156]
!232 = metadata !{i32 786689, metadata !219, metadata !"f", metadata !18, i32 167772316, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 156]
!233 = metadata !{i32 786688, metadata !219, metadata !"sh", metadata !18, i32 158, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sh] [line 158]
!234 = metadata !{i32 786688, metadata !219, metadata !"bOK", metadata !18, i32 159, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOK] [line 159]
!235 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"do_trnheader", metadata !"do_trnheader", metadata !"", i32 69, metadata !236, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, %struct.t_trnheader*, i32*)* @do_trnheader, null, null, metadata !238, i32 70} ; [ DW_TAG_subprogram ] [line 69] [local] [def] [scope 70] [do_trnheader]
!236 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!237 = metadata !{metadata !27, metadata !27, metadata !27, metadata !79, metadata !117}
!238 = metadata !{metadata !239, metadata !240, metadata !241, metadata !242, metadata !243}
!239 = metadata !{i32 786689, metadata !235, metadata !"fp", metadata !18, i32 16777285, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 69]
!240 = metadata !{i32 786689, metadata !235, metadata !"bRead", metadata !18, i32 33554501, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bRead] [line 69]
!241 = metadata !{i32 786689, metadata !235, metadata !"sh", metadata !18, i32 50331717, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sh] [line 69]
!242 = metadata !{i32 786689, metadata !235, metadata !"bOK", metadata !18, i32 67108933, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOK] [line 69]
!243 = metadata !{i32 786688, metadata !235, metadata !"buf", metadata !18, i32 74, metadata !244, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 74]
!244 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !30, metadata !245, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!245 = metadata !{metadata !246}
!246 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!247 = metadata !{i32 786478, metadata !1, metadata !18, metadata !"nFloatSize", metadata !"nFloatSize", metadata !"", i32 48, metadata !248, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !250, i32 49} ; [ DW_TAG_subprogram ] [line 48] [local] [def] [scope 49] [nFloatSize]
!248 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!249 = metadata !{metadata !27, metadata !79}
!250 = metadata !{metadata !251, metadata !252}
!251 = metadata !{i32 786689, metadata !247, metadata !"sh", metadata !18, i32 16777264, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sh] [line 48]
!252 = metadata !{i32 786688, metadata !247, metadata !"nflsize", metadata !18, i32 50, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nflsize] [line 50]
!253 = metadata !{metadata !254, metadata !255, metadata !256}
!254 = metadata !{i32 786484, i32 0, metadata !235, metadata !"magic", metadata !"magic", metadata !"", metadata !18, i32 71, metadata !27, i32 1, i32 1, i32* @do_trnheader.magic, null} ; [ DW_TAG_variable ] [magic] [line 71] [local] [def]
!255 = metadata !{i32 786484, i32 0, metadata !235, metadata !"version", metadata !"version", metadata !"", metadata !18, i32 72, metadata !29, i32 1, i32 1, null, null}
!256 = metadata !{i32 786484, i32 0, metadata !235, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !18, i32 73, metadata !27, i32 1, i32 1, null, null}
!257 = metadata !{i32 114, i32 0, metadata !17, null}
!258 = metadata !{i32 116, i32 0, metadata !17, null}
!259 = metadata !{i32 117, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !17, i32 116, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trnio.c]
!261 = metadata !{i32 118, i32 0, metadata !260, null}
!262 = metadata !{i32 119, i32 0, metadata !260, null}
!263 = metadata !{metadata !"int", metadata !264}
!264 = metadata !{metadata !"omnipotent char", metadata !265}
!265 = metadata !{metadata !"Simple C/C++ TBAA"}
!266 = metadata !{i32 120, i32 0, metadata !260, null}
!267 = metadata !{i32 121, i32 0, metadata !260, null}
!268 = metadata !{i32 122, i32 0, metadata !260, null}
!269 = metadata !{i32 123, i32 0, metadata !260, null}
!270 = metadata !{i32 124, i32 0, metadata !260, null}
!271 = metadata !{i32 125, i32 0, metadata !260, null}
!272 = metadata !{i32 127, i32 0, metadata !260, null}
!273 = metadata !{i32 128, i32 0, metadata !260, null}
!274 = metadata !{i32 129, i32 0, metadata !260, null}
!275 = metadata !{i32 130, i32 0, metadata !260, null}
!276 = metadata !{i32 131, i32 0, metadata !260, null}
!277 = metadata !{i32 132, i32 0, metadata !260, null}
!278 = metadata !{metadata !"float", metadata !264}
!279 = metadata !{i32 133, i32 0, metadata !260, null}
!280 = metadata !{i32 134, i32 0, metadata !260, null}
!281 = metadata !{i32 135, i32 0, metadata !260, null}
!282 = metadata !{i32 136, i32 0, metadata !17, null}
!283 = metadata !{i32 202, i32 0, metadata !106, null}
!284 = metadata !{i32 205, i32 0, metadata !106, null}
!285 = metadata !{i32 786689, metadata !192, metadata !"fn", metadata !18, i32 16777472, metadata !29, i32 0, metadata !286} ; [ DW_TAG_arg_variable ] [fn] [line 256]
!286 = metadata !{i32 207, i32 0, metadata !106, null}
!287 = metadata !{i32 256, i32 0, metadata !192, metadata !286}
!288 = metadata !{i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)}
!289 = metadata !{i32 786689, metadata !192, metadata !"mode", metadata !18, i32 33554688, metadata !29, i32 0, metadata !286} ; [ DW_TAG_arg_variable ] [mode] [line 256]
!290 = metadata !{i32 258, i32 0, metadata !192, metadata !286}
!291 = metadata !{i32 208, i32 0, metadata !106, null}
!292 = metadata !{i32 209, i32 0, metadata !106, null}
!293 = metadata !{i32 786689, metadata !198, metadata !"fp", metadata !18, i32 16777477, metadata !27, i32 0, metadata !294} ; [ DW_TAG_arg_variable ] [fp] [line 261]
!294 = metadata !{i32 210, i32 0, metadata !106, null}
!295 = metadata !{i32 261, i32 0, metadata !198, metadata !294}
!296 = metadata !{i32 263, i32 0, metadata !198, metadata !294}
!297 = metadata !{i32 211, i32 0, metadata !106, null}
!298 = metadata !{i32 256, i32 0, metadata !192, null}
!299 = metadata !{i32 258, i32 0, metadata !192, null}
!300 = metadata !{i32 69, i32 0, metadata !235, null}
!301 = metadata !{i32 74, i32 0, metadata !235, null}
!302 = metadata !{i32 76, i32 0, metadata !235, null}
!303 = metadata !{i32 78, i32 0, metadata !235, null}
!304 = metadata !{i32 79, i32 0, metadata !235, null}
!305 = metadata !{metadata !"any pointer", metadata !264}
!306 = metadata !{i32 83, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !235, i32 82, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trnio.c]
!308 = metadata !{i32 84, i32 0, metadata !307, null}
!309 = metadata !{i32 85, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !307, i32 84, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trnio.c]
!311 = metadata !{i32 91, i32 0, metadata !235, null}
!312 = metadata !{i32 87, i32 0, metadata !310, null}
!313 = metadata !{i32 90, i32 0, metadata !235, null}
!314 = metadata !{i32 92, i32 0, metadata !235, null}
!315 = metadata !{i32 93, i32 0, metadata !235, null}
!316 = metadata !{i32 94, i32 0, metadata !235, null}
!317 = metadata !{i32 95, i32 0, metadata !235, null}
!318 = metadata !{i32 96, i32 0, metadata !235, null}
!319 = metadata !{i32 97, i32 0, metadata !235, null}
!320 = metadata !{i32 98, i32 0, metadata !235, null}
!321 = metadata !{i32 99, i32 0, metadata !235, null}
!322 = metadata !{i32 100, i32 0, metadata !235, null}
!323 = metadata !{i32 102, i32 0, metadata !235, null}
!324 = metadata !{i32 786689, metadata !247, metadata !"sh", metadata !18, i32 16777264, metadata !79, i32 0, metadata !325} ; [ DW_TAG_arg_variable ] [sh] [line 48]
!325 = metadata !{i32 103, i32 0, metadata !235, null}
!326 = metadata !{i32 48, i32 0, metadata !247, metadata !325}
!327 = metadata !{i32 786688, metadata !247, metadata !"nflsize", metadata !18, i32 50, metadata !27, i32 0, metadata !325} ; [ DW_TAG_auto_variable ] [nflsize] [line 50]
!328 = metadata !{i32 50, i32 0, metadata !247, metadata !325}
!329 = metadata !{i32 52, i32 0, metadata !247, metadata !325}
!330 = metadata !{i32 53, i32 0, metadata !247, metadata !325}
!331 = metadata !{i32 54, i32 0, metadata !247, metadata !325}
!332 = metadata !{i32 55, i32 0, metadata !247, metadata !325}
!333 = metadata !{i32 56, i32 0, metadata !247, metadata !325}
!334 = metadata !{i32 57, i32 0, metadata !247, metadata !325}
!335 = metadata !{i32 58, i32 0, metadata !247, metadata !325} ; [ DW_TAG_imported_module ]
!336 = metadata !{i32 59, i32 0, metadata !247, metadata !325}
!337 = metadata !{i32 61, i32 0, metadata !247, metadata !325}
!338 = metadata !{i32 63, i32 0, metadata !247, metadata !325}
!339 = metadata !{i32 64, i32 0, metadata !247, metadata !325}
!340 = metadata !{i32 105, i32 0, metadata !235, null}
!341 = metadata !{i32 106, i32 0, metadata !235, null}
!342 = metadata !{i32 107, i32 0, metadata !235, null}
!343 = metadata !{i32 108, i32 0, metadata !235, null}
!344 = metadata !{i32 109, i32 0, metadata !235, null}
!345 = metadata !{i32 111, i32 0, metadata !235, null}
!346 = metadata !{i32 112, i32 0, metadata !235, null}
!347 = metadata !{i32 261, i32 0, metadata !198, null}
!348 = metadata !{i32 263, i32 0, metadata !198, null}
!349 = metadata !{i32 264, i32 0, metadata !198, null}
!350 = metadata !{i32 213, i32 0, metadata !114, null}
!351 = metadata !{i32 215, i32 0, metadata !114, null}
!352 = metadata !{i32 218, i32 0, metadata !122, null}
!353 = metadata !{i32 219, i32 0, metadata !122, null}
!354 = metadata !{i32 786689, metadata !192, metadata !"fn", metadata !18, i32 16777472, metadata !29, i32 0, metadata !355} ; [ DW_TAG_arg_variable ] [fn] [line 256]
!355 = metadata !{i32 223, i32 0, metadata !122, null}
!356 = metadata !{i32 256, i32 0, metadata !192, metadata !355}
!357 = metadata !{i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)}
!358 = metadata !{i32 786689, metadata !192, metadata !"mode", metadata !18, i32 33554688, metadata !29, i32 0, metadata !355} ; [ DW_TAG_arg_variable ] [mode] [line 256]
!359 = metadata !{i32 258, i32 0, metadata !192, metadata !355}
!360 = metadata !{i32 224, i32 0, metadata !122, null}
!361 = metadata !{i32 786689, metadata !198, metadata !"fp", metadata !18, i32 16777477, metadata !27, i32 0, metadata !362} ; [ DW_TAG_arg_variable ] [fp] [line 261]
!362 = metadata !{i32 225, i32 0, metadata !122, null}
!363 = metadata !{i32 261, i32 0, metadata !198, metadata !362}
!364 = metadata !{i32 263, i32 0, metadata !198, metadata !362}
!365 = metadata !{i32 226, i32 0, metadata !122, null}
!366 = metadata !{i32 155, i32 0, metadata !219, null}
!367 = metadata !{i32 156, i32 0, metadata !219, null}
!368 = metadata !{i32 159, i32 0, metadata !219, null}
!369 = metadata !{i32 161, i32 0, metadata !219, null}
!370 = metadata !{i32 162, i32 0, metadata !219, null}
!371 = metadata !{i32 163, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !1, metadata !219, i32 162, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trnio.c]
!373 = metadata !{i32 164, i32 0, metadata !372, null}
!374 = metadata !{i32 165, i32 0, metadata !372, null}
!375 = metadata !{i32 166, i32 0, metadata !372, null}
!376 = metadata !{i32 167, i32 0, metadata !372, null}
!377 = metadata !{i32 168, i32 0, metadata !372, null}
!378 = metadata !{i32 169, i32 0, metadata !372, null}
!379 = metadata !{i32 170, i32 0, metadata !372, null}
!380 = metadata !{i32 171, i32 0, metadata !372, null}
!381 = metadata !{i32 172, i32 0, metadata !372, null}
!382 = metadata !{i32 173, i32 0, metadata !219, null}
!383 = metadata !{i32 175, i32 0, metadata !219, null}
!384 = metadata !{i32 176, i32 0, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !219, i32 175, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/trnio.c]
!386 = metadata !{i32 177, i32 0, metadata !385, null}
!387 = metadata !{i32 178, i32 0, metadata !385, null}
!388 = metadata !{i32 179, i32 0, metadata !385, null}
!389 = metadata !{i32 180, i32 0, metadata !385, null}
!390 = metadata !{i32 181, i32 0, metadata !385, null}
!391 = metadata !{i32 182, i32 0, metadata !385, null}
!392 = metadata !{i32 183, i32 0, metadata !385, null}
!393 = metadata !{i32 184, i32 0, metadata !385, null}
!394 = metadata !{i32 185, i32 0, metadata !385, null}
!395 = metadata !{i32 186, i32 0, metadata !385, null}
!396 = metadata !{i32 187, i32 0, metadata !385, null}
!397 = metadata !{i32 189, i32 0, metadata !219, null}
!398 = metadata !{i32 191, i32 0, metadata !219, null}
!399 = metadata !{i32 193, i32 0, metadata !219, null}
!400 = metadata !{i32 194, i32 0, metadata !219, null}
!401 = metadata !{i32 228, i32 0, metadata !141, null}
!402 = metadata !{i32 229, i32 0, metadata !141, null}
!403 = metadata !{i32 786689, metadata !192, metadata !"fn", metadata !18, i32 16777472, metadata !29, i32 0, metadata !404} ; [ DW_TAG_arg_variable ] [fn] [line 256]
!404 = metadata !{i32 233, i32 0, metadata !141, null}
!405 = metadata !{i32 256, i32 0, metadata !192, metadata !404}
!406 = metadata !{i32 786689, metadata !192, metadata !"mode", metadata !18, i32 33554688, metadata !29, i32 0, metadata !404} ; [ DW_TAG_arg_variable ] [mode] [line 256]
!407 = metadata !{i32 258, i32 0, metadata !192, metadata !404}
!408 = metadata !{i32 234, i32 0, metadata !141, null}
!409 = metadata !{i32 786689, metadata !198, metadata !"fp", metadata !18, i32 16777477, metadata !27, i32 0, metadata !410} ; [ DW_TAG_arg_variable ] [fp] [line 261]
!410 = metadata !{i32 235, i32 0, metadata !141, null}
!411 = metadata !{i32 261, i32 0, metadata !198, metadata !410}
!412 = metadata !{i32 263, i32 0, metadata !198, metadata !410}
!413 = metadata !{i32 236, i32 0, metadata !141, null}
!414 = metadata !{i32 238, i32 0, metadata !156, null}
!415 = metadata !{i32 239, i32 0, metadata !156, null}
!416 = metadata !{i32 241, i32 0, metadata !156, null}
!417 = metadata !{i32 242, i32 0, metadata !156, null}
!418 = metadata !{i32 245, i32 0, metadata !169, null}
!419 = metadata !{i32 246, i32 0, metadata !169, null}
!420 = metadata !{i32 248, i32 0, metadata !169, null}
!421 = metadata !{i32 251, i32 0, metadata !182, null}
!422 = metadata !{i32 253, i32 0, metadata !182, null}
!423 = metadata !{i32 138, i32 0, metadata !203, null}
!424 = metadata !{i32 141, i32 0, metadata !203, null}
!425 = metadata !{i32 1}
!426 = metadata !{i32 144, i32 0, metadata !203, null}
!427 = metadata !{i32 145, i32 0, metadata !203, null}
!428 = metadata !{i32 142, i32 0, metadata !203, null}
!429 = metadata !{i32 146, i32 0, metadata !203, null}
!430 = metadata !{i32 147, i32 0, metadata !203, null}
!431 = metadata !{i32 148, i32 0, metadata !203, null}
!432 = metadata !{i32 149, i32 0, metadata !203, null}
!433 = metadata !{i32 150, i32 0, metadata !203, null}
!434 = metadata !{i32 153, i32 0, metadata !203, null}
