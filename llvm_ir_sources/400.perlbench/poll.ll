; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/poll.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i16, i16 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_my_poll(%struct.pollfd* nocapture %fds, i64 %nfds, i32 %timeout) #0 {
entry:
  %rfd = alloca %struct.fd_set, align 8
  %wfd = alloca %struct.fd_set, align 8
  %efd = alloca %struct.fd_set, align 8
  %ifd = alloca %struct.fd_set, align 8
  %timebuf = alloca %struct.timeval, align 8
  %0 = bitcast %struct.fd_set* %rfd to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast %struct.fd_set* %wfd to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #1
  %2 = bitcast %struct.fd_set* %efd to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #1
  %3 = bitcast %struct.fd_set* %ifd to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #1
  %arrayidx = getelementptr inbounds %struct.fd_set* %ifd, i64 0, i32 0, i64 0
  %4 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #1, !srcloc !0
  %arrayidx6 = getelementptr inbounds %struct.fd_set* %rfd, i64 0, i32 0, i64 0
  %5 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx6) #1, !srcloc !1
  %arrayidx15 = getelementptr inbounds %struct.fd_set* %wfd, i64 0, i32 0, i64 0
  %6 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx15) #1, !srcloc !2
  %arrayidx24 = getelementptr inbounds %struct.fd_set* %efd, i64 0, i32 0, i64 0
  %7 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx24) #1, !srcloc !3
  %conv = trunc i64 %nfds to i32
  %cmp228 = icmp sgt i32 %conv, 0
  br i1 %cmp228, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %for.inc ], [ 0, %entry ]
  %n.0229 = phi i32 [ %n.2, %for.inc ], [ 0, %entry ]
  %events31 = getelementptr inbounds %struct.pollfd* %fds, i64 %indvars.iv233, i32 1
  %8 = load i16* %events31, align 2, !tbaa !4
  %conv32 = sext i16 %8 to i32
  %fd35 = getelementptr inbounds %struct.pollfd* %fds, i64 %indvars.iv233, i32 0
  %9 = load i32* %fd35, align 4, !tbaa !7
  %revents = getelementptr inbounds %struct.pollfd* %fds, i64 %indvars.iv233, i32 2
  store i16 0, i16* %revents, align 2, !tbaa !4
  %cmp38 = icmp slt i32 %9, 0
  br i1 %cmp38, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %div = sdiv i32 %9, 64
  %idxprom40 = sext i32 %div to i64
  %arrayidx42 = getelementptr inbounds %struct.fd_set* %ifd, i64 0, i32 0, i64 %idxprom40
  %10 = load i64* %arrayidx42, align 8, !tbaa !8
  %rem = srem i32 %9, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %shl, %10
  %cmp43 = icmp eq i64 %and, 0
  br i1 %cmp43, label %if.end, label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %cmp45 = icmp sgt i32 %9, %n.0229
  %.n.0 = select i1 %cmp45, i32 %9, i32 %n.0229
  %and49 = and i32 %conv32, 65
  %tobool = icmp eq i32 %and49, 0
  br i1 %tobool, label %if.end58, label %if.then50

if.then50:                                        ; preds = %if.end
  %arrayidx57 = getelementptr inbounds %struct.fd_set* %rfd, i64 0, i32 0, i64 %idxprom40
  %11 = load i64* %arrayidx57, align 8, !tbaa !8
  %or = or i64 %11, %shl
  store i64 %or, i64* %arrayidx57, align 8, !tbaa !8
  br label %if.end58

if.end58:                                         ; preds = %if.end, %if.then50
  %and59 = and i32 %conv32, 260
  %tobool60 = icmp eq i32 %and59, 0
  br i1 %tobool60, label %if.end70, label %if.then61

if.then61:                                        ; preds = %if.end58
  %arrayidx68 = getelementptr inbounds %struct.fd_set* %wfd, i64 0, i32 0, i64 %idxprom40
  %12 = load i64* %arrayidx68, align 8, !tbaa !8
  %or69 = or i64 %12, %shl
  store i64 %or69, i64* %arrayidx68, align 8, !tbaa !8
  br label %if.end70

if.end70:                                         ; preds = %if.end58, %if.then61
  %and71 = and i32 %conv32, 130
  %tobool72 = icmp eq i32 %and71, 0
  br i1 %tobool72, label %for.inc, label %if.then73

if.then73:                                        ; preds = %if.end70
  %arrayidx80 = getelementptr inbounds %struct.fd_set* %efd, i64 0, i32 0, i64 %idxprom40
  %13 = load i64* %arrayidx80, align 8, !tbaa !8
  %or81 = or i64 %13, %shl
  store i64 %or81, i64* %arrayidx80, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.end70, %lor.lhs.false, %if.then73, %for.body
  %n.2 = phi i32 [ %n.0229, %for.body ], [ %n.0229, %lor.lhs.false ], [ %.n.0, %if.then73 ], [ %.n.0, %if.end70 ]
  %indvars.iv.next234 = add i64 %indvars.iv233, 1
  %lftr.wideiv235 = trunc i64 %indvars.iv.next234 to i32
  %exitcond236 = icmp eq i32 %lftr.wideiv235, %conv
  br i1 %exitcond236, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %n.0.lcssa = phi i32 [ 0, %entry ], [ %n.2, %for.inc ]
  %cmp83 = icmp sgt i32 %timeout, -1
  br i1 %cmp83, label %if.then85, label %if.end90

if.then85:                                        ; preds = %for.end
  %div86 = sdiv i32 %timeout, 1000
  %conv87 = sext i32 %div86 to i64
  %tv_sec = getelementptr inbounds %struct.timeval* %timebuf, i64 0, i32 0
  store i64 %conv87, i64* %tv_sec, align 8, !tbaa !8
  %rem88 = srem i32 %timeout, 1000
  %mul = mul nsw i32 %rem88, 1000
  %conv89 = sext i32 %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval* %timebuf, i64 0, i32 1
  store i64 %conv89, i64* %tv_usec, align 8, !tbaa !8
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %for.end
  %tbuf.0 = phi %struct.timeval* [ %timebuf, %if.then85 ], [ null, %for.end ]
  %add = add nsw i32 %n.0.lcssa, 1
  %call = call i32 @select(i32 %add, %struct.fd_set* %rfd, %struct.fd_set* %wfd, %struct.fd_set* %efd, %struct.timeval* %tbuf.0) #3
  %cmp91 = icmp slt i32 %call, 0
  %cmp228.not = xor i1 %cmp228, true
  %brmerge = or i1 %cmp91, %cmp228.not
  %call.mux = select i1 %cmp91, i32 %call, i32 0
  br i1 %brmerge, label %cleanup, label %for.body99

for.body99:                                       ; preds = %if.end90, %for.inc175
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc175 ], [ 0, %if.end90 ]
  %count.0226 = phi i32 [ %count.1, %for.inc175 ], [ 0, %if.end90 ]
  %events103 = getelementptr inbounds %struct.pollfd* %fds, i64 %indvars.iv, i32 1
  %14 = load i16* %events103, align 2, !tbaa !4
  %conv104224 = zext i16 %14 to i32
  %fd109 = getelementptr inbounds %struct.pollfd* %fds, i64 %indvars.iv, i32 0
  %15 = load i32* %fd109, align 4, !tbaa !7
  %cmp110 = icmp slt i32 %15, 0
  br i1 %cmp110, label %for.inc175, label %if.end113

if.end113:                                        ; preds = %for.body99
  %div114 = sdiv i32 %15, 64
  %idxprom115 = sext i32 %div114 to i64
  %arrayidx117 = getelementptr inbounds %struct.fd_set* %ifd, i64 0, i32 0, i64 %idxprom115
  %16 = load i64* %arrayidx117, align 8, !tbaa !8
  %rem118 = srem i32 %15, 64
  %sh_prom119 = zext i32 %rem118 to i64
  %shl120 = shl i64 1, %sh_prom119
  %and121 = and i64 %shl120, %16
  %cmp122 = icmp eq i64 %and121, 0
  br i1 %cmp122, label %if.else, label %if.end164

if.else:                                          ; preds = %if.end113
  %arrayidx128 = getelementptr inbounds %struct.fd_set* %rfd, i64 0, i32 0, i64 %idxprom115
  %17 = load i64* %arrayidx128, align 8, !tbaa !8
  %and132 = and i64 %17, %shl120
  %cmp133 = icmp eq i64 %and132, 0
  %and136.and105.v = select i1 %cmp133, i32 390, i32 455
  %and136.and105 = and i32 %and136.and105.v, %conv104224
  %arrayidx141 = getelementptr inbounds %struct.fd_set* %wfd, i64 0, i32 0, i64 %idxprom115
  %18 = load i64* %arrayidx141, align 8, !tbaa !8
  %and145 = and i64 %18, %shl120
  %cmp146 = icmp eq i64 %and145, 0
  %and149 = and i32 %and136.and105, 195
  %revents100.1 = select i1 %cmp146, i32 %and149, i32 %and136.and105
  %arrayidx154 = getelementptr inbounds %struct.fd_set* %efd, i64 0, i32 0, i64 %idxprom115
  %19 = load i64* %arrayidx154, align 8, !tbaa !8
  %and158 = and i64 %19, %shl120
  %cmp159 = icmp eq i64 %and158, 0
  %and162 = and i32 %revents100.1, 325
  %and162.revents100.1 = select i1 %cmp159, i32 %and162, i32 %revents100.1
  br label %if.end164

if.end164:                                        ; preds = %if.else, %if.end113
  %revents100.2 = phi i32 [ 32, %if.end113 ], [ %and162.revents100.1, %if.else ]
  %conv165 = trunc i32 %revents100.2 to i16
  %revents168 = getelementptr inbounds %struct.pollfd* %fds, i64 %indvars.iv, i32 2
  store i16 %conv165, i16* %revents168, align 2, !tbaa !4
  %not.cmp170 = icmp ne i32 %revents100.2, 0
  %inc173 = zext i1 %not.cmp170 to i32
  %count.0.inc173 = add nsw i32 %inc173, %count.0226
  br label %for.inc175

for.inc175:                                       ; preds = %if.end164, %for.body99
  %count.1 = phi i32 [ %count.0226, %for.body99 ], [ %count.0.inc173, %if.end164 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv
  br i1 %exitcond, label %cleanup, label %for.body99

cleanup:                                          ; preds = %if.end90, %for.inc175
  %retval.0 = phi i32 [ %call.mux, %if.end90 ], [ %count.1, %for.inc175 ]
  call void @llvm.lifetime.end(i64 128, i8* %3) #1
  call void @llvm.lifetime.end(i64 128, i8* %2) #1
  call void @llvm.lifetime.end(i64 128, i8* %1) #1
  call void @llvm.lifetime.end(i64 128, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{i32 -2145359780}
!1 = metadata !{i32 -2145359384}
!2 = metadata !{i32 -2145358988}
!3 = metadata !{i32 -2145358592}
!4 = metadata !{metadata !"short", metadata !5}
!5 = metadata !{metadata !"omnipotent char", metadata !6}
!6 = metadata !{metadata !"Simple C/C++ TBAA"}
!7 = metadata !{metadata !"int", metadata !5}
!8 = metadata !{metadata !"long", metadata !5}