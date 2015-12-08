; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/alloca.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hdr = type { %struct.anon }
%struct.anon = type { %union.hdr*, i8* }

@stack_dir = internal unnamed_addr global i32 0, align 4
@last_alloca_header = internal unnamed_addr global %union.hdr* null, align 8
@find_stack_direction.addr = internal unnamed_addr global i8* null, align 8

; Function Attrs: nounwind optsize uwtable
define i8* @C_alloca(i64 %size) #0 {
entry:
  %probe = alloca i8, align 1
  %0 = load i32* @stack_dir, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @find_stack_direction() #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %union.hdr** @last_alloca_header, align 8, !tbaa !3
  %cmp134 = icmp eq %union.hdr* %1, null
  br i1 %cmp134, label %for.end, label %for.body

for.body:                                         ; preds = %if.then9, %if.end
  %hp.035 = phi %union.hdr* [ %1, %if.end ], [ %5, %if.then9 ]
  %2 = load i32* @stack_dir, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %deep = getelementptr inbounds %union.hdr* %hp.035, i64 0, i32 0, i32 1
  %3 = load i8** %deep, align 8, !tbaa !3
  %cmp3 = icmp ugt i8* %3, %probe
  br i1 %cmp3, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %cmp4 = icmp slt i32 %2, 0
  br i1 %cmp4, label %land.lhs.true5, label %for.end

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %deep7 = getelementptr inbounds %union.hdr* %hp.035, i64 0, i32 0, i32 1
  %4 = load i8** %deep7, align 8, !tbaa !3
  %cmp8 = icmp ult i8* %4, %probe
  br i1 %cmp8, label %if.then9, label %for.end

if.then9:                                         ; preds = %land.lhs.true5, %land.lhs.true
  %next = getelementptr inbounds %union.hdr* %hp.035, i64 0, i32 0, i32 0
  %5 = load %union.hdr** %next, align 8, !tbaa !3
  %6 = bitcast %union.hdr* %hp.035 to i8*
  call void @free(i8* %6) #5
  %cmp1 = icmp eq %union.hdr* %5, null
  br i1 %cmp1, label %for.end, label %for.body

for.end:                                          ; preds = %if.then9, %lor.lhs.false, %land.lhs.true5, %if.end
  %hp.0.lcssa = phi %union.hdr* [ null, %if.end ], [ %hp.035, %land.lhs.true5 ], [ %hp.035, %lor.lhs.false ], [ null, %if.then9 ]
  store %union.hdr* %hp.0.lcssa, %union.hdr** @last_alloca_header, align 8, !tbaa !3
  %cmp12 = icmp eq i64 %size, 0
  br i1 %cmp12, label %return, label %if.end14

if.end14:                                         ; preds = %for.end
  %add = add i64 %size, 16
  %call = call noalias i8* @xmalloc(i64 %add) #5
  %cmp15 = icmp eq i8* %call, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @abort() #6
  unreachable

if.end17:                                         ; preds = %if.end14
  %7 = load %union.hdr** @last_alloca_header, align 8, !tbaa !3
  %8 = bitcast i8* %call to %union.hdr*
  %next19 = bitcast i8* %call to %union.hdr**
  store %union.hdr* %7, %union.hdr** %next19, align 8, !tbaa !3
  %deep21 = getelementptr inbounds i8* %call, i64 8
  %9 = bitcast i8* %deep21 to i8**
  store i8* %probe, i8** %9, align 8, !tbaa !3
  store %union.hdr* %8, %union.hdr** @last_alloca_header, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %call, i64 16
  br label %return

return:                                           ; preds = %for.end, %if.end17
  %retval.0 = phi i8* [ %add.ptr, %if.end17 ], [ null, %for.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare noalias i8* @xmalloc(i64) #2

; Function Attrs: noreturn nounwind optsize
declare void @abort() #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @find_stack_direction() #0 {
entry:
  %dummy = alloca i8, align 1
  %0 = load i8** @find_stack_direction.addr, align 8, !tbaa !3
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* %dummy, i8** @find_stack_direction.addr, align 8, !tbaa !3
  call fastcc void @find_stack_direction() #4
  br label %if.end4

if.else:                                          ; preds = %entry
  %cmp1 = icmp ugt i8* %dummy, %0
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 1, i32* @stack_dir, align 4, !tbaa !0
  br label %if.end4

if.else3:                                         ; preds = %if.else
  store i32 -1, i32* @stack_dir, align 4, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else3, %if.then
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
