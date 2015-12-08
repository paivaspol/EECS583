; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/parse_args_file.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.arg_t = type { i8*, i32, i8*, i8* }

@parse_args_file.nliveargs = internal unnamed_addr global i32 0, align 4
@stderr = external global %struct._IO_FILE*
@arg = internal global [77 x %struct.arg_t] [%struct.arg_t { i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8]* @.str7, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([10 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8]* @.str10, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([4 x i8]* @.str11, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([28 x i8]* @.str12, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8]* @.str15, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8]* @.str16, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8]* @.str18, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8]* @.str19, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([159 x i8]* @.str20, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8]* @.str21, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8]* @.str22, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8]* @.str23, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([6 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8]* @.str25, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8]* @.str26, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([8 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8]* @.str28, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8]* @.str29, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8]* @.str30, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8]* @.str31, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str32, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8]* @.str33, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([8 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8]* @.str34, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8]* @.str35, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([48 x i8]* @.str36, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8]* @.str37, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([45 x i8]* @.str38, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8]* @.str39, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([8 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8]* @.str41, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8]* @.str42, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([8 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8]* @.str44, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8]* @.str45, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([8 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8]* @.str47, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([12 x i8]* @.str48, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8]* @.str49, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8]* @.str50, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8]* @.str51, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8]* @.str52, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8]* @.str54, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8]* @.str55, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([7 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8]* @.str57, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8]* @.str58, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([8 x i8]* @.str59, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8]* @.str60, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8]* @.str61, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([3 x i8]* @.str62, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8]* @.str63, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8]* @.str64, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([4 x i8]* @.str65, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8]* @.str66, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8]* @.str67, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([28 x i8]* @.str68, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8]* @.str69, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([36 x i8]* @.str70, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8]* @.str71, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([48 x i8]* @.str72, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([4 x i8]* @.str73, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([39 x i8]* @.str74, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8]* @.str75, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([37 x i8]* @.str76, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8]* @.str77, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8]* @.str79, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8]* @.str80, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8]* @.str81, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([4 x i8]* @.str82, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8]* @.str83, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str84, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8]* @.str85, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str87, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([4 x i8]* @.str88, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str89, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8]* @.str90, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([34 x i8]* @.str91, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8]* @.str92, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([38 x i8]* @.str93, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8]* @.str94, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([7 x i8]* @.str95, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8]* @.str96, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8]* @.str97, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([34 x i8]* @.str98, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8]* @.str99, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([10 x i8]* @.str100, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8]* @.str101, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8]* @.str102, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([44 x i8]* @.str103, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8]* @.str104, i32 0, i32 0), i32 9, i8* null, i8* getelementptr inbounds ([39 x i8]* @.str105, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8]* @.str106, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([7 x i8]* @.str95, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8]* @.str107, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8]* @.str108, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str109, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8]* @.str110, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8]* @.str111, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8]* @.str112, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([7 x i8]* @.str113, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8]* @.str114, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8]* @.str115, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([58 x i8]* @.str116, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8]* @.str117, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8]* @.str118, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8]* @.str119, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([11 x i8]* @.str120, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8]* @.str121, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8]* @.str122, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([71 x i8]* @.str123, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8]* @.str124, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([75 x i8]* @.str125, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8]* @.str126, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([41 x i8]* @.str127, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([14 x i8]* @.str128, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8]* @.str129, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8]* @.str130, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([7 x i8]* @.str131, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8]* @.str132, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8]* @.str133, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8]* @.str134, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([13 x i8]* @.str135, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8]* @.str136, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8]* @.str137, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8]* @.str138, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8]* @.str139, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8]* @.str140, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([4 x i8]* @.str141, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8]* @.str142, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8]* @.str143, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8]* @.str144, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8]* @.str145, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([6 x i8]* @.str146, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8]* @.str147, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([16 x i8]* @.str148, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([5 x i8]* @.str149, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8]* @.str150, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8]* @.str151, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8]* @.str152, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([5 x i8]* @.str153, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([41 x i8]* @.str154, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8]* @.str155, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([60 x i8]* @.str156, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([12 x i8]* @.str157, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8]* @.str158, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8]* @.str159, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([5 x i8]* @.str160, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str161, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([12 x i8]* @.str162, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([4 x i8]* @.str163, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8]* @.str164, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([10 x i8]* @.str165, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([5 x i8]* @.str166, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8]* @.str167, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8]* @.str168, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8]* @.str169, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str170, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8]* @.str171, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([4 x i8]* @.str172, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str173, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([8 x i8]* @.str174, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([5 x i8]* @.str175, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str176, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8]* @.str177, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([5 x i8]* @.str178, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8]* @.str179, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([7 x i8]* @.str180, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([4 x i8]* @.str141, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str181, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8]* @.str182, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([4 x i8]* @.str163, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str183, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([6 x i8]* @.str184, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([7 x i8]* @.str185, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str186, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([11 x i8]* @.str187, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([41 x i8]* @.str188, i32 0, i32 0) }, %struct.arg_t { i8* getelementptr inbounds ([9 x i8]* @.str189, i32 0, i32 0), i32 8, i8* null, i8* getelementptr inbounds ([33 x i8]* @.str190, i32 0, i32 0) }, %struct.arg_t { i8* null, i32 2, i8* null, i8* null }], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str1 = private unnamed_addr constant [63 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/parse_args_file.c\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str3 = private unnamed_addr constant [46 x i8] c"Unable to open arguments file %s for reading\0A\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@liveargs = internal unnamed_addr global i8** null, align 8
@.str5 = private unnamed_addr constant [9 x i8] c"-logbase\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"1.0003\00", align 1
@.str7 = private unnamed_addr constant [45 x i8] c"Base in which all log-likelihoods calculated\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"-feat\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"1s_c_d_dd\00", align 1
@.str10 = private unnamed_addr constant [80 x i8] c"Feature type: Must be s3_1x39 / s2_4x / cep_dcep[,%d] / cep[,%d] / %d,%d,...,%d\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"-gs\00", align 1
@.str12 = private unnamed_addr constant [28 x i8] c"Gaussian Selection Mapping.\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"-ds\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str15 = private unnamed_addr constant [46 x i8] c"Ratio of Down-sampling the frame computation.\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"-cond_ds\00", align 1
@.str17 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str18 = private unnamed_addr constant [58 x i8] c"Conditional Down-sampling, override normal down sampling.\00", align 1
@.str19 = private unnamed_addr constant [7 x i8] c"-gs4gs\00", align 1
@.str20 = private unnamed_addr constant [159 x i8] c"A flag that specified whether the input GS map will be used for Gaussian Selection. If it is disabled, the map will only provide information to other modules.\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"-svq4svq\00", align 1
@.str22 = private unnamed_addr constant [96 x i8] c"A flag that specified whether the input SVQ will be used as approximate scores of the Gaussians\00", align 1
@.str23 = private unnamed_addr constant [10 x i8] c"-ci_pbeam\00", align 1
@.str24 = private unnamed_addr constant [6 x i8] c"1e-80\00", align 1
@.str25 = private unnamed_addr constant [92 x i8] c"CI phone beam for CI-based GMM Selection. Good number should be [0(widest) .. 1(narrowest)]\00", align 1
@.str26 = private unnamed_addr constant [11 x i8] c"-wend_beam\00", align 1
@.str27 = private unnamed_addr constant [8 x i8] c"1.0e-80\00", align 1
@.str28 = private unnamed_addr constant [81 x i8] c"Beam selecting word-final HMMs exiting in each frame [0(widest) .. 1(narrowest)]\00", align 1
@.str29 = private unnamed_addr constant [11 x i8] c"-pl_window\00", align 1
@.str30 = private unnamed_addr constant [60 x i8] c"Window size (actually window size-1) of phoneme look-ahead.\00", align 1
@.str31 = private unnamed_addr constant [11 x i8] c"-pheurtype\00", align 1
@.str32 = private unnamed_addr constant [71 x i8] c"0 = bypass, 1= sum of max, 2 = sum of avg, 3 = sum of 1st senones only\00", align 1
@.str33 = private unnamed_addr constant [9 x i8] c"-pl_beam\00", align 1
@.str34 = private unnamed_addr constant [57 x i8] c"Beam for phoneme look-ahead. [0(widest) .. 1(narrowest)]\00", align 1
@.str35 = private unnamed_addr constant [5 x i8] c"-ctl\00", align 1
@.str36 = private unnamed_addr constant [48 x i8] c"Control file listing utterances to be processed\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"-ctl_lm\00", align 1
@.str38 = private unnamed_addr constant [45 x i8] c"Control file that list the corresponding LMs\00", align 1
@.str39 = private unnamed_addr constant [6 x i8] c"-beam\00", align 1
@.str40 = private unnamed_addr constant [8 x i8] c"1.0e-55\00", align 1
@.str41 = private unnamed_addr constant [86 x i8] c"Beam selecting active HMMs (relative to best) in each frame [0(widest)..1(narrowest)]\00", align 1
@.str42 = private unnamed_addr constant [7 x i8] c"-pbeam\00", align 1
@.str43 = private unnamed_addr constant [8 x i8] c"1.0e-50\00", align 1
@.str44 = private unnamed_addr constant [88 x i8] c"Beam selecting HMMs transitioning to successors in each frame [0(widest)..1(narrowest)]\00", align 1
@.str45 = private unnamed_addr constant [7 x i8] c"-wbeam\00", align 1
@.str46 = private unnamed_addr constant [8 x i8] c"1.0e-35\00", align 1
@.str47 = private unnamed_addr constant [79 x i8] c"Beam selecting word-final HMMs exiting in each frame [0(widest)..1(narrowest)]\00", align 1
@.str48 = private unnamed_addr constant [12 x i8] c"-lminmemory\00", align 1
@.str49 = private unnamed_addr constant [64 x i8] c"Load language model into memory (default: use disk cache for lm\00", align 1
@.str50 = private unnamed_addr constant [11 x i8] c"-log3table\00", align 1
@.str51 = private unnamed_addr constant [79 x i8] c"Determines whether to use the log3 table or to compute the values at run time.\00", align 1
@.str52 = private unnamed_addr constant [8 x i8] c"-vqeval\00", align 1
@.str53 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str54 = private unnamed_addr constant [112 x i8] c"How many vectors should be analyzed by VQ when building the shortlist. It speeds up the decoder, but at a cost.\00", align 1
@.str55 = private unnamed_addr constant [9 x i8] c"-senmgau\00", align 1
@.str56 = private unnamed_addr constant [7 x i8] c".cont.\00", align 1
@.str57 = private unnamed_addr constant [62 x i8] c"Senone to mixture-gaussian mapping file (or .semi. or .cont.)\00", align 1
@.str58 = private unnamed_addr constant [5 x i8] c"-cmn\00", align 1
@.str59 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str60 = private unnamed_addr constant [85 x i8] c"Cepstral mean normalization scheme (default: Cep -= mean-over-current-sentence(Cep))\00", align 1
@.str61 = private unnamed_addr constant [9 x i8] c"-varnorm\00", align 1
@.str62 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str63 = private unnamed_addr constant [85 x i8] c"Variance normalize each utterance (yes/no; only applicable if CMN is also performed)\00", align 1
@.str64 = private unnamed_addr constant [5 x i8] c"-agc\00", align 1
@.str65 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str66 = private unnamed_addr constant [92 x i8] c"Automatic gain control for c0 ('max' or 'none'); (max: c0 -= max-over-current-sentence(c0))\00", align 1
@.str67 = private unnamed_addr constant [6 x i8] c"-mdef\00", align 1
@.str68 = private unnamed_addr constant [28 x i8] c"Model definition input file\00", align 1
@.str69 = private unnamed_addr constant [6 x i8] c"-dict\00", align 1
@.str70 = private unnamed_addr constant [36 x i8] c"Pronunciation dictionary input file\00", align 1
@.str71 = private unnamed_addr constant [7 x i8] c"-fdict\00", align 1
@.str72 = private unnamed_addr constant [48 x i8] c"Filler word pronunciation dictionary input file\00", align 1
@.str73 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str74 = private unnamed_addr constant [39 x i8] c"Word trigram language model input file\00", align 1
@.str75 = private unnamed_addr constant [9 x i8] c"-fillpen\00", align 1
@.str76 = private unnamed_addr constant [37 x i8] c"Filler word probabilities input file\00", align 1
@.str77 = private unnamed_addr constant [9 x i8] c"-silprob\00", align 1
@.str78 = private unnamed_addr constant [4 x i8] c"0.1\00", align 1
@.str79 = private unnamed_addr constant [33 x i8] c"Default silence word probability\00", align 1
@.str80 = private unnamed_addr constant [10 x i8] c"-fillprob\00", align 1
@.str81 = private unnamed_addr constant [44 x i8] c"Default non-silence filler word probability\00", align 1
@.str82 = private unnamed_addr constant [4 x i8] c"-lw\00", align 1
@.str83 = private unnamed_addr constant [4 x i8] c"8.5\00", align 1
@.str84 = private unnamed_addr constant [16 x i8] c"Language weight\00", align 1
@.str85 = private unnamed_addr constant [5 x i8] c"-wip\00", align 1
@.str86 = private unnamed_addr constant [4 x i8] c"0.7\00", align 1
@.str87 = private unnamed_addr constant [23 x i8] c"Word insertion penalty\00", align 1
@.str88 = private unnamed_addr constant [4 x i8] c"-uw\00", align 1
@.str89 = private unnamed_addr constant [15 x i8] c"Unigram weight\00", align 1
@.str90 = private unnamed_addr constant [6 x i8] c"-mean\00", align 1
@.str91 = private unnamed_addr constant [34 x i8] c"Mixture gaussian means input file\00", align 1
@.str92 = private unnamed_addr constant [5 x i8] c"-var\00", align 1
@.str93 = private unnamed_addr constant [38 x i8] c"Mixture gaussian variances input file\00", align 1
@.str94 = private unnamed_addr constant [10 x i8] c"-varfloor\00", align 1
@.str95 = private unnamed_addr constant [7 x i8] c"0.0001\00", align 1
@.str96 = private unnamed_addr constant [65 x i8] c"Mixture gaussian variance floor (applied to data from -var file)\00", align 1
@.str97 = private unnamed_addr constant [6 x i8] c"-mixw\00", align 1
@.str98 = private unnamed_addr constant [34 x i8] c"Senone mixture weights input file\00", align 1
@.str99 = private unnamed_addr constant [11 x i8] c"-mixwfloor\00", align 1
@.str100 = private unnamed_addr constant [10 x i8] c"0.0000001\00", align 1
@.str101 = private unnamed_addr constant [63 x i8] c"Senone mixture weights floor (applied to data from -mixw file)\00", align 1
@.str102 = private unnamed_addr constant [7 x i8] c"-subvq\00", align 1
@.str103 = private unnamed_addr constant [44 x i8] c"Sub-vector quantized form of acoustic model\00", align 1
@.str104 = private unnamed_addr constant [6 x i8] c"-tmat\00", align 1
@.str105 = private unnamed_addr constant [39 x i8] c"HMM state transition matrix input file\00", align 1
@.str106 = private unnamed_addr constant [11 x i8] c"-tmatfloor\00", align 1
@.str107 = private unnamed_addr constant [63 x i8] c"HMM state transition probability floor (applied to -tmat file)\00", align 1
@.str108 = private unnamed_addr constant [10 x i8] c"-Nlextree\00", align 1
@.str109 = private unnamed_addr constant [72 x i8] c"No. of lextrees to be instantiated; entries into them staggered in time\00", align 1
@.str110 = private unnamed_addr constant [5 x i8] c"-epl\00", align 1
@.str111 = private unnamed_addr constant [101 x i8] c"Entries Per Lextree; #successive entries into one lextree before lextree-entries shifted to the next\00", align 1
@.str112 = private unnamed_addr constant [11 x i8] c"-subvqbeam\00", align 1
@.str113 = private unnamed_addr constant [7 x i8] c"3.0e-3\00", align 1
@.str114 = private unnamed_addr constant [86 x i8] c"Beam selecting best components within each mixture Gaussian [0(widest)..1(narrowest)]\00", align 1
@.str115 = private unnamed_addr constant [5 x i8] c"-utt\00", align 1
@.str116 = private unnamed_addr constant [58 x i8] c"Utterance file to be processed (-ctlcount argument times)\00", align 1
@.str117 = private unnamed_addr constant [11 x i8] c"-ctloffset\00", align 1
@.str118 = private unnamed_addr constant [62 x i8] c"No. of utterances at the beginning of -ctl file to be skipped\00", align 1
@.str119 = private unnamed_addr constant [10 x i8] c"-ctlcount\00", align 1
@.str120 = private unnamed_addr constant [11 x i8] c"1000000000\00", align 1
@.str121 = private unnamed_addr constant [70 x i8] c"No. of utterances to be processed (after skipping -ctloffset entries)\00", align 1
@.str122 = private unnamed_addr constant [8 x i8] c"-cepdir\00", align 1
@.str123 = private unnamed_addr constant [71 x i8] c"Input cepstrum files directory (prefixed to filespecs in control file)\00", align 1
@.str124 = private unnamed_addr constant [10 x i8] c"-bptbldir\00", align 1
@.str125 = private unnamed_addr constant [75 x i8] c"Directory in which to dump word Viterbi back pointer table (for debugging)\00", align 1
@.str126 = private unnamed_addr constant [11 x i8] c"-outlatdir\00", align 1
@.str127 = private unnamed_addr constant [41 x i8] c"Directory in which to dump word lattices\00", align 1
@.str128 = private unnamed_addr constant [14 x i8] c"-outlatoldfmt\00", align 1
@.str129 = private unnamed_addr constant [39 x i8] c"Whether to dump lattices in old format\00", align 1
@.str130 = private unnamed_addr constant [8 x i8] c"-latext\00", align 1
@.str131 = private unnamed_addr constant [7 x i8] c"lat.gz\00", align 1
@.str132 = private unnamed_addr constant [67 x i8] c"Filename extension for lattice files (gzip compressed, by default)\00", align 1
@.str133 = private unnamed_addr constant [9 x i8] c"-hmmdump\00", align 1
@.str134 = private unnamed_addr constant [61 x i8] c"Whether to dump active HMM details to stderr (for debugging)\00", align 1
@.str135 = private unnamed_addr constant [13 x i8] c"-lextreedump\00", align 1
@.str136 = private unnamed_addr constant [64 x i8] c"Whether to dump the lextree structure to stderr (for debugging)\00", align 1
@.str137 = private unnamed_addr constant [8 x i8] c"-maxwpf\00", align 1
@.str138 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str139 = private unnamed_addr constant [57 x i8] c"Max no. of distinct word exits to maintain at each frame\00", align 1
@.str140 = private unnamed_addr constant [11 x i8] c"-maxhistpf\00", align 1
@.str141 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str142 = private unnamed_addr constant [47 x i8] c"Max no. of histories to maintain at each frame\00", align 1
@.str143 = private unnamed_addr constant [8 x i8] c"-bghist\00", align 1
@.str144 = private unnamed_addr constant [68 x i8] c"Bigram-mode: If TRUE only one BP entry/frame; else one per LM state\00", align 1
@.str145 = private unnamed_addr constant [10 x i8] c"-maxhmmpf\00", align 1
@.str146 = private unnamed_addr constant [6 x i8] c"20000\00", align 1
@.str147 = private unnamed_addr constant [58 x i8] c"Max no. of active HMMs to maintain at each frame; approx.\00", align 1
@.str148 = private unnamed_addr constant [16 x i8] c"-hmmhistbinsize\00", align 1
@.str149 = private unnamed_addr constant [5 x i8] c"5000\00", align 1
@.str150 = private unnamed_addr constant [76 x i8] c"Performance histogram: #frames vs #HMMs active; #HMMs/bin in this histogram\00", align 1
@.str151 = private unnamed_addr constant [11 x i8] c"-ptranskip\00", align 1
@.str152 = private unnamed_addr constant [63 x i8] c"Use wbeam for phone transitions every so many frames (if >= 1)\00", align 1
@.str153 = private unnamed_addr constant [5 x i8] c"-hyp\00", align 1
@.str154 = private unnamed_addr constant [41 x i8] c"Recognition result file, with only words\00", align 1
@.str155 = private unnamed_addr constant [8 x i8] c"-hypseg\00", align 1
@.str156 = private unnamed_addr constant [60 x i8] c"Recognition result file, with word segmentations and scores\00", align 1
@.str157 = private unnamed_addr constant [12 x i8] c"-treeugprob\00", align 1
@.str158 = private unnamed_addr constant [46 x i8] c"If TRUE (non-0), Use unigram probs in lextree\00", align 1
@.str159 = private unnamed_addr constant [11 x i8] c"-maxhyplen\00", align 1
@.str160 = private unnamed_addr constant [5 x i8] c"1000\00", align 1
@.str161 = private unnamed_addr constant [69 x i8] c"Maximum number of words in a partial hypothesis (for block decoding)\00", align 1
@.str162 = private unnamed_addr constant [12 x i8] c"-maxcepvecs\00", align 1
@.str163 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@.str164 = private unnamed_addr constant [84 x i8] c"Maximum number of cepstral vectors that can be obtained from a single sample buffer\00", align 1
@.str165 = private unnamed_addr constant [10 x i8] c"-samprate\00", align 1
@.str166 = private unnamed_addr constant [5 x i8] c"8000\00", align 1
@.str167 = private unnamed_addr constant [52 x i8] c"Sampling rate (only 8K and 16K currently supported)\00", align 1
@.str168 = private unnamed_addr constant [7 x i8] c"-nfilt\00", align 1
@.str169 = private unnamed_addr constant [3 x i8] c"31\00", align 1
@.str170 = private unnamed_addr constant [22 x i8] c"Number of mel filters\00", align 1
@.str171 = private unnamed_addr constant [8 x i8] c"-lowerf\00", align 1
@.str172 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str173 = private unnamed_addr constant [22 x i8] c"Lower edge of filters\00", align 1
@.str174 = private unnamed_addr constant [8 x i8] c"-upperf\00", align 1
@.str175 = private unnamed_addr constant [5 x i8] c"3500\00", align 1
@.str176 = private unnamed_addr constant [22 x i8] c"Upper edge of filters\00", align 1
@.str177 = private unnamed_addr constant [7 x i8] c"-alpha\00", align 1
@.str178 = private unnamed_addr constant [5 x i8] c"0.97\00", align 1
@.str179 = private unnamed_addr constant [30 x i8] c"alpha for pre-emphasis window\00", align 1
@.str180 = private unnamed_addr constant [7 x i8] c"-frate\00", align 1
@.str181 = private unnamed_addr constant [11 x i8] c"frame rate\00", align 1
@.str182 = private unnamed_addr constant [6 x i8] c"-nfft\00", align 1
@.str183 = private unnamed_addr constant [16 x i8] c"no. pts for FFT\00", align 1
@.str184 = private unnamed_addr constant [6 x i8] c"-wlen\00", align 1
@.str185 = private unnamed_addr constant [7 x i8] c"0.0256\00", align 1
@.str186 = private unnamed_addr constant [14 x i8] c"window length\00", align 1
@.str187 = private unnamed_addr constant [11 x i8] c"-lmdumpdir\00", align 1
@.str188 = private unnamed_addr constant [41 x i8] c"The directory for dumping the DMP file. \00", align 1
@.str189 = private unnamed_addr constant [9 x i8] c"-lmctlfn\00", align 1
@.str190 = private unnamed_addr constant [33 x i8] c"Control file for language model\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @parse_args_file(i8* %live_args) #0 {
entry:
  %cmp = icmp eq i8* %live_args, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  tail call void @cmd_ln_print_help(%struct._IO_FILE* %0, %struct.arg_t* getelementptr inbounds ([77 x %struct.arg_t]* @arg, i64 0, i64 0)) #4
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call %struct._IO_FILE* @fopen(i8* %live_args, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #4
  %cmp1 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @_E__pr_header(i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i64 388, i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([46 x i8]* @.str3, i64 0, i64 0), i8* %live_args) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = tail call i8* @__ckd_calloc__(i64 10000, i64 1, i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 390) #4
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end10, %while.body22, %if.end3
  %maxarglen.0.ph = phi i32 [ 0, %if.end3 ], [ %conv.maxarglen.0, %if.end10 ], [ %conv24.maxarglen.2, %while.body22 ]
  %nargs.0.ph = phi i32 [ 1, %if.end3 ], [ %nargs.185, %if.end10 ], [ %nargs.1, %while.body22 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %call5 = tail call i8* @fgets(i8* %call4, i32 10000, %struct._IO_FILE* %call) #4
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %while.end32, label %while.body

while.body:                                       ; preds = %while.cond
  %call7 = tail call i8* @strtok(i8* %call4, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %while.cond, label %if.end10

if.end10:                                         ; preds = %while.body
  %call11 = tail call i64 @strlen(i8* %call7) #5
  %conv = trunc i64 %call11 to i32
  %cmp12 = icmp sgt i32 %conv, %maxarglen.0.ph
  %conv.maxarglen.0 = select i1 %cmp12, i32 %conv, i32 %maxarglen.0.ph
  %nargs.185 = add nsw i32 %nargs.0.ph, 1
  %call1986 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp2087 = icmp eq i8* %call1986, null
  br i1 %cmp2087, label %while.cond.outer, label %while.body22

while.body22:                                     ; preds = %if.end10, %while.body22
  %call1990 = phi i8* [ %call19, %while.body22 ], [ %call1986, %if.end10 ]
  %nargs.189 = phi i32 [ %nargs.1, %while.body22 ], [ %nargs.185, %if.end10 ]
  %maxarglen.288 = phi i32 [ %conv24.maxarglen.2, %while.body22 ], [ %conv.maxarglen.0, %if.end10 ]
  %call23 = tail call i64 @strlen(i8* %call1990) #5
  %conv24 = trunc i64 %call23 to i32
  %cmp25 = icmp sgt i32 %conv24, %maxarglen.288
  %conv24.maxarglen.2 = select i1 %cmp25, i32 %conv24, i32 %maxarglen.288
  %nargs.1 = add nsw i32 %nargs.189, 1
  %call19 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %while.cond.outer, label %while.body22

while.end32:                                      ; preds = %while.cond
  tail call void @rewind(%struct._IO_FILE* %call) #4
  store i32 %nargs.0.ph, i32* @parse_args_file.nliveargs, align 4, !tbaa !3
  %add = add nsw i32 %maxarglen.0.ph, 1
  %call33 = tail call i8** @__ckd_calloc_2d__(i32 %nargs.0.ph, i32 %add, i32 1, i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 407) #4
  store i8** %call33, i8*** @liveargs, align 8, !tbaa !0
  br label %while.cond34.outer

while.cond34.outer:                               ; preds = %if.end43, %while.body50, %while.end32
  %nargs.2.ph = phi i32 [ 1, %while.end32 ], [ %nargs.380, %if.end43 ], [ %nargs.3, %while.body50 ]
  br label %while.cond34

while.cond34:                                     ; preds = %while.cond34.outer, %while.body38
  %call35 = tail call i8* @fgets(i8* %call4, i32 10000, %struct._IO_FILE* %call) #4
  %cmp36 = icmp eq i8* %call35, null
  br i1 %cmp36, label %while.end56, label %while.body38

while.body38:                                     ; preds = %while.cond34
  %call39 = tail call i8* @strtok(i8* %call4, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp40 = icmp eq i8* %call39, null
  br i1 %cmp40, label %while.cond34, label %if.end43

if.end43:                                         ; preds = %while.body38
  %idxprom = sext i32 %nargs.2.ph to i64
  %1 = load i8*** @liveargs, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %1, i64 %idxprom
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  %call45 = tail call i8* @strcpy(i8* %2, i8* %call39) #4
  %nargs.380 = add i32 %nargs.2.ph, 1
  %call4781 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp4882 = icmp eq i8* %call4781, null
  br i1 %cmp4882, label %while.cond34.outer, label %while.body50.lr.ph

while.body50.lr.ph:                               ; preds = %if.end43
  %3 = sext i32 %nargs.380 to i64
  br label %while.body50

while.body50:                                     ; preds = %while.body50.lr.ph, %while.body50
  %indvars.iv = phi i64 [ %3, %while.body50.lr.ph ], [ %indvars.iv.next, %while.body50 ]
  %call4784 = phi i8* [ %call4781, %while.body50.lr.ph ], [ %call47, %while.body50 ]
  %nargs.383 = phi i32 [ %nargs.380, %while.body50.lr.ph ], [ %nargs.3, %while.body50 ]
  %4 = load i8*** @liveargs, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i8** %4, i64 %indvars.iv
  %5 = load i8** %arrayidx53, align 8, !tbaa !0
  %call54 = tail call i8* @strcpy(i8* %5, i8* %call4784) #4
  %nargs.3 = add nsw i32 %nargs.383, 1
  %call47 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp48 = icmp eq i8* %call47, null
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp48, label %while.cond34.outer, label %while.body50

while.end56:                                      ; preds = %while.cond34
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call) #4
  tail call void @free(i8* %call4) #4
  %6 = load i32* @parse_args_file.nliveargs, align 4, !tbaa !3
  %7 = load i8*** @liveargs, align 8, !tbaa !0
  %call58 = tail call i32 @cmd_ln_parse(%struct.arg_t* getelementptr inbounds ([77 x %struct.arg_t]* @arg, i64 0, i64 0), i32 %6, i8** %7) #4
  br label %return

return:                                           ; preds = %while.end56, %if.then
  ret void
}

; Function Attrs: optsize
declare void @cmd_ln_print_help(%struct._IO_FILE*, %struct.arg_t*) #1

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #1

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare void @rewind(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare i32 @cmd_ln_parse(%struct.arg_t*, i32, i8**) #1

; Function Attrs: nounwind optsize uwtable
define void @parse_args_free() #0 {
entry:
  tail call void (...)* @cmd_ln_free() #4
  %0 = load i8*** @liveargs, align 8, !tbaa !0
  tail call void @ckd_free_2d(i8** %0) #4
  ret void
}

; Function Attrs: optsize
declare void @cmd_ln_free(...) #1

; Function Attrs: optsize
declare void @ckd_free_2d(i8**) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
