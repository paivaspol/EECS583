; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/partner.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }

@hand_value = global [13 x i32] [i32 0, i32 100, i32 -100, i32 210, i32 -210, i32 0, i32 0, i32 250, i32 -250, i32 450, i32 -450, i32 230, i32 -230], align 16
@std_hand_value = global [13 x i32] [i32 0, i32 100, i32 -100, i32 210, i32 -210, i32 0, i32 0, i32 250, i32 -250, i32 450, i32 -450, i32 230, i32 -230], align 16
@have_partner = external global i32
@.str2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@my_partner = external global [256 x i8]
@HandlePtell.howmuch = private unnamed_addr constant [80 x i8] c"is...uh...what did you say?\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str6 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@Variant = external global i32
@.str8 = private unnamed_addr constant [6 x i8] c"sorry\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"sit\00", align 1
@must_sit = external global i32
@must_go = common global i32 0, align 4
@.str12 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@.str13 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@go_fast = external global i32
@.str18 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str20 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@.str27 = private unnamed_addr constant [6 x i8] c"trade\00", align 1
@comp_color = external global i32
@.str36 = private unnamed_addr constant [4 x i8] c"+++\00", align 1
@.str37 = private unnamed_addr constant [6 x i8] c"mates\00", align 1
@.str38 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str39 = private unnamed_addr constant [49 x i8] c"is VERY good (ptell me 'x' to play normal again)\00", align 1
@.str40 = private unnamed_addr constant [44 x i8] c"is good (ptell me 'x' to play normal again)\00", align 1
@.str41 = private unnamed_addr constant [29 x i8] c"tellics ptell Ok, Knight %s\0A\00", align 1
@.str42 = private unnamed_addr constant [29 x i8] c"tellics ptell Ok, Bishop %s\0A\00", align 1
@.str43 = private unnamed_addr constant [27 x i8] c"tellics ptell Ok, Rook %s\0A\00", align 1
@.str44 = private unnamed_addr constant [28 x i8] c"tellics ptell Ok, Queen %s\0A\00", align 1
@.str45 = private unnamed_addr constant [27 x i8] c"tellics ptell Ok, Pawn %s\0A\00", align 1
@.str46 = private unnamed_addr constant [31 x i8] c"tellics ptell Ok, Diagonal %s\0A\00", align 1
@.str47 = private unnamed_addr constant [28 x i8] c"tellics ptell Ok, Heavy %s\0A\00", align 1
@.str50 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str51 = private unnamed_addr constant [53 x i8] c"mates you (ptell me 'x' when it no longer mates you)\00", align 1
@.str52 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str53 = private unnamed_addr constant [52 x i8] c"is VERY bad (ptell me 'x' when it is no longer bad)\00", align 1
@.str54 = private unnamed_addr constant [47 x i8] c"is bad (ptell me 'x' when it is no longer bad)\00", align 1
@.str56 = private unnamed_addr constant [16 x i8] c"mate me anymore\00", align 1
@.str57 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str58 = private unnamed_addr constant [5 x i8] c"mind\00", align 1
@.str60 = private unnamed_addr constant [9 x i8] c"ptell me\00", align 1
@partnerdead = common global i32 0, align 4
@piecedead = common global i32 0, align 4
@.str62 = private unnamed_addr constant [26 x i8] c"i'll have to sit...(dead)\00", align 1
@.str63 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str64 = private unnamed_addr constant [27 x i8] c"i'll have to sit...(piece)\00", align 1
@.str65 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str66 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str67 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str69 = private unnamed_addr constant [8 x i8] c"formula\00", align 1
@CheckBadFlow.pawnmated = internal unnamed_addr global i32 0, align 4
@CheckBadFlow.knightmated = internal unnamed_addr global i32 0, align 4
@CheckBadFlow.bishopmated = internal unnamed_addr global i32 0, align 4
@CheckBadFlow.rookmated = internal unnamed_addr global i32 0, align 4
@CheckBadFlow.queenmated = internal unnamed_addr global i32 0, align 4
@white_to_move = external global i32
@holding = external global [2 x [16 x i32]]
@numb_moves = external global i32
@str = private unnamed_addr constant [68 x i8] c"tellics ptell Hello! I am Sjeng and hope you enjoy playing with me.\00"
@str84 = private unnamed_addr constant [75 x i8] c"tellics ptell For help on some commands that I understand, ptell me 'help'\00"
@str85 = private unnamed_addr constant [19 x i8] c"tellics set f5 1=1\00"
@str87 = private unnamed_addr constant [15 x i8] c"tellics unseek\00"
@str88 = private unnamed_addr constant [146 x i8] c"tellics ptell Commands that I understand are : sit, go, fast, slow, abort, flag, +/++/+++/-/--/---{p,n,b,r,q,d,h,trades}, x, dead, formula, help.\00"
@str89 = private unnamed_addr constant [55 x i8] c"tellics ptell Ok, I sit next move. Tell me when to go.\00"
@str90 = private unnamed_addr constant [30 x i8] c"tellics ptell Ok, I'm moving.\00"
@str91 = private unnamed_addr constant [34 x i8] c"tellics ptell Ok, I'm going FAST!\00"
@str92 = private unnamed_addr constant [35 x i8] c"tellics ptell Ok, moving normally.\00"
@str93 = private unnamed_addr constant [34 x i8] c"tellics ptell Requesting abort...\00"
@str94 = private unnamed_addr constant [14 x i8] c"tellics abort\00"
@str95 = private unnamed_addr constant [26 x i8] c"tellics ptell Flagging...\00"
@str96 = private unnamed_addr constant [13 x i8] c"tellics flag\00"
@str97 = private unnamed_addr constant [34 x i8] c"tellics ptell Ok, trading is GOOD\00"
@str98 = private unnamed_addr constant [33 x i8] c"tellics ptell Ok, trading is BAD\00"
@str99 = private unnamed_addr constant [25 x i8] c"tellics ptell Greetings.\00"
@str100 = private unnamed_addr constant [58 x i8] c"tellics ptell Sorry, but I don't understand that command.\00"
@str101 = private unnamed_addr constant [86 x i8] c"tellics ptell Setting formula, if you are still interrupted, complain to my operator.\00"
@str102 = private unnamed_addr constant [24 x i8] c"tellics set f5 bughouse\00"
@str103 = private unnamed_addr constant [54 x i8] c"tellics ptell Ok, reverting to STANDARD piece values!\00"
@str104 = private unnamed_addr constant [58 x i8] c"tellics ptell Sorry, but I'm not playing a bughouse game.\00"
@str105 = private unnamed_addr constant [16 x i8] c"tellics ptell x\00"
@str106 = private unnamed_addr constant [17 x i8] c"tellics ptell go\00"
@str107 = private unnamed_addr constant [19 x i8] c"tellics ptell ---q\00"
@str108 = private unnamed_addr constant [19 x i8] c"tellics ptell ---r\00"
@str109 = private unnamed_addr constant [19 x i8] c"tellics ptell ---b\00"
@str110 = private unnamed_addr constant [19 x i8] c"tellics ptell ---n\00"
@str111 = private unnamed_addr constant [19 x i8] c"tellics ptell ---p\00"
@str112 = private unnamed_addr constant [40 x i8] c"tellics ptell q doesn't mate me anymore\00"
@str113 = private unnamed_addr constant [40 x i8] c"tellics ptell r doesn't mate me anymore\00"
@str114 = private unnamed_addr constant [40 x i8] c"tellics ptell b doesn't mate me anymore\00"
@str115 = private unnamed_addr constant [40 x i8] c"tellics ptell n doesn't mate me anymore\00"
@str116 = private unnamed_addr constant [40 x i8] c"tellics ptell p doesn't mate me anymore\00"

; Function Attrs: nounwind optsize ssp uwtable
define void @ResetHandValue() #0 {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([13 x i32]* @hand_value to i8*), i8* bitcast ([13 x i32]* @std_hand_value to i8*), i64 52, i32 16, i1 false), !dbg !89
  ret void, !dbg !90
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define void @BegForPartner() #2 {
  ret void, !dbg !91
}

; Function Attrs: nounwind optsize ssp uwtable
define void @GreetPartner() #0 {
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([68 x i8]* @str, i64 0, i64 0)), !dbg !92
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([75 x i8]* @str84, i64 0, i64 0)), !dbg !93
  ret void, !dbg !94
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @HandlePartner(i8* nocapture readonly %input) #0 {
  tail call void @llvm.dbg.value(metadata i8* %input, i64 0, metadata !25, metadata !95), !dbg !96
  %1 = load i8* %input, align 1, !dbg !97, !tbaa !99
  %2 = icmp eq i8 %1, 32, !dbg !102
  br i1 %2, label %3, label %9, !dbg !103

; <label>:3                                       ; preds = %0
  %4 = load i32* @have_partner, align 4, !dbg !104, !tbaa !99
  %5 = icmp eq i32 %4, 0, !dbg !104
  br i1 %5, label %6, label %10, !dbg !107

; <label>:6                                       ; preds = %3
  %7 = getelementptr inbounds i8* %input, i64 1, !dbg !108
  %8 = tail call i32 (i8*, i8*, ...)* @sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8]* @my_partner, i64 0, i64 0)) #9, !dbg !110
  store i32 1, i32* @have_partner, align 4, !dbg !111, !tbaa !99
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([68 x i8]* @str, i64 0, i64 0)) #1, !dbg !112
  %puts1.i = tail call i32 @puts(i8* getelementptr inbounds ([75 x i8]* @str84, i64 0, i64 0)) #1, !dbg !114
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str102, i64 0, i64 0)), !dbg !115
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str87, i64 0, i64 0)), !dbg !116
  br label %10, !dbg !117

; <label>:9                                       ; preds = %0
  tail call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @my_partner, i64 0, i64 0), i8 0, i64 256, i32 16, i1 false), !dbg !118
  store i32 0, i32* @have_partner, align 4, !dbg !120, !tbaa !99
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str85, i64 0, i64 0)), !dbg !121
  br label %10

; <label>:10                                      ; preds = %3, %6, %9
  ret void, !dbg !122
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @HandlePtell(i8* readonly %input) #0 {
  %howmuch = alloca [80 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %input, i64 0, metadata !28, metadata !95), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !29, metadata !95), !dbg !124
  %1 = getelementptr inbounds [80 x i8]* %howmuch, i64 0, i64 0, !dbg !125
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !125
  tail call void @llvm.dbg.declare(metadata [80 x i8]* %howmuch, metadata !30, metadata !95), !dbg !126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([80 x i8]* @HandlePtell.howmuch, i64 0, i64 0), i64 80, i32 16, i1 false), !dbg !126
  %2 = getelementptr inbounds i8* %input, i64 6, !dbg !127
  %3 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i64 4) #9, !dbg !129
  %4 = icmp eq i32 %3, 0, !dbg !129
  br i1 %4, label %5, label %6, !dbg !130

; <label>:5                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([146 x i8]* @str88, i64 0, i64 0)), !dbg !131
  br label %436, !dbg !133

; <label>:6                                       ; preds = %0
  %7 = load i32* @Variant, align 4, !dbg !134, !tbaa !136
  %8 = icmp eq i32 %7, 1, !dbg !138
  br i1 %8, label %13, label %9, !dbg !139

; <label>:9                                       ; preds = %6
  %10 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0), i64 5) #9, !dbg !140
  %11 = icmp eq i32 %10, 0, !dbg !140
  br i1 %11, label %13, label %12, !dbg !141

; <label>:12                                      ; preds = %9
  %puts48 = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str104, i64 0, i64 0)), !dbg !142
  br label %436, !dbg !144

; <label>:13                                      ; preds = %9, %6
  %14 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i64 3) #9, !dbg !145
  %15 = icmp eq i32 %14, 0, !dbg !145
  br i1 %15, label %16, label %17, !dbg !147

; <label>:16                                      ; preds = %13
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str89, i64 0, i64 0)), !dbg !148
  store i32 1, i32* @must_sit, align 4, !dbg !150, !tbaa !99
  store i32 0, i32* @must_go, align 4, !dbg !151, !tbaa !136
  br label %436, !dbg !152

; <label>:17                                      ; preds = %13
  %18 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i64 2) #9, !dbg !153
  %19 = icmp eq i32 %18, 0, !dbg !153
  br i1 %19, label %23, label %20, !dbg !155

; <label>:20                                      ; preds = %17
  %21 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i64 4) #9, !dbg !156
  %22 = icmp eq i32 %21, 0, !dbg !156
  br i1 %22, label %23, label %24, !dbg !157

; <label>:23                                      ; preds = %20, %17
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str90, i64 0, i64 0)), !dbg !158
  store i32 0, i32* @must_sit, align 4, !dbg !160, !tbaa !99
  store i32 4, i32* @must_go, align 4, !dbg !161, !tbaa !136
  br label %436, !dbg !162

; <label>:24                                      ; preds = %20
  %25 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i64 4) #9, !dbg !163
  %26 = icmp eq i32 %25, 0, !dbg !163
  br i1 %26, label %30, label %27, !dbg !165

; <label>:27                                      ; preds = %24
  %28 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i64 4) #9, !dbg !166
  %29 = icmp eq i32 %28, 0, !dbg !166
  br i1 %29, label %30, label %31, !dbg !167

; <label>:30                                      ; preds = %27, %24
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str91, i64 0, i64 0)), !dbg !168
  store i32 1, i32* @go_fast, align 4, !dbg !170, !tbaa !99
  store i32 0, i32* @must_sit, align 4, !dbg !171, !tbaa !99
  br label %436, !dbg !172

; <label>:31                                      ; preds = %27
  %32 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4) #9, !dbg !173
  %33 = icmp eq i32 %32, 0, !dbg !173
  br i1 %33, label %34, label %35, !dbg !175

; <label>:34                                      ; preds = %31
  %puts4 = tail call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str92, i64 0, i64 0)), !dbg !176
  store i32 0, i32* @go_fast, align 4, !dbg !178, !tbaa !99
  store i32 0, i32* @must_sit, align 4, !dbg !179, !tbaa !99
  br label %436, !dbg !180

; <label>:35                                      ; preds = %31
  %36 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0), i64 5) #9, !dbg !181
  %37 = icmp eq i32 %36, 0, !dbg !181
  br i1 %37, label %38, label %39, !dbg !183

; <label>:38                                      ; preds = %35
  %puts5 = tail call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str93, i64 0, i64 0)), !dbg !184
  %puts6 = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str94, i64 0, i64 0)), !dbg !186
  br label %436, !dbg !187

; <label>:39                                      ; preds = %35
  %40 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i64 4) #9, !dbg !188
  %41 = icmp eq i32 %40, 0, !dbg !188
  br i1 %41, label %42, label %43, !dbg !190

; <label>:42                                      ; preds = %39
  %puts7 = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str95, i64 0, i64 0)), !dbg !191
  %puts8 = tail call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str96, i64 0, i64 0)), !dbg !193
  br label %436, !dbg !194

; <label>:43                                      ; preds = %39
  %lhsc = load i8* %2, align 1, !dbg !195
  switch i8 %lhsc, label %392 [
    i8 43, label %44
    i8 45, label %218
    i8 120, label %403
  ], !dbg !197

; <label>:44                                      ; preds = %43
  %45 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str27, i64 0, i64 0)) #9, !dbg !198
  %46 = icmp eq i8* %45, null, !dbg !201
  br i1 %46, label %47, label %61, !dbg !202

; <label>:47                                      ; preds = %44
  %strchr = tail call i8* @strchr(i8* %2, i32 110), !dbg !203
  %48 = icmp eq i8* %strchr, null, !dbg !204
  br i1 %48, label %49, label %87, !dbg !205

; <label>:49                                      ; preds = %47
  %strchr17 = tail call i8* @strchr(i8* %2, i32 98), !dbg !206
  %50 = icmp eq i8* %strchr17, null, !dbg !207
  br i1 %50, label %51, label %87, !dbg !208

; <label>:51                                      ; preds = %49
  %strchr18 = tail call i8* @strchr(i8* %2, i32 112), !dbg !209
  %52 = icmp eq i8* %strchr18, null, !dbg !210
  br i1 %52, label %53, label %87, !dbg !211

; <label>:53                                      ; preds = %51
  %strchr19 = tail call i8* @strchr(i8* %2, i32 114), !dbg !212
  %54 = icmp eq i8* %strchr19, null, !dbg !213
  br i1 %54, label %55, label %87, !dbg !214

; <label>:55                                      ; preds = %53
  %strchr20 = tail call i8* @strchr(i8* %2, i32 113), !dbg !215
  %56 = icmp eq i8* %strchr20, null, !dbg !216
  br i1 %56, label %57, label %87, !dbg !217

; <label>:57                                      ; preds = %55
  %strchr21 = tail call i8* @strchr(i8* %2, i32 100), !dbg !218
  %58 = icmp eq i8* %strchr21, null, !dbg !219
  br i1 %58, label %59, label %87, !dbg !220

; <label>:59                                      ; preds = %57
  %strchr22 = tail call i8* @strchr(i8* %2, i32 104), !dbg !221
  %60 = icmp eq i8* %strchr22, null, !dbg !222
  br i1 %60, label %61, label %87, !dbg !223

; <label>:61                                      ; preds = %44, %59
  %62 = load i32* @comp_color, align 4, !dbg !224, !tbaa !136
  %63 = icmp eq i32 %62, 1, !dbg !227
  br i1 %63, label %64, label %75, !dbg !228

; <label>:64                                      ; preds = %61
  %65 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !229, !tbaa !136
  %66 = add nsw i32 %65, 25, !dbg !229
  store i32 %66, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !229, !tbaa !136
  %67 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !dbg !231, !tbaa !136
  %68 = add nsw i32 %67, 50, !dbg !231
  store i32 %68, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !dbg !231, !tbaa !136
  %69 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !232, !tbaa !136
  %70 = add nsw i32 %69, 50, !dbg !232
  store i32 %70, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !232, !tbaa !136
  %71 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !233, !tbaa !136
  %72 = add nsw i32 %71, 50, !dbg !233
  store i32 %72, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !233, !tbaa !136
  %73 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !234, !tbaa !136
  %74 = add nsw i32 %73, 100, !dbg !234
  store i32 %74, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !234, !tbaa !136
  br label %86, !dbg !235

; <label>:75                                      ; preds = %61
  %76 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !236, !tbaa !136
  %77 = add nsw i32 %76, -25, !dbg !236
  store i32 %77, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !236, !tbaa !136
  %78 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !dbg !238, !tbaa !136
  %79 = add nsw i32 %78, -50, !dbg !238
  store i32 %79, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !dbg !238, !tbaa !136
  %80 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !239, !tbaa !136
  %81 = add nsw i32 %80, -50, !dbg !239
  store i32 %81, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !239, !tbaa !136
  %82 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !240, !tbaa !136
  %83 = add nsw i32 %82, -50, !dbg !240
  store i32 %83, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !240, !tbaa !136
  %84 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !241, !tbaa !136
  %85 = add nsw i32 %84, -100, !dbg !241
  store i32 %85, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !241, !tbaa !136
  br label %86

; <label>:86                                      ; preds = %75, %64
  %puts23 = tail call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str97, i64 0, i64 0)), !dbg !242
  br label %99, !dbg !243

; <label>:87                                      ; preds = %59, %57, %55, %53, %51, %49, %47
  %88 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0)) #9, !dbg !244
  %89 = icmp eq i8* %88, null, !dbg !246
  br i1 %89, label %91, label %90, !dbg !247

; <label>:90                                      ; preds = %87
  tail call void @llvm.dbg.value(metadata i32 50000, i64 0, metadata !29, metadata !95), !dbg !124
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !248
  br label %99, !dbg !250

; <label>:91                                      ; preds = %87
  %92 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0)) #9, !dbg !251
  %93 = icmp eq i8* %92, null, !dbg !253
  br i1 %93, label %95, label %94, !dbg !254

; <label>:94                                      ; preds = %91
  tail call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !29, metadata !95), !dbg !124
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([49 x i8]* @.str39, i64 0, i64 0), i64 49, i32 1, i1 false), !dbg !255
  br label %99, !dbg !257

; <label>:95                                      ; preds = %91
  %strchr9 = tail call i8* @strchr(i8* %2, i32 43), !dbg !258
  %96 = icmp eq i8* %strchr9, null, !dbg !260
  br i1 %96, label %98, label %97, !dbg !261

; <label>:97                                      ; preds = %95
  tail call void @llvm.dbg.value(metadata i32 150, i64 0, metadata !29, metadata !95), !dbg !124
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([44 x i8]* @.str40, i64 0, i64 0), i64 44, i32 1, i1 false), !dbg !262
  br label %99

; <label>:98                                      ; preds = %95
  tail call void @llvm.trap(), !dbg !264
  unreachable

; <label>:99                                      ; preds = %90, %97, %94, %86
  %change.0 = phi i32 [ 0, %86 ], [ 50000, %90 ], [ 1000, %94 ], [ 150, %97 ]
  %strchr10 = tail call i8* @strchr(i8* %2, i32 110), !dbg !265
  %100 = icmp eq i8* %strchr10, null, !dbg !267
  br i1 %100, label %112, label %101, !dbg !268

; <label>:101                                     ; preds = %99
  %102 = load i32* @comp_color, align 4, !dbg !269, !tbaa !136
  %103 = icmp eq i32 %102, 1, !dbg !272
  br i1 %103, label %104, label %107, !dbg !273

; <label>:104                                     ; preds = %101
  %105 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 3), align 4, !dbg !274, !tbaa !136
  %106 = add nsw i32 %105, %change.0, !dbg !275
  store i32 %106, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !dbg !276, !tbaa !136
  br label %110, !dbg !277

; <label>:107                                     ; preds = %101
  %108 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 4), align 16, !dbg !278, !tbaa !136
  %109 = sub nsw i32 %108, %change.0, !dbg !279
  store i32 %109, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !dbg !280, !tbaa !136
  br label %110

; <label>:110                                     ; preds = %107, %104
  %111 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str41, i64 0, i64 0), i8* %1) #9, !dbg !281
  br label %112, !dbg !282

; <label>:112                                     ; preds = %99, %110
  %strchr11 = call i8* @strchr(i8* %2, i32 98), !dbg !283
  %113 = icmp eq i8* %strchr11, null, !dbg !285
  br i1 %113, label %129, label %114, !dbg !286

; <label>:114                                     ; preds = %112
  %115 = load i32* @comp_color, align 4, !dbg !287, !tbaa !136
  %116 = icmp eq i32 %115, 1, !dbg !290
  br i1 %116, label %117, label %122, !dbg !291

; <label>:117                                     ; preds = %114
  %118 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !dbg !292, !tbaa !136
  %119 = add nsw i32 %118, %change.0, !dbg !293
  store i32 %119, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !294, !tbaa !136
  %120 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !295, !tbaa !136
  %121 = add nsw i32 %120, %change.0, !dbg !297
  store i32 %121, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !298, !tbaa !136
  br label %127, !dbg !299

; <label>:122                                     ; preds = %114
  %123 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !dbg !300, !tbaa !136
  %124 = sub nsw i32 %123, %change.0, !dbg !301
  store i32 %124, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !302, !tbaa !136
  %125 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !303, !tbaa !136
  %126 = sub nsw i32 %125, %change.0, !dbg !304
  store i32 %126, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !305, !tbaa !136
  br label %127

; <label>:127                                     ; preds = %122, %117
  %128 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str42, i64 0, i64 0), i8* %1) #9, !dbg !306
  br label %129, !dbg !307

; <label>:129                                     ; preds = %112, %127
  %strchr12 = call i8* @strchr(i8* %2, i32 114), !dbg !308
  %130 = icmp eq i8* %strchr12, null, !dbg !310
  br i1 %130, label %146, label %131, !dbg !311

; <label>:131                                     ; preds = %129
  %132 = load i32* @comp_color, align 4, !dbg !312, !tbaa !136
  %133 = icmp eq i32 %132, 1, !dbg !315
  br i1 %133, label %134, label %139, !dbg !316

; <label>:134                                     ; preds = %131
  %135 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 7), align 4, !dbg !317, !tbaa !136
  %136 = add nsw i32 %135, %change.0, !dbg !318
  store i32 %136, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !319, !tbaa !136
  %137 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !320, !tbaa !136
  %138 = add nsw i32 %137, %change.0, !dbg !322
  store i32 %138, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !323, !tbaa !136
  br label %144, !dbg !324

; <label>:139                                     ; preds = %131
  %140 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 8), align 16, !dbg !325, !tbaa !136
  %141 = sub nsw i32 %140, %change.0, !dbg !326
  store i32 %141, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !327, !tbaa !136
  %142 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !328, !tbaa !136
  %143 = sub nsw i32 %142, %change.0, !dbg !329
  store i32 %143, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !330, !tbaa !136
  br label %144

; <label>:144                                     ; preds = %139, %134
  %145 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0), i8* %1) #9, !dbg !331
  br label %146, !dbg !332

; <label>:146                                     ; preds = %129, %144
  %strchr13 = call i8* @strchr(i8* %2, i32 113), !dbg !333
  %147 = icmp eq i8* %strchr13, null, !dbg !335
  br i1 %147, label %159, label %148, !dbg !336

; <label>:148                                     ; preds = %146
  %149 = load i32* @comp_color, align 4, !dbg !337, !tbaa !136
  %150 = icmp eq i32 %149, 1, !dbg !340
  br i1 %150, label %151, label %154, !dbg !341

; <label>:151                                     ; preds = %148
  %152 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !342, !tbaa !136
  %153 = add nsw i32 %152, %change.0, !dbg !343
  store i32 %153, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !344, !tbaa !136
  br label %157, !dbg !345

; <label>:154                                     ; preds = %148
  %155 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !346, !tbaa !136
  %156 = sub nsw i32 %155, %change.0, !dbg !347
  store i32 %156, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !348, !tbaa !136
  br label %157

; <label>:157                                     ; preds = %154, %151
  %158 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str44, i64 0, i64 0), i8* %1) #9, !dbg !349
  br label %159, !dbg !350

; <label>:159                                     ; preds = %146, %157
  %strchr14 = call i8* @strchr(i8* %2, i32 112), !dbg !351
  %160 = icmp eq i8* %strchr14, null, !dbg !353
  br i1 %160, label %180, label %161, !dbg !354

; <label>:161                                     ; preds = %159
  %162 = load i32* @comp_color, align 4, !dbg !355, !tbaa !136
  %163 = icmp eq i32 %162, 1, !dbg !358
  br i1 %163, label %164, label %171, !dbg !359

; <label>:164                                     ; preds = %161
  %165 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 1), align 4, !dbg !360, !tbaa !136
  %166 = add nsw i32 %165, %change.0, !dbg !361
  store i32 %166, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !362, !tbaa !136
  %167 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !363, !tbaa !136
  %168 = add nsw i32 %167, %change.0, !dbg !366
  store i32 %168, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !367, !tbaa !136
  %169 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !dbg !368, !tbaa !136
  %170 = add nsw i32 %169, %change.0, !dbg !369
  store i32 %170, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !370, !tbaa !136
  br label %178, !dbg !371

; <label>:171                                     ; preds = %161
  %172 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 2), align 8, !dbg !372, !tbaa !136
  %173 = sub nsw i32 %172, %change.0, !dbg !373
  store i32 %173, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !374, !tbaa !136
  %174 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !375, !tbaa !136
  %175 = sub nsw i32 %174, %change.0, !dbg !377
  store i32 %175, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !378, !tbaa !136
  %176 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !dbg !379, !tbaa !136
  %177 = sub nsw i32 %176, %change.0, !dbg !380
  store i32 %177, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !381, !tbaa !136
  br label %178

; <label>:178                                     ; preds = %171, %164
  %179 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str45, i64 0, i64 0), i8* %1) #9, !dbg !382
  br label %180, !dbg !383

; <label>:180                                     ; preds = %159, %178
  %strchr15 = call i8* @strchr(i8* %2, i32 100), !dbg !384
  %181 = icmp eq i8* %strchr15, null, !dbg !386
  br i1 %181, label %201, label %182, !dbg !387

; <label>:182                                     ; preds = %180
  %183 = load i32* @comp_color, align 4, !dbg !388, !tbaa !136
  %184 = icmp eq i32 %183, 1, !dbg !391
  br i1 %184, label %185, label %192, !dbg !392

; <label>:185                                     ; preds = %182
  %186 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 1), align 4, !dbg !393, !tbaa !136
  %187 = add nsw i32 %186, %change.0, !dbg !395
  store i32 %187, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !396, !tbaa !136
  %188 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !dbg !397, !tbaa !136
  %189 = add nsw i32 %188, %change.0, !dbg !398
  store i32 %189, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !399, !tbaa !136
  %190 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !400, !tbaa !136
  %191 = add nsw i32 %190, %change.0, !dbg !401
  store i32 %191, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !402, !tbaa !136
  br label %199, !dbg !403

; <label>:192                                     ; preds = %182
  %193 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 2), align 8, !dbg !404, !tbaa !136
  %194 = sub nsw i32 %193, %change.0, !dbg !406
  store i32 %194, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !407, !tbaa !136
  %195 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !dbg !408, !tbaa !136
  %196 = sub nsw i32 %195, %change.0, !dbg !409
  store i32 %196, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !410, !tbaa !136
  %197 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !411, !tbaa !136
  %198 = sub nsw i32 %197, %change.0, !dbg !412
  store i32 %198, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !413, !tbaa !136
  br label %199

; <label>:199                                     ; preds = %192, %185
  %200 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str46, i64 0, i64 0), i8* %1) #9, !dbg !414
  br label %201, !dbg !415

; <label>:201                                     ; preds = %180, %199
  %strchr16 = call i8* @strchr(i8* %2, i32 104), !dbg !416
  %202 = icmp eq i8* %strchr16, null, !dbg !418
  br i1 %202, label %436, label %203, !dbg !419

; <label>:203                                     ; preds = %201
  %204 = load i32* @comp_color, align 4, !dbg !420, !tbaa !136
  %205 = icmp eq i32 %204, 1, !dbg !423
  br i1 %205, label %206, label %211, !dbg !424

; <label>:206                                     ; preds = %203
  %207 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 7), align 4, !dbg !425, !tbaa !136
  %208 = add nsw i32 %207, %change.0, !dbg !427
  store i32 %208, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !428, !tbaa !136
  %209 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !429, !tbaa !136
  %210 = add nsw i32 %209, %change.0, !dbg !430
  store i32 %210, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !431, !tbaa !136
  br label %216, !dbg !432

; <label>:211                                     ; preds = %203
  %212 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 8), align 16, !dbg !433, !tbaa !136
  %213 = sub nsw i32 %212, %change.0, !dbg !435
  store i32 %213, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !436, !tbaa !136
  %214 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !437, !tbaa !136
  %215 = sub nsw i32 %214, %change.0, !dbg !438
  store i32 %215, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !439, !tbaa !136
  br label %216

; <label>:216                                     ; preds = %211, %206
  %217 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str47, i64 0, i64 0), i8* %1) #9, !dbg !440
  br label %436, !dbg !441

; <label>:218                                     ; preds = %43
  %219 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str27, i64 0, i64 0)) #9, !dbg !442
  %220 = icmp eq i8* %219, null, !dbg !446
  br i1 %220, label %221, label %235, !dbg !447

; <label>:221                                     ; preds = %218
  %strchr25 = tail call i8* @strchr(i8* %2, i32 110), !dbg !448
  %222 = icmp eq i8* %strchr25, null, !dbg !449
  br i1 %222, label %223, label %261, !dbg !450

; <label>:223                                     ; preds = %221
  %strchr34 = tail call i8* @strchr(i8* %2, i32 98), !dbg !451
  %224 = icmp eq i8* %strchr34, null, !dbg !452
  br i1 %224, label %225, label %261, !dbg !453

; <label>:225                                     ; preds = %223
  %strchr35 = tail call i8* @strchr(i8* %2, i32 112), !dbg !454
  %226 = icmp eq i8* %strchr35, null, !dbg !455
  br i1 %226, label %227, label %261, !dbg !456

; <label>:227                                     ; preds = %225
  %strchr36 = tail call i8* @strchr(i8* %2, i32 114), !dbg !457
  %228 = icmp eq i8* %strchr36, null, !dbg !458
  br i1 %228, label %229, label %261, !dbg !459

; <label>:229                                     ; preds = %227
  %strchr37 = tail call i8* @strchr(i8* %2, i32 113), !dbg !460
  %230 = icmp eq i8* %strchr37, null, !dbg !461
  br i1 %230, label %231, label %261, !dbg !462

; <label>:231                                     ; preds = %229
  %strchr38 = tail call i8* @strchr(i8* %2, i32 100), !dbg !463
  %232 = icmp eq i8* %strchr38, null, !dbg !464
  br i1 %232, label %233, label %261, !dbg !465

; <label>:233                                     ; preds = %231
  %strchr39 = tail call i8* @strchr(i8* %2, i32 104), !dbg !466
  %234 = icmp eq i8* %strchr39, null, !dbg !467
  br i1 %234, label %235, label %261, !dbg !468

; <label>:235                                     ; preds = %218, %233
  %236 = load i32* @comp_color, align 4, !dbg !469, !tbaa !136
  %237 = icmp eq i32 %236, 1, !dbg !472
  br i1 %237, label %238, label %249, !dbg !473

; <label>:238                                     ; preds = %235
  %239 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !474, !tbaa !136
  %240 = add nsw i32 %239, -20, !dbg !474
  store i32 %240, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !474, !tbaa !136
  %241 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !dbg !476, !tbaa !136
  %242 = add nsw i32 %241, -50, !dbg !476
  store i32 %242, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !dbg !476, !tbaa !136
  %243 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !477, !tbaa !136
  %244 = add nsw i32 %243, -50, !dbg !477
  store i32 %244, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !477, !tbaa !136
  %245 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !478, !tbaa !136
  %246 = add nsw i32 %245, -50, !dbg !478
  store i32 %246, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !478, !tbaa !136
  %247 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !479, !tbaa !136
  %248 = add nsw i32 %247, -100, !dbg !479
  store i32 %248, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !479, !tbaa !136
  br label %260, !dbg !480

; <label>:249                                     ; preds = %235
  %250 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !481, !tbaa !136
  %251 = add nsw i32 %250, 20, !dbg !481
  store i32 %251, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !481, !tbaa !136
  %252 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !dbg !483, !tbaa !136
  %253 = add nsw i32 %252, 50, !dbg !483
  store i32 %253, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !dbg !483, !tbaa !136
  %254 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !484, !tbaa !136
  %255 = add nsw i32 %254, 50, !dbg !484
  store i32 %255, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !484, !tbaa !136
  %256 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !485, !tbaa !136
  %257 = add nsw i32 %256, 50, !dbg !485
  store i32 %257, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !485, !tbaa !136
  %258 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !486, !tbaa !136
  %259 = add nsw i32 %258, 100, !dbg !486
  store i32 %259, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !486, !tbaa !136
  br label %260

; <label>:260                                     ; preds = %249, %238
  %puts40 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str98, i64 0, i64 0)), !dbg !487
  br label %273, !dbg !488

; <label>:261                                     ; preds = %233, %231, %229, %227, %225, %223, %221
  %262 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str50, i64 0, i64 0)) #9, !dbg !489
  %263 = icmp eq i8* %262, null, !dbg !491
  br i1 %263, label %265, label %264, !dbg !492

; <label>:264                                     ; preds = %261
  tail call void @llvm.dbg.value(metadata i32 50000, i64 0, metadata !29, metadata !95), !dbg !124
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([53 x i8]* @.str51, i64 0, i64 0), i64 53, i32 1, i1 false), !dbg !493
  br label %273, !dbg !495

; <label>:265                                     ; preds = %261
  %266 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str52, i64 0, i64 0)) #9, !dbg !496
  %267 = icmp eq i8* %266, null, !dbg !498
  br i1 %267, label %269, label %268, !dbg !499

; <label>:268                                     ; preds = %265
  tail call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !29, metadata !95), !dbg !124
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([52 x i8]* @.str53, i64 0, i64 0), i64 52, i32 1, i1 false), !dbg !500
  br label %273, !dbg !502

; <label>:269                                     ; preds = %265
  %strchr26 = tail call i8* @strchr(i8* %2, i32 45), !dbg !503
  %270 = icmp eq i8* %strchr26, null, !dbg !505
  br i1 %270, label %272, label %271, !dbg !506

; <label>:271                                     ; preds = %269
  tail call void @llvm.dbg.value(metadata i32 150, i64 0, metadata !29, metadata !95), !dbg !124
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([47 x i8]* @.str54, i64 0, i64 0), i64 47, i32 1, i1 false), !dbg !507
  br label %273

; <label>:272                                     ; preds = %269
  tail call void @llvm.trap(), !dbg !509
  unreachable

; <label>:273                                     ; preds = %264, %271, %268, %260
  %change.1 = phi i32 [ 0, %260 ], [ 50000, %264 ], [ 1000, %268 ], [ 150, %271 ]
  %strchr27 = tail call i8* @strchr(i8* %2, i32 110), !dbg !510
  %274 = icmp eq i8* %strchr27, null, !dbg !512
  br i1 %274, label %286, label %275, !dbg !513

; <label>:275                                     ; preds = %273
  %276 = load i32* @comp_color, align 4, !dbg !514, !tbaa !136
  %277 = icmp eq i32 %276, 1, !dbg !517
  br i1 %277, label %278, label %281, !dbg !518

; <label>:278                                     ; preds = %275
  %279 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 4), align 16, !dbg !519, !tbaa !136
  %280 = sub nsw i32 %279, %change.1, !dbg !520
  store i32 %280, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !dbg !521, !tbaa !136
  br label %284, !dbg !522

; <label>:281                                     ; preds = %275
  %282 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 3), align 4, !dbg !523, !tbaa !136
  %283 = add nsw i32 %282, %change.1, !dbg !524
  store i32 %283, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !dbg !525, !tbaa !136
  br label %284

; <label>:284                                     ; preds = %281, %278
  %285 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str41, i64 0, i64 0), i8* %1) #9, !dbg !526
  br label %286, !dbg !527

; <label>:286                                     ; preds = %273, %284
  %strchr28 = call i8* @strchr(i8* %2, i32 98), !dbg !528
  %287 = icmp eq i8* %strchr28, null, !dbg !530
  br i1 %287, label %303, label %288, !dbg !531

; <label>:288                                     ; preds = %286
  %289 = load i32* @comp_color, align 4, !dbg !532, !tbaa !136
  %290 = icmp eq i32 %289, 1, !dbg !535
  br i1 %290, label %291, label %296, !dbg !536

; <label>:291                                     ; preds = %288
  %292 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !dbg !537, !tbaa !136
  %293 = sub nsw i32 %292, %change.1, !dbg !538
  store i32 %293, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !539, !tbaa !136
  %294 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !540, !tbaa !136
  %295 = sub nsw i32 %294, %change.1, !dbg !542
  store i32 %295, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !543, !tbaa !136
  br label %301, !dbg !544

; <label>:296                                     ; preds = %288
  %297 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !dbg !545, !tbaa !136
  %298 = add nsw i32 %297, %change.1, !dbg !546
  store i32 %298, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !547, !tbaa !136
  %299 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !548, !tbaa !136
  %300 = add nsw i32 %299, %change.1, !dbg !549
  store i32 %300, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !550, !tbaa !136
  br label %301

; <label>:301                                     ; preds = %296, %291
  %302 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str42, i64 0, i64 0), i8* %1) #9, !dbg !551
  br label %303, !dbg !552

; <label>:303                                     ; preds = %286, %301
  %strchr29 = call i8* @strchr(i8* %2, i32 114), !dbg !553
  %304 = icmp eq i8* %strchr29, null, !dbg !555
  br i1 %304, label %320, label %305, !dbg !556

; <label>:305                                     ; preds = %303
  %306 = load i32* @comp_color, align 4, !dbg !557, !tbaa !136
  %307 = icmp eq i32 %306, 1, !dbg !560
  br i1 %307, label %308, label %313, !dbg !561

; <label>:308                                     ; preds = %305
  %309 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 8), align 16, !dbg !562, !tbaa !136
  %310 = sub nsw i32 %309, %change.1, !dbg !563
  store i32 %310, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !564, !tbaa !136
  %311 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !565, !tbaa !136
  %312 = sub nsw i32 %311, %change.1, !dbg !567
  store i32 %312, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !568, !tbaa !136
  br label %318, !dbg !569

; <label>:313                                     ; preds = %305
  %314 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 7), align 4, !dbg !570, !tbaa !136
  %315 = add nsw i32 %314, %change.1, !dbg !571
  store i32 %315, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !572, !tbaa !136
  %316 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !573, !tbaa !136
  %317 = add nsw i32 %316, %change.1, !dbg !574
  store i32 %317, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !575, !tbaa !136
  br label %318

; <label>:318                                     ; preds = %313, %308
  %319 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0), i8* %1) #9, !dbg !576
  br label %320, !dbg !577

; <label>:320                                     ; preds = %303, %318
  %strchr30 = call i8* @strchr(i8* %2, i32 113), !dbg !578
  %321 = icmp eq i8* %strchr30, null, !dbg !580
  br i1 %321, label %333, label %322, !dbg !581

; <label>:322                                     ; preds = %320
  %323 = load i32* @comp_color, align 4, !dbg !582, !tbaa !136
  %324 = icmp eq i32 %323, 1, !dbg !585
  br i1 %324, label %325, label %328, !dbg !586

; <label>:325                                     ; preds = %322
  %326 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !587, !tbaa !136
  %327 = sub nsw i32 %326, %change.1, !dbg !588
  store i32 %327, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !589, !tbaa !136
  br label %331, !dbg !590

; <label>:328                                     ; preds = %322
  %329 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !591, !tbaa !136
  %330 = add nsw i32 %329, %change.1, !dbg !592
  store i32 %330, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !593, !tbaa !136
  br label %331

; <label>:331                                     ; preds = %328, %325
  %332 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str44, i64 0, i64 0), i8* %1) #9, !dbg !594
  br label %333, !dbg !595

; <label>:333                                     ; preds = %320, %331
  %strchr31 = call i8* @strchr(i8* %2, i32 112), !dbg !596
  %334 = icmp eq i8* %strchr31, null, !dbg !598
  br i1 %334, label %354, label %335, !dbg !599

; <label>:335                                     ; preds = %333
  %336 = load i32* @comp_color, align 4, !dbg !600, !tbaa !136
  %337 = icmp eq i32 %336, 1, !dbg !603
  br i1 %337, label %338, label %345, !dbg !604

; <label>:338                                     ; preds = %335
  %339 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 2), align 8, !dbg !605, !tbaa !136
  %340 = sub nsw i32 %339, %change.1, !dbg !606
  store i32 %340, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !607, !tbaa !136
  %341 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !608, !tbaa !136
  %342 = sub nsw i32 %341, %change.1, !dbg !611
  store i32 %342, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !612, !tbaa !136
  %343 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !dbg !613, !tbaa !136
  %344 = sub nsw i32 %343, %change.1, !dbg !614
  store i32 %344, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !615, !tbaa !136
  br label %352, !dbg !616

; <label>:345                                     ; preds = %335
  %346 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 1), align 4, !dbg !617, !tbaa !136
  %347 = add nsw i32 %346, %change.1, !dbg !618
  store i32 %347, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !619, !tbaa !136
  %348 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !620, !tbaa !136
  %349 = add nsw i32 %348, %change.1, !dbg !622
  store i32 %349, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !623, !tbaa !136
  %350 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !dbg !624, !tbaa !136
  %351 = add nsw i32 %350, %change.1, !dbg !625
  store i32 %351, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !626, !tbaa !136
  br label %352

; <label>:352                                     ; preds = %345, %338
  %353 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str45, i64 0, i64 0), i8* %1) #9, !dbg !627
  br label %354, !dbg !628

; <label>:354                                     ; preds = %333, %352
  %strchr32 = call i8* @strchr(i8* %2, i32 100), !dbg !629
  %355 = icmp eq i8* %strchr32, null, !dbg !631
  br i1 %355, label %375, label %356, !dbg !632

; <label>:356                                     ; preds = %354
  %357 = load i32* @comp_color, align 4, !dbg !633, !tbaa !136
  %358 = icmp eq i32 %357, 1, !dbg !636
  br i1 %358, label %359, label %366, !dbg !637

; <label>:359                                     ; preds = %356
  %360 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 2), align 8, !dbg !638, !tbaa !136
  %361 = sub nsw i32 %360, %change.1, !dbg !640
  store i32 %361, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !641, !tbaa !136
  %362 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !dbg !642, !tbaa !136
  %363 = sub nsw i32 %362, %change.1, !dbg !643
  store i32 %363, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !644, !tbaa !136
  %364 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !645, !tbaa !136
  %365 = sub nsw i32 %364, %change.1, !dbg !646
  store i32 %365, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !647, !tbaa !136
  br label %373, !dbg !648

; <label>:366                                     ; preds = %356
  %367 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 1), align 4, !dbg !649, !tbaa !136
  %368 = add nsw i32 %367, %change.1, !dbg !651
  store i32 %368, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !652, !tbaa !136
  %369 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !dbg !653, !tbaa !136
  %370 = add nsw i32 %369, %change.1, !dbg !654
  store i32 %370, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !655, !tbaa !136
  %371 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !656, !tbaa !136
  %372 = add nsw i32 %371, %change.1, !dbg !657
  store i32 %372, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !658, !tbaa !136
  br label %373

; <label>:373                                     ; preds = %366, %359
  %374 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str46, i64 0, i64 0), i8* %1) #9, !dbg !659
  br label %375, !dbg !660

; <label>:375                                     ; preds = %354, %373
  %strchr33 = call i8* @strchr(i8* %2, i32 104), !dbg !661
  %376 = icmp eq i8* %strchr33, null, !dbg !663
  br i1 %376, label %436, label %377, !dbg !664

; <label>:377                                     ; preds = %375
  %378 = load i32* @comp_color, align 4, !dbg !665, !tbaa !136
  %379 = icmp eq i32 %378, 1, !dbg !668
  br i1 %379, label %380, label %385, !dbg !669

; <label>:380                                     ; preds = %377
  %381 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 8), align 16, !dbg !670, !tbaa !136
  %382 = sub nsw i32 %381, %change.1, !dbg !672
  store i32 %382, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !673, !tbaa !136
  %383 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !674, !tbaa !136
  %384 = sub nsw i32 %383, %change.1, !dbg !675
  store i32 %384, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !676, !tbaa !136
  br label %390, !dbg !677

; <label>:385                                     ; preds = %377
  %386 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 7), align 4, !dbg !678, !tbaa !136
  %387 = add nsw i32 %386, %change.1, !dbg !680
  store i32 %387, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !681, !tbaa !136
  %388 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !682, !tbaa !136
  %389 = add nsw i32 %388, %change.1, !dbg !683
  store i32 %389, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !684, !tbaa !136
  br label %390

; <label>:390                                     ; preds = %385, %380
  %391 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str47, i64 0, i64 0), i8* %1) #9, !dbg !685
  br label %436, !dbg !686

; <label>:392                                     ; preds = %43
  %393 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([16 x i8]* @.str56, i64 0, i64 0)) #9, !dbg !687
  %394 = icmp eq i8* %393, null, !dbg !689
  br i1 %394, label %395, label %403, !dbg !690

; <label>:395                                     ; preds = %392
  %396 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0)) #9, !dbg !691
  %397 = icmp eq i8* %396, null, !dbg !692
  br i1 %397, label %402, label %398, !dbg !693

; <label>:398                                     ; preds = %395
  %399 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str58, i64 0, i64 0)) #9, !dbg !694
  %400 = icmp ne i8* %399, null, !dbg !695
  %401 = icmp eq i8 %lhsc, 61, !dbg !696
  %or.cond = or i1 %400, %401, !dbg !697
  br i1 %or.cond, label %403, label %407, !dbg !697

; <label>:402                                     ; preds = %395
  %.old = icmp eq i8 %lhsc, 61, !dbg !696
  br i1 %.old, label %403, label %407, !dbg !698

; <label>:403                                     ; preds = %398, %43, %402, %392
  %404 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([9 x i8]* @.str60, i64 0, i64 0)) #9, !dbg !699
  %405 = icmp eq i8* %404, null, !dbg !700
  br i1 %405, label %406, label %407, !dbg !701

; <label>:406                                     ; preds = %403
  %puts46 = tail call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str103, i64 0, i64 0)), !dbg !702
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([13 x i32]* @hand_value to i8*), i8* bitcast ([13 x i32]* @std_hand_value to i8*), i64 52, i32 16, i1 false) #1, !dbg !704
  store i32 0, i32* @must_sit, align 4, !dbg !706, !tbaa !99
  store i32 0, i32* @partnerdead, align 4, !dbg !707, !tbaa !99
  store i32 0, i32* @piecedead, align 4, !dbg !708, !tbaa !99
  br label %436, !dbg !709

; <label>:407                                     ; preds = %398, %402, %403
  %408 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([26 x i8]* @.str62, i64 0, i64 0), i64 25) #9, !dbg !710
  %409 = icmp eq i32 %408, 0, !dbg !710
  br i1 %409, label %413, label %410, !dbg !712

; <label>:410                                     ; preds = %407
  %411 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str63, i64 0, i64 0), i64 4) #9, !dbg !713
  %412 = icmp eq i32 %411, 0, !dbg !713
  br i1 %412, label %413, label %414, !dbg !714

; <label>:413                                     ; preds = %410, %407
  store i32 1, i32* @go_fast, align 4, !dbg !715, !tbaa !99
  store i32 0, i32* @must_sit, align 4, !dbg !717, !tbaa !99
  store i32 1, i32* @partnerdead, align 4, !dbg !718, !tbaa !99
  br label %436, !dbg !719

; <label>:414                                     ; preds = %410
  %415 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([27 x i8]* @.str64, i64 0, i64 0), i64 26) #9, !dbg !720
  %416 = icmp eq i32 %415, 0, !dbg !720
  br i1 %416, label %417, label %418, !dbg !722

; <label>:417                                     ; preds = %414
  store i32 1, i32* @go_fast, align 4, !dbg !723, !tbaa !99
  store i32 0, i32* @must_sit, align 4, !dbg !725, !tbaa !99
  store i32 1, i32* @piecedead, align 4, !dbg !726, !tbaa !99
  br label %436, !dbg !727

; <label>:418                                     ; preds = %414
  %419 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0), i64 5) #9, !dbg !728
  %420 = icmp eq i32 %419, 0, !dbg !728
  br i1 %420, label %436, label %421, !dbg !730

; <label>:421                                     ; preds = %418
  %422 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str65, i64 0, i64 0), i64 2) #9, !dbg !731
  %423 = icmp eq i32 %422, 0, !dbg !731
  br i1 %423, label %436, label %424, !dbg !733

; <label>:424                                     ; preds = %421
  %425 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str66, i64 0, i64 0), i64 2) #9, !dbg !734
  %426 = icmp eq i32 %425, 0, !dbg !734
  br i1 %426, label %430, label %427, !dbg !736

; <label>:427                                     ; preds = %424
  %428 = tail call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i64 5) #9, !dbg !737
  %429 = icmp eq i32 %428, 0, !dbg !737
  br i1 %429, label %430, label %431, !dbg !738

; <label>:430                                     ; preds = %427, %424
  %puts42 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str99, i64 0, i64 0)), !dbg !739
  br label %436, !dbg !741

; <label>:431                                     ; preds = %427
  %432 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([8 x i8]* @.str69, i64 0, i64 0)) #9, !dbg !742
  %433 = icmp eq i8* %432, null, !dbg !744
  br i1 %433, label %435, label %434, !dbg !745

; <label>:434                                     ; preds = %431
  %puts44 = tail call i32 @puts(i8* getelementptr inbounds ([86 x i8]* @str101, i64 0, i64 0)), !dbg !746
  %puts45 = tail call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str102, i64 0, i64 0)), !dbg !748
  br label %436, !dbg !749

; <label>:435                                     ; preds = %431
  %puts43 = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str100, i64 0, i64 0)), !dbg !750
  br label %436

; <label>:436                                     ; preds = %16, %30, %38, %216, %406, %417, %434, %435, %430, %413, %390, %42, %34, %23, %201, %375, %421, %418, %12, %5
  call void @llvm.lifetime.end(i64 80, i8* %1) #1, !dbg !752
  ret void, !dbg !752
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @CheckBadFlow(i32 %reset) #0 {
  %hismoves = alloca [512 x %struct.move_s], align 16
  %ourmoves = alloca [512 x %struct.move_s], align 16
  tail call void @llvm.dbg.value(metadata i32 %reset, i64 0, metadata !39, metadata !95), !dbg !753
  %1 = bitcast [512 x %struct.move_s]* %hismoves to i8*, !dbg !754
  call void @llvm.lifetime.start(i64 12288, i8* %1) #1, !dbg !754
  tail call void @llvm.dbg.declare(metadata [512 x %struct.move_s]* %hismoves, metadata !40, metadata !95), !dbg !755
  %2 = bitcast [512 x %struct.move_s]* %ourmoves to i8*, !dbg !756
  call void @llvm.lifetime.start(i64 12288, i8* %2) #1, !dbg !756
  tail call void @llvm.dbg.declare(metadata [512 x %struct.move_s]* %ourmoves, metadata !53, metadata !95), !dbg !757
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !60, metadata !95), !dbg !758
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !95), !dbg !759
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !95), !dbg !760
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !63, metadata !95), !dbg !761
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !64, metadata !95), !dbg !762
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !65, metadata !95), !dbg !763
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !66, metadata !95), !dbg !764
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !67, metadata !95), !dbg !765
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !68, metadata !95), !dbg !766
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !69, metadata !95), !dbg !767
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !70, metadata !95), !dbg !768
  %3 = icmp eq i32 %reset, 0, !dbg !769
  br i1 %3, label %5, label %4, !dbg !771

; <label>:4                                       ; preds = %0
  store i32 0, i32* @CheckBadFlow.pawnmated, align 4, !dbg !772, !tbaa !136
  store i32 0, i32* @CheckBadFlow.knightmated, align 4, !dbg !774, !tbaa !136
  store i32 0, i32* @CheckBadFlow.bishopmated, align 4, !dbg !775, !tbaa !136
  store i32 0, i32* @CheckBadFlow.rookmated, align 4, !dbg !776, !tbaa !136
  store i32 0, i32* @CheckBadFlow.queenmated, align 4, !dbg !777, !tbaa !136
  br label %277, !dbg !778

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @in_check() #9, !dbg !779
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !58, metadata !95), !dbg !780
  %7 = load i32* @white_to_move, align 4, !dbg !781, !tbaa !136
  %8 = icmp ne i32 %7, 0, !dbg !781
  %9 = select i1 %8, i32 1, i32 2, !dbg !781
  %10 = zext i32 %9 to i64, !dbg !783
  %11 = zext i1 %8 to i32, !dbg !784
  %12 = xor i32 %11, 1, !dbg !784
  %13 = zext i32 %12 to i64, !dbg !783
  %14 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %13, i64 %10, !dbg !783
  %15 = load i32* %14, align 4, !dbg !783, !tbaa !136
  %16 = icmp eq i32 %15, 0, !dbg !783
  br i1 %16, label %17, label %42, !dbg !785

; <label>:17                                      ; preds = %5
  tail call void @DropaddHolding(i32 %9, i32 %12) #9, !dbg !786
  %18 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0, !dbg !788
  call void @gen(%struct.move_s* %18) #9, !dbg !789
  %19 = load i32* @numb_moves, align 4, !dbg !790, !tbaa !136
  call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !54, metadata !95), !dbg !791
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !95), !dbg !792
  %20 = icmp sgt i32 %19, 0, !dbg !793
  br i1 %20, label %.lr.ph97, label %.critedge, !dbg !796

.lr.ph97:                                         ; preds = %17
  %21 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0, !dbg !797
  br label %22, !dbg !796

; <label>:22                                      ; preds = %.lr.ph97, %.critedge1
  %i.095 = phi i32 [ 0, %.lr.ph97 ], [ %34, %.critedge1 ]
  call void @make(%struct.move_s* %18, i32 %i.095) #9, !dbg !801
  %23 = call i32 @check_legal(%struct.move_s* %18, i32 %i.095, i32 %6) #9, !dbg !802
  %24 = icmp eq i32 %23, 0, !dbg !802
  br i1 %24, label %.critedge1, label %25, !dbg !803

; <label>:25                                      ; preds = %22
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !61, metadata !95), !dbg !759
  %26 = call i32 @in_check() #9, !dbg !804
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !59, metadata !95), !dbg !805
  call void @gen(%struct.move_s* %21) #9, !dbg !806
  %27 = load i32* @numb_moves, align 4, !dbg !807, !tbaa !136
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !55, metadata !95), !dbg !808
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !56, metadata !95), !dbg !809
  %28 = icmp sgt i32 %27, 0, !dbg !810
  br i1 %28, label %.lr.ph93, label %.critedge1, !dbg !813

.lr.ph93:                                         ; preds = %25, %.lr.ph93
  %pawnmates.192 = phi i32 [ %pawnmates.1., %.lr.ph93 ], [ 3, %25 ]
  %j.091 = phi i32 [ %31, %.lr.ph93 ], [ 0, %25 ]
  call void @make(%struct.move_s* %21, i32 %j.091) #9, !dbg !814
  %29 = call i32 @check_legal(%struct.move_s* %21, i32 %j.091, i32 %26) #9, !dbg !816
  %30 = icmp eq i32 %29, 0, !dbg !816
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !95), !dbg !759
  %pawnmates.1. = select i1 %30, i32 %pawnmates.192, i32 0, !dbg !818
  call void @unmake(%struct.move_s* %21, i32 %j.091) #9, !dbg !819
  %31 = add nuw nsw i32 %j.091, 1, !dbg !820
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !56, metadata !95), !dbg !809
  %32 = icmp slt i32 %31, %27, !dbg !810
  %33 = icmp ne i32 %pawnmates.1., 0, !dbg !821
  %or.cond24 = and i1 %32, %33, !dbg !813
  br i1 %or.cond24, label %.lr.ph93, label %.critedge1, !dbg !813

.critedge1:                                       ; preds = %.lr.ph93, %25, %22
  %pawnmates.3 = phi i32 [ 0, %22 ], [ 3, %25 ], [ %pawnmates.1., %.lr.ph93 ]
  call void @unmake(%struct.move_s* %18, i32 %i.095) #9, !dbg !822
  %34 = add nuw nsw i32 %i.095, 1, !dbg !823
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !57, metadata !95), !dbg !792
  %35 = icmp slt i32 %34, %19, !dbg !793
  %36 = icmp eq i32 %pawnmates.3, 0, !dbg !824
  %or.cond22 = and i1 %35, %36, !dbg !796
  br i1 %or.cond22, label %22, label %.critedge, !dbg !796

.critedge:                                        ; preds = %.critedge1, %17
  %pawnmates.0.lcssa = phi i32 [ 0, %17 ], [ %pawnmates.3, %.critedge1 ]
  %37 = load i32* @white_to_move, align 4, !dbg !825, !tbaa !136
  %38 = icmp ne i32 %37, 0, !dbg !825
  %39 = select i1 %38, i32 1, i32 2, !dbg !825
  %40 = zext i1 %38 to i32, !dbg !826
  %41 = xor i32 %40, 1, !dbg !826
  call void @DropremoveHolding(i32 %39, i32 %41) #9, !dbg !827
  %.pre = load i32* @white_to_move, align 4, !dbg !828, !tbaa !136
  br label %42, !dbg !830

; <label>:42                                      ; preds = %5, %.critedge
  %43 = phi i32 [ %7, %5 ], [ %.pre, %.critedge ]
  %pawnmates.4 = phi i32 [ 0, %5 ], [ %pawnmates.0.lcssa, %.critedge ]
  %44 = icmp ne i32 %43, 0, !dbg !828
  %45 = select i1 %44, i32 3, i32 4, !dbg !828
  %46 = zext i32 %45 to i64, !dbg !831
  %47 = zext i1 %44 to i32, !dbg !832
  %48 = xor i32 %47, 1, !dbg !832
  %49 = zext i32 %48 to i64, !dbg !831
  %50 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %49, i64 %46, !dbg !831
  %51 = load i32* %50, align 4, !dbg !831, !tbaa !136
  %52 = icmp eq i32 %51, 0, !dbg !831
  br i1 %52, label %53, label %78, !dbg !833

; <label>:53                                      ; preds = %42
  call void @DropaddHolding(i32 %45, i32 %48) #9, !dbg !834
  %54 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0, !dbg !836
  call void @gen(%struct.move_s* %54) #9, !dbg !837
  %55 = load i32* @numb_moves, align 4, !dbg !838, !tbaa !136
  call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !54, metadata !95), !dbg !791
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !95), !dbg !792
  %56 = icmp sgt i32 %55, 0, !dbg !839
  br i1 %56, label %.lr.ph88, label %.critedge2, !dbg !842

.lr.ph88:                                         ; preds = %53
  %57 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0, !dbg !843
  br label %58, !dbg !842

; <label>:58                                      ; preds = %.lr.ph88, %.critedge3
  %i.186 = phi i32 [ 0, %.lr.ph88 ], [ %70, %.critedge3 ]
  call void @make(%struct.move_s* %54, i32 %i.186) #9, !dbg !847
  %59 = call i32 @check_legal(%struct.move_s* %54, i32 %i.186, i32 %6) #9, !dbg !848
  %60 = icmp eq i32 %59, 0, !dbg !848
  br i1 %60, label %.critedge3, label %61, !dbg !849

; <label>:61                                      ; preds = %58
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !62, metadata !95), !dbg !760
  %62 = call i32 @in_check() #9, !dbg !850
  call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !59, metadata !95), !dbg !805
  call void @gen(%struct.move_s* %57) #9, !dbg !851
  %63 = load i32* @numb_moves, align 4, !dbg !852, !tbaa !136
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !55, metadata !95), !dbg !808
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !56, metadata !95), !dbg !809
  %64 = icmp sgt i32 %63, 0, !dbg !853
  br i1 %64, label %.lr.ph84, label %.critedge3, !dbg !856

.lr.ph84:                                         ; preds = %61, %.lr.ph84
  %knightmates.183 = phi i32 [ %knightmates.1., %.lr.ph84 ], [ 3, %61 ]
  %j.182 = phi i32 [ %67, %.lr.ph84 ], [ 0, %61 ]
  call void @make(%struct.move_s* %57, i32 %j.182) #9, !dbg !857
  %65 = call i32 @check_legal(%struct.move_s* %57, i32 %j.182, i32 %62) #9, !dbg !859
  %66 = icmp eq i32 %65, 0, !dbg !859
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !95), !dbg !760
  %knightmates.1. = select i1 %66, i32 %knightmates.183, i32 0, !dbg !861
  call void @unmake(%struct.move_s* %57, i32 %j.182) #9, !dbg !862
  %67 = add nuw nsw i32 %j.182, 1, !dbg !863
  call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !56, metadata !95), !dbg !809
  %68 = icmp slt i32 %67, %63, !dbg !853
  %69 = icmp ne i32 %knightmates.1., 0, !dbg !864
  %or.cond28 = and i1 %68, %69, !dbg !856
  br i1 %or.cond28, label %.lr.ph84, label %.critedge3, !dbg !856

.critedge3:                                       ; preds = %.lr.ph84, %61, %58
  %knightmates.3 = phi i32 [ 0, %58 ], [ 3, %61 ], [ %knightmates.1., %.lr.ph84 ]
  call void @unmake(%struct.move_s* %54, i32 %i.186) #9, !dbg !865
  %70 = add nuw nsw i32 %i.186, 1, !dbg !866
  call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !57, metadata !95), !dbg !792
  %71 = icmp slt i32 %70, %55, !dbg !839
  %72 = icmp eq i32 %knightmates.3, 0, !dbg !867
  %or.cond26 = and i1 %71, %72, !dbg !842
  br i1 %or.cond26, label %58, label %.critedge2, !dbg !842

.critedge2:                                       ; preds = %.critedge3, %53
  %knightmates.0.lcssa = phi i32 [ 0, %53 ], [ %knightmates.3, %.critedge3 ]
  %73 = load i32* @white_to_move, align 4, !dbg !868, !tbaa !136
  %74 = icmp ne i32 %73, 0, !dbg !868
  %75 = select i1 %74, i32 3, i32 4, !dbg !868
  %76 = zext i1 %74 to i32, !dbg !869
  %77 = xor i32 %76, 1, !dbg !869
  call void @DropremoveHolding(i32 %75, i32 %77) #9, !dbg !870
  %.pre99 = load i32* @white_to_move, align 4, !dbg !871, !tbaa !136
  br label %78, !dbg !873

; <label>:78                                      ; preds = %42, %.critedge2
  %79 = phi i32 [ %43, %42 ], [ %.pre99, %.critedge2 ]
  %knightmates.4 = phi i32 [ 0, %42 ], [ %knightmates.0.lcssa, %.critedge2 ]
  %80 = icmp ne i32 %79, 0, !dbg !871
  %81 = select i1 %80, i32 11, i32 12, !dbg !871
  %82 = zext i32 %81 to i64, !dbg !874
  %83 = zext i1 %80 to i32, !dbg !875
  %84 = xor i32 %83, 1, !dbg !875
  %85 = zext i32 %84 to i64, !dbg !874
  %86 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %85, i64 %82, !dbg !874
  %87 = load i32* %86, align 4, !dbg !874, !tbaa !136
  %88 = icmp eq i32 %87, 0, !dbg !874
  br i1 %88, label %89, label %114, !dbg !876

; <label>:89                                      ; preds = %78
  call void @DropaddHolding(i32 %81, i32 %84) #9, !dbg !877
  %90 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0, !dbg !879
  call void @gen(%struct.move_s* %90) #9, !dbg !880
  %91 = load i32* @numb_moves, align 4, !dbg !881, !tbaa !136
  call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !54, metadata !95), !dbg !791
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !95), !dbg !792
  %92 = icmp sgt i32 %91, 0, !dbg !882
  br i1 %92, label %.lr.ph79, label %.critedge4, !dbg !885

.lr.ph79:                                         ; preds = %89
  %93 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0, !dbg !886
  br label %94, !dbg !885

; <label>:94                                      ; preds = %.lr.ph79, %.critedge5
  %i.277 = phi i32 [ 0, %.lr.ph79 ], [ %106, %.critedge5 ]
  call void @make(%struct.move_s* %90, i32 %i.277) #9, !dbg !890
  %95 = call i32 @check_legal(%struct.move_s* %90, i32 %i.277, i32 %6) #9, !dbg !891
  %96 = icmp eq i32 %95, 0, !dbg !891
  br i1 %96, label %.critedge5, label %97, !dbg !892

; <label>:97                                      ; preds = %94
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !63, metadata !95), !dbg !761
  %98 = call i32 @in_check() #9, !dbg !893
  call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !59, metadata !95), !dbg !805
  call void @gen(%struct.move_s* %93) #9, !dbg !894
  %99 = load i32* @numb_moves, align 4, !dbg !895, !tbaa !136
  call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !55, metadata !95), !dbg !808
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !56, metadata !95), !dbg !809
  %100 = icmp sgt i32 %99, 0, !dbg !896
  br i1 %100, label %.lr.ph75, label %.critedge5, !dbg !899

.lr.ph75:                                         ; preds = %97, %.lr.ph75
  %bishopmates.174 = phi i32 [ %bishopmates.1., %.lr.ph75 ], [ 3, %97 ]
  %j.273 = phi i32 [ %103, %.lr.ph75 ], [ 0, %97 ]
  call void @make(%struct.move_s* %93, i32 %j.273) #9, !dbg !900
  %101 = call i32 @check_legal(%struct.move_s* %93, i32 %j.273, i32 %98) #9, !dbg !902
  %102 = icmp eq i32 %101, 0, !dbg !902
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !63, metadata !95), !dbg !761
  %bishopmates.1. = select i1 %102, i32 %bishopmates.174, i32 0, !dbg !904
  call void @unmake(%struct.move_s* %93, i32 %j.273) #9, !dbg !905
  %103 = add nuw nsw i32 %j.273, 1, !dbg !906
  call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !56, metadata !95), !dbg !809
  %104 = icmp slt i32 %103, %99, !dbg !896
  %105 = icmp ne i32 %bishopmates.1., 0, !dbg !907
  %or.cond32 = and i1 %104, %105, !dbg !899
  br i1 %or.cond32, label %.lr.ph75, label %.critedge5, !dbg !899

.critedge5:                                       ; preds = %.lr.ph75, %97, %94
  %bishopmates.3 = phi i32 [ 0, %94 ], [ 3, %97 ], [ %bishopmates.1., %.lr.ph75 ]
  call void @unmake(%struct.move_s* %90, i32 %i.277) #9, !dbg !908
  %106 = add nuw nsw i32 %i.277, 1, !dbg !909
  call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !57, metadata !95), !dbg !792
  %107 = icmp slt i32 %106, %91, !dbg !882
  %108 = icmp eq i32 %bishopmates.3, 0, !dbg !910
  %or.cond30 = and i1 %107, %108, !dbg !885
  br i1 %or.cond30, label %94, label %.critedge4, !dbg !885

.critedge4:                                       ; preds = %.critedge5, %89
  %bishopmates.0.lcssa = phi i32 [ 0, %89 ], [ %bishopmates.3, %.critedge5 ]
  %109 = load i32* @white_to_move, align 4, !dbg !911, !tbaa !136
  %110 = icmp ne i32 %109, 0, !dbg !911
  %111 = select i1 %110, i32 11, i32 12, !dbg !911
  %112 = zext i1 %110 to i32, !dbg !912
  %113 = xor i32 %112, 1, !dbg !912
  call void @DropremoveHolding(i32 %111, i32 %113) #9, !dbg !913
  %.pre100 = load i32* @white_to_move, align 4, !dbg !914, !tbaa !136
  br label %114, !dbg !916

; <label>:114                                     ; preds = %78, %.critedge4
  %115 = phi i32 [ %79, %78 ], [ %.pre100, %.critedge4 ]
  %bishopmates.4 = phi i32 [ 0, %78 ], [ %bishopmates.0.lcssa, %.critedge4 ]
  %116 = icmp ne i32 %115, 0, !dbg !914
  %117 = select i1 %116, i32 7, i32 8, !dbg !914
  %118 = zext i32 %117 to i64, !dbg !917
  %119 = zext i1 %116 to i32, !dbg !918
  %120 = xor i32 %119, 1, !dbg !918
  %121 = zext i32 %120 to i64, !dbg !917
  %122 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %121, i64 %118, !dbg !917
  %123 = load i32* %122, align 4, !dbg !917, !tbaa !136
  %124 = icmp eq i32 %123, 0, !dbg !917
  br i1 %124, label %125, label %150, !dbg !919

; <label>:125                                     ; preds = %114
  call void @DropaddHolding(i32 %117, i32 %120) #9, !dbg !920
  %126 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0, !dbg !922
  call void @gen(%struct.move_s* %126) #9, !dbg !923
  %127 = load i32* @numb_moves, align 4, !dbg !924, !tbaa !136
  call void @llvm.dbg.value(metadata i32 %127, i64 0, metadata !54, metadata !95), !dbg !791
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !95), !dbg !792
  %128 = icmp sgt i32 %127, 0, !dbg !925
  br i1 %128, label %.lr.ph70, label %.critedge6, !dbg !928

.lr.ph70:                                         ; preds = %125
  %129 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0, !dbg !929
  br label %130, !dbg !928

; <label>:130                                     ; preds = %.lr.ph70, %.critedge7
  %i.368 = phi i32 [ 0, %.lr.ph70 ], [ %142, %.critedge7 ]
  call void @make(%struct.move_s* %126, i32 %i.368) #9, !dbg !933
  %131 = call i32 @check_legal(%struct.move_s* %126, i32 %i.368, i32 %6) #9, !dbg !934
  %132 = icmp eq i32 %131, 0, !dbg !934
  br i1 %132, label %.critedge7, label %133, !dbg !935

; <label>:133                                     ; preds = %130
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !64, metadata !95), !dbg !762
  %134 = call i32 @in_check() #9, !dbg !936
  call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !59, metadata !95), !dbg !805
  call void @gen(%struct.move_s* %129) #9, !dbg !937
  %135 = load i32* @numb_moves, align 4, !dbg !938, !tbaa !136
  call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !55, metadata !95), !dbg !808
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !56, metadata !95), !dbg !809
  %136 = icmp sgt i32 %135, 0, !dbg !939
  br i1 %136, label %.lr.ph66, label %.critedge7, !dbg !942

.lr.ph66:                                         ; preds = %133, %.lr.ph66
  %rookmates.165 = phi i32 [ %rookmates.1., %.lr.ph66 ], [ 3, %133 ]
  %j.364 = phi i32 [ %139, %.lr.ph66 ], [ 0, %133 ]
  call void @make(%struct.move_s* %129, i32 %j.364) #9, !dbg !943
  %137 = call i32 @check_legal(%struct.move_s* %129, i32 %j.364, i32 %134) #9, !dbg !945
  %138 = icmp eq i32 %137, 0, !dbg !945
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !64, metadata !95), !dbg !762
  %rookmates.1. = select i1 %138, i32 %rookmates.165, i32 0, !dbg !947
  call void @unmake(%struct.move_s* %129, i32 %j.364) #9, !dbg !948
  %139 = add nuw nsw i32 %j.364, 1, !dbg !949
  call void @llvm.dbg.value(metadata i32 %139, i64 0, metadata !56, metadata !95), !dbg !809
  %140 = icmp slt i32 %139, %135, !dbg !939
  %141 = icmp ne i32 %rookmates.1., 0, !dbg !950
  %or.cond36 = and i1 %140, %141, !dbg !942
  br i1 %or.cond36, label %.lr.ph66, label %.critedge7, !dbg !942

.critedge7:                                       ; preds = %.lr.ph66, %133, %130
  %rookmates.3 = phi i32 [ 0, %130 ], [ 3, %133 ], [ %rookmates.1., %.lr.ph66 ]
  call void @unmake(%struct.move_s* %126, i32 %i.368) #9, !dbg !951
  %142 = add nuw nsw i32 %i.368, 1, !dbg !952
  call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !57, metadata !95), !dbg !792
  %143 = icmp slt i32 %142, %127, !dbg !925
  %144 = icmp eq i32 %rookmates.3, 0, !dbg !953
  %or.cond34 = and i1 %143, %144, !dbg !928
  br i1 %or.cond34, label %130, label %.critedge6, !dbg !928

.critedge6:                                       ; preds = %.critedge7, %125
  %rookmates.0.lcssa = phi i32 [ 0, %125 ], [ %rookmates.3, %.critedge7 ]
  %145 = load i32* @white_to_move, align 4, !dbg !954, !tbaa !136
  %146 = icmp ne i32 %145, 0, !dbg !954
  %147 = select i1 %146, i32 7, i32 8, !dbg !954
  %148 = zext i1 %146 to i32, !dbg !955
  %149 = xor i32 %148, 1, !dbg !955
  call void @DropremoveHolding(i32 %147, i32 %149) #9, !dbg !956
  %.pre101 = load i32* @white_to_move, align 4, !dbg !957, !tbaa !136
  br label %150, !dbg !959

; <label>:150                                     ; preds = %114, %.critedge6
  %151 = phi i32 [ %115, %114 ], [ %.pre101, %.critedge6 ]
  %rookmates.4 = phi i32 [ 0, %114 ], [ %rookmates.0.lcssa, %.critedge6 ]
  %152 = icmp ne i32 %151, 0, !dbg !957
  %153 = select i1 %152, i32 9, i32 10, !dbg !957
  %154 = zext i32 %153 to i64, !dbg !960
  %155 = zext i1 %152 to i32, !dbg !961
  %156 = xor i32 %155, 1, !dbg !961
  %157 = zext i32 %156 to i64, !dbg !960
  %158 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %157, i64 %154, !dbg !960
  %159 = load i32* %158, align 4, !dbg !960, !tbaa !136
  %160 = icmp eq i32 %159, 0, !dbg !960
  br i1 %160, label %161, label %186, !dbg !962

; <label>:161                                     ; preds = %150
  call void @DropaddHolding(i32 %153, i32 %156) #9, !dbg !963
  %162 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0, !dbg !965
  call void @gen(%struct.move_s* %162) #9, !dbg !966
  %163 = load i32* @numb_moves, align 4, !dbg !967, !tbaa !136
  call void @llvm.dbg.value(metadata i32 %163, i64 0, metadata !54, metadata !95), !dbg !791
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !95), !dbg !792
  %164 = icmp sgt i32 %163, 0, !dbg !968
  br i1 %164, label %.lr.ph61, label %.critedge8, !dbg !971

.lr.ph61:                                         ; preds = %161
  %165 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0, !dbg !972
  br label %166, !dbg !971

; <label>:166                                     ; preds = %.lr.ph61, %.critedge9
  %i.459 = phi i32 [ 0, %.lr.ph61 ], [ %178, %.critedge9 ]
  call void @make(%struct.move_s* %162, i32 %i.459) #9, !dbg !976
  %167 = call i32 @check_legal(%struct.move_s* %162, i32 %i.459, i32 %6) #9, !dbg !977
  %168 = icmp eq i32 %167, 0, !dbg !977
  br i1 %168, label %.critedge9, label %169, !dbg !978

; <label>:169                                     ; preds = %166
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !65, metadata !95), !dbg !763
  %170 = call i32 @in_check() #9, !dbg !979
  call void @llvm.dbg.value(metadata i32 %170, i64 0, metadata !59, metadata !95), !dbg !805
  call void @gen(%struct.move_s* %165) #9, !dbg !980
  %171 = load i32* @numb_moves, align 4, !dbg !981, !tbaa !136
  call void @llvm.dbg.value(metadata i32 %171, i64 0, metadata !55, metadata !95), !dbg !808
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !56, metadata !95), !dbg !809
  %172 = icmp sgt i32 %171, 0, !dbg !982
  br i1 %172, label %.lr.ph, label %.critedge9, !dbg !985

.lr.ph:                                           ; preds = %169, %.lr.ph
  %queenmates.158 = phi i32 [ %queenmates.1., %.lr.ph ], [ 3, %169 ]
  %j.457 = phi i32 [ %175, %.lr.ph ], [ 0, %169 ]
  call void @make(%struct.move_s* %165, i32 %j.457) #9, !dbg !986
  %173 = call i32 @check_legal(%struct.move_s* %165, i32 %j.457, i32 %170) #9, !dbg !988
  %174 = icmp eq i32 %173, 0, !dbg !988
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !65, metadata !95), !dbg !763
  %queenmates.1. = select i1 %174, i32 %queenmates.158, i32 0, !dbg !990
  call void @unmake(%struct.move_s* %165, i32 %j.457) #9, !dbg !991
  %175 = add nuw nsw i32 %j.457, 1, !dbg !992
  call void @llvm.dbg.value(metadata i32 %175, i64 0, metadata !56, metadata !95), !dbg !809
  %176 = icmp slt i32 %175, %171, !dbg !982
  %177 = icmp ne i32 %queenmates.1., 0, !dbg !993
  %or.cond40 = and i1 %176, %177, !dbg !985
  br i1 %or.cond40, label %.lr.ph, label %.critedge9, !dbg !985

.critedge9:                                       ; preds = %.lr.ph, %169, %166
  %queenmates.3 = phi i32 [ 0, %166 ], [ 3, %169 ], [ %queenmates.1., %.lr.ph ]
  call void @unmake(%struct.move_s* %162, i32 %i.459) #9, !dbg !994
  %178 = add nuw nsw i32 %i.459, 1, !dbg !995
  call void @llvm.dbg.value(metadata i32 %178, i64 0, metadata !57, metadata !95), !dbg !792
  %179 = icmp slt i32 %178, %163, !dbg !968
  %180 = icmp eq i32 %queenmates.3, 0, !dbg !996
  %or.cond38 = and i1 %179, %180, !dbg !971
  br i1 %or.cond38, label %166, label %.critedge8, !dbg !971

.critedge8:                                       ; preds = %.critedge9, %161
  %queenmates.0.lcssa = phi i32 [ 0, %161 ], [ %queenmates.3, %.critedge9 ]
  %181 = load i32* @white_to_move, align 4, !dbg !997, !tbaa !136
  %182 = icmp ne i32 %181, 0, !dbg !997
  %183 = select i1 %182, i32 9, i32 10, !dbg !997
  %184 = zext i1 %182 to i32, !dbg !998
  %185 = xor i32 %184, 1, !dbg !998
  call void @DropremoveHolding(i32 %183, i32 %185) #9, !dbg !999
  br label %186, !dbg !1000

; <label>:186                                     ; preds = %150, %.critedge8
  %queenmates.4 = phi i32 [ 0, %150 ], [ %queenmates.0.lcssa, %.critedge8 ]
  %187 = load i32* @CheckBadFlow.pawnmated, align 4, !dbg !1001, !tbaa !136
  %188 = icmp eq i32 %pawnmates.4, %187, !dbg !1003
  br i1 %188, label %195, label %189, !dbg !1004

; <label>:189                                     ; preds = %186
  %190 = icmp eq i32 %pawnmates.4, 3, !dbg !1005
  br i1 %190, label %195, label %191, !dbg !1008

; <label>:191                                     ; preds = %189
  %192 = or i32 %187, %pawnmates.4, !dbg !1009
  %193 = icmp eq i32 %192, 0, !dbg !1009
  br i1 %193, label %194, label %195, !dbg !1009

; <label>:194                                     ; preds = %191
  %puts55 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str116, i64 0, i64 0)), !dbg !1011
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !60, metadata !95), !dbg !758
  br label %195, !dbg !1013

; <label>:195                                     ; preds = %189, %186, %194, %191
  %othermove.0 = phi i32 [ 1, %194 ], [ 0, %191 ], [ 0, %186 ], [ 0, %189 ]
  %pawnwarn.0 = phi i32 [ 0, %194 ], [ 0, %191 ], [ 0, %186 ], [ 1, %189 ]
  %196 = load i32* @CheckBadFlow.knightmated, align 4, !dbg !1014, !tbaa !136
  %197 = icmp eq i32 %knightmates.4, %196, !dbg !1016
  br i1 %197, label %204, label %198, !dbg !1017

; <label>:198                                     ; preds = %195
  %199 = icmp eq i32 %knightmates.4, 3, !dbg !1018
  br i1 %199, label %204, label %200, !dbg !1021

; <label>:200                                     ; preds = %198
  %201 = or i32 %196, %knightmates.4, !dbg !1022
  %202 = icmp eq i32 %201, 0, !dbg !1022
  br i1 %202, label %203, label %204, !dbg !1022

; <label>:203                                     ; preds = %200
  %puts54 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str115, i64 0, i64 0)), !dbg !1024
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !60, metadata !95), !dbg !758
  br label %204, !dbg !1026

; <label>:204                                     ; preds = %198, %195, %203, %200
  %othermove.1 = phi i32 [ 1, %203 ], [ %othermove.0, %200 ], [ %othermove.0, %195 ], [ %othermove.0, %198 ]
  %knightwarn.0 = phi i32 [ 0, %203 ], [ 0, %200 ], [ 0, %195 ], [ 1, %198 ]
  %205 = load i32* @CheckBadFlow.bishopmated, align 4, !dbg !1027, !tbaa !136
  %206 = icmp eq i32 %bishopmates.4, %205, !dbg !1029
  br i1 %206, label %213, label %207, !dbg !1030

; <label>:207                                     ; preds = %204
  %208 = icmp eq i32 %bishopmates.4, 3, !dbg !1031
  br i1 %208, label %213, label %209, !dbg !1034

; <label>:209                                     ; preds = %207
  %210 = or i32 %205, %bishopmates.4, !dbg !1035
  %211 = icmp eq i32 %210, 0, !dbg !1035
  br i1 %211, label %212, label %213, !dbg !1035

; <label>:212                                     ; preds = %209
  %puts53 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str114, i64 0, i64 0)), !dbg !1037
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !60, metadata !95), !dbg !758
  br label %213, !dbg !1039

; <label>:213                                     ; preds = %207, %204, %212, %209
  %othermove.2 = phi i32 [ 1, %212 ], [ %othermove.1, %209 ], [ %othermove.1, %204 ], [ %othermove.1, %207 ]
  %bishopwarn.0 = phi i32 [ 0, %212 ], [ 0, %209 ], [ 0, %204 ], [ 1, %207 ]
  %214 = load i32* @CheckBadFlow.rookmated, align 4, !dbg !1040, !tbaa !136
  %215 = icmp eq i32 %rookmates.4, %214, !dbg !1042
  br i1 %215, label %222, label %216, !dbg !1043

; <label>:216                                     ; preds = %213
  %217 = icmp eq i32 %rookmates.4, 3, !dbg !1044
  br i1 %217, label %222, label %218, !dbg !1047

; <label>:218                                     ; preds = %216
  %219 = or i32 %214, %rookmates.4, !dbg !1048
  %220 = icmp eq i32 %219, 0, !dbg !1048
  br i1 %220, label %221, label %222, !dbg !1048

; <label>:221                                     ; preds = %218
  %puts52 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str113, i64 0, i64 0)), !dbg !1050
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !60, metadata !95), !dbg !758
  br label %222, !dbg !1052

; <label>:222                                     ; preds = %216, %213, %221, %218
  %othermove.3 = phi i32 [ 1, %221 ], [ %othermove.2, %218 ], [ %othermove.2, %213 ], [ %othermove.2, %216 ]
  %rookwarn.0 = phi i32 [ 0, %221 ], [ 0, %218 ], [ 0, %213 ], [ 1, %216 ]
  %223 = load i32* @CheckBadFlow.queenmated, align 4, !dbg !1053, !tbaa !136
  %224 = icmp eq i32 %queenmates.4, %223, !dbg !1055
  br i1 %224, label %231, label %225, !dbg !1056

; <label>:225                                     ; preds = %222
  %226 = icmp eq i32 %queenmates.4, 3, !dbg !1057
  br i1 %226, label %231, label %227, !dbg !1060

; <label>:227                                     ; preds = %225
  %228 = or i32 %223, %queenmates.4, !dbg !1061
  %229 = icmp eq i32 %228, 0, !dbg !1061
  br i1 %229, label %230, label %231, !dbg !1061

; <label>:230                                     ; preds = %227
  %puts51 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str112, i64 0, i64 0)), !dbg !1063
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !60, metadata !95), !dbg !758
  br label %231, !dbg !1065

; <label>:231                                     ; preds = %225, %222, %230, %227
  %othermove.4 = phi i32 [ 1, %230 ], [ %othermove.3, %227 ], [ %othermove.3, %222 ], [ %othermove.3, %225 ]
  %queenwarn.0 = phi i32 [ 0, %230 ], [ 0, %227 ], [ 0, %222 ], [ 1, %225 ]
  %232 = icmp eq i32 %pawnwarn.0, 0, !dbg !1066
  br i1 %232, label %234, label %233, !dbg !1068

; <label>:233                                     ; preds = %231
  %puts50 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str111, i64 0, i64 0)), !dbg !1069
  br label %234, !dbg !1069

; <label>:234                                     ; preds = %231, %233
  %235 = icmp eq i32 %knightwarn.0, 0, !dbg !1070
  br i1 %235, label %237, label %236, !dbg !1072

; <label>:236                                     ; preds = %234
  %puts49 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str110, i64 0, i64 0)), !dbg !1073
  br label %237, !dbg !1073

; <label>:237                                     ; preds = %234, %236
  %238 = icmp eq i32 %bishopwarn.0, 0, !dbg !1074
  br i1 %238, label %240, label %239, !dbg !1076

; <label>:239                                     ; preds = %237
  %puts48 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str109, i64 0, i64 0)), !dbg !1077
  br label %240, !dbg !1077

; <label>:240                                     ; preds = %237, %239
  %241 = icmp eq i32 %rookwarn.0, 0, !dbg !1078
  br i1 %241, label %243, label %242, !dbg !1080

; <label>:242                                     ; preds = %240
  %puts47 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str108, i64 0, i64 0)), !dbg !1081
  br label %243, !dbg !1081

; <label>:243                                     ; preds = %240, %242
  %244 = icmp eq i32 %queenwarn.0, 0, !dbg !1082
  br i1 %244, label %246, label %245, !dbg !1084

; <label>:245                                     ; preds = %243
  %puts46 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str107, i64 0, i64 0)), !dbg !1085
  br label %246, !dbg !1085

; <label>:246                                     ; preds = %243, %245
  %247 = load i32* @piecedead, align 4, !dbg !1086, !tbaa !99
  %248 = icmp ne i32 %247, 0, !dbg !1086
  %249 = icmp ne i32 %othermove.4, 0, !dbg !1088
  %or.cond20 = and i1 %249, %248, !dbg !1089
  br i1 %or.cond20, label %250, label %251, !dbg !1089

; <label>:250                                     ; preds = %246
  store i32 0, i32* @piecedead, align 4, !dbg !1090, !tbaa !99
  %puts = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str105, i64 0, i64 0)), !dbg !1092
  %puts45 = call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str106, i64 0, i64 0)), !dbg !1093
  store i32 0, i32* @go_fast, align 4, !dbg !1094, !tbaa !99
  br label %251, !dbg !1095

; <label>:251                                     ; preds = %250, %246
  %252 = icmp eq i32 %pawnmates.4, 0, !dbg !1096
  br i1 %252, label %253, label %256, !dbg !1096

; <label>:253                                     ; preds = %251
  %254 = load i32* @CheckBadFlow.pawnmated, align 4, !dbg !1097, !tbaa !136
  %255 = add nsw i32 %254, -1, !dbg !1097
  br label %256, !dbg !1096

; <label>:256                                     ; preds = %251, %253
  %storemerge = phi i32 [ %255, %253 ], [ %pawnmates.4, %251 ]
  store i32 %storemerge, i32* @CheckBadFlow.pawnmated, align 4, !dbg !1098, !tbaa !136
  %257 = icmp eq i32 %bishopmates.4, 0, !dbg !1099
  br i1 %257, label %258, label %261, !dbg !1099

; <label>:258                                     ; preds = %256
  %259 = load i32* @CheckBadFlow.bishopmated, align 4, !dbg !1100, !tbaa !136
  %260 = add nsw i32 %259, -1, !dbg !1100
  br label %261, !dbg !1099

; <label>:261                                     ; preds = %256, %258
  %storemerge41 = phi i32 [ %260, %258 ], [ %bishopmates.4, %256 ]
  store i32 %storemerge41, i32* @CheckBadFlow.bishopmated, align 4, !dbg !1101, !tbaa !136
  %262 = icmp eq i32 %rookmates.4, 0, !dbg !1102
  br i1 %262, label %263, label %266, !dbg !1102

; <label>:263                                     ; preds = %261
  %264 = load i32* @CheckBadFlow.rookmated, align 4, !dbg !1103, !tbaa !136
  %265 = add nsw i32 %264, -1, !dbg !1103
  br label %266, !dbg !1102

; <label>:266                                     ; preds = %261, %263
  %storemerge42 = phi i32 [ %265, %263 ], [ %rookmates.4, %261 ]
  store i32 %storemerge42, i32* @CheckBadFlow.rookmated, align 4, !dbg !1104, !tbaa !136
  %267 = icmp eq i32 %queenmates.4, 0, !dbg !1105
  br i1 %267, label %268, label %271, !dbg !1105

; <label>:268                                     ; preds = %266
  %269 = load i32* @CheckBadFlow.queenmated, align 4, !dbg !1106, !tbaa !136
  %270 = add nsw i32 %269, -1, !dbg !1106
  br label %271, !dbg !1105

; <label>:271                                     ; preds = %266, %268
  %storemerge43 = phi i32 [ %270, %268 ], [ %queenmates.4, %266 ]
  store i32 %storemerge43, i32* @CheckBadFlow.queenmated, align 4, !dbg !1107, !tbaa !136
  %272 = icmp eq i32 %knightmates.4, 0, !dbg !1108
  br i1 %272, label %273, label %276, !dbg !1108

; <label>:273                                     ; preds = %271
  %274 = load i32* @CheckBadFlow.knightmated, align 4, !dbg !1109, !tbaa !136
  %275 = add nsw i32 %274, -1, !dbg !1109
  br label %276, !dbg !1108

; <label>:276                                     ; preds = %271, %273
  %storemerge44 = phi i32 [ %275, %273 ], [ %knightmates.4, %271 ]
  store i32 %storemerge44, i32* @CheckBadFlow.knightmated, align 4, !dbg !1110, !tbaa !136
  br label %277, !dbg !1111

; <label>:277                                     ; preds = %276, %4
  call void @llvm.lifetime.end(i64 12288, i8* %2) #1, !dbg !1112
  call void @llvm.lifetime.end(i64 12288, i8* %1) #1, !dbg !1112
  ret void, !dbg !1112
}

; Function Attrs: optsize
declare i32 @in_check() #6

; Function Attrs: optsize
declare void @DropaddHolding(i32, i32) #6

; Function Attrs: optsize
declare void @gen(%struct.move_s*) #6

; Function Attrs: optsize
declare void @make(%struct.move_s*, i32) #6

; Function Attrs: optsize
declare i32 @check_legal(%struct.move_s*, i32, i32) #6

; Function Attrs: optsize
declare void @unmake(%struct.move_s*, i32) #6

; Function Attrs: optsize
declare void @DropremoveHolding(i32, i32) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #7

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #8

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!85, !86, !87}
!llvm.ident = !{!88}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !12, globals: !71, imports: !16)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/partner.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/sjeng.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{!9, !10}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !{!13, !17, !18, !19, !26, !34}
!13 = !DISubprogram(name: "ResetHandValue", scope: !1, file: !1, line: 22, type: !14, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @ResetHandValue, variables: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{null}
!16 = !{}
!17 = !DISubprogram(name: "BegForPartner", scope: !1, file: !1, line: 27, type: !14, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @BegForPartner, variables: !16)
!18 = !DISubprogram(name: "GreetPartner", scope: !1, file: !1, line: 36, type: !14, isLocal: false, isDefinition: true, scopeLine: 37, isOptimized: true, function: void ()* @GreetPartner, variables: !16)
!19 = !DISubprogram(name: "HandlePartner", scope: !1, file: !1, line: 44, type: !20, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @HandlePartner, variables: !24)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!24 = !{!25}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "input", arg: 1, scope: !19, file: !1, line: 44, type: !22)
!26 = !DISubprogram(name: "HandlePtell", scope: !1, file: !1, line: 67, type: !20, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @HandlePtell, variables: !27)
!27 = !{!28, !29, !30}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "input", arg: 1, scope: !26, file: !1, line: 67, type: !22)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "change", scope: !26, file: !1, line: 69, type: !11)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "howmuch", scope: !26, file: !1, line: 70, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 640, align: 8, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 80)
!34 = !DISubprogram(name: "CheckBadFlow", scope: !1, file: !1, line: 479, type: !35, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @CheckBadFlow, variables: !38)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "xbool", file: !4, line: 14, baseType: !3)
!38 = !{!39, !40, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "reset", arg: 1, scope: !34, file: !1, line: 479, type: !37)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hismoves", scope: !34, file: !1, line: 481, type: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 98304, align: 32, elements: !51)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "move_s", file: !4, line: 102, baseType: !43)
!43 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 95, size: 192, align: 32, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !43, file: !4, line: 96, baseType: !11, size: 32, align: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !43, file: !4, line: 97, baseType: !11, size: 32, align: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "captured", scope: !43, file: !4, line: 98, baseType: !11, size: 32, align: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "promoted", scope: !43, file: !4, line: 99, baseType: !11, size: 32, align: 32, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "castled", scope: !43, file: !4, line: 100, baseType: !11, size: 32, align: 32, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !43, file: !4, line: 101, baseType: !11, size: 32, align: 32, offset: 160)
!51 = !{!52}
!52 = !DISubrange(count: 512)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ourmoves", scope: !34, file: !1, line: 482, type: !41)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "his_num_moves", scope: !34, file: !1, line: 483, type: !11)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "our_num_moves", scope: !34, file: !1, line: 483, type: !11)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !34, file: !1, line: 483, type: !11)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !34, file: !1, line: 483, type: !11)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ic", scope: !34, file: !1, line: 483, type: !11)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "icc", scope: !34, file: !1, line: 483, type: !11)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "othermove", scope: !34, file: !1, line: 485, type: !37)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pawnmates", scope: !34, file: !1, line: 488, type: !11)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "knightmates", scope: !34, file: !1, line: 489, type: !11)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bishopmates", scope: !34, file: !1, line: 490, type: !11)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rookmates", scope: !34, file: !1, line: 491, type: !11)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "queenmates", scope: !34, file: !1, line: 492, type: !11)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pawnwarn", scope: !34, file: !1, line: 502, type: !37)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "knightwarn", scope: !34, file: !1, line: 503, type: !37)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bishopwarn", scope: !34, file: !1, line: 504, type: !37)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rookwarn", scope: !34, file: !1, line: 505, type: !37)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "queenwarn", scope: !34, file: !1, line: 506, type: !37)
!71 = !{!72, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!72 = !DIGlobalVariable(name: "hand_value", scope: !0, file: !1, line: 14, type: !73, isLocal: false, isDefinition: true, variable: [13 x i32]* @hand_value)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 416, align: 32, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 13)
!76 = !DIGlobalVariable(name: "std_hand_value", scope: !0, file: !1, line: 15, type: !73, isLocal: false, isDefinition: true, variable: [13 x i32]* @std_hand_value)
!77 = !DIGlobalVariable(name: "pawnmated", scope: !34, file: !1, line: 495, type: !11, isLocal: true, isDefinition: true, variable: i32* @CheckBadFlow.pawnmated)
!78 = !DIGlobalVariable(name: "knightmated", scope: !34, file: !1, line: 496, type: !11, isLocal: true, isDefinition: true, variable: i32* @CheckBadFlow.knightmated)
!79 = !DIGlobalVariable(name: "bishopmated", scope: !34, file: !1, line: 497, type: !11, isLocal: true, isDefinition: true, variable: i32* @CheckBadFlow.bishopmated)
!80 = !DIGlobalVariable(name: "rookmated", scope: !34, file: !1, line: 498, type: !11, isLocal: true, isDefinition: true, variable: i32* @CheckBadFlow.rookmated)
!81 = !DIGlobalVariable(name: "queenmated", scope: !34, file: !1, line: 499, type: !11, isLocal: true, isDefinition: true, variable: i32* @CheckBadFlow.queenmated)
!82 = !DIGlobalVariable(name: "piecedead", scope: !0, file: !1, line: 17, type: !37, isLocal: false, isDefinition: true, variable: i32* @piecedead)
!83 = !DIGlobalVariable(name: "partnerdead", scope: !0, file: !1, line: 18, type: !37, isLocal: false, isDefinition: true, variable: i32* @partnerdead)
!84 = !DIGlobalVariable(name: "must_go", scope: !0, file: !1, line: 20, type: !11, isLocal: false, isDefinition: true, variable: i32* @must_go)
!85 = !{i32 2, !"Dwarf Version", i32 2}
!86 = !{i32 2, !"Debug Info Version", i32 700000003}
!87 = !{i32 1, !"PIC Level", i32 2}
!88 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!89 = !DILocation(line: 24, column: 3, scope: !13)
!90 = !DILocation(line: 25, column: 1, scope: !13)
!91 = !DILocation(line: 33, column: 3, scope: !17)
!92 = !DILocation(line: 38, column: 3, scope: !18)
!93 = !DILocation(line: 39, column: 3, scope: !18)
!94 = !DILocation(line: 41, column: 3, scope: !18)
!95 = !DIExpression()
!96 = !DILocation(line: 44, column: 26, scope: !19)
!97 = !DILocation(line: 46, column: 7, scope: !98)
!98 = distinct !DILexicalBlock(scope: !19, file: !1, line: 46, column: 7)
!99 = !{!100, !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !DILocation(line: 46, column: 16, scope: !98)
!103 = !DILocation(line: 46, column: 7, scope: !19)
!104 = !DILocation(line: 48, column: 12, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 48, column: 11)
!106 = distinct !DILexicalBlock(scope: !98, file: !1, line: 47, column: 5)
!107 = !DILocation(line: 48, column: 11, scope: !106)
!108 = !DILocation(line: 51, column: 16, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 49, column: 2)
!110 = !DILocation(line: 51, column: 4, scope: !109)
!111 = !DILocation(line: 52, column: 17, scope: !109)
!112 = !DILocation(line: 38, column: 3, scope: !18, inlinedAt: !113)
!113 = distinct !DILocation(line: 53, column: 4, scope: !109)
!114 = !DILocation(line: 39, column: 3, scope: !18, inlinedAt: !113)
!115 = !DILocation(line: 54, column: 4, scope: !109)
!116 = !DILocation(line: 55, column: 4, scope: !109)
!117 = !DILocation(line: 56, column: 2, scope: !109)
!118 = !DILocation(line: 60, column: 7, scope: !119)
!119 = distinct !DILexicalBlock(scope: !98, file: !1, line: 59, column: 5)
!120 = !DILocation(line: 61, column: 20, scope: !119)
!121 = !DILocation(line: 63, column: 7, scope: !119)
!122 = !DILocation(line: 65, column: 1, scope: !19)
!123 = !DILocation(line: 67, column: 24, scope: !26)
!124 = !DILocation(line: 69, column: 7, scope: !26)
!125 = !DILocation(line: 70, column: 3, scope: !26)
!126 = !DILocation(line: 70, column: 8, scope: !26)
!127 = !DILocation(line: 72, column: 21, scope: !128)
!128 = distinct !DILexicalBlock(scope: !26, file: !1, line: 72, column: 7)
!129 = !DILocation(line: 72, column: 8, scope: !128)
!130 = !DILocation(line: 72, column: 7, scope: !26)
!131 = !DILocation(line: 74, column: 2, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 73, column: 7)
!133 = !DILocation(line: 75, column: 2, scope: !132)
!134 = !DILocation(line: 78, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !26, file: !1, line: 78, column: 7)
!136 = !{!137, !137, i64 0}
!137 = !{!"int", !100, i64 0}
!138 = !DILocation(line: 78, column: 15, scope: !135)
!139 = !DILocation(line: 78, column: 27, scope: !135)
!140 = !DILocation(line: 78, column: 31, scope: !135)
!141 = !DILocation(line: 78, column: 7, scope: !26)
!142 = !DILocation(line: 80, column: 5, scope: !143)
!143 = distinct !DILexicalBlock(scope: !135, file: !1, line: 79, column: 3)
!144 = !DILocation(line: 81, column: 5, scope: !143)
!145 = !DILocation(line: 84, column: 8, scope: !146)
!146 = distinct !DILexicalBlock(scope: !26, file: !1, line: 84, column: 7)
!147 = !DILocation(line: 84, column: 7, scope: !26)
!148 = !DILocation(line: 86, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !1, line: 85, column: 5)
!150 = !DILocation(line: 87, column: 16, scope: !149)
!151 = !DILocation(line: 88, column: 15, scope: !149)
!152 = !DILocation(line: 89, column: 5, scope: !149)
!153 = !DILocation(line: 90, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !146, file: !1, line: 90, column: 12)
!155 = !DILocation(line: 90, column: 39, scope: !154)
!156 = !DILocation(line: 90, column: 44, scope: !154)
!157 = !DILocation(line: 90, column: 12, scope: !146)
!158 = !DILocation(line: 92, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 91, column: 5)
!160 = !DILocation(line: 93, column: 16, scope: !159)
!161 = !DILocation(line: 94, column: 15, scope: !159)
!162 = !DILocation(line: 95, column: 5, scope: !159)
!163 = !DILocation(line: 96, column: 13, scope: !164)
!164 = distinct !DILexicalBlock(scope: !154, file: !1, line: 96, column: 12)
!165 = !DILocation(line: 96, column: 41, scope: !164)
!166 = !DILocation(line: 96, column: 46, scope: !164)
!167 = !DILocation(line: 96, column: 12, scope: !154)
!168 = !DILocation(line: 98, column: 7, scope: !169)
!169 = distinct !DILexicalBlock(scope: !164, file: !1, line: 97, column: 5)
!170 = !DILocation(line: 99, column: 15, scope: !169)
!171 = !DILocation(line: 100, column: 16, scope: !169)
!172 = !DILocation(line: 101, column: 5, scope: !169)
!173 = !DILocation(line: 102, column: 13, scope: !174)
!174 = distinct !DILexicalBlock(scope: !164, file: !1, line: 102, column: 12)
!175 = !DILocation(line: 102, column: 12, scope: !164)
!176 = !DILocation(line: 104, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !1, line: 103, column: 5)
!178 = !DILocation(line: 105, column: 15, scope: !177)
!179 = !DILocation(line: 106, column: 16, scope: !177)
!180 = !DILocation(line: 107, column: 5, scope: !177)
!181 = !DILocation(line: 108, column: 13, scope: !182)
!182 = distinct !DILexicalBlock(scope: !174, file: !1, line: 108, column: 12)
!183 = !DILocation(line: 108, column: 12, scope: !174)
!184 = !DILocation(line: 110, column: 7, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 109, column: 5)
!186 = !DILocation(line: 111, column: 7, scope: !185)
!187 = !DILocation(line: 112, column: 5, scope: !185)
!188 = !DILocation(line: 113, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !182, file: !1, line: 113, column: 12)
!190 = !DILocation(line: 113, column: 12, scope: !182)
!191 = !DILocation(line: 115, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !1, line: 114, column: 5)
!193 = !DILocation(line: 116, column: 7, scope: !192)
!194 = !DILocation(line: 117, column: 5, scope: !192)
!195 = !DILocation(line: 118, column: 13, scope: !196)
!196 = distinct !DILexicalBlock(scope: !189, file: !1, line: 118, column: 12)
!197 = !DILocation(line: 118, column: 12, scope: !189)
!198 = !DILocation(line: 121, column: 12, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 121, column: 11)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 119, column: 5)
!201 = !DILocation(line: 121, column: 37, scope: !199)
!202 = !DILocation(line: 122, column: 4, scope: !199)
!203 = !DILocation(line: 123, column: 9, scope: !199)
!204 = !DILocation(line: 123, column: 30, scope: !199)
!205 = !DILocation(line: 123, column: 39, scope: !199)
!206 = !DILocation(line: 124, column: 9, scope: !199)
!207 = !DILocation(line: 124, column: 30, scope: !199)
!208 = !DILocation(line: 124, column: 39, scope: !199)
!209 = !DILocation(line: 125, column: 9, scope: !199)
!210 = !DILocation(line: 125, column: 30, scope: !199)
!211 = !DILocation(line: 125, column: 39, scope: !199)
!212 = !DILocation(line: 126, column: 9, scope: !199)
!213 = !DILocation(line: 126, column: 30, scope: !199)
!214 = !DILocation(line: 126, column: 39, scope: !199)
!215 = !DILocation(line: 127, column: 9, scope: !199)
!216 = !DILocation(line: 127, column: 30, scope: !199)
!217 = !DILocation(line: 127, column: 39, scope: !199)
!218 = !DILocation(line: 128, column: 9, scope: !199)
!219 = !DILocation(line: 128, column: 30, scope: !199)
!220 = !DILocation(line: 128, column: 39, scope: !199)
!221 = !DILocation(line: 129, column: 9, scope: !199)
!222 = !DILocation(line: 129, column: 30, scope: !199)
!223 = !DILocation(line: 121, column: 11, scope: !200)
!224 = !DILocation(line: 131, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 131, column: 8)
!226 = distinct !DILexicalBlock(scope: !199, file: !1, line: 130, column: 2)
!227 = !DILocation(line: 131, column: 19, scope: !225)
!228 = !DILocation(line: 131, column: 8, scope: !226)
!229 = !DILocation(line: 133, column: 26, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !1, line: 132, column: 6)
!231 = !DILocation(line: 134, column: 28, scope: !230)
!232 = !DILocation(line: 135, column: 28, scope: !230)
!233 = !DILocation(line: 136, column: 26, scope: !230)
!234 = !DILocation(line: 137, column: 27, scope: !230)
!235 = !DILocation(line: 138, column: 6, scope: !230)
!236 = !DILocation(line: 141, column: 26, scope: !237)
!237 = distinct !DILexicalBlock(scope: !225, file: !1, line: 140, column: 6)
!238 = !DILocation(line: 142, column: 28, scope: !237)
!239 = !DILocation(line: 143, column: 28, scope: !237)
!240 = !DILocation(line: 144, column: 26, scope: !237)
!241 = !DILocation(line: 145, column: 27, scope: !237)
!242 = !DILocation(line: 147, column: 4, scope: !226)
!243 = !DILocation(line: 148, column: 2, scope: !226)
!244 = !DILocation(line: 150, column: 16, scope: !245)
!245 = distinct !DILexicalBlock(scope: !199, file: !1, line: 150, column: 16)
!246 = !DILocation(line: 150, column: 39, scope: !245)
!247 = !DILocation(line: 150, column: 16, scope: !199)
!248 = !DILocation(line: 153, column: 4, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !1, line: 151, column: 2)
!250 = !DILocation(line: 154, column: 2, scope: !249)
!251 = !DILocation(line: 155, column: 16, scope: !252)
!252 = distinct !DILexicalBlock(scope: !245, file: !1, line: 155, column: 16)
!253 = !DILocation(line: 155, column: 38, scope: !252)
!254 = !DILocation(line: 155, column: 16, scope: !245)
!255 = !DILocation(line: 158, column: 4, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !1, line: 156, column: 2)
!257 = !DILocation(line: 159, column: 2, scope: !256)
!258 = !DILocation(line: 160, column: 16, scope: !259)
!259 = distinct !DILexicalBlock(scope: !252, file: !1, line: 160, column: 16)
!260 = !DILocation(line: 160, column: 37, scope: !259)
!261 = !DILocation(line: 160, column: 16, scope: !252)
!262 = !DILocation(line: 163, column: 4, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !1, line: 161, column: 2)
!264 = !DILocation(line: 166, column: 2, scope: !259)
!265 = !DILocation(line: 169, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !200, file: !1, line: 169, column: 11)
!267 = !DILocation(line: 169, column: 32, scope: !266)
!268 = !DILocation(line: 169, column: 11, scope: !200)
!269 = !DILocation(line: 171, column: 8, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !1, line: 171, column: 8)
!271 = distinct !DILexicalBlock(scope: !266, file: !1, line: 170, column: 2)
!272 = !DILocation(line: 171, column: 19, scope: !270)
!273 = !DILocation(line: 171, column: 8, scope: !271)
!274 = !DILocation(line: 173, column: 28, scope: !270)
!275 = !DILocation(line: 173, column: 52, scope: !270)
!276 = !DILocation(line: 173, column: 26, scope: !270)
!277 = !DILocation(line: 173, column: 6, scope: !270)
!278 = !DILocation(line: 176, column: 28, scope: !270)
!279 = !DILocation(line: 176, column: 52, scope: !270)
!280 = !DILocation(line: 176, column: 26, scope: !270)
!281 = !DILocation(line: 178, column: 4, scope: !271)
!282 = !DILocation(line: 179, column: 2, scope: !271)
!283 = !DILocation(line: 180, column: 11, scope: !284)
!284 = distinct !DILexicalBlock(scope: !200, file: !1, line: 180, column: 11)
!285 = !DILocation(line: 180, column: 32, scope: !284)
!286 = !DILocation(line: 180, column: 11, scope: !200)
!287 = !DILocation(line: 182, column: 8, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !1, line: 182, column: 8)
!289 = distinct !DILexicalBlock(scope: !284, file: !1, line: 181, column: 2)
!290 = !DILocation(line: 182, column: 19, scope: !288)
!291 = !DILocation(line: 182, column: 8, scope: !289)
!292 = !DILocation(line: 183, column: 28, scope: !288)
!293 = !DILocation(line: 183, column: 52, scope: !288)
!294 = !DILocation(line: 183, column: 26, scope: !288)
!295 = !DILocation(line: 189, column: 27, scope: !296)
!296 = distinct !DILexicalBlock(scope: !289, file: !1, line: 188, column: 8)
!297 = !DILocation(line: 189, column: 50, scope: !296)
!298 = !DILocation(line: 189, column: 25, scope: !296)
!299 = !DILocation(line: 189, column: 6, scope: !296)
!300 = !DILocation(line: 185, column: 28, scope: !288)
!301 = !DILocation(line: 185, column: 52, scope: !288)
!302 = !DILocation(line: 185, column: 26, scope: !288)
!303 = !DILocation(line: 191, column: 27, scope: !296)
!304 = !DILocation(line: 191, column: 50, scope: !296)
!305 = !DILocation(line: 191, column: 25, scope: !296)
!306 = !DILocation(line: 193, column: 4, scope: !289)
!307 = !DILocation(line: 194, column: 2, scope: !289)
!308 = !DILocation(line: 195, column: 10, scope: !309)
!309 = distinct !DILexicalBlock(scope: !200, file: !1, line: 195, column: 10)
!310 = !DILocation(line: 195, column: 31, scope: !309)
!311 = !DILocation(line: 195, column: 10, scope: !200)
!312 = !DILocation(line: 197, column: 8, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !1, line: 197, column: 8)
!314 = distinct !DILexicalBlock(scope: !309, file: !1, line: 196, column: 2)
!315 = !DILocation(line: 197, column: 19, scope: !313)
!316 = !DILocation(line: 197, column: 8, scope: !314)
!317 = !DILocation(line: 198, column: 26, scope: !313)
!318 = !DILocation(line: 198, column: 48, scope: !313)
!319 = !DILocation(line: 198, column: 24, scope: !313)
!320 = !DILocation(line: 204, column: 27, scope: !321)
!321 = distinct !DILexicalBlock(scope: !314, file: !1, line: 203, column: 8)
!322 = !DILocation(line: 204, column: 50, scope: !321)
!323 = !DILocation(line: 204, column: 25, scope: !321)
!324 = !DILocation(line: 204, column: 6, scope: !321)
!325 = !DILocation(line: 200, column: 26, scope: !313)
!326 = !DILocation(line: 200, column: 48, scope: !313)
!327 = !DILocation(line: 200, column: 24, scope: !313)
!328 = !DILocation(line: 206, column: 27, scope: !321)
!329 = !DILocation(line: 206, column: 50, scope: !321)
!330 = !DILocation(line: 206, column: 25, scope: !321)
!331 = !DILocation(line: 208, column: 4, scope: !314)
!332 = !DILocation(line: 209, column: 2, scope: !314)
!333 = !DILocation(line: 210, column: 10, scope: !334)
!334 = distinct !DILexicalBlock(scope: !200, file: !1, line: 210, column: 10)
!335 = !DILocation(line: 210, column: 31, scope: !334)
!336 = !DILocation(line: 210, column: 10, scope: !200)
!337 = !DILocation(line: 212, column: 8, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !1, line: 212, column: 8)
!339 = distinct !DILexicalBlock(scope: !334, file: !1, line: 211, column: 2)
!340 = !DILocation(line: 212, column: 19, scope: !338)
!341 = !DILocation(line: 212, column: 8, scope: !339)
!342 = !DILocation(line: 213, column: 27, scope: !338)
!343 = !DILocation(line: 213, column: 50, scope: !338)
!344 = !DILocation(line: 213, column: 25, scope: !338)
!345 = !DILocation(line: 213, column: 6, scope: !338)
!346 = !DILocation(line: 215, column: 27, scope: !338)
!347 = !DILocation(line: 215, column: 50, scope: !338)
!348 = !DILocation(line: 215, column: 25, scope: !338)
!349 = !DILocation(line: 217, column: 4, scope: !339)
!350 = !DILocation(line: 218, column: 2, scope: !339)
!351 = !DILocation(line: 219, column: 10, scope: !352)
!352 = distinct !DILexicalBlock(scope: !200, file: !1, line: 219, column: 10)
!353 = !DILocation(line: 219, column: 31, scope: !352)
!354 = !DILocation(line: 219, column: 10, scope: !200)
!355 = !DILocation(line: 221, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !1, line: 221, column: 8)
!357 = distinct !DILexicalBlock(scope: !352, file: !1, line: 220, column: 2)
!358 = !DILocation(line: 221, column: 19, scope: !356)
!359 = !DILocation(line: 221, column: 8, scope: !357)
!360 = !DILocation(line: 222, column: 26, scope: !356)
!361 = !DILocation(line: 222, column: 48, scope: !356)
!362 = !DILocation(line: 222, column: 24, scope: !356)
!363 = !DILocation(line: 229, column: 29, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 228, column: 6)
!365 = distinct !DILexicalBlock(scope: !357, file: !1, line: 227, column: 8)
!366 = !DILocation(line: 229, column: 52, scope: !364)
!367 = !DILocation(line: 229, column: 27, scope: !364)
!368 = !DILocation(line: 230, column: 30, scope: !364)
!369 = !DILocation(line: 230, column: 54, scope: !364)
!370 = !DILocation(line: 230, column: 28, scope: !364)
!371 = !DILocation(line: 231, column: 6, scope: !364)
!372 = !DILocation(line: 224, column: 26, scope: !356)
!373 = !DILocation(line: 224, column: 48, scope: !356)
!374 = !DILocation(line: 224, column: 24, scope: !356)
!375 = !DILocation(line: 234, column: 29, scope: !376)
!376 = distinct !DILexicalBlock(scope: !365, file: !1, line: 233, column: 6)
!377 = !DILocation(line: 234, column: 52, scope: !376)
!378 = !DILocation(line: 234, column: 27, scope: !376)
!379 = !DILocation(line: 235, column: 30, scope: !376)
!380 = !DILocation(line: 235, column: 54, scope: !376)
!381 = !DILocation(line: 235, column: 28, scope: !376)
!382 = !DILocation(line: 238, column: 4, scope: !357)
!383 = !DILocation(line: 239, column: 2, scope: !357)
!384 = !DILocation(line: 240, column: 10, scope: !385)
!385 = distinct !DILexicalBlock(scope: !200, file: !1, line: 240, column: 10)
!386 = !DILocation(line: 240, column: 31, scope: !385)
!387 = !DILocation(line: 240, column: 10, scope: !200)
!388 = !DILocation(line: 242, column: 8, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !1, line: 242, column: 8)
!390 = distinct !DILexicalBlock(scope: !385, file: !1, line: 241, column: 2)
!391 = !DILocation(line: 242, column: 19, scope: !389)
!392 = !DILocation(line: 242, column: 8, scope: !390)
!393 = !DILocation(line: 244, column: 28, scope: !394)
!394 = distinct !DILexicalBlock(scope: !389, file: !1, line: 243, column: 6)
!395 = !DILocation(line: 244, column: 50, scope: !394)
!396 = !DILocation(line: 244, column: 26, scope: !394)
!397 = !DILocation(line: 245, column: 30, scope: !394)
!398 = !DILocation(line: 245, column: 54, scope: !394)
!399 = !DILocation(line: 245, column: 28, scope: !394)
!400 = !DILocation(line: 246, column: 29, scope: !394)
!401 = !DILocation(line: 246, column: 52, scope: !394)
!402 = !DILocation(line: 246, column: 27, scope: !394)
!403 = !DILocation(line: 247, column: 6, scope: !394)
!404 = !DILocation(line: 250, column: 28, scope: !405)
!405 = distinct !DILexicalBlock(scope: !389, file: !1, line: 249, column: 6)
!406 = !DILocation(line: 250, column: 50, scope: !405)
!407 = !DILocation(line: 250, column: 26, scope: !405)
!408 = !DILocation(line: 251, column: 30, scope: !405)
!409 = !DILocation(line: 251, column: 54, scope: !405)
!410 = !DILocation(line: 251, column: 28, scope: !405)
!411 = !DILocation(line: 252, column: 29, scope: !405)
!412 = !DILocation(line: 252, column: 52, scope: !405)
!413 = !DILocation(line: 252, column: 27, scope: !405)
!414 = !DILocation(line: 255, column: 4, scope: !390)
!415 = !DILocation(line: 256, column: 2, scope: !390)
!416 = !DILocation(line: 257, column: 10, scope: !417)
!417 = distinct !DILexicalBlock(scope: !200, file: !1, line: 257, column: 10)
!418 = !DILocation(line: 257, column: 31, scope: !417)
!419 = !DILocation(line: 257, column: 10, scope: !200)
!420 = !DILocation(line: 259, column: 8, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !1, line: 259, column: 8)
!422 = distinct !DILexicalBlock(scope: !417, file: !1, line: 258, column: 2)
!423 = !DILocation(line: 259, column: 19, scope: !421)
!424 = !DILocation(line: 259, column: 8, scope: !422)
!425 = !DILocation(line: 261, column: 28, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !1, line: 260, column: 6)
!427 = !DILocation(line: 261, column: 50, scope: !426)
!428 = !DILocation(line: 261, column: 26, scope: !426)
!429 = !DILocation(line: 262, column: 29, scope: !426)
!430 = !DILocation(line: 262, column: 52, scope: !426)
!431 = !DILocation(line: 262, column: 27, scope: !426)
!432 = !DILocation(line: 263, column: 6, scope: !426)
!433 = !DILocation(line: 266, column: 28, scope: !434)
!434 = distinct !DILexicalBlock(scope: !421, file: !1, line: 265, column: 6)
!435 = !DILocation(line: 266, column: 50, scope: !434)
!436 = !DILocation(line: 266, column: 26, scope: !434)
!437 = !DILocation(line: 267, column: 29, scope: !434)
!438 = !DILocation(line: 267, column: 52, scope: !434)
!439 = !DILocation(line: 267, column: 27, scope: !434)
!440 = !DILocation(line: 270, column: 4, scope: !422)
!441 = !DILocation(line: 271, column: 2, scope: !422)
!442 = !DILocation(line: 276, column: 12, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 276, column: 11)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 274, column: 5)
!445 = distinct !DILexicalBlock(scope: !196, file: !1, line: 273, column: 12)
!446 = !DILocation(line: 276, column: 37, scope: !443)
!447 = !DILocation(line: 277, column: 4, scope: !443)
!448 = !DILocation(line: 278, column: 9, scope: !443)
!449 = !DILocation(line: 278, column: 30, scope: !443)
!450 = !DILocation(line: 278, column: 39, scope: !443)
!451 = !DILocation(line: 279, column: 9, scope: !443)
!452 = !DILocation(line: 279, column: 30, scope: !443)
!453 = !DILocation(line: 279, column: 39, scope: !443)
!454 = !DILocation(line: 280, column: 9, scope: !443)
!455 = !DILocation(line: 280, column: 30, scope: !443)
!456 = !DILocation(line: 280, column: 39, scope: !443)
!457 = !DILocation(line: 281, column: 9, scope: !443)
!458 = !DILocation(line: 281, column: 30, scope: !443)
!459 = !DILocation(line: 281, column: 39, scope: !443)
!460 = !DILocation(line: 282, column: 9, scope: !443)
!461 = !DILocation(line: 282, column: 30, scope: !443)
!462 = !DILocation(line: 282, column: 39, scope: !443)
!463 = !DILocation(line: 283, column: 9, scope: !443)
!464 = !DILocation(line: 283, column: 30, scope: !443)
!465 = !DILocation(line: 283, column: 39, scope: !443)
!466 = !DILocation(line: 284, column: 9, scope: !443)
!467 = !DILocation(line: 284, column: 30, scope: !443)
!468 = !DILocation(line: 276, column: 11, scope: !444)
!469 = !DILocation(line: 286, column: 14, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 286, column: 14)
!471 = distinct !DILexicalBlock(scope: !443, file: !1, line: 285, column: 2)
!472 = !DILocation(line: 286, column: 25, scope: !470)
!473 = !DILocation(line: 286, column: 14, scope: !471)
!474 = !DILocation(line: 288, column: 26, scope: !475)
!475 = distinct !DILexicalBlock(scope: !470, file: !1, line: 287, column: 6)
!476 = !DILocation(line: 289, column: 28, scope: !475)
!477 = !DILocation(line: 290, column: 28, scope: !475)
!478 = !DILocation(line: 291, column: 26, scope: !475)
!479 = !DILocation(line: 292, column: 27, scope: !475)
!480 = !DILocation(line: 293, column: 6, scope: !475)
!481 = !DILocation(line: 296, column: 26, scope: !482)
!482 = distinct !DILexicalBlock(scope: !470, file: !1, line: 295, column: 6)
!483 = !DILocation(line: 297, column: 28, scope: !482)
!484 = !DILocation(line: 298, column: 28, scope: !482)
!485 = !DILocation(line: 299, column: 26, scope: !482)
!486 = !DILocation(line: 300, column: 27, scope: !482)
!487 = !DILocation(line: 302, column: 4, scope: !471)
!488 = !DILocation(line: 303, column: 2, scope: !471)
!489 = !DILocation(line: 305, column: 16, scope: !490)
!490 = distinct !DILexicalBlock(scope: !443, file: !1, line: 305, column: 16)
!491 = !DILocation(line: 305, column: 39, scope: !490)
!492 = !DILocation(line: 305, column: 16, scope: !443)
!493 = !DILocation(line: 308, column: 4, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !1, line: 306, column: 2)
!495 = !DILocation(line: 309, column: 2, scope: !494)
!496 = !DILocation(line: 310, column: 16, scope: !497)
!497 = distinct !DILexicalBlock(scope: !490, file: !1, line: 310, column: 16)
!498 = !DILocation(line: 310, column: 38, scope: !497)
!499 = !DILocation(line: 310, column: 16, scope: !490)
!500 = !DILocation(line: 313, column: 4, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !1, line: 311, column: 2)
!502 = !DILocation(line: 314, column: 2, scope: !501)
!503 = !DILocation(line: 315, column: 16, scope: !504)
!504 = distinct !DILexicalBlock(scope: !497, file: !1, line: 315, column: 16)
!505 = !DILocation(line: 315, column: 37, scope: !504)
!506 = !DILocation(line: 315, column: 16, scope: !497)
!507 = !DILocation(line: 318, column: 4, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !1, line: 316, column: 2)
!509 = !DILocation(line: 321, column: 2, scope: !504)
!510 = !DILocation(line: 323, column: 11, scope: !511)
!511 = distinct !DILexicalBlock(scope: !444, file: !1, line: 323, column: 11)
!512 = !DILocation(line: 323, column: 32, scope: !511)
!513 = !DILocation(line: 323, column: 11, scope: !444)
!514 = !DILocation(line: 325, column: 8, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !1, line: 325, column: 8)
!516 = distinct !DILexicalBlock(scope: !511, file: !1, line: 324, column: 2)
!517 = !DILocation(line: 325, column: 19, scope: !515)
!518 = !DILocation(line: 325, column: 8, scope: !516)
!519 = !DILocation(line: 326, column: 28, scope: !515)
!520 = !DILocation(line: 326, column: 52, scope: !515)
!521 = !DILocation(line: 326, column: 26, scope: !515)
!522 = !DILocation(line: 326, column: 6, scope: !515)
!523 = !DILocation(line: 328, column: 28, scope: !515)
!524 = !DILocation(line: 328, column: 52, scope: !515)
!525 = !DILocation(line: 328, column: 26, scope: !515)
!526 = !DILocation(line: 330, column: 4, scope: !516)
!527 = !DILocation(line: 331, column: 2, scope: !516)
!528 = !DILocation(line: 332, column: 11, scope: !529)
!529 = distinct !DILexicalBlock(scope: !444, file: !1, line: 332, column: 11)
!530 = !DILocation(line: 332, column: 32, scope: !529)
!531 = !DILocation(line: 332, column: 11, scope: !444)
!532 = !DILocation(line: 334, column: 8, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 334, column: 8)
!534 = distinct !DILexicalBlock(scope: !529, file: !1, line: 333, column: 2)
!535 = !DILocation(line: 334, column: 19, scope: !533)
!536 = !DILocation(line: 334, column: 8, scope: !534)
!537 = !DILocation(line: 335, column: 28, scope: !533)
!538 = !DILocation(line: 335, column: 52, scope: !533)
!539 = !DILocation(line: 335, column: 26, scope: !533)
!540 = !DILocation(line: 341, column: 27, scope: !541)
!541 = distinct !DILexicalBlock(scope: !534, file: !1, line: 340, column: 8)
!542 = !DILocation(line: 341, column: 50, scope: !541)
!543 = !DILocation(line: 341, column: 25, scope: !541)
!544 = !DILocation(line: 341, column: 6, scope: !541)
!545 = !DILocation(line: 337, column: 28, scope: !533)
!546 = !DILocation(line: 337, column: 52, scope: !533)
!547 = !DILocation(line: 337, column: 26, scope: !533)
!548 = !DILocation(line: 343, column: 27, scope: !541)
!549 = !DILocation(line: 343, column: 50, scope: !541)
!550 = !DILocation(line: 343, column: 25, scope: !541)
!551 = !DILocation(line: 345, column: 4, scope: !534)
!552 = !DILocation(line: 346, column: 2, scope: !534)
!553 = !DILocation(line: 347, column: 10, scope: !554)
!554 = distinct !DILexicalBlock(scope: !444, file: !1, line: 347, column: 10)
!555 = !DILocation(line: 347, column: 31, scope: !554)
!556 = !DILocation(line: 347, column: 10, scope: !444)
!557 = !DILocation(line: 349, column: 8, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !1, line: 349, column: 8)
!559 = distinct !DILexicalBlock(scope: !554, file: !1, line: 348, column: 2)
!560 = !DILocation(line: 349, column: 19, scope: !558)
!561 = !DILocation(line: 349, column: 8, scope: !559)
!562 = !DILocation(line: 350, column: 26, scope: !558)
!563 = !DILocation(line: 350, column: 48, scope: !558)
!564 = !DILocation(line: 350, column: 24, scope: !558)
!565 = !DILocation(line: 356, column: 27, scope: !566)
!566 = distinct !DILexicalBlock(scope: !559, file: !1, line: 355, column: 8)
!567 = !DILocation(line: 356, column: 50, scope: !566)
!568 = !DILocation(line: 356, column: 25, scope: !566)
!569 = !DILocation(line: 356, column: 6, scope: !566)
!570 = !DILocation(line: 352, column: 26, scope: !558)
!571 = !DILocation(line: 352, column: 48, scope: !558)
!572 = !DILocation(line: 352, column: 24, scope: !558)
!573 = !DILocation(line: 358, column: 27, scope: !566)
!574 = !DILocation(line: 358, column: 50, scope: !566)
!575 = !DILocation(line: 358, column: 25, scope: !566)
!576 = !DILocation(line: 360, column: 4, scope: !559)
!577 = !DILocation(line: 361, column: 2, scope: !559)
!578 = !DILocation(line: 362, column: 10, scope: !579)
!579 = distinct !DILexicalBlock(scope: !444, file: !1, line: 362, column: 10)
!580 = !DILocation(line: 362, column: 31, scope: !579)
!581 = !DILocation(line: 362, column: 10, scope: !444)
!582 = !DILocation(line: 364, column: 8, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !1, line: 364, column: 8)
!584 = distinct !DILexicalBlock(scope: !579, file: !1, line: 363, column: 2)
!585 = !DILocation(line: 364, column: 19, scope: !583)
!586 = !DILocation(line: 364, column: 8, scope: !584)
!587 = !DILocation(line: 365, column: 27, scope: !583)
!588 = !DILocation(line: 365, column: 50, scope: !583)
!589 = !DILocation(line: 365, column: 25, scope: !583)
!590 = !DILocation(line: 365, column: 6, scope: !583)
!591 = !DILocation(line: 367, column: 27, scope: !583)
!592 = !DILocation(line: 367, column: 50, scope: !583)
!593 = !DILocation(line: 367, column: 25, scope: !583)
!594 = !DILocation(line: 369, column: 4, scope: !584)
!595 = !DILocation(line: 370, column: 2, scope: !584)
!596 = !DILocation(line: 371, column: 10, scope: !597)
!597 = distinct !DILexicalBlock(scope: !444, file: !1, line: 371, column: 10)
!598 = !DILocation(line: 371, column: 31, scope: !597)
!599 = !DILocation(line: 371, column: 10, scope: !444)
!600 = !DILocation(line: 373, column: 8, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 373, column: 8)
!602 = distinct !DILexicalBlock(scope: !597, file: !1, line: 372, column: 2)
!603 = !DILocation(line: 373, column: 19, scope: !601)
!604 = !DILocation(line: 373, column: 8, scope: !602)
!605 = !DILocation(line: 374, column: 26, scope: !601)
!606 = !DILocation(line: 374, column: 48, scope: !601)
!607 = !DILocation(line: 374, column: 24, scope: !601)
!608 = !DILocation(line: 381, column: 29, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 380, column: 6)
!610 = distinct !DILexicalBlock(scope: !602, file: !1, line: 379, column: 8)
!611 = !DILocation(line: 381, column: 52, scope: !609)
!612 = !DILocation(line: 381, column: 27, scope: !609)
!613 = !DILocation(line: 382, column: 30, scope: !609)
!614 = !DILocation(line: 382, column: 54, scope: !609)
!615 = !DILocation(line: 382, column: 28, scope: !609)
!616 = !DILocation(line: 383, column: 6, scope: !609)
!617 = !DILocation(line: 376, column: 26, scope: !601)
!618 = !DILocation(line: 376, column: 48, scope: !601)
!619 = !DILocation(line: 376, column: 24, scope: !601)
!620 = !DILocation(line: 386, column: 29, scope: !621)
!621 = distinct !DILexicalBlock(scope: !610, file: !1, line: 385, column: 6)
!622 = !DILocation(line: 386, column: 52, scope: !621)
!623 = !DILocation(line: 386, column: 27, scope: !621)
!624 = !DILocation(line: 387, column: 30, scope: !621)
!625 = !DILocation(line: 387, column: 54, scope: !621)
!626 = !DILocation(line: 387, column: 28, scope: !621)
!627 = !DILocation(line: 390, column: 4, scope: !602)
!628 = !DILocation(line: 391, column: 2, scope: !602)
!629 = !DILocation(line: 392, column: 10, scope: !630)
!630 = distinct !DILexicalBlock(scope: !444, file: !1, line: 392, column: 10)
!631 = !DILocation(line: 392, column: 31, scope: !630)
!632 = !DILocation(line: 392, column: 10, scope: !444)
!633 = !DILocation(line: 394, column: 8, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !1, line: 394, column: 8)
!635 = distinct !DILexicalBlock(scope: !630, file: !1, line: 393, column: 2)
!636 = !DILocation(line: 394, column: 19, scope: !634)
!637 = !DILocation(line: 394, column: 8, scope: !635)
!638 = !DILocation(line: 396, column: 28, scope: !639)
!639 = distinct !DILexicalBlock(scope: !634, file: !1, line: 395, column: 6)
!640 = !DILocation(line: 396, column: 50, scope: !639)
!641 = !DILocation(line: 396, column: 26, scope: !639)
!642 = !DILocation(line: 397, column: 30, scope: !639)
!643 = !DILocation(line: 397, column: 54, scope: !639)
!644 = !DILocation(line: 397, column: 28, scope: !639)
!645 = !DILocation(line: 398, column: 29, scope: !639)
!646 = !DILocation(line: 398, column: 52, scope: !639)
!647 = !DILocation(line: 398, column: 27, scope: !639)
!648 = !DILocation(line: 399, column: 6, scope: !639)
!649 = !DILocation(line: 402, column: 28, scope: !650)
!650 = distinct !DILexicalBlock(scope: !634, file: !1, line: 401, column: 6)
!651 = !DILocation(line: 402, column: 50, scope: !650)
!652 = !DILocation(line: 402, column: 26, scope: !650)
!653 = !DILocation(line: 403, column: 30, scope: !650)
!654 = !DILocation(line: 403, column: 54, scope: !650)
!655 = !DILocation(line: 403, column: 28, scope: !650)
!656 = !DILocation(line: 404, column: 29, scope: !650)
!657 = !DILocation(line: 404, column: 52, scope: !650)
!658 = !DILocation(line: 404, column: 27, scope: !650)
!659 = !DILocation(line: 407, column: 4, scope: !635)
!660 = !DILocation(line: 408, column: 2, scope: !635)
!661 = !DILocation(line: 409, column: 10, scope: !662)
!662 = distinct !DILexicalBlock(scope: !444, file: !1, line: 409, column: 10)
!663 = !DILocation(line: 409, column: 31, scope: !662)
!664 = !DILocation(line: 409, column: 10, scope: !444)
!665 = !DILocation(line: 411, column: 8, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !1, line: 411, column: 8)
!667 = distinct !DILexicalBlock(scope: !662, file: !1, line: 410, column: 2)
!668 = !DILocation(line: 411, column: 19, scope: !666)
!669 = !DILocation(line: 411, column: 8, scope: !667)
!670 = !DILocation(line: 413, column: 28, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !1, line: 412, column: 6)
!672 = !DILocation(line: 413, column: 50, scope: !671)
!673 = !DILocation(line: 413, column: 26, scope: !671)
!674 = !DILocation(line: 414, column: 29, scope: !671)
!675 = !DILocation(line: 414, column: 52, scope: !671)
!676 = !DILocation(line: 414, column: 27, scope: !671)
!677 = !DILocation(line: 415, column: 6, scope: !671)
!678 = !DILocation(line: 418, column: 28, scope: !679)
!679 = distinct !DILexicalBlock(scope: !666, file: !1, line: 417, column: 6)
!680 = !DILocation(line: 418, column: 50, scope: !679)
!681 = !DILocation(line: 418, column: 26, scope: !679)
!682 = !DILocation(line: 419, column: 29, scope: !679)
!683 = !DILocation(line: 419, column: 52, scope: !679)
!684 = !DILocation(line: 419, column: 27, scope: !679)
!685 = !DILocation(line: 422, column: 4, scope: !667)
!686 = !DILocation(line: 423, column: 2, scope: !667)
!687 = !DILocation(line: 426, column: 12, scope: !688)
!688 = distinct !DILexicalBlock(scope: !445, file: !1, line: 425, column: 12)
!689 = !DILocation(line: 426, column: 47, scope: !688)
!690 = !DILocation(line: 427, column: 8, scope: !688)
!691 = !DILocation(line: 427, column: 13, scope: !688)
!692 = !DILocation(line: 427, column: 38, scope: !688)
!693 = !DILocation(line: 427, column: 47, scope: !688)
!694 = !DILocation(line: 427, column: 51, scope: !688)
!695 = !DILocation(line: 427, column: 75, scope: !688)
!696 = !DILocation(line: 428, column: 13, scope: !688)
!697 = !DILocation(line: 428, column: 8, scope: !688)
!698 = !DILocation(line: 428, column: 40, scope: !688)
!699 = !DILocation(line: 428, column: 44, scope: !688)
!700 = !DILocation(line: 428, column: 72, scope: !688)
!701 = !DILocation(line: 425, column: 12, scope: !445)
!702 = !DILocation(line: 430, column: 7, scope: !703)
!703 = distinct !DILexicalBlock(scope: !688, file: !1, line: 429, column: 5)
!704 = !DILocation(line: 24, column: 3, scope: !13, inlinedAt: !705)
!705 = distinct !DILocation(line: 431, column: 7, scope: !703)
!706 = !DILocation(line: 432, column: 16, scope: !703)
!707 = !DILocation(line: 433, column: 19, scope: !703)
!708 = !DILocation(line: 434, column: 17, scope: !703)
!709 = !DILocation(line: 435, column: 5, scope: !703)
!710 = !DILocation(line: 436, column: 13, scope: !711)
!711 = distinct !DILexicalBlock(scope: !688, file: !1, line: 436, column: 12)
!712 = !DILocation(line: 436, column: 63, scope: !711)
!713 = !DILocation(line: 437, column: 6, scope: !711)
!714 = !DILocation(line: 436, column: 12, scope: !688)
!715 = !DILocation(line: 440, column: 15, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !1, line: 438, column: 5)
!717 = !DILocation(line: 441, column: 16, scope: !716)
!718 = !DILocation(line: 442, column: 19, scope: !716)
!719 = !DILocation(line: 445, column: 5, scope: !716)
!720 = !DILocation(line: 446, column: 13, scope: !721)
!721 = distinct !DILexicalBlock(scope: !711, file: !1, line: 446, column: 12)
!722 = !DILocation(line: 446, column: 12, scope: !711)
!723 = !DILocation(line: 449, column: 15, scope: !724)
!724 = distinct !DILexicalBlock(scope: !721, file: !1, line: 447, column: 5)
!725 = !DILocation(line: 450, column: 16, scope: !724)
!726 = !DILocation(line: 451, column: 17, scope: !724)
!727 = !DILocation(line: 452, column: 5, scope: !724)
!728 = !DILocation(line: 453, column: 13, scope: !729)
!729 = distinct !DILexicalBlock(scope: !721, file: !1, line: 453, column: 12)
!730 = !DILocation(line: 453, column: 12, scope: !721)
!731 = !DILocation(line: 457, column: 13, scope: !732)
!732 = distinct !DILexicalBlock(scope: !729, file: !1, line: 457, column: 12)
!733 = !DILocation(line: 457, column: 12, scope: !729)
!734 = !DILocation(line: 461, column: 13, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !1, line: 461, column: 12)
!736 = !DILocation(line: 461, column: 39, scope: !735)
!737 = !DILocation(line: 461, column: 44, scope: !735)
!738 = !DILocation(line: 461, column: 12, scope: !732)
!739 = !DILocation(line: 463, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !735, file: !1, line: 462, column: 5)
!741 = !DILocation(line: 464, column: 5, scope: !740)
!742 = !DILocation(line: 465, column: 12, scope: !743)
!743 = distinct !DILexicalBlock(scope: !735, file: !1, line: 465, column: 12)
!744 = !DILocation(line: 465, column: 39, scope: !743)
!745 = !DILocation(line: 465, column: 12, scope: !735)
!746 = !DILocation(line: 467, column: 6, scope: !747)
!747 = distinct !DILexicalBlock(scope: !743, file: !1, line: 466, column: 3)
!748 = !DILocation(line: 468, column: 6, scope: !747)
!749 = !DILocation(line: 469, column: 3, scope: !747)
!750 = !DILocation(line: 472, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !743, file: !1, line: 471, column: 5)
!752 = !DILocation(line: 475, column: 1, scope: !26)
!753 = !DILocation(line: 479, column: 25, scope: !34)
!754 = !DILocation(line: 481, column: 3, scope: !34)
!755 = !DILocation(line: 481, column: 10, scope: !34)
!756 = !DILocation(line: 482, column: 3, scope: !34)
!757 = !DILocation(line: 482, column: 10, scope: !34)
!758 = !DILocation(line: 485, column: 9, scope: !34)
!759 = !DILocation(line: 488, column: 5, scope: !34)
!760 = !DILocation(line: 489, column: 5, scope: !34)
!761 = !DILocation(line: 490, column: 5, scope: !34)
!762 = !DILocation(line: 491, column: 5, scope: !34)
!763 = !DILocation(line: 492, column: 5, scope: !34)
!764 = !DILocation(line: 502, column: 5, scope: !34)
!765 = !DILocation(line: 503, column: 5, scope: !34)
!766 = !DILocation(line: 504, column: 5, scope: !34)
!767 = !DILocation(line: 505, column: 5, scope: !34)
!768 = !DILocation(line: 506, column: 5, scope: !34)
!769 = !DILocation(line: 508, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !34, file: !1, line: 508, column: 7)
!771 = !DILocation(line: 508, column: 7, scope: !34)
!772 = !DILocation(line: 510, column: 17, scope: !773)
!773 = distinct !DILexicalBlock(scope: !770, file: !1, line: 509, column: 5)
!774 = !DILocation(line: 511, column: 19, scope: !773)
!775 = !DILocation(line: 512, column: 19, scope: !773)
!776 = !DILocation(line: 513, column: 17, scope: !773)
!777 = !DILocation(line: 514, column: 18, scope: !773)
!778 = !DILocation(line: 515, column: 7, scope: !773)
!779 = !DILocation(line: 518, column: 8, scope: !34)
!780 = !DILocation(line: 483, column: 43, scope: !34)
!781 = !DILocation(line: 520, column: 33, scope: !782)
!782 = distinct !DILexicalBlock(scope: !34, file: !1, line: 520, column: 7)
!783 = !DILocation(line: 520, column: 8, scope: !782)
!784 = !DILocation(line: 520, column: 16, scope: !782)
!785 = !DILocation(line: 520, column: 7, scope: !34)
!786 = !DILocation(line: 523, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !782, file: !1, line: 521, column: 5)
!788 = !DILocation(line: 525, column: 12, scope: !787)
!789 = !DILocation(line: 525, column: 7, scope: !787)
!790 = !DILocation(line: 526, column: 23, scope: !787)
!791 = !DILocation(line: 483, column: 7, scope: !34)
!792 = !DILocation(line: 483, column: 40, scope: !34)
!793 = !DILocation(line: 528, column: 21, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !1, line: 528, column: 7)
!795 = distinct !DILexicalBlock(scope: !787, file: !1, line: 528, column: 7)
!796 = !DILocation(line: 528, column: 38, scope: !794)
!797 = !DILocation(line: 538, column: 13, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !1, line: 533, column: 6)
!799 = distinct !DILexicalBlock(scope: !800, file: !1, line: 532, column: 8)
!800 = distinct !DILexicalBlock(scope: !794, file: !1, line: 529, column: 2)
!801 = !DILocation(line: 530, column: 4, scope: !800)
!802 = !DILocation(line: 532, column: 8, scope: !799)
!803 = !DILocation(line: 532, column: 8, scope: !800)
!804 = !DILocation(line: 536, column: 14, scope: !798)
!805 = !DILocation(line: 483, column: 47, scope: !34)
!806 = !DILocation(line: 538, column: 8, scope: !798)
!807 = !DILocation(line: 539, column: 24, scope: !798)
!808 = !DILocation(line: 483, column: 22, scope: !34)
!809 = !DILocation(line: 483, column: 37, scope: !34)
!810 = !DILocation(line: 541, column: 23, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !1, line: 541, column: 8)
!812 = distinct !DILexicalBlock(scope: !798, file: !1, line: 541, column: 8)
!813 = !DILocation(line: 541, column: 40, scope: !811)
!814 = !DILocation(line: 544, column: 5, scope: !815)
!815 = distinct !DILexicalBlock(scope: !811, file: !1, line: 542, column: 3)
!816 = !DILocation(line: 546, column: 9, scope: !817)
!817 = distinct !DILexicalBlock(scope: !815, file: !1, line: 546, column: 9)
!818 = !DILocation(line: 546, column: 9, scope: !815)
!819 = !DILocation(line: 549, column: 5, scope: !815)
!820 = !DILocation(line: 541, column: 66, scope: !811)
!821 = !DILocation(line: 541, column: 54, scope: !811)
!822 = !DILocation(line: 553, column: 4, scope: !800)
!823 = !DILocation(line: 528, column: 64, scope: !794)
!824 = !DILocation(line: 528, column: 52, scope: !794)
!825 = !DILocation(line: 555, column: 26, scope: !787)
!826 = !DILocation(line: 555, column: 58, scope: !787)
!827 = !DILocation(line: 555, column: 7, scope: !787)
!828 = !DILocation(line: 558, column: 33, scope: !829)
!829 = distinct !DILexicalBlock(scope: !34, file: !1, line: 558, column: 7)
!830 = !DILocation(line: 556, column: 5, scope: !787)
!831 = !DILocation(line: 558, column: 8, scope: !829)
!832 = !DILocation(line: 558, column: 16, scope: !829)
!833 = !DILocation(line: 558, column: 7, scope: !34)
!834 = !DILocation(line: 561, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !829, file: !1, line: 559, column: 5)
!836 = !DILocation(line: 563, column: 12, scope: !835)
!837 = !DILocation(line: 563, column: 7, scope: !835)
!838 = !DILocation(line: 564, column: 23, scope: !835)
!839 = !DILocation(line: 566, column: 21, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !1, line: 566, column: 7)
!841 = distinct !DILexicalBlock(scope: !835, file: !1, line: 566, column: 7)
!842 = !DILocation(line: 566, column: 38, scope: !840)
!843 = !DILocation(line: 577, column: 13, scope: !844)
!844 = distinct !DILexicalBlock(scope: !845, file: !1, line: 572, column: 6)
!845 = distinct !DILexicalBlock(scope: !846, file: !1, line: 571, column: 8)
!846 = distinct !DILexicalBlock(scope: !840, file: !1, line: 567, column: 2)
!847 = !DILocation(line: 569, column: 4, scope: !846)
!848 = !DILocation(line: 571, column: 8, scope: !845)
!849 = !DILocation(line: 571, column: 8, scope: !846)
!850 = !DILocation(line: 575, column: 14, scope: !844)
!851 = !DILocation(line: 577, column: 8, scope: !844)
!852 = !DILocation(line: 578, column: 24, scope: !844)
!853 = !DILocation(line: 580, column: 23, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !1, line: 580, column: 8)
!855 = distinct !DILexicalBlock(scope: !844, file: !1, line: 580, column: 8)
!856 = !DILocation(line: 580, column: 40, scope: !854)
!857 = !DILocation(line: 582, column: 5, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !1, line: 581, column: 3)
!859 = !DILocation(line: 584, column: 9, scope: !860)
!860 = distinct !DILexicalBlock(scope: !858, file: !1, line: 584, column: 9)
!861 = !DILocation(line: 584, column: 9, scope: !858)
!862 = !DILocation(line: 587, column: 5, scope: !858)
!863 = !DILocation(line: 580, column: 68, scope: !854)
!864 = !DILocation(line: 580, column: 56, scope: !854)
!865 = !DILocation(line: 590, column: 4, scope: !846)
!866 = !DILocation(line: 566, column: 66, scope: !840)
!867 = !DILocation(line: 566, column: 54, scope: !840)
!868 = !DILocation(line: 592, column: 26, scope: !835)
!869 = !DILocation(line: 592, column: 62, scope: !835)
!870 = !DILocation(line: 592, column: 7, scope: !835)
!871 = !DILocation(line: 595, column: 33, scope: !872)
!872 = distinct !DILexicalBlock(scope: !34, file: !1, line: 595, column: 7)
!873 = !DILocation(line: 593, column: 5, scope: !835)
!874 = !DILocation(line: 595, column: 8, scope: !872)
!875 = !DILocation(line: 595, column: 16, scope: !872)
!876 = !DILocation(line: 595, column: 7, scope: !34)
!877 = !DILocation(line: 598, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !872, file: !1, line: 596, column: 5)
!879 = !DILocation(line: 600, column: 12, scope: !878)
!880 = !DILocation(line: 600, column: 7, scope: !878)
!881 = !DILocation(line: 601, column: 23, scope: !878)
!882 = !DILocation(line: 603, column: 21, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !1, line: 603, column: 7)
!884 = distinct !DILexicalBlock(scope: !878, file: !1, line: 603, column: 7)
!885 = !DILocation(line: 603, column: 38, scope: !883)
!886 = !DILocation(line: 613, column: 13, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !1, line: 608, column: 6)
!888 = distinct !DILexicalBlock(scope: !889, file: !1, line: 607, column: 8)
!889 = distinct !DILexicalBlock(scope: !883, file: !1, line: 604, column: 2)
!890 = !DILocation(line: 605, column: 4, scope: !889)
!891 = !DILocation(line: 607, column: 8, scope: !888)
!892 = !DILocation(line: 607, column: 8, scope: !889)
!893 = !DILocation(line: 611, column: 14, scope: !887)
!894 = !DILocation(line: 613, column: 8, scope: !887)
!895 = !DILocation(line: 614, column: 24, scope: !887)
!896 = !DILocation(line: 616, column: 23, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !1, line: 616, column: 8)
!898 = distinct !DILexicalBlock(scope: !887, file: !1, line: 616, column: 8)
!899 = !DILocation(line: 616, column: 40, scope: !897)
!900 = !DILocation(line: 618, column: 5, scope: !901)
!901 = distinct !DILexicalBlock(scope: !897, file: !1, line: 617, column: 3)
!902 = !DILocation(line: 620, column: 9, scope: !903)
!903 = distinct !DILexicalBlock(scope: !901, file: !1, line: 620, column: 9)
!904 = !DILocation(line: 620, column: 9, scope: !901)
!905 = !DILocation(line: 623, column: 5, scope: !901)
!906 = !DILocation(line: 616, column: 68, scope: !897)
!907 = !DILocation(line: 616, column: 56, scope: !897)
!908 = !DILocation(line: 626, column: 4, scope: !889)
!909 = !DILocation(line: 603, column: 66, scope: !883)
!910 = !DILocation(line: 603, column: 54, scope: !883)
!911 = !DILocation(line: 628, column: 26, scope: !878)
!912 = !DILocation(line: 628, column: 62, scope: !878)
!913 = !DILocation(line: 628, column: 7, scope: !878)
!914 = !DILocation(line: 631, column: 33, scope: !915)
!915 = distinct !DILexicalBlock(scope: !34, file: !1, line: 631, column: 7)
!916 = !DILocation(line: 629, column: 5, scope: !878)
!917 = !DILocation(line: 631, column: 8, scope: !915)
!918 = !DILocation(line: 631, column: 16, scope: !915)
!919 = !DILocation(line: 631, column: 7, scope: !34)
!920 = !DILocation(line: 634, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !915, file: !1, line: 632, column: 5)
!922 = !DILocation(line: 636, column: 12, scope: !921)
!923 = !DILocation(line: 636, column: 7, scope: !921)
!924 = !DILocation(line: 637, column: 22, scope: !921)
!925 = !DILocation(line: 639, column: 21, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !1, line: 639, column: 7)
!927 = distinct !DILexicalBlock(scope: !921, file: !1, line: 639, column: 7)
!928 = !DILocation(line: 639, column: 38, scope: !926)
!929 = !DILocation(line: 649, column: 13, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !1, line: 644, column: 6)
!931 = distinct !DILexicalBlock(scope: !932, file: !1, line: 643, column: 8)
!932 = distinct !DILexicalBlock(scope: !926, file: !1, line: 640, column: 2)
!933 = !DILocation(line: 641, column: 4, scope: !932)
!934 = !DILocation(line: 643, column: 8, scope: !931)
!935 = !DILocation(line: 643, column: 8, scope: !932)
!936 = !DILocation(line: 647, column: 14, scope: !930)
!937 = !DILocation(line: 649, column: 8, scope: !930)
!938 = !DILocation(line: 650, column: 24, scope: !930)
!939 = !DILocation(line: 652, column: 23, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !1, line: 652, column: 8)
!941 = distinct !DILexicalBlock(scope: !930, file: !1, line: 652, column: 8)
!942 = !DILocation(line: 652, column: 40, scope: !940)
!943 = !DILocation(line: 654, column: 5, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !1, line: 653, column: 3)
!945 = !DILocation(line: 656, column: 9, scope: !946)
!946 = distinct !DILexicalBlock(scope: !944, file: !1, line: 656, column: 9)
!947 = !DILocation(line: 656, column: 9, scope: !944)
!948 = !DILocation(line: 659, column: 5, scope: !944)
!949 = !DILocation(line: 652, column: 66, scope: !940)
!950 = !DILocation(line: 652, column: 54, scope: !940)
!951 = !DILocation(line: 662, column: 4, scope: !932)
!952 = !DILocation(line: 639, column: 64, scope: !926)
!953 = !DILocation(line: 639, column: 52, scope: !926)
!954 = !DILocation(line: 664, column: 26, scope: !921)
!955 = !DILocation(line: 664, column: 58, scope: !921)
!956 = !DILocation(line: 664, column: 7, scope: !921)
!957 = !DILocation(line: 667, column: 33, scope: !958)
!958 = distinct !DILexicalBlock(scope: !34, file: !1, line: 667, column: 7)
!959 = !DILocation(line: 665, column: 5, scope: !921)
!960 = !DILocation(line: 667, column: 8, scope: !958)
!961 = !DILocation(line: 667, column: 16, scope: !958)
!962 = !DILocation(line: 667, column: 7, scope: !34)
!963 = !DILocation(line: 670, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !958, file: !1, line: 668, column: 5)
!965 = !DILocation(line: 672, column: 12, scope: !964)
!966 = !DILocation(line: 672, column: 7, scope: !964)
!967 = !DILocation(line: 673, column: 22, scope: !964)
!968 = !DILocation(line: 675, column: 21, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !1, line: 675, column: 7)
!970 = distinct !DILexicalBlock(scope: !964, file: !1, line: 675, column: 7)
!971 = !DILocation(line: 675, column: 38, scope: !969)
!972 = !DILocation(line: 685, column: 13, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !1, line: 680, column: 6)
!974 = distinct !DILexicalBlock(scope: !975, file: !1, line: 679, column: 8)
!975 = distinct !DILexicalBlock(scope: !969, file: !1, line: 676, column: 2)
!976 = !DILocation(line: 677, column: 4, scope: !975)
!977 = !DILocation(line: 679, column: 8, scope: !974)
!978 = !DILocation(line: 679, column: 8, scope: !975)
!979 = !DILocation(line: 683, column: 14, scope: !973)
!980 = !DILocation(line: 685, column: 8, scope: !973)
!981 = !DILocation(line: 686, column: 24, scope: !973)
!982 = !DILocation(line: 688, column: 23, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !1, line: 688, column: 8)
!984 = distinct !DILexicalBlock(scope: !973, file: !1, line: 688, column: 8)
!985 = !DILocation(line: 688, column: 40, scope: !983)
!986 = !DILocation(line: 690, column: 5, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !1, line: 689, column: 3)
!988 = !DILocation(line: 692, column: 9, scope: !989)
!989 = distinct !DILexicalBlock(scope: !987, file: !1, line: 692, column: 9)
!990 = !DILocation(line: 692, column: 9, scope: !987)
!991 = !DILocation(line: 695, column: 5, scope: !987)
!992 = !DILocation(line: 688, column: 67, scope: !983)
!993 = !DILocation(line: 688, column: 55, scope: !983)
!994 = !DILocation(line: 698, column: 4, scope: !975)
!995 = !DILocation(line: 675, column: 65, scope: !969)
!996 = !DILocation(line: 675, column: 53, scope: !969)
!997 = !DILocation(line: 700, column: 26, scope: !964)
!998 = !DILocation(line: 700, column: 60, scope: !964)
!999 = !DILocation(line: 700, column: 7, scope: !964)
!1000 = !DILocation(line: 701, column: 5, scope: !964)
!1001 = !DILocation(line: 706, column: 20, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !34, file: !1, line: 706, column: 7)
!1003 = !DILocation(line: 706, column: 17, scope: !1002)
!1004 = !DILocation(line: 706, column: 7, scope: !34)
!1005 = !DILocation(line: 708, column: 21, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 708, column: 11)
!1007 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 707, column: 5)
!1008 = !DILocation(line: 708, column: 11, scope: !1007)
!1009 = !DILocation(line: 710, column: 31, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 710, column: 16)
!1011 = !DILocation(line: 712, column: 4, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 711, column: 2)
!1013 = !DILocation(line: 714, column: 2, scope: !1012)
!1014 = !DILocation(line: 717, column: 22, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !34, file: !1, line: 717, column: 7)
!1016 = !DILocation(line: 717, column: 19, scope: !1015)
!1017 = !DILocation(line: 717, column: 7, scope: !34)
!1018 = !DILocation(line: 719, column: 23, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 719, column: 11)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 718, column: 5)
!1021 = !DILocation(line: 719, column: 11, scope: !1020)
!1022 = !DILocation(line: 721, column: 33, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 721, column: 16)
!1024 = !DILocation(line: 723, column: 4, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 722, column: 2)
!1026 = !DILocation(line: 725, column: 2, scope: !1025)
!1027 = !DILocation(line: 728, column: 22, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !34, file: !1, line: 728, column: 7)
!1029 = !DILocation(line: 728, column: 19, scope: !1028)
!1030 = !DILocation(line: 728, column: 7, scope: !34)
!1031 = !DILocation(line: 730, column: 23, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 730, column: 11)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 729, column: 5)
!1034 = !DILocation(line: 730, column: 11, scope: !1033)
!1035 = !DILocation(line: 732, column: 33, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 732, column: 16)
!1037 = !DILocation(line: 734, column: 4, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 733, column: 2)
!1039 = !DILocation(line: 736, column: 2, scope: !1038)
!1040 = !DILocation(line: 738, column: 20, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !34, file: !1, line: 738, column: 7)
!1042 = !DILocation(line: 738, column: 17, scope: !1041)
!1043 = !DILocation(line: 738, column: 7, scope: !34)
!1044 = !DILocation(line: 740, column: 21, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 740, column: 11)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 739, column: 5)
!1047 = !DILocation(line: 740, column: 11, scope: !1046)
!1048 = !DILocation(line: 742, column: 31, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 742, column: 16)
!1050 = !DILocation(line: 744, column: 4, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 743, column: 2)
!1052 = !DILocation(line: 746, column: 2, scope: !1051)
!1053 = !DILocation(line: 748, column: 21, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !34, file: !1, line: 748, column: 7)
!1055 = !DILocation(line: 748, column: 18, scope: !1054)
!1056 = !DILocation(line: 748, column: 7, scope: !34)
!1057 = !DILocation(line: 750, column: 22, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 750, column: 11)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 749, column: 5)
!1060 = !DILocation(line: 750, column: 11, scope: !1059)
!1061 = !DILocation(line: 752, column: 32, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 752, column: 16)
!1063 = !DILocation(line: 754, column: 4, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 753, column: 2)
!1065 = !DILocation(line: 756, column: 2, scope: !1064)
!1066 = !DILocation(line: 759, column: 7, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !34, file: !1, line: 759, column: 7)
!1068 = !DILocation(line: 759, column: 7, scope: !34)
!1069 = !DILocation(line: 760, column: 2, scope: !1067)
!1070 = !DILocation(line: 761, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !34, file: !1, line: 761, column: 7)
!1072 = !DILocation(line: 761, column: 7, scope: !34)
!1073 = !DILocation(line: 762, column: 2, scope: !1071)
!1074 = !DILocation(line: 763, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !34, file: !1, line: 763, column: 7)
!1076 = !DILocation(line: 763, column: 7, scope: !34)
!1077 = !DILocation(line: 764, column: 2, scope: !1075)
!1078 = !DILocation(line: 765, column: 7, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !34, file: !1, line: 765, column: 7)
!1080 = !DILocation(line: 765, column: 7, scope: !34)
!1081 = !DILocation(line: 766, column: 2, scope: !1079)
!1082 = !DILocation(line: 767, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !34, file: !1, line: 767, column: 7)
!1084 = !DILocation(line: 767, column: 7, scope: !34)
!1085 = !DILocation(line: 768, column: 2, scope: !1083)
!1086 = !DILocation(line: 773, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !34, file: !1, line: 773, column: 7)
!1088 = !DILocation(line: 773, column: 20, scope: !1087)
!1089 = !DILocation(line: 773, column: 17, scope: !1087)
!1090 = !DILocation(line: 775, column: 17, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 774, column: 5)
!1092 = !DILocation(line: 776, column: 7, scope: !1091)
!1093 = !DILocation(line: 777, column: 7, scope: !1091)
!1094 = !DILocation(line: 778, column: 15, scope: !1091)
!1095 = !DILocation(line: 779, column: 5, scope: !1091)
!1096 = !DILocation(line: 781, column: 3, scope: !34)
!1097 = !DILocation(line: 781, column: 53, scope: !34)
!1098 = !DILocation(line: 781, column: 28, scope: !34)
!1099 = !DILocation(line: 782, column: 3, scope: !34)
!1100 = !DILocation(line: 782, column: 61, scope: !34)
!1101 = !DILocation(line: 782, column: 32, scope: !34)
!1102 = !DILocation(line: 783, column: 3, scope: !34)
!1103 = !DILocation(line: 783, column: 53, scope: !34)
!1104 = !DILocation(line: 783, column: 28, scope: !34)
!1105 = !DILocation(line: 784, column: 3, scope: !34)
!1106 = !DILocation(line: 784, column: 57, scope: !34)
!1107 = !DILocation(line: 784, column: 30, scope: !34)
!1108 = !DILocation(line: 785, column: 3, scope: !34)
!1109 = !DILocation(line: 785, column: 61, scope: !34)
!1110 = !DILocation(line: 785, column: 32, scope: !34)
!1111 = !DILocation(line: 787, column: 3, scope: !34)
!1112 = !DILocation(line: 788, column: 1, scope: !34)
