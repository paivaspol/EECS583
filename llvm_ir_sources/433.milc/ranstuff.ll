; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/ranstuff.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }

; Function Attrs: nounwind optsize uwtable
define void @initialize_prn(%struct.double_prn* nocapture %prn_pt, i32 %seed, i32 %index) #0 {
entry:
  %mul = shl nsw i32 %index, 3
  %add = add nsw i32 %mul, 69607
  %mul1 = mul nsw i32 %add, %seed
  %add2 = add nsw i32 %mul1, 12345
  %shr86 = lshr i32 %add2, 8
  %conv87 = zext i32 %shr86 to i64
  %r0 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 0
  store i64 %conv87, i64* %r0, align 8, !tbaa !0
  %mul5 = mul nsw i32 %add2, %add
  %add6 = add nsw i32 %mul5, 12345
  %shr788 = lshr i32 %add6, 8
  %conv989 = zext i32 %shr788 to i64
  %r1 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 1
  store i64 %conv989, i64* %r1, align 8, !tbaa !0
  %mul12 = mul nsw i32 %add6, %add
  %add13 = add nsw i32 %mul12, 12345
  %shr1490 = lshr i32 %add13, 8
  %conv1691 = zext i32 %shr1490 to i64
  %r2 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 2
  store i64 %conv1691, i64* %r2, align 8, !tbaa !0
  %mul19 = mul nsw i32 %add13, %add
  %add20 = add nsw i32 %mul19, 12345
  %shr2192 = lshr i32 %add20, 8
  %conv2393 = zext i32 %shr2192 to i64
  %r3 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 3
  store i64 %conv2393, i64* %r3, align 8, !tbaa !0
  %mul26 = mul nsw i32 %add20, %add
  %add27 = add nsw i32 %mul26, 12345
  %shr2894 = lshr i32 %add27, 8
  %conv3095 = zext i32 %shr2894 to i64
  %r4 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 4
  store i64 %conv3095, i64* %r4, align 8, !tbaa !0
  %mul33 = mul nsw i32 %add27, %add
  %add34 = add nsw i32 %mul33, 12345
  %shr3596 = lshr i32 %add34, 8
  %conv3797 = zext i32 %shr3596 to i64
  %r5 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 5
  store i64 %conv3797, i64* %r5, align 8, !tbaa !0
  %mul40 = mul nsw i32 %add34, %add
  %add41 = add nsw i32 %mul40, 12345
  %shr4298 = lshr i32 %add41, 8
  %conv4499 = zext i32 %shr4298 to i64
  %r6 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 6
  store i64 %conv4499, i64* %r6, align 8, !tbaa !0
  %mul47 = mul nsw i32 %add41, %add
  %add48 = add nsw i32 %mul47, 12345
  %conv49 = sext i32 %add48 to i64
  %ic_state = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 9
  store i64 %conv49, i64* %ic_state, align 8, !tbaa !0
  %add51 = add nsw i32 %mul, 100005
  %conv52 = sext i32 %add51 to i64
  %multiplier = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 7
  store i64 %conv52, i64* %multiplier, align 8, !tbaa !0
  %addend = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 8
  store i64 12345, i64* %addend, align 8, !tbaa !0
  %scale = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 10
  store double 0x3E70000000000000, double* %scale, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double @myrand(%struct.double_prn* nocapture %prn_pt) #0 {
entry:
  %r5 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 5
  %0 = load i64* %r5, align 8, !tbaa !0
  %shr = lshr i64 %0, 7
  %r6 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 6
  %1 = load i64* %r6, align 8, !tbaa !0
  %shl = shl i64 %1, 17
  %or = or i64 %shl, %shr
  %r4 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 4
  %2 = load i64* %r4, align 8, !tbaa !0
  %shr1 = lshr i64 %2, 1
  %shl3 = shl i64 %0, 23
  %or4 = or i64 %shr1, %shl3
  %xor = xor i64 %or4, %or
  %xor.tr = trunc i64 %xor to i32
  %conv = and i32 %xor.tr, 16777215
  store i64 %0, i64* %r6, align 8, !tbaa !0
  store i64 %2, i64* %r5, align 8, !tbaa !0
  %r3 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 3
  %3 = load i64* %r3, align 8, !tbaa !0
  store i64 %3, i64* %r4, align 8, !tbaa !0
  %r2 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 2
  %4 = load i64* %r2, align 8, !tbaa !0
  store i64 %4, i64* %r3, align 8, !tbaa !0
  %r1 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 1
  %5 = load i64* %r1, align 8, !tbaa !0
  store i64 %5, i64* %r2, align 8, !tbaa !0
  %r0 = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 0
  %6 = load i64* %r0, align 8, !tbaa !0
  store i64 %6, i64* %r1, align 8, !tbaa !0
  %conv1346 = zext i32 %conv to i64
  store i64 %conv1346, i64* %r0, align 8, !tbaa !0
  %ic_state = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 9
  %7 = load i64* %ic_state, align 8, !tbaa !0
  %multiplier = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 7
  %8 = load i64* %multiplier, align 8, !tbaa !0
  %mul = mul i64 %8, %7
  %addend = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 8
  %9 = load i64* %addend, align 8, !tbaa !0
  %add = add i64 %mul, %9
  %conv15 = trunc i64 %add to i32
  %sext = shl i64 %add, 32
  %conv16 = ashr exact i64 %sext, 32
  store i64 %conv16, i64* %ic_state, align 8, !tbaa !0
  %scale = getelementptr inbounds %struct.double_prn* %prn_pt, i64 0, i32 10
  %10 = load double* %scale, align 8, !tbaa !3
  %shr1847 = lshr i32 %conv15, 8
  %xor20 = xor i32 %shr1847, %conv
  %conv21 = sitofp i32 %xor20 to double
  %mul22 = fmul double %10, %conv21
  ret double %mul22
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"long", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
