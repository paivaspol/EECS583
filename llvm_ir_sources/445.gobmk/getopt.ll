; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/utils/getopt.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.gg_option = type { i8*, i32, i32*, i32 }

@gg_optind = global i32 1, align 4
@gg_opterr = global i32 1, align 4
@gg_optopt = global i32 63, align 4
@gg_optarg = common global i8* null, align 8
@__getopt_initialized = common global i32 0, align 4
@nextchar = internal unnamed_addr global i8* null, align 8
@last_nonopt = internal unnamed_addr global i32 0, align 4
@first_nonopt = internal unnamed_addr global i32 0, align 4
@ordering = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [30 x i8] c"%s: option `%s' is ambiguous\0A\00", align 1
@.str2 = private unnamed_addr constant [45 x i8] c"%s: option `--%s' doesn't allow an argument\0A\00", align 1
@.str3 = private unnamed_addr constant [45 x i8] c"%s: option `%c%s' doesn't allow an argument\0A\00", align 1
@.str4 = private unnamed_addr constant [38 x i8] c"%s: option `%s' requires an argument\0A\00", align 1
@.str5 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `--%s'\0A\00", align 1
@.str6 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `%c%s'\0A\00", align 1
@.str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@posixly_correct = internal unnamed_addr global i8* null, align 8
@.str8 = private unnamed_addr constant [26 x i8] c"%s: illegal option -- %c\0A\00", align 1
@.str9 = private unnamed_addr constant [26 x i8] c"%s: invalid option -- %c\0A\00", align 1
@.str10 = private unnamed_addr constant [39 x i8] c"%s: option requires an argument -- %c\0A\00", align 1
@.str11 = private unnamed_addr constant [33 x i8] c"%s: option `-W %s' is ambiguous\0A\00", align 1
@.str12 = private unnamed_addr constant [46 x i8] c"%s: option `-W %s' doesn't allow an argument\0A\00", align 1
@.str13 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @getopt_internal(i32 %argc, i8** %argv, i8* readonly %optstring, %struct.gg_option* readonly %longopts, i32* %longind, i32 %long_only) #0 {
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !34, metadata !114), !dbg !115
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !35, metadata !114), !dbg !116
  tail call void @llvm.dbg.value(metadata i8* %optstring, i64 0, metadata !36, metadata !114), !dbg !117
  tail call void @llvm.dbg.value(metadata %struct.gg_option* %longopts, i64 0, metadata !37, metadata !114), !dbg !118
  tail call void @llvm.dbg.value(metadata i32* %longind, i64 0, metadata !38, metadata !114), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %long_only, i64 0, metadata !39, metadata !114), !dbg !120
  store i8* null, i8** @gg_optarg, align 8, !dbg !121, !tbaa !122
  %1 = load i32* @gg_optind, align 4, !dbg !126, !tbaa !128
  %2 = icmp ne i32 %1, 0, !dbg !130
  %3 = load i32* @__getopt_initialized, align 4
  %4 = icmp ne i32 %3, 0, !dbg !131
  %or.cond = and i1 %2, %4, !dbg !132
  br i1 %or.cond, label %20, label %5, !dbg !132

; <label>:5                                       ; preds = %0
  %6 = icmp eq i32 %1, 0, !dbg !133
  br i1 %6, label %7, label %8, !dbg !136

; <label>:7                                       ; preds = %5
  store i32 1, i32* @gg_optind, align 4, !dbg !137, !tbaa !128
  br label %8, !dbg !138

; <label>:8                                       ; preds = %7, %5
  %9 = phi i32 [ 1, %7 ], [ %1, %5 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !72, metadata !114) #5, !dbg !139
  tail call void @llvm.dbg.value(metadata i8** null, i64 0, metadata !73, metadata !114) #5, !dbg !141
  store i32 %9, i32* @last_nonopt, align 4, !dbg !142, !tbaa !128
  store i32 %9, i32* @first_nonopt, align 4, !dbg !143, !tbaa !128
  store i8* null, i8** @nextchar, align 8, !dbg !144, !tbaa !122
  %10 = tail call i8* (i8*, ...)* bitcast (i8* (...)* @getenv to i8* (i8*, ...)*)(i8* getelementptr inbounds ([16 x i8]* @.str13, i64 0, i64 0)) #6, !dbg !145
  store i8* %10, i8** @posixly_correct, align 8, !dbg !146, !tbaa !122
  %11 = load i8* %optstring, align 1, !dbg !147, !tbaa !149
  switch i8 %11, label %16 [
    i8 45, label %12
    i8 43, label %14
  ], !dbg !150

; <label>:12                                      ; preds = %8
  store i32 2, i32* @ordering, align 4, !dbg !151, !tbaa !149
  %13 = getelementptr inbounds i8* %optstring, i64 1, !dbg !153
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !74, metadata !114) #5, !dbg !154
  br label %_getopt_initialize.exit, !dbg !155

; <label>:14                                      ; preds = %8
  store i32 0, i32* @ordering, align 4, !dbg !156, !tbaa !149
  %15 = getelementptr inbounds i8* %optstring, i64 1, !dbg !159
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !74, metadata !114) #5, !dbg !154
  br label %_getopt_initialize.exit, !dbg !160

; <label>:16                                      ; preds = %8
  %17 = icmp eq i8* %10, null, !dbg !161
  br i1 %17, label %19, label %18, !dbg !163

; <label>:18                                      ; preds = %16
  store i32 0, i32* @ordering, align 4, !dbg !164, !tbaa !149
  br label %_getopt_initialize.exit, !dbg !165

; <label>:19                                      ; preds = %16
  store i32 1, i32* @ordering, align 4, !dbg !166, !tbaa !149
  br label %_getopt_initialize.exit, !dbg !167

_getopt_initialize.exit:                          ; preds = %12, %14, %18, %19
  %.0.i = phi i8* [ %13, %12 ], [ %15, %14 ], [ %optstring, %18 ], [ %optstring, %19 ], !dbg !167
  tail call void @llvm.dbg.value(metadata i8* %.0.i, i64 0, metadata !36, metadata !114), !dbg !117
  store i32 1, i32* @__getopt_initialized, align 4, !dbg !168, !tbaa !128
  br label %20, !dbg !169

; <label>:20                                      ; preds = %0, %_getopt_initialize.exit
  %.014 = phi i8* [ %optstring, %0 ], [ %.0.i, %_getopt_initialize.exit ]
  %21 = load i8** @nextchar, align 8, !dbg !170, !tbaa !122
  %22 = icmp eq i8* %21, null, !dbg !172
  br i1 %22, label %26, label %23, !dbg !173

; <label>:23                                      ; preds = %20
  %24 = load i8* %21, align 1, !dbg !174, !tbaa !149
  %25 = icmp eq i8 %24, 0, !dbg !175
  br i1 %25, label %26, label %105, !dbg !176

; <label>:26                                      ; preds = %23, %20
  %27 = load i32* @last_nonopt, align 4, !dbg !177, !tbaa !128
  %28 = load i32* @gg_optind, align 4, !dbg !180, !tbaa !128
  %29 = icmp sgt i32 %27, %28, !dbg !181
  br i1 %29, label %30, label %31, !dbg !182

; <label>:30                                      ; preds = %26
  store i32 %28, i32* @last_nonopt, align 4, !dbg !183, !tbaa !128
  br label %31, !dbg !184

; <label>:31                                      ; preds = %30, %26
  %32 = phi i32 [ %28, %30 ], [ %27, %26 ]
  %33 = load i32* @first_nonopt, align 4, !dbg !185, !tbaa !128
  %34 = icmp sgt i32 %33, %28, !dbg !187
  br i1 %34, label %35, label %36, !dbg !188

; <label>:35                                      ; preds = %31
  store i32 %28, i32* @first_nonopt, align 4, !dbg !189, !tbaa !128
  br label %36, !dbg !190

; <label>:36                                      ; preds = %35, %31
  %37 = phi i32 [ %28, %35 ], [ %33, %31 ]
  %38 = load i32* @ordering, align 4, !dbg !191, !tbaa !149
  %39 = icmp eq i32 %38, 1, !dbg !193
  br i1 %39, label %40, label %61, !dbg !194

; <label>:40                                      ; preds = %36
  %41 = icmp eq i32 %37, %32, !dbg !195
  %42 = icmp eq i32 %32, %28, !dbg !198
  %or.cond16 = or i1 %41, %42, !dbg !199
  br i1 %or.cond16, label %44, label %43, !dbg !199

; <label>:43                                      ; preds = %40
  tail call fastcc void @exchange(i8** %argv) #7, !dbg !200
  %.pre = load i32* @gg_optind, align 4, !dbg !201, !tbaa !128
  br label %.preheader, !dbg !200

; <label>:44                                      ; preds = %40
  br i1 %42, label %.preheader, label %45, !dbg !202

; <label>:45                                      ; preds = %44
  store i32 %28, i32* @first_nonopt, align 4, !dbg !203, !tbaa !128
  br label %.preheader, !dbg !205

.preheader:                                       ; preds = %45, %43, %44
  %46 = phi i32 [ %28, %45 ], [ %.pre, %43 ], [ %28, %44 ]
  %47 = icmp slt i32 %46, %argc, !dbg !206
  br i1 %47, label %.lr.ph67, label %.thread30, !dbg !207

.lr.ph67:                                         ; preds = %.preheader, %.thread
  %48 = phi i32 [ %58, %.thread ], [ %46, %.preheader ]
  %49 = sext i32 %48 to i64, !dbg !208
  %50 = getelementptr inbounds i8** %argv, i64 %49, !dbg !208
  %51 = load i8** %50, align 8, !dbg !208, !tbaa !122
  %52 = load i8* %51, align 1, !dbg !208, !tbaa !149
  %53 = icmp eq i8 %52, 45, !dbg !208
  br i1 %53, label %54, label %.thread, !dbg !208

; <label>:54                                      ; preds = %.lr.ph67
  %55 = getelementptr inbounds i8* %51, i64 1, !dbg !208
  %56 = load i8* %55, align 1, !dbg !208, !tbaa !149
  %57 = icmp eq i8 %56, 0, !dbg !208
  br i1 %57, label %.thread, label %.thread30, !dbg !209

.thread:                                          ; preds = %.lr.ph67, %54
  %58 = add nsw i32 %48, 1, !dbg !210
  store i32 %58, i32* @gg_optind, align 4, !dbg !210, !tbaa !128
  %59 = icmp slt i32 %58, %argc, !dbg !206
  br i1 %59, label %.lr.ph67, label %.thread30, !dbg !207

.thread30:                                        ; preds = %54, %.thread, %.preheader
  %60 = phi i32 [ %46, %.preheader ], [ %48, %54 ], [ %58, %.thread ]
  store i32 %60, i32* @last_nonopt, align 4, !dbg !211, !tbaa !128
  br label %61, !dbg !212

; <label>:61                                      ; preds = %.thread30, %36
  %62 = phi i32 [ %60, %.thread30 ], [ %32, %36 ]
  %63 = phi i32 [ %60, %.thread30 ], [ %28, %36 ]
  %64 = icmp eq i32 %63, %argc, !dbg !213
  br i1 %64, label %.thread82, label %65, !dbg !215

; <label>:65                                      ; preds = %61
  %66 = sext i32 %63 to i64, !dbg !216
  %67 = getelementptr inbounds i8** %argv, i64 %66, !dbg !216
  %68 = load i8** %67, align 8, !dbg !216, !tbaa !122
  %69 = tail call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #6, !dbg !217
  %70 = icmp eq i32 %69, 0, !dbg !217
  br i1 %70, label %71, label %80, !dbg !218

; <label>:71                                      ; preds = %65
  %72 = add nsw i32 %63, 1, !dbg !219
  store i32 %72, i32* @gg_optind, align 4, !dbg !219, !tbaa !128
  %73 = load i32* @first_nonopt, align 4, !dbg !221, !tbaa !128
  %74 = icmp eq i32 %73, %62, !dbg !223
  %75 = icmp eq i32 %62, %72, !dbg !224
  %or.cond17 = or i1 %74, %75, !dbg !225
  br i1 %or.cond17, label %77, label %76, !dbg !225

; <label>:76                                      ; preds = %71
  tail call fastcc void @exchange(i8** %argv) #7, !dbg !226
  br label %79, !dbg !226

; <label>:77                                      ; preds = %71
  br i1 %74, label %78, label %79, !dbg !227

; <label>:78                                      ; preds = %77
  store i32 %72, i32* @first_nonopt, align 4, !dbg !228, !tbaa !128
  br label %79, !dbg !230

; <label>:79                                      ; preds = %77, %78, %76
  store i32 %argc, i32* @last_nonopt, align 4, !dbg !231, !tbaa !128
  store i32 %argc, i32* @gg_optind, align 4, !dbg !232, !tbaa !128
  br label %.thread82, !dbg !233

; <label>:80                                      ; preds = %65
  %81 = icmp eq i32 %63, %argc, !dbg !234
  br i1 %81, label %.thread82, label %86, !dbg !236

.thread82:                                        ; preds = %79, %61, %80
  %82 = phi i32 [ %62, %80 ], [ %argc, %79 ], [ %62, %61 ]
  %83 = load i32* @first_nonopt, align 4, !dbg !237, !tbaa !128
  %84 = icmp eq i32 %83, %82, !dbg !240
  br i1 %84, label %479, label %85, !dbg !241

; <label>:85                                      ; preds = %.thread82
  store i32 %83, i32* @gg_optind, align 4, !dbg !242, !tbaa !128
  br label %479, !dbg !243

; <label>:86                                      ; preds = %80
  %87 = sext i32 %63 to i64, !dbg !244
  %88 = getelementptr inbounds i8** %argv, i64 %87, !dbg !244
  %89 = load i8** %88, align 8, !dbg !244, !tbaa !122
  %90 = load i8* %89, align 1, !dbg !244, !tbaa !149
  %91 = icmp eq i8 %90, 45, !dbg !244
  %92 = ptrtoint i8* %89 to i64
  br i1 %91, label %93, label %97, !dbg !244

; <label>:93                                      ; preds = %86
  %94 = getelementptr inbounds i8* %89, i64 1, !dbg !244
  %95 = load i8* %94, align 1, !dbg !244, !tbaa !149
  %96 = icmp eq i8 %95, 0, !dbg !244
  br i1 %96, label %97, label %102, !dbg !246

; <label>:97                                      ; preds = %86, %93
  %98 = load i32* @ordering, align 4, !dbg !247, !tbaa !149
  %99 = icmp eq i32 %98, 0, !dbg !250
  br i1 %99, label %479, label %100, !dbg !251

; <label>:100                                     ; preds = %97
  %101 = add nsw i32 %63, 1, !dbg !252
  store i32 %101, i32* @gg_optind, align 4, !dbg !252, !tbaa !128
  store i64 %92, i64* bitcast (i8** @gg_optarg to i64*), align 8, !dbg !253, !tbaa !122
  br label %479, !dbg !254

; <label>:102                                     ; preds = %93
  %103 = icmp eq i8 %95, 45, !dbg !255
  %not. = icmp ne %struct.gg_option* %longopts, null, !dbg !256
  %. = and i1 %not., %103, !dbg !256
  %.sum = select i1 %., i64 2, i64 1, !dbg !257
  %104 = getelementptr inbounds i8* %89, i64 %.sum, !dbg !257
  store i8* %104, i8** @nextchar, align 8, !dbg !258, !tbaa !122
  br label %105, !dbg !259

; <label>:105                                     ; preds = %102, %23
  %106 = phi i8* [ %104, %102 ], [ %21, %23 ]
  %107 = icmp eq %struct.gg_option* %longopts, null, !dbg !260
  br i1 %107, label %268, label %108, !dbg !261

; <label>:108                                     ; preds = %105
  %109 = load i32* @gg_optind, align 4, !dbg !262, !tbaa !128
  %110 = sext i32 %109 to i64, !dbg !263
  %111 = getelementptr inbounds i8** %argv, i64 %110, !dbg !263
  %112 = load i8** %111, align 8, !dbg !263, !tbaa !122
  %113 = getelementptr inbounds i8* %112, i64 1, !dbg !263
  %114 = load i8* %113, align 1, !dbg !263, !tbaa !149
  %115 = icmp eq i8 %114, 45, !dbg !264
  br i1 %115, label %my_index.exit.thread, label %116, !dbg !265

; <label>:116                                     ; preds = %108
  %117 = icmp eq i32 %long_only, 0, !dbg !266
  br i1 %117, label %268, label %118, !dbg !267

; <label>:118                                     ; preds = %116
  %119 = getelementptr inbounds i8* %112, i64 2, !dbg !268
  %120 = load i8* %119, align 1, !dbg !268, !tbaa !149
  %121 = icmp eq i8 %120, 0, !dbg !268
  br i1 %121, label %122, label %my_index.exit.thread, !dbg !269

; <label>:122                                     ; preds = %118
  tail call void @llvm.dbg.value(metadata i8* %.014, i64 0, metadata !96, metadata !114), !dbg !270
  %123 = load i8* %.014, align 1, !dbg !272, !tbaa !149
  %124 = icmp eq i8 %123, 0, !dbg !273
  br i1 %124, label %my_index.exit.thread, label %.lr.ph.i, !dbg !273

.lr.ph.i:                                         ; preds = %122, %127
  %125 = phi i8 [ %129, %127 ], [ %123, %122 ], !dbg !274
  %.012.i = phi i8* [ %128, %127 ], [ %.014, %122 ], !dbg !274
  %126 = icmp eq i8 %125, %114, !dbg !275
  br i1 %126, label %my_index.exit, label %127, !dbg !278

; <label>:127                                     ; preds = %.lr.ph.i
  %128 = getelementptr inbounds i8* %.012.i, i64 1, !dbg !279
  tail call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !96, metadata !114), !dbg !270
  %129 = load i8* %128, align 1, !dbg !272, !tbaa !149
  %130 = icmp eq i8 %129, 0, !dbg !273
  br i1 %130, label %my_index.exit.thread, label %.lr.ph.i, !dbg !273

my_index.exit:                                    ; preds = %.lr.ph.i
  %131 = icmp eq i8* %.012.i, null, !dbg !274
  br i1 %131, label %my_index.exit.thread, label %268, !dbg !280

my_index.exit.thread:                             ; preds = %108, %118, %my_index.exit, %122, %127, %140
  %nameend.0 = phi i8* [ %141, %140 ], [ %106, %127 ], [ %106, %122 ], [ %106, %my_index.exit ], [ %106, %118 ], [ %106, %108 ]
  %132 = load i8* %nameend.0, align 1, !dbg !281, !tbaa !149
  switch i8 %132, label %140 [
    i8 0, label %.critedge.preheader
    i8 61, label %.critedge.preheader
  ], !dbg !284

.critedge.preheader:                              ; preds = %my_index.exit.thread, %my_index.exit.thread
  %133 = getelementptr inbounds %struct.gg_option* %longopts, i64 0, i32 0, !dbg !285
  %134 = load i8** %133, align 8, !dbg !285, !tbaa !288
  %135 = icmp eq i8* %134, null, !dbg !290
  br i1 %135, label %.thread31.thread, label %.lr.ph63, !dbg !290

.lr.ph63:                                         ; preds = %.critedge.preheader
  %136 = ptrtoint i8* %nameend.0 to i64, !dbg !291
  %137 = ptrtoint i8* %106 to i64, !dbg !291
  %138 = sub i64 %136, %137, !dbg !291
  %139 = trunc i64 %138 to i32, !dbg !293
  br label %142, !dbg !290

; <label>:140                                     ; preds = %my_index.exit.thread
  %141 = getelementptr inbounds i8* %nameend.0, i64 1, !dbg !296
  tail call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !40, metadata !114), !dbg !297
  br label %my_index.exit.thread, !dbg !298

; <label>:142                                     ; preds = %.lr.ph63, %.critedge
  %143 = phi i8* [ %134, %.lr.ph63 ], [ %155, %.critedge ]
  %option_index.062 = phi i32 [ 0, %.lr.ph63 ], [ %153, %.critedge ]
  %indfound.061 = phi i32 [ -1, %.lr.ph63 ], [ %indfound.1, %.critedge ]
  %ambig.060 = phi i32 [ 0, %.lr.ph63 ], [ %ambig.1, %.critedge ]
  %pfound.059 = phi %struct.gg_option* [ null, %.lr.ph63 ], [ %pfound.1, %.critedge ]
  %p.058 = phi %struct.gg_option* [ %longopts, %.lr.ph63 ], [ %152, %.critedge ]
  %144 = tail call i32 @strncmp(i8* %143, i8* %106, i64 %138) #6, !dbg !299
  %145 = icmp eq i32 %144, 0, !dbg !299
  br i1 %145, label %146, label %.critedge, !dbg !300

; <label>:146                                     ; preds = %142
  %147 = tail call i64 @strlen(i8* %143) #6, !dbg !301
  %148 = trunc i64 %147 to i32, !dbg !302
  %149 = icmp eq i32 %139, %148, !dbg !303
  br i1 %149, label %.thread31, label %150, !dbg !304

; <label>:150                                     ; preds = %146
  %151 = icmp eq %struct.gg_option* %pfound.059, null, !dbg !305
  %p.0.pfound.0 = select i1 %151, %struct.gg_option* %p.058, %struct.gg_option* %pfound.059, !dbg !307
  %ambig.0. = select i1 %151, i32 %ambig.060, i32 1, !dbg !307
  %option_index.0.indfound.0 = select i1 %151, i32 %option_index.062, i32 %indfound.061, !dbg !307
  br label %.critedge, !dbg !307

.critedge:                                        ; preds = %150, %142
  %pfound.1 = phi %struct.gg_option* [ %pfound.059, %142 ], [ %p.0.pfound.0, %150 ]
  %ambig.1 = phi i32 [ %ambig.060, %142 ], [ %ambig.0., %150 ]
  %indfound.1 = phi i32 [ %indfound.061, %142 ], [ %option_index.0.indfound.0, %150 ]
  %152 = getelementptr inbounds %struct.gg_option* %p.058, i64 1, !dbg !309
  tail call void @llvm.dbg.value(metadata %struct.gg_option* %152, i64 0, metadata !43, metadata !114), !dbg !310
  %153 = add nuw nsw i32 %option_index.062, 1, !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %153, i64 0, metadata !48, metadata !114), !dbg !312
  %154 = getelementptr inbounds %struct.gg_option* %152, i64 0, i32 0, !dbg !285
  %155 = load i8** %154, align 8, !dbg !285, !tbaa !288
  %156 = icmp eq i8* %155, null, !dbg !290
  br i1 %156, label %.critedge._crit_edge, label %142, !dbg !290

.critedge._crit_edge:                             ; preds = %.critedge
  %157 = icmp eq i32 %ambig.1, 0, !dbg !313
  br i1 %157, label %.thread31, label %158, !dbg !315

; <label>:158                                     ; preds = %.critedge._crit_edge
  %159 = load i32* @gg_opterr, align 4, !dbg !316, !tbaa !128
  %160 = icmp eq i32 %159, 0, !dbg !316
  br i1 %160, label %165, label %161, !dbg !319

; <label>:161                                     ; preds = %158
  %162 = load %struct.__sFILE** @__stderrp, align 8, !dbg !320, !tbaa !122
  %163 = load i8** %argv, align 8, !dbg !321, !tbaa !122
  %164 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %162, i8* getelementptr inbounds ([30 x i8]* @.str1, i64 0, i64 0), i8* %163, i8* %112) #6, !dbg !322
  %.pre74 = load i8** @nextchar, align 8, !dbg !323, !tbaa !122
  %.pre75 = load i32* @gg_optind, align 4, !dbg !324, !tbaa !128
  br label %165, !dbg !322

; <label>:165                                     ; preds = %158, %161
  %166 = phi i32 [ %109, %158 ], [ %.pre75, %161 ]
  %167 = phi i8* [ %106, %158 ], [ %.pre74, %161 ]
  %168 = tail call i64 @strlen(i8* %167) #6, !dbg !325
  %169 = getelementptr inbounds i8* %167, i64 %168, !dbg !326
  store i8* %169, i8** @nextchar, align 8, !dbg !326, !tbaa !122
  %170 = add nsw i32 %166, 1, !dbg !324
  store i32 %170, i32* @gg_optind, align 4, !dbg !324, !tbaa !128
  store i32 0, i32* @gg_optopt, align 4, !dbg !327, !tbaa !128
  br label %479, !dbg !328

.thread31:                                        ; preds = %146, %.critedge._crit_edge
  %indfound.234 = phi i32 [ %indfound.1, %.critedge._crit_edge ], [ %option_index.062, %146 ]
  %pfound.233 = phi %struct.gg_option* [ %pfound.1, %.critedge._crit_edge ], [ %p.058, %146 ]
  %171 = icmp eq %struct.gg_option* %pfound.233, null, !dbg !329
  br i1 %171, label %.thread31.thread, label %172, !dbg !331

; <label>:172                                     ; preds = %.thread31
  tail call void @llvm.dbg.value(metadata i32 %indfound.1, i64 0, metadata !48, metadata !114), !dbg !312
  %173 = add nsw i32 %109, 1, !dbg !332
  store i32 %173, i32* @gg_optind, align 4, !dbg !332, !tbaa !128
  %174 = load i8* %nameend.0, align 1, !dbg !334, !tbaa !149
  %175 = icmp eq i8 %174, 0, !dbg !334
  %176 = getelementptr inbounds %struct.gg_option* %pfound.233, i64 0, i32 1, !dbg !336
  %177 = load i32* %176, align 4, !dbg !336, !tbaa !339
  br i1 %175, label %204, label %178, !dbg !340

; <label>:178                                     ; preds = %172
  %179 = icmp eq i32 %177, 0, !dbg !341
  br i1 %179, label %182, label %180, !dbg !342

; <label>:180                                     ; preds = %178
  %181 = getelementptr inbounds i8* %nameend.0, i64 1, !dbg !343
  store i8* %181, i8** @gg_optarg, align 8, !dbg !344, !tbaa !122
  br label %230, !dbg !345

; <label>:182                                     ; preds = %178
  %183 = load i32* @gg_opterr, align 4, !dbg !346, !tbaa !128
  %184 = icmp eq i32 %183, 0, !dbg !346
  br i1 %184, label %198, label %185, !dbg !349

; <label>:185                                     ; preds = %182
  %186 = load i8* %113, align 1, !dbg !350, !tbaa !149
  %187 = icmp eq i8 %186, 45, !dbg !353
  %188 = load %struct.__sFILE** @__stderrp, align 8, !dbg !354, !tbaa !122
  %189 = load i8** %argv, align 8, !dbg !355, !tbaa !122
  %190 = getelementptr inbounds %struct.gg_option* %pfound.233, i64 0, i32 0
  %191 = load i8** %190, align 8
  br i1 %187, label %192, label %194, !dbg !356

; <label>:192                                     ; preds = %185
  %193 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %188, i8* getelementptr inbounds ([45 x i8]* @.str2, i64 0, i64 0), i8* %189, i8* %191) #6, !dbg !357
  br label %198, !dbg !357

; <label>:194                                     ; preds = %185
  %195 = load i8* %112, align 1, !dbg !358, !tbaa !149
  %196 = sext i8 %195 to i32, !dbg !358
  %197 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %188, i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0), i8* %189, i32 %196, i8* %191) #6, !dbg !359
  br label %198

; <label>:198                                     ; preds = %182, %192, %194
  %199 = load i8** @nextchar, align 8, !dbg !360, !tbaa !122
  %200 = tail call i64 @strlen(i8* %199) #6, !dbg !361
  %201 = getelementptr inbounds i8* %199, i64 %200, !dbg !362
  store i8* %201, i8** @nextchar, align 8, !dbg !362, !tbaa !122
  %202 = getelementptr inbounds %struct.gg_option* %pfound.233, i64 0, i32 3, !dbg !363
  %203 = load i32* %202, align 4, !dbg !363, !tbaa !364
  store i32 %203, i32* @gg_optopt, align 4, !dbg !365, !tbaa !128
  br label %479, !dbg !366

; <label>:204                                     ; preds = %172
  %205 = icmp eq i32 %177, 1, !dbg !367
  br i1 %205, label %206, label %230, !dbg !369

; <label>:206                                     ; preds = %204
  %207 = icmp slt i32 %173, %argc, !dbg !370
  br i1 %207, label %208, label %214, !dbg !373

; <label>:208                                     ; preds = %206
  %209 = add nsw i32 %109, 2, !dbg !374
  store i32 %209, i32* @gg_optind, align 4, !dbg !374, !tbaa !128
  %210 = sext i32 %173 to i64, !dbg !375
  %211 = getelementptr inbounds i8** %argv, i64 %210, !dbg !375
  %212 = bitcast i8** %211 to i64*, !dbg !375
  %213 = load i64* %212, align 8, !dbg !375, !tbaa !122
  store i64 %213, i64* bitcast (i8** @gg_optarg to i64*), align 8, !dbg !376, !tbaa !122
  br label %230, !dbg !377

; <label>:214                                     ; preds = %206
  %215 = load i32* @gg_opterr, align 4, !dbg !378, !tbaa !128
  %216 = icmp eq i32 %215, 0, !dbg !378
  br i1 %216, label %221, label %217, !dbg !381

; <label>:217                                     ; preds = %214
  %218 = load %struct.__sFILE** @__stderrp, align 8, !dbg !382, !tbaa !122
  %219 = load i8** %argv, align 8, !dbg !383, !tbaa !122
  %220 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %218, i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i8* %219, i8* %112) #6, !dbg !384
  %.pre76 = load i8** @nextchar, align 8, !dbg !385, !tbaa !122
  br label %221, !dbg !384

; <label>:221                                     ; preds = %214, %217
  %222 = phi i8* [ %106, %214 ], [ %.pre76, %217 ]
  %223 = tail call i64 @strlen(i8* %222) #6, !dbg !386
  %224 = getelementptr inbounds i8* %222, i64 %223, !dbg !387
  store i8* %224, i8** @nextchar, align 8, !dbg !387, !tbaa !122
  %225 = getelementptr inbounds %struct.gg_option* %pfound.233, i64 0, i32 3, !dbg !388
  %226 = load i32* %225, align 4, !dbg !388, !tbaa !364
  store i32 %226, i32* @gg_optopt, align 4, !dbg !389, !tbaa !128
  %227 = load i8* %.014, align 1, !dbg !390, !tbaa !149
  %228 = icmp eq i8 %227, 58, !dbg !391
  %229 = select i1 %228, i32 58, i32 63, !dbg !390
  br label %479, !dbg !392

; <label>:230                                     ; preds = %204, %208, %180
  %231 = tail call i64 @strlen(i8* %106) #6, !dbg !393
  %232 = getelementptr inbounds i8* %106, i64 %231, !dbg !394
  store i8* %232, i8** @nextchar, align 8, !dbg !394, !tbaa !122
  %233 = icmp eq i32* %longind, null, !dbg !395
  br i1 %233, label %235, label %234, !dbg !397

; <label>:234                                     ; preds = %230
  store i32 %indfound.234, i32* %longind, align 4, !dbg !398, !tbaa !128
  br label %235, !dbg !399

; <label>:235                                     ; preds = %230, %234
  %236 = getelementptr inbounds %struct.gg_option* %pfound.233, i64 0, i32 2, !dbg !400
  %237 = load i32** %236, align 8, !dbg !400, !tbaa !402
  %238 = icmp eq i32* %237, null, !dbg !403
  %239 = getelementptr inbounds %struct.gg_option* %pfound.233, i64 0, i32 3, !dbg !404
  %240 = load i32* %239, align 4, !dbg !404, !tbaa !364
  br i1 %238, label %479, label %241, !dbg !406

; <label>:241                                     ; preds = %235
  store i32 %240, i32* %237, align 4, !dbg !407, !tbaa !128
  br label %479, !dbg !408

.thread31.thread:                                 ; preds = %.critedge.preheader, %.thread31
  %242 = icmp eq i32 %long_only, 0, !dbg !409
  %brmerge = or i1 %242, %115, !dbg !411
  br i1 %brmerge, label %my_index.exit29.thread, label %243, !dbg !411

; <label>:243                                     ; preds = %.thread31.thread
  %244 = load i8* %106, align 1, !dbg !412, !tbaa !149
  tail call void @llvm.dbg.value(metadata i8* %.014, i64 0, metadata !96, metadata !114), !dbg !413
  %245 = load i8* %.014, align 1, !dbg !415, !tbaa !149
  %246 = icmp eq i8 %245, 0, !dbg !416
  br i1 %246, label %my_index.exit29.thread, label %.lr.ph.i27, !dbg !416

.lr.ph.i27:                                       ; preds = %243, %249
  %247 = phi i8 [ %251, %249 ], [ %245, %243 ], !dbg !417
  %.012.i26 = phi i8* [ %250, %249 ], [ %.014, %243 ], !dbg !417
  %248 = icmp eq i8 %247, %244, !dbg !418
  br i1 %248, label %my_index.exit29, label %249, !dbg !419

; <label>:249                                     ; preds = %.lr.ph.i27
  %250 = getelementptr inbounds i8* %.012.i26, i64 1, !dbg !420
  tail call void @llvm.dbg.value(metadata i8* %250, i64 0, metadata !96, metadata !114), !dbg !413
  %251 = load i8* %250, align 1, !dbg !415, !tbaa !149
  %252 = icmp eq i8 %251, 0, !dbg !416
  br i1 %252, label %my_index.exit29.thread, label %.lr.ph.i27, !dbg !416

my_index.exit29:                                  ; preds = %.lr.ph.i27
  %253 = icmp eq i8* %.012.i26, null, !dbg !421
  br i1 %253, label %my_index.exit29.thread, label %268, !dbg !422

my_index.exit29.thread:                           ; preds = %249, %.thread31.thread, %243, %my_index.exit29
  %254 = load i32* @gg_opterr, align 4, !dbg !423, !tbaa !128
  %255 = icmp eq i32 %254, 0, !dbg !423
  br i1 %255, label %265, label %256, !dbg !426

; <label>:256                                     ; preds = %my_index.exit29.thread
  %257 = load %struct.__sFILE** @__stderrp, align 8, !dbg !427, !tbaa !122
  %258 = load i8** %argv, align 8, !dbg !430, !tbaa !122
  br i1 %115, label %259, label %261, !dbg !431

; <label>:259                                     ; preds = %256
  %260 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %257, i8* getelementptr inbounds ([32 x i8]* @.str5, i64 0, i64 0), i8* %258, i8* %106) #6, !dbg !432
  br label %265, !dbg !432

; <label>:261                                     ; preds = %256
  %262 = load i8* %112, align 1, !dbg !433, !tbaa !149
  %263 = sext i8 %262 to i32, !dbg !433
  %264 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %257, i8* getelementptr inbounds ([32 x i8]* @.str6, i64 0, i64 0), i8* %258, i32 %263, i8* %106) #6, !dbg !434
  br label %265

; <label>:265                                     ; preds = %my_index.exit29.thread, %259, %261
  store i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8** @nextchar, align 8, !dbg !435, !tbaa !122
  %266 = load i32* @gg_optind, align 4, !dbg !436, !tbaa !128
  %267 = add nsw i32 %266, 1, !dbg !436
  store i32 %267, i32* @gg_optind, align 4, !dbg !436, !tbaa !128
  store i32 0, i32* @gg_optopt, align 4, !dbg !437, !tbaa !128
  br label %479, !dbg !438

; <label>:268                                     ; preds = %my_index.exit, %116, %105, %my_index.exit29
  %269 = getelementptr inbounds i8* %106, i64 1, !dbg !439
  store i8* %269, i8** @nextchar, align 8, !dbg !439, !tbaa !122
  %270 = load i8* %106, align 1, !dbg !440, !tbaa !149
  tail call void @llvm.dbg.value(metadata i8 %270, i64 0, metadata !49, metadata !114), !dbg !441
  %271 = sext i8 %270 to i32, !dbg !442
  tail call void @llvm.dbg.value(metadata i8* %.014, i64 0, metadata !96, metadata !114), !dbg !443
  tail call void @llvm.dbg.value(metadata i32 %271, i64 0, metadata !97, metadata !114), !dbg !445
  %272 = load i8* %.014, align 1, !dbg !446, !tbaa !149
  %273 = icmp eq i8 %272, 0, !dbg !447
  br i1 %273, label %my_index.exit25, label %.lr.ph.i23, !dbg !447

.lr.ph.i23:                                       ; preds = %268, %276
  %274 = phi i8 [ %278, %276 ], [ %272, %268 ], !dbg !448
  %.012.i22 = phi i8* [ %277, %276 ], [ %.014, %268 ], !dbg !448
  %275 = icmp eq i8 %274, %270, !dbg !449
  br i1 %275, label %my_index.exit25, label %276, !dbg !450

; <label>:276                                     ; preds = %.lr.ph.i23
  %277 = getelementptr inbounds i8* %.012.i22, i64 1, !dbg !451
  tail call void @llvm.dbg.value(metadata i8* %277, i64 0, metadata !96, metadata !114), !dbg !443
  %278 = load i8* %277, align 1, !dbg !446, !tbaa !149
  %279 = icmp eq i8 %278, 0, !dbg !447
  br i1 %279, label %my_index.exit25, label %.lr.ph.i23, !dbg !447

my_index.exit25:                                  ; preds = %.lr.ph.i23, %276, %268
  %.0.i24 = phi i8* [ null, %268 ], [ null, %276 ], [ %.012.i22, %.lr.ph.i23 ], !dbg !448
  tail call void @llvm.dbg.value(metadata i8* %.0.i24, i64 0, metadata !51, metadata !114), !dbg !452
  %280 = load i8* %269, align 1, !dbg !453, !tbaa !149
  %281 = icmp eq i8 %280, 0, !dbg !455
  br i1 %281, label %282, label %285, !dbg !456

; <label>:282                                     ; preds = %my_index.exit25
  %283 = load i32* @gg_optind, align 4, !dbg !457, !tbaa !128
  %284 = add nsw i32 %283, 1, !dbg !457
  store i32 %284, i32* @gg_optind, align 4, !dbg !457, !tbaa !128
  br label %285, !dbg !457

; <label>:285                                     ; preds = %282, %my_index.exit25
  %286 = icmp eq i8* %.0.i24, null, !dbg !458
  %287 = icmp eq i8 %270, 58, !dbg !460
  %or.cond18 = or i1 %287, %286, !dbg !461
  br i1 %or.cond18, label %288, label %301, !dbg !461

; <label>:288                                     ; preds = %285
  %289 = load i32* @gg_opterr, align 4, !dbg !462, !tbaa !128
  %290 = icmp eq i32 %289, 0, !dbg !462
  br i1 %290, label %300, label %291, !dbg !465

; <label>:291                                     ; preds = %288
  %292 = load i8** @posixly_correct, align 8, !dbg !466, !tbaa !122
  %293 = icmp eq i8* %292, null, !dbg !466
  %294 = load %struct.__sFILE** @__stderrp, align 8, !dbg !469, !tbaa !122
  %295 = load i8** %argv, align 8, !dbg !470, !tbaa !122
  br i1 %293, label %298, label %296, !dbg !471

; <label>:296                                     ; preds = %291
  %297 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %294, i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i8* %295, i32 %271) #6, !dbg !472
  br label %300, !dbg !472

; <label>:298                                     ; preds = %291
  %299 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %294, i8* getelementptr inbounds ([26 x i8]* @.str9, i64 0, i64 0), i8* %295, i32 %271) #6, !dbg !473
  br label %300

; <label>:300                                     ; preds = %288, %296, %298
  store i32 %271, i32* @gg_optopt, align 4, !dbg !474, !tbaa !128
  br label %479, !dbg !475

; <label>:301                                     ; preds = %285
  %302 = load i8* %.0.i24, align 1, !dbg !476, !tbaa !149
  %303 = icmp eq i8 %302, 87, !dbg !477
  %304 = getelementptr inbounds i8* %.0.i24, i64 1, !dbg !478
  %305 = load i8* %304, align 1, !dbg !478, !tbaa !149
  %306 = icmp eq i8 %305, 59, !dbg !479
  %or.cond83 = and i1 %303, %306, !dbg !480
  br i1 %or.cond83, label %307, label %._crit_edge, !dbg !480

; <label>:307                                     ; preds = %301
  tail call void @llvm.dbg.value(metadata %struct.gg_option* null, i64 0, metadata !56, metadata !114), !dbg !481
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !114), !dbg !482
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !58, metadata !114), !dbg !483
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !59, metadata !114), !dbg !484
  %308 = load i8* %269, align 1, !dbg !485, !tbaa !149
  %309 = icmp eq i8 %308, 0, !dbg !487
  br i1 %309, label %313, label %310, !dbg !488

; <label>:310                                     ; preds = %307
  store i8* %269, i8** @gg_optarg, align 8, !dbg !489, !tbaa !122
  %311 = load i32* @gg_optind, align 4, !dbg !491, !tbaa !128
  %312 = add nsw i32 %311, 1, !dbg !491
  store i32 %312, i32* @gg_optind, align 4, !dbg !491, !tbaa !128
  br label %333, !dbg !492

; <label>:313                                     ; preds = %307
  %314 = load i32* @gg_optind, align 4, !dbg !493, !tbaa !128
  %315 = icmp eq i32 %314, %argc, !dbg !495
  br i1 %315, label %316, label %326, !dbg !496

; <label>:316                                     ; preds = %313
  %317 = load i32* @gg_opterr, align 4, !dbg !497, !tbaa !128
  %318 = icmp eq i32 %317, 0, !dbg !497
  br i1 %318, label %323, label %319, !dbg !500

; <label>:319                                     ; preds = %316
  %320 = load %struct.__sFILE** @__stderrp, align 8, !dbg !501, !tbaa !122
  %321 = load i8** %argv, align 8, !dbg !503, !tbaa !122
  %322 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %320, i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i8* %321, i32 %271) #6, !dbg !504
  br label %323, !dbg !505

; <label>:323                                     ; preds = %316, %319
  store i32 %271, i32* @gg_optopt, align 4, !dbg !506, !tbaa !128
  %324 = load i8* %.014, align 1, !dbg !507, !tbaa !149
  %325 = icmp eq i8 %324, 58, !dbg !509
  %.19 = select i1 %325, i32 58, i32 63, !dbg !510
  br label %479, !dbg !511

; <label>:326                                     ; preds = %313
  %327 = add nsw i32 %314, 1, !dbg !512
  store i32 %327, i32* @gg_optind, align 4, !dbg !512, !tbaa !128
  %328 = sext i32 %314 to i64, !dbg !513
  %329 = getelementptr inbounds i8** %argv, i64 %328, !dbg !513
  %330 = bitcast i8** %329 to i64*, !dbg !513
  %331 = load i64* %330, align 8, !dbg !513, !tbaa !122
  store i64 %331, i64* bitcast (i8** @gg_optarg to i64*), align 8, !dbg !514, !tbaa !122
  %332 = inttoptr i64 %331 to i8*
  br label %333

; <label>:333                                     ; preds = %326, %310
  %334 = phi i32 [ %327, %326 ], [ %312, %310 ]
  %335 = phi i8* [ %332, %326 ], [ %269, %310 ]
  tail call void @llvm.dbg.value(metadata i8* %335, i64 0, metadata !52, metadata !114), !dbg !515
  store i8* %335, i8** @nextchar, align 8, !dbg !516, !tbaa !122
  br label %336, !dbg !518

; <label>:336                                     ; preds = %345, %333
  %nameend1.0 = phi i8* [ %335, %333 ], [ %346, %345 ]
  %337 = load i8* %nameend1.0, align 1, !dbg !519, !tbaa !149
  switch i8 %337, label %345 [
    i8 0, label %.critedge11.preheader
    i8 61, label %.critedge11.preheader
  ], !dbg !521

.critedge11.preheader:                            ; preds = %336, %336
  %338 = getelementptr inbounds %struct.gg_option* %longopts, i64 0, i32 0, !dbg !522
  %339 = load i8** %338, align 8, !dbg !522, !tbaa !288
  %340 = icmp eq i8* %339, null, !dbg !525
  br i1 %340, label %.thread35.thread, label %.lr.ph, !dbg !525

.lr.ph:                                           ; preds = %.critedge11.preheader
  %341 = ptrtoint i8* %nameend1.0 to i64, !dbg !526
  %342 = ptrtoint i8* %335 to i64, !dbg !526
  %343 = sub i64 %341, %342, !dbg !526
  %344 = and i64 %343, 4294967295, !dbg !528
  br label %347, !dbg !525

; <label>:345                                     ; preds = %336
  %346 = getelementptr inbounds i8* %nameend1.0, i64 1, !dbg !531
  tail call void @llvm.dbg.value(metadata i8* %346, i64 0, metadata !52, metadata !114), !dbg !515
  br label %336, !dbg !532

; <label>:347                                     ; preds = %.lr.ph, %.critedge11
  %348 = phi i8* [ %339, %.lr.ph ], [ %359, %.critedge11 ]
  %option_index7.055 = phi i32 [ 0, %.lr.ph ], [ %357, %.critedge11 ]
  %indfound6.054 = phi i32 [ 0, %.lr.ph ], [ %indfound6.1, %.critedge11 ]
  %ambig5.053 = phi i32 [ 0, %.lr.ph ], [ %ambig5.1, %.critedge11 ]
  %pfound3.052 = phi %struct.gg_option* [ null, %.lr.ph ], [ %pfound3.1, %.critedge11 ]
  %p2.051 = phi %struct.gg_option* [ %longopts, %.lr.ph ], [ %356, %.critedge11 ]
  %349 = tail call i32 @strncmp(i8* %348, i8* %335, i64 %343) #6, !dbg !533
  %350 = icmp eq i32 %349, 0, !dbg !533
  br i1 %350, label %351, label %.critedge11, !dbg !534

; <label>:351                                     ; preds = %347
  %352 = tail call i64 @strlen(i8* %348) #6, !dbg !535
  %353 = icmp eq i64 %344, %352, !dbg !536
  br i1 %353, label %.thread35, label %354, !dbg !537

; <label>:354                                     ; preds = %351
  %355 = icmp eq %struct.gg_option* %pfound3.052, null, !dbg !538
  %p2.0.pfound3.0 = select i1 %355, %struct.gg_option* %p2.051, %struct.gg_option* %pfound3.052, !dbg !540
  %ambig5.0. = select i1 %355, i32 %ambig5.053, i32 1, !dbg !540
  %option_index7.0.indfound6.0 = select i1 %355, i32 %option_index7.055, i32 %indfound6.054, !dbg !540
  br label %.critedge11, !dbg !540

.critedge11:                                      ; preds = %354, %347
  %pfound3.1 = phi %struct.gg_option* [ %pfound3.052, %347 ], [ %p2.0.pfound3.0, %354 ]
  %ambig5.1 = phi i32 [ %ambig5.053, %347 ], [ %ambig5.0., %354 ]
  %indfound6.1 = phi i32 [ %indfound6.054, %347 ], [ %option_index7.0.indfound6.0, %354 ]
  %356 = getelementptr inbounds %struct.gg_option* %p2.051, i64 1, !dbg !542
  tail call void @llvm.dbg.value(metadata %struct.gg_option* %356, i64 0, metadata !55, metadata !114), !dbg !543
  %357 = add nuw nsw i32 %option_index7.055, 1, !dbg !544
  tail call void @llvm.dbg.value(metadata i32 %357, i64 0, metadata !60, metadata !114), !dbg !545
  %358 = getelementptr inbounds %struct.gg_option* %356, i64 0, i32 0, !dbg !522
  %359 = load i8** %358, align 8, !dbg !522, !tbaa !288
  %360 = icmp eq i8* %359, null, !dbg !525
  br i1 %360, label %.critedge11._crit_edge, label %347, !dbg !525

.critedge11._crit_edge:                           ; preds = %.critedge11
  %361 = icmp eq i32 %ambig5.1, 0, !dbg !546
  br i1 %361, label %.thread35, label %362, !dbg !548

; <label>:362                                     ; preds = %.critedge11._crit_edge
  %363 = load i32* @gg_opterr, align 4, !dbg !549, !tbaa !128
  %364 = icmp eq i32 %363, 0, !dbg !549
  br i1 %364, label %372, label %365, !dbg !552

; <label>:365                                     ; preds = %362
  %366 = load %struct.__sFILE** @__stderrp, align 8, !dbg !553, !tbaa !122
  %367 = load i8** %argv, align 8, !dbg !554, !tbaa !122
  %368 = sext i32 %334 to i64, !dbg !555
  %369 = getelementptr inbounds i8** %argv, i64 %368, !dbg !555
  %370 = load i8** %369, align 8, !dbg !555, !tbaa !122
  %371 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %366, i8* getelementptr inbounds ([33 x i8]* @.str11, i64 0, i64 0), i8* %367, i8* %370) #6, !dbg !556
  %.pre78 = load i8** @nextchar, align 8, !dbg !557, !tbaa !122
  %.pre79 = load i32* @gg_optind, align 4, !dbg !558, !tbaa !128
  br label %372, !dbg !556

; <label>:372                                     ; preds = %362, %365
  %373 = phi i32 [ %334, %362 ], [ %.pre79, %365 ]
  %374 = phi i8* [ %335, %362 ], [ %.pre78, %365 ]
  %375 = tail call i64 @strlen(i8* %374) #6, !dbg !559
  %376 = getelementptr inbounds i8* %374, i64 %375, !dbg !560
  store i8* %376, i8** @nextchar, align 8, !dbg !560, !tbaa !122
  %377 = add nsw i32 %373, 1, !dbg !558
  store i32 %377, i32* @gg_optind, align 4, !dbg !558, !tbaa !128
  br label %479, !dbg !561

.thread35:                                        ; preds = %351, %.critedge11._crit_edge
  %indfound6.238 = phi i32 [ %indfound6.1, %.critedge11._crit_edge ], [ %option_index7.055, %351 ]
  %pfound3.237 = phi %struct.gg_option* [ %pfound3.1, %.critedge11._crit_edge ], [ %p2.051, %351 ]
  %378 = icmp eq %struct.gg_option* %pfound3.237, null, !dbg !562
  br i1 %378, label %.thread35.thread, label %379, !dbg !564

; <label>:379                                     ; preds = %.thread35
  tail call void @llvm.dbg.value(metadata i32 %indfound6.1, i64 0, metadata !60, metadata !114), !dbg !545
  %380 = icmp eq i8 %337, 0, !dbg !565
  %381 = getelementptr inbounds %struct.gg_option* %pfound3.237, i64 0, i32 1, !dbg !568
  %382 = load i32* %381, align 4, !dbg !568, !tbaa !339
  br i1 %380, label %400, label %383, !dbg !571

; <label>:383                                     ; preds = %379
  %384 = icmp eq i32 %382, 0, !dbg !572
  br i1 %384, label %387, label %385, !dbg !573

; <label>:385                                     ; preds = %383
  %386 = getelementptr inbounds i8* %nameend1.0, i64 1, !dbg !574
  store i8* %386, i8** @gg_optarg, align 8, !dbg !575, !tbaa !122
  br label %428, !dbg !576

; <label>:387                                     ; preds = %383
  %388 = load i32* @gg_opterr, align 4, !dbg !577, !tbaa !128
  %389 = icmp eq i32 %388, 0, !dbg !577
  br i1 %389, label %396, label %390, !dbg !580

; <label>:390                                     ; preds = %387
  %391 = load %struct.__sFILE** @__stderrp, align 8, !dbg !581, !tbaa !122
  %392 = load i8** %argv, align 8, !dbg !582, !tbaa !122
  %393 = getelementptr inbounds %struct.gg_option* %pfound3.237, i64 0, i32 0, !dbg !583
  %394 = load i8** %393, align 8, !dbg !583, !tbaa !288
  %395 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %391, i8* getelementptr inbounds ([46 x i8]* @.str12, i64 0, i64 0), i8* %392, i8* %394) #6, !dbg !584
  %.pre80 = load i8** @nextchar, align 8, !dbg !585, !tbaa !122
  br label %396, !dbg !584

; <label>:396                                     ; preds = %387, %390
  %397 = phi i8* [ %335, %387 ], [ %.pre80, %390 ]
  %398 = tail call i64 @strlen(i8* %397) #6, !dbg !586
  %399 = getelementptr inbounds i8* %397, i64 %398, !dbg !587
  store i8* %399, i8** @nextchar, align 8, !dbg !587, !tbaa !122
  br label %479, !dbg !588

; <label>:400                                     ; preds = %379
  %401 = icmp eq i32 %382, 1, !dbg !589
  br i1 %401, label %402, label %428, !dbg !591

; <label>:402                                     ; preds = %400
  %403 = icmp slt i32 %334, %argc, !dbg !592
  br i1 %403, label %404, label %410, !dbg !595

; <label>:404                                     ; preds = %402
  %405 = add nsw i32 %334, 1, !dbg !596
  store i32 %405, i32* @gg_optind, align 4, !dbg !596, !tbaa !128
  %406 = sext i32 %334 to i64, !dbg !597
  %407 = getelementptr inbounds i8** %argv, i64 %406, !dbg !597
  %408 = bitcast i8** %407 to i64*, !dbg !597
  %409 = load i64* %408, align 8, !dbg !597, !tbaa !122
  store i64 %409, i64* bitcast (i8** @gg_optarg to i64*), align 8, !dbg !598, !tbaa !122
  br label %428, !dbg !599

; <label>:410                                     ; preds = %402
  %411 = load i32* @gg_opterr, align 4, !dbg !600, !tbaa !128
  %412 = icmp eq i32 %411, 0, !dbg !600
  br i1 %412, label %421, label %413, !dbg !603

; <label>:413                                     ; preds = %410
  %414 = load %struct.__sFILE** @__stderrp, align 8, !dbg !604, !tbaa !122
  %415 = load i8** %argv, align 8, !dbg !605, !tbaa !122
  %416 = add nsw i32 %334, -1, !dbg !606
  %417 = sext i32 %416 to i64, !dbg !607
  %418 = getelementptr inbounds i8** %argv, i64 %417, !dbg !607
  %419 = load i8** %418, align 8, !dbg !607, !tbaa !122
  %420 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %414, i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i8* %415, i8* %419) #6, !dbg !608
  %.pre81 = load i8** @nextchar, align 8, !dbg !609, !tbaa !122
  br label %421, !dbg !608

; <label>:421                                     ; preds = %410, %413
  %422 = phi i8* [ %335, %410 ], [ %.pre81, %413 ]
  %423 = tail call i64 @strlen(i8* %422) #6, !dbg !610
  %424 = getelementptr inbounds i8* %422, i64 %423, !dbg !611
  store i8* %424, i8** @nextchar, align 8, !dbg !611, !tbaa !122
  %425 = load i8* %.014, align 1, !dbg !612, !tbaa !149
  %426 = icmp eq i8 %425, 58, !dbg !613
  %427 = select i1 %426, i32 58, i32 63, !dbg !612
  br label %479, !dbg !614

; <label>:428                                     ; preds = %400, %404, %385
  %429 = tail call i64 @strlen(i8* %335) #6, !dbg !615
  %430 = getelementptr inbounds i8* %335, i64 %429, !dbg !616
  store i8* %430, i8** @nextchar, align 8, !dbg !616, !tbaa !122
  %431 = icmp eq i32* %longind, null, !dbg !617
  br i1 %431, label %433, label %432, !dbg !619

; <label>:432                                     ; preds = %428
  store i32 %indfound6.238, i32* %longind, align 4, !dbg !620, !tbaa !128
  br label %433, !dbg !621

; <label>:433                                     ; preds = %428, %432
  %434 = getelementptr inbounds %struct.gg_option* %pfound3.237, i64 0, i32 2, !dbg !622
  %435 = load i32** %434, align 8, !dbg !622, !tbaa !402
  %436 = icmp eq i32* %435, null, !dbg !624
  %437 = getelementptr inbounds %struct.gg_option* %pfound3.237, i64 0, i32 3, !dbg !625
  %438 = load i32* %437, align 4, !dbg !625, !tbaa !364
  br i1 %436, label %479, label %439, !dbg !627

; <label>:439                                     ; preds = %433
  store i32 %438, i32* %435, align 4, !dbg !628, !tbaa !128
  br label %479, !dbg !629

.thread35.thread:                                 ; preds = %.critedge11.preheader, %.thread35
  store i8* null, i8** @nextchar, align 8, !dbg !630, !tbaa !122
  br label %479, !dbg !631

._crit_edge:                                      ; preds = %301
  %440 = icmp eq i8 %305, 58, !dbg !632
  br i1 %440, label %441, label %477, !dbg !634

; <label>:441                                     ; preds = %._crit_edge
  %442 = getelementptr inbounds i8* %.0.i24, i64 2, !dbg !635
  %443 = load i8* %442, align 1, !dbg !635, !tbaa !149
  %444 = icmp eq i8 %443, 58, !dbg !638
  %445 = load i8* %269, align 1, !dbg !639, !tbaa !149
  %446 = icmp ne i8 %445, 0, !dbg !642
  br i1 %444, label %447, label %453, !dbg !643

; <label>:447                                     ; preds = %441
  br i1 %446, label %448, label %451, !dbg !644

; <label>:448                                     ; preds = %447
  store i8* %269, i8** @gg_optarg, align 8, !dbg !645, !tbaa !122
  %449 = load i32* @gg_optind, align 4, !dbg !647, !tbaa !128
  %450 = add nsw i32 %449, 1, !dbg !647
  store i32 %450, i32* @gg_optind, align 4, !dbg !647, !tbaa !128
  br label %452, !dbg !648

; <label>:451                                     ; preds = %447
  store i8* null, i8** @gg_optarg, align 8, !dbg !649, !tbaa !122
  br label %452

; <label>:452                                     ; preds = %451, %448
  store i8* null, i8** @nextchar, align 8, !dbg !650, !tbaa !122
  br label %477, !dbg !651

; <label>:453                                     ; preds = %441
  br i1 %446, label %454, label %457, !dbg !652

; <label>:454                                     ; preds = %453
  store i8* %269, i8** @gg_optarg, align 8, !dbg !654, !tbaa !122
  %455 = load i32* @gg_optind, align 4, !dbg !657, !tbaa !128
  %456 = add nsw i32 %455, 1, !dbg !657
  store i32 %456, i32* @gg_optind, align 4, !dbg !657, !tbaa !128
  br label %476, !dbg !658

; <label>:457                                     ; preds = %453
  %458 = load i32* @gg_optind, align 4, !dbg !659, !tbaa !128
  %459 = icmp eq i32 %458, %argc, !dbg !661
  br i1 %459, label %460, label %470, !dbg !662

; <label>:460                                     ; preds = %457
  %461 = load i32* @gg_opterr, align 4, !dbg !663, !tbaa !128
  %462 = icmp eq i32 %461, 0, !dbg !663
  br i1 %462, label %467, label %463, !dbg !666

; <label>:463                                     ; preds = %460
  %464 = load %struct.__sFILE** @__stderrp, align 8, !dbg !667, !tbaa !122
  %465 = load i8** %argv, align 8, !dbg !669, !tbaa !122
  %466 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %464, i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i8* %465, i32 %271) #6, !dbg !670
  br label %467, !dbg !671

; <label>:467                                     ; preds = %460, %463
  store i32 %271, i32* @gg_optopt, align 4, !dbg !672, !tbaa !128
  %468 = load i8* %.014, align 1, !dbg !673, !tbaa !149
  %469 = icmp eq i8 %468, 58, !dbg !675
  %.20 = select i1 %469, i8 58, i8 63, !dbg !676
  br label %476, !dbg !676

; <label>:470                                     ; preds = %457
  %471 = add nsw i32 %458, 1, !dbg !677
  store i32 %471, i32* @gg_optind, align 4, !dbg !677, !tbaa !128
  %472 = sext i32 %458 to i64, !dbg !678
  %473 = getelementptr inbounds i8** %argv, i64 %472, !dbg !678
  %474 = bitcast i8** %473 to i64*, !dbg !678
  %475 = load i64* %474, align 8, !dbg !678, !tbaa !122
  store i64 %475, i64* bitcast (i8** @gg_optarg to i64*), align 8, !dbg !679, !tbaa !122
  br label %476

; <label>:476                                     ; preds = %467, %470, %454
  %c.1 = phi i8 [ %270, %454 ], [ %270, %470 ], [ %.20, %467 ]
  store i8* null, i8** @nextchar, align 8, !dbg !680, !tbaa !122
  br label %477

; <label>:477                                     ; preds = %452, %476, %._crit_edge
  %c.2 = phi i8 [ %270, %452 ], [ %c.1, %476 ], [ %270, %._crit_edge ]
  %478 = sext i8 %c.2 to i32, !dbg !681
  br label %479, !dbg !682

; <label>:479                                     ; preds = %433, %235, %97, %85, %.thread82, %477, %.thread35.thread, %439, %421, %396, %372, %323, %300, %265, %241, %221, %198, %165, %100
  %.0 = phi i32 [ 1, %100 ], [ 0, %241 ], [ 63, %198 ], [ %229, %221 ], [ 63, %265 ], [ 63, %300 ], [ 0, %439 ], [ 63, %396 ], [ %427, %421 ], [ 87, %.thread35.thread ], [ 63, %372 ], [ %.19, %323 ], [ %478, %477 ], [ 63, %165 ], [ -1, %.thread82 ], [ -1, %85 ], [ -1, %97 ], [ %240, %235 ], [ %438, %433 ]
  ret i32 %.0, !dbg !683
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @exchange(i8** nocapture %argv) #0 {
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !79, metadata !114), !dbg !684
  %1 = load i32* @first_nonopt, align 4, !dbg !685, !tbaa !128
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !80, metadata !114), !dbg !686
  %2 = load i32* @last_nonopt, align 4, !dbg !687, !tbaa !128
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !81, metadata !114), !dbg !688
  %3 = load i32* @gg_optind, align 4, !dbg !689, !tbaa !128
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !82, metadata !114), !dbg !690
  %4 = icmp sgt i32 %3, %2, !dbg !691
  %5 = icmp sgt i32 %2, %1, !dbg !692
  %or.cond714 = and i1 %4, %5, !dbg !693
  br i1 %or.cond714, label %.lr.ph10.lr.ph, label %.critedge, !dbg !693

.lr.ph10.lr.ph:                                   ; preds = %0
  %6 = sext i32 %2 to i64, !dbg !693
  %7 = xor i32 %2, -1, !dbg !693
  br label %.lr.ph10, !dbg !693

.lr.ph10:                                         ; preds = %.lr.ph10.lr.ph, %.outer
  %bottom.0.ph16 = phi i32 [ %1, %.lr.ph10.lr.ph ], [ %18, %.outer ]
  %top.0.ph15 = phi i32 [ %3, %.lr.ph10.lr.ph ], [ %21, %.outer ]
  %8 = sub nsw i32 %top.0.ph15, %2, !dbg !694
  %9 = icmp sgt i32 %8, 0, !dbg !695
  %10 = add i32 %top.0.ph15, %7, !dbg !693
  %11 = sext i32 %bottom.0.ph16 to i64
  %12 = sub i32 %top.0.ph15, %2, !dbg !693
  %13 = sext i32 %12 to i64
  %14 = sext i32 %8 to i64, !dbg !693
  br label %15, !dbg !693

; <label>:15                                      ; preds = %.lr.ph10, %._crit_edge
  %indvars.iv22 = phi i64 [ %11, %.lr.ph10 ], [ %indvars.iv.next23, %._crit_edge ]
  %16 = sub nsw i64 %6, %indvars.iv22, !dbg !698
  %17 = icmp sgt i64 %14, %16, !dbg !699
  br i1 %17, label %.preheader, label %.preheader4, !dbg !700

.preheader4:                                      ; preds = %15
  br i1 %9, label %.lr.ph, label %._crit_edge, !dbg !701

.preheader:                                       ; preds = %15
  %18 = trunc i64 %indvars.iv22 to i32, !dbg !702
  %19 = trunc i64 %16 to i32, !dbg !702
  %20 = icmp sgt i32 %19, 0, !dbg !702
  %21 = sub i32 %top.0.ph15, %19, !dbg !705
  br i1 %20, label %.lr.ph12, label %.outer, !dbg !707

.lr.ph12:                                         ; preds = %.preheader
  %sext = shl i64 %indvars.iv22, 32, !dbg !707
  %22 = ashr exact i64 %sext, 32, !dbg !707
  %23 = sext i32 %21 to i64, !dbg !707
  %24 = add i32 %19, -1, !dbg !707
  br label %25, !dbg !707

; <label>:25                                      ; preds = %25, %.lr.ph12
  %indvars.iv24 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next25, %25 ]
  %26 = add nsw i64 %indvars.iv24, %22, !dbg !708
  %27 = getelementptr inbounds i8** %argv, i64 %26, !dbg !709
  %28 = bitcast i8** %27 to i64*, !dbg !709
  %29 = load i64* %28, align 8, !dbg !709, !tbaa !122
  %30 = add nsw i64 %23, %indvars.iv24, !dbg !710
  %31 = getelementptr inbounds i8** %argv, i64 %30, !dbg !711
  %32 = bitcast i8** %31 to i64*, !dbg !711
  %33 = load i64* %32, align 8, !dbg !711, !tbaa !122
  store i64 %33, i64* %28, align 8, !dbg !712, !tbaa !122
  store i64 %29, i64* %32, align 8, !dbg !713, !tbaa !122
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !dbg !707
  %lftr.wideiv26 = trunc i64 %indvars.iv24 to i32, !dbg !707
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %24, !dbg !707
  br i1 %exitcond27, label %.outer, label %25, !dbg !707

.outer:                                           ; preds = %25, %.preheader
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !82, metadata !114), !dbg !690
  %34 = icmp sgt i32 %21, %2, !dbg !691
  %35 = icmp sgt i32 %2, %18, !dbg !692
  %or.cond7 = and i1 %34, %35, !dbg !693
  br i1 %or.cond7, label %.lr.ph10, label %.critedge, !dbg !693

.lr.ph:                                           ; preds = %.preheader4, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader4 ]
  %36 = add nsw i64 %indvars.iv, %indvars.iv22, !dbg !714
  %37 = getelementptr inbounds i8** %argv, i64 %36, !dbg !716
  %38 = bitcast i8** %37 to i64*, !dbg !716
  %39 = load i64* %38, align 8, !dbg !716, !tbaa !122
  %40 = add nsw i64 %indvars.iv, %6, !dbg !717
  %41 = getelementptr inbounds i8** %argv, i64 %40, !dbg !718
  %42 = bitcast i8** %41 to i64*, !dbg !718
  %43 = load i64* %42, align 8, !dbg !718, !tbaa !122
  store i64 %43, i64* %38, align 8, !dbg !719, !tbaa !122
  store i64 %39, i64* %42, align 8, !dbg !720, !tbaa !122
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !701
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !701
  %exitcond = icmp eq i32 %lftr.wideiv, %10, !dbg !701
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !701

._crit_edge:                                      ; preds = %.lr.ph, %.preheader4
  %indvars.iv.next23 = add i64 %indvars.iv22, %13, !dbg !693
  %44 = icmp sgt i64 %6, %indvars.iv.next23, !dbg !692
  br i1 %44, label %15, label %.critedge, !dbg !693

.critedge:                                        ; preds = %.outer, %._crit_edge, %0
  %45 = sub i32 %3, %2, !dbg !721
  %46 = add nsw i32 %45, %1, !dbg !722
  store i32 %46, i32* @first_nonopt, align 4, !dbg !722, !tbaa !128
  store i32 %3, i32* @last_nonopt, align 4, !dbg !723, !tbaa !128
  ret void, !dbg !724
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gg_getopt(i32 %argc, i8** %argv, i8* readonly %optstring) #0 {
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !65, metadata !114), !dbg !725
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !66, metadata !114), !dbg !726
  tail call void @llvm.dbg.value(metadata i8* %optstring, i64 0, metadata !67, metadata !114), !dbg !727
  %1 = tail call i32 @getopt_internal(i32 %argc, i8** %argv, i8* %optstring, %struct.gg_option* null, i32* null, i32 0) #7, !dbg !728
  ret i32 %1, !dbg !729
}

; Function Attrs: optsize
declare i8* @getenv(...) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!110, !111, !112}
!llvm.ident = !{!113}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !27, globals: !98, imports: !109)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/utils/getopt.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 183, size: 32, align: 32, elements: !4)
!4 = !{!5, !6, !7}
!5 = !DIEnumerator(name: "REQUIRE_ORDER", value: 0)
!6 = !DIEnumerator(name: "PERMUTE", value: 1)
!7 = !DIEnumerator(name: "RETURN_IN_ORDER", value: 2)
!8 = !{!9, !10, !13, !11, !14, !25}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "gg_option", file: !17, line: 84, size: 256, align: 64, elements: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/445.gobmk/src/utils/gg-getopt.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !{!19, !22, !24, !26}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !16, file: !17, line: 87, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !16, file: !17, line: 93, baseType: !23, size: 32, align: 32, offset: 64)
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !16, file: !17, line: 94, baseType: !25, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !16, file: !17, line: 95, baseType: !23, size: 32, align: 32, offset: 192)
!27 = !{!28, !61, !68, !75, !92}
!28 = !DISubprogram(name: "getopt_internal", scope: !1, file: !1, line: 507, type: !29, isLocal: false, isDefinition: true, scopeLine: 514, isOptimized: true, function: i32 (i32, i8**, i8*, %struct.gg_option*, i32*, i32)* @getopt_internal, variables: !33)
!29 = !DISubroutineType(types: !30)
!30 = !{!23, !23, !31, !20, !14, !25, !23}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !43, !44, !45, !46, !47, !48, !49, !51, !52, !55, !56, !57, !58, !59, !60}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !28, file: !1, line: 508, type: !23)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !28, file: !1, line: 509, type: !31)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "optstring", arg: 3, scope: !28, file: !1, line: 510, type: !20)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "longopts", arg: 4, scope: !28, file: !1, line: 511, type: !14)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "longind", arg: 5, scope: !28, file: !1, line: 512, type: !25)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "long_only", arg: 6, scope: !28, file: !1, line: 513, type: !23)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameend", scope: !41, file: !1, line: 633, type: !11)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 632, column: 5)
!42 = distinct !DILexicalBlock(scope: !28, file: !1, line: 629, column: 7)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !41, file: !1, line: 634, type: !14)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pfound", scope: !41, file: !1, line: 635, type: !14)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exact", scope: !41, file: !1, line: 636, type: !23)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ambig", scope: !41, file: !1, line: 637, type: !23)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "indfound", scope: !41, file: !1, line: 638, type: !23)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "option_index", scope: !41, file: !1, line: 639, type: !23)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !50, file: !1, line: 766, type: !12)
!50 = distinct !DILexicalBlock(scope: !28, file: !1, line: 765, column: 3)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !50, file: !1, line: 767, type: !11)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameend", scope: !53, file: !1, line: 791, type: !11)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 790, column: 7)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 789, column: 9)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !53, file: !1, line: 792, type: !14)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pfound", scope: !53, file: !1, line: 793, type: !14)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exact", scope: !53, file: !1, line: 794, type: !23)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ambig", scope: !53, file: !1, line: 795, type: !23)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "indfound", scope: !53, file: !1, line: 796, type: !23)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "option_index", scope: !53, file: !1, line: 797, type: !23)
!61 = !DISubprogram(name: "gg_getopt", scope: !1, file: !1, line: 963, type: !62, isLocal: false, isDefinition: true, scopeLine: 967, isOptimized: true, function: i32 (i32, i8**, i8*)* @gg_getopt, variables: !64)
!62 = !DISubroutineType(types: !63)
!63 = !{!23, !23, !31, !20}
!64 = !{!65, !66, !67}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !61, file: !1, line: 964, type: !23)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !61, file: !1, line: 965, type: !31)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "optstring", arg: 3, scope: !61, file: !1, line: 966, type: !20)
!68 = !DISubprogram(name: "_getopt_initialize", scope: !1, file: !1, line: 385, type: !69, isLocal: true, isDefinition: true, scopeLine: 389, isOptimized: true, variables: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{!20, !23, !31, !20}
!71 = !{!72, !73, !74}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !68, file: !1, line: 386, type: !23)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !68, file: !1, line: 387, type: !31)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "optstring", arg: 3, scope: !68, file: !1, line: 388, type: !20)
!75 = !DISubprogram(name: "exchange", scope: !1, file: !1, line: 300, type: !76, isLocal: true, isDefinition: true, scopeLine: 302, isOptimized: true, function: void (i8**)* @exchange, variables: !78)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !10}
!78 = !{!79, !80, !81, !82, !83, !84, !88, !89, !91}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 1, scope: !75, file: !1, line: 301, type: !10)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bottom", scope: !75, file: !1, line: 303, type: !23)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "middle", scope: !75, file: !1, line: 304, type: !23)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "top", scope: !75, file: !1, line: 305, type: !23)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tem", scope: !75, file: !1, line: 306, type: !11)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !85, file: !1, line: 340, type: !23)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 338, column: 2)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 337, column: 11)
!87 = distinct !DILexicalBlock(scope: !75, file: !1, line: 336, column: 5)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !85, file: !1, line: 341, type: !23)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !90, file: !1, line: 357, type: !23)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 355, column: 2)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !90, file: !1, line: 358, type: !23)
!92 = !DISubprogram(name: "my_index", scope: !1, file: !1, line: 210, type: !93, isLocal: true, isDefinition: true, scopeLine: 213, isOptimized: true, variables: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{!11, !20, !23}
!95 = !{!96, !97}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !92, file: !1, line: 211, type: !20)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chr", arg: 2, scope: !92, file: !1, line: 212, type: !23)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!99 = !DIGlobalVariable(name: "gg_optind", scope: !0, file: !1, line: 126, type: !23, isLocal: false, isDefinition: true, variable: i32* @gg_optind)
!100 = !DIGlobalVariable(name: "gg_opterr", scope: !0, file: !1, line: 146, type: !23, isLocal: false, isDefinition: true, variable: i32* @gg_opterr)
!101 = !DIGlobalVariable(name: "gg_optopt", scope: !0, file: !1, line: 152, type: !23, isLocal: false, isDefinition: true, variable: i32* @gg_optopt)
!102 = !DIGlobalVariable(name: "gg_optarg", scope: !0, file: !1, line: 111, type: !11, isLocal: false, isDefinition: true, variable: i8** @gg_optarg)
!103 = !DIGlobalVariable(name: "__getopt_initialized", scope: !0, file: !1, line: 132, type: !23, isLocal: false, isDefinition: true, variable: i32* @__getopt_initialized)
!104 = !DIGlobalVariable(name: "nextchar", scope: !0, file: !1, line: 141, type: !11, isLocal: true, isDefinition: true, variable: i8** @nextchar)
!105 = !DIGlobalVariable(name: "ordering", scope: !0, file: !1, line: 186, type: !3, isLocal: true, isDefinition: true, variable: i32* @ordering)
!106 = !DIGlobalVariable(name: "posixly_correct", scope: !0, file: !1, line: 189, type: !11, isLocal: true, isDefinition: true, variable: i8** @posixly_correct)
!107 = !DIGlobalVariable(name: "first_nonopt", scope: !0, file: !1, line: 243, type: !23, isLocal: true, isDefinition: true, variable: i32* @first_nonopt)
!108 = !DIGlobalVariable(name: "last_nonopt", scope: !0, file: !1, line: 244, type: !23, isLocal: true, isDefinition: true, variable: i32* @last_nonopt)
!109 = !{}
!110 = !{i32 2, !"Dwarf Version", i32 2}
!111 = !{i32 2, !"Debug Info Version", i32 700000003}
!112 = !{i32 1, !"PIC Level", i32 2}
!113 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!114 = !DIExpression()
!115 = !DILocation(line: 508, column: 10, scope: !28)
!116 = !DILocation(line: 509, column: 19, scope: !28)
!117 = !DILocation(line: 510, column: 18, scope: !28)
!118 = !DILocation(line: 511, column: 30, scope: !28)
!119 = !DILocation(line: 512, column: 11, scope: !28)
!120 = !DILocation(line: 513, column: 10, scope: !28)
!121 = !DILocation(line: 515, column: 13, scope: !28)
!122 = !{!123, !123, i64 0}
!123 = !{!"any pointer", !124, i64 0}
!124 = !{!"omnipotent char", !125, i64 0}
!125 = !{!"Simple C/C++ TBAA"}
!126 = !DILocation(line: 517, column: 7, scope: !127)
!127 = distinct !DILexicalBlock(scope: !28, file: !1, line: 517, column: 7)
!128 = !{!129, !129, i64 0}
!129 = !{!"int", !124, i64 0}
!130 = !DILocation(line: 517, column: 17, scope: !127)
!131 = !DILocation(line: 517, column: 26, scope: !127)
!132 = !DILocation(line: 517, column: 22, scope: !127)
!133 = !DILocation(line: 519, column: 21, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 519, column: 11)
!135 = distinct !DILexicalBlock(scope: !127, file: !1, line: 518, column: 5)
!136 = !DILocation(line: 519, column: 11, scope: !135)
!137 = !DILocation(line: 520, column: 12, scope: !134)
!138 = !DILocation(line: 520, column: 2, scope: !134)
!139 = !DILocation(line: 386, column: 10, scope: !68, inlinedAt: !140)
!140 = distinct !DILocation(line: 521, column: 19, scope: !135)
!141 = !DILocation(line: 387, column: 19, scope: !68, inlinedAt: !140)
!142 = !DILocation(line: 394, column: 30, scope: !68, inlinedAt: !140)
!143 = !DILocation(line: 394, column: 16, scope: !68, inlinedAt: !140)
!144 = !DILocation(line: 396, column: 12, scope: !68, inlinedAt: !140)
!145 = !DILocation(line: 398, column: 21, scope: !68, inlinedAt: !140)
!146 = !DILocation(line: 398, column: 19, scope: !68, inlinedAt: !140)
!147 = !DILocation(line: 402, column: 7, scope: !148, inlinedAt: !140)
!148 = distinct !DILexicalBlock(scope: !68, file: !1, line: 402, column: 7)
!149 = !{!124, !124, i64 0}
!150 = !DILocation(line: 402, column: 7, scope: !68, inlinedAt: !140)
!151 = !DILocation(line: 404, column: 16, scope: !152, inlinedAt: !140)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 403, column: 5)
!153 = !DILocation(line: 405, column: 7, scope: !152, inlinedAt: !140)
!154 = !DILocation(line: 388, column: 18, scope: !68, inlinedAt: !140)
!155 = !DILocation(line: 406, column: 5, scope: !152, inlinedAt: !140)
!156 = !DILocation(line: 409, column: 16, scope: !157, inlinedAt: !140)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 408, column: 5)
!158 = distinct !DILexicalBlock(scope: !148, file: !1, line: 407, column: 12)
!159 = !DILocation(line: 410, column: 7, scope: !157, inlinedAt: !140)
!160 = !DILocation(line: 411, column: 5, scope: !157, inlinedAt: !140)
!161 = !DILocation(line: 412, column: 28, scope: !162, inlinedAt: !140)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 412, column: 12)
!163 = !DILocation(line: 412, column: 12, scope: !158, inlinedAt: !140)
!164 = !DILocation(line: 413, column: 14, scope: !162, inlinedAt: !140)
!165 = !DILocation(line: 413, column: 5, scope: !162, inlinedAt: !140)
!166 = !DILocation(line: 415, column: 14, scope: !162, inlinedAt: !140)
!167 = !DILocation(line: 521, column: 19, scope: !135)
!168 = !DILocation(line: 522, column: 28, scope: !135)
!169 = !DILocation(line: 523, column: 5, scope: !135)
!170 = !DILocation(line: 537, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !28, file: !1, line: 537, column: 7)
!172 = !DILocation(line: 537, column: 16, scope: !171)
!173 = !DILocation(line: 537, column: 24, scope: !171)
!174 = !DILocation(line: 537, column: 27, scope: !171)
!175 = !DILocation(line: 537, column: 37, scope: !171)
!176 = !DILocation(line: 537, column: 7, scope: !28)
!177 = !DILocation(line: 543, column: 11, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 543, column: 11)
!179 = distinct !DILexicalBlock(scope: !171, file: !1, line: 538, column: 5)
!180 = !DILocation(line: 543, column: 25, scope: !178)
!181 = !DILocation(line: 543, column: 23, scope: !178)
!182 = !DILocation(line: 543, column: 11, scope: !179)
!183 = !DILocation(line: 544, column: 14, scope: !178)
!184 = !DILocation(line: 544, column: 2, scope: !178)
!185 = !DILocation(line: 545, column: 11, scope: !186)
!186 = distinct !DILexicalBlock(scope: !179, file: !1, line: 545, column: 11)
!187 = !DILocation(line: 545, column: 24, scope: !186)
!188 = !DILocation(line: 545, column: 11, scope: !179)
!189 = !DILocation(line: 546, column: 15, scope: !186)
!190 = !DILocation(line: 546, column: 2, scope: !186)
!191 = !DILocation(line: 548, column: 11, scope: !192)
!192 = distinct !DILexicalBlock(scope: !179, file: !1, line: 548, column: 11)
!193 = !DILocation(line: 548, column: 20, scope: !192)
!194 = !DILocation(line: 548, column: 11, scope: !179)
!195 = !DILocation(line: 553, column: 21, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 553, column: 8)
!197 = distinct !DILexicalBlock(scope: !192, file: !1, line: 549, column: 2)
!198 = !DILocation(line: 553, column: 51, scope: !196)
!199 = !DILocation(line: 553, column: 36, scope: !196)
!200 = !DILocation(line: 554, column: 6, scope: !196)
!201 = !DILocation(line: 561, column: 11, scope: !197)
!202 = !DILocation(line: 555, column: 13, scope: !196)
!203 = !DILocation(line: 556, column: 19, scope: !204)
!204 = distinct !DILexicalBlock(scope: !196, file: !1, line: 555, column: 13)
!205 = !DILocation(line: 556, column: 6, scope: !204)
!206 = !DILocation(line: 561, column: 21, scope: !197)
!207 = !DILocation(line: 561, column: 28, scope: !197)
!208 = !DILocation(line: 561, column: 31, scope: !197)
!209 = !DILocation(line: 561, column: 4, scope: !197)
!210 = !DILocation(line: 562, column: 15, scope: !197)
!211 = !DILocation(line: 563, column: 16, scope: !197)
!212 = !DILocation(line: 564, column: 2, scope: !197)
!213 = !DILocation(line: 571, column: 21, scope: !214)
!214 = distinct !DILexicalBlock(scope: !179, file: !1, line: 571, column: 11)
!215 = !DILocation(line: 571, column: 29, scope: !214)
!216 = !DILocation(line: 571, column: 41, scope: !214)
!217 = !DILocation(line: 571, column: 33, scope: !214)
!218 = !DILocation(line: 571, column: 11, scope: !179)
!219 = !DILocation(line: 573, column: 13, scope: !220)
!220 = distinct !DILexicalBlock(scope: !214, file: !1, line: 572, column: 2)
!221 = !DILocation(line: 575, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !220, file: !1, line: 575, column: 8)
!223 = !DILocation(line: 575, column: 21, scope: !222)
!224 = !DILocation(line: 575, column: 51, scope: !222)
!225 = !DILocation(line: 575, column: 36, scope: !222)
!226 = !DILocation(line: 576, column: 6, scope: !222)
!227 = !DILocation(line: 577, column: 13, scope: !222)
!228 = !DILocation(line: 578, column: 19, scope: !229)
!229 = distinct !DILexicalBlock(scope: !222, file: !1, line: 577, column: 13)
!230 = !DILocation(line: 578, column: 6, scope: !229)
!231 = !DILocation(line: 579, column: 16, scope: !220)
!232 = !DILocation(line: 581, column: 14, scope: !220)
!233 = !DILocation(line: 582, column: 2, scope: !220)
!234 = !DILocation(line: 587, column: 21, scope: !235)
!235 = distinct !DILexicalBlock(scope: !179, file: !1, line: 587, column: 11)
!236 = !DILocation(line: 587, column: 11, scope: !179)
!237 = !DILocation(line: 591, column: 8, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 591, column: 8)
!239 = distinct !DILexicalBlock(scope: !235, file: !1, line: 588, column: 2)
!240 = !DILocation(line: 591, column: 21, scope: !238)
!241 = !DILocation(line: 591, column: 8, scope: !239)
!242 = !DILocation(line: 592, column: 16, scope: !238)
!243 = !DILocation(line: 592, column: 6, scope: !238)
!244 = !DILocation(line: 599, column: 11, scope: !245)
!245 = distinct !DILexicalBlock(scope: !179, file: !1, line: 599, column: 11)
!246 = !DILocation(line: 599, column: 11, scope: !179)
!247 = !DILocation(line: 601, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 601, column: 8)
!249 = distinct !DILexicalBlock(scope: !245, file: !1, line: 600, column: 2)
!250 = !DILocation(line: 601, column: 17, scope: !248)
!251 = !DILocation(line: 601, column: 8, scope: !249)
!252 = !DILocation(line: 603, column: 30, scope: !249)
!253 = !DILocation(line: 603, column: 14, scope: !249)
!254 = !DILocation(line: 604, column: 4, scope: !249)
!255 = !DILocation(line: 611, column: 47, scope: !179)
!256 = !DILocation(line: 611, column: 25, scope: !179)
!257 = !DILocation(line: 611, column: 5, scope: !179)
!258 = !DILocation(line: 610, column: 16, scope: !179)
!259 = !DILocation(line: 612, column: 5, scope: !179)
!260 = !DILocation(line: 629, column: 16, scope: !42)
!261 = !DILocation(line: 630, column: 7, scope: !42)
!262 = !DILocation(line: 630, column: 16, scope: !42)
!263 = !DILocation(line: 630, column: 11, scope: !42)
!264 = !DILocation(line: 630, column: 30, scope: !42)
!265 = !DILocation(line: 631, column: 4, scope: !42)
!266 = !DILocation(line: 631, column: 8, scope: !42)
!267 = !DILocation(line: 631, column: 18, scope: !42)
!268 = !DILocation(line: 631, column: 22, scope: !42)
!269 = !DILocation(line: 631, column: 41, scope: !42)
!270 = !DILocation(line: 211, column: 18, scope: !92, inlinedAt: !271)
!271 = distinct !DILocation(line: 631, column: 45, scope: !42)
!272 = !DILocation(line: 214, column: 10, scope: !92, inlinedAt: !271)
!273 = !DILocation(line: 214, column: 3, scope: !92, inlinedAt: !271)
!274 = !DILocation(line: 631, column: 45, scope: !42)
!275 = !DILocation(line: 216, column: 16, scope: !276, inlinedAt: !271)
!276 = distinct !DILexicalBlock(scope: !277, file: !1, line: 216, column: 11)
!277 = distinct !DILexicalBlock(scope: !92, file: !1, line: 215, column: 5)
!278 = !DILocation(line: 216, column: 11, scope: !277, inlinedAt: !271)
!279 = !DILocation(line: 218, column: 10, scope: !277, inlinedAt: !271)
!280 = !DILocation(line: 629, column: 7, scope: !28)
!281 = !DILocation(line: 641, column: 32, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 641, column: 7)
!283 = distinct !DILexicalBlock(scope: !41, file: !1, line: 641, column: 7)
!284 = !DILocation(line: 641, column: 41, scope: !282)
!285 = !DILocation(line: 646, column: 47, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !1, line: 646, column: 7)
!287 = distinct !DILexicalBlock(scope: !41, file: !1, line: 646, column: 7)
!288 = !{!289, !123, i64 0}
!289 = !{!"gg_option", !123, i64 0, !129, i64 8, !123, i64 16, !129, i64 24}
!290 = !DILocation(line: 646, column: 7, scope: !287)
!291 = !DILocation(line: 647, column: 43, scope: !292)
!292 = distinct !DILexicalBlock(scope: !286, file: !1, line: 647, column: 6)
!293 = !DILocation(line: 649, column: 10, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !1, line: 649, column: 10)
!295 = distinct !DILexicalBlock(scope: !292, file: !1, line: 648, column: 4)
!296 = !DILocation(line: 641, column: 68, scope: !282)
!297 = !DILocation(line: 633, column: 13, scope: !41)
!298 = !DILocation(line: 641, column: 7, scope: !282)
!299 = !DILocation(line: 647, column: 7, scope: !292)
!300 = !DILocation(line: 647, column: 6, scope: !286)
!301 = !DILocation(line: 650, column: 21, scope: !294)
!302 = !DILocation(line: 650, column: 6, scope: !294)
!303 = !DILocation(line: 650, column: 3, scope: !294)
!304 = !DILocation(line: 649, column: 10, scope: !295)
!305 = !DILocation(line: 658, column: 22, scope: !306)
!306 = distinct !DILexicalBlock(scope: !294, file: !1, line: 658, column: 15)
!307 = !DILocation(line: 663, column: 8, scope: !308)
!308 = distinct !DILexicalBlock(scope: !306, file: !1, line: 659, column: 8)
!309 = !DILocation(line: 646, column: 54, scope: !286)
!310 = !DILocation(line: 634, column: 31, scope: !41)
!311 = !DILocation(line: 646, column: 70, scope: !286)
!312 = !DILocation(line: 639, column: 11, scope: !41)
!313 = !DILocation(line: 669, column: 11, scope: !314)
!314 = distinct !DILexicalBlock(scope: !41, file: !1, line: 669, column: 11)
!315 = !DILocation(line: 669, column: 17, scope: !314)
!316 = !DILocation(line: 671, column: 8, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 671, column: 8)
!318 = distinct !DILexicalBlock(scope: !314, file: !1, line: 670, column: 2)
!319 = !DILocation(line: 671, column: 8, scope: !318)
!320 = !DILocation(line: 672, column: 15, scope: !317)
!321 = !DILocation(line: 673, column: 8, scope: !317)
!322 = !DILocation(line: 672, column: 6, scope: !317)
!323 = !DILocation(line: 674, column: 24, scope: !318)
!324 = !DILocation(line: 675, column: 13, scope: !318)
!325 = !DILocation(line: 674, column: 16, scope: !318)
!326 = !DILocation(line: 674, column: 13, scope: !318)
!327 = !DILocation(line: 676, column: 14, scope: !318)
!328 = !DILocation(line: 677, column: 4, scope: !318)
!329 = !DILocation(line: 680, column: 18, scope: !330)
!330 = distinct !DILexicalBlock(scope: !41, file: !1, line: 680, column: 11)
!331 = !DILocation(line: 680, column: 11, scope: !41)
!332 = !DILocation(line: 683, column: 13, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !1, line: 681, column: 2)
!334 = !DILocation(line: 684, column: 8, scope: !335)
!335 = distinct !DILexicalBlock(scope: !333, file: !1, line: 684, column: 8)
!336 = !DILocation(line: 688, column: 20, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !1, line: 688, column: 12)
!338 = distinct !DILexicalBlock(scope: !335, file: !1, line: 685, column: 6)
!339 = !{!289, !129, i64 8}
!340 = !DILocation(line: 684, column: 8, scope: !333)
!341 = !DILocation(line: 688, column: 12, scope: !337)
!342 = !DILocation(line: 688, column: 12, scope: !338)
!343 = !DILocation(line: 689, column: 23, scope: !337)
!344 = !DILocation(line: 689, column: 13, scope: !337)
!345 = !DILocation(line: 711, column: 6, scope: !338)
!346 = !DILocation(line: 692, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 692, column: 9)
!348 = distinct !DILexicalBlock(scope: !337, file: !1, line: 691, column: 3)
!349 = !DILocation(line: 692, column: 9, scope: !348)
!350 = !DILocation(line: 694, column: 13, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !1, line: 694, column: 13)
!352 = distinct !DILexicalBlock(scope: !347, file: !1, line: 693, column: 7)
!353 = !DILocation(line: 694, column: 36, scope: !351)
!354 = !DILocation(line: 696, column: 13, scope: !351)
!355 = !DILocation(line: 698, column: 6, scope: !351)
!356 = !DILocation(line: 694, column: 13, scope: !352)
!357 = !DILocation(line: 696, column: 4, scope: !351)
!358 = !DILocation(line: 703, column: 15, scope: !351)
!359 = !DILocation(line: 701, column: 4, scope: !351)
!360 = !DILocation(line: 706, column: 25, scope: !348)
!361 = !DILocation(line: 706, column: 17, scope: !348)
!362 = !DILocation(line: 706, column: 14, scope: !348)
!363 = !DILocation(line: 708, column: 25, scope: !348)
!364 = !{!289, !129, i64 24}
!365 = !DILocation(line: 708, column: 15, scope: !348)
!366 = !DILocation(line: 709, column: 5, scope: !348)
!367 = !DILocation(line: 712, column: 29, scope: !368)
!368 = distinct !DILexicalBlock(scope: !335, file: !1, line: 712, column: 13)
!369 = !DILocation(line: 712, column: 13, scope: !335)
!370 = !DILocation(line: 714, column: 22, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !1, line: 714, column: 12)
!372 = distinct !DILexicalBlock(scope: !368, file: !1, line: 713, column: 6)
!373 = !DILocation(line: 714, column: 12, scope: !372)
!374 = !DILocation(line: 715, column: 29, scope: !371)
!375 = !DILocation(line: 715, column: 15, scope: !371)
!376 = !DILocation(line: 715, column: 13, scope: !371)
!377 = !DILocation(line: 726, column: 6, scope: !372)
!378 = !DILocation(line: 718, column: 9, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !1, line: 718, column: 9)
!380 = distinct !DILexicalBlock(scope: !371, file: !1, line: 717, column: 3)
!381 = !DILocation(line: 718, column: 9, scope: !380)
!382 = !DILocation(line: 719, column: 16, scope: !379)
!383 = !DILocation(line: 721, column: 7, scope: !379)
!384 = !DILocation(line: 719, column: 7, scope: !379)
!385 = !DILocation(line: 722, column: 25, scope: !380)
!386 = !DILocation(line: 722, column: 17, scope: !380)
!387 = !DILocation(line: 722, column: 14, scope: !380)
!388 = !DILocation(line: 723, column: 25, scope: !380)
!389 = !DILocation(line: 723, column: 15, scope: !380)
!390 = !DILocation(line: 724, column: 12, scope: !380)
!391 = !DILocation(line: 724, column: 25, scope: !380)
!392 = !DILocation(line: 724, column: 5, scope: !380)
!393 = !DILocation(line: 727, column: 16, scope: !333)
!394 = !DILocation(line: 727, column: 13, scope: !333)
!395 = !DILocation(line: 728, column: 16, scope: !396)
!396 = distinct !DILexicalBlock(scope: !333, file: !1, line: 728, column: 8)
!397 = !DILocation(line: 728, column: 8, scope: !333)
!398 = !DILocation(line: 729, column: 15, scope: !396)
!399 = !DILocation(line: 729, column: 6, scope: !396)
!400 = !DILocation(line: 730, column: 16, scope: !401)
!401 = distinct !DILexicalBlock(scope: !333, file: !1, line: 730, column: 8)
!402 = !{!289, !123, i64 16}
!403 = !DILocation(line: 730, column: 8, scope: !401)
!404 = !DILocation(line: 732, column: 34, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !1, line: 731, column: 6)
!406 = !DILocation(line: 730, column: 8, scope: !333)
!407 = !DILocation(line: 732, column: 24, scope: !405)
!408 = !DILocation(line: 733, column: 8, scope: !405)
!409 = !DILocation(line: 742, column: 12, scope: !410)
!410 = distinct !DILexicalBlock(scope: !41, file: !1, line: 742, column: 11)
!411 = !DILocation(line: 742, column: 22, scope: !410)
!412 = !DILocation(line: 743, column: 28, scope: !410)
!413 = !DILocation(line: 211, column: 18, scope: !92, inlinedAt: !414)
!414 = distinct !DILocation(line: 743, column: 7, scope: !410)
!415 = !DILocation(line: 214, column: 10, scope: !92, inlinedAt: !414)
!416 = !DILocation(line: 214, column: 3, scope: !92, inlinedAt: !414)
!417 = !DILocation(line: 743, column: 7, scope: !410)
!418 = !DILocation(line: 216, column: 16, scope: !276, inlinedAt: !414)
!419 = !DILocation(line: 216, column: 11, scope: !277, inlinedAt: !414)
!420 = !DILocation(line: 218, column: 10, scope: !277, inlinedAt: !414)
!421 = !DILocation(line: 743, column: 39, scope: !410)
!422 = !DILocation(line: 742, column: 11, scope: !41)
!423 = !DILocation(line: 745, column: 8, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !1, line: 745, column: 8)
!425 = distinct !DILexicalBlock(scope: !410, file: !1, line: 744, column: 2)
!426 = !DILocation(line: 745, column: 8, scope: !425)
!427 = !DILocation(line: 749, column: 12, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !1, line: 747, column: 12)
!429 = distinct !DILexicalBlock(scope: !424, file: !1, line: 746, column: 6)
!430 = !DILocation(line: 750, column: 5, scope: !428)
!431 = !DILocation(line: 747, column: 12, scope: !429)
!432 = !DILocation(line: 749, column: 3, scope: !428)
!433 = !DILocation(line: 754, column: 14, scope: !428)
!434 = !DILocation(line: 753, column: 3, scope: !428)
!435 = !DILocation(line: 756, column: 13, scope: !425)
!436 = !DILocation(line: 757, column: 13, scope: !425)
!437 = !DILocation(line: 758, column: 14, scope: !425)
!438 = !DILocation(line: 759, column: 4, scope: !425)
!439 = !DILocation(line: 766, column: 23, scope: !50)
!440 = !DILocation(line: 766, column: 14, scope: !50)
!441 = !DILocation(line: 766, column: 10, scope: !50)
!442 = !DILocation(line: 767, column: 39, scope: !50)
!443 = !DILocation(line: 211, column: 18, scope: !92, inlinedAt: !444)
!444 = distinct !DILocation(line: 767, column: 18, scope: !50)
!445 = !DILocation(line: 212, column: 10, scope: !92, inlinedAt: !444)
!446 = !DILocation(line: 214, column: 10, scope: !92, inlinedAt: !444)
!447 = !DILocation(line: 214, column: 3, scope: !92, inlinedAt: !444)
!448 = !DILocation(line: 767, column: 18, scope: !50)
!449 = !DILocation(line: 216, column: 16, scope: !276, inlinedAt: !444)
!450 = !DILocation(line: 216, column: 11, scope: !277, inlinedAt: !444)
!451 = !DILocation(line: 218, column: 10, scope: !277, inlinedAt: !444)
!452 = !DILocation(line: 767, column: 11, scope: !50)
!453 = !DILocation(line: 770, column: 9, scope: !454)
!454 = distinct !DILexicalBlock(scope: !50, file: !1, line: 770, column: 9)
!455 = !DILocation(line: 770, column: 19, scope: !454)
!456 = !DILocation(line: 770, column: 9, scope: !50)
!457 = !DILocation(line: 771, column: 7, scope: !454)
!458 = !DILocation(line: 773, column: 14, scope: !459)
!459 = distinct !DILexicalBlock(scope: !50, file: !1, line: 773, column: 9)
!460 = !DILocation(line: 773, column: 27, scope: !459)
!461 = !DILocation(line: 773, column: 22, scope: !459)
!462 = !DILocation(line: 775, column: 6, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !1, line: 775, column: 6)
!464 = distinct !DILexicalBlock(scope: !459, file: !1, line: 774, column: 7)
!465 = !DILocation(line: 775, column: 6, scope: !464)
!466 = !DILocation(line: 777, column: 10, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 777, column: 10)
!468 = distinct !DILexicalBlock(scope: !463, file: !1, line: 776, column: 4)
!469 = !DILocation(line: 779, column: 17, scope: !467)
!470 = !DILocation(line: 780, column: 10, scope: !467)
!471 = !DILocation(line: 777, column: 10, scope: !468)
!472 = !DILocation(line: 779, column: 8, scope: !467)
!473 = !DILocation(line: 782, column: 8, scope: !467)
!474 = !DILocation(line: 785, column: 12, scope: !464)
!475 = !DILocation(line: 786, column: 2, scope: !464)
!476 = !DILocation(line: 789, column: 9, scope: !54)
!477 = !DILocation(line: 789, column: 17, scope: !54)
!478 = !DILocation(line: 789, column: 27, scope: !54)
!479 = !DILocation(line: 789, column: 35, scope: !54)
!480 = !DILocation(line: 789, column: 24, scope: !54)
!481 = !DILocation(line: 793, column: 26, scope: !53)
!482 = !DILocation(line: 794, column: 6, scope: !53)
!483 = !DILocation(line: 795, column: 6, scope: !53)
!484 = !DILocation(line: 796, column: 6, scope: !53)
!485 = !DILocation(line: 800, column: 6, scope: !486)
!486 = distinct !DILexicalBlock(scope: !53, file: !1, line: 800, column: 6)
!487 = !DILocation(line: 800, column: 16, scope: !486)
!488 = !DILocation(line: 800, column: 6, scope: !53)
!489 = !DILocation(line: 802, column: 16, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !1, line: 801, column: 4)
!491 = !DILocation(line: 805, column: 15, scope: !490)
!492 = !DILocation(line: 806, column: 4, scope: !490)
!493 = !DILocation(line: 807, column: 11, scope: !494)
!494 = distinct !DILexicalBlock(scope: !486, file: !1, line: 807, column: 11)
!495 = !DILocation(line: 807, column: 21, scope: !494)
!496 = !DILocation(line: 807, column: 11, scope: !486)
!497 = !DILocation(line: 809, column: 10, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !1, line: 809, column: 10)
!499 = distinct !DILexicalBlock(scope: !494, file: !1, line: 808, column: 4)
!500 = !DILocation(line: 809, column: 10, scope: !499)
!501 = !DILocation(line: 812, column: 12, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !1, line: 810, column: 8)
!503 = !DILocation(line: 813, column: 5, scope: !502)
!504 = !DILocation(line: 812, column: 3, scope: !502)
!505 = !DILocation(line: 814, column: 8, scope: !502)
!506 = !DILocation(line: 815, column: 16, scope: !499)
!507 = !DILocation(line: 816, column: 10, scope: !508)
!508 = distinct !DILexicalBlock(scope: !499, file: !1, line: 816, column: 10)
!509 = !DILocation(line: 816, column: 23, scope: !508)
!510 = !DILocation(line: 817, column: 8, scope: !508)
!511 = !DILocation(line: 820, column: 6, scope: !499)
!512 = !DILocation(line: 825, column: 30, scope: !494)
!513 = !DILocation(line: 825, column: 16, scope: !494)
!514 = !DILocation(line: 825, column: 14, scope: !494)
!515 = !DILocation(line: 791, column: 8, scope: !53)
!516 = !DILocation(line: 830, column: 16, scope: !517)
!517 = distinct !DILexicalBlock(scope: !53, file: !1, line: 830, column: 2)
!518 = !DILocation(line: 830, column: 7, scope: !517)
!519 = !DILocation(line: 830, column: 39, scope: !520)
!520 = distinct !DILexicalBlock(scope: !517, file: !1, line: 830, column: 2)
!521 = !DILocation(line: 830, column: 48, scope: !520)
!522 = !DILocation(line: 835, column: 42, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !1, line: 835, column: 2)
!524 = distinct !DILexicalBlock(scope: !53, file: !1, line: 835, column: 2)
!525 = !DILocation(line: 835, column: 2, scope: !524)
!526 = !DILocation(line: 836, column: 45, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !1, line: 836, column: 8)
!528 = !DILocation(line: 838, column: 12, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !1, line: 838, column: 12)
!530 = distinct !DILexicalBlock(scope: !527, file: !1, line: 837, column: 6)
!531 = !DILocation(line: 830, column: 75, scope: !520)
!532 = !DILocation(line: 830, column: 2, scope: !520)
!533 = !DILocation(line: 836, column: 9, scope: !527)
!534 = !DILocation(line: 836, column: 8, scope: !523)
!535 = !DILocation(line: 838, column: 51, scope: !529)
!536 = !DILocation(line: 838, column: 48, scope: !529)
!537 = !DILocation(line: 838, column: 12, scope: !530)
!538 = !DILocation(line: 846, column: 24, scope: !539)
!539 = distinct !DILexicalBlock(scope: !529, file: !1, line: 846, column: 17)
!540 = !DILocation(line: 851, column: 3, scope: !541)
!541 = distinct !DILexicalBlock(scope: !539, file: !1, line: 847, column: 3)
!542 = !DILocation(line: 835, column: 49, scope: !523)
!543 = !DILocation(line: 792, column: 26, scope: !53)
!544 = !DILocation(line: 835, column: 65, scope: !523)
!545 = !DILocation(line: 797, column: 6, scope: !53)
!546 = !DILocation(line: 856, column: 6, scope: !547)
!547 = distinct !DILexicalBlock(scope: !53, file: !1, line: 856, column: 6)
!548 = !DILocation(line: 856, column: 12, scope: !547)
!549 = !DILocation(line: 858, column: 10, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !1, line: 858, column: 10)
!551 = distinct !DILexicalBlock(scope: !547, file: !1, line: 857, column: 4)
!552 = !DILocation(line: 858, column: 10, scope: !551)
!553 = !DILocation(line: 859, column: 17, scope: !550)
!554 = !DILocation(line: 860, column: 10, scope: !550)
!555 = !DILocation(line: 860, column: 19, scope: !550)
!556 = !DILocation(line: 859, column: 8, scope: !550)
!557 = !DILocation(line: 861, column: 26, scope: !551)
!558 = !DILocation(line: 862, column: 15, scope: !551)
!559 = !DILocation(line: 861, column: 18, scope: !551)
!560 = !DILocation(line: 861, column: 15, scope: !551)
!561 = !DILocation(line: 863, column: 6, scope: !551)
!562 = !DILocation(line: 865, column: 13, scope: !563)
!563 = distinct !DILexicalBlock(scope: !53, file: !1, line: 865, column: 6)
!564 = !DILocation(line: 865, column: 6, scope: !53)
!565 = !DILocation(line: 868, column: 10, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !1, line: 868, column: 10)
!567 = distinct !DILexicalBlock(scope: !563, file: !1, line: 866, column: 4)
!568 = !DILocation(line: 872, column: 15, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 872, column: 7)
!570 = distinct !DILexicalBlock(scope: !566, file: !1, line: 869, column: 8)
!571 = !DILocation(line: 868, column: 10, scope: !567)
!572 = !DILocation(line: 872, column: 7, scope: !569)
!573 = !DILocation(line: 872, column: 7, scope: !570)
!574 = !DILocation(line: 873, column: 25, scope: !569)
!575 = !DILocation(line: 873, column: 15, scope: !569)
!576 = !DILocation(line: 884, column: 8, scope: !570)
!577 = !DILocation(line: 876, column: 11, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !1, line: 876, column: 11)
!579 = distinct !DILexicalBlock(scope: !569, file: !1, line: 875, column: 5)
!580 = !DILocation(line: 876, column: 11, scope: !579)
!581 = !DILocation(line: 877, column: 18, scope: !578)
!582 = !DILocation(line: 879, column: 11, scope: !578)
!583 = !DILocation(line: 879, column: 28, scope: !578)
!584 = !DILocation(line: 877, column: 9, scope: !578)
!585 = !DILocation(line: 881, column: 27, scope: !579)
!586 = !DILocation(line: 881, column: 19, scope: !579)
!587 = !DILocation(line: 881, column: 16, scope: !579)
!588 = !DILocation(line: 882, column: 7, scope: !579)
!589 = !DILocation(line: 885, column: 31, scope: !590)
!590 = distinct !DILexicalBlock(scope: !566, file: !1, line: 885, column: 15)
!591 = !DILocation(line: 885, column: 15, scope: !566)
!592 = !DILocation(line: 887, column: 17, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 887, column: 7)
!594 = distinct !DILexicalBlock(scope: !590, file: !1, line: 886, column: 8)
!595 = !DILocation(line: 887, column: 7, scope: !594)
!596 = !DILocation(line: 888, column: 31, scope: !593)
!597 = !DILocation(line: 888, column: 17, scope: !593)
!598 = !DILocation(line: 888, column: 15, scope: !593)
!599 = !DILocation(line: 898, column: 8, scope: !594)
!600 = !DILocation(line: 891, column: 11, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 891, column: 11)
!602 = distinct !DILexicalBlock(scope: !593, file: !1, line: 890, column: 5)
!603 = !DILocation(line: 891, column: 11, scope: !602)
!604 = !DILocation(line: 892, column: 18, scope: !601)
!605 = !DILocation(line: 894, column: 11, scope: !601)
!606 = !DILocation(line: 894, column: 35, scope: !601)
!607 = !DILocation(line: 894, column: 20, scope: !601)
!608 = !DILocation(line: 892, column: 9, scope: !601)
!609 = !DILocation(line: 895, column: 27, scope: !602)
!610 = !DILocation(line: 895, column: 19, scope: !602)
!611 = !DILocation(line: 895, column: 16, scope: !602)
!612 = !DILocation(line: 896, column: 14, scope: !602)
!613 = !DILocation(line: 896, column: 27, scope: !602)
!614 = !DILocation(line: 896, column: 7, scope: !602)
!615 = !DILocation(line: 899, column: 18, scope: !567)
!616 = !DILocation(line: 899, column: 15, scope: !567)
!617 = !DILocation(line: 900, column: 18, scope: !618)
!618 = distinct !DILexicalBlock(scope: !567, file: !1, line: 900, column: 10)
!619 = !DILocation(line: 900, column: 10, scope: !567)
!620 = !DILocation(line: 901, column: 17, scope: !618)
!621 = !DILocation(line: 901, column: 8, scope: !618)
!622 = !DILocation(line: 902, column: 18, scope: !623)
!623 = distinct !DILexicalBlock(scope: !567, file: !1, line: 902, column: 10)
!624 = !DILocation(line: 902, column: 10, scope: !623)
!625 = !DILocation(line: 904, column: 29, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !1, line: 903, column: 8)
!627 = !DILocation(line: 902, column: 10, scope: !567)
!628 = !DILocation(line: 904, column: 19, scope: !626)
!629 = !DILocation(line: 905, column: 3, scope: !626)
!630 = !DILocation(line: 909, column: 13, scope: !53)
!631 = !DILocation(line: 910, column: 4, scope: !53)
!632 = !DILocation(line: 912, column: 17, scope: !633)
!633 = distinct !DILexicalBlock(scope: !50, file: !1, line: 912, column: 9)
!634 = !DILocation(line: 912, column: 9, scope: !50)
!635 = !DILocation(line: 914, column: 6, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !1, line: 914, column: 6)
!637 = distinct !DILexicalBlock(scope: !633, file: !1, line: 913, column: 7)
!638 = !DILocation(line: 914, column: 14, scope: !636)
!639 = !DILocation(line: 917, column: 10, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !1, line: 917, column: 10)
!641 = distinct !DILexicalBlock(scope: !636, file: !1, line: 915, column: 4)
!642 = !DILocation(line: 917, column: 20, scope: !640)
!643 = !DILocation(line: 914, column: 6, scope: !637)
!644 = !DILocation(line: 917, column: 10, scope: !641)
!645 = !DILocation(line: 919, column: 13, scope: !646)
!646 = distinct !DILexicalBlock(scope: !640, file: !1, line: 918, column: 8)
!647 = !DILocation(line: 920, column: 12, scope: !646)
!648 = !DILocation(line: 921, column: 8, scope: !646)
!649 = !DILocation(line: 923, column: 18, scope: !640)
!650 = !DILocation(line: 924, column: 15, scope: !641)
!651 = !DILocation(line: 925, column: 4, scope: !641)
!652 = !DILocation(line: 929, column: 10, scope: !653)
!653 = distinct !DILexicalBlock(scope: !636, file: !1, line: 927, column: 4)
!654 = !DILocation(line: 931, column: 13, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !1, line: 930, column: 8)
!656 = distinct !DILexicalBlock(scope: !653, file: !1, line: 929, column: 10)
!657 = !DILocation(line: 934, column: 12, scope: !655)
!658 = !DILocation(line: 935, column: 8, scope: !655)
!659 = !DILocation(line: 936, column: 15, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !1, line: 936, column: 15)
!661 = !DILocation(line: 936, column: 25, scope: !660)
!662 = !DILocation(line: 936, column: 15, scope: !656)
!663 = !DILocation(line: 938, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !1, line: 938, column: 7)
!665 = distinct !DILexicalBlock(scope: !660, file: !1, line: 937, column: 8)
!666 = !DILocation(line: 938, column: 7, scope: !665)
!667 = !DILocation(line: 941, column: 16, scope: !668)
!668 = distinct !DILexicalBlock(scope: !664, file: !1, line: 939, column: 5)
!669 = !DILocation(line: 943, column: 7, scope: !668)
!670 = !DILocation(line: 941, column: 7, scope: !668)
!671 = !DILocation(line: 944, column: 5, scope: !668)
!672 = !DILocation(line: 945, column: 13, scope: !665)
!673 = !DILocation(line: 946, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !665, file: !1, line: 946, column: 7)
!675 = !DILocation(line: 946, column: 20, scope: !674)
!676 = !DILocation(line: 947, column: 5, scope: !674)
!677 = !DILocation(line: 954, column: 34, scope: !660)
!678 = !DILocation(line: 954, column: 20, scope: !660)
!679 = !DILocation(line: 954, column: 18, scope: !660)
!680 = !DILocation(line: 955, column: 15, scope: !653)
!681 = !DILocation(line: 958, column: 12, scope: !50)
!682 = !DILocation(line: 958, column: 5, scope: !50)
!683 = !DILocation(line: 960, column: 1, scope: !28)
!684 = !DILocation(line: 301, column: 13, scope: !75)
!685 = !DILocation(line: 303, column: 16, scope: !75)
!686 = !DILocation(line: 303, column: 7, scope: !75)
!687 = !DILocation(line: 304, column: 16, scope: !75)
!688 = !DILocation(line: 304, column: 7, scope: !75)
!689 = !DILocation(line: 305, column: 13, scope: !75)
!690 = !DILocation(line: 305, column: 7, scope: !75)
!691 = !DILocation(line: 335, column: 14, scope: !75)
!692 = !DILocation(line: 335, column: 33, scope: !75)
!693 = !DILocation(line: 335, column: 23, scope: !75)
!694 = !DILocation(line: 337, column: 15, scope: !86)
!695 = !DILocation(line: 361, column: 18, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !1, line: 361, column: 4)
!697 = distinct !DILexicalBlock(scope: !90, file: !1, line: 361, column: 4)
!698 = !DILocation(line: 337, column: 33, scope: !86)
!699 = !DILocation(line: 337, column: 24, scope: !86)
!700 = !DILocation(line: 337, column: 11, scope: !87)
!701 = !DILocation(line: 361, column: 4, scope: !697)
!702 = !DILocation(line: 344, column: 18, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !1, line: 344, column: 4)
!704 = distinct !DILexicalBlock(scope: !85, file: !1, line: 344, column: 4)
!705 = !DILocation(line: 347, column: 36, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !1, line: 345, column: 6)
!707 = !DILocation(line: 344, column: 4, scope: !704)
!708 = !DILocation(line: 346, column: 26, scope: !706)
!709 = !DILocation(line: 346, column: 14, scope: !706)
!710 = !DILocation(line: 347, column: 56, scope: !706)
!711 = !DILocation(line: 347, column: 27, scope: !706)
!712 = !DILocation(line: 347, column: 25, scope: !706)
!713 = !DILocation(line: 348, column: 42, scope: !706)
!714 = !DILocation(line: 363, column: 26, scope: !715)
!715 = distinct !DILexicalBlock(scope: !696, file: !1, line: 362, column: 6)
!716 = !DILocation(line: 363, column: 14, scope: !715)
!717 = !DILocation(line: 364, column: 39, scope: !715)
!718 = !DILocation(line: 364, column: 27, scope: !715)
!719 = !DILocation(line: 364, column: 25, scope: !715)
!720 = !DILocation(line: 365, column: 25, scope: !715)
!721 = !DILocation(line: 375, column: 30, scope: !75)
!722 = !DILocation(line: 375, column: 16, scope: !75)
!723 = !DILocation(line: 376, column: 15, scope: !75)
!724 = !DILocation(line: 377, column: 1, scope: !75)
!725 = !DILocation(line: 964, column: 10, scope: !61)
!726 = !DILocation(line: 965, column: 19, scope: !61)
!727 = !DILocation(line: 966, column: 18, scope: !61)
!728 = !DILocation(line: 968, column: 10, scope: !61)
!729 = !DILocation(line: 968, column: 3, scope: !61)
