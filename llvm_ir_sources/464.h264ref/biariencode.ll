; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/biariencode.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }

@rLPS_table_64x4 = constant [64 x [4 x i8]] [[4 x i8] c"\80\B0\D0\F0", [4 x i8] c"\80\A7\C5\E3", [4 x i8] c"\80\9E\BB\D8", [4 x i8] c"{\96\B2\CD", [4 x i8] c"t\8E\A9\C3", [4 x i8] c"o\87\A0\B9", [4 x i8] c"i\80\98\AF", [4 x i8] c"dz\90\A6", [4 x i8] c"_t\89\9E", [4 x i8] c"Zn\82\96", [4 x i8] c"Uh{\8E", [4 x i8] c"Qcu\87", [4 x i8] c"M^o\80", [4 x i8] c"IYiz", [4 x i8] c"EUdt", [4 x i8] c"BP_n", [4 x i8] c">LZh", [4 x i8] c";HVc", [4 x i8] c"8EQ^", [4 x i8] c"5AMY", [4 x i8] c"3>IU", [4 x i8] c"0;EP", [4 x i8] c".8BL", [4 x i8] c"+5?H", [4 x i8] c")2;E", [4 x i8] c"'08A", [4 x i8] c"%-6>", [4 x i8] c"#+3;", [4 x i8] c"!)08", [4 x i8] c" '.5", [4 x i8] c"\1E%+2", [4 x i8] c"\1D#)0", [4 x i8] c"\1B!'-", [4 x i8] c"\1A\1F%+", [4 x i8] c"\18\1E#)", [4 x i8] c"\17\1C!'", [4 x i8] c"\16\1B %", [4 x i8] c"\15\1A\1E#", [4 x i8] c"\14\18\1D!", [4 x i8] c"\13\17\1B\1F", [4 x i8] c"\12\16\1A\1E", [4 x i8] c"\11\15\19\1C", [4 x i8] c"\10\14\17\1B", [4 x i8] c"\0F\13\16\19", [4 x i8] c"\0E\12\15\18", [4 x i8] c"\0E\11\14\17", [4 x i8] c"\0D\10\13\16", [4 x i8] c"\0C\0F\12\15", [4 x i8] c"\0C\0E\11\14", [4 x i8] c"\0B\0E\10\13", [4 x i8] c"\0B\0D\0F\12", [4 x i8] c"\0A\0C\0F\11", [4 x i8] c"\0A\0C\0E\10", [4 x i8] c"\09\0B\0D\0F", [4 x i8] c"\09\0B\0C\0E", [4 x i8] c"\08\0A\0C\0E", [4 x i8] c"\08\09\0B\0D", [4 x i8] c"\07\09\0B\0C", [4 x i8] c"\07\09\0A\0C", [4 x i8] c"\07\08\0A\0B", [4 x i8] c"\06\08\09\0B", [4 x i8] c"\06\07\09\0A", [4 x i8] c"\06\07\08\09", [4 x i8] c"\02\02\02\02"], align 16
@AC_next_state_MPS_64 = constant [64 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 62, i16 63], align 16
@AC_next_state_LPS_64 = constant [64 x i16] [i16 0, i16 0, i16 1, i16 2, i16 2, i16 4, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 9, i16 11, i16 11, i16 12, i16 13, i16 13, i16 15, i16 15, i16 16, i16 16, i16 18, i16 18, i16 19, i16 19, i16 21, i16 21, i16 22, i16 22, i16 23, i16 24, i16 24, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 29, i16 29, i16 30, i16 30, i16 30, i16 31, i16 32, i16 32, i16 33, i16 33, i16 33, i16 34, i16 34, i16 35, i16 35, i16 35, i16 36, i16 36, i16 36, i16 37, i16 37, i16 37, i16 38, i16 38, i16 63], align 16
@binCount = global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"arienco_create_encoding_environment: eep\00", align 1
@errortext = external global [300 x i8]
@.str1 = private unnamed_addr constant [33 x i8] c"Error freeing eep (NULL pointer)\00", align 1
@img = external global %struct.ImageParameters*
@stats = external global %struct.StatParameters*
@cabac_encoding = external global i32

; Function Attrs: nounwind optsize uwtable
define noalias %struct.EncodingEnvironment* @arienco_create_encoding_environment() #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 104) #4
  %0 = bitcast i8* %call to %struct.EncodingEnvironment*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([41 x i8]* @.str, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.EncodingEnvironment* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @arienco_delete_encoding_environment(%struct.EncodingEnvironment* %eep) #0 {
entry:
  %cmp = icmp eq %struct.EncodingEnvironment* %eep, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([33 x i8]* @.str1, i64 0, i64 0)) #4
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 200) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = bitcast %struct.EncodingEnvironment* %eep to i8*
  tail call void @free(i8* %0) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @arienco_start_encoding(%struct.EncodingEnvironment* nocapture %eep, i8* %code_buffer, i32* %code_len, i32 %slice_type) #0 {
entry:
  %Elow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0
  store i32 0, i32* %Elow, align 4, !tbaa !0
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4
  store i32 0, i32* %Ebits_to_follow, align 4, !tbaa !0
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2
  store i32 0, i32* %Ebuffer, align 4, !tbaa !0
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3
  store i32 9, i32* %Ebits_to_go, align 4, !tbaa !0
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5
  store i8* %code_buffer, i8** %Ecodestrm, align 8, !tbaa !3
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6
  store i32* %code_len, i32** %Ecodestrm_len, align 8, !tbaa !3
  %Erange = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 1
  store i32 510, i32* %Erange, align 4, !tbaa !0
  %C = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  store i32 0, i32* %C, align 4, !tbaa !0
  %0 = load i32* %code_len, align 4, !tbaa !0
  %B = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 18
  store i32 %0, i32* %B, align 4, !tbaa !0
  %E = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16
  store i32 0, i32* %E, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @arienco_bits_written(%struct.EncodingEnvironment* nocapture %eep) #3 {
entry:
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6
  %0 = load i32** %Ecodestrm_len, align 8, !tbaa !3
  %1 = load i32* %0, align 4, !tbaa !0
  %mul = shl i32 %1, 3
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4
  %2 = load i32* %Ebits_to_follow, align 4, !tbaa !0
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3
  %3 = load i32* %Ebits_to_go, align 4, !tbaa !0
  %add = add i32 %2, 8
  %add1 = add i32 %add, %mul
  %sub = sub i32 %add1, %3
  ret i32 %sub
}

; Function Attrs: nounwind optsize uwtable
define void @arienco_done_encoding(%struct.EncodingEnvironment* %eep) #0 {
entry:
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2
  %0 = load i32* %Ebuffer, align 4, !tbaa !0
  %shl = shl i32 %0, 1
  %Elow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0
  %1 = load i32* %Elow, align 4, !tbaa !0
  %shr = lshr i32 %1, 9
  %and = and i32 %shr, 1
  %or = or i32 %and, %shl
  store i32 %or, i32* %Ebuffer, align 4, !tbaa !0
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3
  %2 = load i32* %Ebits_to_go, align 4, !tbaa !0
  %dec = add i32 %2, -1
  store i32 %dec, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %while.cond8.preheader

while.cond8.preheader:                            ; preds = %if.then, %while.body.lr.ph, %entry
  %3 = phi i32 [ %dec, %entry ], [ 8, %while.body.lr.ph ], [ 8, %if.then ]
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4
  %4 = load i32* %Ebits_to_follow, align 4, !tbaa !0
  %cmp9229 = icmp eq i32 %4, 0
  br i1 %cmp9229, label %while.end45, label %while.body11.lr.ph

while.body11.lr.ph:                               ; preds = %while.cond8.preheader
  %Ecodestrm_len28 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6
  %Ecodestrm31 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5
  %C35 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  %E41 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16
  br label %while.body11

if.then:                                          ; preds = %entry
  %conv = trunc i32 %or to i8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6
  %5 = load i32** %Ecodestrm_len, align 8, !tbaa !3
  %6 = load i32* %5, align 4, !tbaa !0
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %5, align 4, !tbaa !0
  %idxprom = sext i32 %6 to i64
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5
  %7 = load i8** %Ecodestrm, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %7, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %C = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  %8 = load i32* %C, align 4, !tbaa !0
  %cmp4230 = icmp sgt i32 %8, 7
  br i1 %cmp4230, label %while.body.lr.ph, label %while.cond8.preheader

while.body.lr.ph:                                 ; preds = %if.then
  %E = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16
  %E.promoted = load i32* %E, align 4, !tbaa !0
  %9 = add i32 %8, -8
  %10 = lshr i32 %9, 3
  %11 = add i32 %E.promoted, %10
  %12 = shl nuw i32 %10, 3
  %13 = add i32 %11, 1
  %14 = sub i32 %9, %12
  store i32 %14, i32* %C, align 4, !tbaa !0
  store i32 %13, i32* %E, align 4, !tbaa !0
  br label %while.cond8.preheader

while.cond8.loopexit:                             ; preds = %while.body38.lr.ph, %if.then25
  %.pre233 = load i32* %Ebits_to_follow, align 4, !tbaa !0
  br label %while.cond8.backedge

while.body11:                                     ; preds = %while.cond8.backedge, %while.body11.lr.ph
  %15 = phi i32 [ %3, %while.body11.lr.ph ], [ %21, %while.cond8.backedge ]
  %16 = phi i32 [ %4, %while.body11.lr.ph ], [ %20, %while.cond8.backedge ]
  %dec13 = add i32 %16, -1
  store i32 %dec13, i32* %Ebits_to_follow, align 4, !tbaa !0
  %17 = load i32* %Ebuffer, align 4, !tbaa !0
  %18 = shl i32 %17, 1
  %19 = load i32* %Elow, align 4, !tbaa !0
  %and18 = lshr i32 %19, 9
  %and18.lobit = and i32 %and18, 1
  %shl15 = or i32 %and18.lobit, %18
  %or20 = xor i32 %shl15, 1
  store i32 %or20, i32* %Ebuffer, align 4, !tbaa !0
  %dec22 = add i32 %15, -1
  store i32 %dec22, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp23 = icmp eq i32 %dec22, 0
  br i1 %cmp23, label %if.then25, label %while.cond8.backedge

while.cond8.backedge:                             ; preds = %while.body11, %while.cond8.loopexit
  %20 = phi i32 [ %dec13, %while.body11 ], [ %.pre233, %while.cond8.loopexit ]
  %21 = phi i32 [ %dec22, %while.body11 ], [ 8, %while.cond8.loopexit ]
  %cmp9 = icmp eq i32 %20, 0
  br i1 %cmp9, label %while.end45, label %while.body11

if.then25:                                        ; preds = %while.body11
  %conv27 = trunc i32 %or20 to i8
  %22 = load i32** %Ecodestrm_len28, align 8, !tbaa !3
  %23 = load i32* %22, align 4, !tbaa !0
  %inc29 = add nsw i32 %23, 1
  store i32 %inc29, i32* %22, align 4, !tbaa !0
  %idxprom30 = sext i32 %23 to i64
  %24 = load i8** %Ecodestrm31, align 8, !tbaa !3
  %arrayidx32 = getelementptr inbounds i8* %24, i64 %idxprom30
  store i8 %conv27, i8* %arrayidx32, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %25 = load i32* %C35, align 4, !tbaa !0
  %cmp36227 = icmp sgt i32 %25, 7
  br i1 %cmp36227, label %while.body38.lr.ph, label %while.cond8.loopexit

while.body38.lr.ph:                               ; preds = %if.then25
  %E41.promoted = load i32* %E41, align 4, !tbaa !0
  %26 = add i32 %25, -8
  %27 = lshr i32 %26, 3
  %28 = shl nuw i32 %27, 3
  %29 = add i32 %E41.promoted, 1
  %30 = add i32 %29, %27
  %31 = sub i32 %26, %28
  store i32 %31, i32* %C35, align 4, !tbaa !0
  store i32 %30, i32* %E41, align 4, !tbaa !0
  br label %while.cond8.loopexit

while.end45:                                      ; preds = %while.cond8.backedge, %while.cond8.preheader
  %32 = phi i32 [ %3, %while.cond8.preheader ], [ %21, %while.cond8.backedge ]
  %33 = load i32* %Ebuffer, align 4, !tbaa !0
  %shl47 = shl i32 %33, 1
  %34 = load i32* %Elow, align 4, !tbaa !0
  %shr49 = lshr i32 %34, 8
  %and50 = and i32 %shr49, 1
  %or52 = or i32 %and50, %shl47
  store i32 %or52, i32* %Ebuffer, align 4, !tbaa !0
  %dec54 = add i32 %32, -1
  store i32 %dec54, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp55 = icmp eq i32 %dec54, 0
  br i1 %cmp55, label %if.then57, label %if.end76

if.then57:                                        ; preds = %while.end45
  %conv59 = trunc i32 %or52 to i8
  %Ecodestrm_len60 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6
  %35 = load i32** %Ecodestrm_len60, align 8, !tbaa !3
  %36 = load i32* %35, align 4, !tbaa !0
  %inc61 = add nsw i32 %36, 1
  store i32 %inc61, i32* %35, align 4, !tbaa !0
  %idxprom62 = sext i32 %36 to i64
  %Ecodestrm63 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5
  %37 = load i8** %Ecodestrm63, align 8, !tbaa !3
  %arrayidx64 = getelementptr inbounds i8* %37, i64 %idxprom62
  store i8 %conv59, i8* %arrayidx64, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %C67 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  %38 = load i32* %C67, align 4, !tbaa !0
  %cmp68225 = icmp sgt i32 %38, 7
  br i1 %cmp68225, label %while.body70.lr.ph, label %if.end76.thread

while.body70.lr.ph:                               ; preds = %if.then57
  %E73 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16
  %E73.promoted = load i32* %E73, align 4, !tbaa !0
  %39 = add i32 %38, -8
  %40 = lshr i32 %39, 3
  %41 = add i32 %E73.promoted, %40
  %42 = shl nuw i32 %40, 3
  %43 = add i32 %41, 1
  %44 = sub i32 %39, %42
  store i32 %44, i32* %C67, align 4, !tbaa !0
  store i32 %43, i32* %E73, align 4, !tbaa !0
  br label %if.end76.thread

if.end76.thread:                                  ; preds = %if.then57, %while.body70.lr.ph
  %.pre = load i32* %Ebuffer, align 4, !tbaa !0
  %shl78234 = shl i32 %.pre, 1
  %or80235 = or i32 %shl78234, 1
  store i32 %or80235, i32* %Ebuffer, align 4, !tbaa !0
  store i32 7, i32* %Ebits_to_go, align 4, !tbaa !0
  br label %if.end76.if.end104_crit_edge

if.end76:                                         ; preds = %while.end45
  %shl78 = shl i32 %or52, 1
  %or80 = or i32 %shl78, 1
  store i32 %or80, i32* %Ebuffer, align 4, !tbaa !0
  %dec82 = add i32 %32, -2
  store i32 %dec82, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp83 = icmp eq i32 %dec82, 0
  br i1 %cmp83, label %if.then85, label %if.end76.if.end104_crit_edge

if.end76.if.end104_crit_edge:                     ; preds = %if.end76.thread, %if.end76
  %dec82238 = phi i32 [ 7, %if.end76.thread ], [ %dec82, %if.end76 ]
  %Ecodestrm_len124.pre = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6
  %Ecodestrm127.pre = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5
  %C131.pre = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  br label %if.end104

if.then85:                                        ; preds = %if.end76
  %conv87 = trunc i32 %or80 to i8
  %Ecodestrm_len88 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6
  %45 = load i32** %Ecodestrm_len88, align 8, !tbaa !3
  %46 = load i32* %45, align 4, !tbaa !0
  %inc89 = add nsw i32 %46, 1
  store i32 %inc89, i32* %45, align 4, !tbaa !0
  %idxprom90 = sext i32 %46 to i64
  %Ecodestrm91 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5
  %47 = load i8** %Ecodestrm91, align 8, !tbaa !3
  %arrayidx92 = getelementptr inbounds i8* %47, i64 %idxprom90
  store i8 %conv87, i8* %arrayidx92, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %C95 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  %48 = load i32* %C95, align 4, !tbaa !0
  %cmp96223 = icmp sgt i32 %48, 7
  br i1 %cmp96223, label %while.body98.lr.ph, label %if.end104

while.body98.lr.ph:                               ; preds = %if.then85
  %E101 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16
  %E101.promoted = load i32* %E101, align 4, !tbaa !0
  %49 = add i32 %48, -8
  %50 = lshr i32 %49, 3
  %51 = add i32 %E101.promoted, %50
  %52 = shl nuw i32 %50, 3
  %53 = add i32 %51, 1
  %54 = sub i32 %49, %52
  store i32 %54, i32* %C95, align 4, !tbaa !0
  store i32 %53, i32* %E101, align 4, !tbaa !0
  br label %if.end104

if.end104:                                        ; preds = %if.then85, %while.body98.lr.ph, %if.end76.if.end104_crit_edge
  %C131.pre-phi = phi i32* [ %C131.pre, %if.end76.if.end104_crit_edge ], [ %C95, %while.body98.lr.ph ], [ %C95, %if.then85 ]
  %Ecodestrm127.pre-phi = phi i8** [ %Ecodestrm127.pre, %if.end76.if.end104_crit_edge ], [ %Ecodestrm91, %while.body98.lr.ph ], [ %Ecodestrm91, %if.then85 ]
  %Ecodestrm_len124.pre-phi = phi i32** [ %Ecodestrm_len124.pre, %if.end76.if.end104_crit_edge ], [ %Ecodestrm_len88, %while.body98.lr.ph ], [ %Ecodestrm_len88, %if.then85 ]
  %55 = phi i32 [ %dec82238, %if.end76.if.end104_crit_edge ], [ 8, %while.body98.lr.ph ], [ 8, %if.then85 ]
  %sub106 = sub i32 8, %55
  %56 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 6
  %57 = load i32* %type, align 4, !tbaa !0
  %idxprom107 = sext i32 %57 to i64
  %58 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx108 = getelementptr inbounds %struct.StatParameters* %58, i64 0, i32 22, i64 %idxprom107
  %59 = load i32* %arrayidx108, align 4, !tbaa !0
  %add = add i32 %sub106, %59
  store i32 %add, i32* %arrayidx108, align 4, !tbaa !0
  %E137 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16
  %.pr.pre = load i32* %Ebits_to_go, align 4, !tbaa !0
  br label %while.cond109

while.cond109:                                    ; preds = %if.end104, %while.body134.lr.ph, %if.then121, %while.body113
  %60 = phi i32 [ %dec118, %while.body113 ], [ %.pr.pre, %if.end104 ], [ 8, %while.body134.lr.ph ], [ 8, %if.then121 ]
  %cmp111 = icmp eq i32 %60, 8
  br i1 %cmp111, label %while.end141, label %while.body113

while.body113:                                    ; preds = %while.cond109
  %61 = load i32* %Ebuffer, align 4, !tbaa !0
  %shl115 = shl i32 %61, 1
  store i32 %shl115, i32* %Ebuffer, align 4, !tbaa !0
  %dec118 = add i32 %60, -1
  store i32 %dec118, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp119 = icmp eq i32 %dec118, 0
  br i1 %cmp119, label %if.then121, label %while.cond109

if.then121:                                       ; preds = %while.body113
  %conv123 = trunc i32 %shl115 to i8
  %62 = load i32** %Ecodestrm_len124.pre-phi, align 8, !tbaa !3
  %63 = load i32* %62, align 4, !tbaa !0
  %inc125 = add nsw i32 %63, 1
  store i32 %inc125, i32* %62, align 4, !tbaa !0
  %idxprom126 = sext i32 %63 to i64
  %64 = load i8** %Ecodestrm127.pre-phi, align 8, !tbaa !3
  %arrayidx128 = getelementptr inbounds i8* %64, i64 %idxprom126
  store i8 %conv123, i8* %arrayidx128, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %65 = load i32* %C131.pre-phi, align 4, !tbaa !0
  %cmp132221 = icmp sgt i32 %65, 7
  br i1 %cmp132221, label %while.body134.lr.ph, label %while.cond109

while.body134.lr.ph:                              ; preds = %if.then121
  %E137.promoted = load i32* %E137, align 4, !tbaa !0
  %66 = add i32 %65, -8
  %67 = lshr i32 %66, 3
  %68 = shl nuw i32 %67, 3
  %69 = add i32 %E137.promoted, 1
  %70 = add i32 %69, %67
  %71 = sub i32 %66, %68
  store i32 %71, i32* %C131.pre-phi, align 4, !tbaa !0
  store i32 %70, i32* %E137, align 4, !tbaa !0
  br label %while.cond109

while.end141:                                     ; preds = %while.cond109
  %72 = load i32* %E137, align 4, !tbaa !0
  %mul = shl i32 %72, 3
  %73 = load i32* %C131.pre-phi, align 4, !tbaa !0
  %add144 = add nsw i32 %mul, %73
  store i32 %add144, i32* %E137, align 4, !tbaa !0
  %74 = load i32** %Ecodestrm_len124.pre-phi, align 8, !tbaa !3
  %75 = load i32* %74, align 4, !tbaa !0
  %B = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 18
  %76 = load i32* %B, align 4, !tbaa !0
  %sub147 = sub nsw i32 %75, %76
  store i32 %sub147, i32* %B, align 4, !tbaa !0
  %77 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 3
  %78 = load i32* %current_mb_nr, align 4, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 50
  %79 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %start_mb_nr = getelementptr inbounds %struct.Slice* %79, i64 0, i32 3
  %80 = load i32* %start_mb_nr, align 4, !tbaa !0
  %sub149219 = sub i32 31, %78
  %sub151 = add i32 %sub149219, %80
  %add153 = add i32 %sub151, %add144
  %shr154 = ashr i32 %add153, 5
  store i32 %shr154, i32* %E137, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @biari_encode_symbol(%struct.EncodingEnvironment* %eep, i16 signext %symbol, %struct.BiContextType* nocapture %bi_ct) #0 {
entry:
  %Erange = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 1
  %0 = load i32* %Erange, align 4, !tbaa !0
  %Elow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0
  %1 = load i32* %Elow, align 4, !tbaa !0
  %shr = lshr i32 %0, 6
  %and = and i32 %shr, 3
  %idxprom = zext i32 %and to i64
  %state = getelementptr inbounds %struct.BiContextType* %bi_ct, i64 0, i32 0
  %2 = load i16* %state, align 2, !tbaa !4
  %idxprom1 = zext i16 %2 to i64
  %arrayidx2 = getelementptr inbounds [64 x [4 x i8]]* @rLPS_table_64x4, i64 0, i64 %idxprom1, i64 %idxprom
  %3 = load i8* %arrayidx2, align 1, !tbaa !1
  %conv = zext i8 %3 to i32
  %4 = load i32* @cabac_encoding, align 4, !tbaa !0
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.BiContextType* %bi_ct, i64 0, i32 2
  %5 = load i64* %count, align 8, !tbaa !5
  %inc = add i64 %5, 1
  store i64 %inc, i64* %count, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %not.cmp = icmp ne i16 %symbol, 0
  %sub = sub i32 %0, %conv
  %conv7 = zext i1 %not.cmp to i32
  %MPS = getelementptr inbounds %struct.BiContextType* %bi_ct, i64 0, i32 1
  %6 = load i8* %MPS, align 1, !tbaa !1
  %conv8 = zext i8 %6 to i32
  %cmp9 = icmp eq i32 %conv7, %conv8
  br i1 %cmp9, label %while.cond.preheader, label %if.then11

if.then11:                                        ; preds = %if.end
  %add = add i32 %sub, %1
  %tobool13 = icmp eq i16 %2, 0
  br i1 %tobool13, label %if.then14, label %while.cond.preheader.thread

if.then14:                                        ; preds = %if.then11
  %xor = xor i8 %6, 1
  store i8 %xor, i8* %MPS, align 1, !tbaa !1
  br label %while.cond.preheader.thread

while.cond.preheader.thread:                      ; preds = %if.then11, %if.then14
  %storemerge.in254 = getelementptr inbounds [64 x i16]* @AC_next_state_LPS_64, i64 0, i64 %idxprom1
  %storemerge255 = load i16* %storemerge.in254, align 2
  store i16 %storemerge255, i16* %state, align 2, !tbaa !4
  br label %while.body.lr.ph

while.cond.preheader:                             ; preds = %if.end
  %storemerge.in = getelementptr inbounds [64 x i16]* @AC_next_state_MPS_64, i64 0, i64 %idxprom1
  %storemerge = load i16* %storemerge.in, align 2
  store i16 %storemerge, i16* %state, align 2, !tbaa !4
  %cmp29249 = icmp ult i32 %sub, 256
  br i1 %cmp29249, label %while.body.lr.ph, label %while.cond.preheader.while.end162_crit_edge

while.cond.preheader.while.end162_crit_edge:      ; preds = %while.cond.preheader
  %C165.pre = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  br label %while.end162

while.body.lr.ph:                                 ; preds = %while.cond.preheader.thread, %while.cond.preheader
  %low.0.ph258 = phi i32 [ %add, %while.cond.preheader.thread ], [ %1, %while.cond.preheader ]
  %range.0.ph257 = phi i32 [ %conv, %while.cond.preheader.thread ], [ %sub, %while.cond.preheader ]
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5
  %C = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  %E = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end159
  %low.0251 = phi i32 [ %low.0.ph258, %while.body.lr.ph ], [ %shl160, %if.end159 ]
  %range.0250 = phi i32 [ %range.0.ph257, %while.body.lr.ph ], [ %shl161, %if.end159 ]
  %cmp31 = icmp ugt i32 %low.0251, 511
  br i1 %cmp31, label %if.then33, label %if.else87

if.then33:                                        ; preds = %while.body
  %7 = load i32* %Ebuffer, align 4, !tbaa !0
  %shl = shl i32 %7, 1
  %or = or i32 %shl, 1
  store i32 %or, i32* %Ebuffer, align 4, !tbaa !0
  %8 = load i32* %Ebits_to_go, align 4, !tbaa !0
  %dec = add i32 %8, -1
  store i32 %dec, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp35 = icmp eq i32 %dec, 0
  br i1 %cmp35, label %if.then37, label %while.cond52.preheader

if.then37:                                        ; preds = %if.then33
  %conv39 = trunc i32 %or to i8
  %9 = load i32** %Ecodestrm_len, align 8, !tbaa !3
  %10 = load i32* %9, align 4, !tbaa !0
  %inc40 = add nsw i32 %10, 1
  store i32 %inc40, i32* %9, align 4, !tbaa !0
  %idxprom41 = sext i32 %10 to i64
  %11 = load i8** %Ecodestrm, align 8, !tbaa !3
  %arrayidx42 = getelementptr inbounds i8* %11, i64 %idxprom41
  store i8 %conv39, i8* %arrayidx42, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %12 = load i32* %C, align 4, !tbaa !0
  %cmp45243 = icmp sgt i32 %12, 7
  br i1 %cmp45243, label %while.body47.lr.ph, label %while.cond52.preheader

while.body47.lr.ph:                               ; preds = %if.then37
  %E.promoted = load i32* %E, align 4, !tbaa !0
  %13 = add i32 %12, -8
  %14 = lshr i32 %13, 3
  %15 = shl nuw i32 %14, 3
  %16 = add i32 %E.promoted, 1
  %17 = add i32 %16, %14
  %18 = sub i32 %13, %15
  store i32 %18, i32* %C, align 4, !tbaa !0
  store i32 %17, i32* %E, align 4, !tbaa !0
  br label %while.cond52.preheader

while.cond52.preheader:                           ; preds = %if.then37, %while.body47.lr.ph, %if.then33
  %19 = phi i32 [ %dec, %if.then33 ], [ 8, %while.body47.lr.ph ], [ 8, %if.then37 ]
  %20 = load i32* %Ebits_to_follow, align 4, !tbaa !0
  %cmp53248 = icmp eq i32 %20, 0
  br i1 %cmp53248, label %while.end85, label %while.body55

while.cond52.loopexit245:                         ; preds = %while.body78.lr.ph, %if.then65
  %.pre = load i32* %Ebits_to_follow, align 4, !tbaa !0
  br label %while.cond52.backedge

while.body55:                                     ; preds = %while.cond52.backedge, %while.cond52.preheader
  %21 = phi i32 [ %19, %while.cond52.preheader ], [ %25, %while.cond52.backedge ]
  %22 = phi i32 [ %20, %while.cond52.preheader ], [ %24, %while.cond52.backedge ]
  %dec57 = add i32 %22, -1
  store i32 %dec57, i32* %Ebits_to_follow, align 4, !tbaa !0
  %23 = load i32* %Ebuffer, align 4, !tbaa !0
  %shl59 = shl i32 %23, 1
  store i32 %shl59, i32* %Ebuffer, align 4, !tbaa !0
  %dec62 = add i32 %21, -1
  store i32 %dec62, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp63 = icmp eq i32 %dec62, 0
  br i1 %cmp63, label %if.then65, label %while.cond52.backedge

while.cond52.backedge:                            ; preds = %while.body55, %while.cond52.loopexit245
  %24 = phi i32 [ %dec57, %while.body55 ], [ %.pre, %while.cond52.loopexit245 ]
  %25 = phi i32 [ %dec62, %while.body55 ], [ 8, %while.cond52.loopexit245 ]
  %cmp53 = icmp eq i32 %24, 0
  br i1 %cmp53, label %while.end85, label %while.body55

if.then65:                                        ; preds = %while.body55
  %conv67 = trunc i32 %shl59 to i8
  %26 = load i32** %Ecodestrm_len, align 8, !tbaa !3
  %27 = load i32* %26, align 4, !tbaa !0
  %inc69 = add nsw i32 %27, 1
  store i32 %inc69, i32* %26, align 4, !tbaa !0
  %idxprom70 = sext i32 %27 to i64
  %28 = load i8** %Ecodestrm, align 8, !tbaa !3
  %arrayidx72 = getelementptr inbounds i8* %28, i64 %idxprom70
  store i8 %conv67, i8* %arrayidx72, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %29 = load i32* %C, align 4, !tbaa !0
  %cmp76246 = icmp sgt i32 %29, 7
  br i1 %cmp76246, label %while.body78.lr.ph, label %while.cond52.loopexit245

while.body78.lr.ph:                               ; preds = %if.then65
  %E81.promoted = load i32* %E, align 4, !tbaa !0
  %30 = add i32 %29, -8
  %31 = lshr i32 %30, 3
  %32 = shl nuw i32 %31, 3
  %33 = add i32 %E81.promoted, 1
  %34 = add i32 %33, %31
  %35 = sub i32 %30, %32
  store i32 %35, i32* %C, align 4, !tbaa !0
  store i32 %34, i32* %E, align 4, !tbaa !0
  br label %while.cond52.loopexit245

while.end85:                                      ; preds = %while.cond52.backedge, %while.cond52.preheader
  %sub86 = add i32 %low.0251, -512
  br label %if.end159

if.else87:                                        ; preds = %while.body
  %cmp88 = icmp ult i32 %low.0251, 256
  br i1 %cmp88, label %if.then90, label %if.else154

if.then90:                                        ; preds = %if.else87
  %36 = load i32* %Ebuffer, align 4, !tbaa !0
  %shl92 = shl i32 %36, 1
  store i32 %shl92, i32* %Ebuffer, align 4, !tbaa !0
  %37 = load i32* %Ebits_to_go, align 4, !tbaa !0
  %dec95 = add i32 %37, -1
  store i32 %dec95, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp96 = icmp eq i32 %dec95, 0
  br i1 %cmp96, label %if.then98, label %while.cond118.preheader

if.then98:                                        ; preds = %if.then90
  %conv100 = trunc i32 %shl92 to i8
  %38 = load i32** %Ecodestrm_len, align 8, !tbaa !3
  %39 = load i32* %38, align 4, !tbaa !0
  %inc102 = add nsw i32 %39, 1
  store i32 %inc102, i32* %38, align 4, !tbaa !0
  %idxprom103 = sext i32 %39 to i64
  %40 = load i8** %Ecodestrm, align 8, !tbaa !3
  %arrayidx105 = getelementptr inbounds i8* %40, i64 %idxprom103
  store i8 %conv100, i8* %arrayidx105, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %41 = load i32* %C, align 4, !tbaa !0
  %cmp109237 = icmp sgt i32 %41, 7
  br i1 %cmp109237, label %while.body111.lr.ph, label %while.cond118.preheader

while.body111.lr.ph:                              ; preds = %if.then98
  %E114.promoted = load i32* %E, align 4, !tbaa !0
  %42 = add i32 %41, -8
  %43 = lshr i32 %42, 3
  %44 = shl nuw i32 %43, 3
  %45 = add i32 %E114.promoted, 1
  %46 = add i32 %45, %43
  %47 = sub i32 %42, %44
  store i32 %47, i32* %C, align 4, !tbaa !0
  store i32 %46, i32* %E, align 4, !tbaa !0
  br label %while.cond118.preheader

while.cond118.preheader:                          ; preds = %if.then98, %while.body111.lr.ph, %if.then90
  %48 = phi i32 [ %dec95, %if.then90 ], [ 8, %while.body111.lr.ph ], [ 8, %if.then98 ]
  %49 = load i32* %Ebits_to_follow, align 4, !tbaa !0
  %cmp120242 = icmp eq i32 %49, 0
  br i1 %cmp120242, label %if.end159, label %while.body122

while.cond118.loopexit239:                        ; preds = %while.body146.lr.ph, %if.then133
  %.pre253 = load i32* %Ebits_to_follow, align 4, !tbaa !0
  br label %while.cond118.backedge

while.body122:                                    ; preds = %while.cond118.backedge, %while.cond118.preheader
  %50 = phi i32 [ %48, %while.cond118.preheader ], [ %54, %while.cond118.backedge ]
  %51 = phi i32 [ %49, %while.cond118.preheader ], [ %53, %while.cond118.backedge ]
  %dec124 = add i32 %51, -1
  store i32 %dec124, i32* %Ebits_to_follow, align 4, !tbaa !0
  %52 = load i32* %Ebuffer, align 4, !tbaa !0
  %shl126 = shl i32 %52, 1
  %or128 = or i32 %shl126, 1
  store i32 %or128, i32* %Ebuffer, align 4, !tbaa !0
  %dec130 = add i32 %50, -1
  store i32 %dec130, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp131 = icmp eq i32 %dec130, 0
  br i1 %cmp131, label %if.then133, label %while.cond118.backedge

while.cond118.backedge:                           ; preds = %while.body122, %while.cond118.loopexit239
  %53 = phi i32 [ %dec124, %while.body122 ], [ %.pre253, %while.cond118.loopexit239 ]
  %54 = phi i32 [ %dec130, %while.body122 ], [ 8, %while.cond118.loopexit239 ]
  %cmp120 = icmp eq i32 %53, 0
  br i1 %cmp120, label %if.end159, label %while.body122

if.then133:                                       ; preds = %while.body122
  %conv135 = trunc i32 %or128 to i8
  %55 = load i32** %Ecodestrm_len, align 8, !tbaa !3
  %56 = load i32* %55, align 4, !tbaa !0
  %inc137 = add nsw i32 %56, 1
  store i32 %inc137, i32* %55, align 4, !tbaa !0
  %idxprom138 = sext i32 %56 to i64
  %57 = load i8** %Ecodestrm, align 8, !tbaa !3
  %arrayidx140 = getelementptr inbounds i8* %57, i64 %idxprom138
  store i8 %conv135, i8* %arrayidx140, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %58 = load i32* %C, align 4, !tbaa !0
  %cmp144240 = icmp sgt i32 %58, 7
  br i1 %cmp144240, label %while.body146.lr.ph, label %while.cond118.loopexit239

while.body146.lr.ph:                              ; preds = %if.then133
  %E149.promoted = load i32* %E, align 4, !tbaa !0
  %59 = add i32 %58, -8
  %60 = lshr i32 %59, 3
  %61 = shl nuw i32 %60, 3
  %62 = add i32 %E149.promoted, 1
  %63 = add i32 %62, %60
  %64 = sub i32 %59, %61
  store i32 %64, i32* %C, align 4, !tbaa !0
  store i32 %63, i32* %E, align 4, !tbaa !0
  br label %while.cond118.loopexit239

if.else154:                                       ; preds = %if.else87
  %65 = load i32* %Ebits_to_follow, align 4, !tbaa !0
  %inc156 = add i32 %65, 1
  store i32 %inc156, i32* %Ebits_to_follow, align 4, !tbaa !0
  %sub157 = add i32 %low.0251, -256
  br label %if.end159

if.end159:                                        ; preds = %while.cond118.preheader, %while.cond118.backedge, %if.else154, %while.end85
  %low.1 = phi i32 [ %sub86, %while.end85 ], [ %sub157, %if.else154 ], [ %low.0251, %while.cond118.backedge ], [ %low.0251, %while.cond118.preheader ]
  %shl160 = shl i32 %low.1, 1
  %shl161 = shl i32 %range.0250, 1
  %cmp29 = icmp ult i32 %shl161, 256
  br i1 %cmp29, label %while.body, label %while.end162

while.end162:                                     ; preds = %if.end159, %while.cond.preheader.while.end162_crit_edge
  %C165.pre-phi = phi i32* [ %C165.pre, %while.cond.preheader.while.end162_crit_edge ], [ %C, %if.end159 ]
  %low.0.lcssa = phi i32 [ %1, %while.cond.preheader.while.end162_crit_edge ], [ %shl160, %if.end159 ]
  %range.0.lcssa = phi i32 [ %sub, %while.cond.preheader.while.end162_crit_edge ], [ %shl161, %if.end159 ]
  store i32 %range.0.lcssa, i32* %Erange, align 4, !tbaa !0
  store i32 %low.0.lcssa, i32* %Elow, align 4, !tbaa !0
  %66 = load i32* %C165.pre-phi, align 4, !tbaa !0
  %inc166 = add nsw i32 %66, 1
  store i32 %inc166, i32* %C165.pre-phi, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep, i16 signext %symbol) #0 {
entry:
  %Elow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0
  %0 = load i32* %Elow, align 4, !tbaa !0
  %shl = shl i32 %0, 1
  %cmp = icmp eq i16 %symbol, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %Erange = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 1
  %1 = load i32* %Erange, align 4, !tbaa !0
  %add = add i32 %1, %shl
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %low.0 = phi i32 [ %add, %if.then ], [ %shl, %entry ]
  %cmp2 = icmp ugt i32 %low.0, 1023
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2
  %2 = load i32* %Ebuffer, align 4, !tbaa !0
  %shl5 = shl i32 %2, 1
  %or = or i32 %shl5, 1
  store i32 %or, i32* %Ebuffer, align 4, !tbaa !0
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3
  %3 = load i32* %Ebits_to_go, align 4, !tbaa !0
  %dec = add i32 %3, -1
  store i32 %dec, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %dec, 0
  br i1 %cmp7, label %if.then9, label %while.cond18.preheader

while.cond18.preheader:                           ; preds = %if.then9, %while.body.lr.ph, %if.then4
  %4 = phi i32 [ %dec, %if.then4 ], [ 8, %while.body.lr.ph ], [ 8, %if.then9 ]
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4
  %5 = load i32* %Ebits_to_follow, align 4, !tbaa !0
  %cmp19182 = icmp eq i32 %5, 0
  br i1 %cmp19182, label %while.end51, label %while.body21.lr.ph

while.body21.lr.ph:                               ; preds = %while.cond18.preheader
  %Ecodestrm_len34 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6
  %Ecodestrm37 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5
  %C41 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  %E47 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16
  br label %while.body21

if.then9:                                         ; preds = %if.then4
  %conv11 = trunc i32 %or to i8
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6
  %6 = load i32** %Ecodestrm_len, align 8, !tbaa !3
  %7 = load i32* %6, align 4, !tbaa !0
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %6, align 4, !tbaa !0
  %idxprom = sext i32 %7 to i64
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5
  %8 = load i8** %Ecodestrm, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %8, i64 %idxprom
  store i8 %conv11, i8* %arrayidx, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %C = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  %9 = load i32* %C, align 4, !tbaa !0
  %cmp13183 = icmp sgt i32 %9, 7
  br i1 %cmp13183, label %while.body.lr.ph, label %while.cond18.preheader

while.body.lr.ph:                                 ; preds = %if.then9
  %E = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16
  %E.promoted = load i32* %E, align 4, !tbaa !0
  %10 = add i32 %9, -8
  %11 = lshr i32 %10, 3
  %12 = add i32 %E.promoted, %11
  %13 = shl nuw i32 %11, 3
  %14 = add i32 %12, 1
  %15 = sub i32 %10, %13
  store i32 %15, i32* %C, align 4, !tbaa !0
  store i32 %14, i32* %E, align 4, !tbaa !0
  br label %while.cond18.preheader

while.cond18.loopexit:                            ; preds = %while.body44.lr.ph, %if.then31
  %.pre = load i32* %Ebits_to_follow, align 4, !tbaa !0
  br label %while.cond18.backedge

while.body21:                                     ; preds = %while.cond18.backedge, %while.body21.lr.ph
  %16 = phi i32 [ %4, %while.body21.lr.ph ], [ %20, %while.cond18.backedge ]
  %17 = phi i32 [ %5, %while.body21.lr.ph ], [ %19, %while.cond18.backedge ]
  %dec23 = add i32 %17, -1
  store i32 %dec23, i32* %Ebits_to_follow, align 4, !tbaa !0
  %18 = load i32* %Ebuffer, align 4, !tbaa !0
  %shl25 = shl i32 %18, 1
  store i32 %shl25, i32* %Ebuffer, align 4, !tbaa !0
  %dec28 = add i32 %16, -1
  store i32 %dec28, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp29 = icmp eq i32 %dec28, 0
  br i1 %cmp29, label %if.then31, label %while.cond18.backedge

while.cond18.backedge:                            ; preds = %while.body21, %while.cond18.loopexit
  %19 = phi i32 [ %dec23, %while.body21 ], [ %.pre, %while.cond18.loopexit ]
  %20 = phi i32 [ %dec28, %while.body21 ], [ 8, %while.cond18.loopexit ]
  %cmp19 = icmp eq i32 %19, 0
  br i1 %cmp19, label %while.end51, label %while.body21

if.then31:                                        ; preds = %while.body21
  %conv33 = trunc i32 %shl25 to i8
  %21 = load i32** %Ecodestrm_len34, align 8, !tbaa !3
  %22 = load i32* %21, align 4, !tbaa !0
  %inc35 = add nsw i32 %22, 1
  store i32 %inc35, i32* %21, align 4, !tbaa !0
  %idxprom36 = sext i32 %22 to i64
  %23 = load i8** %Ecodestrm37, align 8, !tbaa !3
  %arrayidx38 = getelementptr inbounds i8* %23, i64 %idxprom36
  store i8 %conv33, i8* %arrayidx38, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %24 = load i32* %C41, align 4, !tbaa !0
  %cmp42180 = icmp sgt i32 %24, 7
  br i1 %cmp42180, label %while.body44.lr.ph, label %while.cond18.loopexit

while.body44.lr.ph:                               ; preds = %if.then31
  %E47.promoted = load i32* %E47, align 4, !tbaa !0
  %25 = add i32 %24, -8
  %26 = lshr i32 %25, 3
  %27 = shl nuw i32 %26, 3
  %28 = add i32 %E47.promoted, 1
  %29 = add i32 %28, %26
  %30 = sub i32 %25, %27
  store i32 %30, i32* %C41, align 4, !tbaa !0
  store i32 %29, i32* %E47, align 4, !tbaa !0
  br label %while.cond18.loopexit

while.end51:                                      ; preds = %while.cond18.backedge, %while.cond18.preheader
  %sub52 = add i32 %low.0, -1024
  br label %if.end124

if.else:                                          ; preds = %if.end
  %cmp53 = icmp ult i32 %low.0, 512
  br i1 %cmp53, label %if.then55, label %if.else119

if.then55:                                        ; preds = %if.else
  %Ebuffer56 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2
  %31 = load i32* %Ebuffer56, align 4, !tbaa !0
  %shl57 = shl i32 %31, 1
  store i32 %shl57, i32* %Ebuffer56, align 4, !tbaa !0
  %Ebits_to_go59 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3
  %32 = load i32* %Ebits_to_go59, align 4, !tbaa !0
  %dec60 = add i32 %32, -1
  store i32 %dec60, i32* %Ebits_to_go59, align 4, !tbaa !0
  %cmp61 = icmp eq i32 %dec60, 0
  br i1 %cmp61, label %if.then63, label %while.cond83.preheader

while.cond83.preheader:                           ; preds = %if.then63, %while.body76.lr.ph, %if.then55
  %33 = phi i32 [ %dec60, %if.then55 ], [ 8, %while.body76.lr.ph ], [ 8, %if.then63 ]
  %Ebits_to_follow84 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4
  %34 = load i32* %Ebits_to_follow84, align 4, !tbaa !0
  %cmp85187 = icmp eq i32 %34, 0
  br i1 %cmp85187, label %if.end124, label %while.body87.lr.ph

while.body87.lr.ph:                               ; preds = %while.cond83.preheader
  %Ecodestrm_len101 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6
  %Ecodestrm104 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5
  %C108 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  %E114 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16
  br label %while.body87

if.then63:                                        ; preds = %if.then55
  %conv65 = trunc i32 %shl57 to i8
  %Ecodestrm_len66 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6
  %35 = load i32** %Ecodestrm_len66, align 8, !tbaa !3
  %36 = load i32* %35, align 4, !tbaa !0
  %inc67 = add nsw i32 %36, 1
  store i32 %inc67, i32* %35, align 4, !tbaa !0
  %idxprom68 = sext i32 %36 to i64
  %Ecodestrm69 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5
  %37 = load i8** %Ecodestrm69, align 8, !tbaa !3
  %arrayidx70 = getelementptr inbounds i8* %37, i64 %idxprom68
  store i8 %conv65, i8* %arrayidx70, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go59, align 4, !tbaa !0
  %C73 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  %38 = load i32* %C73, align 4, !tbaa !0
  %cmp74188 = icmp sgt i32 %38, 7
  br i1 %cmp74188, label %while.body76.lr.ph, label %while.cond83.preheader

while.body76.lr.ph:                               ; preds = %if.then63
  %E79 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16
  %E79.promoted = load i32* %E79, align 4, !tbaa !0
  %39 = add i32 %38, -8
  %40 = lshr i32 %39, 3
  %41 = add i32 %E79.promoted, %40
  %42 = shl nuw i32 %40, 3
  %43 = add i32 %41, 1
  %44 = sub i32 %39, %42
  store i32 %44, i32* %C73, align 4, !tbaa !0
  store i32 %43, i32* %E79, align 4, !tbaa !0
  br label %while.cond83.preheader

while.cond83.loopexit:                            ; preds = %while.body111.lr.ph, %if.then98
  %.pre190 = load i32* %Ebits_to_follow84, align 4, !tbaa !0
  br label %while.cond83.backedge

while.body87:                                     ; preds = %while.cond83.backedge, %while.body87.lr.ph
  %45 = phi i32 [ %33, %while.body87.lr.ph ], [ %49, %while.cond83.backedge ]
  %46 = phi i32 [ %34, %while.body87.lr.ph ], [ %48, %while.cond83.backedge ]
  %dec89 = add i32 %46, -1
  store i32 %dec89, i32* %Ebits_to_follow84, align 4, !tbaa !0
  %47 = load i32* %Ebuffer56, align 4, !tbaa !0
  %shl91 = shl i32 %47, 1
  %or93 = or i32 %shl91, 1
  store i32 %or93, i32* %Ebuffer56, align 4, !tbaa !0
  %dec95 = add i32 %45, -1
  store i32 %dec95, i32* %Ebits_to_go59, align 4, !tbaa !0
  %cmp96 = icmp eq i32 %dec95, 0
  br i1 %cmp96, label %if.then98, label %while.cond83.backedge

while.cond83.backedge:                            ; preds = %while.body87, %while.cond83.loopexit
  %48 = phi i32 [ %dec89, %while.body87 ], [ %.pre190, %while.cond83.loopexit ]
  %49 = phi i32 [ %dec95, %while.body87 ], [ 8, %while.cond83.loopexit ]
  %cmp85 = icmp eq i32 %48, 0
  br i1 %cmp85, label %if.end124, label %while.body87

if.then98:                                        ; preds = %while.body87
  %conv100 = trunc i32 %or93 to i8
  %50 = load i32** %Ecodestrm_len101, align 8, !tbaa !3
  %51 = load i32* %50, align 4, !tbaa !0
  %inc102 = add nsw i32 %51, 1
  store i32 %inc102, i32* %50, align 4, !tbaa !0
  %idxprom103 = sext i32 %51 to i64
  %52 = load i8** %Ecodestrm104, align 8, !tbaa !3
  %arrayidx105 = getelementptr inbounds i8* %52, i64 %idxprom103
  store i8 %conv100, i8* %arrayidx105, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go59, align 4, !tbaa !0
  %53 = load i32* %C108, align 4, !tbaa !0
  %cmp109185 = icmp sgt i32 %53, 7
  br i1 %cmp109185, label %while.body111.lr.ph, label %while.cond83.loopexit

while.body111.lr.ph:                              ; preds = %if.then98
  %E114.promoted = load i32* %E114, align 4, !tbaa !0
  %54 = add i32 %53, -8
  %55 = lshr i32 %54, 3
  %56 = shl nuw i32 %55, 3
  %57 = add i32 %E114.promoted, 1
  %58 = add i32 %57, %55
  %59 = sub i32 %54, %56
  store i32 %59, i32* %C108, align 4, !tbaa !0
  store i32 %58, i32* %E114, align 4, !tbaa !0
  br label %while.cond83.loopexit

if.else119:                                       ; preds = %if.else
  %Ebits_to_follow120 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4
  %60 = load i32* %Ebits_to_follow120, align 4, !tbaa !0
  %inc121 = add i32 %60, 1
  store i32 %inc121, i32* %Ebits_to_follow120, align 4, !tbaa !0
  %sub122 = add i32 %low.0, -512
  br label %if.end124

if.end124:                                        ; preds = %while.cond83.preheader, %while.cond83.backedge, %if.else119, %while.end51
  %low.1 = phi i32 [ %sub52, %while.end51 ], [ %sub122, %if.else119 ], [ %low.0, %while.cond83.backedge ], [ %low.0, %while.cond83.preheader ]
  store i32 %low.1, i32* %Elow, align 4, !tbaa !0
  %C126 = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  %61 = load i32* %C126, align 4, !tbaa !0
  %inc127 = add nsw i32 %61, 1
  store i32 %inc127, i32* %C126, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep, i16 signext %symbol) #0 {
entry:
  %Erange = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 1
  %0 = load i32* %Erange, align 4, !tbaa !0
  %sub = add i32 %0, -2
  %Elow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 0
  %1 = load i32* %Elow, align 4, !tbaa !0
  %tobool = icmp eq i16 %symbol, 0
  %sub. = select i1 %tobool, i32 %sub, i32 2
  %add = select i1 %tobool, i32 0, i32 %sub
  %.add = add i32 %add, %1
  %cmp199 = icmp ult i32 %sub., 256
  br i1 %cmp199, label %while.body.lr.ph, label %entry.while.end125_crit_edge

entry.while.end125_crit_edge:                     ; preds = %entry
  %C128.pre = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  br label %while.end125

while.body.lr.ph:                                 ; preds = %entry
  %Ebuffer = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 2
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 3
  %Ecodestrm_len = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 6
  %Ecodestrm = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 5
  %C = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 14
  %E = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 16
  %Ebits_to_follow = getelementptr inbounds %struct.EncodingEnvironment* %eep, i64 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end122
  %low.0201 = phi i32 [ %.add, %while.body.lr.ph ], [ %shl123, %if.end122 ]
  %range.0200 = phi i32 [ %sub., %while.body.lr.ph ], [ %shl124, %if.end122 ]
  %cmp1 = icmp ugt i32 %low.0201, 511
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %while.body
  %2 = load i32* %Ebuffer, align 4, !tbaa !0
  %shl = shl i32 %2, 1
  %or = or i32 %shl, 1
  store i32 %or, i32* %Ebuffer, align 4, !tbaa !0
  %3 = load i32* %Ebits_to_go, align 4, !tbaa !0
  %dec = add i32 %3, -1
  store i32 %dec, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %dec, 0
  br i1 %cmp4, label %if.then5, label %while.cond16.preheader

if.then5:                                         ; preds = %if.then2
  %conv = trunc i32 %or to i8
  %4 = load i32** %Ecodestrm_len, align 8, !tbaa !3
  %5 = load i32* %4, align 4, !tbaa !0
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %4, align 4, !tbaa !0
  %idxprom = sext i32 %5 to i64
  %6 = load i8** %Ecodestrm, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %6, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %7 = load i32* %C, align 4, !tbaa !0
  %cmp9193 = icmp sgt i32 %7, 7
  br i1 %cmp9193, label %while.body11.lr.ph, label %while.cond16.preheader

while.body11.lr.ph:                               ; preds = %if.then5
  %E.promoted = load i32* %E, align 4, !tbaa !0
  %8 = add i32 %7, -8
  %9 = lshr i32 %8, 3
  %10 = shl nuw i32 %9, 3
  %11 = add i32 %E.promoted, 1
  %12 = add i32 %11, %9
  %13 = sub i32 %8, %10
  store i32 %13, i32* %C, align 4, !tbaa !0
  store i32 %12, i32* %E, align 4, !tbaa !0
  br label %while.cond16.preheader

while.cond16.preheader:                           ; preds = %if.then5, %while.body11.lr.ph, %if.then2
  %14 = phi i32 [ %dec, %if.then2 ], [ 8, %while.body11.lr.ph ], [ 8, %if.then5 ]
  %15 = load i32* %Ebits_to_follow, align 4, !tbaa !0
  %cmp17198 = icmp eq i32 %15, 0
  br i1 %cmp17198, label %while.end49, label %while.body19

while.cond16.loopexit195:                         ; preds = %while.body42.lr.ph, %if.then29
  %.pre = load i32* %Ebits_to_follow, align 4, !tbaa !0
  br label %while.cond16.backedge

while.body19:                                     ; preds = %while.cond16.backedge, %while.cond16.preheader
  %16 = phi i32 [ %14, %while.cond16.preheader ], [ %20, %while.cond16.backedge ]
  %17 = phi i32 [ %15, %while.cond16.preheader ], [ %19, %while.cond16.backedge ]
  %dec21 = add i32 %17, -1
  store i32 %dec21, i32* %Ebits_to_follow, align 4, !tbaa !0
  %18 = load i32* %Ebuffer, align 4, !tbaa !0
  %shl23 = shl i32 %18, 1
  store i32 %shl23, i32* %Ebuffer, align 4, !tbaa !0
  %dec26 = add i32 %16, -1
  store i32 %dec26, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp27 = icmp eq i32 %dec26, 0
  br i1 %cmp27, label %if.then29, label %while.cond16.backedge

while.cond16.backedge:                            ; preds = %while.body19, %while.cond16.loopexit195
  %19 = phi i32 [ %dec21, %while.body19 ], [ %.pre, %while.cond16.loopexit195 ]
  %20 = phi i32 [ %dec26, %while.body19 ], [ 8, %while.cond16.loopexit195 ]
  %cmp17 = icmp eq i32 %19, 0
  br i1 %cmp17, label %while.end49, label %while.body19

if.then29:                                        ; preds = %while.body19
  %conv31 = trunc i32 %shl23 to i8
  %21 = load i32** %Ecodestrm_len, align 8, !tbaa !3
  %22 = load i32* %21, align 4, !tbaa !0
  %inc33 = add nsw i32 %22, 1
  store i32 %inc33, i32* %21, align 4, !tbaa !0
  %idxprom34 = sext i32 %22 to i64
  %23 = load i8** %Ecodestrm, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds i8* %23, i64 %idxprom34
  store i8 %conv31, i8* %arrayidx36, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %24 = load i32* %C, align 4, !tbaa !0
  %cmp40196 = icmp sgt i32 %24, 7
  br i1 %cmp40196, label %while.body42.lr.ph, label %while.cond16.loopexit195

while.body42.lr.ph:                               ; preds = %if.then29
  %E45.promoted = load i32* %E, align 4, !tbaa !0
  %25 = add i32 %24, -8
  %26 = lshr i32 %25, 3
  %27 = shl nuw i32 %26, 3
  %28 = add i32 %E45.promoted, 1
  %29 = add i32 %28, %26
  %30 = sub i32 %25, %27
  store i32 %30, i32* %C, align 4, !tbaa !0
  store i32 %29, i32* %E, align 4, !tbaa !0
  br label %while.cond16.loopexit195

while.end49:                                      ; preds = %while.cond16.backedge, %while.cond16.preheader
  %sub50 = add i32 %low.0201, -512
  br label %if.end122

if.else:                                          ; preds = %while.body
  %cmp51 = icmp ult i32 %low.0201, 256
  br i1 %cmp51, label %if.then53, label %if.else117

if.then53:                                        ; preds = %if.else
  %31 = load i32* %Ebuffer, align 4, !tbaa !0
  %shl55 = shl i32 %31, 1
  store i32 %shl55, i32* %Ebuffer, align 4, !tbaa !0
  %32 = load i32* %Ebits_to_go, align 4, !tbaa !0
  %dec58 = add i32 %32, -1
  store i32 %dec58, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp59 = icmp eq i32 %dec58, 0
  br i1 %cmp59, label %if.then61, label %while.cond81.preheader

if.then61:                                        ; preds = %if.then53
  %conv63 = trunc i32 %shl55 to i8
  %33 = load i32** %Ecodestrm_len, align 8, !tbaa !3
  %34 = load i32* %33, align 4, !tbaa !0
  %inc65 = add nsw i32 %34, 1
  store i32 %inc65, i32* %33, align 4, !tbaa !0
  %idxprom66 = sext i32 %34 to i64
  %35 = load i8** %Ecodestrm, align 8, !tbaa !3
  %arrayidx68 = getelementptr inbounds i8* %35, i64 %idxprom66
  store i8 %conv63, i8* %arrayidx68, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %36 = load i32* %C, align 4, !tbaa !0
  %cmp72187 = icmp sgt i32 %36, 7
  br i1 %cmp72187, label %while.body74.lr.ph, label %while.cond81.preheader

while.body74.lr.ph:                               ; preds = %if.then61
  %E77.promoted = load i32* %E, align 4, !tbaa !0
  %37 = add i32 %36, -8
  %38 = lshr i32 %37, 3
  %39 = shl nuw i32 %38, 3
  %40 = add i32 %E77.promoted, 1
  %41 = add i32 %40, %38
  %42 = sub i32 %37, %39
  store i32 %42, i32* %C, align 4, !tbaa !0
  store i32 %41, i32* %E, align 4, !tbaa !0
  br label %while.cond81.preheader

while.cond81.preheader:                           ; preds = %if.then61, %while.body74.lr.ph, %if.then53
  %43 = phi i32 [ %dec58, %if.then53 ], [ 8, %while.body74.lr.ph ], [ 8, %if.then61 ]
  %44 = load i32* %Ebits_to_follow, align 4, !tbaa !0
  %cmp83192 = icmp eq i32 %44, 0
  br i1 %cmp83192, label %if.end122, label %while.body85

while.cond81.loopexit189:                         ; preds = %while.body109.lr.ph, %if.then96
  %.pre203 = load i32* %Ebits_to_follow, align 4, !tbaa !0
  br label %while.cond81.backedge

while.body85:                                     ; preds = %while.cond81.backedge, %while.cond81.preheader
  %45 = phi i32 [ %43, %while.cond81.preheader ], [ %49, %while.cond81.backedge ]
  %46 = phi i32 [ %44, %while.cond81.preheader ], [ %48, %while.cond81.backedge ]
  %dec87 = add i32 %46, -1
  store i32 %dec87, i32* %Ebits_to_follow, align 4, !tbaa !0
  %47 = load i32* %Ebuffer, align 4, !tbaa !0
  %shl89 = shl i32 %47, 1
  %or91 = or i32 %shl89, 1
  store i32 %or91, i32* %Ebuffer, align 4, !tbaa !0
  %dec93 = add i32 %45, -1
  store i32 %dec93, i32* %Ebits_to_go, align 4, !tbaa !0
  %cmp94 = icmp eq i32 %dec93, 0
  br i1 %cmp94, label %if.then96, label %while.cond81.backedge

while.cond81.backedge:                            ; preds = %while.body85, %while.cond81.loopexit189
  %48 = phi i32 [ %dec87, %while.body85 ], [ %.pre203, %while.cond81.loopexit189 ]
  %49 = phi i32 [ %dec93, %while.body85 ], [ 8, %while.cond81.loopexit189 ]
  %cmp83 = icmp eq i32 %48, 0
  br i1 %cmp83, label %if.end122, label %while.body85

if.then96:                                        ; preds = %while.body85
  %conv98 = trunc i32 %or91 to i8
  %50 = load i32** %Ecodestrm_len, align 8, !tbaa !3
  %51 = load i32* %50, align 4, !tbaa !0
  %inc100 = add nsw i32 %51, 1
  store i32 %inc100, i32* %50, align 4, !tbaa !0
  %idxprom101 = sext i32 %51 to i64
  %52 = load i8** %Ecodestrm, align 8, !tbaa !3
  %arrayidx103 = getelementptr inbounds i8* %52, i64 %idxprom101
  store i8 %conv98, i8* %arrayidx103, align 1, !tbaa !1
  store i32 8, i32* %Ebits_to_go, align 4, !tbaa !0
  %53 = load i32* %C, align 4, !tbaa !0
  %cmp107190 = icmp sgt i32 %53, 7
  br i1 %cmp107190, label %while.body109.lr.ph, label %while.cond81.loopexit189

while.body109.lr.ph:                              ; preds = %if.then96
  %E112.promoted = load i32* %E, align 4, !tbaa !0
  %54 = add i32 %53, -8
  %55 = lshr i32 %54, 3
  %56 = shl nuw i32 %55, 3
  %57 = add i32 %E112.promoted, 1
  %58 = add i32 %57, %55
  %59 = sub i32 %54, %56
  store i32 %59, i32* %C, align 4, !tbaa !0
  store i32 %58, i32* %E, align 4, !tbaa !0
  br label %while.cond81.loopexit189

if.else117:                                       ; preds = %if.else
  %60 = load i32* %Ebits_to_follow, align 4, !tbaa !0
  %inc119 = add i32 %60, 1
  store i32 %inc119, i32* %Ebits_to_follow, align 4, !tbaa !0
  %sub120 = add i32 %low.0201, -256
  br label %if.end122

if.end122:                                        ; preds = %while.cond81.preheader, %while.cond81.backedge, %if.else117, %while.end49
  %low.1 = phi i32 [ %sub50, %while.end49 ], [ %sub120, %if.else117 ], [ %low.0201, %while.cond81.backedge ], [ %low.0201, %while.cond81.preheader ]
  %shl123 = shl i32 %low.1, 1
  %shl124 = shl i32 %range.0200, 1
  %cmp = icmp ult i32 %shl124, 256
  br i1 %cmp, label %while.body, label %while.end125

while.end125:                                     ; preds = %if.end122, %entry.while.end125_crit_edge
  %C128.pre-phi = phi i32* [ %C128.pre, %entry.while.end125_crit_edge ], [ %C, %if.end122 ]
  %low.0.lcssa = phi i32 [ %.add, %entry.while.end125_crit_edge ], [ %shl123, %if.end122 ]
  %range.0.lcssa = phi i32 [ %sub, %entry.while.end125_crit_edge ], [ %shl124, %if.end122 ]
  store i32 %range.0.lcssa, i32* %Erange, align 4, !tbaa !0
  store i32 %low.0.lcssa, i32* %Elow, align 4, !tbaa !0
  %61 = load i32* %C128.pre-phi, align 4, !tbaa !0
  %inc129 = add nsw i32 %61, 1
  store i32 %inc129, i32* %C128.pre-phi, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @biari_init_context(%struct.BiContextType* nocapture %ctx, i32* nocapture %ini) #0 {
entry:
  %0 = load i32* %ini, align 4, !tbaa !0
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %qp = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10
  %2 = load i32* %qp, align 4, !tbaa !0
  %cmp = icmp slt i32 %2, 0
  %. = select i1 %cmp, i32 0, i32 %2
  %mul = mul nsw i32 %., %0
  %shr = ashr i32 %mul, 4
  %arrayidx2 = getelementptr inbounds i32* %ini, i64 1
  %3 = load i32* %arrayidx2, align 4, !tbaa !0
  %add = add nsw i32 %shr, %3
  %cmp3 = icmp slt i32 %add, 1
  %cond7 = select i1 %cmp3, i32 1, i32 %add
  %cmp8 = icmp slt i32 %cond7, 126
  %cond17 = select i1 %cmp8, i32 %cond7, i32 126
  %cmp18 = icmp sgt i32 %cond17, 63
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %cond17, 65472
  %conv = trunc i32 %sub to i16
  %state = getelementptr inbounds %struct.BiContextType* %ctx, i64 0, i32 0
  store i16 %conv, i16* %state, align 2, !tbaa !4
  %MPS = getelementptr inbounds %struct.BiContextType* %ctx, i64 0, i32 1
  store i8 1, i8* %MPS, align 1, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %sub19 = sub nsw i32 63, %cond17
  %conv20 = trunc i32 %sub19 to i16
  %state21 = getelementptr inbounds %struct.BiContextType* %ctx, i64 0, i32 0
  store i16 %conv20, i16* %state21, align 2, !tbaa !4
  %MPS22 = getelementptr inbounds %struct.BiContextType* %ctx, i64 0, i32 1
  store i8 0, i8* %MPS22, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %count = getelementptr inbounds %struct.BiContextType* %ctx, i64 0, i32 2
  store i64 0, i64* %count, align 8, !tbaa !5
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"long", metadata !1}
