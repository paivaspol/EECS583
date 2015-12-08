; ModuleID = '../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gg_option = type { i8*, i32, i32*, i32 }

; Function Attrs: nounwind optsize uwtable
define i32 @gg_getopt_long(i32 %argc, i8** %argv, i8* %options, %struct.gg_option* %long_options, i32* %opt_index) #0 {
entry:
  %call = tail call i32 @getopt_internal(i32 %argc, i8** %argv, i8* %options, %struct.gg_option* %long_options, i32* %opt_index, i32 0) #2
  ret i32 %call
}

; Function Attrs: optsize
declare i32 @getopt_internal(i32, i8**, i8*, %struct.gg_option*, i32*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @getopt_long_only(i32 %argc, i8** %argv, i8* %options, %struct.gg_option* %long_options, i32* %opt_index) #0 {
entry:
  %call = tail call i32 @getopt_internal(i32 %argc, i8** %argv, i8* %options, %struct.gg_option* %long_options, i32* %opt_index, i32 1) #2
  ret i32 %call
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
