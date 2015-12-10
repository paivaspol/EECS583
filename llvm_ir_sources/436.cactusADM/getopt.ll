; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/getopt.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }

@optind = global i32 1, align 4
@opterr = global i32 1, align 4
@optopt = global i32 63, align 4
@optarg = common global i8* null, align 8
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
define i32 @_getopt_internal(i32 %argc, i8** %argv, i8* readonly %optstring, %struct.option* readonly %longopts, i32* %longind, i32 %long_only) #0 {
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !34, metadata !114), !dbg !115
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !35, metadata !114), !dbg !116
  tail call void @llvm.dbg.value(metadata i8* %optstring, i64 0, metadata !36, metadata !114), !dbg !117
  tail call void @llvm.dbg.value(metadata %struct.option* %longopts, i64 0, metadata !37, metadata !114), !dbg !118
  tail call void @llvm.dbg.value(metadata i32* %longind, i64 0, metadata !38, metadata !114), !dbg !119
  tail call void @llvm.dbg.value(metadata i32 %long_only, i64 0, metadata !39, metadata !114), !dbg !120
  store i8* null, i8** @optarg, align 8, !dbg !121, !tbaa !122
  %1 = load i32* @optind, align 4, !dbg !126, !tbaa !128
  %2 = icmp ne i32 %1, 0, !dbg !130
  %3 = load i32* @__getopt_initialized, align 4
  %4 = icmp ne i32 %3, 0, !dbg !131
  %or.cond = and i1 %2, %4, !dbg !132
  br i1 %or.cond, label %20, label %5, !dbg !132

; <label>:5                                       ; preds = %0
  %6 = icmp eq i32 %1, 0, !dbg !133
  br i1 %6, label %7, label %8, !dbg !136

; <label>:7                                       ; preds = %5
  store i32 1, i32* @optind, align 4, !dbg !137, !tbaa !128
  br label %8, !dbg !138

; <label>:8                                       ; preds = %7, %5
  %9 = phi i32 [ 1, %7 ], [ %1, %5 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !72, metadata !114) #4, !dbg !139
  tail call void @llvm.dbg.value(metadata i8** null, i64 0, metadata !73, metadata !114) #4, !dbg !141
  store i32 %9, i32* @last_nonopt, align 4, !dbg !142, !tbaa !128
  store i32 %9, i32* @first_nonopt, align 4, !dbg !143, !tbaa !128
  store i8* null, i8** @nextchar, align 8, !dbg !144, !tbaa !122
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !145
  store i8* %10, i8** @posixly_correct, align 8, !dbg !146, !tbaa !122
  %11 = load i8* %optstring, align 1, !dbg !147, !tbaa !149
  switch i8 %11, label %16 [
    i8 45, label %12
    i8 43, label %14
  ], !dbg !150

; <label>:12                                      ; preds = %8
  store i32 2, i32* @ordering, align 4, !dbg !151, !tbaa !149
  %13 = getelementptr inbounds i8* %optstring, i64 1, !dbg !153
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !74, metadata !114) #4, !dbg !154
  br label %.thread84, !dbg !155

; <label>:14                                      ; preds = %8
  store i32 0, i32* @ordering, align 4, !dbg !156, !tbaa !149
  %15 = getelementptr inbounds i8* %optstring, i64 1, !dbg !159
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !74, metadata !114) #4, !dbg !154
  br label %.thread84, !dbg !160

; <label>:16                                      ; preds = %8
  %17 = icmp eq i8* %10, null, !dbg !161
  br i1 %17, label %19, label %18, !dbg !163

; <label>:18                                      ; preds = %16
  store i32 0, i32* @ordering, align 4, !dbg !164, !tbaa !149
  br label %.thread84, !dbg !165

; <label>:19                                      ; preds = %16
  store i32 1, i32* @ordering, align 4, !dbg !166, !tbaa !149
  br label %.thread84, !dbg !167

.thread84:                                        ; preds = %19, %18, %14, %12
  %.0.i = phi i8* [ %13, %12 ], [ %15, %14 ], [ %optstring, %18 ], [ %optstring, %19 ], !dbg !167
  tail call void @llvm.dbg.value(metadata i8* %.0.i, i64 0, metadata !36, metadata !114), !dbg !117
  store i32 1, i32* @__getopt_initialized, align 4, !dbg !168, !tbaa !128
  br label %25, !dbg !169

; <label>:20                                      ; preds = %0
  %.pre = load i8** @nextchar, align 8, !dbg !171, !tbaa !122
  %21 = icmp eq i8* %.pre, null, !dbg !172
  br i1 %21, label %25, label %22, !dbg !169

; <label>:22                                      ; preds = %20
  %23 = load i8* %.pre, align 1, !dbg !173, !tbaa !149
  %24 = icmp eq i8 %23, 0, !dbg !174
  br i1 %24, label %25, label %104, !dbg !175

; <label>:25                                      ; preds = %.thread84, %22, %20
  %.01486 = phi i8* [ %.0.i, %.thread84 ], [ %optstring, %22 ], [ %optstring, %20 ]
  %26 = phi i32 [ %9, %.thread84 ], [ %1, %22 ], [ %1, %20 ]
  %27 = load i32* @last_nonopt, align 4, !dbg !176, !tbaa !128
  %28 = icmp sgt i32 %27, %26, !dbg !179
  br i1 %28, label %29, label %30, !dbg !180

; <label>:29                                      ; preds = %25
  store i32 %26, i32* @last_nonopt, align 4, !dbg !181, !tbaa !128
  br label %30, !dbg !182

; <label>:30                                      ; preds = %29, %25
  %31 = phi i32 [ %26, %29 ], [ %27, %25 ]
  %32 = load i32* @first_nonopt, align 4, !dbg !183, !tbaa !128
  %33 = icmp sgt i32 %32, %26, !dbg !185
  br i1 %33, label %34, label %35, !dbg !186

; <label>:34                                      ; preds = %30
  store i32 %26, i32* @first_nonopt, align 4, !dbg !187, !tbaa !128
  br label %35, !dbg !188

; <label>:35                                      ; preds = %34, %30
  %36 = phi i32 [ %26, %34 ], [ %32, %30 ]
  %37 = load i32* @ordering, align 4, !dbg !189, !tbaa !149
  %38 = icmp eq i32 %37, 1, !dbg !191
  br i1 %38, label %39, label %60, !dbg !192

; <label>:39                                      ; preds = %35
  %40 = icmp eq i32 %36, %31, !dbg !193
  %41 = icmp eq i32 %31, %26, !dbg !196
  %or.cond16 = or i1 %40, %41, !dbg !197
  br i1 %or.cond16, label %43, label %42, !dbg !197

; <label>:42                                      ; preds = %39
  tail call fastcc void @exchange(i8** %argv) #6, !dbg !198
  %.pre74 = load i32* @optind, align 4, !dbg !199, !tbaa !128
  br label %.preheader, !dbg !198

; <label>:43                                      ; preds = %39
  br i1 %41, label %.preheader, label %44, !dbg !200

; <label>:44                                      ; preds = %43
  store i32 %26, i32* @first_nonopt, align 4, !dbg !201, !tbaa !128
  br label %.preheader, !dbg !203

.preheader:                                       ; preds = %44, %42, %43
  %45 = phi i32 [ %26, %44 ], [ %.pre74, %42 ], [ %26, %43 ]
  %46 = icmp slt i32 %45, %argc, !dbg !204
  br i1 %46, label %.lr.ph67, label %.thread30, !dbg !205

.lr.ph67:                                         ; preds = %.preheader, %.thread
  %47 = phi i32 [ %57, %.thread ], [ %45, %.preheader ]
  %48 = sext i32 %47 to i64, !dbg !206
  %49 = getelementptr inbounds i8** %argv, i64 %48, !dbg !206
  %50 = load i8** %49, align 8, !dbg !206, !tbaa !122
  %51 = load i8* %50, align 1, !dbg !206, !tbaa !149
  %52 = icmp eq i8 %51, 45, !dbg !206
  br i1 %52, label %53, label %.thread, !dbg !206

; <label>:53                                      ; preds = %.lr.ph67
  %54 = getelementptr inbounds i8* %50, i64 1, !dbg !206
  %55 = load i8* %54, align 1, !dbg !206, !tbaa !149
  %56 = icmp eq i8 %55, 0, !dbg !206
  br i1 %56, label %.thread, label %.thread30, !dbg !207

.thread:                                          ; preds = %.lr.ph67, %53
  %57 = add nsw i32 %47, 1, !dbg !208
  store i32 %57, i32* @optind, align 4, !dbg !208, !tbaa !128
  %58 = icmp slt i32 %57, %argc, !dbg !204
  br i1 %58, label %.lr.ph67, label %.thread30, !dbg !205

.thread30:                                        ; preds = %53, %.thread, %.preheader
  %59 = phi i32 [ %45, %.preheader ], [ %47, %53 ], [ %57, %.thread ]
  store i32 %59, i32* @last_nonopt, align 4, !dbg !209, !tbaa !128
  br label %60, !dbg !210

; <label>:60                                      ; preds = %.thread30, %35
  %61 = phi i32 [ %59, %.thread30 ], [ %31, %35 ]
  %62 = phi i32 [ %59, %.thread30 ], [ %26, %35 ]
  %63 = icmp eq i32 %62, %argc, !dbg !211
  br i1 %63, label %.thread88, label %64, !dbg !213

; <label>:64                                      ; preds = %60
  %65 = sext i32 %62 to i64, !dbg !214
  %66 = getelementptr inbounds i8** %argv, i64 %65, !dbg !214
  %67 = load i8** %66, align 8, !dbg !214, !tbaa !122
  %68 = tail call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #5, !dbg !215
  %69 = icmp eq i32 %68, 0, !dbg !215
  br i1 %69, label %70, label %79, !dbg !216

; <label>:70                                      ; preds = %64
  %71 = add nsw i32 %62, 1, !dbg !217
  store i32 %71, i32* @optind, align 4, !dbg !217, !tbaa !128
  %72 = load i32* @first_nonopt, align 4, !dbg !219, !tbaa !128
  %73 = icmp eq i32 %72, %61, !dbg !221
  %74 = icmp eq i32 %61, %71, !dbg !222
  %or.cond17 = or i1 %73, %74, !dbg !223
  br i1 %or.cond17, label %76, label %75, !dbg !223

; <label>:75                                      ; preds = %70
  tail call fastcc void @exchange(i8** %argv) #6, !dbg !224
  br label %78, !dbg !224

; <label>:76                                      ; preds = %70
  br i1 %73, label %77, label %78, !dbg !225

; <label>:77                                      ; preds = %76
  store i32 %71, i32* @first_nonopt, align 4, !dbg !226, !tbaa !128
  br label %78, !dbg !228

; <label>:78                                      ; preds = %76, %77, %75
  store i32 %argc, i32* @last_nonopt, align 4, !dbg !229, !tbaa !128
  store i32 %argc, i32* @optind, align 4, !dbg !230, !tbaa !128
  br label %.thread88, !dbg !231

; <label>:79                                      ; preds = %64
  %80 = icmp eq i32 %62, %argc, !dbg !232
  br i1 %80, label %.thread88, label %85, !dbg !234

.thread88:                                        ; preds = %78, %60, %79
  %81 = phi i32 [ %61, %79 ], [ %argc, %78 ], [ %61, %60 ]
  %82 = load i32* @first_nonopt, align 4, !dbg !235, !tbaa !128
  %83 = icmp eq i32 %82, %81, !dbg !238
  br i1 %83, label %473, label %84, !dbg !239

; <label>:84                                      ; preds = %.thread88
  store i32 %82, i32* @optind, align 4, !dbg !240, !tbaa !128
  br label %473, !dbg !241

; <label>:85                                      ; preds = %79
  %86 = sext i32 %62 to i64, !dbg !242
  %87 = getelementptr inbounds i8** %argv, i64 %86, !dbg !242
  %88 = load i8** %87, align 8, !dbg !242, !tbaa !122
  %89 = load i8* %88, align 1, !dbg !242, !tbaa !149
  %90 = icmp eq i8 %89, 45, !dbg !242
  %91 = ptrtoint i8* %88 to i64
  br i1 %90, label %92, label %96, !dbg !242

; <label>:92                                      ; preds = %85
  %93 = getelementptr inbounds i8* %88, i64 1, !dbg !242
  %94 = load i8* %93, align 1, !dbg !242, !tbaa !149
  %95 = icmp eq i8 %94, 0, !dbg !242
  br i1 %95, label %96, label %101, !dbg !244

; <label>:96                                      ; preds = %85, %92
  %97 = load i32* @ordering, align 4, !dbg !245, !tbaa !149
  %98 = icmp eq i32 %97, 0, !dbg !248
  br i1 %98, label %473, label %99, !dbg !249

; <label>:99                                      ; preds = %96
  %100 = add nsw i32 %62, 1, !dbg !250
  store i32 %100, i32* @optind, align 4, !dbg !250, !tbaa !128
  store i64 %91, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !251, !tbaa !122
  br label %473, !dbg !252

; <label>:101                                     ; preds = %92
  %102 = icmp eq i8 %94, 45, !dbg !253
  %not. = icmp ne %struct.option* %longopts, null, !dbg !254
  %. = and i1 %not., %102, !dbg !254
  %.sum = select i1 %., i64 2, i64 1, !dbg !255
  %103 = getelementptr inbounds i8* %88, i64 %.sum, !dbg !255
  store i8* %103, i8** @nextchar, align 8, !dbg !256, !tbaa !122
  br label %104, !dbg !257

; <label>:104                                     ; preds = %101, %22
  %.01485 = phi i8* [ %.01486, %101 ], [ %optstring, %22 ]
  %105 = phi i8* [ %103, %101 ], [ %.pre, %22 ]
  %106 = phi i32 [ %62, %101 ], [ %1, %22 ]
  %107 = icmp eq %struct.option* %longopts, null, !dbg !258
  br i1 %107, label %267, label %108, !dbg !259

; <label>:108                                     ; preds = %104
  %109 = sext i32 %106 to i64, !dbg !260
  %110 = getelementptr inbounds i8** %argv, i64 %109, !dbg !260
  %111 = load i8** %110, align 8, !dbg !260, !tbaa !122
  %112 = getelementptr inbounds i8* %111, i64 1, !dbg !260
  %113 = load i8* %112, align 1, !dbg !260, !tbaa !149
  %114 = icmp eq i8 %113, 45, !dbg !261
  br i1 %114, label %my_index.exit.thread, label %115, !dbg !262

; <label>:115                                     ; preds = %108
  %116 = icmp eq i32 %long_only, 0, !dbg !263
  br i1 %116, label %267, label %117, !dbg !264

; <label>:117                                     ; preds = %115
  %118 = getelementptr inbounds i8* %111, i64 2, !dbg !265
  %119 = load i8* %118, align 1, !dbg !265, !tbaa !149
  %120 = icmp eq i8 %119, 0, !dbg !265
  br i1 %120, label %121, label %my_index.exit.thread, !dbg !266

; <label>:121                                     ; preds = %117
  tail call void @llvm.dbg.value(metadata i8* %optstring, i64 0, metadata !96, metadata !114), !dbg !267
  %122 = load i8* %.01485, align 1, !dbg !269, !tbaa !149
  %123 = icmp eq i8 %122, 0, !dbg !270
  br i1 %123, label %my_index.exit.thread, label %.lr.ph.i, !dbg !270

.lr.ph.i:                                         ; preds = %121, %126
  %124 = phi i8 [ %128, %126 ], [ %122, %121 ], !dbg !271
  %.012.i = phi i8* [ %127, %126 ], [ %.01485, %121 ], !dbg !271
  %125 = icmp eq i8 %124, %113, !dbg !272
  br i1 %125, label %my_index.exit, label %126, !dbg !275

; <label>:126                                     ; preds = %.lr.ph.i
  %127 = getelementptr inbounds i8* %.012.i, i64 1, !dbg !276
  tail call void @llvm.dbg.value(metadata i8* %127, i64 0, metadata !96, metadata !114), !dbg !267
  %128 = load i8* %127, align 1, !dbg !269, !tbaa !149
  %129 = icmp eq i8 %128, 0, !dbg !270
  br i1 %129, label %my_index.exit.thread, label %.lr.ph.i, !dbg !270

my_index.exit:                                    ; preds = %.lr.ph.i
  %130 = icmp eq i8* %.012.i, null, !dbg !271
  br i1 %130, label %my_index.exit.thread, label %267, !dbg !277

my_index.exit.thread:                             ; preds = %108, %117, %my_index.exit, %121, %126, %139
  %nameend.0 = phi i8* [ %140, %139 ], [ %105, %126 ], [ %105, %121 ], [ %105, %my_index.exit ], [ %105, %117 ], [ %105, %108 ]
  %131 = load i8* %nameend.0, align 1, !dbg !278, !tbaa !149
  switch i8 %131, label %139 [
    i8 0, label %.critedge.preheader
    i8 61, label %.critedge.preheader
  ], !dbg !281

.critedge.preheader:                              ; preds = %my_index.exit.thread, %my_index.exit.thread
  %132 = getelementptr inbounds %struct.option* %longopts, i64 0, i32 0, !dbg !282
  %133 = load i8** %132, align 8, !dbg !282, !tbaa !285
  %134 = icmp eq i8* %133, null, !dbg !287
  br i1 %134, label %.thread31.thread, label %.lr.ph63, !dbg !287

.lr.ph63:                                         ; preds = %.critedge.preheader
  %135 = ptrtoint i8* %nameend.0 to i64, !dbg !288
  %136 = ptrtoint i8* %105 to i64, !dbg !288
  %137 = sub i64 %135, %136, !dbg !288
  %138 = trunc i64 %137 to i32, !dbg !290
  br label %141, !dbg !287

; <label>:139                                     ; preds = %my_index.exit.thread
  %140 = getelementptr inbounds i8* %nameend.0, i64 1, !dbg !293
  tail call void @llvm.dbg.value(metadata i8* %140, i64 0, metadata !40, metadata !114), !dbg !294
  br label %my_index.exit.thread, !dbg !295

; <label>:141                                     ; preds = %.lr.ph63, %.critedge
  %142 = phi i8* [ %133, %.lr.ph63 ], [ %154, %.critedge ]
  %option_index.062 = phi i32 [ 0, %.lr.ph63 ], [ %152, %.critedge ]
  %indfound.061 = phi i32 [ -1, %.lr.ph63 ], [ %indfound.1, %.critedge ]
  %ambig.060 = phi i32 [ 0, %.lr.ph63 ], [ %ambig.1, %.critedge ]
  %pfound.059 = phi %struct.option* [ null, %.lr.ph63 ], [ %pfound.1, %.critedge ]
  %p.058 = phi %struct.option* [ %longopts, %.lr.ph63 ], [ %151, %.critedge ]
  %143 = tail call i32 @strncmp(i8* %142, i8* %105, i64 %137) #5, !dbg !296
  %144 = icmp eq i32 %143, 0, !dbg !296
  br i1 %144, label %145, label %.critedge, !dbg !297

; <label>:145                                     ; preds = %141
  %146 = tail call i64 @strlen(i8* %142) #5, !dbg !298
  %147 = trunc i64 %146 to i32, !dbg !299
  %148 = icmp eq i32 %138, %147, !dbg !300
  br i1 %148, label %.thread31, label %149, !dbg !301

; <label>:149                                     ; preds = %145
  %150 = icmp eq %struct.option* %pfound.059, null, !dbg !302
  %p.0.pfound.0 = select i1 %150, %struct.option* %p.058, %struct.option* %pfound.059, !dbg !304
  %ambig.0. = select i1 %150, i32 %ambig.060, i32 1, !dbg !304
  %option_index.0.indfound.0 = select i1 %150, i32 %option_index.062, i32 %indfound.061, !dbg !304
  br label %.critedge, !dbg !304

.critedge:                                        ; preds = %149, %141
  %pfound.1 = phi %struct.option* [ %pfound.059, %141 ], [ %p.0.pfound.0, %149 ]
  %ambig.1 = phi i32 [ %ambig.060, %141 ], [ %ambig.0., %149 ]
  %indfound.1 = phi i32 [ %indfound.061, %141 ], [ %option_index.0.indfound.0, %149 ]
  %151 = getelementptr inbounds %struct.option* %p.058, i64 1, !dbg !306
  tail call void @llvm.dbg.value(metadata %struct.option* %151, i64 0, metadata !43, metadata !114), !dbg !307
  %152 = add nuw nsw i32 %option_index.062, 1, !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %152, i64 0, metadata !48, metadata !114), !dbg !309
  %153 = getelementptr inbounds %struct.option* %151, i64 0, i32 0, !dbg !282
  %154 = load i8** %153, align 8, !dbg !282, !tbaa !285
  %155 = icmp eq i8* %154, null, !dbg !287
  br i1 %155, label %.critedge._crit_edge, label %141, !dbg !287

.critedge._crit_edge:                             ; preds = %.critedge
  %156 = icmp eq i32 %ambig.1, 0, !dbg !310
  br i1 %156, label %.thread31, label %157, !dbg !312

; <label>:157                                     ; preds = %.critedge._crit_edge
  %158 = load i32* @opterr, align 4, !dbg !313, !tbaa !128
  %159 = icmp eq i32 %158, 0, !dbg !313
  br i1 %159, label %164, label %160, !dbg !316

; <label>:160                                     ; preds = %157
  %161 = load %struct.__sFILE** @__stderrp, align 8, !dbg !317, !tbaa !122
  %162 = load i8** %argv, align 8, !dbg !318, !tbaa !122
  %163 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %161, i8* getelementptr inbounds ([30 x i8]* @.str1, i64 0, i64 0), i8* %162, i8* %111) #5, !dbg !319
  %.pre75 = load i8** @nextchar, align 8, !dbg !320, !tbaa !122
  %.pre76 = load i32* @optind, align 4, !dbg !321, !tbaa !128
  br label %164, !dbg !319

; <label>:164                                     ; preds = %157, %160
  %165 = phi i32 [ %106, %157 ], [ %.pre76, %160 ]
  %166 = phi i8* [ %105, %157 ], [ %.pre75, %160 ]
  %167 = tail call i64 @strlen(i8* %166) #5, !dbg !322
  %168 = getelementptr inbounds i8* %166, i64 %167, !dbg !323
  store i8* %168, i8** @nextchar, align 8, !dbg !323, !tbaa !122
  %169 = add nsw i32 %165, 1, !dbg !321
  store i32 %169, i32* @optind, align 4, !dbg !321, !tbaa !128
  store i32 0, i32* @optopt, align 4, !dbg !324, !tbaa !128
  br label %473, !dbg !325

.thread31:                                        ; preds = %145, %.critedge._crit_edge
  %indfound.234 = phi i32 [ %indfound.1, %.critedge._crit_edge ], [ %option_index.062, %145 ]
  %pfound.233 = phi %struct.option* [ %pfound.1, %.critedge._crit_edge ], [ %p.058, %145 ]
  %170 = icmp eq %struct.option* %pfound.233, null, !dbg !326
  br i1 %170, label %.thread31.thread, label %171, !dbg !328

; <label>:171                                     ; preds = %.thread31
  tail call void @llvm.dbg.value(metadata i32 %indfound.1, i64 0, metadata !48, metadata !114), !dbg !309
  %172 = add nsw i32 %106, 1, !dbg !329
  store i32 %172, i32* @optind, align 4, !dbg !329, !tbaa !128
  %173 = load i8* %nameend.0, align 1, !dbg !331, !tbaa !149
  %174 = icmp eq i8 %173, 0, !dbg !331
  %175 = getelementptr inbounds %struct.option* %pfound.233, i64 0, i32 1, !dbg !333
  %176 = load i32* %175, align 4, !dbg !333, !tbaa !336
  br i1 %174, label %203, label %177, !dbg !337

; <label>:177                                     ; preds = %171
  %178 = icmp eq i32 %176, 0, !dbg !338
  br i1 %178, label %181, label %179, !dbg !339

; <label>:179                                     ; preds = %177
  %180 = getelementptr inbounds i8* %nameend.0, i64 1, !dbg !340
  store i8* %180, i8** @optarg, align 8, !dbg !341, !tbaa !122
  br label %229, !dbg !342

; <label>:181                                     ; preds = %177
  %182 = load i32* @opterr, align 4, !dbg !343, !tbaa !128
  %183 = icmp eq i32 %182, 0, !dbg !343
  br i1 %183, label %197, label %184, !dbg !346

; <label>:184                                     ; preds = %181
  %185 = load i8* %112, align 1, !dbg !347, !tbaa !149
  %186 = icmp eq i8 %185, 45, !dbg !350
  %187 = load %struct.__sFILE** @__stderrp, align 8, !dbg !351, !tbaa !122
  %188 = load i8** %argv, align 8, !dbg !352, !tbaa !122
  %189 = getelementptr inbounds %struct.option* %pfound.233, i64 0, i32 0
  %190 = load i8** %189, align 8
  br i1 %186, label %191, label %193, !dbg !353

; <label>:191                                     ; preds = %184
  %192 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %187, i8* getelementptr inbounds ([45 x i8]* @.str2, i64 0, i64 0), i8* %188, i8* %190) #5, !dbg !354
  br label %197, !dbg !354

; <label>:193                                     ; preds = %184
  %194 = load i8* %111, align 1, !dbg !355, !tbaa !149
  %195 = sext i8 %194 to i32, !dbg !355
  %196 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %187, i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0), i8* %188, i32 %195, i8* %190) #5, !dbg !356
  br label %197

; <label>:197                                     ; preds = %181, %191, %193
  %198 = load i8** @nextchar, align 8, !dbg !357, !tbaa !122
  %199 = tail call i64 @strlen(i8* %198) #5, !dbg !358
  %200 = getelementptr inbounds i8* %198, i64 %199, !dbg !359
  store i8* %200, i8** @nextchar, align 8, !dbg !359, !tbaa !122
  %201 = getelementptr inbounds %struct.option* %pfound.233, i64 0, i32 3, !dbg !360
  %202 = load i32* %201, align 4, !dbg !360, !tbaa !361
  store i32 %202, i32* @optopt, align 4, !dbg !362, !tbaa !128
  br label %473, !dbg !363

; <label>:203                                     ; preds = %171
  %204 = icmp eq i32 %176, 1, !dbg !364
  br i1 %204, label %205, label %229, !dbg !366

; <label>:205                                     ; preds = %203
  %206 = icmp slt i32 %172, %argc, !dbg !367
  br i1 %206, label %207, label %213, !dbg !370

; <label>:207                                     ; preds = %205
  %208 = add nsw i32 %106, 2, !dbg !371
  store i32 %208, i32* @optind, align 4, !dbg !371, !tbaa !128
  %209 = sext i32 %172 to i64, !dbg !372
  %210 = getelementptr inbounds i8** %argv, i64 %209, !dbg !372
  %211 = bitcast i8** %210 to i64*, !dbg !372
  %212 = load i64* %211, align 8, !dbg !372, !tbaa !122
  store i64 %212, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !373, !tbaa !122
  br label %229, !dbg !374

; <label>:213                                     ; preds = %205
  %214 = load i32* @opterr, align 4, !dbg !375, !tbaa !128
  %215 = icmp eq i32 %214, 0, !dbg !375
  br i1 %215, label %220, label %216, !dbg !378

; <label>:216                                     ; preds = %213
  %217 = load %struct.__sFILE** @__stderrp, align 8, !dbg !379, !tbaa !122
  %218 = load i8** %argv, align 8, !dbg !380, !tbaa !122
  %219 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %217, i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i8* %218, i8* %111) #5, !dbg !381
  %.pre77 = load i8** @nextchar, align 8, !dbg !382, !tbaa !122
  br label %220, !dbg !381

; <label>:220                                     ; preds = %213, %216
  %221 = phi i8* [ %105, %213 ], [ %.pre77, %216 ]
  %222 = tail call i64 @strlen(i8* %221) #5, !dbg !383
  %223 = getelementptr inbounds i8* %221, i64 %222, !dbg !384
  store i8* %223, i8** @nextchar, align 8, !dbg !384, !tbaa !122
  %224 = getelementptr inbounds %struct.option* %pfound.233, i64 0, i32 3, !dbg !385
  %225 = load i32* %224, align 4, !dbg !385, !tbaa !361
  store i32 %225, i32* @optopt, align 4, !dbg !386, !tbaa !128
  %226 = load i8* %.01485, align 1, !dbg !387, !tbaa !149
  %227 = icmp eq i8 %226, 58, !dbg !388
  %228 = select i1 %227, i32 58, i32 63, !dbg !387
  br label %473, !dbg !389

; <label>:229                                     ; preds = %203, %207, %179
  %230 = tail call i64 @strlen(i8* %105) #5, !dbg !390
  %231 = getelementptr inbounds i8* %105, i64 %230, !dbg !391
  store i8* %231, i8** @nextchar, align 8, !dbg !391, !tbaa !122
  %232 = icmp eq i32* %longind, null, !dbg !392
  br i1 %232, label %234, label %233, !dbg !394

; <label>:233                                     ; preds = %229
  store i32 %indfound.234, i32* %longind, align 4, !dbg !395, !tbaa !128
  br label %234, !dbg !396

; <label>:234                                     ; preds = %229, %233
  %235 = getelementptr inbounds %struct.option* %pfound.233, i64 0, i32 2, !dbg !397
  %236 = load i32** %235, align 8, !dbg !397, !tbaa !399
  %237 = icmp eq i32* %236, null, !dbg !400
  %238 = getelementptr inbounds %struct.option* %pfound.233, i64 0, i32 3, !dbg !401
  %239 = load i32* %238, align 4, !dbg !401, !tbaa !361
  br i1 %237, label %473, label %240, !dbg !403

; <label>:240                                     ; preds = %234
  store i32 %239, i32* %236, align 4, !dbg !404, !tbaa !128
  br label %473, !dbg !405

.thread31.thread:                                 ; preds = %.critedge.preheader, %.thread31
  %241 = icmp eq i32 %long_only, 0, !dbg !406
  %brmerge = or i1 %241, %114, !dbg !408
  br i1 %brmerge, label %my_index.exit29.thread, label %242, !dbg !408

; <label>:242                                     ; preds = %.thread31.thread
  %243 = load i8* %105, align 1, !dbg !409, !tbaa !149
  tail call void @llvm.dbg.value(metadata i8* %optstring, i64 0, metadata !96, metadata !114), !dbg !410
  %244 = load i8* %.01485, align 1, !dbg !412, !tbaa !149
  %245 = icmp eq i8 %244, 0, !dbg !413
  br i1 %245, label %my_index.exit29.thread, label %.lr.ph.i27, !dbg !413

.lr.ph.i27:                                       ; preds = %242, %248
  %246 = phi i8 [ %250, %248 ], [ %244, %242 ], !dbg !414
  %.012.i26 = phi i8* [ %249, %248 ], [ %.01485, %242 ], !dbg !414
  %247 = icmp eq i8 %246, %243, !dbg !415
  br i1 %247, label %my_index.exit29, label %248, !dbg !416

; <label>:248                                     ; preds = %.lr.ph.i27
  %249 = getelementptr inbounds i8* %.012.i26, i64 1, !dbg !417
  tail call void @llvm.dbg.value(metadata i8* %249, i64 0, metadata !96, metadata !114), !dbg !410
  %250 = load i8* %249, align 1, !dbg !412, !tbaa !149
  %251 = icmp eq i8 %250, 0, !dbg !413
  br i1 %251, label %my_index.exit29.thread, label %.lr.ph.i27, !dbg !413

my_index.exit29:                                  ; preds = %.lr.ph.i27
  %252 = icmp eq i8* %.012.i26, null, !dbg !418
  br i1 %252, label %my_index.exit29.thread, label %267, !dbg !419

my_index.exit29.thread:                           ; preds = %248, %.thread31.thread, %242, %my_index.exit29
  %253 = load i32* @opterr, align 4, !dbg !420, !tbaa !128
  %254 = icmp eq i32 %253, 0, !dbg !420
  br i1 %254, label %264, label %255, !dbg !423

; <label>:255                                     ; preds = %my_index.exit29.thread
  %256 = load %struct.__sFILE** @__stderrp, align 8, !dbg !424, !tbaa !122
  %257 = load i8** %argv, align 8, !dbg !427, !tbaa !122
  br i1 %114, label %258, label %260, !dbg !428

; <label>:258                                     ; preds = %255
  %259 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %256, i8* getelementptr inbounds ([32 x i8]* @.str5, i64 0, i64 0), i8* %257, i8* %105) #5, !dbg !429
  br label %264, !dbg !429

; <label>:260                                     ; preds = %255
  %261 = load i8* %111, align 1, !dbg !430, !tbaa !149
  %262 = sext i8 %261 to i32, !dbg !430
  %263 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %256, i8* getelementptr inbounds ([32 x i8]* @.str6, i64 0, i64 0), i8* %257, i32 %262, i8* %105) #5, !dbg !431
  br label %264

; <label>:264                                     ; preds = %my_index.exit29.thread, %258, %260
  store i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8** @nextchar, align 8, !dbg !432, !tbaa !122
  %265 = load i32* @optind, align 4, !dbg !433, !tbaa !128
  %266 = add nsw i32 %265, 1, !dbg !433
  store i32 %266, i32* @optind, align 4, !dbg !433, !tbaa !128
  store i32 0, i32* @optopt, align 4, !dbg !434, !tbaa !128
  br label %473, !dbg !435

; <label>:267                                     ; preds = %my_index.exit, %115, %104, %my_index.exit29
  %268 = getelementptr inbounds i8* %105, i64 1, !dbg !436
  store i8* %268, i8** @nextchar, align 8, !dbg !436, !tbaa !122
  %269 = load i8* %105, align 1, !dbg !437, !tbaa !149
  tail call void @llvm.dbg.value(metadata i8 %269, i64 0, metadata !49, metadata !114), !dbg !438
  %270 = sext i8 %269 to i32, !dbg !439
  tail call void @llvm.dbg.value(metadata i8* %optstring, i64 0, metadata !96, metadata !114), !dbg !440
  tail call void @llvm.dbg.value(metadata i32 %270, i64 0, metadata !97, metadata !114), !dbg !442
  %271 = load i8* %.01485, align 1, !dbg !443, !tbaa !149
  %272 = icmp eq i8 %271, 0, !dbg !444
  br i1 %272, label %my_index.exit25, label %.lr.ph.i23, !dbg !444

.lr.ph.i23:                                       ; preds = %267, %275
  %273 = phi i8 [ %277, %275 ], [ %271, %267 ], !dbg !445
  %.012.i22 = phi i8* [ %276, %275 ], [ %.01485, %267 ], !dbg !445
  %274 = icmp eq i8 %273, %269, !dbg !446
  br i1 %274, label %my_index.exit25, label %275, !dbg !447

; <label>:275                                     ; preds = %.lr.ph.i23
  %276 = getelementptr inbounds i8* %.012.i22, i64 1, !dbg !448
  tail call void @llvm.dbg.value(metadata i8* %276, i64 0, metadata !96, metadata !114), !dbg !440
  %277 = load i8* %276, align 1, !dbg !443, !tbaa !149
  %278 = icmp eq i8 %277, 0, !dbg !444
  br i1 %278, label %my_index.exit25, label %.lr.ph.i23, !dbg !444

my_index.exit25:                                  ; preds = %.lr.ph.i23, %275, %267
  %.0.i24 = phi i8* [ null, %267 ], [ null, %275 ], [ %.012.i22, %.lr.ph.i23 ], !dbg !445
  tail call void @llvm.dbg.value(metadata i8* %.0.i24, i64 0, metadata !51, metadata !114), !dbg !449
  %279 = load i8* %268, align 1, !dbg !450, !tbaa !149
  %280 = icmp eq i8 %279, 0, !dbg !452
  br i1 %280, label %281, label %283, !dbg !453

; <label>:281                                     ; preds = %my_index.exit25
  %282 = add nsw i32 %106, 1, !dbg !454
  store i32 %282, i32* @optind, align 4, !dbg !454, !tbaa !128
  br label %283, !dbg !454

; <label>:283                                     ; preds = %281, %my_index.exit25
  %284 = phi i32 [ %282, %281 ], [ %106, %my_index.exit25 ]
  %285 = icmp eq i8* %.0.i24, null, !dbg !455
  %286 = icmp eq i8 %269, 58, !dbg !457
  %or.cond18 = or i1 %286, %285, !dbg !458
  br i1 %or.cond18, label %287, label %300, !dbg !458

; <label>:287                                     ; preds = %283
  %288 = load i32* @opterr, align 4, !dbg !459, !tbaa !128
  %289 = icmp eq i32 %288, 0, !dbg !459
  br i1 %289, label %299, label %290, !dbg !462

; <label>:290                                     ; preds = %287
  %291 = load i8** @posixly_correct, align 8, !dbg !463, !tbaa !122
  %292 = icmp eq i8* %291, null, !dbg !463
  %293 = load %struct.__sFILE** @__stderrp, align 8, !dbg !466, !tbaa !122
  %294 = load i8** %argv, align 8, !dbg !467, !tbaa !122
  br i1 %292, label %297, label %295, !dbg !468

; <label>:295                                     ; preds = %290
  %296 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %293, i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i8* %294, i32 %270) #5, !dbg !469
  br label %299, !dbg !469

; <label>:297                                     ; preds = %290
  %298 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %293, i8* getelementptr inbounds ([26 x i8]* @.str9, i64 0, i64 0), i8* %294, i32 %270) #5, !dbg !470
  br label %299

; <label>:299                                     ; preds = %287, %295, %297
  store i32 %270, i32* @optopt, align 4, !dbg !471, !tbaa !128
  br label %473, !dbg !472

; <label>:300                                     ; preds = %283
  %301 = load i8* %.0.i24, align 1, !dbg !473, !tbaa !149
  %302 = icmp eq i8 %301, 87, !dbg !474
  %303 = getelementptr inbounds i8* %.0.i24, i64 1, !dbg !475
  %304 = load i8* %303, align 1, !dbg !475, !tbaa !149
  %305 = icmp eq i8 %304, 59, !dbg !476
  %or.cond89 = and i1 %302, %305, !dbg !477
  br i1 %or.cond89, label %306, label %._crit_edge78, !dbg !477

; <label>:306                                     ; preds = %300
  tail call void @llvm.dbg.value(metadata %struct.option* null, i64 0, metadata !56, metadata !114), !dbg !478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !114), !dbg !479
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !58, metadata !114), !dbg !480
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !59, metadata !114), !dbg !481
  %307 = load i8* %268, align 1, !dbg !482, !tbaa !149
  %308 = icmp eq i8 %307, 0, !dbg !484
  br i1 %308, label %311, label %309, !dbg !485

; <label>:309                                     ; preds = %306
  store i8* %268, i8** @optarg, align 8, !dbg !486, !tbaa !122
  %310 = add nsw i32 %284, 1, !dbg !488
  store i32 %310, i32* @optind, align 4, !dbg !488, !tbaa !128
  br label %330, !dbg !489

; <label>:311                                     ; preds = %306
  %312 = icmp eq i32 %284, %argc, !dbg !490
  br i1 %312, label %313, label %323, !dbg !492

; <label>:313                                     ; preds = %311
  %314 = load i32* @opterr, align 4, !dbg !493, !tbaa !128
  %315 = icmp eq i32 %314, 0, !dbg !493
  br i1 %315, label %320, label %316, !dbg !496

; <label>:316                                     ; preds = %313
  %317 = load %struct.__sFILE** @__stderrp, align 8, !dbg !497, !tbaa !122
  %318 = load i8** %argv, align 8, !dbg !499, !tbaa !122
  %319 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %317, i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i8* %318, i32 %270) #5, !dbg !500
  br label %320, !dbg !501

; <label>:320                                     ; preds = %313, %316
  store i32 %270, i32* @optopt, align 4, !dbg !502, !tbaa !128
  %321 = load i8* %.01485, align 1, !dbg !503, !tbaa !149
  %322 = icmp eq i8 %321, 58, !dbg !505
  %.19 = select i1 %322, i32 58, i32 63, !dbg !506
  br label %473, !dbg !507

; <label>:323                                     ; preds = %311
  %324 = add nsw i32 %284, 1, !dbg !508
  store i32 %324, i32* @optind, align 4, !dbg !508, !tbaa !128
  %325 = sext i32 %284 to i64, !dbg !509
  %326 = getelementptr inbounds i8** %argv, i64 %325, !dbg !509
  %327 = bitcast i8** %326 to i64*, !dbg !509
  %328 = load i64* %327, align 8, !dbg !509, !tbaa !122
  store i64 %328, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !510, !tbaa !122
  %329 = inttoptr i64 %328 to i8*
  br label %330

; <label>:330                                     ; preds = %323, %309
  %331 = phi i32 [ %324, %323 ], [ %310, %309 ]
  %332 = phi i8* [ %329, %323 ], [ %268, %309 ]
  tail call void @llvm.dbg.value(metadata i8* %332, i64 0, metadata !52, metadata !114), !dbg !511
  store i8* %332, i8** @nextchar, align 8, !dbg !512, !tbaa !122
  br label %333, !dbg !514

; <label>:333                                     ; preds = %342, %330
  %nameend1.0 = phi i8* [ %332, %330 ], [ %343, %342 ]
  %334 = load i8* %nameend1.0, align 1, !dbg !515, !tbaa !149
  switch i8 %334, label %342 [
    i8 0, label %.critedge11.preheader
    i8 61, label %.critedge11.preheader
  ], !dbg !517

.critedge11.preheader:                            ; preds = %333, %333
  %335 = getelementptr inbounds %struct.option* %longopts, i64 0, i32 0, !dbg !518
  %336 = load i8** %335, align 8, !dbg !518, !tbaa !285
  %337 = icmp eq i8* %336, null, !dbg !521
  br i1 %337, label %.thread35.thread, label %.lr.ph, !dbg !521

.lr.ph:                                           ; preds = %.critedge11.preheader
  %338 = ptrtoint i8* %nameend1.0 to i64, !dbg !522
  %339 = ptrtoint i8* %332 to i64, !dbg !522
  %340 = sub i64 %338, %339, !dbg !522
  %341 = and i64 %340, 4294967295, !dbg !524
  br label %344, !dbg !521

; <label>:342                                     ; preds = %333
  %343 = getelementptr inbounds i8* %nameend1.0, i64 1, !dbg !527
  tail call void @llvm.dbg.value(metadata i8* %343, i64 0, metadata !52, metadata !114), !dbg !511
  br label %333, !dbg !528

; <label>:344                                     ; preds = %.lr.ph, %.critedge11
  %345 = phi i8* [ %336, %.lr.ph ], [ %356, %.critedge11 ]
  %option_index7.055 = phi i32 [ 0, %.lr.ph ], [ %354, %.critedge11 ]
  %indfound6.054 = phi i32 [ 0, %.lr.ph ], [ %indfound6.1, %.critedge11 ]
  %ambig5.053 = phi i32 [ 0, %.lr.ph ], [ %ambig5.1, %.critedge11 ]
  %pfound3.052 = phi %struct.option* [ null, %.lr.ph ], [ %pfound3.1, %.critedge11 ]
  %p2.051 = phi %struct.option* [ %longopts, %.lr.ph ], [ %353, %.critedge11 ]
  %346 = tail call i32 @strncmp(i8* %345, i8* %332, i64 %340) #5, !dbg !529
  %347 = icmp eq i32 %346, 0, !dbg !529
  br i1 %347, label %348, label %.critedge11, !dbg !530

; <label>:348                                     ; preds = %344
  %349 = tail call i64 @strlen(i8* %345) #5, !dbg !531
  %350 = icmp eq i64 %341, %349, !dbg !532
  br i1 %350, label %.thread35, label %351, !dbg !533

; <label>:351                                     ; preds = %348
  %352 = icmp eq %struct.option* %pfound3.052, null, !dbg !534
  %p2.0.pfound3.0 = select i1 %352, %struct.option* %p2.051, %struct.option* %pfound3.052, !dbg !536
  %ambig5.0. = select i1 %352, i32 %ambig5.053, i32 1, !dbg !536
  %option_index7.0.indfound6.0 = select i1 %352, i32 %option_index7.055, i32 %indfound6.054, !dbg !536
  br label %.critedge11, !dbg !536

.critedge11:                                      ; preds = %351, %344
  %pfound3.1 = phi %struct.option* [ %pfound3.052, %344 ], [ %p2.0.pfound3.0, %351 ]
  %ambig5.1 = phi i32 [ %ambig5.053, %344 ], [ %ambig5.0., %351 ]
  %indfound6.1 = phi i32 [ %indfound6.054, %344 ], [ %option_index7.0.indfound6.0, %351 ]
  %353 = getelementptr inbounds %struct.option* %p2.051, i64 1, !dbg !538
  tail call void @llvm.dbg.value(metadata %struct.option* %353, i64 0, metadata !55, metadata !114), !dbg !539
  %354 = add nuw nsw i32 %option_index7.055, 1, !dbg !540
  tail call void @llvm.dbg.value(metadata i32 %354, i64 0, metadata !60, metadata !114), !dbg !541
  %355 = getelementptr inbounds %struct.option* %353, i64 0, i32 0, !dbg !518
  %356 = load i8** %355, align 8, !dbg !518, !tbaa !285
  %357 = icmp eq i8* %356, null, !dbg !521
  br i1 %357, label %.critedge11._crit_edge, label %344, !dbg !521

.critedge11._crit_edge:                           ; preds = %.critedge11
  %358 = icmp eq i32 %ambig5.1, 0, !dbg !542
  br i1 %358, label %.thread35, label %359, !dbg !544

; <label>:359                                     ; preds = %.critedge11._crit_edge
  %360 = load i32* @opterr, align 4, !dbg !545, !tbaa !128
  %361 = icmp eq i32 %360, 0, !dbg !545
  br i1 %361, label %369, label %362, !dbg !548

; <label>:362                                     ; preds = %359
  %363 = load %struct.__sFILE** @__stderrp, align 8, !dbg !549, !tbaa !122
  %364 = load i8** %argv, align 8, !dbg !550, !tbaa !122
  %365 = sext i32 %331 to i64, !dbg !551
  %366 = getelementptr inbounds i8** %argv, i64 %365, !dbg !551
  %367 = load i8** %366, align 8, !dbg !551, !tbaa !122
  %368 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %363, i8* getelementptr inbounds ([33 x i8]* @.str11, i64 0, i64 0), i8* %364, i8* %367) #5, !dbg !552
  %.pre80 = load i8** @nextchar, align 8, !dbg !553, !tbaa !122
  %.pre81 = load i32* @optind, align 4, !dbg !554, !tbaa !128
  br label %369, !dbg !552

; <label>:369                                     ; preds = %359, %362
  %370 = phi i32 [ %331, %359 ], [ %.pre81, %362 ]
  %371 = phi i8* [ %332, %359 ], [ %.pre80, %362 ]
  %372 = tail call i64 @strlen(i8* %371) #5, !dbg !555
  %373 = getelementptr inbounds i8* %371, i64 %372, !dbg !556
  store i8* %373, i8** @nextchar, align 8, !dbg !556, !tbaa !122
  %374 = add nsw i32 %370, 1, !dbg !554
  store i32 %374, i32* @optind, align 4, !dbg !554, !tbaa !128
  br label %473, !dbg !557

.thread35:                                        ; preds = %348, %.critedge11._crit_edge
  %indfound6.238 = phi i32 [ %indfound6.1, %.critedge11._crit_edge ], [ %option_index7.055, %348 ]
  %pfound3.237 = phi %struct.option* [ %pfound3.1, %.critedge11._crit_edge ], [ %p2.051, %348 ]
  %375 = icmp eq %struct.option* %pfound3.237, null, !dbg !558
  br i1 %375, label %.thread35.thread, label %376, !dbg !560

; <label>:376                                     ; preds = %.thread35
  tail call void @llvm.dbg.value(metadata i32 %indfound6.1, i64 0, metadata !60, metadata !114), !dbg !541
  %377 = icmp eq i8 %334, 0, !dbg !561
  %378 = getelementptr inbounds %struct.option* %pfound3.237, i64 0, i32 1, !dbg !564
  %379 = load i32* %378, align 4, !dbg !564, !tbaa !336
  br i1 %377, label %397, label %380, !dbg !567

; <label>:380                                     ; preds = %376
  %381 = icmp eq i32 %379, 0, !dbg !568
  br i1 %381, label %384, label %382, !dbg !569

; <label>:382                                     ; preds = %380
  %383 = getelementptr inbounds i8* %nameend1.0, i64 1, !dbg !570
  store i8* %383, i8** @optarg, align 8, !dbg !571, !tbaa !122
  br label %425, !dbg !572

; <label>:384                                     ; preds = %380
  %385 = load i32* @opterr, align 4, !dbg !573, !tbaa !128
  %386 = icmp eq i32 %385, 0, !dbg !573
  br i1 %386, label %393, label %387, !dbg !576

; <label>:387                                     ; preds = %384
  %388 = load %struct.__sFILE** @__stderrp, align 8, !dbg !577, !tbaa !122
  %389 = load i8** %argv, align 8, !dbg !578, !tbaa !122
  %390 = getelementptr inbounds %struct.option* %pfound3.237, i64 0, i32 0, !dbg !579
  %391 = load i8** %390, align 8, !dbg !579, !tbaa !285
  %392 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %388, i8* getelementptr inbounds ([46 x i8]* @.str12, i64 0, i64 0), i8* %389, i8* %391) #5, !dbg !580
  %.pre82 = load i8** @nextchar, align 8, !dbg !581, !tbaa !122
  br label %393, !dbg !580

; <label>:393                                     ; preds = %384, %387
  %394 = phi i8* [ %332, %384 ], [ %.pre82, %387 ]
  %395 = tail call i64 @strlen(i8* %394) #5, !dbg !582
  %396 = getelementptr inbounds i8* %394, i64 %395, !dbg !583
  store i8* %396, i8** @nextchar, align 8, !dbg !583, !tbaa !122
  br label %473, !dbg !584

; <label>:397                                     ; preds = %376
  %398 = icmp eq i32 %379, 1, !dbg !585
  br i1 %398, label %399, label %425, !dbg !587

; <label>:399                                     ; preds = %397
  %400 = icmp slt i32 %331, %argc, !dbg !588
  br i1 %400, label %401, label %407, !dbg !591

; <label>:401                                     ; preds = %399
  %402 = add nsw i32 %331, 1, !dbg !592
  store i32 %402, i32* @optind, align 4, !dbg !592, !tbaa !128
  %403 = sext i32 %331 to i64, !dbg !593
  %404 = getelementptr inbounds i8** %argv, i64 %403, !dbg !593
  %405 = bitcast i8** %404 to i64*, !dbg !593
  %406 = load i64* %405, align 8, !dbg !593, !tbaa !122
  store i64 %406, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !594, !tbaa !122
  br label %425, !dbg !595

; <label>:407                                     ; preds = %399
  %408 = load i32* @opterr, align 4, !dbg !596, !tbaa !128
  %409 = icmp eq i32 %408, 0, !dbg !596
  br i1 %409, label %418, label %410, !dbg !599

; <label>:410                                     ; preds = %407
  %411 = load %struct.__sFILE** @__stderrp, align 8, !dbg !600, !tbaa !122
  %412 = load i8** %argv, align 8, !dbg !601, !tbaa !122
  %413 = add nsw i32 %331, -1, !dbg !602
  %414 = sext i32 %413 to i64, !dbg !603
  %415 = getelementptr inbounds i8** %argv, i64 %414, !dbg !603
  %416 = load i8** %415, align 8, !dbg !603, !tbaa !122
  %417 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %411, i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i8* %412, i8* %416) #5, !dbg !604
  %.pre83 = load i8** @nextchar, align 8, !dbg !605, !tbaa !122
  br label %418, !dbg !604

; <label>:418                                     ; preds = %407, %410
  %419 = phi i8* [ %332, %407 ], [ %.pre83, %410 ]
  %420 = tail call i64 @strlen(i8* %419) #5, !dbg !606
  %421 = getelementptr inbounds i8* %419, i64 %420, !dbg !607
  store i8* %421, i8** @nextchar, align 8, !dbg !607, !tbaa !122
  %422 = load i8* %.01485, align 1, !dbg !608, !tbaa !149
  %423 = icmp eq i8 %422, 58, !dbg !609
  %424 = select i1 %423, i32 58, i32 63, !dbg !608
  br label %473, !dbg !610

; <label>:425                                     ; preds = %397, %401, %382
  %426 = tail call i64 @strlen(i8* %332) #5, !dbg !611
  %427 = getelementptr inbounds i8* %332, i64 %426, !dbg !612
  store i8* %427, i8** @nextchar, align 8, !dbg !612, !tbaa !122
  %428 = icmp eq i32* %longind, null, !dbg !613
  br i1 %428, label %430, label %429, !dbg !615

; <label>:429                                     ; preds = %425
  store i32 %indfound6.238, i32* %longind, align 4, !dbg !616, !tbaa !128
  br label %430, !dbg !617

; <label>:430                                     ; preds = %425, %429
  %431 = getelementptr inbounds %struct.option* %pfound3.237, i64 0, i32 2, !dbg !618
  %432 = load i32** %431, align 8, !dbg !618, !tbaa !399
  %433 = icmp eq i32* %432, null, !dbg !620
  %434 = getelementptr inbounds %struct.option* %pfound3.237, i64 0, i32 3, !dbg !621
  %435 = load i32* %434, align 4, !dbg !621, !tbaa !361
  br i1 %433, label %473, label %436, !dbg !623

; <label>:436                                     ; preds = %430
  store i32 %435, i32* %432, align 4, !dbg !624, !tbaa !128
  br label %473, !dbg !625

.thread35.thread:                                 ; preds = %.critedge11.preheader, %.thread35
  store i8* null, i8** @nextchar, align 8, !dbg !626, !tbaa !122
  br label %473, !dbg !627

._crit_edge78:                                    ; preds = %300
  %437 = icmp eq i8 %304, 58, !dbg !628
  br i1 %437, label %438, label %471, !dbg !630

; <label>:438                                     ; preds = %._crit_edge78
  %439 = getelementptr inbounds i8* %.0.i24, i64 2, !dbg !631
  %440 = load i8* %439, align 1, !dbg !631, !tbaa !149
  %441 = icmp eq i8 %440, 58, !dbg !634
  %442 = load i8* %268, align 1, !dbg !635, !tbaa !149
  %443 = icmp ne i8 %442, 0, !dbg !638
  br i1 %441, label %444, label %449, !dbg !639

; <label>:444                                     ; preds = %438
  br i1 %443, label %445, label %447, !dbg !640

; <label>:445                                     ; preds = %444
  store i8* %268, i8** @optarg, align 8, !dbg !641, !tbaa !122
  %446 = add nsw i32 %284, 1, !dbg !643
  store i32 %446, i32* @optind, align 4, !dbg !643, !tbaa !128
  br label %448, !dbg !644

; <label>:447                                     ; preds = %444
  store i8* null, i8** @optarg, align 8, !dbg !645, !tbaa !122
  br label %448

; <label>:448                                     ; preds = %447, %445
  store i8* null, i8** @nextchar, align 8, !dbg !646, !tbaa !122
  br label %471, !dbg !647

; <label>:449                                     ; preds = %438
  br i1 %443, label %450, label %452, !dbg !648

; <label>:450                                     ; preds = %449
  store i8* %268, i8** @optarg, align 8, !dbg !650, !tbaa !122
  %451 = add nsw i32 %284, 1, !dbg !653
  store i32 %451, i32* @optind, align 4, !dbg !653, !tbaa !128
  br label %470, !dbg !654

; <label>:452                                     ; preds = %449
  %453 = icmp eq i32 %284, %argc, !dbg !655
  br i1 %453, label %454, label %464, !dbg !657

; <label>:454                                     ; preds = %452
  %455 = load i32* @opterr, align 4, !dbg !658, !tbaa !128
  %456 = icmp eq i32 %455, 0, !dbg !658
  br i1 %456, label %461, label %457, !dbg !661

; <label>:457                                     ; preds = %454
  %458 = load %struct.__sFILE** @__stderrp, align 8, !dbg !662, !tbaa !122
  %459 = load i8** %argv, align 8, !dbg !664, !tbaa !122
  %460 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %458, i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i8* %459, i32 %270) #5, !dbg !665
  br label %461, !dbg !666

; <label>:461                                     ; preds = %454, %457
  store i32 %270, i32* @optopt, align 4, !dbg !667, !tbaa !128
  %462 = load i8* %.01485, align 1, !dbg !668, !tbaa !149
  %463 = icmp eq i8 %462, 58, !dbg !670
  %.20 = select i1 %463, i8 58, i8 63, !dbg !671
  br label %470, !dbg !671

; <label>:464                                     ; preds = %452
  %465 = add nsw i32 %284, 1, !dbg !672
  store i32 %465, i32* @optind, align 4, !dbg !672, !tbaa !128
  %466 = sext i32 %284 to i64, !dbg !673
  %467 = getelementptr inbounds i8** %argv, i64 %466, !dbg !673
  %468 = bitcast i8** %467 to i64*, !dbg !673
  %469 = load i64* %468, align 8, !dbg !673, !tbaa !122
  store i64 %469, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !674, !tbaa !122
  br label %470

; <label>:470                                     ; preds = %461, %464, %450
  %c.1 = phi i8 [ %269, %450 ], [ %269, %464 ], [ %.20, %461 ]
  store i8* null, i8** @nextchar, align 8, !dbg !675, !tbaa !122
  br label %471

; <label>:471                                     ; preds = %448, %470, %._crit_edge78
  %c.2 = phi i8 [ %269, %448 ], [ %c.1, %470 ], [ %269, %._crit_edge78 ]
  %472 = sext i8 %c.2 to i32, !dbg !676
  br label %473, !dbg !677

; <label>:473                                     ; preds = %430, %234, %96, %84, %.thread88, %471, %.thread35.thread, %436, %418, %393, %369, %320, %299, %264, %240, %220, %197, %164, %99
  %.0 = phi i32 [ 1, %99 ], [ 0, %240 ], [ 63, %197 ], [ %228, %220 ], [ 63, %264 ], [ 63, %299 ], [ 0, %436 ], [ 63, %393 ], [ %424, %418 ], [ 87, %.thread35.thread ], [ 63, %369 ], [ %.19, %320 ], [ %472, %471 ], [ 63, %164 ], [ -1, %.thread88 ], [ -1, %84 ], [ -1, %96 ], [ %239, %234 ], [ %435, %430 ]
  ret i32 %.0, !dbg !678
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @exchange(i8** nocapture %argv) #0 {
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !79, metadata !114), !dbg !679
  %1 = load i32* @first_nonopt, align 4, !dbg !680, !tbaa !128
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !80, metadata !114), !dbg !681
  %2 = load i32* @last_nonopt, align 4, !dbg !682, !tbaa !128
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !81, metadata !114), !dbg !683
  %3 = load i32* @optind, align 4, !dbg !684, !tbaa !128
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !82, metadata !114), !dbg !685
  %4 = icmp sgt i32 %3, %2, !dbg !686
  %5 = icmp sgt i32 %2, %1, !dbg !687
  %or.cond714 = and i1 %4, %5, !dbg !688
  br i1 %or.cond714, label %.lr.ph10.lr.ph, label %.critedge, !dbg !688

.lr.ph10.lr.ph:                                   ; preds = %0
  %6 = sext i32 %2 to i64, !dbg !688
  %7 = xor i32 %2, -1, !dbg !688
  br label %.lr.ph10, !dbg !688

.lr.ph10:                                         ; preds = %.lr.ph10.lr.ph, %.outer
  %bottom.0.ph16 = phi i32 [ %1, %.lr.ph10.lr.ph ], [ %18, %.outer ]
  %top.0.ph15 = phi i32 [ %3, %.lr.ph10.lr.ph ], [ %21, %.outer ]
  %8 = sub nsw i32 %top.0.ph15, %2, !dbg !689
  %9 = icmp sgt i32 %8, 0, !dbg !690
  %10 = add i32 %top.0.ph15, %7, !dbg !688
  %11 = sext i32 %bottom.0.ph16 to i64
  %12 = sub i32 %top.0.ph15, %2, !dbg !688
  %13 = sext i32 %12 to i64
  %14 = sext i32 %8 to i64, !dbg !688
  br label %15, !dbg !688

; <label>:15                                      ; preds = %.lr.ph10, %._crit_edge
  %indvars.iv22 = phi i64 [ %11, %.lr.ph10 ], [ %indvars.iv.next23, %._crit_edge ]
  %16 = sub nsw i64 %6, %indvars.iv22, !dbg !693
  %17 = icmp sgt i64 %14, %16, !dbg !694
  br i1 %17, label %.preheader, label %.preheader4, !dbg !695

.preheader4:                                      ; preds = %15
  br i1 %9, label %.lr.ph, label %._crit_edge, !dbg !696

.preheader:                                       ; preds = %15
  %18 = trunc i64 %indvars.iv22 to i32, !dbg !697
  %19 = trunc i64 %16 to i32, !dbg !697
  %20 = icmp sgt i32 %19, 0, !dbg !697
  %21 = sub i32 %top.0.ph15, %19, !dbg !700
  br i1 %20, label %.lr.ph12, label %.outer, !dbg !702

.lr.ph12:                                         ; preds = %.preheader
  %sext = shl i64 %indvars.iv22, 32, !dbg !702
  %22 = ashr exact i64 %sext, 32, !dbg !702
  %23 = sext i32 %21 to i64, !dbg !702
  %24 = add i32 %19, -1, !dbg !702
  br label %25, !dbg !702

; <label>:25                                      ; preds = %25, %.lr.ph12
  %indvars.iv24 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next25, %25 ]
  %26 = add nsw i64 %indvars.iv24, %22, !dbg !703
  %27 = getelementptr inbounds i8** %argv, i64 %26, !dbg !704
  %28 = bitcast i8** %27 to i64*, !dbg !704
  %29 = load i64* %28, align 8, !dbg !704, !tbaa !122
  %30 = add nsw i64 %23, %indvars.iv24, !dbg !705
  %31 = getelementptr inbounds i8** %argv, i64 %30, !dbg !706
  %32 = bitcast i8** %31 to i64*, !dbg !706
  %33 = load i64* %32, align 8, !dbg !706, !tbaa !122
  store i64 %33, i64* %28, align 8, !dbg !707, !tbaa !122
  store i64 %29, i64* %32, align 8, !dbg !708, !tbaa !122
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !dbg !702
  %lftr.wideiv26 = trunc i64 %indvars.iv24 to i32, !dbg !702
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %24, !dbg !702
  br i1 %exitcond27, label %.outer, label %25, !dbg !702

.outer:                                           ; preds = %25, %.preheader
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !82, metadata !114), !dbg !685
  %34 = icmp sgt i32 %21, %2, !dbg !686
  %35 = icmp sgt i32 %2, %18, !dbg !687
  %or.cond7 = and i1 %34, %35, !dbg !688
  br i1 %or.cond7, label %.lr.ph10, label %.critedge, !dbg !688

.lr.ph:                                           ; preds = %.preheader4, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader4 ]
  %36 = add nsw i64 %indvars.iv, %indvars.iv22, !dbg !709
  %37 = getelementptr inbounds i8** %argv, i64 %36, !dbg !711
  %38 = bitcast i8** %37 to i64*, !dbg !711
  %39 = load i64* %38, align 8, !dbg !711, !tbaa !122
  %40 = add nsw i64 %indvars.iv, %6, !dbg !712
  %41 = getelementptr inbounds i8** %argv, i64 %40, !dbg !713
  %42 = bitcast i8** %41 to i64*, !dbg !713
  %43 = load i64* %42, align 8, !dbg !713, !tbaa !122
  store i64 %43, i64* %38, align 8, !dbg !714, !tbaa !122
  store i64 %39, i64* %42, align 8, !dbg !715, !tbaa !122
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !696
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !696
  %exitcond = icmp eq i32 %lftr.wideiv, %10, !dbg !696
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !696

._crit_edge:                                      ; preds = %.lr.ph, %.preheader4
  %indvars.iv.next23 = add i64 %indvars.iv22, %13, !dbg !688
  %44 = icmp sgt i64 %6, %indvars.iv.next23, !dbg !687
  br i1 %44, label %15, label %.critedge, !dbg !688

.critedge:                                        ; preds = %.outer, %._crit_edge, %0
  %45 = sub i32 %3, %2, !dbg !716
  %46 = add nsw i32 %45, %1, !dbg !717
  store i32 %46, i32* @first_nonopt, align 4, !dbg !717, !tbaa !128
  store i32 %3, i32* @last_nonopt, align 4, !dbg !718, !tbaa !128
  ret void, !dbg !719
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
define i32 @getopt(i32 %argc, i8** %argv, i8* readonly %optstring) #0 {
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !65, metadata !114), !dbg !720
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !66, metadata !114), !dbg !721
  tail call void @llvm.dbg.value(metadata i8* %optstring, i64 0, metadata !67, metadata !114), !dbg !722
  %1 = tail call i32 @_getopt_internal(i32 %argc, i8** %argv, i8* %optstring, %struct.option* null, i32* null, i32 0) #6, !dbg !723
  ret i32 %1, !dbg !724
}

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!110, !111, !112}
!llvm.ident = !{!113}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !27, globals: !98, imports: !109)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/getopt.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 195, size: 32, align: 32, elements: !4)
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
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !17, line: 83, size: 256, align: 64, elements: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/getopt.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !{!19, !22, !24, !26}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !16, file: !17, line: 86, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !16, file: !17, line: 92, baseType: !23, size: 32, align: 32, offset: 64)
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !16, file: !17, line: 93, baseType: !25, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !16, file: !17, line: 94, baseType: !23, size: 32, align: 32, offset: 192)
!27 = !{!28, !61, !68, !75, !92}
!28 = !DISubprogram(name: "_getopt_internal", scope: !1, file: !1, line: 523, type: !29, isLocal: false, isDefinition: true, scopeLine: 530, isOptimized: true, function: i32 (i32, i8**, i8*, %struct.option*, i32*, i32)* @_getopt_internal, variables: !33)
!29 = !DISubroutineType(types: !30)
!30 = !{!23, !23, !31, !20, !14, !25, !23}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !43, !44, !45, !46, !47, !48, !49, !51, !52, !55, !56, !57, !58, !59, !60}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !28, file: !1, line: 524, type: !23)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !28, file: !1, line: 525, type: !31)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "optstring", arg: 3, scope: !28, file: !1, line: 526, type: !20)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "longopts", arg: 4, scope: !28, file: !1, line: 527, type: !14)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "longind", arg: 5, scope: !28, file: !1, line: 528, type: !25)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "long_only", arg: 6, scope: !28, file: !1, line: 529, type: !23)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameend", scope: !41, file: !1, line: 649, type: !11)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 648, column: 5)
!42 = distinct !DILexicalBlock(scope: !28, file: !1, line: 645, column: 7)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !41, file: !1, line: 650, type: !14)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pfound", scope: !41, file: !1, line: 651, type: !14)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exact", scope: !41, file: !1, line: 652, type: !23)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ambig", scope: !41, file: !1, line: 653, type: !23)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "indfound", scope: !41, file: !1, line: 654, type: !23)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "option_index", scope: !41, file: !1, line: 655, type: !23)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !50, file: !1, line: 782, type: !12)
!50 = distinct !DILexicalBlock(scope: !28, file: !1, line: 781, column: 3)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !50, file: !1, line: 783, type: !11)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameend", scope: !53, file: !1, line: 807, type: !11)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 806, column: 7)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 805, column: 9)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !53, file: !1, line: 808, type: !14)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pfound", scope: !53, file: !1, line: 809, type: !14)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exact", scope: !53, file: !1, line: 810, type: !23)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ambig", scope: !53, file: !1, line: 811, type: !23)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "indfound", scope: !53, file: !1, line: 812, type: !23)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "option_index", scope: !53, file: !1, line: 813, type: !23)
!61 = !DISubprogram(name: "getopt", scope: !1, file: !1, line: 979, type: !62, isLocal: false, isDefinition: true, scopeLine: 983, isOptimized: true, function: i32 (i32, i8**, i8*)* @getopt, variables: !64)
!62 = !DISubroutineType(types: !63)
!63 = !{!23, !23, !31, !20}
!64 = !{!65, !66, !67}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !61, file: !1, line: 980, type: !23)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !61, file: !1, line: 981, type: !31)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "optstring", arg: 3, scope: !61, file: !1, line: 982, type: !20)
!68 = !DISubprogram(name: "_getopt_initialize", scope: !1, file: !1, line: 401, type: !69, isLocal: true, isDefinition: true, scopeLine: 405, isOptimized: true, variables: !71)
!69 = !DISubroutineType(types: !70)
!70 = !{!20, !23, !31, !20}
!71 = !{!72, !73, !74}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !68, file: !1, line: 402, type: !23)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !68, file: !1, line: 403, type: !31)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "optstring", arg: 3, scope: !68, file: !1, line: 404, type: !20)
!75 = !DISubprogram(name: "exchange", scope: !1, file: !1, line: 316, type: !76, isLocal: true, isDefinition: true, scopeLine: 318, isOptimized: true, function: void (i8**)* @exchange, variables: !78)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !10}
!78 = !{!79, !80, !81, !82, !83, !84, !88, !89, !91}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 1, scope: !75, file: !1, line: 317, type: !10)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bottom", scope: !75, file: !1, line: 319, type: !23)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "middle", scope: !75, file: !1, line: 320, type: !23)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "top", scope: !75, file: !1, line: 321, type: !23)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tem", scope: !75, file: !1, line: 322, type: !11)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !85, file: !1, line: 356, type: !23)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 354, column: 2)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 353, column: 11)
!87 = distinct !DILexicalBlock(scope: !75, file: !1, line: 352, column: 5)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !85, file: !1, line: 357, type: !23)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !90, file: !1, line: 373, type: !23)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 371, column: 2)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !90, file: !1, line: 374, type: !23)
!92 = !DISubprogram(name: "my_index", scope: !1, file: !1, line: 226, type: !93, isLocal: true, isDefinition: true, scopeLine: 229, isOptimized: true, variables: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{!11, !20, !23}
!95 = !{!96, !97}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !92, file: !1, line: 227, type: !20)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chr", arg: 2, scope: !92, file: !1, line: 228, type: !23)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!99 = !DIGlobalVariable(name: "optind", scope: !0, file: !1, line: 138, type: !23, isLocal: false, isDefinition: true, variable: i32* @optind)
!100 = !DIGlobalVariable(name: "opterr", scope: !0, file: !1, line: 158, type: !23, isLocal: false, isDefinition: true, variable: i32* @opterr)
!101 = !DIGlobalVariable(name: "optopt", scope: !0, file: !1, line: 164, type: !23, isLocal: false, isDefinition: true, variable: i32* @optopt)
!102 = !DIGlobalVariable(name: "optarg", scope: !0, file: !1, line: 123, type: !11, isLocal: false, isDefinition: true, variable: i8** @optarg)
!103 = !DIGlobalVariable(name: "__getopt_initialized", scope: !0, file: !1, line: 144, type: !23, isLocal: false, isDefinition: true, variable: i32* @__getopt_initialized)
!104 = !DIGlobalVariable(name: "nextchar", scope: !0, file: !1, line: 153, type: !11, isLocal: true, isDefinition: true, variable: i8** @nextchar)
!105 = !DIGlobalVariable(name: "ordering", scope: !0, file: !1, line: 198, type: !3, isLocal: true, isDefinition: true, variable: i32* @ordering)
!106 = !DIGlobalVariable(name: "posixly_correct", scope: !0, file: !1, line: 201, type: !11, isLocal: true, isDefinition: true, variable: i8** @posixly_correct)
!107 = !DIGlobalVariable(name: "first_nonopt", scope: !0, file: !1, line: 259, type: !23, isLocal: true, isDefinition: true, variable: i32* @first_nonopt)
!108 = !DIGlobalVariable(name: "last_nonopt", scope: !0, file: !1, line: 260, type: !23, isLocal: true, isDefinition: true, variable: i32* @last_nonopt)
!109 = !{}
!110 = !{i32 2, !"Dwarf Version", i32 2}
!111 = !{i32 2, !"Debug Info Version", i32 700000003}
!112 = !{i32 1, !"PIC Level", i32 2}
!113 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!114 = !DIExpression()
!115 = !DILocation(line: 524, column: 10, scope: !28)
!116 = !DILocation(line: 525, column: 19, scope: !28)
!117 = !DILocation(line: 526, column: 18, scope: !28)
!118 = !DILocation(line: 527, column: 27, scope: !28)
!119 = !DILocation(line: 528, column: 11, scope: !28)
!120 = !DILocation(line: 529, column: 10, scope: !28)
!121 = !DILocation(line: 531, column: 10, scope: !28)
!122 = !{!123, !123, i64 0}
!123 = !{!"any pointer", !124, i64 0}
!124 = !{!"omnipotent char", !125, i64 0}
!125 = !{!"Simple C/C++ TBAA"}
!126 = !DILocation(line: 533, column: 7, scope: !127)
!127 = distinct !DILexicalBlock(scope: !28, file: !1, line: 533, column: 7)
!128 = !{!129, !129, i64 0}
!129 = !{!"int", !124, i64 0}
!130 = !DILocation(line: 533, column: 14, scope: !127)
!131 = !DILocation(line: 533, column: 23, scope: !127)
!132 = !DILocation(line: 533, column: 19, scope: !127)
!133 = !DILocation(line: 535, column: 18, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 535, column: 11)
!135 = distinct !DILexicalBlock(scope: !127, file: !1, line: 534, column: 5)
!136 = !DILocation(line: 535, column: 11, scope: !135)
!137 = !DILocation(line: 536, column: 9, scope: !134)
!138 = !DILocation(line: 536, column: 2, scope: !134)
!139 = !DILocation(line: 402, column: 10, scope: !68, inlinedAt: !140)
!140 = distinct !DILocation(line: 537, column: 19, scope: !135)
!141 = !DILocation(line: 403, column: 19, scope: !68, inlinedAt: !140)
!142 = !DILocation(line: 410, column: 30, scope: !68, inlinedAt: !140)
!143 = !DILocation(line: 410, column: 16, scope: !68, inlinedAt: !140)
!144 = !DILocation(line: 412, column: 12, scope: !68, inlinedAt: !140)
!145 = !DILocation(line: 414, column: 21, scope: !68, inlinedAt: !140)
!146 = !DILocation(line: 414, column: 19, scope: !68, inlinedAt: !140)
!147 = !DILocation(line: 418, column: 7, scope: !148, inlinedAt: !140)
!148 = distinct !DILexicalBlock(scope: !68, file: !1, line: 418, column: 7)
!149 = !{!124, !124, i64 0}
!150 = !DILocation(line: 418, column: 7, scope: !68, inlinedAt: !140)
!151 = !DILocation(line: 420, column: 16, scope: !152, inlinedAt: !140)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 419, column: 5)
!153 = !DILocation(line: 421, column: 7, scope: !152, inlinedAt: !140)
!154 = !DILocation(line: 404, column: 18, scope: !68, inlinedAt: !140)
!155 = !DILocation(line: 422, column: 5, scope: !152, inlinedAt: !140)
!156 = !DILocation(line: 425, column: 16, scope: !157, inlinedAt: !140)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 424, column: 5)
!158 = distinct !DILexicalBlock(scope: !148, file: !1, line: 423, column: 12)
!159 = !DILocation(line: 426, column: 7, scope: !157, inlinedAt: !140)
!160 = !DILocation(line: 427, column: 5, scope: !157, inlinedAt: !140)
!161 = !DILocation(line: 428, column: 28, scope: !162, inlinedAt: !140)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 428, column: 12)
!163 = !DILocation(line: 428, column: 12, scope: !158, inlinedAt: !140)
!164 = !DILocation(line: 429, column: 14, scope: !162, inlinedAt: !140)
!165 = !DILocation(line: 429, column: 5, scope: !162, inlinedAt: !140)
!166 = !DILocation(line: 431, column: 14, scope: !162, inlinedAt: !140)
!167 = !DILocation(line: 537, column: 19, scope: !135)
!168 = !DILocation(line: 538, column: 28, scope: !135)
!169 = !DILocation(line: 553, column: 24, scope: !170)
!170 = distinct !DILexicalBlock(scope: !28, file: !1, line: 553, column: 7)
!171 = !DILocation(line: 553, column: 7, scope: !170)
!172 = !DILocation(line: 553, column: 16, scope: !170)
!173 = !DILocation(line: 553, column: 27, scope: !170)
!174 = !DILocation(line: 553, column: 37, scope: !170)
!175 = !DILocation(line: 553, column: 7, scope: !28)
!176 = !DILocation(line: 559, column: 11, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 559, column: 11)
!178 = distinct !DILexicalBlock(scope: !170, file: !1, line: 554, column: 5)
!179 = !DILocation(line: 559, column: 23, scope: !177)
!180 = !DILocation(line: 559, column: 11, scope: !178)
!181 = !DILocation(line: 560, column: 14, scope: !177)
!182 = !DILocation(line: 560, column: 2, scope: !177)
!183 = !DILocation(line: 561, column: 11, scope: !184)
!184 = distinct !DILexicalBlock(scope: !178, file: !1, line: 561, column: 11)
!185 = !DILocation(line: 561, column: 24, scope: !184)
!186 = !DILocation(line: 561, column: 11, scope: !178)
!187 = !DILocation(line: 562, column: 15, scope: !184)
!188 = !DILocation(line: 562, column: 2, scope: !184)
!189 = !DILocation(line: 564, column: 11, scope: !190)
!190 = distinct !DILexicalBlock(scope: !178, file: !1, line: 564, column: 11)
!191 = !DILocation(line: 564, column: 20, scope: !190)
!192 = !DILocation(line: 564, column: 11, scope: !178)
!193 = !DILocation(line: 569, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 569, column: 8)
!195 = distinct !DILexicalBlock(scope: !190, file: !1, line: 565, column: 2)
!196 = !DILocation(line: 569, column: 51, scope: !194)
!197 = !DILocation(line: 569, column: 36, scope: !194)
!198 = !DILocation(line: 570, column: 6, scope: !194)
!199 = !DILocation(line: 577, column: 11, scope: !195)
!200 = !DILocation(line: 571, column: 13, scope: !194)
!201 = !DILocation(line: 572, column: 19, scope: !202)
!202 = distinct !DILexicalBlock(scope: !194, file: !1, line: 571, column: 13)
!203 = !DILocation(line: 572, column: 6, scope: !202)
!204 = !DILocation(line: 577, column: 18, scope: !195)
!205 = !DILocation(line: 577, column: 25, scope: !195)
!206 = !DILocation(line: 577, column: 28, scope: !195)
!207 = !DILocation(line: 577, column: 4, scope: !195)
!208 = !DILocation(line: 578, column: 12, scope: !195)
!209 = !DILocation(line: 579, column: 16, scope: !195)
!210 = !DILocation(line: 580, column: 2, scope: !195)
!211 = !DILocation(line: 587, column: 18, scope: !212)
!212 = distinct !DILexicalBlock(scope: !178, file: !1, line: 587, column: 11)
!213 = !DILocation(line: 587, column: 26, scope: !212)
!214 = !DILocation(line: 587, column: 38, scope: !212)
!215 = !DILocation(line: 587, column: 30, scope: !212)
!216 = !DILocation(line: 587, column: 11, scope: !178)
!217 = !DILocation(line: 589, column: 10, scope: !218)
!218 = distinct !DILexicalBlock(scope: !212, file: !1, line: 588, column: 2)
!219 = !DILocation(line: 591, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !218, file: !1, line: 591, column: 8)
!221 = !DILocation(line: 591, column: 21, scope: !220)
!222 = !DILocation(line: 591, column: 51, scope: !220)
!223 = !DILocation(line: 591, column: 36, scope: !220)
!224 = !DILocation(line: 592, column: 6, scope: !220)
!225 = !DILocation(line: 593, column: 13, scope: !220)
!226 = !DILocation(line: 594, column: 19, scope: !227)
!227 = distinct !DILexicalBlock(scope: !220, file: !1, line: 593, column: 13)
!228 = !DILocation(line: 594, column: 6, scope: !227)
!229 = !DILocation(line: 595, column: 16, scope: !218)
!230 = !DILocation(line: 597, column: 11, scope: !218)
!231 = !DILocation(line: 598, column: 2, scope: !218)
!232 = !DILocation(line: 603, column: 18, scope: !233)
!233 = distinct !DILexicalBlock(scope: !178, file: !1, line: 603, column: 11)
!234 = !DILocation(line: 603, column: 11, scope: !178)
!235 = !DILocation(line: 607, column: 8, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 607, column: 8)
!237 = distinct !DILexicalBlock(scope: !233, file: !1, line: 604, column: 2)
!238 = !DILocation(line: 607, column: 21, scope: !236)
!239 = !DILocation(line: 607, column: 8, scope: !237)
!240 = !DILocation(line: 608, column: 13, scope: !236)
!241 = !DILocation(line: 608, column: 6, scope: !236)
!242 = !DILocation(line: 615, column: 11, scope: !243)
!243 = distinct !DILexicalBlock(scope: !178, file: !1, line: 615, column: 11)
!244 = !DILocation(line: 615, column: 11, scope: !178)
!245 = !DILocation(line: 617, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 617, column: 8)
!247 = distinct !DILexicalBlock(scope: !243, file: !1, line: 616, column: 2)
!248 = !DILocation(line: 617, column: 17, scope: !246)
!249 = !DILocation(line: 617, column: 8, scope: !247)
!250 = !DILocation(line: 619, column: 24, scope: !247)
!251 = !DILocation(line: 619, column: 11, scope: !247)
!252 = !DILocation(line: 620, column: 4, scope: !247)
!253 = !DILocation(line: 627, column: 44, scope: !178)
!254 = !DILocation(line: 627, column: 25, scope: !178)
!255 = !DILocation(line: 627, column: 5, scope: !178)
!256 = !DILocation(line: 626, column: 16, scope: !178)
!257 = !DILocation(line: 628, column: 5, scope: !178)
!258 = !DILocation(line: 645, column: 16, scope: !42)
!259 = !DILocation(line: 646, column: 7, scope: !42)
!260 = !DILocation(line: 646, column: 11, scope: !42)
!261 = !DILocation(line: 646, column: 27, scope: !42)
!262 = !DILocation(line: 647, column: 4, scope: !42)
!263 = !DILocation(line: 647, column: 8, scope: !42)
!264 = !DILocation(line: 647, column: 18, scope: !42)
!265 = !DILocation(line: 647, column: 22, scope: !42)
!266 = !DILocation(line: 647, column: 38, scope: !42)
!267 = !DILocation(line: 227, column: 18, scope: !92, inlinedAt: !268)
!268 = distinct !DILocation(line: 647, column: 42, scope: !42)
!269 = !DILocation(line: 230, column: 10, scope: !92, inlinedAt: !268)
!270 = !DILocation(line: 230, column: 3, scope: !92, inlinedAt: !268)
!271 = !DILocation(line: 647, column: 42, scope: !42)
!272 = !DILocation(line: 232, column: 16, scope: !273, inlinedAt: !268)
!273 = distinct !DILexicalBlock(scope: !274, file: !1, line: 232, column: 11)
!274 = distinct !DILexicalBlock(scope: !92, file: !1, line: 231, column: 5)
!275 = !DILocation(line: 232, column: 11, scope: !274, inlinedAt: !268)
!276 = !DILocation(line: 234, column: 10, scope: !274, inlinedAt: !268)
!277 = !DILocation(line: 645, column: 7, scope: !28)
!278 = !DILocation(line: 657, column: 32, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 657, column: 7)
!280 = distinct !DILexicalBlock(scope: !41, file: !1, line: 657, column: 7)
!281 = !DILocation(line: 657, column: 41, scope: !279)
!282 = !DILocation(line: 662, column: 47, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 662, column: 7)
!284 = distinct !DILexicalBlock(scope: !41, file: !1, line: 662, column: 7)
!285 = !{!286, !123, i64 0}
!286 = !{!"option", !123, i64 0, !129, i64 8, !123, i64 16, !129, i64 24}
!287 = !DILocation(line: 662, column: 7, scope: !284)
!288 = !DILocation(line: 663, column: 43, scope: !289)
!289 = distinct !DILexicalBlock(scope: !283, file: !1, line: 663, column: 6)
!290 = !DILocation(line: 665, column: 10, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 665, column: 10)
!292 = distinct !DILexicalBlock(scope: !289, file: !1, line: 664, column: 4)
!293 = !DILocation(line: 657, column: 68, scope: !279)
!294 = !DILocation(line: 649, column: 13, scope: !41)
!295 = !DILocation(line: 657, column: 7, scope: !279)
!296 = !DILocation(line: 663, column: 7, scope: !289)
!297 = !DILocation(line: 663, column: 6, scope: !283)
!298 = !DILocation(line: 666, column: 21, scope: !291)
!299 = !DILocation(line: 666, column: 6, scope: !291)
!300 = !DILocation(line: 666, column: 3, scope: !291)
!301 = !DILocation(line: 665, column: 10, scope: !292)
!302 = !DILocation(line: 674, column: 22, scope: !303)
!303 = distinct !DILexicalBlock(scope: !291, file: !1, line: 674, column: 15)
!304 = !DILocation(line: 679, column: 8, scope: !305)
!305 = distinct !DILexicalBlock(scope: !303, file: !1, line: 675, column: 8)
!306 = !DILocation(line: 662, column: 54, scope: !283)
!307 = !DILocation(line: 650, column: 28, scope: !41)
!308 = !DILocation(line: 662, column: 70, scope: !283)
!309 = !DILocation(line: 655, column: 11, scope: !41)
!310 = !DILocation(line: 685, column: 11, scope: !311)
!311 = distinct !DILexicalBlock(scope: !41, file: !1, line: 685, column: 11)
!312 = !DILocation(line: 685, column: 17, scope: !311)
!313 = !DILocation(line: 687, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !1, line: 687, column: 8)
!315 = distinct !DILexicalBlock(scope: !311, file: !1, line: 686, column: 2)
!316 = !DILocation(line: 687, column: 8, scope: !315)
!317 = !DILocation(line: 688, column: 15, scope: !314)
!318 = !DILocation(line: 689, column: 8, scope: !314)
!319 = !DILocation(line: 688, column: 6, scope: !314)
!320 = !DILocation(line: 690, column: 24, scope: !315)
!321 = !DILocation(line: 691, column: 10, scope: !315)
!322 = !DILocation(line: 690, column: 16, scope: !315)
!323 = !DILocation(line: 690, column: 13, scope: !315)
!324 = !DILocation(line: 692, column: 11, scope: !315)
!325 = !DILocation(line: 693, column: 4, scope: !315)
!326 = !DILocation(line: 696, column: 18, scope: !327)
!327 = distinct !DILexicalBlock(scope: !41, file: !1, line: 696, column: 11)
!328 = !DILocation(line: 696, column: 11, scope: !41)
!329 = !DILocation(line: 699, column: 10, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !1, line: 697, column: 2)
!331 = !DILocation(line: 700, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !330, file: !1, line: 700, column: 8)
!333 = !DILocation(line: 704, column: 20, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !1, line: 704, column: 12)
!335 = distinct !DILexicalBlock(scope: !332, file: !1, line: 701, column: 6)
!336 = !{!286, !129, i64 8}
!337 = !DILocation(line: 700, column: 8, scope: !330)
!338 = !DILocation(line: 704, column: 12, scope: !334)
!339 = !DILocation(line: 704, column: 12, scope: !335)
!340 = !DILocation(line: 705, column: 20, scope: !334)
!341 = !DILocation(line: 705, column: 10, scope: !334)
!342 = !DILocation(line: 727, column: 6, scope: !335)
!343 = !DILocation(line: 708, column: 9, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !1, line: 708, column: 9)
!345 = distinct !DILexicalBlock(scope: !334, file: !1, line: 707, column: 3)
!346 = !DILocation(line: 708, column: 9, scope: !345)
!347 = !DILocation(line: 710, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !1, line: 710, column: 13)
!349 = distinct !DILexicalBlock(scope: !344, file: !1, line: 709, column: 7)
!350 = !DILocation(line: 710, column: 33, scope: !348)
!351 = !DILocation(line: 712, column: 13, scope: !348)
!352 = !DILocation(line: 714, column: 6, scope: !348)
!353 = !DILocation(line: 710, column: 13, scope: !349)
!354 = !DILocation(line: 712, column: 4, scope: !348)
!355 = !DILocation(line: 719, column: 15, scope: !348)
!356 = !DILocation(line: 717, column: 4, scope: !348)
!357 = !DILocation(line: 722, column: 25, scope: !345)
!358 = !DILocation(line: 722, column: 17, scope: !345)
!359 = !DILocation(line: 722, column: 14, scope: !345)
!360 = !DILocation(line: 724, column: 22, scope: !345)
!361 = !{!286, !129, i64 24}
!362 = !DILocation(line: 724, column: 12, scope: !345)
!363 = !DILocation(line: 725, column: 5, scope: !345)
!364 = !DILocation(line: 728, column: 29, scope: !365)
!365 = distinct !DILexicalBlock(scope: !332, file: !1, line: 728, column: 13)
!366 = !DILocation(line: 728, column: 13, scope: !332)
!367 = !DILocation(line: 730, column: 19, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !1, line: 730, column: 12)
!369 = distinct !DILexicalBlock(scope: !365, file: !1, line: 729, column: 6)
!370 = !DILocation(line: 730, column: 12, scope: !369)
!371 = !DILocation(line: 731, column: 23, scope: !368)
!372 = !DILocation(line: 731, column: 12, scope: !368)
!373 = !DILocation(line: 731, column: 10, scope: !368)
!374 = !DILocation(line: 742, column: 6, scope: !369)
!375 = !DILocation(line: 734, column: 9, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !1, line: 734, column: 9)
!377 = distinct !DILexicalBlock(scope: !368, file: !1, line: 733, column: 3)
!378 = !DILocation(line: 734, column: 9, scope: !377)
!379 = !DILocation(line: 735, column: 16, scope: !376)
!380 = !DILocation(line: 737, column: 7, scope: !376)
!381 = !DILocation(line: 735, column: 7, scope: !376)
!382 = !DILocation(line: 738, column: 25, scope: !377)
!383 = !DILocation(line: 738, column: 17, scope: !377)
!384 = !DILocation(line: 738, column: 14, scope: !377)
!385 = !DILocation(line: 739, column: 22, scope: !377)
!386 = !DILocation(line: 739, column: 12, scope: !377)
!387 = !DILocation(line: 740, column: 12, scope: !377)
!388 = !DILocation(line: 740, column: 25, scope: !377)
!389 = !DILocation(line: 740, column: 5, scope: !377)
!390 = !DILocation(line: 743, column: 16, scope: !330)
!391 = !DILocation(line: 743, column: 13, scope: !330)
!392 = !DILocation(line: 744, column: 16, scope: !393)
!393 = distinct !DILexicalBlock(scope: !330, file: !1, line: 744, column: 8)
!394 = !DILocation(line: 744, column: 8, scope: !330)
!395 = !DILocation(line: 745, column: 15, scope: !393)
!396 = !DILocation(line: 745, column: 6, scope: !393)
!397 = !DILocation(line: 746, column: 16, scope: !398)
!398 = distinct !DILexicalBlock(scope: !330, file: !1, line: 746, column: 8)
!399 = !{!286, !123, i64 16}
!400 = !DILocation(line: 746, column: 8, scope: !398)
!401 = !DILocation(line: 748, column: 34, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !1, line: 747, column: 6)
!403 = !DILocation(line: 746, column: 8, scope: !330)
!404 = !DILocation(line: 748, column: 24, scope: !402)
!405 = !DILocation(line: 749, column: 8, scope: !402)
!406 = !DILocation(line: 758, column: 12, scope: !407)
!407 = distinct !DILexicalBlock(scope: !41, file: !1, line: 758, column: 11)
!408 = !DILocation(line: 758, column: 22, scope: !407)
!409 = !DILocation(line: 759, column: 28, scope: !407)
!410 = !DILocation(line: 227, column: 18, scope: !92, inlinedAt: !411)
!411 = distinct !DILocation(line: 759, column: 7, scope: !407)
!412 = !DILocation(line: 230, column: 10, scope: !92, inlinedAt: !411)
!413 = !DILocation(line: 230, column: 3, scope: !92, inlinedAt: !411)
!414 = !DILocation(line: 759, column: 7, scope: !407)
!415 = !DILocation(line: 232, column: 16, scope: !273, inlinedAt: !411)
!416 = !DILocation(line: 232, column: 11, scope: !274, inlinedAt: !411)
!417 = !DILocation(line: 234, column: 10, scope: !274, inlinedAt: !411)
!418 = !DILocation(line: 759, column: 39, scope: !407)
!419 = !DILocation(line: 758, column: 11, scope: !41)
!420 = !DILocation(line: 761, column: 8, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !1, line: 761, column: 8)
!422 = distinct !DILexicalBlock(scope: !407, file: !1, line: 760, column: 2)
!423 = !DILocation(line: 761, column: 8, scope: !422)
!424 = !DILocation(line: 765, column: 12, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 763, column: 12)
!426 = distinct !DILexicalBlock(scope: !421, file: !1, line: 762, column: 6)
!427 = !DILocation(line: 766, column: 5, scope: !425)
!428 = !DILocation(line: 763, column: 12, scope: !426)
!429 = !DILocation(line: 765, column: 3, scope: !425)
!430 = !DILocation(line: 770, column: 14, scope: !425)
!431 = !DILocation(line: 769, column: 3, scope: !425)
!432 = !DILocation(line: 772, column: 13, scope: !422)
!433 = !DILocation(line: 773, column: 10, scope: !422)
!434 = !DILocation(line: 774, column: 11, scope: !422)
!435 = !DILocation(line: 775, column: 4, scope: !422)
!436 = !DILocation(line: 782, column: 23, scope: !50)
!437 = !DILocation(line: 782, column: 14, scope: !50)
!438 = !DILocation(line: 782, column: 10, scope: !50)
!439 = !DILocation(line: 783, column: 39, scope: !50)
!440 = !DILocation(line: 227, column: 18, scope: !92, inlinedAt: !441)
!441 = distinct !DILocation(line: 783, column: 18, scope: !50)
!442 = !DILocation(line: 228, column: 10, scope: !92, inlinedAt: !441)
!443 = !DILocation(line: 230, column: 10, scope: !92, inlinedAt: !441)
!444 = !DILocation(line: 230, column: 3, scope: !92, inlinedAt: !441)
!445 = !DILocation(line: 783, column: 18, scope: !50)
!446 = !DILocation(line: 232, column: 16, scope: !273, inlinedAt: !441)
!447 = !DILocation(line: 232, column: 11, scope: !274, inlinedAt: !441)
!448 = !DILocation(line: 234, column: 10, scope: !274, inlinedAt: !441)
!449 = !DILocation(line: 783, column: 11, scope: !50)
!450 = !DILocation(line: 786, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !50, file: !1, line: 786, column: 9)
!452 = !DILocation(line: 786, column: 19, scope: !451)
!453 = !DILocation(line: 786, column: 9, scope: !50)
!454 = !DILocation(line: 787, column: 7, scope: !451)
!455 = !DILocation(line: 789, column: 14, scope: !456)
!456 = distinct !DILexicalBlock(scope: !50, file: !1, line: 789, column: 9)
!457 = !DILocation(line: 789, column: 27, scope: !456)
!458 = !DILocation(line: 789, column: 22, scope: !456)
!459 = !DILocation(line: 791, column: 6, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 791, column: 6)
!461 = distinct !DILexicalBlock(scope: !456, file: !1, line: 790, column: 7)
!462 = !DILocation(line: 791, column: 6, scope: !461)
!463 = !DILocation(line: 793, column: 10, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 793, column: 10)
!465 = distinct !DILexicalBlock(scope: !460, file: !1, line: 792, column: 4)
!466 = !DILocation(line: 795, column: 17, scope: !464)
!467 = !DILocation(line: 796, column: 10, scope: !464)
!468 = !DILocation(line: 793, column: 10, scope: !465)
!469 = !DILocation(line: 795, column: 8, scope: !464)
!470 = !DILocation(line: 798, column: 8, scope: !464)
!471 = !DILocation(line: 801, column: 9, scope: !461)
!472 = !DILocation(line: 802, column: 2, scope: !461)
!473 = !DILocation(line: 805, column: 9, scope: !54)
!474 = !DILocation(line: 805, column: 17, scope: !54)
!475 = !DILocation(line: 805, column: 27, scope: !54)
!476 = !DILocation(line: 805, column: 35, scope: !54)
!477 = !DILocation(line: 805, column: 24, scope: !54)
!478 = !DILocation(line: 809, column: 23, scope: !53)
!479 = !DILocation(line: 810, column: 6, scope: !53)
!480 = !DILocation(line: 811, column: 6, scope: !53)
!481 = !DILocation(line: 812, column: 6, scope: !53)
!482 = !DILocation(line: 816, column: 6, scope: !483)
!483 = distinct !DILexicalBlock(scope: !53, file: !1, line: 816, column: 6)
!484 = !DILocation(line: 816, column: 16, scope: !483)
!485 = !DILocation(line: 816, column: 6, scope: !53)
!486 = !DILocation(line: 818, column: 13, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !1, line: 817, column: 4)
!488 = !DILocation(line: 821, column: 12, scope: !487)
!489 = !DILocation(line: 822, column: 4, scope: !487)
!490 = !DILocation(line: 823, column: 18, scope: !491)
!491 = distinct !DILexicalBlock(scope: !483, file: !1, line: 823, column: 11)
!492 = !DILocation(line: 823, column: 11, scope: !483)
!493 = !DILocation(line: 825, column: 10, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 825, column: 10)
!495 = distinct !DILexicalBlock(scope: !491, file: !1, line: 824, column: 4)
!496 = !DILocation(line: 825, column: 10, scope: !495)
!497 = !DILocation(line: 828, column: 12, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !1, line: 826, column: 8)
!499 = !DILocation(line: 829, column: 5, scope: !498)
!500 = !DILocation(line: 828, column: 3, scope: !498)
!501 = !DILocation(line: 830, column: 8, scope: !498)
!502 = !DILocation(line: 831, column: 13, scope: !495)
!503 = !DILocation(line: 832, column: 10, scope: !504)
!504 = distinct !DILexicalBlock(scope: !495, file: !1, line: 832, column: 10)
!505 = !DILocation(line: 832, column: 23, scope: !504)
!506 = !DILocation(line: 833, column: 8, scope: !504)
!507 = !DILocation(line: 836, column: 6, scope: !495)
!508 = !DILocation(line: 841, column: 24, scope: !491)
!509 = !DILocation(line: 841, column: 13, scope: !491)
!510 = !DILocation(line: 841, column: 11, scope: !491)
!511 = !DILocation(line: 807, column: 8, scope: !53)
!512 = !DILocation(line: 846, column: 16, scope: !513)
!513 = distinct !DILexicalBlock(scope: !53, file: !1, line: 846, column: 2)
!514 = !DILocation(line: 846, column: 7, scope: !513)
!515 = !DILocation(line: 846, column: 36, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !1, line: 846, column: 2)
!517 = !DILocation(line: 846, column: 45, scope: !516)
!518 = !DILocation(line: 851, column: 42, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 851, column: 2)
!520 = distinct !DILexicalBlock(scope: !53, file: !1, line: 851, column: 2)
!521 = !DILocation(line: 851, column: 2, scope: !520)
!522 = !DILocation(line: 852, column: 45, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !1, line: 852, column: 8)
!524 = !DILocation(line: 854, column: 12, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !1, line: 854, column: 12)
!526 = distinct !DILexicalBlock(scope: !523, file: !1, line: 853, column: 6)
!527 = !DILocation(line: 846, column: 72, scope: !516)
!528 = !DILocation(line: 846, column: 2, scope: !516)
!529 = !DILocation(line: 852, column: 9, scope: !523)
!530 = !DILocation(line: 852, column: 8, scope: !519)
!531 = !DILocation(line: 854, column: 51, scope: !525)
!532 = !DILocation(line: 854, column: 48, scope: !525)
!533 = !DILocation(line: 854, column: 12, scope: !526)
!534 = !DILocation(line: 862, column: 24, scope: !535)
!535 = distinct !DILexicalBlock(scope: !525, file: !1, line: 862, column: 17)
!536 = !DILocation(line: 867, column: 3, scope: !537)
!537 = distinct !DILexicalBlock(scope: !535, file: !1, line: 863, column: 3)
!538 = !DILocation(line: 851, column: 49, scope: !519)
!539 = !DILocation(line: 808, column: 23, scope: !53)
!540 = !DILocation(line: 851, column: 65, scope: !519)
!541 = !DILocation(line: 813, column: 6, scope: !53)
!542 = !DILocation(line: 872, column: 6, scope: !543)
!543 = distinct !DILexicalBlock(scope: !53, file: !1, line: 872, column: 6)
!544 = !DILocation(line: 872, column: 12, scope: !543)
!545 = !DILocation(line: 874, column: 10, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 874, column: 10)
!547 = distinct !DILexicalBlock(scope: !543, file: !1, line: 873, column: 4)
!548 = !DILocation(line: 874, column: 10, scope: !547)
!549 = !DILocation(line: 875, column: 17, scope: !546)
!550 = !DILocation(line: 876, column: 10, scope: !546)
!551 = !DILocation(line: 876, column: 19, scope: !546)
!552 = !DILocation(line: 875, column: 8, scope: !546)
!553 = !DILocation(line: 877, column: 26, scope: !547)
!554 = !DILocation(line: 878, column: 12, scope: !547)
!555 = !DILocation(line: 877, column: 18, scope: !547)
!556 = !DILocation(line: 877, column: 15, scope: !547)
!557 = !DILocation(line: 879, column: 6, scope: !547)
!558 = !DILocation(line: 881, column: 13, scope: !559)
!559 = distinct !DILexicalBlock(scope: !53, file: !1, line: 881, column: 6)
!560 = !DILocation(line: 881, column: 6, scope: !53)
!561 = !DILocation(line: 884, column: 10, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !1, line: 884, column: 10)
!563 = distinct !DILexicalBlock(scope: !559, file: !1, line: 882, column: 4)
!564 = !DILocation(line: 888, column: 15, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !1, line: 888, column: 7)
!566 = distinct !DILexicalBlock(scope: !562, file: !1, line: 885, column: 8)
!567 = !DILocation(line: 884, column: 10, scope: !563)
!568 = !DILocation(line: 888, column: 7, scope: !565)
!569 = !DILocation(line: 888, column: 7, scope: !566)
!570 = !DILocation(line: 889, column: 22, scope: !565)
!571 = !DILocation(line: 889, column: 12, scope: !565)
!572 = !DILocation(line: 900, column: 8, scope: !566)
!573 = !DILocation(line: 892, column: 11, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !1, line: 892, column: 11)
!575 = distinct !DILexicalBlock(scope: !565, file: !1, line: 891, column: 5)
!576 = !DILocation(line: 892, column: 11, scope: !575)
!577 = !DILocation(line: 893, column: 18, scope: !574)
!578 = !DILocation(line: 895, column: 11, scope: !574)
!579 = !DILocation(line: 895, column: 28, scope: !574)
!580 = !DILocation(line: 893, column: 9, scope: !574)
!581 = !DILocation(line: 897, column: 27, scope: !575)
!582 = !DILocation(line: 897, column: 19, scope: !575)
!583 = !DILocation(line: 897, column: 16, scope: !575)
!584 = !DILocation(line: 898, column: 7, scope: !575)
!585 = !DILocation(line: 901, column: 31, scope: !586)
!586 = distinct !DILexicalBlock(scope: !562, file: !1, line: 901, column: 15)
!587 = !DILocation(line: 901, column: 15, scope: !562)
!588 = !DILocation(line: 903, column: 14, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !1, line: 903, column: 7)
!590 = distinct !DILexicalBlock(scope: !586, file: !1, line: 902, column: 8)
!591 = !DILocation(line: 903, column: 7, scope: !590)
!592 = !DILocation(line: 904, column: 25, scope: !589)
!593 = !DILocation(line: 904, column: 14, scope: !589)
!594 = !DILocation(line: 904, column: 12, scope: !589)
!595 = !DILocation(line: 914, column: 8, scope: !590)
!596 = !DILocation(line: 907, column: 11, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !1, line: 907, column: 11)
!598 = distinct !DILexicalBlock(scope: !589, file: !1, line: 906, column: 5)
!599 = !DILocation(line: 907, column: 11, scope: !598)
!600 = !DILocation(line: 908, column: 18, scope: !597)
!601 = !DILocation(line: 910, column: 11, scope: !597)
!602 = !DILocation(line: 910, column: 32, scope: !597)
!603 = !DILocation(line: 910, column: 20, scope: !597)
!604 = !DILocation(line: 908, column: 9, scope: !597)
!605 = !DILocation(line: 911, column: 27, scope: !598)
!606 = !DILocation(line: 911, column: 19, scope: !598)
!607 = !DILocation(line: 911, column: 16, scope: !598)
!608 = !DILocation(line: 912, column: 14, scope: !598)
!609 = !DILocation(line: 912, column: 27, scope: !598)
!610 = !DILocation(line: 912, column: 7, scope: !598)
!611 = !DILocation(line: 915, column: 18, scope: !563)
!612 = !DILocation(line: 915, column: 15, scope: !563)
!613 = !DILocation(line: 916, column: 18, scope: !614)
!614 = distinct !DILexicalBlock(scope: !563, file: !1, line: 916, column: 10)
!615 = !DILocation(line: 916, column: 10, scope: !563)
!616 = !DILocation(line: 917, column: 17, scope: !614)
!617 = !DILocation(line: 917, column: 8, scope: !614)
!618 = !DILocation(line: 918, column: 18, scope: !619)
!619 = distinct !DILexicalBlock(scope: !563, file: !1, line: 918, column: 10)
!620 = !DILocation(line: 918, column: 10, scope: !619)
!621 = !DILocation(line: 920, column: 29, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !1, line: 919, column: 8)
!623 = !DILocation(line: 918, column: 10, scope: !563)
!624 = !DILocation(line: 920, column: 19, scope: !622)
!625 = !DILocation(line: 921, column: 3, scope: !622)
!626 = !DILocation(line: 925, column: 13, scope: !53)
!627 = !DILocation(line: 926, column: 4, scope: !53)
!628 = !DILocation(line: 928, column: 17, scope: !629)
!629 = distinct !DILexicalBlock(scope: !50, file: !1, line: 928, column: 9)
!630 = !DILocation(line: 928, column: 9, scope: !50)
!631 = !DILocation(line: 930, column: 6, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !1, line: 930, column: 6)
!633 = distinct !DILexicalBlock(scope: !629, file: !1, line: 929, column: 7)
!634 = !DILocation(line: 930, column: 14, scope: !632)
!635 = !DILocation(line: 933, column: 10, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !1, line: 933, column: 10)
!637 = distinct !DILexicalBlock(scope: !632, file: !1, line: 931, column: 4)
!638 = !DILocation(line: 933, column: 20, scope: !636)
!639 = !DILocation(line: 930, column: 6, scope: !633)
!640 = !DILocation(line: 933, column: 10, scope: !637)
!641 = !DILocation(line: 935, column: 10, scope: !642)
!642 = distinct !DILexicalBlock(scope: !636, file: !1, line: 934, column: 8)
!643 = !DILocation(line: 936, column: 9, scope: !642)
!644 = !DILocation(line: 937, column: 8, scope: !642)
!645 = !DILocation(line: 939, column: 15, scope: !636)
!646 = !DILocation(line: 940, column: 15, scope: !637)
!647 = !DILocation(line: 941, column: 4, scope: !637)
!648 = !DILocation(line: 945, column: 10, scope: !649)
!649 = distinct !DILexicalBlock(scope: !632, file: !1, line: 943, column: 4)
!650 = !DILocation(line: 947, column: 10, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !1, line: 946, column: 8)
!652 = distinct !DILexicalBlock(scope: !649, file: !1, line: 945, column: 10)
!653 = !DILocation(line: 950, column: 9, scope: !651)
!654 = !DILocation(line: 951, column: 8, scope: !651)
!655 = !DILocation(line: 952, column: 22, scope: !656)
!656 = distinct !DILexicalBlock(scope: !652, file: !1, line: 952, column: 15)
!657 = !DILocation(line: 952, column: 15, scope: !652)
!658 = !DILocation(line: 954, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !1, line: 954, column: 7)
!660 = distinct !DILexicalBlock(scope: !656, file: !1, line: 953, column: 8)
!661 = !DILocation(line: 954, column: 7, scope: !660)
!662 = !DILocation(line: 957, column: 16, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !1, line: 955, column: 5)
!664 = !DILocation(line: 959, column: 7, scope: !663)
!665 = !DILocation(line: 957, column: 7, scope: !663)
!666 = !DILocation(line: 960, column: 5, scope: !663)
!667 = !DILocation(line: 961, column: 10, scope: !660)
!668 = !DILocation(line: 962, column: 7, scope: !669)
!669 = distinct !DILexicalBlock(scope: !660, file: !1, line: 962, column: 7)
!670 = !DILocation(line: 962, column: 20, scope: !669)
!671 = !DILocation(line: 963, column: 5, scope: !669)
!672 = !DILocation(line: 970, column: 28, scope: !656)
!673 = !DILocation(line: 970, column: 17, scope: !656)
!674 = !DILocation(line: 970, column: 15, scope: !656)
!675 = !DILocation(line: 971, column: 15, scope: !649)
!676 = !DILocation(line: 974, column: 12, scope: !50)
!677 = !DILocation(line: 974, column: 5, scope: !50)
!678 = !DILocation(line: 976, column: 1, scope: !28)
!679 = !DILocation(line: 317, column: 13, scope: !75)
!680 = !DILocation(line: 319, column: 16, scope: !75)
!681 = !DILocation(line: 319, column: 7, scope: !75)
!682 = !DILocation(line: 320, column: 16, scope: !75)
!683 = !DILocation(line: 320, column: 7, scope: !75)
!684 = !DILocation(line: 321, column: 13, scope: !75)
!685 = !DILocation(line: 321, column: 7, scope: !75)
!686 = !DILocation(line: 351, column: 14, scope: !75)
!687 = !DILocation(line: 351, column: 33, scope: !75)
!688 = !DILocation(line: 351, column: 23, scope: !75)
!689 = !DILocation(line: 353, column: 15, scope: !86)
!690 = !DILocation(line: 377, column: 18, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 377, column: 4)
!692 = distinct !DILexicalBlock(scope: !90, file: !1, line: 377, column: 4)
!693 = !DILocation(line: 353, column: 33, scope: !86)
!694 = !DILocation(line: 353, column: 24, scope: !86)
!695 = !DILocation(line: 353, column: 11, scope: !87)
!696 = !DILocation(line: 377, column: 4, scope: !692)
!697 = !DILocation(line: 360, column: 18, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !1, line: 360, column: 4)
!699 = distinct !DILexicalBlock(scope: !85, file: !1, line: 360, column: 4)
!700 = !DILocation(line: 363, column: 36, scope: !701)
!701 = distinct !DILexicalBlock(scope: !698, file: !1, line: 361, column: 6)
!702 = !DILocation(line: 360, column: 4, scope: !699)
!703 = !DILocation(line: 362, column: 26, scope: !701)
!704 = !DILocation(line: 362, column: 14, scope: !701)
!705 = !DILocation(line: 363, column: 56, scope: !701)
!706 = !DILocation(line: 363, column: 27, scope: !701)
!707 = !DILocation(line: 363, column: 25, scope: !701)
!708 = !DILocation(line: 364, column: 42, scope: !701)
!709 = !DILocation(line: 379, column: 26, scope: !710)
!710 = distinct !DILexicalBlock(scope: !691, file: !1, line: 378, column: 6)
!711 = !DILocation(line: 379, column: 14, scope: !710)
!712 = !DILocation(line: 380, column: 39, scope: !710)
!713 = !DILocation(line: 380, column: 27, scope: !710)
!714 = !DILocation(line: 380, column: 25, scope: !710)
!715 = !DILocation(line: 381, column: 25, scope: !710)
!716 = !DILocation(line: 391, column: 27, scope: !75)
!717 = !DILocation(line: 391, column: 16, scope: !75)
!718 = !DILocation(line: 392, column: 15, scope: !75)
!719 = !DILocation(line: 393, column: 1, scope: !75)
!720 = !DILocation(line: 980, column: 10, scope: !61)
!721 = !DILocation(line: 981, column: 19, scope: !61)
!722 = !DILocation(line: 982, column: 18, scope: !61)
!723 = !DILocation(line: 984, column: 10, scope: !61)
!724 = !DILocation(line: 984, column: 3, scope: !61)
