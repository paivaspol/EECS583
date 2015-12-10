; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ioAdvertisedFileDesc = type { i8*, i8*, i8*, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@ioasciipriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.0
@IOASCII_Write3D.directions = internal constant [3 x i32] [i32 1, i32 1, i32 1], align 4
@IOASCII_Write3D.origin = internal constant [3 x i32] zeroinitializer, align 4
@IOASCII_Write3D.lengths = internal constant [3 x i32] [i32 -1, i32 -1, i32 -1], align 4
@IOASCII_Write3D.downsamples = internal constant [3 x i32] [i32 1, i32 1, i32 1], align 4
@.str = private unnamed_addr constant [65 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"No IOASCII 3D output for '%s' (no storage)\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"\0A\0A#Time = %%%s\0A\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"%%%s\00", align 1
@.str5 = private unnamed_addr constant [19 x i8] c"gnuplot f(t,x,y,z)\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"%%%s\09\09\00", align 1
@.str7 = private unnamed_addr constant [21 x i8] c"%%%s\09\09%%%s\09\09%%d\09\09%%d\00", align 1
@.str8 = private unnamed_addr constant [23 x i8] c"%%%s\09\09%%%s\09\09%%%s\09\09%%%s\00", align 1
@.str9 = private unnamed_addr constant [7 x i8] c"cart3d\00", align 1
@.str10 = private unnamed_addr constant [53 x i8] c"IOASCII_Write3D: No coordinate ranges found for '%s'\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str11 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str12 = private unnamed_addr constant [13 x i8] c"%s/%s_3D.asc\00", align 1
@.str13 = private unnamed_addr constant [10 x i8] c"%s_3D.asc\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str16 = private unnamed_addr constant [40 x i8] c"Cannot open 3D IOASCII output file '%s'\00", align 1
@.str17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str18 = private unnamed_addr constant [35 x i8] c"Full-dimensional variable contents\00", align 1
@.str19 = private unnamed_addr constant [20 x i8] c"application/gnuplot\00", align 1
@.str20 = private unnamed_addr constant [19 x i8] c"parameter filename\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str22 = private unnamed_addr constant [20 x i8] c"#Parameter file %s\0A\00", align 1
@.str23 = private unnamed_addr constant [14 x i8] c"creation date\00", align 1
@.str24 = private unnamed_addr constant [13 x i8] c"#Created %s \00", align 1
@.str25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"axis labels\00", align 1
@.str27 = private unnamed_addr constant [13 x i8] c"#z-label %s\0A\00", align 1
@.str28 = private unnamed_addr constant [48 x i8] c"Failed to extract 3D hyperslab for x-coordinate\00", align 1
@.str29 = private unnamed_addr constant [48 x i8] c"Failed to extract 3D hyperslab for y-coordinate\00", align 1
@.str30 = private unnamed_addr constant [48 x i8] c"Failed to extract 3D hyperslab for z-coordinate\00", align 1
@.str31 = private unnamed_addr constant [49 x i8] c"Failed to extract 3D hyperslab for variable '%s'\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str34 = private unnamed_addr constant [26 x i8] c"Unsupported variable type\00", align 1
@.str35 = private unnamed_addr constant [54 x i8] c"$Id: Write3D.c,v 1.2 2001/12/28 21:28:37 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_IOASCII_Write3D_c() #0 {
entry:
  ret i8* getelementptr inbounds ([54 x i8]* @.str35, i64 0, i64 0), !dbg !337
}

; Function Attrs: nounwind optsize uwtable
define i32 @IOASCII_Write3D(%struct.cGH* %GH, i32 %vindex, i8* %alias) #1 {
entry:
  %header_fmt_string = alloca [30 x i8], align 16
  %out_real_format = alloca [30 x i8], align 16
  %time_fmt_string = alloca [30 x i8], align 16
  %data_fmt_string_int = alloca [30 x i8], align 16
  %data_fmt_string_real = alloca [30 x i8], align 16
  %coord_index = alloca [3 x i32], align 4
  %coord_lower = alloca [3 x double], align 16
  %dummy = alloca double, align 8
  %groupinfo = alloca %struct.cGroup, align 4
  %advertised_file = alloca %struct.ioAdvertisedFileDesc, align 8
  %buffer = alloca [128 x i8], align 16
  %hsize = alloca [3 x i32], align 4
  %coord_data = alloca [3 x double*], align 16
  %stagger_offset = alloca [3 x double], align 16
  %data = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !54), !dbg !338
  call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !55), !dbg !338
  call void @llvm.dbg.value(metadata !{i8* %alias}, i64 0, metadata !56), !dbg !338
  %0 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 13), align 8, !dbg !339, !tbaa !340
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !71), !dbg !339
  %1 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 15), align 8, !dbg !339, !tbaa !340
  call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !73), !dbg !339
  %2 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 14), align 8, !dbg !339, !tbaa !340
  call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !117), !dbg !339
  call void @llvm.dbg.declare(metadata !{[30 x i8]* %header_fmt_string}, metadata !161), !dbg !343
  call void @llvm.dbg.declare(metadata !{[30 x i8]* %out_real_format}, metadata !165), !dbg !344
  call void @llvm.dbg.declare(metadata !{[30 x i8]* %time_fmt_string}, metadata !166), !dbg !345
  call void @llvm.dbg.declare(metadata !{[30 x i8]* %data_fmt_string_int}, metadata !167), !dbg !346
  call void @llvm.dbg.declare(metadata !{[30 x i8]* %data_fmt_string_real}, metadata !168), !dbg !347
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %coord_index}, metadata !225), !dbg !348
  call void @llvm.dbg.declare(metadata !{[3 x double]* %coord_lower}, metadata !229), !dbg !349
  call void @llvm.dbg.declare(metadata !{double* %dummy}, metadata !231), !dbg !350
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %groupinfo}, metadata !234), !dbg !351
  %3 = bitcast %struct.ioAdvertisedFileDesc* %advertised_file to i8*, !dbg !352
  call void @llvm.lifetime.start(i64 40, i8* %3) #3, !dbg !352
  call void @llvm.dbg.declare(metadata !{%struct.ioAdvertisedFileDesc* %advertised_file}, metadata !247), !dbg !352
  %4 = getelementptr inbounds [128 x i8]* %buffer, i64 0, i64 0, !dbg !353
  call void @llvm.lifetime.start(i64 128, i8* %4) #3, !dbg !353
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buffer}, metadata !257), !dbg !353
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %hsize}, metadata !261), !dbg !354
  call void @llvm.dbg.declare(metadata !{[3 x double*]* %coord_data}, metadata !262), !dbg !355
  call void @llvm.dbg.declare(metadata !{[3 x double]* %stagger_offset}, metadata !264), !dbg !355
  call void @llvm.dbg.declare(metadata !{i8** %data}, metadata !265), !dbg !356
  call void @llvm.dbg.value(metadata !357, i64 0, metadata !169), !dbg !358
  call void @llvm.dbg.value(metadata !359, i64 0, metadata !233), !dbg !360
  call void @llvm.dbg.value(metadata !359, i64 0, metadata !232), !dbg !360
  %call = call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #7, !dbg !361
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !122), !dbg !361
  %call1 = call i32 @CCTK_GroupData(i32 %call, %struct.cGroup* %groupinfo) #7, !dbg !362
  %call2 = call i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %call) #7, !dbg !363
  %tobool = icmp eq i32 %call2, 0, !dbg !363
  br i1 %tobool, label %if.then, label %if.end, !dbg !363

if.then:                                          ; preds = %entry
  %call3 = call i8* @CCTK_FullName(i32 %vindex) #7, !dbg !364
  call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !233), !dbg !364
  %call4 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 171, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), i8* %call3) #7, !dbg !366
  call void @free(i8* %call3) #7, !dbg !367
  br label %cleanup, !dbg !368

if.end:                                           ; preds = %entry
  %call5 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !369
  %arraydecay = getelementptr inbounds [30 x i8]* %header_fmt_string, i64 0, i64 0, !dbg !370
  %call6 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i8* %1) #7, !dbg !370
  %arraydecay7 = getelementptr inbounds [30 x i8]* %out_real_format, i64 0, i64 0, !dbg !371
  %call8 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay7, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* %1) #7, !dbg !371
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !123), !dbg !372
  %call9 = call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !373
  %tobool10 = icmp eq i32 %call9, 0, !dbg !373
  br i1 %tobool10, label %if.end.if.end23_crit_edge, label %if.then11, !dbg !373

if.end.if.end23_crit_edge:                        ; preds = %if.end
  %arraydecay24.pre = getelementptr inbounds [30 x i8]* %data_fmt_string_int, i64 0, i64 0, !dbg !374
  %arraydecay26.pre = getelementptr inbounds [30 x i8]* %data_fmt_string_real, i64 0, i64 0, !dbg !375
  br label %if.end23, !dbg !373

if.then11:                                        ; preds = %if.end
  %arraydecay12 = getelementptr inbounds [30 x i8]* %time_fmt_string, i64 0, i64 0, !dbg !376
  %call13 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay12, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i8* %1) #7, !dbg !376
  %arraydecay14 = getelementptr inbounds [30 x i8]* %data_fmt_string_int, i64 0, i64 0, !dbg !378
  %cctk_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !378
  %5 = load double* %cctk_time, align 8, !dbg !378, !tbaa !379
  %call16 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay14, i8* %arraydecay12, double %5) #7, !dbg !378
  %arraydecay17 = getelementptr inbounds [30 x i8]* %data_fmt_string_real, i64 0, i64 0, !dbg !380
  %6 = load double* %cctk_time, align 8, !dbg !380, !tbaa !379
  %call20 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay17, i8* %arraydecay12, double %6) #7, !dbg !380
  %call22 = call i64 @strlen(i8* %arraydecay14) #8, !dbg !381
  %sext = shl i64 %call22, 32, !dbg !382
  %phitmp = ashr exact i64 %sext, 32, !dbg !382
  br label %if.end23, !dbg !382

if.end23:                                         ; preds = %if.end.if.end23_crit_edge, %if.then11
  %arraydecay26.pre-phi = phi i8* [ %arraydecay26.pre, %if.end.if.end23_crit_edge ], [ %arraydecay17, %if.then11 ], !dbg !375
  %arraydecay24.pre-phi = phi i8* [ %arraydecay24.pre, %if.end.if.end23_crit_edge ], [ %arraydecay14, %if.then11 ], !dbg !374
  %dir.0 = phi i64 [ 0, %if.end.if.end23_crit_edge ], [ %phitmp, %if.then11 ]
  %add.ptr = getelementptr inbounds [30 x i8]* %data_fmt_string_int, i64 0, i64 %dir.0, !dbg !374
  %call25 = call i32 (i8*, i8*, ...)* @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([21 x i8]* @.str7, i64 0, i64 0), i8* %1, i8* %1) #7, !dbg !374
  %add.ptr28 = getelementptr inbounds [30 x i8]* %data_fmt_string_real, i64 0, i64 %dir.0, !dbg !375
  %call29 = call i32 (i8*, i8*, ...)* @sprintf(i8* %add.ptr28, i8* getelementptr inbounds ([23 x i8]* @.str8, i64 0, i64 0), i8* %1, i8* %1, i8* %1, i8* %1) #7, !dbg !375
  %grouptype = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 0, !dbg !383
  %7 = load i32* %grouptype, align 4, !dbg !383, !tbaa !384
  %cmp = icmp eq i32 %7, 2, !dbg !383
  br i1 %cmp, label %for.body, label %if.end47, !dbg !383

for.body:                                         ; preds = %if.end23, %for.body
  %indvars.iv1969 = phi i64 [ %indvars.iv.next1970, %for.body ], [ 0, %if.end23 ]
  %have_coords.01933 = phi i32 [ %and, %for.body ], [ 1, %if.end23 ]
  %arrayidx = getelementptr inbounds [3 x double]* %coord_lower, i64 0, i64 %indvars.iv1969, !dbg !385
  %indvars.iv.next1970 = add i64 %indvars.iv1969, 1, !dbg !389
  %8 = trunc i64 %indvars.iv.next1970 to i32, !dbg !385
  %call34 = call i32 @CCTK_CoordRange(%struct.cGH* %GH, double* %arrayidx, double* %dummy, i32 %8, i8* null, i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !385
  %call36 = call i32 @CCTK_CoordIndex(i32 %8, i8* null, i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !390
  %arrayidx38 = getelementptr inbounds [3 x i32]* %coord_index, i64 0, i64 %indvars.iv1969, !dbg !390
  store i32 %call36, i32* %arrayidx38, align 4, !dbg !390, !tbaa !384
  %call36.lobit = lshr i32 %call36, 31, !dbg !391
  %call36.lobit.not = xor i32 %call36.lobit, 1, !dbg !391
  %and = and i32 %call36.lobit.not, %have_coords.01933, !dbg !391
  call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !124), !dbg !391
  %exitcond1972 = icmp eq i32 %8, 3, !dbg !389
  br i1 %exitcond1972, label %for.end, label %for.body, !dbg !389

for.end:                                          ; preds = %for.body
  %tobool43 = icmp eq i32 %and, 0, !dbg !392
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !392

if.then44:                                        ; preds = %for.end
  %call45 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 209, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !393
  br label %if.end47, !dbg !395

if.end47:                                         ; preds = %if.end23, %for.end, %if.then44
  %have_coords.1 = phi i32 [ %and, %for.end ], [ 0, %if.then44 ], [ 0, %if.end23 ]
  %9 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !396, !tbaa !340
  %call48 = call i32 %9(%struct.cGH* %GH) #7, !dbg !396
  call void @llvm.dbg.value(metadata !{i32 %call48}, i64 0, metadata !121), !dbg !396
  %cmp49 = icmp eq i32 %call48, 0, !dbg !397
  br i1 %cmp49, label %if.then51, label %if.end126, !dbg !397

if.then51:                                        ; preds = %if.end47
  %fileList_3D = getelementptr inbounds i8* %call5, i64 104, !dbg !398
  %10 = bitcast i8* %fileList_3D to %struct.PNamedData**, !dbg !398
  %11 = load %struct.PNamedData** %10, align 8, !dbg !398, !tbaa !340
  %call52 = call i8* @GetNamedData(%struct.PNamedData* %11, i8* %alias) #7, !dbg !398
  %12 = bitcast i8* %call52 to %struct._IO_FILE**, !dbg !398
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE** %12}, i64 0, metadata !169), !dbg !398
  %cmp53 = icmp eq i8* %call52, null, !dbg !400
  br i1 %cmp53, label %if.then55, label %if.end123, !dbg !400

if.then55:                                        ; preds = %if.then51
  %call56 = call noalias i8* @malloc(i64 8) #7, !dbg !401
  %13 = bitcast i8* %call56 to %struct._IO_FILE**, !dbg !401
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE** %13}, i64 0, metadata !169), !dbg !401
  %outdir3D57 = getelementptr inbounds i8* %call5, i64 56, !dbg !403
  %14 = bitcast i8* %outdir3D57 to i8**, !dbg !403
  %15 = load i8** %14, align 8, !dbg !403, !tbaa !340
  %call58 = call i64 @strlen(i8* %15) #8, !dbg !403
  %call59 = call i64 @strlen(i8* %alias) #8, !dbg !403
  %add60 = add i64 %call58, 9, !dbg !403
  %add61 = add i64 %add60, %call59, !dbg !403
  %call62 = call noalias i8* @malloc(i64 %add61) #7, !dbg !403
  call void @llvm.dbg.value(metadata !{i8* %call62}, i64 0, metadata !232), !dbg !403
  %call63 = call i8* @CCTK_FullName(i32 %vindex) #7, !dbg !404
  call void @llvm.dbg.value(metadata !{i8* %call63}, i64 0, metadata !233), !dbg !404
  %16 = load i8** %14, align 8, !dbg !405, !tbaa !340
  %call65 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #8, !dbg !405
  %tobool66 = icmp eq i32 %call65, 0, !dbg !405
  br i1 %tobool66, label %if.else70, label %if.then67, !dbg !405

if.then67:                                        ; preds = %if.then55
  %call69 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call62, i8* getelementptr inbounds ([13 x i8]* @.str12, i64 0, i64 0), i8* %16, i8* %alias) #7, !dbg !406
  br label %if.end72, !dbg !408

if.else70:                                        ; preds = %if.then55
  %call71 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call62, i8* getelementptr inbounds ([10 x i8]* @.str13, i64 0, i64 0), i8* %alias) #7, !dbg !409
  br label %if.end72

if.end72:                                         ; preds = %if.else70, %if.then67
  store %struct._IO_FILE* null, %struct._IO_FILE** %13, align 8, !dbg !411, !tbaa !340
  %call73 = call i32 @IOUtil_RestartFromRecovery(%struct.cGH* %GH) #7, !dbg !412
  %tobool74 = icmp eq i32 %call73, 0, !dbg !412
  br i1 %tobool74, label %if.end77thread-pre-split, label %if.then75, !dbg !412

if.then75:                                        ; preds = %if.end72
  %call76 = call %struct._IO_FILE* @fopen(i8* %call62, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !413
  store %struct._IO_FILE* %call76, %struct._IO_FILE** %13, align 8, !dbg !413, !tbaa !340
  br label %if.end77, !dbg !415

if.end77thread-pre-split:                         ; preds = %if.end72
  %.pr = load %struct._IO_FILE** %13, align 8, !dbg !416, !tbaa !340
  br label %if.end77

if.end77:                                         ; preds = %if.end77thread-pre-split, %if.then75
  %.pr1660 = phi %struct._IO_FILE* [ %.pr, %if.end77thread-pre-split ], [ %call76, %if.then75 ], !dbg !416
  %tobool78 = icmp eq %struct._IO_FILE* %.pr1660, null, !dbg !416
  br i1 %tobool78, label %if.end81, label %if.end85, !dbg !416

if.end81:                                         ; preds = %if.end77
  %call80 = call %struct._IO_FILE* @fopen(i8* %call62, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !417
  store %struct._IO_FILE* %call80, %struct._IO_FILE** %13, align 8, !dbg !417, !tbaa !340
  %tobool82 = icmp eq %struct._IO_FILE* %call80, null, !dbg !419
  br i1 %tobool82, label %if.then83, label %if.end85, !dbg !419

if.then83:                                        ; preds = %if.end81
  %call84 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 261, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str16, i64 0, i64 0), i8* %call62) #7, !dbg !420
  br label %cleanup, !dbg !422

if.end85:                                         ; preds = %if.end77, %if.end81
  %slice = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 3, !dbg !423
  store i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8** %slice, align 8, !dbg !423, !tbaa !340
  %thorn = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 0, !dbg !424
  store i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8** %thorn, align 8, !dbg !424, !tbaa !340
  %varname = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 1, !dbg !425
  store i8* %call63, i8** %varname, align 8, !dbg !425, !tbaa !340
  %description = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 4, !dbg !426
  store i8* getelementptr inbounds ([35 x i8]* @.str18, i64 0, i64 0), i8** %description, align 8, !dbg !426, !tbaa !340
  %mimetype = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 2, !dbg !427
  store i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8** %mimetype, align 8, !dbg !427, !tbaa !340
  %call86 = call i32 @IOUtil_AdvertiseFile(%struct.cGH* %GH, i8* %call62, %struct.ioAdvertisedFileDesc* %advertised_file) #7, !dbg !428
  %call87 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([19 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !429
  %tobool88 = icmp eq i32 %call87, 0, !dbg !429
  br i1 %tobool88, label %lor.lhs.false, label %if.then91, !dbg !429

lor.lhs.false:                                    ; preds = %if.end85
  %call89 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #7, !dbg !430
  %tobool90 = icmp eq i32 %call89, 0, !dbg !430
  br i1 %tobool90, label %if.end97, label %if.then91, !dbg !430

if.then91:                                        ; preds = %lor.lhs.false, %if.end85
  store i8 0, i8* %4, align 16, !dbg !431, !tbaa !341
  %call94 = call i32 @CCTK_ParameterFilename(i32 128, i8* %4) #7, !dbg !433
  %17 = load %struct._IO_FILE** %13, align 8, !dbg !434, !tbaa !340
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([20 x i8]* @.str22, i64 0, i64 0), i8* %4) #7, !dbg !434
  br label %if.end97, !dbg !435

if.end97:                                         ; preds = %lor.lhs.false, %if.then91
  %call98 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([14 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !436
  %tobool99 = icmp eq i32 %call98, 0, !dbg !436
  br i1 %tobool99, label %lor.lhs.false100, label %if.then103, !dbg !436

lor.lhs.false100:                                 ; preds = %if.end97
  %call101 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #7, !dbg !437
  %tobool102 = icmp eq i32 %call101, 0, !dbg !437
  br i1 %tobool102, label %if.end113, label %if.then103, !dbg !437

if.then103:                                       ; preds = %lor.lhs.false100, %if.end97
  store i8 0, i8* %4, align 16, !dbg !438, !tbaa !341
  %call106 = call i32 @Util_CurrentDate(i32 128, i8* %4) #7, !dbg !440
  %18 = load %struct._IO_FILE** %13, align 8, !dbg !441, !tbaa !340
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([13 x i8]* @.str24, i64 0, i64 0), i8* %4) #7, !dbg !441
  %call110 = call i32 @Util_CurrentTime(i32 128, i8* %4) #7, !dbg !442
  %19 = load %struct._IO_FILE** %13, align 8, !dbg !443, !tbaa !340
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8]* @.str25, i64 0, i64 0), i8* %4) #7, !dbg !443
  br label %if.end113, !dbg !444

if.end113:                                        ; preds = %lor.lhs.false100, %if.then103
  %call114 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0)) #7, !dbg !445
  %tobool115 = icmp eq i32 %call114, 0, !dbg !445
  br i1 %tobool115, label %lor.lhs.false116, label %if.then119, !dbg !445

lor.lhs.false116:                                 ; preds = %if.end113
  %call117 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #7, !dbg !446
  %tobool118 = icmp eq i32 %call117, 0, !dbg !446
  br i1 %tobool118, label %if.end123, label %if.then119, !dbg !446

if.then119:                                       ; preds = %lor.lhs.false116, %if.end113
  %20 = load %struct._IO_FILE** %13, align 8, !dbg !447, !tbaa !340
  %21 = load i8** %varname, align 8, !dbg !447, !tbaa !340
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([13 x i8]* @.str27, i64 0, i64 0), i8* %21) #7, !dbg !447
  br label %if.end123, !dbg !449

if.end123:                                        ; preds = %lor.lhs.false116, %if.then119, %if.then51
  %file.0 = phi %struct._IO_FILE** [ %13, %if.then119 ], [ %13, %lor.lhs.false116 ], [ %12, %if.then51 ]
  %filename.0 = phi i8* [ %call62, %if.then119 ], [ %call62, %lor.lhs.false116 ], [ null, %if.then51 ]
  %fullname.0 = phi i8* [ %call63, %if.then119 ], [ %call63, %lor.lhs.false116 ], [ null, %if.then51 ]
  %22 = bitcast %struct._IO_FILE** %file.0 to i8*, !dbg !450
  %call125 = call i32 @StoreNamedData(%struct.PNamedData** %10, i8* %alias, i8* %22) #7, !dbg !450
  call void @free(i8* %filename.0) #7, !dbg !451
  call void @free(i8* %fullname.0) #7, !dbg !452
  br label %if.end126, !dbg !453

if.end126:                                        ; preds = %if.end123, %if.end47
  %file.1 = phi %struct._IO_FILE** [ %file.0, %if.end123 ], [ null, %if.end47 ]
  %tobool127 = icmp ne i32 %have_coords.1, 0, !dbg !454
  br i1 %tobool127, label %if.then128, label %if.else159, !dbg !454

if.then128:                                       ; preds = %if.end126
  %arrayidx129 = getelementptr inbounds [3 x i32]* %coord_index, i64 0, i64 0, !dbg !455
  %23 = load i32* %arrayidx129, align 4, !dbg !455, !tbaa !384
  %arrayidx130 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !455
  %24 = bitcast [3 x double*]* %coord_data to i8**, !dbg !455
  %arraydecay131 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 0, !dbg !455
  %call132 = call i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 0, i32 %23, i32 0, i32 3, i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.origin, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.directions, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.lengths, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.downsamples, i64 0, i64 0), i8** %24, i32* %arraydecay131) #7, !dbg !455
  %cmp133 = icmp slt i32 %call132, 0, !dbg !455
  br i1 %cmp133, label %if.then135, label %if.end137, !dbg !455

if.then135:                                       ; preds = %if.then128
  %call136 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 315, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !457
  br label %cleanup, !dbg !459

if.end137:                                        ; preds = %if.then128
  %arrayidx138 = getelementptr inbounds [3 x i32]* %coord_index, i64 0, i64 1, !dbg !460
  %25 = load i32* %arrayidx138, align 4, !dbg !460, !tbaa !384
  %arrayidx139 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !460
  %26 = bitcast double** %arrayidx139 to i8**, !dbg !460
  %call141 = call i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 0, i32 %25, i32 0, i32 3, i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.origin, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.directions, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.lengths, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.downsamples, i64 0, i64 0), i8** %26, i32* %arraydecay131) #7, !dbg !460
  %cmp142 = icmp slt i32 %call141, 0, !dbg !460
  br i1 %cmp142, label %if.then144, label %if.end147, !dbg !460

if.then144:                                       ; preds = %if.end137
  %call145 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 325, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str29, i64 0, i64 0)) #7, !dbg !461
  %27 = load double** %arrayidx130, align 16, !dbg !463, !tbaa !340
  %28 = bitcast double* %27 to i8*, !dbg !463
  call void @free(i8* %28) #7, !dbg !463
  br label %cleanup, !dbg !464

if.end147:                                        ; preds = %if.end137
  %arrayidx148 = getelementptr inbounds [3 x i32]* %coord_index, i64 0, i64 2, !dbg !465
  %29 = load i32* %arrayidx148, align 4, !dbg !465, !tbaa !384
  %arrayidx149 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !465
  %30 = bitcast double** %arrayidx149 to i8**, !dbg !465
  %call151 = call i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 0, i32 %29, i32 0, i32 3, i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.origin, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.directions, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.lengths, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.downsamples, i64 0, i64 0), i8** %30, i32* %arraydecay131) #7, !dbg !465
  %cmp152 = icmp slt i32 %call151, 0, !dbg !465
  br i1 %cmp152, label %if.then154, label %if.end163, !dbg !465

if.then154:                                       ; preds = %if.end147
  %call155 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 336, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str30, i64 0, i64 0)) #7, !dbg !466
  %31 = load double** %arrayidx139, align 8, !dbg !468, !tbaa !340
  %32 = bitcast double* %31 to i8*, !dbg !468
  call void @free(i8* %32) #7, !dbg !468
  %33 = load double** %arrayidx130, align 16, !dbg !469, !tbaa !340
  %34 = bitcast double* %33 to i8*, !dbg !469
  call void @free(i8* %34) #7, !dbg !469
  br label %cleanup, !dbg !470

if.else159:                                       ; preds = %if.end126
  %arraydecay164.pre = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 0, !dbg !471
  %35 = bitcast [3 x double*]* %coord_data to i8*
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 24, i32 16, i1 false), !dbg !472
  br label %if.end163

if.end163:                                        ; preds = %if.end147, %if.else159
  %arraydecay164.pre-phi = phi i32* [ %arraydecay131, %if.end147 ], [ %arraydecay164.pre, %if.else159 ], !dbg !471
  %call165 = call i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 0, i32 %vindex, i32 0, i32 3, i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.origin, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.directions, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.lengths, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.downsamples, i64 0, i64 0), i8** %data, i32* %arraydecay164.pre-phi) #7, !dbg !471
  %cmp166 = icmp slt i32 %call165, 0, !dbg !471
  br i1 %cmp166, label %if.then168, label %if.end185, !dbg !471

if.then168:                                       ; preds = %if.end163
  %call169 = call i8* @CCTK_FullName(i32 %vindex) #7, !dbg !474
  call void @llvm.dbg.value(metadata !{i8* %call169}, i64 0, metadata !233), !dbg !474
  %call170 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 354, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str31, i64 0, i64 0), i8* %call169) #7, !dbg !476
  call void @free(i8* %call169) #7, !dbg !477
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !123), !dbg !478
  br label %for.body174, !dbg !478

for.body174:                                      ; preds = %for.inc182, %if.then168
  %indvars.iv = phi i64 [ 0, %if.then168 ], [ %indvars.iv.next, %for.inc182 ]
  %arrayidx176 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 %indvars.iv, !dbg !480
  %36 = load double** %arrayidx176, align 8, !dbg !480, !tbaa !340
  %tobool177 = icmp eq double* %36, null, !dbg !480
  br i1 %tobool177, label %for.inc182, label %if.then178, !dbg !480

if.then178:                                       ; preds = %for.body174
  %37 = bitcast double* %36 to i8*, !dbg !482
  call void @free(i8* %37) #7, !dbg !482
  br label %for.inc182, !dbg !484

for.inc182:                                       ; preds = %for.body174, %if.then178
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !478
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !478
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !478
  br i1 %exitcond, label %cleanup, label %for.body174, !dbg !478

if.end185:                                        ; preds = %if.end163
  br i1 %cmp49, label %for.cond189.preheader, label %cleanup, !dbg !485

for.cond189.preheader:                            ; preds = %if.end185
  %stagtype = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 3, !dbg !486
  %cctk_delta_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !486
  br label %for.body192, !dbg !489

for.body192:                                      ; preds = %for.body192, %for.cond189.preheader
  %indvars.iv1965 = phi i64 [ 0, %for.cond189.preheader ], [ %indvars.iv.next1966, %for.body192 ]
  %38 = load i32* %stagtype, align 4, !dbg !486, !tbaa !384
  %39 = trunc i64 %indvars.iv1965 to i32, !dbg !486
  %call193 = call i32 @CCTK_StaggerDirIndex(i32 %39, i32 %38) #7, !dbg !486
  %conv194 = sitofp i32 %call193 to double, !dbg !486
  %mul = fmul double %conv194, 5.000000e-01, !dbg !486
  %40 = load double** %cctk_delta_space, align 8, !dbg !486, !tbaa !340
  %arrayidx196 = getelementptr inbounds double* %40, i64 %indvars.iv1965, !dbg !486
  %41 = load double* %arrayidx196, align 8, !dbg !486, !tbaa !379
  %mul197 = fmul double %mul, %41, !dbg !486
  %arrayidx199 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 %indvars.iv1965, !dbg !486
  store double %mul197, double* %arrayidx199, align 8, !dbg !486, !tbaa !379
  %indvars.iv.next1966 = add i64 %indvars.iv1965, 1, !dbg !489
  %lftr.wideiv1967 = trunc i64 %indvars.iv.next1966 to i32, !dbg !489
  %exitcond1968 = icmp eq i32 %lftr.wideiv1967, 3, !dbg !489
  br i1 %exitcond1968, label %for.end202, label %for.body192, !dbg !489

for.end202:                                       ; preds = %for.body192
  %42 = load %struct._IO_FILE** %file.1, align 8, !dbg !490, !tbaa !340
  %cctk_time204 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !490
  %43 = load double* %cctk_time204, align 8, !dbg !490, !tbaa !379
  %call205 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* %arraydecay, double %43) #7, !dbg !490
  %vartype = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 1, !dbg !491
  %44 = load i32* %vartype, align 4, !dbg !491, !tbaa !384
  switch i32 %44, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb310
    i32 6, label %sw.bb419
    i32 10, label %sw.bb419
    i32 3, label %sw.bb546
    i32 4, label %sw.bb657
    i32 5, label %sw.bb766
    i32 7, label %sw.bb877
    i32 11, label %sw.bb877
    i32 8, label %sw.bb1008
    i32 12, label %sw.bb1008
    i32 9, label %sw.bb1135
    i32 13, label %sw.bb1135
  ], !dbg !491

sw.bb:                                            ; preds = %for.end202
  call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !265), !dbg !492
  %45 = load i8** %data, align 8, !dbg !492, !tbaa !340
  call void @llvm.dbg.value(metadata !{i8* %45}, i64 0, metadata !272), !dbg !492
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !271), !dbg !493
  %arrayidx209 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2, !dbg !493
  %46 = load i32* %arrayidx209, align 4, !dbg !493, !tbaa !384
  %cmp2101673 = icmp sgt i32 %46, 0, !dbg !493
  br i1 %tobool127, label %for.cond208.preheader, label %for.cond276.preheader, !dbg !492

for.cond276.preheader:                            ; preds = %sw.bb
  br i1 %cmp2101673, label %for.cond281.preheader.lr.ph, label %sw.epilog, !dbg !496

for.cond281.preheader.lr.ph:                      ; preds = %for.cond276.preheader
  %arrayidx282 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !499
  %.pre1974 = load i32* %arrayidx282, align 4, !dbg !499, !tbaa !384
  br label %for.cond281.preheader, !dbg !496

for.cond208.preheader:                            ; preds = %sw.bb
  %arrayidx214 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !502
  br i1 %cmp2101673, label %for.cond213.preheader.lr.ph, label %for.cond208.preheader.for.end248_crit_edge, !dbg !493

for.cond208.preheader.for.end248_crit_edge:       ; preds = %for.cond208.preheader
  %.pre2008 = load i32* %arrayidx214, align 4, !dbg !505, !tbaa !384
  %arrayidx254.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !505
  %arrayidx262.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !505
  %arrayidx271.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !505
  br label %for.end248, !dbg !493

for.cond213.preheader.lr.ph:                      ; preds = %for.cond208.preheader
  %arrayidx224 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !506
  %arrayidx225 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0, !dbg !506
  %arrayidx227 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !506
  %arrayidx229 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1, !dbg !506
  %arrayidx231 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !506
  %arrayidx233 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2, !dbg !506
  %.pre = load i32* %arrayidx214, align 4, !dbg !502, !tbaa !384
  br label %for.cond213.preheader, !dbg !493

for.cond213.preheader:                            ; preds = %for.cond213.preheader.lr.ph, %for.inc246
  %47 = phi i32 [ %46, %for.cond213.preheader.lr.ph ], [ %66, %for.inc246 ]
  %48 = phi i32 [ %.pre, %for.cond213.preheader.lr.ph ], [ %67, %for.inc246 ], !dbg !502
  %_typed_data.01675 = phi i8* [ %45, %for.cond213.preheader.lr.ph ], [ %_typed_data.1.lcssa, %for.inc246 ]
  %_k.01674 = phi i32 [ 0, %for.cond213.preheader.lr.ph ], [ %inc247, %for.inc246 ]
  %cmp2151668 = icmp sgt i32 %48, 0, !dbg !502
  br i1 %cmp2151668, label %for.cond218.preheader, label %for.inc246, !dbg !502

for.cond218.preheader:                            ; preds = %for.cond213.preheader, %for.end241
  %_typed_data.11670 = phi i8* [ %_typed_data.2.lcssa, %for.end241 ], [ %_typed_data.01675, %for.cond213.preheader ]
  %_j.01669 = phi i32 [ %inc244, %for.end241 ], [ 0, %for.cond213.preheader ]
  %49 = load i32* %arraydecay164.pre-phi, align 4, !dbg !510, !tbaa !384
  %cmp2201664 = icmp sgt i32 %49, 0, !dbg !510
  %50 = load %struct._IO_FILE** %file.1, align 8, !dbg !506, !tbaa !340
  br i1 %cmp2201664, label %for.body222, label %for.end241, !dbg !510

for.body222:                                      ; preds = %for.cond218.preheader, %for.body222
  %51 = phi %struct._IO_FILE* [ %64, %for.body222 ], [ %50, %for.cond218.preheader ]
  %_typed_data.21666 = phi i8* [ %incdec.ptr235, %for.body222 ], [ %_typed_data.11670, %for.cond218.preheader ]
  %_i.01665 = phi i32 [ %inc240, %for.body222 ], [ 0, %for.cond218.preheader ]
  %52 = load double** %arrayidx224, align 16, !dbg !506, !tbaa !340
  %incdec.ptr = getelementptr inbounds double* %52, i64 1, !dbg !506
  store double* %incdec.ptr, double** %arrayidx224, align 16, !dbg !506, !tbaa !340
  %53 = load double* %52, align 8, !dbg !506, !tbaa !379
  %54 = load double* %arrayidx225, align 16, !dbg !506, !tbaa !379
  %add226 = fadd double %53, %54, !dbg !506
  %55 = load double** %arrayidx227, align 8, !dbg !506, !tbaa !340
  %incdec.ptr228 = getelementptr inbounds double* %55, i64 1, !dbg !506
  store double* %incdec.ptr228, double** %arrayidx227, align 8, !dbg !506, !tbaa !340
  %56 = load double* %55, align 8, !dbg !506, !tbaa !379
  %57 = load double* %arrayidx229, align 8, !dbg !506, !tbaa !379
  %add230 = fadd double %56, %57, !dbg !506
  %58 = load double** %arrayidx231, align 16, !dbg !506, !tbaa !340
  %incdec.ptr232 = getelementptr inbounds double* %58, i64 1, !dbg !506
  store double* %incdec.ptr232, double** %arrayidx231, align 16, !dbg !506, !tbaa !340
  %59 = load double* %58, align 8, !dbg !506, !tbaa !379
  %60 = load double* %arrayidx233, align 16, !dbg !506, !tbaa !379
  %add234 = fadd double %59, %60, !dbg !506
  %incdec.ptr235 = getelementptr inbounds i8* %_typed_data.21666, i64 1, !dbg !506
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr235}, i64 0, metadata !272), !dbg !506
  %61 = load i8* %_typed_data.21666, align 1, !dbg !506, !tbaa !341
  %conv236 = zext i8 %61 to i32, !dbg !506
  %call237 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %51, i8* %arraydecay24.pre-phi, double %add226, double %add230, double %add234, i32 %conv236) #7, !dbg !506
  %62 = load %struct._IO_FILE** %file.1, align 8, !dbg !506, !tbaa !340
  %fputc1659 = call i32 @fputc(i32 10, %struct._IO_FILE* %62), !dbg !506
  %inc240 = add nsw i32 %_i.01665, 1, !dbg !510
  call void @llvm.dbg.value(metadata !{i32 %inc240}, i64 0, metadata !266), !dbg !510
  %63 = load i32* %arraydecay164.pre-phi, align 4, !dbg !510, !tbaa !384
  %cmp220 = icmp slt i32 %inc240, %63, !dbg !510
  %64 = load %struct._IO_FILE** %file.1, align 8, !dbg !506, !tbaa !340
  br i1 %cmp220, label %for.body222, label %for.end241, !dbg !510

for.end241:                                       ; preds = %for.body222, %for.cond218.preheader
  %.lcssa = phi %struct._IO_FILE* [ %50, %for.cond218.preheader ], [ %64, %for.body222 ]
  %_typed_data.2.lcssa = phi i8* [ %_typed_data.11670, %for.cond218.preheader ], [ %incdec.ptr235, %for.body222 ]
  %fputc1656 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa), !dbg !511
  %inc244 = add nsw i32 %_j.01669, 1, !dbg !502
  call void @llvm.dbg.value(metadata !{i32 %inc244}, i64 0, metadata !270), !dbg !502
  %65 = load i32* %arrayidx214, align 4, !dbg !502, !tbaa !384
  %cmp215 = icmp slt i32 %inc244, %65, !dbg !502
  br i1 %cmp215, label %for.cond218.preheader, label %for.cond213.for.inc246_crit_edge, !dbg !502

for.cond213.for.inc246_crit_edge:                 ; preds = %for.end241
  %.pre1973 = load i32* %arrayidx209, align 4, !dbg !493, !tbaa !384
  br label %for.inc246, !dbg !502

for.inc246:                                       ; preds = %for.cond213.for.inc246_crit_edge, %for.cond213.preheader
  %66 = phi i32 [ %.pre1973, %for.cond213.for.inc246_crit_edge ], [ %47, %for.cond213.preheader ], !dbg !493
  %67 = phi i32 [ %65, %for.cond213.for.inc246_crit_edge ], [ %48, %for.cond213.preheader ]
  %_typed_data.1.lcssa = phi i8* [ %_typed_data.2.lcssa, %for.cond213.for.inc246_crit_edge ], [ %_typed_data.01675, %for.cond213.preheader ]
  %inc247 = add nsw i32 %_k.01674, 1, !dbg !493
  call void @llvm.dbg.value(metadata !{i32 %inc247}, i64 0, metadata !271), !dbg !493
  %cmp210 = icmp slt i32 %inc247, %66, !dbg !493
  br i1 %cmp210, label %for.cond213.preheader, label %for.end248, !dbg !493

for.end248:                                       ; preds = %for.inc246, %for.cond208.preheader.for.end248_crit_edge
  %arrayidx271.pre-phi = phi double** [ %arrayidx271.pre, %for.cond208.preheader.for.end248_crit_edge ], [ %arrayidx231, %for.inc246 ], !dbg !505
  %arrayidx262.pre-phi = phi double** [ %arrayidx262.pre, %for.cond208.preheader.for.end248_crit_edge ], [ %arrayidx227, %for.inc246 ], !dbg !505
  %arrayidx254.pre-phi = phi double** [ %arrayidx254.pre, %for.cond208.preheader.for.end248_crit_edge ], [ %arrayidx224, %for.inc246 ], !dbg !505
  %68 = phi i32 [ %.pre2008, %for.cond208.preheader.for.end248_crit_edge ], [ %67, %for.inc246 ]
  %69 = phi i32 [ %46, %for.cond208.preheader.for.end248_crit_edge ], [ %66, %for.inc246 ]
  %70 = load i32* %arraydecay164.pre-phi, align 4, !dbg !505, !tbaa !384
  %mul251 = mul i32 %70, %69, !dbg !505
  %mul253 = mul i32 %mul251, %68, !dbg !505
  %71 = load double** %arrayidx254.pre-phi, align 16, !dbg !505, !tbaa !340
  %idx.ext255 = sext i32 %mul253 to i64, !dbg !505
  %idx.neg = sub i64 0, %idx.ext255, !dbg !505
  %add.ptr256 = getelementptr inbounds double* %71, i64 %idx.neg, !dbg !505
  store double* %add.ptr256, double** %arrayidx254.pre-phi, align 16, !dbg !505, !tbaa !340
  %mul259 = mul nsw i32 %68, %70, !dbg !505
  %mul261 = mul nsw i32 %mul259, %69, !dbg !505
  %72 = load double** %arrayidx262.pre-phi, align 8, !dbg !505, !tbaa !340
  %idx.ext263 = sext i32 %mul261 to i64, !dbg !505
  %idx.neg264 = sub i64 0, %idx.ext263, !dbg !505
  %add.ptr265 = getelementptr inbounds double* %72, i64 %idx.neg264, !dbg !505
  store double* %add.ptr265, double** %arrayidx262.pre-phi, align 8, !dbg !505, !tbaa !340
  %73 = load double** %arrayidx271.pre-phi, align 16, !dbg !505, !tbaa !340
  %add.ptr274 = getelementptr inbounds double* %73, i64 %idx.neg264, !dbg !505
  store double* %add.ptr274, double** %arrayidx271.pre-phi, align 16, !dbg !505, !tbaa !340
  br label %sw.epilog, !dbg !505

for.cond281.preheader:                            ; preds = %for.cond281.preheader.lr.ph, %for.inc306
  %74 = phi i32 [ %46, %for.cond281.preheader.lr.ph ], [ %84, %for.inc306 ]
  %75 = phi i32 [ %.pre1974, %for.cond281.preheader.lr.ph ], [ %85, %for.inc306 ], !dbg !499
  %_typed_data.31690 = phi i8* [ %45, %for.cond281.preheader.lr.ph ], [ %_typed_data.4.lcssa, %for.inc306 ]
  %_k.11689 = phi i32 [ 0, %for.cond281.preheader.lr.ph ], [ %inc307, %for.inc306 ]
  %cmp2831684 = icmp sgt i32 %75, 0, !dbg !499
  br i1 %cmp2831684, label %for.cond286.preheader.lr.ph, label %for.inc306, !dbg !499

for.cond286.preheader.lr.ph:                      ; preds = %for.cond281.preheader
  %conv294 = sitofp i32 %_k.11689 to double, !dbg !512
  br label %for.cond286.preheader, !dbg !499

for.cond286.preheader:                            ; preds = %for.cond286.preheader.lr.ph, %for.end301
  %_typed_data.41686 = phi i8* [ %_typed_data.31690, %for.cond286.preheader.lr.ph ], [ %_typed_data.5.lcssa, %for.end301 ]
  %_j.11685 = phi i32 [ 0, %for.cond286.preheader.lr.ph ], [ %inc304, %for.end301 ]
  %76 = load i32* %arraydecay164.pre-phi, align 4, !dbg !516, !tbaa !384
  %cmp2881679 = icmp sgt i32 %76, 0, !dbg !516
  %77 = load %struct._IO_FILE** %file.1, align 8, !dbg !512, !tbaa !340
  br i1 %cmp2881679, label %for.body290.lr.ph, label %for.end301, !dbg !516

for.body290.lr.ph:                                ; preds = %for.cond286.preheader
  %conv293 = sitofp i32 %_j.11685 to double, !dbg !512
  br label %for.body290, !dbg !516

for.body290:                                      ; preds = %for.body290.lr.ph, %for.body290
  %78 = phi %struct._IO_FILE* [ %77, %for.body290.lr.ph ], [ %82, %for.body290 ]
  %_typed_data.51681 = phi i8* [ %_typed_data.41686, %for.body290.lr.ph ], [ %incdec.ptr295, %for.body290 ]
  %_i.11680 = phi i32 [ 0, %for.body290.lr.ph ], [ %inc300, %for.body290 ]
  %conv292 = sitofp i32 %_i.11680 to double, !dbg !512
  %incdec.ptr295 = getelementptr inbounds i8* %_typed_data.51681, i64 1, !dbg !512
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr295}, i64 0, metadata !272), !dbg !512
  %79 = load i8* %_typed_data.51681, align 1, !dbg !512, !tbaa !341
  %conv296 = zext i8 %79 to i32, !dbg !512
  %call297 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %78, i8* %arraydecay24.pre-phi, double %conv292, double %conv293, double %conv294, i32 %conv296) #7, !dbg !512
  %80 = load %struct._IO_FILE** %file.1, align 8, !dbg !512, !tbaa !340
  %fputc1653 = call i32 @fputc(i32 10, %struct._IO_FILE* %80), !dbg !512
  %inc300 = add nsw i32 %_i.11680, 1, !dbg !516
  call void @llvm.dbg.value(metadata !{i32 %inc300}, i64 0, metadata !266), !dbg !516
  %81 = load i32* %arraydecay164.pre-phi, align 4, !dbg !516, !tbaa !384
  %cmp288 = icmp slt i32 %inc300, %81, !dbg !516
  %82 = load %struct._IO_FILE** %file.1, align 8, !dbg !512, !tbaa !340
  br i1 %cmp288, label %for.body290, label %for.end301, !dbg !516

for.end301:                                       ; preds = %for.body290, %for.cond286.preheader
  %.lcssa1678 = phi %struct._IO_FILE* [ %77, %for.cond286.preheader ], [ %82, %for.body290 ]
  %_typed_data.5.lcssa = phi i8* [ %_typed_data.41686, %for.cond286.preheader ], [ %incdec.ptr295, %for.body290 ]
  %fputc1650 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1678), !dbg !517
  %inc304 = add nsw i32 %_j.11685, 1, !dbg !499
  call void @llvm.dbg.value(metadata !{i32 %inc304}, i64 0, metadata !270), !dbg !499
  %83 = load i32* %arrayidx282, align 4, !dbg !499, !tbaa !384
  %cmp283 = icmp slt i32 %inc304, %83, !dbg !499
  br i1 %cmp283, label %for.cond286.preheader, label %for.cond281.for.inc306_crit_edge, !dbg !499

for.cond281.for.inc306_crit_edge:                 ; preds = %for.end301
  %.pre1975 = load i32* %arrayidx209, align 4, !dbg !496, !tbaa !384
  br label %for.inc306, !dbg !499

for.inc306:                                       ; preds = %for.cond281.for.inc306_crit_edge, %for.cond281.preheader
  %84 = phi i32 [ %.pre1975, %for.cond281.for.inc306_crit_edge ], [ %74, %for.cond281.preheader ], !dbg !496
  %85 = phi i32 [ %83, %for.cond281.for.inc306_crit_edge ], [ %75, %for.cond281.preheader ]
  %_typed_data.4.lcssa = phi i8* [ %_typed_data.5.lcssa, %for.cond281.for.inc306_crit_edge ], [ %_typed_data.31690, %for.cond281.preheader ]
  %inc307 = add nsw i32 %_k.11689, 1, !dbg !496
  call void @llvm.dbg.value(metadata !{i32 %inc307}, i64 0, metadata !271), !dbg !496
  %cmp278 = icmp slt i32 %inc307, %84, !dbg !496
  br i1 %cmp278, label %for.cond281.preheader, label %sw.epilog, !dbg !496

sw.bb310:                                         ; preds = %for.end202
  call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !265), !dbg !518
  %86 = load i8** %data, align 8, !dbg !518, !tbaa !340
  %87 = bitcast i8* %86 to i32*, !dbg !518
  call void @llvm.dbg.value(metadata !{i32* %87}, i64 0, metadata !281), !dbg !518
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !280), !dbg !519
  %arrayidx318 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2, !dbg !519
  %88 = load i32* %arrayidx318, align 4, !dbg !519, !tbaa !384
  %cmp3191702 = icmp sgt i32 %88, 0, !dbg !519
  br i1 %tobool127, label %for.cond317.preheader, label %for.cond386.preheader, !dbg !518

for.cond386.preheader:                            ; preds = %sw.bb310
  br i1 %cmp3191702, label %for.cond391.preheader.lr.ph, label %sw.epilog, !dbg !522

for.cond391.preheader.lr.ph:                      ; preds = %for.cond386.preheader
  %arrayidx392 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !525
  %.pre1978 = load i32* %arrayidx392, align 4, !dbg !525, !tbaa !384
  br label %for.cond391.preheader, !dbg !522

for.cond317.preheader:                            ; preds = %sw.bb310
  %arrayidx323 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !528
  br i1 %cmp3191702, label %for.cond322.preheader.lr.ph, label %for.cond317.preheader.for.end357_crit_edge, !dbg !519

for.cond317.preheader.for.end357_crit_edge:       ; preds = %for.cond317.preheader
  %.pre2009 = load i32* %arrayidx323, align 4, !dbg !531, !tbaa !384
  %arrayidx363.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !531
  %arrayidx372.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !531
  %arrayidx381.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !531
  br label %for.end357, !dbg !519

for.cond322.preheader.lr.ph:                      ; preds = %for.cond317.preheader
  %arrayidx333 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !532
  %arrayidx335 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0, !dbg !532
  %arrayidx337 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !532
  %arrayidx339 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1, !dbg !532
  %arrayidx341 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !532
  %arrayidx343 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2, !dbg !532
  %.pre1976 = load i32* %arrayidx323, align 4, !dbg !528, !tbaa !384
  br label %for.cond322.preheader, !dbg !519

for.cond322.preheader:                            ; preds = %for.cond322.preheader.lr.ph, %for.inc355
  %89 = phi i32 [ %88, %for.cond322.preheader.lr.ph ], [ %108, %for.inc355 ]
  %90 = phi i32 [ %.pre1976, %for.cond322.preheader.lr.ph ], [ %109, %for.inc355 ], !dbg !528
  %_typed_data314.01704 = phi i32* [ %87, %for.cond322.preheader.lr.ph ], [ %_typed_data314.1.lcssa, %for.inc355 ]
  %_k313.01703 = phi i32 [ 0, %for.cond322.preheader.lr.ph ], [ %inc356, %for.inc355 ]
  %cmp3241697 = icmp sgt i32 %90, 0, !dbg !528
  br i1 %cmp3241697, label %for.cond327.preheader, label %for.inc355, !dbg !528

for.cond327.preheader:                            ; preds = %for.cond322.preheader, %for.end350
  %_typed_data314.11699 = phi i32* [ %_typed_data314.2.lcssa, %for.end350 ], [ %_typed_data314.01704, %for.cond322.preheader ]
  %_j312.01698 = phi i32 [ %inc353, %for.end350 ], [ 0, %for.cond322.preheader ]
  %91 = load i32* %arraydecay164.pre-phi, align 4, !dbg !536, !tbaa !384
  %cmp3291692 = icmp sgt i32 %91, 0, !dbg !536
  %92 = load %struct._IO_FILE** %file.1, align 8, !dbg !532, !tbaa !340
  br i1 %cmp3291692, label %for.body331, label %for.end350, !dbg !536

for.body331:                                      ; preds = %for.cond327.preheader, %for.body331
  %93 = phi %struct._IO_FILE* [ %106, %for.body331 ], [ %92, %for.cond327.preheader ]
  %_typed_data314.21694 = phi i32* [ %incdec.ptr345, %for.body331 ], [ %_typed_data314.11699, %for.cond327.preheader ]
  %_i311.01693 = phi i32 [ %inc349, %for.body331 ], [ 0, %for.cond327.preheader ]
  %94 = load double** %arrayidx333, align 16, !dbg !532, !tbaa !340
  %incdec.ptr334 = getelementptr inbounds double* %94, i64 1, !dbg !532
  store double* %incdec.ptr334, double** %arrayidx333, align 16, !dbg !532, !tbaa !340
  %95 = load double* %94, align 8, !dbg !532, !tbaa !379
  %96 = load double* %arrayidx335, align 16, !dbg !532, !tbaa !379
  %add336 = fadd double %95, %96, !dbg !532
  %97 = load double** %arrayidx337, align 8, !dbg !532, !tbaa !340
  %incdec.ptr338 = getelementptr inbounds double* %97, i64 1, !dbg !532
  store double* %incdec.ptr338, double** %arrayidx337, align 8, !dbg !532, !tbaa !340
  %98 = load double* %97, align 8, !dbg !532, !tbaa !379
  %99 = load double* %arrayidx339, align 8, !dbg !532, !tbaa !379
  %add340 = fadd double %98, %99, !dbg !532
  %100 = load double** %arrayidx341, align 16, !dbg !532, !tbaa !340
  %incdec.ptr342 = getelementptr inbounds double* %100, i64 1, !dbg !532
  store double* %incdec.ptr342, double** %arrayidx341, align 16, !dbg !532, !tbaa !340
  %101 = load double* %100, align 8, !dbg !532, !tbaa !379
  %102 = load double* %arrayidx343, align 16, !dbg !532, !tbaa !379
  %add344 = fadd double %101, %102, !dbg !532
  %incdec.ptr345 = getelementptr inbounds i32* %_typed_data314.21694, i64 1, !dbg !532
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr345}, i64 0, metadata !281), !dbg !532
  %103 = load i32* %_typed_data314.21694, align 4, !dbg !532, !tbaa !384
  %call346 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %93, i8* %arraydecay24.pre-phi, double %add336, double %add340, double %add344, i32 %103) #7, !dbg !532
  %104 = load %struct._IO_FILE** %file.1, align 8, !dbg !532, !tbaa !340
  %fputc1647 = call i32 @fputc(i32 10, %struct._IO_FILE* %104), !dbg !532
  %inc349 = add nsw i32 %_i311.01693, 1, !dbg !536
  call void @llvm.dbg.value(metadata !{i32 %inc349}, i64 0, metadata !277), !dbg !536
  %105 = load i32* %arraydecay164.pre-phi, align 4, !dbg !536, !tbaa !384
  %cmp329 = icmp slt i32 %inc349, %105, !dbg !536
  %106 = load %struct._IO_FILE** %file.1, align 8, !dbg !532, !tbaa !340
  br i1 %cmp329, label %for.body331, label %for.end350, !dbg !536

for.end350:                                       ; preds = %for.body331, %for.cond327.preheader
  %.lcssa1691 = phi %struct._IO_FILE* [ %92, %for.cond327.preheader ], [ %106, %for.body331 ]
  %_typed_data314.2.lcssa = phi i32* [ %_typed_data314.11699, %for.cond327.preheader ], [ %incdec.ptr345, %for.body331 ]
  %fputc1644 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1691), !dbg !537
  %inc353 = add nsw i32 %_j312.01698, 1, !dbg !528
  call void @llvm.dbg.value(metadata !{i32 %inc353}, i64 0, metadata !279), !dbg !528
  %107 = load i32* %arrayidx323, align 4, !dbg !528, !tbaa !384
  %cmp324 = icmp slt i32 %inc353, %107, !dbg !528
  br i1 %cmp324, label %for.cond327.preheader, label %for.cond322.for.inc355_crit_edge, !dbg !528

for.cond322.for.inc355_crit_edge:                 ; preds = %for.end350
  %.pre1977 = load i32* %arrayidx318, align 4, !dbg !519, !tbaa !384
  br label %for.inc355, !dbg !528

for.inc355:                                       ; preds = %for.cond322.for.inc355_crit_edge, %for.cond322.preheader
  %108 = phi i32 [ %.pre1977, %for.cond322.for.inc355_crit_edge ], [ %89, %for.cond322.preheader ], !dbg !519
  %109 = phi i32 [ %107, %for.cond322.for.inc355_crit_edge ], [ %90, %for.cond322.preheader ]
  %_typed_data314.1.lcssa = phi i32* [ %_typed_data314.2.lcssa, %for.cond322.for.inc355_crit_edge ], [ %_typed_data314.01704, %for.cond322.preheader ]
  %inc356 = add nsw i32 %_k313.01703, 1, !dbg !519
  call void @llvm.dbg.value(metadata !{i32 %inc356}, i64 0, metadata !280), !dbg !519
  %cmp319 = icmp slt i32 %inc356, %108, !dbg !519
  br i1 %cmp319, label %for.cond322.preheader, label %for.end357, !dbg !519

for.end357:                                       ; preds = %for.inc355, %for.cond317.preheader.for.end357_crit_edge
  %arrayidx381.pre-phi = phi double** [ %arrayidx381.pre, %for.cond317.preheader.for.end357_crit_edge ], [ %arrayidx341, %for.inc355 ], !dbg !531
  %arrayidx372.pre-phi = phi double** [ %arrayidx372.pre, %for.cond317.preheader.for.end357_crit_edge ], [ %arrayidx337, %for.inc355 ], !dbg !531
  %arrayidx363.pre-phi = phi double** [ %arrayidx363.pre, %for.cond317.preheader.for.end357_crit_edge ], [ %arrayidx333, %for.inc355 ], !dbg !531
  %110 = phi i32 [ %.pre2009, %for.cond317.preheader.for.end357_crit_edge ], [ %109, %for.inc355 ]
  %111 = phi i32 [ %88, %for.cond317.preheader.for.end357_crit_edge ], [ %108, %for.inc355 ]
  %112 = load i32* %arraydecay164.pre-phi, align 4, !dbg !531, !tbaa !384
  %mul360 = mul i32 %112, %111, !dbg !531
  %mul362 = mul i32 %mul360, %110, !dbg !531
  %113 = load double** %arrayidx363.pre-phi, align 16, !dbg !531, !tbaa !340
  %idx.ext364 = sext i32 %mul362 to i64, !dbg !531
  %idx.neg365 = sub i64 0, %idx.ext364, !dbg !531
  %add.ptr366 = getelementptr inbounds double* %113, i64 %idx.neg365, !dbg !531
  store double* %add.ptr366, double** %arrayidx363.pre-phi, align 16, !dbg !531, !tbaa !340
  %mul369 = mul nsw i32 %110, %112, !dbg !531
  %mul371 = mul nsw i32 %mul369, %111, !dbg !531
  %114 = load double** %arrayidx372.pre-phi, align 8, !dbg !531, !tbaa !340
  %idx.ext373 = sext i32 %mul371 to i64, !dbg !531
  %idx.neg374 = sub i64 0, %idx.ext373, !dbg !531
  %add.ptr375 = getelementptr inbounds double* %114, i64 %idx.neg374, !dbg !531
  store double* %add.ptr375, double** %arrayidx372.pre-phi, align 8, !dbg !531, !tbaa !340
  %115 = load double** %arrayidx381.pre-phi, align 16, !dbg !531, !tbaa !340
  %add.ptr384 = getelementptr inbounds double* %115, i64 %idx.neg374, !dbg !531
  store double* %add.ptr384, double** %arrayidx381.pre-phi, align 16, !dbg !531, !tbaa !340
  br label %sw.epilog, !dbg !531

for.cond391.preheader:                            ; preds = %for.cond391.preheader.lr.ph, %for.inc415
  %116 = phi i32 [ %88, %for.cond391.preheader.lr.ph ], [ %126, %for.inc415 ]
  %117 = phi i32 [ %.pre1978, %for.cond391.preheader.lr.ph ], [ %127, %for.inc415 ], !dbg !525
  %_typed_data314.31720 = phi i32* [ %87, %for.cond391.preheader.lr.ph ], [ %_typed_data314.4.lcssa, %for.inc415 ]
  %_k313.11719 = phi i32 [ 0, %for.cond391.preheader.lr.ph ], [ %inc416, %for.inc415 ]
  %cmp3931713 = icmp sgt i32 %117, 0, !dbg !525
  br i1 %cmp3931713, label %for.cond396.preheader.lr.ph, label %for.inc415, !dbg !525

for.cond396.preheader.lr.ph:                      ; preds = %for.cond391.preheader
  %conv404 = sitofp i32 %_k313.11719 to double, !dbg !538
  br label %for.cond396.preheader, !dbg !525

for.cond396.preheader:                            ; preds = %for.cond396.preheader.lr.ph, %for.end410
  %_typed_data314.41715 = phi i32* [ %_typed_data314.31720, %for.cond396.preheader.lr.ph ], [ %_typed_data314.5.lcssa, %for.end410 ]
  %_j312.11714 = phi i32 [ 0, %for.cond396.preheader.lr.ph ], [ %inc413, %for.end410 ]
  %118 = load i32* %arraydecay164.pre-phi, align 4, !dbg !542, !tbaa !384
  %cmp3981708 = icmp sgt i32 %118, 0, !dbg !542
  %119 = load %struct._IO_FILE** %file.1, align 8, !dbg !538, !tbaa !340
  br i1 %cmp3981708, label %for.body400.lr.ph, label %for.end410, !dbg !542

for.body400.lr.ph:                                ; preds = %for.cond396.preheader
  %conv403 = sitofp i32 %_j312.11714 to double, !dbg !538
  br label %for.body400, !dbg !542

for.body400:                                      ; preds = %for.body400.lr.ph, %for.body400
  %120 = phi %struct._IO_FILE* [ %119, %for.body400.lr.ph ], [ %124, %for.body400 ]
  %_typed_data314.51710 = phi i32* [ %_typed_data314.41715, %for.body400.lr.ph ], [ %incdec.ptr405, %for.body400 ]
  %_i311.11709 = phi i32 [ 0, %for.body400.lr.ph ], [ %inc409, %for.body400 ]
  %conv402 = sitofp i32 %_i311.11709 to double, !dbg !538
  %incdec.ptr405 = getelementptr inbounds i32* %_typed_data314.51710, i64 1, !dbg !538
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr405}, i64 0, metadata !281), !dbg !538
  %121 = load i32* %_typed_data314.51710, align 4, !dbg !538, !tbaa !384
  %call406 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %120, i8* %arraydecay24.pre-phi, double %conv402, double %conv403, double %conv404, i32 %121) #7, !dbg !538
  %122 = load %struct._IO_FILE** %file.1, align 8, !dbg !538, !tbaa !340
  %fputc1641 = call i32 @fputc(i32 10, %struct._IO_FILE* %122), !dbg !538
  %inc409 = add nsw i32 %_i311.11709, 1, !dbg !542
  call void @llvm.dbg.value(metadata !{i32 %inc409}, i64 0, metadata !277), !dbg !542
  %123 = load i32* %arraydecay164.pre-phi, align 4, !dbg !542, !tbaa !384
  %cmp398 = icmp slt i32 %inc409, %123, !dbg !542
  %124 = load %struct._IO_FILE** %file.1, align 8, !dbg !538, !tbaa !340
  br i1 %cmp398, label %for.body400, label %for.end410, !dbg !542

for.end410:                                       ; preds = %for.body400, %for.cond396.preheader
  %.lcssa1707 = phi %struct._IO_FILE* [ %119, %for.cond396.preheader ], [ %124, %for.body400 ]
  %_typed_data314.5.lcssa = phi i32* [ %_typed_data314.41715, %for.cond396.preheader ], [ %incdec.ptr405, %for.body400 ]
  %fputc1638 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1707), !dbg !543
  %inc413 = add nsw i32 %_j312.11714, 1, !dbg !525
  call void @llvm.dbg.value(metadata !{i32 %inc413}, i64 0, metadata !279), !dbg !525
  %125 = load i32* %arrayidx392, align 4, !dbg !525, !tbaa !384
  %cmp393 = icmp slt i32 %inc413, %125, !dbg !525
  br i1 %cmp393, label %for.cond396.preheader, label %for.cond391.for.inc415_crit_edge, !dbg !525

for.cond391.for.inc415_crit_edge:                 ; preds = %for.end410
  %.pre1979 = load i32* %arrayidx318, align 4, !dbg !522, !tbaa !384
  br label %for.inc415, !dbg !525

for.inc415:                                       ; preds = %for.cond391.for.inc415_crit_edge, %for.cond391.preheader
  %126 = phi i32 [ %.pre1979, %for.cond391.for.inc415_crit_edge ], [ %116, %for.cond391.preheader ], !dbg !522
  %127 = phi i32 [ %125, %for.cond391.for.inc415_crit_edge ], [ %117, %for.cond391.preheader ]
  %_typed_data314.4.lcssa = phi i32* [ %_typed_data314.5.lcssa, %for.cond391.for.inc415_crit_edge ], [ %_typed_data314.31720, %for.cond391.preheader ]
  %inc416 = add nsw i32 %_k313.11719, 1, !dbg !522
  call void @llvm.dbg.value(metadata !{i32 %inc416}, i64 0, metadata !280), !dbg !522
  %cmp388 = icmp slt i32 %inc416, %126, !dbg !522
  br i1 %cmp388, label %for.cond391.preheader, label %sw.epilog, !dbg !522

sw.bb419:                                         ; preds = %for.end202, %for.end202
  call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !265), !dbg !544
  %128 = load i8** %data, align 8, !dbg !544, !tbaa !340
  %129 = bitcast i8* %128 to double*, !dbg !544
  call void @llvm.dbg.value(metadata !{double* %129}, i64 0, metadata !287), !dbg !544
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !286), !dbg !545
  %arrayidx427 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2, !dbg !545
  %130 = load i32* %arrayidx427, align 4, !dbg !545, !tbaa !384
  %cmp4281732 = icmp sgt i32 %130, 0, !dbg !545
  br i1 %tobool127, label %for.cond426.preheader, label %for.cond504.preheader, !dbg !544

for.cond504.preheader:                            ; preds = %sw.bb419
  br i1 %cmp4281732, label %for.cond509.preheader.lr.ph, label %sw.epilog, !dbg !548

for.cond509.preheader.lr.ph:                      ; preds = %for.cond504.preheader
  %arrayidx510 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !551
  %.pre1982 = load i32* %arrayidx510, align 4, !dbg !551, !tbaa !384
  br label %for.cond509.preheader, !dbg !548

for.cond426.preheader:                            ; preds = %sw.bb419
  %arrayidx432 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !554
  br i1 %cmp4281732, label %for.cond431.preheader.lr.ph, label %for.cond426.preheader.for.end475_crit_edge, !dbg !545

for.cond426.preheader.for.end475_crit_edge:       ; preds = %for.cond426.preheader
  %.pre2010 = load i32* %arrayidx432, align 4, !dbg !557, !tbaa !384
  %arrayidx481.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !557
  %arrayidx490.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !557
  %arrayidx499.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !557
  br label %for.end475, !dbg !545

for.cond431.preheader.lr.ph:                      ; preds = %for.cond426.preheader
  %arrayidx442 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !558
  %arrayidx444 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0, !dbg !558
  %arrayidx446 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !558
  %arrayidx448 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1, !dbg !558
  %arrayidx450 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !558
  %arrayidx452 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2, !dbg !558
  %.pre1980 = load i32* %arrayidx432, align 4, !dbg !554, !tbaa !384
  br label %for.cond431.preheader, !dbg !545

for.cond431.preheader:                            ; preds = %for.cond431.preheader.lr.ph, %for.inc473
  %131 = phi i32 [ %130, %for.cond431.preheader.lr.ph ], [ %155, %for.inc473 ]
  %132 = phi i32 [ %.pre1980, %for.cond431.preheader.lr.ph ], [ %156, %for.inc473 ], !dbg !554
  %_typed_data423.01734 = phi double* [ %129, %for.cond431.preheader.lr.ph ], [ %_typed_data423.1.lcssa, %for.inc473 ]
  %_k422.01733 = phi i32 [ 0, %for.cond431.preheader.lr.ph ], [ %inc474, %for.inc473 ]
  %cmp4331727 = icmp sgt i32 %132, 0, !dbg !554
  br i1 %cmp4331727, label %for.cond436.preheader, label %for.inc473, !dbg !554

for.cond436.preheader:                            ; preds = %for.cond431.preheader, %for.end468
  %_typed_data423.11729 = phi double* [ %_typed_data423.2.lcssa, %for.end468 ], [ %_typed_data423.01734, %for.cond431.preheader ]
  %_j421.01728 = phi i32 [ %inc471, %for.end468 ], [ 0, %for.cond431.preheader ]
  %133 = load i32* %arraydecay164.pre-phi, align 4, !dbg !562, !tbaa !384
  %cmp4381722 = icmp sgt i32 %133, 0, !dbg !562
  %134 = load %struct._IO_FILE** %file.1, align 8, !dbg !558, !tbaa !340
  br i1 %cmp4381722, label %for.body440, label %for.end468, !dbg !562

for.body440:                                      ; preds = %for.cond436.preheader, %if.end464
  %135 = phi %struct._IO_FILE* [ %153, %if.end464 ], [ %134, %for.cond436.preheader ]
  %_typed_data423.21724 = phi double* [ %_typed_data423.3, %if.end464 ], [ %_typed_data423.11729, %for.cond436.preheader ]
  %_i420.01723 = phi i32 [ %inc467, %if.end464 ], [ 0, %for.cond436.preheader ]
  %136 = load double** %arrayidx442, align 16, !dbg !558, !tbaa !340
  %incdec.ptr443 = getelementptr inbounds double* %136, i64 1, !dbg !558
  store double* %incdec.ptr443, double** %arrayidx442, align 16, !dbg !558, !tbaa !340
  %137 = load double* %136, align 8, !dbg !558, !tbaa !379
  %138 = load double* %arrayidx444, align 16, !dbg !558, !tbaa !379
  %add445 = fadd double %137, %138, !dbg !558
  %139 = load double** %arrayidx446, align 8, !dbg !558, !tbaa !340
  %incdec.ptr447 = getelementptr inbounds double* %139, i64 1, !dbg !558
  store double* %incdec.ptr447, double** %arrayidx446, align 8, !dbg !558, !tbaa !340
  %140 = load double* %139, align 8, !dbg !558, !tbaa !379
  %141 = load double* %arrayidx448, align 8, !dbg !558, !tbaa !379
  %add449 = fadd double %140, %141, !dbg !558
  %142 = load double** %arrayidx450, align 16, !dbg !558, !tbaa !340
  %incdec.ptr451 = getelementptr inbounds double* %142, i64 1, !dbg !558
  store double* %incdec.ptr451, double** %arrayidx450, align 16, !dbg !558, !tbaa !340
  %143 = load double* %142, align 8, !dbg !558, !tbaa !379
  %144 = load double* %arrayidx452, align 16, !dbg !558, !tbaa !379
  %add453 = fadd double %143, %144, !dbg !558
  %incdec.ptr454 = getelementptr inbounds double* %_typed_data423.21724, i64 1, !dbg !558
  call void @llvm.dbg.value(metadata !{double* %incdec.ptr454}, i64 0, metadata !287), !dbg !558
  %145 = load double* %_typed_data423.21724, align 8, !dbg !558, !tbaa !379
  %call455 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %135, i8* %arraydecay26.pre-phi, double %add445, double %add449, double %add453, double %145) #7, !dbg !558
  %146 = load i32* %vartype, align 4, !dbg !558, !tbaa !384
  %cmp457 = icmp eq i32 %146, 10, !dbg !558
  br i1 %cmp457, label %if.then459, label %if.end464, !dbg !558

if.then459:                                       ; preds = %for.body440
  %147 = load %struct._IO_FILE** %file.1, align 8, !dbg !563, !tbaa !340
  %148 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %147), !dbg !563
  %149 = load %struct._IO_FILE** %file.1, align 8, !dbg !563, !tbaa !340
  %incdec.ptr462 = getelementptr inbounds double* %_typed_data423.21724, i64 2, !dbg !563
  call void @llvm.dbg.value(metadata !{double* %incdec.ptr462}, i64 0, metadata !287), !dbg !563
  %150 = load double* %incdec.ptr454, align 8, !dbg !563, !tbaa !379
  %call463 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %149, i8* %arraydecay7, double %150) #7, !dbg !563
  br label %if.end464, !dbg !563

if.end464:                                        ; preds = %if.then459, %for.body440
  %_typed_data423.3 = phi double* [ %incdec.ptr462, %if.then459 ], [ %incdec.ptr454, %for.body440 ]
  %151 = load %struct._IO_FILE** %file.1, align 8, !dbg !558, !tbaa !340
  %fputc1635 = call i32 @fputc(i32 10, %struct._IO_FILE* %151), !dbg !558
  %inc467 = add nsw i32 %_i420.01723, 1, !dbg !562
  call void @llvm.dbg.value(metadata !{i32 %inc467}, i64 0, metadata !283), !dbg !562
  %152 = load i32* %arraydecay164.pre-phi, align 4, !dbg !562, !tbaa !384
  %cmp438 = icmp slt i32 %inc467, %152, !dbg !562
  %153 = load %struct._IO_FILE** %file.1, align 8, !dbg !558, !tbaa !340
  br i1 %cmp438, label %for.body440, label %for.end468, !dbg !562

for.end468:                                       ; preds = %if.end464, %for.cond436.preheader
  %.lcssa1721 = phi %struct._IO_FILE* [ %134, %for.cond436.preheader ], [ %153, %if.end464 ]
  %_typed_data423.2.lcssa = phi double* [ %_typed_data423.11729, %for.cond436.preheader ], [ %_typed_data423.3, %if.end464 ]
  %fputc1632 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1721), !dbg !565
  %inc471 = add nsw i32 %_j421.01728, 1, !dbg !554
  call void @llvm.dbg.value(metadata !{i32 %inc471}, i64 0, metadata !285), !dbg !554
  %154 = load i32* %arrayidx432, align 4, !dbg !554, !tbaa !384
  %cmp433 = icmp slt i32 %inc471, %154, !dbg !554
  br i1 %cmp433, label %for.cond436.preheader, label %for.cond431.for.inc473_crit_edge, !dbg !554

for.cond431.for.inc473_crit_edge:                 ; preds = %for.end468
  %.pre1981 = load i32* %arrayidx427, align 4, !dbg !545, !tbaa !384
  br label %for.inc473, !dbg !554

for.inc473:                                       ; preds = %for.cond431.for.inc473_crit_edge, %for.cond431.preheader
  %155 = phi i32 [ %.pre1981, %for.cond431.for.inc473_crit_edge ], [ %131, %for.cond431.preheader ], !dbg !545
  %156 = phi i32 [ %154, %for.cond431.for.inc473_crit_edge ], [ %132, %for.cond431.preheader ]
  %_typed_data423.1.lcssa = phi double* [ %_typed_data423.2.lcssa, %for.cond431.for.inc473_crit_edge ], [ %_typed_data423.01734, %for.cond431.preheader ]
  %inc474 = add nsw i32 %_k422.01733, 1, !dbg !545
  call void @llvm.dbg.value(metadata !{i32 %inc474}, i64 0, metadata !286), !dbg !545
  %cmp428 = icmp slt i32 %inc474, %155, !dbg !545
  br i1 %cmp428, label %for.cond431.preheader, label %for.end475, !dbg !545

for.end475:                                       ; preds = %for.inc473, %for.cond426.preheader.for.end475_crit_edge
  %arrayidx499.pre-phi = phi double** [ %arrayidx499.pre, %for.cond426.preheader.for.end475_crit_edge ], [ %arrayidx450, %for.inc473 ], !dbg !557
  %arrayidx490.pre-phi = phi double** [ %arrayidx490.pre, %for.cond426.preheader.for.end475_crit_edge ], [ %arrayidx446, %for.inc473 ], !dbg !557
  %arrayidx481.pre-phi = phi double** [ %arrayidx481.pre, %for.cond426.preheader.for.end475_crit_edge ], [ %arrayidx442, %for.inc473 ], !dbg !557
  %157 = phi i32 [ %.pre2010, %for.cond426.preheader.for.end475_crit_edge ], [ %156, %for.inc473 ]
  %158 = phi i32 [ %130, %for.cond426.preheader.for.end475_crit_edge ], [ %155, %for.inc473 ]
  %159 = load i32* %arraydecay164.pre-phi, align 4, !dbg !557, !tbaa !384
  %mul478 = mul i32 %159, %158, !dbg !557
  %mul480 = mul i32 %mul478, %157, !dbg !557
  %160 = load double** %arrayidx481.pre-phi, align 16, !dbg !557, !tbaa !340
  %idx.ext482 = sext i32 %mul480 to i64, !dbg !557
  %idx.neg483 = sub i64 0, %idx.ext482, !dbg !557
  %add.ptr484 = getelementptr inbounds double* %160, i64 %idx.neg483, !dbg !557
  store double* %add.ptr484, double** %arrayidx481.pre-phi, align 16, !dbg !557, !tbaa !340
  %mul487 = mul nsw i32 %157, %159, !dbg !557
  %mul489 = mul nsw i32 %mul487, %158, !dbg !557
  %161 = load double** %arrayidx490.pre-phi, align 8, !dbg !557, !tbaa !340
  %idx.ext491 = sext i32 %mul489 to i64, !dbg !557
  %idx.neg492 = sub i64 0, %idx.ext491, !dbg !557
  %add.ptr493 = getelementptr inbounds double* %161, i64 %idx.neg492, !dbg !557
  store double* %add.ptr493, double** %arrayidx490.pre-phi, align 8, !dbg !557, !tbaa !340
  %162 = load double** %arrayidx499.pre-phi, align 16, !dbg !557, !tbaa !340
  %add.ptr502 = getelementptr inbounds double* %162, i64 %idx.neg492, !dbg !557
  store double* %add.ptr502, double** %arrayidx499.pre-phi, align 16, !dbg !557, !tbaa !340
  br label %sw.epilog, !dbg !557

for.cond509.preheader:                            ; preds = %for.cond509.preheader.lr.ph, %for.inc542
  %163 = phi i32 [ %130, %for.cond509.preheader.lr.ph ], [ %178, %for.inc542 ]
  %164 = phi i32 [ %.pre1982, %for.cond509.preheader.lr.ph ], [ %179, %for.inc542 ], !dbg !551
  %_typed_data423.41750 = phi double* [ %129, %for.cond509.preheader.lr.ph ], [ %_typed_data423.5.lcssa, %for.inc542 ]
  %_k422.11749 = phi i32 [ 0, %for.cond509.preheader.lr.ph ], [ %inc543, %for.inc542 ]
  %cmp5111743 = icmp sgt i32 %164, 0, !dbg !551
  br i1 %cmp5111743, label %for.cond514.preheader.lr.ph, label %for.inc542, !dbg !551

for.cond514.preheader.lr.ph:                      ; preds = %for.cond509.preheader
  %conv522 = sitofp i32 %_k422.11749 to double, !dbg !566
  br label %for.cond514.preheader, !dbg !551

for.cond514.preheader:                            ; preds = %for.cond514.preheader.lr.ph, %for.end537
  %_typed_data423.51745 = phi double* [ %_typed_data423.41750, %for.cond514.preheader.lr.ph ], [ %_typed_data423.6.lcssa, %for.end537 ]
  %_j421.11744 = phi i32 [ 0, %for.cond514.preheader.lr.ph ], [ %inc540, %for.end537 ]
  %165 = load i32* %arraydecay164.pre-phi, align 4, !dbg !570, !tbaa !384
  %cmp5161738 = icmp sgt i32 %165, 0, !dbg !570
  %166 = load %struct._IO_FILE** %file.1, align 8, !dbg !566, !tbaa !340
  br i1 %cmp5161738, label %for.body518.lr.ph, label %for.end537, !dbg !570

for.body518.lr.ph:                                ; preds = %for.cond514.preheader
  %conv521 = sitofp i32 %_j421.11744 to double, !dbg !566
  br label %for.body518, !dbg !570

for.body518:                                      ; preds = %for.body518.lr.ph, %if.end533
  %167 = phi %struct._IO_FILE* [ %166, %for.body518.lr.ph ], [ %176, %if.end533 ]
  %_typed_data423.61740 = phi double* [ %_typed_data423.51745, %for.body518.lr.ph ], [ %_typed_data423.7, %if.end533 ]
  %_i420.11739 = phi i32 [ 0, %for.body518.lr.ph ], [ %inc536, %if.end533 ]
  %conv520 = sitofp i32 %_i420.11739 to double, !dbg !566
  %incdec.ptr523 = getelementptr inbounds double* %_typed_data423.61740, i64 1, !dbg !566
  call void @llvm.dbg.value(metadata !{double* %incdec.ptr523}, i64 0, metadata !287), !dbg !566
  %168 = load double* %_typed_data423.61740, align 8, !dbg !566, !tbaa !379
  %call524 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %167, i8* %arraydecay26.pre-phi, double %conv520, double %conv521, double %conv522, double %168) #7, !dbg !566
  %169 = load i32* %vartype, align 4, !dbg !566, !tbaa !384
  %cmp526 = icmp eq i32 %169, 10, !dbg !566
  br i1 %cmp526, label %if.then528, label %if.end533, !dbg !566

if.then528:                                       ; preds = %for.body518
  %170 = load %struct._IO_FILE** %file.1, align 8, !dbg !571, !tbaa !340
  %171 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %170), !dbg !571
  %172 = load %struct._IO_FILE** %file.1, align 8, !dbg !571, !tbaa !340
  %incdec.ptr531 = getelementptr inbounds double* %_typed_data423.61740, i64 2, !dbg !571
  call void @llvm.dbg.value(metadata !{double* %incdec.ptr531}, i64 0, metadata !287), !dbg !571
  %173 = load double* %incdec.ptr523, align 8, !dbg !571, !tbaa !379
  %call532 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %172, i8* %arraydecay7, double %173) #7, !dbg !571
  br label %if.end533, !dbg !571

if.end533:                                        ; preds = %if.then528, %for.body518
  %_typed_data423.7 = phi double* [ %incdec.ptr531, %if.then528 ], [ %incdec.ptr523, %for.body518 ]
  %174 = load %struct._IO_FILE** %file.1, align 8, !dbg !566, !tbaa !340
  %fputc1629 = call i32 @fputc(i32 10, %struct._IO_FILE* %174), !dbg !566
  %inc536 = add nsw i32 %_i420.11739, 1, !dbg !570
  call void @llvm.dbg.value(metadata !{i32 %inc536}, i64 0, metadata !283), !dbg !570
  %175 = load i32* %arraydecay164.pre-phi, align 4, !dbg !570, !tbaa !384
  %cmp516 = icmp slt i32 %inc536, %175, !dbg !570
  %176 = load %struct._IO_FILE** %file.1, align 8, !dbg !566, !tbaa !340
  br i1 %cmp516, label %for.body518, label %for.end537, !dbg !570

for.end537:                                       ; preds = %if.end533, %for.cond514.preheader
  %.lcssa1737 = phi %struct._IO_FILE* [ %166, %for.cond514.preheader ], [ %176, %if.end533 ]
  %_typed_data423.6.lcssa = phi double* [ %_typed_data423.51745, %for.cond514.preheader ], [ %_typed_data423.7, %if.end533 ]
  %fputc1626 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1737), !dbg !573
  %inc540 = add nsw i32 %_j421.11744, 1, !dbg !551
  call void @llvm.dbg.value(metadata !{i32 %inc540}, i64 0, metadata !285), !dbg !551
  %177 = load i32* %arrayidx510, align 4, !dbg !551, !tbaa !384
  %cmp511 = icmp slt i32 %inc540, %177, !dbg !551
  br i1 %cmp511, label %for.cond514.preheader, label %for.cond509.for.inc542_crit_edge, !dbg !551

for.cond509.for.inc542_crit_edge:                 ; preds = %for.end537
  %.pre1983 = load i32* %arrayidx427, align 4, !dbg !548, !tbaa !384
  br label %for.inc542, !dbg !551

for.inc542:                                       ; preds = %for.cond509.for.inc542_crit_edge, %for.cond509.preheader
  %178 = phi i32 [ %.pre1983, %for.cond509.for.inc542_crit_edge ], [ %163, %for.cond509.preheader ], !dbg !548
  %179 = phi i32 [ %177, %for.cond509.for.inc542_crit_edge ], [ %164, %for.cond509.preheader ]
  %_typed_data423.5.lcssa = phi double* [ %_typed_data423.6.lcssa, %for.cond509.for.inc542_crit_edge ], [ %_typed_data423.41750, %for.cond509.preheader ]
  %inc543 = add nsw i32 %_k422.11749, 1, !dbg !548
  call void @llvm.dbg.value(metadata !{i32 %inc543}, i64 0, metadata !286), !dbg !548
  %cmp506 = icmp slt i32 %inc543, %178, !dbg !548
  br i1 %cmp506, label %for.cond509.preheader, label %sw.epilog, !dbg !548

sw.bb546:                                         ; preds = %for.end202
  call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !265), !dbg !574
  %180 = load i8** %data, align 8, !dbg !574, !tbaa !340
  %181 = bitcast i8* %180 to i16*, !dbg !574
  call void @llvm.dbg.value(metadata !{i16* %181}, i64 0, metadata !293), !dbg !574
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !292), !dbg !575
  %arrayidx554 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2, !dbg !575
  %182 = load i32* %arrayidx554, align 4, !dbg !575, !tbaa !384
  %cmp5551762 = icmp sgt i32 %182, 0, !dbg !575
  br i1 %tobool127, label %for.cond553.preheader, label %for.cond623.preheader, !dbg !574

for.cond623.preheader:                            ; preds = %sw.bb546
  br i1 %cmp5551762, label %for.cond628.preheader.lr.ph, label %sw.epilog, !dbg !578

for.cond628.preheader.lr.ph:                      ; preds = %for.cond623.preheader
  %arrayidx629 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !581
  %.pre1986 = load i32* %arrayidx629, align 4, !dbg !581, !tbaa !384
  br label %for.cond628.preheader, !dbg !578

for.cond553.preheader:                            ; preds = %sw.bb546
  %arrayidx559 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !584
  br i1 %cmp5551762, label %for.cond558.preheader.lr.ph, label %for.cond553.preheader.for.end594_crit_edge, !dbg !575

for.cond553.preheader.for.end594_crit_edge:       ; preds = %for.cond553.preheader
  %.pre2011 = load i32* %arrayidx559, align 4, !dbg !587, !tbaa !384
  %arrayidx600.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !587
  %arrayidx609.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !587
  %arrayidx618.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !587
  br label %for.end594, !dbg !575

for.cond558.preheader.lr.ph:                      ; preds = %for.cond553.preheader
  %arrayidx569 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !588
  %arrayidx571 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0, !dbg !588
  %arrayidx573 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !588
  %arrayidx575 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1, !dbg !588
  %arrayidx577 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !588
  %arrayidx579 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2, !dbg !588
  %.pre1984 = load i32* %arrayidx559, align 4, !dbg !584, !tbaa !384
  br label %for.cond558.preheader, !dbg !575

for.cond558.preheader:                            ; preds = %for.cond558.preheader.lr.ph, %for.inc592
  %183 = phi i32 [ %182, %for.cond558.preheader.lr.ph ], [ %202, %for.inc592 ]
  %184 = phi i32 [ %.pre1984, %for.cond558.preheader.lr.ph ], [ %203, %for.inc592 ], !dbg !584
  %_typed_data550.01764 = phi i16* [ %181, %for.cond558.preheader.lr.ph ], [ %_typed_data550.1.lcssa, %for.inc592 ]
  %_k549.01763 = phi i32 [ 0, %for.cond558.preheader.lr.ph ], [ %inc593, %for.inc592 ]
  %cmp5601757 = icmp sgt i32 %184, 0, !dbg !584
  br i1 %cmp5601757, label %for.cond563.preheader, label %for.inc592, !dbg !584

for.cond563.preheader:                            ; preds = %for.cond558.preheader, %for.end587
  %_typed_data550.11759 = phi i16* [ %_typed_data550.2.lcssa, %for.end587 ], [ %_typed_data550.01764, %for.cond558.preheader ]
  %_j548.01758 = phi i32 [ %inc590, %for.end587 ], [ 0, %for.cond558.preheader ]
  %185 = load i32* %arraydecay164.pre-phi, align 4, !dbg !592, !tbaa !384
  %cmp5651752 = icmp sgt i32 %185, 0, !dbg !592
  %186 = load %struct._IO_FILE** %file.1, align 8, !dbg !588, !tbaa !340
  br i1 %cmp5651752, label %for.body567, label %for.end587, !dbg !592

for.body567:                                      ; preds = %for.cond563.preheader, %for.body567
  %187 = phi %struct._IO_FILE* [ %200, %for.body567 ], [ %186, %for.cond563.preheader ]
  %_typed_data550.21754 = phi i16* [ %incdec.ptr581, %for.body567 ], [ %_typed_data550.11759, %for.cond563.preheader ]
  %_i547.01753 = phi i32 [ %inc586, %for.body567 ], [ 0, %for.cond563.preheader ]
  %188 = load double** %arrayidx569, align 16, !dbg !588, !tbaa !340
  %incdec.ptr570 = getelementptr inbounds double* %188, i64 1, !dbg !588
  store double* %incdec.ptr570, double** %arrayidx569, align 16, !dbg !588, !tbaa !340
  %189 = load double* %188, align 8, !dbg !588, !tbaa !379
  %190 = load double* %arrayidx571, align 16, !dbg !588, !tbaa !379
  %add572 = fadd double %189, %190, !dbg !588
  %191 = load double** %arrayidx573, align 8, !dbg !588, !tbaa !340
  %incdec.ptr574 = getelementptr inbounds double* %191, i64 1, !dbg !588
  store double* %incdec.ptr574, double** %arrayidx573, align 8, !dbg !588, !tbaa !340
  %192 = load double* %191, align 8, !dbg !588, !tbaa !379
  %193 = load double* %arrayidx575, align 8, !dbg !588, !tbaa !379
  %add576 = fadd double %192, %193, !dbg !588
  %194 = load double** %arrayidx577, align 16, !dbg !588, !tbaa !340
  %incdec.ptr578 = getelementptr inbounds double* %194, i64 1, !dbg !588
  store double* %incdec.ptr578, double** %arrayidx577, align 16, !dbg !588, !tbaa !340
  %195 = load double* %194, align 8, !dbg !588, !tbaa !379
  %196 = load double* %arrayidx579, align 16, !dbg !588, !tbaa !379
  %add580 = fadd double %195, %196, !dbg !588
  %incdec.ptr581 = getelementptr inbounds i16* %_typed_data550.21754, i64 1, !dbg !588
  call void @llvm.dbg.value(metadata !{i16* %incdec.ptr581}, i64 0, metadata !293), !dbg !588
  %197 = load i16* %_typed_data550.21754, align 2, !dbg !588, !tbaa !593
  %conv582 = sext i16 %197 to i32, !dbg !588
  %call583 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %187, i8* %arraydecay24.pre-phi, double %add572, double %add576, double %add580, i32 %conv582) #7, !dbg !588
  %198 = load %struct._IO_FILE** %file.1, align 8, !dbg !588, !tbaa !340
  %fputc1623 = call i32 @fputc(i32 10, %struct._IO_FILE* %198), !dbg !588
  %inc586 = add nsw i32 %_i547.01753, 1, !dbg !592
  call void @llvm.dbg.value(metadata !{i32 %inc586}, i64 0, metadata !289), !dbg !592
  %199 = load i32* %arraydecay164.pre-phi, align 4, !dbg !592, !tbaa !384
  %cmp565 = icmp slt i32 %inc586, %199, !dbg !592
  %200 = load %struct._IO_FILE** %file.1, align 8, !dbg !588, !tbaa !340
  br i1 %cmp565, label %for.body567, label %for.end587, !dbg !592

for.end587:                                       ; preds = %for.body567, %for.cond563.preheader
  %.lcssa1751 = phi %struct._IO_FILE* [ %186, %for.cond563.preheader ], [ %200, %for.body567 ]
  %_typed_data550.2.lcssa = phi i16* [ %_typed_data550.11759, %for.cond563.preheader ], [ %incdec.ptr581, %for.body567 ]
  %fputc1620 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1751), !dbg !594
  %inc590 = add nsw i32 %_j548.01758, 1, !dbg !584
  call void @llvm.dbg.value(metadata !{i32 %inc590}, i64 0, metadata !291), !dbg !584
  %201 = load i32* %arrayidx559, align 4, !dbg !584, !tbaa !384
  %cmp560 = icmp slt i32 %inc590, %201, !dbg !584
  br i1 %cmp560, label %for.cond563.preheader, label %for.cond558.for.inc592_crit_edge, !dbg !584

for.cond558.for.inc592_crit_edge:                 ; preds = %for.end587
  %.pre1985 = load i32* %arrayidx554, align 4, !dbg !575, !tbaa !384
  br label %for.inc592, !dbg !584

for.inc592:                                       ; preds = %for.cond558.for.inc592_crit_edge, %for.cond558.preheader
  %202 = phi i32 [ %.pre1985, %for.cond558.for.inc592_crit_edge ], [ %183, %for.cond558.preheader ], !dbg !575
  %203 = phi i32 [ %201, %for.cond558.for.inc592_crit_edge ], [ %184, %for.cond558.preheader ]
  %_typed_data550.1.lcssa = phi i16* [ %_typed_data550.2.lcssa, %for.cond558.for.inc592_crit_edge ], [ %_typed_data550.01764, %for.cond558.preheader ]
  %inc593 = add nsw i32 %_k549.01763, 1, !dbg !575
  call void @llvm.dbg.value(metadata !{i32 %inc593}, i64 0, metadata !292), !dbg !575
  %cmp555 = icmp slt i32 %inc593, %202, !dbg !575
  br i1 %cmp555, label %for.cond558.preheader, label %for.end594, !dbg !575

for.end594:                                       ; preds = %for.inc592, %for.cond553.preheader.for.end594_crit_edge
  %arrayidx618.pre-phi = phi double** [ %arrayidx618.pre, %for.cond553.preheader.for.end594_crit_edge ], [ %arrayidx577, %for.inc592 ], !dbg !587
  %arrayidx609.pre-phi = phi double** [ %arrayidx609.pre, %for.cond553.preheader.for.end594_crit_edge ], [ %arrayidx573, %for.inc592 ], !dbg !587
  %arrayidx600.pre-phi = phi double** [ %arrayidx600.pre, %for.cond553.preheader.for.end594_crit_edge ], [ %arrayidx569, %for.inc592 ], !dbg !587
  %204 = phi i32 [ %.pre2011, %for.cond553.preheader.for.end594_crit_edge ], [ %203, %for.inc592 ]
  %205 = phi i32 [ %182, %for.cond553.preheader.for.end594_crit_edge ], [ %202, %for.inc592 ]
  %206 = load i32* %arraydecay164.pre-phi, align 4, !dbg !587, !tbaa !384
  %mul597 = mul i32 %206, %205, !dbg !587
  %mul599 = mul i32 %mul597, %204, !dbg !587
  %207 = load double** %arrayidx600.pre-phi, align 16, !dbg !587, !tbaa !340
  %idx.ext601 = sext i32 %mul599 to i64, !dbg !587
  %idx.neg602 = sub i64 0, %idx.ext601, !dbg !587
  %add.ptr603 = getelementptr inbounds double* %207, i64 %idx.neg602, !dbg !587
  store double* %add.ptr603, double** %arrayidx600.pre-phi, align 16, !dbg !587, !tbaa !340
  %mul606 = mul nsw i32 %204, %206, !dbg !587
  %mul608 = mul nsw i32 %mul606, %205, !dbg !587
  %208 = load double** %arrayidx609.pre-phi, align 8, !dbg !587, !tbaa !340
  %idx.ext610 = sext i32 %mul608 to i64, !dbg !587
  %idx.neg611 = sub i64 0, %idx.ext610, !dbg !587
  %add.ptr612 = getelementptr inbounds double* %208, i64 %idx.neg611, !dbg !587
  store double* %add.ptr612, double** %arrayidx609.pre-phi, align 8, !dbg !587, !tbaa !340
  %209 = load double** %arrayidx618.pre-phi, align 16, !dbg !587, !tbaa !340
  %add.ptr621 = getelementptr inbounds double* %209, i64 %idx.neg611, !dbg !587
  store double* %add.ptr621, double** %arrayidx618.pre-phi, align 16, !dbg !587, !tbaa !340
  br label %sw.epilog, !dbg !587

for.cond628.preheader:                            ; preds = %for.cond628.preheader.lr.ph, %for.inc653
  %210 = phi i32 [ %182, %for.cond628.preheader.lr.ph ], [ %220, %for.inc653 ]
  %211 = phi i32 [ %.pre1986, %for.cond628.preheader.lr.ph ], [ %221, %for.inc653 ], !dbg !581
  %_typed_data550.31780 = phi i16* [ %181, %for.cond628.preheader.lr.ph ], [ %_typed_data550.4.lcssa, %for.inc653 ]
  %_k549.11779 = phi i32 [ 0, %for.cond628.preheader.lr.ph ], [ %inc654, %for.inc653 ]
  %cmp6301773 = icmp sgt i32 %211, 0, !dbg !581
  br i1 %cmp6301773, label %for.cond633.preheader.lr.ph, label %for.inc653, !dbg !581

for.cond633.preheader.lr.ph:                      ; preds = %for.cond628.preheader
  %conv641 = sitofp i32 %_k549.11779 to double, !dbg !595
  br label %for.cond633.preheader, !dbg !581

for.cond633.preheader:                            ; preds = %for.cond633.preheader.lr.ph, %for.end648
  %_typed_data550.41775 = phi i16* [ %_typed_data550.31780, %for.cond633.preheader.lr.ph ], [ %_typed_data550.5.lcssa, %for.end648 ]
  %_j548.11774 = phi i32 [ 0, %for.cond633.preheader.lr.ph ], [ %inc651, %for.end648 ]
  %212 = load i32* %arraydecay164.pre-phi, align 4, !dbg !599, !tbaa !384
  %cmp6351768 = icmp sgt i32 %212, 0, !dbg !599
  %213 = load %struct._IO_FILE** %file.1, align 8, !dbg !595, !tbaa !340
  br i1 %cmp6351768, label %for.body637.lr.ph, label %for.end648, !dbg !599

for.body637.lr.ph:                                ; preds = %for.cond633.preheader
  %conv640 = sitofp i32 %_j548.11774 to double, !dbg !595
  br label %for.body637, !dbg !599

for.body637:                                      ; preds = %for.body637.lr.ph, %for.body637
  %214 = phi %struct._IO_FILE* [ %213, %for.body637.lr.ph ], [ %218, %for.body637 ]
  %_typed_data550.51770 = phi i16* [ %_typed_data550.41775, %for.body637.lr.ph ], [ %incdec.ptr642, %for.body637 ]
  %_i547.11769 = phi i32 [ 0, %for.body637.lr.ph ], [ %inc647, %for.body637 ]
  %conv639 = sitofp i32 %_i547.11769 to double, !dbg !595
  %incdec.ptr642 = getelementptr inbounds i16* %_typed_data550.51770, i64 1, !dbg !595
  call void @llvm.dbg.value(metadata !{i16* %incdec.ptr642}, i64 0, metadata !293), !dbg !595
  %215 = load i16* %_typed_data550.51770, align 2, !dbg !595, !tbaa !593
  %conv643 = sext i16 %215 to i32, !dbg !595
  %call644 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %214, i8* %arraydecay24.pre-phi, double %conv639, double %conv640, double %conv641, i32 %conv643) #7, !dbg !595
  %216 = load %struct._IO_FILE** %file.1, align 8, !dbg !595, !tbaa !340
  %fputc1617 = call i32 @fputc(i32 10, %struct._IO_FILE* %216), !dbg !595
  %inc647 = add nsw i32 %_i547.11769, 1, !dbg !599
  call void @llvm.dbg.value(metadata !{i32 %inc647}, i64 0, metadata !289), !dbg !599
  %217 = load i32* %arraydecay164.pre-phi, align 4, !dbg !599, !tbaa !384
  %cmp635 = icmp slt i32 %inc647, %217, !dbg !599
  %218 = load %struct._IO_FILE** %file.1, align 8, !dbg !595, !tbaa !340
  br i1 %cmp635, label %for.body637, label %for.end648, !dbg !599

for.end648:                                       ; preds = %for.body637, %for.cond633.preheader
  %.lcssa1767 = phi %struct._IO_FILE* [ %213, %for.cond633.preheader ], [ %218, %for.body637 ]
  %_typed_data550.5.lcssa = phi i16* [ %_typed_data550.41775, %for.cond633.preheader ], [ %incdec.ptr642, %for.body637 ]
  %fputc1614 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1767), !dbg !600
  %inc651 = add nsw i32 %_j548.11774, 1, !dbg !581
  call void @llvm.dbg.value(metadata !{i32 %inc651}, i64 0, metadata !291), !dbg !581
  %219 = load i32* %arrayidx629, align 4, !dbg !581, !tbaa !384
  %cmp630 = icmp slt i32 %inc651, %219, !dbg !581
  br i1 %cmp630, label %for.cond633.preheader, label %for.cond628.for.inc653_crit_edge, !dbg !581

for.cond628.for.inc653_crit_edge:                 ; preds = %for.end648
  %.pre1987 = load i32* %arrayidx554, align 4, !dbg !578, !tbaa !384
  br label %for.inc653, !dbg !581

for.inc653:                                       ; preds = %for.cond628.for.inc653_crit_edge, %for.cond628.preheader
  %220 = phi i32 [ %.pre1987, %for.cond628.for.inc653_crit_edge ], [ %210, %for.cond628.preheader ], !dbg !578
  %221 = phi i32 [ %219, %for.cond628.for.inc653_crit_edge ], [ %211, %for.cond628.preheader ]
  %_typed_data550.4.lcssa = phi i16* [ %_typed_data550.5.lcssa, %for.cond628.for.inc653_crit_edge ], [ %_typed_data550.31780, %for.cond628.preheader ]
  %inc654 = add nsw i32 %_k549.11779, 1, !dbg !578
  call void @llvm.dbg.value(metadata !{i32 %inc654}, i64 0, metadata !292), !dbg !578
  %cmp625 = icmp slt i32 %inc654, %220, !dbg !578
  br i1 %cmp625, label %for.cond628.preheader, label %sw.epilog, !dbg !578

sw.bb657:                                         ; preds = %for.end202
  call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !265), !dbg !601
  %222 = load i8** %data, align 8, !dbg !601, !tbaa !340
  %223 = bitcast i8* %222 to i32*, !dbg !601
  call void @llvm.dbg.value(metadata !{i32* %223}, i64 0, metadata !301), !dbg !601
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !300), !dbg !602
  %arrayidx665 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2, !dbg !602
  %224 = load i32* %arrayidx665, align 4, !dbg !602, !tbaa !384
  %cmp6661792 = icmp sgt i32 %224, 0, !dbg !602
  br i1 %tobool127, label %for.cond664.preheader, label %for.cond733.preheader, !dbg !601

for.cond733.preheader:                            ; preds = %sw.bb657
  br i1 %cmp6661792, label %for.cond738.preheader.lr.ph, label %sw.epilog, !dbg !605

for.cond738.preheader.lr.ph:                      ; preds = %for.cond733.preheader
  %arrayidx739 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !608
  %.pre1990 = load i32* %arrayidx739, align 4, !dbg !608, !tbaa !384
  br label %for.cond738.preheader, !dbg !605

for.cond664.preheader:                            ; preds = %sw.bb657
  %arrayidx670 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !611
  br i1 %cmp6661792, label %for.cond669.preheader.lr.ph, label %for.cond664.preheader.for.end704_crit_edge, !dbg !602

for.cond664.preheader.for.end704_crit_edge:       ; preds = %for.cond664.preheader
  %.pre2012 = load i32* %arrayidx670, align 4, !dbg !614, !tbaa !384
  %arrayidx710.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !614
  %arrayidx719.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !614
  %arrayidx728.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !614
  br label %for.end704, !dbg !602

for.cond669.preheader.lr.ph:                      ; preds = %for.cond664.preheader
  %arrayidx680 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !615
  %arrayidx682 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0, !dbg !615
  %arrayidx684 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !615
  %arrayidx686 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1, !dbg !615
  %arrayidx688 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !615
  %arrayidx690 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2, !dbg !615
  %.pre1988 = load i32* %arrayidx670, align 4, !dbg !611, !tbaa !384
  br label %for.cond669.preheader, !dbg !602

for.cond669.preheader:                            ; preds = %for.cond669.preheader.lr.ph, %for.inc702
  %225 = phi i32 [ %224, %for.cond669.preheader.lr.ph ], [ %244, %for.inc702 ]
  %226 = phi i32 [ %.pre1988, %for.cond669.preheader.lr.ph ], [ %245, %for.inc702 ], !dbg !611
  %_typed_data661.01794 = phi i32* [ %223, %for.cond669.preheader.lr.ph ], [ %_typed_data661.1.lcssa, %for.inc702 ]
  %_k660.01793 = phi i32 [ 0, %for.cond669.preheader.lr.ph ], [ %inc703, %for.inc702 ]
  %cmp6711787 = icmp sgt i32 %226, 0, !dbg !611
  br i1 %cmp6711787, label %for.cond674.preheader, label %for.inc702, !dbg !611

for.cond674.preheader:                            ; preds = %for.cond669.preheader, %for.end697
  %_typed_data661.11789 = phi i32* [ %_typed_data661.2.lcssa, %for.end697 ], [ %_typed_data661.01794, %for.cond669.preheader ]
  %_j659.01788 = phi i32 [ %inc700, %for.end697 ], [ 0, %for.cond669.preheader ]
  %227 = load i32* %arraydecay164.pre-phi, align 4, !dbg !619, !tbaa !384
  %cmp6761782 = icmp sgt i32 %227, 0, !dbg !619
  %228 = load %struct._IO_FILE** %file.1, align 8, !dbg !615, !tbaa !340
  br i1 %cmp6761782, label %for.body678, label %for.end697, !dbg !619

for.body678:                                      ; preds = %for.cond674.preheader, %for.body678
  %229 = phi %struct._IO_FILE* [ %242, %for.body678 ], [ %228, %for.cond674.preheader ]
  %_typed_data661.21784 = phi i32* [ %incdec.ptr692, %for.body678 ], [ %_typed_data661.11789, %for.cond674.preheader ]
  %_i658.01783 = phi i32 [ %inc696, %for.body678 ], [ 0, %for.cond674.preheader ]
  %230 = load double** %arrayidx680, align 16, !dbg !615, !tbaa !340
  %incdec.ptr681 = getelementptr inbounds double* %230, i64 1, !dbg !615
  store double* %incdec.ptr681, double** %arrayidx680, align 16, !dbg !615, !tbaa !340
  %231 = load double* %230, align 8, !dbg !615, !tbaa !379
  %232 = load double* %arrayidx682, align 16, !dbg !615, !tbaa !379
  %add683 = fadd double %231, %232, !dbg !615
  %233 = load double** %arrayidx684, align 8, !dbg !615, !tbaa !340
  %incdec.ptr685 = getelementptr inbounds double* %233, i64 1, !dbg !615
  store double* %incdec.ptr685, double** %arrayidx684, align 8, !dbg !615, !tbaa !340
  %234 = load double* %233, align 8, !dbg !615, !tbaa !379
  %235 = load double* %arrayidx686, align 8, !dbg !615, !tbaa !379
  %add687 = fadd double %234, %235, !dbg !615
  %236 = load double** %arrayidx688, align 16, !dbg !615, !tbaa !340
  %incdec.ptr689 = getelementptr inbounds double* %236, i64 1, !dbg !615
  store double* %incdec.ptr689, double** %arrayidx688, align 16, !dbg !615, !tbaa !340
  %237 = load double* %236, align 8, !dbg !615, !tbaa !379
  %238 = load double* %arrayidx690, align 16, !dbg !615, !tbaa !379
  %add691 = fadd double %237, %238, !dbg !615
  %incdec.ptr692 = getelementptr inbounds i32* %_typed_data661.21784, i64 1, !dbg !615
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr692}, i64 0, metadata !301), !dbg !615
  %239 = load i32* %_typed_data661.21784, align 4, !dbg !615, !tbaa !384
  %call693 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %229, i8* %arraydecay24.pre-phi, double %add683, double %add687, double %add691, i32 %239) #7, !dbg !615
  %240 = load %struct._IO_FILE** %file.1, align 8, !dbg !615, !tbaa !340
  %fputc1611 = call i32 @fputc(i32 10, %struct._IO_FILE* %240), !dbg !615
  %inc696 = add nsw i32 %_i658.01783, 1, !dbg !619
  call void @llvm.dbg.value(metadata !{i32 %inc696}, i64 0, metadata !297), !dbg !619
  %241 = load i32* %arraydecay164.pre-phi, align 4, !dbg !619, !tbaa !384
  %cmp676 = icmp slt i32 %inc696, %241, !dbg !619
  %242 = load %struct._IO_FILE** %file.1, align 8, !dbg !615, !tbaa !340
  br i1 %cmp676, label %for.body678, label %for.end697, !dbg !619

for.end697:                                       ; preds = %for.body678, %for.cond674.preheader
  %.lcssa1781 = phi %struct._IO_FILE* [ %228, %for.cond674.preheader ], [ %242, %for.body678 ]
  %_typed_data661.2.lcssa = phi i32* [ %_typed_data661.11789, %for.cond674.preheader ], [ %incdec.ptr692, %for.body678 ]
  %fputc1608 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1781), !dbg !620
  %inc700 = add nsw i32 %_j659.01788, 1, !dbg !611
  call void @llvm.dbg.value(metadata !{i32 %inc700}, i64 0, metadata !299), !dbg !611
  %243 = load i32* %arrayidx670, align 4, !dbg !611, !tbaa !384
  %cmp671 = icmp slt i32 %inc700, %243, !dbg !611
  br i1 %cmp671, label %for.cond674.preheader, label %for.cond669.for.inc702_crit_edge, !dbg !611

for.cond669.for.inc702_crit_edge:                 ; preds = %for.end697
  %.pre1989 = load i32* %arrayidx665, align 4, !dbg !602, !tbaa !384
  br label %for.inc702, !dbg !611

for.inc702:                                       ; preds = %for.cond669.for.inc702_crit_edge, %for.cond669.preheader
  %244 = phi i32 [ %.pre1989, %for.cond669.for.inc702_crit_edge ], [ %225, %for.cond669.preheader ], !dbg !602
  %245 = phi i32 [ %243, %for.cond669.for.inc702_crit_edge ], [ %226, %for.cond669.preheader ]
  %_typed_data661.1.lcssa = phi i32* [ %_typed_data661.2.lcssa, %for.cond669.for.inc702_crit_edge ], [ %_typed_data661.01794, %for.cond669.preheader ]
  %inc703 = add nsw i32 %_k660.01793, 1, !dbg !602
  call void @llvm.dbg.value(metadata !{i32 %inc703}, i64 0, metadata !300), !dbg !602
  %cmp666 = icmp slt i32 %inc703, %244, !dbg !602
  br i1 %cmp666, label %for.cond669.preheader, label %for.end704, !dbg !602

for.end704:                                       ; preds = %for.inc702, %for.cond664.preheader.for.end704_crit_edge
  %arrayidx728.pre-phi = phi double** [ %arrayidx728.pre, %for.cond664.preheader.for.end704_crit_edge ], [ %arrayidx688, %for.inc702 ], !dbg !614
  %arrayidx719.pre-phi = phi double** [ %arrayidx719.pre, %for.cond664.preheader.for.end704_crit_edge ], [ %arrayidx684, %for.inc702 ], !dbg !614
  %arrayidx710.pre-phi = phi double** [ %arrayidx710.pre, %for.cond664.preheader.for.end704_crit_edge ], [ %arrayidx680, %for.inc702 ], !dbg !614
  %246 = phi i32 [ %.pre2012, %for.cond664.preheader.for.end704_crit_edge ], [ %245, %for.inc702 ]
  %247 = phi i32 [ %224, %for.cond664.preheader.for.end704_crit_edge ], [ %244, %for.inc702 ]
  %248 = load i32* %arraydecay164.pre-phi, align 4, !dbg !614, !tbaa !384
  %mul707 = mul i32 %248, %247, !dbg !614
  %mul709 = mul i32 %mul707, %246, !dbg !614
  %249 = load double** %arrayidx710.pre-phi, align 16, !dbg !614, !tbaa !340
  %idx.ext711 = sext i32 %mul709 to i64, !dbg !614
  %idx.neg712 = sub i64 0, %idx.ext711, !dbg !614
  %add.ptr713 = getelementptr inbounds double* %249, i64 %idx.neg712, !dbg !614
  store double* %add.ptr713, double** %arrayidx710.pre-phi, align 16, !dbg !614, !tbaa !340
  %mul716 = mul nsw i32 %246, %248, !dbg !614
  %mul718 = mul nsw i32 %mul716, %247, !dbg !614
  %250 = load double** %arrayidx719.pre-phi, align 8, !dbg !614, !tbaa !340
  %idx.ext720 = sext i32 %mul718 to i64, !dbg !614
  %idx.neg721 = sub i64 0, %idx.ext720, !dbg !614
  %add.ptr722 = getelementptr inbounds double* %250, i64 %idx.neg721, !dbg !614
  store double* %add.ptr722, double** %arrayidx719.pre-phi, align 8, !dbg !614, !tbaa !340
  %251 = load double** %arrayidx728.pre-phi, align 16, !dbg !614, !tbaa !340
  %add.ptr731 = getelementptr inbounds double* %251, i64 %idx.neg721, !dbg !614
  store double* %add.ptr731, double** %arrayidx728.pre-phi, align 16, !dbg !614, !tbaa !340
  br label %sw.epilog, !dbg !614

for.cond738.preheader:                            ; preds = %for.cond738.preheader.lr.ph, %for.inc762
  %252 = phi i32 [ %224, %for.cond738.preheader.lr.ph ], [ %262, %for.inc762 ]
  %253 = phi i32 [ %.pre1990, %for.cond738.preheader.lr.ph ], [ %263, %for.inc762 ], !dbg !608
  %_typed_data661.31810 = phi i32* [ %223, %for.cond738.preheader.lr.ph ], [ %_typed_data661.4.lcssa, %for.inc762 ]
  %_k660.11809 = phi i32 [ 0, %for.cond738.preheader.lr.ph ], [ %inc763, %for.inc762 ]
  %cmp7401803 = icmp sgt i32 %253, 0, !dbg !608
  br i1 %cmp7401803, label %for.cond743.preheader.lr.ph, label %for.inc762, !dbg !608

for.cond743.preheader.lr.ph:                      ; preds = %for.cond738.preheader
  %conv751 = sitofp i32 %_k660.11809 to double, !dbg !621
  br label %for.cond743.preheader, !dbg !608

for.cond743.preheader:                            ; preds = %for.cond743.preheader.lr.ph, %for.end757
  %_typed_data661.41805 = phi i32* [ %_typed_data661.31810, %for.cond743.preheader.lr.ph ], [ %_typed_data661.5.lcssa, %for.end757 ]
  %_j659.11804 = phi i32 [ 0, %for.cond743.preheader.lr.ph ], [ %inc760, %for.end757 ]
  %254 = load i32* %arraydecay164.pre-phi, align 4, !dbg !625, !tbaa !384
  %cmp7451798 = icmp sgt i32 %254, 0, !dbg !625
  %255 = load %struct._IO_FILE** %file.1, align 8, !dbg !621, !tbaa !340
  br i1 %cmp7451798, label %for.body747.lr.ph, label %for.end757, !dbg !625

for.body747.lr.ph:                                ; preds = %for.cond743.preheader
  %conv750 = sitofp i32 %_j659.11804 to double, !dbg !621
  br label %for.body747, !dbg !625

for.body747:                                      ; preds = %for.body747.lr.ph, %for.body747
  %256 = phi %struct._IO_FILE* [ %255, %for.body747.lr.ph ], [ %260, %for.body747 ]
  %_typed_data661.51800 = phi i32* [ %_typed_data661.41805, %for.body747.lr.ph ], [ %incdec.ptr752, %for.body747 ]
  %_i658.11799 = phi i32 [ 0, %for.body747.lr.ph ], [ %inc756, %for.body747 ]
  %conv749 = sitofp i32 %_i658.11799 to double, !dbg !621
  %incdec.ptr752 = getelementptr inbounds i32* %_typed_data661.51800, i64 1, !dbg !621
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr752}, i64 0, metadata !301), !dbg !621
  %257 = load i32* %_typed_data661.51800, align 4, !dbg !621, !tbaa !384
  %call753 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %256, i8* %arraydecay24.pre-phi, double %conv749, double %conv750, double %conv751, i32 %257) #7, !dbg !621
  %258 = load %struct._IO_FILE** %file.1, align 8, !dbg !621, !tbaa !340
  %fputc1605 = call i32 @fputc(i32 10, %struct._IO_FILE* %258), !dbg !621
  %inc756 = add nsw i32 %_i658.11799, 1, !dbg !625
  call void @llvm.dbg.value(metadata !{i32 %inc756}, i64 0, metadata !297), !dbg !625
  %259 = load i32* %arraydecay164.pre-phi, align 4, !dbg !625, !tbaa !384
  %cmp745 = icmp slt i32 %inc756, %259, !dbg !625
  %260 = load %struct._IO_FILE** %file.1, align 8, !dbg !621, !tbaa !340
  br i1 %cmp745, label %for.body747, label %for.end757, !dbg !625

for.end757:                                       ; preds = %for.body747, %for.cond743.preheader
  %.lcssa1797 = phi %struct._IO_FILE* [ %255, %for.cond743.preheader ], [ %260, %for.body747 ]
  %_typed_data661.5.lcssa = phi i32* [ %_typed_data661.41805, %for.cond743.preheader ], [ %incdec.ptr752, %for.body747 ]
  %fputc1602 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1797), !dbg !626
  %inc760 = add nsw i32 %_j659.11804, 1, !dbg !608
  call void @llvm.dbg.value(metadata !{i32 %inc760}, i64 0, metadata !299), !dbg !608
  %261 = load i32* %arrayidx739, align 4, !dbg !608, !tbaa !384
  %cmp740 = icmp slt i32 %inc760, %261, !dbg !608
  br i1 %cmp740, label %for.cond743.preheader, label %for.cond738.for.inc762_crit_edge, !dbg !608

for.cond738.for.inc762_crit_edge:                 ; preds = %for.end757
  %.pre1991 = load i32* %arrayidx665, align 4, !dbg !605, !tbaa !384
  br label %for.inc762, !dbg !608

for.inc762:                                       ; preds = %for.cond738.for.inc762_crit_edge, %for.cond738.preheader
  %262 = phi i32 [ %.pre1991, %for.cond738.for.inc762_crit_edge ], [ %252, %for.cond738.preheader ], !dbg !605
  %263 = phi i32 [ %261, %for.cond738.for.inc762_crit_edge ], [ %253, %for.cond738.preheader ]
  %_typed_data661.4.lcssa = phi i32* [ %_typed_data661.5.lcssa, %for.cond738.for.inc762_crit_edge ], [ %_typed_data661.31810, %for.cond738.preheader ]
  %inc763 = add nsw i32 %_k660.11809, 1, !dbg !605
  call void @llvm.dbg.value(metadata !{i32 %inc763}, i64 0, metadata !300), !dbg !605
  %cmp735 = icmp slt i32 %inc763, %262, !dbg !605
  br i1 %cmp735, label %for.cond738.preheader, label %sw.epilog, !dbg !605

sw.bb766:                                         ; preds = %for.end202
  call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !265), !dbg !627
  %264 = load i8** %data, align 8, !dbg !627, !tbaa !340
  %265 = bitcast i8* %264 to i64*, !dbg !627
  call void @llvm.dbg.value(metadata !{i64* %265}, i64 0, metadata !306), !dbg !627
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !305), !dbg !628
  %arrayidx774 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2, !dbg !628
  %266 = load i32* %arrayidx774, align 4, !dbg !628, !tbaa !384
  %cmp7751822 = icmp sgt i32 %266, 0, !dbg !628
  br i1 %tobool127, label %for.cond773.preheader, label %for.cond843.preheader, !dbg !627

for.cond843.preheader:                            ; preds = %sw.bb766
  br i1 %cmp7751822, label %for.cond848.preheader.lr.ph, label %sw.epilog, !dbg !631

for.cond848.preheader.lr.ph:                      ; preds = %for.cond843.preheader
  %arrayidx849 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !634
  %.pre1994 = load i32* %arrayidx849, align 4, !dbg !634, !tbaa !384
  br label %for.cond848.preheader, !dbg !631

for.cond773.preheader:                            ; preds = %sw.bb766
  %arrayidx779 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !637
  br i1 %cmp7751822, label %for.cond778.preheader.lr.ph, label %for.cond773.preheader.for.end814_crit_edge, !dbg !628

for.cond773.preheader.for.end814_crit_edge:       ; preds = %for.cond773.preheader
  %.pre2013 = load i32* %arrayidx779, align 4, !dbg !640, !tbaa !384
  %arrayidx820.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !640
  %arrayidx829.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !640
  %arrayidx838.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !640
  br label %for.end814, !dbg !628

for.cond778.preheader.lr.ph:                      ; preds = %for.cond773.preheader
  %arrayidx789 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !641
  %arrayidx791 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0, !dbg !641
  %arrayidx793 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !641
  %arrayidx795 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1, !dbg !641
  %arrayidx797 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !641
  %arrayidx799 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2, !dbg !641
  %.pre1992 = load i32* %arrayidx779, align 4, !dbg !637, !tbaa !384
  br label %for.cond778.preheader, !dbg !628

for.cond778.preheader:                            ; preds = %for.cond778.preheader.lr.ph, %for.inc812
  %267 = phi i32 [ %266, %for.cond778.preheader.lr.ph ], [ %286, %for.inc812 ]
  %268 = phi i32 [ %.pre1992, %for.cond778.preheader.lr.ph ], [ %287, %for.inc812 ], !dbg !637
  %_typed_data770.01824 = phi i64* [ %265, %for.cond778.preheader.lr.ph ], [ %_typed_data770.1.lcssa, %for.inc812 ]
  %_k769.01823 = phi i32 [ 0, %for.cond778.preheader.lr.ph ], [ %inc813, %for.inc812 ]
  %cmp7801817 = icmp sgt i32 %268, 0, !dbg !637
  br i1 %cmp7801817, label %for.cond783.preheader, label %for.inc812, !dbg !637

for.cond783.preheader:                            ; preds = %for.cond778.preheader, %for.end807
  %_typed_data770.11819 = phi i64* [ %_typed_data770.2.lcssa, %for.end807 ], [ %_typed_data770.01824, %for.cond778.preheader ]
  %_j768.01818 = phi i32 [ %inc810, %for.end807 ], [ 0, %for.cond778.preheader ]
  %269 = load i32* %arraydecay164.pre-phi, align 4, !dbg !645, !tbaa !384
  %cmp7851812 = icmp sgt i32 %269, 0, !dbg !645
  %270 = load %struct._IO_FILE** %file.1, align 8, !dbg !641, !tbaa !340
  br i1 %cmp7851812, label %for.body787, label %for.end807, !dbg !645

for.body787:                                      ; preds = %for.cond783.preheader, %for.body787
  %271 = phi %struct._IO_FILE* [ %284, %for.body787 ], [ %270, %for.cond783.preheader ]
  %_typed_data770.21814 = phi i64* [ %incdec.ptr801, %for.body787 ], [ %_typed_data770.11819, %for.cond783.preheader ]
  %_i767.01813 = phi i32 [ %inc806, %for.body787 ], [ 0, %for.cond783.preheader ]
  %272 = load double** %arrayidx789, align 16, !dbg !641, !tbaa !340
  %incdec.ptr790 = getelementptr inbounds double* %272, i64 1, !dbg !641
  store double* %incdec.ptr790, double** %arrayidx789, align 16, !dbg !641, !tbaa !340
  %273 = load double* %272, align 8, !dbg !641, !tbaa !379
  %274 = load double* %arrayidx791, align 16, !dbg !641, !tbaa !379
  %add792 = fadd double %273, %274, !dbg !641
  %275 = load double** %arrayidx793, align 8, !dbg !641, !tbaa !340
  %incdec.ptr794 = getelementptr inbounds double* %275, i64 1, !dbg !641
  store double* %incdec.ptr794, double** %arrayidx793, align 8, !dbg !641, !tbaa !340
  %276 = load double* %275, align 8, !dbg !641, !tbaa !379
  %277 = load double* %arrayidx795, align 8, !dbg !641, !tbaa !379
  %add796 = fadd double %276, %277, !dbg !641
  %278 = load double** %arrayidx797, align 16, !dbg !641, !tbaa !340
  %incdec.ptr798 = getelementptr inbounds double* %278, i64 1, !dbg !641
  store double* %incdec.ptr798, double** %arrayidx797, align 16, !dbg !641, !tbaa !340
  %279 = load double* %278, align 8, !dbg !641, !tbaa !379
  %280 = load double* %arrayidx799, align 16, !dbg !641, !tbaa !379
  %add800 = fadd double %279, %280, !dbg !641
  %incdec.ptr801 = getelementptr inbounds i64* %_typed_data770.21814, i64 1, !dbg !641
  call void @llvm.dbg.value(metadata !{i64* %incdec.ptr801}, i64 0, metadata !306), !dbg !641
  %281 = load i64* %_typed_data770.21814, align 8, !dbg !641, !tbaa !646
  %conv802 = trunc i64 %281 to i32, !dbg !641
  %call803 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %271, i8* %arraydecay24.pre-phi, double %add792, double %add796, double %add800, i32 %conv802) #7, !dbg !641
  %282 = load %struct._IO_FILE** %file.1, align 8, !dbg !641, !tbaa !340
  %fputc1599 = call i32 @fputc(i32 10, %struct._IO_FILE* %282), !dbg !641
  %inc806 = add nsw i32 %_i767.01813, 1, !dbg !645
  call void @llvm.dbg.value(metadata !{i32 %inc806}, i64 0, metadata !302), !dbg !645
  %283 = load i32* %arraydecay164.pre-phi, align 4, !dbg !645, !tbaa !384
  %cmp785 = icmp slt i32 %inc806, %283, !dbg !645
  %284 = load %struct._IO_FILE** %file.1, align 8, !dbg !641, !tbaa !340
  br i1 %cmp785, label %for.body787, label %for.end807, !dbg !645

for.end807:                                       ; preds = %for.body787, %for.cond783.preheader
  %.lcssa1811 = phi %struct._IO_FILE* [ %270, %for.cond783.preheader ], [ %284, %for.body787 ]
  %_typed_data770.2.lcssa = phi i64* [ %_typed_data770.11819, %for.cond783.preheader ], [ %incdec.ptr801, %for.body787 ]
  %fputc1596 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1811), !dbg !647
  %inc810 = add nsw i32 %_j768.01818, 1, !dbg !637
  call void @llvm.dbg.value(metadata !{i32 %inc810}, i64 0, metadata !304), !dbg !637
  %285 = load i32* %arrayidx779, align 4, !dbg !637, !tbaa !384
  %cmp780 = icmp slt i32 %inc810, %285, !dbg !637
  br i1 %cmp780, label %for.cond783.preheader, label %for.cond778.for.inc812_crit_edge, !dbg !637

for.cond778.for.inc812_crit_edge:                 ; preds = %for.end807
  %.pre1993 = load i32* %arrayidx774, align 4, !dbg !628, !tbaa !384
  br label %for.inc812, !dbg !637

for.inc812:                                       ; preds = %for.cond778.for.inc812_crit_edge, %for.cond778.preheader
  %286 = phi i32 [ %.pre1993, %for.cond778.for.inc812_crit_edge ], [ %267, %for.cond778.preheader ], !dbg !628
  %287 = phi i32 [ %285, %for.cond778.for.inc812_crit_edge ], [ %268, %for.cond778.preheader ]
  %_typed_data770.1.lcssa = phi i64* [ %_typed_data770.2.lcssa, %for.cond778.for.inc812_crit_edge ], [ %_typed_data770.01824, %for.cond778.preheader ]
  %inc813 = add nsw i32 %_k769.01823, 1, !dbg !628
  call void @llvm.dbg.value(metadata !{i32 %inc813}, i64 0, metadata !305), !dbg !628
  %cmp775 = icmp slt i32 %inc813, %286, !dbg !628
  br i1 %cmp775, label %for.cond778.preheader, label %for.end814, !dbg !628

for.end814:                                       ; preds = %for.inc812, %for.cond773.preheader.for.end814_crit_edge
  %arrayidx838.pre-phi = phi double** [ %arrayidx838.pre, %for.cond773.preheader.for.end814_crit_edge ], [ %arrayidx797, %for.inc812 ], !dbg !640
  %arrayidx829.pre-phi = phi double** [ %arrayidx829.pre, %for.cond773.preheader.for.end814_crit_edge ], [ %arrayidx793, %for.inc812 ], !dbg !640
  %arrayidx820.pre-phi = phi double** [ %arrayidx820.pre, %for.cond773.preheader.for.end814_crit_edge ], [ %arrayidx789, %for.inc812 ], !dbg !640
  %288 = phi i32 [ %.pre2013, %for.cond773.preheader.for.end814_crit_edge ], [ %287, %for.inc812 ]
  %289 = phi i32 [ %266, %for.cond773.preheader.for.end814_crit_edge ], [ %286, %for.inc812 ]
  %290 = load i32* %arraydecay164.pre-phi, align 4, !dbg !640, !tbaa !384
  %mul817 = mul i32 %290, %289, !dbg !640
  %mul819 = mul i32 %mul817, %288, !dbg !640
  %291 = load double** %arrayidx820.pre-phi, align 16, !dbg !640, !tbaa !340
  %idx.ext821 = sext i32 %mul819 to i64, !dbg !640
  %idx.neg822 = sub i64 0, %idx.ext821, !dbg !640
  %add.ptr823 = getelementptr inbounds double* %291, i64 %idx.neg822, !dbg !640
  store double* %add.ptr823, double** %arrayidx820.pre-phi, align 16, !dbg !640, !tbaa !340
  %mul826 = mul nsw i32 %288, %290, !dbg !640
  %mul828 = mul nsw i32 %mul826, %289, !dbg !640
  %292 = load double** %arrayidx829.pre-phi, align 8, !dbg !640, !tbaa !340
  %idx.ext830 = sext i32 %mul828 to i64, !dbg !640
  %idx.neg831 = sub i64 0, %idx.ext830, !dbg !640
  %add.ptr832 = getelementptr inbounds double* %292, i64 %idx.neg831, !dbg !640
  store double* %add.ptr832, double** %arrayidx829.pre-phi, align 8, !dbg !640, !tbaa !340
  %293 = load double** %arrayidx838.pre-phi, align 16, !dbg !640, !tbaa !340
  %add.ptr841 = getelementptr inbounds double* %293, i64 %idx.neg831, !dbg !640
  store double* %add.ptr841, double** %arrayidx838.pre-phi, align 16, !dbg !640, !tbaa !340
  br label %sw.epilog, !dbg !640

for.cond848.preheader:                            ; preds = %for.cond848.preheader.lr.ph, %for.inc873
  %294 = phi i32 [ %266, %for.cond848.preheader.lr.ph ], [ %304, %for.inc873 ]
  %295 = phi i32 [ %.pre1994, %for.cond848.preheader.lr.ph ], [ %305, %for.inc873 ], !dbg !634
  %_typed_data770.31840 = phi i64* [ %265, %for.cond848.preheader.lr.ph ], [ %_typed_data770.4.lcssa, %for.inc873 ]
  %_k769.11839 = phi i32 [ 0, %for.cond848.preheader.lr.ph ], [ %inc874, %for.inc873 ]
  %cmp8501833 = icmp sgt i32 %295, 0, !dbg !634
  br i1 %cmp8501833, label %for.cond853.preheader.lr.ph, label %for.inc873, !dbg !634

for.cond853.preheader.lr.ph:                      ; preds = %for.cond848.preheader
  %conv861 = sitofp i32 %_k769.11839 to double, !dbg !648
  br label %for.cond853.preheader, !dbg !634

for.cond853.preheader:                            ; preds = %for.cond853.preheader.lr.ph, %for.end868
  %_typed_data770.41835 = phi i64* [ %_typed_data770.31840, %for.cond853.preheader.lr.ph ], [ %_typed_data770.5.lcssa, %for.end868 ]
  %_j768.11834 = phi i32 [ 0, %for.cond853.preheader.lr.ph ], [ %inc871, %for.end868 ]
  %296 = load i32* %arraydecay164.pre-phi, align 4, !dbg !652, !tbaa !384
  %cmp8551828 = icmp sgt i32 %296, 0, !dbg !652
  %297 = load %struct._IO_FILE** %file.1, align 8, !dbg !648, !tbaa !340
  br i1 %cmp8551828, label %for.body857.lr.ph, label %for.end868, !dbg !652

for.body857.lr.ph:                                ; preds = %for.cond853.preheader
  %conv860 = sitofp i32 %_j768.11834 to double, !dbg !648
  br label %for.body857, !dbg !652

for.body857:                                      ; preds = %for.body857.lr.ph, %for.body857
  %298 = phi %struct._IO_FILE* [ %297, %for.body857.lr.ph ], [ %302, %for.body857 ]
  %_typed_data770.51830 = phi i64* [ %_typed_data770.41835, %for.body857.lr.ph ], [ %incdec.ptr862, %for.body857 ]
  %_i767.11829 = phi i32 [ 0, %for.body857.lr.ph ], [ %inc867, %for.body857 ]
  %conv859 = sitofp i32 %_i767.11829 to double, !dbg !648
  %incdec.ptr862 = getelementptr inbounds i64* %_typed_data770.51830, i64 1, !dbg !648
  call void @llvm.dbg.value(metadata !{i64* %incdec.ptr862}, i64 0, metadata !306), !dbg !648
  %299 = load i64* %_typed_data770.51830, align 8, !dbg !648, !tbaa !646
  %conv863 = trunc i64 %299 to i32, !dbg !648
  %call864 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %298, i8* %arraydecay24.pre-phi, double %conv859, double %conv860, double %conv861, i32 %conv863) #7, !dbg !648
  %300 = load %struct._IO_FILE** %file.1, align 8, !dbg !648, !tbaa !340
  %fputc1593 = call i32 @fputc(i32 10, %struct._IO_FILE* %300), !dbg !648
  %inc867 = add nsw i32 %_i767.11829, 1, !dbg !652
  call void @llvm.dbg.value(metadata !{i32 %inc867}, i64 0, metadata !302), !dbg !652
  %301 = load i32* %arraydecay164.pre-phi, align 4, !dbg !652, !tbaa !384
  %cmp855 = icmp slt i32 %inc867, %301, !dbg !652
  %302 = load %struct._IO_FILE** %file.1, align 8, !dbg !648, !tbaa !340
  br i1 %cmp855, label %for.body857, label %for.end868, !dbg !652

for.end868:                                       ; preds = %for.body857, %for.cond853.preheader
  %.lcssa1827 = phi %struct._IO_FILE* [ %297, %for.cond853.preheader ], [ %302, %for.body857 ]
  %_typed_data770.5.lcssa = phi i64* [ %_typed_data770.41835, %for.cond853.preheader ], [ %incdec.ptr862, %for.body857 ]
  %fputc1590 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1827), !dbg !653
  %inc871 = add nsw i32 %_j768.11834, 1, !dbg !634
  call void @llvm.dbg.value(metadata !{i32 %inc871}, i64 0, metadata !304), !dbg !634
  %303 = load i32* %arrayidx849, align 4, !dbg !634, !tbaa !384
  %cmp850 = icmp slt i32 %inc871, %303, !dbg !634
  br i1 %cmp850, label %for.cond853.preheader, label %for.cond848.for.inc873_crit_edge, !dbg !634

for.cond848.for.inc873_crit_edge:                 ; preds = %for.end868
  %.pre1995 = load i32* %arrayidx774, align 4, !dbg !631, !tbaa !384
  br label %for.inc873, !dbg !634

for.inc873:                                       ; preds = %for.cond848.for.inc873_crit_edge, %for.cond848.preheader
  %304 = phi i32 [ %.pre1995, %for.cond848.for.inc873_crit_edge ], [ %294, %for.cond848.preheader ], !dbg !631
  %305 = phi i32 [ %303, %for.cond848.for.inc873_crit_edge ], [ %295, %for.cond848.preheader ]
  %_typed_data770.4.lcssa = phi i64* [ %_typed_data770.5.lcssa, %for.cond848.for.inc873_crit_edge ], [ %_typed_data770.31840, %for.cond848.preheader ]
  %inc874 = add nsw i32 %_k769.11839, 1, !dbg !631
  call void @llvm.dbg.value(metadata !{i32 %inc874}, i64 0, metadata !305), !dbg !631
  %cmp845 = icmp slt i32 %inc874, %304, !dbg !631
  br i1 %cmp845, label %for.cond848.preheader, label %sw.epilog, !dbg !631

sw.bb877:                                         ; preds = %for.end202, %for.end202
  call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !265), !dbg !654
  %306 = load i8** %data, align 8, !dbg !654, !tbaa !340
  %307 = bitcast i8* %306 to float*, !dbg !654
  call void @llvm.dbg.value(metadata !{float* %307}, i64 0, metadata !313), !dbg !654
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !312), !dbg !655
  %arrayidx885 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2, !dbg !655
  %308 = load i32* %arrayidx885, align 4, !dbg !655, !tbaa !384
  %cmp8861852 = icmp sgt i32 %308, 0, !dbg !655
  br i1 %tobool127, label %for.cond884.preheader, label %for.cond964.preheader, !dbg !654

for.cond964.preheader:                            ; preds = %sw.bb877
  br i1 %cmp8861852, label %for.cond969.preheader.lr.ph, label %sw.epilog, !dbg !658

for.cond969.preheader.lr.ph:                      ; preds = %for.cond964.preheader
  %arrayidx970 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !661
  %.pre1998 = load i32* %arrayidx970, align 4, !dbg !661, !tbaa !384
  br label %for.cond969.preheader, !dbg !658

for.cond884.preheader:                            ; preds = %sw.bb877
  %arrayidx890 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !664
  br i1 %cmp8861852, label %for.cond889.preheader.lr.ph, label %for.cond884.preheader.for.end935_crit_edge, !dbg !655

for.cond884.preheader.for.end935_crit_edge:       ; preds = %for.cond884.preheader
  %.pre2014 = load i32* %arrayidx890, align 4, !dbg !667, !tbaa !384
  %arrayidx941.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !667
  %arrayidx950.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !667
  %arrayidx959.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !667
  br label %for.end935, !dbg !655

for.cond889.preheader.lr.ph:                      ; preds = %for.cond884.preheader
  %arrayidx900 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !668
  %arrayidx902 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0, !dbg !668
  %arrayidx904 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !668
  %arrayidx906 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1, !dbg !668
  %arrayidx908 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !668
  %arrayidx910 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2, !dbg !668
  %.pre1996 = load i32* %arrayidx890, align 4, !dbg !664, !tbaa !384
  br label %for.cond889.preheader, !dbg !655

for.cond889.preheader:                            ; preds = %for.cond889.preheader.lr.ph, %for.inc933
  %309 = phi i32 [ %308, %for.cond889.preheader.lr.ph ], [ %333, %for.inc933 ]
  %310 = phi i32 [ %.pre1996, %for.cond889.preheader.lr.ph ], [ %334, %for.inc933 ], !dbg !664
  %_typed_data881.01854 = phi float* [ %307, %for.cond889.preheader.lr.ph ], [ %_typed_data881.1.lcssa, %for.inc933 ]
  %_k880.01853 = phi i32 [ 0, %for.cond889.preheader.lr.ph ], [ %inc934, %for.inc933 ]
  %cmp8911847 = icmp sgt i32 %310, 0, !dbg !664
  br i1 %cmp8911847, label %for.cond894.preheader, label %for.inc933, !dbg !664

for.cond894.preheader:                            ; preds = %for.cond889.preheader, %for.end928
  %_typed_data881.11849 = phi float* [ %_typed_data881.2.lcssa, %for.end928 ], [ %_typed_data881.01854, %for.cond889.preheader ]
  %_j879.01848 = phi i32 [ %inc931, %for.end928 ], [ 0, %for.cond889.preheader ]
  %311 = load i32* %arraydecay164.pre-phi, align 4, !dbg !672, !tbaa !384
  %cmp8961842 = icmp sgt i32 %311, 0, !dbg !672
  %312 = load %struct._IO_FILE** %file.1, align 8, !dbg !668, !tbaa !340
  br i1 %cmp8961842, label %for.body898, label %for.end928, !dbg !672

for.body898:                                      ; preds = %for.cond894.preheader, %if.end924
  %313 = phi %struct._IO_FILE* [ %331, %if.end924 ], [ %312, %for.cond894.preheader ]
  %_typed_data881.21844 = phi float* [ %_typed_data881.3, %if.end924 ], [ %_typed_data881.11849, %for.cond894.preheader ]
  %_i878.01843 = phi i32 [ %inc927, %if.end924 ], [ 0, %for.cond894.preheader ]
  %314 = load double** %arrayidx900, align 16, !dbg !668, !tbaa !340
  %incdec.ptr901 = getelementptr inbounds double* %314, i64 1, !dbg !668
  store double* %incdec.ptr901, double** %arrayidx900, align 16, !dbg !668, !tbaa !340
  %315 = load double* %314, align 8, !dbg !668, !tbaa !379
  %316 = load double* %arrayidx902, align 16, !dbg !668, !tbaa !379
  %add903 = fadd double %315, %316, !dbg !668
  %317 = load double** %arrayidx904, align 8, !dbg !668, !tbaa !340
  %incdec.ptr905 = getelementptr inbounds double* %317, i64 1, !dbg !668
  store double* %incdec.ptr905, double** %arrayidx904, align 8, !dbg !668, !tbaa !340
  %318 = load double* %317, align 8, !dbg !668, !tbaa !379
  %319 = load double* %arrayidx906, align 8, !dbg !668, !tbaa !379
  %add907 = fadd double %318, %319, !dbg !668
  %320 = load double** %arrayidx908, align 16, !dbg !668, !tbaa !340
  %incdec.ptr909 = getelementptr inbounds double* %320, i64 1, !dbg !668
  store double* %incdec.ptr909, double** %arrayidx908, align 16, !dbg !668, !tbaa !340
  %321 = load double* %320, align 8, !dbg !668, !tbaa !379
  %322 = load double* %arrayidx910, align 16, !dbg !668, !tbaa !379
  %add911 = fadd double %321, %322, !dbg !668
  %incdec.ptr912 = getelementptr inbounds float* %_typed_data881.21844, i64 1, !dbg !668
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr912}, i64 0, metadata !313), !dbg !668
  %323 = load float* %_typed_data881.21844, align 4, !dbg !668, !tbaa !673
  %conv913 = fpext float %323 to double, !dbg !668
  %call914 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %313, i8* %arraydecay26.pre-phi, double %add903, double %add907, double %add911, double %conv913) #7, !dbg !668
  %324 = load i32* %vartype, align 4, !dbg !668, !tbaa !384
  %cmp916 = icmp eq i32 %324, 11, !dbg !668
  br i1 %cmp916, label %if.then918, label %if.end924, !dbg !668

if.then918:                                       ; preds = %for.body898
  %325 = load %struct._IO_FILE** %file.1, align 8, !dbg !674, !tbaa !340
  %326 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %325), !dbg !674
  %327 = load %struct._IO_FILE** %file.1, align 8, !dbg !674, !tbaa !340
  %incdec.ptr921 = getelementptr inbounds float* %_typed_data881.21844, i64 2, !dbg !674
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr921}, i64 0, metadata !313), !dbg !674
  %328 = load float* %incdec.ptr912, align 4, !dbg !674, !tbaa !673
  %conv922 = fpext float %328 to double, !dbg !674
  %call923 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %327, i8* %arraydecay7, double %conv922) #7, !dbg !674
  br label %if.end924, !dbg !674

if.end924:                                        ; preds = %if.then918, %for.body898
  %_typed_data881.3 = phi float* [ %incdec.ptr921, %if.then918 ], [ %incdec.ptr912, %for.body898 ]
  %329 = load %struct._IO_FILE** %file.1, align 8, !dbg !668, !tbaa !340
  %fputc1587 = call i32 @fputc(i32 10, %struct._IO_FILE* %329), !dbg !668
  %inc927 = add nsw i32 %_i878.01843, 1, !dbg !672
  call void @llvm.dbg.value(metadata !{i32 %inc927}, i64 0, metadata !309), !dbg !672
  %330 = load i32* %arraydecay164.pre-phi, align 4, !dbg !672, !tbaa !384
  %cmp896 = icmp slt i32 %inc927, %330, !dbg !672
  %331 = load %struct._IO_FILE** %file.1, align 8, !dbg !668, !tbaa !340
  br i1 %cmp896, label %for.body898, label %for.end928, !dbg !672

for.end928:                                       ; preds = %if.end924, %for.cond894.preheader
  %.lcssa1841 = phi %struct._IO_FILE* [ %312, %for.cond894.preheader ], [ %331, %if.end924 ]
  %_typed_data881.2.lcssa = phi float* [ %_typed_data881.11849, %for.cond894.preheader ], [ %_typed_data881.3, %if.end924 ]
  %fputc1584 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1841), !dbg !676
  %inc931 = add nsw i32 %_j879.01848, 1, !dbg !664
  call void @llvm.dbg.value(metadata !{i32 %inc931}, i64 0, metadata !311), !dbg !664
  %332 = load i32* %arrayidx890, align 4, !dbg !664, !tbaa !384
  %cmp891 = icmp slt i32 %inc931, %332, !dbg !664
  br i1 %cmp891, label %for.cond894.preheader, label %for.cond889.for.inc933_crit_edge, !dbg !664

for.cond889.for.inc933_crit_edge:                 ; preds = %for.end928
  %.pre1997 = load i32* %arrayidx885, align 4, !dbg !655, !tbaa !384
  br label %for.inc933, !dbg !664

for.inc933:                                       ; preds = %for.cond889.for.inc933_crit_edge, %for.cond889.preheader
  %333 = phi i32 [ %.pre1997, %for.cond889.for.inc933_crit_edge ], [ %309, %for.cond889.preheader ], !dbg !655
  %334 = phi i32 [ %332, %for.cond889.for.inc933_crit_edge ], [ %310, %for.cond889.preheader ]
  %_typed_data881.1.lcssa = phi float* [ %_typed_data881.2.lcssa, %for.cond889.for.inc933_crit_edge ], [ %_typed_data881.01854, %for.cond889.preheader ]
  %inc934 = add nsw i32 %_k880.01853, 1, !dbg !655
  call void @llvm.dbg.value(metadata !{i32 %inc934}, i64 0, metadata !312), !dbg !655
  %cmp886 = icmp slt i32 %inc934, %333, !dbg !655
  br i1 %cmp886, label %for.cond889.preheader, label %for.end935, !dbg !655

for.end935:                                       ; preds = %for.inc933, %for.cond884.preheader.for.end935_crit_edge
  %arrayidx959.pre-phi = phi double** [ %arrayidx959.pre, %for.cond884.preheader.for.end935_crit_edge ], [ %arrayidx908, %for.inc933 ], !dbg !667
  %arrayidx950.pre-phi = phi double** [ %arrayidx950.pre, %for.cond884.preheader.for.end935_crit_edge ], [ %arrayidx904, %for.inc933 ], !dbg !667
  %arrayidx941.pre-phi = phi double** [ %arrayidx941.pre, %for.cond884.preheader.for.end935_crit_edge ], [ %arrayidx900, %for.inc933 ], !dbg !667
  %335 = phi i32 [ %.pre2014, %for.cond884.preheader.for.end935_crit_edge ], [ %334, %for.inc933 ]
  %336 = phi i32 [ %308, %for.cond884.preheader.for.end935_crit_edge ], [ %333, %for.inc933 ]
  %337 = load i32* %arraydecay164.pre-phi, align 4, !dbg !667, !tbaa !384
  %mul938 = mul i32 %337, %336, !dbg !667
  %mul940 = mul i32 %mul938, %335, !dbg !667
  %338 = load double** %arrayidx941.pre-phi, align 16, !dbg !667, !tbaa !340
  %idx.ext942 = sext i32 %mul940 to i64, !dbg !667
  %idx.neg943 = sub i64 0, %idx.ext942, !dbg !667
  %add.ptr944 = getelementptr inbounds double* %338, i64 %idx.neg943, !dbg !667
  store double* %add.ptr944, double** %arrayidx941.pre-phi, align 16, !dbg !667, !tbaa !340
  %mul947 = mul nsw i32 %335, %337, !dbg !667
  %mul949 = mul nsw i32 %mul947, %336, !dbg !667
  %339 = load double** %arrayidx950.pre-phi, align 8, !dbg !667, !tbaa !340
  %idx.ext951 = sext i32 %mul949 to i64, !dbg !667
  %idx.neg952 = sub i64 0, %idx.ext951, !dbg !667
  %add.ptr953 = getelementptr inbounds double* %339, i64 %idx.neg952, !dbg !667
  store double* %add.ptr953, double** %arrayidx950.pre-phi, align 8, !dbg !667, !tbaa !340
  %340 = load double** %arrayidx959.pre-phi, align 16, !dbg !667, !tbaa !340
  %add.ptr962 = getelementptr inbounds double* %340, i64 %idx.neg952, !dbg !667
  store double* %add.ptr962, double** %arrayidx959.pre-phi, align 16, !dbg !667, !tbaa !340
  br label %sw.epilog, !dbg !667

for.cond969.preheader:                            ; preds = %for.cond969.preheader.lr.ph, %for.inc1004
  %341 = phi i32 [ %308, %for.cond969.preheader.lr.ph ], [ %356, %for.inc1004 ]
  %342 = phi i32 [ %.pre1998, %for.cond969.preheader.lr.ph ], [ %357, %for.inc1004 ], !dbg !661
  %_typed_data881.41870 = phi float* [ %307, %for.cond969.preheader.lr.ph ], [ %_typed_data881.5.lcssa, %for.inc1004 ]
  %_k880.11869 = phi i32 [ 0, %for.cond969.preheader.lr.ph ], [ %inc1005, %for.inc1004 ]
  %cmp9711863 = icmp sgt i32 %342, 0, !dbg !661
  br i1 %cmp9711863, label %for.cond974.preheader.lr.ph, label %for.inc1004, !dbg !661

for.cond974.preheader.lr.ph:                      ; preds = %for.cond969.preheader
  %conv982 = sitofp i32 %_k880.11869 to double, !dbg !677
  br label %for.cond974.preheader, !dbg !661

for.cond974.preheader:                            ; preds = %for.cond974.preheader.lr.ph, %for.end999
  %_typed_data881.51865 = phi float* [ %_typed_data881.41870, %for.cond974.preheader.lr.ph ], [ %_typed_data881.6.lcssa, %for.end999 ]
  %_j879.11864 = phi i32 [ 0, %for.cond974.preheader.lr.ph ], [ %inc1002, %for.end999 ]
  %343 = load i32* %arraydecay164.pre-phi, align 4, !dbg !681, !tbaa !384
  %cmp9761858 = icmp sgt i32 %343, 0, !dbg !681
  %344 = load %struct._IO_FILE** %file.1, align 8, !dbg !677, !tbaa !340
  br i1 %cmp9761858, label %for.body978.lr.ph, label %for.end999, !dbg !681

for.body978.lr.ph:                                ; preds = %for.cond974.preheader
  %conv981 = sitofp i32 %_j879.11864 to double, !dbg !677
  br label %for.body978, !dbg !681

for.body978:                                      ; preds = %for.body978.lr.ph, %if.end995
  %345 = phi %struct._IO_FILE* [ %344, %for.body978.lr.ph ], [ %354, %if.end995 ]
  %_typed_data881.61860 = phi float* [ %_typed_data881.51865, %for.body978.lr.ph ], [ %_typed_data881.7, %if.end995 ]
  %_i878.11859 = phi i32 [ 0, %for.body978.lr.ph ], [ %inc998, %if.end995 ]
  %conv980 = sitofp i32 %_i878.11859 to double, !dbg !677
  %incdec.ptr983 = getelementptr inbounds float* %_typed_data881.61860, i64 1, !dbg !677
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr983}, i64 0, metadata !313), !dbg !677
  %346 = load float* %_typed_data881.61860, align 4, !dbg !677, !tbaa !673
  %conv984 = fpext float %346 to double, !dbg !677
  %call985 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %345, i8* %arraydecay26.pre-phi, double %conv980, double %conv981, double %conv982, double %conv984) #7, !dbg !677
  %347 = load i32* %vartype, align 4, !dbg !677, !tbaa !384
  %cmp987 = icmp eq i32 %347, 11, !dbg !677
  br i1 %cmp987, label %if.then989, label %if.end995, !dbg !677

if.then989:                                       ; preds = %for.body978
  %348 = load %struct._IO_FILE** %file.1, align 8, !dbg !682, !tbaa !340
  %349 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %348), !dbg !682
  %350 = load %struct._IO_FILE** %file.1, align 8, !dbg !682, !tbaa !340
  %incdec.ptr992 = getelementptr inbounds float* %_typed_data881.61860, i64 2, !dbg !682
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr992}, i64 0, metadata !313), !dbg !682
  %351 = load float* %incdec.ptr983, align 4, !dbg !682, !tbaa !673
  %conv993 = fpext float %351 to double, !dbg !682
  %call994 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %350, i8* %arraydecay7, double %conv993) #7, !dbg !682
  br label %if.end995, !dbg !682

if.end995:                                        ; preds = %if.then989, %for.body978
  %_typed_data881.7 = phi float* [ %incdec.ptr992, %if.then989 ], [ %incdec.ptr983, %for.body978 ]
  %352 = load %struct._IO_FILE** %file.1, align 8, !dbg !677, !tbaa !340
  %fputc1581 = call i32 @fputc(i32 10, %struct._IO_FILE* %352), !dbg !677
  %inc998 = add nsw i32 %_i878.11859, 1, !dbg !681
  call void @llvm.dbg.value(metadata !{i32 %inc998}, i64 0, metadata !309), !dbg !681
  %353 = load i32* %arraydecay164.pre-phi, align 4, !dbg !681, !tbaa !384
  %cmp976 = icmp slt i32 %inc998, %353, !dbg !681
  %354 = load %struct._IO_FILE** %file.1, align 8, !dbg !677, !tbaa !340
  br i1 %cmp976, label %for.body978, label %for.end999, !dbg !681

for.end999:                                       ; preds = %if.end995, %for.cond974.preheader
  %.lcssa1857 = phi %struct._IO_FILE* [ %344, %for.cond974.preheader ], [ %354, %if.end995 ]
  %_typed_data881.6.lcssa = phi float* [ %_typed_data881.51865, %for.cond974.preheader ], [ %_typed_data881.7, %if.end995 ]
  %fputc1578 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1857), !dbg !684
  %inc1002 = add nsw i32 %_j879.11864, 1, !dbg !661
  call void @llvm.dbg.value(metadata !{i32 %inc1002}, i64 0, metadata !311), !dbg !661
  %355 = load i32* %arrayidx970, align 4, !dbg !661, !tbaa !384
  %cmp971 = icmp slt i32 %inc1002, %355, !dbg !661
  br i1 %cmp971, label %for.cond974.preheader, label %for.cond969.for.inc1004_crit_edge, !dbg !661

for.cond969.for.inc1004_crit_edge:                ; preds = %for.end999
  %.pre1999 = load i32* %arrayidx885, align 4, !dbg !658, !tbaa !384
  br label %for.inc1004, !dbg !661

for.inc1004:                                      ; preds = %for.cond969.for.inc1004_crit_edge, %for.cond969.preheader
  %356 = phi i32 [ %.pre1999, %for.cond969.for.inc1004_crit_edge ], [ %341, %for.cond969.preheader ], !dbg !658
  %357 = phi i32 [ %355, %for.cond969.for.inc1004_crit_edge ], [ %342, %for.cond969.preheader ]
  %_typed_data881.5.lcssa = phi float* [ %_typed_data881.6.lcssa, %for.cond969.for.inc1004_crit_edge ], [ %_typed_data881.41870, %for.cond969.preheader ]
  %inc1005 = add nsw i32 %_k880.11869, 1, !dbg !658
  call void @llvm.dbg.value(metadata !{i32 %inc1005}, i64 0, metadata !312), !dbg !658
  %cmp966 = icmp slt i32 %inc1005, %356, !dbg !658
  br i1 %cmp966, label %for.cond969.preheader, label %sw.epilog, !dbg !658

sw.bb1008:                                        ; preds = %for.end202, %for.end202
  call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !265), !dbg !685
  %358 = load i8** %data, align 8, !dbg !685, !tbaa !340
  %359 = bitcast i8* %358 to double*, !dbg !685
  call void @llvm.dbg.value(metadata !{double* %359}, i64 0, metadata !321), !dbg !685
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !320), !dbg !686
  %arrayidx1016 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2, !dbg !686
  %360 = load i32* %arrayidx1016, align 4, !dbg !686, !tbaa !384
  %cmp10171882 = icmp sgt i32 %360, 0, !dbg !686
  br i1 %tobool127, label %for.cond1015.preheader, label %for.cond1093.preheader, !dbg !685

for.cond1093.preheader:                           ; preds = %sw.bb1008
  br i1 %cmp10171882, label %for.cond1098.preheader.lr.ph, label %sw.epilog, !dbg !689

for.cond1098.preheader.lr.ph:                     ; preds = %for.cond1093.preheader
  %arrayidx1099 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !692
  %.pre2002 = load i32* %arrayidx1099, align 4, !dbg !692, !tbaa !384
  br label %for.cond1098.preheader, !dbg !689

for.cond1015.preheader:                           ; preds = %sw.bb1008
  %arrayidx1021 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !695
  br i1 %cmp10171882, label %for.cond1020.preheader.lr.ph, label %for.cond1015.preheader.for.end1064_crit_edge, !dbg !686

for.cond1015.preheader.for.end1064_crit_edge:     ; preds = %for.cond1015.preheader
  %.pre2015 = load i32* %arrayidx1021, align 4, !dbg !698, !tbaa !384
  %arrayidx1070.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !698
  %arrayidx1079.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !698
  %arrayidx1088.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !698
  br label %for.end1064, !dbg !686

for.cond1020.preheader.lr.ph:                     ; preds = %for.cond1015.preheader
  %arrayidx1031 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !699
  %arrayidx1033 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0, !dbg !699
  %arrayidx1035 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !699
  %arrayidx1037 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1, !dbg !699
  %arrayidx1039 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !699
  %arrayidx1041 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2, !dbg !699
  %.pre2000 = load i32* %arrayidx1021, align 4, !dbg !695, !tbaa !384
  br label %for.cond1020.preheader, !dbg !686

for.cond1020.preheader:                           ; preds = %for.cond1020.preheader.lr.ph, %for.inc1062
  %361 = phi i32 [ %360, %for.cond1020.preheader.lr.ph ], [ %385, %for.inc1062 ]
  %362 = phi i32 [ %.pre2000, %for.cond1020.preheader.lr.ph ], [ %386, %for.inc1062 ], !dbg !695
  %_typed_data1012.01884 = phi double* [ %359, %for.cond1020.preheader.lr.ph ], [ %_typed_data1012.1.lcssa, %for.inc1062 ]
  %_k1011.01883 = phi i32 [ 0, %for.cond1020.preheader.lr.ph ], [ %inc1063, %for.inc1062 ]
  %cmp10221877 = icmp sgt i32 %362, 0, !dbg !695
  br i1 %cmp10221877, label %for.cond1025.preheader, label %for.inc1062, !dbg !695

for.cond1025.preheader:                           ; preds = %for.cond1020.preheader, %for.end1057
  %_typed_data1012.11879 = phi double* [ %_typed_data1012.2.lcssa, %for.end1057 ], [ %_typed_data1012.01884, %for.cond1020.preheader ]
  %_j1010.01878 = phi i32 [ %inc1060, %for.end1057 ], [ 0, %for.cond1020.preheader ]
  %363 = load i32* %arraydecay164.pre-phi, align 4, !dbg !703, !tbaa !384
  %cmp10271872 = icmp sgt i32 %363, 0, !dbg !703
  %364 = load %struct._IO_FILE** %file.1, align 8, !dbg !699, !tbaa !340
  br i1 %cmp10271872, label %for.body1029, label %for.end1057, !dbg !703

for.body1029:                                     ; preds = %for.cond1025.preheader, %if.end1053
  %365 = phi %struct._IO_FILE* [ %383, %if.end1053 ], [ %364, %for.cond1025.preheader ]
  %_typed_data1012.21874 = phi double* [ %_typed_data1012.3, %if.end1053 ], [ %_typed_data1012.11879, %for.cond1025.preheader ]
  %_i1009.01873 = phi i32 [ %inc1056, %if.end1053 ], [ 0, %for.cond1025.preheader ]
  %366 = load double** %arrayidx1031, align 16, !dbg !699, !tbaa !340
  %incdec.ptr1032 = getelementptr inbounds double* %366, i64 1, !dbg !699
  store double* %incdec.ptr1032, double** %arrayidx1031, align 16, !dbg !699, !tbaa !340
  %367 = load double* %366, align 8, !dbg !699, !tbaa !379
  %368 = load double* %arrayidx1033, align 16, !dbg !699, !tbaa !379
  %add1034 = fadd double %367, %368, !dbg !699
  %369 = load double** %arrayidx1035, align 8, !dbg !699, !tbaa !340
  %incdec.ptr1036 = getelementptr inbounds double* %369, i64 1, !dbg !699
  store double* %incdec.ptr1036, double** %arrayidx1035, align 8, !dbg !699, !tbaa !340
  %370 = load double* %369, align 8, !dbg !699, !tbaa !379
  %371 = load double* %arrayidx1037, align 8, !dbg !699, !tbaa !379
  %add1038 = fadd double %370, %371, !dbg !699
  %372 = load double** %arrayidx1039, align 16, !dbg !699, !tbaa !340
  %incdec.ptr1040 = getelementptr inbounds double* %372, i64 1, !dbg !699
  store double* %incdec.ptr1040, double** %arrayidx1039, align 16, !dbg !699, !tbaa !340
  %373 = load double* %372, align 8, !dbg !699, !tbaa !379
  %374 = load double* %arrayidx1041, align 16, !dbg !699, !tbaa !379
  %add1042 = fadd double %373, %374, !dbg !699
  %incdec.ptr1043 = getelementptr inbounds double* %_typed_data1012.21874, i64 1, !dbg !699
  call void @llvm.dbg.value(metadata !{double* %incdec.ptr1043}, i64 0, metadata !321), !dbg !699
  %375 = load double* %_typed_data1012.21874, align 8, !dbg !699, !tbaa !379
  %call1044 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %365, i8* %arraydecay26.pre-phi, double %add1034, double %add1038, double %add1042, double %375) #7, !dbg !699
  %376 = load i32* %vartype, align 4, !dbg !699, !tbaa !384
  %cmp1046 = icmp eq i32 %376, 12, !dbg !699
  br i1 %cmp1046, label %if.then1048, label %if.end1053, !dbg !699

if.then1048:                                      ; preds = %for.body1029
  %377 = load %struct._IO_FILE** %file.1, align 8, !dbg !704, !tbaa !340
  %378 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %377), !dbg !704
  %379 = load %struct._IO_FILE** %file.1, align 8, !dbg !704, !tbaa !340
  %incdec.ptr1051 = getelementptr inbounds double* %_typed_data1012.21874, i64 2, !dbg !704
  call void @llvm.dbg.value(metadata !{double* %incdec.ptr1051}, i64 0, metadata !321), !dbg !704
  %380 = load double* %incdec.ptr1043, align 8, !dbg !704, !tbaa !379
  %call1052 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %379, i8* %arraydecay7, double %380) #7, !dbg !704
  br label %if.end1053, !dbg !704

if.end1053:                                       ; preds = %if.then1048, %for.body1029
  %_typed_data1012.3 = phi double* [ %incdec.ptr1051, %if.then1048 ], [ %incdec.ptr1043, %for.body1029 ]
  %381 = load %struct._IO_FILE** %file.1, align 8, !dbg !699, !tbaa !340
  %fputc1575 = call i32 @fputc(i32 10, %struct._IO_FILE* %381), !dbg !699
  %inc1056 = add nsw i32 %_i1009.01873, 1, !dbg !703
  call void @llvm.dbg.value(metadata !{i32 %inc1056}, i64 0, metadata !317), !dbg !703
  %382 = load i32* %arraydecay164.pre-phi, align 4, !dbg !703, !tbaa !384
  %cmp1027 = icmp slt i32 %inc1056, %382, !dbg !703
  %383 = load %struct._IO_FILE** %file.1, align 8, !dbg !699, !tbaa !340
  br i1 %cmp1027, label %for.body1029, label %for.end1057, !dbg !703

for.end1057:                                      ; preds = %if.end1053, %for.cond1025.preheader
  %.lcssa1871 = phi %struct._IO_FILE* [ %364, %for.cond1025.preheader ], [ %383, %if.end1053 ]
  %_typed_data1012.2.lcssa = phi double* [ %_typed_data1012.11879, %for.cond1025.preheader ], [ %_typed_data1012.3, %if.end1053 ]
  %fputc1572 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1871), !dbg !706
  %inc1060 = add nsw i32 %_j1010.01878, 1, !dbg !695
  call void @llvm.dbg.value(metadata !{i32 %inc1060}, i64 0, metadata !319), !dbg !695
  %384 = load i32* %arrayidx1021, align 4, !dbg !695, !tbaa !384
  %cmp1022 = icmp slt i32 %inc1060, %384, !dbg !695
  br i1 %cmp1022, label %for.cond1025.preheader, label %for.cond1020.for.inc1062_crit_edge, !dbg !695

for.cond1020.for.inc1062_crit_edge:               ; preds = %for.end1057
  %.pre2001 = load i32* %arrayidx1016, align 4, !dbg !686, !tbaa !384
  br label %for.inc1062, !dbg !695

for.inc1062:                                      ; preds = %for.cond1020.for.inc1062_crit_edge, %for.cond1020.preheader
  %385 = phi i32 [ %.pre2001, %for.cond1020.for.inc1062_crit_edge ], [ %361, %for.cond1020.preheader ], !dbg !686
  %386 = phi i32 [ %384, %for.cond1020.for.inc1062_crit_edge ], [ %362, %for.cond1020.preheader ]
  %_typed_data1012.1.lcssa = phi double* [ %_typed_data1012.2.lcssa, %for.cond1020.for.inc1062_crit_edge ], [ %_typed_data1012.01884, %for.cond1020.preheader ]
  %inc1063 = add nsw i32 %_k1011.01883, 1, !dbg !686
  call void @llvm.dbg.value(metadata !{i32 %inc1063}, i64 0, metadata !320), !dbg !686
  %cmp1017 = icmp slt i32 %inc1063, %385, !dbg !686
  br i1 %cmp1017, label %for.cond1020.preheader, label %for.end1064, !dbg !686

for.end1064:                                      ; preds = %for.inc1062, %for.cond1015.preheader.for.end1064_crit_edge
  %arrayidx1088.pre-phi = phi double** [ %arrayidx1088.pre, %for.cond1015.preheader.for.end1064_crit_edge ], [ %arrayidx1039, %for.inc1062 ], !dbg !698
  %arrayidx1079.pre-phi = phi double** [ %arrayidx1079.pre, %for.cond1015.preheader.for.end1064_crit_edge ], [ %arrayidx1035, %for.inc1062 ], !dbg !698
  %arrayidx1070.pre-phi = phi double** [ %arrayidx1070.pre, %for.cond1015.preheader.for.end1064_crit_edge ], [ %arrayidx1031, %for.inc1062 ], !dbg !698
  %387 = phi i32 [ %.pre2015, %for.cond1015.preheader.for.end1064_crit_edge ], [ %386, %for.inc1062 ]
  %388 = phi i32 [ %360, %for.cond1015.preheader.for.end1064_crit_edge ], [ %385, %for.inc1062 ]
  %389 = load i32* %arraydecay164.pre-phi, align 4, !dbg !698, !tbaa !384
  %mul1067 = mul i32 %389, %388, !dbg !698
  %mul1069 = mul i32 %mul1067, %387, !dbg !698
  %390 = load double** %arrayidx1070.pre-phi, align 16, !dbg !698, !tbaa !340
  %idx.ext1071 = sext i32 %mul1069 to i64, !dbg !698
  %idx.neg1072 = sub i64 0, %idx.ext1071, !dbg !698
  %add.ptr1073 = getelementptr inbounds double* %390, i64 %idx.neg1072, !dbg !698
  store double* %add.ptr1073, double** %arrayidx1070.pre-phi, align 16, !dbg !698, !tbaa !340
  %mul1076 = mul nsw i32 %387, %389, !dbg !698
  %mul1078 = mul nsw i32 %mul1076, %388, !dbg !698
  %391 = load double** %arrayidx1079.pre-phi, align 8, !dbg !698, !tbaa !340
  %idx.ext1080 = sext i32 %mul1078 to i64, !dbg !698
  %idx.neg1081 = sub i64 0, %idx.ext1080, !dbg !698
  %add.ptr1082 = getelementptr inbounds double* %391, i64 %idx.neg1081, !dbg !698
  store double* %add.ptr1082, double** %arrayidx1079.pre-phi, align 8, !dbg !698, !tbaa !340
  %392 = load double** %arrayidx1088.pre-phi, align 16, !dbg !698, !tbaa !340
  %add.ptr1091 = getelementptr inbounds double* %392, i64 %idx.neg1081, !dbg !698
  store double* %add.ptr1091, double** %arrayidx1088.pre-phi, align 16, !dbg !698, !tbaa !340
  br label %sw.epilog, !dbg !698

for.cond1098.preheader:                           ; preds = %for.cond1098.preheader.lr.ph, %for.inc1131
  %393 = phi i32 [ %360, %for.cond1098.preheader.lr.ph ], [ %408, %for.inc1131 ]
  %394 = phi i32 [ %.pre2002, %for.cond1098.preheader.lr.ph ], [ %409, %for.inc1131 ], !dbg !692
  %_typed_data1012.41900 = phi double* [ %359, %for.cond1098.preheader.lr.ph ], [ %_typed_data1012.5.lcssa, %for.inc1131 ]
  %_k1011.11899 = phi i32 [ 0, %for.cond1098.preheader.lr.ph ], [ %inc1132, %for.inc1131 ]
  %cmp11001893 = icmp sgt i32 %394, 0, !dbg !692
  br i1 %cmp11001893, label %for.cond1103.preheader.lr.ph, label %for.inc1131, !dbg !692

for.cond1103.preheader.lr.ph:                     ; preds = %for.cond1098.preheader
  %conv1111 = sitofp i32 %_k1011.11899 to double, !dbg !707
  br label %for.cond1103.preheader, !dbg !692

for.cond1103.preheader:                           ; preds = %for.cond1103.preheader.lr.ph, %for.end1126
  %_typed_data1012.51895 = phi double* [ %_typed_data1012.41900, %for.cond1103.preheader.lr.ph ], [ %_typed_data1012.6.lcssa, %for.end1126 ]
  %_j1010.11894 = phi i32 [ 0, %for.cond1103.preheader.lr.ph ], [ %inc1129, %for.end1126 ]
  %395 = load i32* %arraydecay164.pre-phi, align 4, !dbg !711, !tbaa !384
  %cmp11051888 = icmp sgt i32 %395, 0, !dbg !711
  %396 = load %struct._IO_FILE** %file.1, align 8, !dbg !707, !tbaa !340
  br i1 %cmp11051888, label %for.body1107.lr.ph, label %for.end1126, !dbg !711

for.body1107.lr.ph:                               ; preds = %for.cond1103.preheader
  %conv1110 = sitofp i32 %_j1010.11894 to double, !dbg !707
  br label %for.body1107, !dbg !711

for.body1107:                                     ; preds = %for.body1107.lr.ph, %if.end1122
  %397 = phi %struct._IO_FILE* [ %396, %for.body1107.lr.ph ], [ %406, %if.end1122 ]
  %_typed_data1012.61890 = phi double* [ %_typed_data1012.51895, %for.body1107.lr.ph ], [ %_typed_data1012.7, %if.end1122 ]
  %_i1009.11889 = phi i32 [ 0, %for.body1107.lr.ph ], [ %inc1125, %if.end1122 ]
  %conv1109 = sitofp i32 %_i1009.11889 to double, !dbg !707
  %incdec.ptr1112 = getelementptr inbounds double* %_typed_data1012.61890, i64 1, !dbg !707
  call void @llvm.dbg.value(metadata !{double* %incdec.ptr1112}, i64 0, metadata !321), !dbg !707
  %398 = load double* %_typed_data1012.61890, align 8, !dbg !707, !tbaa !379
  %call1113 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %397, i8* %arraydecay26.pre-phi, double %conv1109, double %conv1110, double %conv1111, double %398) #7, !dbg !707
  %399 = load i32* %vartype, align 4, !dbg !707, !tbaa !384
  %cmp1115 = icmp eq i32 %399, 12, !dbg !707
  br i1 %cmp1115, label %if.then1117, label %if.end1122, !dbg !707

if.then1117:                                      ; preds = %for.body1107
  %400 = load %struct._IO_FILE** %file.1, align 8, !dbg !712, !tbaa !340
  %401 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %400), !dbg !712
  %402 = load %struct._IO_FILE** %file.1, align 8, !dbg !712, !tbaa !340
  %incdec.ptr1120 = getelementptr inbounds double* %_typed_data1012.61890, i64 2, !dbg !712
  call void @llvm.dbg.value(metadata !{double* %incdec.ptr1120}, i64 0, metadata !321), !dbg !712
  %403 = load double* %incdec.ptr1112, align 8, !dbg !712, !tbaa !379
  %call1121 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %402, i8* %arraydecay7, double %403) #7, !dbg !712
  br label %if.end1122, !dbg !712

if.end1122:                                       ; preds = %if.then1117, %for.body1107
  %_typed_data1012.7 = phi double* [ %incdec.ptr1120, %if.then1117 ], [ %incdec.ptr1112, %for.body1107 ]
  %404 = load %struct._IO_FILE** %file.1, align 8, !dbg !707, !tbaa !340
  %fputc1569 = call i32 @fputc(i32 10, %struct._IO_FILE* %404), !dbg !707
  %inc1125 = add nsw i32 %_i1009.11889, 1, !dbg !711
  call void @llvm.dbg.value(metadata !{i32 %inc1125}, i64 0, metadata !317), !dbg !711
  %405 = load i32* %arraydecay164.pre-phi, align 4, !dbg !711, !tbaa !384
  %cmp1105 = icmp slt i32 %inc1125, %405, !dbg !711
  %406 = load %struct._IO_FILE** %file.1, align 8, !dbg !707, !tbaa !340
  br i1 %cmp1105, label %for.body1107, label %for.end1126, !dbg !711

for.end1126:                                      ; preds = %if.end1122, %for.cond1103.preheader
  %.lcssa1887 = phi %struct._IO_FILE* [ %396, %for.cond1103.preheader ], [ %406, %if.end1122 ]
  %_typed_data1012.6.lcssa = phi double* [ %_typed_data1012.51895, %for.cond1103.preheader ], [ %_typed_data1012.7, %if.end1122 ]
  %fputc1566 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1887), !dbg !714
  %inc1129 = add nsw i32 %_j1010.11894, 1, !dbg !692
  call void @llvm.dbg.value(metadata !{i32 %inc1129}, i64 0, metadata !319), !dbg !692
  %407 = load i32* %arrayidx1099, align 4, !dbg !692, !tbaa !384
  %cmp1100 = icmp slt i32 %inc1129, %407, !dbg !692
  br i1 %cmp1100, label %for.cond1103.preheader, label %for.cond1098.for.inc1131_crit_edge, !dbg !692

for.cond1098.for.inc1131_crit_edge:               ; preds = %for.end1126
  %.pre2003 = load i32* %arrayidx1016, align 4, !dbg !689, !tbaa !384
  br label %for.inc1131, !dbg !692

for.inc1131:                                      ; preds = %for.cond1098.for.inc1131_crit_edge, %for.cond1098.preheader
  %408 = phi i32 [ %.pre2003, %for.cond1098.for.inc1131_crit_edge ], [ %393, %for.cond1098.preheader ], !dbg !689
  %409 = phi i32 [ %407, %for.cond1098.for.inc1131_crit_edge ], [ %394, %for.cond1098.preheader ]
  %_typed_data1012.5.lcssa = phi double* [ %_typed_data1012.6.lcssa, %for.cond1098.for.inc1131_crit_edge ], [ %_typed_data1012.41900, %for.cond1098.preheader ]
  %inc1132 = add nsw i32 %_k1011.11899, 1, !dbg !689
  call void @llvm.dbg.value(metadata !{i32 %inc1132}, i64 0, metadata !320), !dbg !689
  %cmp1095 = icmp slt i32 %inc1132, %408, !dbg !689
  br i1 %cmp1095, label %for.cond1098.preheader, label %sw.epilog, !dbg !689

sw.bb1135:                                        ; preds = %for.end202, %for.end202
  call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !265), !dbg !715
  %410 = load i8** %data, align 8, !dbg !715, !tbaa !340
  %411 = bitcast i8* %410 to x86_fp80*, !dbg !715
  call void @llvm.dbg.value(metadata !{x86_fp80* %411}, i64 0, metadata !326), !dbg !715
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !325), !dbg !716
  %arrayidx1143 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2, !dbg !716
  %412 = load i32* %arrayidx1143, align 4, !dbg !716, !tbaa !384
  %cmp11441912 = icmp sgt i32 %412, 0, !dbg !716
  br i1 %tobool127, label %for.cond1142.preheader, label %for.cond1222.preheader, !dbg !715

for.cond1222.preheader:                           ; preds = %sw.bb1135
  br i1 %cmp11441912, label %for.cond1227.preheader.lr.ph, label %sw.epilog, !dbg !719

for.cond1227.preheader.lr.ph:                     ; preds = %for.cond1222.preheader
  %arrayidx1228 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !722
  %.pre2006 = load i32* %arrayidx1228, align 4, !dbg !722, !tbaa !384
  br label %for.cond1227.preheader, !dbg !719

for.cond1142.preheader:                           ; preds = %sw.bb1135
  %arrayidx1148 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1, !dbg !725
  br i1 %cmp11441912, label %for.cond1147.preheader.lr.ph, label %for.cond1142.preheader.for.end1193_crit_edge, !dbg !716

for.cond1142.preheader.for.end1193_crit_edge:     ; preds = %for.cond1142.preheader
  %.pre2016 = load i32* %arrayidx1148, align 4, !dbg !728, !tbaa !384
  %arrayidx1199.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !728
  %arrayidx1208.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !728
  %arrayidx1217.pre = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !728
  br label %for.end1193, !dbg !716

for.cond1147.preheader.lr.ph:                     ; preds = %for.cond1142.preheader
  %arrayidx1158 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0, !dbg !729
  %arrayidx1160 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0, !dbg !729
  %arrayidx1162 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1, !dbg !729
  %arrayidx1164 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1, !dbg !729
  %arrayidx1166 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2, !dbg !729
  %arrayidx1168 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2, !dbg !729
  %.pre2004 = load i32* %arrayidx1148, align 4, !dbg !725, !tbaa !384
  br label %for.cond1147.preheader, !dbg !716

for.cond1147.preheader:                           ; preds = %for.cond1147.preheader.lr.ph, %for.inc1191
  %413 = phi i32 [ %412, %for.cond1147.preheader.lr.ph ], [ %437, %for.inc1191 ]
  %414 = phi i32 [ %.pre2004, %for.cond1147.preheader.lr.ph ], [ %438, %for.inc1191 ], !dbg !725
  %_typed_data1139.01914 = phi x86_fp80* [ %411, %for.cond1147.preheader.lr.ph ], [ %_typed_data1139.1.lcssa, %for.inc1191 ]
  %_k1138.01913 = phi i32 [ 0, %for.cond1147.preheader.lr.ph ], [ %inc1192, %for.inc1191 ]
  %cmp11491907 = icmp sgt i32 %414, 0, !dbg !725
  br i1 %cmp11491907, label %for.cond1152.preheader, label %for.inc1191, !dbg !725

for.cond1152.preheader:                           ; preds = %for.cond1147.preheader, %for.end1186
  %_typed_data1139.11909 = phi x86_fp80* [ %_typed_data1139.2.lcssa, %for.end1186 ], [ %_typed_data1139.01914, %for.cond1147.preheader ]
  %_j1137.01908 = phi i32 [ %inc1189, %for.end1186 ], [ 0, %for.cond1147.preheader ]
  %415 = load i32* %arraydecay164.pre-phi, align 4, !dbg !733, !tbaa !384
  %cmp11541902 = icmp sgt i32 %415, 0, !dbg !733
  %416 = load %struct._IO_FILE** %file.1, align 8, !dbg !729, !tbaa !340
  br i1 %cmp11541902, label %for.body1156, label %for.end1186, !dbg !733

for.body1156:                                     ; preds = %for.cond1152.preheader, %if.end1182
  %417 = phi %struct._IO_FILE* [ %435, %if.end1182 ], [ %416, %for.cond1152.preheader ]
  %_typed_data1139.21904 = phi x86_fp80* [ %_typed_data1139.3, %if.end1182 ], [ %_typed_data1139.11909, %for.cond1152.preheader ]
  %_i1136.01903 = phi i32 [ %inc1185, %if.end1182 ], [ 0, %for.cond1152.preheader ]
  %418 = load double** %arrayidx1158, align 16, !dbg !729, !tbaa !340
  %incdec.ptr1159 = getelementptr inbounds double* %418, i64 1, !dbg !729
  store double* %incdec.ptr1159, double** %arrayidx1158, align 16, !dbg !729, !tbaa !340
  %419 = load double* %418, align 8, !dbg !729, !tbaa !379
  %420 = load double* %arrayidx1160, align 16, !dbg !729, !tbaa !379
  %add1161 = fadd double %419, %420, !dbg !729
  %421 = load double** %arrayidx1162, align 8, !dbg !729, !tbaa !340
  %incdec.ptr1163 = getelementptr inbounds double* %421, i64 1, !dbg !729
  store double* %incdec.ptr1163, double** %arrayidx1162, align 8, !dbg !729, !tbaa !340
  %422 = load double* %421, align 8, !dbg !729, !tbaa !379
  %423 = load double* %arrayidx1164, align 8, !dbg !729, !tbaa !379
  %add1165 = fadd double %422, %423, !dbg !729
  %424 = load double** %arrayidx1166, align 16, !dbg !729, !tbaa !340
  %incdec.ptr1167 = getelementptr inbounds double* %424, i64 1, !dbg !729
  store double* %incdec.ptr1167, double** %arrayidx1166, align 16, !dbg !729, !tbaa !340
  %425 = load double* %424, align 8, !dbg !729, !tbaa !379
  %426 = load double* %arrayidx1168, align 16, !dbg !729, !tbaa !379
  %add1169 = fadd double %425, %426, !dbg !729
  %incdec.ptr1170 = getelementptr inbounds x86_fp80* %_typed_data1139.21904, i64 1, !dbg !729
  call void @llvm.dbg.value(metadata !{x86_fp80* %incdec.ptr1170}, i64 0, metadata !326), !dbg !729
  %427 = load x86_fp80* %_typed_data1139.21904, align 16, !dbg !729, !tbaa !734
  %conv1171 = fptrunc x86_fp80 %427 to double, !dbg !729
  %call1172 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %417, i8* %arraydecay26.pre-phi, double %add1161, double %add1165, double %add1169, double %conv1171) #7, !dbg !729
  %428 = load i32* %vartype, align 4, !dbg !729, !tbaa !384
  %cmp1174 = icmp eq i32 %428, 13, !dbg !729
  br i1 %cmp1174, label %if.then1176, label %if.end1182, !dbg !729

if.then1176:                                      ; preds = %for.body1156
  %429 = load %struct._IO_FILE** %file.1, align 8, !dbg !735, !tbaa !340
  %430 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %429), !dbg !735
  %431 = load %struct._IO_FILE** %file.1, align 8, !dbg !735, !tbaa !340
  %incdec.ptr1179 = getelementptr inbounds x86_fp80* %_typed_data1139.21904, i64 2, !dbg !735
  call void @llvm.dbg.value(metadata !{x86_fp80* %incdec.ptr1179}, i64 0, metadata !326), !dbg !735
  %432 = load x86_fp80* %incdec.ptr1170, align 16, !dbg !735, !tbaa !734
  %conv1180 = fptrunc x86_fp80 %432 to double, !dbg !735
  %call1181 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %431, i8* %arraydecay7, double %conv1180) #7, !dbg !735
  br label %if.end1182, !dbg !735

if.end1182:                                       ; preds = %if.then1176, %for.body1156
  %_typed_data1139.3 = phi x86_fp80* [ %incdec.ptr1179, %if.then1176 ], [ %incdec.ptr1170, %for.body1156 ]
  %433 = load %struct._IO_FILE** %file.1, align 8, !dbg !729, !tbaa !340
  %fputc1563 = call i32 @fputc(i32 10, %struct._IO_FILE* %433), !dbg !729
  %inc1185 = add nsw i32 %_i1136.01903, 1, !dbg !733
  call void @llvm.dbg.value(metadata !{i32 %inc1185}, i64 0, metadata !322), !dbg !733
  %434 = load i32* %arraydecay164.pre-phi, align 4, !dbg !733, !tbaa !384
  %cmp1154 = icmp slt i32 %inc1185, %434, !dbg !733
  %435 = load %struct._IO_FILE** %file.1, align 8, !dbg !729, !tbaa !340
  br i1 %cmp1154, label %for.body1156, label %for.end1186, !dbg !733

for.end1186:                                      ; preds = %if.end1182, %for.cond1152.preheader
  %.lcssa1901 = phi %struct._IO_FILE* [ %416, %for.cond1152.preheader ], [ %435, %if.end1182 ]
  %_typed_data1139.2.lcssa = phi x86_fp80* [ %_typed_data1139.11909, %for.cond1152.preheader ], [ %_typed_data1139.3, %if.end1182 ]
  %fputc1560 = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1901), !dbg !737
  %inc1189 = add nsw i32 %_j1137.01908, 1, !dbg !725
  call void @llvm.dbg.value(metadata !{i32 %inc1189}, i64 0, metadata !324), !dbg !725
  %436 = load i32* %arrayidx1148, align 4, !dbg !725, !tbaa !384
  %cmp1149 = icmp slt i32 %inc1189, %436, !dbg !725
  br i1 %cmp1149, label %for.cond1152.preheader, label %for.cond1147.for.inc1191_crit_edge, !dbg !725

for.cond1147.for.inc1191_crit_edge:               ; preds = %for.end1186
  %.pre2005 = load i32* %arrayidx1143, align 4, !dbg !716, !tbaa !384
  br label %for.inc1191, !dbg !725

for.inc1191:                                      ; preds = %for.cond1147.for.inc1191_crit_edge, %for.cond1147.preheader
  %437 = phi i32 [ %.pre2005, %for.cond1147.for.inc1191_crit_edge ], [ %413, %for.cond1147.preheader ], !dbg !716
  %438 = phi i32 [ %436, %for.cond1147.for.inc1191_crit_edge ], [ %414, %for.cond1147.preheader ]
  %_typed_data1139.1.lcssa = phi x86_fp80* [ %_typed_data1139.2.lcssa, %for.cond1147.for.inc1191_crit_edge ], [ %_typed_data1139.01914, %for.cond1147.preheader ]
  %inc1192 = add nsw i32 %_k1138.01913, 1, !dbg !716
  call void @llvm.dbg.value(metadata !{i32 %inc1192}, i64 0, metadata !325), !dbg !716
  %cmp1144 = icmp slt i32 %inc1192, %437, !dbg !716
  br i1 %cmp1144, label %for.cond1147.preheader, label %for.end1193, !dbg !716

for.end1193:                                      ; preds = %for.inc1191, %for.cond1142.preheader.for.end1193_crit_edge
  %arrayidx1217.pre-phi = phi double** [ %arrayidx1217.pre, %for.cond1142.preheader.for.end1193_crit_edge ], [ %arrayidx1166, %for.inc1191 ], !dbg !728
  %arrayidx1208.pre-phi = phi double** [ %arrayidx1208.pre, %for.cond1142.preheader.for.end1193_crit_edge ], [ %arrayidx1162, %for.inc1191 ], !dbg !728
  %arrayidx1199.pre-phi = phi double** [ %arrayidx1199.pre, %for.cond1142.preheader.for.end1193_crit_edge ], [ %arrayidx1158, %for.inc1191 ], !dbg !728
  %439 = phi i32 [ %.pre2016, %for.cond1142.preheader.for.end1193_crit_edge ], [ %438, %for.inc1191 ]
  %440 = phi i32 [ %412, %for.cond1142.preheader.for.end1193_crit_edge ], [ %437, %for.inc1191 ]
  %441 = load i32* %arraydecay164.pre-phi, align 4, !dbg !728, !tbaa !384
  %mul1196 = mul i32 %441, %440, !dbg !728
  %mul1198 = mul i32 %mul1196, %439, !dbg !728
  %442 = load double** %arrayidx1199.pre-phi, align 16, !dbg !728, !tbaa !340
  %idx.ext1200 = sext i32 %mul1198 to i64, !dbg !728
  %idx.neg1201 = sub i64 0, %idx.ext1200, !dbg !728
  %add.ptr1202 = getelementptr inbounds double* %442, i64 %idx.neg1201, !dbg !728
  store double* %add.ptr1202, double** %arrayidx1199.pre-phi, align 16, !dbg !728, !tbaa !340
  %mul1205 = mul nsw i32 %439, %441, !dbg !728
  %mul1207 = mul nsw i32 %mul1205, %440, !dbg !728
  %443 = load double** %arrayidx1208.pre-phi, align 8, !dbg !728, !tbaa !340
  %idx.ext1209 = sext i32 %mul1207 to i64, !dbg !728
  %idx.neg1210 = sub i64 0, %idx.ext1209, !dbg !728
  %add.ptr1211 = getelementptr inbounds double* %443, i64 %idx.neg1210, !dbg !728
  store double* %add.ptr1211, double** %arrayidx1208.pre-phi, align 8, !dbg !728, !tbaa !340
  %444 = load double** %arrayidx1217.pre-phi, align 16, !dbg !728, !tbaa !340
  %add.ptr1220 = getelementptr inbounds double* %444, i64 %idx.neg1210, !dbg !728
  store double* %add.ptr1220, double** %arrayidx1217.pre-phi, align 16, !dbg !728, !tbaa !340
  br label %sw.epilog, !dbg !728

for.cond1227.preheader:                           ; preds = %for.cond1227.preheader.lr.ph, %for.inc1262
  %445 = phi i32 [ %412, %for.cond1227.preheader.lr.ph ], [ %460, %for.inc1262 ]
  %446 = phi i32 [ %.pre2006, %for.cond1227.preheader.lr.ph ], [ %461, %for.inc1262 ], !dbg !722
  %_typed_data1139.41930 = phi x86_fp80* [ %411, %for.cond1227.preheader.lr.ph ], [ %_typed_data1139.5.lcssa, %for.inc1262 ]
  %_k1138.11929 = phi i32 [ 0, %for.cond1227.preheader.lr.ph ], [ %inc1263, %for.inc1262 ]
  %cmp12291923 = icmp sgt i32 %446, 0, !dbg !722
  br i1 %cmp12291923, label %for.cond1232.preheader.lr.ph, label %for.inc1262, !dbg !722

for.cond1232.preheader.lr.ph:                     ; preds = %for.cond1227.preheader
  %conv1240 = sitofp i32 %_k1138.11929 to double, !dbg !738
  br label %for.cond1232.preheader, !dbg !722

for.cond1232.preheader:                           ; preds = %for.cond1232.preheader.lr.ph, %for.end1257
  %_typed_data1139.51925 = phi x86_fp80* [ %_typed_data1139.41930, %for.cond1232.preheader.lr.ph ], [ %_typed_data1139.6.lcssa, %for.end1257 ]
  %_j1137.11924 = phi i32 [ 0, %for.cond1232.preheader.lr.ph ], [ %inc1260, %for.end1257 ]
  %447 = load i32* %arraydecay164.pre-phi, align 4, !dbg !742, !tbaa !384
  %cmp12341918 = icmp sgt i32 %447, 0, !dbg !742
  %448 = load %struct._IO_FILE** %file.1, align 8, !dbg !738, !tbaa !340
  br i1 %cmp12341918, label %for.body1236.lr.ph, label %for.end1257, !dbg !742

for.body1236.lr.ph:                               ; preds = %for.cond1232.preheader
  %conv1239 = sitofp i32 %_j1137.11924 to double, !dbg !738
  br label %for.body1236, !dbg !742

for.body1236:                                     ; preds = %for.body1236.lr.ph, %if.end1253
  %449 = phi %struct._IO_FILE* [ %448, %for.body1236.lr.ph ], [ %458, %if.end1253 ]
  %_typed_data1139.61920 = phi x86_fp80* [ %_typed_data1139.51925, %for.body1236.lr.ph ], [ %_typed_data1139.7, %if.end1253 ]
  %_i1136.11919 = phi i32 [ 0, %for.body1236.lr.ph ], [ %inc1256, %if.end1253 ]
  %conv1238 = sitofp i32 %_i1136.11919 to double, !dbg !738
  %incdec.ptr1241 = getelementptr inbounds x86_fp80* %_typed_data1139.61920, i64 1, !dbg !738
  call void @llvm.dbg.value(metadata !{x86_fp80* %incdec.ptr1241}, i64 0, metadata !326), !dbg !738
  %450 = load x86_fp80* %_typed_data1139.61920, align 16, !dbg !738, !tbaa !734
  %conv1242 = fptrunc x86_fp80 %450 to double, !dbg !738
  %call1243 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %449, i8* %arraydecay26.pre-phi, double %conv1238, double %conv1239, double %conv1240, double %conv1242) #7, !dbg !738
  %451 = load i32* %vartype, align 4, !dbg !738, !tbaa !384
  %cmp1245 = icmp eq i32 %451, 13, !dbg !738
  br i1 %cmp1245, label %if.then1247, label %if.end1253, !dbg !738

if.then1247:                                      ; preds = %for.body1236
  %452 = load %struct._IO_FILE** %file.1, align 8, !dbg !743, !tbaa !340
  %453 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %452), !dbg !743
  %454 = load %struct._IO_FILE** %file.1, align 8, !dbg !743, !tbaa !340
  %incdec.ptr1250 = getelementptr inbounds x86_fp80* %_typed_data1139.61920, i64 2, !dbg !743
  call void @llvm.dbg.value(metadata !{x86_fp80* %incdec.ptr1250}, i64 0, metadata !326), !dbg !743
  %455 = load x86_fp80* %incdec.ptr1241, align 16, !dbg !743, !tbaa !734
  %conv1251 = fptrunc x86_fp80 %455 to double, !dbg !743
  %call1252 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %454, i8* %arraydecay7, double %conv1251) #7, !dbg !743
  br label %if.end1253, !dbg !743

if.end1253:                                       ; preds = %if.then1247, %for.body1236
  %_typed_data1139.7 = phi x86_fp80* [ %incdec.ptr1250, %if.then1247 ], [ %incdec.ptr1241, %for.body1236 ]
  %456 = load %struct._IO_FILE** %file.1, align 8, !dbg !738, !tbaa !340
  %fputc1557 = call i32 @fputc(i32 10, %struct._IO_FILE* %456), !dbg !738
  %inc1256 = add nsw i32 %_i1136.11919, 1, !dbg !742
  call void @llvm.dbg.value(metadata !{i32 %inc1256}, i64 0, metadata !322), !dbg !742
  %457 = load i32* %arraydecay164.pre-phi, align 4, !dbg !742, !tbaa !384
  %cmp1234 = icmp slt i32 %inc1256, %457, !dbg !742
  %458 = load %struct._IO_FILE** %file.1, align 8, !dbg !738, !tbaa !340
  br i1 %cmp1234, label %for.body1236, label %for.end1257, !dbg !742

for.end1257:                                      ; preds = %if.end1253, %for.cond1232.preheader
  %.lcssa1917 = phi %struct._IO_FILE* [ %448, %for.cond1232.preheader ], [ %458, %if.end1253 ]
  %_typed_data1139.6.lcssa = phi x86_fp80* [ %_typed_data1139.51925, %for.cond1232.preheader ], [ %_typed_data1139.7, %if.end1253 ]
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa1917), !dbg !745
  %inc1260 = add nsw i32 %_j1137.11924, 1, !dbg !722
  call void @llvm.dbg.value(metadata !{i32 %inc1260}, i64 0, metadata !324), !dbg !722
  %459 = load i32* %arrayidx1228, align 4, !dbg !722, !tbaa !384
  %cmp1229 = icmp slt i32 %inc1260, %459, !dbg !722
  br i1 %cmp1229, label %for.cond1232.preheader, label %for.cond1227.for.inc1262_crit_edge, !dbg !722

for.cond1227.for.inc1262_crit_edge:               ; preds = %for.end1257
  %.pre2007 = load i32* %arrayidx1143, align 4, !dbg !719, !tbaa !384
  br label %for.inc1262, !dbg !722

for.inc1262:                                      ; preds = %for.cond1227.for.inc1262_crit_edge, %for.cond1227.preheader
  %460 = phi i32 [ %.pre2007, %for.cond1227.for.inc1262_crit_edge ], [ %445, %for.cond1227.preheader ], !dbg !719
  %461 = phi i32 [ %459, %for.cond1227.for.inc1262_crit_edge ], [ %446, %for.cond1227.preheader ]
  %_typed_data1139.5.lcssa = phi x86_fp80* [ %_typed_data1139.6.lcssa, %for.cond1227.for.inc1262_crit_edge ], [ %_typed_data1139.41930, %for.cond1227.preheader ]
  %inc1263 = add nsw i32 %_k1138.11929, 1, !dbg !719
  call void @llvm.dbg.value(metadata !{i32 %inc1263}, i64 0, metadata !325), !dbg !719
  %cmp1224 = icmp slt i32 %inc1263, %460, !dbg !719
  br i1 %cmp1224, label %for.cond1227.preheader, label %sw.epilog, !dbg !719

sw.default:                                       ; preds = %for.end202
  %call1266 = call i32 @CCTK_Warn(i32 1, i32 452, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str34, i64 0, i64 0)) #7, !dbg !746
  br label %sw.epilog, !dbg !747

sw.epilog:                                        ; preds = %for.cond1222.preheader, %for.inc1262, %for.cond1093.preheader, %for.inc1131, %for.cond964.preheader, %for.inc1004, %for.cond843.preheader, %for.inc873, %for.cond733.preheader, %for.inc762, %for.cond623.preheader, %for.inc653, %for.cond504.preheader, %for.inc542, %for.cond386.preheader, %for.inc415, %for.cond276.preheader, %for.inc306, %for.end1193, %for.end1064, %for.end935, %for.end814, %for.end704, %for.end594, %for.end475, %for.end357, %for.end248, %sw.default
  %462 = load %struct._IO_FILE** %file.1, align 8, !dbg !748, !tbaa !340
  %call1267 = call i32 @fflush(%struct._IO_FILE* %462) #7, !dbg !748
  call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !265), !dbg !749
  %463 = load i8** %data, align 8, !dbg !749, !tbaa !340
  call void @free(i8* %463) #7, !dbg !749
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !123), !dbg !750
  br label %for.body1271, !dbg !750

for.body1271:                                     ; preds = %for.inc1279, %sw.epilog
  %indvars.iv1934 = phi i64 [ 0, %sw.epilog ], [ %indvars.iv.next1935, %for.inc1279 ]
  %arrayidx1273 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 %indvars.iv1934, !dbg !752
  %464 = load double** %arrayidx1273, align 8, !dbg !752, !tbaa !340
  %tobool1274 = icmp eq double* %464, null, !dbg !752
  br i1 %tobool1274, label %for.inc1279, label %if.then1275, !dbg !752

if.then1275:                                      ; preds = %for.body1271
  %465 = bitcast double* %464 to i8*, !dbg !754
  call void @free(i8* %465) #7, !dbg !754
  br label %for.inc1279, !dbg !756

for.inc1279:                                      ; preds = %for.body1271, %if.then1275
  %indvars.iv.next1935 = add i64 %indvars.iv1934, 1, !dbg !750
  %lftr.wideiv1936 = trunc i64 %indvars.iv.next1935 to i32, !dbg !750
  %exitcond1937 = icmp eq i32 %lftr.wideiv1936, 3, !dbg !750
  br i1 %exitcond1937, label %cleanup, label %for.body1271, !dbg !750

cleanup:                                          ; preds = %for.inc1279, %for.inc182, %if.end185, %if.then154, %if.then144, %if.then135, %if.then83, %if.then
  %retval.0 = phi i32 [ -3, %if.then135 ], [ -3, %if.then144 ], [ -3, %if.then154 ], [ -2, %if.then83 ], [ -1, %if.then ], [ 0, %if.end185 ], [ -3, %for.inc182 ], [ 0, %for.inc1279 ]
  call void @llvm.lifetime.end(i64 128, i8* %4) #3, !dbg !757
  call void @llvm.lifetime.end(i64 40, i8* %3) #3, !dbg !757
  ret i32 %retval.0, !dbg !758
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #4

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #4

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorageI(%struct.cGH*, i32) #4

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #4

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #4

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #5

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: optsize
declare i32 @CCTK_CoordRange(%struct.cGH*, double*, double*, i32, i8*, i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_CoordIndex(i32, i8*, i8*) #4

; Function Attrs: optsize
declare i8* @GetNamedData(%struct.PNamedData*, i8*) #4

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: optsize
declare i32 @IOUtil_RestartFromRecovery(%struct.cGH*) #4

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @IOUtil_AdvertiseFile(%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*) #4

; Function Attrs: optsize
declare i32 @CCTK_ParameterFilename(i32, i8*) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #5

; Function Attrs: optsize
declare i32 @Util_CurrentDate(i32, i8*) #4

; Function Attrs: optsize
declare i32 @Util_CurrentTime(i32, i8*) #4

; Function Attrs: optsize
declare i32 @StoreNamedData(%struct.PNamedData**, i8*, i8*) #4

; Function Attrs: optsize
declare i32 @Hyperslab_GetHyperslab(%struct.cGH*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i8**, i32*) #4

; Function Attrs: optsize
declare i32 @CCTK_StaggerDirIndex(i32, i32) #4

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !330, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_IOASCII_Write3D_c", metadata !"CCTKi_version_CactusBase_IOASCII_Write3D_c", metadata !"", i32 27, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_IOASCII_Write3D_c, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 27] [def] [CCTKi_version_CactusBase_IOASCII_Write3D_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IOASCII_Write3D", metadata !"IOASCII_Write3D", metadata !"", i32 131, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i8*)* @IOASCII_Write3D, null, null, metadata !53, i32 132} ; [ DW_TAG_subprogram ] [line 131] [def] [scope 132] [IOASCII_Write3D]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14, metadata !8}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !33, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !45, metadata !46}
!21 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!23 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!27 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!28 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!29 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!30 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!31 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!32 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!33 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!35 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!36 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!37 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!38 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!39 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!40 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!41 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !42} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !43} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!46 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !47} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!48 = metadata !{i32 786454, metadata !19, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!52 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !161, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !225, metadata !229, metadata !231, metadata !232, metadata !233, metadata !234, metadata !247, metadata !257, metadata !261, metadata !262, metadata !264, metadata !265, metadata !266, metadata !270, metadata !271, metadata !272, metadata !277, metadata !279, metadata !280, metadata !281, metadata !283, metadata !285, metadata !286, metadata !287, metadata !289, metadata !291, metadata !292, metadata !293, metadata !297, metadata !299, metadata !300, metadata !301, metadata !302, metadata !304, metadata !305, metadata !306, metadata !309, metadata !311, metadata !312, metadata !313, metadata !317, metadata !319, metadata !320, metadata !321, metadata !322, metadata !324, metadata !325, metadata !326}
!54 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777347, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 131]
!55 = metadata !{i32 786689, metadata !11, metadata !"vindex", metadata !5, i32 33554563, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 131]
!56 = metadata !{i32 786689, metadata !11, metadata !"alias", metadata !5, i32 50331779, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alias] [line 131]
!57 = metadata !{i32 786688, metadata !11, metadata !"out1D_xline_y", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_xline_y] [line 133]
!58 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!59 = metadata !{i32 786688, metadata !11, metadata !"out1D_xline_z", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_xline_z] [line 133]
!60 = metadata !{i32 786688, metadata !11, metadata !"out1D_yline_x", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_yline_x] [line 133]
!61 = metadata !{i32 786688, metadata !11, metadata !"out1D_yline_z", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_yline_z] [line 133]
!62 = metadata !{i32 786688, metadata !11, metadata !"out1D_zline_x", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_zline_x] [line 133]
!63 = metadata !{i32 786688, metadata !11, metadata !"out1D_zline_y", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_zline_y] [line 133]
!64 = metadata !{i32 786688, metadata !11, metadata !"out2D_xyplane_z", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_xyplane_z] [line 133]
!65 = metadata !{i32 786688, metadata !11, metadata !"out2D_xzplane_y", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_xzplane_y] [line 133]
!66 = metadata !{i32 786688, metadata !11, metadata !"out2D_yzplane_x", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_yzplane_x] [line 133]
!67 = metadata !{i32 786688, metadata !11, metadata !"out1D_style", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_style] [line 133]
!68 = metadata !{i32 786688, metadata !11, metadata !"out1D_vars", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_vars] [line 133]
!69 = metadata !{i32 786688, metadata !11, metadata !"out2D_style", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_style] [line 133]
!70 = metadata !{i32 786688, metadata !11, metadata !"out2D_vars", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_vars] [line 133]
!71 = metadata !{i32 786688, metadata !11, metadata !"out3D_style", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_style] [line 133]
!72 = metadata !{i32 786688, metadata !11, metadata !"out3D_vars", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_vars] [line 133]
!73 = metadata !{i32 786688, metadata !11, metadata !"out_format", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_format] [line 133]
!74 = metadata !{i32 786688, metadata !11, metadata !"out_style", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_style] [line 133]
!75 = metadata !{i32 786688, metadata !11, metadata !"outdir1D", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir1D] [line 133]
!76 = metadata !{i32 786688, metadata !11, metadata !"outdir2D", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir2D] [line 133]
!77 = metadata !{i32 786688, metadata !11, metadata !"outdir3D", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir3D] [line 133]
!78 = metadata !{i32 786688, metadata !11, metadata !"out1D_d", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_d] [line 133]
!79 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!80 = metadata !{i32 786688, metadata !11, metadata !"out1D_every", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_every] [line 133]
!81 = metadata !{i32 786688, metadata !11, metadata !"out1D_x", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_x] [line 133]
!82 = metadata !{i32 786688, metadata !11, metadata !"out1D_xline_yi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_xline_yi] [line 133]
!83 = metadata !{i32 786688, metadata !11, metadata !"out1D_xline_zi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_xline_zi] [line 133]
!84 = metadata !{i32 786688, metadata !11, metadata !"out1D_y", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_y] [line 133]
!85 = metadata !{i32 786688, metadata !11, metadata !"out1D_yline_xi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_yline_xi] [line 133]
!86 = metadata !{i32 786688, metadata !11, metadata !"out1D_yline_zi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_yline_zi] [line 133]
!87 = metadata !{i32 786688, metadata !11, metadata !"out1D_z", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_z] [line 133]
!88 = metadata !{i32 786688, metadata !11, metadata !"out1D_zline_xi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_zline_xi] [line 133]
!89 = metadata !{i32 786688, metadata !11, metadata !"out1D_zline_yi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_zline_yi] [line 133]
!90 = metadata !{i32 786688, metadata !11, metadata !"out2D_every", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_every] [line 133]
!91 = metadata !{i32 786688, metadata !11, metadata !"out2D_xyplane_zi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_xyplane_zi] [line 133]
!92 = metadata !{i32 786688, metadata !11, metadata !"out2D_xzplane_yi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_xzplane_yi] [line 133]
!93 = metadata !{i32 786688, metadata !11, metadata !"out2D_yzplane_xi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_yzplane_xi] [line 133]
!94 = metadata !{i32 786688, metadata !11, metadata !"out3D_every", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_every] [line 133]
!95 = metadata !{i32 786688, metadata !11, metadata !"outdir", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir] [line 133]
!96 = metadata !{i32 786688, metadata !11, metadata !"out_every", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_every] [line 133]
!97 = metadata !{i32 786688, metadata !11, metadata !"out_xline_y", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_y] [line 133]
!98 = metadata !{i32 786688, metadata !11, metadata !"out_xline_z", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_z] [line 133]
!99 = metadata !{i32 786688, metadata !11, metadata !"out_yline_x", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_x] [line 133]
!100 = metadata !{i32 786688, metadata !11, metadata !"out_yline_z", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_z] [line 133]
!101 = metadata !{i32 786688, metadata !11, metadata !"out_zline_x", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_x] [line 133]
!102 = metadata !{i32 786688, metadata !11, metadata !"out_zline_y", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_y] [line 133]
!103 = metadata !{i32 786688, metadata !11, metadata !"out_xline_yi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_yi] [line 133]
!104 = metadata !{i32 786688, metadata !11, metadata !"out_xline_zi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_zi] [line 133]
!105 = metadata !{i32 786688, metadata !11, metadata !"out_yline_xi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_xi] [line 133]
!106 = metadata !{i32 786688, metadata !11, metadata !"out_yline_zi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_zi] [line 133]
!107 = metadata !{i32 786688, metadata !11, metadata !"out_zline_xi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_xi] [line 133]
!108 = metadata !{i32 786688, metadata !11, metadata !"out_zline_yi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_yi] [line 133]
!109 = metadata !{i32 786688, metadata !11, metadata !"out_yzplane_x", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yzplane_x] [line 133]
!110 = metadata !{i32 786688, metadata !11, metadata !"out_xzplane_y", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xzplane_y] [line 133]
!111 = metadata !{i32 786688, metadata !11, metadata !"out_xyplane_z", metadata !5, i32 133, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xyplane_z] [line 133]
!112 = metadata !{i32 786688, metadata !11, metadata !"out_xyplane_zi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xyplane_zi] [line 133]
!113 = metadata !{i32 786688, metadata !11, metadata !"out_xzplane_yi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xzplane_yi] [line 133]
!114 = metadata !{i32 786688, metadata !11, metadata !"out_yzplane_xi", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yzplane_xi] [line 133]
!115 = metadata !{i32 786688, metadata !11, metadata !"newverbose", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newverbose] [line 133]
!116 = metadata !{i32 786688, metadata !11, metadata !"new_filename_scheme", metadata !5, i32 133, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_filename_scheme] [line 133]
!117 = metadata !{i32 786688, metadata !11, metadata !"out_fileinfo", metadata !5, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_fileinfo] [line 133]
!118 = metadata !{i32 786688, metadata !11, metadata !"cctk_pdummy_pointer", metadata !5, i32 133, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 133]
!119 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!120 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!121 = metadata !{i32 786688, metadata !11, metadata !"myproc", metadata !5, i32 134, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myproc] [line 134]
!122 = metadata !{i32 786688, metadata !11, metadata !"groupindex", metadata !5, i32 134, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupindex] [line 134]
!123 = metadata !{i32 786688, metadata !11, metadata !"dir", metadata !5, i32 134, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 134]
!124 = metadata !{i32 786688, metadata !11, metadata !"have_coords", metadata !5, i32 134, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [have_coords] [line 134]
!125 = metadata !{i32 786688, metadata !11, metadata !"myGH", metadata !5, i32 135, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myGH] [line 135]
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from asciiioGH]
!127 = metadata !{i32 786454, metadata !1, null, metadata !"asciiioGH", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [asciiioGH] [line 55, size 0, align 0, offset 0] [from IOASCIIGH]
!128 = metadata !{i32 786451, metadata !129, null, metadata !"IOASCIIGH", i32 20, i64 1024, i64 64, i32 0, i32 0, null, metadata !130, i32 0, null, null} ; [ DW_TAG_structure_type ] [IOASCIIGH] [line 20, size 1024, align 64, offset 0] [from ]
!129 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/../include/ioASCIIGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !155, metadata !156, metadata !157, metadata !160}
!131 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"out1D_every", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [out1D_every] [line 23, size 32, align 32, offset 0] [from int]
!132 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"out2D_every", i32 24, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [out2D_every] [line 24, size 32, align 32, offset 32] [from int]
!133 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"out3D_every", i32 25, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [out3D_every] [line 25, size 32, align 32, offset 64] [from int]
!134 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"do_out1D", i32 28, i64 64, i64 64, i64 128, i32 0, metadata !135} ; [ DW_TAG_member ] [do_out1D] [line 28, size 64, align 64, offset 128] [from ]
!135 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!136 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"do_out2D", i32 29, i64 64, i64 64, i64 192, i32 0, metadata !135} ; [ DW_TAG_member ] [do_out2D] [line 29, size 64, align 64, offset 192] [from ]
!137 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"do_out3D", i32 30, i64 64, i64 64, i64 256, i32 0, metadata !135} ; [ DW_TAG_member ] [do_out3D] [line 30, size 64, align 64, offset 256] [from ]
!138 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"outdir1D", i32 33, i64 64, i64 64, i64 320, i32 0, metadata !135} ; [ DW_TAG_member ] [outdir1D] [line 33, size 64, align 64, offset 320] [from ]
!139 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"outdir2D", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !135} ; [ DW_TAG_member ] [outdir2D] [line 34, size 64, align 64, offset 384] [from ]
!140 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"outdir3D", i32 35, i64 64, i64 64, i64 448, i32 0, metadata !135} ; [ DW_TAG_member ] [outdir3D] [line 35, size 64, align 64, offset 448] [from ]
!141 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"out1D_last", i32 38, i64 64, i64 64, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [out1D_last] [line 38, size 64, align 64, offset 512] [from ]
!142 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"out2D_last", i32 39, i64 64, i64 64, i64 576, i32 0, metadata !24} ; [ DW_TAG_member ] [out2D_last] [line 39, size 64, align 64, offset 576] [from ]
!143 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"out3D_last", i32 40, i64 64, i64 64, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [out3D_last] [line 40, size 64, align 64, offset 640] [from ]
!144 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"filenameList1D", i32 43, i64 64, i64 64, i64 704, i32 0, metadata !145} ; [ DW_TAG_member ] [filenameList1D] [line 43, size 64, align 64, offset 704] [from ]
!145 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pNamedData]
!146 = metadata !{i32 786454, metadata !129, null, metadata !"pNamedData", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_typedef ] [pNamedData] [line 26, size 0, align 0, offset 0] [from PNamedData]
!147 = metadata !{i32 786451, metadata !148, null, metadata !"PNamedData", i32 18, i64 256, i64 64, i32 0, i32 0, null, metadata !149, i32 0, null, null} ; [ DW_TAG_structure_type ] [PNamedData] [line 18, size 256, align 64, offset 0] [from ]
!148 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/../include/StoreNamedData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!149 = metadata !{metadata !150, metadata !152, metadata !153, metadata !154}
!150 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"last", i32 20, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_member ] [last] [line 20, size 64, align 64, offset 0] [from ]
!151 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PNamedData]
!152 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"next", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !151} ; [ DW_TAG_member ] [next] [line 21, size 64, align 64, offset 64] [from ]
!153 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"name", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !135} ; [ DW_TAG_member ] [name] [line 23, size 64, align 64, offset 128] [from ]
!154 = metadata !{i32 786445, metadata !148, metadata !147, metadata !"data", i32 25, i64 64, i64 64, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 25, size 64, align 64, offset 192] [from ]
!155 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"fileList_2D", i32 44, i64 64, i64 64, i64 768, i32 0, metadata !145} ; [ DW_TAG_member ] [fileList_2D] [line 44, size 64, align 64, offset 768] [from ]
!156 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"fileList_3D", i32 45, i64 64, i64 64, i64 832, i32 0, metadata !145} ; [ DW_TAG_member ] [fileList_3D] [line 45, size 64, align 64, offset 832] [from ]
!157 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"spxyz", i32 49, i64 64, i64 64, i64 896, i32 0, metadata !158} ; [ DW_TAG_member ] [spxyz] [line 49, size 64, align 64, offset 896] [from ]
!158 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!159 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!160 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"sp2xyz", i32 53, i64 64, i64 64, i64 960, i32 0, metadata !159} ; [ DW_TAG_member ] [sp2xyz] [line 53, size 64, align 64, offset 960] [from ]
!161 = metadata !{i32 786688, metadata !11, metadata !"header_fmt_string", metadata !5, i32 136, metadata !162, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [header_fmt_string] [line 136]
!162 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 240, i64 8, i32 0, i32 0, metadata !10, metadata !163, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 240, align 8, offset 0] [from char]
!163 = metadata !{metadata !164}
!164 = metadata !{i32 786465, i64 0, i64 30}      ; [ DW_TAG_subrange_type ] [0, 29]
!165 = metadata !{i32 786688, metadata !11, metadata !"out_real_format", metadata !5, i32 137, metadata !162, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_real_format] [line 137]
!166 = metadata !{i32 786688, metadata !11, metadata !"time_fmt_string", metadata !5, i32 138, metadata !162, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time_fmt_string] [line 138]
!167 = metadata !{i32 786688, metadata !11, metadata !"data_fmt_string_int", metadata !5, i32 139, metadata !162, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data_fmt_string_int] [line 139]
!168 = metadata !{i32 786688, metadata !11, metadata !"data_fmt_string_real", metadata !5, i32 140, metadata !162, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data_fmt_string_real] [line 140]
!169 = metadata !{i32 786688, metadata !11, metadata !"file", metadata !5, i32 141, metadata !170, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file] [line 141]
!170 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!171 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!172 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !173} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!173 = metadata !{i32 786451, metadata !174, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !175, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!174 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!175 = metadata !{metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !196, metadata !197, metadata !198, metadata !199, metadata !202, metadata !204, metadata !206, metadata !210, metadata !211, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !220, metadata !221}
!176 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!177 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !135} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!178 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !135} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!179 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !135} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!180 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !135} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!181 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !135} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!182 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !135} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!183 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !135} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!184 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !135} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!185 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !135} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!186 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !135} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!187 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !135} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!188 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !189} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!189 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !190} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!190 = metadata !{i32 786451, metadata !174, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !191, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!191 = metadata !{metadata !192, metadata !193, metadata !195}
!192 = metadata !{i32 786445, metadata !174, metadata !190, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !189} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!193 = metadata !{i32 786445, metadata !174, metadata !190, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !194} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!194 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !173} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!195 = metadata !{i32 786445, metadata !174, metadata !190, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!196 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !194} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!197 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!198 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!199 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !200} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!200 = metadata !{i32 786454, metadata !174, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !201} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!201 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!202 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !203} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!203 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!204 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !205} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!205 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!206 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !207} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!207 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !10, metadata !208, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!208 = metadata !{metadata !209}
!209 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!210 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !44} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!211 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !212} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!212 = metadata !{i32 786454, metadata !174, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !201} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!213 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !44} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!214 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !44} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!215 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !44} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!216 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !44} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!217 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !218} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!218 = metadata !{i32 786454, metadata !174, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!219 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!220 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!221 = metadata !{i32 786445, metadata !174, metadata !173, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !222} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!222 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !10, metadata !223, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!223 = metadata !{metadata !224}
!224 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!225 = metadata !{i32 786688, metadata !11, metadata !"coord_index", metadata !5, i32 142, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_index] [line 142]
!226 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !14, metadata !227, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!227 = metadata !{metadata !228}
!228 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!229 = metadata !{i32 786688, metadata !11, metadata !"coord_lower", metadata !5, i32 143, metadata !230, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_lower] [line 143]
!230 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !32, metadata !227, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from double]
!231 = metadata !{i32 786688, metadata !11, metadata !"dummy", metadata !5, i32 144, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dummy] [line 144]
!232 = metadata !{i32 786688, metadata !11, metadata !"filename", metadata !5, i32 145, metadata !135, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 145]
!233 = metadata !{i32 786688, metadata !11, metadata !"fullname", metadata !5, i32 146, metadata !135, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fullname] [line 146]
!234 = metadata !{i32 786688, metadata !11, metadata !"groupinfo", metadata !5, i32 147, metadata !235, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupinfo] [line 147]
!235 = metadata !{i32 786454, metadata !1, null, metadata !"cGroup", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_typedef ] [cGroup] [line 24, size 0, align 0, offset 0] [from ]
!236 = metadata !{i32 786451, metadata !237, null, metadata !"", i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !238, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 256, align 32, offset 0] [from ]
!237 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/../include/cctk_Groups.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!238 = metadata !{metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246}
!239 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"grouptype", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [grouptype] [line 16, size 32, align 32, offset 0] [from int]
!240 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"vartype", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [vartype] [line 17, size 32, align 32, offset 32] [from int]
!241 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"disttype", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [disttype] [line 18, size 32, align 32, offset 64] [from int]
!242 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"stagtype", i32 19, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [stagtype] [line 19, size 32, align 32, offset 96] [from int]
!243 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"dim", i32 20, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 20, size 32, align 32, offset 128] [from int]
!244 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"numvars", i32 21, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [numvars] [line 21, size 32, align 32, offset 160] [from int]
!245 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"numtimelevels", i32 22, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [numtimelevels] [line 22, size 32, align 32, offset 192] [from int]
!246 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"vectorgroup", i32 23, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [vectorgroup] [line 23, size 32, align 32, offset 224] [from int]
!247 = metadata !{i32 786688, metadata !11, metadata !"advertised_file", metadata !5, i32 148, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [advertised_file] [line 148]
!248 = metadata !{i32 786454, metadata !1, null, metadata !"ioAdvertisedFileDesc", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !249} ; [ DW_TAG_typedef ] [ioAdvertisedFileDesc] [line 36, size 0, align 0, offset 0] [from ]
!249 = metadata !{i32 786451, metadata !250, null, metadata !"", i32 29, i64 320, i64 64, i32 0, i32 0, null, metadata !251, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 29, size 320, align 64, offset 0] [from ]
!250 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/../include/ioutil_AdvertisedFiles.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!251 = metadata !{metadata !252, metadata !253, metadata !254, metadata !255, metadata !256}
!252 = metadata !{i32 786445, metadata !250, metadata !249, metadata !"thorn", i32 31, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [thorn] [line 31, size 64, align 64, offset 0] [from ]
!253 = metadata !{i32 786445, metadata !250, metadata !249, metadata !"varname", i32 32, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [varname] [line 32, size 64, align 64, offset 64] [from ]
!254 = metadata !{i32 786445, metadata !250, metadata !249, metadata !"mimetype", i32 33, i64 64, i64 64, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [mimetype] [line 33, size 64, align 64, offset 128] [from ]
!255 = metadata !{i32 786445, metadata !250, metadata !249, metadata !"slice", i32 34, i64 64, i64 64, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [slice] [line 34, size 64, align 64, offset 192] [from ]
!256 = metadata !{i32 786445, metadata !250, metadata !249, metadata !"description", i32 35, i64 64, i64 64, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [description] [line 35, size 64, align 64, offset 256] [from ]
!257 = metadata !{i32 786688, metadata !11, metadata !"buffer", metadata !5, i32 149, metadata !258, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 149]
!258 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !10, metadata !259, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!259 = metadata !{metadata !260}
!260 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!261 = metadata !{i32 786688, metadata !11, metadata !"hsize", metadata !5, i32 154, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hsize] [line 154]
!262 = metadata !{i32 786688, metadata !11, metadata !"coord_data", metadata !5, i32 155, metadata !263, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_data] [line 155]
!263 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !34, metadata !227, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from ]
!264 = metadata !{i32 786688, metadata !11, metadata !"stagger_offset", metadata !5, i32 155, metadata !230, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stagger_offset] [line 155]
!265 = metadata !{i32 786688, metadata !11, metadata !"data", metadata !5, i32 156, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 156]
!266 = metadata !{i32 786688, metadata !267, metadata !"_i", metadata !5, i32 383, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 383]
!267 = metadata !{i32 786443, metadata !1, metadata !268, i32 383, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!268 = metadata !{i32 786443, metadata !1, metadata !269, i32 381, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!269 = metadata !{i32 786443, metadata !1, metadata !11, i32 369, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!270 = metadata !{i32 786688, metadata !267, metadata !"_j", metadata !5, i32 383, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 383]
!271 = metadata !{i32 786688, metadata !267, metadata !"_k", metadata !5, i32 383, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_k] [line 383]
!272 = metadata !{i32 786688, metadata !267, metadata !"_typed_data", metadata !5, i32 383, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_typed_data] [line 383]
!273 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !274} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!274 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !275} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CCTK_BYTE]
!275 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_BYTE", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !276} ; [ DW_TAG_typedef ] [CCTK_BYTE] [line 59, size 0, align 0, offset 0] [from unsigned char]
!276 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!277 = metadata !{i32 786688, metadata !278, metadata !"_i", metadata !5, i32 388, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 388]
!278 = metadata !{i32 786443, metadata !1, metadata !268, i32 388, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!279 = metadata !{i32 786688, metadata !278, metadata !"_j", metadata !5, i32 388, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 388]
!280 = metadata !{i32 786688, metadata !278, metadata !"_k", metadata !5, i32 388, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_k] [line 388]
!281 = metadata !{i32 786688, metadata !278, metadata !"_typed_data", metadata !5, i32 388, metadata !282, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_typed_data] [line 388]
!282 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!283 = metadata !{i32 786688, metadata !284, metadata !"_i", metadata !5, i32 394, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 394]
!284 = metadata !{i32 786443, metadata !1, metadata !268, i32 394, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!285 = metadata !{i32 786688, metadata !284, metadata !"_j", metadata !5, i32 394, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 394]
!286 = metadata !{i32 786688, metadata !284, metadata !"_k", metadata !5, i32 394, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_k] [line 394]
!287 = metadata !{i32 786688, metadata !284, metadata !"_typed_data", metadata !5, i32 394, metadata !288, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_typed_data] [line 394]
!288 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!289 = metadata !{i32 786688, metadata !290, metadata !"_i", metadata !5, i32 402, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 402]
!290 = metadata !{i32 786443, metadata !1, metadata !268, i32 402, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!291 = metadata !{i32 786688, metadata !290, metadata !"_j", metadata !5, i32 402, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 402]
!292 = metadata !{i32 786688, metadata !290, metadata !"_k", metadata !5, i32 402, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_k] [line 402]
!293 = metadata !{i32 786688, metadata !290, metadata !"_typed_data", metadata !5, i32 402, metadata !294, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_typed_data] [line 402]
!294 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !295} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!295 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !296} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from short]
!296 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!297 = metadata !{i32 786688, metadata !298, metadata !"_i", metadata !5, i32 409, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 409]
!298 = metadata !{i32 786443, metadata !1, metadata !268, i32 409, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!299 = metadata !{i32 786688, metadata !298, metadata !"_j", metadata !5, i32 409, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 409]
!300 = metadata !{i32 786688, metadata !298, metadata !"_k", metadata !5, i32 409, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_k] [line 409]
!301 = metadata !{i32 786688, metadata !298, metadata !"_typed_data", metadata !5, i32 409, metadata !282, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_typed_data] [line 409]
!302 = metadata !{i32 786688, metadata !303, metadata !"_i", metadata !5, i32 416, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 416]
!303 = metadata !{i32 786443, metadata !1, metadata !268, i32 416, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!304 = metadata !{i32 786688, metadata !303, metadata !"_j", metadata !5, i32 416, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 416]
!305 = metadata !{i32 786688, metadata !303, metadata !"_k", metadata !5, i32 416, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_k] [line 416]
!306 = metadata !{i32 786688, metadata !303, metadata !"_typed_data", metadata !5, i32 416, metadata !307, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_typed_data] [line 416]
!307 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !308} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!308 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !201} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from long int]
!309 = metadata !{i32 786688, metadata !310, metadata !"_i", metadata !5, i32 424, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 424]
!310 = metadata !{i32 786443, metadata !1, metadata !268, i32 424, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!311 = metadata !{i32 786688, metadata !310, metadata !"_j", metadata !5, i32 424, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 424]
!312 = metadata !{i32 786688, metadata !310, metadata !"_k", metadata !5, i32 424, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_k] [line 424]
!313 = metadata !{i32 786688, metadata !310, metadata !"_typed_data", metadata !5, i32 424, metadata !314, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_typed_data] [line 424]
!314 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !315} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!315 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !316} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from float]
!316 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!317 = metadata !{i32 786688, metadata !318, metadata !"_i", metadata !5, i32 434, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 434]
!318 = metadata !{i32 786443, metadata !1, metadata !268, i32 434, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!319 = metadata !{i32 786688, metadata !318, metadata !"_j", metadata !5, i32 434, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 434]
!320 = metadata !{i32 786688, metadata !318, metadata !"_k", metadata !5, i32 434, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_k] [line 434]
!321 = metadata !{i32 786688, metadata !318, metadata !"_typed_data", metadata !5, i32 434, metadata !288, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_typed_data] [line 434]
!322 = metadata !{i32 786688, metadata !323, metadata !"_i", metadata !5, i32 444, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 444]
!323 = metadata !{i32 786443, metadata !1, metadata !268, i32 444, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!324 = metadata !{i32 786688, metadata !323, metadata !"_j", metadata !5, i32 444, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 444]
!325 = metadata !{i32 786688, metadata !323, metadata !"_k", metadata !5, i32 444, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_k] [line 444]
!326 = metadata !{i32 786688, metadata !323, metadata !"_typed_data", metadata !5, i32 444, metadata !327, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_typed_data] [line 444]
!327 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !328} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!328 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !329} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from long double]
!329 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!330 = metadata !{metadata !331, metadata !333, metadata !334, metadata !335, metadata !336}
!331 = metadata !{i32 786484, i32 0, metadata !11, metadata !"directions", metadata !"directions", metadata !"", metadata !5, i32 150, metadata !332, i32 1, i32 1, [3 x i32]* @IOASCII_Write3D.directions, null} ; [ DW_TAG_variable ] [directions] [line 150] [local] [def]
!332 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !79, metadata !227, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from ]
!333 = metadata !{i32 786484, i32 0, metadata !11, metadata !"origin", metadata !"origin", metadata !"", metadata !5, i32 151, metadata !332, i32 1, i32 1, [3 x i32]* @IOASCII_Write3D.origin, null} ; [ DW_TAG_variable ] [origin] [line 151] [local] [def]
!334 = metadata !{i32 786484, i32 0, metadata !11, metadata !"lengths", metadata !"lengths", metadata !"", metadata !5, i32 152, metadata !332, i32 1, i32 1, [3 x i32]* @IOASCII_Write3D.lengths, null} ; [ DW_TAG_variable ] [lengths] [line 152] [local] [def]
!335 = metadata !{i32 786484, i32 0, metadata !11, metadata !"downsamples", metadata !"downsamples", metadata !"", metadata !5, i32 153, metadata !332, i32 1, i32 1, [3 x i32]* @IOASCII_Write3D.downsamples, null} ; [ DW_TAG_variable ] [downsamples] [line 153] [local] [def]
!336 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 26, metadata !8, i32 1, i32 1, null, null}
!337 = metadata !{i32 27, i32 0, metadata !4, null}
!338 = metadata !{i32 131, i32 0, metadata !11, null}
!339 = metadata !{i32 133, i32 0, metadata !11, null}
!340 = metadata !{metadata !"any pointer", metadata !341}
!341 = metadata !{metadata !"omnipotent char", metadata !342}
!342 = metadata !{metadata !"Simple C/C++ TBAA"}
!343 = metadata !{i32 136, i32 0, metadata !11, null}
!344 = metadata !{i32 137, i32 0, metadata !11, null}
!345 = metadata !{i32 138, i32 0, metadata !11, null}
!346 = metadata !{i32 139, i32 0, metadata !11, null}
!347 = metadata !{i32 140, i32 0, metadata !11, null}
!348 = metadata !{i32 142, i32 0, metadata !11, null}
!349 = metadata !{i32 143, i32 0, metadata !11, null}
!350 = metadata !{i32 144, i32 0, metadata !11, null}
!351 = metadata !{i32 147, i32 0, metadata !11, null}
!352 = metadata !{i32 148, i32 0, metadata !11, null}
!353 = metadata !{i32 149, i32 0, metadata !11, null}
!354 = metadata !{i32 154, i32 0, metadata !11, null}
!355 = metadata !{i32 155, i32 0, metadata !11, null}
!356 = metadata !{i32 156, i32 0, metadata !11, null}
!357 = metadata !{%struct._IO_FILE** null}
!358 = metadata !{i32 160, i32 0, metadata !11, null}
!359 = metadata !{i8* null}
!360 = metadata !{i32 161, i32 0, metadata !11, null}
!361 = metadata !{i32 164, i32 0, metadata !11, null}
!362 = metadata !{i32 165, i32 0, metadata !11, null}
!363 = metadata !{i32 168, i32 0, metadata !11, null}
!364 = metadata !{i32 170, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !11, i32 169, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!366 = metadata !{i32 171, i32 0, metadata !365, null}
!367 = metadata !{i32 173, i32 0, metadata !365, null}
!368 = metadata !{i32 174, i32 0, metadata !365, null}
!369 = metadata !{i32 178, i32 0, metadata !11, null}
!370 = metadata !{i32 181, i32 0, metadata !11, null}
!371 = metadata !{i32 182, i32 0, metadata !11, null}
!372 = metadata !{i32 183, i32 0, metadata !11, null}
!373 = metadata !{i32 184, i32 0, metadata !11, null}
!374 = metadata !{i32 191, i32 0, metadata !11, null}
!375 = metadata !{i32 193, i32 0, metadata !11, null}
!376 = metadata !{i32 186, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !11, i32 185, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!378 = metadata !{i32 187, i32 0, metadata !377, null}
!379 = metadata !{metadata !"double", metadata !341}
!380 = metadata !{i32 188, i32 0, metadata !377, null}
!381 = metadata !{i32 189, i32 0, metadata !377, null}
!382 = metadata !{i32 190, i32 0, metadata !377, null}
!383 = metadata !{i32 197, i32 0, metadata !11, null}
!384 = metadata !{metadata !"int", metadata !341}
!385 = metadata !{i32 202, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !387, i32 201, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!387 = metadata !{i32 786443, metadata !1, metadata !388, i32 200, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!388 = metadata !{i32 786443, metadata !1, metadata !11, i32 198, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!389 = metadata !{i32 200, i32 0, metadata !387, null}
!390 = metadata !{i32 203, i32 0, metadata !386, null}
!391 = metadata !{i32 204, i32 0, metadata !386, null}
!392 = metadata !{i32 207, i32 0, metadata !388, null}
!393 = metadata !{i32 209, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !388, i32 208, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!395 = metadata !{i32 212, i32 0, metadata !394, null}
!396 = metadata !{i32 221, i32 0, metadata !11, null}
!397 = metadata !{i32 224, i32 0, metadata !11, null}
!398 = metadata !{i32 227, i32 0, metadata !399, null}
!399 = metadata !{i32 786443, metadata !1, metadata !11, i32 225, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!400 = metadata !{i32 228, i32 0, metadata !399, null}
!401 = metadata !{i32 230, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !399, i32 229, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!403 = metadata !{i32 231, i32 0, metadata !402, null}
!404 = metadata !{i32 234, i32 0, metadata !402, null}
!405 = metadata !{i32 238, i32 0, metadata !402, null}
!406 = metadata !{i32 240, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !402, i32 239, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!408 = metadata !{i32 241, i32 0, metadata !407, null}
!409 = metadata !{i32 244, i32 0, metadata !410, null}
!410 = metadata !{i32 786443, metadata !1, metadata !402, i32 243, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!411 = metadata !{i32 248, i32 0, metadata !402, null}
!412 = metadata !{i32 249, i32 0, metadata !402, null}
!413 = metadata !{i32 251, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !1, metadata !402, i32 250, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!415 = metadata !{i32 252, i32 0, metadata !414, null}
!416 = metadata !{i32 255, i32 0, metadata !402, null}
!417 = metadata !{i32 257, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !402, i32 256, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!419 = metadata !{i32 259, i32 0, metadata !402, null}
!420 = metadata !{i32 261, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !402, i32 260, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!422 = metadata !{i32 263, i32 0, metadata !421, null}
!423 = metadata !{i32 269, i32 0, metadata !402, null}
!424 = metadata !{i32 270, i32 0, metadata !402, null}
!425 = metadata !{i32 271, i32 0, metadata !402, null}
!426 = metadata !{i32 272, i32 0, metadata !402, null}
!427 = metadata !{i32 273, i32 0, metadata !402, null}
!428 = metadata !{i32 275, i32 0, metadata !402, null}
!429 = metadata !{i32 277, i32 0, metadata !402, null}
!430 = metadata !{i32 278, i32 0, metadata !402, null}
!431 = metadata !{i32 280, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !402, i32 279, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!433 = metadata !{i32 281, i32 0, metadata !432, null}
!434 = metadata !{i32 282, i32 0, metadata !432, null}
!435 = metadata !{i32 283, i32 0, metadata !432, null}
!436 = metadata !{i32 284, i32 0, metadata !402, null}
!437 = metadata !{i32 285, i32 0, metadata !402, null}
!438 = metadata !{i32 287, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !1, metadata !402, i32 286, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!440 = metadata !{i32 288, i32 0, metadata !439, null}
!441 = metadata !{i32 289, i32 0, metadata !439, null}
!442 = metadata !{i32 290, i32 0, metadata !439, null}
!443 = metadata !{i32 291, i32 0, metadata !439, null}
!444 = metadata !{i32 292, i32 0, metadata !439, null}
!445 = metadata !{i32 293, i32 0, metadata !402, null}
!446 = metadata !{i32 294, i32 0, metadata !402, null}
!447 = metadata !{i32 296, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !402, i32 295, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!449 = metadata !{i32 297, i32 0, metadata !448, null}
!450 = metadata !{i32 301, i32 0, metadata !399, null}
!451 = metadata !{i32 303, i32 0, metadata !399, null}
!452 = metadata !{i32 304, i32 0, metadata !399, null}
!453 = metadata !{i32 305, i32 0, metadata !399, null}
!454 = metadata !{i32 308, i32 0, metadata !11, null}
!455 = metadata !{i32 311, i32 0, metadata !456, null}
!456 = metadata !{i32 786443, metadata !1, metadata !11, i32 309, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!457 = metadata !{i32 315, i32 0, metadata !458, null}
!458 = metadata !{i32 786443, metadata !1, metadata !456, i32 314, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!459 = metadata !{i32 317, i32 0, metadata !458, null}
!460 = metadata !{i32 321, i32 0, metadata !456, null}
!461 = metadata !{i32 325, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !456, i32 324, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!463 = metadata !{i32 327, i32 0, metadata !462, null}
!464 = metadata !{i32 328, i32 0, metadata !462, null}
!465 = metadata !{i32 332, i32 0, metadata !456, null}
!466 = metadata !{i32 336, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !456, i32 335, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!468 = metadata !{i32 338, i32 0, metadata !467, null}
!469 = metadata !{i32 339, i32 0, metadata !467, null}
!470 = metadata !{i32 340, i32 0, metadata !467, null}
!471 = metadata !{i32 350, i32 0, metadata !11, null}
!472 = metadata !{i32 346, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !11, i32 344, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!474 = metadata !{i32 353, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !1, metadata !11, i32 352, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!476 = metadata !{i32 354, i32 0, metadata !475, null}
!477 = metadata !{i32 356, i32 0, metadata !475, null}
!478 = metadata !{i32 357, i32 0, metadata !479, null}
!479 = metadata !{i32 786443, metadata !1, metadata !475, i32 357, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!480 = metadata !{i32 359, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !479, i32 358, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!482 = metadata !{i32 361, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !481, i32 360, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!484 = metadata !{i32 362, i32 0, metadata !483, null}
!485 = metadata !{i32 368, i32 0, metadata !11, null}
!486 = metadata !{i32 373, i32 0, metadata !487, null}
!487 = metadata !{i32 786443, metadata !1, metadata !488, i32 372, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!488 = metadata !{i32 786443, metadata !1, metadata !269, i32 371, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!489 = metadata !{i32 371, i32 0, metadata !488, null}
!490 = metadata !{i32 378, i32 0, metadata !269, null}
!491 = metadata !{i32 380, i32 0, metadata !269, null}
!492 = metadata !{i32 383, i32 0, metadata !267, null}
!493 = metadata !{i32 383, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !495, i32 383, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!495 = metadata !{i32 786443, metadata !1, metadata !267, i32 383, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!496 = metadata !{i32 383, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !498, i32 383, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!498 = metadata !{i32 786443, metadata !1, metadata !267, i32 383, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!499 = metadata !{i32 383, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !501, i32 383, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!501 = metadata !{i32 786443, metadata !1, metadata !497, i32 383, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!502 = metadata !{i32 383, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !504, i32 383, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!504 = metadata !{i32 786443, metadata !1, metadata !494, i32 383, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!505 = metadata !{i32 383, i32 0, metadata !495, null}
!506 = metadata !{i32 383, i32 0, metadata !507, null}
!507 = metadata !{i32 786443, metadata !1, metadata !508, i32 383, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!508 = metadata !{i32 786443, metadata !1, metadata !509, i32 383, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!509 = metadata !{i32 786443, metadata !1, metadata !503, i32 383, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!510 = metadata !{i32 383, i32 0, metadata !508, null}
!511 = metadata !{i32 383, i32 0, metadata !509, null}
!512 = metadata !{i32 383, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !514, i32 383, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!514 = metadata !{i32 786443, metadata !1, metadata !515, i32 383, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!515 = metadata !{i32 786443, metadata !1, metadata !500, i32 383, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!516 = metadata !{i32 383, i32 0, metadata !514, null}
!517 = metadata !{i32 383, i32 0, metadata !515, null}
!518 = metadata !{i32 388, i32 0, metadata !278, null}
!519 = metadata !{i32 388, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !521, i32 388, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!521 = metadata !{i32 786443, metadata !1, metadata !278, i32 388, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!522 = metadata !{i32 388, i32 0, metadata !523, null}
!523 = metadata !{i32 786443, metadata !1, metadata !524, i32 388, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!524 = metadata !{i32 786443, metadata !1, metadata !278, i32 388, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!525 = metadata !{i32 388, i32 0, metadata !526, null}
!526 = metadata !{i32 786443, metadata !1, metadata !527, i32 388, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!527 = metadata !{i32 786443, metadata !1, metadata !523, i32 388, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!528 = metadata !{i32 388, i32 0, metadata !529, null}
!529 = metadata !{i32 786443, metadata !1, metadata !530, i32 388, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!530 = metadata !{i32 786443, metadata !1, metadata !520, i32 388, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!531 = metadata !{i32 388, i32 0, metadata !521, null}
!532 = metadata !{i32 388, i32 0, metadata !533, null}
!533 = metadata !{i32 786443, metadata !1, metadata !534, i32 388, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!534 = metadata !{i32 786443, metadata !1, metadata !535, i32 388, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!535 = metadata !{i32 786443, metadata !1, metadata !529, i32 388, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!536 = metadata !{i32 388, i32 0, metadata !534, null}
!537 = metadata !{i32 388, i32 0, metadata !535, null}
!538 = metadata !{i32 388, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !540, i32 388, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!540 = metadata !{i32 786443, metadata !1, metadata !541, i32 388, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!541 = metadata !{i32 786443, metadata !1, metadata !526, i32 388, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!542 = metadata !{i32 388, i32 0, metadata !540, null}
!543 = metadata !{i32 388, i32 0, metadata !541, null}
!544 = metadata !{i32 394, i32 0, metadata !284, null}
!545 = metadata !{i32 394, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !547, i32 394, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!547 = metadata !{i32 786443, metadata !1, metadata !284, i32 394, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!548 = metadata !{i32 394, i32 0, metadata !549, null}
!549 = metadata !{i32 786443, metadata !1, metadata !550, i32 394, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!550 = metadata !{i32 786443, metadata !1, metadata !284, i32 394, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!551 = metadata !{i32 394, i32 0, metadata !552, null}
!552 = metadata !{i32 786443, metadata !1, metadata !553, i32 394, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!553 = metadata !{i32 786443, metadata !1, metadata !549, i32 394, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!554 = metadata !{i32 394, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !556, i32 394, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!556 = metadata !{i32 786443, metadata !1, metadata !546, i32 394, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!557 = metadata !{i32 394, i32 0, metadata !547, null}
!558 = metadata !{i32 394, i32 0, metadata !559, null}
!559 = metadata !{i32 786443, metadata !1, metadata !560, i32 394, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!560 = metadata !{i32 786443, metadata !1, metadata !561, i32 394, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!561 = metadata !{i32 786443, metadata !1, metadata !555, i32 394, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!562 = metadata !{i32 394, i32 0, metadata !560, null}
!563 = metadata !{i32 394, i32 0, metadata !564, null}
!564 = metadata !{i32 786443, metadata !1, metadata !559, i32 394, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!565 = metadata !{i32 394, i32 0, metadata !561, null}
!566 = metadata !{i32 394, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !568, i32 394, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!568 = metadata !{i32 786443, metadata !1, metadata !569, i32 394, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!569 = metadata !{i32 786443, metadata !1, metadata !552, i32 394, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!570 = metadata !{i32 394, i32 0, metadata !568, null}
!571 = metadata !{i32 394, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !1, metadata !567, i32 394, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!573 = metadata !{i32 394, i32 0, metadata !569, null}
!574 = metadata !{i32 402, i32 0, metadata !290, null}
!575 = metadata !{i32 402, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !1, metadata !577, i32 402, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!577 = metadata !{i32 786443, metadata !1, metadata !290, i32 402, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!578 = metadata !{i32 402, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !580, i32 402, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!580 = metadata !{i32 786443, metadata !1, metadata !290, i32 402, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!581 = metadata !{i32 402, i32 0, metadata !582, null}
!582 = metadata !{i32 786443, metadata !1, metadata !583, i32 402, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!583 = metadata !{i32 786443, metadata !1, metadata !579, i32 402, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!584 = metadata !{i32 402, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !586, i32 402, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!586 = metadata !{i32 786443, metadata !1, metadata !576, i32 402, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!587 = metadata !{i32 402, i32 0, metadata !577, null}
!588 = metadata !{i32 402, i32 0, metadata !589, null}
!589 = metadata !{i32 786443, metadata !1, metadata !590, i32 402, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!590 = metadata !{i32 786443, metadata !1, metadata !591, i32 402, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!591 = metadata !{i32 786443, metadata !1, metadata !585, i32 402, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!592 = metadata !{i32 402, i32 0, metadata !590, null}
!593 = metadata !{metadata !"short", metadata !341}
!594 = metadata !{i32 402, i32 0, metadata !591, null}
!595 = metadata !{i32 402, i32 0, metadata !596, null}
!596 = metadata !{i32 786443, metadata !1, metadata !597, i32 402, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!597 = metadata !{i32 786443, metadata !1, metadata !598, i32 402, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!598 = metadata !{i32 786443, metadata !1, metadata !582, i32 402, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!599 = metadata !{i32 402, i32 0, metadata !597, null}
!600 = metadata !{i32 402, i32 0, metadata !598, null}
!601 = metadata !{i32 409, i32 0, metadata !298, null}
!602 = metadata !{i32 409, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !1, metadata !604, i32 409, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!604 = metadata !{i32 786443, metadata !1, metadata !298, i32 409, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!605 = metadata !{i32 409, i32 0, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !607, i32 409, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!607 = metadata !{i32 786443, metadata !1, metadata !298, i32 409, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!608 = metadata !{i32 409, i32 0, metadata !609, null}
!609 = metadata !{i32 786443, metadata !1, metadata !610, i32 409, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!610 = metadata !{i32 786443, metadata !1, metadata !606, i32 409, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!611 = metadata !{i32 409, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !613, i32 409, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!613 = metadata !{i32 786443, metadata !1, metadata !603, i32 409, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!614 = metadata !{i32 409, i32 0, metadata !604, null}
!615 = metadata !{i32 409, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !617, i32 409, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!617 = metadata !{i32 786443, metadata !1, metadata !618, i32 409, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!618 = metadata !{i32 786443, metadata !1, metadata !612, i32 409, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!619 = metadata !{i32 409, i32 0, metadata !617, null}
!620 = metadata !{i32 409, i32 0, metadata !618, null}
!621 = metadata !{i32 409, i32 0, metadata !622, null}
!622 = metadata !{i32 786443, metadata !1, metadata !623, i32 409, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!623 = metadata !{i32 786443, metadata !1, metadata !624, i32 409, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!624 = metadata !{i32 786443, metadata !1, metadata !609, i32 409, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!625 = metadata !{i32 409, i32 0, metadata !623, null}
!626 = metadata !{i32 409, i32 0, metadata !624, null}
!627 = metadata !{i32 416, i32 0, metadata !303, null}
!628 = metadata !{i32 416, i32 0, metadata !629, null}
!629 = metadata !{i32 786443, metadata !1, metadata !630, i32 416, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!630 = metadata !{i32 786443, metadata !1, metadata !303, i32 416, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!631 = metadata !{i32 416, i32 0, metadata !632, null}
!632 = metadata !{i32 786443, metadata !1, metadata !633, i32 416, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!633 = metadata !{i32 786443, metadata !1, metadata !303, i32 416, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!634 = metadata !{i32 416, i32 0, metadata !635, null}
!635 = metadata !{i32 786443, metadata !1, metadata !636, i32 416, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!636 = metadata !{i32 786443, metadata !1, metadata !632, i32 416, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!637 = metadata !{i32 416, i32 0, metadata !638, null}
!638 = metadata !{i32 786443, metadata !1, metadata !639, i32 416, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!639 = metadata !{i32 786443, metadata !1, metadata !629, i32 416, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!640 = metadata !{i32 416, i32 0, metadata !630, null}
!641 = metadata !{i32 416, i32 0, metadata !642, null}
!642 = metadata !{i32 786443, metadata !1, metadata !643, i32 416, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!643 = metadata !{i32 786443, metadata !1, metadata !644, i32 416, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!644 = metadata !{i32 786443, metadata !1, metadata !638, i32 416, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!645 = metadata !{i32 416, i32 0, metadata !643, null}
!646 = metadata !{metadata !"long", metadata !341}
!647 = metadata !{i32 416, i32 0, metadata !644, null}
!648 = metadata !{i32 416, i32 0, metadata !649, null}
!649 = metadata !{i32 786443, metadata !1, metadata !650, i32 416, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!650 = metadata !{i32 786443, metadata !1, metadata !651, i32 416, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!651 = metadata !{i32 786443, metadata !1, metadata !635, i32 416, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!652 = metadata !{i32 416, i32 0, metadata !650, null}
!653 = metadata !{i32 416, i32 0, metadata !651, null}
!654 = metadata !{i32 424, i32 0, metadata !310, null}
!655 = metadata !{i32 424, i32 0, metadata !656, null}
!656 = metadata !{i32 786443, metadata !1, metadata !657, i32 424, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!657 = metadata !{i32 786443, metadata !1, metadata !310, i32 424, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!658 = metadata !{i32 424, i32 0, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !660, i32 424, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!660 = metadata !{i32 786443, metadata !1, metadata !310, i32 424, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!661 = metadata !{i32 424, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !663, i32 424, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!663 = metadata !{i32 786443, metadata !1, metadata !659, i32 424, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!664 = metadata !{i32 424, i32 0, metadata !665, null}
!665 = metadata !{i32 786443, metadata !1, metadata !666, i32 424, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!666 = metadata !{i32 786443, metadata !1, metadata !656, i32 424, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!667 = metadata !{i32 424, i32 0, metadata !657, null}
!668 = metadata !{i32 424, i32 0, metadata !669, null}
!669 = metadata !{i32 786443, metadata !1, metadata !670, i32 424, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!670 = metadata !{i32 786443, metadata !1, metadata !671, i32 424, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!671 = metadata !{i32 786443, metadata !1, metadata !665, i32 424, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!672 = metadata !{i32 424, i32 0, metadata !670, null}
!673 = metadata !{metadata !"float", metadata !341}
!674 = metadata !{i32 424, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !669, i32 424, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!676 = metadata !{i32 424, i32 0, metadata !671, null}
!677 = metadata !{i32 424, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !679, i32 424, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!679 = metadata !{i32 786443, metadata !1, metadata !680, i32 424, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!680 = metadata !{i32 786443, metadata !1, metadata !662, i32 424, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!681 = metadata !{i32 424, i32 0, metadata !679, null}
!682 = metadata !{i32 424, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !678, i32 424, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!684 = metadata !{i32 424, i32 0, metadata !680, null}
!685 = metadata !{i32 434, i32 0, metadata !318, null}
!686 = metadata !{i32 434, i32 0, metadata !687, null}
!687 = metadata !{i32 786443, metadata !1, metadata !688, i32 434, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!688 = metadata !{i32 786443, metadata !1, metadata !318, i32 434, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!689 = metadata !{i32 434, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !691, i32 434, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!691 = metadata !{i32 786443, metadata !1, metadata !318, i32 434, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!692 = metadata !{i32 434, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !1, metadata !694, i32 434, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!694 = metadata !{i32 786443, metadata !1, metadata !690, i32 434, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!695 = metadata !{i32 434, i32 0, metadata !696, null}
!696 = metadata !{i32 786443, metadata !1, metadata !697, i32 434, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!697 = metadata !{i32 786443, metadata !1, metadata !687, i32 434, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!698 = metadata !{i32 434, i32 0, metadata !688, null}
!699 = metadata !{i32 434, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !1, metadata !701, i32 434, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!701 = metadata !{i32 786443, metadata !1, metadata !702, i32 434, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!702 = metadata !{i32 786443, metadata !1, metadata !696, i32 434, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!703 = metadata !{i32 434, i32 0, metadata !701, null}
!704 = metadata !{i32 434, i32 0, metadata !705, null}
!705 = metadata !{i32 786443, metadata !1, metadata !700, i32 434, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!706 = metadata !{i32 434, i32 0, metadata !702, null}
!707 = metadata !{i32 434, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !709, i32 434, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!709 = metadata !{i32 786443, metadata !1, metadata !710, i32 434, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!710 = metadata !{i32 786443, metadata !1, metadata !693, i32 434, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!711 = metadata !{i32 434, i32 0, metadata !709, null}
!712 = metadata !{i32 434, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !708, i32 434, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!714 = metadata !{i32 434, i32 0, metadata !710, null}
!715 = metadata !{i32 444, i32 0, metadata !323, null}
!716 = metadata !{i32 444, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !718, i32 444, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!718 = metadata !{i32 786443, metadata !1, metadata !323, i32 444, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!719 = metadata !{i32 444, i32 0, metadata !720, null}
!720 = metadata !{i32 786443, metadata !1, metadata !721, i32 444, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!721 = metadata !{i32 786443, metadata !1, metadata !323, i32 444, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!722 = metadata !{i32 444, i32 0, metadata !723, null}
!723 = metadata !{i32 786443, metadata !1, metadata !724, i32 444, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!724 = metadata !{i32 786443, metadata !1, metadata !720, i32 444, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!725 = metadata !{i32 444, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !727, i32 444, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!727 = metadata !{i32 786443, metadata !1, metadata !717, i32 444, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!728 = metadata !{i32 444, i32 0, metadata !718, null}
!729 = metadata !{i32 444, i32 0, metadata !730, null}
!730 = metadata !{i32 786443, metadata !1, metadata !731, i32 444, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!731 = metadata !{i32 786443, metadata !1, metadata !732, i32 444, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!732 = metadata !{i32 786443, metadata !1, metadata !726, i32 444, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!733 = metadata !{i32 444, i32 0, metadata !731, null}
!734 = metadata !{metadata !"long double", metadata !341}
!735 = metadata !{i32 444, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !730, i32 444, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!737 = metadata !{i32 444, i32 0, metadata !732, null}
!738 = metadata !{i32 444, i32 0, metadata !739, null}
!739 = metadata !{i32 786443, metadata !1, metadata !740, i32 444, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!740 = metadata !{i32 786443, metadata !1, metadata !741, i32 444, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!741 = metadata !{i32 786443, metadata !1, metadata !723, i32 444, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!742 = metadata !{i32 444, i32 0, metadata !740, null}
!743 = metadata !{i32 444, i32 0, metadata !744, null}
!744 = metadata !{i32 786443, metadata !1, metadata !739, i32 444, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!745 = metadata !{i32 444, i32 0, metadata !741, null}
!746 = metadata !{i32 452, i32 0, metadata !268, null}
!747 = metadata !{i32 453, i32 0, metadata !268, null}
!748 = metadata !{i32 457, i32 0, metadata !269, null}
!749 = metadata !{i32 460, i32 0, metadata !269, null}
!750 = metadata !{i32 461, i32 0, metadata !751, null}
!751 = metadata !{i32 786443, metadata !1, metadata !269, i32 461, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!752 = metadata !{i32 463, i32 0, metadata !753, null}
!753 = metadata !{i32 786443, metadata !1, metadata !751, i32 462, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!754 = metadata !{i32 465, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !753, i32 464, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c]
!756 = metadata !{i32 466, i32 0, metadata !755, null}
!757 = metadata !{i32 472, i32 0, metadata !11, null}
!758 = metadata !{i32 473, i32 0, metadata !11, null}
