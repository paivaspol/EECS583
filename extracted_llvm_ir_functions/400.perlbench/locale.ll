; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/locale.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str2 = private unnamed_addr constant [13 x i8] c"PERL_UNICODE\00", align 1
@PL_unicode = external global i32

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_set_numeric_radix() #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_new_numeric(i8* nocapture %newnum) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_set_numeric_standard() #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_set_numeric_local() #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_new_ctype(i8* nocapture %newctype) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_new_collate(i8* nocapture %newcoll) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_init_i18nl10n(i32 %printwarn) #1 {
entry:
  %p = alloca i8*, align 8
  %call6 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0)) #4
  store i8* %call6, i8** %p, align 8, !tbaa !0
  %tobool7 = icmp eq i8* %call6, null
  br i1 %tobool7, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call8 = call i32 @Perl_parse_unicode_opts(i8** %p) #4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call8, %cond.true ], [ 0, %entry ]
  store i32 %cond, i32* @PL_unicode, align 4, !tbaa !3
  ret i32 1
}

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #2

; Function Attrs: optsize
declare i32 @Perl_parse_unicode_opts(i8**) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_init_i18nl14n(i32 %printwarn) #1 {
entry:
  %call = tail call i32 @Perl_init_i18nl10n(i32 undef) #5
  ret i32 1
}

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
