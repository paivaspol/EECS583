; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

; Function Attrs: nounwind optsize uwtable
define void @ResetHandValue() #0 {
entry:
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([13 x i32]* @hand_value to i8*), i8* bitcast ([13 x i32]* @std_hand_value to i8*), i64 52, i32 16, i1 false), !dbg !83
  ret void, !dbg !84
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind optsize readnone uwtable
define void @BegForPartner() #2 {
entry:
  ret void, !dbg !85
}

; Function Attrs: nounwind optsize uwtable
define void @GreetPartner() #0 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([68 x i8]* @str, i64 0, i64 0)), !dbg !86
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([75 x i8]* @str84, i64 0, i64 0)), !dbg !87
  ret void, !dbg !88
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @HandlePartner(i8* nocapture %input) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %input}, i64 0, metadata !22), !dbg !89
  %0 = load i8* %input, align 1, !dbg !90, !tbaa !91
  %cmp = icmp eq i8 %0, 32, !dbg !90
  br i1 %cmp, label %if.then, label %if.else, !dbg !90

if.then:                                          ; preds = %entry
  %1 = load i32* @have_partner, align 4, !dbg !93, !tbaa !91
  %tobool = icmp eq i32 %1, 0, !dbg !93
  br i1 %tobool, label %if.then2, label %if.end6, !dbg !93

if.then2:                                         ; preds = %if.then
  %add.ptr = getelementptr inbounds i8* %input, i64 1, !dbg !95
  %call = tail call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8]* @my_partner, i64 0, i64 0)) #9, !dbg !95
  store i32 1, i32* @have_partner, align 4, !dbg !97, !tbaa !91
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([68 x i8]* @str, i64 0, i64 0)) #1, !dbg !98
  %puts2.i = tail call i32 @puts(i8* getelementptr inbounds ([75 x i8]* @str84, i64 0, i64 0)) #1, !dbg !100
  %puts8 = tail call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str102, i64 0, i64 0)), !dbg !101
  %puts9 = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str87, i64 0, i64 0)), !dbg !102
  br label %if.end6, !dbg !103

if.else:                                          ; preds = %entry
  tail call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @my_partner, i64 0, i64 0), i8 0, i64 256, i32 16, i1 false), !dbg !104
  store i32 0, i32* @have_partner, align 4, !dbg !106, !tbaa !91
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str85, i64 0, i64 0)), !dbg !107
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then2, %if.else
  ret void, !dbg !108
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #4

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define void @HandlePtell(i8* %input) #0 {
entry:
  %howmuch = alloca [80 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %input}, i64 0, metadata !25), !dbg !109
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !26), !dbg !110
  %0 = getelementptr inbounds [80 x i8]* %howmuch, i64 0, i64 0, !dbg !111
  call void @llvm.lifetime.start(i64 80, i8* %0) #1, !dbg !111
  call void @llvm.dbg.declare(metadata !{[80 x i8]* %howmuch}, metadata !28), !dbg !111
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([80 x i8]* @HandlePtell.howmuch, i64 0, i64 0), i64 80, i32 16, i1 false), !dbg !111
  %add.ptr = getelementptr inbounds i8* %input, i64 6, !dbg !112
  %call = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i64 4) #10, !dbg !112
  %tobool = icmp eq i32 %call, 0, !dbg !112
  br i1 %tobool, label %if.then, label %if.end, !dbg !112

if.then:                                          ; preds = %entry
  %puts = call i32 @puts(i8* getelementptr inbounds ([146 x i8]* @str88, i64 0, i64 0)), !dbg !113
  br label %cleanup, !dbg !115

if.end:                                           ; preds = %entry
  %1 = load i32* @Variant, align 4, !dbg !116, !tbaa !117
  %cmp = icmp eq i32 %1, 1, !dbg !116
  br i1 %cmp, label %if.end7, label %land.lhs.true, !dbg !116

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0), i64 5) #10, !dbg !116
  %tobool4 = icmp eq i32 %call3, 0, !dbg !116
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !116

if.then5:                                         ; preds = %land.lhs.true
  %puts683 = call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str104, i64 0, i64 0)), !dbg !118
  br label %cleanup, !dbg !120

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %call9 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i64 3) #10, !dbg !121
  %tobool10 = icmp eq i32 %call9, 0, !dbg !121
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !121

if.then11:                                        ; preds = %if.end7
  %puts636 = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str89, i64 0, i64 0)), !dbg !122
  store i32 1, i32* @must_sit, align 4, !dbg !124, !tbaa !91
  store i32 0, i32* @must_go, align 4, !dbg !125, !tbaa !117
  br label %cleanup, !dbg !126

if.else:                                          ; preds = %if.end7
  %call14 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i64 2) #10, !dbg !127
  %tobool15 = icmp eq i32 %call14, 0, !dbg !127
  br i1 %tobool15, label %if.then19, label %lor.lhs.false, !dbg !127

lor.lhs.false:                                    ; preds = %if.else
  %call17 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i64 4) #10, !dbg !127
  %tobool18 = icmp eq i32 %call17, 0, !dbg !127
  br i1 %tobool18, label %if.then19, label %if.else21, !dbg !127

if.then19:                                        ; preds = %lor.lhs.false, %if.else
  %puts637 = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str90, i64 0, i64 0)), !dbg !128
  store i32 0, i32* @must_sit, align 4, !dbg !130, !tbaa !91
  store i32 4, i32* @must_go, align 4, !dbg !131, !tbaa !117
  br label %cleanup, !dbg !132

if.else21:                                        ; preds = %lor.lhs.false
  %call23 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i64 4) #10, !dbg !133
  %tobool24 = icmp eq i32 %call23, 0, !dbg !133
  br i1 %tobool24, label %if.then29, label %lor.lhs.false25, !dbg !133

lor.lhs.false25:                                  ; preds = %if.else21
  %call27 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i64 4) #10, !dbg !133
  %tobool28 = icmp eq i32 %call27, 0, !dbg !133
  br i1 %tobool28, label %if.then29, label %if.else31, !dbg !133

if.then29:                                        ; preds = %lor.lhs.false25, %if.else21
  %puts638 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str91, i64 0, i64 0)), !dbg !134
  store i32 1, i32* @go_fast, align 4, !dbg !136, !tbaa !91
  store i32 0, i32* @must_sit, align 4, !dbg !137, !tbaa !91
  br label %cleanup, !dbg !138

if.else31:                                        ; preds = %lor.lhs.false25
  %call33 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4) #10, !dbg !139
  %tobool34 = icmp eq i32 %call33, 0, !dbg !139
  br i1 %tobool34, label %if.then35, label %if.else37, !dbg !139

if.then35:                                        ; preds = %if.else31
  %puts639 = call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str92, i64 0, i64 0)), !dbg !140
  store i32 0, i32* @go_fast, align 4, !dbg !142, !tbaa !91
  store i32 0, i32* @must_sit, align 4, !dbg !143, !tbaa !91
  br label %cleanup, !dbg !144

if.else37:                                        ; preds = %if.else31
  %call39 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0), i64 5) #10, !dbg !145
  %tobool40 = icmp eq i32 %call39, 0, !dbg !145
  br i1 %tobool40, label %if.then41, label %if.else44, !dbg !145

if.then41:                                        ; preds = %if.else37
  %puts640 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str93, i64 0, i64 0)), !dbg !146
  %puts641 = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str94, i64 0, i64 0)), !dbg !148
  br label %cleanup, !dbg !149

if.else44:                                        ; preds = %if.else37
  %call46 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i64 4) #10, !dbg !150
  %tobool47 = icmp eq i32 %call46, 0, !dbg !150
  br i1 %tobool47, label %if.then48, label %if.else51, !dbg !150

if.then48:                                        ; preds = %if.else44
  %puts642 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str95, i64 0, i64 0)), !dbg !151
  %puts643 = call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str96, i64 0, i64 0)), !dbg !153
  br label %cleanup, !dbg !154

if.else51:                                        ; preds = %if.else44
  %lhsc = load i8* %add.ptr, align 1, !dbg !155
  switch i8 %lhsc, label %lor.lhs.false442 [
    i8 43, label %if.then55
    i8 45, label %if.then247
    i8 120, label %land.lhs.true458
  ], !dbg !155

if.then55:                                        ; preds = %if.else51
  %call57 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str27, i64 0, i64 0)) #10, !dbg !156
  %cmp58 = icmp eq i8* %call57, null, !dbg !156
  br i1 %cmp58, label %lor.lhs.false59, label %if.then87, !dbg !156

lor.lhs.false59:                                  ; preds = %if.then55
  %strchr = call i8* @strchr(i8* %add.ptr, i32 110), !dbg !158
  %cmp62 = icmp eq i8* %strchr, null, !dbg !158
  br i1 %cmp62, label %land.lhs.true63, label %if.else101, !dbg !158

land.lhs.true63:                                  ; preds = %lor.lhs.false59
  %strchr652 = call i8* @strchr(i8* %add.ptr, i32 98), !dbg !159
  %cmp66 = icmp eq i8* %strchr652, null, !dbg !159
  br i1 %cmp66, label %land.lhs.true67, label %if.else101, !dbg !159

land.lhs.true67:                                  ; preds = %land.lhs.true63
  %strchr653 = call i8* @strchr(i8* %add.ptr, i32 112), !dbg !160
  %cmp70 = icmp eq i8* %strchr653, null, !dbg !160
  br i1 %cmp70, label %land.lhs.true71, label %if.else101, !dbg !160

land.lhs.true71:                                  ; preds = %land.lhs.true67
  %strchr654 = call i8* @strchr(i8* %add.ptr, i32 114), !dbg !161
  %cmp74 = icmp eq i8* %strchr654, null, !dbg !161
  br i1 %cmp74, label %land.lhs.true75, label %if.else101, !dbg !161

land.lhs.true75:                                  ; preds = %land.lhs.true71
  %strchr655 = call i8* @strchr(i8* %add.ptr, i32 113), !dbg !162
  %cmp78 = icmp eq i8* %strchr655, null, !dbg !162
  br i1 %cmp78, label %land.lhs.true79, label %if.else101, !dbg !162

land.lhs.true79:                                  ; preds = %land.lhs.true75
  %strchr656 = call i8* @strchr(i8* %add.ptr, i32 100), !dbg !163
  %cmp82 = icmp eq i8* %strchr656, null, !dbg !163
  br i1 %cmp82, label %land.lhs.true83, label %if.else101, !dbg !163

land.lhs.true83:                                  ; preds = %land.lhs.true79
  %strchr657 = call i8* @strchr(i8* %add.ptr, i32 104), !dbg !164
  %cmp86 = icmp eq i8* %strchr657, null, !dbg !164
  br i1 %cmp86, label %if.then87, label %if.else101, !dbg !164

if.then87:                                        ; preds = %if.then55, %land.lhs.true83
  %2 = load i32* @comp_color, align 4, !dbg !165, !tbaa !117
  %cmp88 = icmp eq i32 %2, 1, !dbg !165
  br i1 %cmp88, label %if.then89, label %if.else94, !dbg !165

if.then89:                                        ; preds = %if.then87
  %3 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !167, !tbaa !117
  %add = add nsw i32 %3, 25, !dbg !167
  store i32 %add, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !167, !tbaa !117
  %4 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !dbg !169, !tbaa !117
  %add90 = add nsw i32 %4, 50, !dbg !169
  store i32 %add90, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !dbg !169, !tbaa !117
  %5 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !170, !tbaa !117
  %add91 = add nsw i32 %5, 50, !dbg !170
  store i32 %add91, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !170, !tbaa !117
  %6 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !171, !tbaa !117
  %add92 = add nsw i32 %6, 50, !dbg !171
  store i32 %add92, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !171, !tbaa !117
  %7 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !172, !tbaa !117
  %add93 = add nsw i32 %7, 100, !dbg !172
  store i32 %add93, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !172, !tbaa !117
  br label %if.end99, !dbg !173

if.else94:                                        ; preds = %if.then87
  %8 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !174, !tbaa !117
  %sub = add nsw i32 %8, -25, !dbg !174
  store i32 %sub, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !174, !tbaa !117
  %9 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !dbg !176, !tbaa !117
  %sub95 = add nsw i32 %9, -50, !dbg !176
  store i32 %sub95, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !dbg !176, !tbaa !117
  %10 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !177, !tbaa !117
  %sub96 = add nsw i32 %10, -50, !dbg !177
  store i32 %sub96, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !177, !tbaa !117
  %11 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !178, !tbaa !117
  %sub97 = add nsw i32 %11, -50, !dbg !178
  store i32 %sub97, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !178, !tbaa !117
  %12 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !179, !tbaa !117
  %sub98 = add nsw i32 %12, -100, !dbg !179
  store i32 %sub98, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !179, !tbaa !117
  br label %if.end99

if.end99:                                         ; preds = %if.else94, %if.then89
  %puts658 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str97, i64 0, i64 0)), !dbg !180
  br label %if.end125, !dbg !181

if.else101:                                       ; preds = %land.lhs.true83, %land.lhs.true79, %land.lhs.true75, %land.lhs.true71, %land.lhs.true67, %land.lhs.true63, %lor.lhs.false59
  %call103 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0)) #10, !dbg !182
  %cmp104 = icmp eq i8* %call103, null, !dbg !182
  br i1 %cmp104, label %if.else107, label %if.then105, !dbg !182

if.then105:                                       ; preds = %if.else101
  call void @llvm.dbg.value(metadata !183, i64 0, metadata !26), !dbg !184
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !186
  br label %if.end125, !dbg !187

if.else107:                                       ; preds = %if.else101
  %call109 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0)) #10, !dbg !188
  %cmp110 = icmp eq i8* %call109, null, !dbg !188
  br i1 %cmp110, label %if.else114, label %if.then111, !dbg !188

if.then111:                                       ; preds = %if.else107
  call void @llvm.dbg.value(metadata !189, i64 0, metadata !26), !dbg !190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([49 x i8]* @.str39, i64 0, i64 0), i64 49, i32 1, i1 false), !dbg !192
  br label %if.end125, !dbg !193

if.else114:                                       ; preds = %if.else107
  %strchr644 = call i8* @strchr(i8* %add.ptr, i32 43), !dbg !194
  %cmp117 = icmp eq i8* %strchr644, null, !dbg !194
  br i1 %cmp117, label %if.else121, label %if.then118, !dbg !194

if.then118:                                       ; preds = %if.else114
  call void @llvm.dbg.value(metadata !195, i64 0, metadata !26), !dbg !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([44 x i8]* @.str40, i64 0, i64 0), i64 44, i32 1, i1 false), !dbg !198
  br label %if.end125

if.else121:                                       ; preds = %if.else114
  call void @llvm.trap(), !dbg !199
  unreachable

if.end125:                                        ; preds = %if.then105, %if.then118, %if.then111, %if.end99
  %change.0 = phi i32 [ 0, %if.end99 ], [ 50000, %if.then105 ], [ 1000, %if.then111 ], [ 150, %if.then118 ]
  %strchr645 = call i8* @strchr(i8* %add.ptr, i32 110), !dbg !200
  %cmp128 = icmp eq i8* %strchr645, null, !dbg !200
  br i1 %cmp128, label %if.end138, label %if.then129, !dbg !200

if.then129:                                       ; preds = %if.end125
  %13 = load i32* @comp_color, align 4, !dbg !201, !tbaa !117
  %cmp130 = icmp eq i32 %13, 1, !dbg !201
  br i1 %cmp130, label %if.then131, label %if.else133, !dbg !201

if.then131:                                       ; preds = %if.then129
  %14 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 3), align 4, !dbg !203, !tbaa !117
  %add132 = add nsw i32 %14, %change.0, !dbg !203
  store i32 %add132, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !dbg !203, !tbaa !117
  br label %if.end135, !dbg !203

if.else133:                                       ; preds = %if.then129
  %15 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 4), align 16, !dbg !204, !tbaa !117
  %sub134 = sub nsw i32 %15, %change.0, !dbg !204
  store i32 %sub134, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !dbg !204, !tbaa !117
  br label %if.end135

if.end135:                                        ; preds = %if.else133, %if.then131
  %call137 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str41, i64 0, i64 0), i8* %0) #9, !dbg !205
  br label %if.end138, !dbg !206

if.end138:                                        ; preds = %if.end125, %if.end135
  %strchr646 = call i8* @strchr(i8* %add.ptr, i32 98), !dbg !207
  %cmp141 = icmp eq i8* %strchr646, null, !dbg !207
  br i1 %cmp141, label %if.end157, label %if.then142, !dbg !207

if.then142:                                       ; preds = %if.end138
  %16 = load i32* @comp_color, align 4, !dbg !208, !tbaa !117
  %cmp143 = icmp eq i32 %16, 1, !dbg !208
  br i1 %cmp143, label %if.then150, label %if.else152, !dbg !208

if.then150:                                       ; preds = %if.then142
  %17 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !dbg !210, !tbaa !117
  %add145 = add nsw i32 %17, %change.0, !dbg !210
  store i32 %add145, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !210, !tbaa !117
  %18 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !211, !tbaa !117
  %add151 = add nsw i32 %18, %change.0, !dbg !211
  store i32 %add151, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !211, !tbaa !117
  br label %if.end154, !dbg !211

if.else152:                                       ; preds = %if.then142
  %19 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !dbg !212, !tbaa !117
  %sub147 = sub nsw i32 %19, %change.0, !dbg !212
  store i32 %sub147, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !212, !tbaa !117
  %20 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !213, !tbaa !117
  %sub153 = sub nsw i32 %20, %change.0, !dbg !213
  store i32 %sub153, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !213, !tbaa !117
  br label %if.end154

if.end154:                                        ; preds = %if.else152, %if.then150
  %call156 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str42, i64 0, i64 0), i8* %0) #9, !dbg !214
  br label %if.end157, !dbg !215

if.end157:                                        ; preds = %if.end138, %if.end154
  %strchr647 = call i8* @strchr(i8* %add.ptr, i32 114), !dbg !216
  %cmp160 = icmp eq i8* %strchr647, null, !dbg !216
  br i1 %cmp160, label %if.end176, label %if.then161, !dbg !216

if.then161:                                       ; preds = %if.end157
  %21 = load i32* @comp_color, align 4, !dbg !217, !tbaa !117
  %cmp162 = icmp eq i32 %21, 1, !dbg !217
  br i1 %cmp162, label %if.then169, label %if.else171, !dbg !217

if.then169:                                       ; preds = %if.then161
  %22 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 7), align 4, !dbg !219, !tbaa !117
  %add164 = add nsw i32 %22, %change.0, !dbg !219
  store i32 %add164, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !219, !tbaa !117
  %23 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !220, !tbaa !117
  %add170 = add nsw i32 %23, %change.0, !dbg !220
  store i32 %add170, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !220, !tbaa !117
  br label %if.end173, !dbg !220

if.else171:                                       ; preds = %if.then161
  %24 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 8), align 16, !dbg !221, !tbaa !117
  %sub166 = sub nsw i32 %24, %change.0, !dbg !221
  store i32 %sub166, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !221, !tbaa !117
  %25 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !222, !tbaa !117
  %sub172 = sub nsw i32 %25, %change.0, !dbg !222
  store i32 %sub172, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !222, !tbaa !117
  br label %if.end173

if.end173:                                        ; preds = %if.else171, %if.then169
  %call175 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0), i8* %0) #9, !dbg !223
  br label %if.end176, !dbg !224

if.end176:                                        ; preds = %if.end157, %if.end173
  %strchr648 = call i8* @strchr(i8* %add.ptr, i32 113), !dbg !225
  %cmp179 = icmp eq i8* %strchr648, null, !dbg !225
  br i1 %cmp179, label %if.end189, label %if.then180, !dbg !225

if.then180:                                       ; preds = %if.end176
  %26 = load i32* @comp_color, align 4, !dbg !226, !tbaa !117
  %cmp181 = icmp eq i32 %26, 1, !dbg !226
  br i1 %cmp181, label %if.then182, label %if.else184, !dbg !226

if.then182:                                       ; preds = %if.then180
  %27 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !228, !tbaa !117
  %add183 = add nsw i32 %27, %change.0, !dbg !228
  store i32 %add183, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !228, !tbaa !117
  br label %if.end186, !dbg !228

if.else184:                                       ; preds = %if.then180
  %28 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !229, !tbaa !117
  %sub185 = sub nsw i32 %28, %change.0, !dbg !229
  store i32 %sub185, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !229, !tbaa !117
  br label %if.end186

if.end186:                                        ; preds = %if.else184, %if.then182
  %call188 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str44, i64 0, i64 0), i8* %0) #9, !dbg !230
  br label %if.end189, !dbg !231

if.end189:                                        ; preds = %if.end176, %if.end186
  %strchr649 = call i8* @strchr(i8* %add.ptr, i32 112), !dbg !232
  %cmp192 = icmp eq i8* %strchr649, null, !dbg !232
  br i1 %cmp192, label %if.end210, label %if.then193, !dbg !232

if.then193:                                       ; preds = %if.end189
  %29 = load i32* @comp_color, align 4, !dbg !233, !tbaa !117
  %cmp194 = icmp eq i32 %29, 1, !dbg !233
  br i1 %cmp194, label %if.then201, label %if.else204, !dbg !233

if.then201:                                       ; preds = %if.then193
  %30 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 1), align 4, !dbg !235, !tbaa !117
  %add196 = add nsw i32 %30, %change.0, !dbg !235
  store i32 %add196, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !235, !tbaa !117
  %31 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !236, !tbaa !117
  %add202 = add nsw i32 %31, %change.0, !dbg !236
  store i32 %add202, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !236, !tbaa !117
  %32 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !dbg !238, !tbaa !117
  %add203 = add nsw i32 %32, %change.0, !dbg !238
  store i32 %add203, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !238, !tbaa !117
  br label %if.end207, !dbg !239

if.else204:                                       ; preds = %if.then193
  %33 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 2), align 8, !dbg !240, !tbaa !117
  %sub198 = sub nsw i32 %33, %change.0, !dbg !240
  store i32 %sub198, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !240, !tbaa !117
  %34 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !241, !tbaa !117
  %sub205 = sub nsw i32 %34, %change.0, !dbg !241
  store i32 %sub205, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !241, !tbaa !117
  %35 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !dbg !243, !tbaa !117
  %sub206 = sub nsw i32 %35, %change.0, !dbg !243
  store i32 %sub206, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !243, !tbaa !117
  br label %if.end207

if.end207:                                        ; preds = %if.else204, %if.then201
  %call209 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str45, i64 0, i64 0), i8* %0) #9, !dbg !244
  br label %if.end210, !dbg !245

if.end210:                                        ; preds = %if.end189, %if.end207
  %strchr650 = call i8* @strchr(i8* %add.ptr, i32 100), !dbg !246
  %cmp213 = icmp eq i8* %strchr650, null, !dbg !246
  br i1 %cmp213, label %if.end227, label %if.then214, !dbg !246

if.then214:                                       ; preds = %if.end210
  %36 = load i32* @comp_color, align 4, !dbg !247, !tbaa !117
  %cmp215 = icmp eq i32 %36, 1, !dbg !247
  br i1 %cmp215, label %if.then216, label %if.else220, !dbg !247

if.then216:                                       ; preds = %if.then214
  %37 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 1), align 4, !dbg !249, !tbaa !117
  %add217 = add nsw i32 %37, %change.0, !dbg !249
  store i32 %add217, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !249, !tbaa !117
  %38 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !dbg !251, !tbaa !117
  %add218 = add nsw i32 %38, %change.0, !dbg !251
  store i32 %add218, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !251, !tbaa !117
  %39 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !252, !tbaa !117
  %add219 = add nsw i32 %39, %change.0, !dbg !252
  store i32 %add219, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !252, !tbaa !117
  br label %if.end224, !dbg !253

if.else220:                                       ; preds = %if.then214
  %40 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 2), align 8, !dbg !254, !tbaa !117
  %sub221 = sub nsw i32 %40, %change.0, !dbg !254
  store i32 %sub221, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !254, !tbaa !117
  %41 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !dbg !256, !tbaa !117
  %sub222 = sub nsw i32 %41, %change.0, !dbg !256
  store i32 %sub222, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !256, !tbaa !117
  %42 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !257, !tbaa !117
  %sub223 = sub nsw i32 %42, %change.0, !dbg !257
  store i32 %sub223, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !257, !tbaa !117
  br label %if.end224

if.end224:                                        ; preds = %if.else220, %if.then216
  %call226 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str46, i64 0, i64 0), i8* %0) #9, !dbg !258
  br label %if.end227, !dbg !259

if.end227:                                        ; preds = %if.end210, %if.end224
  %strchr651 = call i8* @strchr(i8* %add.ptr, i32 104), !dbg !260
  %cmp230 = icmp eq i8* %strchr651, null, !dbg !260
  br i1 %cmp230, label %cleanup, label %if.then231, !dbg !260

if.then231:                                       ; preds = %if.end227
  %43 = load i32* @comp_color, align 4, !dbg !261, !tbaa !117
  %cmp232 = icmp eq i32 %43, 1, !dbg !261
  br i1 %cmp232, label %if.then233, label %if.else236, !dbg !261

if.then233:                                       ; preds = %if.then231
  %44 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 7), align 4, !dbg !263, !tbaa !117
  %add234 = add nsw i32 %44, %change.0, !dbg !263
  store i32 %add234, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !263, !tbaa !117
  %45 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !265, !tbaa !117
  %add235 = add nsw i32 %45, %change.0, !dbg !265
  store i32 %add235, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !265, !tbaa !117
  br label %if.end239, !dbg !266

if.else236:                                       ; preds = %if.then231
  %46 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 8), align 16, !dbg !267, !tbaa !117
  %sub237 = sub nsw i32 %46, %change.0, !dbg !267
  store i32 %sub237, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !267, !tbaa !117
  %47 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !269, !tbaa !117
  %sub238 = sub nsw i32 %47, %change.0, !dbg !269
  store i32 %sub238, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !269, !tbaa !117
  br label %if.end239

if.end239:                                        ; preds = %if.else236, %if.then233
  %call241 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str47, i64 0, i64 0), i8* %0) #9, !dbg !270
  br label %cleanup, !dbg !271

if.then247:                                       ; preds = %if.else51
  %call249 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str27, i64 0, i64 0)) #10, !dbg !272
  %cmp250 = icmp eq i8* %call249, null, !dbg !272
  br i1 %cmp250, label %lor.lhs.false251, label %if.then279, !dbg !272

lor.lhs.false251:                                 ; preds = %if.then247
  %strchr660 = call i8* @strchr(i8* %add.ptr, i32 110), !dbg !274
  %cmp254 = icmp eq i8* %strchr660, null, !dbg !274
  br i1 %cmp254, label %land.lhs.true255, label %if.else295, !dbg !274

land.lhs.true255:                                 ; preds = %lor.lhs.false251
  %strchr669 = call i8* @strchr(i8* %add.ptr, i32 98), !dbg !275
  %cmp258 = icmp eq i8* %strchr669, null, !dbg !275
  br i1 %cmp258, label %land.lhs.true259, label %if.else295, !dbg !275

land.lhs.true259:                                 ; preds = %land.lhs.true255
  %strchr670 = call i8* @strchr(i8* %add.ptr, i32 112), !dbg !276
  %cmp262 = icmp eq i8* %strchr670, null, !dbg !276
  br i1 %cmp262, label %land.lhs.true263, label %if.else295, !dbg !276

land.lhs.true263:                                 ; preds = %land.lhs.true259
  %strchr671 = call i8* @strchr(i8* %add.ptr, i32 114), !dbg !277
  %cmp266 = icmp eq i8* %strchr671, null, !dbg !277
  br i1 %cmp266, label %land.lhs.true267, label %if.else295, !dbg !277

land.lhs.true267:                                 ; preds = %land.lhs.true263
  %strchr672 = call i8* @strchr(i8* %add.ptr, i32 113), !dbg !278
  %cmp270 = icmp eq i8* %strchr672, null, !dbg !278
  br i1 %cmp270, label %land.lhs.true271, label %if.else295, !dbg !278

land.lhs.true271:                                 ; preds = %land.lhs.true267
  %strchr673 = call i8* @strchr(i8* %add.ptr, i32 100), !dbg !279
  %cmp274 = icmp eq i8* %strchr673, null, !dbg !279
  br i1 %cmp274, label %land.lhs.true275, label %if.else295, !dbg !279

land.lhs.true275:                                 ; preds = %land.lhs.true271
  %strchr674 = call i8* @strchr(i8* %add.ptr, i32 104), !dbg !280
  %cmp278 = icmp eq i8* %strchr674, null, !dbg !280
  br i1 %cmp278, label %if.then279, label %if.else295, !dbg !280

if.then279:                                       ; preds = %if.then247, %land.lhs.true275
  %48 = load i32* @comp_color, align 4, !dbg !281, !tbaa !117
  %cmp280 = icmp eq i32 %48, 1, !dbg !281
  br i1 %cmp280, label %if.then281, label %if.else287, !dbg !281

if.then281:                                       ; preds = %if.then279
  %49 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !283, !tbaa !117
  %sub282 = add nsw i32 %49, -20, !dbg !283
  store i32 %sub282, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !283, !tbaa !117
  %50 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !dbg !285, !tbaa !117
  %sub283 = add nsw i32 %50, -50, !dbg !285
  store i32 %sub283, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !dbg !285, !tbaa !117
  %51 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !286, !tbaa !117
  %sub284 = add nsw i32 %51, -50, !dbg !286
  store i32 %sub284, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !286, !tbaa !117
  %52 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !287, !tbaa !117
  %sub285 = add nsw i32 %52, -50, !dbg !287
  store i32 %sub285, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !287, !tbaa !117
  %53 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !288, !tbaa !117
  %sub286 = add nsw i32 %53, -100, !dbg !288
  store i32 %sub286, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !288, !tbaa !117
  br label %if.end293, !dbg !289

if.else287:                                       ; preds = %if.then279
  %54 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !290, !tbaa !117
  %add288 = add nsw i32 %54, 20, !dbg !290
  store i32 %add288, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !290, !tbaa !117
  %55 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !dbg !292, !tbaa !117
  %add289 = add nsw i32 %55, 50, !dbg !292
  store i32 %add289, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !dbg !292, !tbaa !117
  %56 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !293, !tbaa !117
  %add290 = add nsw i32 %56, 50, !dbg !293
  store i32 %add290, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !293, !tbaa !117
  %57 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !294, !tbaa !117
  %add291 = add nsw i32 %57, 50, !dbg !294
  store i32 %add291, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !294, !tbaa !117
  %58 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !295, !tbaa !117
  %add292 = add nsw i32 %58, 100, !dbg !295
  store i32 %add292, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !295, !tbaa !117
  br label %if.end293

if.end293:                                        ; preds = %if.else287, %if.then281
  %puts675 = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str98, i64 0, i64 0)), !dbg !296
  br label %if.end320, !dbg !297

if.else295:                                       ; preds = %land.lhs.true275, %land.lhs.true271, %land.lhs.true267, %land.lhs.true263, %land.lhs.true259, %land.lhs.true255, %lor.lhs.false251
  %call297 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str50, i64 0, i64 0)) #10, !dbg !298
  %cmp298 = icmp eq i8* %call297, null, !dbg !298
  br i1 %cmp298, label %if.else302, label %if.then299, !dbg !298

if.then299:                                       ; preds = %if.else295
  call void @llvm.dbg.value(metadata !183, i64 0, metadata !26), !dbg !299
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([53 x i8]* @.str51, i64 0, i64 0), i64 53, i32 1, i1 false), !dbg !301
  br label %if.end320, !dbg !302

if.else302:                                       ; preds = %if.else295
  %call304 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str52, i64 0, i64 0)) #10, !dbg !303
  %cmp305 = icmp eq i8* %call304, null, !dbg !303
  br i1 %cmp305, label %if.else309, label %if.then306, !dbg !303

if.then306:                                       ; preds = %if.else302
  call void @llvm.dbg.value(metadata !189, i64 0, metadata !26), !dbg !304
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([52 x i8]* @.str53, i64 0, i64 0), i64 52, i32 1, i1 false), !dbg !306
  br label %if.end320, !dbg !307

if.else309:                                       ; preds = %if.else302
  %strchr661 = call i8* @strchr(i8* %add.ptr, i32 45), !dbg !308
  %cmp312 = icmp eq i8* %strchr661, null, !dbg !308
  br i1 %cmp312, label %if.else316, label %if.then313, !dbg !308

if.then313:                                       ; preds = %if.else309
  call void @llvm.dbg.value(metadata !195, i64 0, metadata !26), !dbg !309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([47 x i8]* @.str54, i64 0, i64 0), i64 47, i32 1, i1 false), !dbg !311
  br label %if.end320

if.else316:                                       ; preds = %if.else309
  call void @llvm.trap(), !dbg !312
  unreachable

if.end320:                                        ; preds = %if.then299, %if.then313, %if.then306, %if.end293
  %change.1 = phi i32 [ 0, %if.end293 ], [ 50000, %if.then299 ], [ 1000, %if.then306 ], [ 150, %if.then313 ]
  %strchr662 = call i8* @strchr(i8* %add.ptr, i32 110), !dbg !313
  %cmp323 = icmp eq i8* %strchr662, null, !dbg !313
  br i1 %cmp323, label %if.end333, label %if.then324, !dbg !313

if.then324:                                       ; preds = %if.end320
  %59 = load i32* @comp_color, align 4, !dbg !314, !tbaa !117
  %cmp325 = icmp eq i32 %59, 1, !dbg !314
  br i1 %cmp325, label %if.then326, label %if.else328, !dbg !314

if.then326:                                       ; preds = %if.then324
  %60 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 4), align 16, !dbg !316, !tbaa !117
  %sub327 = sub nsw i32 %60, %change.1, !dbg !316
  store i32 %sub327, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !dbg !316, !tbaa !117
  br label %if.end330, !dbg !316

if.else328:                                       ; preds = %if.then324
  %61 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 3), align 4, !dbg !317, !tbaa !117
  %add329 = add nsw i32 %61, %change.1, !dbg !317
  store i32 %add329, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !dbg !317, !tbaa !117
  br label %if.end330

if.end330:                                        ; preds = %if.else328, %if.then326
  %call332 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str41, i64 0, i64 0), i8* %0) #9, !dbg !318
  br label %if.end333, !dbg !319

if.end333:                                        ; preds = %if.end320, %if.end330
  %strchr663 = call i8* @strchr(i8* %add.ptr, i32 98), !dbg !320
  %cmp336 = icmp eq i8* %strchr663, null, !dbg !320
  br i1 %cmp336, label %if.end352, label %if.then337, !dbg !320

if.then337:                                       ; preds = %if.end333
  %62 = load i32* @comp_color, align 4, !dbg !321, !tbaa !117
  %cmp338 = icmp eq i32 %62, 1, !dbg !321
  br i1 %cmp338, label %if.then345, label %if.else347, !dbg !321

if.then345:                                       ; preds = %if.then337
  %63 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !dbg !323, !tbaa !117
  %sub340 = sub nsw i32 %63, %change.1, !dbg !323
  store i32 %sub340, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !323, !tbaa !117
  %64 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !324, !tbaa !117
  %sub346 = sub nsw i32 %64, %change.1, !dbg !324
  store i32 %sub346, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !324, !tbaa !117
  br label %if.end349, !dbg !324

if.else347:                                       ; preds = %if.then337
  %65 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !dbg !325, !tbaa !117
  %add342 = add nsw i32 %65, %change.1, !dbg !325
  store i32 %add342, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !325, !tbaa !117
  %66 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !326, !tbaa !117
  %add348 = add nsw i32 %66, %change.1, !dbg !326
  store i32 %add348, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !326, !tbaa !117
  br label %if.end349

if.end349:                                        ; preds = %if.else347, %if.then345
  %call351 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str42, i64 0, i64 0), i8* %0) #9, !dbg !327
  br label %if.end352, !dbg !328

if.end352:                                        ; preds = %if.end333, %if.end349
  %strchr664 = call i8* @strchr(i8* %add.ptr, i32 114), !dbg !329
  %cmp355 = icmp eq i8* %strchr664, null, !dbg !329
  br i1 %cmp355, label %if.end371, label %if.then356, !dbg !329

if.then356:                                       ; preds = %if.end352
  %67 = load i32* @comp_color, align 4, !dbg !330, !tbaa !117
  %cmp357 = icmp eq i32 %67, 1, !dbg !330
  br i1 %cmp357, label %if.then364, label %if.else366, !dbg !330

if.then364:                                       ; preds = %if.then356
  %68 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 8), align 16, !dbg !332, !tbaa !117
  %sub359 = sub nsw i32 %68, %change.1, !dbg !332
  store i32 %sub359, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !332, !tbaa !117
  %69 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !333, !tbaa !117
  %sub365 = sub nsw i32 %69, %change.1, !dbg !333
  store i32 %sub365, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !333, !tbaa !117
  br label %if.end368, !dbg !333

if.else366:                                       ; preds = %if.then356
  %70 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 7), align 4, !dbg !334, !tbaa !117
  %add361 = add nsw i32 %70, %change.1, !dbg !334
  store i32 %add361, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !334, !tbaa !117
  %71 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !335, !tbaa !117
  %add367 = add nsw i32 %71, %change.1, !dbg !335
  store i32 %add367, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !335, !tbaa !117
  br label %if.end368

if.end368:                                        ; preds = %if.else366, %if.then364
  %call370 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0), i8* %0) #9, !dbg !336
  br label %if.end371, !dbg !337

if.end371:                                        ; preds = %if.end352, %if.end368
  %strchr665 = call i8* @strchr(i8* %add.ptr, i32 113), !dbg !338
  %cmp374 = icmp eq i8* %strchr665, null, !dbg !338
  br i1 %cmp374, label %if.end384, label %if.then375, !dbg !338

if.then375:                                       ; preds = %if.end371
  %72 = load i32* @comp_color, align 4, !dbg !339, !tbaa !117
  %cmp376 = icmp eq i32 %72, 1, !dbg !339
  br i1 %cmp376, label %if.then377, label %if.else379, !dbg !339

if.then377:                                       ; preds = %if.then375
  %73 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !341, !tbaa !117
  %sub378 = sub nsw i32 %73, %change.1, !dbg !341
  store i32 %sub378, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !341, !tbaa !117
  br label %if.end381, !dbg !341

if.else379:                                       ; preds = %if.then375
  %74 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !342, !tbaa !117
  %add380 = add nsw i32 %74, %change.1, !dbg !342
  store i32 %add380, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !342, !tbaa !117
  br label %if.end381

if.end381:                                        ; preds = %if.else379, %if.then377
  %call383 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str44, i64 0, i64 0), i8* %0) #9, !dbg !343
  br label %if.end384, !dbg !344

if.end384:                                        ; preds = %if.end371, %if.end381
  %strchr666 = call i8* @strchr(i8* %add.ptr, i32 112), !dbg !345
  %cmp387 = icmp eq i8* %strchr666, null, !dbg !345
  br i1 %cmp387, label %if.end405, label %if.then388, !dbg !345

if.then388:                                       ; preds = %if.end384
  %75 = load i32* @comp_color, align 4, !dbg !346, !tbaa !117
  %cmp389 = icmp eq i32 %75, 1, !dbg !346
  br i1 %cmp389, label %if.then396, label %if.else399, !dbg !346

if.then396:                                       ; preds = %if.then388
  %76 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 2), align 8, !dbg !348, !tbaa !117
  %sub391 = sub nsw i32 %76, %change.1, !dbg !348
  store i32 %sub391, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !348, !tbaa !117
  %77 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !349, !tbaa !117
  %sub397 = sub nsw i32 %77, %change.1, !dbg !349
  store i32 %sub397, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !349, !tbaa !117
  %78 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !dbg !351, !tbaa !117
  %sub398 = sub nsw i32 %78, %change.1, !dbg !351
  store i32 %sub398, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !351, !tbaa !117
  br label %if.end402, !dbg !352

if.else399:                                       ; preds = %if.then388
  %79 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 1), align 4, !dbg !353, !tbaa !117
  %add393 = add nsw i32 %79, %change.1, !dbg !353
  store i32 %add393, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !353, !tbaa !117
  %80 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !354, !tbaa !117
  %add400 = add nsw i32 %80, %change.1, !dbg !354
  store i32 %add400, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !354, !tbaa !117
  %81 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !dbg !356, !tbaa !117
  %add401 = add nsw i32 %81, %change.1, !dbg !356
  store i32 %add401, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !356, !tbaa !117
  br label %if.end402

if.end402:                                        ; preds = %if.else399, %if.then396
  %call404 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str45, i64 0, i64 0), i8* %0) #9, !dbg !357
  br label %if.end405, !dbg !358

if.end405:                                        ; preds = %if.end384, %if.end402
  %strchr667 = call i8* @strchr(i8* %add.ptr, i32 100), !dbg !359
  %cmp408 = icmp eq i8* %strchr667, null, !dbg !359
  br i1 %cmp408, label %if.end422, label %if.then409, !dbg !359

if.then409:                                       ; preds = %if.end405
  %82 = load i32* @comp_color, align 4, !dbg !360, !tbaa !117
  %cmp410 = icmp eq i32 %82, 1, !dbg !360
  br i1 %cmp410, label %if.then411, label %if.else415, !dbg !360

if.then411:                                       ; preds = %if.then409
  %83 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 2), align 8, !dbg !362, !tbaa !117
  %sub412 = sub nsw i32 %83, %change.1, !dbg !362
  store i32 %sub412, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !dbg !362, !tbaa !117
  %84 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !dbg !364, !tbaa !117
  %sub413 = sub nsw i32 %84, %change.1, !dbg !364
  store i32 %sub413, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !dbg !364, !tbaa !117
  %85 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !365, !tbaa !117
  %sub414 = sub nsw i32 %85, %change.1, !dbg !365
  store i32 %sub414, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !365, !tbaa !117
  br label %if.end419, !dbg !366

if.else415:                                       ; preds = %if.then409
  %86 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 1), align 4, !dbg !367, !tbaa !117
  %add416 = add nsw i32 %86, %change.1, !dbg !367
  store i32 %add416, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !dbg !367, !tbaa !117
  %87 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !dbg !369, !tbaa !117
  %add417 = add nsw i32 %87, %change.1, !dbg !369
  store i32 %add417, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !dbg !369, !tbaa !117
  %88 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !370, !tbaa !117
  %add418 = add nsw i32 %88, %change.1, !dbg !370
  store i32 %add418, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !370, !tbaa !117
  br label %if.end419

if.end419:                                        ; preds = %if.else415, %if.then411
  %call421 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str46, i64 0, i64 0), i8* %0) #9, !dbg !371
  br label %if.end422, !dbg !372

if.end422:                                        ; preds = %if.end405, %if.end419
  %strchr668 = call i8* @strchr(i8* %add.ptr, i32 104), !dbg !373
  %cmp425 = icmp eq i8* %strchr668, null, !dbg !373
  br i1 %cmp425, label %cleanup, label %if.then426, !dbg !373

if.then426:                                       ; preds = %if.end422
  %89 = load i32* @comp_color, align 4, !dbg !374, !tbaa !117
  %cmp427 = icmp eq i32 %89, 1, !dbg !374
  br i1 %cmp427, label %if.then428, label %if.else431, !dbg !374

if.then428:                                       ; preds = %if.then426
  %90 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 8), align 16, !dbg !376, !tbaa !117
  %sub429 = sub nsw i32 %90, %change.1, !dbg !376
  store i32 %sub429, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !dbg !376, !tbaa !117
  %91 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !dbg !378, !tbaa !117
  %sub430 = sub nsw i32 %91, %change.1, !dbg !378
  store i32 %sub430, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !dbg !378, !tbaa !117
  br label %if.end434, !dbg !379

if.else431:                                       ; preds = %if.then426
  %92 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 7), align 4, !dbg !380, !tbaa !117
  %add432 = add nsw i32 %92, %change.1, !dbg !380
  store i32 %add432, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !dbg !380, !tbaa !117
  %93 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !dbg !382, !tbaa !117
  %add433 = add nsw i32 %93, %change.1, !dbg !382
  store i32 %add433, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !dbg !382, !tbaa !117
  br label %if.end434

if.end434:                                        ; preds = %if.else431, %if.then428
  %call436 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str47, i64 0, i64 0), i8* %0) #9, !dbg !383
  br label %cleanup, !dbg !384

lor.lhs.false442:                                 ; preds = %if.else51
  %call444 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([16 x i8]* @.str56, i64 0, i64 0)) #10, !dbg !385
  %cmp445 = icmp eq i8* %call444, null, !dbg !385
  br i1 %cmp445, label %lor.lhs.false446, label %land.lhs.true458, !dbg !385

lor.lhs.false446:                                 ; preds = %lor.lhs.false442
  %call448 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0)) #10, !dbg !386
  %cmp449 = icmp eq i8* %call448, null, !dbg !386
  br i1 %cmp449, label %lor.lhs.false454, label %land.lhs.true450, !dbg !386

land.lhs.true450:                                 ; preds = %lor.lhs.false446
  %call452 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str58, i64 0, i64 0)) #10, !dbg !386
  %cmp453 = icmp ne i8* %call452, null, !dbg !386
  %tobool457 = icmp eq i8 %lhsc, 61, !dbg !387
  %or.cond = or i1 %cmp453, %tobool457, !dbg !386
  br i1 %or.cond, label %land.lhs.true458, label %if.else464, !dbg !386

lor.lhs.false454:                                 ; preds = %lor.lhs.false446
  %tobool457.old = icmp eq i8 %lhsc, 61, !dbg !387
  br i1 %tobool457.old, label %land.lhs.true458, label %if.else464, !dbg !387

land.lhs.true458:                                 ; preds = %land.lhs.true450, %if.else51, %lor.lhs.false454, %lor.lhs.false442
  %call460 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([9 x i8]* @.str60, i64 0, i64 0)) #10, !dbg !387
  %cmp461 = icmp eq i8* %call460, null, !dbg !387
  br i1 %cmp461, label %if.then462, label %if.else464, !dbg !387

if.then462:                                       ; preds = %land.lhs.true458
  %puts681 = call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str103, i64 0, i64 0)), !dbg !388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([13 x i32]* @hand_value to i8*), i8* bitcast ([13 x i32]* @std_hand_value to i8*), i64 52, i32 16, i1 false) #1, !dbg !390
  store i32 0, i32* @must_sit, align 4, !dbg !392, !tbaa !91
  store i32 0, i32* @partnerdead, align 4, !dbg !393, !tbaa !91
  store i32 0, i32* @piecedead, align 4, !dbg !394, !tbaa !91
  br label %cleanup, !dbg !395

if.else464:                                       ; preds = %land.lhs.true450, %lor.lhs.false454, %land.lhs.true458
  %call466 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([26 x i8]* @.str62, i64 0, i64 0), i64 25) #10, !dbg !396
  %tobool467 = icmp eq i32 %call466, 0, !dbg !396
  br i1 %tobool467, label %if.then472, label %lor.lhs.false468, !dbg !396

lor.lhs.false468:                                 ; preds = %if.else464
  %call470 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str63, i64 0, i64 0), i64 4) #10, !dbg !397
  %tobool471 = icmp eq i32 %call470, 0, !dbg !397
  br i1 %tobool471, label %if.then472, label %if.else473, !dbg !397

if.then472:                                       ; preds = %lor.lhs.false468, %if.else464
  store i32 1, i32* @go_fast, align 4, !dbg !398, !tbaa !91
  store i32 0, i32* @must_sit, align 4, !dbg !400, !tbaa !91
  store i32 1, i32* @partnerdead, align 4, !dbg !401, !tbaa !91
  br label %cleanup, !dbg !402

if.else473:                                       ; preds = %lor.lhs.false468
  %call475 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([27 x i8]* @.str64, i64 0, i64 0), i64 26) #10, !dbg !403
  %tobool476 = icmp eq i32 %call475, 0, !dbg !403
  br i1 %tobool476, label %if.then477, label %if.else478, !dbg !403

if.then477:                                       ; preds = %if.else473
  store i32 1, i32* @go_fast, align 4, !dbg !404, !tbaa !91
  store i32 0, i32* @must_sit, align 4, !dbg !406, !tbaa !91
  store i32 1, i32* @piecedead, align 4, !dbg !407, !tbaa !91
  br label %cleanup, !dbg !408

if.else478:                                       ; preds = %if.else473
  %call480 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0), i64 5) #10, !dbg !409
  %tobool481 = icmp eq i32 %call480, 0, !dbg !409
  br i1 %tobool481, label %cleanup, label %if.else483, !dbg !409

if.else483:                                       ; preds = %if.else478
  %call485 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str65, i64 0, i64 0), i64 2) #10, !dbg !410
  %tobool486 = icmp eq i32 %call485, 0, !dbg !410
  br i1 %tobool486, label %cleanup, label %if.else488, !dbg !410

if.else488:                                       ; preds = %if.else483
  %call490 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str66, i64 0, i64 0), i64 2) #10, !dbg !411
  %tobool491 = icmp eq i32 %call490, 0, !dbg !411
  br i1 %tobool491, label %if.then496, label %lor.lhs.false492, !dbg !411

lor.lhs.false492:                                 ; preds = %if.else488
  %call494 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i64 5) #10, !dbg !411
  %tobool495 = icmp eq i32 %call494, 0, !dbg !411
  br i1 %tobool495, label %if.then496, label %if.else498, !dbg !411

if.then496:                                       ; preds = %lor.lhs.false492, %if.else488
  %puts677 = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str99, i64 0, i64 0)), !dbg !412
  br label %cleanup, !dbg !414

if.else498:                                       ; preds = %lor.lhs.false492
  %call500 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([8 x i8]* @.str69, i64 0, i64 0)) #10, !dbg !415
  %cmp501 = icmp eq i8* %call500, null, !dbg !415
  br i1 %cmp501, label %if.else505, label %if.then502, !dbg !415

if.then502:                                       ; preds = %if.else498
  %puts679 = call i32 @puts(i8* getelementptr inbounds ([86 x i8]* @str101, i64 0, i64 0)), !dbg !416
  %puts680 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str102, i64 0, i64 0)), !dbg !418
  br label %cleanup, !dbg !419

if.else505:                                       ; preds = %if.else498
  %puts678 = call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str100, i64 0, i64 0)), !dbg !420
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.then29, %if.then41, %if.end239, %if.then462, %if.then477, %if.then502, %if.else505, %if.then496, %if.then472, %if.end434, %if.then48, %if.then35, %if.then19, %if.end227, %if.end422, %if.else483, %if.else478, %if.then5, %if.then
  call void @llvm.lifetime.end(i64 80, i8* %0) #1, !dbg !422
  ret void, !dbg !423
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @CheckBadFlow(i32 %reset) #0 {
entry:
  %hismoves = alloca [512 x %struct.move_s], align 16
  %ourmoves = alloca [512 x %struct.move_s], align 16
  call void @llvm.dbg.value(metadata !{i32 %reset}, i64 0, metadata !37), !dbg !424
  %0 = bitcast [512 x %struct.move_s]* %hismoves to i8*, !dbg !425
  call void @llvm.lifetime.start(i64 12288, i8* %0) #1, !dbg !425
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %hismoves}, metadata !38), !dbg !425
  %1 = bitcast [512 x %struct.move_s]* %ourmoves to i8*, !dbg !426
  call void @llvm.lifetime.start(i64 12288, i8* %1) #1, !dbg !426
  call void @llvm.dbg.declare(metadata !{[512 x %struct.move_s]* %ourmoves}, metadata !51), !dbg !426
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !58), !dbg !427
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !59), !dbg !428
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !60), !dbg !428
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !61), !dbg !428
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !62), !dbg !428
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !63), !dbg !428
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !64), !dbg !429
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !65), !dbg !429
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !66), !dbg !429
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !67), !dbg !429
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !68), !dbg !429
  %tobool = icmp eq i32 %reset, 0, !dbg !430
  br i1 %tobool, label %if.end, label %if.then, !dbg !430

if.then:                                          ; preds = %entry
  store i32 0, i32* @CheckBadFlow.pawnmated, align 4, !dbg !431, !tbaa !117
  store i32 0, i32* @CheckBadFlow.knightmated, align 4, !dbg !433, !tbaa !117
  store i32 0, i32* @CheckBadFlow.bishopmated, align 4, !dbg !434, !tbaa !117
  store i32 0, i32* @CheckBadFlow.rookmated, align 4, !dbg !435, !tbaa !117
  store i32 0, i32* @CheckBadFlow.queenmated, align 4, !dbg !436, !tbaa !117
  br label %cleanup, !dbg !437

if.end:                                           ; preds = %entry
  %call = call i32 @in_check() #9, !dbg !438
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !56), !dbg !438
  %2 = load i32* @white_to_move, align 4, !dbg !439, !tbaa !117
  %tobool1 = icmp ne i32 %2, 0, !dbg !439
  %cond = select i1 %tobool1, i32 1, i32 2, !dbg !439
  %idxprom488 = zext i32 %cond to i64, !dbg !439
  %3 = zext i1 %tobool1 to i32, !dbg !439
  %lnot.ext = xor i32 %3, 1, !dbg !439
  %idxprom3489 = zext i32 %lnot.ext to i64, !dbg !439
  %arrayidx4 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom3489, i64 %idxprom488, !dbg !439
  %4 = load i32* %arrayidx4, align 4, !dbg !439, !tbaa !117
  %tobool5 = icmp eq i32 %4, 0, !dbg !439
  br i1 %tobool5, label %if.then6, label %if.end44, !dbg !439

if.then6:                                         ; preds = %if.end
  call void @DropaddHolding(i32 %cond, i32 %lnot.ext) #9, !dbg !440
  %arrayidx12 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0, !dbg !442
  call void @gen(%struct.move_s* %arrayidx12) #9, !dbg !442
  %5 = load i32* @numb_moves, align 4, !dbg !443, !tbaa !117
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !52), !dbg !443
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !55), !dbg !444
  %cmp563 = icmp sgt i32 %5, 0, !dbg !444
  br i1 %cmp563, label %for.body.lr.ph, label %for.end38, !dbg !444

for.body.lr.ph:                                   ; preds = %if.then6
  %arrayidx20 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0, !dbg !446
  br label %for.body, !dbg !444

for.body:                                         ; preds = %for.body.lr.ph, %if.end34
  %i.0564 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %if.end34 ]
  call void @make(%struct.move_s* %arrayidx12, i32 %i.0564) #9, !dbg !449
  %call16 = call i32 @check_legal(%struct.move_s* %arrayidx12, i32 %i.0564, i32 %call) #9, !dbg !450
  %tobool17 = icmp eq i32 %call16, 0, !dbg !450
  br i1 %tobool17, label %if.end34, label %if.then18, !dbg !450

if.then18:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata !451, i64 0, metadata !59), !dbg !452
  %call19 = call i32 @in_check() #9, !dbg !453
  call void @llvm.dbg.value(metadata !{i32 %call19}, i64 0, metadata !57), !dbg !453
  call void @gen(%struct.move_s* %arrayidx20) #9, !dbg !446
  %6 = load i32* @numb_moves, align 4, !dbg !454, !tbaa !117
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !53), !dbg !454
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !54), !dbg !455
  %cmp22558 = icmp slt i32 %6, 1, !dbg !455
  br i1 %cmp22558, label %if.end34, label %for.body26, !dbg !455

for.body26:                                       ; preds = %if.then18, %for.body26
  %pawnmates.1561 = phi i32 [ %pawnmates.1., %for.body26 ], [ 3, %if.then18 ]
  %j.0560 = phi i32 [ %inc, %for.body26 ], [ 0, %if.then18 ]
  call void @make(%struct.move_s* %arrayidx20, i32 %j.0560) #9, !dbg !457
  %call29 = call i32 @check_legal(%struct.move_s* %arrayidx20, i32 %j.0560, i32 %call19) #9, !dbg !459
  %tobool30 = icmp eq i32 %call29, 0, !dbg !459
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !59), !dbg !460
  %pawnmates.1. = select i1 %tobool30, i32 %pawnmates.1561, i32 0, !dbg !459
  call void @unmake(%struct.move_s* %arrayidx20, i32 %j.0560) #9, !dbg !461
  %inc = add nsw i32 %j.0560, 1, !dbg !455
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !54), !dbg !455
  %cmp22 = icmp sge i32 %inc, %6, !dbg !455
  %cmp24 = icmp eq i32 %pawnmates.1., 0, !dbg !455
  %or.cond513 = or i1 %cmp22, %cmp24, !dbg !455
  br i1 %or.cond513, label %if.end34, label %for.body26, !dbg !455

if.end34:                                         ; preds = %if.then18, %for.body26, %for.body
  %pawnmates.3 = phi i32 [ 0, %for.body ], [ 3, %if.then18 ], [ %pawnmates.1., %for.body26 ]
  call void @unmake(%struct.move_s* %arrayidx12, i32 %i.0564) #9, !dbg !462
  %inc37 = add nsw i32 %i.0564, 1, !dbg !444
  call void @llvm.dbg.value(metadata !{i32 %inc37}, i64 0, metadata !55), !dbg !444
  %cmp = icmp slt i32 %inc37, %5, !dbg !444
  %cmp13 = icmp eq i32 %pawnmates.3, 0, !dbg !444
  %or.cond = and i1 %cmp, %cmp13, !dbg !444
  br i1 %or.cond, label %for.body, label %for.end38, !dbg !444

for.end38:                                        ; preds = %if.end34, %if.then6
  %pawnmates.0.lcssa = phi i32 [ 0, %if.then6 ], [ %pawnmates.3, %if.end34 ]
  %7 = load i32* @white_to_move, align 4, !dbg !463, !tbaa !117
  %tobool39 = icmp ne i32 %7, 0, !dbg !463
  %cond40 = select i1 %tobool39, i32 1, i32 2, !dbg !463
  %8 = zext i1 %tobool39 to i32, !dbg !463
  %lnot.ext43 = xor i32 %8, 1, !dbg !463
  call void @DropremoveHolding(i32 %cond40, i32 %lnot.ext43) #9, !dbg !463
  %.pre = load i32* @white_to_move, align 4, !dbg !464, !tbaa !117
  br label %if.end44, !dbg !465

if.end44:                                         ; preds = %if.end, %for.end38
  %9 = phi i32 [ %2, %if.end ], [ %.pre, %for.end38 ]
  %pawnmates.4 = phi i32 [ 0, %if.end ], [ %pawnmates.0.lcssa, %for.end38 ]
  %tobool45 = icmp ne i32 %9, 0, !dbg !464
  %cond46 = select i1 %tobool45, i32 3, i32 4, !dbg !464
  %idxprom47490 = zext i32 %cond46 to i64, !dbg !464
  %10 = zext i1 %tobool45 to i32, !dbg !464
  %lnot.ext50 = xor i32 %10, 1, !dbg !464
  %idxprom51491 = zext i32 %lnot.ext50 to i64, !dbg !464
  %arrayidx53 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom51491, i64 %idxprom47490, !dbg !464
  %11 = load i32* %arrayidx53, align 4, !dbg !464, !tbaa !117
  %tobool54 = icmp eq i32 %11, 0, !dbg !464
  br i1 %tobool54, label %if.then55, label %if.end101, !dbg !464

if.then55:                                        ; preds = %if.end44
  call void @DropaddHolding(i32 %cond46, i32 %lnot.ext50) #9, !dbg !466
  %arrayidx61 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0, !dbg !468
  call void @gen(%struct.move_s* %arrayidx61) #9, !dbg !468
  %12 = load i32* @numb_moves, align 4, !dbg !469, !tbaa !117
  call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !52), !dbg !469
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !55), !dbg !470
  %cmp63554 = icmp sgt i32 %12, 0, !dbg !470
  br i1 %cmp63554, label %for.body67.lr.ph, label %for.end95, !dbg !470

for.body67.lr.ph:                                 ; preds = %if.then55
  %arrayidx74 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0, !dbg !472
  br label %for.body67, !dbg !470

for.body67:                                       ; preds = %for.body67.lr.ph, %if.end91
  %i.1555 = phi i32 [ 0, %for.body67.lr.ph ], [ %inc94, %if.end91 ]
  call void @make(%struct.move_s* %arrayidx61, i32 %i.1555) #9, !dbg !475
  %call70 = call i32 @check_legal(%struct.move_s* %arrayidx61, i32 %i.1555, i32 %call) #9, !dbg !476
  %tobool71 = icmp eq i32 %call70, 0, !dbg !476
  br i1 %tobool71, label %if.end91, label %if.then72, !dbg !476

if.then72:                                        ; preds = %for.body67
  call void @llvm.dbg.value(metadata !451, i64 0, metadata !60), !dbg !477
  %call73 = call i32 @in_check() #9, !dbg !478
  call void @llvm.dbg.value(metadata !{i32 %call73}, i64 0, metadata !57), !dbg !478
  call void @gen(%struct.move_s* %arrayidx74) #9, !dbg !472
  %13 = load i32* @numb_moves, align 4, !dbg !479, !tbaa !117
  call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !53), !dbg !479
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !54), !dbg !480
  %cmp76549 = icmp slt i32 %13, 1, !dbg !480
  br i1 %cmp76549, label %if.end91, label %for.body80, !dbg !480

for.body80:                                       ; preds = %if.then72, %for.body80
  %knightmates.1552 = phi i32 [ %knightmates.1., %for.body80 ], [ 3, %if.then72 ]
  %j.1551 = phi i32 [ %inc89, %for.body80 ], [ 0, %if.then72 ]
  call void @make(%struct.move_s* %arrayidx74, i32 %j.1551) #9, !dbg !482
  %call83 = call i32 @check_legal(%struct.move_s* %arrayidx74, i32 %j.1551, i32 %call73) #9, !dbg !484
  %tobool84 = icmp eq i32 %call83, 0, !dbg !484
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !60), !dbg !485
  %knightmates.1. = select i1 %tobool84, i32 %knightmates.1552, i32 0, !dbg !484
  call void @unmake(%struct.move_s* %arrayidx74, i32 %j.1551) #9, !dbg !486
  %inc89 = add nsw i32 %j.1551, 1, !dbg !480
  call void @llvm.dbg.value(metadata !{i32 %inc89}, i64 0, metadata !54), !dbg !480
  %cmp76 = icmp sge i32 %inc89, %13, !dbg !480
  %cmp78 = icmp eq i32 %knightmates.1., 0, !dbg !480
  %or.cond515 = or i1 %cmp76, %cmp78, !dbg !480
  br i1 %or.cond515, label %if.end91, label %for.body80, !dbg !480

if.end91:                                         ; preds = %if.then72, %for.body80, %for.body67
  %knightmates.3 = phi i32 [ 0, %for.body67 ], [ 3, %if.then72 ], [ %knightmates.1., %for.body80 ]
  call void @unmake(%struct.move_s* %arrayidx61, i32 %i.1555) #9, !dbg !487
  %inc94 = add nsw i32 %i.1555, 1, !dbg !470
  call void @llvm.dbg.value(metadata !{i32 %inc94}, i64 0, metadata !55), !dbg !470
  %cmp63 = icmp slt i32 %inc94, %12, !dbg !470
  %cmp65 = icmp eq i32 %knightmates.3, 0, !dbg !470
  %or.cond514 = and i1 %cmp63, %cmp65, !dbg !470
  br i1 %or.cond514, label %for.body67, label %for.end95, !dbg !470

for.end95:                                        ; preds = %if.end91, %if.then55
  %knightmates.0.lcssa = phi i32 [ 0, %if.then55 ], [ %knightmates.3, %if.end91 ]
  %14 = load i32* @white_to_move, align 4, !dbg !488, !tbaa !117
  %tobool96 = icmp ne i32 %14, 0, !dbg !488
  %cond97 = select i1 %tobool96, i32 3, i32 4, !dbg !488
  %15 = zext i1 %tobool96 to i32, !dbg !488
  %lnot.ext100 = xor i32 %15, 1, !dbg !488
  call void @DropremoveHolding(i32 %cond97, i32 %lnot.ext100) #9, !dbg !488
  %.pre567 = load i32* @white_to_move, align 4, !dbg !489, !tbaa !117
  br label %if.end101, !dbg !490

if.end101:                                        ; preds = %if.end44, %for.end95
  %16 = phi i32 [ %9, %if.end44 ], [ %.pre567, %for.end95 ]
  %knightmates.4 = phi i32 [ 0, %if.end44 ], [ %knightmates.0.lcssa, %for.end95 ]
  %tobool102 = icmp ne i32 %16, 0, !dbg !489
  %cond103 = select i1 %tobool102, i32 11, i32 12, !dbg !489
  %idxprom104492 = zext i32 %cond103 to i64, !dbg !489
  %17 = zext i1 %tobool102 to i32, !dbg !489
  %lnot.ext107 = xor i32 %17, 1, !dbg !489
  %idxprom108493 = zext i32 %lnot.ext107 to i64, !dbg !489
  %arrayidx110 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom108493, i64 %idxprom104492, !dbg !489
  %18 = load i32* %arrayidx110, align 4, !dbg !489, !tbaa !117
  %tobool111 = icmp eq i32 %18, 0, !dbg !489
  br i1 %tobool111, label %if.then112, label %if.end158, !dbg !489

if.then112:                                       ; preds = %if.end101
  call void @DropaddHolding(i32 %cond103, i32 %lnot.ext107) #9, !dbg !491
  %arrayidx118 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0, !dbg !493
  call void @gen(%struct.move_s* %arrayidx118) #9, !dbg !493
  %19 = load i32* @numb_moves, align 4, !dbg !494, !tbaa !117
  call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !52), !dbg !494
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !55), !dbg !495
  %cmp120545 = icmp sgt i32 %19, 0, !dbg !495
  br i1 %cmp120545, label %for.body124.lr.ph, label %for.end152, !dbg !495

for.body124.lr.ph:                                ; preds = %if.then112
  %arrayidx131 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0, !dbg !497
  br label %for.body124, !dbg !495

for.body124:                                      ; preds = %for.body124.lr.ph, %if.end148
  %i.2546 = phi i32 [ 0, %for.body124.lr.ph ], [ %inc151, %if.end148 ]
  call void @make(%struct.move_s* %arrayidx118, i32 %i.2546) #9, !dbg !500
  %call127 = call i32 @check_legal(%struct.move_s* %arrayidx118, i32 %i.2546, i32 %call) #9, !dbg !501
  %tobool128 = icmp eq i32 %call127, 0, !dbg !501
  br i1 %tobool128, label %if.end148, label %if.then129, !dbg !501

if.then129:                                       ; preds = %for.body124
  call void @llvm.dbg.value(metadata !451, i64 0, metadata !61), !dbg !502
  %call130 = call i32 @in_check() #9, !dbg !503
  call void @llvm.dbg.value(metadata !{i32 %call130}, i64 0, metadata !57), !dbg !503
  call void @gen(%struct.move_s* %arrayidx131) #9, !dbg !497
  %20 = load i32* @numb_moves, align 4, !dbg !504, !tbaa !117
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !53), !dbg !504
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !54), !dbg !505
  %cmp133540 = icmp slt i32 %20, 1, !dbg !505
  br i1 %cmp133540, label %if.end148, label %for.body137, !dbg !505

for.body137:                                      ; preds = %if.then129, %for.body137
  %bishopmates.1543 = phi i32 [ %bishopmates.1., %for.body137 ], [ 3, %if.then129 ]
  %j.2542 = phi i32 [ %inc146, %for.body137 ], [ 0, %if.then129 ]
  call void @make(%struct.move_s* %arrayidx131, i32 %j.2542) #9, !dbg !507
  %call140 = call i32 @check_legal(%struct.move_s* %arrayidx131, i32 %j.2542, i32 %call130) #9, !dbg !509
  %tobool141 = icmp eq i32 %call140, 0, !dbg !509
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !61), !dbg !510
  %bishopmates.1. = select i1 %tobool141, i32 %bishopmates.1543, i32 0, !dbg !509
  call void @unmake(%struct.move_s* %arrayidx131, i32 %j.2542) #9, !dbg !511
  %inc146 = add nsw i32 %j.2542, 1, !dbg !505
  call void @llvm.dbg.value(metadata !{i32 %inc146}, i64 0, metadata !54), !dbg !505
  %cmp133 = icmp sge i32 %inc146, %20, !dbg !505
  %cmp135 = icmp eq i32 %bishopmates.1., 0, !dbg !505
  %or.cond517 = or i1 %cmp133, %cmp135, !dbg !505
  br i1 %or.cond517, label %if.end148, label %for.body137, !dbg !505

if.end148:                                        ; preds = %if.then129, %for.body137, %for.body124
  %bishopmates.3 = phi i32 [ 0, %for.body124 ], [ 3, %if.then129 ], [ %bishopmates.1., %for.body137 ]
  call void @unmake(%struct.move_s* %arrayidx118, i32 %i.2546) #9, !dbg !512
  %inc151 = add nsw i32 %i.2546, 1, !dbg !495
  call void @llvm.dbg.value(metadata !{i32 %inc151}, i64 0, metadata !55), !dbg !495
  %cmp120 = icmp slt i32 %inc151, %19, !dbg !495
  %cmp122 = icmp eq i32 %bishopmates.3, 0, !dbg !495
  %or.cond516 = and i1 %cmp120, %cmp122, !dbg !495
  br i1 %or.cond516, label %for.body124, label %for.end152, !dbg !495

for.end152:                                       ; preds = %if.end148, %if.then112
  %bishopmates.0.lcssa = phi i32 [ 0, %if.then112 ], [ %bishopmates.3, %if.end148 ]
  %21 = load i32* @white_to_move, align 4, !dbg !513, !tbaa !117
  %tobool153 = icmp ne i32 %21, 0, !dbg !513
  %cond154 = select i1 %tobool153, i32 11, i32 12, !dbg !513
  %22 = zext i1 %tobool153 to i32, !dbg !513
  %lnot.ext157 = xor i32 %22, 1, !dbg !513
  call void @DropremoveHolding(i32 %cond154, i32 %lnot.ext157) #9, !dbg !513
  %.pre568 = load i32* @white_to_move, align 4, !dbg !514, !tbaa !117
  br label %if.end158, !dbg !515

if.end158:                                        ; preds = %if.end101, %for.end152
  %23 = phi i32 [ %16, %if.end101 ], [ %.pre568, %for.end152 ]
  %bishopmates.4 = phi i32 [ 0, %if.end101 ], [ %bishopmates.0.lcssa, %for.end152 ]
  %tobool159 = icmp ne i32 %23, 0, !dbg !514
  %cond160 = select i1 %tobool159, i32 7, i32 8, !dbg !514
  %idxprom161494 = zext i32 %cond160 to i64, !dbg !514
  %24 = zext i1 %tobool159 to i32, !dbg !514
  %lnot.ext164 = xor i32 %24, 1, !dbg !514
  %idxprom165495 = zext i32 %lnot.ext164 to i64, !dbg !514
  %arrayidx167 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom165495, i64 %idxprom161494, !dbg !514
  %25 = load i32* %arrayidx167, align 4, !dbg !514, !tbaa !117
  %tobool168 = icmp eq i32 %25, 0, !dbg !514
  br i1 %tobool168, label %if.then169, label %if.end215, !dbg !514

if.then169:                                       ; preds = %if.end158
  call void @DropaddHolding(i32 %cond160, i32 %lnot.ext164) #9, !dbg !516
  %arrayidx175 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0, !dbg !518
  call void @gen(%struct.move_s* %arrayidx175) #9, !dbg !518
  %26 = load i32* @numb_moves, align 4, !dbg !519, !tbaa !117
  call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !52), !dbg !519
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !55), !dbg !520
  %cmp177536 = icmp sgt i32 %26, 0, !dbg !520
  br i1 %cmp177536, label %for.body181.lr.ph, label %for.end209, !dbg !520

for.body181.lr.ph:                                ; preds = %if.then169
  %arrayidx188 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0, !dbg !522
  br label %for.body181, !dbg !520

for.body181:                                      ; preds = %for.body181.lr.ph, %if.end205
  %i.3537 = phi i32 [ 0, %for.body181.lr.ph ], [ %inc208, %if.end205 ]
  call void @make(%struct.move_s* %arrayidx175, i32 %i.3537) #9, !dbg !525
  %call184 = call i32 @check_legal(%struct.move_s* %arrayidx175, i32 %i.3537, i32 %call) #9, !dbg !526
  %tobool185 = icmp eq i32 %call184, 0, !dbg !526
  br i1 %tobool185, label %if.end205, label %if.then186, !dbg !526

if.then186:                                       ; preds = %for.body181
  call void @llvm.dbg.value(metadata !451, i64 0, metadata !62), !dbg !527
  %call187 = call i32 @in_check() #9, !dbg !528
  call void @llvm.dbg.value(metadata !{i32 %call187}, i64 0, metadata !57), !dbg !528
  call void @gen(%struct.move_s* %arrayidx188) #9, !dbg !522
  %27 = load i32* @numb_moves, align 4, !dbg !529, !tbaa !117
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !53), !dbg !529
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !54), !dbg !530
  %cmp190531 = icmp slt i32 %27, 1, !dbg !530
  br i1 %cmp190531, label %if.end205, label %for.body194, !dbg !530

for.body194:                                      ; preds = %if.then186, %for.body194
  %rookmates.1534 = phi i32 [ %rookmates.1., %for.body194 ], [ 3, %if.then186 ]
  %j.3533 = phi i32 [ %inc203, %for.body194 ], [ 0, %if.then186 ]
  call void @make(%struct.move_s* %arrayidx188, i32 %j.3533) #9, !dbg !532
  %call197 = call i32 @check_legal(%struct.move_s* %arrayidx188, i32 %j.3533, i32 %call187) #9, !dbg !534
  %tobool198 = icmp eq i32 %call197, 0, !dbg !534
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !62), !dbg !535
  %rookmates.1. = select i1 %tobool198, i32 %rookmates.1534, i32 0, !dbg !534
  call void @unmake(%struct.move_s* %arrayidx188, i32 %j.3533) #9, !dbg !536
  %inc203 = add nsw i32 %j.3533, 1, !dbg !530
  call void @llvm.dbg.value(metadata !{i32 %inc203}, i64 0, metadata !54), !dbg !530
  %cmp190 = icmp sge i32 %inc203, %27, !dbg !530
  %cmp192 = icmp eq i32 %rookmates.1., 0, !dbg !530
  %or.cond519 = or i1 %cmp190, %cmp192, !dbg !530
  br i1 %or.cond519, label %if.end205, label %for.body194, !dbg !530

if.end205:                                        ; preds = %if.then186, %for.body194, %for.body181
  %rookmates.3 = phi i32 [ 0, %for.body181 ], [ 3, %if.then186 ], [ %rookmates.1., %for.body194 ]
  call void @unmake(%struct.move_s* %arrayidx175, i32 %i.3537) #9, !dbg !537
  %inc208 = add nsw i32 %i.3537, 1, !dbg !520
  call void @llvm.dbg.value(metadata !{i32 %inc208}, i64 0, metadata !55), !dbg !520
  %cmp177 = icmp slt i32 %inc208, %26, !dbg !520
  %cmp179 = icmp eq i32 %rookmates.3, 0, !dbg !520
  %or.cond518 = and i1 %cmp177, %cmp179, !dbg !520
  br i1 %or.cond518, label %for.body181, label %for.end209, !dbg !520

for.end209:                                       ; preds = %if.end205, %if.then169
  %rookmates.0.lcssa = phi i32 [ 0, %if.then169 ], [ %rookmates.3, %if.end205 ]
  %28 = load i32* @white_to_move, align 4, !dbg !538, !tbaa !117
  %tobool210 = icmp ne i32 %28, 0, !dbg !538
  %cond211 = select i1 %tobool210, i32 7, i32 8, !dbg !538
  %29 = zext i1 %tobool210 to i32, !dbg !538
  %lnot.ext214 = xor i32 %29, 1, !dbg !538
  call void @DropremoveHolding(i32 %cond211, i32 %lnot.ext214) #9, !dbg !538
  %.pre569 = load i32* @white_to_move, align 4, !dbg !539, !tbaa !117
  br label %if.end215, !dbg !540

if.end215:                                        ; preds = %if.end158, %for.end209
  %30 = phi i32 [ %23, %if.end158 ], [ %.pre569, %for.end209 ]
  %rookmates.4 = phi i32 [ 0, %if.end158 ], [ %rookmates.0.lcssa, %for.end209 ]
  %tobool216 = icmp ne i32 %30, 0, !dbg !539
  %cond217 = select i1 %tobool216, i32 9, i32 10, !dbg !539
  %idxprom218496 = zext i32 %cond217 to i64, !dbg !539
  %31 = zext i1 %tobool216 to i32, !dbg !539
  %lnot.ext221 = xor i32 %31, 1, !dbg !539
  %idxprom222497 = zext i32 %lnot.ext221 to i64, !dbg !539
  %arrayidx224 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom222497, i64 %idxprom218496, !dbg !539
  %32 = load i32* %arrayidx224, align 4, !dbg !539, !tbaa !117
  %tobool225 = icmp eq i32 %32, 0, !dbg !539
  br i1 %tobool225, label %if.then226, label %if.end272, !dbg !539

if.then226:                                       ; preds = %if.end215
  call void @DropaddHolding(i32 %cond217, i32 %lnot.ext221) #9, !dbg !541
  %arrayidx232 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0, !dbg !543
  call void @gen(%struct.move_s* %arrayidx232) #9, !dbg !543
  %33 = load i32* @numb_moves, align 4, !dbg !544, !tbaa !117
  call void @llvm.dbg.value(metadata !{i32 %33}, i64 0, metadata !52), !dbg !544
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !55), !dbg !545
  %cmp234527 = icmp sgt i32 %33, 0, !dbg !545
  br i1 %cmp234527, label %for.body238.lr.ph, label %for.end266, !dbg !545

for.body238.lr.ph:                                ; preds = %if.then226
  %arrayidx245 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0, !dbg !547
  br label %for.body238, !dbg !545

for.body238:                                      ; preds = %for.body238.lr.ph, %if.end262
  %i.4528 = phi i32 [ 0, %for.body238.lr.ph ], [ %inc265, %if.end262 ]
  call void @make(%struct.move_s* %arrayidx232, i32 %i.4528) #9, !dbg !550
  %call241 = call i32 @check_legal(%struct.move_s* %arrayidx232, i32 %i.4528, i32 %call) #9, !dbg !551
  %tobool242 = icmp eq i32 %call241, 0, !dbg !551
  br i1 %tobool242, label %if.end262, label %if.then243, !dbg !551

if.then243:                                       ; preds = %for.body238
  call void @llvm.dbg.value(metadata !451, i64 0, metadata !63), !dbg !552
  %call244 = call i32 @in_check() #9, !dbg !553
  call void @llvm.dbg.value(metadata !{i32 %call244}, i64 0, metadata !57), !dbg !553
  call void @gen(%struct.move_s* %arrayidx245) #9, !dbg !547
  %34 = load i32* @numb_moves, align 4, !dbg !554, !tbaa !117
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !53), !dbg !554
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !54), !dbg !555
  %cmp247523 = icmp slt i32 %34, 1, !dbg !555
  br i1 %cmp247523, label %if.end262, label %for.body251, !dbg !555

for.body251:                                      ; preds = %if.then243, %for.body251
  %queenmates.1526 = phi i32 [ %queenmates.1., %for.body251 ], [ 3, %if.then243 ]
  %j.4525 = phi i32 [ %inc260, %for.body251 ], [ 0, %if.then243 ]
  call void @make(%struct.move_s* %arrayidx245, i32 %j.4525) #9, !dbg !557
  %call254 = call i32 @check_legal(%struct.move_s* %arrayidx245, i32 %j.4525, i32 %call244) #9, !dbg !559
  %tobool255 = icmp eq i32 %call254, 0, !dbg !559
  call void @llvm.dbg.value(metadata !8, i64 0, metadata !63), !dbg !560
  %queenmates.1. = select i1 %tobool255, i32 %queenmates.1526, i32 0, !dbg !559
  call void @unmake(%struct.move_s* %arrayidx245, i32 %j.4525) #9, !dbg !561
  %inc260 = add nsw i32 %j.4525, 1, !dbg !555
  call void @llvm.dbg.value(metadata !{i32 %inc260}, i64 0, metadata !54), !dbg !555
  %cmp247 = icmp sge i32 %inc260, %34, !dbg !555
  %cmp249 = icmp eq i32 %queenmates.1., 0, !dbg !555
  %or.cond521 = or i1 %cmp247, %cmp249, !dbg !555
  br i1 %or.cond521, label %if.end262, label %for.body251, !dbg !555

if.end262:                                        ; preds = %if.then243, %for.body251, %for.body238
  %queenmates.3 = phi i32 [ 0, %for.body238 ], [ 3, %if.then243 ], [ %queenmates.1., %for.body251 ]
  call void @unmake(%struct.move_s* %arrayidx232, i32 %i.4528) #9, !dbg !562
  %inc265 = add nsw i32 %i.4528, 1, !dbg !545
  call void @llvm.dbg.value(metadata !{i32 %inc265}, i64 0, metadata !55), !dbg !545
  %cmp234 = icmp slt i32 %inc265, %33, !dbg !545
  %cmp236 = icmp eq i32 %queenmates.3, 0, !dbg !545
  %or.cond520 = and i1 %cmp234, %cmp236, !dbg !545
  br i1 %or.cond520, label %for.body238, label %for.end266, !dbg !545

for.end266:                                       ; preds = %if.end262, %if.then226
  %queenmates.0.lcssa = phi i32 [ 0, %if.then226 ], [ %queenmates.3, %if.end262 ]
  %35 = load i32* @white_to_move, align 4, !dbg !563, !tbaa !117
  %tobool267 = icmp ne i32 %35, 0, !dbg !563
  %cond268 = select i1 %tobool267, i32 9, i32 10, !dbg !563
  %36 = zext i1 %tobool267 to i32, !dbg !563
  %lnot.ext271 = xor i32 %36, 1, !dbg !563
  call void @DropremoveHolding(i32 %cond268, i32 %lnot.ext271) #9, !dbg !563
  br label %if.end272, !dbg !564

if.end272:                                        ; preds = %if.end215, %for.end266
  %queenmates.4 = phi i32 [ 0, %if.end215 ], [ %queenmates.0.lcssa, %for.end266 ]
  %37 = load i32* @CheckBadFlow.pawnmated, align 4, !dbg !565, !tbaa !117
  %cmp273 = icmp eq i32 %pawnmates.4, %37, !dbg !565
  br i1 %cmp273, label %if.end283, label %if.then274, !dbg !565

if.then274:                                       ; preds = %if.end272
  %cmp275 = icmp eq i32 %pawnmates.4, 3, !dbg !566
  br i1 %cmp275, label %if.end283, label %if.else, !dbg !566

if.else:                                          ; preds = %if.then274
  %38 = or i32 %37, %pawnmates.4, !dbg !568
  %39 = icmp eq i32 %38, 0, !dbg !568
  br i1 %39, label %if.then279, label %if.end283, !dbg !568

if.then279:                                       ; preds = %if.else
  %puts512 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str116, i64 0, i64 0)), !dbg !569
  call void @llvm.dbg.value(metadata !571, i64 0, metadata !58), !dbg !572
  br label %if.end283, !dbg !573

if.end283:                                        ; preds = %if.then274, %if.end272, %if.then279, %if.else
  %othermove.0 = phi i32 [ 1, %if.then279 ], [ 0, %if.else ], [ 0, %if.end272 ], [ 0, %if.then274 ]
  %pawnwarn.0 = phi i32 [ 0, %if.then279 ], [ 0, %if.else ], [ 0, %if.end272 ], [ 1, %if.then274 ]
  %40 = load i32* @CheckBadFlow.knightmated, align 4, !dbg !574, !tbaa !117
  %cmp284 = icmp eq i32 %knightmates.4, %40, !dbg !574
  br i1 %cmp284, label %if.end296, label %if.then285, !dbg !574

if.then285:                                       ; preds = %if.end283
  %cmp286 = icmp eq i32 %knightmates.4, 3, !dbg !575
  br i1 %cmp286, label %if.end296, label %if.else288, !dbg !575

if.else288:                                       ; preds = %if.then285
  %41 = or i32 %40, %knightmates.4, !dbg !577
  %42 = icmp eq i32 %41, 0, !dbg !577
  br i1 %42, label %if.then292, label %if.end296, !dbg !577

if.then292:                                       ; preds = %if.else288
  %puts511 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str115, i64 0, i64 0)), !dbg !578
  call void @llvm.dbg.value(metadata !571, i64 0, metadata !58), !dbg !580
  br label %if.end296, !dbg !581

if.end296:                                        ; preds = %if.then285, %if.end283, %if.then292, %if.else288
  %othermove.1 = phi i32 [ 1, %if.then292 ], [ %othermove.0, %if.else288 ], [ %othermove.0, %if.end283 ], [ %othermove.0, %if.then285 ]
  %knightwarn.0 = phi i32 [ 0, %if.then292 ], [ 0, %if.else288 ], [ 0, %if.end283 ], [ 1, %if.then285 ]
  %43 = load i32* @CheckBadFlow.bishopmated, align 4, !dbg !582, !tbaa !117
  %cmp297 = icmp eq i32 %bishopmates.4, %43, !dbg !582
  br i1 %cmp297, label %if.end309, label %if.then298, !dbg !582

if.then298:                                       ; preds = %if.end296
  %cmp299 = icmp eq i32 %bishopmates.4, 3, !dbg !583
  br i1 %cmp299, label %if.end309, label %if.else301, !dbg !583

if.else301:                                       ; preds = %if.then298
  %44 = or i32 %43, %bishopmates.4, !dbg !585
  %45 = icmp eq i32 %44, 0, !dbg !585
  br i1 %45, label %if.then305, label %if.end309, !dbg !585

if.then305:                                       ; preds = %if.else301
  %puts510 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str114, i64 0, i64 0)), !dbg !586
  call void @llvm.dbg.value(metadata !571, i64 0, metadata !58), !dbg !588
  br label %if.end309, !dbg !589

if.end309:                                        ; preds = %if.then298, %if.end296, %if.then305, %if.else301
  %othermove.2 = phi i32 [ 1, %if.then305 ], [ %othermove.1, %if.else301 ], [ %othermove.1, %if.end296 ], [ %othermove.1, %if.then298 ]
  %bishopwarn.0 = phi i32 [ 0, %if.then305 ], [ 0, %if.else301 ], [ 0, %if.end296 ], [ 1, %if.then298 ]
  %46 = load i32* @CheckBadFlow.rookmated, align 4, !dbg !590, !tbaa !117
  %cmp310 = icmp eq i32 %rookmates.4, %46, !dbg !590
  br i1 %cmp310, label %if.end322, label %if.then311, !dbg !590

if.then311:                                       ; preds = %if.end309
  %cmp312 = icmp eq i32 %rookmates.4, 3, !dbg !591
  br i1 %cmp312, label %if.end322, label %if.else314, !dbg !591

if.else314:                                       ; preds = %if.then311
  %47 = or i32 %46, %rookmates.4, !dbg !593
  %48 = icmp eq i32 %47, 0, !dbg !593
  br i1 %48, label %if.then318, label %if.end322, !dbg !593

if.then318:                                       ; preds = %if.else314
  %puts509 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str113, i64 0, i64 0)), !dbg !594
  call void @llvm.dbg.value(metadata !571, i64 0, metadata !58), !dbg !596
  br label %if.end322, !dbg !597

if.end322:                                        ; preds = %if.then311, %if.end309, %if.then318, %if.else314
  %othermove.3 = phi i32 [ 1, %if.then318 ], [ %othermove.2, %if.else314 ], [ %othermove.2, %if.end309 ], [ %othermove.2, %if.then311 ]
  %rookwarn.0 = phi i32 [ 0, %if.then318 ], [ 0, %if.else314 ], [ 0, %if.end309 ], [ 1, %if.then311 ]
  %49 = load i32* @CheckBadFlow.queenmated, align 4, !dbg !598, !tbaa !117
  %cmp323 = icmp eq i32 %queenmates.4, %49, !dbg !598
  br i1 %cmp323, label %if.end335, label %if.then324, !dbg !598

if.then324:                                       ; preds = %if.end322
  %cmp325 = icmp eq i32 %queenmates.4, 3, !dbg !599
  br i1 %cmp325, label %if.end335, label %if.else327, !dbg !599

if.else327:                                       ; preds = %if.then324
  %50 = or i32 %49, %queenmates.4, !dbg !601
  %51 = icmp eq i32 %50, 0, !dbg !601
  br i1 %51, label %if.then331, label %if.end335, !dbg !601

if.then331:                                       ; preds = %if.else327
  %puts508 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str112, i64 0, i64 0)), !dbg !602
  call void @llvm.dbg.value(metadata !571, i64 0, metadata !58), !dbg !604
  br label %if.end335, !dbg !605

if.end335:                                        ; preds = %if.then324, %if.end322, %if.then331, %if.else327
  %othermove.4 = phi i32 [ 1, %if.then331 ], [ %othermove.3, %if.else327 ], [ %othermove.3, %if.end322 ], [ %othermove.3, %if.then324 ]
  %queenwarn.0 = phi i32 [ 0, %if.then331 ], [ 0, %if.else327 ], [ 0, %if.end322 ], [ 1, %if.then324 ]
  %tobool336 = icmp eq i32 %pawnwarn.0, 0, !dbg !606
  br i1 %tobool336, label %if.end339, label %if.then337, !dbg !606

if.then337:                                       ; preds = %if.end335
  %puts507 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str111, i64 0, i64 0)), !dbg !607
  br label %if.end339, !dbg !607

if.end339:                                        ; preds = %if.end335, %if.then337
  %tobool340 = icmp eq i32 %knightwarn.0, 0, !dbg !608
  br i1 %tobool340, label %if.end343, label %if.then341, !dbg !608

if.then341:                                       ; preds = %if.end339
  %puts506 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str110, i64 0, i64 0)), !dbg !609
  br label %if.end343, !dbg !609

if.end343:                                        ; preds = %if.end339, %if.then341
  %tobool344 = icmp eq i32 %bishopwarn.0, 0, !dbg !610
  br i1 %tobool344, label %if.end347, label %if.then345, !dbg !610

if.then345:                                       ; preds = %if.end343
  %puts505 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str109, i64 0, i64 0)), !dbg !611
  br label %if.end347, !dbg !611

if.end347:                                        ; preds = %if.end343, %if.then345
  %tobool348 = icmp eq i32 %rookwarn.0, 0, !dbg !612
  br i1 %tobool348, label %if.end351, label %if.then349, !dbg !612

if.then349:                                       ; preds = %if.end347
  %puts504 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str108, i64 0, i64 0)), !dbg !613
  br label %if.end351, !dbg !613

if.end351:                                        ; preds = %if.end347, %if.then349
  %tobool352 = icmp eq i32 %queenwarn.0, 0, !dbg !614
  br i1 %tobool352, label %if.end355, label %if.then353, !dbg !614

if.then353:                                       ; preds = %if.end351
  %puts503 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str107, i64 0, i64 0)), !dbg !615
  br label %if.end355, !dbg !615

if.end355:                                        ; preds = %if.end351, %if.then353
  %52 = load i32* @piecedead, align 4, !dbg !616, !tbaa !91
  %tobool356 = icmp eq i32 %52, 0, !dbg !616
  %tobool358 = icmp eq i32 %othermove.4, 0, !dbg !616
  %or.cond522 = or i1 %tobool356, %tobool358, !dbg !616
  br i1 %or.cond522, label %if.end362, label %if.then359, !dbg !616

if.then359:                                       ; preds = %if.end355
  store i32 0, i32* @piecedead, align 4, !dbg !617, !tbaa !91
  %puts = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str105, i64 0, i64 0)), !dbg !619
  %puts502 = call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str106, i64 0, i64 0)), !dbg !620
  store i32 0, i32* @go_fast, align 4, !dbg !621, !tbaa !91
  br label %if.end362, !dbg !622

if.end362:                                        ; preds = %if.end355, %if.then359
  %tobool363 = icmp eq i32 %pawnmates.4, 0, !dbg !623
  br i1 %tobool363, label %cond.false, label %cond.end, !dbg !623

cond.false:                                       ; preds = %if.end362
  %53 = load i32* @CheckBadFlow.pawnmated, align 4, !dbg !623, !tbaa !117
  %dec = add nsw i32 %53, -1, !dbg !623
  br label %cond.end, !dbg !623

cond.end:                                         ; preds = %if.end362, %cond.false
  %storemerge = phi i32 [ %dec, %cond.false ], [ %pawnmates.4, %if.end362 ]
  store i32 %storemerge, i32* @CheckBadFlow.pawnmated, align 4, !dbg !623, !tbaa !117
  %tobool365 = icmp eq i32 %bishopmates.4, 0, !dbg !624
  br i1 %tobool365, label %cond.false367, label %cond.end369, !dbg !624

cond.false367:                                    ; preds = %cond.end
  %54 = load i32* @CheckBadFlow.bishopmated, align 4, !dbg !624, !tbaa !117
  %dec368 = add nsw i32 %54, -1, !dbg !624
  br label %cond.end369, !dbg !624

cond.end369:                                      ; preds = %cond.end, %cond.false367
  %storemerge498 = phi i32 [ %dec368, %cond.false367 ], [ %bishopmates.4, %cond.end ]
  store i32 %storemerge498, i32* @CheckBadFlow.bishopmated, align 4, !dbg !624, !tbaa !117
  %tobool371 = icmp eq i32 %rookmates.4, 0, !dbg !625
  br i1 %tobool371, label %cond.false373, label %cond.end375, !dbg !625

cond.false373:                                    ; preds = %cond.end369
  %55 = load i32* @CheckBadFlow.rookmated, align 4, !dbg !625, !tbaa !117
  %dec374 = add nsw i32 %55, -1, !dbg !625
  br label %cond.end375, !dbg !625

cond.end375:                                      ; preds = %cond.end369, %cond.false373
  %storemerge499 = phi i32 [ %dec374, %cond.false373 ], [ %rookmates.4, %cond.end369 ]
  store i32 %storemerge499, i32* @CheckBadFlow.rookmated, align 4, !dbg !625, !tbaa !117
  %tobool377 = icmp eq i32 %queenmates.4, 0, !dbg !626
  br i1 %tobool377, label %cond.false379, label %cond.end381, !dbg !626

cond.false379:                                    ; preds = %cond.end375
  %56 = load i32* @CheckBadFlow.queenmated, align 4, !dbg !626, !tbaa !117
  %dec380 = add nsw i32 %56, -1, !dbg !626
  br label %cond.end381, !dbg !626

cond.end381:                                      ; preds = %cond.end375, %cond.false379
  %storemerge500 = phi i32 [ %dec380, %cond.false379 ], [ %queenmates.4, %cond.end375 ]
  store i32 %storemerge500, i32* @CheckBadFlow.queenmated, align 4, !dbg !626, !tbaa !117
  %tobool383 = icmp eq i32 %knightmates.4, 0, !dbg !627
  br i1 %tobool383, label %cond.false385, label %cond.end387, !dbg !627

cond.false385:                                    ; preds = %cond.end381
  %57 = load i32* @CheckBadFlow.knightmated, align 4, !dbg !627, !tbaa !117
  %dec386 = add nsw i32 %57, -1, !dbg !627
  br label %cond.end387, !dbg !627

cond.end387:                                      ; preds = %cond.end381, %cond.false385
  %storemerge501 = phi i32 [ %dec386, %cond.false385 ], [ %knightmates.4, %cond.end381 ]
  store i32 %storemerge501, i32* @CheckBadFlow.knightmated, align 4, !dbg !627, !tbaa !117
  br label %cleanup, !dbg !628

cleanup:                                          ; preds = %cond.end387, %if.then
  call void @llvm.lifetime.end(i64 12288, i8* %1) #1, !dbg !628
  call void @llvm.lifetime.end(i64 12288, i8* %0) #1, !dbg !628
  ret void, !dbg !629
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
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #7

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #8

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !69, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !14, metadata !15, metadata !16, metadata !23, metadata !32}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"ResetHandValue", metadata !"ResetHandValue", metadata !"", i32 22, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @ResetHandValue, null, null, metadata !8, i32 23} ; [ DW_TAG_subprogram ] [line 22] [def] [scope 23] [ResetHandValue]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null}
!14 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"BegForPartner", metadata !"BegForPartner", metadata !"", i32 27, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @BegForPartner, null, null, metadata !8, i32 28} ; [ DW_TAG_subprogram ] [line 27] [def] [scope 28] [BegForPartner]
!15 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"GreetPartner", metadata !"GreetPartner", metadata !"", i32 36, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @GreetPartner, null, null, metadata !8, i32 37} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 37] [GreetPartner]
!16 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"HandlePartner", metadata !"HandlePartner", metadata !"", i32 44, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @HandlePartner, null, null, metadata !21, i32 45} ; [ DW_TAG_subprogram ] [line 44] [def] [scope 45] [HandlePartner]
!17 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{null, metadata !19}
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!20 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786689, metadata !16, metadata !"input", metadata !11, i32 16777260, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [input] [line 44]
!23 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"HandlePtell", metadata !"HandlePtell", metadata !"", i32 67, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @HandlePtell, null, null, metadata !24, i32 68} ; [ DW_TAG_subprogram ] [line 67] [def] [scope 68] [HandlePtell]
!24 = metadata !{metadata !25, metadata !26, metadata !28}
!25 = metadata !{i32 786689, metadata !23, metadata !"input", metadata !11, i32 16777283, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [input] [line 67]
!26 = metadata !{i32 786688, metadata !23, metadata !"change", metadata !11, i32 69, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [change] [line 69]
!27 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!28 = metadata !{i32 786688, metadata !23, metadata !"howmuch", metadata !11, i32 70, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [howmuch] [line 70]
!29 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 8, i32 0, i32 0, metadata !20, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 8, offset 0] [from char]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 80}       ; [ DW_TAG_subrange_type ] [0, 79]
!32 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"CheckBadFlow", metadata !"CheckBadFlow", metadata !"", i32 479, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @CheckBadFlow, null, null, metadata !36, i32 480} ; [ DW_TAG_subprogram ] [line 479] [def] [scope 480] [CheckBadFlow]
!33 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{null, metadata !35}
!35 = metadata !{i32 786454, metadata !1, null, metadata !"xbool", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [xbool] [line 14, size 0, align 0, offset 0] [from ]
!36 = metadata !{metadata !37, metadata !38, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68}
!37 = metadata !{i32 786689, metadata !32, metadata !"reset", metadata !11, i32 16777695, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reset] [line 479]
!38 = metadata !{i32 786688, metadata !32, metadata !"hismoves", metadata !11, i32 481, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hismoves] [line 481]
!39 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 98304, i64 32, i32 0, i32 0, metadata !40, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 98304, align 32, offset 0] [from move_s]
!40 = metadata !{i32 786454, metadata !1, null, metadata !"move_s", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [move_s] [line 102, size 0, align 0, offset 0] [from ]
!41 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 95, i64 192, i64 32, i32 0, i32 0, null, metadata !42, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 95, size 192, align 32, offset 0] [from ]
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!43 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"from", i32 96, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [from] [line 96, size 32, align 32, offset 0] [from int]
!44 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"target", i32 97, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [target] [line 97, size 32, align 32, offset 32] [from int]
!45 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"captured", i32 98, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [captured] [line 98, size 32, align 32, offset 64] [from int]
!46 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"promoted", i32 99, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [promoted] [line 99, size 32, align 32, offset 96] [from int]
!47 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"castled", i32 100, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [castled] [line 100, size 32, align 32, offset 128] [from int]
!48 = metadata !{i32 786445, metadata !4, metadata !41, metadata !"ep", i32 101, i64 32, i64 32, i64 160, i32 0, metadata !27} ; [ DW_TAG_member ] [ep] [line 101, size 32, align 32, offset 160] [from int]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 512}      ; [ DW_TAG_subrange_type ] [0, 511]
!51 = metadata !{i32 786688, metadata !32, metadata !"ourmoves", metadata !11, i32 482, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ourmoves] [line 482]
!52 = metadata !{i32 786688, metadata !32, metadata !"his_num_moves", metadata !11, i32 483, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [his_num_moves] [line 483]
!53 = metadata !{i32 786688, metadata !32, metadata !"our_num_moves", metadata !11, i32 483, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [our_num_moves] [line 483]
!54 = metadata !{i32 786688, metadata !32, metadata !"j", metadata !11, i32 483, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 483]
!55 = metadata !{i32 786688, metadata !32, metadata !"i", metadata !11, i32 483, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 483]
!56 = metadata !{i32 786688, metadata !32, metadata !"ic", metadata !11, i32 483, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 483]
!57 = metadata !{i32 786688, metadata !32, metadata !"icc", metadata !11, i32 483, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icc] [line 483]
!58 = metadata !{i32 786688, metadata !32, metadata !"othermove", metadata !11, i32 485, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [othermove] [line 485]
!59 = metadata !{i32 786688, metadata !32, metadata !"pawnmates", metadata !11, i32 488, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pawnmates] [line 488]
!60 = metadata !{i32 786688, metadata !32, metadata !"knightmates", metadata !11, i32 489, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [knightmates] [line 489]
!61 = metadata !{i32 786688, metadata !32, metadata !"bishopmates", metadata !11, i32 490, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bishopmates] [line 490]
!62 = metadata !{i32 786688, metadata !32, metadata !"rookmates", metadata !11, i32 491, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rookmates] [line 491]
!63 = metadata !{i32 786688, metadata !32, metadata !"queenmates", metadata !11, i32 492, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [queenmates] [line 492]
!64 = metadata !{i32 786688, metadata !32, metadata !"pawnwarn", metadata !11, i32 502, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pawnwarn] [line 502]
!65 = metadata !{i32 786688, metadata !32, metadata !"knightwarn", metadata !11, i32 503, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [knightwarn] [line 503]
!66 = metadata !{i32 786688, metadata !32, metadata !"bishopwarn", metadata !11, i32 504, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bishopwarn] [line 504]
!67 = metadata !{i32 786688, metadata !32, metadata !"rookwarn", metadata !11, i32 505, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rookwarn] [line 505]
!68 = metadata !{i32 786688, metadata !32, metadata !"queenwarn", metadata !11, i32 506, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [queenwarn] [line 506]
!69 = metadata !{metadata !70, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82}
!70 = metadata !{i32 786484, i32 0, null, metadata !"hand_value", metadata !"hand_value", metadata !"", metadata !11, i32 14, metadata !71, i32 0, i32 1, [13 x i32]* @hand_value, null} ; [ DW_TAG_variable ] [hand_value] [line 14] [def]
!71 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 416, i64 32, i32 0, i32 0, metadata !27, metadata !72, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 416, align 32, offset 0] [from int]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786465, i64 0, i64 13}       ; [ DW_TAG_subrange_type ] [0, 12]
!74 = metadata !{i32 786484, i32 0, null, metadata !"std_hand_value", metadata !"std_hand_value", metadata !"", metadata !11, i32 15, metadata !71, i32 0, i32 1, [13 x i32]* @std_hand_value, null} ; [ DW_TAG_variable ] [std_hand_value] [line 15] [def]
!75 = metadata !{i32 786484, i32 0, metadata !32, metadata !"pawnmated", metadata !"pawnmated", metadata !"", metadata !11, i32 495, metadata !27, i32 1, i32 1, i32* @CheckBadFlow.pawnmated, null} ; [ DW_TAG_variable ] [pawnmated] [line 495] [local] [def]
!76 = metadata !{i32 786484, i32 0, metadata !32, metadata !"knightmated", metadata !"knightmated", metadata !"", metadata !11, i32 496, metadata !27, i32 1, i32 1, i32* @CheckBadFlow.knightmated, null} ; [ DW_TAG_variable ] [knightmated] [line 496] [local] [def]
!77 = metadata !{i32 786484, i32 0, metadata !32, metadata !"bishopmated", metadata !"bishopmated", metadata !"", metadata !11, i32 497, metadata !27, i32 1, i32 1, i32* @CheckBadFlow.bishopmated, null} ; [ DW_TAG_variable ] [bishopmated] [line 497] [local] [def]
!78 = metadata !{i32 786484, i32 0, metadata !32, metadata !"rookmated", metadata !"rookmated", metadata !"", metadata !11, i32 498, metadata !27, i32 1, i32 1, i32* @CheckBadFlow.rookmated, null} ; [ DW_TAG_variable ] [rookmated] [line 498] [local] [def]
!79 = metadata !{i32 786484, i32 0, metadata !32, metadata !"queenmated", metadata !"queenmated", metadata !"", metadata !11, i32 499, metadata !27, i32 1, i32 1, i32* @CheckBadFlow.queenmated, null} ; [ DW_TAG_variable ] [queenmated] [line 499] [local] [def]
!80 = metadata !{i32 786484, i32 0, null, metadata !"piecedead", metadata !"piecedead", metadata !"", metadata !11, i32 17, metadata !35, i32 0, i32 1, i32* @piecedead, null} ; [ DW_TAG_variable ] [piecedead] [line 17] [def]
!81 = metadata !{i32 786484, i32 0, null, metadata !"partnerdead", metadata !"partnerdead", metadata !"", metadata !11, i32 18, metadata !35, i32 0, i32 1, i32* @partnerdead, null} ; [ DW_TAG_variable ] [partnerdead] [line 18] [def]
!82 = metadata !{i32 786484, i32 0, null, metadata !"must_go", metadata !"must_go", metadata !"", metadata !11, i32 20, metadata !27, i32 0, i32 1, i32* @must_go, null} ; [ DW_TAG_variable ] [must_go] [line 20] [def]
!83 = metadata !{i32 24, i32 0, metadata !10, null}
!84 = metadata !{i32 25, i32 0, metadata !10, null}
!85 = metadata !{i32 33, i32 0, metadata !14, null}
!86 = metadata !{i32 38, i32 0, metadata !15, null}
!87 = metadata !{i32 39, i32 0, metadata !15, null}
!88 = metadata !{i32 41, i32 0, metadata !15, null}
!89 = metadata !{i32 44, i32 0, metadata !16, null}
!90 = metadata !{i32 46, i32 0, metadata !16, null}
!91 = metadata !{metadata !"omnipotent char", metadata !92}
!92 = metadata !{metadata !"Simple C/C++ TBAA"}
!93 = metadata !{i32 48, i32 0, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !16, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!95 = metadata !{i32 51, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !94, i32 49, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!97 = metadata !{i32 52, i32 0, metadata !96, null}
!98 = metadata !{i32 38, i32 0, metadata !15, metadata !99}
!99 = metadata !{i32 53, i32 0, metadata !96, null}
!100 = metadata !{i32 39, i32 0, metadata !15, metadata !99}
!101 = metadata !{i32 54, i32 0, metadata !96, null}
!102 = metadata !{i32 55, i32 0, metadata !96, null}
!103 = metadata !{i32 56, i32 0, metadata !96, null}
!104 = metadata !{i32 60, i32 0, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !16, i32 59, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!106 = metadata !{i32 61, i32 0, metadata !105, null}
!107 = metadata !{i32 63, i32 0, metadata !105, null}
!108 = metadata !{i32 65, i32 0, metadata !16, null}
!109 = metadata !{i32 67, i32 0, metadata !23, null}
!110 = metadata !{i32 69, i32 0, metadata !23, null}
!111 = metadata !{i32 70, i32 0, metadata !23, null}
!112 = metadata !{i32 72, i32 0, metadata !23, null}
!113 = metadata !{i32 74, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !23, i32 73, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!115 = metadata !{i32 75, i32 0, metadata !114, null}
!116 = metadata !{i32 78, i32 0, metadata !23, null}
!117 = metadata !{metadata !"int", metadata !91}
!118 = metadata !{i32 80, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !23, i32 79, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!120 = metadata !{i32 81, i32 0, metadata !119, null}
!121 = metadata !{i32 84, i32 0, metadata !23, null}
!122 = metadata !{i32 86, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !23, i32 85, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!124 = metadata !{i32 87, i32 0, metadata !123, null}
!125 = metadata !{i32 88, i32 0, metadata !123, null}
!126 = metadata !{i32 89, i32 0, metadata !123, null}
!127 = metadata !{i32 90, i32 0, metadata !23, null}
!128 = metadata !{i32 92, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !23, i32 91, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!130 = metadata !{i32 93, i32 0, metadata !129, null}
!131 = metadata !{i32 94, i32 0, metadata !129, null}
!132 = metadata !{i32 95, i32 0, metadata !129, null}
!133 = metadata !{i32 96, i32 0, metadata !23, null}
!134 = metadata !{i32 98, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !23, i32 97, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!136 = metadata !{i32 99, i32 0, metadata !135, null}
!137 = metadata !{i32 100, i32 0, metadata !135, null}
!138 = metadata !{i32 101, i32 0, metadata !135, null}
!139 = metadata !{i32 102, i32 0, metadata !23, null}
!140 = metadata !{i32 104, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !23, i32 103, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!142 = metadata !{i32 105, i32 0, metadata !141, null}
!143 = metadata !{i32 106, i32 0, metadata !141, null}
!144 = metadata !{i32 107, i32 0, metadata !141, null}
!145 = metadata !{i32 108, i32 0, metadata !23, null}
!146 = metadata !{i32 110, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !23, i32 109, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!148 = metadata !{i32 111, i32 0, metadata !147, null}
!149 = metadata !{i32 112, i32 0, metadata !147, null}
!150 = metadata !{i32 113, i32 0, metadata !23, null}
!151 = metadata !{i32 115, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !23, i32 114, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!153 = metadata !{i32 116, i32 0, metadata !152, null}
!154 = metadata !{i32 117, i32 0, metadata !152, null}
!155 = metadata !{i32 118, i32 0, metadata !23, null}
!156 = metadata !{i32 121, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !23, i32 119, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!158 = metadata !{i32 123, i32 0, metadata !157, null}
!159 = metadata !{i32 124, i32 0, metadata !157, null}
!160 = metadata !{i32 125, i32 0, metadata !157, null}
!161 = metadata !{i32 126, i32 0, metadata !157, null}
!162 = metadata !{i32 127, i32 0, metadata !157, null}
!163 = metadata !{i32 128, i32 0, metadata !157, null}
!164 = metadata !{i32 129, i32 0, metadata !157, null}
!165 = metadata !{i32 131, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !157, i32 130, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!167 = metadata !{i32 133, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !166, i32 132, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!169 = metadata !{i32 134, i32 0, metadata !168, null}
!170 = metadata !{i32 135, i32 0, metadata !168, null}
!171 = metadata !{i32 136, i32 0, metadata !168, null}
!172 = metadata !{i32 137, i32 0, metadata !168, null}
!173 = metadata !{i32 138, i32 0, metadata !168, null}
!174 = metadata !{i32 141, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !166, i32 140, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!176 = metadata !{i32 142, i32 0, metadata !175, null}
!177 = metadata !{i32 143, i32 0, metadata !175, null}
!178 = metadata !{i32 144, i32 0, metadata !175, null}
!179 = metadata !{i32 145, i32 0, metadata !175, null}
!180 = metadata !{i32 147, i32 0, metadata !166, null}
!181 = metadata !{i32 148, i32 0, metadata !166, null}
!182 = metadata !{i32 150, i32 0, metadata !157, null}
!183 = metadata !{i32 50000}
!184 = metadata !{i32 152, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !157, i32 151, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!186 = metadata !{i32 153, i32 0, metadata !185, null}
!187 = metadata !{i32 154, i32 0, metadata !185, null}
!188 = metadata !{i32 155, i32 0, metadata !157, null}
!189 = metadata !{i32 1000}
!190 = metadata !{i32 157, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !157, i32 156, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!192 = metadata !{i32 158, i32 0, metadata !191, null}
!193 = metadata !{i32 159, i32 0, metadata !191, null}
!194 = metadata !{i32 160, i32 0, metadata !157, null}
!195 = metadata !{i32 150}
!196 = metadata !{i32 162, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !157, i32 161, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!198 = metadata !{i32 163, i32 0, metadata !197, null}
!199 = metadata !{i32 166, i32 0, metadata !157, null}
!200 = metadata !{i32 169, i32 0, metadata !157, null}
!201 = metadata !{i32 171, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !157, i32 170, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!203 = metadata !{i32 173, i32 0, metadata !202, null}
!204 = metadata !{i32 176, i32 0, metadata !202, null}
!205 = metadata !{i32 178, i32 0, metadata !202, null}
!206 = metadata !{i32 179, i32 0, metadata !202, null}
!207 = metadata !{i32 180, i32 0, metadata !157, null}
!208 = metadata !{i32 182, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !157, i32 181, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!210 = metadata !{i32 183, i32 0, metadata !209, null}
!211 = metadata !{i32 189, i32 0, metadata !209, null}
!212 = metadata !{i32 185, i32 0, metadata !209, null}
!213 = metadata !{i32 191, i32 0, metadata !209, null}
!214 = metadata !{i32 193, i32 0, metadata !209, null}
!215 = metadata !{i32 194, i32 0, metadata !209, null}
!216 = metadata !{i32 195, i32 0, metadata !157, null}
!217 = metadata !{i32 197, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !157, i32 196, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!219 = metadata !{i32 198, i32 0, metadata !218, null}
!220 = metadata !{i32 204, i32 0, metadata !218, null}
!221 = metadata !{i32 200, i32 0, metadata !218, null}
!222 = metadata !{i32 206, i32 0, metadata !218, null}
!223 = metadata !{i32 208, i32 0, metadata !218, null}
!224 = metadata !{i32 209, i32 0, metadata !218, null}
!225 = metadata !{i32 210, i32 0, metadata !157, null}
!226 = metadata !{i32 212, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !157, i32 211, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!228 = metadata !{i32 213, i32 0, metadata !227, null}
!229 = metadata !{i32 215, i32 0, metadata !227, null}
!230 = metadata !{i32 217, i32 0, metadata !227, null}
!231 = metadata !{i32 218, i32 0, metadata !227, null}
!232 = metadata !{i32 219, i32 0, metadata !157, null}
!233 = metadata !{i32 221, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !157, i32 220, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!235 = metadata !{i32 222, i32 0, metadata !234, null}
!236 = metadata !{i32 229, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !234, i32 228, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!238 = metadata !{i32 230, i32 0, metadata !237, null}
!239 = metadata !{i32 231, i32 0, metadata !237, null}
!240 = metadata !{i32 224, i32 0, metadata !234, null}
!241 = metadata !{i32 234, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !234, i32 233, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!243 = metadata !{i32 235, i32 0, metadata !242, null}
!244 = metadata !{i32 238, i32 0, metadata !234, null}
!245 = metadata !{i32 239, i32 0, metadata !234, null}
!246 = metadata !{i32 240, i32 0, metadata !157, null}
!247 = metadata !{i32 242, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !157, i32 241, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!249 = metadata !{i32 244, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !248, i32 243, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!251 = metadata !{i32 245, i32 0, metadata !250, null}
!252 = metadata !{i32 246, i32 0, metadata !250, null}
!253 = metadata !{i32 247, i32 0, metadata !250, null}
!254 = metadata !{i32 250, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !248, i32 249, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!256 = metadata !{i32 251, i32 0, metadata !255, null}
!257 = metadata !{i32 252, i32 0, metadata !255, null}
!258 = metadata !{i32 255, i32 0, metadata !248, null}
!259 = metadata !{i32 256, i32 0, metadata !248, null}
!260 = metadata !{i32 257, i32 0, metadata !157, null}
!261 = metadata !{i32 259, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !157, i32 258, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!263 = metadata !{i32 261, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !262, i32 260, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!265 = metadata !{i32 262, i32 0, metadata !264, null}
!266 = metadata !{i32 263, i32 0, metadata !264, null}
!267 = metadata !{i32 266, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !262, i32 265, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!269 = metadata !{i32 267, i32 0, metadata !268, null}
!270 = metadata !{i32 270, i32 0, metadata !262, null}
!271 = metadata !{i32 271, i32 0, metadata !262, null}
!272 = metadata !{i32 276, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !23, i32 274, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!274 = metadata !{i32 278, i32 0, metadata !273, null}
!275 = metadata !{i32 279, i32 0, metadata !273, null}
!276 = metadata !{i32 280, i32 0, metadata !273, null}
!277 = metadata !{i32 281, i32 0, metadata !273, null}
!278 = metadata !{i32 282, i32 0, metadata !273, null}
!279 = metadata !{i32 283, i32 0, metadata !273, null}
!280 = metadata !{i32 284, i32 0, metadata !273, null}
!281 = metadata !{i32 286, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !273, i32 285, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!283 = metadata !{i32 288, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !282, i32 287, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!285 = metadata !{i32 289, i32 0, metadata !284, null}
!286 = metadata !{i32 290, i32 0, metadata !284, null}
!287 = metadata !{i32 291, i32 0, metadata !284, null}
!288 = metadata !{i32 292, i32 0, metadata !284, null}
!289 = metadata !{i32 293, i32 0, metadata !284, null}
!290 = metadata !{i32 296, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !282, i32 295, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!292 = metadata !{i32 297, i32 0, metadata !291, null}
!293 = metadata !{i32 298, i32 0, metadata !291, null}
!294 = metadata !{i32 299, i32 0, metadata !291, null}
!295 = metadata !{i32 300, i32 0, metadata !291, null}
!296 = metadata !{i32 302, i32 0, metadata !282, null}
!297 = metadata !{i32 303, i32 0, metadata !282, null}
!298 = metadata !{i32 305, i32 0, metadata !273, null}
!299 = metadata !{i32 307, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !273, i32 306, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!301 = metadata !{i32 308, i32 0, metadata !300, null}
!302 = metadata !{i32 309, i32 0, metadata !300, null}
!303 = metadata !{i32 310, i32 0, metadata !273, null}
!304 = metadata !{i32 312, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !273, i32 311, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!306 = metadata !{i32 313, i32 0, metadata !305, null}
!307 = metadata !{i32 314, i32 0, metadata !305, null}
!308 = metadata !{i32 315, i32 0, metadata !273, null}
!309 = metadata !{i32 317, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !273, i32 316, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!311 = metadata !{i32 318, i32 0, metadata !310, null}
!312 = metadata !{i32 321, i32 0, metadata !273, null}
!313 = metadata !{i32 323, i32 0, metadata !273, null}
!314 = metadata !{i32 325, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !273, i32 324, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!316 = metadata !{i32 326, i32 0, metadata !315, null}
!317 = metadata !{i32 328, i32 0, metadata !315, null}
!318 = metadata !{i32 330, i32 0, metadata !315, null}
!319 = metadata !{i32 331, i32 0, metadata !315, null}
!320 = metadata !{i32 332, i32 0, metadata !273, null}
!321 = metadata !{i32 334, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !273, i32 333, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!323 = metadata !{i32 335, i32 0, metadata !322, null}
!324 = metadata !{i32 341, i32 0, metadata !322, null}
!325 = metadata !{i32 337, i32 0, metadata !322, null}
!326 = metadata !{i32 343, i32 0, metadata !322, null}
!327 = metadata !{i32 345, i32 0, metadata !322, null}
!328 = metadata !{i32 346, i32 0, metadata !322, null}
!329 = metadata !{i32 347, i32 0, metadata !273, null}
!330 = metadata !{i32 349, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !273, i32 348, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!332 = metadata !{i32 350, i32 0, metadata !331, null}
!333 = metadata !{i32 356, i32 0, metadata !331, null}
!334 = metadata !{i32 352, i32 0, metadata !331, null}
!335 = metadata !{i32 358, i32 0, metadata !331, null}
!336 = metadata !{i32 360, i32 0, metadata !331, null}
!337 = metadata !{i32 361, i32 0, metadata !331, null}
!338 = metadata !{i32 362, i32 0, metadata !273, null}
!339 = metadata !{i32 364, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !273, i32 363, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!341 = metadata !{i32 365, i32 0, metadata !340, null}
!342 = metadata !{i32 367, i32 0, metadata !340, null}
!343 = metadata !{i32 369, i32 0, metadata !340, null}
!344 = metadata !{i32 370, i32 0, metadata !340, null}
!345 = metadata !{i32 371, i32 0, metadata !273, null}
!346 = metadata !{i32 373, i32 0, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !273, i32 372, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!348 = metadata !{i32 374, i32 0, metadata !347, null}
!349 = metadata !{i32 381, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !347, i32 380, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!351 = metadata !{i32 382, i32 0, metadata !350, null}
!352 = metadata !{i32 383, i32 0, metadata !350, null}
!353 = metadata !{i32 376, i32 0, metadata !347, null}
!354 = metadata !{i32 386, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !347, i32 385, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!356 = metadata !{i32 387, i32 0, metadata !355, null}
!357 = metadata !{i32 390, i32 0, metadata !347, null}
!358 = metadata !{i32 391, i32 0, metadata !347, null}
!359 = metadata !{i32 392, i32 0, metadata !273, null}
!360 = metadata !{i32 394, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !273, i32 393, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!362 = metadata !{i32 396, i32 0, metadata !363, null}
!363 = metadata !{i32 786443, metadata !1, metadata !361, i32 395, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!364 = metadata !{i32 397, i32 0, metadata !363, null}
!365 = metadata !{i32 398, i32 0, metadata !363, null}
!366 = metadata !{i32 399, i32 0, metadata !363, null}
!367 = metadata !{i32 402, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !361, i32 401, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!369 = metadata !{i32 403, i32 0, metadata !368, null}
!370 = metadata !{i32 404, i32 0, metadata !368, null}
!371 = metadata !{i32 407, i32 0, metadata !361, null}
!372 = metadata !{i32 408, i32 0, metadata !361, null}
!373 = metadata !{i32 409, i32 0, metadata !273, null}
!374 = metadata !{i32 411, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !273, i32 410, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!376 = metadata !{i32 413, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !375, i32 412, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!378 = metadata !{i32 414, i32 0, metadata !377, null}
!379 = metadata !{i32 415, i32 0, metadata !377, null}
!380 = metadata !{i32 418, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !375, i32 417, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!382 = metadata !{i32 419, i32 0, metadata !381, null}
!383 = metadata !{i32 422, i32 0, metadata !375, null}
!384 = metadata !{i32 423, i32 0, metadata !375, null}
!385 = metadata !{i32 426, i32 0, metadata !23, null}
!386 = metadata !{i32 427, i32 0, metadata !23, null}
!387 = metadata !{i32 428, i32 0, metadata !23, null}
!388 = metadata !{i32 430, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !23, i32 429, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!390 = metadata !{i32 24, i32 0, metadata !10, metadata !391}
!391 = metadata !{i32 431, i32 0, metadata !389, null}
!392 = metadata !{i32 432, i32 0, metadata !389, null}
!393 = metadata !{i32 433, i32 0, metadata !389, null}
!394 = metadata !{i32 434, i32 0, metadata !389, null}
!395 = metadata !{i32 435, i32 0, metadata !389, null}
!396 = metadata !{i32 436, i32 0, metadata !23, null}
!397 = metadata !{i32 437, i32 0, metadata !23, null}
!398 = metadata !{i32 440, i32 0, metadata !399, null}
!399 = metadata !{i32 786443, metadata !1, metadata !23, i32 438, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!400 = metadata !{i32 441, i32 0, metadata !399, null}
!401 = metadata !{i32 442, i32 0, metadata !399, null}
!402 = metadata !{i32 445, i32 0, metadata !399, null}
!403 = metadata !{i32 446, i32 0, metadata !23, null}
!404 = metadata !{i32 449, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !23, i32 447, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!406 = metadata !{i32 450, i32 0, metadata !405, null}
!407 = metadata !{i32 451, i32 0, metadata !405, null}
!408 = metadata !{i32 452, i32 0, metadata !405, null}
!409 = metadata !{i32 453, i32 0, metadata !23, null}
!410 = metadata !{i32 457, i32 0, metadata !23, null}
!411 = metadata !{i32 461, i32 0, metadata !23, null}
!412 = metadata !{i32 463, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !23, i32 462, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!414 = metadata !{i32 464, i32 0, metadata !413, null}
!415 = metadata !{i32 465, i32 0, metadata !23, null}
!416 = metadata !{i32 467, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !23, i32 466, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!418 = metadata !{i32 468, i32 0, metadata !417, null}
!419 = metadata !{i32 469, i32 0, metadata !417, null}
!420 = metadata !{i32 472, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !23, i32 471, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!422 = metadata !{i32 474, i32 0, metadata !23, null}
!423 = metadata !{i32 475, i32 0, metadata !23, null}
!424 = metadata !{i32 479, i32 0, metadata !32, null}
!425 = metadata !{i32 481, i32 0, metadata !32, null}
!426 = metadata !{i32 482, i32 0, metadata !32, null}
!427 = metadata !{i32 485, i32 0, metadata !32, null}
!428 = metadata !{i32 492, i32 0, metadata !32, null}
!429 = metadata !{i32 506, i32 0, metadata !32, null}
!430 = metadata !{i32 508, i32 0, metadata !32, null}
!431 = metadata !{i32 510, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !32, i32 509, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!433 = metadata !{i32 511, i32 0, metadata !432, null}
!434 = metadata !{i32 512, i32 0, metadata !432, null}
!435 = metadata !{i32 513, i32 0, metadata !432, null}
!436 = metadata !{i32 514, i32 0, metadata !432, null}
!437 = metadata !{i32 515, i32 0, metadata !432, null}
!438 = metadata !{i32 518, i32 0, metadata !32, null}
!439 = metadata !{i32 520, i32 0, metadata !32, null}
!440 = metadata !{i32 523, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !32, i32 521, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!442 = metadata !{i32 525, i32 0, metadata !441, null}
!443 = metadata !{i32 526, i32 0, metadata !441, null}
!444 = metadata !{i32 528, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !441, i32 528, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!446 = metadata !{i32 538, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !448, i32 533, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!448 = metadata !{i32 786443, metadata !1, metadata !445, i32 529, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!449 = metadata !{i32 530, i32 0, metadata !448, null}
!450 = metadata !{i32 532, i32 0, metadata !448, null}
!451 = metadata !{i32 3}
!452 = metadata !{i32 534, i32 0, metadata !447, null}
!453 = metadata !{i32 536, i32 0, metadata !447, null}
!454 = metadata !{i32 539, i32 0, metadata !447, null}
!455 = metadata !{i32 541, i32 0, metadata !456, null}
!456 = metadata !{i32 786443, metadata !1, metadata !447, i32 541, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!457 = metadata !{i32 544, i32 0, metadata !458, null}
!458 = metadata !{i32 786443, metadata !1, metadata !456, i32 542, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!459 = metadata !{i32 546, i32 0, metadata !458, null}
!460 = metadata !{i32 547, i32 0, metadata !458, null}
!461 = metadata !{i32 549, i32 0, metadata !458, null}
!462 = metadata !{i32 553, i32 0, metadata !448, null}
!463 = metadata !{i32 555, i32 0, metadata !441, null}
!464 = metadata !{i32 558, i32 0, metadata !32, null}
!465 = metadata !{i32 556, i32 0, metadata !441, null}
!466 = metadata !{i32 561, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !32, i32 559, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!468 = metadata !{i32 563, i32 0, metadata !467, null}
!469 = metadata !{i32 564, i32 0, metadata !467, null}
!470 = metadata !{i32 566, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !467, i32 566, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!472 = metadata !{i32 577, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !474, i32 572, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!474 = metadata !{i32 786443, metadata !1, metadata !471, i32 567, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!475 = metadata !{i32 569, i32 0, metadata !474, null}
!476 = metadata !{i32 571, i32 0, metadata !474, null}
!477 = metadata !{i32 573, i32 0, metadata !473, null}
!478 = metadata !{i32 575, i32 0, metadata !473, null}
!479 = metadata !{i32 578, i32 0, metadata !473, null}
!480 = metadata !{i32 580, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !473, i32 580, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!482 = metadata !{i32 582, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !481, i32 581, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!484 = metadata !{i32 584, i32 0, metadata !483, null}
!485 = metadata !{i32 585, i32 0, metadata !483, null}
!486 = metadata !{i32 587, i32 0, metadata !483, null}
!487 = metadata !{i32 590, i32 0, metadata !474, null}
!488 = metadata !{i32 592, i32 0, metadata !467, null}
!489 = metadata !{i32 595, i32 0, metadata !32, null}
!490 = metadata !{i32 593, i32 0, metadata !467, null}
!491 = metadata !{i32 598, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !32, i32 596, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!493 = metadata !{i32 600, i32 0, metadata !492, null}
!494 = metadata !{i32 601, i32 0, metadata !492, null}
!495 = metadata !{i32 603, i32 0, metadata !496, null}
!496 = metadata !{i32 786443, metadata !1, metadata !492, i32 603, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!497 = metadata !{i32 613, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !499, i32 608, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!499 = metadata !{i32 786443, metadata !1, metadata !496, i32 604, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!500 = metadata !{i32 605, i32 0, metadata !499, null}
!501 = metadata !{i32 607, i32 0, metadata !499, null}
!502 = metadata !{i32 609, i32 0, metadata !498, null}
!503 = metadata !{i32 611, i32 0, metadata !498, null}
!504 = metadata !{i32 614, i32 0, metadata !498, null}
!505 = metadata !{i32 616, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !498, i32 616, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!507 = metadata !{i32 618, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !506, i32 617, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!509 = metadata !{i32 620, i32 0, metadata !508, null}
!510 = metadata !{i32 621, i32 0, metadata !508, null}
!511 = metadata !{i32 623, i32 0, metadata !508, null}
!512 = metadata !{i32 626, i32 0, metadata !499, null}
!513 = metadata !{i32 628, i32 0, metadata !492, null}
!514 = metadata !{i32 631, i32 0, metadata !32, null}
!515 = metadata !{i32 629, i32 0, metadata !492, null}
!516 = metadata !{i32 634, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !1, metadata !32, i32 632, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!518 = metadata !{i32 636, i32 0, metadata !517, null}
!519 = metadata !{i32 637, i32 0, metadata !517, null}
!520 = metadata !{i32 639, i32 0, metadata !521, null}
!521 = metadata !{i32 786443, metadata !1, metadata !517, i32 639, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!522 = metadata !{i32 649, i32 0, metadata !523, null}
!523 = metadata !{i32 786443, metadata !1, metadata !524, i32 644, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!524 = metadata !{i32 786443, metadata !1, metadata !521, i32 640, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!525 = metadata !{i32 641, i32 0, metadata !524, null}
!526 = metadata !{i32 643, i32 0, metadata !524, null}
!527 = metadata !{i32 645, i32 0, metadata !523, null}
!528 = metadata !{i32 647, i32 0, metadata !523, null}
!529 = metadata !{i32 650, i32 0, metadata !523, null}
!530 = metadata !{i32 652, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !1, metadata !523, i32 652, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!532 = metadata !{i32 654, i32 0, metadata !533, null}
!533 = metadata !{i32 786443, metadata !1, metadata !531, i32 653, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!534 = metadata !{i32 656, i32 0, metadata !533, null}
!535 = metadata !{i32 657, i32 0, metadata !533, null}
!536 = metadata !{i32 659, i32 0, metadata !533, null}
!537 = metadata !{i32 662, i32 0, metadata !524, null}
!538 = metadata !{i32 664, i32 0, metadata !517, null}
!539 = metadata !{i32 667, i32 0, metadata !32, null}
!540 = metadata !{i32 665, i32 0, metadata !517, null}
!541 = metadata !{i32 670, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !32, i32 668, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!543 = metadata !{i32 672, i32 0, metadata !542, null}
!544 = metadata !{i32 673, i32 0, metadata !542, null}
!545 = metadata !{i32 675, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !542, i32 675, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!547 = metadata !{i32 685, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !549, i32 680, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!549 = metadata !{i32 786443, metadata !1, metadata !546, i32 676, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!550 = metadata !{i32 677, i32 0, metadata !549, null}
!551 = metadata !{i32 679, i32 0, metadata !549, null}
!552 = metadata !{i32 681, i32 0, metadata !548, null}
!553 = metadata !{i32 683, i32 0, metadata !548, null}
!554 = metadata !{i32 686, i32 0, metadata !548, null}
!555 = metadata !{i32 688, i32 0, metadata !556, null}
!556 = metadata !{i32 786443, metadata !1, metadata !548, i32 688, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!557 = metadata !{i32 690, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !1, metadata !556, i32 689, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!559 = metadata !{i32 692, i32 0, metadata !558, null}
!560 = metadata !{i32 693, i32 0, metadata !558, null}
!561 = metadata !{i32 695, i32 0, metadata !558, null}
!562 = metadata !{i32 698, i32 0, metadata !549, null}
!563 = metadata !{i32 700, i32 0, metadata !542, null}
!564 = metadata !{i32 701, i32 0, metadata !542, null}
!565 = metadata !{i32 706, i32 0, metadata !32, null}
!566 = metadata !{i32 708, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !32, i32 707, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!568 = metadata !{i32 710, i32 0, metadata !567, null}
!569 = metadata !{i32 712, i32 0, metadata !570, null}
!570 = metadata !{i32 786443, metadata !1, metadata !567, i32 711, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!571 = metadata !{i32 1}
!572 = metadata !{i32 713, i32 0, metadata !570, null}
!573 = metadata !{i32 714, i32 0, metadata !570, null}
!574 = metadata !{i32 717, i32 0, metadata !32, null}
!575 = metadata !{i32 719, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !1, metadata !32, i32 718, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!577 = metadata !{i32 721, i32 0, metadata !576, null}
!578 = metadata !{i32 723, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !576, i32 722, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!580 = metadata !{i32 724, i32 0, metadata !579, null}
!581 = metadata !{i32 725, i32 0, metadata !579, null}
!582 = metadata !{i32 728, i32 0, metadata !32, null}
!583 = metadata !{i32 730, i32 0, metadata !584, null}
!584 = metadata !{i32 786443, metadata !1, metadata !32, i32 729, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!585 = metadata !{i32 732, i32 0, metadata !584, null}
!586 = metadata !{i32 734, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !584, i32 733, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!588 = metadata !{i32 735, i32 0, metadata !587, null}
!589 = metadata !{i32 736, i32 0, metadata !587, null}
!590 = metadata !{i32 738, i32 0, metadata !32, null}
!591 = metadata !{i32 740, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !1, metadata !32, i32 739, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!593 = metadata !{i32 742, i32 0, metadata !592, null}
!594 = metadata !{i32 744, i32 0, metadata !595, null}
!595 = metadata !{i32 786443, metadata !1, metadata !592, i32 743, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!596 = metadata !{i32 745, i32 0, metadata !595, null}
!597 = metadata !{i32 746, i32 0, metadata !595, null}
!598 = metadata !{i32 748, i32 0, metadata !32, null}
!599 = metadata !{i32 750, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !32, i32 749, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!601 = metadata !{i32 752, i32 0, metadata !600, null}
!602 = metadata !{i32 754, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !1, metadata !600, i32 753, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!604 = metadata !{i32 755, i32 0, metadata !603, null}
!605 = metadata !{i32 756, i32 0, metadata !603, null}
!606 = metadata !{i32 759, i32 0, metadata !32, null}
!607 = metadata !{i32 760, i32 0, metadata !32, null}
!608 = metadata !{i32 761, i32 0, metadata !32, null}
!609 = metadata !{i32 762, i32 0, metadata !32, null}
!610 = metadata !{i32 763, i32 0, metadata !32, null}
!611 = metadata !{i32 764, i32 0, metadata !32, null}
!612 = metadata !{i32 765, i32 0, metadata !32, null}
!613 = metadata !{i32 766, i32 0, metadata !32, null}
!614 = metadata !{i32 767, i32 0, metadata !32, null}
!615 = metadata !{i32 768, i32 0, metadata !32, null}
!616 = metadata !{i32 773, i32 0, metadata !32, null}
!617 = metadata !{i32 775, i32 0, metadata !618, null}
!618 = metadata !{i32 786443, metadata !1, metadata !32, i32 774, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/partner.c]
!619 = metadata !{i32 776, i32 0, metadata !618, null}
!620 = metadata !{i32 777, i32 0, metadata !618, null}
!621 = metadata !{i32 778, i32 0, metadata !618, null}
!622 = metadata !{i32 779, i32 0, metadata !618, null}
!623 = metadata !{i32 781, i32 0, metadata !32, null}
!624 = metadata !{i32 782, i32 0, metadata !32, null}
!625 = metadata !{i32 783, i32 0, metadata !32, null}
!626 = metadata !{i32 784, i32 0, metadata !32, null}
!627 = metadata !{i32 785, i32 0, metadata !32, null}
!628 = metadata !{i32 787, i32 0, metadata !32, null}
!629 = metadata !{i32 788, i32 0, metadata !32, null}
