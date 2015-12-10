; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateIDLinearWavesParameters.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"amplitude\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"IDLinearWaves\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str4 = private unnamed_addr constant [47 x i8] c"Amplitude of the wave: both for teuk and plane\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"0.001\00", align 1
@idlinearwavespriv_ = external global %struct.anon
@.str6 = private unnamed_addr constant [3 x i8] c"0:\00", align 1
@.str7 = private unnamed_addr constant [19 x i8] c"positive amplitude\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"mvalue\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str10 = private unnamed_addr constant [50 x i8] c"m value for teukwaves waves: integer from -2 to 2\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"-2:2\00", align 1
@.str13 = private unnamed_addr constant [24 x i8] c"implemented : m = -2..2\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"KEYWORD\00", align 1
@.str16 = private unnamed_addr constant [42 x i8] c"Packet for teukwaves: eppley,evans,square\00", align 1
@.str17 = private unnamed_addr constant [7 x i8] c"eppley\00", align 1
@.str18 = private unnamed_addr constant [12 x i8] c"Eppley type\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c"evans\00", align 1
@.str20 = private unnamed_addr constant [11 x i8] c"Evans type\00", align 1
@.str21 = private unnamed_addr constant [7 x i8] c"square\00", align 1
@.str22 = private unnamed_addr constant [12 x i8] c"Square type\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"parity\00", align 1
@.str24 = private unnamed_addr constant [34 x i8] c"Parity for teukwaves: even or odd\00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"even parity\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"odd\00", align 1
@.str28 = private unnamed_addr constant [11 x i8] c"odd parity\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"teuk_no_vee\00", align 1
@.str30 = private unnamed_addr constant [33 x i8] c"Initialize Teuk. waves with V=0?\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str32 = private unnamed_addr constant [19 x i8] c"Bona Masso setting\00", align 1
@.str33 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str34 = private unnamed_addr constant [11 x i8] c"wavecenter\00", align 1
@.str35 = private unnamed_addr constant [22 x i8] c"linears waves thingie\00", align 1
@.str36 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str37 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str39 = private unnamed_addr constant [11 x i8] c"wavelength\00", align 1
@.str40 = private unnamed_addr constant [24 x i8] c"linearwaves wave length\00", align 1
@.str41 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str42 = private unnamed_addr constant [20 x i8] c"positive wavelength\00", align 1
@.str43 = private unnamed_addr constant [8 x i8] c"wavephi\00", align 1
@.str44 = private unnamed_addr constant [25 x i8] c"Phi angle for planewaves\00", align 1
@.str45 = private unnamed_addr constant [10 x i8] c"wavepulse\00", align 1
@.str46 = private unnamed_addr constant [41 x i8] c"planewaves thingy for the gaussian pulse\00", align 1
@.str47 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str48 = private unnamed_addr constant [15 x i8] c"positive pulse\00", align 1
@.str49 = private unnamed_addr constant [11 x i8] c"wavesgoing\00", align 1
@.str50 = private unnamed_addr constant [25 x i8] c"in and outgoing waves...\00", align 1
@.str51 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str52 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str53 = private unnamed_addr constant [13 x i8] c"Ingoing wave\00", align 1
@.str54 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str55 = private unnamed_addr constant [14 x i8] c"Outgoing wave\00", align 1
@.str56 = private unnamed_addr constant [21 x i8] c"In and outgoing wave\00", align 1
@.str57 = private unnamed_addr constant [10 x i8] c"wavetheta\00", align 1
@.str58 = private unnamed_addr constant [27 x i8] c"Theta angle for planewaves\00", align 1
@.str59 = private unnamed_addr constant [9 x i8] c"EINSTEIN\00", align 1
@.str60 = private unnamed_addr constant [13 x i8] c"initial_data\00", align 1
@.str61 = private unnamed_addr constant [10 x i8] c"teukwaves\00", align 1
@.str62 = private unnamed_addr constant [43 x i8] c"linear waves initial data- Teukolsky waves\00", align 1
@.str63 = private unnamed_addr constant [11 x i8] c"planewaves\00", align 1
@.str64 = private unnamed_addr constant [39 x i8] c"linear waves initial data- plane waves\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsCreateIDLinearWavesParameters() #0 {
  %1 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* bitcast (%struct.anon* @idlinearwavespriv_ to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str7, i64 0, i64 0)) #2, !dbg !13
  %2 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([50 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @idlinearwavespriv_, i64 0, i32 10) to i8*), i32 1, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str13, i64 0, i64 0)) #2, !dbg !14
  %3 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([42 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @idlinearwavespriv_, i64 0, i32 6) to i8*), i32 3, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str22, i64 0, i64 0)) #2, !dbg !15
  %4 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([34 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @idlinearwavespriv_, i64 0, i32 7) to i8*), i32 2, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str28, i64 0, i64 0)) #2, !dbg !16
  %5 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([33 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @idlinearwavespriv_, i64 0, i32 8) to i8*), i32 2, i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str32, i64 0, i64 0)) #2, !dbg !17
  %6 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([11 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([22 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @idlinearwavespriv_, i64 0, i32 1) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str38, i64 0, i64 0)) #2, !dbg !18
  %7 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([11 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([24 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @idlinearwavespriv_, i64 0, i32 2) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str42, i64 0, i64 0)) #2, !dbg !19
  %8 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([8 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([25 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @idlinearwavespriv_, i64 0, i32 3) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str38, i64 0, i64 0)) #2, !dbg !20
  %9 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([10 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([41 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @idlinearwavespriv_, i64 0, i32 4) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str48, i64 0, i64 0)) #2, !dbg !21
  %10 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([11 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([25 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @idlinearwavespriv_, i64 0, i32 9) to i8*), i32 3, i8* getelementptr inbounds ([3 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str56, i64 0, i64 0)) #2, !dbg !22
  %11 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([10 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([27 x i8]* @.str58, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @idlinearwavespriv_, i64 0, i32 5) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str38, i64 0, i64 0)) #2, !dbg !23
  ret i32 0, !dbg !24
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterCreate(i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsIDLinearWavesParameterExtensions() #0 {
  %1 = tail call i32 @CCTKi_ParameterAddRange(i8* getelementptr inbounds ([9 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str62, i64 0, i64 0)) #2, !dbg !25
  %2 = tail call i32 @CCTKi_ParameterAddRange(i8* getelementptr inbounds ([9 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str64, i64 0, i64 0)) #2, !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterAddRange(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateIDLinearWavesParameters.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "CCTKi_BindingsCreateIDLinearWavesParameters", scope: !1, file: !1, line: 15, type: !5, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsCreateIDLinearWavesParameters, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "CCTKi_BindingsIDLinearWavesParameterExtensions", scope: !1, file: !1, line: 149, type: !5, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsIDLinearWavesParameterExtensions, variables: !2)
!9 = !{i32 2, !"Dwarf Version", i32 2}
!10 = !{i32 2, !"Debug Info Version", i32 700000003}
!11 = !{i32 1, !"PIC Level", i32 2}
!12 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!13 = !DILocation(line: 17, column: 3, scope: !4)
!14 = !DILocation(line: 28, column: 3, scope: !4)
!15 = !DILocation(line: 39, column: 3, scope: !4)
!16 = !DILocation(line: 52, column: 3, scope: !4)
!17 = !DILocation(line: 64, column: 3, scope: !4)
!18 = !DILocation(line: 76, column: 3, scope: !4)
!19 = !DILocation(line: 87, column: 3, scope: !4)
!20 = !DILocation(line: 98, column: 3, scope: !4)
!21 = !DILocation(line: 109, column: 3, scope: !4)
!22 = !DILocation(line: 120, column: 3, scope: !4)
!23 = !DILocation(line: 133, column: 3, scope: !4)
!24 = !DILocation(line: 144, column: 3, scope: !4)
!25 = !DILocation(line: 151, column: 3, scope: !8)
!26 = !DILocation(line: 157, column: 3, scope: !8)
!27 = !DILocation(line: 163, column: 3, scope: !8)
