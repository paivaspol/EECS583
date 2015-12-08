; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/gauge_info.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"action.description\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str2 = private unnamed_addr constant [32 x i8] c"\22Gauge plus fermion (improved)\22\00", align 1
@.str3 = private unnamed_addr constant [18 x i8] c"gauge.description\00", align 1
@gauge_action_description = external global [128 x i8]
@.str4 = private unnamed_addr constant [13 x i8] c"gauge.nloops\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@gauge_action_nloops = external global i32
@.str6 = private unnamed_addr constant [12 x i8] c"gauge.nreps\00", align 1
@gauge_action_nreps = external global i32
@.str7 = private unnamed_addr constant [13 x i8] c"gauge.beta11\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@beta = external global double
@.str9 = private unnamed_addr constant [17 x i8] c"gauge.tadpole.u0\00", align 1
@u0 = external global double
@.str10 = private unnamed_addr constant [18 x i8] c"quark.description\00", align 1
@quark_action_description = internal global [72 x i8] c"\22O(a^2): couplings(pi)=0, Naik term, No O(a^2) errors, tadpole weights\22\00", align 16
@.str11 = private unnamed_addr constant [14 x i8] c"quark.flavors\00", align 1
@nflavors = external global i32
@.str12 = private unnamed_addr constant [11 x i8] c"quark.mass\00", align 1
@mass = external global double

; Function Attrs: nounwind optsize uwtable
define void @write_appl_gauge_info(%struct._IO_FILE* %fp) #0 {
entry:
  %call = tail call i32 @write_gauge_info_item(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0) #2
  %call1 = tail call i32 @write_gauge_info_item(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([128 x i8]* @gauge_action_description, i64 0, i64 0), i32 0, i32 0) #2
  %call2 = tail call i32 @write_gauge_info_item(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* bitcast (i32* @gauge_action_nloops to i8*), i32 0, i32 0) #2
  %call3 = tail call i32 @write_gauge_info_item(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* bitcast (i32* @gauge_action_nreps to i8*), i32 0, i32 0) #2
  %call4 = tail call i32 @write_gauge_info_item(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* bitcast (double* @beta to i8*), i32 0, i32 0) #2
  %call5 = tail call i32 @write_gauge_info_item(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* bitcast (double* @u0 to i8*), i32 0, i32 0) #2
  %call6 = tail call i32 @write_gauge_info_item(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8]* @quark_action_description, i64 0, i64 0), i32 0, i32 0) #2
  %call7 = tail call i32 @write_gauge_info_item(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* bitcast (i32* @nflavors to i8*), i32 0, i32 0) #2
  %call8 = tail call i32 @write_gauge_info_item(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* bitcast (double* @mass to i8*), i32 0, i32 0) #2
  ret void
}

; Function Attrs: optsize
declare i32 @write_gauge_info_item(%struct._IO_FILE*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
