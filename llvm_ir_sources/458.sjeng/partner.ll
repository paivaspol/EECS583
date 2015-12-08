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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([13 x i32]* @hand_value to i8*), i8* bitcast ([13 x i32]* @std_hand_value to i8*), i64 52, i32 16, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind optsize readnone uwtable
define void @BegForPartner() #2 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @GreetPartner() #0 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([68 x i8]* @str, i64 0, i64 0))
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([75 x i8]* @str84, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @HandlePartner(i8* nocapture %input) #0 {
entry:
  %0 = load i8* %input, align 1, !tbaa !0
  %cmp = icmp eq i8 %0, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32* @have_partner, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  %add.ptr = getelementptr inbounds i8* %input, i64 1
  %call = tail call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8]* @my_partner, i64 0, i64 0)) #8
  store i32 1, i32* @have_partner, align 4, !tbaa !0
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([68 x i8]* @str, i64 0, i64 0)) #1
  %puts2.i = tail call i32 @puts(i8* getelementptr inbounds ([75 x i8]* @str84, i64 0, i64 0)) #1
  %puts8 = tail call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str102, i64 0, i64 0))
  %puts9 = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str87, i64 0, i64 0))
  br label %if.end6

if.else:                                          ; preds = %entry
  tail call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @my_partner, i64 0, i64 0), i8 0, i64 256, i32 16, i1 false)
  store i32 0, i32* @have_partner, align 4, !tbaa !0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str85, i64 0, i64 0))
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then2, %if.else
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define void @HandlePtell(i8* %input) #0 {
entry:
  %howmuch = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8]* %howmuch, i64 0, i64 0
  call void @llvm.lifetime.start(i64 80, i8* %0) #1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([80 x i8]* @HandlePtell.howmuch, i64 0, i64 0), i64 80, i32 16, i1 false)
  %add.ptr = getelementptr inbounds i8* %input, i64 6
  %call = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i64 4) #9
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts = call i32 @puts(i8* getelementptr inbounds ([146 x i8]* @str88, i64 0, i64 0))
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32* @Variant, align 4, !tbaa !2
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0), i64 5) #9
  %tobool4 = icmp eq i32 %call3, 0
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %puts683 = call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str104, i64 0, i64 0))
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %call9 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i64 3) #9
  %tobool10 = icmp eq i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  %puts636 = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str89, i64 0, i64 0))
  store i32 1, i32* @must_sit, align 4, !tbaa !0
  store i32 0, i32* @must_go, align 4, !tbaa !2
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %call14 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i64 2) #9
  %tobool15 = icmp eq i32 %call14, 0
  br i1 %tobool15, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call17 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i64 4) #9
  %tobool18 = icmp eq i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %lor.lhs.false, %if.else
  %puts637 = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str90, i64 0, i64 0))
  store i32 0, i32* @must_sit, align 4, !tbaa !0
  store i32 4, i32* @must_go, align 4, !tbaa !2
  br label %cleanup

if.else21:                                        ; preds = %lor.lhs.false
  %call23 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i64 4) #9
  %tobool24 = icmp eq i32 %call23, 0
  br i1 %tobool24, label %if.then29, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.else21
  %call27 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i64 4) #9
  %tobool28 = icmp eq i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %lor.lhs.false25, %if.else21
  %puts638 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str91, i64 0, i64 0))
  store i32 1, i32* @go_fast, align 4, !tbaa !0
  store i32 0, i32* @must_sit, align 4, !tbaa !0
  br label %cleanup

if.else31:                                        ; preds = %lor.lhs.false25
  %call33 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4) #9
  %tobool34 = icmp eq i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.else31
  %puts639 = call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str92, i64 0, i64 0))
  store i32 0, i32* @go_fast, align 4, !tbaa !0
  store i32 0, i32* @must_sit, align 4, !tbaa !0
  br label %cleanup

if.else37:                                        ; preds = %if.else31
  %call39 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0), i64 5) #9
  %tobool40 = icmp eq i32 %call39, 0
  br i1 %tobool40, label %if.then41, label %if.else44

if.then41:                                        ; preds = %if.else37
  %puts640 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str93, i64 0, i64 0))
  %puts641 = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str94, i64 0, i64 0))
  br label %cleanup

if.else44:                                        ; preds = %if.else37
  %call46 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i64 4) #9
  %tobool47 = icmp eq i32 %call46, 0
  br i1 %tobool47, label %if.then48, label %if.else51

if.then48:                                        ; preds = %if.else44
  %puts642 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str95, i64 0, i64 0))
  %puts643 = call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str96, i64 0, i64 0))
  br label %cleanup

if.else51:                                        ; preds = %if.else44
  %lhsc = load i8* %add.ptr, align 1
  switch i8 %lhsc, label %lor.lhs.false442 [
    i8 43, label %if.then55
    i8 45, label %if.then247
    i8 120, label %land.lhs.true458
  ]

if.then55:                                        ; preds = %if.else51
  %call57 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str27, i64 0, i64 0)) #9
  %cmp58 = icmp eq i8* %call57, null
  br i1 %cmp58, label %lor.lhs.false59, label %if.then87

lor.lhs.false59:                                  ; preds = %if.then55
  %strchr = call i8* @strchr(i8* %add.ptr, i32 110)
  %cmp62 = icmp eq i8* %strchr, null
  br i1 %cmp62, label %land.lhs.true63, label %if.else101

land.lhs.true63:                                  ; preds = %lor.lhs.false59
  %strchr652 = call i8* @strchr(i8* %add.ptr, i32 98)
  %cmp66 = icmp eq i8* %strchr652, null
  br i1 %cmp66, label %land.lhs.true67, label %if.else101

land.lhs.true67:                                  ; preds = %land.lhs.true63
  %strchr653 = call i8* @strchr(i8* %add.ptr, i32 112)
  %cmp70 = icmp eq i8* %strchr653, null
  br i1 %cmp70, label %land.lhs.true71, label %if.else101

land.lhs.true71:                                  ; preds = %land.lhs.true67
  %strchr654 = call i8* @strchr(i8* %add.ptr, i32 114)
  %cmp74 = icmp eq i8* %strchr654, null
  br i1 %cmp74, label %land.lhs.true75, label %if.else101

land.lhs.true75:                                  ; preds = %land.lhs.true71
  %strchr655 = call i8* @strchr(i8* %add.ptr, i32 113)
  %cmp78 = icmp eq i8* %strchr655, null
  br i1 %cmp78, label %land.lhs.true79, label %if.else101

land.lhs.true79:                                  ; preds = %land.lhs.true75
  %strchr656 = call i8* @strchr(i8* %add.ptr, i32 100)
  %cmp82 = icmp eq i8* %strchr656, null
  br i1 %cmp82, label %land.lhs.true83, label %if.else101

land.lhs.true83:                                  ; preds = %land.lhs.true79
  %strchr657 = call i8* @strchr(i8* %add.ptr, i32 104)
  %cmp86 = icmp eq i8* %strchr657, null
  br i1 %cmp86, label %if.then87, label %if.else101

if.then87:                                        ; preds = %if.then55, %land.lhs.true83
  %2 = load i32* @comp_color, align 4, !tbaa !2
  %cmp88 = icmp eq i32 %2, 1
  br i1 %cmp88, label %if.then89, label %if.else94

if.then89:                                        ; preds = %if.then87
  %3 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !tbaa !2
  %add = add nsw i32 %3, 25
  store i32 %add, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !tbaa !2
  %4 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !tbaa !2
  %add90 = add nsw i32 %4, 50
  store i32 %add90, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !tbaa !2
  %5 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !tbaa !2
  %add91 = add nsw i32 %5, 50
  store i32 %add91, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !tbaa !2
  %6 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !tbaa !2
  %add92 = add nsw i32 %6, 50
  store i32 %add92, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !tbaa !2
  %7 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add93 = add nsw i32 %7, 100
  store i32 %add93, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  br label %if.end99

if.else94:                                        ; preds = %if.then87
  %8 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !tbaa !2
  %sub = add nsw i32 %8, -25
  store i32 %sub, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !tbaa !2
  %9 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !tbaa !2
  %sub95 = add nsw i32 %9, -50
  store i32 %sub95, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !tbaa !2
  %10 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !tbaa !2
  %sub96 = add nsw i32 %10, -50
  store i32 %sub96, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !tbaa !2
  %11 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !tbaa !2
  %sub97 = add nsw i32 %11, -50
  store i32 %sub97, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !tbaa !2
  %12 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub98 = add nsw i32 %12, -100
  store i32 %sub98, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  br label %if.end99

if.end99:                                         ; preds = %if.else94, %if.then89
  %puts658 = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str97, i64 0, i64 0))
  br label %if.end125

if.else101:                                       ; preds = %land.lhs.true83, %land.lhs.true79, %land.lhs.true75, %land.lhs.true71, %land.lhs.true67, %land.lhs.true63, %lor.lhs.false59
  %call103 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0)) #9
  %cmp104 = icmp eq i8* %call103, null
  br i1 %cmp104, label %if.else107, label %if.then105

if.then105:                                       ; preds = %if.else101
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0), i64 6, i32 1, i1 false)
  br label %if.end125

if.else107:                                       ; preds = %if.else101
  %call109 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0)) #9
  %cmp110 = icmp eq i8* %call109, null
  br i1 %cmp110, label %if.else114, label %if.then111

if.then111:                                       ; preds = %if.else107
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([49 x i8]* @.str39, i64 0, i64 0), i64 49, i32 1, i1 false)
  br label %if.end125

if.else114:                                       ; preds = %if.else107
  %strchr644 = call i8* @strchr(i8* %add.ptr, i32 43)
  %cmp117 = icmp eq i8* %strchr644, null
  br i1 %cmp117, label %if.else121, label %if.then118

if.then118:                                       ; preds = %if.else114
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([44 x i8]* @.str40, i64 0, i64 0), i64 44, i32 1, i1 false)
  br label %if.end125

if.else121:                                       ; preds = %if.else114
  call void @llvm.trap()
  unreachable

if.end125:                                        ; preds = %if.then105, %if.then118, %if.then111, %if.end99
  %change.0 = phi i32 [ 0, %if.end99 ], [ 50000, %if.then105 ], [ 1000, %if.then111 ], [ 150, %if.then118 ]
  %strchr645 = call i8* @strchr(i8* %add.ptr, i32 110)
  %cmp128 = icmp eq i8* %strchr645, null
  br i1 %cmp128, label %if.end138, label %if.then129

if.then129:                                       ; preds = %if.end125
  %13 = load i32* @comp_color, align 4, !tbaa !2
  %cmp130 = icmp eq i32 %13, 1
  br i1 %cmp130, label %if.then131, label %if.else133

if.then131:                                       ; preds = %if.then129
  %14 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 3), align 4, !tbaa !2
  %add132 = add nsw i32 %14, %change.0
  store i32 %add132, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !tbaa !2
  br label %if.end135

if.else133:                                       ; preds = %if.then129
  %15 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 4), align 16, !tbaa !2
  %sub134 = sub nsw i32 %15, %change.0
  store i32 %sub134, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !tbaa !2
  br label %if.end135

if.end135:                                        ; preds = %if.else133, %if.then131
  %call137 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str41, i64 0, i64 0), i8* %0) #8
  br label %if.end138

if.end138:                                        ; preds = %if.end125, %if.end135
  %strchr646 = call i8* @strchr(i8* %add.ptr, i32 98)
  %cmp141 = icmp eq i8* %strchr646, null
  br i1 %cmp141, label %if.end157, label %if.then142

if.then142:                                       ; preds = %if.end138
  %16 = load i32* @comp_color, align 4, !tbaa !2
  %cmp143 = icmp eq i32 %16, 1
  br i1 %cmp143, label %if.then150, label %if.else152

if.then150:                                       ; preds = %if.then142
  %17 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !tbaa !2
  %add145 = add nsw i32 %17, %change.0
  store i32 %add145, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !tbaa !2
  %18 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add151 = add nsw i32 %18, %change.0
  store i32 %add151, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  br label %if.end154

if.else152:                                       ; preds = %if.then142
  %19 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !tbaa !2
  %sub147 = sub nsw i32 %19, %change.0
  store i32 %sub147, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !tbaa !2
  %20 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub153 = sub nsw i32 %20, %change.0
  store i32 %sub153, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  br label %if.end154

if.end154:                                        ; preds = %if.else152, %if.then150
  %call156 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str42, i64 0, i64 0), i8* %0) #8
  br label %if.end157

if.end157:                                        ; preds = %if.end138, %if.end154
  %strchr647 = call i8* @strchr(i8* %add.ptr, i32 114)
  %cmp160 = icmp eq i8* %strchr647, null
  br i1 %cmp160, label %if.end176, label %if.then161

if.then161:                                       ; preds = %if.end157
  %21 = load i32* @comp_color, align 4, !tbaa !2
  %cmp162 = icmp eq i32 %21, 1
  br i1 %cmp162, label %if.then169, label %if.else171

if.then169:                                       ; preds = %if.then161
  %22 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 7), align 4, !tbaa !2
  %add164 = add nsw i32 %22, %change.0
  store i32 %add164, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !tbaa !2
  %23 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add170 = add nsw i32 %23, %change.0
  store i32 %add170, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  br label %if.end173

if.else171:                                       ; preds = %if.then161
  %24 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 8), align 16, !tbaa !2
  %sub166 = sub nsw i32 %24, %change.0
  store i32 %sub166, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !tbaa !2
  %25 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub172 = sub nsw i32 %25, %change.0
  store i32 %sub172, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  br label %if.end173

if.end173:                                        ; preds = %if.else171, %if.then169
  %call175 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0), i8* %0) #8
  br label %if.end176

if.end176:                                        ; preds = %if.end157, %if.end173
  %strchr648 = call i8* @strchr(i8* %add.ptr, i32 113)
  %cmp179 = icmp eq i8* %strchr648, null
  br i1 %cmp179, label %if.end189, label %if.then180

if.then180:                                       ; preds = %if.end176
  %26 = load i32* @comp_color, align 4, !tbaa !2
  %cmp181 = icmp eq i32 %26, 1
  br i1 %cmp181, label %if.then182, label %if.else184

if.then182:                                       ; preds = %if.then180
  %27 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add183 = add nsw i32 %27, %change.0
  store i32 %add183, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  br label %if.end186

if.else184:                                       ; preds = %if.then180
  %28 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub185 = sub nsw i32 %28, %change.0
  store i32 %sub185, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  br label %if.end186

if.end186:                                        ; preds = %if.else184, %if.then182
  %call188 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str44, i64 0, i64 0), i8* %0) #8
  br label %if.end189

if.end189:                                        ; preds = %if.end176, %if.end186
  %strchr649 = call i8* @strchr(i8* %add.ptr, i32 112)
  %cmp192 = icmp eq i8* %strchr649, null
  br i1 %cmp192, label %if.end210, label %if.then193

if.then193:                                       ; preds = %if.end189
  %29 = load i32* @comp_color, align 4, !tbaa !2
  %cmp194 = icmp eq i32 %29, 1
  br i1 %cmp194, label %if.then201, label %if.else204

if.then201:                                       ; preds = %if.then193
  %30 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 1), align 4, !tbaa !2
  %add196 = add nsw i32 %30, %change.0
  store i32 %add196, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !tbaa !2
  %31 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add202 = add nsw i32 %31, %change.0
  store i32 %add202, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  %32 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !tbaa !2
  %add203 = add nsw i32 %32, %change.0
  store i32 %add203, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !tbaa !2
  br label %if.end207

if.else204:                                       ; preds = %if.then193
  %33 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 2), align 8, !tbaa !2
  %sub198 = sub nsw i32 %33, %change.0
  store i32 %sub198, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !tbaa !2
  %34 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub205 = sub nsw i32 %34, %change.0
  store i32 %sub205, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  %35 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !tbaa !2
  %sub206 = sub nsw i32 %35, %change.0
  store i32 %sub206, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !tbaa !2
  br label %if.end207

if.end207:                                        ; preds = %if.else204, %if.then201
  %call209 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str45, i64 0, i64 0), i8* %0) #8
  br label %if.end210

if.end210:                                        ; preds = %if.end189, %if.end207
  %strchr650 = call i8* @strchr(i8* %add.ptr, i32 100)
  %cmp213 = icmp eq i8* %strchr650, null
  br i1 %cmp213, label %if.end227, label %if.then214

if.then214:                                       ; preds = %if.end210
  %36 = load i32* @comp_color, align 4, !tbaa !2
  %cmp215 = icmp eq i32 %36, 1
  br i1 %cmp215, label %if.then216, label %if.else220

if.then216:                                       ; preds = %if.then214
  %37 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 1), align 4, !tbaa !2
  %add217 = add nsw i32 %37, %change.0
  store i32 %add217, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !tbaa !2
  %38 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !tbaa !2
  %add218 = add nsw i32 %38, %change.0
  store i32 %add218, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !tbaa !2
  %39 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add219 = add nsw i32 %39, %change.0
  store i32 %add219, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  br label %if.end224

if.else220:                                       ; preds = %if.then214
  %40 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 2), align 8, !tbaa !2
  %sub221 = sub nsw i32 %40, %change.0
  store i32 %sub221, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !tbaa !2
  %41 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !tbaa !2
  %sub222 = sub nsw i32 %41, %change.0
  store i32 %sub222, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !tbaa !2
  %42 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub223 = sub nsw i32 %42, %change.0
  store i32 %sub223, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  br label %if.end224

if.end224:                                        ; preds = %if.else220, %if.then216
  %call226 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str46, i64 0, i64 0), i8* %0) #8
  br label %if.end227

if.end227:                                        ; preds = %if.end210, %if.end224
  %strchr651 = call i8* @strchr(i8* %add.ptr, i32 104)
  %cmp230 = icmp eq i8* %strchr651, null
  br i1 %cmp230, label %cleanup, label %if.then231

if.then231:                                       ; preds = %if.end227
  %43 = load i32* @comp_color, align 4, !tbaa !2
  %cmp232 = icmp eq i32 %43, 1
  br i1 %cmp232, label %if.then233, label %if.else236

if.then233:                                       ; preds = %if.then231
  %44 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 7), align 4, !tbaa !2
  %add234 = add nsw i32 %44, %change.0
  store i32 %add234, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !tbaa !2
  %45 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add235 = add nsw i32 %45, %change.0
  store i32 %add235, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  br label %if.end239

if.else236:                                       ; preds = %if.then231
  %46 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 8), align 16, !tbaa !2
  %sub237 = sub nsw i32 %46, %change.0
  store i32 %sub237, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !tbaa !2
  %47 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub238 = sub nsw i32 %47, %change.0
  store i32 %sub238, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  br label %if.end239

if.end239:                                        ; preds = %if.else236, %if.then233
  %call241 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str47, i64 0, i64 0), i8* %0) #8
  br label %cleanup

if.then247:                                       ; preds = %if.else51
  %call249 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str27, i64 0, i64 0)) #9
  %cmp250 = icmp eq i8* %call249, null
  br i1 %cmp250, label %lor.lhs.false251, label %if.then279

lor.lhs.false251:                                 ; preds = %if.then247
  %strchr660 = call i8* @strchr(i8* %add.ptr, i32 110)
  %cmp254 = icmp eq i8* %strchr660, null
  br i1 %cmp254, label %land.lhs.true255, label %if.else295

land.lhs.true255:                                 ; preds = %lor.lhs.false251
  %strchr669 = call i8* @strchr(i8* %add.ptr, i32 98)
  %cmp258 = icmp eq i8* %strchr669, null
  br i1 %cmp258, label %land.lhs.true259, label %if.else295

land.lhs.true259:                                 ; preds = %land.lhs.true255
  %strchr670 = call i8* @strchr(i8* %add.ptr, i32 112)
  %cmp262 = icmp eq i8* %strchr670, null
  br i1 %cmp262, label %land.lhs.true263, label %if.else295

land.lhs.true263:                                 ; preds = %land.lhs.true259
  %strchr671 = call i8* @strchr(i8* %add.ptr, i32 114)
  %cmp266 = icmp eq i8* %strchr671, null
  br i1 %cmp266, label %land.lhs.true267, label %if.else295

land.lhs.true267:                                 ; preds = %land.lhs.true263
  %strchr672 = call i8* @strchr(i8* %add.ptr, i32 113)
  %cmp270 = icmp eq i8* %strchr672, null
  br i1 %cmp270, label %land.lhs.true271, label %if.else295

land.lhs.true271:                                 ; preds = %land.lhs.true267
  %strchr673 = call i8* @strchr(i8* %add.ptr, i32 100)
  %cmp274 = icmp eq i8* %strchr673, null
  br i1 %cmp274, label %land.lhs.true275, label %if.else295

land.lhs.true275:                                 ; preds = %land.lhs.true271
  %strchr674 = call i8* @strchr(i8* %add.ptr, i32 104)
  %cmp278 = icmp eq i8* %strchr674, null
  br i1 %cmp278, label %if.then279, label %if.else295

if.then279:                                       ; preds = %if.then247, %land.lhs.true275
  %48 = load i32* @comp_color, align 4, !tbaa !2
  %cmp280 = icmp eq i32 %48, 1
  br i1 %cmp280, label %if.then281, label %if.else287

if.then281:                                       ; preds = %if.then279
  %49 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !tbaa !2
  %sub282 = add nsw i32 %49, -20
  store i32 %sub282, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !tbaa !2
  %50 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !tbaa !2
  %sub283 = add nsw i32 %50, -50
  store i32 %sub283, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !tbaa !2
  %51 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !tbaa !2
  %sub284 = add nsw i32 %51, -50
  store i32 %sub284, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !tbaa !2
  %52 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !tbaa !2
  %sub285 = add nsw i32 %52, -50
  store i32 %sub285, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !tbaa !2
  %53 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub286 = add nsw i32 %53, -100
  store i32 %sub286, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  br label %if.end293

if.else287:                                       ; preds = %if.then279
  %54 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !tbaa !2
  %add288 = add nsw i32 %54, 20
  store i32 %add288, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !tbaa !2
  %55 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !tbaa !2
  %add289 = add nsw i32 %55, 50
  store i32 %add289, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !tbaa !2
  %56 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !tbaa !2
  %add290 = add nsw i32 %56, 50
  store i32 %add290, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !tbaa !2
  %57 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !tbaa !2
  %add291 = add nsw i32 %57, 50
  store i32 %add291, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !tbaa !2
  %58 = load i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add292 = add nsw i32 %58, 100
  store i32 %add292, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  br label %if.end293

if.end293:                                        ; preds = %if.else287, %if.then281
  %puts675 = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str98, i64 0, i64 0))
  br label %if.end320

if.else295:                                       ; preds = %land.lhs.true275, %land.lhs.true271, %land.lhs.true267, %land.lhs.true263, %land.lhs.true259, %land.lhs.true255, %lor.lhs.false251
  %call297 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str50, i64 0, i64 0)) #9
  %cmp298 = icmp eq i8* %call297, null
  br i1 %cmp298, label %if.else302, label %if.then299

if.then299:                                       ; preds = %if.else295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([53 x i8]* @.str51, i64 0, i64 0), i64 53, i32 1, i1 false)
  br label %if.end320

if.else302:                                       ; preds = %if.else295
  %call304 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str52, i64 0, i64 0)) #9
  %cmp305 = icmp eq i8* %call304, null
  br i1 %cmp305, label %if.else309, label %if.then306

if.then306:                                       ; preds = %if.else302
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([52 x i8]* @.str53, i64 0, i64 0), i64 52, i32 1, i1 false)
  br label %if.end320

if.else309:                                       ; preds = %if.else302
  %strchr661 = call i8* @strchr(i8* %add.ptr, i32 45)
  %cmp312 = icmp eq i8* %strchr661, null
  br i1 %cmp312, label %if.else316, label %if.then313

if.then313:                                       ; preds = %if.else309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([47 x i8]* @.str54, i64 0, i64 0), i64 47, i32 1, i1 false)
  br label %if.end320

if.else316:                                       ; preds = %if.else309
  call void @llvm.trap()
  unreachable

if.end320:                                        ; preds = %if.then299, %if.then313, %if.then306, %if.end293
  %change.1 = phi i32 [ 0, %if.end293 ], [ 50000, %if.then299 ], [ 1000, %if.then306 ], [ 150, %if.then313 ]
  %strchr662 = call i8* @strchr(i8* %add.ptr, i32 110)
  %cmp323 = icmp eq i8* %strchr662, null
  br i1 %cmp323, label %if.end333, label %if.then324

if.then324:                                       ; preds = %if.end320
  %59 = load i32* @comp_color, align 4, !tbaa !2
  %cmp325 = icmp eq i32 %59, 1
  br i1 %cmp325, label %if.then326, label %if.else328

if.then326:                                       ; preds = %if.then324
  %60 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 4), align 16, !tbaa !2
  %sub327 = sub nsw i32 %60, %change.1
  store i32 %sub327, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 4), align 16, !tbaa !2
  br label %if.end330

if.else328:                                       ; preds = %if.then324
  %61 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 3), align 4, !tbaa !2
  %add329 = add nsw i32 %61, %change.1
  store i32 %add329, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 3), align 4, !tbaa !2
  br label %if.end330

if.end330:                                        ; preds = %if.else328, %if.then326
  %call332 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str41, i64 0, i64 0), i8* %0) #8
  br label %if.end333

if.end333:                                        ; preds = %if.end320, %if.end330
  %strchr663 = call i8* @strchr(i8* %add.ptr, i32 98)
  %cmp336 = icmp eq i8* %strchr663, null
  br i1 %cmp336, label %if.end352, label %if.then337

if.then337:                                       ; preds = %if.end333
  %62 = load i32* @comp_color, align 4, !tbaa !2
  %cmp338 = icmp eq i32 %62, 1
  br i1 %cmp338, label %if.then345, label %if.else347

if.then345:                                       ; preds = %if.then337
  %63 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !tbaa !2
  %sub340 = sub nsw i32 %63, %change.1
  store i32 %sub340, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !tbaa !2
  %64 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub346 = sub nsw i32 %64, %change.1
  store i32 %sub346, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  br label %if.end349

if.else347:                                       ; preds = %if.then337
  %65 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !tbaa !2
  %add342 = add nsw i32 %65, %change.1
  store i32 %add342, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !tbaa !2
  %66 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add348 = add nsw i32 %66, %change.1
  store i32 %add348, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  br label %if.end349

if.end349:                                        ; preds = %if.else347, %if.then345
  %call351 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str42, i64 0, i64 0), i8* %0) #8
  br label %if.end352

if.end352:                                        ; preds = %if.end333, %if.end349
  %strchr664 = call i8* @strchr(i8* %add.ptr, i32 114)
  %cmp355 = icmp eq i8* %strchr664, null
  br i1 %cmp355, label %if.end371, label %if.then356

if.then356:                                       ; preds = %if.end352
  %67 = load i32* @comp_color, align 4, !tbaa !2
  %cmp357 = icmp eq i32 %67, 1
  br i1 %cmp357, label %if.then364, label %if.else366

if.then364:                                       ; preds = %if.then356
  %68 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 8), align 16, !tbaa !2
  %sub359 = sub nsw i32 %68, %change.1
  store i32 %sub359, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !tbaa !2
  %69 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub365 = sub nsw i32 %69, %change.1
  store i32 %sub365, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  br label %if.end368

if.else366:                                       ; preds = %if.then356
  %70 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 7), align 4, !tbaa !2
  %add361 = add nsw i32 %70, %change.1
  store i32 %add361, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !tbaa !2
  %71 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add367 = add nsw i32 %71, %change.1
  store i32 %add367, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  br label %if.end368

if.end368:                                        ; preds = %if.else366, %if.then364
  %call370 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0), i8* %0) #8
  br label %if.end371

if.end371:                                        ; preds = %if.end352, %if.end368
  %strchr665 = call i8* @strchr(i8* %add.ptr, i32 113)
  %cmp374 = icmp eq i8* %strchr665, null
  br i1 %cmp374, label %if.end384, label %if.then375

if.then375:                                       ; preds = %if.end371
  %72 = load i32* @comp_color, align 4, !tbaa !2
  %cmp376 = icmp eq i32 %72, 1
  br i1 %cmp376, label %if.then377, label %if.else379

if.then377:                                       ; preds = %if.then375
  %73 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub378 = sub nsw i32 %73, %change.1
  store i32 %sub378, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  br label %if.end381

if.else379:                                       ; preds = %if.then375
  %74 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add380 = add nsw i32 %74, %change.1
  store i32 %add380, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  br label %if.end381

if.end381:                                        ; preds = %if.else379, %if.then377
  %call383 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str44, i64 0, i64 0), i8* %0) #8
  br label %if.end384

if.end384:                                        ; preds = %if.end371, %if.end381
  %strchr666 = call i8* @strchr(i8* %add.ptr, i32 112)
  %cmp387 = icmp eq i8* %strchr666, null
  br i1 %cmp387, label %if.end405, label %if.then388

if.then388:                                       ; preds = %if.end384
  %75 = load i32* @comp_color, align 4, !tbaa !2
  %cmp389 = icmp eq i32 %75, 1
  br i1 %cmp389, label %if.then396, label %if.else399

if.then396:                                       ; preds = %if.then388
  %76 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 2), align 8, !tbaa !2
  %sub391 = sub nsw i32 %76, %change.1
  store i32 %sub391, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !tbaa !2
  %77 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub397 = sub nsw i32 %77, %change.1
  store i32 %sub397, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  %78 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !tbaa !2
  %sub398 = sub nsw i32 %78, %change.1
  store i32 %sub398, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !tbaa !2
  br label %if.end402

if.else399:                                       ; preds = %if.then388
  %79 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 1), align 4, !tbaa !2
  %add393 = add nsw i32 %79, %change.1
  store i32 %add393, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !tbaa !2
  %80 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add400 = add nsw i32 %80, %change.1
  store i32 %add400, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  %81 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !tbaa !2
  %add401 = add nsw i32 %81, %change.1
  store i32 %add401, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !tbaa !2
  br label %if.end402

if.end402:                                        ; preds = %if.else399, %if.then396
  %call404 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str45, i64 0, i64 0), i8* %0) #8
  br label %if.end405

if.end405:                                        ; preds = %if.end384, %if.end402
  %strchr667 = call i8* @strchr(i8* %add.ptr, i32 100)
  %cmp408 = icmp eq i8* %strchr667, null
  br i1 %cmp408, label %if.end422, label %if.then409

if.then409:                                       ; preds = %if.end405
  %82 = load i32* @comp_color, align 4, !tbaa !2
  %cmp410 = icmp eq i32 %82, 1
  br i1 %cmp410, label %if.then411, label %if.else415

if.then411:                                       ; preds = %if.then409
  %83 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 2), align 8, !tbaa !2
  %sub412 = sub nsw i32 %83, %change.1
  store i32 %sub412, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 2), align 8, !tbaa !2
  %84 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 12), align 16, !tbaa !2
  %sub413 = sub nsw i32 %84, %change.1
  store i32 %sub413, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 12), align 16, !tbaa !2
  %85 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub414 = sub nsw i32 %85, %change.1
  store i32 %sub414, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  br label %if.end419

if.else415:                                       ; preds = %if.then409
  %86 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 1), align 4, !tbaa !2
  %add416 = add nsw i32 %86, %change.1
  store i32 %add416, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 1), align 4, !tbaa !2
  %87 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 11), align 4, !tbaa !2
  %add417 = add nsw i32 %87, %change.1
  store i32 %add417, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 11), align 4, !tbaa !2
  %88 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add418 = add nsw i32 %88, %change.1
  store i32 %add418, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  br label %if.end419

if.end419:                                        ; preds = %if.else415, %if.then411
  %call421 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str46, i64 0, i64 0), i8* %0) #8
  br label %if.end422

if.end422:                                        ; preds = %if.end405, %if.end419
  %strchr668 = call i8* @strchr(i8* %add.ptr, i32 104)
  %cmp425 = icmp eq i8* %strchr668, null
  br i1 %cmp425, label %cleanup, label %if.then426

if.then426:                                       ; preds = %if.end422
  %89 = load i32* @comp_color, align 4, !tbaa !2
  %cmp427 = icmp eq i32 %89, 1
  br i1 %cmp427, label %if.then428, label %if.else431

if.then428:                                       ; preds = %if.then426
  %90 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 8), align 16, !tbaa !2
  %sub429 = sub nsw i32 %90, %change.1
  store i32 %sub429, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 8), align 16, !tbaa !2
  %91 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 10), align 8, !tbaa !2
  %sub430 = sub nsw i32 %91, %change.1
  store i32 %sub430, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 10), align 8, !tbaa !2
  br label %if.end434

if.else431:                                       ; preds = %if.then426
  %92 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 7), align 4, !tbaa !2
  %add432 = add nsw i32 %92, %change.1
  store i32 %add432, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 7), align 4, !tbaa !2
  %93 = load i32* getelementptr inbounds ([13 x i32]* @std_hand_value, i64 0, i64 9), align 4, !tbaa !2
  %add433 = add nsw i32 %93, %change.1
  store i32 %add433, i32* getelementptr inbounds ([13 x i32]* @hand_value, i64 0, i64 9), align 4, !tbaa !2
  br label %if.end434

if.end434:                                        ; preds = %if.else431, %if.then428
  %call436 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str47, i64 0, i64 0), i8* %0) #8
  br label %cleanup

lor.lhs.false442:                                 ; preds = %if.else51
  %call444 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([16 x i8]* @.str56, i64 0, i64 0)) #9
  %cmp445 = icmp eq i8* %call444, null
  br i1 %cmp445, label %lor.lhs.false446, label %land.lhs.true458

lor.lhs.false446:                                 ; preds = %lor.lhs.false442
  %call448 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0)) #9
  %cmp449 = icmp eq i8* %call448, null
  br i1 %cmp449, label %lor.lhs.false454, label %land.lhs.true450

land.lhs.true450:                                 ; preds = %lor.lhs.false446
  %call452 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str58, i64 0, i64 0)) #9
  %cmp453 = icmp ne i8* %call452, null
  %tobool457 = icmp eq i8 %lhsc, 61
  %or.cond = or i1 %cmp453, %tobool457
  br i1 %or.cond, label %land.lhs.true458, label %if.else464

lor.lhs.false454:                                 ; preds = %lor.lhs.false446
  %tobool457.old = icmp eq i8 %lhsc, 61
  br i1 %tobool457.old, label %land.lhs.true458, label %if.else464

land.lhs.true458:                                 ; preds = %land.lhs.true450, %if.else51, %lor.lhs.false454, %lor.lhs.false442
  %call460 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([9 x i8]* @.str60, i64 0, i64 0)) #9
  %cmp461 = icmp eq i8* %call460, null
  br i1 %cmp461, label %if.then462, label %if.else464

if.then462:                                       ; preds = %land.lhs.true458
  %puts681 = call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str103, i64 0, i64 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([13 x i32]* @hand_value to i8*), i8* bitcast ([13 x i32]* @std_hand_value to i8*), i64 52, i32 16, i1 false) #1
  store i32 0, i32* @must_sit, align 4, !tbaa !0
  store i32 0, i32* @partnerdead, align 4, !tbaa !0
  store i32 0, i32* @piecedead, align 4, !tbaa !0
  br label %cleanup

if.else464:                                       ; preds = %land.lhs.true450, %lor.lhs.false454, %land.lhs.true458
  %call466 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([26 x i8]* @.str62, i64 0, i64 0), i64 25) #9
  %tobool467 = icmp eq i32 %call466, 0
  br i1 %tobool467, label %if.then472, label %lor.lhs.false468

lor.lhs.false468:                                 ; preds = %if.else464
  %call470 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str63, i64 0, i64 0), i64 4) #9
  %tobool471 = icmp eq i32 %call470, 0
  br i1 %tobool471, label %if.then472, label %if.else473

if.then472:                                       ; preds = %lor.lhs.false468, %if.else464
  store i32 1, i32* @go_fast, align 4, !tbaa !0
  store i32 0, i32* @must_sit, align 4, !tbaa !0
  store i32 1, i32* @partnerdead, align 4, !tbaa !0
  br label %cleanup

if.else473:                                       ; preds = %lor.lhs.false468
  %call475 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([27 x i8]* @.str64, i64 0, i64 0), i64 26) #9
  %tobool476 = icmp eq i32 %call475, 0
  br i1 %tobool476, label %if.then477, label %if.else478

if.then477:                                       ; preds = %if.else473
  store i32 1, i32* @go_fast, align 4, !tbaa !0
  store i32 0, i32* @must_sit, align 4, !tbaa !0
  store i32 1, i32* @piecedead, align 4, !tbaa !0
  br label %cleanup

if.else478:                                       ; preds = %if.else473
  %call480 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0), i64 5) #9
  %tobool481 = icmp eq i32 %call480, 0
  br i1 %tobool481, label %cleanup, label %if.else483

if.else483:                                       ; preds = %if.else478
  %call485 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str65, i64 0, i64 0), i64 2) #9
  %tobool486 = icmp eq i32 %call485, 0
  br i1 %tobool486, label %cleanup, label %if.else488

if.else488:                                       ; preds = %if.else483
  %call490 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str66, i64 0, i64 0), i64 2) #9
  %tobool491 = icmp eq i32 %call490, 0
  br i1 %tobool491, label %if.then496, label %lor.lhs.false492

lor.lhs.false492:                                 ; preds = %if.else488
  %call494 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), i64 5) #9
  %tobool495 = icmp eq i32 %call494, 0
  br i1 %tobool495, label %if.then496, label %if.else498

if.then496:                                       ; preds = %lor.lhs.false492, %if.else488
  %puts677 = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str99, i64 0, i64 0))
  br label %cleanup

if.else498:                                       ; preds = %lor.lhs.false492
  %call500 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([8 x i8]* @.str69, i64 0, i64 0)) #9
  %cmp501 = icmp eq i8* %call500, null
  br i1 %cmp501, label %if.else505, label %if.then502

if.then502:                                       ; preds = %if.else498
  %puts679 = call i32 @puts(i8* getelementptr inbounds ([86 x i8]* @str101, i64 0, i64 0))
  %puts680 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str102, i64 0, i64 0))
  br label %cleanup

if.else505:                                       ; preds = %if.else498
  %puts678 = call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str100, i64 0, i64 0))
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.then29, %if.then41, %if.end239, %if.then462, %if.then477, %if.then502, %if.else505, %if.then496, %if.then472, %if.end434, %if.then48, %if.then35, %if.then19, %if.end227, %if.end422, %if.else483, %if.else478, %if.then5, %if.then
  call void @llvm.lifetime.end(i64 80, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @CheckBadFlow(i32 %reset) #0 {
entry:
  %hismoves = alloca [512 x %struct.move_s], align 16
  %ourmoves = alloca [512 x %struct.move_s], align 16
  %0 = bitcast [512 x %struct.move_s]* %hismoves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %0) #1
  %1 = bitcast [512 x %struct.move_s]* %ourmoves to i8*
  call void @llvm.lifetime.start(i64 12288, i8* %1) #1
  %tobool = icmp eq i32 %reset, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* @CheckBadFlow.pawnmated, align 4, !tbaa !2
  store i32 0, i32* @CheckBadFlow.knightmated, align 4, !tbaa !2
  store i32 0, i32* @CheckBadFlow.bishopmated, align 4, !tbaa !2
  store i32 0, i32* @CheckBadFlow.rookmated, align 4, !tbaa !2
  store i32 0, i32* @CheckBadFlow.queenmated, align 4, !tbaa !2
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @in_check() #8
  %2 = load i32* @white_to_move, align 4, !tbaa !2
  %tobool1 = icmp ne i32 %2, 0
  %cond = select i1 %tobool1, i32 1, i32 2
  %idxprom488 = zext i32 %cond to i64
  %3 = zext i1 %tobool1 to i32
  %lnot.ext = xor i32 %3, 1
  %idxprom3489 = zext i32 %lnot.ext to i64
  %arrayidx4 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom3489, i64 %idxprom488
  %4 = load i32* %arrayidx4, align 4, !tbaa !2
  %tobool5 = icmp eq i32 %4, 0
  br i1 %tobool5, label %if.then6, label %if.end44

if.then6:                                         ; preds = %if.end
  call void @DropaddHolding(i32 %cond, i32 %lnot.ext) #8
  %arrayidx12 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx12) #8
  %5 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp563 = icmp sgt i32 %5, 0
  br i1 %cmp563, label %for.body.lr.ph, label %for.end38

for.body.lr.ph:                                   ; preds = %if.then6
  %arrayidx20 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end34
  %i.0564 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %if.end34 ]
  call void @make(%struct.move_s* %arrayidx12, i32 %i.0564) #8
  %call16 = call i32 @check_legal(%struct.move_s* %arrayidx12, i32 %i.0564, i32 %call) #8
  %tobool17 = icmp eq i32 %call16, 0
  br i1 %tobool17, label %if.end34, label %if.then18

if.then18:                                        ; preds = %for.body
  %call19 = call i32 @in_check() #8
  call void @gen(%struct.move_s* %arrayidx20) #8
  %6 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp22558 = icmp slt i32 %6, 1
  br i1 %cmp22558, label %if.end34, label %for.body26

for.body26:                                       ; preds = %if.then18, %for.body26
  %pawnmates.1561 = phi i32 [ %pawnmates.1., %for.body26 ], [ 3, %if.then18 ]
  %j.0560 = phi i32 [ %inc, %for.body26 ], [ 0, %if.then18 ]
  call void @make(%struct.move_s* %arrayidx20, i32 %j.0560) #8
  %call29 = call i32 @check_legal(%struct.move_s* %arrayidx20, i32 %j.0560, i32 %call19) #8
  %tobool30 = icmp eq i32 %call29, 0
  %pawnmates.1. = select i1 %tobool30, i32 %pawnmates.1561, i32 0
  call void @unmake(%struct.move_s* %arrayidx20, i32 %j.0560) #8
  %inc = add nsw i32 %j.0560, 1
  %cmp22 = icmp sge i32 %inc, %6
  %cmp24 = icmp eq i32 %pawnmates.1., 0
  %or.cond513 = or i1 %cmp22, %cmp24
  br i1 %or.cond513, label %if.end34, label %for.body26

if.end34:                                         ; preds = %if.then18, %for.body26, %for.body
  %pawnmates.3 = phi i32 [ 0, %for.body ], [ 3, %if.then18 ], [ %pawnmates.1., %for.body26 ]
  call void @unmake(%struct.move_s* %arrayidx12, i32 %i.0564) #8
  %inc37 = add nsw i32 %i.0564, 1
  %cmp = icmp slt i32 %inc37, %5
  %cmp13 = icmp eq i32 %pawnmates.3, 0
  %or.cond = and i1 %cmp, %cmp13
  br i1 %or.cond, label %for.body, label %for.end38

for.end38:                                        ; preds = %if.end34, %if.then6
  %pawnmates.0.lcssa = phi i32 [ 0, %if.then6 ], [ %pawnmates.3, %if.end34 ]
  %7 = load i32* @white_to_move, align 4, !tbaa !2
  %tobool39 = icmp ne i32 %7, 0
  %cond40 = select i1 %tobool39, i32 1, i32 2
  %8 = zext i1 %tobool39 to i32
  %lnot.ext43 = xor i32 %8, 1
  call void @DropremoveHolding(i32 %cond40, i32 %lnot.ext43) #8
  %.pre = load i32* @white_to_move, align 4, !tbaa !2
  br label %if.end44

if.end44:                                         ; preds = %if.end, %for.end38
  %9 = phi i32 [ %2, %if.end ], [ %.pre, %for.end38 ]
  %pawnmates.4 = phi i32 [ 0, %if.end ], [ %pawnmates.0.lcssa, %for.end38 ]
  %tobool45 = icmp ne i32 %9, 0
  %cond46 = select i1 %tobool45, i32 3, i32 4
  %idxprom47490 = zext i32 %cond46 to i64
  %10 = zext i1 %tobool45 to i32
  %lnot.ext50 = xor i32 %10, 1
  %idxprom51491 = zext i32 %lnot.ext50 to i64
  %arrayidx53 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom51491, i64 %idxprom47490
  %11 = load i32* %arrayidx53, align 4, !tbaa !2
  %tobool54 = icmp eq i32 %11, 0
  br i1 %tobool54, label %if.then55, label %if.end101

if.then55:                                        ; preds = %if.end44
  call void @DropaddHolding(i32 %cond46, i32 %lnot.ext50) #8
  %arrayidx61 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx61) #8
  %12 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp63554 = icmp sgt i32 %12, 0
  br i1 %cmp63554, label %for.body67.lr.ph, label %for.end95

for.body67.lr.ph:                                 ; preds = %if.then55
  %arrayidx74 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0
  br label %for.body67

for.body67:                                       ; preds = %for.body67.lr.ph, %if.end91
  %i.1555 = phi i32 [ 0, %for.body67.lr.ph ], [ %inc94, %if.end91 ]
  call void @make(%struct.move_s* %arrayidx61, i32 %i.1555) #8
  %call70 = call i32 @check_legal(%struct.move_s* %arrayidx61, i32 %i.1555, i32 %call) #8
  %tobool71 = icmp eq i32 %call70, 0
  br i1 %tobool71, label %if.end91, label %if.then72

if.then72:                                        ; preds = %for.body67
  %call73 = call i32 @in_check() #8
  call void @gen(%struct.move_s* %arrayidx74) #8
  %13 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp76549 = icmp slt i32 %13, 1
  br i1 %cmp76549, label %if.end91, label %for.body80

for.body80:                                       ; preds = %if.then72, %for.body80
  %knightmates.1552 = phi i32 [ %knightmates.1., %for.body80 ], [ 3, %if.then72 ]
  %j.1551 = phi i32 [ %inc89, %for.body80 ], [ 0, %if.then72 ]
  call void @make(%struct.move_s* %arrayidx74, i32 %j.1551) #8
  %call83 = call i32 @check_legal(%struct.move_s* %arrayidx74, i32 %j.1551, i32 %call73) #8
  %tobool84 = icmp eq i32 %call83, 0
  %knightmates.1. = select i1 %tobool84, i32 %knightmates.1552, i32 0
  call void @unmake(%struct.move_s* %arrayidx74, i32 %j.1551) #8
  %inc89 = add nsw i32 %j.1551, 1
  %cmp76 = icmp sge i32 %inc89, %13
  %cmp78 = icmp eq i32 %knightmates.1., 0
  %or.cond515 = or i1 %cmp76, %cmp78
  br i1 %or.cond515, label %if.end91, label %for.body80

if.end91:                                         ; preds = %if.then72, %for.body80, %for.body67
  %knightmates.3 = phi i32 [ 0, %for.body67 ], [ 3, %if.then72 ], [ %knightmates.1., %for.body80 ]
  call void @unmake(%struct.move_s* %arrayidx61, i32 %i.1555) #8
  %inc94 = add nsw i32 %i.1555, 1
  %cmp63 = icmp slt i32 %inc94, %12
  %cmp65 = icmp eq i32 %knightmates.3, 0
  %or.cond514 = and i1 %cmp63, %cmp65
  br i1 %or.cond514, label %for.body67, label %for.end95

for.end95:                                        ; preds = %if.end91, %if.then55
  %knightmates.0.lcssa = phi i32 [ 0, %if.then55 ], [ %knightmates.3, %if.end91 ]
  %14 = load i32* @white_to_move, align 4, !tbaa !2
  %tobool96 = icmp ne i32 %14, 0
  %cond97 = select i1 %tobool96, i32 3, i32 4
  %15 = zext i1 %tobool96 to i32
  %lnot.ext100 = xor i32 %15, 1
  call void @DropremoveHolding(i32 %cond97, i32 %lnot.ext100) #8
  %.pre567 = load i32* @white_to_move, align 4, !tbaa !2
  br label %if.end101

if.end101:                                        ; preds = %if.end44, %for.end95
  %16 = phi i32 [ %9, %if.end44 ], [ %.pre567, %for.end95 ]
  %knightmates.4 = phi i32 [ 0, %if.end44 ], [ %knightmates.0.lcssa, %for.end95 ]
  %tobool102 = icmp ne i32 %16, 0
  %cond103 = select i1 %tobool102, i32 11, i32 12
  %idxprom104492 = zext i32 %cond103 to i64
  %17 = zext i1 %tobool102 to i32
  %lnot.ext107 = xor i32 %17, 1
  %idxprom108493 = zext i32 %lnot.ext107 to i64
  %arrayidx110 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom108493, i64 %idxprom104492
  %18 = load i32* %arrayidx110, align 4, !tbaa !2
  %tobool111 = icmp eq i32 %18, 0
  br i1 %tobool111, label %if.then112, label %if.end158

if.then112:                                       ; preds = %if.end101
  call void @DropaddHolding(i32 %cond103, i32 %lnot.ext107) #8
  %arrayidx118 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx118) #8
  %19 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp120545 = icmp sgt i32 %19, 0
  br i1 %cmp120545, label %for.body124.lr.ph, label %for.end152

for.body124.lr.ph:                                ; preds = %if.then112
  %arrayidx131 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0
  br label %for.body124

for.body124:                                      ; preds = %for.body124.lr.ph, %if.end148
  %i.2546 = phi i32 [ 0, %for.body124.lr.ph ], [ %inc151, %if.end148 ]
  call void @make(%struct.move_s* %arrayidx118, i32 %i.2546) #8
  %call127 = call i32 @check_legal(%struct.move_s* %arrayidx118, i32 %i.2546, i32 %call) #8
  %tobool128 = icmp eq i32 %call127, 0
  br i1 %tobool128, label %if.end148, label %if.then129

if.then129:                                       ; preds = %for.body124
  %call130 = call i32 @in_check() #8
  call void @gen(%struct.move_s* %arrayidx131) #8
  %20 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp133540 = icmp slt i32 %20, 1
  br i1 %cmp133540, label %if.end148, label %for.body137

for.body137:                                      ; preds = %if.then129, %for.body137
  %bishopmates.1543 = phi i32 [ %bishopmates.1., %for.body137 ], [ 3, %if.then129 ]
  %j.2542 = phi i32 [ %inc146, %for.body137 ], [ 0, %if.then129 ]
  call void @make(%struct.move_s* %arrayidx131, i32 %j.2542) #8
  %call140 = call i32 @check_legal(%struct.move_s* %arrayidx131, i32 %j.2542, i32 %call130) #8
  %tobool141 = icmp eq i32 %call140, 0
  %bishopmates.1. = select i1 %tobool141, i32 %bishopmates.1543, i32 0
  call void @unmake(%struct.move_s* %arrayidx131, i32 %j.2542) #8
  %inc146 = add nsw i32 %j.2542, 1
  %cmp133 = icmp sge i32 %inc146, %20
  %cmp135 = icmp eq i32 %bishopmates.1., 0
  %or.cond517 = or i1 %cmp133, %cmp135
  br i1 %or.cond517, label %if.end148, label %for.body137

if.end148:                                        ; preds = %if.then129, %for.body137, %for.body124
  %bishopmates.3 = phi i32 [ 0, %for.body124 ], [ 3, %if.then129 ], [ %bishopmates.1., %for.body137 ]
  call void @unmake(%struct.move_s* %arrayidx118, i32 %i.2546) #8
  %inc151 = add nsw i32 %i.2546, 1
  %cmp120 = icmp slt i32 %inc151, %19
  %cmp122 = icmp eq i32 %bishopmates.3, 0
  %or.cond516 = and i1 %cmp120, %cmp122
  br i1 %or.cond516, label %for.body124, label %for.end152

for.end152:                                       ; preds = %if.end148, %if.then112
  %bishopmates.0.lcssa = phi i32 [ 0, %if.then112 ], [ %bishopmates.3, %if.end148 ]
  %21 = load i32* @white_to_move, align 4, !tbaa !2
  %tobool153 = icmp ne i32 %21, 0
  %cond154 = select i1 %tobool153, i32 11, i32 12
  %22 = zext i1 %tobool153 to i32
  %lnot.ext157 = xor i32 %22, 1
  call void @DropremoveHolding(i32 %cond154, i32 %lnot.ext157) #8
  %.pre568 = load i32* @white_to_move, align 4, !tbaa !2
  br label %if.end158

if.end158:                                        ; preds = %if.end101, %for.end152
  %23 = phi i32 [ %16, %if.end101 ], [ %.pre568, %for.end152 ]
  %bishopmates.4 = phi i32 [ 0, %if.end101 ], [ %bishopmates.0.lcssa, %for.end152 ]
  %tobool159 = icmp ne i32 %23, 0
  %cond160 = select i1 %tobool159, i32 7, i32 8
  %idxprom161494 = zext i32 %cond160 to i64
  %24 = zext i1 %tobool159 to i32
  %lnot.ext164 = xor i32 %24, 1
  %idxprom165495 = zext i32 %lnot.ext164 to i64
  %arrayidx167 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom165495, i64 %idxprom161494
  %25 = load i32* %arrayidx167, align 4, !tbaa !2
  %tobool168 = icmp eq i32 %25, 0
  br i1 %tobool168, label %if.then169, label %if.end215

if.then169:                                       ; preds = %if.end158
  call void @DropaddHolding(i32 %cond160, i32 %lnot.ext164) #8
  %arrayidx175 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx175) #8
  %26 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp177536 = icmp sgt i32 %26, 0
  br i1 %cmp177536, label %for.body181.lr.ph, label %for.end209

for.body181.lr.ph:                                ; preds = %if.then169
  %arrayidx188 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0
  br label %for.body181

for.body181:                                      ; preds = %for.body181.lr.ph, %if.end205
  %i.3537 = phi i32 [ 0, %for.body181.lr.ph ], [ %inc208, %if.end205 ]
  call void @make(%struct.move_s* %arrayidx175, i32 %i.3537) #8
  %call184 = call i32 @check_legal(%struct.move_s* %arrayidx175, i32 %i.3537, i32 %call) #8
  %tobool185 = icmp eq i32 %call184, 0
  br i1 %tobool185, label %if.end205, label %if.then186

if.then186:                                       ; preds = %for.body181
  %call187 = call i32 @in_check() #8
  call void @gen(%struct.move_s* %arrayidx188) #8
  %27 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp190531 = icmp slt i32 %27, 1
  br i1 %cmp190531, label %if.end205, label %for.body194

for.body194:                                      ; preds = %if.then186, %for.body194
  %rookmates.1534 = phi i32 [ %rookmates.1., %for.body194 ], [ 3, %if.then186 ]
  %j.3533 = phi i32 [ %inc203, %for.body194 ], [ 0, %if.then186 ]
  call void @make(%struct.move_s* %arrayidx188, i32 %j.3533) #8
  %call197 = call i32 @check_legal(%struct.move_s* %arrayidx188, i32 %j.3533, i32 %call187) #8
  %tobool198 = icmp eq i32 %call197, 0
  %rookmates.1. = select i1 %tobool198, i32 %rookmates.1534, i32 0
  call void @unmake(%struct.move_s* %arrayidx188, i32 %j.3533) #8
  %inc203 = add nsw i32 %j.3533, 1
  %cmp190 = icmp sge i32 %inc203, %27
  %cmp192 = icmp eq i32 %rookmates.1., 0
  %or.cond519 = or i1 %cmp190, %cmp192
  br i1 %or.cond519, label %if.end205, label %for.body194

if.end205:                                        ; preds = %if.then186, %for.body194, %for.body181
  %rookmates.3 = phi i32 [ 0, %for.body181 ], [ 3, %if.then186 ], [ %rookmates.1., %for.body194 ]
  call void @unmake(%struct.move_s* %arrayidx175, i32 %i.3537) #8
  %inc208 = add nsw i32 %i.3537, 1
  %cmp177 = icmp slt i32 %inc208, %26
  %cmp179 = icmp eq i32 %rookmates.3, 0
  %or.cond518 = and i1 %cmp177, %cmp179
  br i1 %or.cond518, label %for.body181, label %for.end209

for.end209:                                       ; preds = %if.end205, %if.then169
  %rookmates.0.lcssa = phi i32 [ 0, %if.then169 ], [ %rookmates.3, %if.end205 ]
  %28 = load i32* @white_to_move, align 4, !tbaa !2
  %tobool210 = icmp ne i32 %28, 0
  %cond211 = select i1 %tobool210, i32 7, i32 8
  %29 = zext i1 %tobool210 to i32
  %lnot.ext214 = xor i32 %29, 1
  call void @DropremoveHolding(i32 %cond211, i32 %lnot.ext214) #8
  %.pre569 = load i32* @white_to_move, align 4, !tbaa !2
  br label %if.end215

if.end215:                                        ; preds = %if.end158, %for.end209
  %30 = phi i32 [ %23, %if.end158 ], [ %.pre569, %for.end209 ]
  %rookmates.4 = phi i32 [ 0, %if.end158 ], [ %rookmates.0.lcssa, %for.end209 ]
  %tobool216 = icmp ne i32 %30, 0
  %cond217 = select i1 %tobool216, i32 9, i32 10
  %idxprom218496 = zext i32 %cond217 to i64
  %31 = zext i1 %tobool216 to i32
  %lnot.ext221 = xor i32 %31, 1
  %idxprom222497 = zext i32 %lnot.ext221 to i64
  %arrayidx224 = getelementptr inbounds [2 x [16 x i32]]* @holding, i64 0, i64 %idxprom222497, i64 %idxprom218496
  %32 = load i32* %arrayidx224, align 4, !tbaa !2
  %tobool225 = icmp eq i32 %32, 0
  br i1 %tobool225, label %if.then226, label %if.end272

if.then226:                                       ; preds = %if.end215
  call void @DropaddHolding(i32 %cond217, i32 %lnot.ext221) #8
  %arrayidx232 = getelementptr inbounds [512 x %struct.move_s]* %hismoves, i64 0, i64 0
  call void @gen(%struct.move_s* %arrayidx232) #8
  %33 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp234527 = icmp sgt i32 %33, 0
  br i1 %cmp234527, label %for.body238.lr.ph, label %for.end266

for.body238.lr.ph:                                ; preds = %if.then226
  %arrayidx245 = getelementptr inbounds [512 x %struct.move_s]* %ourmoves, i64 0, i64 0
  br label %for.body238

for.body238:                                      ; preds = %for.body238.lr.ph, %if.end262
  %i.4528 = phi i32 [ 0, %for.body238.lr.ph ], [ %inc265, %if.end262 ]
  call void @make(%struct.move_s* %arrayidx232, i32 %i.4528) #8
  %call241 = call i32 @check_legal(%struct.move_s* %arrayidx232, i32 %i.4528, i32 %call) #8
  %tobool242 = icmp eq i32 %call241, 0
  br i1 %tobool242, label %if.end262, label %if.then243

if.then243:                                       ; preds = %for.body238
  %call244 = call i32 @in_check() #8
  call void @gen(%struct.move_s* %arrayidx245) #8
  %34 = load i32* @numb_moves, align 4, !tbaa !2
  %cmp247523 = icmp slt i32 %34, 1
  br i1 %cmp247523, label %if.end262, label %for.body251

for.body251:                                      ; preds = %if.then243, %for.body251
  %queenmates.1526 = phi i32 [ %queenmates.1., %for.body251 ], [ 3, %if.then243 ]
  %j.4525 = phi i32 [ %inc260, %for.body251 ], [ 0, %if.then243 ]
  call void @make(%struct.move_s* %arrayidx245, i32 %j.4525) #8
  %call254 = call i32 @check_legal(%struct.move_s* %arrayidx245, i32 %j.4525, i32 %call244) #8
  %tobool255 = icmp eq i32 %call254, 0
  %queenmates.1. = select i1 %tobool255, i32 %queenmates.1526, i32 0
  call void @unmake(%struct.move_s* %arrayidx245, i32 %j.4525) #8
  %inc260 = add nsw i32 %j.4525, 1
  %cmp247 = icmp sge i32 %inc260, %34
  %cmp249 = icmp eq i32 %queenmates.1., 0
  %or.cond521 = or i1 %cmp247, %cmp249
  br i1 %or.cond521, label %if.end262, label %for.body251

if.end262:                                        ; preds = %if.then243, %for.body251, %for.body238
  %queenmates.3 = phi i32 [ 0, %for.body238 ], [ 3, %if.then243 ], [ %queenmates.1., %for.body251 ]
  call void @unmake(%struct.move_s* %arrayidx232, i32 %i.4528) #8
  %inc265 = add nsw i32 %i.4528, 1
  %cmp234 = icmp slt i32 %inc265, %33
  %cmp236 = icmp eq i32 %queenmates.3, 0
  %or.cond520 = and i1 %cmp234, %cmp236
  br i1 %or.cond520, label %for.body238, label %for.end266

for.end266:                                       ; preds = %if.end262, %if.then226
  %queenmates.0.lcssa = phi i32 [ 0, %if.then226 ], [ %queenmates.3, %if.end262 ]
  %35 = load i32* @white_to_move, align 4, !tbaa !2
  %tobool267 = icmp ne i32 %35, 0
  %cond268 = select i1 %tobool267, i32 9, i32 10
  %36 = zext i1 %tobool267 to i32
  %lnot.ext271 = xor i32 %36, 1
  call void @DropremoveHolding(i32 %cond268, i32 %lnot.ext271) #8
  br label %if.end272

if.end272:                                        ; preds = %if.end215, %for.end266
  %queenmates.4 = phi i32 [ 0, %if.end215 ], [ %queenmates.0.lcssa, %for.end266 ]
  %37 = load i32* @CheckBadFlow.pawnmated, align 4, !tbaa !2
  %cmp273 = icmp eq i32 %pawnmates.4, %37
  br i1 %cmp273, label %if.end283, label %if.then274

if.then274:                                       ; preds = %if.end272
  %cmp275 = icmp eq i32 %pawnmates.4, 3
  br i1 %cmp275, label %if.end283, label %if.else

if.else:                                          ; preds = %if.then274
  %38 = or i32 %37, %pawnmates.4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %if.then279, label %if.end283

if.then279:                                       ; preds = %if.else
  %puts512 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str116, i64 0, i64 0))
  br label %if.end283

if.end283:                                        ; preds = %if.then274, %if.end272, %if.then279, %if.else
  %othermove.0 = phi i32 [ 1, %if.then279 ], [ 0, %if.else ], [ 0, %if.end272 ], [ 0, %if.then274 ]
  %pawnwarn.0 = phi i32 [ 0, %if.then279 ], [ 0, %if.else ], [ 0, %if.end272 ], [ 1, %if.then274 ]
  %40 = load i32* @CheckBadFlow.knightmated, align 4, !tbaa !2
  %cmp284 = icmp eq i32 %knightmates.4, %40
  br i1 %cmp284, label %if.end296, label %if.then285

if.then285:                                       ; preds = %if.end283
  %cmp286 = icmp eq i32 %knightmates.4, 3
  br i1 %cmp286, label %if.end296, label %if.else288

if.else288:                                       ; preds = %if.then285
  %41 = or i32 %40, %knightmates.4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %if.then292, label %if.end296

if.then292:                                       ; preds = %if.else288
  %puts511 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str115, i64 0, i64 0))
  br label %if.end296

if.end296:                                        ; preds = %if.then285, %if.end283, %if.then292, %if.else288
  %othermove.1 = phi i32 [ 1, %if.then292 ], [ %othermove.0, %if.else288 ], [ %othermove.0, %if.end283 ], [ %othermove.0, %if.then285 ]
  %knightwarn.0 = phi i32 [ 0, %if.then292 ], [ 0, %if.else288 ], [ 0, %if.end283 ], [ 1, %if.then285 ]
  %43 = load i32* @CheckBadFlow.bishopmated, align 4, !tbaa !2
  %cmp297 = icmp eq i32 %bishopmates.4, %43
  br i1 %cmp297, label %if.end309, label %if.then298

if.then298:                                       ; preds = %if.end296
  %cmp299 = icmp eq i32 %bishopmates.4, 3
  br i1 %cmp299, label %if.end309, label %if.else301

if.else301:                                       ; preds = %if.then298
  %44 = or i32 %43, %bishopmates.4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %if.then305, label %if.end309

if.then305:                                       ; preds = %if.else301
  %puts510 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str114, i64 0, i64 0))
  br label %if.end309

if.end309:                                        ; preds = %if.then298, %if.end296, %if.then305, %if.else301
  %othermove.2 = phi i32 [ 1, %if.then305 ], [ %othermove.1, %if.else301 ], [ %othermove.1, %if.end296 ], [ %othermove.1, %if.then298 ]
  %bishopwarn.0 = phi i32 [ 0, %if.then305 ], [ 0, %if.else301 ], [ 0, %if.end296 ], [ 1, %if.then298 ]
  %46 = load i32* @CheckBadFlow.rookmated, align 4, !tbaa !2
  %cmp310 = icmp eq i32 %rookmates.4, %46
  br i1 %cmp310, label %if.end322, label %if.then311

if.then311:                                       ; preds = %if.end309
  %cmp312 = icmp eq i32 %rookmates.4, 3
  br i1 %cmp312, label %if.end322, label %if.else314

if.else314:                                       ; preds = %if.then311
  %47 = or i32 %46, %rookmates.4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %if.then318, label %if.end322

if.then318:                                       ; preds = %if.else314
  %puts509 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str113, i64 0, i64 0))
  br label %if.end322

if.end322:                                        ; preds = %if.then311, %if.end309, %if.then318, %if.else314
  %othermove.3 = phi i32 [ 1, %if.then318 ], [ %othermove.2, %if.else314 ], [ %othermove.2, %if.end309 ], [ %othermove.2, %if.then311 ]
  %rookwarn.0 = phi i32 [ 0, %if.then318 ], [ 0, %if.else314 ], [ 0, %if.end309 ], [ 1, %if.then311 ]
  %49 = load i32* @CheckBadFlow.queenmated, align 4, !tbaa !2
  %cmp323 = icmp eq i32 %queenmates.4, %49
  br i1 %cmp323, label %if.end335, label %if.then324

if.then324:                                       ; preds = %if.end322
  %cmp325 = icmp eq i32 %queenmates.4, 3
  br i1 %cmp325, label %if.end335, label %if.else327

if.else327:                                       ; preds = %if.then324
  %50 = or i32 %49, %queenmates.4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %if.then331, label %if.end335

if.then331:                                       ; preds = %if.else327
  %puts508 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str112, i64 0, i64 0))
  br label %if.end335

if.end335:                                        ; preds = %if.then324, %if.end322, %if.then331, %if.else327
  %othermove.4 = phi i32 [ 1, %if.then331 ], [ %othermove.3, %if.else327 ], [ %othermove.3, %if.end322 ], [ %othermove.3, %if.then324 ]
  %queenwarn.0 = phi i32 [ 0, %if.then331 ], [ 0, %if.else327 ], [ 0, %if.end322 ], [ 1, %if.then324 ]
  %tobool336 = icmp eq i32 %pawnwarn.0, 0
  br i1 %tobool336, label %if.end339, label %if.then337

if.then337:                                       ; preds = %if.end335
  %puts507 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str111, i64 0, i64 0))
  br label %if.end339

if.end339:                                        ; preds = %if.end335, %if.then337
  %tobool340 = icmp eq i32 %knightwarn.0, 0
  br i1 %tobool340, label %if.end343, label %if.then341

if.then341:                                       ; preds = %if.end339
  %puts506 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str110, i64 0, i64 0))
  br label %if.end343

if.end343:                                        ; preds = %if.end339, %if.then341
  %tobool344 = icmp eq i32 %bishopwarn.0, 0
  br i1 %tobool344, label %if.end347, label %if.then345

if.then345:                                       ; preds = %if.end343
  %puts505 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str109, i64 0, i64 0))
  br label %if.end347

if.end347:                                        ; preds = %if.end343, %if.then345
  %tobool348 = icmp eq i32 %rookwarn.0, 0
  br i1 %tobool348, label %if.end351, label %if.then349

if.then349:                                       ; preds = %if.end347
  %puts504 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str108, i64 0, i64 0))
  br label %if.end351

if.end351:                                        ; preds = %if.end347, %if.then349
  %tobool352 = icmp eq i32 %queenwarn.0, 0
  br i1 %tobool352, label %if.end355, label %if.then353

if.then353:                                       ; preds = %if.end351
  %puts503 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str107, i64 0, i64 0))
  br label %if.end355

if.end355:                                        ; preds = %if.end351, %if.then353
  %52 = load i32* @piecedead, align 4, !tbaa !0
  %tobool356 = icmp eq i32 %52, 0
  %tobool358 = icmp eq i32 %othermove.4, 0
  %or.cond522 = or i1 %tobool356, %tobool358
  br i1 %or.cond522, label %if.end362, label %if.then359

if.then359:                                       ; preds = %if.end355
  store i32 0, i32* @piecedead, align 4, !tbaa !0
  %puts = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str105, i64 0, i64 0))
  %puts502 = call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str106, i64 0, i64 0))
  store i32 0, i32* @go_fast, align 4, !tbaa !0
  br label %if.end362

if.end362:                                        ; preds = %if.end355, %if.then359
  %tobool363 = icmp eq i32 %pawnmates.4, 0
  br i1 %tobool363, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end362
  %53 = load i32* @CheckBadFlow.pawnmated, align 4, !tbaa !2
  %dec = add nsw i32 %53, -1
  br label %cond.end

cond.end:                                         ; preds = %if.end362, %cond.false
  %storemerge = phi i32 [ %dec, %cond.false ], [ %pawnmates.4, %if.end362 ]
  store i32 %storemerge, i32* @CheckBadFlow.pawnmated, align 4, !tbaa !2
  %tobool365 = icmp eq i32 %bishopmates.4, 0
  br i1 %tobool365, label %cond.false367, label %cond.end369

cond.false367:                                    ; preds = %cond.end
  %54 = load i32* @CheckBadFlow.bishopmated, align 4, !tbaa !2
  %dec368 = add nsw i32 %54, -1
  br label %cond.end369

cond.end369:                                      ; preds = %cond.end, %cond.false367
  %storemerge498 = phi i32 [ %dec368, %cond.false367 ], [ %bishopmates.4, %cond.end ]
  store i32 %storemerge498, i32* @CheckBadFlow.bishopmated, align 4, !tbaa !2
  %tobool371 = icmp eq i32 %rookmates.4, 0
  br i1 %tobool371, label %cond.false373, label %cond.end375

cond.false373:                                    ; preds = %cond.end369
  %55 = load i32* @CheckBadFlow.rookmated, align 4, !tbaa !2
  %dec374 = add nsw i32 %55, -1
  br label %cond.end375

cond.end375:                                      ; preds = %cond.end369, %cond.false373
  %storemerge499 = phi i32 [ %dec374, %cond.false373 ], [ %rookmates.4, %cond.end369 ]
  store i32 %storemerge499, i32* @CheckBadFlow.rookmated, align 4, !tbaa !2
  %tobool377 = icmp eq i32 %queenmates.4, 0
  br i1 %tobool377, label %cond.false379, label %cond.end381

cond.false379:                                    ; preds = %cond.end375
  %56 = load i32* @CheckBadFlow.queenmated, align 4, !tbaa !2
  %dec380 = add nsw i32 %56, -1
  br label %cond.end381

cond.end381:                                      ; preds = %cond.end375, %cond.false379
  %storemerge500 = phi i32 [ %dec380, %cond.false379 ], [ %queenmates.4, %cond.end375 ]
  store i32 %storemerge500, i32* @CheckBadFlow.queenmated, align 4, !tbaa !2
  %tobool383 = icmp eq i32 %knightmates.4, 0
  br i1 %tobool383, label %cond.false385, label %cond.end387

cond.false385:                                    ; preds = %cond.end381
  %57 = load i32* @CheckBadFlow.knightmated, align 4, !tbaa !2
  %dec386 = add nsw i32 %57, -1
  br label %cond.end387

cond.end387:                                      ; preds = %cond.end381, %cond.false385
  %storemerge501 = phi i32 [ %dec386, %cond.false385 ], [ %knightmates.4, %cond.end381 ]
  store i32 %storemerge501, i32* @CheckBadFlow.knightmated, align 4, !tbaa !2
  br label %cleanup

cleanup:                                          ; preds = %cond.end387, %if.then
  call void @llvm.lifetime.end(i64 12288, i8* %1) #1
  call void @llvm.lifetime.end(i64 12288, i8* %0) #1
  ret void
}

; Function Attrs: optsize
declare i32 @in_check() #5

; Function Attrs: optsize
declare void @DropaddHolding(i32, i32) #5

; Function Attrs: optsize
declare void @gen(%struct.move_s*) #5

; Function Attrs: optsize
declare void @make(%struct.move_s*, i32) #5

; Function Attrs: optsize
declare i32 @check_legal(%struct.move_s*, i32, i32) #5

; Function Attrs: optsize
declare void @unmake(%struct.move_s*, i32) #5

; Function Attrs: optsize
declare void @DropremoveHolding(i32, i32) #5

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #6

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"int", metadata !0}
